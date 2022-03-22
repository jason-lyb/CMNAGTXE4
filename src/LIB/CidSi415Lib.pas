unit CidSi415Lib;

interface
uses
  Windows, SysUtils, Registry, inifiles, Variants, comobj, ADODB, StdCtrls,
  Forms, Classes, IdTCPClient, IdSocketHandle, IdTCPServer, xe_func;

{--------------------------------------------------------------------------------
                   CID Si415 DATA HEADER
---------------------------------------------------------------------------------
    Variable     |  Length   |  Description
---------------------------------------------------------------------------------
    Packet id    |       4   |  패킷 구분 값
    Company id   |       4   |  사업자 구분 코드
		Sequence     |      20   |  사업자 자체 패킷 구분 번호(필요 시 사용)
		Data Size    |       5   |  Body 사이즈
		Com_ID       |       8   |  마술피리에서 제공하는 대리점 코드번호
    Result       |       2   |  결과값 (성공:00, 실패:01~99)
---------------------------------------------------------------------------------
 TCP/IP연결포트 : 29101
 UDP   연결포트 : 25392
---------------------------------------------------------------------------------
CID Data Header Total Size : 43 Byte }

type
	SiHEADER = record
    sPId     : string[04];  //  1 | 패킷 구분 값
		sSNId    : string[04];  //  5 | 사업자 구분 코드
    sSeq     : string[20];  //  9 | 사업자 자체 패킷 구분 번호(필요 시 사용)
    sSize    : string[05];  // 29 | Body 사이즈
		sComId   : string[08];  // 34 | 마술피리에서 제공하는 대리점 코드번호
		sResult  : string[02];  // 42 | 결과값 (성공:00, 실패:01~99)
  end; // total : 43 byte

	Si415_INFO = record
		Id      : string[32];
		Pw      : string[32];
		ExtNo   : string[04];
		Option  : string[01];
		GrpId   : string[32];
		Level   : string[01];
		IP      : string[15];
	end;

function fSI_MakeHeader_Only(sPId, sLen, sResult : Ansistring) : Ansistring;
procedure pSi415Execute( vMsg : AnsiString );      //IPCC manger
procedure pSi415_IPCCExecute( vMsg : Ansistring ); //softphone
procedure pSi415_2601Execute( vMsg : Ansistring ); //2601softphone
function fSI_MakeHeader(sPId, sLen : Ansistring) : Ansistring;
function fSI_RecvHead( sRecv : Ansistring ) : Boolean;
function fSI_RecvParser( sRecv : Ansistring;  Var sRData : Ansistring; bView : Boolean=True) : Boolean;
//function fSI_RecvParser( sRecv : Ansistring; Var sRData : Ansistring ) : Boolean;

//   상담원 버전

//1010 로그인
procedure pSI_1030_Send( AId, APw, AIP : Ansistring );
procedure pSI_1031_Recv( sRecv : Ansistring );
function fSI_1011_Recv( sRecv : Ansistring) : Ansistring;

//2501 전화걸기
function fSI_2501_Send(ANum, ADnis : Ansistring ) : Ansistring;
//2501 전화받기
function fSI_2601_Recv( sRecv : Ansistring) : Ansistring;
//function fSI_3501_Recv( sRecv : Ansistring ) : Ansistring;

//4100	호전환 요청
//4101	호전환 응답(상담원 상태 리스트 전송)
//4200  호전환 - 전화걸기 요청
function fSI_4200_Send(ANum, ADnis, AAgentId : Ansistring ) : Ansistring;

//4210	호전환 - 호전환완료요청
//function fSI_4210_Send(AAgentId : Ansistring ) : Ansistring;
//4211	호전환 - 호전환완료응답

//4220	호전환 - 당겨받기요청
//function fSI_4220_Send(AAgentId : Ansistring ) : Ansistring;
//4221	호전환 - 당겨받기응답

//4300	조직도 요청
//4301	조직도 응답(상담원 상태 리스트 전송)
//4310	조직도 - 전화걸기
//4320	조직도 - 통화중인 다른 상담원 강제 전화 끊기(관리자기능)
//4330	조직도 - 통화중인 다른 상담원 강제 당겨받기(관리자기능)

//4310 조직도 - 전화걸기 요청
function fSI_4310_Send(ANum, ADnis, AAgentId : Ansistring ) : Ansistring;
//4320	조직도 - 통화중인 다른 상담원 강제 전화 끊기(관리자기능)
function fSI_4320_Send(AAgentId : Ansistring ) : Ansistring;
//4330	조직도 - 통화중인 다른 상담원 강제 당겨받기(관리자기능)
function fSI_4330_Send(AAgentId, AExtNo : Ansistring ) : Ansistring;

//5010   통화내역 - 개별 요청
function fSI_5010_Send( AsDate, AeDate, ANum, ADnis, AType : Ansistring ) : Ansistring;
function fSI_5011_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean ) : Ansistring;
//5020   통화내역 - 전체 요청
function fSI_5020_Send( AsDate, AeDate, ANum, ADnis, AType, AGroupID, AAgentID : Ansistring ) : Ansistring;
function fSI_5021_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean ) : Ansistring;
//5030   통화내역 - 미연결콜
function fSI_5030_Send( AsDate, AeDate, ANum, ADnis : Ansistring ) : Ansistring;
function fSI_5031_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean ) : Ansistring;
//5040   통화내역 - 미연결콜 상태변경(처리완료)
function fSI_5040_Send( APBXKey : Ansistring ) : Ansistring;
function fSI_5041_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean ) : Ansistring;

//  관리자 버전
//5110	통화내역 - 개인별 요청
//5111	통화내역 - 개인별 응답
function fSI_5110_Send( APId, AsDate, AeDate, ANum, ADnis, AType, AGId, AAId, AMemo, ALimit, AID : Ansistring ) : Ansistring;
function fSI_5111_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean ) : Ansistring;

//5210	통화내역 - 미연결콜 요청
//5211	통화내역 - 미연결콜 응답
function fSI_5210_Send( AsDate, AeDate, ANum, ADnis, AGId, AAId, ALimit, AID : Ansistring ) : Ansistring;
function fSI_5211_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean ) : Ansistring;

//5310	통화내역 - 녹취조회 요청
//5311	통화내역 - 녹취조회 응답
function fSI_5310_Send( AsDate, AeDate, ANum, ADnis, AType, AGId, AAId, ALimit, AID : Ansistring ) : Ansistring;
function fSI_5311_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean ) : Ansistring;

function fSI_5253_Send( APId, AsDate, AeDate, ANum, ADnis, AType, AGId, AAId, ALimit : Ansistring ) : Ansistring;
function fSI_5253_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean ) : Ansistring;

//5410  통화현황 - 상담원별요청
//5411  통화현황 - 상담원별응답
//5420  통화현황 - 시간대별요청
//5421  통화현황 - 시간대별응답
//5430  통화현황 - 일별요청
//5431  통화현황 - 일별응답

//5510  통화분석 - 상담원별요청
//5511  통화분석 - 상담원별응답
//5520  통화분석 - 시간대별요청
//5521  통화분석 - 시간대별응답
//5530  통화분석 - 일별요청
//5531  통화분석 - 일별응답
procedure pSI_5455_Send( APId, AsDate, AeDate, AGId, AAId : Ansistring );
procedure pSI_5455_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean );

//6010  인바운드 조회 요청
procedure fSI_6010_Send( AParam : Ansistring );
//6011  인바운드 조회 응답
function fSI_6011_Recv( sRecv : Ansistring; Var bNext : Boolean ) : Ansistring;

//6020  인바운드 추가 요청
//6021  인바운드 추가 응답 ( Header만 )
//6030  인바운드 수정 요청
//6031  인바운드 수정 응답 ( Header만 )
function fSI_6020_30_Send( APId, AParam : Ansistring ) : Ansistring;

//6040  인바운드 삭제 요청
//6041  인바운드 삭제 응답 ( Header만 )
function fSI_6040_Send( APId, AExten : Ansistring ) : Ansistring; //1개
function fSI_6050_Send( APId, AExten : Ansistring ) : Ansistring; //다중

//6110  상담그룹 조회 요청
procedure pSI_6110_Send( APId, AGrpId : Ansistring );
//6111  상담그룹 조회 응답
function fSI_6111_Recv( sRecv : Ansistring; Var bNext : Boolean ) : Ansistring;

procedure pSI_6110_JON54_Send( APId, AGrpId : Ansistring );
//6210  상담원 조회 요청
procedure pSI_6210_JON54_Send( APId, AGrpId, AAgtId : Ansistring );
//6120  상담그룹 추가 요청
//6130  상담그룹 수정 요청
function fSI_6120_30_Send( APId, AParam : Ansistring ) : Ansistring;

//6121  상담그룹 추가 응답
//6130  상담그룹 수정 요청
//6131  상담그룹 수정 응답
//6140  상담그룹 삭제 요청
//6141  상담그룹 삭제 응답
function fSI_6140_Send( APId, AExten : Ansistring ) : Ansistring;
//6150  상담그룹 다중 삭제 요청
//6151  상담그룹 다중 삭제 응답( Header만 )
procedure pSI_6150_Send( AGrpId : Ansistring );

//6210  상담원 조회 요청
procedure pSI_6210_Send( APId, AGrpId, AAgtId : Ansistring );
//6211  상담원 조회 응답
function fSI_6211_Recv( sRecv : Ansistring; Var bNext : Boolean ) : Ansistring;

//6220  상담원 추가 요청
//6221  상담원 추가 응답
//6230  상담원 수정 요청
//6231  상담원 수정 응답
function fSI_6220_30_Send( APId, AParam : Ansistring ) : Ansistring;

//6240  상담원 삭제 요청
//6241  상담원 삭제 응답
function fSI_6240_Send( APId, AExten : Ansistring ) : Ansistring;
//6250  상담원 다중 삭제 요청
//6251  상담원 다중 삭제 응답
procedure pSI_6250_Send( AAgtId : Ansistring );

//6310  관리자 조회 요청
procedure fSI_6310_Send( APId, AStr : Ansistring );
//6311  관리자 조회 응답
function fSI_6311_Recv( sRecv : Ansistring; Var bNext : Boolean ) : Ansistring;

//6320  관리자 추가 요청
//6321  관리자 추가 응답( Header만 )
//6330  관리자 수정 요청
//6331  관리자 수정 응답( Header만 )
function fSI_6320_30_Send( APId, AParam : Ansistring ) : Ansistring;

//6340  관리자 삭제 요청
//6341  관리자 삭제 응답( Header만 )
function fSI_6340_Send( APId, AMngId : Ansistring ) : Ansistring;
//6350  관리자 다중 삭제 요청
//6351  관리자 다중 삭제 응답( Header만 )
procedure pSI_6350_Send( AMngId : Ansistring );

//6360  관리자권한 조회 요청
procedure fSI_6360_Send( APId, AStr : Ansistring );
//6361  관리자권한 조회 응답
function fSI_6361_Recv( sRecv : Ansistring; Var bNext : Boolean ) : Ansistring;
//6370  관리자권한 수정 요청
procedure pSI_6370_Send( APId, AParam : String);

//6380  메인관리자권한 수정 응답
procedure pSI_6380_Send( APId, AParam : String);

//------------------------------------------------------------------------------
//6410  근무시간 조회 요청
//6411  근무시간 조회 응답
procedure pSI_6410_Send( AStr : Ansistring );
procedure pSI_6411_Recv( sRecv : Ansistring; Var bNext : Boolean );

//6430  근무시간 수정 요청
//6431  근무시간 수정 응답( Header만 )
procedure pSI_6430_Send( AParam : Ansistring );
procedure pSI_6431_Recv( sRecv : Ansistring );

//------------------------------------------------------------------------------
//6510  휴일 조회 요청
procedure pSI_6510_Send( AStr : Ansistring );
//6511  휴일 조회 응답
procedure pSI_6511_Recv( sRecv : Ansistring; Var bNext : Boolean );
//6520  휴일 추가 요청
//6521  휴일 추가 응답( Header만 )
procedure pSI_6520_Send( AParam : Ansistring );
//6530  휴일 수정 요청
//6531  휴일 수정 응답( Header만 )
procedure pSI_6530_Send( AParam : Ansistring );
//6540  휴일 삭제 요청
//6541  휴일 삭제 응답( Header만 )
procedure pSI_6540_Send( AHDay : Ansistring );
//6550  휴일 다중 삭제 요청
//6551  휴일 삭제 응답( Header만 )
procedure pSI_6550_Send( AHDay : Ansistring );

procedure pSI_6500_Recv( sRecv : Ansistring );

//6610  수신거부 조회 요청
procedure pSI_6610_Send( AExten, ACId, ACNm : Ansistring );
//6611  수신거부 조회 응답
procedure pSI_6611_Recv( sRecv : Ansistring; Var bNext : Boolean );
//6620  수신거부 추가 요청
//6621  수신거부 추가 응답( Header만 )
procedure pSI_6620_Send( AParam : Ansistring );
//6630  수신거부 수정 요청
//6631  수신거부 수정 응답( Header만 )
procedure pSI_6630_Send( AParam : Ansistring );
//6640  수신거부 삭제 요청
//6641  수신거부 삭제 응답( Header만 )
procedure pSI_6640_Send( ADIdx : Ansistring );
//6650  수신거부 다중 삭제 요청
//6651  수신거부 다중 삭제 응답( Header만 )
procedure pSI_6650_Send( ADIdx : Ansistring );

procedure pSI_6600_Recv( sRecv : Ansistring );

//7110  수신거부/VIP 파일등록요청
//7111  수신거부/VIP 파일등록응답
procedure pSI_7110_Send( AFileDir : Ansistring );

//------------------------------------------------------------------------------
//6710  VIP 조회 요청
procedure pSI_6710_Send( AExten, ACId, ACNm : Ansistring );
//6711  VIP 조회 응답
procedure pSI_6711_Recv( sRecv : Ansistring; Var bNext : Boolean );
//6720  VIP 추가 요청
//6721  VIP 추가 응답( Header만 )
procedure pSI_6720_Send( AParam : Ansistring );
//6730  VIP 수정 요청
//6731  VIP 수정 응답( Header만 )
procedure pSI_6730_Send( AParam : Ansistring );
//6740  VIP 삭제 요청
//6741  VIP 삭제 응답( Header만 )
procedure pSI_6740_Send( ADIdx : Ansistring );
//6750  VIP 다중 삭제 요청
//6751  VIP 다중 삭제 응답( Header만 )
procedure pSI_6750_Send( ADIdx : Ansistring );

procedure pSI_6700_Recv( sRecv : Ansistring );

//6850  멘트삭제요청
function fSI_6860_Send( APId, ACodeID, AMentID : Ansistring ) : Ansistring;

//6910  호분배 권한 조회 요청
procedure pSI_6910_Send( APId, AGrpId, AAgtId : Ansistring );
//6911  호분배 권한 조회 응답
function fSI_6911_Recv( sRecv : Ansistring; var bNext : Boolean ) : Ansistring;
//6920  호분배 권한 수정  요청
procedure pSI_6920_Send( APId, AParam : String);
//7010   호분배 우선순위 권한 조회
procedure pSI_7010_Send( APId, ACallDist, AAgtId : Ansistring );
//7011   호분배 우선순위 권한 조회
function fSI_7011_Recv( sRecv : Ansistring; var bNext : Boolean ) : Ansistring;
//7020_30호분배 우선순위 권한 추가 수정
function fSI_7020_30_Send( APId, AParam : Ansistring ) : Ansistring;
//7042  호분배 우선순위 권한 다중 삭제 요청
procedure pSI_7042_Send( AExten, AAgentID : Ansistring );
//6811  시스템 멘트 조회 응답
function fSI_6811_Recv( sRecv : Ansistring; Var bNext : Boolean ) : Ansistring;

function fSI_6831_Recv( sRecv : Ansistring; Var bNext : Boolean ) : Ansistring;
//9120  시스템 멘트 수정 요청
function fSI_6820_Send( APId, AParam : Ansistring ) : Ansistring;
//9130  멘트리스트 요청
procedure pSI_6830_Send(APid, AMenteId : Ansistring );
//6840  멘트 등록 요청
function fSI_6840_Send( APId, AParam : Ansistring ) : Ansistring;

//------------------------------------------------------------------------------
//7050  부가서비스 조회 요청
procedure pSI_7050_Send;
//7051  부가서비스 조회 응답
procedure pSI_7051_Recv( sRecv : Ansistring; Var bNext : Boolean );
//7060  부가서비스 수정 요청
procedure pSI_7060_Send( AParam : Ansistring );

//8010  시스템 바로 적용
procedure pSI_8010_Send( APId, AAdminId : Ansistring );

//------------------------------------------------------------------------------
procedure pSi415SendData( sData : Ansistring );
procedure pSi415IPCCSendData( sData : Ansistring );
function fSi415IPCCSendData( sData : Ansistring ):Boolean;

function pSecondToTime(const Seconds: Cardinal): Double;

const
	// Packet id 에 대한 명령 선언 ------------------------------------------------------
	S_LOGIN       = '1010'; // 로그인 성공 응답  UDP
  S_LOGOUT      = '1020'; // 로그아웃요청 - 프로그램 종료

  S_PING_REQ    = '9000'; // Ping (연결상태 확인 및 로그인) 1분 단위 and 소켓 연결 후 바로 전송 요망
  S_PING_REP    = '9001'; // 연결 상태 확인 요청

  S_STAT_ERR1   = '9200'; // 전화기 연결 끊어짐 --- 전화기 오류 1  - UDP
  S_STAT_ERR2   = '9210'; // 전화기 연결 끊어짐 --- 전화기 오류 2  - UDP

	S_DIAL_REQ    = '2501'; // 전화걸기 요청 패킷(클라이언트 -> 서버) --TCP/IP
  S_DIAL_REP    = '3501'; // 전화걸기 요청 응답 패킷 --TCP/IP

  S_INCOME      = '2601'; // 신규콜 (서버 -> 클라이언트) --UDP

  S_CALL_OUT1   = '4000'; // 전화끊기
  S_CALL_OUT2   = '4001'; // 전화 끊기 응답(TCP) 및 고객이 먼저 전화를 끊었을때(UDP)
  S_CALL_HOLD   = '4010'; // 전화홀드
	S_CALL_MUTE   = '4020'; // 음차단

  S_HANGUP      = '4001'; // 전화끊어짐

  S_AGENT_10    = '1110'; // 상담원 상태 값 변경 -- 상담대기
  S_AGENT_20    = '1120'; // 상담원 상태 값 변경 -- 업무처리
  S_AGENT_30    = '1130'; // 상담원 상태 값 변경 -- 휴식
  S_AGENT_40    = '1140'; // 상담원 상태 값 변경 -- 식사
  S_AGENT_50    = '1150'; // 상담원 상태 값 변경 -- 화장실
  S_AGENT_60    = '1160'; // 상담원 상태 값 변경 -- 부재중

  S_ANSWER_REQ  = '2700'; // 전화 받기 요청 - 관리자 설정에서 수동받기로 설정되어있을경우
  S_ANSWER_REP  = '2701'; // 전화 받기 응답

  S_PICKUP_REQ  = '9110';	// 당겨 받기 요청
  S_PICKUP_REP  = '9111';	// 당겨 받기 요청

  S_CALL_STAT   = '9100'; // 콜 상황(대기고객, 상담대기, 로그인) 수 응답 - UDP

  S_TRANS_REQ   = '4100'; // 호전환 요청
  S_TRANS_REP   = '4101'; // 호전환 응답(상담원 상태 리스트 전송)
  S_TRANS_CALL  = '4200'; // 호전환 - 전화걸기
  S_TRANS_END   = '4210'; // 호전환 - 호전환 완료
  S_TRANS_PICK  = '4220'; // 호전환 - 당겨받기


//  상담원 버전
//5010	통화내역 - 개인별 요청
//5011	통화내역 - 개인별 응답
//5020	통화내역 - 전체 요청
//5021	통화내역 - 전체 응답
//5030	통화내역 - 미연결콜 요청
//5031	통화내역 - 미연결콜 응답

//5040	미연결콜 처리완료 요청
//5041	미연결콜 처리완료 응답


  //---------------------------------------------------------------------------------

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
	gSiSchSndH: SiHEADER;
	gSiSchRevH: SiHEADER;

	gSiSndH: SiHEADER;
	gSiRevH: SiHEADER;

	GT_Si415_INFO : Si415_INFO;

  iSI415HBeat : Integer;

  aSiBuff, aSiBuffInit : array [0..131071] of Byte;
	giViCnt, giBlCnt  : Integer;

	gSI415AliveData : Ansistring;
	gSI415_A_Login : Boolean=false; //관리자 로그인 여부
	gSI415_A_Close : Boolean=True; //관리자 종료 여부(종료시 True)
	gSI415_C_Login : Boolean=false; //상담원IPCC클라이언트 로그인 여부
	gSI415_C_Close : Boolean=True; //상담원IPCC클라이언트 종료 여부(종료시 True)
	gJon03BlockIng : Boolean=false; //접수현황에서 고객수신차단 등록 여부
implementation

// CTI Server Login 문자열 만들기


uses xe_GNL, xe_PBX, Main, xe_Msg, xe_JON54, xe_JON60;

function fSI_MakeHeader_Only(sPId, sLen, sResult : Ansistring ) : Ansistring;
Var str : Ansistring;
begin
	try
		gSiSchSndH.sPId   := sPid;
		gSiSchSndH.sSNId  := '5023';
		gSiSchSndH.sSeq   := '';
		gSiSchSndH.sSize  := sLen;
		gSiSchSndH.sComId := GT_ComID;// 'ss15';
		gSiSchSndH.sResult := sResult;

		str := Rpad(gSiSchSndH.sPId   ,  4, ' ') +
					 Rpad(gSiSchSndH.sSNId  ,  4, ' ') +
					 Rpad(gSiSchSndH.sSeq   , 20, ' ') +
					 Rpad(gSiSchSndH.sSize  ,  5, ' ') +
					 Rpad(gSiSchSndH.sComId ,  8, ' ') +
					 Rpad(gSiSchSndH.sResult,  2, ' ');    // 요구 팻킷인 경우 Space 처리

		Result := str;
	except
		Result := '';
	end;
end;

function fSI_MakeHeader(sPId, sLen : Ansistring ) : Ansistring;
Var str : Ansistring;
begin
	try
		gSiSchSndH.sPId   := sPid;
		gSiSchSndH.sSNId  := '5023';
		gSiSchSndH.sSeq   := '';
		gSiSchSndH.sSize  := sLen;
		gSiSchSndH.sComId := GT_ComID;//'ss15';

		str := Rpad(gSiSchSndH.sPId  ,  4, ' ') +
					 Rpad(gSiSchSndH.sSNId ,  4, ' ') +
					 Rpad(gSiSchSndH.sSeq  , 20, ' ') +
					 Lpad(gSiSchSndH.sSize , ' ', 5) +
					 Rpad(gSiSchSndH.sComId,  8, ' ') +
					 Rpad(''               ,  2, ' ');    // 요구 팻킷인 경우 Space 처리

		Result := str;
  except
    Result := '';
  end;
end;

function fSI_RecvHead( sRecv : Ansistring ) : Boolean;
begin
	SetDebugeWrite('pSi415RecvData : ' + sRecv);
	Result := False;
	try
		gSiSchRevH.sPId    := Copy(sRecv,  1,  4);
		gSiSchRevH.sSNId   := Copy(sRecv,  5,  4);
		gSiSchRevH.sSeq    := Copy(sRecv,  9, 20);
		gSiSchRevH.sSize   := Copy(sRecv, 29,  5);
		gSiSchRevH.sComId  := Copy(sRecv, 34,  8);
		gSiSchRevH.sResult := Copy(sRecv, 42,  2);
    Result := True;
  except
	  Result := False;
	end;
end;

function fSI_RecvParser( sRecv : Ansistring; Var sRData : Ansistring; bView : boolean ) : Boolean;
Var sErr : Ansistring;
	sMenu1, sMenu2, sMenu3 : Ansistring;
begin
	SetDebugeWrite('pSi415RecvData : ' + sRecv);
	Result := False;
	try
		gSiSchRevH.sPId    := Copy(sRecv,  1,  4);
		gSiSchRevH.sSNId   := Copy(sRecv,  5,  4);
		gSiSchRevH.sSeq    := Copy(sRecv,  9, 20);
		gSiSchRevH.sSize   := Copy(sRecv, 29,  5);
		gSiSchRevH.sComId  := Copy(sRecv, 34,  8);
		gSiSchRevH.sResult := Copy(sRecv, 42,  2);

		if (gSiSchRevH.sResult = '00') {or (gSiSchRevH.sResult = '90')} or (gSiSchRevH.sResult = '96') then  // 결과값 (성공:00, 실패:01~99) , 90 : 대상없음.
		begin
//    sRData := Copy(sRecv, 44, StrToInt(Trim(gSiSchRevH.sSize)));
		  sRData := Copy(sRecv, 44, Length(sRecv) - 43);
			Result := True;
		end else
    begin
			if gSiSchRevH.sResult = '01' then sErr := '실패' else //'통화 중 실패' else
			if gSiSchRevH.sResult = '03' then sErr := 'OnRing(전화신호가들어올때), Dialing(전화걸고 있을때)' else
			if gSiSchRevH.sResult = '04' then sErr := '대기중인 고객 당겨받기 실패' else
			if gSiSchRevH.sResult = '05' then sErr := '일반상담원 사용 못함. 오류(코드번호: 4320, 4330 )' else
			if gSiSchRevH.sResult = '06' then sErr := '일반상담원 상태오류. 통화중 아님. 오류(코드번호: 4320, 4330 )' else
			if gSiSchRevH.sResult = '07' then sErr := '오류(코드번호: 4320, 4330 ) - 자기(본인) 상담원 ID' else
			if gSiSchRevH.sResult = '09' then sErr := '패킷 사이즈 오류' else
			if gSiSchRevH.sResult = '11' then sErr := '정의되지않은 패킷 번호' else
			if gSiSchRevH.sResult = '12' then sErr := '사업자코드 에러' else
			if gSiSchRevH.sResult = '13' then sErr := 'Ani 번호 오류, DNIS 번호 오류, 파라메타 값이 없음' else
			if gSiSchRevH.sResult = '20' then sErr := 'Stx(#) Error' else
			if gSiSchRevH.sResult = '21' then sErr := 'Etx($) Error' else
			if gSiSchRevH.sResult = '31' then sErr := '멘트 파일 찾을 수 없음' else
			if gSiSchRevH.sResult = '32' then sErr := '멘트 파일 전송 실패' else
			if gSiSchRevH.sResult = '90' then
			begin
				sMenu3 := '적용대상이 없습니다.';
				if gSiSchRevH.sPId = '1031' then begin sMenu1 := '관리자ID, 비밀번호'; sMenu2 := '오류 입니다.'; sMenu3 := '확인 후 다시 로그인 하세요';
				end else
				if gSiSchRevH.sPId = '6021' then begin sMenu1 := '인바운드'; sMenu2 := '추가오류'; end else
				if gSiSchRevH.sPId = '6031' then begin sMenu1 := '인바운드'; sMenu2 := '수정오류'; end else
				if gSiSchRevH.sPId = '6041' then begin sMenu1 := '인바운드'; sMenu2 := '삭제오류'; end else
				if gSiSchRevH.sPId = '6121' then begin sMenu1 := '상담그룹'; sMenu2 := '추가오류'; end else
				if gSiSchRevH.sPId = '6131' then begin sMenu1 := '상담그룹'; sMenu2 := '수정오류'; end else
				if gSiSchRevH.sPId = '6141' then begin sMenu1 := '상담그룹'; sMenu2 := '삭제오류'; end else
				if gSiSchRevH.sPId = '6221' then begin sMenu1 := '상담원';   sMenu2 := '추가오류'; end else
				if gSiSchRevH.sPId = '6231' then begin sMenu1 := '상담원';   sMenu2 := '수정오류'; end else
				if gSiSchRevH.sPId = '6241' then begin sMenu1 := '상담원';   sMenu2 := '삭제오류'; end else
				if gSiSchRevH.sPId = '6321' then begin sMenu1 := '관리자';   sMenu2 := '추가오류'; end else
				if gSiSchRevH.sPId = '6331' then begin sMenu1 := '관리자';   sMenu2 := '수정오류'; end else
				if gSiSchRevH.sPId = '6341' then begin sMenu1 := '관리자';   sMenu2 := '삭제오류'; end else
				if gSiSchRevH.sPId = '6431' then begin sMenu1 := '근무시간'; sMenu2 := '수정오류'; end else
				if gSiSchRevH.sPId = '6521' then begin sMenu1 := '휴일';     sMenu2 := '추가오류'; end else
				if gSiSchRevH.sPId = '6531' then begin sMenu1 := '휴일';     sMenu2 := '수정오류'; end else
				if gSiSchRevH.sPId = '6541' then begin sMenu1 := '휴일';     sMenu2 := '삭제오류'; end else
				if gSiSchRevH.sPId = '6621' then begin sMenu1 := '수신거부'; sMenu2 := '추가오류'; end else
				if gSiSchRevH.sPId = '6631' then begin sMenu1 := '수신거부'; sMenu2 := '수정오류'; end else
				if gSiSchRevH.sPId = '6641' then begin sMenu1 := '수신거부'; sMenu2 := '삭제오류'; end else
				if gSiSchRevH.sPId = '6721' then begin sMenu1 := 'VIP';      sMenu2 := '추가오류'; end else
				if gSiSchRevH.sPId = '6731' then begin sMenu1 := 'VIP';      sMenu2 := '수정오류'; end else
				if gSiSchRevH.sPId = '6741' then begin sMenu1 := 'VIP';      sMenu2 := '삭제오류'; end else
				if gSiSchRevH.sPId = '6371' then begin sMenu1 := '관리자권한'; sMenu2 := '수정오류'; end else
				if gSiSchRevH.sPId = '6381' then begin sMenu1 := '메인관리자비번'; sMenu2 := '수정오류'; end else
				if gSiSchRevH.sPId = '9121' then begin sMenu1 := '시스템멘트'; sMenu2 := '수정오류'; end else
				if gSiSchRevH.sPId = '6841' then begin sMenu1 := '멘트';     sMenu2 := '등록오류'; end else
				if gSiSchRevH.sPId = '6851' then begin sMenu1 := '멘트';     sMenu2 := '삭제오류'; end else
				if gSiSchRevH.sPId = '6921' then begin sMenu1 := '호분배권한'; sMenu2 := '수정오류'; end else
				if gSiSchRevH.sPId = '7021' then begin sMenu1 := '호분배 우선순위권한'; sMenu2 := '추가오류'; end else
				if gSiSchRevH.sPId = '7031' then begin sMenu1 := '호분배 우선순위권한'; sMenu2 := '수정오류'; end else
				if gSiSchRevH.sPId = '7041' then begin sMenu1 := '호분배 우선순위권한'; sMenu2 := '삭제오류'; end else
				if gSiSchRevH.sPId = '7061' then begin sMenu1 := '부가서비스'; sMenu2 := '수정오류'; end else
				sErr := '적용 대상이 없습니다.';

				sErr := format('%s %s' + #13#10 + #13#10 + '%s', [sMenu1, sMenu2, sMenu3]);
			end else
			if gSiSchRevH.sResult = '91' then sErr := '권한 없음' else
			if gSiSchRevH.sResult = '92' then
			begin
				sErr := '서버 IP 접근 오류' + #13#10 + '서버IP를 확인하세요.' + #13#10 + #13#10
							+ '콜마너상담원 프로그램 > 설정 > CID설정';
			end else
			if gSiSchRevH.sResult = '95' then
			begin
				sErr := '기존 로그인 정보와 틀림' + #13#10 + 'CMNIPCC를 종료 후 재실행 합니다.' + #13#10 + #13#10 + '다시 로그인 하세요';
				GMessagebox('오류 Code : ' + gSiSchRevH.sResult + #13#10 +
										'오류 메시지 : ' + sErr, CDMSE);

				Frm_Main.ProcessKill_Pro('CMNIPCC.exe');
//				Frm_Main.Proc_IPCCLogOut;	//전문으로 CMNIPCC.exe 종료
				sleep(1000);
				Frm_Main.procExecPBX(True, 'CMNIPCC');

				bView := False;
			end else
			if gSiSchRevH.sResult = '96' then sErr := '로그인 중' else
			if gSiSchRevH.sResult = '97' then
			begin
				sErr := 'Database Connect Error' + #13#10 + '관리자 로그인을 다시 진행하여 주십시오';
				gSI415_A_Login := False;
			end else
			if gSiSchRevH.sResult = '98' then sErr := 'NOT Linked + ETC Error' else
			if gSiSchRevH.sResult = '99' then sErr := 'NOT Linked';

			if gSiSchRevH.sPId = '8111' then //LBS - ARS 실행 요청실패는 메세지 안띄움.
			begin
				//bView := False;
				Result := True;
				exit;
			end;

			if bView then
				GMessagebox('오류 Code : ' + gSiSchRevH.sResult + #13#10 +
										'오류 메시지 : ' + sErr, CDMSE);
		end;
	except
		Result := False;
	end;
end;

procedure pSi415Execute( vMsg : AnsiString );
Var sPid, sTmp : Ansistring;
    bNext : Boolean;
begin
	SetDebugeWrite('pSi415Execute Read : ' + vMsg);

	sPid := Copy(vMsg, 1, 4);

	if (sPid = '5111') or (sPid = '5211') or (sPid = '5311') then
	else Log('bSI415_A ReadText :' + vMsg, LOGIPCCSDATAPATHFILE);  //IPCC서버 받음

	if (sPid = '5111') or (sPid = '5211') or (sPid = '5311') then    // 5011. 통k화관리-개인별 결과
	begin
//		if sResult = '00' then
		begin
			Frm_JON54.proc_PBXAdmin_CallList(vMsg, sPid);
		end;
  end else
	if (sPid = '6011') then    // 6011. 인바운드설정 조회
	begin
		if Frm_PBX.btnSch_vi_s.Tag = 1 then
		begin
			Frm_PBX.btnSch_vi_s.Tag := 0;
			Frm_PBX.pRcv_Vip_InboundList( vMsg );
		end else
		if Frm_PBX.btnSch_bl_s.Tag = 1 then
		begin
			Frm_PBX.btnSch_bl_s.Tag := 0;
			Frm_PBX.pRcv_BlackList_InboundList( vMsg );
		end else
		if Frm_PBX.btnSch_Ext_qe_p.Tag = 1 then
		begin
			Frm_PBX.btnSch_Ext_qe_p.Tag := 0;
			Frm_PBX.pRcv_CallDistribution( vMsg );
		end else
		begin
			Frm_PBX.proc_SI415Receive(vMsg, sPid);
		end;
	end else
	if (sPid = '6111') then    // 6111. 상담그룹조회
	begin
		if Frm_JON54.cbGrpNm2.Tag = 0 then
		begin
			Frm_JON54.cbGrpNm2.Tag := 98;
			sTmp := fSI_6111_Recv( vMsg, bNext);
			Frm_JON54.pRcv_GroupList(sTmp);
		end else
		if Assigned(Frm_PBX) then
		begin
			if Frm_PBX.cbGrpNm1.Tag = 1 then
			begin
				Frm_PBX.pRcv_GroupList(vMsg);
				Frm_PBX.cbGrpNm1.Tag := 0;
			end else
			if Frm_PBX.cxGrdVPBX_grp_qe_s.Tag = 1 then
			begin
				frm_PBX.pRcv_HoGroup(vMsg);
			end else
			if Frm_PBX.cxGrdVPBX_grp_qe_p.Tag = 1 then
			begin
				frm_PBX.pRcv_HoGroup(vMsg);
			end else
			begin
				Frm_PBX.proc_SI415Receive(vMsg, sPid);
			end;
    end;
	end else
	if (sPid = '6211') then    // 6211. 상담원조회
  begin
		if Frm_JON54.giGrpId = 54 then //통화관리에서 요청
		begin
			sTmp := fSI_6211_Recv( vMsg, bNext);
			Frm_JON54.pRcv_AgentList(sTmp);
			Frm_JON54.cbAgtNm2.Hint := '';
		end else
		if Frm_PBX.cbAgtNm1.Hint = '1' then
		begin
			Frm_PBX.pRcv_AgentList(vMsg);
			Frm_PBX.cbAgtNm1.Hint := '';
		end else
    if Frm_PBX.cbAgtNm1.Hint = '1' then
    begin
      Frm_PBX.pRcv_AgentList(vMsg);
      Frm_PBX.cbAgtNm1.Hint := '';
    end else
    if Frm_PBX.cxGrdVPBX_agt_qe_s.Tag = 1 then
    begin
      frm_PBX.pRcv_HoAgent(vMsg);
    end else
    if Frm_PBX.cxGrdVPBX_agt_qe_p.Tag = 1 then
    begin
      frm_PBX.pRcv_HoAgent(vMsg);
    end else
    begin
      Frm_PBX.proc_SI415Receive(vMsg, sPid);
    end;
  end else
	if (sPid = '6311') then    // 6311. 관리자조회
  begin
    if Frm_PBX.cbMngNm7.Tag = 1 then
    begin
			Frm_PBX.pRcv_ManagerList(vMsg);
      Frm_PBX.cbMngNm7.Tag := 0;
    end else
    begin
      Frm_PBX.proc_SI415Receive(vMsg, sPid);
			Frm_PBX.pRcv_ManagerList(vMsg);
		end;

  end else
	if ( sPid = '1031' ) then //관리자로그인
  begin
		pSI_1031_Recv(vMsg);
	end else
	if ( sPid = '5411' ) Or ( sPid = '5421' ) Or ( sPid = '5431' ) Or
     ( sPid = '5511' ) Or ( sPid = '5521' ) Or ( sPid = '5531' ) then
  begin
    pSI_5455_Recv( vMsg, sPId, bNext);
  end else
  if ( sPid = '6411' ) then
  begin
    pSI_6411_Recv( vMsg, bNext);
  end else
  if ( sPid = '6431' ) then
  begin
    pSI_6431_Recv( vMsg );
  end else
  if ( sPid = '6511' ) then
  begin
    pSI_6511_Recv( vMsg, bNext);
  end else
  if ( sPid = '6521' ) Or ( sPid = '6531' ) Or ( sPid = '6551' ) then
  begin
    pSI_6500_Recv( vMsg );
  end else
  if ( sPid = '6611' ) then
  begin
    pSI_6611_Recv( vMsg, bNext);
  end else
	if ( ( sPid = '6621' ) Or ( sPid = '6631' ) Or ( sPid = '6651' ) ) Or
		 ( ( sPid = '7111' ) And ( Frm_PBX.grpFileUpload.Tag = 2 ) ) then
  begin
		pSI_6600_Recv( vMsg );
	end else
  if ( sPid = '6711' ) then
  begin
    pSI_6711_Recv( vMsg, bNext);
	end else
  if ( ( sPid = '6721' ) Or ( sPid = '6731' ) Or ( sPid = '6751' ) ) Or
     ( ( sPid = '7111' ) And ( Frm_PBX.grpFileUpload.Tag = 1 ) ) then
	begin
    pSI_6700_Recv( vMsg );
  end else
  if ( sPid = '7051' ) then
  begin
		pSI_7051_Recv( vMsg, bNext);
	end else
	begin
//		if (sPid = '6021') or (sPid = '6031') or (sPid = '6041') or (sPid = '6051')  then    // 6021. 인바운드설정 추가/수정/삭제/다중삭제
//		if (sPid = '6121') or (sPid = '6131') or (sPid = '6151')  then    // 6121. 상담그룹 추가/수정/삭제
//		if (sPid = '6221') or (sPid = '6231') or (sPid = '6251')  then    // 6121. 상담원 추가/수정/삭제
//		if (sPid = '6321') or (sPid = '6331') or (sPid = '6351')  then    // 6121. 상담원 추가/수정/삭제
//		if (sPid = '6351') then    // 6351. 관리자 권한 설정조회
//		if (sPid = '6361') then    // 6361. 관리자 권한 설정수정
//		if (sPid = '6861') then    // 6851. 멘트 삭제 응답
//		if (sPid = '6911') or (sPid = '6921')  then    // 6911 호분배 권한 조회, 호분배 권한 수정
//		if (sPid = '7011') then    // 7011 호분배 우선순위 권한 조회
//		if (sPid = '7021') or (sPid = '7031') or (sPid = '7043')  then    // 6121. 상담원 추가/수정/삭제
//		if (sPid = '6811') or (sPid = '6821') or (sPid = '6831') or (sPid = '6841')  then    // 6811. 시스템 멘트 조회 응답, 6821 시스템 멘트 수정 응답 , 6831멘트 리스트 응답(Packet id: 6831)
//    if (sPid = '8011')  시스템 바로 적용 응답
		Frm_PBX.proc_SI415Receive(vMsg, sPid);
	end;
end;

procedure pSi415_IPCCExecute( vMsg : Ansistring );    //softphone
Var sData : Ansistring;
		bNext : Boolean;
		sResult, sHead, sTmp : Ansistring;
		i : integer;
		slTmp1, slTmp2 : TStringList;
begin
	SetDebugeWrite('pSi415Execute Read : ' + vMsg);

	if fSI_RecvParser( vMsg, sData ) then
	begin
		sHead := gSiSchRevH.sPId;
		sResult := gSiSchRevH.sResult;

		if sHead <> '9001' then
		begin
			Log('send To SoftPhone :' + vMsg, LOGIPCCSDATAPATHFILE);  //IPCC서버 받음
		end;

		if (sHead = '0054') then    // 2361. 통화내역 열기 (자체전문코드)
		begin
			if frm_JON54.cxPageControl1.Pages[3].TabVisible = True then
			begin
				frm_Main.BtnFix.Down := True;
				frm_Main.BtnFixClick(frm_Main.BtnFix);
				frm_Main.cxPageControl2.ActivePageIndex := 0;
//				frm_JON54.cxPageControl1.ActivePageIndex := 3;
			end;
		end else
		if (sHead = '6111') then    // 6111. 상담그룹조회
		begin
			sTmp := fSI_6111_Recv( vMsg, bNext);
			Frm_JON54.pRcv_GroupList(sTmp);

			frm_main.cxTabSheet1.TabVisible := True;
			frm_JON54.cxPageControl1.Pages[3].TabVisible := True;
			frm_JON54.cxPageControl1.ActivePageIndex := 3;
		end else
		if (sHead = '6211') then    // 6211. 상담원조회
		begin
			if Frm_JON54.cbAgtNm1.Tag = 1 then
			begin
				sTmp := fSI_6211_Recv( vMsg, bNext);
				Frm_JON54.pRcv_AgentList(sTmp);
				Frm_JON54.cbAgtNm1.Tag := 0;
				Frm_JON54.cbAgtNm1.enabled := True;
				Frm_JON54.cbAgtNm2.enabled := True;
			end;
		end else
		if (sHead = '6621') then    // 6621. 수신거부 추가 응답
		begin
			if sResult ='00' then
				GMessagebox('고객전화차단 완료', CDMSI)
			else
				GMessagebox('고객전화차단 실패', CDMSE)
		end else
		if sHead = '9000' then    // 9000. Ping
		begin
			if sResult = '00' then
			begin
				frm_JON54.pnl_PBX_1.Enabled := True;
			end else
			begin
			end;
		end else
		if sHead = '1011' then    // 1011. softphone 로그인 성공
		begin
			gSI415AliveData := sData;
			gSI415_C_Login := True;
		end else
		if sHead = '1013' then    // 1013. softphone 로그인 후 호그룹추가 (미사용)
		begin
			//로그인 상담원 정보 셋팅
			slTmp1 := TStringList.Create;

			GT_Q_exten.clear;
			GT_Service_no.clear;
			GT_Dnis_no.clear;
			GT_Buz_name.clear;

			Try
				GetTextSeperationEx2(',', sData, slTmp1);
				if slTmp1[1] <> '' then
				begin
					slTmp2 := TStringList.Create;
					Try
						GetTextSeperationEx2('│', slTmp1[0], slTmp2);
						GT_Q_exten.Add('전체');
						for i := 0 to slTmp2.Count-1 do
						begin
							GT_Q_exten.Add(slTmp2[i]);	   //호분배 그룹
						end;

						slTmp2.Clear;
						GetTextSeperationEx2('│', slTmp1[1], slTmp2);

						GT_Service_no.Add('전체');
						for i := 0 to slTmp2.Count-1 do
						begin
							GT_Service_no.Add(slTmp2[i]);	       //대표번호
						end;

						slTmp2.Clear;
						GetTextSeperationEx2('│', slTmp1[4], slTmp2);

						GS_EnvFile.WriteString('CID_COMM', 'PBX_ID' , Trim(slTmp2[0]));
						GS_EnvFile.WriteString('CID_COMM', 'PBX_PW' , Trim(slTmp2[1]));
						GS_EnvFile.WriteString('CID_COMM', 'PBX_EXT', Trim(slTmp2[2]));
						GS_EnvFile.WriteString('CID_COMM', 'PBX_IP' , Trim(slTmp2[3]));
						GS_EnvFile.WriteString('CID_COMM', 'PBX_GroupID' , Trim(slTmp2[5]));
						GS_EnvFile.WriteString('CID_COMM', 'PBX_OP' , Trim(slTmp2[4]));
//							GS_EnvFile.WriteString('CID_COMM', 'PBX_LV' , Trim(slTmp2[6]));
					finally
						slTmp2.Free;
					end;
					frm_main.cxTabSheet1.TabVisible := True;
					frm_JON54.cxPageControl1.Pages[3].TabVisible := True;
					frm_JON54.cxPageControl1.ActivePageIndex := 3;
					frm_JON54.pnl_PBX_1.Enabled := True;
					frm_JON54.lb_CMNPHONE_Notice1.Caption := '';
					frm_JON54.lb_CMNPHONE_Notice2.Caption := '';

					//상담그룹 설정
					pSI_6110_JON54_Send('6110', '');   // 상담 그룹 조회
				end;
			finally
				slTmp1.Free;
			end;
		end else
		if sHead = '9001' then    // 9000. Ping
		begin
			if sResult = '00' then
			begin
				frm_Main.imgCID.Visible := True;
				frm_Main.cxCIDImgList.GetIcon(0, frm_Main.imgCID.Picture.Icon); // 신버전 신호 켜기..
				frm_Main.cxCIDImgList.Tag := 0;
				frm_Main.bSI415CTIConnected := True;
			end else
			if sResult = '01' then
			begin
				frm_Main.imgCID.Visible := True;
				frm_Main.cxCIDImgList.GetIcon(1, frm_Main.imgCID.Picture.Icon); // 신버전  신호 끄기..
				frm_Main.cxCIDImgList.Tag := 1;
				frm_Main.bSI415CTIConnected := False;
			end;

			frm_main.cxTabSheet1.TabVisible := True;
			frm_JON54.cxPageControl1.Pages[3].TabVisible := True;
//			frm_JON54.cxPageControl1.ActivePageIndex := 3;
			frm_JON54.pnl_PBX_1.Enabled := True;

			frm_JON54.lb_CMNPHONE_Notice1.Caption := '';
			frm_JON54.lb_CMNPHONE_Notice2.Caption := '';
		end else
		if (sHead = '5011') or (sHead = '5021') or (sHead = '5031') or (sHead = '5041') then    // 5011. 통화관리-개인별 결과
		begin
			if sResult = '00' then
			begin
				Frm_JON54.proc_PBX_CallList(vMsg, sHead);
			end;
		end else
		if (sHead = '8111') then    // 8111. LBS 사용
		begin
      if Assigned(frm_JON60) then
      begin
  			Frm_JON60.gsResult := sResult;

        if sResult = '00' then
          sTmp := '1. 고객 ARS 청취중입니다'
        else
        begin
          Frm_JON60.lb_Listen.style.color := $004444FF;
          sTmp := '2. ARS 요청실패' + #13#10 + '  통화가 종료 되었는지 확인하세요.' + #13#10 + #13#10 + '[ARS 다시요청]버튼 클릭하세요.';
          Frm_JON60.btn_ARS.Visible := True;
          Frm_JON60.proc_progress(1);
        end;
        Frm_JON60.mmo_Result.lines.Add(sTmp);
        Frm_JON60.lb_Listen.caption := sTmp;
      end;
		end else
		if (sHead = '8112') then    // 8112. LBS응답결과(0:실패, 1:성공)
		begin
      if Assigned(frm_JON60) then
      begin
        //'8112                            1        001'
        //'8112                            1        000'
        sResult := Copy(vMsg, 44, Length(vMsg) - 43);
        Frm_JON60.gsResult := sResult;
        if sResult = '1' then   //성공
        begin
          sTmp := '2. 고객위치정보 제공에 동의 하셨습니다.';
          Frm_JON60.mmo_Result.lines.Insert(0,sTmp);
          Frm_JON60.lb_Listen.caption := sTmp;
          Frm_JON60.btn_LBSResult.Click;
        end else
        if sResult = '2' then   //전화끊김
        begin
          Frm_JON60.lb_Listen.style.color := $004444FF;
          sTmp := '2. 고객이 전화를 끊었습니다.' + #13#10 + #13#10 + '안내를 종료합니다.';
          Frm_JON60.lb_Listen.caption := sTmp;
          sTmp := '2. 고객이 전화를 끊었습니다.' + #13#10'안내를 종료합니다.';
          Frm_JON60.mmo_Result.lines.Insert(0,sTmp);
          Frm_JON60.proc_progress(1);
        end else
        if sResult = '0' then  //실패
        begin
          Frm_JON60.lb_Listen.style.color := $004444FF;
          sTmp := '2. 고객위치정보 제공을 거절 하셨습니다.' + #13#10  + 'LBS(고객위치확인)창을 닫고' + #13#10 + 'POI검색을 통해 접수를 진행하여 주십시오.';
          Frm_JON60.mmo_Result.lines.Insert(0,sTmp+ #13#10);
          Frm_JON60.lb_Listen.caption := sTmp;
          Frm_JON60.proc_progress(1);
        end;
      end;
		end else
		if (sHead = '4001') then    // 8112. LBS응답결과(0:실패, 1:성공)
		begin
			if ( Assigned(frm_JON60) ) Or ( frm_JON60 <> Nil ) then //LBS중 고객이 끊으면
			begin
				Frm_JON60.lb_Listen.style.color := $004444FF;
				sTmp := '2. 고객이 전화를 끊었습니다.' + #13#10 + #13#10 + '안내를 종료합니다.';
				Frm_JON60.lb_Listen.caption := sTmp;
				sTmp := '2. 고객이 전화를 끊었습니다.' + #13#10'안내를 종료합니다.';
				Frm_JON60.mmo_Result.lines.Insert(0,sTmp);
				Frm_JON60.proc_progress(1);
      end;
		end;
	end;
end;

procedure pSi415_2601Execute( vMsg : Ansistring );    //2601
Var sData : Ansistring;
		sStr, sResult, sHead : Ansistring;
begin
	SetDebugeWrite('pSi415_2601Execute Read : ' + vMsg);

	if fSI_RecvParser( vMsg, sData ) then
	begin
		sHead := gSiSchRevH.sPId;
		sResult := gSiSchRevH.sResult;

		if sHead <> '9001' then
		begin
			Log('send To SoftPhone :' + vMsg, LOGIPCCSDATAPATHFILE);  //IPCC서버 받음
		end;

		if sHead = '2601' then    // 2601. 신규콜
		begin
			try   //'2601                           45        000234008522     07080178050    16886618'
				if sResult = '00' then     //'2601                           45        000234008522     07045447500    0558328888     9500'
				begin    //0234008522     07080178050    16886618'
					GS_JONCidInput.PhoneNumber := Trim(Copy(sData,  1, 15));  // 수신번호
					GS_JONCidInput.KeyNumber   := Trim(Copy(sData, 31, 15));  // 대표번호
					GS_JONCidInput.ExtNumber   := Trim(Copy(sData, 45, 15));  // 호분배그룹
					GS_JONCidInput.CidCall     := True;

					if GS_JONCidInput.PhoneNumber <> '' then
					begin

						GS_NKTCidInput.KeyNumber   := GS_JONCidInput.KeyNumber;
						GS_NKTCidInput.PhoneNumber := GS_JONCidInput.PhoneNumber;
						GS_NKTCidInput.InDate      := Now;
						//--------------------------------------------------------------------
						frm_Main.TimerOCX.Enabled := True;

						// 3601. 신규콜 응답 성공 패킷
						sStr := fSI_MakeHeader_Only('3601', '0', '00');
						frm_Main.bSI415_2601.Socket.SendText(sStr);
						SetDebugeWrite('bSI415_2601 Send: '+ sStr);
					end;
				end else
				begin
					// 3601. 신규콜 응답 실패 패킷
					sStr := fSI_MakeHeader_Only('3601', '0', sResult);
					frm_Main.bSI415_2601.Socket.SendText(sStr);
					SetDebugeWrite('bSI415_2601 Send: '+ sStr);

//					ShowMessage('PBX_SI415 CID 수신 실패!'  + #13#10 + frm_Main.fSSIO_ErrMsg(sResult));
					Exit;
				end;
			except on E: Exception do
				Assert(False, E.Message);
			end;
		end;
	end;
end;

procedure pSI_1030_Send( AId, APw, AIP : Ansistring );
Var str, sSend : Ansistring;
		iLen : Integer;
begin
	try
		str := Rpad(AId   , 32, ' ') +    // 상담원/관리자 아이디
					 Rpad(APw   , 32, ' ') +    // 패스워드
					 Rpad(AIP   , 15, ' ') ;    // 마술피리 서버 IP
		iLen := Length(str);
		sSend := fSI_MakeHeader('1030', IntToStr(iLen)) + str;
		//'10305023                       79SS702004  administrator                   1                               211.56.137.215 '
		pSi415SendData(sSend);
	except
	end;
end;

procedure pSI_1031_Recv( sRecv : Ansistring );
Var sData, sTmp : Ansistring;
begin
	try
		if fSI_RecvParser( sRecv, sData ) then
    begin
			//'10315023                       87SS70200400administrator                   1                               211.56.137.215 [1    0]'
			if sData <> '' then
			begin
				GT_Si415_INFO.Id     := Trim(Copy(sData, 001, 32));
				GT_Si415_INFO.pw     := Trim(Copy(sData, 033, 32));
				GT_Si415_INFO.IP     := Trim(Copy(sData, 065, 15));
				GT_Si415_INFO.Level  := Trim(Copy(sData, 080, 01));
				GT_Si415_INFO.ExtNo  := '';
				GT_Si415_INFO.Option := '';
				GT_Si415_INFO.GrpId  := '';
			end;
//'cmn02                           12345                           27.255.97.16   4    1[{"Q_exten":"9893", "Service_no":"16886618", "Dnis_no":"07045148893", "Buz_name":"콜마너OEM"} ]'
			if GT_Si415_INFO.Level = '0' then
			begin
				Frm_Main.grpSetPBXLogin.Tag := 0;
			end else
			//1: 슈퍼관리자(administrator) 2:메인관리자, 4:지사장
			if (GT_Si415_INFO.Level = '4') or (GT_Si415_INFO.Level = '2') or (GT_Si415_INFO.Level = '1') then
			begin
				if GT_Si415_INFO.Level = '4' then   //지사장
				begin
					Frm_Main.Menu1701.Enabled := False;
					Frm_Main.Menu1702.enabled := False;
					Frm_Main.Menu1704.enabled := False;
					Frm_Main.Menu1705.enabled := False;
					Frm_Main.Menu1706.enabled := False;
					Frm_Main.Menu1707.enabled := False;
					Frm_Main.Menu1708.enabled := False;
					Frm_Main.Menu1709.enabled := False;
					Frm_Main.Menu1710.enabled := False;
					Frm_Main.Menu1711.enabled := False;
					Frm_Main.Menu1712.enabled := False;
					Frm_Main.Menu1713.enabled := False;
					Frm_Main.Menu1714.enabled := False;
					Frm_Main.Menu1715.enabled := False;
					Frm_Main.Menu1716.enabled := False;
					Frm_Main.N19.enabled := False;
					Frm_Main.N20.enabled := False;
					Frm_Main.N21.enabled := False;
				end;
				Frm_Main.grpSetPBXLogin.Tag := 1;
				Frm_Main.grpSetPBXLogin.Visible := False;
//				Frm_Main.btnIpccMenu.Click;
				frm_main.cxTabSheet1.TabVisible := True;
				frm_JON54.cxPageControl1.Pages[4].TabVisible := True;    //로그인시 통화관리 오픈
				frm_JON54.cxPageControl1.ActivePageIndex := 4;
				pSI_6110_Send('6110', '');   // 통화관리 관리자 상담 그룹 조회

				Frm_Main.pmPBXPopup(Frm_Main.pmPBX);
//				end;
			end;

//			Frm_Main.proc_SI415_AdminLoginSet(sData); //로그인정보 구조체에 저장 - 사용안함

			//통화내역 - 관리자 대표번호 셋팅
			{frm_Jon54.cb_Keynumber02.Properties.Items.Clear;
			if GT_Admin_Service_no.Count > 0 then
			begin
				frm_Jon54.cb_Keynumber02.Properties.Items.Assign(GT_Admin_Service_no);
				frm_Jon54.cb_Keynumber02.Tag := 99;
				frm_Jon54.cb_Keynumber02.ItemIndex := 0;
				frm_Jon54.cb_Keynumber02.Tag := 0;
			end;    }

			gSI415_A_Login := True;
			if Frm_Main.grpSetPBXLogin.Visible then Frm_Main.grpSetPBXLogin.Visible := False;

			sTmp := Copy(sData, 86, Length(sData) - 85);
			Frm_Main.proc_AdminLogin_Q_exten(sTmp);
		end;
	except
  end;
end;


function fSI_1011_Recv( sRecv : Ansistring ) : Ansistring;
Var sData : Ansistring;
begin
	Result := '';
	try
		if fSI_RecvParser( sRecv, sData ) then
		begin
			Result := Copy(sData, 123, Length(sData) - 122);
		end;
	except
		Result := '';
	end;
end;

function fSI_1010_Send(AID, APW, AExtNo, ALevel : Ansistring ) : Ansistring;
Var str : Ansistring;
		iLen : Integer;
begin
	Result := '';
	try
		str := Rpad(AID   , 32, ' ') +    // 상담원/관리자 아이디
					 Rpad(APW   , 32, ' ') +    // 패스워드
					 Rpad(AExtNo, 04, ' ') +    // 내선번호
					 Rpad(ALevel, 01, ' ');     // 1: 전화기 사용, 2: 전화기 미사용

		iLen := Length(str);

		Result := fSI_MakeHeader('1010', IntToStr(iLen)) + str;
	except
		Result := '';
	end;
end;

function fSI_2501_Send(ANum, ADnis : Ansistring ) : Ansistring;
Var str : Ansistring;
		iLen : Integer;
begin
	Result := '';
	try
		str := Rpad(ANum  , 15, ' ') +    // 전화 걸 번호 및 수신(고객)번호
					 Rpad(ADnis , 15, ' ');     // 발신 번호

		iLen := Length(str);

		Result := fSI_MakeHeader('2501', IntToStr(iLen)) + str;
	except
		Result := '';
	end;
end;

function fSI_5010_Send( AsDate, AeDate, ANum, ADnis, AType : Ansistring ) : Ansistring;
Var str : Ansistring;
		iLen : Integer;
begin
	Result := '';
	try
		str := Rpad(AsDate, 19, ' ') +    // 조회 시작 시간(YYYY-MM-DD hh:nn:ss)
					 Rpad(AeDate, 19, ' ') +    // 조회 종료 시간(YYYY-MM-DD hh:nn:ss)
					 Rpad(ANum  , 15, ' ') +    // 전화 걸 번호 및 수신(고객)번호
					 Rpad(ADnis , 15, ' ') +    // 발신 번호
					 Rpad(AType , 01, ' ');     // 0: 모든콜, 1: 착신콜, 2: 발신콜

		iLen := Length(str);

		Result := fSI_MakeHeader('5010', IntToStr(iLen)) + str;
	except
		Result := '';
	end;
end;

function fSI_2601_Recv( sRecv : Ansistring) : Ansistring;
Var sData : Ansistring;
begin
	Result := '';
	try
		if fSI_RecvParser( sRecv, sData ) then
		begin
			Result := Copy(sData, 44, Length(sData) - 43);
		end;
	except
		Result := '';
	end;
end;

function fSI_4200_Send(ANum, ADnis, AAgentId : Ansistring ) : Ansistring;
Var str : Ansistring;
		iLen : Integer;
begin
	Result := '';
	try
		str := Rpad(ANum  , 15, ' ') +    // 내선 번호
					 Rpad(ADnis , 15, ' ') +    // 발신 번호
					 Rpad(AAgentId , 32, ' ');     // 내선번호 상담원 ID

		iLen := Length(str);

		Result := fSI_MakeHeader('4310', IntToStr(iLen)) + str;
	except
		Result := '';
	end;
end;

function fSI_4310_Send(ANum, ADnis, AAgentId : Ansistring ) : Ansistring;
Var str : Ansistring;
		iLen : Integer;
begin
	Result := '';
	try
		str := Rpad(ANum  , 15, ' ') +    // 내선 번호
					 Rpad(ADnis , 15, ' ') +    // 발신 번호
					 Rpad(AAgentId , 32, ' ');     // 내선번호 상담원 ID

		iLen := Length(str);

		Result := fSI_MakeHeader('4310', IntToStr(iLen)) + str;
	except
		Result := '';
	end;
end;

function fSI_4320_Send(AAgentId : Ansistring ) : Ansistring;
Var str : Ansistring;
		iLen : Integer;
begin
	Result := '';
	try
		str := Rpad(AAgentId , 32, ' ');     // 내선번호 상담원 ID

		iLen := Length(str);

		Result := fSI_MakeHeader('4320', IntToStr(iLen)) + str;
	except
		Result := '';
	end;
end;

function fSI_4330_Send(AAgentId, AExtNo : Ansistring ) : Ansistring;
Var str : Ansistring;
		iLen : Integer;
begin
	Result := '';
	try
		str := Rpad(AAgentId , 32, ' ') +    // 내선번호 상담원 ID
					 Rpad(AAgentId , 05, ' ');     // 관리자(당겨받을) 내선번호

		iLen := Length(str);

		Result := fSI_MakeHeader('4320', IntToStr(iLen)) + str;
	except
		Result := '';
	end;
end;

function fSI_5011_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean ) : Ansistring;
Var sData : Ansistring;
begin
	Result := '';
	try
		if fSI_RecvParser( sRecv, sData ) then
		begin
			if Copy(sData, 75, 1) = 'E' then bNext := False else  // 100개 단위로 전송(N: 계속, E: 종료)
			if Copy(sData, 75, 1) = 'N' then bNext := True;

			Result := Copy(sData, 76, Length(sData) - 75);
		end;
	except
		Result := '';
	end;
end;

function fSI_5020_Send( AsDate, AeDate, ANum, ADnis, AType, AGroupID, AAgentID : Ansistring ) : Ansistring;
Var str : Ansistring;
		iLen : Integer;
begin
	Result := '';
	try
		str := Rpad(AsDate, 19, ' ') +    // 조회 시작 시간(YYYY-MM-DD hh:nn:ss)
					 Rpad(AeDate, 19, ' ') +    // 조회 종료 시간(YYYY-MM-DD hh:nn:ss)
					 Rpad(ANum  , 15, ' ') +    // 전화 걸 번호 및 수신(고객)번호
					 Rpad(ADnis , 15, ' ') +    // 발신 번호
					 Rpad(AType , 01, ' ') +    // 0: 모든콜, 1: 착신콜, 2: 발신콜
					 Rpad(AGroupID , 32, ' ') +    // 그룹 ID
					 Rpad(AAgentID , 32, ' ');     // 상담원 ID

		iLen := Length(str);

		Result := fSI_MakeHeader('5020', IntToStr(iLen)) + str;
	except
		Result := '';
	end;
end;

function fSI_5021_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean ) : Ansistring;
Var sData : Ansistring;
begin
	Result := '';
	try
		if fSI_RecvParser( sRecv, sData ) then
		begin
			if Copy(sData, 139, 1) = 'E' then bNext := False else  // 100개 단위로 전송(N: 계속, E: 종료)
			if Copy(sData, 139, 1) = 'N' then bNext := True;

			Result := Copy(sData, 140, Length(sData) - 139);
		end;
	except
		Result := '';
	end;
end;

function fSI_5030_Send( AsDate, AeDate, ANum, ADnis : Ansistring ) : Ansistring;
Var str : Ansistring;
		iLen : Integer;
begin
	Result := '';
	try
		str := Rpad(AsDate, 19, ' ') +    // 조회 시작 시간(YYYY-MM-DD hh:nn:ss)
					 Rpad(AeDate, 19, ' ') +    // 조회 종료 시간(YYYY-MM-DD hh:nn:ss)
					 Rpad(ANum  , 15, ' ') +    // 전화 걸 번호 및 수신(고객)번호
					 Rpad(ADnis , 15, ' ');     // 발신 번호

		iLen := Length(str);

		Result := fSI_MakeHeader('5030', IntToStr(iLen)) + str;
	except
		Result := '';
	end;
end;

function fSI_5031_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean ) : Ansistring;
Var sData : Ansistring;
begin
	Result := '';
	try
		if fSI_RecvParser( sRecv, sData ) then
		begin
			if Copy(sData, 74, 1) = 'E' then bNext := False else  // 100개 단위로 전송(N: 계속, E: 종료)
			if Copy(sData, 74, 1) = 'N' then bNext := True;

			Result := Copy(sData, 75, Length(sData) - 74);
		end;
	except
		Result := '';
	end;
end;

function fSI_5040_Send( APBXKey : Ansistring ) : Ansistring;
Var str : Ansistring;
		iLen : Integer;
begin
	Result := '';
	try
		str := Rpad(APBXKey, 10, ' ');     // 접수번호

		iLen := Length(str);

		Result := fSI_MakeHeader('5040', IntToStr(iLen)) + str;
	except
		Result := '';
	end;
end;

function fSI_5041_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean ) : Ansistring;
Var sData : Ansistring;
begin
	Result := '';
	try
		if fSI_RecvParser( sRecv, sData ) then
		begin
      APid := gSiSchRevH.sPId;
      Result := sData;
		end;
	except
		Result := '';
	end;
end;

function fSI_5110_Send( APId, AsDate, AeDate, ANum, ADnis, AType, AGId, AAId, AMemo, ALimit, AID : Ansistring ) : Ansistring;
Var str : Ansistring;
    iLen : Integer;
begin
	Result := '';
	try
		str := Rpad(AsDate, 19, ' ') +    // 조회 시작 시간(YYYY-MM-DD hh:nn:ss)
					 Rpad(AeDate, 19, ' ') +    // 조회 종료 시간(YYYY-MM-DD hh:nn:ss)
					 Rpad(ANum  , 15, ' ') +    // 전화 걸 번호 및 수신(고객)번호
					 Rpad(ADnis , 15, ' ') +    // 발신 번호
					 Rpad(AType , 01, ' ') +    // 0: 모든콜, 1: 착신콜, 2: 발신콜
					 Rpad(AGId  , 32, ' ') +    // 그룹 ID
					 Rpad(AAId  , 32, ' ') +    // 상담원 ID
					 Rpad(AMemo ,128, ' ') +    // 메모
					 Rpad(ALimit, 10, ' ') +    // 조회 개수 (기본 1000개)
					 Rpad(AID   , 32, ' ');     // 관리자 ID (슈퍼관리자, 메인관리자, 지사장 ID)Default ? administrator ( 슈퍼관리자 )

    iLen := Length(str);
    Result := fSI_MakeHeader(APid, IntToStr(iLen)) + str;
  except
    Result := '';
  end;
end;

function fSI_5111_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean ) : Ansistring;
Var sData : Ansistring;
begin
  Result := '';
	try
		if fSI_RecvParser( sRecv, sData ) then
    begin
			if Copy(sData, 309, 1) = 'E' then bNext := False else  // 100개 단위로 전송(N: 계속, E: 종료)
			if Copy(sData, 309, 1) = 'N' then bNext := True;

			APid := gSiSchRevH.sPId;
			Result := Copy(sData, 310, Length(sData) - 309);
    end;
  except
    Result := '';
  end;
end;

function fSI_5210_Send( AsDate, AeDate, ANum, ADnis, AGId, AAId, ALimit, AID : Ansistring ) : Ansistring;
Var str : Ansistring;
		iLen : Integer;
begin
	Result := '';
	try
		str := Rpad(AsDate, 19, ' ') +    // 조회 시작 시간(YYYY-MM-DD hh:;:ss)
					 Rpad(AeDate, 19, ' ') +    // 조회 종료 시간(YYYY-MM-DD hh:nn:ss)
					 Rpad(ANum  , 15, ' ') +    // 전화 걸 번호 및 수신(고객)번호
					 Rpad(ADnis , 15, ' ') +    // 발신 번호
					 Rpad(AGId  , 32, ' ') +    // 그룹 ID
					 Rpad(AAId  , 32, ' ') +    // 상담원 ID
					 Rpad(ALimit, 10, ' ') +    // 조회 개수 (기본 1000개)
					 Rpad(AID   , 32, ' ');     // 관리자 ID (슈퍼관리자, 메인관리자, 지사장 ID)Default ? administrator ( 슈퍼관리자 )

		iLen := Length(str);

		Result := fSI_MakeHeader('5210', IntToStr(iLen)) + str;
	except
		Result := '';
	end;
end;

function fSI_5211_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean ) : Ansistring;
Var sData : Ansistring;
begin
	Result := '';
	try
		if fSI_RecvParser( sRecv, sData ) then
		begin
			if Copy(sData, 180, 1) = 'E' then bNext := False else  // 100개 단위로 전송(N: 계속, E: 종료)
			if Copy(sData, 180, 1) = 'N' then bNext := True;

			APid := gSiSchRevH.sPId;
			Result := Copy(sData, 181, Length(sData) - 180);
		end;
	except
		Result := '';
	end;
end;

function fSI_5310_Send( AsDate, AeDate, ANum, ADnis, AType, AGId, AAId, ALimit, AID : Ansistring ) : Ansistring;
Var str : Ansistring;
		iLen : Integer;
begin
	Result := '';
	try
		str := Rpad(AsDate, 19, ' ') +    // 조회 시작 시간(YYYY-MM-DD hh:;:ss)
					 Rpad(AeDate, 19, ' ') +    // 조회 종료 시간(YYYY-MM-DD hh:nn:ss)
					 Rpad(ANum  , 15, ' ') +    // 전화 걸 번호 및 수신(고객)번호
					 Rpad(ADnis , 15, ' ') +    // 발신 번호
					 Rpad(AType , 01, ' ') +    // 0: 모든콜, 1: 착신콜, 2: 발신콜
					 Rpad(AGId  , 32, ' ') +    // 그룹 ID
					 Rpad(AAId  , 32, ' ') +    // 상담원 ID
					 Rpad(ALimit, 10, ' ') +    // 조회 개수 (기본 1000개)
					 Rpad(AID   , 32, ' ');     // 관리자 ID (슈퍼관리자, 메인관리자, 지사장 ID)Default ? administrator ( 슈퍼관리자 )

		iLen := Length(str);
		Result := fSI_MakeHeader('5310', IntToStr(iLen)) + str;
	except
		Result := '';
	end;
end;

function fSI_5311_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean ) : Ansistring;
Var sData : Ansistring;
begin
	Result := '';
	try
		if fSI_RecvParser( sRecv, sData ) then
		begin
			if Copy(sData, 181, 1) = 'E' then bNext := False else  // 100개 단위로 전송(N: 계속, E: 종료)
			if Copy(sData, 181, 1) = 'N' then bNext := True;

			APid := gSiSchRevH.sPId;
			Result := Copy(sData, 182, Length(sData) - 181);
		end;
	except
		Result := '';
	end;
end;

function fSI_5253_Send( APId, AsDate, AeDate, ANum, ADnis, AType, AGId, AAId, ALimit : Ansistring ) : Ansistring;
Var str : Ansistring;
		iLen : Integer;
begin
  Result := '';
  try
    str := Rpad(AsDate, 19, ' ') +    // 조회 시작 시간(YYYY-MM-DD hh:nn:ss)
           Rpad(AeDate, 19, ' ') +    // 조회 종료 시간(YYYY-MM-DD hh:nn:ss)
           Rpad(ANum  , 15, ' ') +    // 전화 걸 번호 및 수신(고객)번호
           Rpad(ADnis , 15, ' ') +    // 발신 번호
           Rpad(AType , 01, ' ') +    // 0: 모든콜, 1: 착신콜, 2: 발신콜
           Rpad(AGId  , 32, ' ') +    // 그룹 ID
           Rpad(AAId  , 32, ' ') +    // 상담원 ID
           Rpad(ALimit, 10, ' ');     // 조회 개수 (기본 1000개)

    iLen := Length(str);
    Result := fSI_MakeHeader(APid, IntToStr(iLen)) + str;
  except
    Result := '';
  end;
end;

function fSI_5253_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean ) : Ansistring;
Var sData : Ansistring;
begin
  Result := '';
  try
    if fSI_RecvParser( sRecv, sData ) then
    begin
      if Copy(sData, 139, 1) = 'E' then bNext := False else  // 100개 단위로 전송(N: 계속, E: 종료)
      if Copy(sData, 139, 1) = 'N' then bNext := True;

      APid := gSiSchRevH.sPId;
      Result := Copy(sData, 140, Length(sData) - 139);
    end;
  except
    Result := '';
  end;
end;

procedure pSI_5455_Send( APid, AsDate, AeDate, AGId, AAId : Ansistring );
Var str, sSend : Ansistring;
    iLen : Integer;
begin
	try
		if APid = '5510' then
		begin
			str := Rpad(AsDate, 19, ' ') +    // 조회 시작 시간(YYYY-MM-DD hh:nn:ss)
						 Rpad(AeDate, 19, ' ') +    // 조회 종료 시간(YYYY-MM-DD hh:nn:ss)
						 Rpad(AGId  , 32, ' ') +    // 그룹 ID
						 Rpad(AAId  , 32, ' ') +     // 상담원 ID
						 Rpad(GT_Si415_INFO.Id, 32, ' ');
		end else
		begin
			str := Rpad(AsDate, 19, ' ') +    // 조회 시작 시간(YYYY-MM-DD hh:nn:ss)
						 Rpad(AeDate, 19, ' ') +    // 조회 종료 시간(YYYY-MM-DD hh:nn:ss)
						 Rpad(AGId  , 32, ' ') +    // 그룹 ID
						 Rpad(AAId  , 32, ' ') +     // 상담원 ID
						 '   '                 +     // 통화유효시간(초)
						 Rpad(GT_Si415_INFO.Id, 32, ' ');
		end;
		iLen := Length(str);
		sSend := fSI_MakeHeader(APid, IntToStr(iLen)) + str;

    pSi415SendData(sSend);
  except
  end;
end;

procedure pSI_5455_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean );
Var sData : Ansistring;
	iDx : integer;
begin
  try
    if fSI_RecvParser( sRecv, sData ) then
    begin
			iDx := 0;
			APid := gSiSchRevH.sPId;
			if APid = '5511' then iDx := 140 else iDx :=143;
			if Copy(sData, iDx, 1) = 'E' then bNext := False else  // 100개 단위로 전송(N: 계속, E: 종료)
			if Copy(sData, iDx, 1) = 'N' then bNext := True;

			sData := Copy(sData, iDx + 1, Length(sData) - iDx);
      Frm_PBX.proc_recieve( sData, APid, bNext);
    end;
  except
  end;
end;

procedure fSI_6010_Send( AParam : Ansistring );
Var str, sSend : Ansistring;
    iLen : Integer;
    sParam : TStringList;
begin
  try
    sParam := TStringList.Create;
    try
      GetTextSeperationEx2('│', AParam, sParam);

      str := Rpad(sParam[00],  032, ' ') +    // 관리자 ID (슈퍼관리자, 메인관리자, 지사장 ID) Default ? administrator ( 슈퍼관리자 )
             Rpad(sParam[01],  004, ' ') +    // 호분배 그룹 검색
             Rpad(sParam[02],  016, ' ') +    // 대표번호 검색
             Rpad(sParam[03],  016, ' ') +    // 착신번호 검색
             Rpad(sParam[04],  100, ' ');     // 서비스명 검색

      iLen := Length(str);
      sSend := fSI_MakeHeader('6010', IntToStr(iLen)) + str;

      pSi415SendData(sSend);
    finally
      sParam.Free;
    end;
  except
  end;
end;

function fSI_6011_Recv( sRecv : Ansistring; Var bNext : Boolean ) : Ansistring;
Var sData : Ansistring;
begin
	Result := '';
	try
		if fSI_RecvParser( sRecv, sData ) then
		begin
			if Copy(sData, 174, 1) = 'E' then bNext := False else  // 100개 단위로 전송(N: 계속, E: 종료)
			if Copy(sData, 174, 1) = 'N' then bNext := True;

			Result := Copy(sData, 175, Length(sData) - 174);
    end;
  except
    Result := '';
  end;
end;

function fSI_6020_30_Send( APId, AParam : Ansistring ) : Ansistring;
Var str : Ansistring;
		iLen : Integer;

		sParam : TStringList;
begin
	Result := '';
	try
		sParam := TStringList.Create;
		try
			GetTextSeperationEx2('│', AParam, sParam);

			str := Rpad(sParam[00],  32, ' ') +    // 관리자 ID (슈퍼관리자, 메인관리자, 지사장 ID)
						 Rpad(sParam[01],  04, ' ') +    // 호분배 그룹 ( 9000 ~ 9999 까지)  * 호분배 그룹 번호는 수정되지 안음.
						 Rpad(sParam[02],  16, ' ') +    // 대표번호
						 Rpad(sParam[03],  16, ' ') +    // 착신번호
						 Rpad(sParam[04], 100, ' ') +    // 서비스명
						 Rpad(sParam[05], 100, ' ') +    // 명의자/통신사
						 Rpad(sParam[06], 500, ' ') +    // 안내문구
						 Rpad(sParam[07],   1, ' ') +    // 개별착신/지능형 착신 사용 유무유무  N:사용안함, Y:개별착신 사용, A:지능형착신사용
						 Rpad(sParam[08],   4, ' ') +    // 개별착신 / 지능형 착신 시작시간(hhmm)
						 Rpad(sParam[09],   4, ' ') +    // 개별착신 / 지능형 착신 종료시간(hhmm)
						 Rpad(sParam[10],  16, ' ') +    // 개별착신 / 지능형 착신 번호 1
						 Rpad(sParam[11],   1, ' ') +    // 개별착신 / 지능형 착신 번호 1 사용유무  N:사용안함, Y:사용
						 Rpad(sParam[12],  16, ' ') +    // 개별착신 / 지능형 착신 번호 2
						 Rpad(sParam[13],   1, ' ') +    // 개별착신 / 지능형 착신 번호 2 사용유무  N:사용안함, Y:사용
						 Rpad(sParam[14],  16, ' ') +    // 개별착신 / 지능형 착신 번호 3
						 Rpad(sParam[15],   1, ' ') +    // 개별착신 / 지능형 착신 번호 3 사용유무  N:사용안함, Y:사용
						 Rpad(sParam[16],   1, ' ') +    // 콜마너 연동 유무 ( N : 사용안함,  Y : 사용 )
						 Rpad(sParam[17],   1, ' ') +    // 콜마너탁송 연동 유무 ( N : 사용안함,  Y : 사용 )
						 Rpad(sParam[18],   1, ' ') +    // 로지 연동 유무
						 Rpad(sParam[19],   1, ' ') +    // 콜마트 연동 유무
						 Rpad(sParam[20],   1, ' ') +    // 아이콘 연동 유무
						 Rpad(sParam[21],   1, ' ') +		 // G365 연동 유무
						 Rpad(sParam[22],   1, ' ') +	   // 인성 연동 유무

						 Rpad(sParam[23],   5, ' ') +    // 어플연동  총 5자리
																						 // 1 자리 : 드림드라이브, 0:미사용, 1:사용
																						 // 2 자리 : 어플연동, 0:미사용, 1:사용
																						 // 3 자리 : 뷰링 IN, 0:미사용, 1:사용
																						 // 4 자리 : 뷰링 OUT, 0:미사용, 1:사용
																						 // 5 자리 : 대리 ON, 0:미사용, 1:사용

						 Rpad(sParam[24],  50, ' ') +    // CTI-Q 대기멘트
						 Rpad(sParam[25],  50, ' ') +    // VIP CTI-Q 대기멘트
						 Rpad(sParam[26],   1, ' ') +    // 개별 필터링 사용유무 ( N : 사용안함, Y : 사용 )
						 Rpad(sParam[27],  50, ' ') +    // 개별 필터링 멘트 명
						 Rpad(sParam[28],   4, ' ') +    // 개별 필터 시작 시간
						 Rpad(sParam[29],   4, ' ') +    // 개별 필터 종료 시간
						 Rpad(sParam[30],   1, ' ') +    // 080 수신거부 사용유무 ( N : 사용안함,  Y : 사용 )
						 Rpad(sParam[31],  50, ' ') +    // 080 수신거부 파일 명
						 Rpad(sParam[32],   1, ' ');     // 호분배 순위 ( 1 or 2 순위)


			iLen := Length(str);
			Result := fSI_MakeHeader(APid, IntToStr(iLen)) + str;
			pSi415SendData(Result);
		finally
			sParam.Free;
    end;
  except
    Result := '';
  end;
end;

function fSI_6040_Send( APId, AExten : Ansistring ) : Ansistring;
Var str : Ansistring;
		iLen : Integer;
begin
	Result := '';
	try
		str := Rpad(APId  ,  32, ' ') +   // 관리자 ID (슈퍼관리자, 메인관리자, 지사장 ID)
					 Rpad(AExten,  04, ' ');    // 호분배 그룹 ( 9000 ~ 9999 까지)  * 호분배 그룹 번호는 수정되지 안음.

		iLen := Length(str);
		Result := fSI_MakeHeader('6040', IntToStr(iLen)) + str;
		pSi415SendData(Result);
	except
		Result := '';
	end;
end;

function fSI_6050_Send( APId, AExten : Ansistring ) : Ansistring;    //다중삭제
Var str : Ansistring;
		iLen : Integer;
begin
	Result := '';
	try
		str := Rpad(APId  ,  32, ' ') +   // 관리자 ID (슈퍼관리자, 메인관리자, 지사장 ID)
					 AExten;    // 호분배 그룹 ( 9000 ~ 9999 까지)  * 호분배 그룹 번호는 수정되지 안음.

		iLen := Length(str);
		Result := fSI_MakeHeader('6050', IntToStr(iLen)) + str;
		pSi415SendData(Result);
	except
		Result := '';
	end;
end;

procedure pSI_6110_Send( APId, AGrpId : Ansistring );
Var str, sSend : Ansistring;
		iLen : Integer;
begin
	try
		str := Rpad(AGrpId , 32, ' ');     // 그룹 ID ( 그룹 ID 없으면 전체 조회 )
		iLen := Length(str);
		sSend := fSI_MakeHeader(APid, IntToStr(iLen)) + str;

		pSi415SendData(sSend);
	except
	end;
end;

function fSI_6111_Recv( sRecv : Ansistring; Var bNext : Boolean ) : Ansistring;
Var sData : Ansistring;
begin
	Result := '';
	try
		if fSI_RecvParser( sRecv, sData ) then
		begin
			if Copy(sData, 38, 1) = 'E' then bNext := False else  // 100개 단위로 전송(N: 계속, E: 종료)
			if Copy(sData, 38, 1) = 'N' then bNext := True;

			Result := Copy(sData, 39, Length(sData) - 38);
		end;
	except
		Result := '';
	end;
end;

procedure pSI_6110_JON54_Send( APId, AGrpId : Ansistring );
Var str, sSend : Ansistring;
		iLen : Integer;
begin
	try
		str := Rpad(AGrpId , 32, ' ');     // 그룹 ID ( 그룹 ID 없으면 전체 조회 )
		iLen := Length(str);
		sSend := fSI_MakeHeader(APid, IntToStr(iLen)) + str;

		pSi415IPCCSendData(sSend);
	except
	end;
end;

function fSI_6120_30_Send( APId, AParam : Ansistring ) : Ansistring;
Var str : Ansistring;
		iLen : Integer;
		sParam : TStringList;
begin
	Result := '';
	try
		sParam := TStringList.Create;
		try
			GetTextSeperationEx2('│', AParam, sParam);

			str := Rpad(sParam[00],  32, ' ') +    // 상담 그룹 ID
						 Rpad(sParam[01],  64, ' ') +    // 상담 그룹 명
						 Rpad(sParam[02], 128, ' ') ;    // 상담 그룹 설명

			iLen := Length(str);
			Result := fSI_MakeHeader(APid, IntToStr(iLen)) + str;

			pSi415SendData(Result);
		finally
			sParam.Free;
		end;
	except
		Result := '';
	end;
end;

function fSI_6140_Send( APId, AExten : Ansistring ) : Ansistring;
Var str : Ansistring;
		iLen : Integer;
begin
	Result := '';
	try
		str := Rpad(AExten , 32, ' ');     // 상담 그룹 ID

		iLen := Length(str);

		Result := fSI_MakeHeader(APid, IntToStr(iLen)) + str;
		pSi415SendData(Result);
	except
		Result := '';
	end;
end;

procedure pSI_6150_Send( AGrpId : Ansistring );
Var str, sSend : Ansistring;
    iLen : Integer;
begin
  try
    str := AGrpId;            // 삭제하려는 그룹ID 리스트(콤마 구분자)

    iLen := Length(str);
    sSend := fSI_MakeHeader('6150', IntToStr(iLen)) + str;

    pSi415SendData(sSend);
  except
  end;
end;

procedure pSI_6210_Send( APId, AGrpId, AAgtId : Ansistring );
Var str, sSend : Ansistring;
		iLen : Integer;
begin
	try
		str := Rpad(AGrpId , 32, ' ') +     // 그룹 ID ( 그룹 ID 없으면 전체 조회 )
					 Rpad(AAgtId , 32, ' ');      // 상담원 ID ( 상담원 ID 없으면 전체 조회 )
		iLen := Length(str);
		sSend := fSI_MakeHeader(APid, IntToStr(iLen)) + str;

		pSi415SendData(sSend);
  except
  end;
end;

function fSI_6211_Recv( sRecv : Ansistring; Var bNext : Boolean ) : Ansistring;
Var sData : Ansistring;
begin
	Result := '';
	try
		if fSI_RecvParser( sRecv, sData ) then
		begin
			if Copy(sData, 70, 1) = 'E' then bNext := False else  // 100개 단위로 전송(N: 계속, E: 종료)
			if Copy(sData, 70, 1) = 'N' then bNext := True;

			Result := Copy(sData, 71, Length(sData) - 70);
		end;
	except
		Result := '';
	end;
end;

procedure pSI_6210_JON54_Send( APId, AGrpId, AAgtId : Ansistring );
Var str, sSend : Ansistring;
		iLen : Integer;
begin
	try
		str := Rpad(AGrpId , 32, ' ') +     // 그룹 ID ( 그룹 ID 없으면 전체 조회 )
					 Rpad(AAgtId , 32, ' ');      // 상담원 ID ( 상담원 ID 없으면 전체 조회 )
		iLen := Length(str);
		sSend := fSI_MakeHeader(APid, IntToStr(iLen)) + str;

		pSi415IPCCSendData(sSend);
	except
	end;
end;

function fSI_6220_30_Send( APId, AParam : Ansistring ) : Ansistring;
Var str : Ansistring;
		iLen : Integer;
		sParam : TStringList;
begin
	Result := '';
	try
		sParam := TStringList.Create;
		try
			GetTextSeperationEx2('│', AParam, sParam);

			str := Rpad(sParam[00],  32, ' ') +    // 상담원 ID
						 Rpad(sParam[01],  32, ' ') +    // 상담원 패스워드
						 Rpad(sParam[02],  64, ' ') +    // 상담원 명
						 Rpad(sParam[03],  32, ' ') +    // 상담 그룹 ID
						 Rpad(sParam[04], 128, ' ') +    // 상담원 설명
						 Rpad(sParam[05],   1, ' ') +    // 상담원 타입
						 Rpad(sParam[06],   4, ' ') +    // 내선번호
						 Rpad(sParam[07],   1, ' ') +    // 자동 응답 사용 여부
						 Rpad(sParam[08],   4, ' ') +    // 자동응답 (초)
						 Rpad(sParam[09],   1, ' ') +    // 발신 지역 번호 사용 여부
						 Rpad(sParam[10],   4, ' ') +    // 발신 지역 번호
						 Rpad(sParam[11],   1, ' ') +    // 고객 번호 마킹 여부
						 Rpad(sParam[12],   1, ' ') +    // 전화끊은후 자동대기 사용 여부
						 Rpad(sParam[13],   4, ' ') +    // 전화끊은후 자동대기 (초)
						 Rpad(sParam[14],   1, ' ') ;    // 상담원 등급

			iLen := Length(str);
			Result := fSI_MakeHeader(APid, IntToStr(iLen)) + str;
			pSi415SendData(Result);
		finally
			sParam.Free;
		end;
	except
		Result := '';
	end;
end;

function fSI_6240_Send( APId, AExten : Ansistring ) : Ansistring;
Var str : Ansistring;
		iLen : Integer;
begin
	Result := '';
	try
		str := Rpad(AExten , 32, ' ');     // 상담원 ID
		iLen := Length(str);
		Result := fSI_MakeHeader(APid, IntToStr(iLen)) + str;
		pSi415SendData(Result);
	except
		Result := '';
	end;
end;

procedure pSI_6250_Send( AAgtId : Ansistring );
Var str, sSend : Ansistring;
    iLen : Integer;
begin
  try
    str := AAgtId;            // 삭제하려는 상담원ID 리스트(콤마 구분자)
    iLen := Length(str);
    sSend := fSI_MakeHeader('6250', IntToStr(iLen)) + str;
    pSi415SendData(sSend);
  except
  end;
end;

procedure fSI_6310_Send( APId, AStr : Ansistring );
Var str, sSend : Ansistring;
		iLen : Integer;
begin
	try
		str := Rpad(AStr , 32, ' ');      // 관리자 ID ( 관리자 ID 없으면 전체 조회 )
		iLen := Length(str);
		sSend := fSI_MakeHeader(APid, IntToStr(iLen)) + str;
		pSi415SendData(sSend);
	except
	end;
end;

function fSI_6311_Recv( sRecv : Ansistring; var bNext : Boolean ) : Ansistring;
Var sData : Ansistring;
begin
	Result := '';
	try
		if fSI_RecvParser( sRecv, sData ) then
		begin
			if Copy(sData, 38, 1) = 'E' then bNext := False else  // 100개 단위로 전송(N: 계속, E: 종료)
			if Copy(sData, 38, 1) = 'N' then bNext := True;

			Result := Copy(sData, 39, Length(sData) - 38);
		end;
	except
		Result := '';
	end;
end;

function fSI_6320_30_Send( APId, AParam : Ansistring ) : Ansistring;
Var str : Ansistring;
    iLen : Integer;
    sParam : TStringList;
begin
	Result := '';
  try
    sParam := TStringList.Create;
    try
      GetTextSeperationEx2('│', AParam, sParam);

			str := Rpad(sParam[00],  32, ' ') +    // 관리자 ID
						 Rpad(sParam[01],  32, ' ') +    // 관리자PW
						 Rpad(sParam[02],  64, ' ') +    // 관리자명
						 Rpad(sParam[03], 128, ' ') +    // 관리자 설명
						 Rpad(sParam[04],  04, ' ') +    // 내선
						 Rpad(sParam[05],  01, ' ') ;    // 관리자 권한 ( 1 : 슈퍼관리자(administrator), 2 : 메인관리자,  4 : 지사장 )

      iLen := Length(str);

			Result := fSI_MakeHeader(APid, IntToStr(iLen)) + str;
			pSi415SendData(Result);
		finally
			sParam.Free;
    end;
  except
    Result := '';
  end;
end;

function fSI_6340_Send( APId, AMngId : Ansistring ) : Ansistring;
Var str : Ansistring;
    iLen : Integer;
begin
	Result := '';
	try
		str := Rpad(AMngId , 32, ' ');     // 관리자 ID
		iLen := Length(str);
		Result := fSI_MakeHeader(APid, IntToStr(iLen)) + str;
	except
		Result := '';
	end;
end;

procedure pSI_6350_Send( AMngId : Ansistring );
Var str, sSend : Ansistring;
    iLen : Integer;
begin
  try
    str := AMngId;            // 삭제하려는 관리자ID 리스트(콤마 구분자)
    iLen := Length(str);
    sSend := fSI_MakeHeader('6350', IntToStr(iLen)) + str;
    pSi415SendData(sSend);
  except
  end;
end;

procedure fSI_6360_Send( APId, AStr : Ansistring );
Var str, sSend : Ansistring;
		iLen : Integer;
begin
	try
		str := Rpad(AStr , 32, ' ');      // 관리자 ID ( 관리자 ID 없으면 전체 조회 )
		iLen := Length(str);
		sSend := fSI_MakeHeader(APid, IntToStr(iLen)) + str;
		pSi415SendData(sSend);
	except
	end;
end;

function fSI_6361_Recv( sRecv : Ansistring; var bNext : Boolean ) : Ansistring;
Var sData : Ansistring;
begin
	Result := '';
	try
		if fSI_RecvParser( sRecv, sData ) then
		begin
			if Copy(sData, 38, 1) = 'E' then bNext := False else  // 100개 단위로 전송(N: 계속, E: 종료)
			if Copy(sData, 38, 1) = 'N' then bNext := True;

			Result := Copy(sData, 39, Length(sData) - 38);
		end;
	except
		Result := '';
	end;
end;

procedure pSI_6370_Send( APId, AParam : String);
Var str, sSend : Ansistring;
		iLen : Integer;
		sParam : TStringList;
begin
	try
		sParam := TStringList.Create;
		try
			GetTextSeperationEx2('│', AParam, sParam);

			str := Rpad(sParam[00],  32, ' ') +  // 그룹 ID ( 그룹 ID 없으면 전체 조회 )
									sParam[01]           ;   //호분배번호 리스트( 콤마 구분자)
			iLen := Length(str);
			sSend := fSI_MakeHeader(APid, IntToStr(iLen)) + str;
			pSi415SendData(sSend);
		finally
			sParam.Free;
		end;
  except
	end;
end;

procedure pSI_6380_Send( APId, AParam : String);
Var str, sSend : Ansistring;
		iLen : Integer;
		sParam : TStringList;
begin
	try
		sParam := TStringList.Create;
		try
			GetTextSeperationEx2('│', AParam, sParam);

			str := Rpad(sParam[00],  32, ' ') +  // 관리자 ID
						 Rpad(sParam[01],  32, ' ');   //변경할 비밀번호
			iLen := Length(str);
			sSend := fSI_MakeHeader(APid, IntToStr(iLen)) + str;
			pSi415SendData(sSend);
		finally
			sParam.Free;
		end;
	except
	end;
end;

procedure pSI_6410_Send( AStr : Ansistring );
Var str, sSend : Ansistring;
    iLen : Integer;
begin
  try
    str := '';
    iLen := Length(str);
    sSend := fSI_MakeHeader('6410', IntToStr(iLen)) + str;
    pSi415SendData(sSend);
  except
  end;
end;

procedure pSI_6411_Recv( sRecv : Ansistring; Var bNext : Boolean );
Var sData : Ansistring;
begin
  try
    if fSI_RecvParser( sRecv, sData ) then
    begin
      if Copy(sData, 6, 1) = 'E' then bNext := False else  // 100개 단위로 전송(N: 계속, E: 종료)
      if Copy(sData, 6, 1) = 'N' then bNext := True;

      sData := Copy(sData, 7, Length(sData) - 6);
      Frm_PBX.proc_recieve( sData, '6411', bNext);
    end;
  except
  end;
end;

procedure pSI_6430_Send( AParam : Ansistring );
Var str, sSend : Ansistring;
    iLen : Integer;
    sParam : TStringList;
begin
  try
    sParam := TStringList.Create;
    try
      GetTextSeperationEx2('│', AParam, sParam);

      str := Rpad(sParam[00],  01, ' ') +    // 구분 ( 1 : 평일, 2 : 토요일, 3 : 일요일 )
             Rpad(sParam[01],  04, ' ') +    // 근무 시작 시간(hhmm)
             Rpad(sParam[02],  04, ' ') +    // 근무 종료 시간(hhmm)
             Rpad(sParam[03],  01, ' ') +    // 근무 시간 사용 유무 ( N : 사용안함, Y : 사용 )
             Rpad(sParam[04],  04, ' ') +    // 아침 시작 시간
             Rpad(sParam[05],  04, ' ') +    // 아침 종료 시간
             Rpad(sParam[06],  01, ' ') +    // 아침 시간 사용 유무 ( N : 사용안함, Y : 사용 )
             Rpad(sParam[07],  04, ' ') +    // 점심 시작 시간
             Rpad(sParam[08],  04, ' ') +    // 점심 종료 시간
             Rpad(sParam[09],  01, ' ') +    // 점심 시간 사용 유무 ( N : 사용안함, Y : 사용 )
             Rpad(sParam[10],  04, ' ') +    // 저녁 시작 시간
             Rpad(sParam[11],  04, ' ') +    // 저녁 종료 시간
             Rpad(sParam[12],  01, ' ');     // 저녁 시간 사용 유무 ( N : 사용안함, Y : 사용 )

      iLen := Length(str);
      sSend := fSI_MakeHeader('6430', IntToStr(iLen)) + str;

      pSi415SendData(sSend);
    finally
      sParam.Free;
    end;
  except
  end;
end;

procedure pSI_6431_Recv( sRecv : Ansistring );
Var sData : Ansistring;
begin
  try
    if fSI_RecvParser( sRecv, sData ) then
    begin
			Frm_PBX.btnSearch_wk.Click;
    end;
  except
  end;
end;

procedure pSI_6510_Send( AStr : Ansistring );
Var str, sSend : Ansistring;
    iLen : Integer;
begin
  try
    str := '';
    iLen := Length(str);
    sSend := fSI_MakeHeader('6510', IntToStr(iLen)) + str;
    pSi415SendData(sSend);
  except
  end;
end;

procedure pSI_6511_Recv( sRecv : Ansistring; Var bNext : Boolean );
Var sData : Ansistring;
begin
  try
    if fSI_RecvParser( sRecv, sData ) then
    begin
      if Copy(sData, 6, 1) = 'E' then bNext := False else  // 100개 단위로 전송(N: 계속, E: 종료)
      if Copy(sData, 6, 1) = 'N' then bNext := True;

      sData := Copy(sData, 7, Length(sData) - 6);
      Frm_PBX.proc_recieve( sData, '6511', bNext);
    end;
  except
  end;
end;

procedure pSI_6520_Send( AParam : Ansistring );
Var str, sSend : Ansistring;
    iLen : Integer;
    sParam : TStringList;
begin
  try
    sParam := TStringList.Create;
    try
      GetTextSeperationEx2('│', AParam, sParam);

      str := Rpad(sParam[00],  10, ' ') +    // 휴일 (YYYY-MM-DD)
             Rpad(sParam[01],  01, ' ') +    // 요일( 1:일요일, 2:월요일, 3:화요일, 4:수요일, 5:목요일, 6:금요일, 7:토요일 )
             Rpad(sParam[02],  50, ' ');     // 설명

      iLen := Length(str);
      sSend := fSI_MakeHeader('6520', IntToStr(iLen)) + str;

      pSi415SendData(sSend);
    finally
      sParam.Free;
    end;
  except
  end;
end;

procedure pSI_6530_Send( AParam : Ansistring );
Var str, sSend : Ansistring;
    iLen : Integer;
    sParam : TStringList;
begin
  try
    sParam := TStringList.Create;
    try
      GetTextSeperationEx2('│', AParam, sParam);

      str := Rpad(sParam[00],  10, ' ') +    // 휴일 (YYYY-MM-DD) - OLD_Holiday
             Rpad(sParam[01],  10, ' ') +    // 휴일 (YYYY-MM-DD)
             Rpad(sParam[02],  01, ' ') +    // 요일( 1:일요일, 2:월요일, 3:화요일, 4:수요일, 5:목요일, 6:금요일, 7:토요일 )
             Rpad(sParam[03],  50, ' '); +    // 설명

      iLen := Length(str);
      sSend := fSI_MakeHeader('6530', IntToStr(iLen)) + str;

      pSi415SendData(sSend);
    finally
      sParam.Free;
    end;
  except
  end;
end;

procedure pSI_6540_Send( AHDay : Ansistring );
Var str, sSend : Ansistring;
    iLen : Integer;
begin
  try
    str := Rpad(AHDay , 10, ' ');    // 휴일 (YYYY-MM-DD)
    iLen := Length(str);
    sSend := fSI_MakeHeader('6540', IntToStr(iLen)) + str;
    pSi415SendData(sSend);
  except
  end;
end;

procedure pSI_6550_Send( AHDay : Ansistring );
Var str, sSend : Ansistring;
    iLen : Integer;
begin
  try
    str := AHDay;            // 삭제하려는 휴일(YYYY-MM-DD) 리스트(콤마 구분자)
    iLen := Length(str);
    sSend := fSI_MakeHeader('6550', IntToStr(iLen)) + str;
    pSi415SendData(sSend);
  except
  end;
end;

procedure pSI_6500_Recv( sRecv : Ansistring );
Var sData, sPid : Ansistring;
begin
  try
    sPid := Copy(sRecv, 1, 4);
    if fSI_RecvParser( sRecv, sData ) then
    begin
			Frm_PBX.btnSearch_hd.Click;
    end;
  except
  end;
end;

procedure pSI_6610_Send( AExten, ACId, ACNm : Ansistring );
Var str, sSend : Ansistring;
    iLen : Integer;
begin
  try
    str := Rpad(AExten, 04, ' ') +    // 호분배 그룹 ( 9000 ~ 9999 까지)
           Rpad(ACId  , 32, ' ') +    // 수신거부 전화 번호, 없으면 ‘스페이스’
           Rpad(ACNm  , 64, ' ');     // 수신거부 명, 없으면 ‘스페이스’

    iLen := Length(str);
    sSend := fSI_MakeHeader('6610', IntToStr(iLen)) + str;
    pSi415SendData(sSend);
  except
  end;
end;

procedure pSI_6611_Recv( sRecv : Ansistring; Var bNext : Boolean );
Var sData : Ansistring;
begin
  try
    if fSI_RecvParser( sRecv, sData ) then
    begin
      if Copy(sData, 106, 1) = 'E' then bNext := False else  // 100개 단위로 전송(N: 계속, E: 종료)
      if Copy(sData, 106, 1) = 'N' then bNext := True;

      sData := Copy(sData, 107, Length(sData) - 106);
      Frm_PBX.proc_recieve( sData, '6611', bNext);
    end;
  except
  end;
end;

procedure pSI_6620_Send( AParam : Ansistring );
Var str, sSend : Ansistring;
    iLen : Integer;
    sParam : TStringList;
begin
  try
    sParam := TStringList.Create;
    try
      GetTextSeperationEx2('│', AParam, sParam);

      str := Rpad(sParam[00],  04, ' ') +    // 호분배 그룹 ( 9000 ~ 9999 까지)
             Rpad(sParam[01],  32, ' ') +    // 수신거부 전화 번호
             Rpad(sParam[02],  64, ' ') +    // 수신거부 명
             Rpad(sParam[03], 128, ' ') +    // 수신거부 설명
						 Rpad(sParam[04],  01, ' ') ;    // 2: 호분배그룹만 거부, 5: 전체 거부

			iLen := Length(str);
			sSend := fSI_MakeHeader('6620', IntToStr(iLen)) + str;

      pSi415SendData(sSend);
    finally
      sParam.Free;
    end;
  except
  end;
end;

procedure pSI_6630_Send( AParam : Ansistring );
Var str, sSend : Ansistring;
    iLen : Integer;
    sParam : TStringList;
begin
  try
    sParam := TStringList.Create;
    try
      GetTextSeperationEx2('│', AParam, sParam);

      str := Rpad(sParam[00],  09, ' ') +    // 조회시 Index (Integer형)
             Rpad(sParam[01],  04, ' ') +    // 호분배 그룹 ( 9000 ~ 9999 까지)
             Rpad(sParam[02],  32, ' ') +    // 수신거부 전화 번호
             Rpad(sParam[03],  64, ' ') +    // 수신거부 명
             Rpad(sParam[04], 128, ' ') +    // 수신거부 설명
						 Rpad(sParam[05],  01, ' ') ;    // 2: 호분배그룹만 거부, 5: 전체 거부

      iLen := Length(str);
			sSend := fSI_MakeHeader('6630', IntToStr(iLen)) + str;

      pSi415SendData(sSend);
    finally
      sParam.Free;
    end;
  except
  end;
end;

procedure pSI_6640_Send( ADIdx : Ansistring );
Var str, sSend : Ansistring;
    iLen : Integer;
begin
  try
    str := Rpad(ADIdx , 09, ' ');    // 삭제시 Index, (Integer 형)

    iLen := Length(str);
    sSend := fSI_MakeHeader('6640', IntToStr(iLen)) + str;

    pSi415SendData(sSend);
  except
  end;
end;

procedure pSI_6650_Send( ADIdx : Ansistring );
Var str, sSend : Ansistring;
    iLen : Integer;
begin
  try
    str := ADIdx;    // 삭제하려는 Index, (Integer 형) 리스트(콤마 구분자)
    iLen := Length(str);
    sSend := fSI_MakeHeader('6650', IntToStr(iLen)) + str;
    pSi415SendData(sSend);
  except
  end;
end;

procedure pSI_6600_Recv( sRecv : Ansistring );
Var sData : Ansistring;
begin
	try
		if fSI_RecvParser( sRecv, sData ) then
		begin
			if gSiSchRevH.sPId = '6621' then
			begin
				if gJon03BlockIng then //접수현황에서 차단실행했을경우
				begin
					if gSiSchRevH.sResult = '00' then
						GMessagebox('고객전화차단 완료', CDMSI)
					else
						GMessagebox('고객전화차단 실패', CDMSE);
					gJon03BlockIng := False;
				end else Frm_PBX.btnSearch_bl.Click;
			end else Frm_PBX.btnSearch_bl.Click;
		end;
	except
	end;
end;

procedure pSI_7110_Send( AFileDir : Ansistring );
Var str, sSend : Ansistring;
    iLen : Integer;
begin
  try
		str := Rpad(AFileDir , 256, ' ');    // 저장 파일 Dir
    iLen := Length(str);
		sSend := fSI_MakeHeader('7110', IntToStr(iLen)) + str;
    pSi415SendData(sSend);
  except
  end;
end;

procedure pSI_6710_Send( AExten, ACId, ACNm : Ansistring );
Var str, sSend : Ansistring;
    iLen : Integer;
begin
  try
    str := Rpad(AExten, 04, ' ') +    // 호분배 그룹 ( 9000 ~ 9999 까지)
           Rpad(ACId  , 32, ' ') +    // VIP 전화 번호
           Rpad(ACNm  , 64, ' ');     // VIP 명
    iLen := Length(str);
    sSend := fSI_MakeHeader('6710', IntToStr(iLen)) + str;
    pSi415SendData(sSend);
  except
  end;
end;

procedure pSI_6711_Recv( sRecv : Ansistring; Var bNext : Boolean );
Var sData : Ansistring;
begin
  try
    if fSI_RecvParser( sRecv, sData ) then
    begin
      if Copy(sData, 106, 1) = 'E' then bNext := False else  // 100개 단위로 전송(N: 계속, E: 종료)
      if Copy(sData, 106, 1) = 'N' then bNext := True;

      sData := Copy(sData, 107, Length(sData) - 106);
      Frm_PBX.proc_recieve( sData, '6711', bNext);
    end;
  except
  end;
end;

procedure pSI_6720_Send( AParam : Ansistring );
Var str, sSend : Ansistring;
    iLen : Integer;
    sParam : TStringList;
begin
  try
    sParam := TStringList.Create;
    try
      GetTextSeperationEx2('│', AParam, sParam);

      str := Rpad(sParam[00],  04, ' ') +    // 호분배 그룹 ( 9000 ~ 9999 까지)
             Rpad(sParam[01],  32, ' ') +    // VIP 전화 번호
             Rpad(sParam[02],  64, ' ') +    // VIP 명
             Rpad(sParam[03], 128, ' ') +    // VIP 설명
						 Rpad(sParam[04],  01, ' ') ;    // 1:VIP고객

      iLen := Length(str);
      sSend := fSI_MakeHeader('6720', IntToStr(iLen)) + str;
      pSi415SendData(sSend);
    finally
      sParam.Free;
    end;
  except
  end;
end;

procedure pSI_6730_Send( AParam : Ansistring );
Var str, sSend : Ansistring;
    iLen : Integer;
    sParam : TStringList;
begin
  try
    sParam := TStringList.Create;
    try
      GetTextSeperationEx2('│', AParam, sParam);

      str := Rpad(sParam[00],  09, ' ') +    // 조회시 Index  (Integer 형)
             Rpad(sParam[01],  04, ' ') +    // 호분배 그룹 ( 9000 ~ 9999 까지)
             Rpad(sParam[02],  32, ' ') +    // VIP 전화 번호
             Rpad(sParam[03],  64, ' ') +    // VIP 명
             Rpad(sParam[04], 128, ' ') +    // VIP 설명
						 Rpad(sParam[05],  01, ' ') ;    // 1:VIP고객

      iLen := Length(str);
      sSend := fSI_MakeHeader('6730', IntToStr(iLen)) + str;
      pSi415SendData(sSend);
    finally
      sParam.Free;
    end;
  except
  end;
end;

procedure pSI_6740_Send( ADIdx : Ansistring );
Var str, sSend : Ansistring;
    iLen : Integer;
begin
  try
    str := Rpad(ADIdx , 09, ' ');    // 삭제시 Index, (Integer 형)
    iLen := Length(str);
    sSend := fSI_MakeHeader('6740', IntToStr(iLen)) + str;
    pSi415SendData(sSend);
  except
  end;
end;

procedure pSI_6750_Send( ADIdx : Ansistring );
Var str, sSend : Ansistring;
    iLen : Integer;
begin
  try
    str := ADIdx;    // 삭제하려는 Index, (Integer 형) 리스트(콤마 구분자)
    iLen := Length(str);
    sSend := fSI_MakeHeader('6750', IntToStr(iLen)) + str;
    pSi415SendData(sSend);
  except
  end;
end;

procedure pSI_6700_Recv( sRecv : Ansistring );
Var sData : Ansistring;
begin
	try
		if fSI_RecvParser( sRecv, sData ) then
		begin
			Frm_PBX.btnSearch_vi.Click;
		end;
	except
	end;
end;

function fSI_6811_Recv( sRecv : Ansistring; var bNext : Boolean ) : Ansistring;
Var sData : Ansistring;
begin
	Result := '';
	try
		if fSI_RecvParser( sRecv, sData ) then
		begin
			if Copy(sData, 6, 1) = 'E' then bNext := False else  // 100개 단위로 전송(N: 계속, E: 종료)
			if Copy(sData, 6, 1) = 'N' then bNext := True;

			Result := Copy(sData, 7, Length(sData) - 6);
		end;
	except
		Result := '';
	end;
end;


function fSI_6860_Send( APId, ACodeID, AMentID: Ansistring ) : Ansistring;
Var str : Ansistring;
		iLen : Integer;
begin
	Result := '';
	try
		str := Rpad(ACodeID  , 16, ' ') +      // 멘트 구분
					 AMentID;                        // 멘트 파일 명
		iLen := Length(str);
		Result := fSI_MakeHeader(APid, IntToStr(iLen)) + str;
		pSi415SendData(Result);
	except
		Result := '';
	end;
end;

function fSI_6850_Send( APId, ACodeID, AMentID: Ansistring ) : Ansistring;
Var str : Ansistring;
		iLen : Integer;
begin
	Result := '';
	try
		str := Rpad(ACodeID  , 16, ' ') +      // 멘트 구분
					 AMentID;                        // 멘트 파일 명
		iLen := Length(str);
		Result := fSI_MakeHeader(APid, IntToStr(iLen)) + str;
		pSi415SendData(Result);
	except
		Result := '';
	end;
end;

function fSI_6831_Recv( sRecv : Ansistring; var bNext : Boolean ) : Ansistring;
Var sData : Ansistring;
begin
	Result := '';
	try
		if fSI_RecvParser( sRecv, sData ) then
		begin
			if Copy(sData, 22, 1) = 'E' then bNext := False else  // 100개 단위로 전송(N: 계속, E: 종료)
			if Copy(sData, 22, 1) = 'N' then bNext := True;

			Result := Copy(sData, 23, Length(sData) - 22);
		end;
	except
		Result := '';
	end;
end;

procedure pSI_6910_Send( APId, AGrpId, AAgtId : Ansistring );
Var str, sSend : Ansistring;
		iLen : Integer;
begin
	try
		str := Rpad(AGrpId , 32, ' ') +     // 그룹 ID ( 그룹 ID 없으면 전체 조회 )
					 Rpad(AAgtId , 32, ' ');      // 상담원 ID ( 상담원 ID 없으면 전체 조회 )
		iLen := Length(str);
		sSend := fSI_MakeHeader(APid, IntToStr(iLen)) + str;
		pSi415SendData(sSend);
	except
	end;
end;

function fSI_6911_Recv( sRecv : Ansistring; var bNext : Boolean ) : Ansistring;
Var sData : Ansistring;
begin
	Result := '';
	try
		if fSI_RecvParser( sRecv, sData ) then
		begin
			if Copy(sData, 70, 1) = 'E' then bNext := False else  // 100개 단위로 전송(N: 계속, E: 종료)
			if Copy(sData, 70, 1) = 'N' then bNext := True;

			Result := Copy(sData, 71, Length(sData) - 70);
		end;
	except
		Result := '';
	end;
end;

procedure pSI_6920_Send( APId, AParam : String);
Var str, sSend : Ansistring;
		iLen : Integer;
		sParam : TStringList;
begin
	try
		sParam := TStringList.Create;
		try
			GetTextSeperationEx2('│', AParam, sParam);

			str := Rpad(sParam[00],  32, ' ') +  // 그룹 ID ( 그룹 ID 없으면 전체 조회 )
						 Rpad(sParam[01],  32, ' ') +  // 상담원 ID ( 상담원 ID 없으면 전체 조회 )
									sParam[02]           ;   //호분배번호 리스트( 콤마 구분자)

			iLen := Length(str);
			sSend := fSI_MakeHeader(APid, IntToStr(iLen)) + str;
			pSi415SendData(sSend);
		finally
			sParam.Free;
		end;
	except
	end;
end;

procedure pSI_7010_Send( APId, ACallDist, AAgtId : Ansistring );
Var str, sSend : Ansistring;
		iLen : Integer;
begin
	try
		str := Rpad(ACallDist , 04, ' ') +     // 호분배 그룹
					 Rpad(AAgtId    , 32, ' ');      // 상담원 ID ( 상담원 ID 없으면 전체 조회 )
		iLen := Length(str);
		sSend := fSI_MakeHeader(APid, IntToStr(iLen)) + str;

		pSi415SendData(sSend);
	except
	end;
end;

function fSI_7011_Recv( sRecv : Ansistring; var bNext : Boolean ) : Ansistring;
Var sData : Ansistring;
begin
	Result := '';
	try
		if fSI_RecvParser( sRecv, sData ) then
		begin
			if Copy(sData, 42, 1) = 'E' then bNext := False else  // 100개 단위로 전송(N: 계속, E: 종료)
			if Copy(sData, 42, 1) = 'N' then bNext := True;

			Result := Copy(sData, 43, Length(sData) - 42);
		end;
	except
		Result := '';
	end;
end;

function fSI_7020_30_Send( APId, AParam : Ansistring ) : Ansistring;
Var str : Ansistring;
		iLen : Integer;
		sParam : TStringList;
begin
	Result := '';
	try
		sParam := TStringList.Create;
		try
			GetTextSeperationEx2('│', AParam, sParam);

			str := Rpad(sParam[00],  04, ' ') +    // 호분배 그룹
						 Rpad(sParam[01],  32, ' ') +    // 상담원 ID
						 Rpad(sParam[02],  01, ' ');     // 우선순위

			iLen := Length(str);
			Result := fSI_MakeHeader(APid, IntToStr(iLen)) + str;
			pSi415SendData(Result);
		finally
			sParam.Free;
		end;
	except
		Result := '';
	end;
end;

procedure pSI_7042_Send( AExten, AAgentID : Ansistring );
Var str, sSend : Ansistring;
		iLen : Integer;
begin
	try
		str := Rpad(AExten  , 04, ' ') +    // 호분배 그룹
         	 AAgentID;                    // 상담원 ID
		iLen := Length(str);
		sSend := fSI_MakeHeader('7042', IntToStr(iLen)) + str;
		pSi415SendData(sSend);
	except
	end;
end;

procedure pSI_7050_Send;
Var str, sSend : Ansistring;
    iLen : Integer;
begin
  try
    str := '';
    iLen := Length(str);
    sSend := fSI_MakeHeader('7050', IntToStr(iLen)) + str;
    pSi415SendData(sSend);
  except
  end;
end;

procedure pSI_7051_Recv( sRecv : Ansistring; Var bNext : Boolean );
Var sData : Ansistring;
begin
  try
    if fSI_RecvParser( sRecv, sData ) then
    begin
      if Copy(sData, 6, 1) = 'E' then bNext := False else  // 100개 단위로 전송(N: 계속, E: 종료)
      if Copy(sData, 6, 1) = 'N' then bNext := True;

      sData := Copy(sData, 7, Length(sData) - 6);
      Frm_PBX.proc_recieve( sData, '7051', bNext);
    end;
  except
  end;
end;

procedure pSI_7060_Send( AParam : Ansistring );
Var str, sSend : Ansistring;
		iLen : Integer;
		sParam : TStringList;
begin
	try
		sParam := TStringList.Create;
		try
			GetTextSeperationEx2('│', AParam, sParam);

			str := Rpad(sParam[00],  04, ' ') +    // Item_Code
						 Rpad(sParam[01],  01, ' ') +    // 사용 유무(N: 사용안함, Y: 사용함)
						 Rpad(sParam[02],  04, ' ') +    // 전체착신, 전체 필터링 일 경우 : 시작 시간 데이터베이스보안 일 경우 : 날짜(일) 지능형 착신 일 경우 : 사람수(명수)
						 Rpad(sParam[03],  04, ' ') +    // 전체착신, 전체 필터링 일 경우 : 종료 시간
						 Rpad(sParam[04],  16, ' ') +    // 전체착신 일 경우 : 착신 전화번호
						 Rpad(sParam[05],  16, ' ');     // 예비

			iLen := Length(str);
			sSend := fSI_MakeHeader('7060', IntToStr(iLen)) + str;
			pSi415SendData(sSend);
		finally
			sParam.Free;
		end;
	except
	end;
end;

function fSI_6820_Send( APId, AParam : Ansistring ) : Ansistring;
Var str : Ansistring;
		iLen : Integer;
		sParam : TStringList;
begin
	Result := '';
	try
		sParam := TStringList.Create;
		try
			GetTextSeperationEx2('│', AParam, sParam);

			str := Rpad(sParam[00],  32, ' ') +    // IVR_SYS_MENT_TYPE’ : 시스템 멘트
						 Rpad(sParam[01],  16, ' ') +    // 구분
						 Rpad(sParam[02], 128, ' ') +    // 멘트 파일 명
						 Rpad(sParam[03],  01, ' ');     // 사용유무

			iLen := Length(str);
			Result := fSI_MakeHeader(APid, IntToStr(iLen)) + str;
			pSi415SendData(Result);
		finally
			sParam.Free;
		end;
	except
		Result := '';
	end;
end;

procedure pSI_6830_Send(APid, AMenteId : Ansistring );
Var str, sSend : Ansistring;
		iLen : Integer;
begin
	try
		str := Rpad(AMenteId , 16, ' ');      // 멘트 구분
		iLen := Length(str);
		sSend := fSI_MakeHeader(APid, IntToStr(iLen)) + str;
		pSi415SendData(sSend);
	except
	end;
end;

function fSI_6840_Send( APId, AParam : Ansistring ) : Ansistring;
Var str : Ansistring;
		iLen : Integer;
		sParam : TStringList;
begin
	Result := '';
	try
		sParam := TStringList.Create;
		try
			GetTextSeperationEx2('│', AParam, sParam);

			str := Rpad(sParam[00],  32, ' ') +    // 멘트 타입
						 Rpad(sParam[01],  16, ' ') +    // 구분
						 Rpad(sParam[02], 128, ' ');     // 사용유무

			iLen := Length(str);
			Result := fSI_MakeHeader(APid, IntToStr(iLen)) + str;
			pSi415SendData(Result);
		finally
			sParam.Free;
		end;
	except
		Result := '';
	end;
end;

procedure pSI_8010_Send( APId, AAdminId : Ansistring );
Var str, sSend : Ansistring;
		iLen : Integer;
begin
	try
		str := Rpad(AAdminId,  32, ' ') ;     // 관리자 ID
		iLen := Length(str);
		sSend := fSI_MakeHeader('8010', IntToStr(iLen)) + str;
		pSi415SendData(sSend);
	except
	end;
end;

procedure pSi415SendData( sData : Ansistring );
var sTmp : string;
begin
	SetDebugeWrite('pSi415SendData : ' + sData);
	try
		if (Not Frm_Main.bSI415_A.Socket.Connected) and (Not gSI415_A_Close) then
		begin
			Frm_Main.bSI415_A.Active := True;
		end;

		if (Frm_Main.bSI415_A.Socket.Connected)  then
		begin
			Log('bSI415_A SendText :' + sData, LOGIPCCSDATAPATHFILE);  //IPCC서버 전송
			Frm_Main.bSI415_A.Socket.SendText(sData);
		end else
		begin
			if (Not gSI415_A_Close) then
			begin
				sTmp := '콜마너IPCC-관리자와 연결이 끊어졌습니다.' +#13#10 + '다시 연결하시겠습니까?'+#13#10+#13#10
							+ '연결시 로그인을 다시 하셔야 합니다';

				if not Frm_Main.grpSetPBXLogin.Visible then
				begin
					if Application.MessageBox(PChar(sTmp), CDMSI,
								MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
					begin
		//					Frm_Main.procExecPBX(True,'dCTI_Agent_OEM') ;
						Frm_Main.grpSetPBXLogin.Left := (Frm_Main.Width  - Frm_Main.grpSetPBXLogin.Width) div 2;
						Frm_Main.grpSetPBXLogin.Top  := (Frm_Main.Height - Frm_Main.grpSetPBXLogin.Height) div 2;
						Frm_Main.grpSetPBXLogin.Visible := True;

						Frm_Main.edtPBXId.Clear;
						Frm_Main.edtPBXPw.Clear;
						Frm_Main.edtPBXId.Text := GS_EnvFile.ReadString('CID_COMM', 'Admin_ID',  '');
						Frm_Main.edtPBXPW.Text := GS_EnvFile.ReadString('CID_COMM', 'Admin_PW',  '');

						Frm_Main.edtPBXId.SetFocus;

					end;
				end;
			end;
//			GMessagebox('시사일오와 연결이 되지 않아서 작업을 처리할수 없습니다.', CDMSE);
		end;
	except
		begin
			GMessagebox('콜마너IPCC 자료 전송 중 오류 발생.', CDMSE);
		end;
	end;
end;

procedure pSi415IPCCSendData( sData : Ansistring );
begin
	SetDebugeWrite('pSi415IPCCSendData : ' + sData);
	try
		if Not Frm_Main.bSI415.Socket.Connected then Frm_Main.bSI415.Active := True;

		if Frm_Main.bSI415.Socket.Connected then
		begin
			Frm_Main.bSI415.Socket.SendText(sData);
		end else
		begin
			if copy(sData, 1,4) <> '1020' then
				GMessagebox('콜마너IPCC와 연결이 되지 않아서 작업을 처리할수 없습니다.', CDMSE);
		end;
	except
		begin
			GMessagebox('콜마너IPCC 자료 전송 중 오류 발생.', CDMSE);
		end;
	end;
end;

function fSi415IPCCSendData( sData : Ansistring ):Boolean;
var sTmp : string;
begin
	SetDebugeWrite('fSi415IPCCSendData : ' + sData);
	try
		result := False;
		if Not Frm_Main.bSI415.Socket.Connected then Frm_Main.bSI415.Active := True;

		if Frm_Main.bSI415.Socket.Connected then
		begin
			Frm_Main.bSI415.Socket.SendText(sData);
			result := True;
		end else
		begin
			sTmp := '콜마너IPCC와 연결이 되지 않아서 작업을 처리할수 없습니다.' +#13#10 +#13#10
						+ '콜마너 소프트폰이 정상 작동하는지 확인하여 주십시오.';
			GMessagebox(sTmp, CDMSE);
		end;
	except
		begin
			GMessagebox('콜마너IPCC 자료 전송 중 오류 발생.', CDMSE);
		end;
	end;
end;

function pSecondToTime(const Seconds: Cardinal): Double;
const
  SecPerDay = 86400;
  SecPerHour = 3600;
  SecPerMinute = 60;
var
  ms, ss, mm, hh, dd: Cardinal;
begin
  dd := Seconds div SecPerDay;
  hh := (Seconds mod SecPerDay) div SecPerHour;
  mm := ((Seconds mod SecPerDay) mod SecPerHour) div SecPerMinute;
  ss := ((Seconds mod SecPerDay) mod SecPerHour) mod SecPerMinute;
  ms := 0;
  Result := dd + EncodeTime(hh, mm, ss, ms);
end;

end.

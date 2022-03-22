unit xe_Func;

interface

uses
  Windows, Vcl.Dialogs, Vcl.Forms, System.SysUtils, IniFiles, System.Classes,
  Vcl.StdCtrls, System.AnsiStrings, IdFTP, iphlpapi, IpTypes, cxTextEdit, AdvGrid,
  cxEdit, System.StrUtils, Vcl.Graphics, cxRichEdit, Vcl.ComCtrls, IdTCPClient,
	cxGridTableView, ShellAPI, cxGrid, cxGridExportLink, cxMemo, IdGlobal, cxTL, System.TimeSpan,
	TLHelp32, cxGridDBTableView, ComObj, Controls, Variants, System.JSON, cxButtons,
	cxGridBandedTableView, cxDropDownEdit, SHDocVw, MSHTML, Math, Imm, TalMapXLib_TLB, cxLookAndFeels,
  Gauges, TaskDialog, IdCoderMIME, AdvGlowButton, WinSvc, Registry,  cxCheckBox, cxProgressBar,
  cxCalendar, cxLabel, Vcl.ExtCtrls, cxGroupBox, cxPC, cxRadioGroup, cxTreeView, dxTileControl, DateUtils,
  cxListBox, cxCurrencyEdit, cxSpinEdit, cxTimeEdit, dxStatusBar, ToolPanels, Vcl.Menus;

const
	SOH = Chr($1);
	STX = Chr($2);
	ETX = Chr($3);
	EOT = Chr($4);
	ENQ = Chr($5);
	ACK = Chr($6);
	BEL = Chr($7);
	BS  = Chr($8);
//	HT  = Chr($9);
//	LF  = Chr($10);
	VT  = Chr($11);
	FF  = Chr($12);
//	CR  = Chr($13);
	SO  = Chr($14);
	SI  = Chr($15);
	DLE = Chr($16);
	DC1 = Chr($17);
	DC2 = Chr($18);
	DC3 = Chr($19);
	DC4 = Chr($20);
	NAK = Chr($21);
	SYN = Chr($22);
	ETB = Chr($23);
	CAN = Chr($24);
	EM  = Chr($25);
	SUB = Chr($26);
	ESC = Chr($27);
	FS  = Chr($28);
	GS  = Chr($29);
	RS  = Chr($30);
	US  = Chr($31);
	SP  = Chr($32);
	
	DLL_BLOWFISH = 'cr.dll';

  MAX_ADAPTER_DESCRIPTION_LENGTH = 128; // arb.
{$EXTERNALSYM MAX_ADAPTER_DESCRIPTION_LENGTH}
  MAX_ADAPTER_NAME_LENGTH = 256; // arb.
{$EXTERNALSYM MAX_ADAPTER_NAME_LENGTH}
  MAX_ADAPTER_ADDRESS_LENGTH = 8; // arb.

	// Service Types
	//
	SERVICE_KERNEL_DRIVER       = $00000001;
	SERVICE_FILE_SYSTEM_DRIVER  = $00000002;
	SERVICE_ADAPTER             = $00000004;
	SERVICE_RECOGNIZER_DRIVER   = $00000008;

	SERVICE_DRIVER              =
		(SERVICE_KERNEL_DRIVER or
		 SERVICE_FILE_SYSTEM_DRIVER or
		 SERVICE_RECOGNIZER_DRIVER);

	SERVICE_WIN32_OWN_PROCESS   = $00000010;
  SERVICE_WIN32_SHARE_PROCESS = $00000020;
	SERVICE_WIN32               =
		(SERVICE_WIN32_OWN_PROCESS or
		 SERVICE_WIN32_SHARE_PROCESS);

	SERVICE_INTERACTIVE_PROCESS = $00000100;

	SERVICE_TYPE_ALL            =
		(SERVICE_WIN32 or
		 SERVICE_ADAPTER or
		 SERVICE_DRIVER  or
		 SERVICE_INTERACTIVE_PROCESS);

var
  NETWORK_WIBRO_KEYWORDS: array [0 .. 1] of string = (
    'USB Modem',
    'USB Connection'
	);
  NETWORK_WITHOUT_KEYWORDS: array [0 .. 0] of string = (
    'Wireless'
  );

Type
	byDynamicArr = array of byte;

type
  TWinCurrentRec = record
    BuildLab: string;
    BuildLabEx: string;
    CSDBuildNumber: string;
    CSDVersion: string; // Service Pack
    CurrentBuildNumber: string;
    CurrentVersion: string;
    EditionId: string; // e.g. Professional
    ProductName: string;
    ReleaseId: string; // Windows 10 version
    UBR: Integer;
  end;

type
  TGetLocalIP = function(ss_Local: AnsiString): PAnsiChar; stdcall;
	TNumericCheck = function(ss_Msg, ss_str: AnsiString): PAnsiChar; stdcall;
  TGetRoadLength = function(ss_x1, ss_y1, ss_x2, ss_y2: AnsiString)
    : PAnsiChar; stdcall;

  TXE_USER_PERMISSION = record
    COM_ExcelNoSMS: WideChar; // 공통권한 : 엑셀다운시 SMS인증생략
    COM_MSNTotal: WideChar; // 공통권한 : 메신져 허용범위 콜마너 전체
    COM_MSNLocal: WideChar; // 공통권한 : {메신져 허용범위 같은지역} -> (SMS전송기능) 으로 변경
    COM_MSNHead: WideChar; // 공통권한 : 메신져 허용범위 본사
    COM_MSNBlock: WideChar; // 공통권한 : 상담원간메신저제한
    COM_WkCharge: WideChar; // 공통권한 : 기사 충전
    COM_WkCashView: WideChar; // 공통권한 : 기사 캐쉬보기
    COM_WkDayCashSet: WideChar; // 공통권한 : 기사일비차감설정
    COM_WkStautsChange: WideChar; // 공통권한 : 기사상태변경
    COM_CustModify: WideChar; // 공통권한 : 고객수정
    COM_CustExcelDown: WideChar; // 공통권한 : 고객 엑셀다운
    COM_CustMlgCharge: WideChar; // 공통권한 : 고객마일리지충전
    // COM_UserAuthMgr: WideChar;    // 공통권한 : 인증관리
    LFT_BrList: WideChar; // 좌측메뉴 : 지사현황(이관콜센터)
    LFT_WkConnect: WideChar; // 좌측메뉴 : 접속기사
		LFT_BrCall: WideChar; // 좌측메뉴 : 지사별콜현황
    LFT_ShareCall: WideChar; // 좌측메뉴 : 공유콜
    LFT_Group: WideChar; // 좌측메뉴 : 연합사
    LFT_WKAttend: WideChar; // 좌측메뉴 : 기사출근현황
    JON_Order: WideChar; // 접수 : 접수하기
    JON_CustTelOpen: WideChar; // 접수 : 고객번호 오픈
    JON_CustTelDayOpen: WideChar; // 접수 : 고객번호 당일만 오픈
    JON_ExcelDown: WideChar; // 접수 : 엑셀다운 가능
    JON_OrderCnt: WideChar; // 접수 : 콜카운트 보기
		JON_MousePopup: WideChar; // 접수 : 마우스 오른쪽 팝업메뉴(오더상태변경..)
    JON_SMSPopup: WideChar; // 접수 : SMS(팝업)전송
    JON_BrchCashView: WideChar; // 접수 : 지사캐쉬보기
    JON_BrchSendWk: WideChar; // 접수 : 기사에송금
    JON_CustDel: WideChar; // 접수 : 접수창 고객삭제
    JON_CIDView: WideChar; // 접수 : CID 내역보기
    JON_MainView: WideChar; // 접수 : 메인화면 보기(여러가지 공지)
    JON_OrderSMSView: WideChar; // 접수 : 콜발송 SMS보기
    JON_CustMaking2: WideChar; // 접수 : 고객번호마지막2자리 마킹
    JON_Cust2Modify: WideChar; // 접수 : 고객번호마지막2자리 마킹(익일오더수정창전체번호오픈)
    JON_CustM2Modify: WideChar; // 접수 : 고객번호중간2자리 마킹(익일오더수정창전체번호오픈)
    JON_Recon: WideChar; // 접수 : 강제배차
    JON_SMSRecon: WideChar; // 접수 : 문자배차
    JON_ChargeSave: WideChar; // 접수 : 요금저장
    JON_SrcLmt: WideChar; // 접수 : 조회건수제한(2010.11.22)
    JON_LocalMap: WideChar; // 접수 : 사용자위치지정 (2012.09.04 KHS)
    JON_CustLevel: WideChar; // 접수 : 접수창 고객등급 변경 권한
    JON_CustTelReceiveBlock: WideChar; // 접수 : 접수현황 고객전화수신거부등록 권한
    JON_BETWEENDATESEARCH: WideChar;     // 접수 : 접수현황 기간검색 기간 사용불가 체크:불가, 미체크:가능 2014.02.18 KHS
		JON_CUSTPLUS : WideChar;  // 접수 : 고객합치기 권한
    JON_CUSTMEMO2 : WideChar;  // 접수창 고객 심플메모 수정
    JON_BUBININFO : WideChar; // 접수창 법인정보 변경 권한 (2015.11.23 LYB )
		JON_AIBONOWRUN : WideChar; // 접수창 리콜(배차지연콜)즉시실행 2019.08.09 KHS

    WOR_StatView: WideChar; // 기사 : 기사현황
    WOR_Manage: WideChar; // 기사 : 기사관리 조회
    WOR_MngModify: WideChar; // 기사 : 기사관리 기사수정
    WOR_Stats: WideChar; // 기사 : 현황 하단 합계 보여짐 여부.
    WOR_CashMng: WideChar; // 기사 : 기사캐쉬관리
    WOR_Insurance: WideChar; // 기사 : 보험관리
    WOR_Reserve: WideChar; // 기사 : 일괄차감 조회
    WOR_RsvModify: WideChar; // 기사 : 일괄차감 설정
    WOR_WkCashBatch: WideChar; // 기사 : 일괄차감 설정
    WOR_Attend: WideChar; // 기사 : 출근표
    WOR_Baecha: WideChar; // 기사 : 배차표
    WOR_ShareBaecha: WideChar; // 기사 : 공유콜배차제한 조회
    WOR_ShareBaechaSet: WideChar; // 기사 : 공유콜배차제한 설정
    WOR_Pickup: WideChar; // 기사 : 기사픽업현황
    WOR_Blacklist: WideChar; // 기사 : 블랙리스트
    WOR_PeekTimeBlock: WideChar; // 기사 : 피크타임 배차제한현황
    WOR_ExcelDown: WideChar; // 기사 : 엑셀다운 가능
    WOR_Gongji: WideChar; // 기사 : 공지사용권한      2014.01.03 KHS
    WOR_513TimeCard: WideChar; // 기사 : 기사출근표
    WOR_WkSearchOpt: WideChar;    // 기사 : 기사조회옵션권한  2014.05.07 KHS
		WOR_Jumin6NoHide: WideChar;    // 기사 : 기사주민등록번호열람허용  2017.01.04 KHS
		WOR_AboveOrder: WideChar;    // 기사 : 우선배차현황  2018.04.19 KHS 미적용
		WOR_NoWorker: WideChar;    // 기사 : 미출근현황  2018.04.19 KHS 미적용
		WOR_MCash: WideChar;    // 기사 : M-캐시관리  2019.08.28 KHS

    CUR_Manager: WideChar; // 고객 : 고객관리
    CUR_General: WideChar; // 고객 : 일반검색
    CUR_High: WideChar; // 고객 : 고급검색
    CUR_Detail: WideChar; // 고객 : 상세검색
    CUR_Virture: WideChar; // 고객 : 안심번호
    CUR_Dormancy: WideChar; // 고객 : 휴면고객
    CUR_Mileage: WideChar; // 고객 : 마일리지 설정
    CUR_MileageStat: WideChar; // 고객 : 마일리지 현황
    CUR_MileageDetail: WideChar; // 고객 : 마일리지 상세
    CUR_OKCashBack: WideChar; // 고객 : OK 캐쉬백 현황
    CUR_CustLevel: WideChar; // 고객 : 고객등급관리
    CUR_BubinMng: WideChar; // 고객 : 법인 관리
    CUR_BubinMngModify: WideChar; // 고객 : 법인 관리 수정
    CUR_BubinHis: WideChar; // 고객 : 법인이용내역
    CUR_BubinAcc: WideChar; // 고객 : 법인일일정산
    CUR_BubinAuth: WideChar; // 고객 : 법인인증
    CUR_BubinDayClose: WideChar; // 고객 : 법인 일마감-엑셀출력
		CUR_WithHolding: WideChar; // 고객 : 기사원천징수
		CUR_CallBell: WideChar; // 고객 : 콜벨/업소관리
    ACC_BrchCash: WideChar; // 정산 : 지사캐쉬내역
    ACC_BrchGainCash: WideChar; // 정산 : 수익금 내역
    ACC_BankBook: WideChar; // 정산 : 통장식로그
    ACC_Order: WideChar; // 정산 : 오더정산
    ACC_BrchCharge: WideChar; // 정산 : 지사캐쉬 충전내역
    ACC_WkCharge: WideChar; // 정산 : 기사캐쉬 충전내역
    ACC_WKSolution: WideChar; // 정산 : 기사 프로그램사용료
    ACC_WKInsurance: WideChar; // 정산 : 기사보험료차감내역
    ACC_CASH_MOVIE: WideChar; // 정산 : 캐쉬충전 및 이동
    ACC_SMS_CASH: WideChar; // 정산 : SMS캐쉬 충전
    ACC_SMS_CASH_PCK: WideChar; // 정산 : SMS캐쉬 일괄충전
		ACC_Gain_List: WideChar; // 정산 : 수익금리스트

    ACC_Gain_12: WideChar; // 정산 : 수익금계산
    ACC_Gain_13: WideChar; // 정산 : 콜운행정산
    ACC_Gain_14: WideChar; // 정산 : 기사수수료현황
    ACC_Gain_15: WideChar; // 정산 : 콜대행수수료

    ACC_CASH_OUT: WideChar; // 정산 : 출금정산            // 20121101  LYB  출금정산권한
    ACC_COUPON_APP: WideChar; // 정산 : 쿠폰승인            // 20130711  LYB
    ACC_COUPON_USE: WideChar; // 정산 : 쿠폰사용            // 20130711  LYB
    ACC_BRCOUPON_USE: WideChar; // 정산 : 자체쿠폰현황            // 20200325 KHS
    ACC_CARD_PAY: WideChar; // 정산 : 카드승인현황        // 20130806 KHS
    ACC_ExcelDown: WideChar; // 정산 : 엑셀다운 가능
    SMS_Send: WideChar; // SMS : SMS(팝업) 발송
    SMS_Advertisement: WideChar; // SMS : 광고 SMS발송
    SMS_Result: WideChar; // SMS : 결과조회
    SMS_Detail_Result: WideChar; // SMS 결과 상세내역
    SMS_NoSms: WideChar; // SMS : 수신거부관리
    SMS_ExcelDown: WideChar; // SMS : 엑셀다운 가능
    USR_Manage: WideChar; // 사용자 : 사용자 관리
    USR_MngModify: WideChar; // 사용자 : 사용자 수정
    USR_Permission: WideChar; // 사용자 : 권한 조회
    USR_PerModify: WideChar; // 사용자 : 권한 수정
    USR_AuthStat: WideChar; // 사용자 : 인증현황
    USR_ExcelDownList: WideChar; // 사용자 : 엑셀다운 현황
    USR_UserCall: WideChar; // 사용자 : 사용자별 콜통계
		USR_UserCall_N_ADMIN: WideChar; // 사용자 : 사용자별 콜통계(관리자제외)
    USR_HourCall: WideChar; // 사용자 : 사용자별 시간별 통계
		USR_HourCall_N_ADMIN: WideChar;       // 사용자 : 사용자별 시간별 통계(관리자제외)
    USR_UserAuthSel: WideChar; // 사용자 : 사용자 권한 조회
    USR_UserAuthMgr: WideChar; // 사용자 : 사용자 권한 수정
    USR_PCAuthSel: WideChar; // 사용자 : PC 권한 조회
    USR_PCAuthMgr: WideChar; // 사용자 : PC 권한 수정
    USR_LoginCheck: WideChar; // 사용자 : 사용자 근태 현황
		USR_LoginCheck_N_ADMIN: WideChar;     // 사용자 : 사용자 근태 현황(관리자제외)
    USR_ExcelDown: WideChar; // 사용자 : 엑셀다운 가능
    CMP_Head: WideChar; // 회사 : 본사수정
    CMP_Branch: WideChar; // 회사 : 지사관리
    CMP_BrchModify: WideChar; // 회사 : 지사 수정
    CMP_BrchKeyNum: WideChar; // 회사 : 대표번호관리
    CMP_BrchWkCom: WideChar; // 회사 : 기사 수익금관리
    CMP_BrchWkPayment: WideChar; // 회사 : 기사 입금표관리
		CMP_BrchACCNumber: WideChar; // 회사 : 정산계좌보기       20200525 KHS
		CMP_BrchCachView: WideChar;  // 회사 : 지사캐시보기       20200525 KHS
    CMP_BrchKeyNumMng : WideChar; // 회사 : 대표번호 증명원 관리
    CMP_CashManager: WideChar; // 회사 : 지사캐쉬 관리
		CMP_SMSSet: WideChar; // 회사 : SMS설정
		CMP_FreeSet: WideChar; // 회사 : 자율수수료설정
		CMP_ExcelDown: WideChar; // 회사 : 엑셀다운 가능
		AIC_ScenarioSet: WideChar;// 회사 : AI-OB 배차지연콜 설정
		AIC_DetailList: WideChar; // 회사 : AI-OB 배차지연콜 상세내역
		AIC_DayTOT: WideChar;     // 회사 : AI-OB 배차지연콜 일별현황
		AIC_HappyCallSet: WideChar;// 회사 : AI-OB 해피콜 설정
		AIC_HappyCallDetailList: WideChar; // 회사 : AI-OB 해피콜 상세내역
		AIC_HappyCallDayTOT: WideChar;     // 회사 : AI-OB 해피콜 일별현황
		AIC_IBCallSet: WideChar;        // 회사 : AI-IB 인바운드  설정
		AIC_IBCallDetailList: WideChar; // 회사 : AI-IB 인바운드  상세내역
		AIC_IBCallDayTOT: WideChar;     // 회사 : AI-IB 인바운드  일별현황
		APP_UseYN: WideChar; // 고객어플 : 본사 사용 여부
    APP_Setup: WideChar; // 고객어플 : 앱/스마트푸시설정
    APP_Notice: WideChar; // 고객어플 : 앱 게시물관리
    APP_Push: WideChar; // 고객어플 : 앱 푸시관리
    APP_SMSLIST: WideChar; // 고객어플 : 콜마너SMS 발송내역
    APP_PushLIST: WideChar; // 고객어플 : 스마트PUSH 발송내역
    APP_SMSSTT: WideChar; // 고객어플 : 콜마너SMS발송 일별통계
    APP_PushSTT: WideChar; // 고객어플 : 스마트푸시발송 일별통계
    STT_Day: WideChar; // 통계 : 일별
    STT_Keynumber: WideChar; // 통계 : 대표번호별
    STT_Worker: WideChar; // 통계 : 기사별
    STT_User: WideChar; // 통계 : 사용자별
    STT_Customer: WideChar; // 통계 : 고객별
		STT_NewCustRate: WideChar; // 통계 : 신규고객율
		STT_TimeCall: WideChar; // 통계 : 시간별 콩통계
		STT_Cancel: WideChar; // 통계 : 취소
		STT_Owner: WideChar; // 통계 : 자사
		STT_OwnerACC: WideChar; // 통계 : 자사콜별정산
		STT_Share: WideChar; // 통계 : 공유
		STT_Local: WideChar; // 통계 : 지역별
		STT_NewCall: WideChar;   // 통계>신규콜수통계
		STT_TimeLocal: WideChar;     // 통계>시간대별출/도지역통계
		STT_OrderCharge: WideChar;   // 통계>오더요금별통계
    STT_OrderGrade: WideChar;   // 통계>오더별평가조회
		STT_CanCelCall: WideChar; // 통계 : 취소콜통계
		STT_ExcelDown: WideChar; // 통계 : 엑셀다운 가능
		SET_General: WideChar; // 설정 : 일반설정
    SET_Accept: WideChar; // 설정 : 접수설정
    SET_Charge: WideChar; // 설정 : 요금제편집
    SET_ChargeSet: WideChar; // 설정 : 요금제설정
    SET_CID: WideChar; // 설정 : CID
		SET_CIDDNIS: WideChar; // 설정 : CID대표번호DNIS관리
    SET_ExcelDown: WideChar; // 설정 : 엑셀다운 가능
    HEL_REMOTE: WideChar; // 원격연결
    MAP_Accept: WideChar; // 관제지도 : 권한

		BTM_CALLMNG : WideChar;  //통화관리
		BTM_CALLMNGCNT : WideChar;  // 통화관리 통화종료/전화종료건수 보기 권한
		BTM_CALLOUT : WideChar;  //부재중전화관리
		BTM_CUTELUNMASKING : WideChar;  //고객번호숨김해제(가운데4자리)
		BTM_CALLCNL : WideChar;  // 부정취소콜관리
    BTM_MENUSCH : WideChar;  // 메뉴찾기
    BTM_10LVL_DSHARE : WideChar;  // 신규접수공유 - 상담원단순공유권한(콜마너XE2)
    BTM_10LVL_RQUEST : WideChar;  // 요금문의 - 상담원요금문의에대한답변권한(콜마너XE2)
  end;

var
  TCK_USER_PER: TXE_USER_PERMISSION;

function StrToIntEx(const AValue: string): Integer;
function GMessagebox(ss_Msg, ss_msg_cd: string): Integer;
function tmsShowmessage(const Instruction,content: string; iCloseTime : Integer; icon: tTaskDialogIcon): Integer;
function Rpad(s: AnsiString; icount: Integer; c: char): string;
function AnsiRpad(s: AnsiString; icount: Integer; c: Ansichar): AnsiString;
function LPAD(str: AnsiString; char: AnsiString; str_len: Integer): string;
function StartDate: string;
function StartDateTime(ss_Format: string = 'yyyymmddhhmmss'): string;
function UpDateDateTime(ss_Format: string = 'yyyymmddhhmmss'): string;

function ExistKeyRegistry(const ARootKey: DWORD; const AKey : AnsiString): Boolean;
function ExistValueRegistry(const ARootKey: DWORD; const AValue : AnsiString): Boolean;
function GetRegistry(const ARootKey: DWORD; const AKey, AName: AnsiString) : AnsiString;
procedure SetRegistry(const ARootKey: DWORD; const AKey, AName, AValue: string);

function CharToHexaStr(Rs: Ansichar; ShowByte: byte = 2): String;
function ByteToHexaStr(Rs: Byte; ShowByte: byte = 2): String;
function HexToValue(const s: AnsiString): AnsiString;
function StrToAnsiHex(const s: String): String;

// BASE64
function CalcEncoderSize(InSize: Cardinal): Cardinal;
function CalcDecoderSize(const InBuffer; InSize: Cardinal): Cardinal;

procedure base64Encode(const InBuffer; InSize: Cardinal; var OutBuffer);  overload; register;
procedure base64Decode(const InBuffer; InSize: Cardinal; var OutBuffer);  overload; register;

procedure base64Encode(const InText: AnsiString;  var OutText: AnsiString); overload;
procedure base64Decode(const InText: AnsiString;  var OutText: AnsiString); overload;

procedure base64Encode(const InText: array of Ansichar; var OutText: AnsiString;  const iLenght: Integer); overload;

// 디렉토리가 존재하는지 확인한다.
procedure DirMake(Filename: string);

/// BlowFish Lib API
procedure Init(const szKey: PAnsiChar; nkeyLen: Cardinal); Cdecl;
  external DLL_BLOWFISH delayed;
function Encrypt(const szPlainText: PAnsiChar; nPlainLength: Integer;
  szEncryptText: PAnsiChar): Integer; Cdecl; external DLL_BLOWFISH delayed;
procedure Decrypt(const szEncrypt: PAnsiChar; nEncryptLength: Integer;
  szPlainText: PAnsiChar); Cdecl; external DLL_BLOWFISH delayed;

function BlowFishEncrypt(AKey: AnsiString; APlainText: AnsiString; var AData: array of Byte): Integer; overload;
function BlowFishEncrypt(AKey: AnsiString; APlainText: AnsiString) : AnsiString; overload;

function BlowFishDecrypt(AKey: AnsiString; const AData: array of Byte; ALength: Integer): AnsiString; overload;
function BlowFishDecrypt(AKey: AnsiString; AData: AnsiString) : AnsiString; overload;

function BlowFish8Decrypt(AKey: AnsiString; AData: AnsiString): AnsiString;
function BlowFishPDecrypt(AKey: AnsiString; outData: PAnsiChar; ALength: Integer): AnsiString;

/// ////////////////////////////////////////////////////
function GetStrToShortDateTimeStr(ADatetime: string;  AIsViewDate: Boolean = true): string;
function GetStrToDateTimeGStr(ADatetime : string; AGubun : Integer) : String;
function GetStrToLongDateTimeStr(ADatetime: string): string;

function RemoveDatetimeSeparator(ADatetime: string): string;
function RemoveComma(AValue: string): string;
// 공백제거 기능 삭제
function GetTextSeperationEx(ss_Delimiter: string; ss_DelimitedText: string;
  var AStrList: TStringList): Boolean;
function GetTextSeperationEx2(ss_Delimiter: string; ss_DelimitedText: string;
  var AStrList: TStringList): Boolean;

function ReplaceAll(const AValue, AOld, ANew: string): string;
function RemoveAll(const AValue, ATag: string): string;

function GetMacAddressEx: string;
function GetUUIDEx: Boolean;
procedure GetMacAddressList(AList: TStringList);
procedure GetMacAddressListWibro(AList: TStringList);

function GetOSNameEx(Build: Boolean; StrInfo: boolean): string;
function TryGetWindowsVersionFromRegistry : String;
// 파일버전 체크
function GetFileVersion(const Filename: string;
  var Major, Minor, Release, Build: Word): Boolean;
function MACToStr(ByteArr: PByte; Len: Integer): string;

function IsWibro: Boolean;
function IsFamily: Boolean;

function GetLocalIP(ss_dllPath: string): String;
function GetPublicIP : String;
function GNULLCheckMsg(Pctl_Sender: TObject;
  Ps_MsgID, Ps_MsgPrefix: string): Boolean;

function StringToWideString(const s: AnsiString; codePage: Word): WideString;
function SystemFolderRead: string;
function Date8to10(ss_Date: string): string;

/// ////////////////////////////
function MakePacket(var AoutData: array of Byte;
  APacketType, APacketData, AEncryptKey: AnsiString): Integer;
// 디버그 에러 내용을 저장 한다.
function gDebugErrSave(sContent: string): string;
procedure Log(ss_LogStr, ss_LogFilePathName: String; dType : Integer = 0; bWrite : Boolean = False);
procedure WKLog(ss_LogStr, ss_LogFilePathName: String);

procedure CXELog(ss_LogStr : String);

function GetDateTime(const ss_Format: string): string;
function GetHttpData(AURL: string; ATimeOut: Integer = 3 * 1000): string;
function En_Coding(sTemp: string): string;
function Html_DeCoding(sTemp: string): string;
function Param_Filtering(sTemp: AnsiString): AnsiString;
function M_SGParseTXT(tText : String) : string;

function Ceil(const X: Extended): Integer; // 올림함수
function copy_st(sSource, st1, st2: string): string; // 광고 수신거부자 제거
function copy_st2(sSource, st1, st2: string): string; // 광고 수신거부자 제거

function GetStrPharseByte(const AValue: string; AByte: Integer): string;

procedure SetServerCidList( sList : String; var AList : TStringList );

function DecBinaryKey(const AKey: string): string;
procedure AssertProc(const AMessage, AFilename: String; ALineNumber: Integer;
  AErrorAddr: Pointer);

function StrToCall(call: string): string;
function StrToCallMasking(call: string; AGubun:integer=0): string; //0:No Masking, 1: 국번Masking, 2: 뒷번호Masking
function CallToStr(AStr: string): string;
function StrToMoney(AValue: string): string;
function GetTextSeperationFirst(ss_Delimiter: string;
  ss_DelimitedText: string): string;
function GetMoneyStr(AValue: Integer): string;

function AddPhoneDDD(APhone: string): string;
function GetRoadLength(ss_dllPath, ss_x1, ss_y1, ss_x2, ss_y2: AnsiString) : Extended;
function NumericCheck(ss_dllPath, ss_Msg, ss_str: AnsiString): Boolean;
function fCallNumCheck8282( ACallNum : String ) : String;
function GetMacAddressListStr: string;

function GetIniColor(ss_IniFile, ss_Section, ss_Key, ss_Value: string): TColor;
function SetIniColor(ss_IniFile, ss_Section, ss_Key, ss_Value: string): Boolean;

function UrlEncode(const svar: AnsiString): string;
// 2012.1.3 메엔 로그인 및 운전면허 확인시 사용.

procedure pSetBranch(BrComBo: TcxComboBox);
procedure CB_HdCng_BrCng(HdCombo, BrComBo: TcxComboBox);

function HexToByte(const AHex: string): byte;
function Hex6ToColor(AColor: string): TColor;
function ColorToHex6(AColor: TColor): string;

//주민번호 뒷자리 마스킹처리
function StrToSsn(AValue: string; AMarking: Boolean = False): string;
//주민등록번호 유효성체크
function func_SoNumCheck(sTemp: string): Boolean;
function func_SoNumCheck_V2(ASsn: string; var AMsg : string): Boolean;

function CheckHPType(AHP: string; var AErrMsg: string): Boolean;
function RemovePhone(const AValue: string): string;
function FormatCash(const AValue: Integer): string;
function StrToTS(const AValue: string) : string;  // String to ThousandSeparator

// 2010-10-01  데이타 파싱처리 함수 LCK.
function Data_Parser(var Data, Types: string): string;

function GetSmsMemoLength(AText: String): Integer;
function GetSeperatorCount(AValue, ASeperator: AnsiString): Integer;

// 20120925 특정 사용자ID, 지사명NO 예외처리
function Check_ID(AId, ABr_no: string): Boolean;
procedure MarkThisWord(RE: TcxRichEdit; TheWord: String; Color: TColor;  Style: TFontStyles);
procedure MarkAllWords(RE: TcxRichEdit; wText: String; Color: TColor;  Style: TFontStyles);
procedure MarkAllKeyWords(RE: TcxRichEdit; wText: String; Color: TColor;  Style: TFontStyles);

Function fCheckMaxLength(Sender : TObject; iMax: Integer): Boolean;

function GetColIDIndex(AView: TcxGridTableView; AId: Integer): Integer;
procedure SetGridData(AView: TcxGridTableView; ARow, AId: Integer;  AValue: Variant);

function GetAllWinHandle(ss_TitleCaption: string; ss_ListBox: TListBox): HWND;
// 콜마트 콜패스를 위한 함수(CDS. 080929.) ==================================
// 윈도우 프로그램 목록에서 캡션으로 넘어오는 프로그램의 핸들값을 찾는다.
function FindAllInternetExplorer(sClsName, sCaption: string;  bGB: Boolean = False): Integer;
function Func_search_hdNo(sBrNo: string): string;

// 2012.11.20 본사 지사수와 권한 지사 수를 통하여 전체 지사 권한 확인 KHS
function Check_ALLHD(AHDNO: string): Boolean;
function Process32ListFind(sExecName: string): DWORD;

procedure CustomExportGridToHTML(AFilename: string; AGrid: TcxGrid;
  AExpand: Boolean = true; ASaveAll: Boolean = true;
  const AFileExt: string = 'html');
procedure CustomExportGridToMultiHTML(const AFilename: string; AView: TcxGridTableView; const AFileExt: string; ARange: Integer);

procedure ResetGridSizeEnv(AView: TcxGridTableView; AEnvFile: TIniFile);
procedure SaveGridSizeEnv(AView: TcxGridTableView; AEnvFile: TIniFile);

procedure InitGridSizeEnv(AView: TcxGridTableView);
procedure LoadGridSizeEnv(AView: TcxGridTableView; AEnvFile: TIniFile);
procedure CopyGridSizeEnv(AView, BView: TcxGridTableView; AEnvFile: TIniFile);

function IsDaeJeonShare(ALocality: Boolean; AShareNo: string): Boolean;
function IsGyeongNamShare(ALocality: Boolean; AShareNo: string): Boolean;
function IsWJ365Share(ALocality: Boolean; AShareNo: string): Boolean;
function IsHBShare(ALocality: Boolean; AShareNo: string): Boolean;
function IsAngelPlusHead(ALocality: Boolean; AHdNo: string): Boolean;
//  1577 : A1531, 1. 천사: A5522, 2.엔에스:A5523, 3.드라이버인스타:A5524, 4.바른차생활:A5525, 5.EG콜센터:A5526
function IsKMUSEHead(AHdNo: string): Boolean;    //카카오기능 사용 - 현재사용안함.
function IsSelfCardShare(ALocality: Boolean; AShareNo: string): Boolean;
function func_Cust_Tel(sCall, sDate, sBrch, sBrch2: string): string;
//고객번호 가운데 4자리 마스킹ㅊ처리 20210719 KHS
function func_CustTel_Masking(ABool : Boolean; sCall : string): string;
function GetDNFile(IdFTPUP: TIdFTP; sFileName, sFTPPath: string): Boolean;
function SetUpLoadFile(IdFTPUP: TIdFTP; sFileName, sFTPPath: string): Boolean;
function CheckDriverLicense(ALicense: String; var outAreaCode: Integer;
  var outYear, outNum1, outNum2: string; var AErrMsg: string): Boolean;
function GetLicenseAreaCode(AAreaName: string): Integer;
procedure cxGridSelectAll(AView: TcxGridTableView; AChecked: Boolean);
procedure ExcelNOPT(AGrid: TcxGrid);
procedure gfSetIndexNo(cxGridView: TcxGridDBTableView; iIndex: Integer; isOK: Boolean; iFirst : Integer = 0; bSort : Boolean = False); overload;
procedure gfSetIndexNo(cxGridView: TcxGridBandedTableView;
  isOK: Boolean); overload;

procedure GetTextSeperation_Add(ss_Delimiter: string; ss_DelimitedText: string; Var ss_Result : TStringList);
function GetChangeStringAs(sText: AnsiString): String;

function IdleTime: DWORD;

function ExecuteJavaScript(WebBrowser: TWebBrowser; Code: string): Variant;
function ExecuteJavaScriptGetValue(WebBrowser: TWebBrowser; Code1: string): Variant;
function ExecuteJavaScriptGetNameValue(WebBrowser: TWebBrowser; Code1: string): Variant;
function GetElementIdValue(WebBrowser: TWebBrowser; TagName, TagId, TagAttrib: String): String;
function GetElementNameValue(WebBrowser: TWebBrowser; TagName, TagId, TagAttrib: String): String;

function GetOKCashBackStr(AValue: string): string;

function fSetFont( AForm : TForm; AFontName : String; bHide : Boolean = False ) : Boolean;
function fSetSkin( AForm : TForm; bHide : Boolean = False ) : Boolean;
procedure pSetSkinButton( AButton : TcxButton );

// 퀀텀 그리드 -> 엑셀 저장
function func_cxGridToExcel(sFileName: string; cxGrid: TcxGridDBTableView; Gauge1: TGauge): Boolean;
// 엑셀 -> 퀀텀 그리드
function func_ExcelTocxGrid(AFilename: string; AView: TcxGridDBTableView; AGauge: TGauge): Boolean;
// 텍스트파일(CVS) -> 퀀텀 그리드
function func_TxtTocxGrid(AFilename: string; AView: TcxGridDBTableView; AGauge: TGauge): Boolean;
// 퀀텀 그리드 -> 텍스트파일(CVS)
function func_cxGridToTxt(sFileName: string; cxGrid: TcxGridDBTableView; cxProgress: TGauge): Boolean;

function Check_ShareGroup(ALocality: Boolean; AShareNo: string): String;  // Result = 상대연합코드
function Cheonan_ShareGroup(ALocalGubun, AShareNo: string): Boolean;  // Result = True 천안연합
function func_Age(sAge1, sAge2: string): String;
function func_Age2(sAge1: string): String;
function getWGS84(idata: string): string;

function getDEGREE(idata: string): string;                           // WGS84 DMS -> DD로 변경
function Angle2D(x1, y1, x2,  y2 : double) : double;
function PtInPolygon(X, Y  : double; VectX, VectY : TStringList; Cnt : integer) : Boolean;

function proc_HttpGetWorkImageURL(sWkSabun, AGubun: String) : String;
function LastPos(Substr: String; S: String): integer;
function fGetCheck_BlowFish_HdBrNo( sHdNo, sBrNo : AnsiString ) : Boolean;
function fGetChk_Search_HdBrNo( sMsg : String ) : Boolean;
function fGet_BlowFish_Query( AEnCodeQuery : array of Ansistring; var ADeCodeQuery : string) : string;

procedure _AddData(AView: TcxGridDBTableView; ARow: Integer; AField, AValue: String);
function fibo(n: integer): integer;
function GetTime(aDateTime: TDateTime): string;
procedure Proc_POIRequest(AINDEX: integer; AREA1, AREA2, AREA3, AREA4, DOCID, Lon, Lat : string);
procedure ListFileDir(Path, AGubun: string; Var FileList: TStringList);
function ValidateCreditCardNumber(CreditCardNumber:string):boolean;
procedure SaveBytesToFile(const Data: TIdBytes; const FileName: string);
function Base64DecodeBytes(const DecodedText: AnsiString): TIdBytes;
function Base64EncodeBytes(const EncodedText: TIdBytes): AnsiString;
function Base64DecodeString(const DecodedText: AnsiString): String;

function GetImeHanMode: boolean; //입력모드확인 한글True
function Enc_Control(AWord: string): string;
function SetWGS84(idata: string): string;
function fGetCheckXYValue(vStartYVal, vStartXVal : String) : Boolean;

function fGetSiDo(iTag:Integer; sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM: String): String;
function fGetSidoToStree(iTag:Integer; sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM: String) : String;
function fGetCheckDong(iTag:Integer; sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM: String) : String;
function fGetCheckWard(iTag:Integer; sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM: String) : String;
function fGetJibun(iGubun, iTag:Integer; sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM: String) : String;
procedure pGetNaverJibun_cloud(iTag:Integer; sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM: String; Var vCity, vWard, vStree : String);
// 읍면동 자료를 가지고 시군구 자료 추출
function fGetStreeToWard(iTag:Integer; sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM: String) : String;
function fGetNaverAddress_cloud(vG, vHttp:string) : String;
//procedure pWCONGNAMULtoWGS84( sX, sY : String; Var swX, swY : String );
procedure pLocWCONGNAMULtoWGS84( sX, sY : String; Var swX, swY : String );
function ServiceGetList(sMachine : string; dwServiceType, dwServiceState : DWord ):boolean;
function fgetSpaceToHtml( sValue : String) : String;

function func_EucKr_CheckSMS( sValue : String ) : string;
function func_EucKr_Check(Sender: TObject; vGubun : Integer ) : Boolean;

function fgetCountSms( sMessage : String ) : Integer;
function fMemoToVia( AVia, AMemo : String ) : String;

function String2Hex(const Buffer: AnsiString): string;     //string to Hex
function HexToByteArr(Hexs: string): byDynamicArr;
function getPaymethodName( sType : String ) : String;
function CharToByte(AChar: Char): byte;
function isRoadAddress( str : String ) : boolean;
procedure Proc_2ndSearchIng(ATag : integer; ABool : boolean; ActiveEdit : String ='' );
procedure pJON01ShowMessage(ATag:Integer; sType, sMsg: String);
procedure pJON01Show(ATag:Integer);
function func_JON03SalesDate(ADateTime : String ) : String;
function fDelString( AValue, AData : String ) : String;
procedure pInitFastFind;
procedure pRestart_program;
function fPosExN( AValue, AChar : String; AIndex:Integer) : String;
function fPosEx( AValue, AChar : String; AIndex:Integer) : String;
function isHandPhone( AValus : String ) : Boolean;
procedure gCALLMARTClear;
function StrToEncrypt(AStr : string) : String;
function CutString( value : AnsiString; len : Integer ) : String;
function ConvertMinutesToHoursAndMinutes(Input: Integer) : String;
function ConvertTimeToMinutes(Input: String) : String;
function GetFileSize(AFileName: String): Integer;
procedure ploginInfo_Del;
procedure plogfile_Del;
function fLogDataPathFile : String;
function fgetCheckBoxYN( ACheckBox : TcxCheckBox ) : String;
procedure pDownConfigCopy( AFileName, BFileNmae : String );
function fBunjiNameCheck( AName : String ) : Boolean;
function MinutesToHourEx(Minutes : Integer): string;
procedure SetOfficeVersion;
function IsKakao_CallByInsureFee_Head(AHdNo: string): Boolean;    //건당보험료 사용본사
function IsKakao_KMAiRate_Head(AHdNo: string): Boolean;    //카카오요금 사용본사
function IsKakao_Worker_Head(AHdNo: string): Boolean;    //카카오기사 정보조회 사용본사
function IsKakao_AgreeAllocat_Head(AHdNo: string): Boolean;    //동의배정 사용본사

function func_SetCallListNeasun(ACallListNeasun : String) : Boolean;
function func_GetCallListNeasun(ANeasun : String) : Boolean;

// AI 녹취파일 URL 조회
function fgetAiRecordURL(sDate, sPPN : String) : String;
implementation

uses
  xe_gnl, xe_Msg, xe_packet, IdHTTP, xe_gnl2, xe_gnl3, Main, xe_Dm, xe_JON56, uLkJSON, xe_jon30,
	xe_system, uEucKrCode, xe_Flash;

const
  cBase64Codec: array [0 .. 63]
    of Ansichar =
    'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';
  Base64Filler: Ansichar = '=';

type
  TAByte = array [0 .. MaxInt - 1] of byte;
  TPAByte = ^TAByte;

Var
	PreMessage : String;

function GMessagebox(ss_Msg, ss_msg_cd: string): Integer;
var
  rv, iInterval: Integer;
  sMdlg_caption: string;
  sIni: TIniFile;
begin
  try
    rv := 0;
    sMdlg_caption := '정보[' + ss_msg_cd + ']';
    sIni := TIniFile.Create(ENVPATHFILE);
		try
			iInterval := 0;

			if sIni.ReadString('GER', 'Message_Close', '0') = '1' then
				iInterval := round(StrToFloatDef(sIni.ReadString('GER', 'Time_Close', ''), 2.0) * 1000)
			else iInterval := 999;
				
			if ss_msg_cd[5] = 'I' then
			begin
				if iInterval = 0 then
				begin
					Result := rv;
					exit;
				end else 
				if iInterval = 999 then
				begin  // 메시지 박스 자동 종료 처리 - 전체 사용하지 않는 이유는 듀얼모니터 사용시 메인쪽에 메시지가 표시
					Application.NormalizeTopMosts;
					rv := Application.MessageBox(PChar(ss_Msg), PChar(GS_APPNAME), MB_OK+MB_ICONINFORMATION);
					Application.RestoreTopMosts;
				end else
				begin  // 메시지 박스 자동 종료 처리 - 전체 사용하지 않는 이유는 듀얼모니터 사용시 메인쪽에 메시지가 표시
					rv := tmsShowmessage('알림', ss_msg, iInterval, tiInformation);
				end;
			end else
      if ss_msg_cd[5] = 'Q' then
      begin
        if ss_msg_cd[6] = 'R' then
				begin
					Application.NormalizeTopMosts;
    			rv := Application.MessageBox(PChar(ss_Msg), PChar(GS_APPNAME), MB_OKCANCEL+MB_ICONQUESTION+MB_DEFBUTTON2);
          Application.RestoreTopMosts;
        end else
        begin
          Application.NormalizeTopMosts;
    			rv := Application.MessageBox(PChar(ss_Msg), PChar(GS_APPNAME), MB_OKCANCEL+MB_ICONQUESTION+MB_DEFBUTTON1);
          Application.RestoreTopMosts;
        end;
      end else
      if ss_msg_cd[5] = 'W' then
      begin
        Application.NormalizeTopMosts;
   			rv := Application.MessageBox(PChar(ss_msg), PChar(GS_APPNAME), MB_OKCANCEL+MB_ICONINFORMATION);
        Application.RestoreTopMosts;
      end else
      if ss_msg_cd[5] = 'E' then
      begin
        Application.NormalizeTopMosts;
        rv := Application.MessageBox(PChar(ss_Msg), PChar(GS_APPNAME), MB_OK);
        Application.RestoreTopMosts;
      end;

			Result := rv;
    finally
      FreeAndNil(sIni);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function tmsShowmessage(Const Instruction,content: string; iCloseTime : Integer; iCon: tTaskDialogIcon): Integer;
var
  td : tAdvTaskDialog;
begin
  try
    Result := 0;
    try
      td := tAdvTaskDialog.Create(Application);
      td.Clear;
      td.DialogPosition := dpOwnerFormCenter;
      td.Title := Application.Title;
      td.CommonButtons := [cbOK];
      if iCloseTime > 0 then td.AutoClose := True
                        else td.AutoClose := False;
      td.AutoCloseTimeOut := iCloseTime;
      td.Instruction := Instruction;
      td.Content := Content;
      td.icon := icon;
      Result := td.Execute;
    finally
      td.Free;
    end;
  Except
    Result := 0;
  end;
end {ShowmessageEx};

function LPAD(str: AnsiString; char: AnsiString; str_len: Integer): string;
var
  i: Integer;
  rv: string;
begin
  Result := '';
  try
    for i := 0 to str_len - Length(str) - 1 do
      rv := rv + char;

    Result := rv + str;
  except
    Result := '';
  end;
end;

function StartDate: string;
begin
  try
    Result := StartDateTime('yyyymmdd');
  except
    Result := '';
  end;
end;

function StartDateTime(ss_Format: string = 'yyyymmddhhmmss'): string;
begin
  try
    if ss_Format = 'yyyymmddhhmmss' then
    begin
      Result := FormatDateTime(ss_Format, Now);
      if Copy(Result, 9, 2) < '09' then
        Result := FormatDateTime(ss_Format, Now - 1);

      Result := Copy(Result, 1, 8) + '090000';
    end else
    if ss_Format = 'mmddhhmmss' then
    begin
      Result := FormatDateTime(ss_Format, Now);
      if Copy(Result, 9, 2) < '09' then
        Result := FormatDateTime(ss_Format, Now - 1);

      Result := Copy(Result, 1, 8) + '090000';
    end else
    if ss_Format = 'mm/dd-hh:mm' then
    begin
      Result := FormatDateTime(ss_Format, Now);
      if Copy(Result, 7, 2) < '09' then
        Result := FormatDateTime(ss_Format, Now - 1);

      Result := Copy(Result, 1, 2) + '/' + Copy(Result, 4, 3) + '09:00';
    end
    else if ss_Format = 'yyyy-mm-dd hh:nn:ss' then
    begin
      Result := FormatDateTime(ss_Format, Now);
      if Copy(Result, 12, 2) < '09' then
        Result := FormatDateTime(ss_Format, Now - 1);

      Result := Copy(Result, 1, 10) + ' 09:00:00';
    end
    else if ss_Format = 'yyyymmdd' then
    begin
      Result := FormatDateTime('yyyymmddhhmmss', Now);
      if Copy(Result, 9, 2) < '09' then
        Result := FormatDateTime(ss_Format, Now - 1);
      Result := Copy(Result, 1, 8);
    end
    else if ss_Format = 'yyyy-mm-dd' then
    begin
      Result := FormatDateTime('yyyy-mm-dd hh:mm:ss', Now - 1);
      if Copy(Result, 12, 2) < '09' then
        Result := FormatDateTime('yyyy-mm-dd hh:mm:ss', Now - 2);

      Result := Copy(Result, 1, 10) + ' 09:00:00';
    end;
  except
    Result := '';
  end;
end;

function UpDateDateTime(ss_Format: string = 'yyyymmddhhmmss'): string;
begin
   try
     if ss_Format = 'yyyy-mm-dd' then
     begin
       Result := FormatDateTime('yyyy-mm-dd hh:mm:ss', Now - 7);
       if Copy(Result, 12, 2) < '09' then
         Result := FormatDateTime('yyyy-mm-dd hh:mm:ss', Now - 8);

       Result := Copy(Result, 1, 10) + ' 09:00:00';
     end;
  except
      Result := '';
  end;
end;

function ExistKeyRegistry(const ARootKey: DWORD; const AKey : AnsiString): Boolean;
var
  Registry: TRegistry;
begin
  try
    Registry := TRegistry.Create;
    try
      Registry.RootKey := ARootKey; // HKEY_LOCAL_MACHINE;
      Result := Registry.KeyExists(AKey);
    finally
      FreeAndNil(Registry);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function ExistValueRegistry(const ARootKey: DWORD; const AValue : AnsiString): Boolean;
var
  Registry: TRegistry;
begin
  try
    Registry := TRegistry.Create;
    try
      Registry.RootKey := ARootKey; // HKEY_LOCAL_MACHINE;
      Result := Registry.ValueExists(AValue);
    finally
      FreeAndNil(Registry);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetRegistry(const ARootKey: DWORD; const AKey, AName: AnsiString)
  : AnsiString;
var
  Registry: TRegistry;
begin
  Result := '';
  try
    Registry := TRegistry.Create;
    try
      Registry.RootKey := ARootKey;
      Registry.OpenKey(AKey, true);

      Result := Registry.ReadString(AName);
    finally
      FreeAndNil(Registry);
    end;
  except
    Result := '';
  end;
end;

procedure SetRegistry(const ARootKey: DWORD; const AKey, AName, AValue: string);
var
  Registry: TRegistry;
begin
  try
    Registry := TRegistry.Create;
    try
      Registry.RootKey := ARootKey;
      Registry.OpenKey(AKey, true);

      Registry.WriteString(AName, AValue);
    finally
      FreeAndNil(Registry);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function CharToHexaStr(Rs: Ansichar; ShowByte: byte = 2): String;
begin
  try
    Result := IntToHex(byte(Rs), 2);
  except
    Result := '';
  end;
end;

function ByteToHexaStr(Rs: Byte; ShowByte: byte = 2): String;
begin
  try
		Result := IntToHex(Rs, 2);
  except
    Result := '';
  end;
end;

function HexToValue(const s: AnsiString): AnsiString;
var
	i: Integer;
begin
	try
		SetLength(Result, Length(s) Div 2);
		For i := 0 to (Length(s) Div 2) - 1 do
		Begin
			Result[i + 1] := Ansichar(StrToInt('$' + Copy(s, (i * 2) + 1, 2)));
		End;
	except
		Result := '';
	end;
end;

function StrToAnsiHex(const s: String): String;
var
	i: Integer;
	sTmp : AnsiString;
begin
	try
		Result := '';
		sTmp := AnsiString(s);
		For i := 0 to Length(sTmp) do
		Begin
			Result := Result + IntToHex(Ord(sTmp[i]), 2);
		End;
	except
		Result := '';
	end;
end;

function BlowFishDecrypt(AKey: AnsiString; AData: AnsiString) : AnsiString; overload;
Var ADecryptData: array of Byte;
begin
  try
    SetLength(ADecryptData, Length(AData));
    Move(AData[1], ADecryptData[0], Length(AData));
    Result := BlowFishDecrypt(AKey, ADecryptData[0], Length(AData));
    ADecryptData := Nil;
  except
    Result := '';
  end;
end;

function BlowFishDecrypt(AKey: AnsiString; const AData: array of Byte;  ALength: Integer): AnsiString;
var
  pReturn: array of Byte;
begin
  try
    Result := '';
    Init(PAnsiChar(AKey), Length(AKey));
    SetLength(pReturn, ALength * 2);
    Decrypt(@AData, ALength, @pReturn[0]);
    Result := Trim(AnsiString(pReturn));
    pReturn := Nil;
  except
    Result := '';
  end;
end;

function BlowFish8Decrypt(AKey: AnsiString; AData: AnsiString): AnsiString;
var
  ADecryptData: array of Byte;
  ALen: Integer;
begin
  try
    SetLength(ADecryptData, MaxCommandSize);
    Move(AData[1], ADecryptData[0], Length(AData));

    // blowfish 는 8byte 단위로 암호화 함(나머지 부족한 자리는 공백으로 채움)   LYB 20120711
    ALen := Length(AData);
    if ALen mod 8 <> 0 then
    begin
      ALen := ((ALen Div 8) + 1) * 8;
    end;
    Result := BlowFishDecrypt(AKey, ADecryptData[0], ALen);
    ADecryptData := Nil;
  except
    Result := '';
  end;
end;

function BlowFishPDecrypt(AKey: AnsiString; outData: PAnsiChar;
  ALength: Integer): AnsiString;
var
  pReturn: array of Byte;
begin
  try
    Result := '';
    Init(PAnsiChar(AKey), Length(AKey));
    SetLength(pReturn, ALength);
    ZeroMemory(pReturn, ALength);
    Decrypt(outData, ALength, @pReturn[0]);
    Result := TEncoding.Ansi.GetString(pReturn);
    pReturn := Nil;
  except
    Result := '';
  end;
end;

function StringToWideString(const s: AnsiString; codePage: Word): WideString;
var
  l: Integer;
begin
  try
    if s = '' then
      Result := ''
    else
    begin
      l := MultiByteToWideChar(codePage, MB_PRECOMPOSED, PAnsiChar(@s[1]),
        -1, nil, 0);
      SetLength(Result, l - 1);
      if l > 1 then
        MultiByteToWideChar(codePage, MB_PRECOMPOSED, PAnsiChar(@s[1]), -1,
          PWideChar(@Result[1]), l - 1);
    end;
  except
    Result := '';
  end;
end; { StringToWideString }

function RemoveAll(const AValue, ATag: string): string;
begin
  try
    Result := ReplaceAll(AValue, ATag, '');
  except
    Result := '';
  end;
end;

function ReplaceAll(const AValue, AOld, ANew: string): string;
begin
  try
		Result := StringReplace(AValue, AOld, ANew, [rfReplaceAll]);
  except
    Result := '';
	end;
end;

function GetMacAddressEx: string;
var
  sTemp : AnsiString;
  sMacAddr : String;
  StrList: TStringList;
  i : Integer;
begin
  try
    Result := '';

    sTemp := GetRegistry(HKEY_LOCAL_MACHINE, 'SYSTEM\WLKXE', 'MACADDR');
    sTemp := HexToValue(sTemp);
    sTemp := BlowFishDecrypt(Copy(_CHK_KEY,8,10) + Copy(_CHK_KEY,23,22), sTemp);
    sMacAddr := StringToWideString(sTemp, CP_ACP);

    StrList := TStringList.Create;
    try
      GetMacAddressList(StrList);
      if StrList.Count = 0 then
        GetMacAddressListWibro(StrList);

      if Trim(sMacAddr) <> '' then
      begin
        for i := 0 to StrLIst.Count - 1 do
        begin
          SetDebugeWrite('MACAddress Compare : ' + sMacAddr + ' - ' + RemoveAll(StrList[i], '-'));
          if sMacAddr =  RemoveAll(StrList[i], '-') then
          begin
            Result := sMacAddr;
            Break;
          end;
        end;
      end;

      if Result = '' then
      begin
        if StrList.Count > 0 then
        begin
          if Trim(StrList[0]) = '' then
          begin
            if StrList.Count = 2 then
            begin
              if Trim(StrList[1]) = '' then
              begin
                if StrList.Count = 3 then
                begin
                  if Trim(StrList[2]) <> '' then
                   Result := StrList[2]
                end;
              end else
               Result := StrList[1]
            end;
          end else
            Result := StrList[0]
				end;
				//UUID로 로그인 가능여부 확인 20171120 KHS
				if (GS_PRJ_AREA = 'O') and ((GT_USERIF.ID = 'j4000') or (GT_USERIF.ID = 'j4000-0') or (GT_USERIF.ID = 'st100')) then
				begin
					if Result = '' then                      
					begin
						GS_UUIDError := '[MACADDRESS] MacList Empty';
						if GetUUIDEx then Result := sMacAddr;
					end;
				end;
			end;
		finally
			StrList.Free;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetUUIDEx: Boolean;
var
	sTmp : AnsiString;
	sUUID : String;
	StrList: TStringList;
	i : Integer;
begin
	try
		Result := False;

		sTmp := GetRegistry(HKEY_LOCAL_MACHINE, 'SYSTEM\WLKXE', 'UUID');
		sTmp := HexToValue(sTmp);
		sTmp := BlowFishDecrypt(Copy(_CHK_KEY,8,10) + Copy(_CHK_KEY,23,22), sTmp);
		sUUID := StringToWideString(sTmp, CP_ACP);
		SetDebugeWrite('UUID Compare : ' + sUUID);

		StrList := TStringList.Create;
		try
			sTmp := SysInfoRec.UUID;
			SetDebugeWrite('SysInfoRec.UUID : ' + sTmp);
				
			if Trim(sUUID) = Trim(sTmp) then
			begin
				GS_UUIDError := GS_UUIDError + '_[GetUUIDEx-True] RegID : ' + Trim(sUUID) + ', SysInfo : ' + sTmp;
				Result := True;
			end
			else
			begin
				GS_UUIDError := GS_UUIDError + '_[GetUUIDEx-False] RegID : ' + Trim(sUUID) + ', SysInfo : ' + sTmp;
			end;

		finally
			StrList.Free;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure GetMacAddressList(AList: TStringList);
  function _HasKeyword(AKeys: array of string; ADesc: string): Boolean;
  var
    i: Integer;
  begin
    Result := False;

    for i := 0 to Length(AKeys) - 1 do
    begin
      if Pos(AKeys[i], ADesc) > 0 then
      begin
        Result := true;
        Exit;
      end;
    end;
  end;
var
  pAdapterInfo : IpTypes.PIP_ADAPTER_INFO;
  BufLen, Status : cardinal;
  TmpNext: IpTypes.PIP_ADAPTER_INFO;
  Count: Integer;
  IsWithOut: Boolean;
begin
  try
    BufLen:= sizeof(IP_ADAPTER_INFO);
    GetAdaptersInfo(nil, BufLen);
    pAdapterInfo:= AllocMem(BufLen);
    try
      Status:= GetAdaptersInfo(pAdapterInfo,BufLen);

      if (Status = ERROR_SUCCESS) then
      begin
        TmpNext := @pAdapterInfo;
        repeat
          try
            if _HasKeyword(NETWORK_WIBRO_KEYWORDS  , TmpNext.Description) or
               _HasKeyword(NETWORK_WITHOUT_KEYWORDS, TmpNext.Description) then
            begin
              IsWithOut := true;
            end;
            Inc(Count);
          finally
            TmpNext := TmpNext.Next;
          end;
        until TmpNext = nil;

        TmpNext := @pAdapterInfo;
        repeat
          try
            if _HasKeyword(NETWORK_WIBRO_KEYWORDS, TmpNext.Description) and
              (Count > 1) then
              Continue;

            if _HasKeyword(NETWORK_WITHOUT_KEYWORDS, TmpNext.Description) and
              (Count > 1) then
              Continue;

            // With out(WIBRO, Wireless) 인 경우 유선랜카드에서 맥조회
            if (Trim(TmpNext^.GatewayList.IpAddress.S) = '') and (not IsWithOut) then
              Continue;

            if TmpNext^.AddressLength = 6 then
            begin
              if Pos('virtual', LowerCase(TmpNext^.Description)) = 0 then  // virtual은 제외
              begin
                SetDebugeWrite('MACAddress : ' + MACToStr(@TmpNext^.Address, TmpNext^.AddressLength));
                AList.Add(MACToStr(@TmpNext^.Address, TmpNext^.AddressLength));
              end;
            end;
          finally
            TmpNext := TmpNext.Next;
          end;
        until TmpNext = nil;
      end;
      AList.Sorted := True;
    finally
      Freemem(pAdapterInfo);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure GetMacAddressListWibro(AList: TStringList);
  function _HasKeyword(AKeys: array of string; ADesc: string): Boolean;
  var
    i: Integer;
  begin
    Result := False;

    for i := 0 to Length(AKeys) - 1 do
    begin
      if Pos(AKeys[i], ADesc) > 0 then
      begin
        Result := true;
        Exit;
      end;
    end;
  end;
var
  pAdapterInfo : IpTypes.PIP_ADAPTER_INFO;
  BufLen, Status : cardinal;
  TmpNext: IpTypes.PIP_ADAPTER_INFO;
  Count: Integer;
  IsWithOut: Boolean;
begin
  try
    BufLen:= sizeof(IP_ADAPTER_INFO);
    GetAdaptersInfo(nil, BufLen);
    pAdapterInfo:= AllocMem(BufLen);
    try
      Status:= GetAdaptersInfo(pAdapterInfo,BufLen);

      if (Status = ERROR_SUCCESS) then
      begin
        TmpNext := @pAdapterInfo;
        repeat
          try
            if _HasKeyword(NETWORK_WITHOUT_KEYWORDS, TmpNext.Description) then
            begin
              IsWithOut := true;
            end;
            Inc(Count);
          finally
            TmpNext := TmpNext.Next;
          end;
        until TmpNext = nil;

        TmpNext := @pAdapterInfo;
        repeat
          try
            if _HasKeyword(NETWORK_WITHOUT_KEYWORDS, TmpNext.Description) and (Count > 1) then
              Continue;

            // With out(WIBRO, Wireless) 인 경우 유선랜카드에서 맥조회
            if (Trim(TmpNext^.GatewayList.IpAddress.S) = '') and (not IsWithOut) then
              Continue;

            if TmpNext^.AddressLength = 6 then
            begin
              if Pos('virtual', LowerCase(TmpNext^.Description)) = 0 then  // virtual은 제외
              begin
                SetDebugeWrite('MACAddress : ' + MACToStr(@TmpNext^.Address, TmpNext^.AddressLength));
                AList.Add(MACToStr(@TmpNext^.Address, TmpNext^.AddressLength));
              end;
            end;
          finally
            TmpNext := TmpNext.Next;
          end;
        until TmpNext = nil;
      end;
      AList.Sorted := True;
    finally
      Freemem(pAdapterInfo);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetOSNameEx(Build: Boolean; StrInfo: boolean): string;
var
   osVerInfo : TOSVersionInfoEX;
   majorVer,
   minorVer  : Integer;
begin
  result := TryGetWindowsVersionFromRegistry;
  if Trim(Result) <> '' then Exit;

  result := 'Unknown';
  osVerInfo.dwOSVersionInfoSize := Sizeof(TOSVersionInfo);
  if GetVersionEx(osVerInfo) then begin
    majorVer := osVerInfo.dwMajorVersion;
    minorVer := osVerInfo.dwMinorVersion;
    case osVerInfo.dwPlatformId of
      VER_PLATFORM_WIN32_NT : { Windows NT/2000/XP/Vista }
        begin
          if majorVer <= 4 then
            result := 'Windows NT'
          else if (majorVer = 5) and (minorVer= 0) then
            result := 'Windows 2000'
          else if (majorVer = 5) and (minorVer = 1) then
            result := 'Windows XP'
          else if (majorVer = 5) and (minorVer = 2) then
            result := 'Windows XP' // Server
          else if (majorVer = 6)  and (minorVer = 0) then
            result := 'Windows Vista'
          else if (majorVer = 6) and (minorVer = 1) then
            result := 'Windows 7'
          else if (majorVer = 6) and (minorVer = 2) then
            result := 'Windows 8'
          else if (majorVer = 6) and (minorVer = 3) then
            result := 'Windows 8.1'
          else if (majorVer = 10) and (minorVer = 0) then
            result := 'Windows 10'
          else
            result := 'Unknown';
          if Build then result := result + ', Build ' + intToStr (osVerInfo.dwBuildNumber);
          if StrInfo then result := result + ' ' + String (osVerInfo.szCSDVersion);
        end;
      VER_PLATFORM_WIN32_WINDOWS :  { Windows 9x/ME }
        begin
          if (majorVer = 4) and (minorVer = 0) then
            result := 'Windows 95'
          else if (majorVer = 4) and (minorVer = 10) then begin
            if osVerInfo.szCSDVersion[1] = 'A' then
              result := 'Windows 98SE'
            else
              result := 'Windows 98';
          end
          else if (majorVer = 4) and (minorVer = 90) then
            result := 'Windows ME'
          else
            result := 'Unknown';
        end;
    else
      result := 'Unknown';
    end;
  end
  else
    result := 'Unknown';
end;

function TryGetWindowsVersionFromRegistry : String;
var
  Reg : TRegistry;
  bOk : Boolean;
begin
  Reg := TRegistry.Create(KEY_READ or KEY_WOW64_64KEY);
  Result := '';
  try
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    bOk := Reg.OpenKeyReadOnly('SOFTWARE\Microsoft\Windows NT\CurrentVersion');
    if not bOk then Exit;

//    _Values.BuildLab := Reg.ReadString('BuildLab');
//    _Values.BuildLabEx := Reg.ReadString('BuildLabEx');
//    _Values.CSDBuildNumber := Reg.ReadString('CSDBuildNumber');
//    _Values.CSDVersion := Reg.ReadString('CSDVersion');
//    _Values.CurrentBuildNumber := Reg.ReadString('CurrentBuildNumber');
//    _Values.CurrentVersion := Reg.ReadString('CurrentVersion');
//    _Values.EditionId := Reg.ReadString('EditionId');
    try
      Result := Reg.ReadString('ProductName') + ' Version ' + Reg.ReadString('ReleaseId') + ' (OS Build ' + Reg.ReadString('CurrentBuild') + ')';
    except
      Result := '';
    end;
//    _Values.UBR := Reg.ReadInteger('UBR');
  finally
    FreeAndNil(Reg);
  end;
end;


function MACToStr(ByteArr: PByte; Len: Integer): string;
begin
  try
    Result := '';
    while (Len > 0) do
    Begin
      Result := Result + IntToHex(ByteArr^, 2) + '-';
      ByteArr := Pointer(Integer(ByteArr) + SizeOf(byte));
      Dec(Len);
    end;
    SetLength(Result, Length(Result) - 1); { remove last dash }
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function IsWibro: Boolean;
  function _HasKeyword(AKeys: array of string; ADesc: string): Boolean;
  var
    i: Integer;
  begin
    Result := False;

    for i := 0 to Length(AKeys) - 1 do
    begin
      if Pos(AKeys[i], ADesc) > 0 then
      begin
        Result := true;
        Exit;
      end;
    end;
  end;
var
  pAdapterInfo : IpTypes.PIP_ADAPTER_INFO;
  BufLen, Status : cardinal;
  TmpNext: IpTypes.PIP_ADAPTER_INFO;
begin
  try
    BufLen:= sizeof(IP_ADAPTER_INFO);
    GetAdaptersInfo(nil, BufLen);
    pAdapterInfo:= AllocMem(BufLen);
    try
      Status:= GetAdaptersInfo(pAdapterInfo,BufLen);

      if (Status = ERROR_SUCCESS) then
      begin
        TmpNext := @pAdapterInfo;
        repeat
          try
            if _HasKeyword(NETWORK_WIBRO_KEYWORDS, TmpNext.Description) then
            begin
              Result := true;
              Exit;
            end;
          finally
            TmpNext := TmpNext.Next;
          end;
        until TmpNext = nil;
      end;
    finally
      Freemem(pAdapterInfo);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function IsFamily: Boolean;
begin
  Result := False;
  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then
  begin
    Result := True;
  end;
end;

function GetLocalIP(ss_dllPath: string): String;
var
  func: TGetLocalIP;
  ls_PathFile: string;
begin
	try
		Result := '';

		try
			ls_PathFile := ss_dllPath;
			if LoadLibrary(PChar(ls_PathFile)) < 32 then
				Exit;

			@func := GetprocAddress(LoadLibrary(PChar(ls_PathFile)), 'GetIP');
			if (@func = nil) then
				Exit;

			Result := System.AnsiStringS.StrPas(func('Local'));
		finally
			FreeLibrary(LoadLibrary(PChar(ls_PathFile)))
		end;
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

function GetPublicIP : String;
var
  wb: TWebBrowser;
  HTMLDocument: IHTMLDocument2;
begin
	try
    wb := TWebBrowser.Create(nil);
    try
      wb.Navigate('http://www.callmaner.com/ip.php');
      while wb.ReadyState < READYSTATE_INTERACTIVE do
        Application.ProcessMessages;

      HTMLDocument := wb.Document as IHTMLDocument2;
  //    Result := Trim(HTMLDocument.Body.Get_outerHTML);
      Result := Trim(HTMLDocument.Body.InnerText);
    finally
      wb.Free;
    end;
  except
  end;
end;

function GNULLCheckMsg(Pctl_Sender: TObject;
  Ps_MsgID, Ps_MsgPrefix: string): Boolean;
begin
  try
    Result := False;
    if ((Pctl_Sender is TCustomEdit) or (Pctl_Sender is TcxCustomEdit)) and
      (Trim(TCustomEdit(Pctl_Sender).Text) = '') then
    begin
      GMessagebox(Ps_MsgID + ' 는(은)' + MDXCI_0005, CDMSE);
      Exit;
    end
    else if (Pctl_Sender is TCombobox) and (Trim(TCombobox(Pctl_Sender).Text) = '')
    then
    begin
      GMessagebox(Ps_MsgID + ' 는(은)' + MDXCI_0005, CDMSE);
      Exit;
    end;

    Result := true;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function BlowFishEncrypt(AKey: AnsiString; APlainText: AnsiString;
  var AData: array of Byte): Integer;
begin
  try
    Init(PAnsiChar(AKey), Length(AKey));
    Result := Encrypt(PAnsiChar(APlainText), Length(APlainText), @AData);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function BlowFishEncrypt(AKey: AnsiString; APlainText: AnsiString): AnsiString;
var
  AEncryptData: array of Byte;
begin
  try
    SetLength(AEncryptData, MaxCommandSize);
    BlowFishEncrypt(AKey, APlainText, AEncryptData);
    SetString(Result, PAnsiChar(@AEncryptData[0]), Length(AEncryptData));
    AEncryptData := Nil;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function SystemFolderRead: string;
var
  sCAry : array [0..30] of Char;
begin
  try
    GetSystemDirectory(sCAry, SizeOf(sCAry));
    Result := sCAry;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function Date8to10(ss_Date: string): string;
var
  rtn_Value: string;
begin
  try
    rtn_Value := '';

    if Length(ss_Date) >= 8 then
    begin
      rtn_Value := Copy(ss_Date, 1, 4) + '-' + Copy(ss_Date, 5, 2) + '-' +
        Copy(ss_Date, 7, 2);
    end;

    Result := rtn_Value;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

// 디버그 에러 내용을 저장 한다.
function gDebugErrSave(sContent: string): string;
const
  _SEND_TXT = '%s│%s│%s│%s│%s│%s│%s│%s│%s│%s│%s│%s';
var
  ErrData, NowTime, BrNo, XmlCode: string;
  i : Integer;
begin
  try
    Result := '';

    XmlCode := '';
    ErrData := En_Coding(sContent);

    ErrData := StringReplace(ErrData, '<?', ' ', [rfReplaceAll]);
    ErrData := StringReplace(ErrData, '?>', ' ', [rfReplaceAll]);
    ErrData := StringReplace(ErrData, '/>', ' ', [rfReplaceAll]);
    ErrData := StringReplace(ErrData, '</', ' ', [rfReplaceAll]);
    ErrData := StringReplace(ErrData, '>', ' ', [rfReplaceAll]);
    ErrData := StringReplace(ErrData, '<', ' ', [rfReplaceAll]);
    ErrData := StringReplace(ErrData, '"', '|', [rfReplaceAll]);
    ErrData := StringReplace(ErrData, '''', '|', [rfReplaceAll]);
    ErrData := StringReplace(ErrData, ',', ' ', [rfReplaceAll]);
    ErrData := GS_PRJ_VERSION + '| ' + ErrData;

    try
      if (Assigned(scb_BranchCode) and (scb_BranchCode.Count > 0)) then
      begin
        i := scb_BranchCode.IndexOf(GT_USERIF.BR);
        if i >= 0 then
          BrNo := scb_BranchName[scb_BranchCode.IndexOf(GT_USERIF.BR)]
        else
          BrNo := GT_USERIF.BR;
      end else
        BrNo := '';
    except
    end;
    NowTime := FormatDateTime('yyyy-mm-dd hh:mm:ss:zzz', Now);

    // 디버깅 정보를 저장
    Result := Format(_SEND_TXT, [XmlCode, ErrData, NowTime, '', GT_USERIF.HD,
      GT_USERIF.BR, '', BrNo, GT_USERIF.CT, GT_USERIF.ID, GT_USERIF.IP,
      GT_USERIF.NM]);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure Log(ss_LogStr, ss_LogFilePathName: String; dType : Integer; bWrite : Boolean );
var
  log_file: file of byte;
  messages: AnsiString;
begin
  // 종료시 자동 저장하는 문구 추가
  try
    if GB_DEBUG_BARO then
    begin
      if dType = 0 then messages := '(' + GetDateTime('hh:mm:ss:zzz') + ') ' + ss_LogStr + #13#10 else
      if dType = 1 then messages := '(' + GetDateTime('yyyy-mm-dd hh:mm:ss:zzz') + ') ' + ss_LogStr + #13#10;

      ss_LogFilePathName := fLogDataPathFile;

      FileMode := fmOpenWrite;
      AssignFile(log_file, ss_LogFilePathName);
      if FileExists(ss_LogFilePathName) then Reset(log_file)
                                        else Rewrite(log_file);
      Seek(log_file, filesize(log_file));
      BlockWrite(log_file, PAnsiChar(messages)^, Length(messages));
      CloseFile(log_file);
    end else
    if ss_LogFilePathName = HEARTLOGPATHFILE then
    begin
      if dType = 0 then messages := '(' + GetDateTime('hh:mm:ss:zzz') + ') ' + ss_LogStr + #13#10 else
      if dType = 1 then messages := '(' + GetDateTime('yyyy-mm-dd hh:mm:ss:zzz') + ') ' + ss_LogStr + #13#10;

      _LOG_CALL_DATA := _LOG_CALL_DATA + messages;
      if (bWrite) Or (Length(_LOG_CALL_DATA) > _MAX_FILE_SIZE) then
      begin
        ss_LogFilePathName := LOGDATADIRECTORY + 'HB_' + FormatDateTime('yyyy-mm-dd_hhmm', Now) + '.log';

        FileMode := fmOpenWrite;
        AssignFile(log_file, ss_LogFilePathName);
        if FileExists(ss_LogFilePathName) then Reset(log_file)
                                          else Rewrite(log_file);
        Seek(log_file, filesize(log_file));
        BlockWrite(log_file, PAnsiChar(_LOG_CALL_DATA)^, Length(_LOG_CALL_DATA));
        CloseFile(log_file);

        _LOG_CALL_DATA := '';
      end;
    end else
    if ss_LogFilePathName = 'DEBUG_LOG' then
    begin
      if dType = 0 then messages := '(' + GetDateTime('hh:mm:ss:zzz') + ') ' + ss_LogStr + #13#10 else
      if dType = 1 then messages := '(' + GetDateTime('yyyy-mm-dd hh:mm:ss:zzz') + ') ' + ss_LogStr + #13#10;

      _LOG_FILE_DATA := _LOG_FILE_DATA + messages;
      if (bWrite) Or (Length(_LOG_FILE_DATA) > _MAX_FILE_SIZE) then
      begin
        ss_LogFilePathName := LOGDATADIRECTORY + FormatDateTime('yyyy-mm-dd_hhmm', Now) + '.log';

        FileMode := fmOpenWrite;
        AssignFile(log_file, ss_LogFilePathName);
        if FileExists(ss_LogFilePathName) then Reset(log_file)
                                          else Rewrite(log_file);
        Seek(log_file, filesize(log_file));
        BlockWrite(log_file, PAnsiChar(_LOG_FILE_DATA)^, Length(_LOG_FILE_DATA));
        CloseFile(log_file);

        _LOG_FILE_DATA := '';
      end;
    end else
    begin
      if dType = 0 then messages := '(' + GetDateTime('hh:mm:ss:zzz') + ') ' + ss_LogStr + #13#10 else
      if dType = 1 then messages := '(' + GetDateTime('yyyy-mm-dd hh:mm:ss:zzz') + ') ' + ss_LogStr + #13#10;

      FileMode := fmOpenWrite;
      AssignFile(log_file, ss_LogFilePathName);
      if FileExists(ss_LogFilePathName) then Reset(log_file)
                                        else Rewrite(log_file);
      Seek(log_file, filesize(log_file));
      BlockWrite(log_file, PAnsiChar(messages)^, Length(messages));
      CloseFile(log_file);
    end;
  except
  end;
end;

procedure WKLog(ss_LogStr, ss_LogFilePathName: String);
var
	log_file: file of byte;
	messages: AnsiString;
begin
	try
		FileMode := fmOpenWrite;
		AssignFile(log_file, ss_LogFilePathName);

		if FileExists(ss_LogFilePathName) = true then
			Reset(log_file)
		else
			Rewrite(log_file);

		Seek(log_file, filesize(log_file));
		messages := ss_LogStr + #13#10;

		BlockWrite(log_file, PAnsiChar(messages)^, Length(messages));
		CloseFile(log_file);
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure CXELog(ss_LogStr : String);
var
  log_file : file of Byte;
  messages: AnsiString;
  ss_LogFilePathName : String;
begin
  try
    if gsTempLogFileDateTime = '' then
      gsTempLogFileDateTime := FormatDateTime('YYYY-MM-DD HH:NN:SS', Now);

    ss_LogFilePathName := WINTEMPDIRECTORY + 'CXELog.log';

    FileMode := fmOpenWrite;
    AssignFile(log_file, ss_LogFilePathName);

    if FileExists(ss_LogFilePathName) = true then
      Reset(log_file)
    else
      Rewrite(log_file);

    Seek(log_File, filesize(log_File));
    messages := '(' + GetDateTime('yyyy-mm-dd hh:mm:ss:zzz') + ') ' + ss_LogStr + #13#10;
    BlockWrite(log_File, PAnsiChar(messages)^, Length(messages));
    CloseFile(log_File);
  except
  end;
end;

function GetDateTime(const ss_Format: string): string;
begin
  try
    if ss_Format = 'yyyy-mm-dd hh:mm:ss' then
      Result := FormatDateTime('yyyy-mm-dd hh:mm:ss', Now) else
    if ss_Format = 'hh:mm:ss:zzz' then
      Result := FormatDateTime('hh:mm:ss:zzz', Now) else
    if ss_Format = 'yyyymmddhhmmss' then
      Result := FormatDateTime('yyyymmddhhmmss', Now) else
    if ss_Format = 'yyyymmdd' then
      Result := FormatDateTime('yyyymmdd', Now) else
    if ss_Format = 'yyyy-mm-dd' then
      Result := FormatDateTime('yyyy-mm-dd', Now) else
    if ss_Format = 'hhmmss' then
      Result := FormatDateTime('hhmmss', Now) else
    if ss_Format = 'yyyy-mm-dd hh:mm:ss:zzz' then
      Result := FormatDateTime('yyyy-mm-dd hh:mm:ss:zzz', Now);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetHttpData(AURL: string; ATimeOut: Integer): string;
var
  Http: TIdHTTP;
begin
  try
    Result := '';

    Http := TIdHTTP.Create(nil);
    try
      try
        Http.Request.UserAgent := 'Mozilla/4.0';
        Http.HandleRedirects := True;
        Http.ConnectTimeout := ATimeOut;
        Http.ReadTimeout := 3 * 1000;

        Result := Http.Get(AURL);
      except
        Result := '';
      end;
    finally
      Http.Free;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function DecBinaryKey(const AKey: string): string;
var
  i: Integer;
  c: string;
begin
  try
    Result := '';
    i := 1;

    while true do
    begin
      c := Copy(AKey, i, 3);

      Result := Result + char(StrToInt(c));

      if Length(AKey) > i + 3 then
        Inc(i, 3)
      else
        Break;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure AssertProc(const AMessage, AFilename: String; ALineNumber: Integer;
  AErrorAddr: Pointer);
var
  Param, XmlData, ErrMsg : string;
  sTmp : AnsiString;
  ErrCode: Integer;
begin
  if GT_USERIF.LOGIN <> '1' then Exit;
  try
    Log('PreMessage, Amessage ' + PreMessage + CRLF + AMessage, LOGDATAPATHFILE);
    if PreMessage <> AMessage then
    begin
      sTmp := AMessage;
      sTmp := Copy(sTmp, 1, 1990);

      Param := gDebugErrSave(Format('%s(%d) %s', [ExtractFileName(AFilename), ALineNumber, sTmp]));
      Param := StringReplace(Param, '&', '&amp;', [rfReplaceAll]);

			if not RequestBase(GetCallable05('tckDebugLog', 'client_log.tck_debug_log', Param_Filtering(Param)), XmlData, ErrCode, ErrMsg) then
      begin
        Exit;
      end;

      PreMessage := AMessage;
    end;
  except

  end;
end;

function GetFileVersion(const Filename: string;
  var Major, Minor, Release, Build: Word): Boolean;
var
  dwBufferSize: DWORD;
  dwReserved: DWORD;
  pBuffer: PChar;
  lpFixedInfo: PVSFixedFileInfo;
  nLen: UINT;
begin
  try
    Result := False;
    Major := 0;
    Minor := 0;
    Release := 0;
    Build := 0;

    if not FileExists(Filename) then
      Exit;

    dwBufferSize := GetFileVersionInfoSize(PChar(Filename), dwReserved);
    if dwBufferSize > 0 then
    begin
      GetMem(pBuffer, dwBufferSize);
      try
        if Assigned(pBuffer) then
        begin
          if not GetFileVersionInfo(PChar(Filename), dwReserved, dwBufferSize,
            pBuffer) then
            Exit;
          if not VerQueryValue(pBuffer, '\', Pointer(lpFixedInfo), nLen) then
            Exit;
          Major := Word(lpFixedInfo.dwFileVersionMS shr 16);
          Minor := Word(lpFixedInfo.dwFileVersionMS and $FFFF);
          Release := Word(lpFixedInfo.dwFileVersionLS shr 16);
          Build := Word(lpFixedInfo.dwFileVersionLS and $FFFF);
          Result := true;
        end;
      finally
        FreeMem(pBuffer);
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure DirMake(Filename: string);
begin
  try
    if not DirectoryExists(Filename) then
      MkDir(Filename);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function MakePacket(var AoutData: array of Byte;
  APacketType, APacketData, AEncryptKey: AnsiString): Integer;
var
  AHeader: TTCKCommonHeader;
  EncryptLen: Integer;
begin
  try
    _CS_MakePacket.Acquire;
    try
      Result := 0;
      ZeroMemory(@AHeader, SizeOf(AHeader));
      AHeader.SOH := SOH;
      if Length(APacketType) > 4 then
        APacketType := Copy(APacketType, 1, 4);

      Move(APacketType[1], AHeader.PacketType[0], Length(APacketType));
      AHeader.PacketVersion[0] := Chr($0);
      AHeader.PacketVersion[1] := Chr($1);
      AHeader.STX := STX;

      ZeroMemory(@AoutData, SizeOf(AoutData));
      EncryptLen := BlowFishEncrypt(AEncryptKey, APacketData, AoutData);
      AHeader.PacketLength := EncryptLen;

      Move(AoutData, AoutData[SizeOf(AHeader)], SizeOf(AoutData));
      Move(AHeader, AoutData, SizeOf(AHeader));
      Inc(Result, SizeOf(AHeader));

      Inc(Result, EncryptLen);

      AoutData[Result] := Byte(ETX);
      Inc(Result);
    finally
      _CS_MakePacket.Release;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function En_Coding(sTemp: string): string;
begin
  try
    Result := StringReplace(sTemp, '&', '&amp;', [rfReplaceAll]);
    Result := StringReplace(Result, '<', '&lt;', [rfReplaceAll]);
    Result := StringReplace(Result, '>', '&gt;', [rfReplaceAll]);
    Result := StringReplace(Result, '''', '&apos;', [rfReplaceAll]);
    Result := StringReplace(Result, '"', '&quot;', [rfReplaceAll]);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function Html_DeCoding(sTemp: string): string;
begin
  try
    Result := StringReplace(sTemp , '</HTML>', '', [rfReplaceAll]);
    Result := StringReplace(Result, '</HEAD>', '', [rfReplaceAll]);
    Result := StringReplace(Result, '</BODY>', '', [rfReplaceAll]);
    Result := StringReplace(Result, '</PRE>' , '', [rfReplaceAll]);
    Result := StringReplace(Result, '<HTML>' , '', [rfReplaceAll]);
    Result := StringReplace(Result, '<HEAD>' , '', [rfReplaceAll]);
    Result := StringReplace(Result, '<BODY>' , '', [rfReplaceAll]);
    Result := StringReplace(Result, '<PRE>'  , '', [rfReplaceAll]);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function Param_Filtering(sTemp: AnsiString): AnsiString;
begin
	try
    Result := StringReplace(sTemp, '"'                 , '', [rfReplaceAll]);
    Result := StringReplace(Result, '--'                , '', [rfReplaceAll]);
    Result := StringReplace(Result, '*/'                , '', [rfReplaceAll]);
    Result := StringReplace(Result, '/*'                , '', [rfReplaceAll]);
    Result := StringReplace(Result, 'union'             , '', [rfIgnoreCase]);  // rfIgnoreCase 대소문자 구분 없이 변환
    Result := StringReplace(Result, 'select'            , '', [rfIgnoreCase]);
    Result := StringReplace(Result, 'insert'            , '', [rfIgnoreCase]);
    Result := StringReplace(Result, 'drop'              , '', [rfIgnoreCase]);
    Result := StringReplace(Result, 'update'            , '', [rfIgnoreCase]);
    Result := StringReplace(Result, 'and'               , '', [rfIgnoreCase]);
    Result := StringReplace(Result, 'or'                , '', [rfIgnoreCase]);
    Result := StringReplace(Result, 'if'                , '', [rfIgnoreCase]);
    Result := StringReplace(Result, 'join'              , '', [rfIgnoreCase]);
    Result := StringReplace(Result, 'substring'         , '', [rfIgnoreCase]);
    Result := StringReplace(Result, 'from'              , '', [rfIgnoreCase]);
    Result := StringReplace(Result, 'where'             , '', [rfIgnoreCase]);
    Result := StringReplace(Result, 'declare'           , '', [rfIgnoreCase]);
    Result := StringReplace(Result, 'substr'            , '', [rfIgnoreCase]);
    Result := StringReplace(Result, 'openrowset'        , '', [rfIgnoreCase]);
    Result := StringReplace(Result, 'xp_'               , '', [rfIgnoreCase]);
    Result := StringReplace(Result, 'sysobjects'        , '', [rfIgnoreCase]);
    Result := StringReplace(Result, 'user_tables'       , '', [rfIgnoreCase]);
    Result := StringReplace(Result, 'user_table_columns', '', [rfIgnoreCase]);
    Result := StringReplace(Result, 'table_name'        , '', [rfIgnoreCase]);
    Result := StringReplace(Result, 'column_name'       , '', [rfIgnoreCase]);
    Result := StringReplace(Result, 'syscolumns'        , '', [rfIgnoreCase]);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function M_SGParseTXT(tText : String) : string;
Var clr, sTmp : String;
begin
  try
    clr := '#'+IntToHex($001E8EFF, 6);

    sTmp := tText;
    sTmp := StringReplace(sTmp, '&lt;!SS&gt;', '', [rfReplaceAll]);
    sTmp := StringReplace(sTmp, '&lt;!SE&gt;', '', [rfReplaceAll]);
    sTmp := StringReplace(sTmp, '&lt;!CS&gt;','<B><FONT Color = "'+clr+'">', [rfReplaceAll]);
    sTmp := StringReplace(sTmp, '&lt;!CE&gt;','</B></FONT>', [rfReplaceAll]);

    Result := sTmp;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetStrToShortDateTimeStr(ADatetime: string; AIsViewDate: Boolean): string;
begin
  try
    Result := ADatetime;

    if AIsViewDate and (Length(Result) = 11) then Exit else
    if not AIsViewDate and (Length(Result) = 8) then  Exit;

    Result := RemoveDatetimeSeparator(Result);

    if Result = '' then Exit;

    if AIsViewDate then // MM-DD HH:NN
      Result := Copy(Result, 5, 2) + '-' + Copy(Result, 7, 2) + ' ' + Copy(Result, 9, 2) + ':' + Copy(Result, 11, 2)
    else // HH:NN:SS
      Result := Copy(Result, 9, 2) + ':' + Copy(Result, 11, 2) + ':' +  Copy(Result, 13, 2);

  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetStrToDateTimeGStr(ADatetime : string; AGubun : Integer) : String;
begin
  try
    Result := ADatetime;

    if ( AGubun = 0 ) and (Length(Result) = 11) then Exit else
    if ( AGubun = 1 ) and (Length(Result) = 8) then  Exit else
    if ( AGubun = 2 ) and (Length(Result) = 13) then Exit else
    if ( AGubun = 3 ) and (Length(Result) = 11) then Exit;

    Result := RemoveDatetimeSeparator(Result);

    if Result = '' then Exit;

    if AGubun = 0 then // MM-DD HH:NN
      Result := Copy(Result, 5, 2) + '-' + Copy(Result, 7, 2) + ' ' + Copy(Result, 9, 2) + ':' + Copy(Result, 11, 2)
    else
    if AGubun = 1 then // HH:NN:SS
      Result := Copy(Result, 9, 2) + ':' + Copy(Result, 11, 2) + ':' +  Copy(Result, 13, 2)
    else
    if AGubun = 2 then // MM-DD HH:NN:SS
			Result := Copy(Result, 5, 2) + '-' + Copy(Result, 7, 2) + ' ' + Copy(Result, 9, 2) + ':' + Copy(Result, 11, 2) + ':' + Copy(Result, 13, 2)
		else
    if AGubun = 3 then // YYYY-MM-DD HH:NN:SS
			Result := Copy(Result, 1, 4) + '-' + Copy(Result, 5, 2) + '-' + Copy(Result, 7, 2) + ' ' + Copy(Result, 9, 2) + ':' + Copy(Result, 11, 2) + ':' + Copy(Result, 13, 2)
		else			
		if AGubun = 4 then // YYYY-MM-DD HH:NN:SS
			Result := Copy(Result, 1, 4) + '-' + Copy(Result, 5, 2) + '-' + Copy(Result, 7, 2);
	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetStrToLongDateTimeStr(ADatetime: string): string;
begin
  try
    Result := ADatetime;
    Result := RemoveDatetimeSeparator(Result);

    if Length(Result) < 14 then
    begin
      Result := ADatetime;
      Exit;
    end;

    Result := Format('%s-%s-%s %s:%s:%s', [Copy(Result, 1, 4), Copy(Result, 5, 2),
      Copy(Result, 7, 2), Copy(Result, 9, 2), Copy(Result, 11, 2),
      Copy(Result, 13, 2)]);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function RemoveDatetimeSeparator(ADatetime: string): string;
begin
  try
    Result := ADatetime;

    Result := StringReplace(Result, '-', '', [rfReplaceAll]);
    Result := StringReplace(Result, ':', '', [rfReplaceAll]);
    Result := StringReplace(Result, ' ', '', [rfReplaceAll]);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

// 공백제거 기능 삭제
function GetTextSeperationEx2(ss_Delimiter: string; ss_DelimitedText: string;
  var AStrList: TStringList): Boolean;
var
  i, iLength: Integer;
  s, s1: String;
begin
  try
    Result := False;

    AStrList.Clear;
    s := ss_DelimitedText;
    s := s + ss_Delimiter;
    iLength := Length(s);

    if Pos(ss_Delimiter, s) = 0 then
      Exit;
    i := 1;
    s1 := '';

    while i <= iLength do
    begin
      s1 := s1 + s[i];
      if (s[i] = ss_Delimiter) then
      begin
        s1 := Copy(s1, 1, Length(s1) - 1);
        AStrList.Add(s1);
        s1 := '';
      end;
      Inc(i);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function RemoveComma(AValue: string): string;
begin
  try
    Result := StringReplace(AValue, ',', '', [rfReplaceAll]);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function StrToCall(call: string): string;
begin
	try
    Result := call;
    call := StringReplace(call, '-', '', [rfReplaceAll]);
    if (Length(call) > 4) and (Pos('-', call) <= 0) then
    begin
      case Length(call) of
        5 .. 7:
          Result := Copy(call, 1, Length(call) - 4) + '-' +
            Copy(call, Length(call) - 3, 4);
        8:
          Result := Copy(call, 1, 4) + '-' + Copy(call, 5, 4);
        9:
          Result := Copy(call, 1, 2) + '-' + Copy(call, 3, 3) + '-' +
            Copy(call, 6, 4);
        10:
          begin
            if Copy(call, 1, 2) = '02' then
              Result := Copy(call, 1, 2) + '-' + Copy(call, 3, 4) + '-' +
                Copy(call, 7, 4)
            else
              Result := Copy(call, 1, 3) + '-' + Copy(call, 4, 3) + '-' +
                Copy(call, 7, 4);
          end;
        11:
          Result := Copy(call, 1, 3) + '-' + Copy(call, 4, 4) + '-' +
            Copy(call, 8, 4);
        12:
          begin
            if Pos('#', call) > 0 then
              Result := Copy(call, 1, 3) + '-' + Copy(call, 4, 3) + '-' +
                Copy(call, 7, 4) + Copy(call, 11, 2);
          end;
				13:
					begin
						if Pos('#', call) > 0 then
							Result := Copy(call, 1, 3) + '-' + Copy(call, 4, 4) + '-' +
								Copy(call, 8, 4) + Copy(call, 12, 2);
          end;
			end;
		end
    else
			Result := call;
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

function StrToCallMasking(call: string; AGubun:integer): string;  //0:No Masking, 1: 국번Masking, 2: 뒷번호Masking
var sTmp : string;
begin
	try
    Result := call;
    call := StringReplace(call, '-', '', [rfReplaceAll]);
    if (Length(call) > 4) and (Pos('-', call) <= 0) then
    begin
      case Length(call) of
				5 .. 7:
				begin
					if (AGubun = 0) then sTmp := Copy(call, Length(call) - 3, 4) else sTmp := '****';
					Result := Copy(call, 1, Length(call) - 4) + '-' + sTmp;
				end;
        8:
				begin
					if (AGubun = 0) then sTmp := Copy(call, 5, 4) else sTmp := '****';
					Result := Copy(call, 1, 4) + '-' + sTmp;
				end;
				9:
				begin
					if AGubun = 0 then
						Result := Copy(call, 1, 2) + '-' + Copy(call, 3, 3) + '-' +	Copy(call, 6, 4)	else
					if AGubun = 1 then
						Result := Copy(call, 1, 2) + '-' + '****' + '-' +	Copy(call, 6, 4)	else
					if AGubun = 2 then
						Result := Copy(call, 1, 2) + '-' + Copy(call, 3, 3) + '-' +	'****'	;
				end;
        10:
				begin
					if Copy(call, 1, 2) = '02' then
					begin
						if AGubun = 0 then
							Result := Copy(call, 1, 2) + '-' + Copy(call, 3, 4) + '-' + Copy(call, 7, 4) else
						if AGubun = 1 then
							Result := Copy(call, 1, 2) + '-' + '****' + '-' + Copy(call, 7, 4) else
						if AGubun = 2 then
							Result := Copy(call, 1, 2) + '-' + Copy(call, 3, 4) + '-' + '****';
					end	else
					begin
						if AGubun = 0 then
							Result := Copy(call, 1, 3) + '-' + Copy(call, 4, 3) + '-' + Copy(call, 7, 4) else
						if AGubun = 1 then
							Result := Copy(call, 1, 3) + '-' + '****' + '-' + Copy(call, 7, 4) else
						if AGubun = 2 then
							Result := Copy(call, 1, 3) + '-' + Copy(call, 4, 3) + '-' + '****';
					end;
				end;
				11:
				begin
					if AGubun = 0 then
						Result := Copy(call, 1, 3) + '-' + Copy(call, 4, 4) + '-' + Copy(call, 8, 4)	else
					if AGubun = 1 then
						Result := Copy(call, 1, 3) + '-' + '****' + '-' + Copy(call, 8, 4)	else
					if AGubun = 2 then
						Result := Copy(call, 1, 3) + '-' + Copy(call, 4, 4) + '-' + '****';
				end;
        12:
				begin
					if Pos('#', call) > 0 then
					begin
						if AGubun = 0 then
							Result := Copy(call, 1, 3) + '-' + Copy(call, 4, 3) + '-' +	Copy(call, 7, 4) + Copy(call, 11, 2) else
						if AGubun = 1 then
							Result := Copy(call, 1, 3) + '-' + '****' + '-' +	Copy(call, 7, 4) + Copy(call, 11, 2) else
						if AGubun = 2 then
							Result := Copy(call, 1, 3) + '-' + Copy(call, 4, 3) + '-' +	'****' + Copy(call, 11, 2);
					end;
				end;
				13:
				begin
					if Pos('#', call) > 0 then
					begin
						if AGubun = 0 then
							Result := Copy(call, 1, 3) + '-' + Copy(call, 4, 4) + '-' + Copy(call, 8, 4) + Copy(call, 12, 2) else
						if AGubun = 1 then
							Result := Copy(call, 1, 3) + '-' + '****' + '-' + Copy(call, 8, 4) + Copy(call, 12, 2) else
						if AGubun = 2 then
							Result := Copy(call, 1, 3) + '-' + Copy(call, 4, 4) + '-' + '****' + Copy(call, 12, 2);
					end;
				end;
			end;
		end
    else
			Result := call;
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

function CallToStr(AStr: string): string;
begin
  try
    Result := StringReplace(AStr, '-', '', [rfReplaceAll]);
    if Pos('#', AStr) > 0 then
    begin
      Result := Copy(AStr, 1, Length(AStr) - 2)
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetTextSeperationEx(ss_Delimiter: string; ss_DelimitedText: string;
  var AStrList: TStringList): Boolean;
var
  i, iLength: Integer;
  s, s1: String;
begin
  try
    Result := False;
    AStrList.Clear;
    ss_DelimitedText := StringReplace(ss_DelimitedText, ' ', '', [rfReplaceAll]);
    s := ss_DelimitedText;
    s := s + ss_Delimiter;
    iLength := Length(s);

    if Pos(ss_Delimiter, s) = 0 then
      Exit;

    i := 1;
    s1 := '';

    while i <= iLength do
    begin
      s1 := s1 + s[i];
      if (s[i] = ss_Delimiter) then
      begin
        s1 := Copy(s1, 1, Length(s1) - 1);
        AStrList.Add(s1);
        s1 := '';
      end;
      Inc(i);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function Rpad(s: AnsiString; icount: Integer; c: char): string;
begin
  try
    s := Trim(s);
    if Length(s) <= icount then
    begin
      while Length(s) < icount do
        s := s + c;
    end;
    Result := s;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function AnsiRpad(s: AnsiString; icount: Integer; c: Ansichar): AnsiString;
begin
  try
    s := Trim(s);
    if Length(s) <= icount then
    begin
      while Length(s) < icount do
        s := s + c;
    end;
    Result := s;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function AddPhoneDDD(APhone: string): string;
begin
  try
    Result := APhone;
    if not GS_DDD_Add then
      Exit;

    if APhone[1] = '0' then
      Exit;

    if APhone[1] = '1' then
      Exit;

    if GS_DDD_Num = '002' then
      Result := '02' + APhone
    else
      Result := GS_DDD_Num + APhone;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function StrToMoney(AValue: string): string;
var
  Money: Double;
begin
  try
    AValue := RemoveAll(AValue, ',');
    Money := StrToFloatDef(AValue, 0.0);

    Result := FormatFloat('#,##0.#', Money);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetTextSeperationFirst(ss_Delimiter: string;
  ss_DelimitedText: string): string;
begin
  try
    if Pos(ss_Delimiter, ss_DelimitedText) > 0 then
      Result := Copy(ss_DelimitedText, 1, Pos(ss_Delimiter, ss_DelimitedText) - 1)
    else
      Result := ss_DelimitedText;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetRoadLength(ss_dllPath, ss_x1, ss_y1, ss_x2, ss_y2: AnsiString)
  : Extended;
var
  func: TGetRoadLength;
  ls_PathFile: String;
  ls_Value: AnsiString;
  dllHandle: THandle;
begin
  try
    Result := 0;

    if ss_x1 = '' then
      Exit;
    if ss_y1 = '' then
      Exit;
    if ss_x2 = '' then
      Exit;
    if ss_y2 = '' then
      Exit;

    try
      ls_PathFile := ss_dllPath;

      dllHandle := LoadLibrary(PChar(ls_PathFile));
      if dllHandle < 32 then
        Exit;

      @func := GetprocAddress(dllHandle, 'GetRoadLength');

      if Assigned(func) then
      begin
        ls_Value := System.AnsiStringS.StrPas(func(ss_x1, ss_y1, ss_x2, ss_y2));
        Result := StrToFloatDef(ls_Value, 0);
      end;
    finally
      FreeLibrary(LoadLibrary(PChar(ls_PathFile)))
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetMoneyStr(AValue: Integer): string;
begin
  try
    Result := FormatFloat('#,##0', AValue);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function NumericCheck(ss_dllPath, ss_Msg, ss_str: AnsiString): Boolean;
var
  func: TNumericCheck;
  ls_PathFile: string;
begin
  try
    Result := False;

    try
      ls_PathFile := ss_dllPath;
      if LoadLibrary(PChar(ls_PathFile)) < 32 then
        Exit;
      @func := GetprocAddress(LoadLibrary(PChar(ls_PathFile)), 'NumericCheck');
      if (@func = nil) then
        Exit;
      if UpperCase(System.AnsiStringS.StrPas(func(ss_Msg, ss_str))) = 'TRUE' then
        Result := true;
    finally
      FreeLibrary(LoadLibrary(PChar(ls_PathFile)))
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function fCallNumCheck8282( ACallNum : String ) : String;
Var sChkNum : String;
begin
  ACallNum := StringReplace(ACallNum, '-', '', [rfReplaceAll]);
  try
    Result := ACallNum;
    if IsDaeJeonShare(GS_PRJ_AREA = 'O', GT_USERIF.ShareNo) then   // 대전연합만 처리  2016.02.02 신성현과장님 요청 LYB
    begin
      sChkNum := Copy(ACallNum, 1, 3);
      if ( sChkNum = '031' ) Or ( sChkNum = '032' ) Or ( sChkNum = '033' ) Or
         ( sChkNum = '041' ) Or ( sChkNum = '042' ) Or ( sChkNum = '043' ) Or
         ( sChkNum = '044' ) Or ( sChkNum = '051' ) Or ( sChkNum = '052' ) Or
         ( sChkNum = '053' ) Or ( sChkNum = '054' ) Or ( sChkNum = '055' ) Or
         ( sChkNum = '061' ) Or ( sChkNum = '062' ) Or ( sChkNum = '063' ) Or
         ( sChkNum = '064' ) Or ( sChkNum = '080' ) then
      begin
        Result := Copy(ACallNum, 1, 10);             // 10자리 맞춤
      end else
      if ( sChkNum = '050' ) Or ( sChkNum = '070' ) then
      begin
        Result := Copy(ACallNum, 1, 11);             // 11자리 맞춤
      end;
    end;
  except
    Result := ACallNum;
  end;
end;

function UrlEncode(const svar: AnsiString): string;
  function hexstr(val: LongInt; cnt: byte): shortstring;
  const
    HexTbl: array [0 .. 15] of Ansichar = '0123456789ABCDEF';
  var
    i: LongInt;
  begin
    hexstr[0] := Ansichar(cnt);
    for i := cnt downto 1 do
    begin
      hexstr[i] := HexTbl[val and $F];
      val := val shr 4;
    end;
  end;

const
  LAT_TABLE = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
var
  i, Len: longword;
  c: Ansichar;
begin
  try
    Result := '';
    i := 1;
    Len := Length(svar);
    while i <= Len do
    begin
      c := svar[i];
      if (Pos(c, LAT_TABLE) = 0) and (c <> ' ') and (c <> '_') then
      begin
        Result := Result + '%' + hexstr(ord(c), 2);
        Inc(i);
      end
      else
      begin
        if c = ' ' then
          Result := Result + '+'
        else
          Result := Result + c;
        Inc(i);
      end
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure pSetBranch(BrComBo: TcxComboBox);
Var HdCd, HdCd_Old: string;
    i : Integer;
begin
  try
    BrComBo.Properties.Items.Clear;
    if GT_USERIF.LV = '10' then   // 상담원
    begin
      for I := 0 to scb_BranchName.Count - 1 do
      begin
         //지사 표시 시 지사코드, 지사명표기
         BrComBo.Properties.Items.Add('('+scb_BranchCode[I]+')' + scb_BranchName[I]);
      end;
    end else
    begin
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      begin
        for I := 0 to scb_FamilyBrName.Count - 1 do
        begin
           HdCd := frm_Main.func_search_hdNo(scb_FamilyBrCode[I]);
           if HdCd <> HdCd_Old then
           begin
  //					 RequestDataHeadInfo(HdCd);
             HdCd_Old := HdCd;
           end;
           //지사 표시 시 지사코드, 지사명표기
           BrComBo.Properties.Items.Add('('+scb_FamilyBrCode[I]+')' + scb_FamilyBrName[I]);
        end;
      end else
      begin
        for I := 0 to scb_BranchName.Count - 1 do
        begin
           HdCd :='';
           HdCd := frm_Main.func_search_hdNo(scb_BranchCode[I]);
           if HdCd <> HdCd_Old then
           begin
  //           RequestDataHeadInfo(HdCd);
             HdCd_Old := HdCd;
           end;
           //지사 표시 시 지사코드, 지사명표기
           BrComBo.Properties.Items.Add('('+scb_BranchCode[I]+')' + scb_BranchName[I]);
        end;
      end;
    end;
    BrComBo.ItemIndex := 0;
  except
    on e: exception do
    begin
			Assert(False, 'SetBranch Error :' + E.Message);
    end;
  end;
end;


procedure CB_HdCng_BrCng(HdCombo, BrComBo: TcxComboBox);
Var
  i: Integer;
begin
  try
    if HdCombo.ItemIndex < 0 then
      Exit;

    BrComBo.Properties.Items.Clear;
    BrComBo.Properties.Items.Insert(0, '지사선택');

    for i := 0 to scb_Branch.Count - 1 do
    begin
      if scb_HdNo[HdCombo.ItemIndex] = scb_HdCode[i] then
      begin
        BrComBo.Properties.Items.Add(scb_Branch[i]);
      end;
    end;

    BrComBo.Tag := 1;
    BrComBo.ItemIndex := 0;
    BrComBo.Tag := 0;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetMacAddressListStr: string;
var
  pAdapterInfo : IpTypes.PIP_ADAPTER_INFO;
  BufLen, Status : cardinal;
  StrDesc: string;
begin
  try
    Result := '';
    BufLen:= sizeof(IP_ADAPTER_INFO);
    GetAdaptersInfo(nil, BufLen);
    pAdapterInfo:= AllocMem(BufLen);
    try
      Status:= GetAdaptersInfo(pAdapterInfo,BufLen);
      if (Status = ERROR_SUCCESS) then
      begin
        repeat
          try
            StrDesc := Format('Mac:%s / Desc:%s / GW:%s',
              [MACToStr(@pAdapterInfo^.Address, pAdapterInfo^.AddressLength),
              Trim(pAdapterInfo^.Description), Trim(pAdapterInfo^.GatewayList.IpAddress.S) ]);
          finally
            pAdapterInfo := pAdapterInfo.Next;
          end;
          Result := Result + IfThen(Result = '', '', #13#10) + StrDesc;
        until pAdapterInfo = nil;
      end;
    finally
      Freemem(pAdapterInfo);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function HexToByte(const AHex: string): byte;
  function CharToByte(c: char): byte;
  begin
    if c <= '9' then
      Result := ord(c) - ord('0')
    else
      Result := 10 + ord(Upcase(c)) - ord('A');
  end;
begin
  try
    Result := 16 * CharToByte(AHex[1]) + CharToByte(AHex[2]);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function Hex6ToColor(AColor: string): TColor;
begin
  Result := $00FFFFFF;
  try
    if Length(AColor) = 6 then
      Result := RGB(HexToByte(Copy(AColor, 1, 2)), HexToByte(Copy(AColor, 3, 2)
        ), HexToByte(Copy(AColor, 5, 2)));
  except
    Result := $00FFFFFF;
  end;
end;

function ColorToHex6(AColor: TColor): string;
begin
  try
    Result := IntToHex(ColorToRGB(AColor), 6);
    Result := Copy(Result, 5, 2) + Copy(Result, 3, 2) + Copy(Result, 1, 2);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function Data_Parser(var Data, Types: string): string;
var
  sParser: string;
  iLen: Integer;
begin
  try
    sParser := '';
    sParser := StringReplace(Data, '-', '', [rfReplaceAll]);
    sParser := StringReplace(sParser, ' ', '', [rfReplaceAll]);

    if Types = 'Date' then
    begin
      sParser := StringReplace(sParser, '-', '', [rfReplaceAll]);
      sParser := StringReplace(sParser, ' ', '', [rfReplaceAll]);
      iLen := Length(sParser);
      if iLen = 8 then
      begin
        Result := Copy(sParser, 0, 4) + '-' + Copy(sParser, 5, 2) + '-' +
          Copy(sParser, 7, 2);
      end
      else
        Result := sParser;
    end
    else if Types = 'Tel' then
    begin
      iLen := Length(sParser);
      if iLen = 8 then
      begin
        // 1688-6618
        Result := Copy(sParser, 0, 4) + '-' + Copy(sParser, 5, 4);
      end
      else if iLen = 9 then
      begin
        // 02-123-1234
        Result := Copy(sParser, 0, 2) + '-' + Copy(sParser, 3, 3) + '-' +
          Copy(sParser, 6, 4);
      end
      else if iLen = 10 then
      begin
        // 02-1234-1234
        if Copy(sParser, 0, 2) = '02' then
          Result := Copy(sParser, 0, 2) + '-' + Copy(sParser, 3, 4) + '-' +
            Copy(sParser, 7, 4)
        else
          // 031-123-1234 or 010-123-1234
          Result := Copy(sParser, 0, 3) + '-' + Copy(sParser, 4, 3) + '-' +
            Copy(sParser, 7, 4);
      end
      else if iLen = 11 then
      begin
        // 031-1234-1234 or 010-1234-1234
        Result := Copy(sParser, 0, 3) + '-' + Copy(sParser, 4, 4) + '-' +
          Copy(sParser, 8, 4);
      end
      else if iLen = 13 then
      begin
        if Pos('#', sParser) > 0 then
          Result := Copy(sParser, 1, 3) + '-' + Copy(sParser, 4, 4) + '-' +
            Copy(sParser, 8, 4) + Copy(sParser, 12, 2);
      end
      else
        Result := sParser;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function FormatCash(const AValue: Integer): string;
begin
  try
    Result := FormatFloat('#,##0', AValue);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function StrToTS(const AValue: string) : string;
begin
  try
    Result := FormatFloat('#,##0', StrToFloatDef(AValue, 0));
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function RemovePhone(const AValue: string): string;
begin
  try
    Result := ReplaceAll(AValue, '-', '');
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function CheckHPType(AHP: string; var AErrMsg: string): Boolean;
var
  HP1, HP2, HP3: string;
begin
  try
    Result := False;

    AHP := RemovePhone(AHP);

    if (Length(AHP) < 10) or (Length(AHP) > 11) then
    begin
      AErrMsg := Format('[%s] 핸드폰 길이를 확인해 주세요.', [AHP]);
      Exit;
    end;

    HP1 := Copy(AHP, 1, 3);
    if (HP1 <> '010') and (HP1 <> '011') and (HP1 <> '016') and (HP1 <> '017') and
      (HP1 <> '018') and (HP1 <> '019') then
    begin
      AErrMsg := Format('[%s] 올바르지 않은 통신사 번호입니다..', [HP1]);
      Exit;
    end;

    if Length(AHP) = 10 then
      HP2 := Copy(AHP, 4, 3)
    else
      HP2 := Copy(AHP, 4, 4);
    if HP2[1] = '0' then
    begin
      AErrMsg := Format('[%s] 올바르지 않은 핸드폰 번호입니다.(앞자리)', [HP2]);
      Exit;
    end;

    HP3 := Copy(AHP, Length(HP1) + Length(HP2) + 1, 4);

    Result := true;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetSmsMemoLength(AText: String): Integer;
begin
  try
    Result := Length(AnsiString(StringReplace(AText, #13#10, #10,
      [rfReplaceAll])));
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetSeperatorCount(AValue, ASeperator: AnsiString): Integer;
begin
  try
    Result := 0;

    while Pos(ASeperator, AValue) > 0 do
    begin
      Inc(Result);
      AValue := Copy(AValue, Pos(ASeperator, AValue) + Length(ASeperator),
        Length(AValue));
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function Check_ID(AId, ABr_no: string): Boolean;
begin
  if (AId = '8282sun') and (ABr_no = 'E717') then
    Result := true
  else
    Result := False;
end;

function GetIniColor(ss_IniFile, ss_Section, ss_Key, ss_Value: string): TColor;
var
  ln_envfile: TIniFile;
begin
  try
    Result := clWindow;

    ln_envfile := TIniFile.Create(ss_IniFile);
    try
      if not FileExists(ss_IniFile) then
        Exit;
      Result := StringToColor(ln_envfile.ReadString(ss_Section, ss_Key,
        ss_Value));
    finally
      ln_envfile.Free;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function SetIniColor(ss_IniFile, ss_Section, ss_Key, ss_Value: string): Boolean;
var
  ln_envfile: TIniFile;
begin
  try
    Result := False;

    ln_envfile := TIniFile.Create(ss_IniFile);
    try
      if not FileExists(ss_IniFile) then
        Exit;
      ln_envfile.WriteString(ss_Section, ss_Key, ss_Value);
    finally
      ln_envfile.Free;
    end;

    Result := true;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure base64Encode(const InBuffer; InSize: DWORD; var OutBuffer);
var
  X: Integer;
  PIn, POut: TPAByte;
  Acc: Cardinal;
begin
  try
    if InSize > 0 then
    begin
      PIn := @InBuffer;
      POut := @OutBuffer;

      for X := 1 to InSize div 3 do
      begin
        Acc := PIn^[0] shl 16 + PIn^[1] shl 8 + PIn^[2];

        POut^[0] := byte(cBase64Codec[(Acc shr 18) and $3F]);
        POut^[1] := byte(cBase64Codec[(Acc shr 12) and $3F]);
        POut^[2] := byte(cBase64Codec[(Acc shr 6) and $3F]);
        POut^[3] := byte(cBase64Codec[(Acc) and $3F]);

        Inc(Cardinal(POut), 4);
        Inc(Cardinal(PIn), 3);
      end;
      case InSize mod 3 of
        1:
          begin
            Acc := PIn^[0] shl 16;

            POut^[0] := byte(cBase64Codec[(Acc shr 18) and $3F]);
            POut^[1] := byte(cBase64Codec[(Acc shr 12) and $3F]);
            POut^[2] := byte(Base64Filler);
            POut^[3] := byte(Base64Filler);
          end;
        2:
          begin
            Acc := PIn^[0] shl 16 + PIn^[1] shl 8;

            POut^[0] := byte(cBase64Codec[(Acc shr 18) and $3F]);
            POut^[1] := byte(cBase64Codec[(Acc shr 12) and $3F]);
            POut^[2] := byte(cBase64Codec[(Acc shr 6) and $3F]);
            POut^[3] := byte(Base64Filler);
          end;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure base64Decode(const InBuffer; InSize: DWORD; var OutBuffer);
const
  cBase64Codec: array [0 .. 255] of byte = ($FF, $FF, $FF, $FF, $FF,
    { 005> } $FF, $FF, $FF, $FF, $FF, // 000..009
    $FF, $FF, $FF, $FF, $FF, { 015> } $FF, $FF, $FF, $FF, $FF, // 010..019
    $FF, $FF, $FF, $FF, $FF, { 025> } $FF, $FF, $FF, $FF, $FF, // 020..029
    $FF, $FF, $FF, $FF, $FF, { 035> } $FF, $FF, $FF, $FF, $FF, // 030..039
    $FF, $FF, $FF, $3E, $FF, { 045> } $FF, $FF, $3F, $34, $35, // 040..049
    $36, $37, $38, $39, $3A, { 055> } $3B, $3C, $3D, $FF, $FF, // 050..059
    $FF, $00, $FF, $FF, $FF, { 065> } $00, $01, $02, $03, $04, // 060..069
    $05, $06, $07, $08, $09, { 075> } $0A, $0B, $0C, $0D, $0E, // 070..079
    $0F, $10, $11, $12, $13, { 085> } $14, $15, $16, $17, $18, // 080..089
    $19, $FF, $FF, $FF, $FF, { 095> } $FF, $FF, $1A, $1B, $1C, // 090..099
    $1D, $1E, $1F, $20, $21, { 105> } $22, $23, $24, $25, $26, // 100..109
    $27, $28, $29, $2A, $2B, { 115> } $2C, $2D, $2E, $2F, $30, // 110..119
    $31, $32, $33, $FF, $FF, { 125> } $FF, $FF, $FF, $FF, $FF, // 120..129
    $FF, $FF, $FF, $FF, $FF, { 135> } $FF, $FF, $FF, $FF, $FF, // 130..139
    $FF, $FF, $FF, $FF, $FF, { 145> } $FF, $FF, $FF, $FF, $FF, // 140..149
    $FF, $FF, $FF, $FF, $FF, { 155> } $FF, $FF, $FF, $FF, $FF, // 150..159
    $FF, $FF, $FF, $FF, $FF, { 165> } $FF, $FF, $FF, $FF, $FF, // 160..169
    $FF, $FF, $FF, $FF, $FF, { 175> } $FF, $FF, $FF, $FF, $FF, // 170..179
    $FF, $FF, $FF, $FF, $FF, { 185> } $FF, $FF, $FF, $FF, $FF, // 180..189
    $FF, $FF, $FF, $FF, $FF, { 195> } $FF, $FF, $FF, $FF, $FF, // 190..199
    $FF, $FF, $FF, $FF, $FF, { 205> } $FF, $FF, $FF, $FF, $FF, // 200..209
    $FF, $FF, $FF, $FF, $FF, { 215> } $FF, $FF, $FF, $FF, $FF, // 210..219
    $FF, $FF, $FF, $FF, $FF, { 225> } $FF, $FF, $FF, $FF, $FF, // 220..229
    $FF, $FF, $FF, $FF, $FF, { 235> } $FF, $FF, $FF, $FF, $FF, // 230..239
    $FF, $FF, $FF, $FF, $FF, { 245> } $FF, $FF, $FF, $FF, $FF, // 240..249
    $FF, $FF, $FF, $FF, $FF, { 255> } $FF // 250..255
    );
var
  X, Y: Integer;
  PIn, POut: TPAByte;
  Acc: DWORD;
begin
  try
    if (InSize > 0) and (InSize mod 4 = 0) then
    begin
      InSize := InSize shr 2;
      PIn := @InBuffer;
      POut := @OutBuffer;

      for X := 1 to InSize - 1 do
      begin
        Acc := 0;
        Y := -1;

        repeat
          Inc(Y);
          Acc := Acc shl 6;
          Acc := Acc or cBase64Codec[PIn^[Y]];
        until Y = 3;

        POut^[0] := Acc shr 16;
        POut^[1] := byte(Acc shr 8);
        POut^[2] := byte(Acc);

        Inc(Cardinal(PIn), 4);
        Inc(Cardinal(POut), 3);
      end;
      Acc := 0;
      Y := -1;

      repeat
        Inc(Y);
        Acc := Acc shl 6;

        if PIn^[Y] = byte(Base64Filler) then
        begin
          if Y = 3 then
          begin
            POut^[0] := Acc shr 16;
            POut^[1] := byte(Acc shr 8);
          end
          else
            POut^[0] := Acc shr 10;
          Exit;
        end;

        Acc := Acc or cBase64Codec[PIn^[Y]];
      until Y = 3;

      POut^[0] := Acc shr 16;
      POut^[1] := byte(Acc shr 8);
      POut^[2] := byte(Acc);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure base64Encode(const InText: AnsiString; var OutText: AnsiString); overload;
var
  InSize, OutSize: Cardinal;
  PIn, POut: Pointer;
begin
  try
    // get size of source
    InSize := Length(InText);
    // calculate size for destination
    OutSize := CalcEncoderSize(InSize);
    // prepare string length to fit result data
    SetLength(OutText, OutSize);

    if OutSize > 0 then
    begin
      PIn := @InText[1];
      POut := @OutText[1];

      // encode !
      base64Encode(PIn^, InSize, POut^);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure base64Encode(const InText: array of Ansichar; var OutText: AnsiString; const iLenght: Integer); overload;
var
  InSize, OutSize: Cardinal;
  PIn, POut: Pointer;
  aryTmp: array of Ansichar;
begin
  try
    SetLength(aryTmp, iLenght);
    CopyMemory(@aryTmp[1], @InText[1], iLenght);

    // get size of source
    // InSize := Length(InText);
    InSize := iLenght;
    // calculate size for destination
    OutSize := CalcEncoderSize(InSize);
    // prepare string length to fit result data
    SetLength(OutText, OutSize);
    PIn := @aryTmp[1];
    POut := @OutText[1];
    // encode !
    base64Encode(PIn, InSize, POut);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure base64Decode(const InText: AnsiString;
  var OutText: AnsiString); overload;
var
  InSize, OutSize: Cardinal;
  PIn, POut: Pointer;
begin
  try
    // get size of source
    InSize := Length(InText);
    // calculate size for destination
    PIn := @InText[1];
    OutSize := CalcDecoderSize(PIn, InSize);
    // prepare string length to fit result data
    if OutSize > 0 then
    begin
      FillChar(OutText[1], OutSize, '.');
      POut := @OutText[1];

      // encode !
      base64Decode(PIn^, InSize, POut^);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function IdleTime: DWORD;
var
  LastInput: TLastInputInfo;
begin
  try
    LastInput.cbSize := SizeOf(TLastInputInfo);
    GetLastInputInfo(LastInput);
    Result := (GetTickCount - LastInput.dwTime) DIV 1000;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function CalcEncoderSize(InSize: Cardinal): Cardinal;
begin
  try
    // no buffers passed along, calculate outbuffer size needed
    Result := (InSize div 3) shl 2;
    if InSize mod 3 > 0 then
      Inc(Result, 4);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function CalcDecoderSize(const InBuffer; InSize: Cardinal): Cardinal;
type
  BA = array of byte;
begin
  try
    Result := 0;
    if InSize = 0 then Exit;
    if InSize mod 4 <> 0 then Exit;
    Result := InSize div 4 * 3;
    if BA(InBuffer)[InSize - 2] = ord('=') then Dec(Result, 2) else
    if BA(InBuffer)[InSize - 1] = ord('=') then Dec(Result);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure MarkThisWord(RE: TcxRichEdit; TheWord: String; Color: TColor;
  Style: TFontStyles);
var
  i, CharPos, noChars: Integer;
begin
  try
    CharPos := 0;
    noChars := 0;
    for i := 0 to Pred(RE.Lines.Count) do
      noChars := noChars + Length(RE.Lines[i]);
    CharPos := RE.FindText(TheWord, CharPos, noChars, [stWholeWord]);
    RE.SelStart := CharPos;
    RE.SelLength := Length(TheWord);
    RE.SelAttributes.Color := Color;
    RE.SelAttributes.Style := Style;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

Function fCheckMaxLength(Sender : TObject; iMax: Integer): Boolean;
Var
  sTmp: AnsiString;
  iLen: Integer;
begin
  try
    Result := False;
    if Sender is TcxMemo then
    begin
      sTmp := TcxMemo(Sender).Text;
      iLen := Length(sTmp);
      if iLen > iMax then
      begin
        TcxMemo(Sender).Text := Copy(sTmp, 1, iMax);
        TcxMemo(Sender).SelStart := iMax;
        ShowMessage('최대 글자 제한 수를 넘었습니다');
        Result := true;
      end;
    end else
    if Sender is TcxTextEdit then
    begin
      sTmp := TcxTextEdit(Sender).Text;
      iLen := Length(sTmp);
      if iLen > iMax then
      begin
        TcxTextEdit(Sender).Text := Copy(sTmp, 1, iMax);
        TcxTextEdit(Sender).SelStart := iMax;
        ShowMessage('최대 글자 제한 수를 넘었습니다');
        Result := true;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure MarkAllWords(RE: TcxRichEdit; wText: String; Color: TColor;
  Style: TFontStyles);
Var
  wString: TStringList;
  tLen, i, j: Integer;
  str_arr: array of string;
  tText: string;
begin
  try
    wString := TStringList.Create;
    try
      wString.Clear;

      tText := RE.Text;

      // 타겟문자열 한자씩 자름
      if Length(tText) >= Length(wText) then
        tLen := Length(tText)
      else
        tLen := Length(wText);

      for i := 0 to tLen - 1 do
      begin
        wString.Add(Copy(tText, i + 1, 1));
      end;

      // 배열로 저장
      SetLength(str_arr, tLen); // 타켓 문자수 만큼 배열생성

      for i := 0 to wString.Count - 1 do
      begin
        for j := 1 to Length(wText) do
        begin
          if wText[j] = '' then
            Exit;
          if wString[i] = wText[j] then
          begin
            if i = 0 then
            begin
              if wString[i + 1] = wText[j + 1] then
              begin
                RE.SelStart := i;
                RE.SelLength := 1;
                RE.SelAttributes.Color := Color;
                RE.SelAttributes.Style := Style;
                Break;
              end else
              begin
                str_arr[i] := wString[i];
                Break;
              end
            end else
            begin
              if (i + 1 > wString.Count - 1) or (j + 1 > Length(wText)) then
              begin
                if (wString[i - 1] = wText[j - 1]) and (j - 1 > 0) then
                begin
                  RE.SelStart := i;
                  RE.SelLength := 1;
                  RE.SelAttributes.Color := Color;
                  RE.SelAttributes.Style := Style;
                  Break;
                end else
                begin
                  str_arr[i] := wString[i];
                  Break;
                end;
              end else
              if (i - 1 < 0) or (j - 1 < 0) then
              begin
                if wString[i + 1] = wText[j + 1] then
                begin
                  RE.SelStart := i;
                  RE.SelLength := 1;
                  RE.SelAttributes.Color := Color;
                  RE.SelAttributes.Style := Style;
                  Break;
                end else
                begin
                  str_arr[i] := wString[i];
                  Break;
                end;
              end else
              begin
                if wString[i + 1] = wText[j + 1] then
                begin
                  RE.SelStart := i;
                  RE.SelLength := 1;
                  RE.SelAttributes.Color := Color;
                  RE.SelAttributes.Style := Style;
                  Break;
                end else
                if (wString[i - 1] = wText[j - 1]) and (j - 1 > 0) then
                begin
                  RE.SelStart := i;
                  RE.SelLength := 1;
                  RE.SelAttributes.Color := Color;
                  RE.SelAttributes.Style := Style;
                  Break;
                end
                else
                  str_arr[i] := wString[i];
              end;
            end;
            Break;
          end else
            str_arr[i] := wString[i];
        end;
      end;
    finally
      wString.Free;
    end;
  except
    on e: exception do
    begin
      Log('MarkAllWords Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'MarkAllWords Error :' + E.Message);
    end;
  end;
end;

procedure MarkAllKeyWords(RE: TcxRichEdit; wText: String; Color: TColor;
  Style: TFontStyles);
Var
  tText: string;
begin
  try
    tText := RE.Text;

    RE.SelStart := pos(wText, tText) - 1;
    RE.SelLength := Length(wText);
    RE.SelAttributes.Color := Color;
    RE.SelAttributes.Style := Style;

  except
    on e: exception do
    begin
      Log('MarkAllKeyWords Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'MarkAllKeyWords Error :' + E.Message);
    end;
  end;
end;

function GetColIDIndex(AView: TcxGridTableView; AId: Integer): Integer;
var
  i: Integer;
begin
  try
    Result := -1;

    for i := 0 to AView.ColumnCount - 1 do
    begin
      if AView.Columns[i].ID = AId then
      begin
        Result := i;
        Exit;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure SetGridData(AView: TcxGridTableView; ARow, AId: Integer;  AValue: Variant);
begin
  AView.DataController.Values[ARow, GetColIDIndex(AView, AId)] := AValue;
end;

function GetAllWinHandle(ss_TitleCaption: string; ss_ListBox: TListBox): HWND;
  procedure GetAllWindowsProc(WinHandle: HWND; Slist: TStrings);
  var
    P: array [0 .. 256] of char; { title bar를 저장 할 buffer }
  begin
    P[0] := #0;
    GetWindowText(WinHandle, P, 255); { Window's Title Bar를 알아낸다 }

    if (P[0] <> #0) then
      if IsWindowVisible(WinHandle) then { InVisible한 Window는 제외 }
        Slist.AddObject(P, TObject(WinHandle)); { window의 handle 저장 }
  end;

  procedure GetAllWindows(Slist: TStrings);
  var
    WinHandle: HWND;
  begin
    WinHandle := FindWindow(nil, nil);
    GetAllWindowsProc(WinHandle, Slist);

    while (WinHandle <> 0) do
    { Top level의 window부터 순차적으로 handle을 구한다 }
    begin
      WinHandle := GetWindow(WinHandle, GW_HWNDNEXT);
      GetAllWindowsProc(WinHandle, Slist);
    end;
  end;

var
  i: Integer;
begin
  try
    Result := 0;

    ss_ListBox.Clear;
    GetAllWindows(ss_ListBox.Items);

    for i := 0 to ss_ListBox.Count - 1 do
    begin
      if ss_TitleCaption = ss_ListBox.Items[i] then
      begin
        Result := HWND(ss_ListBox.Items.Objects[i]);
        ShowWindow(HWND(ss_ListBox.Items.Objects[i]), SW_NORMAL);
        Exit;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

// 윈도우 프로그램 목록에서 캡션으로 넘어오는 프로그램의 핸들값을 찾는다.
function FindAllInternetExplorer(sClsName, sCaption: string;
  bGB: Boolean = False): Integer;
var
  WinHandle: HWND;
  ClassName: array [0 .. 260] of char;
  TextBuf: array [0 .. 32767] of char;
begin
  try
    WinHandle := GetWindow(GetDesktopWindow(), GW_CHILD);
    while WinHandle > 0 do
    begin
      FillChar(ClassName, SizeOf(ClassName), #0);
      GetClassName(WinHandle, ClassName, SizeOf(ClassName));
      GetWindowText(WinHandle, TextBuf, SizeOf(TextBuf));

      if (Pos(sClsName, ClassName) > 0) and (Pos(sCaption, TextBuf) > 0) then
      begin
        if bGB = true then
        begin
          // ShowWindow(WinHandle, WM_SHOWWINDOW);
          ShowWindow(WinHandle, 4); // 윈도우를 원래의 크기로로 띄운다.
          SetForegroundWindow(WinHandle); // 윈도우를 맨 앞으로 올린다.
          Sleep(800);
          Application.ProcessMessages;
        end;
        Break;
      end;

      WinHandle := GetWindow(WinHandle, GW_HWNDNEXT);
    end;
    Result := WinHandle;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function Func_search_hdNo(sBrNo: string): string;
var
  i: Integer;
begin
  try
    Result := '';
    for i := 0 to GT_BR_KN_CNT do
    begin
      // 이부분에 지사별 대표번호 가져오는 로직 추가 할것.[차후에 버전 업그래이드 하면서 추가 할것.]
      if sBrNo = GSL_HD_LIST[i, 0] then
      begin
        Result := GSL_HD_LIST[i, 5];
        Break;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure CustomExportGridToHTML(AFilename: string; AGrid: TcxGrid;
  AExpand: Boolean; ASaveAll: Boolean; const AFileExt: string);
const
  _MAX_RECORD_COUNT = 65530;  // 65536까지..
//  _MAX_RECORD_COUNT = 200;
var
  i: Integer;
  AView: TcxGridTableView;
  n1 : Integer;
  ns: TStringList;
  msg : String;
  bOpenExcel : Boolean;
begin
  try
    ns := TStringList.Create;
    try
      bOpenExcel := True;
      AView := AGrid.ActiveLevel.GridView as TcxGridTableView;

      for i := 0 to AView.ColumnCount - 1 do
      begin
        if (AView.Columns[i].Visible) and (AView.Columns[i].Width = 0) then
        begin
          AView.Columns[i].Width := 1;
          AView.Columns[i].Visible := False;
        end;
      end;

      if GS_XLS_VERSION = xv2007Over then
      begin
        if AFileExt = 'CSV' then
        begin
          ns.Clear;
          for n1 := 0 to AView.DataController.RecordCount - 1 do
          begin
            ns.Add(AView.DataController.Values[n1, 0]);
          end;
          ns.SaveToFile(AFilename);
          ShowMessage('csv단일컬럼 작업완료');
        end else
        begin
//양식없는 엑셀출력을 위하여 주석처리 20220118 KHS
//          if AView.DataController.RecordCount < 65000 then
//            ExportGridToExcel(AFilename, AGrid, AExpand, ASaveAll, True)
//          else
          begin
            //10000건으로 변경20220118 KHS 
//            if AView.DataController.RecordCount > 100000 then
            if AView.DataController.RecordCount > 10000 then
            begin
              msg := '자료가 많을경우 [엑셀서식유지] 시 저장시간이 오래 걸릴수 있습니다.' + CRLF +
                     '그래도 [엑셀서식유지]로 저장하시겠습니까? ' + CRLF +
                     '[아니오] 선택시 [엑셀서식없음]으로 저장됩니다.';
   						if Application.MessageBox(PChar(msg), '엑셀변환', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
              begin
                if ( RightStr(AFilename, 4) = '.xls' ) then AFilename := StringReplace(AFilename, '.xls', '.xlsx', [rfReplaceAll]);
                ExportGridToXLSX(AFilename, AGrid, AExpand, ASaveAll, True);
              end else
              begin
                bOpenExcel := False;
          			ExcelNOPT(AGrid);
              end;
            end else
            begin
              if ( RightStr(AFilename, 4) = '.xls' ) then AFilename := StringReplace(AFilename, '.xls', '.xlsx', [rfReplaceAll]);
              ExportGridToXLSX(AFilename, AGrid, AExpand, ASaveAll, True);
            end;
          end;
        end;
      end else
      begin
        if not ASaveAll or (AView.DataController.RecordCount < _MAX_RECORD_COUNT)
        then
          ExportGridToHTML(AFilename, AGrid, AExpand, ASaveAll, 'XLS')
        else
          CustomExportGridToMultiHTML(AFilename, AView, AFileExt, _MAX_RECORD_COUNT - 1);
      end;

      for i := 0 to AView.ColumnCount - 1 do
      begin
        if (not AView.Columns[i].Visible) and (AView.Columns[i].Width = 1) then
        begin
          AView.Columns[i].Width := 0;
          AView.Columns[i].Visible := true;
        end;
      end;

      if ( GS_XLS_AUTOOPEN ) And ( bOpenExcel ) then
        ShellExecute(Application.Handle, 'open', PChar(AFilename), nil, nil, SW_SHOWNORMAL);
    finally
      ns.Free;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure CustomExportGridToMultiHTML(const AFilename: string; AView: TcxGridTableView; const AFileExt: string; ARange: Integer);
const
  xlcenter = -4108;
  xlLeft = -4131;
  xlEdgeLeft = -4131;
  xlEdgeRight = -4152;
  xlEdgeTop = -4160;
  xlEdgeBottom = -4107;
  xlContinuous = 1;
var
  Filename : string;
  APageCount, AStartRow, iPage : Integer;

  i, j, k, iCnt, iCol, iColCnt : Integer;
  StrList: TStringList;

  arrHDate, arrData: Variant;

  ExcelObj : OleVariant;
  WorkBook : OleVariant;
  WorkSheet : OleVariant;
  Range : OleVariant;
begin
  try
    APageCount := (AView.DataController.RecordCount - 1) div (ARange) + 1;
    Filename := Copy(AFilename, 1, LastDelimiter('.', AFilename) - 1);

    ExcelObj := CreateOLEObject('Excel.Application');
    ExcelObj.DisplayAlerts := False;

    WorkBook := ExcelObj.Workbooks.Add; //통합문서를 생성합니다.
//    if FileExists(AFilename) then
//      WorkBook := ExcelObj.Workbooks.Open(AFilename);

    try
      for i := 0 to APageCount - 1 do
      begin
        AStartRow := i * ARange;
        iPage := i + 1;
        if AView.DataController.RecordCount < AStartRow then Break;

        WorkSheet := WorkBook.Sheets.Add;
//        WorkSheet := WorkBook.WorkSheets.Item[iPage]; //Sheet를 선택합니다.
        WorkSheet.Name := Format('%s_%d', ['Sheet', iPage]);

        // 타이틀 표시------------------------------------------------------------------
        iColCnt := 0;
        for j := 0 to AView.ColumnCount - 1 do
        begin
          if AView.Columns[j].Visible then Inc(iColCnt);
        end;
        arrHDate := VarArrayCreate([1, 1, 1, iColCnt + 1], varVariant);

        iCnt := 1;    iCol := 1;
        for j := 0 to AView.ColumnCount - 1 do
        begin
          if AView.Columns[j].Visible then
          begin
            arrHDate[iCnt, iCol] := AView.Columns[j].Caption;
            Inc(iCol);
          end;
        end;

        Range := WorkSheet.Range[WorkSheet.Cells[1, 1], WorkSheet.Cells[1, iColCnt-1]];
        // 엑셀데이타 가운데 정렬
        Range.HorizontalAlignment := xlcenter; // 가운데
        Range.VerticalAlignment := xlcenter; // 가운데
        Range.Value := arrHDate;

        Range.Font.Color := clBlack;
        Range.Font.Name := '굴림';
        Range.Font.Size := 10;
        Range.Font.Bold := false;
        Range.Interior.Color := clsilver;

        Range.borders[xlEdgeLeft].LineStyle := xlContinuous;
        Range.borders[xlEdgeLeft].Colorindex := 16;
        Range.borders[xlEdgeRight].LineStyle := xlContinuous;
        Range.borders[xlEdgeRight].Colorindex := 16;
        Range.borders[xlEdgeBottom].LineStyle := xlContinuous;
        Range.borders[xlEdgeBottom].Colorindex := 16;
        Range.borders[xlEdgeTop].LineStyle := xlContinuous;
        Range.borders[xlEdgeTop].Colorindex := 16;

        // 내용 표시------------------------------------------------------------------
        arrData := VarArrayCreate([2, ARange+1, 1, iCol], varVariant);
        for j := AStartRow to AStartRow + ARange - 1 do
        begin
          if AView.DataController.RecordCount - 1 < j then Break;
          Inc(iCnt);
          iCol := 1;
          for k := 0 to AView.ColumnCount - 1 do
          begin
            if AView.Columns[k].Visible then
            begin
              if AView.Columns[i].DataBinding.ValueType = 'Integer' then
              begin
                arrData[iCnt, iCol] := StrToIntDef(AView.DataController.Values[j, k], 0);
              end else
              begin
                arrData[iCnt, iCol] := AView.DataController.Values[j, k];
              end;
//              arrData[iCnt, iCol] := AView.DataController.GetDisplayText(j, k);
              Inc(iCol);
            end;
          end;
        end;

        {retrieve a range where data must be placed}
        Range := WorkSheet.Range[WorkSheet.Cells[2, 1],
                                 WorkSheet.Cells[ARange+1, iCol]];

        Range.HorizontalAlignment := xlLeft; // 가운데
        Range.VerticalAlignment := xlcenter; // 가운데
        // 엑셀 데이타를 문자형으로
//        if Pos('법인_일마감', sFileName) > 0 then
//          Range_buf.NumberFormatLocal := '@';
        {copy data from allocated variant array}
        Range.Value := arrData;

        Range.Font.Color := clBlack;
        Range.Font.Name := '굴림';
        Range.Font.Size := 9;
        Range.Font.Bold := False;
        Range.Interior.Color := clWhite;

        Range.borders[xlEdgeLeft].LineStyle := xlContinuous;
        Range.borders[xlEdgeLeft].Colorindex := 16;
        Range.borders[xlEdgeRight].LineStyle := xlContinuous;
        Range.borders[xlEdgeRight].Colorindex := 16;
        Range.borders[xlEdgeBottom].LineStyle := xlContinuous;
        Range.borders[xlEdgeBottom].Colorindex := 16;
        Range.borders[xlEdgeTop].LineStyle := xlContinuous;
        Range.borders[xlEdgeTop].Colorindex := 16;

        Range.Columns.AutoFit;
      end;
    finally
//      ExcelObj.Columns.AutoFit;
      WorkBook.SaveAs(AFilename);
      WorkBook.Close;
      ExcelObj.Quit;

      WorkSheet := unAssigned;
      WorkBook := unAssigned;
      ExcelObj := unAssigned;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function Check_ALLHD(AHDNO: string): Boolean;
var
  iDx: Integer;
begin
  try
    if (GT_USERIF.Family = 'y') And (GT_USERIF.LV = '60') then // 20120629 LYB
    begin
      iDx := GT_BRANCHCOUNT.BRCODE.IndexOf(AHDNO);
      if iDx < 0 then
      begin
        Result := False;
        Exit;
      end;

      // 패밀리 관리자 일경우 전체 지사 갯수와 권한을 받은 지사 갯수가 틀릴경우 False
      if GT_BRANCHCOUNT.BRTCNT[iDx] = GT_BRANCHCOUNT.BRSCNT[iDx] then
        Result := True
      else
        Result := False;
    end
    else
      Result := True;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure ResetGridSizeEnv(AView: TcxGridTableView; AEnvFile: TIniFile);
var
  i, j: Integer;
begin
  try
    AEnvFile.EraseSection(AView.Name);

    for i := 0 to AView.ColumnCount - 1 do
    begin
      for j := 0 to AView.ColumnCount - 1 do
      begin
        if AView.Columns[j].ID = i then
        begin
          AView.Columns[j].Width := AView.Columns[j].Tag;
          AView.Columns[j].Index := i;
          Break;
        end;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure SaveGridSizeEnv(AView: TcxGridTableView; AEnvFile: TIniFile);
var
  i: Integer;
begin
  try
    AEnvFile.EraseSection(AView.Name);
    for i := 0 to AView.ColumnCount - 1 do
    begin
      AEnvFile.WriteInteger(AView.Name, IntToStr(AView.Columns[i].ID), AView.Columns[i].Width);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure InitGridSizeEnv(AView: TcxGridTableView);
var
  i: Integer;
begin
  try
    for i := 0 to AView.ColumnCount - 1 do
    begin
      AView.Columns[i].Tag := AView.Columns[i].Width;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure LoadGridSizeEnv(AView: TcxGridTableView; AEnvFile: TIniFile);
var
  i, ID, Index : Integer;
  List: TStringList;
begin
  try
    List := TStringList.Create;
    try
      AEnvFile.ReadSection(AView.Name, List);
      for i := 0 to List.Count - 1 do
      begin
        ID := StrToInt(List[i]);
        Index := GetColIDIndex(AView, ID);
        AView.Columns[Index].Width := AEnvFile.ReadInteger(AView.Name, IntToStr(ID), -1);
        AView.Columns[Index].Index := i;
      end;
    finally
      List.Free;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure CopyGridSizeEnv(AView, BView: TcxGridTableView; AEnvFile: TIniFile);
var
  i, ID, Index : Integer;
  List: TStringList;
begin
  try
    BView.BeginUpdate;
    List := TStringList.Create;
    try
      AEnvFile.ReadSection(AView.Name, List);
      for i := 0 to List.Count - 1 do
      begin
        ID := StrToInt(List[i]);
        Index := GetColIDIndex(BView, ID);
        BView.Columns[Index].Width := AEnvFile.ReadInteger(AView.Name, IntToStr(ID), -1);
        BView.Columns[Index].Index := i;
      end;
    finally
      BView.EndUpdate;
      List.Free;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function IsDaeJeonShare(ALocality: Boolean; AShareNo: string): Boolean;
begin
	Result := (ALocality and ((AShareNo = 'G26') or (AShareNo = 'G39') or   // (AShareNo = 'G23') G23.충주연합여기에 추가하면 안됨. 로컬라운팅 관련 오류 발생함
	                        	(AShareNo = 'G54') or (AShareNo = 'G59') or
                            (AShareNo = 'G79') or (AShareNo = 'G49') or (AShareNo = 'G15')));
end;                                                                  //2017.06.05 2개 연합 추가 KHS

function IsGyeongNamShare(ALocality: Boolean; AShareNo: string): Boolean;  //2017.06.14 경남연합 추가 KHS
begin
	Result := (ALocality and ((AShareNo = 'G33') or (AShareNo = 'G63') or
		                        (AShareNo = 'G45') or (AShareNo = 'G34') or
                            (AShareNo = 'G20') or (AShareNo = 'G80') ));
end;

function IsWJ365Share(ALocality: Boolean; AShareNo: string): Boolean;  //2020.11.18 원주연합 추가 lyb
begin
	Result := (ALocality and ((AShareNo = 'G74') Or (AShareNo = 'G76') Or
                            (AShareNo = 'G08') Or (AShareNo = 'G13')));   // G74.A원주연합, G76.B원주연합, G08.강릉연합, G13.속초연합));
end;

function IsHBShare(ALocality: Boolean; AShareNo: string): Boolean;     //2021.01.21 청주연합 추가 lyb
begin
	Result := (ALocality and ((AShareNo = 'G23')));
end;

//  1. 천사: A5522, 2.엔에스:A5523, 3.드라이버인스타:A5524, 4.바른차생활:A5525, 5.EG콜센터:A5526
function IsAngelPlusHead(ALocality: Boolean; AHdNo: string): Boolean;
begin
	Result := (ALocality and ((AHdNo = 'A5522') or (AHdNo = 'A5523') or {(AHdNo = 'A100' ) or}
                            (AHdNo = 'A5524') or (AHdNo = 'A5525') or (AHdNo = 'A5526')));
end;

//  1577 : A1531, 1. 천사: A5522, 2.엔에스:A5523, 3.드라이버인스타:A5524, 4.바른차생활:A5525, 5.EG콜센터:A5526
function IsKMUSEHead(AHdNo: string): Boolean;    //ALocality 사용안함, 카카오기능 사용
begin
	Result := ((GS_PRJ_AREA = 'S') and ((AHdNo = 'A5522') or (AHdNo = 'A5523') or (AHdNo = 'A1531') or
																			(AHdNo = 'A5524') or (AHdNo = 'A5525') or (AHdNo = 'A5526') or 
																			(AHdNo = 'A100' ) or (AHdNo = 'A876' ) or (AHdNo = 'A759' ) or 
																			(AHdNo = 'A5175' )))
							or
						((GS_PRJ_AREA = 'O') and (AHdNo = 'A2289'));
end;

function IsSelfCardShare(ALocality: Boolean; AShareNo: string): Boolean;  //2021.02.09 현장카드사용연합
begin
	Result := (ALocality and ((AShareNo = 'G23') or (AShareNo = 'G26') or (AShareNo = 'G54') or
                            (AShareNo = 'G49') or (AShareNo = 'G39') or (AShareNo = 'G17') or
                            (AShareNo = 'G59') or (AShareNo = 'G02') or (AShareNo = 'G41')));
end;

function Process32ListFind(sExecName: string): DWORD;
var
  Process32: TProcessEntry32;
  SHandle: THandle; // the handle of the Windows object
  Next: BOOL;
  sEFileName: string;
begin
  try
    Result := 0;
    Process32.dwSize := SizeOf(TProcessEntry32);
    SHandle := CreateToolHelp32Snapshot(TH32CS_SNAPPROCESS, 0);

    if Process32First(SHandle, Process32) then
    begin
      Next := true;
      sEFileName := Process32.szExeFile;
      if sExecName = sEFileName then
      begin
        // ProcID 리턴
        Result := Process32.th32ProcessID;
        Next := False;
      end;
      if Next then
      begin
        repeat
          Next := Process32Next(SHandle, Process32);
          if Next then
          begin
            sEFileName := Process32.szExeFile;
            if sExecName = sEFileName then
            begin
              // ProcID 리턴
              Result := Process32.th32ProcessID;
              Next := False;
            end;
          end;
        until not Next;
      end;
    end;
    CloseHandle(SHandle); // closes an open object handle
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function func_Cust_Tel(sCall, sDate, sBrch, sBrch2: string): string;
var
  cDate2: string;
  iRow, iLevel, iPos: Integer;
begin
	try
    sBrch2 := '';
    sDate := RemoveDatetimeSeparator(sDate);
    cDate2 := StartDateTime;
    iLevel := StrToIntDef(GT_USERIF.LV, 10);
    iRow := scb_BranchCode.IndexOf(sBrch);
    if iRow = -1 then
      iRow := scb_BranchCode.IndexOf(sBrch2);

    // 고객번호 자사콜 오픈
    if TCK_USER_PER.JON_CustTelOpen = '1' then
    begin
      case iLevel of
        10:
          begin
            if (iRow = -1) then
							Result := '***-****-****'
            else if (GT_USERIF.BR = sBrch) then
              Result := strtocall(sCall)
            else
              Result := strtocall(sCall);
            {
              //[100512]익일오픈 기능 제한 해제
              else if (sDate >= cDate2) then
              Result := strtocall(sCall)
              else
              Result := '***-****-****';
            }
          end;
        40:
          begin
            if (GT_USERIF.BR = sBrch) then
              Result := strtocall(sCall)
            else
              Result := '***-****-****';
          end;
        60:
          begin
            if (iRow = -1) then
              Result := '***-****-****'
            else
              Result := strtocall(sCall)
          end;
      end;
      // 고객번호 자사콜 당일만 오픈
    end else
    if TCK_USER_PER.JON_CustTelDayOpen = '1' then
    begin
      case iLevel of
        10:
          begin
            if (iRow = -1) then
              Result := '***-****-****'
            else
            begin
              if (sDate >= cDate2) then
                Result := strtocall(sCall)
              else
                Result := '***-****-****';
            end;
          end;
        40:
          begin
            if (GT_USERIF.BR = sBrch) and (sDate >= cDate2) then
              Result := strtocall(sCall)
            else
              Result := '***-****-****';
          end;
        60:
          begin
            if (iRow >= 0) and (sDate >= cDate2) then
              Result := strtocall(sCall)
            else
              Result := '***-****-****';
          end;
      end;
    end else
    begin
      Result := '***-****-****';
    end;

    if (TCK_USER_PER.JON_CustMaking2 = '1') or
       (TCK_USER_PER.JON_Cust2Modify = '1') then
    begin
      if Pos('*', Result) = 0 then
        Result := Copy(Result, 1, Length(Result) - 2) + '**';
    end;

    if (TCK_USER_PER.JON_CustM2Modify = '1') then
    begin
			iPos := Length(Result) - 7;
			if Pos('*', Copy(Result, iPos+1, 2)) = 0 then
			Result := Copy(Result, 1, iPos) + '**' + Copy(Result, iPos+3, 7);
		end;
	except
		on E: Exception do
			Assert(False, E.Message);
	end;
end;

//고객번호 가운데 4자리 마스킹처리 20210719 KHS
function func_CustTel_Masking(ABool : Boolean; sCall : string): string;
var sTmp : string;
	iPos: Integer;
begin
	try
		Result := '';
		if ABool then
		begin
			case length(sCall) of
				 7:begin
						 sTmp := copy(sCall, 1,3) + '-' + '****';
				 end;
				 9:begin
						 sTmp := copy(sCall, 1,2) + '-' + '***'{copy(sCall, 3,3)} + '-' + copy(sCall, 6,4);
				 end;
				10:begin
					 if Copy(sCall, 1,2) = '02' then
					 begin
						 sTmp := copy(sCall, 1,2) + '-' + '****'{copy(sCall, 3,4)} + '-' + copy(sCall, 7,4);
					 
					 end else
					 begin
						 sTmp := copy(sCall, 1,3) + '-' + '***'{copy(sCall, 4,3)} + '-' + copy(sCall, 7,4);
					 end;
				 end;      				
				11:begin
						 sTmp := copy(sCall, 1,3) + '-' + '****'{copy(sCall, 4,4)} + '-' + copy(sCall, 8,4);
				 end else
				 begin
					 sTmp := Rpad('', length(sCall), '*');
				 end;
			end;
			Result := sTmp;
		end else
		begin
			Result := StrToCall(sCall);
		end;
	except 
		Result := Rpad('', length(sCall), '*');
  end;

end;


function StrToIntEx(const AValue: string): Integer;
var
  i: Integer;
  tmp: string;
begin
  try
    tmp := '';
    for i := 1 to Length(AValue) do
    begin
      if AValue[i] in ['0' .. '9'] then
        tmp := tmp + AValue[i];
    end;

    Result := StrToIntDef(tmp, -1);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function StrToSsn(AValue: string; AMarking: Boolean): string;
begin
  try
    if Length(AValue) < 7 then
      Result := AValue
    else
      Result := Copy(AValue, 1, 6) + '-' + IfThen(AMarking, '*******',
        Copy(AValue, 7, Length(AValue) - 6));
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function func_SoNumCheck(sTemp: string): Boolean;
const
  aCalc: array[1..12] of word = (2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4, 5);
var
  cTmp: string[13];
  cjumin: string;
  i: word;
	nNm, nMod: integer;
begin
  try
		cTmp := '';
    nNm := 0;
    cjumin := StringReplace(sTemp, '-', '', [rfReplaceAll]);
    cjumin := StringReplace(cjumin, ' ', '', [rfReplaceAll]);
    result := false;

    for i := 1 to length(cjumin) do
    begin
			if cJumin[i] in ['0'..'9'] then
        cTmp := cTmp + cJumin[i];
    end;

		if length(cTmp) = 13 then
    begin
      for i := 1 to 12 do
        nNm := nNm + (strtoint(cTmp[i]) * aCalc[i]);
			nMod := (nNm mod 11);
      nMod := (11 - nMod);

			if StrToInt(cTmp[7]) in [5..8] then    //외국인
        Inc(nMod, 2);

      nMod := nMod mod 10;

      if nMod = strtoint(cTmp[13]) then
        result := true;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function func_SoNumCheck_V2(ASsn: string; var AMsg : string): Boolean;
const
  aCalc: array[1..12] of word = (2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4, 5);
var sTmp, sYear1, sYear2, sMonth : string;
  cTmp: string[13];
  cjumin: string;
  i: word;
	nNm, nMod: integer;
  dTimeTmp : TDateTime;
begin
  try
		cTmp := '';
    nNm := 0;
    cjumin := StringReplace(ASsn, '-', '', [rfReplaceAll]);
    cjumin := StringReplace(cjumin, ' ', '', [rfReplaceAll]);
    result := false;

    for i := 1 to length(cjumin) do
    begin
			if cJumin[i] in ['0'..'9'] then
        cTmp := cTmp + cJumin[i];
    end;

		if length(cTmp) = 13 then
    begin      //ㅅ   ㅇㅈ ㅊㅋ         ㅌ       ㅍ
//년도체크       성별 지역 주민센터코트 신고순서 체크디짓
      //현재 년도보다 크면 앞2자리-1, 아니면 앞두자리
      sYear1 := Copy(StartDate,1,2);
      sYear2 := Copy(StartDate,3,2);
      sMonth := Copy(StartDate,5,2);
      if strtoint(sYear2) < strtoint(cTmp[1]+cTmp[2]) then sYear1 := IntToStr(strtoint(sYear1) -1);
//월체크
      if strtoint(cTmp[3]+cTmp[4]) > 12 then
      begin
        AMsg := '유효하지 않는 월(月)입니다';
        exit;
      end;
//일체크
      //해당 달의 마지막날기준체크. 2월29일체크
      dTimeTmp := StrToDateTime(sYear1 + cTmp[1]+cTmp[2] + '-' + cTmp[3]+cTmp[4]  + '-' +  '01 09:00:00');
      sTmp :=  Formatdatetime('dd', EndOfTheMonth(dTimeTmp));
      if StrToInt(sTmp) < strtoint(cTmp[5]+cTmp[6]) then
      begin
        AMsg := '유효하지 않는 일(日)입니다';
        exit;
      end;
      
      for i := 1 to 12 do
        nNm := nNm + (strtoint(cTmp[i]) * aCalc[i]);
			nMod := (nNm mod 11);
      nMod := (11 - nMod);

			if StrToInt(cTmp[7]) in [5..8] then    //외국인
        Inc(nMod, 2);

      nMod := nMod mod 10;

      if nMod = strtoint(cTmp[13]) then
        result := true;
    end else
    begin
      AMsg := '주민등록 번호를 잘못 입력하였습니다';
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetDNFile(IdFTPUP: TIdFTP; sFileName, sFTPPath: string): Boolean;
begin
  try
    Result := False;
    // 업데이트 서버 주소 설정.
    IdFTPUP.DisconnectNotifyPeer;
    IdFTPUP.Passive := true;
    try
      // [hjf] 2009.02.20 FTP 설정 변경
      IdFTPUP.Username := GT_FTP_WUSER;
      IdFTPUP.Password := GT_FTP_WPW;
      IdFTPUP.Host := GT_CDMS_WKPIC_URL;
      IdFTPUP.Port := GT_FTP_PORT;
      IdFTPUP.Connect();
    except
      GMessagebox('업로드 서버에 접근할 수 없습니다.', CDMSE);
      Result := False;
      Exit;
    end;

    if IdFTPUP.Connected then
    begin
      IdFTPUP.ChangeDir(sFTPPath);
      Sleep(100);
      IdFTPUP.Get(ExtractFileName(sFileName), sFileName, true);
      // IdFTPUP.Get(sFileName, ExtractFileName(sFileName));
      Sleep(50);
      Result := true;
    end;
    // ------------------------------------------------------------------------
  except
    GMessagebox('업로드 서버에 접근할 수 없습니다.', CDMSE);
    Result := False;
  end;
end;

function SetUpLoadFile(IdFTPUP: TIdFTP; sFileName, sFTPPath: string): Boolean;
begin
  try
    Result := False;
    // 업데이트 서버 주소 설정.
    IdFTPUP.Disconnect;
    IdFTPUP.Passive := true;
    try
      // [hjf] 2009.02.20 FTP 설정 변경
      IdFTPUP.Username := GT_FTP_WUSER;
      IdFTPUP.Password := GT_FTP_WPW;
      IdFTPUP.Host := GT_CDMS_WKPIC_URL;
      IdFTPUP.Port := GT_FTP_PORT;
      IdFTPUP.Connect();
    except
      GMessagebox('업로드 서버에 접근할 수 없습니다.', CDMSE);
      Result := False;
      Exit;
    end;

    if IdFTPUP.Connected then
    begin
      IdFTPUP.ChangeDir(sFTPPath);
      Sleep(100);
      IdFTPUP.Put(sFileName, ExtractFileName(sFileName));
      Sleep(50);
      Result := true;
    end;
    // ------------------------------------------------------------------------
  except
    GMessagebox('업로드 서버에 접근할 수 없습니다.', CDMSE);
    Result := False;
  end;
end;

function CheckDriverLicense(ALicense: String; var outAreaCode: Integer;
  var outYear, outNum1, outNum2: string; var AErrMsg: string): Boolean;
// 운전면허 검증변경 2012.1.2 khs
var
  AreaCode, Year : string;
begin
  try
    Result := False;

    ALicense := StringReplace(ALicense, '-', '', [rfReplaceAll]);
    ALicense := StringReplace(ALicense, ' ', '', [rfReplaceAll]);

    // 길이 체크
    if ( Length(ALicense) <> 12 ) then
    begin
      AErrMsg := '운전면허 길이(지역: 2자, 숫자: 10자) 오류';
      Exit;
    end;

    // 지역코드
    AreaCode := Copy(ALicense, 1, 2);
    outAreaCode := GetLicenseAreaCode(AreaCode);
    if outAreaCode = -1 then
    begin
      AErrMsg := '지역명 오류';
      Exit;
    end;

    // 연도
    Year := Copy(ALicense, 3, 2);
    // outYear := StrToIntDef(Year, -1);
    if StrToIntDef(Year, -1) = -1 then
    begin
      AErrMsg := '운전면허의 연도가 올바르지 않습니다.';
      Exit;
    end
    else
      outYear := Year; // 운전면허 검증변경 2012.1.2 khs 추가함.

    // 면허앞자리
    outNum1 := Copy(ALicense, 5, 6);
    if StrToIntDef(outNum1, -1) = -1 then
    begin
      outNum1 := '';
      AErrMsg := '면허이상(면허 앞자리 오류)';
      Exit;
    end;

    // 면허뒷자리
    outNum2 := Copy(ALicense, 11, 2);
    if StrToIntDef(outNum2, -1) = -1 then
    begin
      outNum2 := '';
      AErrMsg := '면허이상(면허 뒷자리 오류)';
      Exit;
    end;

    Result := true;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetLicenseAreaCode(AAreaName: string): Integer;
type
  TAreaRec = record
    Name: string;
    Num: Integer;
  end;
const
	AreaRecs: array [0 .. 16] of TAreaRec = ((Name: '서울'; Num: 11), (Name: '부산';
		Num: 12), (Name: '경기'; Num: 13), (Name: '강원'; Num: 14), (Name: '충북';
		Num: 15), (Name: '충남'; Num: 16), (Name: '전북'; Num: 17), (Name: '전남';
		Num: 18), (Name: '경북'; Num: 19), (Name: '경남'; Num: 20), (Name: '제주';
		Num: 21), (Name: '대구'; Num: 22), (Name: '인천'; Num: 23), (Name: '광주';
		Num: 24), (Name: '대전'; Num: 25), (Name: '울산'; Num: 26), (Name: '경기북부'; Num: 28));         //27: 28:경기북부
var
  i: Integer;
begin
  try
    Result := -1;

    for i := 0 to Length(AreaRecs) - 1 do
    begin
      if AreaRecs[i].Name = AAreaName then
      begin
        Result := AreaRecs[i].Num;
        Break;
      end;
      if AreaRecs[i].Num = StrToIntDef(AAreaName, 0) then
      begin
        Result := AreaRecs[i].Num;
        Break;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure cxGridSelectAll(AView: TcxGridTableView; AChecked: Boolean);
var
  i: Integer;
begin
  try
    for i := 0 to AView.ColumnCount - 1 do
      AView.Columns[i].Selected := true;

    if AChecked then
    begin
      AView.BeginUpdate;
      AView.DataController.SelectAll;
      AView.EndUpdate;
    end else
    begin
      AView.BeginUpdate;
      for i := 0 to AView.DataController.RecordCount - 1 do
        AView.ViewData.Records[i].Selected := False;
      AView.EndUpdate;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure ExcelNOPT(AGrid: TcxGrid);
var
  XL, WorkBook, WorkSheet : Variant;
  i: Integer;
  xTitle, xArr: OleVariant;
  Row, Col, ColCNT: Integer;
  AView: TcxGridDBTableView;
  FixedCol, sTmp: String;
begin
  try
    AView := AGrid.ActiveLevel.GridView as TcxGridDBTableView;
    try
      XL := CreateOleObject('Excel.Application');
    except
      GMessagebox('Excel이 설치되어 있지 않습니다. 먼저 Excel을 설치하세요.', CDMSE);
      Screen.Cursor := crDefault;
      Exit;
    end;
    Application.ProcessMessages;
    try
      WorkBook := XL.WorkBooks.Add;
      WorkSheet := WorkBook.ActiveSheet;
      // Data import
      ColCNT := 0;
      for i := 0 to AView.ColumnCount - 1 do
      begin
        if AView.Columns[i].Visible then Inc(ColCNT);
      end;

      xTitle := VarArrayCreate([0, ColCNT], varOleStr);
      Col := 0;
      for i := 0 to AView.ColumnCount - 1 do
      begin
        if AView.Columns[i].Visible then
        begin
          xTitle[Col] := AView.Columns[i].DataBinding.FieldName;
          Inc(Col);
        end;
      end;

      if ColCNT > 26 then FixedCol := CHR(64 + ColCNT div 26)+CHR(64 + ColCNT mod 26)
                     else FixedCol := CHR(64 + ColCNT);

      XL.Range['A1', FixedCol + '1'].Value := xTitle;

      xArr := VarArrayCreate([0, ColCNT], varOleStr);

      Frm_Flash.cxPBar1.Visible := False;
      Frm_Flash.Gauge1.Visible := True;
      Frm_Flash.Gauge1.MinValue := 0;
      Frm_Flash.Gauge1.MaxValue := AView.DataController.RecordCount;
      Frm_Flash.Gauge1.Progress := 0;
      Frm_Flash.Show;

      for Row := 0 to AView.DataController.RecordCount - 1 do
      begin
        Col := 0;
        Frm_Flash.Gauge1.Progress := Frm_Flash.Gauge1.Progress + 1;
        for i := 0 to AView.ColumnCount - 1 do
        begin
          Application.ProcessMessages;
          if AView.Columns[i].Visible then
          begin
            if ( AView.DataController.Values[Row, i] = Null ) then
            begin
              xArr[Col] := '';
            end else
            if ( AView.Columns[i].DataBinding.ValueType = 'Integer'  ) Or
               ( AView.Columns[i].DataBinding.ValueType = 'Currency' ) then
            begin
              xArr[Col] := StrToIntDef(AView.DataController.Values[Row, i], 0);
            end else
            begin
              sTmp := AView.DataController.Values[Row, i];
              if (Col = 2) and ((AView.Name = 'cxViewCounselToday') or (AView.Name = 'sg_xlsView') or
                                (AView.Name = 'sg_counsel')         or (AView.Name = 'sg_xls')) then
              begin
                if sTmp = '0' then sTmp := '접수'     else
                if sTmp = '1' then sTmp := '배차'     else
                if sTmp = '2' then sTmp := '완료'     else
                if sTmp = '3' then sTmp := '강제'     else
                if sTmp = '4' then sTmp := '문의'     else
                if sTmp = '5' then sTmp := '대기'     else
                if sTmp = '6' then sTmp := '대기해제' else
                if sTmp = '7' then sTmp := '배차취소' else
                if sTmp = '8' then sTmp := '취소'     else
                if sTmp = '9' then sTmp := '오더수정' else
                if sTmp = 'A' then sTmp := '재접수'   else
                if sTmp = 'C' then sTmp := '확정배차' else
                if sTmp = 'D' then sTmp := '운행'     else
                if sTmp = 'E' then sTmp := '후불정산' else
                if sTmp = 'L' then sTmp := 'LOCK'     else
                if sTmp = 'P' then sTmp := '후불입금' else
                if sTmp = 'R' then sTmp := '예약'     else
                if sTmp = 'S' then sTmp := '문자전송' else
                if sTmp = 'T' then sTmp := '전화'     else
                if sTmp = 'U' then sTmp := 'UNLOCK'   else
                if sTmp = 'V' then sTmp := '가배차';
              end;
              xArr[Col] := sTmp;
            end;
            Inc(Col);
          end;
        end;
        XL.Range['A' + IntToStr(Row+2), FixedCol + IntToStr(Row+2)].Value := xArr;
      end;
    finally
      Frm_Flash.cxPBar1.Visible := True;
      Frm_Flash.Gauge1.Visible := False;
      Frm_Flash.Hide;
      XL.DisplayAlerts := False;
      XL.Visible := true;
      Application.ProcessMessages;
      Screen.Cursor := crDefault;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure gfSetIndexNo(cxGridView: TcxGridDBTableView; iIndex: Integer; isOK: Boolean; iFirst : Integer; bSort : Boolean);
Var
  i, iNo, iCnt : Integer;
begin
  try
    try
			iNo := cxGridView.GetColumnByFieldName('No').Index;
    Except
      iNo := 0;
    end;

    if isOK then
    begin

      cxGridView.BeginUpdate;
      if iNo <> iIndex then
      begin
        if bSort then
        begin
          iCnt := cxGridView.DataController.RowCount;
          for i := iFirst to cxGridView.DataController.RowCount - 1 do
          begin
            cxGridView.ViewData.Records[i].Values[iNo] := iCnt;
            Dec(iCnt);
          end;
        end else
        begin
          iCnt := 1;
          for i := iFirst to cxGridView.DataController.RowCount - 1 do
          begin
            cxGridView.ViewData.Records[i].Values[iNo] := iCnt;
            Inc(iCnt);
          end;
        end;
      end;
      cxGridView.EndUpdate;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure gfSetIndexNo(cxGridView: TcxGridBandedTableView; isOK: Boolean); overload;
Var
  i : Integer;
begin
  try
    if isOK then
    begin
      cxGridView.BeginUpdate;
      for i := 0 to cxGridView.DataController.RowCount - 1 do
      begin
        cxGridView.ViewData.Records[i].Values[0] := i + 1;
      end;
      cxGridView.EndUpdate;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure GetTextSeperation_Add(ss_Delimiter: string; ss_DelimitedText: string; Var ss_Result : TStringList);
var
  i, iLength: Integer;
  s, s1: String;
begin
  try
    s := ss_DelimitedText;
    s := s + ss_Delimiter;
    iLength := Length(s);
    if Pos(ss_Delimiter, s) = 0 then
      Exit;
    i := 1;
    s1 := '';

    while i <= iLength do
    begin
      s1 := s1 + s[i];
      if (s[i] = ss_Delimiter) then
      begin
        s1 := Copy(s1, 1, Length(s1) - 1);
        ss_Result.Add(s1);
        s1 := '';
      end;
      Inc(i);
    end;
  except

  end;
end;

function ExecuteJavaScript(WebBrowser: TWebBrowser; Code: string): Variant;
var
  Document: IHTMLDocument2;
  Window: IHTMLWindow2;
begin
  // execute javascript in webbrowser
  Document := WebBrowser.Document as IHTMLDocument2;
  if not Assigned(Document) then Exit;
  Window := Document.parentWindow;
  if not Assigned(Window) then
    Exit;
  try
    Result := Window.execScript(Code, 'JavaScript');

//    HTMLWindow.execScript(JSFn, 'JavaScript'); // execute function
    // get result
//    Result := GetElementIdValue(WebBrowser1, 'input', 'result', 'value')
  except
    on E: Exception do
      raise Exception.Create('Javascript error ' + E.Message + ' in: '#13#10 + Code);
  end;
end;

function ExecuteJavaScriptGetNameValue(WebBrowser: TWebBrowser; Code1: string): Variant;
var
  Document: IHTMLDocument2;
  Window: IHTMLWindow2;
begin
  // execute javascript in webbrowser
  Document := WebBrowser.Document as IHTMLDocument2;
  if not Assigned(Document) then Exit;
  Window := Document.parentWindow;
  if not Assigned(Window) then
    Exit;
  try
    Result := GetElementNameValue(WebBrowser, 'input', Code1, 'value');
  except
    on E: Exception do
      raise Exception.Create('Javascript error ' + E.Message + ' in: '#13#10 + Code1);
  end;
end;

function ExecuteJavaScriptGetValue(WebBrowser: TWebBrowser; Code1: string): Variant;
var
  Document: IHTMLDocument2;
  Window: IHTMLWindow2;
begin
  // execute javascript in webbrowser
  Document := WebBrowser.Document as IHTMLDocument2;
  if not Assigned(Document) then Exit;
  Window := Document.parentWindow;
  if not Assigned(Window) then
    Exit;
  try
//    Window.execScript(Code, 'JavaScript');
    Result := GetElementIdValue(WebBrowser, 'input', Code1, 'value')
  except
    on E: Exception do
      raise Exception.Create('Javascript error ' + E.Message + ' in: '#13#10 + Code1);
  end;
end;

function GetElementIdValue(WebBrowser: TWebBrowser;
  TagName, TagId, TagAttrib: String): String;
var
  Document: IHTMLDocument2;
  Body: IHTMLElement2;
  Tags: IHTMLElementCollection;
  Tag: IHTMLElement;
  i: Integer;
begin
  try
    Result := '';
    if not Supports(WebBrowser.Document, IHTMLDocument2, Document) then
      raise Exception.Create('Invalid HTML document');
    if not Supports(Document.Body, IHTMLElement2, Body) then
      raise Exception.Create('Can''t find <body> element');
    Tags := Body.getElementsByTagName(UpperCase(TagName));
    for i := 0 to Pred(Tags.Length) do
    begin
      Tag := Tags.item(i, EmptyParam) as IHTMLElement;
      if Tag.ID = TagId then
        Result := Tag.getAttribute(TagAttrib, 0);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetElementNameValue(WebBrowser: TWebBrowser;
  TagName, TagId, TagAttrib: String): String;
var
  Document: IHTMLDocument2;
  Body: IHTMLElement2;
  Tags: IHTMLElementCollection;
  Tag: IHTMLElement;
  i: Integer;
begin
  try
    Result := '';
    if not Supports(WebBrowser.Document, IHTMLDocument2, Document) then
      raise Exception.Create('Invalid HTML document');
    if not Supports(Document.Body, IHTMLElement2, Body) then
      raise Exception.Create('Can''t find <body> element');
    Tags := Body.getElementsByTagName(UpperCase(TagName));
    for i := 0 to Pred(Tags.Length) do
    begin
      Tag := Tags.item(i, EmptyParam) as IHTMLElement;
      if Pos(TagId, String(Tag.outerHTML)) > 0 then
        Result := Tag.getAttribute(TagAttrib, 0);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetOKCashBackStr(AValue: string): string;
begin
  try
    Result := RemoveAll(AValue, '-');
    if Length(Result) <> 16 then
      Result := ''
    else
      Result := Format('%s-%s-%s-%s', [Copy(Result, 1, 4), Copy(Result, 5, 4),
        Copy(Result, 9, 4), Copy(Result, 13, 4)]);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function fSetFont( AForm : TForm; AFontName : String;  bHide : Boolean ) : Boolean;
Var
  i, idx : Integer;
begin
	try
    if Not Assigned(AForm) then Exit;

    idx := GFormInfo.Name.IndexOf(AForm.Name);
    if idx < 0 then
    begin
      GFormInfo.Name.Add(AForm.Name);
      GFormInfo.Font.Add('y');
      GFormInfo.Skin.Add('n');
    end else
    begin
      try
        // 한번 Font적용했으면 패스
        if (bHide) And (GFormInfo.Font.Strings[idx] = 'y') then Exit;
        GFormInfo.Font.Strings[idx] := 'y';
      except
      end;
    end;

    AForm.Font.Name := AFontName;
    for i := 0 to AForm.ComponentCount - 1 do
    begin
      if AForm.Components[i] is TPopupMenu  then
      begin
        (AForm.Components[i] as TPopupMenu ).OwnerDraw := True;
        Screen.MenuFont.Name := AFontName
      end else
      if AForm.Components[i] is TAdvGlowButton  then
      begin
        (AForm.Components[i] as TAdvGlowButton ).Font.Charset := DEFAULT_CHARSET;
        (AForm.Components[i] as TAdvGlowButton ).Font.Name := AFontName
      end else
      if AForm.Components[i] is TAdvToolPanelTab  then
      begin
        (AForm.Components[i] as TAdvToolPanelTab ).Font.Charset := DEFAULT_CHARSET;
        (AForm.Components[i] as TAdvToolPanelTab ).Font.Name := AFontName
      end else

      if AForm.Components[i] is TLabel          then
      begin
        (AForm.Components[i] as TLabel         ).Font.Charset := DEFAULT_CHARSET;
        (AForm.Components[i] as TLabel         ).Font.Name := AFontName;
      end else
      if AForm.Components[i] is TPanel          then
      begin
        (AForm.Components[i] as TPanel         ).Font.Charset := DEFAULT_CHARSET;
        (AForm.Components[i] as TPanel         ).Font.Name := AFontName;
      end else

      if AForm.Components[i] is TcxTextEdit     then
      begin
        (AForm.Components[i] as TcxTextEdit    ).Style.Font.Charset := DEFAULT_CHARSET;
        (AForm.Components[i] as TcxTextEdit    ).Style.Font.Name := AFontName;
        (AForm.Components[i] as TcxTextEdit    ).Properties.Changed;       // 폰트 맑은고딕으로 변경시 글씨가 상하로 잘리는 현상 재 위치 조정위해 처리
      end else
      if AForm.Components[i] is TcxDateEdit     then
      begin
        (AForm.Components[i] as TcxDateEdit    ).Style.Font.Name := AFontName;
        (AForm.Components[i] as TcxDateEdit    ).Properties.Changed;
      end else
      if AForm.Components[i] is TcxLabel        then
      begin
				if (AForm.Components[i] as TcxLabel ).Hint <> 'Font' then
				begin
					(AForm.Components[i] as TcxLabel       ).Style.Font.Charset := DEFAULT_CHARSET;
					(AForm.Components[i] as TcxLabel       ).Style.Font.Name := AFontName;
				end;
      end else
      if AForm.Components[i] is TcxButton       then
      begin
        (AForm.Components[i] as TcxButton      ).Font.Charset := DEFAULT_CHARSET;
        (AForm.Components[i] as TcxButton      ).Font.Name := AFontName;
      end else
      if AForm.Components[i] is TcxMemo         then
      begin
        (AForm.Components[i] as TcxMemo        ).Style.Font.Charset := DEFAULT_CHARSET;
        (AForm.Components[i] as TcxMemo        ).Style.Font.Name := AFontName;
        (AForm.Components[i] as TcxMemo        ).Properties.Changed;
        if ((AForm.Components[i] as TcxMemo).Name = 'meoStartArea' ) Or
           ((AForm.Components[i] as TcxMemo).Name = 'meoEndArea'   ) Or
           ((AForm.Components[i] as TcxMemo).Name = 'edtCuName'    ) then
        begin
          if AFontName = '맑은 고딕' then
            (AForm.Components[i] as TcxMemo        ).Style.Font.Name := '굴림';
        end;
      end else
      if AForm.Components[i] is TcxComboBox     then (AForm.Components[i] as TcxComboBox    ).Style.Font.Name := AFontName else
      if AForm.Components[i] is TcxDateEdit     then (AForm.Components[i] as TcxDateEdit    ).Style.Font.Name := AFontName else
      if AForm.Components[i] is TcxRichEdit     then (AForm.Components[i] as TcxRichEdit    ).Style.Font.Name := AFontName else
      if AForm.Components[i] is TcxGroupBox     then
      begin
        (AForm.Components[i] as TcxGroupBox    ).Style.Font.Charset := DEFAULT_CHARSET;
        (AForm.Components[i] as TcxGroupBox    ).Style.Font.Name := AFontName;
      end else
      if AForm.Components[i] is TdxStatusBar    then
      begin
        (AForm.Components[i] as TdxStatusBar   ).Font.Charset := DEFAULT_CHARSET;
        (AForm.Components[i] as TdxStatusBar   ).Font.Name := AFontName;
      end else
      if AForm.Components[i] is TcxPageControl  then
      begin
        (AForm.Components[i] as TcxPageControl ).Font.Charset := DEFAULT_CHARSET;
        (AForm.Components[i] as TcxPageControl ).Font.Name := AFontName;
			end else
      if AForm.Components[i] is TcxTabControl   then
      begin
        (AForm.Components[i] as TcxTabControl  ).Font.Charset := DEFAULT_CHARSET;
				(AForm.Components[i] as TcxTabControl  ).Font.Name := AFontName;
      end else
      if AForm.Components[i] is TcxGrid         then
      begin
        (AForm.Components[i] as TcxGrid        ).Font.Charset := DEFAULT_CHARSET;
				(AForm.Components[i] as TcxGrid        ).Font.Name := AFontName;
				(AForm.Components[i] as TcxGrid        ).LookAndFeel.ScrollbarMode := sbmClassic;
			end else
      if AForm.Components[i] is TcxCheckBox     then
      begin
        (AForm.Components[i] as TcxCheckBox    ).Style.Font.Charset := DEFAULT_CHARSET;
        (AForm.Components[i] as TcxCheckBox    ).Style.Font.Name := AFontName;
      end else
      if AForm.Components[i] is TcxRadioButton  then
      begin
        (AForm.Components[i] as TcxRadioButton ).Font.Charset := DEFAULT_CHARSET;
        (AForm.Components[i] as TcxRadioButton ).Font.Name := AFontName;
      end else
      if AForm.Components[i] is TcxTreeView     then
      begin
        (AForm.Components[i] as TcxTreeView    ).Style.Font.Charset := DEFAULT_CHARSET;
        (AForm.Components[i] as TcxTreeView    ).Style.Font.Name := AFontName;
      end else
      if AForm.Components[i] is TcxListBox      then (AForm.Components[i] as TcxListBox     ).Style.Font.Name := AFontName else
      if AForm.Components[i] is TcxSpinEdit     then
      begin
        (AForm.Components[i] as TcxSpinEdit    ).Style.Font.Name := AFontName;
        (AForm.Components[i] as TcxSpinEdit    ).Properties.Changed;
      end else
      if AForm.Components[i] is TcxTimeEdit     then
      begin
        (AForm.Components[i] as TcxTimeEdit    ).Style.Font.Name := AFontName;
        (AForm.Components[i] as TcxTimeEdit    ).Properties.Changed;
      end else
      if AForm.Components[i] is TcxCurrencyEdit then
      begin
        (AForm.Components[i] as TcxCurrencyEdit).Style.Font.Name := AFontName;
        (AForm.Components[i] as TcxCurrencyEdit).Properties.Changed;
      end;
    end;
  except
  end;
end;

function fSetSkin( AForm : TForm;  bHide : Boolean ) : Boolean;
Var
  i, idx : Integer;
  ASkinName : String;
  ABackgroundColor, AFocusColor, AFocusTextColor, AGridLineColor, ATextColor : TColor;
begin
	try
    if Not GB_DARKMODE then Exit;
    if Not Assigned(AForm) then Exit;

    idx := GFormInfo.Name.IndexOf(AForm.Name);
    if idx < 0 then
    begin
      GFormInfo.Name.Add(AForm.Name);
      GFormInfo.Font.Add('n');
      GFormInfo.Skin.Add('y');
    end else
    begin
      // 한번 Font적용했으면 패스
      try
        if (bHide) And (GFormInfo.Skin.Strings[idx] = 'y') then Exit;
        GFormInfo.Skin.Strings[idx] := 'y';
      except
      end;
    end;

    ASkinName := 'MetropolisDark';

    GS_ActiveColor   := $00098AF7;
    ABackgroundColor := $00333333;
    AFocusColor      := $00098AF7;
    AFocusTextcolor  := clBlack;
    AGridLineColor   := $00515151;
    ATextColor       := $00E3E3E3;

    AForm.Color := ABackgroundColor;

    for i := 0 to AForm.ComponentCount - 1 do
    begin
//      if AForm.Components[i] is TMenuItem then
//      begin
//        (AForm.Components[i] as TMenuItem).OnDrawItem := OnDrawMenuItem;
//      end else
      if AForm.Components[i] is TPanel then
      begin
        if (AForm.Components[i] as TPanel ).Name = 'pnlTitle' then
          (AForm.Components[i] as TPanel ).Color := $006A6A6A       // $005A5A5A
        else
          (AForm.Components[i] as TPanel ).Color := ABackgroundColor;

        (AForm.Components[i] as TPanel ).ParentBackground := False;
        (AForm.Components[i] as TPanel ).Font.Color := clWhite;
      end else
      if AForm.Components[i] is TShape then
      begin
        if (AForm.Components[i] as TShape ).Hint = '' then
          (AForm.Components[i] as TShape ).Brush.Color := ABackgroundColor;
//        (AForm.Components[i] as TShape ).Pen.Color := clSilver;
        (AForm.Components[i] as TShape ).Pen.Color := ABackgroundColor;

        if (AForm.Components[i] as TShape ).Hint = 'Line' then
        begin
          (AForm.Components[i] as TShape ).Brush.Color := ABackgroundColor;
          (AForm.Components[i] as TShape ).Pen.Color := AGridLineColor
        end;
      end else

      if AForm.Components[i] is TAdvStringGrid  then
      begin
        (AForm.Components[i] as TAdvStringGrid).Color := ABackgroundColor;
        (AForm.Components[i] as TAdvStringGrid).GridLineColor := AGridLineColor;
        (AForm.Components[i] as TAdvStringGrid).Font.Color := ATextColor;
        (AForm.Components[i] as TAdvStringGrid).SelectionColor := AFocusColor;
      end else

      if AForm.Components[i] is TcxTextEdit     then
      begin
        (AForm.Components[i] as TcxTextEdit    ).Style.LookAndFeel.SkinName := ASkinName;
        (AForm.Components[i] as TcxTextEdit    ).Style.AssignedValues := [4];
        (AForm.Components[i] as TcxTextEdit    ).StyleFocused.Color := AFocusColor;
        (AForm.Components[i] as TcxTextEdit    ).StyleFocused.TextColor := AFocusTextcolor;
      end else
      if AForm.Components[i] is TcxDateEdit     then
      begin
        (AForm.Components[i] as TcxDateEdit    ).Style.LookAndFeel.SkinName := ASkinName;
//        (AForm.Components[i] as TcxDateEdit    ).Style.AssignedValues := [4];                    // TcxDateEdit 포커스 사용 안함. LYB
//        (AForm.Components[i] as TcxDateEdit    ).StyleFocused.Color := AFocusColor;
//        (AForm.Components[i] as TcxDateEdit    ).StyleFocused.TextColor := AFocusTextcolor;
      end else
      if AForm.Components[i] is TcxLabel        then
      begin
        if (AForm.Components[i] as TcxLabel ).Hint <> 'Color' then
        begin
          (AForm.Components[i] as TcxLabel ).Style.Color := ABackgroundColor;
          (AForm.Components[i] as TcxLabel ).Style.LookAndFeel.AssignedValues := [lfvSkinName];
          (AForm.Components[i] as TcxLabel ).Style.LookAndFeel.SkinName := ASkinName;
          (AForm.Components[i] as TcxLabel ).Style.AssignedValues := [1,4];
          (AForm.Components[i] as TcxLabel ).Transparent := True;
        end;
        if ( (AForm.Components[i] as TcxLabel ).Style.TextColor = clBlue ) Or
           ( (AForm.Components[i] as TcxLabel ).Style.TextColor = $00FF8000 ) then
           (AForm.Components[i] as TcxLabel ).Style.TextColor := clAqua else
        if ( (AForm.Components[i] as TcxLabel ).Style.TextColor = $00400080 ) then
           (AForm.Components[i] as TcxLabel ).Style.TextColor := $00B973FF;
      end else
      if AForm.Components[i] is TcxButton       then
      begin
        if (AForm.Components[i] as TcxButton ).LookAndFeel.SkinName = '' then Continue;
        
        (AForm.Components[i] as TcxButton ).LookAndFeel.SkinName := ASkinName;
        (AForm.Components[i] as TcxButton ).LookAndFeel.AssignedValues := [lfvSkinName];
      end else
      if AForm.Components[i] is TcxMemo         then
      begin
        if (AForm.Components[i] as TcxMemo ).Hint <> 'Color' then
        begin
          (AForm.Components[i] as TcxMemo ).Style.LookAndFeel.AssignedValues := [lfvSkinName];
          (AForm.Components[i] as TcxMemo ).Style.LookAndFeel.SkinName := ASkinName;
          (AForm.Components[i] as TcxMemo ).Style.AssignedValues := [4];
          (AForm.Components[i] as TcxMemo ).StyleFocused.Color := AFocusColor;
          (AForm.Components[i] as TcxMemo ).StyleFocused.TextColor := AFocusTextcolor;
        end;
      end else
      if AForm.Components[i] is TcxComboBox     then
      begin
        (AForm.Components[i] as TcxComboBox).Style.LookAndFeel.SkinName := ASkinName;
        (AForm.Components[i] as TcxComboBox).StyleFocused.Color := AFocusColor;
        (AForm.Components[i] as TcxComboBox).StyleFocused.TextColor := AFocusTextcolor;
      end else
      if AForm.Components[i] is TcxRichEdit     then
      begin
        (AForm.Components[i] as TcxRichEdit).Style.LookAndFeel.AssignedValues := [lfvSkinName];
        (AForm.Components[i] as TcxRichEdit).Style.LookAndFeel.SkinName := ASkinName;
        (AForm.Components[i] as TcxRichEdit).Style.TextColor := clWhite;
//        (AForm.Components[i] as TcxRichEdit).StyleFocused.Color := AFocusColor;             // richEdit는 포커스 사용 못함. LYB
//        (AForm.Components[i] as TcxRichEdit).StyleFocused.TextColor := AFocusTextcolor;
      end else
      if AForm.Components[i] is TcxGroupBox     then
      begin
        if Pos('grpSet', (AForm.Components[i] as TcxGroupBox ).Name ) > 0  then
          (AForm.Components[i] as TcxGroupBox    ).Style.LookAndFeel.SkinName := 'Sharp'
        else
          (AForm.Components[i] as TcxGroupBox    ).Style.LookAndFeel.SkinName := ASkinName;
      end else
      if AForm.Components[i] is TdxStatusBar    then
      begin
        (AForm.Components[i] as TdxStatusBar   ).LookAndFeel.SkinName := ASkinName;
      end else
      if AForm.Components[i] is TcxPageControl  then
      begin
        (AForm.Components[i] as TcxPageControl ).LookAndFeel.SkinName := ASkinName;
      end else
      if AForm.Components[i] is TcxTabControl   then
      begin
        (AForm.Components[i] as TcxTabControl  ).LookAndFeel.SkinName := ASkinName;
      end else
      if AForm.Components[i] is TcxGrid         then
      begin
        (AForm.Components[i] as TcxGrid        ).LookAndFeel.SkinName := ASkinName;
      end else
      if AForm.Components[i] is TcxCheckBox     then
      begin
        (AForm.Components[i] as TcxCheckBox    ).Style.LookAndFeel.SkinName := ASkinName;
//        (AForm.Components[i] as TcxCheckBox    ).Style.AssignedValues := [4];
        if (AForm.Components[i] as TcxCheckBox ).Style.TextColor = clBlue then
          (AForm.Components[i] as TcxCheckBox ).Style.TextColor := clAqua else
        if (AForm.Components[i] as TcxCheckBox ).Style.TextColor = $00804000 then
          (AForm.Components[i] as TcxCheckBox ).Style.TextColor := $00FFAD5B;

        (AForm.Components[i] as TcxCheckBox ).Transparent := True;
      end else
      if AForm.Components[i] is TcxRadioButton  then
      begin
        (AForm.Components[i] as TcxRadioButton ).LookAndFeel.SkinName := ASkinName;
        (AForm.Components[i] as TcxRadioButton ).Transparent := True;
      end else
      if AForm.Components[i] is TcxTreeView     then
      begin
        (AForm.Components[i] as TcxTreeView    ).Style.LookAndFeel.SkinName := ASkinName;
      end else
      if AForm.Components[i] is TcxListBox      then (AForm.Components[i] as TcxListBox     ).Style.LookAndFeel.SkinName := ASkinName else
      if AForm.Components[i] is TcxTreeList     then (AForm.Components[i] as TcxTreeList    ).LookAndFeel.SkinName := ASkinName else
      if AForm.Components[i] is TcxProgressBar  then (AForm.Components[i] as TcxProgressBar ).Style.LookAndFeel.SkinName := ASkinName else
      if AForm.Components[i] is TcxSpinEdit     then
      begin
        (AForm.Components[i] as TcxSpinEdit).Style.LookAndFeel.SkinName := ASkinName;
        (AForm.Components[i] as TcxSpinEdit).StyleFocused.Color := AFocusColor;
        (AForm.Components[i] as TcxSpinEdit).StyleFocused.TextColor := AFocusTextcolor;
      end else
      if AForm.Components[i] is TcxTimeEdit     then
      begin
        (AForm.Components[i] as TcxTimeEdit).Style.LookAndFeel.SkinName := ASkinName;
        (AForm.Components[i] as TcxTimeEdit).StyleFocused.Color := AFocusColor;
        (AForm.Components[i] as TcxTimeEdit).StyleFocused.TextColor := AFocusTextcolor;
      end else
      if AForm.Components[i] is TdxTileControl  then (AForm.Components[i] as TdxTileControl ).LookAndFeel.SkinName := ASkinName else
      if AForm.Components[i] is TcxCurrencyEdit then
      begin
        (AForm.Components[i] as TcxCurrencyEdit).Style.LookAndFeel.AssignedValues := [lfvSkinName];
        (AForm.Components[i] as TcxCurrencyEdit).Style.LookAndFeel.SkinName := ASkinName;
        (AForm.Components[i] as TcxCurrencyEdit).StyleFocused.Color := AFocusColor;
        (AForm.Components[i] as TcxCurrencyEdit).StyleFocused.TextColor := AFocusTextcolor;
      end;
    end;
  except
  end;
end;

procedure pSetSkinButton( AButton : TcxButton );
begin
  if GB_DARKMODE then
  begin
    if AButton.Down then AButton.LookAndFeel.SkinName := 'Office2010Silver'
                    else AButton.LookAndFeel.SkinName := 'MetropolisDark';
  end else
  begin
    if AButton.Down then AButton.LookAndFeel.SkinName := 'Sharp'
                    else AButton.LookAndFeel.SkinName := 'Office2010Silver';
  end;
end;

function GetChangeStringAs(sText: AnsiString): String;
Var
  sR: String;
  i: Integer;
begin
  sR := '';
  for i := 0 to Length(sText) - 1 do
    sR := sR + '-';
  Result := sR;
end;

function func_cxGridToExcel(sFileName: string; cxGrid: TcxGridDBTableView;
  Gauge1: TGauge): Boolean;
const
  xlcenter = -4108;
  xlLeft = -4131;
  xlEdgeLeft = -4131;
  xlEdgeRight = -4152;
  xlEdgeTop = -4160;
  xlEdgeBottom = -4107;
  xlContinuous = 1;
var
  i, j, re_count, colcount: Integer;
  xls, wb, Range_buf: OleVariant;
  ArrData, ArrData2: Variant;
	sName, sTmp : string;
begin
  Result := False;

  if cxGrid.DataController.RecordCount = 0 then
  begin
    GMessagebox('조회된 데이터가 없습니다.', CDMSE);
    Exit;
  end;
  Application.ProcessMessages;
  Result := False;
  try
    xls := CreateOleObject('Excel.Application');
  except
    GMessagebox('엑셀이 설치되지 않았습니다.', CDMSE);
    Exit;
  end;
  try
    try
      colcount := 0;
      for i := 0 to cxGrid.ColumnCount - 1 do
      begin
        if cxGrid.Columns[i].Visible then
          Inc(colcount);
      end;

      sName := ExtractFileName(sFileName);
      sName := StringReplace(sName, '.xls', '', [rfReplaceAll]);
      // initialize an instance of Excel}
      // create workbook}
      wb := xls.WorkBooks.Add;
      wb.WorkSheets[1].Name := sName;

      // retrieve a range where data must be placed}

      re_count := cxGrid.DataController.RecordCount + 1;;
      Screen.Cursor := crHourGlass;
      ArrData := VarArrayCreate([1, 1, 1, colcount + 1], varVariant);
      ArrData2 := VarArrayCreate([2, re_count, 1, colcount + 1], varVariant);
      colcount := 1;
      for i := 0 to cxGrid.ColumnCount - 1 do
      begin
        if cxGrid.Columns[i].Visible then
        begin
          ArrData[1, colcount] := cxGrid.Columns[i].Caption;;
          Inc(colcount);
        end;
      end;

      Range_buf := wb.WorkSheets[1].Range[wb.WorkSheets[1].Cells[1, 1], wb.WorkSheets[1].Cells[1, colcount - 1]];
      // 엑셀데이타 가운데 정렬
      Range_buf.HorizontalAlignment := xlcenter; // 가운데
      Range_buf.VerticalAlignment := xlcenter; // 가운데
      Range_buf.Value := ArrData;

      Range_buf.Font.Color := clBlack;

      Range_buf.Font.Name := '굴림';
      Range_buf.Font.Size := 10;
			Range_buf.Font.Bold := false;
			Range_buf.Interior.Color := clsilver;

			Range_buf.borders[xlEdgeLeft].LineStyle := xlContinuous;
      Range_buf.borders[xlEdgeLeft].Colorindex := 16;
      Range_buf.borders[xlEdgeRight].LineStyle := xlContinuous;
      Range_buf.borders[xlEdgeRight].Colorindex := 16;
      Range_buf.borders[xlEdgeBottom].LineStyle := xlContinuous;
      Range_buf.borders[xlEdgeBottom].Colorindex := 16;
      Range_buf.borders[xlEdgeTop].LineStyle := xlContinuous;
      Range_buf.borders[xlEdgeTop].Colorindex := 16;

      Gauge1.MaxValue := cxGrid.DataController.RecordCount - 1;
      for i := 0 to cxGrid.DataController.RecordCount - 1 do
      begin
        colcount := 1;
        for j := 0 to cxGrid.ColumnCount - 1 do
        begin
          if cxGrid.Columns[j].Visible then
          begin
            // 2010.12.31 인증내역의 엑셀에서 강제변환날짜타입 제한해제
            // if cxGrid.Columns[j].PropertiesClassName = 'TcxImageComboBoxProperties' then

            // if (Length(cxGrid.DataController.GetDisplayText(i, j))=11) and (Copy(cxGrid.DataController.GetDisplayText(i, j),3,1)='-') and (Copy(cxGrid.DataController.GetDisplayText(i, j),9,1)=':') then
            // if (Pos('인증일시',cxGrid.Columns[j].Caption)>0) or (Pos('만료일시',cxGrid.Columns[j].Caption)>0) then
            // ArrData2[i + 2, colcount] :=
            // ' '+cxGrid.DataController.GetDisplayText(i, j)
            // else
						sTmp := cxGrid.DataController.GetDisplayText(i, j);
//						if (j = 20) and (Pos(':', sTmp) > 0) then
//						begin
//							sTmp := Format('''%s', [sTmp]);   //'''00:00'
//						end;
						ArrData2[i + 2, colcount] := sTmp;
//              cxGrid.DataController.GetDisplayText(i, j);
            // else
						// ArrData2[i+2,colcount] := cxGrid.DataController.Values[i,j];
            Inc(colcount);
          end;
        end;
        Gauge1.Progress := i;
      end;

      Gauge1.Progress := 0;

      Range_buf := wb.WorkSheets[1].Range[wb.WorkSheets[1].Cells[2, 1], wb.WorkSheets[1].Cells[re_count, colcount - 1]];
      // 엑셀데이타 가운데 정렬
      Range_buf.HorizontalAlignment := xlLeft; // 가운데
      Range_buf.VerticalAlignment := xlcenter; // 가운데
      // 엑셀 데이타를 문자형으로
      if Pos('법인_일마감', sFileName) > 0 then
  			Range_buf.NumberFormatLocal := '@';
      // copy data from allocated variant array}
			Range_buf.Value := ArrData2;

      Range_buf.Font.Color := clBlack;
      Range_buf.Font.Name := '굴림';
			Range_buf.Font.Size := 9;
      Range_buf.Font.Bold := False;
      Range_buf.Interior.Color := clWhite;

      Range_buf.borders[xlEdgeLeft].LineStyle := xlContinuous;
      Range_buf.borders[xlEdgeLeft].Colorindex := 16;
      Range_buf.borders[xlEdgeRight].LineStyle := xlContinuous;
      Range_buf.borders[xlEdgeRight].Colorindex := 16;
      Range_buf.borders[xlEdgeBottom].LineStyle := xlContinuous;
      Range_buf.borders[xlEdgeBottom].Colorindex := 16;
      Range_buf.borders[xlEdgeTop].LineStyle := xlContinuous;
      Range_buf.borders[xlEdgeTop].Colorindex := 16;
      //
      Screen.Cursor := crDefault;

      // show Excel with our data}
      //
      xls.Columns.AutoFit;
      wb.WorkSheets[1].SaveAs(sFileName);

      xls.Visible := true;
      Result := true;
    finally
    end;
  except
    Screen.Cursor := crDefault;
    GMessagebox('알수 없는 일이 발생하여 데이타를 엑셀로 변환하는데 실패 하였습니다!!!', CDMSE);
    Exit;
  end;
end;

function func_cxGridToTxt(sFileName: string; cxGrid: TcxGridDBTableView;
  cxProgress: TGauge): Boolean;
var
  i, j: Integer;
  sTemp: string;
  slFile: TStringList;
begin
  Application.ProcessMessages;
  Result := False;
  try
    slFile := TStringList.Create;
    slFile.Clear;
    cxProgress.MaxValue := cxGrid.DataController.RecordCount - 1;
    cxProgress.Progress := 0;
    for i := 0 to cxGrid.DataController.RecordCount - 1 do
    begin
      sTemp := cxGrid.DataController.Values[i, 0];
      for j := 1 to cxGrid.ColumnCount - 1 do
      begin
        sTemp := sTemp + ',' + StringReplace
          (VarToStr(cxGrid.DataController.Values[i, j]), ',', '', [rfReplaceAll]);
      end;
      slFile.Add(sTemp);
      cxProgress.Progress := i;
    end;
    slFile.SaveToFile(sFileName);
    FreeAndNil(slFile);
  except
    Screen.Cursor := crDefault;
    GMessagebox('알수 없는 일이 발생하여 데이타를 파일로 변환하는데 실패 하였습니다!!!', CDMSE);
    Exit;
  end;
end;

function func_ExcelTocxGrid(AFilename: string; AView: TcxGridDBTableView;
  AGauge: TGauge): Boolean;
var
  FExcel: Variant;
  FWorkbook: Variant;
  FWorksheet: Variant;
  FCell: Variant;
  FArray: Variant;
  Row, s, z: Integer;
  rangestr: string;
  startstr, endstr: string;
  Code: Integer;
  sR, er, sc, ec: Integer;
  ulc: Boolean;
  OldCursor: TCursor;
  colcount, RowCount, tCount : Integer;

  iArea, iStatus: Integer;
begin
  Result := False;

  OldCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;

  try
    FExcel := CreateOleObject('excel.application');
  except
    Screen.Cursor := OldCursor;
    GMessagebox('엑셀파일을 불러오지 못합니다. [Excel OLE not found.]', CDMSE);
    // raise EAdvGridError.Create('Excel OLE server not found');
    Exit;
  end;

  iArea := AView.GetColumnByFieldName('지역').Index;
  iStatus := AView.GetColumnByFieldName('상태').Index;

  try
    try
      FWorkbook := FExcel.WorkBooks.Open(AFilename);
      FWorksheet := FWorkbook.ActiveSheet;
      rangestr := FWorksheet.UsedRange.Address;

      // decode here how many cells are required, $A$1:$D$8 for example
      startstr := '';
      endstr := '';

      sc := -1;
      ec := -1;

      if Pos(':', rangestr) > 0 then
      begin
        startstr := Copy(rangestr, 1, Pos(':', rangestr) - 1);
        endstr := Copy(rangestr, Pos(':', rangestr) + 1, 255);

        if Pos('$', startstr) = 1 then
          Delete(startstr, 1, 1);

        if Pos('$', endstr) = 1 then
          Delete(endstr, 1, 1);

        ulc := not(Pos('$', startstr) > 0);

        if Pos('$', startstr) > 0 then
          val(Copy(startstr, Pos('$', startstr) + 1, 255), sR, Code)
        else
          val(startstr, sR, Code);

        if Code <> 0 then
          sR := -1;

        if Pos('$', endstr) > 0 then
          val(Copy(endstr, Pos('$', endstr) + 1, 255), er, Code)
        else
          val(endstr, er, Code);

        if Code <> 0 then
          er := -1;

        // now decode the Columns
        if ulc then
        begin
          sc := 1;
          ec := 256;
        end
        else
        begin
          if Pos('$', startstr) > 0 then
            startstr := Copy(startstr, 1, Pos('$', startstr) - 1);

          if Pos('$', endstr) > 0 then
            endstr := Copy(endstr, 1, Pos('$', endstr) - 1);

          if startstr <> '' then
            sc := ord(startstr[1]) - 64;

          if Length(startstr) > 1 then
            sc := sc * 26 + ord(startstr[2]) - 64;

          if endstr <> '' then
            ec := ord(endstr[1]) - 64;
          if Length(endstr) > 1 then
            ec := ec * 26 + ord(endstr[2]) - 64;
        end;
      end
      else
      begin
        sc := 1;
        sR := 1;
        ec := 1;
        er := 1;
      end;

      colcount := 0;
      RowCount := 0;
      tCount   := 0;

      if (sR <> -1) and (er <> -1) and (sc <> -1) and (ec <> -1) then
      begin
        colcount := ec - sc + 1;
        RowCount := er - sR + 1;
      end;

      rangestr := Chr(ord('A') - 1 + sc) + IntToStr(sR) + ':';

      if (colcount > 26) then
      begin
        rangestr := rangestr + Chr(ord('A') - 1 + ((ec - sc) div 26));
        rangestr := rangestr + Chr(ord('A') + ((ec - sc) mod 26));
      end
      else
        rangestr := rangestr + Chr(ord('A') - 1 + ec);

      rangestr := rangestr + IntToStr(er);

      AGauge.Progress := 0;
      AGauge.MaxValue := RowCount;

      FArray := FWorksheet.Range[rangestr].Value;

      AView.BeginUpdate;
      AView.DataController.RecordCount := RowCount;
      try
        for s := 2 to RowCount do
        begin
          Row := s - 2;
          if VarIsClear(FArray[s, 1]) then Continue;   // No값이 없으면 자료로 인식하지 않음  2020.09.23 LYB
          for z := 1 to colcount do
          begin
            FCell := FArray[s, z];

            if VarIsClear(FCell) then
              FCell := EmptyStr;

            AView.DataController.Values[Row, z - 1] := FCell;
          end;

          AView.DataController.Values[Row, 0] := Row + 1;
          AView.DataController.Values[Row, iArea] := ''
          + AView.DataController.Values[Row, 1]
          + AView.DataController.Values[Row, 2]
          + AView.DataController.Values[Row, 3]
          + AView.DataController.Values[Row, 4]
          + AView.DataController.Values[Row, 5]
          + AView.DataController.Values[Row, 6];
          AView.DataController.Values[Row, iStatus] := 'I';

          Inc(tCount);

          if s mod 100 = 0 then
          begin
            AGauge.Progress := s;
            Application.ProcessMessages;
          end;
        end;
      finally
        AView.EndUpdate;
      end;

      AGauge.Progress := AGauge.MaxValue;

			GMessagebox(Format('요금파일 [%d 건] 불러오기를 완료했습니다.' + #10#13 + '저장을 하셔야 실제로 반영됩니다.', [tCount]), CDMSI);
			Result := true;
    except
      on E: Exception do
        GMessagebox('엑셀을 불러오는 도중 오류가 발생했습니다.' + #13#10 + '엑셀파일 오류 라인 [' + IntToStr(Row+2) + '] 을 확인하세요.', CDMSE);
    end;
  finally
    FWorkbook.Close(SaveChanges := False);
    FExcel.Quit;
    FExcel := UnAssigned;
    Screen.Cursor := OldCursor;
  end;
end;

function func_TxtTocxGrid(AFilename: string; AView: TcxGridDBTableView;
  AGauge: TGauge): Boolean;
var
  i, j, Row, RowCount, iArea, iStatus: Integer;
  TextFile, ColList: TStringList;
begin
  Application.ProcessMessages;
  Result := False;
  try
    iArea := AView.GetColumnByFieldName('지역').Index;
    iStatus := AView.GetColumnByFieldName('상태').Index;

    TextFile := TStringList.Create;
    TextFile.LoadFromFile(AFilename);

    ColList := TStringList.Create;

    AGauge.Progress := 0;
    AGauge.MaxValue := TextFile.Count - 1;

    Application.ProcessMessages;
    AView.DataController.SetRecordCount(0);
    Application.ProcessMessages;
    AView.BeginUpdate;
    AView.DataController.SetRecordCount(TextFile.Count - 1);
    try
      for i := 1 to TextFile.Count - 1 do
      begin
        Row := i - 1;
        ColList.CommaText := TextFile[i];

        for j := 1 to ColList.Count - 1 do
          AView.DataController.Values[Row, j] := ColList[j];

        AView.DataController.Values[Row, 0] := IntToStr(i);
        AView.DataController.Values[Row, iArea] := '' + ColList[1] + ColList[2]
          + ColList[3] + ColList[4] + ColList[5] + ColList[6];
        AView.DataController.Values[Row, iStatus] := 'I';

        if i mod 100 = 0 then
        begin
          AGauge.Progress := i;
          Application.ProcessMessages;
        end;
      end;

      AGauge.Progress := AGauge.MaxValue;

			RowCount := TextFile.Count - 1;
    finally
      AView.EndUpdate;
      FreeAndNil(TextFile);
      FreeAndNil(ColList);
    end;

		GMessagebox(Format('요금파일 [%d 건] 불러오기를 완료했습니다.' + #10#13 + '저장을 하셔야 실제로 반영됩니다.', [RowCount-1]), CDMSI);

		Result := true;
  except
    on err: Exception do
    begin
      ShowMessage('요금표 파일을 불러오는 도중 오류가 발생했습니다. 파일을 확인하세요.');
    end;
  end;
end;

function Ceil(const X: Extended): Integer;
begin
  Result := Integer(Trunc(X));
  if Frac(X) > 0 then
    Inc(Result);
end;

function copy_st(sSource, st1, st2: string): string;
var
  iPos1, iPos2: Int64;
begin
  Result := '';
  iPos1 := Pos(st1, sSource);
  iPos2 := Pos(st2, sSource) + 1;
  Result := Trim(Copy(sSource, iPos1, iPos2 - iPos1));
end;

function copy_st2(sSource, st1, st2: string): string;
var
  iPos1, iPos2: Int64;
begin
  Result := '';
  iPos1 := Pos(st1, sSource);
  iPos2 := Pos(st2, sSource);
  Result := Trim(Copy(sSource, iPos1, iPos2 - iPos1));
end;

function GetStrPharseByte(const AValue: string; AByte: Integer): string;
var
  P: Integer;
begin
  try
    P := 1;
    Result := '';

		if GetSmsMemoLength(AnsiString(AValue)) <= AByte then
		begin
      Result := AValue;
      Exit;
    end;

		while GetSmsMemoLength(AnsiString(Result)) < AByte do
    begin
      if ByteType(AValue, P) = mbSingleByte then
      begin
        Result := Result + AValue[P];
        Inc(P);
      end else
      begin
				if GetSmsMemoLength(AnsiString(Result)) + 2 > AByte then
          Break;
        Result := Result + Copy(AValue, P, 2);
				Inc(P, 2);
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure SetServerCidList( sList : String; var AList : TStringList );
var
  ln_Env : TIniFile;
  lsTmp, lsTmp1  : TStringList;
  i : Integer;
begin
  try
  	ln_Env := TIniFile.Create(ENVPATHFILE);
    lsTmp  := TStringList.Create;
    lsTmp1 := TStringList.Create;
    AList.Clear;
  	try
      // CID 서버 목록 비교
      if Trim(sList) <> '' then
      begin
        // sntest┌강남서버┌192.168.2.53─sntest1┌노원서버┌192.168.2.54
        lsTmp.Delimiter := '─';
        lsTmp.DelimitedText := sList;

        for i := 0 to lsTmp.Count - 1 do
        begin
          lsTmp1.Delimiter := '┌';
          lsTmp1.DelimitedText := lsTmp[i];

          AList.Add(lsTmp1[1] + '[' + lsTmp1[2] + ']');
        end;
      end;
      ln_Env.writeString('CID_COMM', 'CID_SELSVRLIST', sList);
   finally
  		FreeAndNil(ln_Env);
  		FreeAndNil(lsTmp);
  		FreeAndNil(lsTmp1);
  	end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function Check_ShareGroup(ALocality: Boolean; AShareNo: string): String;  // Result = 상대연합코드
begin
	if (ALocality and
		 ((AShareNo = 'G35') or (AShareNo = 'G32') or (AShareNo = 'G42') or (AShareNo = 'G34') or
			(AShareNo = 'G53') or (AShareNo = 'G23') or (AShareNo = 'G38') or (AShareNo = 'G45'))) then
		Result := 'G70'
	else
	if (ALocality and
		 ((AShareNo = 'G33') or (AShareNo = 'G52') or (AShareNo = 'G04') or (AShareNo = 'G37') or
      (AShareNo = 'G06') or (AShareNo = 'G16') or (AShareNo = 'G57') or (AShareNo = 'G48'))) then
		Result := 'G71'
	else
	if (ALocality and
     ((AShareNo = 'G18') Or  (AShareNo = 'G09') Or (AShareNo = 'G25') Or (AShareNo = 'G31') Or (AShareNo = 'G43'))) then
		Result := 'G72'
	else
	if (ALocality and (AShareNo = 'G15')) then
		Result := 'G73';
end;

function Cheonan_ShareGroup(ALocalGubun, AShareNo: string): Boolean;  // Result = 상대연합코드
begin
	Result := False;      //G15	18_평택연합    G09	06-[천안]천안연합  G18-[천안]중부연합(오둘둘_월드_  G43-천안a연합
	if ((ALocalGubun = 'S') and                                        //20191119 명재대리 요청         //20200108  명재대리 요청
		 ((AShareNo = 'G09') Or (AShareNo = 'G25') Or (AShareNo = 'G15') Or (AShareNo = 'G18') or (AShareNo = 'G43'))) then
		Result := True;
end;

function func_Age(sAge1, sAge2: string): String;
var   nYear, nDay, nAge : Integer;
	y, m, d : word;
begin
	Try
		Result := '';
		if ( sAge1 <> '' ) And ( sAge2 <> '' ) then
		begin
			nYear := StrToInt(Copy(sAge1,1,2));
			if sAge2[1] in ['3','4'] then nYear := nYear + 2000
															 else nYear := nYear + 1900;
			nDay := StrToIntDef(Copy(sAge1,3, 4), 0);
			DecodeDate(now, y, m ,d);
			nAge := y - nYear;
			if nDay > (m * 100 + d) then nAge := nAge - 1;
			Result := '만 ' + IntToStr(nAge) + '세';
		end;
	except
		Result := '';
	end
end;

function func_Age2(sAge1: string): String;
var   nYear, nDay, nAge : Integer;
	y, m, d : word;
begin
	Try
		Result := '';
		if sAge1 <> '' then
		begin
			nYear := StrToIntDef(Copy(sAge1,1,2), 0);
			if nYear > 30 then nYear := nYear + 1900
										else nYear := nYear + 2000;
			nDay := StrToIntDef(Copy(sAge1,3, 4), 0);
			DecodeDate(now, y, m ,d);
			nAge := y - nYear;
			if nDay > (m * 100 + d) then nAge := nAge - 1;
			Result := '만 ' + IntToStr(nAge) + '세';
		end;
	except
		Result := '';
	end
end;

function getWGS84(idata: string): string;
var
  i_degree, v_mm, v_ss, v_sss : Double;
  Odata : string;
begin
  try
    i_degree := StrToFloatDef(idata, 0);
    v_mm := (i_degree * 60) - (Trunc(i_degree) * 60) ;
    v_ss := (v_mm * 60) - (Trunc(v_mm) * 60) ;
    v_sss := (v_ss * 100) - (Trunc(v_ss) * 100);

    Odata := FloatToStr(Trunc(i_degree));
    if Trunc(v_mm) < 10 then Odata := Odata + '0';
    Odata := Odata + FloatToStr(Trunc(v_mm));
    if Trunc(v_ss) < 10 then Odata := Odata + '0';
    Odata := Odata + FloatToStr(Trunc(v_ss));
    if Trunc(v_sss) < 10 then Odata := Odata + '0';
    Odata := Odata + FloatToStr(Trunc(v_sss));

    Result := Odata;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function proc_HttpGetWorkImageURL(sWkSabun, AGubun: String) : String;
Const _WKIMG_KEY = 'b3p61sf89mec7z0rsn8q1e4nix99rq0k';
            _URL = 'http://cas.callmaner.com:8080/cs/driver.jpg?';
var
	sTMP, s, sss, sGubun : AnsiString;
	iEncryptLen, ii : Integer;
begin
	try
		if AGubun = 'Person' then
		begin
			if GS_PRJ_AREA = 'S' then sGubun := 'A1'    // 수도권
													 else sGubun := 'A2';   // 지방권
		end
		else if AGubun = 'License' then
		begin
			if GS_PRJ_AREA = 'S' then sGubun := 'N1'    // 수도권
													 else sGubun := 'N2';   // 지방권
		end;
				 

    sTMP := FormatDateTime('YYMMDDHHNNSS', Now) + sGubun + AnsiString(sWkSabun);

//-    Log(' WorkImageAA : ' + sTMP, LOGDATAPATHFILE);

    ii := Length(sTMP) mod 8; // blowfish 는 8byte 단위로 암호화 함(나머지 부족한 자리는 공백으로 채움)
    if ii > 0 then begin
      sTMP := sTMP + LPAD(sss,' ', 8-ii);
    end;

    ZeroMemory(@ImgEncryptData, sizeof(ImgEncryptData));
    SetLength(ImgEncryptData, MaxCommandSize);
    iEncryptLen := BlowFishEncrypt(_WKIMG_KEY, sTMP, ImgEncryptData);

    // Hex 코드 만들기..
    for ii:= 0 to iEncryptLen - 1 do
    begin
      s := s + IntToHex(Byte(ImgEncryptData[ii]),2);
    end;

    ZeroMemory(@ImgEncryptData, sizeof(ImgEncryptData));

    Result := _URL + sGubun + s;

//-    Log(' WorkImageURL : ' + Result, LOGDATAPATHFILE);
  except
    on e: exception do
    begin
      Log('proc_HttpGetWorkImage Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'proc_HttpGetWorkImage Error :' + E.Message);
    end;
  end;
end;

function LastPos(Substr: String; S: String): integer;
var
  sTmp : String;
  iLastPos: integer;
begin
  try
    sTmp := S;
    iLastPos := Pos(Substr, sTmp);
    if iLastPos > 0 then
    begin
      sTmp := Copy(sTmp, iLastPos + 1, 999);
      while Pos(Substr, sTmp) > 0 do
      begin
        iLastPos := iLastPos + Pos(Substr, sTmp);
        sTmp := Copy(sTmp, Pos(Substr, sTmp)+1, 999);
      end;
    end;
    LastPos := iLastPos;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function fGetCheck_BlowFish_HdBrNo( sHdNo, sBrNo : AnsiString ) : Boolean;
Var sTemp: AnsiString;
    sblBrNo : String;
    i : Integer;
begin
  try
    Result := False;
    GS_BlowFish_HdBrNo := '';

    if ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
  	begin
      for i := 0 to scb_Blowfish_HdCode.Count - 1 do
      begin
        sTemp := scb_Blowfish_HdCode[i];
        sTemp := HexToValue(sTemp);
        sTemp := BlowFishDecrypt(Copy(_CHK_KEY,8,10) + Copy(_CHK_KEY,23,22), sTemp);

        sblBrNo := StringToWideString(sTemp, CP_ACP);

        GS_BlowFish_HdBrNo := GS_BlowFish_HdBrNo + ',' + sblBrNo;

  //-      Log('fGetCheck_BlowFish_HdBrNo : ' + sblBrNo + '-' + sHdNo, LOGDATAPATHFILE);
        if sblBrNo = sHdNo then
        begin
          Result := True;
          Break;
        end;
      end;
  	end else
  	begin
      for i := 0 to scb_Blowfish_HdBrCode.Count - 1 do
      begin
        sTemp := scb_Blowfish_HdBrCode[i];
        sTemp := HexToValue(sTemp);
        sTemp := BlowFishDecrypt(Copy(_CHK_KEY,8,10) + Copy(_CHK_KEY,23,22), sTemp);

        sblBrNo := StringToWideString(sTemp, CP_ACP);

        GS_BlowFish_HdBrNo := GS_BlowFish_HdBrNo + ',' + sblBrNo;

  //--      Log('fGetCheck_BlowFish_HdBrNo : ' + sblBrNo + '-' + sHdNo + sBrNo, LOGDATAPATHFILE);
        if sblBrNo = sHdNo + sBrNo then
        begin
          Result := True;
          Break;
        end;
      end;
  	end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function fGetChk_Search_HdBrNo( sMsg : String ) : Boolean;
begin
  try
    Result := False;
    if ( GT_USERIF.LV = '60' ) then     // 본사관리자
  	begin
      if Not fGetCheck_BlowFish_HdBrNo( GT_SEL_BRNO.HDNO, GT_SEL_BRNO.BrNo ) then
      begin
        GMessagebox('조회 권한이 없는 본사.지사 입니다.', CDMSE);
        Assert(False, '[N지사코드변조]' + sMsg + ' : ' + GT_SEL_BRNO.HDNO + GT_SEL_BRNO.BrNo + ' - ' + GS_BlowFish_HdBrNo);
        Result := True;
      end;
  	end else
    if ( GT_USERIF.LV = '40' ) then     // 지사관리자
  	begin
      if Not fGetCheck_BlowFish_HdBrNo( GT_SEL_BRNO.HDNO, GT_SEL_BRNO.BrNo ) then
      begin
        GMessagebox('조회 권한이 없는 본사.지사 입니다.', CDMSE);
        Assert(False, '[N지사코드변조]' + sMsg + ' : ' + GT_USERIF.HD + GT_SEL_BRNO.BrNo + ' - ' + GS_BlowFish_HdBrNo);
        Result := True;
      end;
    end else
    if ( GT_USERIF.LV = '10' ) then     // 상담원
    begin
      if Not fGetCheck_BlowFish_HdBrNo( GT_USERIF.HD, GT_USERIF.BR ) then
      begin
        GMessagebox('조회 권한이 없는 본사.지사 입니다.', CDMSE);
        Assert(False, '[N지사코드변조]' + sMsg + ' : ' + GT_USERIF.HD + GT_USERIF.BR + ' - ' + GS_BlowFish_HdBrNo);
        Result := True;
      end;
  	end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function fGet_BlowFish_Query( AEnCodeQuery : array of Ansistring; var ADeCodeQuery : string) : string;
Var sTmp, sTmp1 : AnsiString;
		i : Integer;
begin
  try
    try
    	Result := '';
    	sTmp  := '';
    	sTmp1 := '';
    	for i := 0 to length(AEnCodeQuery) -1 do
    	begin
    		sTmp := sTmp + HexToValue(AEnCodeQuery[i]);
    	end;
    	sTmp1 := BlowFishDecrypt(Copy(_CHK_KEY,8,10) + Copy(_CHK_KEY,23,22), sTmp);
    	ADeCodeQuery := StringToWideString(sTmp1, CP_ACP);
    except
    	Result := '';
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function getDEGREE(idata: string): string;
var
  Odata : string;
  v_mm, v_ss, v_sss : Double;
begin
  try
    v_mm := StrToFloatDef(copy(idata, 1,3), 0);
    v_ss := StrToFloatDef(copy(idata, 4,2), 0) / 60;
    v_sss := StrToFloatDef(copy(idata, 6,4), 0) / 100 / 60 / 60;
    Odata := FloatToStr(Trunc((v_mm + v_ss + v_sss) * 1000000)/1000000);
    Result := Odata;
  except
    Result := '';
  end;
end;

function Angle2D(x1, y1, x2,  y2:double) : double;
var dtheta, theta1, theta2 : double;
begin
  try
    theta1 := Math.ArcTan2(y1,x1);
    theta2 := Math.ArcTan2(y2,x2);

    dtheta := theta2 - theta1;

    while (dtheta > K_PI) do
    begin
      dtheta := dtheta - (K_PI * 2);
    end;

    while (dtheta < -K_PI) do
    begin
      dtheta := dtheta + (K_PI * 2);
    end;

    result := dtheta;
  Except
    Result := 0;
  end;
end;

function PtInPolygon(X, Y  : double; VectX, VectY : TStringList; Cnt : integer) : Boolean;
var i  : integer;
  angle, DX, DY, DX1, DY1 : Double;
  istmp : integer;
begin
  try
    angle := 0;
    i := 0;
    while i < cnt do
    begin
      DX := StrToFloatDef(VectX[i], 0) - X;
      DY := StrToFloatDef(VectY[i], 0) - Y;
      istmp := (i+1) Mod Cnt;
      DX1 := StrToFloatDef(VectX[istmp], 0) - X;
      DY1 := StrToFloatDef(VectY[istmp], 0) - Y;
      angle := angle + Angle2D(DX, DY, DX1, DY1);
      inc(i);
    end;

    if (abs(angle) < K_PI) then Result := False
                           else Result := True;
  except
    Result := False;
  end;
end;

procedure _AddData(AView: TcxGridDBTableView; ARow: Integer; AField, AValue: String);
var
  ACol: Integer;
begin
  try
    try
      ACol := AView.GetColumnByFieldName(AField).Index;
    except
      ACol := -1;
    end;

    if ACol = -1 then Exit;

		if (AField = 'No') or (AField = '경유요금') then
			AView.DataController.Values[ARow, ACol] := StrToIntDef(AValue, 0)
  	else
      AView.DataController.Values[ARow, ACol] := AValue;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function fibo(n: integer): integer;
begin
  if (n = 0) or (n = 1) then Result := 1
  else Result := fibo(n-1) + fibo(n-2);
end;

function GetTime(aDateTime: TDateTime): string;
var
  aHour, aMinute, aSecond, aMSecond : Word;
begin
  try
    DecodeTime(aDateTime, aHour, aMinute, aSecond, aMSecond);
    Result := IntToStr(aHour) + ':' + IntToStr(aMinute) + ':' + IntToStr(aSecond) + ':' + IntToStr(aMSecond);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure Proc_POIRequest(AINDEX: integer; AREA1, AREA2, AREA3, AREA4, DOCID, Lon, Lat : string);
begin
	try
    if not Assigned(Frm_JON56) then Frm_JON56 := TFrm_JON56.Create(Nil);
		Frm_JON56.proc_init;
		Frm_JON56.Show;

    Application.ProcessMessages;

		Frm_JON56.lb_Addr_B.Caption := AREA1 + ' ' + AREA2 + ' ' + AREA3;
		Frm_JON56.lb_Addr_H.Caption := '';
		Frm_JON56.lb_MapGubun.Text := '';//GS_Grid_DEP;
    Frm_JON56.lb_DocID.Text := DOCID;
		Frm_JON56.lb_SIDO_B.Text := AREA1;
    Frm_JON56.lb_GU_B.Text   := AREA2;
    Frm_JON56.lb_DONG_B.Text := AREA3;
    Frm_JON56.lb_SIDO_H.Text := '';
    Frm_JON56.lb_GU_H.Text   := '';
		Frm_JON56.lb_DONG_H.Text := '';
    Frm_JON56.edt_POINAME.Text := AREA4;
		Frm_JON56.edt_ADDPOI_X.Text := Lat;
		Frm_JON56.edt_ADDPOI_Y.Text := Lon;
//    Frm_JON56.cb_00.Enabled := False;
    Frm_JON56.cxMemo1.Clear;

{		Frm_jon30.mCtrlMan := Frm_jon30.mMap.GetCtrlMan();
    Frm_jon30.mCtrlState := Frm_jon30.mCtrlMan.GetControlState();
		Frm_jon30.mCenterLL := Frm_jon30.mCtrlState.GetLLCenter();    }
		Frm_JON56.pnlPoiSearch.Visible := True;

		Frm_JON56.cb_POITYPE.Enabled := False;
		Frm_JON56.ClearADDPOI;
		Frm_JON56.cb_POITYPE.ItemIndex := AINDEX;
		if AINDEX = 0 then
    begin
//			Frm_JON56.pnlPoiSearch.Enabled := True;
			Frm_JON56.pnlTitle.Caption := ' POI 추가요청';
			Frm_JON56.lb_POITYPE.Caption := 'POI추가요청';
			Frm_JON56.lb_POITYPE.style.Textcolor := $00FF8000;
			Frm_JON56.cxGroupBox1.Caption := '추가요청내용(자세하게 기술해 주십시오-최대450자입력 가능)';
      Frm_JON56.btn_POISAVE.Caption := '요청하기';
//      Frm_JON56.cb_00.Enabled := True;
			Frm_JON56.Pnl_POINAME.Enabled := True;
//      Frm_JON56.pnlList.Visible := False;

			if (Lon <> '') and (Lat <> '') then
			begin
        if Frm_JON56.mCtrlState <> nil then
        begin
  				Frm_JON56.mCtrlState.SetLevel(Frm_jon30.mCtrlState.GetLevel());
  				Frm_JON56.WGS84ToBessel(Lon, Lat);
	  			Frm_JON56.OnMoveMap(Frm_JON56.ws_Lon, Frm_JON56.ws_Lat);
		  		Frm_JON56.Mark_Symbol(Frm_JON56.ws_Lon, Frm_JON56.ws_Lat, 5, '', AREA4, '');
        end;
			end;
		end else
		if AINDEX = 1 then
		begin
//			Frm_JON56.pnlPoiSearch.Enabled := False;
//      Frm_JON56.cb_00.Enabled := False;
			Frm_JON56.pnlTitle.Caption := ' POI 오류신고';
			Frm_JON56.lb_POITYPE.Caption := 'POI오류신고';
			Frm_JON56.lb_POITYPE.style.Textcolor := clRed;
			Frm_JON56.cxGroupBox1.Caption := '오류신고내용(자세하게 기술해 주십시오-최대450자입력 가능.)';
			Frm_JON56.btn_POISAVE.Caption := '신고하기';
			Frm_JON56.Pnl_POINAME.Enabled := False;
			if (Lon <> '') and (Lat <> '') then
			begin
        if Frm_JON56.mCtrlState <> nil then
        begin
  				Frm_JON56.mCtrlState.SetLevel(Frm_jon30.mCtrlState.GetLevel());
	   			Frm_JON56.WGS84ToBessel(Lon, Lat);
   				Frm_JON56.OnMoveMap(Frm_JON56.ws_Lon, Frm_JON56.ws_Lat);
 		   		Frm_JON56.Mark_Symbol(Frm_JON56.ws_Lon, Frm_JON56.ws_Lat, 5, '', AREA4, '');
        end;
			end;
{			Frm_JON56.OnMoveMap(Frm_jon30.mCenterLL.GetX,Frm_jon30.mCenterLL.GetY);
			if (Lon <> '') and (Lat <> '') then
			begin
				Frm_JON56.WGS84ToBessel(Lon, Lat);
				Frm_JON56.Mark_Symbol(Frm_JON56.ws_Lon, Frm_JON56.ws_Lat, 5, '', AREA4, '');
			end;   }
		end;
		Frm_JON56.btnPcSave.Visible := Frm_JON56.Pnl_POINAME.Enabled;
		if TCK_USER_PER.JON_LocalMap <> '1' then
		begin
			Frm_JON56.btnPcSave.Enabled := False;
			Frm_JON56.btnPcSave.Hint := '사용자 POI 저장에 대한 권한이 없습니다';
		end
		else
		begin
			Frm_JON56.btnPcSave.Enabled := True;
			Frm_JON56.btnPcSave.Hint := '사용자 POI를 저장합니다';
		end    
	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure ListFileDir(Path, AGubun: string; Var FileList: TStringLIst);
var
  SR: TSearchRec;
begin
// AGubun : 20-기본로그, IPCC_-상담원, IPCCS_-관리자
  try
    if FindFirst(Path + AGubun+'*.*', faAnyFile, SR) = 0 then
    begin
      repeat
        if (SR.Attr <> faDirectory) then
        begin
          FileList.Add(SR.Name);
        end;
      until FindNext(SR) <> 0;
    end;
  finally
    FindClose(SR);
  end;
end;

// 신용카드번호 검사 함수 ( '-' 을 제외한 숫자만 남긴 형태로 가공하여 매개변수로 넣어야 함)
function ValidateCreditCardNumber(CreditCardNumber:string):boolean;
Const
  DigitsAllowed = ['0'..'9'];
  MaxCCSize = 19;
  MinCCSize = 13;
var
  i : integer;
  CleanCardNumber: string;
  digit: Integer;
  CheckSum: Integer; { Holds the value of the operation }
  Flag: Boolean; { used to indicate when ready }
  Counter: Integer; { index counter }
  PartNumber: string; { used to extract each digit of number }
  Number: Integer; { used to convert each digit to integer}
Begin
  CleanCardNumber:='';

  // Remove any non numeric value
  for I := 1 to Length(CreditCardNumber) do
  Begin
    if CreditCardNumber[i] in DigitsAllowed then
      CleanCardNumber:= CleanCardNumber + CreditCardNumber[i];
  End;

  // Check for valid card length number
  if (Length(CleanCardNumber) > MaxCCSize) then
  Begin
    Result:= False;
    Exit;
  End;

  // get the starting value for our counter
  Counter := Length(CleanCardNumber);
  CheckSum := 0;
  PartNumber := '';
  Flag := false;

  while (Counter >= 1) do
  begin
    // get the current digit
    PartNumber := Copy(CleanCardNumber, Counter, 1);
    Number := StrToInt(PartNumber); // convert to integer
    if (Flag) then // only do every other digit
    begin
      Number := Number * 2;
      if (Number >= 10) then
        Number := Number - 9;
    end;
    CheckSum := CheckSum + Number;

    Flag := not (Flag);

    Counter := Counter - 1;
  end;

  result := ((CheckSum mod 10) = 0);
End;

procedure SaveBytesToFile(const Data: TIdBytes; const FileName: string);
var
  stream: TMemoryStream;
begin
  stream := TMemoryStream.Create;
  try
    if length(data) > 0 then
      stream.WriteBuffer(data[0], length(data));
    stream.SaveToFile(FileName);
  finally
    stream.Free;
  end;
end;

function Base64DecodeBytes(const DecodedText: AnsiString): TIdBytes;
var
  Decoder: TIdDecoderMIME;
begin
  Decoder := TIdDecoderMIME.Create(nil);
  try
    Result := Decoder.DecodeBytes(DecodedText);
  finally
    Decoder.Free;
  end;
end;

function Base64EncodeBytes(const EncodedText: TIdBytes): AnsiString;
var
  Encoder: TIdEncoderMIME;
begin
  Encoder := TIdEncoderMIME.Create(nil);
  try
    Result := Encoder.EncodeBytes(EncodedText)
  finally
    Encoder.Free;
  end;
end;

function Base64DecodeString(const DecodedText: AnsiString): String;
var
  Decoder: TIdDecoderMIME;
begin
  Decoder := TIdDecoderMIME.Create(nil);
  try
    Result := Decoder.DecodeString(DecodedText);
  finally
    Decoder.Free;
  end;
end;

function GetImeHanMode: boolean;
var
  Mode: HIMC;
  Conversion, Sentence: dword;
begin
  Mode := ImmGetContext(Application.Handle);
  ImmGetConversionStatus(Mode, Conversion, Sentence);
  result := Conversion = IME_CMODE_HANGEUL;
end;

function Enc_Control(AWord: string): string; //XML Tag 오류로 추가 20170322 KHS
var sTmp : string;
begin
	try
		sTmp := AWord; 
		sTmp := StringReplace(sTmp, #1  , '', [rfReplaceAll]); //    U+0001
		sTmp := StringReplace(sTmp, #2  , '', [rfReplaceAll]); //    U+0002
		sTmp := StringReplace(sTmp, #3  , '', [rfReplaceAll]); //    U+0003
		sTmp := StringReplace(sTmp, #4  , '', [rfReplaceAll]); 
		sTmp := StringReplace(sTmp, #5  , '', [rfReplaceAll]); 
		sTmp := StringReplace(sTmp, #6  , '', [rfReplaceAll]); 
		sTmp := StringReplace(sTmp, #7  , '', [rfReplaceAll]); 
		sTmp := StringReplace(sTmp, #8  , '', [rfReplaceAll]);
		sTmp := StringReplace(sTmp, #14 , '', [rfReplaceAll]);
		sTmp := StringReplace(sTmp, #15 , '', [rfReplaceAll]); //#$F
		sTmp := StringReplace(sTmp, #16 , '', [rfReplaceAll]); //#$10
		sTmp := StringReplace(sTmp, #17 , '', [rfReplaceAll]);
		sTmp := StringReplace(sTmp, #18 , '', [rfReplaceAll]);
		sTmp := StringReplace(sTmp, #19 , '', [rfReplaceAll]);
		sTmp := StringReplace(sTmp, #20 , '', [rfReplaceAll]);
		sTmp := StringReplace(sTmp, #21 , '', [rfReplaceAll]);
		sTmp := StringReplace(sTmp, #22 , '', [rfReplaceAll]);
		sTmp := StringReplace(sTmp, #23 , '', [rfReplaceAll]);
		sTmp := StringReplace(sTmp, #24 , '', [rfReplaceAll]);
		sTmp := StringReplace(sTmp, #25 , '', [rfReplaceAll]);
		sTmp := StringReplace(sTmp, #26 , '', [rfReplaceAll]); //#$1A
		sTmp := StringReplace(sTmp, #27 , '', [rfReplaceAll]);
		sTmp := StringReplace(sTmp, #28 , '', [rfReplaceAll]);
		sTmp := StringReplace(sTmp, #29 , '', [rfReplaceAll]);
		sTmp := StringReplace(sTmp, #30 , '', [rfReplaceAll]);
		sTmp := StringReplace(sTmp, #31 , '', [rfReplaceAll]);
//		sTmp := StringReplace(sTmp, #32 , '', [rfReplaceAll]);
		sTmp := StringReplace(sTmp, #127, '', [rfReplaceAll]); //#$0085
		Result := sTmp;
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

function SetWGS84(idata: string): string;
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

function fGetCheckXYValue(vStartYVal, vStartXVal : String) : Boolean;
Var
	sTmpLon, sTmpLat : string;
	dTmpLon, dTmpLat : Double;
begin
  Result := False;
  try
		sTmpLon := SetWGS84(vStartYVal);
		sTmpLat := SetWGS84(vStartXVal);      //037XXXXX -> 37.XXXXXXX로 변환
		dTmpLon := StrToFloatDef(sTmpLon, 0);                        //더블형으로 변환
		dTmpLat := StrToFloatDef(sTmpLat, 0);

		Result := PtInPolygon(dTmpLon, dTmpLat, FKOREAAREA_XY.Lon, FKOREAAREA_XY.Lat, FKOREAAREA_XY.Lon.count);
  Except

  end;
end;

function fGetSiDo(iTag:Integer; sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM: String): String;
Var i, idx : Integer;
    sSido : String;
    vWard, vStree : String;
    bOk : Boolean;
begin
	SetDebugeWrite('fGetSiDo');
	Try
    if sCity = '세종' then sCity := '충남';
		Result := sCity;

    if sDEP = 'N' then Exit;      // 네이버선택일 경우 체크 않함

		if GT_MAPOrigi.slStre.Count < 21000 then Exit;         // 21953개
		if GT_MAPOld  .slStre.Count < 1000   then Exit;         // 1269개

    if ( RightStr(sStree, 1) = '시' ) Or ( RightStr(sStree, 1) = '군' ) Or ( RightStr(sStree, 1) = '구' ) then
    begin
      Result := fGetCheckDong(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM);
      Exit;
    end;

    if ( RightStr(sWard, 1) = '읍' ) Or ( RightStr(sWard, 1) = '면' ) Or ( RightStr(sWard, 1) = '동' ) then
    begin
      Result := fGetCheckWard(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM);
      Exit;
    end;

		if Trim(sWard) <> '' then
		begin
      if (Trim(sWard) = '강서구') then  // 서울/부산
      begin
        if Trim(sStree) <> '' then
        begin
					Result := fGetSidoToStree(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM);
        end else
        begin
          if (sCity = '서울') Or (sCity = '부산') then
          begin

          end else
          begin
						pGetNaverJibun_cloud(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM, sSido, vWard, vStree);
						if sCity = sSido then
            begin
  						Assert(False, '[fGetSiDo-' + sGubun + '] : ' + sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
													+ ' / ' + sWard + ' : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + ' ' + '[선택구분] : ' + sDep);
            end else
            begin
							Result := sSido;
              Assert(False, '[fGetSiDo-Old' + sGubun + ' 시변경] : ' + sBigo + ' / B : ' + sCity + '/' + sWard +
                                                                                 ' C : ' + sSido + '/' + sWard + '[선택구분] : ' + sDep);
            end;
          end;
        end;
        Exit;
      end else
      if (Trim(sWard) = '고성군') then  // 강원/경남
      begin
        if Trim(sStree) <> '' then
        begin
					Result := fGetSidoToStree(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM);
        end else
        begin
          if (sCity = '강원') Or (sCity = '경남') then
          begin

          end else
          begin
						pGetNaverJibun_cloud(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM, sSido, vWard, vStree);
						if sCity = sSido then
            begin
  						Assert(False, '[fGetSiDo-' + sGubun + '] : ' + sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
	  											+ ' / ' + sWard + ' : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '/' + '[선택구분] : ' + sDep);
            end else
            begin
              Result := sSido;
              Assert(False, '[fGetSiDo-Old' + sGubun + ' 시변경] : ' + sBigo + ' / B : ' + sCity + '/' + sWard +
                                                                                 ' C : ' + sSido + '/' + sWard + '[선택구분] : ' + sDep);
            end;
          end;
        end;
        Exit;
      end else
      if (Trim(sWard) = '남구') then  // 광주/대구/부산/울산/인천
      begin
        if Trim(sStree) <> '' then
        begin
					Result := fGetSidoToStree(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM);
        end else
        begin
          if (sCity = '광주') Or (sCity = '대구') Or (sCity = '부산') Or
             (sCity = '울산') Or (sCity = '인천') then
					begin

          end else
          begin
						pGetNaverJibun_cloud(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM, sSido, vWard, vStree);
						if sCity = sSido then
            begin
  						Assert(False, '[fGetSiDo-' + sGubun + '] : ' + sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
	  											+ ' / ' + sWard + ' : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '/' + '[선택구분] : ' + sDep);
            end else
            begin
              Result := sSido;
              Assert(False, '[fGetSiDo-Old' + sGubun + ' 시변경] : ' + sBigo + ' / B : ' + sCity + '/' + sWard +
                                                                                 ' C : ' + sSido + '/' + sWard + '[선택구분] : ' + sDep);
            end;
					end;
        end;
        Exit;
      end else
      if fSejongCheck(Trim(sWard)) then  // 세종시
      begin
        Result := '충남';
        Exit;
      end else
      if (Trim(sWard) = '동구') then  // 광주/대구/대전/부산/울산/인천
      begin
        if Trim(sStree) <> '' then
        begin
					Result := fGetSidoToStree(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM);
        end else
        begin
          if (sCity = '광주') Or (sCity = '대구') Or (sCity = '대전') Or
             (sCity = '부산') Or (sCity = '울산') Or (sCity = '인천') then
          begin

          end else
          begin
						pGetNaverJibun_cloud(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM, sSido, vWard, vStree);
						if sCity = sSido then
            begin
  						Assert(False, '[fGetSiDo-' + sGubun + '] : ' + sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
	  											+ ' / ' + sWard + ' : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '/' + '[선택구분] : ' + sDep);
            end else
            begin
              Result := sSido;
              Assert(False, '[fGetSiDo-Old' + sGubun + ' 시변경] : ' + sBigo + ' / B : ' + sCity + '/' + sWard +
                                                                                 ' C : ' + sSido + '/' + sWard + '[선택구분] : ' + sDep);
            end;
          end;
        end;
        Exit;
      end else
      if (Trim(sWard) = '북구') then  // 광주/대구/대전/부산/인천
      begin
        if Trim(sStree) <> '' then
        begin
					Result := fGetSidoToStree(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM);
        end else
        begin
          if (sCity = '광주') Or (sCity = '대구') Or (sCity = '대전') Or
             (sCity = '부산') Or (sCity = '인천') then
          begin

          end else
          begin
						pGetNaverJibun_cloud(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM, sSido, vWard, vStree);
						if sCity = sSido then
            begin
  						Assert(False, '[fGetSiDo-' + sGubun + '] : ' + sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
	  											+ ' / ' + sWard + ' : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '/' + '[선택구분] : ' + sDep);
            end else
            begin
              Result := sSido;
              Assert(False, '[fGetSiDo-Old' + sGubun + ' 시변경] : ' + sBigo + ' / B : ' + sCity + '/' + sWard +
                                                                                 ' C : ' + sSido + '/' + sWard + '[선택구분] : ' + sDep);
            end;
          end;
        end;
        Exit;
      end else
      if (Trim(sWard) = '서구') then  // 광주/대구/대전/부산/인천
      begin
        if Trim(sStree) <> '' then
        begin
					Result := fGetSidoToStree(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM);
        end else
        begin
          if (sCity = '광주') Or (sCity = '대구') Or (sCity = '대전') Or
             (sCity = '부산') Or (sCity = '인천') then
          begin

          end else
          begin
						pGetNaverJibun_cloud(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM, sSido, vWard, vStree);
						if sCity = sSido then
            begin
  						Assert(False, '[fGetSiDo-' + sGubun + '] : ' + sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
	  											+ ' / ' + sWard + ' : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '/' + '[선택구분] : ' + sDep);
            end else
            begin
              Result := sSido;
              Assert(False, '[fGetSiDo-Old' + sGubun + ' 시변경] : ' + sBigo + ' / B : ' + sCity + '/' + sWard +
                                                                                 ' C : ' + sSido + '/' + sWard + '[선택구분] : ' + sDep);
            end;
          end;
        end;
        Exit;
      end else
      if (Trim(sWard) = '중구') then  // 대구/대전/부산/서울/울산/인천
      begin
        if Trim(sStree) <> '' then
        begin
					Result := fGetSidoToStree(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM);
        end else
        begin
          if (sCity = '대구') Or (sCity = '대전') Or (sCity = '부산') Or
             (sCity = '서울') Or (sCity = '울산') Or (sCity = '인천') then
          begin

          end else
          begin
						pGetNaverJibun_cloud(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM, sSido, vWard, vStree);
						if sCity = sSido then
            begin
  						Assert(False, '[fGetSiDo-' + sGubun + '] : ' + sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
	  											+ ' / ' + sWard + ' : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '/' + '[선택구분] : ' + sDep);
            end else
            begin
              Result := sSido;
              Assert(False, '[fGetSiDo-Old' + sGubun + ' 시변경] : ' + sBigo + ' / B : ' + sCity + '/' + sWard +
                                                                                 ' C : ' + sSido + '/' + sWard + '[선택구분] : ' + sDep);
            end;
          end;
        end;
        Exit;
      end else
      begin
        idx := GT_MAPOrigi.slWard.IndexOf(sWard);
        if idx < 0 then
        begin
          idx := GT_MAPOld.slWard.IndexOf(sWard);
          // 시군구정보가 정상이 아닐경우
          if idx < 0 then
          begin
            Result := fGetCheckWard(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM);
            Exit;
          end else
          begin
            if Copy(GT_MAPOld.slCity[idx], 1, 2) <> sCity then
            begin
              sSido := Copy(GT_MAPOld.slCity[idx], 1, 2);
              Result := sSido;
              Assert(False, '[fGetSiDo-Old' + sGubun + ' 시변경] : ' + sBigo + ' / B : ' + sCity + '/' + sWard +
                                                                                 ' C : ' + sSido + '/' + sWard + '[선택구분] : ' + sDep);
            end;
          end;
        end else
        begin
          if Copy(GT_MAPOrigi.slCity[idx], 1, 2) <> sCity then
          begin
            sSido := Copy(GT_MAPOrigi.slCity[idx], 1, 2);
            Result := sSido;
            Assert(False, '[fGetSiDo-' + sGubun + ' 시변경] : ' + sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
											+ ' / B : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5
											+ ' C : ' + sSido + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
          end;
        end;
      end;
		end;

    if ( Trim(sWard) = '' ) And
       ( Trim(sStree) <> '' ) then
    begin
      Result := fGetCheckWard(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM);
      Exit;
    end else
		if Trim(sStree) <> '' then
    begin
      bOk := False;
      idx := GT_MAPOrigi.slStre_RI.IndexOf(sStree);
      if idx >= 0 then
      begin
        idx := GT_MAPOrigi.slWard.IndexOf(sWard);
        if idx > 0 then
        begin
          for i := idx to GT_MAPOrigi.slStre_RI.Count - 1 do
          begin
            if Trim(GT_MAPOrigi.slWard[i]) <> Trim(sWard) then Break;
            if ( Trim(GT_MAPOrigi.slStre_RI[i]) = Trim(sStree ) ) then
            begin
              bOk := True;
              Break;
            end;
          end;
        end;
      end;

      if bOk then Exit;

      idx := GT_MAPOld.slStre_RI.IndexOf(sStree);
      if idx >= 0 then
      begin
        idx := GT_MAPOld.slWard.IndexOf(sWard);
        if idx >= 0 then
        begin
          for i := idx to GT_MAPOld.slStre_RI.Count - 1 do
          begin
            if Trim(GT_MAPOld.slWard[i]) <> Trim(sWard) then Break;
            if ( Trim(GT_MAPOld.slStre_RI[i]) = Trim(sStree ) ) then
            begin
              bOk := True;
              Break;
            end;
          end;
        end;
      end;

      // 시군구/읍면동정보가 정상이 아닐경우
      if Not bOk then
      begin
        Result := fGetCheckDong(iTag, sGubun, Result, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM);
      end;
    end;
	except
    on E: Exception do
      Assert(False, 'fGetSiDo sCity 시도주소 비교 오류' + E.Message + ' ' +
                      sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM +
											sSido + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
	end;
end;

function fGetSidoToStree(iTag:Integer; sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM: String) : String;
Var i, idx : Integer;
    bChkFlag : Boolean;
    sSido, vWard, vStree : String;
begin
	SetDebugeWrite('fGetSidoToStree');
  Result := sCity;
  bChkFlag := False;
  try
    if ( Trim(sWard ) = '동구' ) And ( Trim(sStree) = '불로동' ) then    //광주 동구 불로동  = 대구 동구 불로동
    begin
      if ( Copy(sCity, 1, 2) = '광주' ) Or ( Copy(sCity, 1, 2) = '대구' ) then
      begin
      end else
      begin
				pGetNaverJibun_cloud(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM, sSido, vWard, vStree);
				if sCity = sSido then
        begin
    			Assert(False, '[fGetSiDo-N' + sGubun + '] : ' + sBigo + ' / 발주본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
    									+ ' / : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
        end else
        begin
          Result := sSido;
          Assert(False, '[fGetSiDo-N' + sGubun + ' 시변경] : ' + sBigo + ' / B : ' + sCity + '/' + sWard +
                                                                           ' C : ' + sSido + '/' + sWard + '[선택구분] : ' + sDep);
        end;
      end;
      Exit;
    end else
		if ( Trim(sWard ) = '동구' ) And ( Trim(sStree) = '용계동' ) then    //대구 동구 용계동  = 대전 동구 용계동
    begin
      if ( Copy(sCity, 1, 2) = '대구' ) Or ( Copy(sCity, 1, 2) = '대전' ) then
      begin
      end else
      begin
				pGetNaverJibun_cloud(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM, sSido, vWard, vStree);
				if sCity = sSido then
        begin
    			Assert(False, '[fGetSiDo-N' + sGubun + '] : ' + sBigo + ' / 발주본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
    									+ ' / : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
        end else
        begin
          Result := sSido;
          Assert(False, '[fGetSiDo-N' + sGubun + ' 시변경] : ' + sBigo + ' / B : ' + sCity + '/' + sWard +
                                                                           ' C : ' + sSido + '/' + sWard + '[선택구분] : ' + sDep);
        end;
      end;
      Exit;
    end else
    if ( Trim(sWard ) = '북구' ) And ( Trim(sStree) = '금곡동' ) then    //광주 북구 금곡동  = 부산 북구 금곡동
    begin
      if ( Copy(sCity, 1, 2) = '광주' ) Or ( Copy(sCity, 1, 2) = '부산' ) then
      begin
      end else
      begin
				pGetNaverJibun_cloud(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM, sSido, vWard, vStree);
				if sCity = sSido then
        begin
    			Assert(False, '[fGetSiDo-N' + sGubun + '] : ' + sBigo + ' / 발주본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
											+ ' / : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
        end else
        begin
          Result := sSido;
          Assert(False, '[fGetSiDo-N' + sGubun + ' 시변경] : ' + sBigo + ' / B : ' + sCity + '/' + sWard +
                                                                           ' C : ' + sSido + '/' + sWard + '[선택구분] : ' + sDep);
        end;
      end;
      Exit;
    end else
    if ( Trim(sWard ) = '북구' ) And ( Trim(sStree) = '매곡동' ) then    //광주 북구 매곡동  = 울산 북구 매곡동
    begin
      if ( Copy(sCity, 1, 2) = '광주' ) Or ( Copy(sCity, 1, 2) = '울산' ) then
      begin
      end else
      begin
				pGetNaverJibun_cloud(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM, sSido, vWard, vStree);
				if sCity = sSido then
        begin
    			Assert(False, '[fGetSiDo-N' + sGubun + '] : ' + sBigo + ' / 발주본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
    									+ ' / : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
        end else
        begin
          Result := sSido;
          Assert(False, '[fGetSiDo-N' + sGubun + ' 시변경] : ' + sBigo + ' / B : ' + sCity + '/' + sWard +
                                                                           ' C : ' + sSido + '/' + sWard + '[선택구분] : ' + sDep);
        end;
      end;
      Exit;
    end else
    if ( Trim(sWard ) = '중구' ) And ( Trim(sStree) = '교동' ) then      //대구 중구 교동  = 울산 중구 교동
    begin
      if ( Copy(sCity, 1, 2) = '대구' ) Or ( Copy(sCity, 1, 2) = '울산' ) then
      begin
      end else
      begin
				pGetNaverJibun_cloud(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM, sSido, vWard, vStree);
				if sCity = sSido then
        begin
    			Assert(False, '[fGetSiDo-N' + sGubun + '] : ' + sBigo + ' / 발주본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
    									+ ' / : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
        end else
        begin
          Result := sSido;
          Assert(False, '[fGetSiDo-N' + sGubun + ' 시변경] : ' + sBigo + ' / B : ' + sCity + '/' + sWard +
                                                                           ' C : ' + sSido + '/' + sWard + '[선택구분] : ' + sDep);
        end;
      end;
      Exit;
    end else
    if ( Trim(sWard ) = '중구' ) And ( Trim(sStree) = '도원동' ) then    //대구 중구 도원동  = 인천 중구 도원동
    begin
      if ( Copy(sCity, 1, 2) = '대구' ) Or ( Copy(sCity, 1, 2) = '인천' ) then
      begin
      end else
      begin
				pGetNaverJibun_cloud(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM, sSido, vWard, vStree);
				if sCity = sSido then
        begin
    			Assert(False, '[fGetSiDo-N' + sGubun + '] : ' + sBigo + ' / 발주본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
    									+ ' / : ' + sCity + ' ' + sWard + ' ' + sStree + ' ' + sArea4 + ' ' + sArea5 + '[선택구분] : ' + sDep);
        end else
        begin
          Result := sSido;
          Assert(False, '[fGetSiDo-N' + sGubun + ' 시변경] : ' + sBigo + ' / B : ' + sCity + '/' + sWard +
                                                                           ' C : ' + sSido + '/' + sWard + '[선택구분] : ' + sDep);
        end;
      end;
      Exit;
    end else
    if ( Trim(sWard ) = '중구' ) And ( Trim(sStree) = '문화동' ) then    //대구 중구 문화동  = 대전 중구 문화동
    begin
      if ( Copy(sCity, 1, 2) = '대구' ) Or ( Copy(sCity, 1, 2) = '대전' ) then
      begin
      end else
      begin
				pGetNaverJibun_cloud(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM, sSido, vWard, vStree);
				if sCity = sSido then
        begin
    			Assert(False, '[fGetSiDo-N' + sGubun + '] : ' + sBigo + ' / 발주본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
    									+ ' / : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
        end else
        begin
          Result := sSido;
          Assert(False, '[fGetSiDo-N' + sGubun + ' 시변경] : ' + sBigo + ' / B : ' + sCity + '/' + sWard +
                                                                           ' C : ' + sSido + '/' + sWard + '[선택구분] : ' + sDep);
        end;
      end;
      Exit;
    end else
    if ( Trim(sWard ) = '중구' ) And ( Trim(sStree) = '선화동' ) then    //대전 중구 선화동  = 인천 중구 선화동
    begin
      if ( Copy(sCity, 1, 2) = '대전' ) Or ( Copy(sCity, 1, 2) = '인천' ) then
      begin
      end else
      begin
				pGetNaverJibun_cloud(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM, sSido, vWard, vStree);
				if sCity = sSido then
        begin
    			Assert(False, '[fGetSiDo-N' + sGubun + '] : ' + sBigo + ' / 발주본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
    									+ ' / : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
        end else
        begin
          Result := sSido;
          Assert(False, '[fGetSiDo-N' + sGubun + ' 시변경] : ' + sBigo + ' / B : ' + sCity + '/' + sWard +
                                                                           ' C : ' + sSido + '/' + sWard + '[선택구분] : ' + sDep);
        end;
      end;
      Exit;
    end else
    if ( Trim(sWard ) = '중구' ) And ( Trim(sStree) = '전동' ) then      //대구 중구 전동  = 인천 중구 전동
    begin
      if ( Copy(sCity, 1, 2) = '대구' ) Or ( Copy(sCity, 1, 2) = '인천' ) then
      begin
      end else
      begin
				pGetNaverJibun_cloud(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM, sSido, vWard, vStree);
				if sCity = sSido then
        begin
    			Assert(False, '[fGetSiDo-N' + sGubun + '] : ' + sBigo + ' / 발주본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
    									+ ' / : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
        end else
        begin
          Result := sSido;
          Assert(False, '[fGetSiDo-N' + sGubun + ' 시변경] : ' + sBigo + ' / B : ' + sCity + '/' + sWard +
                                                                           ' C : ' + sSido + '/' + sWard + '[선택구분] : ' + sDep);
        end;
      end;
      Exit;
    end else
    if ( Trim(sWard ) = '중구' ) And ( Trim(sStree) = '중앙동' ) then    //부산 중구 중앙동  = 울산 중구 중앙동
    begin
      if ( Copy(sCity, 1, 2) = '부산' ) Or ( Copy(sCity, 1, 2) = '울산' ) then
      begin
      end else
      begin
				pGetNaverJibun_cloud(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM, sSido, vWard, vStree);
				if sCity = sSido then
        begin
    			Assert(False, '[fGetSiDo-N' + sGubun + '] : ' + sBigo + ' / 발주본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
    									+ ' / : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
        end else
        begin
          Result := sSido;
          Assert(False, '[fGetSiDo-N' + sGubun + ' 시변경] : ' + sBigo + ' / B : ' + sCity + '/' + sWard +
                                                                           ' C : ' + sSido + '/' + sWard + '[선택구분] : ' + sDep);
        end;
      end;
      Exit;
    end else
    if ( Trim(sWard ) = '중구' ) And ( Trim(sStree) = '중앙동1가' ) then  //부산 중구 중앙동1가  = 인천 중구 중앙동1가
    begin
      if ( Copy(sCity, 1, 2) = '부산' ) Or ( Copy(sCity, 1, 2) = '인천' ) then
      begin
      end else
      begin
				pGetNaverJibun_cloud(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM, sSido, vWard, vStree);
				if sCity = sSido then
        begin
    			Assert(False, '[fGetSiDo-N' + sGubun + '] : ' + sBigo + ' / 발주본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
    									+ ' / : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
        end else
        begin
          Result := sSido;
          Assert(False, '[fGetSiDo-N' + sGubun + ' 시변경] : ' + sBigo + ' / B : ' + sCity + '/' + sWard +
                                                                           ' C : ' + sSido + '/' + sWard + '[선택구분] : ' + sDep);
        end;
      end;
      Exit;
    end else
    if ( Trim(sWard ) = '중구' ) And ( Trim(sStree) = '중앙동2가' ) then  //부산 중구 중앙동2가  = 인천 중구 중앙동2가
    begin
      if ( Copy(sCity, 1, 2) = '부산' ) Or ( Copy(sCity, 1, 2) = '인천' ) then
      begin
      end else
      begin
				pGetNaverJibun_cloud(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM, sSido, vWard, vStree);
				if sCity = sSido then
        begin
    			Assert(False, '[fGetSiDo-N' + sGubun + '] : ' + sBigo + ' / 발주본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
    									+ ' / : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
        end else
        begin
          Result := sSido;
          Assert(False, '[fGetSiDo-N' + sGubun + ' 시변경] : ' + sBigo + ' / B : ' + sCity + '/' + sWard +
                                                                           ' C : ' + sSido + '/' + sWard + '[선택구분] : ' + sDep);
        end;
      end;
      Exit;
    end else
    if ( Trim(sWard ) = '중구' ) And ( Trim(sStree) = '중앙동3가' ) then  //부산 중구 중앙동3가  = 인천 중구 중앙동3가
    begin
      if ( Copy(sCity, 1, 2) = '부산' ) Or ( Copy(sCity, 1, 2) = '인천' ) then
      begin
      end else
      begin
				pGetNaverJibun_cloud(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM, sSido, vWard, vStree);
				if sCity = sSido then
        begin
    			Assert(False, '[fGetSiDo-N' + sGubun + '] : ' + sBigo + ' / 발주본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
    									+ ' / : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
        end else
        begin
          Result := sSido;
          Assert(False, '[fGetSiDo-N' + sGubun + ' 시변경] : ' + sBigo + ' / B : ' + sCity + '/' + sWard +
                                                                           ' C : ' + sSido + '/' + sWard + '[선택구분] : ' + sDep);
        end;
      end;
      Exit;
    end else
    if ( Trim(sWard ) = '중구' ) And ( Trim(sStree) = '중앙동4가' ) then  //부산 중구 중앙동4가  = 인천 중구 중앙동4가
    begin
      if ( Copy(sCity, 1, 2) = '부산' ) Or ( Copy(sCity, 1, 2) = '인천' ) then
      begin
      end else
      begin
				pGetNaverJibun_cloud(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM, sSido, vWard, vStree);
				if sCity = sSido then
        begin
    			Assert(False, '[fGetSiDo-N' + sGubun + '] : ' + sBigo + ' / 발주본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
    									+ ' / : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
        end else
        begin
          Result := sSido;
          Assert(False, '[fGetSiDo-N' + sGubun + ' 시변경] : ' + sBigo + ' / B : ' + sCity + '/' + sWard +
                                                                           ' C : ' + sSido + '/' + sWard + '[선택구분] : ' + sDep);
        end;
      end;
      Exit;
    end else
    if ( Trim(sWard ) = '중구' ) And ( Trim(sStree) = '태평로1가' ) then  //대구 중구 태평로1가  = 서울 중구 태평로1가
    begin
      if ( Copy(sCity, 1, 2) = '대구' ) Or ( Copy(sCity, 1, 2) = '서울' ) then
      begin
      end else
      begin
				pGetNaverJibun_cloud(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM, sSido, vWard, vStree);
				if sCity = sSido then
        begin
    			Assert(False, '[fGetSiDo-N' + sGubun + '] : ' + sBigo + ' / 발주본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
    									+ ' / : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
        end else
        begin
          Result := sSido;
          Assert(False, '[fGetSiDo-N' + sGubun + ' 시변경] : ' + sBigo + ' / B : ' + sCity + '/' + sWard +
                                                                           ' C : ' + sSido + '/' + sWard + '[선택구분] : ' + sDep);
        end;
      end;
      Exit;
    end else
    if ( Trim(sWard ) = '중구' ) And ( Trim(sStree) = '태평로2가' ) then  //대구 중구 태평로2가  = 서울 중구 태평로2가
    begin
      if ( Copy(sCity, 1, 2) = '대구' ) Or ( Copy(sCity, 1, 2) = '서울' ) then
      begin
      end else
      begin
				pGetNaverJibun_cloud(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM, sSido, vWard, vStree);
				if sCity = sSido then
        begin
    			Assert(False, '[fGetSiDo-N' + sGubun + '] : ' + sBigo + ' / 발주본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
    									+ ' / : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + ' ' + sArea5 + '[선택구분] : ' + sDep);
        end else
        begin
          Result := sSido;
          Assert(False, '[fGetSiDo-N' + sGubun + ' 시변경] : ' + sBigo + ' / B : ' + sCity + '/' + sWard +
                                                                           ' C : ' + sSido + '/' + sWard + '[선택구분] : ' + sDep);
        end;
      end;
      Exit;
    end;

  	for i := 0 to GT_MAPOrigi.slStre.Count - 1 do
  	begin
  		if (Trim(GT_MAPOrigi.slStre_RI[i]) = Trim(sStree) ) and
         (Trim(GT_MAPOrigi.slWard[i])    = Trim(sWard ) ) then
  		begin
        bChkFlag := True;
        if Copy(GT_MAPOrigi.slCity[i], 1, 2) <> Copy(sCity, 1, 2) then
        begin
          sSido := Copy(GT_MAPOrigi.slCity[i], 1, 2);
          Result := sSido;
  				Assert(False, '[fGetSiDo-D' + sGubun + ' 시변경] : ' + sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
  										+ ' / B : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5
  										+ ' C : ' + sSido + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
        end;
  			Break;
  		end;
  	end;

    if Not bChkFlag then
    begin
  		for i := 0 to GT_MAPOld.slStre.Count - 1 do
  		begin
  			if (Trim(GT_MAPOld.slStre_RI[i]) = Trim(sStree) ) and
           (Trim(GT_MAPOld.slWard[i])    = Trim(sWard ) ) then
  			begin
          bChkFlag := True;
          if Copy(GT_MAPOld.slCity[i], 1, 2) <> Copy(sCity, 1, 2) then
          begin
            sSido := Copy(GT_MAPOld.slCity[i], 1, 2);
            Result := sSido;
    				Assert(False, '[fGetSiDo-DOld' + sGubun + ' 시변경] : ' + sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
    										+ ' / B : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5
  	  									+ ' C : ' + sSido + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
          end;
  				Break;
  			end;
  		end;
    end;

    if Not bChkFlag then
    begin
      // 구는 무조건 정상적으로 인입, 동정보는 확인 필요
      idx := GT_MAPOrigi.slStre_Ri.IndexOf(sStree);
      if idx < 0 then
        idx := GT_MAPOld.slStre_Ri.IndexOf(sStree);

      if idx < 0 then
      begin
        Result := fGetCheckDong(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM);
      end;

      if sGubun = 'S' then
      begin
        vWard  := Frm_Main.Frm_JON01N[iTag].lcsSta2;
        vStree := Frm_Main.Frm_JON01N[iTag].lcsSta3;
      end else
      if sGubun = 'E' then
      begin
        vWard  := Frm_Main.Frm_JON01N[iTag].lcsEnd2;
        vStree := Frm_Main.Frm_JON01N[iTag].lcsEnd3;
      end;

      if ( Trim(vWard ) = Trim(sWard ) ) And
         ( Trim(vStree) = Trim(sStree) ) then
      begin
     		Assert(False, '[fGetSiDo-D' + sGubun + '] : ' + sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
        						+ ' / No Data : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + ' [선택구분] : ' + sDep);
      end;
    end;
	except
    on E: Exception do
      Assert(False, 'fGetSidoToStree Error' +  E.Message + ' ' +
                      sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM +
											sSido + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '/' + '[선택구분] : ' + sDep);
	end;
end;

function fGetCheckDong(iTag:Integer; sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM: String) : String;
Var i, j, k, idx : Integer;
    bChkFlag, bChkNaver, bOk : Boolean;
    sSido, vWard, vStree, sTmp : String;
begin
	SetDebugeWrite('fGetCheckDong');
  try
    Result := sCity;
    bChkFlag := False;

    // 사례1. 경기 용인시	기흥구 보라동 579-2     - 시군구에 시, 음면동에 구, 상세지명 OR 출발지명에 동정보 저장시
    // 읍면동에(sStree)에 시군구(sWard) 정보가 들어가 있을경우 시군구 + 읍면동 정보를 시군구 정보에 저장
    idx := GT_MAPOrigi.slWard.IndexOf(sWard+sStree);
    if idx < 0 then
      idx := GT_MAPOld.slWard.IndexOf(sWard+sStree);

    // 시군구+읍면동 정보가 시군구 정보와 일치시  시군구정보로 병합
    if idx > 0 then
    begin
      vWard := sWard + sStree;
      vStree := '';
    end else
    begin                                    //  "경기 용인시기흥구 기흥구" - 시군구에 시군구, 읍면동에 구일 경우는 제외
      vWard := sWard;
      vStree := sStree;
    end;

    // 상세지명 또는 출발지명에 시군구에 해당하는 동명이 검색해서 있으면 읍면동 정보 변경
    bOk := False;
    for i := 1 to Length(Trim(sArea4)) do
    begin
      if bOk then Break;
      for j := Length(Trim(sArea4)) downto  2 do
      begin
        if bOk then Break;
        sTmp := Copy(Trim(sArea4), i, j);
        if Length(sTmp) < 2 then Continue;

        // 주소자료검색
        idx := GT_MAPOrigi.slStre_RI.IndexOf(sTmp);
        if idx >= 0 then
        begin
          idx := GT_MAPOrigi.slWard.IndexOf(vWard);
          if idx >= 0 then
          begin
            for k := idx to GT_MAPOrigi.slStre_RI.Count - 1 do
            begin
              if Trim(GT_MAPOrigi.slWard[k]) <> Trim(vWard) then Break;
              if ( Trim(GT_MAPOrigi.slStre_RI[k]) = Trim(sTmp ) ) then
              begin
                vStree := GT_MAPOrigi.slStre_RI[k];
                bOk := True;
                Break;
              end;
            end;
          end;
        end;

        // 구주소자료검색
        if bOk then Break;
        idx := GT_MAPOld.slStre_RI.IndexOf(sTmp);
        if idx >= 0 then
        begin
          idx := GT_MAPOld.slWard.IndexOf(vWard);
          if idx >= 0 then
          begin
            for k := idx to GT_MAPOld.slStre_RI.Count - 1 do
            begin
              if Trim(GT_MAPOld.slWard[k]) <> Trim(vWard) then Break;
              if ( Trim(GT_MAPOld.slStre_RI[k]) = Trim(sTmp ) ) then
              begin
                vStree := GT_MAPOld.slStre_RI[k];
                bOk := True;
                Break;
              end;
            end;
          end;
        end;
//        SetDebugeWrite(Trim(sArea4) + ' : ' + sTmp + '-' + vWard + vStree);
      end;
    end;

    for i := 1 to Length(Trim(sArea5)) do
    begin
      if bOk then Break;
      for j := Length(Trim(sArea5)) downto  2 do
      begin
        if bOk then Break;
        sTmp := Copy(Trim(sArea5), i, j);
        if Length(sTmp) < 2 then Continue;

        // 주소자료검색
        idx := GT_MAPOrigi.slStre_RI.IndexOf(sTmp);
        if idx >= 0 then
        begin
          idx := GT_MAPOrigi.slWard.IndexOf(vWard);
          if idx >= 0 then
          begin
            for k := idx to GT_MAPOrigi.slStre_RI.Count - 1 do
            begin
              if Trim(GT_MAPOrigi.slWard[k]) <> Trim(vWard) then Break;
              if ( Trim(GT_MAPOrigi.slStre_RI[k]) = Trim(sTmp ) ) then
              begin
                vStree := GT_MAPOrigi.slStre_RI[k];
                bOk := True;
                Break;
              end;
            end;
          end;
        end;

        // 구주소자료검색
        if bOk then Break;
        idx := GT_MAPOld.slStre_RI.IndexOf(sTmp);
        if idx >= 0 then
        begin
          idx := GT_MAPOld.slWard.IndexOf(vWard);
          if idx >= 0 then
          begin
            for k := idx to GT_MAPOld.slStre_RI.Count - 1 do
            begin
              if Trim(GT_MAPOld.slWard[k]) <> Trim(vWard) then Break;
              if ( Trim(GT_MAPOld.slStre_RI[k]) = Trim(sTmp ) ) then
              begin
                vStree := GT_MAPOld.slStre_RI[k];
                bOk := True;
                Break;
              end;
            end;
          end;
        end;
//        SetDebugeWrite(Trim(sArea5) + ' : ' + sTmp + '-' + vWard + vStree);
      end;
		end;

    bChkNaver := False;
    if ( Trim(vStree) = Trim(sStree) ) Or ( Trim(vStree) = '' ) then
    begin
			pGetNaverJibun_cloud(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM, sSido, vWard, vStree);
			bChkNaver := True;

      if Trim(sSido) <> Trim(sCity) then
        Result := sSido;

      if ( Trim(vWard ) = Trim(sWard ) ) And
         ( Trim(vStree) = Trim(sStree) ) then
      begin
        // 결과가 없으면 NO Data 로그 처리
        Assert(False, '[fGetSiDo-Dong' + sGubun + '] : ' + sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
		  					+ ' / No Data : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '/' + '[선택구분] : ' + sDep);
      end;
    end;

    // 시군구 자료와 시도 자료가 틀릴경우가 있음
    if Not bChkNaver then
    begin
      idx := GT_MAPOrigi.slWard.IndexOf(vWard);
      if idx >=0 then
      begin
        if Copy(GT_MAPOrigi.slCity[idx], 1, 2) <> sCity then
        begin
          Result := fGetSidoToStree(iTag, sGubun, sCity, vWard, vStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM);
        end;
      end else
      begin
        idx := GT_MAPOld.slWard.IndexOf(sWard);
        if idx >=0 then
        begin
          if Copy(GT_MAPOld.slCity[idx], 1, 2) <> sCity then
          begin
            Result := fGetSidoToStree(iTag, sGubun, sCity, vWard, vStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM);
          end;
        end;
      end;
    end;

    // 시군구 정보 검색해서 있으면 시군구/읍면동 정보 변경
    if Trim(vWard) <> Trim(sWard) then
    begin
      if sGubun = 'S' then
        Frm_Main.Frm_JON01N[iTag].lcsSta2 := vWard
      else
      if sGubun = 'E' then
        Frm_Main.Frm_JON01N[iTag].lcsEnd2 := vWard;

      if ( Trim(vStree) = Trim(sStree) ) And ( Not bChkNaver ) then
      begin
        Assert(False, '[fGetSiDo-Dong' + sGubun + ' 시군구변경] : ' + sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
                  + ' / B : ' + sCity + '/' + sWard + '/' + sStree
                  + ' C : ' + Result + '/' + vWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
      end;
    end;

    if Trim(vStree) <> Trim(sStree) then
    begin
      if sGubun = 'S' then
        Frm_Main.Frm_JON01N[iTag].lcsSta3 := vStree
      else
      if sGubun = 'E' then
        Frm_Main.Frm_JON01N[iTag].lcsEnd3 := vStree;

      if ( Not bChkNaver ) then
      begin
        Assert(False, '[fGetSiDo-Dong' + sGubun + ' 읍면동변경] : ' + sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
  	  						+ ' / B : ' + sCity + '/' + sWard + '/' + sStree
  		  					+ ' C : ' + Result + '/' + vWard + '/' + vStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
      end;
    end;
	except
    on E: Exception do
      Assert(False, 'fGetCheckDong Error' +  E.Message + ' ' +
                      sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM +
											sSido + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '/' + '[선택구분] : ' + sDep);
	end;
end;

// 읍면동 자료를 가지고 시군구 자료 추출( 읍면동 중복 체크후 중복되지 않은 읍면동에 대해서만 시군구 자료 변경 )
function fGetStreeToWard(iTag:Integer; sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM: String) : String;
Var idx, iCRow : Integer;
    vWard : String;
begin
	SetDebugeWrite('fGetStreeToWard');
  try
    Result := sWard;

    vWard := sWard;
    idx := GT_MAPOrigi.slStre_RI.IndexOf(sStree);
    if idx >= 0 then
    begin
      iCRow := idx;
      try
        GT_MAPOrigi.slStre_RI[iCRow] := GT_MAPOrigi.slStre_RI[iCRow] + ' ';
        idx := GT_MAPOrigi.slStre_RI.IndexOf(sStree);
        if idx < 0 then
        begin
          if Trim(sCity) = GT_MAPOrigi.slCity[iCRow] then
          begin
            vWard := GT_MAPOrigi.slWard[iCRow];
          end;
        end;
      finally
        GT_MAPOrigi.slStre_RI[iCRow] := Trim(GT_MAPOrigi.slStre_RI[iCRow]);
      end;
    end;

//  구주소로 시군구자료 추출 부분은 제외
//    if Trim(vWard) = Trim(sWard) then
//    begin
//      idx := GT_MAPOld.slStre_RI.IndexOf(sStree);
//      if idx >= 0 then
//      begin
//        iCRow := idx;
//        try
//          GT_MAPOld.slStre_RI[iCRow] := GT_MAPOld.slStre_RI[iCRow] + ' ';
//          idx := GT_MAPOld.slStre_RI.IndexOf(sStree);
//          if idx < 0 then
//          begin
//            if Trim(sCity) = GT_MAPOld.slCity[iCRow] then
//            begin
//              vWard := GT_MAPOld.slWard[iCRow];
//            end;
//          end;
//        finally
//          GT_MAPOld.slStre_RI[iCRow] := Trim(GT_MAPOld.slStre_RI[iCRow]);
//        end;
//      end;
//    end;

    if Trim(vWard) <> Trim(sWard) then
    begin
      Result := vWard;
//      Assert(False, '[fGetStreeToWard-' + sGubun + ' 시군구변경] : ' + sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
//  							+ ' / B : ' + sCity + '/' + sWard + '/' + sStree + '/'
//  							+ ' C : ' + sCity + '/' + vWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '/' + '[선택구분] : ' + sDep);
    end;
  except
    on E: Exception do
      Assert(False, 'fGetStreeToWard Error' + E.Message + ' ' +
                      sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM +
											sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
  end;
end;

function fGetCheckWard(iTag:Integer; sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM: String) : String;
Var i, j, idx : Integer;
    bChkFlag, bChkNaver : Boolean;
    sSido, vWard, vStree, sTmp, sVtmp : String;
begin
	SetDebugeWrite('fGetCheckWard');
  try
    Result := sCity;
    bChkFlag := False;

    vWard  := sWard;
    vStree := sStree;

    // 사례1. 충남 세종시금남면	용포리	용포식당                 - 시군구에 시+면 , 읍면동에 리  저장시
    // 사례2. 충남 조치원읍	정리                                 - 시군구에 읍    , 읍면동에 리  저장시
    // 사례3. 인천 계양1동	302	동양주공뜨란채3단지아파트        - 시군구에 동    , 읍면동에 임의 데이타 저장시
    // 시군구에(sWard)에 읍면동(sStree) 정보가 들어가 있을경우 시군구 / 읍면동 정보를 분리

    if Trim(sWard) = '창원시마산합포' then vWard := '창원시마산합포구' else
    if Trim(sWard) = '창원시마산회원' then vWard := '창원시마산회원구';

    if Trim(vWard) = Trim(sWard) then
    begin
      // 읍면동 정보가 정상적으로 존재시
      idx := GT_MAPOrigi.slStre_RI.IndexOf(vStree);
      if idx < 0 then
        idx := GT_MAPOld.slStre_RI.IndexOf(vStree);
      if idx > 0 then                                  // 시군구 정보에 읍면동 존재시
      begin
        vStree := vStree;
        vWard := fGetStreeToWard(iTag, sGubun, sCity, '', vStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM);
      end else
      begin
        idx := GT_MAPOrigi.slStre_RI.IndexOf(vWard+vStree);
        if idx < 0 then
          idx := GT_MAPOld.slStre_RI.IndexOf(vWard+vStree);
        if idx > 0 then                                  // 시군구 정보에 읍면동 존재시
        begin
          vStree := vWard + vStree;
          vWard := fGetStreeToWard(iTag, sGubun, sCity, '', vStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM);
        end;
      end;
    end;

    if Trim(vWard) = Trim(sWard) then
    begin
      // 시군구 정보에 읍면동 정보가 존재시
      idx := GT_MAPOrigi.slStre_RI.IndexOf(vWard);
      if idx < 0 then
        idx := GT_MAPOld.slStre_RI.IndexOf(vWard);
      if idx > 0 then                                  // 시군구 정보에 읍면동 존재시
      begin
        vStree := vWard;
        vWard := fGetStreeToWard(iTag, sGubun, sCity, '', vStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM);
      end else
      begin
        sVtmp := vWard;
        bChkFlag := False;
        for i := 2 to Length(sVtmp) do
        begin
          if bChkFlag then Break;
          sTmp := Copy(sVtmp, 1, i);

          idx := GT_MAPOrigi.slWard.IndexOf(sTmp);
          if idx >= 0 then
          begin
            vWard  := sTmp;
            // 읍면동 : 시군구 + 읍면동 체크
            vStree := Copy(sVtmp, i+1, Length(sVtmp)-i) + sStree;
            // 읍면동 정보 존재 여부 체크 - 시군구 / 읍면동 모두 일치할경우
            for j := idx to GT_MAPOrigi.slStre_RI.Count - 1 do
            begin
              if GT_MAPOrigi.slWard[j] <> vWard then Break;
              if GT_MAPOrigi.slStre_RI[j] = vStree then
              begin
                bChkFlag := True;
                Break;
              end;
            end;

            if bChkFlag then Break;
            // 읍면동 : 시군구에서 분리된 단어로 체크
            vStree := Copy(sVtmp, i+1, Length(sVtmp)-i);
            for j := idx to GT_MAPOrigi.slStre_RI.Count - 1 do
            begin
              if GT_MAPOrigi.slWard[j] <> vWard then Break;
              if GT_MAPOrigi.slStre_RI[j] = vStree then
              begin
                bChkFlag := True;
                Break;
              end;
            end;
          end;

          if bChkFlag then Break;
          idx := GT_MAPOld.slWard.IndexOf(sTmp);
          if idx >= 0 then
          begin
            vWard  := sTmp;
            vStree := Copy(sVtmp, i+1, Length(sVtmp)-i) + sStree;
            for j := idx to GT_MAPOld.slStre_RI.Count - 1 do
            begin
              if GT_MAPOld.slWard[j] <> vWard then Break;
              if GT_MAPOld.slStre_RI[j] = vStree then
              begin
                bChkFlag := True;
                Break;
              end;
            end;

            if bChkFlag then Break;
            vStree := Copy(sVtmp, i+1, Length(sVtmp)-i);
            for j := idx to GT_MAPOld.slStre_RI.Count - 1 do
            begin
              if GT_MAPOld.slWard[j] <> vWard then Break;
              if GT_MAPOld.slStre_RI[j] = vStree then
              begin
                bChkFlag := True;
                Break;
              end;
            end;
          end;
        end;

        // 해당 읍면동 정보가 없을 경우
        if Not bChkFlag then
        begin
          vWard  := sWard;
          vStree := sStree;
        end;
      end;
    end;

    bChkNaver := False;
    if ( Trim(vWard) = Trim(sWard) ) Or ( Trim(vWard) = '' ) then
    begin
			pGetNaverJibun_cloud(iTag, sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM, sSido, vWard, vStree);
			bChkNaver := True;

      if Trim(sSido) <> Trim(sCity) then
        Result := sSido;

      if ( Trim(vWard ) = Trim(sWard ) ) And
         ( Trim(vStree) = Trim(sStree) ) then
      begin
        // 결과가 없으면 NO Data 로그 처리
        Assert(False, '[fGetSiDo-Ward' + sGubun + '] : ' + sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
   								+ ' / No Data : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
        Exit;
      end;
    end;

    // 시군구 정보 검색해서 있으면 시군구/읍면동 정보 변경
    if Trim(vWard) <> Trim(sWard) then
    begin
      if sGubun = 'S' then
        Frm_Main.Frm_JON01N[iTag].lcsSta2 := vWard
      else
      if sGubun = 'E' then
        Frm_Main.Frm_JON01N[iTag].lcsEnd2 := vWard;

      if ( Trim(vStree) = Trim(sStree) ) And ( Not bChkNaver ) then
      begin
        Assert(False, '[fGetSiDo-Ward' + sGubun + ' 시군구변경] : ' + sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
                  + ' / B : ' + sCity + '/' + sWard + '/' + sStree
                  + ' C : ' + Result + '/' + vWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
      end;
    end;

    if Trim(vStree) <> Trim(sStree) then
    begin
      if sGubun = 'S' then
        Frm_Main.Frm_JON01N[iTag].lcsSta3 := vStree
      else
      if sGubun = 'E' then
        Frm_Main.Frm_JON01N[iTag].lcsEnd3 := vStree;

      if ( Not bChkNaver ) then
      begin
        Assert(False, '[fGetSiDo-Ward' + sGubun + ' 읍면동변경] : ' + sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
    							+ ' / B : ' + sCity + '/' + sWard + '/' + sStree
  	  						+ ' C : ' + Result + '/' + vWard + '/' + vStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
      end;
    end;
	except
    on E: Exception do
      Assert(False, 'fGetCheckWard Error' +  E.Message + ' ' +
                      sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM +
											sSido + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
	end;
end;

function fGetJibun(iGubun, iTag:Integer; sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM: String) : String;
Var idx, iCnt : Integer;
    bChkFlag : Boolean;
    vCity, vWard, vStree : String;
    slTmp : TStringList;
    startTick, delta : DWord;
begin
  SetDebugeWrite(Format('fGetJibun - YVal : %s , XVal : %s', [sYVal, sXVal]));

  vCity  := sCity;
  vWard  := sWard;
  vStree := sStree;

  if iGubun = 1 then Result := sCity else    // 1.시도
  if iGubun = 2 then Result := sWard else
  if iGubun = 3 then Result := sStree;

  try
    Frm_JON30.WGS84ToBessel(sYval, sXval);

    Frm_JON30.ss_Lon := Frm_JON30.ws_Lon;
    Frm_JON30.ss_Lat := Frm_JON30.ws_Lat;

    Frm_JON30.sStartEndG := sGubun+'1';
    gsGetJibunAddr := '';
    Frm_JON30.GetJibunAddr;

    startTick := GetTickCount;

    iCnt := 0;
    bChkFlag := False;
    while Not bChkFlag do
    begin
      Application.ProcessMessages;
      if Trim(gsGetJibunAddr) <> '' then bChkFlag := True;
      if iCnt > 60 then bChkFlag := True;

      Sleep(100);
      Inc(iCnt);
    end;

    delta := GetTickCount - startTick;
    SetDebugeWrite(Format('fGetJibun Over = %d : %s', [delta, gsGetJibunAddr]));

    slTmp := TStringList.Create;
    try
      GetTextSeperationEx2(' ', gsGetJibunAddr, slTmp);

      if slTmp.Count > 3 then
      begin
        vCity  := Frm_JON30.fChange_Poi_Do(slTmp[0]);

        if slTmp.Count > 3 then
        begin
          if ((RightStr(slTmp[2], 1) = '구') Or (RightStr(slTmp[2], 1) = '시') Or (RightStr(slTmp[2], 1) = '군')) then
          begin
            vWard := slTmp[1]+slTmp[2];   //시군구
						if ((RightStr(slTmp[3], 1) = '읍') Or (RightStr(slTmp[3], 1) = '면')) and ( slTmp.Count > 4 ) then
              vStree := slTmp[3]+slTmp[4]  //읍면+리
            else
              vStree := slTmp[3];          //동
          end else
          if ((RightStr(slTmp[2], 1) = '읍') Or (RightStr(slTmp[2], 1) = '면')) then
          begin
            vWard  := slTmp[1];            //시군구
            vStree := slTmp[2] + slTmp[3]; //읍면+리
          end else
          begin
            vWard  := slTmp[1];            //시군구
            vStree := slTmp[2];            //동
          end;
        end;

        if iGubun = 1 then     // 1.시도
        begin
          if Trim(vWard) <> Trim(sWard) then
            vCity := sCity;

          Result := vCity;
          if Trim(vCity) <> Trim(sCity) then
          begin
            Assert(False, '[fGetJibun' + sGubun + ' 시도변경] : ' + sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
                      + ' / B : ' + sCity + '/' + sWard + '/' + sStree
                      + ' C : ' + vCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
          end;
        end else
        if iGubun = 2 then     // 2.시군구
        begin
          idx := GT_MAPOrigi.slWard.IndexOf(vWard);
          if idx >= 0 then
          begin
            if ( Trim(vCity ) <> Trim(sCity ) ) And
               ( Trim(vStree) <> Trim(sStree) ) then
            begin
              vWard := sWard;
            end;
          end;

          if Trim(vWard) = Trim(sWard) then
          begin
            idx := GT_MAPOld.slWard.IndexOf(vWard);
            if idx >= 0 then
            begin
              if ( Trim(vCity ) <> Trim(sCity ) ) And
                 ( Trim(vStree) <> Trim(sStree) ) then
              begin
                vWard := sWard;
              end;
            end;
          end;

          Result := vWard;
          if Trim(vWard) <> Trim(sWard) then
          begin
            Assert(False, '[fGetJibun' + sGubun + ' 시군구변경] : ' + sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
                      + ' / B : ' + sCity + '/' + sWard + '/' + sStree
                      + ' C : ' + sCity + '/' + vWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
          end;
        end else
        if iGubun = 3 then     // 3.읍면동리
        begin
          idx := GT_MAPOrigi.slStre_Ri.IndexOf(vStree);
          if idx >= 0 then
          begin
            if ( Trim(vCity) <> Trim(sCity ) ) And
               ( Trim(vWard) <> Trim(sWard ) ) then
            begin
              vStree := sStree;
            end;
          end;

          if Trim(vStree) = Trim(sStree) then
          begin
            idx := GT_MAPOld.slStre_Ri.IndexOf(vStree);
            if idx >= 0 then
            begin
              if ( Trim(vCity) <> Trim(sCity ) ) And
                 ( Trim(vWard) <> Trim(sWard ) ) then
              begin
                vStree := sStree;
              end;
            end;
          end;

          Result := vStree;
          if Trim(vStree) <> Trim(sStree) then
          begin
            Assert(False, '[fGetJibun' + sGubun + ' 읍면동변경] : ' + sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
                      + ' / B : ' + sCity + '/' + sWard + '/' + sStree
                      + ' C : ' + sCity + '/' + sWard + '/' + vStree + '/' + sArea4 + '/' + ' ' + '[선택구분] : ' + sDep);
          end;
        end;
      end;
    finally
      slTmp.Free;
    end;
  except
    on E: Exception do
      Assert(False, 'fGetJibun Error' +  E.Message + ' ' +
                      sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM +
											sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '[선택구분] : ' + sDep);
  end;
end;

procedure pGetNaverJibun_cloud(iTag:Integer; sGubun, sCity, sWard, sStree, sBigo, sDep, sArea4, sArea5, sXval, sYval, sHDNO, sBRNO, sKEYNUM: String; Var vCity, vWard, vStree : String);
Var sHttp, sX, sY, sErr : String;
    sAddr : String;
    slTmp : TStringList;
begin
	try
		SetDebugeWrite(Format('pGetNaverJibun_cloud - YVal : %s , XVal : %s', [sYVal, sXVal]));

    vCity  := sCity;
    vWard  := sWard;
    vStree := sStree;

    if ( Trim(sYVal) = '' ) Or ( Trim(sXVal) = '' ) Or ( StrToIntDef(sYVal, 0) = 0 ) Or ( StrToIntDef(sXVal, 0) = 0 ) then
    begin
			Assert(False, '[pGetNaverJibun-' + sGubun + '] : ' + sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
      						+ ' / No Data : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '/' + sYVal + '/' + sXVal + ' [선택구분] : ' + sDep);
      Exit;
    end;

    sX := getDEGREE(sXval);
    sY := getDEGREE(sYval);

		sHttp := 'https://naveropenapi.apigw.ntruss.com/map-reversegeocode/v2/gc?coords=' + sY + ',' + sX 
					 + '&output=json&orders=addr';

		sAddr := fGetNaverAddress_cloud('H', sHttp);

    if Trim(sAddr) = '' then
    begin
			Assert(False, '[pGetNaverJibun_cloud-' + sGubun + '] : ' + sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
      						+ ' / No Data : ' + sCity + '/' + sWard + '/' + sStree + '/' + sArea4 + '/' + sArea5 + '/' + sYVal + '/' + sXVal + ' [선택구분] : ' + sDep + '/' + sErr);
      Exit;
    end;

    slTmp := TStringList.Create;
    try
      GetTextSeperationEx2(' ', sAddr, slTmp);
      if slTmp.Count >= 3 then
      begin
        vCity  := Frm_JON30.fChange_Poi_Do(slTmp[0]);

        if fSejongCheck(slTmp[0]) then  // 20121206 LYB 추가
        begin
					if ((RightStr(slTmp[2], 1) = '읍') Or
							(RightStr(slTmp[2], 1) = '면')) then
          begin
						vWard := '세종시';
						vStree := slTmp[2] + slTmp[3];  // 읍면리
					end else
  				if (RightStr(slTmp[2], 1) = '동') then
          begin
            vWard := '세종시';
						vStree := slTmp[2]; //동
					end else
          begin
            vWard := '세종시';
						vStree := '';       //동
					end;
        end else
        begin
					if ((RightStr(slTmp[2], 1) = '구') Or 
							(RightStr(slTmp[2], 1) = '시') Or 
							(RightStr(slTmp[2], 1) = '군')) then
					begin
            vWard := slTmp[1]+slTmp[2];   //시군구
						if ((RightStr(slTmp[3], 1) = '읍') Or 
								(RightStr(slTmp[3], 1) = '면')) and ( slTmp.Count > 4 ) then
							vStree := slTmp[3]+slTmp[4]  //읍면+리
            else
              vStree := slTmp[3];          //동
          end else
					if ((RightStr(slTmp[2], 1) = '읍') Or 
							(RightStr(slTmp[2], 1) = '면')) then
          begin
            vWard  := slTmp[1];            //시군구
            vStree := slTmp[2] + slTmp[3]; //읍면+리
          end else
          begin
            vWard  := slTmp[1];            //시군구
						vStree := slTmp[2];            //동
          end;
        end;

        if ( Trim(vCity)  <> Trim(sCity)  ) Or
					 ( Trim(vWard)  <> Trim(sWard)  ) Or
           ( Trim(vStree) <> Trim(sStree) ) then
        begin
					Assert(False, '[pGetNaverJibun_cloud-' + sGubun + ' 주소변경] : ' + sBigo + ' / 발주(본사-' + sHDNO + ' 지사-' + sBRNO + ' 대표번호-' + sKEYNUM
                      + ' / B : ' + sCity + '/' + sWard + '/' + sStree
                      + ' C : ' + vCity + '/' + vWard + '/' + vStree + '/' + sArea4 + '/' + sArea5 + '/' + sYVal + '/' + sXVal + ' [선택구분] : ' + sDep);
        end;
      end;
    finally
      slTmp.Free;
    end;
  except
    on e: exception do
    begin
      Log('fGetNaverJibun Error:' + e.message, LOGDATAPATHFILE);
      GS_DebugError := 'fGetNaverJibun Error:' + e.message;
    end;
  end;
end;

function fGetNaverAddress_cloud(vG, vHttp:string) : String;
var IdHTTPNaverAPI : TIdHTTP;
	wURL, sTmp, sCode, sGubun, sType, sJiType, sBunji_1, sBunji_2, sBeType : String;
	i, iRandom : Integer;
	jObj, jSubObj, jTmpObj : TJSONObject;
	jPair : TJSONPair;
	jValue : TJSONValue;
	jArray : TJSONArray;

	sArea1, sArea2, sArea3, sArea4, sArea5 : string; 
	slArea1, slArea2, slArea3, slArea4, slType : TStringList; 
	
begin
	try
//https://naveropenapi.apigw.ntruss.com/map-place/v1/search?query=%EB%B0%A9%EB%B0%B0%EC%97%AD1&coordinate=127.043625,37.486967&X-NCP-APIGW-API-KEY-ID=l2rcola66c&X-NCP-APIGW-API-KEY=GnVuiD7B41aqS7S9O5OEHNmYJ6NK7lPPGi3oPHVi		wURL := '';
		IdHTTPNaverAPI := TIdHttp.Create(nil);
		if ( vG <> 'H' ) And ( vG <> 'B') then
		begin
//			vHttp := 'https://openapi.naver.com/';
			vHttp := 'https://naveropenapi.apigw.ntruss.com';
			IdHTTPNaverAPI.ConnectTimeout := 1 * 1000;
	    IdHTTPNaverAPI.ReadTimeout := 1 * 1000;
		end else
		begin
			//admcode : 행정동
			//legalcode : 법정동
			if vG = 'H' then 
			begin
				vHttp := vHttp + ',admcode';
				sGubun := 'A';
			end else
			if vG = 'B' then 
			begin
				vHttp := vHttp + ',legalcode';
				sGubun := 'L';
			end;
			
			iRandom := RandomRange(0, gslNaverClientID.Count); //실제 갯수만큼 사용 0, 5 -> Max index = 4
			if iRandom > ( gslNaverClientID.Count - 1) then iRandom := 0;

			IdHTTPNaverAPI.ConnectTimeout := 3 * 1000;
			IdHTTPNaverAPI.ReadTimeout := 3 * 1000;
			IdHTTPNaverAPI.Request.CustomHeaders.Values['X-NCP-APIGW-API-KEY-ID'] := gslNaverClientID[iRandom];
			IdHTTPNaverAPI.Request.CustomHeaders.Values['X-NCP-APIGW-API-KEY'] := gslNaverClientKey[iRandom];
    end;

    try
			wURL := IdHTTPNaverAPI.Get(vHttp);
    except on E: Exception do
      begin
				wURL := '';
				try
					Log('fGetNaverJibun Get Error : ' + e.Message, LOGDATAPATHFILE);
     			Assert(False, 'fGetNaverJibun Get Error : ' + e.Message);
        except

        end;
			end;
    end;
	finally
    IdHTTPNaverAPI.Free;
  end;
  SetDebugeWrite('fGetNaverJibun - ' + wURL);

	if ( Trim(wURL) = '' ) Or ( Pos('result', wURL) < 0 ) then
	begin
		Result := '';
		Exit;
	end;

  gsGetJibunAddr := '';
	slArea1 := TStringList.Create;
	slArea2 := TStringList.Create;
	slArea3 := TStringList.Create;
	slArea4 := TStringList.Create;
	slType  := TStringList.Create;
	jObj := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(wURL), 0) as TJSONObject;
	try
		jPair := jObj.Get('status');
		jValue := jPair.JsonValue;
		sTmp := jValue.ToString;
		
		jSubObj := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(sTmp), 0) as TJSONObject;
		jPair := jSubObj.Get('code');
		jValue := jPair.JsonValue;
		sTmp := jValue.ToString;
		FreeAndNil(jSubObj);

		if sTmp <>  '0' then  //0 : ok, 3 : no results
		begin
			Result := '';
			Exit;
		end;
		if (sTmp = '') or (sTmp = '{}') then exit;

		jPair := jObj.Get('results');
		jValue := jPair.JsonValue;
		sTmp := jValue.ToString;
		
		jArray := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(sTmp), 0) as TJSONArray;
		if jArray.Count = 0 then
		begin
			FreeAndNil(jArray);
			FreeAndNil(jObj);
		end else
		begin
			for i := 0 to jArray.Count - 1 do
			begin
				jSubObj := jArray.Get(i) as TJSONObject;

				jPair := jSubObj.Get('code');
				jValue := jPair.JsonValue;
				sCode := jValue.ToString;

				jTmpObj := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(sCode), 0) as TJSONObject;
				jPair := jTmpObj.Get('type');
				jValue := jPair.JsonValue;
				sType := StringReplace(jValue.ToString, '"', '', [rfReplaceAll]);
				slType.Add(sType);
				FreeAndNil(jTmpObj);

				if i = 0 then //번지정보는 첫번째에 있음
				begin
					jPair := jSubObj.Get('land');
					jValue := jPair.JsonValue;
					sTmp := jValue.ToString;

					jTmpObj := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(sTmp), 0) as TJSONObject;

					jPair := jTmpObj.Get('type');
					jValue := jPair.JsonValue;
					sJiType := StringReplace(jValue.ToString, '"', '', [rfReplaceAll]);
					if sJiType = '2' then sArea5 := '산 ';

					jPair := jTmpObj.Get('number1');
					jValue := jPair.JsonValue;
					sBunji_1 := StringReplace(jValue.ToString, '"', '', [rfReplaceAll]);
					
					jPair := jTmpObj.Get('number2');
					jValue := jPair.JsonValue;
					sBunji_2 := jValue.ToString;
					sBunji_2 := StringReplace(jValue.ToString, '"', '', [rfReplaceAll]);
					
					FreeAndNil(jTmpObj);

					if sBunji_2 = '' then
						sArea5 := sArea5 + sBunji_1
					else
						sArea5 := sArea5 + sBunji_1 + '-' + sBunji_2; 
				end;

				jPair := jSubObj.Get('region');
				jValue := jPair.JsonValue;
				sTmp := jValue.ToString;

				jTmpObj := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(sTmp), 0) as TJSONObject;
				jPair := jTmpObj.Get('area1');
				jValue := jPair.JsonValue;
				sArea1 := jValue.ToString;
				FreeAndNil(jTmpObj);
				jTmpObj := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(sArea1), 0) as TJSONObject;
				jPair := jTmpObj.Get('name');
				jValue := jPair.JsonValue;
				sArea1 := StringReplace(jValue.ToString, '"', '', [rfReplaceAll]);
				slArea1.Add(sArea1);
				FreeAndNil(jTmpObj);

				jTmpObj := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(sTmp), 0) as TJSONObject;
				jPair := jTmpObj.Get('area2');
				jValue := jPair.JsonValue;
				sArea2 := jValue.ToString;
				FreeAndNil(jTmpObj);
				jTmpObj := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(sArea2), 0) as TJSONObject;
				jPair := jTmpObj.Get('name');
				jValue := jPair.JsonValue;
				sArea2 := StringReplace(jValue.ToString, '"', '', [rfReplaceAll]);
				sArea2 := StringReplace(sArea2, ' ', '', [rfReplaceAll]);
				slArea2.Add(sArea2);
				FreeAndNil(jTmpObj);

				jTmpObj := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(sTmp), 0) as TJSONObject;
				jPair := jTmpObj.Get('area3');
				jValue := jPair.JsonValue;
				sArea3 := jValue.ToString;
				FreeAndNil(jTmpObj);
				jTmpObj := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(sArea3), 0) as TJSONObject;
				jPair := jTmpObj.Get('name');
				jValue := jPair.JsonValue;
				sArea3 := StringReplace(jValue.ToString, '"', '', [rfReplaceAll]);
				sArea3 := StringReplace(sArea3, ' ', '', [rfReplaceAll]);
				slArea3.Add(sArea3);
				FreeAndNil(jTmpObj);

				jTmpObj := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(sTmp), 0) as TJSONObject;
				jPair := jTmpObj.Get('area4');
				jValue := jPair.JsonValue;
				sArea4 := jValue.ToString;
				FreeAndNil(jTmpObj);
				jTmpObj := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(sArea4), 0) as TJSONObject;
				jPair := jTmpObj.Get('name');
				jValue := jPair.JsonValue;
				sArea4 := StringReplace(jValue.ToString, '"', '', [rfReplaceAll]);
				sArea4 := StringReplace(sArea4, ' ', '', [rfReplaceAll]);
				slArea4.Add(sArea4);
				FreeAndNil(jTmpObj);
				
			end;
		end;
		sBeType := '-';
		for i := 0 to slArea1.count -1  do
		begin
			sTmp := slType[i];
			if sTmp = sBeType then
			begin
				gsGetJibunAddr := slArea1[0] + ' ' + slArea2[0] + ' ' + slArea3[0] + ' ' + slArea4[0] + ' ' + sArea5;
			
			end	else
			if (sGubun = sTmp) or (sTmp = 'S') then //S : 법행정동명 같음
			begin
				gsGetJibunAddr := slArea1[i] + ' '+ slArea2[i] + ' ' + slArea3[i] + ' ' + slArea4[i] + ' ' + sArea5;
			
			end else gsGetJibunAddr := '';

			
			sBeType := sTmp; //같은타입이 두번 올때 처리
		end;
			
		Result := gsGetJibunAddr;
  finally
		slArea1.free;
		slArea2.free;
		slArea3.free;
		slArea4.free;
		slType .free;
	end;    
end;

//procedure pWCONGNAMULtoWGS84( sX, sY : String; Var swX, swY : String );
//var IdHTTPDaumAPI : TIdHTTP;
//    wURL, sHttp, sApiKey : String;
//    i, iRandom : Integer;
//    js : TlkJSONobject;
//  	ja : TlkJSONlist;
//begin
//  try
//		iRandom := RandomRange(0, GS_DAUM_APIKey.Count );
//    if iRandom > ( GS_DAUM_APIKey.Count - 1) then iRandom := 0;
//
//    sApiKey := GS_DAUM_APIKey[iRandom];
//
//    wURL := '';
//    sHttp := Format('https://dapi.kakao.com/v2/local/geo/transcoord.json?x=%s&y=%s&input_coord=WCONGNAMUL&output_coord=WGS84&output=json',
//                    [sX, sY]);
//
//    IdHTTPDaumAPI := TIdHttp.Create(nil);
//	  IdHTTPDaumAPI.ConnectTimeout := 3 * 1000;
//	  IdHTTPDaumAPI.ReadTimeout := 3 * 1000;
//    IdHTTPDaumAPI.Request.CustomHeaders.Values['Authorization'] := 'KakaoAK ' + sApiKey; // 인증형식 ' KakaoAK ' + APIKey
//
//    try
//  	  wURL := IdHTTPDaumAPI.Get(sHttp);
//    except on E: Exception do
//      begin
//        wURL := '';
//        Log('pWCONGNAMULtoWGS84 Get Error : ' + sHttp + ' - ' + e.Message, LOGDATAPATHFILE);
//   			Assert(False, 'pWCONGNAMULtoWGS84 Get Error : ' + sHttp + ' - ' + e.Message);
//      end;
//    end;
//  finally
//    IdHTTPDaumAPI.Free;
//  end;
//
//  SetDebugeWrite('pWCONGNAMULtoWGS84 - ' + wURL);
//	if Trim(wURL) = '' then Exit;
//
//  try
//    js := TlkJSON.ParseText(wURL) as TlkJSONobject;
//    try
//      if strToIntDef(js.Field['meta'].Field['total_count'].Value, 0) > 0 then
//      begin
//        ja := js.Field['documents'] as TlkJSONlist;
//        swX := FormatFloat('0.000000', ja.Child[i].Field['x'].Value);
//        swY := FormatFloat('0.000000', ja.Child[i].Field['y'].Value);
//
//        swX := getWGS84(swX);
//        swY := '0'+ getWGS84(swY);
//      end;
//    finally
//      ja.Free;
//    end;
//  except on E: Exception do
//    begin
//      swX := '';
//      sWY := '';
//      Assert(False, 'pWCONGNAMULtoWGS84 Error : ' + wURL + ' - ' + e.Message);
//    end;
//  end;
//end;

procedure pLocWCONGNAMULtoWGS84( sX, sY : String; Var swX, swY : String );
var degree_y, degree_x, min_x, min_y, s_y, s_x, ss_y, ss_x, Y_1, x_1 : Double;
	r_x, r_y : Double;
	coord : IXCoordSys;
	pos : IXMapPos;
	d_s, m_s, s_s, ss_s : string;
begin
  try
    if (Trim(sX) = '') Or (Trim(sY) = '') then
    begin
      swX := '';
      swY := '';
      Exit;
    end;

    coord := Frm_JON30.mMap.GetCoordSys();

    Y_1 := StrToFloat(sY) / 2.5;
    x_1 := StrToFloat(sX) / 2.5;

    pos := coord.WTMToWGS84(X_1, Y_1, 2);

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
    sWX := d_s + m_s + s_s + ss_s;

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
    sWY := '0' + d_s + m_s + s_s + ss_s;
  except on E: Exception do
    begin
      swX := '';
      sWY := '';
      Assert(False, 'pWCONGNAMULtoWGS84 Error : ' + e.Message);
    end;
  end;
end;

function ServiceGetList(sMachine: string; dwServiceType,
  dwServiceState: DWord): boolean;
const
  //
  // assume that the total number of
  // services is less than 4096.
  // increase if necessary
  cnMaxServices = 4096;
type
	TSvcA = array[0..cnMaxServices]	of TEnumServiceStatus;
	PSvcA = ^TSvcA;
var
	j : integer;  // temp. use
	schm          : SC_Handle; // service control  manager handle

	nBytesNeeded, // bytes needed for the  next buffer, if any
	nServices, // number of services
	// pointer to the
	// next unread service entry
	nResumeHandle : DWord; // pointer to the next unread service entry
	ssa : PSvcA; // service status array
	sTmp : string;
begin
	Result := False;

  // connect to the service
  // control manager
  schm := OpenSCManager(
		PChar(sMachine),
		Nil,
    SC_MANAGER_ALL_ACCESS);

  // if successful...
  if(schm > 0)then
  begin
    nResumeHandle := 0;

    New(ssa);

{    EnumServicesStatus(
      schm,
      dwServiceType,
			dwServiceState,
      ssa^[0],
      SizeOf(ssa^),
      nBytesNeeded,
			nServices,
      nResumeHandle );
}
    //
    // assume that our initial array
    // was large enough to hold all
    // entries. add code to enumerate
    // if necessary.
    //

    for j := 0 to nServices-1 do
    begin
			sTmp := StrPas(ssa^[j].lpDisplayName );
			if Pos('Fasoo', sTmp) > 0 then
			begin
				Result := False;
				Break;
			end
			else Result := True;
		end;

		Dispose(ssa);

    // close service control
		// manager handle
    CloseServiceHandle(schm);
	end;
end;

function fgetSpaceToHtml( sValue : String ) : String;
Var sText : String;
begin
  sText := sValue;
  if Pos('>', sText) > 0 then
  begin
    sText := StringReplace(sText, ' ','&nbsp;', [rfReplaceAll]);  // 공백을 &nbsp;로 치환하는 이유 : 셀크기가 작을때 공백이 들어가면 공백이후 글자가 보이지 않음(셀크기를 늘리면 보임)
  end;
  Result := sText;
end;

function func_EucKr_CheckSMS( sValue : String ) : string;
var i : integer;
		st : string;
begin
	try
		Result := '';

		for i := 0 to Length(sValue) -1 do
		begin
			st := Copy(sValue,i+1, 1);
//			if (st = ' ') or (st = '''') then Continue;
			if Trim(st) = '' then Continue;
			if HashEucKr_1.IndexOf(st) < 0 then
			begin
				Result := st;
				Break;
			end;
		end;
	except
		Result := '';
	end;
end;

function func_EucKr_Check(Sender: TObject; vGubun : Integer) : Boolean;
var i, iTmp : integer;
		sValue, sResult, st : string;
begin
	try
    Result := True;
		sResult := '';

    if ( Sender is TcxTextEdit ) then sValue := TcxTextEdit(Sender).Text else
    if ( Sender is TcxMemo     ) then sValue := TcxMemo(Sender).Text;

		for i := 0 to Length(sValue) -1 do
		begin
			st := Copy(sValue,i+1, 1);
			if Trim(st) = '' then Continue;
			if HashEucKr_1.IndexOf(st) < 0 then
			begin
				sResult := st;
				Break;
			end;
		end;
	except
		sResult := '';
	end;

  if sResult <> '' then
  begin
    try
      if vGubun = 0 then
      begin
        GMessagebox(Format('         [%s] <<< 문자오류' + #13#10 + #13#10 + '이 문자는 올바른 표기가 아닙니다. '  + #13#10
          + '정확히 입력하여 주십시오.', [sResult]), CDMSE);
      end else
      if vGubun = 1 then
      begin
    		GMessagebox(Format('         [%s] <<< 문자오류' + #13#10 + #13#10 + '이 문자는 올바른 표기가 아닙니다. '  + #13#10
     			+ '정확히 입력하여 주십시오. '+ #13#10 + #13#10
    			+ '※ 오류문자가 포함될 경우 깨진 문자형태로 발송됩니다.', [sResult]), CDMSE);
      end;
      iTmp := Pos(sResult, sValue);
      Result := False;
      if ( Sender is TcxTextEdit ) then
      begin
        TcxTextEdit(Sender).SelStart := iTmp-1;
        TcxTextEdit(Sender).SelLength := 1;
        TcxTextEdit(Sender).SetFocus;
      end else
      if ( Sender is TcxMemo     ) then
      begin
        TcxMemo(Sender).SelStart := iTmp-1;
        TcxMemo(Sender).SelLength := 1;
        TcxMemo(Sender).SetFocus;
      end;
  	except
	  	Result := False;
  	end;
  end;
end;

function fgetCountSms( sMessage : String ) : Integer;
Var AddCnt : Integer;
    sMsg : String;
begin
  try
    AddCnt := 0;
    while GetSmsMemoLength(AnsiString(sMessage)) > 0 do
    begin
      if GetSmsMemoLength(AnsiString(sMessage)) <= 90 then
      begin
				sMessage := '';
      end else
      begin
        sMsg := GetStrPharseByte(sMessage, 89);          // 89.이유는 한글2byte이므로 90일경우 91byte가 될수 있음
        sMessage := Copy(sMessage, Length(sMsg) + 1, Length(AnsiString(sMessage)) - Length(AnsiString(sMsg)));
      end;
      Inc(AddCnt);
    end;
    Result := AddCnt;
  except

  end;
end;

function fMemoToVia( AVia, AMemo : String ) : String;
Var iPs, iPe : Integer;
    sVia : String;
begin
	try
		iPs := 1;
		if Pos('경유:', AMemo) > 0 then
		begin
			iPs := Pos('(경유:', AMemo);
      iPe := PosEx(')'   , AMemo, iPs) + 1;
      //추가///////////
      if copy(AMemo, iPe, 1) = '/' then               //2차 경유지가 있는경우
      begin
         iPe := PosEx(')', AMemo, iPe+1) + 1;
         if copy(AMemo, iPe, 1) = '/' then             //3차 경유지가 있는경우
         begin
            iPe := PosEx(')', AMemo, iPe+1) + 1;
            if copy(AMemo, iPe, 1) = '/' then           //4차 경유지가 있는경우
            begin
               iPe := PosEx(')', AMemo, iPe+1) + 1;
               if copy(AMemo, iPe, 1) = '/' then         //5차 경유지가 있는경우
               begin
                  iPe := PosEx(')', AMemo, iPe+1) + 1;
               end;
            end;
         end;
      end;
      //추가///////////

			sVia := Copy(AMemo, iPs, (iPe - iPs));
			AMemo := StringReplace(AMemo, sVia, '', [rfReplaceAll]);
		end;

		if AVia <> '' then        
			Result := AMemo.Insert(iPs-1, '(경유:'+ AVia + ')' )
		else  
			Result := AMemo;    
	except

	end;
end;

function String2Hex(const Buffer: AnsiString): string;
begin
	SetLength(Result, Length(Buffer) * 2);
	BinToHex(@Buffer[1], PWideChar(@Result[1]), Length(Buffer));
end;

function HexToByteArr(Hexs: string): byDynamicArr;
var i : integer;
	byDynamicArray : byDynamicArr;
begin
	Hexs := StringReplace(Hexs, ' ', '', [rfReplaceAll]);
	Hexs := UpperCase(Hexs);
	SetLength(byDynamicArray, Trunc(Length(Hexs) / 2));
	fillchar(byDynamicArray[0], sizeOf(byDynamicArray), 0);
	for I := 1 to trunc(length(Hexs) /2) do 
	begin
		byDynamicArray[i - 1] := (CharToByte(Hexs[i*2 -1]) * 16) + CharToByte(Hexs[i*2]) ;
	end;
	Result := byDynamicArray			
end;

function getPaymethodName( sType : String ) : String;
begin
  if sType = '0' then Result := '현금'       else
  if sType = '1' then Result := '마일리지'   else
  if sType = '2' then Result := '후불'       else
  if sType = '3' then Result := '모바일결제' else
  if sType = '4' then Result := '외상'       else
  if sType = '5' then Result := '현장카드'   else
  if sType = '6' then Result := '즉불'       else
  if sType = '7' then Result := '후불(카드)' else
  if sType = '8' then Result := '후불(마일)'
                 else Result := sType;
end;

function CharToByte(AChar: Char): byte;
begin
	if charinset(Achar, ['0'..'9']) then
		result := byte(ord(Achar) - ord('0'))
	else
		result := byte(10 + ord(Achar) - ord('A'))
end;

function isRoadAddress( str : String ) : boolean;
Var slTmp : TStringList;
    sAddr, sEndStr : String;
begin
  slTmp := TStringList.Create;
  try
  	slTmp.Delimiter     := ' ';
    slTmp.DelimitedText := str;

    if (slTmp.Count > 1) and (fSejongCheck(slTmp[0])) then  // 20121206 LYB 추가
		begin
			if ((copy(slTmp[1],length(slTmp[1]), 1) = '면')
			 or (copy(slTmp[1],length(slTmp[1]), 1) = '읍')) then
			begin
				sAddr := '세종시' + ' ' + slTmp[1] + ' ' + slTmp[2];  // 읍면리
			end else
			if (copy(slTmp[1],length(slTmp[1]), 1) = '동') then
			begin
        sAddr := '세종시' + ' ' + slTmp[1];    //동
			end else
			begin
        sAddr := '세종시';
			end;
		end else
		begin
      sAddr := slTmp[0] + ' ' + slTmp[1] + ' ' + slTmp[2];  //시군구+ 동

			if slTmp.Count > 3 then
			begin
				if ((copy(slTmp[2],length(slTmp[2]), 1) = '구')
				 or (copy(slTmp[2],length(slTmp[2]), 1) = '시')
				 or (copy(slTmp[2],length(slTmp[2]), 1) = '군')) then
			 	begin
          sAddr := slTmp[0] + ' ' + slTmp[1] + slTmp[2];  //시군구
					if ((copy(slTmp[3],length(slTmp[3]), 1) = '읍')
					 or (copy(slTmp[3],length(slTmp[3]), 1) = '면')) and ( slTmp.Count > 4 ) then
							sAddr := sAddr + ' ' + slTmp[3]+slTmp[4]  //읍면+리
					else
	  					sAddr := sAddr + ' ' + slTmp[3];          //동
	  		end else
        if ((copy(slTmp[2],length(slTmp[2]), 1) = '읍')
         or (copy(slTmp[2],length(slTmp[2]), 1) = '면')) then
        begin
          sAddr := slTmp[0] + ' ' + slTmp[1] + ' ' + slTmp[2] + slTmp[3]        //시군구+ 읍면+리
        end else
        begin
					sAddr := slTmp[0] + ' ' + slTmp[1] + ' ' + slTmp[2];  //시군구+ 동
        end;
      end;
    end;

    sEndStr := RightStr(sAddr, 1);
    if ( sEndStr = '구' ) Or ( sEndStr = '시' ) Or ( sEndStr = '군' ) Or ( sEndStr = '읍' ) Or
       ( sEndStr = '면' ) Or ( sEndStr = '동' ) Or ( sEndStr = '리' ) then
    begin
      Result := False;
    end else
    begin
      Result := True;
    end;
  finally
    FreeAndNil(slTmp);
  end;
end;

procedure Proc_2ndSearchIng(ATag : integer; ABool : boolean; ActiveEdit : String );
var iNowTag, iTmp, iTop, iLeft, iSratrTop, iViaTop, iEndTop  : integer;
begin
  if ABool then
  begin
    iSratrTop := Frm_Main.Frm_JON01N[ATag].grpStartArea.Top;
    iEndTop   := Frm_Main.Frm_JON01N[ATag].pnlBody.Top;
    iViaTop   := Frm_Main.Frm_JON01N[ATag].grpViaArea.Top;
    Frm_Main.Frm_JON01N[ATag].img_SpeechBubble.BringToFront;
    if ActiveEdit = 'meoStartArea' then
    begin
      iTop := iSratrTop;
      iLeft := 54 + (length(Frm_Main.Frm_JON01N[ATag].meoStartArea.text) * 22 );
      Frm_Main.Frm_JON01N[ATag].img_SpeechBubble.Visible := ABool;
      Frm_Main.Frm_JON01N[ATag].img_SpeechBubble.Top := iTop - 41;//117;
      Frm_Main.Frm_JON01N[ATag].img_SpeechBubble.left := iLeft;
    end else
    if ActiveEdit = 'meoEndArea' then
    begin
      iTop := iEndTop;

      iLeft := 54 + (length(Frm_Main.Frm_JON01N[ATag].meoEndArea.text) * 22 );
      Frm_Main.Frm_JON01N[ATag].img_SpeechBubble.Visible := ABool;
      Frm_Main.Frm_JON01N[ATag].img_SpeechBubble.Top := iTop - 41;
      Frm_Main.Frm_JON01N[ATag].img_SpeechBubble.left := iLeft;
    end else
    if ActiveEdit = 'meoViaArea' then
    begin
      iNowTag := Frm_Main.Frm_JON01N[ATag].ViaNowTag;
      if iNowTag = 1 then
      begin
        iLeft := 45 + (length(Frm_Main.Frm_JON01N[ATag].meoViaArea1.text) * 12 );
      end	else
      begin
        iLeft := 45 + (length(Frm_Main.Frm_JON01N[ATag].meoViaArea[iNowTag].text) * 12 );
      end;

      iTmp := 0;
      if GS_VIA_Tag > 1 then
        iTmp := (GS_VIA_Tag * 22) - 20;
      iTop := iViaTop + iTmp;

      Frm_Main.Frm_JON01N[ATag].img_SpeechBubble.Visible := ABool;
      Frm_Main.Frm_JON01N[ATag].img_SpeechBubble.Top := iTop - 48;
      Frm_Main.Frm_JON01N[ATag].img_SpeechBubble.left := iLeft;
    end;
  end else
  begin
    if Frm_Main.Frm_JON01N[ATag].img_SpeechBubble.Visible then
    begin
      Frm_Main.Frm_JON01N[ATag].img_SpeechBubble.Visible := ABool;
      Frm_Main.Frm_JON01N[ATag].gb_SpeechBubbleMouseOn := ABool;
    end;
  end;
end;

procedure pJON01ShowMessage(ATag:Integer; sType, sMsg: String);
begin
// A.Application.MessageBox, B.ShowMessage, C.GMessagebox
  if Frm_Main.Frm_JON01N[ATag].Showing then
  begin
    if sType = 'A' then Application.MessageBox(PChar(sMsg), PChar(GS_APPNAME), MB_OK) else
    if sType = 'B' then ShowMessage(sMsg) else
    if sType = 'C' then	GMessagebox(sMsg, CDMSE);
  end else
  begin
    JON01_MSGList[ATag].sType.Add(sType);
    JON01_MSGList[ATag].sMsg.Add(sMsg);
  end;
end;

procedure pJON01Show(ATag:Integer);
Var bLeft : Boolean;
    i, iTop, iLeft : Integer;
begin
  if Not Frm_Main.Frm_JON01N[ATag].Showing then
  begin
    if GI_JON_WKCALLPOPUP >= 0 then Exit;  // 기사콜링시 접수창 안띄움 옵션 사용시 Exit;

    Frm_Main.Frm_JON01N[ATag].Show;
    GS_JON01OPEN_CHECK := True;    //사용자 지점 사용을 위한 동기화 시 jon01 오픈여부 판단 2013.06.26 KHS
    ShowWindow(Frm_Main.Frm_JON01N[ATag].Handle, SW_SHOW);   // 접수창 이중 팝업의 원인일까? 20191201 KHS

    for i := 0 to JON01_MSGList[ATag].sMsg.Count - 1 do
    begin
      if JON01_MSGList[ATag].sType[i] = 'A' then Application.MessageBox(PChar(JON01_MSGList[ATag].sMsg[i]), PChar(GS_APPNAME), MB_OK) else
      if JON01_MSGList[ATag].sType[i] = 'B' then ShowMessage(JON01_MSGList[ATag].sMsg[i]) else
      if JON01_MSGList[ATag].sType[i] = 'C' then GMessagebox(JON01_MSGList[ATag].sMsg[i], CDMSE);
    end;

    JON01_MSGList[ATag].sType.Clear;
    JON01_MSGList[ATag].sMsg.Clear;

    Application.ProcessMessages;

		if ( Frm_Main.Frm_Jon01N[ATag].Showing ) And ( Not Frm_Main.Frm_Jon012[ATag].Showing ) then Frm_Main.Frm_Jon01N[ATag].Proc_Jon012Show;

    if ( Frm_Main.Frm_JON01N[ATag].Showing ) And
       ( Frm_Main.Frm_JON01N[ATag].meoStartArea.CanFocus ) then
      Frm_Main.Frm_JON01N[ATag].meoStartArea.SetFocus;
  end;

  if ( GB_JON_FIXEDPIN ) And Assigned(Frm_Main.Frm_JON012[ATag]) And ( Frm_Main.Frm_Jon012[ATag].Showing ) then
  begin
    bLeft := GS_EnvFile.ReadBool('AcceptWin', 'Jon012Pos' , True);
    if Not bLeft then
    begin
      iTop  := GS_EnvFile.ReadInteger('AcceptWin', 'Jon012Top', 200);
      iLeft := GS_EnvFile.ReadInteger('AcceptWin', 'Jon012Left', 0);
      Frm_Main.Frm_Jon012[ATag].Left := Frm_Main.Frm_JON01N[ATag].Left + iLeft;
      Frm_Main.Frm_Jon012[ATag].Top  := Frm_Main.Frm_JON01N[ATag].Top + (Frm_Main.Frm_JON01N[ATag].Height + 1);
    end;
  end;

  for i := 0 to JON_MAX_CNT - 1 do
  begin
    if i = ATag then gbJON01Click[i] := True
                else gbJON01Click[i] := False;
  end;
end;

function func_JON03SalesDate(ADateTime : String ) : String;
var
	dStandTime, dTime, dDay : TTime;
	sTime, sToDay : string;
begin
	Try
		Result := '';

		sToDay := GetStrToDateTimeGStr(ADateTime, 4);
		sTime  := GetStrToDateTimeGStr(ADateTime, 1);

		dDay := StrToDate(sToDay);
		dTime := StrToTime(sTime);
		dStandTime:= StrToTime('09:00:00');

		if dTime < dStandTime then
		begin
			dDay := dDay -1;
			sToDay := FormatdateTime('yyyy-mm-dd', dDay);
		end;
		Result := sToDay;

	except
		Result := '';
  End;
end;

function fDelString( AValue, AData : String ) : String;
Var i : Integer;
begin
  try
    i := Pos(AValue, AData);
    if i = 1 then
    begin
      Result := Copy(widestring(AData), 1 + Length(AValue), Length(widestring(AData)) - Length(widestring(AValue)));
    end else
    if i > 1 then
    begin
      Result := Copy(widestring(AData), 1, i-1) + Copy(widestring(AData), i + Length(AValue) , Length(widestring(AData)) - i);
    end else
      Result := AData;
  except
    Result := '';
  end;
end;

procedure pInitFastFind;
Var sl_FastFind, sl_FastFindOut : TStringList;
    i : Integer;
begin
  try
    GS_EnvFile.EraseSection('FastFindSortOut');
  	sl_FastFind    := TStringList.Create;
  	sl_FastFindOut := TStringList.Create;
    try
      sl_FastFind.Delimiter     := '|';
			sl_FastFind.DelimitedText := GS_FASTFIND;
      // ini파일에 상태순 저장
      for i := 0 to sl_FastFind.Count - 1 do
        GS_EnvFile.WriteString('FastFindSort', sl_FastFind.Strings[i], IntToStr(i));

      sl_FastFindOut.Delimiter     := '|';
			sl_FastFindOut.DelimitedText := GS_FASTFINDOUT;
      // ini파일에 상태순 저장
      for i := 0 to sl_FastFindOut.Count - 1 do
        GS_EnvFile.WriteString('FastFindSortOut', sl_FastFindOut.Strings[i], IntToStr(i));
    finally
    	sl_FastFind.Free;
    	sl_FastFindOut.Free;
    end;
  except
  end;
end;

procedure pRestart_program;
var
  BatchFile: TextFile;
  BatchFileName: String;
  ProcessInfo: TProcessInformation;
  StartUpInfo: TStartupInfo;
begin
  // 프로그램이 실행된 디렉토리에 임시 Batch 화일 생성
  BatchFileName := ExtractFilePath(Application.ExeName) + 'restart.bat';

  AssignFile(BatchFile, BatchFileName);
  try
    Rewrite(BatchFile);

    Writeln(BatchFile, '@echo off');
    Writeln(BatchFile, '>nul timeout 2');
    Writeln(BatchFile, 'start /D "' + ExtractFilePath(Application.ExeName) + '" ' + ExtractFileName(Application.ExeName));
  finally
    CloseFile(BatchFile);
  end;
end;

function fPosEx( AValue, AChar : String; AIndex:Integer) : String;
Var i, iPos : Integer;
    sTmp : String;
begin
	try
		Result := '';
    iPos := 0;
		sTmp := AValue;
		For i := 1 to Length(sTmp) do
		Begin
      if sTmp[i] = AChar then Inc(iPos);
      if iPos = AIndex then Break;
			Result := Result + sTmp[i];
		End;
	except
		Result := '';
	end;
end;

function fPosExN( AValue, AChar : String; AIndex:Integer) : String;
Var i, iPos : Integer;
    sTmp : String;
begin
	try
		Result := '';
    iPos := 0;
		sTmp := AValue;
		For i := 1 to Length(sTmp) do
		Begin
      if sTmp[i] = AChar then
      begin
        Inc(iPos);
        if iPos = AIndex then Break
                         else Result := '';
      end;
			Result := Result + sTmp[i];
		End;
  	Result := Copy(Result, 2, Length(Result)-1);
	except
		Result := '';
	end;
end;

function isHandPhone( AValus : String ) : Boolean;
Var sHp : String;
begin
	try
		sHp := Copy(AValus, 1, 3);
		Result := (sHp = '010') Or (sHp = '011') Or (sHp = '016') Or (sHp = '017') Or (sHp = '018') Or (sHp = '019')
	except
		Result := False;
	end;
end;
//콜마트 콜링 정보 초기화
procedure gCALLMARTClear;
begin
	gCALLMART.a1 := '';
	gCALLMART.a2 := '';
	gCALLMART.b1 := '';
	gCALLMART.c1 := '';
	gCALLMART.c2 := '';
	gCALLMART.c3 :=	'';		
	gCALLMART.c4 := '';
	gCALLMART.d1 := '';
	gCALLMART.d2 := '';
	gCALLMART.d3 := '';
	gCALLMART.d4 := '';             
	gCALLMART.e1 := '';
	gCALLMART.e2 := '';
	gCALLMART.e3 := '';
	gCALLMART.e4 := '';
	gCALLMART.f1 := '';
	gCALLMART.f2 := '';
	gCALLMART.f3 := '';
	gCALLMART.f4 := '';
	gCALLMART.g1 := '';
	gCALLMART.g2 := '';
	gCALLMART.h1 := '';
	gCALLMART.h2 := '';
	gCALLMART.h3 := '';
end;

function StrToEncrypt(AStr : string) : String;
var LogEncryptData: TIdBytes;
	iEncryptLen, ii: Integer;
	sTmp : string;
begin
	Try
		Result := '';
		ZeroMemory(@LogEncryptData, SizeOf(LogEncryptData));
		SetLength(LogEncryptData, 1024);
		iEncryptLen := BlowFishEncrypt(_CID_KEY, AStr, LogEncryptData);

		// Hex 코드 만들기..
		for ii := 0 to iEncryptLen - 1 do
		begin
			sTmp := sTmp + ByteToHexaStr(LogEncryptData[ii]);
		end;
		Result := sTmp;
	Except

  End;
end;

function CutString( value : AnsiString; len : Integer ) : String;
var
  tmp : AnsiString;
  ch : AnsiChar;
  i, num : Integer;
  chk : 0..1;
begin
  tmp := '';
  chk := 0;

  num := len;
  if Length( value ) > len then num := len                 // 문자열 조합 꼭 필요한 부분
                           else num := Length( value );

  for i := 1 to num do
  begin
   tmp := tmp + value[i];
   ch := value[i];

   if ( ch > #127 ) and ( chk = 0 ) then chk := 1 else
   if ( ch > #127 ) and ( chk = 1 ) then chk := 0;
  end;

  if chk = 1 then tmp := Copy( tmp, 1, Length( tmp ) - 1 );
  Result := tmp;
end;

function ConvertMinutesToHoursAndMinutes(Input: Integer) : String;
Var Hours, Minutes : Integer;
begin
  try
    Hours := Input div 60;
    Minutes := Input mod 60;

    if (Hours = 0) And (Minutes = 0) then Result := '00:00' else
    if (Hours = 0) And (Minutes <> 0) then Result := '00' + ':' + FormatFloat('00', Minutes) else
    if (Hours <> 0) And (Minutes = 0) then Result := FormatFloat('00', Hours) + ':' + '00' else
    if (Hours <> 0) And (Minutes <> 0) then Result := FormatFloat('00', Hours) + ':' + FormatFloat('00', Minutes);
  except
    Result := '00:00';
  end;
end;

function ConvertTimeToMinutes(Input: String) : String;
var
  timeSpan: TTimeSpan;
begin
  try
    timeSpan := TTimeSpan.Parse(Input);
    Result := FloatToStr(timeSpan.TotalMinutes);
  except
    Result := '0';
  end;
end;

function GetFileSize(AFileName: String): Integer;
var
  f: file of Byte;
  size: Longint;
begin
  if FileExists(AFileName) then
  begin
    try
      size := 0;
      AssignFile(f, AFileName);
      reset(f);
      size := FileSize(f);
      CloseFile(f);
    except
      on e:Exception do
      begin
        size := -1;
      end;
    end;

  end;
  result := size;
end;

// 로그인 정보 60일 이후 자료 삭제
procedure ploginInfo_Del;
Var lsLoginInfo : TStringList;
    sLoginInfoFilePath, sTmp, sMon : String;
    i, iPos : Integer;
begin
  try
    sLoginInfoFilePath := LOGDATADIRECTORY + 'lgv_' + GT_USERIF.ID + '.txt';
    if FileExists(sLoginInfoFilePath) then
    begin
      lsLoginInfo := TStringList.Create;
      try
        lsLoginInfo.LoadFromFile(sLoginInfoFilePath);
        for i := lsLoginInfo.Count - 1 downto 0 do
        begin
          sTmp := lsLoginInfo.Strings[i];
          iPos := Pos(')', sTmp);
          sTmp := Copy(sTmp, 2, iPos-2);

          if Length(sTmp) < 15 then
            lsLoginInfo.Delete(i)
          else
          begin
            sTmp := Copy(sTmp, 1, 10);
            sMon := FormatDateTime('yyyy-mm-dd', now - 60);
            if sTmp < sMon then
              lsLoginInfo.Delete(i)
          end;
        end;
      finally
        lsLoginInfo.SaveToFile(sLoginInfoFilePath);
        FreeAndNil(lsLoginInfo);
        plogfile_Del;
      end;
    end;
  except
  end;
end;

procedure plogfile_Del;

function IsValidDate(S:string): Boolean;
var DT :TDatetime;
begin
  if TryStrToDate(S,DT) then Result := True
                        else Result := False;
end;

Var slFileList : TStringList;
    i : Integer;
    sTmp : String;
begin
    try
      slFileList := TStringList.Create;

			slFileList.Clear;
			ListFileDir(LOGDATADIRECTORY, '20', slFileList);
			for i := 0 to slFileList.Count - 1 do
			begin
				if slFileList[i] < FormatDateTime('yyyy-mm-dd'+'.log', Now - 4) then
				begin
					if FileExists(LOGDATADIRECTORY + slFileList[i] ) then DeleteFile(LOGDATADIRECTORY + slFileList[i]);
				end;
			end;

			slFileList.Clear;
			ListFileDir(LOGDATADIRECTORY, 'IPCC_', slFileList);   //IPCC 상담원
			for i := 0 to slFileList.Count - 1 do
			begin
				if slFileList[i] < 'IPCC_' + FormatDateTime('yyyy-mm-dd'+'.log', Now - 4) then
				begin
					if FileExists(LOGDATADIRECTORY + slFileList[i] ) then DeleteFile(LOGDATADIRECTORY + slFileList[i]);
				end;
			end;

			slFileList.Clear;
			ListFileDir(LOGDATADIRECTORY, 'IPCCS_', slFileList);   //IPCC 서버전문
			for i := 0 to slFileList.Count - 1 do
			begin
				if slFileList[i] < 'IPCCS_' + FormatDateTime('yyyy-mm-dd'+'.log', Now - 4) then
				begin
					if FileExists(LOGDATADIRECTORY + slFileList[i] ) then DeleteFile(LOGDATADIRECTORY + slFileList[i]);
				end;
			end;

			slFileList.Clear;
			ListFileDir(LOGDATADIRECTORY, 'HB_', slFileList);   // CID수신 로그 파일
			for i := 0 to slFileList.Count - 1 do
			begin
				if slFileList[i] < 'HB_' + FormatDateTime('yyyy-mm-dd'+'.log', Now - 4) then
				begin
					if FileExists(LOGDATADIRECTORY + slFileList[i] ) then DeleteFile(LOGDATADIRECTORY + slFileList[i]);
				end;
			end;

			slFileList.Clear;
			ListFileDir(EXECDIRECTORY, 'CMNagtenv_', slFileList);   // 본사설정 로그 파일(3개월보관)
      // CMNagtenv_210716131347
			for i := 0 to slFileList.Count - 1 do
			begin
        sTmp := StringReplace(slFileList[i], '.ini', '', [rfReplaceAll]);
        sTmp := GetStrToDateTimeGStr('20' + RightStr(sTmp, 12), 4);
        if IsValidDate(sTmp) then
        begin
          if sTmp < FormatDateTime('yyyy-mm-dd', Now - 90) then
          begin
            if FileExists(EXECDIRECTORY + slFileList[i] ) then DeleteFile(EXECDIRECTORY + slFileList[i]);
          end;
        end;
			end;
			FreeAndNil(slFileList);
		except

    end;
end;

function fLogDataPathFile : String;
Var
  slFileList : TStringList;
begin
  try
    Result := NEWLOGDATAPATHFILE;
    if FileExists(NEWLOGDATAPATHFILE) then
    begin
      if (_MAX_FILE_SIZE < GetFileSize(NEWLOGDATAPATHFILE)) then  // 파일을 5MByte단위로 자르기
      begin
        NEWLOGDATAPATHFILE := LOGDATADIRECTORY + FormatDateTime('yyyy-mm-dd_hhmm', Now) + '.log';
        Result := NEWLOGDATAPATHFILE;
      end;
    end;
  except
  end;
end;

function fgetCheckBoxYN( ACheckBox : TcxCheckBox ) : String;
begin
  if ACheckBox.Checked then Result := 'y'
                       else Result := 'n';
end;

procedure pDownConfigCopy( AFileName, BFileNmae : String );
Var ln_AEnv, ln_BEnv : TIniFile;
    iGubun : Integer;
    sCidAuto, sSvrList, sSvrIp, sID, sPW, sEXT, sIP, sOP, sLv, sComID, sGrpId, sAdminID, sAdminPW : String;
    bCLEANSKY : Boolean;
begin
	ln_AEnv := TIniFile.Create(AFileName);
  ln_BEnv := TIniFile.Create(BFileNmae);
  try
    // 원본 Read --------------------------------------------------------------------------------------------------
    iGubun := ln_AEnv.ReadInteger('CID_COMM', 'GUBUN', 0);
		sCidAuto := ln_AEnv.ReadString('CID_COMM', 'CID_AUTO', 'N');
    GT_CIDINFO.Auto_Search   := ln_AEnv.ReadString('CID_COMM', 'CIDSERVERIPFIND', '');  // Y:자동, N:수동
    GT_CIDINFO.Use_Sel      := ln_AEnv.ReadString('CID_COMM', 'CID_SELSVR', '1');
 		sSvrList := ln_AEnv.ReadString('CID_COMM', 'CID_SELSVRLIST', '');
    sSvrIp   := ln_AEnv.ReadString('CID_COMM', 'CID_SELSVRIP', '');
  	bCLEANSKY := ln_AEnv.ReadBool('CID_COMM', 'CLEANSKY' , False); // 맑은하늘 사용여부

    if GT_CIDINFO.Use_Sel = '1' then GT_CIDINFO.SERVER_IP    := ln_AEnv.ReadString('CID_COMM', 'CID_IP', '') else
    if GT_CIDINFO.Use_Sel = '2' then GT_CIDINFO.SERVER_IP    := ln_AEnv.ReadString('CID_COMM', 'CID_IP2', '');

		GT_CIDINFO.SERVER_IP1   := ln_AEnv.ReadString('CID_COMM', 'CID_IP', '');
    GT_CIDINFO.SERVER_IP2   := ln_AEnv.ReadString('CID_COMM', 'CID_IP2', '');
    GT_CIDINFO.NaeSun       := ln_AEnv.ReadString('CID_COMM', 'NAESUN', '');
    GT_CIDINFO.Use_yn       := ln_AEnv.ReadString('CID_COMM', 'CID_AUTO', 'N');

    if GT_CIDINFO.Use_yn = 'N' then
    begin
      GT_CIDINFO.Use_yn     := ln_AEnv.ReadString('CID_COMM', 'CID_SELSVRUSE', 'N');
      GS_SERVERCIDUSE       := ln_AEnv.ReadBool('CID_COMM', 'CID_SELSVRUSE', False);
    end;

    GT_CIDINFO.Win10CIDXE_YN := ln_AEnv.ReadBool ('CID_COMM', 'WIN10_CIDXE_USE', FALSE);

    GT_CIDINFO.ACDSERVERIP  := ln_AEnv.ReadString('CID_COMM', 'ACDSERVERIP', '127.0.0.1');
    GT_CIDINFO.ACDSERVERUSE := ln_AEnv.ReadBool('CID_COMM', 'ACDSERVERUSE', False);

    if ln_AEnv.ReadString('CID_COMM', 'CID_SELSVRUSE', 'N') = 'Y' then
      GT_CIDINFO.SERVER_IP    := ln_AEnv.ReadString('CID_COMM', 'CID_SELSVRIP', '');

    GT_CIDINFO.Auto_Search   := ln_AEnv.ReadString('CID_COMM', 'CIDSERVERIPFIND', '');  // Y:자동, N:수동
		GS_LOGIN_CID_AUTOFIND_YN := ln_AEnv.ReadBool('CID_COMM', 'LOGIN_CID_AUTO', True);   // 2011.08.01  True(Default), False

		gsInternalNumber := ln_AEnv.ReadString('CID_COMM', 'NAESUN', '');

    GT_CIDINFO.ACDSERVERIP  := ln_AEnv.ReadString('CID_COMM', 'ACDSERVERIP', '127.0.0.1');
    GT_CIDINFO.ACDSERVERUSE  := ln_AEnv.ReadBool('CID_COMM', 'ACDSERVERUSE', False);
  	sID  := ln_AEnv.ReadString('CID_COMM', 'PBX_ID',  '');
	  sPW  := ln_AEnv.ReadString('CID_COMM', 'PBX_PW',  '');
  	sEXT := ln_AEnv.ReadString('CID_COMM', 'PBX_EXT',  '');
  	sIP  := ln_AEnv.ReadString('CID_COMM', 'PBX_IP',  '');
		sLv  := ln_AEnv.ReadString('CID_COMM', 'PBX_LV',  '0');
	  sOP  :=	ln_AEnv.ReadString('CID_COMM', 'PBX_OP', '');
		sComID := ln_AEnv.ReadString('CID_COMM', 'PBX_ComID', '');
   	sGrpId := ln_AEnv.ReadString('CID_COMM', 'PBX_GroupID' , '');
		sAdminID := ln_AEnv.ReadString('CID_COMM', 'Admin_ID',  '');
		sAdminPW := ln_AEnv.ReadString('CID_COMM', 'Admin_PW',  '');

		GT_POSS_TEL := StrToIntDef(ln_AEnv.ReadString('POSS_TEL', 'GT_POSS_TEL', '0'), 0);
		GT_POSS_IP := ln_AEnv.ReadString('POSS_IP', 'GT_POSS_IP', '');
		GT_POSS_KEYNUM := StringReplace(ln_AEnv.ReadString('POSS_TEL', 'GT_POSS_KEYNUM', ''), '-', '', [rfReplaceAll]);

    if GT_POSS_TEL = 0 then
    begin
      GT_POSS_IP := '';
			GT_POSS_KEYNUM := '';
		end;

		GT_RECEIVER_KIND := ln_AEnv.ReadString('POSS_TEL', 'GT_RECEIVER_KIND', '1');


    // 원본 Copy --------------------------------------------------------------------------------------------------
    ln_BEnv.WriteInteger('CID_COMM', 'GUBUN', iGubun);
		ln_BEnv.WriteString('CID_COMM', 'CID_AUTO', sCidAuto);
    ln_BEnv.WriteString('CID_COMM', 'CIDSERVERIPFIND', GT_CIDINFO.Auto_Search);  // Y:자동, N:수동
 		ln_BEnv.WriteString('CID_COMM', 'CID_SELSVRLIST', sSvrList);
    ln_BEnv.WriteString('CID_COMM', 'CID_SELSVRIP', sSvrIp);
  	ln_BEnv.ReadBool('CID_COMM', 'CLEANSKY' , bCLEANSKY); // 맑은하늘 사용여부

    ln_BEnv.WriteString('CID_COMM', 'CID_SELSVR', GT_CIDINFO.Use_Sel);
    if GT_CIDINFO.Use_Sel = '1' then ln_BEnv.WriteString('CID_COMM', 'CID_IP' , GT_CIDINFO.SERVER_IP)  else
    if GT_CIDINFO.Use_Sel = '2' then ln_BEnv.WriteString('CID_COMM', 'CID_IP2', GT_CIDINFO.SERVER_IP);

		ln_BEnv.WriteString('CID_COMM', 'CID_IP', GT_CIDINFO.SERVER_IP1);
    ln_BEnv.WriteString('CID_COMM', 'CID_IP2', GT_CIDINFO.SERVER_IP2);
    ln_BEnv.WriteString('CID_COMM', 'NAESUN', GT_CIDINFO.NaeSun);
    ln_BEnv.WriteString('CID_COMM', 'CID_AUTO', GT_CIDINFO.Use_yn);

    if GT_CIDINFO.Use_yn = 'N' then
    begin
      ln_BEnv.WriteString('CID_COMM', 'CID_SELSVRUSE', GT_CIDINFO.Use_yn);
      ln_BEnv.WriteBool('CID_COMM', 'CID_SELSVRUSE', GS_SERVERCIDUSE);
    end;

    ln_BEnv.WriteBool ('CID_COMM', 'WIN10_CIDXE_USE', GT_CIDINFO.Win10CIDXE_YN);

    ln_BEnv.WriteString('CID_COMM', 'ACDSERVERIP', GT_CIDINFO.ACDSERVERIP);
    ln_BEnv.WriteBool('CID_COMM', 'ACDSERVERUSE', GT_CIDINFO.ACDSERVERUSE);

    if ln_BEnv.ReadString('CID_COMM', 'CID_SELSVRUSE', 'N') = 'Y' then
      ln_BEnv.WriteString('CID_COMM', 'CID_SELSVRIP', GT_CIDINFO.SERVER_IP);

    ln_BEnv.WriteString('CID_COMM', 'CIDSERVERIPFIND', GT_CIDINFO.Auto_Search);  // Y:자동, N:수동
		ln_BEnv.WriteBool('CID_COMM', 'LOGIN_CID_AUTO', GS_LOGIN_CID_AUTOFIND_YN);   // 2011.08.01  True(Default), False

		ln_BEnv.WriteString('CID_COMM', 'NAESUN', gsInternalNumber);

    ln_BEnv.WriteString('CID_COMM', 'ACDSERVERIP', GT_CIDINFO.ACDSERVERIP);
    ln_BEnv.WriteBool('CID_COMM', 'ACDSERVERUSE', GT_CIDINFO.ACDSERVERUSE);
  	ln_BEnv.WriteString('CID_COMM', 'PBX_ID',  sID);
	  ln_BEnv.WriteString('CID_COMM', 'PBX_PW',  sPW);
  	ln_BEnv.WriteString('CID_COMM', 'PBX_EXT',  sEXT);
  	ln_BEnv.WriteString('CID_COMM', 'PBX_IP',  sIP);
		ln_BEnv.WriteString('CID_COMM', 'PBX_LV',  sLv);
	  ln_BEnv.WriteString('CID_COMM', 'PBX_OP', sOP);
		ln_BEnv.WriteString('CID_COMM', 'PBX_ComID', sComID);
   	ln_BEnv.WriteString('CID_COMM', 'PBX_GroupID' , sGrpId);
		ln_BEnv.WriteString('CID_COMM', 'Admin_ID',  sAdminID);
		ln_BEnv.WriteString('CID_COMM', 'Admin_PW',  sAdminPW);

		ln_BEnv.WriteString('POSS_TEL', 'GT_POSS_TEL', IntToStr(GT_POSS_TEL));
		ln_BEnv.WriteString('POSS_TEL', 'GT_RECEIVER_KIND', GT_RECEIVER_KIND);
		ln_BEnv.WriteString('POSS_TEL', 'GT_POSS_KEYNUM', GT_POSS_KEYNUM);

		ln_BEnv.WriteString('POSS_IP', 'GT_POSS_IP', GT_POSS_IP);
  finally
    FreeAndNil(ln_AEnv);
    FreeAndNil(ln_BEnv);
  end;
end;

function fBunjiNameCheck( AName : String ) : Boolean;
Var sTmp : String;
    i, iNum, idx : Integer;
begin
  Result := False;

  if System.StrUtils.RightStr(AName, 1) = '길' then
  begin
    sTmp := StringReplace(AName, '길','', [rfReplaceAll]);
    if ( StrToIntDef(RightStr(Trim(sTmp), 1), -1) In [0,1,2,3,4,5,6,7,8,9] ) then
      Result := True;
  end;
  if Result then Exit;

  if System.StrUtils.RightStr(AName, 2) = '번길' then
  begin
    sTmp := StringReplace(AName, '번길','', [rfReplaceAll]);
    if ( StrToIntDef(RightStr(Trim(sTmp), 1), -1) In [0,1,2,3,4,5,6,7,8,9] ) then
      Result := True;
  end;
  if Result then Exit;

  if ( System.StrUtils.RightStr(AName, 1) = '로') Or
     ( System.StrUtils.RightStr(AName, 1) = '길') then
  begin
    idx := HashRoad.IndexOf(AName);
    if idx >= 0 then Result := True;
  end;
  if Result then Exit;

  if (Copy(AName, Length(AName)-1, 3) = '1번지') then      //XX1번지 상호때문에 추가 2016.10.19 KHS
  begin
    sTmp := StringReplace(AName, '1번지','', [rfReplaceAll]);
    if ( StrToIntDef(RightStr(Trim(sTmp), 1), -1) In [0,1,2,3,4,5,6,7,8,9] ) Or
         ( RightStr(Trim(sTmp), 1) = '-' ) then
      Result := True;
  end	else
  if (Copy(AName, Length(AName)-1, 2) = '번지') then
  begin
    sTmp := StringReplace(AName, '번지','', [rfReplaceAll]);
    if ( StrToIntDef(RightStr(Trim(sTmp), 1), -1) In [0,1,2,3,4,5,6,7,8,9] ) Or
         ( RightStr(Trim(sTmp), 1) = '-' ) then
      Result := True;
  end else
  begin
    iNum := 0;
    for i := Length(AName) downto 1 do
    begin
      if ( StrToIntDef(AName[i], -1) In [0,1,2,3,4,5,6,7,8,9] ) Or
         ( AName[i] = '-' ) then
      begin
        Inc(iNum);
      end else
        Break;
    end;

    if iNum > 0 then
    begin
      sTmp := Trim(Copy(AName, 1, Length(AName) - iNum ));
      if ( System.StrUtils.RightStr(sTmp, 1) = '길' ) Or
				 ( System.StrUtils.RightStr(sTmp, 1) = '로' ) then
			 Result := True;
		end;
	end;
end;

function MinutesToHourEx(Minutes : Integer): string;
Var H, M : Integer;
begin
	Result := '';
	try
		H := Minutes div 60;
		M := Minutes mod 60;

		if H = 0 then Result := Format('%d분', [M]) else
		if M = 0 then Result := Format('%d시간', [H])
						 else Result := Format('%d시간%d분', [H, M]);
	except
	end;
end;

procedure SetOfficeVersion;
Var xlsVer : String;
begin
  // 엑셀버전 매번체크 후 설정 저장으로 변경 2021.09.14
{
    [버전에 따른 Offce제품]
    * 11(Office11) : Office 2003
    * 12(Office12) : Office 2007
    * 14(Office14) : Office 2010
    * 15(Office15) : Office 2013
    * 16(Office16) : Office 2016
}
//    case GS_EnvFile.ReadInteger('GER', 'XlsVer', 0) of
//    2003, 2007:
//      GS_XLS_VERSION := TXlsVersion(GS_EnvFile.ReadInteger('GER', 'XlsVer', 0));
//    else
//      GS_XLS_VERSION := xvUnknown;
//    end;
//
//    if GS_XLS_VERSION = xvUnknown then
//    begin

    try
      xlsVer := GetRegistry(HKEY_CLASSES_ROOT, 'Excel.Application\CurVer', '');
      xlsVer := ReplaceAll(xlsVer, 'Excel.Application.', '');
			if StrToIntDef(xlsVer, 0) > XLS_2003_NUM then
				GS_XLS_VERSION := xv2007Over
			else
				GS_XLS_VERSION := xv2003Under;

//  		GS_XLS_VERSION := xv2003Under;
			GS_EnvFile.WriteInteger('GER', 'XlsVer', Integer(GS_XLS_VERSION));
    except
      GS_XLS_VERSION := xvUnknown;
    end;
end;

function func_SetCallListNeasun(ACallListNeasun : String) : Boolean;
var sTmp : string;
  i, iTmp, iPos, iFrom, iTo, iUpCnt : integer;
  slTmp, slTmp2 : TStringList;
begin
  Result := False;
  Try
    slTmp  := TStringList.Create;
    slTmp2 := TStringList.Create;
    Try
      gslCallListNeasun.Clear;
      slTmp.Clear;
      slTmp.Delimiter     := ',';
      slTmp.DelimitedText := ACallListNeasun;

      for i := 0 to slTmp.Count-1 do
      begin
        if slTmp[i] = '' then continue;
        
        iPos := Pos('~', slTmp[i]);
        if iPos > 0 then //연속내선'~'이 있는경우처리
        begin
          slTmp2.Clear;
          slTmp2.Delimiter     := '~';
          slTmp2.DelimitedText := slTmp[i];

          iFrom := StrToIntDef(slTmp2[0], 0);
          iTo   := StrToIntDef(slTmp2[1], 0);
          if (iFrom > 0) and (iTo > 0) then
          begin
            iUpCnt := iFrom;
            While iUpCnt <= iTo do
            begin
              gslCallListNeasun.Add(IntToStr(iUpCnt));
              inc(iUpCnt)
            end;
          end;
        end else
        begin
          gslCallListNeasun.Add(slTmp[i]);
        end;
      end;
      Result := True;
    Finally
      slTmp.free; slTmp2.Free;
    End;
  except
    Result := False;
  End;
end;

function func_GetCallListNeasun(ANeasun : String) : Boolean;
var iTmp : integer;
begin
  Result := false;
  if gslCallListNeasun.Count = 0 then Result := True else
  begin
    iTmp := gslCallListNeasun.IndexOf(ANeasun);
    if iTmp > -1 then Result := True;
  end;
  
end;
//GT_Kakao_CallByInsureFee : Boolean;   //건당보험료 사용본사
//수도권 A5321 / [원주]365 정회귀 팀장 요청
function IsKakao_CallByInsureFee_Head(AHdNo: string): Boolean;    //건당보험료 사용본사
begin
	Result := ((GS_PRJ_AREA = 'S') and ((AHdNo = 'A1531') or (AHdNo = 'A759' ) or (AHdNo = 'A5175') or
                                      (AHdNo = 'A100' ) or (AHdNo = 'A103' ) or (AHdNo = 'A5471') or
                                      (AHdNo = 'A785' ) or (AHdNo = 'A5321')
                                                       ))
							or
						((GS_PRJ_AREA = 'O') and ((AHdNo = 'A2289') or (AHdNo = 'A2225')));
end;

//GT_Kakao_KMAiRate : Boolean;    //카카오요금 사용본사
function IsKakao_KMAiRate_Head(AHdNo: string): Boolean;    //카카오요금 사용본사
begin
	Result := ((GS_PRJ_AREA = 'S') and ((AHdNo = 'A1531') or (AHdNo = 'A5522') or (AHdNo = 'A5523') or
																			(AHdNo = 'A5524') or (AHdNo = 'A5525') or (AHdNo = 'A5526') or
//////////////20211221 정지희요청
                                      (AHdNo = 'A759' ) or (AHdNo = 'A5547') or (AHdNo = 'A2051') or  
                                      (AHdNo = 'A1641') or (AHdNo = 'A121' ) or (AHdNo = 'A690' ) or  
                                      (AHdNo = 'A5471') or (AHdNo = 'A5553') or (AHdNo = 'A5175') or  
                                      (AHdNo = 'A5521') or (AHdNo = 'A5364') or (AHdNo = 'A2200') or  
//////////////20211222 신성현요청
                                      (AHdNo = 'A1948') or 
																			(AHdNo = 'A100' )))
						or
						((GS_PRJ_AREA = 'O') and (AHdNo = 'A2289'));
end;

//	GT_Kakao_Worker    : Boolean;          //카카오기사 정보조회 사용본사
function IsKakao_Worker_Head(AHdNo: string): Boolean;    //카카오기사 정보조회 사용본사
begin
	Result := ((GS_PRJ_AREA = 'S') and ((AHdNo = 'A1531') or (AHdNo = 'A5522') or (AHdNo = 'A5523') or
																			(AHdNo = 'A5524') or (AHdNo = 'A5525') or (AHdNo = 'A5526') or
																			(AHdNo = 'A100' )))
							or
						((GS_PRJ_AREA = 'O') and (AHdNo = 'A2289'));
end;

//	GT_Kakao_AgreeAllocat : Boolean;       //동의배정 사용본사
function IsKakao_AgreeAllocat_Head(AHdNo: string): Boolean;    //동의배정 사용본사
begin
	Result := ((GS_PRJ_AREA = 'S') and ((AHdNo = 'A1531') or (AHdNo = 'A5522') or (AHdNo = 'A5523') or
																			(AHdNo = 'A5524') or (AHdNo = 'A5525') or (AHdNo = 'A5526') or
																			(AHdNo = 'A100' )))
							or
						((GS_PRJ_AREA = 'O') and (AHdNo = 'A2289'));
end;

// AI 녹취파일 URL 조회
function fgetAiRecordURL(sDate, sPPN : String) : String;
Const
 	sNAS_URL : string = 'http://211.56.137.212:9425/ss15_nas/';    //AI녹취서버 URL    ss15_nas : 영업일 이후 파일
 	sREC_URL : string = 'http://211.56.137.212:9425/ss15_rec/';    //AI녹취서버 URL    ss15_rec : 영업일 파일
Var sYMD, sFileNm, sUrl : String;
begin
  try
    sYMD := Copy(RemoveDatetimeSeparator(sDate), 1, 8);
  	sFileNm := Format('%s\%s.wav', [sYMD, sPPN]);
		if Dm.gsTestPORTYN = 'Y' then
    begin
			sUrl := 'http://123.142.233.115:9425/ss15_rec/' + sFileNm;
    end else
    begin
      if RemoveDatetimeSeparator(sDate) >= StartDateTime('yyyymmddhhmmss') then sUrl := sREC_URL + sFileNm
                                                                           else sUrl := sNAS_URL + sFileNm;
    end;
    Result := sUrl;
  except
    Result := '';
  end;
end;

end.


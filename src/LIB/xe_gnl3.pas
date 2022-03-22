unit xe_gnl3;

interface

uses
  Windows, SysUtils, Classes, Vcl.Graphics, xe_structure, SmartSRXLib_TLB, xe_gnl;

Type
  // CID 정보저장
  TCID_INFO = packed record
    SERVER_IP: string[15];
    NaeSun: string[5];
    Use_yn: string[1];
    Auto_Search: string[1];
    Use_Sel: string[1];
    SERVER_IP1: string[15];
    SERVER_IP2: string[15];
    ACDSERVERIP: string[15];
    ACDSERVERUSE : Boolean;
    LGUSERVERID: string[15];
    LGUSERVERPW: string[15];
		Win10CIDXE_YN: Boolean;
  end;

  TA01_HIS_POPUP = record
    Slip: string[8];
    Status: string[1];
		WkSabun: string;//[7];
    WkName: string[20];
    WkTel: string[20];
    Idx: Integer;
  end;

  THint_View = record
    sValue: string;
    ARow: Integer;
    ACol: Integer;
  end;

  TRealKmRecord = record
    Tag : Integer;
    thId : Integer;
    CaActive : Boolean;
    UseYn : Boolean;
    StartAreaName : String;
    StartXVal : String;
    StartYVal : String;
    EndAreaName : String;
    EndXVal : String;
    EndYVal : String;
		ViaXVal : array [0..4] Of String;  // 추가된 경유지 X좌표
		ViaYVal : array [0..4] Of string;  // 추가된 경유지 Y좌표
    info : IXRouteInfo3;
  end;

Var
///////////////////////////////////////지사별 실시간 콜통계문자발송 설정.2012.08.27.KHS//////////////////////////////////////
  GS_ONOFF_CHK       : Boolean;
  GS_MMS_STR         : String;

  GS_ALL_CHK         : Boolean;
  GS_ALLBR_CHK       : Boolean;
  GS_BRNAME_CHK      : Boolean;
  GS_BRMTEL_CHK      : Boolean;
  GS_TOTCNT_CHK      : Boolean;
  GS_ORDER_CHK       : Boolean;
  GS_STANDBY_CHK     : Boolean;
  GS_RUN_CHK         : Boolean;
  GS_FINISHED_CHK    : Boolean;
  GS_FINISHEDper_CHK : Boolean;
  GS_CANCEL_CHK      : Boolean;
  GS_CANCELPer_CHK   : Boolean;
  GS_INQUIRE_CHK     : Boolean;
  GS_BOOKING_CHK     : Boolean;
  GS_DATETIME_CHK    : Boolean;

  GS_FIR_CHK         : Boolean;
  GS_FIR_FTIME       : string;
  GS_FIR_ETIME       : string;
  GS_FIR_DTIME       : string;
  GS_SEC_CHK         : Boolean;
  GS_SEC_FTIME       : string;
  GS_SEC_ETIME       : string;
  GS_SEC_DTIME       : string;
  GS_THI_CHK         : Boolean;
  GS_THI_FTIME       : string;
  GS_THI_ETIME       : string;
  GS_THI_DTIME       : string;
  GS_FOU_CHK         : Boolean;
  GS_FOU_FTIME       : string;
  GS_FOU_ETIME       : string;
  GS_FOU_DTIME       : string;
  GS_FIF_CHK         : Boolean;
  GS_FIF_FTIME       : string;
  GS_FIF_ETIME       : string;
  GS_FIF_DTIME       : string;

  GS_TOTAL_CHK       : Boolean;
  GS_TOTAL_CNT       : string;
	GS_ORDERT_CHK      : Boolean;
  GS_ORDERT_CNT      : string;
  GS_CANCELT_CHK     : Boolean;
  GS_CANCELT_PER     : string;

  GS_HEAD_NO         : string;
  GS_HEAD_NAME       : string;
  GS_BRNO_LIST       : string;
  GS_BRNM_LIST       : string;
  GS_BRTEL_LIST      : string;
  GS_RECEIVER_TEL    : string;
  GS_SEND_TEL        : string;

  Area_Charge_List: TStringList;


  ShareMsnYN: string;  //메신저 사용유무
  Area_Charge_YN: string; //지역 수수료 사용유무
  Area_ChargeGrp_No: string; //지역 수수료그룹 번호
  Area_Charge_Version: string; //지역 수수료 버전
  Area_Edit_Charge_YN: string; //수수료 편집기능 사용여부

  gCidAutoUseYN : string; //CID 자동 찾기 사용 유무   20121220 LYB

	ORDER_COLOR_Version: string; // 지사별 오더 컬러 버전

  GT_CIDINFO: TCID_INFO;

  A01_HIS_POPUP: TA01_HIS_POPUP;

  HintView, OldHintView: THint_View;
  HintView012, OldHintView012 : THint_View;
  GT_MOUSE_HINT: Integer = 1; //힌트보기 방법( 0 : 마우스 오버, 1 : 클릭)
  GT_HINT_SHOW : Boolean;

  // 대표번호에 설정된 기본요금 접수시 강제 반영여부[True:강제반영 , False:미반영]
  gsMyRateRemarkMaintain: string; // rbRateRemarkMaintain
	GS_UPMODE_START_CHANGE : Boolean;  // 2012.07.19 수정모드 시 출발지 변경  khs
	GS_UPMODE1_START_CHANGE : Boolean;  // 2015.03.16 수정모드 시 도착지 변경  lyb
	GS_UPMODE2_START_CHANGE : Boolean;  // 2015.03.16 수정모드 시 요금 변경  lyb
	GS_UPMODE3_START_CHANGE : Boolean;  // 2020.06.10 수정모드 시 적요1 변경  lyb

  GI_JON01_LastFromIdx: Integer; // 마지막 로드된 접수창의 index 번호 저장.
  GI_JON01_LastModifyIdx : Integer;  // 마지막 로드된 수정창의 index 번호 저장. lyb
  GI_JON03_LastFromIdx: Integer;
  GI_WORA1_LastFromIdx: Integer;

  GT_SUM_DEFAULT: Integer = 0;

  scb_HdNo : TStringList;   // 패밀리 권한으로 인한 본사 코드 저장  LYB  20120629
  scb_HdNm : TStringList;   // 패밀리 권한으로 인한 본사명 저장  LYB  20120629
  scb_HdMainBr : TStringList;   // 패밀리 권한으로 인한 본사별 메인 지사 저장 LYB 20120630

  scb_FamilyBrCode : TStringList; //  본사코드 패밀리 권한으로 인한 추가 LYB 20120630
  scb_FamilyBrName : TStringList; //  본사코드 패밀리 권한으로 인한 추가 LYB 20120630
  scb_FamilyBranch : TStringList;
  scb_FamilyWkBranchName: TStringList; // 기사있는 지사리스트
	scb_FamilyWkBranchCode: TStringList; // 기사있는 지사코드리스트
  scb_FamilyTaksong: TStringList; // 기사있는 지사코드리스트
	scb_FamilyShuttle4: TStringList; // 셔틀기사등록권한 지사 20190216 KHS

	slMessenger: TStringList;

  SmartSR : TSmartSRXCtrl;
  RouteMan : IXRouteMan;

  // JON_MAX_CNT = 10개 만큼 만들어 줘야 함
  RealKmPtr_th1 : array[0..JON_MAX_CNT-1] of TRealKmRecord;
  RealKmPtr_th2 : array[0..JON_MAX_CNT-1] of TRealKmRecord;
  RealKmPtr_th3 : array[0..JON_MAX_CNT-1] of TRealKmRecord;
  RealKmPtr_th4 : array[0..JON_MAX_CNT-1] of TRealKmRecord;

implementation

end.

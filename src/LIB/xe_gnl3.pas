unit xe_gnl3;

interface

uses
  Windows, SysUtils, Classes, Vcl.Graphics, xe_structure, SmartSRXLib_TLB, xe_gnl;

Type
  // CID ��������
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
		ViaXVal : array [0..4] Of String;  // �߰��� ������ X��ǥ
		ViaYVal : array [0..4] Of string;  // �߰��� ������ Y��ǥ
    info : IXRouteInfo3;
  end;

Var
///////////////////////////////////////���纰 �ǽð� ����蹮�ڹ߼� ����.2012.08.27.KHS//////////////////////////////////////
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


  ShareMsnYN: string;  //�޽��� �������
  Area_Charge_YN: string; //���� ������ �������
  Area_ChargeGrp_No: string; //���� ������׷� ��ȣ
  Area_Charge_Version: string; //���� ������ ����
  Area_Edit_Charge_YN: string; //������ ������� ��뿩��

  gCidAutoUseYN : string; //CID �ڵ� ã�� ��� ����   20121220 LYB

	ORDER_COLOR_Version: string; // ���纰 ���� �÷� ����

  GT_CIDINFO: TCID_INFO;

  A01_HIS_POPUP: TA01_HIS_POPUP;

  HintView, OldHintView: THint_View;
  HintView012, OldHintView012 : THint_View;
  GT_MOUSE_HINT: Integer = 1; //��Ʈ���� ���( 0 : ���콺 ����, 1 : Ŭ��)
  GT_HINT_SHOW : Boolean;

  // ��ǥ��ȣ�� ������ �⺻��� ������ ���� �ݿ�����[True:�����ݿ� , False:�̹ݿ�]
  gsMyRateRemarkMaintain: string; // rbRateRemarkMaintain
	GS_UPMODE_START_CHANGE : Boolean;  // 2012.07.19 ������� �� ����� ����  khs
	GS_UPMODE1_START_CHANGE : Boolean;  // 2015.03.16 ������� �� ������ ����  lyb
	GS_UPMODE2_START_CHANGE : Boolean;  // 2015.03.16 ������� �� ��� ����  lyb
	GS_UPMODE3_START_CHANGE : Boolean;  // 2020.06.10 ������� �� ����1 ����  lyb

  GI_JON01_LastFromIdx: Integer; // ������ �ε�� ����â�� index ��ȣ ����.
  GI_JON01_LastModifyIdx : Integer;  // ������ �ε�� ����â�� index ��ȣ ����. lyb
  GI_JON03_LastFromIdx: Integer;
  GI_WORA1_LastFromIdx: Integer;

  GT_SUM_DEFAULT: Integer = 0;

  scb_HdNo : TStringList;   // �йи� �������� ���� ���� �ڵ� ����  LYB  20120629
  scb_HdNm : TStringList;   // �йи� �������� ���� ����� ����  LYB  20120629
  scb_HdMainBr : TStringList;   // �йи� �������� ���� ���纰 ���� ���� ���� LYB 20120630

  scb_FamilyBrCode : TStringList; //  �����ڵ� �йи� �������� ���� �߰� LYB 20120630
  scb_FamilyBrName : TStringList; //  �����ڵ� �йи� �������� ���� �߰� LYB 20120630
  scb_FamilyBranch : TStringList;
  scb_FamilyWkBranchName: TStringList; // ����ִ� ���縮��Ʈ
	scb_FamilyWkBranchCode: TStringList; // ����ִ� �����ڵ帮��Ʈ
  scb_FamilyTaksong: TStringList; // ����ִ� �����ڵ帮��Ʈ
	scb_FamilyShuttle4: TStringList; // ��Ʋ����ϱ��� ���� 20190216 KHS

	slMessenger: TStringList;

  SmartSR : TSmartSRXCtrl;
  RouteMan : IXRouteMan;

  // JON_MAX_CNT = 10�� ��ŭ ����� ��� ��
  RealKmPtr_th1 : array[0..JON_MAX_CNT-1] of TRealKmRecord;
  RealKmPtr_th2 : array[0..JON_MAX_CNT-1] of TRealKmRecord;
  RealKmPtr_th3 : array[0..JON_MAX_CNT-1] of TRealKmRecord;
  RealKmPtr_th4 : array[0..JON_MAX_CNT-1] of TRealKmRecord;

implementation

end.

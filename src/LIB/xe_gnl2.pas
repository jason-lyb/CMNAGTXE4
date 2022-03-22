unit xe_gnl2;

interface

uses
	Windows, SysUtils, Classes, Vcl.Graphics, DCPcrypt2, DCPmd5, DCPrijndael,
	DCPblockciphers, DCPBase64, DCPblowfish, IniFiles, IdHTTP, xe_GNL,
	MSXML2_TLB, SZHash, Vcl.Forms, System.StrUtils, cxLookAndFeels, Registry,
	System.NetEncoding, System.AnsiStrings;

Type
  // �����, ������ �������� ����.  CDS.
  TMAPLIST = record
    slCity: TStringList;
    slWard: TStringList;
    slStre: TStringList;
    slStre_RI: TStringList;
    slSSub: TStringList;
    slSPOI: TStringList;
    slMapX: TStringList;
    slMapY: TStringList;
  end;

    // ������ ����
  TPASS_INFO = record
    AREA1: string; // ����
    AREA2: string; // ��, ��
    AREA3: string; // ��, ��, ��
		AREA4: string; // ��������1
    AREA5: string; // ���� �Է°�
    DOCID: string; // UID
    CELLS: string;
    SWORD: string;
    MAP_X: string; // ��ǥ X
    MAP_Y: string; // ��ǥ Y
  end;

 TMDA = record
    sM_FindKey  : string[8];
    sM_Strt_Sub : string[60];
    sM_City     : string[4];
    sM_Ward     : string[20];
    sM_Street   : string[20];
    sM_X        : string[9];
    sM_Y        : string[9];
    sM_Approach : string[70];
    sM_Km       : string[6];
  end;
  //------------------------------------------------------
  TMDOS = record
    sK_FindKey  : string[8];
    sK_Offsets  : string[255];
    //sOffsLn     : string[3];    // ������ ������ ���� ��ġ��.[2 ~ 999]
  end;
  //------------------------------------------------------
  TMDPOS = record
    sM_FindKey  : string[8];    //  Offset Key Value.
    sM_X        : string[9];
    sM_Y        : string[9];
    sM_Length   : string[2];    // �������� ���� ����.
    sM_PoiId    : string[10];
  end;
  //------------------------------------------------------

  // ��� Timer Thread.
  TKWordTH = record
    sFindWord  : string;      // ������ ���ŵ� �˻���
    sFullWord  : string;      // ������ ����   �˻���
    sFuRevise  : string;      // ������ '��' ���� �˻���.   2012.03.05
    sAddrWord  : string;
    bStrSubTF  : boolean;     // ���θ�Ī �˻� �ν� �� '��' �ν� ��� On/Off.
    iWordSeq   : integer;     // �˻� ���� ��Ī ����.
  end;
  //------------------------------------------------------

  TMDA3B = record
    sM_FindKey  : string[8];
    sM_Strt_Sub : string[60];
    sM_jijum    : string[20];
    sM_City     : string[4];
    sM_Ward     : string[20];
    sM_Street   : string[20];
    sM_Stree2   : string[20];
    sM_X        : string[9];
    sM_Y        : string[9];
    sM_Approach : string[70];
    sM_Km       : string[6];
    iScore      : integer;        // hit score.
    sDistanceKm : string[7];      // ����������ǥ�� ���� POI �����ͱ����� �Ÿ�.
    sM_Hint     : string;         // �������� �����Ѵ�.
  end;
  //------------------------------------------------------

  //==================================================
  PADDRCITY = ^TPADDCITY;   // ��/�� ����.
  TPADDCITY = record
    sOffset : string[5];    // ������ Offset.
    sCity   : string[4];    // �ڵ�͵� �ּ�����.
  end;

  PADDRWARD = ^TPADDWARD;             // ��/��/�� ����.
  TPADDWARD = record
    sOffset : array of string[5];     // ������ Offset.
  end;

  PADDRSTEE = ^TPADDSTEE;             // ��/��/�� ����.
  TPADDSTEE = record
    sOffset : array of string[5];     // ������ Offset.
    sStreet : array of string[20];
  end;

  PADDRSTE2 = ^TPADDSTE2;             // �� ����.  20130614  LYB
  TPADDSTE2 = record
    sOffset : array of string[5];     // ������ Offset.
    sStree2 : array of string[20];
  end;

  // �ּ� FULL ������ ����.
  TADDR = record
    sA_FindKey  : string[5];
    sA_City     : string[4];
    sA_Ward     : string[14];
    sA_Ward2    : string[14];
    sA_Street   : string[20];
    sA_Stree2   : string[20];
    sA_X        : string[9];
    sA_Y        : string[9];
  end;

  // ���̹�/���� ���� ������ ����.
  TPADDR = record
    sA_FindKey  : string[5];
    sA_Address  : string[50];
    sA_POI      : string[50];
    sA_sPOI     : string[50];
    sA_X        : string[9];
    sA_Y        : string[9];
    sA_Gubun    : string[1];
    sA_All      : string[1];
    sA_XDMS     : double;
    sA_YDMS     : double;
  end;

  // �˻��� �ּ� FULL ������ ����.
  TFINDADDR = record
    sA_FindKey  : string[5];
    iScore      : integer;        // hit score.
    sDistanceKm : string[7];      // ����������ǥ�� ���� POI �����ͱ����� �Ÿ�.
    sA_City     : string[4];
    sA_Ward     : string[14];
    sA_Ward2    : string[14];
    sA_Street   : string[30];
    sA_Stree2   : string[30];
    sA_X        : string[9];
    sA_Y        : string[9];
    iSteeMatchPos: integer;      // ����ȸ���� ��ġ�� ������ġ��.
    sNowAreaCD  : string[1];     // ���� ���õ� �ּҰ� [1]��/��, [2]��/��, [3]��, [4]��/��/�� ���� Ȯ�ΰ�.
    iDistKm     : integer;       // ����������ǥ�� ���� km �Ÿ�.
  end;
  //==================================================

  PPKData = ^TPKData;                // HashTable���� ���.
  TPKData = record
    sOffset  : array of string[9];   // ������ Offset.
    sOffsLn  : array of string[3];   // ������ ������ ���� ��ġ��.[2 ~ 999]
    sFBGubu  : array of string[1];   // [F]�պ��� ��ġ ����, [B]�ں��� ��ġ����.
    sFlag    : string[1];            // �޸𸮿��� ���� : M,  ���Ͽ��� ���� : F
    sFile    : array of string[1];   // B.����DB, N.�ű�DB
  end;

  TPOTALPOI = record           // ���̹� �˻� ����� ����� �α�POI ������.
    slX   : TStringList;
    slY   : TStringList;
		slPOI : TStringList;
  end;

  // CAT.exe Agent Port Information. choidosoon. 2007-12-12
  TCATAGENT = record
    InboundSvrIP: string; // ��ȭ�ޱ� ���� IP
    InboundPort: integer; // ��ȭ�ޱ� ���� ����
    XmlCIDPort: integer; // ��ȭ�ޱ� ��ȭ��ȣ ����
    OutboundPort: integer; // ��ȭ�ɱ�
    HoTransPort: integer; // ȣ��ȯ ���� Port
    HoTransRltPort: integer; // ȣ��ȯ ����ޱ�
    HoTransIP: string; // ȣ��ȯ ���� IP
  end;

  // ��纰 ������(TRS) �г�Ƽ ���� �� ����ü  [hjf, 20080129]
  TTRSPenaltyStepRec = record
    Use: Boolean;
    Color: TColor;
    Unlock: Boolean;
    UnlockTime: Integer;
  end;

  TTRSPenaltyTypeRec = record
    Name: string;
    Step1: TTRSPenaltyStepRec;
    Step2: TTRSPenaltyStepRec;
    Step3: TTRSPenaltyStepRec;
  end;

  TTRSPenaltyRec = record
    Type1: TTRSPenaltyTypeRec;
    Type2: TTRSPenaltyTypeRec;
  end;

  // ������ ��� ����
  TTR_INFO = packed record
    USE: string[1]; // ��뿩��
    IP: string[15]; // ���� IP
    PORT: string[6]; // ���� PORT
    BrNo: string[5]; // �����ڵ�
    BrNo2: string[5]; // �����ڵ�
    No: string[10];
  end;

  TAREAROUND_XY = array of record
    DONG : string;
    ArrCnt : integer;
    LonArr : TStringList;
    LatArr : TStringList;
    Gubun : String[1];
  end;

	TPOLYGONAREA_XY = record
    Name : String;
		Lon : TStringList;
		Lat : TStringList;
    strValue : Integer;
    endValue : Integer;
    SameYn : Boolean;
	end;

	TKOREAAREA_XY = record
		Lon : TStringList;
		Lat : TStringList;
	end;

const
  sdxDefaultSkinName = 'Office2010Silver';
//  sdxDefaultSkinName = 'Office2010Blue';
//  sdxDefaultSkinName = 'Office2016Colorful';

//  GS_BUBIN_URL = 'http://bgroup.callmaner.com:8080/su/';
//	GS_BUBIN_URL_JI = 'http://bgroup.callmaner.com:8080/ji/';
	//���¿� ���� ������û 20210617 KHS
	GS_BUBIN_URL    = 'https://www.cd1.kr/bgroup-manager-v1/';
	GS_BUBIN_URL_JI = 'https://www.cd2.kr/bgroup-manager-v1/';

	GS_BUBIN_URL_PRINT = GS_BUBIN_URL + 'settlement/seal2.jsp?conf_slip=%s';
  GS_BUBIN_URL_PRINT_JI = GS_BUBIN_URL_JI + 'settlement/seal2.jsp?conf_slip=%s';

  GS_NOTICE_URL_S = 'http://www.gmgm.net:8080/new_web/gongji/cas_show_gongji.asp?num=';
  GS_NOTICE_URL_O = 'http://www.gngm.net:8080/new_web/gongji/cas_show_gongji.asp?num=';

Var
  // �ʼ��� ������ �ִ��� ������ �Ǵ� ȯ�漳�� ȭ�鿡�� ���������� �����ϰ� ���� ��ư Ŭ������ üũ.
  slstLocalMapOrder: TStringList;
  // ���ÿ� ������ MAP ���� ������ �о �����Ѵ�.[��,������ �������� �˻��� �̿�]
  slstLocalSelectRlt: TStringList; // �˻��� ������������ �ӽ÷� �����Ѵ�.
  slstLocalSelectRlt2: TStringList; // �˻��� ������������ �ӽ÷� �����Ѵ�.
  slstLocalSelectRlt3: TStringList; // �˻��� ������������ �ӽ÷� �����Ѵ�.
  slstLocalSelectRlt4: TStringList; // �˻��� ������������ �ӽ÷� �����Ѵ�.
  slstLocalSelectRlt5: TStringList; // �˻��� ������������ �ӽ÷� �����Ѵ�.
  slstLocalSelectRltALL: TStringList; // �˻��� ������������ �ӽ÷� �����Ѵ�.���� �õ�, �ñ��� ����  2011.12.12 KHS

  slstMapTemp1: TstringList; // �ӽ� ������ ����.(�� ���� �����ϱ�����)
  slstMapTemp2: TstringList; // �ӽ� ������ ����.(�������� ���� �����ϱ�����)
  slstMapTemp3: TstringList;

  GT_MAPLocal: TMAPLIST; // �������� ����� ���� �Է� ���� ����
  GT_MAPOrigi: TMAPLIST; // ���� �ʵ����� ���� �״�� ����
  GT_MAPOld  : TMAPLIST; // �� �ּ� ������ ���� �״�� ����   2017.06.29 LYB

  GT_MAPLocal_RLT, GT_MAPLocal_RLT_R : TMAPLIST; // �������� ����� ���� �Է� ���� ����

  J03GridAdd : THashedStringList; //������Ȳ �׸��� ����ü
 // �ӽ� ������ ����.(�������� ���� �� ���� �����ϱ�����)
  gb_MapSet: Boolean;

  Main_map_Lon, Main_map_Lat : string;  //���� �����߽���ǥ
  Save_map_Lon, Save_map_Lat : string;  //���� �����߽���ǥ

  _CriticalLockMap: TRTLCriticalSection;
  // ���� �ڿ��� �浹���� ����ϱ� ����. CDS. 081008.
  _CriticalPortal: TRTLCriticalSection;

  GS_TRS_PENALTY: TTRSPenaltyRec;

  gbWorkerChargeYN: integer;
  // ȯ�漳���� ���ڹ��� ������ ���� �ɼ��� üũ �Ǿ� ������ �׻� ���������� �Ѵ�.

	GS_LOCALDATA_USE : integer = 0;

  GT_PASS_INFO: array[0..JON_MAX_CNT - 1, 0..4] of TPASS_INFO; // ������ ���� �ִ� 20��
  GT_TR_INFO: TTR_INFO;

	GS_VIA_Tag : integer;  //������ �߰� �� ��ġ������

  GS_CUTSMS : Boolean;

  GS_FULLWORD_CMP: string;

  aryOffset : array[1..50000] Of Integer;
  arynOffset : array[1..1000] Of Integer;

  {******************************************************************************************************************************}
	gPAddr                  : array[0..50]  of TFINDADDR;   // �������� �ӽ� ���� �迭����.
	gStreeAddr              : TFINDADDR;                    // �������� �ӽ� ���� �迭����.
  gSteAdr                 : array[0..50]  of TFINDADDR;   // �������� �ӽ� ���� �迭����.
  gPOI, gPOI_ini          : array[0..500] of TMDA3B;      // ���θ�Ī �������.
  gPortalPOI, gPortalPOI_Ini : array[0..19]  of TPAddr;   // ����,���̹� ���� �˻� ����

  gTFindData                      : TKWordTH;  // Timer Thread ��ȸ�� ������ ����.
  gSKWord, gSKWordBack : string;                    // �˻��� ���� ��ȸ Ű����.

  gsW1 : AnsiString;

  //---------------------
  mPOS : File of TMDPOS;   //  *_Rlt_os.txt   ������ 255 ������ Offset Ű���� ����.
  mmps : TMDPOS;
  //---------------------
  mAdd, mOAdd    : File of TADDR;    //  *_Rlt_os.txt   ������ 255 ������ Offset Ű���� ����.
  madr : TADDR;
  //---------------------
  szHash2 : TSZHash;

  locRobortBaseCnt, locRobortCnt  : integer;
  loc_Sea_Keyword, gKWComp       : string;
  iRoSearchType, giCompCnt        : integer;

  lcsActiveEdit : string; // Ȱ��ȭ �� �����, ������ Edit ������ ����.
  sActieEdit : string;    // 20130820  LYB   ���� Ű���� �Է����� ���� �����/������ Ű���� �����ϱ� ����.
	gsKakaoAiActieEdit : string; // īī�� ��� ����� ��� �Է¶����� keydown �Ǿ����� ����ϱ� ����.
  GT_CAT_PORT: TCATAGENT;
  gsCidVersion: string; // Cid ���� ������ �����Ѵ�.[CAT:�Ź���, OLD:������()]
  gpsFindMothod: string; // IP ã�� ��� --> FIND:ip ã��,  CHECK:ip ����
  gpsIdentificationIP: string; // ���� �� IP�� �Է� �Ѵ�.
  gsInternalNumber: string; // ��PC ������ȣ    CDS. 080725.

  gmap_forword : AnsiString;
  gbSCtrlV, gbECtrlV, gbVCtrlV, gbCtrlVRecv, gbCtrlVCancel : Boolean;  // �⵵���� Ctrl+V ����, �亯����
	GSL_Penalty: TStringList;

  gbJON01UseShortCut: Boolean;

	mLEFT_BeforeIndex : integer=-1; //�йи��ϰ�� ���� ���� ���� �ε���
	mLEFT_SectionIndex : integer=-1; //�йи��ϰ�� ���� ���� ���� �ε���
	mLEFT_HdCd, mLEFT_BrCd : String; //�йи��ϰ�� ���� ����, ���� �ڵ�
	mLEFT_Idx : integer=-1;          //�йи��ϰ�� ���� ���� ���� �ε���

  mLEFT_BRLISTVIEWHDCD : String; // ������� ������ ��� ���� ���� �����ڵ�

  slR_11 : array[0..10] of TStringList;

  {******************************************************************************************************************************}
  gbSearWordDong, gbSearWordLee : boolean;    // �˻��� ������ġ�� �Ϲ�POI�˻�����, ����Ī ��ġ�� �Ϲ�POI�˻�����
	{******************************************************************************************************************************}
///////////////////////////////////////���������˻�����.2012.07.30.KHS//////////////////////////////////////
	GS_ADMINMAP_WKALL        : Boolean;
  GS_ADMINMAP_WKCON1       : Boolean;
	GS_ADMINMAP_WKCON2       : Boolean;
  GS_ADMINMAP_WKCON3       : Boolean;
  GS_ADMINMAP_WKCON4       : Boolean;
  GS_ADMINMAP_CHK         : String; //��ü0, �ڱ�� 1 Ÿ��� 2
  GS_ADMINMAP_B10         : Boolean;
  GS_ADMINMAP_B20         : Boolean;
  GS_ADMINMAP_B30         : Boolean;
  GS_ADMINMAP_B30A        : Boolean;
	GS_ADMINMAP_Title_BaeCha : Boolean;
	GS_ADMINMAP_Title_WKNAME : Boolean;
	GS_ADMINMAP_Title_BRNAME : Boolean;
	GS_ADMINMAP_TAG_BRNAME  : Boolean;
	GS_ADMINMAP_TAG_WKSABUN : Boolean;
	GS_ADMINMAP_TAG_WKNAME  : Boolean;
	GS_ADMINMAP_TAG_OurWK_Status    : Boolean;
	GS_ADMINMAP_TAG_OurWK_FinishCNT : Boolean;
	GS_ADMINMAP_TAG_OurWK_Name 			: Boolean;
	GS_ADMINMAP_TAG_OurWK_Sabun 		: Boolean;
	GS_ADMINMAP_TAG_OurWK_HP 				: Boolean;
	GS_ADMINMAP_TAG_OurWK_BrName 		: Boolean;
	GS_ADMINMAP_TAG_OurWK_BrNo 			: Boolean;
	GS_ADMINMAP_LEVEL       : string;
///////////////////////////////////////���������˻�����.2012.07.30.KHS//////////////////////////////////////

  // blowfish ���� ��ȣȭ ��ü ����.  2011.06.28
  DCP_blowfish1: TDCP_blowfish;
  DCP_md51: TDCP_md5;

  HashCity  : THashedStringList;
  HashWard  : THashedStringList;
  HashWar2  : THashedStringList;
  HashStee  : THashedStringList;
  HashSte2  : THashedStringList;

  HashRoad  : THashedStringList;

  FAREAROUND_XY : TAREAROUND_XY;

	FKOREAAREA_XY : TKOREAAREA_XY; //���ѹα� ��ȿ��ǥ 9������

  FPOLYGONAREA_XY : array [1..200] of TPOLYGONAREA_XY;

	GS_SYNC_DATETIME : String = ''; //����� ���� ���� ��� �� �������� ���� 2013.06.26 KHS
	GS_POI_SDDATAMAKEDATE : String;   // �ű� POI �ڷ� ���� ���� �ð� ���� 20120917  LYB �߰�

	//�ݼ��� ������ ��ǥ��� 2012.03.09 KHS
  Area_CenterName: string; //�ݼ�����ġ
  Area_CenterLat: string; //Lat
  Area_CenterLon: string; //Lon

  procedure GTMap_Initial(sFlag: string);
  procedure proc_CServer_LOCALtoList;
  procedure proc_LocalTOLocallist;
  procedure proc_CServerTOLocallist;

  { blowfish + md5 : ������ ��ȣ �ɱ�  2011.06.28 }
  function Fnc_FileEncrypt_org(sInData, sOutFilePath : string) : Boolean;
  { blowfish + md5 : ������ ��ȣ �����ϱ� 2011.06.28 }
  function Fnc_FileDecrypt_org(sInFilePath: string) : string;
  // ����� ���� ����
  procedure Proc_CustGroup;
  procedure Proc_BRANCH_COLORList;
  function fGetBrCash( sBrNo : String ) : Real;

  // ��ȭ�� ��Ͽ� �ڵ���� ���ش�.[��ȭ���� �������� ����� ����]
  procedure SetFireWall(sDirFile, sTiTle: string; bEnable: Boolean = True);

// �Ǹ��������(2010.12.07)
  function NCertToInternet(RsIgnore_notify: boolean; user_name,usr_regnum1,usr_regnum2 : String) : Boolean;
//�ֹε�Ϲ�ȣ ��ȿ��üũ
//	function func_SoNumCheck(sTemp: string): Boolean;
	//����ڹ�ȣ ��ȿ��üũ
	function CheckIdNo(const aIDNO : string):Boolean;
	function GetOnlyNumber(const AValue : string):Boolean;

  procedure WriteIniTRSPenalty(const ASection, AType, AStep: string; AIniFile: TIniFile; ARec: TTRSPenaltyStepRec);
  procedure ReadIniTRSPenalty(const ASection, AType, AStep: string; AIniFile: TIniFile; var ARec: TTRSPenaltyStepRec);

  procedure locLoadFile_Encrypt(const APath, OFilePath : string);
  procedure locLoadFile_Decrypt(const APath: string; var OData : AnsiString);
  function StrToIntRltDef(S: string): Integer;

	function fEncryptAESbase64(var AoutData: array of Byte; AData, AKey: String): String; //AES256 CBC  base64
implementation

uses xe_Func, xe_charge, xe_gnl3, xe_xml, xe_packet, xe_Msg,
  FastStringFuncs, xe_Structure;

procedure GTMap_Initial(sFlag: string);
Var i : Integer;
begin
  try
    if sFlag = 'CREATE' then
    begin
      // ���ÿ� ������ MAP ���� ������ �о �����Ѵ�.[��,������ �������� �˻��� �̿�]
      slstLocalMapOrder := TStringList.Create;
      slstLocalMapOrder.Clear;

      HashCity  := THashedStringList.Create;
      HashWard  := THashedStringList.Create;
      HashWar2  := THashedStringList.Create;
      HashStee  := THashedStringList.Create;
      HashSte2  := THashedStringList.Create;

       for i := 0 to 10 do
      begin
        slR_11[i] := TStringList.Create;
      end;

      // ����� ���� �Է� ��� ���� ����. 120624.
      GT_MAPLocal_RLT.slCity := TStringList.Create;
      GT_MAPLocal_RLT.slWard := TStringList.Create;
      GT_MAPLocal_RLT.slStre := TStringList.Create;
      GT_MAPLocal_RLT.slSSub := TStringList.Create;
      GT_MAPLocal_RLT.slSPOI := TStringList.Create;
      GT_MAPLocal_RLT.slMapX := TStringList.Create;
      GT_MAPLocal_RLT.slMapY := TStringList.Create;

      // ����� ���� �Է� ��� ���� ����. 120624.
      GT_MAPLocal_RLT_R.slCity := TStringList.Create;
      GT_MAPLocal_RLT_R.slWard := TStringList.Create;
      GT_MAPLocal_RLT_R.slStre := TStringList.Create;
      GT_MAPLocal_RLT_R.slSSub := TStringList.Create;
      GT_MAPLocal_RLT_R.slSPOI := TStringList.Create;
      GT_MAPLocal_RLT_R.slMapX := TStringList.Create;
      GT_MAPLocal_RLT_R.slMapY := TStringList.Create;

      // �˻��� ������������ �ӽ÷� �����Ѵ�.
      slstLocalSelectRlt := TStringList.Create;
      slstLocalSelectRlt2 := TStringList.Create;
      // �˻��� ������������ �ӽ÷� �����Ѵ�.  CDS ADD.
      slstLocalSelectRlt3 := TStringList.Create;
      // �˻��� ������������ �ӽ÷� �����Ѵ�.
      slstLocalSelectRlt4 := TStringList.Create;
      // �˻��� ������������ �ӽ÷� �����Ѵ�.
      slstLocalSelectRlt5 := TStringList.Create;
      slstLocalSelectRltALL := TStringList.Create;
      // �˻��� ������������ �ӽ÷� �����Ѵ�.
      // ��,������ �������� �ӽ�����. CDS.
      slstMapTemp1 := TStringList.Create; // �� ����
      slstMapTemp2 := TStringList.Create; // �������� ����
      slstMapTemp3 := TstringList.Create;
      // �ӽ� ������ ����.(�������� ���� �� ���� �����ϱ�����)

      // ����� ���� �Է� ���� ����
      GT_MAPLocal.slCity := TStringList.Create;
      GT_MAPLocal.slWard := TStringList.Create;
      GT_MAPLocal.slStre := TStringList.Create;
      GT_MAPLocal.slSSub := TStringList.Create;
      GT_MAPLocal.slSPOI := TStringList.Create;
      GT_MAPLocal.slMapX := TStringList.Create;
      GT_MAPLocal.slMapY := TStringList.Create;
      // ���� �ʵ����� ���� �״�� ����
      GT_MAPOrigi.slCity := TStringList.Create;
      GT_MAPOrigi.slWard := TStringList.Create;
      GT_MAPOrigi.slStre := TStringList.Create;
      GT_MAPOrigi.slStre_RI := TStringList.Create;
      GT_MAPOrigi.slSSub := TStringList.Create;
      GT_MAPOrigi.slMapX := TStringList.Create;
      GT_MAPOrigi.slMapY := TStringList.Create;
      // ���ּ� ������ ���� �״�� ����
      GT_MAPOld.slCity := TStringList.Create;
      GT_MAPOld.slWard := TStringList.Create;
      GT_MAPOld.slStre := TStringList.Create;
      GT_MAPOld.slStre_RI := TStringList.Create;
      GT_MAPOld.slSSub := TStringList.Create;
      GT_MAPOld.slMapX := TStringList.Create;
      GT_MAPOld.slMapY := TStringList.Create;
    end else
    if sFlag = 'CLEAR' then
    begin
      // ��,������ �������� �ӽ�����. CDS.
      slstMapTemp1.Clear;
      slstMapTemp2.Clear;
      slstMapTemp3.Clear;

      // ����� ���� �Է� ���� ����
      GT_MAPLocal.slCity.Clear;
      GT_MAPLocal.slWard.Clear;
      GT_MAPLocal.slStre.Clear;
      GT_MAPLocal.slSSub.Clear;
      GT_MAPLocal.slSPOI.Clear;
      GT_MAPLocal.slMapX.Clear;
      GT_MAPLocal.slMapY.Clear;
      // ���� �ʵ����� ���� �״�� ����
      GT_MAPOrigi.slCity.Clear;
      GT_MAPOrigi.slWard.Clear;
      GT_MAPOrigi.slStre.Clear;
      GT_MAPOrigi.slStre_RI.Clear;
      GT_MAPOrigi.slSSub.Clear;
      GT_MAPOrigi.slMapX.Clear;
      GT_MAPOrigi.slMapY.Clear;
      // ���ּ� ������ ���� �״�� ����
      GT_MAPOld.slCity.Clear;
      GT_MAPOld.slWard.Clear;
      GT_MAPOld.slStre.Clear;
      GT_MAPOld.slStre_RI.Clear;
      GT_MAPOld.slSSub.Clear;
      GT_MAPOld.slMapX.Clear;
      GT_MAPOld.slMapY.Clear;
    end else
    begin
      // ���ÿ� ������ MAP ���� ������ �о �����Ѵ�.[��,������ �������� �˻��� �̿�]
      FreeAndNil(slstLocalMapOrder);

      for I := 0 to Length(FAREAROUND_XY) -1 do
      begin
        FreeAndNil(FAREAROUND_XY[i].LonArr);
        FreeAndNil(FAREAROUND_XY[i].LatArr);
      end;

      FreeAndNil(HashCity);
      FreeAndNil(HashWard);
      FreeAndNil(HashWar2);
      FreeAndNil(HashStee);
      FreeAndNil(HashSte2);

      for i := 0 to 10 do
      begin
        FreeAndNil(slR_11[i]);
      end;

      // ����� ���� �Է� ��� ���� ����. 120624.
      FreeAndNil(GT_MAPLocal_RLT.slCity);
      FreeAndNil(GT_MAPLocal_RLT.slWard);
      FreeAndNil(GT_MAPLocal_RLT.slStre);
      FreeAndNil(GT_MAPLocal_RLT.slSSub);
      FreeAndNil(GT_MAPLocal_RLT.slSPOI);
      FreeAndNil(GT_MAPLocal_RLT.slMapX);
      FreeAndNil(GT_MAPLocal_RLT.slMapY);

      // ����� ���� �Է� ��� ���� ����. 120624.
      FreeAndNil(GT_MAPLocal_RLT_R.slCity);
      FreeAndNil(GT_MAPLocal_RLT_R.slWard);
      FreeAndNil(GT_MAPLocal_RLT_R.slStre);
      FreeAndNil(GT_MAPLocal_RLT_R.slSSub);
      FreeAndNil(GT_MAPLocal_RLT_R.slSPOI);
      FreeAndNil(GT_MAPLocal_RLT_R.slMapX);
      FreeAndNil(GT_MAPLocal_RLT_R.slMapY);

      // �˻��� ������������ �ӽ÷� �����Ѵ�.
      FreeAndNil(slstLocalSelectRlt);
      FreeAndNil(slstLocalSelectRlt2);
      // �˻��� ������������ �ӽ÷� �����Ѵ�.    CDS ADD.
      FreeAndNil(slstLocalSelectRlt3); // �˻��� ������������ �ӽ÷� �����Ѵ�.
      FreeAndNil(slstLocalSelectRlt4); // �˻��� ������������ �ӽ÷� �����Ѵ�.
      FreeAndNil(slstLocalSelectRlt5); // �˻��� ������������ �ӽ÷� �����Ѵ�.
      FreeAndNil(slstLocalSelectRltALL); // �˻��� ������������ �ӽ÷� �����Ѵ�.
      // ��,������ �������� �ӽ�����. CDS.
      FreeAndNil(slstMapTemp1);
      FreeAndNil(slstMapTemp2);
      FreeAndNil(slstMapTemp3);

      // ����� ���� �Է� ���� ����
      FreeAndNil(GT_MAPLocal.slCity);
      FreeAndNil(GT_MAPLocal.slWard);
      FreeAndNil(GT_MAPLocal.slStre);
      FreeAndNil(GT_MAPLocal.slSSub);
      FreeAndNil(GT_MAPLocal.slSPOI);
      FreeAndNil(GT_MAPLocal.slMapX);
      FreeAndNil(GT_MAPLocal.slMapY);
      // ���� �ʵ����� ���� �״�� ����
      FreeAndNil(GT_MAPOrigi.slCity);
      FreeAndNil(GT_MAPOrigi.slWard);
      FreeAndNil(GT_MAPOrigi.slStre);
      FreeAndNil(GT_MAPOrigi.slStre_RI);
      FreeAndNil(GT_MAPOrigi.slSSub);
      FreeAndNil(GT_MAPOrigi.slMapX);
      FreeAndNil(GT_MAPOrigi.slMapY);
      // ���ּ� ������ ���� �״�� ����
      FreeAndNil(GT_MAPOld.slCity);
      FreeAndNil(GT_MAPOld.slWard);
      FreeAndNil(GT_MAPOld.slStre);
      FreeAndNil(GT_MAPOld.slStre_RI);
      FreeAndNil(GT_MAPOld.slSSub);
      FreeAndNil(GT_MAPOld.slMapX);
      FreeAndNil(GT_MAPOld.slMapY);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure proc_CServer_LOCALtoList;
var sQuery, sTemp, gsPath : string;
	sl_Local, slTmp, slTmp2 : TStringList;
	i : integer;
begin
	try
		slTmp2 := TStringList.Create;
    try
      slTmp2.Clear;

      // ����� ���� �Է� ���� ����  [LOCAL_MAP_NEW.DAT] ������ ���� ���� ����. CDS.
      if (FileExists(DBDIRECTORY + 'LOCAL_MAP_NEW.DAT') = True) then
      begin //�������翩�ΰ˻�
        // �������� �ʱ�ȭ..
        GT_MAPLocal.slCity.Clear;
        GT_MAPLocal.slWard.Clear;
        GT_MAPLocal.slStre.Clear;
        GT_MAPLocal.slSSub.Clear;
        GT_MAPLocal.slSPOI.Clear;
        GT_MAPLocal.slMapX.Clear;
        GT_MAPLocal.slMapY.Clear;
        // Map File Load..
		  	slTmp2.LoadFromFile(DBDIRECTORY + 'LOCAL_MAP_NEW.DAT');
		  	// data insert [����� ���� �Է� ���� ����]   // ����� ���� �Է� ���� ����
        slTmp := TStringList.Create;
        slTmp.Clear;
        try
		  		for i := 0 to slTmp2.Count - 1 do
          begin
            Try
              Application.ProcessMessages;
              // ����|�߱�|������|�������Ա�|037335724|126585066
              GetTextSeperationEx('|', slTmp2[i], slTmp);
              GT_MAPLocal.slCity.Add(slTmp[0]);
              GT_MAPLocal.slWard.Add(slTmp[1]);
              GT_MAPLocal.slStre.Add(slTmp[2]);
              GT_MAPLocal.slSSub.Add(slTmp[3]);
              if Copy(slTmp[4],1,2) = '03' then
              begin
                GT_MAPLocal.slSPOI.Add('');
                GT_MAPLocal.slMapX.Add(slTmp[4]);
                GT_MAPLocal.slMapY.Add(slTmp[5]);
              end else
              begin
                GT_MAPLocal.slSPOI.Add(slTmp[4]);
                GT_MAPLocal.slMapX.Add(slTmp[5]);
                GT_MAPLocal.slMapY.Add(slTmp[6]);
              end;
            except
            end;
          end;
        finally
          slTmp.Free;
        end;
        slTmp2.Clear; // �ʱ�ȭ..
      end;
    finally
      FreeAndNil(slTmp2);
    end;

		sl_Local := TStringList.Create;
    try
  		gsPath := DBDIRECTORY + 'LOCAL_MAP_NEW.DAT';
  		if FileExists(gsPath) then sl_Local.LoadFromFile(gsPath);
  		sl_Local.Sorted := True;

      sQuery := 'select * from CDMS_LOCAL_POI ORDER BY LENGTH(DNAME)';
      dmCharge.proc_mysql_init;
      dmCharge.FDQuery1.Close;
  		dmCharge.FDQuery1.SQL.Text := sQuery;
  		dmCharge.FDQuery1.OPEN;
      while not dmCharge.FDQuery1.Eof do
      begin
  			Try
  				sTemp := dmCharge.FDQuery1.Fields[0].AsString + '|' + dmCharge.FDQuery1.Fields[1].AsString + '|' + dmCharge.FDQuery1.Fields[2].AsString + '|'
                 + dmCharge.FDQuery1.Fields[3].AsString + '|' + dmCharge.FDQuery1.Fields[4].AsString + '|' + dmCharge.FDQuery1.Fields[5].AsString + '|'
  							 + dmCharge.FDQuery1.Fields[6].AsString;
  				if sl_Local.IndexOf(sTemp + '|' + '999') < 0 then
  				begin
  					GT_MAPLocal.slCity.Add(dmCharge.FDQuery1.Fields[0].AsString);
  					GT_MAPLocal.slWard.Add(dmCharge.FDQuery1.Fields[1].AsString);
  					GT_MAPLocal.slStre.Add(dmCharge.FDQuery1.Fields[2].AsString);
  					GT_MAPLocal.slSSub.Add(StringReplace(dmCharge.FDQuery1.Fields[3].AsString, ' ', '', [rfReplaceAll]));
  					if Copy(dmCharge.FDQuery1.Fields[4].AsString,1,2) = '03' then
            begin
              GT_MAPLocal.slSPOI.Add('');
              GT_MAPLocal.slMapX.Add(dmCharge.FDQuery1.Fields[4].AsString);
              GT_MAPLocal.slMapY.Add(dmCharge.FDQuery1.Fields[5].AsString);
            end else
            begin
  						GT_MAPLocal.slSPOI.Add(dmCharge.FDQuery1.Fields[4].AsString);
  						GT_MAPLocal.slMapX.Add(dmCharge.FDQuery1.Fields[5].AsString);
  						GT_MAPLocal.slMapY.Add(dmCharge.FDQuery1.Fields[6].AsString);
            end;
  				end;
  				dmCharge.FDQuery1.Next;
  			except
        end;
      end;
    finally
      FreeAndNil(sl_Local);
    end;
  except
  end;
end;

procedure proc_LocalTOLocallist;
var
  slTmp, slTmp2: TStringList;
  i: Integer;
begin
	try
		slTmp2 := TStringList.Create;
		slTmp2.Clear;
    try
		  // ����� ���� �Է� ���� ����  [LOCAL_MAP_NEW.DAT] ������ ���� ���� ����. CDS.
		  if (FileExists(DBDIRECTORY + 'LOCAL_MAP_NEW.DAT') = True) then
		  begin //�������翩�ΰ˻�
		  	// �������� �ʱ�ȭ..
		  	GT_MAPLocal.slCity.Clear;
		  	GT_MAPLocal.slWard.Clear;
		  	GT_MAPLocal.slStre.Clear;
		  	GT_MAPLocal.slSSub.Clear;
		  	GT_MAPLocal.slSPOI.Clear;
		  	GT_MAPLocal.slMapX.Clear;
		  	GT_MAPLocal.slMapY.Clear;
        // Map File Load..
		  	slTmp2.LoadFromFile(DBDIRECTORY + 'LOCAL_MAP_NEW.DAT');
		  	// data insert [����� ���� �Է� ���� ����]   // ����� ���� �Է� ���� ����
        slTmp := TStringList.Create;
  	  	slTmp.Clear;
        try
          for i := 0 to slTmp2.Count - 1 do
          begin
            Try
              // ����|�߱�|������|�������Ա�|037335724|126585066
              GetTextSeperationEx('|', slTmp2[i], slTmp);
              GT_MAPLocal.slCity.Add(slTmp[0]);
              GT_MAPLocal.slWard.Add(slTmp[1]);
              GT_MAPLocal.slStre.Add(slTmp[2]);
              GT_MAPLocal.slSSub.Add(slTmp[3]);
              if Copy(slTmp[4],1,2) = '03' then
              begin
                GT_MAPLocal.slSPOI.Add('');
                GT_MAPLocal.slMapX.Add(slTmp[4]);
                GT_MAPLocal.slMapY.Add(slTmp[5]);
              end else
              begin
                GT_MAPLocal.slSPOI.Add(slTmp[4]);
                GT_MAPLocal.slMapX.Add(slTmp[5]);
                GT_MAPLocal.slMapY.Add(slTmp[6]);
              end;
            except
            end;
          end;
        finally
          slTmp.Free;
        end;
        slTmp2.Clear; // �ʱ�ȭ..
      end;
    finally
      FreeAndNil(slTmp2);
    end;
  except
  end;
end;

procedure proc_CServerTOLocallist;
var sQuery, sTemp : string;
begin
	Try
		sQuery := 'select * from CDMS_LOCAL_POI ORDER BY LENGTH(DNAME)';
		dmCharge.proc_mysql_init;
		dmCharge.FDQuery1.Close;
		dmCharge.FDQuery1.SQL.Text := sQuery;
		dmCharge.FDQuery1.OPEN;

		if dmCharge.FDQuery1.Eof then exit;

		// �������� �ʱ�ȭ..
		GT_MAPLocal.slCity.Clear;
		GT_MAPLocal.slWard.Clear;
		GT_MAPLocal.slStre.Clear;
		GT_MAPLocal.slSSub.Clear;
		GT_MAPLocal.slSPOI.Clear;
		GT_MAPLocal.slMapX.Clear;
		GT_MAPLocal.slMapY.Clear;

		while not dmCharge.FDQuery1.Eof do
		begin
			Try
				sTemp := dmCharge.FDQuery1.Fields[0].AsString + '|' + dmCharge.FDQuery1.Fields[1].AsString + '|' + dmCharge.FDQuery1.Fields[2].AsString + '|'
							 + dmCharge.FDQuery1.Fields[3].AsString + '|' + dmCharge.FDQuery1.Fields[4].AsString + '|' + dmCharge.FDQuery1.Fields[5].AsString + '|'
							 + dmCharge.FDQuery1.Fields[6].AsString;
				GT_MAPLocal.slCity.Add(dmCharge.FDQuery1.Fields[0].AsString);
				GT_MAPLocal.slWard.Add(dmCharge.FDQuery1.Fields[1].AsString);
				GT_MAPLocal.slStre.Add(dmCharge.FDQuery1.Fields[2].AsString);
				GT_MAPLocal.slSSub.Add(StringReplace(dmCharge.FDQuery1.Fields[3].AsString, ' ', '', [rfReplaceAll]));
				if Copy(dmCharge.FDQuery1.Fields[4].AsString,1,2) = '03' then
				begin
					GT_MAPLocal.slSPOI.Add('');
					GT_MAPLocal.slMapX.Add(dmCharge.FDQuery1.Fields[4].AsString);
					GT_MAPLocal.slMapY.Add(dmCharge.FDQuery1.Fields[5].AsString);
				end else
				begin
					GT_MAPLocal.slSPOI.Add(dmCharge.FDQuery1.Fields[4].AsString);
					GT_MAPLocal.slMapX.Add(dmCharge.FDQuery1.Fields[5].AsString);
					GT_MAPLocal.slMapY.Add(dmCharge.FDQuery1.Fields[6].AsString);
				end;

				dmCharge.FDQuery1.Next;
			except
			end;
		end;
	except
  end;
end;

{ Fnc_FileEncrypt_org, Fnc_FileDecrypt_org  �Լ����� ���. 2011.06.28 }
function Min(a, b: integer): integer;
begin
  if (a < b) then
    Result := a
  else
    Result := b;
end;

{ blowfish + md5 : ������ ��ȣ �ɱ�  2011.06.28 }
function Fnc_FileEncrypt_org(sInData, sOutFilePath : string) : Boolean;
var
  Cipher: TDCP_cipher;         // the cipher to use
  CipherIV: array of byte;     // the initialisation vector (for chaining modes)
  Hash: TDCP_hash;             // the hash to use
  HashDigest: array of byte;   // the result of hashing the passphrase with the salt
  Salt: array[0..7] of byte;   // a random salt to help prevent precomputated attacks
  strmInput, strmOutput: TFileStream;
  lsInData : TStringList;
  i: integer;
begin
  Result := False;

  try
    try
      lsInData := TStringList.Create;
      lsInData.Text := sInData;
      lsInData.SaveToFile(gs_SysPath + 'tt01');    // �ӽ� ������ ����.

      if FileExists(sOutFilePath) then
      begin
        strmOutput := TFileStream.Create(sOutFilePath, fmOpenReadWrite or fmShareDenyNone);
        Sleep(2);
      end else
      begin
        strmOutput := TFileStream.Create(sOutFilePath, fmCreate or fmShareDenyNone);
        Sleep(2);
        Log('Create', LOGDATADIRECTORY + 'log.txt');
      end;

      if FileExists(gs_SysPath + 'tt01') then
      begin
        strmInput  := TFileStream.Create(gs_SysPath + 'tt01', fmOpenReadWrite or fmShareDenyNone);
        Sleep(2);
      end else
      begin
        strmInput  := TFileStream.Create(gs_SysPath + 'tt01', fmCreate or fmShareDenyNone);
        Sleep(2);
        Log('ttCreate', LOGDATADIRECTORY + 'log.txt');
      end;
    except

    end;

    try
      if strmInput.Size > 0 then
      begin
        Hash := TDCP_hash(DCP_md51);
        SetLength(HashDigest,Hash.HashSize div 8);
        for i := 0 to 7 do
          Salt[i] := Random(256);  // just fill the salt with random values (crypto secure PRNG would be better but not _really_ necessary)
        strmOutput.WriteBuffer(Salt,Sizeof(Salt));  // write out the salt so we can decrypt!
        Hash.Init;
        Hash.Update(Salt[0],Sizeof(Salt));   // hash the salt
        Hash.UpdateStr('A21B3CB81D62CA70');  // and the passphrase
        Hash.Final(HashDigest[0]);           // store the output in HashDigest

        Cipher := TDCP_cipher(DCP_blowfish1);
        if (Cipher is TDCP_blockcipher) then      // if the cipher is a block cipher we need an initialisation vector
        begin
          SetLength(CipherIV,TDCP_blockcipher(Cipher).BlockSize div 8);
          for i := 0 to (Length(CipherIV) - 1) do
            CipherIV[i] := Random(256);           // again just random values for the IV
          strmOutput.WriteBuffer(CipherIV[0],Length(CipherIV));  // write out the IV so we can decrypt!
          Cipher.Init(HashDigest[0],Min(Cipher.MaxKeySize,Hash.HashSize),CipherIV);  // initialise the cipher with the hash as key
          TDCP_blockcipher(Cipher).CipherMode := cmCBC;   // use CBC chaining when encrypting
        end
        else
          Cipher.Init(HashDigest[0],Min(Cipher.MaxKeySize,Hash.HashSize),nil); // initialise the cipher with the hash as key


        Cipher.EncryptStream(strmInput, strmOutput, strmInput.Size); // encrypt the entire file
        Cipher.Burn;   // important! get rid of keying information
				Result := True;
      end;
    except
      on e : exception do
      begin
        Log(Format('An error occurred while processing the file[����:%s]', [E.Message]), LOGDATADIRECTORY + 'log.txt');
			end;
    end;

  finally
    FreeAndNil(strmInput);
    FreeAndNil(strmOutput);

    lsInData.Text := '';
    lsInData.SaveToFile(gs_SysPath + 'tt01');  // �ӽ� ������ ����.

    FreeAndNil(lsInData);
  end;
end;

{ blowfish + md5 : ������ ��ȣ �����ϱ� 2011.06.28 }
function Fnc_FileDecrypt_org(sInFilePath: string) : string;
var
  Cipher: TDCP_cipher;         // the cipher to use
  CipherIV: array of byte;     // the initialisation vector (for chaining modes)
  Hash: TDCP_hash;             // the hash to use
  HashDigest: array of byte;   // the result of hashing the passphrase with the salt
  Salt: array[0..7] of byte;   // a random salt to help prevent precomputated attacks
  strmInput : TFileStream;
  ssOutStrm : TStringStream;
begin

  try
    strmInput  := TFileStream.Create(sInFilePath,fmOpenRead);
    ssOutStrm  := TStringStream.Create('');

    try
      Hash := TDCP_hash(DCP_md51);
      SetLength(HashDigest,Hash.HashSize div 8);
      strmInput.ReadBuffer(Salt[0],Sizeof(Salt));  // read the salt in from the file
      Hash.Init;
      Hash.Update(Salt[0],Sizeof(Salt));   // hash the salt
      Hash.UpdateStr('A21B3CB81D62CA70');  // and the passphrase
      Hash.Final(HashDigest[0]);           // store the hash in HashDigest

      Cipher := TDCP_cipher(DCP_blowfish1);
      if (Cipher is TDCP_blockcipher) then            // if it is a block cipher we need the IV
      begin
        SetLength(CipherIV,TDCP_blockcipher(Cipher).BlockSize div 8);
        strmInput.ReadBuffer(CipherIV[0],Length(CipherIV));       // read the initialisation vector from the file
        Cipher.Init(HashDigest[0],Min(Cipher.MaxKeySize,Hash.HashSize),CipherIV);  // initialise the cipher
        TDCP_blockcipher(Cipher).CipherMode := cmCBC;
      end
      else
        Cipher.Init(HashDigest[0],Min(Cipher.MaxKeySize,Hash.HashSize),nil);  // initialise the cipher

      //Cipher.DecryptString();
      Cipher.DecryptStream(strmInput,ssOutStrm,strmInput.Size - strmInput.Position); // decrypt!
      Cipher.Burn;

      Result := ssOutStrm.DataString;
    except
      on e : exception do
			begin
				Log(Format('An error occurred while processing the file[����:%s]', [E.Message]), LOGDATADIRECTORY + 'log.txt');
			end;
		end;

  finally
    FreeAndNil(strmInput);
    FreeAndNil(ssOutStrm);
  end;
end;

// ����� ���� ����
procedure Proc_CustGroup;
var
  XmlData, Param, ErrMsg: string;
  xdom: msDOMDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
	I, j, ErrCode: Integer;
begin
	try
		case StrToIntDef(GT_USERIF.LV, 99) of
			10: Param := GT_USERIF.BR + '��110';
      40: Param := GT_USERIF.BR + '��140';
			60: begin
						if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) And ( GT_SEL_BRNO.HDNO <> '' ) then     // 20120629 LYB
						begin
							SetLength(scb_CustGroupInfo, 0);
							for j := 0 to scb_HdNo.count -1 do
							begin
								Param := scb_HdNo[j] + '��160';
								if not RequestBase(GetSel05('GETCULVITEM', 'cust_level.lv_select_ext', '100', Param), XmlData, ErrCode, ErrMsg) then
								begin
									GMessagebox(Format('�������� �ε� �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
									Exit;
								end;

								xdom := ComsDomDocument.Create;
								try
									xdom.loadXML(XmlData);
									lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
									SetLength(scb_CustGroupInfo, lst_Result.length + length(scb_CustGroupInfo));
									ls_Rcrd := TStringList.Create;
									try
										for I := 0 to lst_Result.length - 1 do
										begin
											if lst_Result.item[i].attributes.getNamedItem('Value').Text = '' then Continue;
											GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
											CustAddGroup(ls_Rcrd[6], ls_Rcrd[0], ls_Rcrd[7], ls_Rcrd[2], Hex6ToColor(ls_Rcrd[4]), ls_Rcrd[5] = 'y', i);
										end;
									finally
										ls_Rcrd.Free;
									end;
								finally
									xdom := Nil;
								end;
							end;
							exit;
						end
						else
              Param := GT_USERIF.HD + '��160';
          end;
    else
      Exit;
    end;


    if not RequestBase(GetSel05('GETCULVITEM', 'cust_level.lv_select_ext', '100', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('�������� �ε� �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;

    xdom := ComsDomDocument.Create;
    try
      xdom.loadXML(XmlData);
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      SetLength(scb_CustGroupInfo, 0);
      SetLength(scb_CustGroupInfo, lst_Result.length);
      ls_Rcrd := TStringList.Create;
      try
        for I := 0 to lst_Result.length - 1 do
        begin
          if lst_Result.item[i].attributes.getNamedItem('Value').Text = '' then Continue;
          GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
          CustAddGroup(ls_Rcrd[6], ls_Rcrd[0], ls_Rcrd[7], ls_Rcrd[2], Hex6ToColor(ls_Rcrd[4]), ls_Rcrd[5] = 'y', i);
        end;
			finally
        ls_Rcrd.Free;
      end;
    finally
      xdom := Nil;
		end;

  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure Proc_BRANCH_COLORList;
var
  XmlData, Param, ErrMsg: string;
	xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, J, ErrCode: Integer;
begin
  try
  	Param := '';

    // 2011.01.27 �����ǰ� Ȯ��(��°�� 100�����ΰ�)
  	if not RequestBase(GetSel05('ORDER_COLOR', 'CAS.GET_BRANCH_COLOR_LIST', '1000', Param), XmlData, ErrCode, ErrMsg) then
    begin
  		GMessagebox(Format('���纰 ���� �ε� �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
  		Exit;
  	end;

    //�����κ��� ������� �����͸� Ȯ���غ���..
    xdom := ComsDomDocument.Create;
    try
  	  xdom.loadXML(XmlData);
      lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
  	  if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text, 0) > 0 then
      begin
        J := StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0);
  	  	if GS_BRCOLOR_LIST.Count > 0 then GS_BRCOLOR_LIST.Clear;

  	  	ls_Rcrd := TStringList.Create;
        try
          for I := 0 to J - 1 do
          begin
            if lst_Result.item[i].attributes.getNamedItem('Value').Text = '' then Continue;
            GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

  	  			GS_BRCOLOR_LIST.Add(ls_Rcrd[0]);
  	  			GS_BRCOLOR_LIST.Values[ls_Rcrd[0]] := ls_Rcrd[1];
  	  		end;
  	  	finally
          ls_Rcrd.Free;
  	  	end;
      end;
    finally
      xdom := Nil;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

// ����ĳ���ܾ���ȸ
function fGetBrCash( sBrNo : String ) : Real;
var
  XmlData, Param, ErrMsg: string;
  xdom: msDOMDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, ErrCode: Integer;
begin
  try
    Result := 0;

    Param := sBrNo;
    if not RequestBase(GetSel05('GET_BRANCH_CASH ', 'MNG_BRANCH.GET_BRANCH_CASH', '100', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('����ĳ�� ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;

    xdom := ComsDomDocument.Create;
    try
      xdom.loadXML(XmlData);
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      ls_Rcrd := TStringList.Create;
      try
        for I := 0 to lst_Result.length - 1 do
        begin
          if lst_Result.item[i].attributes.getNamedItem('Value').Text = '' then Continue;
          GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
          Result := StrToFloatDef(ls_Rcrd[0], 0);
        end;
      finally
        ls_Rcrd.Free;
      end;
    finally
      xdom := Nil;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure locLoadFile_Encrypt(const APath, OFilePath : string);
var
  FS, FSS : TFileStream;
  FSL: TStringList;
  sData, sRlt: string;
begin
  try
    FSL:= TStringList.Create;
    // TFileStream
    FS  := TFileStream.Create(APath, fmOpenRead or fmShareDenyWrite);
    FSS := TFileStream.Create(OFilePath, fmCreate);
    try
      SetString(sData, nil, FS.Size - FS.Position);
      FS.Read(Pointer(sData)^, FS.Size - FS.Position);

      SetString(sRlt, nil, Length(sData));

      sRlt := Encrypt_Fast(sData, 36);  // ��ȣó��.

      FSS.WriteBuffer( sRlt[1], Length(sRlt) );
    finally
      FreeAndNil(FS);
      FreeAndNil(FSL);
      FreeAndNil(FSS);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure locLoadFile_Decrypt(const APath: string; var OData : AnsiString);
var
  FS : TFileStream;
  sData : AnsiString;
begin
  try
    // TFileStream
    FS  := TFileStream.Create(APath, fmOpenRead);
    try
      SetString(sData, nil, FS.Size - FS.Position);
      FS.Read(Pointer(sData)^, FS.Size - FS.Position);

      SetString(OData, nil, Length(sData));
      OData := Decrypt_Fast(sData, 36);  // ��ȣó��.
    finally
      FreeAndNil(FS);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

// ��ȭ�� ��Ͽ� �ڵ���� ���ش�.[��ȭ���� �������� ����� ����] �������ȭ������ó��
procedure SetFireWall(sDirFile, sTiTle: string; bEnable: Boolean = True);
var
  R: TRegistry;
  sEnable: string;
begin
  try
    R := TRegistry.Create;
    try
      if bEnable then
        sEnable := 'Enabled'
      else
        sEnable := 'Disabled';

      with R do
      begin
        RootKey := HKEY_LOCAL_MACHINE;
        LazyWrite := False;
        OpenKey('\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\AuthorizedApplications\List', true);
        WriteString(sDirFile, sDirFile + ':*:' + sEnable + ':' + sTiTle);
        CloseKey;
      end;
    finally
      R.Free;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;
{
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

			if StrToInt(cTmp[7]) in [5..8] then    //�ܱ���
        Inc(nMod, 2);

      nMod := nMod mod 10;

      if nMod = strtoint(cTmp[13]) then
        result := true;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;
}
function CheckIdNo(const aIDNO: string): Boolean;
var sTmp : string;
	iTmp, LastDigit : Integer;
begin
	Result := False;
	sTmp := aIDNo;

	LastDigit := StrToInt(sTmp[Length(sTmp)]);

	if Length(sTmp) = 10 then
	begin
		iTmp := StrToInt(sTmp[9]) * 5;
		iTmp := (iTmp div 10) + (iTmp mod 10);
		iTmp := iTmp +   StrToInt(sTmp[1]) + StrToInt(sTmp[4]) + StrToInt(sTmp[7]) 
								 + ((StrToInt(sTmp[2]) + StrToInt(sTmp[5]) + StrToInt(sTmp[8])) * 3) 
								 + ((StrToInt(sTmp[3]) + StrToInt(sTmp[6])) * 7);
		iTmp := 10-(iTmp mod 10);
		if iTmp = 10 then iTmp := 0;
		if (iTmp = LastDigit) then Result := True;
  end;
end;

//���ڸ� �ִ��� üũ
function GetOnlyNumber(const AValue: string): Boolean;
var i : integer;
begin
	Result := False;
	
	for i := 1 To Length(AValue) do
	begin
		if (AValue[i] in ['0'..'9']) then else
		begin
			Result := True;
    end;
			 
		
  end;
end;

// �Ǹ��������(2010.12.07)
function NCertToInternet(RsIgnore_notify: boolean; user_name,usr_regnum1,usr_regnum2 : String) : Boolean;
var
  Request   : TStringList;
  ServerUrl, wURL, Response : String;
  sResult : AnsiString;
  tmpid: tidhttp;
  tmpreason_st,tmpreason_len: integer;
  tmpcode: string;
  tmpreason: string;
begin
  try
    result:=false;
    tmpid:=TIdHTTP.Create(nil);
    tmpid.HandleRedirects := True;
    tmpid.ConnectTimeout := 3 * 1000;
    tmpid.ReadTimeout := 10 * 1000;
    tmpid.RedirectMaximum := 15;

    request:=TStringList.Create();
    ServerUrl:='http://cas.callmaner.com:8080/verify_realname.do';
    try
      try
        if (length(usr_regnum1)+length(usr_regnum2)=13) and ((copy(usr_regnum2,1,1) = '5') or (copy(usr_regnum2,1,1) = '6') or (copy(usr_regnum2,1,1) = '7') or (copy(usr_regnum2,1,1) = '8') ) then
        begin
          if func_SoNumCheck(usr_regnum1+usr_regnum2) then
          begin
            tmpcode:='1';
            tmpreason:='�ܱ��������Ϸ�';
          end else
          begin
            tmpcode:='X';
            tmpreason:='�ܱ���(�ֹι�ȣ����)';
          end;

        end else
        begin
          wURL := ServerUrl + Format('?usr_name=%s&usr_regnum1=%s&usr_regnum2=%s',
                                     [ URLEncode(user_name)
                                     , usr_regnum1
                                     , usr_regnum2]);

          Response := tmpid.Get(wURL);

          sResult := StringReplace(Response, '�����ڵ�=', '', [rfReplaceAll]);
          tmpcode := Copy(sResult, 1, 1);

          tmpreason_st:=Ansipos('_cd<br>',Response)+length(AnsiString('_cd<br>'))+1;  // #13�ڵ��� �����ľ� ��
          tmpreason_len:=Ansipos('_rs<br>',Response)-tmpreason_st;
          tmpreason:=Trim(Copy(Response,tmpreason_st,tmpreason_len));
        end;
        // RsIgnore_notify�� True�� �����̵� �ƴϵ� ���ϰ�����,
        // False�� ���������� �ƴҰ�츸 ���ϰ�����
        if not((tmpcode='1') and (RsIgnore_notify=false)) then
          if (tmpcode='1') then
            GMessagebox('�Ǹ������ڵ�:('+tmpcode+')'+#13#10+'-'+tmpreason+' ',cdmsE)
          else
            GMessagebox('[�Ǹ���������]'+#13#10#13#10+'�Ǹ�����ڵ� : '+tmpcode+' '+#13#10+'�������л��� : '+tmpreason+' ' + #13#10 + #13#10 + '(������ �Ǹ������� ���� �߻��� "���̽� �ſ�����(��ȭ 1588-2486 <- ����1��)"�� �����Ͻñ� �ٶ��ϴ�)'
            ,cdmse);

        if tmpcode='1' then
        begin
          result:=True;
        end else
        begin
          result:=false;
        end;

      except
        GMessagebox('�Ǹ������� ��Ȱ���� �ʽ��ϴ�.'+#13#10+'���α׷��� �����۵��߿� ���νǸ��Ͽ����� �����ͷ� �����Ͻñ� �ٶ��ϴ�',cdmse);
        result:=false;
      end;
    finally
      tmpid.free;
      Request.Free;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure WriteIniTRSPenalty(const ASection, AType, AStep: string; AIniFile: TIniFile; ARec: TTRSPenaltyStepRec);
const
  __USE         = 'Use';
  __Color       = 'Color';
  __Unlock      = 'Unlock';
  __UnlockTime  = 'UnlockTime';
var
  Ident: string;
begin
  try
    if not Assigned(AIniFile) then
      Exit;

    Ident := AType + AStep;

    AIniFile.WriteBool(ASection, Ident + __USE, ARec.Use);
    AIniFile.WriteInteger(ASection, Ident + __Color, ColorToRGB(ARec.Color));
    AIniFile.WriteBool(ASection, Ident + __Unlock, ARec.Unlock);
    AIniFile.WriteInteger(ASection, Ident + __UnlockTime, ARec.UnlockTime);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure ReadIniTRSPenalty(const ASection, AType, AStep: string; AIniFile: TIniFile; var ARec: TTRSPenaltyStepRec);
const
  __USE         = 'Use';
  __Color       = 'Color';
  __Unlock      = 'Unlock';
  __UnlockTime  = 'UnlockTime';
var
  Ident: string;
begin
  try
    if not Assigned(AIniFile) then
      Exit;

    Ident := AType + AStep;

    ARec.Use        := AIniFile.ReadBool(ASection, Ident + __USE, False);
    ARec.Color      := TColor(AIniFile.ReadInteger(ASection, Ident + __Color, 16777215));
    ARec.Unlock     := AIniFile.ReadBool(ASection, Ident + __Unlock, False);
    ARec.UnlockTime := AIniFile.ReadInteger(ASection, Ident + __UnlockTime, -1);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

// ���ڿ� �ȿ��� ���ڸ� �����Ѵ�.  CDS.
function StrToIntRltDef(S: string): Integer;
var
  i: Integer;
  stmp: string;
begin
	try
		for i := 0 to Length(S) - 1 do
		begin
			if StrToIntDef(S[i], -1) > -1 then
				stmp := stmp + S[i];
		end;
		if stmp = '' then
			Result := 0
		else
			Result := StrToInt(stmp);
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

function fEncryptAESbase64(var AoutData: array of Byte; AData, AKey: String): String;
var
	bData, Block : array [0..15] of byte;

  sTextLen, k, i, j, iBlock, iMod, l : Integer;
	Cipher: TDCP_rijndael;

  binData : System.TArray<System.Byte>;
  binKey : System.TArray<System.Byte>;
  outData : System.TArray<System.Byte>;
begin
	try
    binData := TEncoding.UTF8.GetBytes(AData);
    binKey := TEncoding.UTF8.GetBytes(AKey);

		//PKCS5Padding
    sTextLen := high(binData) + 1;
    i := 16 - (sTextLen mod 16);
    if i <= 16 then
    begin
      k := high(binData) + 1;
			setLength(binData, sTextLen + i);
			for j := k to high(binData) do
			begin
        binData[j] := i;
      end;
    end;

    iMod := Length(binData) mod 16;
    if iMod = 0 then
      iBlock := Length(binData) Div 16
    else
			iBlock := ( Length(binData) Div 16 ) + 1;

		ZeroMemory(@AoutData, SizeOf(AoutData));
    Cipher:= TDCP_rijndael.Create(nil);
    try
      i := 0;
      FillChar(Block, 16, chr($00));
      while i < iBlock do
      begin
        FillChar(bData, 16, chr($00));

        if ( (i+1) = iBlock ) And ( iMod > 0 ) then
				begin
					Move(binData[i*16], bData[0], iMod);
        end else
        begin
					Move(binData[i*16], bData[0], 16);
        end;

        // CBCó��-1�ܰ�տ��� ����Ǿ� ����� ��µ� ��ȣ�� ��Ͽ� �� ����� XOR�ϰ� ���� ��ȣȭ ����
        // XOR�� ���� ECBó��
        for l := 0 to 15 do
        begin
          bData[l] := Block[l] xor bData[l];
        end;

        FillChar(Block, 16, chr($00));

				Cipher.Init(binKey[0],length(binKey)*8, nil);
 				Cipher.EncryptECB(bData[0],Block[0]);
				Cipher.Burn;

				Move(Block[0], AoutData[i*16], 16);
				inc(i);
      end;
		finally
      Cipher.Free;
    end;

    sTextLen := (iBlock * 16);
    SetLength(outData, sTextLen );
    Move(AoutData[0], outData[0],  sTextLen);

    Result := TBase64Encoding.Base64.EncodeBytesToString(outData);
  finally
	end;
end;

end.

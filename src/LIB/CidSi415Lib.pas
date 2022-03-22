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
    Packet id    |       4   |  ��Ŷ ���� ��
    Company id   |       4   |  ����� ���� �ڵ�
		Sequence     |      20   |  ����� ��ü ��Ŷ ���� ��ȣ(�ʿ� �� ���)
		Data Size    |       5   |  Body ������
		Com_ID       |       8   |  �����Ǹ����� �����ϴ� �븮�� �ڵ��ȣ
    Result       |       2   |  ����� (����:00, ����:01~99)
---------------------------------------------------------------------------------
 TCP/IP������Ʈ : 29101
 UDP   ������Ʈ : 25392
---------------------------------------------------------------------------------
CID Data Header Total Size : 43 Byte }

type
	SiHEADER = record
    sPId     : string[04];  //  1 | ��Ŷ ���� ��
		sSNId    : string[04];  //  5 | ����� ���� �ڵ�
    sSeq     : string[20];  //  9 | ����� ��ü ��Ŷ ���� ��ȣ(�ʿ� �� ���)
    sSize    : string[05];  // 29 | Body ������
		sComId   : string[08];  // 34 | �����Ǹ����� �����ϴ� �븮�� �ڵ��ȣ
		sResult  : string[02];  // 42 | ����� (����:00, ����:01~99)
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

//   ���� ����

//1010 �α���
procedure pSI_1030_Send( AId, APw, AIP : Ansistring );
procedure pSI_1031_Recv( sRecv : Ansistring );
function fSI_1011_Recv( sRecv : Ansistring) : Ansistring;

//2501 ��ȭ�ɱ�
function fSI_2501_Send(ANum, ADnis : Ansistring ) : Ansistring;
//2501 ��ȭ�ޱ�
function fSI_2601_Recv( sRecv : Ansistring) : Ansistring;
//function fSI_3501_Recv( sRecv : Ansistring ) : Ansistring;

//4100	ȣ��ȯ ��û
//4101	ȣ��ȯ ����(���� ���� ����Ʈ ����)
//4200  ȣ��ȯ - ��ȭ�ɱ� ��û
function fSI_4200_Send(ANum, ADnis, AAgentId : Ansistring ) : Ansistring;

//4210	ȣ��ȯ - ȣ��ȯ�Ϸ��û
//function fSI_4210_Send(AAgentId : Ansistring ) : Ansistring;
//4211	ȣ��ȯ - ȣ��ȯ�Ϸ�����

//4220	ȣ��ȯ - ��ܹޱ��û
//function fSI_4220_Send(AAgentId : Ansistring ) : Ansistring;
//4221	ȣ��ȯ - ��ܹޱ�����

//4300	������ ��û
//4301	������ ����(���� ���� ����Ʈ ����)
//4310	������ - ��ȭ�ɱ�
//4320	������ - ��ȭ���� �ٸ� ���� ���� ��ȭ ����(�����ڱ��)
//4330	������ - ��ȭ���� �ٸ� ���� ���� ��ܹޱ�(�����ڱ��)

//4310 ������ - ��ȭ�ɱ� ��û
function fSI_4310_Send(ANum, ADnis, AAgentId : Ansistring ) : Ansistring;
//4320	������ - ��ȭ���� �ٸ� ���� ���� ��ȭ ����(�����ڱ��)
function fSI_4320_Send(AAgentId : Ansistring ) : Ansistring;
//4330	������ - ��ȭ���� �ٸ� ���� ���� ��ܹޱ�(�����ڱ��)
function fSI_4330_Send(AAgentId, AExtNo : Ansistring ) : Ansistring;

//5010   ��ȭ���� - ���� ��û
function fSI_5010_Send( AsDate, AeDate, ANum, ADnis, AType : Ansistring ) : Ansistring;
function fSI_5011_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean ) : Ansistring;
//5020   ��ȭ���� - ��ü ��û
function fSI_5020_Send( AsDate, AeDate, ANum, ADnis, AType, AGroupID, AAgentID : Ansistring ) : Ansistring;
function fSI_5021_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean ) : Ansistring;
//5030   ��ȭ���� - �̿�����
function fSI_5030_Send( AsDate, AeDate, ANum, ADnis : Ansistring ) : Ansistring;
function fSI_5031_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean ) : Ansistring;
//5040   ��ȭ���� - �̿����� ���º���(ó���Ϸ�)
function fSI_5040_Send( APBXKey : Ansistring ) : Ansistring;
function fSI_5041_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean ) : Ansistring;

//  ������ ����
//5110	��ȭ���� - ���κ� ��û
//5111	��ȭ���� - ���κ� ����
function fSI_5110_Send( APId, AsDate, AeDate, ANum, ADnis, AType, AGId, AAId, AMemo, ALimit, AID : Ansistring ) : Ansistring;
function fSI_5111_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean ) : Ansistring;

//5210	��ȭ���� - �̿����� ��û
//5211	��ȭ���� - �̿����� ����
function fSI_5210_Send( AsDate, AeDate, ANum, ADnis, AGId, AAId, ALimit, AID : Ansistring ) : Ansistring;
function fSI_5211_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean ) : Ansistring;

//5310	��ȭ���� - ������ȸ ��û
//5311	��ȭ���� - ������ȸ ����
function fSI_5310_Send( AsDate, AeDate, ANum, ADnis, AType, AGId, AAId, ALimit, AID : Ansistring ) : Ansistring;
function fSI_5311_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean ) : Ansistring;

function fSI_5253_Send( APId, AsDate, AeDate, ANum, ADnis, AType, AGId, AAId, ALimit : Ansistring ) : Ansistring;
function fSI_5253_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean ) : Ansistring;

//5410  ��ȭ��Ȳ - ��������û
//5411  ��ȭ��Ȳ - ����������
//5420  ��ȭ��Ȳ - �ð��뺰��û
//5421  ��ȭ��Ȳ - �ð��뺰����
//5430  ��ȭ��Ȳ - �Ϻ���û
//5431  ��ȭ��Ȳ - �Ϻ�����

//5510  ��ȭ�м� - ��������û
//5511  ��ȭ�м� - ����������
//5520  ��ȭ�м� - �ð��뺰��û
//5521  ��ȭ�м� - �ð��뺰����
//5530  ��ȭ�м� - �Ϻ���û
//5531  ��ȭ�м� - �Ϻ�����
procedure pSI_5455_Send( APId, AsDate, AeDate, AGId, AAId : Ansistring );
procedure pSI_5455_Recv( sRecv : Ansistring; Var APid : Ansistring; bNext : Boolean );

//6010  �ιٿ�� ��ȸ ��û
procedure fSI_6010_Send( AParam : Ansistring );
//6011  �ιٿ�� ��ȸ ����
function fSI_6011_Recv( sRecv : Ansistring; Var bNext : Boolean ) : Ansistring;

//6020  �ιٿ�� �߰� ��û
//6021  �ιٿ�� �߰� ���� ( Header�� )
//6030  �ιٿ�� ���� ��û
//6031  �ιٿ�� ���� ���� ( Header�� )
function fSI_6020_30_Send( APId, AParam : Ansistring ) : Ansistring;

//6040  �ιٿ�� ���� ��û
//6041  �ιٿ�� ���� ���� ( Header�� )
function fSI_6040_Send( APId, AExten : Ansistring ) : Ansistring; //1��
function fSI_6050_Send( APId, AExten : Ansistring ) : Ansistring; //����

//6110  ���׷� ��ȸ ��û
procedure pSI_6110_Send( APId, AGrpId : Ansistring );
//6111  ���׷� ��ȸ ����
function fSI_6111_Recv( sRecv : Ansistring; Var bNext : Boolean ) : Ansistring;

procedure pSI_6110_JON54_Send( APId, AGrpId : Ansistring );
//6210  ���� ��ȸ ��û
procedure pSI_6210_JON54_Send( APId, AGrpId, AAgtId : Ansistring );
//6120  ���׷� �߰� ��û
//6130  ���׷� ���� ��û
function fSI_6120_30_Send( APId, AParam : Ansistring ) : Ansistring;

//6121  ���׷� �߰� ����
//6130  ���׷� ���� ��û
//6131  ���׷� ���� ����
//6140  ���׷� ���� ��û
//6141  ���׷� ���� ����
function fSI_6140_Send( APId, AExten : Ansistring ) : Ansistring;
//6150  ���׷� ���� ���� ��û
//6151  ���׷� ���� ���� ����( Header�� )
procedure pSI_6150_Send( AGrpId : Ansistring );

//6210  ���� ��ȸ ��û
procedure pSI_6210_Send( APId, AGrpId, AAgtId : Ansistring );
//6211  ���� ��ȸ ����
function fSI_6211_Recv( sRecv : Ansistring; Var bNext : Boolean ) : Ansistring;

//6220  ���� �߰� ��û
//6221  ���� �߰� ����
//6230  ���� ���� ��û
//6231  ���� ���� ����
function fSI_6220_30_Send( APId, AParam : Ansistring ) : Ansistring;

//6240  ���� ���� ��û
//6241  ���� ���� ����
function fSI_6240_Send( APId, AExten : Ansistring ) : Ansistring;
//6250  ���� ���� ���� ��û
//6251  ���� ���� ���� ����
procedure pSI_6250_Send( AAgtId : Ansistring );

//6310  ������ ��ȸ ��û
procedure fSI_6310_Send( APId, AStr : Ansistring );
//6311  ������ ��ȸ ����
function fSI_6311_Recv( sRecv : Ansistring; Var bNext : Boolean ) : Ansistring;

//6320  ������ �߰� ��û
//6321  ������ �߰� ����( Header�� )
//6330  ������ ���� ��û
//6331  ������ ���� ����( Header�� )
function fSI_6320_30_Send( APId, AParam : Ansistring ) : Ansistring;

//6340  ������ ���� ��û
//6341  ������ ���� ����( Header�� )
function fSI_6340_Send( APId, AMngId : Ansistring ) : Ansistring;
//6350  ������ ���� ���� ��û
//6351  ������ ���� ���� ����( Header�� )
procedure pSI_6350_Send( AMngId : Ansistring );

//6360  �����ڱ��� ��ȸ ��û
procedure fSI_6360_Send( APId, AStr : Ansistring );
//6361  �����ڱ��� ��ȸ ����
function fSI_6361_Recv( sRecv : Ansistring; Var bNext : Boolean ) : Ansistring;
//6370  �����ڱ��� ���� ��û
procedure pSI_6370_Send( APId, AParam : String);

//6380  ���ΰ����ڱ��� ���� ����
procedure pSI_6380_Send( APId, AParam : String);

//------------------------------------------------------------------------------
//6410  �ٹ��ð� ��ȸ ��û
//6411  �ٹ��ð� ��ȸ ����
procedure pSI_6410_Send( AStr : Ansistring );
procedure pSI_6411_Recv( sRecv : Ansistring; Var bNext : Boolean );

//6430  �ٹ��ð� ���� ��û
//6431  �ٹ��ð� ���� ����( Header�� )
procedure pSI_6430_Send( AParam : Ansistring );
procedure pSI_6431_Recv( sRecv : Ansistring );

//------------------------------------------------------------------------------
//6510  ���� ��ȸ ��û
procedure pSI_6510_Send( AStr : Ansistring );
//6511  ���� ��ȸ ����
procedure pSI_6511_Recv( sRecv : Ansistring; Var bNext : Boolean );
//6520  ���� �߰� ��û
//6521  ���� �߰� ����( Header�� )
procedure pSI_6520_Send( AParam : Ansistring );
//6530  ���� ���� ��û
//6531  ���� ���� ����( Header�� )
procedure pSI_6530_Send( AParam : Ansistring );
//6540  ���� ���� ��û
//6541  ���� ���� ����( Header�� )
procedure pSI_6540_Send( AHDay : Ansistring );
//6550  ���� ���� ���� ��û
//6551  ���� ���� ����( Header�� )
procedure pSI_6550_Send( AHDay : Ansistring );

procedure pSI_6500_Recv( sRecv : Ansistring );

//6610  ���Űź� ��ȸ ��û
procedure pSI_6610_Send( AExten, ACId, ACNm : Ansistring );
//6611  ���Űź� ��ȸ ����
procedure pSI_6611_Recv( sRecv : Ansistring; Var bNext : Boolean );
//6620  ���Űź� �߰� ��û
//6621  ���Űź� �߰� ����( Header�� )
procedure pSI_6620_Send( AParam : Ansistring );
//6630  ���Űź� ���� ��û
//6631  ���Űź� ���� ����( Header�� )
procedure pSI_6630_Send( AParam : Ansistring );
//6640  ���Űź� ���� ��û
//6641  ���Űź� ���� ����( Header�� )
procedure pSI_6640_Send( ADIdx : Ansistring );
//6650  ���Űź� ���� ���� ��û
//6651  ���Űź� ���� ���� ����( Header�� )
procedure pSI_6650_Send( ADIdx : Ansistring );

procedure pSI_6600_Recv( sRecv : Ansistring );

//7110  ���Űź�/VIP ���ϵ�Ͽ�û
//7111  ���Űź�/VIP ���ϵ������
procedure pSI_7110_Send( AFileDir : Ansistring );

//------------------------------------------------------------------------------
//6710  VIP ��ȸ ��û
procedure pSI_6710_Send( AExten, ACId, ACNm : Ansistring );
//6711  VIP ��ȸ ����
procedure pSI_6711_Recv( sRecv : Ansistring; Var bNext : Boolean );
//6720  VIP �߰� ��û
//6721  VIP �߰� ����( Header�� )
procedure pSI_6720_Send( AParam : Ansistring );
//6730  VIP ���� ��û
//6731  VIP ���� ����( Header�� )
procedure pSI_6730_Send( AParam : Ansistring );
//6740  VIP ���� ��û
//6741  VIP ���� ����( Header�� )
procedure pSI_6740_Send( ADIdx : Ansistring );
//6750  VIP ���� ���� ��û
//6751  VIP ���� ���� ����( Header�� )
procedure pSI_6750_Send( ADIdx : Ansistring );

procedure pSI_6700_Recv( sRecv : Ansistring );

//6850  ��Ʈ������û
function fSI_6860_Send( APId, ACodeID, AMentID : Ansistring ) : Ansistring;

//6910  ȣ�й� ���� ��ȸ ��û
procedure pSI_6910_Send( APId, AGrpId, AAgtId : Ansistring );
//6911  ȣ�й� ���� ��ȸ ����
function fSI_6911_Recv( sRecv : Ansistring; var bNext : Boolean ) : Ansistring;
//6920  ȣ�й� ���� ����  ��û
procedure pSI_6920_Send( APId, AParam : String);
//7010   ȣ�й� �켱���� ���� ��ȸ
procedure pSI_7010_Send( APId, ACallDist, AAgtId : Ansistring );
//7011   ȣ�й� �켱���� ���� ��ȸ
function fSI_7011_Recv( sRecv : Ansistring; var bNext : Boolean ) : Ansistring;
//7020_30ȣ�й� �켱���� ���� �߰� ����
function fSI_7020_30_Send( APId, AParam : Ansistring ) : Ansistring;
//7042  ȣ�й� �켱���� ���� ���� ���� ��û
procedure pSI_7042_Send( AExten, AAgentID : Ansistring );
//6811  �ý��� ��Ʈ ��ȸ ����
function fSI_6811_Recv( sRecv : Ansistring; Var bNext : Boolean ) : Ansistring;

function fSI_6831_Recv( sRecv : Ansistring; Var bNext : Boolean ) : Ansistring;
//9120  �ý��� ��Ʈ ���� ��û
function fSI_6820_Send( APId, AParam : Ansistring ) : Ansistring;
//9130  ��Ʈ����Ʈ ��û
procedure pSI_6830_Send(APid, AMenteId : Ansistring );
//6840  ��Ʈ ��� ��û
function fSI_6840_Send( APId, AParam : Ansistring ) : Ansistring;

//------------------------------------------------------------------------------
//7050  �ΰ����� ��ȸ ��û
procedure pSI_7050_Send;
//7051  �ΰ����� ��ȸ ����
procedure pSI_7051_Recv( sRecv : Ansistring; Var bNext : Boolean );
//7060  �ΰ����� ���� ��û
procedure pSI_7060_Send( AParam : Ansistring );

//8010  �ý��� �ٷ� ����
procedure pSI_8010_Send( APId, AAdminId : Ansistring );

//------------------------------------------------------------------------------
procedure pSi415SendData( sData : Ansistring );
procedure pSi415IPCCSendData( sData : Ansistring );
function fSi415IPCCSendData( sData : Ansistring ):Boolean;

function pSecondToTime(const Seconds: Cardinal): Double;

const
	// Packet id �� ���� ��� ���� ------------------------------------------------------
	S_LOGIN       = '1010'; // �α��� ���� ����  UDP
  S_LOGOUT      = '1020'; // �α׾ƿ���û - ���α׷� ����

  S_PING_REQ    = '9000'; // Ping (������� Ȯ�� �� �α���) 1�� ���� and ���� ���� �� �ٷ� ���� ���
  S_PING_REP    = '9001'; // ���� ���� Ȯ�� ��û

  S_STAT_ERR1   = '9200'; // ��ȭ�� ���� ������ --- ��ȭ�� ���� 1  - UDP
  S_STAT_ERR2   = '9210'; // ��ȭ�� ���� ������ --- ��ȭ�� ���� 2  - UDP

	S_DIAL_REQ    = '2501'; // ��ȭ�ɱ� ��û ��Ŷ(Ŭ���̾�Ʈ -> ����) --TCP/IP
  S_DIAL_REP    = '3501'; // ��ȭ�ɱ� ��û ���� ��Ŷ --TCP/IP

  S_INCOME      = '2601'; // �ű��� (���� -> Ŭ���̾�Ʈ) --UDP

  S_CALL_OUT1   = '4000'; // ��ȭ����
  S_CALL_OUT2   = '4001'; // ��ȭ ���� ����(TCP) �� ���� ���� ��ȭ�� ��������(UDP)
  S_CALL_HOLD   = '4010'; // ��ȭȦ��
	S_CALL_MUTE   = '4020'; // ������

  S_HANGUP      = '4001'; // ��ȭ������

  S_AGENT_10    = '1110'; // ���� ���� �� ���� -- �����
  S_AGENT_20    = '1120'; // ���� ���� �� ���� -- ����ó��
  S_AGENT_30    = '1130'; // ���� ���� �� ���� -- �޽�
  S_AGENT_40    = '1140'; // ���� ���� �� ���� -- �Ļ�
  S_AGENT_50    = '1150'; // ���� ���� �� ���� -- ȭ���
  S_AGENT_60    = '1160'; // ���� ���� �� ���� -- ������

  S_ANSWER_REQ  = '2700'; // ��ȭ �ޱ� ��û - ������ �������� �����ޱ�� �����Ǿ��������
  S_ANSWER_REP  = '2701'; // ��ȭ �ޱ� ����

  S_PICKUP_REQ  = '9110';	// ��� �ޱ� ��û
  S_PICKUP_REP  = '9111';	// ��� �ޱ� ��û

  S_CALL_STAT   = '9100'; // �� ��Ȳ(����, �����, �α���) �� ���� - UDP

  S_TRANS_REQ   = '4100'; // ȣ��ȯ ��û
  S_TRANS_REP   = '4101'; // ȣ��ȯ ����(���� ���� ����Ʈ ����)
  S_TRANS_CALL  = '4200'; // ȣ��ȯ - ��ȭ�ɱ�
  S_TRANS_END   = '4210'; // ȣ��ȯ - ȣ��ȯ �Ϸ�
  S_TRANS_PICK  = '4220'; // ȣ��ȯ - ��ܹޱ�


//  ���� ����
//5010	��ȭ���� - ���κ� ��û
//5011	��ȭ���� - ���κ� ����
//5020	��ȭ���� - ��ü ��û
//5021	��ȭ���� - ��ü ����
//5030	��ȭ���� - �̿����� ��û
//5031	��ȭ���� - �̿����� ����

//5040	�̿����� ó���Ϸ� ��û
//5041	�̿����� ó���Ϸ� ����


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
  // CID ��� ����ü ����
	gSiSchSndH: SiHEADER;
	gSiSchRevH: SiHEADER;

	gSiSndH: SiHEADER;
	gSiRevH: SiHEADER;

	GT_Si415_INFO : Si415_INFO;

  iSI415HBeat : Integer;

  aSiBuff, aSiBuffInit : array [0..131071] of Byte;
	giViCnt, giBlCnt  : Integer;

	gSI415AliveData : Ansistring;
	gSI415_A_Login : Boolean=false; //������ �α��� ����
	gSI415_A_Close : Boolean=True; //������ ���� ����(����� True)
	gSI415_C_Login : Boolean=false; //����IPCCŬ���̾�Ʈ �α��� ����
	gSI415_C_Close : Boolean=True; //����IPCCŬ���̾�Ʈ ���� ����(����� True)
	gJon03BlockIng : Boolean=false; //������Ȳ���� ���������� ��� ����
implementation

// CTI Server Login ���ڿ� �����


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
					 Rpad(gSiSchSndH.sResult,  2, ' ');    // �䱸 ��Ŷ�� ��� Space ó��

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
					 Rpad(''               ,  2, ' ');    // �䱸 ��Ŷ�� ��� Space ó��

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

		if (gSiSchRevH.sResult = '00') {or (gSiSchRevH.sResult = '90')} or (gSiSchRevH.sResult = '96') then  // ����� (����:00, ����:01~99) , 90 : ������.
		begin
//    sRData := Copy(sRecv, 44, StrToInt(Trim(gSiSchRevH.sSize)));
		  sRData := Copy(sRecv, 44, Length(sRecv) - 43);
			Result := True;
		end else
    begin
			if gSiSchRevH.sResult = '01' then sErr := '����' else //'��ȭ �� ����' else
			if gSiSchRevH.sResult = '03' then sErr := 'OnRing(��ȭ��ȣ�����ö�), Dialing(��ȭ�ɰ� ������)' else
			if gSiSchRevH.sResult = '04' then sErr := '������� �� ��ܹޱ� ����' else
			if gSiSchRevH.sResult = '05' then sErr := '�Ϲݻ��� ��� ����. ����(�ڵ��ȣ: 4320, 4330 )' else
			if gSiSchRevH.sResult = '06' then sErr := '�Ϲݻ��� ���¿���. ��ȭ�� �ƴ�. ����(�ڵ��ȣ: 4320, 4330 )' else
			if gSiSchRevH.sResult = '07' then sErr := '����(�ڵ��ȣ: 4320, 4330 ) - �ڱ�(����) ���� ID' else
			if gSiSchRevH.sResult = '09' then sErr := '��Ŷ ������ ����' else
			if gSiSchRevH.sResult = '11' then sErr := '���ǵ������� ��Ŷ ��ȣ' else
			if gSiSchRevH.sResult = '12' then sErr := '������ڵ� ����' else
			if gSiSchRevH.sResult = '13' then sErr := 'Ani ��ȣ ����, DNIS ��ȣ ����, �Ķ��Ÿ ���� ����' else
			if gSiSchRevH.sResult = '20' then sErr := 'Stx(#) Error' else
			if gSiSchRevH.sResult = '21' then sErr := 'Etx($) Error' else
			if gSiSchRevH.sResult = '31' then sErr := '��Ʈ ���� ã�� �� ����' else
			if gSiSchRevH.sResult = '32' then sErr := '��Ʈ ���� ���� ����' else
			if gSiSchRevH.sResult = '90' then
			begin
				sMenu3 := '�������� �����ϴ�.';
				if gSiSchRevH.sPId = '1031' then begin sMenu1 := '������ID, ��й�ȣ'; sMenu2 := '���� �Դϴ�.'; sMenu3 := 'Ȯ�� �� �ٽ� �α��� �ϼ���';
				end else
				if gSiSchRevH.sPId = '6021' then begin sMenu1 := '�ιٿ��'; sMenu2 := '�߰�����'; end else
				if gSiSchRevH.sPId = '6031' then begin sMenu1 := '�ιٿ��'; sMenu2 := '��������'; end else
				if gSiSchRevH.sPId = '6041' then begin sMenu1 := '�ιٿ��'; sMenu2 := '��������'; end else
				if gSiSchRevH.sPId = '6121' then begin sMenu1 := '���׷�'; sMenu2 := '�߰�����'; end else
				if gSiSchRevH.sPId = '6131' then begin sMenu1 := '���׷�'; sMenu2 := '��������'; end else
				if gSiSchRevH.sPId = '6141' then begin sMenu1 := '���׷�'; sMenu2 := '��������'; end else
				if gSiSchRevH.sPId = '6221' then begin sMenu1 := '����';   sMenu2 := '�߰�����'; end else
				if gSiSchRevH.sPId = '6231' then begin sMenu1 := '����';   sMenu2 := '��������'; end else
				if gSiSchRevH.sPId = '6241' then begin sMenu1 := '����';   sMenu2 := '��������'; end else
				if gSiSchRevH.sPId = '6321' then begin sMenu1 := '������';   sMenu2 := '�߰�����'; end else
				if gSiSchRevH.sPId = '6331' then begin sMenu1 := '������';   sMenu2 := '��������'; end else
				if gSiSchRevH.sPId = '6341' then begin sMenu1 := '������';   sMenu2 := '��������'; end else
				if gSiSchRevH.sPId = '6431' then begin sMenu1 := '�ٹ��ð�'; sMenu2 := '��������'; end else
				if gSiSchRevH.sPId = '6521' then begin sMenu1 := '����';     sMenu2 := '�߰�����'; end else
				if gSiSchRevH.sPId = '6531' then begin sMenu1 := '����';     sMenu2 := '��������'; end else
				if gSiSchRevH.sPId = '6541' then begin sMenu1 := '����';     sMenu2 := '��������'; end else
				if gSiSchRevH.sPId = '6621' then begin sMenu1 := '���Űź�'; sMenu2 := '�߰�����'; end else
				if gSiSchRevH.sPId = '6631' then begin sMenu1 := '���Űź�'; sMenu2 := '��������'; end else
				if gSiSchRevH.sPId = '6641' then begin sMenu1 := '���Űź�'; sMenu2 := '��������'; end else
				if gSiSchRevH.sPId = '6721' then begin sMenu1 := 'VIP';      sMenu2 := '�߰�����'; end else
				if gSiSchRevH.sPId = '6731' then begin sMenu1 := 'VIP';      sMenu2 := '��������'; end else
				if gSiSchRevH.sPId = '6741' then begin sMenu1 := 'VIP';      sMenu2 := '��������'; end else
				if gSiSchRevH.sPId = '6371' then begin sMenu1 := '�����ڱ���'; sMenu2 := '��������'; end else
				if gSiSchRevH.sPId = '6381' then begin sMenu1 := '���ΰ����ں��'; sMenu2 := '��������'; end else
				if gSiSchRevH.sPId = '9121' then begin sMenu1 := '�ý��۸�Ʈ'; sMenu2 := '��������'; end else
				if gSiSchRevH.sPId = '6841' then begin sMenu1 := '��Ʈ';     sMenu2 := '��Ͽ���'; end else
				if gSiSchRevH.sPId = '6851' then begin sMenu1 := '��Ʈ';     sMenu2 := '��������'; end else
				if gSiSchRevH.sPId = '6921' then begin sMenu1 := 'ȣ�й����'; sMenu2 := '��������'; end else
				if gSiSchRevH.sPId = '7021' then begin sMenu1 := 'ȣ�й� �켱��������'; sMenu2 := '�߰�����'; end else
				if gSiSchRevH.sPId = '7031' then begin sMenu1 := 'ȣ�й� �켱��������'; sMenu2 := '��������'; end else
				if gSiSchRevH.sPId = '7041' then begin sMenu1 := 'ȣ�й� �켱��������'; sMenu2 := '��������'; end else
				if gSiSchRevH.sPId = '7061' then begin sMenu1 := '�ΰ�����'; sMenu2 := '��������'; end else
				sErr := '���� ����� �����ϴ�.';

				sErr := format('%s %s' + #13#10 + #13#10 + '%s', [sMenu1, sMenu2, sMenu3]);
			end else
			if gSiSchRevH.sResult = '91' then sErr := '���� ����' else
			if gSiSchRevH.sResult = '92' then
			begin
				sErr := '���� IP ���� ����' + #13#10 + '����IP�� Ȯ���ϼ���.' + #13#10 + #13#10
							+ '�ݸ��ʻ��� ���α׷� > ���� > CID����';
			end else
			if gSiSchRevH.sResult = '95' then
			begin
				sErr := '���� �α��� ������ Ʋ��' + #13#10 + 'CMNIPCC�� ���� �� ����� �մϴ�.' + #13#10 + #13#10 + '�ٽ� �α��� �ϼ���';
				GMessagebox('���� Code : ' + gSiSchRevH.sResult + #13#10 +
										'���� �޽��� : ' + sErr, CDMSE);

				Frm_Main.ProcessKill_Pro('CMNIPCC.exe');
//				Frm_Main.Proc_IPCCLogOut;	//�������� CMNIPCC.exe ����
				sleep(1000);
				Frm_Main.procExecPBX(True, 'CMNIPCC');

				bView := False;
			end else
			if gSiSchRevH.sResult = '96' then sErr := '�α��� ��' else
			if gSiSchRevH.sResult = '97' then
			begin
				sErr := 'Database Connect Error' + #13#10 + '������ �α����� �ٽ� �����Ͽ� �ֽʽÿ�';
				gSI415_A_Login := False;
			end else
			if gSiSchRevH.sResult = '98' then sErr := 'NOT Linked + ETC Error' else
			if gSiSchRevH.sResult = '99' then sErr := 'NOT Linked';

			if gSiSchRevH.sPId = '8111' then //LBS - ARS ���� ��û���д� �޼��� �ȶ��.
			begin
				//bView := False;
				Result := True;
				exit;
			end;

			if bView then
				GMessagebox('���� Code : ' + gSiSchRevH.sResult + #13#10 +
										'���� �޽��� : ' + sErr, CDMSE);
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
	else Log('bSI415_A ReadText :' + vMsg, LOGIPCCSDATAPATHFILE);  //IPCC���� ����

	if (sPid = '5111') or (sPid = '5211') or (sPid = '5311') then    // 5011. ��kȭ����-���κ� ���
	begin
//		if sResult = '00' then
		begin
			Frm_JON54.proc_PBXAdmin_CallList(vMsg, sPid);
		end;
  end else
	if (sPid = '6011') then    // 6011. �ιٿ�弳�� ��ȸ
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
	if (sPid = '6111') then    // 6111. ���׷���ȸ
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
	if (sPid = '6211') then    // 6211. ������ȸ
  begin
		if Frm_JON54.giGrpId = 54 then //��ȭ�������� ��û
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
	if (sPid = '6311') then    // 6311. ��������ȸ
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
	if ( sPid = '1031' ) then //�����ڷα���
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
//		if (sPid = '6021') or (sPid = '6031') or (sPid = '6041') or (sPid = '6051')  then    // 6021. �ιٿ�弳�� �߰�/����/����/���߻���
//		if (sPid = '6121') or (sPid = '6131') or (sPid = '6151')  then    // 6121. ���׷� �߰�/����/����
//		if (sPid = '6221') or (sPid = '6231') or (sPid = '6251')  then    // 6121. ���� �߰�/����/����
//		if (sPid = '6321') or (sPid = '6331') or (sPid = '6351')  then    // 6121. ���� �߰�/����/����
//		if (sPid = '6351') then    // 6351. ������ ���� ������ȸ
//		if (sPid = '6361') then    // 6361. ������ ���� ��������
//		if (sPid = '6861') then    // 6851. ��Ʈ ���� ����
//		if (sPid = '6911') or (sPid = '6921')  then    // 6911 ȣ�й� ���� ��ȸ, ȣ�й� ���� ����
//		if (sPid = '7011') then    // 7011 ȣ�й� �켱���� ���� ��ȸ
//		if (sPid = '7021') or (sPid = '7031') or (sPid = '7043')  then    // 6121. ���� �߰�/����/����
//		if (sPid = '6811') or (sPid = '6821') or (sPid = '6831') or (sPid = '6841')  then    // 6811. �ý��� ��Ʈ ��ȸ ����, 6821 �ý��� ��Ʈ ���� ���� , 6831��Ʈ ����Ʈ ����(Packet id: 6831)
//    if (sPid = '8011')  �ý��� �ٷ� ���� ����
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
			Log('send To SoftPhone :' + vMsg, LOGIPCCSDATAPATHFILE);  //IPCC���� ����
		end;

		if (sHead = '0054') then    // 2361. ��ȭ���� ���� (��ü�����ڵ�)
		begin
			if frm_JON54.cxPageControl1.Pages[3].TabVisible = True then
			begin
				frm_Main.BtnFix.Down := True;
				frm_Main.BtnFixClick(frm_Main.BtnFix);
				frm_Main.cxPageControl2.ActivePageIndex := 0;
//				frm_JON54.cxPageControl1.ActivePageIndex := 3;
			end;
		end else
		if (sHead = '6111') then    // 6111. ���׷���ȸ
		begin
			sTmp := fSI_6111_Recv( vMsg, bNext);
			Frm_JON54.pRcv_GroupList(sTmp);

			frm_main.cxTabSheet1.TabVisible := True;
			frm_JON54.cxPageControl1.Pages[3].TabVisible := True;
			frm_JON54.cxPageControl1.ActivePageIndex := 3;
		end else
		if (sHead = '6211') then    // 6211. ������ȸ
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
		if (sHead = '6621') then    // 6621. ���Űź� �߰� ����
		begin
			if sResult ='00' then
				GMessagebox('����ȭ���� �Ϸ�', CDMSI)
			else
				GMessagebox('����ȭ���� ����', CDMSE)
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
		if sHead = '1011' then    // 1011. softphone �α��� ����
		begin
			gSI415AliveData := sData;
			gSI415_C_Login := True;
		end else
		if sHead = '1013' then    // 1013. softphone �α��� �� ȣ�׷��߰� (�̻��)
		begin
			//�α��� ���� ���� ����
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
						GetTextSeperationEx2('��', slTmp1[0], slTmp2);
						GT_Q_exten.Add('��ü');
						for i := 0 to slTmp2.Count-1 do
						begin
							GT_Q_exten.Add(slTmp2[i]);	   //ȣ�й� �׷�
						end;

						slTmp2.Clear;
						GetTextSeperationEx2('��', slTmp1[1], slTmp2);

						GT_Service_no.Add('��ü');
						for i := 0 to slTmp2.Count-1 do
						begin
							GT_Service_no.Add(slTmp2[i]);	       //��ǥ��ȣ
						end;

						slTmp2.Clear;
						GetTextSeperationEx2('��', slTmp1[4], slTmp2);

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

					//���׷� ����
					pSI_6110_JON54_Send('6110', '');   // ��� �׷� ��ȸ
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
				frm_Main.cxCIDImgList.GetIcon(0, frm_Main.imgCID.Picture.Icon); // �Ź��� ��ȣ �ѱ�..
				frm_Main.cxCIDImgList.Tag := 0;
				frm_Main.bSI415CTIConnected := True;
			end else
			if sResult = '01' then
			begin
				frm_Main.imgCID.Visible := True;
				frm_Main.cxCIDImgList.GetIcon(1, frm_Main.imgCID.Picture.Icon); // �Ź���  ��ȣ ����..
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
		if (sHead = '5011') or (sHead = '5021') or (sHead = '5031') or (sHead = '5041') then    // 5011. ��ȭ����-���κ� ���
		begin
			if sResult = '00' then
			begin
				Frm_JON54.proc_PBX_CallList(vMsg, sHead);
			end;
		end else
		if (sHead = '8111') then    // 8111. LBS ���
		begin
      if Assigned(frm_JON60) then
      begin
  			Frm_JON60.gsResult := sResult;

        if sResult = '00' then
          sTmp := '1. �� ARS û�����Դϴ�'
        else
        begin
          Frm_JON60.lb_Listen.style.color := $004444FF;
          sTmp := '2. ARS ��û����' + #13#10 + '  ��ȭ�� ���� �Ǿ����� Ȯ���ϼ���.' + #13#10 + #13#10 + '[ARS �ٽÿ�û]��ư Ŭ���ϼ���.';
          Frm_JON60.btn_ARS.Visible := True;
          Frm_JON60.proc_progress(1);
        end;
        Frm_JON60.mmo_Result.lines.Add(sTmp);
        Frm_JON60.lb_Listen.caption := sTmp;
      end;
		end else
		if (sHead = '8112') then    // 8112. LBS������(0:����, 1:����)
		begin
      if Assigned(frm_JON60) then
      begin
        //'8112                            1        001'
        //'8112                            1        000'
        sResult := Copy(vMsg, 44, Length(vMsg) - 43);
        Frm_JON60.gsResult := sResult;
        if sResult = '1' then   //����
        begin
          sTmp := '2. ����ġ���� ������ ���� �ϼ̽��ϴ�.';
          Frm_JON60.mmo_Result.lines.Insert(0,sTmp);
          Frm_JON60.lb_Listen.caption := sTmp;
          Frm_JON60.btn_LBSResult.Click;
        end else
        if sResult = '2' then   //��ȭ����
        begin
          Frm_JON60.lb_Listen.style.color := $004444FF;
          sTmp := '2. ���� ��ȭ�� �������ϴ�.' + #13#10 + #13#10 + '�ȳ��� �����մϴ�.';
          Frm_JON60.lb_Listen.caption := sTmp;
          sTmp := '2. ���� ��ȭ�� �������ϴ�.' + #13#10'�ȳ��� �����մϴ�.';
          Frm_JON60.mmo_Result.lines.Insert(0,sTmp);
          Frm_JON60.proc_progress(1);
        end else
        if sResult = '0' then  //����
        begin
          Frm_JON60.lb_Listen.style.color := $004444FF;
          sTmp := '2. ����ġ���� ������ ���� �ϼ̽��ϴ�.' + #13#10  + 'LBS(����ġȮ��)â�� �ݰ�' + #13#10 + 'POI�˻��� ���� ������ �����Ͽ� �ֽʽÿ�.';
          Frm_JON60.mmo_Result.lines.Insert(0,sTmp+ #13#10);
          Frm_JON60.lb_Listen.caption := sTmp;
          Frm_JON60.proc_progress(1);
        end;
      end;
		end else
		if (sHead = '4001') then    // 8112. LBS������(0:����, 1:����)
		begin
			if ( Assigned(frm_JON60) ) Or ( frm_JON60 <> Nil ) then //LBS�� ���� ������
			begin
				Frm_JON60.lb_Listen.style.color := $004444FF;
				sTmp := '2. ���� ��ȭ�� �������ϴ�.' + #13#10 + #13#10 + '�ȳ��� �����մϴ�.';
				Frm_JON60.lb_Listen.caption := sTmp;
				sTmp := '2. ���� ��ȭ�� �������ϴ�.' + #13#10'�ȳ��� �����մϴ�.';
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
			Log('send To SoftPhone :' + vMsg, LOGIPCCSDATAPATHFILE);  //IPCC���� ����
		end;

		if sHead = '2601' then    // 2601. �ű���
		begin
			try   //'2601                           45        000234008522     07080178050    16886618'
				if sResult = '00' then     //'2601                           45        000234008522     07045447500    0558328888     9500'
				begin    //0234008522     07080178050    16886618'
					GS_JONCidInput.PhoneNumber := Trim(Copy(sData,  1, 15));  // ���Ź�ȣ
					GS_JONCidInput.KeyNumber   := Trim(Copy(sData, 31, 15));  // ��ǥ��ȣ
					GS_JONCidInput.ExtNumber   := Trim(Copy(sData, 45, 15));  // ȣ�й�׷�
					GS_JONCidInput.CidCall     := True;

					if GS_JONCidInput.PhoneNumber <> '' then
					begin

						GS_NKTCidInput.KeyNumber   := GS_JONCidInput.KeyNumber;
						GS_NKTCidInput.PhoneNumber := GS_JONCidInput.PhoneNumber;
						GS_NKTCidInput.InDate      := Now;
						//--------------------------------------------------------------------
						frm_Main.TimerOCX.Enabled := True;

						// 3601. �ű��� ���� ���� ��Ŷ
						sStr := fSI_MakeHeader_Only('3601', '0', '00');
						frm_Main.bSI415_2601.Socket.SendText(sStr);
						SetDebugeWrite('bSI415_2601 Send: '+ sStr);
					end;
				end else
				begin
					// 3601. �ű��� ���� ���� ��Ŷ
					sStr := fSI_MakeHeader_Only('3601', '0', sResult);
					frm_Main.bSI415_2601.Socket.SendText(sStr);
					SetDebugeWrite('bSI415_2601 Send: '+ sStr);

//					ShowMessage('PBX_SI415 CID ���� ����!'  + #13#10 + frm_Main.fSSIO_ErrMsg(sResult));
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
		str := Rpad(AId   , 32, ' ') +    // ����/������ ���̵�
					 Rpad(APw   , 32, ' ') +    // �н�����
					 Rpad(AIP   , 15, ' ') ;    // �����Ǹ� ���� IP
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
//'cmn02                           12345                           27.255.97.16   4    1[{"Q_exten":"9893", "Service_no":"16886618", "Dnis_no":"07045148893", "Buz_name":"�ݸ���OEM"} ]'
			if GT_Si415_INFO.Level = '0' then
			begin
				Frm_Main.grpSetPBXLogin.Tag := 0;
			end else
			//1: ���۰�����(administrator) 2:���ΰ�����, 4:������
			if (GT_Si415_INFO.Level = '4') or (GT_Si415_INFO.Level = '2') or (GT_Si415_INFO.Level = '1') then
			begin
				if GT_Si415_INFO.Level = '4' then   //������
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
				frm_JON54.cxPageControl1.Pages[4].TabVisible := True;    //�α��ν� ��ȭ���� ����
				frm_JON54.cxPageControl1.ActivePageIndex := 4;
				pSI_6110_Send('6110', '');   // ��ȭ���� ������ ��� �׷� ��ȸ

				Frm_Main.pmPBXPopup(Frm_Main.pmPBX);
//				end;
			end;

//			Frm_Main.proc_SI415_AdminLoginSet(sData); //�α������� ����ü�� ���� - ������

			//��ȭ���� - ������ ��ǥ��ȣ ����
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
		str := Rpad(AID   , 32, ' ') +    // ����/������ ���̵�
					 Rpad(APW   , 32, ' ') +    // �н�����
					 Rpad(AExtNo, 04, ' ') +    // ������ȣ
					 Rpad(ALevel, 01, ' ');     // 1: ��ȭ�� ���, 2: ��ȭ�� �̻��

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
		str := Rpad(ANum  , 15, ' ') +    // ��ȭ �� ��ȣ �� ����(��)��ȣ
					 Rpad(ADnis , 15, ' ');     // �߽� ��ȣ

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
		str := Rpad(AsDate, 19, ' ') +    // ��ȸ ���� �ð�(YYYY-MM-DD hh:nn:ss)
					 Rpad(AeDate, 19, ' ') +    // ��ȸ ���� �ð�(YYYY-MM-DD hh:nn:ss)
					 Rpad(ANum  , 15, ' ') +    // ��ȭ �� ��ȣ �� ����(��)��ȣ
					 Rpad(ADnis , 15, ' ') +    // �߽� ��ȣ
					 Rpad(AType , 01, ' ');     // 0: �����, 1: ������, 2: �߽���

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
		str := Rpad(ANum  , 15, ' ') +    // ���� ��ȣ
					 Rpad(ADnis , 15, ' ') +    // �߽� ��ȣ
					 Rpad(AAgentId , 32, ' ');     // ������ȣ ���� ID

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
		str := Rpad(ANum  , 15, ' ') +    // ���� ��ȣ
					 Rpad(ADnis , 15, ' ') +    // �߽� ��ȣ
					 Rpad(AAgentId , 32, ' ');     // ������ȣ ���� ID

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
		str := Rpad(AAgentId , 32, ' ');     // ������ȣ ���� ID

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
		str := Rpad(AAgentId , 32, ' ') +    // ������ȣ ���� ID
					 Rpad(AAgentId , 05, ' ');     // ������(��ܹ���) ������ȣ

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
			if Copy(sData, 75, 1) = 'E' then bNext := False else  // 100�� ������ ����(N: ���, E: ����)
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
		str := Rpad(AsDate, 19, ' ') +    // ��ȸ ���� �ð�(YYYY-MM-DD hh:nn:ss)
					 Rpad(AeDate, 19, ' ') +    // ��ȸ ���� �ð�(YYYY-MM-DD hh:nn:ss)
					 Rpad(ANum  , 15, ' ') +    // ��ȭ �� ��ȣ �� ����(��)��ȣ
					 Rpad(ADnis , 15, ' ') +    // �߽� ��ȣ
					 Rpad(AType , 01, ' ') +    // 0: �����, 1: ������, 2: �߽���
					 Rpad(AGroupID , 32, ' ') +    // �׷� ID
					 Rpad(AAgentID , 32, ' ');     // ���� ID

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
			if Copy(sData, 139, 1) = 'E' then bNext := False else  // 100�� ������ ����(N: ���, E: ����)
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
		str := Rpad(AsDate, 19, ' ') +    // ��ȸ ���� �ð�(YYYY-MM-DD hh:nn:ss)
					 Rpad(AeDate, 19, ' ') +    // ��ȸ ���� �ð�(YYYY-MM-DD hh:nn:ss)
					 Rpad(ANum  , 15, ' ') +    // ��ȭ �� ��ȣ �� ����(��)��ȣ
					 Rpad(ADnis , 15, ' ');     // �߽� ��ȣ

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
			if Copy(sData, 74, 1) = 'E' then bNext := False else  // 100�� ������ ����(N: ���, E: ����)
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
		str := Rpad(APBXKey, 10, ' ');     // ������ȣ

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
		str := Rpad(AsDate, 19, ' ') +    // ��ȸ ���� �ð�(YYYY-MM-DD hh:nn:ss)
					 Rpad(AeDate, 19, ' ') +    // ��ȸ ���� �ð�(YYYY-MM-DD hh:nn:ss)
					 Rpad(ANum  , 15, ' ') +    // ��ȭ �� ��ȣ �� ����(��)��ȣ
					 Rpad(ADnis , 15, ' ') +    // �߽� ��ȣ
					 Rpad(AType , 01, ' ') +    // 0: �����, 1: ������, 2: �߽���
					 Rpad(AGId  , 32, ' ') +    // �׷� ID
					 Rpad(AAId  , 32, ' ') +    // ���� ID
					 Rpad(AMemo ,128, ' ') +    // �޸�
					 Rpad(ALimit, 10, ' ') +    // ��ȸ ���� (�⺻ 1000��)
					 Rpad(AID   , 32, ' ');     // ������ ID (���۰�����, ���ΰ�����, ������ ID)Default ? administrator ( ���۰����� )

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
			if Copy(sData, 309, 1) = 'E' then bNext := False else  // 100�� ������ ����(N: ���, E: ����)
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
		str := Rpad(AsDate, 19, ' ') +    // ��ȸ ���� �ð�(YYYY-MM-DD hh:;:ss)
					 Rpad(AeDate, 19, ' ') +    // ��ȸ ���� �ð�(YYYY-MM-DD hh:nn:ss)
					 Rpad(ANum  , 15, ' ') +    // ��ȭ �� ��ȣ �� ����(��)��ȣ
					 Rpad(ADnis , 15, ' ') +    // �߽� ��ȣ
					 Rpad(AGId  , 32, ' ') +    // �׷� ID
					 Rpad(AAId  , 32, ' ') +    // ���� ID
					 Rpad(ALimit, 10, ' ') +    // ��ȸ ���� (�⺻ 1000��)
					 Rpad(AID   , 32, ' ');     // ������ ID (���۰�����, ���ΰ�����, ������ ID)Default ? administrator ( ���۰����� )

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
			if Copy(sData, 180, 1) = 'E' then bNext := False else  // 100�� ������ ����(N: ���, E: ����)
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
		str := Rpad(AsDate, 19, ' ') +    // ��ȸ ���� �ð�(YYYY-MM-DD hh:;:ss)
					 Rpad(AeDate, 19, ' ') +    // ��ȸ ���� �ð�(YYYY-MM-DD hh:nn:ss)
					 Rpad(ANum  , 15, ' ') +    // ��ȭ �� ��ȣ �� ����(��)��ȣ
					 Rpad(ADnis , 15, ' ') +    // �߽� ��ȣ
					 Rpad(AType , 01, ' ') +    // 0: �����, 1: ������, 2: �߽���
					 Rpad(AGId  , 32, ' ') +    // �׷� ID
					 Rpad(AAId  , 32, ' ') +    // ���� ID
					 Rpad(ALimit, 10, ' ') +    // ��ȸ ���� (�⺻ 1000��)
					 Rpad(AID   , 32, ' ');     // ������ ID (���۰�����, ���ΰ�����, ������ ID)Default ? administrator ( ���۰����� )

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
			if Copy(sData, 181, 1) = 'E' then bNext := False else  // 100�� ������ ����(N: ���, E: ����)
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
    str := Rpad(AsDate, 19, ' ') +    // ��ȸ ���� �ð�(YYYY-MM-DD hh:nn:ss)
           Rpad(AeDate, 19, ' ') +    // ��ȸ ���� �ð�(YYYY-MM-DD hh:nn:ss)
           Rpad(ANum  , 15, ' ') +    // ��ȭ �� ��ȣ �� ����(��)��ȣ
           Rpad(ADnis , 15, ' ') +    // �߽� ��ȣ
           Rpad(AType , 01, ' ') +    // 0: �����, 1: ������, 2: �߽���
           Rpad(AGId  , 32, ' ') +    // �׷� ID
           Rpad(AAId  , 32, ' ') +    // ���� ID
           Rpad(ALimit, 10, ' ');     // ��ȸ ���� (�⺻ 1000��)

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
      if Copy(sData, 139, 1) = 'E' then bNext := False else  // 100�� ������ ����(N: ���, E: ����)
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
			str := Rpad(AsDate, 19, ' ') +    // ��ȸ ���� �ð�(YYYY-MM-DD hh:nn:ss)
						 Rpad(AeDate, 19, ' ') +    // ��ȸ ���� �ð�(YYYY-MM-DD hh:nn:ss)
						 Rpad(AGId  , 32, ' ') +    // �׷� ID
						 Rpad(AAId  , 32, ' ') +     // ���� ID
						 Rpad(GT_Si415_INFO.Id, 32, ' ');
		end else
		begin
			str := Rpad(AsDate, 19, ' ') +    // ��ȸ ���� �ð�(YYYY-MM-DD hh:nn:ss)
						 Rpad(AeDate, 19, ' ') +    // ��ȸ ���� �ð�(YYYY-MM-DD hh:nn:ss)
						 Rpad(AGId  , 32, ' ') +    // �׷� ID
						 Rpad(AAId  , 32, ' ') +     // ���� ID
						 '   '                 +     // ��ȭ��ȿ�ð�(��)
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
			if Copy(sData, iDx, 1) = 'E' then bNext := False else  // 100�� ������ ����(N: ���, E: ����)
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
      GetTextSeperationEx2('��', AParam, sParam);

      str := Rpad(sParam[00],  032, ' ') +    // ������ ID (���۰�����, ���ΰ�����, ������ ID) Default ? administrator ( ���۰����� )
             Rpad(sParam[01],  004, ' ') +    // ȣ�й� �׷� �˻�
             Rpad(sParam[02],  016, ' ') +    // ��ǥ��ȣ �˻�
             Rpad(sParam[03],  016, ' ') +    // ���Ź�ȣ �˻�
             Rpad(sParam[04],  100, ' ');     // ���񽺸� �˻�

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
			if Copy(sData, 174, 1) = 'E' then bNext := False else  // 100�� ������ ����(N: ���, E: ����)
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
			GetTextSeperationEx2('��', AParam, sParam);

			str := Rpad(sParam[00],  32, ' ') +    // ������ ID (���۰�����, ���ΰ�����, ������ ID)
						 Rpad(sParam[01],  04, ' ') +    // ȣ�й� �׷� ( 9000 ~ 9999 ����)  * ȣ�й� �׷� ��ȣ�� �������� ����.
						 Rpad(sParam[02],  16, ' ') +    // ��ǥ��ȣ
						 Rpad(sParam[03],  16, ' ') +    // ���Ź�ȣ
						 Rpad(sParam[04], 100, ' ') +    // ���񽺸�
						 Rpad(sParam[05], 100, ' ') +    // ������/��Ż�
						 Rpad(sParam[06], 500, ' ') +    // �ȳ�����
						 Rpad(sParam[07],   1, ' ') +    // ��������/������ ���� ��� ��������  N:������, Y:�������� ���, A:���������Ż��
						 Rpad(sParam[08],   4, ' ') +    // �������� / ������ ���� ���۽ð�(hhmm)
						 Rpad(sParam[09],   4, ' ') +    // �������� / ������ ���� ����ð�(hhmm)
						 Rpad(sParam[10],  16, ' ') +    // �������� / ������ ���� ��ȣ 1
						 Rpad(sParam[11],   1, ' ') +    // �������� / ������ ���� ��ȣ 1 �������  N:������, Y:���
						 Rpad(sParam[12],  16, ' ') +    // �������� / ������ ���� ��ȣ 2
						 Rpad(sParam[13],   1, ' ') +    // �������� / ������ ���� ��ȣ 2 �������  N:������, Y:���
						 Rpad(sParam[14],  16, ' ') +    // �������� / ������ ���� ��ȣ 3
						 Rpad(sParam[15],   1, ' ') +    // �������� / ������ ���� ��ȣ 3 �������  N:������, Y:���
						 Rpad(sParam[16],   1, ' ') +    // �ݸ��� ���� ���� ( N : ������,  Y : ��� )
						 Rpad(sParam[17],   1, ' ') +    // �ݸ���Ź�� ���� ���� ( N : ������,  Y : ��� )
						 Rpad(sParam[18],   1, ' ') +    // ���� ���� ����
						 Rpad(sParam[19],   1, ' ') +    // �ݸ�Ʈ ���� ����
						 Rpad(sParam[20],   1, ' ') +    // ������ ���� ����
						 Rpad(sParam[21],   1, ' ') +		 // G365 ���� ����
						 Rpad(sParam[22],   1, ' ') +	   // �μ� ���� ����

						 Rpad(sParam[23],   5, ' ') +    // ���ÿ���  �� 5�ڸ�
																						 // 1 �ڸ� : �帲����̺�, 0:�̻��, 1:���
																						 // 2 �ڸ� : ���ÿ���, 0:�̻��, 1:���
																						 // 3 �ڸ� : �丵 IN, 0:�̻��, 1:���
																						 // 4 �ڸ� : �丵 OUT, 0:�̻��, 1:���
																						 // 5 �ڸ� : �븮 ON, 0:�̻��, 1:���

						 Rpad(sParam[24],  50, ' ') +    // CTI-Q ����Ʈ
						 Rpad(sParam[25],  50, ' ') +    // VIP CTI-Q ����Ʈ
						 Rpad(sParam[26],   1, ' ') +    // ���� ���͸� ������� ( N : ������, Y : ��� )
						 Rpad(sParam[27],  50, ' ') +    // ���� ���͸� ��Ʈ ��
						 Rpad(sParam[28],   4, ' ') +    // ���� ���� ���� �ð�
						 Rpad(sParam[29],   4, ' ') +    // ���� ���� ���� �ð�
						 Rpad(sParam[30],   1, ' ') +    // 080 ���Űź� ������� ( N : ������,  Y : ��� )
						 Rpad(sParam[31],  50, ' ') +    // 080 ���Űź� ���� ��
						 Rpad(sParam[32],   1, ' ');     // ȣ�й� ���� ( 1 or 2 ����)


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
		str := Rpad(APId  ,  32, ' ') +   // ������ ID (���۰�����, ���ΰ�����, ������ ID)
					 Rpad(AExten,  04, ' ');    // ȣ�й� �׷� ( 9000 ~ 9999 ����)  * ȣ�й� �׷� ��ȣ�� �������� ����.

		iLen := Length(str);
		Result := fSI_MakeHeader('6040', IntToStr(iLen)) + str;
		pSi415SendData(Result);
	except
		Result := '';
	end;
end;

function fSI_6050_Send( APId, AExten : Ansistring ) : Ansistring;    //���߻���
Var str : Ansistring;
		iLen : Integer;
begin
	Result := '';
	try
		str := Rpad(APId  ,  32, ' ') +   // ������ ID (���۰�����, ���ΰ�����, ������ ID)
					 AExten;    // ȣ�й� �׷� ( 9000 ~ 9999 ����)  * ȣ�й� �׷� ��ȣ�� �������� ����.

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
		str := Rpad(AGrpId , 32, ' ');     // �׷� ID ( �׷� ID ������ ��ü ��ȸ )
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
			if Copy(sData, 38, 1) = 'E' then bNext := False else  // 100�� ������ ����(N: ���, E: ����)
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
		str := Rpad(AGrpId , 32, ' ');     // �׷� ID ( �׷� ID ������ ��ü ��ȸ )
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
			GetTextSeperationEx2('��', AParam, sParam);

			str := Rpad(sParam[00],  32, ' ') +    // ��� �׷� ID
						 Rpad(sParam[01],  64, ' ') +    // ��� �׷� ��
						 Rpad(sParam[02], 128, ' ') ;    // ��� �׷� ����

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
		str := Rpad(AExten , 32, ' ');     // ��� �׷� ID

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
    str := AGrpId;            // �����Ϸ��� �׷�ID ����Ʈ(�޸� ������)

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
		str := Rpad(AGrpId , 32, ' ') +     // �׷� ID ( �׷� ID ������ ��ü ��ȸ )
					 Rpad(AAgtId , 32, ' ');      // ���� ID ( ���� ID ������ ��ü ��ȸ )
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
			if Copy(sData, 70, 1) = 'E' then bNext := False else  // 100�� ������ ����(N: ���, E: ����)
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
		str := Rpad(AGrpId , 32, ' ') +     // �׷� ID ( �׷� ID ������ ��ü ��ȸ )
					 Rpad(AAgtId , 32, ' ');      // ���� ID ( ���� ID ������ ��ü ��ȸ )
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
			GetTextSeperationEx2('��', AParam, sParam);

			str := Rpad(sParam[00],  32, ' ') +    // ���� ID
						 Rpad(sParam[01],  32, ' ') +    // ���� �н�����
						 Rpad(sParam[02],  64, ' ') +    // ���� ��
						 Rpad(sParam[03],  32, ' ') +    // ��� �׷� ID
						 Rpad(sParam[04], 128, ' ') +    // ���� ����
						 Rpad(sParam[05],   1, ' ') +    // ���� Ÿ��
						 Rpad(sParam[06],   4, ' ') +    // ������ȣ
						 Rpad(sParam[07],   1, ' ') +    // �ڵ� ���� ��� ����
						 Rpad(sParam[08],   4, ' ') +    // �ڵ����� (��)
						 Rpad(sParam[09],   1, ' ') +    // �߽� ���� ��ȣ ��� ����
						 Rpad(sParam[10],   4, ' ') +    // �߽� ���� ��ȣ
						 Rpad(sParam[11],   1, ' ') +    // �� ��ȣ ��ŷ ����
						 Rpad(sParam[12],   1, ' ') +    // ��ȭ������ �ڵ���� ��� ����
						 Rpad(sParam[13],   4, ' ') +    // ��ȭ������ �ڵ���� (��)
						 Rpad(sParam[14],   1, ' ') ;    // ���� ���

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
		str := Rpad(AExten , 32, ' ');     // ���� ID
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
    str := AAgtId;            // �����Ϸ��� ����ID ����Ʈ(�޸� ������)
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
		str := Rpad(AStr , 32, ' ');      // ������ ID ( ������ ID ������ ��ü ��ȸ )
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
			if Copy(sData, 38, 1) = 'E' then bNext := False else  // 100�� ������ ����(N: ���, E: ����)
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
      GetTextSeperationEx2('��', AParam, sParam);

			str := Rpad(sParam[00],  32, ' ') +    // ������ ID
						 Rpad(sParam[01],  32, ' ') +    // ������PW
						 Rpad(sParam[02],  64, ' ') +    // �����ڸ�
						 Rpad(sParam[03], 128, ' ') +    // ������ ����
						 Rpad(sParam[04],  04, ' ') +    // ����
						 Rpad(sParam[05],  01, ' ') ;    // ������ ���� ( 1 : ���۰�����(administrator), 2 : ���ΰ�����,  4 : ������ )

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
		str := Rpad(AMngId , 32, ' ');     // ������ ID
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
    str := AMngId;            // �����Ϸ��� ������ID ����Ʈ(�޸� ������)
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
		str := Rpad(AStr , 32, ' ');      // ������ ID ( ������ ID ������ ��ü ��ȸ )
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
			if Copy(sData, 38, 1) = 'E' then bNext := False else  // 100�� ������ ����(N: ���, E: ����)
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
			GetTextSeperationEx2('��', AParam, sParam);

			str := Rpad(sParam[00],  32, ' ') +  // �׷� ID ( �׷� ID ������ ��ü ��ȸ )
									sParam[01]           ;   //ȣ�й��ȣ ����Ʈ( �޸� ������)
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
			GetTextSeperationEx2('��', AParam, sParam);

			str := Rpad(sParam[00],  32, ' ') +  // ������ ID
						 Rpad(sParam[01],  32, ' ');   //������ ��й�ȣ
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
      if Copy(sData, 6, 1) = 'E' then bNext := False else  // 100�� ������ ����(N: ���, E: ����)
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
      GetTextSeperationEx2('��', AParam, sParam);

      str := Rpad(sParam[00],  01, ' ') +    // ���� ( 1 : ����, 2 : �����, 3 : �Ͽ��� )
             Rpad(sParam[01],  04, ' ') +    // �ٹ� ���� �ð�(hhmm)
             Rpad(sParam[02],  04, ' ') +    // �ٹ� ���� �ð�(hhmm)
             Rpad(sParam[03],  01, ' ') +    // �ٹ� �ð� ��� ���� ( N : ������, Y : ��� )
             Rpad(sParam[04],  04, ' ') +    // ��ħ ���� �ð�
             Rpad(sParam[05],  04, ' ') +    // ��ħ ���� �ð�
             Rpad(sParam[06],  01, ' ') +    // ��ħ �ð� ��� ���� ( N : ������, Y : ��� )
             Rpad(sParam[07],  04, ' ') +    // ���� ���� �ð�
             Rpad(sParam[08],  04, ' ') +    // ���� ���� �ð�
             Rpad(sParam[09],  01, ' ') +    // ���� �ð� ��� ���� ( N : ������, Y : ��� )
             Rpad(sParam[10],  04, ' ') +    // ���� ���� �ð�
             Rpad(sParam[11],  04, ' ') +    // ���� ���� �ð�
             Rpad(sParam[12],  01, ' ');     // ���� �ð� ��� ���� ( N : ������, Y : ��� )

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
      if Copy(sData, 6, 1) = 'E' then bNext := False else  // 100�� ������ ����(N: ���, E: ����)
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
      GetTextSeperationEx2('��', AParam, sParam);

      str := Rpad(sParam[00],  10, ' ') +    // ���� (YYYY-MM-DD)
             Rpad(sParam[01],  01, ' ') +    // ����( 1:�Ͽ���, 2:������, 3:ȭ����, 4:������, 5:�����, 6:�ݿ���, 7:����� )
             Rpad(sParam[02],  50, ' ');     // ����

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
      GetTextSeperationEx2('��', AParam, sParam);

      str := Rpad(sParam[00],  10, ' ') +    // ���� (YYYY-MM-DD) - OLD_Holiday
             Rpad(sParam[01],  10, ' ') +    // ���� (YYYY-MM-DD)
             Rpad(sParam[02],  01, ' ') +    // ����( 1:�Ͽ���, 2:������, 3:ȭ����, 4:������, 5:�����, 6:�ݿ���, 7:����� )
             Rpad(sParam[03],  50, ' '); +    // ����

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
    str := Rpad(AHDay , 10, ' ');    // ���� (YYYY-MM-DD)
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
    str := AHDay;            // �����Ϸ��� ����(YYYY-MM-DD) ����Ʈ(�޸� ������)
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
    str := Rpad(AExten, 04, ' ') +    // ȣ�й� �׷� ( 9000 ~ 9999 ����)
           Rpad(ACId  , 32, ' ') +    // ���Űź� ��ȭ ��ȣ, ������ �������̽���
           Rpad(ACNm  , 64, ' ');     // ���Űź� ��, ������ �������̽���

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
      if Copy(sData, 106, 1) = 'E' then bNext := False else  // 100�� ������ ����(N: ���, E: ����)
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
      GetTextSeperationEx2('��', AParam, sParam);

      str := Rpad(sParam[00],  04, ' ') +    // ȣ�й� �׷� ( 9000 ~ 9999 ����)
             Rpad(sParam[01],  32, ' ') +    // ���Űź� ��ȭ ��ȣ
             Rpad(sParam[02],  64, ' ') +    // ���Űź� ��
             Rpad(sParam[03], 128, ' ') +    // ���Űź� ����
						 Rpad(sParam[04],  01, ' ') ;    // 2: ȣ�й�׷츸 �ź�, 5: ��ü �ź�

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
      GetTextSeperationEx2('��', AParam, sParam);

      str := Rpad(sParam[00],  09, ' ') +    // ��ȸ�� Index (Integer��)
             Rpad(sParam[01],  04, ' ') +    // ȣ�й� �׷� ( 9000 ~ 9999 ����)
             Rpad(sParam[02],  32, ' ') +    // ���Űź� ��ȭ ��ȣ
             Rpad(sParam[03],  64, ' ') +    // ���Űź� ��
             Rpad(sParam[04], 128, ' ') +    // ���Űź� ����
						 Rpad(sParam[05],  01, ' ') ;    // 2: ȣ�й�׷츸 �ź�, 5: ��ü �ź�

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
    str := Rpad(ADIdx , 09, ' ');    // ������ Index, (Integer ��)

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
    str := ADIdx;    // �����Ϸ��� Index, (Integer ��) ����Ʈ(�޸� ������)
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
				if gJon03BlockIng then //������Ȳ���� ���ܽ����������
				begin
					if gSiSchRevH.sResult = '00' then
						GMessagebox('����ȭ���� �Ϸ�', CDMSI)
					else
						GMessagebox('����ȭ���� ����', CDMSE);
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
		str := Rpad(AFileDir , 256, ' ');    // ���� ���� Dir
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
    str := Rpad(AExten, 04, ' ') +    // ȣ�й� �׷� ( 9000 ~ 9999 ����)
           Rpad(ACId  , 32, ' ') +    // VIP ��ȭ ��ȣ
           Rpad(ACNm  , 64, ' ');     // VIP ��
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
      if Copy(sData, 106, 1) = 'E' then bNext := False else  // 100�� ������ ����(N: ���, E: ����)
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
      GetTextSeperationEx2('��', AParam, sParam);

      str := Rpad(sParam[00],  04, ' ') +    // ȣ�й� �׷� ( 9000 ~ 9999 ����)
             Rpad(sParam[01],  32, ' ') +    // VIP ��ȭ ��ȣ
             Rpad(sParam[02],  64, ' ') +    // VIP ��
             Rpad(sParam[03], 128, ' ') +    // VIP ����
						 Rpad(sParam[04],  01, ' ') ;    // 1:VIP��

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
      GetTextSeperationEx2('��', AParam, sParam);

      str := Rpad(sParam[00],  09, ' ') +    // ��ȸ�� Index  (Integer ��)
             Rpad(sParam[01],  04, ' ') +    // ȣ�й� �׷� ( 9000 ~ 9999 ����)
             Rpad(sParam[02],  32, ' ') +    // VIP ��ȭ ��ȣ
             Rpad(sParam[03],  64, ' ') +    // VIP ��
             Rpad(sParam[04], 128, ' ') +    // VIP ����
						 Rpad(sParam[05],  01, ' ') ;    // 1:VIP��

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
    str := Rpad(ADIdx , 09, ' ');    // ������ Index, (Integer ��)
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
    str := ADIdx;    // �����Ϸ��� Index, (Integer ��) ����Ʈ(�޸� ������)
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
			if Copy(sData, 6, 1) = 'E' then bNext := False else  // 100�� ������ ����(N: ���, E: ����)
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
		str := Rpad(ACodeID  , 16, ' ') +      // ��Ʈ ����
					 AMentID;                        // ��Ʈ ���� ��
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
		str := Rpad(ACodeID  , 16, ' ') +      // ��Ʈ ����
					 AMentID;                        // ��Ʈ ���� ��
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
			if Copy(sData, 22, 1) = 'E' then bNext := False else  // 100�� ������ ����(N: ���, E: ����)
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
		str := Rpad(AGrpId , 32, ' ') +     // �׷� ID ( �׷� ID ������ ��ü ��ȸ )
					 Rpad(AAgtId , 32, ' ');      // ���� ID ( ���� ID ������ ��ü ��ȸ )
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
			if Copy(sData, 70, 1) = 'E' then bNext := False else  // 100�� ������ ����(N: ���, E: ����)
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
			GetTextSeperationEx2('��', AParam, sParam);

			str := Rpad(sParam[00],  32, ' ') +  // �׷� ID ( �׷� ID ������ ��ü ��ȸ )
						 Rpad(sParam[01],  32, ' ') +  // ���� ID ( ���� ID ������ ��ü ��ȸ )
									sParam[02]           ;   //ȣ�й��ȣ ����Ʈ( �޸� ������)

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
		str := Rpad(ACallDist , 04, ' ') +     // ȣ�й� �׷�
					 Rpad(AAgtId    , 32, ' ');      // ���� ID ( ���� ID ������ ��ü ��ȸ )
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
			if Copy(sData, 42, 1) = 'E' then bNext := False else  // 100�� ������ ����(N: ���, E: ����)
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
			GetTextSeperationEx2('��', AParam, sParam);

			str := Rpad(sParam[00],  04, ' ') +    // ȣ�й� �׷�
						 Rpad(sParam[01],  32, ' ') +    // ���� ID
						 Rpad(sParam[02],  01, ' ');     // �켱����

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
		str := Rpad(AExten  , 04, ' ') +    // ȣ�й� �׷�
         	 AAgentID;                    // ���� ID
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
      if Copy(sData, 6, 1) = 'E' then bNext := False else  // 100�� ������ ����(N: ���, E: ����)
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
			GetTextSeperationEx2('��', AParam, sParam);

			str := Rpad(sParam[00],  04, ' ') +    // Item_Code
						 Rpad(sParam[01],  01, ' ') +    // ��� ����(N: ������, Y: �����)
						 Rpad(sParam[02],  04, ' ') +    // ��ü����, ��ü ���͸� �� ��� : ���� �ð� �����ͺ��̽����� �� ��� : ��¥(��) ������ ���� �� ��� : �����(���)
						 Rpad(sParam[03],  04, ' ') +    // ��ü����, ��ü ���͸� �� ��� : ���� �ð�
						 Rpad(sParam[04],  16, ' ') +    // ��ü���� �� ��� : ���� ��ȭ��ȣ
						 Rpad(sParam[05],  16, ' ');     // ����

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
			GetTextSeperationEx2('��', AParam, sParam);

			str := Rpad(sParam[00],  32, ' ') +    // IVR_SYS_MENT_TYPE�� : �ý��� ��Ʈ
						 Rpad(sParam[01],  16, ' ') +    // ����
						 Rpad(sParam[02], 128, ' ') +    // ��Ʈ ���� ��
						 Rpad(sParam[03],  01, ' ');     // �������

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
		str := Rpad(AMenteId , 16, ' ');      // ��Ʈ ����
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
			GetTextSeperationEx2('��', AParam, sParam);

			str := Rpad(sParam[00],  32, ' ') +    // ��Ʈ Ÿ��
						 Rpad(sParam[01],  16, ' ') +    // ����
						 Rpad(sParam[02], 128, ' ');     // �������

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
		str := Rpad(AAdminId,  32, ' ') ;     // ������ ID
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
			Log('bSI415_A SendText :' + sData, LOGIPCCSDATAPATHFILE);  //IPCC���� ����
			Frm_Main.bSI415_A.Socket.SendText(sData);
		end else
		begin
			if (Not gSI415_A_Close) then
			begin
				sTmp := '�ݸ���IPCC-�����ڿ� ������ ���������ϴ�.' +#13#10 + '�ٽ� �����Ͻðڽ��ϱ�?'+#13#10+#13#10
							+ '����� �α����� �ٽ� �ϼž� �մϴ�';

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
//			GMessagebox('�û��Ͽ��� ������ ���� �ʾƼ� �۾��� ó���Ҽ� �����ϴ�.', CDMSE);
		end;
	except
		begin
			GMessagebox('�ݸ���IPCC �ڷ� ���� �� ���� �߻�.', CDMSE);
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
				GMessagebox('�ݸ���IPCC�� ������ ���� �ʾƼ� �۾��� ó���Ҽ� �����ϴ�.', CDMSE);
		end;
	except
		begin
			GMessagebox('�ݸ���IPCC �ڷ� ���� �� ���� �߻�.', CDMSE);
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
			sTmp := '�ݸ���IPCC�� ������ ���� �ʾƼ� �۾��� ó���Ҽ� �����ϴ�.' +#13#10 +#13#10
						+ '�ݸ��� ����Ʈ���� ���� �۵��ϴ��� Ȯ���Ͽ� �ֽʽÿ�.';
			GMessagebox(sTmp, CDMSE);
		end;
	except
		begin
			GMessagebox('�ݸ���IPCC �ڷ� ���� �� ���� �߻�.', CDMSE);
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

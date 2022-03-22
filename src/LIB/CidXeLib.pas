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
    sType        |       1   |  ��������[Inbound(A,B,,), Outbound(,,,)
    sLine        |      13   |  ��ȭ��������(Tindex: PRI, DID, DOD, ������ȣ,,)
    sMainln      |      13   |  ��ǥ��ȭ��ȣ(PRI, DID, DOD, ������ǥ��ȣ,,)
    sStation     |      10   |  ���� ������ȣ
    sTelNum      |      13   |  ��ȭ��ȣ[�Ϲ���ȣ, �ڵ���,,]
    sSndTime     |       8   |  ���۽ð�[hh:mm:ss]
    sBrNo        |       5   |  �����ڵ�
---------------------------------------------------------------------------------
CTI CID Receive Listening Server Port : 9557
CTI MakeCall    Listening Server Port : 9497
---------------------------------------------------------------------------------
CID Data Header Total Size : 63 Byte }

type
  XEHEADER = record
    sType    : string[01];  //  1 | ��������[Inbound(100,101,,), Outbound(201,202,,)
    sLine    : string[13];  // 13 | ��ȭ��������(PRI,DID,DOD,����,,)
    sMainLn  : string[13];  // 13 | ��ǥ��ȭ��ȣ(PRI,DID,DOD,������ǥ��ȣ,,)
    sStation : string[10];  // 10 | ���� ������ȣ
    sTelNum  : string[13];  // 13 | ��ȭ��ȣ[�Ϲ���ȣ, �ڵ���,,]
    sSndTime : string[08];  //  8 | ��ȭ Inbound �ð�[hh:mm:ss]        �߰� 2014-04-20
    sBrNo    : string[05];  //  5 | �����ڵ�                           �߰� 2014-04-25
  end; // total : 63 byte

// CTI Server Login ���ڿ� �����
function CTIXE_MakeLoginStruct(sStation: string): string;
// CTI Server �ڷ�����
function CTIXE_Check_Save(sRecieve: string): Boolean;
// CTI HeartBeat
function CTIXE_MakeHeartbeat(sStation: string) : string;
// CTI LUG+ ��Ʈ���� 070��ȣ ���� -> �������� ��ǥ��ȣ�� ��ȯ �� ����
function CTIXE_MakeLGUMake(sStation: string) : string;

const
  // sType �� ���� ���ó�� ��� ���� ------------------------------------------------------
  T_LOGIN_REQUEST  = 'L'; // �α��� ��û
  T_LOGIN_RESPONSE = 'R'; // �α��� ����
	T_CALLING_INFO   = 'C'; // CID �ݸ�
	T_HEARTBEAT      = 'H'; // Alive ��Ʈ��Ʈ
	T_AUTOCALL       = 'A'; // ������
	T_LGUCENTREX     = 'G'; // LGU+ ��Ʈ����
	T_SERVERDISCONNECT = 'T'; // ���� ���� �����ϱ� �� ������� 4���ĺ��� ������ �õ� ��û����[2019-11-19]

  // sResult ����ڵ� Constant
  RSLT_OK = '00'; // ��� ����
  RSLT_BUSY = '01'; // Line �����..
  RSLT_TBUSY = '02'; // Trunk Busy
  RSLT_GBUSY = '03'; // ���� Group Busy
  RSLT_LOGOUT = '04'; // ������ Logout������
  RSLT_INVALIDSTATION = '06'; // ���� ��ȣ ����
  RSLT_INVALIDGROUP = '07'; // ���� Group��ȣ ����
  RSLT_STATIONBUSY = '08'; // �ٸ� Group���� Station�����
  RSLT_OUTCONN = '10'; // Outbound ��ȭ ����
  RSLT_NOANSWER = '11'; // No Answer
  RSLT_ERROR = '99'; // ERROR
  //---------------------------------------------------------------------------------

  FCID_CON_Y = 'CID ���� ���� �Ϸ�';
  FCID_CON_N = 'CID ���� ���� ����';
  FCID_CON_I = 'CID ���� ���� �õ���..';

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
  gXeSendHeader: XEHEADER;
  gXeRecvHeader: XEHEADER;

  gCIDXESender: string[63]; //  63 byte

implementation

// CTI Server Login ���ڿ� �����


uses xe_GNL;

function CTIXE_MakeLoginStruct(sStation: string): string;
Var sMultiLine : string[30];
    sMultiId   : string[19];
begin
  Result := '';

  sStation := StringReplace(sStation, ' ', '', [rfReplaceAll]);

  // CID ���� �α���
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
  gXeSendHeader.sLine    := Rpad(Trim(Copy(sStation, 23, 14)), 13, ' '); // 070��ȣ
  gXeSendHeader.sMainLn  := Rpad('', 13, ' ');
  gXeSendHeader.sStation := Rpad(Trim(Copy(sStation, 18, 5 )), 10, ' '); // ������ȣ
  gXeSendHeader.sTelNum  := Rpad(Trim(Copy(sStation, 4 , 14)), 13, ' '); // ����ȣ
  gXeSendHeader.sSndTime := Rpad(FormatDateTime('HH:NN:SS', Now),  8, ' ');
  gXeSendHeader.sBrNo    := Rpad('',  5, ' ');

  gCIDXESender := gXeSendHeader.sType + gXeSendHeader.sLine + gXeSendHeader.sMainLn +
                  gXeSendHeader.sStation + gXeSendHeader.sTelNum + gXeSendHeader.sSndTime + gXeSendHeader.sBrNo;

  Result := gCIDXESender;
end;

// CTI Server �ڷ�����
function CTIXE_Check_Save(sRecieve: string): Boolean;
begin
	Result := False;

	gXeRecvHeader.sType    := Trim(copy(sRecieve,   1,  1));  //  1   1  |  ��������[Inbound(100,101,,), Outbound(201,202,,)
	gXeRecvHeader.sLine    := Trim(copy(sRecieve,   2, 13));  // 13  14  |  ��ȭ��������(PRI,DID,DOD,����,,)
  gXeRecvHeader.sMainLn  := Trim(copy(sRecieve,  15, 13));  // 13  27  |  ��ǥ��ȭ��ȣ(PRI,DID,DOD,������ǥ��ȣ,,)
	gXeRecvHeader.sStation := Trim(copy(sRecieve,  28, 10));  // 10  37  |  ���� ������ȣ
  gXeRecvHeader.sTelNum  := Trim(copy(sRecieve,  38, 13));  // 13  50  |  ��ȭ��ȣ[�Ϲ���ȣ, �ڵ���,,]
  gXeRecvHeader.sSndTime := Trim(copy(sRecieve,  51,  8));  //  8  58  |  time    : hh:mm:ss
  gXeRecvHeader.sBrNo    := Trim(copy(sRecieve,  59,  5));  //  5  63  |  �����ڵ�

  Result := True;
end;

end.


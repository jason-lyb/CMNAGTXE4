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
    sType        |       3   |  ��������[Inbound(100,101,,), Outbound(201,202,,)
    sLine        |       4   |  ��ȭ��������(PRI,DID,DOD,����,,)
    sStation     |       4   |  ���� ������ȣ
    sResult      |       2   |  ����ڵ�[00:����,01:CID����,02:����,,]
    sTelNum      |      14   |  ��ȭ��ȣ[�Ϲ���ȣ, �ڵ���,,]
---------------------------------------------------------------------------------
CTI CID Receive Listening Server Port : 9557   // 9457 --> 9557 : ������.2007-12-12 �ֵ���
CTI MakeCall    Listening Server Port : 9497
---------------------------------------------------------------------------------
CID Data Header Total Size : 27 Byte }

{Type
  HEADER = record
    sType        : array[0..2]  of char;   //  3   |  ��������[Inbound(100,101,,), Outbound(201,202,,)
    sLine        : array[0..3]  of char;   //  4   |  ��ȭ��������(PRI,DID,DOD,����,,)
    sStation     : array[0..3]  of char;   //  4   |  ���� ������ȣ
    sResult      : array[0..1]  of char;   //  2   |  ����ڵ�[00:����,01:CID����,02:����,,]
    sTelNum      : array[0..13] of char;   // 14   |  ��ȭ��ȣ[�Ϲ���ȣ, �ڵ���,,]
  End; }
type
  HEADER = record
    sType: string[3];     //  3   |  ��������[Inbound(100,101,,), Outbound(201,202,,)
    sLine: string[4];     //  4   |  ��ȭ��������(PRI,DID,DOD,����,,)
    sMainLn: string[14];  // 14   |  ��ǥ��ȭ��ȣ(PRI,DID,DOD,������ǥ��ȣ,,)
    sStation: string[4];  //  4   |  ���� ������ȣ
    sResult: string[2];   //  2   |  ����ڵ�[00:����,01:CID����,02:����,,]
    sTelNum: string[14];  // 14   |  ��ȭ��ȣ[�Ϲ���ȣ, �ڵ���,,]
    sSndTime: string[8];  //  8   |  ��ȭ Inbound �ð�[hh:mm:ss]        �߰� 2007-12-28
    sCityStr: string[4];  //  4   |  ���� ��/��    �߰� 2008-01-28
    sWardStr: string[20]; // 20   |  ���� ��/��/�� �߰� 2008-01-28
    sPostStr: string[20]; // 20   |  �� ���� ��ġ��(�����ȣ�� ��/��/�� ���� ġȯ�Ͽ� �Ѱ���) �߰� 2007-12-28
  end; // total : 41 byte(Old) --> 93 byte(Now)

  // CTI Server Logout ���ڿ� �����
function CTI_MakeLogoutStruct(sStation: string): string;
// CTI Server Login ���ڿ� �����
function CTI_MakeLoginStruct(sStation: string): string;
// CTI Server �ڷ�����
function CTI_Check_Save(sRecieve: string): Boolean;

const

  // sType �� ���� ���ó�� ��� ���� ------------------------------------------------------
  // Login/Logout Scope
  PTYPE_CLIENT_LOGIN = '101'; // Client: ���� �䱸 (login)
  //    Header.sType    = PTYPE_CLIENT_LOGIN; ( PC --> CTI )
  //    Header.sLine    = "0000";
  //    Header.sMainLn  = ��              "; //��ǥ��ȣ
  //    Header.sStation = "0001";    // 0001�� ���� ��ȣ
  //    Header.sResult  = RSLT_OK;
  //    Header.sTelNum  = ��               ";

  PTYPE_CONN_WAIT = '102'; // Client: ��ȭ �ޱ� ��� ��(���� ���� �غ����)
  //    Header.sType    = PTYPE_CONN_WAIT; ( PC --> CTI )
  //    Header.sLine    = "0000";
  //    Header.sMainLn  = ��              "; //��ǥ��ȣ
  //    Header.sStation = "0001"; // 001�� Station ��ȣ
  //    Header.sResult  = RSLT_OK;
  //    Header. sTelNum = ��               ";

  PTYPE_NO_WAIT = '103'; // Client: �ڸ� ���(��ȭ ���� ����)
  //    Header.sType    = PTYPE_NO_WAIT; ( PC --> CTI )
  //    Header.sLine    = "0000"; // CTI ȸ�� ��ȣ
  //    Header.sMainLn  = ��              "; //��ǥ��ȣ
  //    Header.sStation = "0001"; // 001�� Station ��ȣ
  //    Header.sResult  = RSLT_OK;
  //    Header.sLength  = ��               ";

  PTYPE_CLIENT_LOGOUT = '105'; // Client: ���� ���� (logout)
  //    Header.sType    = PTYPE_CLIENT_LOGOUT;  ( PC --> CTI )
  //    Header.sLine    = "0000"; // CTI ȸ�� ��ȣ
  //    Header.sMainLn  = ��              "; //��ǥ��ȣ
  //    Header.sStation = "0001"; // 001�� Station ��ȣ
  //    Header.sResult  = RSLT_OK;
  //    Header.sLength  = ��               ";

  PTYPE_LOGIN_SUCCESS = '106'; // Client: LOGIN ���� ����
  //    Header.sType    = PTYPE_IN_DISCONNECT; ( CTI --> PC )
  //    Header.sLine    = "012"; // CTI ȸ�� ��ȣ
  //    Header.sMainLn  = ��              "; //��ǥ��ȣ
  //    Header.sStation = "001"; // 001�� Station ��ȣ
  //    Header.sResult  = RSLT_OK;
  //    Header.sLength  = "000";

//----------- Inbound Scope -------------
  PTYPE_REQ_INCONN = '111'; // Inbound: ���� ���� ���� �䱸
  //    Header.sType    = PTYPE_REQ_INCONN; ( CTI -> PC )
  //    Header.sLine    = "012"; // CTI ȸ�� ��ȣ
  //    Header.sMainLn  = ��              "; //��ǥ��ȣ
  //    Header.sStation = "001"; // 001�� Station ��ȣ
  //    Header.sResult  = RSLT_OK;
  //    Header.sTelNum  = ��               ";  // �߽��� ��ȣ : 14 Byte

  PTYPE_CONF_INCONN = '112'; // Inbound: ���� ���� ���� Ȯ�� ( PC -> CTI )
  //          PC���� PTYPE_REQINCONN�� �ް� PTYPE_CONFINCONN��
  //          ������ ������ ���� ��ȭ �����
  //    Header.sType    = PTYPE_CONF_INCONN;
  //    Header.sLine    = "012"; // CTI ȸ�� ��ȣ
  //    Header.sMainLn  = ��              "; //��ǥ��ȣ
  //    Header.sStation = "001"; // 001�� Station ��ȣ
  //    Header.sResult  = RSLT_OK;
  //    Header.sTelNum  = ��               ";

  PTYPE_INCONNECTED = '117'; // Inbound: ��ȭ�� ����Ǿ��� ( CTI -> PC )
  //          PC���� PTYPE_REQINCONN�� �ް� PTYPE_INCONNECTED��
  //          ������ ������ ���� ��ȭ �����
  //    Header.sType    = PTYPE_CONFINCONN;
  //    Header.sLine    = "012"; // CTI ȸ�� ��ȣ
  //    Header.sMainLn  = ��              "; //��ǥ��ȣ
  //    Header.sStation = "001"; // 001�� Station ��ȣ
  //    Header.sResult  = RSLT_OK;
  //    Header.sTelNum  = ��               ";
//----------- Outbound Scope -------------
  PTYPE_REQ_DIAL = '211'; // Outbound: ���� ���� Dial �䱸   pc -> cti
  //    Header.sType    = PTYPE_REQ_DIAL;
  //    Header.sLine    = "0000";   // CTI ȸ�� ��ȣ
  //    Header.sMainLn  = ��              "; //��ǥ��ȣ
  //    Header.sStation = ��0001"; // 001�� Station ��ȣ
  //    Header.sResult  = RSLT_OK;
  //    Header.sLength  = ��               ";
  //    "21010000000010001601039055636"
  PTYPE_RSLT_DIAL = '212';
  // Outbound: ���� ���� Dial ��� cti -> pc (��ȭ�ɱ� ����)
//    Header.sType    = PTYPE_RSLT_DIAL;
//    Header.sLine    = "0001";   // ���� ��ȣ
//    Header.sMainLn  = ��              "; //��ǥ��ȣ
//    Header.sStation = "0001"; // 001�� Station ��ȣ
//    Header.sResult  = RSLT_OK;
//    Header.sTelNum  = ��               ";
  PTYPE_CONFRSLT_DIAL = '213';
  // Outbound: ���� ���� Dial ��� Ȯ��     cti -> pc (����)
//    Header.sType    = PTYPE_CONFRSLT_DIAL;
//    Header.sLine    = "0001";   // ���� ��ȣ
//    Header.sMainLn  = ��              "; //��ǥ��ȣ
//    Header.sStation = "0001"; // 001�� Station ��ȣ
//    Header.sResult  = RSLT_OK;
//    Header.sTelNum  = ��               ";
  PTYPE_OUT_DISCONNECT = '209'; // Outbound: ���� ����[��ȭ ������]  cti --> pc
  //    Header.sType    = PTYPE_OUT_DISCONNECT;
  //    Header.sLine    = "0001";   // ���� ��ȣ
  //    Header.sMainLn  = ��              "; //��ǥ��ȣ
  //    Header.sStation = "0001"; // 001�� Station ��ȣ
  //    Header.sResult  = RSLT_OK;
  //    Header.sTelNum  = ��               ";

//---------------------------------------------------------------------------------
//    sResult ����ڵ� Constant
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
  // CID ��� ����ü ����
  gSendHeader: HEADER;
  gRecvHeader: HEADER;

  gCIDSender: string[93];

implementation

// CTI Server Login ���ڿ� �����
function CTI_MakeLoginStruct(sStation: string): string;
begin
  Result := '';

  sStation := StringReplace(sStation, ' ', '', [rfReplaceAll]);

  // CID ���� �α���
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
    gSendHeader.sCityStr := '    '; // ��/��
    gSendHeader.sWardStr := '                    '; // ��/��/��
    gSendHeader.sPostStr := '                    '; // ��/��/��
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
    gSendHeader.sCityStr := '    '; // ��/��
    gSendHeader.sWardStr := '                    '; // ��/��/��
    gSendHeader.sPostStr := '                    '; // PostStr : space 20 byte
  end;

  gCIDSender := gSendHeader.sType + gSendHeader.sLine + gSendHeader.sMainLn +
    gSendHeader.sStation
    + gSendHeader.sResult + gSendHeader.sTelNum + gSendHeader.sSndTime
    + gSendHeader.sCityStr + gSendHeader.sWardStr + gSendHeader.sPostStr;
  // 2008-01-22

  Result := gCIDSender;
end;

// CTI Server Logout ���ڿ� �����

function CTI_MakeLogoutStruct(sStation: string): string;
begin
  Result := '';

  // CID ���� �α׾ƿ�
  if pos(',', sStation) = 0 then
  begin
    gSendHeader.sType := PTYPE_CLIENT_LOGOUT;
    gSendHeader.sLine := '0000';
    gSendHeader.sMainLn := '              ';
    gSendHeader.sStation := Rpad(Copy(sStation, 1, 4), 4, ' ');
    gSendHeader.sResult := RSLT_OK;
    gSendHeader.sTelNum := '              ';
    gSendHeader.sSndTime := '        '; // time    : hh:mm:ss        2008-01-22
    gSendHeader.sCityStr := '    '; // ��/��
    gSendHeader.sWardStr := '                    '; // ��/��/��
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
    gSendHeader.sCityStr := '    '; // ��/��
    gSendHeader.sWardStr := '                    '; // ��/��/��
    gSendHeader.sPostStr := '                    '; // PostStr : space 20 byte

  end;

  gCIDSender := gSendHeader.sType + gSendHeader.sLine + gSendHeader.sMainLn +
                gSendHeader.sStation + gSendHeader.sResult + gSendHeader.sTelNum +
                gSendHeader.sSndTime + gSendHeader.sCityStr + gSendHeader.sWardStr +
                gSendHeader.sPostStr;

  Result := gCIDSender;
end;

// CTI Server �ڷ�����

function CTI_Check_Save(sRecieve: string): Boolean;
begin
  Result := False;

  gRecvHeader.sType    := Trim(copy(sRecieve,  1,  3));  //  3   3  |  ��������[Inbound(100,101,,), Outbound(201,202,,)
  gRecvHeader.sLine    := Trim(copy(sRecieve,  4,  4));  //  4   7  |  ��ȭ��������(PRI,DID,DOD,����,,)
  gRecvHeader.sMainLn  := Trim(copy(sRecieve,  8, 14));  // 14  21  |  ��ǥ��ȭ��ȣ(PRI,DID,DOD,������ǥ��ȣ,,)
  gRecvHeader.sStation := Trim(copy(sRecieve, 22,  4));  //  4  25  |  ���� ������ȣ
  gRecvHeader.sResult  := Trim(copy(sRecieve, 26,  2));  //  2  27  |  ����ڵ�[00:����,01:CID����,02:����,,]
  gRecvHeader.sTelNum  := Trim(copy(sRecieve, 28, 14));  // 14  41  |  ��ȭ��ȣ[�Ϲ���ȣ, �ڵ���,,]
  gRecvHeader.sSndTime := Trim(copy(sRecieve, 42,  8));  //  8  49  |  time    : hh:mm:ss    2008-01-22
  gRecvHeader.sCityStr := Trim(copy(sRecieve, 50,  4));  //  4  53  |  ��/��
  gRecvHeader.sWardStr := Trim(copy(sRecieve, 54, 20));  // 20  73  |  ��/��/��
  gRecvHeader.sPostStr := Trim(copy(sRecieve, 74, 20));  // 20  93  |  ��/��/��

  Result := True;
end;

end.


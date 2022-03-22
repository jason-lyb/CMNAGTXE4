unit xe_SMS05;

interface

uses
  Winapi.Windows, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, AdvGroupBox,
  Vcl.Menus, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, Vcl.ExtCtrls, cxCheckBox, Vcl.StdCtrls,
  cxRadioGroup, cxTextEdit, cxButtons, cxLabel, dxGDIPlusClasses, Vcl.Controls, System.Classes,
  //-------------------------
  Vcl.Forms, Winapi.Messages, System.SysUtils, System.Variants, MSXML2_TLB, IDGlobal, WinSock, dxSkinOffice2010Silver, dxSkinSharp,
  dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_SMS05 = class(TForm)
    Panel1: TPanel;
    Timer1: TTimer;
    TCPClient: TIdTCPClient;
    imgXE4: TImage;
    cxButton1: TcxButton;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    edtUserId: TcxTextEdit;
    edtAuth: TcxTextEdit;
    btn_sms_acc: TcxButton;
    btn_sms_con: TcxButton;
    gbArea: TAdvGroupBox;
    rbAreaO: TcxRadioButton;
    rbAreaS: TcxRadioButton;
    edtCertificHNum: TcxTextEdit;
    lblUserIdFlag: TcxLabel;
    lblAuthFlag: TcxLabel;
    lblCertificHNumFlag: TcxLabel;
    grpHelp: TPanel;
    btnClose: TcxButton;
    cxLabel5: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxChkAuthYn: TcxCheckBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    lblArea: TcxLabel;
    imgcLine: TImage;
    chkPCAuth: TcxCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_sms_accClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btn_sms_accMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure btn_sms_conClick(Sender: TObject);
    procedure cxLabel2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ed_authPropertiesChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnServiceAreaClick(Sender: TObject);
    procedure btnServiceAreaMouseEnter(Sender: TObject);
    procedure edtCertificHNumKeyPress(Sender: TObject; var Key: Char);
    procedure rbSelectAreaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure imgXE4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edtUserIdKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCloseClick(Sender: TObject);
    procedure lblUserIdFlagClick(Sender: TObject);
    procedure edtUserIdEnter(Sender: TObject);
    procedure edtUserIdExit(Sender: TObject);
    procedure lblCertificHNumFlagClick(Sender: TObject);
    procedure edtCertificHNumEnter(Sender: TObject);
    procedure edtCertificHNumExit(Sender: TObject);
    procedure lblAuthFlagClick(Sender: TObject);
    procedure edtAuthEnter(Sender: TObject);
    procedure edtAuthExit(Sender: TObject);
    procedure edtUserIdPropertiesChange(Sender: TObject);
    procedure edtCertificHNumPropertiesChange(Sender: TObject);
    procedure edtAuthFocusChanged(Sender: TObject);
    procedure edtCertificHNumFocusChanged(Sender: TObject);
    procedure edtUserIdFocusChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    pSmsGubun : String;
    procedure smsAccept(igubun: Integer);
    function SendSock(const ASendData: string; var slList: TStringList;
      ATimeOut: Integer = 50000): Boolean;
  public
    { Public declarations }
    procedure Proc_License(ss_rxxml: widestring);
  end;

var
  Frm_SMS05: TFrm_SMS05;

implementation

uses xe_func, xe_gnl, xe_Msg, xe_dm, xe_xml, xe_system, xe_XmlProtocal, xe_Login;
{$R *.dfm}

procedure TFrm_SMS05.btnCloseClick(Sender: TObject);
begin
	grpHelp.Visible := False;
end;

procedure TFrm_SMS05.btnServiceAreaClick(Sender: TObject);
begin
//  gbAreaCHK.Visible := True;
end;

procedure TFrm_SMS05.btnServiceAreaMouseEnter(Sender: TObject);
begin
//  gbAreaCHK.Visible := True;
end;

procedure TFrm_SMS05.btn_sms_accClick(Sender: TObject);
begin
  if not GNULLCheckMsg(edtUserId, '사용자번호', CDMSE) then Exit;

  if (not rbAreaS.Checked) and (not rbAreaO.Checked) then
  begin
    GMessagebox('지역선택을 해주세요.', CDMSE);
    Exit;
  end;

  if (length(edtCertificHNum.Text) < 10) then
  begin
    GMessagebox('인증핸드폰번호를 확인하세요.', CDMSE);
    Exit;
  end;
  // 로그인 이전에 인증시도하여 서버와 연결필요
  dm.SetServerIP;

  smsAccept(1);
  edtAuth.Clear;
  btn_sms_acc.Enabled := False;
  Timer1.Enabled := True;
end;

procedure TFrm_SMS05.btn_sms_accMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SMS05.btn_sms_conClick(Sender: TObject);
begin
  if not GNULLCheckMsg(edtAuth, '인증번호', CDMSE) then Exit;
  smsAccept(2);
end;

procedure TFrm_SMS05.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_SMS05.lblAuthFlagClick(Sender: TObject);
begin
  edtAuth.SetFocus;
end;

procedure TFrm_SMS05.lblCertificHNumFlagClick(Sender: TObject);
begin
  edtCertificHNum.SetFocus;
end;

procedure TFrm_SMS05.lblUserIdFlagClick(Sender: TObject);
begin
  edtUserId.SetFocus;
end;

procedure TFrm_SMS05.cxLabel2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Trim(edtAuth.Text) <> '' then btn_sms_con.Enabled := True
                              else btn_sms_con.Enabled := False;
end;

procedure TFrm_SMS05.edtAuthEnter(Sender: TObject);
begin
  lblAuthFlag.Visible := False;
end;

procedure TFrm_SMS05.edtAuthExit(Sender: TObject);
begin
	lblAuthFlag.Visible := (edtAuth.Text = '');
end;

procedure TFrm_SMS05.edtAuthFocusChanged(Sender: TObject);
begin
	lblAuthFlag.Visible := ( Not edtAuth.Focused ) And (edtAuth.Text = '');
end;

procedure TFrm_SMS05.edtCertificHNumEnter(Sender: TObject);
begin
  lblCertificHNumFlag.Visible := False;
end;

procedure TFrm_SMS05.edtCertificHNumExit(Sender: TObject);
begin
	lblCertificHNumFlag.Visible := (edtCertificHNum.Text = '');
end;

procedure TFrm_SMS05.edtCertificHNumFocusChanged(Sender: TObject);
begin
	lblCertificHNumFlag.Visible := ( Not edtCertificHNum.Focused ) And (edtCertificHNum.Text = '');
end;

procedure TFrm_SMS05.edtCertificHNumKeyPress(Sender: TObject; var Key: Char);
begin
  // 전화번호이기 때문에 숫자만 입력 받는다.  [(Key = #3) : Ctrl+C, (Key = #22) : Ctrl+V]
  if ((Key >= #48) and (Key <= #57)) or (Key = #8) or (Key = #3) or (Key = #22)then
  else
  begin
    Key := #0;
	end;
end;

procedure TFrm_SMS05.edtCertificHNumPropertiesChange(Sender: TObject);
begin
	if ( Not edtCertificHNum.Focused ) then lblCertificHNumFlag.Visible := (edtCertificHNum.Text = '');
end;

procedure TFrm_SMS05.ed_authPropertiesChange(Sender: TObject);
begin
  if Trim(edtAuth.Text) <> '' then btn_sms_con.Enabled := True
                              else btn_sms_con.Enabled := False;
	if ( Not edtAuth.Focused ) then lblAuthFlag.Visible := (edtAuth.Text = '');
end;

procedure TFrm_SMS05.edtUserIdEnter(Sender: TObject);
begin
  lblUserIdFlag.Visible := False;
end;

procedure TFrm_SMS05.edtUserIdExit(Sender: TObject);
begin
	lblUserIdFlag.Visible := (edtUserId.Text = '');
end;

procedure TFrm_SMS05.edtUserIdFocusChanged(Sender: TObject);
begin
	lblUserIdFlag.Visible := ( Not edtUserId.Focused ) And (edtUserId.Text = '');
end;

procedure TFrm_SMS05.edtUserIdKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_SMS05.edtUserIdPropertiesChange(Sender: TObject);
begin
	if ( Not edtUserId.Focused ) then lblUserIdFlag.Visible := (edtUserId.Text = '');
end;

procedure TFrm_SMS05.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TCPClient.Disconnect;
  Action := caFree;
end;

procedure TFrm_SMS05.FormCreate(Sender: TObject);
begin
  if GS_PRJ_AREA = 'S' then
  begin
    lblArea.Caption := '(수도권)';
    rbAreaS.Checked := True;
  end else
  if GS_PRJ_AREA = 'O' then
  begin
    lblArea.Caption := '(지방권)';
    rbAreaO.Checked := True;
  end;

  cxLabel4.Caption := '☆ 인증방법안내' + #13#13 +
                      '   1. 사용자ID와 인증핸드폰번호 입력'  + #13#13 +
                      '   2. [인증번호요청] 버튼을 클릭'  + #13#13 +
                      '   3. 인증핸드폰에 전송된 인증번호 입력'  + #13#13 +
                      '   4. [인증번호확인] 버튼을 클릭'  + #13#13 +
                      '   5. [닫기] 버튼 클릭후 로그인';

  cxLabel3.Caption := '* 인증번호를 연속으로 3회 잘못입력시 다시 인증번호를 요청' + #13 +
                      '  해야 합니다.' + #13#13 +
                      '* 인증번호 발급을 5회 실패시 인증 요청이 자동으로 잠깁니다.' + #13 +
                      '  콜마너 고객센터(1688-6618)를 통해 잠금을 해제 하실수 있' + #13 +
                      '  습니다.' + #13#13 +
                      '* 인증번호 요청 후 1분 이내에는 인증번호 재요청을 할 수' + #13 +
                      '  없습니다.';

  if (GB_365System) Or (GB_CallLine) then
  begin
    lblArea.Visible := False;
    cxLabel3.Caption := '* 인증번호를 연속으로 3회 잘못입력시 다시 인증번호를 요청' + #13 +
                        '  해야 합니다.' + #13#13 +
                        '* 인증번호 발급을 5회 실패시 인증 요청이 자동으로 잠깁니다.' + #13#13 +
                        '* 인증번호 요청 후 1분 이내에는 인증번호 재요청을 할 수' + #13 +
                        '  없습니다.';
    cxLabel1.Visible := False;
    cxLabel15.Visible := False;
  end;
end;

procedure TFrm_SMS05.FormDestroy(Sender: TObject);
begin
  Frm_SMS05 := Nil;
end;

procedure TFrm_SMS05.FormShow(Sender: TObject);
begin
  fSetFont(Frm_SMS05, GS_FONTNAME);

  edtCertificHNum.SetFocus;
end;

procedure TFrm_SMS05.imgXE4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SMS05.Proc_License(ss_rxxml: widestring);
var
  xdom: msDomDocument;
  ls_Msg_Err, ls_ClientKey, LockCode: string;
  lst_Result: IXMLDomNodeList;

  LogEncryptData: TIdBytes;
  iEncryptLen, ii: Integer;
	sMac, sUUID, sTemp: AnsiString;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ss_rxxml) then Exit;

    ls_Msg_Err := GetXmlErrorCode(ss_rxxml);
    if ls_Msg_Err = '0000' then
    begin
      ls_ClientKey := GetXmlClientKey(ss_rxxml);
      ls_ClientKey := Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5);

      if ls_ClientKey = '1' then
      begin
        GMessagebox(MSG100, CDMSE);
        edtAuth.SetFocus;
      end else
      if ls_ClientKey = '2' then
      begin
        ls_Msg_Err := GetXmlErrorCode(ss_rxxml);

        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Auth');
        LockCode := lst_Result.item[0].attributes.getNamedItem('LockCode').Text;

        if StrToIntDef(LockCode, -1) = -1 then
        begin
          GMessagebox('서버측의 인증번호 검증에 오류가 발생하였습니다.' + #13#10 +
            '다시한번 인증번호 확인을 해주세요.', CDMSE);
          Exit;
        end;

        GMessagebox('인증 되었습니다.' + #13#10 + '로그인 하시고 사용해주세요', CDMSI);
        if chkPCAuth.Checked then
          SetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), 'Code', LockCode)
        else
          SetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), Trim(edtUserId.Text)+'Code', LockCode);

        try
          sTemp := GT_USERIF.MC;

          ZeroMemory(@LogEncryptData, SizeOf(LogEncryptData));
          SetLength(LogEncryptData, 1024);
          iEncryptLen := BlowFishEncrypt(Copy(_CHK_KEY,8,10) + Copy(_CHK_KEY,23,22), sTemp, LogEncryptData);

          // Hex 코드 만들기..
          for ii := 0 to iEncryptLen - 1 do
          begin
            sMac := sMac + ByteToHexaStr(LogEncryptData[ii]);
          end;

          SetRegistry(HKEY_LOCAL_MACHINE, 'SYSTEM\WLKXE', 'MACADDR', sMac);
        Except
          Assert(False, 'Mac Address 저장 중 오류 발생');
        end;

				try
					sTemp := SysInfoRec.UUID;

					ZeroMemory(@LogEncryptData, SizeOf(LogEncryptData));
					SetLength(LogEncryptData, 1024);
					iEncryptLen := BlowFishEncrypt(Copy(_CHK_KEY,8,10) + Copy(_CHK_KEY,23,22), sTemp, LogEncryptData);

					// Hex 코드 만들기..
					for ii := 0 to iEncryptLen - 1 do
					begin
						sUUID := sUUID + ByteToHexaStr(LogEncryptData[ii]);
					end;

					SetRegistry(HKEY_LOCAL_MACHINE, 'SYSTEM\WLKXE', 'UUID', sUUID);
				Except
					Assert(False, 'UUID 저장 중 오류 발생');
				end;

				try
					if chkPCAuth.Checked then
          begin
            if pSmsGubun = 'H' then
              SetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), 'PCCHECK', 'H')
            else
              SetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), 'PCCHECK', 'V');

            try
              if cxChkAuthYn.Checked then
                SetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), 'PCCHECKAuth', 'Y')
              else
                SetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), 'PCCHECKAuth', 'N');
            Except
              Assert(False, '관리자 기능 사용 저장 중 오류 발생');
            end;
          end else
          begin
            if pSmsGubun = 'H' then
              SetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), Trim(edtUserId.Text), 'H')
            else
              SetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), Trim(edtUserId.Text), 'V');

            try
              if cxChkAuthYn.Checked then
                SetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), Trim(edtUserId.Text)+'Auth', 'Y')
              else
                SetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), Trim(edtUserId.Text)+'Auth', 'N');
            Except
              Assert(False, '관리자 기능 사용 저장 중 오류 발생');
            end;
          end;
        Except
          Assert(False, 'Hard 시리얼 저장 중 오류 발생');
        end;

        Self.Close;
      end;
    end else
    begin
      GMessagebox(MSG012 + CRLF + ls_Msg_Err, CDMSE);
      if Pos('3회', ls_Msg_Err) > 0 then
      begin
        edtAuth.Clear;
        btn_sms_acc.Enabled := True;
        Timer1.Enabled := False;
      end;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_SMS05.rbSelectAreaClick(Sender: TObject);
begin
  if Sender = rbAreaS then
  begin
    frm_Login.rbAreaS.Checked := True;
  end else
  begin
    frm_Login.rbAreaO.Checked := True;
  end;
end;

function TFrm_SMS05.SendSock(const ASendData: string; var slList: TStringList;
  ATimeOut: Integer): Boolean;
var
  BRHeader, BRBody: TIdBytes;
  AMsgCode, TempStr: AnsiString;

  ArrayHeader: array [0 .. 13] of AnsiChar;
  AHeader: TTCKCommonHeader;
  APacketData: TIdBytes;
  APacketArr: array of Byte;
  APacketSize: Integer;
  pData: PAnsiChar;
begin
  AMsgCode := 'C011';

  TempStr := UTF8Encode(ASendData);

  SetLength(APacketData, MaxCommandSize);
  APacketSize := MakePacket(APacketData, AMsgCode, TempStr, CC_ENCRYPT);

  try
    if TCPClient.Connected then
    begin
      slList.Clear;

      TCPClient.ReadTimeout := ATimeOut;
      TCPClient.IOHandler.Write(RawToBytes(APacketData[0], APacketSize));

      // [hjf] Header에서 패킷 길이 읽어와서 메모리를 읽는다.
      TCPClient.IOHandler.ReadBytes(BRHeader, SizeOf(ArrayHeader));
      BytesToRaw(BRHeader, ArrayHeader, SizeOf(ArrayHeader));

      Move(ArrayHeader, AHeader, SizeOf(ArrayHeader));
      AHeader.PacketLength := ntohl(AHeader.PacketLength);

      if AHeader.PacketLength > 0 then
      begin
        SetLength(APacketArr, AHeader.PacketLength);
        GetMem(pData, AHeader.PacketLength);
        try
          TCPClient.IOHandler.ReadBytes(BRBody, AHeader.PacketLength);
          BytesToRaw(BRBody, pData^, AHeader.PacketLength);
          Move(pData^, APacketArr[0], AHeader.PacketLength);
          TCPClient.IOHandler.ReadString(1);
        finally
          FreeMem(pData);
        end;

        TempStr := BlowFishDecrypt(CC_DNCRYPT, APacketArr[0], AHeader.PacketLength);
        TempStr := UTF8Decode(TempStr);

        slList.Add(TempStr);
      end else
      begin
        slList.Add('');
      end;

      Result := True;
    end else
    begin
      slList.Add('');
      Result := False;
    end;
  except
    on E: Exception do
    begin
      Log(E.Message, LOGDATAPATHFILE);
      slList.Add('');
      Result := True;
    end;
  end;
end;

procedure TFrm_SMS05.smsAccept(igubun: Integer);
label
  Retry;
var
  ls_TxLoad, ls_Gubun, ls_Code, rv_str: string;
  StrList: TStringList;
  MacAddr: string;
  Connectd: Boolean;
begin
  if not GNULLCheckMsg(edtUserId, '사용자번호', CDMSE) then
    Exit;

  ls_Gubun := IntToStr(igubun);

  pSmsGubun := 'V';
  GT_USERIF.HS := SysInfoRec.VolumeSerial;

  if ls_Gubun = '1' then
    ls_Code := ''
  else
    ls_Code := edtAuth.Text;

  MacAddr := GT_USERIF.MC;

  if MacAddr = '' then
  begin
    GMessagebox('현재 컴퓨터의 Mac Address를 얻을수 없습니다.' + #13#10#13#10 +
      '(다수의 랜카드를 사용하실 경우 네트워크환경에서 사용하지 않는 ' + #13#10 +
      ' 네트워크를 [사용안함]으로 변경하시고 다시 시도 바랍니다.)', CDMSE);
    Exit;
  end;

  ls_TxLoad := GTx_UnitXmlLoad('C011N1.XML');
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString'    , Trim(edtUserId.Text),     [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString' , VERSIONINFO,   [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString' , self.Caption + ls_Gubun, [rfReplaceAll]); // SMS051, SMS052
  ls_TxLoad := StringReplace(ls_TxLoad, 'IDString'        , En_Coding(edtUserId.Text),  [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString'     , ls_Gubun,  [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'MacAddressString', MacAddr,  [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CodeString'      , En_Coding(edtAuth.Text),  [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'LocalIPString'   , GT_USERIF.IP,  [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'HDDSNString'     , RemoveAll(GT_USERIF.HS, '-'), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'MBSNString'      , '', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CPUSNString'     , '', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CompNameString'  , SysInfoRec.ComputerName, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserHPString'    , En_Coding(edtCertificHNum.Text), [rfReplaceAll]);

  Connectd := False;

Retry:
  try
    TCPClient.Disconnect;
    TCPClient.Host := SERVER_IP;
    TCPClient.Port := StrToInt(SERVER_PORT);
    TCPClient.ReadTimeout := 3000;
    TCPClient.Connect();
    Connectd := True;
  except
    on E: Exception do
      Log(E.Message, LOGDATAPATHFILE);
  end;

  /// DebugMessage
  if not Connectd then
  begin
    if dm.ServerIPChange then
      goto Retry;

    GMessagebox('서버 접속이 안됩니다.' + #13#10 + '다시 시도해 주세요', CDMSE);
    Exit;
  end;

  StrList := TStringList.Create;
  try
    if SendSock(ls_TxLoad, StrList) then
    begin
      rv_str := StrList[0];
      Proc_License(rv_str);
    end;
  finally
    StrList.Free;
  end;
end;

procedure TFrm_SMS05.Timer1Timer(Sender: TObject);
begin
  btn_sms_acc.Enabled := True;
  Timer1.Enabled := False;
end;

end.

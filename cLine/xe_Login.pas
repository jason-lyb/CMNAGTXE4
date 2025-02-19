unit xe_Login;

interface

uses
	Windows, cxGraphics, cxControls, Hash, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.Menus,
  Vcl.StdCtrls, cxRadioGroup, AdvGroupBox, cxCheckBox, cxButtons, cxTextEdit, cxLabel, dxGDIPlusClasses, AdvWiiProgressBar, Vcl.ExtCtrls,
  Vcl.Controls, System.Classes, Winapi.ShellAPI,
  //---------------------
  Forms, Messages, SysUtils, Variants, Graphics, Dialogs, MSXML2_TLB, ComObj, IniFiles, IDGlobal, Imm, System.StrUtils, WinSvc,
  dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;


type
  TFrm_Login = class(TForm)
    PnlLogin: TPanel;
		edtUserID: TcxTextEdit;
    edtPassword: TcxTextEdit;
    lblPasswordFlag: TcxLabel;
    chkId: TcxCheckBox;
    chkPw: TcxCheckBox;
    chkIdConfig: TcxCheckBox;
    AdvWiiProgressBar1: TAdvWiiProgressBar;
    lblLightUp: TLabel;
    lblDescription: TLabel;
    lblUserIdFlag: TcxLabel;
    PnlProgress: TPanel;
    Image1: TImage;
    Image3: TImage;
    Shape1: TShape;
    btnConnectCnl: TcxButton;
    chkPCAuth: TcxCheckBox;
    cxLblServiceArea: TcxLabel;
    cxLblServer: TcxLabel;
    cxLblRunBackup: TcxLabel;
    gbAreaCHK: TAdvGroupBox;
    rbAreaO: TcxRadioButton;
    rbAreaS: TcxRadioButton;
    gbServerCHK: TAdvGroupBox;
    rbServer02: TcxRadioButton;
    rbServer03: TcxRadioButton;
    rbServerCIS: TcxRadioButton;
    rbServerTest: TcxRadioButton;
		cxLblVer: TcxLabel;
    cxCheckBox4: TcxCheckBox;
    cxLblDate: TcxLabel;
    cxCheckBox5: TcxCheckBox;
    cxEdtIP: TcxTextEdit;
    lb_Notice1: TcxLabel;
    lb_Notice2: TcxLabel;
    lblArea: TcxLabel;
    lblLogin: TcxLabel;
    lblClose: TcxLabel;
    chk_CIDDebug: TcxCheckBox;
    chkAutoLogin: TcxCheckBox;
    tmrAutoLogin: TTimer;
    cxLabel4: TcxLabel;
    ShpRemote: TShape;
    btn_SI415PBX: TcxButton;
		procedure rbSelectAreaClick(Sender: TObject);
    procedure rdoServerSelectClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtUserIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure PnlLoginMouseEnter(Sender: TObject);
    procedure edtUserIDEnter(Sender: TObject);
    procedure edtUserIDExit(Sender: TObject);
		procedure edtPasswordEnter(Sender: TObject);
    procedure edtPasswordExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure gbAreaCHKMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure gbServerCHKMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnConnectCnlClick(Sender: TObject);
    procedure cxLblVerDblClick(Sender: TObject);
    procedure cxCheckBox5Click(Sender: TObject);
    procedure chkPCAuthClick(Sender: TObject);
    procedure cxLblServerClick(Sender: TObject);
    procedure cxLblServiceAreaClick(Sender: TObject);
    procedure cxLblServiceAreaMouseEnter(Sender: TObject);
    procedure cxLblServerMouseEnter(Sender: TObject);
    procedure cxLblRunBackupClick(Sender: TObject);
    procedure chkPwClick(Sender: TObject);
    procedure lblUserIdFlagClick(Sender: TObject);
    procedure lblPasswordFlagClick(Sender: TObject);
    procedure edtUserIDFocusChanged(Sender: TObject);
    procedure edtPasswordFocusChanged(Sender: TObject);
    procedure edtUserIDPropertiesChange(Sender: TObject);
    procedure edtPasswordPropertiesChange(Sender: TObject);
		procedure lblLoginClick(Sender: TObject);
    procedure lblCloseClick(Sender: TObject);
    procedure chk_CIDDebugClick(Sender: TObject);
    procedure chkIdPropertiesChange(Sender: TObject);
    procedure tmrAutoLoginTimer(Sender: TObject);
    procedure chkIdEnter(Sender: TObject);
    procedure chkAutoLoginClick(Sender: TObject);
    procedure edtUserIDMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ShpRemoteMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btn_SI415PBXClick(Sender: TObject);
  private
    { Private declarations }
    FReCount: Integer;
    bConnect : Boolean;
    FLoginCnt : Integer;
    /// 재접속 Count;
    procedure OnLogIn(Reconnect1: Boolean = False);
		procedure fnSetHangulOnOffH(const bSetHan: Boolean; Handle : HWND);
	public
    { Public declarations }
    function func_LoginCheck(ss_rxxml: widestring): Boolean;
  end;

var
  Frm_Login: TFrm_Login;
  EHWND: HWND; // ID 핸들저장.

const
  _LOG_KEY = '9me0q9b3p6c7x9re4n1sf8sn8rq0k1iz';

implementation

uses xe_SMS05, xe_GNL, xe_Func, xe_Msg, xe_runbackup, xe_system, Main, xe_Dm,
  xe_xml, xe_VerCheck, xe_progress, xe_gnl2, xe_charge;

{$R *.dfm}

procedure TFrm_Login.btnConnectCnlClick(Sender: TObject);
begin
  bConnect := False;
end;

procedure TFrm_Login.chkPwClick(Sender: TObject);
begin
  if chkPw.Checked then chkId.Checked := True;
end;

procedure TFrm_Login.chk_CIDDebugClick(Sender: TObject);
begin
	if chk_CIDDebug.Checked then GB_CIDDEBUG_USE := True
													else GB_CIDDEBUG_USE := False;
end;

procedure TFrm_Login.cxCheckBox5Click(Sender: TObject);
begin
  if cxCheckBox5.Checked then GB_DEBUG_USE := True
                         else GB_DEBUG_USE := False;
end;

procedure TFrm_Login.btn_SI415PBXClick(Sender: TObject);
var
	iHandle: THandle;
	bTmp : Boolean;
	ProcID: DWORD;
	hProcess: THandle;
	TermSucc: BOOL;
	sMsg : string;
begin
	Try
		sMsg := '소프트폰을 단독 실행 하시겠습니까?';

		if Application.MessageBox(PChar(sMsg), '[CMNSoftPhone]', MB_YESNO +	MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
		begin
			ProcID:= Process32ListFind('CMNSoftPhone.exe');
			if ProcID <> 0 then
			begin
				// 존재하는 process object의 handle을 return한다
				hProcess := OpenProcess(PROCESS_ALL_ACCESS, TRUE, ProcID);

				// 명시한 process를 강제 종료시킨다
				TermSucc := TerminateProcess(hProcess, 0);
				Sleep(500);
			end;
			ShellExecute(
				Self.Handle,
				'open',
				PChar(ExtractFilePath(ParamStr(0)) + 'CMNSoftPhone.exe'),
				PChar(String('')),
				nil,
				SW_SHOWNORMAL
			);
		end;
	except
  end;
end;

procedure TFrm_Login.chkAutoLoginClick(Sender: TObject);
Var  EnvFile: TIniFile;
begin
  try
    EnvFile := TIniFile.Create(ENVPATHFILE);
		EnvFile.WriteBool('LOGIN', 'AutoLogin', chkAutoLogin.Checked);
  finally
    FreeAndNil(EnvFile);
  end;
end;

procedure TFrm_Login.chkIdEnter(Sender: TObject);
begin
  tmrAutoLogin.Tag := 99;
end;

procedure TFrm_Login.chkIdPropertiesChange(Sender: TObject);
begin
  chkAutoLogin.Enabled := chkId.Checked And chkPw.Checked;
end;

procedure TFrm_Login.chkPCAuthClick(Sender: TObject);
Var  EnvFile: TIniFile;
begin
  if chkPCAuth.Checked then GS_CheckPC := True
											 else GS_CheckPC := False;

  try
    EnvFile := TIniFile.Create(ENVPATHFILE);
		EnvFile.WriteBool('LOGIN', 'PCCheck', chkPCAuth.Checked);
  finally
    FreeAndNil(EnvFile);
  end;
end;

procedure TFrm_Login.lblLoginClick(Sender: TObject);
Var
  sCopyFile: TStringList;
	sTemp: AnsiString;
	EnvFile: TIniFile;
	sTmp : string;
	vHash : THashSHA2;
begin
	SetDebugeWrite('Frm_Login.btnLoginClick');

  tmrAutoLogin.Tag := 99;
	CHARGE_Online_MSGCNT := 0;   //초기값
  btn_SI415PBX.Visible := False;

  if cxLblServiceArea.Caption = '지역선택' then
  begin
    ShowMessage('서비스 지역을 선택해 주세요');
    Exit;
  end;

  if not GNULLCheckMsg(edtUserID, '사용자ID', CDMSE) then Exit;
  if not GNULLCheckMsg(edtPassword, '비밀번호', CDMSE) then Exit;

  if cxCheckBox4.Checked then Dm.gsTestPORTYN := 'Y'
                         else Dm.gsTestPORTYN := 'N';

	if chkPCAuth.Checked then
	begin
		sTemp := GetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), 'PCCHECKAuth')
	end else
	begin
		sTemp := GetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), edtUserID.Text+'Auth')
	end;

//	if sTemp = 'N' then GS_AdminAuthYN := False
//								 else GS_AdminAuthYN := True;

  GS_AdminAuthYN := True;   // XE3는 관리자 인증 체크 안함

  GB_DEBUG_USE := False;
//	if cxCheckBox5.Checked then GB_DEBUG_USE := True;
  GB_DEBUG_USE := True;

  GS_EXEC_OSName := GetOSNameEx(True, True);
  if Pos('Windows XP', GS_EXEC_OSName) > 0  then
  begin
    fnSetHangulOnOffH(True, self.Handle);
    GS_EXEC_WIN7 := True;
  end;
  if Pos('Windows 7', GS_EXEC_OSName) > 0 then GS_EXEC_WIN7 := True
                                          else GS_EXEC_WIN7 := False;
	if Pos('Windows 8', GS_EXEC_OSName) > 0 then GS_EXEC_WIN8 := True
                                          else GS_EXEC_WIN8 := False;
	if Pos('Windows 10', GS_EXEC_OSName) > 0 then GS_EXEC_WIN10 := True
                                           else GS_EXEC_WIN10 := False;

  chkIdConfig.SetFocus;

  if ( cxEdtIP.Visible ) And ( Trim(cxEdtIP.Text) <> '' ) then
    TESTSERVER_IP := Trim(cxEdtIP.Text)
  else
    TESTSERVER_IP := '';

  // 서버아이피 구성(1번, 2번, 3번, 테스트 별)
  dm.SetServerIP;

	GT_USERIF.ID := edtUserID.Text;
	// sah256 해쉬 추가 20120622 KHS
	sTmp := vHash.GetHashString(edtPassword.Text+'callmaner#2106Key',SHA256); 
	GT_USERIF.HashPW := sTmp;//eedtPassword.Text;
	GT_USERIF.PW := edtPassword.Text;
	GT_USERIF.LOGIN := '0';

  dm.FReConnectCheck := False;
  dm.FReconnectCheck2 := False;

  dm.TCPClient.Disconnect;
  dm.TCPAccept.Disconnect;

  dm.SendOTP := CC_ENCRYPT;
  dm.RecvOTP := CC_DNCRYPT;

	if chkIdConfig.Checked then
	begin
		sTmp := Trim(edtUserID.Text);
		if (Pos('|', sTmp) > 0) or (Pos('/', sTmp) > 0) or (Pos(':', sTmp) > 0) or
			 (Pos('*', sTmp) > 0) or (Pos('?', sTmp) > 0) or (Pos('"', sTmp) > 0) or
			 (Pos('<', sTmp) > 0) or (Pos('>', sTmp) > 0) or (Pos('\', sTmp) > 0) then sTmp := StrToAnsiHex(sTmp);

		ENVPATHFILE := EXECDIRECTORY + 'cmnagtenv_' + sTmp + '.ini';
		if Not FileExists(ENVPATHFILE) then
		begin
      sCopyFile := TStringList.Create;
      try
				sCopyFile.LoadFromFile(EXECDIRECTORY + ENVFILENAME);
				sCopyFile.SaveToFile(ENVPATHFILE);
      finally
        FreeAndNil(sCopyFile);
      end;
    end;
	end else
	begin
		ENVPATHFILE := EXECDIRECTORY + ENVFILENAME;
	end;

	try
    EnvFile := TIniFile.Create(ENVPATHFILE);
    EnvFile.WriteBool('LOGIN', 'CONFIGCheck', chkIdConfig.Checked);
//    GS_JON01_TAB := EnvFile.ReadInteger('COUNSEL', 'GS_JON01_TAB' , 0);
    GS_JON01_TAB := 0;
  finally
    FreeAndNil(EnvFile);
  end;

  try
  	if (GT_USERIF.ID <> '') and (GS_EXEC_GUBUN = 1) and (GT_PRG_DUAL_MAIN = 0) then
    begin
      if FileExists(WINTEMPDIRECTORY + 'CXELog.log')  then RenameFile(WINTEMPDIRECTORY + 'CXELog.log' , WINTEMPDIRECTORY + 'CXELogBak.log' ); // 파일명변경
      if FileExists(WINTEMPDIRECTORY + 'CXELog1.log') then RenameFile(WINTEMPDIRECTORY + 'CXELog1.log', WINTEMPDIRECTORY + 'CXELog1Bak.log'); // 파일명변경
    end;
  except

  end;

	if (GS_PRJ_AREA = 'O') and ((GT_USERIF.ID = 'j4000') or (GT_USERIF.ID = 'j4000-0') or (GT_USERIF.ID = 'st100')) then
	begin
		if GT_USERIF.MC = '' then GT_USERIF.MC := RemoveAll(GetMacAddressEx, '-'); //로그인 창 실행 후 맥정보 확인  Create에서 위치이동
	end;

	// 엔터키 여러번 눌렸을때 한번만 실행되게 하기 위함.
  if PnlLogin.Enabled then
    OnLogIn;
end;

procedure TFrm_Login.lblCloseClick(Sender: TObject);
begin
  tmrAutoLogin.Tag := 99;
  Self.ModalResult := mrCancel;
end;

procedure TFrm_Login.cxLblRunBackupClick(Sender: TObject);
begin
  tmrAutoLogin.Tag := 99;
  if not FileExists(ExtractFilePath(Application.ExeName) + XE_BACKUPFILE) then
  begin
    ShowMessage('이전버전이 없어 실행 할 수 없습니다.'#13#10'(이전버전은 다음 업데이트 시 자동 생성 됩니다.)');
    Exit;
  end;

	frm_RunBackup := Tfrm_RunBackup.Create(Self);
	try
    frm_RunBackup.Left := Self.Left;
    frm_RunBackup.Top := Self.Top + 70;
    frm_RunBackup.ShowModal;
  finally
    frm_RunBackup.Free;
  end;
end;

procedure TFrm_Login.cxLblServerClick(Sender: TObject);
begin
  tmrAutoLogin.Tag := 99;
  gbServerCHK.Visible := True;
end;

procedure TFrm_Login.cxLblServerMouseEnter(Sender: TObject);
begin
	gbServerCHK.Left := cxLblServer.Left + 2;
	gbServerCHK.Top := cxLblServer.Top + cxLblServer.Height - 3;
	gbServerCHK.Visible := True;
  gbAreaCHK.Visible := False;
end;

procedure TFrm_Login.cxLblServiceAreaClick(Sender: TObject);    
var iAreaFlag : integer;
begin
	if (Pos('_ji', EXECDIRECTORY) > 0) or (Pos('_JI', EXECDIRECTORY) > 0) then	iAreaFlag := 1 else iAreaFlag := 2;
	if (edtUserID.Text = 'sntest') then iAreaFlag := 3; //개발아이디는 예외
	if (Pos('DEV_CMNAGTXE', EXECDIRECTORY) > 0) then iAreaFlag := 3; //개발폴더 예외
					
	if iAreaFlag = 3 then //지방권 폴더에서 수도권 선택하면
	begin
		gbAreaCHK.Visible := True;
	end;  
end;

procedure TFrm_Login.cxLblServiceAreaMouseEnter(Sender: TObject);
var iAreaFlag : integer;
begin
	gbAreaCHK.Left := 306;
	gbAreaCHK.Top := 186;
//	gbAreaCHK.Visible := True;
	if (Pos('_ji', EXECDIRECTORY) > 0) or (Pos('_JI', EXECDIRECTORY) > 0) then	iAreaFlag := 1 else iAreaFlag := 2;

	if (edtUserID.Text = 'sntest') then iAreaFlag := 3; //개발아이디는 예외
	
	if (Pos('DEV_CMNAGTXE', EXECDIRECTORY) > 0) then iAreaFlag := 3; //개발폴더 예외
					
	if iAreaFlag = 3 then //지방권 폴더에서 수도권 선택하면
	begin
		gbAreaCHK.Visible := True;
	end;  

	gbServerCHK.Visible := False;
end;

procedure TFrm_Login.cxLblVerDblClick(Sender: TObject);
begin
  if cxCheckBox4.Visible then
  begin
		cxCheckBox4.Visible := False;
    cxCheckBox4.Checked := False;

    cxCheckBox5.Visible := False;
    cxCheckBox5.Checked := False;

		chk_CIDDebug.Visible := False;
		chk_CIDDebug.Checked := False;

    cxEdtIP.Visible := False;
  end else
  begin
    cxCheckBox4.Visible := True;
    cxCheckBox5.Visible := True;
		chk_CIDDebug.Visible := True;
		cxEdtIP.Visible := True;
  end;
end;

procedure TFrm_Login.edtPasswordEnter(Sender: TObject);
begin
  tmrAutoLogin.Tag := 99;
  lblPasswordFlag.Style.Color := $00D7E3FF;
  lblPasswordFlag.Visible := False;
end;

procedure TFrm_Login.edtPasswordExit(Sender: TObject);
begin
  lblPasswordFlag.Style.Color := clWhite;
	lblPasswordFlag.Visible := (edtPassword.Text = '');
end;

procedure TFrm_Login.edtPasswordFocusChanged(Sender: TObject);
begin
	lblPasswordFlag.Visible := ( Not edtPassword.Focused ) And (edtPassword.Text = '');
end;

procedure TFrm_Login.edtPasswordKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    lblLoginClick(lblLogin);
end;

procedure TFrm_Login.edtPasswordPropertiesChange(Sender: TObject);
begin
	if ( Not edtPassword.Focused ) then lblPasswordFlag.Visible := (edtPassword.Text = '');
end;

procedure TFrm_Login.edtUserIDEnter(Sender: TObject);
begin
  lblUserIdFlag.Style.Color := $00D7E3FF;
  lblUserIdFlag.Visible := False;
end;

procedure TFrm_Login.edtUserIDExit(Sender: TObject);
begin
  lblUserIdFlag.Style.Color := clWhite;
	lblUserIdFlag.Visible := (edtUserId.Text = '');
end;

procedure TFrm_Login.edtUserIDFocusChanged(Sender: TObject);
begin
	lblUserIdFlag.Visible := ( Not edtUserId.Focused ) And (edtUserId.Text = '');
end;

procedure TFrm_Login.edtUserIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Ord(Key) = VK_RETURN then
    Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFrm_Login.edtUserIDMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  tmrAutoLogin.Tag := 99;
end;

procedure TFrm_Login.edtUserIDPropertiesChange(Sender: TObject);
begin
	if ( Not edtUserId.Focused ) then lblUserIdFlag.Visible := (edtUserId.Text = '');
end;

procedure TFrm_Login.fnSetHangulOnOffH(const bSetHan: Boolean; Handle: HWND);
var
	TIMC : HIMC;
	dwSentence, dwConversion : DWORD;
	hWndCtrl : HWnd;
begin
	hWndCtrl := Handle;

	TIMC := ImmGetContext(hWndCtrl);
	ImmGetConversionStatus(TIMC, dwConversion, dwSentence);

	if bSetHan then // 한글 모드
  	ImmSetConversionStatus(TIMC, IME_CMODE_NATIVE, dwSentence)
	else // 영문 모드
  	ImmSetConversionStatus(TIMC, IME_CMODE_ROMAN, dwSentence);

	ImmReleaseContext(hWndCtrl, TIMC);
end;

procedure TFrm_Login.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Self.ModalResult = mrCancel then
  begin
    Action := caHide;
    frm_Main.IdTCPClient1.Tag := 99;
  end else
  if Self.ModalResult = mrOk then
  begin
    Frm_progress.Close;
    Action := caFree;
  end;
end;

procedure TFrm_Login.FormCreate(Sender: TObject);
begin
  try
    Self.Caption := PROJECTNAME + '-' + Self.Caption;

    GT_USERIF.MC := RemoveAll(GetMacAddressEx, '-');
    GT_USERIF.Wibro := IsWibro;
    GT_USERIF.IP := GetLocalIP(STANDFUNCPATHFILE);

    // 프로그램 실행 경로 저장 변수.
    FReCount := 0;

    cxLblVer.Caption := 'Ver ' + GS_PRJ_VERSION;

    PnlProgress.Left := 2;
    PnlProgress.Top := 456;
  except
    on E: Exception do
      Assert(False, E.Message);
  end;
end;

procedure TFrm_Login.FormDestroy(Sender: TObject);
begin
  Frm_Login := Nil;
end;

procedure TFrm_Login.FormShow(Sender: TObject);
var
  sTemp: AnsiString;
  bCheckID, bCheckPass, bCheckConfig, bCheckAuto : Boolean;
  EnvFile: TIniFile;
	SearchRec : TSearchRec; // 파일 속성값을 저장.
	ftLWL : TFileTime;
	ftLW : TSystemTime;
	ftLWs, msg : string;
	ProcID: DWORD;
	sPbxID, sPbxExt, sPbxIp, sPbxComId : string;
	iGubun : integer;
begin
  fSetFont(Frm_Login, GS_FONTNAME);

	lb_Notice1.visible := False;
	lb_Notice2.visible := False;
	lb_Notice1.Left := 47;
	lb_Notice1.Top := 427;
	lb_Notice2.Left := 47;
	lb_Notice2.Top := 440;

	ProcID:= Process32ListFind('fclient.exe');
	if ProcID <> 0 then
	begin
		lb_Notice1.visible := True;
		lb_Notice2.visible := True;
		lb_Notice1.Style.TextColor := ClRed;
		lb_Notice2.Style.TextColor := ClRed;
		lb_Notice1.Caption := '현재 보안프로그램(Fasoo DRM)이 구동중이어서 ';
		lb_Notice2.Caption := '상담원 프로그램이 정상작동하지 않을 수 있습니다';
//	end else
//	if Not (ServiceGetList('', SERVICE_WIN32, SERVICE_STATE_ALL)) then
//	begin
//		lb_Notice1.visible := True;
//		lb_Notice2.visible := True;
//		lb_Notice1.Style.TextColor := clWhite;
//		lb_Notice2.Style.TextColor := clWhite;
//		lb_Notice1.Caption := '보안프로그램이 실행되는 업무(은행, 보험, 증권 등)와';
//		lb_Notice2.Caption := '함께 실행할 경우 정상작동하지 않을 수 있습니다';
	end;

  if (LowerCase(ExtractFileName(Application.ExeName)) <> XE_PROCESSNAME) then
    if (XE_PROCESSNAME) <> (XE_PROCESSNAME) then
    begin
      cxLblRunBackup.Enabled := False;
      Msg := '해당 파일은 최종버젼이 아닙니다. 최종버젼에 문제가 있을 경우 임시 사용바랍니다.'#13#10 +
        '(최종버젼을 사용하시려면 바탕화면의 ['+GS_APPNAME+'] 아이콘을 실행하시기 바랍니다.)';
      ShowMessage(Msg);
    end;

  try
  	FindFirst(EXtractFileName(Application.ExeName), faAnyFile, SearchRec);
  	FileTimeToLocalFileTime(SearchRec.FindData.ftLastWriteTime, ftLWL);
  	FileTimeToSystemTime(ftLWL, ftLW);
  	ftLWs := format('%0.4d-%0.2d-%0.2d %0.2d:%0.2d', [ftLW.wYear,ftLW.wMonth,ftLW.wDay,ftLW.wHour,ftLW.wMinute]);

    cxLblDate.Caption := 'Date ' + ftLWs;
  Except
    cxLblDate.Caption := '';
  end;

  edtUserID.Clear;
  edtPassword.Text := '';
  Screen.Cursor := crDefault;

  // 메뉴, 화면 권한 Clear..
  GT_Permition.aryGrpCode.Clear;
  GT_Permition.aryMmCode.Clear;
  GT_Permition.aryDetCode.Clear;
  GT_Permition.aryMemPer.Clear;
  GT_Permition.aryMemDetPer.Clear;
  GT_Permition.aryMmNumber.Clear;
  GT_Permition.aryMenuAuth.Clear;
  GT_Permition.aryMmGrpName.Clear;
  GT_Permition.aryMmName.Clear;
  try
    EnvFile := TIniFile.Create(ENVPATHFILE);

		GS_PRJ_AREA := 'O';  // 콜라인 지방권

		bCheckID := EnvFile.ReadBool('LOGIN', 'IDCheck', False);
    bCheckPass := EnvFile.ReadBool('LOGIN', 'PASSCheck', False);
    bCheckConfig := EnvFile.ReadBool('LOGIN', 'CONFIGCheck', False);
		GS_CheckPC := EnvFile.ReadBool('LOGIN', 'PCCheck', False);
    bCheckAuto := EnvFile.ReadBool('LOGIN', 'AutoLogin', False);
    chkAutoLogin.Checked := bCheckAuto;
    If bCheckID Then
    begin
			chkId.Checked := True;
			sTemp := GetRegistry(HKEY_LOCAL_MACHINE, 'SYSTEM\WLKXECALLLINE', 'LOGID');
			sTemp := HexToValue(sTemp);
			sTemp := BlowFishDecrypt(_LOG_KEY, sTemp);
			edtUserID.Text := StringToWideString(sTemp, CP_ACP);
		end Else
		begin
			chkId.Checked := False;
			edtUserID.Text := '';
		end;

		If bCheckPass Then
		begin
			chkPw.Checked := True;
			sTemp := GetRegistry(HKEY_LOCAL_MACHINE, 'SYSTEM\WLKXECALLLINE', 'PASSWD');
			sTemp := HexToValue(sTemp);
      sTemp := BlowFishDecrypt(_LOG_KEY, sTemp);
      edtPassword.Text := StringToWideString(sTemp, CP_ACP);
    end Else
    begin
      chkPw.Checked := False;
      edtPassword.Text := '';
    end;

    If bCheckConfig Then
    begin
      chkIdConfig.Checked := True;
    end Else
    begin
      chkIdConfig.Checked := False;
    end;

    If GS_CheckPC Then
    begin
      chkPCAuth.Checked := True;
    end Else
    begin
      chkPCAuth.Checked := False;
    end;


		// 접속방법은 해당일만 적용
    if StartDate = EnvFile.ReadString('Connection', 'Date', '') then
      GT_ConnectionType := TConnectionType(EnvFile.ReadInteger('Connection',
        'Type', Ord(ctCIS)))
    else
    begin
      GT_ConnectionType := ctCIS;
    end;

    if GT_ConnectionType = ctTest then
      GT_ConnectionType := ctCIS;

    case GT_ConnectionType of
      ctCIS:
        rbServerCIS.Checked := True;
      ct203:
        rbServer03.Checked := True;
      ct58, ct61:
        rbServer02.Checked := True;
    end;

//    rbServerTest.Checked := True;

    EnvFile.WriteString('Connection', 'Date', StartDate);
    EnvFile.WriteInteger('Connection', 'Type', Ord(GT_ConnectionType));

    if not rbServerCIS.Checked then
      cxLblServerClick(cxLblServer);

		if GS_PRJ_AREA = 'S' then
		begin
      lblArea.Caption := '(수도권)';
			rbAreaS.Tag := 99;
			rbAreaS.Checked := True;
			rbAreaS.Tag := 0;
			rbSelectAreaClick(rbAreaS);
		end else
    if GS_PRJ_AREA = 'O' then
    begin
      lblArea.Caption := '(지방권)';
			rbAreaO.Tag := 99;
			rbAreaO.Checked := True;
			rbAreaO.Tag := 0;
			rbSelectAreaClick(rbAreaO);
		end;

		//소프트폰 사용여부체크
		iGubun  := -1; sPbxID := ''; sPbxExt := ''; sPbxIp := ''; sPbxComId := '';
		iGubun    := EnvFile.ReadInteger('CID_COMM', 'GUBUN', 0);
		sPbxID    := EnvFile.ReadString('CID_COMM', 'PBX_ID', '');
		sPbxExt   := EnvFile.ReadString('CID_COMM', 'PBX_EXT', '');
		sPbxIp    := EnvFile.ReadString('CID_COMM', 'PBX_IP', '');
		sPbxComId := EnvFile.ReadString('CID_COMM', 'PBX_ComID', '');

		if (iGubun = 5) and (sPbxID <> '') and (sPbxExt <> '') and (sPbxIp <> '') and (sPbxComId <> '') then
    begin
      btn_SI415PBX.Caption := '소프트폰' + CRLF + '단독실행';
			btn_SI415PBX.Visible := True;
    end;
  finally
    FreeAndNil(EnvFile);
  end;

  if ( Trim(edtUserID.Text) <> '' ) And ( Trim(edtPassword.Text) <> '' ) then
  begin
    if ( bCheckAuto ) then tmrAutoLogin.Enabled := True;
  end else
  begin
    chkAutoLogin.Checked := False;
  end;

  // edtUserID.SetFocus;
end;

function TFrm_Login.func_LoginCheck(ss_rxxml: widestring): Boolean;
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  i: Integer;
  Msg, sTmp, sGrpCd, sDetailCd, ls_MSG_Err, LimitDay, AuthType, sTmp1 : string;
  ln_envfile: TIniFile;

	sLogID, sPass: AnsiString;
//	sCopyFile: TStringList;
	LogEncryptData: TIdBytes;
	iEncryptLen, ii: Integer;
	EnvFile: TIniFile;
	vHash : THashSHA2;
begin
	SetDebugeWrite('Frm_Login.func_LoginCheck');
  Result := False;
  try
    xdom := ComsDomDocument.Create;
    try
      if not xdom.loadXML(ss_rxxml) then
      begin
        ShowMessage('서버와 통신이 원할하지 않습니다. 프로그램을 다시 시작해 주세요.');
        dm.tmPing.Enabled := False;
        PnlLogin.Enabled := True;
        Exit;
      end;


/////////////////로그인 성공 후 ID 비번 저장 20190819 KHS///////////////////////////////////
			if chkId.Checked then
			begin
				sLogID := '';
				sTmp := edtUserID.Text;

				ZeroMemory(@LogEncryptData, SizeOf(LogEncryptData));
				SetLength(LogEncryptData, 1024);
				iEncryptLen := BlowFishEncrypt(_LOG_KEY, sTmp, LogEncryptData);

				// Hex 코드 만들기..
				for ii := 0 to iEncryptLen - 1 do
				begin
					sLogID := sLogID + ByteToHexaStr(LogEncryptData[ii]);
				end;

				SetRegistry(HKEY_LOCAL_MACHINE, 'SYSTEM\WLKXECALLLINE', 'LOGID', sLogID);
		  end;

			if chkPw.Checked then
			begin
				sPass := '';
				sTmp := edtPassword.Text;

				ZeroMemory(@LogEncryptData, SizeOf(LogEncryptData));
				SetLength(LogEncryptData, 1024);
				iEncryptLen := BlowFishEncrypt(_LOG_KEY, sTmp, LogEncryptData);

				// Hex 코드 만들기..
				for ii := 0 to iEncryptLen - 1 do
				begin
					sPass := sPass + ByteToHexaStr(LogEncryptData[ii]);
				end;

				SetRegistry(HKEY_LOCAL_MACHINE, 'SYSTEM\WLKXECALLLINE', 'PASSWD', sPass);
			end;

			ZeroMemory(@LogEncryptData, sizeof(LogEncryptData));
			try
				EnvFile := TIniFile.Create(ENVPATHFILE);
				EnvFile.WriteBool('LOGIN', 'IDCheck', chkId.Checked);
				EnvFile.WriteBool('LOGIN', 'PASSCheck', chkPw.Checked);
			finally
				FreeAndNil(EnvFile);
			end;
/////////////////로그인 성공 후 ID 비번 저장 20190819 KHS///////////////////////////////////			

			ls_MSG_Err := GetXmlErrorCode(ss_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
				lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Member');

				with GT_USERIF do
				begin
					ID := edtUserID.Text;
					sTmp := vHash.GetHashString(edtPassword.Text+'callmaner#2106Key',SHA256); 
					HashPW := sTmp;//eedtPassword.Text;
					PW := edtPassword.Text;
					NM := lst_Result.item[0].attributes.getNamedItem('MemName').Text;
          HD := lst_Result.item[0].attributes.getNamedItem('GroupNo').Text;
          BR := lst_Result.item[0].attributes.getNamedItem('TCode').Text;
          CT := lst_Result.item[0].attributes.getNamedItem('CallCenter').Text;
          LV := lst_Result.item[0].attributes.getNamedItem('Level').Text;
          SA := lst_Result.item[0].attributes.getNamedItem('AreaCode').Text;
          VH := lst_Result.item[0].attributes.getNamedItem('VHGubun').Text;
          Excel_Use := lst_Result.item[0].attributes.getNamedItem('ExcelUse').Text;
          CallCnt := lst_Result.item[0].attributes.getNamedItem('CallCnt').Text;
          District := lst_Result.item[0].attributes.getNamedItem('District').Text;
          RouteMS := lst_Result.item[0].attributes.getNamedItem('RouteMS').Text;
          if Trim(RouteMS) = '' then
						RouteMS := 'T';
          OrderMD := lst_Result.item[0].attributes.getNamedItem('OrderMD').Text;
          Master := lst_Result.item[0].attributes.getNamedItem('MasterYN').Text;
          try
            Family := lst_Result.item[0].attributes.getNamedItem('FamilyYN').Text;
          except
            Family := 'n';
          end;
          MemArea := lst_Result.item[0].attributes.getNamedItem('MemArea').Text;
          GT_USERIF.ShareNo := lst_Result.item[0].attributes.getNamedItem('ShareNo').Text;
          if GS_PRJ_AREA = 'O' then
          begin
            PickUp := lst_Result.item[0].attributes.getNamedItem('Pickup').Text;     // SHARE_GROUP.GROUP_CONFIG
            WKVPhone := lst_Result.item[0].attributes.getNamedItem('WkVPhone').Text; // SHARE_GROUP.WK_VPHONE_YN
          end;
          // if lst_Result.item[0].attributes.has
          PayToWk := lst_Result.item[0].attributes.getNamedItem('PayToWk').Text;
          if Assigned(lst_Result.item[0].attributes.getNamedItem('Card')) then
            CardUse := lst_Result.item[0].attributes.getNamedItem('Card').Text;
        end;
        try
          GT_USERIF.WOB := lst_Result.item[0].attributes.getNamedItem('WebOtpValue').Text;
        except
          GT_USERIF.WOB := '';
        end;
        GT_USERIF.MainGbnInfo := lst_Result.item[0].attributes.getNamedItem('MainGbnInfo').Text;

				//사용안함
//				GT_USEKM := IsKMUSEHead(GT_USERIF.HD);
				//기능별 본사 세분화 20210916 KHS
				GT_Kakao_CallByInsureFee := IsKakao_CallByInsureFee_Head(GT_USERIF.HD);   //건당보험료 사용본사
				GT_Kakao_KMAiRate        := IsKakao_KMAiRate_Head(GT_USERIF.HD);          //카카오요금 사용본사
				GT_Kakao_Worker          := IsKakao_Worker_Head(GT_USERIF.HD);            //카카오기사 정보조회 사용본사
				GT_Kakao_AgreeAllocat    := IsKakao_AgreeAllocat_Head(GT_USERIF.HD);      //동의배정 사용본사

//        GT_Kakao_CallByInsureFee := True;
			// 2011.01.03 cdms_member에서 읽음       get_global_config로 변수 변경   20130808 LYB  수정
      // GT_USERIF.Jon_Lmt := GetJONLMT(edtUserID.Text);
      // GT_JON_MAX := GT_USERIF.Jon_Lmt;
      // hjf 확인필요

        if GT_USERIF.HD = 'A1531' then
          SetRegistry(HKEY_LOCAL_MACHINE, 'SYSTEM\WLKXE', 'PASSWD', '');

      // 사용자 권한
        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Member/Permission');
        FillChar(TCK_USER_PER, sizeof(TCK_USER_PER), chr($00));
        for i := 0 to lst_Result.length - 1 do
        begin
          // TUSER_PERMISSION   // 기존에 사용하던 권한 구조체.
          sTmp := lst_Result.item[i].attributes.getNamedItem('mm_grp_code').Text;
          GT_Permition.aryGrpCode.Add(Trim(sTmp)); // 메뉴그룹코드
          sTmp := lst_Result.item[i].attributes.getNamedItem('mm_code').Text;
          GT_Permition.aryMmCode.Add(Trim(sTmp)); // 메뉴코드
          { ************************* }
          sTmp := lst_Result.item[i].attributes.getNamedItem('mm_detail_code').Text;
          sDetailCd := sTmp;
          GT_Permition.aryDetCode.Add(Trim(sTmp)); // 메뉴세부코드
          sTmp := lst_Result.item[i].attributes.getNamedItem('mem_per').Text;
          GT_Permition.aryMemPer.Add(Trim(sTmp)); // 메뉴 화면에 대한 권한
          sTmp := lst_Result.item[i].attributes.getNamedItem('mm_detail_per').Text;
          GT_Permition.aryMemDetPer.Add(Trim(sTmp)); // 메뉴 화면의 세부 권한

          { ************************* }
          sTmp := lst_Result.item[i].attributes.getNamedItem('mm_number').Text;
          sGrpCd := sTmp;
          GT_Permition.aryMmNumber.Add(Trim(sTmp)); // 메뉴 식별 ID
          sTmp := lst_Result.item[i].attributes.getNamedItem('mm_menu_auth').Text;
          GT_Permition.aryMenuAuth.Add(Trim(sTmp));
          // 메뉴인지 또는 권한인지 구분[0메뉴, 1권한]
          sTmp := lst_Result.item[i].attributes.getNamedItem('mm_grp_name').Text;
          GT_Permition.aryMmGrpName.Add(Trim(sTmp)); // 메뉴그룹명
          sTmp := lst_Result.item[i].attributes.getNamedItem('mm_name').Text;
          GT_Permition.aryMmName.Add(Trim(sTmp)); // 메뉴명

          case StrToIntDef(sGrpCd, 0) of
            101:
              begin
                case StrToIntDef(sDetailCd, 0) of
                  1: TCK_USER_PER.COM_ExcelNoSMS := '1';            // 엑셀다운시SMS인증생략
                  2: TCK_USER_PER.COM_MSNTotal := '1';              // 메신저[콜마너전체사용자공유]
                  3: TCK_USER_PER.COM_MSNLocal := '1';              // 메신저[SMS전송기능]
                  4: TCK_USER_PER.COM_MSNHead := '1';               // 메신저[본사소속사용자공유]
                  12: TCK_USER_PER.COM_MSNBlock := '1';             // 메신저[상담원간메신저제한]
                  5: TCK_USER_PER.COM_WkCharge := '1';              // 기사충전권한
                  6: TCK_USER_PER.COM_WkCashView := '1';            // [기사관리]금액표시
                  7: TCK_USER_PER.COM_WkDayCashSet := '1';          // [기사관리]일비차감설정
                  8: TCK_USER_PER.COM_WkStautsChange := '1';        // 기사상태변경
                  9: TCK_USER_PER.COM_CustModify := '1';            // 조회고객수정
                  10: TCK_USER_PER.COM_CustExcelDown := '1';        // 조회고객엑셀다운
                  11: TCK_USER_PER.COM_CustMlgCharge := '1';        // 고객마일리지충전,상품지급

                  22: TCK_USER_PER.WOR_ExcelDown := '1';            // 엑셀다운로드[기사메뉴]
                  24: TCK_USER_PER.ACC_ExcelDown := '1';            // 엑셀다운로드[정산메뉴]
                  25: TCK_USER_PER.SMS_ExcelDown := '1';            // 엑셀다운로드[SMS메뉴]
                  26: TCK_USER_PER.USR_ExcelDown := '1';            // 엑셀다운로드[사용자메뉴]
                  27: TCK_USER_PER.CMP_ExcelDown := '1';            // 엑셀다운로드[회사메뉴]
                  28: TCK_USER_PER.STT_ExcelDown := '1';            // 엑셀다운로드[통계메뉴]
                  29: TCK_USER_PER.SET_ExcelDown := '1';            // 엑셀다운로드[설정메뉴]
                  30: TCK_USER_PER.BTM_CALLMNG := '1';              // 통화관리
                  34: TCK_USER_PER.BTM_CALLMNGCNT := '1';           // 통화관리 통화종료/전화종료건수 보기 권한
                  31: TCK_USER_PER.BTM_CALLOUT := '1';              // 부재중전화관리
                  32: TCK_USER_PER.BTM_CALLCNL := '1';              // 부정취소콜관리
                  33: TCK_USER_PER.BTM_MENUSCH := '1';              // 메뉴찾기
                  37: TCK_USER_PER.BTM_CUTELUNMASKING := '1';       //고객번호숨김해제(가운데4자리)

                  35: TCK_USER_PER.BTM_10LVL_DSHARE := '1';         // 신규접수공유 - 상담원단순공유권한(콜마너XE2)
                  36: TCK_USER_PER.BTM_10LVL_RQUEST := '1';         // 요금문의 - 상담원요금문의에대한답변권한(콜마너XE2)
                end;
              end;
            201: TCK_USER_PER.LFT_BrList := '1';                    // 지사현황및이관받은지사리스트를본다.
            202: TCK_USER_PER.LFT_WkConnect := '1';                 // 당일접속기사리스트를확인한다.
            203: TCK_USER_PER.LFT_BrCall := '1';                    // 지사의콜통계현황을조회한다.
            204: TCK_USER_PER.LFT_ShareCall := '1';                 // 공유된콜리스트를확인한다.
            205: TCK_USER_PER.LFT_Group := '1';                     // 연합사리스트를조회한다.
            206: TCK_USER_PER.LFT_WKAttend := '1';                  // 지사별로출근기사수를확인한다.
            401:
              begin
                case StrToIntDef(sDetailCd, 0) of
                  1: TCK_USER_PER.JON_Order := '1';                 // 접수하기권한
                  2: TCK_USER_PER.JON_CustTelOpen := '1';           // 자사콜+이관지사콜고객번호오픈
                  3: TCK_USER_PER.JON_CustTelDayOpen := '1';        // 자사콜고객번호당일오픈후익일숨김
                  4: TCK_USER_PER.JON_ExcelDown := '1';             // 접수현황엑셀다운로드
                  5: TCK_USER_PER.JON_OrderCnt := '1';              // 콜카운트보기권한
									6: TCK_USER_PER.JON_MousePopup := '1';            // 마우스오른쪽버튼메뉴권한
                  7: TCK_USER_PER.JON_SMSPopup := '1';              // SMS(팝업)전송권한
                  8: TCK_USER_PER.JON_BrchCashView := '1';          // 하단메뉴캐시보기권한
                  9: TCK_USER_PER.JON_BrchSendWk := '1';            // 기사에송금권한
                  10: TCK_USER_PER.JON_CustDel := '1';              // 접수창에서고객삭제
                  11: TCK_USER_PER.JON_CustMaking2 := '1';          // 콜보기고객번호마지막2자리마킹
                  12: TCK_USER_PER.JON_Cust2Modify := '1';          // 콜보기고객번호마지막2자리마킹(익일오더수정창전체번호오픈)
                  13: TCK_USER_PER.JON_Recon := '1';                // 강제배차제한권한
                  14: TCK_USER_PER.JON_SMSRecon := '1';             // 문자배차제한권한
                  15: TCK_USER_PER.JON_ChargeSave := '1';           // 요금저장권한제한
                  16: TCK_USER_PER.JON_SrcLmt := '1';               // 접수현황조회건수제한(Max : 500)
                  17: TCK_USER_PER.JON_CustLevel := '1';            // 접수 : 접수창 고객등급 변경 권한
                  18: TCK_USER_PER.JON_CustTelReceiveBlock := '1';  // 접수 : 접수현황 고객전화수신거부등록 권한
                  19: TCK_USER_PER.JON_BETWEENDATESEARCH := '1';    // 접수 : 접수현황 기간검색 기간 사용불가 체크:불가, 미체크:가능
                  20: TCK_USER_PER.JON_CUSTPLUS := '1';             // 접수 : 고객합치기 권한
                  21: TCK_USER_PER.JON_CUSTMEMO2 := '1';            // 접수 : 고객메모2수정 권한
                  22: TCK_USER_PER.JON_BUBININFO := '1';            // 접수창 : 법인정보 변경 권한
									23: TCK_USER_PER.JON_CustM2Modify := '1';         // 접수 : 고객번호중간2자리 마킹(익일오더수정창전체번호오픈)
									24: TCK_USER_PER.JON_AIBONOWRUN := '1';           // 접수 : 리콜(배차지연콜)즉시실행 2019.08.09 KHS
								end;
              end;
            402: TCK_USER_PER.JON_CIDView := '1';                   // 당일수신받은전화번호목록을확인한다.
            403: TCK_USER_PER.JON_MainView := '1';                  // 메인화면보기
//            404: TCK_USER_PER.JON_OrderSMSView := '1';
            405: TCK_USER_PER.JON_LocalMap := '1';                  // 로컬위치데이터저장
            501: TCK_USER_PER.WOR_StatView := '1';                  // 기사현황관리
            502:
              begin
                case StrToIntDef(sDetailCd, 0) of
                  1: TCK_USER_PER.WOR_Manage := '1';                // 기사관리조회
                  2: TCK_USER_PER.WOR_MngModify := '1';             // 기사관리기사등록,수정,삭제
                  3: TCK_USER_PER.WOR_Stats := '1';                 // 기사 : 현황 하단 합계 보여짐 여부.
                  4: TCK_USER_PER.WOR_WkSearchOpt := '1';           // 기사 : 기사조회옵션권한 1(checked) 이면 옵션제한 2014.05.07 KHS
									5: TCK_USER_PER.WOR_Jumin6NoHide := '1';          // 기사 : 기사주민등록번호열람허용  2017.01.04 KHS
								end;
              end;
            503: TCK_USER_PER.WOR_CashMng := '1';                   // 기사 : 기사캐쉬관리
//            504: TCK_USER_PER.WOR_Insurance := '1';
            505:
              begin
                case StrToIntDef(sDetailCd, 0) of                   // 일괄차감 : 기사일괄차감조회
                  1: TCK_USER_PER.WOR_Reserve := '1';               // 일괄차감 : 기사일괄차감설정
                  2: TCK_USER_PER.WOR_RsvModify := '1';             // 일괄차감 : 기사캐쉬일괄처리
                  3: TCK_USER_PER.WOR_WkCashBatch := '1';
                end;
              end;
            506: TCK_USER_PER.WOR_Attend := '1';                    // 기사 : 기사배차현황
//            507: TCK_USER_PER.WOR_Baecha := '1';
            508:
              begin
                case StrToIntDef(sDetailCd, 0) of
                  1: TCK_USER_PER.WOR_ShareBaecha := '1';           // 공유콜배차제한조회
                  2: TCK_USER_PER.WOR_ShareBaechaSet := '1';        // 공유콜배차제한설정
                end;
              end;
            509: TCK_USER_PER.WOR_Pickup := '1';                    // 기사픽업현황보기
            510: TCK_USER_PER.WOR_Blacklist := '1';                 // 기사블랙리스트조회
            511: TCK_USER_PER.WOR_PeekTimeBlock := '1';             // 심야배차제한현황
            512: TCK_USER_PER.WOR_Gongji := '1';                    // 기사공지작성허용
            513: TCK_USER_PER.WOR_513TimeCard := '1';               // 월별기사출근현황을조회
            514: TCK_USER_PER.WOR_NoWorker := '1';                  // 미출근기사를조회
						515: TCK_USER_PER.WOR_MCash := '1';                     // M-캐시스케줄등록및입출금관리

            601: TCK_USER_PER.CUR_Manager := '1';                   // 고객관리
            602: TCK_USER_PER.CUR_General := '1';                   // 일반검색
            603: TCK_USER_PER.CUR_High := '1';                      // 고급검색
            604: TCK_USER_PER.CUR_Detail := '1';                    // 상세검색
            605: TCK_USER_PER.CUR_Dormancy := '1';                  // 휴먼고객
            606: TCK_USER_PER.CUR_Mileage := '1';                   // 마일리지 설정
            607: TCK_USER_PER.CUR_MileageStat := '1';               // 마일리지 현황
            608: TCK_USER_PER.CUR_MileageDetail := '1';             // 마일리지 상세
            612: TCK_USER_PER.CUR_OKCashBack := '1';                // OK캐쉬백적립현황
            614: TCK_USER_PER.CUR_CustLevel := '1';                 // 고객등급설정

            609:
              begin
                case StrToIntDef(sDetailCd, 0) of
                  1: TCK_USER_PER.CUR_BubinMng := '1';              // 법인관리
                  2: TCK_USER_PER.CUR_BubinMngModify := '1';        // 법인등록수정삭제
                end;
              end;
            610: TCK_USER_PER.CUR_BubinHis := '1';                  // 법인이용내역
            611: TCK_USER_PER.CUR_BubinAcc := '1';                  // 법인정산
            613: TCK_USER_PER.CUR_BubinAuth := '1';                 // 법인인증
						618: TCK_USER_PER.CUR_BubinDayClose := '1';             // 법인 일마감-엑셀출력
						615: TCK_USER_PER.CUR_Virture := '1';                   // 안심번호관리
						616: TCK_USER_PER.CUR_WithHolding := '1';               // 기사원천징수현황
						617: TCK_USER_PER.CUR_CallBell := '1';                  // 콜벨업소관리

            701: TCK_USER_PER.ACC_BrchCash := '1';                  // 지사캐쉬내역
            702: TCK_USER_PER.ACC_BrchGainCash := '1';              // 공유콜정산
            703: TCK_USER_PER.ACC_BankBook := '1';                  // 통장식로그
            704: TCK_USER_PER.ACC_Order := '1';                     // 오더정산
            705: TCK_USER_PER.ACC_BrchCharge := '1';                // 지사충전내역
            706: TCK_USER_PER.ACC_WkCharge := '1';                  // 기사충전내역
            707: TCK_USER_PER.ACC_WKSolution := '1';                // 기사사용료
//            708: TCK_USER_PER.ACC_WKInsurance := '1';               // 기사보험료차감내역
            709: TCK_USER_PER.ACC_CASH_MOVIE := '1';                // 캐취충전
						710: TCK_USER_PER.ACC_SMS_CASH := '1';                  // SMS캐쉬충전
						721: TCK_USER_PER.ACC_SMS_CASH_PCK := '1';              // SMS캐쉬일괄충전
            711: TCK_USER_PER.ACC_Gain_List := '1';                 // 수익금리스트
            712: TCK_USER_PER.ACC_Gain_12 := '1';                   // 수익금계산
            713: TCK_USER_PER.ACC_Gain_13 := '1';                   // 콜운행정산
            714: TCK_USER_PER.ACC_Gain_14 := '1';                   // 기사수수료현황
            715: TCK_USER_PER.ACC_Gain_15 := '1';                   // 콜대행수수료
            716: TCK_USER_PER.ACC_CASH_OUT := '1';                  // 출금정산권한 20121101  LYB
            717: TCK_USER_PER.ACC_COUPON_APP := '1';                // 쿠폰승인현황 20130716  LYB
            718: TCK_USER_PER.ACC_COUPON_USE := '1';                // 쿠폰사용현황
            719: TCK_USER_PER.ACC_CARD_PAY := '1';                  // 카드결제현황
			      720: TCK_USER_PER.ACC_BRCOUPON_USE := '1';              // 자체쿠폰현황

            801: TCK_USER_PER.SMS_Send := '1';                      // SMS발송
            802: TCK_USER_PER.SMS_Advertisement := '1';             // 대량파일SMS발송
            803: TCK_USER_PER.SMS_Result := '1';                    // 결과조회
            804: TCK_USER_PER.SMS_NoSms := '1';                     // 수신거부관리
            805: TCK_USER_PER.SMS_Detail_Result := '1';             // 조회결과(상세)

            901:
              begin
                case StrToIntDef(sDetailCd, 0) of
                  1: TCK_USER_PER.USR_Manage := '1';                // 직원 : 직원관리 조회
                  2: TCK_USER_PER.USR_MngModify := '1';             // 직원 : 직원 등록 수정 삭제
                end;
              end;
            902:
              begin
                case StrToIntDef(sDetailCd, 0) of
                  1: TCK_USER_PER.USR_Permission := '1';            // 직원 : 사용자권한설정 조회
                  2: TCK_USER_PER.USR_PerModify := '1';             // 직원 : 사용자권한수정
                end;
              end;
            903: TCK_USER_PER.USR_AuthStat := '1';                  // 직원 : 인증현황
            904: TCK_USER_PER.USR_ExcelDownList := '1';             // 직원 : 엑셀다운현황
		  			905:
		  				begin
		  					case StrToIntDef(sDetailCd, 0) of
		  						1: TCK_USER_PER.USR_UserCall := '1';              // 직원 : 직원별콜현황(전체)
		  						2: TCK_USER_PER.USR_UserCall_N_ADMIN := '1';      // 직원 : 직원별콜현황(관리자제외)
		  					end;
		  				end;
		  			906:
		  				begin
		  					case StrToIntDef(sDetailCd, 0) of
		  						1: TCK_USER_PER.USR_HourCall := '1';              // 직원 : 직원별시간통계(전쳬)
		  						2: TCK_USER_PER.USR_HourCall_N_ADMIN := '1';      // 직원 : 직원별시간통계(관리자제외)
		  					end;
		  				end;
		  			907:
		  				begin
		  					case StrToIntDef(sDetailCd, 0) of
		  						1: TCK_USER_PER.USR_UserAuthSel := '1';           // 직원 : 직원인증권한조회
		  						2: TCK_USER_PER.USR_UserAuthMgr := '1';           // 직원 : 직원인증권한수정
		  					end;
		  				end;
		  			908:
              begin
                case StrToIntDef(sDetailCd, 0) of
                  1: TCK_USER_PER.USR_PCAuthSel := '1';             // 직원 : PC인증권한조회
                  2: TCK_USER_PER.USR_PCAuthMgr := '1';             // 직원 : PC인증권한수정
                end;
              end;
		  			909:
		  				begin
		  					case StrToIntDef(sDetailCd, 0) of
		  						1: TCK_USER_PER.USR_LoginCheck := '1';            // 직원 : 직원근태현황(전체)
		  						2: TCK_USER_PER.USR_LoginCheck_N_ADMIN := '1';    // 직원 : 직원근태현황(관리자제외)
		  					end;
		  				end;

            1001:
              TCK_USER_PER.CMP_Head := '1';                         // 회사 : 본사관리
            1002:
              begin
                case StrToIntDef(sDetailCd, 0) of
                  1: TCK_USER_PER.CMP_Branch := '1';                // 회사>지사>조회
                  2: TCK_USER_PER.CMP_BrchModify := '1';            // 회사>지사>등록수정삭제
                  3: TCK_USER_PER.CMP_BrchKeyNum := '1';            // 회사>지사>[팝업]대표번호관리
                  4: TCK_USER_PER.CMP_BrchWkCom := '1';             // 회사>지사>[팝업]수수료관리
                  5: TCK_USER_PER.CMP_BrchWkPayment := '1';         // 회사>지사>[팝업]입금표관리
									6: TCK_USER_PER.CMP_BrchACCNumber := '1';         // 회사>지사>정산계좌보기       20200525 KHS
									7: TCK_USER_PER.CMP_BrchCachView  := '1';         // 회사>지사>지사캐시보기       20200525 KHS
                end;
              end;
//            1003: TCK_USER_PER.CMP_CashManager := '1';              // 회사>지사캐쉬관리
            1004: TCK_USER_PER.CMP_SMSSet := '1';                   // 회사>SMS설정
            1005: TCK_USER_PER.APP_Setup := '1';                    // 회사>앱/스마트푸시설정
            1006: TCK_USER_PER.APP_Notice := '1';                   // 회사>앱게시물관리
						1007: TCK_USER_PER.APP_Push := '1';                     // 회사>앱푸시관리
						1008: TCK_USER_PER.APP_SMSLIST := '1';                  // 회사>콜마너SMS발송내역
            1009: TCK_USER_PER.APP_PushLIST := '1';                 // 회사>스마트PUSH발송내역
            1010: TCK_USER_PER.APP_SMSSTT := '1';                   // 회사>콜마너SMS발송일별통계
						1011: TCK_USER_PER.APP_PushSTT := '1';                  // 회사>콜마너PUSH발송일별통계
						1012: TCK_USER_PER.CMP_BrchKeyNumMng := '1';            // 회사>대표번호증명원관리
						1020: TCK_USER_PER.AIC_ScenarioSet := '1';              // 회사 : AI-OB 배차지연콜 설정
						1021: TCK_USER_PER.AIC_DetailList := '1';               // 회사 : AI-OB 배차지연콜 상세내역
						1022: TCK_USER_PER.AIC_DayTOT := '1';                   // 회사 : AI-OB 배차지연콜 일별현황
						1030: TCK_USER_PER.AIC_HappyCallSet := '1';             // 회사 : AI-OB 해피콜 설정
						1031: TCK_USER_PER.AIC_HappyCallDetailList := '1';      // 회사 : AI-OB 해피콜 상세내역
						1032: TCK_USER_PER.AIC_HappyCallDayTOT := '1';          // 회사 : AI-OB 해피콜 일별현황
						1040: TCK_USER_PER.AIC_IBCallSet := '1';                // 841.AI-IB 설정
						1041: TCK_USER_PER.AIC_IBCallDetailList := '1';         // 842.AI-IB 상세내역
						1042: TCK_USER_PER.AIC_IBCallDayTOT := '1';             // 843.AI-IB 일별현황

						1102: TCK_USER_PER.STT_Keynumber := '1';                // 통계>대표번호별통계(*)
						1103: TCK_USER_PER.STT_Worker := '1';                   // 통계>기사별통계    (*)
						1104: TCK_USER_PER.STT_Customer := '1';                 // 통계>고객별통계
						1105: TCK_USER_PER.STT_Owner := '1';								   	// 통계>자사통계
						1106: TCK_USER_PER.STT_OwnerACC	:= '1';  								// 통계>자사별콜정산통계
						1107: TCK_USER_PER.STT_Share := '1';                    // 통계>공유콜통계
						1108: TCK_USER_PER.STT_Local := '1';                    // 통계>지역별통계
						1109: TCK_USER_PER.STT_NewCustRate := '1';              // 통계>신규고객통계
						1110: TCK_USER_PER.STT_TimeCall := '1'; 								// 통계>시간대별콜수통계
						1112: TCK_USER_PER.STT_Day := '1';                      // 통계>일일콜수통계
						1113: TCK_USER_PER.STT_NewCall := '1';                  // 통계>신규콜수통계
						1111: TCK_USER_PER.STT_CanCelCall := '1';               // 통계>취소콜통계   (*)
						1114: TCK_USER_PER.STT_TimeLocal := '1';                // 통계>시간대별출/도지역통계
						1115: TCK_USER_PER.STT_OrderCharge := '1';              // 통계>오더요금별통계
						1116: TCK_USER_PER.STT_OrderGrade  := '1';              // 통계>오더별평가조회
//사용안함																																			
//            1104: TCK_USER_PER.STT_User := '1';                     // 통계>사용자별

//            1201: TCK_USER_PER.SET_General := '1';                  // 설정 : 일반설정
//            1202: TCK_USER_PER.SET_Accept := '1';                   // 설정 : 접수설정
            1203: TCK_USER_PER.SET_Charge := '1';                   // 설정 : 요금제편집
            1204: TCK_USER_PER.SET_ChargeSet := '1';                // 설정>요금제설정
            1205: TCK_USER_PER.SET_CID := '1';                      // 설정>CID설정
						1206: TCK_USER_PER.SET_CIDDNIS := '1';                  // 설정>CID대표번호DNIS관리

            1401: TCK_USER_PER.HEL_REMOTE := '1';                   // 기타>원격요청
            1407: TCK_USER_PER.MAP_Accept := '1';                   // 기타>관제지도
          end;
        end;

        // 콜라인 통화관리 권한은 상담원만 조회 가능
        if (GB_CallLine) And (GT_USERIF.LV <> '10') then
        begin
          TCK_USER_PER.BTM_CALLMNG := '0';
          TCK_USER_PER.BTM_CALLMNGCNT := '0';
        end;

        // 예외처리(마스터 ID에 대한 사용자 권한 수정 적용)
        if (GT_USERIF.Master = 'y') and (GT_USERIF.LV = '60') then
        // 본사 마스터만 사용자 권한 적용 LYB 20120716
        begin
          if GT_Permition.aryMmCode.IndexOf('USR02') = -1 then
          begin
            GT_Permition.aryGrpCode.Add('USR'); // 메뉴그룹코드
            GT_Permition.aryMmCode.Add('USR02'); // 메뉴코드
            GT_Permition.aryDetCode.Add('1'); // 메뉴세부코드
            GT_Permition.aryMemPer.Add('1'); // 메뉴 화면에 대한 권한
            GT_Permition.aryMemDetPer.Add('1'); // 메뉴 화면의 세부 권한
            GT_Permition.aryMmNumber.Add('902'); // 메뉴 식별 ID
            GT_Permition.aryMenuAuth.Add('0');
            // 메뉴인지 또는 권한인지 구분[0메뉴, 1권한]
            GT_Permition.aryMmGrpName.Add('사용자'); // 메뉴그룹명
            GT_Permition.aryMmName.Add('사용자권한설정'); // 메뉴명
            TCK_USER_PER.USR_Permission := '1';
            TCK_USER_PER.USR_PerModify := '1';
          end;
        end;

        // 인증만료기간 예외처리
        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Auth');

        if Assigned(lst_Result.item[0].attributes.getNamedItem('Limit')) then
        begin
          LimitDay := lst_Result.item[0].attributes.getNamedItem('Limit').Text;
          AuthType := 'ID';
          if Assigned(lst_Result.item[0].attributes.getNamedItem('Type')) then
            AuthType := lst_Result.item[0].attributes.getNamedItem('Type').Text;
          if StrToIntDef(LimitDay, -1) > -1 then
          begin
            Msg := ' 해당 [%s]의 인증만료일이 [ %s 일 ] 남았습니다 .'#13#10;
            Msg := Msg + ' 관리자에게 인증기간 연장 요청바랍니다.'#13#10;
            Msg := Msg + ' ([ %s 일 ] 이후 로그인이 제한됩니다.)';

            ShowMessage(Format(Msg, [AuthType, LimitDay, LimitDay]));
          end;
        end;

        GS_APPLYFILE := GT_USERIF.HD + '_apply.xml';

    		if (GT_USERIF.ID <> '') and (GS_EXEC_GUBUN = 1) and (GT_PRG_DUAL_MAIN = 0) then
    		begin
    			sTmp  := IfThen(TCK_USER_PER.COM_MSNTotal = '1', '1', '0'); // 콜마너 전체사용자 공유
    			sTmp1 := IfThen(TCK_USER_PER.COM_MSNHead  = '1', '1', '0'); // 본사 공유

    			if (sTmp = '1') or (sTmp1 = '1') then
    			begin
            Frm_Main.procExecMessenger(True);
    			end else
          begin
            Frm_Main.procExecMessenger(False);
            Frm_Main.Menu1409.Enabled := False;  // 메신저
						Frm_Main.Menu1415.Enabled := False;  // 콜마너고객센터채팅
						Frm_Main.Menu1416.Enabled := False;  // 콜마너고객센터쪽지
          end;
        end else
        begin
          if ( (GT_USERIF.HD = 'A876') And (GT_USERIF.BR = 'D615') ) Or
             ( (GT_USERIF.HD = 'A100') And (GT_USERIF.BR = 'B100') ) then
          begin
      			sTmp  := IfThen(TCK_USER_PER.COM_MSNTotal = '1', '1', '0'); // 콜마너 전체사용자 공유
      			sTmp1 := IfThen(TCK_USER_PER.COM_MSNHead  = '1', '1', '0'); // 본사 공유
      			if (sTmp = '1') or (sTmp1 = '1') then
      			begin
              Frm_Main.procExecMessenger(True);
      			end else
            begin
              Frm_Main.procExecMessenger(False);
              Frm_Main.Menu1409.Enabled := False;  // 메신저
							Frm_Main.Menu1415.Enabled := False;  // 콜마너고객센터채팅
							Frm_Main.Menu1416.Enabled := False;  // 콜마너고객센터쪽지
            end;
          end;
        end;

        // 접수소켓 연결
        if dm.DoReConnect(1) then
        begin
          dm.tmPing.Enabled := True;
          dm.tmPing2.Enabled := True;
          frm_Main.Proc_Statubar_Display;
          frm_Main.SetSysBtnPosition;
          Result := True;
        end;

        ln_envfile := TIniFile.Create(ENVPATHFILE);
        try
          CHARGE_DIS    := ln_envfile.ReadString('CHARGE', 'dis_type', '1.0');
          CHARGE_GUBUN  := ln_envfile.ReadString('CHARGE', 'CH_GUBUN', 'P');
          CHARGE_IP     := ln_envfile.ReadString('CHARGE', 'CH_IP', '');
      		CHARGE_PORT   := StrToIntDef(ln_envfile.ReadString('CHARGE', 'CH_PORT', '3306'), 3306);
          CHARGE_ID     := ln_envfile.ReadString('CHARGE', 'CH_ID', '');
          CHARGE_PW     := ln_envfile.ReadString('CHARGE', 'CH_PW', '');

          if ( CHARGE_GUBUN = 'S') And ((Trim(CHARGE_IP) = '' ) Or (Trim(CHARGE_ID) = '' ) Or (Trim(CHARGE_PW) = '' )) then
          begin
            CHARGE_GUBUN := 'P';
            ln_envfile.WriteString('CHARGE', 'CH_GUBUN', CHARGE_GUBUN);
          end;

          GS_ALL_SEVEN  := ln_envfile.ReadBool('CHARGE', 'CH_TYPE2', False);
        finally
          ln_envfile.Free;
        end;

        SetDebugeWrite('Frm_Login.func_LoginCheck 1');

        // 2011.02.14 심야할증요금 추가(테이블 변경, Prem_rec 로딩)
        // 요금설정이 서버일경우 서버접속
        if CHARGE_GUBUN = 'S' then
        begin
          dmCharge.FDConnection1.Connected := False;
          dmCharge.FDConnection1.Params.Clear;
          dmCharge.FDConnection1.Params.Add('DriverID=MySQL');
          dmCharge.FDConnection1.Params.Add('CharacterSet=utf8');
          dmCharge.FDConnection1.Params.Add('Database=Chargedb');
          dmCharge.FDConnection1.Params.Add('Password='+CHARGE_PW);
          dmCharge.FDConnection1.Params.Add('User_name='+CHARGE_ID);
          dmCharge.FDConnection1.Params.Add('PORT='+ inttostr(CHARGE_PORT));
          dmCharge.FDConnection1.Params.Add('Server='+CHARGE_IP);
        end else
        if CHARGE_GUBUN = 'P' then
        begin
          if (GS_EXEC_GUBUN = 1) then
          begin
            try
              //SQLite
              dmCharge.FDPhysSQLiteDriverLink1.VendorHome := EXECDIRECTORY;
              dmCharge.FDPhysSQLiteDriverLink1.VendorLib := EXECDIRECTORY;
              
              dmCharge.FDConn_SQLite.Connected := False;
              dmCharge.FDConn_SQLite.Params.Clear;
              dmCharge.FDConn_SQLite.Params.Add('DriverID=SQLite');
              dmCharge.FDConn_SQLite.Params.Add('CharacterSet=utf8');
              dmCharge.FDConn_SQLite.Params.Add('Database=' + DBDIRECTORY + 'CMNAGT.db');
              dmCharge.FDConn_SQLite.Connected := True;
            except on e: Exception do
              Log('DataBase Connect fail ' + CRLF + e.Message, LOGDATAPATHFILE);
            end;
          end else
          begin
            CHARGE_GUBUN := 'L'; // 파라독스 디비 연결안함
          end;
        end;

        Frm_progress := TFrm_progress.Create(Self);
        try
          Frm_progress.Parent := Frm_Login.PnlProgress;
          Frm_progress.Align := alClient;
          Frm_progress.GS_GUBUN := 10;
          Application.ProcessMessages;
          Frm_progress.ImgXE4.Visible := False;
          Frm_progress.ImgcLine.Visible := True;
          Frm_progress.Img365S.Visible := False;
          Frm_progress.lblDesc.Font.Color := clBlack;
          Frm_progress.label1.Font.Color := clBlack;
          Frm_progress.Show;
        Finally
          PnlProgress.Left := 2;
          PnlProgress.Top := 456;
          PnlProgress.Visible := True;
        end;

        ln_envfile := TIniFile.Create(ENVPATHFILE);
        try
          ln_envfile.WriteString('PRJ', 'AREA', GS_PRJ_AREA);
          /// /////////////////////////////////////검색설정.2012.03.11KHS//////////////////////////////
          GS_SEARCH_POTAL := ln_envfile.ReadBool('SearchSet',     'SEARCH_POTAL', True);
  	  		GS_SEARCH_POTAL_2ResultOver := ln_envfile.ReadBool('SearchSet', 'SEARCH_POTAL_POI_2ResultOver', False);
          GS_SEARCH_POTAL_SPACEKEY := ln_envfile.ReadBool('SearchSet', 'GS_SEARCH_POTAL_SPACEKEY', False);

          GS_SEARCH_POTAL_FIRST := ln_envfile.ReadBool('SearchSet', 'SEARCH_POTAL_FIRST', False);
//          if GS_PRJ_AREA = 'S' then   // 신상수대리 요청으로 기본값 무조건 False로 처리
//          begin
            GS_SEARCH_AUTO_COMPLETE := ln_envfile.ReadBool('SearchSet', 'SEARCH_AUTO_COMPLETE', False);
            GS_SEARCH_AUTO_DONGNAME_ADD := ln_envfile.ReadBool('SearchSet', 'SEARCH_AUTO_DONGNAME_ADD', False);
            GS_SEARCH_AUTO_DETILEPOI := ln_envfile.ReadBool('SearchSet', 'SEARCH_AUTO_DETILEPOI', False);
            GS_SEARCH_AUTO_MAINPOI := ln_envfile.ReadBool('SearchSet', 'SEARCH_AUTO_MAINPOI', False);
            GS_SEARCH_AUTO_NOTUSE := ln_envfile.ReadBool('SearchSet', 'SEARCH_AUTO_NOTUSE', False);
//          end else
//          begin
//            GS_SEARCH_AUTO_COMPLETE := ln_envfile.ReadBool('SearchSet', 'SEARCH_AUTO_COMPLETE', True);
//            GS_SEARCH_AUTO_DONGNAME_ADD := ln_envfile.ReadBool('SearchSet', 'SEARCH_AUTO_DONGNAME_ADD', False);
//            GS_SEARCH_AUTO_DETILEPOI := ln_envfile.ReadBool('SearchSet', 'SEARCH_AUTO_DETILEPOI', False);
//            GS_SEARCH_AUTO_MAINPOI := ln_envfile.ReadBool('SearchSet', 'SEARCH_AUTO_MAINPOI', False);
//            GS_SEARCH_AUTO_NOTUSE := ln_envfile.ReadBool('SearchSet', 'SEARCH_AUTO_NOTUSE', False);
//          end;
          GS_SEARCH_DONGNAME := ln_envfile.ReadBool('SearchSet',  'SEARCH_DONGNAME', True); // 기본옵션체크
          GS_SEARCH_MAP_NEAR_WK := ln_envfile.ReadBool('SearchSet',   'SEARCH_MAP_NEAR_WK', True);
          GS_SEARCH_NEAR_WK := ln_envfile.ReadBool('SearchSet',   'SEARCH_NEAR_WK', False);
					GS_SEARCH_NEAR_WK3SEC := ln_envfile.ReadBool('SearchSet', 'SEARCH_NEAR_WK3SEC', False);
          GS_SEARCH_ENDNOSEARCH := ln_envfile.ReadBool('SearchSet', 'SEARCH_ENDNOSEARCH', False);
          GS_SEARCH_NEAR_WK_CAPTION := ln_envfile.ReadBool('SearchSet', 'SEARCH_NEAR_WK_CAPTION', False);
          GS_SEARCH_NEAR_WKKIND := ln_envfile.ReadBool('SearchSet', 'SEARCH_NEAR_WKKIND', False);
          GS_SEARCH_DEST_DONGSINAME := ln_envfile.ReadBool('SearchSet', 'SEARCH_DEST_DONGSINAME', True);
					if ((GS_PRJ_AREA = 'O') and (GT_USERIF.ShareNo = 'G33')) or (GT_USERIF.BR = 'B100') then
					begin
						GS_SEARCH_DEST_DONGNAME_G33 := ln_envfile.ReadBool('SearchSet', 'SEARCH_DEST_DONGNAME_G33', False);
					end else GS_SEARCH_DEST_DONGNAME_G33 := False; 
          GS_SEARCH_DEST_NOPOI_FALSE := ln_envfile.ReadBool('SearchSet', 'SEARCH_DEST_NOPOI_FALSE', False);

          GS_SEARCH_POISVR_SPOIUSE := ln_envfile.ReadBool('SearchSet', 'GS_SEARCH_POISVR_SPOIUSE', True);
					GS_SEARCH_POISVR_SGSTUSE := ln_envfile.ReadBool('SearchSet', 'GS_SEARCH_POISVR_SGSTUSE', True);
          GS_SEARCH_POISVR_SGSTERR := ln_envfile.ReadBool('SearchSet', 'GS_SEARCH_POISVR_SGSTERR', False);
          GS_SEARCH_POISVR_LOCALDP := ln_envfile.ReadBool('SearchSet', 'GS_SEARCH_POISVR_LOCALDP', False);
          GS_SEARCH_WISE_NAVER_COMPARE := ln_envfile.ReadBool('SearchSet', 'GS_SEARCH_WISE_NAVER_COMPARE', True);
          GS_SEARCH_WISE_NAVER_SORT := ln_envfile.ReadBool('SearchSet', 'GS_SEARCH_WISE_NAVER_SORT', False);
          GS_SEARCH_POISVR_CTRLV := ln_envfile.ReadBool('SearchSet', 'GS_SEARCH_POISVR_CTRLV', True);
          GS_SEARCH_POISVR_DONGV := ln_envfile.ReadBool('SearchSet', 'GS_SEARCH_POISVR_DONGV', False);
					GS_SEARCH_CALLMANER_POIUSE := ln_envfile.ReadBool('SearchSet', 'GS_SEARCH_CALLMANER_POIUSE', False);
					GS_SEARCH_NAVER_MAP  := ln_envfile.ReadBool('SearchSet', 'SEARCH_NAVER_MAP', True);
          GS_POISCH_ALL        := False;

					GS_DAPIKeyUSE        := ln_envfile.ReadBool('SearchSet', 'SEARCH_DAPIKeyUSE', False); //D사 APIKey 사용여부 = 기본-false;
          // GS_SEARCH_MORE_FAST 삭제 - N사 API키 서비스 중지로 인해 다음 API키를 사용하지 않으면 API키를 사용 안함으로 변경  20200608  LYB

					/// /////////////////////////////////////검색설정.2012.03.11KHS//////////////////////////////

					/// /////////////////////////////////////관제설정.2012.07.114KHS//////////////////////////////

					GS_ADMINMAP_WKCON1 := ln_envfile.ReadBool('SearchWKSet',   'ADMINMAP_WKCON1', False);
					GS_ADMINMAP_WKCON2 := ln_envfile.ReadBool('SearchWKSet',   'ADMINMAP_WKCON2', False);
					GS_ADMINMAP_WKALL  := ln_envfile.ReadBool('SearchWKSet',   'ADMINMAP_WKALL', True);
					if GS_ADMINMAP_WKALL then
					begin
						GS_ADMINMAP_WKCON3 := False;
						GS_ADMINMAP_WKCON4 := False;
					end	else
					begin
						GS_ADMINMAP_WKCON3 := ln_envfile.ReadBool('SearchWKSet',   'ADMINMAP_WKCON3', False);
						GS_ADMINMAP_WKCON4 := ln_envfile.ReadBool('SearchWKSet',   'ADMINMAP_WKCON4', False);
						if GS_ADMINMAP_WKCON3 or GS_ADMINMAP_WKCON3 then GS_ADMINMAP_WKALL := False;
					end;
					GS_ADMINMAP_CHK := ln_envfile.ReadString('SearchWKSet',     'ADMINMAP_CHK', '0');
          GS_ADMINMAP_B10 := ln_envfile.ReadBool('SearchWKSet',   'ADMINMAP_B10', False);
          GS_ADMINMAP_B20 := ln_envfile.ReadBool('SearchWKSet',    'ADMINMAP_B20', False);
          GS_ADMINMAP_B30 := ln_envfile.ReadBool('SearchWKSet',      'ADMINMAP_B30', False);
          GS_ADMINMAP_B30A := ln_envfile.ReadBool('SearchWKSet',     'ADMINMAP_B30A', False);
					GS_ADMINMAP_Title_BaeCha := ln_envfile.ReadBool('SearchWKSet', 'ADMINMAP_Title_BaeCha', True);
					GS_ADMINMAP_Title_WKNAME := ln_envfile.ReadBool('SearchWKSet', 'ADMINMAP_Title_WKNAME', True);
					GS_ADMINMAP_Title_BRNAME := ln_envfile.ReadBool('SearchWKSet', 'ADMINMAP_Title_BRNAME', True);

          GS_ADMINMAP_TAG_BRNAME := ln_envfile.ReadBool('SearchWKSet',  'ADMINMAP_TAG_BRNAME', False);
					GS_ADMINMAP_TAG_WKSABUN := ln_envfile.ReadBool('SearchWKSet',  'ADMINMAP_TAG_WKSABUN', True);
          GS_ADMINMAP_TAG_WKNAME := ln_envfile.ReadBool('SearchWKSet',  'ADMINMAP_TAG_WKNAME', True);
          GS_ADMINMAP_LEVEL := ln_envfile.ReadString('SearchWKSet',   'ADMINMAP_LEVEL', '4');

					GS_ADMINMAP_TAG_OurWK_Status    := ln_envfile.ReadBool('SearchWKSet', 'ADMINMAP_TAG_OurWK_Status', False);
					GS_ADMINMAP_TAG_OurWK_FinishCNT := ln_envfile.ReadBool('SearchWKSet', 'ADMINMAP_TAG_OurWK_FinishCNT', False);
					GS_ADMINMAP_TAG_OurWK_Name 		  := ln_envfile.ReadBool('SearchWKSet', 'ADMINMAP_TAG_OurWK_Name', True);
					GS_ADMINMAP_TAG_OurWK_Sabun 	  := ln_envfile.ReadBool('SearchWKSet', 'ADMINMAP_TAG_OurWK_Sabun', True);
					GS_ADMINMAP_TAG_OurWK_HP 			  := ln_envfile.ReadBool('SearchWKSet', 'ADMINMAP_TAG_OurWK_HP', False);
					GS_ADMINMAP_TAG_OurWK_BrName 	  := ln_envfile.ReadBool('SearchWKSet', 'ADMINMAP_TAG_OurWK_BrName', False);
					GS_ADMINMAP_TAG_OurWK_BrNo 		  := ln_envfile.ReadBool('SearchWKSet', 'ADMINMAP_TAG_OurWK_BrNo', False);
					GS_SEARCH_NO_POI := ln_envfile.ReadBool('SearchSet',       'GS_SEARCH_NO_POI', False);
          GS_SEARCH_NO_LOCALPOI := ln_envfile.ReadBool('SearchSet', 'GS_SEARCH_NO_LOCALPOI', False);
          GS_SEARCH_NO_RI := ln_envfile.ReadBool('SearchSet', 'GS_SEARCH_NO_RI', True);
          /// /////////////////////////////////////관제설정.2012.07.114KHS//////////////////////////////

          GS_USERSELECT  := ln_envfile.ReadString('COUNSEL', 'USERSELECT', '');        // 2015.04.01 사용자정의 선택 항목
          GS_USERSELECT1 := ln_envfile.ReadString('COUNSEL', 'USERSELECT1', '');        // 2015.04.01 사용자정의 선택 항목
          GS_BRLISTVIEWMODE := ln_envfile.ReadBool('COUNSEL', 'BRLISTVIEWMODE', False);   // 2015.11.13 좌측지사리스트 본사단위 표시 여부
					GS_JON54AutoRunNew := ln_envfile.ReadBool('COUNSEL', 'JON54AutoRunNew', True);   // 2016.06.20 프로그램 실행시 통화관리 자동실행
					GS_JON03DetailExcelView := ln_envfile.ReadBool('COUNSEL', 'JON03DetailExcelView', False);   //접수현황 > 엑셀출력 > 상세내역(기본 False) : True-접수현황리스트 형태 유지하여 엑셀출력  20210729 KHS

          GB_JON_USEBUBIN := ln_envfile.ReadBool('COUNSEL', 'UseBubInMenu', True);  // 법인메뉴사용내역 기본사용으로변경-2021.07.02

					gsToDayOpenDate := ln_envfile.ReadString('ToDayOpen', 'Date', '');  // //오늘하루 이창을 열지 않습니다 검색엔진 사용여부

					if (gsToDayOpenDate <> '') then
					begin
						//저장된 일자와 금일 시작일자를 비교하여 처리
						if (StrToDate(gsToDayOpenDate) < StrToDate(GetStrToDateTimeGStr(StartDateTime('yyyymmdd'), 4))) then
							gsToDayOpenDate := ''
						else if StrToDate(gsToDayOpenDate) = StrToDate(GetStrToDateTimeGStr(StartDateTime('yyyymmdd'), 4)) then
						begin
							gbToDayOpen := False; //오늘은 알림을 띄우지 않는다
						end;
					end;

          // 대표지사 설정정보 저장. CDS. 080822.
          // 환경설정 방식 변경(AcceptWin -> AcceptWin-B100)
          // 여러아이디(다른지사)로 사용한 경우 각지사별 대표번호 지정
          if ln_envfile.ValueExists('AcceptWin', 'MaddBrchName') then
          begin
            ln_envfile.WriteString(Format('%s-%s', ['AcceptWin', GT_USERIF.BR]),
              'MaddBrchName', ln_envfile.ReadString('AcceptWin',
              'MaddBrchName', ''));
            ln_envfile.WriteString(Format('%s-%s', ['AcceptWin', GT_USERIF.BR]),
              'MaddBrch', ln_envfile.ReadString('AcceptWin', 'MaddBrch', ''));
            ln_envfile.WriteString(Format('%s-%s', ['AcceptWin', GT_USERIF.BR]),
              'KeyNumber', ln_envfile.ReadString('AcceptWin', 'KeyNumber', ''));

            ln_envfile.DeleteKey('AcceptWin', 'MaddBrchName');
            ln_envfile.DeleteKey('AcceptWin', 'MaddBrch');
            ln_envfile.DeleteKey('AcceptWin', 'KeyNumber');
          end;

          ln_envfile.WriteBool('LOGIN', 'IDCheck', chkId.Checked);
          ln_envfile.WriteBool('LOGIN', 'PASSCheck', chkPw.Checked);
          ln_envfile.WriteBool('LOGIN', 'CONFIGCheck', chkIdConfig.Checked);

          GS_MainBranch.sBrName := ln_envfile.ReadString
            (Format('%s-%s', ['AcceptWin', GT_USERIF.BR]), 'MaddBrchName', '');
          GS_MainBranch.sBrNo := ln_envfile.ReadString
            (Format('%s-%s', ['AcceptWin', GT_USERIF.BR]), 'MaddBrch', '');
          GS_MainBranch.sKeyNumber := ln_envfile.ReadString
            (Format('%s-%s', ['AcceptWin', GT_USERIF.BR]), 'KeyNumber', '');
        finally
          ln_envfile.Free;
        end;

        // 20130610 LYB 로그인 셋팅값은 기본값에 저장한다.
        if chkIdConfig.Checked then
        begin
          ln_envfile := TIniFile.Create(EXECDIRECTORY + ENVFILENAME);
          try
            ln_envfile.WriteBool('LOGIN', 'IDCheck', chkId.Checked);
            ln_envfile.WriteBool('LOGIN', 'PASSCheck', chkPw.Checked);
            ln_envfile.WriteBool('LOGIN', 'CONFIGCheck', chkIdConfig.Checked);
          finally
            ln_envfile.Free;
          end;
        end;
      end else
      begin
        if GetXmlErrorCodeNum(ss_rxxml) = 5 then
        begin
          Frm_VerCheck := Tfrm_VerCheck.Create(Self);
          try
						Frm_VerCheck.cxLabel1.Caption := ''; // 초기화
						Frm_VerCheck.cxLabel1.Caption := '  ' + GetXmlErrorMsg(ss_rxxml);
						Frm_VerCheck.ShowModal;
          finally
            Frm_VerCheck.Free;
          end;
        end else
        begin
          GMessagebox('사용자로그인에 실패했습니다.' + CRLF + ls_MSG_Err, CDMSE);
          PnlLogin.Enabled := True;
        end;
        Screen.Cursor := crDefault;
        dm.tmPing.Enabled := False;
        Result := False;
      end;
    finally
      xdom := Nil;
    end;
  except
    on E: Exception do
      Assert(False, E.Message);
  end;
end;

procedure TFrm_Login.gbAreaCHKMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  gbServerCHK.Visible := False;
end;

procedure TFrm_Login.gbServerCHKMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  gbAreaCHK.Visible := False;
end;

procedure TFrm_Login.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  tmrAutoLogin.Tag := 99;
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_Login.lblPasswordFlagClick(Sender: TObject);
begin
  edtPassWord.SetFocus;
end;

procedure TFrm_Login.lblUserIdFlagClick(Sender: TObject);
begin
  edtUserId.SetFocus;
end;

procedure TFrm_Login.OnLogIn(Reconnect1: Boolean);
Var sTemp : String;
	sTmp1, sTmp2, sTmp3: string;
begin
  SetDebugeWrite('Frm_Login.OnLogIn');

  // 20141020 시스템 볼륨이름으로 사용하던걸 하드디스크 SerialNo로 변경처리
	if GS_CheckPC then
	begin
		sTemp := GetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), 'PCCHECK');
		SetDebugeWrite('Frm_Login.OnLogIn PCCHECK = ' + sTemp);
		if sTemp = '' then
		begin
			GMessagebox('해당PC는 PC인증이 되어있지 않습니다.' + #13#10 + 'PC인증으로 사용하시려면 인증 후 사용하세요.', CDMSE);
			Frm_Login.chkPCAuth.Checked := False;
			Exit;
		end;
	end else
	begin
		sTmp1 := GetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), 'PCCHECK');
		SetDebugeWrite('Frm_Login.OnLogIn PCCHECK = ' + sTmp1);
		sTmp2 := GetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), 'Code');
		SetDebugeWrite('Frm_Login.OnLogIn Code = ' + sTmp2);
		sTmp3 := GetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), edtUserID.Text+'Code');
		SetDebugeWrite('Frm_Login.OnLogIn edtUserID = ' + sTmp3);
		
{		if (sTmp1 <> '') and (sTmp2 <> '') and (sTmp3 = '') and (not Frm_Login.cxCheckBox6.Checked) then
		begin
			GMessagebox('해당PC는 PC인증이 완료된 PC입니다.' + #13#10 + 'PC인증으로 로그인 하십시오.', CDMSE);
			Frm_Login.cxCheckBox6.Checked := True;
			exit;			
		end;}  

		sTemp := GetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), Gt_USERIF.ID);
	end;

  if sTemp = '' then
    sTemp := GetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), 'VOLUMNG');

  if sTemp = '' then
    sTemp := GetRegistry(HKEY_LOCAL_MACHINE, 'SYSTEM\WLKXE', 'VOLUMNG');

  GT_USERIF.HS := SysInfoRec.VolumeSerial;
//  GT_USERIF.HS := '63DS107DTE4Y';
  GT_USERIF.VN := SysInfoRec.VolumeSerial;

  PnlLogin.Enabled := False;

  bConnect := True;
  AdvWiiProgressBar1.Visible := False;
  lblLightUp.Visible := False;
  btnConnectCnl.Visible := False;
  lblDescription.Visible := False;
  try
    if not dm.SockConnect(0, 3000) then
    begin
      if not Reconnect1 then
      begin
        Log('Login-Reconnect', LOGDATAPATHFILE);
        AdvWiiProgressBar1.Visible := True;
        lblLightUp.Visible := True;
        lblDescription.Visible := True;
        btnConnectCnl.Visible := True;

        while dm.ServerIPChange do
        begin
          if Not bConnect then Break;
          
          lblDescription.Caption := Format('[%d]번 서버 접속 중...', [ServerIPIndex + 1]);
          Application.ProcessMessages;
          if dm.SockConnect(0, 3000) then
          begin
            AdvWiiProgressBar1.Visible := False;
            lblLightUp.Visible := False;
            lblDescription.Visible := False;
            btnConnectCnl.Visible := False;
            Application.ProcessMessages;
            Exit;
          end
        end;

        AdvWiiProgressBar1.Visible := False;
        lblLightUp.Visible := False;
        lblDescription.Visible := False;
        btnConnectCnl.Visible := False;
        Application.ProcessMessages;
        GMessagebox('서버접속 실패했습니다.'#13#10'프로그램 종료 후 다시 시작바랍니다.', CDMSE);
        PnlLogin.Enabled := True;
        Exit;
      end else
      begin
        if FReCount > 3 then
        begin
          ShowMessage('현재 서버에 접속할 수 없습니다. 관리자 확인 후 접속 하여 주십시요.');
          PnlLogin.Enabled := True;
          dm.SockDisconnect;
        end else
        begin
          Inc(FReCount);
          OnLogIn(True);
        end;
        Exit;
      end;
    end;
  finally
    AdvWiiProgressBar1.Visible := False;
    lblLightUp.Visible := False;
    btnConnectCnl.Visible := False;
    lblDescription.Visible := False;
    Application.ProcessMessages;
  end;
  FReCount := 0;
end;

procedure TFrm_Login.PnlLoginMouseEnter(Sender: TObject);
begin
  gbServerCHK.Visible := False;
  gbAreaCHK.Visible := False;
end;

procedure TFrm_Login.rbSelectAreaClick(Sender: TObject);
var
	EnvFile: TIniFile;
	iAreaFlag, iTag : Integer;
begin
	iTag := TcxRadioButton(Sender).Tag;
	if iTag = 99 then exit;
	
	if (Pos('_ji', EXECDIRECTORY) > 0) or (Pos('_JI', EXECDIRECTORY) > 0) then	iAreaFlag := 1 else iAreaFlag := 2;

	if (edtUserID.Text = '11 9') or (edtUserID.Text = 'mjj1982') or (edtUserID.Text = 'jhg114') or
		 (edtUserID.Text = 'jhg1005') or (edtUserID.Text = 'sntest') then iAreaFlag := 3; //개발아이디는 예외
	
	if (Pos('DEV_CMNAGTXE', EXECDIRECTORY) > 0) then iAreaFlag := 3; //개발폴더 예외
{	

	if iAreaFlag = 1 then //지방권 선택이면
		sMsg := '[지방권 전용프로그램]' +#13#10
					+ '지방권설치 폴더에서 실행한 프로그램이므로 접속지역을 변경할 수 없습니다.' +#13#10+#13#10
					+ '수도권으로 접속하시려면 콜마너폼홈페이지(http://callmaner.com)에서' +#13#13 
					+ '수도권 전용프로그램을 설치 후 사용하십시오.'
	else if iAreaFlag = 2 then
		sMsg := '[수도권 전용프로그램]' +#13#10
					+ '수도권설치 폴더에서 실행한 프로그램이므로 접속지역을 변경할 수 없습니다.' +#13#10+#13#10
					+ '지방권으로 접속하시려면 콜마너폼홈페이지(http://callmaner.com)에서' +#13#13 
					+ '지방권 전용프로그램을 설치 후 사용하십시오.';         }
					
//	if Sender = rbAreaS then
//	begin
//		if iAreaFlag = 1 then //지방권 폴더에서 수도권 선택하면
//		begin
////			GMessagebox(sMsg, CDMSE);
//			rbAreaO.Checked := True;
//			exit;
//		end;
//
//		GS_PRJ_AREA := 'S';
//		GS_CDMS_URL := 'www.gmgm.net';
//		GS_CDMS_URLPORT := '80';
//		GS_CDMS_IP := '203.251.202.26';
//		GS_CDMS_IP_58 := '58.180.30.37';
//		GS_CDMS_IP_61 := '61.77.191.101';
//
//		GT_FTP_PATH := '/';
//		SMS_PORT := 9991;
//
//		cxLblServiceArea.Caption := rbAreaS.Caption;
//	end else
//	begin
//		if iAreaFlag = 2 then //수도권 폴더에서 지방권 선택하면
//		begin
//			GMessagebox(sMsg, CDMSE);
//			rbAreaS.Checked := True;
//			exit;
//		end;
		GS_PRJ_AREA := 'O';
		GS_CDMS_URL := 'www.gngm.net';
		GS_CDMS_URLPORT := '80';
		GS_CDMS_IP := '203.251.202.27';
    GS_CDMS_IP_58 := '58.180.30.38';
    GS_CDMS_IP_61 := '61.77.191.102';

    GT_FTP_PATH := '/TUD/WkImage2/';
    SMS_PORT := 9992;

		cxLblServiceArea.Caption := rbAreaO.Caption;
//  end;
  EnvFile := TIniFile.Create(ENVPATHFILE);
  try
		EnvFile.WriteString('PRJ', 'AREA', GS_PRJ_AREA);
  finally
    FreeAndNil(EnvFile);
  end;
end;

procedure TFrm_Login.rdoServerSelectClick(Sender: TObject);
var
  EnvFile: TIniFile;
begin
  if Sender = rbServerCIS then
    GT_ConnectionType := ctCIS
  else if Sender = rbServer02 then
    GT_ConnectionType := ct203
  else if Sender = rbServer03 then
    GT_ConnectionType := ct61
  else if Sender = rbServerTest then
    GT_ConnectionType := ctTest
  else
    GT_ConnectionType := ctCIS;

  cxLblServer.Caption := TcxButton(Sender).Caption;

  if GT_ConnectionType = ctTest then
  begin
		GMessagebox('테스트 서버로 접속 시 일부기능이 정상동작을 하지 않을 수 있습니다.'#13#10 +
			'(※테스트 목적으로 고객센터의 요청이 있을 경우만 테스트 서버를 선택 바랍니다.)', CDMSE);
	end;

  EnvFile := TIniFile.Create(ENVPATHFILE);
	try
    EnvFile.WriteString('Connection', 'Date', StartDate);
    EnvFile.WriteInteger('Connection', 'Type', Ord(GT_ConnectionType));
  finally
    FreeAndNil(EnvFile);
  end;
end;

procedure TFrm_Login.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  try
    Self.AlphaBlend := True;
    Self.AlphaBlendValue := 180;    // Value : 0 ~ 255

    frm_SMS05 := Tfrm_SMS05.Create(Self);
    frm_SMS05.imgXE4.Visible := False;
    frm_SMS05.imgcLine.Visible := True;
    if edtUserID.Text <> '' then
      frm_SMS05.edtUserId.Text := edtUserID.Text;
    frm_SMS05.ShowModal;
	finally
    frm_SMS05.Free;
    Self.AlphaBlend := False;
  end;
end;

procedure TFrm_Login.ShpRemoteMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  IE: variant;
begin
  try // 원격연결 부라우저 띄우기..
    IE := CreateOleObject('InternetExplorer.Application');
    IE.Visible := True;
    IE.height := 900;
    IE.width := 1000;
    IE.Left := 0;
    IE.Top := 0;

    IE.MenuBar := False;
    IE.AddressBar := False;
    IE.Resizable := False;
    IE.StatusBar := False;
    IE.ToolBar := False;
    IE.Silent := False;

    IE.Navigate('http://cs1472.com');
    // 2016-04-19 원격지원 프로그램을 업데이트로 변경함.
//    IE.Navigate('http://callmaner.anyhelp.net/');
    // 2011-11-10 원격지원 프로그램을 데이콤 AnyHelp 로 변경함.
    // IE.Navigate('http://www.gmgm.net/event/down/callmaner.exe');
    // EHWND: HWND; //remote control ie handle, 전역변수로 추가
    EHWND := IE.HWND;
  except
  end;
end;

procedure TFrm_Login.tmrAutoLoginTimer(Sender: TObject);
begin
  tmrAutoLogin.Enabled := False;
  if FLoginCnt < 3 then
  begin
    Inc(FLoginCnt);
    case FLoginCnt of
      1 : chkAutoLogin.Caption := '2초후 자동로그인';
      2 : chkAutoLogin.Caption := '1초후 자동로그인';
      3 : chkAutoLogin.Caption := '0초~';
    end;
    if tmrAutoLogin.Tag = 0 then tmrAutoLogin.Enabled := True
                            else chkAutoLogin.Caption := '3초후 자동로그인';
  end else
  begin
    if tmrAutoLogin.Tag = 0 then
    begin
      chkAutoLogin.Caption := '자동로그인합니다';
      lblLoginClick(lblLogin);
    end else
      chkAutoLogin.Caption := '3초후 자동로그인';
  end;
end;

end.

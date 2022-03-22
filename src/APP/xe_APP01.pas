unit xe_APP01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, GradientLabel, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, jpeg, StrUtils, Menus,
  cxLookAndFeelPainters, cxMemo, IdBaseComponent, IdComponent, Math,
  IdTCPConnection, IdTCPClient, IdFTP, ExtDlgs, cxCheckBox, cxSpinEdit,
  cxTimeEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxRadioGroup, cxContainer, cxLabel, cxButtons,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  MSXML2_TLB, cxButtonEdit, idftplist, OleCtrls, SHDocVw,
  cxLookAndFeels, Vcl.ComCtrls, dxCore, cxDateUtils, IdGlobal,
  IdExplicitTLSClientServerBase, cxGroupBox, dxSkinsCore, WebImage,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_APP01 = class(TForm)
    PnlMain: TPanel;
    Pnl_Step1: TPanel;
    Btn_SaveNext: TcxButton;
    Pnl_Step3: TPanel;
    Btn_Save: TcxButton;
    Pnl_Step2: TPanel;
    Btn_Next: TcxButton;
    RB_GongA: TcxRadioButton;
    RB_GongB: TcxRadioButton;
    Edt_Title: TcxTextEdit;
    Btn_Init: TcxButton;
    Btn_SaveOff: TcxButton;
    RB_S2_A: TcxRadioButton;
    RB_S2_B: TcxRadioButton;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox1: TcxCheckBox;
    Btn_Sch: TcxButton;
    cxLbl_T24: TcxLabel;
    RB_S3_A: TcxRadioButton;
    RB_S3_B: TcxRadioButton;
    de_Reserv: TcxDateEdit;
    Te_Reserv: TcxTimeEdit;
    Btn_Pre: TcxButton;
    OpenPictureDialog1: TOpenPictureDialog;
    RB_GongD: TcxRadioButton;
    IdFTP1: TIdFTP;
    pop_date: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    pop_date1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    cxBrNo: TcxTextEdit;
    cxKeyNum: TcxTextEdit;
    Rb_Txt: TcxRadioButton;
    Rb_Img: TcxRadioButton;
    Pnl_Txt: TPanel;
    M_Memo: TcxMemo;
    Pnl_Img: TPanel;
    EdtFilePath: TcxTextEdit;
    Edt_URL: TcxTextEdit;
    Btn_Up1: TcxButton;
    btnBtn_Del1: TcxButton;
    Edt_PTitle: TcxTextEdit;
    cxLbl_T23: TcxLabel;
    Pnl_Chk1: TPanel;
    Label13: TLabel;
    de_1stDate: TcxDateEdit;
    de_1edDate: TcxDateEdit;
    RbButton1: TcxButton;
    Pnl_Chk2: TPanel;
    Label1: TLabel;
    de_2stDate: TcxDateEdit;
    de_2edDate: TcxDateEdit;
    cxButton7: TcxButton;
    cxCheckBox3: TcxCheckBox;
    cbArea: TcxComboBox;
    Pnl_Web: TPanel;
    Image1: TImage;
    de_EndDate: TcxDateEdit;
    chk_Gongji_Unpop: TcxCheckBox;
    cxLabel54: TcxLabel;
    CustLevChk1: TcxCheckBox;
    CustLevChk2: TcxCheckBox;
    CustLevChk3: TcxCheckBox;
    CustLevChk4: TcxCheckBox;
    CustLevChk5: TcxCheckBox;
    CustLevChk6: TcxCheckBox;
    CustLevChk7: TcxCheckBox;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxGbStep2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxLabel218: TcxLabel;
    Shape3: TShape;
    cxLabel1: TcxLabel;
    Shape1: TShape;
    cxLabel2: TcxLabel;
    Shape2: TShape;
    Panel1: TPanel;
    Shape4: TShape;
    Panel2: TPanel;
    Shape5: TShape;
    cxLabel3: TcxLabel;
    Shape6: TShape;
    cxLabel4: TcxLabel;
    Shape7: TShape;
    cxLabel5: TcxLabel;
    Shape8: TShape;
    cxLabel6: TcxLabel;
    Shape9: TShape;
    PnlHelp: TcxGroupBox;
    cxLabel7: TcxLabel;
    cxButton1: TcxButton;
    Pnl_S2_Sch0: TPanel;
    Shape10: TShape;
    cxLabel8: TcxLabel;
    Shape11: TShape;
    Pnl_S2_Sch: TPanel;
    Shape12: TShape;
    Panel4: TPanel;
    Shape13: TShape;
    cxLabel9: TcxLabel;
    Shape14: TShape;
    cxLabel10: TcxLabel;
    Shape15: TShape;
    cxLabel11: TcxLabel;
    Shape16: TShape;
    Pnl_S3_Sch: TPanel;
    Shape17: TShape;
    cxLabel12: TcxLabel;
    Shape18: TShape;
    Panel3: TPanel;
    cxLblActive: TLabel;
    WebBrowser1: TWebBrowser;
    ImageS: TWebImage;
    Label2: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_SaveNextClick(Sender: TObject);
    procedure Btn_NextClick(Sender: TObject);
    procedure Btn_PreClick(Sender: TObject);
    procedure Btn_Up1Click(Sender: TObject);
    procedure btnBtn_Del1Click(Sender: TObject);
    procedure Btn_InitClick(Sender: TObject);
    procedure Edt_TitleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RB_S2_AClick(Sender: TObject);
    procedure RB_S3_AClick(Sender: TObject);
    procedure Btn_SchClick(Sender: TObject);
    procedure Btn_SaveOffClick(Sender: TObject);
    procedure RbButton1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure Rb_TxtClick(Sender: TObject);
    procedure Btn_SaveClick(Sender: TObject);
    procedure cxCheckBox2Click(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure de_1stDatePropertiesChange(Sender: TObject);
    procedure cxCheckBox3Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
     function AppUpLoadFile(IdFTPUP: TIdFTP; sFN, sFTPPath: string): Boolean;
     procedure proc_save_image(sBaseName : AnsiString; sFileName: string);
     function proc_save_Gongji( var sGongNo : String ) : Boolean;
    function proc_getPushCnt: String;
    procedure Step2_Init;
  public
    { Public declarations }
     procedure pnl_Init( iStep : Integer );
     procedure Edt_Init;    
  end;

var
  Frm_APP01: TFrm_APP01;
  SL_Penalty_List: TStringList;

implementation

{$R *.dfm}

uses Main, xe_Flash, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg,
  xe_packet, xe_xml, xe_APP;


procedure TFrm_APP01.FormCreate(Sender: TObject);
var
  Save: LongInt;
  i : Integer;
begin
  try
    // 날짜형식이 'yy/mm/dd'일경우 오류 발생 가능성으로 인해 자체 Display 포맷 변경
    for i := 0 to ComponentCount - 1 do
    begin
      if Components[i] is TcxDateEdit then
      begin
        (Components[i] as TcxDateEdit).Properties.DisplayFormat := 'yyyy/mm/dd';
        (Components[i] as TcxDateEdit).Properties.EditFormat    := 'yyyy/mm/dd';
      end;
    end;
  except
  end;

  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);

  //====================================================
  // 폼 타이틀 제거..
  Save := GetWindowLong(Handle,  GWL_STYLE);
  if (Save and ws_Caption) = ws_Caption then
  begin
    case BorderStyle of
      bsSizeable:
        SetWindowLong(Handle, GWL_STYLE, Save and (not (WS_CAPTION)) or WS_BORDER);
    end;
    Height := Height - getSystemMetrics(SM_CYCAPTION);
    Self.Refresh;
  end;

  pnl_Init(1);
  Btn_Init.Click;
  Edt_Title.SetFocus;

  Pnl_Txt.Left   := 2;
  Pnl_Txt.Top    := 118;
  Pnl_Txt.Height := 348;
  Pnl_Txt.Width  := 334;
  Pnl_Txt.Visible := True;

  Pnl_Img.Left   := 2;
  Pnl_Img.Top    := 118;
  Pnl_Img.Height := 348;
  Pnl_Img.Width  := 334;
  Pnl_Img.Visible := False;

  Pnl_Web.Visible := False;

  Edt_Init;
end;

procedure TFrm_APP01.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_APP01.FormDestroy(Sender: TObject);
begin
  Frm_APP01 := Nil;
end;

procedure TFrm_APP01.FormShow(Sender: TObject);
begin
  fSetFont(Frm_APP01, GS_FONTNAME);
end;

procedure TFrm_APP01.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_APP01.pnl_Init( iStep : Integer );
begin
  Case iStep of
  1 : begin
        Pnl_Step1.Enabled := True;
        Pnl_step1.Color := $00A5EFB0;
        Pnl_Step2.Enabled := False;
        Pnl_Step2.Color := clBtnFace;

        cxLbl_T23.Style.Color := clBtnFace;
        cxLbl_T24.Style.Color := clBtnFace;

        Pnl_Step3.Enabled := False;
        Pnl_Step3.Color := clBtnFace;
      end;
  2 : begin
        Pnl_Step1.Enabled := False;
        Pnl_step1.Color := clBtnFace;
        Pnl_Step2.Enabled := True;
        Pnl_Step2.Color := $00A5EFB0;

        Pnl_Step3.Enabled := False;
        Pnl_Step3.Color := clBtnFace;
      end;
  3 : begin
        Pnl_Step1.Enabled := False;
        Pnl_step1.Color := clBtnFace;
        Pnl_Step2.Enabled := False;
        Pnl_Step2.Color := clBtnFace;

        Pnl_Step3.Enabled := True;
        Pnl_Step3.Color := $00A5EFB0;
      end;
  end;
end;

procedure TFrm_APP01.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_APP01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_APP01.Btn_SaveNextClick(Sender: TObject);
Var sGongNo : String;
begin
  if proc_save_Gongji(sGongNo) then
  begin
    if Assigned(Frm_APP) then
      Frm_APP.btnSearchA2.Click;
    pnl_Init(2);
    cxGbStep2.Hint := sGongNo;
  end;   
end;

procedure TFrm_APP01.Btn_NextClick(Sender: TObject);
begin
  pnl_Init(3);
  Edt_PTitle.Text := Edt_Title.Text;  
  Edt_PTitle.SetFocus;
end;

procedure TFrm_APP01.Btn_PreClick(Sender: TObject);
begin
  pnl_Init(2);
end;

procedure TFrm_APP01.Btn_Up1Click(Sender: TObject);
var
  f: file of Byte;
  size: Longint;
  sFileName: string;
begin
  if OpenPictureDialog1.Execute then
  begin
    Pnl_Web.Visible := False;
    WebBrowser1.Tag := 0;
    sFileName := OpenPictureDialog1.FileName;
    ImageS.WebPicture.LoadFromFile(sFileName);
    AssignFile(f, sFileName);
    Reset(f);
    try
      size := FileSize(f);
    finally
      CloseFile(f);
    end;
    if size > 1000*1024 then
    begin
      ShowMessage('파일 사이즈가 너무 큽니다.(1 MByte이하로 등록바랍니다.)');
      exit;
    end;

    EdtFilePath.Text := sFileName;
  end;
end;

procedure TFrm_APP01.btnBtn_Del1Click(Sender: TObject);
begin
  EdtFilePath.Clear;
  ImageS.WebPicture.Assign(nil);
end;

procedure TFrm_APP01.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_APP01.Btn_InitClick(Sender: TObject);
begin
  RB_GongA.Checked := True;
  Rb_Txt.Checked := True;
  Rb_TxtClick(Rb_Txt);
  M_Memo.Clear;
  btnBtn_Del1.Click;
  chk_Gongji_Unpop.Checked := False;
  Edt_Title.Clear;
  EdtFilePath.Clear;
  ImageS.WebPicture.Assign(nil);
  Pnl_Img.Hint := '';
  Edt_URL.Clear; 
end;

procedure TFrm_APP01.Edt_TitleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ActiveControl <> nil) and (key = VK_RETURN) then
  begin
    Key := 0;
    SelectNext(TWinControl(ActiveControl), True, True);
  end;
end;

procedure TFrm_APP01.RB_S2_AClick(Sender: TObject);
begin
  if RB_S2_A.Checked then
  begin
    Pnl_S2_Sch.Enabled := False;
    cxCheckBox1.Checked := False;
    cxCheckBox2.Checked := False;
    cxCheckBox3.Checked := False;
    cxCheckBox3Click(cxCheckBox3);
  end else
  if RB_S2_B.Checked then
  begin
    Pnl_S2_Sch.Enabled := True;
  end;
  Step2_Init;  
end;

procedure TFrm_APP01.RB_S3_AClick(Sender: TObject);
begin
  if RB_S3_A.Checked then
  begin
    Pnl_S3_Sch.Enabled := False;
  end else
  if RB_S3_B.Checked then
  begin
    Pnl_S3_Sch.Enabled := True;
    Te_Reserv.Time := Now;
    de_Reserv.Date := Now;
  end;
end;

procedure TFrm_APP01.Btn_SchClick(Sender: TObject);
var iCnt : Integer;
begin
	cxLbl_T24.Caption := '';
  iCnt := StrToIntDef(proc_getPushCnt, 0);

  if iCnt = 0 then
  begin
    ShowMessage('푸시 대상자가 없습니다.');
    Exit;
  end;

  Btn_Next.Enabled := True;
  cxLbl_T24.Caption := Format('푸시 대상자 : 총 %d 명', [iCnt]);
end;

procedure TFrm_APP01.Edt_Init;
begin
  Btn_Init.Click;
  
	cxLbl_T24.Caption := '';
  Edt_PTitle.Clear;

  Btn_Next.Enabled := False;;

  de_EndDate.Date := Now + 7;      

  RB_S2_A.Checked := True;
  RB_S2_AClick(RB_S2_A);  
  cxCheckBox2.Checked := False;
  cxCheckBox2Click(cxCheckBox2);
  cxCheckBox1.Checked := False;
  cxCheckBox1Click(cxCheckBox1);
  cxCheckBox3.Checked := False;
  cxCheckBox3Click(cxCheckBox3);
  RB_S3_A.Checked := True;
  RB_S3_AClick(RB_S3_A);

  de_1stDate.Date := Now;
  de_1edDate.Date := Now;

  de_2stDate.Date := Now;
  de_2edDate.Date := Now;

  Te_Reserv.Time := Now;
	de_Reserv.Date := Now;

	CustLevChk1.Checked := False;
	CustLevChk2.Checked := False;
	CustLevChk3.Checked := False;
	CustLevChk4.Checked := False;
	CustLevChk5.Checked := False;
	CustLevChk6.Checked := False;
	CustLevChk7.Checked := False;
end;

function TFrm_APP01.AppUpLoadFile(IdFTPUP: TIdFTP; sFN, sFTPPath: string): Boolean;
  function FindDirectory(TargetMake : string) : boolean;
  var
    i : Integer;
    tempString : TStringList;
  begin
    tempString := TStringList.Create;
    tempString.Clear;

    IdFTPUP.List(tempString, '', False);

    for i := 0 to tempString.Count - 1 do
      if (IdFTPUP.DirectoryListing.Items[i].ItemType = ditDirectory) then
        if TargetMake = IdFTPUP.DirectoryListing.Items[i].FileName then
        begin
          Result := TRUE;
          exit;
        end;

    Result := FALSE;
  end;

  procedure FTPMakedir(TargetMake : string);
  begin
    if not FindDirectory(TargetMake) then
      IdFTPUP.MakeDir(TargetMake);
  end;
begin
  try
    Result := False;
    //업데이트 서버 주소 설정.
    if IdFTPUP.Connected then
      IdFTPUP.DisconnectNotifyPeer;

    IdFTPUP.Passive := True;
    try
      IdFTPUP.Username := AP_FTP_USER;
      IdFTPUP.Password := AP_FTP_PW;
      IdFTPUP.Host := GT_CDMS_WKPIC_URL;
      IdFTPUP.Port := AP_FTP_PORT;
      IdFTPUP.ReadTimeout := 1000;
      IdFTPUP.Connect();
    except
      GMessagebox('업로드 서버에 접근할 수 없습니다.', CDMSE);
      Result := False;
      exit;
    end;

    if IdFTPUP.Connected then
    begin
      try
        FTPMakedir(FormatDateTime('YYYYMM', Now));
      except
      end;

      IdFTPUP.ChangeDir(sFTPPath);
      Sleep(100);
      IdFTPUP.Put(sFN, ExtractFileName(sFN));
      Sleep(50);
      Result := True;
    end;
    // ------------------------------------------------------------------------
  except
    GMessagebox('업로드 서버에 접근할 수 없습니다.', CDMSE);
    Result := False;
  end;
end;

procedure TFrm_APP01.Btn_SaveOffClick(Sender: TObject);
Var sGongNo : String;
begin
  if proc_save_Gongji(sGongNo) then
  begin
    if Assigned(Frm_APP) then
      Frm_APP.btnSearchA2.Click;
    BtnClose.Click;
  end;
end;

function TFrm_APP01.proc_save_Gongji( var sGongNo : String ) : Boolean;
Var Param, XmlData, ErrMsg, sFileName, sDirName,
    sfN1, sufN1, sefN1, sGubun, sURL, sContent : String;     // 서버실제위치파일명
    ErrCode : Integer;
		bCheck : Boolean;
begin
  if Trim(Edt_Title.Text) = '' then
  begin
    ShowMessage('게시물 제목을 입력하십시오.');
    Edt_Title.SetFocus;
    Exit;
  end;

  if Rb_Txt.Checked then
  begin
    if Trim(M_Memo.Text) = '' then
    begin
      ShowMessage('게시물 내용을 입력하십시오.');
      M_Memo.SetFocus;
      Exit;
    end;
  end else
  if Rb_Img.Checked then  
  begin
    if ( Trim(EdtFilePath.Text) = '' ) And ( Trim(Edt_URL.Text) = '' ) And ( pnlTitle.Hint = 'I' )  then
    begin
      ShowMessage('게시물 이미지 또는 URL을 입력하십시오.');
      Edt_URL.SetFocus;
      Exit;
    end;
  end;

	if Not func_EucKr_Check(Edt_Title, 0) then Exit;
  Edt_PTitle.Text := Edt_Title.Text;

  try
    bCheck := True;
    sDirName := '';
    sFileName := '';
    sfN1 := '';
    if ( Trim(EdtFilePath.Text) <> '' ) And ( Rb_Img.Checked ) then
    begin
      sDirName  := FormatDateTime('YYYYMM', Now);
      sFileName := FormatDateTime('DDHHNNSS', Now);
      AC_FTP_PATH := '/' + sDirName +'/';

      sfN1  := sFileName + IntToStr(RandomRange(1000, 9999));
      sufN1 := WORKDRIVE + sfN1 + '.JPG';
      sefN1 := sDirName +'_'+ sfN1;
      proc_save_image(EdtFilePath.Text, sfN1);
      sfN1 := sDirName + sfN1;
      bCheck := AppUpLoadFile(IdFTP1, sufN1, AC_FTP_PATH);
    end;

    if ( pnlTitle.Hint = 'U' ) And ( Trim(EdtFilePath.Text) = '' ) And ( Rb_Img.Checked ) then
    begin
      sfN1 := Pnl_Img.Hint;
    end;

    if bCheck then
    begin
      if ( Trim(Edt_URL.Text) <> '' ) then
      begin
        if Pos('http', Trim(Edt_URL.Text)) > 0 then
          sUrl := Trim(Edt_URL.Text)
        else
          sUrl := 'http://' + Trim(Edt_URL.Text);
      end else
        sUrl := '';

      if RB_GongA.Checked then sGubun := '0' else
			if RB_GongB.Checked then sGubun := '1' else
			if RB_GongD.Checked then sGubun := '2' ;//else
//      if RB_GongC.Checked then sGubun := '3';

      if pnlTitle.Hint = 'I' then Param := 'C' + '│' else
      if pnlTitle.Hint = 'U' then Param := 'U' + '│';

      Param := Param + Trim(cxBrNo.Text) + '│' + Trim(cxKeyNum.Text) + '│';

      if pnlTitle.Hint = 'I' then Param := Param + '│' else
      if pnlTitle.Hint = 'U' then Param := Param + cxGbStep2.Hint + '│';

      Param := Param + sGubun + '│' + Trim(Edt_Title.Text);

      if Rb_Txt.Checked then
      begin
        sContent := ReplaceAll(M_Memo.Text, #$D#$A, '<Br>');
				sContent := ReplaceAll(sContent   , #13#10, '<Br>');
				sContent := ReplaceAll(sContent   , #10#13, '<Br>');

      	if Not func_EucKr_Check(M_Memo, 0) then Exit;

        Param := Param + '│' + En_Coding(sContent) + '│' +  '│' ;
      end else
			if Rb_Img.Checked then
			begin
        Param := Param + '│' + '│' + sfN1 +  '│' + sUrl;
      end;

			Param := Param + '│' + FormatDateTime('YYYYMMDD', de_EndDate.Date);
			if chk_Gongji_Unpop.Checked then
				Param := Param + '│' + 'y'
			else
				Param := Param + '│' + 'n';

      Param := Param + '│' + En_Coding(sfN1) +  '│' + En_Coding(ReplaceAll(M_Memo.Text, #13#10, '¶')) + '│' + En_Coding(sUrl);

			if not RequestBase(GetCallable05('SET_APP_NOTICE', 'mng_custapp.set_app_notice', Param), XmlData, ErrCode, ErrMsg) then
			begin
				GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSI);
				Result := False;
				Exit;
			end;
      sGongNo := ErrMsg;  // 저장 후 게시물 번호 받아서 푸시에 사용한다.
			Result := True;
		end else
		begin
			Result := False;
      ShowMessage('첨부파일 UpLoad 중 오류 발생');
		end;
  except
    Result := False;  
    ShowMessage('저장 중 오류 발생');
  end;
end;

procedure TFrm_APP01.proc_save_image(sBaseName : AnsiString; sFileName: string);
var
  oJpg: TJpegImage;
  oBmp: TBitmap;
begin
  if not DirectoryExists(WORKDRIVE) then ForceDirectories(WORKDRIVE);

  if FileExists(WORKDRIVE + sFileName + '.JPG') then
    DeleteFile(WORKDRIVE + sFileName + '.JPG');

  // 파일크기변환
  oJpg := TJpegImage.Create;
  oBmp := TBitmap.Create;
  try
    if UpperCase(Rightstr(sBaseName, 3)) = 'JPG' then
    begin
      oJpg.LoadFromFile(sBaseName);
    end else
    begin
      oBmp.LoadFromFile(sBaseName);
      oJpg.Assign(oBmp);
    end;
    oJpg.SaveToFile(WORKDRIVE + sFileName + '.jpg');
  finally
    oJpg.Free;
    oBmp.Free;
  end;
end;

procedure TFrm_APP01.RbButton1Click(Sender: TObject);
begin
  pop_date.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_APP01.N1Click(Sender: TObject);
begin
  de_1stDate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
  de_1edDate.Date := de_1stDate.Date + 1;
end;

procedure TFrm_APP01.N2Click(Sender: TObject);
begin
  de_1stDate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 31;
  de_1edDate.Date := de_1stDate.Date + 31;
end;

procedure TFrm_APP01.N3Click(Sender: TObject);
begin
  de_1stDate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 91;
  de_1edDate.Date := de_1stDate.Date + 91;
end;

procedure TFrm_APP01.N4Click(Sender: TObject);
begin
  de_1stDate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 181;
  de_1edDate.Date := de_1stDate.Date + 181;
end;

procedure TFrm_APP01.N5Click(Sender: TObject);
begin
  de_1stDate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 365;
  de_1edDate.Date := de_1stDate.Date + 365;
end;

procedure TFrm_APP01.cxButton1Click(Sender: TObject);
begin
  PnlHelp.Visible := False;
end;

procedure TFrm_APP01.cxButton7Click(Sender: TObject);
begin
  pop_date1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_APP01.MenuItem1Click(Sender: TObject);
begin
  de_2stDate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
  de_2edDate.Date := de_2stDate.Date + 1;
end;

procedure TFrm_APP01.MenuItem2Click(Sender: TObject);
begin
  de_2stDate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 31;
  de_2edDate.Date := de_2stDate.Date + 31;
end;

procedure TFrm_APP01.MenuItem3Click(Sender: TObject);
begin
  de_2stDate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 91;
  de_2edDate.Date := de_2stDate.Date + 91;
end;

procedure TFrm_APP01.MenuItem4Click(Sender: TObject);
begin
  de_2stDate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 181;
  de_2edDate.Date := de_2stDate.Date + 181;
end;

procedure TFrm_APP01.MenuItem5Click(Sender: TObject);
begin
  de_2stDate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 365;
  de_2edDate.Date := de_2stDate.Date + 365;
end;

procedure TFrm_APP01.Rb_TxtClick(Sender: TObject);
begin
  if Rb_Txt.Checked then
  begin
    Pnl_Txt.Visible := True;
    Pnl_Img.Visible := False;
    Pnl_Web.Visible := False;
  end else
  begin
    Pnl_Txt.Visible := False;
    Pnl_Img.Visible := True;
    if WebBrowser1.Tag = 1 then Pnl_Web.Visible := True;
  end;
end;

function TFrm_APP01.proc_getPushCnt: String;
var
	XmlData, Param, ErrMsg, sTmp: string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
	I, ErrCode : Integer;
begin
  Param := cxBrNo.Text + '│' + cxKeyNum.Text;
  if RB_S2_A.Checked then
  begin
    Param := Param + '│' + '│' + '│' + '│'+ '│'; 
  end else
  if RB_S2_B.Checked then
  begin
    if cxCheckBox2.Checked then
    begin
      Param := Param + '│' + FormatDateTime('YYYYMMDD', de_1stDate.Date) + '│'  + FormatDateTime('YYYYMMDD', de_1edDate.Date);
    end else
    begin
      Param := Param + '│' + '│';
    end;

		if cxCheckBox1.Checked then
    begin
      Param := Param + '│' + FormatDateTime('YYYYMMDD', de_2stDate.Date) + '│'  + FormatDateTime('YYYYMMDD', de_2edDate.Date);
    end else
    begin
      Param := Param + '│' + '│';
    end;

		if cxCheckBox3.Checked then
    begin
      Param := Param + '│' + cbArea.Text;
    end else
		begin
			Param := Param + '│';
		end;
		sTmp := '';
		if CustLevChk1.Checked then sTmp := sTmp + 'N';
		if CustLevChk2.Checked then sTmp := sTmp + '0';
		if CustLevChk3.Checked then sTmp := sTmp + '1';
		if CustLevChk4.Checked then sTmp := sTmp + '2';
		if CustLevChk5.Checked then sTmp := sTmp + '3';
		if CustLevChk6.Checked then sTmp := sTmp + '4';
		if CustLevChk7.Checked then sTmp := sTmp + '5';
		Param := Param + '│' + sTmp + '│';
	end;

	if not RequestBase(GetSel05('GET_APP_PUSH_USERCNT', 'mng_custapp.get_app_push_usercnt', '100', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('푸시 대상자 조회  중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
    Exit;
  end;

  xdom := ComsDomDocument.Create;
  try
    xdom.loadXML(XmlData);
    lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
    if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      ls_Rcrd := TStringList.Create;
      try
        for I := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
          Result := ls_Rcrd[0];
        end;
      finally
        ls_Rcrd.Free;
      end;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_APP01.Step2_Init;
begin
  Btn_Next.Enabled := False;
  cxLbl_T24.Caption := '';
end;

procedure TFrm_APP01.Btn_SaveClick(Sender: TObject);
Var Param, XmlData, ErrMsg,	sReDate, sTmp : String;
    ErrCode : Integer;
begin
	if Trim(Edt_PTitle.Text) = '' then
  begin
    ShowMessage('푸시 제목을 입력하십시오.');
    Edt_PTitle.SetFocus;
    Exit;
  end;

	if Not func_EucKr_Check(Edt_PTitle, 0) then Exit;

  if RB_S3_B.Checked then
  begin
		sReDate := FormatDateTime('YYYY-MM-DD', de_Reserv.Date) + ' ' +
               FormatDateTime('HH:NN:00', Te_Reserv.Time);
    if ( FormatDateTime('YYYY-MM-DD HH:NN:00', Now ) >= sReDate ) then
		begin
      ShowMessage('예약일시가 잘못 되었습니다. 확인 바랍니다.');
      Exit;
    end;
  end;

  try
    Param := cxBrNo.Text + '│' + cxKeyNum.Text + '│' + Trim(Edt_PTitle.Text) + '│' + cxGbStep2.Hint;
    if RB_S2_A.Checked then
    begin
      Param := Param + '│' + '│' + '│' + '│';
    end else
    if RB_S2_B.Checked then
    begin
      if cxCheckBox2.Checked then
      begin
        Param := Param + '│' + FormatDateTime('YYYYMMDD', de_1stDate.Date) + '│'  + FormatDateTime('YYYYMMDD', de_1edDate.Date);
      end else
      begin
        Param := Param + '│' + '│';
      end;

      if cxCheckBox1.Checked then
      begin
        Param := Param + '│' + FormatDateTime('YYYYMMDD', de_2stDate.Date) + '│'  + FormatDateTime('YYYYMMDD', de_2edDate.Date);
      end else
      begin
        Param := Param + '│' + '│';
      end;
    end;

    if RB_S3_A.Checked then
    begin
			Param := Param + '│'
    end else
    if RB_S3_B.Checked then
    begin
      Param := Param + '│' + FormatDateTime('YYYYMMDD', de_Reserv.Date) + FormatDateTime('HHNN00', Te_Reserv.Time)
    end;

    if cxCheckBox3.Checked then
    begin
      Param := Param + '│' + cbArea.Text;
    end else
    begin
      Param := Param + '│';
    end;
		sTmp := '';
		if CustLevChk1.Checked then sTmp := sTmp + 'N';
		if CustLevChk2.Checked then sTmp := sTmp + '0';
		if CustLevChk3.Checked then sTmp := sTmp + '1';
		if CustLevChk4.Checked then sTmp := sTmp + '2';
		if CustLevChk5.Checked then sTmp := sTmp + '3';
		if CustLevChk6.Checked then sTmp := sTmp + '4';
		if CustLevChk7.Checked then sTmp := sTmp + '5';
		Param := Param + '│' + sTmp + '│';

		if not RequestBase(GetCallable05('SET_APP_PUSH', 'mng_custapp.set_app_push', Param), XmlData, ErrCode, ErrMsg) then
		begin
      GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;
    BtnClose.Click;
    if Assigned(Frm_APP) then
      Frm_APP.btnSearchA2.Click;
  except
    ShowMessage('저장 중 오류 발생');
  end;
end;

procedure TFrm_APP01.cxCheckBox2Click(Sender: TObject);
begin
  Step2_Init;
  if cxCheckBox2.Checked then Pnl_Chk1.Enabled := True
                         else Pnl_Chk1.Enabled := False;
end;

procedure TFrm_APP01.cxCheckBox1Click(Sender: TObject);
begin
  Step2_Init;
  if cxCheckBox1.Checked then Pnl_Chk2.Enabled := True
                         else Pnl_Chk2.Enabled := False;
end;

procedure TFrm_APP01.de_1stDatePropertiesChange(Sender: TObject);
begin
  Step2_Init;
end;

procedure TFrm_APP01.cxCheckBox3Click(Sender: TObject);
begin
  Step2_Init;
  if cxCheckBox3.Checked then
  begin
    cbArea.ItemIndex := 0;
    cbArea.Enabled := True;
  end else
  begin
    cbArea.ItemIndex := -1;
    cbArea.Enabled := False;
  end;
end;

procedure TFrm_APP01.Image1Click(Sender: TObject);
begin
  PnlHelp.Top := 64;
  PnlHelp.Left := 3;
  PnlHelp.Visible := True;
end;

end.

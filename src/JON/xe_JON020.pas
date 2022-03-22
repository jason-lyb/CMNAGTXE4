unit xe_JON020;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Magnetic,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, IdGlobal,
  cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel, cxGroupBox, MSXML2_TLB,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxTextEdit,
  Vcl.ExtCtrls, dxSkinsCore, dxSkinscxPCPainter, cxCalc,
  Vcl.Imaging.jpeg, cxMemo, cxCheckBox, cxRadioGroup, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, dxGDIPlusClasses,
  dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_JON020 = class(TForm)
    pnl1: TPanel;
    btnRefuse: TcxButton;
    btnSms: TcxButton;
    btnAgree: TcxButton;
    cxGrid1: TcxGrid;
    cxViewAutoCall: TcxGridDBTableView;
    cxColView1Column1: TcxGridDBColumn;
    cxColView1Column2: TcxGridDBColumn;
    cxLevelUserEtc: TcxGridLevel;
    pnlTitle: TPanel;
    cxButton1: TcxButton;
    PnlMain: TPanel;
    cxButton2: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxLblActive: TLabel;
    cxColView1Column3: TcxGridDBColumn;
    cxColView1Column0: TcxGridDBColumn;
    mmoSMS140: TcxMemo;
    lblSMS140: TLabel;
    imgAgree: TImage;
    btn1: TcxButton;
    btn3: TcxButton;
    btn2: TcxButton;
    btn4: TcxButton;
    btn11: TcxButton;
    mmoSMS141: TcxMemo;
    lblSMS141: TLabel;
    imgText: TImage;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxLabel3: TcxLabel;
    cxLblTitle: TcxLabel;
    TmrChkTag: TTimer;
    cxGroupBox3: TcxGroupBox;
    cxRBSS: TcxRadioButton;
    cxRBSJ: TcxRadioButton;
    cxRBSM: TcxRadioButton;
    BtnImageS: TcxButton;
    BtnImageDelS: TcxButton;
    OpenDialogImg: TOpenDialog;
    ImgSMMS: TImage;
    BtnImageD: TcxButton;
    BtnImageDelD: TcxButton;
    cxGroupBox4: TcxGroupBox;
    cxRBDS: TcxRadioButton;
    cxRBDJ: TcxRadioButton;
    cxRBDM: TcxRadioButton;
    cxGrpOShot: TcxGroupBox;
    cxLblSCash: TcxLabel;
    cxLblLCash: TcxLabel;
    cxLblMCash: TcxLabel;
    cxLblCash: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    ImgDMMS: TImage;
    LblDSMS: TcxLabel;
    LblSSMS: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure mmoSMS140Click(Sender: TObject);
    procedure mmoSMS141Click(Sender: TObject);
    procedure mmoSMS141KeyPress(Sender: TObject; var Key: Char);
    procedure btnAgreeClick(Sender: TObject);
    procedure btnRefuseClick(Sender: TObject);
    procedure btnSmsClick(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure TmrChkTagTimer(Sender: TObject);
    procedure mmoSMS141PropertiesChange(Sender: TObject);
    procedure BtnImageSClick(Sender: TObject);
    procedure BtnImageDelSClick(Sender: TObject);
    procedure cxRBSMClick(Sender: TObject);
    procedure mmoSMS140PropertiesChange(Sender: TObject);
    procedure cxRBDMClick(Sender: TObject);
    procedure BtnImageDelDClick(Sender: TObject);
    procedure BtnImageDClick(Sender: TObject);
    procedure mmoSMS140KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    m_ImgBff140, m_ImgBff141 : array [0..307199] of AnsiChar; // 이미지를 담을 버퍼, 최대 300k
    m_ImgSize140, m_ImgSize141 : Integer;

    procedure MemoText(ATag: Integer; AValue: string); overload;
    procedure MemoText(ATag: Integer; AMemo: TcxMemo; AValue: string); overload;
    procedure Proc_AutoCallSMSSave(sGubun, sSave: string);
    function Proc_AutoCallSMSSendAllShot(sGubun, sSend : string) : Boolean;
  public
    { Public declarations }
    bChkTime : Boolean;
    procedure Cash_ReFlash;
    procedure pGetLoadBuffer(sFileName, sGubun: String);
    function fGetMMSImage(sGubun: String): Boolean;

    procedure WMEnterSizeMove(var Msg: TMessage); message WM_ENTERSIZEMOVE;
    procedure WMSizing(var Msg: TMessage); message WM_SIZING;
    procedure WMMoving(var Msg: TMessage); message WM_MOVING;
    procedure WMExitSizeMove(var Msg: TMessage); message WM_ExitSIZEMOVE;
    procedure WMShowHideWindow(var Msg: TMessage); message WM_WINDOWPOSCHANGED;
    procedure WMSysCommand(var Msg: TMessage); message WM_SYSCOMMAND;
    procedure WMCommand(var Msg: TMessage); message WM_COMMAND;
  end;

var
  Frm_JON020: TFrm_JON020;

implementation


{$R *.dfm}

uses xe_GNL, xe_Func, xe_Msg, xe_JON15, xe_Lib, Main, xe_Dm, xe_packet, xe_xml,
  xe_AllShot;

var
   MagneticWndProc: TSubClass_Proc;
   lGlue, dummyHandled : boolean;

//---------------------- Custom Message Handling procedures ----------------------
// These procedures shold be placed per every forms which we want to give magnetic
//  effect.

procedure TFrm_JON020.WMEnterSizeMove(var Msg: TMessage);
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

  inherited;

  if Assigned(MagneticWndProc) then
      MagneticWndProc(Self.Handle, WM_ENTERSIZEMOVE, lGlue, Msg, dummyHandled);
end;

procedure TFrm_JON020.WMSizing(var Msg: TMessage);
var
   bHandled: Boolean;
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

  if not Assigned(MagneticWndProc) then
     inherited
  else
    if MagneticWndProc(Self.Handle, WM_SIZING, lGlue, Msg, bHandled) then
       if not bHandled then
          inherited;
end;

procedure TFrm_JON020.WMMoving(var Msg: TMessage);
var
   bHandled: Boolean;
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

  if not Assigned(MagneticWndProc) then
      inherited
  else
  if MagneticWndProc(Self.Handle, WM_MOVING, lGlue, Msg, bHandled) then
    if not bHandled then
          inherited;
end;

procedure TFrm_JON020.WMExitSizeMove(var Msg: TMessage);
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

  inherited;

  if Assigned(MagneticWndProc) then
     MagneticWndProc(Self.Handle, WM_ExitSIZEMOVE, lGlue, Msg, dummyHandled);
end;

procedure TFrm_JON020.WMShowHideWindow(var Msg: TMessage);
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

  inherited;

  if Assigned(MagneticWndProc) then
     MagneticWndProc(Self.Handle, WM_WINDOWPOSCHANGED, lGlue, Msg, dummyHandled);
end;

procedure TFrm_JON020.WMSysCommand(var Msg: TMessage);
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

  inherited;

  if Assigned(MagneticWndProc) then
    MagneticWndProc(Self.Handle, WM_SYSCOMMAND, lGlue, Msg, dummyHandled);
end;

procedure TFrm_JON020.WMCommand(var Msg: TMessage);
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

  inherited;

  if Assigned(MagneticWndProc) then
     MagneticWndProc(Self.Handle, WM_COMMAND, lGlue, Msg, dummyHandled);
end;

//------------------- end of Custom Message Handling procedures -----------------

procedure TFrm_JON020.FormCreate(Sender: TObject);
var
  i : Integer;
begin
  for i := 0 to cxViewAutoCall.ColumnCount - 1 do
    cxViewAutoCall.Columns[i].DataBinding.ValueType := 'String';

  mmoSMS140.Clear;
  mmoSMS141.Clear;

  ImgAgree.Hint := '';

  ImgText.Hint := '';
  ImgSMMS.Hint := '';

  cxLblSCash.Caption := '';
  cxLblLCash.Caption := '';
  cxLblMCash.Caption := '';
  cxLblCash .Caption := '';

  lblSMS140.Caption := '0 Byte';
  lblSMS141.Caption := '0 Byte';

  if (GT_USERIF.LV = '10') then btn11.Enabled := False
                           else btn11.Enabled := True;

  PnlMain.Tag := 0;
  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);
end;

procedure TFrm_JON020.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := False;
end;

procedure TFrm_JON020.FormDestroy(Sender: TObject);
begin
  Frm_JON020 := nil;
  Frm_Main.Frm_JON020[Self.Tag] := nil;
end;

procedure TFrm_JON020.FormShow(Sender: TObject);
begin
//  if GS_JON01_GROUPMOVE then TmrChkTag.Enabled := True;
	TmrChkTag.Enabled := True;   // 자석은 무조건하고 옵션에 따라 이동( 열린상태에서 자석 했을경우 바로 적용하기 위해);
end;

procedure TFrm_JON020.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;

  if GS_JON01_LASTACTIVE <> Self.Tag then
  begin
    Frm_Main.Frm_JON01N[Self.Tag].BringToFront;
  end;
end;

procedure TFrm_JON020.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Frm_Main.JON020MNG[Self.Tag].CreateYN := False;
  Frm_Main.JON020MNG[Self.Tag].Use := False;

  Action := caFree;
end;

procedure TFrm_JON020.btn11Click(Sender: TObject);
begin
  Proc_AutoCallSMSSave('SMS', '0');
end;

procedure TFrm_JON020.btn1Click(Sender: TObject);
begin
	MemoText(TcxButton(Sender).Tag, Format('%%%s%%', [TcxButton(Sender).Hint]));
end;

procedure TFrm_JON020.MemoText(ATag: Integer; AValue: string);
var
  Memo: TcxMemo;
begin
  if ATag = 140 then Memo := mmoSMS140 else
  if ATag = 141 then Memo := mmoSMS141;

  if Assigned(Memo) then
		MemoText(ATag, Memo, AValue);
end;

procedure TFrm_JON020.MemoText(ATag: Integer; AMemo: TcxMemo; AValue: string);
var
  s, s1: widestring;
  ALabel : TLabel;
begin
  if AMemo.SelStart > 0 then
  begin
    s := AMemo.Text;
    s := Copy(s, 1, AMemo.SelStart);
    s1 := StringReplace(AMemo.Text, s, '', [rfReplaceAll]);
    AMemo.Text := s + AValue + s1;
  end else
  begin
    AMemo.Text := AValue + AMemo.Text;
	end;
	if Length(AnsiString(AMemo.Text)) > 1200 then
		AMemo.Text := Trim(Copy(AnsiString(AMemo.Text), 1, 1200));

  if ATag = 140 then ALabel := lblSMS140 else
  if ATag = 141 then ALabel := lblSMS141;
  if Assigned(ALabel) then
  begin
		ALabel.Caption := IntToStr(GetSmsMemoLength(AnsiString(AMemo.Text))) + ' Byte';
  end;

	AMemo.SelStart := length(AMemo.Text);
  AMemo.SetFocus;
end;

procedure TFrm_JON020.mmoSMS140Click(Sender: TObject);
begin
	btn1.Tag := 140;
	btn2.Tag := 140;
	btn3.Tag := 140;
	btn4.Tag := 140;
end;

procedure TFrm_JON020.mmoSMS140KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxMemo(sender).Text := Enc_Control(TcxMemo(sender).Text);
end;

procedure TFrm_JON020.mmoSMS140PropertiesChange(Sender: TObject);
var
  Len: Integer;
  Str: string;
  AMemo: TcxMemo;
begin
  AMemo := TcxMemo(Sender);

  Str := AMemo.Text;
  Len := GetSmsMemoLength(AnsiString(Str));

  lblSMS140.Caption := IntToStr(Len) + ' Byte';

  if ( Trim(gOShotUserID) <> '' ) then
  begin
    if m_ImgSize140 <> 0 then
    begin
      cxRBDM.Checked := True;
      LblDSMS.Caption := 'MMS';
      btn11.Enabled := False;
      if Len > 2000 then
      begin
        GMessagebox('1건문자의 최대 문자범위가 넘었습니다.', CDMSE);
        mmoSMS140.Text := Copy(AnsiString(mmoSMS140.Text), 1, 2000);
      end;
    end else
    begin
    	if Len <= 90 then
      begin
        cxRBDS.Checked := True;
        LblDSMS.Caption := '단문';
        btn11.Enabled :=  ( Not cxRBDM.Checked ) And ( Not cxRBSM.Checked ) And (GT_USERIF.LV <> '10');
      end else
    	if ( Len > 90 ) And ( Len <= 2000 ) then
    	begin
        cxRBDJ.Checked := True;
        LblDSMS.Caption := '장문';
        btn11.Enabled :=  ( Not cxRBDM.Checked ) And ( Not cxRBSM.Checked ) And (GT_USERIF.LV <> '10');
      end else
      if Len > 2000 then
      begin
        GMessagebox('1건문자의 최대 문자범위가 넘었습니다.', CDMSE);
        mmoSMS140.Text := Copy(AnsiString(mmoSMS140.Text), 1, 2000);
        cxRBDJ.Checked := True;
        LblDSMS.Caption := '장문';
        btn11.Enabled :=  ( Not cxRBDM.Checked ) And ( Not cxRBSM.Checked ) And (GT_USERIF.LV <> '10');
      end;
    end;
  end else
  begin
  	if Len > 90 then
    begin
      GMessagebox('1건문자의 최대 문자범위가 넘었습니다.', CDMSE);
      mmoSMS140.Text := Copy(AnsiString(mmoSMS140.Text), 1, 90);
      cxRBDS.Checked := True;
      LblDSMS.Caption := '단문';
      btn11.Enabled :=  ( Not cxRBDM.Checked ) And ( Not cxRBSM.Checked ) And (GT_USERIF.LV <> '10');
    end;
  end;
end;

procedure TFrm_JON020.mmoSMS141Click(Sender: TObject);
begin
	btn1.Tag := 141;
	btn2.Tag := 141;
	btn3.Tag := 141;
	btn4.Tag := 141;
end;

procedure TFrm_JON020.mmoSMS141KeyPress(Sender: TObject; var Key: Char);
var
  Len: Integer;
  AMemo: TcxMemo;
begin
  try
    AMemo := TcxMemo(Sender);
    Len := GetSmsMemoLength(AnsiString(AMemo.Text));

    if Key = #3 then Exit;

    if ( Trim(gOShotUserID) <> '' ) then
    begin
      if Len >= 2000 then
      begin
  			Key := #0;
    		Exit;
      end;
    end else
    begin
      if Len >= 90 then
      begin
  			Key := #0;
	  		Exit;
      end;
    end;
  except
    on e : Exception do
    begin
      GMessagebox('SMS KeyPress Events Err: ' + e.Message , CDMSE);
    end;
  end;
end;

procedure TFrm_JON020.mmoSMS141PropertiesChange(Sender: TObject);
var
  Len: Integer;
  Str: string;
  AMemo: TcxMemo;
begin
  AMemo := TcxMemo(Sender);

  Str := AMemo.Text;
  Len := GetSmsMemoLength(AnsiString(Str));

  lblSMS141.Caption := IntToStr(Len) + ' Byte';

  if ( Trim(gOShotUserID) <> '' ) then
  begin
    if m_ImgSize141 <> 0 then
    begin
      cxRBSM.Checked := True;
      LblSSMS.Caption := 'MMS';
      btn11.Enabled := False;
      if Len > 2000 then
      begin
        GMessagebox('1건문자의 최대 문자범위가 넘었습니다.', CDMSE);
        mmoSMS141.Text := Copy(AnsiString(mmoSMS141.Text), 1, 2000);
      end;
    end else
    begin
    	if Len <= 90 then
      begin
        cxRBSS.Checked := True;
        LblSSMS.Caption := '단문';
        btn11.Enabled :=  ( Not cxRBDM.Checked ) And ( Not cxRBSM.Checked ) And (GT_USERIF.LV <> '10');
      end else
    	if ( Len > 90 ) And ( Len <= 2000 ) then
    	begin
        cxRBSJ.Checked := True;
        LblSSMS.Caption := '장문';
        btn11.Enabled :=  ( Not cxRBDM.Checked ) And ( Not cxRBSM.Checked ) And (GT_USERIF.LV <> '10');
      end else
      if Len > 2000 then
      begin
        GMessagebox('1건문자의 최대 문자범위가 넘었습니다.', CDMSE);
        mmoSMS141.Text := Copy(AnsiString(mmoSMS141.Text), 1, 2000);
        cxRBSJ.Checked := True;
        LblSSMS.Caption := '장문';
        btn11.Enabled :=  ( Not cxRBDM.Checked ) And ( Not cxRBSM.Checked ) And (GT_USERIF.LV <> '10');
      end;
    end;
  end else
  begin
  	if Len > 90 then
    begin
      GMessagebox('1건문자의 최대 문자범위가 넘었습니다.', CDMSE);
      mmoSMS141.Text := Copy(AnsiString(mmoSMS141.Text), 1, 90);
      cxRBSS.Checked := True;
      LblSSMS.Caption := '단문';
      btn11.Enabled :=  ( Not cxRBDM.Checked ) And ( Not cxRBSM.Checked ) And (GT_USERIF.LV <> '10');
    end;
  end;
end;

procedure TFrm_JON020.btnAgreeClick(Sender: TObject);
Var isOk : Boolean;
begin
	if Not func_EucKr_Check(mmoSMS140, 0) then Exit;
	if Not func_EucKr_Check(mmoSMS141, 0) then Exit;

	try
    // 동의 처리
    btnAgree.Enabled := False;

    if ( Trim(gOShotUserID) <> '' ) then
    begin
      if ( cxRBDS.Checked ) And ( gOShotSend ) then
      begin
        isOk := Proc_AutoCallSMSSendAllShot('Agree', '1');
      end else
      if cxRBDJ.Checked then
      begin
        isOk := Proc_AutoCallSMSSendAllShot('Agree', '2');
      end else
      if cxRBDM.Checked then
      begin
        isOk := Proc_AutoCallSMSSendAllShot('Agree', '3');
      end;
    end else
      isOk := True;

    Proc_AutoCallSMSSave('AUTOCALL', '1')
  except
    on e: exception do
    begin
      btnAgree.Enabled := True;
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON020.btnCloseClick(Sender: TObject);
begin
  bChkTime := False;
  TmrChkTag.Tag := 100;
  if GS_JON01_GROUPMOVE then MagneticWnd.RemoveWindow(Self.Handle);

  Close;
end;

procedure TFrm_JON020.BtnImageSClick(Sender: TObject);
var
  FH1 ,iCount : Integer;
begin
  if ( Trim(gOShotUserID) = '' ) then
  begin
    MessageDlg('OShot 회원 가입 후 MMS 사용 가능합니다.', mtWarning, [mbOK], 0);
    Exit;
  end;

  If OpenDialogImg.Execute then
  Begin
    FH1 :=  FileOpen(OpenDialogImg.Filename, fmShareDenyWrite);
    m_ImgSize141 := FileSeek(FH1,0,2);

    If m_ImgSize141 > 200000 then
    Begin
      MessageDlg('이미지파일 크기는 200kbyte를 넘을 수 없습니다.', mtWarning, [mbOK], 0);
      m_ImgSize141 := 0;
      Exit ;
    End;

    FileSeek(FH1,0,0);
    if FH1 <> -1 then
    begin
      iCount := FileRead(FH1,m_ImgBff141, Sizeof(m_ImgBff141));
      FileClose(FH1);
    end;
    imgSMMS.Picture.LoadFromFile(OpenDialogImg.FileName);
    cxRBSM.Checked := True;
    LblSSMS.Caption := 'MMS';
    btn11.Enabled := False;
    cxRBSMClick(cxRBSM);
  End;
end;

procedure TFrm_JON020.BtnImageDClick(Sender: TObject);
var
  FH1 ,iCount : Integer;
begin
  if ( Trim(gOShotUserID) = '' ) then
  begin
    MessageDlg('OShot 회원 가입 후 MMS 사용 가능합니다.', mtWarning, [mbOK], 0);
    Exit;
  end;

  If OpenDialogImg.Execute then
  Begin
    FH1 :=  FileOpen(OpenDialogImg.Filename, fmShareDenyWrite);
    m_ImgSize140 := FileSeek(FH1,0,2);

    If m_ImgSize140 > 200000 then
    Begin
      MessageDlg('이미지파일 크기는 200kbyte를 넘을 수 없습니다.', mtWarning, [mbOK], 0);
      m_ImgSize140 := 0;
      Exit ;
    End;

    FileSeek(FH1,0,0);
    if FH1 <> -1 then
    begin
      iCount := FileRead(FH1,m_ImgBff140, Sizeof(m_ImgBff140));
      FileClose(FH1);
    end;
    imgDMMS.Picture.LoadFromFile(OpenDialogImg.FileName);
    cxRBDM.Checked := True;
    LblDSMS.Caption := 'MMS';
    btn11.Enabled := False;
    cxRBDMClick(cxRBSM);
  End;
end;

procedure TFrm_JON020.BtnImageDelDClick(Sender: TObject);
var
  Len: Integer;
begin
  m_ImgSize140 := 0;
  ImgDMMS.Picture := Nil;

  Len := GetSmsMemoLength(AnsiString(mmoSMS140.Text));
	if Len <= 90 then
  begin
    cxRBDS.Checked := True;
    LblDSMS.Caption := '단문';
    btn11.Enabled :=  ( Not cxRBDM.Checked ) And ( Not cxRBSM.Checked ) And (GT_USERIF.LV <> '10');
  end else
	if ( Len > 90 ) And ( Len <= 2000 ) then
	begin
    cxRBDJ.Checked := True;
    LblDSMS.Caption := '장문';
    btn11.Enabled :=  ( Not cxRBDM.Checked ) And ( Not cxRBSM.Checked ) And (GT_USERIF.LV <> '10');
  end;
  cxRBDMClick(cxRBDM);
end;

procedure TFrm_JON020.BtnImageDelSClick(Sender: TObject);
var
  Len: Integer;
begin
  m_ImgSize141 := 0;
  ImgSMMS.Picture := Nil;

  Len := GetSmsMemoLength(AnsiString(mmoSMS141.Text));
	if Len <= 90 then
  begin
    cxRBSS.Checked := True;
    LblSSMS.Caption := '단문';
    btn11.Enabled :=  ( Not cxRBDM.Checked ) And ( Not cxRBSM.Checked ) And (GT_USERIF.LV <> '10');
  end else
	if ( Len > 90 ) And ( Len <= 2000 ) then
	begin
    cxRBSJ.Checked := True;
    LblSSMS.Caption := '장문';
    btn11.Enabled :=  ( Not cxRBDM.Checked ) And ( Not cxRBSM.Checked ) And (GT_USERIF.LV <> '10');
  end;
  cxRBSMClick(cxRBSM);
end;

procedure TFrm_JON020.btnRefuseClick(Sender: TObject);
begin
	if Not func_EucKr_Check(mmoSMS140, 0) then Exit;
	if Not func_EucKr_Check(mmoSMS141, 0) then Exit;

	// 거부 처리
  btnRefuse.Enabled := False;
  Proc_AutoCallSMSSave('AUTOCALL', '2');
end;

procedure TFrm_JON020.btnSmsClick(Sender: TObject);
Var isOK : Boolean;
begin
	if Not func_EucKr_Check(mmoSMS140, 0) then Exit;
	if Not func_EucKr_Check(mmoSMS141, 0) then Exit;

	// SMS 처리
  btnSms.Enabled := False;
  try
    if ( Trim(gOShotUserID) <> '' ) then
    begin
      if ( cxRBSS.Checked ) And ( gOShotSend ) then
      begin
        isOk := Proc_AutoCallSMSSendAllShot('Text', '1');
      end else
      if cxRBSJ.Checked then
      begin
        isOk := Proc_AutoCallSMSSendAllShot('Text', '2');
      end else
      if cxRBSM.Checked then
      begin
        isOk := Proc_AutoCallSMSSendAllShot('Text', '3');
      end;
    end else
      isOK := True;

    Proc_AutoCallSMSSave('AUTOCALL', '3');
  except
    on e: exception do
    begin
      btnSms.Enabled := True;
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON020.cxRBDMClick(Sender: TObject);
begin
  if cxRBDM.Checked then
  begin
    mmoSMS140.Top := 204;
    mmoSMS140.Height := 53;
  end else
  begin
    mmoSMS140.Top := 102;
    mmoSMS140.Height := 155;
  end;
end;

procedure TFrm_JON020.cxRBSMClick(Sender: TObject);
begin
  if cxRBSM.Checked then
  begin
    mmoSMS141.Top := 204;
    mmoSMS141.Height := 53;
  end else
  begin
    mmoSMS141.Top := 102;
    mmoSMS141.Height := 155;
  end;
end;

procedure TFrm_JON020.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

// 오토콜 저장 및 문자 저장
procedure TFrm_JON020.Proc_AutoCallSMSSave(sGubun, sSave : string);
var
  ls_TxLoad: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml, ls_Msg_Err: string;
  ErrCode: integer;
  xdom : msDomDocument;
  lst_Result: IXMLDomNodeList;
  sCuSeq : String;
begin
  SetDebugeWrite('Frm_JON020.Proc_AutoCallSMSSave');

  try
    ls_TxLoad := GTx_UnitXmlLoad('JON03032.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString',        GT_USERIF.ID,   [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',     VERSIONINFO,    [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',     'JON03032',     [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'actionString',        sGubun    ,     [rfReplaceAll]);  // 오토콜 AUTOCALL/SMS
    ls_TxLoad := StringReplace(ls_TxLoad, 'CuTelString',         Frm_Main.Frm_JON01N[Self.Tag].cxtCuTel.Text     , [rfReplaceAll]); // 고객번호   (상담원의 임의로 고객번호입력)
    ls_TxLoad := StringReplace(ls_TxLoad, 'KeyNumberString',     En_Coding(Frm_Main.Frm_JON01N[Self.Tag].locKNum), [rfReplaceAll]); // 대표번호   (상담원이 임의로 지사/대표번호 선택)
    ls_TxLoad := StringReplace(ls_TxLoad, 'HdNoString',          En_Coding(Frm_Main.Frm_JON01N[Self.Tag].locHDNO), [rfReplaceAll]); // 본사코드   (상담원이 임의로 지사/대표번호 선택)
    ls_TxLoad := StringReplace(ls_TxLoad, 'BrNoString',          En_Coding(Frm_Main.Frm_JON01N[Self.Tag].locBRNO), [rfReplaceAll]); // 지사코드   (상담원이 임의로 지사/대표번호 선택)
    ls_TxLoad := StringReplace(ls_TxLoad, 'OutBoundString',      En_Coding(sSave), [rfReplaceAll]); // 0없음, 1동의, 2거부 , 3문자
    ls_TxLoad := StringReplace(ls_TxLoad, 'CuSeqString',         '', [rfReplaceAll]);

    if sGubun = 'AUTOCALL' then
    begin
      if ( sSave = '1' ) then   // 동의
      begin
        if ( cxRBDS.Checked ) And ( Not gOShotSend ) then
          ls_TxLoad := StringReplace(ls_TxLoad, 'TypeString',      'Callmaner', [rfReplaceAll])   // 발송망 { Callmaner | Oshot }
        else
          ls_TxLoad := StringReplace(ls_TxLoad, 'TypeString',      'Oshot', [rfReplaceAll]);   // 발송망 { Callmaner | Oshot }

        ls_TxLoad := StringReplace(ls_TxLoad, 'Msg1String',          mmoSMS140.Text, [rfReplaceAll]) // 메시지 1
      end else
      if ( sSave = '3' )then   // 문자
      begin
        if ( cxRBSS.Checked ) And ( Not gOShotSend ) then
          ls_TxLoad := StringReplace(ls_TxLoad, 'TypeString',      'Callmaner', [rfReplaceAll])   // 발송망 { Callmaner | Oshot }
        else
          ls_TxLoad := StringReplace(ls_TxLoad, 'TypeString',      'Oshot', [rfReplaceAll]);   // 발송망 { Callmaner | Oshot }

        ls_TxLoad := StringReplace(ls_TxLoad, 'Msg1String',          mmoSMS141.Text, [rfReplaceAll]) // 메시지 1
      end else
      begin
        ls_TxLoad := StringReplace(ls_TxLoad, 'Msg1String',          '', [rfReplaceAll]);   // 메시지1
      end;

      ls_TxLoad := StringReplace(ls_TxLoad, 'Msg2String',          '', [rfReplaceAll]);   // 메시지2
    end else
    if sGubun = 'SMS' then
    begin
      ls_TxLoad := StringReplace(ls_TxLoad, 'Msg1String',          mmoSMS140.Text, [rfReplaceAll]); // 동의 메시지
      ls_TxLoad := StringReplace(ls_TxLoad, 'Msg2String',          mmoSMS141.Text, [rfReplaceAll]); // 문자 메시지
    end;

    Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;
    try
      if dm.SendSockAccept(ls_TxLoad, slRcvList, ErrCode, False) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          xdom := ComsDomDocument.Create;
          try
            if not xdom.loadXML(ls_rxxml) then Exit;

            ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' = ls_Msg_Err) then
            begin
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data');
              sCuSeq := lst_Result.item[0].attributes.getNamedItem('CuSeq').Text;

              if sCuSeq <> '' then
              begin
                Frm_Main.Frm_JON01N[Self.Tag].lcsCu_seq := sCuSeq;
              end;

              if sSave = '0' then  // 0.저장
              begin
                GMessagebox('저장 완료', CDMSI);
              end else
              if sSave = '1' then  // 1.동의
              begin
                PnlMain.Tag := 1;
                Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text := '[아웃바운드고객]' + Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text;
                Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text := '[동의]' + Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text;
                Frm_Main.Frm_JON01N[Self.Tag].btnCmdQuestion.Click;
              end else
              if ( sSave = '2' ) Or ( sSave = '3' )  then  // 2.거부, 3.문자
              begin
                if ( Trim(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text) <> '' ) Or
                   ( Trim(Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text) <> '' ) then
                begin
                  if Application.MessageBox('해당 접수창의 정보를 "문의" 등록 하시겠습니까?', 'CDMS', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
                  begin
                    PnlMain.Tag := 1;
                    Frm_Main.Frm_JON01N[Self.Tag].btnCmdQuestion.Click;
                  end else
                  begin
                    Frm_Main.Frm_JON01N[Self.Tag].btnCmdExit.Description := 'T';
                    Frm_Main.Frm_JON01N[Self.Tag].btnCmdExit.Click;
                  end;
                end else
                begin
                  Frm_Main.Frm_JON01N[Self.Tag].btnCmdExit.Description := 'T';
                  Frm_Main.Frm_JON01N[Self.Tag].btnCmdExit.Click;
                end;
              end;
            end else
            begin
              GMessagebox('오토콜 자료 저장 중 에러가 발생 하였습니다.' + #10#13 + ls_Msg_Err, CDMSE);
            end;
          finally
            xDom := Nil;
          end;
        end;
      end;
    finally
      FreeAndNil(slRcvList);
      Screen.Cursor := crDefault;
    end;
  except
    on e: exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON020.TmrChkTagTimer(Sender: TObject);
begin
  TmrChkTag.Enabled := False;

  if Not Self.Showing then Exit;

  if bChkTime then
  begin
    if GS_JON020_LASTACTIVE <> Self.Tag then
    begin
      BringToFront;
      GS_JON020_LASTACTIVE := Self.Tag;
    end;

    try
      if ( Self.Tag <> TmrChkTag.Tag ) And ( bChkTime )  then
      begin
        if Frm_Main.JON01MNG[Self.Tag].Dock then
        begin
  //        if Assigned(MagneticWnd) then
  //        begin
  //          if TmrChkTag.Tag < 21 then
  //            MagneticWnd.RemoveWindow(Frm_JON00.Handle);
  //          MagneticWnd.RemoveWindow(Self.Handle);
  //        end;
  //
  //        MagneticWnd.AddWindow(Frm_JON00.Handle, 0, MagneticWndProc);
  //        MagneticWndProc := Nil;
  //        TmrChkTag.Tag := Self.Tag;
  //
  //        if not assigned(MagneticWndProc) then
  //          if Assigned(MagneticWnd) then
  //          begin
  //             MagneticWnd.AddWindow(Self.Handle, Frm_JON00.Handle, MagneticWndProc);
  //          end;
        end else
        begin
          if Assigned(MagneticWnd) then
          begin
//            if TmrChkTag.Tag < 21 then
//              MagneticWnd.RemoveWindow(Frm_Main.Frm_JON01N[TmrChkTag.Tag].Handle);
            MagneticWnd.RemoveWindow(Self.Handle);
          end;

          MagneticWnd.AddWindow(Frm_Main.Frm_JON01N[Self.Tag].Handle, 0, MagneticWndProc);
          MagneticWndProc := Nil;
          TmrChkTag.Tag := Self.Tag;

          if not assigned(MagneticWndProc) then
            if Assigned(MagneticWnd) then
            begin
              MagneticWnd.AddWindow(Self.Handle, Frm_Main.Frm_JON01N[Self.Tag].Handle, MagneticWndProc);
            end;
        end;
      end;

    except on E: Exception do
      Assert(False, E.Message);
    end;
  end;

  TmrChkTag.Enabled := True;
end;

// 오토콜 문자 올샷 전송
function TFrm_JON020.Proc_AutoCallSMSSendAllShot(sGubun, sSend : string): Boolean;
Var sRe_Num, Tmp2, sMemoTmp, sSendNum, sFileNm, sCuTel : AnsiString;
    sResult, sError, sError_Msg : String;
begin
  try
    Result := False;
    // 전송 전 미리 소켓 연결을 해 놓는다.
    if Not fn_Re_Login then Exit;
    Cash_ReFlash;

    if sSend = '1' then
    begin
  		Tmp2 := AnsiRPAD(gOShotUserID, 20, ' ') + AnsiRPAD(gOShotUserPass, 20, ' ') + AnsiRPAD('', 20, '0') + AnsiRPAD('', 32, '0');
      Trans_XML(Tmp2, ComLogIn2, Dm.IdTCPCtOShotSMS);
      Tmp2 := '';
    end;

    If UserKind = '1' Then  // 후불제가 아니면
    begin
      if sSend = '1' then //  SMS
      begin
        if StrToFloat(UserDan) > StrToFloat(gOShotCharge) then
        begin
          GMessagebox('오샷 현재 잔액이 부족합니다.', CDMSE);
          Exit;
        end;
      end else
      if sSend = '2' then //  LMS
      begin
        if StrToFloat(UserDanLong) > StrToFloat(gOShotCharge) then
        begin
          GMessagebox('오샷 현재 잔액이 부족합니다.', CDMSE);
          Exit;
        end;
      end else
      if sSend = '3' then //  MMS
      begin
        if StrToFloat(UserDanMMS) > StrToFloat(gOShotCharge) then
        begin
          GMessagebox('오샷 현재 잔액이 부족합니다.', CDMSE);
          Exit;
        end;
      end;
    end;


    if sGubun = 'Agree' then
    begin
      if imgAgree.Hint = '0' then    // '0' 접수대표번호
      begin
        sSendNum := StringReplace(Frm_Main.Frm_JON01N[Self.Tag].Proc_MainKeyNumberSearch, '-', '', [rfReplaceAll]);
      end else
         sSendNum := StringReplace(imgAgree.Hint, '-', '', [rfReplaceAll]);
    end else
    if sGubun = 'Text'  then
    begin
      if imgText.Hint = '0' then    // '0' 접수대표번호
      begin
        sSendNum := StringReplace(Frm_Main.Frm_JON01N[Self.Tag].Proc_MainKeyNumberSearch, '-', '', [rfReplaceAll]);
      end else
        sSendNum := StringReplace(imgText.Hint, '-', '', [rfReplaceAll]);
    end;

    sRe_Num := AnsiRPAD(sSendNum, 12, ' ');  // 발신번호

  	sMemoTmp := '';
  	if sGubun = 'Agree' then sMemoTmp := mmoSMS140.Text else
    if sGubun = 'Text'  then sMemoTmp := mmoSMS141.Text;

    if Pos('%고객명%'  , sMemoTmp) > 0 then
      sMemoTmp := StringReplace(sMemoTmp, '%고객명%'  , Frm_Main.Frm_JON01N[Self.Tag].edtCuName.Text, [rfReplaceAll]);
    if Pos('%전화번호%', sMemoTmp) > 0 then
      sMemoTmp := StringReplace(sMemoTmp, '%전화번호%', Frm_Main.Frm_JON01N[Self.Tag].cxtCuTel.Text, [rfReplaceAll]);
    if Pos('%마일%'    , sMemoTmp) > 0 then
      sMemoTmp := StringReplace(sMemoTmp, '%마일%'    , Frm_Main.Frm_JON01N[Self.Tag].lblCuMile.Caption, [rfReplaceAll]);

    if Pos('%대표%'    , sMemoTmp) > 0 then
      sMemoTmp := StringReplace(sMemoTmp, '%대표%'    , sRe_Num, [rfReplaceAll]);

    if ( sSend = '1' ) then
    begin
      sCuTel := Frm_Main.Frm_JON01N[Self.Tag].cxtCuTel.Text;

      Tmp2 := AnsiRPAD(IntToStr(1), 4, ' ')                                    // 전체요청건수
            + AnsiRPAD(FormatDateTime('YYYYMMDDHHMMSS', Now), 20, ' ')         // Group ID     sDate추가 2012.05.30 LYB
            + AnsiRPAD(IntToStr(1), 20, ' ')                                   // 메시지 Key값
            + AnsiRPAD(sRe_Num, 12, ' ')                                       // 보내는 사람
            + AnsiRPAD(sCuTel , 12, ' ')                                       // 받는 사람
            + AnsiRPAD('', 20 , ' ')                                           // 예약시간
            + AnsiRPAD('', 20 , ' ')                                           // 발송제한시간
            + AnsiRPAD(Copy(sMemoTmp, 1, 100), 100, ' ')                       // 메시지
            + AnsiRPAD('', 80 , ' ');                                           // 콜백 URL

      sResult := Trans_XML(Tmp2, ComReserve, Dm.IdTCPCtOShotSMS);
    end else
    if ( sSend = '2' ) Or ( sSend = '3' ) then   // LMS, MMS
    begin
      Tmp2 := AnsiRPAD(IntToStr(1), 4, ' ');                                  // 전체요청건수
      if sSend = '3' then  // MMS
      begin
        if sGubun = 'Agree' then
        begin
          Move(m_ImgBff140[0], m_ImageBuffer[0], m_ImgSize140);
          m_Imagesize := m_ImgSize140;
          sResult := Trans_XML('   ', ComImageSend, DM.IdTCPCtOShotMMS);
          sError := Trim(Copy(sResult, 21, 5));
          If sError = '00000' Then
          begin
            sFileNm := Trim(Copy(sResult, 77, 128));
          end;
        end else
        if sGubun = 'Text' then
        begin
          Move(m_ImgBff141[0], m_ImageBuffer[0], m_ImgSize141);
          m_Imagesize := m_ImgSize141;
          sResult := Trans_XML('   ', ComImageSend, DM.IdTCPCtOShotMMS);
          sError := Trim(Copy(sResult, 21, 5));
          If sError = '00000' Then
          begin
            sFileNm := Trim(Copy(sResult, 77, 128));
          end;
        end;

        Tmp2 := Tmp2 + AnsiRPAD(sFileNm, 128, ' ') +
                       AnsiRPAD('', 128, ' ') +
                       AnsiRPAD('', 128, ' ') +
                       AnsiRPAD('', 128, ' ')
      end else
        Tmp2 := Tmp2 + AnsiRPAD('', 128, ' ') +
                       AnsiRPAD('', 128, ' ') +
                       AnsiRPAD('', 128, ' ') +
                       AnsiRPAD('', 128, ' ');

      sCuTel := Frm_Main.Frm_JON01N[Self.Tag].cxtCuTel.Text;

      Tmp2 := Tmp2
            + AnsiRPAD(FormatDateTime('YYYYMMDDHHMMSS', Now), 20, ' ')         // Group ID     sDate추가 2012.05.30 LYB
            + AnsiRPAD(IntToStr(1), 20, ' ')                                   // 메시지 Key값
            + AnsiRPAD(sRe_Num, 12, ' ')                                       // 보내는 사람
            + AnsiRPAD(sCuTel , 12, ' ')                                       // 받는 사람
            + AnsiRPAD('', 20 , ' ')                                           // 예약시간
            + AnsiRPAD('', 20 , ' ')                                           // 발송제한시간
            + AnsiRPAD('', 120, ' ')                                           // 제목
            + AnsiRPAD(Copy(sMemoTmp, 1, 2000), 2000, ' ');                    // 메시지

      sResult := Trans_XML(Tmp2, ComMMSSend, Dm.IdTCPCtOShotMMS);
    end;
    sError := Trim(Copy(sResult, 21, 5));
    sError_Msg := Trim(Copy(sResult,26, 50));

    If sError <> '00000' Then
    Begin
      GMessagebox('메시지 전송 실패입니다.' + #13#10
                + 'ErrorCode : ' + sError + #13#10 + 'ErrorMsg : ' + sError_Msg, CDMSW);
    End;
    Result := True;
  except
    on e: exception do
    begin
      Result := False;
      Log('Proc_AutoCallSMSSendAllShot Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Proc_AutoCallSMSSendAllShot Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON020.Cash_ReFlash;
begin
  If gOShotCharge = '' Then gOShotCharge := '0';

  If UserKind = '1' Then
  begin
     cxLblCash.Caption := FormatFloat('#,##0', StrToFloat(gOShotCharge)) + '원';
  end Else If UserKind ='2' Then
  begin
     cxLblCash.Caption := '후불제입니다.';
  end;
  cxLblSCash.Caption := UserDan + '원/건당';
  cxLblLCash.Caption := UserDanLong + '원/건당';
  cxLblMCash.Caption := UserDanMMS + '원/건당';

  cxGrpOShot.Visible := True;
end;

procedure TFrm_JON020.pGetLoadBuffer(sFileName, sGubun : String );
var
  FH1 ,iCount : Integer;
begin
  if sGubun = '140' then
  begin
    FH1 :=  FileOpen(sFileName, fmShareDenyWrite);
    m_ImgSize140 := FileSeek(FH1,0,2);

    If m_ImgSize140 > 200000 then
    Begin
      MessageDlg('이미지파일 크기는 200kbyte를 넘을 수 없습니다.', mtWarning, [mbOK], 0);
      m_ImgSize140 := 0;
      Exit ;
    End;

    FileSeek(FH1,0,0);
    if FH1 <> -1 then
    begin
      iCount := FileRead(FH1,m_ImgBff140, Sizeof(m_ImgBff140));
      FileClose(FH1);
    end;
  end else
  if sGubun = '141' then
  begin
    FH1 :=  FileOpen(sFileName, fmShareDenyWrite);
    m_ImgSize141 := FileSeek(FH1,0,2);

    If m_ImgSize141 > 200000 then
    Begin
      MessageDlg('이미지파일 크기는 200kbyte를 넘을 수 없습니다.', mtWarning, [mbOK], 0);
      m_ImgSize141 := 0;
      Exit ;
    End;

    FileSeek(FH1,0,0);
    if FH1 <> -1 then
    begin
      iCount := FileRead(FH1,m_ImgBff141, Sizeof(m_ImgBff141));
      FileClose(FH1);
    end;
  end;
end;

function TFrm_JON020.fGetMMSImage( sGubun : String ) : Boolean;
var
  ls_TxLoad: string;
  slRcvList: TStringList;
  CustTel, rv_str, ls_rxxml, ls_Msg_Err: string;
  ErrCode: integer;
	i, j : Integer;
	xdom : msDomDocument;
	lst_Result: IXMLDomNodeList;

  sBase64Img : String;
  bBase64Img : TIdBytes;
  sResult, sError : String;

  STmp : TStringList;

	sCuSeq : String;
begin
  Result := False;
	try
		ls_TxLoad := GTx_UnitXmlLoad('COM00020.XML');
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString',        GT_USERIF.ID,   [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',     VERSIONINFO,    [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',     'COM00020',     [rfReplaceAll]);

		ls_TxLoad := StringReplace(ls_TxLoad, 'TypeString',          En_Coding('Select'), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'BrNoString',          En_Coding(GT_SEL_BRNO.BRNO), [rfReplaceAll]); // 지사코드   (상담원이 임의로 지사/대표번호 선택)

		if sGubun = '140' then
    begin
  		ls_TxLoad := StringReplace(ls_TxLoad, 'FilenameString',    En_Coding(imgDMMS.Hint), [rfReplaceAll]);
    end else
		if sGubun = '141' then
    begin
  		ls_TxLoad := StringReplace(ls_TxLoad, 'FilenameString',    En_Coding(imgSMMS.Hint), [rfReplaceAll]);
    end;

		Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;
		try
			if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False) then
			begin
        rv_str := slRcvList[0];
				if rv_str <> '' then
				begin
          ls_rxxml := rv_str;
					xdom := ComsDomDocument.Create;
					try
						if not xdom.loadXML(ls_rxxml) then Exit;

            ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
						if ('0000' = ls_Msg_Err) then
            begin
              STmp := TStringList.Create;
              try
  							lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data');
                // TSTringList에 넣어야지 #13#10이 발생해서 Chr(13)+Chr(10) 치환..일반 변수는 안되어서 이렇게 처리
    						STmp.Text := lst_Result.item[0].Text;
                sBase64Img := StringReplace(STmp.Text, Chr(13)+Chr(10), '', [rfReplaceAll]);
                if Trim(sBase64Img) <> '' then
                begin
                  bBase64Img := Base64DecodeBytes(sBase64Img);
                  if not DirectoryExists(OSHOTDRIVE) then ForceDirectories(OSHOTDRIVE);

                  if sGubun = '140' then
                  begin
                    SaveBytesToFile(bBase64Img,  OSHOTDRIVE+imgDMMS.Hint);
                    pGetLoadBuffer(OSHOTDRIVE+imgDMMS.Hint, '140');
                  end else
                  if sGubun = '141' then
                  begin
                    SaveBytesToFile(bBase64Img,  OSHOTDRIVE+imgSMMS.Hint);
                    pGetLoadBuffer(OSHOTDRIVE+imgSMMS.Hint, '141');
                  end;
                end;
              finally
                STmp.Free;
              end;
              Result := True;
						end else
						begin
							GMessagebox('오토콜 MMS이미지 조회 중 에러가 발생 하였습니다.' + #10#13 + ls_Msg_Err, CDMSE);
            end;
          finally
            xDom := Nil;
          end;
        end;
      end;
    finally
      FreeAndNil(slRcvList);
      Screen.Cursor := crDefault;
    end;

  except
    on e: exception do
    begin
      Assert(False, E.Message);
    end;
	end;
end;

end.

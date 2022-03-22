unit xe_JON011;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, IniFiles,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxGroupBox,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMemo, Vcl.ExtCtrls, cxLabel, cxCheckBox, Magnetic,
  dxSkinsCore, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_JON011 = class(TForm)
    PnlMain: TPanel;
    pnlTitle: TPanel;
    cxButton1: TcxButton;
    btnClose: TcxButton;
    grpSetCMemo: TcxGroupBox;
    grpSetWMemo: TcxGroupBox;
    meoCuCCMemoS: TcxMemo;
    mmoCbMemoS: TcxMemo;
    meoCuWorMemoS: TcxMemo;
    cxChkAuMemoDp: TcxCheckBox;
    TmrChkTag: TTimer;
    cxLblActive: TLabel;
    grpSetSMemo: TcxGroupBox;
    edt_CardMemo: TcxMemo;
    lb_CuctName: TcxLabel;
    chkViewLevel: TcxCheckBox;
    cxBtnFixPos: TcxButton;
    btnBBigo: TcxButton;
    btnWBigo: TcxButton;
    btnSBigo: TcxButton;
    btnCBigo: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure meoCuCCMemoSPropertiesChange(Sender: TObject);
    procedure mmoCbMemoSPropertiesChange(Sender: TObject);
    procedure meoCuWorMemoSPropertiesChange(Sender: TObject);
    procedure cxChkAuMemoDpClick(Sender: TObject);
    procedure TmrChkTagTimer(Sender: TObject);
    procedure edt_CardMemoPropertiesChange(Sender: TObject);
    procedure chkViewLevelClick(Sender: TObject);
    procedure cxBtnFixPosClick(Sender: TObject);
    procedure btnCBigoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    bChkTime : Boolean;

    gi011Top, gi011Left : Integer;

    procedure WMEnterSizeMove(var Msg: TMessage); message WM_ENTERSIZEMOVE;
    procedure WMSizing(var Msg: TMessage); message WM_SIZING;
    procedure WMMoving(var Msg: TMessage); message WM_MOVING;
    procedure WMExitSizeMove(var Msg: TMessage); message WM_EXITSIZEMOVE;
    procedure WMShowHideWindow(var Msg: TMessage); message WM_WINDOWPOSCHANGED;
    procedure WMSysCommand(var Msg: TMessage); message WM_SYSCOMMAND;
    procedure WMCommand(var Msg: TMessage); message WM_COMMAND;
  end;

var
  Frm_JON011: TFrm_JON011;

implementation

{$R *.dfm}

uses xe_Func, xe_Msg, Main, xe_GNL, xe_JON00;

//---------------------- Custom Message Handling procedures ----------------------
// These procedures shold be placed per every forms which we want to give magnetic
//  effect.

procedure TFrm_JON011.WMEnterSizeMove(var Msg: TMessage);
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

procedure TFrm_JON011.WMSizing(var Msg: TMessage);
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

procedure TFrm_JON011.WMMoving(var Msg: TMessage);
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

procedure TFrm_JON011.WMExitSizeMove(var Msg: TMessage);
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

  inherited;

  if Assigned(MagneticWndProc) then
     MagneticWndProc(Self.Handle, WM_EXITSIZEMOVE, lGlue, Msg, dummyHandled);
end;

procedure TFrm_JON011.WMShowHideWindow(var Msg: TMessage);
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

procedure TFrm_JON011.WMSysCommand(var Msg: TMessage);
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

procedure TFrm_JON011.WMCommand(var Msg: TMessage);
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


procedure TFrm_JON011.chkViewLevelClick(Sender: TObject);
begin
  if chkViewLevel.Checked then Frm_Main.Frm_JON01N[Self.Tag].chkViewLevel.Checked := True
                          else Frm_Main.Frm_JON01N[Self.Tag].chkViewLevel.Checked := False;
end;

procedure TFrm_JON011.cxBtnFixPosClick(Sender: TObject);
Var iLeft, iTop, iValue : Integer;
begin
  try
    if Assigned(Frm_Main.Frm_JON01N[Self.Tag]) And (GB_JON_FIXEDPIN) And ( cxBtnFixPos.Down ) then
    begin
      iLeft := (Self.Left + Self.Width) - Frm_Main.Frm_JON01N[Self.Tag].Left;
      iTop  := (Self.Top) - (Frm_Main.Frm_JON01N[Self.Tag].Top + Frm_Main.Frm_JON01N[Self.Tag].Height);
      if ( iLeft <= 2 ) And ( iLeft >= -2 ) then
      begin
        iValue := Self.Top - Frm_Main.Frm_JON01N[Self.Tag].Top;
        GS_EnvFile.WriteInteger('AcceptWin', 'Jon011Top' , iValue);
        GS_EnvFile.WriteInteger('AcceptWin', 'Jon011Left', 0);
        GS_EnvFile.WriteBool('AcceptWin', 'Jon011Pos' , True);    // True : Left
      end else
      if ( iTop <= 2 ) And ( iTop >= -2 ) then
      begin
        iValue := Self.Left - Frm_Main.Frm_JON01N[Self.Tag].Left;
        GS_EnvFile.WriteInteger('AcceptWin', 'Jon011Top' , 0);
        GS_EnvFile.WriteInteger('AcceptWin', 'Jon011Left', iValue);
        GS_EnvFile.WriteBool('AcceptWin', 'Jon011Pos' , False);  // False : Top;
      end else
      begin
        GMessagebox('접수창과 붙어있을경우에만 고정옵션을 사용 할수 있습니다', CDMSI);
        cxBtnFixPos.Down := False;
        cxBtnFixPos.LookAndFeel.SkinName := 'Sharp';
        Exit;
      end;
    end else
    begin
      gi011Top  := Self.Top;
      gi011Left := Self.Left;
      GS_EnvFile.WriteInteger('WinPos', 'Jon011Left', gi011Left);
      GS_EnvFile.WriteInteger('WinPos', 'Jon011Top' , gi011Top );
    end;
  except
  end;

	GS_JON011_POSFIX := cxBtnFixPos.Down;
	GS_EnvFile.WriteBool('AcceptWin', 'Jon011Fix', GS_JON011_POSFIX);

	if GS_JON011_POSFIX then cxBtnFixPos.LookAndFeel.SkinName := 'Office2010Silver'
                      else cxBtnFixPos.LookAndFeel.SkinName := 'Sharp';

	gi011Top  := Self.Top;
	gi011Left := Self.Left;
end;

procedure TFrm_JON011.cxChkAuMemoDpClick(Sender: TObject);
begin
  GS_AUTOMEMO_SHOW := TcxCheckBox(Sender).Checked;
  GS_EnvFile.WriteBool('AcceptMap', 'AutoMemoShow', GS_AUTOMEMO_SHOW);

end;

procedure TFrm_JON011.edt_CardMemoPropertiesChange(Sender: TObject);
begin
  Frm_Main.Frm_JON01N[Self.Tag].edt_CardMemo.Text := edt_CardMemo.Text;
end;

procedure TFrm_JON011.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON011.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_JON011.FormCreate(Sender: TObject);
var
  Save: LongInt; // 폼타이틀 제거용.
begin
  //====================================================
  // 폼 타이틀 제거..
  Save := GetWindowLong(Handle, gwl_Style);
  if (Save and ws_Caption) = ws_Caption then
  begin
    case BorderStyle of
      bsSingle, bsSizeable:
        SetWindowLong(Handle, gwl_Style, Save and (not (ws_Caption)) or ws_border);
    end;
    Height := Height - getSystemMetrics(sm_cyCaption);
    Refresh;
  end;

  cxBtnFixPos.Down := GS_JON011_POSFIX;
//  cxBtnFixPosClick(cxBtnFixPos);
end;

procedure TFrm_JON011.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON011.FormDestroy(Sender: TObject);
begin
  Frm_JON011 := Nil;
end;

procedure TFrm_JON011.FormResize(Sender: TObject);
var iReSize, iOrgSize, icxGrpCMemo, icxGrpWMemo, iTop : integer;
    EnvFile: TIniFile;
begin
  if Self.Visible then
  begin
  	iOrgSize := 361;
  	icxGrpCMemo := 157;
  	icxGrpWMemo := 157;
  	iTop := 220;

    meoCuCCMemoS.Visible := False;

    if Frm_Main.Frm_JON01N[Self.Tag].mmoCbMemo.Visible then
    begin
      meoCuCCMemoS.Visible := True;
      iReSize := ( grpSetCMemo.Width - 6 ) div 2;
      meoCuCCMemoS.width := iReSize;

      btnCBigo.Visible := True;
      btnCBigo.Left := ( meoCuCCMemoS.Left + meoCuCCMemoS.Width ) - btnCBigo.Width;

      mmoCbMemoS.Visible := True;
      mmoCbMemoS.width := iReSize;
      mmoCbMemoS.Left := meoCuCCMemoS.Left + meoCuCCMemoS.width + 1;
      btnBBigo.Visible := True;
      btnBBigo.Left := ( mmoCbMemoS.Left + mmoCbMemoS.Width ) - btnBBigo.Width;
    end else
    begin
      btnBBigo.Visible := False;

      meoCuCCMemoS.Visible := True;
      meoCuCCMemoS.Width := grpSetCMemo.Width - 6;

      btnCBigo.Visible := True;
      btnCBigo.Left := ( meoCuCCMemoS.Left + meoCuCCMemoS.Width ) - btnCBigo.Width;
    end;

  	iReSize := (Self.Height - ( iOrgSize + grpSetSMemo.Height + 30) ) div 2;
    grpSetCMemo.Height := icxGrpCMemo + iReSize;
   	grpSetWMemo.Height := icxGrpWMemo + iReSize;

  	grpSetWMemo.Top := iTop + iReSize;
    chkViewLevel.Top := grpSetWMemo.Top - 20;
    btnWBigo.Top := grpSetWMemo.Top;

    Application.ProcessMessages;

    EnvFile := TIniFile.Create(ENVPATHFILE);
    try
      EnvFile.WriteInteger('WinPos', 'Jon011Height',   Self.Height);
      EnvFile.WriteInteger('WinPos', 'Jon011Width' ,   Self.Width );
    finally
      EnvFile.Free;
    end;
  end;
end;

procedure TFrm_JON011.FormShow(Sender: TObject);
Var EnvFile: TIniFile;
begin
  fSetFont(Frm_JON011, GS_FONTNAME, True);
  fSetSkin(Frm_JON011, True);

  if GB_DARKMODE then
  begin
    meoCuCCMemoS.Style.TextColor := clYellow;
    mmoCbMemoS.Style.TextColor := clYellow;
    meoCuWorMemoS.Style.TextColor := clYellow;
    edt_CardMemo.Style.TextColor := clYellow;
  end;

  cxChkAuMemoDp.Checked := GS_AUTOMEMO_SHOW;

  EnvFile := TIniFile.Create(ENVPATHFILE);
  try
//    Self.Left   := EnvFile.ReadInteger('WinPos', 'Jon011Left'  , 0);
//    Self.Top    := EnvFile.ReadInteger('WinPos', 'Jon011Top'   , 0);
    Self.Height := EnvFile.ReadInteger('WinPos', 'Jon011Height', 391);
    Self.Width  := EnvFile.ReadInteger('WinPos', 'Jon011Width' , 356);
    if Self.Top < 0 then Self.Top := 0;
  finally
    EnvFile.Free;
  end;

  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);

  if GS_JON011_POSFIX then cxBtnFixPos.LookAndFeel.SkinName := 'Office2010Silver'
                      else cxBtnFixPos.LookAndFeel.SkinName := 'Sharp';

//  if GS_JON01_GROUPMOVE then TmrChkTag.Enabled := True;
	TmrChkTag.Enabled := True;   // 자석은 무조건하고 옵션에 따라 이동( 열린상태에서 자석 했을경우 바로 적용하기 위해);
end;

procedure TFrm_JON011.meoCuCCMemoSPropertiesChange(Sender: TObject);
begin
  Frm_Main.Frm_JON01N[Self.Tag].meoCuCCMemo.Text := meoCuCCMemoS.Text;
end;

procedure TFrm_JON011.meoCuWorMemoSPropertiesChange(Sender: TObject);
begin
  Frm_Main.Frm_JON01N[Self.Tag].meoCuWorMemo.Text := meoCuWorMemoS.Text;
end;

procedure TFrm_JON011.mmoCbMemoSPropertiesChange(Sender: TObject);
begin
  Frm_Main.Frm_JON01N[Self.Tag].mmoCbMemo.Text := mmoCbMemoS.Text;
end;

procedure TFrm_JON011.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON011.TmrChkTagTimer(Sender: TObject);
begin
  TmrChkTag.Enabled := False;

  if Not Self.Showing then Exit;

  if ( Self.Tag <> TmrChkTag.Tag ) And ( bChkTime )  then
  begin
    if Frm_Main.JON01MNG[Self.Tag].Dock then
    begin
      if Assigned(MagneticWnd) then
      begin
        MagneticWnd.RemoveWindow(Self.Handle);
      end;

      MagneticWnd.AddWindow(Frm_JON00.Handle, 0, MagneticWndProc);
//      MagneticWndProc := Nil;
      TmrChkTag.Tag := Self.Tag;

      if not assigned(MagneticWndProc) then
        if Assigned(MagneticWnd) then
        begin
           MagneticWnd.AddWindow(Self.Handle, Frm_JON00.Handle, MagneticWndProc);
        end;
    end else
    begin
      if Assigned(MagneticWnd) then
      begin
        MagneticWnd.RemoveWindow(Self.Handle);
      end;

      MagneticWnd.AddWindow(Frm_Main.Frm_JON01N[Self.Tag].Handle, 0, MagneticWndProc);
//      MagneticWndProc := Nil;
      TmrChkTag.Tag := Self.Tag;

      if not assigned(MagneticWndProc) then
        if Assigned(MagneticWnd) then
        begin
          MagneticWnd.AddWindow(Self.Handle, Frm_Main.Frm_JON01N[Self.Tag].Handle, MagneticWndProc);
        end;
    end;
  end;

  TmrChkTag.Enabled := True;
end;

procedure TFrm_JON011.btnCBigoClick(Sender: TObject);
Var sMemo : String;
begin
  if TcxButton(Sender).Tag = 0 then sMemo := meoCuCCMemoS.Text else
  if TcxButton(Sender).Tag = 1 then sMemo := mmoCbMemoS.Text else
  if TcxButton(Sender).Tag = 2 then sMemo := meoCuWorMemoS.Text else
  if TcxButton(Sender).Tag = 3 then sMemo := edt_CardMemo.Text;

  if Trim(sMemo) = '' then Exit;

  Frm_Main.Frm_JON01N[Self.Tag].meoBigo.Text := Trim(sMemo) + Frm_Main.Frm_JON01N[Self.Tag].meoBigo.Text;
end;

procedure TFrm_JON011.btnCloseClick(Sender: TObject);
begin
  if chkViewLevel.Checked then Frm_Main.Frm_JON01N[Self.Tag].chkViewLevel.Checked := True
                          else chkViewLevel.Checked := False;
  bChkTime := False;
  TmrChkTag.Tag := 100;
  if GS_JON01_GROUPMOVE then MagneticWnd.RemoveWindow(Self.Handle);

  Hide;
end;

end.


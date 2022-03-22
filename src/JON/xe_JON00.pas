unit xe_JON00;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, xe_gnl,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, IniFiles,
	cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxLabel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, xe_JON01N,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls,
  cxButtons, GradientLabel, ExtCtrls, cxPC, Magnetic, cxContainer,
	cxCheckBox, dxDockControl, dxDockPanel, AdvPanel, cxTextEdit, cxMemo,
  cxLookAndFeels, dxSkinsCore, dxSkinscxPCPainter,
  dxBarBuiltInMenu, dxSkinMetropolisDark, dxSkinOffice2007Silver, dxSkinOffice2010Silver, dxSkinSharp;

type
  TFrm_JON00 = class(TForm)
    pnlTitle: TPanel;
    pnlMain: TPanel;
    cxTabControl1: TcxTabControl;
    PnlAccept: TPanel;
    pnlForm: TPanel;
    cxLblActive: TLabel;
    BtnFix: TcxButton;
    btnGroup: TcxButton;
    btnNew: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
		procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxTabControl1Change(Sender: TObject);
    procedure BtnFixClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnGroupClick(Sender: TObject);
	private
		{ Private declarations }
	public
		{ Public declarations }
    Jon03Tag : Integer;
		// 접수창이 닫힐때 접수한 내용만 조회
    slTabTag : TStringList;
		procedure WMEnterSizeMove(var Msg: TMessage); message WM_ENTERSIZEMOVE;
		procedure WMSizing(var Msg: TMessage); message WM_SIZING;
		procedure WMMoving(var Msg: TMessage); message WM_MOVING;
		procedure WMExitSizeMove(var Msg: TMessage); message WM_EXITSIZEMOVE;
		procedure WMSysCommand(var Msg: TMessage); message WM_SYSCOMMAND;
		procedure WMCommand(var Msg: TMessage); message WM_COMMAND;

  end;

var
  Frm_JON00: TFrm_JON00;


implementation

{$R *.dfm}

uses main, xe_func, xe_JON03, xe_gnl2, xe_Msg, xe_JON30;

//---------------------- Custom Message Handling procedures ----------------------
// These procedures shold be placed per every forms which we want to give magnetic
//  effect.

procedure TFrm_JON00.WMEnterSizeMove(var Msg: TMessage);
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

procedure TFrm_JON00.WMSizing(var Msg: TMessage);
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

procedure TFrm_JON00.WMMoving(var Msg: TMessage);
var
   bHandled: Boolean;
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

  lGlue := True;
  if not Assigned(MagneticWndProc) then
     inherited
  else
  if MagneticWndProc(Self.Handle, WM_MOVING, lGlue, Msg, bHandled) then
    if not bHandled then
       inherited;
end;

procedure TFrm_JON00.WMExitSizeMove(var Msg: TMessage);
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

procedure TFrm_JON00.WMSysCommand(var Msg: TMessage);
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

procedure TFrm_JON00.WMCommand(var Msg: TMessage);
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

procedure TFrm_JON00.BtnFixClick(Sender: TObject);
var
  EnvFile: TIniFile;
  iLeft : Integer;
begin
  EnvFile := TIniFile.Create(ENVPATHFILE);
  try
    try
      if Screen.MonitorCount = 1 then iLeft := Self.Left else
      begin
        if Monitor.MonitorNum = 0 then
          iLeft := Self.Left
        else
        begin
          // 모니터2를 왼쪽으로 사용하는 사용자로 인해 마이너스값 처리
          if Self.Left <= 0 then
          begin
            iLeft := ( Screen.Monitors[1].Width + Self.Left );
          end else
            iLeft := Self.Left
        end;
			end;
    except
      iLeft := Self.Left
    end;

    EnvFile.WriteInteger('WinPos', 'Jon00Left', iLeft);
    EnvFile.WriteInteger('WinPos', 'Jon00Top' , Self.Top );

    Frm_Main.iJonLeft := iLeft;
    Frm_Main.iJonTop  := Self.Top;

    GMessagebox('설정 완료', CDMSI);
  finally
    EnvFile.Free;
  end;
end;

procedure TFrm_JON00.btnGroupClick(Sender: TObject);
Var i : Integer;
begin
  SetDebugeWrite('JON00.ChkGroupClick');
  GS_JON01_GROUPMOVE := TcxButton(Sender).SpeedButtonOptions.Down;
  GS_EnvFile.WriteBool('AcceptWin', 'GroupMove', GS_JON01_GROUPMOVE);

	for i := 0 to JON_MAX_CNT - 1 do
  begin
    if Frm_Main.JON01MNG[i].Use then
		begin
			if Frm_Main.Frm_JON01N[i].Tag <> Self.Tag then
      begin
        Frm_Main.Frm_JON01N[i].btnGroup.Down := GS_JON01_GROUPMOVE;
      end;
    end;
  end;
end;

procedure TFrm_JON00.btnNewClick(Sender: TObject);
Var iTag : Integer;
    sStr : String;
begin
  iTag := StrtoIntDef(Frm_JON00.slTabTag[cxTabControl1.TabIndex], 0);

  GS_JONSEL_BRNO := Frm_Main.Frm_JON01N[iTag].cboBranch.Text;
  try
  	Frm_Main.Proc_JoinFromView(Jon03Tag);
  finally
    GS_JONSEL_BRNO := '';
  end;
end;

procedure TFrm_JON00.cxTabControl1Change(Sender: TObject);
var
	iCnt, iTag, i : Integer;
  sStr: string;
begin
	try
    // TabSet 선택이 바뀔때,, 이벤트 처리..
    if cxTabControl1.TabIndex < 0 then Exit;
    PnlAccept.BringToFront;

		sStr := cxTabControl1.Tabs[cxTabControl1.TabIndex].Caption;

    iTag := 0;
    for iCnt := 0 to PnlMain.ControlCount - 1 do
    begin
      if PnlMain.Controls[iCnt] is TForm then
      begin
				if TForm(PnlMain.Controls[iCnt]).Caption = sStr then
				begin
					TForm(PnlMain.Controls[iCnt]).Left := 0;
					TForm(PnlMain.Controls[iCnt]).Top  := 0;
					TForm(PnlMain.Controls[iCnt]).BringToFront;

          for i := 0 to Length(Frm_Main.JON01MNG) - 1 do
          begin
            if ( sStr = Frm_Main.JON01MNG[i].Caption ) And
               ( slTabTag[cxTabControl1.TabIndex] = IntToStr(Frm_Main.JON01MNG[i].Tag)) And
               ( Frm_Main.JON01MNG[i].Use ) then
            begin
              iTag := Frm_Main.JON01MNG[i].Tag;
              Break;
            end;
          end;

          Frm_Main.Frm_JON01N[iTag].pFormActive;
          Frm_Main.Frm_JON01N[iTag].pJON011Show;
					Frm_Main.Frm_JON01N[iTag].Hide_Panel('meoStartArea',1);
					Frm_Main.Frm_JON01N[iTag].Hide_Panel('meoEndArea',1);
					Frm_Main.Frm_JON01N[iTag].Hide_Panel('meoViaArea',1);
					Frm_JON30.Grid_Init('meoStartArea',1);
					Frm_JON30.Grid_Init('meoStartArea',2);
					Frm_JON30.Grid_Init('meoStartArea',3);
					Frm_JON30.Grid_Init('meoStartArea',4);
					Frm_JON30.Grid_Init('meoEndArea',1);
					Frm_JON30.Grid_Init('meoEndArea',2);
					Frm_JON30.Grid_Init('meoEndArea',3);
					Frm_JON30.Grid_Init('meoEndArea',4);
					Frm_JON30.Grid_Init('meoViaArea',1);
					Frm_JON30.Grid_Init('meoViaArea',2);
					Frm_JON30.Grid_Init('meoViaArea',3);
					Frm_JON30.Grid_Init('meoViaArea',4);

					Break;
				end;
			end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON00.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON00.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_JON00.FormShow(Sender: TObject);
Var i : Integer;
begin
  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);

  if ( Assigned(MagneticWnd) ) And ( GS_JON01_GROUPMOVE )  then
  begin
    // Snapweite aktualisieren
     MagneticWnd.SnapWidth := 15;
    //frmMain als Parent Form zum andocken zuweisen
     MagneticWnd.AddWindow(Self.Handle, 0, MagneticWndProc);
  end;

  Self.Width := 593;
end;

procedure TFrm_JON00.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON00.FormCreate(Sender: TObject);
begin
  MagneticWnd := TMagnetic.Create;
  Self.Height := 590;
  slTabTag := TStringList.Create;
  cxTabControl1.Tabs.Clear;
end;

procedure TFrm_JON00.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON00.FormDestroy(Sender: TObject);
begin
  FreeAndNil(slTabTag);
  Frm_JON00 := Nil;
end;

procedure TFrm_JON00.FormHide(Sender: TObject);
begin
  if GS_JON01_GROUPMOVE then
    MagneticWnd.RemoveWindow(Self.Handle);
end;

procedure TFrm_JON00.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var i : integer;
	sTmp : String;
begin
	if ((ssAlt in Shift) and (Key = VK_F4)) then
	begin
		Key := 0;

		sTmp := cxTabControl1.Tabs[cxTabControl1.TabIndex].Caption ;
		for i := 0 to JON_MAX_CNT - 1 do
		begin
      if sTmp = Frm_Main.Frm_JON01N[i].Caption then
      begin
        Frm_Main.Frm_JON01N[i].btnCmdExit.Click;
        Break;
      end;
		end;
	end else
	if (Key = VK_ESCAPE) then
	begin
		sTmp := cxTabControl1.Tabs[cxTabControl1.TabIndex].Caption ;
		for i := 0 to JON_MAX_CNT - 1 do
		begin
			if sTmp = Frm_Main.Frm_JON01N[i].Caption then
			begin
				Frm_Main.Frm_JON01N[i].btnCmdExit.Click;
				Break;
			end;
		end;
	end;
end;

end.


unit xe_JON05;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, dxCore,
  Dialogs, Menus, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxControls,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxLabel, cxGridLevel, cxGridCustomTableView, Magnetic,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxContainer, IdBaseComponent,
  dxSkinsCore, dxSkinscxPCPainter, cxTextEdit, cxMemo, cxGroupBox, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark,
  dxSkinOffice2007Silver;

type
  TFrm_JON05 = class(TForm)
    Panel1: TPanel;
    pnlTitle: TPanel;
    cxLblActive: TLabel;
    btnShortSample: TcxButton;
    TmrChkTag: TTimer;
    btnSet: TcxButton;
    lblShortSample: TcxButton;
    procedure cxButton6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure TmrChkTagTimer(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure btnShortKey1Click(Sender: TObject);  // 마일리지
    procedure btnShortKey2Click(Sender: TObject);  // 요금문의
    procedure btnShortKey3Click(Sender: TObject);  // 카드결제
    procedure btnShortKey4Click(Sender: TObject);  // 출발지도
    procedure btnShortKey5Click(Sender: TObject);  // 도착지도
    procedure btnShortKey6Click(Sender: TObject);  // 경로보기
    procedure btnShortKey7Click(Sender: TObject);  // 출/로드뷰
    procedure btnShortKey8Click(Sender: TObject);  // 도/로드뷰
    procedure btnSetClick(Sender: TObject);
    procedure lblShortKeyClick(Sender: TObject);  // 상용구
  private
		btnShortKey : array[1..8] of TcxButton;
		lblShortKey : array[1..50] of TcxButton;
    gibtnCnt : Integer;
    procedure pShortKeyMenuAdd(ACaption: String; ATag: Integer);
    procedure pShortKeyLabelAdd(ACaption: String; ATag: Integer);
    { Private declarations }
  public
    { Public declarations }
    bChkTime : Boolean;
    procedure pMenuCreate;
    procedure WMEnterSizeMove(var Msg: TMessage); message WM_ENTERSIZEMOVE;
    procedure WMSizing(var Msg: TMessage); message WM_SIZING;
    procedure WMMoving(var Msg: TMessage); message WM_MOVING;
    procedure WMExitSizeMove(var Msg: TMessage); message WM_EXITSIZEMOVE;
    procedure WMShowHideWindow(var Msg: TMessage); message WM_WINDOWPOSCHANGED;
    procedure WMSysCommand(var Msg: TMessage); message WM_SYSCOMMAND;
    procedure WMCommand(var Msg: TMessage); message WM_COMMAND;
  end;

var
  Frm_JON05: TFrm_JON05;

implementation

{$R *.dfm}

uses xe_GNL, Main, xe_Func, xe_COM40, xe_JON00, xe_JON05_1, xe_gnl2;

//---------------------- Custom Message Handling procedures ----------------------
// These procedures shold be placed per every forms which we want to give magnetic
//  effect.

procedure TFrm_JON05.WMEnterSizeMove(var Msg: TMessage);
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

procedure TFrm_JON05.WMSizing(var Msg: TMessage);
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

procedure TFrm_JON05.WMMoving(var Msg: TMessage);
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

procedure TFrm_JON05.WMExitSizeMove(var Msg: TMessage);
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

procedure TFrm_JON05.WMShowHideWindow(var Msg: TMessage);
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

procedure TFrm_JON05.WMSysCommand(var Msg: TMessage);
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

procedure TFrm_JON05.WMCommand(var Msg: TMessage);
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

procedure TFrm_JON05.btnSetClick(Sender: TObject);
begin
  if ( not Assigned(Frm_JON05_1) ) Or ( Frm_JON05_1 = Nil ) then Frm_JON05_1 := TFrm_JON05_1.Create(nil);
  Frm_JON05_1.Show;
end;

procedure TFrm_JON05.cxButton6Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_JON05.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON05.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_JON05.FormCreate(Sender: TObject);
var
  Save: LongInt;
  i, idx : Integer; // 폼타이틀 제거용.
begin
  //====================================================
  // 폼 타이틀 제거..
  Save := GetWindowLong(Handle, gwl_Style);
  if (Save and ws_Caption) = ws_Caption then
  begin
    case BorderStyle of
      bsSingle, bsSizeable:
        SetWindowLong(Handle, gwl_Style, Save and (not (ws_Caption)) or
          ws_border);
    end;
    Height := Height - getSystemMetrics(sm_cyCaption);
    Refresh;
  end;

  pMenuCreate;
end;

procedure TFrm_JON05.pMenuCreate;
Var i, idx, idx1 : Integer;
begin
  for i := 1 to Length(btnShortKey) do
  begin
    if Assigned(btnShortKey[i]) then
    begin
      btnShortKey[i].Free;
      btnShortKey[i] := Nil;
    end;
  end;

  idx := 0;
  for i := 0 to GS_UserShortMenu.Count - 1 do
  begin
    if GS_UserShortMenu.ValueFromIndex[i] = '1' then
    begin
      Inc(idx);
      pShortKeyMenuAdd(GS_UserShortMenu.Names[i], idx);
    end;
  end;
  gibtnCnt := idx;

  for i := 1 to Length(lblShortKey) do
  begin
    if Assigned(lblShortKey[i]) then
    begin
      lblShortKey[i].Free;
      lblShortKey[i] := Nil;
    end;
  end;

  idx1 := 0;
  for i := 0 to GS_UserBigoList.Count - 1 do
  begin
    Inc(idx1);
    pShortKeyLabelAdd(GS_UserBigoList.Names[i], idx1);
    if idx1 = 50 then Break;    
  end;

  if (idx + idx1) = 0 then Self.Height := pnlTitle.Height + btnSet.Height + 1 else
  if ( idx1 = 0 )     then Self.Height := btnShortKey[idx].Top + btnShortKey[idx].Height + btnSet.Height + 20
                      else Self.Height := lblShortKey[idx1].Top + lblShortKey[idx1].Height + btnSet.Height + 20;
end;

procedure TFrm_JON05.pShortKeyMenuAdd( ACaption : String; ATag : Integer );
begin
  try
		btnShortKey[ATag] := TcxButton.Create(Self);
		btnShortKey[ATag].Name := 'btnShortKey' + IntToStr(ATag);
		btnShortKey[ATag].Parent := Panel1;
		btnShortKey[ATag].Height := btnShortSample.Height;
		btnShortKey[ATag].Width := btnShortSample.Width;
		btnShortKey[ATag].Tag := ATag;
		btnShortKey[ATag].Images := btnShortSample.Images;
		btnShortKey[ATag].Font  := btnShortSample.Font;
		btnShortKey[ATag].Style := btnShortSample.Style;
		btnShortKey[ATag].LookAndFeel := btnShortSample.LookAndFeel;
		btnShortKey[ATag].ImageIndex := btnShortSample.ImageIndex;
		if ATag In [1, 2] then
    begin
      btnShortKey[ATag].Top := 30;
      if ATag = 1 then btnShortKey[ATag].Left := 0 else
      if ATag = 2 then btnShortKey[ATag].Left := btnShortKey[1].Left + btnShortKey[1].Width + 2;
    end else
    begin
      if ATag Mod 2 = 1 then
      begin
        btnShortKey[ATag].Top := btnShortKey[ATag-2].Top + ( btnShortSample.Height + 2 );
        btnShortKey[ATag].Left := 0;
      end else
      if ATag Mod 2 = 0 then
      begin
        btnShortKey[ATag].Top := btnShortKey[ATag-2].Top + ( btnShortSample.Height + 2 );
        btnShortKey[ATag].Left := btnShortKey[2].Left;
      end;
    end;
		btnShortKey[ATag].Visible := True;
		btnShortKey[ATag].Caption := ACaption;
		btnShortKey[ATag].Cursor := btnShortSample.Cursor;
    if ACaption = '마일리지'   then btnShortKey[ATag].OnClick := btnShortKey1Click else
    if ACaption = '요금문의'   then btnShortKey[ATag].OnClick := btnShortKey2Click else
    if ACaption = '카드결제'   then btnShortKey[ATag].OnClick := btnShortKey3Click else
    if ACaption = '출발지도'   then btnShortKey[ATag].OnClick := btnShortKey4Click else
    if ACaption = '도착지도'   then btnShortKey[ATag].OnClick := btnShortKey5Click else
    if ACaption = '경로보기'   then btnShortKey[ATag].OnClick := btnShortKey6Click else
    if ACaption = '출/로드뷰'  then btnShortKey[ATag].OnClick := btnShortKey7Click else
    if ACaption = '도/로드뷰'  then btnShortKey[ATag].OnClick := btnShortKey8Click;
  Except
  end;
end;

procedure TFrm_JON05.pShortKeyLabelAdd( ACaption : String; ATag : Integer );
begin
  try
		lblShortKey[ATag] := TcxButton.Create(Self);
		lblShortKey[ATag].Name := 'lblShortKey' + IntToStr(ATag);
		lblShortKey[ATag].Hint := ACaption;
		lblShortKey[ATag].ShowHint := True;
		lblShortKey[ATag].Parent := Panel1;
		lblShortKey[ATag].Height := lblShortSample.Height;
		lblShortKey[ATag].Width := lblShortSample.Width;
		lblShortKey[ATag].Tag := ATag;
		lblShortKey[ATag].Images := lblShortSample.Images;
		lblShortKey[ATag].Font  := lblShortSample.Font;
		lblShortKey[ATag].Style := lblShortSample.Style;
		lblShortKey[ATag].Colors := lblShortSample.Colors;
		lblShortKey[ATag].LookAndFeel := lblShortSample.LookAndFeel;
		lblShortKey[ATag].ImageIndex := lblShortSample.ImageIndex;
		if ATag In [1, 2] then
    begin
      if giBtnCnt = 0 then lblShortKey[ATag].Top := 30
                      else lblShortKey[ATag].Top := btnShortKey[giBtnCnt].Top + ( btnShortSample.Height + 10 );
      if ATag = 1 then lblShortKey[ATag].Left := 0 else
      if ATag = 2 then lblShortKey[ATag].Left := lblShortKey[1].Left + lblShortKey[1].Width + 1;
    end else
    begin
      if ATag Mod 2 = 1 then
      begin
        lblShortKey[ATag].Top := lblShortKey[ATag-2].Top + ( lblShortSample.Height + 1 );
        lblShortKey[ATag].Left := 0;
      end else
      if ATag Mod 2 = 0 then
      begin
        lblShortKey[ATag].Top := lblShortKey[ATag-2].Top + ( lblShortSample.Height + 1 );
        lblShortKey[ATag].Left := lblShortKey[2].Left;
      end;
    end;
		lblShortKey[ATag].Visible := True;
		lblShortKey[ATag].Caption := ACaption;
		lblShortKey[ATag].Cursor := lblShortSample.Cursor;
    lblShortKey[ATag].OnClick := lblShortKeyClick;
  Except
  end;
end;

procedure TFrm_JON05.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON05.FormDestroy(Sender: TObject);
begin
  Frm_JON05 := Nil;
end;

procedure TFrm_JON05.FormHide(Sender: TObject);
begin
  bChkTime := False;
  TmrChkTag.Tag := 100;
  if GS_JON01_GROUPMOVE then MagneticWnd.RemoveWindow(Self.Handle);
end;

procedure TFrm_JON05.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON05, GS_FONTNAME, True);
  fSetSkin(Frm_JON05, True);

  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);

	TmrChkTag.Enabled := True;   // 자석은 무조건하고 옵션에 따라 이동( 열린상태에서 자석 했을경우 바로 적용하기 위해);
end;

procedure TFrm_JON05.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON05.TmrChkTagTimer(Sender: TObject);
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

procedure TFrm_JON05.btnShortKey1Click(Sender: TObject);
begin
  Frm_Main.Frm_JON01N[Self.Tag].btnMile.Click;
end;

// 요금문의
procedure TFrm_JON05.btnShortKey2Click(Sender: TObject);
begin
  Frm_Main.Frm_JON01N[Self.Tag].BtnQRate.Click;
end;

// 카드결제
procedure TFrm_JON05.btnShortKey3Click(Sender: TObject);
begin
  if Frm_Main.Frm_JON01N[Self.Tag].cbCardSanction.Hint = _PAY_CARD then
    Frm_Main.Frm_JON01N[Self.Tag].cbCardSanction.Click;
end;

// 출발지도
procedure TFrm_JON05.btnShortKey4Click(Sender: TObject);
begin
  Frm_Main.Frm_JON01N[Self.Tag].btnSViewMap.Click;
end;

// 도착지도
procedure TFrm_JON05.btnShortKey5Click(Sender: TObject);
begin
  Frm_Main.Frm_JON01N[Self.Tag].btnViewMap.Click;
end;

// 경로보기
procedure TFrm_JON05.btnShortKey6Click(Sender: TObject);
begin
  Frm_Main.Frm_JON01N[Self.Tag].BtnSR.Click;
end;

// 출/로드뷰
procedure TFrm_JON05.btnShortKey7Click(Sender: TObject);
begin
  Frm_Main.Frm_JON01N[Self.Tag].pSLoadView;
end;

// 도/로드뷰
procedure TFrm_JON05.btnShortKey8Click(Sender: TObject);
begin
  Frm_Main.Frm_JON01N[Self.Tag].pELoadView;
end;

// 상용구
procedure TFrm_JON05.lblShortKeyClick(Sender: TObject);
begin
  try
    // 선택이 안되어 있으면 출발지로 인식
	  if lcsActiveEdit = 'meoEndArea' then Frm_Main.Frm_JON01N[Self.Tag].AddEpop(TcxButton(Sender).Caption, TcxButton(Sender).Tag + 7)
                                    else Frm_Main.Frm_JON01N[Self.Tag].AddSpop(TcxButton(Sender).Caption, TcxButton(Sender).Tag + 19);
  except
  end;
end;



end.


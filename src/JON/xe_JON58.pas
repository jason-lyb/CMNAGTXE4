unit xe_JON58;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, IniFiles,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxGroupBox,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMemo, Vcl.ExtCtrls, cxLabel, cxCheckBox, Vcl.OleCtrls, SHDocVw,
  dxSkinsCore, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_JON58 = class(TForm)
    PnlMain: TPanel;
    pnlTitle: TPanel;
    cxButton1: TcxButton;
    btnClose: TcxButton;
    WebBrowser1: TWebBrowser;
    cxLblActive: TLabel;
    cxbtnRoadView: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure WebBrowser1DocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure WebBrowser1NavigateComplete2(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure cxbtnRoadViewClick(Sender: TObject);
  private
    { Private declarations }
    CurDispatch: IDispatch; {save the interface globally }
    bWebLoading : Boolean;
  public
    { Public declarations }
    iJon01Tag : Integer;
    procedure pRoadViewPos(const AValue, AX, AY: string);
  end;

var
  Frm_JON58: TFrm_JON58;

implementation

{$R *.dfm}

uses xe_Func, xe_Msg, Main, xe_GNL, xe_JON30;

procedure TFrm_JON58.cxbtnRoadViewClick(Sender: TObject);
begin
  pRoadViewPos(' ', Frm_Main.Frm_JON01N[iJOn01Tag].cxtStartXval.Text, Frm_Main.Frm_JON01N[iJOn01Tag].cxtStartYval.Text);
end;

procedure TFrm_JON58.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON58.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_JON58.FormCreate(Sender: TObject);
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
end;

procedure TFrm_JON58.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON58.FormDestroy(Sender: TObject);
begin
  Frm_JON58 := Nil;
end;

procedure TFrm_JON58.FormShow(Sender: TObject);
Var i : Integer;
begin
  fSetFont(Frm_JON58, GS_FONTNAME);
  fSetSkin(Frm_JON58);

  bWebLoading := False;
  WebBrowser1.Navigate(ROADMAP_URL);

  i := 0;
  while Not bWebLoading do
  begin
    sleep(100);
    Inc(i);
    if i > 20 then Break;
  end;

  cxbtnRoadView.Click;
 end;

procedure TFrm_JON58.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON58.pRoadViewPos(const AValue, AX, AY: string);
Var slatX, slonY, sJScp : String;
    i : Integer;
begin
  if (AX <> '') and (AY <> '') then
  begin
    slatX := Frm_JON30.SetWGS84(AX);
    slonY := Frm_JON30.SetWGS84(AY);

    i := 0;
    while Not bWebLoading do
    begin
      sleep(100);
      Inc(i);
      if i > 20 then Break;
    end;

    try
      sJScp := 'setpanTo('+slatX+','+slonY+');';
      ExecuteJavaScript(WebBrowser1, sJScp);
    except

    end;
  end;
end;

procedure TFrm_JON58.WebBrowser1DocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
  if (pDisp = CurDispatch) then
  begin
    WebBrowser1.Visible := True;
    bWebLoading := True;
    CurDispatch := nil;
  end;
end;

procedure TFrm_JON58.WebBrowser1NavigateComplete2(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
  if CurDispatch = nil then
     CurDispatch := pDisp; { save for comparison }
end;

procedure TFrm_JON58.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.


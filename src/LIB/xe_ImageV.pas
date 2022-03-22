unit xe_ImageV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, WebImage, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, Vcl.StdCtrls, cxGroupBox, cxLabel,
  Vcl.Menus, cxButtons, cxCheckBox, cxScrollBox, cxImage, Vcl.OleCtrls, SHDocVw, dxSkinOffice2010Silver, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxSkinSharp;

type
  TFrm_ImageV = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLblActive: TLabel;
    lblTitle: TcxLabel;
    BtnClose: TcxButton;
    WebBrowser1: TWebBrowser;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure cxGroupBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    FZoom: Integer;
    FLastZoom: Integer;

    procedure ApplyZoom(ZoomValue: Integer);
    procedure DecZoom;
    procedure IncZoom;
    { Private declarations }
  public
    procedure SetImageURL(sURL: String);
    { Public declarations }
  end;

var
  Frm_ImageV: TFrm_ImageV;

implementation

uses xe_GNL;

const
  OLECMDID_OPTICAL_ZOOM = $0000003F;
  MinZoom = 10;
  MaxZoom = 1000;
  ZoomFactor = 20;
  DefaultZoom = 100;

{$R *.dfm}

procedure TFrm_ImageV.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_ImageV.ApplyZoom(ZoomValue: Integer);
var
  pvaIn, pvaOut: OleVariant;
begin
  if ZoomValue = FLastZoom then
    Exit;
  FLastZoom := ZoomValue;
  pvaIn := ZoomValue;
  pvaOut := Null;
  WebBrowser1.ControlInterface.ExecWB(OLECMDID_OPTICAL_ZOOM, OLECMDEXECOPT_DONTPROMPTUSER, pvaIn, pvaOut);
end;

procedure TFrm_ImageV.DecZoom;
begin
  System.Dec(FZoom, ZoomFactor);
  if FZoom < MinZoom then
    FZoom := MinZoom;
  ApplyZoom(FZoom);
end;

procedure TFrm_ImageV.IncZoom;
begin
  System.Inc(FZoom, ZoomFactor);
  if FZoom > MaxZoom then
    FZoom := MaxZoom;
  ApplyZoom(FZoom);
end;

procedure TFrm_ImageV.cxButton1Click(Sender: TObject);
begin
  IncZoom;
end;

procedure TFrm_ImageV.cxButton2Click(Sender: TObject);
begin
  DecZoom;
end;

procedure TFrm_ImageV.cxGroupBox1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_ImageV.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_ImageV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_ImageV.SetImageURL( sURL : String );
begin
  WebBrowser1.Navigate(sURL);
  FZoom := DefaultZoom;
  FLastZoom := DefaultZoom;
end;

procedure TFrm_ImageV.FormCreate(Sender: TObject);
Var Save: LongInt; // 폼타이틀 제거용.
begin
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

procedure TFrm_ImageV.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_ImageV.FormDestroy(Sender: TObject);
begin
  Frm_ImageV := Nil;
end;

procedure TFrm_ImageV.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  DecZoom;
end;

procedure TFrm_ImageV.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  IncZoom;
end;

procedure TFrm_ImageV.FormShow(Sender: TObject);
begin
  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);
end;

end.

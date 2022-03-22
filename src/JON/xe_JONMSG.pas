unit xe_JONMSG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2010Blue,
  Vcl.StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, Vcl.ExtCtrls,
  cxLabel;

type
  Tfrm_JonMsg = class(TForm)
    pnl_Title: TcxLabel;
    pnl_Alert: TPanel;
    cxLabel9: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    btn_Update: TcxButton;
    btn_Join: TcxButton;
    procedure pnl_TitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_JoinClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnl_AlertMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_JonMsg: Tfrm_JonMsg;

implementation

{$R *.dfm}

procedure Tfrm_JonMsg.btn_JoinClick(Sender: TObject);
begin
	close;
end;

procedure Tfrm_JonMsg.FormCreate(Sender: TObject);
var  Save: LongInt;
begin
	if BorderStyle = bsNone then Exit;
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
end;

procedure Tfrm_JonMsg.pnl_AlertMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_JonMsg.pnl_TitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

end.

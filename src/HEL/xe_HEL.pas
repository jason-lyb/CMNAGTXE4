unit xe_HEL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMemo, StdCtrls, cxButtons, ExtCtrls,
  cxGraphics, cxLookAndFeels, cxRichEdit;

type
  TFrm_HEL = class(TForm)
    Panel1: TPanel;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    Memo1: TcxRichEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCloseClick(Sender: TObject);
    procedure pnlTitleMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_HEL: TFrm_HEL;

implementation

{$R *.dfm}

uses xe_GNL;

procedure TFrm_HEL.FormShow(Sender: TObject);
begin
  Memo1.Lines.Clear;

  if Self.Caption = '사용법요약' then
  begin
    if FileExists(HELPDIRECTORY + 'call_help.txt') then
      memo1.Lines.LoadFromFile(HELPDIRECTORY + 'call_help.txt');
  end
  else
    if frm_hel.Caption = '충돌문제' then
  begin
    if FileExists(HELPDIRECTORY + 'call_help2.txt') then
      memo1.Lines.LoadFromFile(HELPDIRECTORY + 'call_help2.txt');
  end;
end;

procedure TFrm_HEL.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_HEL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_HEL.FormDestroy(Sender: TObject);
begin
  Frm_Hel := Nil;
end;

procedure TFrm_HEL.pnlTitleMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

end.


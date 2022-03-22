unit xe_Jon03_01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw;

type
  TFrm_JON03_01 = class(TForm)
    WebBrowser1: TWebBrowser;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_JON03_01: TFrm_JON03_01;

implementation

{$R *.dfm}

procedure TFrm_JON03_01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_JON03_01.FormDestroy(Sender: TObject);
begin
  Frm_JON03_01 := Nil;
end;

end.

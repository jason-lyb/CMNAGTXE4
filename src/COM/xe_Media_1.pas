unit xe_Media_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, WMPLib_TLB;

type
	Tfrm_Media_1 = class(TForm)
		winPlayer: TWindowsMediaPlayer;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
	public
    { Public declarations }
  end;

var
  frm_Media_1: Tfrm_Media_1;

implementation

{$R *.dfm}

procedure Tfrm_Media_1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Action := caFree;
end;

procedure Tfrm_Media_1.FormDestroy(Sender: TObject);
begin
	frm_Media_1 := Nil;
end;

end.

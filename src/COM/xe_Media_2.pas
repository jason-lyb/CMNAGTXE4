unit xe_Media_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.MPlayer;

type
  Tfrm_Media_2 = class(TForm)
    MediaPlayer0: TMediaPlayer;
		procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure MediaPlayer0Click(Sender: TObject; Button: TMPBtnType;
      var DoDefault: Boolean);
  private
    { Private declarations }
  public
		MPlayer : TMediaPlayer;
		{ Public declarations }
	end;

var
  frm_Media_2: Tfrm_Media_2;

implementation

{$R *.dfm}
uses xe_GNL;

procedure Tfrm_Media_2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Action := caFree;
end;

procedure Tfrm_Media_2.FormDestroy(Sender: TObject);
begin
	frm_Media_2 := Nil;
end;

procedure Tfrm_Media_2.MediaPlayer0Click(Sender: TObject; Button: TMPBtnType;
  var DoDefault: Boolean);
var sFileName : string;
begin
	if Button = TMPBtnType.btPlay then
	begin
		sFileName := SOUNDDIRECTORY + 'Tmp.wav';
			
		MediaPlayer0.FileName := sFileName;
		MediaPlayer0.Open;
		MediaPlayer0.Play;
	end;
end;

end.

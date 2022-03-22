unit xe_JON35;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxLabel, ExtCtrls, cxGraphics, cxLookAndFeels,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  dxSkinsCore, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_JON35 = class(TForm)
    pnl1: TPanel;
    cxLabel1: TcxLabel;
    btn_Answer: TcxButton;
    tmr_Ring: TTimer;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    tmr1: TTimer;
    IdHTTPBix: TIdHTTP;
    procedure btn_AnswerClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tmr_RingTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tmr1Timer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_JON35: TFrm_JON35;

implementation


{$R *.dfm}

uses Main, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_JON54;


procedure TFrm_JON35.btn_AnswerClick(Sender: TObject);
begin
	try
		tmr_Ring.Enabled := False;

{		sURL := 'http://%s/Mon/funcExe?source=IPCC&tgt=%s&func=Answer';
		sURL1 := Format(sURL, [BILLIT_IP, UrlEncode(UTF8Encode(BILLIT_ID))]);
		Log('Answer: ' +   BILLIT_IP + ' ' + sURL1 , LOGDATAPATHFILE);
		sRequest := IdHTTPBix.Get(sURL1);
		Log('Answer Request: ' +  sRequest , LOGDATAPATHFILE);}

    frm_JON54.btn_PickUpPhone.Enabled := False;
    frm_JON54.btn_HangUp.Enabled := True;
    frm_JON54.btn_Calling.Enabled := False;

		FlashWindow(Application.Handle, False );

    Frm_Main.G_Talk := 'C';
    Frm_Main.TimerOCX.Enabled := True;

		Close;
	except
		Log('Answer: error' , LOGDATAPATHFILE);    
	end;
end;

procedure TFrm_JON35.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON35, GS_FONTNAME);
  fSetSkin(Frm_JON35);

	cxLabel2.Caption := 'DNIS : ' + GS_JONCidInput.ExtNumber;
	cxLabel3.Caption := '대표번호 : ' + GS_JONCidInput.KeyNumber;
	tmr_Ring.Enabled := True;
	tmr1.Enabled := True;
end;

procedure TFrm_JON35.tmr_RingTimer(Sender: TObject);
begin
	if cxLabel1.Style.TextColor = clBlue then
    cxLabel1.Style.TextColor := clRed
	else
	if cxLabel1.Style.TextColor = clRed then
	begin
		cxLabel1.Style.TextColor := clBlue;
		FlashWindow(Application.Handle, True );
	end;
end;

procedure TFrm_JON35.FormCreate(Sender: TObject);
begin
  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);
end;

procedure TFrm_JON35.FormDestroy(Sender: TObject);
begin
  Frm_JON35 := Nil;
end;

procedure TFrm_JON35.FormActivate(Sender: TObject);
begin
	SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);
end;

procedure TFrm_JON35.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	tmr_Ring.Enabled := False;
  Action := caFree;
end;

procedure TFrm_JON35.tmr1Timer(Sender: TObject);
begin
	tmr1.Enabled := False;
	close;
end;

end.

unit xe_MessageBox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, Vcl.StdCtrls, cxButtons,
  dxGDIPlusClasses, Vcl.ExtCtrls, cxControls,
  cxContainer, cxEdit, cxLabel, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
	Tfrm_MessageBox = class(TForm)
		Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    btnYes: TcxButton;
		btnNo: TcxButton;
		lbStatus: TcxLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnYesClick(Sender: TObject);
    procedure btnNoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
		iJon03Tag, iPopTag : integer;
		{ Public declarations }
  end;

var
	frm_MessageBox: Tfrm_MessageBox;

implementation

{$R *.dfm}

uses Main, xe_Func, xe_GNL;

procedure Tfrm_MessageBox.btnNoClick(Sender: TObject);
begin
	Frm_Main.Frm_JON03[iJon03Tag].bReservationYN := False;
//	Frm_Main.Frm_JON03[iJon03Tag].pGridSetFocus;
	close;
end;

procedure Tfrm_MessageBox.btnYesClick(Sender: TObject);
begin
	Frm_Main.Frm_JON03[iJon03Tag].bReservationYN := True;
//	Frm_Main.Frm_JON03[iJon03Tag].proc_reservation(iPopTag);
	close;
end;

procedure Tfrm_MessageBox.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Action := caFree;
end;

procedure Tfrm_MessageBox.FormCreate(Sender: TObject);
begin
	self.Caption := '';
	lbStatus.Caption := '';
end;

procedure Tfrm_MessageBox.FormDestroy(Sender: TObject);
begin
	frm_MessageBox := Nil;
end;

procedure Tfrm_MessageBox.FormKeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if ((Shift = [ssAlt]) and (Key = VK_F4)) then
		Key := 0;
end;

procedure Tfrm_MessageBox.FormKeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['2', 'y', 'Y' ] then      //Ctrl+v = #22 or #$16
	begin
		btnYes.Click;
	end else
	if key in ['n', 'N' ] then      //Ctrl+v = #22 or #$16
	begin
		btnNo.Click;
	end;
end;

procedure Tfrm_MessageBox.FormShow(Sender: TObject);
begin
  fSetFont(frm_MessageBox, GS_FONTNAME);
  fSetSkin(frm_MessageBox);
end;

end.

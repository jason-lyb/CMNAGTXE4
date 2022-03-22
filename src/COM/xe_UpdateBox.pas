unit xe_UpdateBox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, Vcl.StdCtrls, cxButtons,
  dxGDIPlusClasses, Vcl.ExtCtrls, cxControls,
  cxContainer, cxEdit, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
	TFrm_UpdateBox = class(TForm)
		Panel1: TPanel;
    Panel2: TPanel;
    btnYes: TcxButton;
		btnNo: TcxButton;
		lbStatus: TcxLabel;
    Image1: TImage;
    cbAlarm: TcxComboBox;
    cxLabel1: TcxLabel;
    BtnClose: TcxButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnYesClick(Sender: TObject);
    procedure btnNoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
		iJon03Tag, iPopTag : integer;
		{ Public declarations }
  end;

var
	Frm_UpdateBox: TFrm_UpdateBox;

implementation

{$R *.dfm}

uses Main, xe_JON01Share, xe_Func, xe_GNL;

procedure TFrm_UpdateBox.BtnCloseClick(Sender: TObject);
begin
	p902SendResult(IntToStr(3  * 60000));   // ±âº» 3ºÐ
	Close;
end;

procedure TFrm_UpdateBox.btnNoClick(Sender: TObject);
Var sInterval : String;
begin
  if cbAlarm.ItemIndex = 0 then sInterval := IntToStr(3  * 60000) else
  if cbAlarm.ItemIndex = 1 then sInterval := IntToStr(5  * 60000) else
  if cbAlarm.ItemIndex = 2 then sInterval := IntToStr(10 * 60000);
	p902SendResult(sInterval);
	Close;
end;

procedure TFrm_UpdateBox.btnYesClick(Sender: TObject);
begin
	p902SendResult('0');
	close;
end;

procedure TFrm_UpdateBox.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Action := caFree;
end;

procedure TFrm_UpdateBox.FormCreate(Sender: TObject);
begin
	Self.Caption := '';
	lbStatus.Caption := '';
end;

procedure TFrm_UpdateBox.FormDestroy(Sender: TObject);
begin
	Frm_UpdateBox := Nil;
end;

procedure TFrm_UpdateBox.FormKeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if ((Shift = [ssAlt]) and (Key = VK_F4)) then
		Key := 0;
end;

procedure TFrm_UpdateBox.FormKeyPress(Sender: TObject; var Key: Char);
begin
//	if key in ['2', 'y', 'Y' ] then      //Ctrl+v = #22 or #$16
//	begin
//		btnYes.Click;
//	end else
//	if key in ['n', 'N' ] then      //Ctrl+v = #22 or #$16
//	begin
//		btnNo.Click;
//	end;
end;

procedure TFrm_UpdateBox.FormShow(Sender: TObject);
begin
  fSetFont(Frm_UpdateBox, GS_FONTNAME);

  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);
end;

end.

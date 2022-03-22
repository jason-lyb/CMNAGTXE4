unit xe_ShareBox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  Vcl.StdCtrls, cxButtons, dxGDIPlusClasses, Vcl.ExtCtrls, cxControls,
  cxContainer, cxEdit, cxLabel, dxSkinOffice2010Silver;

type
	TFrm_ShareBox = class(TForm)
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
  private
    { Private declarations }
  public
		rCkey : String;
		{ Public declarations }
  end;

var
	Frm_ShareBox: TFrm_ShareBox;

implementation

{$R *.dfm}

uses Main;

procedure TFrm_ShareBox.btnNoClick(Sender: TObject);
begin
  Close;
  ModalResult := mrNo;
end;

procedure TFrm_ShareBox.btnYesClick(Sender: TObject);
begin
  // modalresult값을 Close다음에 처리, 앞에 처리하면 ModalResul값이 초기화되버림
  Close;
  ModalResult := mrYes;
end;

procedure TFrm_ShareBox.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Self.Tag = 0 then Action := caHide
                  else Action := caFree;
end;

procedure TFrm_ShareBox.FormCreate(Sender: TObject);
begin
	Self.Caption := '';
	lbStatus.Caption := '';
end;

procedure TFrm_ShareBox.FormDestroy(Sender: TObject);
begin
	Frm_ShareBox := Nil;
end;

procedure TFrm_ShareBox.FormKeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if ((Shift = [ssAlt]) and (Key = VK_F4)) then
		Key := 0;
end;

procedure TFrm_ShareBox.FormKeyPress(Sender: TObject; var Key: Char);
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

end.

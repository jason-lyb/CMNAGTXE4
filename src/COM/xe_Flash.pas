unit xe_Flash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, AdvWiiProgressBar, Buttons,
  dxGDIPlusClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  cxProgressBar, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver, Vcl.Samples.Gauges;

type
  TFrm_Flash = class(TForm)
    Label4: TLabel;
    lblRltCnt: TLabel;
    Label2: TLabel;
    lblLightUp: TLabel;
    lblDescription: TLabel;
    lblCnt: TLabel;
    Image1: TImage;
    cxPBar1: TcxProgressBar;
    lb_NoticeAdminMap: TLabel;
    lb_SearchTimeDescription: TLabel;
    lb_SearchTime: TLabel;
    Gauge1: TGauge;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    // ���� �۾� ��û ó���Ҷ�,, �ð��� ���� �ɸ���,, �� �˸�ȭ���� �������ش�.
    procedure JobProcess(bTF: Boolean; iDelayTimes: Integer = 10);
    // ���� �۾� ������ �����Ҷ�,, ���� �������� ī��Ʈ �Ѵ�.
  end;

var
  Frm_Flash: TFrm_Flash;

implementation

{$R *.dfm}

uses xe_GNL, xe_Func;

// ���� �۾� ��û ó���Ҷ�,, �ð��� ���� �ɸ���,, �� �˸�ȭ���� �������ش�.

procedure TFrm_Flash.FormShow(Sender: TObject);
begin
  fSetFont(Frm_Flash, GS_FONTNAME);
  fSetSkin(Frm_Flash);
end;

procedure TFrm_Flash.JobProcess(bTF: Boolean; iDelayTimes: Integer = 10);
begin

end;

procedure TFrm_Flash.FormCreate(Sender: TObject);
var
  rgn: HRGN;
  rect : TRect;
begin
  rect := ClientRect;
  rgn := CreateRoundRectRgn(rect.left, rect.top, rect.right, rect.bottom, 9, 9);
	SetWindowRgn(Handle, rgn, TRUE);
end;

end.


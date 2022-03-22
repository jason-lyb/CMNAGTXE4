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
    // 전문 작업 요청 처리할때,, 시간이 많이 걸리면,, 이 알림화면을 실행해준다.
    procedure JobProcess(bTF: Boolean; iDelayTimes: Integer = 10);
    // 전문 작업 데이터 수신할때,, 받은 페이지를 카운트 한다.
  end;

var
  Frm_Flash: TFrm_Flash;

implementation

{$R *.dfm}

uses xe_GNL, xe_Func;

// 전문 작업 요청 처리할때,, 시간이 많이 걸리면,, 이 알림화면을 실행해준다.

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


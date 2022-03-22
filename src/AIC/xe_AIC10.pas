unit xe_AIC10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
	cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, ComObj,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, Vcl.ExtCtrls, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  Tfrm_AIC10 = class(TForm)
		pnl_Info: TPanel;
    Panel5: TPanel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    btn_Download: TcxButton;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    Panel6: TPanel;
    BtnClose: TcxButton;
    cxLblActive: TLabel;
    procedure BtnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Panel6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn_DownloadClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
	frm_AIC10: Tfrm_AIC10;

implementation

{$R *.dfm}
uses xe_Func, xe_Msg, xe_GNL;

procedure Tfrm_AIC10.BtnCloseClick(Sender: TObject);
begin
	close;
end;

procedure Tfrm_AIC10.btn_DownloadClick(Sender: TObject);
  procedure RunDownload;
  var
    IE: Variant;
    EHWND: THandle;
  begin
    try
      IE := CreateOleObject('InternetExplorer.Application');

      IE.height := 100;
      IE.width := 100;
      IE.left := 0;
      IE.top := 0;

      IE.MenuBar := False;
      IE.AddressBar := True;
      IE.Resizable := False;
      IE.StatusBar := False;
      IE.ToolBar := False;
      IE.Silent := false;

      sleep(1);

      IE.Navigate('http://www.callmaner.com/download/콜마너_음성인식OB신청서.zip');
      IE.Visible := True;

      Application.ProcessMessages;
      sleep(1);
    except on E: Exception do
			GMessagebox(Format('신청서 다운로드 시 오류(Err: %s)가 발생하였습니다.'#13#10
												+ '(다시시도 바랍니다.)' , [E.Message]), CDMSE);
		end;
  end;
begin
  RunDownload;
end;

procedure Tfrm_AIC10.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure Tfrm_AIC10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Action := caFree;
end;

procedure Tfrm_AIC10.FormCreate(Sender: TObject);
var
	Save: Integer;
begin
	//====================================================
	// 폼 타이틀 제거..
	Save := GetWindowLong(Handle, gwl_Style);
	if (Save and ws_Caption) = ws_Caption then
	begin
		case BorderStyle of
			bsSingle, bsSizeable:
				SetWindowLong(Handle, gwl_Style, Save and (not (ws_Caption)) or
					ws_border);
		end;
		Height := Height - getSystemMetrics(sm_cyCaption);
		Refresh;
	end;
end;

procedure Tfrm_AIC10.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure Tfrm_AIC10.FormDestroy(Sender: TObject);
begin
	Frm_AIC10 := Nil;
end;

procedure Tfrm_AIC10.FormShow(Sender: TObject);
begin
  fSetFont(Frm_AIC10, GS_FONTNAME);
end;

procedure Tfrm_AIC10.Panel6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

end.

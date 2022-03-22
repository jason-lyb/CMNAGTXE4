unit xe_VerCheck;

interface

uses
  Vcl.Forms, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  ComObj,
  cxEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, Vcl.Controls,
  Vcl.ExtCtrls, dxSkinsCore, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  Tfrm_VerCheck = class(TForm)
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxButton2: TcxButton;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    clbCuSeq: TcxLabel;
    cxLabel4: TcxLabel;
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure imToolBarMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure btnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
		{ Private declarations }
  public
    { Public declarations }
  end;

var
  frm_VerCheck: Tfrm_VerCheck;

implementation

{$R *.dfm}
uses xe_Gnl, xe_Func;
procedure Tfrm_VerCheck.btnCloseClick(Sender: TObject);
Var
  hProc: THandle;
begin
  hProc := OpenProcess(PROCESS_TERMINATE, False, GetCurrentProcessId);
  TerminateProcess(hProc, 0);
end;

procedure Tfrm_VerCheck.cxButton2Click(Sender: TObject);
var
  IE: variant;
begin
  IE := CreateOleObject('InternetExplorer.Application');
  IE.left := 0;
  IE.top := 0;
  IE.Width := Screen.Width;
  IE.Height := 740;

  IE.MenuBar := False;
  IE.AddressBar := False;
  IE.ToolBar := False;
	IE.Silent := False;
	if cxLabel4.Caption = '' then
		IE.Navigate('http://www.callmaner.com/')
	else
		IE.Navigate(cxLabel4.Caption);
	
  IE.Visible := true;
  Application.Terminate;
end;

procedure Tfrm_VerCheck.FormCreate(Sender: TObject);
var
  Save: LongInt; // 폼타이틀 제거용.
begin
  // ====================================================
  // 폼 타이틀 제거..
  Save := GetWindowLong(Handle, gwl_Style);
  if (Save and ws_Caption) = ws_Caption then
  begin
    case BorderStyle of
      bsSingle, bsSizeable:
        SetWindowLong(Handle, gwl_Style, Save and (not(ws_Caption)) or
          ws_border);
    end;
    Height := Height - getSystemMetrics(sm_cyCaption);
    Refresh;
  end;
end;

procedure Tfrm_VerCheck.FormShow(Sender: TObject);
begin
  fSetFont(frm_VerCheck, GS_FONTNAME);

	if GS_PRJ_AREA = 'O' then
		cxLabel4.Caption :=	'http://callmaner.com/cdms_help/cdms_down2.htm'
	else
		cxLabel4.Caption :=	'http://callmaner.com/cdms_help/cdms_down.htm' ;

end;

procedure Tfrm_VerCheck.imToolBarMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_VerCheck.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

end.

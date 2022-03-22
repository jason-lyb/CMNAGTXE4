unit xe_Naver;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.OleCtrls, SHDocVw, MSHTML,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  Vcl.StdCtrls, cxButtons, cxControls, cxContainer,  cxEdit, cxTextEdit, cxCurrencyEdit;

type
  TFrm_Naver = class(TForm)
    Timer1: TTimer;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    iCnt : Integer;
    procedure pMapNaverConnect;
    procedure vWebNavigateComplete2(ASender: TObject; const pDisp: IDispatch;
      const URL: OleVariant);
  public
    WebBro : TWebBrowser;
    { Public declarations }
  end;

var
  Frm_Naver: TFrm_Naver;
  CurDispatch: IDispatch; {save the interface globally }

implementation

{$R *.dfm}

uses xe_GNL;

procedure TFrm_Naver.FormCreate(Sender: TObject);
begin
  Timer1.Enabled := True;
  iCnt := -1;
end;

procedure TFrm_Naver.pMapNaverConnect;
begin
  SetDebugeWrite('Naver.pMapNaverConnect');
  try
    if Assigned(WebBro) then
    begin
      FreeAndNil(WebBro);
    end;

    WebBro := TWebBrowser.Create(Self);
    WebBro.OnNavigateComplete2 := vWebNavigateComplete2;
    TControl(WebBro).Parent := Panel1;
    WebBro.Align := alClient;
    WebBro.Visible := True;
    CurDispatch := nil;
    WebBro.Navigate('https://v4.map.naver.com/');
  except on e: exception do
    begin
      Assert(False, 'Naver pMapNaverConnect Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_Naver.vWebNavigateComplete2(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
Var document : IHTMLDocument2;
begin
	if CurDispatch = nil then
  begin
    CurDispatch := pDisp; { save for comparison }

    document := WebBro.Document as IHTMLDocument2;
    gNaverCookie := Document.cookie;

//    SetDebugeWrite('Naver.pMapNaverConnect - Cookie : ' + gNaverCookie);
  end;
end;

procedure TFrm_Naver.Timer1Timer(Sender: TObject);
begin
  try
    Timer1.Enabled := False;
		try
      if ( iCnt >= 120 ) Or ( iCnt = -1 ) Or ( gNaverCookie = '' ) then
      begin
				pMapNaverConnect;
        iCnt := 0;
      end;
      Inc(iCnt);
      Self.Caption := 'Frm_Naver ' + IntToStr(iCnt);
    finally
      Timer1.Enabled := True;
    end;
  except on e: exception do
    begin
      Assert(False, 'Naver Error :' + E.Message);
    end;
  end;
end;

end.

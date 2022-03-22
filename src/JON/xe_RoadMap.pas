unit xe_RoadMap;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.OleCtrls, SHDocVw, MSHTML,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  Vcl.StdCtrls, cxButtons, cxControls, cxContainer,  cxEdit, cxTextEdit, cxCurrencyEdit;

type
  TFrm_RoadMap = class(TForm)
    Panel1: TPanel;
    WebBrowser1: TWebBrowser;
    procedure FormShow(Sender: TObject);
    procedure WebBrowser1BeforeNavigate2(ASender: TObject;
      const pDisp: IDispatch; const URL, Flags, TargetFrameName, PostData,
      Headers: OleVariant; var Cancel: WordBool);
  private
    { Private declarations }
    iCnt : Integer;
  public
    procedure pRoadMapView(sURL : String);
    { Public declarations }
  end;

var
  Frm_RoadMap: TFrm_RoadMap;
  CurDispatch: IDispatch; {save the interface globally }

implementation

{$R *.dfm}

uses xe_GNL;

procedure TFrm_RoadMap.FormShow(Sender: TObject);
begin
  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);
end;

procedure TFrm_RoadMap.pRoadMapView(sURL : String);
begin
  SetDebugeWrite('RoadMap.pRoadMapView');
  try
    WebBrowser1.Navigate(sURL);
  except on e: exception do
    begin
      Assert(False, 'RoadMap pMapNaverConnect Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_RoadMap.WebBrowser1BeforeNavigate2(ASender: TObject;
  const pDisp: IDispatch; const URL, Flags, TargetFrameName, PostData,
  Headers: OleVariant; var Cancel: WordBool);
Var iPos : Integer;
begin
//  iPos := Pos('map.daum.net', URL);
//  if iPos <= 0 then
//  begin
//    Cancel := True;
//  end;
end;

end.

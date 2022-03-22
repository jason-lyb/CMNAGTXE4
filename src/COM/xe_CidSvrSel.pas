unit xe_CidSvrSel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, IniFiles,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, IdBaseComponent,
  IdComponent,
  IdTCPConnection, IdTCPClient, Vcl.ExtCtrls, Vcl.StdCtrls, cxButtons, cxLabel,
  cxTextEdit, IDGlobal, WinSock, Vcl.Imaging.jpeg, cxMaskEdit,
  cxDropDownEdit, dxSkinsCore, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_CidSvrSel = class(TForm)
    Panel1: TPanel;
    Shape10: TShape;
    CbCidSvrIP: TcxComboBox;
    cxLabel17: TcxLabel;
    cxLabel1: TcxLabel;
    BtnSelect: TcxButton;
    cxLabel2: TcxLabel;
    Shape1: TShape;
    edNaesun: TcxTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSelectClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CidSvrSel: TFrm_CidSvrSel;

implementation

{$R *.dfm}

uses xe_GNL, xe_Func, Main;

procedure TFrm_CidSvrSel.BtnSelectClick(Sender: TObject);
Var sSvrIp : String;
    ln_Env : TIniFile;
begin
  ln_Env := TIniFile.Create(ENVPATHFILE);
  try
    sSvrIp := Copy(CbCidSvrIP.Text, Pos('[', CbCidSvrIP.Text)+1, Length(CbCidSvrIP.Text)-2);
    sSvrIP := ReplaceAll(sSvrIP, ']', '');
    ln_Env.WriteString('CID_COMM', 'CID_SELSVRIP', sSvrIp);
    ln_Env.WriteString('CID_COMM', 'NAESUN', edNaesun.Text);
    Frm_Main.CbCidSvrIP.ItemIndex := CbCidSvrIP.ItemIndex;
  finally
  	FreeAndNil(ln_Env);
  end;

  Close;
end;

procedure TFrm_CidSvrSel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_CidSvrSel.FormShow(Sender: TObject);
Var ln_Env : TIniFile;
begin
  fSetFont(Frm_CidSvrSel, GS_FONTNAME);
  ln_Env := TIniFile.Create(ENVPATHFILE);
  try
    edNaesun.Text := ln_Env.ReadString('CID_COMM', 'NAESUN', '');
  finally
  	FreeAndNil(ln_Env);
  end;
end;

end.



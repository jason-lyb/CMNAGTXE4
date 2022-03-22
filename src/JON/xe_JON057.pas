unit xe_JON057;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, IniFiles,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxGroupBox,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMemo, Vcl.ExtCtrls, cxLabel, cxCheckBox, Vcl.OleCtrls, SHDocVw,
  dxSkinsCore, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_JON057 = class(TForm)
    PnlMain: TPanel;
    pnlTitle: TPanel;
    cxButton1: TcxButton;
    btnClose: TcxButton;
    WebBrowser1: TWebBrowser;
    cxLblActive: TLabel;
    edt_Url: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure WebBrowser1DocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure WebBrowser1NavigateComplete2(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
  private
    { Private declarations }
    CurDispatch: IDispatch; {save the interface globally }
  public
    { Public declarations }
    sBrNo, sArea, sGubun, sParam : String;
  end;

var
  Frm_JON057: TFrm_JON057;

implementation

{$R *.dfm}

uses xe_Func, xe_Msg, Main, xe_GNL;

procedure TFrm_JON057.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON057.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_JON057.FormCreate(Sender: TObject);
var
  Save: LongInt; // ��Ÿ��Ʋ ���ſ�.
begin
  //====================================================
  // �� Ÿ��Ʋ ����..
  Save := GetWindowLong(Handle, gwl_Style);
  if (Save and ws_Caption) = ws_Caption then
  begin
    case BorderStyle of
      bsSingle, bsSizeable:
        SetWindowLong(Handle, gwl_Style, Save and (not (ws_Caption)) or ws_border);
    end;
    Height := Height - getSystemMetrics(sm_cyCaption);
    Refresh;
  end;
end;

procedure TFrm_JON057.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON057.FormDestroy(Sender: TObject);
begin
  Frm_JON057 := Nil;
end;

procedure TFrm_JON057.FormShow(Sender: TObject);
const
  _SMS_KEY = '9me0q9b3p6c7x9re4n1sf8sn8rq0k1iz';
Var
  wURL : String;
  sParam : AnsiString;
  s : string;
  AEncryptData: array of Byte;
  iEncryptLen, ii : Integer;
begin
  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);

  try
    GS_NICE_CHK := False;
    GS_NICE_Err := '';
    GS_NICE_Name := '';
    GS_NICE_Birth := '';
    GS_NICE_Sex := '';

    sParam := sArea + '|' + Trim(sBrNo) + '|' + Trim(GT_USERIF.ID) + '|' + '          ';

    SetLength(AEncryptData, 1024);
    iEncryptLen := BlowFishEncrypt(_SMS_KEY, sParam, AEncryptData);

    // Hex �ڵ� �����..
    for ii:= 0 to iEncryptLen - 1 do
    begin
      s := s + IntToHex(Byte(AEncryptData[ii]),2);
    end;

    wURL := 'http://cas.callmaner.com:8080/nice/checkplus_main.jsp?p=' + s;
    edt_Url.Text := wURL;
    WebBrowser1.Navigate(wURL);
  except
  end;
 end;

procedure TFrm_JON057.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON057.WebBrowser1DocumentComplete(ASender: TObject;
	const pDisp: IDispatch; const URL: OleVariant);
Var uText, sErrNo : String;
    iPos, iPos1 : Integer;
begin
  try
    if (pDisp = CurDispatch) then
    begin
      uText := Frm_Main.GetHTML(WebBrowser1, True);

      if Pos('���������� �Ϸ� �Ǿ����ϴ�', uText) > 1 then
      begin
        iPos := Pos('����', uText) + 2;
        iPos1 := Pos('�ߺ�����', uText) - 1;
        GS_NICE_Name := Copy(uText, iPos, iPos1 - iPos);

        iPos := Pos('�������(YYYYMMDD)', uText) + Length('�������(YYYYMMDD)');
        GS_NICE_Birth := Copy(uText, iPos, 8);

        iPos := Pos('����', uText) + 2;
        GS_NICE_Sex := Copy(uText, iPos, 1);      // 0.����, 1.����

        GS_NICE_CHK := True;
        Close;
      end else
      if Pos('���������� �����Ͽ����ϴ�', uText) > 1 then
      begin
        iPos := Pos('�ڵ�', uText) + 2;
        sErrNo := Copy(uText, iPos, 4);

        if sErrNo = '0001' then GS_NICE_Err := '0001.��������ġ(���������, ������ȣ ����ġ)' else
        if sErrNo = '0011' then GS_NICE_Err := '0011.��ȿ���� ���� ���� SEQ' else
        if sErrNo = '0012' then GS_NICE_Err := '0012.��ȿ���� ���� ��������(�ֹι�ȣ, �޴�����ȣ, �����)' else
        if sErrNo = '0013' then GS_NICE_Err := '0013.��ȣȭ ������ ó������' else
        if sErrNo = '0014' then GS_NICE_Err := '0014.��ȣȭ ���μ��� ����' else
        if sErrNo = '0015' then GS_NICE_Err := '0015.��ȣȭ ������ ����' else
        if sErrNo = '0016' then GS_NICE_Err := '0016.��ȣȭ ���μ��� ����' else
        if sErrNo = '0017' then GS_NICE_Err := '0017.��ȣȭ ������ ����' else
        if sErrNo = '0018' then GS_NICE_Err := '0018.����� ��ſ���' else
        if sErrNo = '0020' then GS_NICE_Err := '0020.��ȿ���� ���� ���޻� �ڵ�' else
        if sErrNo = '0021' then GS_NICE_Err := '0021.�ߴܵ� ���޻� �ڵ�' else
        if sErrNo = '0022' then GS_NICE_Err := '0022.�޴������� ����� �Ұ��� ���޻� �ڵ�' else
        if sErrNo = '0031' then GS_NICE_Err := '0031.������ȣ Ȯ�� ����(�ش� ������ ����)' else
        if sErrNo = '0032' then GS_NICE_Err := '0032.������ȣ Ȯ�� ����(�ֹι�ȣ ����ġ)' else
        if sErrNo = '0033' then GS_NICE_Err := '0033.������ȣ Ȯ�� ����(��ûSEQ ����ġ)' else
        if sErrNo = '0034' then GS_NICE_Err := '0034.������ȣ Ȯ�� ����(�� ó����)' else
        if sErrNo = '0050' then GS_NICE_Err := '0050.���ǵ��� ���ܼ��� ������' else
        if sErrNo = '9998' then GS_NICE_Err := '9998.�������� ����� ���� ����' else
        if sErrNo = '9999' then GS_NICE_Err := '9999.���ǵ��� ���� ����';

        GS_NICE_CHK := False;
        Close;
      end;
  //    Log('WebBrowser1 : ' + uText, LOGDATAPATHFILE);
      CurDispatch := nil;
    end;
  except
  end;
end;

procedure TFrm_JON057.WebBrowser1NavigateComplete2(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
  try
    if CurDispatch = nil then
       CurDispatch := pDisp; { save for comparison }
  except
  end;
end;

procedure TFrm_JON057.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.


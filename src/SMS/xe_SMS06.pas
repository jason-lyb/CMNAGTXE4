unit xe_SMS06;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxMemo, Vcl.StdCtrls,
  cxButtons, cxImage, cxLabel, cxTextEdit, Vcl.ExtCtrls, Vcl.Imaging.jpeg,
  dxSkinsCore, cxMaskEdit, cxDropDownEdit, cxCheckBox, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_SMS06 = class(TForm)
    Panel1: TPanel;
    cxTextEdit1: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    cxImage1: TcxImage;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxMemo1: TcxMemo;
    cxLabel4: TcxLabel;
    cxLabel3: TcxLabel;
    pnlTitle: TPanel;
    cbKeynumber01: TcxComboBox;
    cxTextEdit2: TcxTextEdit;
    chkBalsin: TcxCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnlTitleMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure cxMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure cxMemo1PropertiesChange(Sender: TObject);
    procedure chkBalsinClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxMemo1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    procedure proc_BrNameSet;
    { Private declarations }
  public
    { Public declarations }
    procedure proc_recieve(ls_rxxml: Widestring);
  end;

var
  Frm_SMS06: TFrm_SMS06;

implementation

{$R *.dfm}

uses xe_GNL, xe_Func, xe_Dm, xe_Msg, xe_xml, xe_Lib;

procedure TFrm_SMS06.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_SMS06.chkBalsinClick(Sender: TObject);
begin
  if chkBalsin.Checked then
  begin
    cbKeynumber01.Visible := True;
    cxTextEdit2.Visible := False;
  end else
  begin
    cbKeynumber01.Visible := False;
    cxTextEdit2.Visible := True;
  end;
end;

procedure TFrm_SMS06.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_SMS06.cxButton2Click(Sender: TObject);
var
  ls_TxLoad, rv_str, sReceive_num, sTime, sSend_num : string;
  StrList: TStringList;
  ErrCode: integer;
begin
  try
    if Trim(cxMemo1.Text) = '' then
    begin
      GMessagebox('전송메세지를 입력하세요', CDMSE);
      Exit;
    end;

    if (chkBalsin.Checked) and (cbKeynumber01.ItemIndex = 0) then
    begin
      GMessagebox('발신(대표번호)는 번호선택 체크시 반드시 선택해야 합니다.', cdmsE);
      cbKeynumber01.SetFocus;
      Exit;
    end;

    if (Not chkBalsin.Checked) and ( Trim(cxTextEdit2.Text) = '' ) then
    begin
      GMessagebox('회신번호를 입력하세요', CDMSE);
      Exit;
    end;

    if chkBalsin.Checked then
      sSend_num := fCallNumCheck8282(cbKeynumber01.Text)
    else
      sSend_num := fCallNumCheck8282(cxTextEdit2.Text);

    if not NumericCheck(STANDFUNCPATHFILE, '보내는이', sSend_num) then Exit;

    sReceive_Num := cxTextEdit1.Text; // ls_sms.Items.Strings[0];
    if not NumericCheck(STANDFUNCPATHFILE, '받는이', sReceive_Num) then Exit;

   	if Not func_EucKr_Check(cxMemo1, 1) then Exit;

    sTime := '';

    ls_TxLoad := GTx_UnitXmlLoad('SMS01.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', Self.Caption + '1', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ReceiverString', En_Coding(sReceive_Num), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'SenderString', En_Coding(sSend_num), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'MessageString', En_Coding(cxMemo1.Text), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ReservationString', sTime, [rfReplaceAll]);

    StrList := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, StrList, ErrCode, False) then
      begin
        rv_str := StrList[0];
        proc_recieve(rv_str);
      end;
    finally
      StrList.Free;
    end;
  except
  end;
end;

procedure TFrm_SMS06.pnlTitleMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ReleaseCapture;
  PostMessage(frm_SMS06.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SMS06.proc_recieve(ls_rxxml: Widestring);
var
  ls_ClientKey : string;
begin
  ls_ClientKey := GetXmlClientKey(ls_rxxml);
  ls_ClientKey := Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5);
  case StrToIntDef(ls_ClientKey, 1) of
    1:
      begin
        GMessagebox('전송 되었습니다.', CDMSI);
        Close;
      end;
  end;
end;

procedure TFrm_SMS06.cxMemo1KeyPress(Sender: TObject; var Key: Char);
var
  Len: Integer;
begin
  if Ord(Key) = VK_BACK then Exit;

  Len := GetSmsMemoLength(AnsiString(TcxMemo(Sender).Text));
  if Key = #3 then Exit;

  if Len >= 90 then
  begin
    Key := #0;
    Exit;
  end;
end;

procedure TFrm_SMS06.cxMemo1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxMemo(sender).Text := Enc_Control(TcxMemo(sender).Text);
end;

procedure TFrm_SMS06.cxMemo1PropertiesChange(Sender: TObject);
begin
  cxLabel4.Caption := IntToStr(Length(AnsiString(cxMemo1.Text)));
end;

procedure TFrm_SMS06.FormCreate(Sender: TObject);
begin
  proc_BrNameSet;
end;

procedure TFrm_SMS06.FormDestroy(Sender: TObject);
begin
  Frm_SMS06 := Nil;
end;

procedure TFrm_SMS06.FormShow(Sender: TObject);
begin
  fSetFont(Frm_SMS06, GS_FONTNAME);

  if Trim(cxTextEdit2.Text) = '' then
  begin
    chkBalsin.Checked := True;
    chkBalsinClick(chkBalsin);
  end;
end;

procedure TFrm_SMS06.proc_BrNameSet;
var
  StrList: TStringList;
begin

	StrList := TStringList.Create;
  cbKeynumber01.Tag := 1;
  try
    if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
    begin
      GetBrTelList(GT_SEL_BRNO.HDNO, StrList);
      cbKeynumber01.Properties.Items.Assign(StrList);
    end else
    begin
			GetBrTelList(GT_SEL_BRNO.BrNo, StrList);
			cbKeynumber01.Properties.Items.Assign(StrList);
    end;
	finally
		StrList.Free;
  end;

  if cbKeynumber01.Properties.Items.Count >= 1 then
    cbKeynumber01.Properties.Items.Insert(0, '번호선택');

  cbKeynumber01.ItemIndex := 0;
  cbKeynumber01.Tag := 0;
end;

end.


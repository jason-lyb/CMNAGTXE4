unit xe_JON16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxTextEdit, StdCtrls, cxButtons,
  cxControls, cxContainer, cxEdit, cxMemo, GradientLabel, ExtCtrls,
  cxGraphics, cxLookAndFeels, cxGroupBox, cxLabel, dxSkinsCore, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_JON16 = class(TForm)
    Panel33: TPanel;
    Memo1: TcxMemo;
    Memo2: TcxMemo;
    RbButton17: TcxButton;
    RbButton18: TcxButton;
    Edit9: TcxTextEdit;
    Edit10: TcxTextEdit;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxLblActive: TLabel;
    Label48: TcxLabel;
    Label49: TcxLabel;
    Label51: TcxLabel;
    Label52: TcxLabel;
    Label53: TcxLabel;
    Label54: TcxLabel;
    procedure RbButton17Click(Sender: TObject);
    procedure RbButton18Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Memo1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
		Jon03Tag : Integer;
		gKeyNumber, gBrNo : string;
  end;

var
  Frm_JON16: TFrm_JON16;

implementation

{$R *.dfm}

uses xe_GNL, xe_Func, xe_Msg, xe_xml, xe_Query, xe_Dm, Main;

{ Tfrm_JON16 }

procedure TFrm_JON16.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON16.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_JON16.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON16.FormDestroy(Sender: TObject);
begin
  Frm_JON16 := Nil;
end;

procedure TFrm_JON16.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON16, GS_FONTNAME);
  fSetSkin(Frm_JON16);
end;

procedure TFrm_JON16.Memo1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxMemo(sender).Text := Enc_Control(TcxMemo(sender).Text);
end;

procedure TFrm_JON16.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON16.RbButton17Click(Sender: TObject);
var
  sEdit1, sEdit2, sMemo1, sMemo2, ls_TxQry, ls_TxLoad, sKeyNum : string;
  slReceive: TStringList;
  rv_str, ls_rxxml, sQueryTemp: string;
  ErrCode: integer;
begin
  if ( Trim(Memo1.Text) = '' ) And ( Trim(Memo2.Text) = '' ) And
     ( Trim(Edit9.Text) = '' ) And ( Trim(Edit10.Text) = '' ) then
  begin
    GMessagebox('내용 입력 후 저장하세요', CDMSE);
    Memo1.SetFocus;
    Exit;
  end;

 	if Not func_EucKr_Check(Memo1, 1) then Exit;
 	if Not func_EucKr_Check(Memo2, 1) then Exit;

	sKeyNum := gKeyNumber;
  sKeyNum := StringReplace(sKeyNum, '-', '', [rfReplaceAll]);

  if Trim(Memo1.Text) <> '' then
  begin
		if GetSmsMemoLength(AnsiString(Memo1.Text)) > 80 then          
		begin
			GMessagebox('80 Byte가 넘었습니다.', CDMSE);
			Memo1.SetFocus;
			Exit;
		end;

    if ( Length(Edit9.Text) < 7 ) then
    begin
      GMessagebox('회신번호는 7자리 이상 입력하세요.', CDMSE);
      Edit9.SetFocus;
      Exit;
    end;

    if sKeyNum <> StringReplace(Trim(Edit9.Text), '-', '', [rfReplaceAll]) then
    begin
      if Application.MessageBox('회신번호와 접수된 오더의 대표번호가 다릅니다.' + #13#10 +
                                '저장하시겠습니까?', 'CDMS', MB_YESNO +
        MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
      begin
        Edit9.SetFocus;
        Exit;
      end;
    end;
  end;

  if Trim(Memo2.Text) <> '' then
  begin
		if GetSmsMemoLength(AnsiString(Memo2.Text)) > 80 then          
		begin
      GMessagebox('80 Byte가 넘었습니다.', CDMSE);
      Memo2.SetFocus;
      Exit;
    end;

    if ( Length(Edit10.Text) < 7 ) then
    begin
      GMessagebox('회신번호는 7자리 이상 입력하세요.', CDMSE);
      Edit10.SetFocus;
      Exit;
    end;

    if sKeyNum <> StringReplace(Trim(Edit10.Text), '-', '', [rfReplaceAll]) then
    begin
      if Application.MessageBox('회신번호와 접수된 오더의 대표번호가 다릅니다.' + #13#10 +
                                '저장하시겠습니까?', 'CDMS', MB_YESNO +
        MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
      begin
        Edit10.SetFocus;
        Exit;
      end;
    end;
  end;

  sEdit1 := Edit9.Text; //고가요금 회신번호
  sEdit1 := StringReplace(sEdit1, ' ', '', [rfReplaceAll]);
  sEdit1 := StringReplace(sEdit1, '-', '', [rfReplaceAll]);
  sEdit1 := StringReplace(sEdit1, '.', '', [rfReplaceAll]);
  sEdit2 := Edit10.Text; //고객취소 회신번호
  sEdit2 := StringReplace(sEdit2, ' ', '', [rfReplaceAll]);
  sEdit2 := StringReplace(sEdit2, '-', '', [rfReplaceAll]);
  sEdit2 := StringReplace(sEdit2, '.', '', [rfReplaceAll]);
  sMemo1 := Memo1.Text; //고가요금 메시지
  sMemo2 := Memo2.Text; //고객취소 메시지
  //QUERY.XML 전문을 사용하여 업데이트 한다.

  ls_TxLoad := GTx_UnitXmlLoad('QUERY.XML');
  fGet_BlowFish_Query(GSQ_BRANCH_SMS_LACK, sQueryTemp);
	ls_TxQry := Format(sQueryTemp, [En_Coding(sMemo1), En_Coding(sMemo2), En_Coding(sEdit1), En_Coding(sEdit2), gBrNo]);
  //메시지1,메시지2,회신번호1,회신번호2,지사코드

  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'WK_LACK', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

  slReceive := TStringList.Create;
  try
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
    begin
      rv_str := slReceive[0];
      if rv_str <> '' then
      begin
        ls_rxxml := rv_str;
        Application.ProcessMessages;
        Frm_Main.Frm_JON03[Jon03Tag].proc_recieve(ls_rxxml);
      end;
    end;
  finally
    FreeAndNil(slReceive);
  end;
end;

procedure TFrm_JON16.RbButton18Click(Sender: TObject);
begin
  Memo1.Text := '';
  Edit9.Text := '';
  Memo2.Text := '';
  Edit10.Text := '';
  Label53.Caption := '0 Byte';
  Label54.Caption := '0 Byte';
  Hide;
end;

end.


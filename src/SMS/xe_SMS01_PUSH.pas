unit xe_SMS01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, xe_GNL,
  Dialogs, MSXML2_TLB, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxControls, cxContainer, cxEdit, cxPCdxBarPopupMenu, cxGroupBox, cxPC,
  Vcl.StdCtrls, cxMemo, cxTextEdit, cxCheckBox, Vcl.Samples.Spin, Vcl.ComCtrls,
  Vcl.ExtCtrls, cxLabel, cxButtons, IniFiles, dxCore, cxDateUtils, cxSpinEdit,
  cxTimeEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.Imaging.jpeg, dxBarBuiltInMenu,
  dxSkinsCore, dxSkinDevExpressStyle, dxSkinscxPCPainter, cxListBox, cxRadioGroup;

type
  TFrm_SMS01 = class(TForm)
    Panel1: TPanel;
    RbButton2: TcxButton;
    cxButton1: TcxButton;
    cxLabel7: TcxLabel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    Panel2: TPanel;
    Image1: TImage;
    ed_sender_Hidden: TEdit;
    RbButton16: TcxButton;
    rbchk_re: TcxCheckBox;
    cxLabel14: TcxLabel;
    cxLabel2: TcxLabel;
    mm_message: TcxMemo;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxButton9: TcxButton;
    cxLabel5: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel15: TcxLabel;
    Memo1: TcxMemo;
    cxLabel18: TcxLabel;
    Memo2: TcxMemo;
    Memo3: TcxMemo;
    cxLabel6: TcxLabel;
    cxLabel19: TcxLabel;
    Memo5: TcxMemo;
    cxLabel96: TcxLabel;
    Memo6: TcxMemo;
    Memo7: TcxMemo;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    Memo9: TcxMemo;
    cxLabel10: TcxLabel;
    Memo10: TcxMemo;
    Memo11: TcxMemo;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    cxLabel35: TcxLabel;
    cxLabel36: TcxLabel;
    cxLabel37: TcxLabel;
    cxLabel38: TcxLabel;
    cxLabel39: TcxLabel;
    cxLabel40: TcxLabel;
    cxLabel41: TcxLabel;
    cxLabel42: TcxLabel;
    cxLabel43: TcxLabel;
    cxLabel44: TcxLabel;
    cxLabel45: TcxLabel;
    cxLabel46: TcxLabel;
    cxLabel47: TcxLabel;
    cxLabel48: TcxLabel;
    cxLabel49: TcxLabel;
    cxLabel50: TcxLabel;
    cxLabel51: TcxLabel;
    cxLabel52: TcxLabel;
    cxLabel53: TcxLabel;
    cxLabel54: TcxLabel;
    cxLabel55: TcxLabel;
    cxLabel56: TcxLabel;
    cxLabel57: TcxLabel;
    cxLabel58: TcxLabel;
    cxLabel59: TcxLabel;
    cxLabel60: TcxLabel;
    cxLabel61: TcxLabel;
    cxLabel62: TcxLabel;
    cxLabel63: TcxLabel;
    cxLabel64: TcxLabel;
    cxTabSheet2: TcxTabSheet;
    cxLabel22: TcxLabel;
    cxLabel65: TcxLabel;
    cxLabel66: TcxLabel;
    cxLabel67: TcxLabel;
    cxLabel68: TcxLabel;
    cxLabel69: TcxLabel;
    cxLabel70: TcxLabel;
    cxLabel71: TcxLabel;
    cxLabel72: TcxLabel;
    cxLabel73: TcxLabel;
    cxLabel74: TcxLabel;
    cxLabel75: TcxLabel;
    cxLabel76: TcxLabel;
    cxLabel77: TcxLabel;
    cxLabel78: TcxLabel;
    cxLabel79: TcxLabel;
    cxLabel80: TcxLabel;
    cxLabel81: TcxLabel;
    cxLabel82: TcxLabel;
    cxLabel83: TcxLabel;
    cxLabel84: TcxLabel;
    cxLabel85: TcxLabel;
    cxLabel86: TcxLabel;
    cxLabel87: TcxLabel;
    cxLabel88: TcxLabel;
    cxLabel89: TcxLabel;
    cxLabel90: TcxLabel;
    cxLabel91: TcxLabel;
    cxLabel92: TcxLabel;
    cxLabel93: TcxLabel;
    cxLabel94: TcxLabel;
    cxLabel95: TcxLabel;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    ls_sms: TListBox;
    ed_receiver: TcxMemo;
    lblBranchSMSName: TcxLabel;
    lblBranchSMSCash: TcxLabel;
    lblBranchSMSAccount: TcxLabel;
    edtBranchSMSName: TcxTextEdit;
    edtBranchSMSCash: TcxTextEdit;
    edtBranchSMSAccount: TcxTextEdit;
    pnlTitle: TPanel;
    BtnClose: TcxButton;
    pnl_Char: TcxGroupBox;
    cxGroupBox1: TcxGroupBox;
    GBSmsCashInfo: TcxGroupBox;
    cxButton12: TcxButton;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    dt_date: TcxDateEdit;
    Panel3: TPanel;
    cxLblActive: TLabel;
    sp_time1: TcxSpinEdit;
    sp_time2: TcxSpinEdit;
    ed_receiverD: TcxTextEdit;
    cbKeynumber01: TcxComboBox;
    ed_send: TcxTextEdit;
    cxGBSch: TcxGroupBox;
    cxBtnSch: TcxButton;
    cxEdtSch: TcxTextEdit;
    cxLBSch: TcxListBox;
    cxBtnSchExit: TcxButton;
    rdo_SMS: TcxRadioButton;
    rdo_Push: TcxRadioButton;
    pnlPush: TPanel;
    cxLabel1: TcxLabel;
    Shape1: TShape;
    edtPushTitle: TcxTextEdit;
    cxLabel11: TcxLabel;
    Shape2: TShape;
    edtPushMemo: TcxMemo;
    cxGroupBox4: TcxGroupBox;
    cxLabel12: TcxLabel;
    edtReciveWKList: TcxMemo;
    cxButton13: TcxButton;
    lbPushCnt: TcxLabel;
		procedure RbButton16Click(Sender: TObject);
    procedure Panel61Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mm_messageChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure RbButton2Click(Sender: TObject);
    procedure rbchk_reClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mm_messageKeyPress(Sender: TObject; var Key: Char);
    procedure ed_receiver_bakKeyPress(Sender: TObject; var Key: Char);
    procedure cbKeynumber01KeyPress(Sender: TObject; var Key: Char);
    procedure cxLabel20MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure mm_messageKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton9Click(Sender: TObject);
    procedure cxLabel23Click(Sender: TObject);
    procedure Memo1Exit(Sender: TObject);
		procedure cxButton10Click(Sender: TObject);
		procedure ed_receiverKeyPress(Sender: TObject; var Key: Char);
    procedure mm_messageKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnl_CharMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure mm_messageMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxBtnSchClick(Sender: TObject);
    procedure cxBtnSchExitClick(Sender: TObject);
    procedure cxEdtSchKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxEdtSchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxLBSchDblClick(Sender: TObject);
    procedure cxLBSchKeyPress(Sender: TObject; var Key: Char);
		procedure rdo_SMSClick(Sender: TObject);
		procedure cxButton13Click(Sender: TObject);
    procedure edtPushTitleKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure DisplayBranchSMSInfo;
    procedure proc_BrNameSet;
		function Func_KeyNumberList_Search: Boolean;
	public
		{ Public declarations }
		sMemo, sConfSlip, sWkSabun : string;
		sSendKind : string; // SMS, '' : 문자 , PUSH : PUSH
    pSMS01Dock : TUNDOCKMNG;

		procedure Proc_Init;
		procedure proc_smsRead(ls_rxxml: WideString);
		procedure proc_BranchChange;
		function RequestBranchSMSInfo(ABrNo: string; out ACash, AAccount: string): Boolean;
	end;

var
  Frm_SMS01: TFrm_SMS01;

implementation


{$R *.dfm}

uses xe_Msg, xe_Func, xe_xml, xe_Dm, xe_Query, xe_Lib, xe_packet;

procedure TFrm_SMS01.RbButton16Click(Sender: TObject);
var
	sTemp, Msg,
	ls_TxLoad, rv_str, sReceive_num, sTime, sSend_num : string;
	ls_rxxml: Widestring;
	StrList: TStringList;
	I, ErrCode: integer;
begin
	try
		if Trim(mm_message.Text) = '' then
		begin
			GMessagebox('전송메세지를 입력하세요', CDMSI);
			Exit;
		end;
		
		if ( Trim(ed_receiver.Text) = '' ) And ( Trim(ed_receiverD.Text) = '' ) then
		begin
			GMessagebox('받는이를 입력하세요', CDMSI);
			Exit;
		end;

		if ( Trim(ed_send.Text) = '' ) then
		begin
			GMessagebox('보내는이를 입력하세요', CDMSI);
			Exit;
		end;

		sSend_num := fCallNumCheck8282(ed_send.Text);

		if not NumericCheck(STANDFUNCPATHFILE, '보내는이', sSend_num) then
			Exit;

		if ed_receiver.Visible then
		begin
			sReceive_num := RemovePhone(ed_receiver.Lines.CommaText);
			if ed_receiver.Lines.Count = 1 then
			begin
				if not NumericCheck(STANDFUNCPATHFILE, '받는이', sReceive_Num) then
					Exit;
			end else
			begin
				for I := 0 to ed_receiver.Lines.Count - 1 do
				begin
					sTemp := RemovePhone(ed_receiver.Lines[I]);
					if Length(sTemp) = 11 then
					begin
						if StrToIntDef(sTemp, -1) < 1010000000 then
						begin
							GMessagebox(Format('받는이 전화번호 형식이 올바르지 않습니다.' + #13#10
								+ '받는이를 정확히 입력해 주세요.[%s]', [ed_receiver.Lines[I]]), CDMSI);
							Exit;
						end;
					end else
					if Length(sTemp) = 10 then
					begin
						if StrToIntDef(sTemp, -1) < 111000000 then
						begin
							GMessagebox(Format('받는이 전화번호 형식이 올바르지 않습니다.' + #13#10
								+ '받는이를 정확히 입력해 주세요.[%s]', [ed_receiver.Lines[I]]), CDMSI);
							Exit;
						end;
					end else
					begin
						GMessagebox(Format('받는이 전화번호 형식이 올바르지 않습니다.' + #13#10
							+ '받는이를 정확히 입력해 주세요.[%s]', [ed_receiver.Lines[I]]), CDMSI);
						Exit;
					end;
				end;
			end;
		end else
		begin
			sReceive_num := ed_receiverD.Text;
			if not NumericCheck(STANDFUNCPATHFILE, '받는이', sReceive_Num) then
				 Exit;

			sTemp := RemovePhone(sReceive_num);
			if Length(sTemp) = 11 then
			begin
				if StrToIntDef(sTemp, -1) < 1010000000 then
				begin
					GMessagebox(Format('받는이 전화번호 형식이 올바르지 않습니다.' + #13#10
						+ '받는이를 정확히 입력해 주세요.[%s]', [sTemp]), CDMSI);
					Exit;
				end;
			end else
			if Length(sTemp) = 10 then
			begin
				if StrToIntDef(sTemp, -1) < 111000000 then
				begin
					GMessagebox(Format('받는이 전화번호 형식이 올바르지 않습니다.' + #13#10
						+ '받는이를 정확히 입력해 주세요.[%s]', [sTemp]), CDMSI);
					Exit;
				end;
			end else
			begin
				GMessagebox(Format('받는이 전화번호 형식이 올바르지 않습니다.' + #13#10
					+ '받는이를 정확히 입력해 주세요.[%s]', [sTemp]), CDMSI);
				Exit;
			end;
		end;

		sTime := '';
		if rbchk_re.Checked then
			sTime := formatdatetime('yyyymmdd', dt_date.Date) + LPad(IntToStr(sp_Time1.Value), '0', 2)
				+ LPad(IntToStr(Sp_Time2.Value), '0', 2) + '00';

		Msg := StringReplace(mm_message.Text, #13#10, #10, [rfReplaceAll]);

		ls_TxLoad := GTx_UnitXmlLoad('SMS02.XML');
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString',     En_Coding(GT_USERIF.ID), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',  VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',  'WSMS0001', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ReceiverString',   En_Coding(sReceive_Num), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'SenderString',     En_Coding(sSend_num), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'MessageString',    En_Coding(Msg), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ReservationString', sTime, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'MemoString', sMemo, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', sConfSlip, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'WkSabunString', sWkSabun, [rfReplaceAll]);

		StrList := TStringList.Create;
		try
			if dm.SendSock(ls_TxLoad, StrList, ErrCode, False) then
			begin
				rv_str := StrList[0];
				if rv_str <> '' then
				begin
					ls_rxxml := rv_str;
					Application.ProcessMessages;
					proc_smsRead(ls_rxxml);
				end;
			end;
		finally
			StrList.Free;
			sMemo := '';
			sConfSlip := '';
			sWkSabun := '';
			ed_receiver.Visible := True;
			ed_receiverD.Visible := False;
		end;
	except
	end;
end;

procedure TFrm_SMS01.Panel61Click(Sender: TObject);
begin
  if Length(AnsiString(mm_message.Text)) < 90 then
    mm_message.Text := mm_message.Text + Copy((Sender as TPanel).Caption, 3, Length(AnsiString((Sender as TPanel).Caption)));
end;

procedure TFrm_SMS01.proc_smsRead(ls_rxxml: WideString);
var
  xdom: msDomDocument;
  ls_Msg_Err: string;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ls_rxxml) then
      Exit;

    ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
    if ('0000' = ls_Msg_Err) then
    begin
      GS_EnvFile.WriteString('COUNSEL', 'SMSLASTNO', ed_send.Text);
      GMessagebox('전송' + CMC006, CDMSI);
      Close;
    end else
    begin
      GMessagebox('전송에' + CMC010 + CRLF + ls_Msg_Err, CDMSE);
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_SMS01.FormActivate(Sender: TObject);
begin
  cxLblActive.Visible := True;
end;

procedure TFrm_SMS01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_SMS01.mm_messageChange(Sender: TObject);
begin
  cxLabel16.Caption := IntToStr(Length(AnsiString(mm_message.Text)));
end;

procedure TFrm_SMS01.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
  begin
    if ActiveControl.Name = 'ed_receiver' then
      ed_send.SetFocus
    else
    if ActiveControl.Name = 'ed_send' then
    begin
      if IDOK = GMessagebox(CMS011, CDMSQ) then
        RbButton16Click(nil)
      else
        Exit;
    end;
  end;
end;

procedure TFrm_SMS01.FormShow(Sender: TObject);
var iCnt, i : integer;
begin
	Proc_Init;

	if sSendKind = 'PUSH' then
	begin
{		pnlTitle.Caption := '     PUSH를 발송 합니다.';
		cxGroupBox3.Top := 290;
		pnlPush.Visible := True; }
		rdo_PUSH.checked := True;
		iCnt := 0;
		for i := 0 to edtReciveWKList.Lines.Count -1 do
		begin
			if edtReciveWKList.Lines[i] <> '' then
			begin
				inc(iCnt);
			end;
		end;
		lbPushCnt.Caption := IntToStr(iCnt) + '명';
	end
	else
	begin
{		pnlTitle.Caption := '    SMS 전송을 합니다.';
		cxGroupBox3.Top := 183;
		pnlPush.Visible := False;   }
		rdo_SMS.checked := True;
		if sSendKind = '' then
		begin
			rdo_PUSH.visible := False;
			rdo_SMS.visible := False;
		end;
	end;
	
end;

procedure TFrm_SMS01.Proc_Init;
Var sSend : String;
begin
	try
		pnlTitle.Caption := '    SMS 전송을 합니다.';
		cxGroupBox3.Top := 183;

		lbPushCnt.Caption := '명';
		pnlPush.Visible := False;
		edtPushTitle.Text := '';
		edtPushMemo.Clear;
		
		rbchk_re.Checked := False;
    rbchk_re.OnClick(self);
    if ls_sms.Items.Count = 0 then
    begin
      ed_receiver.Text := '';
      cxLabel16.Caption := '0';
		end else
    if ls_sms.Items.Count = 1 then
    begin
      ed_receiver.Text := ls_sms.Items.Strings[0];
    end else
    begin
      ed_receiver.Lines := ls_sms.Items;
    end;

    if Trim(ed_send.Text) = '' then
    begin
      sSend := GS_EnvFile.ReadString('COUNSEL', 'SMSLASTNO', ed_send.Text);
      if cbKeynumber01.Properties.Items.IndexOf(sSend) > 0 then
        ed_Send.Text := sSend;
    end;
  except
  end;
	DisplayBranchSMSInfo;
end;

procedure TFrm_SMS01.RbButton2Click(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TcxMemo) and (TcxMemo(Components[i]).Tag =
      TcxButton(Sender).Tag) then
    begin
      if Trim(TcxMemo(Components[i]).Text) <> '' then
      begin
				if sSendKind = 'PUSH' then
				begin
					edtPushMemo.Lines.Add(TcxMemo(Components[i]).Text);
				end
				else
				begin
					mm_message.Text := TcxMemo(Components[i]).Text;
					cxLabel16.Caption := IntToStr(GetSmsMemoLength(AnsiString(mm_message.Text)));
				end;
      end;
    end;
  end;
end;

procedure TFrm_SMS01.rbchk_reClick(Sender: TObject);
begin
  if Rbchk_re.Checked then
  begin
    dt_date.Date := now;
    sp_Time1.Value := StrToIntDef(formatdatetime('hh', now), 0);
    sp_time2.Value := StrToIntDef(Copy(formatdatetime('hh:mm', now), 4, 2), 0);
    dt_date.Enabled := True;
    sp_time1.Enabled := True;
    sp_time2.Enabled := True;
    dt_date.SetFocus;
  end else
  begin
		dt_date.Enabled := False;
    sp_time1.Enabled := False;
    sp_time2.Enabled := False;
  end;
end;

procedure TFrm_SMS01.rdo_SMSClick(Sender: TObject);
begin
	if TcxRadioButton(sender).Checked then
	begin
		if TcxRadioButton(sender).Tag = 0 then
		begin
			pnlTitle.Caption := '    SMS 전송을 합니다.';
			pnlPush.Visible := False;
			cxButton10.Enabled := True;
		end
		else
		begin
			pnlTitle.Caption := '     PUSH를 발송 합니다.';
			pnlPush.Visible := True;
			pnlPush.Top := 0;
			pnlPush.Left := 0;
			edtPushTitle.SetFocus;
			cxButton10.Enabled := False;
		end;
	end;
end;

procedure TFrm_SMS01.FormCreate(Sender: TObject);
var
  ln_envfile: TIniFile;
  Save: LongInt; // 폼타이틀 제거용.
  i : Integer;
begin
	try
    // 날짜형식이 'yy/mm/dd'일경우 오류 발생 가능성으로 인해 자체 Display 포맷 변경
    for i := 0 to ComponentCount - 1 do
    begin
      if Components[i] is TcxDateEdit then
      begin
        (Components[i] as TcxDateEdit).Properties.DisplayFormat := 'yyyy/mm/dd';
        (Components[i] as TcxDateEdit).Properties.EditFormat    := 'yyyy/mm/dd';
      end;
    end;
  except
  end;

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

  try
    Memo1.Properties.MaxLength := 90;
    Memo2.Properties.MaxLength := 90;
    Memo3.Properties.MaxLength := 90;
    Memo5.Properties.MaxLength := 90;
    Memo6.Properties.MaxLength := 90;
    Memo7.Properties.MaxLength := 90;
    Memo9.Properties.MaxLength := 90;
    Memo10.Properties.MaxLength := 90;
    Memo11.Properties.MaxLength := 90;
    ln_envfile := TIniFile.Create(DBDIRECTORY + 'SMS.Ini');
    Memo1.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo1', ''), '㏆', #13#10, [rfReplaceAll]);
    Memo2.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo2', ''), '㏆', #13#10, [rfReplaceAll]);
    Memo3.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo3', ''), '㏆', #13#10, [rfReplaceAll]);
    Memo5.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo5', ''), '㏆', #13#10, [rfReplaceAll]);
    Memo6.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo6', ''), '㏆', #13#10, [rfReplaceAll]);
    Memo7.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo7', ''), '㏆', #13#10, [rfReplaceAll]);
    Memo9.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo9', ''), '㏆', #13#10, [rfReplaceAll]);
    Memo10.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo10', ''), '㏆', #13#10, [rfReplaceAll]);
    Memo11.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo11', ''), '㏆', #13#10, [rfReplaceAll]);
    ln_envfile.Free;
    mm_message.Properties.MaxLength := 110;

		proc_BrNameSet;

		sSendKind := '';

	except
  end;
end;

procedure TFrm_SMS01.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_SMS01.FormDestroy(Sender: TObject);
begin
  Frm_SMS01 := Nil;
end;

procedure TFrm_SMS01.mm_messageKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_SMS01.mm_messageKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Len: Integer;
begin

{  Len := GetSmsMemoLength(AnsiString(TMemo(Sender).Text));

  if TMemo(Sender).Text = '' then
    TcxMemo(Sender).Properties.MaxLength := 110
  else
    TcxMemo(Sender).Properties.MaxLength := 90 + GetSeperatorCount(TMemo(Sender).Text, #13#10);

  if TcxMemo(Sender) = mm_message then
    cxLabel16.Caption := IntToStr(Len);}
end;

procedure TFrm_SMS01.mm_messageMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pnl_Char.Tag := TcxMemo(Sender).Tag;
end;

procedure TFrm_SMS01.ed_receiver_bakKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) in [8, 48..57] then
  else
    Key := #0;
end;

procedure TFrm_SMS01.cbKeynumber01KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) in [8, 13, 48..57, 17, 22] then
	else
    Key := #0;
end;

procedure TFrm_SMS01.cxLabel20MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxLabel(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SMS01.mm_messageKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Ord(key) = VK_F5 then
  begin
    pnl_Char.Left := (frm_SMS01.Width - pnl_Char.Width) div 2;
    pnl_Char.Top := (frm_SMS01.Height - pnl_Char.Height) div 2;
    pnl_Char.Tag := TcxMemo(Sender).tag;
    pnl_Char.Visible := True;
    pnl_Char.BringToFront;
  end;
end;

procedure TFrm_SMS01.cxButton9Click(Sender: TObject);
begin
  pnl_Char.Left := (frm_SMS01.Width - pnl_Char.Width) div 2;
  pnl_Char.Top := (frm_SMS01.Height - pnl_Char.Height) div 2;
  pnl_Char.Visible := True;
  pnl_Char.BringToFront;
end;

procedure TFrm_SMS01.cxEdtSchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var i : Integer;
begin
  SetDebugeWrite('TFrm_SMS01.cxTSearchMainTelKeyDown');
  if Key = VK_BACK then
  begin
    if (Length(cxEdtSch.Text) <= 1) then
    begin
      cxLBSch.Items.Clear;
      cxLBSch.Items.BeginUpdate;
      try
        for i := 1 to cbKeynumber01.Properties.Items.Count - 1 do
        begin
          if cxLBSch.Items.IndexOf(cbKeynumber01.Properties.Items[i]) < 0 then
           cxLBSch.Items.Add(cbKeynumber01.Properties.Items[i]);
        end;
      finally
        cxLBSch.Items.EndUpdate;
      end;
    end;
  end else
  if Key = VK_DOWN then
  begin
    if cxLBSch.Visible then cxLBSch.SetFocus;
  end;
end;

procedure TFrm_SMS01.cxEdtSchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  SetDebugeWrite('Frm_JON01.cxTSearchMainTelKeyUp');
  if (key <> 229) then
  begin
  	if Trim(cxEdtSch.Text) = '' then  Exit;

    // 대표번호로 조회..
   	if not Func_KeyNumberList_Search then Exit;
  end;
end;

procedure TFrm_SMS01.cxLabel23Click(Sender: TObject);
var
  cText: string;
  cLine: string;
  i, p: Integer;
  s : AnsiString;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TcxMemo) and (TcxMemo(Components[i]).Tag = pnl_Char.Tag) And ( TcxMemo(Components[i]).Tag <> 0 ) then
    begin
      cLine := TcxLabel(Sender).Caption;
      p := TcxMemo(Components[i]).SelStart + TcxMemo(Components[i]).SelLength + 1;
      cText := TcxMemo(Components[i]).Text;
      Insert(cLine, cText, p);
      TcxMemo(Components[i]).Text := cText;
      TcxMemo(Components[i]).SelStart := p + Length(cLine) - 1;

      if TcxMemo(Components[i]).Tag <> 0 then
      begin
        if fCheckMaxLength(TcxMemo(Components[i]), 90) then
        begin
          s := TcxMemo(Components[i]).Text;
          s := Copy(s, 1, 90);
          TcxMemo(Components[i]).Text := s;
        end;
      end;
    end;
  end;
end;

procedure TFrm_SMS01.cxLBSchDblClick(Sender: TObject);
begin
	ed_send.Text := cxLBSch.Items[cxLBSch.ItemIndex];
  cxBtnSchExit.Click;
end;

procedure TFrm_SMS01.cxLBSchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
  	ed_send.Text := cxLBSch.Items[cxLBSch.ItemIndex];
    cxBtnSchExit.Click;
  end;
end;

procedure TFrm_SMS01.Memo1Exit(Sender: TObject);
var
  ln_envfile: TIniFile;
begin
  try
    ln_envfile := TIniFile.Create(DBDIRECTORY + 'SMS.Ini');
    ln_envfile.WriteString('USER_1', TMemo(Sender).Name, StringReplace(TMemo(Sender).Text, #13#10, '㏆', [rfReplaceAll]));
    ln_envfile.Free;
  except
  end;
end;

procedure TFrm_SMS01.BtnCloseClick(Sender: TObject);
begin
	Close;
end;

procedure TFrm_SMS01.cxButton10Click(Sender: TObject);
var
  ln_envfile: TIniFile;
begin
  try
    ln_envfile := TIniFile.Create(DBDIRECTORY + 'SMS.Ini');
    ln_envfile.WriteString('USER_1', 'Memo1', StringReplace(Memo1.Text, #13#10, '㏆', [rfReplaceAll]));
    ln_envfile.WriteString('USER_1', 'Memo2', StringReplace(Memo2.Text, #13#10, '㏆', [rfReplaceAll]));
    ln_envfile.WriteString('USER_1', 'Memo3', StringReplace(Memo3.Text, #13#10, '㏆', [rfReplaceAll]));
    ln_envfile.WriteString('USER_1', 'Memo5', StringReplace(Memo5.Text, #13#10, '㏆', [rfReplaceAll]));
    ln_envfile.WriteString('USER_1', 'Memo6', StringReplace(Memo6.Text, #13#10, '㏆', [rfReplaceAll]));
    ln_envfile.WriteString('USER_1', 'Memo7', StringReplace(Memo7.Text, #13#10, '㏆', [rfReplaceAll]));
    ln_envfile.WriteString('USER_1', 'Memo9', StringReplace(Memo9.Text, #13#10, '㏆', [rfReplaceAll]));
    ln_envfile.WriteString('USER_1', 'Memo10', StringReplace(Memo10.Text, #13#10, '㏆', [rfReplaceAll]));
    ln_envfile.WriteString('USER_1', 'Memo11', StringReplace(Memo11.Text, #13#10, '㏆', [rfReplaceAll]));
    ln_envfile.Free;
  except
  end;
end;

procedure TFrm_SMS01.cxButton11Click(Sender: TObject);
begin
  ed_receiver.Visible := True;
	ed_receiverD.Visible := False;
  Close;
end;

procedure TFrm_SMS01.cxButton12Click(Sender: TObject);
begin
  pnl_Char.Visible := False;
end;

procedure TFrm_SMS01.cxButton13Click(Sender: TObject);
var
	sTmp : string;
	ls_rxxml: Widestring;
	StrList: TStringList;
	I, ErrCode, iCnt: integer;

	sParam, XmlData, ErrMsg : String;     // 
begin
	SetDebugeWrite('TFrm_BTN.btn_2_1Click');
	Try
		if Trim(edtPushTitle.Text) = '' then
		begin
			GMessagebox('PUSH제목을 입력하세요', CDMSI);
			edtPushTitle.SetFocus;
			Exit;
		end;
		if Trim(edtPushMemo.Text) = '' then
		begin
			GMessagebox('PUSH내용을 입력하세요', CDMSI);
			edtPushMemo.SetFocus;
			Exit;
		end;
		
		if Trim(edtReciveWKList.Text) = ''  then
		begin
			GMessagebox('PUSH대상이 없습니다.', CDMSI);
			Exit;
		end;

		sParam := '';
		sParam := GT_USERIF.LV; //레벨
		sParam := sParam + '│' + '1';          //타입-  전체 0 , 선택 1
		sParam := sParam + '│' + GT_USERIF.ShareNo; //로그인 사용자 연합코드
		sParam := sParam + '│' + GT_USERIF.HD;      //로그인 사용자 본사코드 
		sParam := sParam + '│' + GT_USERIF.BR;      //로그인 사용자 지사코드 
		sParam := sParam + '│' + GT_USERIF.NM;      //로그인 사용자 유저명 
		sParam := sParam + '│' + Trim(edtPushTitle.Text);  //제목 
		sTmp := edtPushMemo.Text;
		sTmp := ReplaceAll(sTmp, #$D#$A, '¶');
		sTmp := ReplaceAll(sTmp, #13#10, '¶');
		sTmp := ReplaceAll(sTmp, #10#13, '¶');
		sParam := sParam + '│' + Trim(sTmp);  //내용 
		sParam := sParam + '│' + '2';  //공지 0 , 푸시 1, 공지+푸시 2  

		iCnt := 0;
		for i := 0 to edtReciveWKList.Lines.Count -1 do
		begin
			if edtReciveWKList.Lines[i] <> '' then
			begin
				if i = 0 then sTmp := edtReciveWKList.Lines[i]
				else 				  sTmp := sTmp + ',' + edtReciveWKList.Lines[i];
				inc(iCnt);
			end;
		end;
		sParam := sParam + '│' + IntToStr(iCnt);  //대상인원 
		sParam := sParam + '│' + sTmp;  //대상사번
		
		if not RequestBase(GetCallable05('WK_NOTICE_INSERT', 'MNG_WK.WK_NOTICE_INSERT', sParam), XmlData, ErrCode, ErrMsg) then
		begin
			GMessageBox(Format('PUSH 발송오류 [%d] %s', [ErrCode, ErrMsg]), CDMSI);
			Exit;
		end;
		GMessagebox('Push가 정상적으로 발송되었습니다.', CDMSI);
		Close;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_SMS01.cxBtnSchClick(Sender: TObject);
Var i : Integer;
begin
  cxGBSch.Left := 61;
  cxGBSch.Top  := 286;
  cxGBSch.Visible := True;

  cxEdtSch.Clear;
  cxLBSch.Items.Clear;
  cxLBSch.Items.BeginUpdate;
  try
    for i := 1 to cbKeynumber01.Properties.Items.Count - 1 do
    begin
      if cxLBSch.Items.IndexOf(cbKeynumber01.Properties.Items[i]) < 0 then
         cxLBSch.Items.Add(cbKeynumber01.Properties.Items[i]);
    end;
  finally
    cxLBSch.Items.EndUpdate;
	end;

  cxEdtSch.SetFocus;
end;

procedure TFrm_SMS01.cxBtnSchExitClick(Sender: TObject);
begin
  cxGBSch.Visible := False;
end;

procedure TFrm_SMS01.edtPushTitleKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then edtPushMemo.SetFocus;
end;

procedure TFrm_SMS01.ed_receiverKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) in [8, 13, 48..57, 17, 22] then
  else
    Key := #0;
end;

procedure TFrm_SMS01.DisplayBranchSMSInfo;
var
  Cash, Account: string;
begin
	if Not pSMS01Dock.bUnDock then pSMS01Dock.GUBUN := GT_SEL_BRNO.GUBUN;
  if Not pSMS01Dock.bUnDock then pSMS01Dock.BrNo  := GT_SEL_BRNO.BrNo;
  if Not pSMS01Dock.bUnDock then pSMS01Dock.BrName:= GT_SEL_BRNO.BrName;

	GBSmsCashInfo.Visible := pSMS01Dock.GUBUN = '1';

	if pSMS01Dock.GUBUN = '1' then
  begin
		if not RequestBranchSMSInfo(pSMS01Dock.BrNo, Cash, Account) then Exit;

    edtBranchSMSName.Text := Format('%s(%s)', [pSMS01Dock.BrName, pSMS01Dock.BrNo]);
    edtBranchSMSCash.Text := FormatFloat('#,##0.#', StrToFloatDef(Cash, 0));
    edtBranchSMSAccount.Text := Account;
    lblBranchSMSAccount.Visible := Account <> '';
    edtBranchSMSAccount.Visible := Account <> '';
  end;
end;

function TFrm_SMS01.RequestBranchSMSInfo(ABrNo: string; out ACash,
  AAccount: string): Boolean;
var
  xdom: msDomDocument;
  ls_ClientKey, ls_Msg_Err, sQueryTemp : string;
  ls_TxQry, ls_TxLoad: string;
  ReceiveStr: string;
  StrList, ls_Rcrd: TStringList;
  ErrCode: integer;
  lst_Result: IXMLDomNodeList;
begin
  Result := False;

  ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
  fGet_BlowFish_Query(GSQ_SMS_CASHINFO, sQueryTemp);
	ls_TxQry := Format(sQueryTemp, [ABrNo]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CASH0001', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

  StrList := TStringList.Create;
  Screen.Cursor := crHandPoint;
  try
    if dm.SendSock(ls_TxLoad, StrList, ErrCode, False) then
    begin
      ReceiveStr := StrList[0];

      if trim(ReceiveStr) <> '' then
      begin
        Application.ProcessMessages;
        xdom := ComsDomDocument.Create;
        try
          if not xdom.loadXML(ReceiveStr) then Exit;

          ls_MSG_Err := GetXmlErrorCode(ReceiveStr);
          if ('0000' = ls_MSG_Err) then
          begin
            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
            ls_Rcrd := TStringList.Create;
            try
              GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);

              ACash := ls_Rcrd[0];
              AAccount := ls_Rcrd[1];

              Result := True;
            finally
              ls_Rcrd.Free;
            end;
          end else
          begin
            GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
          end;
        finally
          xdom := Nil;
        end;
      end;
    end;
  finally
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_SMS01.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(frm_SMS01.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SMS01.pnl_CharMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ReleaseCapture;
  PostMessage(pnl_Char.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SMS01.proc_BranchChange;
begin
  DisplayBranchSMSInfo;
end;

procedure TFrm_SMS01.proc_BrNameSet;
var
  StrList: TStringList;
begin
  if Not pSMS01Dock.bUnDock then pSMS01Dock.GUBUN := GT_SEL_BRNO.GUBUN;
  if Not pSMS01Dock.bUnDock then pSMS01Dock.HdNo  := GT_SEL_BRNO.HdNo;
  if Not pSMS01Dock.bUnDock then pSMS01Dock.BrNo  := GT_SEL_BRNO.BrNo;
  if Not pSMS01Dock.bUnDock then pSMS01Dock.BrName:= GT_SEL_BRNO.BrName;

	StrList := TStringList.Create;
  cbKeynumber01.Tag := 1;
  try
    if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (pSMS01Dock.GUBUN <> '1') then
    begin
      GetBrTelList(pSMS01Dock.HDNO, StrList);
      cbKeynumber01.Properties.Items.Assign(StrList);
    end else
    begin
			GetBrTelList(pSMS01Dock.BrNo, StrList);
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

function TFrm_SMS01.Func_KeyNumberList_Search: Boolean;
var
	i : Integer;
	bRlt: boolean;
	sKey: string;
begin
  SetDebugeWrite('TFrm_SMS01.Func_KeyNumberList_Search');
  try
    bRlt := False;
    cxLBSch.Items.Clear;

    sKey := RemoveAll(cxEdtSch.text, '-'); // 조회할 대표번호 읽기.
    cxLBSch.Items.BeginUpdate;
    try
      for i := 1 to cbKeynumber01.Properties.Items.Count - 1 do
      begin
        if (Pos(sKey, cbKeynumber01.Properties.Items[i]) > 0) then
        begin // 지사명  찾기..
          if cxLBSch.Items.IndexOf(cbKeynumber01.Properties.Items[i]) < 0 then
           cxLBSch.Items.Add(cbKeynumber01.Properties.Items[i]);
          bRlt := True;
        end;
      end;
    finally
      cxLBSch.Items.EndUpdate;
    end;
    Result := bRlt;
  Except
    on e: exception do
    begin
      Log('Func_KeyNumberList_Search Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Func_KeyNumberList_Search Error :' + E.Message);
    end;
  end;
end;

end.


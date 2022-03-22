unit xe_BTN02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, cxControls,
  cxContainer, cxEdit, cxCheckBox, cxCurrencyEdit, Vcl.StdCtrls, cxRadioGroup, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxMemo, Vcl.ExtCtrls, cxLabel,
  cxButtons, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  Tfrm_BTN02 = class(TForm)
    pnlCallBellWK: TPanel;
    btn_2_7: TcxButton;
    pnlTitle: TPanel;
    cxLblActive: TLabel;
    BtnClose: TcxButton;
    clbCuSeq: TcxLabel;
    PnlCallBellCust: TPanel;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape12: TShape;
    Shape11: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape19: TShape;
    Shape34: TShape;
    Shape3: TShape;
    Shape15: TShape;
    meoCallBellWkMemo: TcxMemo;
    btn_2_6: TcxButton;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cboBranch_2: TcxComboBox;
    cboStatus_2_1: TcxComboBox;
    edtCallBellWkID: TcxTextEdit;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    edtCallBellWkHP: TcxTextEdit;
    rb_Declining_2: TcxRadioButton;
    rb_Straight_2: TcxRadioButton;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    edtCalValue_2: TcxCurrencyEdit;
    cxLabel16: TcxLabel;
    edtBankNumber: TcxTextEdit;
    edtBankOwner: TcxTextEdit;
    lbBankNumber: TcxLabel;
    lbBankOwner: TcxLabel;
    btnIdCheck: TcxButton;
    edtCallBellWkName: TcxTextEdit;
    cxLabel20: TcxLabel;
    cboBankName: TcxComboBox;
    cboBankCode: TcxComboBox;
    cxLabel5: TcxLabel;
    cboKeynumber02_1: TcxComboBox;
    cxLabel46: TcxLabel;
    chkUpsoCancel: TcxCheckBox;
    cxLabel47: TcxLabel;
    procedure FormActivate(Sender: TObject);
		procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure BtnCloseClick(Sender: TObject);
    procedure cboBranch_2PropertiesChange(Sender: TObject);
    procedure edtCallBellWkHPKeyPress(Sender: TObject; var Key: Char);
    procedure edtCallBellWkHPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
		procedure btn_2_6Click(Sender: TObject);
    procedure edtCallBellWkIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnIdCheckClick(Sender: TObject);
    procedure edtCallBellWkNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cboStatus_2_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cboStatus_2_1PropertiesChange(Sender: TObject);
    procedure rb_Straight_2Click(Sender: TObject);
    procedure rb_Straight_2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rb_Declining_2Click(Sender: TObject);
    procedure rb_Declining_2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCalValue_2Exit(Sender: TObject);
    procedure edtCalValue_2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCalValue_2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cboBankNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cboBankNamePropertiesChange(Sender: TObject);
    procedure lbBankNumberClick(Sender: TObject);
    procedure lbBankOwnerClick(Sender: TObject);
    procedure edtBankNumberEnter(Sender: TObject);
    procedure edtBankNumberExit(Sender: TObject);
    procedure edtBankNumberFocusChanged(Sender: TObject);
    procedure edtBankNumberKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtBankNumberPropertiesChange(Sender: TObject);
    procedure edtBankOwnerPropertiesChange(Sender: TObject);
    procedure edtBankOwnerKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtBankOwnerFocusChanged(Sender: TObject);
    procedure edtBankOwnerExit(Sender: TObject);
    procedure edtBankOwnerEnter(Sender: TObject);
    procedure edtCallBellWkIDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meoCallBellWkMemoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDeactivate(Sender: TObject);
  private
    { Private declarations }
		// 선택된 지사정보에서 지사코드호를 추출 한다.
		function Proc_BRNOSearch: string;
		// 선택된 지사정보에서 본사코드를 추출 한다.
		function Proc_HDNOSearch: string;
	public
    { Public declarations }
		procedure proc_Init;
	end;

var
	frm_BTN02: Tfrm_BTN02;

implementation

{$R *.dfm}

uses xe_BTN, xe_Func, xe_GNL, xe_GNL2, xe_Msg, xe_packet, xe_Xml, xe_Query, xe_Dm, xe_Flash;

procedure Tfrm_BTN02.BtnCloseClick(Sender: TObject);
begin
	close;
end;

procedure Tfrm_BTN02.btnIdCheckClick(Sender: TObject);
var
	ls_TxQry, ls_TxLoad, sId, sQueryTemp : string; // XML File Load
	slReceive: TStringList;
	rv_str, ls_rxxml: string;
	ErrCode: integer;
begin
	sId := Trim(edtCallBellWkID.Text);
	if Length(sId) < 6 then
  begin
		GMessagebox('아이디는 6자이상 입력하셔야 합니다.', CDMSE);
		edtCallBellWkID.SetFocus;
		exit;
	end;
	ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
	fGet_BlowFish_Query(GSQ_MEMBER_ID_CHECK, sQueryTemp);
	ls_TxQry := Format(sQueryTemp, [UpperCase(sId)]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', self.Caption + '3', [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
	slReceive := TStringList.Create;
	try
		if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
		begin
			rv_str := slReceive[0];
			if rv_str <> '' then
      begin
				ls_rxxml := rv_str;

				if (0 < GetXmlRecordCount(ls_rxxml)) then
				begin
					GMessagebox('사용할수 없는 아이디 입니다.' + #13#10 +
						'다른 아이디를 사용하세요.', CDMSE);
					edtCallBellWkID.SetFocus;	
					btnIdCheck.Enabled := True;
				end	else
				begin
					GMessagebox('사용가능한 아이디 입니다.', CDMSE);
					edtCallBellWkID.Hint := edtCallBellWkID.Text;
					btnIdCheck.Enabled := False;
					edtCallBellWkName.SetFocus;
				end;
			end;
    end;
  finally
    FreeAndNil(slReceive);
  end;
end;

procedure Tfrm_BTN02.btn_2_6Click(Sender: TObject);
var	XmlData, ErrMsg, param : string;
		ErrCode : Integer;
		sBrNo, sHdNo, sTmp : string;
begin
	SetDebugeWrite('TFrm_BTN.btn_2_1Click');
	Try
		if cboBranch_2.Text = '' then 
		begin
			GMessagebox(Format('소속지사를 선택하여 주십시오.', [ErrCode, ErrMsg]), CDMSE);
			cboBranch_2.setFocus;
			exit;
		end;   
		if cboKeynumber02_1.Text = '' then 
		begin
			GMessagebox(Format('대표번호를 선택하여 주십시오.', [ErrCode, ErrMsg]), CDMSE);
			cboKeynumber02_1.setFocus;
			exit;
		end;   
		if (pnlCallBellWK.Hint = 'insert') then 
		begin
			if (btnIdCheck.enabled) then
			begin
				GMessagebox(Format('ID 중복체크를 하여주십시오.', [ErrCode, ErrMsg]), CDMSE);
				btnIdCheck.setFocus;
				exit;
			end;
		end;
		if edtCallBellWkName.Text = '' then
		begin
			GMessagebox(Format('영업사원명을 입력하여 주십시오.', [ErrCode, ErrMsg]), CDMSE);
			edtCallBellWkName.setFocus;
			exit;
		end;
		if Trim(CallToStr(edtCallBellWkHP.Text)) = '' then
		begin
			GMessagebox(Format('영업사원 휴대폰을 입력하여 주십시오.', [ErrCode, ErrMsg]), CDMSE);
			edtCallBellWkHP.setFocus;
			exit;
		end;
		if (Length(Trim(CallToStr(edtCallBellWkHP.Text))) > 11) or (Length(Trim(CallToStr(edtCallBellWkHP.Text))) < 10) then
		begin
			GMessagebox(Format('영업사원 휴대폰번호 자릿수 오류' + #13#10 + '영업사원 휴대폰번호를 정확히 입력하여 주십시오.', [ErrCode, ErrMsg]), CDMSE);
			edtCallBellWkHP.setFocus;
			exit;
		end;

		if rb_Straight_2.checked then
		begin
			if edtCalValue_2.Value > 5000 then
			begin
				edtCalValue_2.Value := 5000;
				GMessagebox('일정금액으로 설정 시 최대 5,000원을 넘을 수 없습니다.', CDMSE);
				edtCalValue_2.SetFocus;
				Exit;
			end;
		end else
    if rb_Declining_2.Checked then
		begin
			if edtCalValue_2.Value > 50 then
			begin
				edtCalValue_2.Value := 50;
				GMessagebox('매출비율로 설정 시 최대 50%을 넘을 수 없습니다.', CDMSE);
				edtCalValue_2.SetFocus;
				Exit;
			end;
		end;

   	if Not func_EucKr_Check(edtCallBellWkName, 0) then Exit;
  	if Not func_EucKr_Check(edtBankOwner, 0) then Exit;
  	if Not func_EucKr_Check(meoCallBellWkMemo, 0) then Exit;

		param := '';
		sBrNo := Proc_BRNOSearch;
		sHdNo := Proc_HDNOSearch;
//		sKeyNumber := Proc_MainKeyNumberSearch;
		Param := sHdNo;
		Param := Param + '│' + sBrNo;
		Param := Param + '│' + Trim(edtCallBellWkID.Text);
		Param := Param + '│' + Trim(edtCallBellWkName.Text);
		if cboStatus_2_1.ItemIndex = 0 then Param := Param + '│' + '2' else Param := Param + '│' + '9';
		Param := Param + '│' + Trim(CallToStr(edtCallBellWkHP.Text));
		if rb_Declining_2.Checked then Param := Param + '│' + '2' else Param := Param + '│' + '1';
		Param := Param + '│' + StringReplace(Trim(edtCalValue_2.Text), ',', '', [rfReplaceAll]);
		Param := Param + '│' + Trim(cboBankCode.Text);
		Param := Param + '│' + Trim(edtBankNumber.Text);
		Param := Param + '│' + Trim(edtBankOwner.Text);

		sTmp := meoCallBellWkMemo.Text;
		sTmp := ReplaceAll(sTmp, #$D#$A, '¶');
		sTmp := ReplaceAll(sTmp, #13#10, '¶');
		sTmp := ReplaceAll(sTmp, #10#13, '¶');
		Param := Param + '│' + Trim(sTmp);
		Param := Param + '│' + Trim(CallToStr(cboKeynumber02_1.Text));
		if chkUpsoCancel.checked then
			Param := Param + '│' + 'y'   //업소해지권한 True
		else
			Param := Param + '│' + 'n';   //업소해지권한 False

		btn_2_6.Enabled := False;
		if pnlCallBellWK.Hint = 'insert' then
		begin
			if not RequestBase(GetCallable06('SET_MEMBER_SAVE', 'BIZ_CUST.SET_MEMBER_SAVE', param), XmlData, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('영업사원등록 시 오류가 발생하였습니다.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				btn_2_6.Enabled := True;
				exit;
			end;
			GMessagebox('영업사원이 등록되었습니다.', CDMSI);
		end	else
    if pnlCallBellWK.Hint = 'update' then
		begin
			if cboStatus_2_1.ItemIndex = 0 then	Param := '1' + '│' + Param else Param := '2' + '│' + Param;
			if not RequestBase(GetCallable06('SET_MEMBER_UPDATE', 'BIZ_CUST.SET_MEMBER_UPDATE', param), XmlData, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('영업사원수정 시 오류가 발생하였습니다.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				btn_2_6.Enabled := True;
				exit;
			end;
			GMessagebox('영업사원이 수정되었습니다.', CDMSI);
		end;
		
		btn_2_6.Enabled := True;
		if self.Tag = 0 then //영업사원에서 열었을때만 갱신 조회
			frm_BTN.btn_2_1.Click;
		BtnClose.Click;
	except
		on E: Exception do
		begin
			btn_2_6.Enabled := True;
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_BTN02.cboBankNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then edtBankNumber.SetFocus;
end;

procedure Tfrm_BTN02.cboBankNamePropertiesChange(Sender: TObject);
begin
	cboBankCode.ItemIndex := cboBankName.ItemIndex;
end;

procedure Tfrm_BTN02.cboBranch_2PropertiesChange(Sender: TObject);
var i : integer;
	sBrNo : string;
begin
	if cboBranch_2.Tag = 10 then exit;
	sBrNo := Proc_BRNOSearch;
	cboKeynumber02_1.Properties.Items.Clear;
	for i := 0 to Frm_BTN.Scb_CallBell_KeyNumber.count -1 do
	begin
		if sBrNo = Frm_BTN.Scb_CallBell_BrNo[i] then
			cboKeynumber02_1.Properties.Items.Add(StrToCall(Frm_BTN.Scb_CallBell_KeyNumber[i]));
	end;
	cboKeynumber02_1.ItemIndex := 0;
end;

procedure Tfrm_BTN02.cboStatus_2_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then rb_Straight_2.SetFocus;
end;

procedure Tfrm_BTN02.cboStatus_2_1PropertiesChange(Sender: TObject);
begin
	if (cboStatus_2_1.ItemIndex = 0) then
		btn_2_6.Enabled := True;
end;

procedure Tfrm_BTN02.edtBankNumberEnter(Sender: TObject);
begin
	lbBankNumber.Visible := False;
end;

procedure Tfrm_BTN02.edtBankNumberExit(Sender: TObject);
begin
	lbBankNumber.Visible := (edtBankNumber.Text = '');
end;

procedure Tfrm_BTN02.edtBankNumberFocusChanged(Sender: TObject);
begin
	lbBankNumber.Visible := ( Not edtBankNumber.Focused ) And (edtBankNumber.Text = '');
end;

procedure Tfrm_BTN02.edtBankNumberKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then edtBankOwner.SetFocus;
end;

procedure Tfrm_BTN02.edtBankNumberPropertiesChange(Sender: TObject);
begin
	if ( Not edtBankNumber.Focused ) then
		lbBankNumber.Visible := (edtBankNumber.Text = ''); // 은행계좌 입력 잔상.
end;

procedure Tfrm_BTN02.edtBankOwnerEnter(Sender: TObject);
begin
	lbBankOwner.Visible := False;
end;

procedure Tfrm_BTN02.edtBankOwnerExit(Sender: TObject);
begin
	lbBankOwner.Visible := (edtBankOwner.Text = '');
end;

procedure Tfrm_BTN02.edtBankOwnerFocusChanged(Sender: TObject);
begin
	lbBankOwner.Visible := ( Not edtBankOwner.Focused ) And (edtBankOwner.Text = '');
end;

procedure Tfrm_BTN02.edtBankOwnerKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then meoCallBellWkMemo.SetFocus;
end;

procedure Tfrm_BTN02.edtBankOwnerPropertiesChange(Sender: TObject);
begin
	if ( Not edtBankOwner.Focused ) then
		lbBankOwner.Visible := (edtBankOwner.Text = ''); // 예금주 입력 잔상.
end;

procedure Tfrm_BTN02.edtCallBellWkHPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then cboStatus_2_1.SetFocus;
end;

procedure Tfrm_BTN02.edtCallBellWkHPKeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else
		key := #0;
end;

procedure Tfrm_BTN02.edtCallBellWkIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if edtCallBellWkID.Text <> edtCallBellWkID.Hint then
		btnIdCheck.Enabled := True;
	if key = vk_Return then btnIdCheck.SetFocus;
end;

procedure Tfrm_BTN02.edtCallBellWkIDKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure Tfrm_BTN02.edtCallBellWkNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then edtCallBellWkHP.SetFocus;
end;

procedure Tfrm_BTN02.edtCalValue_2Exit(Sender: TObject);
begin
	if rb_Straight_2.checked then
	begin
		if edtCalValue_2.Value > 5000 then
		begin
			edtCalValue_2.Value := 5000;
			GMessagebox('일정금액으로 설정 시 최대 5,000원을 넘을 수 없습니다.', CDMSE);
			edtCalValue_2.SetFocus;
			Exit;
		end;
	end else
  if rb_Declining_2.Checked then
	begin
		if edtCalValue_2.Value > 50 then
		begin
			edtCalValue_2.Value := 50;
			GMessagebox('매출비율로 설정 시 최대 50%을 넘을 수 없습니다.', CDMSE);
			edtCalValue_2.SetFocus;
			Exit;
		end;
	end;
end;

procedure Tfrm_BTN02.edtCalValue_2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then 
	begin
		cboBankName.SetFocus;
		if rb_Declining_2.Checked then
		begin
			if edtCalValue_2.Value > 50 then
			begin
				GMessagebox('매출비율로 설정 시 최대 50%을 넘을 수 없습니다.', CDMSI);
				edtCalValue_2.Value := 50;
				Exit;
			end;
		end;
	end;
end;

procedure Tfrm_BTN02.edtCalValue_2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if rb_Straight_2.checked then
	begin
		if edtCalValue_2.Value > 5000 then
		begin
			edtCalValue_2.Value := 5000;
			GMessagebox('일정금액으로 설정 시 최대 5,000원을 넘을 수 없습니다.', CDMSI);
			edtCalValue_2.SetFocus;
			Exit;
		end;
	end else
  if rb_Declining_2.Checked then
	begin
		if edtCalValue_2.Value > 50 then
		begin
			edtCalValue_2.Value := 50;
			GMessagebox('매출비율로 설정 시 최대 50%을 넘을 수 없습니다.', CDMSI);
			edtCalValue_2.SetFocus;
			Exit;
		end;
	end;
end;

procedure Tfrm_BTN02.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure Tfrm_BTN02.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Action := caFree;
end;

procedure Tfrm_BTN02.FormCreate(Sender: TObject);
var
	Save: LongInt; // 폼타이틀 제거용.
begin
	//====================================================
	// 폼 타이틀 제거..
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
	proc_Init;
end;

procedure Tfrm_BTN02.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure Tfrm_BTN02.FormDestroy(Sender: TObject);
begin
	Frm_BTN02 := Nil;
end;

procedure Tfrm_BTN02.FormShow(Sender: TObject);
begin
  fSetFont(Frm_BTN02, GS_FONTNAME);
	if pnlCallBellWK.Hint = 'insert' then
		edtCallBellWkID.SetFocus;
end;

procedure Tfrm_BTN02.lbBankNumberClick(Sender: TObject);
begin
	edtBankNumber.SetFocus;
end;

procedure Tfrm_BTN02.lbBankOwnerClick(Sender: TObject);
begin
	edtBankOwner.SetFocus;
end;

procedure Tfrm_BTN02.meoCallBellWkMemoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxMemo(sender).Text := Enc_Control(TcxMemo(sender).Text);
	if fCheckMaxLength(TcxMemo(sender), 100) then Key := 0;
end;

procedure Tfrm_BTN02.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

function Tfrm_BTN02.Proc_BRNOSearch: string;
begin
	Result := Copy(cboBranch_2.Text, Pos('.', cboBranch_2.Text) + 1, Pos(':',
		cboBranch_2.Text) - (Pos('.', cboBranch_2.Text) + 1)); //지사코드
end;

function Tfrm_BTN02.Proc_HDNOSearch: string;
begin
	Result := Copy(cboBranch_2.Text, 1, Pos('.', cboBranch_2.Text) - 1); // 본사코드
end;

procedure Tfrm_BTN02.proc_Init;
begin
	clbCuSeq.Caption := '';
	btn_2_6.Enabled := True;
	edtCallBellWkID.Text := '';
	edtCallBellWkID.Hint := '';
	edtCallBellWkName.Text := '';
	edtCallBellWkHP.Text := '';
	rb_Straight_2.Checked := True;
	edtCalValue_2.value := 0;
	cboBankName.ItemIndex := 0;
	edtBankNumber.Text := '';
	edtBankOwner.Text := '';
	meoCallBellWkMemo.lines.clear;
	cxLabel15.Caption := '원';
end;

procedure Tfrm_BTN02.rb_Declining_2Click(Sender: TObject);
begin
	if rb_Declining_2.checked then 
	begin
		cxLabel15.Caption := '%';
		if self.Showing then
			edtCalValue_2.SetFocus;
	end;
end;

procedure Tfrm_BTN02.rb_Declining_2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then edtCalValue_2.SetFocus;
end;

procedure Tfrm_BTN02.rb_Straight_2Click(Sender: TObject);
begin
	if rb_Straight_2.checked then 
	begin
		cxLabel15.Caption := '원';
		if self.Showing then
			edtCalValue_2.SetFocus;
	end;
end;

procedure Tfrm_BTN02.rb_Straight_2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then 
	begin
		edtCalValue_2.SetFocus;
	end;
end;

end.

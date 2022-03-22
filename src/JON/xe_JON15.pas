unit xe_JON15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, dxCore, MSXML2_TLB,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxGroupBox,
	cxRadioGroup, cxLabel, Vcl.StdCtrls, cxButtons, cxCheckBox, Vcl.ExtCtrls,
  AdvGroupBox, AdvOfficeButtons, dxSkinsCore, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, cxTextEdit, dxSkinOffice2007Silver,
  AdvProgressBar;

type
  TFrm_JON15 = class(TForm)
    pnl_Cancel: TPanel;
    Bevel1: TBevel;
		cb_CancelSMS: TcxCheckBox;
    RbCheckBox1: TcxCheckBox;
    RbCheckBox4: TcxCheckBox;
    RbCheckBox5: TcxCheckBox;
    sb_Cancel_comm: TcxButton;
    sb_Cancel_Can: TcxButton;
    RbButton16: TcxButton;
    chkShortCut: TcxCheckBox;
    pmEtc: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxLblActive: TLabel;
    rg_Cancelchoice: TcxGroupBox;
    rdo_Cancel0: TcxRadioButton;
    rdo_Cancel1: TcxRadioButton;
    rdo_Cancel3: TcxRadioButton;
    rdo_Cancel5: TcxRadioButton;
    rdo_Cancel2: TcxRadioButton;
    rdo_Cancel4: TcxRadioButton;
    rdo_Cancel7: TcxRadioButton;
    rdo_Cancel6: TcxRadioButton;
    rdo_Cancel8: TcxRadioButton;
    rdo_Cancel9: TcxRadioButton;
    rdo_Cancel10: TcxRadioButton;
    rdo_Cancel99: TcxRadioButton;
    ed_cancel_area: TcxTextEdit;
    ed_cancel_area2: TcxTextEdit;
    ed_cancel_custname: TcxTextEdit;
    ed_cancel_custnum: TcxTextEdit;
    ed_WhyCancel: TcxTextEdit;
    Edit5: TcxTextEdit;
		Edit6: TcxTextEdit;
    Edit7: TcxTextEdit;
    Edit8: TcxTextEdit;
    Label45: TcxLabel;
    pnl_AccStatus: TPanel;
    cxGroupBox49: TcxGroupBox;
    Shape176: TShape;
    Shape177: TShape;
    Gauge1: TAdvProgressBar;
    cxLabel167: TcxLabel;
    cxLabel174: TcxLabel;
    lb_ACnt: TcxLabel;
    lb_FCnt: TcxLabel;
    btn_AccStatusClose: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure RbButton16Click(Sender: TObject);
    procedure sb_Cancel_commClick(Sender: TObject);
    procedure sb_Cancel_CanClick(Sender: TObject);
    procedure RbCheckBox4Click(Sender: TObject);
    procedure RbCheckBox5Click(Sender: TObject);
    procedure ed_WhyCancelKeyPress(Sender: TObject; var Key: Char);
    procedure chkShortCutClick(Sender: TObject);
    procedure pmEtcPopup(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cb_CancelSMSClick(Sender: TObject);
    procedure RbCheckBox1Click(Sender: TObject);
		procedure rdo_Cancel0Click(Sender: TObject);
    procedure rdo_Cancel8MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ed_WhyCancelKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_AccStatusCloseClick(Sender: TObject);
    procedure cxGroupBox49MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
	private
		{ Private declarations }
		tmIndex: integer;
		FKeyNum: string;
		procedure mniUserClick(Sender: TObject);
	public
		{ Public declarations }
		Jon03Tag : Integer;
		gRdoTag : integer; //선택된 취소사유 인덱스
		ARadioBtn : TcxRadioButton;
		gStatus, gSlip, gKeyNumber, gBrNo : string;
		procedure proc_init;
		procedure LoadUserEtc;
    property KeyNum: string read FKeyNum write FKeyNum;
  end;

var
  Frm_JON15: TFrm_JON15;

implementation

{$R *.dfm}

uses Main, xe_GNL, xe_Func, xe_Msg, xe_xml, xe_Dm, xe_gnl2, xe_JON07,
  xe_JON16, xe_JON017;


procedure TFrm_JON15.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON15, GS_FONTNAME);
  fSetSkin(Frm_JON15);
  try
    if Assigned(Frm_JON07) then Frm_JON07.Hide;      // 상세이력
  finally
    proc_init;
  end;
end;

procedure TFrm_JON15.proc_init;
begin
  ed_WhyCancel.SetFocus;
  chkShortCut.Checked := gbJON01UseShortCut;

	rg_Cancelchoice.Tag := 1;
	case gbOrderCancelSelect of
		0 : rdo_Cancel0.checked := True;
		1 : rdo_Cancel6.checked := True;
		2 : rdo_Cancel1.checked := True;
		3 : rdo_Cancel7.checked := True;
		4 : rdo_Cancel2.checked := True;
		5 : rdo_Cancel8.checked := True;
		6 : rdo_Cancel3.checked := True;
		7 : rdo_Cancel9.checked := True;
		8 : rdo_Cancel4.checked := True;
		9 : rdo_Cancel10.checked := True;
	 10 : rdo_Cancel5.checked := True;
	 else
		rdo_Cancel0.checked := True;
	end;
	rg_Cancelchoice.Tag := 0;

  ed_WhyCancel.ImeName := '';       // 20130801  LYB  한글처리를 위해

//  rg_CancelchoiceClick(rg_Cancelchoice);

  LoadUserEtc;

	if gRdoTag = 5 then   //기타
	begin
		rg_Cancelchoice.Tag := 0;
		ed_WhyCancel.Clear;
		ed_WhyCancel.Text := GS_EnvFile.ReadString('JON15', 'WhyCancel', '');   //20200401 기타-취소사유 저장사용 정회귀팀장님요청 KHS
	end;

  if self.Visible then
  begin
    ed_WhyCancel.SetFocus;
    ed_WhyCancel.SelectAll;
  end;
end;

procedure TFrm_JON15.LoadUserEtc;
var
  I: Integer;
  Menu: TMenuItem;
begin
  while pmEtc.Items.Count > 2 do
  begin
    if pmEtc.Items[0].Caption = '-' then
      Break;

    Menu := pmEtc.Items[0];
    pmEtc.Items.Delete(0);
    Menu.Free;
  end;

  for I := 0 to GS_UserCancelEtc.Count - 1 do
  begin
    try
      Menu := TMenuItem.Create(pmEtc);
//      Menu.Name := 'mniUser' + IntToStr(I);
      Menu.Caption := GS_UserCancelEtc.Names[I];
      Menu.Enabled := True;
      Menu.Visible := True;
      Menu.OnClick := mniUserClick;
      pmEtc.Items.Insert(I, Menu);
    except on E: Exception do
      ShowMessage(E.Message);
    end;
  end;
end;

procedure TFrm_JON15.RbButton16Click(Sender: TObject);
begin
	if GT_USERIF.LV = '10' then
  begin
    GMessagebox('메시지 설정 권한이 없습니다.', CDMSE);
    Exit;
  end;

  if Not Assigned(Frm_JON16) then Frm_JON16 := TFrm_JON16.Create(Nil);
  Frm_JON16.Jon03Tag := Self.Tag;
  Frm_JON16.Left := self.Left - frm_JON16.Width;
  Frm_JON16.Top := self.Top;

  Frm_JON16.Memo1.Text :=  Frm_JON15.Edit5.Text;
  Frm_JON16.Edit9.Text :=  Frm_JON15.Edit6.Text;
  Frm_JON16.Memo2.Text :=  Frm_JON15.Edit7.Text;
  Frm_JON16.Edit10.Text :=  Frm_JON15.Edit8.Text;

  Frm_JON16.Label53.Caption := IntToStr(Length(Frm_JON16.Memo1.Text)) + ' Byte';
	Frm_JON16.Label54.Caption := IntToStr(Length(Frm_JON16.Memo2.Text)) + ' Byte';
	Frm_JON16.gKeyNumber := FKeyNum;
	Frm_JON16.gBrNo := gBrNo; 
  Frm_JON16.Show;
end;

procedure TFrm_JON15.sb_Cancel_commClick(Sender: TObject);
var  xdom: msDomDocument;
	lst_Result: IXMLDomNodeList;
	ls_MSG_Err, ls_ClientKey: string;
	ls_TxLoad, sCd, sMsg: string;
	rv_str: string;
	ls_rxxml: WideString;
  slReceive: TStringList;
	ErrCode, i, iRow: integer;
	sSlip : string;
begin
	try
		if Trim(ed_WhyCancel.Text) = '' then
		begin
			GMessagebox('취소사유을(를)' + CMC005, CDMSE);
			ed_WhyCancel.SetFocus;
			Exit;
		end;

		if Not func_EucKr_Check(ed_WhyCancel, 0) then Exit;

		if Frm_Main.Frm_JON03[Jon03Tag].FMultiOrderChange.BrNo.count > 1 then
		begin

			sMsg := IntToStr(Frm_Main.Frm_JON03[Jon03Tag].FMultiOrderChange.BrNo.count) + '건 일괄취소처리 하시겠습니까?' + CRLF + CRLF
				+ '([예] 일괄처리, [아니오] 취소)';
			if Application.MessageBox(PChar(sMsg), CDMSI, MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1) = IDYES then
			begin
				lb_ACnt.Caption := IntToStr(Frm_Main.Frm_JON03[Jon03Tag].FMultiOrderChange.BrNo.count);
				lb_FCnt.Caption := '0';
				Gauge1.Max := Frm_Main.Frm_JON03[Jon03Tag].FMultiOrderChange.BrNo.count;
				Gauge1.Position := 0;
				iRow := 0;
				if Frm_JON15.Gauge1.Max > 1 then
				begin
					Frm_JON15.pnl_AccStatus.Left := 150;
					Frm_JON15.pnl_AccStatus.Top := 50;
					Frm_JON15.pnl_AccStatus.Visible := True;
					Frm_JON15.pnl_AccStatus.BringToFront;
				end;
				for i := 0 to Frm_Main.Frm_JON03[Jon03Tag].FMultiOrderChange.BrNo.count-1 do
				begin
					ed_cancel_custnum.Text := Frm_Main.Frm_JON03[Jon03Tag].FMultiOrderChange.CustTel[i];
					ed_cancel_custname.Text := Frm_Main.Frm_JON03[Jon03Tag].FMultiOrderChange.CustNm[i];
					ed_cancel_area.Text   := Frm_Main.Frm_JON03[Jon03Tag].FMultiOrderChange.Start[i];
					ed_cancel_area2.Text  := Frm_Main.Frm_JON03[Jon03Tag].FMultiOrderChange.sEnd[i];

					sSlip := Frm_Main.Frm_JON03[Jon03Tag].FMultiOrderChange.Slip[i];
					ls_TxLoad := GTx_UnitXmlLoad('C005.XML');
					ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);

					ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'CANC0001', [rfReplaceAll]);

					ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', sSlip, [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', Frm_Main.Frm_JON03[Jon03Tag].FMultiOrderChange.Status[i], [rfReplaceAll]);

					if Copy(ARadioBtn.Caption, 1, 2) = '10' then sCd := '10' 
					else if ARadioBtn.Caption = '콜당보험사고접수' then sCd := '10' 
					else sCd := Copy(ARadioBtn.Caption, 1, 1);

					if cb_CancelSMS.Checked then
						ls_TxLoad := StringReplace(ls_TxLoad, 'SMSString', '0', [rfReplaceAll])
					else
						ls_TxLoad := StringReplace(ls_TxLoad, 'SMSString', '1', [rfReplaceAll]);

					ls_TxLoad := StringReplace(ls_TxLoad, 'ReasonString', En_Coding(ed_WhyCancel.Text), [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'PenalTimeString', '', [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'PenalChargeString', '', [rfReplaceAll]);

					ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '', [rfReplaceAll]);

					//취소코드가 4,7,8,9 인것들은 취소문자가 발송되지 않는다.   9(사고접수)추가 20161123KHS
					if ARadioBtn.Tag in [8, 3, 5, 7, 9] then //ItemIndex (5,7,8,9)
					begin
						ls_TxLoad := StringReplace(ls_TxLoad, 'SMSCustString', '0', [rfReplaceAll]);
						if ARadioBtn.Tag = 5 then
						begin
							GS_EnvFile.WriteString('JON15', 'WhyCancel', Trim(ed_WhyCancel.text));
						end;
					end	else
					if ARadioBtn.Tag = 6 then
					begin
						//기사부족 체크이고 고객 SMS 전송이 아닐때..
						//기사부족 메시지가 체크되어있는지 확인한다.
						if RbCheckBox4.Checked then
							ls_TxLoad := StringReplace(ls_TxLoad, 'SMSCustString', '0', [rfReplaceAll])
						else
						if RbCheckBox5.Checked then
							ls_TxLoad := StringReplace(ls_TxLoad, 'SMSCustString', '0', [rfReplaceAll])
						else
							ls_TxLoad := StringReplace(ls_TxLoad, 'SMSCustString', '1', [rfReplaceAll]);
					end else
					if RbCheckBox1.Checked then //고객한테 sms전송일때
						ls_TxLoad := StringReplace(ls_TxLoad, 'SMSCustString', '0', [rfReplaceAll])
					else
						ls_TxLoad := StringReplace(ls_TxLoad, 'SMSCustString', '1', [rfReplaceAll]);

					ls_TxLoad := StringReplace(ls_TxLoad, 'CancelCD', sCd, [rfReplaceAll]);

					slReceive := TStringList.Create;
					try
						if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
						begin
							rv_str := slReceive[0];
							if rv_str <> '' then
							begin
								ls_rxxml := rv_str;
	//							Frm_Main.Frm_JON03[Jon03Tag].proc_recieve(ls_rxxml);

								xdom := ComsDomDocument.Create;
								try
									Gauge1.Position := i+1;
									Application.ProcessMessages;
									if not xdom.loadXML(ls_rxxml) then Exit;
									ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
									if ('0000' = ls_MSG_Err) then
									begin
										ls_ClientKey := GetXmlClientKey(ls_rxxml);
										ls_ClientKey := Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5);
										if COPY(ls_clientKey, 1, 4) = 'CANC' then
										begin
											case StrToIntDef(Copy(ls_clientKey, 5, 4), 0) of
												1:
												begin
													Inc(iRow);
													lb_FCnt.Caption := IntToStr(iRow);
													if RbCheckBox1.Checked then
													begin
														if ARadioBtn.Tag in [8, 3, 5, 7, 9] then
														begin
						//										if Not GB_J03_NOSHOW_MSG then
						//											GMessagebox(ls_MSG_Err, CDMSI);
														end
														else
															Frm_Main.Frm_JON03[Jon03Tag].proc_cust_smssend(sSlip);
														RbCheckBox1.Checked := False;
													end else
													begin
														//기사부족 체크이고 고객SMS전송이 아닐때..(기사부족 선택모드인지 자동모드인지 확인)
														if ARadioBtn.Tag = 6 then
														begin
															//기사부족시 메시지 전송이 체크되어있을때
															if (RbCheckBox4.Checked or RbCheckBox5.Checked) then
																Frm_Main.Frm_JON03[Jon03Tag].proc_wk_lack_sms(sSlip)
															else
															begin
						//											if Not GB_J03_NOSHOW_MSG then
						//												GMessagebox(ls_MSG_Err, CDMSI);
															end;
														end else
														begin
						//										if Not GB_J03_NOSHOW_MSG then
						//											GMessagebox(ls_MSG_Err, CDMSI);
														end;
													end;

													RbCheckBox1.Checked := False;
													Frm_Main.Frm_JON03[Jon03Tag].proc_Acc_Search(1, sSlip, 'JON03-5' + Copy(ls_clientKey, 5, 4));

												end;
											end;
										end;
									end;
								finally
									xdom := Nil;
								end;
							end;
						end;
					finally
						FreeAndNil(slReceive);
					end;
				end;
	//			if Not GB_J03_NOSHOW_MSG then
				GMessagebox('일괄 취소가 완료되었습니다.', CDMSE);
				sb_Cancel_CanClick(sb_Cancel_Can);
			end;
		end else
		begin
			ls_TxLoad := GTx_UnitXmlLoad('C005.XML');
			ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);

			if Trim(pnlTitle.Caption) = '취소+재접수' then
				ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'CANC0013', [rfReplaceAll])
			else
				ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'CANC0001', [rfReplaceAll]);

			ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', gSlip, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', gStatus, [rfReplaceAll]);

			if Copy(ARadioBtn.Caption, 1, 2) = '10' then sCd := '10' 
			else if ARadioBtn.Caption = '콜당보험사고접수' then sCd := '10' 
			else sCd := Copy(ARadioBtn.Caption, 1, 1);

			if cb_CancelSMS.Checked then
				ls_TxLoad := StringReplace(ls_TxLoad, 'SMSString', '0', [rfReplaceAll])
			else
				ls_TxLoad := StringReplace(ls_TxLoad, 'SMSString', '1', [rfReplaceAll]);

			ls_TxLoad := StringReplace(ls_TxLoad, 'ReasonString', En_Coding(ed_WhyCancel.Text), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'PenalTimeString', '', [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'PenalChargeString', '', [rfReplaceAll]);

			if Trim(pnlTitle.Caption) = '취소+재접수' then
				ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '1', [rfReplaceAll])
			else
				ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '', [rfReplaceAll]);

			//취소코드가 4,7,8,9 인것들은 취소문자가 발송되지 않는다.   9(사고접수)추가 20161123KHS
			if ARadioBtn.Tag in [8, 3, 5, 7, 9] then //ItemIndex (5,7,8,9)
			begin
				ls_TxLoad := StringReplace(ls_TxLoad, 'SMSCustString', '0', [rfReplaceAll]);
				if ARadioBtn.Tag = 5 then
				begin
					GS_EnvFile.WriteString('JON15', 'WhyCancel', Trim(ed_WhyCancel.text));
				end;
			end	else
			if ARadioBtn.Tag = 6 then
			begin
				//기사부족 체크이고 고객 SMS 전송이 아닐때..
				//기사부족 메시지가 체크되어있는지 확인한다.
				if RbCheckBox4.Checked then
					ls_TxLoad := StringReplace(ls_TxLoad, 'SMSCustString', '0', [rfReplaceAll])
				else
				if RbCheckBox5.Checked then
					ls_TxLoad := StringReplace(ls_TxLoad, 'SMSCustString', '0', [rfReplaceAll])
				else
					ls_TxLoad := StringReplace(ls_TxLoad, 'SMSCustString', '1', [rfReplaceAll]);
			end else
			if RbCheckBox1.Checked then //고객한테 sms전송일때
				ls_TxLoad := StringReplace(ls_TxLoad, 'SMSCustString', '0', [rfReplaceAll])
			else
				ls_TxLoad := StringReplace(ls_TxLoad, 'SMSCustString', '1', [rfReplaceAll]);

			ls_TxLoad := StringReplace(ls_TxLoad, 'CancelCD', sCd, [rfReplaceAll]);

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
  except
		on e: exception do
    begin
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_JON15.sb_Cancel_CanClick(Sender: TObject);
begin
	if Assigned(Frm_JON16) then Frm_JON16.Close;
  if Assigned(Frm_JON017) then Frm_JON017.Close;

  if Assigned(Frm_Main.Frm_JON03[Jon03Tag]) then
  begin
   if Frm_Main.Frm_JON03[Jon03Tag].Grd2.CanFocus then
     Frm_Main.Frm_JON03[Jon03Tag].Grd2.SetFocus
   else
   if Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.CanFocus then
     Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.SetFocus;
  end;

  Close;
end;

procedure TFrm_JON15.RbCheckBox1Click(Sender: TObject);
begin
	if RbCheckBox1.Checked then
	begin
		RbCheckBox1.Style.TextColor := clBlue;
		RbCheckBox1.Style.Font.Style := [fsBold];
		RbCheckBox1.Caption := '취소시 고객에게 직접 SMS발송';
	end
	else
	begin
		RbCheckBox1.Style.TextColor := clWindowText;
		RbCheckBox1.Style.Font.Style := [];
		RbCheckBox1.Caption := '취소시 고객에게 설정 SMS발송';
	end;
end;

procedure TFrm_JON15.RbCheckBox4Click(Sender: TObject);
begin
  if RbCheckBox4.Checked then
  begin
    RbCheckBox4.Checked := True;
    RbCheckBox5.Checked := False;
  end else
  begin
    RbCheckBox4.Checked := False;
  end;
end;

procedure TFrm_JON15.RbCheckBox5Click(Sender: TObject);
begin
  if RbCheckBox5.Checked then
  begin
    RbCheckBox4.Checked := False;
    RbCheckBox5.Checked := True;
    gs_JON15_OPT1 := True;
  end else
  begin
    RbCheckBox5.Checked := False;
    gs_JON15_OPT1 := False;
  end;
end;

procedure TFrm_JON15.ed_WhyCancelKeyPress(Sender: TObject; var Key: Char);
begin
	if Ord(Key) = Vk_RETURN then
    sb_Cancel_commClick(sb_Cancel_comm);

  if not gbJON01UseShortCut then
    Exit;

  if not (Ord(Key) in [48..57]) then
    Exit;

	case Ord(Key) - 48 of
	0:
		rdo_Cancel0.checked := True;
  1:
		rdo_Cancel1.checked := True;
	2:
		rdo_Cancel2.checked := True;
	3:
		rdo_Cancel3.checked := True;
	4:
		rdo_Cancel4.checked := True;
	5:
		rdo_Cancel5.checked := True;
	6:
		rdo_Cancel6.checked := True;
	7:
		rdo_Cancel7.checked := True;
	8:
		rdo_Cancel8.checked := True;
	9:
		rdo_Cancel9.checked := True;
	end;
//	TcxRadioButton(FindComponent('rdo_Cancel' + IntToStr(Ord(Key) - 48))).OnClick(Self);
//	rg_Cancelchoice.OnClick(rg_Cancelchoice);

	Key := #0;
end;

procedure TFrm_JON15.ed_WhyCancelKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_JON15.rdo_Cancel0Click(Sender: TObject);
var
	sType: string;
begin
  if rdo_Cancel0.Tag = 99 then exit;
	ARadioBtn := TcxRadioButton(Sender);

	gRdoTag := ARadioBtn.Tag;

	if Copy(ARadioBtn.Caption,1,2) <> '10' then
	begin
		if gRdoTag = 9 then
		begin
			if ARadioBtn.Caption = '콜당보험사고접수' then sType := '콜당보험사고접수'
			else sType := Copy(ARadioBtn.Caption, 3,	Length(ARadioBtn.Caption));
		end
		else sType := Copy(ARadioBtn.Caption, 3,	Length(ARadioBtn.Caption));
	end
	else if Copy(ARadioBtn.Caption,1,2) = '10' then
	begin
		sType := Copy(ARadioBtn.Caption, 4,	Length(ARadioBtn.Caption));
	end;

	case ARadioBtn.Tag of
		0..4, 6..10: ed_WhyCancel.Text := Trim(sType);
		5:
			begin
				ed_WhyCancel.Text := '';
				ed_WhyCancel.Text := GS_EnvFile.ReadString('JON15', 'WhyCancel', '');
				if rg_Cancelchoice.Tag = 0  then
				begin
          if (not GB_JONLIST_RETRY_NOSHOW) then 
    				pmEtc.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
//					ed_WhyCancel.Text := '';
				end else
				if rg_Cancelchoice.Tag = 1  then
				begin
					ed_WhyCancel.Text := '';
//					rg_Cancelchoice.Tag := 0
				end;
			end;
	end;

	if ARadioBtn.Tag = 6 then Self.Height := 374
											 else Self.Height := 267;

	if Self.Visible then
	begin
		ed_WhyCancel.SetFocus;
		ed_WhyCancel.SelectAll;
	end;
	rg_Cancelchoice.Tag := 0;
end;

procedure TFrm_JON15.rdo_Cancel8MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	case ARadioBtn.Tag of
		5:
			begin
				if rg_Cancelchoice.Tag = 0  then
				begin
					pmEtc.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
					ed_WhyCancel.Text := '';
				end else
				if rg_Cancelchoice.Tag = 1  then
				begin
					ed_WhyCancel.Text := '';
					rg_Cancelchoice.Tag := 0
				end;
			end;
	end;
end;

procedure TFrm_JON15.cb_CancelSMSClick(Sender: TObject);
begin
	if cb_CancelSMS.Checked then
	begin
		cb_CancelSMS.Style.TextColor := clRed;
		cb_CancelSMS.Caption := '취소시 기사에게 SMS 발송안함';
	end
	else
	begin
		cb_CancelSMS.Style.TextColor := clBlue;
		cb_CancelSMS.Caption := '취소시 기사한테 SMS 발송함';
	end;
end;

procedure TFrm_JON15.chkShortCutClick(Sender: TObject);
begin
  gbJON01UseShortCut := chkShortCut.Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'CancelShortCut', gbJON01UseShortCut);
end;

procedure TFrm_JON15.cxGroupBox49MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(TcxGroupBox(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON15.btn_AccStatusCloseClick(Sender: TObject);
begin
	pnl_AccStatus.visible := False;
end;

procedure TFrm_JON15.pmEtcPopup(Sender: TObject);
begin
	if (gRdoTag <> 5)  then	Exit;
end;

procedure TFrm_JON15.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
	PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON15.N1Click(Sender: TObject);
begin
  if not Assigned(Frm_JON017) then
    Frm_JON017 := TFrm_JON017.Create(frm_Main);

	Frm_JON017.Left := Self.Left + Self.Width;
  Frm_JON017.Top  := Self.Top;
	Frm_JON017.Height := Self.Height;
  Frm_JON017.Show;
  Frm_JON017.BringToFront;
end;

procedure TFrm_JON15.mniUserClick(Sender: TObject);
var
  Menu: TMenuItem;
begin
  Menu := TMenuItem(Sender);
  ed_WhyCancel.Text := GS_UserCancelEtc.Values[Menu.Caption];
  tmIndex:=-1;
end;

procedure TFrm_JON15.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON15.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_JON15.FormCreate(Sender: TObject);
begin
  ed_WhyCancel.ImeName := '';       // 20130801  LYB  한글처리를 위해
  if gs_JON15_OPT1 then RbCheckBox5.Checked := True;
end;

procedure TFrm_JON15.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON15.FormDestroy(Sender: TObject);
begin
  Frm_JON15 := Nil;
end;

end.



unit xe_CUT019;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxCurrencyEdit, cxMemo, StdCtrls,
  cxRadioGroup, cxButtons, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxLabel, ExtCtrls, cxMaskEdit,
  cxSpinEdit, cxTimeEdit, cxGraphics, cxLookAndFeels, cxDropDownEdit,
  dxSkinsCore, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_CUT019 = class(TForm)
    Panel1: TPanel;
    cxLblStart: TcxLabel;
    PnlMain: TPanel;
    cxButton1: TcxButton;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    lbSosokCaption: TcxLabel;
    cxLabel17: TcxLabel;
    cxlbConfSlip: TcxLabel;
    cxlbFirstTime: TcxLabel;
    cxLabel22: TcxLabel;
    cxlbFinish: TcxLabel;
    cxLabel24: TcxLabel;
    Panel3: TPanel;
    chkBubinSttFinish: TcxRadioButton;
    chkBubinSttNotFinish: TcxRadioButton;
    cxLabel1: TcxLabel;
    Panel4: TPanel;
    chkBubinSttOrdFinish: TcxRadioButton;
    chkBubinSttOrdCancel: TcxRadioButton;
    chkBubinSttOrdReq: TcxRadioButton;
    cxLabel2: TcxLabel;
    Panel5: TPanel;
    chkBubinSttPayAfter: TcxRadioButton;
    chkBubinSttPayTick: TcxRadioButton;
    chkBubinSttPayCash: TcxRadioButton;
    cxLabel3: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel5: TcxLabel;
    Panel6: TPanel;
    chkBubinSttAuth: TcxRadioButton;
    chkBubinSttNotAuth: TcxRadioButton;
    cxLabel6: TcxLabel;
    Panel7: TPanel;
    chkBubinSttWebView: TcxRadioButton;
    chkBubinSttWebViewNo: TcxRadioButton;
    cxLabel8: TcxLabel;
    cxLabel14: TcxLabel;
    Panel8: TPanel;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxLabel20: TcxLabel;
    cxLabel23: TcxLabel;
    cxRadioButton3: TcxRadioButton;
    cxLabel21: TcxLabel;
    cxlbCuTel: TcxTextEdit;
    cxlbuser: TcxTextEdit;
    cxlbBubin: TcxLabel;
    cxtStartAreaDetail: TcxTextEdit;
    cxtEndAreaDetail: TcxTextEdit;
    cxtViaAreaDetail: TcxTextEdit;
    meoInfo1: TcxMemo;
    meoInfo2: TcxMemo;
    cxlbCharge: TcxLabel;
    cxlbCommission: TcxLabel;
    cxtAddCharge: TcxCurrencyEdit;
    cxlbRealCharge: TcxLabel;
    cxtPassCharge: TcxCurrencyEdit;
    cxtWaitTime: TcxTimeEdit;
    cxtDis: TcxTextEdit;
    cxtBaseCharge: TcxCurrencyEdit;
    cxtWaitCharge: TcxCurrencyEdit;
    btnCalc: TcxButton;
    Panel9: TPanel;
    cxRadioButton4: TcxRadioButton;
    cxRadioButton5: TcxRadioButton;
    cxtCharge1: TcxCurrencyEdit;
    cxtTax: TcxCurrencyEdit;
    cxtEtc: TcxCurrencyEdit;
    cxtSum: TcxCurrencyEdit;
    meoEtc: TcxMemo;
    cxLabel26: TcxLabel;
    cxlbWkName: TcxLabel;
    cxLabel33: TcxLabel;
    cxlbWkSabun: TcxLabel;
    PnlTitle: TPanel;
    btnClose: TcxButton;
    Shape30: TShape;
    Shape31: TShape;
    Shape32: TShape;
    Shape33: TShape;
    Shape34: TShape;
    Shape35: TShape;
    Shape40: TShape;
    cxLblActive: TLabel;
    cxLabel32: TcxLabel;
    cbBubinSttWether: TcxComboBox;
    chkBubinSttNotBubin: TcxRadioButton;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    pnlStart: TPanel;
    pnlEnd: TPanel;
    lblStartAreaName1: TcxTextEdit;
    lblStartAreaName2: TcxTextEdit;
    lblStartAreaName3: TcxTextEdit;
    cxButton3: TcxButton;
    lblEndAreaName1: TcxTextEdit;
    lblEndAreaName2: TcxTextEdit;
    lblEndAreaName3: TcxTextEdit;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    lblStart: TcxLabel;
    lblEnd: TcxLabel;
    cxLabel34: TcxLabel;
    cxLabel35: TcxLabel;
    lb_SUPPORT_CHARGE: TcxLabel;
    lb_OTHER_CHARGE: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxtEtcExit(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnCalcClick(Sender: TObject);
    procedure cxRadioButton3Click(Sender: TObject);
    procedure cxRadioButton2Click(Sender: TObject);
    procedure cxtAddChargeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chkBubinSttWebViewClick(Sender: TObject);
    procedure chkBubinSttNotFinishClick(Sender: TObject);
    procedure chkBubinSttFinishClick(Sender: TObject);
    procedure chkBubinSttWebViewNoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxlbCuTelKeyPress(Sender: TObject; var Key: Char);
    procedure btnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure meoInfo1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxlbCuTelKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure lblStartClick(Sender: TObject);
    procedure lblEndClick(Sender: TObject);
  private
    { Private declarations }
    // 창초기화
    procedure proc_cust_Intit;
  public
    { Public declarations }
    // 전문 결과처리
    procedure proc_Charge_Cal(iType: Integer = 0);
    procedure proc_Permission;
  end;

var
  Frm_CUT019: TFrm_CUT019;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Msg, xe_xml, xe_CUT1,
  xe_Flash, xe_packet;

{ Tfrm_CUR19 }

procedure TFrm_CUT019.proc_cust_Intit;
begin
  lbSosokCaption.Caption := '';
  cxlbConfSlip.Caption := '';
  cxlbFirstTime.Caption := '';
  cxlbFinish.Caption := '';
  cxlbuser.Text := '';
  cxlbCuTel.Text := '';
  cxlbBubin.Caption := '';
  cxtStartAreaDetail.Text := '';
  lblStartAreaName1.Text := '';
  lblStartAreaName2.Text := '';
  lblStartAreaName3.Text := '';
  cxtEndAreaDetail.Text := '';
  lblEndAreaName1.Text := '';
  lblEndAreaName2.Text := '';
  lblEndAreaName3.Text := '';
  cxtViaAreaDetail.Text := '';
  cxlbCharge.Caption := '';
  cxtWaitTime.Text := '00:00';
  cxtWaitCharge.Text := '0';
  cxtPassCharge.Text := '0';
  cxtAddCharge.Text := '0';
  meoInfo1.Text := '';
  meoInfo2.Text := '';
  cxtCharge1.Text := '0';
  cxtTax.Text := '0';
  cxtEtc.Text := '0';
  cxtSum.Text := '0';
  cxtBaseCharge.Text := '0';
  meoEtc.Text := '';
  cxlbWkName.Caption := '';
  cxlbWkSabun.Caption := '';
  cxRadioButton4.Checked := True;
  chkBubinSttWebViewNo.Checked := True;
	chkBubinSttNotAuth.Checked := True;

	 cbBubinSttWether.enabled := True;
	if GT_UserIf.HD = 'A1531' then cbBubinSttWether.enabled := False;
end;

procedure TFrm_CUT019.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_CUT019.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_CUT019.PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_CUT019.FormCreate(Sender: TObject);
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
        SetWindowLong(Handle, gwl_Style, Save and (not (ws_Caption)) or
          ws_border);
      //      bsDialog :
      //        SetWindowLong(Handle, gwl_Style, Save and (Not(ws_Caption)) or ws_modalframe or ws_dlgframe);
    end;
    Height := Height - getSystemMetrics(sm_cyCaption);
    Refresh;
  end;
  proc_cust_Intit;
end;

procedure TFrm_CUT019.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_CUT019.FormDestroy(Sender: TObject);
begin
  Frm_CUT019 := Nil;
end;

procedure TFrm_CUT019.cxtEtcExit(Sender: TObject);
var
  iCharge, iTax, iEtc: Integer;
begin
  iCharge := StrToIntDef(StringReplace(cxtCharge1.Text, ',', '',
    [rfReplaceAll]), 0);
  iTax := StrToIntDef(StringReplace(cxtTax.Text, ',', '', [rfReplaceAll]), 0);
  iEtc := StrToIntDef(StringReplace(cxtEtc.Text, ',', '', [rfReplaceAll]), 0);
  cxtSum.Text := IntToStr(iCharge + iTax + iEtc);
end;

procedure TFrm_CUT019.cxButton1Click(Sender: TObject);
var
  sConfSlip, sBubinStt, sStArea, sEdArea, sWaitTime, sWaitCharge, sPassCharge,
  sAddCharge, sConfInfo1, sConfInfo2,
  sEtcCharge, sEtcMemo, sAuth, sWebView, sBaseCharge,
  sSupplyCharge, sChargeTax, sDate,
  stArea1, stArea2, stArea3, edArea1, edArea2, edArea3, sViaArea, sCu_name,
	sCu_Tel, sPerStt: string;

  ErrCode: integer;
	Param, ErrMsg, XmlData: string;
	sMsg : string;
begin
	SetDebugeWrite('TFrm_CUT019.cxButton1Click');
	try
		sSupplyCharge := StringReplace(cxtCharge1.Text, ',', '', [rfReplaceAll]);
		if StrToIntDef(sSupplyCharge, 0) < 1 then
		begin
			sMsg := '공급가액이 없습니다. 이대로 저장하시겠습니까?' +#13#10+#13#10
						+ '※ 공급가액, 부가세, 합계금액은 하단 [결제금액 계산하기]버튼을'+#13#10
						+ '   눌러야 적용됩니다.';
						
			if Application.MessageBox(PChar(sMsg), CDMSI,	MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then
			begin
				btnCalc.SetFocus;
				Exit;
			end;
		end;

		if Not func_EucKr_Check(cxlbCuTel, 0) then Exit;
		if Not func_EucKr_Check(cxlbuser, 0) then Exit;
		if Not func_EucKr_Check(cxtStartAreaDetail, 0) then Exit;
		if Not func_EucKr_Check(cxtViaAreaDetail, 0) then Exit;
		if Not func_EucKr_Check(cxtEndAreaDetail, 0) then Exit;

		if Not func_EucKr_Check(meoInfo1, 0) then Exit;
		if Not func_EucKr_Check(meoInfo2, 0) then Exit;
		if Not func_EucKr_Check(meoEtc, 0) then Exit;

		sConfSlip := cxlbConfSlip.Caption;
		if chkBubinSttFinish.Checked then
		begin
			sBubinStt := 'y';
			sPerStt   := 'y';  //완료일경우 y|n
		end else
		begin
			sBubinStt := 'n';
			if not chkBubinSttNotBubin.Checked then
				sPerStt   := 'y'  //미완료일경우 n|y
			else
				sPerStt   := 'n'; //개인정산일경우 n|n
		end;

		if cxRadioButton1.Checked then
			sAuth := 'y'
		else
			if cxRadioButton3.Checked then
			sAuth := '0'
		else
			sAuth := 'n';

		if chkBubinSttWebView.Checked then
			sWebView := 'y'
		else
			sWebView := 'n';

		if StartDateTime('yyyy-mm-dd hh:nn:ss') <= cxlbFirstTime.Caption then
			sDate := '1'
		else
			sDate := '0';

		sCu_name := cxlbuser.Text;
		sCu_Tel := cxlbCuTel.Text;
		sCu_Tel := StringReplace(sCu_Tel, '-', '', [rfReplaceAll]);

		sStArea := cxtStartAreaDetail.Text;
		sEdArea := cxtEndAreaDetail.Text;
		stArea1 := lblStartAreaName1.Text;
		stArea2 := lblStartAreaName2.Text;
		stArea3 := lblStartAreaName3.Text;
		edArea1 := lblEndAreaName1.Text;
		edArea2 := lblEndAreaName2.Text;
		edArea3 := lblEndAreaName3.Text;

		sViaArea := cxtViaAreaDetail.Text;

		sWaitTime       := cxtWaitTime.Text + cxtDis.Text;
		sWaitCharge     := StringReplace(cxtWaitCharge.Text, ',', '', [rfReplaceAll]);
		sPassCharge     := StringReplace(cxtPassCharge.Text, ',', '', [rfReplaceAll]);
		sAddCharge      := StringReplace(cxtAddCharge.Text, ',', '', [rfReplaceAll]);
		sConfInfo1      := meoInfo1.Text;
		sConfInfo2      := meoInfo2.Text;
		sEtcCharge      := StringReplace(cxtEtc.Text, ',', '', [rfReplaceAll]);
		sEtcMemo        := meoEtc.Text;
		sBaseCharge     := StringReplace(cxtBaseCharge.Text, ',', '', [rfReplaceAll]);
		sSupplyCharge   := StringReplace(cxtCharge1.Text, ',', '', [rfReplaceAll]);
		sChargeTax      := StringReplace(cxtTax.Text, ',', '', [rfReplaceAll]);

		Param := '';
		Param := sDate;
		Param := Param + '│' + sConfSlip;
		Param := Param + '│' + sBubinStt;
		Param := Param + '│' + sStArea;
		Param := Param + '│' + sEdArea;
		Param := Param + '│' + sWaitTime;
		Param := Param + '│' + sWaitCharge;
		Param := Param + '│' + sPassCharge;
		Param := Param + '│' + sAddCharge;
		Param := Param + '│' + sConfInfo1;
		Param := Param + '│' + sConfInfo2;
		Param := Param + '│' + sEtcCharge;
		Param := Param + '│' + sEtcMemo;
		Param := Param + '│' + sAuth;
		Param := Param + '│' + sWebView;
		Param := Param + '│' + sBaseCharge;
		Param := Param + '│' + sSupplyCharge;
		Param := Param + '│' + sChargeTax;

		Param := Param + '│' + stArea1;
		Param := Param + '│' + stArea2;
		Param := Param + '│' + stArea3;
		Param := Param + '│' + edArea1;
		Param := Param + '│' + edArea2;
		Param := Param + '│' + edArea3;
		Param := Param + '│' + sViaArea;
		Param := Param + '│' + sCu_name;
		Param := Param + '│' + sCu_Tel;
		Param := Param + '│' + sPerStt;         //법인여부 (개인 n , 법인y)   28
		Param := Param + '│' + cbBubinSttWether.Text;   //날씨   29

		if not RequestBase(GetCallable06('SET_BGROUP_ORDER', 'MNG_BGROUP.SET_BGROUP_ORDER', En_Coding(Param)), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('법인정보 저장중 오류가 발생하였습니다.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Exit;
		end;
    if Assigned(Frm_CUT1) then
      Frm_CUT1.proc_bubinSttSearch(1, sConfSlip);
		GMessagebox('저장되었습니다.', CDMSI);
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_CUT019.btnCalcClick(Sender: TObject);
begin
	chkBubinSttFinish.Checked := True;
	proc_Charge_Cal;
end;

procedure TFrm_CUT019.cxButton3Click(Sender: TObject);
begin
  lblStart.Caption := lblStartAreaName1.Text + ' ' + lblStartAreaName2.Text + ' ' + lblStartAreaName3.Text;
  pnlStart.Visible := False
end;

procedure TFrm_CUT019.cxButton4Click(Sender: TObject);
begin
  lblEnd.Caption := lblEndAreaName1.Text + ' ' + lblEndAreaName2.Text + ' ' + lblEndAreaName3.Text;
  pnlEnd.Visible := False
end;

procedure TFrm_CUT019.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_CUT019.proc_Charge_Cal(iType: Integer = 0);
var
  iBase, iPass, iWait, iSupp, iEtc: Integer;
  sTax, sSum: string;
begin
	SetDebugeWrite('TFrm_CUT019.proc_Charge_Cal');
	try
		// 기본요금 : (접수요금 + 보정요금) - 경유요금 - 대기요금
		iBase := (StrToIntDef(StringReplace(cxlbCharge.Caption, ',', '', [rfReplaceAll]), 0)
//						- StrToIntDef(StringReplace(cxtAddCharge.Text, ',', '', [rfReplaceAll]), 0))
						+ StrToIntDef(StringReplace(cxtAddCharge.Text, ',', '', [rfReplaceAll]), 0)) //정회귀팀장(엔젤)요청 20210720 KHS
						- StrToIntDef(StringReplace(cxtPassCharge.Text, ',', '', [rfReplaceAll]), 0)
						- StrToIntDef(StringReplace(cxtWaitCharge.Text, ',', '', [rfReplaceAll]), 0);

		iPass := StrToIntDef(StringReplace(cxtPassCharge.Text, ',', '',
			[rfReplaceAll]), 0);
		iWait := StrToIntDef(StringReplace(cxtWaitCharge.Text, ',', '',
			[rfReplaceAll]), 0);
		iEtc := StrToIntDef(StringReplace(cxtEtc.Text, ',', '', [rfReplaceAll]), 0);
		iSupp := iBase + iPass + iWait;
		if cxRadioButton4.Checked then
			sTax := FloatToStr(iSupp * 0.1)
		else
			sTax := '0';
		sSum := FloatToStr(iSupp + StrToFloat(sTax) + iEtc);
		if iType = 0 then
		begin
			cxtBaseCharge.Text := IntToStr(iBase); // 기본요금
			cxtCharge1.Text := IntToStr(iSupp); // 공급가
			cxtTax.Text := sTax; // 부가세
			cxtSum.Text := sSum; // 합계
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_CUT019.cxRadioButton3Click(Sender: TObject);
begin
  chkBubinSttAuth.Checked := True;
end;

procedure TFrm_CUT019.cxRadioButton2Click(Sender: TObject);
begin
  chkBubinSttNotAuth.Checked := True;
end;

procedure TFrm_CUT019.cxtAddChargeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	proc_Charge_Cal;
end;

procedure TFrm_CUT019.chkBubinSttWebViewClick(Sender: TObject);
begin
  if chkBubinSttNotFinish.Checked then
    chkBubinSttWebViewNo.Checked := True
  else
    proc_Permission;
end;

procedure TFrm_CUT019.proc_Permission;
begin
  if not chkBubinSttFinish.Checked then
  begin
    chkBubinSttWebViewNo.Checked;
    Panel7.Enabled := False;
  end else
  begin
    Panel7.Enabled := True;
  end;

  if not chkBubinSttWebView.Checked then
  begin
    Panel3.Enabled := True;
    Panel8.Enabled := True;
    cxtStartAreaDetail.Properties.ReadOnly := False;
    cxtEndAreaDetail.Properties.ReadOnly := False;
    meoInfo1.Properties.ReadOnly := False;
    meoInfo2.Properties.ReadOnly := False;
    cxtAddCharge.Properties.ReadOnly := False;
    cxtWaitTime.Properties.ReadOnly := False;
    cxtWaitCharge.Properties.ReadOnly := False;
    cxtPassCharge.Properties.ReadOnly := False;
    cxtEtc.Properties.ReadOnly := False;
    meoEtc.Properties.ReadOnly := False;

    cxlbCuTel.Properties.ReadOnly := False;
    cxlbuser.Properties.ReadOnly := False;
    lblStartAreaName1.Properties.ReadOnly := False;
    lblStartAreaName2.Properties.ReadOnly := False;
    lblStartAreaName3.Properties.ReadOnly := False;
    lblEndAreaName1.Properties.ReadOnly := False;
    lblEndAreaName2.Properties.ReadOnly := False;
    lblEndAreaName3.Properties.ReadOnly := False;
    cxtViaAreaDetail.Properties.ReadOnly := False;
    Panel9.Enabled := True;
  end else
  begin
    Panel3.Enabled := False;
    Panel8.Enabled := False;
    cxtStartAreaDetail.Properties.ReadOnly := True;
    cxtEndAreaDetail.Properties.ReadOnly := True;
    meoInfo1.Properties.ReadOnly := True;
    meoInfo2.Properties.ReadOnly := True;
    cxtAddCharge.Properties.ReadOnly := True;
    cxtWaitTime.Properties.ReadOnly := True;
    cxtWaitCharge.Properties.ReadOnly := True;
    cxtPassCharge.Properties.ReadOnly := True;
    cxtEtc.Properties.ReadOnly := True;
    meoEtc.Properties.ReadOnly := True;

    cxlbCuTel.Properties.ReadOnly := True;
    cxlbuser.Properties.ReadOnly := True;
    lblStartAreaName1.Properties.ReadOnly := True;
    lblStartAreaName2.Properties.ReadOnly := True;
    lblStartAreaName3.Properties.ReadOnly := True;
    lblEndAreaName1.Properties.ReadOnly := True;
    lblEndAreaName2.Properties.ReadOnly := True;
    lblEndAreaName3.Properties.ReadOnly := True;
    cxtViaAreaDetail.Properties.ReadOnly := True;
    Panel9.Enabled := False;
  end;
end;

procedure TFrm_CUT019.chkBubinSttNotFinishClick(Sender: TObject);
begin
  proc_Permission;
end;

procedure TFrm_CUT019.chkBubinSttFinishClick(Sender: TObject);
begin
  proc_Permission;
end;

procedure TFrm_CUT019.chkBubinSttWebViewNoClick(Sender: TObject);
begin
  proc_Permission;
end;

procedure TFrm_CUT019.FormShow(Sender: TObject);
begin
  fSetFont(Frm_CUT019, GS_FONTNAME);
  proc_Permission;
end;

procedure TFrm_CUT019.lblEndClick(Sender: TObject);
begin
  if pnlEnd.Visible then
    pnlEnd.Visible := False
  else
  begin
    pnlEnd.Left := cxtEndAreaDetail.Left;
    pnlEnd.Top  := cxtEndAreaDetail.Top + cxtEndAreaDetail.Height;
    pnlEnd.BringToFront;
    pnlEnd.Visible := True;
  end;
end;

procedure TFrm_CUT019.lblStartClick(Sender: TObject);
begin
  if pnlStart.Visible then
    pnlStart.Visible := False
  else
  begin
    pnlStart.Left := cxtStartAreaDetail.Left;
    pnlStart.Top  := cxtStartAreaDetail.Top + cxtStartAreaDetail.Height;
    pnlStart.BringToFront;
    pnlStart.Visible := True;
  end;
end;

procedure TFrm_CUT019.meoInfo1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxMemo(sender).Text := Enc_Control(TcxMemo(sender).Text);
end;

procedure TFrm_CUT019.cxlbCuTelKeyPress(Sender: TObject; var Key: Char);
begin
  if key in ['0'..'9', #13, #8, '-'] then
  else
    key := #0;
end;

procedure TFrm_CUT019.cxlbCuTelKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

end.


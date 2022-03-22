unit xe_JON09;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Vcl.Dialogs, StdCtrls, IniFiles, cxGraphics, cxControls, cxLookAndFeels, MSXML2_TLB,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxGroupBox, cxButtons,
  cxTextEdit, cxLabel, Vcl.ExtCtrls, cxMemo, dxSkinsCore, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_JON09 = class(TForm)
    PnlMain: TPanel;
    cxLabel1: TcxLabel;
    ed_tel: TcxTextEdit;
    cxLabel3: TcxLabel;
    ed_tel_brceo: TcxTextEdit;
    cxLabel4: TcxLabel;
    ed_tel_brceohp: TcxTextEdit;
    cxLabel5: TcxLabel;
    ed_tel_brname: TcxTextEdit;
    cxLabel6: TcxLabel;
    ed_tel_brno: TcxTextEdit;
    cxLabel7: TcxLabel;
    ed_tel_brtel: TcxTextEdit;
    cxLabel8: TcxLabel;
    ed_tel_braddr: TcxTextEdit;
    cxLabel10: TcxLabel;
    ed_cust_tel: TcxTextEdit;
    cxLabel11: TcxLabel;
    ed_cust_name: TcxTextEdit;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    ed_conf_slip: TcxTextEdit;
    cxLabel15: TcxLabel;
    ed_wk_sabun: TcxTextEdit;
    cxLabel16: TcxLabel;
    ed_wk_name: TcxTextEdit;
    cxLabel17: TcxLabel;
    ed_wkhp: TcxTextEdit;
    cxLabel18: TcxLabel;
    ed_wk_brno: TcxTextEdit;
    cxLabel19: TcxLabel;
    ed_wk_brtel: TcxTextEdit;
    cxLabel20: TcxLabel;
    ed_wkphone: TcxTextEdit;
    cxLabel21: TcxLabel;
    ed_INSURANCE_EXPIRATION: TcxTextEdit;
    cxLabel22: TcxLabel;
    ed_wk_cash: TcxTextEdit;
    cxLabel23: TcxLabel;
    ed_WK_INS_NUM: TcxTextEdit;
    cxLabel24: TcxLabel;
    ed_wk_brceo: TcxTextEdit;
    cxLabel25: TcxLabel;
    ed_wk_brname: TcxTextEdit;
    cxLabel26: TcxLabel;
    ed_wk_braddr: TcxTextEdit;
    whbtn_Search: TcxButton;
    pmCustTelSMS: TPopupMenu;
    nm_CustSMS: TMenuItem;
    nm_CustCall: TMenuItem;
    cxlbl1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Panel1: TPanel;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    BtnCall2: TcxButton;
    BtnCall3: TcxButton;
    BtnCall4: TcxButton;
    BtnCall5: TcxButton;
    BtnCall6: TcxButton;
    ed_cust_memo: TcxMemo;
    ed_cust_car: TcxMemo;
    cxLblActive: TLabel;
    lblCancelInfo: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure whbtn_SearchClick(Sender: TObject);
    procedure nm_CustCallClick(Sender: TObject);
    procedure nm_CustSMSClick(Sender: TObject);
    procedure pmCustTelSMSPopup(Sender: TObject);
    procedure BtnCall2Click(Sender: TObject);
    procedure BtnCall3Click(Sender: TObject);
    procedure BtnCall4Click(Sender: TObject);
		procedure BtnCall5Click(Sender: TObject);
    procedure BtnCall6Click(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    FMyOrder: Boolean;
    { Private declarations }
    procedure proc_init;
		procedure pCall_Cust( sCtHp : string );
	public
		{ Public declarations }
    Jon03Tag : Integer;

    procedure Proc_Recieve(ss_RxXML: Widestring);
    procedure proc_orderinfo(sSlip: string; AMyOrder: Boolean = True);
  end;

var
  Frm_JON09: TFrm_JON09;

implementation


{$R *.dfm}

uses xe_Dm, xe_Func, xe_GNL, xe_Msg, xe_SMS01, xe_xml, xe_Lib,
  xe_packet, Main, xe_gnl2;

procedure TFrm_JON09.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON09.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_JON09.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON09.FormDestroy(Sender: TObject);
begin
  FRm_JON09 := Nil;
end;

procedure TFrm_JON09.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then btnClose.Click;
end;

procedure TFrm_JON09.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON09, GS_FONTNAME);
  fSetSkin(Frm_JON09);

  if GT_OCX <> '' then
  begin
    ed_cust_tel.Width := 183;
    ed_wk_brtel.Width := 88;
    ed_wkhp.Width := 89;
    ed_wkphone.Width := 89;
    ed_WK_INS_NUM.Width := 89;

    BtnCall2.Visible := True;
    BtnCall3.Visible := True;
    BtnCall4.Visible := True;
    BtnCall5.Visible := True;
    BtnCall6.Visible := True;
  end else
  begin
    ed_cust_tel.Width := 205;
    ed_wk_brtel.Width := 110;
    ed_wkhp.Width := 114;
    ed_wkphone.Width := 114;
    ed_WK_INS_NUM.Width := 114;

    BtnCall2.Visible := False;
    BtnCall3.Visible := False;
    BtnCall4.Visible := False;
    BtnCall5.Visible := False;
    BtnCall6.Visible := False;
  end;
end;

procedure TFrm_JON09.Proc_Recieve(ss_RxXML: Widestring);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd, ls_Tmp : TStringList;
  i, ia : Integer;
  ls_MSG_Err, ls_ClientKey, sTemp, sContent : string;
  ls_RxXml, s: Widestring;
begin
  try
    ls_RxXml := ss_RxXML;
    xdom := ComsDomDocument.Create;
    try
      if not xdom.loadXML(ls_RxXml) then
      begin
        Exit;
      end;

      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_ClientKey := GetXmlClientKey(ls_rxxml);
        ls_ClientKey := Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5);
        case StrToIntDef(ls_ClientKey, 1) of
          1:
            begin
              if (0 < GetXmlRecordCount(ls_RxXml)) then
              begin
                lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                ls_Rcrd := TStringList.Create;
                try
                  for i := 0 to lst_Result.length - 1 do
                  begin
                    GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                    if (ls_Rcrd[0] = 'TEL') then // 접수정보
                    begin
                      ed_tel.Text := strtocall(ls_Rcrd[1]);
                      ed_tel_brno.Text := ls_Rcrd[3];
                      ed_tel_brname.Text := ls_Rcrd[4];
                      ed_tel_brceo.Text := StringOfChar('*', Length(ls_Rcrd[5]));
                      ed_tel_brceohp.Text := strtocall(ls_Rcrd[6]);
                      ed_tel_brtel.Text := strtocall(ls_Rcrd[7]);
                      ed_tel_braddr.Text := StringOfChar('*', Length(ls_Rcrd[8]));
                    end else
                    if (ls_Rcrd[0] = 'BRC') then // 기사정보
                    begin
                      ed_wk_sabun.Text := ls_Rcrd[1];
                      ed_wk_name.Text := ls_Rcrd[2];
                      ed_wk_brno.Text := ls_Rcrd[3];
                      ed_wk_brname.Text := ls_Rcrd[4];
                      ed_wk_brceo.Text := ls_Rcrd[5];
                      ed_wk_brtel.Text := strtocall(ls_Rcrd[7]);
                      ed_wk_braddr.Text := ls_Rcrd[8];
                      ed_wkhp.Text := strtocall(ls_Rcrd[9]);
                      ed_wkphone.Text := strtocall(ls_Rcrd[10]);
                      ed_WK_INS_NUM.Text := ls_Rcrd[11];
                      ed_INSURANCE_EXPIRATION.Text := ls_Rcrd[12];
                      ed_WK_CASH.Text := ls_Rcrd[13];
                    end else
                    if (ls_Rcrd[0] = 'CST') then // 고객정보
                    begin
                      ed_cust_name.Text := ls_Rcrd[1];

                      sTemp := '';
          						sContent := StringReplace(ls_Rcrd[2], '|', '¶',  [rfReplaceAll]);
                      if Trim(sContent) <> '' then
                      begin
                   			ls_Tmp := TStringList.Create;
                        try
                    			GetTextSeperationEx2('¶', sContent, ls_Tmp);
                    			for ia := 0 to ls_Tmp.Count - 1 do
                    			begin
                            if sTemp = '' then
                              sTemp := sTemp + ls_Tmp[ia]
                            else
                              sTemp := sTemp + #13#10 + ls_Tmp[ia];
                    			end;
                        finally
                          FreeAndNil(ls_Tmp);
                        end;
                      end;
                      ed_cust_memo.Text := sTemp;

                      sTemp := '';
          						sContent := StringReplace(ls_Rcrd[3], '|', '¶',  [rfReplaceAll]);
                      if Trim(sContent) <> '' then
                      begin
                   			ls_Tmp := TStringList.Create;
                        try
                    			GetTextSeperationEx2('¶', sContent, ls_Tmp);
                    			for ia := 0 to ls_Tmp.Count - 1 do
                    			begin
                            if sTemp = '' then
                              sTemp := sTemp + ls_Tmp[ia]
                            else
                              sTemp := sTemp + #13#10 + ls_Tmp[ia];
                    			end;
                        finally
                          FreeAndNil(ls_Tmp);
                        end;
                      end;
                      ed_cust_car.Text := sTemp;

                      if pos('*', ed_cust_tel.Text) > 0 then
                      begin
                        s := ed_cust_name.Text;
                        if Trim(s) <> '' then
                          ed_cust_name.Text := '***';
                        s := ed_cust_memo.Text;
                        if Trim(s) <> '' then
                          ed_cust_memo.Text := '******';
                        s := ed_cust_car.Text;
                        if Trim(s) <> '' then
                          ed_cust_car.Text := '******';
                      end;
                    end;
                  end;
                finally
                  ls_Rcrd.Free;
                end;
              end;
            end;
          2:
            begin
              if (0 < GetXmlRecordCount(ls_RxXml)) then
              begin
                lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                ls_Rcrd := TStringList.Create;
                try
                  GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
                  ed_tel.Text := strtocall(ls_Rcrd[0]);
                  ed_tel_brno.Text := ls_Rcrd[1];
                  ed_tel_brname.Text := ls_Rcrd[2];
                  ed_tel_brceo.Text := StringOfChar('*', Length(ls_Rcrd[3]));  // 지사장
                  ed_tel_brceohp.Text := strtocall(ls_Rcrd[4]);
                  ed_tel_brtel.Text := strtocall(ls_Rcrd[5]);
                  ed_tel_braddr.Text := StringOfChar('*', Length(ls_Rcrd[6])); // 주소

                  ed_wk_sabun.Text := ls_Rcrd[7];
                  ed_wk_name.Text := ls_Rcrd[8];
                  ed_wk_brno.Text := ls_Rcrd[14];
                  ed_wk_brname.Text := ls_Rcrd[15];
                  ed_wk_brceo.Text := ls_Rcrd[16];
                  ed_wk_brtel.Text := strtocall(ls_Rcrd[18]);
                  ed_wk_braddr.Text := ls_Rcrd[19];

                  if FMyOrder then
                    ed_wkhp.Text := strtocall(ls_Rcrd[9])
                  else
                  begin
                    if StartDateTime('yyyymmddhhmmss') >= ls_Rcrd[24] then        // 과거 오더
                    begin
                      ed_wkhp.Text := strtocall(ls_Rcrd[26]);
                    end else
                    begin                            // 당일 오더
                      if Trim(ls_Rcrd[26]) <> '' then
                        ed_wkhp.Text := strtocall(ls_Rcrd[26])
                      else
                        ed_wkhp.Text := strtocall(ls_Rcrd[9])
                    end;
                  end;

                  if FMyOrder then
                    ed_wkphone.Text := strtocall(ls_Rcrd[10])
                  else
                  begin
                    if StartDateTime('yyyymmddhhmmss') >= ls_Rcrd[24] then     // 과거 오더
                    begin
                      ed_wkphone.Text := strtocall(ls_Rcrd[27]);
                    end else
                    begin
                      if Trim(ls_Rcrd[26]) <> '' then
                        ed_wkphone.Text := strtocall(ls_Rcrd[27])
                      else
                        ed_wkphone.Text := strtocall(ls_Rcrd[10])
                    end;
                  end;
                  ed_WK_INS_NUM.Text := ls_Rcrd[11];
                  ed_INSURANCE_EXPIRATION.Text := ls_Rcrd[12];
                  ed_WK_CASH.Text := ls_Rcrd[13];

                  ed_cust_name.Text := ls_Rcrd[20];

                  sTemp := '';
      						sContent := StringReplace(ls_Rcrd[21], '|', '¶',  [rfReplaceAll]);
                  if Trim(sContent) <> '' then
                  begin
               			ls_Tmp := TStringList.Create;
                    try
                			GetTextSeperationEx2('¶', sContent, ls_Tmp);
                			for ia := 0 to ls_Tmp.Count - 1 do
                			begin
                        if sTemp = '' then
                          sTemp := sTemp + ls_Tmp[ia]
                        else
                          sTemp := sTemp + #13#10 + ls_Tmp[ia];
                			end;
                    finally
                      FreeAndNil(ls_Tmp);
                    end;
                  end;
                  ed_cust_memo.Text := sTemp;

                  sTemp := '';
      						sContent := StringReplace(ls_Rcrd[22], '|', '¶',  [rfReplaceAll]);
                  if Trim(sContent) <> '' then
                  begin
               			ls_Tmp := TStringList.Create;
                    try
                			GetTextSeperationEx2('¶', sContent, ls_Tmp);
                			for ia := 0 to ls_Tmp.Count - 1 do
                			begin
                        if sTemp = '' then
                          sTemp := sTemp + ls_Tmp[ia]
                        else
                          sTemp := sTemp + #13#10 + ls_Tmp[ia];
                			end;
                    finally
                      FreeAndNil(ls_Tmp);
                    end;
                  end;
                  ed_cust_car.Text := sTemp;

                  ed_cust_tel.Text := func_Cust_Tel(ls_Rcrd[23], ls_Rcrd[24], ls_Rcrd[1], '');
                  if ((GT_USERIF.LV = '60') and (scb_BranchCode.IndexOf(ls_Rcrd[1]) = -1))
                    or ((GT_USERIF.LV <> '60') and ((Trim(ls_Rcrd[25]) <> GT_USERIF.BR) or IsCustInfoDayOpen(ls_Rcrd[1], ls_Rcrd[24]))) then
                  begin
                    s := ed_cust_name.Text;
                    if (Trim(s) <> '') then
                      ed_cust_name.Text := '***';

                    s := ed_cust_memo.Text;
                    if Trim(s) <> '' then
                      ed_cust_memo.Text := '******';

                    s := ed_cust_car.Text;
                    if Trim(s) <> '' then
                      ed_cust_car.Text := '******';
                  end;

                  if StartDateTime('yyyymmddhhmmss') >= ls_Rcrd[24] then
                    Self.Tag := 2
                  else
                    Self.Tag := 1;

                  if ls_Rcrd.Count > 28 then
                  begin
                    if (ls_Rcrd[28] = '-1') and (ls_Rcrd[29] = '-1') then
                    begin
                      lblCancelInfo.Caption := '';
                    end else
                    begin
                      lblCancelInfo.Caption := Format('누적취소벌금 %s원(%s회)', [StrToMoney(ls_Rcrd[29]), ls_Rcrd[28]]);
                    end;

                    if ls_Rcrd[30] = 'y' then
                      cxTextEdit1.Text := '스틱가능'
                    else if ls_Rcrd[30] = 'n' then
                      cxTextEdit1.Text := '스틱불가'
                    else
                      cxTextEdit1.Text := '';

                    if ls_Rcrd[31] = 'y' then
                      cxTextEdit1.Text := cxTextEdit1.Text + ', 탁송가능'
                    else if ls_Rcrd[31] = 'n' then
                      cxTextEdit1.Text := cxTextEdit1.Text + ', 탁송불가'
                    else
                      cxTextEdit1.Text := cxTextEdit1.Text + '';
                  end;
                finally
                  ls_Rcrd.Free;
                end;
              end;
              self.Show;
            end;
        end;
      end else
      begin
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
      end;
    finally
      xdom := Nil;
    end;
  except
  end;
end;

procedure TFrm_JON09.whbtn_SearchClick(Sender: TObject);
begin
  proc_orderinfo(ed_conf_slip.Text, FMyOrder);
end;

procedure TFrm_JON09.proc_init;
begin
  ed_tel.Text := '';
  ed_tel_brno.Text := '';
  ed_tel_brname.Text := '';
  ed_tel_brceo.Text := '';
  ed_tel_brceohp.Text := '';
  ed_tel_brtel.Text := '';
  ed_tel_braddr.Text := '';
  ed_wk_sabun.Text := '';
  ed_wk_name.Text := '';
  ed_wk_brno.Text := '';
  ed_wk_brname.Text := '';
  ed_wk_brceo.Text := '';
  ed_wk_brtel.Text := '';
  ed_wk_braddr.Text := '';
  ed_wkhp.Text := '';
  ed_wkphone.Text := '';
  ed_WK_INS_NUM.Text := '';
  ed_INSURANCE_EXPIRATION.Text := '';
  ed_WK_CASH.Text := '';
  ed_cust_name.Text := '';
  ed_cust_memo.Text := '';
  ed_cust_car.Text := '';
  ed_cust_name.Text := '';
  ed_cust_memo.Text := '';
  ed_cust_car.Text := '';
  if TCK_USER_PER.COM_WkCashView = '1' then
  begin
    ed_wk_cash.Properties.EchoMode := eemNormal;
  end else
  begin
    ed_wk_cash.Properties.EchoMode := eemPassword;
  end;
end;

procedure TFrm_JON09.proc_orderinfo(sSlip: string; AMyOrder: Boolean);
var
  XmlData, Param, ErrMsg: string;
  ErrCode: integer;
begin
  if Trim(sSlip) = '' then Exit;

  FMyOrder := AMyOrder;

  Param := sSlip + '│' + IntToStr(Self.Tag);

  if not RequestBase(GetSel05('JON092', 'a01.order_info_02', '100', Param), XmlData, ErrCode, ErrMsg) then Exit;

  ed_conf_slip.Text := sSlip;
  proc_init;
  proc_recieve(XmlData);
end;

procedure TFrm_JON09.nm_CustCallClick(Sender: TObject);
var
	sCustTel : string;
begin
	sCustTel := StringReplace(ed_cust_tel.Text, '-', '', [rfReplaceAll]);
  Frm_Main.pCallingCID(sCustTel, GT_POSS_KEYNUM);

  // 해당 창 종료.
  btnCloseClick(Sender);
end;

procedure TFrm_JON09.nm_CustSMSClick(Sender: TObject);
var sCustTel, sKeyNum : string;
begin
  // SMS 문자 전송 2011.07.13
  // 고객 전화번호로 문자 전송하기.

  if pos('*', ed_cust_tel.Text) > 0 then
  begin
    GMessagebox('문자(SMS) 보내기 권한이 없습니다.', CDMSE);
    exit;
  end;
  if Length(trim(ed_cust_tel.Text)) < 8 then
  begin
    GMessagebox('전화번호를 확인 하세요!', CDMSE);
    exit;
  end;

  try

    sKeyNum := ed_tel.Text;

    sCustTel := ed_cust_tel.Text;

    if StrToIntDef(copy(sCustTel, 1, 2), 0) <> 1 then
    begin
      GMessagebox('고객번호가 핸드폰이 아닙니다.' + #13#10 + '문자메세지를 보낼수 없습니다.', CDMSE);
      exit;
    end;

    try
      if Not Assigned(Frm_SMS01) then Frm_SMS01 := TFrm_SMS01.Create(Nil);
      Frm_SMS01.mm_message.Text := '';
      sKeyNum := StringReplace(sKeyNum, '-', '', [rfReplaceAll]);
      Frm_SMS01.ed_send.Text := sKeyNum;
      Frm_SMS01.ls_sms.Items.Clear;
      Frm_SMS01.ls_sms.Items.Add(sCustTel);
      Frm_SMS01.Proc_Init;
			Frm_SMS01.sSendKind := '';
			Frm_SMS01.rdo_SMS.visible := False;
			Frm_SMS01.rdo_PUSH.visible := False;
      Frm_SMS01.Show;
    finally

    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;

  // 해당 창 종료.
  btnCloseClick(Sender);
end;

procedure TFrm_JON09.pmCustTelSMSPopup(Sender: TObject);
begin
  // 전화걸기 OCX 설치 확인 시
  if GT_OCX <> '' then
  begin
    nm_CustCall.Caption  := '고객 전화번호로 전화걸기';
    nm_CustCall.Enabled  := True;
  end else
  begin
    nm_CustCall.Caption  := '고객 전화번호로 전화걸기-CTI서버없음(사용불가)';
    nm_CustCall.Enabled  := False;
  end;
end;

procedure TFrm_JON09.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON09.BtnCall2Click(Sender: TObject);
begin
	pCall_Cust(ed_cust_tel.Text);
end;

procedure TFrm_JON09.btnCloseClick(Sender: TObject);
begin
  Close;
  if Assigned(Frm_Main.Frm_JON03[Jon03Tag]) then
  begin
    if Frm_Main.JON03MNG[Jon03Tag].Use then
    begin
      if Frm_Main.Frm_JON03[Jon03Tag].Grd2.CanFocus then
        Frm_Main.Frm_JON03[Jon03Tag].Grd2.SetFocus
      else
      if Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.CanFocus then
        Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.SetFocus;
    end;
  end;
end;

procedure TFrm_JON09.BtnCall3Click(Sender: TObject);
begin
	pCall_Cust(ed_wk_brtel.Text);
end;

procedure TFrm_JON09.BtnCall4Click(Sender: TObject);
begin
	pCall_Cust(CalltoStr(ed_wkhp.Text));
end;

procedure TFrm_JON09.BtnCall5Click(Sender: TObject);
begin
	pCall_Cust(Calltostr(ed_wkphone.Text));
end;

procedure TFrm_JON09.BtnCall6Click(Sender: TObject);
begin
	pCall_Cust(ed_WK_INS_NUM.Text);
end;

procedure TFrm_JON09.pCall_Cust(sCtHp: string);
var
	sCustTel : string;
begin
	sCustTel := StringReplace(sCtHp, '-', '', [rfReplaceAll]);
  Frm_Main.pCallingCID(sCustTel, GT_POSS_KEYNUM);
end;


end.


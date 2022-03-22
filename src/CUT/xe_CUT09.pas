unit xe_CUT09;

interface

uses
	Windows, Messages, SysUtils, Hash, Variants, Classes, Graphics, Controls, Forms,
	Dialogs, cxControls, cxContainer, cxEdit, cxLabel, Menus, MSXML2_TLB,
  StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, ExtCtrls, cxRadioGroup, ComObj,
  cxGraphics, cxCheckBox, cxCheckComboBox, cxLookAndFeels,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxGroupBox, cxLookAndFeelPainters,
  cxCurrencyEdit, dxSkinsCore, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_CUT09 = class(TForm)
		cxLabel3: TcxLabel;
    cxDate01: TcxDateEdit;
		cxLabel4: TcxLabel;
    cxDate02: TcxDateEdit;
    edUseCnt01: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
		cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxButton5: TcxButton;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    btn_WebId: TcxButton;
    edCbCode: TEdit;
    edKeyNum: TEdit;
    edHdNo: TEdit;
    edBrNo: TEdit;
    edName01: TcxTextEdit;
    edName03: TcxTextEdit;
    edName02: TcxTextEdit;
    edName04: TcxTextEdit;
    edText01: TcxTextEdit;
    edText02: TcxTextEdit;
    edText03: TcxTextEdit;
    edText04: TcxTextEdit;
    Panel1: TPanel;
		rbList01: TcxRadioButton;
    rbList02: TcxRadioButton;
    Panel4: TPanel;
    rb_SurtaxY: TcxRadioButton;
    rb_SurtaxN: TcxRadioButton;
    Panel3: TPanel;
    rbList05: TcxRadioButton;
    rbList06: TcxRadioButton;
    edWebID: TcxTextEdit;
    edWebPW: TcxTextEdit;
    cxButton39: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    edtTaxMName: TcxTextEdit;
    dtRegDate: TcxDateEdit;
    cxLabel26: TcxLabel;
    dtFinDate: TcxDateEdit;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    edtEmail: TcxTextEdit;
    cxLabel29: TcxLabel;
    edtCustMemo: TcxTextEdit;
    cxLabel31: TcxLabel;
    edtTaxOwner: TcxTextEdit;
    cxLabel32: TcxLabel;
    edtTaxSNo: TcxTextEdit;
    cxLabel33: TcxLabel;
    edtTaxUpTae: TcxTextEdit;
    cxLabel34: TcxLabel;
    edtTaxUpJong: TcxTextEdit;
    cxLabel35: TcxLabel;
    edtTaxAddr: TcxTextEdit;
    cbbTaxDate: TcxComboBox;
    rbPayMethodPost: TcxRadioButton;
    cxlbl1: TcxLabel;
    cxChkTitle: TcxCheckComboBox;
		cxCheckBox1: TcxCheckBox;
    PnlTitle: TPanel;
    cxButton7: TcxButton;
    PnlMain: TPanel;
    cxGroupBox1: TcxGroupBox;
    Shape1: TShape;
    Shape3: TShape;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxLabel30: TcxLabel;
    Shape4: TShape;
    Panel5: TPanel;
    Shape34: TShape;
    rb_TaxBill: TcxRadioButton;
    rb_CardBill: TcxRadioButton;
    cxLabel1: TcxLabel;
    rb_CashBill: TcxRadioButton;
    cxLabel2: TcxLabel;
    cb_CalFrom: TcxComboBox;
    cb_CalTo: TcxComboBox;
    cxLabel18: TcxLabel;
    cb_Contract: TcxComboBox;
    cxLblActive: TLabel;
    cxLabel23: TcxLabel;
    edtCustStateMemo: TcxTextEdit;
    btnBlockWKList: TcxButton;
    cxGroupBox4: TcxGroupBox;
    chkLimitUse: TcxCheckBox;
    cxLabel36: TcxLabel;
    cbLimitBaseDay: TcxComboBox;
    cxLabel38: TcxLabel;
    cedtLimitCount: TcxCurrencyEdit;
    cedtLimitAmt: TcxCurrencyEdit;
    chkLimitOver: TcxCheckBox;
    btnLimitR: TcxButton;
    cxLabel39: TcxLabel;
    cxLabel40: TcxLabel;
    cxLabel42: TcxLabel;
		cxLabel43: TcxLabel;
    cxGroupBox5: TcxGroupBox;
    cxLimitCardVat: TcxComboBox;
    cxLabel41: TcxLabel;
    pnl_MakeId: TcxGroupBox;
    cxLabel44: TcxLabel;
    edt_WebIdFirst: TcxTextEdit;
    cxLabel45: TcxLabel;
    edt_WebPW1: TcxTextEdit;
    cxLabel46: TcxLabel;
    edt_WebPW2: TcxTextEdit;
    btn_IdCheck: TcxButton;
    btn_Confirm: TcxButton;
    btn_close: TcxButton;
    btn_WebPw: TcxButton;
    cxLabel47: TcxLabel;
    Shape2: TShape;
    cxLabel37: TcxLabel;
    cedtDLimitCount: TcxCurrencyEdit;
    cedtDLimitAmt: TcxCurrencyEdit;
    Shape5: TShape;
    cxLabel48: TcxLabel;
    cxLabel49: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure cxButton39Click(Sender: TObject);
    procedure edName01Exit(Sender: TObject);
    procedure edName03Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
		procedure cxButton3Click(Sender: TObject);
    procedure btn_WebIdClick(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure rbList01Click(Sender: TObject);
    procedure edWebIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edWebIDClick(Sender: TObject);
    procedure edtEmailKeyPress(Sender: TObject; var Key: Char);
    procedure edtTaxSNoKeyPress(Sender: TObject; var Key: Char);
    procedure cxButton7Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxComboBox3PropertiesChange(Sender: TObject);
    procedure rb_CardBillClick(Sender: TObject);
    procedure rb_TaxBillClick(Sender: TObject);
    procedure cb_CalFromClick(Sender: TObject);
    procedure btnBlockWKListClick(Sender: TObject);
    procedure edName01KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnLimitRClick(Sender: TObject);
    procedure edName02PropertiesChange(Sender: TObject);
		procedure btn_WebPwClick(Sender: TObject);
		procedure btn_IdCheckClick(Sender: TObject);
		procedure btn_closeClick(Sender: TObject);
    procedure edt_WebPW1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_WebPW2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_ConfirmClick(Sender: TObject);
    procedure edt_WebPW2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
	private
		{ Private declarations }
		base_id: string;
		id_Chk: Integer;
		procedure proc_save(iLevel, itype: Integer);
		procedure proc_recieve(ls_rxxml: Widestring);
		procedure proc_search_bubin_id;
  public
    { Public declarations }
		procedure proc_init;
		procedure proc_search_bubin;
		procedure proc_search_bubin2;
  end;

var
  Frm_CUT09: TFrm_CUT09;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Msg, xe_xml, xe_Query,
	xe_CUT1, xe_Flash, xe_Packet, xe_CUT014;



procedure TFrm_CUT09.proc_init;
begin
	cxDate01.Text := FormatDateTime('yyyy-mm-dd', now);
  cxDate02.Text := FormatDateTime('yyyy-mm-dd', now);
  edUseCnt01.Text := '';
  edName01.Text := '';
  edName02.Text := '';
  edName03.Text := '';
  edName04.Text := '';
  edText01.Text := '';
  edText02.Text := '';
  edText03.Text := '';
  edText04.Text := '';
  edWebID.Text := '';
	edWebPW.Text := '';
  rbList02.Checked := true;
  rb_SurtaxY.Checked := True;
  rbList05.Checked := True;

  cxButton39.Enabled := True;
  cxButton1.Enabled := True;
  cxButton2.Enabled := True;
  cxButton3.Enabled := True;

  edtEmail.Clear;
  dtRegDate.Clear;
  dtFinDate.Clear;
  edtCustMemo.Clear;
  edtCustStateMemo.Clear;
  cbbTaxDate.ItemIndex := 0;
  edtTaxMName.Clear;
  edtTaxOwner.Clear;
  edtTaxSNo.Clear;
  edtTaxUpTae.Clear;
  edtTaxUpJong.Clear;
  edtTaxAddr.Clear;
  btnBlockWKList.Enabled := False;

  chkLimitUse.Checked := False;
  cbLimitBaseDay.ItemIndex := 0;
  cedtLimitCount.Value := 0;
	cedtLimitAmt.Value := 0;

  cedtDLimitCount.Value := 0;
	cedtDLimitAmt.Value := 0;

  cxLimitCardVat.ItemIndex := 3;

  if Self.Tag = 0 then
  begin
    cxButton39.Visible := True;
    cxButton1.Visible := True;
    cxButton2.Caption := '��������';
    cxButton2.Enabled := False;
    cxButton3.Enabled := False;
  end else
  if self.Tag = 1 then
  begin
    cxButton39.Visible := False;
    cxButton1.Visible := False;
    cxButton2.Caption := '����';
    btnBlockWKList.Enabled := True;
    proc_search_bubin;
  end else
  if Self.Tag = 2 then
  begin
		cxButton39.Visible := True;
		cxButton1.Enabled := False;
    cxButton2.Caption := '��������';
    cxButton3.Enabled := False;
    proc_search_bubin2;
  end;

	//2008-09-02 �ۼ��� : ��â�� (�űԵ�� �϶� ���̵� üũ��ư Ȱ��ȭ...)
	id_Chk := 0; //���̵� üũ�� �ʱ�ȭ...
  if PnlTitle.Caption = '  ����(��ü) ���� ����ϱ�' then
	begin
		btn_WebId.Enabled := True;
		btn_WebId.caption := '���̵��Է�';
		btn_WebId.Tag := 1;
	end;
	pnl_Makeid.tag := -1;
	pnl_Makeid.Visible := False;
end;

procedure TFrm_CUT09.FormCreate(Sender: TObject);
var
  Save: LongInt; // ��Ÿ��Ʋ ���ſ�.
	i : Integer;
begin
  try
    // ��¥������ 'yy/mm/dd'�ϰ�� ���� �߻� ���ɼ����� ���� ��ü Display ���� ����
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
  // �� Ÿ��Ʋ ����..
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

  proc_init;
end;

procedure TFrm_CUT09.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_CUT09.FormDestroy(Sender: TObject);
begin
  Frm_CUT09 := Nil;
end;

procedure TFrm_CUT09.FormShow(Sender: TObject);
begin
  fSetFont(Frm_CUT09, GS_FONTNAME);
end;

procedure TFrm_CUT09.cxButton39Click(Sender: TObject);
begin
  if GMessagebox('�ۼ��� ���� �ʱ�ȭ �˴ϴ�.' + #13#10 + '�Ͻðڽ��ϱ�?',
    CDMSQ) = idok then
  begin
    proc_init;
  end;
end;

procedure TFrm_CUT09.edName01Exit(Sender: TObject);
begin
  if edName02.Text = '' then
  begin
    if Length(AnsiString(edName01.Text)) <= 30 then
      edName02.Text := edName01.Text;
  end;
end;

procedure TFrm_CUT09.edName01KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_CUT09.edName02PropertiesChange(Sender: TObject);
begin
  if Length(AnsiString(TcxTextEdit(Sender).Text)) > 30 then
  begin
    TcxTextEdit(Sender).Text := CutString(AnsiString(TcxTextEdit(Sender).Text), 30);
  end;
end;

procedure TFrm_CUT09.edName03Exit(Sender: TObject);
begin
  if edName04.Text = '' then
  begin
    if Length(AnsiString(edName03.Text)) <= 30 then
      edName04.Text := edName03.Text;
  end;
end;

procedure TFrm_CUT09.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_CUT09.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_CUT09.proc_recieve(ls_rxxml: Widestring);
var
  xdom: msDomDocument;
  ls_ClientKey, ls_Msg_Err : string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
begin
	try
    xdom := ComsDomDocument.Create;
    try
      if not xdom.loadXML(ls_rxxml) then
        Exit;

			ls_ClientKey := GetXmlClientKey(ls_rxxml);

      ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_Msg_Err) then
      begin
        if ls_ClientKey = 'BUBINIDCHK' then
        begin
          if (0 < GetXmlRecordCount(ls_rxxml)) then
          begin
            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
            ls_Rcrd := TStringList.Create;
            try
              GetTextSeperationEx('��', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
//              ls_Rcrd := GetTextSeperation('��', lst_Result.item[0].attributes.getNamedItem('Value').Text);
              if ls_Rcrd[0] = '0' then
              begin
								GMessagebox('��� ������ ���̵� �Դϴ�.', CDMSE);
								edt_WebPW1.Enabled := True;
								edt_WebPW2.Enabled := True;
								edt_WebPW1.SetFocus;
								btn_Confirm.Tag := 1; //�ߺ�üũ ��
							end
              else
							begin
								GMessagebox('������� ���̵� �Դϴ�.', CDMSE);
              end;
            finally
              ls_Rcrd.Free;
            end;

          end;
        end else
				if ls_ClientKey = 'BUBINSEARCH2' then
        begin
          if (0 < GetXmlRecordCount(ls_rxxml)) then
          begin
            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
            ls_Rcrd := TStringList.Create;
            try
              GetTextSeperationEx('��', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
              edName01.Text := ls_Rcrd[0];
              edName02.Text := ls_Rcrd[1];
            finally
              ls_Rcrd.Free;
            end;
          end;
        end;
      end else
      begin
        GMessagebox(MSG012 + CRLF + ls_Msg_Err, CDMSE);
      end;
    finally
      xdom := Nil;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_CUT09.proc_save(iLevel, itype: Integer);
var
  sCode, sRateType, sUseyn, sCustYn, sTax : string;
  ErrCode: integer;
	Param, ErrMsg, XmlData : string;
	sTmp : string;
	vHash : THashSHA2;
begin
	if (edName01.Text = '') or (edName03.Text = '') or (edName02.Text = '') or
    (edName04.Text = '') then
  begin
    GMessagebox('���θ�, �μ��� �Է��� �ʼ� �Դϴ�.', CDMSE);
    exit;
  end;

  //�űԵ���̳� �����ϱ� ���� ���̵� üũ�� �Ѵ�.
	if (base_id <> edWebID.Text) then
  begin
    if id_Chk = 0 then
    begin
      GMessagebox('���̵� üũ�� �����ϼ���!', CDMSE);
      Exit;
    end;
  end;

  if iType = 0 then
  begin
    case iLevel of
      0: sCode := '';
      1: sCode := Copy(edCbCode.Text, 1, 5);
      //2 : sCode := Copy(edt_bubin_modify10.Text,1,7);
      //2008-09-09  �ۼ��� : ��â�� (���ε�Ͻ� 100�� �̻� ��ϵǴ� ��찡 �־ ���긮��Ʈ�� 1�ڸ��� �þ)
      2: sCode := Copy(edCbCode.Text, 1, 8);
    end;
  end
  else
  begin
    sCode := edCbCode.Text;
  end;
  if rbList02.Checked then
    sRateType := '1'
  else if rbPayMethodPost.Checked then
    sRateType := '2'
  else
    sRateType := '0';
  sUseyn := IntToStr(cb_Contract.itemindex);

  if rbList05.Checked then
    sCustYn := 'y'
  else
    sCustYn := 'n';
  if rb_SurtaxY.Checked then
    sTax := 'y'
	else
    sTax := 'n';

  Param := IntToStr(iType);
  Param := Param + '��' + IntToStr(iLevel);
  Param := Param + '��' + sCode;
  Param := Param + '��' + edName01.Text;
  Param := Param + '��' + edName03.Text;
  Param := Param + '��' + edText01.Text;
  Param := Param + '��' + StringReplace(edText02.Text, '-', '', [rfReplaceAll]);
  Param := Param + '��' + edText03.Text;
  Param := Param + '��' + edText04.Text;
  Param := Param + '��' + sRateType; //10
	Param := Param + '��' + edWebID.Text;
	
//	sTmp := vHash.GetHashString(edWebPW.Text+'callmaner#2106Key',SHA256); 
	Param := Param + '��' + edWebPW.Text;//sTmp;
	
  Param := Param + '��' + En_Coding(GT_USERIF.ID);
  Param := Param + '��' + edHdNo.Text;
  Param := Param + '��' + edBrNo.Text;
  Param := Param + '��' + edKeyNum.Text;
  Param := Param + '��' + 'y';                // 17.��뿩��
  Param := Param + '��' + sCustYn;
  Param := Param + '��' + edName02.Text;
  Param := Param + '��' + edName04.Text; //20
  Param := Param + '��' + sTax;
  Param := Param + '��' + edtEmail.Text;
  Param := Param + '��' + dtRegDate.Text;
  Param := Param + '��' + dtFinDate.Text;
	Param := Param + '��' + edtCustMemo.Text;
  Param := Param + '��' + cbbTaxDate.Text;
  Param := Param + '��' + edtTaxMName.Text;
	Param := Param + '��' + edtTaxOwner.Text;
  Param := Param + '��' + edtTaxSNo.Text;
  Param := Param + '��' + edtTaxUpTae.Text;  //30
  Param := Param + '��' + edtTaxUpJong.Text;
  Param := Param + '��' + edtTaxAddr.Text;
//-->�߰� Param<--/////
	Param := Param + '��' + IntToStr(cb_CalFrom.ItemIndex + 1);
	if cb_CalTo.ItemIndex = 31 then
		Param := Param + '��' + '����'
	else
		Param := Param + '��' + IntToStr(cb_CalTo.ItemIndex + 1);
	if rb_TaxBill.Checked  then Param := Param + '��' + '0';
  if rb_CardBill.Checked then Param := Param + '��' + '1';
  if rb_CashBill.Checked then Param := Param + '��' + '2';
  Param := Param + '��' + sUseyn;                  //36
	Param := Param + '��' + edtCustStateMemo.Text;                  //37 ���λ��¸޸�   ��࿩�ΰ��� �޸�

  if chkLimitUse.Checked then Param := Param + '��' + 'y'         //38 ��뿩��y/n
                         else Param := Param + '��' + 'n';
  Param := Param + '��' + cbLimitBaseDay.Text;                    //39 �ʱ�ȭ ��
  Param := Param + '��' + FloatToStr(cedtLimitCount.Value);         //40 �⺻Ƚ��
  Param := Param + '��' + FloatToStr(cedtLimitAmt.Value);           //41 �⺻�ݾ�
  if chkLimitOver.Checked then Param := Param + '��' + 'y'        //42 �ĺ��������ɿ���y/n
                          else Param := Param + '��' + 'n';

	if Pos('�븮', cxLimitCardVat.Text) > 0 then Param := Param + '��' + '1' else                  //43 ī�����������Ÿ��{0:������, 1:�븮���,2:����Աݾ�,3:ī������ݾ�}
	if Pos('���', cxLimitCardVat.Text) > 0 then Param := Param + '��' + '2' else
	if Pos('ī��', cxLimitCardVat.Text) > 0 then Param := Param + '��' + '3'
																					else Param := Param + '��' + '0';

	Param := Param + '��' + IntToStr(StrToIntRltDef(cxLimitCardVat.Text));            //44 ī����������ᰪ

  Param := Param + '��' + FloatToStr(cedtDLimitCount.Value);         //45 �μ��⺻Ƚ��
  Param := Param + '��' + FloatToStr(cedtDLimitAmt.Value);           //46 �μ��⺻�ݾ�

  if not RequestBase(GetCallable06('SET_CUST_BGROUP', 'MNG_BGROUP.SET_CUST_BGROUP', En_Coding(Param)), XmlData, ErrCode, ErrMsg) then
  begin
		GMessagebox(Format('�������� ������ ������ �߻��Ͽ����ϴ�.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

  Frm_main.proc_bubinlist_insert;  // ���� �� ���� ���� ����ȸ
  GMessagebox('����Ǿ����ϴ�.', CDMSI);
end;

procedure TFrm_CUT09.proc_search_bubin;
var
	XmlData, Param, ErrMsg : string;
	xdom: msDomDocument;
	lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd : TStringList;
	i, j, ErrCode : Integer;
	sDate: string;
	DateTime: TDateTime;
begin
	try
		Param := '';
    Param := edCbCode.Text + '��' + edBrNo.Text;
		if not RequestBase(GetSel06('INFO_CUST_BGROUP', 'MNG_BGROUP.INFO_CUST_BGROUP', '10', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('�������� ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Exit;
		end;

		xdom := ComsDomDocument.Create;
    try
		  xdom.loadXML(XmlData);
		  if not xdom.loadXML(XmlData) then
		  begin
        Exit;
		  end;
		  lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
		  if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
		  begin
		  	lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
		  	ls_Rcrd := TStringList.Create;
		  	try
		  		for I := 0 to lst_Result.length - 1 do
		  		begin
		  			GetTextSeperationEx2('��', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
            edName01.Text := ls_Rcrd[0];
            edName03.Text := ls_Rcrd[1];
            edText01.Text := ls_Rcrd[2];
            edText02.Text := strtocall(ls_Rcrd[3]);
            edText03.Text := ls_Rcrd[4];
            edText04.Text := ls_Rcrd[5];
            rbList01.Tag := 1;
            if ls_Rcrd[6] = '0' then
              rbList01.Checked := True
            else if ls_Rcrd[6] = '2' then
              rbPayMethodPost.Checked := True
            else
              rbList02.Checked := True;
            rbList01.Tag := 0;
						edWebID.Text := ls_Rcrd[7];
						//2008-09-02 �ۼ��� : ��â�� (���̵�üũ�� �ϱ����� ������ ���̵� �����Ѵ�.)
						base_id := ls_Rcrd[7];
						if base_id = '' then
						begin
							btn_WebId.Enabled := True;
							btn_WebId.caption := '���̵��Է�';
							btn_WebId.Tag := 1;
						end else
						begin
							btn_WebId.Enabled := False;
							btn_WebId.caption := '���̵��Է�';
							btn_WebId.Tag := 0;
						end;
						edWebPW.Text := ls_Rcrd[8];
            sDate := ls_Rcrd[9];
            if sDate <> '' then
            begin
              sDate := StringReplace(sDate, ':', '', [rfReplaceAll]);
              sDate := StringReplace(sDate, '-', '', [rfReplaceAll]);
              sDate := StringReplace(sDate, ' ', '', [rfReplaceAll]);
              sDate := copy(sDate, 1, 4) + '-' + Copy(sDate, 5, 2) + '-' +
                Copy(sDate, 7, 2);
              cxDate01.Date := StrToDate(sDate);
            end
            else
              cxDate01.Text := FormatDateTime('yyyy-mm-dd', now);
            edKeyNum.Text := ls_Rcrd[10];
            sDate := ls_Rcrd[11];
            if sDate <> '' then
						begin
              sDate := StringReplace(sDate, ':', '', [rfReplaceAll]);
              sDate := StringReplace(sDate, '-', '', [rfReplaceAll]);
              sDate := StringReplace(sDate, ' ', '', [rfReplaceAll]);
              sDate := copy(sDate, 1, 4) + '-' + Copy(sDate, 5, 2) + '-' +
                Copy(sDate, 7, 2);
							cxDate02.Date := StrToDate(sDate);
            end
            else
              cxDate02.Text := FormatDateTime('yyyy-mm-dd', now);
            edUseCnt01.Text := ls_Rcrd[12];
            edHdNo.Text := ls_Rcrd[13];
            edBrNo.Text := ls_Rcrd[14];
            cb_Contract.Tag := 1;
            cb_Contract.ItemIndex := StrToIntDef(ls_Rcrd[15], 0);
            cb_Contract.Tag := 0;
            if ls_Rcrd[16] = 'y' then
              rbList05.Checked := True
            else
              rbList06.Checked := True;

            edName02.Text := ls_Rcrd[17];
            edName04.Text := ls_Rcrd[18];

            if ls_Rcrd[19] = 'y' then
              rb_SurtaxY.Checked := True
            else
              rb_SurtaxN.Checked := True;

            edtEmail.Text := ls_Rcrd[20];
            if TryStrToDate(ls_Rcrd[21], DateTime) then
              dtRegDate.Text := ls_Rcrd[21];
            if TryStrToDate(ls_Rcrd[22], DateTime) then
              dtFinDate.Text := ls_Rcrd[22];
            edtCustMemo.Text := ls_Rcrd[23];
            for j := 0 to cbbTaxDate.Properties.Items.Count - 1 do
            begin
              if cbbTaxDate.Properties.Items[j] = ls_Rcrd[24] then
              begin
                cbbTaxDate.ItemIndex := j;
                Break;
              end;
            end;
            edtTaxMName.Text := ls_Rcrd[25];
            edtTaxOwner.Text := ls_Rcrd[26];
            edtTaxSNo.Text := ls_Rcrd[27];
            edtTaxUpTae.Text := ls_Rcrd[28];
            edtTaxUpJong.Text := ls_Rcrd[29];
            edtTaxAddr.Text := ls_Rcrd[30];
						cb_CalFrom.ItemIndex := StrToIntDef(ls_Rcrd[31],0) -1;
						if ls_Rcrd[32] = '����' then cb_CalTo.ItemIndex := 31 
																		else cb_CalTo.ItemIndex := StrToIntDef(ls_Rcrd[32],0) -1;
            case StrToIntDef(ls_Rcrd[33], 0) of
            0 : rb_TaxBill.Checked := True;
            1 : rb_CardBill.Checked := True;
            2 : rb_CashBill.Checked := True;
            end;
            cb_Contract.ItemIndex := StrToIntDef(ls_Rcrd[34], 0);
            edtCustStateMemo.Text := ls_Rcrd[35];

            if ls_Rcrd.Count > 36 then
            begin
              if ls_Rcrd[36] = 'y' then chkLimitUse.Checked := True         //36 ��뿩��y/n
                                   else chkLimitUse.Checked := False;
              cbLimitBaseDay.Text := ls_Rcrd[37];                           //37 �ʱ�ȭ ��
              cedtLimitCount.Value := StrToFloatDef(ls_Rcrd[38], 0);        //38 �⺻Ƚ��
              cedtLimitAmt.Value   := StrToFloatDef(ls_Rcrd[39], 0);        //39 �⺻�ݾ�
              if ls_Rcrd[40] = 'y' then chkLimitOver.Checked := True        //40 �ĺ��������ɿ���y/n
                                   else chkLimitOver.Checked := False;

              //41 ī�����������Ÿ��{0:������, 1:�븮���,2:����Աݾ�,3:ī������ݾ�}
              //42 ī����������ᰪ
							if ls_Rcrd[41] = '0' then cxLimitCardVat.ItemIndex := 0 else
              if ( ls_Rcrd[41] = '1' ) And ( ls_Rcrd[42] = '2' )  then cxLimitCardVat.ItemIndex := 1 else
              if ( ls_Rcrd[41] = '1' ) And ( ls_Rcrd[42] = '3' )  then cxLimitCardVat.ItemIndex := 2 else
              if ( ls_Rcrd[41] = '1' ) And ( ls_Rcrd[42] = '10' ) then cxLimitCardVat.ItemIndex := 3 else
              if ( ls_Rcrd[41] = '2' ) And ( ls_Rcrd[42] = '10' ) then cxLimitCardVat.ItemIndex := 4
                                                                  else cxLimitCardVat.ItemIndex := 0;
            end;

            if ls_Rcrd.Count > 43 then
            begin
              cedtDLimitCount.Value := StrToFloatDef(ls_Rcrd[43], 0);        //43 �μ��⺻Ƚ��
              cedtDLimitAmt.Value   := StrToFloatDef(ls_Rcrd[44], 0);        //44 �μ��⺻�ݾ�
            end;
		  		end;
		  	finally
		  		ls_Rcrd.Free;
		  		Screen.Cursor := crDefault;
		  		Frm_Flash.Hide;
		  	end;
		  end;
    finally
  		Screen.Cursor := crDefault;
      xdom := Nil;
    end;
	except
		on e: exception do
    begin
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
  end;
end;

procedure TFrm_CUT09.proc_search_bubin_id;
var
  ls_TxQry, ls_TxLoad, sQueryTemp: string;
  rv_str : string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
begin
	//2008-09-02 �ۼ��� : ��â�� (SELECT �������� �Է��� ���̵� ��ϵǾ��ִ��� üũ�Ѵ�.)
  //CDMS_CUST_BGROUP ���̺� CB_WEB_ID �÷� ��ȸ
	try
		ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_BUBIN_ID_SEARCH, sQueryTemp);
		ls_TxQry := Format(sQueryTemp, [edt_WebIDFirst.text]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BUBINIDCHK', [rfReplaceAll]);
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
					proc_recieve(ls_rxxml);
        end;
      end;
    finally
      Frm_Flash.Hide;
      FreeAndNil(slReceive);
    end;
  except
  end;
end;

procedure TFrm_CUT09.proc_search_bubin2;
var
  rv_str, ls_TxQry, ls_TxLoad, sQueryTemp : string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
begin
  ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
  fGet_BlowFish_Query(GSQ_GBROUP_MODIFY_SEARCH, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, [edCbCode.Text, edBrNo.Text]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BUBINSEARCH2', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

  Screen.Cursor := crHandPoint;
  slReceive := TStringList.Create;
  try
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
    begin
      rv_str := slReceive[0];
      if rv_str <> '' then
      begin
        ls_rxxml := rv_str;
        Application.ProcessMessages;
        proc_recieve(ls_rxxml);
      end;
    end;
  finally
    Frm_Flash.Hide;
    Screen.Cursor := crDefault;
    FreeAndNil(slReceive);
  end;
end;

procedure TFrm_CUT09.btnBlockWKListClick(Sender: TObject);
begin
  if Not Assigned(Frm_CUT014) Or (Frm_CUT014 = Nil) then Frm_CUT014 := TFrm_CUT014.Create(Nil);

  Frm_CUT014.ACbCuGb := IntToStr(2);

  Frm_CUT014.proc_Init;
	Frm_CUT014.ACuseq  := edCbCode.Text;
	Frm_CUT014.proc_BlockWKSearch('CUT009', 1);
  Frm_CUT014.Show;
end;

procedure TFrm_CUT09.btnLimitRClick(Sender: TObject);
var
  sCode, sParam: string;
  i, iType, iLevel : Integer;

  ErrCode: integer;
  Param, ErrMsg, XmlData, sContent : string;
begin
  if (edName01.Text = '') or (edName03.Text = '') or (edName02.Text = '') or
    (edName04.Text = '') then
  begin
		GMessagebox('���θ�, �μ��� �Է��� �ʼ� �Դϴ�.', CDMSE);
    exit;
  end;

  if Application.MessageBox('�ش� ���ο� �����ִ� ��� ���� �̿��ѵ�(Ƚ��/�ݾ�)�� �ٽ� ī��Ʈ �ұ��?' + #13#10 +
                            '(����:���ο� �����ִ� �� ���� ������ �ð��� ���� �ɸ� �� �ֽ��ϴ�.)', '[Ȯ��]', MB_ICONQUESTION + MB_OKCANCEL) = IDCANCEL then  Exit;

  if cxButton2.Caption = '��������' then iType := 0
                                    else iType := 1;

  if Length(edCbCode.Text)  = 5 then iLevel := 1 else
  if Length(edCbCode.Text) >= 8 then iLevel := 2
                                else iLevel := 0;

  if iType = 0 then
  begin
    case iLevel of
      0 : sCode := '';
      1 : sCode := Copy(edCbCode.Text, 1, 5);
      //2 : sCode := Copy(edt_bubin_modify10.Text,1,7);
      //2008-09-09  �ۼ��� : ��â�� (���ε�Ͻ� 100�� �̻� ��ϵǴ� ��찡 �־ ���긮��Ʈ�� 1�ڸ��� �þ)
      2 : sCode := Copy(edCbCode.Text, 1, 8);
    end;
  end else
  begin
    sCode := edCbCode.Text;
  end;

  Param := edHdNo.Text;
  Param := Param + '��' + edBrNo.Text;
  Param := Param + '��' + sCode;

  if not RequestBase(GetCallable06('SET_CUST_BGROUP', 'MNG_BGROUP.SET_LIMIT_RE_COUNT', En_Coding(Param)), XmlData, ErrCode, ErrMsg) then
  begin
		GMessagebox(Format('���μҼ� �� �̿��ѵ� �ʱ�ȭ �� ������ �߻��Ͽ����ϴ�.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
		Exit;
  end;

	GMessagebox('�ʱ�ȭ �Ǿ����ϴ�.', CDMSI);
end;

procedure TFrm_CUT09.cb_CalFromClick(Sender: TObject);
begin
  if cb_CalTo.ItemIndex = 0 then cb_CalFrom.ItemIndex := 30
  else cb_CalTo.ItemIndex := cb_CalFrom.ItemIndex - 1;
end;

procedure TFrm_CUT09.cxButton1Click(Sender: TObject);
begin
  proc_save(0, 0);
end;

procedure TFrm_CUT09.cxButton2Click(Sender: TObject);
begin
	if (edName01.Text = '') or (edName03.Text = '') or (edName02.Text = '') or
    (edName04.Text = '') then
  begin
    GMessagebox('���θ�, �μ��� �Է��� �ʼ� �Դϴ�.', CDMSE);
    exit;
  end;

  if cxButton2.Caption = '��������' then
  begin
    if edCbCode.Text = '' then
    begin
			if Frm_CUT1.CustView12_1.SelectionCount > 0 then
			begin
				edCbCode.Text :=
					Frm_CUT1.CustView12_1.Selections[0].Values[7];
      end
      else
      begin
        GMessagebox('������ü�� �����ϼ���', CDMSE);
        Exit;
      end;
    end;
    if Length(edCbCode.Text) = 5 then
      proc_save(1, 0)
    else
      if Length(edCbCode.Text) >= 8 then
      //2008-09-12  �ۼ��� : ��â�� (�����ڵ� ������ ���� �۾�)
      proc_save(2, 0)
  end else
  begin
		proc_save(0, 1);
  end;
end;

procedure TFrm_CUT09.cxButton3Click(Sender: TObject);
const
  ls_Param = '<param>ParamString</param>';
var
  rv_str, ls_TxLoad, ls_Msg_Err, sMsg: string;
  sParam, sTemp: string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
  CustomerCount: Integer;
begin
	CustomerCount := Frm_CUT1.GetDeptCustomerCount(edHdNo.Text, edBrNo.Text, edCbCode.Text);

  case CustomerCount of
  -1:
    begin
      GMessagebox('�����Ͽ����ϴ�.' + #13#10 + '�ٽ� �ѹ� �õ��� ������', CDMSE);
      Exit;
    end;
  0:
    ;
  else
    begin
      GMessagebox(Format('���� �μ��� �Ҽӵ� ������ [%d]�� �����մϴ�.', [CustomerCount]) + #13#10
        + '�ش� ���� �μ�����/���� �� �μ� ������ �õ� �ٶ��ϴ�.', CDMSE);
      Exit;
    end;
  end;

  if GMessagebox('�����Ͻðڽ��ϱ�?', CDMSQ) = IDCANCEL then Exit;

  sTemp := edName01.Text;

  ls_TxLoad := GTx_UnitXmlLoad('CALLABLE.xml');

  sTemp := 'DELETE_CUST_BGROUP(?,?,?,?)';
  sParam := StringReplace(ls_Param, 'ParamString', edCbCode.Text, [rfReplaceAll]);
  sParam := sParam + StringReplace(ls_Param, 'ParamString', edBrNo.Text, [rfReplaceAll]);
  sParam := sParam + StringReplace(ls_Param, 'ParamString', edHdNo.Text, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BGROUPSAVE', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CallString', sTemp, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CountString', IntToStr(3), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', sParam, [rfReplaceAll]);


  Screen.Cursor := crHandPoint;
  slReceive := TStringList.Create;
  try
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
    begin
      rv_str := slReceive[0];
      if rv_str <> '' then
      begin
        ls_rxxml := rv_str;
        Application.ProcessMessages;
        try
          ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
          sMsg := GetXmlErrorMsg(ls_rxxml);
          if ('0000' = ls_Msg_Err) and ('1' = sMsg) then
          begin
            GMessagebox('�����Ͽ����ϴ�.', CDMSI);
						Frm_CUT1.proc_BubinManage;
						Frm_CUT1.CustView12_2.DataController.SetRecordCount(0);
            Hide;
          end
          else
            if ('0000' = ls_Msg_Err) and ('2' = sMsg) then
          begin
            GMessagebox('���� ����(��ü)�� ������ ������ �� �����ϴ�.' +
              #13#10 +
              '���� ���� ����(��ü)�� �����ϼ���!', CDMSE);
          end
          else
          begin
            GMessagebox('�����Ͽ����ϴ�.' + #13#10 +
              '�ٽ� �ѹ� �õ��� ������',
              CDMSE);
          end;
        except
          GMessagebox('�����Ͽ����ϴ�.' + #13#10 +
            '�ٽ� �ѹ� �õ��� ������',
            CDMSE);
        end;
      end;
    end;
  finally
    Frm_main.proc_bubinlist_insert;  // ���� �� ���� ���� ����ȸ
    Frm_Flash.Hide;
    Screen.Cursor := crDefault;
    FreeAndNil(slReceive);
  end;
end;

procedure TFrm_CUT09.btn_closeClick(Sender: TObject);
begin
	btn_Confirm.Tag := 0;
	pnl_MakeId.Visible := False;
end;

procedure TFrm_CUT09.btn_ConfirmClick(Sender: TObject);
begin
	if (pnl_Makeid.tag = 1) and (btn_Confirm.Tag = 0) then  //ID�����ε� �ߺ�üũ ����
	begin
		GMessagebox('ID �ߺ�Ȯ���� �����Ͽ� �ֽʽÿ�', CDMSE);
		btn_Confirm.click;
		Exit;
  end;

	if edt_WebPW1.Text <> edt_WebPW2.Text then
	begin
		GMessagebox('��й�ȣ�� ��ġ���� �ʽ��ϴ�', CDMSE);
		edt_WebPW2.Text := '';
		edt_WebPW2.SetFocus;
	end else
	begin
{		if (length(edt_WebIDFirst.Text) < 4) and (pnl_makeid.Tag = 1) then  //�ű�ID�� ��쿡�� üũ
		begin
			GMessagebox('WebID�� 4�� �̻� ���� �մϴ�', CDMSE);
			edt_WebIDFirst.SetFocus;
		end else
		if (length(edt_WebIDFirst.Text) > 20) then
		begin
			GMessagebox('WebID�� 20�� ���ϸ� ���� �մϴ�', CDMSE);
			edt_WebIDFirst.SetFocus;
		end else  }
		if (length(edt_WebPW1.Text) < 4) then
		begin
			GMessagebox('��й�ȣ�� 4�� �̻� ���� �մϴ�', CDMSE);
			edt_WebPW1.Text := '';
			edt_WebPW2.Text := '';
			edt_WebPW1.SetFocus;
		end else
		if (length(edt_WebPW1.Text) > 20) then
		begin
			GMessagebox('��й�ȣ�� 20�� ���ϸ� ���� �մϴ�', CDMSE);
			edt_WebPW1.Text := '';
			edt_WebPW2.Text := '';
			edt_WebPW1.SetFocus;
		end else
		begin
			if pnl_Makeid.Tag = 1 then
			begin
				edWebID.text := edt_WebIDFirst.Text;
				edWebPW.text := edt_WebPW1.Text;
			end else
			if pnl_Makeid.Tag = 2 then
			begin
				edWebPW.text := edt_WebPW1.Text;
			end;
			btn_close.click;
		end;
	end;
end;

procedure TFrm_CUT09.btn_IdCheckClick(Sender: TObject);
begin
	if (length(edt_WebIDFirst.Text) < 4) and (pnl_makeid.Tag = 1) then  //�ű�ID�� ��쿡�� üũ
	begin
		GMessagebox('WebID�� 4�� �̻� ���� �մϴ�', CDMSE);
		edt_WebIDFirst.SetFocus;
	end else
	if (length(edt_WebIDFirst.Text) > 20) then
	begin
		GMessagebox('WebID�� 20�� ���ϸ� ���� �մϴ�', CDMSE);
		edt_WebIDFirst.SetFocus;
	end else
		proc_search_bubin_id;
end;

procedure TFrm_CUT09.btn_WebIdClick(Sender: TObject);
begin
	//���̵� üũ�� �Ѵ�.
	id_Chk := 1;

	edt_WebIdFirst.text := '';
	edt_WebPW1.text := '';
	edt_WebPW2.text := '';
	
	edt_WebIdFirst.Enabled := True;
	btn_IdCheck.Enabled := True;
	edt_WebPW1.Enabled := False;
	edt_WebPW2.Enabled := False;
	btn_Confirm.Enabled := False;
	
	pnl_MakeId.visible := True;
	edt_WebIdFirst.SetFocus;
	pnl_MakeId.Left := 2;
	pnl_MakeId.Top  := 22;
	pnl_Makeid.tag := 1;
	btn_Confirm.Tag := 0; //�ߺ�üũ ����
end;

procedure TFrm_CUT09.btn_WebPwClick(Sender: TObject);
begin
	if edWebId.text = '' then 
	begin
		btn_WebId.Click;
	end else
	begin
		edt_WebIdFirst.text := edWebId.text;
		edt_WebPW1.text := '';
		edt_WebPW2.text := '';

		btn_IdCheck.Enabled := False;
		edt_WebPW1.Enabled := True;
		edt_WebPW2.Enabled := True;
		btn_Confirm.Enabled := True;

		pnl_MakeId.visible := True;
		edt_WebIdFirst.Enabled := False;
		pnl_MakeId.Left := 2;
		pnl_MakeId.Top  := 22;
		pnl_Makeid.tag := 2;
	end;
end;

procedure TFrm_CUT09.cxButton7Click(Sender: TObject);
begin
	Close;
end;

procedure TFrm_CUT09.cxComboBox3PropertiesChange(Sender: TObject);
var
  CustomerCount: Integer;
begin
  if cb_Contract.Tag = 1 then exit;
  case TcxComboBox(Sender).ItemIndex of
  1,2:
    begin
			CustomerCount := Frm_CUT1.GetDeptCustomerCount(edHdNo.Text, edBrNo.Text, edCbCode.Text);
      GMessagebox(Format('���� �μ��� �Ҽӵ� ������ [%d]�� �����մϴ�.', [CustomerCount]) + #13#10
        + '(���� �μ��� �����μ� ���� ����)'
        + '���� �ش� ���� �μ�����/���� �� ��࿩�θ� ���� �ٶ��ϴ�.', CDMSE);
      Exit;
    end;
  end;
end;

procedure TFrm_CUT09.cxButton5Click(Sender: TObject);
var
  IE: variant;
begin
  IE := CreateOleObject('InternetExplorer.Application');
  IE.left := 0;
  IE.top := 0;
  IE.Width := Screen.Width;
  IE.Height := Screen.Height;
  if (GS_PRJ_AREA = 'S') then	IE.Navigate(GS_BUBIN_URL) else
  if (GS_PRJ_AREA = 'O') then IE.Navigate(GS_BUBIN_URL_JI);
  IE.Visible := true;
end;

procedure TFrm_CUT09.rbList01Click(Sender: TObject);
begin
  if rbList01.Tag = 1 then Exit;
end;

procedure TFrm_CUT09.rb_CardBillClick(Sender: TObject);
begin
  rb_SurtaxY.Enabled := False;
  rb_SurtaxN.Enabled := False;
end;

procedure TFrm_CUT09.rb_TaxBillClick(Sender: TObject);
begin
  rb_SurtaxY.Enabled := True;
  rb_SurtaxN.Enabled := True;
end;

procedure TFrm_CUT09.edWebIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //���� �Էµɶ����� �ʱ�ȭ �����ش�.
	id_Chk := 0;
end;

procedure TFrm_CUT09.edWebIDClick(Sender: TObject);
begin
	btn_WebId.Enabled := True;
end;

procedure TFrm_CUT09.PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
	PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_CUT09.edtEmailKeyPress(Sender: TObject; var Key: Char);
begin
	if not (Key in ['0'..'9', 'a'..'z', 'A'..'Z', '@', '-', '_', '.']) then
		Key := #0;
end;

procedure TFrm_CUT09.edtTaxSNoKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', '-']) then
    Key := #0;
end;

procedure TFrm_CUT09.edt_WebPW1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then	edt_WebPW2.SetFocus;
end;

procedure TFrm_CUT09.edt_WebPW2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then	btn_Confirm.SetFocus;
end;

procedure TFrm_CUT09.edt_WebPW2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	btn_Confirm.enabled := True;
end;

end.

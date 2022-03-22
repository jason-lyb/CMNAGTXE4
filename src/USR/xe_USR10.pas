unit xe_USR10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MSXML2_TLB, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, cxControls, cxContainer, cxEdit, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxGroupBox, cxMemo, Vcl.ComCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLabel, cxButtons, dxCore, cxDateUtils, cxCalendar, cxRadioGroup,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_USR10 = class(TForm)
    PnlMain: TPanel;
    cxbModify: TcxButton;
    cxbNewUser: TcxButton;
    Panel1: TPanel;
    cxLabel17: TcxLabel;
    cxLabel1: TcxLabel;
		cxLblStart: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel7: TcxLabel;
    cxBrNo: TcxTextEdit;
    cxHdNo: TcxTextEdit;
    cxLabel5: TcxLabel;
    cboBranch: TcxComboBox;
    cxcbGrad: TcxComboBox;
    cxedId: TcxTextEdit;
    cxButton3: TcxButton;
    cxedPW: TcxTextEdit;
    cxedName: TcxTextEdit;
    cxcbPhone: TcxComboBox;
    cxedPhone: TcxTextEdit;
    cxedTel: TcxTextEdit;
    cxedNo1: TcxTextEdit;
    cxmmAddr: TcxMemo;
    cxmmMemo1: TcxMemo;
    btnNCert: TcxButton;
    pnl7: TPanel;
    img2: TImage;
    cxcbUserStatus: TcxComboBox;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    grpHelp: TcxGroupBox;
    cxButton1: TcxButton;
    cxdtInDate: TcxDateEdit;
    Shape13: TShape;
    cxLabel2: TcxLabel;
    pnl92: TPanel;
    Shape14: TShape;
    rb_AdminAPP_Use_Y: TcxRadioButton;
    rb_AdminAPP_Use_N: TcxRadioButton;
    cxLabel6: TcxLabel;
    Shape15: TShape;
    cxLabel8: TcxLabel;
    cxmmMemo2: TcxMemo;
    Shape16: TShape;
    cxLabel9: TcxLabel;
    cxdtOutDate: TcxDateEdit;
    cxAge: TcxLabel;
    cxLabel10: TcxLabel;
    cxedNo2: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxLblActive: TLabel;
    cxLabel12: TcxLabel;
    Panel2: TPanel;
    rb_AdminAPP_ADD_Use_Y: TcxRadioButton;
    rb_AdminAPP_ADD_Use_N: TcxRadioButton;
    procedure cxbNewUserClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxbModifyClick(Sender: TObject);
    procedure cboBranchClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxedPhoneExit(Sender: TObject);
    procedure cxedTelExit(Sender: TObject);
		procedure cxcbGradPropertiesChange(Sender: TObject);
    procedure btnNCertClick(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxedNo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxedNo1KeyPress(Sender: TObject; var Key: Char);
    procedure cxedNo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxedNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cxedPhoneKeyPress(Sender: TObject; var Key: Char);
    procedure cxmmAddrKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxedIdKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rb_AdminAPP_Use_NClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure proc_Manage_Save(iType: Integer);   // ����� ����(iType : 0 : �߰�, 1 : ����, 2 : ����(����))
		procedure proc_user_Modify(iType: Integer);   // ����� ����Ʈ ����(iType : 0 : �߰�, 1 : ����, 2 : ����(����))
  public
    { Public declarations }
    tmYN: Boolean;                                // �Ǹ��������� �Ǹ�,�ֹι�ȣ ��������
    tmName, tmNo, tmSNumOrg: string;
		tmNo1, tmNo2: string;
    procedure proc_recieve(ls_rxxml: Widestring); // ���� ���� ó��
	end;

var
  Frm_USR10: TFrm_USR10;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Msg, xe_packet,
  xe_USR, xe_xml, xe_Query, xe_JON057;


procedure TFrm_USR10.cxbNewUserClick(Sender: TObject);
Var sMsg : String;
begin
  if GS_NICE_CHK then
  begin
		sMsg := '�������� �� ����/���� ���� �ʱ�ȭ�Ͻðڽ��ϱ�?';
		if Application.MessageBox(PChar(sMsg), '', MB_YESNO + MB_ICONINFORMATION) = IDNO then Exit;
  end;
  GS_NICE_CHK := False;

	cxcbGrad.ItemIndex := 2;
  cxedId.Text := '';
  cxedPW.Text := '';
	cxedName.Text := '';
	cxcbPhone.ItemIndex := 0;

  btnNCert.Tag := 0;
	btnNCert.Enabled := True;

  cxedPhone.Text := '';
  cxedTel.Text := '';
  cxedNo1.Text := '';
  cxedNo2.Text := '';
  cxAge.Caption := '';
  cxdtInDate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
  cxdtOutDate.Text := '2999-12-30';
  cxmmAddr.Text := '';
  cxmmMemo1.Text := '';
  cxmmMemo2.Text := '';
  cxedId.Enabled := True;
	cxButton3.Enabled := True;
  cxcbGrad.Enabled := True;
  cxbModify.Caption := '����';
	tmYn:=false;
	pnlTitle.Caption := '   ���� �űԵ��';

	cxcbUserStatus.ItemIndex := 0;
end;

procedure TFrm_USR10.FormActivate(Sender: TObject);
begin
	cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_USR10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_USR10.FormCreate(Sender: TObject);
Var i : Integer;
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
end;

procedure TFrm_USR10.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_USR10.FormDestroy(Sender: TObject);
begin
  Frm_USR10 := Nil;
end;

procedure TFrm_USR10.FormShow(Sender: TObject);
begin
  fSetFont(Frm_USR10, GS_FONTNAME);
end;

procedure TFrm_USR10.cxbModifyClick(Sender: TObject);
Var	sTemp : string;
    stSno1 : string;
    i : Integer;
    bOk : Boolean;
begin
  bOk := False;
  try
    for i := 0 to ComponentCount - 1 do
    begin
      if Components[i] is TcxTextEdit then
      begin
        if not func_EucKr_Check((Components[i] as TcxTextEdit), 0) then
        begin
          bOk := True;
          Break;
        end;
      end else
      if Components[i] is TcxMemo then
      begin
        if not func_EucKr_Check((Components[i] as TcxMemo), 0) then
        begin
          bOk := True;
          Break;
        end;
      end;
    end;
    if bOk then Exit;
  except
  end;

	if (GT_USERIF.LV = '10') and (cxcbGrad.ItemIndex <> 2) then
  begin
		GMessagebox('���� ������ ���� ������ ���/���� �����մϴ�.', CDMSE);
    cxcbGrad.SetFocus;
    Exit;
  end;

  if (GT_USERIF.LV = '10') and (cxBrNo.Text <> GT_USERIF.BR) then
	begin
    GMessagebox('���� ������ �Ҽ� ������ ������ ���� �����մϴ�.', CDMSE);
    Exit;
  end;

  if cxcbGrad.ItemIndex = -1 then
  begin
    GMessagebox('���� �׷��� �����ϼ���.', CDMSE);
    Exit;
  end;

	sTemp := StringReplace(cxedNo1.Text, '-', '', [rfReplaceAll]);
  stSno1:=Copy(sTemp,1,6);
//	stSno2:=Copy(sTemp,7,7);
	if (Length(sTemp) = 6) then
  begin
		{if Length(stemp) = 13 then
		begin
			jCheck := func_SoNumCheck(sTemp);
			if jCheck then
			begin
				// �����Ǹ� �ܱ��� �űԵ�� �Ұ��� �ϵ��� ����. 2011.08.01
				if (GS_PRJ_AREA = 'S') and (LeftStr(stSno2, 1) <> '1') and (LeftStr(stSno2, 1) <> '2') then
				begin
					GMessagebox('����� �Ұ���(�ӽð��� ��2�ܱ���, �ܱ���,, ���) �ֹι�ȣ�� �Է��Ͽ����ϴ�.', CDMSE);
  				Exit;
				end;
			end else
      begin
        GMessagebox('�ֹε�� ��ȣ�� �߸� �Է��Ͽ����ϴ�.', CDMSE);
				Exit;
      end;
		end;  }
	end else
	begin
		GMessagebox('��������� �߸� �Է��Ͽ����ϴ�.', CDMSE);
  	Exit;
	end;

  // 2015.02.03  ���������� ������� ���� ���� ó��
{	if btnNCert.Enabled then
	begin
    GMessagebox('���������� �Ϸ�����ʾҽ��ϴ�.',cdmse);
		Exit;
	end;}

	if ( Not btnNCert.Enabled ) And ( btnNCert.Tag = 99 ) then
  begin
    if pos('[������������]', cxmmMemo1.Text) < 1 then
		cxmmMemo1.Text := '[������������]' + cxmmMemo1.Text;
  end;

  if cxbModify.Caption = '����' then
  begin
    if (cxButton3.Enabled) then
    begin
      GMessagebox('�ߺ�üũ ��ư���� ���̵� �ߺ��˻縦 �ϼ���', CDMSE);
    end else
    begin
      if Length(cxedId.Text) < 6 then
      begin
        GMessagebox('���̵�� 6���̻� �Է��ϼž� �մϴ�.', CDMSE);
        exit;
      end;
      proc_Manage_Save(0);
    end;
  end else
  if cxbModify.Caption = '����' then
	begin
		proc_Manage_Save(1);
	end;

  GS_NICE_CHK := False;
end;

procedure TFrm_USR10.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_USR10.proc_Manage_Save(iType: Integer);
var
	sBrNo, sHdNo, sLevel, sId, sPwd, sName, sUserStatus, sHp, sTel,
	sSNum, sRegDate,
	sAddr, sMemo: string;
	ErrCode: integer;
	XmlData, Param, ErrMsg: string;
begin
	sBrNo := cxBrNo.Text;
	sHdNo := cxHdNo.Text;
	if sBrNo = '' then
		sBrNo := GT_USERIF.BR;
	case cxcbGrad.ItemIndex of
		0: sLevel := '60';
		1: sLevel := '40';
		2: sLevel := '10';
	end;
	sId := cxedId.Text;
	sPwd := cxedPW.Text;
	sName := cxedName.Text;
	IF cxcbUserStatus.ItemIndex = 4 THEN
		sUserStatus := '9'
	ELSE
		sUserStatus := inttostr(cxcbUserStatus.ItemIndex + 1);
	sHp := cxcbPhone.Text + StringReplace(cxedPhone.Text, '-', '', [rfReplaceAll]);
	sTel := StringReplace(cxedTel.Text, '-', '', [rfReplaceAll]);
	sSNum := StringReplace(cxedNo1.Text + cxedNo2.Text, '-', '', [rfReplaceAll]);
	// 2011.01.11
	if (Length(ssnum)=13) and (Copy(sSNum,7,7)='*******') then
	begin
		 sSNum:=tmSNumOrg;
	end;

	sRegDate := FormatDateTime('yyyymmdd', cxdtInDate.Date);
	sAddr := cxmmAddr.Text;
	sMemo := cxmmMemo1.Text;

	Param := inttostr(iType) + '��';
	Param := Param + sId + '��';
	Param := Param + sName + '��';
	Param := Param + sPwd + '��';
	Param := Param + sSNum + '��';
	Param := Param + '' + '��';
	Param := Param + sHp + '��';
	Param := Param + sTel + '��';
	Param := Param + sLevel + '��';
	Param := Param + sAddr + '��';
	Param := Param + sMemo + '��';
	Param := Param + En_Coding(GT_USERIF.ID) + '��';
	Param := Param + sHdNo + '��';
	Param := Param + sBrNo + '��';
	Param := Param + sUserStatus + '��';
	Param := Param + sRegDate + '��';
	Param := Param + 'Y'  + '��' ;
	if rb_AdminAPP_Use_Y.Checked = True then Param := Param + 'y' + '��'  //�����ھ� ������� 2014.03.17 KHS
																			else Param := Param + 'n' + '��';

	Param := Param + cxmmMemo2.Text + '��';

	if rb_AdminAPP_ADD_Use_Y.Checked = True then Param := Param + 'y'  //�����ھ� �޴������� ������� 2019.06.22 KHS
																					else Param := Param + 'n';

	if not RequestBase(GetCallable05('SET_MEMBER', 'MNG_MEMBER.SET_MEMBER', Param), XmlData, ErrCode, ErrMsg) then
	begin
		GMessagebox(Format('���� ���� �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
		Exit;
	end;
	if iType = 1 then
	begin
		if cxcbUserStatus.ItemIndex = 2 then
		begin
			GMessagebox('���� �ٹ����¸� [�ް���]���� ���� �Ͽ����ϴ�.', CDMSI);
			if Assigned(Frm_USR) then
      begin
        Frm_USR.btnSearchA1.Click;
        Frm_USR.btnSearchA4.Click;
      end;
		end	else
		if cxcbUserStatus.ItemIndex = 3 then
		begin
			GMessagebox('���� �ٹ����¸� [����]�� ���� �Ͽ����ϴ�.', CDMSI);
			if Assigned(Frm_USR) then
      begin
        Frm_USR.btnSearchA1.Click;
        Frm_USR.btnSearchA4.Click;
      end;
		end else
		if cxcbUserStatus.ItemIndex = 4 then
		begin
			GMessagebox('������ �ٹ����¸� [���]�� ���� �Ͽ����ϴ�.', CDMSI);
			if Assigned(Frm_USR) then
      begin
        Frm_USR.btnSearchA1.Click;
        Frm_USR.btnSearchA4.Click;
      end;
		end else
		begin
			GMessagebox('���� ������ ���� �Ͽ����ϴ�.', CDMSI);
			if Assigned(Frm_USR) then
      begin
        Frm_USR.btnSearchA1.Click;
        Frm_USR.btnSearchA4.Click;
      end;
		end;
		Hide;
	end else
	begin
		GMessagebox('������  �߰� �Ͽ����ϴ�.', CDMSI);
  	if Assigned(Frm_USR) then
    begin
      Frm_USR.btnSearchA1.Click;
      Frm_USR.btnSearchA4.Click;
    end;

		if GMessagebox('��� �ٸ������� �߰��Ͻðڽ��ϱ�?', CDMSQ) = idok then
		begin
			cxbNewUserClick(cxbNewUser);
		end	else
			Close;
	end;
end;

procedure TFrm_USR10.proc_recieve(ls_rxxml: Widestring);
var
  xdom: msDomDocument;
  ls_ClientKey, ls_Msg_Err, sMsg: string;
begin
	try
    xdom := ComsDomDocument.Create;
    try
      if not xdom.loadXML(ls_rxxml) then Exit;
      ls_ClientKey := GetXmlClientKey(ls_rxxml);
      ls_ClientKey := Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5);
      case StrToIntDef(ls_ClientKey, 1) of
        0:
          begin
            ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
            sMsg := GetXmlErrorMsg(ls_rxxml);
            if ('0000' = ls_Msg_Err) and ('1' = sMsg) then
            begin
							GMessagebox('������ �߰� �Ͽ����ϴ�.', CDMSI);
		  				proc_user_Modify(0);

              // ���� ó�� ��� ����ó�� �߰� �� ��.
							if GMessagebox('��� �ٸ������� �߰��Ͻðڽ��ϱ�?', CDMSQ) =
		  					idok then
		  				begin
		  					cxbNewUserClick(cxbNewUser);
		  				end
		  				else
		  					Hide;
		  			end else
            begin
							if Pos('{',ls_Msg_Err) > 0 then
              begin
		  					// ���� �޽����� "{ }" �� ������ �Ѿ���Ƿ� "{ }" �� �߶� �����. 2011-09-28
		  					sMsg := Copy(ls_Msg_Err, Pos('{',ls_Msg_Err) +1, Pos('}',ls_Msg_Err) - Pos('{',ls_Msg_Err) -1);
								GMessagebox(sMsg, CDMSE);
		  				end else
              begin
                GMessagebox(ls_Msg_Err, CDMSE);
              end;
            end;
          end;
        1:
          begin
            ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
            sMsg := GetXmlErrorMsg(ls_rxxml);
            if ('0000' = ls_Msg_Err) and ('1' = sMsg) then
            begin
							GMessagebox('������ ���� �Ͽ����ϴ�.', CDMSI);
		  				proc_user_Modify(1);
		  				Hide;
		  			end else
            begin
              if Pos('{',ls_Msg_Err) > 0 then
              begin
                // ���� �޽����� "{ }" �� ������ �Ѿ���Ƿ� "{ }" �� �߶� �����. 2011-09-28
		  					sMsg := Copy(ls_Msg_Err, Pos('{',ls_Msg_Err) +1, Pos('}',ls_Msg_Err) - Pos('{',ls_Msg_Err) -1);
								GMessagebox(sMsg, CDMSE);
              end else
              begin
                GMessagebox(ls_Msg_Err, CDMSE);
              end;
            end;
          end;
        2:
          begin
            ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
            sMsg := GetXmlErrorMsg(ls_rxxml);
            if ('0000' = ls_Msg_Err) and ('1' = sMsg) then
            begin
							GMessagebox('������ ���� �Ͽ����ϴ�.', CDMSI);
		  				proc_user_Modify(2);
              Hide;
            end else
            begin
              if Pos('{',ls_Msg_Err) > 0 then
              begin
                // ���� �޽����� "{ }" �� ������ �Ѿ���Ƿ� "{ }" �� �߶� �����. 2011-09-28
                sMsg := Copy(ls_Msg_Err, Pos('{',ls_Msg_Err) +1, Pos('}',ls_Msg_Err) - Pos('{',ls_Msg_Err) -1);
								GMessagebox(sMsg, CDMSE);
              end else
              begin
								GMessagebox(ls_Msg_Err, CDMSE);
              end;
            end;
		  		end;
		  	3:
		  		begin
            if (0 < GetXmlRecordCount(ls_rxxml)) then
            begin
							GMessagebox('����Ҽ� ���� ���̵� �Դϴ�.' + #13#10 +
                          '�ٸ� ���̵� ����ϼ���.', CDMSE);
              cxButton3.Enabled := True;
            end else
            begin
							GMessagebox('��밡���� ���̵� �Դϴ�.', CDMSI);
              cxButton3.Enabled := False;
            end;
          end;
      end;
    finally
      xdom := Nil;
    end;
  except
  end;
end;

procedure TFrm_USR10.proc_user_Modify(iType: Integer);
var
	iRow, iNo, iBrNo, iBrName, iLevel, iId, iUserName, iHp, iTel, iUserStatus, iDate,
    iHdNo, iPwd, iNum, iAddr, iMemo, iRegDate: Integer;
  sId, sTemp: string;
begin
	// ( tag : 0 : ����� �������� ����� �߰��� ���, 1 : ..)
  case self.Tag of
    0:
      begin
        if Assigned(Frm_USR) then
        begin
          with Frm_USR do
          begin
            iNo := cxMngUserList.GetColumnByFieldName('No.').Index;
            iBrNo := cxMngUserList.GetColumnByFieldName('�����ڵ�').Index;
            iBrName := cxMngUserList.GetColumnByFieldName('�����').Index;
            iLevel := cxMngUserList.GetColumnByFieldName('�����׷�').Index;
            iId := cxMngUserList.GetColumnByFieldName('���̵�').Index;
            iUserName := cxMngUserList.GetColumnByFieldName('������').Index;
            iHp := cxMngUserList.GetColumnByFieldName('�ڵ�����ȣ').Index;
            iTel := cxMngUserList.GetColumnByFieldName('����ó').Index;
				  	iUserStatus := cxMngUserList.GetColumnByFieldName('�ٹ�����').Index;
				  	iDate := cxMngUserList.GetColumnByFieldName('�������').Index;
            iHdNo := cxMngUserList.GetColumnByFieldName('�����ڵ�').Index;
				  	iPwd := cxMngUserList.GetColumnByFieldName('�н�����').Index;
            iNum := cxMngUserList.GetColumnByFieldName('�ֹε�Ϲ�ȣ').Index;
				  	iAddr := cxMngUserList.GetColumnByFieldName('�ּ�').Index;
            iMemo := cxMngUserList.GetColumnByFieldName('�޸�').Index;
            iRegDate := cxMngUserList.GetColumnByFieldName('�Ի���').Index;
            case iType of
              0:
                begin
                  if not cxrbSearchNotUse.Checked then
                  begin
                    cxMngUserList.BeginUpdate;
                    iRow := cxMngUserList.DataController.AppendRecord;
                    cxMngUserList.DataController.Values[iRow, iNo] := iRow + 1;
                    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
                    begin
                      cxMngUserList.DataController.Values[iRow, iBrName] := scb_FamilyBrName[cboBranch.ItemIndex];
                      cxMngUserList.DataController.Values[iRow, iBrNo]   := scb_FamilyBrCode[cboBranch.ItemIndex];
                    end else
                    begin
                      cxMngUserList.DataController.Values[iRow, iBrName] := scb_BranchName[cboBranch.ItemIndex];
                      cxMngUserList.DataController.Values[iRow, iBrNo]   := scb_BranchCode[cboBranch.ItemIndex];
                    end;
                    cxMngUserList.DataController.Values[iRow, iLevel]  := cxcbGrad.Text;
                    cxMngUserList.DataController.Values[iRow, iId]     := cxedId.Text;
                    cxMngUserList.DataController.Values[iRow, iUserName] := cxedName.Text;
                    sTemp := strtocall(StringReplace(Trim(cxcbPhone.Text) + Trim(cxedPhone.Text), '-', '', [rfReplaceAll]));
                    cxMngUserList.DataController.Values[iRow, iHp] := sTemp;
                    sTemp := strtocall(StringReplace(Trim(cxedTel.Text), '-', '', [rfReplaceAll]));
                    cxMngUserList.DataController.Values[iRow, iTel] := sTemp;
				  					cxMngUserList.DataController.Values[iRow, iUserStatus] := cxcbUserStatus.Text;
				  					cxMngUserList.DataController.Values[iRow, iDate] := FormatDateTime('yyyy-mm-dd', Now);
                    cxMngUserList.DataController.Values[iRow, iHdNo] := cxHdNo.Text;
                    cxMngUserList.DataController.Values[iRow, iPwd]  := cxedPW.Text;
                    sTemp := cxedNo1.Text + '-' + cxedNo2.Text;
                    cxMngUserList.DataController.Values[iRow, iNum]  := sTemp;
                    cxMngUserList.DataController.Values[iRow, iAddr] := cxmmAddr.Text;
                    cxMngUserList.DataController.Values[iRow, iMemo] := cxmmMemo1.Text;
                    cxMngUserList.DataController.Values[iRow, iRegDate] := FormatDateTime('yyyy-mm-dd', cxdtInDate.Date);
                    cxMngUserList.EndUpdate;
                  end else
                  begin
                    iRow := cxMngUserList.DataController.FindRecordIndexByText(0, iId, cxedId.Text, True, True, True);
                    if iRow >= 0 then cxMngUserList.DataController.DeleteRecord(iRow);
                  end;
                end;
              1:
                begin
                  if not cxrbSearchNotUse.Checked then
                  begin
                    cxMngUserList.BeginUpdate;
                    iRow := cxMngUserList.DataController.FindRecordIndexByText(0, iId, cxedId.Text, True, True, True);
                    if iRow >= 0 then
                    begin
                      cxMngUserList.DataController.Values[iRow, iNo] := iRow + 1;
                      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
                      begin
                        cxMngUserList.DataController.Values[iRow, iBrName] := scb_FamilyBrName[cboBranch.ItemIndex];
                        cxMngUserList.DataController.Values[iRow, iBrNo]   := scb_FamilyBrCode[cboBranch.ItemIndex];
                      end else
                      begin
                        cxMngUserList.DataController.Values[iRow, iBrName] := scb_BranchName[cboBranch.ItemIndex];
                        cxMngUserList.DataController.Values[iRow, iBrNo]   := scb_BranchCode[cboBranch.ItemIndex];
                      end;
                      cxMngUserList.DataController.Values[iRow, iLevel]  := cxcbGrad.Text;
                      cxMngUserList.DataController.Values[iRow, iUserName] := cxedName.Text;
                      sTemp := strtocall(StringReplace(Trim(cxcbPhone.Text) + Trim(cxedPhone.Text), '-', '', [rfReplaceAll]));
                      cxMngUserList.DataController.Values[iRow, iHp] := sTemp;
                      sTemp := strtocall(StringReplace(Trim(cxedTel.Text), '-', '', [rfReplaceAll]));
                      cxMngUserList.DataController.Values[iRow, iTel] := sTemp;
				  						cxMngUserList.DataController.Values[iRow, iUserStatus] := cxcbUserStatus.Text;
				  						cxMngUserList.DataController.Values[iRow, iDate] := FormatDateTime('yyyy-mm-dd', Now);
                      cxMngUserList.DataController.Values[iRow, iHdNo] := cxHdNo.Text;
                      cxMngUserList.DataController.Values[iRow, iPwd] := cxedPW.Text;
  										sTemp := cxedNo1.Text + '-' + cxedNo2.Text;
                      cxMngUserList.DataController.Values[iRow, iNum] := sTemp;
                      cxMngUserList.DataController.Values[iRow, iAddr] := cxmmAddr.Text;
                      cxMngUserList.DataController.Values[iRow, iMemo] := cxmmMemo1.Text;
                      cxMngUserList.DataController.Values[iRow, iRegDate] := FormatDateTime('yyyy-mm-dd', cxdtInDate.Date);
                      cxMngUserList.EndUpdate;
                    end;
                  end else
                  begin
				  					iRow := cxMngUserList.DataController.FindRecordIndexByText(0, iId, cxedId.Text, True, True, True);
				  					if iRow >= 0 then
                    begin
                      cxMngUserList.DataController.DeleteRecord(iRow);
                    end;
                  end;
                end;
              2:
                begin
                  if not cxrbSearchNotUse.Checked then
                  begin
                    iRow :=
				  						cxMngUserList.DataController.FindRecordIndexByText(0, iId, cxedId.Text, True, True, True);
				  					if iRow >= 0 then
                      cxMngUserList.DataController.DeleteRecord(iRow);
                  end else
                  begin
                    cxMngUserList.BeginUpdate;
                    iRow := cxMngUserList.DataController.AppendRecord;
                    cxMngUserList.DataController.Values[iRow, iNo] := iRow + 1;
                    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
                    begin
                      cxMngUserList.DataController.Values[iRow, iBrName] := scb_FamilyBrName[cboBranch.ItemIndex];
                      cxMngUserList.DataController.Values[iRow, iBrNo]   := scb_FamilyBrCode[cboBranch.ItemIndex];
                    end else
                    begin
                      cxMngUserList.DataController.Values[iRow, iBrName] := scb_BranchName[cboBranch.ItemIndex];
                      cxMngUserList.DataController.Values[iRow, iBrNo] :=   scb_BranchCode[cboBranch.ItemIndex];
                    end;
                    cxMngUserList.DataController.Values[iRow, iLevel] :=  cxcbGrad.Text;
                    cxMngUserList.DataController.Values[iRow, iUserName]  := cxedName.Text;
				  					sTemp := strtocall(StringReplace(Trim(cxcbPhone.Text) + Trim(cxedPhone.Text), '-', '', [rfReplaceAll]));
				  					cxMngUserList.DataController.Values[iRow, iHp] := sTemp;
				  					sTemp := strtocall(StringReplace(Trim(cxedTel.Text), '-', '', [rfReplaceAll]));
				  					cxMngUserList.DataController.Values[iRow, iTel] := sTemp;
				  					cxMngUserList.DataController.Values[iRow, iUserStatus] := cxcbUserStatus.Text;
				  					cxMngUserList.DataController.Values[iRow, iDate] := FormatDateTime('yyyy-mm-dd', Now);
				  					cxMngUserList.DataController.Values[iRow, iHdNo] := cxHdNo.Text;
				  					cxMngUserList.DataController.Values[iRow, iPwd] := cxedPW.Text;
  									sTemp := cxedNo1.Text + '-' + cxedNo2.Text;
				  					cxMngUserList.DataController.Values[iRow, iNum] := sTemp;
				  					cxMngUserList.DataController.Values[iRow, iAddr] := cxmmAddr.Text;
				  					cxMngUserList.DataController.Values[iRow, iMemo] := cxmmMemo1.Text;
				  					cxMngUserList.DataController.Values[iRow, iRegDate] := FormatDateTime('yyyy-mm-dd', cxdtInDate.Date);
				  					cxMngUserList.EndUpdate;
                  end;
                end;
            end;
          end;
        end;
      end;
  end
end;

procedure TFrm_USR10.rb_AdminAPP_Use_NClick(Sender: TObject);
begin
	rb_AdminAPP_ADD_Use_N.Enabled := not rb_AdminAPP_Use_N.checked;
	rb_AdminAPP_ADD_Use_Y.Enabled := not rb_AdminAPP_Use_N.checked;
end;

procedure TFrm_USR10.cboBranchClick(Sender: TObject);
begin
  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    cxBrNo.Text := scb_FamilyBrCode.Strings[cboBranch.itemindex]
  else
    cxBrNo.Text := scb_BranchCode.Strings[cboBranch.itemindex];
	cxHdNo.Text := frm_Main.func_search_hdNo(cxBrNo.Text);
  cxcbGradPropertiesChange(self);
end;

procedure TFrm_USR10.btnCloseClick(Sender: TObject);
Var sMsg : String;
begin
  if GS_NICE_CHK then
  begin
		sMsg := '�������� �� ����/���� ���� �����Ͻðڽ��ϱ�?';
    if Application.MessageBox(PChar(sMsg), '', MB_YESNO + MB_ICONINFORMATION) = IDNO then Exit;
  end;
  GS_NICE_CHK := False;
  Close;
end;

procedure TFrm_USR10.cxButton1Click(Sender: TObject);
begin
  grpHelp.Visible := False;
end;

procedure TFrm_USR10.cxButton3Click(Sender: TObject);
var
  ls_TxQry, ls_TxLoad, sId, sQueryTemp : string; // XML File Load
  slReceive: TStringList;
  rv_str, ls_rxxml: string;
  ErrCode: integer;
begin
  sId := cxedId.Text;
  if Length(sId) < 6 then
  begin
		GMessagebox('���̵�� 6���̻� �Է��ϼž� �մϴ�.', CDMSE);
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
        Application.ProcessMessages;
        proc_recieve(ls_rxxml);
      end;
    end;
  finally
    FreeAndNil(slReceive);
  end;
end;

procedure TFrm_USR10.cxedPhoneExit(Sender: TObject);
begin
	cxedPhone.Text := strtocall(cxedPhone.Text);
end;

procedure TFrm_USR10.cxedPhoneKeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8, #22, '-'] then      //Ctrl+v = #22 or #$16
	else
		key := #0;
end;

procedure TFrm_USR10.cxedTelExit(Sender: TObject);
begin
  cxedTel.Text := strtocall(cxedTel.Text);
end;

procedure TFrm_USR10.cxmmAddrKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxMemo(sender).Text := Enc_Control(TcxMemo(sender).Text);
end;

procedure TFrm_USR10.cxcbGradPropertiesChange(Sender: TObject);
var
  xmldata, errmsg: string;
  errcode: integer;
  tmpStr: string;
  tmParam: string;
begin
  // 2011.09.27 �߰�. ���� �Ǵ� ��������ڰ� ��������ڸ� ������ �� ����.
  if cxbModify.Caption = '����' then
  begin
    if (cxcbGrad.itemindex = 0) and (GT_USERIF.LV <= '40') then
    begin
			GMessagebox('��������� �Ǵ� ������ ��������ڸ� ���� �� �� �����ϴ�.',CDMSE);
      exit;
    end else
    if (cxcbGrad.itemindex = 1) and (GT_USERIF.LV <= '10') then
    begin
			GMessagebox('������ ��������ڸ� ���� �� �� �����ϴ�.',CDMSE);
      exit;
		end;
	end;

  // 2011.03.03 �ݼ���üũ �������� [���� ��� �ϰ��..]
	if (cxcbGrad.ItemIndex = 2) then
	begin
    try
      if Pos('(',cboBranch.Text)>1 then
        tmParam:=trim(Copy(cboBranch.Text,1,Pos('(',cboBranch.Text)-1))
      else
        tmParam:='X';

      if not RequestBase(GetCallable05('chk_brcallcenter_yn', 'cas.chk_brcallcenter_yn', tmParam), XmlData, ErrCode, ErrMsg) then
      begin
				GMessagebox('�ݼ���������ȸ�� ������ �߻��߽��ϴ�.',CDMSE);
        cxcbGrad.ItemIndex := -1;
        Exit;
      end;

      tmpStr:=uppercase(xmldata);
      tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
      tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
      tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);

      if Pos('<RESULT VALUE=',tmpStr)>1 then
        tmpStr:=Copy(tmpStr,Pos('<RESULT VALUE=',tmpStr)+14,1)
      else
        tmpStr:='X';
      if tmpStr<>'Y' then
      begin
				GMessagebox('�ݼ����� ���翡���� ������ ��� �� �� �ֽ��ϴ�.', CDMSE);
        cxcbGrad.ItemIndex := -1;
      end;
    except
      GMessagebox('�ݼ���������ȸ�� ������ �߻��߽��ϴ�.',CDMSE);
      cxcbGrad.ItemIndex := -1;
      Exit;
    end;
	end;
end;

procedure TFrm_USR10.btnNCertClick(Sender: TObject);
Var sMsg, slBrNo : String;
begin
  sMsg := '�������� ���� �̿��(�������нÿ���) 60���� �̿�ᰡ �߻��մϴ�.' + #13 +
          '(����ĳ������ ����)' + #13 +
            '�������� ���񽺸� �̿��Ͻðڽ��ϱ�?' + #13#13 +
          '�� ���������Ŀ��� �������� "����/����" ��ư�� �� �����ž� ����ó���˴ϴ�.';

  if Application.MessageBox(PChar(sMsg), '', MB_YESNO + MB_ICONINFORMATION) = IDNO then Exit;

  slBrNo := cxBrNo.Text;;

  if fGetBrCash(slBrNo) < 60 then
  begin
    ShowMessage('���� ĳ�� �ܾ��� �����Ͽ� ���� ���� ���񽺸� �̿��� �� �����ϴ�');
    Exit;
  end;

  try
    if ( not Assigned(Frm_JON057) ) Or ( Frm_JON057 = Nil ) then Frm_JON057 := TFrm_JON057.Create(nil);
    Frm_JON057.sBrNo := slBrNo;
    if GS_PRJ_AREA = 'S' then Frm_JON057.sArea := '1'
                         else Frm_JON057.sArea := '2';
	  Frm_JON057.ShowModal;
  Finally
    if GS_NICE_CHK then
    begin
			cxedName.Text := GS_NICE_Name;
      cxedNo1.Text := Copy(GS_NICE_Birth, 3, 6);

{      ShowMessage('���� : ' + GS_NICE_Name + #13#10 +
                  '������� : ' + GS_NICE_Birth + #13#10 +
                  '���� : ' + GS_NICE_Sex + #13#10 +
                  '�������� ����');}

      ShowMessage('NICE������ �������� ����' + #13#10 +
                  '���� �� ������ ���ּ���');

      btnNCert.Tag := 99;
      btnNCert.Enabled := False;
    end else
    begin
      btnNCert.Tag := 0;
      if GS_NICE_Err <> '' then
        ShowMessage('NICE������ �������� ���� : ' + GS_NICE_Err);
		end;
  end;
end;

procedure TFrm_USR10.cxedIdKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_USR10.cxedNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  btnNCert.Enabled := True;
end;

procedure TFrm_USR10.cxedNo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then
	begin
		if copy(cxedNo2.Text,1,1) <> '' then
			cxAge.caption := func_Age(copy(cxedNo1.Text,1,6), copy(cxedNo2.Text,1,1))
		else
			cxAge.caption := func_Age2(copy(cxedNo1.Text,1,6));
	end;

  btnNCert.Enabled := True;
end;

procedure TFrm_USR10.cxedNo1KeyPress(Sender: TObject; var Key: Char);
begin
  if key in ['0'..'9', #13, #8, '-'] then
  else
    key := #0;
end;

procedure TFrm_USR10.cxedNo2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then
	begin
		if copy(cxedNo2.Text,1,1) <> '' then
			cxAge.caption := func_Age(copy(cxedNo1.Text,1,6), copy(cxedNo2.Text,1,1))
		else
			cxAge.caption := func_Age2(copy(cxedNo1.Text,1,6));
	end;
end;

procedure TFrm_USR10.img2Click(Sender: TObject);
begin
	if grpHelp.Visible then grpHelp.Visible := False
	else
	begin
		grpHelp.Top := 86;
		grpHelp.Left := 13;
		grpHelp.Visible := True;
	end;
end;

end.

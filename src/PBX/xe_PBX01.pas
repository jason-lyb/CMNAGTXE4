unit xe_PBX01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinDevExpressStyle, Vcl.Menus, Vcl.StdCtrls, cxCheckBox, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel, Vcl.ExtCtrls,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  Tfrm_PBX01 = class(TForm)
    Panel1: TPanel;
    PnlInBound: TPanel;
    Shape23: TShape;
    Shape26: TShape;
    Shape27: TShape;
    Shape28: TShape;
    Shape31: TShape;
    Shape32: TShape;
    cxLabel20: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    edt_4: TcxTextEdit;
    cxLabel31: TcxLabel;
    edt_3: TcxTextEdit;
		PnlTitle: TPanel;
    cxLblActive: TLabel;
    btnCancel: TcxButton;
    btnEdit: TcxButton;
    cxLabel3: TcxLabel;
    Shape3: TShape;
    edt_5: TcxTextEdit;
    cxLabel4: TcxLabel;
    Shape4: TShape;
    GroupBox1: TGroupBox;
    Shape5: TShape;
    Shape7: TShape;
    cxLabel6: TcxLabel;
    cb_2: TcxComboBox;
    cb_3: TcxComboBox;
    cxLabel8: TcxLabel;
    Shape6: TShape;
    Shape8: TShape;
    cxLabel7: TcxLabel;
    cb_4: TcxComboBox;
    cb_5: TcxComboBox;
    cxLabel9: TcxLabel;
    GroupBox2: TGroupBox;
    Shape1: TShape;
    Shape2: TShape;
    Shape9: TShape;
    Shape10: TShape;
    cxLabel1: TcxLabel;
    cb_6: TcxComboBox;
    cxLabel2: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel10: TcxLabel;
    edt_6: TcxTextEdit;
    edt_7: TcxTextEdit;
    edt_8: TcxTextEdit;
    GroupBox3: TGroupBox;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    cxLabel11: TcxLabel;
    cb_7: TcxComboBox;
    cb_8: TcxComboBox;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    GroupBox4: TGroupBox;
    Shape15: TShape;
    Shape16: TShape;
    cxLabel15: TcxLabel;
    cb_9: TcxComboBox;
    cxLabel16: TcxLabel;
    GroupBox5: TGroupBox;
    Shape17: TShape;
    Shape18: TShape;
    cxLabel17: TcxLabel;
		cb_10: TcxComboBox;
    cxLabel18: TcxLabel;
    cb_11: TcxComboBox;
    GroupBox6: TGroupBox;
    Shape19: TShape;
    Shape20: TShape;
    cxLabel19: TcxLabel;
    cb_12: TcxComboBox;
    cxLabel21: TcxLabel;
    cb_13: TcxComboBox;
    cb_14: TcxComboBox;
    cxLabel24: TcxLabel;
    Shape21: TShape;
    cxLabel25: TcxLabel;
    Shape22: TShape;
    lb_ColorSet: TcxLabel;
    ColorDialog1: TColorDialog;
    edt_1: TcxTextEdit;
    edt_2: TcxTextEdit;
    edt_10: TcxTextEdit;
    edt_9: TcxTextEdit;
    edt_12: TcxTextEdit;
    cb_1: TcxComboBox;
    GroupBox7: TGroupBox;
    chk_App: TcxCheckBox;
    chk_TellTak: TcxCheckBox;
    chk_Tell: TcxCheckBox;
    chk_Logi: TcxCheckBox;
    chk_CallMart: TcxCheckBox;
    chk_ICon: TcxCheckBox;
    chk_G365: TcxCheckBox;
    chk_InSung: TcxCheckBox;
		procedure lb_ColorSetClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEditClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edt_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cb_2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cb_3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cb_6KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_6KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_8KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cb_7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cb_8KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_10KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cb_9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_11KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lb_ColorSetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
		procedure cb_14KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_12KeyPress(Sender: TObject; var Key: Char);
    procedure edt_12KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_2KeyPress(Sender: TObject; var Key: Char);
    procedure edt_6KeyPress(Sender: TObject; var Key: Char);
    procedure edt_7KeyPress(Sender: TObject; var Key: Char);
    procedure edt_8KeyPress(Sender: TObject; var Key: Char);
    procedure edt_9KeyPress(Sender: TObject; var Key: Char);
    procedure edt_10KeyPress(Sender: TObject; var Key: Char);
    procedure cb_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edt_1KeyPress(Sender: TObject; var Key: Char);
    procedure chk_TellPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
		{ Private declarations }
  public
		{ Public declarations }
		procedure proc_Init;
		procedure proc_ResultMsg(AData, AResult : string);
	end;

var
  frm_PBX01: Tfrm_PBX01;

implementation

{$R *.dfm}

uses main, xe_Func, xe_GNL, CidSi415Lib, xe_Msg, xe_PBX;

procedure Tfrm_PBX01.btnCancelClick(Sender: TObject);
begin
	close;
end;

procedure Tfrm_PBX01.btnEditClick(Sender: TObject);
var sParam, sStr, sTmp : string;
	iTmp : integer;
begin
	Try		
		if not chk_Tell.Checked then
		begin
			showmessage('IPCC ��뿩�ο� �ݸ��ʴ� �� üũ�Ͽ� �ֽʽÿ�.');
			chk_Tell.SetFocus;
			exit;
		end;
		if edt_1.Text = '' then
		begin
			showmessage('ȣ�й�׷��� �Է��Ͽ� �ֽʽÿ�.');
			edt_1.SetFocus;
			exit;
		end;
		iTmp := StrTointDef(edt_1.Text, 0);
		if (iTmp < 9001) and (iTmp > 9999) then
		begin
			showmessage('��ȿ�� ȣ�й�׷��ڵ尡 �ƴմϴ�.' + #13#10 + 'ȣ�й�׷��� 9001 ~ 9999 ���� ���ڷ� �Է��Ͽ� �ֽʽÿ�.');
			edt_1.SetFocus;
			exit;
		end;
		if edt_12.Text = '' then
		begin
			showmessage('��ǥ��ȣ�� �Է��Ͽ� �ֽʽÿ�.');
			edt_12.SetFocus;
			exit;
		end;
		if length(edt_12.Text) < 8 then
		begin
			sTmp := '��ǥ��ȣ �ڸ����� �ʹ� �۽��ϴ�.'+#13#10+ '�״�� ���� �Ͻðڽ��ϱ�?';
			if Application.MessageBox(PChar(sTmp), CDMSI,
			MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then
			begin
				edt_12.SetFocus;
				exit;
			end;
		end;
		
		if edt_2.Text = '' then
		begin
			showmessage('���Ź�ȣ�� �Է��Ͽ� �ֽʽÿ�.');
			edt_2.SetFocus;
			exit;
		end;
		if length(edt_2.Text) < 8 then
		begin
			sTmp := '���Ź�ȣ �ڸ����� �ʹ� �۽��ϴ�.'+#13#10+ '�״�� ���� �Ͻðڽ��ϱ�?';
			if Application.MessageBox(PChar(sTmp), CDMSI,
			MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then
			begin
				edt_2.SetFocus;
				exit;
			end;
		end;

		if (cb_6.ItemIndex <> 0) and ((length(edt_7.Text) <> 4) or (StrToIntDef(edt_7.Text, -1) < 0) or (StrToIntDef(edt_7.Text, -1) > 2359)) then
		begin
			showmessage('[��������]���۽ð��� �߸� �ԷµǾ����ϴ�.' +#13#10 + '0000 ~ 2359 ������ ���� �������ּ���');
			edt_7.SetFocus;
			exit;
		end;
		if (cb_6.ItemIndex <> 0) and ((length(edt_8.Text) <> 4) or (StrToIntDef(edt_8.Text, -1) < 0) or (StrToIntDef(edt_8.Text, -1) > 2359)) then
		begin
			showmessage('[��������]����ð��� �߸� �ԷµǾ����ϴ�.' +#13#10 + '0000 ~ 2359 ������ ���� �������ּ���');
			edt_8.SetFocus;
			exit;
		end;

		if (cb_7.ItemIndex <> 0) and ((length(edt_9.Text) <> 4) or (StrToIntDef(edt_9.Text, -1) < 0) or (StrToIntDef(edt_9.Text, -1) > 2359)) then
		begin
			showmessage('[���͸�]���۽ð��� �߸� �ԷµǾ����ϴ�.' +#13#10 + '0000 ~ 2359 ������ ���� �������ּ���');
			edt_9.SetFocus;
			exit;
		end;
		if (cb_7.ItemIndex <> 0) and ((length(edt_10.Text) <> 4) or (StrToIntDef(edt_10.Text, -1) < 0) or (StrToIntDef(edt_10.Text, -1) > 2359)) then
		begin
			showmessage('[���͸�]����ð��� �߸� �ԷµǾ����ϴ�.' +#13#10 + '0000 ~ 2359 ������ ���� �������ּ���');
			edt_10.SetFocus;
			exit;
		end;

		sParam := '';
		sParam := GT_Si415_INFO.Id;
		sParam := sParam + '��' + Trim(edt_1.Text);                                                    //ȣ�й�׷�
		sParam := sParam + '��' + Trim(CallToStr(edt_12.Text));                                        //��ǥ��ȣ
		sParam := sParam + '��' + Trim(CallToStr(edt_2.Text));                                         //���Ź�ȣ
		sParam := sParam + '��' + Trim(edt_3.Text);                                          					//���񽺸�
		sParam := sParam + '��' + Trim(edt_4.Text);                                         						//������/��Ż�
		sParam := sParam + '��' + Trim(edt_5.Text);    			                                     			//�ȳ�����

		if cb_6.ItemIndex = 0 then sParam := sParam + '��' + 'N' else 
		if cb_6.ItemIndex = 1 then sParam := sParam + '��' + 'Y' else 
		if cb_6.ItemIndex = 2 then sParam := sParam + '��' + 'A' ;                                     //�������� / ������ ���� ��� ��������
		sParam := sParam + '��' + Trim(edt_7.Text);                                                    //�������� ���ð�
		sParam := sParam + '��' + Trim(edt_8.Text);                                                    //�������� ����ð�
		sParam := sParam + '��' + Trim(CallToStr(edt_6.Text));                                         //���Ź�ȣ1
		if cb_6.ItemIndex = 0 then sParam := sParam + '��' + 'N' else 
		if cb_6.ItemIndex = 1 then sParam := sParam + '��' + 'Y' else 
		if cb_6.ItemIndex = 2 then sParam := sParam + '��' + 'Y' ;                                     //���Ź�ȣ1 �������
		sParam := sParam + '��' + '' + '��' + '';                                                       //���Ź�ȣ2, ���Ź�ȣ2 �������
		sParam := sParam + '��' + '' + '��' + '';                                                       //���Ź�ȣ3, ���Ź�ȣ3 �������

		if chk_Tell.Checked     then sParam := sParam + '��' + 'Y' else sParam := sParam + '��' + 'N';   //�ݸ��� ���� ����
		if chk_TellTak.Checked  then sParam := sParam + '��' + 'Y' else sParam := sParam + '��' + 'N';   //�ݸ���Ź�� ���� ����
		if chk_Logi.Checked     then sParam := sParam + '��' + 'Y' else sParam := sParam + '��' + 'N';   //���� ���� ����
		if chk_CallMart.Checked then sParam := sParam + '��' + 'Y' else sParam := sParam + '��' + 'N';   //�ݸ�Ʈ ���� ����
		if chk_ICon.Checked     then sParam := sParam + '��' + 'Y' else sParam := sParam + '��' + 'N';   //������ ���� ����
		if chk_G365.Checked     then sParam := sParam + '��' + 'Y' else sParam := sParam + '��' + 'N';   //G365 ���� ����
		if chk_InSung.Checked   then sParam := sParam + '��' + 'Y' else sParam := sParam + '��' + 'N';   //�μ� ���� ����
		if chk_App.Checked      then sParam := sParam + '��' + '01000' else sParam := sParam + '��' + '00000';//���ÿ���

		if cb_2.ItemIndex = 0 then sTmp := '' else sTmp := cb_2.Text;
		sParam := sParam + '��' + sTmp;                                                                //CTI-Q ����Ʈ
		if cb_3.ItemIndex = 0 then sTmp := '' else sTmp := cb_3.Text;
		sParam := sParam + '��' + sTmp;                                                                //VIP CTI-Q ����Ʈ
//		sParam := sParam + '��' + cb_4.Text;    //�̸�����VIP|VR��Ʈ
//		sParam := sParam + '��' + cb_5.Text;    //�̸��ִ�VIP|VR��Ʈ
		if cb_7.ItemIndex = 0 then sParam := sParam + '��' + 'N' else sParam := sParam + '��' + 'Y';    //���� ���͸� �������

		if cb_8.ItemIndex = 0 then sTmp := '' else sTmp := cb_8.Text;
		sParam := sParam + '��' + sTmp    ;                                                           //���� ���͸� ��Ʈ ��
		sParam := sParam + '��' + Trim(edt_9.Text);                                                    //���͸� ���۽ð�
		sParam := sParam + '��' + Trim(edt_10.Text);                                                   //���͸� ����ð�

//		if cb_9.ItemIndex = 0 then sParam := sParam + '��' + 'N' else sParam := sParam + '��' + 'Y'; 		//080���Űź�
		sParam := sParam + '��' + ''; 		//080���Űź�

		if cb_1.ItemIndex = 0 then sTmp := '' else sTmp := cb_1.Text;                                 //���Űźθ�Ʈ
		sTmp := '';
		sParam := sParam + '��' + sTmp;        																						          	//���Űźθ�Ʈ
		if cb_14.ItemIndex = 0 then sParam := sParam + '��' + '1' else sParam := sParam + '��' + '2'; 	//ȣ�й����
	
		if btnEdit.tag = 0 then sTmp := '6020' else sTmp := '6030';
		sStr := fSI_6020_30_Send(sTmp, sParam);
	except
  End;
end;

procedure Tfrm_PBX01.cb_14KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then btnEdit.SetFocus;
end;

procedure Tfrm_PBX01.cb_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then cb_14.SetFocus;
end;

procedure Tfrm_PBX01.cb_2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then cb_3.SetFocus;
end;

procedure Tfrm_PBX01.cb_3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then cb_6.SetFocus;
end;

procedure Tfrm_PBX01.cb_6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then edt_6.SetFocus;
end;

procedure Tfrm_PBX01.cb_7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then cb_8.SetFocus;
end;

procedure Tfrm_PBX01.cb_8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then edt_9.SetFocus;
end;

procedure Tfrm_PBX01.cb_9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then cb_1.SetFocus;
end;

procedure Tfrm_PBX01.chk_TellPropertiesChange(Sender: TObject);
begin
	if chk_Tell.checked then chk_Tell.Enabled := False else chk_Tell.Enabled := True;
end;

procedure Tfrm_PBX01.edt_12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then edt_2.SetFocus;
end;

procedure Tfrm_PBX01.edt_12KeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else
		key := #0;
end;

procedure Tfrm_PBX01.edt_10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then cb_9.SetFocus;
end;

procedure Tfrm_PBX01.edt_10KeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else key := #0;
end;

procedure Tfrm_PBX01.edt_11KeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if Key = vk_Return then lb_ColorSet.SetFocus;
end;

procedure Tfrm_PBX01.edt_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then edt_12.SetFocus;
end;

procedure Tfrm_PBX01.edt_1KeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else key := #0;
end;

procedure Tfrm_PBX01.edt_2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then edt_3.SetFocus;
end;

procedure Tfrm_PBX01.edt_2KeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else key := #0;
end;

procedure Tfrm_PBX01.edt_3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then edt_4.SetFocus;
end;

procedure Tfrm_PBX01.edt_4KeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if Key = vk_Return then edt_5.SetFocus;
end;

procedure Tfrm_PBX01.edt_5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then chk_Tell.SetFocus;
end;

procedure Tfrm_PBX01.edt_6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then edt_7.SetFocus;
end;

procedure Tfrm_PBX01.edt_6KeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else
		key := #0;
end;

procedure Tfrm_PBX01.edt_7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then edt_8.SetFocus;
end;

procedure Tfrm_PBX01.edt_7KeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else key := #0;
end;

procedure Tfrm_PBX01.edt_8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then cb_7.SetFocus;
end;

procedure Tfrm_PBX01.edt_8KeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else key := #0;
end;

procedure Tfrm_PBX01.edt_9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then edt_10.SetFocus;
end;

procedure Tfrm_PBX01.edt_9KeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else key := #0;
end;

procedure Tfrm_PBX01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrm_PBX01.FormCreate(Sender: TObject);
var
	Save: Integer;
begin
	//====================================================
	// �� Ÿ��Ʋ ����..
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

	proc_Init;
end;

procedure Tfrm_PBX01.FormDestroy(Sender: TObject);
begin
	Frm_PBX01 := Nil;
end;

procedure Tfrm_PBX01.FormShow(Sender: TObject);
begin
	if btnEdit.tag = 0 then
	begin
		edt_4.enabled := True;
		edt_5.enabled := True;
	end else
	begin
		edt_4.enabled := False;
		edt_5.enabled := False;
	end;
end;

procedure Tfrm_PBX01.lb_ColorSetClick(Sender: TObject);
var
  s: string;
begin
	ColorDialog1.Color := TPanel(Sender).Color;
	if (ColorDialog1.Execute) then
  begin
		SetIniColor(ENVPATHFILE, 'PBX_ColorSet', s, ColorToString(ColorDialog1.Color));
	end;
end;

procedure Tfrm_PBX01.lb_ColorSetKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then cb_14.SetFocus;
end;

procedure Tfrm_PBX01.PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_PBX01.proc_Init;
var i : integer;
begin
	edt_1.enabled := True;
	
	for i := 1 to 11 do
	begin
		TcxTextEdit(FindComponent('edt_'+IntToStr(i))).Text := '';
	end;
	btnEdit.Tag := 0;

	chk_Tell.checked    := False;
	chk_TellTak.checked := False;
	chk_Logi.Checked    := False; 
  chk_CallMart.Checked:= False; 
  chk_ICon.Checked    := False; 
  chk_G365.Checked    := False; 
  chk_InSung.Checked  := False; 
	chk_App.Checked     := False; 
	
	//CTI-Q ����Ʈ
	cb_2.Properties.Items.Clear;
	cb_2.Properties.Items.Add('������');
	for i := 0 to frm_PBX.FMente.slCodeID.count - 1 do
	begin
		if frm_PBX.FMente.slCodeID[i] = 'MENT_CTI_Q' then
		begin
			cb_2.Properties.Items.Add(frm_PBX.FMente.slFilename[i]);
		end;
	end;

	//VIP CTI-Q ����Ʈ
	cb_3.Properties.Items.Clear;
	cb_3.Properties.Items.Add('������');
	for i := 0 to frm_PBX.FMente.slCodeID.count - 1 do
	begin
		if frm_PBX.FMente.slCodeID[i] = 'MENT_VIP_CTI_Q' then
		begin
			cb_3.Properties.Items.Add(frm_PBX.FMente.slFilename[i]);
		end;
	end;
	
	//���͸���Ʈ
	cb_8.Properties.Items.Clear;
	cb_8.Properties.Items.Add('������');
	for i := 0 to frm_PBX.FMente.slCodeID.count - 1 do
	begin
		if frm_PBX.FMente.slCodeID[i] = 'MENT_FILTER' then
		begin
			cb_8.Properties.Items.Add(frm_PBX.FMente.slFilename[i]);
		end;
	end;
	
	//���Űźθ�Ʈ
	cb_1.Properties.Items.Clear;
	cb_1.Properties.Items.Add('������');
	for i := 0 to frm_PBX.FMente.slCodeID.count - 1 do
	begin
		if frm_PBX.FMente.slCodeID[i] = 'MENT_REJECT' then
		begin
			cb_1.Properties.Items.Add(frm_PBX.FMente.slFilename[i]);
		end;
	end;

	for i := 1 to 14 do
	begin
		TcxComboBox(FindComponent('cb_'+IntToStr(i))).ItemIndex := 0;
	end;
end;

procedure Tfrm_PBX01.proc_ResultMsg(AData, AResult: string);
begin
	if (AResult = '00') or (AResult = '90') then
	begin
		GMessagebox('����Ǿ����ϴ�.', CDMSI);

		if btnEdit.tag = 0 then
		begin
			frm_PBX.btn_3_1.click;
		end else
		begin
			frm_PBX.btn_3_1.click;
		end;   
		
		btnCancel.click;
	end else
	begin
		GMessagebox(Format('���� �� �����߻�'#13#10'[�����ڵ�]%s', [ AResult]), CDMSI);
	end;
end;

end.

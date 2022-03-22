unit xe_PBX08;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinDevExpressStyle, Vcl.Menus, Vcl.StdCtrls, cxCheckBox, cxButtons,
	cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel, Vcl.ExtCtrls, cxStyles, System.JSON,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxRadioGroup, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxClasses, cxGridCustomView, cxGrid,
  cxGroupBox, cxMemo, cxProgressBar, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinSharp, dxDateRanges, dxSkinMetropolisDark,
  dxSkinOffice2007Silver;

type
  Tfrm_PBX08 = class(TForm)
    Panel1: TPanel;
    PnlInBound: TPanel;
		PnlTitle: TPanel;
    cxLblActive: TLabel;
    ColorDialog1: TColorDialog;
    cxGroupBox9: TcxGroupBox;
    btn_3_1: TcxButton;
    cxGridA3: TcxGrid;
    cxGridInBound: TcxGridBandedTableView;
    cxGridBandedColumn1: TcxGridBandedColumn;
    cxGridBandedColumn2: TcxGridBandedColumn;
    cxGridBandedColumn3: TcxGridBandedColumn;
    cxGridBandedColumn4: TcxGridBandedColumn;
    cxGridBandedColumn5: TcxGridBandedColumn;
    cxGridBandedColumn6: TcxGridBandedColumn;
    cxGridBandedColumn9: TcxGridBandedColumn;
    cxGridBandedColumn10: TcxGridBandedColumn;
    cxGridBandedColumn11: TcxGridBandedColumn;
    cxGridBandedColumn12: TcxGridBandedColumn;
    cxGridBandedColumn13: TcxGridBandedColumn;
    cxGridBandedColumn14: TcxGridBandedColumn;
    cxGridBandedColumn15: TcxGridBandedColumn;
    cxGridBandedColumn16: TcxGridBandedColumn;
    cxGridLevel8: TcxGridLevel;
    cxGridBandedColumn7: TcxGridBandedColumn;
    cxGridBandedColumn8: TcxGridBandedColumn;
    btnEdit: TcxButton;
    btnCancel: TcxButton;
    cxGroupBox1: TcxGroupBox;
    rdo_Option1: TcxRadioButton;
    rdo_Option4: TcxRadioButton;
    rdo_Option2: TcxRadioButton;
    rdo_Option5: TcxRadioButton;
    rdo_Option3: TcxRadioButton;
    cxGroupBox2: TcxGroupBox;
    Shape9: TShape;
    cxLabel5: TcxLabel;
    edt_Start: TcxTextEdit;
    btn_Accept: TcxButton;
    Shape1: TShape;
    cxLabel1: TcxLabel;
    edt_End: TcxTextEdit;
    chk_Option1: TcxCheckBox;
    chk_Option2: TcxCheckBox;
    chk_Option3: TcxCheckBox;
    pnl_Process: TPanel;
    tmr_Process: TTimer;
    cxGridInBoundColumn1: TcxGridBandedColumn;
    mmo_Msg: TcxMemo;
    Panel2: TPanel;
    btn_PnlClose: TcxButton;
    Panel3: TPanel;
    cxProgressBar1: TcxProgressBar;
    btn_Run: TcxButton;
    lb_Notice1: TcxLabel;
    lb_Notice2: TcxLabel;
		procedure lb_ColorSetClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
		procedure btnEditClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
		procedure btn_3_1Click(Sender: TObject);
    procedure PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rdo_Option1Click(Sender: TObject);
    procedure btn_AcceptClick(Sender: TObject);
    procedure edt_StartKeyPress(Sender: TObject; var Key: Char);
    procedure edt_EndKeyPress(Sender: TObject; var Key: Char);
    procedure cxGridInBoundEditKeyPress(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
    procedure chk_Option1PropertiesChange(Sender: TObject);
    procedure cxGridBandedColumn6PropertiesChange(Sender: TObject);
    procedure cxGridBandedColumn7PropertiesChange(Sender: TObject);
    procedure cxGridBandedColumn8PropertiesChange(Sender: TObject);
		procedure edt_StartKeyDown(Sender: TObject; var Key: Word;
			Shift: TShiftState);
		procedure edt_EndKeyDown(Sender: TObject; var Key: Word;
			Shift: TShiftState);
		procedure tmr_ProcessTimer(Sender: TObject);
		procedure btn_RunClick(Sender: TObject);
    procedure btn_PnlCloseClick(Sender: TObject);
    procedure Panel2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
	private
		{ Private declarations }
		bTmp : Boolean;
		gCnt : integer; //�ϰ����� ����
		function func_6030Str(ARow : integer; var AData, AMsg : string): Boolean;
	public
		{ Public declarations }
		gQExten : string;
		gl_6030Str : TStringList;
		procedure proc_Init;
		procedure proc_6011(AJson, APid: string; ANext : Boolean);
		procedure proc_ResultMsg(AData, AResult : string);
	end;

var
  frm_PBX08: Tfrm_PBX08;

implementation

{$R *.dfm}

uses main, xe_Func, xe_GNL, CidSi415Lib, xe_Msg, xe_PBX;

procedure Tfrm_PBX08.btnCancelClick(Sender: TObject);
begin
	close;
end;

procedure Tfrm_PBX08.btnEditClick(Sender: TObject);
var sStr, sMsg : string;
	i : integer;
begin
	SetDebugeWrite('Tfrm_PBX08.btnEditClick');
	try
		cxProgressBar1.Position := 0;
		btn_Run.Enabled := False;
		mmo_Msg.Lines.Clear;
		gl_6030Str.Clear;
		bTmp := True;
		lb_Notice1.Caption := '������ ������ �����մϴ�.';
		for i := 0 to cxGridInBound.DataController.RecordCount -1 do
		begin
			if func_6030Str(i, sStr, sMsg) then
				gl_6030Str.add(sStr)
			else
			begin
				mmo_Msg.Lines.Add(sMsg);
				bTmp := False;
			end;
		end;
	except

  end;
	btn_Run.Enabled := True;
	lb_Notice1.Caption := '���ż��� �غ� �Ϸ�Ǿ����ϴ�.';
	if bTmp then
		lb_Notice2.Caption := '�ϰ����� ��ư�� ������ ����˴ϴ�.'
	else
		lb_Notice2.Caption := '������ ���Ź�ȣ�� �ֽ��ϴ�. �Ʒ��� �޼����� �����ϼ���.';

	pnl_Process.Visible := True;
	pnl_Process.Left := 247;
	pnl_Process.Top  := 155;
end;

procedure Tfrm_PBX08.btn_3_1Click(Sender: TObject);
var sParam : string;
begin
	Try
		sParam := '';
		sParam := GT_Si415_INFO.Id;
		sParam := sParam + '��' + '';
		sParam := sParam + '��' + '';
		sParam := sParam + '��' + '';
		sParam := sParam + '��' + '';

		fSI_6010_Send(sParam);
	except
	End;
end;

procedure Tfrm_PBX08.btn_AcceptClick(Sender: TObject);
var i : integer;
begin
	SetDebugeWrite('Tfrm_PBX08.btn_AcceptClick');
	try
		if (length(edt_Start.Text) <> 4) or (StrToIntDef(edt_Start.Text, -1) < 0) or (StrToIntDef(edt_Start.Text, -1) > 2359) then
		begin
			showmessage('���۽ð��� �߸� �ԷµǾ����ϴ�.' +#13#10 + '0000 ~ 2359 ������ ���� �������ּ���');
			edt_Start.SetFocus;
			exit;
		end;
		if (length(edt_End.Text) <> 4) or (StrToIntDef(edt_End.Text, -1) < 0) or (StrToIntDef(edt_End.Text, -1) > 2359) then
		begin
			showmessage('����ð��� �߸� �ԷµǾ����ϴ�.' +#13#10 + '0000 ~ 2359 ������ ���� �������ּ���');
			edt_End.SetFocus;
			exit;
		end;

		cxGridInBound.BeginUpdate;
		for I := 0 to cxGridInBound.DataController.RecordCount -1 do
		begin
			cxGridInBound.DataController.Values[i, 8]	:= edt_Start.Text;
			cxGridInBound.DataController.Values[i, 9]	:= edt_End.Text;
		end;
		cxGridInBound.EndUpdate;
	except
  end;
end;

procedure Tfrm_PBX08.btn_RunClick(Sender: TObject);
var sMsg : string;
begin
	SetDebugeWrite('Tfrm_PBX08.btn_RunClick');
	try
		if not bTmp then
		begin
			sMsg := '���Ź�ȣ�� �������� ���� ȣ�й�׷��� �ֽ��ϴ�.' + #13#10
						+ '���Ź�ȣ ������ �������� ȣ�й�׷츸 �����Ͻðڽ��ϱ�?' + #13#10 + #13#10
						+ '����[YES], ���[NO]' + #13#10 + #13#10
						+ '�� ���Ź�ȣ�� �������� ���� ȣ�й�׷��� �������忡�� ���ܵ˴ϴ�.';
			if Application.MessageBox(PChar(sMsg), CDMSI, MB_YESNO +
				MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then
			begin
				Exit;
			end;
		end;
		frm_PBX08.btn_Run.Tag := 99;
		gCnt := 0;
		cxProgressBar1.Properties.Max := gl_6030Str.Count - 1;
		cxProgressBar1.Position := 0;
		btn_Run.Enabled := False;
		lb_Notice1.caption := '';
		lb_Notice2.caption := '';
		tmr_Process.Enabled := True;
	except
		btn_Run.Enabled := True;
  end;
end;

procedure Tfrm_PBX08.chk_Option1PropertiesChange(Sender: TObject);
var i : integer;
	ChkBox : TcxCheckBox;
begin
	SetDebugeWrite('Tfrm_PBX08.chk_Option1PropertiesChange');
	try
		ChkBox := TcxCheckBox(Sender);

		case ChkBox.Tag of
			0:  //���Ź�ȣ1 ��ü���
				begin  
					cxGridInBound.BeginUpdate;
					for I := 0 to cxGridInBound.DataController.RecordCount -1 do
					begin	
						cxGridInBound.DataController.Values[i, 10]	:= ChkBox.Checked;
					end;
					cxGridInBound.EndUpdate;
				end;
			1:  //���Ź�ȣ2 ��ü���
				begin  
					cxGridInBound.BeginUpdate;
					for I := 0 to cxGridInBound.DataController.RecordCount -1 do
					begin	
						cxGridInBound.DataController.Values[i, 12]	:= ChkBox.Checked;
					end;
					cxGridInBound.EndUpdate;
				end;
			2:  //���Ź�ȣ3 ��ü���
				begin  
					cxGridInBound.BeginUpdate;
					for I := 0 to cxGridInBound.DataController.RecordCount -1 do
					begin	
						cxGridInBound.DataController.Values[i, 14]	:= ChkBox.Checked;
					end;
					cxGridInBound.EndUpdate;
				end;
		end;
	except
  end;
end;

procedure Tfrm_PBX08.btn_PnlCloseClick(Sender: TObject);
begin
	pnl_Process.Visible := False;
end;

procedure Tfrm_PBX08.cxGridBandedColumn6PropertiesChange(Sender: TObject);
var iRow : integer;
begin
	SetDebugeWrite('Tfrm_PBX08.cxGridBandedColumn6PropertiesChange');
	try
		iRow := cxGridInBound.DataController.FocusedRecordIndex;
		if cxGridInBound.DataController.Values[iRow, 5] = True then
		begin
			cxGridInBound.DataController.Values[iRow, 5]	:= false;
			cxGridInBound.DataController.Values[iRow, 6]	:= False;
			cxGridInBound.DataController.Values[iRow, 7]	:= True;
		end else
		begin
			cxGridInBound.DataController.Values[iRow, 5]	:= True;
			cxGridInBound.DataController.Values[iRow, 6]	:= False;
			cxGridInBound.DataController.Values[iRow, 7]	:= False;
		end;
	except
	end;
end;

procedure Tfrm_PBX08.cxGridBandedColumn7PropertiesChange(Sender: TObject);
var iRow : integer;
begin
	SetDebugeWrite('Tfrm_PBX08.cxGridBandedColumn7PropertiesChange');
	try
		iRow := cxGridInBound.DataController.FocusedRecordIndex;
		if cxGridInBound.DataController.Values[iRow, 6] = True then
		begin
			cxGridInBound.DataController.Values[iRow, 5]	:= false;
			cxGridInBound.DataController.Values[iRow, 6]	:= False;
			cxGridInBound.DataController.Values[iRow, 7]	:= True;
		end	else
		begin
			cxGridInBound.DataController.Values[iRow, 5]	:= False;
			cxGridInBound.DataController.Values[iRow, 6]	:= True;
			cxGridInBound.DataController.Values[iRow, 7]	:= False;
		end;
	except
	end;
end;

procedure Tfrm_PBX08.cxGridBandedColumn8PropertiesChange(Sender: TObject);
var iRow : integer;
begin
	SetDebugeWrite('Tfrm_PBX08.cxGridBandedColumn7PropertiesChange');
	try
		iRow := cxGridInBound.DataController.FocusedRecordIndex;
		if cxGridInBound.DataController.Values[iRow, 7] = True then
		begin
			cxGridInBound.DataController.Values[iRow, 5]	:= false;
			cxGridInBound.DataController.Values[iRow, 6]	:= False;
			cxGridInBound.DataController.Values[iRow, 7]	:= True;
		end else
		begin
			cxGridInBound.DataController.Values[iRow, 5]	:= False;
			cxGridInBound.DataController.Values[iRow, 6]	:= False;
			cxGridInBound.DataController.Values[iRow, 7]	:= True;
		end;
	except
	end;
end;

procedure Tfrm_PBX08.cxGridInBoundEditKeyPress(Sender: TcxCustomGridTableView;
	AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else key := #0;
end;

procedure Tfrm_PBX08.edt_EndKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then btn_Accept.click;
end;

procedure Tfrm_PBX08.edt_EndKeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else key := #0;
end;

procedure Tfrm_PBX08.edt_StartKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then edt_End.SetFocus;
end;

procedure Tfrm_PBX08.edt_StartKeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else key := #0;
end;

procedure Tfrm_PBX08.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	FreeAndNil(gl_6030Str);
	Action := caFree;
end;

procedure Tfrm_PBX08.FormCreate(Sender: TObject);
var
	Save, i: Integer;
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

	for i := 0 to cxGridInBound.ColumnCount - 1 do
		cxGridInBound.Columns[i].DataBinding.ValueType := 'String';
	cxGridInBound.Columns[0].DataBinding.ValueType := 'Integer';	
	cxGridInBound.Columns[5].DataBinding.ValueType := 'Boolean';	
	cxGridInBound.Columns[6].DataBinding.ValueType := 'Boolean';	
	cxGridInBound.Columns[7].DataBinding.ValueType := 'Boolean';	
	cxGridInBound.Columns[10].DataBinding.ValueType := 'Boolean';	
	cxGridInBound.Columns[12].DataBinding.ValueType := 'Boolean';	
	cxGridInBound.Columns[14].DataBinding.ValueType := 'Boolean';	

	gl_6030Str := TStringList.Create;
	proc_Init;
end;

procedure Tfrm_PBX08.FormDestroy(Sender: TObject);
begin
	Frm_PBX08 := Nil;
end;

function Tfrm_PBX08.func_6030Str(ARow: integer; var AData, AMsg : string): Boolean;
var sParam : string;
begin
	SetDebugeWrite('Tfrm_PBX08.func_6030Str');
	Try		
		Result := True;
		AMsg := '';
		if cxGridInBound.DataController.Values[ARow,10] = true then
		begin
			if cxGridInBound.DataController.Values[ARow,11] = '' then
			begin
				result := False;
				AMsg := format('ȣ�й�׷� - %s, ���Ź�ȣ1�� ��ȣ�� �Է��Ͽ� �ֽʽÿ�', [cxGridInBound.DataController.Values[ARow, 1]] );
				exit;
			end;
		end;
		if cxGridInBound.DataController.Values[ARow,12] = true then
		begin
			if cxGridInBound.DataController.Values[ARow,13] = '' then
			begin
				result := False;
				AMsg := format('ȣ�й�׷� - %s, ���Ź�ȣ2�� ��ȣ�� �Է��Ͽ� �ֽʽÿ�', [cxGridInBound.DataController.Values[ARow, 1]] );
				exit;
			end;
		end;
		if cxGridInBound.DataController.Values[ARow,14] = true then
		begin
			if cxGridInBound.DataController.Values[ARow,15] = '' then
			begin
				result := False;
				AMsg := format('ȣ�й�׷� - %s, ���Ź�ȣ3�� ��ȣ�� �Է��Ͽ� �ֽʽÿ�', [cxGridInBound.DataController.Values[ARow, 1]] );
				exit;
			end;
		end;
		
		if (cxGridInBound.DataController.Values[ARow,5] = true) or (cxGridInBound.DataController.Values[ARow,6] = true) then
		begin
			if (cxGridInBound.DataController.Values[ARow, 10] = False) and 
				 (cxGridInBound.DataController.Values[ARow, 12] = False) and
				 (cxGridInBound.DataController.Values[ARow, 14] = False) then
			begin
				result := False;
				AMsg := format('ȣ�й�׷� - %s, ����/���������� ���� ���Ź�ȣ1,2,3 �� ���üũ�� �ϼž� �մϴ�.', [cxGridInBound.DataController.Values[ARow, 1]] );
				exit;
			end;
		end;

		sParam := '';
		sParam := GT_Si415_INFO.Id;
		sParam := sParam + '��' + Trim(cxGridInBound.DataController.Values[ARow, 1]);    //ȣ�й�׷�
		sParam := sParam + '��' + Trim(CallToStr(cxGridInBound.DataController.Values[ARow, 2]));    //��ǥ��ȣ
		sParam := sParam + '��' + Trim(CallToStr(cxGridInBound.DataController.Values[ARow, 3]));    //���Ź�ȣ
		sParam := sParam + '��' + Trim(cxGridInBound.DataController.Values[ARow, 4]);    //���񽺸�
		sParam := sParam + '��' + '';                                         						//������/��Ż�
		sParam := sParam + '��' + '';    			                                     			//�ȳ�����

		if cxGridInBound.DataController.Values[ARow, 5] = True then                     //�������� / ������ ���� ��� ��������
		begin
			sParam := sParam + '��' + 'Y';
		end else
		if cxGridInBound.DataController.Values[ARow, 6] = True then
		begin
			sParam := sParam + '��' + 'A';
		end else
		if cxGridInBound.DataController.Values[ARow, 7] = True then
		begin
			sParam := sParam + '��' + 'N';
		end;
		sParam := sParam + '��' + Trim(cxGridInBound.DataController.Values[ARow, 8]);    //�������� ���ð�
		sParam := sParam + '��' + Trim(cxGridInBound.DataController.Values[ARow, 9]);    //�������� ����ð�
		
		sParam := sParam + '��' + Trim(strToCall(cxGridInBound.DataController.Values[ARow,11]));                                     //���Ź�ȣ1
		if cxGridInBound.DataController.Values[ARow, 10] = True then sParam := sParam + '��' + 'Y' else sParam := sParam + '��' + 'N';//���Ź�ȣ1 �������

		sParam := sParam + '��' + Trim(strToCall(cxGridInBound.DataController.Values[ARow,13]));                                     //���Ź�ȣ2
		if cxGridInBound.DataController.Values[ARow, 12] = True then sParam := sParam + '��' + 'Y' else sParam := sParam + '��' + 'N';//���Ź�ȣ2 �������

		sParam := sParam + '��' + Trim(strToCall(cxGridInBound.DataController.Values[ARow,15]));                                     //���Ź�ȣ3
		if cxGridInBound.DataController.Values[ARow, 14] = True then sParam := sParam + '��' + 'Y' else sParam := sParam + '��' + 'N';//���Ź�ȣ3 �������

		sParam := sParam + '��' + '';   //�ݸ��� ���� ����
		sParam := sParam + '��' + '';   //�ݸ���Ź�� ���� ����
		sParam := sParam + '��' + '';   //����1
		sParam := sParam + '��' + '';   //����2
		sParam := sParam + '��' + '';   //����3
		sParam := sParam + '��' + Trim(cxGridInBound.DataController.Values[ARow, 16]);   //���ÿ���
		sParam := sParam + '��' + '';   //CTI-Q ����Ʈ
		sParam := sParam + '��' + '';   //VIP CTI-Q ����Ʈ
		sParam := sParam + '��' + '';   //���� ���͸� �������
		sParam := sParam + '��' + '';   //���� ���͸� ��Ʈ ��
		sParam := sParam + '��' + '';   //���͸� ���۽ð�
		sParam := sParam + '��' + '';   //���͸� ����ð�
		sParam := sParam + '��' + '';   //080���Űź�
		sParam := sParam + '��' + '';   //���Űźθ�Ʈ
		sParam := sParam + '��' + '';   //ȣ�й����
	
//		sStr := fSI_6020_30_Send('6030', sParam);
		AData := sParam;
	except
		Result := False;
  End;
end;

procedure Tfrm_PBX08.lb_ColorSetClick(Sender: TObject);
var
  s: string;
begin
	ColorDialog1.Color := TPanel(Sender).Color;
	if (ColorDialog1.Execute) then
	begin
		SetIniColor(ENVPATHFILE, 'PBX_ColorSet', s, ColorToString(ColorDialog1.Color));
	end;
end;

procedure Tfrm_PBX08.Panel2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(pnl_Process.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_PBX08.PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_PBX08.proc_6011(AJson, APid: string; ANext: Boolean);
Var
	subObj : TJSONObject;
	arrjObj : TJSONArray;
	i, iRow, iPbxKey : Integer;
	AView: TcxGridBandedTableView;
begin
	SetDebugeWrite('Tfrm_PBX08.proc_6011');
	Try
		AView := cxGridInBound;
		if AJson = '[]' then exit;
		arrjObj := TJSONObject.ParseJSONValue(AJson) as TJSONArray;
		if not ANext then
		begin
			AView.DataController.SetRecordCount(0);
		end;

		AView.BeginUpdate;
		Try
			for i := 0 to arrjObj.Size - 1 do
			begin
				subObj := arrjObj.Get(i) as TJSONObject;
				iRow := AView.DataController.AppendRecord;
				AView.DataController.Values[iRow, 0] := iRow +1;
				AView.DataController.Values[iRow, 1] := subObj.Get('Q_exten').JsonValue.Value;                //o		ȣ�й� �׷�
				AView.DataController.Values[iRow, 2] := StrToCall(subObj.Get('Service_no').JsonValue.Value);  	   //o		��ǥ��ȣ
				AView.DataController.Values[iRow, 3] := StrToCall(subObj.Get('Dnis_no').JsonValue.Value); 				 //o		���Ź�ȣ
				AView.DataController.Values[iRow, 4] := subObj.Get('Buz_name').JsonValue.Value;    		 //o		���񽺸�

				if subObj.Get('Forward_yn').JsonValue.Value = 'Y' then
				begin
					AView.DataController.Values[iRow, 5] := True;
					AView.DataController.Values[iRow, 6] := False;
					AView.DataController.Values[iRow, 7] := False;
				end else
				if subObj.Get('Forward_yn').JsonValue.Value = 'A' then
				begin
					AView.DataController.Values[iRow, 5] := False;
					AView.DataController.Values[iRow, 6] := True;
					AView.DataController.Values[iRow, 7] := False;
				end else
				if subObj.Get('Forward_yn').JsonValue.Value = 'N' then
				begin
					AView.DataController.Values[iRow, 5] := False;
					AView.DataController.Values[iRow, 6] := False;
					AView.DataController.Values[iRow, 7] := True;
				end;
				AView.DataController.Values[iRow, 8] := subObj.Get('Tr_start').JsonValue.Value;     	 //		�������� / ������ ���� ���۽ð�
				AView.DataController.Values[iRow, 9] := subObj.Get('Tr_end').JsonValue.Value;   			 //		�������� / ������ ���� ����ð�

				if subObj.Get('Forward_yn1').JsonValue.Value = 'Y' then
					AView.DataController.Values[iRow,10] := True
				else 	
					AView.DataController.Values[iRow,10] := False;
				AView.DataController.Values[iRow,11] := StrToCall(subObj.Get('Forward_no1').JsonValue.Value);     //o		�������� / ������ ���� ��ȣ1 

				if subObj.Get('Forward_yn2').JsonValue.Value = 'Y' then
					AView.DataController.Values[iRow,12] := True
				else 	
					AView.DataController.Values[iRow,12] := False;
				AView.DataController.Values[iRow,13] := StrToCall(subObj.Get('Forward_no2').JsonValue.Value);     //o		�������� / ������ ���� ��ȣ2 

				if subObj.Get('Forward_yn3').JsonValue.Value = 'Y' then
					AView.DataController.Values[iRow,14] := True
				else 	
					AView.DataController.Values[iRow,14] := False;
				AView.DataController.Values[iRow,15] := StrToCall(subObj.Get('Forward_no3').JsonValue.Value);     //o		�������� / ������ ���� ��ȣ3 

				AView.DataController.Values[iRow,16] := subObj.Get('App_L').JsonValue.Value;     //o		�ۿ���
			end;

			AView.EndUpdate;

			if AView.DataController.RecordCount < 1 then
			begin
				GMessagebox('�˻��� ������ �����ϴ�.', CDMSI);
			end;
		except
			SetDebugeWrite('[proc_6011] Json arrjObj error');	
			AView.EndUpdate;
		End;
	except
  end;
end;

procedure Tfrm_PBX08.proc_Init;
begin
	btnEdit.Tag := 0;
	rdo_Option1.Checked := False;
	rdo_Option2.Checked := False;
	rdo_Option3.Checked := False;               
	rdo_Option4.Checked := False;
	rdo_Option5.Checked := False;
	chk_Option1.Checked := False;
	chk_Option2.Checked := False;
	chk_Option3.Checked := False;
	edt_Start.Text := '';
	edt_End.Text := '';
	lb_Notice1.Caption := '';
	lb_Notice2.Caption := '';
end;

procedure Tfrm_PBX08.proc_ResultMsg(AData, AResult: string);
begin
	if (AResult = '00') or (AResult = '90') then
	begin
		GMessagebox('����Ǿ����ϴ�.', CDMSI);
		frm_PBX.btn_3_1.click;
		proc_Init;
		btnCancel.click;
	end else
	begin
		GMessagebox(Format('���� �� �����߻�'#13#10'[�����ڵ�]%s', [ AResult]), CDMSI);
	end;
end;

procedure Tfrm_PBX08.rdo_Option1Click(Sender: TObject);
var i : integer;
	RadioBTN : TcxRadioButton;
begin
	SetDebugeWrite('Tfrm_PBX08.rdo_Option1Click');
	try
		RadioBTN := TcxRadioButton(Sender);

		case RadioBTN.Tag of
			0:  //��ü �������� ���
				begin  
					cxGridInBound.BeginUpdate;
					for I := 0 to cxGridInBound.DataController.RecordCount -1 do
					begin	
						cxGridInBound.DataController.Values[i, 5]	:= True;
						cxGridInBound.DataController.Values[i, 6]	:= False;
						cxGridInBound.DataController.Values[i, 7]	:= False;
					end;
					cxGridInBound.EndUpdate;
				end;
			1:  //��ü ���������� ���
				begin  
					cxGridInBound.BeginUpdate;
					for I := 0 to cxGridInBound.DataController.RecordCount -1 do
					begin	
						cxGridInBound.DataController.Values[i, 5]	:= False;
						cxGridInBound.DataController.Values[i, 6]	:= True;
						cxGridInBound.DataController.Values[i, 7]	:= False;
					end;
					cxGridInBound.EndUpdate;
				end;
			2:  //��ü �̻��
				begin  
					cxGridInBound.BeginUpdate;
					for I := 0 to cxGridInBound.DataController.RecordCount -1 do
					begin	
						cxGridInBound.DataController.Values[i, 5]	:= False;
						cxGridInBound.DataController.Values[i, 6]	:= False;
						cxGridInBound.DataController.Values[i, 7]	:= True;
					end;
					cxGridInBound.EndUpdate;
				end;
			3:  //�������Ÿ� ��ü�̻��
				begin  
					cxGridInBound.BeginUpdate;
					for I := 0 to cxGridInBound.DataController.RecordCount -1 do
					begin	
						if cxGridInBound.DataController.Values[i, 5] = True then
						begin
							cxGridInBound.DataController.Values[i, 5]	:= False;
							cxGridInBound.DataController.Values[i, 6]	:= False;
							cxGridInBound.DataController.Values[i, 7]	:= True;
						end;
					end;
					cxGridInBound.EndUpdate;
				end;
			4:  //���������Ÿ� ��ü�̻��
				begin  
					cxGridInBound.BeginUpdate;
					for I := 0 to cxGridInBound.DataController.RecordCount -1 do
					begin	
						if cxGridInBound.DataController.Values[i, 6] = True then
						begin
							cxGridInBound.DataController.Values[i, 5]	:= False;
							cxGridInBound.DataController.Values[i, 6]	:= False;
							cxGridInBound.DataController.Values[i, 7]	:= True;
						end;
					end;
					cxGridInBound.EndUpdate;
				end;
		end;
	except
	end;
end;

procedure Tfrm_PBX08.tmr_ProcessTimer(Sender: TObject);
var sStr : string;
begin
	SetDebugeWrite('Tfrm_PBX08.tmr_ProcessTimer');
	try
		tmr_Process.Enabled := False;	
		gQExten := '';
		if gCnt > gl_6030Str.Count-1 then
		begin
			btn_Run.Tag := 0;
			btn_3_1.click;
			frm_PBX.btn_3_1.click;
			lb_Notice1.caption := '���ż����� �Ϸ�Ǿ����ϴ�.';
			exit;
		end;
		
		Application.ProcessMessages;
		cxProgressBar1.Position := gCnt;
		gQExten := cxGridInBound.DataController.Values[gCnt, 1];
		sStr := fSI_6020_30_Send('6030', gl_6030Str[gCnt]);

		inc(gCnt);
	except
	end;
end;

end.

unit xe_AIC12;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2010Blue,
  Vcl.Menus, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxCheckBox, cxLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.ExtCtrls, cxGridLevel,
	cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, MSXML2_TLB,
  cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxMemo, cxSpinEdit,
  Vcl.ComCtrls, cxTimeEdit, dxSkinOffice2010Silver, dxSkinSharp, dxDateRanges, cxGroupBox, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  Tfrm_AIC12 = class(TForm)
    pnl_Main: TPanel;
    Panel1: TPanel;
    pnl_Title: TPanel;
    cxLblActive: TLabel;
    lb_AIListName: TcxLabel;
    BtnClose: TcxButton;
    pnl_Set: TPanel;
    pnl_Set2: TPanel;
    pnl_AiMent: TPanel;
    Panel2: TPanel;
    meo_AIMent: TcxMemo;
    btn_BrNm: TcxButton;
    btn_Charge: TcxButton;
    btn_NewCharge: TcxButton;
    btn_DestDong: TcxButton;
    btn_ChangeMent: TcxButton;
    cxLabel17: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel24: TcxLabel;
    Panel3: TPanel;
    cxGrid1: TcxGrid;
    cxGridAIMentList: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridAIMentListColumn1: TcxGridDBColumn;
    cxGridAIMentListColumn2: TcxGridDBColumn;
    cxGridAIMentListColumn3: TcxGridDBColumn;
    cxGridAIMentListColumn4: TcxGridDBColumn;
    cxGridAIMentListColumn5: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    btn_Up: TcxButton;
    btn_Down: TcxButton;
    cxLabel15: TcxLabel;
    pnl_Set1: TPanel;
    Shape7: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape1: TShape;
    cxLabel7: TcxLabel;
    cb_Gubun: TcxComboBox;
    cb_KeyNumber: TcxComboBox;
    cxLabel3: TcxLabel;
    cb_Scenario: TcxComboBox;
    btn_Save: TcxButton;
    lb_Use: TcxLabel;
    cb_Use: TcxComboBox;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel11: TcxLabel;
    edt_FailReConnectCnt: TcxTextEdit;
    cxLabel13: TcxLabel;
    cxLabel12: TcxLabel;
    edt_FailReConnectTime: TcxTextEdit;
    cxLabel10: TcxLabel;
    Panel5: TPanel;
    Shape2: TShape;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Shape5: TShape;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel6: TcxLabel;
    chk_Mon: TcxCheckBox;
    chk_Tue: TcxCheckBox;
    chk_Wed: TcxCheckBox;
    chk_Thu: TcxCheckBox;
    chk_Fri: TcxCheckBox;
    chk_Sat: TcxCheckBox;
    chk_Sun: TcxCheckBox;
    chk_Holy: TcxCheckBox;
    cxLabel2: TcxLabel;
    cxGridAIMentListColumn6: TcxGridDBColumn;
    cxGridAIMentListColumn7: TcxGridDBColumn;
    dt_STime: TcxTimeEdit;
    dt_ETime: TcxTimeEdit;
    cxGroupBox1: TcxGroupBox;
    Shape11: TShape;
    lb_Scenario_Detail: TcxLabel;
    Shape12: TShape;
    procedure cxGridAIMentListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure edt_PassTimeKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnl_TitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BtnCloseClick(Sender: TObject);
		procedure cb_GubunPropertiesChange(Sender: TObject);
		procedure cb_ScenarioPropertiesChange(Sender: TObject);
		procedure btn_UpClick(Sender: TObject);
		procedure cxGridAIMentListCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure btn_BrNmClick(Sender: TObject);
    procedure btn_ChangeMentClick(Sender: TObject);
		procedure btn_SaveClick(Sender: TObject);
    procedure cb_KeyNumberPropertiesChange(Sender: TObject);
    procedure edt_PassCntKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
		procedure edt_AddCashKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_FailReConnectTimeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_FailReConnectCntKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
	private
		{ Private declarations }
		gClickRow : integer;
		function func_SetScenarioHead(AGubun, AScenario : string):Boolean;  //���������� ���� ���
		function func_SetScenarioBody(AGubun, AScenario : string):Boolean;  //���������� ���� ���
		procedure MemoText(AValue: string);

	public
		{ Public declarations }
		giType : Integer; //0:����, 1:��ǥ��ȣ
		gScenario, gSaveGubun : string;
		procedure proc_Init;
		procedure proc_ScenarioList(AGubun, AKeyNumber, AScenario : string); //���� �ó����� ��ȸ
	end;

var
  frm_AIC12: Tfrm_AIC12;

implementation

{$R *.dfm}

uses xe_AIC01, xe_gnl, xe_Lib, xe_packet, xe_Func, xe_Msg, xe_Xml , xe_AIC11;

procedure Tfrm_AIC12.BtnCloseClick(Sender: TObject);
begin
	hide;
end;

procedure Tfrm_AIC12.btn_UpClick(Sender: TObject);
var iSelfRow, iSomeoneRow, iTag : integer;
	sSelf_1, sSelf_2, sSelf_3, sSelf_4, sSelf_5, sSelf_6, sSelf_7, sSelf_8, sSelf_9 : string; 
	sSone_1, sSone_2, sSone_3, sSone_4, sSone_5, sSone_6, sSone_7, sSone_8, sSone_9 : string; 
begin
	//tag : 51(Up-list), 52(Down-list)
	iTag := TcxButton(Sender).Tag;
	if gClickRow = -1 then exit;
	if gClickRow = 0 then exit;      //���ۺ���Ұ�
	if gClickRow = cxGridAIMentList.DataController.RecordCount-1 then exit;   //���ắ��Ұ�
	
	iSelfRow := gClickRow;

	if iTag = 51 then 
	begin
		if iSelfRow = 0 then exit;
		iSomeoneRow := gClickRow - 1;
		if iSomeoneRow = 0 then exit;      //���ۺ���Ұ�
	end else 
	if iTag = 52 then 
	begin
		if iSelfRow = cxGridAIMentList.DataController.RecordCount-1 then exit;
		iSomeoneRow := gClickRow + 1; 
		if iSomeoneRow = cxGridAIMentList.DataController.RecordCount-1 then exit;   //���ắ��Ұ�
	end;
	

	sSelf_1 :=  cxGridAIMentList.DataController.Values[iSomeoneRow, 0];     //����(�ڵ�) ����ڵ尪���� �Է�
	sSelf_2 :=  cxGridAIMentList.DataController.Values[iSelfRow, 1];        //�ܰ��
	sSelf_3 :=  cxGridAIMentList.DataController.Values[iSelfRow, 2];        // �ȳ��޼���
	sSelf_4 :=  cxGridAIMentList.DataController.Values[iSelfRow, 3];        //�亯�޼���
	sSelf_5 :=  cxGridAIMentList.DataController.Values[iSelfRow, 4];        // �ó������ڵ�
	sSelf_6 :=  cxGridAIMentList.DataController.Values[iSelfRow, 5];        //step
	sSelf_7 :=  cxGridAIMentList.DataController.Values[iSelfRow, 6];        //��뿩��
	sSelf_8 :=  cxGridAIMentList.DataController.Values[iSelfRow, 7];        //�����ڵ�
	sSelf_9 :=  cxGridAIMentList.DataController.Values[iSelfRow, 8];        //��ǥ��ȣ. ������ ������ü

	sSone_1 :=  cxGridAIMentList.DataController.Values[iSelfRow, 0];        //����(�ڵ�) 
	sSone_2 :=  cxGridAIMentList.DataController.Values[iSomeoneRow, 1];     //�ܰ��
	sSone_3 :=  cxGridAIMentList.DataController.Values[iSomeoneRow, 2];     // �ȳ��޼���
	sSone_4 :=  cxGridAIMentList.DataController.Values[iSomeoneRow, 3];     //�亯�޼���
	sSone_5 :=  cxGridAIMentList.DataController.Values[iSomeoneRow, 4];     // �ó������ڵ�
	sSone_6 :=  cxGridAIMentList.DataController.Values[iSomeoneRow, 5];     //step
	sSone_7 :=  cxGridAIMentList.DataController.Values[iSomeoneRow, 6];     //��뿩��
	sSone_8 :=  cxGridAIMentList.DataController.Values[iSomeoneRow, 7];     //�����ڵ�
	sSone_9 :=  cxGridAIMentList.DataController.Values[iSomeoneRow, 8];     //��ǥ��ȣ. ������ ������ü

	cxGridAIMentList.BeginUpdate();
	cxGridAIMentList.DataController.Values[iSomeoneRow, 0] := sSelf_1;
	cxGridAIMentList.DataController.Values[iSomeoneRow, 1] := sSelf_2;
	cxGridAIMentList.DataController.Values[iSomeoneRow, 2] := sSelf_3;
	cxGridAIMentList.DataController.Values[iSomeoneRow, 3] := sSelf_4;
	cxGridAIMentList.DataController.Values[iSomeoneRow, 4] := sSelf_5;
	cxGridAIMentList.DataController.Values[iSomeoneRow, 5] := sSelf_6;
	cxGridAIMentList.DataController.Values[iSomeoneRow, 6] := sSelf_7;
	cxGridAIMentList.DataController.Values[iSomeoneRow, 7] := sSelf_8;
	cxGridAIMentList.DataController.Values[iSomeoneRow, 8] := sSelf_9;

	cxGridAIMentList.DataController.Values[iSelfRow, 0] := sSone_1;
	cxGridAIMentList.DataController.Values[iSelfRow, 1] := sSone_2;
	cxGridAIMentList.DataController.Values[iSelfRow, 2] := sSone_3;
	cxGridAIMentList.DataController.Values[iSelfRow, 3] := sSone_4;
	cxGridAIMentList.DataController.Values[iSelfRow, 4] := sSone_5;
	cxGridAIMentList.DataController.Values[iSelfRow, 5] := sSone_6;
	cxGridAIMentList.DataController.Values[iSelfRow, 6] := sSone_7;
	cxGridAIMentList.DataController.Values[iSelfRow, 7] := sSone_8;
	cxGridAIMentList.DataController.Values[iSelfRow, 8] := sSone_9;

	cxGridAIMentList.EndUpdate();

	Application.ProcessMessages;
	
	cxGridAIMentList.ViewData.Records[iSelfRow].Selected := False;
	if iTag = 51 then 
	begin
		gClickRow := iSelfRow -1;
	end else 
	if iTag = 52 then 
	begin
		gClickRow := iSelfRow +1;
	end;
//	cxGridAIMentList.Controller.FocusedRowIndex := gClickRow;
	cxGridAIMentList.ViewData.Records[gClickRow].Selected := True;
	cxGrid1.setfocus;           
end;

procedure Tfrm_AIC12.cb_GubunPropertiesChange(Sender: TObject);
begin
	if 	cb_Gubun.ItemIndex = 0 then cb_KeyNumber.Enabled := False 
	else  
	begin
		cb_KeyNumber.Enabled := True;
		cb_KeyNumber.ItemIndex := 0;
	end;
end;

procedure Tfrm_AIC12.cb_KeyNumberPropertiesChange(Sender: TObject);
var i, iCol : integer;
	sTmp :  string;
begin
	if cb_KeyNumber.Tag = 99 then exit;

	if cb_Gubun.ItemIndex = 1 then //�ű� ��ǥ��ȣ�� �����̶�� �����Ͽ�
	begin
		iCol := cxGridAIMentList.GetColumnByFieldName('��ǥ��ȣ').Index;

		cxGridAIMentList.BeginUpdate;
		for i := 0 to cxGridAIMentList.DataController.RecordCount - 1 do
		begin
			sTmp := CallToStr(cb_KeyNumber.Text); 
			cxGridAIMentList.DataController.Values[i, iCol] := sTmp;
		end;
		cxGridAIMentList.EndUpdate;
	end;
end;

procedure Tfrm_AIC12.cb_ScenarioPropertiesChange(Sender: TObject);
begin
	if cb_Scenario.Tag = 99 then exit;

	gScenario := frm_AIC11.gFScenarioNo[cb_Scenario.ItemIndex];
	proc_ScenarioList('Insert', '', gScenario);
end;

procedure Tfrm_AIC12.btn_BrNmClick(Sender: TObject);
begin
	MemoText(Format('%%%s%%', [TcxButton(Sender).Hint]));
end;

procedure Tfrm_AIC12.btn_ChangeMentClick(Sender: TObject);
var iInfoMent, iAnswerMEnt, iSmsMent : integer;
begin
	iInfoMent := cxGridAIMentList.GetColumnByFieldName('�ȳ��޼���').Index;
	iAnswerMent := cxGridAIMentList.GetColumnByFieldName('�亯�޼���').Index;
	iSmsMent := cxGridAIMentList.GetColumnByFieldName('SMS�޼���').Index;
	cxGridAIMentList.BeginUpdate;
	if meo_AIMent.Hint = 'AnswerMent' then
	begin
		cxGridAIMentList.DataController.Values[gClickRow, iAnswerMent] := meo_AIMent.Text;
	end else
	if meo_AIMent.Hint = 'InfoMent' then
	begin
		cxGridAIMentList.DataController.Values[gClickRow, iInfoMent] := meo_AIMent.Text;
	end else
	if meo_AIMent.Hint = 'SmsMent' then
	begin
		cxGridAIMentList.DataController.Values[gClickRow, iSmsMent] := meo_AIMent.Text;
	end;
	cxGridAIMentList.EndUpdate;
	meo_AIMent.clear;
end;

procedure Tfrm_AIC12.btn_SaveClick(Sender: TObject);
var iCol, iRow : Integer;
	sTmp : string;
	bTmp : Boolean;
begin
	Try
		if gScenario = '' then
		begin
			GMessagebox('���õ� �ó������� �����ϴ�.', CDMSI);
			Exit;
		end;
		if strToTime(dt_STime.Text) < strToTime('10:00') then
		begin
			GMessagebox('�ݽ��۽ð��� ���� 10�� ���ĺ��� �����մϴ�.', CDMSI);
			dt_STime.Text := '10:00';
			dt_STime.SetFocus;
			Exit;
		end;
		if strToTime(dt_ETime.Text) > strToTime('18:00') then
		begin
			GMessagebox('������ð��� ���� 6�� �������� �����մϴ�.', CDMSI);
			dt_ETime.Text := '18:00';
			dt_ETime.SetFocus;
			Exit;
		end;
		if Trim(edt_FailReConnectTime.text) = '' then
		begin
			GMessagebox('�����翬��ð�(��)�� �Է��Ͽ� �ֽʽÿ�', CDMSI);
			edt_FailReConnectTime.SetFocus;
			Exit;
		end;
		if Trim(edt_FailReConnectCnt.text) = '' then
		begin
			GMessagebox('�����翬��Ƚ���� �Է��Ͽ� �ֽʽÿ�', CDMSI);
			edt_FailReConnectCnt.SetFocus;
			Exit;
		end;
		if Length(edt_FailReConnectCnt.Text) > 2 then
		begin
			GMessagebox('�����翬��Ƚ���� 2�ڸ����� �Է°����մϴ�.', CDMSI);
			edt_FailReConnectCnt.SetFocus;
			Exit;
		end;

		bTmp := False;
		iCol := cxGridAIMentList.GetColumnByFieldName('step').Index;
		for iRow := 0 to cxGridAIMentList.DataController.RecordCount -1 do
		begin
			sTmp := cxGridAIMentList.DataController.Values[iRow, iCol] ;
			if sTmp = 'PRICEUP_YN' then 
			begin
				bTmp := True;
				Break;
			end;
		end;

{		if (cb_Use.ItemIndex = 0) and (edt_AddCash.Value < 1000) and (bTmp) then
		begin
			GMessagebox('�ó������� ����λ�ܰ谡 ������ �߰������ õ���̻� �Է��ϼ���', CDMSI);
			edt_AddCash.SetFocus;
			Exit;
		end;}

		if func_SetScenarioHead('', gScenario) then
		begin
			if func_SetScenarioBody('', gScenario) then
			begin
				GMessagebox('������ �ó������� ����Ǿ����ϴ�.', CDMSI);
				BtnClose.click;

				frm_AIC11.btnSearchA1.Click;

			end;
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_AIC12.cxGridAIMentListCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
	gClickRow := cxGridAIMentList.DataController.FocusedRecordIndex; //������ �� ��ġ
end;

procedure Tfrm_AIC12.cxGridAIMentListCellDblClick(
	Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
	AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var iCol, iCol2, iTmp, iRow, iInfoMent, iAnswerMEnt, iSmsMent : integer;
begin
	iRow := cxGridAIMentList.DataController.FocusedRecordIndex;
	iCol := cxGridAIMentList.GetColumnByFieldName('��뿩��').Index;
	iCol2:= cxGridAIMentList.GetColumnByFieldName('SMS���ۿ���').Index;
	iInfoMent := cxGridAIMentList.GetColumnByFieldName('�ȳ��޼���').Index;
	iAnswerMent := cxGridAIMentList.GetColumnByFieldName('�亯�޼���').Index;
	iSmsMent := cxGridAIMentList.GetColumnByFieldName('SMS�޼���').Index;
	 
	iTmp := ACellViewInfo.Item.FocusedCellViewInfo.Item.Index;
	if iTmp <> iCol then
	begin

		if iTmp = iInfoMent then
		begin
			meo_AIMent.Text := cxGridAIMentList.DataController.Values[iRow, iInfoMent] ;
			meo_AIMent.Hint := 'InfoMent';
		end else
		if iTmp = iAnswerMEnt then
		begin
			meo_AIMent.Text := cxGridAIMentList.DataController.Values[iRow, iAnswerMEnt] ;
			meo_AIMent.Hint := 'AnswerMent';
		end else
		if iTmp = iSmsMent then
		begin
			meo_AIMent.Text := cxGridAIMentList.DataController.Values[iRow, iSmsMent] ;
			meo_AIMent.Hint := 'SmsMent';
		end;
		
	end else
	if iTmp = iCol then
	begin
		if cxGridAIMentList.DataController.Values[iRow, iCol] = '���' then
			cxGridAIMentList.DataController.Values[iRow, iCol] := '�̻��' else
			cxGridAIMentList.DataController.Values[iRow, iCol] := '���'
	end;
	if iTmp = iCol2 then
	begin
		if cxGridAIMentList.DataController.Values[iRow, iCol2] = '���' then
			cxGridAIMentList.DataController.Values[iRow, iCol2] := '�̻��' else
			cxGridAIMentList.DataController.Values[iRow, iCol2] := '���'
	end;
end;

procedure Tfrm_AIC12.edt_AddCashKeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if key = vk_Return then edt_FailReConnectTime.SetFocus;
end;

procedure Tfrm_AIC12.edt_FailReConnectCntKeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if key = vk_Return then cb_Use.SetFocus;
end;

procedure Tfrm_AIC12.edt_FailReConnectTimeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then edt_FailReConnectCnt.SetFocus;
end;

procedure Tfrm_AIC12.edt_PassCntKeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if key = vk_Return then chk_Mon.SetFocus;
end;

procedure Tfrm_AIC12.edt_PassTimeKeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else
		key := #0;
end;

procedure Tfrm_AIC12.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure Tfrm_AIC12.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Action := caFree;
end;

procedure Tfrm_AIC12.FormCreate(Sender: TObject);
var
	Save: Integer;
	i : integer;
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

	cxGridAIMentList.DataController.SetRecordCount(0);
	for i := 0 to cxGridAIMentList.ColumnCount - 1 do
		cxGridAIMentList.Columns[i].DataBinding.ValueType := 'String';
	cxGridAIMentList.Columns[0].DataBinding.ValueType := 'Integer';
	
end;

procedure Tfrm_AIC12.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure Tfrm_AIC12.FormDestroy(Sender: TObject);
begin
	frm_AIC12 := Nil;
end;

procedure Tfrm_AIC12.FormShow(Sender: TObject);
begin
  fSetFont(Frm_AIC12, GS_FONTNAME);
end;

procedure Tfrm_AIC12.MemoText(AValue: string);
var
  s, s1 : widestring;
begin
	if meo_AIMent.SelStart > 0 then
	begin
		s := meo_AIMent.Text;
		s := Copy(s, 1, meo_AIMent.SelStart);
		s1 := StringReplace(meo_AIMent.Text, s, '', [rfReplaceAll]);
		meo_AIMent.Text := s + AValue + s1;
	end else   // �� �� ��
	begin
		meo_AIMent.Text := AValue + meo_AIMent.Text;
	end;

	meo_AIMent.SelStart := length(meo_AIMent.Text);
	meo_AIMent.SetFocus;
end;

procedure Tfrm_AIC12.pnl_TitleMouseDown(Sender: TObject; Button: TMouseButton;
	Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_AIC12.proc_Init;
begin
	gSaveGubun := ''; //i insert u update
	giType := -1;
	self.Tag := -1;
	Self.Hint := '';
	cb_Gubun.Enabled := True;
	cb_Gubun.ItemIndex := 0;
	cb_KeyNumber.ItemIndex := 0;
	cb_KeyNumber.Enabled := False;
	cb_Scenario.ItemIndex := 0;
	cb_Scenario.Hint := '';
	dt_STime.Text := '10:00';
	dt_ETime.Text := '18:00';
	edt_FailReConnectTime.Text := '';
	edt_FailReConnectCnt.Text := '';
	meo_AIMent.Clear;
	meo_AIMent.Hint := '';
	cxGridAIMentList.DataController.SetRecordCount(0);
	chk_Mon.Checked := False;
	chk_Tue.Checked := False;
	chk_Wed.Checked := False;
	chk_Thu.Checked := False;
	chk_Fri.Checked := False;
	chk_Sat.Checked := False;
	chk_Sun.Checked := False;
	chk_Holy.Checked := False;
end;

procedure Tfrm_AIC12.proc_ScenarioList(AGubun, AKeyNumber, AScenario : string);
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
begin

	if AGubun = 'Insert' then
	begin
		Param := AScenario;

		if not RequestBase(GetSel06('GET_BD_LIST', 'AI_OB_MNG.GET_BASIC_SCN_LIST', '10', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('������ �⺻�ó����� ��ȸ ����'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Exit;
		end;
	end else
	if AGubun = 'Update' then
	begin
		Param := Self.Hint + '��' + AKeyNumber + '��' + AScenario;

		if not RequestBase(GetSel06('GET_BD_LIST', 'AI_OB_MNG.GET_SCN_LIST', '10', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('������ �⺻�ó����� ��ȸ ����'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Exit;
		end;
	end;

	xdom := ComsDomDocument.Create;
	try
		try
			if not xdom.loadXML(XmlData) then Exit;

			cxGridAIMentList.DataController.SetRecordCount(0);
			ls_MSG_Err := GetXmlErrorCode(XmlData);
			if ('0000' = ls_MSG_Err) then
			begin
				if (0 < GetXmlRecordCount(XmlData)) then
				begin
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					cxGridAIMentList.BeginUpdate;
					ls_Rcrd := TStringList.Create;
					try
						for i := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx2('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							Application.ProcessMessages;
							//�ó������ڵ� �� STEP �� STEP�� �� SEQ �� �ȳ��޽��� �� �亯�޽���
							//�����ڵ� �� ��ǥ��ȣ �� �ó������ڵ� �� STEP �� STEP�� �� SEQ �� �������(y/n) ���ȳ��޽��� �� �亯�޽���
							iRow := cxGridAIMentList.DataController.AppendRecord; // 1 Record �߰�


							if AGubun = 'Insert' then
							begin
								cxGridAIMentList.DataController.Values[iRow, 0] := ls_Rcrd[3];     //����
								cxGridAIMentList.DataController.Values[iRow, 1] := ls_Rcrd[2];     //�ܰ�
								cxGridAIMentList.DataController.Values[iRow, 2] := ls_Rcrd[4];     //AI �ȳ��޼���
								cxGridAIMentList.DataController.Values[iRow, 3] := ls_Rcrd[5];	   //AI �亯�޼���
								cxGridAIMentList.DataController.Values[iRow, 4] := ls_Rcrd[0];     //�ó������ڵ�
								cxGridAIMentList.DataController.Values[iRow, 5] := ls_Rcrd[1];     //step
								cxGridAIMentList.DataController.Values[iRow, 6] := '';     //SMS�޼���
								cxGridAIMentList.DataController.Values[iRow, 7] := '�̻��';     //SMS���ۿ���
								cxGridAIMentList.DataController.Values[iRow, 8] := '���';         //��뿩��
								cxGridAIMentList.DataController.Values[iRow, 9] := self.Hint;      //�����ڵ�
								if Cb_Gubun.ItemIndex = 0 then                                     //��ǥ��ȣ
									cxGridAIMentList.DataController.Values[iRow, 10] := '' else
									cxGridAIMentList.DataController.Values[iRow, 10] := cb_KeyNumber.text;
							end else
							if AGubun = 'Update' then
							begin
								cxGridAIMentList.DataController.Values[iRow, 0] := ls_Rcrd[5];     //����
								cxGridAIMentList.DataController.Values[iRow, 1] := ls_Rcrd[4];     //�ܰ�
								cxGridAIMentList.DataController.Values[iRow, 2] := ls_Rcrd[7];     //AI �ȳ��޼���
								cxGridAIMentList.DataController.Values[iRow, 3] := ls_Rcrd[8];	   //AI �亯�޼���
								cxGridAIMentList.DataController.Values[iRow, 4] := ls_Rcrd[2];     //�ó������ڵ�
								cxGridAIMentList.DataController.Values[iRow, 5] := ls_Rcrd[3];     //step
								cxGridAIMentList.DataController.Values[iRow, 6] := ls_Rcrd[9];     //SMS�޼���
								if ls_Rcrd[10] = 'y' then
									cxGridAIMentList.DataController.Values[iRow, 7] := '���' else   //SMS���ۿ���
									cxGridAIMentList.DataController.Values[iRow, 7] := '�̻��';    
								if ls_Rcrd[6] = 'y' then
									cxGridAIMentList.DataController.Values[iRow, 8] := '���' else   //��뿩��
									cxGridAIMentList.DataController.Values[iRow, 8] := '�̻��';    
								cxGridAIMentList.DataController.Values[iRow, 9] := ls_Rcrd[0];      //�����ڵ�
								if ls_Rcrd[1] = '00000000' then 
									cxGridAIMentList.DataController.Values[iRow, 10] := '' else
									cxGridAIMentList.DataController.Values[iRow, 10] := ls_Rcrd[1];	
							end;
						end;
					finally
            ls_Rcrd.Free;
          end;
					cxGridAIMentList.EndUpdate;
				end;
			end;
		finally
			xdom := Nil;
    end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

function Tfrm_AIC12.func_SetScenarioBody(AGubun, AScenario: string):Boolean;
var
	XmlData, Param, ErrMsg, sKeyNumber : string;
	ErrCode, iRow : Integer;
begin
	result := False;
	try
		if cxGridAIMentList.DataController.RecordCount < 1 then exit;
		//�����ڵ�^��ǥ��ȣ^�ó������ڵ�^����^����^�������^�ȳ��޽���^�亯�޽���

		sKeyNumber := '';

		Param := '';
		for iRow := 0 to cxGridAIMentList.DataController.RecordCount -1 do
		begin
			if iRow = 0 then
				Param := cxGridAIMentList.DataController.Values[iRow, 9]                //�����ڵ�
			else 
				Param := Param + '��' + cxGridAIMentList.DataController.Values[iRow, 9];                //�����ڵ�
			Param := Param + '^' + cxGridAIMentList.DataController.Values[iRow,10];  //��ǥ��ȣ
			Param := Param + '^' + cxGridAIMentList.DataController.Values[iRow, 4];  //�ó������ڵ�
			Param := Param + '^' + cxGridAIMentList.DataController.Values[iRow, 5];  //����
			Param := Param + '^' + IntToStr(cxGridAIMentList.DataController.Values[iRow, 0]);  //����
			if cxGridAIMentList.DataController.Values[iRow, 8] = '���' then
				Param := Param + '^' + 'y' else Param := Param + '^' + 'n';  //�������
			Param := Param + '^' + cxGridAIMentList.DataController.Values[iRow, 2];  //�ȳ��޽���
			Param := Param + '^' + cxGridAIMentList.DataController.Values[iRow, 3];  //�亯�޽���
			Param := Param + '^' + cxGridAIMentList.DataController.Values[iRow, 6];  //SMS�޼���
			if cxGridAIMentList.DataController.Values[iRow, 7] = '���' then
				Param := Param + '^' + 'y' else Param := Param + '^' + 'n';  //SMS���ۿ���
			
			
		end;

		btn_Save.Enabled := False;
		if not RequestBase(GetCallable06('SET_BD_SAVE', 'AI_OB_MNG.SET_SCN_SAVE', param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('������ �ó����� ��� ����'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			btn_Save.Enabled := True;
			Exit;
		end;
		btn_Save.Enabled := True;
		result := True;

	except
    on E: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

function Tfrm_AIC12.func_SetScenarioHead(AGubun, AScenario: string):Boolean;
var
	XmlData, Param, ErrMsg, sTmp : string;
	ErrCode : Integer;
begin
	result := False;
	try
		// �����ڵ妢��ǥ��ȣ���ó�������ȣ���������(y/n)�� �ݽ��۽ð� �� ������ð� �������翬��ð�(��)��
		// �����翬��Ƚ�����ݿ�û���Ϧ� ������������(y/n)������(i.�߰�/u.����)

		Param := self.Hint;             //�����ڵ�

		if cb_Gubun.ItemIndex = 0 then  //��ǥ��ȣ
			Param := Param + '��' + '' else Param := Param + '��' + CallToStr(cb_KeyNumber.text);
		Param := Param + '��' + Trim(AScenario);  //�ó�������ȣ
		if cb_Use.ItemIndex = 0 then Param := Param + '��' + 'y' else Param := Param + '��' + 'n'; //�������(y/n)
		sTmp := StringReplace(dt_STime.text,':','',[rfReplaceAll]);
		Param := Param + '��' + Trim(sTmp);  //�ݽ��۽ð�
		sTmp := StringReplace(dt_ETime.text,':','',[rfReplaceAll]);
		Param := Param + '��' + Trim(sTmp);  //������ð�
		Param := Param + '��' + Trim(edt_FailReConnectTime.text);  //�����翬��ð�(��)
		Param := Param + '��' + Trim(edt_FailReConnectCnt.text);  //�����翬��Ƚ��
		sTmp := '';
		if chk_Mon.Checked then sTmp := '��';
		if chk_Tue.Checked then if sTmp = '' then sTmp := 'ȭ' else sTmp := sTmp + ',ȭ';
		if chk_Wed.Checked then if sTmp = '' then sTmp := '��' else sTmp := sTmp + ',��';
		if chk_Thu.Checked then if sTmp = '' then sTmp := '��' else sTmp := sTmp + ',��';
		if chk_Fri.Checked then if sTmp = '' then sTmp := '��' else sTmp := sTmp + ',��';
		if chk_Sat.Checked then if sTmp = '' then sTmp := '��' else sTmp := sTmp + ',��';
		if chk_Sun.Checked then if sTmp = '' then sTmp := '��' else sTmp := sTmp + ',��';
		Param := Param + '��' + Trim(sTmp);  //�ݿ�û����
		if chk_Holy.Checked then sTmp := 'y' else sTmp := 'n';
		Param := Param + '��' + Trim(sTmp);  //������������
		Param := Param + '��' + gSaveGubun;  //���忩��(i : insert, u: update)

		btn_Save.Enabled := False;
		if not RequestBase(GetCallable06('SET_HC_SAVE', 'AI_OB_MNG.SET_HC_SAVE', param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('������ ���� ��� ����'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			btn_Save.Enabled := True;
			Exit;
		end;
		btn_Save.Enabled := True;
		result := True;

	except
    on E: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

end.

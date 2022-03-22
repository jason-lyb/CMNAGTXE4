unit xe_BTN03;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, MSXML2_TLB,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, cxControls,
  cxContainer, cxEdit, dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxLabel, cxImageComboBox, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView,
  cxGrid, cxPC, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, cxRadioGroup, Vcl.ExtCtrls, cxGroupBox, cxButtons, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxDropDownEdit, cxCalendar, cxCheckBox,
  dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  Tfrm_BTN03 = class(TForm)
    PnlMain: TPanel;
    pnlTitle: TPanel;
		cxLblActive: TLabel;
    btnClose: TcxButton;
    lbWkID: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    cxGridWkConnect: TcxGrid;
    cxCallBellWkCashList: TcxGridDBTableView;
    cxCallBellWkCashListColumn1: TcxGridDBColumn;
    cxCallBellWkCashListColumn2: TcxGridDBColumn;
    cxCallBellWkCashListColumn3: TcxGridDBColumn;
    cxCallBellWkCashListColumn4: TcxGridDBColumn;
    cxCallBellWkCashListColumn5: TcxGridDBColumn;
    cxCallBellWkCashListColumn6: TcxGridDBColumn;
    cxCallBellWkCashListColumn7: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    Shape8: TShape;
    Shape1: TShape;
    Shape2: TShape;
    cxButton2: TcxButton;
    cxGroupBox3: TcxGroupBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxLabel7: TcxLabel;
    ed_Cash: TcxCurrencyEdit;
    ed_ChargeCash: TcxSpinEdit;
    ed_memo: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    Panel3: TPanel;
    Shape3: TShape;
    btnRunXls: TcxButton;
    chk_before: TcxCheckBox;
    BtnSearch: TcxButton;
    cxLabel10: TcxLabel;
    de_edDate: TcxDateEdit;
    de_stDate: TcxDateEdit;
    RbButton1: TcxButton;
    cxLabel2: TcxLabel;
    cbStatesView: TcxComboBox;
    pop_date: TPopupMenu;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N11: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
		procedure FormClose(Sender: TObject; var Action: TCloseAction);
		procedure cxButton2Click(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnCloseClick(Sender: TObject);
		procedure btnRunXlsClick(Sender: TObject);
		procedure chk_beforeClick(Sender: TObject);
		procedure MenuItem6Click(Sender: TObject);
		procedure MenuItem7Click(Sender: TObject);
		procedure N6Click(Sender: TObject);
		procedure N7Click(Sender: TObject);
		procedure N11Click(Sender: TObject);
		procedure cxRadioButton1Click(Sender: TObject);
		procedure RbButton1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ed_memoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
	private
		{ Private declarations }
		procedure proc_SetCallBellWKMile;
		procedure proc_CallBellWKMileList;
		function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
	public
		{ Public declarations }
		procedure proc_Init;
		function Func_CallBellWKInfo(AWkID : string):boolean;
	end;

var
  frm_BTN03: Tfrm_BTN03;

implementation

{$R *.dfm}

uses xe_GNL, xe_GNL2, xe_Func, xe_Msg, xe_packet, xe_Xml, xe_Dm, xe_Lib, Main;

procedure Tfrm_BTN03.chk_beforeClick(Sender: TObject);
begin
  de_stDate.Enabled := chk_before.Checked;
  de_edDate.Enabled := chk_before.Checked;
	RbButton1.Enabled := chk_before.Checked;
	if not chk_before.Checked then
		MenuItem6.Click;
end;

procedure Tfrm_BTN03.cxButton2Click(Sender: TObject);
begin
	proc_SetCallBellWKMile;
end;

procedure Tfrm_BTN03.cxRadioButton1Click(Sender: TObject);
begin
	if cxRadioButton1.checked then cxButton2.caption := '�����ϱ�' else
	if cxRadioButton2.checked then cxButton2.caption := '�����ϱ�';
end;

procedure Tfrm_BTN03.ed_memoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure Tfrm_BTN03.btnCloseClick(Sender: TObject);
begin
	close;
end;

procedure Tfrm_BTN03.btnRunXlsClick(Sender: TObject);
begin
	if cxCallBellWkCashList.DataController.RecordCount = 0 then
  begin
    GMessagebox('�ڷᰡ �����ϴ�.', CDMSE);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.', CDMSE);
    Exit;
  end;

	if (TCK_USER_PER.WOR_ExcelDown <> '1') then
	begin
    ShowMessage('[�����ٿ�ε�[���޴�]] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
    Exit;
  end;

	Frm_Main.sgExcel := '�ݺ�����������ϸ�����Ȳ.xls';
	Frm_Main.sgRpExcel := Format('�ݺ�>�ݺ�����������ϸ���]%s��', [GetMoneyStr(cxCallBellWkCashList.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := cxGridWkConnect;
	Frm_Main.cxGridDBViewExcel := cxCallBellWkCashList;
  Frm_Main.proc_excel(0);
end;

procedure Tfrm_BTN03.BtnSearchClick(Sender: TObject);
begin
	proc_CallBellWKMileList;
end;

procedure Tfrm_BTN03.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
	cxLblActive.Visible := True;
end;

procedure Tfrm_BTN03.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Action := caFree;
end;

procedure Tfrm_BTN03.FormCreate(Sender: TObject);
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
				SetWindowLong(Handle, gwl_Style, Save and (not (ws_Caption)) or ws_border);
		end;
    Height := Height - getSystemMetrics(sm_cyCaption);
		Refresh;
	end;
	proc_Init;
end;

procedure Tfrm_BTN03.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure Tfrm_BTN03.FormDestroy(Sender: TObject);
begin
	Frm_BTN03 := Nil;
end;

procedure Tfrm_BTN03.FormShow(Sender: TObject);
begin
  fSetFont(Frm_BTN03, GS_FONTNAME);
end;

function Tfrm_BTN03.func_CallBellWKInfo(AWkID : string):Boolean;
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, i : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
begin
	SetDebugeWrite('TFrm_BTN01.btnSaveClick');
	Try
		result := False;

		Param := AWkID;
		Screen.Cursor := crHourGlass;
		if not RequestBase(GetSel06('GET_MEMBER_MILEAGE', 'BIZ_CUST.GET_MEMBER_MILEAGE', '1', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('������� ���ϸ��� ��ȸ �� ������ �߻��Ͽ����ϴ�.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Screen.Cursor := crDefault;
			exit;
		end;

		xdom := ComsDomDocument.Create;
		try
			if not xdom.loadXML(XmlData) then Exit;

			ls_MSG_Err := GetXmlErrorCode(XmlData);
			if ('0000' = ls_MSG_Err) then
			begin
				if (0 < GetXmlRecordCount(XmlData)) then
				begin
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					ls_Rcrd := TStringList.Create;
          for i := 0 to lst_Result.length - 1 do
          begin
            GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
            Application.ProcessMessages;

            lbWkID.Caption := ls_Rcrd[ 0];
            pnlTitle.Caption := '  ������� : '+ ls_Rcrd[ 1] + '(' + lbWkID.Caption + ')';
            ed_Cash.Value := StrToFloatDef(ls_Rcrd[ 3],0);
          end;
				end	else
				begin
					GMessagebox('��ȸ�� ������ �����ϴ�.', CDMSE);
				end;
			end;
		finally
			xdom := Nil;		
			Screen.Cursor := crDefault;
			result := True;
		end;
	except
		on E: Exception do
		begin
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
	end;
end;

function Tfrm_BTN03.GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;
	AStDt := de_stDate;
	AEdDt := de_edDate;
end;

procedure Tfrm_BTN03.MenuItem6Click(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
		SetDateControl(StDt, EdDt, tdToday);
end;

procedure Tfrm_BTN03.MenuItem7Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
		SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure Tfrm_BTN03.N11Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure Tfrm_BTN03.N6Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
		SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure Tfrm_BTN03.N7Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure Tfrm_BTN03.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_BTN03.proc_CallBellWKMileList;
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
begin
	SetDebugeWrite('TFrm_BTN.Proc_CallBellWKList');

	Param := Trim(lbWkID.Caption);
	Param := Param + '��' + FormatDateTime('yyyymmdd', de_stDate.Date);
	Param := Param + '��' + FormatDateTime('yyyymmdd', de_edDate.Date);
	Param := Param + '��' + IntToStr(cbStatesView.ItemIndex);

	Screen.Cursor := crHourGlass;
	BtnSearch.Enabled := False;
	if not RequestBase(GetSel06('GET_MEMBER_MILEAGE_LIST', 'BIZ_CUST.GET_MEMBER_MILEAGE_LIST', '1000', Param), XmlData, ErrCode, ErrMsg) then
	begin
		GMessagebox(Format('������� ���ϸ��� �̷� ����Ʈ ����'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
		Screen.Cursor := crDefault;
		BtnSearch.Enabled := True;
		Exit;
	end;

	xdom := ComsDomDocument.Create;
	cxCallBellWkCashList.DataController.SetRecordCount(0);
  try
		try
      if not xdom.loadXML(XmlData) then Exit;

      ls_MSG_Err := GetXmlErrorCode(XmlData);
      if ('0000' = ls_MSG_Err) then
			begin
				if (0 < GetXmlRecordCount(XmlData)) then
				begin
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					cxCallBellWkCashList.BeginUpdate;
          ls_Rcrd := TStringList.Create;
					try
						for i := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							Application.ProcessMessages;

							iRow := cxCallBellWkCashList.DataController.AppendRecord; // 1 Record �߰�

							cxCallBellWkCashList.DataController.Values[iRow,  0] := iRow + 1;
							cxCallBellWkCashList.DataController.Values[iRow,  1] := GetStrToDateTimeGStr(ls_Rcrd[ 0],3);    //��¥ 
							cxCallBellWkCashList.DataController.Values[iRow,  2] := ls_Rcrd[ 1];    //�����ݾ� 
							cxCallBellWkCashList.DataController.Values[iRow,  3] := StringReplace(Trim(ls_Rcrd[2]), '-', '', [rfReplaceAll]);//�����ݾ� 
							cxCallBellWkCashList.DataController.Values[iRow,  4] := ls_Rcrd[ 3];    //�ܾ� 
							cxCallBellWkCashList.DataController.Values[iRow,  5] := ls_Rcrd[ 5];    //ó����  
							cxCallBellWkCashList.DataController.Values[iRow,  6] := ls_Rcrd[ 4];    //�޸�   
						end;
					finally
						ls_Rcrd.Free;
					end;
					cxCallBellWkCashList.EndUpdate;
				end	else
				begin
					GMessagebox('�˻��� ������ �����ϴ�.', CDMSE);
				end;
			end;
		finally
			xdom := Nil;
			Screen.Cursor := crDefault;
			btnSearch.Enabled := True;
    end;
	except
		on E: Exception do
		begin
			Screen.Cursor := crDefault;
			btnSearch.Enabled := True;
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_BTN03.proc_Init;
var
  i: Integer;
begin
	for i := 0 to cxCallBellWkCashList.ColumnCount - 1 do
		cxCallBellWkCashList.Columns[i].DataBinding.ValueType := 'String';
	cxCallBellWkCashList.Columns[0].DataBinding.ValueType := 'Integer';
	cxCallBellWkCashList.Columns[2].DataBinding.ValueType := 'Currency';
	cxCallBellWkCashList.Columns[3].DataBinding.ValueType := 'Currency';
	cxCallBellWkCashList.Columns[4].DataBinding.ValueType := 'Currency';
	cxCallBellWkCashList.DataController.SetRecordCount(0);
	
	lbWkID.Caption := '';
	ed_ChargeCash.Value := 10000;
	ed_Cash.Value := 0;
	ed_memo.Text := '';
	chk_before.Checked := False;
	cbStatesView.ItemIndex := 0;

	try
		de_stDate.Date := StrToDate(Date8to10(StartDateTime('yyyymmdd')));
		de_edDate.Date := de_stDate.Date + 1;
	Except
  end;
end;

procedure Tfrm_BTN03.proc_SetCallBellWKMile;
var	XmlData, ErrMsg, param : string;
		ErrCode : Integer;
		sChargeCash, sCash : string;
begin
	SetDebugeWrite('TFrm_BTN03.proc_SetCallBellWKMile');
	Try
   	if Not func_EucKr_Check(ed_memo, 0) then Exit;

		param := lbWkID.Caption;
		if cxRadioButton1.Checked then Param := Param + '��' + '1'; 
		if cxRadioButton2.Checked then Param := Param + '��' + '2'; 
		Param := Param + '��' + FloatToStr(ed_ChargeCash.Value);
		Param := Param + '��' + ed_memo.Text;
		if not RequestBase(GetCallable06('SET_MEMBER_MILEAGE', 'BIZ_CUST.SET_MEMBER_MILEAGE', param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('���ϸ��� ����/���� �� ������ �߻��Ͽ����ϴ�.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			exit;
		end;

		if cxRadioButton2.Checked then
			sChargeCash := '-' + ed_ChargeCash.Text
		else
			sChargeCash := ed_ChargeCash.Text;
		sChargeCash := StringReplace(sChargeCash, ',', '', [rfReplaceAll]);
		sCash := ed_Cash.Text;
		sCash := StringReplace(sCash, ',', '', [rfReplaceAll]);
		ed_Cash.Text := IntToStr(StrToIntDef(sCash, 0) + StrToIntDef(sChargeCash, 0));

		if cxRadioButton1.checked then GMessagebox('���ϸ����� �����Ǿ����ϴ�.', CDMSI) else
		if cxRadioButton2.checked then GMessagebox('���ϸ����� �����Ǿ����ϴ�.', CDMSI);

		ed_memo.Text := '';
		BtnSearch.Click;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_BTN03.RbButton1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	pop_date.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

end.

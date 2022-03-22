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
		gCnt : integer; //일괄적용 순번
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
		lb_Notice1.Caption := '데이터 검증을 시작합니다.';
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
	lb_Notice1.Caption := '착신설정 준비가 완료되었습니다.';
	if bTmp then
		lb_Notice2.Caption := '일괄저장 버튼을 누르면 저장됩니다.'
	else
		lb_Notice2.Caption := '누락된 착신번호가 있습니다. 아래의 메세지를 참고하세요.';

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
		sParam := sParam + '│' + '';
		sParam := sParam + '│' + '';
		sParam := sParam + '│' + '';
		sParam := sParam + '│' + '';

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
			showmessage('시작시간이 잘못 입력되었습니다.' +#13#10 + '0000 ~ 2359 까지의 값을 설정해주세요');
			edt_Start.SetFocus;
			exit;
		end;
		if (length(edt_End.Text) <> 4) or (StrToIntDef(edt_End.Text, -1) < 0) or (StrToIntDef(edt_End.Text, -1) > 2359) then
		begin
			showmessage('종료시간이 잘못 입력되었습니다.' +#13#10 + '0000 ~ 2359 까지의 값을 설정해주세요');
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
			sMsg := '착신번호가 설정되지 않은 호분배그룹이 있습니다.' + #13#10
						+ '착신번호 설정이 정상적인 호분배그룹만 저장하시겠습니까?' + #13#10 + #13#10
						+ '저장[YES], 취소[NO]' + #13#10 + #13#10
						+ '※ 착신번호가 설정되지 않은 호분배그룹은 설정저장에서 제외됩니다.';
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
			0:  //착신번호1 전체사용
				begin  
					cxGridInBound.BeginUpdate;
					for I := 0 to cxGridInBound.DataController.RecordCount -1 do
					begin	
						cxGridInBound.DataController.Values[i, 10]	:= ChkBox.Checked;
					end;
					cxGridInBound.EndUpdate;
				end;
			1:  //착신번호2 전체사용
				begin  
					cxGridInBound.BeginUpdate;
					for I := 0 to cxGridInBound.DataController.RecordCount -1 do
					begin	
						cxGridInBound.DataController.Values[i, 12]	:= ChkBox.Checked;
					end;
					cxGridInBound.EndUpdate;
				end;
			2:  //착신번호3 전체사용
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
	// 폼 타이틀 제거..
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
				AMsg := format('호분배그룹 - %s, 착신번호1에 번호를 입력하여 주십시오', [cxGridInBound.DataController.Values[ARow, 1]] );
				exit;
			end;
		end;
		if cxGridInBound.DataController.Values[ARow,12] = true then
		begin
			if cxGridInBound.DataController.Values[ARow,13] = '' then
			begin
				result := False;
				AMsg := format('호분배그룹 - %s, 착신번호2에 번호를 입력하여 주십시오', [cxGridInBound.DataController.Values[ARow, 1]] );
				exit;
			end;
		end;
		if cxGridInBound.DataController.Values[ARow,14] = true then
		begin
			if cxGridInBound.DataController.Values[ARow,15] = '' then
			begin
				result := False;
				AMsg := format('호분배그룹 - %s, 착신번호3에 번호를 입력하여 주십시오', [cxGridInBound.DataController.Values[ARow, 1]] );
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
				AMsg := format('호분배그룹 - %s, 개별/지능형착신 사용시 착신번호1,2,3 중 사용체크를 하셔야 합니다.', [cxGridInBound.DataController.Values[ARow, 1]] );
				exit;
			end;
		end;

		sParam := '';
		sParam := GT_Si415_INFO.Id;
		sParam := sParam + '│' + Trim(cxGridInBound.DataController.Values[ARow, 1]);    //호분배그룹
		sParam := sParam + '│' + Trim(CallToStr(cxGridInBound.DataController.Values[ARow, 2]));    //대표번호
		sParam := sParam + '│' + Trim(CallToStr(cxGridInBound.DataController.Values[ARow, 3]));    //착신번호
		sParam := sParam + '│' + Trim(cxGridInBound.DataController.Values[ARow, 4]);    //서비스명
		sParam := sParam + '│' + '';                                         						//명의자/통신사
		sParam := sParam + '│' + '';    			                                     			//안내문구

		if cxGridInBound.DataController.Values[ARow, 5] = True then                     //개별착신 / 지능형 착신 사용 유무유무
		begin
			sParam := sParam + '│' + 'Y';
		end else
		if cxGridInBound.DataController.Values[ARow, 6] = True then
		begin
			sParam := sParam + '│' + 'A';
		end else
		if cxGridInBound.DataController.Values[ARow, 7] = True then
		begin
			sParam := sParam + '│' + 'N';
		end;
		sParam := sParam + '│' + Trim(cxGridInBound.DataController.Values[ARow, 8]);    //개별착신 사용시간
		sParam := sParam + '│' + Trim(cxGridInBound.DataController.Values[ARow, 9]);    //개별착신 종료시간
		
		sParam := sParam + '│' + Trim(strToCall(cxGridInBound.DataController.Values[ARow,11]));                                     //착신번호1
		if cxGridInBound.DataController.Values[ARow, 10] = True then sParam := sParam + '│' + 'Y' else sParam := sParam + '│' + 'N';//착신번호1 사용유무

		sParam := sParam + '│' + Trim(strToCall(cxGridInBound.DataController.Values[ARow,13]));                                     //착신번호2
		if cxGridInBound.DataController.Values[ARow, 12] = True then sParam := sParam + '│' + 'Y' else sParam := sParam + '│' + 'N';//착신번호2 사용유무

		sParam := sParam + '│' + Trim(strToCall(cxGridInBound.DataController.Values[ARow,15]));                                     //착신번호3
		if cxGridInBound.DataController.Values[ARow, 14] = True then sParam := sParam + '│' + 'Y' else sParam := sParam + '│' + 'N';//착신번호3 사용유무

		sParam := sParam + '│' + '';   //콜마너 연동 유무
		sParam := sParam + '│' + '';   //콜마너탁송 연동 유무
		sParam := sParam + '│' + '';   //예비1
		sParam := sParam + '│' + '';   //예비2
		sParam := sParam + '│' + '';   //예비3
		sParam := sParam + '│' + Trim(cxGridInBound.DataController.Values[ARow, 16]);   //어플연동
		sParam := sParam + '│' + '';   //CTI-Q 대기멘트
		sParam := sParam + '│' + '';   //VIP CTI-Q 대기멘트
		sParam := sParam + '│' + '';   //개별 필터링 사용유무
		sParam := sParam + '│' + '';   //개별 필터링 멘트 명
		sParam := sParam + '│' + '';   //필터링 시작시간
		sParam := sParam + '│' + '';   //필터링 종료시간
		sParam := sParam + '│' + '';   //080수신거부
		sParam := sParam + '│' + '';   //수신거부멘트
		sParam := sParam + '│' + '';   //호분배순위
	
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
				AView.DataController.Values[iRow, 1] := subObj.Get('Q_exten').JsonValue.Value;                //o		호분배 그룹
				AView.DataController.Values[iRow, 2] := StrToCall(subObj.Get('Service_no').JsonValue.Value);  	   //o		대표번호
				AView.DataController.Values[iRow, 3] := StrToCall(subObj.Get('Dnis_no').JsonValue.Value); 				 //o		착신번호
				AView.DataController.Values[iRow, 4] := subObj.Get('Buz_name').JsonValue.Value;    		 //o		서비스명

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
				AView.DataController.Values[iRow, 8] := subObj.Get('Tr_start').JsonValue.Value;     	 //		개별착신 / 지능형 착신 시작시간
				AView.DataController.Values[iRow, 9] := subObj.Get('Tr_end').JsonValue.Value;   			 //		개별착신 / 지능형 착신 종료시간

				if subObj.Get('Forward_yn1').JsonValue.Value = 'Y' then
					AView.DataController.Values[iRow,10] := True
				else 	
					AView.DataController.Values[iRow,10] := False;
				AView.DataController.Values[iRow,11] := StrToCall(subObj.Get('Forward_no1').JsonValue.Value);     //o		개별착신 / 지능형 착신 번호1 

				if subObj.Get('Forward_yn2').JsonValue.Value = 'Y' then
					AView.DataController.Values[iRow,12] := True
				else 	
					AView.DataController.Values[iRow,12] := False;
				AView.DataController.Values[iRow,13] := StrToCall(subObj.Get('Forward_no2').JsonValue.Value);     //o		개별착신 / 지능형 착신 번호2 

				if subObj.Get('Forward_yn3').JsonValue.Value = 'Y' then
					AView.DataController.Values[iRow,14] := True
				else 	
					AView.DataController.Values[iRow,14] := False;
				AView.DataController.Values[iRow,15] := StrToCall(subObj.Get('Forward_no3').JsonValue.Value);     //o		개별착신 / 지능형 착신 번호3 

				AView.DataController.Values[iRow,16] := subObj.Get('App_L').JsonValue.Value;     //o		앱연동
			end;

			AView.EndUpdate;

			if AView.DataController.RecordCount < 1 then
			begin
				GMessagebox('검색된 내용이 없습니다.', CDMSI);
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
		GMessagebox('저장되었습니다.', CDMSI);
		frm_PBX.btn_3_1.click;
		proc_Init;
		btnCancel.click;
	end else
	begin
		GMessagebox(Format('저장 중 오류발생'#13#10'[에러코드]%s', [ AResult]), CDMSI);
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
			0:  //전체 개별착신 사용
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
			1:  //전체 지능형착신 사용
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
			2:  //전체 미사용
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
			3:  //개별착신만 전체미사용
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
			4:  //지능형착신만 전체미사용
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
			lb_Notice1.caption := '착신설정이 완료되었습니다.';
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

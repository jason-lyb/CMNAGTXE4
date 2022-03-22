unit xe_WOR24;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.ExtCtrls, cxPC, Vcl.Menus, cxContainer, cxEdit,
  cxTextEdit, Vcl.StdCtrls, cxButtons, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel, cxMaskEdit,
  cxSpinEdit, cxGroupBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
	cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxCurrencyEdit,
	cxDropDownEdit, MSXML2_TLB, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  Tfrm_WOR24 = class(TForm)
    pnlTitle: TPanel;
    cxLblActive: TLabel;
    BtnClose1: TcxButton;
    edt_HdNo: TcxTextEdit;
    edt_SchNo: TcxTextEdit;
    lb_Title: TcxLabel;
    pnl_Page1: TPanel;
    pnl_Page1_2: TPanel;
    cxGrid1: TcxGrid;
    cxMCash_SchList: TcxGridDBTableView;
    cxMCash_SchListColumn1: TcxGridDBColumn;
    cxMCash_SchListColumn2: TcxGridDBColumn;
    cxMCash_SchListColumn3: TcxGridDBColumn;
    cxMCash_SchListColumn4: TcxGridDBColumn;
    cxMCash_SchListColumn5: TcxGridDBColumn;
    cxMCash_SchListColumn6: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    Shape3: TShape;
    Shape2: TShape;
    Shape6: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    img_BasicSch: TImage;
    cxlbl3: TcxLabel;
    edt_MCashSch: TcxTextEdit;
    edt_MCash: TcxSpinEdit;
    lblSosokNameA1: TcxLabel;
    cxLabel54: TcxLabel;
    cxLabel6: TcxLabel;
    edt_DayDeduct: TcxSpinEdit;
    cxLabel7: TcxLabel;
    btn_Save: TcxButton;
    btn_Del: TcxButton;
    cxButton1: TcxButton;
    cxLabel12: TcxLabel;
    cb_SchUse: TcxComboBox;
    cxLabel13: TcxLabel;
    cb_BasicSchUse: TcxComboBox;
    pnl_BasicSch: TPanel;
    lb_BasicSch: TcxLabel;
    btn_BasicSchClose: TcxButton;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    img_DayDeduct: TImage;
    pnl_DayDeduct: TPanel;
    lb_Deduct: TcxLabel;
    btn_DayDeductClose: TcxButton;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel14: TcxLabel;
    cxMCash_SchListColumn7: TcxGridDBColumn;
    cxMCash_SchListColumn8: TcxGridDBColumn;
    cxMCash_SchListColumn9: TcxGridDBColumn;
    cxMCash_SchListColumn10: TcxGridDBColumn;
    cxMCash_SchListColumn11: TcxGridDBColumn;
    cxMCash_SchListColumn12: TcxGridDBColumn;
    cxMCash_SchListColumn13: TcxGridDBColumn;
    cxMCash_SchListColumn14: TcxGridDBColumn;
    cxMCash_SchListColumn15: TcxGridDBColumn;
    cxMCash_SchListColumn16: TcxGridDBColumn;
    cxMCash_SchListColumn17: TcxGridDBColumn;
    Shape1: TShape;
    cxLabel1: TcxLabel;
    edt_Cnt: TcxLabel;
    btn_MCashSchSearch: TcxButton;
		procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnClose1Click(Sender: TObject);
    procedure img_BasicSchClick(Sender: TObject);
    procedure lb_BasicSchMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn_BasicSchCloseClick(Sender: TObject);
    procedure btn_DayDeductCloseClick(Sender: TObject);
    procedure img_DayDeductClick(Sender: TObject);
    procedure lb_DeductMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
		procedure btn_SaveClick(Sender: TObject);
		function func_SetMCashSch(AGubun, ASchNo : string):String;
		procedure btn_MCashSchSearchClick(Sender: TObject);
		procedure cxMCash_SchListCellClick(Sender: TcxCustomGridTableView;
			ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
			AShift: TShiftState; var AHandled: Boolean);
		procedure btn_DelClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure edt_MCashSchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_MCashKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_DayDeductKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cb_BasicSchUseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);  //배차지연콜 설정 등록
	private
		{ Private declarations }
		procedure proc_MCashSchSerach(ASch:string);
		function func_MCashAddWK(ASch, ASabun:string):Boolean;
	public
		{ Public declarations }

		FWkList : TStringList;
		procedure proc_init;
	end;

var
  frm_WOR24: Tfrm_WOR24;

implementation

{$R *.dfm}

uses xe_gnl, xe_Lib, xe_packet, xe_Func, xe_Msg, xe_Xml, xe_Flash  , Main,
  xe_WOR23;

procedure Tfrm_WOR24.BtnClose1Click(Sender: TObject);
begin
	close;
end;

procedure Tfrm_WOR24.lb_BasicSchMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
	ReleaseCapture;
	PostMessage(pnl_BasicSch.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_WOR24.lb_DeductMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
	ReleaseCapture;
	PostMessage(pnl_DayDeduct.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_WOR24.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_WOR24.proc_init;
var i : integer;
begin
	lblSosokNameA1.Caption := '';
	cxMCash_SchList.DataController.SetRecordCount(0);
	for i := 0 to cxMCash_SchList.ColumnCount - 1 do
	begin
		case i of
			0      : cxMCash_SchList.Columns[i].DataBinding.ValueType := 'Integer'; 
			1      : cxMCash_SchList.Columns[i].DataBinding.ValueType := 'String';
			2..10  : cxMCash_SchList.Columns[i].DataBinding.ValueType := 'Currency';
			11..16 : cxMCash_SchList.Columns[i].DataBinding.ValueType := 'String';
		end;
	end;
	edt_SchNo.Text := '';
	edt_HdNo.Text := '';
	
	edt_MCashSch.Text := '';
	cb_SchUse.ItemIndex := 0;
	edt_MCash.Text := '0';
	edt_DayDeduct.Text := '0';
	cb_BasicSchUse.ItemIndex := 1;
	btn_Save.Caption := '저장';
	btn_Save.Tag := 0;

	btn_Del.Enabled := False;
	FWkList := TStringList.Create;
end;

procedure Tfrm_WOR24.proc_MCashSchSerach(ASch: string);
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i, j : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	sTmp : string;
begin
	SetDebugeWrite('Tfrm_AIC01.btnSearchA2Click');
	Try
		cxMCash_SchList.DataController.SetRecordCount(0);

		sTmp := edt_HdNo.Text;
		Param := sTmp{ + '│' + ASch};

		Screen.Cursor := crHourGlass;
		btn_MCashSchSearch.Enabled := False;
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel06('GET_MCASH_SCHEDULE_LIST', 'MCASH.GET_MCASH_SCHEDULE_LIST', '1000', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('M-Cash 스케줄 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				Screen.Cursor := crDefault;
				btn_MCashSchSearch.Enabled := True;
				Exit;
			end;

			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			cxMCash_SchList.DataController.SetRecordCount(0);
			for j := 0 to slList.Count - 1 do
			begin
				Frm_Flash.cxPBar1.Position := j + 1;
				Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
				Application.ProcessMessages;
				xmlData := slList.Strings[j];
				xdom := ComsDomDocument.Create;

				try
					if not xdom.loadXML(XmlData) then Exit;

					ls_MSG_Err := GetXmlErrorCode(XmlData);
					if ('0000' = ls_MSG_Err) then
					begin
						if (0 < GetXmlRecordCount(XmlData)) then
						begin
							lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
							cxMCash_SchList.BeginUpdate;
							ls_Rcrd := TStringList.Create;
							try
								for i := 0 to lst_Result.length - 1 do
								begin
									GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
									Application.ProcessMessages;

									iRow := cxMCash_SchList.DataController.AppendRecord; // 1 Record 추가
								//지사코드|지사명|대표번호|날짜|접수번호|고객번호 |고객명 |고객구분 |시나리오코드|시나리오명 | 총OB콜수 | 
								//대기처리 | 요금인상처리 | 접수취소처리 | 상담원연결처리 | No-시나리오완료 | 기타콜수 | 차감캐쉬 | 최종상태 | 
								//통화중연결종료 | 전화안받음

									cxMCash_SchList.DataController.Values[iRow, 0] := IntToStr(iRow+1);
									cxMCash_SchList.DataController.Values[iRow, 1] := ls_Rcrd[1];            //스케쥴명	
									cxMCash_SchList.DataController.Values[iRow, 2] := ls_Rcrd[4];            //한도금액
									cxMCash_SchList.DataController.Values[iRow, 3] := ls_Rcrd[3];            //일차감금액
									cxMCash_SchList.DataController.Values[iRow, 4] := ls_Rcrd[5];            //전체기사
									cxMCash_SchList.DataController.Values[iRow, 5] := ls_Rcrd[6];            //정상상태기사
									cxMCash_SchList.DataController.Values[iRow, 6] := ls_Rcrd[8];            //기타상태기사
									cxMCash_SchList.DataController.Values[iRow, 7] := ls_Rcrd[7];            //퇴직기사
									cxMCash_SchList.DataController.Values[iRow, 8] := ls_Rcrd[9];            //내일차감될금액
									cxMCash_SchList.DataController.Values[iRow, 9] := ls_Rcrd[10];           //충전될 M-Cash
									cxMCash_SchList.DataController.Values[iRow,10] := ls_Rcrd[11];           //지급가능한M-Cash 
									if ls_Rcrd[12] = 'y' then
										cxMCash_SchList.DataController.Values[iRow,11] := '사용' else         
										cxMCash_SchList.DataController.Values[iRow,11] := '미사용';            //사용여부y/n
									if ls_Rcrd[13] = 'y' then
										cxMCash_SchList.DataController.Values[iRow,12] := '기본스케줄' else   
										cxMCash_SchList.DataController.Values[iRow,12] := '';                  //기본사용여부/n
									cxMCash_SchList.DataController.Values[iRow,13] := ls_Rcrd[14];           //등록일
									cxMCash_SchList.DataController.Values[iRow,14] := ls_Rcrd[15];           //등록자 
									cxMCash_SchList.DataController.Values[iRow,15] := ls_Rcrd[0];            //스케쥴일련번호
									cxMCash_SchList.DataController.Values[iRow,16] := ls_Rcrd[2];            //본사코드
								end;
							finally
								ls_Rcrd.Free;
							end;
							cxMCash_SchList.EndUpdate;
						end;
					end;
			
				finally
					xdom := Nil;
				end;
			end;
		finally
			Frm_Flash.hide;
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			btn_MCashSchSearch.Enabled := True;
			
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_WOR24.btn_SaveClick(Sender: TObject);
var i : integer;
	sTmp, sSchNo : string;
begin

	SetDebugeWrite('Tfrm_WOR24.btn_SaveClick');
	Try
		if edt_MCashSch.Text = '' then
		begin
			GMessagebox('스케줄명을 입력하여 주십시오.', CDMSE);
			edt_MCashSch.SetFocus;
			exit		
		end;
		if edt_MCash.value < edt_DayDeduct.Value then
		begin
			GMessagebox('설정금액이 일차감금액보다 작습니다.' +#13#10+#13#10
								+ '설정금액을 확인하여 주십시오', CDMSE);
			edt_MCash.SetFocus;
			exit		
		end;
		if edt_MCash.Value < 10000 then
		begin
			GMessagebox('설정금액이 너무 작습니다.[최소 1만원 이상]' +#13#10+#13#10
								+ '설정금액을 확인하여 주십시오', CDMSE);
			edt_MCash.SetFocus;
			exit		
		end;
		if edt_DayDeduct.Value < 1000 then
		begin
			GMessagebox('일차감금액이 너무 작습니다. [최소 1천원 이상]' +#13#10+#13#10
								+ '일차감금액을 확인하여 주십시오', CDMSE);
			edt_MCash.SetFocus;
			exit		
		end;


		if btn_Save.Tag = 0 then
		begin
			sSchNo := '';
			sSchNo := func_SetMCashSch('INSERT', '');

			if FWkList.Count > 0 then
			begin
				For i := 0 to FWkList.Count-1 do
				begin
					if not func_MCashAddWK(sSchNo, FWkList[i]) then
					begin 
			
					end;
				end;
				FWkList.clear;
			end;
			
			GMessagebox('설정을 저장하였습니다.', CDMSI);
		end else
		if btn_Save.Tag = 1 then
		begin
			sSchNo := edt_SchNo.Text;

			sTmp := func_SetMCashSch('UPDATE', sSchNo);
			GMessagebox('설정을 수정하였습니다.', CDMSI);
		end;
		btn_MCashSchSearch.Click;
		if Assigned(Frm_WOR23) then Frm_WOR23.btn_MCashSchSearch.Click;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	End;
	
end;

procedure Tfrm_WOR24.cb_BasicSchUseKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then btn_Save.SetFocus;
end;

procedure Tfrm_WOR24.cxButton1Click(Sender: TObject);
begin
	if cxMCash_SchList.DataController.RecordCount = 0 then
	begin
		GMessagebox('자료가 없습니다.', CDMSE);
		Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
		Exit;
	end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
		ShowMessage('[엑셀다운로드[정산메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	Frm_Main.sgExcel := 'M-Cash 스케줄관리.xls';
	Frm_Main.sgRpExcel := Format('기사>M-Cash스케줄관리]%s건', [GetMoneyStr(cxMCash_SchList.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := cxGrid1;
	Frm_Main.bgExcelOPT := False;
	Frm_Main.proc_excel(0);
end;

procedure Tfrm_WOR24.cxMCash_SchListCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var iCol, iRow : integer;
	sSchNo, sSchNm, sMCash, sDayDeduct, sBasic, sUse : string;
begin
	SetDebugeWrite('Tfrm_WOR24.cxMCash_SchListCellClick');
	Try
		iRow := cxMCash_SchList.DataController.FocusedRecordIndex;

		iCol := cxMCash_SchList.GetColumnByFieldName('스케줄일련번호').Index;
		sSchNo := cxMCash_SchList.DataController.Values[iRow, iCol];
		iCol := cxMCash_SchList.GetColumnByFieldName('스케줄명').Index;
		sSchNm := cxMCash_SchList.DataController.Values[iRow, iCol];
		iCol := cxMCash_SchList.GetColumnByFieldName('설정금액').Index;
		sMCash := cxMCash_SchList.DataController.Values[iRow, iCol];
		iCol := cxMCash_SchList.GetColumnByFieldName('일차감금액').Index;
		sDayDeduct := cxMCash_SchList.DataController.Values[iRow, iCol];
		iCol := cxMCash_SchList.GetColumnByFieldName('사용여부').Index;
		sUse := cxMCash_SchList.DataController.Values[iRow, iCol];
		iCol := cxMCash_SchList.GetColumnByFieldName('기본사용여부').Index;
		sBasic := cxMCash_SchList.DataController.Values[iRow, iCol];

		edt_MCashSch.Text := sSchNm;
		edt_MCash.value := StrToIntDef(sMCash,0);//FormatCash(StrToIntDef(sMCash,0));
		edt_DayDeduct.value := StrToIntDef(sDayDeduct,0);//FormatCash(StrToIntDef(sDayDeduct,0));

		if sUse = '사용' then cb_SchUse.ItemIndex := 0 else cb_SchUse.ItemIndex := 1;
		if sBasic = '기본스케줄' then cb_BasicSchUse.ItemIndex := 0 else cb_BasicSchUse.ItemIndex := 1;

		edt_SchNo.Text := sSchNo;
		btn_Save.Caption := '수정';
		btn_Save.Tag := 1;
		btn_Del.Enabled := True;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	End;
end;

procedure Tfrm_WOR24.edt_DayDeductKeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if Key = vk_Return then cb_BasicSchUse.SetFocus;
end;

procedure Tfrm_WOR24.edt_MCashKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then edt_DayDeduct.SetFocus;
end;

procedure Tfrm_WOR24.edt_MCashSchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then edt_MCash.SetFocus;
end;

procedure Tfrm_WOR24.btn_MCashSchSearchClick(Sender: TObject);
begin
	proc_MCashSchSerach('');
end;

procedure Tfrm_WOR24.btn_DelClick(Sender: TObject);
var iCol, iRow : integer;
	sTmp, sSchNo : string;
begin
	SetDebugeWrite('Tfrm_WOR24.btn_DelClick');
	Try
		iRow := cxMCash_SchList.DataController.FocusedRecordIndex;
		if iRow < 0 then exit;
		
		iCol := cxMCash_SchList.GetColumnByFieldName('스케줄일련번호').Index;
		sSchNo := cxMCash_SchList.DataController.Values[iRow, iCol];
		if sSchNo = '' then exit;

		sTmp := '[확인하세요]' + #13#10 + #13#10 + '스케줄 삭제 시 등록된 기사들의 스케줄도 모두 삭제됩니다.' +#13#10
					+ '그래도 삭제하시겠습니까?';
					
		if Application.MessageBox(PChar(sTmp), CDMSI, MB_YESNO +
			MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
		begin
			sTmp := func_SetMCashSch('DELETE', sSchNo);
			if sTmp <> 'fail' then
				GMessagebox('설정을 삭제하였습니다.', CDMSI);
			btn_MCashSchSearch.Click;	
			if Assigned(Frm_WOR23) then Frm_WOR23.btn_MCashSchSearch.Click;
		end;

	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	End;
end;

procedure Tfrm_WOR24.btn_BasicSchCloseClick(Sender: TObject);
begin
	pnl_BasicSch.Visible := False;
end;

procedure Tfrm_WOR24.btn_DayDeductCloseClick(Sender: TObject);
begin
	pnl_DayDeduct.Visible := False;
end;

procedure Tfrm_WOR24.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
	cxLblActive.Visible := True;
end;

procedure Tfrm_WOR24.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	FreeAndNil(FWkList);
	Action := caFree;
end;

procedure Tfrm_WOR24.FormCreate(Sender: TObject);
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
		end;
		Height := Height - getSystemMetrics(sm_cyCaption);
		Refresh;
	end;
end;

procedure Tfrm_WOR24.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure Tfrm_WOR24.FormDestroy(Sender: TObject);
begin
	Frm_WOR24 := Nil;
end;

procedure Tfrm_WOR24.FormShow(Sender: TObject);
begin
  fSetFont(Frm_WOR24, GS_FONTNAME);
	SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);
end;

function Tfrm_WOR24.func_MCashAddWK(ASch, ASabun: string): Boolean;
var
	XmlData, Param, ErrMsg : string;
	ErrCode : Integer;
begin
	result := False;
	try
		Param := ASabun + '│' + ASch;

		if not RequestBase(GetCallable06('SET_WK_MCASH_SCHEDULE_SELECT ', 'MCASH.SET_WK_MCASH_SCHEDULE_SELECT', param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('MCash 기사 스케줄 등록 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Exit;
		end;
		result := True;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

function Tfrm_WOR24.func_SetMCashSch(AGubun, ASchNo: string): string;
var
	XmlData, Param, ErrMsg : string;
	ErrCode : Integer;
begin
	result := '';
	try
		//타입(INSERT/UPDATE/DELETE), 본사코드, 스케쥴일련번호(없음 공백), 스케쥴명,일차감금액,한도금액,기본사용여부y/n
		Param := AGubun;             //타입(INSERT/UPDATE/DELETE)
		Param := Param + '│' + Trim(edt_HdNo.text);     //본사코드
		Param := Param + '│' + Trim(ASchNo);  //스케쥴일련번호
		Param := Param + '│' + Trim(edt_MCashSch.text);  //스케쥴명
		Param := Param + '│' + Trim(RemoveAll(edt_DayDeduct.text, ','));  //일차감금액
		Param := Param + '│' + Trim(RemoveAll(edt_MCash.text, ','));  //한도금액
		if cb_BasicSchUse.ItemIndex = 0 then Param := Param + '│' + 'y' else Param := Param + '│' + 'n'; //기본사용여부
//		if cb_SchUse.ItemIndex = 0 then Param := Param + '│' + 'y' else Param := Param + '│' + 'n'; //스케줄사용여부

		btn_Save.Enabled := False;
		if not RequestBase(GetCallable06('SET_MCASH_SCHEDULE_SAVE ', 'MCASH.SET_MCASH_SCHEDULE_SAVE', param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('M-CASH 설정 등록 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			btn_Save.Enabled := True;
			result := 'fail'; 
			Exit;
		end;
		btn_Save.Enabled := True;
		result := GetXmlResult(XmlData);
		//'<?xml version="1.0" encoding="EUC-KR"?>'#$A'<cdms> <header>'#9'<UserID Value="sntest"/>'#9'<ClientVer Value="5.06"/>'#9'<ClientKey Value="SET_MCASH_SCHEDULE_SAVE "/>'#9'</header>'#9'<Service ID="CALLABLE06" Name="CALLABLE" VersionNum="CallServer 1.0">'#9'<Error Code="0000" Message=""/> <Data>'#9'<Call Value="MCASH.SET_MCASH_SCHEDULE_SAVE ">'#9'<Param Value="INSERT│A100││111│11│2222│n"/> </Call> 
		//<Result Value="3"/>'#9'</Data>'#9'</Service></cdms>'

		btn_MCashSchSearch.Click;
	except
		on E: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure Tfrm_WOR24.img_BasicSchClick(Sender: TObject);
begin
	pnl_BasicSch.Left := 498;
	pnl_BasicSch.Top := 83;
	if pnl_BasicSch.Visible then pnl_BasicSch.Visible := False else pnl_BasicSch.Visible := True;
end;

procedure Tfrm_WOR24.img_DayDeductClick(Sender: TObject);
begin
	pnl_DayDeduct.Left := 250;
	pnl_DayDeduct.Top := 83;
	if pnl_DayDeduct.Visible then pnl_DayDeduct.Visible := False else pnl_DayDeduct.Visible := True;

end;

end.

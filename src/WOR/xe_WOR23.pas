unit xe_WOR23;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.ExtCtrls, cxPC, Vcl.Menus, cxContainer, cxEdit,
  cxTextEdit, Vcl.StdCtrls, cxButtons, cxStyles, cxCustomData, cxFilter, cxData,
	cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel, cxMaskEdit,
	cxSpinEdit, cxGroupBox, cxGridLevel, cxGridCustomTableView, cxGridTableView, MSXML2_TLB,
	cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxCurrencyEdit, xe_GNL,
	cxDropDownEdit, cxListBox, cxCheckBox, dxSkinOffice2010Silver, dxDateRanges, cxCustomListBox,
  dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  Tfrm_WOR23 = class(TForm)
    pnlTitle: TPanel;
    cxLblActive: TLabel;
    BtnClose1: TcxButton;
    cxLabel1: TcxLabel;
    pnl_Page2: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
		cxPageControl3: TcxPageControl;
    cxTabSheet4: TcxTabSheet;
    cxLabel9: TcxLabel;
    btn_LeftRightAdd: TcxButton;
    cxGrid4: TcxGrid;
    cxMCash_RevList: TcxGridDBTableView;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cb_Sel1: TcxComboBox;
    edt_Search1: TcxTextEdit;
    btn_LeftWkSearch: TcxButton;
    cxLabel11: TcxLabel;
    cxPageControl2: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxLabel10: TcxLabel;
    cxGrid2: TcxGrid;
    cxMCash_WorkerList: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    edt_Search2: TcxTextEdit;
    btn_RightWkSearch: TcxButton;
    btn_RightLeftAdd: TcxButton;
    cb_Sel2: TcxComboBox;
    Panel2: TPanel;
    lbSearchBranch1: TcxLabel;
    edt_BrName: TcxTextEdit;
    cboBranch: TcxComboBox;
    lst_BRList1: TcxListBox;
    cxGroupBox2: TcxGroupBox;
    Shape1: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape7: TShape;
    cxLabel2: TcxLabel;
    edt_MCashSch: TcxTextEdit;
    edt_MCash: TcxSpinEdit;
    lblSosokNameA1: TcxLabel;
    cxLabel4: TcxLabel;
    btn_MCashSchSearch: TcxButton;
    cxLabel5: TcxLabel;
    edt_DayDeduct: TcxSpinEdit;
    cxLabel8: TcxLabel;
    btn_MCashSchExcel: TcxButton;
    btn_MCashSchInsert: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxMCash_SchList: TcxGridDBTableView;
    cxMCash_SchListColumn1: TcxGridDBColumn;
    cxMCash_SchListColumn2: TcxGridDBColumn;
    cxMCash_SchListColumn3: TcxGridDBColumn;
    cxMCash_SchListColumn4: TcxGridDBColumn;
    cxMCash_SchListColumn5: TcxGridDBColumn;
    cxMCash_SchListColumn6: TcxGridDBColumn;
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
    cxGridLevel1: TcxGridLevel;
    pnl_SearchSch: TPanel;
    lb_Deducttitle: TcxLabel;
    edt_SearchSch: TcxTextEdit;
    cxMCash_RevListColumn1: TcxGridDBColumn;
    cxMCash_WorkerListColumn1: TcxGridDBColumn;
    Shape9: TShape;
    Shape10: TShape;
    cxLabel12: TcxLabel;
    cb_SchUse: TcxComboBox;
    cxLabel13: TcxLabel;
    cb_BasicSchUse: TcxComboBox;
    Shape2: TShape;
    cxLabel7: TcxLabel;
    edt_Cnt: TcxLabel;
    img_DayDeduct: TImage;
    img_BasicSch: TImage;
    pnl_DayDeduct: TPanel;
    lb_Deduct: TcxLabel;
    btn_DayDeductClose: TcxButton;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    pnl_BasicSch: TPanel;
    lb_BasicSch: TcxLabel;
    btn_BasicSchClose: TcxButton;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    cxMCash_RevListColumn2: TcxGridDBColumn;
    cxMCash_RevListColumn3: TcxGridDBColumn;
    cxMCash_WorkerListColumn2: TcxGridDBColumn;
    btn_Init: TcxButton;
    btn_Del: TcxButton;
    btn_AddWk: TcxButton;
    edt_SchNo: TcxTextEdit;
    edt_HdNo: TcxTextEdit;
    chk_Retired: TcxCheckBox;
    cxMCash_WorkerListColumn3: TcxGridDBColumn;
    cxMCash_RevListColumn4: TcxGridDBColumn;
    pmExcel2: TPopupMenu;
    MenuItem1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnClose1Click(Sender: TObject);
    procedure btn_MCashSchInsertClick(Sender: TObject);
    procedure edt_BrNameEnter(Sender: TObject);
		procedure edt_BrNameExit(Sender: TObject);
		procedure edt_BrNameFocusChanged(Sender: TObject);
		procedure edt_BrNameKeyDown(Sender: TObject; var Key: Word;
			Shift: TShiftState);
		procedure edt_BrNameKeyUp(Sender: TObject; var Key: Word;
			Shift: TShiftState);
		procedure edt_BrNameMouseDown(Sender: TObject; Button: TMouseButton;
			Shift: TShiftState; X, Y: Integer);
		procedure edt_BrNamePropertiesChange(Sender: TObject);
		procedure lbSearchBranch1Click(Sender: TObject);
		procedure lst_BRList1DblClick(Sender: TObject);
		procedure lst_BRList1Exit(Sender: TObject);
		procedure lst_BRList1KeyDown(Sender: TObject; var Key: Word;
			Shift: TShiftState);
		procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
			Shift: TShiftState; X, Y: Integer);
		procedure btn_MCashSchSearchClick(Sender: TObject);
    procedure img_DayDeductClick(Sender: TObject);
    procedure btn_DayDeductCloseClick(Sender: TObject);
    procedure img_BasicSchClick(Sender: TObject);
    procedure btn_BasicSchCloseClick(Sender: TObject);
    procedure lb_DeductMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lb_BasicSchMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
		procedure edt_SearchSchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
		procedure cxMCash_SchListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_LeftWkSearchClick(Sender: TObject);
    procedure btn_RightWkSearchClick(Sender: TObject);
		procedure cxMCash_SchListCellClick(Sender: TcxCustomGridTableView;
			ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
			AShift: TShiftState; var AHandled: Boolean);
		procedure btn_InitClick(Sender: TObject);
		procedure btn_AddWkClick(Sender: TObject);
		procedure btn_MCashSchExcelClick(Sender: TObject);
		procedure btn_DelClick(Sender: TObject);
		procedure edt_Search1KeyDown(Sender: TObject; var Key: Word;
			Shift: TShiftState);
		procedure edt_Search2KeyDown(Sender: TObject; var Key: Word;
			Shift: TShiftState);
		procedure btn_RightLeftAddClick(Sender: TObject);
		procedure MenuItem1Click(Sender: TObject);
	private
		{ Private declarations }
		searchBRlist1, searchBRlist2, searchBRlist3 : TStringList;

		function func_BrNameList_Search(ATag:integer):Boolean;
		procedure proc_init;
		procedure proc_MCashSchSerach(ASch:string);
		procedure proc_MCashWkSerach(AGubun : string);
		function func_MCashAddWK(ASch, ASabun:string):Boolean;
		function func_SetMCashSch(AGubun, ASchNo : string):String;

	public
		{ Public declarations }
		pWOR23Dock : TUNDOCKMNG;
		FWkList: TStringList;
	end;

var
  frm_WOR23: Tfrm_WOR23;

implementation

{$R *.dfm}

uses xe_WOR24, xe_Lib, xe_packet, xe_Func, xe_Msg, xe_Xml, xe_Flash , Main;

procedure Tfrm_WOR23.BtnClose1Click(Sender: TObject);
begin
	close;
end;

procedure Tfrm_WOR23.btn_AddWkClick(Sender: TObject);
var
	iRow, iCol, i : Integer;
	sTmp, sSchNo : string;
begin
	SetDebugeWrite('Tfrm_WOR23.btn_AddWkClick');
	Try
		if FWkList.Count < 1 then exit;
		iRow := cxMCash_SchList.DataController.FocusedRecordIndex;
		sSchNo := '';
		if iRow < 0 then
		begin
			GMessagebox('선택된 스케줄이 없습니다.'+#13#10+#13#10
								+ '리스트에서 스케줄을 선택하시거나'+#13#10
								+ '새로운 스케줄을 등록 후 기사를 등록하십시오'+#13#10
								+ '* 신규스케줄등록 -> [스케줄등록]버튼을  눌러주세요', CDMSE);
			Exit;
		end;
		sTmp := pWOR23Dock.HdNo;

		iCol := cxMCash_SchList.GetColumnByFieldName('스케줄일련번호').Index;
		sSchNo := cxMCash_SchList.DataController.Values[iRow, iCol];

		
		For i := 0 to FWkList.Count-1 do
		begin
			if not func_MCashAddWK(sSchNo, FWkList[i]) then
			begin 

			end;
		end;
		FWkList.clear;
		btn_LeftWkSearch.Click;
		btn_RightWkSearch.Click;
//		GMessagebox('선택기사 스케줄 등록이 완료되었습니다.', CDMSE);
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	End;

end;

procedure Tfrm_WOR23.btn_BasicSchCloseClick(Sender: TObject);
begin
	pnl_BasicSch.Visible := False;
end;

procedure Tfrm_WOR23.btn_DayDeductCloseClick(Sender: TObject);
begin
	pnl_DayDeduct.Visible := False;
end;

procedure Tfrm_WOR23.btn_LeftWkSearchClick(Sender: TObject);
begin
	proc_MCashWkSerach('1');
end;

procedure Tfrm_WOR23.btn_MCashSchExcelClick(Sender: TObject);
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

	Frm_Main.sgExcel := 'M-Cash 설정관리.xls';
	Frm_Main.sgRpExcel := Format('기사>M-Cash 설정관리]%s건', [GetMoneyStr(cxMCash_SchList.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := cxGrid1;
	Frm_Main.bgExcelOPT := False;
	Frm_Main.proc_excel(0);
end;

procedure Tfrm_WOR23.btn_MCashSchInsertClick(Sender: TObject);
var iCol, iRow : integer;
	sSchNo, sSchNm, sMCash, sDayDeduct, sBasic, sUse : string;
begin
	SetDebugeWrite('Tfrm_AIC01.btnSearchA2Click');
	Try
		iRow := cxMCash_SchList.DataController.FocusedRecordIndex;

		if Not Assigned(Frm_WOR24) Or (Frm_WOR24 = Nil) then Frm_WOR24 := TFrm_WOR24.Create(Nil);

		Frm_WOR24.Proc_Init;
		Frm_WOR24.lblSosokNameA1.Caption := lblSosokNameA1.Caption;
		Frm_WOR24.edt_HdNo.Text := edt_HdNo.Text;
		if btn_MCashSchInsert.Tag = 1 then 
		begin
			if iRow < 0 then exit;

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

			Frm_WOR24.lb_Title.Caption := 'M-Cash 스케줄 수정';

			Frm_WOR24.edt_MCashSch.Text := sSchNm;
			Frm_WOR24.edt_MCash.value := StrToIntDef(sMCash,0);
			Frm_WOR24.edt_DayDeduct.value := StrToIntDef(sDayDeduct,0);

			if sUse = '사용' then Frm_WOR24.cb_SchUse.ItemIndex := 0 else Frm_WOR24.cb_SchUse.ItemIndex := 1;
			if sBasic = '기본스케줄' then Frm_WOR24.cb_BasicSchUse.ItemIndex := 0 else Frm_WOR24.cb_BasicSchUse.ItemIndex := 1;
			Frm_WOR24.edt_SchNo.Text := sSchNo;
			Frm_WOR24.btn_Save.Caption := '수정';
			Frm_WOR24.btn_MCashSchSearch.Click;
			Frm_WOR24.btn_Save.Tag := 1;
		end else
		begin
			if FWkList.count > 0 then 
			begin
				Frm_WOR24.FWkList.Assign(FWkList);
				Frm_WOR24.edt_Cnt.Caption := IntToStr(FWkList.Count);
			end;
			Frm_WOR24.btn_Save.Tag := 0;

			Frm_WOR24.lb_Title.Caption := 'M-Cash 스케줄 등록';
			Frm_WOR24.btn_MCashSchSearch.Click;
			Frm_WOR24.btn_Save.Caption := '저장';

		end;
		Frm_WOR24.Show;
		Frm_WOR24.edt_MCashSch.SetFocus;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	End;

																
	Frm_WOR24.Show;
end;

procedure Tfrm_WOR23.btn_MCashSchSearchClick(Sender: TObject);
begin
	proc_MCashSchSerach('');
	btn_MCashSchSearch.Tag := 0;
	btn_Del.Enabled := False;
end;

procedure Tfrm_WOR23.btn_RightWkSearchClick(Sender: TObject);
begin
	proc_MCashWkSerach('2');
end;

procedure Tfrm_WOR23.btn_InitClick(Sender: TObject);
var i : integer;
begin
	cxMCash_RevList.DataController.SetRecordCount(0);
	for i := 0 to cxMCash_RevList.ColumnCount - 1 do
		cxMCash_RevList.Columns[i].DataBinding.ValueType := 'String';
	cxMCash_RevList.Columns[0].DataBinding.ValueType := 'Integer';
	cxMCash_RevList.Columns[5].DataBinding.ValueType := 'Currency';

	cxMCash_WorkerList.DataController.SetRecordCount(0);
	for i := 0 to cxMCash_WorkerList.ColumnCount - 1 do
		cxMCash_WorkerList.Columns[i].DataBinding.ValueType := 'String';
	cxMCash_WorkerList.Columns[0].DataBinding.ValueType := 'Integer';
	cxMCash_WorkerList.Columns[5].DataBinding.ValueType := 'Currency';

	edt_MCashSch.Text := '';
	cb_SchUse.ItemIndex := -1;
	edt_MCash.Text := '0';
	edt_DayDeduct.Text := '0';
	cb_BasicSchUse.ItemIndex := -1;
	btn_MCashSchInsert.Caption := '스케줄 등록';
	btn_MCashSchInsert.Tag := 0;

	edt_SchNo.Text := '';
	edt_Cnt.Caption := '0';
	btn_Del.Enabled := False;
	FWkList.Clear;
end;

procedure Tfrm_WOR23.btn_DelClick(Sender: TObject);
var iCol, iRow : integer;
	sTmp, sSchNo : string;
begin
	SetDebugeWrite('Tfrm_WOR23.btn_DelClick');
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
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	End;
end;

procedure Tfrm_WOR23.btn_RightLeftAddClick(Sender: TObject);
var
	iRow, iCol, iTag : Integer;
	sTmp, sSchNo, sSabun, sSchNm, sWkName : string;
begin
	SetDebugeWrite('Tfrm_WOR23.btn_RightLeftAddClick');
	Try
		iRow := cxMCash_SchList.DataController.FocusedRecordIndex;
		sSchNo := '';
		if iRow < 0 then
		begin
			GMessagebox('선택된 스케줄이 없습니다.'+#13#10+#13#10
								+ '리스트에서 스케줄을 선택하십시오', CDMSE);
			Exit;
		end;

		iCol := cxMCash_SchList.GetColumnByFieldName('스케줄일련번호').Index;
		sSchNo := cxMCash_SchList.DataController.Values[iRow, iCol];

		iCol := cxMCash_SchList.GetColumnByFieldName('스케줄명').Index;
		sSchNm := cxMCash_SchList.DataController.Values[iRow, iCol];

		iTag := TcxButton(Sender).Tag;
		if iTag = 0 then
		begin
			iRow := cxMCash_RevList.DataController.FocusedRecordIndex;
			
			iCol := cxMCash_RevList.GetColumnByFieldName('콜마너사번').Index;
			sSabun := cxMCash_RevList.DataController.Values[iRow, iCol];
			iCol := cxMCash_RevList.GetColumnByFieldName('기사명').Index;
			sWkName := cxMCash_RevList.DataController.Values[iRow, iCol];
			sTmp := '[스케줄에서 제외]' + #13#10 + sWkName + '기사를 ' + sSchNm + ' 스케줄에서 제외하시겠습니까?';
			sSchNo := ''; //제외시에는 스케줄 빈값으로
		end else
		if iTag = 1 then
		begin
			iRow := cxMCash_WorkerList.DataController.FocusedRecordIndex;
			
			iCol := cxMCash_WorkerList.GetColumnByFieldName('콜마너사번').Index;
			sSabun := cxMCash_WorkerList.DataController.Values[iRow, iCol];
			iCol := cxMCash_WorkerList.GetColumnByFieldName('기사명').Index;
			sWkName := cxMCash_WorkerList.DataController.Values[iRow, iCol];
			sTmp := '[스케줄에 추가]' + #13#10 + sWkName + '기사를 ' + sSchNm + ' 스케줄에 추가하시겠습니까?';
		end;

		if sSabun = '' then 
		begin
			GMessagebox('선택된 기사가 없습니다.', CDMSE);
			Exit;
		end;

		if Application.MessageBox(PChar(sTmp), CDMSI, MB_YESNO +
			MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
		begin
			if func_MCashAddWK(sSchNo, sSabun) then
			begin 
				btn_RightWkSearch.Click;
				btn_LeftWkSearch.Click;
			end;
		end;

	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	End;
end;

procedure Tfrm_WOR23.cxMCash_SchListCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var iCol, iRow : integer;
	sSchNo, sSchNm, sMCash, sDayDeduct, sBasic, sUse : string;
begin
	SetDebugeWrite('Tfrm_AIC01.btnSearchA2Click');
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

		btn_MCashSchInsert.Caption := '스케줄 수정';
		btn_MCashSchInsert.Tag := 1;
		edt_SchNo.Text := sSchNo;
		btn_Del.Enabled := True;

	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	End;
end;

procedure Tfrm_WOR23.cxMCash_SchListCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
	SetDebugeWrite('Tfrm_WOR23.cxMCash_SchListCellDblClick');
	Try
		proc_MCashWkSerach('1');
		proc_MCashWkSerach('2');
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	End;
end;

procedure Tfrm_WOR23.lb_BasicSchMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(pnl_BasicSch.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_WOR23.lb_DeductMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
	ReleaseCapture;
	PostMessage(pnl_DayDeduct.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_WOR23.edt_BrNameEnter(Sender: TObject);
begin
	lbSearchBranch1.Visible := False;
end;

procedure Tfrm_WOR23.edt_BrNameExit(Sender: TObject);
begin
	lbSearchBranch1.Visible := (edt_BrName.Text = '');
end;

procedure Tfrm_WOR23.edt_BrNameFocusChanged(Sender: TObject);
begin
	lbSearchBranch1.Visible := ( Not edt_BrName.Focused ) And (edt_BrName.Text = '');
end;

procedure Tfrm_WOR23.edt_BrNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	SetDebugeWrite('Tfrm_WOR23.edt_BrNameKeyDown');
	if Key = VK_BACK then
	begin
		if (Length(edt_BrName.Text) <= 1) then
		begin
			lst_BRList1.Items.Clear;
			searchBRlist1.Clear;
			lst_BRList1.Visible := False;
			Exit;
		end;
	end else
	if Key = VK_DOWN then
	begin
		if lst_BRLIst1.ItemIndex < 0 then lst_BRLIst1.ItemIndex := 0;
		if lst_BRList1.Visible then lst_BRList1.SetFocus;
	end else
	if Key = VK_RETURN then
	begin
		try
			cboBranch.ItemIndex := StrToIntDef(searchBRlist1[0], 0);
		except

		end;
		edt_Search2.SetFocus;
		lst_BRList1.Visible := False;
	end; 
end;

procedure Tfrm_WOR23.edt_BrNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	SetDebugeWrite('Tfrm_WOR23.edt_BrNameKeyUp');
	if (key <> 229) then
	begin
		if Trim(edt_BrName.Text) = '' then
		begin
			edt_BrName.SetFocus;
			Exit;
		end;

		if Length(Trim(edt_BrName.Text)) >= 1 then
		begin
			if not func_BrNameList_Search(1) then Exit;
		end;  
	end;    
end;

procedure Tfrm_WOR23.edt_BrNameMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	SetDebugeWrite('Tfrm_WOR23.cxTSearchMainTelMouseDown');
	if lst_BRList1.Items.Count > 0 then
	begin
		if lst_BRList1.Items.Count > 30 then
			lst_BRList1.Height := 500
		else
			lst_BRList1.Height := lst_BRList1.Items.Count * 18;
		lst_BRList1.Left := 107;
		lst_BRList1.Top := 30;
		lst_BRList1.Visible := True;
	end;
end;

procedure Tfrm_WOR23.edt_BrNamePropertiesChange(Sender: TObject);
begin
	if ( Not edt_BrName.Focused ) then
		lbSearchBranch1.Visible := (edt_BrName.Text = ''); // 상담메모 입력 잔상.
end;

procedure Tfrm_WOR23.edt_Search1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then btn_LeftWkSearch.Click;
end;

procedure Tfrm_WOR23.edt_Search2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then btn_RightWkSearch.Click;
end;

procedure Tfrm_WOR23.edt_SearchSchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then proc_MCashSchSerach(Trim(edt_SearchSch.Text));
end;

procedure Tfrm_WOR23.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
	cxLblActive.Visible := True;
end;

procedure Tfrm_WOR23.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	FreeAndNil(searchBRlist1);
	FreeAndNil(FWkList);
	if Assigned(Frm_WOR24) then Frm_WOR24.Close;         // MCash관리}

	Action := caFree;
end;

procedure Tfrm_WOR23.FormCreate(Sender: TObject);
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

	searchBRlist1 := TStringList.Create;
	FWkList := TStringList.Create;
  proc_init;
end;

procedure Tfrm_WOR23.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure Tfrm_WOR23.FormDestroy(Sender: TObject);
begin
  Frm_WOR23 := Nil;
end;

procedure Tfrm_WOR23.FormShow(Sender: TObject);
begin
  fSetFont(Frm_WOR23, GS_FONTNAME);
	SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);
end;

function Tfrm_WOR23.func_BrNameList_Search(ATag: integer): Boolean;
var
	i, iOldIdx: integer;
	bRlt: boolean;
	sKey: string;
begin
	SetDebugeWrite('Tfrm_WOR23.func_BrNameList_Search');
  try
		if ATag = 1 then
		begin
			bRlt := False;
			lst_BRList1.Items.Clear;
			searchBRlist1.Clear;
			sKey := edt_BrName.text; // 조회할 지사명 읽기.

			iOldIdx := cboBranch.ItemIndex;  // 현재 index 값을 저장.[못찾을 경우 현재 선택지사로 되돌려줌]
			cboBranch.Tag := 1;
			lst_BRList1.Items.BeginUpdate;
			// 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
			for i := 0 to cboBranch.Properties.Items.Count - 1 do
			begin

				if (Pos(sKey, cboBranch.Properties.Items.Strings[i]) > 0) then
				begin // 지사명  찾기..
					lst_BRList1.Items.Add(cboBranch.Properties.Items.Strings[i]);

					searchBRlist1.Add(inttostr(i));
					bRlt := True;
				end;
			end;
			lst_BRList1.Items.EndUpdate;
			cboBranch.ItemIndex := iOldIdx;
			lst_BRList1.Visible := True;
			lst_BRList1.Left := 107;
			lst_BRList1.Top := 30;
			if lst_BRList1.Items.Count > 30 then
				lst_BRList1.Height := 500
			else
				lst_BRList1.Height := lst_BRList1.Items.Count * 18;
			cboBranch.Tag := 0;
			// 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
			Result := bRlt; 
		end else
		if ATag = 2 then
		begin
{			bRlt := False;
			lst_BRList2.Items.Clear;
			searchBRlist2.Clear;
			sKey := edtCashMoveBrName2.text; // 조회할 지사명 읽기.

			iOldIdx := cxcbCashMoveBrName2.ItemIndex;  // 현재 index 값을 저장.[못찾을 경우 현재 선택지사로 되돌려줌]
			cxcbCashMoveBrName2.Tag := 1;
			lst_BRList2.Items.BeginUpdate;
			// 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
			for i := 0 to cxcbCashMoveBrName2.Properties.Items.Count - 1 do
			begin
				if (Pos(sKey, cxcbCashMoveBrName2.Properties.Items.Strings[i]) > 0) then
				begin // 지사명  찾기..
					lst_BRList2.Items.Add(cxcbCashMoveBrName2.Properties.Items.Strings[i]);
					searchBRlist2.Add(inttostr(i));
					bRlt := True;
				end;
			end;
			lst_BRList2.Items.EndUpdate;
			cxcbCashMoveBrName2.ItemIndex := iOldIdx;
			lst_BRList2.Visible := True;
			lst_BRList2.Left := 286;
			lst_BRList2.Top := 168;
			if lst_BRList2.Items.Count > 30 then
				lst_BRList2.Height := 500
			else
				lst_BRList2.Height := lst_BRList2.Items.Count * 18;
			cxcbCashMoveBrName2.Tag := 0;
			// 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
			Result := bRlt;  }
		end;
	Except
		on e: exception do
		begin
      Assert(False, 'proc_BrNameList_Search Error :' + E.Message);
    end;
  end;
end;

function Tfrm_WOR23.func_MCashAddWK(ASch, ASabun: string): Boolean;
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

function Tfrm_WOR23.func_SetMCashSch(AGubun, ASchNo: string): String;
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

		btn_Del.Enabled := False;
		if not RequestBase(GetCallable06('SET_MCASH_SCHEDULE_SAVE ', 'MCASH.SET_MCASH_SCHEDULE_SAVE', param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('M-CASH 설정 등록 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			btn_Del.Enabled := True;
			result := 'fail';
			Exit;
		end;
		btn_Del.Enabled := True;

	except
		on E: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure Tfrm_WOR23.img_BasicSchClick(Sender: TObject);
begin
	pnl_BasicSch.Left := 488;
	pnl_BasicSch.Top := 61;
	if pnl_BasicSch.Visible then pnl_BasicSch.Visible := False else pnl_BasicSch.Visible := True;
end;

procedure Tfrm_WOR23.img_DayDeductClick(Sender: TObject);
begin
	pnl_DayDeduct.Left := 244;
	pnl_DayDeduct.Top := 61;
	if pnl_DayDeduct.Visible then pnl_DayDeduct.Visible := False else pnl_DayDeduct.Visible := True;
end;

procedure Tfrm_WOR23.lbSearchBranch1Click(Sender: TObject);
begin
	edt_BrName.SetFocus;
end;

procedure Tfrm_WOR23.lst_BRList1DblClick(Sender: TObject);
begin
	SetDebugeWrite('Tfrm_WOR23.lst_BRListDblClick');
	cboBranch.ItemIndex := StrToIntDef(searchBRlist1[lst_BRList1.ItemIndex], 0);
	lst_BRList1.Visible := False;
end;

procedure Tfrm_WOR23.lst_BRList1Exit(Sender: TObject);
begin
	SetDebugeWrite('Tfrm_WOR23.lst_BRListExit');
	lst_BRList1.Visible := False;
end;

procedure Tfrm_WOR23.lst_BRList1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	SetDebugeWrite('Tfrm_WOR23.lst_BRListKeyDown');
	if key = vk_Return then
	begin
		if lst_BRList1.ItemIndex < 0 then exit;
		cboBranch.ItemIndex := StrToIntDef(searchBRlist1[lst_BRList1.ItemIndex], 0);
		lst_BRList1.Visible := False;
	end else
	if Key = VK_UP then
	begin
		if lst_BRlist1.Selected[0] then edt_BrName.SetFocus;
	end;
end;

procedure Tfrm_WOR23.MenuItem1Click(Sender: TObject);
begin
	if cxMCash_RevList.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
    Exit;
  end;

	if TCK_USER_PER.WOR_ExcelDown <> '1' then
	begin
    ShowMessage('[엑셀다운로드[기사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

	Frm_Main.sgExcel := '설정된 기사리스트.xls';
	Frm_Main.sgRpExcel := Format('기사>M캐시>설정된 기사리스트]%s건/%s',
												[GetMoneyStr(cxMCash_RevList.DataController.RecordCount), '설정된 기사리스트']);
	Frm_Main.cxGridExcel := cxGrid4;
  Frm_Main.proc_excel(0);
end;

procedure Tfrm_WOR23.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_WOR23.proc_init;
var i : integer;
begin
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

	cxMCash_RevList.DataController.SetRecordCount(0);
	for i := 0 to cxMCash_RevList.ColumnCount - 1 do
		cxMCash_RevList.Columns[i].DataBinding.ValueType := 'String';
	cxMCash_RevList.Columns[0].DataBinding.ValueType := 'Integer';
	cxMCash_RevList.Columns[5].DataBinding.ValueType := 'Currency';

	cxMCash_WorkerList.DataController.SetRecordCount(0);
	for i := 0 to cxMCash_WorkerList.ColumnCount - 1 do
		cxMCash_WorkerList.Columns[i].DataBinding.ValueType := 'String';
	cxMCash_WorkerList.Columns[0].DataBinding.ValueType := 'Integer';
	cxMCash_WorkerList.Columns[5].DataBinding.ValueType := 'Currency';

	edt_MCashSch.Text := '';
	cb_SchUse.ItemIndex := -1;
	edt_MCash.Text := '0';
	edt_DayDeduct.Text := '0';
	cb_BasicSchUse.ItemIndex := -1;

	btn_MCashSchInsert.Caption := '스케줄 등록';
	btn_MCashSchInsert.Tag := 0;
	btn_Del.Enabled := False;

	edt_SchNo.Text := '';
	edt_HdNo.Text := '';
end;

procedure Tfrm_WOR23.proc_MCashSchSerach(ASch: string);
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i, j, iBasic : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	sTmp, sSchNo : string;
	gHandled : Boolean; // 클릭이벤트 out파라메타
begin
	SetDebugeWrite('Tfrm_WOR23.gHandled : Boolean; // 클릭이벤트 out파라메타');
	Try
		cxMCash_SchList.DataController.SetRecordCount(0);

		sTmp := pWOR23Dock.HdNo;
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
								//스케쥴일련번호, 스케쥴명, 본사코드, 일차감금액, 한도금액, 전체기사, 정상기사,퇴직기사, 기타기사, 
								//다음날 충전예상금액, 총충전해야될금액, 현재총금액 , 사용여부, 기본여부,사용자,등록일

									cxMCash_SchList.DataController.Values[iRow, 0] := IntToStr(iRow+1);
									cxMCash_SchList.DataController.Values[iRow, 1] := ls_Rcrd[1];            //스케줄명	
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
									cxMCash_SchList.DataController.Values[iRow,13] := ls_Rcrd[15];           //등록일
									cxMCash_SchList.DataController.Values[iRow,14] := ls_Rcrd[14];           //등록자 
									cxMCash_SchList.DataController.Values[iRow,15] := ls_Rcrd[0];            //스케줄일련번호
									cxMCash_SchList.DataController.Values[iRow,16] := ls_Rcrd[2];            //본사코드

									if ls_Rcrd[13] = 'y' then sSchNo := ls_Rcrd[0];
								end;
							finally
								ls_Rcrd.Free;
							end;
							cxMCash_SchList.EndUpdate;
						end;
					end;
			
					if cxMCash_SchList.DataController.RecordCount = 0 then
					begin
						GMessagebox('조회하신 M-Cash 스케줄이 없습니다.', CDMSE);
						Exit;
					end else
					begin
						if btn_MCashSchSearch.Tag = 99 then    //기사 선택 후 최초 조회시 기본스케줄을 선택
						begin
							if sSchNo <> '' then
							begin
								iBasic := cxMCash_SchList.DataController.FindRecordIndexByText(0, 15, sSchNo, False, True, True);
	//							cxMCash_SchList.DataController.FocusedRecordIndex := iBasic;
	//							cxGrid1.SetFocus;

								if iBasic > -1 then
								begin
									cxMCash_SchList.Controller.FocusedRowIndex := iBasic;
									cxMCash_SchListCellClick(cxMCash_SchList, cxMCash_SchList.Items[1].FocusedCellViewInfo, mbLeft,[ssLeft], gHandled);    //셀클릭
									sleep(500);
									cxMCash_SchListCellDblClick(cxMCash_SchList, cxMCash_SchList.Items[1].FocusedCellViewInfo, mbLeft,[ssLeft], gHandled);    //셀더블클릭
									cxGrid1.setfocus;
                end;
							end;
							
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

procedure Tfrm_WOR23.proc_MCashWkSerach(AGubun: string);
	procedure proc_LeftWkList(AList : TStringList);
	var iRow : integer;
	begin
		iRow := cxMCash_RevList.DataController.AppendRecord; // 1 Record 추가
		//기사명, 지사명,기사상태,자체사번,MCASH잔액, 스케줄명, 설정된 스케줄코드, 지사코드 
		//4223*정경석│(주)콜마너│보험료+사용료미납│34223│32000│테스트│1│B100
		cxMCash_RevList.DataController.Values[iRow, 0] := IntToStr(iRow+1);
		cxMCash_RevList.DataController.Values[iRow, 1] := AList[1];            //지사명	
		cxMCash_RevList.DataController.Values[iRow, 2] := AList[3];            //자체사번
		cxMCash_RevList.DataController.Values[iRow, 3] := AList[0];            //기사명
		cxMCash_RevList.DataController.Values[iRow, 4] := AList[2];            //기사상태
		cxMCash_RevList.DataController.Values[iRow, 5] := AList[4];            //MCASH잔액
		cxMCash_RevList.DataController.Values[iRow, 6] := AList[5];            //스케줄명
		cxMCash_RevList.DataController.Values[iRow, 7] := AList[6];            //스케줄코드
		cxMCash_RevList.DataController.Values[iRow, 8] := AList[7];            //지사코드
		cxMCash_RevList.DataController.Values[iRow, 9] := AList[8];            //콜마너사번
	end;
	procedure proc_RightWkList(AList : TStringList);
	var iRow : integer;
	begin
		if (not chk_Retired.Checked) and (AList[2] = '퇴직') then exit;
		iRow := cxMCash_WorkerList.DataController.AppendRecord; // 1 Record 추가
		//기사명, 지사명,기사상태,자체사번,MCASH잔액, 스케줄명, 설정된 스케줄코드, 지사코드 

		cxMCash_WorkerList.DataController.Values[iRow, 0] := IntToStr(iRow+1);
		cxMCash_WorkerList.DataController.Values[iRow, 1] := AList[1];            //지사명	
		cxMCash_WorkerList.DataController.Values[iRow, 2] := AList[3];            //자체사번
		cxMCash_WorkerList.DataController.Values[iRow, 3] := AList[0];            //기사명
		cxMCash_WorkerList.DataController.Values[iRow, 4] := AList[2];            //기사상태
		cxMCash_WorkerList.DataController.Values[iRow, 5] := AList[4];            //MCASH잔액
		cxMCash_WorkerList.DataController.Values[iRow, 6] := AList[5];            //스케줄명
		cxMCash_WorkerList.DataController.Values[iRow, 7] := AList[6];            //스케줄코드
		cxMCash_WorkerList.DataController.Values[iRow, 8] := AList[7];            //지사코드
		cxMCash_WorkerList.DataController.Values[iRow, 9] := AList[8];            //콜마너사번
	end;
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i, j, iCol : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	sTmp, sSchNo : string;
begin
	SetDebugeWrite('Tfrm_AIC01.proc_MCashWkSerach');
	Try

		iRow := cxMCash_SchList.DataController.FocusedRecordIndex;
		sSchNo := '';
		if iRow > -1 then
		begin
			iCol := cxMCash_SchList.GetColumnByFieldName('스케줄일련번호').Index;
			sSchNo := cxMCash_SchList.DataController.Values[iRow, iCol];
		end;

		if sSchNo = '' then 
		begin
			GMessagebox('스케줄이 선택되지 않았습니다..' + #13#10 + '선택 후 다시 시도해 주세요', CDMSE);
			exit;
		end;
		sTmp := pWOR23Dock.HdNo;

		//본사코드, 지사코드, 스케줄일련번호 ,  1 자체사번, 2 기사명, 3 hp , 선택한 조회의 값 ,  1 선택기사, 2 미선택기사
{		if AGubun = '0' then //전체
		begin
			if sSchNo = '' then
			begin
				GMessagebox('스케줄이 선택되지 않았습니다..' + #13#10 + '선택 후 다시 시도해 주세요', CDMSE);
				exit
			end;
			cxMCash_RevList.DataController.SetRecordCount(0);
			cxMCash_WorkerList.DataController.SetRecordCount(0);
			
			Param := sTmp + '│' + '' + '│' + sSchNo + '│' + '' + '│' + '' + '│' + '';
		end else  }
		if AGubun = '1' then //선택스케줄에 등록된 기사
		begin
			if sSchNo = '' then
			begin
				GMessagebox('스케줄이 선택되지 않았습니다..' + #13#10 + '선택 후 다시 시도해 주세요', CDMSE);
				exit
			end;
			Param := sTmp ;

			cxMCash_RevList.DataController.SetRecordCount(0);
			sTmp := IntToStr(cb_Sel1.ItemIndex + 1);

			Param := Param + '│' + '' + '│' + sSchNo + '│' + sTmp + '│' + Trim(edt_Search1.Text) + '│' + '1';
		end else
		if AGubun = '2' then //선택스케줄에 등록되지 않은 기사
		begin
			cxMCash_WorkerList.DataController.SetRecordCount(0);

			Param := sTmp ;

			if cboBranch.ItemIndex = 0 then Param := Param + '│' + '' else Param := Param + '│' + scb_BranchCode[cboBranch.ItemIndex - 1] ;

			sTmp := IntToStr(cb_Sel2.ItemIndex+1);
			Param := Param + '│' + sSchNo + '│' + sTmp + '│' + Trim(edt_Search2.Text) + '│' + '2';
		end;

{		if TCK_USER_PER.AIC_DetailList <> '1' then  // 회사 : AI-OB 배차지연콜 상세내역
		begin
			ShowMessage('[AI-OB 배차지연콜 상세내역] 권한이 없습니다.'+#13#10+'관리자에게 문의(권한요청) 바랍니다.' +#13#10+#13#10
								+ '권한항목 >> 회사 : AI-OB 배차지연콜 상세내역');
			Exit;
		end;
}
		Screen.Cursor := crHourGlass;
		btn_MCashSchSearch.Enabled := False;
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel06('WK_MCASH_SCHEDULE_SELECT_LIST', 'MCASH.WK_MCASH_SCHEDULE_SELECT_LIST', '1000', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('M-Cash 스케줄 등록 기사조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				Screen.Cursor := crDefault;
				btn_MCashSchSearch.Enabled := True;
				Exit;
			end;

			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
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
							cxMCash_RevList.BeginUpdate;
							cxMCash_WorkerList.BeginUpdate;
							ls_Rcrd := TStringList.Create;
							try
								for i := 0 to lst_Result.length - 1 do
								begin
									GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
									Application.ProcessMessages;

                  // 패밀리일경우 권한있는 지사 기사들만 표시
									if (IsFamily) and (scb_BranchCode.IndexOf(ls_Rcrd[7]) = -1) then Continue;

									if ls_Rcrd[6] = sSchNo then
									begin
										proc_LeftWkList(ls_Rcrd);
									end else
									begin
										proc_RightWkList(ls_Rcrd);
									end;
								end;
							finally
								ls_Rcrd.Free;
							end;
							cxMCash_RevList.EndUpdate;
							cxMCash_WorkerList.EndUpdate;
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
	End;
end;

end.

unit xe_WOR05;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  System.StrUtils, xe_GNL, MSXML2_TLB,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxControls, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxLabel, cxCurrencyEdit, cxPCdxBarPopupMenu, cxPC, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.StdCtrls, cxRadioGroup, cxDropDownEdit,
  cxCalendar, cxTextEdit, cxMaskEdit, cxGroupBox, cxButtons, Vcl.ExtCtrls,
  dxBarBuiltInMenu, cxSpinEdit, dxSkinsCore, dxSkinscxPCPainter, cxCheckBox, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark,
  dxSkinOffice2007Silver, dxScrollbarAnnotations;

type
  TBookingWK = record
    WkSabun2,
    WkName,
    WkSabun,
    WkStatus,
    WkCash,
    WkCyCash : Tstringlist;
  end;
  TBookingWK_Sel = record
    WkSabun2,
    WkName,
    WkSabun,
    WkStatus,
    WkCash,
    WkCyCash : string;
  end;
type
  TFrm_WOR05 = class(TForm)
    Panel8: TPanel;
    cxrbInit: TcxButton;
    cxrbDel: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxLabel10: TcxLabel;
    cxbWkDel: TcxButton;
    cxGrid1: TcxGrid;
    cxgResWkList: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridWkConnect: TcxGrid;
    cxgResList: TcxGridDBTableView;
    cxgResListColumn1: TcxGridDBColumn;
    cxgResListColumn2: TcxGridDBColumn;
    cxgResListColumn3: TcxGridDBColumn;
    cxgResListColumn4: TcxGridDBColumn;
    cxgResListColumn5: TcxGridDBColumn;
    cxgResListColumn6: TcxGridDBColumn;
    cxgResListColumn7: TcxGridDBColumn;
    cxgResListColumn8: TcxGridDBColumn;
    cxgResListColumn9: TcxGridDBColumn;
    cxgResListColumn10: TcxGridDBColumn;
    cxgResListColumn11: TcxGridDBColumn;
    cxgResListColumn12: TcxGridDBColumn;
    cxgResListColumn13: TcxGridDBColumn;
    cxgResListColumn14: TcxGridDBColumn;
    cxgResListColumn15: TcxGridDBColumn;
    cxgResListColumn16: TcxGridDBColumn;
    cxgResListColumn17: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxPageControl2: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxLabel8: TcxLabel;
    cxGrid2: TcxGrid;
    cxgNOResWkList: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxTextEdit2: TcxTextEdit;
    cxButton5: TcxButton;
    cxbwkAdd: TcxButton;
    cxcbSel1: TcxComboBox;
    cxTextEdit1: TcxTextEdit;
    cxButton4: TcxButton;
    cxcbSel: TcxComboBox;
    cxedKey: TcxTextEdit;
    cxButton3: TcxButton;
    pnlTitle: TPanel;
    BtnClose: TcxButton;
    cxGroupBox2: TcxGroupBox;
    PnlMain: TPanel;
    cxLblActive: TLabel;
    cxgResListColumn18: TcxGridDBColumn;
    cxgResListColumn19: TcxGridDBColumn;
    cxbAdd: TcxButton;
    cxGroupBox3: TcxGroupBox;
    cxgResListColumn20: TcxGridDBColumn;
    cxgResListColumn21: TcxGridDBColumn;
    cxgResListColumn22: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxLabel14: TcxLabel;
    pmExcel2: TPopupMenu;
    MenuItem1: TMenuItem;
    cxComboBox1: TcxComboBox;
    cb_WkStatus: TcxComboBox;
    cxPageControl3: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape11: TShape;
    cxcbBrName: TcxComboBox;
    cxcbWkGubun: TcxComboBox;
    cxedMemo: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxlbCnt: TcxLabel;
    cxlbl1: TcxLabel;
    endDate1: TcxDateEdit;
    Panel9: TPanel;
    Shape9: TShape;
    cxrbDay: TcxRadioButton;
    cxrbWeek: TcxRadioButton;
    cxrbMonth: TcxRadioButton;
    cxrbNone: TcxRadioButton;
    pnlWkStatus: TPanel;
    Shape10: TShape;
    cxrb0: TcxRadioButton;
    cxrb1: TcxRadioButton;
    cxrb10: TcxRadioButton;
    cxrb21: TcxRadioButton;
    cxrb22: TcxRadioButton;
    cxrb23: TcxRadioButton;
    cxrb30: TcxRadioButton;
    cxrb40: TcxRadioButton;
    cxrb60: TcxRadioButton;
    startDate1: TcxDateEdit;
    cxceCash: TcxSpinEdit;
    cxcbToBrName: TcxComboBox;
    cxLabel9: TcxLabel;
    cxGroupBox4: TcxGroupBox;
    Shape12: TShape;
    Shape13: TShape;
    Shape15: TShape;
    cxChkMY: TcxCheckBox;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cEdYearS: TcxCurrencyEdit;
    cEdYearE: TcxCurrencyEdit;
    cxLabel13: TcxLabel;
    cxSEMon: TcxDateEdit;
    Label5: TcxLabel;
    cxTabSheet4: TcxTabSheet;
    cxGroupBox5: TcxGroupBox;
    Shape14: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape21: TShape;
    Shape23: TShape;
    cb_BrName: TcxComboBox;
    edt_Memo: TcxTextEdit;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    edtCnt: TcxLabel;
    cxLabel23: TcxLabel;
    edt_DayCash: TcxSpinEdit;
    cb_ToBrName: TcxComboBox;
    cxLabel24: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel16: TcxLabel;
    edt_TotCash: TcxSpinEdit;
    cxLabel17: TcxLabel;
    pnl_Calc: TPanel;
    lbTotCash: TcxLabel;
    cxLabel25: TcxLabel;
    lbDayCash: TcxLabel;
    Shape19: TShape;
    cxLabel22: TcxLabel;
    btn_Calc: TcxButton;
    cxLabel27: TcxLabel;
    cxLabel29: TcxLabel;
    lbSDate: TcxLabel;
    cxLabel31: TcxLabel;
    lbDays: TcxLabel;
    lbEDate: TcxLabel;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    lbDayCash2: TcxLabel;
    lbModCash: TcxLabel;
    cxLabel37: TcxLabel;
    cxLabel15: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
		procedure FormCreate(Sender: TObject);
    procedure cxrbInitClick(Sender: TObject);
    procedure cxcbWkGubunClick(Sender: TObject);
    procedure cxrb0Click(Sender: TObject);
		procedure cxbAddClick(Sender: TObject);
    procedure cxrbDelClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxbWkDelClick(Sender: TObject);
    procedure cxgResListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxbwkAddClick(Sender: TObject);
    procedure cxedKeyKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxTextEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxgNOResWkListCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxgResWkListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxgNOResWkListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxgResListDataControllerSortingChanged(Sender: TObject);
    procedure cxgResListColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxChkMYClick(Sender: TObject);
    procedure cxedMemoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxcbBrNamePropertiesChange(Sender: TObject);
		procedure MenuItem1Click(Sender: TObject);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure cb_BrNamePropertiesChange(Sender: TObject);
		procedure FormShow(Sender: TObject);
		procedure btn_CalcClick(Sender: TObject);
    procedure edt_TotCashKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_DayCashKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_MemoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
		FNOWkList: TStringList;
		FSELWKLIST : TBookingWK_Sel;
    GT_BookingWK: TBookingWK;
		AIndex : Integer;
		aHeadSort : Boolean;
		slFWkList : TStringList;
		procedure AddWkList(ASeq: string = '');
		procedure AddWkList2(ASeq: string = '');
		procedure proc_Finit;
		procedure proc_init;
		procedure proc_show;
		procedure proc_TotCashDayCashInput;
	public
    { Public declarations }
		FWkList: TStringList;
		First_BRNO : string;
		Sel_WkSabun : string;
		pWOR05Dock : TUNDOCKMNG;
		WorA1Tag : Integer;
		procedure proc_recieve(ls_rxxml: Widestring);
		procedure proc_search(iType: Integer);
		procedure proc_Ref;
		procedure proc_Ref1;
    procedure proc_wkMngSearch(iType: Integer = 0);
		procedure proc_SelectWK; //선택기사 추가 시 선택기사 리스트에 추가
    procedure proc_BookingWK;  //선택기사 그리드에 스트링 리스트 내용 뿌림
  end;

var
  Frm_WOR05: TFrm_WOR05;
  iTmpRow: Integer=-1;
  
implementation

{$R *.dfm}

uses xe_Dm, xe_Func, xe_gnl2, xe_gnl3, Main, xe_xml, xe_WOR, xe_Msg,
	xe_Query, xe_packet, xe_Lib, xe_Flash;


procedure TFrm_WOR05.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_WOR05.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_WOR05.FormCreate(Sender: TObject);
var
  Save: LongInt; // 폼타이틀 제거용.
  i : Integer;
begin
	try
    // 날짜형식이 'yy/mm/dd'일경우 오류 발생 가능성으로 인해 자체 Display 포맷 변경
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
  // 폼 타이틀 제거..
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

	FWkList := TStringList.Create;
	FNOWkList := TStringList.Create;
	slFWkList := TStringList.Create;

	proc_Finit;
end;

procedure TFrm_WOR05.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_WOR05.FormDestroy(Sender: TObject);
begin
	slFWkList.Free;
	FWkList.Free;
	FNOWkList.Free;
  FreeAndNil(GT_BookingWK.WkSabun2);
  FreeAndNil(GT_BookingWK.WkName);
  FreeAndNil(GT_BookingWK.WkSabun);
  FreeAndNil(GT_BookingWK.WkStatus);                
  FreeAndNil(GT_BookingWK.WkCash);
  FreeAndNil(GT_BookingWK.WkCyCash);
  Frm_WOR05 := Nil;
end;

procedure TFrm_WOR05.FormShow(Sender: TObject);
begin
  fSetFont(Frm_WOR05, GS_FONTNAME);

	slFWkList.Assign(FWkList); //연속등록을 위한 예비 기사리스트
end;

procedure TFrm_WOR05.MenuItem1Click(Sender: TObject);
begin
	if cxgResWkList.DataController.RecordCount = 0 then
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

	Frm_Main.sgExcel := '예약기사리스트.xls';
	Frm_Main.sgRpExcel := Format('기사>기사일비차감설정>예약기사리스트]%s건/%s',
												[GetMoneyStr(cxgResWkList.DataController.RecordCount), '예약기사리스트']);
	Frm_Main.cxGridExcel := cxGrid1;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_WOR05.proc_Finit;
var
  i: Integer;
begin
	cxGroupBox4.Left := 603;
	cxgResList.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to cxgResList.ColumnCount - 1 do
		cxgResList.Columns[i].DataBinding.ValueType := 'String';
	cxgResList.Columns[10].DataBinding.ValueType := 'Currency';

	for i := 0 to cxgResWkList.ColumnCount - 1 do
		cxgResWkList.Columns[i].DataBinding.ValueType := 'String';
	cxgResWkList.Columns[0].DataBinding.ValueType := 'Integer';

	for i := 0 to cxgNOResWkList.ColumnCount - 1 do
		cxgNOResWkList.Columns[i].DataBinding.ValueType := 'String';
	cxgNOResWkList.Columns[0].DataBinding.ValueType := 'Integer';

  try
    if TCK_USER_PER.COM_WkCashView = '1' then
    begin
      Frm_Main.gCurProperties.EchoMode := eemNormal;
    end else
    begin
      Frm_Main.gCurProperties.EchoMode := eemPassword;
    end;

    cxgResWkList.Columns[4].Properties := Frm_Main.gCurProperties;
    cxgResWkList.Columns[5].Properties := Frm_Main.gCurProperties;
    cxgNOResWkList.Columns[4].Properties := Frm_Main.gCurProperties;
    cxgNOResWkList.Columns[5].Properties := Frm_Main.gCurProperties;

    cxgResList.DataController.SetRecordCount(0);
    cxgResWkList.DataController.SetRecordCount(0);
    cxgNOResWkList.DataController.SetRecordCount(0);
    cxPageControl1.ActivePageIndex := 0;

    GT_BookingWK.WkSabun2 := TStringList.Create;
  	GT_BookingWK.WkName   := TStringList.Create;
  	GT_BookingWK.WkSabun  := TStringList.Create;
    GT_BookingWK.WkStatus := TStringList.Create;
    GT_BookingWK.WkCash   := TStringList.Create;
		GT_BookingWK.WkCyCash := TStringList.Create;

		aHeadSort := False;
  Except
  end;
end;

procedure TFrm_WOR05.cxrbInitClick(Sender: TObject);
begin
	// 2011.03.21 선입금
{  if cxcbWkGubun.text='선입금' then
  begin
    GMessagebox('선입금 수정은 불가합니다.', cdmsE);
    cxcbWkGubun.SetFocus;
		Exit;
	end;   }

	proc_Ref;
	proc_Ref1;
end;

procedure TFrm_WOR05.proc_Ref;
Var i, iCnt, iColCheck : Integer;
begin
	iCnt := 0;
  iColCheck := Frm_Main.Frm_WORA1[WorA1Tag].cxgWkCounsel.GetColumnByFieldName('').Index;
  for i := 0 to Frm_Main.Frm_WORA1[WorA1Tag].cxgWkCounsel.DataController.RecordCount - 1 do
  begin
    if Frm_Main.Frm_WORA1[WorA1Tag].cxgWkCounsel.ViewData.Records[i].Values[iColCheck] then // ok
    begin
			Inc(iCnt);
    end;
	end;
	cxChkMY.Checked := False;
	cxChkMYClick(cxChkMY);
	cEdYearS.Text := '';
	cEdYearE.Text := '';
	cxSEMon.Date := now;

	cxlbCnt.Caption := IntToStr(iCnt);
	cxrbDay.Checked := True;
	cxcbWkGubun.ItemIndex := 0;
	startDate1.Date := now + 1;
	endDate1.Text := '';
	cxceCash.Text := '';
	cxedMemo.Text := '';
	cxrb0.Checked := True;
	cxrb0Click(cxrb0);
	cxcbSel.ItemIndex := 0;
	cxedKey.Text := '';
	pnlWkStatus.Visible := False;
  cxbAdd.Caption := '등록';
  Panel9.Enabled := True;
	cxcbWkGubun.Enabled := True;
	startDate1.Enabled := True;
  endDate1.Enabled := True;
  cxceCash.Enabled := True;
	cxedMemo.Enabled := True;

	edtCnt.Caption := IntToStr(iCnt);
	edt_TotCash.Text := '';
	edt_DayCash.Text := '';
	edt_Memo.Text := '';

	cxTextEdit1.Text := '';
	cxTextEdit2.Text := '';
	cxgResList.DataController.SetRecordCount(0);

	cxgResWkList.DataController.SetRecordCount(0);
	GT_BookingWK.WkSabun2.Clear;
	GT_BookingWK.WkName.Clear;
	GT_BookingWK.WkSabun.Clear;
	GT_BookingWK.WkStatus.Clear;
	GT_BookingWK.WkCash.Clear;
	GT_BookingWK.WkCyCash.Clear;

	cxgNOResWkList.DataController.SetRecordCount(0);
	FWkList.Clear;
	FNOWkList.Clear;

	if TCK_USER_PER.COM_WkDayCashSet = '1' then
	begin
		cxbAdd.Enabled := True;
		cxrbDel.Enabled := True;
	end else
	begin
		cxbAdd.Enabled := False;
		cxrbDel.Enabled := False;
	end;
	
	aHeadSort := False;
	for I := 0 to cxgResList.ColumnCount - 1 do
	begin
		cxgResList.Columns[I].SortIndex := -1;
		cxgResList.Columns[I].SortOrder := soNone;
	end;  
// 컨트롤 초기화


//지사콤보세팅	
	cxcbBrName.Tag := 99;
	cxcbBrName.Properties.Items.Clear;
	cxcbToBrName.Properties.Items.Clear;

	cb_BrName.Tag := 99;
	cb_BrName.Properties.Items.Clear;
	cb_ToBrName.Properties.Items.Clear;

	if Not pWOR05Dock.bUnDock then pWOR05Dock.GUBUN := GT_SEL_BRNO.GUBUN;
	if Not pWOR05Dock.bUnDock then
	begin
		if pWOR05Dock.BrNo = GT_SEL_BRNO.BrNo then pWOR05Dock.BrNo := GT_SEL_BRNO.BrNo;
	end;

	First_BRNO := pWOR05Dock.BrNo;
	if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
  begin
		cxcbBrName.Properties.Items.Assign(scb_FamilyWkBranchName);
		cxcbBrName.ItemIndex := scb_FamilyWkBranchCode.IndexOf(pWOR05Dock.BrNo);

		cxcbToBrName.Properties.Items.Assign(scb_FamilyBrName);
		cxcbToBrName.ItemIndex := scb_FamilyBrCode.IndexOf(pWOR05Dock.BrNo);
		//기사가 있는 경우에만 입금지사 리스트에 포함 <=기존
		//전체 지사리스트 포함 <= 변경 20190503 KHS 정회귀 팀장요청
//		cxcbToBrName.Properties.Items.Assign(scb_FamilyWkBranchName);
//		cxcbToBrName.ItemIndex := scb_FamilyWkBranchCode.IndexOf(pWOR05Dock.BrNo);

		cb_BrName.Properties.Items.Assign(scb_FamilyWkBranchName);
		cb_BrName.ItemIndex := scb_FamilyWkBranchCode.IndexOf(pWOR05Dock.BrNo);

		cb_ToBrName.Properties.Items.Assign(scb_FamilyBrName);
		cb_ToBrName.ItemIndex := scb_FamilyBrCode.IndexOf(pWOR05Dock.BrNo);
	end else
	begin
		cxcbBrName.Properties.Items.Assign(scb_WkBranchName);
		cxcbBrName.ItemIndex := scb_WkBranchCode.IndexOf(pWOR05Dock.BrNo);

		cxcbToBrName.Properties.Items.Assign(scb_BranchName);
		cxcbToBrName.ItemIndex := scb_BranchCode.IndexOf(pWOR05Dock.BrNo);
		//기사가 있는 경우에만 입금지사 리스트에 포함 <=기존
		//전체 지사리스트 포함 <= 변경 20190503 KHS 정회귀 팀장요청
//		cxcbToBrName.Properties.Items.Assign(scb_BranchCode);
//		cxcbToBrName.ItemIndex := scb_WkBranchCode.IndexOf(pWOR05Dock.BrNo);

		cb_BrName.Properties.Items.Assign(scb_WkBranchName);
		cb_BrName.ItemIndex := scb_WkBranchCode.IndexOf(pWOR05Dock.BrNo);

		cb_ToBrName.Properties.Items.Assign(scb_BranchName);
		cb_ToBrName.ItemIndex := scb_BranchCode.IndexOf(pWOR05Dock.BrNo);
	end;
	cxcbBrName.Tag := 0;
	cb_BrName.Tag := 0;

end;

procedure TFrm_WOR05.proc_Ref1;
var iDx : integer;
begin
	cxcbBrName.Tag := 99;
	cxcbBrName.Properties.Items.Clear;
	cxcbToBrName.Properties.Items.Clear;
	if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
  begin
		cxcbBrName.Properties.Items.Assign(scb_FamilyWkBranchName);
		cxcbBrName.ItemIndex := scb_FamilyWkBranchCode.IndexOf(pWOR05Dock.BrNo);

		//기사가 있는 경우에만 입금지사 리스트에 포함 <=기존
		//전체 지사리스트 포함 <= 변경 20190503 KHS 정회귀 팀장요청
//		cxcbToBrName.Properties.Items.Assign(scb_FamilyWkBranchName);
//		cxcbToBrName.ItemIndex := scb_FamilyWkBranchCode.IndexOf(pWOR05Dock.BrNo);
		cxcbToBrName.Properties.Items.Assign(scb_FamilyBrName);
		cxcbToBrName.ItemIndex := scb_FamilyBrCode.IndexOf(pWOR05Dock.BrNo);
	end else
  begin
		cxcbBrName.Properties.Items.Assign(scb_WkBranchName);
		try
			iDx := scb_WkBranchCode.IndexOf(pWOR05Dock.BrNo);
		except
			if scb_WkBranchCode.count > 0 then iDx := 0 else iDx := -1;
		end;
		cxcbBrName.ItemIndex := iDx;
																										 
		cxcbToBrName.Properties.Items.Assign(scb_BranchName);
		try
			iDx := scb_BranchCode.IndexOf(pWOR05Dock.BrNo);
		except
			if scb_BranchCode.count > 0 then iDx := 0 else iDx := -1;
		end;
		cxcbToBrName.ItemIndex := iDx;
{		cxcbToBrName.Properties.Items.Assign(scb_WkBranchName);
		try
			iDx := scb_WkBranchCode.IndexOf(pWOR05Dock.BrNo);
		except
			if scb_WkBranchCode.count > 0 then iDx := 0 else iDx := -1;
		end;
		cxcbToBrName.ItemIndex := iDx;  }
	end;
	cxcbBrName.Tag := 0;
end;

procedure TFrm_WOR05.proc_search(iType: Integer);
var
	ls_TxLoad: string; // XML File Load
	sWorkerNode, rv_str, sWkSabun, sDate1, sDate2, sBrNo, sToBrNo, sSearch, sStatus: string;
	ls_rxxml: WideString;
	xdom: msDomDocument;
	lst_Node: IXMLDOMNodeList;
	lst_clon: IXMLDOMNode;
	i, iCnt, iRow, iBrNo, iSeq, iWkSabun, iType2 : Integer;
	slReceive: TStringList;
	ErrCode: integer;
	sTmp : string;
begin
	Screen.Cursor := crHourGlass;
	ls_rxxml := GTx_UnitXmlLoad('C029.XML');

	if Not pWOR05Dock.bUnDock then pWOR05Dock.GUBUN := GT_SEL_BRNO.GUBUN;
	if Not pWOR05Dock.bUnDock then pWOR05Dock.BrNo  := GT_SEL_BRNO.BrNo;

	xdom := ComsDomDocument.Create;
	try
		if not xdom.loadXML(ls_rxxml) then
		begin
			Screen.Cursor := crDefault;
			Exit;
		end;

    case iType of
      0:
        begin
          sWorkerNode := '/cdms/header/ClientKey';

					lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          lst_Node.item[0].attributes.getNamedItem('Value').text := 'WOR051';
          sWorkerNode := '/cdms/header/UserID';
          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          lst_Node.item[0].attributes.getNamedItem('Value').text := En_Coding(GT_USERIF.ID);
          sWorkerNode := '/cdms/Service/Reserves';
          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);

					if cxPageControl3.ActivePageIndex = 0 then
					begin
						if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
							sBrNo := scb_FamilyWkBranchCode.Strings[cxcbBrName.ItemIndex]
						else
							sBrNo := scb_WkBranchCode.Strings[cxcbBrName.ItemIndex];
					end else if cxPageControl3.ActivePageIndex = 1 then
					begin
						if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
							sBrNo := scb_FamilyWkBranchCode.Strings[cb_BrName.ItemIndex]
						else
							sBrNo := scb_WkBranchCode.Strings[cb_BrName.ItemIndex];
					end;

          sDate1 := '';
					sDate2 := '';
          sSearch := Param_Filtering(cxedKey.Text);
					lst_Node.item[0].attributes.getNamedItem('ChargeType').Text := '3';
          case cxcbSel.ItemIndex of
            0:
              begin
								lst_Node.item[0].attributes.getNamedItem('WkSabun').Text := sSearch;
                lst_Node.item[0].attributes.getNamedItem('RsvMemo').Text := '';
              end;
            1:
              begin
                lst_Node.item[0].attributes.getNamedItem('WkSabun').Text := '';
                lst_Node.item[0].attributes.getNamedItem('RsvMemo').Text := sSearch;
							end;
          end;

          lst_Node.item[0].attributes.getNamedItem('action').text := 'SELECT';

          lst_Node.item[0].attributes.getNamedItem('FromDate').Text := sDate1;
          lst_Node.item[0].attributes.getNamedItem('ToDate').Text := sDate2;
          lst_Node.item[0].attributes.getNamedItem('Cnt').Text := '';
          lst_Node.item[0].attributes.getNamedItem('BrNo').Text := sBrNo;
          ls_rxxml := xDom.documentElement.xml;
//          cxPageControl1.ActivePageIndex := 0;
          cxgResList.DataController.SetRecordCount(0);
        end;
      1:
        begin
          GT_BookingWK.WkSabun2.Clear;
          GT_BookingWK.WkName.Clear;
          GT_BookingWK.WkSabun.Clear;
          GT_BookingWK.WkStatus.Clear;
          GT_BookingWK.WkCash.Clear;
          GT_BookingWK.WkCyCash.Clear;

          sWorkerNode := '/cdms/header/ClientKey';

          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          lst_Node.item[0].attributes.getNamedItem('Value').text := 'WOR052';

          sWorkerNode := '/cdms/header/UserID';
          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          lst_Node.item[0].attributes.getNamedItem('Value').text := En_Coding(GT_USERIF.ID);

          sWorkerNode := '/cdms/Service/Reserves';

          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          lst_Node.item[0].attributes.getNamedItem('action').Text := 'DETAIL';

          sWorkerNode := '/cdms/Service/Reserves/Reserve';

          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          iRow := cxgResList.DataController.FocusedRecordIndex;
          iSeq := cxgResList.GetColumnByFieldName('코드').Index;
          if iRow < 0 then
          begin
            Screen.Cursor := crDefault;
            Exit;
          end;
          sSearch := cxgResList.DataController.Values[iRow, iSeq];
          if sSearch = '' then
          begin
            Screen.Cursor := crDefault;
            Exit;
          end;
          lst_Node.item[0].attributes.getNamedItem('Sequence').Text := sSearch;
          ls_rxxml := xDom.documentElement.xml;
//          cxPageControl1.ActivePageIndex := 0;
          cxgResWkList.DataController.SetRecordCount(0);
        end;
			2:
				begin
					sWorkerNode := '/cdms/header/ClientKey';
					lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
					lst_Node.item[0].attributes.getNamedItem('Value').text := 'WOR053';
					sWorkerNode := '/cdms/header/UserID';
					lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
					lst_Node.item[0].attributes.getNamedItem('Value').text := En_Coding(GT_USERIF.ID);

					sWorkerNode := '/cdms/Service/Reserves';

					lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
					lst_Node.item[0].attributes.getNamedItem('action').Text := 'INSERT';

					iType2 := cxcbWkGubun.ItemIndex;
					sStatus := '';

					if iType2 in [1, 2] then
            sStatus := LPAD(IntToStr(pnlWkStatus.tag), '0', 2);
					iWkSabun := Frm_Main.Frm_WORA1[WorA1Tag].cxgWkCounsel.GetColumnByFieldName('기사사번').Index;
					lst_Node.item[0].attributes.getNamedItem('Cnt').Text := '1';
					sWorkerNode := '/cdms/Service/Reserves/Reserve';
					lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
					///////////////////////////////나이별 보험갱신///////////////////////////////
					if cxChkMY.Checked then
					begin
						sTmp := FormatDateTime('yyyymmdd', cxSEMon.Date); //보험갱신월
						lst_Node.item[0].attributes.getNamedItem('InsureDate').Text := sTmp;
						lst_Node.item[0].attributes.getNamedItem('AgeFrom')   .Text := cEdYearS.Text; //나이from
						lst_Node.item[0].attributes.getNamedItem('AgeTo')     .Text := cEdYearE.Text; //나이to
					end
					else
					begin
						lst_Node.item[0].attributes.getNamedItem('InsureDate').Text := ''; //보험갱신월
						lst_Node.item[0].attributes.getNamedItem('AgeFrom')   .Text := ''; //나이from
						lst_Node.item[0].attributes.getNamedItem('AgeTo')     .Text := ''; //나이to
					end;
					///////////////////////////////나이별 보험갱신///////////////////////////////
//					iRow := Frm_Main.Frm_WORA1[WorA1Tag].cxgWkCounsel.DataController.GetSelectedRowIndex(0);
//					iBrNo := Frm_Main.Frm_WORA1[WorA1Tag].cxgWkCounsel.GetColumnByFieldName('지사코드').Index;
					if pWOR05Dock.GUBUN <> '1' then
					begin
            if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
							sBrNo := scb_FamilyWkBranchCode.Strings[cxcbBrName.ItemIndex]
            else
              sBrNo := scb_WkBranchCode.Strings[cxcbBrName.ItemIndex];
          end else
          if pWOR05Dock.GUBUN = '1' then
          begin
            sBrNo := pWOR05Dock.BrNo;
          end;

          if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
						sToBrNo := scb_FamilyBrCode.Strings[cxcbToBrName.ItemIndex]
					else
						sToBrNo := scb_BranchCode.Strings[cxcbToBrName.ItemIndex];

          sDate1 := FormatDateTime('yyyymmdd', startDate1.Date) + '090500';
          lst_Node.item[0].attributes.getNamedItem('RsvDate').Text := sDate1;
          sDate1 := FormatDateTime('yyyymmdd', Now) + '090500';
          lst_Node.item[0].attributes.getNamedItem('InDate').Text := sDate1;
          sDate1 := FormatDateTime('yyyymmdd', startDate1.Date) + '090500';
          lst_Node.item[0].attributes.getNamedItem('StartDate').Text := sDate1;
          lst_Node.item[0].attributes.getNamedItem('BrNo').Text := sBrNo;
          lst_Node.item[0].attributes.getNamedItem('ToBrNo').Text := sToBrNo;
          lst_Node.item[0].attributes.getNamedItem('InId').Text := En_Coding(GT_USERIF.ID);
          lst_Node.item[0].attributes.getNamedItem('RsvMemo').Text := cxedMemo.Text;
          lst_Node.item[0].attributes.getNamedItem('ChargeType').Text := '3';
					sSearch := StringReplace(cxceCash.Text, ',', '', [rfReplaceAll]);
          lst_Node.item[0].attributes.getNamedItem('Charge').Text := sSearch;
					lst_Node.item[0].attributes.getNamedItem('Type').Text := IntToStr(iType2);
          lst_Node.item[0].attributes.getNamedItem('WkStatus').Text := sStatus;
          if cxrbDay.Checked then
          begin
            lst_Node.item[0].attributes.getNamedItem('Term').Text := '0';
            lst_Node.item[0].attributes.getNamedItem('Memo').Text := '일비차감';
          end else
          if cxrbWeek.Checked then
          begin
            lst_Node.item[0].attributes.getNamedItem('Memo').Text := '주비차감';
            lst_Node.item[0].attributes.getNamedItem('Term').Text := '1';
          end else
          if cxrbMonth.Checked then
          begin
            lst_Node.item[0].attributes.getNamedItem('Memo').Text := '월비차감';
            lst_Node.item[0].attributes.getNamedItem('Term').Text := '2';
          end else
          begin  // 2011.03.21 선입금차감
            lst_Node.item[0].attributes.getNamedItem('Memo').Text := '없음';
            lst_Node.item[0].attributes.getNamedItem('Term').Text := '4';
          end;
          if endDate1.Text <> '' then
            sDate1 := FormatDateTime('yyyymmdd', endDate1.Date) + '090500'
          else
            sDate1 := '99991231090500';
          lst_Node.item[0].attributes.getNamedItem('EndDate').Text := sDate1;

					if iType2 in [0, 2] then
					begin
						lst_Node.item[0].attributes.getNamedItem('WkCount').Text := '0';//cxlbCnt.Caption;
						iCnt := 0;
					end else
					begin
						lst_Node.item[0].attributes.getNamedItem('WkCount').Text := '0';
					end;
				end;
			3:
        begin
          sWorkerNode := '/cdms/header/ClientKey';

          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          lst_Node.item[0].attributes.getNamedItem('Value').text := 'WOR054';

          sWorkerNode := '/cdms/header/UserID';
          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          lst_Node.item[0].attributes.getNamedItem('Value').text := En_Coding(GT_USERIF.ID);

          sWorkerNode := '/cdms/Service/Reserves';
          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          lst_Node.item[0].attributes.getNamedItem('action').Text := 'UPDATE';

          sWorkerNode := '/cdms/Service/Reserves/Reserve';
					lst_Node := xdom.documentElement.selectNodes(sWorkerNode);

					///////////////////////////////나이별 보험갱신///////////////////////////////
					if cxChkMY.Checked then
					begin
						lst_Node.item[0].attributes.getNamedItem('InsureDate').Text := FormatDateTime('yyyymmdd', cxSEMon.Date); //보험갱신월
						lst_Node.item[0].attributes.getNamedItem('AgeFrom')   .Text := cEdYearS.Text; //나이from
						lst_Node.item[0].attributes.getNamedItem('AgeTo')     .Text := cEdYearE.Text; //나이to
					end	else
					begin
						lst_Node.item[0].attributes.getNamedItem('InsureDate').Text := ''; //보험갱신월
						lst_Node.item[0].attributes.getNamedItem('AgeFrom')   .Text := ''; //나이from
						lst_Node.item[0].attributes.getNamedItem('AgeTo')     .Text := ''; //나이to
					end;
					///////////////////////////////나이별 보험갱신///////////////////////////////
					iRow := cxgResList.DataController.FocusedRecordIndex;
          if iRow < 0 then
          begin
            Screen.Cursor := crDefault;
            Exit;
          end;
          iSeq := cxgResList.GetColumnByFieldName('코드').Index;
          sSearch := cxgResList.DataController.Values[iRow, iSeq];
          iBrNo := cxgResList.GetColumnByFieldName('지사코드').Index;
          sBrNo := cxgResList.DataController.Values[iRow, iBrNo];

          if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
						sToBrNo := scb_FamilyBrCode.Strings[cxcbToBrName.ItemIndex]
          else
						sToBrNo := scb_BranchCode.Strings[cxcbToBrName.ItemIndex];

          lst_Node.item[0].attributes.getNamedItem('Sequence').Text := sSearch;
          lst_Node.item[0].attributes.getNamedItem('BrNo').Text := sBrNo;
          lst_Node.item[0].attributes.getNamedItem('ToBrNo').Text := sToBrNo;
          lst_Node.item[0].attributes.getNamedItem('RsvMemo').Text := cxedMemo.Text;
          lst_Node.item[0].attributes.getNamedItem('ChargeType').Text := '3';
          sSearch := StringReplace(cxceCash.Text, ',', '', [rfReplaceAll]);
          lst_Node.item[0].attributes.getNamedItem('Charge').Text := sSearch;
          lst_Node.item[0].attributes.getNamedItem('Memo').Text := '일비차감';
          iType2 := cxcbWkGubun.ItemIndex;
          sStatus := '';
          if iType2 in [1, 2] then
            sStatus := LPAD(IntToStr(pnlWkStatus.tag), '0', 2);

          if cxrbDay.Checked then
          begin
            lst_Node.item[0].attributes.getNamedItem('Term').Text := '0';
            lst_Node.item[0].attributes.getNamedItem('Memo').Text := '일비차감';
          end else
          if cxrbWeek.Checked then
          begin
            lst_Node.item[0].attributes.getNamedItem('Memo').Text := '주비차감';
            lst_Node.item[0].attributes.getNamedItem('Term').Text := '1';
          end else
          if cxrbMonth.Checked then
          begin
            lst_Node.item[0].attributes.getNamedItem('Memo').Text := '월비차감';
            lst_Node.item[0].attributes.getNamedItem('Term').Text := '2';
          end else
          begin  // 2011.03.21 선입금차감
            lst_Node.item[0].attributes.getNamedItem('Memo').Text := '없음';
            lst_Node.item[0].attributes.getNamedItem('Term').Text := '4';
          end;

					if endDate1.Text <> '' then
            sDate1 := FormatDateTime('yyyymmdd', endDate1.Date) + '090500'
          else
            sDate1 := '99991231090500';
          lst_Node.item[0].attributes.getNamedItem('EndDate').Text := sDate1;

          sDate1 := FormatDateTime('yyyymmdd', startDate1.Date) + '090500';
          lst_Node.item[0].attributes.getNamedItem('RsvDate').Text := sDate1;
          sDate1 := FormatDateTime('yyyymmdd', Now) + '090500';
          lst_Node.item[0].attributes.getNamedItem('InDate').Text := sDate1;
          sDate1 := FormatDateTime('yyyymmdd', startDate1.Date) + '090500';
          lst_Node.item[0].attributes.getNamedItem('StartDate').Text := sDate1;

          lst_Node.item[0].attributes.getNamedItem('Type').Text := IntToStr(iType2);
          lst_Node.item[0].attributes.getNamedItem('WkStatus').Text := sStatus;
        end;
      4:
        begin
          sWorkerNode := '/cdms/header/ClientKey';
          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          lst_Node.item[0].attributes.getNamedItem('Value').text := 'WOR055';
          sWorkerNode := '/cdms/header/UserID';
          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          lst_Node.item[0].attributes.getNamedItem('Value').text := En_Coding(GT_USERIF.ID);
          sWorkerNode := '/cdms/Service/Reserves';
          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          lst_Node.item[0].attributes.getNamedItem('action').Text := 'CANCEL';
          sWorkerNode := '/cdms/Service/Reserves/Reserve';
          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          iSeq := cxgResList.GetColumnByFieldName('코드').Index;
          iRow := cxgResList.DataController.FocusedRecordIndex;
          if iRow < 0 then
          begin
            Screen.Cursor := crDefault;
            Exit;
          end;
          sSearch := cxgResList.DataController.Values[iRow, iSeq];
          lst_Node.item[0].attributes.getNamedItem('Sequence').Text := sSearch;
        end;
      5:
        begin
          sWorkerNode := '/cdms/header/ClientKey';
          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          lst_Node.item[0].attributes.getNamedItem('Value').text := 'WOR056';

          sWorkerNode := '/cdms/header/UserID';
          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          lst_Node.item[0].attributes.getNamedItem('Value').text := En_Coding(GT_USERIF.ID);

          sWorkerNode := '/cdms/Service/Reserves';
          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          lst_Node.item[0].attributes.getNamedItem('action').Text := 'INSERT';

          sWorkerNode := '/cdms/Service/Reserves/Reserve';
          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          iSeq := cxgResList.GetColumnByFieldName('코드').Index;
          iRow := cxgResList.DataController.FocusedRecordIndex;
          if iRow < 0 then
          begin
            Screen.Cursor := crDefault;
            Exit;
          end;
          sSearch := cxgResList.DataController.Values[iRow, iSeq];
          lst_Node.item[0].attributes.getNamedItem('Sequence').Text := sSearch;
        end;
      6:
        begin
          sWorkerNode := '/cdms/header/ClientKey';
          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          lst_Node.item[0].attributes.getNamedItem('Value').text := 'WOR057';

          sWorkerNode := '/cdms/header/UserID';
          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          lst_Node.item[0].attributes.getNamedItem('Value').text := En_Coding(GT_USERIF.ID);

          sWorkerNode := '/cdms/Service/Reserves';
          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          lst_Node.item[0].attributes.getNamedItem('action').Text := 'CANCEL';

          if (cxgResWkList.DataController.GetSelectedCount) = 0 then
          begin
            GMessagebox('한명도 선택하지 않았습니다.', cdmsE);
            Screen.Cursor := crDefault;
            Exit;
          end;

          lst_Node.item[0].attributes.getNamedItem('Cnt').Text := '1';

          sWorkerNode := '/cdms/Service/Reserves/Reserve';
          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          lst_Node.item[0].attributes.getNamedItem('InId').Text := En_Coding(GT_USERIF.ID);

          iSeq := cxgResList.GetColumnByFieldName('코드').Index;
          iRow := cxgResList.DataController.FocusedRecordIndex;
          if iRow < 0 then
          begin
            Screen.Cursor := crDefault;
            Exit;
          end;
          sSearch := cxgResList.DataController.Values[iRow, iSeq];
          lst_Node.item[0].attributes.getNamedItem('Sequence').Text := sSearch;
          lst_Node.item[0].attributes.getNamedItem('WkCount').Text := IntToStr(cxgResWkList.DataController.GetSelectedCount);
          iCnt := 0;
          iWkSabun := cxgResWkList.GetColumnByFieldName('기사사번').Index;
          for i := 0 to cxgResWkList.DataController.RecordCount - 1 do
          begin
            if cxgResWkList.ViewData.Records[i].Selected then // ok
            begin
              if iCnt > 0 then
              begin
                sWorkerNode := '/cdms/Service/Reserves/Reserve/Detail';
                lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
                lst_clon := lst_node.item[0].cloneNode(True);
                sWorkerNode := '/cdms/Service/Reserves/Reserve';
                lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
                lst_Node.item[0].appendChild(lst_clon);
              end;
              sWkSabun := cxgResWkList.ViewData.Records[I].Values[iWkSabun];
              lst_Node.item[0].childNodes.item[iCnt].attributes.getNamedItem('WkSabun').Text := sWkSabun;
              inc(iCnt);
            end;
          end;
        end;
      7:
        begin
          sWorkerNode := '/cdms/header/ClientKey';
          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          lst_Node.item[0].attributes.getNamedItem('Value').text := 'WOR062';

          sWorkerNode := '/cdms/header/UserID';
          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          lst_Node.item[0].attributes.getNamedItem('Value').text := GT_USERIF.ID;

          sWorkerNode := '/cdms/Service/Reserves';
          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          lst_Node.item[0].attributes.getNamedItem('action').Text := 'INSERT';

          if (cxgNOResWkList.DataController.GetSelectedCount) = 0 then
          begin
            GMessagebox('한명도 선택하지 않았습니다.', cdmsE);
            Screen.Cursor := crDefault;
            Exit;
          end;

          lst_Node.item[0].attributes.getNamedItem('Cnt').Text := '1';

          sWorkerNode := '/cdms/Service/Reserves/Reserve';
          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          lst_Node.item[0].attributes.getNamedItem('InId').Text := GT_USERIF.ID;

          iSeq := cxgResList.GetColumnByFieldName('코드').Index;
          iRow := cxgResList.DataController.FocusedRecordIndex;
          sSearch := cxgResList.DataController.Values[iRow, iSeq];
          lst_Node.item[0].attributes.getNamedItem('Sequence').Text := sSearch;
          lst_Node.item[0].attributes.getNamedItem('WkCount').Text := IntToStr(cxgNOResWkList.DataController.GetSelectedCount);
          iCnt := 0;

          lst_Node.item[0].childNodes.item[iCnt].attributes.getNamedItem('WkSabun').Text := FSELWKLIST.WkSabun;

          proc_SelectWK;
        end;
		end;

		ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 +  xDom.documentElement.xml;
		slReceive := TStringList.Create;
		try
			if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
			begin
				rv_str := slReceive[0];
				if (rv_str <> '') then
				begin
					ls_rxxml := rv_str;
					Application.ProcessMessages;
					if iType <> 7 then
						proc_recieve(ls_rxxml);
				end;
			end;
		finally
			FreeAndNil(slReceive);
		end;
	finally
		xdom := Nil;
	end;
end;

procedure TFrm_WOR05.proc_recieve(ls_rxxml: Widestring);
var
  xdom: msDomDocument;
  ls_ClientKey, ls_Msg_Err, sTemp, sBrNo, sBrName, sToBrNo, sToBrName, sStatus: string;
  lst_Result: IXMLDomNodeList;
  i, iRow, iIdx: Integer;
begin
	try
    xdom := ComsDomDocument.Create;
    Screen.Cursor := crHourGlass;
    try
      if not xdom.loadXML(ls_rxxml) then
      begin
        Screen.Cursor := crDefault;
        Exit;
      end;

      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_ClientKey := GetXmlClientKey(ls_rxxml);
        ls_ClientKey := Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5);
				case StrToIntDef(ls_ClientKey, 1) of
          1: //예약리스트
            begin
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Reserves/Reserve');
              if lst_Result.length > 0 then
              begin
                cxgResList.BeginUpdate;
                for i := 0 to lst_Result.length - 1 do
                begin
                  if lst_Result.item[i].attributes.getNamedItem('Sequence').text = '' then
                    Continue;

                  iRow := cxgResList.DataController.AppendRecord;
                  cxgResList.DataController.Values[iRow, 0] := IntToStr(i + 1);
                  sBrNo := lst_Result.item[i].attributes.getNamedItem('BrNo').text;
                  iIdx := scb_WkBranchCode.IndexOf(sBrNo);

									if iIdx < 0 then
                    sBrName := ''
                  else
										sBrName := scb_WkBranchName.Strings[iIdx];
                  cxgResList.DataController.Values[iRow, 1] := sBrName;

                  case StrToIntDef(lst_Result.item[i].attributes.getNamedItem('Term').text, 0) of
                    0: cxgResList.DataController.Values[iRow, 3] := '일비';
                    1: cxgResList.DataController.Values[iRow, 3] := '주비';
                    2: cxgResList.DataController.Values[iRow, 3] := '월비';
                    4: cxgResList.DataController.Values[iRow, 3] := '없음';
                  end;
                  cxgResList.DataController.Values[iRow, 16] := lst_Result.item[i].attributes.getNamedItem('Type').text;
                  cxgResList.DataController.Values[iRow, 4] := cxcbWkGubun.Properties.Items.Strings[StrtoIntDef(cxgResList.DataController.Values[iRow, 16], 0)];

                  cxgResList.DataController.Values[iRow, 5] := lst_Result.item[i].attributes.getNamedItem('InDate').text;

									sTemp := lst_Result.item[i].attributes.getNamedItem('StartDate').text;
                  if sTemp <> '' then
										sTemp := copy(sTemp, 1, 10);
                  cxgResList.DataController.Values[iRow, 6] := sTemp;

                  sTemp := lst_Result.item[i].attributes.getNamedItem('RsvDate').text;
                  if sTemp <> '' then
                    sTemp := copy(sTemp, 1, 10);
                  cxgResList.DataController.Values[iRow, 7] := sTemp;

                  sTemp := lst_Result.item[i].attributes.getNamedItem('EndDate').text;
                  if sTemp <> '' then
                    sTemp := copy(sTemp, 1, 10);
                  cxgResList.DataController.Values[iRow, 8] := sTemp;

                  if StrToIntDef(cxgResList.DataController.Values[iRow, 16], 0) in [1, 3] then
									begin
                    cxgResList.DataController.Values[iRow, 9] := Frm_Main.Frm_WORA1[WorA1Tag].GetWkStateStr(lst_Result.item[i].attributes.getNamedItem('WkStatus').text);;
                    cxgResList.DataController.Values[iRow, 12] := '';
                  end else
                  if StrToIntDef(cxgResList.DataController.Values[iRow, 16], 0) in [2] then
                  begin
                    cxgResList.DataController.Values[iRow, 9] := Frm_Main.Frm_WORA1[WorA1Tag].GetWkStateStr(lst_Result.item[i].attributes.getNamedItem('WkStatus').text);;
                    cxgResList.DataController.Values[iRow, 12] := lst_Result.item[i].attributes.getNamedItem('WkCount').text;
                  end else
                  begin
                    cxgResList.DataController.Values[iRow, 9] := '';
                    cxgResList.DataController.Values[iRow, 12] := lst_Result.item[i].attributes.getNamedItem('WkCount').text;
                  end;
                  cxgResList.DataController.Values[iRow, 10] := lst_Result.item[i].attributes.getNamedItem('Charge').text;
                  cxgResList.DataController.Values[iRow, 11] := lst_Result.item[i].attributes.getNamedItem('RsvMemo').text;
                  cxgResList.DataController.Values[iRow, 13] := lst_Result.item[i].attributes.getNamedItem('InId').text;
                  cxgResList.DataController.Values[iRow, 14] := lst_Result.item[i].attributes.getNamedItem('Sequence').text;
                  cxgResList.DataController.Values[iRow, 15] := lst_Result.item[i].attributes.getNamedItem('BrNo').text;
                  cxgResList.DataController.Values[iRow, 17] := lst_Result.item[i].attributes.getNamedItem('WkStatus').text;

                  sToBrNo := lst_Result.item[i].attributes.getNamedItem('ToBrNo').text;
									iIdx := scb_BranchCode.IndexOf(sToBrNo);

                  if iIdx < 0 then
                    sToBrName := ''
                  else
										sToBrName := scb_BranchName.Strings[iIdx];

                  cxgResList.DataController.Values[iRow, 2] := sToBrName;
									cxgResList.DataController.Values[iRow, 18] := sToBrNo;
									
									cxgResList.DataController.Values[iRow, 13] := lst_Result.item[i].attributes.getNamedItem('InId').text;
									
									cxgResList.DataController.Values[iRow, 19] := lst_Result.item[i].attributes.getNamedItem('AgeFrom').text;
									cxgResList.DataController.Values[iRow, 20] := lst_Result.item[i].attributes.getNamedItem('AgeTo').text;
									cxgResList.DataController.Values[iRow, 21] := lst_Result.item[i].attributes.getNamedItem('InsureDate').text;
								end;
								cxgResList.EndUpdate;
								if not aHeadSort then	
								begin
//									cxgResList.Columns[14].SortOrder := soDescending;
//									cxgResList.Columns[14].SortIndex := 0;
//									gfSetIndexNo(cxgResList, 14, GS_SortNoChange);
								end else gfSetIndexNo(cxgResList, AIndex, GS_SortNoChange);
                cxgResList.DataController.FocusedRowIndex := 0;
              end;
            end;
          2:
            begin
              lst_Result :=
                xdom.documentElement.selectNodes('/cdms/Service/Reserves/Reserve/Detail');
              if lst_Result.length > 0 then
              begin
                cxgResWkList.DataController.SetRecordCount(0);

                cxgResWkList.BeginUpdate;
                for i := 0 to lst_Result.length - 1 do
                begin
                  if lst_Result.item[i].attributes.getNamedItem('WkSabun').text = '' then
                    Continue;

									if cxTextEdit1.Text <> '' then
									begin
										if cxcbSel1.ItemIndex = 0 then
										begin
											if copy(lst_Result.item[i].attributes.getNamedItem('WkSabun2').text, 1, length(cxTextEdit1.Text)) = cxTextEdit1.Text then
											begin
												iRow := cxgResWkList.DataController.AppendRecord;
												cxgResWkList.DataController.Values[iRow, 0] := IntToStr(i + 1);
												cxgResWkList.DataController.Values[iRow, 1] := lst_Result.item[i].attributes.getNamedItem('WkSabun2').text;
												GT_BookingWK.WkSabun2.add(lst_Result.item[i].attributes.getNamedItem('WkSabun2').text);
												cxgResWkList.DataController.Values[iRow, 2] := lst_Result.item[i].attributes.getNamedItem('WkName').text;
												GT_BookingWK.WkName.add(lst_Result.item[i].attributes.getNamedItem('WkName').text);
												cxgResWkList.DataController.Values[iRow, 6] := lst_Result.item[i].attributes.getNamedItem('WkSabun').text;
												GT_BookingWK.WkSabun.add(lst_Result.item[i].attributes.getNamedItem('WkSabun').text);

												sTemp := lst_Result.item[i].attributes.getNamedItem('WkStatus').text;
												sStatus := '';
												sStatus := Frm_Main.Frm_WORA1[WorA1Tag].GetWkStateStr(sTemp);
												cxgResWkList.DataController.Values[iRow, 3] := sStatus;
												GT_BookingWK.WkStatus.add(sStatus);
												cxgResWkList.DataController.Values[iRow, 4] := lst_Result.item[i].attributes.getNamedItem('WkCash').text;
												GT_BookingWK.WkCash.add(lst_Result.item[i].attributes.getNamedItem('WkCash').text);
												cxgResWkList.DataController.Values[iRow, 5] := lst_Result.item[i].attributes.getNamedItem('WkCyCash').text;
												GT_BookingWK.WkCyCash.add(lst_Result.item[i].attributes.getNamedItem('WkCyCash').text);
											end;
										end	else
                    if cxcbSel1.ItemIndex = 1 then
										begin
											if pos(cxTextEdit1.Text, lst_Result.item[i].attributes.getNamedItem('WkName').text) > 0 then
											begin
												iRow := cxgResWkList.DataController.AppendRecord;
												cxgResWkList.DataController.Values[iRow, 0] := IntToStr(i + 1);
												cxgResWkList.DataController.Values[iRow, 1] := lst_Result.item[i].attributes.getNamedItem('WkSabun2').text;
												GT_BookingWK.WkSabun2.add(lst_Result.item[i].attributes.getNamedItem('WkSabun2').text);
												cxgResWkList.DataController.Values[iRow, 2] := lst_Result.item[i].attributes.getNamedItem('WkName').text;
												GT_BookingWK.WkName.add(lst_Result.item[i].attributes.getNamedItem('WkName').text);
												cxgResWkList.DataController.Values[iRow, 6] := lst_Result.item[i].attributes.getNamedItem('WkSabun').text;
												GT_BookingWK.WkSabun.add(lst_Result.item[i].attributes.getNamedItem('WkSabun').text);

												sTemp := lst_Result.item[i].attributes.getNamedItem('WkStatus').text;
												sStatus := '';
												sStatus := Frm_Main.Frm_WORA1[WorA1Tag].GetWkStateStr(sTemp);
												cxgResWkList.DataController.Values[iRow, 3] := sStatus;
												GT_BookingWK.WkStatus.add(sStatus);
												cxgResWkList.DataController.Values[iRow, 4] := lst_Result.item[i].attributes.getNamedItem('WkCash').text;
												GT_BookingWK.WkCash.add(lst_Result.item[i].attributes.getNamedItem('WkCash').text);
												cxgResWkList.DataController.Values[iRow, 5] := lst_Result.item[i].attributes.getNamedItem('WkCyCash').text;
												GT_BookingWK.WkCyCash.add(lst_Result.item[i].attributes.getNamedItem('WkCyCash').text);
											end;
										end;	
									end else
									begin
										iRow := cxgResWkList.DataController.AppendRecord;
										cxgResWkList.DataController.Values[iRow, 0] := IntToStr(i + 1);
										cxgResWkList.DataController.Values[iRow, 1] := lst_Result.item[i].attributes.getNamedItem('WkSabun2').text;
										GT_BookingWK.WkSabun2.add(lst_Result.item[i].attributes.getNamedItem('WkSabun2').text);
										cxgResWkList.DataController.Values[iRow, 2] := lst_Result.item[i].attributes.getNamedItem('WkName').text;
										GT_BookingWK.WkName.add(lst_Result.item[i].attributes.getNamedItem('WkName').text);
										cxgResWkList.DataController.Values[iRow, 6] := lst_Result.item[i].attributes.getNamedItem('WkSabun').text;
										GT_BookingWK.WkSabun.add(lst_Result.item[i].attributes.getNamedItem('WkSabun').text);

										sTemp := lst_Result.item[i].attributes.getNamedItem('WkStatus').text;
										sStatus := '';
										sStatus := Frm_Main.Frm_WORA1[WorA1Tag].GetWkStateStr(sTemp);
										cxgResWkList.DataController.Values[iRow, 3] := sStatus;
										GT_BookingWK.WkStatus.add(sStatus);
										cxgResWkList.DataController.Values[iRow, 4] := lst_Result.item[i].attributes.getNamedItem('WkCash').text;
										GT_BookingWK.WkCash.add(lst_Result.item[i].attributes.getNamedItem('WkCash').text);
										cxgResWkList.DataController.Values[iRow, 5] := lst_Result.item[i].attributes.getNamedItem('WkCyCash').text;
										GT_BookingWK.WkCyCash.add(lst_Result.item[i].attributes.getNamedItem('WkCyCash').text);
									end;
                end;
                cxgResWkList.EndUpdate;
                cxlbCnt.Caption := IntToStr(cxgResWkList.DataController.RecordCount);
              end;
            end;
					3:
						begin
							AddWkList;
							GMessagebox('예약 되었습니다.', cdmsi);
							proc_Init;
							proc_search(0);
							Screen.Cursor := crDefault;
							Exit;
						end;
					4:
            begin
              GMessagebox('수정 되었습니다.', cdmsi);
							proc_Init;
              proc_search(0);
              Screen.Cursor := crDefault;
              Exit;
            end;
          5:
            begin
              GMessagebox('삭제 되었습니다.', cdmsi);
							proc_Init;
              proc_search(0);
              cxgResWkList.DataController.SetRecordCount(0);
              GT_BookingWK.WkSabun2.Clear;
              GT_BookingWK.WkName.Clear;
              GT_BookingWK.WkSabun.Clear;
              GT_BookingWK.WkStatus.Clear;
              GT_BookingWK.WkCash.Clear;
              GT_BookingWK.WkCyCash.Clear;

              Screen.Cursor := crDefault;
              Exit;
            end;
          6:
            begin
              GMessagebox('추가 되었습니다.', cdmsi);
							proc_Init;
              proc_search(0);
              Screen.Cursor := crDefault;
              Exit;
            end;
          7:
            begin
              GMessagebox('삭제 되었습니다.', cdmsi);
              for I := cxgResWkList.DataController.RecordCount - 1 downto 0 do
              begin
                if cxgResWkList.ViewData.Records[i].Selected then // ok
                  cxgResWkList.DataController.DeleteRecord(i)
              end;
              I := cxgResList.DataController.FocusedRecordIndex;
              proc_search(0);
              cxgResList.DataController.FocusedRecordIndex := I;
              cxlbCnt.Caption := IntToStr(cxgResWkList.DataController.RecordCount);
              Screen.Cursor := crDefault;
              Exit;
            end;
					8: //한개 또는 두번째 전문일때
						begin
							AddWkList;
							GMessagebox('예약 되었습니다.', cdmsi);
							proc_Init;
							proc_search(0);
							Screen.Cursor := crDefault;
							Exit;
						end;
					9: //두개 전문중 첫번째일때
						begin
							AddWkList2;
{							GMessagebox('예약 되었습니다.', cdmsi);
							proc_Ref;
							proc_search(0);
							Screen.Cursor := crDefault;
							Exit;  }
						end;
				end;
        Screen.Cursor := crDefault;
      end else
      begin
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
      end;
    finally
      Screen.Cursor := crDefault;
      xdom := Nil;
    end;
  except
  end;
end;

procedure TFrm_WOR05.cxcbWkGubunClick(Sender: TObject);
begin
	pnlWkStatus.Visible := False;
	cxrb0.Checked := True;
  cxrb0Click(cxrb0);

	case cxcbWkGubun.ItemIndex of
		1, 2: 
		begin
			pnlWkStatus.Visible := True;
			cxGroupBox4.left := 873;
		end;
		0,3,4:cxGroupBox4.Left := 603;
	end;

  if cxcbWkGubun.ItemIndex in [1, 3] then
  begin
    cxbWkDel.Enabled := False;
    cxbwkAdd.Enabled := False;
  end else
  begin
    cxbWkDel.Enabled := True;
    cxbwkAdd.Enabled := True;
  end;
end;

procedure TFrm_WOR05.cxChkMYClick(Sender: TObject);
begin
  if cxChkMY.Checked then
  begin
    cEdYearS.Enabled := True;
    cEdYearE.Enabled := True;
    cxSEMon.Enabled := True;
  end else
  begin
    cEdYearS.Enabled := False;
    cEdYearE.Enabled := False;
    cxSEMon.Enabled := False;
  end;
end;

procedure TFrm_WOR05.cxComboBox1PropertiesChange(Sender: TObject);
begin
	if cxComboBox1.ItemIndex = 2 then
	begin
		cb_WkStatus.Visible := True;
		cxComboBox1.Left := 111;
		cb_WkStatus.Left := 187;
	end else
	begin
		cxComboBox1.Left := 228;
		cxComboBox1.Top := 6;
		cb_WkStatus.Visible := False;
	end;
end;

procedure TFrm_WOR05.cxrb0Click(Sender: TObject);
begin
	pnlWkStatus.Tag := TcxRadioButton(Sender).Tag;
end;

procedure TFrm_WOR05.AddWkList2(ASeq: string);
const
	__ONETIME_COUNT = 200;
var
	ls_TxLoad, ls_TxQry, sQueryTemp : string; // XML File Load
	rv_str, sWkSabun: string;
	lst_Result: IXMLDomNodeList;

	sWorkerNode: string;
	xdom: msDomDocument;
	lst_Node: IXMLDOMNodeList;
	lst_clon: IXMLDOMNode;
	iCnt : Integer;
	slReceive: TStringList;
	ErrCode: integer;
begin
//	sTmp := ASeq;
	if slFWkList.Count = 0 then
    Exit;

  if ASeq = '-1' then
    Exit;

  if ASeq = '' then
  begin
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_WK_RSVTASK_IDX, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [GT_USERIF.ID]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', '', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        xdom := ComsDomDocument.Create;
        try
          try
            if not xdom.loadXML(rv_str) then
              Exit;

            if ('0000' = GetXmlErrorCode(rv_str)) then
            begin
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
              ASeq := lst_Result.item[0].attributes.getNamedItem('Value').Text;
            end
            else
              ASeq := '-1';
          except
            ASeq := '-1';
          end;
        finally
          xdom := Nil;
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  end;

  if ASeq = '-1' then
    Exit;

  ls_TxLoad := GTx_UnitXmlLoad('C029.XML');
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ls_TxLoad) then
    begin
      Screen.Cursor := crDefault;
      Exit;
    end;

    lst_Node := xdom.documentElement.selectNodes('/cdms/header/ClientKey');
    lst_Node.item[0].attributes.getNamedItem('Value').text := 'WOR062';
    lst_Node := xdom.documentElement.selectNodes('/cdms/header/UserID');
    lst_Node.item[0].attributes.getNamedItem('Value').text := GT_USERIF.ID;
    lst_Node := xdom.documentElement.selectNodes('/cdms/Service/Reserves');
    lst_Node.item[0].attributes.getNamedItem('action').Text := 'INSERT';
		lst_Node.item[0].attributes.getNamedItem('Cnt').Text := '1';

		lst_Node := xdom.documentElement.selectNodes('/cdms/Service/Reserves/Reserve');
    lst_Node.item[0].attributes.getNamedItem('InId').Text := GT_USERIF.ID;
    lst_Node.item[0].attributes.getNamedItem('Sequence').Text := ASeq;
		lst_Node.item[0].attributes.getNamedItem('WkCount').Text := IfThen(slFWkList.Count > __ONETIME_COUNT, IntToStr(__ONETIME_COUNT), IntToStr(slFWkList.Count));

    iCnt := 0;
		while (iCnt < __ONETIME_COUNT) and (slFWkList.Count > 0) do
    begin
			sWkSabun := slFWkList[0];
			slFWkList.Delete(0);
			
			if iCnt > 0 then
      begin
        sWorkerNode := '/cdms/Service/Reserves/Reserve/Detail';
        lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
        lst_clon := lst_node.item[0].cloneNode(True);
        sWorkerNode := '/cdms/Service/Reserves/Reserve';
        lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
        lst_Node.item[0].appendChild(lst_clon);
      end;
      lst_Node.item[0].childNodes.item[iCnt].attributes.getNamedItem('WkSabun').Text := sWkSabun;
      inc(iCnt);
    end;
    ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          Application.ProcessMessages;
					AddWkList2(ASeq);
        end;
      end;
    finally
      FreeAndNil(slReceive);
		end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_WOR05.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_WOR05.btn_CalcClick(Sender: TObject);
var sTmp : string;
	iTmp1, iTmp2, iDay, iModCash : integer;
begin
	Try
		sTmp := edt_TotCash.Text;
		sTmp := StringReplace(sTmp, ',', '', [rfReplaceAll]);
		iTmp1 := StrToIntDef(sTmp, 0);
		sTmp := edt_DayCash.Text;
		sTmp := StringReplace(sTmp, ',', '', [rfReplaceAll]);
		iTmp2 := StrToIntDef(sTmp, 0);

		if iTmp1 < iTmp2 then
		begin
			GMessagebox('일차감캐시가 차감종료캐시보다 큽니다.', cdmsE);
			edt_DayCash.SetFocus;
			Exit;
		
		end;
		if lbSDate.visible then 
		begin
//			lbSDate.visible := False;
		end else
		begin
			sTmp := edt_TotCash.Text;
			sTmp := StringReplace(sTmp, ',', '', [rfReplaceAll]);
			if StrToIntDef(sTmp,0) < 1 then exit;
			sTmp := edt_DayCash.Text;
			sTmp := StringReplace(sTmp, ',', '', [rfReplaceAll]);
			if StrToIntDef(sTmp,0) < 1 then exit;
			lbSDate.visible := True;
		end;
		lbEDate.visible := lbSDate.visible;

		lbTotCash.visible := lbSDate.visible;
		lbDayCash.visible := lbSDate.visible;
		lbDayCash2.visible := lbSDate.visible;
		lbDays.visible := lbSDate.visible;
		lbModCash.visible := lbSDate.visible;

		cxLabel22.visible := lbSDate.visible;
		cxLabel25.visible := lbSDate.visible;
		cxLabel29.visible := lbSDate.visible;
		cxLabel33.visible := lbSDate.visible;
		cxLabel15.visible := lbSDate.visible;
		cxLabel34.visible := lbSDate.visible;
		cxLabel31.visible := lbSDate.visible;
		cxLabel27.visible := lbSDate.visible;
		cxLabel37.visible := lbSDate.visible;

		sTmp := edt_TotCash.Text;
		sTmp := StringReplace(sTmp, ',', '', [rfReplaceAll]);
		iTmp1 := StrToIntDef(sTmp, 0);
		sTmp := edt_DayCash.Text;
		sTmp := StringReplace(sTmp, ',', '', [rfReplaceAll]);
		iTmp2 := StrToIntDef(sTmp, 0);

		iDay := iTmp1 Div iTmp2;  // 일비차감일수 계산
		iModCash := iTmp1 Mod iTmp2;  // 마지막 +1일 하루 일비차감 금액 계산

		lbSDate.Caption := Copy(FormatDateTime('mmdd', Now + 1),1,2) + '월 ' + Copy(FormatDateTime('mmdd', Now + 1),3,2) + '일';
		lbEDate.Caption := Copy(FormatDateTime('mmdd', Now + iDay +1),1,2) + '월 ' + Copy(FormatDateTime('mmdd', Now + iDay +1),3,2) + '일';

		lbTotCash.Caption := edt_TotCash.Text + '원';
		lbDayCash.Caption := edt_DayCash.Text + '원';
		lbDayCash2.Caption := edt_DayCash.Text + '원';
		lbDays.Caption := IntToStr(iDay);
		lbModCash.Caption := StrToMoney(IntToStr(iModCash)) + '원';
		
	except
	
	End;
	
end;

procedure TFrm_WOR05.cb_BrNamePropertiesChange(Sender: TObject);
begin
	if cxcbBrName.Tag = 99 then exit;

	if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
	begin
		proc_search(0);
		cxgResWkList.DataController.SetRecordCount(0);
		GT_BookingWK.WkSabun2.Clear;
    GT_BookingWK.WkName.Clear;
		GT_BookingWK.WkSabun.Clear;
    GT_BookingWK.WkStatus.Clear;
    GT_BookingWK.WkCash.Clear;
    GT_BookingWK.WkCyCash.Clear;

		cxgNOResWkList.DataController.SetRecordCount(0);
		First_BRNO := scb_FamilyWkBranchCode.Strings[cb_BrName.ItemIndex];
	end else
	begin
    proc_search(0);
		cxgResWkList.DataController.SetRecordCount(0);
    GT_BookingWK.WkSabun2.Clear;
		GT_BookingWK.WkName.Clear;
    GT_BookingWK.WkSabun.Clear;
    GT_BookingWK.WkStatus.Clear;
		GT_BookingWK.WkCash.Clear;
		GT_BookingWK.WkCyCash.Clear;

		cxgNOResWkList.DataController.SetRecordCount(0);
		First_BRNO := scb_WkBranchCode.Strings[cb_BrName.ItemIndex];
	end;
	proc_wkMngSearch(1);
end;

procedure TFrm_WOR05.cxbAddClick(Sender: TObject);
var
	s, sTmp: string;
	iTmp1,iTmp2 : integer;
begin
	if cxPageControl3.ActivePageIndex = 0 then   //일비차감설정
	begin
		if cxcbToBrName.ItemIndex < 0 then
		begin
			GMessagebox('입금지사를 선택하세요.', cdmsE);
			cxcbToBrName.SetFocus;
			Exit;
		end;

		// 2011.03.21 선입금
		if cxcbWkGubun.text='선입금' then
		begin
			GMessagebox('선입금은 [기사차감설정] 화면에서는 사용 할 수 없는 기능 입니다.'#13#10'기사입금메뉴에서 선입금 등록건 조회시 읽기만 가능 합니다.', cdmsE);
			cxcbWkGubun.SetFocus;
			Exit;
		end;

		s := cxceCash.Text;
		s := StringReplace(s, ',', '', [rfReplaceAll]);
		if StrToIntDef(s, -9999999) = -9999999 then
		begin
			GMessagebox('차감 캐쉬를 숫자로 입력바랍니다.', cdmsE);
			cxceCash.Text := '';
			cxceCash.SetFocus;
			Exit;
		end;

		if (startDate1.Enabled) and (startDate1.Date <= now) then
		begin
			GMessagebox('차감시작일을 오늘이전 일자로 등록할 수 없습니다.', cdmsE);
			startDate1.Date := now + 1;
			Exit;
		end;

		if(endDate1.Text <> '') and (endDate1.Date <= startDate1.Date) then
		begin
			GMessagebox('차감종료일이 차감시작일보다 작습니다.'#13#10'(차감종료일을 지정하지 않으시려면 공백으로 입력바랍니다.)', cdmsE);
			Exit;
		end;

		if cxChkMY.Checked then
		begin
			if cEdYearS.Text = '' then 
			begin
				GMessagebox('시작나이가 없습니다.)', cdmsE);
				exit;
			end;
			if cEdYearE.Text = '' then 
			begin
				GMessagebox('종료나이가 없습니다.)', cdmsE);
				exit;
			end;
		end;

		if Not func_EucKr_Check(cxedMemo, 0) then Exit;

		if cxbAdd.Caption = '등록' then
			proc_search(2)
		else if cxbAdd.Caption = '수정' then
			proc_search(3);
	end else
	if cxPageControl3.ActivePageIndex = 1 then     //기사관리비 등록
	begin
		if cb_ToBrName.ItemIndex < 0 then
		begin
			GMessagebox('입금지사를 선택하세요.', cdmsE);
			cxcbToBrName.SetFocus;
			Exit;
		end;

		s := edt_Totcash.Text;
		s := StringReplace(s, ',', '', [rfReplaceAll]);
		if StrToIntDef(s, -9999999) = -9999999 then
		begin
			GMessagebox('차감종료캐시를 숫자로 입력바랍니다.', cdmsE);
			edt_Totcash.Text := '';
			edt_Totcash.SetFocus;
			Exit;
		end;
		s := edt_DayCash.Text;
		s := StringReplace(s, ',', '', [rfReplaceAll]);
		if StrToIntDef(s, -9999999) = -9999999 then
		begin
			GMessagebox('일차감캐시를 숫자로 입력바랍니다.', cdmsE);
			edt_DayCash.Text := '';
			edt_DayCash.SetFocus;
			Exit;
		end;

		sTmp := edt_TotCash.Text;
		sTmp := StringReplace(sTmp, ',', '', [rfReplaceAll]);
		iTmp1 := StrToIntDef(sTmp, 0);
		sTmp := edt_DayCash.Text;
		sTmp := StringReplace(sTmp, ',', '', [rfReplaceAll]);
		iTmp2 := StrToIntDef(sTmp, 0);

		if iTmp1 < iTmp2 then
		begin
			GMessagebox('일차감캐시가 차감종료캐시보다 큽니다.', cdmsE);
			edt_DayCash.SetFocus;
			Exit;
		
		end;

		if Not func_EucKr_Check(cxedMemo, 0) then Exit;

		proc_TotCashDayCashInput;
	end;
end;

procedure TFrm_WOR05.cxrbDelClick(Sender: TObject);
begin
  // 2011.03.21 선입금
  if cxcbWkGubun.text='선입금' then
  begin
    GMessagebox('선입금 수정은 불가합니다.', cdmsE);
    cxcbWkGubun.SetFocus;
    Exit;
  end;

  if Application.MessageBox(PChar('선택하신 예약리스트를 삭제할까요?'), 'CDMS', MB_YESNO +
    MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
  begin
    Exit;
  end;

  proc_search(4);
end;

procedure TFrm_WOR05.cxButton3Click(Sender: TObject);
begin
	if cxPageControl1.ActivePage = cxTabSheet2 then  proc_search(0);
  cxgResWkList.DataController.SetRecordCount(0);
  GT_BookingWK.WkSabun2.Clear;
	GT_BookingWK.WkName.Clear;
  GT_BookingWK.WkSabun.Clear;
  GT_BookingWK.WkStatus.Clear;
  GT_BookingWK.WkCash.Clear;
  GT_BookingWK.WkCyCash.Clear;

  cxgNOResWkList.DataController.SetRecordCount(0);
end;

procedure TFrm_WOR05.cxbWkDelClick(Sender: TObject);
var i : integer;
begin
  proc_search(6);

  GT_BookingWK.WkSabun2.Clear;
  GT_BookingWK.WkName.Clear;
  GT_BookingWK.WkSabun.Clear;
  GT_BookingWK.WkStatus.Clear;
  GT_BookingWK.WkCash.Clear;
  GT_BookingWK.WkCyCash.Clear;

  for i := 0 to cxgResWkList.DataController.RecordCount - 1 do
  begin
    GT_BookingWK.WkSabun2.Add(cxgResWkList.DataController.Values[i, 1]);
    GT_BookingWK.WkName.Add(cxgResWkList.DataController.Values[i, 2]);
    GT_BookingWK.WkStatus.Add(cxgResWkList.DataController.Values[i, 3]);
    GT_BookingWK.WkCash.Add(cxgResWkList.DataController.Values[i, 4]);
    GT_BookingWK.WkCyCash.Add(cxgResWkList.DataController.Values[i, 5]);
    GT_BookingWK.WkSabun.Add(cxgResWkList.DataController.Values[i, 6]);
  end;

  proc_wkMngSearch;
end;

procedure TFrm_WOR05.cxgResListCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iCol, iType, iRow: Integer;
  sSeq: string;
begin
  try
  	proc_Show;
  except

  end;

  iRow := cxgResList.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;

  cxgResWkList.DataController.SetRecordCount(0);
  GT_BookingWK.WkSabun2.Clear;
  GT_BookingWK.WkName.Clear;
  GT_BookingWK.WkSabun.Clear;
  GT_BookingWK.WkStatus.Clear;
  GT_BookingWK.WkCash.Clear;
  GT_BookingWK.WkCyCash.Clear;

  cxgNOResWkList.DataController.SetRecordCount(0);

  iCol := cxgResList.GetColumnByFieldName('코드').Index;
  sSeq := cxgResList.DataController.Values[iRow, iCol];
  iType := StrToIntDef(cxgResList.DataController.Values[iRow, 16], 0);
  if (sSeq <> '') and (iType in [0, 2]) then
	begin
    proc_search(1);
    proc_wkMngSearch(1);
  end;

  try
		if iTmpRow<0 then Exit;
    // 2011.03.21 선입금
    if cxgResList.DataController.Values[iTmpRow, 3]='없음' then
		begin
			cxbAdd.Enabled:=false;
			cxrbDel.Enabled:=false;
		end;
  finally

  end;
end;

procedure TFrm_WOR05.cxgResListColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
var
  i: Integer;
begin
	SetDebugeWrite('TFrm_WOR05.cxgResListColumnHeaderClick');
	AIndex := AColumn.Index;
	aHeadSort := True;
end;

procedure TFrm_WOR05.cxgResListDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxgResList, AIndex, GS_SortNoChange);
end;

procedure TFrm_WOR05.proc_show;
var
  iRow: Integer;
  sTemp: string;
begin

	iRow := cxgResList.DataController.FocusedRecordIndex;
	if iRow < 0 then Exit;

	cxPageControl3.ActivePageIndex := 0;
	
  cxbAdd.Caption := '수정';

	// 선택기사수
  cxlbCnt.Caption := cxgResList.DataController.Values[iRow, 12];

	cxcbBrName.ItemIndex := cxcbBrName.Properties.Items.IndexOf(cxgResList.DataController.Values[iRow, 1]);
	if cxcbBrName.ItemIndex = -1 then cxcbBrName.ItemIndex := cxcbToBrName.ItemIndex;

	cxcbToBrName.ItemIndex := cxcbToBrName.Properties.Items.IndexOf(cxgResList.DataController.Values[iRow, 2]);
  if cxcbToBrName.ItemIndex = -1 then cxcbToBrName.ItemIndex := cxcbBrName.ItemIndex;

	// 차감주기
  if cxgResList.DataController.Values[iRow, 3] = '일비' then cxrbDay.Checked   := True else
  if cxgResList.DataController.Values[iRow, 3] = '주비' then cxrbWeek.Checked  := True else
  if cxgResList.DataController.Values[iRow, 3] = '월비' then cxrbMonth.Checked := True
                                                        else cxrbNone.Checked  := True;   // 2011.03.31 선입금 추가
  // 차감구분
  cxcbWkGubun.Itemindex := StrToIntDef(cxgResList.DataController.Values[iRow, 16],-1);

  // 참조
  if cxcbWkGubun.ItemIndex in [1, 2] then
  begin
    pnlWkStatus.Visible := True;
    case StrToIntDef(cxgResList.DataController.Values[iRow, 17], 0) of
      0: cxrb0.Checked := True;
      1: cxrb1.Checked := True;
      10: cxrb10.Checked := True;
      21: cxrb21.Checked := True;
      22: cxrb22.Checked := True;
      23: cxrb23.Checked := True;
      30: cxrb30.Checked := True;
      40: cxrb40.Checked := True;
      60: cxrb60.Checked := True;
    end;
  end else
  begin
    pnlWkStatus.Visible := False;
  end;

  if cxcbWkGubun.ItemIndex in [1, 3] then
  begin
    cxbWkDel.Enabled := False;
    cxbwkAdd.Enabled := False;
  end else
  begin
    cxbWkDel.Enabled := True;
    cxbwkAdd.Enabled := True;
  end;

  // 차감시작일
  sTemp := cxgResList.DataController.Values[iRow, 6];
  if Length(Trim(sTemp)) < 8 then Exit;
  startDate1.Text := sTemp;
  startDate1.Enabled := False;

  // 차감종료일
  sTemp := cxgResList.DataController.Values[iRow, 8];
  if (sTemp = '9999-12-31') or (sTemp = '') then
    endDate1.Text := ''
  else
    endDate1.Text := sTemp;

  // 차감캐쉬
	cxceCash.Text := cxgResList.DataController.Values[iRow, 10];
  // 차감메모
  cxedMemo.Text := cxgResList.DataController.Values[iRow, 11];
  
  if TCK_USER_PER.COM_WkDayCashSet = '1' then
  begin
    cxbAdd.Enabled := True;
    cxrbDel.Enabled := True;
  end else
  begin
    cxbAdd.Enabled := False;
    cxrbDel.Enabled := False;
  end;

  startDate1.Enabled := False;

	cEdYearS.Text := cxgResList.DataController.Values[iRow, 19];
	cEdYearE.Text := cxgResList.DataController.Values[iRow, 20];
	if (cEdYearS.Text <> '') and (cEdYearE.Text <> '') then cxChkMY.Checked := True
                                                     else cxChkMY.Checked := False;

  if Trim(cxgResList.DataController.Values[iRow, 21]) <> '' then
  begin
    try
    	cxSEMon.date := StrToDate(copy(cxgResList.DataController.Values[iRow, 21], 1,4) + '-'
	    												+ copy(cxgResList.DataController.Values[iRow, 21], 5,2) + '-'
		    											+ copy(cxgResList.DataController.Values[iRow, 21], 7,2) + '-');
    except
			cxSEMon.date := Now;
    end;
  end;
	
  // 2011.03.21 선입금
  if cxgResList.DataController.Values[iRow, 3]='없음' then
  begin
		cxbAdd.Enabled :=false;
		cxrbDel.Enabled :=false;
	end;
  iTmpRow:=iRow;
end;

procedure TFrm_WOR05.proc_TotCashDayCashInput;
var
	ls_TxLoad: string; // XML File Load
	sWorkerNode, rv_str, sBrNo, sToBrNo, sCash : string;
	ls_rxxml: WideString;
	xdom: msDomDocument;
	lst_Node: IXMLDOMNodeList;
	iRow, iSeq, iWkSabun : Integer;
	slReceive: TStringList;
	ErrCode: integer;
	sTmp, sValue : string;
	iDay, iModCash : integer;
	iTmp1, iTmp2, iLoop : integer;
begin
	Screen.Cursor := crHourGlass;
	ls_rxxml := GTx_UnitXmlLoad('C029.XML');

	if Not pWOR05Dock.bUnDock then pWOR05Dock.GUBUN := GT_SEL_BRNO.GUBUN;
	if Not pWOR05Dock.bUnDock then pWOR05Dock.BrNo  := GT_SEL_BRNO.BrNo;

	xdom := ComsDomDocument.Create;
	try
		if not xdom.loadXML(ls_rxxml) then
		begin
			Screen.Cursor := crDefault;
			Exit;
		end;

		sTmp := edt_TotCash.Text;
		sTmp := StringReplace(sTmp, ',', '', [rfReplaceAll]);
		iTmp1 := StrToIntDef(sTmp, 0);
		sTmp := edt_DayCash.Text;
		sTmp := StringReplace(sTmp, ',', '', [rfReplaceAll]);
		iTmp2 := StrToIntDef(sTmp, 0);

		iDay := iTmp1 Div iTmp2;  // 일비차감일수 계산
		iModCash := iTmp1 Mod iTmp2;  // 마지막 +1일 하루 일비차감 금액 계산

		if iModCash > 0 then 
		begin	
			iLoop := 2; 
			sValue := 'WOR059'
		end else 
		begin
			iLoop := 1;//일비차감 생성

		end;	

		for iRow := 0 to iLoop-1 do
		begin
			if iLoop = 1 then sValue := 'WOR058'
			else if iLoop = 2 then
			begin
				if iRow = 0 then sValue := 'WOR059' else 
				if iRow = 1 then sValue := 'WOR058';
      end;
			sWorkerNode := '/cdms/header/ClientKey';
			lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
			lst_Node.item[0].attributes.getNamedItem('Value').text := sValue;
			sWorkerNode := '/cdms/header/UserID';
			lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
			lst_Node.item[0].attributes.getNamedItem('Value').text := En_Coding(GT_USERIF.ID);

			sWorkerNode := '/cdms/Service/Reserves';

			lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
			lst_Node.item[0].attributes.getNamedItem('action').Text := 'INSERT';

			iWkSabun := Frm_Main.Frm_WORA1[WorA1Tag].cxgWkCounsel.GetColumnByFieldName('기사사번').Index;
			lst_Node.item[0].attributes.getNamedItem('Cnt').Text := '1';
			sWorkerNode := '/cdms/Service/Reserves/Reserve';
			lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
			///////////////////////////////나이별 보험갱신///////////////////////////////
			lst_Node.item[0].attributes.getNamedItem('InsureDate').Text := ''; //보험갱신월
			lst_Node.item[0].attributes.getNamedItem('AgeFrom')   .Text := ''; //나이from
			lst_Node.item[0].attributes.getNamedItem('AgeTo')     .Text := ''; //나이to
			///////////////////////////////나이별 보험갱신///////////////////////////////

			if pWOR05Dock.GUBUN <> '1' then
			begin
				if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
					sBrNo := scb_FamilyWkBranchCode.Strings[cb_BrName.ItemIndex]
				else
					sBrNo := scb_WkBranchCode.Strings[cb_BrName.ItemIndex];
			end else
			if pWOR05Dock.GUBUN = '1' then
			begin
				sBrNo := pWOR05Dock.BrNo;
			end;

			if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
				sToBrNo := scb_FamilyBrCode.Strings[cb_ToBrName.ItemIndex]
			else
				sToBrNo := scb_BranchCode.Strings[cb_ToBrName.ItemIndex];

			
			sTmp := FormatDateTime('yyyymmdd', Now) + '090500';
			lst_Node.item[0].attributes.getNamedItem('InDate').Text := sTmp;        //등록일

			if iRow = 0 then
			begin
				sTmp := FormatDateTime('yyyymmdd', Now + 1) + '090500';
				lst_Node.item[0].attributes.getNamedItem('RsvDate').Text := sTmp;       //시작일

				sTmp := FormatDateTime('yyyymmdd', Now + 1) + '090500';
				lst_Node.item[0].attributes.getNamedItem('StartDate').Text := sTmp;     //시작일
				sTmp := FormatDateTime('yyyymmdd', Now + iDay) + '090500';
				lst_Node.item[0].attributes.getNamedItem('EndDate').Text := sTmp;       //종료일
				
				sCash := StringReplace(edt_DayCash.Text, ',', '', [rfReplaceAll]);
				lst_Node.item[0].attributes.getNamedItem('Charge').Text := sCash;
			end else
			if iRow = 1 then
			begin
				sTmp := FormatDateTime('yyyymmdd', Now + 1 + iDay) + '090500';
				lst_Node.item[0].attributes.getNamedItem('RsvDate').Text := sTmp;       //시작일

				sTmp := FormatDateTime('yyyymmdd', Now + 1 + iDay) + '090500'; //오늘 다음날(+1) 정상차감(iDay) 다음날(+1)
				lst_Node.item[0].attributes.getNamedItem('StartDate').Text := sTmp;     //시작일
				sTmp := FormatDateTime('yyyymmdd', Now + iDay + 1) + '090500';
				lst_Node.item[0].attributes.getNamedItem('EndDate').Text := sTmp;       //종료일
				
				sCash := IntToStr(iModCash);
				lst_Node.item[0].attributes.getNamedItem('Charge').Text := sCash;
			end;
			
			
			lst_Node.item[0].attributes.getNamedItem('BrNo').Text := sBrNo;
			lst_Node.item[0].attributes.getNamedItem('ToBrNo').Text := sToBrNo;
			lst_Node.item[0].attributes.getNamedItem('InId').Text := En_Coding(GT_USERIF.ID);
			lst_Node.item[0].attributes.getNamedItem('RsvMemo').Text := edt_Memo.Text;
			lst_Node.item[0].attributes.getNamedItem('ChargeType').Text := '3';  //1:수수료, 2:보험료, 3:기타차감
			lst_Node.item[0].attributes.getNamedItem('Type').Text := IntToStr(0); //0:선택기사차감 기본값
			lst_Node.item[0].attributes.getNamedItem('WkStatus').Text := '';

			lst_Node.item[0].attributes.getNamedItem('Term').Text := '0';
			lst_Node.item[0].attributes.getNamedItem('Memo').Text := '일비차감';


			lst_Node.item[0].attributes.getNamedItem('WkCount').Text := '0';//cxlbCnt.Caption;

			ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 +  xDom.documentElement.xml;
			slReceive := TStringList.Create;
			try
				if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
				begin
					rv_str := slReceive[0];
					if (rv_str <> '') then
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
	finally
		xdom := Nil;
	end;
end;

procedure TFrm_WOR05.cxbwkAddClick(Sender: TObject);
begin
  proc_search(7);
  proc_BookingWK;
  proc_wkMngSearch;
end;

procedure TFrm_WOR05.cxedKeyKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Ord(Key) = VK_RETURN then
    cxButton3Click(cxButton3);
end;

procedure TFrm_WOR05.cxedMemoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_WOR05.AddWkList(ASeq: string);
const
	__ONETIME_COUNT = 200;
var
	ls_TxLoad, ls_TxQry, sQueryTemp : string; // XML File Load
	rv_str, sWkSabun: string;
	lst_Result: IXMLDomNodeList;

	sWorkerNode: string;
	xdom: msDomDocument;
	lst_Node: IXMLDOMNodeList;
	lst_clon: IXMLDOMNode;
	iCnt : Integer;
	slReceive: TStringList;
	ErrCode: integer;
begin
//	sTmp := ASeq;
	if FWkList.Count = 0 then
    Exit;

  if ASeq = '-1' then
    Exit;

  if ASeq = '' then
  begin
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_WK_RSVTASK_IDX, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [GT_USERIF.ID]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', '', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        xdom := ComsDomDocument.Create;
        try
          try
            if not xdom.loadXML(rv_str) then
              Exit;

            if ('0000' = GetXmlErrorCode(rv_str)) then
            begin
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
              ASeq := lst_Result.item[0].attributes.getNamedItem('Value').Text;
            end
            else
              ASeq := '-1';
          except
            ASeq := '-1';
          end;
        finally
          xdom := Nil;
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  end;

  if ASeq = '-1' then
    Exit;

  ls_TxLoad := GTx_UnitXmlLoad('C029.XML');
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ls_TxLoad) then
    begin
      Screen.Cursor := crDefault;
      Exit;
    end;

    lst_Node := xdom.documentElement.selectNodes('/cdms/header/ClientKey');
    lst_Node.item[0].attributes.getNamedItem('Value').text := 'WOR062';
    lst_Node := xdom.documentElement.selectNodes('/cdms/header/UserID');
    lst_Node.item[0].attributes.getNamedItem('Value').text := GT_USERIF.ID;
    lst_Node := xdom.documentElement.selectNodes('/cdms/Service/Reserves');
    lst_Node.item[0].attributes.getNamedItem('action').Text := 'INSERT';
		lst_Node.item[0].attributes.getNamedItem('Cnt').Text := '1';

		lst_Node := xdom.documentElement.selectNodes('/cdms/Service/Reserves/Reserve');
    lst_Node.item[0].attributes.getNamedItem('InId').Text := GT_USERIF.ID;
    lst_Node.item[0].attributes.getNamedItem('Sequence').Text := ASeq;
    lst_Node.item[0].attributes.getNamedItem('WkCount').Text := IfThen(FWkList.Count > __ONETIME_COUNT, IntToStr(__ONETIME_COUNT), IntToStr(FWkList.Count));

    iCnt := 0;
    while (iCnt < __ONETIME_COUNT) and (FWkList.Count > 0) do
    begin
			sWkSabun := FWkList[0];
			{if sTmp <> 'D' then} FWkList.Delete(0);//연속등록일 경우 선택기사 삭제안되도록 함 기사관리비 등록관련 2019.06.21 KHS
			
			if iCnt > 0 then
      begin
        sWorkerNode := '/cdms/Service/Reserves/Reserve/Detail';
        lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
        lst_clon := lst_node.item[0].cloneNode(True);
        sWorkerNode := '/cdms/Service/Reserves/Reserve';
        lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
        lst_Node.item[0].appendChild(lst_clon);
      end;
      lst_Node.item[0].childNodes.item[iCnt].attributes.getNamedItem('WkSabun').Text := sWkSabun;
      inc(iCnt);
    end;
    ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          Application.ProcessMessages;
          AddWkList(ASeq);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_WOR05.cxcbBrNamePropertiesChange(Sender: TObject);
begin
	if cxcbBrName.Tag = 99 then exit;

	if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
	begin
		proc_search(0);
		cxgResWkList.DataController.SetRecordCount(0);
		GT_BookingWK.WkSabun2.Clear;
    GT_BookingWK.WkName.Clear;
		GT_BookingWK.WkSabun.Clear;
    GT_BookingWK.WkStatus.Clear;
    GT_BookingWK.WkCash.Clear;
    GT_BookingWK.WkCyCash.Clear;

		cxgNOResWkList.DataController.SetRecordCount(0);
		First_BRNO := scb_FamilyWkBranchCode.Strings[cxcbBrName.ItemIndex];
	end else
	begin
    proc_search(0);
		cxgResWkList.DataController.SetRecordCount(0);
    GT_BookingWK.WkSabun2.Clear;
		GT_BookingWK.WkName.Clear;
    GT_BookingWK.WkSabun.Clear;
    GT_BookingWK.WkStatus.Clear;
		GT_BookingWK.WkCash.Clear;
		GT_BookingWK.WkCyCash.Clear;

		cxgNOResWkList.DataController.SetRecordCount(0);
		First_BRNO := scb_WkBranchCode.Strings[cxcbBrName.ItemIndex];
	end;
	proc_wkMngSearch(1);
end;

procedure TFrm_WOR05.cxButton4Click(Sender: TObject);
var iCol, iType, iRow : integer;
	sSeq : string;
begin
	cxgResWkList.DataController.SetRecordCount(0);
	iRow := cxgResList.DataController.FocusedRecordIndex;
	if iRow < 0 then Exit;
	iCol := cxgResList.GetColumnByFieldName('코드').Index;
	sSeq := cxgResList.DataController.Values[iRow, iCol];
	iType := StrToIntDef(cxgResList.DataController.Values[iRow, 16], 0);
	if (sSeq <> '') and (iType in [0, 2]) then
	begin
		proc_search(1);
	end;

end;

procedure TFrm_WOR05.cxButton5Click(Sender: TObject);
var iCol, iType, iRow : integer;
	sSeq : string;
begin
	cxgNOResWkList.DataController.SetRecordCount(0);
	iRow := cxgResList.DataController.FocusedRecordIndex;
	if iRow < 0 then Exit;
	iCol := cxgResList.GetColumnByFieldName('코드').Index;
	sSeq := cxgResList.DataController.Values[iRow, iCol];
	iType := StrToIntDef(cxgResList.DataController.Values[iRow, 16], 0);
	if (sSeq <> '') and (iType in [0, 2]) then
	begin
		proc_wkMngSearch;
	end;
end;

procedure TFrm_WOR05.proc_wkMngSearch(iType: Integer);
var
  SendData, XmlData, Param, Key, ErrMsg: string;
  ErrCode: Integer;
  lst_Result: IXMLDomNodeList;
	StrList, slList : TStringList;
  I: Integer;
  sData, sType: string;
  tmpCnt: integer;
  tmpCntStr: string;
  k: Integer;
	tmpStr, msg, sBrNo: string;
  ArrSt: array of string;
	iRow, icnt, j : integer;
begin
	sBrNo := '';
	if Not pWOR05Dock.bUnDock then pWOR05Dock.GUBUN := GT_SEL_BRNO.GUBUN;
  if Not pWOR05Dock.bUnDock then pWOR05Dock.HdNo  := GT_SEL_BRNO.HdNo;
  if Not pWOR05Dock.bUnDock then pWOR05Dock.BrNo  := GT_SEL_BRNO.BrNo;
  if Not pWOR05Dock.bUnDock then pWOR05Dock.BrName:= GT_SEL_BRNO.BrName;

  if (GT_USERIF.LV = '10') and (pWOR05Dock.GUBUN = '1') and (not IsPassedManagementWk(pWOR05Dock.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 기사관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [pWOR05Dock.BrNo, pWOR05Dock.BrName]), CDMSE);
    Exit;
  end;

	cxgNOResWkList.DataController.SetRecordCount(0);

	Param := 'TASK01';
	if iType = 0 then
	begin
		if (GT_USERIF.LV = '60') and (pWOR05Dock.GUBUN <> '1') then  //본사
		begin
			if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
				Param := Param + '│' + pWOR05Dock.HDNO
			else
				Param := Param + '│' + GT_USERIF.HD;
			Param := Param + '│' ;
		end else
		begin
			if (GT_USERIF.LV = '60') then
			begin
				if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
					Param := Param + '│' + pWOR05Dock.HDNO
				else
					Param := Param + '│' + GT_USERIF.HD;
				Param := Param + '│' + pWOR05Dock.BrNo;
			end else
			begin
				Param := Param + '│' + GT_USERIF.HD;
				Param := Param + '│' + GT_USERIF.BR;
			end;
		end;
//WS	00	기사상태	정상
//WS	01	기사상태	정상(사용료지사대납)
//WS	10	기사상태	수수료미납
//WS	21	기사상태	보험료미납
//WS	22	기사상태	사용료미납
//WS	23	기사상태	보험료+사용료미납
//WS	30	기사상태	비인증
//WS	40	기사상태	기타정지
//WS	50	기사상태	퇴직
//WS	60	기사상태	본사정지	
		if cxComboBox1.ItemIndex = 2 then
		begin
			case cb_WkStatus.ItemIndex of
				0 : Param := Param + '│' + '00';  //정상
				1 : Param := Param + '│' + '10';  //수수료미납
				2 : Param := Param + '│' + '21';  //보험료미납
				3 : Param := Param + '│' + '22';  //사용료미납
				4 : Param := Param + '│' + '23';  //보험료+사용료미납
				5 : Param := Param + '│' + '30';  //비인증
				6 : Param := Param + '│' + '40';  //기타정지
				7 : Param := Param + '│' + '60';  //본사정지
			end;                                 
			Param := Param + '│' + '0' + IntToStr(cb_WkStatus.ItemIndex + 1);
		end else
		begin
			Param := Param + '│' + '00';
		end; 
		Param := Param + '│';
		
	end else
	if iType = 1 then
	begin
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
		begin
			sBrNo := scb_FamilyWkBranchCode.Strings[cxcbBrName.ItemIndex];
		end else
		begin
			sBrNo := scb_WkBranchCode.Strings[cxcbBrName.ItemIndex];
		end;

		if (GT_USERIF.LV = '60') then
		begin
			if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
				Param := Param + '│' + pWOR05Dock.HDNO
			else
				Param := Param + '│' + GT_USERIF.HD;
		end else
		begin
			Param := Param + '│' + GT_USERIF.HD;
		end;
		Param := Param + '│' + sBrNo;

		if cxComboBox1.ItemIndex = 2 then
		begin
			case cb_WkStatus.ItemIndex of
				0 : Param := Param + '│' + '00';  //정상
				1 : Param := Param + '│' + '10';  //수수료미납
				2 : Param := Param + '│' + '21';  //보험료미납
				3 : Param := Param + '│' + '22';  //사용료미납
				4 : Param := Param + '│' + '23';  //보험료+사용료미납
				5 : Param := Param + '│' + '30';  //비인증
				6 : Param := Param + '│' + '40';  //기타정지
				7 : Param := Param + '│' + '60';  //본사정지
			end;                                 
			Param := Param + '│' + '0' + IntToStr(cb_WkStatus.ItemIndex + 1);
		end else
		begin
			Param := Param + '│' + '00';
		end; 
		Param := Param + '│';
	end;

	try
		Screen.Cursor := crHourGlass;
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel05('GET_WK_LIST', 'MNG_WK.GET_WK_LIST', '100', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('기사정보 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				Screen.Cursor := crDefault;
				FreeAndNil(slList);
				Exit;
			end;

			iCnt := 1;
			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			StrList := TStringList.Create;
			
//			cxgNOResWkList.DataController.SetRecordCount(0);
				cxgNOResWkList.BeginUpdate;
			
			for j := 0 to slList.Count - 1 do
			begin
				Frm_Flash.cxPBar1.Position := j + 1;
				Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
				Application.ProcessMessages;
				xmlData := slList.Strings[j];

				if Pos('<Data Count="',xmlData)>0 then
				begin
					tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
					if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
					tmpCnt:=StrToIntDef(tmpCntStr,0);
				end;
		
				SetLength(ArrSt,tmpCnt);
				tmpStr:=xmlData;
				tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
				tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
				tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);

				if Pos('<Result Value=',XmlData)>0 then
					tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);

				if tmpCnt>0 then
				begin
					for k:=0 to tmpCnt-1 do
					begin
						ArrSt[k]:=tmpStr;
						if Pos('/>',tmpStr)>0 then
						begin
							ArrSt[k]:=Copy(tmpStr,1,Pos('/>',tmpStr)-1);
							if Pos('<Result Value=',ArrSt[k]) > 0 then
								ArrSt[k] := Copy(ArrSt[k],Pos('<Result Value=',ArrSt[k])+14,Length(ArrSt[k])-Pos('<Result Value=',ArrSt[k])+14+1);
							if Pos('/>',ArrSt[k]) > 0 then
								ArrSt[k] := Copy(ArrSt[k],1,Pos('/>',ArrSt[k])-1);
							ArrSt[k]:=StringReplace(ArrSt[k],'"','',[rfReplaceAll]);

							tmpStr:=Copy(tmpStr,Pos('/>',tmpStr)+2,Length(tmpStr)-Pos('/>',tmpStr)+2+1);
							StrList.Clear;
							GetTextSeperationEx('│', StringReplace(ArrSt[k], '&amp;', '', [rfReplaceAll]), StrList);

							if GT_BookingWK.WkSabun.IndexOf(StrList.Strings[1]) < 0 then
							begin
								if cxTextEdit2.Text <> '' then
								begin     ;
									if cxComboBox1.ItemIndex = 0 then
									begin
										if copy(StrList.Strings[2], 1, length(cxTextEdit2.Text)) = cxTextEdit2.Text then
										begin
											iRow := cxgNOResWkList.DataController.AppendRecord;

											SetGridData(cxgNOResWkList, iRow, 0, IntToStr(icnt));
											SetGridData(cxgNOResWkList, iRow, 1, StrList.Strings[0]);
											SetGridData(cxgNOResWkList, iRow, 2, StrList.Strings[2]);
											SetGridData(cxgNOResWkList, iRow, 3, StrList.Strings[3]);
											SetGridData(cxgNOResWkList, iRow, 4, StrList.Strings[4]);
											SetGridData(cxgNOResWkList, iRow, 5, StrList.Strings[5]);
											SetGridData(cxgNOResWkList, iRow, 6, StrList.Strings[6]);
											SetGridData(cxgNOResWkList, iRow, 7, StrList.Strings[1]);
											inc(icnt);
										end;
									end	else
									if cxComboBox1.ItemIndex = 1 then
									begin
										if pos(cxTextEdit2.Text, StrList.Strings[3]) > 0 then
										begin
											iRow := cxgNOResWkList.DataController.AppendRecord;

											SetGridData(cxgNOResWkList, iRow, 0, IntToStr(icnt));
											SetGridData(cxgNOResWkList, iRow, 1, StrList.Strings[0]);
											SetGridData(cxgNOResWkList, iRow, 2, StrList.Strings[2]);
											SetGridData(cxgNOResWkList, iRow, 3, StrList.Strings[3]);
											SetGridData(cxgNOResWkList, iRow, 4, StrList.Strings[4]);
											SetGridData(cxgNOResWkList, iRow, 5, StrList.Strings[5]);
											SetGridData(cxgNOResWkList, iRow, 6, StrList.Strings[6]);
											SetGridData(cxgNOResWkList, iRow, 7, StrList.Strings[1]);
											inc(icnt);
										end;
									end	else
									if cxComboBox1.ItemIndex = 2 then
									begin
										if copy(StrList.Strings[2], 1, length(cxTextEdit2.Text)) = cxTextEdit2.Text then
										begin
											iRow := cxgNOResWkList.DataController.AppendRecord;

											SetGridData(cxgNOResWkList, iRow, 0, IntToStr(icnt));
											SetGridData(cxgNOResWkList, iRow, 1, StrList.Strings[0]);    
											SetGridData(cxgNOResWkList, iRow, 2, StrList.Strings[2]);
											SetGridData(cxgNOResWkList, iRow, 3, StrList.Strings[3]);
											SetGridData(cxgNOResWkList, iRow, 4, StrList.Strings[4]);
											SetGridData(cxgNOResWkList, iRow, 5, StrList.Strings[5]);
											SetGridData(cxgNOResWkList, iRow, 6, StrList.Strings[6]);
											SetGridData(cxgNOResWkList, iRow, 7, StrList.Strings[1]);
											inc(icnt);
										end else
										if pos(cxTextEdit2.Text, StrList.Strings[3]) > 0 then
										begin
											iRow := cxgNOResWkList.DataController.AppendRecord;

											SetGridData(cxgNOResWkList, iRow, 0, IntToStr(icnt));
											SetGridData(cxgNOResWkList, iRow, 1, StrList.Strings[0]);
											SetGridData(cxgNOResWkList, iRow, 2, StrList.Strings[2]);
											SetGridData(cxgNOResWkList, iRow, 3, StrList.Strings[3]);
											SetGridData(cxgNOResWkList, iRow, 4, StrList.Strings[4]);
											SetGridData(cxgNOResWkList, iRow, 5, StrList.Strings[5]);
											SetGridData(cxgNOResWkList, iRow, 6, StrList.Strings[6]);
											SetGridData(cxgNOResWkList, iRow, 7, StrList.Strings[1]);
											inc(icnt);
										end;
									end;
								end else
								begin
									iRow := cxgNOResWkList.DataController.AppendRecord;

									cxgNOResWkList.DataController.Values[iRow,0] := icnt;
									cxgNOResWkList.DataController.Values[iRow,1] := StrList.Strings[0];
									cxgNOResWkList.DataController.Values[iRow,2] := StrList.Strings[2];
									cxgNOResWkList.DataController.Values[iRow,3] := StrList.Strings[3];
									cxgNOResWkList.DataController.Values[iRow,4] := StrList.Strings[4];
									cxgNOResWkList.DataController.Values[iRow,5] := StrList.Strings[5];
									cxgNOResWkList.DataController.Values[iRow,6] := StrList.Strings[6];
									cxgNOResWkList.DataController.Values[iRow,7] := StrList.Strings[1];

									inc(icnt);
								end;
							end;
						end;
					end;
				end;
			end;
		finally
			StrList.Free;
			cxgNOResWkList.endupdate;
			FreeAndNil(slList);
			Frm_Flash.Hide;
			Screen.Cursor := crDefault;
		end;
	except
		on E: Exception do
		begin
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			cxgNOResWkList.endupdate;
			Frm_Flash.Hide;
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_WOR05.cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Ord(Key) = VK_RETURN then
    cxButton4Click(cxButton4);
end;

procedure TFrm_WOR05.cxTextEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Ord(Key) = VK_RETURN then
    cxButton5Click(cxButton5);
end;

procedure TFrm_WOR05.edt_DayCashKeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if Key = vk_Return then btn_Calc.SetFocus;
end;

procedure TFrm_WOR05.edt_MemoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then cxbAdd.SetFocus;
end;

procedure TFrm_WOR05.edt_TotCashKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then edt_DayCash.SetFocus;
end;

procedure TFrm_WOR05.cxgNOResWkListCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
	AShift: TShiftState; var AHandled: Boolean);
var iRow, iCol1, iCol2, iCol3, iCol4, iCol5, iCol6 : integer;
begin
	iRow := cxgNOResWkList.DataController.FocusedRecordIndex;
	iCol1:= cxgNOResWkList.GetColumnByFieldName('자체사번').Index;
	iCol2:= cxgNOResWkList.GetColumnByFieldName('기사명').Index;
	iCol3:= cxgNOResWkList.GetColumnByFieldName('상태').Index;
	iCol4:= cxgNOResWkList.GetColumnByFieldName('공용캐쉬').Index;
	iCol5:= cxgNOResWkList.GetColumnByFieldName('자체캐쉬').Index;
	iCol6:= cxgNOResWkList.GetColumnByFieldName('기사사번').Index;
	
	FSELWKLIST.WkSabun2 := cxgNOResWkList.DataController.Values[iRow, iCol1];
	FSELWKLIST.WkName   := cxgNOResWkList.DataController.Values[iRow, iCol2];
	FSELWKLIST.WkStatus := cxgNOResWkList.DataController.Values[iRow, iCol3];
	FSELWKLIST.WkCash   := cxgNOResWkList.DataController.Values[iRow, iCol4];
	FSELWKLIST.WkCyCash := cxgNOResWkList.DataController.Values[iRow, iCol5];
	FSELWKLIST.WkSabun  := cxgNOResWkList.DataController.Values[iRow, iCol6];
end;

procedure TFrm_WOR05.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WOR05.proc_BookingWK;
var i, iRow : integer;
begin
  cxgResWkList.DataController.SetRecordCount(0);
  cxgResWkList.BeginUpdate;
  for i := 0 to GT_BookingWK.WkSabun.Count - 1 do
  begin
    iRow := cxgResWkList.DataController.AppendRecord;
    cxgResWkList.DataController.Values[iRow, 0] := IntToStr(i + 1);
    cxgResWkList.DataController.Values[iRow, 1] := GT_BookingWK.WkSabun2[i];
    cxgResWkList.DataController.Values[iRow, 2] := GT_BookingWK.WkName[i];
    cxgResWkList.DataController.Values[iRow, 3] := GT_BookingWK.WkStatus[i];
    cxgResWkList.DataController.Values[iRow, 4] := GT_BookingWK.WkCash[i];
    cxgResWkList.DataController.Values[iRow, 5] := GT_BookingWK.WkCyCash[i];
    cxgResWkList.DataController.Values[iRow, 6] := GT_BookingWK.WkSabun[i];
  end;
  cxgResWkList.DataController.FocusedRowIndex := 0;
  cxgResWkList.EndUpdate;
end;

procedure TFrm_WOR05.proc_init;
begin
	cxChkMY.Checked := False;
	cxChkMYClick(cxChkMY);
	cEdYearS.Text := '';
	cEdYearE.Text := '';
	cxSEMon.Date := now;

	cxrbDay.Checked := True;
	cxcbWkGubun.ItemIndex := 0;
	startDate1.Date := now + 1;
	endDate1.Text := '';
	cxceCash.Text := '';
	cxedMemo.Text := '';
	cxrb0.Checked := True;
	cxrb0Click(cxrb0);
	cxcbSel.ItemIndex := 0;
	cxedKey.Text := '';
	pnlWkStatus.Visible := False;
  cxbAdd.Caption := '등록';
  Panel9.Enabled := True;
	cxcbWkGubun.Enabled := True;
	startDate1.Enabled := True;
  endDate1.Enabled := True;
  cxceCash.Enabled := True;
	cxedMemo.Enabled := True;

	edt_TotCash.Text := '';
	edt_DayCash.Text := '';
	edt_Memo.Text := '';

	cxLabel22.visible := False;
	cxLabel25.visible := False;
	cxLabel29.visible := False;
	cxLabel33.visible := False;
	cxLabel15.visible := False;
	cxLabel34.visible := False;
	cxLabel31.visible := False;
	cxLabel27.visible := False;
	cxLabel37.visible := False;
	
	lbSDate.visible := False;
	lbEDate.visible := False;
	lbTotCash.visible := False;
	lbDayCash.visible := False;
	lbDayCash2.visible := False;
	lbDays.visible := False;
	lbModCash.visible := False;

	cxTextEdit1.Text := '';
	cxTextEdit2.Text := '';
	cxgResList.DataController.SetRecordCount(0);

	cxgResWkList.DataController.SetRecordCount(0);
	GT_BookingWK.WkSabun2.Clear;
	GT_BookingWK.WkName.Clear;
	GT_BookingWK.WkSabun.Clear;
	GT_BookingWK.WkStatus.Clear;
	GT_BookingWK.WkCash.Clear;
	GT_BookingWK.WkCyCash.Clear;

	cxgNOResWkList.DataController.SetRecordCount(0);
	FWkList.Clear;
	FNOWkList.Clear;

end;

procedure TFrm_WOR05.proc_SelectWK;
begin
  GT_BookingWK.WkSabun2.Add(FSELWKLIST.WkSabun2);
  GT_BookingWK.WkName.Add(FSELWKLIST.WkName);
  GT_BookingWK.WkStatus.Add(FSELWKLIST.WkStatus);
  GT_BookingWK.WkCash.Add(FSELWKLIST.WkCash);
  GT_BookingWK.WkCyCash.Add(FSELWKLIST.WkCyCash);
  GT_BookingWK.WkSabun.Add(FSELWKLIST.WkSabun);
end;

procedure TFrm_WOR05.cxgResWkListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var iRow, iIndex : integer;
begin
  if Ord(key) = vk_Return then
  begin
    if (cxTextEdit1.Text  <> '') then
    begin
      if cxcbSel1.ItemIndex = 0 then
        iRow := cxgResWkList.GetColumnByFieldName('자체사번').Index
      else if cxcbSel1.ItemIndex = 1 then
        iRow := cxgResWkList.GetColumnByFieldName('기사명').Index;

      iIndex := cxgResWkList.DataController.FindRecordIndexByText(cxgResWkList.DataController.FocusedRecordIndex + 1,iRow,cxTextEdit1.Text,True,True,True);
      if iIndex < 0 then
      begin
        GMessagebox('찾으시는 기사가 없습니다.',CDMSE);
        Exit;
      end;
      cxGrid1.SetFocus;
      cxgResWkList.DataController.FocusedRecordIndex := iIndex;
    end;
  end;
end;

procedure TFrm_WOR05.cxgNOResWkListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var iRow, iIndex : integer;
begin
  if Ord(key) = vk_Return then
  begin
    if (cxTextEdit2.Text  <> '') then
    begin
      if cxComboBox1.ItemIndex = 0 then
        iRow := cxgNOResWkList.GetColumnByFieldName('자체사번').Index
      else if cxComboBox1.ItemIndex = 1 then
        iRow := cxgNOResWkList.GetColumnByFieldName('기사명').Index;

      iIndex := cxgNOResWkList.DataController.FindRecordIndexByText(cxgNOResWkList.DataController.FocusedRecordIndex + 1,iRow,cxTextEdit2.Text,True,True,True);
      if iIndex < 0 then
      begin
        GMessagebox('찾으시는 기사가 없습니다.',CDMSE);
        Exit;
      end;
      cxGrid2.SetFocus;
      cxgNOResWkList.DataController.FocusedRecordIndex := iIndex;
    end;
  end;
end;

end.

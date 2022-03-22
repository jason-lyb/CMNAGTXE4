unit xe_BTN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.StrUtils, System.Variants, System.Classes, Vcl.Graphics, MSXML2_TLB,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinscxPCPainter, dxBarBuiltInMenu, cxGraphics, cxControls,
	cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  Data.DB, cxDBData, cxLabel, cxCurrencyEdit, cxCheckBox, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.StdCtrls, cxDropDownEdit, cxCalendar, cxMaskEdit,
  cxRadioGroup, cxTextEdit, cxMemo, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
	cxButtons, cxGroupBox, Vcl.ExtCtrls, cxPC, cxGridBandedTableView, DateUtils,
  dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
	TFrm_BTN = class(TForm)
		cxPageControl1: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    pnl_BTN4: TPanel;
    Shape45: TShape;
    cxGroupBox16: TcxGroupBox;
    Shape46: TShape;
    lbBTNCompany04: TcxLabel;
    cxLabel35: TcxLabel;
    cxGrid4: TcxGrid;
    BtnView4: TcxGridDBTableView;
    BtnView4Column1: TcxGridDBColumn;
    BtnView4Column2: TcxGridDBColumn;
    BtnView4Column3: TcxGridDBColumn;
    BtnView4Column4: TcxGridDBColumn;
    BtnView4Column5: TcxGridDBColumn;
    BtnView4Column6: TcxGridDBColumn;
    BtnView4Column7: TcxGridDBColumn;
    BtnView4Column8: TcxGridDBColumn;
    BtnView4Column9: TcxGridDBColumn;
    BtnView4Column10: TcxGridDBColumn;
    BtnView4Column11: TcxGridDBColumn;
    BtnView4Column12: TcxGridDBColumn;
    BtnView4Column13: TcxGridDBColumn;
    cxGrid4Level1: TcxGridLevel;
    cxBrNo4: TcxTextEdit;
    cxHdNo4: TcxTextEdit;
    cxTabSheet5: TcxTabSheet;
    pnl_BTN5: TPanel;
    Shape60: TShape;
    cxBrNo5: TcxTextEdit;
    cxHdNo5: TcxTextEdit;
    cxTabSheet6: TcxTabSheet;
    pnl_BTN2: TPanel;
    Shape5: TShape;
    cxGroupBox2: TcxGroupBox;
    Shape6: TShape;
    Shape7: TShape;
    lbBTNCompany02: TcxLabel;
    btn_2_3: TcxButton;
    btn_2_1: TcxButton;
    btn_2_2: TcxButton;
    cxLabel4: TcxLabel;
    cboSearch_2: TcxComboBox;
    cxLabel8: TcxLabel;
    edtSearch_2: TcxTextEdit;
    btn_2_5: TcxButton;
    cxBrNo2: TcxTextEdit;
    cxHdNo2: TcxTextEdit;
    btn_2_4: TcxButton;
    cxGrid2: TcxGrid;
    BtnView2: TcxGridDBTableView;
    BtnView2Column01: TcxGridDBColumn;
    BtnView2Column02: TcxGridDBColumn;
    BtnView2Column03: TcxGridDBColumn;
    BtnView2Column05: TcxGridDBColumn;
    BtnView2Column07: TcxGridDBColumn;
    BtnView2Column08: TcxGridDBColumn;
    BtnView2Column09: TcxGridDBColumn;
    BtnView2Column06: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    BtnView2Column10: TcxGridDBColumn;
    BtnView2Column11: TcxGridDBColumn;
    BtnView2Column12: TcxGridDBColumn;
    pnl_BTN3: TPanel;
    Shape20: TShape;
    cxGrid3: TcxGrid;
    BtnView3: TcxGridDBTableView;
    BtnView3Column01: TcxGridDBColumn;
    BtnView3Column02: TcxGridDBColumn;
    BtnView3Column03: TcxGridDBColumn;
    BtnView3Column04: TcxGridDBColumn;
    BtnView3Column06: TcxGridDBColumn;
    BtnView3Column08: TcxGridDBColumn;
    BtnView3Column10: TcxGridDBColumn;
    BtnView3Column11: TcxGridDBColumn;
    BtnView3Column09: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGroupBox3: TcxGroupBox;
    Shape21: TShape;
    Shape22: TShape;
    lbBTNCompany03: TcxLabel;
    btn_3_3: TcxButton;
    btn_3_1: TcxButton;
    btn_3_2: TcxButton;
    cxLabel18: TcxLabel;
		cboSearch_3: TcxComboBox;
    cxLabel19: TcxLabel;
    edtSearch_3: TcxTextEdit;
    btn_3_5: TcxButton;
    btn_3_4: TcxButton;
    cxBrNo3: TcxTextEdit;
    cxHdNo3: TcxTextEdit;
    BtnView3Column14: TcxGridDBColumn;
    BtnView3Column23: TcxGridDBColumn;
    BtnView3Column24: TcxGridDBColumn;
    BtnView3Column25: TcxGridDBColumn;
    Shape47: TShape;
    cxLabel36: TcxLabel;
    cbKeynumber04: TcxComboBox;
    cxDate4_1S: TcxDateEdit;
    cxLabel82: TcxLabel;
    cxDate4_1E: TcxDateEdit;
    btn_Date4_1: TcxButton;
    edtName_4_1: TcxTextEdit;
    Shape51: TShape;
    cxLabel40: TcxLabel;
    Shape23: TShape;
    cxLabel3: TcxLabel;
    btn_4_1: TcxButton;
    btn_4_2: TcxButton;
    cboStatus_3: TcxComboBox;
    cxLabel17: TcxLabel;
    Shape24: TShape;
    BtnView4Column14: TcxGridDBColumn;
    cxGroupBox4: TcxGroupBox;
    Shape25: TShape;
    Shape26: TShape;
    Shape27: TShape;
    Shape28: TShape;
    lbBTNCompany05: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cbKeynumber05: TcxComboBox;
    cxDate5_1S: TcxDateEdit;
    cxLabel23: TcxLabel;
    cxDate5_1E: TcxDateEdit;
    btn_Date5_1: TcxButton;
    edtName_5_1: TcxTextEdit;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    btn_5_1: TcxButton;
    btn_5_2: TcxButton;
    cxGrid5: TcxGrid;
		BtnView5: TcxGridDBTableView;
    BtnView5Column1: TcxGridDBColumn;
    BtnView5Column2: TcxGridDBColumn;
    BtnView5Column3: TcxGridDBColumn;
    BtnView5Column4: TcxGridDBColumn;
    BtnView5Column5: TcxGridDBColumn;
    BtnView5Column6: TcxGridDBColumn;
    BtnView5Column7: TcxGridDBColumn;
    BtnView5Column8: TcxGridDBColumn;
    BtnView5Column9: TcxGridDBColumn;
    BtnView5Column10: TcxGridDBColumn;
    BtnView5Column11: TcxGridDBColumn;
    BtnView5Column12: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    pnl_BTN6: TPanel;
    Shape29: TShape;
    cxTextEdit9: TcxTextEdit;
    cxTextEdit10: TcxTextEdit;
    cxGroupBox5: TcxGroupBox;
    Shape30: TShape;
    Shape31: TShape;
    Shape33: TShape;
    lbBTNCompany06: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cbKeynumber06: TcxComboBox;
    cxDate6_1S: TcxDateEdit;
    cxLabel29: TcxLabel;
    cxDate6_1E: TcxDateEdit;
    btn_Date6_1: TcxButton;
    edtName_6_1: TcxTextEdit;
    cxLabel31: TcxLabel;
    btn_6_1: TcxButton;
    btn_6_2: TcxButton;
    cxGrid6: TcxGrid;
		BtnView6: TcxGridDBTableView;
    BtnView6Column1: TcxGridDBColumn;
    BtnView6Column2: TcxGridDBColumn;
    BtnView6Column3: TcxGridDBColumn;
    BtnView6Column4: TcxGridDBColumn;
    BtnView6Column5: TcxGridDBColumn;
    BtnView6Column6: TcxGridDBColumn;
    BtnView6Column7: TcxGridDBColumn;
    BtnView6Column8: TcxGridDBColumn;
    BtnView6Column9: TcxGridDBColumn;
    BtnView6Column10: TcxGridDBColumn;
    BtnView6Column11: TcxGridDBColumn;
    BtnView6Column12: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxHdNo6: TcxTextEdit;
    cxBrNo6: TcxTextEdit;
    cbKeynumber02: TcxComboBox;
    cbKeynumber03: TcxComboBox;
    pm_Date: TPopupMenu;
    N_Today: TMenuItem;
    N_Yesterday: TMenuItem;
    N_Week: TMenuItem;
    N_Month: TMenuItem;
    N_1Start31End: TMenuItem;
    BtnView2Column04: TcxGridDBColumn;
    BtnView3Column07: TcxGridDBColumn;
		BtnView5Column13: TcxGridDBColumn;
    BtnView5Column14: TcxGridDBColumn;
		BtnView6Column13: TcxGridDBColumn;
    BtnView6Column14: TcxGridDBColumn;
    pm_CallBell: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    BtnView2Column13: TcxGridDBColumn;
    BtnView2Column15: TcxGridDBColumn;
    BtnView2Column16: TcxGridDBColumn;
    BtnView2Column17: TcxGridDBColumn;
    BtnView2Column14: TcxGridDBColumn;
    BtnView3Column05: TcxGridDBColumn;
    BtnView3Column12: TcxGridDBColumn;
    BtnView3Column13: TcxGridDBColumn;
    BtnView3Column16: TcxGridDBColumn;
    BtnView3Column22: TcxGridDBColumn;
    BtnView3Column15: TcxGridDBColumn;
    BtnView3Column26: TcxGridDBColumn;
    BtnView3Column27: TcxGridDBColumn;
    BtnView3Column17: TcxGridDBColumn;
    BtnView3Column18: TcxGridDBColumn;
    BtnView3Column19: TcxGridDBColumn;
    BtnView3Column20: TcxGridDBColumn;
    BtnView3Column21: TcxGridDBColumn;
    Shape1: TShape;
    cboStatus_2: TcxComboBox;
    cxLabel1: TcxLabel;
    BtnView3Column28: TcxGridDBColumn;
    cxLabel2: TcxLabel;
    Shape2: TShape;
    BtnView2Column18: TcxGridDBColumn;
    BtnView4Column15: TcxGridDBColumn;
    cxLabel52: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel32: TcxLabel;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    cxLabel37: TcxLabel;
    cxLabel38: TcxLabel;
    cxLabel39: TcxLabel;
    cxLabel41: TcxLabel;
    cxLabel42: TcxLabel;
    cxLabel45: TcxLabel;
    Shape4: TShape;
    BtnView2Column19: TcxGridDBColumn;
    cxLabel5: TcxLabel;
    Shape3: TShape;
    cboStatus_4: TcxComboBox;
    Shape8: TShape;
    cboStatus_5: TcxComboBox;
    cxLabel9: TcxLabel;
    Shape9: TShape;
    cboStatus_6: TcxComboBox;
    cxLabel10: TcxLabel;
    BtnView5Column15: TcxGridDBColumn;
    BtnView6Column15: TcxGridDBColumn;
    BtnView6Column16: TcxGridDBColumn;
    cboStatus_6_1: TcxComboBox;
    pnlChangeUpsoWK: TcxGroupBox;
    Shape10: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape19: TShape;
    Shape34: TShape;
    btnChangeUpsoWK: TcxButton;
    btnChangeUpsoWKClose: TcxButton;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel30: TcxLabel;
    cboFromBranch: TcxComboBox;
    cxLabel43: TcxLabel;
    cboFromKeynumber: TcxComboBox;
    cboFromUpsoWK: TcxComboBox;
    cxLabel44: TcxLabel;
    cxLabel47: TcxLabel;
    cxLabel48: TcxLabel;
    cboToKeynumber: TcxComboBox;
    cboToUpsoWK: TcxComboBox;
    lbResultMsg: TcxLabel;
    Label18: TcxLabel;
    Label1: TcxLabel;
    N3: TMenuItem;
		procedure btn_2_2Click(Sender: TObject);
		procedure btn_3_2Click(Sender: TObject);
		procedure btnAddrSearchClick(Sender: TObject);
		procedure FormDestroy(Sender: TObject);
		procedure btn_2_1Click(Sender: TObject);
		procedure btn_2_6Click(Sender: TObject);
		procedure btn_3_1Click(Sender: TObject);
    procedure btn_3_5Click(Sender: TObject);
		procedure btn_2_5Click(Sender: TObject);
    procedure btn_4_2Click(Sender: TObject);
    procedure btn_5_2Click(Sender: TObject);
    procedure btn_6_2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
		procedure cbKeynumber02Click(Sender: TObject);
		procedure N_TodayClick(Sender: TObject);
		procedure N_YesterdayClick(Sender: TObject);
		procedure N_WeekClick(Sender: TObject);
		procedure N_MonthClick(Sender: TObject);
		procedure N_1Start31EndClick(Sender: TObject);
    procedure btn_Date4_1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure edtSearch_2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbKeynumber02KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtSearch_3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbKeynumber03KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cboStatus_3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtName_4_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtName_5_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtName_6_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
		procedure BtnView2CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
		procedure btn_2_4Click(Sender: TObject);
		procedure btn_3_4Click(Sender: TObject);
		procedure btn_4_1Click(Sender: TObject);
		procedure btn_5_1Click(Sender: TObject);
		procedure btn_6_1Click(Sender: TObject);
    procedure cbKeynumber04PropertiesChange(Sender: TObject);
		procedure BtnView6TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
		procedure BtnView5TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure BtnView4TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure BtnView2MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure BtnView2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnView2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pm_CallBellPopup(Sender: TObject);
		procedure N1Click(Sender: TObject);
    procedure BtnView3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnView3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnView3MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure BtnView3CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure N2Click(Sender: TObject);
    procedure cboStatus_2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCallBellWkHPKeyPress(Sender: TObject; var Key: Char);
    procedure BtnView5CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure BtnView6CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cboStatus_4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cboStatus_5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cboStatus_6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtSearch_2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N3Click(Sender: TObject);
    procedure cboFromBranchPropertiesChange(Sender: TObject);
    procedure cboFromKeynumberPropertiesChange(Sender: TObject);
    procedure cboFromUpsoWKPropertiesChange(Sender: TObject);
    procedure cboToKeynumberPropertiesChange(Sender: TObject);
    procedure cboToUpsoWKPropertiesChange(Sender: TObject);
    procedure btnChangeUpsoWKClick(Sender: TObject);
    procedure btnChangeUpsoWKCloseClick(Sender: TObject);
    procedure pnlChangeUpsoWKMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
	private
		{ Private declarations }
		gSelectUpsoNo : string; //선택된 영업사원, 업소코드
		gbControlKeyDown: Boolean;
		sl_WkID, sl_WkNM : TStringList;

		procedure proc_Init;
		function GetActiveDateControl(AIndex : integer; var AStDt, AEdDt: TcxDateEdit): Boolean;
		procedure CustSetDateControl(AGubun: Integer; AStDt, AEdDt: TcxDateEdit);
		procedure Proc_CallBellWKList; //영업사원리스트조회
		function func_CallBellWK(ABrNo, AWkID : string): Boolean; //영업사원정보조회
		procedure Proc_CallBellWKResign(slBrNo, slWkIDList:TStringList; AWkNm : string); //영업사원 퇴사 
		procedure Proc_CallBellUpsoList; //업소조회
		procedure Proc_CallBellUpsoCanCel(slBrNo, slKeyNumber, slUpSoSeqList, slUpSoNMList:TStringList; AWkNm : string); //업소조회해지

		procedure Proc_ACC_CallBellBranch; //지사정산
		procedure Proc_ACC_CallBellWK; //영업사원정산
		procedure Proc_ACC_CallBellUpso; //업소정산
		function Proc_BRNOSearch: string;
		procedure Proc_ChangeUpsoOpen(AWKID:string); 
		procedure Proc_ChangeUpsoWKSave; //업소담당 영업사원변경

	public
		{ Public declarations }

		Scb_RealCallBell_BrNo, Scb_RealCallBell_KeyNumber,//실제 콜벨사용지사 //실제 콜벨사용대표번호
		Scb_BankCd, Scb_BankNm, Scb_CallBell_BrNo, Scb_CallBell_KeyNumber, Scb_CallBell_RealPhone, Scb_CallBell_WKID, Scb_CallBell_WKNM  : TStringList;
		procedure proc_Bank;
		procedure proc_BrNameSet;
		procedure proc_CallBell_BRANCH_INFO;
		function func_CallBellUpso(ABrNo, AUpSoSeq : string): Boolean; //업소정보조회
	end;

var
	Frm_BTN: TFrm_BTN;

implementation

{$R *.dfm}

uses Main, xe_Lib, xe_JON30, xe_GNL, xe_GNL2, xe_GNL3, xe_BTN01, xe_Func, xe_packet, xe_Xml, xe_Msg
	 , xe_Query, xe_DM, xe_BTN02, xe_BTN03, xe_Flash;

procedure TFrm_BTN.BtnView2CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
	AShift: TShiftState; var AHandled: Boolean);
var iRow : integer; 
	iWkID : integer;
	iTmp : integer;
begin
	iRow := BtnView2.DataController.FocusedRecordIndex;
	if iRow < 0 then 
	begin
		GMessagebox('선택된 영업사원이 없습니다.', CDMSE);
		Exit;
	end;
	iWkID := BtnView2.GetColumnByFieldName('영업사원ID').Index;
	iTmp := ACellViewInfo.item.Index ;
	if iTmp = iWkID  then
	begin
		if ( Not Assigned(Frm_BTN03) ) Or ( Frm_BTN03 = Nil ) then 
			Frm_BTN03 := TFrm_BTN03.Create(Nil)
		else Frm_BTN03.proc_Init;

		if Frm_BTN03.Func_CallBellWKInfo(BtnView2.DataController.Values[iRow, iWkID]) then
		begin
			Frm_BTN03.Show;
			Frm_BTN03.BtnSearchClick(self);
			Frm_BTN03.ed_ChargeCash.SetFocus;
    end;
	end	else
	begin
		btn_2_3.Click;
	end;
end;

procedure TFrm_BTN.BtnView2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if (ssCtrl in Shift) and ((Key = Ord('c')) or (Key = Ord('C')) or (Key = VK_INSERT)) then
	begin
		ShowMessage('영업사원 정보를 복사 할 수 없습니다.');
		Key := 0;
	end;

	if Key = VK_CONTROL then
	begin
		gbControlKeyDown := True;
		BtnView2.OptionsSelection.CellMultiSelect := False;
		BtnView2.OptionsSelection.CellSelect := False;
		BtnView2.OptionsSelection.MultiSelect := True;
	end;
end;

procedure TFrm_BTN.BtnView2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if Key = VK_CONTROL then
	begin
		gbControlKeyDown := False;
	end;
end;

procedure TFrm_BTN.BtnView2MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	if (gbControlKeyDown = False) and (Button = mbLeft) then
	begin
		BtnView2.OptionsSelection.CellMultiSelect := True;
		BtnView2.OptionsSelection.CellSelect := True;
		BtnView2.OptionsSelection.MultiSelect := True;
	end;
end;

procedure TFrm_BTN.BtnView3CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
	btn_3_3.Click;
end;

procedure TFrm_BTN.BtnView3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if (ssCtrl in Shift) and ((Key = Ord('c')) or (Key = Ord('C')) or (Key = VK_INSERT)) then
	begin
		ShowMessage('업소 정보를 복사 할 수 없습니다.');
		Key := 0;
	end;

	if Key = VK_CONTROL then
	begin
		gbControlKeyDown := True;
		BtnView3.OptionsSelection.CellMultiSelect := False;
		BtnView3.OptionsSelection.CellSelect := False;
		BtnView3.OptionsSelection.MultiSelect := True;
	end;
end;

procedure TFrm_BTN.BtnView3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if Key = VK_CONTROL then
	begin
		gbControlKeyDown := False;
	end;
end;

procedure TFrm_BTN.BtnView3MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	if (gbControlKeyDown = False) and (Button = mbLeft) then
	begin
		BtnView3.OptionsSelection.CellMultiSelect := True;
		BtnView3.OptionsSelection.CellSelect := True;
		BtnView3.OptionsSelection.MultiSelect := True;
	end;
end;

procedure TFrm_BTN.BtnView4TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
  AIsFooter: Boolean; var AText: string);
begin
	AText := '[합    계]';
end;

procedure TFrm_BTN.BtnView5CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
	AShift: TShiftState; var AHandled: Boolean);
var iRow, i : integer;
	iBrNo, iWkID : integer;
	iTmp : integer;
	sTmp : string;
begin
	iRow := BtnView5.DataController.FocusedRecordIndex;
	if iRow < 0 then
	begin
		GMessagebox('선택된 영업사원이 없습니다.', CDMSE);
		Exit;
	end;
	iWkID := BtnView5.GetColumnByFieldName('영업사원ID').Index;
	iTmp := ACellViewInfo.item.Index ;
	if iTmp = iWkID  then
	begin
		if ( Not Assigned(Frm_BTN03) ) Or ( Frm_BTN03 = Nil ) then
			Frm_BTN03 := TFrm_BTN03.Create(Nil)
		else Frm_BTN03.proc_Init;

		if Frm_BTN03.Func_CallBellWKInfo(BtnView5.DataController.Values[iRow, iWkID]) then
		begin
			Frm_BTN03.Show;
			Frm_BTN03.BtnSearchClick(self);
			Frm_BTN03.ed_ChargeCash.SetFocus;
    end;
	end	else
	begin
		if ( Not Assigned(Frm_BTN02) ) Or ( Frm_BTN02 = Nil ) then 
			Frm_BTN02 := TFrm_BTN02.Create(Nil)
		else Frm_BTN02.proc_Init;

		for i := 0 to Scb_CallBell_BrNo.Count - 1 do
		begin
			iTmp := scb_DsBranchCode.IndexOf(Scb_CallBell_BrNo[i]);
			if iTmp < 0 then Continue;

			if sTmp = Scb_CallBell_BrNo[i] then Continue;
			// 본사코드   // 지사코드   // 지사명   // 대표번호
			if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			begin
				if cxHdNo2.Text = scb_HeadCode[iTmp] then
				begin
					Frm_BTN02.cboBranch_2.Properties.Items.Add(scb_HeadCode[iTmp] + '.' +
						Scb_CallBell_BrNo[i] + ': ' + scb_DsBranchName[iTmp]);
					sTmp := Scb_CallBell_BrNo[i];
				end;
			end else
			begin
				Frm_BTN02.cboBranch_2.Properties.Items.Add(scb_HeadCode[iTmp] + '.' +
					Scb_CallBell_BrNo[i] + ': ' + scb_DsBranchName[iTmp]);
				sTmp := Scb_CallBell_BrNo[i];
			end;
		end;

		Frm_BTN02.cboBankCode.Properties.Items.Clear;
		Frm_BTN02.cboBankName.Properties.Items.Clear;
		Frm_BTN02.cboBankCode.Properties.Items.Assign(Scb_BankCd);
		Frm_BTN02.cboBankName.Properties.Items.Assign(Scb_BankNm);
		Frm_BTN02.cboBankName.ItemIndex := 0;

		iRow := BtnView5.DataController.FocusedRecordIndex;
		if iRow < 0 then 
		begin
			GMessagebox('선택된 영업사원이 없습니다.', CDMSE);
			Exit;
		end;

		iBrNo := BtnView5.GetColumnByFieldName('지사코드').Index;
		iWkID := BtnView5.GetColumnByFieldName('영업사원ID').Index;

		if not func_CallBellWK(BtnView5.DataController.Values[iRow, iBrNo], BtnView5.DataController.Values[iRow, iWkID]) then
			exit;
			
		Frm_BTN02.btn_2_6.Caption := '수정';
		Frm_BTN02.pnlTitle.Caption := '   영업사원 수정';
		Frm_BTN02.pnlCallBellWK.Hint := 'update';
		Frm_BTN02.cboBranch_2.enabled := False;
		Frm_BTN02.cboKeynumber02_1.enabled := False;
		Frm_BTN02.edtCallBellWkID.enabled := False;
		Frm_BTN02.btnIdCheck.enabled := False;

		Frm_BTN02.Left := (Screen.Width  - Frm_BTN02.Width) div 2;
		Frm_BTN02.top  := (Screen.Height - Frm_BTN02.Height) div 2;
		if Frm_BTN02.top <= 10 then Frm_BTN02.top := 10;

		Frm_BTN02.Tag := 1;	
		Frm_BTN02.Show;
	end;
end;

procedure TFrm_BTN.BtnView5TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
  AIsFooter: Boolean; var AText: string);
begin
	AText := '[합    계]';	
end;

procedure TFrm_BTN.BtnView6CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var iRow, i, iBrNo, iUpCD : integer;
	sTmp : string; 
	iTmp, hMsg, iUse, ICnt : integer;    
begin
	iRow := BtnView6.DataController.FocusedRecordIndex;
	iTmp := ACellViewInfo.item.Index ;
	if iTmp in [7,8,9,10]  then
	begin
		iBrNo := BtnView6.GetColumnByFieldName('지사코드').Index;
		iUpCD := BtnView6.GetColumnByFieldName('업소코드').Index;

		if StrToIntDef(BtnView6.DataController.Values[iRow, ACellViewInfo.item.Index], 0) < 1 then exit;
		
		iUse := 0;
		ICnt := 0;
		for i := 0 to JON03_MAX_CNT - 1 do
		begin
			if Frm_Main.JON03MNG[i].Use = False then
			begin
				iUse := i;
				Break;
			end;
			Inc(ICnt);
		end;

		if iCnt > 4 then
		begin
			hMsg := FindWindow('TMessageForm', 'CMNAGTXE');
			if hMsg <> 0 then
				SendMessage(hMsg, WM_CLOSE, 0, 0);

			GMessagebox('접수현황창 최대 생성수를 초과하였습니다. 접수현황창을 닫고 사용하세요~ @_@', CDMSE);
			Exit;
		end;

		frm_Main.procMainMenuCreateActive(200);

		sTmp := '''A''';
		case iTmp of
			7: sTmp := '''A'''; // 전체 
			8: sTmp := '''2'''; // 완료
			9: sTmp := '''8'''; // 취소
		 10: sTmp := '''4'''; // 문의
		end;

		Frm_Main.Frm_JON03[GI_JON03_LastFromIdx].FCallUpsoSearchInfo.BrNo  := BtnView6.DataController.Values[iRow, iBrNo];
		Frm_Main.Frm_JON03[GI_JON03_LastFromIdx].FCallUpsoSearchInfo.SDate := FormatDateTime('yyyymmdd', cxDate6_1S.date) + '090000';
		Frm_Main.Frm_JON03[GI_JON03_LastFromIdx].FCallUpsoSearchInfo.Edate := FormatDateTime('yyyymmdd', cxDate6_1E.date) + '090000';
		Frm_Main.Frm_JON03[GI_JON03_LastFromIdx].FCallUpsoSearchInfo.UpNo  := BtnView6.DataController.Values[iRow, iUpCD];
		Frm_Main.Frm_JON03[GI_JON03_LastFromIdx].FCallUpsoSearchInfo.Gubun := sTmp;
		Frm_Main.Frm_JON03[GI_JON03_LastFromIdx].rb_Search.Click;
	end else
	begin
		if ( Not Assigned(Frm_BTN01) ) Or ( Frm_BTN01 = Nil ) then 
			Frm_BTN01 := TFrm_BTN01.Create(Nil)
		else Frm_BTN01.proc_Init;

		sTmp := '';
		for i := 0 to Scb_CallBell_BrNo.Count - 1 do
		begin
			iTmp := scb_DsBranchCode.IndexOf(Scb_CallBell_BrNo[i]);
			if iTmp < 0 then Continue;

			if sTmp = Scb_CallBell_BrNo[i] then Continue;
			// 본사코드   // 지사코드   // 지사명   // 대표번호
			if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			begin
				if cxHdNo2.Text = scb_HeadCode[iTmp] then
				begin
					Frm_BTN01.cboBranch.Properties.Items.Add(scb_HeadCode[iTmp] + '.' +
						Scb_CallBell_BrNo[i] + ': ' + scb_DsBranchName[iTmp]);
					sTmp := Scb_CallBell_BrNo[i];
				end;
			end else
			begin
				Frm_BTN01.cboBranch.Properties.Items.Add(scb_HeadCode[iTmp] + '.' +
					Scb_CallBell_BrNo[i] + ': ' + scb_DsBranchName[iTmp]);
				sTmp := Scb_CallBell_BrNo[i];
			end;
		end;


		Frm_BTN01.cboBankCode.Properties.Items.Clear;
		Frm_BTN01.cboBankName.Properties.Items.Clear;
		Frm_BTN01.cboBankCode.Properties.Items.Assign(Scb_BankCd);
		Frm_BTN01.cboBankName.Properties.Items.Assign(Scb_BankNm);
		Frm_BTN01.cboBankName.ItemIndex := 0;

		if iRow < 0 then 
		begin
			GMessagebox('선택된 업소가 없습니다.', CDMSE);
			Exit;
		end;
		iBrNo := BtnView6.GetColumnByFieldName('지사코드').Index;
		iUpCD := BtnView6.GetColumnByFieldName('업소코드').Index;

		if not func_CallBellUpso(BtnView6.DataController.Values[iRow, iBrNo], BtnView6.DataController.Values[iRow, iUpCD]) then	Exit;
			
		Frm_BTN01.btnSave.Caption := '수정';

		Frm_BTN01.pnlTitle.Caption := '   업소(콜벨) 수정';
		Frm_BTN01.pnlTitle.Hint := 'update';
		Frm_BTN01.cboBranch.Enabled := False;
		Frm_BTN01.cboKeynumber.Enabled := False;

		Frm_BTN01.Left := (Screen.Width  - Frm_BTN01.Width) div 2;
		Frm_BTN01.top  := (Screen.Height - Frm_BTN01.Height) div 2;
		if Frm_BTN01.top <= 10 then Frm_BTN01.top := 10;

		Frm_BTN01.Tag := 1;
		Frm_BTN01.Show;
	end;
end;

procedure TFrm_BTN.BtnView6TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
	AIsFooter: Boolean; var AText: string);
begin
	AText := '[합    계]';	
end;

procedure TFrm_BTN.btn_2_1Click(Sender: TObject);
begin
	SetDebugeWrite('TFrm_BTN.btn_2_1Click');
	try
		BtnView2.DataController.SetRecordCount(0);
		Proc_CallBellWKList;
  except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_BTN.btn_2_2Click(Sender: TObject);
var iRow, i : integer;
	iBrNo, iWkID : integer;
	iTmp : integer;
	sTmp : string;    
begin
	if ( Not Assigned(Frm_BTN02) ) Or ( Frm_BTN02 = Nil ) then 
		Frm_BTN02 := TFrm_BTN02.Create(Nil)
	else Frm_BTN02.proc_Init;

	for i := 0 to Scb_CallBell_BrNo.Count - 1 do
	begin
		iTmp := scb_DsBranchCode.IndexOf(Scb_CallBell_BrNo[i]);
		if iTmp < 0 then Continue;

		if sTmp = Scb_CallBell_BrNo[i] then Continue;
		// 본사코드   // 지사코드   // 지사명   // 대표번호
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
		begin
			if cxHdNo2.Text = scb_HeadCode[iTmp] then
			begin
				Frm_BTN02.cboBranch_2.Properties.Items.Add(scb_HeadCode[iTmp] + '.' +
					Scb_CallBell_BrNo[i] + ': ' + scb_DsBranchName[iTmp]);
				sTmp := Scb_CallBell_BrNo[i];
			end;
		end else
		begin
			Frm_BTN02.cboBranch_2.Properties.Items.Add(scb_HeadCode[iTmp] + '.' +
				Scb_CallBell_BrNo[i] + ': ' + scb_DsBranchName[iTmp]);
			sTmp := Scb_CallBell_BrNo[i];
		end;
	end;

	Frm_BTN02.cboBankCode.Properties.Items.Clear;
	Frm_BTN02.cboBankName.Properties.Items.Clear;
	Frm_BTN02.cboBankCode.Properties.Items.Assign(Scb_BankCd);
	Frm_BTN02.cboBankName.Properties.Items.Assign(Scb_BankNm);
	Frm_BTN02.cboBankName.ItemIndex := 0;
	if TcxButton(Sender).Tag = 0 then
	begin
		Frm_BTN02.cboBranch_2.ItemIndex := 0;

		Frm_BTN02.pnlTitle.Caption := '   영업사원 등록';
		Frm_BTN02.pnlCallBellWK.Hint := 'insert';
		Frm_BTN02.btn_2_6.Caption := '저장';
		Frm_BTN02.cboBranch_2.enabled := True;
		Frm_BTN02.cboKeynumber02_1.enabled := True;
		Frm_BTN02.edtCallBellWkID.enabled := True;
		Frm_BTN02.btnIdCheck.enabled := True;
		Frm_BTN02.cboBranch_2.ItemIndex := 0;
		Frm_BTN02.cboStatus_2_1.ItemIndex := 0;
		//		Frm_BTN02.edtCallBellWkID.SetFocus;
	end	else
	if TcxButton(Sender).Tag = 1 then
	begin
		iRow := BtnView2.DataController.FocusedRecordIndex;
		if iRow < 0 then 
		begin
			GMessagebox('선택된 영업사원이 없습니다.', CDMSE);
			Exit;
		end;
		iBrNo := BtnView2.GetColumnByFieldName('지사코드').Index;
		iWkID := BtnView2.GetColumnByFieldName('영업사원ID').Index;

		if not func_CallBellWK(BtnView2.DataController.Values[iRow, iBrNo], BtnView2.DataController.Values[iRow, iWkID]) then	Exit;
			
		Frm_BTN02.btn_2_6.Caption := '수정';
		Frm_BTN02.pnlTitle.Caption := '   영업사원 수정';
		Frm_BTN02.pnlCallBellWK.Hint := 'update';
		Frm_BTN02.cboBranch_2.enabled := False;
		Frm_BTN02.cboKeynumber02_1.enabled := False;
		Frm_BTN02.edtCallBellWkID.enabled := False;
		Frm_BTN02.btnIdCheck.enabled := False;
//		Frm_BTN02.edtCallBellWkName.SetFocus;
	end;
	Frm_BTN02.Left := (Screen.Width  - Frm_BTN02.Width) div 2;
	Frm_BTN02.top  := (Screen.Height - Frm_BTN02.Height) div 2;
	if Frm_BTN02.top <= 10 then Frm_BTN02.top := 10;

	Frm_BTN02.Tag := 0;	
	Frm_BTN02.Show;
end;

procedure TFrm_BTN.btn_2_4Click(Sender: TObject);
var i, iSeq, iNm, iBrNo, iCnt : Integer;
	sWkNm, msg : string;
	slIDTmp, slBrTmp : TStringList;
begin
	SetDebugeWrite('TFrm_BTN.btn_2_4Click');
	try		
		slBrTmp := TStringList.Create;
		slIdTmp := TStringList.Create;
		sWkNm := '';
		iSeq  := BtnView2.GetColumnByFieldName('영업사원ID').Index;
		iNm   := BtnView2.GetColumnByFieldName('영업사원명').Index;
		iBrNo := BtnView2.GetColumnByFieldName('지사코드').Index;
		iCnt := 0;
		for I := 0 to BtnView2.DataController.RecordCount - 1 do
		begin
			if (BtnView2.ViewData.Records[i].Selected) then
			begin
				slBrTmp.Add(BtnView2.ViewData.Records[I].Values[iBrNo]);
				slIDTmp.Add(BtnView2.ViewData.Records[I].Values[iSeq]);
				Inc(iCnt);
				if iCnt = 1 then sWkNm := BtnView2.ViewData.Records[I].Values[iNm];
			end;
		end;
		if iCnt < 1 then 
		begin
			GMessagebox('선택된 영업사원이 없습니다.', CDMSE);
			Exit;
		end;

		if iCnt > 1 then 
			msg := sWkNm + '님 외 ' + IntToStr(iCnt-1) + '명의 영업사원이 선택되었습니다.'#13#10'퇴사처리 하시겠습니까?'
		else
			msg := sWkNm + '님이 선택되었습니다.'#13#10'퇴사처리 하시겠습니까?';
		if Application.MessageBox(PChar(msg), CDMSI, MB_YESNO +
			MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
		begin
			Proc_CallBellWKResign(slBrTmp, slIdTmp, sWkNm);
		end;
		slBrTmp.Free;
		slIdTmp.Free;
  except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_BTN.btn_2_5Click(Sender: TObject);
begin
	if BtnView2.DataController.RecordCount = 0 then
	begin
		GMessagebox('자료가 없습니다.', CDMSE);
		Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
		Exit;
	end;
{
	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
		ShowMessage('[엑셀다운로드[정산메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end; 
}
	Frm_Main.sgExcel := '영업사원관리.xls';
	Frm_Main.sgRpExcel := Format('콜벨>영업사원관리]%s건', [GetMoneyStr(BtnView2.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := cxGrid2;
	Frm_Main.bgExcelOPT := False;
	Frm_Main.proc_excel(0);
end;

procedure TFrm_BTN.btn_2_6Click(Sender: TObject);
begin
	Proc_ChangeUpsoOpen('');
	pnlChangeUpsoWK.Visible := True;
end;

procedure TFrm_BTN.btn_3_1Click(Sender: TObject);
begin
	SetDebugeWrite('TFrm_BTN.btn_3_1Click');
	Try
		BtnView3.DataController.SetRecordCount(0);
		Proc_CallBellUpsoList;
  except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_BTN.btn_3_2Click(Sender: TObject);
var iRow, i, iBrNo, iUpCD : integer;
	sTmp : string;
	iTmp : integer;    
begin
	if ( Not Assigned(Frm_BTN01) ) Or ( Frm_BTN01 = Nil ) then 
		Frm_BTN01 := TFrm_BTN01.Create(Nil)
	else Frm_BTN01.proc_Init;

	sTmp := '';
	for i := 0 to Scb_CallBell_BrNo.Count - 1 do

	begin
		iTmp := scb_DsBranchCode.IndexOf(Scb_CallBell_BrNo[i]);
		if iTmp < 0 then Continue;

		if sTmp = Scb_CallBell_BrNo[i] then Continue;
		// 본사코드   // 지사코드   // 지사명   // 대표번호
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
		begin
			if cxHdNo2.Text = scb_HeadCode[iTmp] then
			begin
				Frm_BTN01.cboBranch.Properties.Items.Add(scb_HeadCode[iTmp] + '.' +
					Scb_CallBell_BrNo[i] + ': ' + scb_DsBranchName[iTmp]);
				sTmp := Scb_CallBell_BrNo[i];
			end;
		end else
		begin
			Frm_BTN01.cboBranch.Properties.Items.Add(scb_HeadCode[iTmp] + '.' +
				Scb_CallBell_BrNo[i] + ': ' + scb_DsBranchName[iTmp]);
			sTmp := Scb_CallBell_BrNo[i];
		end;
	end;     


	Frm_BTN01.cboBankCode.Properties.Items.Clear;
	Frm_BTN01.cboBankName.Properties.Items.Clear;
	Frm_BTN01.cboBankCode.Properties.Items.Assign(Scb_BankCd);
	Frm_BTN01.cboBankName.Properties.Items.Assign(Scb_BankNm);
	Frm_BTN01.cboBankName.ItemIndex := 0;
	if TcxButton(Sender).Tag = 0 then
	begin
		Frm_BTN01.cboBranch.ItemIndex := 0;

		Frm_BTN01.pnlTitle.Caption := '   업소(콜벨) 등록';
		Frm_BTN01.pnlTitle.Hint := 'Insert';
		Frm_BTN01.btnSave.Caption := '저장';
		Frm_BTN01.cboBranch.Enabled := True;
		Frm_BTN01.cboKeynumber.Enabled := True;
//		Frm_BTN01.RbButton23.Click;
		Frm_BTN01.cboStatus.ItemIndex := 0;
//		Frm_BTN01.edtUpsoName.SetFocus;
	end else
	if TcxButton(Sender).Tag = 1 then
	begin
		iRow := BtnView3.DataController.FocusedRecordIndex;
		if iRow < 0 then 
		begin
			GMessagebox('선택된 업소가 없습니다.', CDMSE);
			Exit;
		end;
		iBrNo := BtnView3.GetColumnByFieldName('지사코드').Index;
		iUpCD := BtnView3.GetColumnByFieldName('업소코드').Index;

		if not func_CallBellUpso(BtnView3.DataController.Values[iRow, iBrNo], BtnView3.DataController.Values[iRow, iUpCD]) then	Exit;
			
		Frm_BTN01.btnSave.Caption := '수정';
		Frm_BTN01.pnlTitle.Caption := '   업소(콜벨) 수정';
		Frm_BTN01.pnlTitle.Hint := 'update';
		Frm_BTN01.cboBranch.Enabled := False;
		Frm_BTN01.cboKeynumber.Enabled := False;
	end;
	Frm_BTN01.Left := (Screen.Width  - Frm_BTN01.Width) div 2;
	Frm_BTN01.top  := (Screen.Height - Frm_BTN01.Height) div 2;
	if Frm_BTN01.top <= 10 then Frm_BTN01.top := 10;

	Frm_BTN01.Tag := 0;	
	Frm_BTN01.Show;
end;

procedure TFrm_BTN.btn_3_4Click(Sender: TObject);
var i, iSeq, iNm, iBrNo, iKeyNumber, iCnt : Integer;
	sWkNm, msg : string;
	slIDTmp, slNMTmp, slBrTmp, slKeyNumber : TStringList;
begin
	SetDebugeWrite('TFrm_BTN.btn_3_4Click');
	try		
		slBrTmp := TStringList.Create;
		slKeyNumber := TStringList.Create;
		slIdTmp := TStringList.Create;
		slNMTmp := TStringList.Create;
		
		sWkNm := '';
		iSeq  := BtnView3.GetColumnByFieldName('업소코드').Index;
		iNm  := BtnView3.GetColumnByFieldName('업소명').Index;
		iBrNo := BtnView3.GetColumnByFieldName('지사코드').Index;
		iKeyNumber := BtnView3.GetColumnByFieldName('대표번호').Index;
		iCnt := 0;
		for I := 0 to BtnView3.DataController.RecordCount - 1 do
		begin
			if (BtnView3.ViewData.Records[i].Selected) then
			begin
				slBrTmp.Add(BtnView3.ViewData.Records[I].Values[iBrNo]);
				slKeyNumber.Add(CallToStr(BtnView3.ViewData.Records[I].Values[iKeyNumber]));
				slIDTmp.Add(BtnView3.ViewData.Records[I].Values[iSeq]);
				slNMTmp.Add(BtnView3.ViewData.Records[I].Values[iNm]);
				Inc(iCnt);
				if iCnt = 1 then sWkNm := BtnView3.ViewData.Records[I].Values[iNm];
			end;
		end;
		if iCnt < 1 then 
		begin
			GMessagebox('선택된 업소가 없습니다.', CDMSE);
			Exit;
		end;

		if iCnt > 1 then 
			msg := sWkNm + '업소 외 ' + IntToStr(iCnt-1) + '곳의 업소가 선택되었습니다.'#13#10'해지처리 하시겠습니까?'
		else
			msg := sWkNm + '업소가 선택되었습니다.'#13#10'해지처리 하시겠습니까?';
		if Application.MessageBox(PChar(msg), CDMSI, MB_YESNO +
			MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
		begin
			Proc_CallBellUpsoCanCel(slBrTmp, slKeyNumber, slIdTmp, slNMTmp, sWkNm);
		end;
		slBrTmp.Free;
		slIdTmp.Free;
		slNMTmp.Free;
		slKeyNumber.Free;
  except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_BTN.btn_3_5Click(Sender: TObject);
begin
	if BtnView3.DataController.RecordCount = 0 then
	begin
		GMessagebox('자료가 없습니다.', CDMSE);
		Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
		Exit;
	end;

	Frm_Main.sgExcel := '업소관리.xls';
	Frm_Main.sgRpExcel := Format('콜벨>업소관리]%s건', [GetMoneyStr(BtnView3.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := cxGrid3;
	Frm_Main.bgExcelOPT := False;
	Frm_Main.proc_excel(0);
end;

procedure TFrm_BTN.btn_Date4_1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	pm_Date.Tag := TcxButton(Sender).Tag
end;

procedure TFrm_BTN.cbKeynumber02Click(Sender: TObject);
var
	sName, sBrName, sHdNo, sBrNo: string;
	iIdx: Integer;
begin
	if TcxComboBox(Sender).Tag = 1 then Exit;
	if GT_USERIF.LV = '60' then
	begin
		if GT_SEL_BRNO.GUBUN <> '1' then
		begin
			if TcxComboBox(Sender).Text = '전체' then
			begin
				sName := '[' + GT_SEL_BRNO.HDNO + '] 전체';
				sHdNo := GT_SEL_BRNO.HDNO;
				sBrNo := '';
      end else
      begin
        sHdNo := GT_SEL_BRNO.HDNO;
				if cxPageControl1.ActivePageIndex in [11, 10] then
        begin
          sBrNo := GT_SEL_BRNO.BrNo;
        end else
        begin
          if (TcxComboBox(Sender).Properties.Items.Count > 1) and (TcxComboBox(Sender).ItemIndex > 0) then
          begin
            if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
							sBrNo := scb_DsBranchCode.Strings[scb_KeyNumber.IndexOf(TcxComboBox(Sender).Text)]
            else
              sBrNo := scb_DsBranchCode.Strings[TcxComboBox(Sender).ItemIndex - 1]
          end else
          begin
            if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
							sBrNo := scb_DsBranchCode.Strings[scb_KeyNumber.IndexOf(TcxComboBox(Sender).Text)]
						else
              sBrNo := scb_DsBranchCode.Strings[TcxComboBox(Sender).ItemIndex];
          end;  
        end;
				iIdx := scb_BranchCode.IndexOf(sBrNo);
        if iIdx >= 0 then
					sBrName := scb_BranchName[iIdx]
        else
					sBrName := '';
				sName := '[' + sHdNo + '] - [' + sBrNo + ']' + sBrName;
			end;
    end else
    begin
			sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := GT_SEL_BRNO.BrNo;
      iIdx := scb_BranchCode.IndexOf(sBrNo);
      if iIdx >= 0 then
        sBrName := scb_BranchName[iIdx]
      else
        sBrName := '';
      sName := '[' + sHdNo + '] - [' + sBrNo + ']' + sBrName;
    end;
  end else
  begin
		sHdNo := GT_SEL_BRNO.HDNO;
    sBrNo := GT_SEL_BRNO.BrNo;
		iIdx := scb_BranchCode.IndexOf(sBrNo);
		if iIdx >= 0 then
			sBrName := scb_BranchName[iIdx]
		else
      sBrName := '';
    sName := '[' + sHdNo + '] - [' + sBrNo + ']' + sBrName;
  end;
	case cxPageControl1.ActivePageIndex of
		0:
			begin
				lbBTNCompany02.Caption := sName;
				cxHdNo2.Text := sHdNo;
				cxBrNo2.Text := sBrNo;
			end;
		1:
			begin
				lbBTNCompany03.Caption := sName;
				cxHdNo3.Text := sHdNo;
				cxBrNo3.Text := sBrNo;
			end;
		2:
			begin
				lbBTNCompany04.Caption := sName;
				cxHdNo4.Text := sHdNo;
				cxBrNo4.Text := sBrNo;
			end;
		3:
			begin
				lbBTNCompany05.Caption := sName;
				cxHdNo5.Text := sHdNo;
				cxBrNo5.Text := sBrNo;
			end;
		4:
			begin
				lbBTNCompany06.Caption := sName;
				cxHdNo6.Text := sHdNo;
				cxBrNo6.Text := sBrNo;
			end;
	end;
end;

procedure TFrm_BTN.cbKeynumber02KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then btn_2_1.Click;
end;

procedure TFrm_BTN.cbKeynumber03KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then btn_3_1.Click;
end;

procedure TFrm_BTN.cbKeynumber04PropertiesChange(Sender: TObject);
begin
	if cbKeynumber04.ItemIndex = 0 then
		edtName_4_1.Enabled := True
	else
	begin
		edtName_4_1.Enabled := False;
		edtName_4_1.Text := '';
	end;
end;

procedure TFrm_BTN.cboFromBranchPropertiesChange(Sender: TObject);
var i : integer;
	sBrNo : string;
begin
	sBrNo := Proc_BRNOSearch;
	cboFromKeynumber.Properties.Items.Clear;
	for i := 0 to Frm_BTN.Scb_CallBell_KeyNumber.count -1 do
	begin
		if sBrNo = Frm_BTN.Scb_CallBell_BrNo[i] then
			cboFromKeynumber.Properties.Items.Add(StrToCall(Frm_BTN.Scb_CallBell_KeyNumber[i]));
	end;
	cboFromKeynumber.ItemIndex := 0;

	cboToKeynumber.Properties.Items.Clear;
	cboToKeynumber.Properties.Items.Assign(cboFromKeynumber.Properties.Items);
	cboToKeynumber.ItemIndex := 0;
end;

procedure TFrm_BTN.cboFromKeynumberPropertiesChange(Sender: TObject);
var i, j : integer;
	sKeyNumber, sTmp : string;
	slWkNM, slWkID : TStringList;
begin
	sl_WkID.Clear;
	sl_WkNM.Clear;
	sKeyNumber := CallToStr(cboFromKeynumber.Text);
	cboFromUpsoWK.Properties.Items.Clear;
	slWkNM := TStringList.Create;
	slWkID := TStringList.Create;
	for i := 0 to Frm_BTN.Scb_CallBell_WKID.count -1 do
	begin
		if sKeyNumber = Frm_BTN.Scb_CallBell_KeyNumber[i] then
		begin
			slWkID.Clear;
			slWkID.Delimiter     := ',';
			slWkID.DelimitedText := Frm_BTN.Scb_CallBell_WKID[i];
			slWkNM.Clear;
			slWkNM.Delimiter     := ',';
			slWkNM.DelimitedText := Frm_BTN.Scb_CallBell_WKNM[i];

			for j := 0 to slWkID.count -1 do
			begin
				cboFromUpsoWK.Properties.Items.Add(slWkNM[j] + '[' + slWkID[j] + ']');
				sl_WkID.Add(slWkID[j]);
				sl_WkNM.Add(slWkNM[j]);
			end;
			Break;
		end;
	end;
	cboFromUpsoWK.ItemIndex := 0;

	sTmp := Copy(cboFromUpsoWK.Text, Pos('[', cboFromUpsoWK.Text) + 1, Pos(']',
		cboFromUpsoWK.Text) - (Pos('[', cboFromUpsoWK.Text) + 1)); //지사코드

	cboFromUpsoWK.Hint := sTmp;
end;

procedure TFrm_BTN.cboFromUpsoWKPropertiesChange(Sender: TObject);
var sTmp : string;
begin
	sTmp := Copy(cboFromUpsoWK.Text, Pos('[', cboFromUpsoWK.Text) + 1, Pos(']',
		cboFromUpsoWK.Text) - (Pos('[', cboFromUpsoWK.Text) + 1)); //지사코드

	cboFromUpsoWK.Hint := sTmp;
end;

procedure TFrm_BTN.cboStatus_2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then btn_2_1.Click;
end;

procedure TFrm_BTN.cboStatus_3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then btn_3_1.Click;
end;

procedure TFrm_BTN.cboStatus_4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then btn_4_1.Click;
end;

procedure TFrm_BTN.cboStatus_5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then btn_5_1.Click;
end;

procedure TFrm_BTN.CustSetDateControl(AGubun: Integer; AStDt, AEdDt: TcxDateEdit);
begin
	case AGubun of
	 0: //오늘
		begin
			AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
			AEdDt.Date := AStDt.Date + 1;
		end;
	 1: //어제
		begin
			AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
			AEdDt.Date := AStDt.Date + 1;
		end;
	 2: //최근일주일
		begin
			AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 7;
			AEdDt.Date := AStDt.Date + 7;
		end;
	 3: //1~31일
		begin
			AStDt.Date := StartOfTheMonth(now);
			AEdDt.Date := EndOfTheMonth(Now);
		end;
	 11: //최근한달
    begin
      AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 31;
      AEdDt.Date := AStDt.Date + 31;
    end;
	 12: //3개월
		begin
			AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 91;
			AEdDt.Date := AStDt.Date + 91;
		end;
	 13: //6개월
		begin
			AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 181;
			AEdDt.Date := AStDt.Date + 181;
		end;
	 14: //1년
    begin
      AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 365;
      AEdDt.Date := AStDt.Date + 365;
		end;
	end;
end;

procedure TFrm_BTN.cboStatus_6KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then btn_6_1.Click;
end;

procedure TFrm_BTN.cboToKeynumberPropertiesChange(Sender: TObject);
var i, j : integer;
	sKeyNumber, sTmp : string;
	slWkNM, slWkID : TStringList;
begin
	sKeyNumber := CallToStr(cboToKeynumber.Text);
	cboToUpsoWK.Properties.Items.Clear;
	slWkNM := TStringList.Create;
	slWkID := TStringList.Create;
	for i := 0 to Frm_BTN.Scb_CallBell_WKID.count -1 do
	begin
		if sKeyNumber = Frm_BTN.Scb_CallBell_KeyNumber[i] then
		begin
			slWkID.Clear;
			slWkID.Delimiter     := ',';
			slWkID.DelimitedText := Frm_BTN.Scb_CallBell_WKID[i];
			slWkNM.Clear;
			slWkNM.Delimiter     := ',';
			slWkNM.DelimitedText := Frm_BTN.Scb_CallBell_WKNM[i];

			for j := 0 to slWkID.count -1 do
			begin
				cboToUpsoWK.Properties.Items.Add(slWkNM[j] + '[' + slWkID[j] + ']');
			end;
			Break;
		end;
	end;
	cboToUpsoWK.ItemIndex := 0;

	sTmp := Copy(cboToUpsoWK.Text, Pos('[', cboToUpsoWK.Text) + 1, Pos(']',
		cboToUpsoWK.Text) - (Pos('[', cboToUpsoWK.Text) + 1)); //지사코드

	cboToUpsoWK.Hint := sTmp;
end;

procedure TFrm_BTN.cboToUpsoWKPropertiesChange(Sender: TObject);
var sTmp : string;
begin
	sTmp := Copy(cboToUpsoWK.Text, Pos('[', cboToUpsoWK.Text) + 1, Pos(']',
		cboToUpsoWK.Text) - (Pos('[', cboToUpsoWK.Text) + 1)); //지사코드

	cboToUpsoWK.Hint := sTmp;
end;

procedure TFrm_BTN.btnChangeUpsoWKClick(Sender: TObject);
begin
	Proc_ChangeUpsoWKSave;
end;

procedure TFrm_BTN.btnChangeUpsoWKCloseClick(Sender: TObject);
begin
	pnlChangeUpsoWK.Visible := False;
end;

procedure TFrm_BTN.btn_4_1Click(Sender: TObject);
begin
	SetDebugeWrite('TFrm_BTN.btn_4_1Click');
	Try
		BtnView4.DataController.SetRecordCount(0);
		Proc_ACC_CallBellBranch;
  except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_BTN.btn_4_2Click(Sender: TObject);
begin
	if BtnView4.DataController.RecordCount = 0 then
	begin
		GMessagebox('자료가 없습니다.', CDMSE);
		Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
		Exit;
	end;
{
	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
		ShowMessage('[엑셀다운로드[정산메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end; 
}
	Frm_Main.sgExcel := '콜벨지사정산.xls';
	Frm_Main.sgRpExcel := Format('콜벨>지사정산]%s건', [GetMoneyStr(BtnView4.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := cxGrid4;
	Frm_Main.bgExcelOPT := False;
	Frm_Main.proc_excel(0);
end;

procedure TFrm_BTN.btn_5_1Click(Sender: TObject);
begin
	SetDebugeWrite('TFrm_BTN.btn_5_1Click');
	Try
		BtnView5.DataController.SetRecordCount(0);
		Proc_ACC_CallBellWK;
  except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_BTN.btn_5_2Click(Sender: TObject);
begin
	if BtnView5.DataController.RecordCount = 0 then
	begin
		GMessagebox('자료가 없습니다.', CDMSE);
		Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
		Exit;
	end;
{
	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
		ShowMessage('[엑셀다운로드[정산메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end; 
}
	Frm_Main.sgExcel := '콜벨영업사원정산.xls';
	Frm_Main.sgRpExcel := Format('콜벨>영업사원정산]%s건', [GetMoneyStr(BtnView5.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := cxGrid5;
	Frm_Main.bgExcelOPT := False;
	Frm_Main.proc_excel(0);
end;

procedure TFrm_BTN.btn_6_1Click(Sender: TObject);
begin
	SetDebugeWrite('TFrm_BTN.btn_6_1Click');
	try
		BtnView6.DataController.SetRecordCount(0);
		Proc_ACC_CallBellUpso;
  except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_BTN.btn_6_2Click(Sender: TObject);
begin
	if BtnView6.DataController.RecordCount = 0 then
	begin
		GMessagebox('자료가 없습니다.', CDMSE);
		Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
		Exit;
	end;
{
	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
		ShowMessage('[엑셀다운로드[정산메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end; 
}
	Frm_Main.sgExcel := '콜벨업소정산.xls';
	Frm_Main.sgRpExcel := Format('콜벨>업소정산]%s건', [GetMoneyStr(BtnView6.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := cxGrid6;
	Frm_Main.bgExcelOPT := False;
	Frm_Main.proc_excel(0);
end;

procedure TFrm_BTN.btnAddrSearchClick(Sender: TObject);
begin
	lcsActiveEdit := 'meoCallBell'; // 활성화 된 출발지, 도착지 Edit 구분을 저장.
end;

procedure TFrm_BTN.edtCallBellWkHPKeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else
		key := #0;
end;

procedure TFrm_BTN.edtName_4_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then btn_4_1.Click;
end;

procedure TFrm_BTN.edtName_5_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then btn_5_1.Click;
end;

procedure TFrm_BTN.edtName_6_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then btn_6_1.Click;
end;

procedure TFrm_BTN.edtSearch_2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then btn_2_1.Click;
end;

procedure TFrm_BTN.edtSearch_2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_BTN.edtSearch_3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then btn_3_1.Click;
end;

procedure TFrm_BTN.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	FreeAndNil(Scb_BankCd);
	FreeAndNil(Scb_BankNm);
	FreeAndNil(Scb_RealCallBell_BrNo);
	FreeAndNil(Scb_RealCallBell_KeyNumber);
	FreeAndNil(Scb_CallBell_BrNo);
	FreeAndNil(Scb_CallBell_KeyNumber);
	FreeAndNil(Scb_CallBell_RealPhone);
	FreeAndNil(Scb_CallBell_WKID);
	FreeAndNil(Scb_CallBell_WKNM);

	FreeAndNil(sl_WkID);
	FreeAndNil(sl_WkNM);
	
	if Assigned(Frm_BTN01) then Frm_BTN01.Close;      // 콜벨업소관리
	if Assigned(Frm_BTN02) then Frm_BTN02.Close;      // 콜벨업소관리
	Action := caFree;
end;

procedure TFrm_BTN.FormCreate(Sender: TObject);
begin
	proc_Init;
end;

procedure TFrm_BTN.FormDestroy(Sender: TObject);
begin
	Frm_BTN := Nil;
end;

procedure TFrm_BTN.FormShow(Sender: TObject);
begin
  fSetFont(Frm_BTN, GS_FONTNAME);
	proc_Bank;
end;

function TFrm_BTN.GetActiveDateControl(AIndex: integer; var AStDt, AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;
	case AIndex of
		4 : begin
					AStDt := cxDate4_1S;
					AEdDt := cxDate4_1E;
				 end;
		5 : begin
					AStDt := cxDate5_1S;
					AEdDt := cxDate5_1E;
				 end;
		6 : begin
					AStDt := cxDate6_1S;
					AEdDt := cxDate6_1E;
				end;
	end;          
end;

procedure TFrm_BTN.N1Click(Sender: TObject);
begin
	SetDebugeWrite('TFrm_BTN.N1Click');
	try
		if N1.Tag = 0 then
		begin
			btn_2_4.Click;
		end else
    if N1.Tag = 1 then
		begin
			btn_3_4.Click;
		end;
  except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_BTN.N2Click(Sender: TObject);
begin
	case cxPageControl1.ActivePageIndex of
		0 : begin
					btn_2_5.Click;
				end;
		1 : begin
					btn_3_5.Click;
				end;
		2 : begin
					btn_4_2.Click;
				end;
		3 : begin
					btn_5_2.Click;
				end;
		4 : begin
					btn_6_2.Click;
				end;
	end;
end;

procedure TFrm_BTN.N3Click(Sender: TObject);
var iWkID, iRow : integer;
  sWkID : string;
begin
	iWkID      := BtnView2.GetColumnByFieldName('영업사원ID').Index;

	iRow := BtnView2.DataController.FocusedRecordIndex;
	sWkID      := BtnView2.DataController.Values[iRow, iWkID];
	Proc_ChangeUpsoOpen(sWkID);
	pnlChangeUpsoWK.Visible := True;
end;

procedure TFrm_BTN.N_1Start31EndClick(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(pm_Date.Tag, StDt, EdDt) then
		CustSetDateControl(3, StDt, EdDt);
end;

procedure TFrm_BTN.N_MonthClick(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(pm_Date.Tag, StDt, EdDt) then
		CustSetDateControl(11, StDt, EdDt);
end;

procedure TFrm_BTN.N_TodayClick(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(pm_Date.Tag, StDt, EdDt) then
		CustSetDateControl(0, StDt, EdDt);
end;

procedure TFrm_BTN.N_WeekClick(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(pm_Date.Tag, StDt, EdDt) then
		CustSetDateControl(2, StDt, EdDt);
end;

procedure TFrm_BTN.N_YesterdayClick(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(pm_Date.Tag, StDt, EdDt) then
		CustSetDateControl(1, StDt, EdDt);
end;

procedure TFrm_BTN.pm_CallBellPopup(Sender: TObject);
begin
	N1.Visible := False;
	N2.Visible := False;
	N3.Visible := False;
	N1.Tag := cxPageControl1.ActivePageIndex;
	case cxPageControl1.ActivePageIndex of
		0 : begin
					if BtnView2.DataController.RecordCount > 0 then
					begin
						N1.Visible := True;
						N1.Caption := '퇴사';
						N2.Visible := True;
						N3.Visible := True;
					end;
				end;
		1 : begin
					if BtnView3.DataController.RecordCount > 0 then
					begin
						N1.Visible := True;
						N1.Caption := '해지';
						N2.Visible := True;
					end;
					if not gs_CallBellUse	then N2.Visible := False;
				end;
		2 : begin
					if BtnView4.DataController.RecordCount > 0 then
						N2.Visible := True;
				end;
		3 : begin
					if BtnView5.DataController.RecordCount > 0 then
						N2.Visible := True;
				end;
		4 : begin
					if BtnView6.DataController.RecordCount > 0 then
						N2.Visible := True;
				end;
	end;
end;

procedure TFrm_BTN.pnlChangeUpsoWKMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(pnlChangeUpsoWK.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_BTN.Proc_ACC_CallBellBranch;
var
	XmlData, Param, ErrMsg : string;
	ErrCode, iRow, j, k : Integer;
	ls_Rcrd, slList : TStringList;

  tmpCnt : integer;
  tmpCntStr: string;
  tmpStr: string;
  ArrSt: array of string;
begin
	SetDebugeWrite('TFrm_BTN.Proc_ACC_CallBellBranch');

	if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
		Param := GT_SEL_BRNO.HDNO
	else
		Param := GT_USERIF.HD;
	Param := Param + '│' + FormatDateTime('yyyymmdd', cxDate4_1S.Date);	
	Param := Param + '│' + FormatDateTime('yyyymmdd', cxDate4_1E.Date);	
	if cbKeynumber04.ItemIndex = 0 then
	begin
		Param := Param + '│' + '';
		Param := Param + '│' + Trim(edtName_4_1.Text);
	end else
	begin
		Param := Param + '│' + CallToStr(cbKeynumber04.Text);
		Param := Param + '│' + '';
	end;

	if (GT_USERIF.lv='60') and (GT_SEL_BRNO.GUBUN <> '1') then
		Param := Param + '│' + ''
	else
		Param := Param + '│' + cxBrNo4.text;

	Screen.Cursor := crHourGlass;
	btn_4_1.Enabled := False;

  slList := TStringList.Create;
  try
    try
			if not RequestBasePaging(GetSel06('GET_BR_ACCOUNT', 'BIZ_CUST.GET_BR_ACCOUNT', '1000', Param), slList, ErrCode, ErrMsg) then
    	begin
    		GMessagebox(Format('지사정산 리스트 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    		btn_4_1.Enabled := True;
    		Screen.Cursor := crDefault;
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

        if Pos('<Data Count="',xmlData)>0 then
        begin
          tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
          if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
          tmpCnt:=StrToIntDef(tmpCntStr,0);
        end;

        if tmpCnt < 1 then
        begin
					GMessagebox('검색된 내용이 없습니다.', CDMSE);
          Exit;
        end;

        BtnView4.BeginUpdate;
  			ls_Rcrd := TStringList.Create;
        try
          SetLength(ArrSt,tmpCnt);
          tmpStr:=xmlData;
          tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
          tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
          tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);

          if Pos('<Result Value=',XmlData)>0 then
            tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);

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
              ls_Rcrd.Clear;
              GetTextSeperationEx('│', ArrSt[k], ls_Rcrd);

							if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB   패밀리지사일때
							begin
								if not Check_ALLHD(GT_SEL_BRNO.HDNO) then      //전체지사권한이 없을때
								begin
									if scb_FamilyBrCode.IndexOf(ls_Rcrd[0]) = -1 then   //권한있는 지사일경우만 그리드표기
										continue;
								end
							end;

							iRow := BtnView4.DataController.AppendRecord; // 1 Record 추가

							BtnView4.DataController.Values[iRow,  0] := iRow + 1;
							BtnView4.DataController.Values[iRow,  1] := ls_Rcrd[ 0];    //지사코드
							BtnView4.DataController.Values[iRow,  2] := ls_Rcrd[ 1];    //지사명
							BtnView4.DataController.Values[iRow,  3] := StrToCall(ls_Rcrd[ 2]);    //대표번호
							BtnView4.DataController.Values[iRow,  4] := ls_Rcrd[ 3];    //총건수
							BtnView4.DataController.Values[iRow,  5] := ls_Rcrd[ 4];    //완료건수
							BtnView4.DataController.Values[iRow,  6] := ls_Rcrd[ 5];    //취소건수
							BtnView4.DataController.Values[iRow,  7] := ls_Rcrd[ 6];    //문의건수
							BtnView4.DataController.Values[iRow,  8] := ls_Rcrd[ 7];    //완료운행요금
							BtnView4.DataController.Values[iRow,  9] := ls_Rcrd[ 8];    //완료-기사수수료
							BtnView4.DataController.Values[iRow, 10] := ls_Rcrd[ 9];    //실수익금
							BtnView4.DataController.Values[iRow, 11] := ls_Rcrd[10];    //영업사원-정산금(마일리지)
							BtnView4.DataController.Values[iRow, 12] := ls_Rcrd[11];    //업소-수수료(마일리지)
							BtnView4.DataController.Values[iRow, 13] := ls_Rcrd[12];    //콜벨수수료(미정)
							BtnView4.DataController.Values[iRow, 14] := inttoStr(StrToInt(ls_Rcrd[ 8]) - StrToInt(ls_Rcrd[10]) 
																																 - StrToInt(ls_Rcrd[11]) - StrToInt(ls_Rcrd[12]));    //콜벨정산합계
            end;
          end;
        finally
					ls_Rcrd.Free;
					BtnView4.EndUpdate;
        end;
			end;
    finally
			Frm_Flash.hide;
      FreeAndNil(slList);
			Screen.Cursor := crDefault;
			btn_4_1.Enabled := True;
		end;
	except
		on E: Exception do
		begin
			Screen.Cursor := crDefault;
			btn_4_1.Enabled := True;
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_BTN.Proc_ACC_CallBellUpso;
var
	XmlData, Param, ErrMsg : string;
	ErrCode, iRow, j, k : Integer;
	ls_Rcrd, slList : TStringList;

  tmpCnt : integer;
  tmpCntStr: string;
  tmpStr: string;
  ArrSt: array of string;
begin
	SetDebugeWrite('TFrm_BTN.Proc_ACC_CallBellUpso');
	if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
		Param := GT_SEL_BRNO.HDNO
	else
		Param := GT_USERIF.HD;
	Param := Param + '│' + FormatDateTime('yyyymmdd', cxDate6_1S.Date);	
	Param := Param + '│' + FormatDateTime('yyyymmdd', cxDate6_1E.Date);	
	if cbKeynumber06.ItemIndex = 0 then
	begin
		Param := Param + '│' + '';
	end	else
	begin
		Param := Param + '│' + CallToStr(cbKeynumber06.Text);
	end;
	if (GT_USERIF.lv='60') and (GT_SEL_BRNO.GUBUN <> '1') then
		Param := Param + '│' + ''
	else
		Param := Param + '│' + cxBrNo6.text;

	Param := Param + '│' + IntToStr(cboStatus_6.Itemindex);

	Param := Param + '│' + IntToStr(cboStatus_6_1.Itemindex);
	Param := Param + '│' + Trim(edtName_6_1.Text);

	Screen.Cursor := crHourGlass;
	btn_6_1.Enabled := False;
  slList := TStringList.Create;
  try
    try
			if not RequestBasePaging(GetSel06('GET_CU_ACCOUNT', 'BIZ_CUST.GET_CU_ACCOUNT', '1000', Param), slList, ErrCode, ErrMsg) then
    	begin
    		GMessagebox(Format('영업사원정산 리스트 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    		Screen.Cursor := crDefault;
    		btn_6_1.Enabled := True;
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

        if Pos('<Data Count="',xmlData)>0 then
        begin
          tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
          if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
          tmpCnt:=StrToIntDef(tmpCntStr,0);
        end;

        if tmpCnt < 1 then
        begin
					GMessagebox('검색된 내용이 없습니다.', CDMSE);
          Exit;
        end;

        BtnView6.BeginUpdate;
  			ls_Rcrd := TStringList.Create;
        try
          SetLength(ArrSt,tmpCnt);
          tmpStr:=xmlData;
          tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
          tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
          tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);

          if Pos('<Result Value=',XmlData)>0 then
            tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);

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
              ls_Rcrd.Clear;
              GetTextSeperationEx('│', ArrSt[k], ls_Rcrd);

							if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB   패밀리지사일때
							begin
								if not Check_ALLHD(GT_SEL_BRNO.HDNO) then      //전체지사권한이 없을때
								begin
									if scb_FamilyBrCode.IndexOf(ls_Rcrd[0]) = -1 then   //권한있는 지사일경우만 그리드표기
										continue;
								end
							end;

							iRow := BtnView6.DataController.AppendRecord; // 1 Record 추가

							BtnView6.DataController.Values[iRow,  0] := iRow + 1;
							BtnView6.DataController.Values[iRow,  1] := ls_Rcrd[ 0];    //지사코드
							BtnView6.DataController.Values[iRow,  2] := ls_Rcrd[ 1];    //지사명
							BtnView6.DataController.Values[iRow,  3] := StrToCall(ls_Rcrd[ 2]);    //대표번호
							BtnView6.DataController.Values[iRow,  4] := IfThen(ls_Rcrd[13] = '1', '콜벨업소', '업소');    //구분 1:콜벨, 2 : 업소
							BtnView6.DataController.Values[iRow,  5] := ls_Rcrd[ 3];    //업소코드(고객시퀀스)
							BtnView6.DataController.Values[iRow,  6] := ls_Rcrd[ 4];    //업소명
							BtnView6.DataController.Values[iRow,  7] := ls_Rcrd[ 5];    //총건수
							BtnView6.DataController.Values[iRow,  8] := ls_Rcrd[ 6];    //완료건수
							BtnView6.DataController.Values[iRow,  9] := ls_Rcrd[ 7];    //취소건수
							BtnView6.DataController.Values[iRow, 10] := ls_Rcrd[ 8];    //문의건수
							BtnView6.DataController.Values[iRow, 11] := ls_Rcrd[ 9];    //완료운행요금
							BtnView6.DataController.Values[iRow, 12] := ls_Rcrd[10];    //업소-수익금(마일리지)
							BtnView6.DataController.Values[iRow, 13] := ls_Rcrd[11];    //현재-잔액(마일리지)
							BtnView6.DataController.Values[iRow, 14] := ls_Rcrd[12];    //누적금액(마일리지)
							BtnView6.DataController.Values[iRow, 15] := ls_Rcrd[13];    //고객구분(0:일반 1:업소 3:법인 4:불량(미사용 - 고객등급으로 변경))
            end;
          end;
        finally
					ls_Rcrd.Free;
					BtnView6.EndUpdate;
        end;
			end;
    finally
			Frm_Flash.hide;
      FreeAndNil(slList);
			Screen.Cursor := crDefault;
			btn_6_1.Enabled := True;
    end;
	except
		on E: Exception do
		begin
      Screen.Cursor := crDefault;
			btn_6_1.Enabled := True;
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_BTN.Proc_ACC_CallBellWK;
var
	XmlData, Param, ErrMsg : string;
	ErrCode, iRow, j, k : Integer;
	ls_Rcrd, slList : TStringList;

  tmpCnt : integer;
  tmpCntStr: string;
  tmpStr: string;
  ArrSt: array of string;
begin
	SetDebugeWrite('TFrm_BTN.Proc_ACC_CallBellWK');
	
	if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
		Param := GT_SEL_BRNO.HDNO
	else
		Param := GT_USERIF.HD;
	Param := Param + '│' + FormatDateTime('yyyymmdd', cxDate5_1S.Date);	
	Param := Param + '│' + FormatDateTime('yyyymmdd', cxDate5_1E.Date);	
	if cbKeynumber05.ItemIndex = 0 then
	begin
		Param := Param + '│' + '';
	end	else
	begin
		Param := Param + '│' + CallToStr(cbKeynumber05.Text);
	end;
	Param := Param + '│' + Trim(edtName_5_1.Text);

	if (GT_USERIF.lv='60') and (GT_SEL_BRNO.GUBUN <> '1') then
		Param := Param + '│' + ''
	else
		Param := Param + '│' + cxBrNo5.text;

	Param := Param + '│' + IntToStr(cboStatus_5.Itemindex);
	
	Screen.Cursor := crHourGlass;
	btn_5_1.Enabled := False;
  slList := TStringList.Create;
  try
    try
    	if not RequestBasePaging(GetSel06('GET_MEM_ACCOUNT', 'BIZ_CUST.GET_MEM_ACCOUNT', '1000', Param), slList, ErrCode, ErrMsg) then
    	begin
    		GMessagebox(Format('영업사원정산 리스트 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    		Screen.Cursor := crDefault;
    		btn_5_1.Enabled := True;
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

        if Pos('<Data Count="',xmlData)>0 then
        begin
          tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
          if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
          tmpCnt:=StrToIntDef(tmpCntStr,0);
        end;

        if tmpCnt < 1 then
        begin
					GMessagebox('검색된 내용이 없습니다.', CDMSE);
          Exit;
        end;

        BtnView5.BeginUpdate;
  			ls_Rcrd := TStringList.Create;
        try
          SetLength(ArrSt,tmpCnt);
          tmpStr:=xmlData;
          tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
          tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
          tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);

          if Pos('<Result Value=',XmlData)>0 then
            tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);

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
              ls_Rcrd.Clear;
              GetTextSeperationEx('│', ArrSt[k], ls_Rcrd);

							if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB   패밀리지사일때
							begin
								if not Check_ALLHD(GT_SEL_BRNO.HDNO) then      //전체지사권한이 없을때
								begin
									if scb_FamilyBrCode.IndexOf(ls_Rcrd[0]) = -1 then   //권한있는 지사일경우만 그리드표기
										continue;
								end
							end;

							iRow := BtnView5.DataController.AppendRecord; // 1 Record 추가

							BtnView5.DataController.Values[iRow,  0] := iRow + 1;
							BtnView5.DataController.Values[iRow,  1] := ls_Rcrd[ 0];    //지사코드
							BtnView5.DataController.Values[iRow,  2] := ls_Rcrd[ 1];    //지사명
							BtnView5.DataController.Values[iRow,  3] := ls_Rcrd[ 2];    //영업사원ID
							BtnView5.DataController.Values[iRow,  4] := ls_Rcrd[ 3];    //영업사원이름
							BtnView5.DataController.Values[iRow,  5] := StrToCall(ls_Rcrd[ 4]);    //대표번호
							BtnView5.DataController.Values[iRow,  6] := IfThen(ls_Rcrd[13] = '1', '콜벨업소', '업소');    //구분 1:콜벨, 2 : 업소
							BtnView5.DataController.Values[iRow,  7] := ls_Rcrd[ 5];    //총건수
							BtnView5.DataController.Values[iRow,  8] := ls_Rcrd[ 6];    //완료건수
							BtnView5.DataController.Values[iRow,  9] := ls_Rcrd[ 7];    //취소건수
							BtnView5.DataController.Values[iRow, 10] := ls_Rcrd[ 8];    //문의건수
							BtnView5.DataController.Values[iRow, 11] := ls_Rcrd[ 9];    //완료운행요금
							BtnView5.DataController.Values[iRow, 12] := ls_Rcrd[10];    //영업사원-수익금(마일리지)
							BtnView5.DataController.Values[iRow, 13] := ls_Rcrd[11];    //현재-잔액(마일리지)
							BtnView5.DataController.Values[iRow, 14] := ls_Rcrd[12];    //누적금액(마일리지)
						end;
          end;
        finally
					ls_Rcrd.Free;
					BtnView5.EndUpdate;
        end;
			end;
    finally
			Frm_Flash.hide;
      FreeAndNil(slList);
			Screen.Cursor := crDefault;
			btn_5_1.Enabled := True;
    end;
	except
		on E: Exception do
		begin
			Screen.Cursor := crDefault;
			btn_5_1.Enabled := True;
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_BTN.proc_Bank;
var
	XmlData, Param, ErrMsg: string;
	xdom: msDomDocument;
	lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd: TStringList;
	I, ErrCode : Integer;
begin
	Scb_BankCd.Clear;
	Scb_BankNm.Clear;

	Param := '';

	if not RequestBase(GetSel05('GETBANKCDLIST', 'PAY_OUT.GET_BANK_CD_LIST', '1000', Param), XmlData, ErrCode, ErrMsg) then
	begin
		GMessagebox(Format('은행리스트 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
		Exit;
	end;

  xdom := ComsDomDocument.Create;
  try
    xdom.loadXML(XmlData);
    lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
		if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      ls_Rcrd := TStringList.Create;
			try
				Scb_BankCd.Add('');
				Scb_BankNm.Add('선택');
				for I := 0 to lst_Result.length - 1 do
				begin
					GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
					Scb_BankCd.Add(ls_Rcrd[0]);
					Scb_BankNm.Add(ls_Rcrd[1]);
				end;
			finally
				ls_Rcrd.Free;
			end;
		end;
	finally
		xdom := Nil;
	end;
end;

procedure TFrm_BTN.proc_BrNameSet;
var
	sName, sBrNo, sHdNo : string;
	StrList: TStringList;
	i :integer;
begin
	cbKeynumber02.Properties.Items.Clear;
	cbKeynumber03.Properties.Items.Clear;
	cbKeynumber04.Properties.Items.Clear;
	cbKeynumber05.Properties.Items.Clear;
	cbKeynumber06.Properties.Items.Clear;

	proc_CallBell_BRANCH_INFO; //콜벨정보(지사코드, 대표번호, 실착신번호, 영업사원)
	StrList := TStringList.Create;
	try
		if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
		begin
			cbKeynumber02.Properties.Items.Assign(Scb_CallBell_KeyNumber);
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := '';
		end else
		begin
//			GetBrTelList(GT_SEL_BRNO.BrNo, StrList);
//			cbKeynumber02.Properties.Items.Assign(StrList);
			for i := 0 to  Scb_CallBell_BrNo.count -1 do
			begin
				if Scb_CallBell_BrNo[i] = GT_SEL_BRNO.BrNo then
				begin
					StrList.Add(Scb_CallBell_KeyNumber[I]);
				end;
			end;
			cbKeynumber02.Properties.Items.Assign(StrList);
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := GT_SEL_BRNO.BrNo;
    end;
	finally
		StrList.Free;
	end;
  sName := GetSosokInfo;
	cxHdNo2.Text := sHdNo;
	cxBrNo2.Text := sBrNo;
	cxHdNo3.Text := sHdNo;
	cxBrNo3.Text := sBrNo;
	cxHdNo4.Text := sHdNo;
	cxBrNo4.Text := sBrNo;
	cxHdNo5.Text := sHdNo;
	cxBrNo5.Text := sBrNo;
	cxHdNo6.Text := sHdNo;
	cxBrNo6.Text := sBrNo;

	lbBTNCompany02.Caption := sName;
	lbBTNCompany03.Caption := sName;
	lbBTNCompany04.Caption := sName;
	lbBTNCompany05.Caption := sName;
	lbBTNCompany06.Caption := sName;

	if cbKeynumber02.Properties.Items.Count >= 0 then
		cbKeynumber02.Properties.Items.Insert(0, '전체'); 

	cbKeynumber03.Properties.Items.Assign(cbKeynumber02.Properties.Items);
	cbKeynumber04.Properties.Items.Assign(cbKeynumber02.Properties.Items);
	cbKeynumber05.Properties.Items.Assign(cbKeynumber02.Properties.Items);
	cbKeynumber06.Properties.Items.Assign(cbKeynumber02.Properties.Items);
	cbKeynumber02.Tag := 1;
	cbKeynumber03.Tag := 1;
	cbKeynumber04.Tag := 1;
	cbKeynumber05.Tag := 1;
	cbKeynumber06.Tag := 1;
	cbKeynumber02.ItemIndex := 0;
	cbKeynumber03.ItemIndex := 0;
	cbKeynumber04.ItemIndex := 0;
	cbKeynumber05.ItemIndex := 0;
	cbKeynumber06.ItemIndex := 0;
	cbKeynumber02.Tag := 0;
	cbKeynumber03.Tag := 0;
	cbKeynumber04.Tag := 0;
	cbKeynumber05.Tag := 0;
	cbKeynumber06.Tag := 0;
end;

function TFrm_BTN.Proc_BRNOSearch: string;
begin
	Result := Copy(cboFromBranch.Text, Pos('.', cboFromBranch.Text) + 1, Pos(':',
		cboFromBranch.Text) - (Pos('.', cboFromBranch.Text) + 1)); //지사코드
end;

procedure TFrm_BTN.Proc_CallBellUpsoCanCel(slBrNo, slKeyNumber, slUpSoSeqList, slUpSoNMList: TStringList; AWkNm: string);
var	XmlData, ErrMsg, param : string;
		ErrCode, i : Integer;
		sTmp : string;
		slTmp : TStringList;
begin
	SetDebugeWrite('TFrm_BTN.Proc_CallBellUpsoCanCel');
	Try
		slTmp := TStringList.Create;
		Try
			Screen.Cursor := crHourGlass;
			for i := 0 to slUpSoSeqList.Count -1 do
			begin 
				Param := '2';
				Param := Param + '│' + '';                    //본사코드
				Param := Param + '│' + slBrNo[i];             //지사코드
				Param := Param + '│' + Trim(slKeyNumber[i]);  //대표번호
				Param := Param + '│' + '';                    //영업사원ID
				Param := Param + '│' + Trim(slUpSoSeqList[i]);//업소SEQ
				Param := Param + '│' + '';                    //업소명
				Param := Param + '│' + '';                    //상태
				Param := Param + '│' + '';                    //전화번호
				Param := Param + '│' + '';                    //정산설정
				Param := Param + '│' + '';                    //정산금액
				Param := Param + '│' + '';                    //은행코드
				Param := Param + '│' + '';                    //계좌번호
				Param := Param + '│' + '';                    //예금주
				Param := Param + '│' + '';                    //주소1
				Param := Param + '│' + '';                    //주소2
				Param := Param + '│' + '';                    //주소3
				Param := Param + '│' + '';                    //주소4
				Param := Param + '│' + '';                    //주소5
				Param := Param + '│' + '/';                    //좌표정보
				Param := Param + '│' + '';                    //메모
				Param := Param + '│' + '';                    //업소대표번호

				if not RequestBase(GetCallable06('SET_CUSTOMER_UPDATE', 'BIZ_CUST.SET_CUSTOMER_UPDATE', param), XmlData, ErrCode, ErrMsg) then
				begin
//					GMessagebox(Format('업소해지 시 오류가 발생하였습니다.'#13#10'ID:%s[%d]%s', [slUpSoSeqList[i], ErrCode, ErrMsg]), CDMSE);
					slTmp.Add(slUpSoNMList[i]);
				end;
			end;
			sTmp := '';
			if slTmp.count > 0 then
			begin
				for i := 0 to slTmp.count - 1 do
				begin
					if i = 0 then sTmp := slTmp[i]
					else sTmp := sTmp + ', ' + slTmp[i];
				end;
				sTmp := IntToStr(slTmp.count) + '개(' + sTmp + ')를 제외한 ' + #13#10;
				GMessagebox(IntToStr(slUpSoSeqList.Count) + '개 업소중 ' + sTmp + '업소의 해지처리가 완료되었습니다', CDMSI);
			end	else
			begin
				GMessagebox(IntToStr(slUpSoSeqList.Count) + '개 업소의 해지처리가 완료되었습니다', CDMSI);
			end;
			btn_3_1.Click;
		Finally
			slTmp.Free;
			Screen.Cursor := crDefault;
		End;
  except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_BTN.Proc_CallBellUpsoList;
var
	XmlData, Param, ErrMsg : string;
	ErrCode, iRow, i, j, k, idx : Integer;

	ls_Rcrd, slTmp, slList : TStringList;
	sTmp, sKeynumber : string;

  tmpCnt : integer;
  tmpCntStr: string;
  tmpStr: string;
  ArrSt: array of string;
begin
	SetDebugeWrite('TFrm_BTN.Proc_CallBellUpsoList');
	if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
		Param := GT_SEL_BRNO.HDNO
	else
		Param := GT_USERIF.HD;
	Param := Param + '│' + IntToStr(cboSearch_3.itemIndex + 1);
	Param := Param + '│' + Trim(edtSearch_3.Text);
	Param := Param + '│' + IntToStr(cboStatus_3.Itemindex);
	sKeynumber := '';
	if cbKeynumber03.Itemindex <> 0 then
		sKeynumber := cbKeynumber03.Text;	
	Param := Param + '│' + sKeynumber; //대표번호

	if (GT_USERIF.lv='60') and (GT_SEL_BRNO.GUBUN <> '1') then
		Param := Param + '│' + ''
	else
		Param := Param + '│' + cxBrNo3.text;

	Screen.Cursor := crHourGlass;
	btn_3_1.Enabled := False;

	try
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel06('GET_CUSTOMER_INFO', 'BIZ_CUST.GET_CUSTOMER_INFO', '1000', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('업소조회 리스트 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    		Screen.Cursor := crDefault;
				btn_3_1.Enabled := True;
				FreeAndNil(slList);
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

        if Pos('<Data Count="',xmlData)>0 then
        begin
          tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
          if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
          tmpCnt:=StrToIntDef(tmpCntStr,0);
        end;

        if tmpCnt < 1 then
        begin
					GMessagebox('검색된 내용이 없습니다.', CDMSE);
          Exit;
        end;

        BtnView3.BeginUpdate;
  			ls_Rcrd := TStringList.Create;
  			slTmp := TStringList.Create;
        try
          SetLength(ArrSt,tmpCnt);
          tmpStr:=xmlData;
          tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
          tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
          tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);

          if Pos('<Result Value=',XmlData)>0 then
            tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);

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
              ls_Rcrd.Clear;
              GetTextSeperationEx('│', ArrSt[k], ls_Rcrd);

              iRow := BtnView3.DataController.AppendRecord;
							BtnView3.DataController.Values[iRow,  0] := iRow + 1;
							BtnView3.DataController.Values[iRow,  1] := ls_Rcrd[ 0];    //지사코드
							BtnView3.DataController.Values[iRow,  2] := ls_Rcrd[ 1];    //지사명
							BtnView3.DataController.Values[iRow,  3] := StrToCall(ls_Rcrd[ 2]);    //대표번호
							
							if ls_Rcrd[ 3] = '' then
							begin
								BtnView3.DataController.Values[iRow,  4] := '-';
								BtnView3.DataController.Values[iRow,  5] := '-';
							end
							else
							begin
								BtnView3.DataController.Values[iRow,  4] := ls_Rcrd[ 3];    //영업사원ID
								BtnView3.DataController.Values[iRow,  5] := ls_Rcrd[ 4];    //영업사원명
							end;
							BtnView3.DataController.Values[iRow,  6] := ls_Rcrd[ 5];    //업소코드
							BtnView3.DataController.Values[iRow,  7] := ls_Rcrd[ 6];    //업소명
							if (ls_Rcrd[ 7] = '1') then
								BtnView3.DataController.Values[iRow,  8] := '콜벨업소'    //상태 (1: 등록, 2:해지)
							else
								BtnView3.DataController.Values[iRow,  8] := '업소';    //상태

							sTmp := '';
							slTmp.Clear;
							slTmp.Delimiter     := ',';
							slTmp.DelimitedText := ls_Rcrd[ 8];
							for i := 0 to slTmp.count - 1 do
							begin
								if (copy(slTmp[i],1,3) <> '010') and (copy(slTmp[i],1,3) <> '011') then
								begin
									sTmp := StrToCall(slTmp[i]);
									break;
								end;
							end;
							if sTmp = '' then sTmp := StrToCall(slTmp[0]);
							if slTmp.count > 1 then sTmp := sTmp + ' 외 ' + IntToStr(slTmp.count-1) + '개';
							BtnView3.DataController.Values[iRow,  9] := sTmp;    //전화번호
							BtnView3.DataController.Values[iRow, 10] := StrToCall(ls_Rcrd[23]);    //대표핸드폰

							if ls_Rcrd[ 9] = '1' then
								BtnView3.DataController.Values[iRow, 11] := '일정금액/' + formatfloat('#,##0', StrToFloatDef(ls_Rcrd[10], 0)) + '원'    //정산설정/정산금액
							else if ls_Rcrd[ 9] = '2' then
								BtnView3.DataController.Values[iRow, 11] := '매출비율/' + ls_Rcrd[10] + '%'    //정산설정/정산금액
							else
								BtnView3.DataController.Values[iRow, 11] := '일정금액/' + formatfloat('#,##0', StrToFloatDef(ls_Rcrd[10], 0)) + '원';    //정산설정/정산금액

							BtnView3.DataController.Values[iRow, 12] := ls_Rcrd[10];    //정산금액

							sTmp := '';
							if ls_Rcrd[11] <> '' then
							begin
								idx := Scb_BankCd.IndexOf(ls_Rcrd[11]);
								if idx > -1 then
									sTmp := Scb_BankNm[idx]
								else
									sTmp := '';
								sTmp := sTmp + '/' + ls_Rcrd[12] + '/' + ls_Rcrd[13];
							end;

//							sTmp := Scb_BankNm[Scb_BankCd.IndexOf(ls_Rcrd[11])];
//							sTmp := sTmp + '/' + ls_Rcrd[12] + '/' + ls_Rcrd[13];
							BtnView3.DataController.Values[iRow, 13] := ls_Rcrd[11];    //은행코드
							BtnView3.DataController.Values[iRow, 14] := sTmp;    //출금계좌
							BtnView3.DataController.Values[iRow, 15] := ls_Rcrd[12];    //계좌
							BtnView3.DataController.Values[iRow, 16] := ls_Rcrd[13];    //예금주
							BtnView3.DataController.Values[iRow, 17] := ls_Rcrd[14];    //시도
							BtnView3.DataController.Values[iRow, 18] := ls_Rcrd[15];    //시군구
							BtnView3.DataController.Values[iRow, 19] := ls_Rcrd[16];    //읍면동
							BtnView3.DataController.Values[iRow, 20] := ls_Rcrd[17];    //상세주소
							BtnView3.DataController.Values[iRow, 21] := ls_Rcrd[18];    //입력어
							BtnView3.DataController.Values[iRow, 22] := ls_Rcrd[19];    //좌표
							BtnView3.DataController.Values[iRow, 23] := StringReplace(Trim(ls_Rcrd[20]), '¶', ' ', [rfReplaceAll]);    //메모
							BtnView3.DataController.Values[iRow, 24] := Copy(ls_Rcrd[21], 1, 4) + '-' + Copy(ls_Rcrd[21], 5, 2) + '-' + Copy(ls_Rcrd[21], 7, 2);    //등록일시
							BtnView3.DataController.Values[iRow, 25] := Copy(ls_Rcrd[22], 1, 4) + '-' + Copy(ls_Rcrd[22], 5, 2) + '-' + Copy(ls_Rcrd[22], 7, 2);    //퇴사일시
							BtnView3.DataController.Values[iRow, 26] := ls_Rcrd[ 8];    //전화번호전체
							BtnView3.DataController.Values[iRow, 27] := ls_Rcrd[ 9];    //type                                // 지사코드(14)
            end;
          end;
        finally
					ls_Rcrd.Free;
					slTmp.Free;
					BtnView3.EndUpdate;
        end;
			end;
    finally
      FreeAndNil(slList);
			Frm_Flash.hide;
			Screen.Cursor := crDefault;
			btn_3_1.Enabled := True;
		end;
	except
		on E: Exception do
		begin
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			btn_3_1.Enabled := True;
			Assert(False, E.Message);
		end;
	end;
end;

function TFrm_BTN.func_CallBellUpso(ABrNo, AUpSoSeq: string): Boolean;
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, i, j, iAddRow : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slTmp : TStringList;
	sTmp : string;
begin
	SetDebugeWrite('TFrm_BTN.func_CallBellUpso');
	result := False;
	try
		Param := ABrNo;
		Param := Param + '│' + AUpSoSeq;

		Screen.Cursor := crHourGlass;
		if not RequestBase(GetSel06('GET_CUSTOMER_INFO', 'BIZ_CUST.GET_CUSTOMER_INFO_MODIFY', '1', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('업소조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Screen.Cursor := crDefault;
			result := False;
			Exit;
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
					
					try
						for i := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							Application.ProcessMessages;

							Frm_BTN01.clbCuSeq.Caption := ls_Rcrd[ 5];

							//영업사원 목록에 '없음' 추가를 위해선 상태값이 먼저 정의되어야 함.
							if (ls_Rcrd[ 7] = '1') then
							begin
								Frm_BTN01.cboStatus.ItemIndex := 0;
//								Frm_BTN01.btnSave.Enabled := True;
							end
							else
							begin
								Frm_BTN01.cboStatus.ItemIndex := 1;
//								Frm_BTN01.btnSave.Enabled := False;
							end;

							for j := 0 to Frm_BTN01.cboBranch.Properties.Items.Count - 1 do
							begin
								sTmp := Copy(Frm_BTN01.cboBranch.Properties.Items[j], Pos('.', Frm_BTN01.cboBranch.Properties.Items[j]) + 1, Pos(':',
												Frm_BTN01.cboBranch.Properties.Items[j]) - (Pos('.', Frm_BTN01.cboBranch.Properties.Items[j]) + 1)); //지사코드
								if ls_Rcrd[ 0] = sTmp then
								begin
									Frm_BTN01.cboBranch.ItemIndex := j;
									Break;
								end;
							end;
							Frm_BTN01.cboKeynumber.ItemIndex := Frm_BTN01.cboKeynumber.Properties.Items.Indexof(StrToCall(ls_Rcrd[ 2]));
							Frm_BTN01.cboUpsoWK.ItemIndex := 0;
							for j := 0 to Frm_BTN01.sl_WkID.count - 1 do
							begin
								if ls_Rcrd[ 3] = Frm_BTN01.sl_WkID[j] then
								begin
									Frm_BTN01.cboUpsoWK.ItemIndex := j + 1;
									Break;
								end;
							end;   
							Frm_BTN01.edtUpsoName.Text := ls_Rcrd[ 6];
							Frm_BTN01.edtUpsoHP.Text := StrToCall(ls_Rcrd[23]);


							Frm_BTN01.cxUpsoTel.BeginUpdate;
							Frm_BTN01.cxUpsoTel.DataController.SetRecordCount(0);
							slTmp := TStringList.Create;
							try
								slTmp.Clear;
								slTmp.Delimiter     := ',';
								slTmp.DelimitedText := ls_Rcrd[ 8];
								for j := 0 to slTmp.Count - 1 do
								begin
									iAddRow := Frm_BTN01.cxUpsoTel.DataController.AppendRecord;
									Frm_BTN01.cxUpsoTel.DataController.Values[iAddRow, 0] := strtocall(slTmp[j]);
								end;
								Frm_BTN01.cxUpsoTel.EndUpdate;

								if ls_Rcrd[ 9] = '1' then
								begin
									Frm_BTN01.rb_Straight.Checked := True; 
									Frm_BTN01.rb_Straight.Hint := ls_Rcrd[10];
								end else
                if ls_Rcrd[ 9] = '2' then
								begin
									Frm_BTN01.rb_Declining.Checked := True;
									Frm_BTN01.rb_Declining.Hint := ls_Rcrd[10];
								end	else
								begin
									Frm_BTN01.rb_Straight.Checked := True;
									Frm_BTN01.rb_Straight.Hint := '';
								end;

								Frm_BTN01.edtCalValue.Text := ls_Rcrd[10];
								Frm_BTN01.cboBankName.ItemIndex := scb_BankCd.IndexOf(ls_Rcrd[11]);
								Frm_BTN01.edtBankNumberCust.Text := ls_Rcrd[12];
								Frm_BTN01.edtBankOwnerCust.Text  := ls_Rcrd[13];

								Frm_BTN01.lcsCallBell1 := ls_Rcrd[14];
								Frm_BTN01.lcsCallBell2 := ls_Rcrd[15];
								Frm_BTN01.lcsCallBell3 := ls_Rcrd[16];
								Frm_BTN01.lbUpsoAreaName.Caption  := Frm_BTN01.lcsCallBell1 + ' ' + Frm_BTN01.lcsCallBell2 + ' ' + Frm_BTN01.lcsCallBell3;
								Frm_BTN01.edtUpsoAreaDetail.Caption := ls_Rcrd[17];
								Frm_BTN01.meoCallBellArea.Text := ls_Rcrd[18];
								slTmp.Clear;
								slTmp.Delimiter     := '/';
								slTmp.DelimitedText := ls_Rcrd[19];
								if slTmp.Count = 2 then
								begin
									Frm_BTN01.edtXval.Caption := slTmp[0];
									Frm_BTN01.edtYval.Caption := slTmp[1];
								end;
		
								sTmp := ls_Rcrd[20];
								if Trim(sTmp) <> '' then
								begin
									GetTextSeperationEx2('¶', sTmp, slTmp);
									for j := 0 to slTmp.Count - 1 do
									begin
										Frm_BTN01.meoCallBellUpsoMemo.Lines.Add(slTmp[j]);
									end;
								end;
							finally
								slTmp.Free;
							end;
						end;
					finally
						ls_Rcrd.Free;
						result := True;
					end;
				end	else
				begin
//					GMessagebox('검색된 내용이 없습니다.', CDMSI);
				end;
			end;
		finally
			xdom := Nil;
			Screen.Cursor := crDefault;
		end;
	except
		on E: Exception do
		begin
			Screen.Cursor := crDefault;
			result := False;
			Assert(False, E.Message);
		end;
	end;
end;

function TFrm_BTN.func_CallBellWK(ABrNo, AWkID : string): Boolean;
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, i, idx, j : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slTmp : TStringList;
	sTmp : string;
begin
	result := False;
	SetDebugeWrite('TFrm_BTN.Proc_CallBellWK');
	try
		Param := ABrNo;
		Param := Param + '│' + AWkID;

		Screen.Cursor := crHourGlass;

		if not RequestBase(GetSel06('GET_MEMBER_INFO', 'BIZ_CUST.GET_MEMBER_INFO_MODIFY', '1', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('영업사원조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			result := False;
			Screen.Cursor := crDefault;
			Exit;
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
					try
						for i := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							Application.ProcessMessages;

							for j := 0 to Frm_BTN02.cboBranch_2.Properties.Items.Count - 1 do
							begin
								sTmp := Copy(Frm_BTN02.cboBranch_2.Properties.Items[j], Pos('.', Frm_BTN02.cboBranch_2.Properties.Items[j]) + 1, Pos(':',
												Frm_BTN02.cboBranch_2.Properties.Items[j]) - (Pos('.', Frm_BTN02.cboBranch_2.Properties.Items[j]) + 1)); //지사코드
								if ls_Rcrd[ 0] = sTmp then
								begin
									Frm_BTN02.cboBranch_2.ItemIndex := j;
									Break;
								end;
							end;

							idx := Frm_BTN02.cboKeynumber02_1.Properties.Items.Indexof(StrToCall(ls_Rcrd[14]));
							if idx > -1 then Frm_BTN02.cboKeynumber02_1.ItemIndex := idx else	Frm_BTN02.cboKeynumber02_1.ItemIndex := 0;

							Frm_BTN02.edtCallBellWkID.Text   := ls_Rcrd[ 2];
							Frm_BTN02.edtCallBellWkName.Text := ls_Rcrd[ 3];
							Frm_BTN02.edtCallBellWkHP.Text   := StrToCall(ls_Rcrd[ 5]);
							if (ls_Rcrd[ 4] = '1') or (ls_Rcrd[ 4] = '2') or (ls_Rcrd[ 4] = '3') then
							begin
								Frm_BTN02.cboStatus_2_1.ItemIndex := 0;    //상태 (1: 교육중, 2:근무중, 3:휴가중, 4:사용정지, 9:퇴사)
								Frm_BTN02.btn_2_6.Enabled := True;
							end	else
							begin
								Frm_BTN02.cboStatus_2_1.ItemIndex := 1;   //상태
								Frm_BTN02.btn_2_6.Enabled := False;
							end;

							if ls_Rcrd[ 6] = '1' then
							begin
								Frm_BTN02.rb_Straight_2.Checked := True;
								Frm_BTN02.rb_Straight_2.Hint := ls_Rcrd[ 7];
							end else
              if ls_Rcrd[ 6] = '2' then
							begin
								Frm_BTN02.rb_Declining_2.Checked := True;
								Frm_BTN02.rb_Declining_2.Hint := ls_Rcrd[ 7];
							end	else
							begin
								Frm_BTN02.rb_Straight_2.Checked := True;
								Frm_BTN02.rb_Straight_2.Hint := '';
							end;

							Frm_BTN02.edtCalValue_2.Text := ls_Rcrd[ 7];

							if ls_Rcrd[ 8] <> '' then
							begin
								sTmp := ls_Rcrd[ 8];
								if sTmp <> '' then
									Frm_BTN02.cboBankName.ItemIndex := scb_BankCd.IndexOf(ls_Rcrd[ 8])
								else
									Frm_BTN02.cboBankName.ItemIndex := 0;
							end
							else
								Frm_BTN02.cboBankName.ItemIndex := 0;
							Frm_BTN02.edtBankNumber.Text := ls_Rcrd[ 9];
							Frm_BTN02.edtBankOwner.Text := ls_Rcrd[10];

							sTmp := ls_Rcrd[11];
							if Trim(sTmp) <> '' then
							begin
								slTmp := TStringList.Create;
								try
									GetTextSeperationEx2('¶', sTmp, slTmp);
									for j := 0 to slTmp.Count - 1 do
									begin
										Frm_BTN02.meoCallBellWkMemo.Lines.Add(slTmp[j]);
									end;
								finally
									FreeAndNil(slTmp);
								end;
							end;
							if ls_Rcrd[15] = 'y' then Frm_BTN02.chkUpsoCancel.checked := True else Frm_BTN02.chkUpsoCancel.checked := False; //업소해지권한
						end;
					finally
						ls_Rcrd.Free;
					end;
				end	else
				begin
					GMessagebox('검색된 내용이 없습니다.', CDMSE);
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
			result := False;
			Assert(False, E.Message);
		end;
	end;     
end;

procedure TFrm_BTN.Proc_CallBellWKList;
var
	XmlData, Param, ErrMsg : string;
	ErrCode, iRow, j, k, idx : Integer;
	ls_Rcrd, slList : TStringList;
	sTmp, sKeynumber : string;

  tmpCnt : integer;
  tmpCntStr: string;
  tmpStr: string;
  ArrSt: array of string;
begin
	SetDebugeWrite('TFrm_BTN.Proc_CallBellWKList');
	if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
		Param := GT_SEL_BRNO.HDNO
	else
		Param := GT_USERIF.HD;

	if (GT_USERIF.lv='60') and (GT_SEL_BRNO.GUBUN <> '1') then
		Param := Param + '│' + ''
	else
		Param := Param + '│' + cxBrNo2.text;
		
{	sKeynumber := '';
	if cbKeynumber02.ItemIndex = 0 then //지사코드
		Param := Param + '│' + ''
	else
	begin
		idx := Scb_CallBell_KeyNumber.IndexOf(cbKeynumber02.Text);
		if idx > -1 then
		begin
			Param := Param + '│' + Scb_CallBell_BrNo[idx];
			sKeynumber := cbKeynumber02.Text;
		end
		else Param := Param + '│' + '';
	end;  }
	if cbKeynumber02.ItemIndex = 0 then
		Param := Param + '│' + ''
	else
		Param := Param + '│' + cbKeynumber02.Text; //대표번호
		
	Param := Param + '│' + IntToStr(cboSearch_2.itemIndex +1);
	Param := Param + '│' + Trim(edtSearch_2.Text);
	Param := Param + '│' + IntToStr(cboStatus_2.Itemindex);

//	sTmp := 'B100│콜마너│kkk│테스트│01011112222│1│11122223333│2│메모테스트│20161231│';
//	if sTmp = '' then 
	Screen.Cursor := crHourGlass;
	btn_2_1.Enabled := False;
  slList := TStringList.Create;
  try
    try
    	if not RequestBasePaging(GetSel06('GET_MEMBER_INFO', 'BIZ_CUST.GET_MEMBER_INFO', '1000', Param), slList, ErrCode, ErrMsg) then
    	begin
    		GMessagebox(Format('영업사원조회 리스트 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    		Screen.Cursor := crDefault;
    		btn_2_1.Enabled := True;
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

        if Pos('<Data Count="',xmlData)>0 then
        begin
          tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
          if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
          tmpCnt:=StrToIntDef(tmpCntStr,0);
        end;

        if tmpCnt < 1 then
        begin
					GMessagebox('검색된 내용이 없습니다.', CDMSE);
          Exit;
        end;

        BtnView2.BeginUpdate;
  			ls_Rcrd := TStringList.Create;
        try
          SetLength(ArrSt,tmpCnt);
          tmpStr:=xmlData;
          tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
          tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
          tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);

          if Pos('<Result Value=',XmlData)>0 then
            tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);

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
              ls_Rcrd.Clear;
              GetTextSeperationEx('│', ArrSt[k], ls_Rcrd);

							if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB   패밀리지사일때
							begin
								if not Check_ALLHD(GT_SEL_BRNO.HDNO) then      //전체지사권한이 없을때
								begin
									if scb_FamilyBrCode.IndexOf(ls_Rcrd[0]) = -1 then   //권한있는 지사일경우만 그리드표기
										continue;
								end
							end;
							
							iRow := BtnView2.DataController.AppendRecord; // 1 Record 추가

							BtnView2.DataController.Values[iRow,  0] := iRow + 1;
							BtnView2.DataController.Values[iRow,  1] := ls_Rcrd[ 0];    //지사코드
							BtnView2.DataController.Values[iRow,  2] := ls_Rcrd[ 1];    //지사명
							BtnView2.DataController.Values[iRow,  3] := StrToCall(ls_Rcrd[14]);    //대표번호
							BtnView2.DataController.Values[iRow,  4] := ls_Rcrd[ 2];    //영업사원ID
							BtnView2.DataController.Values[iRow,  5] := ls_Rcrd[ 3];    //영업사원명
							
							if ls_Rcrd[15] = 'y' then //업소해지권한
								BtnView2.DataController.Values[iRow,  6] :=  '○(해지가능)'
							else
								BtnView2.DataController.Values[iRow,  6] :=  'X(해지불가)';        //업소해지권한
								
							if (ls_Rcrd[ 4] = '1') or (ls_Rcrd[ 4] = '2') or (ls_Rcrd[ 4] = '3') then
								BtnView2.DataController.Values[iRow,  7] := '근무중'    //상태 (1: 교육중, 2:근무중, 3:휴가중, 4:사용정지, 9:퇴사)
							else
								BtnView2.DataController.Values[iRow,  7] := '퇴사';    //상태

							BtnView2.DataController.Values[iRow,  8] := StrToCall(ls_Rcrd[ 5]);    //휴대폰
							if ls_Rcrd[ 6] = '1' then
								BtnView2.DataController.Values[iRow,  9] := '일정금액/' + formatfloat('#,##0', StrToFloatDef(ls_Rcrd[ 7], 0)) + '원'    //정산설정/정산금액
							else if ls_Rcrd[ 6] = '2' then
								BtnView2.DataController.Values[iRow,  9] := '매출비율/' + ls_Rcrd[ 7] + '%'    //정산설정/정산금액
							else
								BtnView2.DataController.Values[iRow,  9] := '일정금액/' + formatfloat('#,##0', StrToFloatDef(ls_Rcrd[ 7], 0)) + '원';    //정산설정/정산금액
							sTmp := '';
							if ls_Rcrd[ 8] <> '' then
							begin
								idx := Scb_BankCd.IndexOf(ls_Rcrd[ 8]);
								if idx > -1 then
									sTmp := Scb_BankNm[idx]
								else
									sTmp := '';									
								sTmp := sTmp + '/' + ls_Rcrd[ 9] + '/' + ls_Rcrd[10];									
							end;
							BtnView2.DataController.Values[iRow, 10] := sTmp;    //출금계좌
							BtnView2.DataController.Values[iRow, 11] := StringReplace(Trim(ls_Rcrd[11]), '¶', ' ', [rfReplaceAll]);    //메모
							
							BtnView2.DataController.Values[iRow, 12] := Copy(ls_Rcrd[12], 1, 4) + '-' + Copy(ls_Rcrd[12], 5, 2) + '-' + Copy(ls_Rcrd[12], 7, 2);    //등록일시
							BtnView2.DataController.Values[iRow, 13] := Copy(ls_Rcrd[13], 1, 4) + '-' + Copy(ls_Rcrd[13], 5, 2) + '-' + Copy(ls_Rcrd[13], 7, 2);    //퇴사일시
							BtnView2.DataController.Values[iRow, 14] := ls_Rcrd[ 8];    //은행코드
							BtnView2.DataController.Values[iRow, 15] := ls_Rcrd[ 9];    //예금주
							BtnView2.DataController.Values[iRow, 16] := ls_Rcrd[10];    //예금주
							BtnView2.DataController.Values[iRow, 17] := ls_Rcrd[ 6];    //정산설정
							BtnView2.DataController.Values[iRow, 18] := ls_Rcrd[ 7];    //정산금액
            end;
          end;
        finally
					ls_Rcrd.Free;
					BtnView2.EndUpdate;
        end;
			end;
		finally
		  Frm_Flash.Hide;
      FreeAndNil(slList);
			Screen.Cursor := crDefault;
			btn_2_1.Enabled := True;
    end;
	except
		on E: Exception do
		begin
			Screen.Cursor := crDefault;
			btn_2_1.Enabled := True;
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_BTN.Proc_CallBellWKResign(slBrNo, slWkIDList:TStringList; AWkNm : string);
var	XmlData, ErrMsg, param : string;
		ErrCode, i : Integer;
		sTmp : string;
		slTmp : TStringList;
begin
	SetDebugeWrite('TFrm_BTN.btn_2_4Click');
	Try
		Screen.Cursor := crDefault;
		slTmp := TStringList.Create;
		Try
			for i := 0 to slWkIDList.Count -1 do
			begin 
				Param := '2';                               //구분(1:수정, 2:퇴사)
				Param := Param + '│' + '';                 //본사코드
				Param := Param + '│' + slBrNo[i];          //지사코드
				Param := Param + '│' + Trim(slWkIDList[i]);//영업사원ID
				Param := Param + '│' + '';                 //영업사원명
				Param := Param + '│' + '';                 //상태
				Param := Param + '│' + '';                 //휴대폰번호
				Param := Param + '│' + '';                 //정산설정
				Param := Param + '│' + '';                 //정산금액
				Param := Param + '│' + '';                 //은행코드
				Param := Param + '│' + '';                 //계좌번호
				Param := Param + '│' + '';                 //예금주
				Param := Param + '│' + '';                 //메모
				Param := Param + '│' + '';                 //대표번호
				Param := Param + '│' + '';                 //업소해지권한

				if not RequestBase(GetCallable06('SET_MEMBER_UPDATE', 'BIZ_CUST.SET_MEMBER_UPDATE', param), XmlData, ErrCode, ErrMsg) then
				begin
//					GMessagebox(Format('영업사원 퇴사 시 오류가 발생하였습니다.'#13#10'ID:%s[%d]%s', [slWkIDList[i], ErrCode, ErrMsg]), CDMSE);
					slTmp.Add(slWkIDList[i]);
				end;
			end;
			sTmp := '';
			if slTmp.count > 0 then
			begin
				for i := 0 to slTmp.count - 1 do
				begin
					if i = 0 then sTmp := slTmp[i]
					else sTmp := sTmp + ', ' + slTmp[i];
				end;
				sTmp := IntToStr(slTmp.count) + '명(' + sTmp + ')을 제외한' + #13#10;
				GMessagebox(IntToStr(slWkIDList.Count) + '명의 영업사원 중 ' + sTmp + '영업사원의 퇴사처리가 완료되었습니다', CDMSI);
			end else
			begin
				GMessagebox(IntToStr(slWkIDList.Count) + '명 영업사원의 퇴사처리가 완료되었습니다', CDMSI);
			end;
			btn_2_1.Click;
		Finally
			Screen.Cursor := crDefault;
    	slTmp.Free;
    End;
	except
		on E: Exception do
		begin
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_BTN.proc_CallBell_BRANCH_INFO;
var
	XmlData, Param, ErrMsg: string;
	xdom: msDomDocument;
	lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd: TStringList;
	I, ErrCode : Integer;
begin
	Param := '';
	if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
		Param := GT_SEL_BRNO.HDNO
	else
		Param := GT_USERIF.HD;

	Scb_RealCallBell_BrNo.Clear;
	Scb_RealCallBell_KeyNumber.Clear;
	Scb_CallBell_BrNo.Clear;
	Scb_CallBell_KeyNumber.Clear;
	Scb_CallBell_RealPhone.Clear;
	Scb_CallBell_WKID.Clear;
	Scb_CallBell_WKNM.Clear;

	if RequestBase(GetSel06('GET_BRANCH_INFO', 'BIZ_CUST.GET_BRANCH_INFO', '10000', Param), XmlData, ErrCode, ErrMsg) then
	begin
//		GMessagebox(Format('콜벨지사정보 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
//		Exit;
		xdom := ComsDomDocument.Create;
		try
			xdom.loadXML(XmlData);
			lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
			if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
			begin
				lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
				ls_Rcrd := TStringList.Create;
				try
					for I := 0 to lst_Result.length - 1 do
					begin
						GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);

						if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB   패밀리지사일때
						begin
							if not Check_ALLHD(GT_SEL_BRNO.HDNO) then      //전체지사권한이 없을때
							begin
								if scb_FamilyBrCode.IndexOf(ls_Rcrd[0]) = -1 then   //권한있는 지사일경우만 그리드표기
									continue;
							end
						end;
						Scb_RealCallBell_BrNo.Add(ls_Rcrd[0]);        //실제 콜벨사용지사
						Scb_RealCallBell_KeyNumber.Add(ls_Rcrd[1]);   //실제 콜벨사용대표번호
																												
						Scb_CallBell_BrNo.Add(ls_Rcrd[0]);            //전체지사
						Scb_CallBell_KeyNumber.Add(ls_Rcrd[1]);       //전체대표번호
						Scb_CallBell_RealPhone.Add(ls_Rcrd[2]);
						Scb_CallBell_WKID.Add(ls_Rcrd[3]);
						Scb_CallBell_WKNM.Add(ls_Rcrd[4]);
					end;   

					for I := 0 to scb_DsBranchCode.Count -1 do
					begin
						if (Scb_CallBell_KeyNumber.indexOf(scb_KeyNumber[i]) < 0) and (Trim(scb_KeyNumber[i]) <> '') then
						begin
							Scb_CallBell_BrNo.Add(scb_DsBranchCode[i]);
							Scb_CallBell_KeyNumber.Add(scb_KeyNumber[i]);
							Scb_CallBell_RealPhone.Add('');
							Scb_CallBell_WKID.Add('');
							Scb_CallBell_WKNM.Add('');
						end;
					end; 
				finally
					ls_Rcrd.Free;
				end;
			end;
		finally
			xdom := Nil;
		end;
	end;

	for I := 0 to scb_DsBranchCode.Count -1 do
	begin
		if (Scb_CallBell_KeyNumber.indexOf(scb_KeyNumber[i]) < 0) and (Trim(scb_KeyNumber[i]) <> '') then
		begin
			Scb_CallBell_BrNo.Add(scb_DsBranchCode[i]);
			Scb_CallBell_KeyNumber.Add(scb_KeyNumber[i]);
			Scb_CallBell_RealPhone.Add('');
			Scb_CallBell_WKID.Add('');
			Scb_CallBell_WKNM.Add('');
		end;
	end; 
end;

procedure TFrm_BTN.Proc_ChangeUpsoOpen(AWKID: string);
var iTmp, i : integer;
	sTmp : string;
	iRow : integer;
	iBrNo, iWkID, iKeyNumber : integer;
	sBrNo, sWkID, sKeyNumber : string;
begin
	cboFromUpsoWK.Hint := '';
	cboToUpsoWK.Hint := '';
	lbResultMsg.CapTion := '';
	cboFromBranch.ItemIndex := -1;
	cboFromKeynumber.ItemIndex := -1;
	cboFromUpsoWK.ItemIndex := -1;
	cboToKeynumber.ItemIndex := -1;
	cboToUpsoWK.ItemIndex := -1;

	for i := 0 to Scb_CallBell_BrNo.Count - 1 do
	begin
		iTmp := scb_DsBranchCode.IndexOf(Scb_CallBell_BrNo[i]);
		if iTmp < 0 then Continue;

		if sTmp = Scb_CallBell_BrNo[i] then Continue;
		// 본사코드   // 지사코드   // 지사명   // 대표번호
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
		begin
			if cxHdNo2.Text = scb_HeadCode[iTmp] then
			begin
				cboFromBranch.Properties.Items.Add(scb_HeadCode[iTmp] + '.' +
					Scb_CallBell_BrNo[i] + ': ' + scb_DsBranchName[iTmp]);
				sTmp := Scb_CallBell_BrNo[i];
			end;
		end else
		begin
			cboFromBranch.Properties.Items.Add(scb_HeadCode[iTmp] + '.' +
				Scb_CallBell_BrNo[i] + ': ' + scb_DsBranchName[iTmp]);
			sTmp := Scb_CallBell_BrNo[i];
		end;
	end;
	if AWKID = '' then
		cboFromBranch.ItemIndex := 0
	else
	begin
		iBrNo      := BtnView2.GetColumnByFieldName('지사코드').Index;
		iKeyNumber := BtnView2.GetColumnByFieldName('대표번호').Index;
		iWkID      := BtnView2.GetColumnByFieldName('영업사원ID').Index;

		iRow := BtnView2.DataController.FocusedRecordIndex;
		sBrNo      := BtnView2.DataController.Values[iRow, iBrNo];
		sKeyNumber := BtnView2.DataController.Values[iRow, iKeyNumber];
		sWkID      := BtnView2.DataController.Values[iRow, iWkID];
		for i := 0 to cboFromBranch.Properties.Items.Count - 1 do
		begin
			sTmp := Copy(cboFromBranch.Properties.Items[i], Pos('.', cboFromBranch.Properties.Items[i]) + 1, Pos(':',
							cboFromBranch.Properties.Items[i]) - (Pos('.', cboFromBranch.Properties.Items[i]) + 1)); //지사코드
			if sBrNo = sTmp then
			begin
				cboFromBranch.ItemIndex := i;
				Break;
			end;
		end;

		iTmp := cboFromKeynumber.Properties.Items.Indexof(sKeyNumber);
		if iTmp > -1 then cboFromKeynumber.ItemIndex := iTmp else	cboFromKeynumber.ItemIndex := 0;

		for i := 0 to sl_WkID.count - 1 do
		begin
			if sWkID = sl_WkID[i] then
			begin
				cboFromUpsoWK.ItemIndex := i;
				Break;
			end;
		end;
	end;
end;

procedure TFrm_BTN.Proc_ChangeUpsoWKSave;
var	XmlData, ErrMsg, param : string;
		ErrCode : Integer;
		sBrNo : string;
begin
	SetDebugeWrite('TFrm_BTN.Proc_ChangeUpsoWKSave');
	Try
		if cboFromBranch.Text = '' then
		begin
			GMessagebox(Format('콜벨지사를 선택하여 주십시오.', [ErrCode, ErrMsg]), CDMSE);
			cboFromBranch.setFocus;
			exit;
		end;
		if cboFromKeynumber.Text = '' then
		begin
			GMessagebox(Format('콜벨대표번호를 선택하여 주십시오.', [ErrCode, ErrMsg]), CDMSE);
			cboFromKeynumber.setFocus;
			exit;
		end;
		if cboFromUpsoWK.Text = '' then
		begin
			GMessagebox(Format('콜벨영업사원을 선택하여 주십시오.', [ErrCode, ErrMsg]), CDMSE);
			cboFromUpsoWK.setFocus;
			exit;
		end;
		if cboToUpsoWK.Text = '' then
		begin
			GMessagebox(Format('대상 영업사원을 입력하여 주십시오.', [ErrCode, ErrMsg]), CDMSE);
			cboToUpsoWK.setFocus;
			exit;
		end;

		if cboFromUpsoWK.Hint = cboToUpsoWK.Hint then
		begin
			GMessagebox(Format('동일한 영업사원에게는 일괄변경할 수 없습니다.', [ErrCode, ErrMsg]), CDMSE);
			cboToUpsoWK.setFocus;
			exit;
		end;

		sBrNo := Proc_BRNOSearch;
		param := '';
		Param := sBrNo;
		Param := Param + '│' + cboFromUpsoWK.Hint;
		Param := Param + '│' + cboToUpsoWK.Hint;

		if not RequestBase(GetCallable06('UPDATE_CUST_CALLBELL_MEM_ID', 'CALLBELL.UPDATE_CUST_CALLBELL_MEM_ID', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('영업사원 이관 시 오류가 발생하였습니다.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			exit;
		end;
		lbResultMsg.Caption := ErrMsg;
  except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_BTN.proc_Init;
var i : integer;
begin
	if not gs_CallBellUse	then btn_2_4.Visible := False;
	Scb_BankCd := TStringList.Create;
	scb_BankNm := TStringList.Create;
	Scb_RealCallBell_BrNo := TStringList.Create;      //실제 콜벨사용지사
	Scb_RealCallBell_KeyNumber := TStringList.Create; //실제 콜벨사용대표번호
	Scb_CallBell_BrNo := TStringList.Create;          //전체지사
	Scb_CallBell_KeyNumber := TStringList.Create;     //전체대표번호
	Scb_CallBell_RealPhone := TStringList.Create;
	Scb_CallBell_WKID := TStringList.Create;
	Scb_CallBell_WKNM := TStringList.Create;

	if Not Assigned(sl_WkID) then sl_WkID := TStringList.Create;
	if Not Assigned(sl_WkNM) then sl_WkNM := TStringList.Create;

	BtnView2.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to BtnView2.ColumnCount - 1 do
	begin
		BtnView2.Columns[i].DataBinding.ValueType := 'String';
	end;
	BtnView2.DataController.SetRecordCount(0);
	cboSearch_2.ItemIndex := 0;
	edtSearch_2.Text := '';
											
	BtnView3.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to BtnView3.ColumnCount - 1 do
	begin
		BtnView3.Columns[i].DataBinding.ValueType := 'String';
	end;
	BtnView3.DataController.SetRecordCount(0);
	cboSearch_3.ItemIndex := 0;
	edtSearch_3.Text := '';
	cboStatus_3.ItemIndex := 0;

	BtnView4.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to BtnView4.ColumnCount - 1 do
	begin
		BtnView4.Columns[i].DataBinding.ValueType := 'Currency';
	end;
	BtnView4.Columns[1].DataBinding.ValueType := 'String';
	BtnView4.Columns[2].DataBinding.ValueType := 'String';
	BtnView4.Columns[3].DataBinding.ValueType := 'String';
	BtnView4.DataController.SetRecordCount(0);
	
	cboStatus_4.ItemIndex := 0;
	cxDate4_1S.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
	cxDate4_1E.Date := cxDate4_1S.Date + 1;
	edtName_4_1.Text := '';

	BtnView5.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to BtnView5.ColumnCount - 1 do
	begin
		BtnView5.Columns[i].DataBinding.ValueType := 'Currency';
	end;
	BtnView5.Columns[1].DataBinding.ValueType := 'String';
	BtnView5.Columns[2].DataBinding.ValueType := 'String';
	BtnView5.Columns[3].DataBinding.ValueType := 'String';
	BtnView5.Columns[4].DataBinding.ValueType := 'String';
	BtnView5.Columns[5].DataBinding.ValueType := 'String';
	BtnView5.Columns[6].DataBinding.ValueType := 'String';
	BtnView5.DataController.SetRecordCount(0);
	
	cboStatus_5.ItemIndex := 0;
	cxDate5_1S.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
	cxDate5_1E.Date := cxDate5_1S.Date + 1;
	edtName_5_1.Text := '';

	BtnView6.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to BtnView6.ColumnCount - 1 do
	begin
		BtnView6.Columns[i].DataBinding.ValueType := 'Currency';
	end;
	BtnView6.Columns[1].DataBinding.ValueType := 'String';
	BtnView6.Columns[2].DataBinding.ValueType := 'String';
	BtnView6.Columns[3].DataBinding.ValueType := 'String';
	BtnView6.Columns[4].DataBinding.ValueType := 'String';
	BtnView6.Columns[5].DataBinding.ValueType := 'String';
	BtnView6.Columns[6].DataBinding.ValueType := 'String';
	BtnView6.DataController.SetRecordCount(0);
	
	cboStatus_6.ItemIndex := 0;
	cboStatus_6_1.ItemIndex := 0;
	cxDate6_1S.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
	cxDate6_1E.Date := cxDate6_1S.Date + 1;
	edtName_6_1.Text := '';
end;

end.

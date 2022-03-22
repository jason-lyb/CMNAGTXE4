unit xe_APP1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MSXML2_TLB, cxGraphics, cxControls, cxLookAndFeels, SHDocVw,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxDropDownEdit, Vcl.ExtCtrls, cxMaskEdit, ActiveX,
  cxSpinEdit, cxCurrencyEdit, cxListBox, cxCheckBox, cxTextEdit, cxRadioGroup,
  cxButtons, cxLabel, AdvScrollBox, cxGroupBox, dxSkinsCore,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxCalendar, cxTimeEdit,
	cxButtonEdit, Vcl.OleCtrls, cxGridLevel, cxGridBandedTableView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxSkinOffice2010Blue, dxDateRanges;

type
  TFrm_APP1 = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet1: TcxTabSheet;
    PnlMainA3: TPanel;
    Shape1: TShape;
    cxGroupBox1: TcxGroupBox;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Label4: TLabel;
    cxLabel72: TcxLabel;
    cxLabel73: TcxLabel;
    btnSearchA2: TcxButton;
    btnExcelA2: TcxButton;
    cbKeynumberA2: TcxComboBox;
    lblSosokNameA2: TcxLabel;
    cxLabel74: TcxLabel;
    btnDateA2: TcxButton;
    cxDtEndA2: TcxDateEdit;
    cxDtStartA2: TcxDateEdit;
    cxGridA2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGongList: TcxGridBandedTableView;
    cxGongListColumn1: TcxGridBandedColumn;
    cxGongListColumn2: TcxGridBandedColumn;
    cxGongListColumn3: TcxGridBandedColumn;
    cxGongListColumn4: TcxGridBandedColumn;
    cxGongListColumn5: TcxGridBandedColumn;
    cxGongListColumn10: TcxGridBandedColumn;
    cxGongListColumn13: TcxGridBandedColumn;
    cxGongListColumn6: TcxGridBandedColumn;
    cxGongListColumn7: TcxGridBandedColumn;
    cxGongListColumn8: TcxGridBandedColumn;
    cxGongListColumn9: TcxGridBandedColumn;
    cxGongListColumn19: TcxGridBandedColumn;
    cxGongListColumn11: TcxGridBandedColumn;
    cxGongListColumn12: TcxGridBandedColumn;
    cxGongListColumn14: TcxGridBandedColumn;
    cxGongListColumn15: TcxGridBandedColumn;
    cxGongListColumn17: TcxGridBandedColumn;
    cxGongListColumn16: TcxGridBandedColumn;
    cxGongListColumn18: TcxGridBandedColumn;
    cxGridLevel1: TcxGridLevel;
    pm_Date: TPopupMenu;
    miOneWeek: TMenuItem;
    miTwoWeek: TMenuItem;
    miOneMonth: TMenuItem;
    miTwoMonth: TMenuItem;
    cxHdNo2: TcxTextEdit;
    cxBrNo2: TcxTextEdit;
    PnlMainA1: TPanel;
    Shape7: TShape;
    cxGroupBox3: TcxGroupBox;
    Shape6: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Label6: TLabel;
    cxLabel75: TcxLabel;
    cxLabel76: TcxLabel;
    btnSearchA1: TcxButton;
    btnExcelA1: TcxButton;
    cbGubun1: TcxComboBox;
    lblSosokNameA1: TcxLabel;
    cxLabel77: TcxLabel;
    btnDateA3: TcxButton;
    cxDtEndA1: TcxDateEdit;
    cxDtStartA1: TcxDateEdit;
    cxBrNo1: TcxTextEdit;
    cxHdNo1: TcxTextEdit;
    cxGroupBox4: TcxGroupBox;
    Shape2: TShape;
    Shape11: TShape;
    cxLabel2: TcxLabel;
    cxLabel24: TcxLabel;
    edCustName01: TcxTextEdit;
    edCustTel01: TcxTextEdit;
    cxLabel255: TcxLabel;
    edCuMilet01: TcxCurrencyEdit;
    cxLabel256: TcxLabel;
    Shape10: TShape;
    cxLabel1: TcxLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxLabel5: TcxLabel;
    Shape18: TShape;
    cxLabel6: TcxLabel;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxLabel7: TcxLabel;
    Shape19: TShape;
    Shape12: TShape;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel8: TcxLabel;
    Shape13: TShape;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGrid1: TcxGrid;
    CustView1: TcxGridDBTableView;
    CustView1Column1: TcxGridDBColumn;
    CustView1Column2: TcxGridDBColumn;
    CustView1Column3: TcxGridDBColumn;
    CustView1Column4: TcxGridDBColumn;
    CustView1Column5: TcxGridDBColumn;
    CustView1Column6: TcxGridDBColumn;
    CustView1Column7: TcxGridDBColumn;
    CustView1Column8: TcxGridDBColumn;
    CustView1Column9: TcxGridDBColumn;
    CustView1Column10: TcxGridDBColumn;
    CustView1Column11: TcxGridDBColumn;
    CustView1Column12: TcxGridDBColumn;
    CustView1Column13: TcxGridDBColumn;
    CustView1Column14: TcxGridDBColumn;
    CustView1Column15: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
		procedure btnSearchA1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure btn6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure miOneWeekClick(Sender: TObject);
    procedure miTwoWeekClick(Sender: TObject);
    procedure miOneMonthClick(Sender: TObject);
    procedure miTwoMonthClick(Sender: TObject);
    procedure btnExcelA2Click(Sender: TObject);
    procedure btnSearchA2Click(Sender: TObject);
    procedure cbKeynumberA2PropertiesChange(Sender: TObject);
    procedure btnExcelA1Click(Sender: TObject);
    procedure btnGetListClick(Sender: TObject);
    procedure Edt_APP1TitleKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
		{ Private declarations }
		procedure proc_init;
		function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
	public
    { Public declarations }
		procedure proc_BrNameSet;
  end;

var
  Frm_APP1: TFrm_APP1;

implementation

{$R *.dfm}

uses Main, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_system, xe_Dm, xe_JON51, xe_SMS01,
  xe_SearchWord, xe_Flash;

procedure TFrm_APP1.FormCreate(Sender: TObject);
begin
	proc_init;
end;
	
procedure TFrm_APP1.proc_BrNameSet;
var
  sName, sBrNo, sHdNo, sBrName: string;
	StrList: TStringList;
	iIndex, iIdx : integer;
begin
	sName := GetSosokInfo;

	cxHdNo1.Text := sHdNo;
	cxBrNo1.Text := sBrNo;
	cxHdNo2.Text := sHdNo;
	cxBrNo2.Text := sBrNo;

	lblSosokNameA1.Caption := sName;
	lblSosokNameA2.Caption := sName;

	end;

procedure TFrm_APP1.btnSearchA1Click(Sender: TObject);
var
  ls_TxLoad: WideString; // XML File Load
  ls_TxSend, rv_str, msg, sBrNo, sBrName: string;
  ls_rxxml: WideString;
  ErrCode: integer;
begin
end;

procedure TFrm_APP1.btnSearchA2Click(Sender: TObject);
var msg, sBrName : String;
begin
	if Trim(cxBrNo1.Text) = '' then
  begin
    GMessagebox('지사를 선택하셔야 합니다.', CDMSI);
		Exit;
  end;

end;

procedure TFrm_APP1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_APP1.FormDestroy(Sender: TObject);
begin
  Frm_APP1 := Nil;
end;

procedure TFrm_APP1.proc_init;
Var i : Integer;
begin
  cxPageControl1.ActivePageIndex := 0;
  cxPageControl1.Pages[0].TabVisible := TCK_USER_PER.APP_Setup = '1';
	cxPageControl1.Pages[1].TabVisible := TCK_USER_PER.APP_Notice = '1';
	cxPageControl1.Pages[2].TabVisible := TCK_USER_PER.APP_Push = '1';
	cxPageControl1.Pages[3].TabVisible := TCK_USER_PER.APP_SMSLIST = '1';
	cxPageControl1.Pages[4].TabVisible := TCK_USER_PER.APP_PushLIST = '1';
	cxPageControl1.Pages[5].TabVisible := TCK_USER_PER.APP_SMSSTT = '1';
	cxPageControl1.Pages[6].TabVisible := TCK_USER_PER.APP_PushSTT = '1';

	proc_BrNameSet;

	// --------------------------------------------------------------------------- A2
	cxDtStartA2.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 31;
	cxDtEndA2.Date := cxDtStartA2.Date + 31;

	cxGongList.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to cxGongList.ColumnCount - 1 do
	begin
		cxGongList.Columns[i].DataBinding.ValueType := 'String';
	end;

	cxGongList.OptionsView.NoDataToDisplayInfoText := '';

end;

procedure TFrm_APP1.btnGetListClick(Sender: TObject);
begin
  pGetComponentListAPP;
end;

procedure TFrm_APP1.cbKeynumberA2PropertiesChange(Sender: TObject);
begin
	cxGongList.DataController.SetRecordCount(0);
end;

procedure TFrm_APP1.miOneMonthClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetWMControl(StDt, EdDt, 2);
end;

procedure TFrm_APP1.miOneWeekClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetWMControl(StDt, EdDt, 0);
end;

procedure TFrm_APP1.miTwoMonthClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetWMControl(StDt, EdDt, 3);
end;

procedure TFrm_APP1.miTwoWeekClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetWMControl(StDt, EdDt, 1);
end;

procedure TFrm_APP1.cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) in [8, 13, 48..57, 17, 22] then
  else
    Key := #0;
end;

procedure TFrm_APP1.Edt_APP1TitleKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_APP1.btn6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	pm_Date.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_APP1.btnExcelA2Click(Sender: TObject);
begin
  if cxGongList.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.CMP_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[회사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '앱게시물관리.xls';
  Frm_Main.sgRpExcel := Format('고객어플>앱게시물관리]%s건', [GetMoneyStr(cxGongList.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA2;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_APP1.btnExcelA1Click(Sender: TObject);
begin
//	if cxPushList.DataController.RecordCount = 0 then
	begin
		GMessagebox('자료가 없습니다.', CDMSI);
		Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
		Exit;
	end;

	if (TCK_USER_PER.CMP_ExcelDown <> '1') then
	begin
		ShowMessage('[엑셀다운로드[회사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	Frm_Main.sgExcel := 'SMS발송내역.xls';
//	Frm_Main.sgRpExcel := Format('고객어플>앱푸시관리]%s건', [GetMoneyStr(cxPushList.DataController.RecordCount)]);
//	Frm_Main.cxGridExcel := cxGridA3;
	Frm_Main.proc_excel(0);
end;

function TFrm_APP1.GetActiveDateControl(var AStDt,
	AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

	Case cxPageControl1.ActivePageIndex of
	1 : begin
				AStDt := cxDtStartA2;
				AEdDt := cxDtEndA2;
			end;
	end;
end;


end.

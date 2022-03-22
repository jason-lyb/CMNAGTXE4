unit xe_STT01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MSXML2_TLB, cxGraphics, cxControls, cxLookAndFeels, dxCore,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxLabel,
  cxCurrencyEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxContainer, dxSkinsCore, dxSkinscxPCPainter,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinSharp, dxDateRanges, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_STT01 = class(TForm)
    Grid11: TcxGrid;
    Grid11View: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    Grid11Level: TcxGridLevel;
    pnlTitle: TPanel;
    cxLblActive: TLabel;
    btnClose: TcxButton;
    cxButton1: TcxButton;
    lbBrInfo: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
		procedure Grid11ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxButton1Click(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure Grid3ViewDataControllerSortingChanged(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbBrInfoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid11ViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
  private
    { Private declarations }
    AIndex : Integer;
  public
		{ Public declarations }
		iTot : integer;
    procedure proc_init;
    // 전문 응답 처리
  end;

var
  Frm_STT01: TFrm_STT01;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Msg, xe_packet, xe_xml;

procedure TFrm_STT01.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_STT01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_STT01.FormCreate(Sender: TObject);
var
  Save: LongInt; // 폼타이틀 제거용.
begin
  //2011-11-11 김현수. 정산-수익금계산_상세 화면을 위하여 신규 생성함.
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

  proc_init;
end;

procedure TFrm_STT01.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_STT01.FormDestroy(Sender: TObject);
begin
  Frm_STT01 := Nil;
end;

procedure TFrm_STT01.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_STT01.FormShow(Sender: TObject);
begin
  fSetFont(Frm_STT01, GS_FONTNAME);
	PnlTitle.Caption := '   취소콜통계_상세'
end;

procedure TFrm_STT01.proc_init;
begin
  try
		// 그리드 초기화
		Grid11View.Columns[ 0].DataBinding.ValueType := 'String';
    Grid11View.Columns[ 1].DataBinding.ValueType := 'String';
		Grid11View.Columns[ 2].DataBinding.ValueType := 'String';
		Grid11View.DataController.SetRecordCount(0);
  except
  end;
end;

procedure TFrm_STT01.Grid11ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
var
  i: Integer;
  sTemp: string;
begin
  AIndex := AColumn.Index;
  try
    for i := 0 to Grid11View.ColumnCount - 1 do
    begin
      if i <> AColumn.Index then
      begin
        Grid11View.Columns[i].SortIndex := -1;
        Grid11View.Columns[i].SortOrder := soNone;
      end;
    end;
    if (Grid11View.Columns[AColumn.Index].SortOrder = soNone) or
      (Grid11View.Columns[AColumn.Index].SortOrder = soDescending) then
      Grid11View.Columns[AColumn.Index].SortOrder := soAscending
    else
      if Grid11View.Columns[AColumn.Index].SortOrder = soAscending then
      Grid11View.Columns[AColumn.Index].SortOrder := soDescending;
    Grid11View.Columns[AColumn.Index].SortIndex := 0;
    Grid11View.DataController.FocusedRowIndex := 0;
  except
    on e: Exception do
    begin
      sTemp := 'TfrmACC06[Grid3ViewColumnHeaderClick]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_STT01.Grid11ViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iTOT <> 0 then      //취소골 합계
		AText := FormatFloat('#,##0', iTOT)
	else
		AText := '0';
end;

procedure TFrm_STT01.Grid3ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(Grid11View, AIndex, GS_SortNoChange);
end;

procedure TFrm_STT01.lbBrInfoMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
	ReleaseCapture;
	PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_STT01.cxButton1Click(Sender: TObject);
begin
  if Grid11View.DataController.RecordCount = 0 then
  begin
		GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[정산메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

	Frm_Main.sgExcel := '취소콜통계_상세.xls';
	Frm_Main.sgRpExcel := Format('정산>취소콜통계_상세]%s건', [GetMoneyStr(Grid11View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := Grid11;
  Frm_Main.bgExcelOPT := False;
	Frm_Main.proc_excel(0);
end;

procedure TFrm_STT01.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

end.

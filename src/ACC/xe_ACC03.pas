unit xe_ACC03;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MSXML2_TLB, cxGraphics, cxControls, cxLookAndFeels, dxCore,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxLabel,
  cxCurrencyEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, GradientLabel, Vcl.ExtCtrls, cxContainer,
  dxSkinsCore, dxSkinscxPCPainter, dxSkinOffice2010Silver, dxSkinSharp, dxDateRanges, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_ACC03 = class(TForm)
    Grid3: TcxGrid;
    Grid3View: TcxGridDBTableView;
    Grid3ViewColumn8: TcxGridDBColumn;
    Grid3ViewColumn9: TcxGridDBColumn;
    Grid3ViewColumn6: TcxGridDBColumn;
    Grid3ViewColumn5: TcxGridDBColumn;
    Grid3ViewColumn2: TcxGridDBColumn;
    Grid3ViewColumn3: TcxGridDBColumn;
    Grid3ViewColumn4: TcxGridDBColumn;
    Grid3ViewColumn7: TcxGridDBColumn;
    Grid3ViewColumn1: TcxGridDBColumn;
    Grid3Level: TcxGridLevel;
    Grid3ViewColumn10: TcxGridDBColumn;
    Grid3ViewColumn11: TcxGridDBColumn;
    Grid3ViewColumn12: TcxGridDBColumn;
    Grid3ViewColumn13: TcxGridDBColumn;
    Grid3ViewColumn14: TcxGridDBColumn;
    Grid3ViewColumn15: TcxGridDBColumn;
    Grid3ViewColumn16: TcxGridDBColumn;
    Grid3ViewColumn17: TcxGridDBColumn;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    cxButton1: TcxButton;
    cxLblActive: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Grid3ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure Grid3ViewDataControllerSortingChanged(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    AIndex : Integer;
  public
    { Public declarations }
    procedure proc_init;
    // 전문 응답 처리
  end;

var
  Frm_ACC03: TFrm_ACC03;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Msg, xe_packet, xe_xml;

procedure TFrm_ACC03.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_ACC03.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_ACC03.FormCreate(Sender: TObject);
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

procedure TFrm_ACC03.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_ACC03.FormDestroy(Sender: TObject);
begin
  Frm_ACC03 := Nil;
end;

procedure TFrm_ACC03.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_ACC03.cxButton1Click(Sender: TObject);
begin
  if Grid3View.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '수익금계산-상세.xls';
  Frm_Main.sgRpExcel := Format('정산>수익금계산-상세]%s건', [GetMoneyStr(Grid3View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := Grid3;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC03.Grid3ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACC03.Grid3ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(Grid3View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC03.FormShow(Sender: TObject);
begin
  fSetFont(Frm_ACC03, GS_FONTNAME);

  PnlTitle.Caption := '   수익금계산-상세';
end;

procedure TFrm_ACC03.proc_init;
begin
  try
    // 그리드 초기화
    Grid3View.Columns[0].DataBinding.ValueType := 'String';
    Grid3View.Columns[1].DataBinding.ValueType := 'String';
    Grid3View.Columns[2].DataBinding.ValueType := 'String';
    Grid3View.Columns[3].DataBinding.ValueType := 'String';
    Grid3View.Columns[4].DataBinding.ValueType := 'String';
    Grid3View.Columns[5].DataBinding.ValueType := 'String';
    Grid3View.Columns[6].DataBinding.ValueType := 'String';
    Grid3View.Columns[7].DataBinding.ValueType := 'Currency';
    Grid3View.Columns[8].DataBinding.ValueType := 'Currency';
    Grid3View.Columns[9].DataBinding.ValueType := 'Currency';
    Grid3View.Columns[10].DataBinding.ValueType := 'Currency';
    Grid3View.Columns[11].DataBinding.ValueType := 'Currency';
    Grid3View.Columns[12].DataBinding.ValueType := 'Currency';
    Grid3View.Columns[13].DataBinding.ValueType := 'Currency';
    Grid3View.Columns[14].DataBinding.ValueType := 'Currency';
    Grid3View.Columns[15].DataBinding.ValueType := 'Currency';
    Grid3View.Columns[16].DataBinding.ValueType := 'String';
    Grid3View.DataController.SetRecordCount(0);
  except
  end;
end;

procedure TFrm_ACC03.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

end.

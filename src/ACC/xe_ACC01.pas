unit xe_ACC01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  dxCore, MSXML2_TLB, ShellAPI, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, cxControls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxLabel,
  cxCurrencyEdit, Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, cxButtons, cxContainer, dxSkinsCore, dxSkinscxPCPainter, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark,
  dxSkinOffice2007Silver, dxScrollbarAnnotations;

type
  TFrm_ACC01 = class(TForm)
    cxButton20: TcxButton;
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
    PopupMenu3: TPopupMenu;
    N1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    SMS1: TMenuItem;
    N10: TMenuItem;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    cxLblActive: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxButton20Click(Sender: TObject);
    procedure Grid3ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure PopupMenu3Popup(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Grid3ViewDataControllerSortingChanged(Sender: TObject);
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
  Frm_ACC01: TFrm_ACC01;
  sExcelFileName : String;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Msg, xe_packet, xe_xml,
  xe_JON09;

procedure TFrm_ACC01.proc_init;
begin
  try
    // 그리드 초기화
    Grid3View.Columns[0].DataBinding.ValueType := 'Integer';
    Grid3View.Columns[1].DataBinding.ValueType := 'String';
    Grid3View.Columns[2].DataBinding.ValueType := 'String';
    Grid3View.Columns[3].DataBinding.ValueType := 'String';
    Grid3View.Columns[4].DataBinding.ValueType := 'String';
    Grid3View.Columns[5].DataBinding.ValueType := 'Currency';
    Grid3View.Columns[6].DataBinding.ValueType := 'Currency';
    Grid3View.Columns[7].DataBinding.ValueType := 'String';
    Grid3View.Columns[8].DataBinding.ValueType := 'String';
    Grid3View.DataController.SetRecordCount(0);
  except
  end;
end;

procedure TFrm_ACC01.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_ACC01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_ACC01.FormCreate(Sender: TObject);
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
  proc_init;
end;

procedure TFrm_ACC01.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_ACC01.FormDestroy(Sender: TObject);
begin
  Frm_ACC01 := Nil;
end;

procedure TFrm_ACC01.cxButton20Click(Sender: TObject);
begin
  if Grid3View.DataController.RecordCount = 0 then
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

  if sExcelFileName = '' then
    Frm_Main.sgExcel := '지사별캐쉬내역.xls'
  else
    Frm_Main.sgExcel := sExcelFileName + '.xls';

  if sExcelFileName = '' then
  begin
    Frm_Main.sgRpExcel := Format('정산>지사별캐쉬내역]%s건', [GetMoneyStr(Grid3View.DataController.RecordCount)]);
  end else
    Frm_Main.sgRpExcel := Format('정산>' + sExcelFileName + ']%s건', [GetMoneyStr(Grid3View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := Grid3;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC01.Grid3ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACC01.Grid3ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(Grid3View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC01.PopupMenu3Popup(Sender: TObject);
var
  iRow: Integer;
  sSlip: string;
begin
  N6.Visible := False;
  iRow := Grid3View.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;

  sSlip := Grid3View.DataController.Values[iRow, 8];
  if sSlip = '' then
  begin
    N5.Enabled := False;
    N6.Enabled := False;
  end else
  begin
    N5.Enabled := True;
    N6.Enabled := True;
  end;

  N5.Visible := False;
  N6.Visible := False;
end;

procedure TFrm_ACC01.N5Click(Sender: TObject);
var
  iRow: Integer;
  sSlip: string;
begin
  iRow := Grid3View.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;

  sSlip := Grid3View.DataController.Values[iRow, 8];
  if sSlip = '' then Exit;

  if ( Not Assigned(Frm_JON09) ) Or ( Frm_JON09 = NIl ) then Frm_JON09 := TFrm_JON09.Create(Nil);
  Frm_JON09.Tag := 0;
  Frm_JON09.proc_orderinfo(sSlip);
end;

procedure TFrm_ACC01.N6Click(Sender: TObject);
var
  iRow: Integer;
  sSlip: string;
begin
  iRow := Grid3View.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;

  sSlip := Grid3View.DataController.Values[iRow, 8];
  if sSlip = '' then Exit;

  if Frm_Main.Frm_JON03[GI_JON03_LastFromIdx].Visible then
    frm_Main.proc_SlipHis(sSlip, FormatDateTime('yyyy-mm-dd', now - 2) + '090000', GI_JON03_LastFromIdx)
  else
  begin
    ShowMessage('접수창 실행 중에만 [오더상세내역보기]를 할수 있습니다');
  end;
end;

procedure TFrm_ACC01.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_ACC01.FormShow(Sender: TObject);
begin
  fSetFont(Frm_ACC01, GS_FONTNAME);

  //2009-07-13  작성자 : 임창기 (수익금 리스트 가컬럼별 상세내역 조회시 타이틀 설정)
  if sExcelFileName = '' then
    PnlTitle.Caption := '   지사별 캐쉬 내역'
  else
    PnlTitle.Caption := '   ' + sExcelFileName;
end;

procedure TFrm_ACC01.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.


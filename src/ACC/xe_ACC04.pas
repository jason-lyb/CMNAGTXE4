unit xe_ACC04;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MSXML2_TLB, cxGraphics, cxControls, cxLookAndFeels, dxCore,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxLabel,
  cxCurrencyEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxContainer, dxSkinsCore, dxSkinscxPCPainter,
  dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_ACC04 = class(TForm)
    Grid3: TcxGrid;
    Grid3View: TcxGridDBTableView;
    cxGridDBColumnGridViewGrid3ViewColumn8: TcxGridDBColumn;
    cxGridDBColumnGridViewGrid3ViewColumn9: TcxGridDBColumn;
    cxGridDBColumnGridViewGrid3ViewColumn6: TcxGridDBColumn;
    cxGridDBColumnGridViewGrid3ViewColumn5: TcxGridDBColumn;
    cxGridDBColumnGridViewGrid3ViewColumn2: TcxGridDBColumn;
    cxGridDBColumnGridViewGrid3ViewColumn3: TcxGridDBColumn;
    cxGridDBColumnGridViewGrid3ViewColumn4: TcxGridDBColumn;
    cxGridDBColumnGridViewGrid3ViewColumn7: TcxGridDBColumn;
    cxGridDBColumnGridViewGrid3ViewColumn1: TcxGridDBColumn;
    cxGridDBColumnGridViewGrid3ViewColumn10: TcxGridDBColumn;
    cxGridDBColumnGridViewGrid3ViewColumn11: TcxGridDBColumn;
    cxGridDBColumnGridViewGrid3ViewColumn12: TcxGridDBColumn;
    Grid3Level: TcxGridLevel;
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
    procedure FormDestroy(Sender: TObject);
    procedure Grid3ViewDataControllerSortingChanged(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    AIndex : Integer;
  public
    { Public declarations }
    procedure proc_init;
    // ���� ���� ó��
  end;

var
  Frm_ACC04: TFrm_ACC04;
  sExcelFileName : String;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Msg, xe_packet, xe_xml;

procedure TFrm_ACC04.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_ACC04.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_ACC04.FormCreate(Sender: TObject);
var
  Save: LongInt; // ��Ÿ��Ʋ ���ſ�.
begin
  //2011-11-11 ������. ����-����������Ȳ_�� ȭ���� ���Ͽ� �ű� ������.
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

  proc_init;
end;

procedure TFrm_ACC04.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_ACC04.FormDestroy(Sender: TObject);
begin
  Frm_ACC04 := Nil;
end;

procedure TFrm_ACC04.FormShow(Sender: TObject);
begin
  fSetFont(Frm_ACC04, GS_FONTNAME);
  PnlTitle.Caption := '   ����������Ȳ-��'
end;

procedure TFrm_ACC04.Grid3ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACC04.Grid3ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(Grid3View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC04.proc_init;
begin
  try
    // �׸��� �ʱ�ȭ
    Grid3View.Columns[0].DataBinding.ValueType := 'String';
    Grid3View.Columns[1].DataBinding.ValueType := 'String';
    Grid3View.Columns[2].DataBinding.ValueType := 'String';
    Grid3View.Columns[3].DataBinding.ValueType := 'Currency';
    Grid3View.Columns[4].DataBinding.ValueType := 'Currency';
    Grid3View.Columns[5].DataBinding.ValueType := 'Currency';
    Grid3View.Columns[6].DataBinding.ValueType := 'Currency';
    Grid3View.Columns[7].DataBinding.ValueType := 'Currency';
    Grid3View.Columns[8].DataBinding.ValueType := 'Currency';
    Grid3View.Columns[9].DataBinding.ValueType := 'Currency';
    Grid3View.Columns[10].DataBinding.ValueType := 'Currency';
    Grid3View.Columns[11].DataBinding.ValueType := 'Currency';
    Grid3View.DataController.SetRecordCount(0);
  except
  end;
end;

procedure TFrm_ACC04.cxButton1Click(Sender: TObject);
begin
  if Grid3View.DataController.RecordCount = 0 then
  begin
		GMessagebox('�ڷᰡ �����ϴ�.', CDMSE);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.', CDMSE);
    Exit;
  end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
    ShowMessage('[�����ٿ�ε�[����޴�]] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
    Exit;
  end;

  Frm_Main.sgExcel := '����������Ȳ.xls';
  Frm_Main.sgRpExcel := Format('����>����������Ȳ-��]%s��', [GetMoneyStr(Grid3View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := Grid3;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC04.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

end.

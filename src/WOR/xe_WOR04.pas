unit xe_WOR04;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  cxTextEdit,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxLabel, cxImageComboBox, cxCurrencyEdit, Vcl.Menus,
  cxContainer, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxSkinsCore, dxSkinscxPCPainter, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark,
  dxSkinOffice2007Silver;

type
  TFrm_WOR04 = class(TForm)
    cxGridWkConnect: TcxGrid;
    cxgWkAttend: TcxGridDBTableView;
    cxgWkAttendColumn1: TcxGridDBColumn;
    cxgWkAttendColumn2: TcxGridDBColumn;
    cxgWkAttendColumn3: TcxGridDBColumn;
    cxgWkAttendColumn4: TcxGridDBColumn;
    cxgWkAttendColumn5: TcxGridDBColumn;
    cxgWkAttendColumn6: TcxGridDBColumn;
    cxgWkAttendColumn7: TcxGridDBColumn;
    cxgWkAttendColumn8: TcxGridDBColumn;
    cxgWkAttendColumn9: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxgWkAttendColumn10: TcxGridDBColumn;
    cxgWkAttendColumn11: TcxGridDBColumn;
    cxgWkAttendColumn12: TcxGridDBColumn;
    cxlbWkSabun: TcxLabel;
    pnlTitle: TPanel;
    BtnClose: TcxButton;
    cxButton1: TcxButton;
    cxLblActive: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
		procedure cxButton20Click(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
	private
		{ Private declarations }
		procedure proc_init;
	public
    { Public declarations }
  end;

var
  Frm_WOR04: TFrm_WOR04;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Msg;


procedure TFrm_WOR04.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_WOR04.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_WOR04.FormCreate(Sender: TObject);
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
      //      bsDialog :
      //        SetWindowLong(Handle, gwl_Style, Save and (Not(ws_Caption)) or ws_modalframe or ws_dlgframe);
    end;
    Height := Height - getSystemMetrics(sm_cyCaption);
    Refresh;
  end;
  proc_init;
end;

procedure TFrm_WOR04.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_WOR04.FormDestroy(Sender: TObject);
begin
  Frm_WOR04 := Nil;
end;

procedure TFrm_WOR04.FormShow(Sender: TObject);
begin
  fSetFont(Frm_WOR04, GS_FONTNAME);
end;

procedure TFrm_WOR04.proc_init;
var
  i: Integer;
begin
  cxgWkAttend.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to cxgWkAttend.ColumnCount - 1 do
    cxgWkAttend.Columns[i].DataBinding.ValueType := 'String';

  cxgWkAttend.Columns[8].DataBinding.ValueType := 'Currency';
  cxgWkAttend.Columns[9].DataBinding.ValueType := 'Currency';
  cxgWkAttend.Columns[10].DataBinding.ValueType := 'Currency';

  try
    if TCK_USER_PER.COM_WkCashView = '1' then
    begin
      Frm_Main.gCurProperties.EchoMode := eemNormal;
    end else
    begin
      Frm_Main.gCurProperties.EchoMode := eemPassword;
    end;

    cxgWkAttend.Columns[8].Properties := Frm_Main.gCurProperties;
    cxgWkAttend.Columns[9].Properties := Frm_Main.gCurProperties;
    cxgWkAttend.Columns[10].Properties := Frm_Main.gCurProperties;
  Except
  end;
end;

procedure TFrm_WOR04.cxButton20Click(Sender: TObject);
begin
  if cxgWkAttend.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
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

  Frm_Main.sgExcel := '기사운행내역.xls';
  Frm_Main.sgRpExcel := Format('기사>기사운행내역]%s건', [GetMoneyStr(cxgWkAttend.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridWkConnect;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_WOR04.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WOR04.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

end.


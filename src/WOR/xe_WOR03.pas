unit xe_WOR03;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  cxTextEdit,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxLabel, cxCurrencyEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxContainer,
  dxSkinsCore, dxSkinscxPCPainter, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  TFrm_WOR03 = class(TForm)
    cxGridWkConnect: TcxGrid;
    cxgWkCashHis: TcxGridDBTableView;
    cxgWkCashHisColumn1: TcxGridDBColumn;
    cxgWkCashHisColumn2: TcxGridDBColumn;
    cxgWkCashHisColumn3: TcxGridDBColumn;
    cxgWkCashHisColumn4: TcxGridDBColumn;
    cxgWkCashHisColumn5: TcxGridDBColumn;
    cxgWkCashHisColumn6: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxgWkCashHisColumn7: TcxGridDBColumn;
    cxgWkCashHisColumn8: TcxGridDBColumn;
    cxgWkCashHisColumn9: TcxGridDBColumn;
    cxButton20: TcxButton;
    pnlTitle: TPanel;
    BtnClose: TcxButton;
    cxLblActive: TLabel;
    cxgWkCashHisColumn10: TcxGridDBColumn;
    cxgWkCashHisColumn11: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
		procedure cxButton20Click(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
	private
		{ Private declarations }
	public
		{ Public declarations }
		procedure proc_init;
  end;

var
  Frm_WOR03: TFrm_WOR03;

implementation

{$R *.dfm}

uses xe_GNL, xe_gnl2, xe_gnl3, xe_Dm, xe_Func, xe_Msg, Main, xe_xml, xe_Lib,
  xe_system;


procedure TFrm_WOR03.FormCreate(Sender: TObject);
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

procedure TFrm_WOR03.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_WOR03.FormDestroy(Sender: TObject);
begin
  Frm_WOR03 := Nil;
end;

procedure TFrm_WOR03.FormShow(Sender: TObject);
begin
  fSetFont(Frm_WOR03, GS_FONTNAME);
end;

procedure TFrm_WOR03.proc_init;
var
  i: Integer;
begin
  cxgWkCashHis.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to cxgWkCashHis.ColumnCount - 1 do
		cxgWkCashHis.Columns[i].DataBinding.ValueType := 'String';

  try
    if TCK_USER_PER.COM_WkCashView = '1' then
    begin
      Frm_Main.gCurProperties.EchoMode := eemNormal;
    end else
    begin
			Frm_Main.gCurProperties.EchoMode := eemPassword;
		end;

    cxgWkCashHis.Columns[3].Properties := Frm_Main.gCurProperties;
    cxgWkCashHis.Columns[4].Properties := Frm_Main.gCurProperties;
		cxgWkCashHis.Columns[6].Properties := Frm_Main.gCurProperties;
		cxgWkCashHis.Columns[7].Properties := Frm_Main.gCurProperties;
		cxgWkCashHis.Columns[8].Properties := Frm_Main.gCurProperties;
	Except
  end;
end;

procedure TFrm_WOR03.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_WOR03.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_WOR03.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_WOR03.cxButton20Click(Sender: TObject);
begin
  if cxgWkCashHis.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.WOR_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[기사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

  Frm_Main.sgExcel := '기사캐쉬내역.xls';
  Frm_Main.sgRpExcel := Format('기사>기사캐쉬내역]%s건', [GetMoneyStr(cxgWkCashHis.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridWkConnect;
  Frm_Main.cxGridDBViewExcel := cxgWkCashHis;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_WOR03.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

end.


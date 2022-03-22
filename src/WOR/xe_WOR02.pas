unit xe_WOR02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxLabel, Vcl.Menus, cxContainer, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, dxSkinsCore,
  dxSkinscxPCPainter, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_WOR02 = class(TForm)
    cxGridWkConnect: TcxGrid;
    cxgBlackList: TcxGridDBTableView;
    cxgBlackListColumn1: TcxGridDBColumn;
    cxgBlackListColumn2: TcxGridDBColumn;
    cxgBlackListColumn3: TcxGridDBColumn;
    cxgBlackListColumn4: TcxGridDBColumn;
    cxgBlackListColumn5: TcxGridDBColumn;
    cxgBlackListColumn6: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxLabel1: TcxLabel;
    pnlTitle: TPanel;
    BtnClose: TcxButton;
    cxLblActive: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
  Frm_WOR02: TFrm_WOR02;

implementation

{$R *.dfm}

uses xe_GNL, xe_Func;

procedure TFrm_WOR02.FormCreate(Sender: TObject);
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

procedure TFrm_WOR02.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_WOR02.FormDestroy(Sender: TObject);
begin
  Frm_WOR02 := Nil;
end;

procedure TFrm_WOR02.FormShow(Sender: TObject);
begin
  fSetFont(Frm_WOR02, GS_FONTNAME);
end;

procedure TFrm_WOR02.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WOR02.proc_init;
var
  i: Integer;
begin
  cxgBlackList.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to cxgBlackList.ColumnCount - 1 do
  begin
    cxgBlackList.Columns[i].DataBinding.ValueType := 'String';
  end;
  cxgBlackList.DataController.SetRecordCount(0);
end;

procedure TFrm_WOR02.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_WOR02.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_WOR02.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.


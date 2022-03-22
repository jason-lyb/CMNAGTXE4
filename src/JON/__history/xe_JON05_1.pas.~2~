unit xe_JON05_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, dxCore,
  Dialogs, Menus, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxControls,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxLabel, cxGridLevel, cxGridCustomTableView, Magnetic, inifiles,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxContainer, IdBaseComponent,
  dxSkinsCore, dxSkinscxPCPainter, cxTextEdit, cxMemo, cxGroupBox, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark,
  dxSkinOffice2007Silver, cxCheckBox, dxScrollbarAnnotations;

type
  TFrm_JON05_1 = class(TForm)
    Panel1: TPanel;
    pnlTitle: TPanel;
    cxLblActive: TLabel;
    btnClose: TcxButton;
    cxGroupBox2: TcxGroupBox;
    btnPrev: TcxButton;
    btnNext: TcxButton;
    btnSave: TcxButton;
    btnSch: TcxButton;
    cxGridUserSMenu: TcxGrid;
    cxViewUserSMenu: TcxGridTableView;
    cxViewUserSMenuColumn1: TcxGridColumn;
    cxViewUserSMenuColumn2: TcxGridColumn;
    cxLevelUserBigo: TcxGridLevel;
    procedure cxButton6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure cxViewUserSMenuCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnSchClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnPrevClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);  // 도/로드뷰
  private
    procedure pUserSMenuLoad;
    procedure MoveRecord(ARecordIndex: Integer; IsUpDirection: Boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_JON05_1: TFrm_JON05_1;

implementation

{$R *.dfm}

uses xe_GNL, Main, xe_Func, xe_COM40, xe_JON00, xe_JON05;

type
  TcxGridDataControllerAccess = class(TcxGridDataController);

procedure TFrm_JON05_1.MoveRecord(ARecordIndex: Integer; IsUpDirection: Boolean);
var
  ANewIndex, ASourceRecordIndex: Integer;
begin
  if IsUpDirection then
    ASourceRecordIndex := ARecordIndex - 1
  else
    ASourceRecordIndex := ARecordIndex + 1;

  with TcxGridDataControllerAccess(cxViewUserSMenu.DataController) do
  begin
    if (ASourceRecordIndex >= RecordCount) or (ASourceRecordIndex < 0) then Exit;
    BeginUpdate;
    try
      ANewIndex := AppendRecord;
      CopyRecord(ARecordIndex, ANewIndex);
      CopyRecord(ASourceRecordIndex, ARecordIndex);
      CopyRecord(ANewIndex, ASourceRecordIndex);
      DeleteRecord(ANewIndex);
    finally
      FocusedRecordIndex := ASourceRecordIndex;
      EndUpdate;
    end;
  end;
end;

procedure TFrm_JON05_1.btnNextClick(Sender: TObject);
begin
  MoveRecord(cxViewUserSMenu.Controller.FocusedRowIndex, False);
end;

procedure TFrm_JON05_1.btnPrevClick(Sender: TObject);
var
  iRow, i : Integer;
begin
  iRow := cxViewUserSMenu.DataController.FocusedRecordIndex;
  if iRow < 1 then Exit;

  MoveRecord(cxViewUserSMenu.Controller.FocusedRowIndex, True);
end;

procedure TFrm_JON05_1.btnSaveClick(Sender: TObject);
Var i : Integer;
    ln_Env : TIniFile;
begin
  try
    if cxViewUserSMenu.DataController.RecordCount = 0 then Exit;

    GS_UserShortMenu.Clear;
    for i := 0 to cxViewUserSMenu.DataController.RecordCount - 1 do
    begin
      GS_UserShortMenu.Add(cxViewUserSMenu.DataController.Values[i, 1] + '=' + cxViewUserSMenu.DataController.Values[i, 0]);
    end;

    ln_Env := TIniFile.Create(ENVPATHFILE);
    try
      ln_Env.EraseSection('UserShortMenu');
      for I := 0 to GS_UserShortMenu.Count - 1 do
        ln_Env.WriteString('UserShortMenu', GS_UserShortMenu.Names[i], GS_UserShortMenu.ValueFromIndex[i]);
    finally
    	FreeAndNil(ln_Env);
    end;

    if Assigned(Frm_JON05) then Frm_JON05.pMenuCreate
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON05_1.btnSchClick(Sender: TObject);
begin
  pUserSMenuLoad;
end;

procedure TFrm_JON05_1.cxButton6Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_JON05_1.cxViewUserSMenuCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  try
//    if (AViewInfo.GridRecord.Focused) And (AViewInfo.Item.Index = 1) then
//      ACanvas.FillRect(AViewInfo.Bounds, $0047D5FE)
//    else
//      ACanvas.FillRect(AViewInfo.Bounds, AViewInfo.Params.Color);
//
//    ACanvas.DrawTexT(AViewInfo.Text, AViewInfo.TextBounds, 0, True);
//    ADone := True;
  except
  end;
end;

procedure TFrm_JON05_1.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON05_1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_JON05_1.FormCreate(Sender: TObject);
var
  Save : LongInt; // 폼타이틀 제거용.
  i : Integer;
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

  for I := 0 to cxViewUserSMenu.ColumnCount - 1 do
    cxViewUserSMenu.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;

  pUserSMenuLoad;
end;

procedure TFrm_JON05_1.pUserSMenuLoad;
Var i, iRow : Integer;
begin
  cxViewUserSMenu.DataController.SetRecordCount(0);
  cxViewUserSMenu.BeginUpdate;
  try
    for i := 0 to GS_UserShortMenu.Count - 1 do
    begin
    	iRow := cxViewUserSMenu.DataController.AppendRecord;
    	cxViewUserSMenu.DataController.Values[iRow,  0] := GS_UserShortMenu.ValueFromIndex[i];
	    cxViewUserSMenu.DataController.Values[iRow,  1] := GS_UserShortMenu.Names[I];
    end;
  finally
    cxViewUserSMenu.EndUpdate;
  end;
end;

procedure TFrm_JON05_1.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON05_1.FormDestroy(Sender: TObject);
begin
  Frm_JON05_1 := Nil;
end;

procedure TFrm_JON05_1.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON05_1, GS_FONTNAME);
  fSetSkin(Frm_JON05_1);

  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);
end;

procedure TFrm_JON05_1.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON05_1.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.


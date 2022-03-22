unit xe_ImportFile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxCheckBox, cxControls, cxContainer, cxEdit, cxTextEdit, ImgList, Grids,
  BaseGrid, AdvGrid, AdvCGrid, cxGraphics, cxLookAndFeels, Vcl.ExtCtrls, AdvObj,
  cxGroupBox, cxLabel, dxSkinsCore, AdvUtil, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TOnImportResult =  procedure(const AIndex: Integer; AData: array of string) of object;

  TFrm_ImportFile = class(TForm)
    grdFileImport: TAdvColumnGrid;
    edtCount: TEdit;
    pmColumn: TPopupMenu;
    mniDefault: TMenuItem;
    mniSeparate: TMenuItem;
    dlgOpen: TOpenDialog;
    pmGrid: TPopupMenu;
    mniFileLoad: TMenuItem;
    mniLoadClipboard: TMenuItem;
    mniGridSep: TMenuItem;
    mniGridClear: TMenuItem;
    edtFilePath: TcxTextEdit;
    chkFirstRowHeader: TcxCheckBox;
    btnLoadFromFile: TcxButton;
    btnSelFinish: TcxButton;
    PnlMain: TPanel;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxLblActive: TLabel;
    lbl2: TcxLabel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    lbMemo: TcxLabel;
    lbBrNo: TcxLabel;
    lbComment: TcxLabel;
    lbl1: TcxLabel;
    procedure mniColumnClick(Sender: TObject);
    procedure btnLoadFromFileClick(Sender: TObject);
    procedure grdFileImportColumnPopup(Sender: TObject; ACol,
      ARow: Integer; PopupMenu: TPopupMenu);
    procedure grdFileImportDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure mniFileLoadClick(Sender: TObject);
    procedure mniLoadClipboardClick(Sender: TObject);
    procedure mniGridClearClick(Sender: TObject);
    procedure btnSelFinishClick(Sender: TObject);
    procedure grdFileImportCanClickCell(Sender: TObject; ARow,
      ACol: Integer; var Allow: Boolean);
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grdFileImportKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chkFirstRowHeaderClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FData: array of string;           //
    FDataDefault: array of Boolean;
    FDataIndex: array of Integer;
    FSelectedCol: Integer;            // 선택한 마우스 컬럼인덱스
    FDefaultCount: Integer;
    FColumnHeader: array of string;   // 기본열 이름저장
    FColumnIndex: array of Integer;   // 선택한 항목 인덱스 저장(선택 취소시 필요)
    FOnImportResult: TOnImportResult;
    FOnEndImport: TNotifyEvent;
    FOnBeginImport: TNotifyEvent;

    procedure InitData;
    procedure SetControlData;
    procedure LoadFromFile(AFilePath: string = '');
    procedure LoadFromClipboard;

    procedure SelColumn(ADataIndex, AColIndex: Integer);
  public
    { Public declarations }
    procedure SetCaption(ACaption: string);
    procedure SetData(AData: array of string; AIsDefault: array of Boolean; AGubun : integer);

    property OnBeginImport: TNotifyEvent read FOnBeginImport write FOnBeginImport;
    property OnEndImport: TNotifyEvent read FOnEndImport write FOnEndImport;
    property OnImportResult: TOnImportResult read FOnImportResult write FOnImportResult;
  end;

  function NumChar(ADelimiter: Char; AStr: string): Integer;
  function GetDelimiter(ALine1, ALine2: string; ADelimiters: array of Char): Char;

var
  Frm_ImportFile: TFrm_ImportFile;

implementation

uses
  Clipbrd, Math, StrUtils, xe_GNL, xe_Func;

{$R *.dfm}

{ TForm1 }

procedure TFrm_ImportFile.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_ImportFile.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_ImportFile.FormCreate(Sender: TObject);
var
  Save: Integer;
begin
  // 폼 타이틀 제거..
  if BorderStyle = bsNone then
    Exit;
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
end;

procedure TFrm_ImportFile.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_ImportFile.FormDestroy(Sender: TObject);
begin
  Frm_ImportFile := Nil;
end;

procedure TFrm_ImportFile.FormShow(Sender: TObject);
begin
  fSetFont(Frm_ImportFile, GS_FONTNAME);
  fSetSkin(Frm_ImportFile);
end;

procedure TFrm_ImportFile.InitData;
var
  I: Integer;
begin
  for I := 0 to Length(FDataIndex) - 1 do
    FDataIndex[I] := -1;

  for I := 0 to pmColumn.Items.Count - 1 do
    pmColumn.Items[I].Checked := False;

  FSelectedCol    := -1;

  grdFileImport.Clear;
  grdFileImport.ColCount := 1;
  grdFileImport.RowCount := 2;
end;

procedure TFrm_ImportFile.LoadFromClipboard;
var
  I, RowIdx: Integer;
  Delimiter: Char;
  Text: string;
  StrList: TStringList;
  L1, L2: string;
begin
  InitData;

  Text := Clipboard.AsText;

  if Trim(Text) = '' then
  begin
    ShowMessage('엑셀에서 영역복사 후 붙여넣기(Ctrl+V)를 해주세요.');
    Exit;
  end;

  StrList := TStringList.Create;
  try
    StrList.Text := Text;
    if StrList.Count = 0 then
      Exit;

    L1 := StrList[0];
    if StrList.Count > 1 then
      L2 := StrList[1];
    Delimiter := GetDelimiter(L1, L2, [',', #9, ';', '@']);

    grdFileImport.ColCount := NumChar(Delimiter, StrList[0]) + 1;
    grdFileImport.RowCount := StrList.Count + IfThen(chkFirstRowHeader.Checked, 0, 1);

    for I := 0 to StrList.Count - 1 do
    begin
      RowIdx := I + IfThen(chkFirstRowHeader.Checked, 0, 1);
      grdFileImport.Rows[RowIdx].Delimiter := Delimiter;
      grdFileImport.Rows[RowIdx].CommaText := StrList[I];
    end;
  finally
    StrList.Free;
  end;

  SetControlData;
end;

procedure TFrm_ImportFile.LoadFromFile(AFilePath: string);
var
  Ext: string;
begin
  if AFilePath = '' then  AFilePath := edtFilePath.Text;
  if AFilePath = '' then  Exit;

  InitData;

  grdFileImport.SaveFixedCells := chkFirstRowHeader.Checked;

  Ext := UpperCase(ExtractFileExt(AFilePath));
  grdFileImport.BeginUpdate;
  try
    if (Ext = '.XLS') or (Ext = '.XLSX') then
      grdFileImport.LoadFromXLS(AFilePath)
    else if (Ext = '.TXT') or (Ext = '.CSV') then
      grdFileImport.LoadFromCSV(AFilePath);
  finally
    grdFileImport.EndUpdate;
  end;

  SetControlData;
end;

procedure TFrm_ImportFile.mniColumnClick(Sender: TObject);
begin
  SelColumn(TMenuItem(Sender).Tag, FSelectedCol);
end;

procedure TFrm_ImportFile.SelColumn(ADataIndex, AColIndex: Integer);
  function _GetMenu(AIndex: Integer): TMenuItem;
  var
    I: Integer;
  begin
    Result := nil;

    for I := 0 to pmColumn.Items.Count - 1 do
      if pmColumn.Items[I].Tag = AIndex then
      begin
        Result := pmColumn.Items[I];
        Exit;
      end;
  end;


  procedure RemoveMenuCheck(AIndex: Integer);
  var
    I: Integer;
  begin
    for I := 0 to pmColumn.Items.Count - 1 do
    begin
      if pmColumn.Items[I].Tag = AIndex then
        pmColumn.Items[I].Checked := False;
    end;
  end;
var
  Menu: TMenuItem;
begin
  if AColIndex = -1 then
  begin
    RemoveMenuCheck(ADataIndex);
    Exit;
  end;

  Menu := _GetMenu(ADataIndex);

  // 항목을 선택한 경우 기존 해당항목이 선택된 컬럼 초기화
  if ADataIndex > -1 then
  begin
    if FDataIndex[ADataIndex] > -1 then
    begin
      grdFileImport.Cells[FDataIndex[ADataIndex], 0] := FColumnHeader[FDataIndex[ADataIndex]];
      RemoveMenuCheck(FColumnIndex[ADataIndex]);
      FColumnIndex[FDataIndex[ADataIndex]] := -1;
    end;

    if FColumnIndex[AColIndex] > -1 then
    begin
      RemoveMenuCheck(FColumnIndex[AColIndex]);
      FDataIndex[FColumnIndex[AColIndex]] := -1;
//      FColumnIndex[FDataIndex[DataIndex]] := -1;
    end;

    FDataIndex[ADataIndex] := AColIndex;
    FColumnIndex[AColIndex] := ADataIndex;
    Menu.Checked := True;
  end
  // 기본(1행, 2행)을 선택 한경우 기존 선택된 항목 초기화
  else
  begin
    if FColumnIndex[AColIndex] > -1 then
    begin
      RemoveMenuCheck(FColumnIndex[AColIndex]);
      FDataIndex[FColumnIndex[AColIndex]] := -1;
    end;
    FColumnIndex[AColIndex] := -1;
  end;
  grdFileImport.Cells[AColIndex, 0] := Menu.Caption;
  grdFileImport.SetFocus;
end;

procedure TFrm_ImportFile.SetCaption(ACaption: string);
begin
  Self.Caption := ACaption;
  PnlTitle.Caption := '   ' + ACaption;
end;

procedure TFrm_ImportFile.SetControlData;
var
  I, J: Integer;
  IsChecked: Boolean;
begin
  // 열이름 저장
  SetLength(FColumnHeader, grdFileImport.ColCount);
  SetLength(FColumnIndex, grdFileImport.ColCount);
  for I := grdFileImport.FixedCols to grdFileImport.ColCount - 1 do
  begin
    if not chkFirstRowHeader.Checked then
      grdFileImport.Cells[I, 0] := IntToStr(I+1) + '행';

    FColumnHeader[I] := grdFileImport.Cells[I, 0];
    FColumnIndex[I] := -1;
  end;

  if grdFileImport.ColCount < FDefaultCount then
    ShowMessage('필요항목 보다 목록의 항목이 적습니다. 다른 파일을 선택해 주세요.')
  else
  begin
    // 컬럼 자동 찾기
    if chkFirstRowHeader.Checked then
    begin
      for I := 0 to Length(FData) - 1 do
      begin
        IsChecked := False;
        for J := 0 to grdFileImport.ColCount - 1 do
        begin
          if FData[I] = grdFileImport.Cells[J, 0] then
          begin
            SelColumn(I, J);
            IsChecked := True;
            Break;
          end;
        end;

        if not IsChecked then
          SelColumn(I, -1);
      end;
    end
    else
    begin
      if grdFileImport.ColCount < Length(FData) then
      begin
        J := 0;
        for I := 0 to Length(FData) - 1 do
        begin
          if FDataDefault[I] then
          begin
            SelColumn(I, J);
            Inc(J);
          end
          else
          begin
            SelColumn(I, -1);
          end;
        end;
      end
      else
      begin
        for I := 0 to Length(FData) - 1 do
        begin
          SelColumn(I, I);
        end;
      end;
    end;
  end;

  edtCount.Text := IntToStr(grdFileImport.RowCount - grdFileImport.FixedRows);
end;

procedure TFrm_ImportFile.SetData(AData: array of string; AIsDefault: array of Boolean; AGubun : integer);
var
  I: Integer;
  mnuItem: TMenuItem;
begin
  SetLength(FData, Length(AData));
  SetLength(FDataDefault, Length(AData));
  SetLength(FDataIndex, Length(AData));

  FDefaultCount := 0;
  for I := 0 to Length(AData) - 1 do
  begin
    mnuItem := TMenuItem.Create(pmColumn);
    mnuItem.Caption := AData[I];
    mnuItem.OnClick := mniColumnClick;
    mnuItem.Tag := I;
    pmColumn.Items.Add(mnuItem);

    FData[I] := AData[I];
    FDataDefault[I] := AIsDefault[I];
    if AIsDefault[I] then Inc(FDefaultCount);
    FDataIndex[I] := -1;
	end;
	if AGubun = 0 then
	begin
		lbBrNo.Visible := True;
		lbMemo.Left := 214;
		lbComment.Left := 263;
	end else 
	if AGubun = 1 then
	begin
		lbBrNo.Visible := False;
		lbMemo.Left := 142;
		lbComment.Left := 198;
	end;
end;

function NumChar(ADelimiter: Char; AStr: string): Integer;
  function VarPos(su,s:string;var Respos:Integer): Integer;
  begin
    Respos := Pos(su,s);
    Result := Respos;
  end;
var
  P: Integer;
begin
  Result := 0;

  while VarPos(ADelimiter, AStr, P) > 0 do
  begin
    Delete(AStr, 1, P);
    Inc(Result);
  end;
end;

function GetDelimiter(ALine1, ALine2: string;
  ADelimiters: array of Char): Char;
var
  I, M, C1, C2: Integer;
begin
  M := 0;

  for I := 1 to Length(ADelimiters) do
  begin
    C1 := NumChar(ADelimiters[I], ALine1);
    C2 := NumChar(ADelimiters[I], ALine2);

    if (C1 = C2) and (C1 > M) then
    begin
      Result := ADelimiters[I];
      M := C1;
    end;
  end;

  if M = 0 then
  begin
    for I := 1 to Length(ADelimiters) do
    begin
      C1 := NumChar(ADelimiters[I], ALine1);
      C2 := NumChar(ADelimiters[I], ALine2);

      if (C1 > M) or (C2 > M) then
      begin
        Result := ADelimiters[I];
        M := Max(C1, C2);
      end;
    end;
  end;
end;
procedure TFrm_ImportFile.btnLoadFromFileClick(Sender: TObject);
begin
  if dlgOpen.Execute then
  begin
    edtFilePath.Text := dlgOpen.FileName;
    LoadFromFile(edtFilePath.Text);
  end;
end;

procedure TFrm_ImportFile.grdFileImportColumnPopup(Sender: TObject; ACol,
  ARow: Integer; PopupMenu: TPopupMenu);
begin
  FSelectedCol := -1;
  if ARow = 0 then
  begin
    mniDefault.Caption := FColumnHeader[ACol];
    FSelectedCol := ACol;
  end;
end;

procedure TFrm_ImportFile.grdFileImportDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  if ARow = 0 then
    grdFileImport.Canvas.TextOut(Rect.Right - 15, Rect.Top + 4, '▼');
end;

procedure TFrm_ImportFile.mniFileLoadClick(Sender: TObject);
begin
  btnLoadFromFile.Click;
end;

procedure TFrm_ImportFile.mniLoadClipboardClick(Sender: TObject);
begin
  LoadFromClipboard;
end;

procedure TFrm_ImportFile.pnlTitleMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_ImportFile.mniGridClearClick(Sender: TObject);
begin
  InitData;
end;

procedure TFrm_ImportFile.btnSelFinishClick(Sender: TObject);
  function _IsSelectedAll(var ANotSelectItem: string): Boolean;
  var
    I: Integer;
  begin
    Result := True;

    for I := 0 to Length(FDataIndex) - 1 do
    begin
      if FDataDefault[I] and (FDataIndex[I] = -1) then
      begin
        ANotSelectItem := ANotSelectItem + IfThen(ANotSelectItem = '', '', ',') + FData[I];
        Result := False;
      end;
    end;
  end;
var
  I, J: Integer;
  R: array of string;
  NotSelected: string;
begin
  if not _IsSelectedAll(NotSelected) then
  begin
    ShowMessage(Format('그리드의 제목행을 선택하시어 [%s]항목을 선택해 주세요.', [NotSelected]));
    Exit;
  end;

  SetLength(R, Length(FData));

  if Assigned(FOnBeginImport) then
    FOnBeginImport(nil);
  try
    for I := grdFileImport.FixedRows to grdFileImport.RowCount - 1 do
    begin
      for J := 0 to Length(FData) - 1 do
      begin
        if FDataIndex[J] = -1 then
          R[J] := ''
        else
          R[J] := grdFileImport.Cells[FDataIndex[J], I];
      end;
      if Assigned(FOnImportResult) then
        FOnImportResult(I-grdFileImport.FixedRows, R);
    end;
  finally
    if Assigned(FOnEndImport) then
      FOnEndImport(nil);
  end;

  Self.ModalResult := mrOk;
end;

procedure TFrm_ImportFile.grdFileImportCanClickCell(Sender: TObject; ARow,
  ACol: Integer; var Allow: Boolean);
var
  R: TRect;
  P: TPoint;
begin
  if (ACol = -1) or (ARow <> 0) then Exit;
  
  R := grdFileImport.CellRect(ACol, ARow);
  P := grdFileImport.ScreenToClient(Mouse.CursorPos);

  if (R.Left + 4 < P.X) and (R.Right - 4 > P.X)  and (Length(FColumnHeader) > 0) then  // Popup
  begin
    Allow := True;
    FSelectedCol := -1;
    if ARow = 0 then
    begin
      mniDefault.Caption := FColumnHeader[ACol];
      FSelectedCol := ACol;
    end;
    pmColumn.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  end;
end;

procedure TFrm_ImportFile.btnCloseClick(Sender: TObject);
begin
  Self.ModalResult := mrCancel;
  Self.Close;
end;

procedure TFrm_ImportFile.grdFileImportKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (ssCtrl in Shift) and ((Key = Ord('v')) or (Key = Ord('V'))) then
  begin
    LoadFromClipboard;
  end;
end;

procedure TFrm_ImportFile.chkFirstRowHeaderClick(Sender: TObject);
begin
  if Length(FColumnHeader) > 0 then
  begin
    if chkFirstRowHeader.Checked then
      grdFileImport.RemoveRows(0, 1)
    else
      grdFileImport.InsertRows(0, 1)
    ;
    SetControlData;
  end;
end;

end.

unit xe_JON016;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel, cxGroupBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxTextEdit,
  Vcl.ExtCtrls, AdvGlowButton, cxCheckBox, dxSkinsCore,
  dxSkinscxPCPainter, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  TFrm_JON016 = class(TForm)
    pnl1: TPanel;
    lbl2: TcxLabel;
    edtBigo: TcxTextEdit;
    edtDesc: TcxTextEdit;
    lbl5: TcxLabel;
    btnUpdate: TcxButton;
    btnDelete: TcxButton;
    btnClear: TcxButton;
    cxGridUserBigo: TcxGrid;
    cxLevelUserBigo: TcxGridLevel;
    btnTime: TcxButton;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    cxGroupBox1: TcxGroupBox;
    PnlMain: TPanel;
    cb_00: TAdvGlowButton;
    cb_01: TAdvGlowButton;
    cb_02: TAdvGlowButton;
    cb_03: TAdvGlowButton;
    cb_04: TAdvGlowButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    chkSeperUse: TcxCheckBox;
    PnlSelect: TPanel;
    cxLblActive: TLabel;
    cxLabel3: TcxLabel;
    edtUserSelect: TcxTextEdit;
    Pnl2: TPanel;
    btnUserSelect: TcxButton;
    edtUserSelect1: TcxTextEdit;
    btnUserSD: TcxButton;
    Panel1: TPanel;
    cxGroupBox2: TcxGroupBox;
    btnPrev: TcxButton;
    btnNext: TcxButton;
    btnSave: TcxButton;
    btnSch: TcxButton;
    cxViewUserBigo: TcxGridTableView;
    cxViewUserBigoColumn1: TcxGridColumn;
    cxViewUserBigoColumn2: TcxGridColumn;
    cxViewUserBigoColumn3: TcxGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure cxViewUserBigoDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnTimeClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure chkSeperUseClick(Sender: TObject);
    procedure btnUserSelectClick(Sender: TObject);
    procedure btnUserSDClick(Sender: TObject);
    procedure edtBigoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSchClick(Sender: TObject);
    procedure btnPrevClick(Sender: TObject);
    procedure cxViewUserBigoCustomDrawIndicatorCell(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure btnNextClick(Sender: TObject);
    procedure cxViewUserBigoCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
    AKeys: Variant;
    procedure ClearControll;
    procedure MoveRecord(ARecordIndex: Integer; IsUpDirection: Boolean);
  public
    procedure LoadData;
    { Public declarations }
  end;

var
  Frm_JON016: TFrm_JON016;

implementation


{$R *.dfm}

uses xe_GNL, xe_Func, xe_Msg, xe_Lib, Main, xe_JON05;

procedure TFrm_JON016.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON016, GS_FONTNAME);
  fSetSkin(Frm_JON016);
  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);
end;

procedure TFrm_JON016.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON016.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_JON016.FormCreate(Sender: TObject);
var
  Save: LongInt; // 폼타이틀 제거용.
  i : Integer;
begin
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

  for I := 0 to cxViewUserBigo.ColumnCount - 1 do
    cxViewUserBigo.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;

	if GS_SEPER_USE then chkSeperUse.Checked := False
                	else chkSeperUse.Checked := True;

  edtUserSelect .Text := GS_USERSELECT;
  edtUserSelect1.Text := GS_USERSELECT1;
end;

procedure TFrm_JON016.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON016.FormDestroy(Sender: TObject);
begin
  Frm_JON016 := nil;
end;

procedure TFrm_JON016.LoadData;
var
  I, Row, iPos : Integer;
  sDesc, sSelBtn : String;
begin
  cxViewUserBigo.DataController.RecordCount := 0;
  cxViewUserBigo.BeginUpdate();

  if Self.Tag = 1 then    // 출/도착지
  begin
    PnlSelect.Enabled := True;

    for I := 0 to GS_UserBigoList.Count - 1 do
    begin
      Row := cxViewUserBigo.DataController.AppendRecord;
      cxViewUserBigo.DataController.Values[Row, 0] := GS_UserBigoList.Names[I];

      iPos := Pos('│', GS_UserBigoList.ValueFromIndex[I]);
      if iPos > 0 then
      begin
        sDesc   := Copy(GS_UserBigoList.ValueFromIndex[I], 1, iPos - 1);
        sSelBtn := Copy(GS_UserBigoList.ValueFromIndex[I], iPos + 1, Length(GS_UserBigoList.ValueFromIndex[I]) - iPos);

        cxViewUserBigo.DataController.Values[Row, 1] := sDesc;
        cxViewUserBigo.DataController.Values[Row, 2] := sSelBtn;
      end else
      begin
        cxViewUserBigo.DataController.Values[Row, 1] := GS_UserBigoList.ValueFromIndex[I];
        cxViewUserBigo.DataController.Values[Row, 2] := '';
      end;
    end;
  end else
  if Self.Tag = 2 then    // 적요
  begin
    PnlSelect.Enabled := False;

    for I := 0 to GS_UserBigoList1.Count - 1 do
    begin
      Row := cxViewUserBigo.DataController.AppendRecord;
      cxViewUserBigo.DataController.Values[Row, 0] := GS_UserBigoList1.Names[I];

      iPos := Pos('│', GS_UserBigoList1.ValueFromIndex[I]);
      if iPos > 0 then
      begin
        sDesc   := Copy(GS_UserBigoList1.ValueFromIndex[I], 1, iPos - 1);
        sSelBtn := Copy(GS_UserBigoList1.ValueFromIndex[I], iPos + 1, Length(GS_UserBigoList1.ValueFromIndex[I]) - iPos);

        cxViewUserBigo.DataController.Values[Row, 1] := sDesc;
        cxViewUserBigo.DataController.Values[Row, 2] := sSelBtn;
      end else
      begin
        cxViewUserBigo.DataController.Values[Row, 1] := GS_UserBigoList1.ValueFromIndex[I];
        cxViewUserBigo.DataController.Values[Row, 2] := '';
      end;
    end;
  end;
	cxViewUserBigo.EndUpdate();
	ClearControll;
	
	btnTime.enAbled := not PnlSelect.Enabled;
	cb_00.enabled := PnlSelect.Enabled;
	cb_01.enabled := PnlSelect.Enabled;
	cb_02.enabled := PnlSelect.Enabled;
	cb_03.enabled := PnlSelect.Enabled;
	cb_04.enabled := PnlSelect.Enabled;
end;

procedure TFrm_JON016.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON016.ClearControll;
begin
  edtBigo.Clear;
  edtDesc.Clear;

  edtBigo.Enabled := True;
  edtBigo.SetFocus;
  btnUpdate.Caption := '저장';
  btnDelete.Enabled := False;

  cb_00.Down := False;
  cb_01.Down := False;
  cb_02.Down := False;
  cb_03.Down := False;
  cb_04.Down := False;
end;

procedure TFrm_JON016.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_JON016.chkSeperUseClick(Sender: TObject);
begin
	if chkSeperUse.Checked then GS_SEPER_USE := False
	                       else GS_SEPER_USE := True;

	GS_EnvFile.WriteBool('COUNSEL', 'SEPER_USE', GS_SEPER_USE);
end;

procedure TFrm_JON016.btnUserSDClick(Sender: TObject);
Var i : Integer;
begin
  try
    edtUserSelect.Text := '';
    GS_USERSELECT  := edtUserSelect.Text;
    GS_EnvFile.WriteString('COUNSEL', 'USERSELECT', GS_USERSELECT);

    edtUserSelect1.Text := '';
    GS_USERSELECT1 := edtUserSelect1.Text;
    GS_EnvFile.WriteString('COUNSEL', 'USERSELECT1', GS_USERSELECT1);

    // 접수창의 상용구 목록 재로드
    for I := 0 to JON_MAX_CNT - 1 do
    begin
      if Assigned(Frm_Main.Frm_JON01N[I]) then
        Frm_Main.Frm_JON01N[I].LoadSpopList;
    end;
    GMessagebox('삭제완료', CDMSI);
  except

  end;
end;

procedure TFrm_JON016.btnUserSelectClick(Sender: TObject);
Var i : Integer;
begin
	if Not func_EucKr_Check(edtUserSelect, 0) then Exit;
	if Not func_EucKr_Check(edtUserSelect1, 0) then Exit;

	if ( Trim(edtUserSelect.Text) = '탁송' ) Or
     ( Trim(edtUserSelect.Text) = '정장' ) Or
     ( Trim(edtUserSelect.Text) = '경유' ) Or
     ( Trim(edtUserSelect.Text) = '적요' ) Or
     ( Trim(edtUserSelect.Text) = '스틱' ) then
  begin
    GMessagebox('탁송/정장/경유/적요/스틱 문구는 사용자 정의 선택 문구로 사용할수 없습니다.', CDMSE);
    Exit;
  end;

  if ( Trim(edtUserSelect.Text) <> '' ) And ( Trim(edtUserSelect1.Text) <> '' ) then
  begin
    GS_USERSELECT  := edtUserSelect.Text;
	  GS_EnvFile.WriteString('COUNSEL', 'USERSELECT', GS_USERSELECT);
    GS_USERSELECT1 := edtUserSelect1.Text;
	  GS_EnvFile.WriteString('COUNSEL', 'USERSELECT1', GS_USERSELECT1);

    // 접수창의 상용구 목록 재로드
    for I := 0 to JON_MAX_CNT - 1 do
    begin
      if Assigned(Frm_Main.Frm_JON01N[I]) then
        Frm_Main.Frm_JON01N[I].LoadSpopList;
    end;

    GMessagebox('저장완료', CDMSI);
  end else
  begin
    GMessagebox('명칭과 설명을 모두 입력해주세요.', CDMSE);
  end;
end;

procedure TFrm_JON016.cxViewUserBigoCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Focused then
    ACanvas.FillRect(AViewInfo.Bounds, $0047D5FE)
  else
    ACanvas.FillRect(AViewInfo.Bounds, AViewInfo.Params.Color);

  ACanvas.DrawTexT(AViewInfo.Text, AViewInfo.TextBounds, 0, True);
  ADone := True;
end;

procedure TFrm_JON016.cxViewUserBigoCustomDrawIndicatorCell(Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
var
  FValue : Integer;
begin
  if (AViewInfo is TcxGridIndicatorRowItemViewInfo) then
  begin
    ACanvas.FillRect(AViewInfo.Bounds);
    ACanvas.DrawComplexFrame(AViewInfo.Bounds, clBlack, clBlack, [bBottom, bLeft, bRight], 1);
    FValue := TcxGridIndicatorRowItemViewInfo(AViewInfo).GridRecord.Index;
    InflateRect(AViewInfo.Bounds, -3, -2);
    ACanvas.Font.Color := clBlack;
    ACanvas.Brush.Style := bsClear;
    ACanvas.DrawText(IntToStr(FValue + 1), AViewInfo.Bounds, cxAlignRight or cxAlignTop);
    ADone := True;
  end;
end;

procedure TFrm_JON016.cxViewUserBigoDblClick(Sender: TObject);
var
  Row, i : Integer;
  sSelBtn : String;
  sTmp : TStringList;
begin
  Row := cxViewUserBigo.DataController.FocusedRecordIndex;

  edtBigo.Text := cxViewUserBigo.DataController.Values[Row, 0];
  edtDesc.Text := cxViewUserBigo.DataController.Values[Row, 1];

  sSelBtn := cxViewUserBigo.DataController.Values[Row, 2];

  cb_00.Down := False;
  cb_01.Down := False;
  cb_02.Down := False;
  cb_03.Down := False;
  cb_04.Down := False;

  if sSelBtn <> '' then
  begin
    sTmp := TStringList.Create;
    try
      sTmp.Delimiter := '/';
      sTmp.DelimitedText := sSelBtn;

      for i := 0 to sTmp.Count -1 do
      begin
        if sTmp[i] = '탁' then
        begin
          cb_00.Down := True;
        end else
        if sTmp[i] = '정' then
        begin
          cb_01.Down := True;
        end else
        if sTmp[i] = '경' then
        begin
          cb_02.Down := True;
        end else
        if sTmp[i] = '적' then
        begin
          cb_03.Down := True;
        end else
        if sTmp[i] = '스' then
        begin
          cb_04.Down := True;
        end;
      end;

    finally
      FreeAndNil(sTmp);
    end;
  end;

  edtBigo.Enabled := False;
  btnUpdate.Caption := '수정';
  btnDelete.Enabled := True;
end;

procedure TFrm_JON016.edtBigoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_JON016.btnUpdateClick(Sender: TObject);
var
  I: Integer;
  Bigo, Desc, sSelBtn : string;
begin
	if Not func_EucKr_Check(edtBigo, 0) then Exit;
	if Not func_EucKr_Check(edtDesc, 0) then Exit;

	Bigo := edtBigo.Text;
	Desc := edtDesc.Text;
  sSelBtn := '';
  if CB_00.Down then sSelBtn := sSelBtn + '탁';
  if CB_01.Down then
  begin
    if sSelBtn = '' then sSelBtn := sSelBtn + '정'
                    else sSelBtn := sSelBtn + '/정'
  end;
  if CB_02.Down then
  begin
    if sSelBtn = '' then sSelBtn := sSelBtn + '경'
                    else sSelBtn := sSelBtn + '/경'
  end;
  if CB_03.Down then
  begin
    if sSelBtn = '' then sSelBtn := sSelBtn + '적'
                    else sSelBtn := sSelBtn + '/적'
  end;
  if CB_04.Down then
  begin
    if sSelBtn = '' then sSelBtn := sSelBtn + '스'
                    else sSelBtn := sSelBtn + '/스'
  end;

  if Bigo = '' then
  begin
    GMessagebox('상용구를 입력해 주세요.', CDMSE);
    edtBigo.SetFocus;
    Exit;
  end;

  if Desc = '' then
  begin
    GMessagebox('입력문구를 입력해 주세요.', CDMSE);
    edtDesc.SetFocus;
    Exit;
  end;

  if Self.Tag = 1 then       // 출/도착지
  begin
    if (edtBigo.Enabled and (GS_UserBigoList.Values[Bigo] <> '')) then
    begin
      if Application.MessageBox(PChar('이미 등록된 사용구 입니다. 입력문구를 변경할까요?'), CDMSI, MB_YESNO +
        MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
      begin
        Exit;
      end;
    end;

    if GS_UserBigoList.Values[Bigo] <> '' then
      GS_UserBigoList.Values[edtBigo.Text] := edtDesc.Text + '│' + sSelBtn
    else
      GS_UserBigoList.Add(Bigo + '=' + Desc + '│' + sSelBtn);

    SaveUserBigo;

    // 접수창의 상용구 목록 재로드
    for I := 0 to JON_MAX_CNT - 1 do
    begin
      if Assigned(Frm_Main.Frm_JON01N[I]) then
        Frm_Main.Frm_JON01N[I].LoadSpopList;

      if Assigned(Frm_Main.Frm_JON01N[I]) then
         Frm_Main.Frm_JON01N[I].LoadEpopList;
    end;
    if Assigned(Frm_JON05) then Frm_JON05.pMenuCreate
  end else
  if Self.Tag = 2 then       // 적요
  begin
    if (edtBigo.Enabled and (GS_UserBigoList1.Values[Bigo] <> '')) then
    begin
      if Application.MessageBox(PChar('이미 등록된 사용구 입니다. 입력문구를 변경할까요?'), CDMSI, MB_YESNO +
        MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
      begin
        Exit;
      end;
    end;

    if GS_UserBigoList1.Values[Bigo] <> '' then
      GS_UserBigoList1.Values[edtBigo.Text] := edtDesc.Text + '│' + sSelBtn
    else
      GS_UserBigoList1.Add(Bigo + '=' + Desc + '│' + sSelBtn);

    SaveUserBigo1;

    // 접수창의 상용구 목록 재로드
    for I := 0 to JON_MAX_CNT - 1 do
    begin
      if Assigned(Frm_Main.Frm_JON01N[I]) then
        Frm_Main.Frm_JON01N[I].LoadBigoList;
    end;
  end;

  LoadData;
end;

procedure TFrm_JON016.btnDeleteClick(Sender: TObject);
var
  I, Row: Integer;
  Bigo: string;
begin
  Row := cxViewUserBigo.DataController.FocusedRecordIndex;

  if Application.MessageBox(PChar('선택항목을 삭제할까요?'), CDMSI, MB_YESNO +
    MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then
  begin
    Exit;
  end;

  Bigo := cxViewUserBigo.DataController.Values[Row, 0];

  if Self.Tag = 1 then       // 출/도착지
  begin
     for I := 0 to GS_UserBigoList.Count - 1 do
    begin
      if GS_UserBigoList.Names[I] = Bigo then
      begin
        GS_UserBigoList.Delete(I);
        Break;
      end;
    end;

    SaveUserBigo;

    // 접수창의 출도착지 상용구 목록 재로드
    for I := 0 to JON_MAX_CNT - 1 do
    begin
      if Assigned(Frm_Main.Frm_JON01N[I]) then
        Frm_Main.Frm_JON01N[I].LoadSpopList;

      if Assigned(Frm_Main.Frm_JON01N[I]) then
        Frm_Main.Frm_JON01N[I].LoadEpopList;
    end;

    if Assigned(Frm_JON05) then Frm_JON05.pMenuCreate
  end else
  if Self.Tag = 2 then       // 적요
  begin
    for I := 0 to GS_UserBigoList1.Count - 1 do
    begin
      if GS_UserBigoList1.Names[I] = Bigo then
      begin
        GS_UserBigoList1.Delete(I);
        Break;
      end;
    end;

    SaveUserBigo1;

    // 접수창의 상용구 목록 재로드
    for I := 0 to JON_MAX_CNT - 1 do
    begin
      if Assigned(Frm_Main.Frm_JON01N[I]) then
        Frm_Main.Frm_JON01N[I].LoadBigoList;
    end;
  end;
  LoadData;
end;

procedure TFrm_JON016.btnNextClick(Sender: TObject);
begin
  MoveRecord(cxViewUserBigo.Controller.FocusedRowIndex, False);
end;

procedure TFrm_JON016.btnPrevClick(Sender: TObject);
var
  iRow, i : Integer;
begin
  iRow := cxViewUserBigo.DataController.FocusedRecordIndex;
  if iRow < 1 then Exit;

  MoveRecord(cxViewUserBigo.Controller.FocusedRowIndex, True);
end;

type
  TcxGridDataControllerAccess = class(TcxGridDataController);

procedure TFrm_JON016.MoveRecord(ARecordIndex: Integer; IsUpDirection: Boolean);
var
  ANewIndex, ASourceRecordIndex: Integer;
begin
  if IsUpDirection then
    ASourceRecordIndex := ARecordIndex - 1
  else
    ASourceRecordIndex := ARecordIndex + 1;

  with TcxGridDataControllerAccess(cxViewUserBigo.DataController) do
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

procedure TFrm_JON016.btnSaveClick(Sender: TObject);
Var i : Integer;
begin
  try
    if cxViewUserBigo.DataController.RecordCount = 0 then Exit;

    if Self.Tag = 1 then    // 출/도착지
    begin
      GS_UserBigoList.Clear;
      for i := 0 to cxViewUserBigo.DataController.RecordCount - 1 do
      begin
        GS_UserBigoList.Add(cxViewUserBigo.DataController.Values[i, 0] + '=' + cxViewUserBigo.DataController.Values[i, 1] + '│' +
                                                                               cxViewUserBigo.DataController.Values[i, 2]);
      end;

      SaveUserBigo;

      // 접수창의 상용구 목록 재로드
      for I := 0 to JON_MAX_CNT - 1 do
      begin
        if Assigned(Frm_Main.Frm_JON01N[I]) then
          Frm_Main.Frm_JON01N[I].LoadSpopList;

        if Assigned(Frm_Main.Frm_JON01N[I]) then
           Frm_Main.Frm_JON01N[I].LoadEpopList;
      end;

      if Assigned(Frm_JON05) then Frm_JON05.pMenuCreate
    end else
    if Self.Tag = 2 then    // 적요
    begin
      GS_UserBigoList1.Clear;
      for i := 0 to cxViewUserBigo.DataController.RecordCount - 1 do
      begin
        GS_UserBigoList1.Add(cxViewUserBigo.DataController.Values[i, 0] + '=' + cxViewUserBigo.DataController.Values[i, 1] + '│' +
                                                                                cxViewUserBigo.DataController.Values[i, 2]);
      end;

      SaveUserBigo1;

      // 접수창의 상용구 목록 재로드
      for I := 0 to JON_MAX_CNT - 1 do
      begin
        if Assigned(Frm_Main.Frm_JON01N[I]) then
          Frm_Main.Frm_JON01N[I].LoadBigoList;
      end;
    end;
    LoadData;
  except
  end;
end;

procedure TFrm_JON016.btnSchClick(Sender: TObject);
begin
  LoadData;
end;

procedure TFrm_JON016.btnClearClick(Sender: TObject);
begin
  ClearControll;
end;

procedure TFrm_JON016.btnTimeClick(Sender: TObject);
const
  sTarget = '<$시간$>';
begin
  edtDesc.Text := edtDesc.Text + '-' + sTarget;
  edtDesc.SetFocus;
end;

end.

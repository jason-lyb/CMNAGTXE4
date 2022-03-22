unit xe_JON013;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel, cxGroupBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxTextEdit,
  Vcl.ExtCtrls, AdvGlowButton, cxCheckBox, dxSkinsCore,
  dxSkinscxPCPainter, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver, cxRadioGroup, cxMaskEdit,
  cxSpinEdit, cxTimeEdit, cxCurrencyEdit, dxScrollbarAnnotations;

type
  TFrm_JON013 = class(TForm)
    pnl1: TPanel;
    lbl2: TcxLabel;
    lbl5: TcxLabel;
    btnUpdate: TcxButton;
    btnDelete: TcxButton;
    btnClear: TcxButton;
    cxGridWaitFare: TcxGrid;
    cxViewWaitFare: TcxGridDBTableView;
    cxColView1Column1: TcxGridDBColumn;
    cxColView1Column6: TcxGridDBColumn;
    cxLevelUserBigo: TcxGridLevel;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    cxGroupBox1: TcxGroupBox;
    PnlMain: TPanel;
    cxViewWaitFareColumn1: TcxGridDBColumn;
    cxLblActive: TLabel;
    cxLblSeq: TcxLabel;
    cEdtTime: TcxCurrencyEdit;
    cxLabel2: TcxLabel;
    cEdtFare: TcxCurrencyEdit;
    cxLabel3: TcxLabel;
    dtpTime: TcxTimeEdit;
    cxViewWaitFareColumn2: TcxGridDBColumn;
    cxViewWaitFareColumn3: TcxGridDBColumn;
    cxViewWaitFareColumn4: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxLabel4: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    Shape2: TShape;
    rbLocal: TcxRadioButton;
    rbServer: TcxRadioButton;
    cxGroupBox3: TcxGroupBox;
    Shape1: TShape;
    rbTypeA: TcxRadioButton;
    rbTypeB: TcxRadioButton;
    btnSearch: TcxButton;
    rbDefault: TcxRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure cxViewWaitFareDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edtBigoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rbTypeAClick(Sender: TObject);
    procedure dtpTimeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cEdtFareKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rbLocalClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
    procedure ClearControll;
    procedure pJON01_ReLoad;
  public
    procedure LoadData;
    { Public declarations }
  end;

var
  Frm_JON013: TFrm_JON013;

implementation


{$R *.dfm}

uses xe_GNL, xe_Func, xe_Msg, xe_Lib, Main, xe_agentCfg;

procedure TFrm_JON013.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON013, GS_FONTNAME);
  fSetSkin(Frm_JON013);
  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);
end;

procedure TFrm_JON013.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON013.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_JON013.FormCreate(Sender: TObject);
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

  for I := 0 to cxViewWaitFare.ColumnCount - 1 do
    cxViewWaitFare.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;

  GB_JON_WAITFARE_USE := GS_EnvFile.ReadString('COUNSEL', 'GB_JON_WAITFARE_USE', 'D');
  if GB_JON_WAITFARE_USE = 'D' then rbDefault.Checked := True else
  if GB_JON_WAITFARE_USE = 'L' then rbLocal.Checked := True else
  if GB_JON_WAITFARE_USE = 'S' then rbServer.Checked := True;
  rbLocalClick(Sender);

  dtpTime.Visible := False;
  dtpTime.Top  := cEdtTime.Top;
  dtpTime.Left := cEdtTime.Left;
end;

procedure TFrm_JON013.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON013.FormDestroy(Sender: TObject);
begin
  Frm_JON013 := nil;
end;

procedure TFrm_JON013.LoadData;
var
  i, Row : Integer;
  sTitle : String;
  ls_Rcrd : TStringList;
begin
  cxViewWaitFare.DataController.RecordCount := 0;
  cxViewWaitFare.BeginUpdate();
  try
    ls_Rcrd := TStringList.Create;
    if ( GB_JON_WAITFARE_USE = 'D' ) then
    begin
      for i := 0 to GS_WaitFareDefault.Count - 1 do
      begin
        if Trim(GS_WaitFareDefault.ValueFromIndex[i]) = '' then Continue;
        GetTextSeperationEx2('│', GS_WaitFareDefault.ValueFromIndex[i], ls_Rcrd);

        if ls_Rcrd[0] = '0' then sTitle := ls_Rcrd[1] + ' (분)까지 ['      + FormatFloat('#,##0', StrToFloat(ls_Rcrd[2])) + '원]' else
        if ls_Rcrd[0] = '1' then sTitle := ls_Rcrd[1] + ' (시간:분)까지 [' + FormatFloat('#,##0', StrToFloat(ls_Rcrd[2])) + '원]';

        Row := cxViewWaitFare.DataController.AppendRecord;
        cxViewWaitFare.DataController.Values[Row, 0] := GS_WaitFareDefault.Names[i];
        cxViewWaitFare.DataController.Values[Row, 1] := sTitle;
        cxViewWaitFare.DataController.Values[Row, 2] := ls_Rcrd[3];
        cxViewWaitFare.DataController.Values[Row, 3] := ls_Rcrd[0];
        cxViewWaitFare.DataController.Values[Row, 4] := ls_Rcrd[1];
        cxViewWaitFare.DataController.Values[Row, 5] := ls_Rcrd[2];
      end;
    end else
    begin
      for i := 0 to GS_WaitFareList.Count - 1 do
      begin
        if Trim(GS_WaitFareList.ValueFromIndex[i]) = '' then Continue;
        GetTextSeperationEx2('│', GS_WaitFareList.ValueFromIndex[i], ls_Rcrd);

        if ls_Rcrd[0] = '0' then sTitle := ls_Rcrd[1] + ' (분)까지 ['      + FormatFloat('#,##0', StrToFloat(ls_Rcrd[2])) + '원]' else
        if ls_Rcrd[0] = '1' then sTitle := ls_Rcrd[1] + ' (시간:분)까지 [' + FormatFloat('#,##0', StrToFloat(ls_Rcrd[2])) + '원]';

        Row := cxViewWaitFare.DataController.AppendRecord;
        cxViewWaitFare.DataController.Values[Row, 0] := GS_WaitFareList.Names[i];
        cxViewWaitFare.DataController.Values[Row, 1] := sTitle;
        cxViewWaitFare.DataController.Values[Row, 2] := ls_Rcrd[3];
        cxViewWaitFare.DataController.Values[Row, 3] := ls_Rcrd[0];
        cxViewWaitFare.DataController.Values[Row, 4] := ls_Rcrd[1];
        cxViewWaitFare.DataController.Values[Row, 5] := ls_Rcrd[2];
      end;
    end;
  finally
    FreeAndNil(ls_Rcrd);
  	cxViewWaitFare.EndUpdate();
  	ClearControll;
  end;
end;

procedure TFrm_JON013.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON013.rbLocalClick(Sender: TObject);
begin
  btnClear.Enabled := Not rbDefault.Checked;
  btnUpdate.Enabled := Not rbDefault.Checked;
  btnDelete.Enabled := Not rbDefault.Checked;

  if rbDefault.Checked then GB_JON_WAITFARE_USE := 'D' else
  if rbLocal.Checked   then GB_JON_WAITFARE_USE := 'L' else
  if rbServer.Checked  then
  begin
    btnClear.Enabled  := Not (GT_USERIF.LV = '10');    // 상담원은 저장 불가
    btnUpdate.Enabled := Not (GT_USERIF.LV = '10');
    btnDelete.Enabled := Not (GT_USERIF.LV = '10');

    GB_JON_WAITFARE_USE := 'S';
  end;
  GS_EnvFile.WriteString('COUNSEL', 'GB_JON_WAITFARE_USE', GB_JON_WAITFARE_USE);

  btnSearch.Click;
  pJON01_ReLoad;
end;

procedure TFrm_JON013.rbTypeAClick(Sender: TObject);
begin
  if TcxRadioButton(Sender).Name = 'rbTypeA' then
  begin
    cEdtTime.Visible := True;
    dtpTime.Visible := False;
  end else
  if TcxRadioButton(Sender).Name = 'rbTypeB' then
  begin
    cEdtTime.Visible := False;
    dtpTime.Visible := True;
  end;
end;

procedure TFrm_JON013.ClearControll;
begin
  rbTypeA.Checked := True;

  cxLblSeq.Tag := -1;

  cEdtTime.Value := 0;
  cEdtTime.Visible := True;

  dtpTime.Text := '00:00';
  dtpTime.Visible := False;

  cEdtFare.Value := 0;

  btnUpdate.Caption := '저장';
  btnDelete.Enabled := False;
end;

procedure TFrm_JON013.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_JON013.cxViewWaitFareDblClick(Sender: TObject);
var
  Row, i : Integer;
  sSelBtn : String;
  sTmp : TStringList;
begin
  if ( GB_JON_WAITFARE_USE = 'D' ) Or
     ( (GB_JON_WAITFARE_USE = 'S') And (GT_USERIF.LV = '10') ) then Exit;

  Row := cxViewWaitFare.DataController.FocusedRecordIndex;
  if Row < 0 then Exit;

  cxLblSeq.Tag := StrToIntDef(cxViewWaitFare.DataController.Values[Row, 0], 0);

  if cxViewWaitFare.DataController.Values[Row, 3] = '0' then
  begin
    rbTypeA.Checked := True;
    cEdtTime.Text := cxViewWaitFare.DataController.Values[Row, 4];
  end else
  if cxViewWaitFare.DataController.Values[Row, 3] = '1' then
  begin
    rbTypeB.Checked := True;
    dtpTime.Text := cxViewWaitFare.DataController.Values[Row, 4];
  end;
  cEdtFare.Value := cxViewWaitFare.DataController.Values[Row, 5];

  btnUpdate.Caption := '수정';
  btnDelete.Enabled := True;
end;

procedure TFrm_JON013.dtpTimeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    if cEdtFare.Canfocus then cEdtFare.SetFocus;
end;

procedure TFrm_JON013.edtBigoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_JON013.btnUpdateClick(Sender: TObject);
var
  i : Integer;
  Param, sKey : String;
begin
  if rbTypeA.Checked then
  begin
    if cEdtTime.Value = 0 then
    begin
      GMessagebox('대기시간을 입력해 주세요.', CDMSE);
      cEdtTime.SetFocus;
      Exit;
    end;
  end else
  if rbTypeB.Checked then
  begin
    if dtpTime.Text = '00:00' then
    begin
      GMessagebox('대기시간을 입력해 주세요.', CDMSE);
      dtpTime.SetFocus;
      Exit;
    end;
  end;

  if cEdtFare.Value = 0 then
  begin
    GMessagebox('대기요금을 입력해 주세요.', CDMSE);
    cEdtFare.SetFocus;
    Exit;
  end;

  if cxLblSeq.Tag = -1 then
  begin
    // '0│30│5000│system/system'
    if rbTypeA.Checked then
    begin
      Param := '0';
      Param := Param + '│' + cEdtTime.Text;
    end else
    if rbTypeB.Checked then
    begin
      Param := '1';
      Param := Param + '│' + dtpTime.Text;
    end;

    Param := Param + '│' + FloatToStr(cEdtFare.Value);
    sKey  := Param;
    Param := Param + '│' + GT_USERIF.ID + '/' + GT_USERIF.NM;

    for i := 0 to GS_WaitFareList.Count - 1 do
    begin
      if Pos(sKey, GS_WaitFareList.ValueFromIndex[i]) > 0 then
      begin
        GMessagebox('이미 등록된 대기요금입니다.', CDMSE);
        Exit;
      end;
    end;

    GS_WaitFareList.Add(IntToStr(GS_WaitFareList.Count+1) + '=' + Param);
  end else
  begin
    // '1│00:30│5000│system/system'
    if rbTypeA.Checked then
    begin
      Param := '0';
      Param := Param + '│' + cEdtTime.Text;
    end else
    if rbTypeB.Checked then
    begin
      Param := '1';
      Param := Param + '│' + dtpTime.Text;
    end;

    Param := Param + '│' + FloatToStr(cEdtFare.Value);
    Param := Param + '│' + GT_USERIF.ID + '/' + GT_USERIF.NM;

    for i := 0 to GS_WaitFareList.Count - 1 do
    begin
      if GS_WaitFareList.Names[i] = IntToStr(cxLblSeq.Tag) then
      begin
        GS_WaitFareList.ValueFromIndex[i] := Param;
        Break;
      end;
    end;
  end;

  if rbLocal.Checked then pLocSaveWaitFare else
  if rbServer.Checked then pSvrSaveWaitFare;
  pJON01_ReLoad;
  LoadData;
end;

procedure TFrm_JON013.cEdtFareKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    if btnUpdate.Canfocus then btnUpdate.SetFocus;
end;

procedure TFrm_JON013.btnDeleteClick(Sender: TObject);
var
  i : Integer;
  sSeq : string;
begin
  if Application.MessageBox(PChar('선택항목을 삭제할까요?'), CDMSI, MB_YESNO +
    MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then
  begin
    Exit;
  end;

  sSeq := IntToStr(cxLblSeq.Tag);

  for I := 0 to GS_WaitFareList.Count - 1 do
  begin
    if GS_WaitFareList.Names[i] = sSeq then
    begin
      GS_WaitFareList.Delete(i);
      Break;
    end;
  end;

  if rbLocal.Checked then pLocSaveWaitFare else
  if rbServer.Checked then pSvrSaveWaitFare;
  pJON01_ReLoad;
  LoadData;
end;

procedure TFrm_JON013.btnSearchClick(Sender: TObject);
begin
  if rbDefault.Checked then pDefLoadWaitFare else
  if rbLocal.Checked then pLocLoadWaitFare else
  if rbServer.Checked then pSvrLoadWaitFare(GT_USERIF.CT);
  LoadData;
end;

procedure TFrm_JON013.btnClearClick(Sender: TObject);
begin
  ClearControll;
end;

procedure TFrm_JON013.pJON01_ReLoad;
Var i : Integer;
begin
  try
    // 접수창의 상용구 목록 재로드
    for i := 0 to JON_MAX_CNT - 1 do
    begin
      if Assigned(Frm_Main.Frm_JON01N[i]) then
        Frm_Main.Frm_JON01N[i].Proc_WTRCreate;
    end;
  except

  end;
end;

end.

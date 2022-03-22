unit xe_JON017;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel, cxGroupBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxTextEdit,
  Vcl.ExtCtrls, dxSkinsCore, dxSkinscxPCPainter, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  TFrm_JON017 = class(TForm)
    pnl1: TPanel;
    lbl2: TcxLabel;
    edtBigo: TcxTextEdit;
    edtDesc: TcxTextEdit;
    lbl5: TcxLabel;
    btnUpdate: TcxButton;
    btnDelete: TcxButton;
    btnClear: TcxButton;
    cxGridUserEtc: TcxGrid;
    cxViewUserEtc: TcxGridDBTableView;
    cxColView1Column1: TcxGridDBColumn;
    cxColView1Column6: TcxGridDBColumn;
    cxLevelUserEtc: TcxGridLevel;
    pnlTitle: TPanel;
    cxButton1: TcxButton;
    PnlMain: TPanel;
    cxButton2: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxLblActive: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnClearClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure cxViewUserEtcDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtBigoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure LoadData;
    procedure ClearControll;
  public
    { Public declarations }
  end;

var
  Frm_JON017: TFrm_JON017;

implementation



{$R *.dfm}

uses xe_GNL, xe_Func, xe_Msg, xe_JON15, xe_Lib;

procedure TFrm_JON017.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to cxViewUserEtc.ColumnCount - 1 do
    cxViewUserEtc.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
end;

procedure TFrm_JON017.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := False;
end;

procedure TFrm_JON017.FormDestroy(Sender: TObject);
begin
  Frm_JON017 := nil;
end;

procedure TFrm_JON017.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON017, GS_FONTNAME);
  fSetSkin(Frm_JON017);
  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);
  LoadData;
end;

procedure TFrm_JON017.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON017.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_JON017.btnClearClick(Sender: TObject);
begin
  ClearControll;
end;

procedure TFrm_JON017.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_JON017.LoadData;
var
  I, Row: Integer;
begin
  cxViewUserEtc.DataController.RecordCount := 0;
  for I := 0 to GS_UserCancelEtc.Count - 1 do
  begin
    Row := cxViewUserEtc.DataController.AppendRecord;
    cxViewUserEtc.DataController.Values[Row, 0] := GS_UserCancelEtc.Names[I];
    cxViewUserEtc.DataController.Values[Row, 1] := GS_UserCancelEtc.ValueFromIndex[I];
  end;

  ClearControll;
end;

procedure TFrm_JON017.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON017.ClearControll;
begin
  edtBigo.Clear;
  edtDesc.Clear;

  edtBigo.Enabled := True;
  edtBigo.SetFocus;
  btnUpdate.Caption := '저장';
  btnDelete.Enabled := False;
end;

procedure TFrm_JON017.btnUpdateClick(Sender: TObject);
var
  Bigo, Desc: string;
begin
	if Not func_EucKr_Check(edtBigo, 0) then Exit;
	if Not func_EucKr_Check(edtDesc, 0) then Exit;

  Bigo := edtBigo.Text;
  Desc := edtDesc.Text;

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

  if (edtBigo.Enabled and (GS_UserCancelEtc.Values[Bigo] <> '')) then
  begin
    if Application.MessageBox(PChar('이미 등록된 사용구 입니다. 입력문구를 변경할까요?'), CDMSI, MB_YESNO +
      MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
    begin
      Exit;
    end;
  end;

  if GS_UserCancelEtc.Values[Bigo] = '' then
    GS_UserCancelEtc.Add(Bigo + '=' + Desc)
  else
    GS_UserCancelEtc.Values[edtBigo.Text] := edtDesc.Text;

  SaveUserCancelEtc;

  frm_JON15.LoadUserEtc;

  LoadData;
end;

procedure TFrm_JON017.btnDeleteClick(Sender: TObject);
var
  I, Row: Integer;
  Bigo: string;
begin
  Row := cxViewUserEtc.DataController.FocusedRecordIndex;

  if Application.MessageBox(PChar('선택항목을 삭제할까요?'), CDMSI, MB_YESNO +
    MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then
  begin
    Exit;
  end;

  Bigo := cxViewUserEtc.DataController.Values[Row, 0];

  for I := 0 to GS_UserCancelEtc.Count - 1 do
  begin
    if GS_UserCancelEtc.Names[I] = Bigo then
    begin
      GS_UserCancelEtc.Delete(I);
      Break;
    end;
  end;

  SaveUserCancelEtc;

  frm_JON15.LoadUserEtc;

  LoadData;
end;

procedure TFrm_JON017.cxViewUserEtcDblClick(Sender: TObject);
var
  Row: Integer;
begin
  Row := cxViewUserEtc.DataController.FocusedRecordIndex;

  edtBigo.Text := cxViewUserEtc.DataController.Values[Row, 0];
  edtDesc.Text := cxViewUserEtc.DataController.Values[Row, 1];

  edtBigo.Enabled := False;
  btnUpdate.Caption := '수정';
  btnDelete.Enabled := True;
end;

procedure TFrm_JON017.edtBigoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

end.

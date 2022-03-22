unit xe_CUT03;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, cxTextEdit,
  cxControls, cxContainer, cxEdit, cxLabel, GradientLabel, cxGraphics,
  cxMaskEdit, cxDropDownEdit, xe_structure, xe_dm, xe_func,
  cxLookAndFeels, Vcl.ExtCtrls, cxGroupBox, AdvProgressBar, dxSkinsCore, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark,
  dxSkinOffice2007Silver;

type
  TFrm_CUT03 = class(TForm)
    cxLabel7: TcxLabel;
    edtKeyNum: TcxTextEdit;
    cxLabel1: TcxLabel;
    edtCustCount: TcxTextEdit;
    cxLabel2: TcxLabel;
    cbbCustLevel: TcxComboBox;
    btnCustLevel: TcxButton;
    PnlTitle: TPanel;
    BtnClose: TcxButton;
    PnlMain: TPanel;
    cxGroupBox1: TcxGroupBox;
    Shape3: TShape;
    Shape1: TShape;
    Shape2: TShape;
    pgbCustLevel: TAdvProgressBar;
    cxLblActive: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnCustLevelClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FBrNo, FKeyNum: string;
    FCustList: TStringList;
    FOnRefreshEvent: TNotifyEvent;

    SCboLevelSeq : TStringList;

    function ExecCustLevelChange(ABrNo, ABrTel, ALevelCD: string; AList: TStringList; var AErrCode: Integer; var AErrMsg: string): Boolean;
    function GetCustLevelSeq: string;
  public
    { Public declarations }
    procedure SetData(ABrNo, AKeyNum: string);
    procedure AddCustSeq(ACustSeq: string);
    procedure DispData;
    property OnRefreshEvent: TNotifyEvent read FOnRefreshEvent write FOnRefreshEvent;
  end;

var
  Frm_CUT03: TFrm_CUT03;

implementation


{$R *.dfm}

uses Main, xe_GNL, xe_gnl2, xe_gnl3, xe_Msg, xe_packet, xe_xml, xe_Lib;

procedure TFrm_CUT03.FormCreate(Sender: TObject);
var
  Save: LongInt; // 폼타이틀 제거용.
begin
  FCustList := TStringList.Create;
  SCboLevelSeq := TStringList.Create;

  // 폼 타이틀 제거..
  if BorderStyle = bsNone then
    Exit;
  Save := GetWindowLong(Handle, gwl_Style);
  if (Save and ws_Caption) = ws_Caption then
  begin
    case BorderStyle of
      bsSingle:
        SetWindowLong(Handle, gwl_Style, Save and (not (ws_Caption)) or ws_border);
    end;
    Height := Height - getSystemMetrics(sm_cyCaption);
    Refresh;
  end;
end;

procedure TFrm_CUT03.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_CUT03.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FCustList);
  FreeAndNil(SCboLevelSeq);
  Action := caFree;
end;

procedure TFrm_CUT03.AddCustSeq(ACustSeq: string);
begin
  FCustList.Add(ACustSeq);
end;

procedure TFrm_CUT03.SetData(ABrNo, AKeyNum: string);
var
  I : Integer;
  CustGroup : TCustGroup;
begin
  FCustList.Clear;

  FBrNo := ABrNo;
  FKeyNum := AKeyNum;
  btnCustLevel.Enabled := False;

  GetCustGroup(FKeyNum, CustGroup);

  SCboLevelSeq.Clear;
  cbbCustLevel.Properties.Items.Clear;
  cbbCustLevel.Properties.Items.Add('변경하실 고객등급을 선택해 주세요.');
  SCboLevelSeq.Add('');
  for i := 0 to Length(CustGroup.LevelInfo) - 1 do
  begin
    cbbCustLevel.Properties.Items.Add(Format('%s - %s', [CustGroup.GroupName, CustGroup.LevelInfo[i].LevelName]));
    SCboLevelSeq.Add(CustGroup.LevelInfo[i].LevelSeq);
  end;
end;

procedure TFrm_CUT03.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_CUT03.FormDestroy(Sender: TObject);
begin
  FCustList.Free;
  Frm_CUT03 := nil;
end;

procedure TFrm_CUT03.FormShow(Sender: TObject);
begin
  fSetFont(Frm_CUT03, GS_FONTNAME);
end;

procedure TFrm_CUT03.DispData;
begin
  edtKeyNum.Text := strtocall(FKeyNum);
  edtCustCount.Text := IntToStr(FCustList.Count);
  cbbCustLevel.ItemIndex := 0;
  pgbCustLevel.Position := 0;
  pgbCustLevel.Max := FCustList.Count;
  btnCustLevel.Enabled := True;
end;

procedure TFrm_CUT03.btnCustLevelClick(Sender: TObject);
const
  _SPLIT_COUNT = 1000;
var
  I: Integer;
  List: TStringList;
  ErrCode: Integer;
  ErrMsg: string;
  Msg: string;
begin
  if cbbCustLevel.ItemIndex = 0 then
  begin
    GMessageBox('변경하실 고객등급을 선택해 주세요.', CDMSE);
    cbbCustLevel.SetFocus;
    Exit;
  end;

  List := TStringList.Create;
  try
    for I := 0 to FCustList.Count - 1 do
    begin
      List.Add(FCustList[I]);
      if List.Count = _SPLIT_COUNT then
      begin
        if not ExecCustLevelChange(FBrNo, FKeyNum, GetCustLevelSeq, List, ErrCode, ErrMsg) then
        begin
          Msg := Msg + #13#10 + Format('[에러코드: %d] %s', [ErrCode, ErrMsg]);
        end;
        pgbCustLevel.Position := pgbCustLevel.Position + List.Count;
        List.Clear;
        Application.ProcessMessages;
      end;
    end;
    if (List.Count > 0) and (not ExecCustLevelChange(FBrNo, FKeyNum, GetCustLevelSeq, List, ErrCode, ErrMsg)) then
    begin
      Msg := Msg + #13#10 + Format('[에러코드: %d] %s', [ErrCode, ErrMsg]);
    end;
    pgbCustLevel.Position := pgbCustLevel.Position + List.Count;
    List.Clear;
    Application.ProcessMessages;
  finally
    List.Free;
  end;

  if Msg <> '' then
  begin
    GMessageBox(Format('고객등급 변경 중 오류가 발생했습니다.'#13#10'%s', [Msg]), CDMSE);
  end
  else
  begin
    if Assigned(FOnRefreshEvent) then
      FOnRefreshEvent(nil);
    Close;
  end;
end;

procedure TFrm_CUT03.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

function TFrm_CUT03.ExecCustLevelChange(ABrNo, ABrTel, ALevelCD: string;
  AList: TStringList; var AErrCode: Integer; var AErrMsg: string): Boolean;
var
  I: Integer;
  XmlData, Param: string;
begin
  Result := False;

  if AList.Count = 0 then Exit;

  Param := Format('%s│%s│%s│%d', [ABrTel, ABrNo, ALevelCD, AList.Count]);

  for I := 0 to AList.Count - 1 do
    Param := Param + '│' + AList[I];

  if not RequestBase(GetCallable05('CuUpdate', 'cust_level.cu_update', Param), XmlData, AErrCode, AErrMsg) then
    Exit;

  Result := True;
end;

function TFrm_CUT03.GetCustLevelSeq: string;
begin
  Result := '';

  if cbbCustLevel.ItemIndex > 0 then
    Result := SCboLevelSeq[cbbCustLevel.itemindex];
end;

procedure TFrm_CUT03.PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

end.

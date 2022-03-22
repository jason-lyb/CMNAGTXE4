unit xe_CUT02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, MSXML2_TLB,
  Dialogs, xe_structure, cxGraphics, cxLookAndFeels, System.Math, System.StrUtils,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit,
  Vcl.ExtCtrls, cxGroupBox, Vcl.StdCtrls, cxRadioGroup, cxCheckBox,
  cxCurrencyEdit, cxTextEdit, cxLabel, cxButtons, dxSkinsCore, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_CUT02 = class(TForm)
    btnEdit: TcxButton;
    cxLabel1: TcxLabel;
    edtLevelName: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    edtOrderBy: TcxTextEdit;
    lblMID: TLabel;
    ColorDialog1: TColorDialog;
    lblLevelColor: TcxLabel;
    btnSelColor: TcxButton;
    edtLevelMileage: TcxCurrencyEdit;
    btnClear: TcxButton;
    edtCancelRate: TcxCurrencyEdit;
    edtSuccCnt: TcxCurrencyEdit;
    chkUseAutoUp: TcxCheckBox;
    cxLabel7: TcxLabel;
    chkDefault: TcxCheckBox;
    rbMilePay: TcxRadioButton;
    rbMileRate: TcxRadioButton;
    lblMileUnit: TLabel;
    edtGroupName: TcxTextEdit;
    btnGroupModify: TcxButton;
    PnlTitle: TPanel;
    cxButton7: TcxButton;
    PnlMain: TPanel;
    cxGroupBox1: TcxGroupBox;
    Shape8: TShape;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    cxLblActive: TLabel;
    cxChkOneYear: TcxCheckBox;
    cxGroupBox2: TcxGroupBox;
    cxLabel8: TcxLabel;
    Shape9: TShape;
    Shape10: TShape;
    Label6: TcxLabel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    procedure btnSelColorClick(Sender: TObject);
    procedure edtOrderByKeyPress(Sender: TObject; var Key: Char);
    procedure btnClearClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEditClick(Sender: TObject);
    procedure chkUseAutoUpClick(Sender: TObject);
    procedure rbMilePayClick(Sender: TObject);
    procedure rbMileRateClick(Sender: TObject);
    procedure btnGroupModifyClick(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edtGroupNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FBrNo: string;
    FGroupSeq, FLevelSeq: string;
    FOnRefreshEvent: TNotifyEvent;

    procedure InitCtrls;
    function ValidationCheck: Boolean;

    function RequestSetLevelGroup(AGroupName: string; var AGroupSeq: string; AErrCode: Integer; AErrMsg: string): Boolean; overload;
    function RequestSetLevelGroup(AGroupName: string; var AErrCode: Integer; AErrMsg: string): Boolean; overload;
    function RequestGetCustLevel(ABrNo, AGroupSeq, ALevelSeq: string; var AData: TCustLevelInfoRec; var AErrCode: Integer; var AErrMsg: string): Boolean;
    function RequestSetCustLevel(AData: TCustLevelInfoRec; var AErrCode: Integer; var AErrMsg: string): Boolean;
  public
    { Public declarations }
    procedure SetData(ABrNo, AGroupName, AGroupSeq: string; AOneYear : Boolean; ALevelSeq: string = '');
    property OnRefreshEvent: TNotifyEvent read FOnRefreshEvent write FOnRefreshEvent;
  end;

var
  Frm_CUT02: TFrm_CUT02;

implementation


{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Msg, xe_packet, xe_xml;


procedure TFrm_CUT02.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := False;
end;

procedure TFrm_CUT02.FormDestroy(Sender: TObject);
begin
  Frm_CUT02 := nil;
end;

procedure TFrm_CUT02.FormShow(Sender: TObject);
begin
  fSetFont(Frm_CUT02, GS_FONTNAME);
end;

procedure TFrm_CUT02.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_CUT02.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FGroupSeq := '';
  FLevelSeq := '';

  Action := caFree;
end;

procedure TFrm_CUT02.PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

function TFrm_CUT02.RequestSetLevelGroup(AGroupName: string;
  var AErrCode: Integer; AErrMsg: string): Boolean;
var
  Tmp: string;
begin
  Result := RequestSetLevelGroup(AGroupName, Tmp, AErrCode, AErrMsg);
end;

function TFrm_CUT02.RequestSetLevelGroup(AGroupName: string;
  var AGroupSeq: string; AErrCode: Integer; AErrMsg: string): Boolean;
var
  XmlData, Param: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
begin
  Result := False;

  if FGroupSeq = '' then
  begin
    if cxChkOneYear.Checked then
      Param := FBrNo + '│' + AGroupName + '│y'
    else
      Param := FBrNo + '│' + AGroupName + '│n';

    if not RequestBase(GetCallable05('GETCULVITEM', 'cust_level.group_insert', Param), XmlData, AErrCode, AErrMsg) then
      Exit;

    xdom := ComsDomDocument.Create;
    try
      xdom.loadXML(XmlData);
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      AGroupSeq := lst_Result.item[0].attributes.getNamedItem('Value').Text;
    finally
      xdom := Nil;
    end;
  end else
  begin
    if cxChkOneYear.Checked then
      Param := FGroupSeq + '│' + AGroupName + '│y'
    else
      Param := FGroupSeq + '│' + AGroupName + '│n';

    if not RequestBase(GetCallable05('GETCULVITEM', 'cust_level.group_update', Param), XmlData, AErrCode, AErrMsg) then
      Exit;
  end;

  Result := True;
end;

function TFrm_CUT02.RequestGetCustLevel(ABrNo, AGroupSeq, ALevelSeq: string; var AData: TCustLevelInfoRec; var AErrCode: Integer; var AErrMsg: string): Boolean;
var
  XmlData, Param: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
begin
  Result := False;

  Param := FGroupSeq+'│'+FLevelSeq;

  if not RequestBase(GetSel05('GETCULVITEM', 'cust_level.lv_select', '100', Param), XmlData, AErrCode, AErrMsg) then
    Exit;

  xdom := ComsDomDocument.Create;
  xdom.loadXML(XmlData);
  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
  ls_Rcrd := TStringList.Create;
  try
    GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);

    AData.GrpName     := ls_Rcrd[0];
    AData.OrderBy     := StrToIntDef(ls_Rcrd[1], 0);
    AData.Name        := ls_Rcrd[2];

    if StrToIntDef(ls_Rcrd[3], 0) > 100 then
      AData.MileType    := mtPayment
    else
      AData.MileType    := mtRate;
    AData.Mileage     := StrToIntDef(ls_Rcrd[3], 0);
    AData.Color       := Hex6ToColor(ls_Rcrd[4]);
    AData.FinCnt      := StrToIntDef(ls_Rcrd[5], 0);
    AData.CancelRate  := StrToIntDef(ls_Rcrd[6], 0);
    AData.AutoUp      := UpperCase(ls_Rcrd[7]) = 'Y';
    AData.Default     := UpperCase(ls_Rcrd[8]) = 'Y';
    AData.OneYear     := UpperCase(ls_Rcrd[11]) = 'Y';
    Result := True;
  finally
    ls_Rcrd.Free;
    xdom := Nil;
  end;
end;

function TFrm_CUT02.RequestSetCustLevel(AData: TCustLevelInfoRec;
  var AErrCode: Integer; var AErrMsg: string): Boolean;
var
  SendData, XmlData,
  Param, Key: string;
begin
  Result := False;

  try
    if FLevelSeq = '' then
    begin
      Key := 'cust_level.lv_insert';
      Param := FGroupSeq+'│'+AData.Name+'│'+IntToStr(AData.Mileage)+'│'+ColorToHex6(AData.Color)+'│'
                + IntToStr(AData.FinCnt)+'│'+IntToStr(AData.CancelRate)+'│'+IntToStr(AData.OrderBy)+'│'
                + IfThen(AData.AutoUp, 'y', 'n') + '│' + IfThen(AData.Default, 'y', 'n');
    end else
    begin
      Key := 'cust_level.lv_update';
      Param := FLevelSeq+'│'+AData.Name+'│'+IntToStr(AData.Mileage)+'│'+ColorToHex6(AData.Color)+'│'
                + IntToStr(AData.FinCnt)+'│'+IntToStr(AData.CancelRate)+'│'+IntToStr(AData.OrderBy)+'│'
                + IfThen(AData.AutoUp, 'y', 'n') + '│' + IfThen(AData.Default, 'y', 'n');
    end;

    SendData := GetCallable05('SetCustLevelItem', Key, Param);

    if not RequestBase(SendData, XmlData, AErrCode, AErrMsg) then
      Exit;

    Result := True;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_CUT02.InitCtrls;
begin
  chkDefault.Checked := False;
  edtOrderBy.Clear;
  edtLevelName.Clear;
  edtLevelMileage.Clear;
  lblLevelColor.Style.Color := clWhite;
  lblLevelColor.Caption := 'FFFFFF';
  chkUseAutoUp.Checked := True;
  edtSuccCnt.Clear;
  edtCancelRate.Clear;
  edtSuccCnt.Enabled := True;
  edtCancelRate.Enabled := True;

  btnEdit.Caption := IfThen(FLevelSeq = '', '신규등록', '정보수정');
end;

procedure TFrm_CUT02.SetData(ABrNo, AGroupName, AGroupSeq: String; AOneYear : Boolean; ALevelSeq: string);
var
  ErrCode: Integer;
  ErrMsg: string;
  Data: TCustLevelInfoRec;
begin
  FBrNo := ABrNo;
  FGroupSeq := AGroupSeq;
  FLevelSeq := ALevelSeq;

  InitCtrls;

  chkDefault.Checked := (FGroupSeq = '');
  btnGroupModify.Visible := (FGroupSeq <> '');

  if FGroupSeq = '' then
  begin
    PnlTitle.Caption := '고객등급그룹 추가';
    ShowMessage('고객등급 그룹명을 입력 하시고 기본등급으로 사용할 등급정보도 함께 등록바랍니다.');

  end else
  begin
    PnlTitle.Caption := '고객등급 설정';
    edtGroupName.Text := AGroupName;
    cxChkOneYear.Checked := AOneYear;
  end;

  if FLevelSeq <> '' then
  begin
    if not RequestGetCustLevel(FBrNo, FGroupSeq, FLevelSeq, Data, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('고객등급 조회에 실패했습니다. 다시시도 바랍니다.'#13#10'[%d] %s', [ErrCode, ErrMsg]), CDMSE);
      Close;
    end;

    edtGroupName.Text := Data.GrpName;
    edtOrderBy.Text := IntToStr(Data.OrderBy);
    chkDefault.Checked := Data.Default;
    edtLevelName.Text := Data.Name;
    rbMilePay.Checked := Data.MileType = mtPayment;
    rbMileRate.Checked := Data.MileType = mtRate;
    edtLevelMileage.Value := Data.Mileage;
    lblLevelColor.Caption := ColorToHex6(Data.Color);
    lblLevelColor.Style.Color := Data.Color;
    chkUseAutoUp.Checked := Data.AutoUp;
    edtSuccCnt.Value := Data.FinCnt;
    edtCancelRate.Value := Data.CancelRate;
    cxChkOneYear.Checked := Data.OneYear;
  end;
end;

procedure TFrm_CUT02.btnSelColorClick(Sender: TObject);
begin
  ColorDialog1.Color := lblLevelColor.Style.Color;
  if ColorDialog1.Execute then
  begin
    lblLevelColor.Style.Color := ColorDialog1.Color;
    lblLevelColor.Caption := ColorToHex6(ColorDialog1.Color);
  end;
end;

procedure TFrm_CUT02.chkUseAutoUpClick(Sender: TObject);
begin
  edtSuccCnt.Enabled := chkUseAutoUp.Checked Or cxChkOneYear.Checked;
  edtCancelRate.Enabled := chkUseAutoUp.Checked Or cxChkOneYear.Checked;
end;

procedure TFrm_CUT02.cxButton7Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_CUT02.edtGroupNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_CUT02.edtOrderByKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in [#8, '0'..'9']) then
    Key := #0;
end;

procedure TFrm_CUT02.btnClearClick(Sender: TObject);
begin
  FLevelSeq := '';
  InitCtrls;
end;

procedure TFrm_CUT02.btnEditClick(Sender: TObject);
var
  ErrCode: Integer;
  ErrMsg, GroupSeq: string;
  Data: TCustLevelInfoRec;
begin
  // 필수입력 확인
  if not ValidationCheck then
    Exit;

  Data.OrderBy := StrToIntDef(edtOrderBy.Text, 0);
  Data.Default := chkDefault.Checked;
  Data.Name := edtLevelName.Text;
  if rbMilePay.Checked then
    Data.MileType := mtPayment
  else
    Data.MileType := mtRate;
  Data.Mileage := Trunc(edtLevelMileage.Value);
  Data.Color := lblLevelColor.Style.Color;
  Data.AutoUp := chkUseAutoUp.Checked;

  Data.FinCnt := Trunc(edtSuccCnt.Value);
  Data.CancelRate := Trunc(edtCancelRate.Value);

  if FGroupSeq = '' then
  begin
    if not RequestSetLevelGroup(edtGroupName.Text, GroupSeq, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('고객등급 저장에 실패했습니다. 다시시도 바랍니다.'#13#10'[%d] %s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;
    FGroupSeq := GroupSeq;
  end;

  if not RequestSetCustLevel(Data, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('고객등급 저장에 실패했습니다. 다시시도 바랍니다.'#13#10'[%d] %s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

  if Assigned(FOnRefreshEvent) then
    FOnRefreshEvent(nil);

  GMessageBox('저장하였습니다.'+IfThen(ErrMsg <> '', #13#10+ErrMsg, ''), CDMSI);
  Close;
end;

function TFrm_CUT02.ValidationCheck: Boolean;
begin
  Result := False;

  if (edtGroupName.Enabled) and (edtGroupName.Text = '') then
  begin
    ShowMessage('그룹명을 입력해 주세요.');
    Exit;
  end;

  if not (StrToIntDef(edtOrderBy.Text, -1) in [0..99]) then
  begin
    ShowMessage('등급번호를 정확히(0~99) 입력해 주세요.');
    edtOrderBy.SetFocus;
    Exit;
  end;

  if edtLevelName.Text = '' then
  begin
    ShowMessage('고객등급명을 입력해 주세요.');
    edtLevelName.SetFocus;
    Exit;
  end;

  Result := True;
end;

procedure TFrm_CUT02.rbMilePayClick(Sender: TObject);
begin
  lblMileUnit.Caption := '원';
  edtLevelMileage.Properties.MaxValue := 10000;
end;

procedure TFrm_CUT02.rbMileRateClick(Sender: TObject);
begin
  lblMileUnit.Caption := '%';
  edtLevelMileage.Properties.MaxValue := 100;
end;

procedure TFrm_CUT02.btnGroupModifyClick(Sender: TObject);
var
  ErrCode: Integer;
  ErrMsg: string;
begin
  if edtGroupName.Text = '' then
  begin
    GMessageBox('변경하실 그룹명을 입력해주세요.', CDMSE);
    Exit;
  end;

  if not RequestSetLevelGroup(edtGroupName.Text, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('고객그룹명 변경에 실패했습니다. 다시시도 바랍니다.'#13#10'[%d] %s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

  if Assigned(FOnRefreshEvent) then
    FOnRefreshEvent(nil);

  GMessageBox('변경하였습니다.', CDMSI);
end;

end.

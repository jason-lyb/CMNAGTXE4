unit xe_COM50;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  cxControls, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxGroupBox, dxSkinsCore, dxSkinscxPCPainter, cxRadioGroup,
  cxSpinEdit, cxMemo, dxGDIPlusClasses, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_COM50 = class(TForm)
    pnlTitle: TPanel;
    btnClose: TcxButton;
    cxLblActive: TLabel;
    pnlRQPopup: TPanel;
    Shape1: TShape;
    cxLabel1: TcxLabel;
    lblRQStart: TcxLabel;
    lblRQStartAddr: TcxLabel;
    pnlVia: TPanel;
    Shape3: TShape;
    cxLabel2: TcxLabel;
    lblRQVia: TcxLabel;
    pnlRQBtm: TPanel;
    Shape6: TShape;
    Image1: TImage;
    edtPMemo: TcxMemo;
    curPRate: TcxSpinEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    lblPRateA: TcxLabel;
    lblRQEnd: TcxLabel;
    lblRQEndAddr: TcxLabel;
    lblRQRate: TcxLabel;
    LbmeoPBigo: TcxLabel;
    btnPRateAnswer: TcxButton;
    btnPRateClose: TcxButton;
    lblRQNm: TcxLabel;
    lblQTime: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    pnlAutoClose: TPanel;
    cxLabel8: TcxLabel;
    Timer1: TTimer;
    cxLabel9: TcxLabel;
    lblDistance: TcxLabel;
    lblVDistance: TcxLabel;
    cxLabel10: TcxLabel;
    lblRQCorpNm: TcxLabel;
    cxLabel12: TcxLabel;
    lblRQCorpDepNm: TcxLabel;
    cxLabel11: TcxLabel;
    lblRQbrKeynum: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnPRateAnswerClick(Sender: TObject);
    procedure btnPRateCloseClick(Sender: TObject);
    procedure curPRateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure curPRatePropertiesChange(Sender: TObject);
    procedure LbmeoPBigoClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure edtPMemoEnter(Sender: TObject);
    procedure edtPMemoExit(Sender: TObject);
  private
    { Private declarations }
    procedure Proc_Init;
  public
    { Public declarations }
  end;

var
  Frm_COM50: TFrm_COM50;

implementation

{$R *.dfm}

uses xe_Func, xe_GNL, Main, xe_Msg, xe_JON01Share;

procedure TFrm_COM50.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_COM50.LbmeoPBigoClick(Sender: TObject);
begin
  edtPMemo.SetFocus;
end;

procedure TFrm_COM50.btnPRateAnswerClick(Sender: TObject);
Var vQ_Rate : TQ_Rate;
begin
  if Trim(lblRQStart.Hint) = '' then
  begin
  	GMessagebox('답변할 요금을 선택하세요.', CDMSE);
    Exit;
  end;

//  if Trim(lblRateE.Hint) = GT_USERIF.ID then
//  begin
//  	GMessagebox('동일 사용자의 질문은 답변할수 없습니다.', CDMSE);
//    Exit;
//  end;

  vQ_Rate.cmd := '603';
  vQ_Rate.rkey := lblRQStart.Hint;
  vQ_Rate.uid  := lblRQVia.Hint;
  vQ_Rate.unm :=  '';
  vQ_Rate.brKeyNum := '';
  vQ_Rate.CorpNm := '';
  vQ_Rate.CorpDepNm := '';
  vQ_Rate.sta :=  '';
  vQ_Rate.staddr := '';
  vQ_Rate.via := '';
  vQ_Rate.eda := '';
  vQ_Rate.edaddr := '';
  vQ_Rate.distance := '';
  vQ_Rate.rate := '';
  vQ_Rate.qtm := '';
  vQ_Rate.aid := GT_USERIF.ID;
  vQ_Rate.anm := GT_USERIF.NM;
  vQ_Rate.arate := IntToStr(curPRate.Value);
  if LbmeoPBigo.Visible then vQ_Rate.amsg := LbmeoPBigo.Caption
                       else vQ_Rate.amsg := edtPMemo.Text;
  vQ_Rate.atm := FormatDateTime('YYYY-MM-DD HH:NN:SS', Now);

  pSet603QRateAnswer(vQ_Rate);
  Close;
end;

procedure TFrm_COM50.btnPRateCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_COM50.curPRateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Ord(Key) = VK_RETURN then
  begin
    if (curPRate.Value > 0) and (curPRate.Value < 1000) then
    begin
      curPRate.Value := curPRate.Value * 1000;
    end;

    if btnPRateAnswer.CanFocus then btnPRateAnswer.Click;
  end;
end;

procedure TFrm_COM50.curPRatePropertiesChange(Sender: TObject);
Var iRate : Integer;
begin
  iRate := StrToInt(StringReplace(lblRQRate.Caption,',','',[rfReplaceAll]));
  if iRate = 0 then
  begin
    LbmeoPBigo.Caption := Format('[%s]받으세요!', [FormatFloat('#,', curPRate.Value)]);
  end else
  if iRate = curPRate.Value then
  begin
    LbmeoPBigo.Caption := '딱! 맞아요! 그대로 받으세요!';
  end else
  if iRate > curPRate.Value then
  begin
    LbmeoPBigo.Caption := Format('[%s]이면 적당해요!', [FormatFloat('#,', curPRate.Value)]);
  end else
  if iRate < curPRate.Value then
  begin
    LbmeoPBigo.Caption := Format('해당지역은 [%s]으로 받아야 해요!', [FormatFloat('#,', curPRate.Value)]);
  end;
end;

procedure TFrm_COM50.edtPMemoEnter(Sender: TObject);
begin
  LbmeoPBigo.Visible := False;
end;

procedure TFrm_COM50.edtPMemoExit(Sender: TObject);
begin
  lbmeoPBigo.Visible := (edtPMemo.Text = '');
end;

procedure TFrm_COM50.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_COM50.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Frm_Main.COM50MNG[Self.Tag].CreateYN := False;
  Action := caFree;
end;

procedure TFrm_COM50.FormCreate(Sender: TObject);
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
    end;
    Height := Height - getSystemMetrics(sm_cyCaption);
    Refresh;
  end;
  proc_init;
end;

procedure TFrm_COM50.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_COM50.FormDestroy(Sender: TObject);
begin
  Frm_COM50 := nil;
  Frm_Main.Frm_COM50[Self.Tag] := nil;
end;

procedure TFrm_COM50.Proc_Init;
begin
  lblRQNm.Caption := '';
  lblQTime.Caption := '';
  lblRQbrKeynum.Caption := '';
  lblRQCorpNm.Caption := '';
  lblRQCorpDepNm.Caption := '';
  lblRQStart.Hint := '';
  lblRQStart.Caption := '';
  lblRQStartAddr.Caption := '';
  lblRQVia.Hint := '';
  lblRQVia.Caption := '';
  lblRQEnd.Hint := '';
  lblRQEnd.Caption := '';
  lblRQEndAddr.Caption := '';
  lblDistance.Caption := '';
  lblVDistance.Caption := '';
  curPRate.Value := 0;
  LbmeoPBigo.Caption := '요금설명';
  lbmeoPBigo.Visible := True;
  edtPMemo.Text := '';
end;

procedure TFrm_COM50.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  btnClose.Click;
end;

procedure TFrm_COM50.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

end.

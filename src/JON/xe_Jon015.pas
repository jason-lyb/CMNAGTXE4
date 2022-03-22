unit xe_JON015;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxLabel, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxContainer, dxSkinsCore,
  dxSkinscxPCPainter, cxCurrencyEdit, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  TMultiCallData = record
    StArea1,
    StArea2,
    StArea3,
    StArea4,
    StArea5: string;  // 출발지 정보
    EdArea1,
    EdArea2,
    EdArea3,
    EdArea4,
    EdArea5: string;  // 도착지 정보
    Price : Integer;  // 요금
    Km : Real;     // 거리
    TotalTime : Real;  // 소요시간
    Summary: string;  // 적요(개요)
    PayType: string;  // 결제구분
    PriceYN: Boolean; // 요금미지정
    StPosX, StPosY,
    EdPosX, EdPosY: string;   // 출발/도착 좌표
		CorpYN: Boolean;  // 법인여부(여: '1', 부: '')
		Call2YN: String; // 콜마너2 여부
		DriverCharge : string; //기사수수료(지역수수료)
  end;

  TFrm_JON015 = class(TForm)
    cxGridMultiCall: TcxGrid;
    cxViewMultiCall: TcxGridDBTableView;
    cxViewMultiCallColumn1: TcxGridDBColumn;
    cxViewMultiCallColumn2: TcxGridDBColumn;
    cxViewMultiCallColumn3: TcxGridDBColumn;
    cxViewMultiCallColumn4: TcxGridDBColumn;
    cxViewMultiCallColumn5: TcxGridDBColumn;
    cxViewMultiCallColumn6: TcxGridDBColumn;
    cxViewMultiCallColumn7: TcxGridDBColumn;
    cxViewMultiCallColumn8: TcxGridDBColumn;
    cxViewMultiCallColumn9: TcxGridDBColumn;
    cxViewMultiCallColumn10: TcxGridDBColumn;
    cxViewMultiCallColumn11: TcxGridDBColumn;
    cxViewMultiCallColumn12: TcxGridDBColumn;
    cxViewMultiCallColumn13: TcxGridDBColumn;
    cxViewMultiCallColumn14: TcxGridDBColumn;
    cxViewMultiCallColumn15: TcxGridDBColumn;
    cxViewMultiCallColumn16: TcxGridDBColumn;
    cxViewMultiCallColumn17: TcxGridDBColumn;
    cxViewMultiCallColumn18: TcxGridDBColumn;
    cxLevelMultiCall: TcxGridLevel;
    cxViewMultiCallColumn19: TcxGridDBColumn;
    pnlTitle: TPanel;
    cxButton1: TcxButton;
    cxViewMultiCallColumn20: TcxGridDBColumn;
    cxLblActive: TLabel;
    cxViewMultiCallColumn21: TcxGridDBColumn;
    cxViewMultiCallColumn22: TcxGridDBColumn;
    cxViewMultiCallColumn23: TcxGridDBColumn;
    Label1: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxViewMultiCallCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    FOrderHandle: THandle;

    procedure CreateObj;
    procedure GeneralInit;
    function GetCount: Integer;

    function StrPosToPoint(AValue: string): TPoint;
    procedure StrPosToPointStr(AValue: string; var AX, AY: string);
  public
    { Public declarations }
    property Count: Integer read GetCount;
    property OrderHandle: THandle read FOrderHandle;

		function AddMultiCallData(AOrderHandle: THandle; AData: TMultiCallData): Boolean;
		function GetMultiCallData(AIndex: Integer; var AData: TMultiCallData): Boolean;
  end;

var
	Frm_JON015: TFrm_JON015;

implementation

{$R *.dfm}

uses xe_GNL, xe_Func;

procedure TFrm_JON015.FormCreate(Sender: TObject);
begin
  CreateObj;
  GeneralInit;

  // 복수콜 폼 로딩 여부 저장함.
  GB_FRMJON015_LOADING_YN := True;
end;

procedure TFrm_JON015.CreateObj;
var
	Save: LongInt; // 폼타이틀 제거용.
begin
  //====================================================
  // 폼 타이틀 제거..
  if BorderStyle = bsNone then
    Exit;
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
end;

procedure TFrm_JON015.GeneralInit;
var
  I: Integer;
begin
  for i := 0 to cxViewMultiCall.ColumnCount - 1 do
  begin
    if i in [0] then
      cxViewMultiCall.Columns[i].DataBinding.ValueType := 'Integer' else
		if i in [13] then
      cxViewMultiCall.Columns[i].DataBinding.ValueType := 'Currency'
    else
      cxViewMultiCall.Columns[i].DataBinding.ValueType := 'String';
  end;
end;

procedure TFrm_JON015.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := False;
end;

procedure TFrm_JON015.FormDestroy(Sender: TObject);
begin
  Frm_JON015 := nil;
end;

function TFrm_JON015.GetCount: Integer;
begin
  Result := cxViewMultiCall.DataController.RecordCount;
end;

function TFrm_JON015.AddMultiCallData(AOrderHandle: THandle; AData: TMultiCallData): Boolean;
var
  ARow: Integer;
begin
  FOrderHandle := AOrderHandle;
  try
    ARow := cxViewMultiCall.DataController.AppendRecord;

    cxViewMultiCall.DataController.SetValue(ARow, 0, ARow + 1);
    cxViewMultiCall.DataController.SetValue(ARow, 1, AData.StArea1);
    cxViewMultiCall.DataController.SetValue(ARow, 2, AData.StArea2);
    cxViewMultiCall.DataController.SetValue(ARow, 3, AData.StArea3);
    cxViewMultiCall.DataController.SetValue(ARow, 4, AData.StArea4);
    cxViewMultiCall.DataController.SetValue(ARow, 5, AData.StArea5);
    cxViewMultiCall.DataController.SetValue(ARow, 6, '->');
    cxViewMultiCall.DataController.SetValue(ARow, 7, AData.EdArea1);
    cxViewMultiCall.DataController.SetValue(ARow, 8, AData.EdArea2);
    cxViewMultiCall.DataController.SetValue(ARow, 9, AData.EdArea3);
    cxViewMultiCall.DataController.SetValue(ARow, 10, AData.EdArea4);
    cxViewMultiCall.DataController.SetValue(ARow, 11, AData.EdArea5);
    cxViewMultiCall.DataController.SetValue(ARow, 12, Format('%f', [AData.Km]));
    cxViewMultiCall.DataController.SetValue(ARow, 13, AData.Price);
    cxViewMultiCall.DataController.SetValue(ARow, 14, AData.Summary);
    cxViewMultiCall.DataController.SetValue(ARow, 15, AData.PayType);
    cxViewMultiCall.DataController.SetValue(ARow, 16, Format('%s,%s', [AData.StPosX, AData.StPosY]));
    cxViewMultiCall.DataController.SetValue(ARow, 17, Format('%s,%s', [AData.EdPosX, AData.EdPosY]));
    cxViewMultiCall.DataController.SetValue(ARow, 18, AData.CorpYN);
    cxViewMultiCall.DataController.SetValue(ARow, 19, AData.PriceYN);
    cxViewMultiCall.DataController.SetValue(ARow, 20, AData.TotalTime);
		cxViewMultiCall.DataController.SetValue(ARow, 21, '');
		cxViewMultiCall.DataController.SetValue(ARow, 22, AData.DriverCharge);

		Result := True;
  except
    Result := False;
  end;
end;

function TFrm_JON015.GetMultiCallData(AIndex: Integer;
  var AData: TMultiCallData): Boolean;
var
  PosX, PosY: string;
begin
  try
    AData.StArea1 := cxViewMultiCall.DataController.GetValue(AIndex, 1);
    AData.StArea2 := cxViewMultiCall.DataController.GetValue(AIndex, 2);
    AData.StArea3 := cxViewMultiCall.DataController.GetValue(AIndex, 3);
    AData.StArea4 := cxViewMultiCall.DataController.GetValue(AIndex, 4);
    AData.StArea5 := cxViewMultiCall.DataController.GetValue(AIndex, 5);

    AData.EdArea1 := cxViewMultiCall.DataController.GetValue(AIndex, 7);
    AData.EdArea2 := cxViewMultiCall.DataController.GetValue(AIndex, 8);
    AData.EdArea3 := cxViewMultiCall.DataController.GetValue(AIndex, 9);
    AData.EdArea4 := cxViewMultiCall.DataController.GetValue(AIndex, 10);
    AData.EdArea5 := cxViewMultiCall.DataController.GetValue(AIndex, 11);

    AData.Km      := cxViewMultiCall.DataController.GetValue(AIndex, 12);
    AData.Price   := cxViewMultiCall.DataController.GetValue(AIndex, 13);
    AData.Summary := cxViewMultiCall.DataController.GetValue(AIndex, 14);
    AData.PayType := cxViewMultiCall.DataController.GetValue(AIndex, 15);
    StrPosToPointStr(cxViewMultiCall.DataController.GetValue(AIndex, 16), PosX, PosY);
    AData.StPosX  := PosX;
    AData.StPosY  := PosY;
    StrPosToPointStr(cxViewMultiCall.DataController.GetValue(AIndex, 17), PosX, PosY);
    AData.EdPosX  := PosX;
    AData.EdPosY  := PosY;
    AData.CorpYN  := cxViewMultiCall.DataController.GetValue(AIndex, 18);
    AData.PriceYN := cxViewMultiCall.DataController.GetValue(AIndex, 19);
    AData.TotalTime := cxViewMultiCall.DataController.GetValue(AIndex, 20);
		AData.Call2YN := cxViewMultiCall.DataController.GetValue(AIndex, 21);
		AData.DriverCharge := cxViewMultiCall.DataController.GetValue(AIndex, 22);

    Result := True;
  except
    Result := False;
  end;
end;

procedure TFrm_JON015.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON015.cxViewMultiCallCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  Sender.DataController.DeleteRecord(ACellViewInfo.GridRecord.Index);
  if Sender.DataController.RecordCount = 0 then Close;
end;

function TFrm_JON015.StrPosToPoint(AValue: string): TPoint;
begin
  Result.X := StrToIntDef(Copy(AValue, 1, Pos(',', AValue) - 1), 0);
  Result.Y := StrToIntDef(Copy(AValue, Pos(',', AValue) + 1, Length(AValue) - Pos(',', AValue)), 0);
end;

procedure TFrm_JON015.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON015.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;

  // 복수콜 폼 로딩 여부 저장함.
  GB_FRMJON015_LOADING_YN := False;

  FOrderHandle := 0;
  cxViewMultiCall.DataController.SetRecordCount(0);
end;

procedure TFrm_JON015.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_JON015.StrPosToPointStr(AValue: string; var AX, AY: string);
begin
  AX := Copy(AValue, 1, Pos(',', AValue) - 1);
  AY := Copy(AValue, Pos(',', AValue) + 1, Length(AValue) - Pos(',', AValue));
end;

procedure TFrm_JON015.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON015, GS_FONTNAME);
  fSetSkin(Frm_JON015);
  // 복수콜 폼 로딩 여부 저장함.
  GB_FRMJON015_LOADING_YN := True;
end;

procedure TFrm_JON015.FormHide(Sender: TObject);
begin
  // 복수콜 폼 로딩 여부 저장함.
  GB_FRMJON015_LOADING_YN := False;
end;

end.

unit xe_JON018;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, System.Math,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxCheckBox, cxTextEdit,
  cxContainer, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  ExtCtrls, StdCtrls, GradientLabel, cxCurrencyEdit, Menus, System.StrUtils,
  cxLookAndFeelPainters, cxMaskEdit, cxSpinEdit, cxButtons, cxPC, ChargeInfo,
  cxDropDownEdit, cxLookAndFeels, cxPCdxBarPopupMenu, cxNavigator, cxGroupBox,
  cxTL, cxTLdxBarBuiltInMenu, cxInplaceContainer, dxBarBuiltInMenu, dxSkinsCore,
  dxSkinscxPCPainter, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  TFrm_JON018 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxLabel1: TcxLabel;
    edtEndDesc: TcxTextEdit;
    edtStartDesc: TcxTextEdit;
    lbl2: TcxLabel;
    chkMultiSame: TcxCheckBox;
    cxLabel2: TcxLabel;
    btnMultiSave: TcxButton;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    edtChargeType: TcxTextEdit;
    edtAreaType: TcxTextEdit;
    edtPayment: TcxSpinEdit;
    btnSave: TcxButton;
    btnFirstSave: TcxButton;
    chkSame: TcxCheckBox;
    cxLabel5: TcxLabel;
    edtDistance: TcxTextEdit;
    edtFirstType: TcxTextEdit;
    cxLabel6: TcxLabel;
    pgcCharge: TcxPageControl;
    tbsFirst: TcxTabSheet;
    cxGridFirst: TcxGrid;
    cxViewFirst: TcxGridTableView;
    cxColFirstSel: TcxGridColumn;
    cxColFirstType: TcxGridColumn;
    cxColFirstSt: TcxGridColumn;
    cxColFirstEd: TcxGridColumn;
    cxColFirstPay: TcxGridColumn;
    cxLevelFirst: TcxGridLevel;
    tbsTable: TcxTabSheet;
    tbsDistance: TcxTabSheet;
    tbsTerm: TcxTabSheet;
    cxGridTable: TcxGrid;
    cxViewTable: TcxGridTableView;
    cxColTableSel: TcxGridColumn;
    cxColTableType: TcxGridColumn;
    cxColTableSt: TcxGridColumn;
    cxColTableEd: TcxGridColumn;
    cxColTablePay: TcxGridColumn;
    cxLevelTable: TcxGridLevel;
    cxGridDistance: TcxGrid;
    cxViewDistance: TcxGridTableView;
    cxColDistSel: TcxGridColumn;
    cxColDistType: TcxGridColumn;
    cxColDistSt: TcxGridColumn;
    cxColDistEd: TcxGridColumn;
    cxColDistMinPay: TcxGridColumn;
    cxLevelDistance: TcxGridLevel;
    cxGridTerm: TcxGrid;
    cxViewTerm: TcxGridTableView;
    cxColTermSel: TcxGridColumn;
    cxColTermType: TcxGridColumn;
    cxColTermSt: TcxGridColumn;
    cxColTermEd: TcxGridColumn;
    cxColTermPay: TcxGridColumn;
    cxLevelTerm: TcxGridLevel;
    cxColFirstIndex: TcxGridColumn;
    cxColTableIndex: TcxGridColumn;
    cxColDistBase: TcxGridColumn;
    cxColDistBasePay: TcxGridColumn;
    cxColDistAdd: TcxGridColumn;
    cxColDistAddPay: TcxGridColumn;
    cxColDistIndex: TcxGridColumn;
    cxColTermPassSub: TcxGridColumn;
    cxColTermSub: TcxGridColumn;
    cxColTermIndex: TcxGridColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleNew: TcxStyle;
    btnMultiDel: TcxButton;
    pnlTitle: TPanel;
    BtnClose: TcxButton;
    GB_View: TcxGroupBox;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    edtStartPOIDesc: TcxTextEdit;
    edtEndPOIDesc: TcxTextEdit;
    tbsFirstDetail: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxViewFirstDetail: TcxGridTableView;
    cxColFirstDetailSel: TcxGridColumn;
    cxColFirstDetailType: TcxGridColumn;
    cxColFirstDetailSt: TcxGridColumn;
    cxColFirstDetailEd: TcxGridColumn;
    cxColFirstDetailPay: TcxGridColumn;
    cxColFirstDetailIndex: TcxGridColumn;
    cxGridLevel1: TcxGridLevel;
    cxTreeFirstDetail: TcxTreeList;
    cxTreeListColumn1: TcxTreeListColumn;
    cxTreeListColumn2: TcxTreeListColumn;
    cxTreeListColumn3: TcxTreeListColumn;
    cxTreeListColumn4: TcxTreeListColumn;
    cxTreeListColumn5: TcxTreeListColumn;
    cxTreeListColumn6: TcxTreeListColumn;
    cxSTX: TcxTextEdit;
    cxSTY: TcxTextEdit;
    cxEDX: TcxTextEdit;
    cxEDY: TcxTextEdit;
    cxLblActive: TLabel;
    Label2: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCloseClick(Sender: TObject);
    procedure btnMultiSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnFirstSaveClick(Sender: TObject);
    procedure cxColFirstPayPropertiesChange(Sender: TObject);
    procedure cxColFirstPayPropertiesEditValueChanged(Sender: TObject);
    procedure cxColTablePayUpPropertiesEditValueChanged(Sender: TObject);
    procedure cxColTablePayUpPropertiesChange(Sender: TObject);
    procedure cxColDistMinPayPropertiesEditValueChanged(Sender: TObject);
    procedure cxColDistMinPayPropertiesChange(Sender: TObject);
    procedure cxColTermPayPropertiesEditValueChanged(Sender: TObject);
    procedure cxColTermPayPropertiesChange(Sender: TObject);
    procedure edtPaymentKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxColTermPassSubPropertiesChange(Sender: TObject);
    procedure btnMultiDelClick(Sender: TObject);
    procedure cxColTermSelHeaderClick(Sender: TObject);
    procedure cxColFirstSelHeaderClick(Sender: TObject);
    procedure cxColTableSelHeaderClick(Sender: TObject);
    procedure cxColDistSelHeaderClick(Sender: TObject);
    procedure cxViewFirstStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure cxViewTermStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure cxViewDistanceStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxViewTableStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure cxViewFirstDetailStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxTreeFirstDetailColumnHeaderClick(Sender: TcxCustomTreeList;
      AColumn: TcxTreeListColumn);
    procedure cxTreeFirstDetailStylesGetContentStyle(Sender: TcxCustomTreeList;
      AColumn: TcxTreeListColumn; ANode: TcxTreeListNode; var AStyle: TcxStyle);
    procedure cxTreeListColumn1PropertiesChange(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
    { Private declarations }
    FSubCharge: TSubCharges;
    FCurCharge: TCharge;
    FChargeList: TChargeList;

		FType : integer;
    FKeyNum: string;
    FStArea, FEdArea: TAreaRec;
    FDistance: Integer;

    FIsChargeFirst, FIsChargeFirstDetail : Boolean; // 우선구간 여부
    FChargeCD: string;  // 요금제코드
    FFirstCD: string;
    FChargeType: string;   // 우선요금제 코드

    procedure ClearControll;
    procedure SetChargeType(const Value: string);

    procedure AddViewFirst(AIndex: Integer; ACharge: TFirstCharge);
    procedure AddViewTable(AIndex: Integer; ACharge: TTableCharge);
    procedure AddViewDist(AIndex: Integer; ACharge: TDistCharge);
    procedure AddViewTerm(AIndex: Integer; ACharge: TTermCharge);

    function SaveView: Boolean;
    function SaveViewFirst: Boolean;
    function SaveViewTable: Boolean;
    function SaveViewDist: Boolean;
    function SaveViewTerm: Boolean;

    function DeleteView: Boolean;
    function DeleteViewFirst: Boolean;
    function DeleteViewTable: Boolean;
    function DeleteViewDist: Boolean;
    function DeleteViewTerm: Boolean;

    procedure DisplayInfo;

    function GetCharge(AView: TcxGridTableView; ARow: Integer = -1): TCharge;
    function SaveCharge(ACharge: TCharge; AAround: Boolean; var AErrorMsg: string): Boolean;
    procedure SelectAll(AView: TcxGridTableView; ACol: TcxGridColumn);
    function DeleteViewFirstDetail: Boolean;
    procedure proc_Save_Area(ASi, AGu, ADong, APOI, AstX, AstY: String);
    function SaveViewFirstDetail: Boolean;
    procedure AddViewFirstDetail(AIndex: Integer; ACharge: TFirstDetailCharge);
  public
    { Public declarations }
    procedure LoadCharge(AType : integer; AKeyNum: string; AStSi, AStGu, AStDong, AStPOI, AStX, AStY, AEdSi, AEdGu, AEdDong, AEdPOI, AEdX, AEdY: string; ADistance: Integer);
    property ChargeType: string read FChargeType write SetChargeType;
  end;

var
  Frm_JON018: TFrm_JON018;

implementation

{$R *.dfm}

uses xe_charge, xe_Msg, xe_GNL, xe_Func, xe_gnl2;

procedure TFrm_JON018.FormCreate(Sender: TObject);
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

  FChargeList := TChargeList.Create;
  FSubCharge  := TSubCharges.Create;

  dmCharge.AddSubCharge(FSubCharge);

  TcxCustomComboBoxProperties(cxColTermPassSub.Properties).Items.Assign(FSubCharge);
	TcxCustomComboBoxProperties(cxColTermSub.Properties).Items.Assign(FSubCharge);

	for i := 0 to cxTreeFirstDetail.ColumnCount - 1 do
		cxTreeFirstDetail.Columns[i].DataBinding.ValueType := 'String';
	cxTreeFirstDetail.Columns[4].DataBinding.ValueType := 'Currency';

  cxViewFirst.OptionsView.NoDataToDisplayInfoText := '';
  cxViewTable.OptionsView.NoDataToDisplayInfoText := '';
  cxViewDistance.OptionsView.NoDataToDisplayInfoText := '';
  cxViewTerm.OptionsView.NoDataToDisplayInfoText := '';
end;

procedure TFrm_JON018.FormShow(Sender: TObject);
Var i : Integer;
begin
  fSetFont(Frm_JON018, GS_FONTNAME);
  for i := 0 to pred(cxStyleRepository1.Count) do
  begin
    TcxStyle(cxStyleRepository1.Items[i]).Font.Name := GS_FONTNAME;
  end;
  fSetSkin(Frm_JON018);

  edtPayment.SetFocus;
end;

procedure TFrm_JON018.ClearControll;
begin
  FChargeList.Clear;
	FIsChargeFirst := False;
	FIsChargeFirstDetail := False;

  edtStartDesc.Clear;
	edtEndDesc.Clear;
	edtStartPOIDesc.Clear;
	edtEndPOIDesc.Clear;
	edtAreaType.Clear;
  edtDistance.Clear;
  edtChargeType.Clear;
  edtFirstType.Clear;
  edtPayment.Clear;

  chkSame.Checked := True;
  chkMultiSame.Checked := True;

  cxViewFirst.DataController.SetRecordCount(0);
  cxViewFirst.OptionsView.NoDataToDisplayInfoText := '';
	cxViewFirstDetail.DataController.SetRecordCount(0);
  cxViewFirstDetail.OptionsView.NoDataToDisplayInfoText := '';
	cxTreeFirstDetail.Clear;
  cxViewTable.DataController.SetRecordCount(0);
  cxViewTable.OptionsView.NoDataToDisplayInfoText := '';
  cxViewDistance.DataController.SetRecordCount(0);
  cxViewDistance.OptionsView.NoDataToDisplayInfoText := '';
  cxViewTerm.DataController.SetRecordCount(0);
  cxViewTerm.OptionsView.NoDataToDisplayInfoText := '';
end;

procedure TFrm_JON018.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON018.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_JON018.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_JON018.LoadCharge(AType : integer; AKeyNum: string; AStSi, AStGu, AStDong, AStPOI, AStX, AStY, AEdSi, AEdGu, AEdDong, AEdPOI, AEdX, AEdY: string; ADistance: Integer);
begin
	FType := AType;
	FKeyNum := AKeyNum;
	FStArea.Si := AStSi;
	FStArea.Gu := AStGu;
	FStArea.Dong := AStDong;
	FStArea.POI := AStPOI;
	FStArea.X := AStX;
	FStArea.Y := AStY;
	FEdArea.Si := AEdSi;
	FEdArea.Gu := AEdGu;
	FEdArea.Dong := AEdDong;
	FEdArea.POI := AEdPOI;
	FEdArea.X := AEdX;
	FEdArea.Y := AEdY;
	FDistance := ADistance;
	cxSTX.Text := AStX;
	cxSTY.Text := AStY;
	cxEDX.Text := AEdX;
	cxEDY.Text := AEdY;
	DisplayInfo;
end;

procedure TFrm_JON018.btnMultiSaveClick(Sender: TObject);
begin
  if SaveView then
  begin
    GMessageBox('저장하였습니다.', CDMSI);
    DisplayInfo;
  end;
end;

procedure TFrm_JON018.btnMultiDelClick(Sender: TObject);
begin
  if DeleteView then
  begin
    GMessageBox('삭제 하였습니다.', CDMSI);
    DisplayInfo;
  end;
end;

procedure TFrm_JON018.SetChargeType(const Value: string);
  procedure _DispButton(ASave, AFirst: Boolean);
  const
		_FIRST_LEFT   = 387; //160;
		_SECOND_LEFT  = 465;
  begin
    btnSave.Visible := ASave;
    btnFirstSave.Visible := AFirst;
    if ASave then
      btnSave.Left    := _FIRST_LEFT;
    if AFirst then
      btnFirstSave.Left := IfThen(ASave, _SECOND_LEFT, _FIRST_LEFT);
  end;

begin
  if Value = CHARGE_TYPE_FIRST then
  begin
    FIsChargeFirst := True;
    if FChargeType = '' then
      pgcCharge.ActivePage := tbsFirst;

      _DispButton(True, False);
  end else
	if Value = CHARGE_TYPE_FIRST_Detail then
  begin
		FIsChargeFirstDetail := True;
		if FChargeType = '' then
			pgcCharge.ActivePage := tbsFirstDetail;

      _DispButton(True, False);
	end else
  if Value = CHARGE_TYPE_TABLE then
  begin
    if FChargeType = '' then
      pgcCharge.ActivePage := tbsTable;

      _DispButton(True, True);
  end else
  if Value = CHARGE_TYPE_DISTANCE then
  begin
    if FChargeType = '' then
      pgcCharge.ActivePage := tbsDistance;

      _DispButton(False, True);
  end else
  if Value = CHARGE_TYPE_TERM then
  begin
    if FChargeType = '' then
      pgcCharge.ActivePage := tbsTerm;

      _DispButton(False, True);
  end;

  FChargeType := Value;
end;

procedure TFrm_JON018.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON018.FormDestroy(Sender: TObject);
begin
  FSubCharge.Clear;
  FSubCharge.Free;

  FChargeList.Clear;
  FChargeList.Free;
  
  Frm_JON018 := nil;
end;

procedure TFrm_JON018.AddViewFirst(AIndex: Integer; ACharge: TFirstCharge);
var
  Idx: Integer;
begin
  Idx := cxViewFirst.DataController.AppendRecord;
  cxViewFirst.DataController.Values[Idx, cxColFirstSel.Index] := False;
  cxViewFirst.DataController.Values[Idx, cxColFirstType.Index] := ACharge.GetAreaType;
  cxViewFirst.DataController.Values[Idx, cxColFirstSt.Index] := ACharge.GetStAreaMin;
  cxViewFirst.DataController.Values[Idx, cxColFirstEd.Index] := ACharge.GetEdAreaMin;
  cxViewFirst.DataController.Values[Idx, cxColFirstPay.Index] := ACharge.Pay;
  cxViewFirst.DataController.Values[Idx, cxColFirstIndex.Index] := IntToStr(AIndex);
end;

procedure TFrm_JON018.AddViewDist(AIndex: Integer; ACharge: TDistCharge);
var
  Idx: Integer;
begin
  Idx := cxViewDistance.DataController.AppendRecord;
  cxViewDistance.DataController.Values[Idx, cxColDistSel.Index] := False;
  cxViewDistance.DataController.Values[Idx, cxColDistType.Index] := ACharge.GetAreaType;
  cxViewDistance.DataController.Values[Idx, cxColDistSt.Index] := ACharge.GetStAreaMin;
  cxViewDistance.DataController.Values[Idx, cxColDistEd.Index] := ACharge.GetEdAreaMin;
  cxViewDistance.DataController.Values[Idx, cxColDistMinPay.Index] := ACharge.LowPay;
  cxViewDistance.DataController.Values[Idx, cxColDistBase.Index] := ACharge.BaseDIst;
  cxViewDistance.DataController.Values[Idx, cxColDistBasePay.Index] := ACharge.BasePay;
  cxViewDistance.DataController.Values[Idx, cxColDistAdd.Index] := ACharge.AddDist;
  cxViewDistance.DataController.Values[Idx, cxColDistAddPay.Index] := ACharge.AddPay;
  cxViewDistance.DataController.Values[Idx, cxColDistIndex.Index] := IntToStr(AIndex);
end;

procedure TFrm_JON018.AddViewTable(AIndex: Integer; ACharge: TTableCharge);
var
  Idx: Integer;
begin
  Idx := cxViewTable.DataController.AppendRecord;
  cxViewTable.DataController.Values[Idx, cxColTableSel.Index] := False;
  cxViewTable.DataController.Values[Idx, cxColTableType.Index] := ACharge.GetAreaType;
  cxViewTable.DataController.Values[Idx, cxColTableSt.Index] := ACharge.GetStAreaMin;
  cxViewTable.DataController.Values[Idx, cxColTableEd.Index] := ACharge.GetEdAreaMin;
  cxViewTable.DataController.Values[Idx, cxColTablePay.Index] := ACharge.Pay;
  cxViewTable.DataController.Values[Idx, cxColTableIndex.Index] := IntToStr(AIndex);
end;

procedure TFrm_JON018.AddViewTerm(AIndex: Integer; ACharge: TTermCharge);
var
  Idx: Integer;
begin
  Idx := cxViewTerm.DataController.AppendRecord;
  cxViewTerm.DataController.Values[Idx, cxColTermSel.Index] := False;
  cxViewTerm.DataController.Values[Idx, cxColTermType.Index] := ACharge.GetAreaType;
  cxViewTerm.DataController.Values[Idx, cxColTermSt.Index] := ACharge.GetStAreaMin;
  cxViewTerm.DataController.Values[Idx, cxColTermEd.Index] := ACharge.GetEdAreaMin;
  cxViewTerm.DataController.Values[Idx, cxColTermPay.Index] := ACharge.BasePay;
  cxViewTerm.DataController.Values[Idx, cxColTermPassSub.Index] := FSubCharge.GetName(ACharge.PassCD);
  cxViewTerm.DataController.Values[Idx, cxColTermSub.Index] := FSubCharge.GetName(ACharge.SubCD);
  cxViewTerm.DataController.Values[Idx, cxColTermIndex.Index] := IntToStr(AIndex);
end;

procedure TFrm_JON018.DisplayInfo;
	procedure SearchSimilarCharge(AType: Integer; AList: TChargeList; ACode, AStSi, AStGu, AStDong, AEdSi, AEdGu, AEdDong: string);
  begin
		case AType of
    1: // 동 > 동
      begin
        // 동 > 구
        // 구 > 동
        // 구 > 구
				// 동 > 동(*)
				dmCharge.SearchChargeList(AList, ACode, AStSi, AStGu, AStDong, AEdSi, AEdGu, '');
				dmCharge.SearchChargeList(AList, ACode, AStSi, AStGu, '', AEdSi, AEdGu, AEdDong);
				dmCharge.SearchChargeList(AList, ACode, AStSi, AStGu, '', AEdSi, AEdGu, '');
				dmCharge.SearchChargeList(AList, ACode, AStSi, AStGu, AStDong, AEdSi, AEdGu, '*');
			end;
    2: // 동 > 구
      begin
        // 동 동
        // 구 > 동
        // 구 > 구
        // 동 > 동(*)
				dmCharge.SearchChargeList(AList, ACode, AStSi, AStGu, AStDong, AEdSi, AEdGu, AEdDong);
				dmCharge.SearchChargeList(AList, ACode, AStSi, AStGu, '', AEdSi, AEdGu, AEdDong);
				dmCharge.SearchChargeList(AList, ACode, AStSi, AStGu, '', AEdSi, AEdGu, '');
        dmCharge.SearchChargeList(AList, ACode, AStSi, AStGu, AStDong, AEdSi, AEdGu, '*');
      end;
    3: // 동 > 시
      begin
        // 동 > 구
        // 동 > 구(*)
        // 구 > 구(*)
        dmCharge.SearchChargeList(AList, ACode, AStSi, AStGu, AStDong, AEdSi, AEdGu, '');
        dmCharge.SearchChargeList(AList, ACode, AStSi, AStGu, AStDong, AEdSi, '*', '');
        dmCharge.SearchChargeList(AList, ACode, AStSi, AStGu, '', AEdSi, '*', '');
      end;
    4: // 구 > 동
      begin
        // 동 > 동
        // 구 > 구
        // 구 > 동(*)
        dmCharge.SearchChargeList(AList, ACode, AStSi, AStGu, AStDong, AEdSi, AEdGu, AEdDong);
        dmCharge.SearchChargeList(AList, ACode, AStSi, AStGu, '', AEdSi, AEdGu, '');
        dmCharge.SearchChargeList(AList, ACode, AStSi, AStGu, '', AEdSi, AEdGu, '*');
      end;
    5: // 구 > 구
      begin
        // 구 > 동
				// 동 > 동
        // 구 > 동(*)
        dmCharge.SearchChargeList(AList, ACode, AStSi, AStGu, '', AEdSi, AEdGu, AEdDong);
        dmCharge.SearchChargeList(AList, ACode, AStSi, AStGu, AStDong, AEdSi, AEdGu, AEdDong);
        dmCharge.SearchChargeList(AList, ACode, AStSi, AStGu, '', AEdSi, AEdGu, '*');
      end;
    6: // 구 > 시
      begin
        // 구 > 구
        // 구 > 구(*)
        dmCharge.SearchChargeList(AList, ACode, AStSi, AStGu, '', AEdSi, AEdGu, '');
        dmCharge.SearchChargeList(AList, ACode, AStSi, AStGu, '', AEdSi, '*', '');
      end;
    7: // 시 > 동
      begin
        // 구 > 동
        // 구 > 구
        // 시 > 구
        // 시 > 동(*)
        dmCharge.SearchChargeList(AList, ACode, AStSi, AStGu, '', AEdSi, AEdGu, AEdDong);
        dmCharge.SearchChargeList(AList, ACode, AStSi, AStGu, '', AEdSi, AEdGu, '');
        dmCharge.SearchChargeList(AList, ACode, AStSi, '', '', AEdSi, AEdGu, '');
        dmCharge.SearchChargeList(AList, ACode, AStSi, '', '', AEdSi, AEdGu, '*');

      end;
    8: // 시 > 구
      begin
        // 구 > 구
        // 시 > 시
        // 시 > 구(*)
        dmCharge.SearchChargeList(AList, ACode, AStSi, AStGu, '', AEdSi, AEdGu, AEdDong);
        dmCharge.SearchChargeList(AList, ACode, AStSi, '', '', AEdSi, '', '');
        dmCharge.SearchChargeList(AList, ACode, AStSi, '', '', AEdSi, '*', '');
      end;
    9: // 시 > 시
      begin
        // 시 > 구
        // 구 > 구
        // 시 > 구(*)
        dmCharge.SearchChargeList(AList, ACode, AStSi, '', '', AEdSi, AEdGu, AEdDong);
        dmCharge.SearchChargeList(AList, ACode, AStSi, AStGu, '', AEdSi, AEdGu, '');
				dmCharge.SearchChargeList(AList, ACode, AStSi, '', '', AEdSi, '*', '');
      end;
    end;
	end;

	procedure AreaInfoByType(AType: Integer; var AStArea, AEdArea: TAreaRec);
	begin
    case AType of
    2:
      begin
        AEdArea.Dong := '';
      end;
    3:
      begin
        AEdArea.Gu := '';
        AEdArea.Dong := '';
      end;
    4:
      begin
        AStArea.Dong := '';
      end;
    5:
      begin
        AStArea.Dong := '';
        AEdArea.Dong := '';
      end;
    6:
      begin
        AStArea.Dong := '';
        AEdArea.Gu := '';
        AEdArea.Dong := '';
      end;
    7:
      begin
        AStArea.Gu := '';
        AStArea.Dong := '';
      end;
    8:
      begin
        AStArea.Gu := '';
        AStArea.Dong := '';
        AEdArea.Dong := '';
      end;
    9:
      begin
				AStArea.Gu := '';
				AStArea.Dong := '';
				AEdArea.Gu := '';
				AEdArea.Dong := '';
      end;
		end;
	end;

	procedure SearchSimilarDetailCharge(AType: Integer; AList: TChargeList; ACode, AStSi, AStGu, AStDong, AStPOI, AStX, AStY
																																							 , AEdSi, AEdGu, AEdDong, AEdPOI, AEdX, AEdY: string);
	begin
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, AStPOI, AStX, AStY, AEdSi, AEdGu, AEdDong, AEdPOI, AEdX, AEdY);      //poi->poi
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, AStPOI, AStX, AStY, AEdSi, AEdGu, AEdDong, ''    , ''  , ''  );      //poi->동
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, AStPOI, AStX, AStY, AEdSi, AEdGu, ''     , ''    , ''  , ''  );      //poi->구
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, ''    , ''  , ''  , AEdSi, AEdGu, AEdDong, AEdPOI, AEdX, AEdY);      //동->poi
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, ''    , ''  , ''  , AEdSi, AEdGu, AEdDong, ''    , ''  , ''  );      //동->동
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, ''    , ''  , ''  , AEdSi, AEdGu, ''     , ''    , ''  , ''  );      //동->구
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, ''     , ''    , ''  , ''  , AEdSi, AEdGu, AEdDong, AEdPOI, AEdX, AEdY);      //구->poi
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, ''     , ''    , ''  , ''  , AEdSi, AEdGu, AEdDong, ''    , ''  , ''  );      //구->동
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, ''     , ''    , ''  , ''  , AEdSi, AEdGu, ''     , ''    , ''  , ''  );      //구->구
{		case AType of
		1: // poi-poi
			begin
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, AStPOI, AStX, AStY, AEdSi, AEdGu, AEdDong, AEdPOI, AEdX, AEdY);      //poi->poi
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, AStPOI, AStX, AStY, AEdSi, AEdGu, AEdDong, ''    , ''  , ''  );      //poi->동
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, AStPOI, AStX, AStY, AEdSi, AEdGu, ''     , ''    , ''  , ''  );      //poi->구
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, ''    , ''  , ''  , AEdSi, AEdGu, AEdDong, AEdPOI, AEdX, AEdY);      //동->poi
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, ''    , ''  , ''  , AEdSi, AEdGu, AEdDong, ''    , ''  , ''  );      //동->동
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, ''    , ''  , ''  , AEdSi, AEdGu, ''     , ''    , ''  , ''  );      //동->구
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, ''     , ''    , ''  , ''  , AEdSi, AEdGu, AEdDong, AEdPOI, AEdX, AEdY);      //구->poi
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, ''     , ''    , ''  , ''  , AEdSi, AEdGu, AEdDong, ''    , ''  , ''  );      //구->동
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, ''     , ''    , ''  , ''  , AEdSi, AEdGu, ''     , ''    , ''  , ''  );      //구->구
			end;
		2: // {poi-동}
{			begin
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, AStPOI, AStX, AStY, AEdSi, AEdGu, AEdDong, ''    , ''  , ''  );      //poi->동
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, AStPOI, AStX, AStY, AEdSi, AEdGu, ''     , ''    , ''  , ''  );      //poi->구
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, ''    , ''  , ''  , AEdSi, AEdGu, AEdDong, ''    , ''  , ''  );      //동->동
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, ''    , ''  , ''  , AEdSi, AEdGu, ''     , ''    , ''  , ''  );      //동->구
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, ''     , ''    , ''  , ''  , AEdSi, AEdGu, AEdDong, ''    , ''  , ''  );      //구->동
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, ''     , ''    , ''  , ''  , AEdSi, AEdGu, ''     , ''    , ''  , ''  );      //구->구
			end;
		3: // poi-구
			begin
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, AStPOI, AStX, AStY, AEdSi, AEdGu, ''     , ''    , ''  , ''  );      //poi->구
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, ''    , ''  , ''  , AEdSi, AEdGu, ''     , ''    , ''  , ''  );      //동->구
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, ''     , ''    , ''  , ''  , AEdSi, AEdGu, ''     , ''    , ''  , ''  );      //구->구
			end;
		4: // poi - 시
			begin
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, AStPOI, AStX, AStY, AEdSi, ''   , ''     , ''    , ''  , ''  );      //poi->시
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, ''    , ''  , ''  , AEdSi, ''   , ''     , ''    , ''  , ''  );      //동->시
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, ''     , ''    , ''  , ''  , AEdSi, ''   , ''     , ''    , ''  , ''  );      //구->시
			end;
		5: // 동 -poi
			begin
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, ''    , ''  , ''  , AEdSi, AEdGu, AEdDong, AEdPOI, AEdX, AEdY);      //동->poi
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, ''    , ''  , ''  , AEdSi, AEdGu, AEdDong, ''    , ''  , ''  );      //동->동
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, ''    , ''  , ''  , AEdSi, AEdGu, ''     , ''    , ''  , ''  );      //동->구
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, ''     , ''    , ''  , ''  , AEdSi, AEdGu, AEdDong, AEdPOI, AEdX, AEdY);      //구->poi
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, ''     , ''    , ''  , ''  , AEdSi, AEdGu, AEdDong, ''    , ''  , ''  );      //구->동
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, ''     , ''    , ''  , ''  , AEdSi, AEdGu, ''     , ''    , ''  , ''  );      //구->구
			end;
		6: // 동 > 동
			begin
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, ''    , ''  , ''  , AEdSi, AEdGu, AEdDong, ''    , ''  , ''  );      //동->동
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, ''    , ''  , ''  , AEdSi, AEdGu, ''     , ''    , ''  , ''  );      //동->구
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, ''     , ''    , ''  , ''  , AEdSi, AEdGu, AEdDong, ''    , ''  , ''  );      //구->동
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, ''     , ''    , ''  , ''  , AEdSi, AEdGu, ''     , ''    , ''  , ''  );      //구->구
			end;
		7: // 동 > 구
			begin
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, ''    , ''  , ''  , AEdSi, AEdGu, ''     , ''    , ''  , ''  );      //동->구
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, ''     , ''    , ''  , ''  , AEdSi, AEdGu, AEdDong, ''    , ''  , ''  );      //구->동
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, ''     , ''    , ''  , ''  , AEdSi, AEdGu, ''     , ''    , ''  , ''  );      //구->구
			end;
		8: // 동 >시
			begin
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, AStDong, ''    , ''  , ''  , AEdSi, ''   , ''     , ''    , ''  , ''  );      //동->시
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, ''     , ''    , ''  , ''  , AEdSi, ''   , ''     , ''    , ''  , ''  );      //구->시
			end;
		9: // 구 > poi
			begin
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, ''     , ''    , ''  , ''  , AEdSi, AEdGu, AEdDong, AEdPOI, AEdX, AEdY);      //구->poi
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, ''     , ''    , ''  , ''  , AEdSi, AEdGu, AEdDong, ''    , ''  , ''  );      //구->동
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, ''     , ''    , ''  , ''  , AEdSi, AEdGu, ''     , ''    , ''  , ''  );      //구->구
			end;
	 10: // 구 > 동
			begin
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, ''     , ''    , ''  , ''  , AEdSi, AEdGu, AEdDong, ''    , ''  , ''  );      //구->동
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, ''     , ''    , ''  , ''  , AEdSi, AEdGu, ''     , ''    , ''  , ''  );      //구->구
			end;
	 11: // 구 > 구
			begin
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, ''     , ''    , ''  , ''  , AEdSi, AEdGu, ''     , ''    , ''  , ''  );      //구->구
			end;
	 12: // 구 > 시
			begin
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, AStGu, ''     , ''    , ''  , ''  , AEdSi, ''   , ''     , ''    , ''  , ''  );      //구->시
			end;
	 13: // 시 > poi
			begin
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, ''   , ''     , ''    , ''  , ''  , AEdSi, AEdGu, AEdDong, AEdPOI, AEdX, AEdY);      //시->poi
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, ''   , ''     , ''    , ''  , ''  , AEdSi, AEdGu, AEdDong, ''    , ''  , ''  );      //시->동
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, ''   , ''     , ''    , ''  , ''  , AEdSi, AEdGu, ''     , ''    , ''  , ''  );      //시->구
			end;
	 14: // 시 > 동
			begin
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, ''   , ''     , ''    , ''  , ''  , AEdSi, AEdGu, AEdDong, ''    , ''  , ''  );      //시->동
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, ''   , ''     , ''    , ''  , ''  , AEdSi, AEdGu, ''     , ''    , ''  , ''  );      //시->구
			end;
	 15: // 시 > 구
			begin
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, ''   , ''     , ''    , ''  , ''  , AEdSi, AEdGu, ''     , ''    , ''  , ''  );      //시->구
			end;
	 16: // 시 > 시
			begin
				dmCharge.SearchChargeListDetail(AList, ACode, AStSi, ''   , ''     , ''    , ''  , ''  , AEdSi, ''   , ''     , ''    , ''  , ''  );      //시->구
			end;
		end;  }
	end;

	procedure _DispTabVisible(AView: TcxGridTableView; ATabSheet: TcxTabSheet);
	begin
		if AView.DataController.RecordCount > 0 then
		begin
			ATabSheet.Caption := Format('%s(%d)', [ATabSheet.Hint, AView.DataController.RecordCount]);
			ATabSheet.TabVisible := True;
		end
		else
		begin
			ATabSheet.Caption := ATabSheet.Hint;
			ATabSheet.TabVisible := False;
		end;
  end;
var
  I : Integer;
	CurrPay, AreaType, AType: Integer;
	Desc: string;
  StArea, EdArea: TAreaRec;
  Charge: TCharge;
begin
	ClearControll;

	edtStartDesc.Text := FStArea.Si + ' ' + FStArea.Gu + ' ' + FStArea.Dong;
	edtEndDesc.Text   := FEdArea.Si + ' ' + FEdArea.Gu + ' ' + FEdArea.Dong;
	edtStartPOIDesc.Text := FStArea.POI;
	edtEndPOIDesc.Text   := FEdArea.POI;

  edtDistance.Text := IntToStr(FDistance);

  // [0] 요금정보 조회
	if not dmCharge.GetChargeInfo(FType, FKeyNum, FChargeCD, FFirstCD) then
	begin
    GMessageBox('요금제 정보를 조회할 수 없습니다. 요금제 설정을 확인 바랍니다.', CDMSE);
    Close;
    Exit;
  end;

  // 표준요금제만 있는 경우 요금수정 불가
  if (Copy(FChargeCD, 1, 2) = 'CC') and (FFirstCD = '') then
  begin
    GMessageBox('표준 요금제 이외의 요금제로 설정하셔야 요금설정이 가능합니다..', CDMSE);
    Close;
    Exit;
  end;

	edtChargeType.Text  := dmCharge.GetChargeGroupValue(FChargeCD) + ']' + dmCharge.GetChargeName(FChargeCD);
  edtFirstType.Text   := dmCharge.GetChargeName(FFirstCD);

  // [1] 요금조회
  CurrPay := 0;
  // 우선요금 조회
  if FFirstCD <> '' then
  begin
		if copy(FFirstCD, 1, 2) = 'CP' then
			CurrPay := dmCharge.func_charge(FStArea.Si, FStArea.Gu, FStArea.Dong, FStArea.POI, FEdArea.Si, FEdArea.Gu, FEdArea.Dong, FEdArea.POI, FDistance, 'CP', '', FFirstCD, 0, 0, Desc, AreaType, AType)
		else
			CurrPay := dmCharge.func_charge(FStArea.Si, FStArea.Gu, FStArea.Dong, '', FEdArea.Si, FEdArea.Gu, FEdArea.Dong, '', FDistance, '', '', FFirstCD, 0, 0, Desc, AreaType, AType);
		if (CurrPay > 0) or (Copy(FChargeCD, 1, 2) = 'CC') then
		begin
			if copy(FFirstCD, 1, 2) = 'CP' then
				ChargeType := CHARGE_TYPE_FIRST_DETAIL
			else
				ChargeType := CHARGE_TYPE_FIRST;
		end;
  end;

  // 요금제 요금 조회
	if CurrPay = 0 then // 우선요금제 없을 경우
  begin
		CurrPay := dmCharge.func_charge(FStArea.Si, FStArea.Gu, FStArea.Dong, FStArea.POI, FEdArea.Si, FEdArea.Gu, FEdArea.Dong, FEdArea.POI, FDistance, FChargeCD, '', '', 0, 0, Desc, AreaType, AType);
    // 표준요금제 무시(꽁수)
		if Pos('표준', Desc) > 0 then
			CurrPay := 0;
		ChargeType := Copy(FChargeCD, 1, 2);
  end;

  if CurrPay > 0 then
  begin
		GB_View.Caption := Desc;
		edtPayment.Value := CurrPay;
		if copy(FFirstCD,1,2) = 'CP' then
			edtAreaType.Text := dmCharge.GetAreaTypeDescDetail(AreaType)
		else
			edtAreaType.Text := dmCharge.GetAreaTypeDesc(AreaType);
	end
	else // 등록 요금 없음
	begin
		GB_View.Caption := '등록된 요금제가 없습니다.';
		edtPayment.Value := 0;
		AreaType := 1;
		if copy(FFirstCD,1,2) = 'CP' then
			edtAreaType.Text := dmCharge.GetAreaTypeDescDetail(AreaType)
		else
			edtAreaType.Text := dmCharge.GetAreaTypeDesc(AreaType);
	end;

  // [2] 해당요금 조회
  StArea := FStArea;
	EdArea := FEdArea;
	if copy(FFirstCD,1,2) <> 'CP' then
		AreaInfoByType(AreaType, StArea, EdArea);

	// [3] 표준요금제 우선요금제
	if Copy(FChargeCD, 1, 2) = 'CC' then
	begin
		if copy(FFirstCD,1, 2) = 'CP' then
			SearchSimilarDetailCharge(AreaType, FChargeList, FFirstCD, FStArea.Si, FStArea.Gu, FStArea.Dong, FStArea.POI, FStArea.X, FStArea.Y
																															 , FEdArea.Si, FEdArea.Gu, FEdArea.Dong, FEdArea.POI, FEdArea.X, FEdArea.Y)
		else
			SearchSimilarCharge(AreaType, FChargeList, FFirstCD, FStArea.Si, FStArea.Gu, FStArea.Dong, FEdArea.Si, FEdArea.Gu, FEdArea.Dong)
	end
	else
	begin
		SearchSimilarCharge(AreaType, FChargeList, FChargeCD, FStArea.Si, FStArea.Gu, FStArea.Dong, FEdArea.Si, FEdArea.Gu, FEdArea.Dong);
	end;

	// [4] 관련요금 조회(요금제에서만조회, 우선요금제 무시)
	if copy(FFirstCD,1,2) = 'CP' then
	begin
		SearchSimilarDetailCharge(AreaType, FChargeList, FFirstCD, FStArea.Si, FStArea.Gu, FStArea.Dong, FStArea.POI, FStArea.X, FStArea.Y
																														 , FEdArea.Si, FEdArea.Gu, FEdArea.Dong, FEdArea.POI, FEdArea.X, FEdArea.Y)
	end
	else
	begin
		dmCharge.SearchChargeList(FChargeList, IfThen(FIsChargeFirst, FFirstCD, FChargeCD), StArea.Si, StArea.Gu,
			StArea.Dong, EdArea.Si, EdArea.Gu, EdArea.Dong);      //요금제 조회
	end;

	if FChargeList.Count > 0 then
		FCurCharge := TCharge(FChargeList.Objects[0]);

	// [4] 관련요금 표시
	for I := 0 to FChargeList.Count - 1 do
  begin
		Charge := TCharge(FChargeList.Objects[I]);
    if Charge is TFirstCharge then
			AddViewFirst(I, Charge as TFirstCharge)
		else if Charge is TFirstDetailCharge then
			AddViewFirstDetail(I, Charge as TFirstDetailCharge)
		else if Charge is TTableCharge then
			AddViewTable(I, Charge as TTableCharge)
		else if Charge is TDistCharge then
			AddViewDist(I, Charge as TDistCharge)
    else if Charge is TTermCharge then
      AddViewTerm(I, Charge as TTermCharge)
    ;
  end;
	_DispTabVisible(cxViewFirst,          tbsFirst);
	_DispTabVisible(cxViewFirstDetail,    tbsFirstDetail);
	_DispTabVisible(cxViewTable,  			  tbsTable);
	_DispTabVisible(cxViewDistance,			  tbsDistance);
	_DispTabVisible(cxViewTerm,    			  tbsTerm);
end;

procedure TFrm_JON018.btnSaveClick(Sender: TObject);
var
  ErrMsg: string;
begin
	if edtPayment.Value < 1 then
  begin
    GMessageBox('요금을 정확히 입력하세요.', CDMSE);
    Exit;
  end;

	if FCurCharge is TFirstCharge then
		TFirstCharge(FCurCharge).Pay := edtPayment.Value
	else
  if FCurCharge is TFirstDetailCharge then
	begin
		TFirstDetailCharge(FCurCharge).Pay := edtPayment.Value;
		Try
			if (FCurCharge.StArea.X <> '') and (FCurCharge.StArea.Y <> '') and (FCurCharge.StArea.POI <> '') then
				proc_Save_Area(FCurCharge.StArea.Si, FCurCharge.StArea.Gu, FCurCharge.StArea.Dong, FCurCharge.StArea.POI, FCurCharge.StArea.X, FCurCharge.StArea.Y);
			if (FCurCharge.EdArea.X <> '') and (FCurCharge.EdArea.Y <> '') and (FCurCharge.EdArea.POI <> '') then
				proc_Save_Area(FCurCharge.EdArea.Si, FCurCharge.EdArea.Gu, FCurCharge.EdArea.Dong, FCurCharge.EdArea.POI, FCurCharge.EdArea.X, FCurCharge.EdArea.Y);
		except
			GMessageBox('로컬POI저장에 실패하였습니다.', CDMSE);
		end;
	end else
  if FCurCharge is TTableCharge then
		TTableCharge(FCurCharge).Pay := edtPayment.Value;

	if SaveCharge(FCurCharge, chkSame.Checked, ErrMsg) then
  begin
    GMessageBox('저장하였습니다.', CDMSI);
    DisplayInfo;
  end  else
  begin
    GMessageBox(Format('저장에 실패하였습니다.'#13#10'다시시도 바랍니다.'#13#10'(오류: %s)', [ErrMsg]), CDMSE);
  end;
end;

procedure TFrm_JON018.btnFirstSaveClick(Sender: TObject);
var
  ErrMsg: string;
  AFirst: TFirstCharge;
begin
  if FFirstCD = '' then
  begin
    GMessageBox('우선구간를 사용하지 않고 계십니다. 요금제를 먼저 선택해주세요.'#13#10'[설정>요금제설정]', CDMSE);
    Exit;
  end;

  if edtPayment.Value < 1 then
  begin
    GMessageBox('요금을 정확히 입력하세요.', CDMSE);
    Exit;
  end;

  AFirst := TFirstCharge.Create(FFirstCD, 0, edtPayment.Value,
		FCurCharge.StArea.Si, FCurCharge.StArea.Gu, FCurCharge.StArea.Dong, '',
		FCurCharge.EdArea.Si, FCurCharge.EdArea.Gu, FCurCharge.EdArea.Dong, '');

  try
    if SaveCharge(AFirst, chkSame.Checked, ErrMsg) then
    begin
      GMessageBox('저장하였습니다.', CDMSI);
      DisplayInfo;
    end else
    begin
      GMessageBox(Format('저장에 실패하였습니다.'#13#10'다시시도 바랍니다.'#13#10'(오류: %s)', [ErrMsg]), CDMSE);
    end;
  finally
    AFirst.Free;
  end;
end;

procedure TFrm_JON018.cxViewTableStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  Charge: TTableCharge;
begin
  if cxViewTable.DataController.Values[ARecord.Index, cxColTableIndex.Index] = null then
    Exit;

  Charge := TTableCharge(FChargeList.Objects[cxViewTable.DataController.Values[ARecord.Index, cxColTableIndex.Index]]);
  if Charge.No = 0 then
    AStyle := cxStyleNew;

end;

procedure TFrm_JON018.cxViewTermStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  Charge: TTermCharge;
begin
  if cxViewTerm.DataController.Values[ARecord.Index, cxColTermIndex.Index] = null then
    Exit;

  Charge := TTermCharge(FChargeList.Objects[cxViewTerm.DataController.Values[ARecord.Index, cxColTermIndex.Index]]);
  if Charge.No = 0 then
    AStyle := cxStyleNew;

end;

procedure TFrm_JON018.cxViewDistanceStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  Charge: TDistCharge;
begin
  if cxViewDistance.DataController.Values[ARecord.Index, cxColDistIndex.Index] = null then
    Exit;

  Charge := TDistCharge(FChargeList.Objects[cxViewDistance.DataController.Values[ARecord.Index, cxColDistIndex.Index]]);
  if Charge.No = 0 then
    AStyle := cxStyleNew;

end;

procedure TFrm_JON018.cxViewFirstDetailStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
	Charge: TFirstDetailCharge;
begin
	if cxViewFirstDetail.DataController.Values[ARecord.Index, 5] = null then
		Exit;

	Charge := TFirstDetailCharge(FChargeList.Objects[cxViewFirstDetail.DataController.Values[ARecord.Index, 5]]);
	if Charge.No = 0 then
		AStyle := cxStyleNew;
end;

procedure TFrm_JON018.cxViewFirstStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  Charge: TFirstCharge;
begin
  if cxViewFirst.DataController.Values[ARecord.Index, cxColFirstIndex.Index] = null then
    Exit;

  Charge := TFirstCharge(FChargeList.Objects[cxViewFirst.DataController.Values[ARecord.Index, cxColFirstIndex.Index]]);
  if Charge.No = 0 then
    AStyle := cxStyleNew;
end;

function TFrm_JON018.GetCharge(AView: TcxGridTableView; ARow: Integer): TCharge;
var
  Col: Integer;
begin
  Result := nil;

  if ARow = -1 then
    ARow := AView.DataController.FocusedRecordIndex;
  if AView = cxViewFirst then Col := cxColFirstIndex.Index else
  if AView = cxViewFirstDetail then	Col := cxColFirstDetailIndex.Index else
  if AView = cxViewTable then Col := cxColTableIndex.Index else
  if AView = cxViewDistance then Col := cxColDistIndex.Index else
  if AView = cxViewTerm then Col := cxColTermIndex.Index;

  if AView.DataController.Values[ARow, Col] = null then Exit;
  Result := TCharge(FChargeList.Objects[AView.DataController.Values[ARow, Col]]);
end;

function TFrm_JON018.SaveCharge(ACharge: TCharge; AAround: Boolean; var AErrorMsg: string): Boolean;
var
  TempArea: TAreaRec;
begin
  Result := dmCharge.SaveCharge(ACharge, AErrorMsg);

  if AAround and Result then
  begin
    ACharge.No := 0;
    TempArea := ACharge.StArea;
    ACharge.StArea := ACharge.EdArea;
    ACharge.EdArea := TempArea;
    Result := dmCharge.SaveCharge(ACharge, AErrorMsg);
  end;
end;

function TFrm_JON018.SaveView: Boolean;
begin
  Result := False;
  if pgcCharge.ActivePage = tbsFirst then Result := SaveViewFirst else
	if pgcCharge.ActivePage = tbsFirstDetail then Result := SaveViewFirstDetail else
  if pgcCharge.ActivePage = tbsTable then Result := SaveViewTable else
  if pgcCharge.ActivePage = tbsDistance then Result := SaveViewDist else
  if pgcCharge.ActivePage = tbsTerm then Result := SaveViewTerm;
end;

function TFrm_JON018.SaveViewFirst: Boolean;
var
  I, Count: Integer;
  ErrMsg: string;
  Charge: TFirstCharge;
begin
  Result := False;

  // Validate check
  Count := 0;
  for I := 0 to cxViewFirst.DataController.RecordCount - 1 do
  begin
    if cxViewFirst.DataController.Values[I, cxColFirstSel.Index] then
    begin
      if (cxViewFirst.DataController.Values[I, cxColFirstPay.Index] = null) or
        (cxViewFirst.DataController.Values[I, cxColFirstPay.Index] < 1) then
      begin
        GMessageBox('요금을 입력해 주세요.', CDMSE);
        Exit;
      end;

      Inc(Count);
    end;
  end;

  if Count = 0 then
  begin
    GMessageBox('변경하실 항목을 선택해 주세요.', CDMSE);
    Exit;
  end;
  
  for I := 0 to cxViewFirst.DataController.RecordCount - 1 do
  begin
    if cxViewFirst.DataController.Values[I, cxColFirstSel.Index] then
    begin
      Charge := TFirstCharge(GetCharge(cxViewFirst, I));
      Charge.Pay := cxViewFirst.DataController.Values[I, cxColFirstPay.Index];

      if not SaveCharge(Charge, chkMultiSame.Checked, ErrMsg) then
      begin
        GMessageBox(Format('저장에 실패하였습니다.'#13#10'다시시도 바랍니다.'#13#10'(오류: %s)', [ErrMsg]), CDMSE);
        Exit;
      end;
    end;
  end;
  
  Result := True;
end;

function TFrm_JON018.SaveViewTable: Boolean;
var
  I, Count: Integer;
  ErrMsg: string;
  Charge: TTableCharge;
begin
  Result := False;

  // Validate check
  Count := 0;
  for I := 0 to cxViewTable.DataController.RecordCount - 1 do
  begin
    if cxViewTable.DataController.Values[I, cxColTableSel.Index] then
    begin
      if (cxViewTable.DataController.Values[I, cxColTablePay.Index] = null) or
        (cxViewTable.DataController.Values[I, cxColTablePay.Index] < 1) then
      begin
        GMessageBox('요금을 입력해 주세요.', CDMSE);
        Exit;
      end;
      Inc(Count);
    end;
  end;

  if Count = 0 then
  begin
    GMessageBox('변경하실 항목을 선택해 주세요.', CDMSE);
    Exit;
  end;
  
  for I := 0 to cxViewTable.DataController.RecordCount - 1 do
  begin
    if cxViewTable.DataController.Values[I, cxColTableSel.Index] then
    begin
      Charge := TTableCharge(GetCharge(cxViewTable, I));
      Charge.Pay := cxViewTable.DataController.Values[I, cxColTablePay.Index];

      if not SaveCharge(Charge, chkMultiSame.Checked, ErrMsg) then
      begin
        GMessageBox(Format('저장에 실패하였습니다.'#13#10'다시시도 바랍니다.'#13#10'(오류: %s)', [ErrMsg]), CDMSE);
        Exit;
      end;
    end;
  end;

  Result := True;
end;

function TFrm_JON018.SaveViewDist: Boolean;
  function _ValidateCheck(ARow, ACol: Integer; AType: string): Boolean;
  begin
    Result := True;
    if (cxViewDistance.DataController.Values[ARow, ACol] = null) or
      (cxViewDistance.DataController.Values[ARow, ACol] < 1) then
    begin
      Result := False;
      cxViewDistance.DataController.FocusedRecordIndex := ARow;
      GMessageBox(AType + '을(를) 입력해 주세요.', CDMSE);
    end;
  end;
var
  I, Count: Integer;
  ErrMsg: string;
  Charge: TDistCharge;
begin
  Result := False;

  // Validate check
  Count := 0;
  for I := 0 to cxViewDistance.DataController.RecordCount - 1 do
  begin
    if cxViewDistance.DataController.Values[I, cxColDistSel.Index] then
    begin
      if not _ValidateCheck(I, cxColDistMinPay.Index,  '최저요금') then Exit;
      if not _ValidateCheck(I, cxColDistBase.Index,    '기본거리') then Exit;
      if not _ValidateCheck(I, cxColDistBasePay.Index, '기본요금') then Exit;
      if not _ValidateCheck(I, cxColDistAdd.Index,     '추가거리') then Exit;
      if not _ValidateCheck(I, cxColDistAddPay.Index,  '추가요금') then Exit;

      Inc(Count);
    end;
  end;

  if Count = 0 then
  begin
    GMessageBox('변경하실 항목을 선택해 주세요.', CDMSE);
    Exit;
  end;
  
  for I := 0 to cxViewDistance.DataController.RecordCount - 1 do
  begin
    if cxViewDistance.DataController.Values[I, cxColDistSel.Index] then
    begin
      Charge := TDistCharge(GetCharge(cxViewDistance, I));
      Charge.LowPay   := cxViewDistance.DataController.Values[I, cxColDistMinPay.Index];
      Charge.BaseDist := cxViewDistance.DataController.Values[I, cxColDistBase.Index];
      Charge.BasePay  := cxViewDistance.DataController.Values[I, cxColDistBasePay.Index];
      Charge.AddDist  := cxViewDistance.DataController.Values[I, cxColDistAdd.Index];
      Charge.AddPay   := cxViewDistance.DataController.Values[I, cxColDistAddPay.Index];

      if not SaveCharge(Charge, chkMultiSame.Checked, ErrMsg) then
      begin
        GMessageBox(Format('저장에 실패하였습니다.'#13#10'다시시도 바랍니다.'#13#10'(오류: %s)', [ErrMsg]), CDMSE);
        Exit;
      end;
    end;
  end;
  
  Result := True;
end;

function TFrm_JON018.SaveViewTerm: Boolean;
var
  I, Count: Integer;
  ErrMsg: string;
  Charge: TTermCharge;
begin
  Result := False;
  
  // Validate check
  Count := 0;
  for I := 0 to cxViewTerm.DataController.RecordCount - 1 do
  begin
    if cxViewTerm.DataController.Values[I, cxColTermSel.Index] then
    begin
      if (cxViewTerm.DataController.Values[I, cxColTermPay.Index] = null) or
        (cxViewTerm.DataController.Values[I, cxColTermPay.Index] < 1) then
      begin
        GMessageBox('기본요금을 입력해 주세요.', CDMSE);
        Exit;
      end;
      Inc(Count);
    end;
  end;

  if Count = 0 then
  begin
    GMessageBox('변경하실 항목을 선택해 주세요.', CDMSE);
    Exit;
  end;
  
  for I := 0 to cxViewTerm.DataController.RecordCount - 1 do
  begin
    if cxViewTerm.DataController.Values[I, cxColTermSel.Index] then
    begin
      Charge := TTermCharge(GetCharge(cxViewTerm, I));
      Charge.BasePay := cxViewTerm.DataController.Values[I, cxColTermPay.Index];

      if cxViewTerm.DataController.Values[I, cxColTermPassSub.Index] = null then
        Charge.PassCD := ''
      else
        Charge.PassCD := FSubCharge.GetCode(cxViewTerm.DataController.Values[I, cxColTermPassSub.Index]);

      if cxViewTerm.DataController.Values[I, cxColTermSub.Index] = null then
        Charge.SubCD  := ''
      else
        Charge.SubCD  := FSubCharge.GetCode(cxViewTerm.DataController.Values[I, cxColTermSub.Index]);

      if not SaveCharge(Charge, chkMultiSame.Checked, ErrMsg) then
      begin
        GMessageBox(Format('저장에 실패하였습니다.'#13#10'다시시도 바랍니다.'#13#10'(오류: %s)', [ErrMsg]), CDMSE);
        Exit;
      end;
    end;
  end;

  Result := True;  
  DisplayInfo;
end;

{
  # 다른이벤트(On~~~~~Changed) 사용 시 값을 읽어올 경우 변경되기 전의 값을 읽어와
  # EditValueChanged에서 변경완료 시 Tag 변경 후 Change이벤트에서 Tag 변경된 경우만
  # 값을 읽어서처리 
}
procedure TFrm_JON018.cxColFirstPayPropertiesEditValueChanged(
  Sender: TObject);
begin
  cxColFirstPay.Tag := 1;
end;

procedure TFrm_JON018.cxColFirstPayPropertiesChange(Sender: TObject);
var
  Idx: Integer;
  Charge: TFirstCharge;
begin
  if cxColFirstPay.Tag = 1 then
  begin
    Idx := cxViewFirst.DataController.FocusedRecordIndex;

    if cxViewFirst.DataController.Values[Idx, cxColFirstPay.Index] = null then Exit;

    Charge := TFirstCharge(GetCharge(cxViewFirst));

    if (cxViewFirst.DataController.Values[Idx, cxColFirstPay.Index] <> Charge.Pay) then
    begin
      cxViewFirst.DataController.Values[Idx, cxColFirstSel.Index] := True;
    end;

    cxColFirstPay.Tag := 0;
  end;
end;

procedure TFrm_JON018.cxColTablePayUpPropertiesEditValueChanged(
  Sender: TObject);
begin
  cxColTablePay.Tag := 1;
end;

procedure TFrm_JON018.cxColTablePayUpPropertiesChange(Sender: TObject);
var
  Idx: Integer;
  Charge: TTableCharge;
begin
  if cxColTablePay.Tag = 1 then
  begin
    Idx := cxViewTable.DataController.FocusedRecordIndex;

    if cxViewTable.DataController.Values[Idx, cxColTablePay.Index] = null then Exit;

    Charge := TTableCharge(GetCharge(cxViewTable));

    if (cxViewTable.DataController.Values[Idx, cxColTablePay.Index] <> Charge.Pay) then
    begin
      cxViewTable.DataController.Values[Idx, cxColTableSel.Index] := True;
    end;

    cxColTablePay.Tag := 0;
  end;
end;

procedure TFrm_JON018.cxColDistMinPayPropertiesEditValueChanged(
  Sender: TObject);
begin
  cxColDistMinPay.Tag := 1;
end;

procedure TFrm_JON018.cxColDistMinPayPropertiesChange(Sender: TObject);
var
  Idx: Integer;
  Charge: TDistCharge;
begin
  if cxColDistMinPay.Tag = 1 then
  begin
    cxColDistMinPay.Tag := 0;

    Idx := cxViewDistance.DataController.FocusedRecordIndex;

    if cxViewDistance.DataController.Values[Idx, cxColDistBase.Index] = null then Exit;
    if cxViewDistance.DataController.Values[Idx, cxColDistBasePay.Index] = null then Exit;
    if cxViewDistance.DataController.Values[Idx, cxColDistAdd.Index] = null then Exit;
    if cxViewDistance.DataController.Values[Idx, cxColDistAddPay.Index] = null then Exit;


    Charge := TDistCharge(GetCharge(cxViewDistance));

    if (cxViewDistance.DataController.Values[Idx, cxColDistMinPay.Index] <> Charge.LowPay)
      or (cxViewDistance.DataController.Values[Idx, cxColDistBase.Index] <> Charge.BaseDist)
      or (cxViewDistance.DataController.Values[Idx, cxColDistBasePay.Index] <> Charge.BasePay)
      or (cxViewDistance.DataController.Values[Idx, cxColDistAdd.Index] <> Charge.AddDist)
      or (cxViewDistance.DataController.Values[Idx, cxColDistAddPay.Index] <> Charge.AddPay)
    then
    begin
      cxViewDistance.DataController.Values[Idx, cxColDistSel.Index] := True;
    end;
  end;
end;

procedure TFrm_JON018.cxColTermPayPropertiesEditValueChanged(
  Sender: TObject);
begin
  cxColTermPay.Tag := 1;
end;

procedure TFrm_JON018.cxColTermPayPropertiesChange(Sender: TObject);
var
  Idx: Integer;
  Charge: TTermCharge;
begin
  if cxColTermPay.Tag = 1 then
  begin
    cxColTermPay.Tag := 0;

    Idx := cxViewTerm.DataController.FocusedRecordIndex;

    if cxViewTerm.DataController.Values[Idx, cxColTermPay.Index] = null then Exit;

    Charge := TTermCharge(GetCharge(cxViewTerm));

    if (cxViewTerm.DataController.Values[Idx, cxColTermPay.Index] <> Charge.BasePay) then
    begin
      cxViewTerm.DataController.Values[Idx, cxColTermSel.Index] := True;
    end;
  end;
end;

procedure TFrm_JON018.cxColTermPassSubPropertiesChange(Sender: TObject);
var
  Idx: Integer;
  Charge: TTermCharge;
begin
  Idx := cxViewTerm.DataController.FocusedRecordIndex;

  if cxViewTerm.DataController.Values[Idx, cxColTermPay.Index] = null then Exit;

  Charge := TTermCharge(GetCharge(cxViewTerm));
end;

procedure TFrm_JON018.edtPaymentKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Ord(Key) = VK_RETURN then
  begin
    if btnSave.Visible then
    begin
      btnSave.SetFocus;
      Exit;
    end;

    if btnFirstSave.Visible then
    begin
      btnFirstSave.SetFocus;
    end;
  end;
end;

function TFrm_JON018.DeleteView: Boolean;
begin
  Result := False;
  if pgcCharge.ActivePage = tbsFirst then Result := DeleteViewFirst else
	if pgcCharge.ActivePage = tbsFirstDetail then	Result := DeleteViewFirstDetail else
  if pgcCharge.ActivePage = tbsTable then Result := DeleteViewTable else
  if pgcCharge.ActivePage = tbsDistance then Result := DeleteViewDist else
  if pgcCharge.ActivePage = tbsTerm then Result := DeleteViewTerm;
end;

function TFrm_JON018.DeleteViewDist: Boolean;
var
  I, Count: Integer;
  ErrMsg: string;
begin
  Result := False;
  Count := 0;

  for I := 0 to cxViewDistance.DataController.RecordCount - 1 do
  begin
    if cxViewDistance.DataController.Values[I, cxColDistSel.Index] then
    begin
      if not dmCharge.DelCharge(GetCharge(cxViewDistance, I), ErrMsg) then
      begin
        GMessageBox(Format('삭제에 실패하였습니다.'#13#10'다시시도 바랍니다.'#13#10'(오류: %s)', [ErrMsg]), CDMSE);
        Exit;
      end;
      Inc(Count);
    end;
  end;

  if Count = 0 then
  begin
    GMessageBox('삭제하실 항목을 선택해 주세요.', CDMSE);
    Exit;
  end;
  
  Result := True;
end;

function TFrm_JON018.DeleteViewFirst: Boolean;
var
  I, Count: Integer;
  ErrMsg: string;
begin
  Result := False;
  Count := 0;

  for I := 0 to cxViewFirst.DataController.RecordCount - 1 do
  begin
    if cxViewFirst.DataController.Values[I, cxColFirstSel.Index] then
    begin
      if not dmCharge.DelCharge(GetCharge(cxViewFirst, I), ErrMsg) then
      begin
        GMessageBox(Format('삭제에 실패하였습니다.'#13#10'다시시도 바랍니다.'#13#10'(오류: %s)', [ErrMsg]), CDMSE);
        Exit;
      end;
      Inc(Count);
    end;
  end;

  if Count = 0 then
  begin
    GMessageBox('삭제하실 항목을 선택해 주세요.', CDMSE);
    Exit;
  end;

  Result := True;
end;

function TFrm_JON018.DeleteViewTable: Boolean;
var
  I, Count: Integer;
  ErrMsg: string;
begin
  Result := False;
  Count := 0;

  for I := 0 to cxViewTable.DataController.RecordCount - 1 do
  begin
    if cxViewTable.DataController.Values[I, cxColTableSel.Index] then
    begin
      if not dmCharge.DelCharge(GetCharge(cxViewTable, I), ErrMsg) then
      begin
        GMessageBox(Format('삭제에 실패하였습니다.'#13#10'다시시도 바랍니다.'#13#10'(오류: %s)', [ErrMsg]), CDMSE);
        Exit;
      end;
      Inc(Count);
    end;
  end;

  if Count = 0 then
  begin
    GMessageBox('삭제하실 항목을 선택해 주세요.', CDMSE);
    Exit;
  end;

  Result := True;
end;

function TFrm_JON018.DeleteViewTerm: Boolean;
var
  I, Count: Integer;
  ErrMsg: string;
begin
  Result := False;

  Count := 0;

  for I := 0 to cxViewTerm.DataController.RecordCount - 1 do
  begin
    if cxViewTerm.DataController.Values[I, cxColTermSel.Index] then
    begin
      if not dmCharge.DelCharge(GetCharge(cxViewTerm, I), ErrMsg) then
      begin
        GMessageBox(Format('삭제에 실패하였습니다.'#13#10'다시시도 바랍니다.'#13#10'(오류: %s)', [ErrMsg]), CDMSE);
        Exit;
      end;
      Inc(Count);
    end;
  end;

  if Count = 0 then
  begin
    GMessageBox('삭제하실 항목을 선택해 주세요.', CDMSE);
    Exit;
  end;
  
  Result := True;
end;

procedure TFrm_JON018.SelectAll(AView: TcxGridTableView;
  ACol: TcxGridColumn);
var
  I: Integer;
begin
  for I := 0 to AView.DataController.RecordCount - 1 do
    AView.DataController.Values[I, ACol.Index] := ACol.Caption = '선택';

  ACol.Caption := IfThen(ACol.Caption = '선택', '해제', '선택');
end;

procedure TFrm_JON018.cxColTermSelHeaderClick(Sender: TObject);
begin
  SelectAll(cxViewTerm, TcxGridColumn(Sender));
end;

procedure TFrm_JON018.AddViewFirstDetail(AIndex: Integer;
	ACharge: TFirstDetailCharge);
var
	Idx, i : Integer;
	Node: TcxTreeListNode;
	bCheck: Boolean;
begin
	Idx := cxViewFirstDetail.DataController.AppendRecord;
	cxViewFirstDetail.DataController.Values[Idx, 0] := False;
	cxViewFirstDetail.DataController.Values[Idx, 1] := ACharge.GetAreaType;
	cxViewFirstDetail.DataController.Values[Idx, 2] := ACharge.GetStAreaMin;
	cxViewFirstDetail.DataController.Values[Idx, 3] := ACharge.GetEdAreaMin;
	cxViewFirstDetail.DataController.Values[Idx, 4] := ACharge.Pay;
	cxViewFirstDetail.DataController.Values[Idx, 5] := IntToStr(AIndex);

	if ACharge.GetStAreaMin <> '' then
	begin
		cxTreeFirstDetail.BeginUpdate;
		if cxTreeFirstDetail.Root.Count = 0 then
		begin
			Node := cxTreeFirstDetail.Root.AddChild;
			bCheck := True;
		end
		else
			bCheck := False;
		for i := 0 to cxTreeFirstDetail.Root.Count - 1 do
		begin
			if cxTreeFirstDetail.Root.Items[i].Values[2] = 	ACharge.GetStAreaMin then
			begin
				Node := cxTreeFirstDetail.Root.Items[i].AddChild;
				bCheck := True;
				break;
			end;
		end;
		if not bCheck then
			Node := cxTreeFirstDetail.Root.AddChild;
		Node.Values[0] := False; // IntToStr(i+1);
		Node.Values[1] := ACharge.GetAreaType;
		Node.Values[2] := ACharge.GetStAreaMin;
		Node.Values[3] := ACharge.GetEdAreaMin;
		Node.Values[4] := ACharge.Pay;
		Node.Values[5] := IntToStr(AIndex);
		cxTreeFirstDetail.EndUpdate;
	end;
	cxTreeFirstDetail.FullExpand;

end;

function TFrm_JON018.SaveViewFirstDetail: Boolean;
var
	I, j,  Count: Integer;
	ErrMsg: string;
	Charge: TFirstDetailCharge;

  ANode : TcxTreeListNode;
begin
	Result := False;

  // Validate check
  Count := 0;

	for i := 0 to cxTreeFirstDetail.Count - 1 do
	begin
		if cxTreeFirstDetail.Items[i].Values[0] then
		begin
			if (cxTreeFirstDetail.Items[i].Values[4] = null) or (cxTreeFirstDetail.Items[i].Values[4] < 0) then
			begin
        GMessageBox('요금을 입력해 주세요.', CDMSE);
        Exit;
      end;
      Inc(Count);
    end;

    ANode := cxTreeFirstDetail.Items[i];
    for j := 0 to ANode.Count - 1 do
    begin
      if ANode.Items[j].Values[0] then
      begin
    		if (ANode.Items[j].Values[4] = null) or (ANode.Items[j].Values[4] < 0) then
		    begin
          GMessageBox('요금을 입력해 주세요.', CDMSE);
          Exit;
        end;
        Inc(Count);
      end;
    end;
  end;

  if Count = 0 then
  begin
    GMessageBox('변경하실 항목을 선택해 주세요.', CDMSE);
    Exit;
	end;

	for I := 0 to cxTreeFirstDetail.Count - 1 do
	begin
		if cxTreeFirstDetail.Items[i].Values[0] then
		begin
			Charge := TFirstDetailCharge(TCharge(FChargeList.Objects[cxTreeFirstDetail.Items[i].Values[5]]));
			Charge.Pay := cxTreeFirstDetail.Items[i].Values[4];

			Try
				if (Charge.StArea.X <> '') and (Charge.StArea.Y <> '') and (Charge.StArea.POI <> '') then
					proc_Save_Area(Charge.StArea.Si, Charge.StArea.Gu, Charge.StArea.Dong, Charge.StArea.POI, Charge.StArea.X, Charge.StArea.Y);

				if (Charge.EdArea.X <> '') and (Charge.EdArea.Y <> '') and (Charge.EdArea.POI <> '')then
					proc_Save_Area(Charge.EdArea.Si, Charge.EdArea.Gu, Charge.EdArea.Dong, Charge.EdArea.POI, Charge.EdArea.X, Charge.EdArea.Y);
			except
				GMessageBox('로컬POI저장에 실패하였습니다.', CDMSE);
			end;

			if not SaveCharge(Charge, chkMultiSame.Checked, ErrMsg) then
			begin
				GMessageBox(Format('저장에 실패하였습니다.'#13#10'다시시도 바랍니다.'#13#10'(오류: %s)', [ErrMsg]), CDMSE);
				Exit;
			end;
    end;

    ANode := cxTreeFirstDetail.Items[i];
    for j := 0 to ANode.Count - 1 do
    begin
      if ANode.Items[j].Values[0] then
      begin
    		Charge := TFirstDetailCharge(TCharge(FChargeList.Objects[ANode.Items[j].Values[5]]));
    		Charge.Pay := ANode.Items[j].Values[4];
    		Try
    			if (Charge.StArea.X <> '') and (Charge.StArea.Y <> '') and (Charge.StArea.POI <> '') then
    				proc_Save_Area(Charge.StArea.Si, Charge.StArea.Gu, Charge.StArea.Dong, Charge.StArea.POI, Charge.StArea.X, Charge.StArea.Y);

    			if (Charge.EdArea.X <> '') and (Charge.EdArea.Y <> '') and (Charge.EdArea.POI <> '')then
    				proc_Save_Area(Charge.EdArea.Si, Charge.EdArea.Gu, Charge.EdArea.Dong, Charge.EdArea.POI, Charge.EdArea.X, Charge.EdArea.Y);
    		except
    			GMessageBox('로컬POI저장에 실패하였습니다.', CDMSE);
    		end;

    		if not SaveCharge(Charge, chkMultiSame.Checked, ErrMsg) then
    		begin
    			GMessageBox(Format('저장에 실패하였습니다.'#13#10'다시시도 바랍니다.'#13#10'(오류: %s)', [ErrMsg]), CDMSE);
    			Exit;
    		end;
      end;
    end;
	end;

	Result := True;
end;

procedure TFrm_JON018.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON018.proc_Save_Area(ASi, AGu, ADong, APOI, AstX, AstY: String);
var
  st_List : TStringList;
  sTemp, sTemp1, sPOI: string;
begin
	st_List := TStringList.Create;
  try
    st_List.Clear;
		sTemp := StringReplace(APOI, ' ', '', [rfReplaceAll]);  // 공백제거후 저장  20130514 LYB

		if pos('#', sTemp) > 0 then
			sTemp := copy(sTemp, pos('#', sTemp) + 1, length(sTemp) - pos('#', sTemp));
		if pos(']', sTemp) > 0 then
			sTemp := copy(sTemp, pos(']', sTemp) + 1, length(sTemp) - pos(']', sTemp));
		if pos('$', sTemp) > 0 then
			sTemp := copy(sTemp, pos('$', sTemp) + 1, length(sTemp) - pos('$', sTemp));
		if pos('-', sTemp) > 0 then
			sTemp := copy(sTemp, pos('-', sTemp) + 1, length(sTemp) - pos('-', sTemp));

		sTemp1 := ASi + '|' + AGu + '|' + ADong + '|' + sTemp + '|' + '' + '|' + AstX + '|' + AstY;

		if FileExists(DBDIRECTORY + 'LOCAL_MAP_NEW.DAT') then
			st_List.LoadFromFile(DBDIRECTORY + 'LOCAL_MAP_NEW.DAT');

		sPOI := sTemp1 + '|' + '999';    // 20130508  LYB 수정  로컬 저장 후 mySQL변환시 저장 안되는 문제 해결

		if st_List.IndexOf(sPOI) < 0 then
    begin
      st_List.Add(sPOI);
      // 사용자 직접입력 정보 저장. CDS.
			GT_MAPLocal.slCity.Add(ASi); // 시도
			GT_MAPLocal.slWard.Add(AGu); // 시군구
			GT_MAPLocal.slStre.Add(ADong); // 읍면동
			GT_MAPLocal.slSSub.Add(sTemp); // 세부지명
//        GT_MAPLocal.slSPOI.Add(cxtStartAreaDetail.Text); // 인근POI
			GT_MAPLocal.slSPOI.Add(''); // 인근POI
			GT_MAPLocal.slMapX.Add(AstX); // X 좌표
			GT_MAPLocal.slMapY.Add(AstY); // Y 좌표
		end
		else
    begin
      st_list.Delete(st_List.IndexOf(sPOI));
      st_List.Add(sPOI);
    end;
		st_List.SaveToFile(DBDIRECTORY + 'LOCAL_MAP_NEW.DAT');
	finally
		FreeAndNil(st_List);
	end;
end;

function TFrm_JON018.DeleteViewFirstDetail: Boolean;
var
	I, j, Count: Integer;
	ErrMsg: string;
	Charge: TFirstDetailCharge;

  ANode : TcxTreeListNode;
begin
	Result := False;

	Count := 0;

	for i := 0 to cxTreeFirstDetail.Count - 1 do
	begin
		if cxTreeFirstDetail.Items[i].Values[0] then
		begin
			Charge := TFirstDetailCharge(TCharge(FChargeList.Objects[cxTreeFirstDetail.Root.Items[i].Values[5]]));
			if not dmCharge.DelCharge(Charge, ErrMsg) then
			begin
				GMessageBox(Format('삭제에 실패하였습니다.'#13#10'다시시도 바랍니다.'#13#10'(오류: %s)', [ErrMsg]), CDMSE);
				Exit;
			end;
			Inc(Count);
		end;

    ANode := cxTreeFirstDetail.Items[i];
    for j := 0 to ANode.Count - 1 do
    begin
  		if ANode.Items[j].Values[0] then
  		begin
  			Charge := TFirstDetailCharge(TCharge(FChargeList.Objects[ANode.Items[j].Values[5]]));
  			if not dmCharge.DelCharge(Charge, ErrMsg) then
  			begin
  				GMessageBox(Format('삭제에 실패하였습니다.'#13#10'다시시도 바랍니다.'#13#10'(오류: %s)', [ErrMsg]), CDMSE);
  				Exit;
  			end;
  			Inc(Count);
      end;
    end;
	end;

	if Count = 0 then
	begin
		GMessageBox('삭제하실 항목을 선택해 주세요.', CDMSE);
		Exit;
	end;

	Result := True;
end;

procedure TFrm_JON018.cxTreeFirstDetailColumnHeaderClick(
  Sender: TcxCustomTreeList; AColumn: TcxTreeListColumn);
var i, AIndex : integer;
	aChk : Boolean;
begin
	AIndex := AColumn.ItemIndex;
	if AIndex = 0 then
	begin
		aChk := cxTreeFirstDetail.Root.Items[0].Values[0];
		for i := 0 to cxTreeFirstDetail.Root.Count - 1 do
		begin
			if aChk then
				cxTreeFirstDetail.Root.Items[i].Values[0] := False
			else
				cxTreeFirstDetail.Root.Items[i].Values[0] := True;
		end
	end;
end;

procedure TFrm_JON018.cxTreeFirstDetailStylesGetContentStyle(
  Sender: TcxCustomTreeList; AColumn: TcxTreeListColumn; ANode: TcxTreeListNode;
  var AStyle: TcxStyle);
var
	Charge: TFirstDetailCharge;
	fNodeIndex : integer ;
begin
	if ANode.Values[5] = null then exit;

	Charge := TFirstDetailCharge(FChargeList.Objects[ANode.Values[5]]);
	if Charge.No = 0 then
		AStyle := cxStyleNew;
	fNodeIndex := ANode.Index;
end;

procedure TFrm_JON018.cxTreeListColumn1PropertiesChange(Sender: TObject);
var
  AEditValue: Boolean;

  procedure ProcessChildren(N: TcxTreeListNode; Col: TcxTreeListColumn);
  var
    I: Integer;
  begin
    for I := 0 to N.Count - 1 do
    begin
      N[I].Values[Col.ItemIndex] := AEditValue;
      ProcessChildren(N[I], Col);
    end;
  end;
var
	Col: TcxTreeListColumn;
begin
	cxTreeFirstDetail.BeginUpdate;
	try
		Col := cxTreeFirstDetail.FocusedColumn;
		AEditValue := (Sender as TcxCheckBox).Checked;
		ProcessChildren(Col.TreeList.FocusedNode, Col);
	finally
		cxTreeFirstDetail.EndUpdate;
	end;
end;

procedure TFrm_JON018.cxColFirstSelHeaderClick(Sender: TObject);
begin
  SelectAll(cxViewFirst, TcxGridColumn(Sender));
end;

procedure TFrm_JON018.cxColTableSelHeaderClick(Sender: TObject);
begin
  SelectAll(cxViewTable, TcxGridColumn(Sender));
end;

procedure TFrm_JON018.cxColDistSelHeaderClick(Sender: TObject);
begin
  SelectAll(cxViewDistance, TcxGridColumn(Sender));
end;

end.

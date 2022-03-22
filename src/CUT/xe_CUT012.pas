unit xe_CUT012;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MSXML2_TLB, xe_structure, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxLabel,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxMemo, cxCheckBox,
  cxMaskEdit, cxDropDownEdit, cxTextEdit, cxGroupBox, cxButtons, Vcl.ExtCtrls,
  System.Math, System.StrUtils, dxSkinsCore, dxSkinscxPCPainter, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark,
  dxSkinOffice2007Silver;

const
  GRID_ROWINDEX_NAME    = 00;
  GRID_ROWINDEX_TYPE    = 01;
  GRID_ROWINDEX_LEVEL   = 02;
  GRID_ROWINDEX_BUBIN   = 03;
  GRID_ROWINDEX_BRTEL   = 04;
  GRID_ROWINDEX_SSN     = 05;
  GRID_ROWINDEX_OKCB    = 06;
  GRID_ROWINDEX_MEMO    = 07;
  GRID_ROWINDEX_WKMEMO  = 08;
  GRID_ROWINDEX_START   = 09;
  GRID_ROWINDEX_DEST    = 10;

type
  TICusttemRow = (cirName, cirType, cir);

  TFrm_CUT012 = class(TForm)
    pnl1: TPanel;
    btnSave: TcxButton;
    lblEndAreaInfo: TcxLabel;
    lblEndArea: TcxLabel;
    lbl32: TcxLabel;
    lblStartArea: TcxLabel;
    lblStartAreaInfo: TcxLabel;
    lblLblStart: TcxLabel;
    lbl29: TcxLabel;
    mmoMemo: TcxMemo;
    lbl30: TcxLabel;
    mmoWkMemo: TcxMemo;
    edtOKC4: TcxTextEdit;
    edtOKC3: TcxTextEdit;
    edtOKC2: TcxTextEdit;
    edtOKC1: TcxTextEdit;
    lbl28: TcxLabel;
    edtSsn: TcxTextEdit;
    lbl27: TcxLabel;
    lbl26: TcxLabel;
    chkBrTelYN: TcxCheckBox;
    cbbLevel: TcxComboBox;
    lbl25: TcxLabel;
    cbbType: TcxComboBox;
    lbl24: TcxLabel;
    edtName: TcxTextEdit;
    lbl22: TcxLabel;
    lbl12: TcxLabel;
    btnRbButton24: TcxButton;
    cbbCuBubin: TcxComboBox;
    btnAddMemo: TcxButton;
    lbl15: TcxLabel;
    PnlTitle: TPanel;
    cxButton1: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    btnSelDelChange: TcxButton;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    edtSourceTel: TcxTextEdit;
    lbl23: TcxLabel;
    btnReload: TcxButton;
    lbl8: TcxLabel;
    lbl9: TcxLabel;
    lbl10: TcxLabel;
    lblSrcDate: TcxLabel;
    lblSrcMile: TcxLabel;
    lblSrcFin: TcxLabel;
    lbl5: TcxLabel;
    edtAppendTel: TcxTextEdit;
    btnSearch: TcxButton;
    lblAddFin: TcxLabel;
    lblAddMile: TcxLabel;
    lblAddDate: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    btnSetAppend: TcxButton;
    btnSetSource: TcxButton;
    cxGroupBox5: TcxGroupBox;
    cxGroupBox6: TcxGroupBox;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxCustMerge: TcxGridBandedTableView;
    cxCustMergeColumn1: TcxGridBandedColumn;
    cxCustMergeColumn2: TcxGridBandedColumn;
    cxCustMergeColumn3: TcxGridBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxCustTel: TcxGridBandedTableView;
    cxGridBandedColumn1: TcxGridBandedColumn;
    cxGridBandedColumn2: TcxGridBandedColumn;
    cxGridBandedColumn3: TcxGridBandedColumn;
    cxGridLevel1: TcxGridLevel;
    Shape8: TShape;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    cxLblActive: TLabel;
    lbl36: TcxLabel;
    lblResult: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnSetSourceClick(Sender: TObject);
    procedure btnSetAppendClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnRbButton24Click(Sender: TObject);
    procedure btnAddMemoClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtAppendTelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnReloadClick(Sender: TObject);
    procedure btnSelDelChangeClick(Sender: TObject);
    procedure cxCustMergeCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edtSsnKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FSeq: string;
    FBrNo: string;
    FKeyNum: string;
    FCustTel: string;
    FSrcData,                 // 콜링고객
    FAddData: TCustInfo;      // 삭제고객

    FStartArea,
    FEndArea: TAreaRec;
    FBubinList: TStringList;

    CustGroup : TCustGroup;

    procedure InitCtrl(bClear : Boolean);
    procedure RequestSourceData(ASeq, ACustTel: string);  // 콜링고객정보 조회
    procedure RequestAppendData(ACustTel: string);        // 삭제고객정보 조회

    procedure DisplaycxCustGrid(AData: TCustInfo; AColumnIndex: Integer);
    procedure DisplaySourceData;  // 콜링고객 정보 표시
    procedure DisplayAppendData;  // 삭제고객 정보 표시

    procedure DisplayAreaInfo;

    procedure PharseCustData(var ADest: TCustInfo; AData: string);  // 서버에서 받은 데이터를 구조체에 넣기

    procedure SetCtrlAll(AData: TCustInfo);

    function GetLevelIndex(ASeq: string): Integer;
    procedure DisplaycxCustTel(AData: TCustInfo; sGubun: String);
  public
    { Public declarations }
    procedure Show(ABrNo, AKeyNum, ASeq, ACustTel: string);
  end;

var
  Frm_CUT012: TFrm_CUT012;

implementation

uses
  xe_GNL, xe_gnl2, xe_gnl3, xe_Func, xe_Dm, xe_Lib, xe_packet, xe_Msg, xe_xml;

{$R *.dfm}

{ TfrmCUT012 }

procedure TFrm_CUT012.FormCreate(Sender: TObject);
var
  Save: Integer;
begin
  // 폼 타이틀 제거..
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
  FBubinList := TStringList.Create;
end;

procedure TFrm_CUT012.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := False;
end;

procedure TFrm_CUT012.FormDestroy(Sender: TObject);
begin
  FBubinList.Free;
  Frm_CUT012 := nil;
end;

procedure TFrm_CUT012.FormShow(Sender: TObject);
begin
  fSetFont(Frm_CUT012, GS_FONTNAME);
end;

procedure TFrm_CUT012.Show(ABrNo, AKeyNum, ASeq, ACustTel: string);
begin
  inherited Show;

  FSeq := ASeq;
  FBrNo := ABrNo;
  FKeyNum := AKeyNum;
  FCustTel := RemoveAll(ACustTel, '-');

  InitCtrl(True);
  RequestSourceData(FSeq, FCustTel);
end;

procedure TFrm_CUT012.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_CUT012.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_CUT012.InitCtrl(bClear : Boolean);
var
  I, iRow : Integer;
begin
  FBubinList.Clear;

  btnSearch.Enabled := True;
  edtAppendTel.Enabled := True;
  btnSetSource.Enabled := False;
  btnSetAppend.Enabled := False;
  btnSave.Enabled := False;

  if bClear then
  begin
    edtSourceTel.Clear;
    edtAppendTel.Clear;
  end;  

  lblSrcFin.Clear;
  lblSrcMile.Clear;
  lblSrcDate.Clear;
  lblAddFin.Clear;
  lblAddMile.Clear;
  lblAddDate.Clear;

  cxCustMerge.DataController.SetRecordCount(0);
  for i := 0 to cxCustMerge.ColumnCount - 1 do
    cxCustMerge.Columns[i].DataBinding.ValueType := 'String';

  cxCustMerge.OptionsView.NoDataToDisplayInfoText := '';

  cxCustMerge.BeginUpdate;
  iRow := cxCustMerge.DataController.AppendRecord;
  cxCustMerge.DataController.Values[iRow, 0] := '고 객 명';
  iRow := cxCustMerge.DataController.AppendRecord;
  cxCustMerge.DataController.Values[iRow, 0] := '고객구분';
  iRow := cxCustMerge.DataController.AppendRecord;
  cxCustMerge.DataController.Values[iRow, 0] := '고객등급';
  iRow := cxCustMerge.DataController.AppendRecord;
  cxCustMerge.DataController.Values[iRow, 0] := '법 인 명';
  iRow := cxCustMerge.DataController.AppendRecord;
  cxCustMerge.DataController.Values[iRow, 0] := '상황실전화';
  iRow := cxCustMerge.DataController.AppendRecord;
  cxCustMerge.DataController.Values[iRow, 0] := '주민/사업자';
  iRow := cxCustMerge.DataController.AppendRecord;
  cxCustMerge.DataController.Values[iRow, 0] := 'OK캐쉬백';
  iRow := cxCustMerge.DataController.AppendRecord;
  cxCustMerge.DataController.Values[iRow, 0] := '상담메모';
  iRow := cxCustMerge.DataController.AppendRecord;
  cxCustMerge.DataController.Values[iRow, 0] := '고객정보';
  iRow := cxCustMerge.DataController.AppendRecord;
  cxCustMerge.DataController.Values[iRow, 0] := '출 발 지';
  iRow := cxCustMerge.DataController.AppendRecord;
  cxCustMerge.DataController.Values[iRow, 0] := '도 착 지';
  cxCustMerge.EndUpdate;

  edtName.Clear;
  cbbType.ItemIndex := -1;
  cbbLevel.ItemIndex := -1;
  cbbCuBubin.Clear;
  chkBrTelYN.Checked := False;
  edtSsn.Clear;
  edtOKC1.Clear;
  edtOKC2.Clear;
  edtOKC3.Clear;
  edtOKC4.Clear;
  mmoMemo.Clear;
  mmoWkMemo.Clear;

  ZeroMemory(@FStartArea, SizeOf(TAreaRec));
  ZeroMemory(@FEndArea, SizeOf(TAreaRec));
  lblStartArea.Clear;
  lblStartAreaInfo.Clear;
  lblEndArea.Clear;
  lblEndAreaInfo.Clear;

  cxCustTel.DataController.SetRecordCount(0);
  for i := 0 to cxCustTel.ColumnCount - 1 do
    cxCustTel.Columns[i].DataBinding.ValueType := 'String';
  cxCustTel.OptionsView.NoDataToDisplayInfoText := '';

  cbbCuBubin.Properties.Items.Clear;
  for I := 0 to GT_BUBIN_INFO.brNo_KeyNum.Count - 1 do
  begin
    if GT_BUBIN_INFO.brNo_KeyNum.Strings[i] = Rpad(FBrNo, 5, ' ') + Rpad(StringReplace(FKeyNum, '-', '', [rfReplaceAll]), 15, ' ') then
    begin
      cbbCuBubin.Properties.Items.Add(Trim(GT_BUBIN_INFO.cbCorpNm[I]) + ' / ' +
                                      Trim(GT_BUBIN_INFO.cbDeptNm[I]));
      FBubinList.Add(GT_BUBIN_INFO.cbcode[I]);
    end;
  end;

  GetCustGroup(FKeyNum, CustGroup);
  cbbLevel.Properties.Items.Clear;  

  for I := 0 to Length(CustGroup.LevelInfo) - 1 do
    cbbLevel.Properties.Items.Add(CustGroup.LevelInfo[I].LevelName);
end;

procedure TFrm_CUT012.RequestSourceData(ASeq, ACustTel: string);
var
  xdom: msDomDocument;
  Param, XmlData, ErrMsg: string;
  ErrCode: Integer;
  lst_Result: IXMLDomNodeList;
begin
  if ASeq <> '' then
    Param := '1│' + ASeq
  else
    Param := Format('%s│%s│%s│%s', ['2', FBrNo, FKeyNum, ACustTel]);

  if not RequestBase(GetSel05('', 'mng_cust.cust_select', '100', Param), XmlData, ErrCode, ErrMsg) then
  begin
    // 조회고객이 없는경우(신규고객)
    if (ASeq = '') and (ErrCode = 1) then
    begin
      SetLength(FSrcData.CustTel, 1);
      FSrcData.CustTel[0] := ACustTel;
      SetLength(FSrcData.SmsYN, 1);
      FSrcData.SmsYN[0] := True;

      DisplaySourceData;
      Exit;
    end;
    GMessagebox(Format('고객정보 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(XmlData) then
    begin
      ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
      Exit;
    end;

    lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
    if lst_Result.item[0].attributes.getNamedItem('Value').Text = '' then
    begin
      SetLength(FSrcData.CustTel, 1);
      FSrcData.CustTel[0] := ACustTel;
      SetLength(FSrcData.SmsYN, 1);
      FSrcData.SmsYN[0] := True;

      DisplaySourceData;
      Exit;
    end;

    // FSrcData에 파싱
    PharseCustData(FSrcData, lst_Result.item[0].attributes.getNamedItem('Value').Text);

    // 화면처리
    DisplaySourceData;

    btnSelDelChange.Enabled := False;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_CUT012.DisplaySourceData;
begin
  edtSourceTel.Text := strtocall(FSrcData.CustTel[0]);

  lblSrcFin.Caption := Format('%d / %d', [FSrcData.FinishCnt, FSrcData.CancelCnt]);
  lblSrcMile.Caption := GetMoneyStr(FSrcData.Mileage);
  lblSrcDate.Caption := FSrcData.LastDate;

  DisplaycxCustGrid(FSrcData, 1);
  btnSetSource.Click;
end;

procedure TFrm_CUT012.RequestAppendData(ACustTel: string);
var
  xdom: msDomDocument;
  Param, XmlData, ErrMsg: string;
  ErrCode: Integer;
  lst_Result: IXMLDomNodeList;
begin
  Param := Format('%s│%s│%s│%s│%s', ['2', FBrNo, FKeyNum, ACustTel, FSrcData.CuSeq]);

  if not RequestBase(GetSel05('', 'mng_cust.cust_select', '100', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('삭제고객정보 조회 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(XmlData) then
    begin
      ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
      Exit;
    end;

    lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
    if lst_Result.item[0].attributes.getNamedItem('Value').Text = '' then
    begin
      GMessagebox(Format('해당 전화번호로 고객을 찾을 수 없습니다.'#13#10'[%s]대표번호:%s, 고객번호:%s', [FBrNo, FKeyNum, ACustTel]), CDMSE);
      Exit;
    end;

    PharseCustData(FAddData, lst_Result.item[0].attributes.getNamedItem('Value').Text);

    DisplayAppendData;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_CUT012.DisplayAppendData;
begin
  lblAddFin.Caption := Format('%d / %d', [FAddData.FinishCnt, FAddData.CancelCnt]);
  lblAddMile.Caption := GetMoneyStr(FAddData.Mileage);
  lblAddDate.Caption := FAddData.LastDate;

  DisplaycxCustGrid(FAddData, 2);

  cxCustTel.DataController.SetRecordCount(0);

  DisplaycxCustTel(FAddData, 'D');
end;

procedure TFrm_CUT012.DisplaycxCustGrid(AData: TCustInfo; AColumnIndex: Integer);
  function _GetCustTypeStr(ACustType: TCustType): string;
  begin
    Result := '';
    if ACustType = ctNormal   then Result := '일반' else
    if ACustType = ctShop     then Result := '업소' else
    if ACustType = ctShopPost then Result := '업소후불' else
    if ACustType = ctBubin    then Result := '법인' else
    if ACustType = ctBad      then Result := '불량';
  end;

  function _GetAreaInfo(AArea: TAreaRec): string;
  begin
    Result := '';
    if AArea.Info = '' then
      Exit;
    Result := Format('%s(%s %s %s %s)', [AArea.Info, AArea.City, AArea.Ward, AArea.Street, AArea.Detail]);
  end;
begin
  cxCustMerge.DataController.Values[00, AColumnIndex] := AData.Name;
  cxCustMerge.DataController.Values[01, AColumnIndex] := _GetCustTypeStr(AData.CustType);
  cxCustMerge.DataController.Values[02, AColumnIndex] := GetCustLevelName(FKeyNum, AData.LevelCD, CustGroup);
  cxCustMerge.DataController.Values[03, AColumnIndex] := GetBubinInfo(FBrNo, AData.BubinCD);
  cxCustMerge.DataController.Values[04, AColumnIndex] := IfThen(AData.IsBrTelUse, '상황실로 전화', '');
  cxCustMerge.DataController.Values[05, AColumnIndex] := AData.SSN;
  cxCustMerge.DataController.Values[06, AColumnIndex] := AData.OKCashBack;
  cxCustMerge.DataController.Values[07, AColumnIndex] := AData.Memo;
  cxCustMerge.DataController.Values[08, AColumnIndex] := AData.WkMemo;
  cxCustMerge.DataController.Values[09, AColumnIndex] := _GetAreaInfo(AData.StartArea);
  cxCustMerge.DataController.Values[10, AColumnIndex] := _GetAreaInfo(AData.EndArea);
end;

procedure TFrm_CUT012.DisplaycxCustTel(AData: TCustInfo; sGubun : String);
Var i, j, iRow : Integer;
begin
  for i := 0 to cxCustTel.DataController.RowCount - 1  do
  begin
    for j := 0 to Length(AData.CustTel) - 1 do
      if cxCustTel.DataController.Values[i, 0] = AData.CustTel[j] then Exit;
  end;

  if not ((cxCustTel.DataController.RowCount = 2) and (cxCustTel.DataController.Values[0, 0] = '')) then
    iRow := cxCustTel.DataController.AppendRecord;

  cxCustTel.DataController.Values[cxCustTel.DataController.RowCount -1 , 0] := AData.CustTel[I];
  cxCustTel.DataController.Values[cxCustTel.DataController.RowCount -1, 1] := IfThen(AData.SmsYN[I], 'y', 'n');
  cxCustTel.DataController.Values[cxCustTel.DataController.RowCount -1, 2] := sGubun;
end;

procedure TFrm_CUT012.SetCtrlAll(AData: TCustInfo);
var
  ia : Integer;
  sContent : String;
	ls_Rcrd : TStringList;
begin
  edtName.Text := AData.Name;
  cbbType.ItemIndex := IfThen(AData.CustType = ctNormal, 0, IfThen(AData.CustType = ctShop, 1, IfThen(ADAta.CustType = ctBubin, 2, -1)));
  cbbLevel.ItemIndex := GetLevelIndex(AData.LevelCD);
  cbbCuBubin.ItemIndex := FBubinList.IndexOf(AData.BubinCD + ',' + FBrNo);
  chkBrTelYN.Checked := AData.IsBrTelUse;
  edtSsn.Text := AData.SSN;
  if Length(AData.OKCashBack) = 16 then
  begin
    edtOKC1.Text := Copy(AData.OKCashBack, 1, 4);
    edtOKC2.Text := Copy(AData.OKCashBack, 5, 4);
    edtOKC3.Text := Copy(AData.OKCashBack, 9, 4);
    edtOKC4.Text := Copy(AData.OKCashBack, 13, 4);
  end;

	sContent := StringReplace(AData.Memo, '|', '¶',  [rfReplaceAll]);
  if Trim(sContent) <> '' then
  begin
		ls_Rcrd := TStringList.Create;
    try
			GetTextSeperationEx2('¶', sContent, ls_Rcrd);
			for ia := 0 to ls_Rcrd.Count - 1 do
			begin
        if ia = 0 then
          mmoMemo.Text := ls_Rcrd[ia]
        else
          mmoMemo.Text := mmoMemo.Text + #13#10 + ls_Rcrd[ia];
			end;
    finally
      FreeAndNil(ls_Rcrd);
    end;
  end;

	sContent := StringReplace(AData.WkMemo, '|', '¶',  [rfReplaceAll]);
  if Trim(sContent) <> '' then
  begin
		ls_Rcrd := TStringList.Create;
    try
			GetTextSeperationEx2('¶', sContent, ls_Rcrd);
			for ia := 0 to ls_Rcrd.Count - 1 do
			begin
        if ia = 0 then
          mmoWkMemo.Text := ls_Rcrd[ia]
        else
          mmoWkMemo.Text := mmoWkMemo.Text + #13#10 + ls_Rcrd[ia];
			end;
    finally
      FreeAndNil(ls_Rcrd);
    end;
  end;

  FStartArea  := AData.StartArea;
  FEndArea    := AData.EndArea;
  DisplayAreaInfo;
end;

procedure TFrm_CUT012.btnSetSourceClick(Sender: TObject);
begin
  SetCtrlAll(FSrcData);
end;

procedure TFrm_CUT012.cxCustMergeCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);

  function _GetAreaInfo(AArea: TAreaRec): string;
  begin
    Result := '';
    if AArea.Info = '' then
      Exit;
    Result := Format('%s %s %s %s', [AArea.City, AArea.Ward, AArea.Street, AArea.Detail]);
  end;

var
  iChoiceRow : Integer;
  Info: TCustInfo;
begin
  if cxCustMerge.Columns[ACellViewInfo.Item.FocusedCellViewInfo.Item.Index].Caption = '선 택 정 보' then
    Info := FSrcData
  else
  if cxCustMerge.Columns[ACellViewInfo.Item.FocusedCellViewInfo.Item.Index].Caption = '삭 제 정 보' then
    Info := FAddData;

  iChoiceRow := cxCustMerge.DataController.FocusedRecordIndex;
  // 클릭한 레코드 인덱스에 따라 정보 처리
  case iChoiceRow of
  GRID_ROWINDEX_NAME:
    edtName.Text := Info.Name;
  GRID_ROWINDEX_TYPE:
    begin
      cbbType.ItemIndex := IfThen(Info.CustType = ctNormal, 0, IfThen(Info.CustType = ctShop, 1, IfThen(Info.CustType = ctBubin, 2, -1)));
      if cbbType.ItemIndex = 2 then
        cbbCuBubin.ItemIndex := FBubinList.IndexOf(Info.BubinCD + ',' + FBrNo)
      else
        cbbCuBubin.ItemIndex := -1;
    end;
  GRID_ROWINDEX_LEVEL:
    cbbLevel.ItemIndex := GetLevelIndex(Info.LevelCD);
  GRID_ROWINDEX_BUBIN:
    cbbCuBubin.ItemIndex := FBubinList.IndexOf(Info.BubinCD + ',' + FBrNo);
  GRID_ROWINDEX_BRTEL:
    chkBrTelYN.Checked := Info.IsBrTelUse;
  GRID_ROWINDEX_SSN:
    edtSsn.Text := Info.SSN;
  GRID_ROWINDEX_OKCB:
    ParseOKCB(Info.OKCashBack, TEdit(edtOkC1), TEdit(edtOkC2), TEdit(edtOkC3), TEdit(edtOkC4));
  GRID_ROWINDEX_MEMO:
    mmoMemo.Text := Info.Memo;
  GRID_ROWINDEX_WKMEMO:
    mmoWkMemo.Text := Info.WkMemo;
  GRID_ROWINDEX_START:
    begin
      FStartArea := Info.StartArea;
      DisplayAreaInfo;
    end;
  GRID_ROWINDEX_DEST:
    begin
      FEndArea := Info.EndArea;
      DisplayAreaInfo;
    end;
  end;

end;

procedure TFrm_CUT012.btnSetAppendClick(Sender: TObject);
begin
  SetCtrlAll(FAddData);
end;

procedure TFrm_CUT012.btnSearchClick(Sender: TObject);
begin
  if edtAppendTel.Text = '' then
  begin
    GMessagebox('전화번호를 입력해 주세요.', CDMSE);
    edtAppendTel.SetFocus;
    Exit;
  end;

  RequestAppendData(RemoveAll(edtAppendTel.Text, '-'));

  if (FAddData.CuSeq <> '') or (Length(FAddData.CustTel) > 0) then
  begin
    btnSearch.Enabled := False;
    edtAppendTel.Enabled := False;

    btnSelDelChange.Enabled := True;
    btnSetSource.Enabled := True;
    btnSetAppend.Enabled := True;
    btnSave.Enabled := True;
  end;
end;

procedure TFrm_CUT012.PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_CUT012.PharseCustData(var ADest: TCustInfo; AData: string);
var
  I: Integer;
  ls_Rcrd, TelList: TStringList;
begin
  ls_Rcrd := TStringList.Create;
  try
    GetTextSeperationEx('│', AData, ls_Rcrd);

    ADest.CuSeq    := ls_Rcrd[0];
    ADest.Name     := ls_Rcrd[4];
    ADest.CustType := TCustType(StrToIntDef(ls_Rcrd[7], 0));;
    ADest.LevelCD  := ls_Rcrd[16];
    ADest.BubinCD  := ls_Rcrd[8];
    ADest.IsBrTelUse := (ls_Rcrd[15] = 'y');
    TelList := TStringList.Create;
    try
      TelList.Delimiter := ',';
      TelList.DelimitedText := ls_Rcrd[2];

      SetLength(ADest.CustTel, TelList.Count);
      for I := 0 to TelList.Count - 1 do
        ADest.CustTel[I] := RemoveAll(TelList[I], '-');

      TelList.Clear;
      TelList.DelimitedText := ls_Rcrd[3];
      SetLength(ADest.SmsYN, TelList.Count);
      for I := 0 to TelList.Count - 1 do
        ADest.SmsYN[I] := (TelList[I] = 'y');
    finally
      TelList.Free;
    end;

    ADest.SSN := ls_Rcrd[6];
    ADest.OKCashBack   := ls_Rcrd[17];
    ADest.FinishCnt    := StrToIntDef(ls_Rcrd[10], 0);
    ADest.CancelCnt    := StrToIntDef(ls_Rcrd[11], 0);
    ADest.LastDate     := Date8to10(ls_Rcrd[9]);
    ADest.Mileage      := StrToIntDef(ls_Rcrd[13], 0);
    ADest.MileUseCount := StrToIntDef(ls_Rcrd[14], 0);
    ADest.Memo         := ls_Rcrd[32];
    ADest.WkMemo       := ls_Rcrd[33];
    ADest.StartArea.City   := ls_Rcrd[18];
    ADest.StartArea.Ward   := ls_Rcrd[19];
    ADest.StartArea.Street := ls_Rcrd[20];
    ADest.StartArea.Detail := ls_Rcrd[21];
    ADest.StartArea.Info   := ls_Rcrd[22];
    ADest.StartArea.X      := ls_Rcrd[23];
    ADest.StartArea.Y      := ls_Rcrd[24];
    ADest.EndArea.City     := ls_Rcrd[25];
    ADest.EndArea.Ward     := ls_Rcrd[26];
    ADest.EndArea.Street   := ls_Rcrd[27];
    ADest.EndArea.Detail   := ls_Rcrd[28];
    ADest.EndArea.Info     := ls_Rcrd[29];
    ADest.EndArea.X        := ls_Rcrd[30];
    ADest.EndArea.Y        := ls_Rcrd[31];
  finally
    ls_Rcrd.Free;
  end;
end;

procedure TFrm_CUT012.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_CUT012.btnRbButton24Click(Sender: TObject);
Var iSelRow : Integer;
begin
  iSelRow := cxCustTel.DataController.FocusedRecordIndex;
  if iSelRow = -1 then Exit;

  if iSelRow = 0 then
  begin
    GMessagebox('더 이상 삭제할 수 없습니다.', CDMSE);
    Exit;
  end;

  if cxCustTel.DataController.Values[iSelRow, 2] = 'C' then
  begin
    if GMessagebox('선택(유지) 고객을 삭제 하시겠습니까?', cdmsq) <> idok then Exit;
     cxCustTel.DataController.DeleteRecord(iSelRow);
  end else
  begin
     cxCustTel.DataController.DeleteRecord(iSelRow);
  end;
end;

function TFrm_CUT012.GetLevelIndex(ASeq: string): Integer;
var i : Integer;
begin
  Result := -1;
  for I := 0 to Length(CustGroup.LevelInfo) - 1 do
  begin
    if CustGroup.LevelInfo[I].LevelSeq = ASeq then
    begin
      Result := cbbLevel.Properties.Items.IndexOf(CustGroup.LevelInfo[I].LevelName);
      Break;
    end;
  end;
end;

procedure TFrm_CUT012.DisplayAreaInfo;
  function _GetAreaInfo(AArea: TAreaRec): string;
  begin
    Result := '';
    if AArea.Info = '' then
      Exit;
    Result := Format('%s %s %s %s', [AArea.City, AArea.Ward, AArea.Street, AArea.Detail]);
  end;
begin
  lblStartArea.Caption := FStartArea.Info;
  lblStartAreaInfo.Caption := _GetAreaInfo(FStartArea);
  lblEndArea.Caption := FEndArea.Info;
  lblEndAreaInfo.Caption := _GetAreaInfo(FEndArea);
end;

procedure TFrm_CUT012.btnAddMemoClick(Sender: TObject);
var
  IsExist: Boolean;
  Tel: string;
  I: Integer;
begin
  // 010 외의 전화번호만 있는지 확인(수동 처리 안내)
  IsExist := False;
  for I := 0 to cxCustTel.DataController.RowCount - 1 do
  begin
    Tel := cxCustTel.DataController.Values[i, 0];
    if (Length(Tel) > 3) and (Copy(Tel, 1, 3) = '010') then
    begin
      IsExist := True;
      Break;
    end;
  end;
  if (not IsExist) then
  begin
    GMessagebox('010외의 전화번호만 있습니다. 수동으로 선택 후 "선택전화번호삭제" 버튼을 눌러주세요.', CDMSE);
    Exit;
  end;

  // 010 외의 전화번호 있는지 확인
  IsExist := False;
  for I := 0 to cxCustTel.DataController.RowCount - 1 do
  begin
    Tel := cxCustTel.DataController.Values[i, 0];
    if (Length(Tel) > 3) and (Copy(Tel, 1, 3) <> '010') then
    begin
      IsExist := True;
      Break;
    end;
  end;
  if (not IsExist) then
  begin
    Exit;
  end;
    
  for I := cxCustTel.DataController.RowCount - 1 downto 0 do
  begin
    Tel := cxCustTel.DataController.Values[i, 0];
    if (Length(Tel) > 3) and (Copy(Tel, 1, 3) <> '010') then
      cxCustTel.DataController.DeleteRecord(i);
  end;
end;

procedure TFrm_CUT012.btnSaveClick(Sender: TObject);
  function _GetTelGridData(ACol: Integer): string;
  var
    I: Integer;
  begin
    Result := '';
    for I := 0 to cxCustTel.DataController.RowCount - 1 do
      Result := Result + IfThen(Result = '', '', ',') + cxCustTel.DataController.Values[i, ACol];

    for I := 0 to Length(FSrcData.CustTel) - 1 do
      if ACol = 0 then
        Result := Result + IfThen(Result = '', '', ',') + FSrcData.CustTel[I]
      else
      if ACol = 1 then
        Result := Result + IfThen(Result = '', '', ',') + IfThen(FSrcData.SmsYN[I], 'y', 'n');

    Result := RemoveAll(Result, '-');
  end;

	function _GetTypeCD: string;
	begin
    case cbbType.ItemIndex of
      0: Result := IntToStr(Ord(ctNormal));
      1: Result := IntToStr(Ord(ctShop));
			2: Result := IntToStr(Ord(ctBubin));
    else Result := '0';
    end;
  end;

  function _GetBubinCD: string;
  begin
    Result := '';
    if cbbType.ItemIndex = 2 then
    begin
      if cbbCuBubin.ItemIndex = -1 then
        Exit;
      Result := FBubinList[cbbCuBubin.ItemIndex];
      Result := Copy(Result, 1, Pos(',', Result) - 1);
    end;
  end;

  function _GetOKCashBack: string;
  begin
    Result := edtOKC1.Text + edtOKC2.Text + edtOKC3.Text + edtOKC4.Text;
    if Length(Result) <> 16 then
      Result := '';
  end;

  function _GetLevelSeq: string;
  var i : Integer;
  begin
    Result := '';
    for I := 0 to Length(CustGroup.LevelInfo) - 1 do
    begin
      if CustGroup.LevelInfo[I].LevelName = cbbLevel.Text then
      begin
        Result := CustGroup.LevelInfo[I].LevelSeq;
        Break;
      end;
    end;
  end;
var
  Param, ErrMsg, XmlData, sContent : string;
  ErrCode: Integer;
begin
	if Not func_EucKr_Check(mmoMemo, 0) then Exit;
	if Not func_EucKr_Check(mmoWkMemo, 0) then Exit;

	Param := FSrcData.CuSeq;                                     //  1 콜링고객 일련번호
  Param := Param + '│' + FAddData.CuSeq;                       //  2 삭제고객 일련번호
  Param := Param + '│' + _GetTelGridData(0);                   //  3 고객전화번호
  Param := Param + '│' + _GetTelGridData(1);                   //  4 SMS수신거부
  Param := Param + '│' + edtName.Text;                         //  5 고객명
  Param := Param + '│' + '';                                   //  6 대표자명
  Param := Param + '│' + edtSsn.Text;                          //  7 사업자/주민
	Param := Param + '│' + _GetTypeCD;                           //  8 고객구분
  Param := Param + '│' + _GetBubinCD;                          //  9 법인코드
  Param := Param + '│' + _GetOKCashBack;                       // 10 OK캐쉬백
  Param := Param + '│' + IfThen(chkBrTelYN.Checked, 'y', 'n'); // 11 상황실전화보기
  Param := Param + '│' + _GetLevelSeq;                         // 12 고객등급코드
  Param := Param + '│' + FStartArea.City;                      // 13 출발지
  Param := Param + '│' + FStartArea.Ward;                      // 14
  Param := Param + '│' + FStartArea.Street;                    // 15
  Param := Param + '│' + FStartArea.Detail;                    // 16
  Param := Param + '│' + FStartArea.Info;                      // 17
  Param := Param + '│' + FStartArea.X;                         // 18
  Param := Param + '│' + FStartArea.Y;                         // 19
  Param := Param + '│' + FEndArea.City;                        // 20 도착지
  Param := Param + '│' + FEndArea.Ward;                        // 21
  Param := Param + '│' + FEndArea.Street;                      // 22
  Param := Param + '│' + FEndArea.Detail;                      // 23
  Param := Param + '│' + FEndArea.Info;                        // 24
  Param := Param + '│' + FEndArea.X;                           // 25
  Param := Param + '│' + FEndArea.Y;                           // 26

	sContent := '';
	sContent := ReplaceAll(Trim(mmoMemo.Text), #$D#$A, '¶');
	sContent := ReplaceAll(sContent, #13#10, '¶');
	sContent := ReplaceAll(sContent, #10#13, '¶');
	sContent := StringReplace(sContent, '|', '¶', [rfReplaceAll]);

  Param := Param + '│' + En_Coding(sContent);                         // 27 메모

	sContent := '';
	sContent := ReplaceAll(Trim(mmoWkMemo.Text), #$D#$A, '¶');
	sContent := ReplaceAll(sContent, #13#10, '¶');
	sContent := ReplaceAll(sContent, #10#13, '¶');
	sContent := StringReplace(sContent, '|', '¶', [rfReplaceAll]);

  Param := Param + '│' + En_Coding(sContent);                       // 28 기사메모

  if not RequestBase(GetCallable05('', 'mng_cust.cust_merge', En_Coding(Param)), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('고객정보 병합에  실패했습니다.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

  GMessagebox(GetXmlResult(XmlData), CDMSI);
  Close;
end;

procedure TFrm_CUT012.edtAppendTelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Ord(Key) = VK_RETURN) then
    btnSearch.Click;
end;

procedure TFrm_CUT012.edtSsnKeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8, #22] then      //Ctrl+v = #22 or #$16
	else
		key := #0;
end;

procedure TFrm_CUT012.btnReloadClick(Sender: TObject);
begin
  InitCtrl(True);
  RequestSourceData(FSeq, RemoveAll(edtSourceTel.Text, '-'));
end;

procedure TFrm_CUT012.btnSelDelChangeClick(Sender: TObject);
Var sATel, sBTel : String;
begin
  sATel := edtSourceTel.Text;
	sBTel := edtAppendTel.Text;

  if ( Trim(sATel) <> '' ) And ( Trim(sBTel) <> '' ) then
  begin
    edtSourceTel.Text := sBTel;
    InitCtrl(False);
    RequestSourceData('', RemoveAll(edtSourceTel.Text, '-'));
    edtAppendTel.Text := sATel;
    btnSearch.Click;
  end;
end;

end.

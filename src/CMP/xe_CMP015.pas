unit xe_CMP015;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MSXML2_TLB, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel,
  Vcl.StdCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxButtons,
  Vcl.ExtCtrls, cxGroupBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxSkinsCore,
  dxSkinscxPCPainter, dxSkinOffice2010Silver, dxSkinSharp, dxDateRanges, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  // 수수료표 데이터
  TFeesRec = record
    Code,
      Name,
      Prepay,
      _Type,
      Value: string;
  end;

  TFrm_CMP015 = class(TForm)
    PnlMain: TPanel;
    lbl65: TcxLabel;
    lblBrSosok: TcxLabel;
    cxGrid: TcxGrid;
    cxView: TcxGridDBTableView;
    cxColView1Column1: TcxGridDBColumn;
    cxColView1Column2: TcxGridDBColumn;
    cxColView1Column3: TcxGridDBColumn;
    cxColView1Column4: TcxGridDBColumn;
    cxColView1Column5: TcxGridDBColumn;
    cxColView1Column6: TcxGridDBColumn;
    cxLevel: TcxGridLevel;
    lbl2: TcxLabel;
    lbl3: TcxLabel;
    lbl5: TcxLabel;
    btnInsert: TcxButton;
    btnUpdate: TcxButton;
    btnDelete: TcxButton;
    lbl4: TcxLabel;
    PnlTitle: TPanel;
    btnClose: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    edtName: TcxTextEdit;
    cbbType: TcxComboBox;
    cbbPrepay: TcxComboBox;
    cbbValue: TcxComboBox;
    Shape6: TShape;
    cxLabel1: TcxLabel;
    cxLblActive: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure cbbTypeChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxViewCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnInsertClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure PnlMainMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edtNameKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FHeadCode, FBranchCode: string;

    FReceptCodeList,
    FReceptNameList : TStringList;

    procedure RequestData(AData: string);
    procedure RequestDataRecept(AHead, ACode: string);
    procedure RequestDataFees(AHead, ACode: string);

    function CheckField: Boolean;
    function MakePacket(AKey, ACRUD, AHead, ACode: string; AData: TFeesRec):
      string;
    procedure InsertDataFees(AHead, ACode: string; AData: TFeesRec);
    procedure UpdateDataFees(AHead, ACode: string; AData: TFeesRec);
    procedure DeleteDataFees(AHead, ACode: string; AData: TFeesRec);

    procedure ResponseDataBase(ADataStr: WideString);
    procedure ResponseDataRecept(AXmlStr: WideString);
    procedure ResponseDataFees(AXmlStr: WideString);
    procedure ResultDataFees(AType: string);

    procedure ClearItem;
  public
    { Public declarations }
    procedure proc_init;
    procedure SetBrCode(AHead, ACode, AName: string);
  end;

var
  Frm_CMP015: TFrm_CMP015;

implementation

{$R *.dfm}

uses xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_xml, xe_Msg, xe_Flash;


procedure TFrm_CMP015.proc_init;
var
  I, Save: Integer;
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

  cbbType.Tag := 1;

  try
    for I := 0 to cxView.ColumnCount - 1 do
    begin
      cxView.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
    end;
  except

  end;
end;

procedure TFrm_CMP015.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_CMP015.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_CMP015.FormCreate(Sender: TObject);
begin
  FReceptCodeList := TStringList.Create;
  FReceptNameList := TStringList.Create;
  proc_init;
end;

procedure TFrm_CMP015.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_CMP015.FormDestroy(Sender: TObject);
begin
  if Assigned(FReceptCodeList) then FReceptCodeList.Free;
  if Assigned(FReceptNameList) then FReceptNameList.Free;
  Frm_CMP015 := Nil;
end;

procedure TFrm_CMP015.FormShow(Sender: TObject);
begin
  fSetFont(Frm_CMP015, GS_FONTNAME);
end;

procedure TFrm_CMP015.SetBrCode(AHead, ACode, AName: string);
begin
  FHeadCode := AHead;
  FBranchCode := ACode;

  lblBrSosok.Caption := Format('[%s] %s', [ACode, AName]);
  RequestDataRecept(AHead, ACode);
  RequestDataFees(AHead, ACode);
end;

procedure TFrm_CMP015.RequestData(AData: string);
var
  ReceiveStr: string;
  StrList: TStringList;
  ErrCode: integer;
begin
  StrList := TStringList.Create;
  Screen.Cursor := crHandPoint;
  try
    if dm.SendSock(AData, StrList, ErrCode, False) then
    begin
      ReceiveStr := StrList[0];

      if trim(ReceiveStr) <> '' then
      begin
        Application.ProcessMessages;
        ResponseDataBase(ReceiveStr);
      end;
    end;
  finally
    Frm_Flash.Hide;
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_CMP015.RequestDataRecept(AHead, ACode: string);
var
  ls_TxLoad : string;
begin
  try
    ls_TxLoad := GTx_UnitXmlLoad('C052N1.xml');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO,
      [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'RCPT0001',
      [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_ACTION', 'SELECT',
      [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_본사코드', AHead,
      [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_지사코드', ACode,
      [rfReplaceAll]);
    RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_CMP015.RequestDataFees(AHead, ACode: string);
var
  ls_TxLoad: string;
begin
  try
    ls_TxLoad := GTx_UnitXmlLoad('C050N1.xml');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO,
      [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'FEES0001',
      [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_ACTION', 'SELECT',
      [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_본사코드', AHead,
      [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_지사코드', ACode,
      [rfReplaceAll]);
    RequestData(ls_TxLoad);
  except
  end;
end;

function TFrm_CMP015.CheckField: Boolean;
begin
  Result := False;

  if edtName.Text = '' then
  begin
    MessageDlg('입금표명을 입력하여야합니다.', mtWarning, [mbOK], 0);
    //    ShowMessage('입금표명을 입력하여야합니다.');
    Exit;
  end;

  if cbbPrepay.ItemIndex = 0 then
  begin
    ShowMessage('사납금을 선택하여야합니다.');
    Exit;
  end;

  if cbbType.ItemIndex = 0 then
  begin
    ShowMessage('계산방법을 선택하여야합니다.');
    Exit;
  end;

  if (cbbType.ItemIndex in [2, 10]) and (cbbValue.ItemIndex = 0) then
  begin
    ShowMessage('입금표 방식을 선택하여야합니다.');
    Exit;
  end else
  if cbbValue.Text = '' then
  begin
    ShowMessage('계산값을 입력하여야합니다.');
    Exit;
  end;

  Result := True;
end;

function TFrm_CMP015.MakePacket(AKey, ACRUD, AHead, ACode: string;
  AData: TFeesRec): string;
var
  ls_TxLoad: string;
begin
  ls_TxLoad := GTx_UnitXmlLoad('C050N1.xml');
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO,
    [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', AKey,
    [rfReplaceAll]);

  ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_ACTION', ACRUD, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_본사코드', AHead, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_지사코드', ACode, [rfReplaceAll]);

  ls_TxLoad := StringReplace(ls_TxLoad, '수수료코드', AData.Code,
    [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, '수수료그룹명', AData.Name,
    [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, '선납/후납(s/h)', AData.Prepay,
    [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, '계산방법', AData._Type,
    [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, '계산값', AData.Value, [rfReplaceAll]);

  Result := ls_TxLoad;
end;

procedure TFrm_CMP015.InsertDataFees(AHead, ACode: string;
  AData: TFeesRec);
var
  ls_TxLoad: string;
begin
  try
    ls_TxLoad := MakePacket('FEES0002', 'INSERT', AHead, ACode, AData);
    RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_CMP015.UpdateDataFees(AHead, ACode: string;
  AData: TFeesRec);
var
  ls_TxLoad: string;
begin
  try
    ls_TxLoad := MakePacket('FEES0003', 'UPDATE', AHead, ACode, AData);
    RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_CMP015.DeleteDataFees(AHead, ACode: string;
  AData: TFeesRec);
var
  ls_TxLoad: string;
begin
  try
    ls_TxLoad := MakePacket('FEES0004', 'DELETE', AHead, ACode, AData);
    RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_CMP015.edtNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_CMP015.ResponseDataBase(ADataStr: WideString);
var
  xdom: msDomDocument;
  XmlData: WideString;
  ErrorCode, ClientKey: string;
begin
  xdom := ComsDomDocument.Create;
  Screen.Cursor := crHourGlass;
  try
    try
      XmlData := ADataStr;
      if not xdom.loadXML(XmlData) then
        Exit;

      ErrorCode := GetXmlErrorCode(XmlData);
      if ('0000' = ErrorCode) then
      begin
        ClientKey := GetXmlClientKey(XmlData);
        if ClientKey = 'RCPT0001' then
          ResponseDataRecept(XmlData)
        else
          if ClientKey = 'FEES0001' then
          ResponseDataFees(XmlData)
        else
          if ClientKey = 'FEES0002' then
          ResultDataFees('INSERT')
        else
          if ClientKey = 'FEES0003' then
          ResultDataFees('UPDATE')
        else
          if ClientKey = 'FEES0004' then
          ResultDataFees('DELETE')
            ;
      end else
      begin
        GMessagebox(MSG012 + CRLF + ErrorCode, CDMSE);
      end;
    except
    end;
  finally
    Screen.Cursor := crDefault;
    xdom := Nil;
  end;
end;

procedure TFrm_CMP015.ResponseDataRecept(AXmlStr: WideString);
var
  I: Integer;
  xdom: msDomDocument;
  ResultList: IXMLDomNodeList;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then
      Exit;

    ResultList := xdom.documentElement.selectNodes('/cdms/Service/Recept/Items');

    FReceptNameList.Clear;
    FReceptCodeList.Clear;

    FReceptNameList.Add('선택');
    FReceptCodeList.Add('선택');

    for I := 0 to ResultList.length - 1 do
    begin
      with ResultList[I].attributes do
      begin
        FReceptNameList.Add(getNamedItem('name').text);
        FReceptCodeList.Add(getNamedItem('code').text);
      end;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_CMP015.ResponseDataFees(AXmlStr: WideString);
var
  I: Integer;
  xdom: msDomDocument;
  ResultList: IXMLDomNodeList;
  sType, sTemp: string;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then Exit;

    ResultList := xdom.documentElement.selectNodes('/cdms/Service/Fees/Item');

    cxView.DataController.SetRecordCount(0);
    cbbType.Tag := 0;
    for I := 0 to ResultList.length - 1 do
    begin
      cxView.DataController.AppendRecord;

      with ResultList[I].attributes do
      begin
        cxView.DataController.SetValue(I, 0, I + 1);
        cxView.DataController.SetValue(I, 1, getNamedItem('name').text);
        if UpperCase(getNamedItem('prepay').text) = 'Y' then
          sTemp := '선납'
        else
          sTemp := '후납';
        cxView.DataController.SetValue(I, 2, sTemp);

        sType := getNamedItem('type').text;
        if sType = 'A' then
          sType := '10'
        else
          if sType = 'B' then
          sType := '11'
        else
          if sType = 'C' then
          sType := '12';

        sTemp := cbbType.Properties.Items[StrToIntDef(sType, 0)];
        cxView.DataController.SetValue(I, 3, sTemp);

        sTemp := getNamedItem('value').text;

        if StrToIntDef(sType, 0) in [2, 10] then
          sTemp := FReceptNameList[FReceptCodeList.IndexOf(sTemp)];

        cxView.DataController.SetValue(I, 4, sTemp);
        cxView.DataController.SetValue(I, 5, getNamedItem('code').text);
      end;
    end;
    cbbType.Tag := 1;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_CMP015.ResultDataFees(AType: string);
begin
  if UpperCase(AType) = 'DELETE' then
  begin
    ShowMessage('정상적으로 삭제되었습니다.');
  end else
  if UpperCase(AType) = 'INSERT' then
  begin
    ShowMessage('정상적으로 저장되었습니다.');
  end else
  if UpperCase(AType) = 'UPDATE' then
  begin
    ShowMessage('정상적으로 수정되었습니다.');
  end;

  ClearItem;
  RequestDataFees(FHeadCode, FBranchCode);
end;

procedure TFrm_CMP015.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_CMP015.cbbTypeChange(Sender: TObject);
Var i : Integer;
begin
  if cbbType.Tag = 1 then
  begin
    if cbbType.ItemIndex in [2, 10] then
    begin
      for i := 0 to FReceptNameList.Count - 1 do
      begin
        cbbValue.Properties.Items.Add(FReceptNameList[i]);
      end;
      cbbValue.Properties.DropDownListStyle := lsFixedList;
      cbbValue.ItemIndex := 0;
    end else
    begin
      cbbValue.Properties.DropDownListStyle := lsEditList;
      cbbValue.Properties.Items.Clear;
      cbbValue.Text := '';
    end;
  end;
end;

procedure TFrm_CMP015.cxViewCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  ARow: Integer;
begin
  ARow := ACellViewInfo.GridRecord.Index;
  if ARow < 0 then Exit;

  try
    edtName.Text := cxView.ViewData.Records[ARow].Values[1];
    cbbPrepay.ItemIndex := cbbPrepay.Properties.Items.IndexOf(cxView.ViewData.Records[ARow].Values[2]);
    if cxView.ViewData.Records[ARow].Values[3] <> '' then
    begin
      cbbType.ItemIndex := cbbType.Properties.Items.IndexOf(cxView.ViewData.Records[ARow].Values[3]);
      if cbbType.ItemIndex in [2, 10] then
      begin
        cbbValue.Properties.DropDownListStyle := lsFixedList;
        cbbValue.ItemIndex := cbbValue.Properties.Items.IndexOf(cxView.ViewData.Records[ARow].Values[4]);
      end else
      begin
        cbbValue.Properties.DropDownListStyle := lsEditList;
        cbbValue.Text := cxView.ViewData.Records[ARow].Values[4];
      end;
    end;
  Except

  end;
end;

procedure TFrm_CMP015.ClearItem;
begin
  edtName.Clear;
  cbbPrepay.ItemIndex := 0;
  cbbType.ItemIndex := 0;
  cbbValue.Properties.DropDownListStyle := lsEditList;
  cbbValue.Text := '';
end;

procedure TFrm_CMP015.btnInsertClick(Sender: TObject);
var
  AData: TFeesRec;
  sTemp: string;
begin
  if not CheckField then
  begin
    Exit;
  end;

  AData.Code := '';
  AData.Name := edtName.Text;
  if cbbPrepay.ItemIndex = 1 then
    sTemp := 's'
  else
    sTemp := 'h';
  AData.Prepay := sTemp;

  sTemp := IntToStr(cbbType.ItemIndex);
  if sTemp = '10' then
    sTemp := 'A'
  else
    if sTemp = '11' then
    sTemp := 'B'
  else
    if sTemp = '12' then
    sTemp := 'C';
  AData._Type := sTemp;

  if cbbType.ItemIndex in [2, 10] then
    sTemp := FReceptCodeList.Strings[cbbValue.ItemIndex]
  else
    sTemp := cbbValue.Text;
  AData.Value := sTemp;

  InsertDataFees(FHeadCode, FBranchCode, AData);
end;

procedure TFrm_CMP015.btnUpdateClick(Sender: TObject);
var
  ARow: Integer;
  AData: TFeesRec;
  sTemp: string;
begin
  if not CheckField then
  begin
    Exit;
  end;

  ARow := cxView.DataController.GetFocusedRowIndex;

  AData.Code := cxView.ViewData.Records[ARow].Values[5];
  AData.Name := edtName.Text;
  if cbbPrepay.ItemIndex = 1 then
    sTemp := 's'
  else
    sTemp := 'h';
  AData.Prepay := sTemp;

  sTemp := IntToStr(cbbType.ItemIndex);
  if sTemp = '10' then
    sTemp := 'A'
  else
    if sTemp = '11' then
    sTemp := 'B'
  else
    if sTemp = '12' then
    sTemp := 'C';
  AData._Type := sTemp;

  if cbbType.ItemIndex in [2, 10] then
    sTemp := FReceptCodeList.Strings[cbbValue.ItemIndex]
  else
    sTemp := cbbValue.Text;
  AData.Value := sTemp;

  UpdateDataFees(FHeadCode, FBranchCode, AData);
end;

procedure TFrm_CMP015.btnDeleteClick(Sender: TObject);
var
  ARow: Integer;
  AData: TFeesRec;
begin
  ARow := cxView.DataController.GetFocusedRowIndex;

  AData.Code := cxView.ViewData.Records[ARow].Values[5];

  DeleteDataFees(FHeadCode, FBranchCode, AData);
end;

procedure TFrm_CMP015.PnlMainMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_CMP015.PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

end.


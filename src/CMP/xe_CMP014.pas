unit xe_CMP014;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MSXML2_TLB, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxLabel, cxCurrencyEdit, Vcl.Menus, Vcl.ExtCtrls, cxGroupBox, Vcl.StdCtrls,
  cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit, cxTreeView,
  dxSkinsCore, dxSkinscxPCPainter, dxSkinOffice2010Silver, dxSkinSharp, dxDateRanges, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_CMP014 = class(TForm)
    pnl1: TPanel;
    lblBrSosok: TcxLabel;
    PnlLeft: TPanel;
    PnlClient: TPanel;
    pnl4: TPanel;
    cxGrid: TcxGrid;
    cxView: TcxGridDBTableView;
    cxColView1Column1: TcxGridDBColumn;
    cxColView1Column2: TcxGridDBColumn;
    cxColView1Column3: TcxGridDBColumn;
    cxColView1Column4: TcxGridDBColumn;
    cxLevel: TcxGridLevel;
    cxTreeView: TcxTreeView;
    lbl2: TcxLabel;
    edtBaseMID: TcxTextEdit;
    lbl3: TcxLabel;
    edt1: TcxTextEdit;
    lbl4: TcxLabel;
    edt2: TcxTextEdit;
    PnlMain: TPanel;
    btn1: TcxButton;
    btn2: TcxButton;
    btn4: TcxButton;
    edt3: TcxTextEdit;
    PnlTitle: TPanel;
    btnClose: TcxButton;
    cxGroupBox1: TcxGroupBox;
    lbl65: TcxLabel;
    Shape1: TShape;
    PnlBottom: TPanel;
    cxGroupBox2: TcxGroupBox;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    cxLblActive: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCloseClick(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FHeadCode: string;
    FBranchCode: string;
    FList: TStringList;

    procedure RequestDataRecept(AHead, ACode: string);
    procedure ResponseDataBase(ADataStr: WideString);
    procedure ResponseDataRecept(AXmlStr: WideString);

    procedure DisplayReceptList(AIndex: Integer);
  public
    { Public declarations }
    procedure proc_init;
    procedure SetBrCode(AHead, ACode, AName: string);
  end;

var
  Frm_CMP014: TFrm_CMP014;

implementation

{$R *.dfm}

uses xe_Dm, xe_Func, xe_GNL, xe_Msg, xe_xml, Main, xe_Flash;


procedure TFrm_CMP014.proc_init;
var
  I : Integer;
begin
  try
    for I := 0 to cxView.ColumnCount - 1 do
    begin
      case I of
        0:
          cxView.Columns[I].DataBinding.ValueTypeClass := TcxIntegerValueType;
        2..3:
          begin
            cxView.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
            cxView.Columns[I].Properties := Frm_Main.gCurProperties;
          end;
      else
        cxView.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
      end;
    end;
  Except
  end;
end;

procedure TFrm_CMP014.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_CMP014.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_CMP014.FormCreate(Sender: TObject);
begin
  FList := TStringList.Create;
  proc_init;
end;

procedure TFrm_CMP014.SetBrCode(AHead, ACode, AName: string);
begin
  FHeadCode := AHead;
  FBranchCode := ACode;

  lblBrSosok.Caption := Format('[%s] %s', [ACode, AName]);
  RequestDataRecept(AHead, ACode);
end;

procedure TFrm_CMP014.RequestDataRecept(AHead, ACode: string);
var
  ls_TxLoad, ReceiveStr: string;
  StrList: TStringList;
  ErrCode: integer;
begin
  StrList := TStringList.Create;
  Screen.Cursor := crHandPoint;
  try
    ls_TxLoad := GTx_UnitXmlLoad('C052N1.xml');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'RCPT0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_ACTION', 'SELECT',  [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_본사코드', AHead, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_지사코드', ACode, [rfReplaceAll]);
    if dm.SendSock(ls_TxLoad, StrList, ErrCode, False) then
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

procedure TFrm_CMP014.ResponseDataBase(ADataStr: WideString);
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
      if not xdom.loadXML(XmlData) then Exit;
      ErrorCode := GetXmlErrorCode(XmlData);
      if ('0000' = ErrorCode) then
      begin
        ClientKey := GetXmlClientKey(XmlData);
        if ClientKey = 'RCPT0001' then
          ResponseDataRecept(XmlData);
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

procedure TFrm_CMP014.ResponseDataRecept(AXmlStr: WideString);
var
  I, J: Integer;
  xdom: msDomDocument;
  ResultList: IXMLDomNodeList;
  Node, SubNode: TTreeNode;
  items: string;
  nTemp,
    SubCount: Integer;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then
      Exit;

    ResultList := xdom.documentElement.selectNodes('/cdms/Service/Recept/Items');

    cxView.DataController.SetRecordCount(0);
    cxTreeView.Items.Clear;
    FList.Clear;
    Node := cxTreeView.Items.Add(nil, Format('%s(%d)', ['입금표목록',
      ResultList.length]));
    for I := 0 to ResultList.length - 1 do
    begin
      with ResultList[I].attributes do
      begin
        SubCount := 0;
        SubNode := cxTreeView.Items.AddChild(Node, '');

        for J := 0 to ResultList[I].childNodes.length - 1 do
        begin
          if
            TryStrToInt(ResultList[I].childNodes[J].attributes.getNamedItem('price').text, nTemp)
            and
            TryStrToInt(ResultList[I].childNodes[J].attributes.getNamedItem('charge').text,
            nTemp) then
          begin
            items := Format('%s,%s,%s',
              [
              getNamedItem('name').text,
                ResultList[I].childNodes[J].attributes.getNamedItem('price').text,
                ResultList[I].childNodes[J].attributes.getNamedItem('charge').text
                ]);
            FList.AddObject(items, TObject(I));
            Inc(SubCount);
          end;
        end;

        SubNode.Text := Format('%s(%d)', [getNamedItem('name').text,
          SubCount]);
      end;
    end;
    cxTreeView.FullExpand;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_CMP014.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_CMP014.FormDestroy(Sender: TObject);
begin
  if Assigned(FList) then FList.Free;
  Frm_CMP014 := Nil;
end;

procedure TFrm_CMP014.FormShow(Sender: TObject);
begin
  fSetFont(Frm_CMP014, GS_FONTNAME);
end;

procedure TFrm_CMP014.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_CMP014.cxTreeViewChange(Sender: TObject; Node: TTreeNode);
var
  AIndex: Integer;
begin
  if Node.Level = 0 then
    AIndex := -1
  else
    AIndex := Node.Index;
  DisplayReceptList(AIndex);
end;

procedure TFrm_CMP014.DisplayReceptList(AIndex: Integer);
var
  I, Row: Integer;
  Strs: TStringList;
begin
  cxView.DataController.SetRecordCount(0);
  Strs := TStringList.Create;
  try
    for I := 0 to FList.Count - 1 do
    begin
      if (AIndex = -1) or (AIndex = Integer(FList.Objects[I])) then
      begin
        Row := cxView.DataController.AppendRecord;
        Strs.CommaText := FList[I];
        cxView.DataController.SetValue(Row, 0, Row + 1);
        cxView.DataController.SetValue(Row, 1, Strs[0]);
        cxView.DataController.SetValue(Row, 2, Strs[1]);
        cxView.DataController.SetValue(Row, 3, Strs[2]);
      end;
    end;
  finally
    Strs.Free;
  end;
end;

procedure TFrm_CMP014.PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

end.


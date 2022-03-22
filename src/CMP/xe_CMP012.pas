unit xe_CMP012;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MSXML2_TLB, cxGraphics, cxControls, cxLookAndFeels, cxTextEdit,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxLabel, cxContainer,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, Vcl.ExtCtrls, cxGridLevel, cxCurrencyEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxGroupBox, dxSkinsCore, dxSkinscxPCPainter, dxSkinOffice2010Silver, dxSkinSharp, dxDateRanges, dxSkinMetropolisDark,
  dxSkinOffice2007Silver;

type
  TFrm_CMP012 = class(TForm)
    cxGrid: TcxGrid;
    cxView: TcxGridDBTableView;
    cxColView1Column1: TcxGridDBColumn;
    cxColView1Column2: TcxGridDBColumn;
    cxColView1Column3: TcxGridDBColumn;
    cxColView1Column4: TcxGridDBColumn;
    cxColView1Column5: TcxGridDBColumn;
    cxLevel: TcxGridLevel;
    pnl1: TPanel;
    lbl65: TcxLabel;
    lblBrSosok: TcxLabel;
    itc1: TIdTCPClient;
    PnlTitle: TPanel;
    BtnClose: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Shape1: TShape;
    cxLblActive: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FBranchCode: string;

    procedure RequestDataConfig(ACode: string);
    procedure ResponseDataBase(ADataStr: WideString);
    procedure ResponseDataConfig(AXmlStr: WideString);
  public
    { Public declarations }
    procedure proc_init;
    procedure SetBrCode(ACode, AName: string);
  end;

var
  Frm_CMP012: TFrm_CMP012;

implementation

{$R *.dfm}

uses xe_xml, xe_GNL, xe_Dm, xe_Msg, xe_Func, Main, xe_Flash;

procedure TFrm_CMP012.proc_init;
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

  try
    for I := 0 to cxView.ColumnCount - 1 do
    begin
      case I of
        4:
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

procedure TFrm_CMP012.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_CMP012.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_CMP012.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_CMP012.FormCreate(Sender: TObject);
begin
  proc_init;
end;

procedure TFrm_CMP012.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_CMP012.FormDestroy(Sender: TObject);
begin
  Frm_CMP012 := Nil;
end;

procedure TFrm_CMP012.FormShow(Sender: TObject);
begin
  fSetFont(Frm_CMP012, GS_FONTNAME);
end;

procedure TFrm_CMP012.SetBrCode(ACode, AName: string);
begin
  FBranchCode := ACode;

  lblBrSosok.Caption := Format('[%s] %s', [ACode, AName]);
  RequestDataConfig(ACode);
end;

procedure TFrm_CMP012.RequestDataConfig(ACode: string);
var
  ls_TxLoad, ReceiveStr: string;
  StrList: TStringList;
  ErrCode: integer;
begin
  StrList := TStringList.Create;
  Screen.Cursor := crHandPoint;
  try
    ls_TxLoad := GTx_UnitXmlLoad('C048N1.xml');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BRCF0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_지사코드', ACode, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_구분', 'CA', [rfReplaceAll]);

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

procedure TFrm_CMP012.ResponseDataBase(ADataStr: WideString);
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
        if ClientKey = 'BRCF0001' then
          ResponseDataConfig(XmlData);
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

procedure TFrm_CMP012.ResponseDataConfig(AXmlStr: WideString);
var
  I, Cnt: Integer;
  xdom: msDomDocument;
  lst_Data: IXMLDomNodeList;
  ResultList: IXMLDomNodeList;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then Exit;

    lst_Data := xDom.documentElement.selectNodes('/cdms/Service/BranchConfig');
    Cnt := StrToIntDef(lst_Data.item[0].attributes.getNamedItem('cnt').Text, 0);

    ResultList := xdom.documentElement.selectNodes('/cdms/Service/BranchConfig/Item');
    cxView.DataController.SetRecordCount(0);

    for I := 0 to Cnt - 1 do
    begin
      cxView.DataController.AppendRecord;
      with ResultList[I].attributes do
      begin
        cxView.DataController.SetValue(I, 0, getNamedItem('config').text);
        cxView.DataController.SetValue(I, 1, getNamedItem('title').text);
        cxView.DataController.SetValue(I, 2, getNamedItem('branch').text);
        cxView.DataController.SetValue(I, 3, getNamedItem('branch_name').text);
        cxView.DataController.SetValue(I, 4, getNamedItem('price').text);
      end;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_CMP012.PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

end.


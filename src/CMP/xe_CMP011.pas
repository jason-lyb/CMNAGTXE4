unit xe_CMP011;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, MSXML2_TLB,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel,
  Vcl.ExtCtrls, cxGroupBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  cxButtons, cxTextEdit, dxSkinsCore, dxSkinscxPCPainter, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark,
  dxSkinOffice2007Silver;

type
  TFrm_CMP011 = class(TForm)
    lbl1: TcxLabel;
    edtDong: TcxTextEdit;
    btn1: TcxButton;
    cxGridAddr: TcxGrid;
    cxViewAddr: TcxGridDBTableView;
    cxColView1Column1: TcxGridDBColumn;
    cxLevelAddr: TcxGridLevel;
    lbl25: TLabel;
    lbl2: TLabel;
    cxColViewAddrColumn1: TcxGridDBColumn;
    PnlTitle: TPanel;
    BtnClose: TcxButton;
    PnlMain: TPanel;
    cxGroupBox1: TcxGroupBox;
    Shape1: TShape;
    cxLblActive: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure cxViewAddrCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure edtDongKeyPress(Sender: TObject; var Key: Char);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    FZipCode,
      FAddr,
      FAddrDetail: TEdit;

    procedure RequestDataAddr(ADong: string);
    procedure ResponseDataBase(ADataStr: WideString);
    procedure ResponseDataAddr(AXmlStr: WideString);
  public
    { Public declarations }
    procedure proc_init;
    procedure SetEdit(AZipCode, AAddr, AAddrDetail: TEdit);
  end;

var
  Frm_CMP011: TFrm_CMP011;

implementation

{$R *.dfm}

uses xe_xml, xe_Query, xe_Dm, xe_GNL, xe_Msg, xe_Func, xe_Flash;

procedure TFrm_CMP011.proc_init;
var
  Save: Integer;
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

  cxViewAddr.Columns[0].DataBinding.ValueTypeClass := TcxStringValueType;
  cxViewAddr.Columns[1].DataBinding.ValueTypeClass := TcxStringValueType;
end;

procedure TFrm_CMP011.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_CMP011.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_CMP011.FormCreate(Sender: TObject);
begin
  proc_init;
end;

procedure TFrm_CMP011.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_CMP011.FormDestroy(Sender: TObject);
begin
  Frm_CMP011 := Nil;
end;

procedure TFrm_CMP011.SetEdit(AZipCode, AAddr, AAddrDetail: TEdit);
begin
  FZipCode := AZipCode;
  FAddr := AAddr;
  FAddrDetail := AAddrDetail;
end;

procedure TFrm_CMP011.btn1Click(Sender: TObject);
begin
  RequestDataAddr(edtDong.Text);
end;

procedure TFrm_CMP011.RequestDataAddr(ADong: string);
var
  ls_TxQry, ls_TxLoad, sQueryTemp: string;
  ReceiveStr: string;
  StrList: TStringList;
  ErrCode: integer;
begin
  if Length(ADong) < 2 then
  begin
    ShowMessage('검색어가 2글자 이상이어야 합니다.');
    Exit;
  end;

  StrList := TStringList.Create;
  Screen.Cursor := crHandPoint;
  try
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_ZIP_CODE, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [ADong, ADong]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'ZPCD0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

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

procedure TFrm_CMP011.ResponseDataBase(ADataStr: WideString);
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
        if ClientKey = 'ZPCD0001' then
          ResponseDataAddr(XmlData);
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

procedure TFrm_CMP011.ResponseDataAddr(AXmlStr: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, J: Integer;
  ZipCode, Addr: string;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then
      Exit;

    if (0 < GetXmlRecordCount(AXmlStr)) then
    begin
      lst_Result :=
        xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

      cxViewAddr.DataController.SetRecordCount(0);

      ls_Rcrd := TStringList.Create;
      try
        for I := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
//          ls_Rcrd := GetTextSeperation('│', lst_Result.item[i].attributes.getNamedItem('Value').Text);

          ZipCode := ls_Rcrd[0];
          Addr := Format('%s %s %s %s', [ls_Rcrd[1], ls_Rcrd[2], ls_Rcrd[3],
            ls_Rcrd[4]]);

          for J := 5 to ls_Rcrd.Count - 1 do
          begin
            if ls_Rcrd[J] <> '' then
              Addr := Addr + ' ' + ls_Rcrd[J];
          end;

          cxViewAddr.DataController.AppendRecord;
          cxViewAddr.DataController.SetValue(I, 0, ZipCode);
          cxViewAddr.DataController.SetValue(I, 1, Addr);
        end;
      finally
        ls_Rcrd.Free;
      end;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_CMP011.cxViewAddrCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  ARow: Integer;
begin
  ARow := ACellViewInfo.GridRecord.Index;

  if Assigned(FZipCode) then
    FZipCode.Text := cxViewAddr.ViewData.Records[ARow].Values[0];

  if Assigned(FAddr) then
    FAddr.Text := cxViewAddr.ViewData.Records[ARow].Values[1];

  if Assigned(FAddrDetail) then
    FAddrDetail.SetFocus;

  Close;
end;

procedure TFrm_CMP011.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_CMP011.FormShow(Sender: TObject);
begin
  fSetFont(Frm_CMP011, GS_FONTNAME);
  edtDong.SetFocus;
end;

procedure TFrm_CMP011.edtDongKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btn1.Click;
end;

procedure TFrm_CMP011.PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

end.


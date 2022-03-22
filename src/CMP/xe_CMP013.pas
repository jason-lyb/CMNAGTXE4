unit xe_CMP013;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MSXML2_TLB, System.StrUtils, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel,
  cxCurrencyEdit, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, Vcl.ExtCtrls, cxGraphics, cxGroupBox, dxSkinsCore,
  dxSkinscxPCPainter, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  // 대표번호 데이터
	TBranchTelRec = record
		Phone,
      Order,
      Price,
      Msg,
      Sido,
			Gugun,
		RealPhone: string;
  end;

  TFrm_CMP013 = class(TForm)
    PnlMain: TPanel;
    lbl65: TcxLabel;
    lblBrSosok: TcxLabel;
    cxGridKeyPhone: TcxGrid;
    cxViewKeyPhone: TcxGridDBTableView;
    cxColView1Column1: TcxGridDBColumn;
    cxColView1Column2: TcxGridDBColumn;
    cxColView1Column3: TcxGridDBColumn;
    cxColView1Column4: TcxGridDBColumn;
    cxColView1Column5: TcxGridDBColumn;
    cxColView1Column6: TcxGridDBColumn;
    cxLevelKeyPhone: TcxGridLevel;
    lbl2: TcxLabel;
    edtPhone: TcxTextEdit;
    edtOrder: TcxTextEdit;
    lbl3: TcxLabel;
    edtPrice: TcxTextEdit;
    lbl4: TcxLabel;
    edtMessage: TcxTextEdit;
    lbl5: TcxLabel;
    cbbSido: TcxComboBox;
    cbbGugun: TcxComboBox;
    btnUpdate: TcxButton;
    btnDelete: TcxButton;
    btnClear: TcxButton;
    PnlTitle: TPanel;
    btnClose: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Shape5: TShape;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape6: TShape;
    cxLblActive: TLabel;
    cxColView1Column7: TcxGridDBColumn;
    Shape7: TShape;
    edtRealPhone: TcxTextEdit;
    cxLabel1: TcxLabel;
    lbl25: TcxLabel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbbSidoPropertiesChange(Sender: TObject);
    procedure cxViewKeyPhoneCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure edtPhoneExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edtRealPhoneKeyPress(Sender: TObject; var Key: Char);
    procedure edtMessageKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FSelectedRow: Integer;
    FBranchCode: string;
    FAddrList, FAreaCode: TStringList;
    procedure RequestData(AData: string);
    procedure RequestDataMapCity;
		procedure RequestDataBranchTel(ACode: string);

    procedure InsertDataBranchTel(ACode: string; AData: TBranchTelRec);
    procedure UpdateDataBranchTel(ACode, APhone, ASido, AGugun: string; AData:
      TBranchTelRec);
    procedure DeleteDataBranchTel(ACode, APhone, ASido, AGugun: string);

    procedure ResponseDataBase(ADataStr: WideString);
    procedure ResponseDataMapCity(AXmlStr: WideString);
		procedure ResponseDataBranchTel(AXmlStr: WideString);
    procedure ResultDataBranchTel(AType: string);

		procedure ClearItem;
		procedure SetSelectedRow(const Value: Integer);
		property SelectedRow: Integer read FSelectedRow write SetSelectedRow;
  public
    { Public declarations }
		procedure proc_init;
		procedure SetBrCode(ACode, AName: string);
  end;

var
  Frm_CMP013: TFrm_CMP013;

implementation

{$R *.dfm}

uses xe_Dm, xe_Func, xe_GNL, xe_xml, xe_Msg, Main, xe_Flash;


procedure TFrm_CMP013.proc_init;
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
		for I := 0 to cxViewKeyPhone.ColumnCount - 1 do
    begin
      case I of
        2:
          begin
            cxViewKeyPhone.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
            cxViewKeyPhone.Columns[I].Properties := Frm_Main.gCurProperties;
          end;
      else
        cxViewKeyPhone.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
      end;
    end;
  Except
  end;

	FAddrList := TStringList.Create;
	FAreaCode := TStringList.Create;
	FAreaCode.add('02');
	FAreaCode.add('031');
	FAreaCode.add('032');
	FAreaCode.add('033');
	FAreaCode.add('041');
	FAreaCode.add('042');
	FAreaCode.add('043');
	FAreaCode.add('044');
	FAreaCode.add('051');
	FAreaCode.add('052');
	FAreaCode.add('053');
	FAreaCode.add('054');
	FAreaCode.add('055');
	FAreaCode.add('061');
	FAreaCode.add('062');
	FAreaCode.add('063');
	FAreaCode.add('064');
	
    { TODO : 대표번호 이용증명원등록 관리 메뉴 만들면서 지사직적등록 지방권도 막음 20151218 LYB }
  // 수도권만 지사명 변경 못함. // 2011.04.08
//  if GS_PRJ_AREA = 'S' then
//  begin
    edtPhone.Enabled := False;
//  end else
//  begin
//    edtPhone.Enabled := True;
//  end;
  RequestDataMapCity;
end;

procedure TFrm_CMP013.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_CMP013.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_CMP013.FormCreate(Sender: TObject);
begin
  proc_init;
end;

procedure TFrm_CMP013.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_CMP013.FormDestroy(Sender: TObject);
begin
	if Assigned(FAddrList) then FAddrList.Free;
	if Assigned(FAreaCode) then FAreaCode.Free;

	Frm_CMP013 := Nil;
end;

procedure TFrm_CMP013.SetBrCode(ACode, AName: string);
begin
  FBranchCode := ACode;

  lblBrSosok.Caption := Format('[%s] %s', [ACode, AName]);
  RequestDataBranchTel(ACode);
end;

procedure TFrm_CMP013.RequestData(AData: string);
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

procedure TFrm_CMP013.RequestDataMapCity;
var
  ls_TxLoad : string;
begin
  try
    ls_TxLoad := GTx_UnitXmlLoad('C051N1.xml');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'MPCT0001', [rfReplaceAll]);

		ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_ACTION', 'SELECT', [rfReplaceAll]);
		RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_CMP013.RequestDataBranchTel(ACode: string);
var
  ls_TxLoad : string;
begin
  try
    ls_TxLoad := GTx_UnitXmlLoad('C049N1.xml');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BRPN0001', [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_ACTION', 'SELECT', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_지사코드', ACode, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_메세지', '', [rfReplaceAll]);
		RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_CMP013.InsertDataBranchTel(ACode: string; AData: TBranchTelRec);
var
  ls_TxLoad : string;
begin
	try
    ls_TxLoad := GTx_UnitXmlLoad('C049N1.xml');
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BRPN0002', [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_ACTION', 'INSERT', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_지사코드', ACode, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_대표번호', AData.Phone, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_라우팅시도', AData.Sido, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_라우팅군구', AData.Gugun, [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_대표번호', AData.Phone, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_오더타입', AData.Order, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_콜기본요금', AData.Price, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_라우팅시도', AData.Sido, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_라우팅군구', AData.Gugun, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_메세지', AData.Msg, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, '실착신번호', AData.RealPhone, [rfReplaceAll]);
		
    RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_CMP013.UpdateDataBranchTel(ACode, APhone, ASido, AGugun: string;
  AData:
  TBranchTelRec);
var
  ls_TxLoad : string;
begin
	try
		ls_TxLoad := GTx_UnitXmlLoad('C049N1.xml');
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BRPN0003', [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_ACTION', 'UPDATE', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_지사코드', ACode, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_대표번호', APhone, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_라우팅시도', ASido, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_라우팅군구', AGugun, [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_대표번호', AData.Phone, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_오더타입', AData.Order, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_콜기본요금', AData.Price, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_라우팅시도', AData.Sido, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_라우팅군구', AData.Gugun, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_메세지', AData.Msg, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, '실착신번호', AData.RealPhone, [rfReplaceAll]);
		RequestData(ls_TxLoad);
	except
  end;
end;

procedure TFrm_CMP013.DeleteDataBranchTel(ACode, APhone, ASido, AGugun: string);
var
  ls_TxLoad : string;
begin
  try
    ls_TxLoad := GTx_UnitXmlLoad('C049N1.xml');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BRPN0004', [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_ACTION', 'DELETE', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_지사코드', ACode, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_대표번호', APhone, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_라우팅시도', ASido, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_라우팅군구', AGugun, [rfReplaceAll]);
    RequestData(ls_TxLoad);
	except
  end;
end;

procedure TFrm_CMP013.ResponseDataBase(ADataStr: WideString);
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
				if ClientKey = 'MPCT0001' then
					ResponseDataMapCity(XmlData)
        else if ClientKey = 'BRPN0001' then
					ResponseDataBranchTel(XmlData)
        else if ClientKey = 'BRPN0002' then
          ResultDataBranchTel('INSERT')
        else if ClientKey = 'BRPN0003' then
          ResultDataBranchTel('UPDATE')
        else if ClientKey = 'BRPN0004' then
          ResultDataBranchTel('DELETE')
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

procedure TFrm_CMP013.ResponseDataMapCity(AXmlStr: WideString);
var
  I, J: Integer;
  xdom: msDomDocument;
  ResultList: IXMLDomNodeList;
  AddrGugun: string;
begin
	xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then
      Exit;

    ResultList := xdom.documentElement.selectNodes('/cdms/Service/MapCity/Items');

    cbbSido.Properties.Items.Clear;
    cbbGugun.Properties.Items.Clear;
    FAddrList.Clear;

    cbbSido.Properties.Items.Add('ALL');
    cbbGugun.Properties.Items.Add('ALL');
    FAddrList.Add('ALL');

    for I := 0 to ResultList.length - 1 do
    begin
      with ResultList[I].attributes do
      begin
        cbbSido.Properties.Items.Add(getNamedItem('sido').text);
        AddrGugun := '';
        for J := 0 to ResultList[I].childNodes.length - 1 do
        begin
          if AddrGugun <> '' then
						AddrGugun := AddrGugun + ',';
          AddrGugun := AddrGugun +
            ResultList[I].childNodes[J].attributes.getNamedItem('gugun').text;
        end;
				FAddrList.Add(AddrGugun);
      end;
    end;
    cbbSido.ItemIndex   := 0;
    cbbGugun.ItemIndex  := 0;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_CMP013.ResponseDataBranchTel(AXmlStr: WideString);
var
  I, Cnt: Integer;
  xdom: msDomDocument;
  ResultList: IXMLDomNodeList;
begin
	xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then Exit;

    ResultList := xdom.documentElement.selectNodes('/cdms/Service/BranchTel');
    Cnt := StrToIntDef(ResultList[0].attributes.getNamedItem('cnt').text, 0);

    ResultList := xdom.documentElement.selectNodes('/cdms/Service/BranchTel/Item');
		cxViewKeyPhone.DataController.SetRecordCount(0);
    if Cnt = 0 then Exit;

    for I := 0 to ResultList.length - 1 do
    begin
      cxViewKeyPhone.DataController.AppendRecord;
			with ResultList[I].attributes do
			begin
				cxViewKeyPhone.DataController.SetValue(I, 0, strtocall(getNamedItem('phone').text));
        cxViewKeyPhone.DataController.SetValue(I, 1, getNamedItem('order_type').text);
        cxViewKeyPhone.DataController.SetValue(I, 2, StrToFloatDef(getNamedItem('base_charge').text, 0.0));
        cxViewKeyPhone.DataController.SetValue(I, 3, UpperCase(getNamedItem('sido').text));
				cxViewKeyPhone.DataController.SetValue(I, 4, UpperCase(getNamedItem('gugun').text));
				cxViewKeyPhone.DataController.SetValue(I, 5, ResultList[I].text);
				cxViewKeyPhone.DataController.SetValue(I, 6, strtocall(getNamedItem('real_incoming_tel').text)); //실착신번호 20170101KHS
			end;
		end;
	finally
    xdom := Nil;
  end;
end;

procedure TFrm_CMP013.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_CMP013.cbbSidoPropertiesChange(Sender: TObject);
begin
  cbbGugun.Properties.Items.CommaText := FAddrList[cbbSido.ItemIndex];
	cbbGugun.properties.Items.Insert(0, 'ALL');
  cbbGugun.ItemIndex := 0;
end;

procedure TFrm_CMP013.cxViewKeyPhoneCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
	SelectedRow := ACellViewInfo.GridRecord.Index;
	if SelectedRow < 0 then
    Exit;

  edtPhone.Text := cxViewKeyPhone.ViewData.Records[SelectedRow].Values[0];
  edtOrder.Text := cxViewKeyPhone.ViewData.Records[SelectedRow].Values[1];
	edtPrice.Text := cxViewKeyPhone.ViewData.Records[SelectedRow].Values[2];
	edtMessage.Text := cxViewKeyPhone.ViewData.Records[SelectedRow].Values[5];
	edtRealPhone.Text := cxViewKeyPhone.ViewData.Records[SelectedRow].Values[6];
	edtRealPhone.Hint := cxViewKeyPhone.ViewData.Records[SelectedRow].Values[6];
	
  cbbSido.ItemIndex   := cbbSido.Properties.Items.IndexOf(cxViewKeyPhone.ViewData.Records[SelectedRow].Values[3]);
  cbbGugun.ItemIndex  := cbbGugun.Properties.Items.IndexOf(cxViewKeyPhone.ViewData.Records[SelectedRow].Values[4]);

    { TODO : 대표번호 이용증명원등록 관리 메뉴 만들면서 지사직적등록 지방권도 막음 20151218 LYB }
  // 수도권만 지사명 변경 못함.
//  if GS_PRJ_AREA = 'S' then begin
    // 2011.04.04 대표번호 수정불가
    edtPhone.Enabled := False;
//  end else
//  begin
//    edtPhone.Enabled:=True;
//  end;
end;

procedure TFrm_CMP013.btnUpdateClick(Sender: TObject);
var
  I : Integer;
  APhone, ASido, AGugun, sTmp : string;
	AData: TBranchTelRec;
begin
	if Not func_EucKr_Check(edtMessage, 0) then Exit;

	AData.Phone := CallToStr(edtPhone.Text);

  if Trim(AData.Phone) = '' then
  begin
    ShowMessage('대표번호가 없습니다. 대표번호를 입력하십시오!');
    if edtPhone.CanFocus then edtPhone.SetFocus;
    Exit;
  end;

	if cbbSido.ItemIndex = -1 then
  begin
    ShowMessage('''라우팅시/도'' 항목을 선택하세요.');
    if cbbSido.CanFocus then cbbSido.SetFocus;
    Exit;
  end;

  if cbbGugun.ItemIndex = -1 then
	begin
		ShowMessage('''라우팅시/군/구'' 항목을 선택하세요.');
		if cbbGugun.CanFocus then cbbGugun.SetFocus;
		Exit;
	end;
	 
	if gs_CallBellUse then
	begin
		if (Length(Trim(CallToStr(edtRealPhone.Text))) <> 0) then
		begin
			sTmp := Trim(CallToStr(edtRealPhone.Text));
			if FAreaCode.indexof(copy(sTmp,1,2)) < 0 then
			begin
				if FAreaCode.indexof(copy(sTmp,1,3)) < 0 then
				begin
					GMessagebox('[실착신번호오류]' + #13#10 + '실착신번호의 지역번호를 포함하여 입력하십시오.', CDMSE);
					edtRealPhone.Setfocus;
					exit;
				end;
			end;

			if copy(sTmp,1,2) = '02' then
			begin
				if (Length(sTmp) < 9) or (Length(sTmp) > 10) then
				begin
					GMessagebox('[실착신번호오류]' + #13#10 + '실착신번호 자릿수가 맞지 않습니다.' + #13#10 + '실착신번호를 정확히 입력하여 주십시오.', CDMSE);
					edtRealPhone.Setfocus;
					exit;
				end;
			end else
			begin
				if (Length(sTmp) < 10) or (Length(sTmp) > 11) then
				begin
					GMessagebox('[실착신번호오류]' + #13#10 + '실착신번호 자릿수가 맞지 않습니다.' + #13#10 + '실착신번호를 정확히 입력하여 주십시오.', CDMSE);
					edtRealPhone.Setfocus;
					exit;
				end;
			end;
{		end
		else
		begin
			if edtRealPhone.Hint <> edtRealPhone.Text then    //실착신번호가 있다가 지우는 경우
			begin
				GMessagebox('[실착신번호오류]' + #13#10 + '실착신번호 자릿수가 맞지 않습니다.' + #13#10 + '실착신번호를 정확히 입력하여 주십시오.', CDMSI);
				edtRealPhone.Setfocus;
				exit;
			end;  }
    end;
	end;
	
	AData.Order := edtOrder.Text;
	AData.Price := edtPrice.Text;
	AData.Msg   := edtMessage.Text;
  AData.Sido  := cbbSido.Text;
	AData.Gugun := cbbGugun.Text;
	AData.RealPhone := CallToStr(edtRealPhone.Text);
	if SelectedRow = -1 then
  // 등록
  begin
    for I := 0 to cxViewKeyPhone.DataController.RecordCount - 1 do
    begin
			if AData.Phone = CallToStr(cxViewKeyPhone.ViewData.Records[I].Values[0]) then
      begin
        ShowMessage('같은대표번호가 있습니다.');
        Exit;
      end;
		end;

		InsertDataBranchTel(FBranchCode, AData);
  end else
  // 수정
  begin
		APhone  := CallToStr(cxViewKeyPhone.ViewData.Records[SelectedRow].Values[0]);
		ASido   := cxViewKeyPhone.ViewData.Records[SelectedRow].Values[3];
		AGugun  := cxViewKeyPhone.ViewData.Records[SelectedRow].Values[4];

		UpdateDataBranchTel(FBranchCode, APhone, ASido, AGugun, AData);
  end;

  { TODO : 대표번호 이용증명원등록 관리 메뉴 만들면서 지사직적등록 지방권도 막음 20151218 LYB }
  // 수도권만 지사명 변경 못함.
//  if GS_PRJ_AREA = 'S' then
  begin
    // 2011.04.04 대표번호 수정불가
    edtPhone.Enabled:=False;
  end;
end;

procedure TFrm_CMP013.btnDeleteClick(Sender: TObject);
var
  ARow: Integer;
  APhone, ASido, AGugun: string;
begin
  ARow := cxViewKeyPhone.DataController.GetFocusedRowIndex;

  APhone := CallToStr(cxViewKeyPhone.ViewData.Records[ARow].Values[0]);
	ASido := cxViewKeyPhone.ViewData.Records[ARow].Values[3];
	AGugun := cxViewKeyPhone.ViewData.Records[ARow].Values[4];

  DeleteDataBranchTel(FBranchCode, APhone, ASido, AGugun);
end;

procedure TFrm_CMP013.ResultDataBranchTel(AType: string);
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

	RequestDataBranchTel(FBranchCode);
		
	// 2011.04.06 새로입력 막음
	if cxLevelKeyPhone.GridView.DataController.recordcount>0 then
	begin
//		SelectedRow := 0;
		if SelectedRow < 0 then Exit;

		edtPhone.Text := cxViewKeyPhone.ViewData.Records[SelectedRow].Values[0];
		edtOrder.Text := cxViewKeyPhone.ViewData.Records[SelectedRow].Values[1];
		edtPrice.Text := cxViewKeyPhone.ViewData.Records[SelectedRow].Values[2];
		edtMessage.Text := cxViewKeyPhone.ViewData.Records[SelectedRow].Values[5];
		edtRealPhone.Text := cxViewKeyPhone.ViewData.Records[SelectedRow].Values[6];

		cbbSido.ItemIndex   := cbbSido.Properties.Items.IndexOf(cxViewKeyPhone.ViewData.Records[SelectedRow].Values[3]);
		cbbGugun.ItemIndex  := cbbGugun.Properties.Items.IndexOf(cxViewKeyPhone.ViewData.Records[SelectedRow].Values[4]); 

		{ TODO : 대표번호 이용증명원등록 관리 메뉴 만들면서 지사직적등록 지방권도 막음 20151218 LYB }
		// 수도권만 지사명 변경 못함.
//    if GS_PRJ_AREA = 'S' then
		begin
			// 2011.04.04 대표번호 수정불가
			edtPhone.Enabled:=False;
		end;
		cxViewKeyPhone.DataController.FocusedRecordIndex := SelectedRow;
	end;
//	SelectedRow := -1;
end;

procedure TFrm_CMP013.ClearItem;
begin
  // 2011.04.04 대표번호 수정불가
  //edtPhone.Enabled:=true;


	edtPhone.Clear;
  edtOrder.Clear;
  edtPrice.Clear;
	edtMessage.Clear;
	edtRealPhone.Clear;
  cbbSido.ItemIndex := 0;
  cbbGugun.ItemIndex := 0;

  if edtPhone.Enabled then
   edtPhone.SetFocus;
end;

procedure TFrm_CMP013.edtMessageKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_CMP013.edtPhoneExit(Sender: TObject);
begin
	TcxTextEdit(Sender).Text := strtocall(TcxTextEdit(Sender).Text)
end;

procedure TFrm_CMP013.edtRealPhoneKeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else
		key := #0;
end;

procedure TFrm_CMP013.PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_CMP013.FormShow(Sender: TObject);
begin
  fSetFont(Frm_CMP013, GS_FONTNAME);

	cxViewKeyPhone.Columns[6].Visible := gs_CallBellUse;
	Shape7.Visible := gs_CallBellUse;
	cxLabel1.Visible := gs_CallBellUse;
	edtRealPhone.Visible := gs_CallBellUse;
	Label2.Visible := gs_CallBellUse;

	SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);
  // 2011.04.06 새로입력 막음
	SelectedRow := -1;
	ClearItem;
end;

procedure TFrm_CMP013.SetSelectedRow(const Value: Integer);
begin
  btnUpdate.Caption := IfThen(Value = -1, '등록', '수정');
//  btnDelete.Enabled := (Value > -1);

  // 2011.04.05 대표번호 삭제는 막음
  btnDelete.Enabled := false;
	FSelectedRow := Value;
end;

procedure TFrm_CMP013.btnClearClick(Sender: TObject);
begin
  // 2011.04.06 새로입력 막음
	SelectedRow := -1;
	ClearItem;
end;

end.


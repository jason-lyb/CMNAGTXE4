unit xe_COM40;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels, MSXML2_TLB,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  cxControls, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxGroupBox, dxSkinsCore, dxSkinscxPCPainter, cxRadioGroup,
  dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_COM40 = class(TForm)
    pnlTitle: TPanel;
    btnClose: TcxButton;
    Panel1: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    curTotal: TcxLabel;
    cxLabel2: TcxLabel;
    curCurrent: TcxLabel;
    cxLabel3: TcxLabel;
    curCoupon: TcxLabel;
    cxLabel5: TcxLabel;
    curPrzCnt: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxLabel4: TcxLabel;
    cbbCuProduct: TcxComboBox;
    cxLabel15: TcxLabel;
    curOutMileMny: TcxCurrencyEdit;
    btnMileOut: TcxButton;
    cxGroupBox3: TcxGroupBox;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxCurMileRefresh: TcxCurrencyEdit;
    btnMileCharge: TcxButton;
    edtAddMileMemo: TcxTextEdit;
    cxGroupBox4: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxgCustMlg: TcxGridDBTableView;
    cxgCustMlgColumn1: TcxGridDBColumn;
    cxgCustMlgColumn2: TcxGridDBColumn;
    cxgCustMlgColumn3: TcxGridDBColumn;
    cxgCustMlgColumn4: TcxGridDBColumn;
    cxgCustMlgColumn7: TcxGridDBColumn;
    cxgCustMlgColumn5: TcxGridDBColumn;
    cxgCustMlgColumn8: TcxGridDBColumn;
    cxgCustMlgColumn6: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxLabel9: TcxLabel;
    cxLabel22: TcxLabel;
    CB_Gubun: TcxComboBox;
    cxBtnTelNESelect: TcxButton;
    clbCuSeq: TcxLabel;
    edtMileMemo: TcxTextEdit;
    cxLabel10: TcxLabel;
    grpSetCoupon: TcxGroupBox;
    edtCouponHP: TcxTextEdit;
    btnCouponSend: TcxButton;
    btnCouponClose: TcxButton;
    lblCouponDesc: TcxLabel;
    Panel2: TPanel;
    cxLabel13: TcxLabel;
    cxLabel11: TcxLabel;
    cxLblActive: TLabel;
    curEventCnt: TcxLabel;
    grpSetEventView: TcxGroupBox;
    cxBtnEvent: TcxButton;
    cxLabel12: TcxLabel;
    curMileLost: TcxLabel;
    Shape17: TShape;
    cxBtnEventClose: TcxButton;
    cxBtnEventInit: TcxButton;
    cxBtnEventSave: TcxButton;
    cxEventCnt: TcxCurrencyEdit;
    cxFEventCnt: TcxCurrencyEdit;
    cxHEventCnt: TcxCurrencyEdit;
    cxLabel14: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    edtEventMemo: TcxTextEdit;
    rbEventM: TcxRadioButton;
    rbEventP: TcxRadioButton;
    Shape1: TShape;
    Shape2: TShape;
    procedure FormCreate(Sender: TObject);
    procedure cxBtnTelNESelectClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCloseClick(Sender: TObject);
    procedure btnMileOutClick(Sender: TObject);
    procedure btnMileChargeClick(Sender: TObject);
    procedure btnCouponCloseClick(Sender: TObject);
    procedure btnCouponSendClick(Sender: TObject);
    procedure cbbCuProductKeyPress(Sender: TObject; var Key: Char);
    procedure curOutMileMnyExit(Sender: TObject);
    procedure curOutMileMnyKeyPress(Sender: TObject; var Key: Char);
    procedure edtMileMemoKeyPress(Sender: TObject; var Key: Char);
    procedure cxCurMileRefreshExit(Sender: TObject);
    procedure cxCurMileRefreshKeyPress(Sender: TObject; var Key: Char);
    procedure edtAddMileMemoKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxBtnEventCloseClick(Sender: TObject);
    procedure cxBtnEventClick(Sender: TObject);
    procedure cxEventCntPropertiesChange(Sender: TObject);
    procedure cxBtnEventSaveClick(Sender: TObject);
    procedure cxBtnEventInitClick(Sender: TObject);
    procedure rbEventMClick(Sender: TObject);
    procedure cbbCuProductPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

    procedure Proc_Init;
    // 고객 마일리지를 충전 처리 한다.
    procedure Proc_CustMileRefresh;
    // 고객 마일리지를 즉시차감 처리 한다.
    procedure Proc_CustMileDeduct;
    procedure RequestMobileCoupone(ACuSeq, AHP: string; ACharge: Integer);
    procedure RequestData(AData: string);
    procedure ResponseData(AXmlData: string);
    function IsUseCoupon(ABrNo: string): Boolean;
    function GetPriceFromProduct(AStr: string): Integer;
  public
    { Public declarations }
    procedure proc_search;
    procedure SetCuProduct(AProdName: string; AProdPrice: Integer);
  end;

var
  Frm_COM40: TFrm_COM40;

implementation

{$R *.dfm}

uses xe_xml, xe_Func, xe_GNL, xe_Dm, Main, xe_Msg, xe_Query, xe_Flash, xe_Lib,
  xe_gnl2, xe_gnl3, xe_packet;

procedure TFrm_COM40.btnCloseClick(Sender: TObject);
begin
  Close;
end;

function TFrm_COM40.IsUseCoupon(ABrNo: string): Boolean;
var
  Idx: Integer;
begin
  Result := False;

  Idx := scb_BranchCode.IndexOf(ABrNo);
  if Idx < 0 then
    Exit;

  Result := (scb_BranchCoupon[Idx] = 'y');
end;

function TFrm_COM40.GetPriceFromProduct(AStr: string): Integer;
var
  Str: string;
begin
  Str := Copy(AStr, 1, Pos('원', AStr) - 1);
	Str := RemoveComma(Str);

  Result := StrToIntDef(Str, 0);
end;

procedure TFrm_COM40.SetCuProduct(AProdName: string; AProdPrice: Integer);
var
  Item: TStrings;
begin
  cbbCuProduct.Clear;

  if IsUseCoupon(Frm_Main.Frm_JON01N[Self.Tag].locBRNO) then
  begin
    cbbCuProduct.Properties.Items.Text := _PROD_LIST;
    cxLabel15.Style.Color := clRed;
    cxLabel15.Style.Font.Color := clWhite;
  end else
  begin
    cbbCuProduct.Properties.Items.Text := _PROD_BASE;
    cxLabel15.Style.Color := $00FAE1CD;
    cxLabel15.Style.Font.Color := $00D1566B;
  end;

  if AProdName <> '' then
  begin
    Item := cbbCuProduct.Properties.Items;
    Item.Insert(1, AProdName);
    if cbbCuProduct.Properties.Items.Count > 1 then
    begin
      cbbCuProduct.ItemIndex := 2;
      AProdPrice := GetPriceFromProduct(cbbCuProduct.Text);
    end
    else if cbbCuProduct.Properties.Items.Count = 2 then
      cbbCuProduct.ItemIndex := 1
    else
      cbbCuProduct.ItemIndex := -1;
  end else
  begin
    if cbbCuProduct.Properties.Items.Count > 1 then
    begin
      cbbCuProduct.ItemIndex := 1;
      AProdPrice := GetPriceFromProduct(cbbCuProduct.Text);
    end else
      cbbCuProduct.ItemIndex := -1;
  end;

  curOutMileMny.Value := AProdPrice;
end;

procedure TFrm_COM40.btnMileOutClick(Sender: TObject);
var
   UseMile, TotalMile: Integer;
begin
  // 권한 적용 (지호 2008-08-19)
  if TCK_USER_PER.COM_CustMlgCharge <> '1' then
  begin
    GMessagebox('고객에게 상품 지급 권한이 없습니다.', CDMSE);
    exit;
  end;

  if curOutMileMny.Value < 1 then
  begin
    ShowMessage('지급 할 마일리지 금액을 입력 하세요!');
    curOutMileMny.SetFocus;
    Exit;
  end;

  if (clbCuSeq.Caption <> '') then
  begin
    // 고객 마일리지를 즉시차감 처리 한다.
    if Pos('원 주유할인권', cbbCuProduct.Text) > 0 then
    begin
      UseMile := StrToIntDef(RemoveComma(curOutMileMny.Text), 0);
      if UseMile = 0 then
      begin
        GMessagebox(Format('지급상품권을 다시 선택해주세요.(지급마일리지가 부적절합니다.[%s])', [curOutMileMny.Text]), CDMSE);
        Exit;
      end;

      TotalMile := StrToIntDef(RemoveComma(curCurrent.Caption), 0);
      if TotalMile < UseMile then
      begin
        GMessagebox(Format('사용가능 마일리지가 부족합니다.[현재: %s, 지급: %s]', [
          FormatCash(TotalMile), FormatCash(UseMile)]), CDMSE);
        Exit;
      end;

      GrpSetCoupon.Left := 11;
      GrpSetCoupon.Top  := 35;
      edtCouponHP.Text := Frm_Main.Frm_JON01N[Self.Tag].locsCuTel;
      GrpSetCoupon.Visible := True;
      edtCouponHP.SetFocus;
    end else
    begin
      Proc_CustMileDeduct;
    end;
  end else
  begin
    ShowMessage('신규 미등록 고객은 마일리지를 지급할 수 없습니다.');
  end;
end;

procedure TFrm_COM40.cbbCuProductKeyPress(Sender: TObject; var Key: Char);
begin
	if Ord(Key) = VK_RETURN then
    curOutMileMny.SetFocus;
end;

procedure TFrm_COM40.cbbCuProductPropertiesChange(Sender: TObject);
begin
	curOutMileMny.Enabled := True;
  curOutMileMny.Value := 0;

  case TcxComboBox(Sender).ItemIndex of
  -1:
    TcxComboBox(Sender).Properties.DropDownListStyle := lsEditList;
  0:
    begin
      TcxComboBox(Sender).Properties.DropDownListStyle := lsEditList;
      TcxComboBox(Sender).Text := '';
    end;
  else
		TcxComboBox(Sender).Properties.DropDownListStyle := lsFixedList;
		if Pos('원 주유할인권', TcxComboBox(Sender).Text) > 0 then
    begin
      curOutMileMny.Value := GetPriceFromProduct(TcxComboBox(Sender).Text);
      curOutMileMny.Enabled := False;
		end;
  end;
end;

procedure TFrm_COM40.curOutMileMnyExit(Sender: TObject);
begin
  if curOutMileMny.Text = '' then
    curOutMileMny.Value := 0;
end;

procedure TFrm_COM40.curOutMileMnyKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    edtMileMemo.SetFocus;
end;

procedure TFrm_COM40.cxBtnEventClick(Sender: TObject);
begin
  cxHEventCnt.Text := curEventCnt.Caption;
  cxFEventCnt.Value := 0;
  cxEventCnt.Value := 0;

  GrpSetEventView.Top  := cxGroupBox2.Top;
  GrpSetEventView.Left := cxGroupBox2.Left;
  GrpSetEventView.Visible := True;
end;

procedure TFrm_COM40.cxBtnEventCloseClick(Sender: TObject);
begin
  GrpSetEventView.Visible := False;
end;

procedure TFrm_COM40.cxBtnEventInitClick(Sender: TObject);
Var
  Param : string;
  locHdNo, locBrNo, sEventCnt: string;
  XmlData, ErrMsg: string;
  ErrCode: integer;
begin
  // 권한 적용 (지호 2008-08-19)
  if TCK_USER_PER.COM_CustMlgCharge <> '1' then
  begin
    GMessagebox('고객에게 지급 권한이 없습니다.', CDMSE);
    exit;
  end;

  if (clbCuSeq.Caption <> '') then
  begin
    try
      if Frm_Main.Frm_JON01N[Self.Tag].lcsCu_seq = '' then
      begin
        ShowMessage('고객 일련번호가 없습니다. 고객정보를 조회 한 다음 [지급] 하세요!');
        Exit;
      end;
      if Frm_Main.Frm_JON01N[Self.Tag].cxtCallTelNum.Text = '' then
      begin
        ShowMessage('고객 전화번호가 없습니다. 고객정보를 조회 한 다음 [지급] 하세요!');
        Exit;
      end;
      if Frm_Main.Frm_JON01N[Self.Tag].cxtCallTelNum.Text <> Frm_Main.Frm_JON01N[Self.Tag].cxtCuTel.Text then
      begin
        ShowMessage('지급 할 고객 전화번호가 조회한 전화번호와 다릅니다. 고객정보를 재조회 한 다음 [지급] 처리 하세요!');
        Exit;
      end;
      if Application.MessageBox('해당 고객의 이벤트횟수를 초기화 하시겠습니까?', 'CDMS', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
      begin
        Exit;
      end;

      sEventCnt := FloatToStr(cxEventCnt.Value);

      locHdNo := Frm_Main.Frm_JON01N[Self.Tag].Proc_HDNOSearch; // 본사코드 정보를 읽는다.
      locBrNo := Frm_Main.Frm_JON01N[Self.Tag].Proc_BRNOSearch; // 지사코드 정보를 읽는다.

      Param := En_Coding(Frm_Main.Frm_JON01N[Self.Tag].lcsCu_seq);
      Param := Param + '│' + En_Coding(Frm_Main.Frm_JON01N[Self.Tag].cxtCuTel.Text);
      Param := Param + '│' + locHdNo;
      Param := Param + '│' + locBrNo;
      Param := Param + '│' + En_Coding(edtEventMemo.Text);
      Param := Param + '│' + En_Coding(sEventCnt);
      Param := Param + '│2│1';   // 0.차감,1.충전,2.초기화 || 0.마일리지,1.이벤트횟수

      if not RequestBase(GetCallable05('SET_CUST_MILEAGE', 'MNG_CUST.SET_CUST_MILEAGE', Param), XmlData, ErrCode, ErrMsg) then
      begin
        GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
        Exit;
      end;

      curEventCnt.Caption := '0';
      cxEventCnt.Value := 0;
      edtEventMemo.Clear;
      ShowMessage('초기화 되었습니다.');
      GrpSetEventView.Visible := False;
    except
      on e: exception do
      begin
        Assert(False, E.Message);
      end;
    end;
  end else
  begin
    ShowMessage('신규 미등록 고객은 이벤트 횟수를 저장할 수 없습니다.');
  end;
end;

procedure TFrm_COM40.cxBtnEventSaveClick(Sender: TObject);
Var
  Param : string;
  locHdNo, locBrNo, sEventCnt: string;
  XmlData, ErrMsg: string;
  ErrCode: integer;
begin
  // 권한 적용 (지호 2008-08-19)
  if TCK_USER_PER.COM_CustMlgCharge <> '1' then
  begin
    GMessagebox('고객에게 지급 권한이 없습니다.', CDMSE);
    exit;
  end;

  if (clbCuSeq.Caption <> '') then
  begin
    try
      if Frm_Main.Frm_JON01N[Self.Tag].lcsCu_seq = '' then
      begin
        ShowMessage('고객 일련번호가 없습니다. 고객정보를 조회 한 다음 [지급] 하세요!');
        Exit;
      end;
      if Frm_Main.Frm_JON01N[Self.Tag].cxtCallTelNum.Text = '' then
      begin
        ShowMessage('고객 전화번호가 없습니다. 고객정보를 조회 한 다음 [지급] 하세요!');
        Exit;
      end;
      if Frm_Main.Frm_JON01N[Self.Tag].cxtCallTelNum.Text <> Frm_Main.Frm_JON01N[Self.Tag].cxtCuTel.Text then
      begin
        ShowMessage('지급 할 고객 전화번호가 조회한 전화번호와 다릅니다. 고객정보를 재조회 한 다음 [지급] 처리 하세요!');
        Exit;
      end;
      if cxEventCnt.Value < 1 then
      begin
        ShowMessage('이벤트 횟수를 입력 하세요!');
        cxEventCnt.SetFocus;
        Exit;
      end;

      sEventCnt := FloatToStr(cxEventCnt.Value);

      locHdNo := Frm_Main.Frm_JON01N[Self.Tag].Proc_HDNOSearch; // 본사코드 정보를 읽는다.
      locBrNo := Frm_Main.Frm_JON01N[Self.Tag].Proc_BRNOSearch; // 지사코드 정보를 읽는다.

      Param := En_Coding(Frm_Main.Frm_JON01N[Self.Tag].lcsCu_seq);
      Param := Param + '│' + En_Coding(Frm_Main.Frm_JON01N[Self.Tag].cxtCuTel.Text);
      Param := Param + '│' + locHdNo;
      Param := Param + '│' + locBrNo;
      Param := Param + '│' + En_Coding(edtEventMemo.Text);
      Param := Param + '│' + En_Coding(sEventCnt);
      if rbEventM.Checked then Param := Param + '│0' else
      if rbEventP.Checked then Param := Param + '│1';
      Param := Param + '│1';   // 0.차감,1.충전 || 0.마일리지,1.이벤트횟수

      if not RequestBase(GetCallable05('SET_CUST_MILEAGE', 'MNG_CUST.SET_CUST_MILEAGE', Param), XmlData, ErrCode, ErrMsg) then
      begin
        GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
        Exit;
      end;

      curEventCnt.Caption := FloatToStr(cxFEventCnt.Value);
      cxHEventCnt.Value := cxFEventCnt.Value;
      cxEventCnt.Value := 0;
      edtEventMemo.Clear;
      ShowMessage('저장 되었습니다.');
      GrpSetEventView.Visible := False;
    except
      on e: exception do
      begin
        Assert(False, E.Message);
      end;
    end;
  end else
  begin
    ShowMessage('신규 미등록 고객은 이벤트 횟수를 저장할 수 없습니다.');
  end;
end;

procedure TFrm_COM40.cxBtnTelNESelectClick(Sender: TObject);
begin
  proc_search;
end;

procedure TFrm_COM40.cxCurMileRefreshExit(Sender: TObject);
begin
  if cxCurMileRefresh.Text = '' then
    cxCurMileRefresh.Value := 0;
end;

procedure TFrm_COM40.cxCurMileRefreshKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    edtAddMileMemo.SetFocus;
end;

procedure TFrm_COM40.cxEventCntPropertiesChange(Sender: TObject);
begin
  if rbEventM.Checked then
    cxFEventCnt.Value := cxHEventCnt.Value - cxEventCnt.Value
  else if rbEventP.Checked then
    cxFEventCnt.Value := cxHEventCnt.Value + cxEventCnt.Value;

end;

procedure TFrm_COM40.edtAddMileMemoKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    btnMileCharge.SetFocus;
end;

procedure TFrm_COM40.edtMileMemoKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    btnMileOut.SetFocus;
end;

procedure TFrm_COM40.btnCouponCloseClick(Sender: TObject);
begin
  GrpSetCoupon.Visible := False;
end;

procedure TFrm_COM40.btnCouponSendClick(Sender: TObject);
var
  ErrStr: string;
begin
  edtCouponHP.Text := RemovePhone(edtCouponHP.Text);

  if not CheckHPType(edtCouponHP.Text, ErrStr) then
  begin
    GMessagebox(ErrStr, CDMSE);
    edtCouponHP.SetFocus;
    Exit;
  end;

  RequestMobileCoupone(Frm_Main.Frm_JON01N[Self.Tag].lcsCu_seq, edtCouponHP.Text, Trunc(curOutMileMny.Value));
end;

procedure TFrm_COM40.btnMileChargeClick(Sender: TObject);
begin
	// 고객 마일리지를 충전 처리 한다.
  if TCK_USER_PER.COM_CustMlgCharge <> '1' then
  begin
		GMessagebox('고객에게 마일리지 충전 권한이 없습니다.', CDMSE);
    exit;
  end;
	Proc_CustMileRefresh;
end;

procedure TFrm_COM40.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_COM40.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_COM40.FormCreate(Sender: TObject);
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

procedure TFrm_COM40.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_COM40.FormDestroy(Sender: TObject);
begin
  Frm_COM40 := nil;
end;

procedure TFrm_COM40.FormShow(Sender: TObject);
begin
  fSetFont(Frm_COM40, GS_FONTNAME);
  fSetSkin(Frm_COM40);
end;

procedure TFrm_COM40.Proc_Init;
var
  i: integer;
begin
  for i := 0 to cxgCustMlg.ColumnCount - 1 do
    cxgCustMlg.Columns[i].DataBinding.ValueType := 'String';
  cxgCustMlg.Columns[2].DataBinding.ValueType := 'Currency';
  cxgCustMlg.Columns[3].DataBinding.ValueType := 'Currency';
  cxgCustMlg.Columns[4].DataBinding.ValueType := 'Currency';
  cxgCustMlg.DataController.SetRecordCount(0);

  CB_Gubun.ItemIndex := 0;
  curTotal.Caption := '0';
  curCurrent.Caption := '0';
  curCoupon.Caption := '0';
  curPrzCnt.Caption := '0';
  curEventCnt.Caption := '0';
  clbCuSeq.Caption := '';

  cbbCuProduct.Clear; // 지급상품명
  cbbCuProduct.Properties.Items.Text := _PROD_BASE;
  curOutMileMny.Enabled := True;
  curOutMileMny.Value := 0; // 지급마일리지

  cxCurMileRefresh.Value := 0; // 마일리지 충전금액.
  edtAddMileMemo.Text := '';
end;

procedure TFrm_COM40.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_COM40.proc_search;
var
  XmlData, Param, ErrMsg, sTemp : string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	I, ErrCode, icnt, j, iRow : Integer;
begin
  Param := clbCuSeq.Caption;

  Param := Param + '│' + IntToStr(CB_Gubun.ItemIndex);

	try
		Screen.Cursor := crHourGlass;
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel05('LISTCUSTMILEAGE', 'MNG_CUST.LIST_CUST_MILEAGE', '1000', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				Screen.Cursor := crDefault;
				FreeAndNil(slList);
				Exit;
			end;

			xdom := ComsDomDocument.Create;
			try
				iCnt := 1;
				Frm_Flash.cxPBar1.Properties.Max := slList.Count;
				Frm_Flash.cxPBar1.Position := 0;
				cxgCustMlg.DataController.SetRecordCount(0);
				cxgCustMlg.BeginUpdate;
				for j := 0 to slList.Count - 1 do
				begin
					Frm_Flash.cxPBar1.Position := j + 1;
					Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
					Application.ProcessMessages;
					xmlData := slList.Strings[j];
					xdom.loadXML(XmlData);
					lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');

					if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
					begin
						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
						ls_Rcrd := TStringList.Create;
						try
							for i := 0 to lst_Result.length - 1 do
							begin
								GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
								if i = 0 then
								begin
									if ls_Rcrd[0] = '' then ls_Rcrd[0] := '0';
									if ls_Rcrd[3] = '' then ls_Rcrd[3] := '0';
									if ls_Rcrd[4] = '' then ls_Rcrd[4] := '0';
									if ls_Rcrd[5] = '' then ls_Rcrd[5] := '0';
									curTotal   .Caption := FormatFloat('#,', StrToFloatDef(ls_Rcrd[0], 0));
									curCurrent .Caption := FormatFloat('#,', StrToFloatDef(ls_Rcrd[3], 0));
									curCoupon  .Caption := FormatFloat('#,', StrToFloatDef(ls_Rcrd[4], 0));
									curEventCnt.Caption := FormatFloat('#,', StrToFloatDef(ls_Rcrd[5], 0));
								end else
								begin
									iRow := cxgCustMlg.DataController.AppendRecord;
									ls_Rcrd.Insert(0, IntToStr(i));
									if ls_Rcrd[2] = '' then ls_Rcrd[2] := '0';
									if ls_Rcrd[3] = '' then ls_Rcrd[3] := '0';
									if ls_Rcrd[4] = '' then ls_Rcrd[4] := '0';
									sTemp := ls_Rcrd[1];
									sTemp := copy(sTemp, 1, 4) + '-' + copy(sTemp, 5, 2) + '-' + copy(sTemp, 7, 2)
										+ ' ' + copy(sTemp, 9, 2) + ':' + copy(sTemp, 11, 2) + ':' + copy(sTemp, 13, 2);
									cxgCustMlg.DataController.Values[iRow, 0] := ls_Rcrd[0];
									cxgCustMlg.DataController.Values[iRow, 1] := sTemp;
									cxgCustMlg.DataController.Values[iRow, 2] := ls_Rcrd[2];
									cxgCustMlg.DataController.Values[iRow, 3] := ls_Rcrd[3];
									cxgCustMlg.DataController.Values[iRow, 4] := ls_Rcrd[4];
									cxgCustMlg.DataController.Values[iRow, 5] := ls_Rcrd[5];
									cxgCustMlg.DataController.Values[iRow, 6] := ls_Rcrd[7];
									cxgCustMlg.DataController.Values[iRow, 7] := ls_Rcrd[6];
								end;
							end;
						finally
							ls_Rcrd.Free;
						end;
					end;
				end;
			finally
				cxgCustMlg.EndUpdate;
				xdom := Nil;
			end;
		finally
			Frm_Flash.hide;   
			Screen.Cursor := crDefault;
			FreeAndNil(slList);
		end;
	except
		on E: Exception do
		begin
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_COM40.rbEventMClick(Sender: TObject);
begin
  cxEventCntPropertiesChange(cxEventCnt);
end;

// 고객 마일리지를 충전 처리 한다.
procedure TFrm_COM40.Proc_CustMileRefresh;
var
  Param, XmlData, ErrMsg : string;
  sMileMny, sMileMemo, locHdNo, locBrNo : string;
  ErrCode, CurMlg : Integer;
begin
  try
		if TCK_USER_PER.COM_CustMlgCharge <> '1' then
		begin
			GMessagebox('고객에게 지급 권한이 없습니다.', CDMSE);
			exit;
		end;
    if Frm_Main.Frm_JON01N[Self.Tag].lcsCu_seq = '' then
    begin
      ShowMessage('고객 일련번호가 없습니다. 고객정보를 조회 한 다음 [지급] 하세요!');
      Exit;
    end;
    if Frm_Main.Frm_JON01N[Self.Tag].cxtCallTelNum.Text = '' then
    begin
      ShowMessage('고객 전화번호가 없습니다. 고객정보를 조회 한 다음 [지급] 하세요!');
      Exit;
    end;
    if Frm_Main.Frm_JON01N[Self.Tag].cxtCallTelNum.Text <> Frm_Main.Frm_JON01N[Self.Tag].gsCuTelHint then
    begin
      ShowMessage('마일리지 지급할 고객 전화번호가 조회한 전화번호와 다릅니다. 고객정보를 재조회 한 다음 [지급] 처리 하세요!');
      Exit;
    end;
    if cxCurMileRefresh.Value < 1 then
    begin
      ShowMessage('충전 할 마일리지 금액을 입력 하세요!');
      cxCurMileRefresh.SetFocus;
      Exit;
    end;

    sMileMny  := ReplaceAll(cxCurMileRefresh.Text, ',', '');

    // 보정/지급/선물시 수정일경우 메모에 접수번호 표시
    if (Pos('수정', Frm_Main.Frm_JON01N[Self.Tag].Caption) > 0 ) then
      sMileMemo := edtAddMileMemo.Text + '/' + Frm_Main.Frm_JON01N[Self.Tag].cxtJoinNum.Text
    else
      sMileMemo := edtAddMileMemo.Text;

    locHdNo := Frm_Main.Frm_JON01N[Self.Tag].Proc_HDNOSearch; // 본사코드 정보를 읽는다.
    locBrNo := Frm_Main.Frm_JON01N[Self.Tag].Proc_BRNOSearch; // 지사코드 정보를 읽는다.

    Param := En_Coding(Frm_Main.Frm_JON01N[Self.Tag].lcsCu_seq);
    Param := Param + '│' + En_Coding(Frm_Main.Frm_JON01N[Self.Tag].cxtCuTel.Text);
    Param := Param + '│' + locHdNo;
    Param := Param + '│' + locBrNo;
    Param := Param + '│' + En_Coding(sMileMemo);
    Param := Param + '│' + En_Coding(sMileMny);
    Param := Param + '│1│0';   // 0.차감,1.충전 || 0.마일리지,1.이벤트횟수
    Param := Param + '│사용자 직접 수정';

    if not RequestBase(GetCallable05('SET_CUST_MILEAGE', 'MNG_CUST.SET_CUST_MILEAGE', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;

    cxCurMileRefresh.Value := 0;
    edtAddMileMemo.Clear;

		cxBtnTelNESelect.Click;

		ShowMessage('충전 완료 되었습니다.');
    CurMlg := StrToIntDef(ReplaceAll(curCurrent.Caption, ',', ''), 0);
		curCurrent.Caption := FormatFloat('#,##0', CurMlg + cxCurMileRefresh.Value);

 		Frm_Main.Frm_JON01N[Self.Tag].lblCuMile.Caption := curCurrent.Caption;
  	Frm_Main.Frm_JON01N[Self.Tag].SetMileColorChange;
  except
		on e: exception do
    begin
      Frm_Main.Frm_JON01N[Self.Tag].Enabled := True;
      Screen.Cursor := crDefault;
      Assert(False, E.Message);
    end;
  end;
end;

// 고객 마일리지를 즉시차감 처리 한다.
procedure TFrm_COM40.Proc_CustMileDeduct;
var
  Param : string;
  locHdNo, locBrNo, sMileMny: string;
  XmlData, ErrMsg: string;
  ErrCode: integer;
  CurMlg, PrizeCnt, PrizeMlg: Integer;
begin
  try
		if TCK_USER_PER.COM_CustMlgCharge <> '1' then
		begin
			GMessagebox('고객에게 지급 권한이 없습니다.', CDMSE);
			exit;
		end;
    if Frm_Main.Frm_JON01N[Self.Tag].lcsCu_seq = '' then
    begin
      ShowMessage('고객 일련번호가 없습니다. 고객정보를 조회 한 다음 [지급] 하세요!');
      Exit;
    end;
    if Frm_Main.Frm_JON01N[Self.Tag].cxtCallTelNum.Text = '' then
    begin
      ShowMessage('고객 전화번호가 없습니다. 고객정보를 조회 한 다음 [지급] 하세요!');
      Exit;
    end;
    if Frm_Main.Frm_JON01N[Self.Tag].cxtCallTelNum.Text <> Frm_Main.Frm_JON01N[Self.Tag].cxtCuTel.Text then
    begin
      ShowMessage('마일리지 지급 할 고객 전화번호가 조회한 전화번호와 다릅니다. 고객정보를 재조회 한 다음 [지급] 처리 하세요!');
      Exit;
    end;
    if curOutMileMny.Value < 1 then
    begin
      ShowMessage('지급 할 마일리지 금액을 입력 하세요!');
      curOutMileMny.SetFocus;
      Exit;
    end;

    sMileMny := FloatToStr(curOutMileMny.Value);

    locHdNo := Frm_Main.Frm_JON01N[Self.Tag].Proc_HDNOSearch; // 본사코드 정보를 읽는다.
    locBrNo := Frm_Main.Frm_JON01N[Self.Tag].Proc_BRNOSearch; // 지사코드 정보를 읽는다.

    Param := En_Coding(Frm_Main.Frm_JON01N[Self.Tag].lcsCu_seq);
    Param := Param + '│' + En_Coding(Frm_Main.Frm_JON01N[Self.Tag].cxtCuTel.Text);
    Param := Param + '│' + locHdNo;
    Param := Param + '│' + locBrNo;

    // 보정/지급/선물시 수정일경우 메모에 접수번호 자동저장
    if (Pos('수정', Frm_Main.Frm_JON01N[Self.Tag].Caption) > 0 ) then
      Param := Param + '│' + En_Coding(edtMileMemo.Text) + '/' + En_Coding(Frm_Main.Frm_JON01N[Self.Tag].cxtJoinNum.Text)
    else
      Param := Param + '│' + En_Coding(edtMileMemo.Text);

    Param := Param + '│' + En_Coding(sMileMny);
    Param := Param + '│0│0';   // 0.차감,1.충전 || 0.마일리지,1.이벤트횟수
    Param := Param + '│' + En_Coding(cbbCuProduct.Text);

    if not RequestBase(GetCallable05('SET_CUST_MILEAGE', 'MNG_CUST.SET_CUST_MILEAGE', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;
    prizeMlg := StrToIntDef(ReplaceAll(curCurrent.Caption, ',', ''), 0);
    CurMlg := prizeMlg - StrToIntDef(ReplaceAll(curOutMileMny.Text, ',', ''), 0);
    PrizeCnt := StrToIntDef(curPrzCnt.Caption, 0) + 1;

    Frm_Main.Frm_JON01N[Self.Tag].lblCuMile.Caption := FormatFloat('#,##0', CurMlg);
    Frm_Main.Frm_JON01N[Self.Tag].lblCuMileCnt.Caption := IntToStr(PrizeCnt);
    Frm_Main.Frm_JON01N[Self.Tag].SetMileColorChange;

    curOutMileMny.Value := 0;
		edtMileMemo.Clear;

		cxBtnTelNESelect.Click;
		
		ShowMessage('상품이 지급 되었습니다.');
  except
    on e: exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_COM40.RequestMobileCoupone(ACuSeq, AHP: string;
  ACharge: Integer);
var
  TxStr: string;
begin
  TxStr := GTx_UnitXmlLoad('C067N1.xml');
  TxStr := StringReplace(TxStr, 'UserIDString',     GT_USERIF.ID, [rfReplaceAll]);
  TxStr := StringReplace(TxStr, 'ClientVerString',  VERSIONINFO,  [rfReplaceAll]);
  TxStr := StringReplace(TxStr, 'ClientKeyString',  'MobileCpn',  [rfReplaceAll]);
  TxStr := StringReplace(TxStr, 'CuSeqStr',         ACuSeq,       [rfReplaceAll]);
  TxStr := StringReplace(TxStr, 'HPStr',            AHP,          [rfReplaceAll]);
  TxStr := StringReplace(TxStr, 'ChargeStr',        IntToStr(ACharge),     [rfReplaceAll]);

  RequestData(TxStr);
end;

procedure TFrm_COM40.RequestData(AData: string);
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
        ResponseData(ReceiveStr);
      end;
    end;
  finally
    Frm_Flash.Hide;
    Screen.Cursor := crDefault;
    StrList.Free
  end;
end;

procedure TFrm_COM40.ResponseData(AXmlData: string);
var
  xdom: msDomDocument;
  ErrorCode, ClientKey: string;
  CurMlg, PrizeCnt, PrizeMlg: Integer;
begin
  xdom := ComsDomDocument.Create;
  Screen.Cursor := crHourGlass;
  try
    try
      if not xdom.loadXML(AXmlData) then Exit;
      ErrorCode := GetXmlErrorCode(AXmlData);
      if ('0000' = ErrorCode) then
      begin
        ClientKey := GetXmlClientKey(AXmlData);
        if ClientKey = 'MobileCpn' then
        begin
          prizeMlg := StrToIntDef(ReplaceAll(curCurrent.Caption, ',', ''), 0);
          CurMlg := prizeMlg - StrToIntDef(ReplaceAll(curOutMileMny.Text, ',', ''), 0);
          PrizeCnt := StrToIntDef(curPrzCnt.Caption, 0) + 1;

          curCurrent.Caption := FormatFloat('#,##0', CurMlg);
          Frm_Main.Frm_JON01N[Self.Tag].lblCuMile.Caption := curCurrent.Caption;

          curPrzCnt.Caption  := FormatFloat('#,##0', PrizeCnt);
          Frm_Main.Frm_JON01N[Self.Tag].lblCuMileCnt.Caption := IntToStr(PrizeCnt);
          Frm_Main.Frm_JON01N[Self.Tag].SetMileColorChange;
					GrpSetCoupon.Visible := False;;
          GMessagebox('주유할인권을 전송했습니다.', CDMSI);
        end;
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

end.

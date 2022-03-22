unit xe_JON25;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
	Dialogs, xe_xml, xe_func, xe_gnl, xe_msg, cxGraphics, cxControls, MSXML2_TLB,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxLabel, Vcl.Menus, cxGroupBox, Vcl.ExtCtrls, cxTextEdit, Vcl.StdCtrls,
	cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView, IniFiles,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, dxSkinsCore,
  dxSkinscxPCPainter, cxCurrencyEdit, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  TCardAccountRec = record
    ConfSlip,
		BrNo, 
    Name,
    PhoneNo,
    AccType,
    BubinName,
    CustType,
    StartArea,
    EndArea: string;
    Price: Integer;
    WkSabun,
		WkName,
    Status: string;
  end;

	TFrm_JON25 = class(TForm)
    pnl1: TPanel;
    lbl65: TcxLabel;
    lblName: TcxLabel;
    lbl2: TcxLabel;
    lbl3: TcxLabel;
    lbl5: TcxLabel;
		cxGrid: TcxGrid;
    cxView: TcxGridDBTableView;
    cxColView1Column1: TcxGridDBColumn;
    cxColView1Column2: TcxGridDBColumn;
    cxColView1Column3: TcxGridDBColumn;
    cxColView1Column4: TcxGridDBColumn;
    cxColView1Column5: TcxGridDBColumn;
    cxLevel: TcxGridLevel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
		cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    Panel2: TPanel;
    cxLabel6: TcxLabel;
    cxLabel5: TcxLabel;
    btnReqAccount: TcxButton;
    btnCancelAccount: TcxButton;
    lblPhoneNo: TcxLabel;
		lblResultInfo: TcxLabel;
    lblBubinName: TcxLabel;
    lblStartArea: TcxLabel;
    lblEndArea: TcxLabel;
    lblCustomerType: TcxLabel;
    lblPrice: TcxLabel;
    lblworkerInfo: TcxLabel;
    lblAccPrice: TcxLabel;
    Panel3: TPanel;
    btnHistory: TcxButton;
    cxLabel7: TcxLabel;
    lblConfSlip: TcxLabel;
    cxLabel9: TcxLabel;
    lblAccType: TcxLabel;
    btnCardSearch: TcxButton;
    tmrPolling: TTimer;
    pnlInterval: TPanel;
    Label1: TLabel;
    lblInterval: TcxLabel;
    pnlMessage: TPanel;
    cxButton1: TcxButton;
    lblCardPaySeq: TcxLabel;
    lblCardTran: TcxLabel;
    cxLabel8: TcxLabel;
    lblCardDateTime: TcxLabel;
    lblCardUserInfo: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel10: TcxLabel;
    lblCardApproveNum: TcxLabel;
    cxLabel13: TcxLabel;
    cxtCardBigo: TcxTextEdit;
    cxGrid1: TcxGrid;
    cxViewKCP: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxViewKCPColumn1: TcxGridDBColumn;
    cxViewKCPColumn2: TcxGridDBColumn;
    cxViewKCPColumn3: TcxGridDBColumn;
    cxLabel11: TcxLabel;
    cxtCardCanReason: TcxTextEdit;
    pnlTitle: TPanel;
    cxButton2: TcxButton;
    btnClose: TcxButton;
    PnlMain: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxLblActive: TLabel;
    lblMessage: TcxLabel;
    lbTitle: TListBox;
    lbTitle2: TListBox;
    popGrid: TPopupMenu;
    N2: TMenuItem;
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnHistoryClick(Sender: TObject);
    procedure btnReqAccountClick(Sender: TObject);
    procedure btnCancelAccountClick(Sender: TObject);
    procedure btnCardSearchClick(Sender: TObject);
    procedure tmrPollingTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure pnlTitleMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure cxtCardCanReasonKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cxViewColumnPosChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxViewColumnSizeChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxViewKCPColumnPosChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxViewKCPColumnSizeChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
    FAccStatus: string;
    FConfSlip: string;
    FData: TCardAccountRec;
		gGridIDX : integer;
		procedure DispCardInfo(const AData: TCardAccountRec);

    procedure RequestCardBase(AKey, AAction, AConfSlip: string);
    procedure RequestCardSelect(AConfSlip: string);
    procedure RequestCardAccount(AConfSlip: string);
    procedure RequestCardCancel(AConfSlip: string);
    procedure RequestHistory(AConfSlip: string);

    procedure ResponseDataBase(ADataStr: WideString);
    procedure ResponseDataSelect(AXmlData: string);
    procedure ResponseDataAccount(AXmlData: string);
    procedure ResponseDataCancel(AXmlData: string);
    procedure ResponseDataHistory(AXmlData: string);
    procedure SetAccStatus(const Value: string);
    function GetCodeStr(const ACode: string): string;

    procedure SuccessMsg(ACode: Integer);

    procedure RequestData(AData: string);
		procedure proc_recieve(ls_rxxml : WideString);
    function prcApproveCancelReq : Boolean;
		function ResponseCardProcess(AXml: string; var AMsg: String): Boolean;
		procedure proc_Cell_Read(AGubun : integer);
		procedure proc_Cell_Save(AGubun : integer);
		procedure proc_Cell_Clear(AGubun : integer);

	public
    { Public declarations }
		lcCardPaySeq, lcCardPayRate, lcCardKind : string;
		Jon03Tag : Integer;
		property AccStatus: string read FAccStatus write SetAccStatus;
		function SetData(const AData: TCardAccountRec): Boolean;
    procedure ShowHistory;
  end;

const
  REFRESH_SEC = 5;

var
  Frm_JON25: TFrm_JON25;

implementation

{$R *.dfm}

uses xe_Dm, xe_packet, xe_Lib, Main;

 const
	 COLUUMNLIST : array[0..4] of TSortList = (
		 (cName : '������û�Ͻ�';  cWid : 113 ),
		 (cName : '���λ���'    ;  cWid : 096 ),
		 (cName : '��ûID'      ;  cWid : 086 ),
		 (cName : '��û�ڸ�'    ;  cWid : 088 ),
		 (cName : '���'        ;  cWid : 196 )
	 );

	 COLUUMNLIST2 : array[0..7] of TSortList = (
		 (cName : 'ó���Ͻ�'      ;  cWid : 120 ),
		 (cName : '�������'      ;  cWid : 070 ),
		 (cName : '��������'      ;  cWid : 090 ),
		 (cName : '�ŷ���ȣ'      ;  cWid : 100 ),
		 (cName : '���ι�ȣ'      ;  cWid : 079 ),
		 (cName : '���(��һ���)';  cWid : 130 ),
		 (cName : 'ó��������'  	;  cWid : 115 ),
		 (cName : '�����Ϸù�ȣ'  ;  cWid : 056 )
	 );

procedure TFrm_JON25.btnCloseClick(Sender: TObject);
begin
  if Assigned(Frm_Main.Frm_JON03[Jon03Tag]) then
  begin
    if Frm_Main.JON03MNG[Jon03Tag].Use then
    begin
      if Frm_Main.Frm_JON03[Jon03Tag].Grd2.CanFocus then
        Frm_Main.Frm_JON03[Jon03Tag].Grd2.SetFocus
      else
      if Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.CanFocus then
        Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.SetFocus;
    end;
  end;
  Close;
end;

procedure TFrm_JON25.FormCreate(Sender: TObject);
var iCol : integer;
  I, Save: Integer;
begin
  //====================================================
  // �� Ÿ��Ʋ ����..
  Save := GetWindowLong(Handle, gwl_Style);
  if (Save and ws_Caption) = ws_Caption then
  begin
    case BorderStyle of
      bsSingle, bsSizeable, bsDialog:
        SetWindowLong(Handle, gwl_Style, Save and (not (ws_Caption)) or ws_border);
    end;
    Height := Height - getSystemMetrics(sm_cyCaption);
    Refresh;
  end;

  pnlMessage.Left := 12;
  pnlMessage.Top  := 140;

  try
		for I := 0 to cxView.ColumnCount - 1 do
    begin
      cxView.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
    end;

		for I := 0 to cxViewKCP.ColumnCount - 1 do
    begin
      cxViewKCP.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
		end;
		iCol := cxViewKCP.GetColumnByFieldName('�������').Index;
		cxViewKCP.Columns[iCol].DataBinding.ValueTypeClass := TcxCurrencyValueType;
  except on E: Exception do
    Assert(False, E.Message);
  end;

  tmrPolling.Interval := 1000;
end;

procedure TFrm_JON25.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := False;
end;

procedure TFrm_JON25.FormDestroy(Sender: TObject);
begin
  Frm_JON25 := Nil;
end;

procedure TFrm_JON25.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON25, GS_FONTNAME);
  fSetSkin(Frm_JON25);
end;

procedure TFrm_JON25.RequestCardBase(AKey, AAction, AConfSlip: string);
var
  ls_TxLoad: string;
  ReceiveStr: string;
  StrList: TStringList;
  ErrCode: integer;
begin
  StrList := TStringList.Create;
  Screen.Cursor := crHandPoint;
  try
    ls_TxLoad := GTx_UnitXmlLoad('C055.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString',     GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',  VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',  AKey, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ActionString',     AAction, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString',   AConfSlip, [rfReplaceAll]);

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
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_JON25.RequestCardSelect(AConfSlip: string);
begin
  RequestCardBase('CardSelect', 'SELECT', AConfSlip);
end;

procedure TFrm_JON25.RequestCardAccount(AConfSlip: string);
begin
  RequestCardBase('CardInsert', 'INSERT', AConfSlip);
end;

procedure TFrm_JON25.RequestCardCancel(AConfSlip: string);
begin
  RequestCardBase('CardDelete', 'DELETE', AConfSlip);
end;

procedure TFrm_JON25.RequestHistory(AConfSlip: string);
var
  ls_TxLoad: string;
  ReceiveStr: string;
  StrList: TStringList;
  ErrCode: integer;
begin
{
  if FData.AccType <> 'ī��' then
  begin
    GMessagebox('[ī�����] �Ǹ� �����̷���ȸ�� �����մϴ�.', CDMSE);
    Exit;
  end;
}
	StrList := TStringList.Create;
  Screen.Cursor := crHandPoint;
  try
    ls_TxLoad := GTx_UnitXmlLoad('C057.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString',     GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',  VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',  'History', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString',   AConfSlip, [rfReplaceAll]);

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
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_JON25.ResponseDataBase(ADataStr: WideString);
var
  XmlData: WideString;
  ErrorCode, ClientKey: string;
begin
	Screen.Cursor := crHourGlass;
  try
    try
      XmlData := ADataStr;
      ErrorCode := GetXmlErrorCode(XmlData);
      if ('0000' = ErrorCode) then
      begin
        ClientKey := GetXmlClientKey(XmlData);
        if ClientKey = 'CardSelect' then
          ResponseDataSelect(XmlData)
        else if ClientKey = 'CardDelete' then
          ResponseDataCancel(XmlData)
        else if ClientKey = 'CardInsert' then
          ResponseDataAccount(XmlData)
        else if ClientKey = 'History' then
					ResponseDataHistory(XmlData)
				;
      end else
      begin
        GMessagebox(MSG012 + CRLF + ErrorCode, CDMSE);
      end;
    except
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_JON25.ResponseDataSelect(AXmlData: string);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlData) then
      Exit;

    lst_Result    := xdom.documentElement.selectNodes('/cdms/Service/CardPay/Data');
    AccStatus     := lst_Result[0].attributes.getNamedItem('Status').text;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_JON25.ResponseDataAccount(AXmlData: string);
begin
  RequestCardSelect(FData.ConfSlip);
  GMessagebox('�ſ�ī�� ���� ��û�Ͽ����ϴ�.', CDMSI);
{
  AccStatus := '00';
  if FData.AccType = '�Ϲ�' then
  begin
    FData.AccType := 'ī��';
    DispCardInfo(FData);
  end;
}
end;

procedure TFrm_JON25.ResponseDataCancel(AXmlData: string);
begin
  RequestCardSelect(FData.ConfSlip);
//  GMessagebox('�ſ�ī�� ������� ��û�Ͽ����ϴ�.', CDMSI);
//  AccStatus := '20';
end;

procedure TFrm_JON25.ResponseDataHistory(AXmlData: string);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, Cnt: Integer;
  DateStr, Status, ReqID, ReqName, Msg: string;
	iTitle: array[0..4] of integer;
begin
	xdom := ComsDomDocument.Create;
  ls_Rcrd := TStringList.Create;
  try
    if not xdom.loadXML(AXmlData) then
      Exit;

    Cnt := StrToIntDef(xdom.documentElement.selectNodes('/cdms/Service/CardPay')[0].attributes.getNamedItem('cnt').text, 0);

    lst_Result := xdom.documentElement.selectNodes('/cdms/Service/CardPay/Data');

		cxView.DataController.SetRecordCount(0);

    if Cnt < 1 then
			Exit;

		for i := 0 to lbTitle.Items.Count - 1 do
			iTitle[i] := cxView.GetColumnByFieldName(lbTitle.Items.Strings[i]).Index;
			
		for I := 0 to lst_Result.length - 1 do
    begin
      DateStr := lst_Result[I].attributes.getNamedItem('InDate').text;
      Status  := lst_Result[I].attributes.getNamedItem('Status').text;
			ReqID   := lst_Result[I].attributes.getNamedItem('InID').text;
			ReqName := lst_Result[I].attributes.getNamedItem('InName').text;
      Msg     := lst_Result[I].attributes.getNamedItem('Msg').text;

			cxView.DataController.AppendRecord;
			cxView.DataController.SetValue(I, iTitle[0], GetStrToLongDateTimeStr(DateStr));
			cxView.DataController.SetValue(I, iTitle[1], Status);
			cxView.DataController.SetValue(I, iTitle[2], ReqID);
			cxView.DataController.SetValue(I, iTitle[3], ReqName);
			cxView.DataController.SetValue(I, iTitle[4], Msg);
    end;
	finally
    ls_Rcrd.Free;
    xdom := Nil;
  end;
end;

procedure TFrm_JON25.DispCardInfo(const AData: TCardAccountRec);
var ls_Rcrd : TStringList;
begin
	if pos('��', AData.ConfSlip) > -1 then
	begin
		ls_Rcrd := TStringList.Create;
		GetTextSeperationEx2('��', AData.ConfSlip, ls_Rcrd);
		lblConfSlip.Caption := ls_Rcrd[0];
		FreeAndNil(ls_Rcrd);
	end
	else
		lblConfSlip.Caption     := AData.ConfSlip;
	lblAccType.Caption      := Format('%s / %s', [AData.AccType, AData.Status]);
  lblName.Caption         := AData.Name;
  lblPhoneNo.Caption      := AData.PhoneNo;
  lblBubinName.Caption    := AData.BubinName;
  lblCustomerType.Caption := Adata.CustType;
  lblStartArea.Caption    := AData.StartArea;
  lblEndArea.Caption      := AData.EndArea;
  lblPrice.Caption        := FormatFloat('#,##0', AData.Price);
  lblworkerInfo.Caption   := Format('%s(%s)', [AData.WkSabun, AData.WkName]);

  Frm_Main.Frm_JON03[Jon03Tag].proc_Acc_Search(1, AData.ConfSlip, 'JON25-1', True);
end;

function TFrm_JON25.SetData(const AData: TCardAccountRec): Boolean;
begin
  tmrPolling.Enabled := False;
  pnlInterval.Visible := False;
  pnlMessage.Visible := False;

  FAccStatus := '';
  FData := AData;
  FConfSlip := AData.ConfSlip;
  cxView.DataController.SetRecordCount(0);
  cxViewKCP.DataController.SetRecordCount(0);

  DispCardInfo(AData);

  lblAccPrice.Caption     := '-';
  lblResultInfo.Caption   := '-';
//btnReqAccount.Enabled := (AData.AccType <> 'ī��');

  lcCardPaySeq              := '';  // ī������Ϸù�ȣ �߰�. 2011-10-20
  lcCardPayRate             := '';  // ī������ݾ� �߰�. 2011-10-20
  lblCardPaySeq.Caption     := '';
  lblCardTran.Caption       := '';
  lblResultInfo.Caption     := '';  // ��������.
  lblCardTran.Caption       := '';  // �ŷ���ȣ.
  lblCardApproveNum.Caption := '';  // ���ι�ȣ
  cxtCardBigo.Text          := '';  // ���
  lblCardDateTime.Caption   := '';  // ó���Ͻ�.
  lblCardUserInfo.Caption   := '';  // ó���� ����.
  cxtCardCanReason.Text     := '';  // ��һ���.

  // 03.KCP, 06.KICC ī����� ��� �߰�. 2011-10-20.
  lcCardKind := IsCardUseBranch_KCP(AData.BrNo);
  if ( lcCardKind = '03' ) Or ( lcCardKind = '06' ) then
  begin
		RequestData(GetSel05('GET_CARD_INFO_KCP', 'pay_card.card_pay_info', '100', AData.ConfSlip));

    lblCardPaySeq.Caption := lcCardPaySeq;
    lblAccPrice.Caption   := FormatFloat('#,##0', StrToFloatDef(lcCardPayRate, 0));
    pnlInterval.Visible   := False;
    btnCardSearch.Visible := False;
		btnReqAccount.Visible := False;
    btnReqAccount.Enabled := False;
    btnCancelAccount.Enabled := True;
    cxtCardBigo.Enabled      := True;
    cxGrid1.Align            := alClient;
		cxGrid1.Visible          := True;
		gGridIDX := 2;
		if lblResultInfo.Caption = '�������' then
		begin
			btnCancelAccount.Enabled := False;
		end;
	end else
	begin
		RequestCardSelect(AData.ConfSlip);

		lblCardPaySeq.Caption := '';
		//lblAccPrice.Caption   := lcCardPayRate;
		pnlInterval.Visible   := True;
		btnReqAccount.Visible := True;
		btnReqAccount.Enabled := False;
		btnCardSearch.Visible := True;
		pnlInterval.Visible   := True;
		cxGrid1.Visible       := False;
		gGridIDX := 1;
	end;
	proc_Cell_Read(gGridIDX);

  Result:= True;
end;

procedure TFrm_JON25.RequestData(AData: string);
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
        proc_recieve(ReceiveStr);
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    StrList.Free
  end;
end;

procedure TFrm_JON25.proc_Cell_Clear(AGubun : integer);
var
	i: Integer;
	ln_env: TIniFile;
  Column: TcxGridDBColumn;
begin
	try
		ln_env := TIniFile.Create(ENVPATHFILE);
		if AGubun = 1 then
		begin
			ln_env.EraseSection('ConfJON25-1');
			ln_env.EraseSection('ConfJON25-1Size');
			cxView.DataController.BeginUpdate;
			try
				for i := 0 to Length(COLUUMNLIST) - 1 do
				begin
					Column := cxView.GetColumnByFieldName(COLUUMNLIST[i].CName);
					Column.Index := i;
					Column.Width := COLUUMNLIST[i].CWid;
				end;

			finally
				cxView.DataController.EndUpdate;
				FreeAndNil(ln_env);
			end;
		end else
		begin
			ln_env.EraseSection('ConfJON25-2');
			ln_env.EraseSection('ConfJON25-2Size');
			cxViewKCP.DataController.BeginUpdate;
			try
				for i := 0 to Length(COLUUMNLIST2) - 1 do
				begin
					Column := cxViewKCP.GetColumnByFieldName(COLUUMNLIST2[i].CName);
					Column.Index := i;
					Column.Width := COLUUMNLIST2[i].CWid;
				end;

			finally
				cxViewKCP.DataController.EndUpdate;
				FreeAndNil(ln_env);
			end;
		end;
	except
    on e: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON25.proc_Cell_Read(AGubun : integer);
var
	i, j, iRow, ciWid, iCol : Integer;
	ln_env: TIniFile;
	ShowList, WidthList: TStringList;
	Column: TcxGridDBColumn;
	sTmp : string;
begin
	ln_Env := TIniFile.Create(ENVPATHFILE);
	ShowList := TStringList.Create;
	WidthList := TStringList.Create;

	try
		if AGubun = 1 then
		begin
			ln_env.ReadSectionValues('ConfJON25-1', ShowList);
			ln_env.ReadSectionValues('ConfJON25-1Size', WidthList);

			if (ShowList.Count > 0) and (ShowList.Count = WidthList.Count) then
			begin
				for I := 0 to ShowList.Count - 1 do
				begin
					Column := cxView.GetColumnByFieldName(ShowList.Values[IntToStr(I)]);

					for j := 0 to Length(COLUUMNLIST) - 1 do
					begin
						sTmp := ShowList.Values[IntToStr(i)];
						if (COLUUMNLIST[j].CName = sTmp ) then
						begin
							ciWid := COLUUMNLIST[j].CWid;
							Break;
						end;
					end;

					if Assigned(Column) then
					begin
						Column.Index := I;
						Column.Width := StrToIntDef(WidthList.Values[IntToStr(I)], ciWid);
					end;
				end;
			end else
			begin
				proc_Cell_Clear(1);
			end;
		end else
		begin
			ln_env.ReadSectionValues('ConfJON25-2', ShowList);
			ln_env.ReadSectionValues('ConfJON25-2Size', WidthList);

			if (ShowList.Count > 0) and (ShowList.Count = WidthList.Count) then
			begin
				for I := 0 to ShowList.Count - 1 do
				begin
					Column := cxViewKCP.GetColumnByFieldName(ShowList.Values[IntToStr(I)]);

					for j := 0 to Length(COLUUMNLIST2) - 1 do
					begin
						sTmp := ShowList.Values[IntToStr(i)];
						if (COLUUMNLIST2[j].CName = sTmp ) then
						begin
							ciWid := COLUUMNLIST2[j].CWid;
							Break;
						end;
					end;

					if Assigned(Column) then
					begin
						Column.Index := I;
						Column.Width := StrToIntDef(WidthList.Values[IntToStr(I)], ciWid);
					end;
				end;
			end else
			begin
				proc_Cell_Clear(2);
			end;
		end;
	finally
		FreeAndNil(ShowList);
		FreeAndNil(WidthList);
    FreeAndNil(ln_env);
  end;
end;

procedure TFrm_JON25.proc_Cell_Save(AGubun : integer);
var
  i: Integer;
  ln_env: TIniFile;
	sTmp: string;
begin
	try
		// ���ӱ�� �׸��� �÷��̵� ������ ����.
		ln_env := TIniFile.Create(ENVPATHFILE);
		try
			if AGubun = 1 then
			begin
				ln_env.EraseSection('ConfJON25-1');
				ln_env.EraseSection('ConfJON25-1Size');
				for i := 0 to cxView.ColumnCount - 1 do
				begin
					sTmp := cxView.Columns[i].DataBinding.FieldName;
					ln_env.WriteString('ConfJON25-1', IntToStr(i), sTmp);
					ln_env.WriteInteger('ConfJON25-1Size', IntToStr(i), cxView.Columns[i].Width);
				end;
			end else
			begin
				ln_env.EraseSection('ConfJON25-2');
				ln_env.EraseSection('ConfJON25-2Size');
				for i := 0 to cxViewKCP.ColumnCount - 1 do
				begin
					sTmp := cxViewKCP.Columns[i].DataBinding.FieldName;
					ln_env.WriteString('ConfJON25-2', IntToStr(i), sTmp);
					ln_env.WriteInteger('ConfJON25-2Size', IntToStr(i), cxViewKCP.Columns[i].Width);
				end;
			end;
		finally
			FreeAndNil(ln_env);
		end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON25.proc_recieve(ls_rxxml : WideString);
var
  xdom: msDomDocument;
  ls_ClientKey, ls_Msg_Err : string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd : TStringList;
  ErrDesc, sDate: string;
  Row, I : Integer;
	iTitle: array[0..7] of integer;
begin
	try
		xdom := ComsDomDocument.Create;
    Screen.Cursor := crHourGlass;
    try
      if not xdom.loadXML(ls_rxxml) then Exit;

      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_ClientKey  := GetXmlClientKey(ls_rxxml);

        if ls_ClientKey = 'GET_CARD_INFO_KCP' then
        begin
          // KCP ī�� ���� �� ���� ��ȸ.(���� ���� ����:������ȣ �ϳ��� ������ ������,,)
          lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
          ls_Rcrd := TStringList.Create;
          try
            for I := 0 to lst_Result.length - 1 do
            begin
              GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

              if ls_Rcrd.Count > 6 then
              begin
                lcCardPaySeq              := ls_Rcrd[0];      // ī������Ϸù�ȣ �߰�. 2011-10-20
                lcCardPayRate             := ls_Rcrd[1];      // ī������ݾ� �߰�. 2011-10-20
                lblCardPaySeq.Caption     := lcCardPaySeq;
                lblCardTran.Caption       := lcCardPayRate;
                lblResultInfo.Caption     := ls_Rcrd[2];      // ��������.
                lblCardTran.Caption       := ls_Rcrd[3];      // �ŷ���ȣ.
                lblCardApproveNum.Caption := ls_Rcrd[4];      // ���ι�ȣ
                cxtCardBigo.Text          := ls_Rcrd[5];      // ���
                lblCardDateTime.Caption   := ls_Rcrd[6];      // ó���Ͻ�.
                lblCardUserInfo.Caption   := ls_Rcrd[7] + '/' + ls_Rcrd[8];// ó���� ����.
                cxtCardCanReason.Text     := ls_Rcrd[9];      // ��һ���
              end;
            end;
          finally
            ls_Rcrd.Free;
          end;
        end else
        if ls_ClientKey = 'GET_CARD_SELECT_KCP' then
        begin
          // KCP ī�� ���� �� ���� ����Ʈ ��ȸ.
          lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

					cxViewKCP.DataController.SetRecordCount(0);
          cxViewKCP.BeginUpdate;
          ls_Rcrd := TStringList.Create;
          try
						for i := 0 to lbTitle2.Items.Count - 1 do
							iTitle[i] := cxViewKCP.GetColumnByFieldName(lbTitle2.Items.Strings[i]).Index;
							
						for I := 0 to lst_Result.length - 1 do
            begin
              GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

              if ls_Rcrd.Count > 6 then
              begin
								Row := cxViewKCP.DataController.AppendRecord;

                sDate := '';
                if Length(ls_Rcrd[6]) > 13 then
									sDate := FormatDateTime('yyyy-mm-dd', StrToDate(Date8to10(ls_Rcrd[6]))) + ' ' + Copy(ls_Rcrd[6],9,2) + ':'+ Copy(ls_Rcrd[6],11,2) + ':' + Copy(ls_Rcrd[6],13,2);

								cxViewKCP.DataController.Values[Row, iTitle[0]] := sDate;
								cxViewKCP.DataController.Values[Row, iTitle[1]] := StrToFloatDef(ls_Rcrd[1], 0);  // ī������ݾ� �߰�. 2011-10-20
								cxViewKCP.DataController.Values[Row, iTitle[2]] := ls_Rcrd[2];  // ��������.
								cxViewKCP.DataController.Values[Row, iTitle[3]] := ls_Rcrd[3];  // �ŷ���ȣ.
								cxViewKCP.DataController.Values[Row, iTitle[4]] := ls_Rcrd[4];  // ���ι�ȣ
								cxViewKCP.DataController.Values[Row, iTitle[5]] := ls_Rcrd[5];  // ���
								cxViewKCP.DataController.Values[Row, iTitle[6]] := ls_Rcrd[7] + '/' + ls_Rcrd[8]; // ó���� ����.
								cxViewKCP.DataController.Values[Row, iTitle[7]] := ls_Rcrd[0];  // ī������Ϸù�ȣ �߰�. 2011-10-20

{
								cxViewKCP.DataController.SetValue(Row, iTitle[0], sDate);       // ó���Ͻ�.
								cxViewKCP.DataController.SetValue(Row, iTitle[1], StrToFloatDef(ls_Rcrd[1], 0));  // ī������ݾ� �߰�. 2011-10-20
								cxViewKCP.DataController.SetValue(Row, iTitle[2], ls_Rcrd[2]);  // ��������.
								cxViewKCP.DataController.SetValue(Row, iTitle[3], ls_Rcrd[3]);  // �ŷ���ȣ.
								cxViewKCP.DataController.SetValue(Row, iTitle[4], ls_Rcrd[4]);  // ���ι�ȣ
								cxViewKCP.DataController.SetValue(Row, iTitle[5], ls_Rcrd[5]);  // ���
								cxViewKCP.DataController.SetValue(Row, iTitle[6], ls_Rcrd[7] + '/' + ls_Rcrd[8]); // ó���� ����.
								cxViewKCP.DataController.SetValue(Row, iTitle[7], ls_Rcrd[0]);  // ī������Ϸù�ȣ �߰�. 2011-10-20  }
							end;
						end;
					finally
						ls_Rcrd.Free;
						cxViewKCP.EndUpdate;
          end;
        end;
			end else
      begin
        ErrDesc := GetXmlErrorMsg(ls_rxxml);
        GMessagebox(ErrDesc, CDMSE);
      end;
    except
      on e : Exception do
			begin
        Assert(False, 'Frm_JON25.proc_recieve:' + E.Message);
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    xdom := Nil;
  end;
end;

// ī���ΰ�츸 ���� ������
procedure TFrm_JON25.SetAccStatus(const Value: string);
var
  Code, BCode: Integer;
begin
  BCode := StrToIntDef(FAccStatus, -1);
  FAccStatus := Value;

  Code := StrToIntDef(Value, -1);

  if (FData.AccType = '����') and (FData.Status = '�Ϸ�') then
  begin
    btnReqAccount.Enabled     := False;
    btnCancelAccount.Enabled  := False;
    btnCardSearch.Enabled      := False;
    tmrPolling.Enabled        := False;
    pnlInterval.Visible       := False;
  end else
  begin
    // ��ưȰ��ȭ
		if (lcCardKind = '03') or (lcCardKind = '06') then // '01' : MSK ,   '02' : ksnet ,   '03' : KCP
    begin
      //btnReqAccount.Enabled   := (Code in [90]) and (GetCardType(FData.BrNo) = 'MSK') ;        // [�����̿�û] �� ������û ����
      //btnCancelAccount.Enabled  := Code in [0, 1, 10, 99];  // [������û, ������û�Ϸ�, �����Ϸ�, ����] �� ������� ����
      btnCancelAccount.Enabled := True;
    end else
    begin
      // '01' : MSK ,   '02' : ksnet ,   '03' : KCP
      btnReqAccount.Visible     := True;
      btnReqAccount.Enabled     := (Code in [90]) and (GetCardType(FData.BrNo) = '01') ;        // [�����̿�û] �� ������û ����
      btnCancelAccount.Enabled  := Code in [0, 1, 10, 99];  // [������û, ������û�Ϸ�, �����Ϸ�, ����] �� ������� ����
    end;

    // ���� ��ȸ
		if (lcCardKind = '03') or (lcCardKind = '06') then  // '01' : MSK ,   '02' : ksnet ,   '03' : KCP
    begin
      tmrPolling.Enabled    := False;       // [������û, ������û�Ϸ�, ������ҿ�û] ������ȸ
      pnlInterval.Visible   := False;       // [������û, ������û�Ϸ�, ������ҿ�û] ������ȸ
      btnCardSearch.Enabled := True;
    end else
    begin
      tmrPolling.Enabled    := (Code in [0, 1, 20]);       // [������û, ������û�Ϸ�, ������ҿ�û] ������ȸ
      pnlInterval.Visible   := (Code in [0, 1, 20]);       // [������û, ������û�Ϸ�, ������ҿ�û] ������ȸ
      btnCardSearch.Enabled := True;
    end;
  end;

  if lcCardKind = '01' then   // '01' : MSK ,   '02' : ksnet ,   '03' : KCP
  begin
    // ������û�ݾ�
    if Code in [21, 90, 99] then
      lblAccPrice.Caption     := '-'
    else
      lblAccPrice.Caption     := FormatFloat('#,##0', FData.Price);

    // ó�����
    lblResultInfo.Caption := GetCodeStr(Value);

    if (FData.AccType = '����') and (Code <> 90) then
    begin
      FData.AccType := 'ī��';
      DispCardInfo(FData);
    end;

    if (Code = 21) and (FData.AccType ='ī��') then
    begin
      FData.AccType := '����';
      DispCardInfo(FData);
    end;

    // �Ϸ�(�����Ϸ�/��ҿϷ�) �޽��� ǥ��
    if (BCode <> -1) and (BCode <> Code) and (Code in [10, 21]) then
      SuccessMsg(Code);
  end;
end;

function TFrm_JON25.GetCodeStr(const ACode: string): string;
begin
  Result := '';
  case StrToIntDef(ACode, -1) of
   0:  Result := '������û';
   1:  Result := '������û��';
  10:  Result := '�����Ϸ�';
  20:  Result := '������ҿ�û';
  21:  Result := '������ҿϷ�';
  90:  Result := '�����̿�û';
  99:  Result := '�����߻�';
  end;
end;

procedure TFrm_JON25.N2Click(Sender: TObject);
begin
	proc_Cell_Clear(gGridIDX);
end;

procedure TFrm_JON25.btnReqAccountClick(Sender: TObject);
begin
  if FData.Price < 1 then
  begin
    GMessagebox('������û�ݾ��� ��ȿ���� �ʾ� ī������� �� �� �����ϴ�.', CDMSE);
    Exit;
  end;

  if (FData.AccType <> '����')
      or (Application.MessageBox(PChar('[����]���� ''ī�����'' ��û�Ͻðڽ��ϱ�?'), 'ī�����',
                                  MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    RequestCardAccount(FData.ConfSlip);
  end;
end;

procedure TFrm_JON25.btnCancelAccountClick(Sender: TObject);
begin
 	if Not func_EucKr_Check(cxtCardCanReason, 0) then Exit;

	// '01' : MSK ,   '02' : ksnet ,   '03' : KCP
	if (lcCardKind = '03') or (lcCardKind = '06') then
  begin
    prcApproveCancelReq;
  end else
  begin
    RequestCardCancel(FData.ConfSlip);
  end;
end;

procedure TFrm_JON25.btnHistoryClick(Sender: TObject);
begin
	// '01' : MSK ,   '02' : ksnet ,   '03' : KCP
	if (lcCardKind = '03') or (lcCardKind = '06') then
  begin
		RequestData(GetSel05('GET_CARD_SELECT_KCP', 'pay_card.card_pay_history', '100', FData.ConfSlip));
  end else
  begin
		RequestHistory(FData.ConfSlip);
  end;
end;

procedure TFrm_JON25.btnCardSearchClick(Sender: TObject);
begin
{
	if FData.AccType <> 'ī��' then
  begin
    GMessagebox('[ī�����] �Ǹ� ó����� ��ȸ�� �����մϴ�.', CDMSE);
    Exit;
  end;
}
  RequestCardSelect(FData.ConfSlip);
end;

procedure TFrm_JON25.tmrPollingTimer(Sender: TObject);
var
  Sec: Integer;
begin
  Sec := StrToIntDef(lblInterval.Caption, REFRESH_SEC);

  if Sec = 0 then
  begin
    lblResultInfo.Caption := '��ȸ ��';
    Application.ProcessMessages;
    RequestCardSelect(FData.ConfSlip);
  end;

  Dec(Sec);
  if Sec < 0 then Sec := REFRESH_SEC;
  lblInterval.Caption := IntToStr(Sec);
end;

procedure TFrm_JON25.ShowHistory;
begin
  RequestHistory(FData.ConfSlip);
end;

procedure TFrm_JON25.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON25.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tmrPolling.Enabled := False;
  Action := caFree;
end;

procedure TFrm_JON25.SuccessMsg(ACode: Integer);
var
  Msg: string;
begin
  if ACode = 10 then
    Msg := '������ �Ϸ�Ǿ����ϴ�.'
  else if ACode = 21 then
    Msg := '"�� ī������� ������� �Ǿ����ϴ�."' + #13#10 +
           '"���������� [����]���� ����ǰ�, �������´� [���� or �Ϸ�] �����Դϴ�."' + #13#10 +
           '"������ ��� �� ��쿣 �����˾� �޴��� �̿��Ͽ� ���� ����ϼ���!"';

  lblMessage.Caption := Msg;
  pnlMessage.Top := (Self.Height - pnlMessage.Height) div 2;
  pnlMessage.Visible := True;
  btnHistory.Click;
end;

procedure TFrm_JON25.cxButton1Click(Sender: TObject);
begin
  btnHistory.Click;
  pnlMessage.Visible := False;
end;

procedure TFrm_JON25.cxtCardCanReasonKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_JON25.cxViewColumnPosChanged(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	proc_Cell_Save(1);
end;

procedure TFrm_JON25.cxViewColumnSizeChanged(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	proc_Cell_Save(1);
end;

procedure TFrm_JON25.cxViewKCPColumnPosChanged(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	proc_Cell_Save(2);
end;

procedure TFrm_JON25.cxViewKCPColumnSizeChanged(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	proc_Cell_Save(2);
end;

// KCP ī����� ��� ó�� �Ѵ�.   2011-10-20.
procedure TFrm_JON25.pnlTitleMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

function TFrm_JON25.prcApproveCancelReq : Boolean;
var
  ls_TxLoad : string;
  rv_str: string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
  Msg, sTemp : string;
begin

  try
    // ī����� ������� ��û.
    if Length(lblCardPaySeq.Caption) < 1 then
    begin
      GMessagebox('�����Ϸù�ȣ�� ������ ������Ҹ� �� �� �����ϴ�.', CDMSE);
      Exit;
    end;
    if Length(lblCardTran.Caption) < 1 then
    begin
      GMessagebox('�ŷ���ȣ�� ������ ������Ҹ� �� �� �����ϴ�.', CDMSE);
      Exit;
    end;

    ls_TxLoad := GTx_UnitXmlLoad('C502.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CARD_APPROVE_CANCEL', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, '�����Ϸù�ȣ', lblCardPaySeq.Caption, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, '�ŷ���ȣ', lblCardTran.Caption, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, '��һ���', En_Coding(cxtCardCanReason.Text), [rfReplaceAll]);

    Screen.Cursor := crHourGlass;
    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          if ResponseCardProcess(ls_rxxml, Msg) then
          begin
            cxtCardBigo.Text := Msg;
            lblResultInfo.Caption     := '������� �Ϸ�';      // ��������.
            Application.ProcessMessages;
            GMessagebox(Msg, CDMSI);
            // ��ư ó��.
            btnCancelAccount.Enabled  := False;
            cxtCardBigo.Enabled       := False;
          end else
          begin
            cxtCardBigo.Text := Msg;
            GMessagebox(Msg, CDMSE);
          end;
        end else
        begin
          GMessagebox('[Error]�������� ����� �������� ���Ͽ����ϴ�.', CDMSE);
        end;
      end;
    finally
      FreeAndNil(slReceive);
      Screen.Cursor := crDefault;
    end;
  except
    on e:Exception do
    begin
      sTemp := 'JON25[sb_ApproveCancleReq]:' + e.Message;
      Log(sTemp, LOGDATAPATHFILE);
      Assert(False, E.Message);
    end;
  end;
end;

// ī�� ���� ���� ���� ��� ȸ�� ó�� ��.
function TFrm_JON25.ResponseCardProcess(AXml: string; var AMsg: String): Boolean;
var
  ErrorCode, ls_ClientKey : string;
begin
  Result := False;

  Screen.Cursor := crHourGlass;
  try
    try
      ls_ClientKey := GetXmlClientKey(AXml);
      if ls_ClientKey = 'CARD_APPROVE_CANCEL' then
      begin
        ErrorCode := GetXmlErrorCode(AXml);
        if ('0000' = ErrorCode) then
        begin
          AMsg := GetXmlErrorMsg(AXml);
          Result := True;
        end
        else
          AMsg := '[' + ErrorCode + '] ' + GetXmlErrorMsg(AXml);
      end;
    except
      on e: exception do
      begin
        Assert(False, 'frmJON25[ResponseCardProcess]:' + E.Message);
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

end.

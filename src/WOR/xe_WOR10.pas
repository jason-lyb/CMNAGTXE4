unit xe_WOR10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, System.StrUtils, MSXML2_TLB,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxLabel, cxContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, Vcl.ExtCtrls, cxGroupBox,
  cxCurrencyEdit, Vcl.StdCtrls, cxRadioGroup, cxTextEdit, cxDropDownEdit,
  cxButtons, cxMaskEdit, cxCalendar, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  dxSkinsCore, dxSkinscxPCPainter, dxDateRanges, GradientLabel, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_WOR10 = class(TForm)
    cxGridPickup: TcxGrid;
    cxViewPickup: TcxGridDBTableView;
    cxColViewWkHistoryColumn1: TcxGridDBColumn;
    cxColViewWkHistoryColumn2: TcxGridDBColumn;
    cxColViewWkHistoryColumn3: TcxGridDBColumn;
    cxColViewWkHistoryColumn4: TcxGridDBColumn;
    cxColViewWkHistoryColumn5: TcxGridDBColumn;
    cxColViewWkHistoryColumn6: TcxGridDBColumn;
    cxColViewWkHistoryColumn7: TcxGridDBColumn;
    cxColViewWkHistoryColumn8: TcxGridDBColumn;
    cxColViewWkHistoryColumn9: TcxGridDBColumn;
    cxColViewWkHistoryColumn10: TcxGridDBColumn;
    cxColViewWkHistoryColumn11: TcxGridDBColumn;
    cxLevelPickup: TcxGridLevel;
    dtStDate: TcxDateEdit;
    lbl1: TcxLabel;
    dtEdDate: TcxDateEdit;
    lbl2: TcxLabel;
    btnDate: TcxButton;
    cbbStatus: TcxComboBox;
    edtSabun: TcxTextEdit;
    lbl3: TcxLabel;
    lbl4: TcxLabel;
    lbl5: TcxLabel;
    lbl6: TcxLabel;
    edtStArea: TcxTextEdit;
    btnSearch: TcxButton;
    btnExcel: TcxButton;
    pmPickup: TPopupMenu;
    pmDate: TPopupMenu;
    mni6: TMenuItem;
    mni7: TMenuItem;
    mni8: TMenuItem;
    mni9: TMenuItem;
    cxColViewPickupColumn1: TcxGridDBColumn;
    cxColViewPickupColumn2: TcxGridDBColumn;
    cxColViewPickupColumn3: TcxGridDBColumn;
    cxColViewPickupColumn4: TcxGridDBColumn;
    cxColViewPickupColumn5: TcxGridDBColumn;
    cxColViewPickupColumn6: TcxGridDBColumn;
    cxColViewPickupColumn7: TcxGridDBColumn;
    cxColViewPickupColumn8: TcxGridDBColumn;
    cxColViewPickupColumn9: TcxGridDBColumn;
    cxColViewPickupColumn10: TcxGridDBColumn;
    cxColViewPickupColumn11: TcxGridDBColumn;
    cxColViewPickupColumn12: TcxGridDBColumn;
    cxColViewPickupColumn13: TcxGridDBColumn;
    cxColViewPickupColumn14: TcxGridDBColumn;
    rbToday: TcxRadioButton;
    rbBefore: TcxRadioButton;
    dlgSave: TSaveDialog;
    mniEdit: TMenuItem;
    mniCancel: TMenuItem;
    mniRegist: TMenuItem;
    mniN4: TMenuItem;
    mniExcel: TMenuItem;
    cbbWkSabunOption: TcxComboBox;
    cxViewPickupColumn1: TcxGridDBColumn;
    cxViewPickupColumn2: TcxGridDBColumn;
    cxViewPickupColumn3: TcxGridDBColumn;
    cxViewPickupColumn4: TcxGridDBColumn;
    cb_UpDate: TcxComboBox;
    cxCEdt: TcxCurrencyEdit;
    tmr_dis: TTimer;
    tmr_search: TTimer;
    cxColViewPickupColumn15: TcxGridDBColumn;
    cxColViewPickupColumn16: TcxGridDBColumn;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Shape3: TShape;
    Shape1: TShape;
    Shape2: TShape;
    Shape4: TShape;
    Shape5: TShape;
    cxLblActive: TLabel;
    mniRWor: TMenuItem;
    mniEWor: TMenuItem;
    cxViewPickupColumn5: TcxGridDBColumn;
    pnlColorSet: TPanel;
    GradientLabel3: TGradientLabel;
    lb_Common0: TLabel;
    lb_Common4: TLabel;
    lb_Common5: TLabel;
    lb_Common1: TLabel;
    lb_Common2: TLabel;
    lb_Common7: TLabel;
    lb_Common8: TLabel;
    lb_Common3: TLabel;
    lb_Common9: TLabel;
    lb_Common10: TLabel;
    lb_Common11: TLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pmDateMenuClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
		procedure btnExcelClick(Sender: TObject);
    procedure btnDateMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxViewPickupCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure rbTodayClick(Sender: TObject);
    procedure mniExcelClick(Sender: TObject);
    procedure mniCancelClick(Sender: TObject);
    procedure mniRegistClick(Sender: TObject);
    procedure mniEditClick(Sender: TObject);
    procedure pmPickupPopup(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cb_UpDateClick(Sender: TObject);
    procedure tmr_disTimer(Sender: TObject);
		procedure tmr_searchTimer(Sender: TObject);
    procedure cb_UpDateChange(Sender: TObject);
    procedure cxViewPickupStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure mniRWorClick(Sender: TObject);
    procedure mniEWorClick(Sender: TObject);
    procedure edtSabunKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
	private
    { Private declarations }
		AutoFlag : Boolean;
    FExcelDownManage,
    FExcelDownCash,
    FExcelDownBeach,
		FExcelDownBlock: string;

		procedure GeneralInit;
    procedure pSendSms( AGubun : Boolean; AWkSabun : String );

    // 요청부
    procedure RequestDataPickup;
		procedure GetDataPick(AIsToday: Boolean; AStartDtm, AEndDtm, AStatus, ASabun, AStartArea: string);
    procedure DisplayPickupDetail(ARow: Integer);

    // 수신부
    procedure ResponseDataBase(AStrList: TStringList);
    procedure ResponseDataPickup(AXmlDom: msDomDocument);
	public
    { Public declarations }
    FUpdated: Boolean;
    property IsUpdated: Boolean read FUpdated;
	end;

var
  Frm_WOR10: TFrm_WOR10;

implementation


{$R *.dfm}

uses Main, xe_Flash, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Msg, xe_packet,
  xe_xml, xe_Lib, xe_Dm, xe_WOR11, xe_SMS01;

procedure TFrm_WOR10.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_WOR10.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_WOR10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_WOR10.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_WOR10.FormDestroy(Sender: TObject);
begin
  Frm_WOR10 := nil;
end;

procedure TFrm_WOR10.FormCreate(Sender: TObject);
var
  Save: LongInt; // 폼타이틀 제거용.
  i : Integer;
begin
  try
    // 날짜형식이 'yy/mm/dd'일경우 오류 발생 가능성으로 인해 자체 Display 포맷 변경
    for i := 0 to ComponentCount - 1 do
    begin
      if Components[i] is TcxDateEdit then
      begin
        (Components[i] as TcxDateEdit).Properties.DisplayFormat := 'yyyy/mm/dd';
        (Components[i] as TcxDateEdit).Properties.EditFormat    := 'yyyy/mm/dd';
      end;
    end;
  except
  end;

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
	cxCEdt.Value := 0; // 갱신시간 카운트.

  try
    lb_Common0.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_00', ColorToString(clWhite));
    lb_Common1.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_01', ColorToString($00B5FFFF));
    lb_Common2.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_02', ColorToString($00FFDFDF));
    lb_Common3.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_03', ColorToString($00CEFFCE));
    lb_Common4.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_04', ColorToString($00FFFFC1));
    lb_Common5.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_05', ColorToString($00A0CFCF));
    lb_Common7.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_07', ColorToString($0093C9FF));
    lb_Common8.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_08', ColorToString($00DDDDFF));
    lb_Common9.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_0C', ColorToString($0084E3FB));
    lb_Common10.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_0B', ColorToString($0000D9D9));
    lb_Common11.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_0D', ColorToString($00FFC78E));
  except
  end;

  AutoFlag := True;
end;

procedure TFrm_WOR10.GeneralInit;
var
  I: Integer;
begin
  cb_UpDate.ItemIndex := 0;

  dtStDate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
  dtEdDate.Date := dtStDate.Date + 1;

  rbToday.Checked := True;
  rbTodayClick(rbToday);

	if IsDaeJeonShare(GS_PRJ_AREA = 'O', GT_USERIF.ShareNo) then
	begin
		cxViewPickup.Columns[4].Visible := False;
		cxViewPickup.Columns[11].Visible := False;
	end else
	begin
		cxViewPickup.Columns[4].Visible := True;
		cxViewPickup.Columns[11].Visible := True;
	end;

	for I := 0 to cxViewPickup.ColumnCount - 1 do
  begin
		cxViewPickup.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
  end;

  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);
end;

procedure TFrm_WOR10.FormShow(Sender: TObject);
begin
  fSetFont(Frm_WOR10, GS_FONTNAME);
  GeneralInit;
end;

procedure TFrm_WOR10.pmDateMenuClick(Sender: TObject);
var
  Term: TTermDate;
begin
  case TMenuItem(Sender).Tag of
    0: Term := tdToday;
    1: Term := tdYesterday;
    2: Term := tdOneWeek;
    3: Term := tdOneMonth;
    4: Term := tdStartMonth;
  end;
  SetDateControl(dtStDate, dtEdDate, Term);
end;

procedure TFrm_WOR10.btnSearchClick(Sender: TObject);
begin
	RequestDataPickup;
end;

procedure TFrm_WOR10.btnExcelClick(Sender: TObject);
begin
  if cxViewPickup.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
    Exit;
  end;

	if (TCK_USER_PER.WOR_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[기사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '기사픽업현황.xls';
  Frm_Main.sgRpExcel := Format('기사픽업>기사픽업현황]%s건/%s', [GetMoneyStr(cxViewPickup.DataController.RecordCount), FExcelDownManage]);
  Frm_Main.cxGridExcel := cxGridPickup;
  Frm_Main.cxGridDBViewExcel := cxViewPickup;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_WOR10.RequestDataPickup;
var
  StDate, EdDate,
	Status: string;
begin
	cb_UpDateChange(nil);
	StDate := FormatDateTime('YYYYMMDD', dtStDate.Date) + '090000';
  EdDate := FormatDateTime('YYYYMMDD', dtEdDate.Date) + '090000';

  case cbbStatus.ItemIndex of
    0: Status := 'A';
    1: Status := '0';
    2: Status := '1';
    3: Status := '8';
  end;

	GetDataPick(rbToday.Checked, StDate, EdDate, Status, Trim(Param_Filtering(edtSabun.Text)), Trim(Param_Filtering(edtStArea.Text)));
end;

procedure TFrm_WOR10.GetDataPick(AIsToday: Boolean; AStartDtm, AEndDtm, AStatus, ASabun, AStartArea: string);
var
  ls_TxLoad: string;
  StrList: TStringList;
  ErrCode: integer;
begin
	tmr_dis.Enabled := False;
	if cb_UpDate.ItemIndex > 0 then
		AutoFlag := False
	else
		btnSearch.Enabled := False;

	btnSearch.Enabled := False;

  StrList := TStringList.Create;
  Screen.Cursor := crHourGlass;

	try
    ls_TxLoad := GTx_UnitXmlLoad('C027N1.XML');
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString',     '', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',  VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',  'SEARCH', [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'actionString',     'R', [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'WkSabunOptStr',    IfThen(cbbWkSabunOption.ItemIndex = 0, 'R', 'B'), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'WkSabunString',    ASabun, [rfReplaceAll]);
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      ls_TxLoad := StringReplace(ls_TxLoad, 'HdNoString',       GT_SEL_BRNO.HDNO, [rfReplaceAll])
    else
      ls_TxLoad := StringReplace(ls_TxLoad, 'HdNoString',       GT_USERIF.HD, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'SequenceString',   '', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'StatusString',     AStatus, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'StartSiString',    '', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'StartGuString',    '', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'StartDongString',  AStartArea, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'StartDetailString','' , [rfReplaceAll]);

		ls_TxLoad := StringReplace(ls_TxLoad, 'PickupSabun2=""',     'PickupSabun2="" PickupSabunNm=""', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'RegSabun2=""',     'RegSabun2="" RegSabunNm=""', [rfReplaceAll]);

		ls_TxLoad := StringReplace(ls_TxLoad, 'DestSiString',     '', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'DestGuString',     '', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'DestDongString',   '', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'DestDetailString', '', [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'StartMapXString', '', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'StartMapYString', '', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'DestMapXString', '', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'DestMapYString', '', [rfReplaceAll]);

    if AIsToday then
    begin
      AStartDtm := '';
      AEndDtm   := '';
    end;
    ls_TxLoad := StringReplace(ls_TxLoad, 'FromDateString',   AStartDtm, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ToDateString',     AEndDtm, [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'VPhoneYnString',   GT_USERIF.WKVPhone, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'CountString',      '', [rfReplaceAll]);

		if dm.SendSock(ls_TxLoad, StrList, ErrCode, False) then
		begin
			ResponseDataBase(StrList);
		end;
  finally
    StrList.Free;
    Screen.Cursor := crDefault;
		btnSearch.Enabled := True;
		if cb_UpDate.ItemIndex > 0 then
			tmr_dis.Enabled := True;
	end;
end;

procedure TFrm_WOR10.ResponseDataBase(AStrList: TStringList);
var
  I: Integer;
  xdom: msDomDocument;
  XmlData: WideString;
  ErrorCode, ClientKey: string;
begin
  xdom := ComsDomDocument.Create;
  try
    try
      cxViewPickup.DataController.SetRecordCount(0);
      for I := 0 to AStrList.Count - 1 do
      begin
        XmlData := AStrList[I];
        if not xdom.loadXML(XmlData) then
					Exit;

        ErrorCode := GetXmlErrorCode(XmlData);
        if ('0000' = ErrorCode) then
        begin
          ClientKey := GetXmlClientKey(XmlData);

          if ClientKey = 'SEARCH' then
            ResponseDataPickup(xdom)
          ;
        end else
        begin
          GMessagebox(MSG012 + CRLF + ErrorCode, CDMSE);
          Exit;
        end;
      end;
    except
    end;
  finally
    Frm_Flash.Hide;
    xdom := Nil;
  end;
end;

procedure TFrm_WOR10.ResponseDataPickup(AXmlDom: msDomDocument);
var
  lst_Result: IXMLDomNodeList;
  I, Idx, RecCount: Integer;
  IsToDayData: Boolean;
  tmp, StatusCode,
  StArea1, StArea2, StArea3, StArea4,
  EdArea1, EdArea2, EdArea3, EdArea4,
  strDate, WkPhone: string;
begin
  lst_Result := AXmlDom.documentElement.selectNodes('/cdms/Service/Data');
  RecCount := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Count').text,0);

  if (RecCount > 0) then
  begin
    lst_Result := AXMLDom.documentElement.selectNodes('/cdms/Service/Data/Pickup');

    cxViewPickup.BeginUpdate;
    try
      for I := 0 to lst_Result.length - 1 do
      begin
        Idx := cxViewPickup.DataController.AppendRecord;

        strDate := lst_Result.item[I].attributes.getNamedItem('InDate').text;

        IsToDayData := (strDate >= StartDateTime);

        cxViewPickup.DataController.Values[Idx, 0] := lst_Result.item[I].attributes.getNamedItem('Sequence').text;
        StatusCode := lst_Result.item[I].attributes.getNamedItem('Status').text;
        case StrToIntDef(StatusCode, -1) of
          0: cxViewPickup.DataController.Values[Idx, 1] := '등록';
          1: cxViewPickup.DataController.Values[Idx, 1] := '배차';
          8: cxViewPickup.DataController.Values[Idx, 1] := '취소';
        else
          cxViewPickup.DataController.Values[Idx, 1] := '';
        end;
				cxViewPickup.DataController.Values[Idx, 23] := StatusCode;

				cxViewPickup.DataController.Values[Idx, 2] := lst_Result.item[I].attributes.getNamedItem('Symbol').text;
				cxViewPickup.DataController.Values[Idx, 3] := lst_Result.item[I].attributes.getNamedItem('RegSabun2').text;
				cxViewPickup.DataController.Values[Idx, 4] := lst_Result.item[I].attributes.getNamedItem('RegSabunNm').text;
				if (not IsToDayData) and (GT_USERIF.WKVPhone = 'y') And (Not IsPassedManagementWk(lst_Result.item[I].attributes.getNamedItem('RegBrNo').text)) then
					cxViewPickup.DataController.Values[Idx, 5] := '***-****-****'
        else
					cxViewPickup.DataController.Values[Idx, 5] := strtocall(lst_Result.item[I].attributes.getNamedItem('WkPhone').text);

				cxViewPickup.DataController.Values[Idx, 6] := lst_Result.item[I].attributes.getNamedItem('BrName').text;
				cxViewPickup.DataController.Values[Idx, 7] := GetStrToLongDateTimeStr(lst_Result.item[I].attributes.getNamedItem('InDate').text);

        // 출발지
        StArea1 := lst_Result.item[I].attributes.getNamedItem('StartSi').text;
        StArea2 := lst_Result.item[I].attributes.getNamedItem('StartGu').text;
        StArea3 := lst_Result.item[I].attributes.getNamedItem('StartDong').text;
        StArea4 := lst_Result.item[I].attributes.getNamedItem('StartDetail').text;
				cxViewPickup.DataController.Values[Idx, 15] := StArea1;
				cxViewPickup.DataController.Values[Idx, 16] := StArea2;
				cxViewPickup.DataController.Values[Idx, 17] := StArea3;
				cxViewPickup.DataController.Values[Idx, 18] := StArea4;
				cxViewPickup.DataController.Values[Idx, 8] := Format('%s/%s %s %s', [StArea4, StArea1, StArea2, StArea3]);

        // 도착지
        EdArea1 := lst_Result.item[I].attributes.getNamedItem('DestSi').text;
        EdArea2 := lst_Result.item[I].attributes.getNamedItem('DestGu').text;
        EdArea3 := lst_Result.item[I].attributes.getNamedItem('DestDong').text;
        EdArea4 := lst_Result.item[I].attributes.getNamedItem('DestDetail').text;
				cxViewPickup.DataController.Values[Idx, 19] := EdArea1;
				cxViewPickup.DataController.Values[Idx, 20] := EdArea2;
				cxViewPickup.DataController.Values[Idx, 21] := EdArea3;
				cxViewPickup.DataController.Values[Idx, 22] := EdArea4;
				cxViewPickup.DataController.Values[Idx, 9] := Format('%s/%s %s %s', [EdArea4, EdArea1, EdArea2, EdArea3]);

				cxViewPickup.DataController.Values[Idx, 10] := lst_Result.item[I].attributes.getNamedItem('PickupSabun2').text;
				cxViewPickup.DataController.Values[Idx, 11] := lst_Result.item[I].attributes.getNamedItem('PickupSabunNm').text;

        WkPhone := lst_Result.item[I].attributes.getNamedItem('PickupPhone').text;
        if (not IsToDayData) and (GT_USERIF.WKVPhone = 'y') and (WkPhone <> '')  And (Not IsPassedManagementWk(lst_Result.item[I].attributes.getNamedItem('PickupBrNo').text)) then
					cxViewPickup.DataController.Values[Idx, 12] := '***-****-****'
        else
					cxViewPickup.DataController.Values[Idx, 12] := strtocall(WkPhone);

				cxViewPickup.DataController.Values[Idx, 13] := GetStrToLongDateTimeStr(lst_Result.item[I].attributes.getNamedItem('PickupTm').text);
				cxViewPickup.DataController.Values[Idx, 14] := lst_Result.item[I].attributes.getNamedItem('RegSabun').text;
				cxViewPickup.DataController.Values[Idx, 24] := lst_Result.item[I].attributes.getNamedItem('PickupSabun').text;

				tmp := lst_Result.item[I].attributes.getNamedItem('RegBrNo').text;
				if (tmp <> '') and (scb_BranchCode.IndexOf(tmp) < 0) then
					cxViewPickup.DataController.Values[Idx, 5] := '***-****-****';
				cxViewPickup.DataController.Values[Idx, 25] := tmp;

				tmp := lst_Result.item[I].attributes.getNamedItem('PickupBrNo').text;
        if (tmp <> '') and (scb_BranchCode.IndexOf(tmp) < 0) then
					cxViewPickup.DataController.Values[Idx, 12] := '***-****-****';
				cxViewPickup.DataController.Values[Idx, 26] := tmp;

				cxViewPickup.DataController.Values[Idx, 27] := lst_Result.item[I].attributes.getNamedItem('StartMapX').text;
				cxViewPickup.DataController.Values[Idx, 28] := lst_Result.item[I].attributes.getNamedItem('StartMapY').text;
				cxViewPickup.DataController.Values[Idx, 29] := lst_Result.item[I].attributes.getNamedItem('DestMapX').text;
				cxViewPickup.DataController.Values[Idx, 30] := lst_Result.item[I].attributes.getNamedItem('DestMapY').text;
				cxViewPickup.DataController.Values[Idx, 31] := lst_Result.item[I].attributes.getNamedItem('PickupBrName').text;
      end;
    finally
      cxViewPickup.EndUpdate;
    end;
  end else
  begin
    cxViewPickup.DataController.SetRecordCount(0);
//    GMessagebox('검색된 결과가 없습니다.', CDMSE);
  end;
end;

procedure TFrm_WOR10.btnDateMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if rbBefore.Checked then
    pmDate.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_WOR10.DisplayPickupDetail(ARow: Integer);
begin
  if ( Not Assigned(Frm_WOR11) ) Or ( Frm_WOR11 = Nil ) then Frm_WOR11 := TFrm_WOR11.Create(Nil);
	try
		with cxViewPickup.ViewData do
		begin
			Frm_WOR11.SetPickupData(
				rbToday.Checked,
				Records[ARow].Values[0],    
				Records[ARow].Values[1],    
				Records[ARow].Values[7],    
				Records[ARow].Values[10],   
				Records[ARow].Values[12],   
				Records[ARow].Values[13],   
				Records[ARow].Values[6],    
				Records[ARow].Values[5],    
				Records[ARow].Values[14],   
				Records[ARow].Values[3],    
				Records[ARow].Values[18],   
				Records[ARow].Values[15],   
				Records[ARow].Values[16],   
				Records[ARow].Values[17],   
				Records[ARow].Values[22],   
				Records[ARow].Values[19],   
				Records[ARow].Values[20],   
				Records[ARow].Values[21],   
				Records[ARow].Values[27],   
				Records[ARow].Values[28],   
				Records[ARow].Values[29],   
				Records[ARow].Values[30],
        ARow
			);
    end;
    Frm_WOR11.ShowModal;

    Application.ProcessMessages;

    if IsUpdated then RequestDataPickup;
  finally
    frm_WOR11.Free;
  end;
end;

procedure TFrm_WOR10.edtSabunKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_WOR10.cxViewPickupCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  ARow: Integer;
begin
  ARow := ACellViewInfo.GridRecord.Index;

  DisplayPickupDetail(ARow);
end;

procedure TFrm_WOR10.cxViewPickupStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  iRow, iStCd: Integer;
  AView: TcxGridDBTableView;
begin
  AView := Sender as TcxGridDBTableView;

  if (ARecord.Selected) or (Sender.DataController.RecordCount = 0) then
    exit;
  try
    AStyle := frm_Main.cxStyle15;
    iRow  := AView.DataController.GetRowInfo(ARecord.Index).RecordIndex;
    iStCd := AView.GetColumnByFieldName('상태코드').Index;
    if AView.DataController.Values[iRow, iStCd] = null then Exit;

    case Copy(AView.DataController.Values[iRow, iStCd], 1, 1)[1] of
      '0': AStyle.Color := lb_Common0.Color;
      '1', 'B': AStyle.Color := lb_Common1.Color;
      '2': AStyle.Color := lb_Common2.Color;
      '3': AStyle.Color := lb_Common3.Color;
      '4': AStyle.Color := lb_Common4.Color;
      '5': AStyle.Color := lb_Common5.Color;
      '7': AStyle.Color := lb_Common7.Color;
      '8': AStyle.Color := lb_Common8.Color;
    else
      AStyle.Color := clWhite;
    end;
  except
  end;
end;

procedure TFrm_WOR10.rbTodayClick(Sender: TObject);
var
  IsSetPeriod: Boolean;
begin
  IsSetPeriod := not rbToday.Checked;

  dtStDate.Enabled := IsSetPeriod;
  dtEdDate.Enabled := IsSetPeriod;
  btnDate.Enabled  := IsSetPeriod;
end;

procedure TFrm_WOR10.mniExcelClick(Sender: TObject);
begin
  btnExcel.Click;
end;

procedure TFrm_WOR10.mniCancelClick(Sender: TObject);
var
  ASeq: string;
begin
  ASeq := cxViewPickup.DataController.GetValue(cxViewPickup.DataController.FocusedRecordIndex, 0);
  if ( Not Assigned(Frm_WOR11) ) Or ( Frm_WOR11 = Nil ) then Frm_WOR11 := TFrm_WOR11.Create(Nil);
  try
    if frm_WOR11.UpdatePickupData(
      ASeq,
      'D',
      '8'
    ) then
    begin
      GMessagebox('취소 되었습니다.', CDMSI);
      RequestDataPickup;
    end;
  finally
    Frm_WOR11.Free;
  end;
end;

procedure TFrm_WOR10.mniRegistClick(Sender: TObject);
var
  ASeq: string;
begin
  ASeq := cxViewPickup.DataController.GetValue(cxViewPickup.DataController.FocusedRecordIndex, 0);

  if ( Not Assigned(Frm_WOR11) ) Or ( Frm_WOR11 = Nil ) then Frm_WOR11 := TFrm_WOR11.Create(Nil);
  try
    if frm_WOR11.UpdatePickupData(
      ASeq,
      'D',
      '0'
    ) then
    begin
      GMessagebox('재등록 되었습니다.', CDMSI);
      RequestDataPickup;
    end;
  finally
    Frm_WOR11.Free;
  end;
end;

procedure TFrm_WOR10.mniRWorClick(Sender: TObject);
Var lWkSabun : String;
    ARow: Integer;
begin
  ARow := cxViewPickup.DataController.FocusedRecordIndex;
  if ARow < 0 then Exit;

  lWkSabun := cxViewPickup.ViewData.Records[ARow].Values[14]; // 등록 기사

  if Copy(cxViewPickup.ViewData.Records[ARow].Values[5], 1, 1) = '*' then pSendSms(True, lWkSabun)
                                                                     else pSendSms(False, lWkSabun);
end;

procedure TFrm_WOR10.mniEditClick(Sender: TObject);
var
  ARow: Integer;
begin
  ARow := cxViewPickup.DataController.FocusedRecordIndex;

  DisplayPickupDetail(ARow);
end;

procedure TFrm_WOR10.mniEWorClick(Sender: TObject);
Var lWkSabun : String;
    ARow: Integer;
begin
  ARow := cxViewPickup.DataController.FocusedRecordIndex;
  if ARow < 0 then Exit;

  lWkSabun := cxViewPickup.ViewData.Records[ARow].Values[24];  // 배차받은기사
  if Trim(lWkSabun) = '' then
  begin
    GMessagebox('배차받은 기사가 없습니다.', CDMSE);
    Exit;
  end;

  if Copy(cxViewPickup.ViewData.Records[ARow].Values[5], 1, 1) = '*' then pSendSms(True, lWkSabun)
                                                                     else pSendSms(False, lWkSabun);
end;

procedure TFrm_WOR10.pmPickupPopup(Sender: TObject);
var
	I, iRow: Integer;
	IsPopup: Boolean;
	sStatus : string;
begin
	IsPopup := cxViewPickup.DataController.RecordCount > 0;

	for I := 0 to pmPickup.Items.Count - 1 do
		TMenuItem(pmPickup.Items[I]).Visible := IsPopup;

	if not IsPopup then Exit;

	mniRegist.Enabled := rbToday.Checked;
	mniCancel.Enabled := rbToday.Checked;

	iRow := cxViewPickup.DataController.FocusedRecordIndex;
	sStatus := cxViewPickup.DataController.Values[iRow, 1];
	if sStatus = '취소' then
		mniCancel.Enabled := False;

end;

procedure TFrm_WOR10.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WOR10.pSendSms(AGubun : Boolean; AWkSabun: String);
Var sNum : String;
    ls_TxLoad: string;
    ls_rxxml : String;
    rv_str : string;
    xdom: msDomDocument;
    ls_ClientKey: string;
    lst_Result: IXMLDomNodeList;
  	slReceive: TStringList;
    ErrCode: integer;
begin
  try
		ls_TxLoad := GTx_UnitXmlLoad('C015.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'HINT0003', [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '3', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', AWkSabun, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VPhoneString', '', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'Conf_slipString', '', [rfReplaceAll]); //접수번호추가

		slReceive := TStringList.Create;
    try
      if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          xdom := ComsDomDocument.Create;
          try
            if not xdom.loadXML(ls_rxxml) then
              Exit;
            ls_ClientKey := GetXmlClientKey(ls_rxxml);
            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Accept');

            sNum := lst_Result.item[0].attributes.getNamedItem('Info3').Text
          finally
            xdom := nil;
          end;
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;

    if Trim(sNum) = ''  then Exit;   

    if Not Assigned(Frm_SMS01) Or (Frm_SMS01 = Nil) then Frm_SMS01 := TFrm_SMS01.Create(Nil);

    if AGubun then
    begin
      Frm_SMS01.ed_receiverD.Text := sNum;
      Frm_SMS01.ed_receiver.Visible := False;
      Frm_SMS01.ed_receiverD.Visible := True;
    end else
    begin
      Frm_SMS01.ls_sms.Items.Clear;
      Frm_SMS01.ls_sms.Items.Add(sNum);
      Frm_SMS01.ed_receiver.Visible := True;
      Frm_SMS01.ed_receiverD.Visible := False;
    end;

    Frm_SMS01.mm_message.Text := '';
    Frm_SMS01.ed_send.Text := '';
		Frm_SMS01.sSendKind := '';
		Frm_SMS01.rdo_SMS.visible := False;
		Frm_SMS01.rdo_PUSH.visible := False;
    Frm_SMS01.Show;
  except

  end;
end;

procedure TFrm_WOR10.cb_UpDateClick(Sender: TObject);
var
  iCnt: integer;
begin
  try
    case cb_UpDate.ItemIndex of
      0:
        begin
          //Label15.Caption := '0';
          //Label15.Visible := False;
          cxCEdt.Value := 0;
          cxCEdt.Visible := False;
					btnSearch.Enabled := True;

          if rbBefore.Checked then
          begin
  					dtStDate.Enabled := True;
  					dtEdDate.Enabled := True;
            btnDate.Enabled := True;
          end;

          tmr_dis.Enabled := (cb_UpDate.ItemIndex > 0);
        end;
    else
      begin
				iCnt := StrToIntDef(Trim(Copy(cb_UpDate.Text, 1, 3)), 0);
        if iCnt > 0 then
				begin
          dtStDate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
          dtEdDate.Date := dtStDate.Date + 1;
          //Label15.Visible := True;
					//Label15.Caption := Trim(Copy(cb_UpDate.Text, 1, 3));
					cxCEdt.Value := iCnt; // 갱신시간 카운트.
          cxCEdt.Visible := True;
					dtStDate.Enabled := False;
					dtEdDate.Enabled := False;
          btnDate.Enabled := False;
          tmr_dis.Enabled := (cb_UpDate.ItemIndex > 0);
        end else
        begin
          if cb_UpDate.ItemIndex <> 0 then
            cb_UpDate.ItemIndex := 0;
        end;
        case cb_UpDate.ItemIndex of
					1: tmr_dis.Interval := 1800;
          2: tmr_dis.Interval := 1500;
        else
          tmr_dis.Interval := 1300;
        end;
      end;
    end;
    if cxCEdt.Visible = True then
    begin
      cxCEdt.SetFocus;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_WOR10.tmr_disTimer(Sender: TObject);
begin
  try
    if (cb_UpDate.ItemIndex = 0) then
    begin
      tmr_dis.Enabled := False;
      cxCEdt.Value := 0; // 갱신시간 카운트.
      Exit;
		end;

		cxCEdt.Value := cxCEdt.Value - 1; // 갱신시간 카운트.
		if cxCEdt.Value < 0 then
      cxCEdt.Value := StrToIntDef(Trim(Copy(cb_UpDate.Text, 1, 3)), 30);

    if cxCEdt.Value = 0 then
		begin
			btnSearchClick(nil);
			tmr_dis.Enabled := True;
			//Label15.Caption := '0';
      cxCEdt.Value := 0;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_WOR10.tmr_searchTimer(Sender: TObject);
begin
  tmr_search.Enabled := False;
	btnSearch.Enabled := True;
	AutoFlag := True;
	if cb_UpDate.ItemIndex > 0 then
  begin
    //Label15.Caption := Trim(Copy(cb_UpDate.Text, 1, 3));
    cxCEdt.Value := StrToIntDef(Trim(Copy(cb_UpDate.Text, 1, 3)), 30);
    tmr_dis.Enabled := True;
  end;
end;

procedure TFrm_WOR10.cb_UpDateChange(Sender: TObject);
var
  iCnt: integer;
begin
  try
    case cb_UpDate.ItemIndex of
      0:
        begin
          //Label15.Caption := '0';
          cxCEdt.Value := 0; // 갱신시간 카운트.
          cxCEdt.Visible := False;
          //Label15.Visible := False;
					btnSearch.Enabled := True;
					AutoFlag := True;

          if rbBefore.Checked then
          begin
  					dtStDate.Enabled := True;
  					dtEdDate.Enabled := True;
            btnDate.Enabled := True;
          end;

					tmr_dis.Enabled := (cb_UpDate.ItemIndex > 0);
				end;
    else
      begin
        iCnt := StrToIntDef(Trim(Copy(cb_UpDate.Text, 1, 3)), 0);
        if iCnt > 0 then
				begin
          dtStDate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
          dtEdDate.Date := dtStDate.Date + 1;

          cxCEdt.Value := iCnt; // 갱신시간 카운트.
					cxCEdt.Visible := True;
					dtStDate.Enabled := False;
					dtEdDate.Enabled := False;
          btnDate.Enabled := False;
          tmr_dis.Enabled := (cb_UpDate.ItemIndex > 0);
        end
        else
        begin
          if cb_UpDate.ItemIndex <> 0 then
            cb_UpDate.ItemIndex := 0;
        end;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

end.

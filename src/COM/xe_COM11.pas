unit xe_COM11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles, MSXML2_TLB,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxLabel, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, cxCheckBox, cxTextEdit, cxContainer, cxMaskEdit,
	cxDropDownEdit, ExtCtrls, GradientLabel, cxLookAndFeels,
	dxSkinsCore, dxSkinscxPCPainter, cxNavigator, dxCore, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_COM11 = class(TForm)
    pnl_WkList_Condition: TPanel;
    cb_Condition: TcxComboBox;
    btn_wkSearch: TcxButton;
    cxGrid1: TcxGrid;
    stg_WkList_View: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel1: TPanel;
		cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxgrdbclmn_WkList_ViewColumn0: TcxGridDBColumn;
    cxgrdbclmn_WkList_ViewColumn2: TcxGridDBColumn;
    cxgrdbclmn_WkList_ViewColumn3: TcxGridDBColumn;
    cxgrdbclmn_WkList_ViewColumn4: TcxGridDBColumn;
    cxgrdbclmn_WkList_ViewColumn5: TcxGridDBColumn;
    cxgrdbclmn_WkList_ViewColumn6: TcxGridDBColumn;
    cxgrdbclmn_WkList_ViewColumn7: TcxGridDBColumn;
    cxgrdbclmn_WkList_ViewColumn8: TcxGridDBColumn;
    cxgrdbclmn_WkList_ViewColumn9: TcxGridDBColumn;
    cxgrdbclmn_WkList_ViewColumn10: TcxGridDBColumn;
    cxgrdbclmn_WkList_ViewColumn11: TcxGridDBColumn;
    cxgrdbclmn_WkList_ViewColumn12: TcxGridDBColumn;
    cxgrdbclmn_WkList_ViewColumn1: TcxGridDBColumn;
    cxgrdbclmn_WkList_ViewColumn13: TcxGridDBColumn;
    cxgrdbclmn_WkList_ViewColumn14: TcxGridDBColumn;
    edtKeyWord: TcxTextEdit;
    cxLabel2: TcxLabel;
    cb_Radius: TcxComboBox;
    cxLabel3: TcxLabel;
    lbNearWKCnt: TcxLabel;
    pnlTitle: TPanel;
    cxLblActive: TLabel;
    cxLabel1: TcxLabel;
    pm_WKmenu: TPopupMenu;
    mniWORCallingPDA: TMenuItem;
    btnClose: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
		procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
		procedure btn_wkSearchClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
		procedure cxButton1Click(Sender: TObject);
		procedure stg_WkList_ViewCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cb_RadiusPropertiesChange(Sender: TObject);
    procedure stg_WkList_ViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure edtKeyWordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pm_WKmenuPopup(Sender: TObject);
    procedure mniWORCallingPDAClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
		ISendSockError_Com11 : integer;
		function proc_dis_alculation(SLon, SLat, ELon, ELat: string) : string;
	public
		{ Public declarations }
		sStratLon, sStratLat, sSlip, sStatus, sWkName, sWkSabun, sKeyNumber, gOrderCharge: string;
    Jon03Tag : Integer;
		procedure proc_init;
		procedure proc_NearRecon(const AATTEND, AState, AStatetime, AKeyKind, AKeyWord, ADistance, AX, AY, ABRTYPE : string);
	end;

var
	Frm_COM11: TFrm_COM11;

implementation

uses xe_gnl, xe_func, xe_msg, xe_xml, xe_query, xe_jon03,
	xe_gnl3, xe_gnl2, xe_packet,
	MAIN, xe_dm;

{$R *.dfm}


procedure TFrm_COM11.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_COM11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_COM11.FormCreate(Sender: TObject);
var
  i: integer;
  Save: LongInt; // ��Ÿ��Ʋ ���ſ�.
begin
	//====================================================
  // �� Ÿ��Ʋ ����..
  Save := GetWindowLong(Handle, gwl_Style);
  if (Save and ws_Caption) = ws_Caption then
  begin
    case BorderStyle of
      bsSingle, bsSizeable:
        SetWindowLong(Handle, gwl_Style, Save and (not (ws_Caption)) or
          ws_border);
      //      bsDialog :
      //        SetWindowLong(Handle, gwl_Style, Save and (Not(ws_Caption)) or ws_modalframe or ws_dlgframe);
    end;
    Height := Height - getSystemMetrics(sm_cyCaption);
    Refresh;
  end;
  //====================================================

	stg_WkList_View.DataController.SetRecordCount(0);
	stg_WkList_View.Columns[0].DataBinding.ValueType := 'String';
	for i := 1 to stg_WkList_View.ColumnCount - 1 do
		stg_WkList_View.Columns[i].DataBinding.ValueType := 'String';
end;

procedure TFrm_COM11.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_COM11.FormDestroy(Sender: TObject);
begin
	Frm_COM11 := Nil
end;

procedure TFrm_COM11.FormShow(Sender: TObject);
begin
  fSetFont(Frm_COM11, GS_FONTNAME);
  fSetSkin(Frm_COM11);
	proc_init;
end;

procedure TFrm_COM11.mniWORCallingPDAClick(Sender: TObject);
var
  sWkHp, KeyNum : string;
  iRow, iwkHP : integer;
begin
  SetDebugeWrite('Frm_COM11.mniWORCallingPDAClick');

  iwkHP := stg_WkList_View.GetColumnByFieldName('�ܸ���').Index;
  iRow := stg_WkList_View.DataController.FocusedRecordIndex;
  sWkHp := stg_WkList_View.DataController.Values[iRow, iwkHP];
  sWkHp := StringReplace(sWkHp, '-', '', [rfReplaceAll]);

  if Pos('#', sWkHp) > 0 then
    sWkHp := Copy(sWkHp, 1, Pos('#', sWkHp)-1);

  try
    if sWkHp = '' then
    begin
      GMessagebox('������ �ܸ��� ��ȣ�� �����ϴ�', CDMSE);
      Exit;
    end;

    if Trim(GT_POSS_KEYNUM) <> '' then begin
      KeyNum := StringReplace(GT_POSS_KEYNUM, '-', '', [rfReplaceAll]);
    end else begin  // 090422. CDs. ��� ��Ȳ�ǹ�ȣ�� ������� ���ÿ����� ��ǥ��ȣ�� ��ȭ�ɱ�.
			KeyNum := StringReplace(sKeyNumber, '-', '', [rfReplaceAll]);
    end;

    SetDebugeWrite('�αٱ����� �����ȭ�ɱ� ' + sWkHp);
    Frm_Main.pCallingCID(sWkHp, KeyNum);

  except on e: exception do
    begin
      Log('mniWORCallingPDAClick Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'mniWORCallingPDAClick Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_COM11.pm_WKmenuPopup(Sender: TObject);
begin
  if GT_OCX <> '' then mniWORCallingPDA.Visible := True
                  else mniWORCallingPDA.Visible := False;
end;

procedure TFrm_COM11.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

function TFrm_COM11.proc_dis_alculation(SLon, SLat, ELon, ELat: string) : string;
var
	fdis: double;
begin
	try
		fDis := StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE, SLat, SLon, ELat, ELon), ffNumber, 3, 1), 0.0);
		Result := FloatToStr(fDis);
	except
		Result := '';
	end
end;

procedure TFrm_COM11.proc_init;
begin
//  Self.Height := 310;
//  Self.Width := 710;
	cb_Condition.ItemIndex := 0;
	lbNearWKCnt.Caption := '';
	cxButton1.Width := 145;
	cxButton2.Width := 83;
//	cxButton1.Left := Self.Width - 166 - 22;
//	cxButton2.Left := self.Width - 83 - 15;
  Self.Left := (Frm_Main.pnlMain.Width - Self.Width) div 2;
  Self.top  := (Frm_Main.pnlMain.Height - Self.Height) div 2;
  if Self.top <= 10 then Self.top := 10;

  if self.Visible then
		edtKeyWord.SetFocus;
end;

procedure TFrm_COM11.proc_NearRecon(const AATTEND, AState, AStatetime,
	AKeyKind, AKeyWord, ADistance, AX, AY, ABRTYPE: string);
var
	xdom: msDomDocument;
	TxData: string;
	I, iRow, ErrCode: Integer;
	lst_Result: IXMLDomNodeList;
	sSabun, sName, sTmp: string;
	rv_str, ls_MSG_Err: Widestring;
	StrList : TStringList;
begin
	TxData := GTx_UnitXmlLoad('C063N2.xml');
	TxData := ReplaceAll(TxData, 'ClientKeyString', 'C063N2_Com11');
	TxData := ReplaceAll(TxData, 'modeStr'      , 'SELECT');
	TxData := ReplaceAll(TxData, 'attendStr'    , AATTEND);
	TxData := ReplaceAll(TxData, 'stateStr'     , AState);
	TxData := ReplaceAll(TxData, 'BR_Typestr'   , ABRTYPE);
	TxData := ReplaceAll(TxData, 'attendTimeStr', AStatetime);
	TxData := ReplaceAll(TxData, 'keykindstr'   , AKeyKind);
	TxData := ReplaceAll(TxData, 'keywordstr'   , AKeyWord);
	TxData := ReplaceAll(TxData, 'distanceStr'  , ADistance);
	TxData := ReplaceAll(TxData, 'mapXStr'      , AX);
	TxData := ReplaceAll(TxData, 'mapYStr'      , AY);
	TxData := StringReplace(TxData, 'UserIDString',     GT_USERIF.ID, [rfReplaceAll]);
	TxData := StringReplace(TxData, 'ClientVerString',  VERSIONINFO, [rfReplaceAll]);
//  ATxData := StringReplace(ATxData, 'ClientKeyString',  AKey, [rfReplaceAll]);

	StrList := TStringList.Create;
  Screen.Cursor := crHourGlass;
  try
		if not dm.SendSock(TxData, StrList, ErrCode, False) then
		begin
			if ISendSockError_Com11 < 2 then
			begin
				GMessagebox('[Com11]������ ���ۿ� �����߽��ϴ�.'#13#10'�ٽ� �õ� �ϼ���.', CDMSE);
				inc(ISendSockError_Com11);
			end	else
			if ISendSockError_Com11 = 2 then
			begin
				Assert(False, 'Com11_C063N2.xml(�αٱ��˻�)' );
				inc(ISendSockError_Com11);
			end;
			Exit;
		end;

    try
			if StrList.Count = 0 then
      begin
				GMessagebox('�˻��� �����Ͱ� �����ϴ�.', CDMSE);
        Exit;
			end;

			rv_str := StrList[0];
			
			xdom := ComsDomDocument.Create;
			if not xdom.loadXML(rv_str) then
			begin
        GMessagebox('���ŵ����Ͱ� �߸��Ǿ����ϴ�.[XML Format error]', CDMSE);
        Exit;
      end;

			ls_MSG_Err := GetXmlErrorCode(rv_str);
			if ls_MSG_Err <> '0000' then
			begin
				GMessagebox(Format('������ ��ȸ �� ������ �߻��߽��ϴ�.'#13#10'[��������: %s]', [GetXmlErrorMsg(rv_str)]), CDMSE);
        Exit;
			end;

		except on E: Exception do
      begin
				Screen.Cursor := crDefault;
				Assert(False, E.Message);
        GMessagebox(Format('������ ��ȸ �� ������ �߻��߽��ϴ�.'#13#10'[��������: %s]', [E.Message]), CDMSE);
      end;
    end;

		try
			lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Response/Data');
			stg_WkList_View.BeginUpdate;
			stg_WkList_View.DataController.SetRecordCount(0);
			for I := 0 to lst_Result.length - 1 do
			begin
//				��� ��ü��� ���� ���� ���� �ܸ��� ��ġ �Ÿ�  ����� ����� 
				//BR_Type = '1' Ÿ��� Title := '��' STATE="B2";
				//BR_Type = '2' �ڱ��
{				WkRec.Sabun     := lst_Result.item[I].attributes.getNamedItem('SABUN').Text;
				WkRec.Name      := lst_Result.item[I].attributes.getNamedItem('NAME').Text;
				WkRec.ATTEND    := lst_Result.item[I].attributes.getNamedItem('ATTEND').Text;
				WkRec.PASS_TIME := lst_Result.item[I].attributes.getNamedItem('PASS_TIME').Text;
				WkRec.Con_State := lst_Result.item[I].attributes.getNamedItem('STATE').Text;
				WkRec.BR_Type   := lst_Result.item[I].attributes.getNamedItem('BR_TYPE').Text;
				WkRec.FinCnt    := lst_Result.item[I].attributes.getNamedItem('FINISH_CNT').Text;
				WkRec.MAPX      := lst_Result.item[I].attributes.getNamedItem('MAP_X').Text;
				WkRec.MAPY      := lst_Result.item[I].attributes.getNamedItem('MAP_Y').Text;
				WkRec.BrNo      := lst_Result.item[I].attributes.getNamedItem('BR_NO').Text;
				WkRec.BrName    := lst_Result.item[I].attributes.getNamedItem('BR_NAME').Text;
				WkRec.HP        := lst_Result.item[I].attributes.getNamedItem('HP').Text;
				WkRec.PHONE     := lst_Result.item[I].attributes.getNamedItem('PHONE').Text;  }
				if (lst_Result.item[I].attributes.getNamedItem('ATTEND').Text = '01') and
					 (lst_Result.item[I].attributes.getNamedItem('STATE').Text  <> 'B2') then  //01 ���, 02 ����
				begin
					iRow := stg_WkList_View.DataController.AppendRecord;
					stg_WkList_View.DataController.Values[iRow,  0] := '';
					stg_WkList_View.DataController.Values[iRow,  1] := lst_Result.item[I].attributes.getNamedItem('SABUN').Text;           //���
				
					sTmp   := lst_Result.item[I].attributes.getNamedItem('NAME').Text;            
					sSabun := copy(sTmp, 1, pos('*',sTmp) -1);    
					if lst_Result.item[I].attributes.getNamedItem('BR_TYPE').Text = '1' then
						sName   := lst_Result.item[I].attributes.getNamedItem('NAME').Text
					else
						sName   := '��' + lst_Result.item[I].attributes.getNamedItem('NAME').Text;            
					stg_WkList_View.DataController.Values[iRow,  2] := sSabun;            //��ü���
					stg_WkList_View.DataController.Values[iRow,  3] := sName;             //����

					if lst_Result.item[I].attributes.getNamedItem('STATE').Text = 'A0' then
						stg_WkList_View.DataController.Values[iRow,  4] := '����'
					else 
					if lst_Result.item[I].attributes.getNamedItem('STATE').Text = 'A1' then
						stg_WkList_View.DataController.Values[iRow,  4] := '�ܼ�����'
					else
					if lst_Result.item[I].attributes.getNamedItem('STATE').Text = 'A2' then
						stg_WkList_View.DataController.Values[iRow,  4] := '��������'
					else
					if lst_Result.item[I].attributes.getNamedItem('STATE').Text = 'B2' then
						stg_WkList_View.DataController.Values[iRow,  4] := '����'
					else
						stg_WkList_View.DataController.Values[iRow,  4] := '����';
					
					stg_WkList_View.DataController.Values[iRow,  5] := '���'; // ���� lst_Result.item[I].attributes.getNamedItem('ATTEND').Text
					stg_WkList_View.DataController.Values[iRow,  6] := strtocall(lst_Result.item[I].attributes.getNamedItem('HP').Text); //�ܸ���
					stg_WkList_View.DataController.Values[iRow,  7] := lst_Result.item[I].attributes.getNamedItem('WK_POI').Text;//WK_POI ��ġ
					stg_WkList_View.DataController.Values[iRow,  8] := proc_dis_alculation(AX, AY
																																							 , lst_Result.item[I].attributes.getNamedItem('MAP_X').Text
																																							 , lst_Result.item[I].attributes.getNamedItem('MAP_Y').Text);//�Ÿ�
					stg_WkList_View.DataController.Values[iRow,  9] := '';//�����ڵ�
					stg_WkList_View.DataController.Values[iRow, 10] := lst_Result.item[I].attributes.getNamedItem('BR_NAME').Text;//�����
					stg_WkList_View.DataController.Values[iRow, 11] := '';//�����ڵ�
					stg_WkList_View.DataController.Values[iRow, 12] := '';//�����
					stg_WkList_View.DataController.Values[iRow, 13] := lst_Result.item[I].attributes.getNamedItem('MAP_Y').Text;//Lon
					stg_WkList_View.DataController.Values[iRow, 14] := lst_Result.item[I].attributes.getNamedItem('MAP_X').Text;//Lat
				end;
			end;
		except
			stg_WkList_View.EndUpdate;
			Screen.Cursor := crDefault;
			StrList.Free;		
		end;
	finally
		stg_WkList_View.Columns[8].SortOrder := soAscending;
		stg_WkList_View.EndUpdate;
		stg_WkList_View.DataController.SelectRows(0, 0);
		stg_WkList_View.DataController.FocusedRowIndex := 0;
		stg_WkList_View.DataController.Scroll(0);
		Screen.Cursor := crDefault;
		StrList.Free;		
		lbNearWKCnt.Caption := IntToStr(stg_WkList_View.DataController.RecordCount) + '��';
	end;
end;

procedure TFrm_COM11.cb_RadiusPropertiesChange(Sender: TObject);
var iTmp : integer;
begin
	try
		iTmp := cb_Condition.ItemIndex + 3;
		proc_NearRecon('01', 'A0', '', IntToStr(iTmp), edtKeyWord.Text, IntToStr(cb_Radius.itemindex+1), sStratLat, sStratLon, '0' );
	except
	end
end;

procedure TFrm_COM11.btnCloseClick(Sender: TObject);
begin
	if Assigned(Frm_Main.Frm_JON03[Jon03Tag]) then
	begin
	 if Frm_Main.Frm_JON03[Jon03Tag].Grd2.CanFocus then
		 Frm_Main.Frm_JON03[Jon03Tag].Grd2.SetFocus
	 else
	 if Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.CanFocus then
		 Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.SetFocus;
	end;
	Close;
end;

procedure TFrm_COM11.btn_wkSearchClick(Sender: TObject);
var iTmp : integer;
begin
	try
		iTmp := cb_Condition.ItemIndex + 3;
		case iTmp of
			3:
			begin
				if (length(edtKeyWord.Text) > 0) and (length(edtKeyWord.Text) < 4) then
				begin
					GMessagebox('�ܸ����ȣ�� �Է��Ͽ� �ֽʽÿ�' + #13#10
										+ '�� 4�ڸ� �Է� ��ȸ�����մϴ�.', CDMSE);
					Exit;
				end;
			end;
			4:
			begin
				if edtKeyWord.Text = '' then
				begin
					ShowMessage('������ �Է��Ͽ� �ֽʽÿ�');
					Exit;
				end;
				if length(widestring(edtKeyWord.Text)) < 2 then
				begin
					ShowMessage('������ �Է��Ͽ� �ֽʽÿ�');
					Exit;
				end;
			end;
			5:
			begin
				if edtKeyWord.Text = '' then
				begin
					ShowMessage('��ü����� �Է��Ͽ� �ֽʽÿ�');
					Exit;
				end;
				if length(widestring(edtKeyWord.Text)) < 2 then
				begin
					ShowMessage('��ü����� �Է��Ͽ� �ֽʽÿ�');
					Exit;
				end;
			end;
		end;
		proc_NearRecon('01', 'A0', '', IntToStr(iTmp), edtKeyWord.Text, IntToStr(cb_Radius.itemindex+1), sStratLat, sStratLon, '0' );
	except
	end
end;

procedure TFrm_COM11.cxButton2Click(Sender: TObject);
begin
	if Assigned(Frm_Main.Frm_JON03[Jon03Tag]) then
	begin
	 if Frm_Main.Frm_JON03[Jon03Tag].Grd2.CanFocus then
		 Frm_Main.Frm_JON03[Jon03Tag].Grd2.SetFocus
	 else
	 if Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.CanFocus then
		 Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.SetFocus;
	end;
  Close;
end;

procedure TFrm_COM11.cxButton1Click(Sender: TObject);
var
	ls_TxLoad, sKeyString: string;
	rv_str, sBaechSMS, msg: string;
  ls_rxxml: WideString;
	iRow, iWkSabun: Integer;
	slReceive: TStringList;
  ErrCode: integer;

  ls_ClientKey, ls_Msg_Err: string;
	sParams, XmlData, ErrMsg, sjWkSabun : String;
begin
  try
    iRow := stg_WkList_View.DataController.FocusedRecordIndex;
    if iRow = -1 then
    begin
      GMessagebox('��縦 Ŭ���ϼ���', CDMSE);
      Exit;
    end;
    if trim(stg_WkList_View.DataController.Values[iRow, 1]) = '' then
    begin
      GMessagebox('��縦 Ŭ���ϼ���', CDMSE);
      Exit;
    end;

    msg := sWkName + '�Կ��� �������� �Ͻðڽ��ϱ�?'#13#10#13#10
      + '([��] ��������, [�ƴϿ�] ���)';
    if Application.MessageBox(PChar(msg), CDMSI, MB_YESNO +
      MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
    begin
      iWkSabun := stg_WkList_View.GetColumnByFieldName('���').Index;
      sWkSabun := stg_WkList_View.DataController.Values[iRow, iWkSabun];
      //////////////////���ĳ�� üũ ���� �߰�/////////////////////////////////////////
      sParams := sSlip + '��' + sWkSabun + '��' + gOrderCharge;
      if not RequestBase(GetCallable06('CHECK_BAECHA_OK', 'A01.CHECK_BAECHA_OK', sParams), XmlData, ErrCode, ErrMsg) then
      begin
        GMessagebox('�����Ұ� : ' + ErrMsg + '[code : ' + IntToStr(ErrCode) + ']', CDMSE);
        exit;
      end;
      //////////////////���ĳ�� üũ ���� �߰�/////////////////////////////////////////

      iWkSabun := stg_WkList_View.GetColumnByFieldName('��ü���').Index;
      sjWkSabun := stg_WkList_View.DataController.Values[iRow, iWkSabun];

      sBaechSMS := '0';//�������� �߼ۿ��� 0 �߼�  1 �̹��
      sKeyString := '2';
      ls_TxLoad := GTx_UnitXmlLoad('C006.XML');
      ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', Self.Caption + sKeyString, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', En_Coding(sSlip), [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'WkSabunString', En_Coding(sjWkSabun), [rfReplaceAll]);  // ��ü���
      ls_TxLoad := StringReplace(ls_TxLoad, 'ConfWkSbString',En_Coding(sWkSabun), [rfReplaceAll]);   // �����
      ls_TxLoad := StringReplace(ls_TxLoad, 'OdbWkSbString', '', [rfReplaceAll]);   // ODB�����
      ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', En_Coding(sStatus), [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'BaechaSMSString', En_Coding(sBaechSMS), [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '0', [rfReplaceAll]);

      slReceive := TStringList.Create;
      try
        if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
        begin
          rv_str := slReceive[0];
          if rv_str <> '' then
          begin
            ls_rxxml := rv_str;
            Application.ProcessMessages;
            try
              ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
              if ('0000' = ls_MSG_Err) then
              begin
                ls_ClientKey := GetXmlClientKey(ls_rxxml);
                ls_ClientKey := Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5);
                GMessagebox('���� ���� �Ǿ����ϴ�.', CDMSI);
                if sSlip = A01_HIS_POPUP.Slip then
                begin
                  if Assigned(Frm_Main.Frm_Jon01N[A01_HIS_POPUP.Idx]) then
                  begin
                    Frm_Main.Frm_JON01N[A01_HIS_POPUP.Idx].btnCmdExit.Description := 'T';
                    Frm_Main.Frm_Jon01N[A01_HIS_POPUP.Idx].btnCmdExitClick(self);
                  end;
                end;
                Frm_Main.Frm_JON03[Jon03Tag].proc_Acc_Search(1, sSlip, 'COM11-1');
                Close;
              end	else
              begin
                Screen.Cursor := crDefault;
                GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
              end;
            except
            end;
          end;
        end;
      finally
        FreeAndNil(slReceive);
      end;
    end;
		if Assigned(Frm_Main.Frm_JON03[Jon03Tag]) then
		begin
		 if Frm_Main.Frm_JON03[Jon03Tag].Grd2.CanFocus then
			 Frm_Main.Frm_JON03[Jon03Tag].Grd2.SetFocus
		 else
		 if Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.CanFocus then
			 Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.SetFocus;
		end;
	except

  End;
end;

procedure TFrm_COM11.stg_WkList_ViewCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
	iRow, iWkName, iWkSabun, iHp, iArea: Integer;
	 sHp, sArea: string;
begin
	iRow := stg_WkList_View.DataController.FocusedRecordIndex;
	iWkName := stg_WkList_View.GetColumnByFieldName('����').Index;
	iWkSabun := stg_WkList_View.GetColumnByFieldName('���').Index;
	iHp := stg_WkList_View.GetColumnByFieldName('�ܸ���').Index;
	iArea := stg_WkList_View.GetColumnByFieldName('��ġ').Index;
	sWkName := stg_WkList_View.DataController.Values[iRow, iWkName];
	sWkSabun := stg_WkList_View.DataController.Values[iRow, iWkSabun];
	sHp := stg_WkList_View.DataController.Values[iRow, iHp];
	sArea := stg_WkList_View.DataController.Values[iRow, iArea];
	cxLabel1.Caption := '���� : ' + sWkName + '[' + sWkSabun + '] �ܸ��� : ' +
		sHp + ' ��ġ : ' +
		sArea;
end;

procedure TFrm_COM11.stg_WkList_ViewCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
	cxButton1.Click;
end;

procedure TFrm_COM11.edtKeyWordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_return then btn_wkSearch.click;
end;

end.

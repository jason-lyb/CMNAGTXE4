unit xe_CMP017;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MSXML2_TLB, cxGraphics, cxControls, cxLookAndFeels, Jpeg, IdFTPList,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel,
  Vcl.StdCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView, PNGImage,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxButtons,
  Vcl.ExtCtrls, cxGroupBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxSkinsCore,
  dxSkinscxPCPainter, cxMemo, WebImage, Vcl.ExtDlgs,
	IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, ComObj,
  IdExplicitTLSClientServerBase, IdFTP, IdFTPCommon, cxButtonEdit, cxListBox, Vcl.OleCtrls, SHDocVw,
  AdvProgressBar, dxGDIPlusClasses, AdvGlowButton,
  dxDateRanges, cxCustomListBox, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_CMP017 = class(TForm)
    PnlMain: TPanel;
    lbl65: TcxLabel;
    cxGrid: TcxGrid;
    cxView1: TcxGridDBTableView;
		cxView1Column1: TcxGridDBColumn;
		cxView1Column2: TcxGridDBColumn;
    cxView1Column3: TcxGridDBColumn;
    cxView1Column4: TcxGridDBColumn;
    cxView1Column5: TcxGridDBColumn;
    cxView1Column6: TcxGridDBColumn;
    cxLevel: TcxGridLevel;
    lbl2: TcxLabel;
    lbl3: TcxLabel;
    LblImage1: TcxLabel;
    btnInsert: TcxButton;
    btnUpdate: TcxButton;
    btnAdd: TcxButton;
    PnlTitle: TPanel;
    btnClose: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    edtKeyNumber: TcxTextEdit;
    cbbprocess: TcxComboBox;
    cxLblActive: TLabel;
    cboBrOnly: TcxComboBox;
		cxView1Column7: TcxGridDBColumn;
    cxView1Column8: TcxGridDBColumn;
    cxView1Column9: TcxGridDBColumn;
    cxView1Column10: TcxGridDBColumn;
    cxView1Column11: TcxGridDBColumn;
    Shape6: TShape;
    cxLabel1: TcxLabel;
    cbKeynumber01: TcxComboBox;
    Shape7: TShape;
    cxLabel2: TcxLabel;
    Shape8: TShape;
    lblInDate: TcxLabel;
    Shape9: TShape;
    cxLabel4: TcxLabel;
    Shape10: TShape;
    lblOutDate: TcxLabel;
    Shape11: TShape;
    Shape12: TShape;
    LblImage2: TcxLabel;
    Shape13: TShape;
    BtnImage1: TcxButton;
    BtnImageD1: TcxButton;
    BtnImage2: TcxButton;
    BtnImageD2: TcxButton;
    cxGroupBox2: TcxGroupBox;
    Shape14: TShape;
    cxLabel7: TcxLabel;
    cboBrOnlyS: TcxComboBox;
    cxButton3: TcxButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Shape15: TShape;
    cxLabel3: TcxLabel;
    cbbprocessS: TcxComboBox;
		cxView1Column12: TcxGridDBColumn;
    cxView1Column13: TcxGridDBColumn;
    cxView1Column14: TcxGridDBColumn;
    cxView1Column15: TcxGridDBColumn;
    cxView1Column16: TcxGridDBColumn;
    edtFile1: TcxTextEdit;
    edtFile2: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    Shape16: TShape;
    cxLabel8: TcxLabel;
    cboHdOnlyS: TcxComboBox;
    cxTSearchMainTel: TcxTextEdit;
    lst_BRList: TcxListBox;
    lblCurPathRate: TcxLabel;
    OpenDialog1: TOpenDialog;
    btnPDF2: TcxButton;
    Pnl_Acc: TPanel;
    cxGroupBox4: TcxGroupBox;
    Image1: TImage;
    Shape17: TShape;
    Shape18: TShape;
    Shape19: TShape;
    Shape20: TShape;
    Shape21: TShape;
    Shape22: TShape;
    Shape23: TShape;
    Shape24: TShape;
    Shape25: TShape;
    Shape26: TShape;
    Shape27: TShape;
    Shape28: TShape;
    LMDProgressNow: TAdvProgressBar;
    btn_GNo: TcxButton;
    btn_GOk: TcxButton;
    Btn_Up1: TcxButton;
    Btn_Up2: TcxButton;
    Btn_Up3: TcxButton;
    Btn_Up4: TcxButton;
    Btn_Up5: TcxButton;
    btnBtn_Del1: TcxButton;
    btnBtn_Del2: TcxButton;
    btnBtn_Del3: TcxButton;
    btnBtn_Del4: TcxButton;
    btnBtn_Del5: TcxButton;
    CB_uBank: TcxComboBox;
    Edt_bBank: TcxTextEdit;
    Edt_bGyeJa: TcxTextEdit;
    Edt_bYekumju: TcxTextEdit;
    Edt_Path1: TcxTextEdit;
    Edt_Path2: TcxTextEdit;
    Edt_Path3: TcxTextEdit;
    Edt_Path4: TcxTextEdit;
    Edt_Path5: TcxTextEdit;
    Edt_uGyeJa: TcxTextEdit;
    Edt_uYekumju: TcxTextEdit;
    Lbl_TName: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    Panel1: TPanel;
    ImageS: TImage;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
		cbbDtlCallCenterCode: TcxComboBox;
    cbbDtlCallCenterCode2: TcxComboBox;
    Shape5: TShape;
    lbl4: TcxLabel;
    meoMemo: TcxMemo;
    lst_BRCodeList: TcxListBox;
		cxView1Column17: TcxGridDBColumn;
    cxView1Column18: TcxGridDBColumn;
    cxGroupBox3: TcxGroupBox;
    Shape29: TShape;
    cxLabel20: TcxLabel;
    edtChangeBRName: TcxTextEdit;
    BtnAccCng: TcxButton;
    cbbDtlCallCenter: TcxComboBox;
    cxLabel21: TcxLabel;
    cbbDtlCallCenter2: TcxComboBox;
    Shape30: TShape;
    cxLabel22: TcxLabel;
    Shape31: TShape;
    Shape32: TShape;
    cxLabel23: TcxLabel;
    cxMemo1: TcxMemo;
    cxLabel24: TcxLabel;
    edtDtlCallCenterCode: TcxTextEdit;
    lbDtlCallCenterCode: TcxLabel;
    edtDtlCallCenterCode2: TcxTextEdit;
    lbDtlCallCenterCode2: TcxLabel;
    cxLabel26: TcxLabel;
		cxMemo2: TcxMemo;
    cxLabel25: TcxLabel;
		Shape33: TShape;
    btnAddInfo: TAdvGlowButton;
    Shape34: TShape;
    Shape35: TShape;
    procedure FormCreate(Sender: TObject);
		procedure btnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cboBrOnlyPropertiesChange(Sender: TObject);
    procedure cbKeynumber01PropertiesChange(Sender: TObject);
    procedure BtnImage1Click(Sender: TObject);
    procedure BtnImage2Click(Sender: TObject);
    procedure BtnImageD1Click(Sender: TObject);
    procedure BtnImageD2Click(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
		procedure btnInsertClick(Sender: TObject);
		procedure btnUpdateClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxView1Column6PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxView1Column7PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
		procedure cboHdOnlySPropertiesChange(Sender: TObject);
    procedure lst_BRListDblClick(Sender: TObject);
    procedure lst_BRListExit(Sender: TObject);
    procedure lst_BRListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
		procedure cxTSearchMainTelKeyDown(Sender: TObject; var Key: Word;
			Shift: TShiftState);
		procedure cxTSearchMainTelKeyUp(Sender: TObject; var Key: Word;
			Shift: TShiftState);
    procedure cxTSearchMainTelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxGroupBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lblCurPathRateClick(Sender: TObject);
    procedure cxTSearchMainTelEnter(Sender: TObject);
    procedure cxTSearchMainTelExit(Sender: TObject);
		procedure btnPDF2Click(Sender: TObject);
		procedure btn_GOkClick(Sender: TObject);
		procedure FormShow(Sender: TObject);
		procedure btnAddInfoClick(Sender: TObject);
		procedure edtDtlCallCenterCodeEnter(Sender: TObject);
		procedure edtDtlCallCenterCodeExit(Sender: TObject);
		procedure lbDtlCallCenterCodeClick(Sender: TObject);
		procedure edtDtlCallCenterCode2Enter(Sender: TObject);
		procedure edtDtlCallCenterCode2Exit(Sender: TObject);
		procedure lbDtlCallCenterCode2Click(Sender: TObject);
		procedure cbbDtlCallCenterCodePropertiesChange(Sender: TObject);
		procedure edtDtlCallCenterCodeMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
		procedure edtDtlCallCenterCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDtlCallCenterCodeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lst_BRCodeListExit(Sender: TObject);
    procedure lst_BRCodeListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lst_BRCodeListDblClick(Sender: TObject);
    procedure edtDtlCallCenterCodePropertiesChange(Sender: TObject);
    procedure cbbDtlCallCenterPropertiesChange(Sender: TObject);
    procedure edtChangeBRNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDtlCallCenterCode2PropertiesChange(Sender: TObject);
		procedure BtnAccCngClick(Sender: TObject);
    procedure btn_GNoClick(Sender: TObject);
    procedure Btn_Up1Click(Sender: TObject);
    procedure Btn_Up2Click(Sender: TObject);
    procedure Btn_Up3Click(Sender: TObject);
    procedure Btn_Up4Click(Sender: TObject);
    procedure Btn_Up5Click(Sender: TObject);
    procedure btnBtn_Del1Click(Sender: TObject);
    procedure btnBtn_Del2Click(Sender: TObject);
    procedure btnBtn_Del3Click(Sender: TObject);
    procedure btnBtn_Del4Click(Sender: TObject);
    procedure btnBtn_Del5Click(Sender: TObject);
    procedure CB_uBankKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edt_uYekumjuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGroupBox4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbbDtlCallCenterCode2PropertiesChange(Sender: TObject);
    procedure cbbDtlCallCenter2PropertiesChange(Sender: TObject);
	private
		{ Private declarations }
		FHeadCode, FBranchCode: string;
		searchBRlist, searchBRCodelist, slBrInfo: TStringList;  //����� �˻� �� �ε��� ���� 2013.06.15  KHS
		gFlieType : string; //����Ÿ��, �̹���, PDF

		Scb_BankCd, scb_BankNm, scb_BrCd : TStringList;

		bChange : Boolean; //1 :��ü, 2:�߰��׸�
		
		AEdit : TcxTextEdit;
		AComboCode, AComboName : TcxComboBox;
		
		function CheckField: Boolean;
		procedure ClearItem;
		procedure proc_BrNameSet;
		procedure proc_save_image(sBaseName: AnsiString; sFileName: string);
		procedure proc_save_PDF(sBaseName: String; sFileName: string);
		function GetFileSize( sFileName : String ) : Integer;
		procedure RequestData;
		function proc_BrNameList_Search: boolean;
		function proc_BrCodeNameList_Search: boolean;
		procedure proc_Bank;
		procedure proc_CallCenter;
		function proc_Branch:Boolean;
//		function AccUpLoadFile(IdFTPUP: TIdFTP; sFN1, sFN2,	sFTPPath: string): Boolean;
		function AccUpLoadFile(sFN1, sFN2, sFN3, sFN4, sFN5, sFTPPath, sGubun: string): Boolean;
    procedure proc_File_Load( EdtFileName : TcxTextEdit; nGubun : Integer );
	public
		{ Public declarations }
		procedure proc_init;
	end;

var
  Frm_CMP017: TFrm_CMP017;

implementation

{$R *.dfm}

uses xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_xml, xe_Msg, xe_Flash, xe_Lib,
  FastStringFuncs, xe_packet, xe_ImageV, xe_JON51;


procedure TFrm_CMP017.proc_init;
var
	I, Save: Integer;
	sTmp : string;
begin
	// ====================================================
  // �� Ÿ��Ʋ ����..
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
		cxView1.Columns[0].DataBinding.ValueTypeClass := TcxCurrencyValueType;
    for I := 1 to cxView1.ColumnCount - 1 do
    begin
			cxView1.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
    end;
  except

  end;

	searchBRlist := TStringList.Create;
	searchBRCodelist := TStringList.Create;
	slBrInfo := TStringList.Create; //�ݼ��� �ڵ� + ':' + �ݼ��� ��
	
	lst_BRList.Left := 155;
  lst_BRList.Top  := 58;

  cboBrOnly.Tag := 1;
  cboBrOnly.Properties.Items.Clear;
	cboBrOnly.Properties.Items.Assign(scb_BranchName);
  cboBrOnly.Tag := 0;
  cboBrOnly.ItemIndex := 0;

	sTmp := '';
	cboHdOnlyS.Properties.Items.Clear;
	for i := 0 to scb_HdNo.Count - 1 do
	begin
		if sTmp <> scb_HdNo[i] then
		begin
			cboHdOnlyS.Properties.Items.Add(scb_HdNm[i]);
		end;
		sTmp := scb_HdNo[i];
	end;
	cboHdOnlyS.ItemIndex := 0;

	lst_BRCodeList.Left := 155;
	lst_BRCodeList.Top := 263;

	ClearItem;

	btnAddInfo.Tag := 0;
	cxGroupBox1.Height := 165;

	gFlieType := '';
end;

procedure TFrm_CMP017.proc_BrNameSet;
var
  StrList: TStringList;
  lsBrNo : String;
begin
  if scb_BranchName.IndexOf(cboBrOnly.Text) < 0 then Exit;
  
  if Trim(cboBrOnly.Text) = '' then
    lsBrNo := ''
  else
    lsBrNo := scb_BranchCode[scb_BranchName.IndexOf(cboBrOnly.Text)];

  edtKeyNumber.Clear;

	StrList := TStringList.Create;
  cbKeynumber01.Tag := 1;
  try
		GetBrTelList(lsBrNo, StrList);
		cbKeynumber01.Properties.Items.Assign(StrList);
	finally
		StrList.Free;
  end;

//  if cbKeynumber01.Properties.Items.Count >= 1 then  // ��ǥ��ȣ�� �ϳ��� ��� ���;ߵ�
  begin
    cbKeynumber01.Properties.Items.Insert(0, '�����ϼ���');
		cbKeynumber01.Properties.Items.Insert(1, '��ǥ��ȣ�űԵ��');
	end;

  cbKeynumber01.ItemIndex := 0;
  cbKeynumber01.Tag := 0;
end;

procedure TFrm_CMP017.proc_CallCenter;
var
  ls_TxLoad : string;
  rv_str : string;
	ls_rxxml: WideString;

	xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Msg_Err: string;
  slReceive: TStringList;
  ErrCode, i: integer;
begin
	try
		ls_TxLoad := GTx_UnitXmlLoad('C053N1.xml');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BRCC0001', [rfReplaceAll]);

		slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          xdom := ComsDomDocument.Create;
          try
						if (not xdom.loadXML(ls_rxxml)) then
            begin
              Screen.Cursor := crDefault;
              ShowMessage('���� Error�Դϴ�. �ٽ���ȸ�Ͽ��ֽʽÿ�.');
              Exit;
            end;
						ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' = ls_Msg_Err) then
            begin
							lst_Result := xdom.documentElement.selectNodes('/cdms/Service/CallCenter/Item');
							cbbDtlCallCenter.Properties.Items.Clear;
							slBrInfo.Clear;
							for I := 0 to lst_Result.length - 1 do
							begin
								cbbDtlCallCenter.Properties.Items.Add(lst_Result[I].attributes.getNamedItem('name').text);
								cbbDtlCallCenterCode.Properties.Items.Add(lst_Result[I].attributes.getNamedItem('no').text);

								cbbDtlCallCenter2.Properties.Items.Add(lst_Result[I].attributes.getNamedItem('name').text);
								cbbDtlCallCenterCode2.Properties.Items.Add(lst_Result[I].attributes.getNamedItem('no').text);

								slBrInfo.Add(lst_Result[I].attributes.getNamedItem('no').text + ' : ' + lst_Result[I].attributes.getNamedItem('name').text);
							end;
							slBrInfo.Insert(0, '���� : ����');
							cbbDtlCallCenter.Properties.Items.Insert(0, '����');
							cbbDtlCallCenterCode.Properties.Items.Insert(0, '����');
							cbbDtlCallCenter2.Properties.Items.Insert(0, '����');
							cbbDtlCallCenterCode2.Properties.Items.Insert(0, '����');
						end;
          finally
						xdom := Nil;
          end;
        end;
      end;
    finally
      Frm_Flash.Hide;
      Screen.Cursor := crDefault;
      freeAndNil(slReceive);
    end;
	except
  end;
end;

procedure TFrm_CMP017.proc_File_Load(EdtFileName: TcxTextEdit; nGubun: Integer);
var
  f: file of Byte;
  size: Longint;
  sFileName: string;
  i : Integer;
begin
  if OpenPictureDialog1.Execute then
  begin
		sFileName := OpenPictureDialog1.FileName;
    ImageS.Picture.LoadFromFile(sFileName);
    AssignFile(f, sFileName);
    Reset(f);
    try
      size := FileSize(f);
    finally
      CloseFile(f);
    end;
    if size > 1000*1024 then
    begin
      GMessagebox('���� ����� �ʹ� Ů�ϴ�.(1 MByte���Ϸ� ��Ϲٶ��ϴ�.)', CDMSE);
      exit;
    end;

    for i := 1 to 5 do
    begin
      if ( i <> nGubun ) And ( TcxTextEdit(FindComponent('Edt_Path'+IntToStr(i))).Text = sFileName ) then
      begin
        GMessagebox('�̹� ÷�ε� �����Դϴ�.', CDMSE);
        Exit;
      end;
    end;

    EdtFileName.Hint := '1';
    EdtFileName.Text := sFileName;
  end;
end;

procedure TFrm_CMP017.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_CMP017.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	if Assigned(Frm_JON51) then
    if TCK_USER_PER.BTM_MENUSCH = '1' then Frm_JON51.Menu_Use_Mark('DEL', 806);

  Action := caFree;
end;

procedure TFrm_CMP017.FormCreate(Sender: TObject);
begin
	scb_BrCd := TStringList.Create;
	proc_init;
end;

procedure TFrm_CMP017.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_CMP017.FormDestroy(Sender: TObject);
begin
	FreeAndNil(searchBRlist);
	FreeAndNil(searchBRCodelist);
	FreeAndNil(slBrInfo);
	FreeAndNil(Scb_BankCd);
	FreeAndNil(scb_BankNm);
	FreeAndNil(scb_BrCd);
	Frm_CMP017 := Nil;
end;

procedure TFrm_CMP017.FormShow(Sender: TObject);
begin
  fSetFont(Frm_CMP017, GS_FONTNAME);

	Scb_BankCd := TStringList.Create;
	scb_BankNm := TStringList.Create;

	proc_CallCenter;
	proc_Bank;
end;

function TFrm_CMP017.GetFileSize(sFileName: String): Integer;
var
  SearchRec: TSearchRec; // ���� �Ӽ����� ����.
begin
  if FileExists(sFileName) then
  begin
    FindFirst(sFileName, faAnyFile, SearchRec);
    Result := SearchRec.Size;
  end;
end;

procedure TFrm_CMP017.lbDtlCallCenterCode2Click(Sender: TObject);
begin
	if edtDtlCallCenterCode2.Enabled then 
	begin
		edtDtlCallCenterCode2.SetFocus;
		AEdit := edtDtlCallCenterCode2;
		AComboName := cbbDtlCallCenter2;
		AComboCode := cbbDtlCallCenterCode2;
	end;
end;

procedure TFrm_CMP017.lbDtlCallCenterCodeClick(Sender: TObject);
begin
	if edtDtlCallCenterCode.Enabled then
	begin
		edtDtlCallCenterCode.SetFocus;
		AEdit := edtDtlCallCenterCode;
		AComboName := cbbDtlCallCenter;
		AComboCode := cbbDtlCallCenterCode;
	end;
end;

procedure TFrm_CMP017.lblCurPathRateClick(Sender: TObject);
begin
	if cxTSearchMainTel.Enabled then cxTSearchMainTel.SetFocus;
end;

procedure TFrm_CMP017.lst_BRCodeListDblClick(Sender: TObject);
begin
	AComboCode.ItemIndex := StrToIntDef(searchBRCodelist[lst_BRCodeList.ItemIndex], 0);
	AEdit.Text := AComboCode.Text;
	lst_BRCodeList.Visible := False;
end;

procedure TFrm_CMP017.lst_BRCodeListExit(Sender: TObject);
begin
	lst_BRCodeList.Visible := False;
end;

procedure TFrm_CMP017.lst_BRCodeListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then
	begin
		AComboCode.ItemIndex := StrToIntDef(searchBRCodelist[lst_BRCodeList.ItemIndex], 0);
		AEdit.Text := AComboCode.Text;
		lst_BRCodeList.Visible := False;
	end else
	if (Key = VK_ESCAPE) or (Key = VK_TAB) then
	begin
		lst_BRCodeList.Visible := False;
	end else
	if Key = VK_UP then
	begin
		if lst_BRCodeList.Selected[0] then AEdit.SetFocus;
	end;
end;

procedure TFrm_CMP017.lst_BRListDblClick(Sender: TObject);
begin
	cboBrOnly.ItemIndex := StrToIntDef(searchBRlist[lst_BRList.ItemIndex], 0);
	lst_BRList.Visible := False;
end;

procedure TFrm_CMP017.lst_BRListExit(Sender: TObject);
begin
	lst_BRList.Visible := False;
end;

procedure TFrm_CMP017.lst_BRListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then
	begin
		cboBrOnly.ItemIndex := StrToIntDef(searchBRlist[lst_BRList.ItemIndex], 0);
		lst_BRList.Visible := False;
	end else
	if Key = VK_UP then
	begin
		if lst_BRlist.Selected[0] then cxTSearchMainTel.SetFocus;
	end;
end;

procedure TFrm_CMP017.proc_save_image(sBaseName : AnsiString; sFileName: string);
var
	oJpg: TJpegImage;
	oPng: TPngImage;
	oBmp: TBitmap;
begin
	if not DirectoryExists(WORKDRIVE) then ForceDirectories(WORKDRIVE);

	if FileExists(WORKDRIVE + sFileName + '.JPG') then
		DeleteFile(WORKDRIVE + sFileName + '.JPG');

	// ����ũ�⺯ȯ
	oJpg := TJpegImage.Create;
	oBmp := TBitmap.Create;
	oPng := TPngImage.Create;
	try
		if ( UpperCase(Rightstr(sBaseName, 3)) = 'JPG' ) Or ( UpperCase(Rightstr(sBaseName, 4)) = 'JPEG' ) then
		begin
			oJpg.LoadFromFile(sBaseName);
		end else
		if UpperCase(Rightstr(sBaseName, 3)) = 'PNG' then
		begin
			oPng.LoadFromFile(sBaseName);
			oBmp.Assign(oPng);
			oJpg.Assign(oBmp);
		end else
		begin
			oBmp.LoadFromFile(sBaseName);
			oJpg.Assign(oBmp);
		end;
		oJpg.SaveToFile(WORKDRIVE + sFileName + '.jpg');
	finally
		oJpg.Free;
		oBmp.Free;
		oPng.Free;
	end;
end;

procedure TFrm_CMP017.proc_save_PDF(sBaseName: String; sFileName: string);
var
	sTmp : string;
begin
	if not DirectoryExists(WORKDRIVE) then ForceDirectories(WORKDRIVE);

	if FileExists(WORKDRIVE + sFileName + '.PDF') then
		DeleteFile(WORKDRIVE + sFileName + '.PDF');
	try
    sTmp := WORKDRIVE + sFileName + '.PDF';
		CopyFile(PChar(sBaseName), PChar(sTmp), False);


{		sTmp := PChar(WORKDRIVE + sFileName + '.PDF');
		FileMode := fmOpenWrite;
		AssignFile(f, sBaseName);
		if FileExists(sBaseName) = true then
			Reset(f)
		else
			Rewrite(f);

		Seek(f, filesize(f));
		CopyFile(f, sTmp);  }
	except
		GMessagebox('��ǥ��ȣ �������� ��� �� �����߻�', CDMSE);
	end;
		
end;

procedure TFrm_CMP017.RequestData;
var
  sBrCd, XmlData, Param, ErrMsg, tmpCntStr, tmpStr, sContent : string;
  StrList, slList : TStringList;
  ErrCode, j, k, tmpCnt, iCnt, iRow, iNum : integer;
  ArrSt: Array of String;
begin
  // request ����
	// �����ڵ� [�ʼ�]�������ڵ� ������������ ó������[0.��û/1.ó����/2.�Ϸ�/3.����]
	Param := scb_HdNo[cboHdOnlyS.ItemIndex];

	if cboBrOnlyS.ItemIndex = 0 then
		sBrCd := ''
  else
		sBrCd := scb_BranchCode[scb_BranchName.IndexOf(cboBrOnlyS.Text)];      
	if cbbprocessS.ItemIndex = 0 then
		Param := Param + '��' + sBrCd + '��'
	else
		Param := Param + '��' + sBrCd + '��' + IntToStr(cbbprocessS.ItemIndex - 1);

	Screen.Cursor := crHourGlass;
  slList := TStringList.Create;
	try
		if not RequestBasePaging(GetSel06('GETLISTBRTELAUTH', 'MNG.GET_LIST_BR_TEL_AUTH', '1000', Param), slList, ErrCode, ErrMsg) then
		begin
      Screen.Cursor := crDefault;
			GMessagebox(Format('��ǥ��ȣ �������� ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Exit;
		end;

    cxView1.DataController.SetRecordCount(0);
    StrList := TStringList.Create;
		iCnt := 1;
    for j := 0 to slList.Count - 1 do
    begin
      Application.ProcessMessages;
      xmlData := slList.Strings[j];

      if Pos('<Data Count="',xmlData)>0 then
      begin
        tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
        if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
        tmpCnt:=StrToIntDef(tmpCntStr,0);
			end;
			if tmpCnt<1 then Exit;

      cxView1.BeginUpdate;
      try
        SetLength(ArrSt,tmpCnt);
        tmpStr:=xmlData;
        tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
        tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
        tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);

        if Pos('<Result Value=',XmlData)>0 then
          tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);

        iNum := 0;
        for k:=0 to tmpCnt-1 do
        begin
          ArrSt[k]:=tmpStr;
          if Pos('/>',tmpStr)>0 then
          begin
            ArrSt[k]:=Copy(tmpStr,1,Pos('/>',tmpStr)-1);
            if Pos('<Result Value=',ArrSt[k]) > 0 then
              ArrSt[k] := Copy(ArrSt[k],Pos('<Result Value=',ArrSt[k])+14,Length(ArrSt[k])-Pos('<Result Value=',ArrSt[k])+14+1);
            if Pos('/>',ArrSt[k]) > 0 then
							ArrSt[k] := Copy(ArrSt[k],1,Pos('/>',ArrSt[k])-1);
            ArrSt[k]:=StringReplace(ArrSt[k],'"','',[rfReplaceAll]);

            tmpStr:=Copy(tmpStr,Pos('/>',tmpStr)+2,Length(tmpStr)-Pos('/>',tmpStr)+2+1);
            StrList.Clear;
            GetTextSeperationEx2('��', ArrSt[k], StrList);

						if scb_BrCd.IndexOf(StrList.Strings[1]) < 0 then continue;
						// response ����
						// �������������ڵ妢�������ǥ��ȣ����û��ǥ��ȣ������1��url1������2��url2��ó�����¦���û�Ͻæ�ó���Ͻæ���û���׸޸�
						iRow := cxView1.DataController.AppendRecord;
            cxView1.DataController.Values[iRow, 0] := IntToStr(iCnt);
						cxView1.DataController.Values[iRow, 1] := StrList.Strings[1];       // �����ڵ�
						cxView1.DataController.Values[iRow, 2] := StrList.Strings[2];       // �����
						cxView1.DataController.Values[iRow, 3] := StrList.Strings[3];       // ��ǥ��ȣ
            cxView1.DataController.Values[iRow, 4] := StrList.Strings[4];       // ��û��ǥ��ȣ
            cxView1.DataController.Values[iRow, 5] := '����';                   // �ź���
						cxView1.DataController.Values[iRow, 6] := '����';                   // �����
            if StrList.Strings[9] = '0' then cxView1.DataController.Values[iRow, 7] := '��û' else       // ó������
            if StrList.Strings[9] = '1' then cxView1.DataController.Values[iRow, 7] := 'ó����' else
            if StrList.Strings[9] = '2' then cxView1.DataController.Values[iRow, 7] := '�Ϸ�' else
            if StrList.Strings[9] = '3' then cxView1.DataController.Values[iRow, 7] := '����';
            cxView1.DataController.Values[iRow, 8 ] := StrList.Strings[10];      // ��û�Ͻ�
            cxView1.DataController.Values[iRow, 9 ] := StrList.Strings[11];      // ó���Ͻ�
						sContent := StringReplace(StrList.Strings[12], '��', #13,[rfReplaceAll]);
            cxView1.DataController.Values[iRow, 10] := sContent;
            cxView1.DataController.Values[iRow, 11] := StrList.Strings[6];       // URL1
            cxView1.DataController.Values[iRow, 12] := StrList.Strings[8];       // URL2
						cxView1.DataController.Values[iRow, 13] := StrList.Strings[0];       // ������
            cxView1.DataController.Values[iRow, 14] := StrList.Strings[5];       // ���ϸ�1
						cxView1.DataController.Values[iRow, 15] := StrList.Strings[7];       // ���ϸ�2
						if StrList.Count > 13 then
						begin
							cxView1.DataController.Values[iRow, 16] := StrList.Strings[13];       // �ݼ���1
							cxView1.DataController.Values[iRow, 17] := StrList.Strings[14];       // �ݼ���2
						end;
						Inc(iCnt);

          end;
        end;
      finally
        cxView1.EndUpdate;
      end;
    end;
  finally
    slList.Free;
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_CMP017.btnCloseClick(Sender: TObject);
begin
	Close;
end;

procedure TFrm_CMP017.ClearItem;
begin
	cboBrOnly.enabled := True;
	cxTSearchMainTel.enabled := True;
	cbKeynumber01.enabled := True;
	edtFile1.enabled := True;
	BtnImage1.enabled := True;
	BtnImageD1.enabled := True;
	edtFile2.enabled := True;
	btnPDF2.enabled := True;
	BtnImage2.enabled := True;
	BtnImageD2.enabled := True;
	meoMemo.enabled := True;
	cxMemo1.enabled := True;
	
	PnlTitle.Hint := '';

  edtFile1.Clear;
  LblImage1.Hint := '';
  edtFile2.Clear;
  LblImage2.Hint := '';

  edtKeyNumber.Clear;
	cbbProcess.ItemIndex := 0;

  lblInDate.Caption := '';
  lblOutDate.Caption := '';

	meoMemo.Clear;

	edtChangeBRName.Text := '';
	cbbDtlCallCenterCode.ItemIndex := -1;
	cbbDtlCallCenter.ItemIndex := -1;
	cbbDtlCallCenterCode2.ItemIndex := -1;
	cbbDtlCallCenter2.ItemIndex := -1;
	cxMemo1.Clear;
	cxMemo1.lines.Add('��ǥ��ȣ : ');
	cxMemo1.lines.Add(#13#10 + '��ǥ��ȣ �⺻��� :');
	cxMemo1.lines.Add(#13#10 + 'DNIS1 : ');
	cxMemo1.lines.Add(#13#10 + '�ݴ��� : ');

	edtChangeBRName.Hint := '';
	cbbDtlCallCenterCode.Hint := '';
	cbbDtlCallCenterCode2.Hint := '';
	cbbDtlCallCenter.Hint := '';
	cbbDtlCallCenter2.Hint := '';
	cxMemo1.Hint := cxMemo1.Text;
end;

procedure TFrm_CMP017.btnAddInfoClick(Sender: TObject);
begin
	if btnAddInfo.Tag = 0 then
	begin
		cxGroupBox1.Height := 320;
		btnAddInfo.Tag := 1;
		btnAddInfo.Caption := '�߰���û �ݱ�';
		edtChangeBRName.SetFocus;
	end
	else
	begin
		cxGroupBox1.Height := 165;
		btnAddInfo.Tag := 0;
		btnAddInfo.Caption := '�߰���û ����';
	end;
end;

procedure TFrm_CMP017.btnBtn_Del1Click(Sender: TObject);
begin
  Edt_Path1.Clear;
  Edt_Path1.Hint := '0';
	ImageS.Picture := nil;
end;

procedure TFrm_CMP017.btnBtn_Del2Click(Sender: TObject);
begin
	Edt_Path2.Clear;
	Edt_Path2.Hint := '0';
	ImageS.Picture := nil;
end;

procedure TFrm_CMP017.btnBtn_Del3Click(Sender: TObject);
begin
	Edt_Path3.Clear;
  Edt_Path3.Hint := '0';
  ImageS.Picture := nil;
end;

procedure TFrm_CMP017.btnBtn_Del4Click(Sender: TObject);
begin
	Edt_Path4.Clear;
  Edt_Path4.Hint := '0';
  ImageS.Picture := nil;
end;

procedure TFrm_CMP017.btnBtn_Del5Click(Sender: TObject);
begin
	Edt_Path5.Clear;
  Edt_Path5.Hint := '0';
	ImageS.Picture := nil;
end;

procedure TFrm_CMP017.cxButton3Click(Sender: TObject);
begin
	RequestData;
end;

procedure TFrm_CMP017.cxGroupBox1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  lst_BRList.Visible := False;
end;

procedure TFrm_CMP017.cxGroupBox4MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
	PostMessage(Pnl_Acc.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_CMP017.cxTSearchMainTelEnter(Sender: TObject);
begin
	lblCurPathRate.Visible := False;
end;

procedure TFrm_CMP017.cxTSearchMainTelExit(Sender: TObject);
begin
	lblCurPathRate.Visible := (cxTSearchMainTel.Text = ''); // ������� �Է� �ܻ�.
end;

procedure TFrm_CMP017.cxTSearchMainTelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var i : Integer;
begin
	if Key = VK_BACK then
	begin
		if (Length(cxTSearchMainTel.Text) <= 1) then
		begin
			lst_BRList.Items := cboBrOnly.Properties.Items;
			searchBRlist.Clear;
			for i := 0 to lst_BRList.Items.Count - 1 do
				searchBRlist.Add(inttostr(i));

			if lst_BRList.Items.Count > 30 then
				lst_BRList.Height := 500
			else
				lst_BRList.Height := lst_BRList.Items.Count * 18;
//      lst_BRList.Visible := False;
//      Exit;
		end;
	end else
	if Key = VK_DOWN then
	begin
		if lst_BRList.Visible then lst_BRList.SetFocus;
	end else
	if Key = VK_RETURN then
	begin
		lst_BRList.Visible := False;
	end;
end;

procedure TFrm_CMP017.cxTSearchMainTelKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//		if (key <> 229) then  //  20191224 �����Է±� ������ ��� �ѱ��� 229�� �Ѿ�� �׷��� ���� KHS
	begin
  	if Trim(cxTSearchMainTel.Text) = '' then
    begin
      cxTSearchMainTel.SetFocus;
      Exit;
    end;

    if Length(Trim(cxTSearchMainTel.Text)) >= 1 then
    begin
      // ��������� ��ȸ..  CDS. 080818.
			if not proc_BrNameList_Search then Exit;
		end;
  end;
end;

procedure TFrm_CMP017.proc_Bank;
var
  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, ErrCode : Integer;
begin
	Scb_BankCd.Clear;
  Scb_BankNm.Clear;
	CB_uBank.Clear;

  Param := '';

	if not RequestBase(GetSel05('GETBANKCDLIST', 'PAY_OUT.GET_BANK_CD_LIST', '100', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('���ฮ��Ʈ ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

  xdom := ComsDomDocument.Create;
  try
    xdom.loadXML(XmlData);
    lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
    Scb_BankCd.Clear;
		CB_uBank.Clear;
		if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
		begin
			lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
			ls_Rcrd := TStringList.Create;
			try
				for I := 0 to lst_Result.length - 1 do
				begin
					GetTextSeperationEx2('��', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
					Scb_BankCd.Add(ls_Rcrd[0]);
					Scb_BankNm.Add(ls_Rcrd[1]);
					CB_uBank.Properties.Items.Add(ls_Rcrd[1]);
				end;
      finally
        ls_Rcrd.Free;
			end;
    end;
  finally
    xdom := Nil;
  end;
end;

Function TFrm_CMP017.proc_Branch:Boolean;
var
	XmlData, Param, ErrMsg, sBrCd, sHdCd: string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd, slList: TStringList;
	I, ErrCode, j : Integer;
begin
	Result := False;
	sBrCd := scb_BranchCode[scb_BranchName.IndexOf(cboBrOnly.Text)];
	sHdCd := scb_HdCode[scb_BranchName.IndexOf(cboBrOnly.Text)];
	Param := sHdCd + '��' + sBrCd;

	slList := TStringList.Create;
	Screen.Cursor := crHourGlass;
	Try
		if not RequestBasePaging(GetSel05('GETCASHBRLIST', 'PAY_OUT.GET_CASH_BR_LIST', '1', Param), slList, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('���縮��Ʈ ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Screen.Cursor := crDefault;
			FreeAndNil(slList);
			Exit;
		end;

		xdom := ComsDomDocument.Create;
		try
			for j := 0 to slList.Count - 1 do
			begin
				Application.ProcessMessages;
				xmlData := slList.Strings[j];
				xdom.loadXML(XmlData);

				lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');

				if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
				begin
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					ls_Rcrd := TStringList.Create;
					try
//						iRow := 0;
						for I := 0 to lst_Result.length - 1 do
						begin
							// 0 �����ڵ�, 1 �����, 2 ��ݰ���, 3 �����, 4 �����ڵ�, 5 ������, 6 ��������ݾ�, 7 ��������ݾ�, 8 �����ݾ�, 9 �ܾ�, 10 ���걸��(0:�������/1:��������/2:����������)
							GetTextSeperationEx2('��', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);

							Lbl_TName.Caption := ls_Rcrd[1];
							Lbl_TName.Hint := ls_Rcrd[0];
							Edt_bBank.Text  := ls_Rcrd[3];
							Edt_bBank.Hint := ls_Rcrd[4];
							Edt_bGyeJa.Text := ls_Rcrd[2];
							Edt_bYekumju.Text := ls_Rcrd[5];

						end;
					finally
						ls_Rcrd.Free;
						Result := True;
					end;
				end
				else
				begin
					GMessagebox('�ش�����['+ cboBrOnly.Text + '-' + sBrCd + ']�� ��ϵ�'+#13#10+'������°� �����ϴ�.', CDMSE);
					Screen.Cursor := crDefault;
					Result := False;
				end;
			end;
		finally
			xdom := nil;
			Frm_Flash.Hide;
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			
		end;
	except
		on e: exception do
		begin
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
  end;
end;

function TFrm_CMP017.proc_BrCodeNameList_Search: boolean;
var
	i, iOldIdx: integer;
	bRlt: boolean;
	sKey: string;
begin
	try
		bRlt := False;
		lst_BRCodeList.Items.Clear;
		searchBRCodelist.Clear;
		sKey := UpperCase(AEdit.text); // ��ȸ�� ����� �б�.

		iOldIdx := AComboCode.ItemIndex;  // ���� index ���� ����.[��ã�� ��� ���� ��������� �ǵ�����]
		AComboCode.Tag := 20;
		lst_BRCodeList.Items.BeginUpdate;
		// ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
		for i := 0 to AComboCode.Properties.Items.Count - 1 do
		begin
			if (Pos(sKey, AComboCode.Properties.Items[i]) > 0) or (Pos(sKey, AComboName.Properties.Items[i]) > 0) then
			begin // �����  ã��..
				lst_BRCodeList.Items.add(AComboCode.Properties.Items[i] + ' : ' +  AComboName.Properties.Items[i]);
				searchBRCodelist.Add(inttostr(i));
				bRlt := True;
			end;
		end;
		lst_BRCodeList.Items.EndUpdate;
		AComboCode.ItemIndex := iOldIdx;

		if lst_BRCodeList.Tag = 1 then
		begin
			lst_BRCodeList.Left := 155;
			lst_BRCodeList.Top := 263;
		end else if lst_BRCodeList.Tag = 2 then
		begin
			lst_BRCodeList.Left := 155;
			lst_BRCodeList.Top := 290;
		end;
		lst_BRCodeList.Visible := True;

		if lst_BRCodeList.Items.Count > 30 then
			lst_BRCodeList.Height := 300
		else
			lst_BRCodeList.Height := lst_BRCodeList.Items.Count * 18;
		AComboCode.Tag := 0;
		// ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
		Result := bRlt;
	Except
		on e: exception do
		begin
			Log('proc_BrNameList_Search Error :' + E.Message, LOGDATAPATHFILE);
			Assert(False, 'proc_BrNameList_Search Error :' + E.Message);
		end;
	end;
end;

function TFrm_CMP017.proc_BrNameList_Search: boolean;
var
	i, iOldIdx: integer;
	bRlt: boolean;
	sKey: string;
begin
	try
		bRlt := False;
		lst_BRList.Items.Clear;
		searchBRlist.Clear;
		sKey := cxTSearchMainTel.text; // ��ȸ�� ����� �б�.

		iOldIdx := cboBrOnly.ItemIndex;  // ���� index ���� ����.[��ã�� ��� ���� ��������� �ǵ�����]
		cboBrOnly.Tag := 20;
		lst_BRList.Items.BeginUpdate;
		// ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
		for i := 0 to cboBrOnly.Properties.Items.Count - 1 do
		begin
			cboBrOnly.ItemIndex := i;
			if (Pos(sKey, cboBrOnly.Text) > 0) then
			begin // �����  ã��..
				lst_BRList.Items.Add(cboBrOnly.Text);
				searchBRlist.Add(inttostr(i));
				bRlt := True;
			end;
		end;
		lst_BRList.Items.EndUpdate;
		cboBrOnly.ItemIndex := iOldIdx;
		lst_BRList.Visible := True;
		if lst_BRList.Items.Count > 30 then
			lst_BRList.Height := 500
		else
			lst_BRList.Height := lst_BRList.Items.Count * 18;
		cboBrOnly.Tag := 0;
		// ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
		Result := bRlt;
	Except
		on e: exception do
		begin
			Log('proc_BrNameList_Search Error :' + E.Message, LOGDATAPATHFILE);
			Assert(False, 'proc_BrNameList_Search Error :' + E.Message);
		end;
	end;
end;

procedure TFrm_CMP017.cxTSearchMainTelMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Var i : Integer;
begin
  if Trim(cxTSearchMainTel.Text) = '' then
  begin
    lst_BRList.Items := cboBrOnly.Properties.Items;
    searchBRlist.Clear;
    for i := 0 to lst_BRList.Items.Count - 1 do
			searchBRlist.Add(inttostr(i));
  end;
  if lst_BRList.Items.Count > 30 then
    lst_BRList.Height := 500
  else
    lst_BRList.Height := lst_BRList.Items.Count * 18;

  lst_BRList.Visible := True;
end;

procedure TFrm_CMP017.cxView1Column6PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
Var iRow, iWebURL1 : Integer;
    sWebUrl1 : String;
begin
  iRow := cxView1.DataController.FocusedRecordIndex;
  if iRow = -1 then Exit;

  iWebURL1 := cxView1.GetColumnByFieldName('�ź���URL').Index;
  sWebUrl1 := cxView1.DataController.Values[iRow, iWebURL1];

	if Not Assigned(Frm_ImageV) Or (Frm_ImageV = Nil) then Frm_ImageV := TFrm_ImageV.Create(Self);
  Frm_ImageV.SetImageURL(sWebUrl1);
  Frm_ImageV.lblTitle.Caption := '�ź���';
  Frm_ImageV.Show;
  Frm_ImageV.SetImageURL(sWebUrl1);
end;

procedure TFrm_CMP017.cxView1Column7PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
Var iRow, iWebURL2 : Integer;
		sWebUrl2 : String;
		IE: variant;
begin
  iRow := cxView1.DataController.FocusedRecordIndex;
  if iRow = -1 then Exit;

  iWebURL2 := cxView1.GetColumnByFieldName('�����URL').Index;
	sWebUrl2 := cxView1.DataController.Values[iRow, iWebURL2];
	if (UpperCase(Rightstr(sWebUrl2, 3)) = 'PDF') or (UpperCase(Rightstr(sWebUrl2, 3)) = 'TIF') then
	begin
		try
			IE := CreateOleObject('InternetExplorer.Application');
			IE.left := 0;
			IE.top := 0;
			IE.Width := Screen.WorkAreaWidth;
			IE.Height := Screen.WorkAreaHeight;
			IE.Navigate(sWebUrl2);
			IE.Visible := true;
		finally
		end;
	end
	else
	begin
		if Not Assigned(Frm_ImageV) Or (Frm_ImageV = Nil) then Frm_ImageV := TFrm_ImageV.Create(Self);
		Frm_ImageV.SetImageURL(sWebUrl2);
		Frm_ImageV.lblTitle.Caption := '��ż����̿������';
		Frm_ImageV.Show;
	end;
end;

procedure TFrm_CMP017.edtChangeBRNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then edtDtlCallCenterCode.SetFocus;
end;

procedure TFrm_CMP017.edtDtlCallCenterCode2Enter(Sender: TObject);
begin
	lbDtlCallCenterCode2.Visible := False;
end;

procedure TFrm_CMP017.edtDtlCallCenterCode2Exit(Sender: TObject);
begin
	lbDtlCallCenterCode2.Visible := (edtDtlCallCenterCode2.Text = ''); // ������� �Է� �ܻ�.
end;

procedure TFrm_CMP017.edtDtlCallCenterCode2PropertiesChange(Sender: TObject);
begin
	lbDtlCallCenterCode2.Visible := (edtDtlCallCenterCode2.Text = ''); // ������� �Է� �ܻ�.
end;

procedure TFrm_CMP017.edtDtlCallCenterCodeEnter(Sender: TObject);
begin
	lbDtlCallCenterCode.Visible := False;
end;

procedure TFrm_CMP017.edtDtlCallCenterCodeExit(Sender: TObject);
begin
	lbDtlCallCenterCode.Visible := (edtDtlCallCenterCode.Text = ''); // ������� �Է� �ܻ�.
end;

procedure TFrm_CMP017.edtDtlCallCenterCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
Var i : Integer;
begin

	if Key = VK_BACK then
	begin
		if (Length(AEdit.Text) <= 1) then
		begin
			lst_BRCodeList.Items.Clear;
			lst_BRCodeList.Items.Assign(slBrInfo);
			
			searchBRCodelist.Clear;
			for i := 0 to lst_BRCodeList.Items.Count - 1 do
				searchBRCodelist.Add(inttostr(i));

			if lst_BRCodeList.Items.Count > 30 then
				lst_BRCodeList.Height := 300
			else
				lst_BRCodeList.Height := lst_BRCodeList.Items.Count * 18;
//      lst_BRList.Visible := False;
//      Exit;
		end;
	end else
	if Key = VK_DOWN then
	begin
		if lst_BRCodeList.Visible then lst_BRCodeList.SetFocus;
	end else
	if Key = VK_ESCAPE then
	begin
		lst_BRCodeList.Visible := False;
	end else
	if Key = VK_TAB then
	begin
		if AEdit.Tag = 1 then edtDtlCallCenterCode.SetFocus;
		if AEdit.Tag = 2 then edtDtlCallCenterCode2.SetFocus;
	end else
	if Key = VK_RETURN then
	begin
		if AEdit.Text <> '' then
		begin
			AComboCode.ItemIndex := StrToIntDef(searchBRCodelist[0], 0);
			AEdit.Text := AComboCode.Text;
			lst_BRCodeList.Visible := False;
		end;
	end;
end;

procedure TFrm_CMP017.edtDtlCallCenterCodeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var sTmp : string;
	iTmp : integer;
begin
	if TcxTextEdit(sender).Tag = 1 then 
	begin
		AEdit := edtDtlCallCenterCode;
		AComboCode := cbbDtlCallCenterCode;
		AComboName := cbbDtlCallCenter;
	end else
	if TcxTextEdit(sender).Tag = 2 then
	begin
		AEdit := edtDtlCallCenterCode2;
		AComboCode := cbbDtlCallCenterCode2;
		AComboName := cbbDtlCallCenter2;
	end;
//		if (key <> 229) then  //  20191224 �����Է±� ������ ��� �ѱ��� 229�� �Ѿ�� �׷��� ���� KHS
  begin
		if Trim(AEdit.Text) = '' then
    begin
			AEdit.SetFocus;
      Exit;
    end;

		if Length(Trim(AEdit.Text)) >= 1 then
    begin
			if lst_BRCodeList.Items.Count > 0 then
			begin
				sTmp := lst_BRCodeList.Items[0];
				iTmp := Pos(' : ', sTmp);
				if iTmp > 0 then
					sTmp := copy(sTmp, 1, iTmp-1); 
				if AEdit.Text = sTmp then exit;
			end;
			// ��������� ��ȸ..  CDS. 080818.
			lst_BRCodeList.Tag := TcxTextEdit(sender).Tag;
			if not proc_BrCodeNameList_Search then Exit;
		end;
	end;
end;

procedure TFrm_CMP017.edtDtlCallCenterCodeMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Var i : Integer;
begin
	if TcxTextEdit(sender).Tag = 1 then 
	begin
		AEdit := edtDtlCallCenterCode;
		AComboName := cbbDtlCallCenter;
		AComboCode := cbbDtlCallCenterCode;
	end else
	if TcxTextEdit(sender).Tag = 2 then
	begin
		AEdit := edtDtlCallCenterCode2;
		AComboName := cbbDtlCallCenter2;
		AComboCode := cbbDtlCallCenterCode2;
	end;

	if Trim(AEdit.Text) = '' then
	begin
		lst_BRCodeList.Items.Clear;
		lst_BRCodeList.Items.Assign(slBrInfo);

		searchBRCodelist.Clear;
		for i := 0 to lst_BRCodeList.Items.Count - 1 do
			searchBRCodelist.Add(inttostr(i));
	end else
	begin
		if not proc_BrCodeNameList_Search then Exit;
	end;
	if lst_BRCodeList.Items.Count > 30 then
		lst_BRCodeList.Height := 300
	else
		lst_BRCodeList.Height := lst_BRCodeList.Items.Count * 18;

	lst_BRCodeList.Tag := TcxTextEdit(sender).Tag;
	if lst_BRCodeList.Tag = 1 then
	begin
		lst_BRCodeList.Left := 155;
		lst_BRCodeList.Top := 263;
	end else if lst_BRCodeList.Tag = 2 then
	begin
		lst_BRCodeList.Left := 155;
		lst_BRCodeList.Top := 290;
	end;
	lst_BRCodeList.Visible := True;
end;

procedure TFrm_CMP017.edtDtlCallCenterCodePropertiesChange(Sender: TObject);
begin
	lbDtlCallCenterCode.Visible := (edtDtlCallCenterCode.Text = ''); // ������� �Է� �ܻ�.
end;

procedure TFrm_CMP017.Edt_uYekumjuKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ActiveControl <> nil) and (key = VK_RETURN) then btn_GOk.SetFocus;
end;

procedure TFrm_CMP017.BtnImageD2Click(Sender: TObject);
begin
  edtFile2.Clear;
	LblImage2.Hint := '';
end;

procedure TFrm_CMP017.CB_uBankKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ActiveControl <> nil) and (key = VK_RETURN) then
  begin
    Key := 0;
    SelectNext(TWinControl(ActiveControl), True, True);
  end;
end;

function TFrm_CMP017.CheckField: Boolean;
begin
	Result := True;

  if scb_BranchName.IndexOf(cboBrOnly.Text) < 0 then
  begin
    ShowMessage('������� �����ϴ�. ������� ��Ȯ�� �Է��ϼ���.');
    cboBrOnly.SetFocus;
  end;

	if cbKeynumber01.ItemIndex <= 0 then
	begin
		ShowMessage('��ǥ��ȣ�� ������ �ֽʽÿ�.');
		Result := False;
		Exit;
	end;

	if ( cbKeynumber01.ItemIndex = 1 ) And
		 ( Trim(edtKeyNumber.Text) = '' ) then
	begin
		ShowMessage('��û��ǥ��ȣ�� �Է��� �ֽʽÿ�.');
		Result := False;
		Exit;
	end;

	if Trim(edtFile1.Text) = '' then
	begin
		ShowMessage('�ź��� �̹����� ÷���� �ֽʽÿ�.');
		Result := False;
		Exit;
	end;

	if Trim(edtFile2.Text) = '' then
	begin
		ShowMessage('��ż����̿������ �̹����� ÷���� �ֽʽÿ�.');
		Result := False;
		Exit;
	end;
end;

procedure TFrm_CMP017.btnInsertClick(Sender: TObject);
Var Param, XmlData, ErrMsg, sHdCd, sBrCd, sKeyNumber, sFileName, sDirName,
    sfN1 , sfN2 ,              // ��ȯ���ϸ�
    sufN1, sufN2,              // ���ε���ġ�����ϸ�
		sefN1, sefN2, sMemo, sTmp : String;     // ����������ġ���ϸ�
    ErrCode, iTotSize : Integer;
    bCheck : Boolean;
begin
	if not CheckField then Exit;

  try
    cxGroupBox1.Enabled := False;
    cxGroupBox2.Enabled := False;
    try
      sDirName  := FormatDateTime('YYYYMM', Now);
      sFileName := FormatDateTime('DDHHNN', Now);
      AC_FTP_PATH := '/' + sDirName +'/';
      bCheck := False;

			sBrCd := scb_BranchCode[scb_BranchName.IndexOf(cboBrOnly.Text)];
			sHdCd := scb_HdCode[scb_BranchName.IndexOf(cboBrOnly.Text)];

      sfN1 := '';
      sfN2 := '';

      sufN1 := '';
      sufN2 := '';

      sefN1 := '';
      sefN2 := '';

      iTotSize := 0;
      if LblImage1.Hint <> '' then iTotSize := iTotSize + GetFileSize(LblImage1.Hint);
      if LblImage2.Hint <> '' then iTotSize := iTotSize + GetFileSize(LblImage2.Hint);

      if LblImage1.Hint <> '' then
      begin
        sfN1  := sBrCd + '_' + sFileName + '_1';
        sufN1 := WORKDRIVE + sfN1 + '.JPG';
        sefN1 := sDirName + sfN1;
        proc_save_image(LblImage1.Hint, sfN1);
      end;

      if LblImage2.Hint <> '' then
      begin
				sfN2  := sBrCd + '_' + sFileName + '_2';
				if gFlieType = 'IMAGE' then
				begin
					sufN2 := WORKDRIVE + sfN2 + '.JPG';
					sefN2 := sDirName + sfN2;
					proc_save_image(LblImage2.Hint, sfN2);
				end else
				if gFlieType = 'PDF' then
				begin
					sufN2 := WORKDRIVE + sfN2 + '.PDF';
					sefN2 := sDirName + sfN2 + '_PDF';
					proc_save_PDF(LblImage2.Hint, sfN2);
					
				end;
			end;

			if AccUpLoadFile(sufN1, sufN2, '', '', '', AC_FTP_PATH, '0') then
			begin
				Param := sHdCd + '��' + Trim(sBrCd);

        if cbKeynumber01.ItemIndex = 1 then sKeyNumber := '' else
        if cbKeynumber01.ItemIndex > 1 then sKeyNumber := Trim(cbKeynumber01.Text);

				sMemo := Trim(meoMemo.Text);
				sMemo := ReplaceAll(sMemo, #$D#$A, '��');
				sMemo := ReplaceAll(sMemo, #13#10, '��');
				sMemo := ReplaceAll(sMemo, #10#13, '��');

				Param := Param + '��' + sKeyNumber + '��' + Trim(edtKeyNumber.Text)
											 + '��' + sefN1 + '��' + sefN2
											 + '��' + En_Coding(sMemo);


				Param := Param + '��' + Trim(edtChangeBRName.Text);
					sTmp := edtDtlCallCenterCode.Text;
					if sTmp = '����' then sTmp := '';
				Param := Param + '��' + Trim(sTmp);
					sTmp := edtDtlCallCenterCode2.Text;
					if sTmp = '����' then sTmp := '';
				Param := Param + '��' + Trim(sTmp);

				sMemo := Trim(cxMemo1.Text);
				sMemo := ReplaceAll(sMemo, #$D#$A, '��');
				sMemo := ReplaceAll(sMemo, #13#10, '��');
				sMemo := ReplaceAll(sMemo, #10#13, '��');
				Param := Param + '��' + Trim(sMemo);

				
				if not RequestBase(GetCallable06('SETINSERTBRTELAUTH', 'MNG.SET_INSERT_BR_TEL_AUTH', Param), XmlData, ErrCode, ErrMsg) then
				begin
					GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
          Exit;
        end;
				ShowMessage('��� ��û �Ǿ����ϴ�.' + #13#10 +
										'��� ���� �Ŀ� �ݿ� �˴ϴ�.'  + #13#10 +  #13#10 
									+ '������� �������� ��쿡�� ���α׷��� ������Ͻʽÿ�');

				btnAdd.Click;
				RequestData;
      end else
      begin
        ShowMessage('÷������ UpLoad �� ���� �߻�');
      end;
    finally
      cxGroupBox1.Enabled := True;
      cxGroupBox2.Enabled := True;
    end;
  except
    ShowMessage('���� ��û �� ���� �߻�');
    cxGroupBox1.Enabled := True;
    cxGroupBox2.Enabled := True;
  end;
end;

procedure TFrm_CMP017.btnPDF2Click(Sender: TObject);
var
	f: file of Byte;
	size: Longint;
	sFileName: string;
begin
	if OpenDialog1.Execute then
	begin

		sFileName := OpenDialog1.FileName;
		AssignFile(f, sFileName);
		Reset(f);
		try
			size := FileSize(f);
		finally
			CloseFile(f);
		end;
		if size > 3000*1024 then
		begin
			GMessagebox('���� ����� �ʹ� Ů�ϴ�.(3 MByte���Ϸ� ��Ϲٶ��ϴ�.)', CDMSE);
			exit;
		end;
		edtFile2.Text := sFileName;
		LblImage2.Hint := sFileName;

		gFlieType := 'PDF';
	end;
end;

procedure TFrm_CMP017.btnUpdateClick(Sender: TObject);
Var Param, XmlData, ErrMsg, sBrCd, sKeyNumber, sFileName, sDirName,
    sfN1 , sfN2 ,              // ��ȯ���ϸ�
    sufN1, sufN2,              // ���ε���ġ�����ϸ�
    sefN1, sefN2, sMemo, sTmp : String;     // ����������ġ���ϸ�
    ErrCode, iTotSize : Integer;
    bCheck : Boolean;
begin
	if not CheckField then Exit;

	try
    cxGroupBox1.Enabled := False;
    cxGroupBox2.Enabled := False;
    try
      sDirName  := FormatDateTime('YYYYMM', Now);
      sFileName := FormatDateTime('DDHHNN', Now);
      AC_FTP_PATH := '/' + sDirName +'/';
      bCheck := False;

			sBrCd := scb_BranchCode[scb_BranchName.IndexOf(cboBrOnly.Text)];

      sfN1 := '';
      sfN2 := '';

      sufN1 := '';
      sufN2 := '';

      sefN1 := '';
      sefN2 := '';

      iTotSize := 0;
      if LblImage1.Hint <> '' then iTotSize := iTotSize + GetFileSize(LblImage1.Hint);
      if LblImage2.Hint <> '' then iTotSize := iTotSize + GetFileSize(LblImage2.Hint);

      if LblImage1.Hint <> '' then
      begin
        sfN1  := sBrCd + '_' + sFileName + '_1';
        sufN1 := WORKDRIVE + sfN1 + '.JPG';
        sefN1 := sDirName + sfN1;
        proc_save_image(LblImage1.Hint, sfN1);
      end else
      begin
        sufN1 := '';
        sefN1 := Trim(edtFile1.Text);
      end;

      if LblImage2.Hint <> '' then
      begin
        sfN2  := sBrCd + '_' + sFileName + '_2';
        sufN2 := WORKDRIVE + sfN2 + '.JPG';
        sefN2 := sDirName + sfN2;
        proc_save_image(LblImage2.Hint, sfN2);
      end else
      begin
        sufN2 := '';
        sefN2 := Trim(edtFile2.Text);
      end;

			if AccUpLoadFile(sufN1, sufN2, '', '', '', AC_FTP_PATH, '0') then
      begin
        Param := PnlTitle.Hint;

        if cbKeynumber01.ItemIndex = 1 then sKeyNumber := '' else
        if cbKeynumber01.ItemIndex > 1 then sKeyNumber := Trim(cbKeynumber01.Text);

        sMemo := Trim(meoMemo.Text);
    		sMemo := ReplaceAll(sMemo, #$D#$A, '��');
     		sMemo := ReplaceAll(sMemo, #13#10, '��');
    		sMemo := ReplaceAll(sMemo, #10#13, '��');

				Param := Param + '��' + sKeyNumber + '��' + Trim(edtKeyNumber.Text)
                       + '��' + sefN1 + '��' + sefN2
                       + '��' + En_Coding(sMemo);

				Param := Param + '��' + sBrCd;
				Param := Param + '��' + Trim(edtChangeBRName.Text);
					sTmp := edtDtlCallCenterCode.Text;
					if sTmp = '����' then sTmp := '';
				Param := Param + '��' + Trim(sTmp);
					sTmp := edtDtlCallCenterCode2.Text;
					if sTmp = '����' then sTmp := '';
				Param := Param + '��' + Trim(sTmp);

											 
				if not RequestBase(GetCallable06('SETUPDATEBRTELAUTH', 'MNG.SET_UPDATE_BR_TEL_AUTH', Param), XmlData, ErrCode, ErrMsg) then
        begin
          GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
          Exit;
        end;
				ShowMessage('���� ��û �Ǿ����ϴ�.' + #13#10 +
										'��� ���� �Ŀ� �ݿ� �˴ϴ�.'  + #13#10 +  #13#10 
									+ '������� �������� ��쿡�� ���α׷��� ������Ͻʽÿ�');
						 
				btnAdd.Click;
        RequestData;
      end else
      begin
        ShowMessage('÷������ UpLoad �� ���� �߻�');
			end;
    finally
      cxGroupBox1.Enabled := True;
      cxGroupBox2.Enabled := True;
    end;
  except
    ShowMessage('���� ��û �� ���� �߻�');
    cxGroupBox1.Enabled := True;
    cxGroupBox2.Enabled := True;
  end;
end;

procedure TFrm_CMP017.btn_GNoClick(Sender: TObject);
begin
	Pnl_Acc.Visible := False;
	cboBrOnly.Enabled := True;
	cxGroupBox1.Enabled := True;
end;

procedure TFrm_CMP017.btn_GOkClick(Sender: TObject);
Var Param, XmlData, ErrMsg, sBankCd, sFileName, sDirName,
    sfN1, sfN2, sfN3, sfN4, sfN5,                   // ��ȯ���ϸ�
    sufN1, sufN2, sufN3, sufN4, sufN5,              // ���ε���ġ�����ϸ�
    sefN1, sefN2, sefN3, sefN4, sefN5 : String;     // ����������ġ���ϸ�
    ErrCode, iTotSize : Integer;
		bCheck : Boolean;
		sMemo : String;
begin
	if CB_uBank.ItemIndex = -1 then
  begin
    ShowMessage('������ �����Ͻʽÿ�.');
		CB_uBank.SetFocus;
		cxGroupBox1.Enabled := True;
		Exit;
	end;

  if Trim(Edt_uGyeJa.Text) = '' then
  begin
    ShowMessage('���¹�ȣ�� �Է��Ͻʽÿ�.');
		Edt_uGyeJa.SetFocus;
		cxGroupBox1.Enabled := True;
    Exit;
  end;

  if Trim(Edt_uYekumju.Text) = '' then
  begin
		ShowMessage('�����ָ� �Է��Ͻʽÿ�.');
		Edt_uYekumju.SetFocus;
		cxGroupBox1.Enabled := True;
    Exit;
  end;

	sBankCd := Scb_BankCd[CB_uBank.ItemIndex];

	if ( Edt_bBank.Hint + Trim(Edt_bGyeJa.Text) + Trim(Edt_bYekumju.Text) ) =
     ( sBankCd        + Trim(Edt_uGyeJa.Text) + Trim(Edt_uYekumju.Text) ) then
  begin
		ShowMessage('������ ���·� ���� �� �� �����ϴ�.');
		cxGroupBox1.Enabled := True;
    Exit;
  end;

  if ( Edt_Path1.Hint = '0' ) And ( Edt_Path2.Hint = '0' ) And ( Edt_Path3.Hint = '0' ) And
     ( Edt_Path4.Hint = '0' ) And ( Edt_Path5.Hint = '0' ) then
  begin
		ShowMessage('����纻(������ົ), �ź����纻(���ڸ�����), ����ڵ���� ���� ��÷�η� ��û �Ұ��մϴ�.');
		cxGroupBox1.Enabled := True;
		Exit;
  end;

  try
    sDirName  := FormatDateTime('YYYYMM', Now);
    sFileName := FormatDateTime('DDHHNN', Now);
    AC_FTP_PATH := '/' + sDirName +'/';
    bCheck := False;

    sfN1 := '';
    sfN2 := '';
    sfN3 := '';
    sfN4 := '';
    sfN5 := '';

    sufN1 := '';
    sufN2 := '';
    sufN3 := '';
    sufN4 := '';
    sufN5 := '';

    sefN1 := '';
    sefN2 := '';
    sefN3 := '';
    sefN4 := '';
    sefN5 := '';

    iTotSize := 0;
    if Edt_Path1.Hint = '1' then iTotSize := iTotSize + GetFileSize(Edt_Path1.Text);
    if Edt_Path2.Hint = '1' then iTotSize := iTotSize + GetFileSize(Edt_Path2.Text);
    if Edt_Path3.Hint = '1' then iTotSize := iTotSize + GetFileSize(Edt_Path3.Text);
    if Edt_Path4.Hint = '1' then iTotSize := iTotSize + GetFileSize(Edt_Path4.Text);
    if Edt_Path5.Hint = '1' then iTotSize := iTotSize + GetFileSize(Edt_Path5.Text);

    LMDProgressNow.Position := 0;
		LMDProgressNow.Max := iTotSize;

		if Edt_Path1.Hint = '1' then
    begin
      sfN1  := Lbl_TName.Hint + '_' + sFileName + '_1';
      sufN1 := WORKDRIVE + sfN1 + '.JPG';
      sefN1 := sDirName +'_'+ sfN1;
      proc_save_image(Edt_Path1.Text, sfN1);
    end;

    if Edt_Path2.Hint = '1' then
    begin
      sfN2  := Lbl_TName.Hint + '_' + sFileName + '_2';
      sufN2 := WORKDRIVE + sfN2 + '.JPG';
      sefN2 := sDirName +'_'+ sfN2;
      proc_save_image(Edt_Path2.Text, sfN2);
    end;

    if Edt_Path3.Hint = '1' then
    begin
      sfN3  := Lbl_TName.Hint + '_' + sFileName + '_3';
      sufN3 := WORKDRIVE + sfN3 + '.JPG';
      sefN3 := sDirName +'_'+ sfN3;
      proc_save_image(Edt_Path3.Text, sfN3);
    end;

    if Edt_Path4.Hint = '1' then
    begin
      sfN4  := Lbl_TName.Hint + '_' + sFileName + '_4';
      sufN4 := WORKDRIVE + sfN4 + '.JPG';
      sefN4 := sDirName +'_'+ sfN4;
      proc_save_image(Edt_Path4.Text, sfN4);
    end;

    if Edt_Path5.Hint = '1' then
		begin
      sfN5  := Lbl_TName.Hint + '_' + sFileName + '_5';
			sufN5 := WORKDRIVE + sfN5 + '.JPG';
      sefN5 := sDirName +'_'+ sfN5;
      proc_save_image(Edt_Path5.Text, sfN5);
		end;

		if AccUpLoadFile(sufN1, sufN2, sufN3, sufN4, sufN5, AC_FTP_PATH, '1') then
		begin
			if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
        Param := GT_SEL_BRNO.HDNO + '��' + Trim(Lbl_TName.Hint)
      else
			begin
        if GT_USERIF.LV = '60' then
          Param := GT_USERIF.HD + '��' + Trim(Lbl_TName.Hint)
        else if GT_USERIF.LV = '40' then
          Param := GT_USERIF.HD + '��' + GT_USERIF.BR;
      end;

      Param := Param + '��' + Trim(Edt_bBank.Hint) + '��' + Trim(Edt_bGyeJa.Text) + '��' + Trim(Edt_bYekumju.Text)
                     + '��' + sBankCd              + '��' + Trim(Edt_uGyeJa.Text) + '��' + Trim(Edt_uYekumju.Text);

			Param  := Param + '��' + '1';   // ������º���

			Param  := Param + '��' + sefN1 + '��' + sefN2 + '��' + sefN3 + '��' + sefN4 + '��' + sefN5;

			sMemo := Trim(cxMemo2.Text);
			sMemo := ReplaceAll(sMemo, #13#10, '��');
			Param  := Param + '��' + sMemo;   // �����û

			if not RequestBase(GetCallable05('SETPAYOUTBANKMOD', 'PAY_OUT.SET_PAY_OUT_BANK_MOD', Param), XmlData, ErrCode, ErrMsg) then
			begin
				GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
				cxGroupBox1.Enabled := True;
				LMDProgressNow.Position := 0;
				Exit;
      end;
      LMDProgressNow.Position := 0;
      ShowMessage('���� ��û �Ǿ����ϴ�.' + #13#10 +
                  '��� ���� �Ŀ� ���� ���°� �ݿ� �˴ϴ�.' );

      Pnl_Acc.Visible := False;
			cboBrOnly.Enabled := True;
			cxGroupBox1.Enabled := True;
    end else
    begin
			ShowMessage('÷������ UpLoad �� ���� �߻�');
			cxGroupBox1.Enabled := True;
		end;   
	except
		ShowMessage('���� ��û �� ���� �߻�');
		cxGroupBox1.Enabled := True;
  end;
end;

procedure TFrm_CMP017.Btn_Up1Click(Sender: TObject);
begin
	proc_File_Load(Edt_Path1, 1);
end;

procedure TFrm_CMP017.Btn_Up2Click(Sender: TObject);
begin
  proc_File_Load(Edt_Path2, 2);
end;

procedure TFrm_CMP017.Btn_Up3Click(Sender: TObject);
begin
  proc_File_Load(Edt_Path3, 3);
end;

procedure TFrm_CMP017.Btn_Up4Click(Sender: TObject);
begin
  proc_File_Load(Edt_Path4, 4);
end;

procedure TFrm_CMP017.Btn_Up5Click(Sender: TObject);
begin
	proc_File_Load(Edt_Path5, 5);
end;
{
function TFrm_CMP017.AccUpLoadFile(IdFTPUP: TIdFTP; sFN1, sFN2, sFN3, sFN4,
	sFN5, sFTPPath: string): Boolean;
  function FindDirectory(TargetMake : string) : boolean;
	var
    i, j, MAX, temp : Integer;
    tempString : TStringList;
    name : string;
  begin
    tempString := TStringList.Create;
    tempString.Clear;

//    IdFTPUP.ChangeDir(TargetMake);
    IdFTPUP.List(tempString, '', False);

    for i := 0 to tempString.Count - 1 do
      if (IdFTPUP.DirectoryListing.Items[i].ItemType = ditDirectory) then
        if TargetMake = IdFTPUP.DirectoryListing.Items[i].FileName then
        begin
          Result := TRUE;
          exit;
        end;

    Result := FALSE;
  end;

  procedure FTPMakedir(TargetMake : string);
  begin
    if not FindDirectory(TargetMake) then
    try
      IdFTPUP.MakeDir(TargetMake);
    except
			cxGroupBox1.Enabled := True;
    end;
  end;
begin
	try
    Result := False;
    //������Ʈ ���� �ּ� ����.
		if IdFTPUP.Connected then
      IdFTPUP.DisconnectNotifyPeer;

    IdFTPUP.Passive := True;
    try
      IdFTPUP.Username := AC_FTP_USER;
      IdFTPUP.Password := AC_FTP_PW;
      IdFTPUP.Host := GT_CDMS_WKPIC_URL;
      IdFTPUP.Port := AC_FTP_PORT;
      IdFTPUP.ReadTimeout := 3000;
      IdFTPUP.Connect();
    except
			GMessagebox('���ε� ������ ������ �� �����ϴ�.', CDMSE);
			cxGroupBox1.Enabled := True;
      Result := False;
      exit;
    end;

    if IdFTPUP.Connected then
		begin
      try
        FTPMakedir(FormatDateTime('YYYYMM', Now));
			except
				cxGroupBox1.Enabled := True;
      end;

			IdFTPUP.ChangeDir(sFTPPath);
      Sleep(100);
			if sFN1 <> '' then IdFTPUP.Put(sFN1, ExtractFileName(sFN1));
      if sFN2 <> '' then IdFTPUP.Put(sFN2, ExtractFileName(sFN2));
			if sFN3 <> '' then IdFTPUP.Put(sFN3, ExtractFileName(sFN3));
      if sFN4 <> '' then IdFTPUP.Put(sFN4, ExtractFileName(sFN4));
      if sFN5 <> '' then IdFTPUP.Put(sFN5, ExtractFileName(sFN5));
      Sleep(50);
      Result := True;
    end;
    // ------------------------------------------------------------------------
  except on E: Exception do
    begin
			GMessagebox('���ε� ������ ������ �� �����ϴ�.', CDMSE);
			cxGroupBox1.Enabled := True;
      Assert(False, E.Message);
      Result := False;
    end;
  end;
end;
}

function TFrm_CMP017.AccUpLoadFile(sFN1, sFN2, sFN3, sFN4, sFN5, sFTPPath, sGubun: string): Boolean;
	function FindDirectory(idTmp:TIdFTP; TargetMake : string) : boolean;
  var
    i : Integer;
    tempString : TStringList;
  begin
    tempString := TStringList.Create;
		tempString.Clear;

//    IdFTPUP.ChangeDir(TargetMake);
		idTmp.List(tempString, '', False);

    for i := 0 to tempString.Count - 1 do
			if (idTmp.DirectoryListing.Items[i].ItemType = ditDirectory) then
				if TargetMake = idTmp.DirectoryListing.Items[i].FileName then
        begin
          Result := TRUE;
          exit;
        end;

    Result := FALSE;
  end;

	procedure FTPMakedir(idTmp:TIdFTP; TargetMake : string);
	begin
		if not FindDirectory(idTmp, TargetMake) then
    try
			idTmp.MakeDir(TargetMake);
    except

    end;
	end;
Var IdFTPUP_Tmp : TIdFTP;
	iErrorCnt : integer;
begin
	try
		Result := False;
		//������Ʈ ���� �ּ� ����.
		IdFTPUP_Tmp := TIdFTP.Create(nil);
		iErrorCnt := 0;
		Try
			IdFTPUP_Tmp.Passive := True;
			try
				IdFTPUP_Tmp.Username := AC_FTP_USER;      //'user_account'
				IdFTPUP_Tmp.Password := AC_FTP_PW;        //'rPwhkqusrud119!#'
				IdFTPUP_Tmp.Host := GT_CDMS_WKPIC_URL;    //'61.77.191.112'
				IdFTPUP_Tmp.Port := AC_FTP_PORT;          //21
				IdFTPUP_Tmp.ReadTimeout := 3000;

				while not IdFTPUP_Tmp.Connected do
				begin
					Try
						inc(iErrorCnt);
						IdFTPUP_Tmp.Connect();
					except on E: Exception do
						begin
							if iErrorCnt > 3 then
							begin
								GMessagebox('���ε� ������ ������ �� �����ϴ�.', CDMSE);
								Assert(False, E.Message);
								Screen.Cursor := crDefault;
								Result := False;
								exit;
							end;
							Log('CMP017.AccUpLoadFile Error :' + E.Message, LOGDATAPATHFILE);
						end;
					end;
				end;
			except
			end;	

			if IdFTPUP_Tmp.Connected then
			begin
				try
					if sGubun = '0' then
					begin
						FTPMakedir(IdFTPUP_Tmp, '/key_number/'+FormatDateTime('YYYYMM', Now));
						sFTPPath := '/key_number'+sFTPPath;
					end	
					else
					begin
						FTPMakedir(IdFTPUP_Tmp, FormatDateTime('YYYYMM', Now));
					end;
				except
				end;

				IdFTPUP_Tmp.ChangeDir(sFTPPath);
				Sleep(100);
				if sFN1 <> '' then IdFTPUP_Tmp.Put(sFN1, ExtractFileName(sFN1));
				if sFN2 <> '' then IdFTPUP_Tmp.Put(sFN2, ExtractFileName(sFN2));
				if sFN3 <> '' then IdFTPUP_Tmp.Put(sFN3, ExtractFileName(sFN3));
				if sFN4 <> '' then IdFTPUP_Tmp.Put(sFN4, ExtractFileName(sFN4));
				if sFN5 <> '' then IdFTPUP_Tmp.Put(sFN5, ExtractFileName(sFN5));
				Sleep(50);
				Result := True;
			end;
		finally
			IdFTPUP_Tmp.Free;
		end;
		// ------------------------------------------------------------------------
	except on E: Exception do
		begin
      GMessagebox('���ε� ������ ������ �� �����ϴ�.', CDMSE);
      Assert(False, E.Message);
      Result := False;
    end;
  end;
end;

procedure TFrm_CMP017.BtnAccCngClick(Sender: TObject);
begin
	if (edtChangeBRName.Hint = edtChangeBRName.Text) and (cxMemo1.Hint = cxMemo1.Text) and
		 (cbbDtlCallCenterCode.Hint = cbbDtlCallCenterCode.Text) and (cbbDtlCallCenterCode2.Hint = cbbDtlCallCenterCode2.Text) and
		 (cbbDtlCallCenter.Hint = cbbDtlCallCenter.Text) and (cbbDtlCallCenter2.Hint = cbbDtlCallCenter2.Text) then
	begin
		ShowMessage('�űԵ��-[�߰���û�׸�]�� �Է����� ������쿡��'+#13#10+'�������庯���� �Ұ����մϴ�.'+#13#10+#13#10
							+ '���� > ��ݿ�û > ���º����û ����� �̿��ϼ���');
		cboBrOnly.SetFocus;
		Exit;
	end;
	
	if ( (GT_USERIF.LV = '60') and (GT_USERIF.Master = 'y') ) Or
     ( (GT_USERIF.LV = '40') and (GT_USERIF.Master = 'y') ) then
  begin

  end else
  begin
		ShowMessage('���縶���� �� ���縶���� �����ڸ� ���º����û �Ҽ� �ֽ��ϴ�');
		Exit;
	end;

	if scb_BranchName.IndexOf(cboBrOnly.Text) < 0 then
	begin
		ShowMessage('������� �����ϴ�. ������� ��Ȯ�� �Է��ϼ���.');
		cboBrOnly.SetFocus;
		Exit;
	end;

	cxGroupBox1.Enabled := False;
	if Not proc_Branch then 
	begin
		cxGroupBox1.Enabled := True;
		exit;
	end;


	cxMemo2.Clear;
	cxMemo2.lines.Add('�����ݾ� : ');
	cxMemo2.lines.Add('�����ֱ� : ');

	CB_uBank.ItemIndex := -1;
  Edt_uGyeJa.Clear;
  Edt_uYekumju.Clear;
  LMDProgressNow.Position := 0;

  ImageS.Picture := nil;
    
  Edt_Path1.Clear;
  Edt_Path1.Hint := '0';
  Edt_Path2.Clear;
  Edt_Path2.Hint := '0';
  Edt_Path3.Clear;
  Edt_Path3.Hint := '0';
  Edt_Path4.Clear;
  Edt_Path4.Hint := '0';
  Edt_Path5.Clear;
	Edt_Path5.Hint := '0';
	
	cboBrOnly.Enabled := False;

  Pnl_Acc.Left := (Width  - Pnl_Acc.Width ) div 2;
  Pnl_Acc.Top  := (Height - Pnl_Acc.Height) div 2;
	Pnl_Acc.Visible := True;
  Pnl_Acc.BringToFront;
  CB_uBank.SetFocus;
end;

procedure TFrm_CMP017.btnAddClick(Sender: TObject);
begin
  cboBrOnly.ItemIndex := 0;
  cbKeynumber01.ItemIndex := 0;
  ClearItem;
  btnInsert.Enabled := True;
  btnUpdate.Enabled := False;
end;

procedure TFrm_CMP017.BtnImage1Click(Sender: TObject);
var
  f: file of Byte;
  size: Longint;
  sFileName: string;
begin
	if OpenPictureDialog1.Execute then
	begin

		sFileName := OpenPictureDialog1.FileName;
		AssignFile(f, sFileName);
		Reset(f);
		try
			size := FileSize(f);
		finally
			CloseFile(f);
		end;
		if size > 3000*1024 then
		begin
			GMessagebox('���� ����� �ʹ� Ů�ϴ�.(3 MByte���Ϸ� ��Ϲٶ��ϴ�.)', CDMSE);
			exit;
		end;
		edtFile1.Text := sFileName;
		LblImage1.Hint := sFileName;
	end;
end;

procedure TFrm_CMP017.BtnImage2Click(Sender: TObject);
var
	f: file of Byte;
	size: Longint;
	sFileName: string;
begin
	if OpenPictureDialog1.Execute then
	begin

		sFileName := OpenPictureDialog1.FileName;
		AssignFile(f, sFileName);
		Reset(f);
		try
			size := FileSize(f);
		finally
			CloseFile(f);
		end;
		if size > 3000*1024 then
		begin
			GMessagebox('���� ����� �ʹ� Ů�ϴ�.(3 MByte���Ϸ� ��Ϲٶ��ϴ�.)', CDMSE);
			exit;
		end;
		edtFile2.Text := sFileName;
		LblImage2.Hint := sFileName;
		
		gFlieType := 'IMAGE';
	end;
end;

procedure TFrm_CMP017.BtnImageD1Click(Sender: TObject);
begin
  edtFile1.Clear;
  LblImage1.Hint := '';
end;

procedure TFrm_CMP017.cbbDtlCallCenter2PropertiesChange(Sender: TObject);
begin
	cbbDtlCallCenterCode2.ItemIndex := cbbDtlCallCenter2.ItemIndex;
	edtDtlCallCenterCode2.Text := cbbDtlCallCenterCode2.Text;
end;

procedure TFrm_CMP017.cbbDtlCallCenterCode2PropertiesChange(Sender: TObject);
begin
	cbbDtlCallCenter2.ItemIndex := cbbDtlCallCenterCode2.ItemIndex;
end;

procedure TFrm_CMP017.cbbDtlCallCenterCodePropertiesChange(Sender: TObject);
begin
	cbbDtlCallCenter.ItemIndex := cbbDtlCallCenterCode.ItemIndex;
end;

procedure TFrm_CMP017.cbbDtlCallCenterPropertiesChange(Sender: TObject);
begin
	cbbDtlCallCenterCode.ItemIndex := cbbDtlCallCenter.ItemIndex;
	edtDtlCallCenterCode.Text := cbbDtlCallCenterCode.Text;
end;

procedure TFrm_CMP017.cbKeynumber01PropertiesChange(Sender: TObject);
begin
	if cbKeynumber01.ItemIndex = 0 then
	begin
    edtKeyNumber.Enabled := False;
    edtKeyNumber.Text := '';
  end else
	if cbKeynumber01.ItemIndex = 1 then
  begin
		edtKeyNumber.Enabled := True;
		edtKeyNumber.Text := '';
		edtKeyNumber.SetFocus;
  end else
  if cbKeynumber01.ItemIndex > 1 then
	begin
		edtKeyNumber.Enabled := False;
    edtKeyNumber.Text := cbKeynumber01.Text;
  end;
end;

procedure TFrm_CMP017.cboBrOnlyPropertiesChange(Sender: TObject);
begin
  if cboBrOnly.Tag = 0 then
    proc_BrNameSet;
end;

procedure TFrm_CMP017.cboHdOnlySPropertiesChange(Sender: TObject);
Var
  i: Integer;
begin
  try
    if cboHdOnlyS.ItemIndex < 0 then  Exit;
		scb_BrCd.Clear;
		cboBrOnlyS.Properties.Items.Clear;
    cboBrOnlyS.Properties.Items.Insert(0, '��ü');

    cboBrOnlyS.Properties.BeginUpdate;
		for i := 0 to scb_Branch.Count - 1 do
    begin
      if scb_HdNo[cboHdOnlyS.ItemIndex] = scb_HdCode[i] then
      begin
				cboBrOnlyS.Properties.Items.Add(scb_BranchName[i]);
				scb_BrCd.Add(scb_BranchCode[i]);
			end;
    end;
    cboBrOnlyS.Properties.EndUpdate;
    cboBrOnlyS.ItemIndex := 0;
  except on E: Exception do
    Assert(False, E.Message);
	end;
end;

procedure TFrm_CMP017.PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

end.

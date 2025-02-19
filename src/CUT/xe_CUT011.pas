unit xe_CUT011;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, xe_GNL,
  Dialogs, MSXML2_TLB, xe_structure, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, cxControls, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxTextEdit, cxDropDownEdit, cxLabel,
  cxMemo, cxGridLevel, cxGridCustomTableView, cxGridTableView,  IniFiles,
  cxGridBandedTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  cxRadioGroup, cxCheckBox, cxMaskEdit, cxGroupBox, cxButtons, Vcl.ExtCtrls,
	dxSkinsCore, dxSkinscxPCPainter, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, cxCurrencyEdit,
  dxSkinMetropolisDark, dxSkinOffice2007Silver, dxScrollbarAnnotations;

type
  TFrm_CUT011 = class(TForm)
    Panel1: TPanel;
    cboCuLevel: TcxComboBox;
		cxLabel17: TcxLabel;
    cxLabel5: TcxLabel;
		rdoCuGb1: TcxRadioButton;
		rdoCuGb2: TcxRadioButton;
    cxLabel1: TcxLabel;
    rdoCuGb3: TcxRadioButton;
    cxLabel2: TcxLabel;
		edtCuName: TcxTextEdit;
    cxLblStart: TcxLabel;
    meoStartAreaCUT: TcxMemo;
    cxtStartXval: TcxTextEdit;
    cxtStartYval: TcxTextEdit;
    cxtStartAreaDetail: TcxTextEdit;
    lblStartAreaName: TcxLabel;
    cxLabel4: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxLblEnd: TcxLabel;
    meoEndAreaCUT: TcxMemo;
    cxtEndXval: TcxTextEdit;
    cxtEndYval: TcxTextEdit;
    cxtEndAreaDetail: TcxTextEdit;
    lblEndAreaName: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel18: TcxLabel;
    btnSave: TcxButton;
    btnInit: TcxButton;
    cboBranch: TcxComboBox;
    cxtSA2: TcxTextEdit;
    cxtSA3: TcxTextEdit;
    cxtEd2: TcxTextEdit;
    cxtEd3: TcxTextEdit;
    dtpResvDate: TcxLabel;
    RbButton23: TcxButton;
    RbButton24: TcxButton;
    lbl1: TcxLabel;
    edtOKC1: TcxTextEdit;
    edtOKC2: TcxTextEdit;
    edtOKC3: TcxTextEdit;
    edtOKC4: TcxTextEdit;
    chkBrTelYN: TcxCheckBox;
    pmCustSMS: TPopupMenu;
    nm_CustSMS: TMenuItem;
    btnBefore: TcxButton;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel34: TcxLabel;
    cxLabel35: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel32: TcxLabel;
    cxLabel33: TcxLabel;
    pnlTitle: TPanel;
    BtnClose: TcxButton;
    clbCuSeq: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    Panel2: TPanel;
    cboBubinCode: TcxComboBox;
    cxGroupBox2: TcxGroupBox;
    cxtEd1: TcxTextEdit;
    cxtSA1: TcxTextEdit;
    cxLabel19: TcxLabel;
    edtCuEmail: TcxTextEdit;
    cxLabelWkBrNo: TcxLabel;
    edtCuEmail_Potal: TcxTextEdit;
    cboEmail: TcxComboBox;
    cxGroupBox3: TcxGroupBox;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxCustTel: TcxGridBandedTableView;
    cxCustTelColumn1: TcxGridBandedColumn;
    cxCustTelColumn2: TcxGridBandedColumn;
    cxCustTelColumn3: TcxGridBandedColumn;
    cxCustTelColumn4: TcxGridBandedColumn;
    cxCustTelColumn5: TcxGridBandedColumn;
    cxCustTelColumn6: TcxGridBandedColumn;
    Shape8: TShape;
    Shape1: TShape;
    Shape2: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
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
    cxLblActive: TLabel;
    Shape28: TShape;
    cxLabel36: TcxLabel;
    cbOutBound: TcxComboBox;
    chkStickYn: TcxCheckBox;
    btnBlockWKList: TcxButton;
    btnCallBell: TcxButton;
    Shape29: TShape;
    cxLabel37: TcxLabel;
    cb_CarType: TcxComboBox;
    Shape30: TShape;
    Shape31: TShape;
    chkMileSmsYn: TcxCheckBox;
    Shape32: TShape;
    chkAppUseYn: TcxCheckBox;
    cxGroupBox4: TcxGroupBox;
    Shape3: TShape;
    cxGroupBox5: TcxGroupBox;
    cxLabel38: TcxLabel;
    cedtLimitCountA: TcxCurrencyEdit;
    cedtLimitAmtA: TcxCurrencyEdit;
    cxLabel39: TcxLabel;
    cedtLimitCountB: TcxCurrencyEdit;
    cedtLimitAmtB: TcxCurrencyEdit;
    cxLabel40: TcxLabel;
    cedtLimitCountC: TcxCurrencyEdit;
    cedtLimitAmtC: TcxCurrencyEdit;
    cboCuBubin: TcxComboBox;
    cxLabel3: TcxLabel;
    edt_CbPositionName: TcxTextEdit;
    cxLabel41: TcxLabel;
    Shape33: TShape;
    chk_RejectBaechaSmsYn: TcxCheckBox;
    cxGroupBox6: TcxGroupBox;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel42: TcxLabel;
    edt_CardMemo: TcxTextEdit;
    meoCuCCMemo: TcxMemo;
    meoCuWorMemo: TcxMemo;
    chkMemoDisplay: TcxCheckBox;
    cxLabel43: TcxLabel;
    cxLabel44: TcxLabel;
    cxLabel45: TcxLabel;
    cxLabel46: TcxLabel;
    cxLabel47: TcxLabel;
    cxLabel48: TcxLabel;
    grpAIReCall: TcxGroupBox;
    rbAIReCallD: TcxRadioButton;
    rbAIReCallY: TcxRadioButton;
    rbAIReCallN: TcxRadioButton;
    cxLabel49: TcxLabel;
    img2: TImage;
    procedure FormCreate(Sender: TObject);
    procedure rdoCuGb3Click(Sender: TObject);
    procedure RbButton23Click(Sender: TObject);
		procedure RbButton24Click(Sender: TObject);
    procedure cboBranchClick(Sender: TObject);
    procedure btnInitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure meoStartAreaCUTExit(Sender: TObject);
    procedure meoStartAreaCUTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meoStartAreaCUTKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure chkBrTelYNClick(Sender: TObject);
    procedure cboBranchPropertiesChange(Sender: TObject);
    procedure nm_CustSMSClick(Sender: TObject);
    procedure meoEndAreaCUTExit(Sender: TObject);
    procedure meoEndAreaCUTKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meoEndAreaCUTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxtStartXvalPropertiesChange(Sender: TObject);
    procedure btnBeforeClick(Sender: TObject);
    procedure cboEmailPropertiesChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxCustTelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxCustTelEditKeyPress(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnBlockWKListClick(Sender: TObject);
    procedure btnCallBellClick(Sender: TObject);
    procedure edtCuNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure img2Click(Sender: TObject);

	private
    { Private declarations }
    ls_ActiveControl: string;
    FCustBrTelYN: string;
    CustGroup : TCustGroup;

    igT11Top, igT11Left : Integer;

    // 법인정보 셋팅
		procedure proc_bubin_init;
    // 고객 조회
    procedure proc_Cust_Search;
		procedure SetCustBrTelYN(const Value: string);
    procedure SetCustLevelData;
    procedure DefaultCustLevel;
    function GetCustLevelSeq: string;
    procedure SetCustLevelSeq(ASeq: string);
		function proc_AIOB_CtrlYN : string;
	public
    { Public declarations }
    J30ShowS, J30ShowE : Boolean;      //접수, 수정, 문의 에 따른 조회창 띄울지 여부값
    lcsSta1, lcsSta2, lcsSta3: string; // 출1, 출2, 출3
    lcsEnd1, lcsEnd2, lcsEnd3: string; // 도1, 도2, 도3

		
		pCUT011Dock : TUNDOCKMNG;

		property CustBrTelYN: string read FCustBrTelYN write SetCustBrTelYN;
    // 창초기화
		procedure proc_cust_Intit;
		// 접수화면의 기본 컨트롤을 초기화 한다.
		procedure FControlInitial(bBrNoSetType: boolean = False);
    // 선택된 지사정보에서 지사코드호를 추출 한다.
    function Proc_BRNOSearch: string;
    // 선택된 지사정보에서 대표번호를 추출 한다.
		function Proc_MainKeyNumberSearch: string;
    // 선택된 지사정보에서 본사코드를 추출 한다.
    function Proc_HDNOSearch: string;
    // 전문 결과처리
		procedure proc_recieve(ls_rxxml: Widestring);
    // 출발지, 도착지 컨트롤에서 KeyDown 이벤트시에 호출됨.
    procedure Proc_AreaSearchKDown(iType: Integer);
    // 고객번호 중복체크(0 : 신규, 1 : 수정)
    function func_tel_check(iType: Integer): Boolean;
    // 고객저장(0 : 추가, 1 : 수정, 2 : 삭제, 3 : 법인정보만수정)
    procedure proc_save_customer(iType: Integer);
		procedure proc_search_brKeyNum(sBrNo, sKeyNum: string);

		procedure Hide_Panel(Panel: string; Showhide : integer);
    procedure Grid_Clear(Panel: string; Grid: Integer);
    procedure lcs_Clear(Panel: string);
    procedure Proc_AreaSearchKDown_Added(Key: Word);

    procedure SetStartAreaMap(const ASido, AGugun, ADong, ADetail, AX, AY: string);
    procedure SetEndAreaMap(const ASido, AGugun, ADong, ADetail, AX, AY: string);

    procedure Proc_Jon012Show;
	end;

var
  Frm_CUT011: TFrm_CUT011;

implementation

{$R *.dfm}

uses
  StrUtils, xe_Dm, xe_Func, xe_Msg, xe_xml, xe_gnl2, Main,
  xe_JON012, xe_JON30, xe_Lib, xe_Query, xe_SMS01, xe_Flash, xe_CUT014, xe_BTN, xe_BTN01,
  xe_AIC10, xe_packet;

procedure TFrm_CUT011.FormCreate(Sender: TObject);
var
  i: integer;
  EnvFile: TIniFile;
begin
  EnvFile := TIniFile.Create(ENVPATHFILE);
  try
    Self.Left  := EnvFile.ReadInteger('WinPos', 'Cut011Left', 0);
    Self.Top   := EnvFile.ReadInteger('WinPos', 'Cut011Top', 0);

    igT11Top  := Self.Top;
    igT11Left := Self.Left;

    if Self.Left < 0 then Self.Left := 0;
    if Self.Top < 0 then Self.Top := 0;
  finally
    EnvFile.Free;
  end;

  // 고객 검색 그리드
  cxCustTel.DataController.SetRecordCount(0);
  for i := 0 to cxCustTel.ColumnCount - 1 do
    cxCustTel.Columns[i].DataBinding.ValueType := 'String';

  cxCustTel.OptionsView.NoDataToDisplayInfoText := '';

  // 접수화면의 기본 컨트롤을 초기화 한다.
  // False : 컨트롤초기화 안함. True : 지사코드 재로드 한다.
  FControlInitial(True);
end;

procedure TFrm_CUT011.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := False;
end;

procedure TFrm_CUT011.FormDestroy(Sender: TObject);
begin
  Frm_CUT011 := Nil;
end;

procedure TFrm_CUT011.FormShow(Sender: TObject);
begin
  fSetFont(Frm_CUT011, GS_FONTNAME);
	Self.Top := igT11Top;
  Self.Left := igT11Left;
end;

// 접수화면의 기본 컨트롤을 초기화 한다.
procedure TFrm_CUT011.FControlInitial(bBrNoSetType: boolean = False);
var
  i : Integer;
begin
	FCustBrTelYN := '';
	btnCallBell.visible := False;
	
	edtCuName.Text := ''; // 고객명
  cboCuBubin.Properties.Items.Clear;
	cboCuBubin.ItemIndex := -1; // 법인명(법인정보)
	cboBubinCode.Properties.Items.Clear;
	edt_CbPositionName.Text := '';//직책
	meoStartAreaCUT.Clear; // 출발지 추가정보
  cxtStartXval.Text := ''; // 출발지 X좌표
  cxtStartYval.Text := ''; // 출발지 Y좌표
  lblStartAreaName.Caption := ''; // 출발지 주소
  cxtStartAreaDetail.Text := ''; // 출발지 상세지명(로컬저장용)
  meoEndAreaCUT.Clear; // 도착지 추가정보
	cxtEndXval.Text := ''; // 도착지 X좌표
  cxtEndYval.Text := ''; // 도착지 Y좌표
  lblEndAreaName.Caption := ''; // 도착지 주소
  cxtEndAreaDetail.Text := ''; // 도착지 상세지명(로컬저장용)
  cxTextEdit2.Text := '';

  edtOKC1.Clear;
  edtOKC2.Clear;
  edtOKC3.Clear;
  edtOKC4.Clear;

  meoCuCCMemo.Text := '';
  meoCuWorMemo.Text := '';
  meoStartAreaCUT.Text := '';
  lblStartAreaName.Caption := '';
  cxtStartAreaDetail.Text := '';
  cxtStartXval.Text := '';
  cxtStartYval.Text := '';
  meoEndAreaCUT.Text := '';
  lblEndAreaName.Caption := '';
  cxtEndXval.Text := '';
  cxtEndYval.Text := '';
  cxtEndAreaDetail.Text := '';

  dtpResvDate.Caption := '';
  cxLabel7.Caption := '';
  cxLabel10.Caption := '';
  cxLabel12.Caption := '';
  cxLabel16.Caption := '';
  rdoCuGb1.Checked := True;
  cboBranch.Enabled := True;
  cboBranch.Properties.ReadOnly := False;
  clbCuSeq.Caption := '';

  cxCustTel.DataController.SetRecordCount(0);

	edtCuEmail.Text := '';
	edtCuEmail_Potal.text := '';
	cboEmail.ItemIndex := 0;

  lcsSta1 := '';
  lcsSta2 := '';
	lcsSta3 := ''; // 출1/시도, 출2/시군구, 출3/읍면동
  lcsEnd1 := '';
  lcsEnd2 := '';
	lcsEnd3 := ''; // 도1/시도, 도2/시군구, 도3/읍면동

	if Self.Tag in [49, 59, 69, 79] then //접수창에서 띄운경우
	begin
		if cboBranch.Properties.Items.Count <> scb_DsBranchCode.Count then
		begin
			cboBranch.Tag := 10;
			// 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
			cboBranch.Properties.Items.Clear; // 지사명
			// 지사리스트를 담는다.
			for i := 0 to scb_DsBranchCode.Count - 1 do //scb_FamilyDsBranchCode
			begin
				// 본사코드   // 지사코드   // 지사명   // 대표번호
				if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
				begin
					if pCUT011Dock.HDNO = scb_HeadCode[i] then
						cboBranch.Properties.Items.Add(scb_HeadCode[i] + '.' +
							scb_DsBranchCode[i] + ': ' + scb_DsBranchName[i] + '[' +
							scb_KeyNumber[i] + ']');
				end else
					cboBranch.Properties.Items.Add(scb_HeadCode[i] + '.' +
						scb_DsBranchCode[i] + ': ' + scb_DsBranchName[i] + '[' +
						scb_KeyNumber[i] + ']');
			end;
			if cboBranch.Properties.Items.Count > 0 then
				cboBranch.ItemIndex := 0;
			cboBranch.Tag := 0;
			// 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.

			cxLabel21.Caption := '';
			cxLabel23.Caption := '';
			cxLabel25.Caption := '';
			cxLabel27.Caption := '';
			cxLabel29.Caption := '';
			cxLabel31.Caption := '';
			cxLabel33.Caption := '';
			cxLabel35.Caption := '';
		end;
	
	end	else
	begin
		if Not pCUT011Dock.bUnDock then pCUT011Dock.HDNO  := GT_SEL_BRNO.HDNO;

		if cboBranch.Properties.Items.Count <> scb_DsBranchCode.Count then
		begin
			cboBranch.Tag := 10;
			// 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
			cboBranch.Properties.Items.Clear; // 지사명
			// 지사리스트를 담는다.
			for i := 0 to scb_DsBranchCode.Count - 1 do //scb_FamilyDsBranchCode
			begin
				// 본사코드   // 지사코드   // 지사명   // 대표번호
				if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
				begin
					if pCUT011Dock.HDNO = scb_HeadCode[i] then
						cboBranch.Properties.Items.Add(scb_HeadCode[i] + '.' +
							scb_DsBranchCode[i] + ': ' + scb_DsBranchName[i] + '[' +
							scb_KeyNumber[i] + ']');
				end else
					cboBranch.Properties.Items.Add(scb_HeadCode[i] + '.' +
						scb_DsBranchCode[i] + ': ' + scb_DsBranchName[i] + '[' +
						scb_KeyNumber[i] + ']');
			end;
			if cboBranch.Properties.Items.Count > 0 then
				cboBranch.ItemIndex := 0;
			cboBranch.Tag := 0;
			// 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.

			cxLabel21.Caption := '';
			cxLabel23.Caption := '';
			cxLabel25.Caption := '';
			cxLabel27.Caption := '';
			cxLabel29.Caption := '';
			cxLabel31.Caption := '';
			cxLabel33.Caption := '';
			cxLabel35.Caption := '';
		end;
	end;
	edt_CardMemo.Text := '';
  if TCK_USER_PER.JON_CUSTMEMO2 = '1' then
    edt_CardMemo.Enabled := True
  else
		edt_CardMemo.Enabled := False;

	cb_CarType.ItemIndex := 1; //2종이 기본값	
	rbAIReCallD.Checked := True;
	grpAIReCall.Enabled := False;
  img2.Visible := Not grpAIReCall.Enabled;
end;

procedure TFrm_CUT011.rdoCuGb3Click(Sender: TObject);
begin
	cboCuBubin.Enabled := (rdoCuGb3.Checked) And ( TCK_USER_PER.JON_BUBININFO <> '1');
	edt_CbPositionName.Enabled := cboCuBubin.Enabled ;
end;

procedure TFrm_CUT011.RbButton23Click(Sender: TObject);
Var iRow : Integer;
begin
	if (cxCustTel.DataController.RecordCount <= 15) then
	begin
    iRow := cxCustTel.DataController.AppendRecord;
		cxCustTel.DataController.Values[iRow, 0] := '';
		cxCustTel.DataController.Values[iRow, 1] := '수신';
    cxCustTel.DataController.Values[iRow, 2] := '';
    cxCustTel.DataController.Values[iRow, 3] := '해제';
    cxCustTel.DataController.SetFocus;
  end;
end;

procedure TFrm_CUT011.RbButton24Click(Sender: TObject);
Var iSelRow : Integer;
begin
  iSelRow := cxCustTel.DataController.FocusedRecordIndex;
  if iSelRow = -1 then Exit;

  if ( cxCustTel.DataController.Values[iSelRow, 0] <> '' ) And
     ( cxCustTel.DataController.Values[iSelRow, 0] <> Null ) then
  begin
    if GMessagebox(cxCustTel.DataController.Values[iSelRow, 0] + ' 번호를 삭제하시겠습니까?', CDMSQ) = idOK then
      cxCustTel.DataController.DeleteRecord(iSelRow);
  end else
  begin
    cxCustTel.DataController.DeleteRecord(iSelRow);
  end;
end;

procedure TFrm_CUT011.proc_bubin_init;
var
  i: Integer;
  sBrNo, sKeyNum: string;
begin
  sBrNo := Proc_BRNOSearch;
	sKeyNum := Proc_MainKeyNumberSearch;
	cboCuBubin.Properties.Items.Clear;
  cboBubinCode.Properties.Items.Clear;
  cboCuBubin.Properties.Items.Add('선택');
  cboBubinCode.Properties.Items.Add('');
  btnBlockWKList.Visible := False;
  for i := 0 to GT_BUBIN_INFO.brNo_KeyNum.Count - 1 do
  begin
    if GT_BUBIN_INFO.brNo_KeyNum.Strings[i] = Rpad(sbrNo, 5, ' ') + Rpad(StringReplace(sKeyNum, '-', '', [rfReplaceAll]), 15, ' ') then
    begin
      cboCuBubin.Properties.Items.Add(Trim(GT_BUBIN_INFO.cbCorpNm.Strings[i]) + ' / ' +
                                      Trim(GT_BUBIN_INFO.cbDeptNm.Strings[i]));
      cboBubinCode.Properties.Items.Add(GT_BUBIN_INFO.cbcode.Strings[i]);
    end;
  end;
  if rdoCuGb3.Checked then
    cboCuBubin.ItemIndex := 0
  else
    cboCuBubin.ItemIndex := -1;
end;

function TFrm_CUT011.Proc_BRNOSearch: string;
begin
  Result := Copy(cboBranch.Text, Pos('.', cboBranch.Text) + 1, Pos(':',
    cboBranch.Text) - (Pos('.', cboBranch.Text) + 1)); //지사코드
end;

function TFrm_CUT011.Proc_MainKeyNumberSearch: string;
var
  iPos2: Integer;
  sKeyNumber, sTmp: string;
begin
	Result := '';
  sTmp := cboBranch.Text;
  if sTmp = '' then Exit;
    
  while (True) do
  begin
    iPos2 := Pos('[', Copy(sTmp, 1, Length(sTmp)));
    if iPos2 = 0 then
    begin
      sKeyNumber := Copy(sTmp, 1, Length(sTmp) - 1);
      Break;
    end;
    sTmp := Copy(sTmp, iPos2 + 1, Length(sTmp));
  end;
  Result := sKeyNumber;
end;

procedure TFrm_CUT011.proc_Cust_Search;
var
  ls_TxLoad, sNode, sHdNo, sBrNo, sKeyNumber: string;
  ls_rxxml: WideString;
  xdom: msDOMDocument;
  lst_Node: IXMLDOMNodeList;
  slReceive: TStringList;
  rv_str: string;
	ErrCode: integer;
begin
	if StrToIntDef(clbCuSeq.Caption, -1) = -1 then
    Exit;

	ls_rxxml := GTx_UnitXmlLoad('C034N1.XML');
	xdom := ComsDOMDocument.Create;
  try
		if (not xdom.loadXML(ls_rxxml)) then
    begin
			Screen.Cursor := crDefault;
	  	ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
      Exit;
	  end;
	  sNode := '/cdms/header/UserID';
    lst_Node := xdom.documentElement.selectNodes(sNode);
		lst_Node.item[0].attributes.getNamedItem('Value').Text := En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
	  lst_Node := xdom.documentElement.selectNodes(sNode);
	  lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
	  lst_Node.item[0].attributes.getNamedItem('Value').Text := 'CUT111';
    sNode := '/cdms/Service/Customers';
    lst_Node := xdom.documentElement.selectNodes(sNode);

    sHdNo := Proc_HDNOSearch;
    sBrNo := Proc_BRNOSearch;
    sKeyNumber := Proc_MainKeyNumberSearch;

	  lst_Node.item[0].attributes.getNamedItem('action').Text := 'SELECT';
	  lst_Node.item[0].attributes.getNamedItem('CuSeq').Text := clbCuSeq.Caption;
	  lst_Node.item[0].attributes.getNamedItem('HdNo').Text := sHdNo;
    lst_Node.item[0].attributes.getNamedItem('BrNo').Text := sBrNo;
    lst_Node.item[0].attributes.getNamedItem('KeyNumber').Text := sKeyNumber;
    ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;

	  ls_TxLoad := StringReplace(ls_TxLoad, 'InDate=""', 'InDate="" BrTelYN="" CuEmail=""', [rfReplaceAll]);
	  ls_TxLoad := StringReplace(ls_TxLoad, 'CuSmsYN=""', 'CuSmsYN="" CuSmsMiDate="" CuVirtualYn="" CuVirtualTel="" CuVirtualDate=""', [rfReplaceAll]);
	  ls_TxLoad := StringReplace(ls_TxLoad, 'InDate=""', 'InDate="" AppCode="" AppLastRegDate="" AppLastDelDate="" AppLastFinishDate=""', [rfReplaceAll]);
	  ls_TxLoad := StringReplace(ls_TxLoad, 'AppLastFinishDate=""', 'AppLastFinishDate="" AppCuArea="" AppTermModel="" AppTermOS="" AppDelYn="" CuMemo=""', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'AppDelYn=""', 'AppDelYn="" AppGroup="" AppVersion=""' , [rfReplaceAll]);

		slReceive := TStringList.Create;
	  try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
				if rv_str <> '' then
				begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
					proc_recieve(ls_rxxml);
	  		end;
      end;
    finally
      Frm_Flash.Hide;
      FreeAndNil(slReceive);
    end;
  finally
    xdom := Nil;
  end;
end;

function TFrm_CUT011.Proc_HDNOSearch: string;
begin
  Result := Copy(cboBranch.Text, 1, Pos('.', cboBranch.Text) - 1); // 본사코드
end;

procedure TFrm_CUT011.proc_recieve(ls_rxxml: Widestring);
var
  xdom: msDomDocument;
  ls_ClientKey, ls_Msg_Err, sTemp: string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  i, iRow, iEndCnt, iCancelCnt, iMileage, iPrizeCnt, ia: Integer;
	sBrNo, sCbCode, sMsg, OkCashBack, sEmail, sEmailPotal, sContent, sCarType, sAIOB, sDisplayMemo: string;
	sTmp : string ;
  bLimitUseYn : Boolean;
begin
	try
		xdom := ComsDomDocument.Create;
    try
      if not xdom.loadXML(ls_rxxml) then Exit;

      lcsActiveEdit := 'meoEndAreaCUT'; // 활성화 된 출발지, 도착지 Edit 구분을 저장.
			ls_ClientKey := GetXmlClientKey(ls_rxxml);
      ls_ClientKey := Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5);
      case StrToIntDef(ls_ClientKey, 1) of
        1:
					begin
            ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
            sMsg := GetXmlErrorMsg(ls_rxxml);
            if ('0000' <> ls_Msg_Err) then
            begin
              GMessagebox(sMsg, CDMSE);
              Exit;
            end;
		  			lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Customers/Customer');

						//직책, 배차문자수신거부
						edt_CbPositionName.Text := lst_Result.item[0].attributes.getNamedItem('CbPositionName').Text;
//						sTmp := lst_Result.item[0].attributes.getNamedItem('RejectBaechaSmsYn').Text;
//						if sTmp = 'y' then chk_RejectBaechaSmsYn.Checked := True
//													else chk_RejectBaechaSmsYn.Checked := False;

						//AI 아웃바운드 옵션 배차지연콜 사용여부 20190716 KHS
  					sTmp := Proc_MainKeyNumberSearch;
						if not GetAIOBKeyNumberYN(sTmp) then   //고객이 선택되어 있어도 지사의 대표번호에서 사용안하면 체크해제
						begin
               grpAIReCall.Enabled := False;
						end else
            begin
  						sAIOB := lst_Result.item[0].attributes.getNamedItem('AiOutOption').Text;
  						if sAIOB = 'y' then rbAIReCallY.Checked := True else
  						if sAIOB = 'n' then rbAIReCallN.Checked := True
                             else rbAIReCallD.Checked := True
            end;
            img2.Visible := Not grpAIReCall.Enabled;

						if Assigned(lst_Result.item[0].attributes.getNamedItem('MemoDisplayYn')) then     // 상담메모자동표시
            begin
              sDisplayMemo := lst_Result.item[0].attributes.getNamedItem('MemoDisplayYn').Text;
              if sDisplayMemo = 'y' then chkMemoDisplay.Checked := True
                                    else chkMemoDisplay.Checked := False;
            end;

						sCarType := lst_Result.item[0].attributes.getNamedItem('CarType').Text;
						if sCarType = '1' then cb_CarType.ItemIndex := 0 else cb_CarType.ItemIndex := 1;

						edtCuName.Text := lst_Result.item[0].attributes.getNamedItem('CmpNm').Text;

            case StrToIntDef(lst_Result.item[0].attributes.getNamedItem('CuType').Text, 0) of
		  				0: rdoCuGb1.Checked := True;
							1: rdoCuGb2.Checked := True;
							3: rdoCuGb3.Checked := True;
		  			end;

            SetCustLevelSeq(lst_Result.item[0].attributes.getNamedItem('CuLevelCd').Text);
            sCbCode := lst_Result.item[0].attributes.getNamedItem('CbCode').Text;
            if (sCbCode <> '') then
            begin
              sBrNo := Proc_BRNOSearch;
              iRow := cboBubinCode.Properties.Items.IndexOf(sCbCode + ',' + sBrNo);
							if iRow > 0 then
                cboCuBubin.ItemIndex := iRow;
            end;
            sTemp := lst_Result.item[0].attributes.getNamedItem('CmpNo').Text;
            if Length(sTemp) = 13 then
							sTemp := Copy(sTemp, 1, 6) + '-' + Copy(sTemp, 7, 7);
            cxTextEdit2.Text := sTemp;

            OkCashBack := lst_Result.item[0].attributes.getNamedItem('CBNo').text;
            if Length(OkCashBack) = 16 then
            begin
              edtOKC1.Text := Copy(OkCashBack, 1, 4);
              edtOKC2.Text := Copy(OkCashBack, 5, 4);
              edtOKC3.Text := Copy(OkCashBack, 9, 4);
              edtOKC4.Text := Copy(OkCashBack, 13, 4);
						end else
            begin
              edtOKC1.Clear;
              edtOKC2.Clear;
              edtOKC3.Clear;
              edtOKC4.Clear;
            end;

            // 고객상황실설정
            if Assigned(lst_Result.item[0].attributes.getNamedItem('BrTelYN')) then
							CustBrTelYN := lst_Result.item[0].attributes.getNamedItem('BrTelYN').Text;
            chkBrTelYN.Checked := (CustBrTelYN = 'y');

            sTemp := lst_Result.item[0].attributes.getNamedItem('InDate').Text;
            if sTemp <> '' then
            begin
              sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2);
              dtpResvDate.Caption := sTemp;
            end else
              dtpResvDate.Caption := '';
            iEndCnt := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('CuEndCnt').Text, 0);
            iCancelCnt := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('CuCancelCnt').Text, 0);
						iMileage := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('CuMileage').Text, 0);
            iPrizeCnt := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('CuPrizeCnt').text, 0);
            cxLabel7.Caption := IntToStr(iEndCnt) + ' / ' + IntToStr(iCancelCnt);
            sTemp := lst_Result.item[0].attributes.getNamedItem('CuLastEnd').Text;
						if sTemp <> '' then
            begin
              sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2);
		  				cxLabel10.Caption := sTemp;
            end else
              cxLabel10.Caption := '';
            cxLabel12.Caption := FormatFloat('#,##0', StrToFloatDef(IntToStr(iMileage), 0.0));
            cxLabel16.Caption := IntToStr(iPrizeCnt);

		  			sContent := StringReplace(lst_Result.item[0].attributes.getNamedItem('CuInfo').Text, '│', '|', [rfReplaceAll]);
		  			sContent := StringReplace(sContent, '|', '¶',  [rfReplaceAll]);
            if Trim(sContent) <> '' then
            begin
         			ls_Rcrd := TStringList.Create;
              try
          			GetTextSeperationEx2('¶', sContent, ls_Rcrd);
          			for ia := 0 to ls_Rcrd.Count - 1 do
          			begin
                  meoCuCCMemo.Lines.Add(ls_Rcrd[ia]);
          			end;
              finally
                FreeAndNil(ls_Rcrd);
              end;
            end;

		  			sContent := StringReplace(lst_Result.item[0].attributes.getNamedItem('CuPdaInfo').Text, '│', '|', [rfReplaceAll]);
		  			sContent := StringReplace(sContent, '|', '¶',  [rfReplaceAll]);
            if Trim(sContent) <> '' then
            begin
         			ls_Rcrd := TStringList.Create;
              try
          			GetTextSeperationEx2('¶', sContent, ls_Rcrd);
          			for ia := 0 to ls_Rcrd.Count - 1 do
          			begin
                  meoCuWorMemo.Lines.Add(ls_Rcrd[ia]);
          			end;
              finally
                FreeAndNil(ls_Rcrd);
              end;
            end;
            edt_CardMemo.Text := lst_Result.item[0].attributes.getNamedItem('CuMemo').Text;
            meoStartAreaCUT.Text := lst_Result.item[0].attributes.getNamedItem('CuArea5').Text;
            // 출1/시도, 출2/시군구, 출3/읍면동
						lcsSta1 := lst_Result.item[0].attributes.getNamedItem('CuArea').Text;
            lcsSta2 := lst_Result.item[0].attributes.getNamedItem('CuArea2').Text;
						lcsSta3 := lst_Result.item[0].attributes.getNamedItem('CuArea3').Text;

            cxtSA1.Text := lcsSta1;
						cxtSA2.Text := lcsSta2;
            cxtSA3.Text := lcsSta3;

						lblStartAreaName.Caption := lcsSta1 + ' ' + lcsSta2 + ' ' + lcsSta3;
						cxtStartAreaDetail.Text := lst_Result.item[0].attributes.getNamedItem('CuArea4').Text;
						cxtStartXval.Text := lst_Result.item[0].attributes.getNamedItem('CuMapX').Text;
            cxtStartYval.Text := lst_Result.item[0].attributes.getNamedItem('CuMapY').Text;
            meoEndAreaCUT.Text := lst_Result.item[0].attributes.getNamedItem('CuEdArea5').Text;
            // 도1/시도, 도2/시군구, 도3/읍면동
            lcsEnd1 := lst_Result.item[0].attributes.getNamedItem('CuEdArea').Text;
		  			lcsEnd2 := lst_Result.item[0].attributes.getNamedItem('CuEdArea2').Text;
            lcsEnd3 := lst_Result.item[0].attributes.getNamedItem('CuEdArea3').Text;

            cxtEd1.Text := lcsEnd1;
            cxtEd2.Text := lcsEnd2;
            cxtEd3.Text := lcsEnd3;

            lblEndAreaName.Caption := lcsEnd1 + ' ' + lcsEnd2 + ' ' + lcsEnd3;
		  			cxtEndAreaDetail.Text := lst_Result.item[0].attributes.getNamedItem('CuEdArea4').Text;
		  			cxtEndXval.Text := lst_Result.item[0].attributes.getNamedItem('CuEdMapX').Text;
		  			cxtEndYval.Text := lst_Result.item[0].attributes.getNamedItem('CuEdMapY').Text;
		  			sEmail := lst_Result.item[0].attributes.getNamedItem('CuEmail').Text;
		  			if sEmail <> '' then
		  			begin
		  				edtCuEmail.Text := LeftStr(sEmail, Pos('@', sEmail) - 1);
		  				sEmailPotal := copy(sEmail, length(edtCuEmail.Text + '@')+1,length(sEmail+'@') - length(edtCuEmail.Text + '@'));

		  				if cboEmail.Properties.Items.IndexOf(sEmailPotal) > -1 then
		  					cboEmail.ItemIndex := cboEmail.Properties.Items.IndexOf(sEmailPotal)
		  				else
		  					edtCuEmail_Potal.Text := sEmailPotal;
		  			end;
		  			// 2013.03.30 khs
						if lst_Result.item[0].attributes.getNamedItem('CuOrderOption').Text = 'y' then chkStickYn.Checked := True else chkStickYn.Checked := False;

		  			if lst_Result.item[0].attributes.getNamedItem('CuAppBlock').Text = 'y' then chkAppUseYn.Checked := True else chkAppUseYn.Checked := False;


            if Trim(lst_Result.item[0].attributes.getNamedItem('AppCode').Text) <> '' then
						begin
              cxLabel21.Caption := lst_Result.item[0].attributes.getNamedItem('AppCode').Text;
              cxLabel23.Caption := lst_Result.item[0].attributes.getNamedItem('AppLastRegDate').Text;
              cxLabel25.Caption := lst_Result.item[0].attributes.getNamedItem('AppLastDelDate').Text;
              cxLabel27.Caption := lst_Result.item[0].attributes.getNamedItem('AppLastFinishDate').Text;
							cxLabel29.Caption := lst_Result.item[0].attributes.getNamedItem('AppCuArea').Text;
              cxLabel31.Caption := lst_Result.item[0].attributes.getNamedItem('AppGroup').Text  + '/'
                                 + lst_Result.item[0].attributes.getNamedItem('AppTermOS').Text + '/'
                                 + lst_Result.item[0].attributes.getNamedItem('AppTermModel').Text;
              cxLabel33.Caption := lst_Result.item[0].attributes.getNamedItem('AppVersion').Text;
            end;
						if lst_Result.item[0].attributes.getNamedItem('AppDelYn').Text = 'y' then
							cxLabel35.Caption := '어플삭제'
		  			else if lst_Result.item[0].attributes.getNamedItem('AppDelYn').Text = 'n' then
		  				cxLabel35.Caption := '미삭제'
		  			else cxLabel35.Caption := '';

						if lst_Result.item[0].attributes.getNamedItem('CuOutBound').Text = ''  then cbOutBound.ItemIndex := -1 else  // 고객 아웃바운드 상태
            if lst_Result.item[0].attributes.getNamedItem('CuOutBound').Text = '1' then cbOutBound.ItemIndex := 0 else
            if lst_Result.item[0].attributes.getNamedItem('CuOutBound').Text = '2' then cbOutBound.ItemIndex := 1 else
						if lst_Result.item[0].attributes.getNamedItem('CuOutBound').Text = '3' then cbOutBound.ItemIndex := 2;

						if lst_Result.item[0].attributes.getNamedItem('SelMileSendYn').Text = 'y' then chkMileSmsYn.Checked := True else chkMileSmsYn.Checked := False;

            if Assigned(lst_Result.item[0].attributes.getNamedItem('LimitUseYN')) then
              bLimitUseYn := lst_Result.item[0].attributes.getNamedItem('LimitUseYN').Text = 'y';

            cxGroupBox5.Enabled := bLimitUseYn;

            if Assigned(lst_Result.item[0].attributes.getNamedItem('LimiDefaultCnt')) then
              cedtLimitCountA.Value := StrToFloatDef(lst_Result.item[0].attributes.getNamedItem('LimiDefaultCnt').Text, 0);

            if Assigned(lst_Result.item[0].attributes.getNamedItem('LimiDefaultCharge')) then
              cedtLimitAmtA.Value := StrToFloatDef(lst_Result.item[0].attributes.getNamedItem('LimiDefaultCharge').Text, 0);

            if Assigned(lst_Result.item[0].attributes.getNamedItem('CBLimitCnt')) then
              cedtLimitCountB.Value := StrToFloatDef(lst_Result.item[0].attributes.getNamedItem('CBLimitCnt').Text, 0);

            if Assigned(lst_Result.item[0].attributes.getNamedItem('CBLimitCharge')) then
              cedtLimitAmtB.Value := StrToFloatDef(lst_Result.item[0].attributes.getNamedItem('CBLimitCharge').Text, 0);

            if Assigned(lst_Result.item[0].attributes.getNamedItem('CBUseCnt')) then
              cedtLimitCountC.Value := StrToFloatDef(lst_Result.item[0].attributes.getNamedItem('CBUseCnt').Text, 0);

            if Assigned(lst_Result.item[0].attributes.getNamedItem('CBUseCharge')) then
              cedtLimitAmtC.Value := StrToFloatDef(lst_Result.item[0].attributes.getNamedItem('CBUseCharge').Text, 0);

						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Customers/TelNums');
		  			if lst_Result.length > 0 then
		  			begin
              cxCustTel.BeginUpdate;
              cxCustTel.DataController.SetRecordCount(0);
		  				for i := 0 to lst_Result.length - 1 do
              begin
                iRow := cxCustTel.DataController.AppendRecord;
		  					cxCustTel.DataController.Values[iRow, 0] := strtocall(lst_Result.item[i].attributes.getNamedItem('CuTel').Text);
                if lst_Result.item[i].attributes.getNamedItem('CuSmsYN').Text = 'y' then
		  					begin
		  						cxCustTel.DataController.Values[iRow, 1] := '수신';
                  cxCustTel.DataController.Values[iRow, 2] :=  '';
                end else
                begin
                  cxCustTel.DataController.Values[iRow, 1] := '미수신';
                  cxCustTel.DataController.Values[iRow, 2] :=  Date8to10(lst_Result.item[i].attributes.getNamedItem('CuSmsMiDate').Text);
                end;
                if lst_Result.item[i].attributes.getNamedItem('CuVirtualYn').Text = 'y' then
                begin
                  cxCustTel.DataController.Values[iRow, 3] :=  '할당';
                  cxCustTel.DataController.Values[iRow, 4] :=  lst_Result.item[i].attributes.getNamedItem('CuVirtualTel').Text;
                end else
                begin
                  cxCustTel.DataController.Values[iRow, 3] :=  '해제';
                  cxCustTel.DataController.Values[iRow, 4] :=  '';
                end;
		  				end;
              cxCustTel.EndUpdate;
		  			end;
          end;
        2:
          begin
            ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
            sMsg := GetXmlErrorMsg(ls_rxxml);
            if ('0000' = ls_Msg_Err) and ('1' = sMsg) then
            begin
							GMessagebox('성공하였습니다.', CDMSI);
							if Self.Tag = 49 then
              begin
  							Frm_Main.Frm_JON01N[StrToInt(self.Hint)].Proc_KeyNumberSearch(Proc_MainKeyNumberSearch);
							end else
							if Self.Tag = 69 then   // 69 : 수정창에서 고객수정
							begin
                Frm_Main.Frm_JON01N[StrToInt(self.Hint)].edtCuName.Text := Trim(edtCuName.Text);
                Frm_Main.Frm_JON01N[StrToInt(self.Hint)].cboCuLevel.ItemIndex  := cboCuLevel.ItemIndex;
                if rdoCuGb1.Checked then Frm_Main.Frm_JON01N[StrToInt(self.Hint)].CbCuGb.ItemIndex := 0 else
                if rdoCuGb2.Checked then Frm_Main.Frm_JON01N[StrToInt(self.Hint)].CbCuGb.ItemIndex := 1 else
                if rdoCuGb3.Checked then Frm_Main.Frm_JON01N[StrToInt(self.Hint)].CbCuGb.ItemIndex := 2;

                sTmp := Trim(Frm_Main.Frm_JON01N[StrToInt(self.Hint)].cxtCuTel.text);
                for i := 0 to cxCustTel.DataController.RowCount - 1 do
                begin
                  if sTmp = CallToStr(cxCustTel.DataController.Values[i, 0]) then
                  begin
                    Frm_Main.Frm_JON01N[StrToInt(self.Hint)].ChkCuSmsNo.Tag := 99;
                    if cxCustTel.DataController.Values[i, 1] = '미수신' then Frm_Main.Frm_JON01N[StrToInt(self.Hint)].ChkCuSmsNo.checked := True
                                                                        else Frm_Main.Frm_JON01N[StrToInt(self.Hint)].ChkCuSmsNo.checked := False;
                    Frm_Main.Frm_JON01N[StrToInt(self.Hint)].ChkCuSmsNo.Tag := 0;
                    break;
                  end;
                end;
                if (rdoCuGb3.Checked) and (cboCuBubin.ItemIndex > 0) then
                begin
                  sTmp := cboBubinCode.Properties.Items[cboCuBubin.ItemIndex];
                  sTmp := Copy(sTmp, 1, Pos(',', sTmp) - 1);
                  Frm_Main.Frm_JON01N[StrToInt(self.Hint)].cxtCuBubin.Hint := sTmp;

                  sBrNo := Proc_BRNOSearch;
                  iRow := GT_BUBIN_INFO.cbcode.IndexOf(Trim(sTmp) + ',' + sBrNo);
                  if iRow > -1 then
                  begin
                    // 법인정보[법인명 + 부서명]
                    Frm_Main.Frm_JON01N[StrToInt(self.Hint)].cxtCuBubin.Text := Trim(GT_BUBIN_INFO.cbCorpNm[iRow]) + ' | '
                                                                              + Trim(GT_BUBIN_INFO.cbDeptNm[iRow]);
                    Frm_Main.Frm_JON01N[StrToInt(self.Hint)].lblCuBubinName.Caption := '법인고객 [ ' + Trim(Frm_Main.Frm_JON01N[StrToInt(self.Hint)].cxtCuBubin.Text) + ' ]';
                  end;
                end;
                Frm_Main.Frm_JON01N[StrToInt(self.Hint)].cb_CarType.ItemIndex := cb_CarType.ItemIndex;

                Frm_Main.Frm_JON01N[StrToInt(self.Hint)].chkCenterMng.checked := chkBrTelYN.checked;
							end else
							if Self.Tag = 59 then
							begin
                if ( cxCustTel.DataController.RecordCount = 1 ) And ( cxCustTel.DataController.Values[0, 0] <> '' ) then
                begin
		  						Frm_Main.Frm_JON01N[StrToInt(self.Hint)].cxtCuTel.Text := StringReplace(cxCustTel.DataController.Values[0, 0], '-', '', [rfReplaceAll]);
                  Frm_Main.Frm_JON01N[StrToInt(self.Hint)].Proc_KeyNumberSearch(Proc_MainKeyNumberSearch);
                end;
              end;
//              Hide;  //  코리아 드라이브 문진석 주임 요청으로 고객정보저장후 화면 그대로 표시/ 종료시 화면 닫기 처리 LYB 20141231
              if ( Assigned(Frm_JON012) ) Or ( Frm_JON012 <> Nil ) then
					  		Frm_JON012.btnCloseClick(nil);
						end else
            begin
              GMessagebox(sMsg, CDMSE);
            end;
          end;
			end;
    finally
      xdom := Nil;
    end;
  except
  end;
end;

procedure TFrm_CUT011.proc_cust_Intit;
begin
	// 6 : 접수창에서 고객수정으로 화면 오픈함
	proc_bubin_init;
	btnCallBell.Visible := False;
	if Self.Tag in [4, 6, 49, 69] then
	begin
		btnSave.Caption := '수정';
		proc_Cust_Search;
		cboBranch.Enabled := False;

		if (rdoCuGb2.Checked) then  //업소이면
		begin
			btnCallBell.Visible := True;
			btnCallBell.enabled := True;
			if Not Assigned(Frm_BTN) then Frm_BTN := TFrm_BTN.Create(Nil);
			Frm_BTN.proc_CallBell_BRANCH_INFO;
			if Frm_BTN.Scb_BankCd.count = 0 then Frm_BTN.proc_Bank;

{			if (Frm_BTN.Scb_CallBell_BrNo.indexOf(Proc_BRNOSearch) > -1) and           //대표번호에 실착신번호 설정되었을 경우
				 (Frm_BTN.Scb_CallBell_KeyNumber.indexOf(Proc_MainKeyNumberSearch) > -1) then
			begin
				btnCallBell.Visible := True;
				if Frm_BTN.Scb_CallBell_WKID[Frm_BTN.Scb_CallBell_KeyNumber.indexOf(Proc_MainKeyNumberSearch)] <> '' then
				begin
//					Frm_BTN.proc_Bank;
					btnCallBell.enabled := True;
				end
				else btnCallBell.enabled := False; 
			end;   }
		end;
	end else
	if Self.Tag in [5, 7, 59, 79] then
	begin
    btnSave.Caption := '저장';
		cboBranch.Enabled := True;
    pnlTitle.Caption := '  고객정보등록';
    btnBlockWKList.Visible := False;
	end;
	
	if cxCustTel.DataController.RecordCount > 0 then
//		btnBeforeClick(nil)              // 처음 열었을때 과거이용내역 표시 안함  2021.02.22 최팀장님 요청
	else
  begin
    if ( Assigned(Frm_JON012) ) Or ( Frm_JON012 <> Nil ) then
  		Frm_JON012.btnCloseClick(nil);
  end;
		
	pnlTitle.Caption := '  고객정보수정';
	btnBlockWKList.Visible := True;
	cxCustTel.DataController.SetFocus;
end;

procedure TFrm_CUT011.cboBranchClick(Sender: TObject);
begin
  if cboBranch.Tag in [5, 7] then
    proc_bubin_init;
end;

procedure TFrm_CUT011.btnInitClick(Sender: TObject);
var
  iCuType, iIdx: Integer;
begin
	if GMessagebox('작성된 모든게 초기화 됩니다.' + #13#10 + '하시겠습니까?', CDMSQ) = idok then
	begin
    if rdoCuGb1.Checked then iCuType := 1 else
    if rdoCuGb2.Checked then iCuType := 2 else
		if rdoCuGb3.Checked then iCuType := 3;

    iIdx := cboCuBubin.ItemIndex;
		self.Tag := 4;
    FControlInitial(False);
    proc_cust_Intit;
    if iCuType = 1 then rdoCuGb1.Checked := True else
    if iCuType = 2 then rdoCuGb2.Checked := True else
		if iCuType = 3 then rdoCuGb3.Checked := True;
		if iIdx > 0 then
      cboCuBubin.ItemIndex := iIdx;
	end;
end;

procedure TFrm_CUT011.cxCustTelEditKeyPress(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
begin
  if key in ['0'..'9', #13, #8, '-'] then
	else
    key := #0;
end;

procedure TFrm_CUT011.cxCustTelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var iSel, iRow : integer;
begin
  case key of
    VK_RETURN, VK_DOWN:
      begin
        iSel := cxCustTel.DataController.FocusedRecordIndex;
        if (iSel = cxCustTel.DataController.RowCount - 1) and
           (cxCustTel.DataController.RowCount <= 11) then
        begin
          cxCustTel.BeginUpdate;
          iRow := cxCustTel.DataController.AppendRecord;
          cxCustTel.DataController.Values[iRow, 1] := '수신';
          cxCustTel.DataController.Values[iRow, 3] := '해제';
          cxCustTel.EndUpdate;
          key := 0;
        end;
      end;
  end;
end;

procedure TFrm_CUT011.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_CUT011.FormClose(Sender: TObject; var Action: TCloseAction);
var
  EnvFile: TIniFile;
begin
  EnvFile := TIniFile.Create(ENVPATHFILE);
  try
    EnvFile.WriteInteger('WinPos', 'Cut011Left', Self.Left);
    EnvFile.WriteInteger('WinPos', 'Cut011Top' , Self.Top );
  finally
    EnvFile.Free;
  end;

  Action := caFree;
end;

procedure TFrm_CUT011.meoStartAreaCUTExit(Sender: TObject);
begin
  if Assigned(Frm_JON30) and (not (meoStartAreaCUT.Focused)) then
    Hide_Panel('meoStartAreaCUT',1);
end;

procedure TFrm_CUT011.meoStartAreaCUTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  lcsActiveEdit := 'meoStartAreaCUT'; // 활성화 된 출발지, 도착지 Edit 구분을 저장.

  // 좌, 우, HOME, END 방향키는 이벤트 타지 않도록 한다.
  if (Key = 37) or (Key = 39) or (Key = 35) or (Key = 36) then
    Exit;
  if Key = VK_RETURN then
  begin
    Key := 0;
    Exit;
  end;

  if Key in [VK_DOWN, VK_UP] then
  begin
    Exit; // 그리드에 포커스 넘기는건 KeyUp Event에서 처리한다.
  end;

  if Key = VK_BACK then
  begin
    if (Length(meoStartAreaCUT.Text) <= 1) then
    begin
      // 키워드가 모두 지워진 상태에서 한번더 BACK 키를 누를경우 컨트롤 초기화 처리.
      lcs_Clear(lcsActiveEdit);

      gKWComp := '';

      gmap_forword := '';

      Grid_Clear(lcsActiveEdit,1);
      Grid_Clear(lcsActiveEdit,2);
      Grid_Clear(lcsActiveEdit,3);
      Hide_Panel(lcsActiveEdit,1);
      Exit;
    end else
    if (Length(meoStartAreaCUT.Text) <= 2) then
    begin
      gmap_forword := '';
{    end else
    if (Length(meoStartAreaCUT.Text) < Length(map_ls_Text)) then
    begin
      map_ls_Text := '';
      gmap_forword := '';
-}
    end;
  end;
end;

procedure TFrm_CUT011.Proc_AreaSearchKDown(iType: Integer);
var
  sSearch: string;
begin
  if iType = 0 then
  begin
    ls_ActiveControl := 'meoStartAreaCUT';
    sSearch := meoStartAreaCUT.Text;
  end else
  if iType = 1 then
  begin
    ls_ActiveControl := 'meoEndAreaCUT';
    sSearch := meoEndAreaCUT.Text;
  end;
end;

procedure TFrm_CUT011.meoStartAreaCUTKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxMemo(sender).Text := Enc_Control(TcxMemo(sender).Text);	
	lcsActiveEdit := 'meoStartAreaCUT'; // 활성화 된 출발지, 도착지 Edit 구분을 저장.

  // 검색 그리드로 포커스 이동..
  if Key in [VK_DOWN] then
  begin
    if Frm_JON30.AdvStringGrid1.Cells[0,1] = '' then
    begin
      if Frm_JON30.AdvStringGrid2.Cells[0,0] = '' then
      begin
        if Frm_JON30.AdvStringGrid3.Cells[0,0] <> '' then
        begin
          Frm_JON30.AdvStringGrid1.ShowSelection := False;
          Frm_JON30.AdvStringGrid2.ShowSelection := False;
          Frm_JON30.AdvStringGrid3.ShowSelection := True;
          Frm_JON30.AdvStringGrid3.SetFocus;
//-          Frm_JON30.AdvStringGrid3.FocusCell(0,0);
        end;
      end else
      begin
        Frm_JON30.AdvStringGrid1.ShowSelection := False;
        Frm_JON30.AdvStringGrid2.ShowSelection := True;
        Frm_JON30.AdvStringGrid3.ShowSelection := False;
        Frm_JON30.AdvStringGrid2.SetFocus;
        Frm_JON30.AdvStringGrid2.FocusCell(0,0);
      end;
    end else
    begin
      Frm_JON30.AdvStringGrid1.ShowSelection := True;
      Frm_JON30.AdvStringGrid2.ShowSelection := False;
      Frm_JON30.AdvStringGrid3.ShowSelection := False;
//-      Frm_JON30.AdvStringGrid1.FocusCell(1,1);
      Frm_JON30.AdvStringGrid1.SetFocus;
    end;
  end else
	if Key = VK_BACK then
  begin
//     Frm_JON30.gb2ndSearch := False; //확장검색 진행 막음
		 J30ShowS := False;
	end else
  if Key = VK_RETURN then
  begin
    if lcsActiveEdit = 'meoStartAreaCUT' then
    begin
      if Frm_JON30.Visible = True then
      begin
        if Frm_JON30.AdvStringGrid1.Cells[0,1] <> '' then
        begin
          Frm_JON30.Proc_SendParent(Frm_JON30.AdvStringGrid1.GetRealRow + 1, True);
          Hide_Panel(lcsActiveEdit,1);
        end;
        if (Frm_JON30.AdvStringGrid1.Cells[0,1] = '') and (Frm_JON30.AdvStringGrid2.Cells[0,0] <> '') then
        begin
          Frm_JON30.Proc_SendParent_ADV2(Frm_JON30.AdvStringGrid2.GetRealRow + 1, Frm_JON30.AdvStringGrid2.GetRealCol, True);
          Hide_Panel(lcsActiveEdit,1);
        end;
        meoEndAreaCUT.SetFocus;
      end;
		end;
	end else
  if (Key = vk_delete) then
  begin
     J30ShowS := False;
	end else
//	if (key <> 229) then  //  20191224 한컴입력기 에서는 모든 한글이 229로 넘어옴 그래서 삭제 KHS
	begin
		gKWComp := '';
		if J30ShowS = False then
//		begin
//			Frm_JON30.gb2ndSearch := False; //확장검색 진행 막음
			Proc_AreaSearchKDown_Added(Key);
//		end;
	end;
end;

procedure TFrm_CUT011.btnSaveClick(Sender: TObject);
var
  msg, sBrNo, sBrName, sTel, OkCashBack: string;
begin
	sBrNo := Proc_BRNOSearch;

  if (GT_USERIF.LV = '10') and (not IsPassedManagementCu(sBrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 고객관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
				+ #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    sBrName := GetBrName(sBrNo);
		GMessagebox(Format(msg, [sBrNo, sBrName]), CDMSE);
    Exit;
  end;

  if cxCustTel.DataController.RecordCount = 0 then
  begin
    GMessagebox('고객번호가 없습니다.' + #13#10 + '고객번호는 필수입니다.', CDMSE);
    Exit;
	end;

  if cxCustTel.DataController.Values[0,0] = null then
  begin
    GMessagebox('고객번호가 없습니다.' + #13#10 + '고객번호는 필수입니다.', CDMSE);
    Exit;
  end;

  sTel := StringReplace(cxCustTel.DataController.Values[0,0], '-', '', [rfReplaceAll]);
  if sTel = '' then
	begin
		GMessagebox('고객번호가 없습니다.' + #13#10 + '고객번호는 필수입니다.', CDMSE);
		Exit;
	end;

  OkCashBack := Format('%s%s%s%s', [edtOKC1.Text, edtOKC2.Text, edtOKC3.Text, edtOKC4.Text]);

  if (Length(OkCashBack) <> 0) and (Length(OkCashBack) <> 16) then
  begin
    GMessagebox('OK 캐쉬백 정보를 정확하게 입력해 주세요.', CDMSE);
    Exit;
	end;

	if Not func_EucKr_Check(edtCuName, 0) then Exit;
	if Not func_EucKr_Check(edtCuEmail, 0) then Exit;
	if Not func_EucKr_Check(edtCuEmail_Potal, 0) then Exit;
	if Not func_EucKr_Check(edt_CardMemo, 0) then Exit;

	if Not func_EucKr_Check(meoCuCCMemo, 0) then Exit;
	if Not func_EucKr_Check(meoCuWorMemo, 0) then Exit;
	if Not func_EucKr_Check(meoStartAreaCUT, 0) then Exit;
	if Not func_EucKr_Check(meoEndAreaCUT, 0) then Exit;

  if btnSave.Caption = '저장' then
  begin
    if func_tel_check(0) then
			proc_save_customer(0)
  end else
	begin
    if func_tel_check(1) then
			proc_save_customer(1);
	end;
  Hide_Panel('meoEndAreaCUT',1);
end;

procedure TFrm_CUT011.btnBlockWKListClick(Sender: TObject);
var sCbCode : string;
begin
  if Not Assigned(Frm_CUT014) Or (Frm_CUT014 = Nil) then Frm_CUT014 := TFrm_CUT014.Create(Nil);

  Frm_CUT014.proc_Init;

			 if rdoCuGb1.Checked then Frm_CUT014.ACbCuGb := IntToStr(0)
  else if rdoCuGb2.Checked then Frm_CUT014.ACbCuGb := IntToStr(1)
  else if rdoCuGb3.Checked then Frm_CUT014.ACbCuGb := IntToStr(2);
  if rdoCuGb3.Checked then
  begin
    sCbCode := cboBubinCode.Properties.Items[cboCuBubin.ItemIndex];
    sCbCode := Copy(sCbCode, 1, Pos(',', sCbCode) - 1);
    Frm_CUT014.ACuseq  := sCbCode;
  end
  else
    Frm_CUT014.ACuseq  := clbCuSeq.Caption;          //고객코드
//    Frm_CUT014.ACuseq  := Frm_Main.Frm_JON01[Self.Tag].cxtCuBubin.Hint     //법인코드
  Frm_CUT014.AWkSabun:= '';
  Frm_CUT014.AMemo   := '';

	Frm_CUT014.edtWkSabun.text := '';
  Frm_CUT014.proc_BlockWKSearch('CUT011', 1);
  Frm_CUT014.Show;
end;

procedure TFrm_CUT011.btnCallBellClick(Sender: TObject);
var sTmp : string;
	i, j, iTmp, iAddRow : integer;
	slTmp : TStringList;
begin
	if ( Not Assigned(Frm_BTN01) ) Or ( Frm_BTN01 = Nil ) then 
		Frm_BTN01 := TFrm_BTN01.Create(Nil)
	else Frm_BTN01.proc_Init;

	sTmp := '';
	for i := 0 to Frm_BTN.Scb_CallBell_BrNo.Count - 1 do

	begin
		iTmp := scb_DsBranchCode.IndexOf(Frm_BTN.Scb_CallBell_BrNo[i]);
		if iTmp < 0 then Continue;

		if sTmp = Frm_BTN.Scb_CallBell_BrNo[i] then Continue;
		// 본사코드   // 지사코드   // 지사명   // 대표번호
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
		begin
			if Proc_HDNOSearch = scb_HeadCode[iTmp] then
			begin
				Frm_BTN01.cboBranch.Properties.Items.Add(scb_HeadCode[iTmp] + '.' +
					Frm_BTN.Scb_CallBell_BrNo[i] + ': ' + scb_DsBranchName[iTmp]);
				sTmp := Frm_BTN.Scb_CallBell_BrNo[i];
			end;
		end else
		begin
			Frm_BTN01.cboBranch.Properties.Items.Add(scb_HeadCode[iTmp] + '.' +
				Frm_BTN.Scb_CallBell_BrNo[i] + ': ' + scb_DsBranchName[iTmp]);
			sTmp := Frm_BTN.Scb_CallBell_BrNo[i];
		end;
	end;


	Frm_BTN01.cboBankCode.Properties.Items.Clear;
	Frm_BTN01.cboBankName.Properties.Items.Clear;
	Frm_BTN01.cboBankCode.Properties.Items.Assign(Frm_BTN.Scb_BankCd);
	Frm_BTN01.cboBankName.Properties.Items.Assign(Frm_BTN.Scb_BankNm);
	Frm_BTN01.cboBankName.ItemIndex := 0;

	if not Frm_BTN.func_CallBellUpso(Proc_BRNOSearch, clbCuSeq.caption) then    
	begin
		//콜벨업소로 등록되지 않았다면
		Frm_BTN01.clbCuSeq.Caption := clbCuSeq.caption;

		for j := 0 to Frm_BTN01.cboBranch.Properties.Items.Count - 1 do
		begin
			sTmp := Copy(Frm_BTN01.cboBranch.Properties.Items[j], Pos('.', Frm_BTN01.cboBranch.Properties.Items[j]) + 1, Pos(':',
							Frm_BTN01.cboBranch.Properties.Items[j]) - (Pos('.', Frm_BTN01.cboBranch.Properties.Items[j]) + 1)); //지사코드
			if Proc_BRNOSearch = sTmp then
			begin
				Frm_BTN01.cboBranch.ItemIndex := j;
				Break;
			end;
		end;
		Frm_BTN01.cboKeynumber.ItemIndex := Frm_BTN01.cboKeynumber.Properties.Items.Indexof(StrToCall(Proc_MainKeyNumberSearch));
		Frm_BTN01.cboUpsoWK.ItemIndex := 0;

		Frm_BTN01.edtUpsoName.Text := edtCuName.Text;
		Frm_BTN01.edtUpsoHP.Text := '';

		Frm_BTN01.cboStatus.ItemIndex := 1;
		Frm_BTN01.btnSave.Enabled := True;

		Frm_BTN01.cxUpsoTel.BeginUpdate;
		Frm_BTN01.cxUpsoTel.DataController.SetRecordCount(0);
		slTmp := TStringList.Create;
		try
			for j := 0 to cxCustTel.DataController.RecordCount - 1 do
			begin
				iAddRow := Frm_BTN01.cxUpsoTel.DataController.AppendRecord;
				Frm_BTN01.cxUpsoTel.DataController.Values[iAddRow, 0] := strtocall(cxCustTel.DataController.Values[j, 0]);
			end;
			Frm_BTN01.cxUpsoTel.EndUpdate;

			Frm_BTN01.rb_Straight.Checked := True;

			Frm_BTN01.edtCalValue.Text := '';
			Frm_BTN01.cboBankName.ItemIndex := 0;
			Frm_BTN01.edtBankNumberCust.Text := '';
			Frm_BTN01.edtBankOwnerCust.Text  := '';

			Frm_BTN01.lcsCallBell1 := lcsSta1;
			Frm_BTN01.lcsCallBell2 := lcsSta2;
			Frm_BTN01.lcsCallBell3 := lcsSta3;
			Frm_BTN01.lbUpsoAreaName.Caption  := lcsSta1 + ' ' + lcsSta2 + ' ' + lcsSta3;
			Frm_BTN01.edtUpsoAreaDetail.Caption := cxtStartAreaDetail.Text;
			Frm_BTN01.meoCallBellArea.Text := meoStartAreaCUT.text;
			Frm_BTN01.edtXval.Caption := cxtStartXval.Text;
			Frm_BTN01.edtYval.Caption := cxtStartYval.Text;
		
			if Trim(meoCuCCMemo.text) <> '' then
			begin
				GetTextSeperationEx2('¶', meoCuCCMemo.text, slTmp);
				for j := 0 to slTmp.Count - 1 do
				begin
					Frm_BTN01.meoCallBellUpsoMemo.Lines.Add(slTmp[j]);
				end;
			end;

		finally
			slTmp.Free;
		end;
	end;

			
	Frm_BTN01.btnSave.Caption := '수정';

	Frm_BTN01.pnlTitle.Caption := '  업소 수정';
	Frm_BTN01.pnlTitle.Hint := 'Update';
	Frm_BTN01.cboBranch.Enabled := False;
	Frm_BTN01.cboKeynumber.Enabled := False;

	if not Frm_BTN01.Showing then
	begin
		Frm_BTN01.Left := (Screen.Width  - Frm_BTN01.Width) div 2;
		Frm_BTN01.top  := (Screen.Height - Frm_BTN01.Height) div 2;
		if Frm_BTN01.top <= 10 then Frm_BTN01.top := 10;

		Frm_BTN01.Tag := 1;
		Frm_BTN01.Show;
  end;
	

end;

procedure TFrm_CUT011.btnCloseClick(Sender: TObject);
begin
  Hide_Panel('meoEndAreaCUT',1);
  if ( Assigned(Frm_JON012) ) Or ( Frm_JON012 <> Nil ) then
    Frm_JON012.btnCloseClick(nil);
	if Assigned(Frm_JON012) then Frm_JON012.Close;     // 과거이용내역
  Close;
end;

function TFrm_CUT011.func_tel_check(iType: Integer): Boolean;
var
	ls_TxLoad, ls_TxQry, rv_str, ls_Msg_Err : string;
  sHdNo, sBrNo, sKeyNum, sTel, sQueryTemp : string;
  ls_rxxml: WideString;
  i: Integer;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  slReceive: TStringList;
  ErrCode: integer;
begin
	Result := False;
	sHdNo := Proc_HDNOSearch;
	if Trim(sHdNo) = '' then 
	begin
		GMessagebox('지사정보가 올바르지 않습니다.' + #13#10 + '지사정보는 필수입니다.', CDMSE);
		Exit;
	end;
	
	sBrNo := Proc_BRNOSearch;
	if Trim(sBrNo) = '' then 
	begin
		GMessagebox('지사정보가 없습니다.' + #13#10 + '지사정보는 필수입니다.', CDMSE);
		Exit;
	end;
	
	sKeyNum := Proc_MainKeyNumberSearch;
	if Trim(sKeyNum) = '' then 
	begin
		GMessagebox('대표번호가 없습니다.' + #13#10 + '대표번호는 필수입니다.', CDMSE);
		Exit;
	end;
	
	for i := 0 to cxCustTel.DataController.RecordCount - 1 do
	begin
		sTel := StringReplace(cxCustTel.DataController.Values[i, 0], '-', '', [rfReplaceAll]);

		ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_CUSTOMER_TEL_CHECK, sQueryTemp);
		ls_TxQry := Format(sQueryTemp, [sHdNo, sBrNo, sKeyNum, sTel]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CUSTTELCHECK', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

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
            xdom := ComsDomDocument.Create;
            if not xdom.loadXML(ls_rxxml) then Exit;
						ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' = ls_MSG_Err) then
            begin
							lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
              ls_Rcrd := TStringList.Create;
              try
                GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
                if iType = 0 then
                begin
                  if ls_Rcrd[0] <> '' then
                  begin
										Result := False;
										GMessagebox(strtocall(sTel) + ' 번호는 [' + ls_Rcrd[2]
                      +
                      '] [' + ls_Rcrd[1] +
                      '] 고객으로 등록되어 있는 전화번호 입니다.'
                      + #13#10 + '저장 할수 없습니다.', CDMSE);
                    Exit;
									end;
								end else
								if iType = 1 then
								begin
									if (clbCuSeq.Caption <> ls_Rcrd[0]) then
                  begin
										if ls_Rcrd[0] = '' then
											continue;
										Result := False;
										GMessagebox(strtocall(sTel) + ' 번호는 [' + ls_Rcrd[2]
                      +
                      '] [' + ls_Rcrd[1] +
											'] 고객으로 등록되어 있는 전화번호 입니다.'
											+ #13#10 + '저장 할수 없습니다.', CDMSE);
                    Exit;
                  end;
								end;
              finally
                ls_Rcrd.Free;
              end;
            end
            else
              GMessagebox(ls_Msg_Err, CDMSE);

            xdom := Nil;
          except
          end;
        end;
      end;
    finally
      Frm_Flash.Hide;
      FreeAndNil(slReceive);
    end;
  end;
  Result := True;
end;

// 고객저장(0 : 추가, 1 : 수정, 2 : 삭제, 3 : 법인정보만수정)
procedure TFrm_CUT011.proc_save_customer(iType: Integer);
const
  ls_Param = '<param>ParamString</param>';
var
  rv_str, ls_TxLoad : string;
  sCuType, sCbCode, sCuLevel, sTemp, sTemp2, sSms, sParam, sInfo, sInfo2, sPdaInfo, sPdaInfo2, sBrNo, sHdNo,
	sKeyNumber, OkCashBack, sVirture, sEmail, Param, XmlData, ErrMsg: string;
  ls_rxxml, wInfo, wPdaInfo: WideString;
  i : Integer;
	asParam: array[1..41] of string;
	slReceive: TStringList;
  ErrCode: integer;
begin
	sBrNo := Proc_BRNOSearch;
	sHdNo := Proc_HDNOSearch;
	sKeyNumber := Proc_MainKeyNumberSearch;
	if rdoCuGb2.Checked then sCuType := '1' else
  if rdoCuGb3.Checked then sCuType := '3'
                      else sCuType := '0';

	if (sCuType = '3') and (cboCuBubin.ItemIndex > 0) then
  begin
    sCbCode := cboBubinCode.Properties.Items[cboCuBubin.ItemIndex];
    sCbCode := Copy(sCbCode, 1, Pos(',', sCbCode) - 1);
	end else
    sCbCode := '';

  sCuLevel := GetCustLevelSeq;
  if cxCustTel.DataController.Values[0, 0] <> '' then
  begin
    sSms := IfThen(cxCustTel.DataController.Values[0, 1] = '미수신', 'n', 'y');
    sTemp := Rpad(StringReplace(cxCustTel.DataController.Values[0, 0], '-', '', [rfReplaceAll]), 12, ' ') + Rpad(' ', 20, ' ') + sSms;
    sVirture := IfThen(cxCustTel.DataController.Values[0, 3] = '해제', 'n', 'y');
    sTemp := sTemp + sVirture;
  end;

  if cxCustTel.DataController.RowCount >= 2 then
  begin
    for i := 1 to cxCustTel.DataController.RowCount - 1 do
    begin
      sSms := IfThen(cxCustTel.DataController.Values[i, 1] = '미수신', 'n', 'y');
      sTemp := sTemp + '|' + Rpad(StringReplace(cxCustTel.DataController.Values[i, 0], '-', '', [rfReplaceAll]), 12, ' ') + Rpad(' ', 20, ' ') + sSms;
      sVirture := IfThen(cxCustTel.DataController.Values[i, 3] = '해제', 'n', 'y');
      sTemp := sTemp + sVirture;
      if i > 4 then Break;
    end;
  end;
  sTemp := sTemp + '|';
  sTemp2 := '';
  if cxCustTel.DataController.RowCount > 6 then
  begin
    sSms := IfThen(cxCustTel.DataController.Values[6, 1] = '미수신', 'n', 'y');
    sTemp2 := Rpad(StringReplace(cxCustTel.DataController.Values[6, 0], '-', '', [rfReplaceAll]), 12, ' ') + Rpad(' ', 20, ' ') + sSms;
    sVirture := IfThen(cxCustTel.DataController.Values[6, 3] = '해제', 'n', 'y');
    sTemp2 := sTemp2 + sVirture;
    if cxCustTel.DataController.RowCount > 7 then
    begin
      for i := 7 to cxCustTel.DataController.RowCount - 1 do
      begin
        sSms := IfThen(cxCustTel.DataController.Values[i, 1] = '미수신', 'n', 'y');
        sTemp2 := sTemp2 + '|' + Rpad(StringReplace(cxCustTel.DataController.Values[i, 0], '-', '', [rfReplaceAll]), 12, ' ') + Rpad(' ', 20, ' ') + sSms;
        sVirture := IfThen(cxCustTel.DataController.Values[i, 3] = '해제', 'n', 'y');
        sTemp2 := sTemp2 + sVirture;
      end;
    end;
    sTemp2 := sTemp2 + '|';
  end;

  wInfo := meoCuCCMemo.Text;
	wPdaInfo := meoCuWorMemo.Text;
	wPdaInfo := StringReplace(wPdaInfo, '●', '¶', [rfReplaceAll]);
	if Length(wInfo) > 100 then
  begin
    sInfo := Copy(wInfo, 1, 100);
    sInfo2 := Copy(wInfo, 101, Length(wInfo) - 100);

		sInfo := ReplaceAll(sInfo, #$D#$A, '¶');
		sInfo := ReplaceAll(sInfo, #13#10, '¶');
		sInfo := ReplaceAll(sInfo, #10#13, '¶');
		sInfo := StringReplace(sInfo, '|', '¶', [rfReplaceAll]);

		sInfo2 := ReplaceAll(sInfo2, #$D#$A, '¶');
		sInfo2 := ReplaceAll(sInfo2, #13#10, '¶');
		sInfo2 := ReplaceAll(sInfo2, #10#13, '¶');
		sInfo2 := StringReplace(sInfo2, '|', '¶', [rfReplaceAll]);
  end else
  begin
		sInfo := ReplaceAll(wInfo, #$D#$A, '¶');
		sInfo := ReplaceAll(sInfo, #13#10, '¶');
		sInfo := ReplaceAll(sInfo, #10#13, '¶');
		sInfo := StringReplace(sInfo, '|', '¶', [rfReplaceAll]);

    sInfo2 := '';
  end;

  if Length(wPdaInfo) > 100 then
  begin
    sPdaInfo := Copy(wPdaInfo, 1, 100);
    sPdaInfo2 := Copy(wPdaInfo, 101, Length(wPdaInfo) - 100);

		sPdaInfo := ReplaceAll(sPdaInfo, #$D#$A, '¶');
		sPdaInfo := ReplaceAll(sPdaInfo, #13#10, '¶');
		sPdaInfo := ReplaceAll(sPdaInfo, #10#13, '¶');
		sPdaInfo := StringReplace(sPdaInfo, '|', '¶', [rfReplaceAll]);

		sPdaInfo2 := ReplaceAll(sPdaInfo2, #$D#$A, '¶');
		sPdaInfo2 := ReplaceAll(sPdaInfo2, #13#10, '¶');
		sPdaInfo2 := ReplaceAll(sPdaInfo2, #10#13, '¶');
		sPdaInfo2 := StringReplace(sPdaInfo2, '|', '¶', [rfReplaceAll]);
  end else
  begin
		sPdaInfo := ReplaceAll(wPdaInfo, #$D#$A, '¶');
		sPdaInfo := ReplaceAll(sPdaInfo, #13#10, '¶');
		sPdaInfo := ReplaceAll(sPdaInfo, #10#13, '¶');
		sPdaInfo := StringReplace(sPdaInfo, '|', '¶', [rfReplaceAll]);
    sPdaInfo2 := '';
  end;

  OkCashBack := Format('%s%s%s%s', [edtOKC1.Text, edtOKC2.Text, edtOKC3.Text, edtOKC4.Text]);
  if Length(OkCashBack) <> 16 then
    OkCashBack := '';

  lcsSta1 := cxtSA1.Text;
  lcsSta2 := cxtSA2.Text;
  lcsSta3 := cxtSA3.Text;

  lcsEnd1 := cxtEd1.Text;
  lcsEnd2 := cxtEd2.Text;
  lcsEnd3 := cxtEd3.Text;

  Param := IntToStr(iType);                                                            // 01 저장타입( 0: 등록, 1: 수정, 2: 삭제, 3: 법인정보만수정, 10:등록및수정)
  Param := Param + '│' + clbCuSeq.Caption;                                             // 02 고객코드
  Param := Param + '│' + sHdNo;                                                        // 03 본사코드
  Param := Param + '│' + sBrNo;                                                        // 04 지사코드
  Param := Param + '│' + sKeyNumber;                                                   // 05 대표번호
  Param := Param + '│' + sCuType;                                                      // 06 고객타입(0 :일반, 1 : 업소, 3 : 법인 4 : 불량)
  Param := Param + '│' + edtCuName.Text;                                               // 07 고객(업소명)
  Param := Param + '│' + StringReplace(cxTextEdit2.Text, '-', '', [rfReplaceAll]);     // 08 주민등록(사업자)번호
  Param := Param + '│' + En_Coding(GT_USERIF.ID);                                      // 09 입력자 ID
  Param := Param + '│' + lcsSta1;                                                      // 10 출발지 1
  Param := Param + '│' + lcsSta2;                                                      // 11 출발지 2
  Param := Param + '│' + lcsSta3;                                                      // 12 출발지 3
  Param := Param + '│' + cxtStartAreaDetail.Text;                                      // 13 출발지 POI
  Param := Param + '│' + meoStartAreaCUT.Text;                                         // 14 출발지 세부입력
  Param := Param + '│' + cxtStartXval.Text;                                            // 15 출발지 위도
  Param := Param + '│' + cxtStartYval.Text;                                            // 16 출발지 경도
  Param := Param + '│' + En_Coding(sInfo);                                             // 17 고객메모(상담원)
  Param := Param + '│' + En_Coding(sPdaInfo);                                          // 18 고객정보(기사)
  Param := Param + '│' + lcsEnd1;                                                      // 19 도착지 1
  Param := Param + '│' + lcsEnd2;                                                      // 20 도착지 2
  Param := Param + '│' + lcsEnd3;                                                      // 21 도착지 3
  Param := Param + '│' + cxtEndAreaDetail.Text;                                        // 22 도착지 POI
  Param := Param + '│' + meoEndAreaCUT.Text;                                           // 23 도착지 세부입력
  Param := Param + '│' + cxtEndXval.Text;                                              // 24 도착지 위도
  Param := Param + '│' + cxtEndYval.Text;                                              // 25 도착지 경도
  Param := Param + '│' + sCbCode;                                                      // 26 법인코드
  Param := Param + '│' + sCuLevel;                                                     // 27 고객등급(0 : 불량, 1 : 주의, 2 : 일반, 3 :업소)
  Param := Param + '│' + sTemp;                                                        // 28 cdms_customer_tel 저장
  Param := Param + '│' + sTemp2;                                                       // 29 cdms_customer_tel 저장 7건 부터
  Param := Param + '│' + En_Coding(sInfo2);                                            // 30 고객메모2(상담원)
  Param := Param + '│' + En_Coding(sPdaInfo2);                                         // 31 고객정보2(기사)
  Param := Param + '│' + OkCashBack;                                                   // 32 캐쉬백 카드 번호
  Param := Param + '│' + CustBrTelYN;                                                  // 33 상황실번호보기

	if edtCuEmail.Text <> '' then
	begin
		sEmail := edtCuEmail.Text + '@'  ;
		if edtCuEmail_Potal.Visible then sEmail := sEmail + edtCuEmail_Potal.Text
		else sEmail := sEmail + cboEmail.Text;
	end	else sEmail := '';

  Param := Param + '│' + sEmail;                                                       // 34 고객EMAIL
  Param := Param + '│' + Trim(edt_CardMemo.Text);                                      // 35 적요3

  if cbOutBound.ItemIndex = -1 then Param := Param + '│' + ''  else                    // 36 고객 아웃바운드상태  1 동의, 2거부, 3문자
	if cbOutBound.ItemIndex =  0 then Param := Param + '│' + '1' else
  if cbOutBound.ItemIndex =  1 then Param := Param + '│' + '2' else
  if cbOutBound.ItemIndex =  2 then Param := Param + '│' + '3';

	if chkAppUseYn.Checked then Param := Param + '│' + 'y'                               // 37 고객 어플 차단 여부  y 차단, n 미차단
                         else Param := Param + '│' + 'n';

	if chkStickYn.Checked  then Param := Param + '│' + 'y'                               // 38 오더 스틱여부 yn
                         else Param := Param + '│' + 'n';

	if cb_CarType.ItemIndex = 0 then Param := Param + '│' + '1'                          // 39 차종
                              else Param := Param + '│' + '2';

	if chkMileSmsYn.Checked then Param := Param + '│' + 'y'                              // 40 고객마일전송 거부 여부 y/n
                          else Param := Param + '│' + 'n';

	if rbAIReCallY.Checked then Param := Param + '│' + 'y' else                             // 41 AIOB 배차지연콜 여부 yn
	if rbAIReCallN.Checked then Param := Param + '│' + 'n'
												 else Param := Param + '│';

	if chkMemoDisplay.Checked then Param := Param + '│' + 'y'                              // 42 //상담메모 자동 표시 사용여부
														else Param := Param + '│' + 'n';

	Param := Param + '│' + FloatToStr(cedtLimitCountB.Value);                            // 43 법인이용한도 횟수(월간)
	Param := Param + '│' + FloatToStr(cedtLimitAmtB.Value);                              // 44 법인이용한도 금액(월간)
	Param := Param + '│' + Trim(edt_CbPositionName.Text);                                     // 45 직책명
//	if chk_RejectBaechaSmsYn.Checked then Param := Param + '│' + 'y'                     // 45 배차문자수신거부
//																	 else Param := Param + '│' + 'n';

	if not RequestBase(GetCallable06('SET_CUSTOMER', 'MNG_CUSTOMER.SET_CUSTOMER', En_Coding(Param)), XmlData, ErrCode, ErrMsg) then
	begin
		GMessagebox(Format('고객정보 저장중 오류가 발생하였습니다.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
		Exit;
	end;

	GMessagebox('저장되었습니다.', CDMSI);
end;

procedure TFrm_CUT011.proc_search_brKeyNum(sBrNo, sKeyNum: string);
var
  i: Integer;
begin
	cboBranch.Tag := 10;
	for i := 0 to cboBranch.Properties.Items.Count - 1 do
	begin
		if (Pos(sBrNo, cboBranch.Properties.Items[i]) > 0) and (Pos(sKeyNum, cboBranch.Properties.Items[i]) > 0) then
		begin
			cboBranch.ItemIndex := i;
			cboBranchPropertiesChange(cboBranch);
			Break;
		end;
	end;
	cboBranch.Tag := 0;
	//AI 아웃바운드 옵션 배차지연콜 사용여부
	proc_AIOB_CtrlYN;
end;

procedure TFrm_CUT011.SetCustBrTelYN(const Value: string);
begin
  FCustBrTelYN := LowerCase(Value);
  chkBrTelYN.Checked := (FCustBrTelYN = 'y');
end;

procedure TFrm_CUT011.chkBrTelYNClick(Sender: TObject);
begin
	CustBrTelYN := IfThen(chkBrTelYN.Checked, 'y', 'n');
end;

procedure TFrm_CUT011.cboBranchPropertiesChange(Sender: TObject);
begin
	GetCustGroup(Proc_MainKeyNumberSearch, CustGroup);
  SetCustLevelData;
	if cboBranch.Tag <> 10 then
		//AI 아웃바운드 옵션 배차지연콜 사용여부
		proc_AIOB_CtrlYN;
end;

procedure TFrm_CUT011.SetCustLevelData;
var
  I: Integer;
begin
  cboCuLevel.Properties.Items.Clear;

  for I := 0 to Length(CustGroup.LevelInfo) - 1 do
     cboCuLevel.Properties.Items.Add(CustGroup.LevelInfo[I].LevelName);

  DefaultCustLevel;
end;

procedure TFrm_CUT011.DefaultCustLevel;
begin
   SetCustLevelSeq(CustGroup.Default.LevelSeq);
end;

procedure TFrm_CUT011.edtCuNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

function TFrm_CUT011.GetCustLevelSeq: string;
var i : Integer;
begin
  Result := '';
  for I := 0 to Length(CustGroup.LevelInfo) - 1 do
  begin
    if CustGroup.LevelInfo[I].LevelName = cboCuLevel.Text then
    begin
      Result := CustGroup.LevelInfo[I].LevelSeq;
      Break;
    end;
  end;
end;

procedure TFrm_CUT011.SetCustLevelSeq(ASeq: string);
var
  I: Integer;
begin
  cboCuLevel.ItemIndex := -1;

  for I := 0 to Length(CustGroup.LevelInfo) - 1 do
  begin
     if CustGroup.LevelInfo[I].LevelSeq = ASeq then
     begin
      cboCuLevel.ItemIndex := I;
      Break;
     end;
  end;
end;

procedure TFrm_CUT011.nm_CustSMSClick(Sender: TObject);
var sCustTel, sKeyNum, sTmp : string;
    iPos2 : Integer;
    iSelRow : Integer;
begin
  // 고객 전화번호로 문자 전송하기.  2011.06.23 ADD.
  if cxCustTel.DataController.RowCount < 1 then Exit;

  iSelRow := cxCustTel.DataController.FocusedRecordIndex;

  try
    sTmp := cboBranch.Text;
    while (True) do
    begin
      iPos2 := Pos('[', Copy(sTmp, 1, Length(sTmp)));
      if iPos2 = 0 then
      begin
        sKeyNum := Copy(sTmp, 1, Pos(']', sTmp) - 1);
        Break;
      end;
      sTmp := Copy(sTmp, iPos2 + 1, Length(sTmp));
    end;

    sCustTel := cxCustTel.DataController.Values[iSelRow, 0];

    if StrToIntDef(copy(sCustTel, 1, 2), 0) <> 1 then
    begin
      GMessagebox('고객번호가 핸드폰이 아닙니다.' + #13#10 + '문자메세지를 보낼수 없습니다.', CDMSE);
      Exit;
    end;

    if Not Assigned(Frm_SMS01) then Frm_SMS01 := TFrm_SMS01.Create(Nil);
    Frm_SMS01.mm_message.Text := '';
    sKeyNum := StringReplace(sKeyNum, '-', '', [rfReplaceAll]);
    Frm_SMS01.ed_send.Text := sKeyNum;
    Frm_SMS01.ls_sms.Items.Clear;
    Frm_SMS01.ls_sms.Items.Add(sCustTel);
    Frm_SMS01.Proc_Init;
		Frm_SMS01.sSendKind := '';
		Frm_SMS01.rdo_SMS.visible := False;
		Frm_SMS01.rdo_PUSH.visible := False;
//		Frm_SMS01.PageControl1.ActivePageIndex := 1;
		Frm_SMS01.Show;

  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_CUT011.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

function TFrm_CUT011.proc_AIOB_CtrlYN: string;
var sTmp : string;
begin
	SetDebugeWrite('TFrm_CUT011.proc_AIOB_CtrlYN');
	try
		sTmp := '';

		sTmp := Proc_MainKeyNumberSearch;
		if not GetAIOBKeyNumberYN(sTmp) then   //고객이 선택되어 있어도 지사의 대표번호에서 사용안하면 체크해제
		begin
     	grpAIReCall.Enabled := False;
		end else
		begin
      grpAIReCall.Enabled := True;
		end;
    img2.Visible := Not grpAIReCall.Enabled;

		Result := sTmp;
	except
		Result := '';
	end;
end;

procedure TFrm_CUT011.Hide_Panel(Panel: string; Showhide: integer);
begin
  if ( Not Assigned(Frm_JON30) ) Or ( Frm_JON30 = Nil ) then Exit;
  if Showhide = 0 then Frm_JON30.Show
  else
  if Showhide = 1 then
  begin
    if (Panel = 'meoStartAreaCUT') OR (Panel = 'meoEndAreaCUT') then
    begin
      Frm_JON30.Hide;
    end else
    begin
      Frm_JON30.Hide;
    end;
  end;

  if Panel = 'meoStartAreaCUT' then
  begin
    Frm_JON30.pnl_01START.Visible := True;
    Frm_JON30.pnl_02END.Visible := False;
    Frm_JON30.pnl_03VIA.Visible := False;
  end else
  if Panel = 'meoEndAreaCUT' then
  begin
    Frm_JON30.pnl_01START.Visible := False;
    Frm_JON30.pnl_02END.Visible := True;
    Frm_JON30.pnl_03VIA.Visible := False;
  end;
end;

procedure TFrm_CUT011.img2Click(Sender: TObject);
begin
	if ( Not Assigned(Frm_AIC10) ) Or ( Frm_AIC10 = Nil ) then
		Frm_AIC10 := TFrm_AIC10.Create(Nil);
	Frm_AIC10.Show;
end;

procedure TFrm_CUT011.meoEndAreaCUTExit(Sender: TObject);
begin
  if Assigned(Frm_JON30) and (not (meoEndAreaCUT.Focused)) then
    Hide_Panel('meoEndAreaCUT',1);
end;

procedure TFrm_CUT011.Grid_Clear(Panel: string; Grid: Integer);
begin
  if Panel = 'meoStartAreaCUT' then
  begin
    if Grid = 1 then
    begin
      Frm_JON30.AdvStringGrid1.Clear;
      Frm_JON30.AdvStringGrid1.RowCount := 2;

      Frm_JON30.AdvStringGrid1.Cells[0, 0] := '시도';
      Frm_JON30.AdvStringGrid1.Cells[1, 0] := '시군구';
      Frm_JON30.AdvStringGrid1.Cells[2, 0] := '읍면동';
      Frm_JON30.AdvStringGrid1.Cells[3, 0] := '세부지명';
      Frm_JON30.AdvStringGrid1.Cells[4, 0] := '인근POI';
      Frm_JON30.AdvStringGrid1.Cells[5, 0] := '거리(m)';
      Frm_JON30.AdvStringGrid1.Cells[6, 0] := 'X좌표';
      Frm_JON30.AdvStringGrid1.Cells[7, 0] := 'Y좌표';
      Frm_JON30.AdvStringGrid1.ShowSelection := False;
    end else
    if Grid = 2 then
    begin
      Frm_JON30.AdvStringGrid2.Clear;
      Frm_JON30.AdvStringGrid2.RowCount := 1;
      Frm_JON30.AdvStringGrid2.ShowSelection := False;
    end else
    if Grid = 3 then
    begin
      Frm_JON30.AdvStringGrid3.Clear;
      Frm_JON30.AdvStringGrid3.RowCount := 1;
      Frm_JON30.AdvStringGrid3.ShowSelection := False;
    end;
  end else
  if Panel = 'meoEndAreaCUT' then
  begin
    if Grid = 1 then
    begin
      Frm_JON30.AdvStringGrid5.Clear;
      Frm_JON30.AdvStringGrid5.RowCount := 2;

      Frm_JON30.AdvStringGrid5.Cells[0, 0] := '시도';
      Frm_JON30.AdvStringGrid5.Cells[1, 0] := '시군구';
      Frm_JON30.AdvStringGrid5.Cells[2, 0] := '읍면동';
      Frm_JON30.AdvStringGrid5.Cells[3, 0] := '세부지명';
      Frm_JON30.AdvStringGrid5.Cells[4, 0] := '인근POI';
      Frm_JON30.AdvStringGrid5.Cells[5, 0] := '거리(m)';
      Frm_JON30.AdvStringGrid5.Cells[6, 0] := 'X좌표';
      Frm_JON30.AdvStringGrid5.Cells[7, 0] := 'Y좌표';
      Frm_JON30.AdvStringGrid5.ShowSelection := False;
    end else
    if Grid = 2 then
    begin
      Frm_JON30.AdvStringGrid4.Clear;
      Frm_JON30.AdvStringGrid4.RowCount := 1;
      Frm_JON30.AdvStringGrid4.ShowSelection := False;
    end else
    if Grid = 3 then
    begin
      Frm_JON30.AdvStringGrid6.Clear;
      Frm_JON30.AdvStringGrid6.RowCount := 1;
      Frm_JON30.AdvStringGrid6.ShowSelection := False;
    end;
  end;
end;

procedure TFrm_CUT011.lcs_Clear(Panel: string);
begin
  if Panel = 'meoStartAreaCUT' then
  begin
    lcsSta1 := '';
    lcsSta2 := '';
    lcsSta3 := '';
    cxtSA1.Text := '';
    cxtSA2.Text := '';
    cxtSA3.Text := '';
    lblStartAreaName.Caption := '';
    cxtStartAreaDetail.Text := '';
    cxtStartXval.Text := '';
    cxtStartYval.Text := '';
  end else
  if Panel = 'meoEndAreaCUT' then
  begin
    lcsEnd1 := '';
    lcsEnd2 := '';
    lcsEnd3 := '';
    cxtEd1.Text := '';
    cxtEd2.Text := '';
    cxtEd3.Text := '';
    lblEndAreaName.Caption := '';
    cxtEndAreaDetail.Text := '';
    cxtEndXval.Text := '';
    cxtEndYval.Text := '';
  end;
end;

procedure TFrm_CUT011.Proc_AreaSearchKDown_Added(Key: Word);
begin
  if (lcsActiveEdit = 'meoEndArea') and (GS_SEARCH_ENDNOSEARCH = True) then Exit;  //도착지 검색 안함 2012.05.29 KHS
  if not (key in [vk_F7..vk_F12]) then
  begin
    if ((lcsActiveEdit = 'meoStartAreaCUT') and (Length(WideString(meoStartAreaCUT.Text)) >= 2))
      or ((lcsActiveEdit = 'meoEndAreaCUT') and (Length(WideString(meoEndAreaCUT.Text)) >= 2)) then
    begin
      Application.ProcessMessages;

      if not Frm_JON30.noSearch then      //advgrid3 클릭 시 재 검색 안됨.
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
         Hide_Panel(lcsActiveEdit,0);
        end else
        if GS_MAP_AREA_AUTOSHOW = False then
        begin
          Frm_JON30.chk_Map(False);
          Hide_Panel(lcsActiveEdit,0);
        end;
        Frm_JON30.tmThread.Interval := 90;
        Frm_JON30.tmThread.Enabled := True;
      end else
      begin
        Frm_JON30.noSearch := False;
      end;
    end;
  end;
end;

procedure TFrm_CUT011.meoEndAreaCUTKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxMemo(sender).Text := Enc_Control(TcxMemo(sender).Text);	
	lcsActiveEdit := 'meoEndAreaCUT'; // 활성화 된 출발지, 도착지 Edit 구분을 저장.

  if Key in [VK_DOWN] then
  begin
    if Frm_JON30.AdvStringGrid5.Cells[0,1] = '' then
    begin
      if Frm_JON30.AdvStringGrid4.Cells[0,0] = '' then
      begin
        if Frm_JON30.AdvStringGrid6.Cells[0,0] <> '' then
        begin
          Frm_JON30.AdvStringGrid5.ShowSelection := False;
          Frm_JON30.AdvStringGrid4.ShowSelection := False;
          Frm_JON30.AdvStringGrid6.ShowSelection := True;
          Frm_JON30.AdvStringGrid6.SetFocus;
//-          Frm_JON30.AdvStringGrid6.FocusCell(0,0);
        end;
      end else
      begin
        Frm_JON30.AdvStringGrid5.ShowSelection := False;
        Frm_JON30.AdvStringGrid4.ShowSelection := True;
        Frm_JON30.AdvStringGrid6.ShowSelection := False;
        Frm_JON30.AdvStringGrid4.SetFocus;
        Frm_JON30.AdvStringGrid4.FocusCell(0,0);
      end;
    end else
    begin
      Frm_JON30.AdvStringGrid5.ShowSelection := True;
      Frm_JON30.AdvStringGrid4.ShowSelection := False;
      Frm_JON30.AdvStringGrid6.ShowSelection := False;
//-      Frm_JON30.AdvStringGrid5.FocusCell(1,1);
      Frm_JON30.AdvStringGrid5.SetFocus;
    end;
  end else
  if Key = VK_BACK then
  begin
//		 Frm_JON30.gb2ndSearch := False; //확장검색 진행 막음
		 J30ShowS := False;
	end else
  if Key = VK_RETURN then
  begin
    if lcsActiveEdit = 'meoEndAreaCUT' then
    begin
      if Frm_JON30.Visible = True then
      begin
        if Frm_JON30.AdvStringGrid5.Cells[0,1] <> '' then
        begin
          Frm_JON30.Proc_SendParent(Frm_JON30.AdvStringGrid5.GetRealRow + 1, True);
          Hide_Panel(lcsActiveEdit,1);
        end;
        if (Frm_JON30.AdvStringGrid5.Cells[0,1] = '') and (Frm_JON30.AdvStringGrid4.Cells[0,0] <> '') then
        begin
          Frm_JON30.Proc_SendParent_ADV2(Frm_JON30.AdvStringGrid4.GetRealRow + 1, Frm_JON30.AdvStringGrid4.GetRealCol, True);
          Hide_Panel(lcsActiveEdit,1);
        end;
        meoEndAreaCUT.SetFocus;
      end;
    end;
  end else
  if (Key = vk_delete) then
  begin
     J30ShowS := False;
	end else
//	if (key <> 229) then  //  20191224 한컴입력기 에서는 모든 한글이 229로 넘어옴 그래서 삭제 KHS
	begin
    gKWComp := '';
		if J30ShowS = False then
//		begin
//			Frm_JON30.gb2ndSearch := False; //확장검색 진행 막음
			Proc_AreaSearchKDown_Added(Key);
//		end;
	end;
end;

procedure TFrm_CUT011.meoEndAreaCUTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	lcsActiveEdit := 'meoEndAreaCUT'; // 활성화 된 출발지, 도착지 Edit 구분을 저장.

  // 좌, 우, HOME, END 방향키는 이벤트 타지 않도록 한다.
  if (Key = 37) or (Key = 39) or (Key = 35) or (Key = 36) then
    Exit;
  if Key = VK_RETURN then
  begin
    Key := 0;
    Exit;
  end;

  if Key in [VK_DOWN, VK_UP] then
  begin
    Exit; // 그리드에 포커스 넘기는건 KeyUp Event에서 처리한다.
  end;

  if Key = VK_BACK then
  begin
    if (Length(meoEndAreaCUT.Text) <= 1) then
    begin
      // 키워드가 모두 지워진 상태에서 한번더 BACK 키를 누를경우 컨트롤 초기화 처리.
      lcs_Clear(lcsActiveEdit);

      gKWComp := '';
      gmap_forword := '';

      Grid_Clear(lcsActiveEdit,1);
			Grid_Clear(lcsActiveEdit,2);
			Grid_Clear(lcsActiveEdit,3);
      Hide_Panel(lcsActiveEdit,1);
      Exit;
    end else
    if (Length(meoEndAreaCUT.Text) <= 2) then
    begin
      gmap_forword := '';
{    end else
    if (Length(meoEndAreaCUT.Text) < Length(Frm_Main.Frm_JON01[StrToInt(self.Hint)].map_ls_Text)) then
    begin
      Frm_Main.Frm_JON01[StrToInt(self.Hint)].map_ls_Text := '';
      gmap_forword := '';
-}
    end;
  end;
end;

procedure TFrm_CUT011.cxtStartXvalPropertiesChange(Sender: TObject);
begin
  if Assigned(Frm_JON30) then
  begin
    if TcxTextEdit(Sender).Name = 'cxtStartYval' then
    begin
      if (cxtStartXval.Text = '') and (cxtStartYval.Text = '') then
      begin
        Hide_Panel(lcsActiveEdit,1);
      end else
      begin
        if GS_MAP_AREA_AUTOSHOW and (not Frm_JON30.Visible) then
        begin
          if  J30ShowS = False then
          begin
            Frm_JON30.OnSelectedMap := SetStartAreaMap;
            Hide_Panel(lcsActiveEdit,0);
          end;
        end else
        if GS_MAP_AREA_AUTOSHOW = False then
        begin
          if  J30ShowS = False then
          begin
            Frm_JON30.OnSelectedMap := SetStartAreaMap;
            Hide_Panel(lcsActiveEdit,0);
          end;
        end;

        if  J30ShowS = False then
        begin
          Frm_JON30.StartPos(meoStartAreaCUT.Text, cxtStartXval.Text, cxtStartYval.Text);
        end;
      end;
    end else
    if TcxTextEdit(Sender).Name = 'cxtEndYval' then
    begin
      if  J30ShowE = True then
      begin
        Exit;
      end;
      if (cxtEndXval.Text = '') and (cxtEndYval.Text = '') then
      begin
        Hide_Panel(lcsActiveEdit,1);
      end else
      begin
        if GS_MAP_AREA_AUTOSHOW and (not Frm_JON30.Visible) then
        begin
          if J30ShowE = False then
          begin
            Frm_JON30.OnSelectedMap := SetEndAreaMap;
            Hide_Panel(lcsActiveEdit,0);
          end;
        end else
        if GS_MAP_AREA_AUTOSHOW = False then
        begin
          if J30ShowE = False then
          begin
            Frm_JON30.OnSelectedMap := SetEndAreaMap;
            Hide_Panel(lcsActiveEdit,0);
          end;
        end;
        if  J30ShowS = False then
        begin
          Frm_JON30.EndPos(meoEndAreaCUT.Text, cxtEndXval.Text, cxtEndYval.Text);
        end;
      end;
    end;
  end;

  if (cxtStartXval.Text = '') or (cxtStartYval.Text = '') or (cxtEndXval.Text = '') or (cxtEndYval.Text = '') then
    Exit;
end;

procedure TFrm_CUT011.SetEndAreaMap(const ASido, AGugun, ADong, ADetail, AX,
  AY: string);
begin
  lcsEnd1 := ASido;
  lcsEnd2 := AGugun;
  lcsEnd3 := ADong;
  cxtEd1.Text := ASido;
  cxtEd2.Text := AGugun;
  cxtEd3.Text := ADong;
  if ASido <> '' then
  begin
    lblEndAreaName.Caption := ASido + ' ' + AGugun + ' ' + ADong;
    cxtEndAreaDetail.Text := ADetail;
    if ADetail = '' then
      meoEndAreaCUT.Text := ADong
    else
      meoEndAreaCUT.Text := ADetail;
  end;
  cxtEndXval.Text := AX;
  cxtEndYval.Text := AY;

  meoEndAreaCUT.SetFocus;
end;

procedure TFrm_CUT011.SetStartAreaMap(const ASido, AGugun, ADong, ADetail,
  AX, AY: string);
begin
  lcsSta1 := ASido;
  lcsSta2 := AGugun;
  lcsSta3 := ADong;
  cxtSA1.Text := ASido;
  cxtSA2.Text := AGugun;
  cxtSA3.Text := ADong;
  if ASido <> '' then
  begin
    lblStartAreaName.Caption := ASido + ' ' + AGugun + ' ' + ADong;
    cxtStartAreaDetail.Text := ADetail;
    if ADetail = '' then
      meoStartAreaCUT.Text := ADong
    else
      meoStartAreaCUT.Text := ADetail;
  end;
  cxtStartXval.Text := AX;
  cxtStartYval.Text := AY;

  meoStartAreaCUT.SetFocus;
end;

procedure TFrm_CUT011.Proc_Jon012Show;
begin
  if ( Not Assigned(Frm_JON012) ) Or (Frm_JON012 = Nil ) then
    Frm_JON012 := TFrm_JON012.Create(Self);

	Frm_JON012.iOpen_Gubun := 1;
	Frm_JON012.Hint := Self.Caption;
	Frm_JON012.Tag := 99;               // 다중과거이용내역이 아닐경우 99.
	Frm_JON012.FResize := True;
	Frm_JON012.Width  := StrToIntDef(GS_EnvFile.ReadString('UserHisForm', 'Width', '562'), 562);
	Frm_JON012.FResize := True;
	Frm_JON012.Height := StrToIntDef(GS_EnvFile.ReadString('UserHisForm', 'Height', '277'), 277);

	Frm_JON012.cxPageControl1.Pages[0].TabVisible := False;
  Frm_JON012.cxPageControl1.Pages[1].TabVisible := False;

  Frm_JON012.BtnSheet1.Visible := True;
	Frm_JON012.BtnSheet2.Visible := False;
  Frm_JON012.cxBtnAccept.Visible := False;

 	Frm_JON012.sActivePage := 0;
  Frm_JON012.cxPageControl1.ActivePageIndex := 0;
  Frm_JON012.BtnSheet1.Down := True;
  Frm_JON012.sActivePage := 0;
  Frm_JON012.lbl8.Visible := True;
	Frm_JON012.cxBtnOldSelect.Visible := True;
	Frm_JON012.cxBtnColorSet.Visible := True;
//  Frm_JON012.cbStatesView.Visible := True;
	Frm_JON012.cxChkTitle.Visible := True;
	Frm_JON012.btn_SelStCd.Visible := True;
	Frm_JON012.cxBtnFixPos.Visible := True;
//  Frm_JON012.Pnl_Title.Color := $00D9E6D2;
	Frm_JON012.lb_wkname_title.Visible := False; 
	Frm_JON012.gCUT011CuSeq := Trim(clbCuSeq.Caption);

	if rdoCuGb1.Checked then Frm_JON012.gCUT011CuGb := 0 else
	if rdoCuGb2.Checked then Frm_JON012.gCUT011CuGb := 1 else
	if rdoCuGb3.Checked then Frm_JON012.gCUT011CuGb := 2;

	// 현재 할당된 폼 배열값을 저장.(현재 조회한 고객 데이터가 있는지 여부를 체킹)
  fSetFont(Frm_JON012, GS_FONTNAME);
  fSetSkin(Frm_JON012);
	Frm_JON012.Show;
end;

procedure TFrm_CUT011.btnBeforeClick(Sender: TObject);
begin
  if cxCustTel.DataController.RecordCount > 0 then
  begin
    Proc_Jon012Show;
		Frm_JON012.cxBtnOldSelectClick(nil);
  end;
end;

procedure TFrm_CUT011.cboEmailPropertiesChange(Sender: TObject);
begin
	if cboEmail.ItemIndex > 0 then
	begin
		edtCuEmail_Potal.Visible := False;
		cboEmail.Left := 195;
    cboEmail.Width := 134;
	end else
  if cboEmail.ItemIndex = 0 then
	begin
		edtCuEmail_Potal.Visible := True;
		cboEmail.Left := 329;
    cboEmail.Width := 99;
	end;
end;

end.

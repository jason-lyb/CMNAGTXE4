unit xe_CUT013;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, System.StrUtils, cxControls, cxContainer, cxEdit, cxLabel, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ExtCtrls, Menus,
  cxLookAndFeelPainters, cxMemo, cxCheckBox, StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, GradientLabel, Gauges, ComCtrls, AdvGrid, ComObj,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  OleCtrls, SHDocVw, AdvProgressBar, cxLookAndFeels, cxNavigator, cxGroupBox,
  dxSkinsCore, dxSkinscxPCPainter, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_CUT013 = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl5: TPanel;
    cxGridFileExcelList: TcxGrid;
    cxViewFileExcelList: TcxGridDBTableView;
    cxColXls1: TcxGridDBColumn;
    cxColXls2: TcxGridDBColumn;
    cxColXls3: TcxGridDBColumn;
    cxColXls4: TcxGridDBColumn;
    cxColXls5: TcxGridDBColumn;
    cxColXls6: TcxGridDBColumn;
    cxColXls7: TcxGridDBColumn;
    cxColXls8: TcxGridDBColumn;
    cxColXls9: TcxGridDBColumn;
    cxLevelLeveFilelExcelList: TcxGridLevel;
    pnl6: TPanel;
    cxLabel17: TcxLabel;
    cboBranch: TcxComboBox;
    cxLabel3: TcxLabel;
    cboCuBubin: TcxComboBox;
    cxLabel1: TcxLabel;
    edtFilename: TcxTextEdit;
    btnAllResultSearch: TcxButton;
    cxLabel227: TcxLabel;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    cxCheckBox5: TcxCheckBox;
    cxCheckBox6: TcxCheckBox;
    pnl7: TPanel;
    meoError: TcxMemo;
    btnAllSendFile: TcxButton;
    btnAll2: TcxButton;
    cboBubinCode: TcxComboBox;
    dlgOpen: TOpenDialog;
    pnlSmsStatus: TPanel;
    pb1: TProgressBar;
    wb1: TWebBrowser;
    PnlTitle: TPanel;
    cxButton1: TcxButton;
    PnlMain: TPanel;
    cxGroupBox1: TcxGroupBox;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    cxGroupBox2: TcxGroupBox;
    Pnl3: TPanel;
    pbProgress: TAdvProgressBar;
    cxLblActive: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cboBranchClick(Sender: TObject);
    procedure btnAllSendFileClick(Sender: TObject);
    procedure btnAllResultSearchClick(Sender: TObject);
    procedure btnAll2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    function Proc_MainKeyNumberSearch: string;
  public
    { Public declarations }
    err_xls : Boolean;
    iColnum, iRownum : Integer;//�������� ����
    sNum, fNum : integer;
    procedure FControlInitial(bBrNoSetType: boolean = False);
    procedure proc_search_brKeyNum(sBrNo, sKeyNum: string);
    // �������� ����
    procedure proc_bubin_init;
    // ���õ� ������������ �����ڵ�ȣ�� ���� �Ѵ�.
    function Proc_BRNOSearch: string;
    // ���õ� ������������ �����ڵ带 ���� �Ѵ�.
    function Proc_HDNOSearch: string;
    function ExcelToGrid(AFilename: string; AView: TcxGridDBTableView; AGauge: TGauge): Boolean;
    function ExcelToGridEx(AFilename: string; AView: TcxGridDBTableView; AGauge: TGauge): Boolean;
    // ���� ���ó��
    procedure proc_recieve(ls_rxxml: Widestring);
    procedure RunEnable(state : Boolean);
  end;

var
  Frm_CUT013: TFrm_CUT013;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Msg, xe_xml, xe_Flash;


procedure TFrm_CUT013.FControlInitial(bBrNoSetType: boolean);
var
  i : Integer;
begin
  err_xls := False;
  cboCuBubin.Properties.Items.Clear;
  cboCuBubin.ItemIndex := -1; // ���θ�(��������)

  meoError.Text := '';
  edtFilename.Text := '';

  cxCheckBox1.Checked := False;
  cxCheckBox2.Checked := False;
  cxCheckBox3.Checked := False;
  cxCheckBox4.Checked := False;
  cxCheckBox5.Checked := False;
  cxCheckBox6.Checked := False;

  if cboBranch.Properties.Items.Count <> scb_DsBranchCode.Count then
  begin
    cboBranch.Tag := 10;
    // ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
    cboBranch.Properties.Items.Clear; // �����
    // ���縮��Ʈ�� ��´�.
    for i := 0 to scb_DsBranchCode.Count - 1 do
    begin
      // �����ڵ�   // �����ڵ�   // �����   // ��ǥ��ȣ
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      begin
        if GT_SEL_BRNO.HDNO = scb_HeadCode[i] then
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
    // ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
  end;

  // ���� �׸���
  for I := 0 to cxViewFileExcelList.ColumnCount - 1 do
  begin
    cxViewFileExcelList.Columns[i].DataBinding.ValueType := 'String';
  end;
end;

procedure TFrm_CUT013.proc_search_brKeyNum(sBrNo, sKeyNum: string);
var
  i: Integer;
begin
  for i := 0 to cboBranch.Properties.Items.Count - 1 do
  begin
    if (Pos(sBrNo, cboBranch.Properties.Items[i]) > 0) and (Pos(sKeyNum, cboBranch.Properties.Items[i]) > 0) then
    begin
      cboBranch.ItemIndex := i;
      Break;
    end;
  end;
end;

procedure TFrm_CUT013.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_CUT013.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_CUT013.FormCreate(Sender: TObject);
begin
  FControlInitial(True);
end;

procedure TFrm_CUT013.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_CUT013.FormDestroy(Sender: TObject);
begin
  Frm_CUT013 := Nil;
end;

procedure TFrm_CUT013.FormShow(Sender: TObject);
begin
  fSetFont(Frm_CUT013, GS_FONTNAME);

  if (Self.ClientOrigin.X + Self.Width < frm_Main.ClientOrigin.X) or
    (Self.ClientOrigin.X > frm_Main.ClientOrigin.X + frm_Main.Width) then
  begin
    Self.Left := frm_Main.ClientOrigin.X + 200;
  end;

  if (Self.ClientOrigin.Y + Self.Height < frm_Main.ClientOrigin.Y) or
    (Self.ClientOrigin.Y > frm_Main.ClientOrigin.Y + frm_Main.Height) then
  begin
    Self.Top := frm_Main.ClientOrigin.Y + 100;
  end;
end;

procedure TFrm_CUT013.cboBranchClick(Sender: TObject);
begin
  proc_bubin_init;
end;

procedure TFrm_CUT013.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_CUT013.proc_bubin_init;
var
  i: Integer;
  sBrNo, sKeyNum: string;
begin
  cxViewFileExcelList.DataController.SetRecordCount(0);
  sBrNo := Proc_BRNOSearch;
  sKeyNum := Proc_MainKeyNumberSearch;
  cboCuBubin.Properties.Items.Clear;
  cboBubinCode.Properties.Items.Clear;
  cboCuBubin.Properties.Items.Add('����');
  cboBubinCode.Properties.Items.Add('');
  for i := 0 to GT_BUBIN_INFO.brNo_KeyNum.Count - 1 do
  begin
    if GT_BUBIN_INFO.brNo_KeyNum.Strings[i] = Rpad(sbrNo, 5, ' ') + Rpad(StringReplace(sKeyNum, '-', '', [rfReplaceAll]), 15, ' ') then
    begin
      cboCuBubin.Properties.Items.Add(Trim(GT_BUBIN_INFO.cbCorpNm.Strings[i]) + ' / ' +
                                      Trim(GT_BUBIN_INFO.cbDeptNm.Strings[i]));
      cboBubinCode.Properties.Items.Add(GT_BUBIN_INFO.cbcode.Strings[i]);
    end;
  end;
end;

procedure TFrm_CUT013.PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Handle, WM_SYSCOMMAND, $F012, 0);
end;

function TFrm_CUT013.Proc_BRNOSearch: string;
begin
  Result := Copy(cboBranch.Text, Pos('.', cboBranch.Text) + 1, Pos(':',cboBranch.Text) - (Pos('.', cboBranch.Text) + 1)); //�����ڵ�
end;

procedure TFrm_CUT013.btnAllSendFileClick(Sender: TObject);
const
  ls_Param = '<param>ParamString</param>';
var
  rv_str, ls_TxLoad : string;
  sCuType, sCbCode, sCuLevel, sTemp, sSms, sParam, sInfo, sInfo2, sPdaInfo, sPdaInfo2, sBrNo, sHdNo,
  sKeyNumber, OkCashBack: string;
  ls_rxxml, wInfo, wPdaInfo: WideString;
  i, j : Integer;
  asParam: array[1..34] of string;
  slReceive: TStringList;
  ErrCode: integer;
  optionCHK, msg : string;
begin
  RunEnable(False);
  msg := '�������� ����ڰ� ������� üũ�� �׸��� ����� �˴ϴ�.'#13#10#13#10
    + '�ϰ������ �����Ͻðڽ��ϱ�?';

  if GMessagebox(msg, CDMSQ) = IDCANCEL then
  begin
    RunEnable(True);
    Exit;
  end;

  sNum := 0;
	fNum := 0;
  if err_xls = True then
  begin
    GMessagebox('�����ڷῡ ������ �ֽ��ϴ�.' + #13#10 + '�ٽ� �õ����ּ���.', CDMSE);
    exit;
  end
  else
  begin
    meoError.Clear;
    meoError.Lines.Add('==============�ϰ���� ����=======================');
    err_xls := False;
  end;
  if cboBranch.ItemIndex < 0 then
    GMessagebox('������ ���簡 �����ϴ�.' + #13#10 + '���缱���� �ʼ��Դϴ�.', CDMSE);
  if cboCuBubin.ItemIndex < 0 then
    GMessagebox('������ ������ �����ϴ�.' + #13#10 + '���μ����� �ʼ��Դϴ�.', CDMSE);
  sBrNo := Proc_BRNOSearch;
  sHdNo := Proc_HDNOSearch;
  sKeyNumber := Proc_MainKeyNumberSearch;
  sCuType := '3';

  if (sCuType = '3') and (cboCuBubin.ItemIndex > 0) then
  begin
    sCbCode := cboBubinCode.Properties.Items[cboCuBubin.ItemIndex];
    sCbCode := Copy(sCbCode, 1, Pos(',', sCbCode) - 1);
  end
  else
    sCbCode := '';

  pbProgress.Max := 100;
  pbProgress.Position := 0;

  for i := 0 to cxViewFileExcelList.DataController.RowCount - 1 do
  begin
    if cxViewFileExcelList.DataController.Values[i,2] = '�ҷ�' then sCuLevel := '0'
    else if cxViewFileExcelList.DataController.Values[i,2] = '����'   then sCuLevel := '1'
    else if cxViewFileExcelList.DataController.Values[i,2] = '�Ϲ�'   then sCuLevel := '2'
    else if cxViewFileExcelList.DataController.Values[i,2] = '���'   then sCuLevel := '3'
    else if cxViewFileExcelList.DataController.Values[i,2] = '�ֿ��' then sCuLevel := '4'
    else if cxViewFileExcelList.DataController.Values[i,2] = 'VIP'    then sCuLevel := '5'
    else sCuLevel := '9';

    sSms := IfThen(cxViewFileExcelList.DataController.Values[i,4] = '2', 'n', 'y');
    sTemp := Rpad(StringReplace(cxViewFileExcelList.DataController.Values[i,3], '-', '', [rfReplaceAll]), 12, ' ') + Rpad(' ', 20, ' ') + sSms;
    sTemp := sTemp + '|';

    wInfo := cxViewFileExcelList.DataController.Values[i,7];
    wPdaInfo := cxViewFileExcelList.DataController.Values[i,8];
    if Length(wInfo) > 100 then
    begin
      sInfo := Copy(wInfo, 1, 100);
      sInfo2 := Copy(wInfo, 101, Length(wInfo) - 100);
    end
    else
    begin
      sInfo := wInfo;
      sInfo2 := '';
    end;

    if Length(wPdaInfo) > 100 then
    begin
      sPdaInfo := Copy(wPdaInfo, 1, 100);
      sPdaInfo2 := Copy(wPdaInfo, 101, Length(wPdaInfo) - 100);
    end
    else
    begin
      sPdaInfo := wPdaInfo;
      sPdaInfo2 := '';
    end;

    OkCashBack := cxViewFileExcelList.DataController.Values[i,6];
    if Length(OkCashBack) <> 16 then
      OkCashBack := '';


    iColnum := cxViewFileExcelList.GetColumnByFieldName('����').Index;
    iRownum := i;
    asParam[1] := '10';
    asParam[2] := '';
    asParam[3] := sHdNo;
    asParam[4] := sBrNo;
    asParam[5] := sKeyNumber;
    asParam[6] := sCuType;
    asParam[7] := cxViewFileExcelList.DataController.Values[i,1];
    asParam[8] := cxViewFileExcelList.DataController.Values[i,5];
    asParam[9] := En_Coding(GT_USERIF.ID);
    asParam[10] := '';//lcsSta1;
    asParam[11] := '';//lcsSta2;
    asParam[12] := '';//lcsSta3;
    asParam[13] := '';//cxtStartAreaDetail.Text;
    asParam[14] := '';//meoStartAreaCUT.Text;
    asParam[15] := '';//cxtStartXval.Text;
    asParam[16] := '';//cxtStartYval.Text;
    asParam[17] := sInfo;
    asParam[18] := sPdaInfo;
    asParam[19] := '';//lcsEnd1;
    asParam[20] := '';//lcsEnd2;
    asParam[21] := '';//lcsEnd3;
    asParam[22] := '';//cxtEndAreaDetail.Text;
    asParam[23] := '';//meoEndAreaCUT.Text;
    asParam[24] := '';//cxtEndXval.Text;
    asParam[25] := '';//cxtEndYval.Text;
    asParam[26] := sCbCode;
    asParam[27] := sCuLevel;
    asParam[28] := sTemp;
    asParam[29] := '';
    asParam[30] := sInfo2;
    asParam[31] := sPdaInfo2;
    asParam[32] := OkCashBack;
    asParam[33] := 'n';
    if cxCheckBox1.Checked then optionCHK := 'y'
    else optionCHK := 'n';
    if cxCheckBox2.Checked then optionCHK := optionCHK + 'y'
    else optionCHK := optionCHK + 'n';
    if cxCheckBox3.Checked then optionCHK := optionCHK + 'y'
    else optionCHK := optionCHK + 'n';
    if cxCheckBox4.Checked then optionCHK := optionCHK + 'y'
    else optionCHK := optionCHK + 'n';
    if cxCheckBox5.Checked then optionCHK := optionCHK + 'y'
    else optionCHK := optionCHK + 'n';
    if cxCheckBox6.Checked then optionCHK := optionCHK + 'y'
    else optionCHK := optionCHK + 'n';
    optionCHK := optionCHK + 'nn';
		asParam[34] := optionCHK;
		ls_TxLoad := GTx_UnitXmlLoad('CALLABLE.xml');

		sTemp := 'SAVE_CUSTOMER_NEW_V5(?';
    sParam := '';
    for j := 1 to Length(asParam) do
		begin
      sTemp := sTemp + ',?';
      sParam := sParam + StringReplace(ls_Param, 'ParamString', En_Coding(asParam[j]), [rfReplaceAll]);
    end;
    sTemp := sTemp + ')';
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CUT112', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'CallString', sTemp, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'CountString', IntToStr(Length(asParam)), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', sParam, [rfReplaceAll]);

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
//    if (i mod 500) = 0 then begin
//    begin
//      Application.ProcessMessages;
//      pbProgress.Position := i;
//    end;
    pbProgress.Position := (i *100) div cxViewFileExcelList.DataController.RowCount;
  end;
  meoError.Lines.Add('==============�ϰ���� ��=======================');
  pbProgress.Position := 100;
	GMessagebox('�ϰ������ �Ϸ�Ǿ����ϴ�.', CDMSI);
	meoError.Lines.Add('�� ���Ǽ� : ' + inttostr(i) + '�� �� ���� : ' + inttostr(sNum) + '��, ���� : ' + inttostr(fNum) + '��');
	RunEnable(True);
end;

function TFrm_CUT013.ExcelToGrid(AFilename: string;
  AView: TcxGridDBTableView; AGauge: TGauge): Boolean;
var
  I, J: Integer;
  ExcelApp: OleVariant;
begin
  Application.ProcessMessages;
  Result := False;
  try
    ExcelApp := CreateOLEObject('Excel.Application');
  except
    ShowMessage('Excel�� ��ġ�Ǿ� ���� �ʰų�, �ٸ� ���α׷����� ������ ������Դϴ�.');
    Exit;
  end;

  try
    ExcelApp.Visible := False;
    ExcelApp.DisplayAlerts := False;

    try
      ExcelApp.WorkBooks.Open(AFilename);
    except
      ShowMessage('������ ã�� �� �����ϴ�.');
      ExcelApp.WorkBooks.Close;
      Exit;
    end;

    AGauge.Progress := 0;
    AGauge.MaxValue := ExcelApp.ActiveSheet.UsedRange.rows.Count;

    for I := 0 to ExcelApp.ActiveSheet.UsedRange.Columns.Count - 1 do
    begin
      if I > 2 then
        Break;
      AView.Columns[I].Visible := True;
    end;

    AView.BeginUpdate;

    for I := 1 to ExcelApp.ActiveSheet.UsedRange.Rows.Count do
    begin
      AView.DataController.AppendRecord;
      for J := 1 to ExcelApp.ActiveSheet.UsedRange.Columns.Count do
      begin
        if J > 3 then
          Break;
        AView.DataController.Values[I - 1, J - 1] :=
          string(ExcelApp.Cells[I, J]);
      end;
      AGauge.Progress := I
    end;

    Result := True;
  finally
    AView.EndUpdate;
    ExcelApp.WorkBooks.Close;
    ExcelApp.quit;
    ExcelApp := unassigned;
  end;
end;

function TFrm_CUT013.ExcelToGridEx(AFilename: string; AView: TcxGridDBTableView; AGauge: TGauge): Boolean;
var
  FExcel: Variant;
  FWorkbook: Variant;
  FWorksheet: Variant;
  FCell: Variant;
  FArray: Variant;
  I, s,z: Integer;
  rangestr:string;
  startstr,endstr:string;
  code: Integer;
  sr,er,sc,ec: Integer;
  ulc: Boolean;
  OldCursor: TCursor;
  ColCount, RowCount: Integer;
begin
  Result := False;
  
  OldCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;

  try
    FExcel := CreateOleObject('excel.application');
  except
    Screen.Cursor := OldCursor;
    raise EAdvGridError.Create('Excel OLE server not found');
    Exit;
  end;

  try
    FWorkBook := FExcel.WorkBooks.Open(AFilename);
    FWorkSheet := FWorkBook.ActiveSheet;
    rangestr := FWorkSheet.UsedRange.Address;

    //decode here how many cells are required, $A$1:$D$8 for example
    startstr := '';
    endstr := '';

    sc := -1;
    ec := -1;

    if Pos(':',rangestr) > 0 then
    begin
      startstr := Copy(rangestr,1,pos(':',rangestr)-1);
      endstr := Copy(rangestr,pos(':',rangestr)+1,255);

      if pos('$',startstr) = 1 then
        Delete(startstr,1,1);

      if pos('$',endstr) = 1 then
        Delete(endstr,1,1);

      ulc := not (Pos('$',startstr) > 0);

      if pos('$',startstr) > 0 then
        Val(copy(startstr,pos('$',startstr)+1,255),sr,code)
      else
        Val(startstr,sr,code);

      if code <> 0 then
        sr := -1;

      if pos('$',endstr) > 0 then
        Val(copy(endstr,pos('$',endstr)+1,255),er,code)
      else
        Val(endstr,er,code);

      if code <> 0 then
        er := -1;

      // now decode the Columns
      if ulc then
      begin
        sc := 1;
        ec := 256;
      end
      else
      begin
        if pos('$',startstr) > 0 then
          startstr := Copy(startstr,1,pos('$',startstr)-1);

        if pos('$',endstr) > 0 then
          endstr := Copy(endstr,1,pos('$',endstr) - 1);

        if startstr <> '' then
          sc := ord(startstr[1]) - 64;

        if Length(startstr)>1 then
          sc := sc * 26 + ord(startstr[2]) - 64;

        if endstr<>'' then
          ec := ord(endstr[1]) - 64;
        if Length(endstr)>1 then
          ec := ec * 26 + ord(endstr[2]) - 64;
      end;
    end
    else
    begin
      sc := 1;
      sr := 1;
      ec := 1;
      er := 1;
    end;

    if (sr <> -1) and (er <> -1) and (sc <> -1) and (ec <> -1) then
    begin
      ColCount := ec - sc + 1;
      RowCount := er - sr + 1;
    end;

    rangestr := Chr(ord('A') - 1 + sc) + IntToStr(sr)+':';

    if (ColCount > 26) then
    begin
      rangestr := rangestr + chr(ord('A') - 1 + ((ec - sc) div 26));
      rangestr := rangestr + chr(ord('A') + ((ec - sc) mod 26));
    end
    else
      rangestr := rangestr + Chr(ord('A') - 1 + ec);

    rangestr := rangestr + IntToStr(er);

    pbProgress.Max := 100;
    pbProgress.Position := 0;

    for I := 0 to ColCount - 1 do
    begin
      if I > 15 then
        Break;
      AView.Columns[I].Visible := True;
    end;

    FArray := FWorkSheet.Range[RangeStr].Value;

    AView.BeginUpdate;
    AView.DataController.RecordCount := RowCount-1;
    meoError.Clear;
    meoError.Lines.Add('==============���� �� ��������=======================');
    err_xls := False;
    if (FArray[1,1] <> '����')                 or  (FArray[1,2] <> '����')          or  (FArray[1,3] <> '�����') or  (FArray[1,4] <> '��ȭ��ȣ') or
       (FArray[1,5] <> 'SMS(1:����,2:�̼���)') or  (FArray[1,6] <> '�ֹ�/����ڹ�ȣ') or  (FArray[1,7] <> 'OKĳ����') or  (FArray[1,8] <> '���޸�') or  (FArray[1,9] <> '������') then
    begin
      err_xls := True;
      meoError.Lines.Add('�������� : ������ ��������� �ƴմϴ�. ��Ŀ� �°� �ۼ����ּ���.');
      GMessagebox('������ ��������� �ƴմϴ�.' + #13#10 + '�ϰ���Ͼ���� �ٿ�޾Ƽ� �ۼ����ּ���.', CDMSE);
      Exit;
    end;

    try
      for s := 2 to RowCount do
      begin
        for z := 1 to ColCount do
        begin
          if z > 15 then
            Break;
          if s <> 1 then
          begin
            FCell := StringReplace(FArray[s,z], '-', '', [rfReplaceAll]);
            case z of
            1  : if FCell = ''                              then
                 begin
                   meoError.Lines.Add('�������� : ' + IntToStr(s-1) + '��° �������� ����');
                   err_xls := True;
                 end;
            2  : if (Length(FCell) > 20) and (FCell <> '')  then
                 begin
                   meoError.Lines.Add('�������� : ' + IntToStr(s-1) + '��° ���� ���� ����');
                   err_xls := True;
                 end;
            3  :
                 begin
                   if FCell = '' then
                   begin
                     meoError.Lines.Add('�������� : ' + IntToStr(s-1) + '��° ����� ����');
                     err_xls := True;
                   end
                   else
                   begin
                     if Copy(widestring(FCell),1,2) = '�ҷ�' then FCell := '�ҷ�'
                     else if Copy(widestring(FCell),1,2) = '����' then FCell := '����'
                     else if Copy(widestring(FCell),1,2) = '�Ϲ�' then FCell := '�Ϲ�'
                     else if Copy(widestring(FCell),1,2) = '���' then FCell := '���'
                     else if Copy(widestring(FCell),1,2) = '�ֿ�' then FCell := '�ֿ��'
                     else if Copy(widestring(FCell),1,2) = 'VI' then FCell := 'VIP'
                     else
                     begin
                       meoError.Lines.Add('�������� : ' + IntToStr(s-1) + '��° ����޸�Ī ����');
                       err_xls := True;
                     end;
                   end;
                 end;
            4  : if FCell = ''    then
                 begin
                   meoError.Lines.Add('�������� : ' + IntToStr(s-1) + '��° ��ȭ��ȣ ���� ����');
                   err_xls := True;
                 end
                 else
                 if (Length(FCell) < 9) or (Length(FCell) > 11) then
                 begin
                   meoError.Lines.Add('�������� : ' + IntToStr(s-1) + '��° ��ȭ��ȣ ���� ����');
                   err_xls := True;
                 end;
            5  : if (FCell = '') or (StrToInt(FCell) > 3)                            then
                 begin
                   meoError.Lines.Add('�������� : ' + IntToStr(s-1) + '��° SMS���ſ��� �̻�');
                   err_xls := True;
                 end;
            6  : if FCell <> '' then
                 begin
                   if (Length(FCell) = 10) or (Length(FCell) = 13) then
                   begin
                   end
                   else
                   begin
                     meoError.Lines.Add('�������� : ' + IntToStr(s-1) + '��° �ֹ�/����ڹ�ȣ ���� ����');
                     err_xls := True;
                   end;
                 end;
            7  : if (Length(FCell) <> 16) and (FCell <> '') then
                 begin
                   meoError.Lines.Add('�������� : ' + IntToStr(s-1) + '��° OKĳ���� ���� ����');
                   err_xls := True;
                 end;
            8  : if (Length(FCell) > 300) then
                 begin
                   meoError.Lines.Add('�������� : ' + IntToStr(s-1) + '��° ���޸� ���� ����');
                   err_xls := True;
                 end;
            9  : if (Length(FCell) > 300) then
                 begin
                   meoError.Lines.Add('�������� : ' + IntToStr(s-1) + '��° ������ ���� ����');
                   err_xls := True;
                 end;
            end;

            if VarIsClear(FCell) then
              FCell := EmptyStr;

            AView.DataController.Values[s-2, z-1] := FCell;
          end;
        end;
        pbProgress.Position := I*7;
{        if s mod 100 = 0 then
        begin
          AGauge.Progress := s;
          Application.ProcessMessages;
        end;                          }
      end;
      meoError.Lines.Add('==============���� �� ������=======================');
    finally
      AView.EndUpdate;
    end;

    FWorkBook.Close(SaveChanges:=False);

    pbProgress.Position := 100;

    Result := True;
  finally
    FExcel.Quit;
    FExcel := UnAssigned;
    Screen.Cursor := OldCursor;
  end;
end;

function TFrm_CUT013.Proc_MainKeyNumberSearch: string;
var
  iPos1, iPos2: Integer;
  sKeyNumber, sTmp: string;
begin
  Result := '';
  iPos1 := 0;
  sTmp := cboBranch.Text;
  if sTmp = '' then
    Exit;
    
  while (True) do
  begin
    iPos2 := Pos('[', Copy(sTmp, 1, Length(sTmp)));
    if iPos2 = 0 then
    begin
      sKeyNumber := Copy(sTmp, 1, Length(sTmp) - 1);
      Break;
    end;
    iPos1 := iPos2;
    sTmp := Copy(sTmp, iPos2 + 1, Length(sTmp));
  end;
  //sKeyNumber := Copy(cboBranch.Text, iPos1 + 1, Length(cboBranch.Text)-(1+iPos1));
  Result := sKeyNumber;
end;

procedure TFrm_CUT013.btnAllResultSearchClick(Sender: TObject);
var
  I: Integer;
begin
  try
    cxViewFileExcelList.DataController.SetRecordCount(0);
    meoError.clear;
    err_xls := False;
//    lblFileExcelStatus.Caption := '';
    pbProgress.Max := 100;
    pbProgress.Position := 0;

    for I := 0 to cxViewFileExcelList.ColumnCount - 1 do
    begin
      cxViewFileExcelList.Columns[I].Visible := False;
    end;

    try
      dlgOpen.Filter := '��������(*.xls;*.xlsx)|*.xls;*.xlsx';
      if dlgOpen.Execute then
      begin
        edtFilename.Text := dlgOpen.FileName;

        pnlSmsStatus.Left := (frm_main.Width - pnlSmsStatus.Width) div 2;
        pnlSmsStatus.Top := ((frm_main.Height - pnlSmsStatus.Height) div 2) - self.Top;
        pnlSmsStatus.Caption := '���� ������ �ҷ��ɴϴ�.';
        pnlSmsStatus.Visible := True;
        Application.ProcessMessages;

        if not ExcelToGridEx(edtFilename.Text, cxViewFileExcelList, nil) then
        begin
          ShowMessage('���������� �ҷ����µ� �����߽��ϴ�. ���������� Ȯ���Ͻð� �ٽ� �õ��� �ּ���.');
          Exit;
        end;

        Application.ProcessMessages;
//        lblFileSmsTotal.Caption := '�� ' + IntToStr(cxViewFileExcelList.DataController.RecordCount) + ' ��';
      end;
    except
    end;
  finally
    pnlSmsStatus.Visible := False;
  end;
end;

function TFrm_CUT013.Proc_HDNOSearch: string;
begin
  Result := Copy(cboBranch.Text, 1, Pos('.', cboBranch.Text) - 1); // �����ڵ�
end;

procedure TFrm_CUT013.proc_recieve(ls_rxxml: Widestring);
var
  ls_ClientKey, ls_Msg_Err : string;
  sMsg : string;
begin
  try
    lcsActiveEdit := 'meoEndAreaCUT'; // Ȱ��ȭ �� �����, ������ Edit ������ ����.
    ls_ClientKey := GetXmlClientKey(ls_rxxml);
    ls_ClientKey := Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5);
    case StrToIntDef(ls_ClientKey, 1) of
      1:
        begin
        end;
      2:
        begin
          ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
          sMsg := GetXmlErrorMsg(ls_rxxml);
          if ('0000' = ls_Msg_Err) and ('1' = sMsg) then
          begin
            cxViewFileExcelList.DataController.Values[iRownum,iColnum] := '����';
            sNum := sNum + 1;
          end else
          begin
            cxViewFileExcelList.DataController.Values[iRownum,iColnum] := '����';
            meoError.Lines.Add('������� : ' + IntToStr(fNum) + '��° ����Ÿ �Է¾ȵ�');
            fNum := fNum + 1;
          end;
        end;
    end;
  except
    RunEnable(True);
  end;
end;

procedure TFrm_CUT013.btnAll2Click(Sender: TObject);
begin
  wb1.Navigate(MAP_URL + 'BList.xls');
end;

procedure TFrm_CUT013.RunEnable(state : Boolean);
begin
  if state then
  begin
    pnl6.Enabled := True;
    cxCheckBox1.Enabled := True;
    cxCheckBox2.Enabled := True;
    cxCheckBox3.Enabled := True;
    cxCheckBox4.Enabled := True;
    cxCheckBox5.Enabled := True;
    cxCheckBox6.Enabled := True;
  end else
  begin
    pnl6.Enabled := False;
    cxCheckBox1.Enabled := False;
    cxCheckBox2.Enabled := False;
    cxCheckBox3.Enabled := False;
    cxCheckBox4.Enabled := False;
    cxCheckBox5.Enabled := False;
    cxCheckBox6.Enabled := False;
  end;
end;

end.
unit xe_SMSA2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, IniFiles,
  Dialogs, MSXML2_TLB, ComObj, dxCore, cxGraphics, cxControls, cxLookAndFeels, AdvGrid,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel,
  cxCurrencyEdit, IdCoder, IdCoder3to4, IdCoderMIME, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, Vcl.ImgList, Vcl.ExtCtrls, cxMemo,
  Vcl.StdCtrls, cxTextEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxCheckBox, cxButtons, cxGroupBox, AdvProgressBar, dxSkinsCore,
  dxSkinDevExpressStyle, dxSkinscxPCPainter, cxMaskEdit, cxDropDownEdit,
  System.ImageList;

type
  TFrm_SMSA2 = class(TForm)
    cxLabel97: TcxLabel;
    cxLabel118: TcxLabel;
    cxLabel120: TcxLabel;
    cxLabel121: TcxLabel;
    cxLabel122: TcxLabel;
    btnFileSearch: TcxButton;
    cxLabel123: TcxLabel;
    cxLabel124: TcxLabel;
    lblFileSmsTotal: TLabel;
    cxLabel125: TcxLabel;
    chkFileRecordTelNo: TcxCheckBox;
    chkRemoveTel: TcxCheckBox;
    cxLabel126: TcxLabel;
    btnRemoveDuplicate: TcxButton;
    cxGridFileExcelList: TcxGrid;
    cxViewFileExcelList: TcxGridDBTableView;
    cxLevelLeveFilelExcelList: TcxGridLevel;
    cxLabel127: TcxLabel;
    cxLabel128: TcxLabel;
    btnSendFile: TcxButton;
    tmrFileSms: TTimer;
    cbb_level: TComboBox;
    cxGridFileBranch: TcxGrid;
    cxViewFileBranch: TcxGridDBTableView;
    cxCol8: TcxGridDBColumn;
    cxCol9: TcxGridDBColumn;
    cxCol10: TcxGridDBColumn;
    cxCol11: TcxGridDBColumn;
    cxLevelFileBranch: TcxGridLevel;
    lst_tel: TListBox;
    dlgOpen: TOpenDialog;
    cxColXls1: TcxGridDBColumn;
    cxColXls2: TcxGridDBColumn;
    cxColXls3: TcxGridDBColumn;
    lblFileExcelStatus: TLabel;
    cxColViewFileExcelListColumn4: TcxGridDBColumn;
    cxColViewFileExcelListColumn5: TcxGridDBColumn;
    ilDown: TImageList;
    dlgSave: TSaveDialog;
    itcSMS: TIdTCPClient;
    cxColXls4: TcxGridDBColumn;
    cxColXls5: TcxGridDBColumn;
    cxColXls6: TcxGridDBColumn;
    cxColXls7: TcxGridDBColumn;
    cxColXls8: TcxGridDBColumn;
    cxColXls9: TcxGridDBColumn;
    cxColXls10: TcxGridDBColumn;
    cxColXls11: TcxGridDBColumn;
    cxColXls12: TcxGridDBColumn;
    cxColXls13: TcxGridDBColumn;
    cxColXls14: TcxGridDBColumn;
    cxColXls15: TcxGridDBColumn;
    cxColXls16: TcxGridDBColumn;
    chkSMSLog: TcxCheckBox;
    btnSMSLog: TcxButton;
    pnlSMSLog: TPanel;
    cxLabel20: TcxLabel;
    mmoSMSLog: TcxMemo;
    btnSelBranch: TcxButton;
    cxLabel101: TcxLabel;
    lblFileStep1: TcxLabel;
    lblFileStep2: TcxLabel;
    lblFileStep3: TcxLabel;
    lblFileStep4: TcxLabel;
    lblFileStep5: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel11: TcxLabel;
    chkRemoveMember: TcxCheckBox;
    chkRemoveWorker: TcxCheckBox;
    chkRemoveKISA: TcxCheckBox;
    chkRemoveSpamAll: TcxCheckBox;
    btnRemove: TcxButton;
    btnSMSResultDown: TcxButton;
    chkRemoveUser: TcxCheckBox;
    chkRemoveAll: TcxCheckBox;
    lblFileSms: TcxLabel;
    IdEncoderMIME1: TIdEncoderMIME;
    cxCol12: TcxGridDBColumn;
    PnlMainA2: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    PnlRight: TPanel;
    edtSelBranch: TcxTextEdit;
    edtFilename: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    BtnClose: TcxButton;
    pnlSmsStatus: TPanel;
    pb1: TAdvProgressBar;
    Gauge1: TAdvProgressBar;
    cbb_Balsin: TcxComboBox;
    cbKeynumber02: TcxComboBox;
    cbb_cust_tel: TcxComboBox;
    cbb_cust_name: TcxComboBox;
    grp3: TcxGroupBox;
    lblSendCount: TLabel;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure tmrFileSmsTimer(Sender: TObject);
    procedure cbb_levelChange(Sender: TObject);
    procedure cxViewFileBranchCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnFileSearchClick(Sender: TObject);
    procedure chkFileRecordTelNoClick(Sender: TObject);
    procedure cbb_cust_nameChange(Sender: TObject);
    procedure btnRemoveDuplicateClick(Sender: TObject);
    procedure btnSendFileClick(Sender: TObject);
    procedure chkNotSmsClick(Sender: TObject);
    procedure chkSMSLogClick(Sender: TObject);
    procedure cxLabel20MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnSMSLogClick(Sender: TObject);
    procedure btnSelBranchClick(Sender: TObject);
    procedure edt_BalsinKeyPress(Sender: TObject; var Key: Char);
    procedure btnRemoveClick(Sender: TObject);
    procedure chkRemoveAllClick(Sender: TObject);
    procedure chkRemoveUserClick(Sender: TObject);
    procedure Memo1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure btnSMSResultDownClick(Sender: TObject);
  private
    { Private declarations }
    lCurProperties : TcxCurrencyEditProperties;

    FNoRecvDispList: Boolean;

    FRmvMemList,
    FRmvWkList: TStringList;
    FNoRecvList: TStringList;

    procedure proc_init_filesms;
    procedure proc_init_filesms_blocktel;

    function GetRowIndexSameValue(AcxView: TcxGridDBTableView; ACol: Integer; AValue: string;
      ADefault: Integer = -1): Integer; // default -1(nothing)
    procedure RecvResultFileSmsBranchList(ls_rxxml: WideString);
    procedure RecvResultFileRmvMember(AList: TStringList);
    procedure RecvResultFileRmvWorker(AList: TStringList);

    function ExcelToGridEx(AFilename: string; AView: TcxGridDBTableView; AGauge: TAdvProgressBar): Boolean;
    procedure RecvResultFileSmsNoSms(ls_rxxml: WideString);

    procedure RequestData(AData: string);
    procedure RequestDataList(AData: string);
    procedure WriteSMSLog(ALog: string);
    function GetCallmanerSMSList(const APath: string; var AData: string): Boolean;

    procedure RemoveSMSMember;
    procedure RemoveSMSWorker;
    procedure RemoveSMSKISA;
    procedure RemoveSMSSpamAll;
    procedure RemoveSMSUser;

        // 서버 시간 로드
    function func_sysdate: string;
    procedure proc_sms_trans;
  public
    { Public declarations }
    dt_sysdate2: string;
    procedure proc_init;
    // 전문 응답 처리
    procedure proc_recieve(ls_rxxml: Widestring);
    procedure proc_recieve_list(AList: TStringList);
    function func_recieve(ls_rxxml: Widestring): Boolean;
    function func_res_cnt(sTime: string): Integer;
    procedure proc_BrNameSet;
  end;

  function GetFileDesc(APath: string): string;

var
  Frm_SMSA2: TFrm_SMSA2;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_XmlProtocal, xe_xml, xe_Flash, xe_system, xe_SMS;


type
  TEncryptType = (etBlowfish = 100);

const
  CallSMSKey = 'l2t7y9we5bv6m7am4fs79gs4d5a7zj4u';

procedure TFrm_SMSA2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(lCurProperties);

  if Assigned(FRmvMemList) then FreeAndNil(FRmvMemList);
  if Assigned(FRmvWkList) then FreeAndNil(FRmvWkList);
  if Assigned(FNoRecvList) then FreeAndNil(FNoRecvList);

  Action := Cafree;
end;

procedure TFrm_SMSA2.proc_recieve(ls_rxxml: Widestring);
var
  xdom: msDomDocument;
  ls_ClientKey, ls_Msg_Err: string;
begin
  try
    xdom := ComsDomDocument.Create;
    Screen.Cursor := crHourGlass;
    try
      ls_rxxml := ls_rxxml;
      if not xdom.loadXML(ls_rxxml) then
      begin
        Screen.Cursor := crDefault;
        Exit;
      end;

      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_ClientKey := GetXmlClientKey(ls_rxxml);

        if ls_ClientKey = 'CASH0001' then RecvResultFileSmsBranchList(ls_rxxml) else
        if ls_ClientKey = 'NOSM0001' then RecvResultFileSmsNoSms(ls_rxxml);
      end  else
      begin
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
      end;
    except
    end;
  Finally
    xdom := Nil;
  end;
end;

procedure TFrm_SMSA2.proc_recieve_list(AList: TStringList);
var
  xdom: msDomDocument;
  ls_ClientKey, ls_Msg_Err, ls_rxxml: string;
begin
  try
    xdom := ComsDomDocument.Create;
    Screen.Cursor := crHourGlass;
    try
      ls_rxxml := AList[0];
      if not xdom.loadXML(ls_rxxml) then
      begin
        Screen.Cursor := crDefault;
        Exit;
      end;

      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_ClientKey := GetXmlClientKey(ls_rxxml);

        if ls_ClientKey = 'RMVMEM' then
          RecvResultFileRmvMember(AList)
        else if ls_ClientKey = 'RMVWK' then
          RecvResultFileRmvWorker(AList)
        ;
      end else
      begin
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
      end;
    except
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_SMSA2.proc_BrNameSet;
var
  sName: string;
  StrList: TStringList;
begin
  sName := GetSosokInfo;

	StrList := TStringList.Create;
  cbKeynumber02.Tag := 1;
  try
    if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
    begin
      GetBrTelList(GT_SEL_BRNO.HDNO, StrList);
      cbKeynumber02.Properties.Items.Assign(StrList);
    end else
    begin
			GetBrTelList(GT_SEL_BRNO.BrNo, StrList);
			cbKeynumber02.Properties.Items.Assign(StrList);
    end;
	finally
		StrList.Free;
  end;

  sName := GetSosokInfo;

  if cbKeynumber02.Properties.Items.Count >= 1 then
    cbKeynumber02.Properties.Items.Insert(0, '번호선택');

  cbKeynumber02.ItemIndex := 0;
  cbKeynumber02.Tag := 0;
end;

procedure TFrm_SMSA2.FormCreate(Sender: TObject);
begin
  FRmvMemList := TStringList.Create;
  FRmvWkList  := TStringList.Create;

  lCurProperties := TcxCurrencyEditProperties.Create(Nil);

  FNoRecvList := TStringList.Create;
  FNoRecvList.Duplicates := dupIgnore;
  FNoRecvList.Sorted := True;

  proc_init;
end;

procedure TFrm_SMSA2.FormDestroy(Sender: TObject);
begin
  Frm_SMSA2 := Nil;
end;

procedure TFrm_SMSA2.proc_init;
begin
  proc_BrNameSet;
  proc_init_filesms;
end;

procedure TFrm_SMSA2.proc_init_filesms;
var
  I: integer;
  ls_TxQry, ls_TxLoad, swhere, sQueryTemp : string;
begin
  try
    // 금액관련 설정
    lCurProperties.ReadOnly := True;
    lCurProperties.Nullable := True;
    lCurProperties.DisplayFormat := '#,##0.#';
    lCurProperties.Alignment.Horz := taRightJustify;
    lCurProperties.Alignment.Vert := taVCenter;
    if TCK_USER_PER.JON_BrchCashView = '1' then
      lCurProperties.EchoMode := eemNormal
    else
      lCurProperties.EchoMode := eemPassword;

    // 지사그리드
    cxViewFileBranch.Columns[0].DataBinding.ValueType := 'String';
    cxViewFileBranch.Columns[1].DataBinding.ValueType := 'Currency';
    cxViewFileBranch.Columns[1].Properties := lCurProperties;
    cxViewFileBranch.Columns[2].DataBinding.ValueType := 'Currency';
    cxViewFileBranch.Columns[2].Properties := lCurProperties;
    lCurProperties.DisplayFormat := '#,##0';
    cxViewFileBranch.Columns[3].DataBinding.ValueType := 'Currency';
    cxViewFileBranch.Columns[3].Properties := lCurProperties;
    cxViewFileBranch.Columns[4].DataBinding.ValueType := 'String';
    cxViewFileBranch.DataController.SetRecordCount(0);

    // 엑셀 그리드
    for I := 0 to cxViewFileExcelList.ColumnCount - 1 do
    begin
      cxViewFileExcelList.Columns[i].DataBinding.ValueType := 'String';
    end;
  except
  end;

  // 필드 초기화

  edtSelBranch.Clear;
  edtFilename.Clear;

  cbb_Balsin.Properties.Items.Clear;
  cbb_Balsin.Visible := False;

  chkFileRecordTelNo.Checked := True;
  cbKeynumber02.Visible := True;

  cbb_cust_tel.Properties.Items.Clear;
  cbb_cust_name.Properties.Items.Clear;
  cxViewFileExcelList.DataController.SetRecordCount(0);

  btnFileSearch.Enabled := False;
  btnRemoveDuplicate.Enabled := False;
  btnSendFile.Enabled := False;

  tmrFileSms.Enabled := True;
  cbb_level.ItemIndex := 0;
  cbb_level.OnChange(self);

  lblSendCount.Caption := '전송 예상 건수는  0건 입니다.';

  if GT_USERIF.LV <> '60' then
    sWhere := format('WHERE HD_NO = ''%s'' AND BR_NO = ''%s'' ', [GT_USERIF.HD, GT_USERIF.BR])
  else if GT_USERIF.LV = '60' then
  begin
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sWhere := format('WHERE HD_NO = ''%s'' and use_yn = ''y'' ', [GT_SEL_BRNO.HDNO])
    else
      sWhere := format('WHERE HD_NO = ''%s'' and use_yn = ''y'' ', [GT_USERIF.HD]);      
  end;

  try
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_BRANCH_SMSBRANCH_CASH, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sWhere]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CASH0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_SMSA2.cxViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
var
  I: Integer;
begin
  try
    for I := 0 to Sender.ColumnCount - 1 do
    begin
      if I <> AColumn.Index then
      begin
        Sender.Columns[I].SortIndex := -1;
        Sender.Columns[I].SortOrder := soNone;
      end;
    end;

    if (Sender.Columns[AColumn.Index].SortOrder = soNone) or
      (Sender.Columns[AColumn.Index].SortOrder = soDescending) then
      Sender.Columns[AColumn.Index].SortOrder := soAscending
    else
      Sender.Columns[AColumn.Index].SortOrder := soDescending
    ;

    Sender.Columns[AColumn.Index].SortIndex := 0;
    Sender.DataController.FocusedRecordIndex := 0;
  except on E: Exception do
      GMessagebox(PChar('frmChild[cxgGrid1ColumnHeaderClick]Error:' + E.Message), CDMSE);
  end;
end;

function TFrm_SMSA2.func_sysdate: string;
var
  ls_TxLoad, rv_str: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Msg_Err: string;
  ls_Rcrd: TStringList;
  ls_ClientKey: string;
  s: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
  try
    Result := '';

    ls_TxLoad := GetSel01('SYST0001', 'SELECT SYSDATE FROM CDMS_SYSCODE WHERE ROWNUM = 1');

    Screen.Cursor := crHandPoint;
    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if trim(rv_str) <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          try
            xdom := ComsDomDocument.Create;
            if not xdom.loadXML(ls_rxxml) then
            begin
              Screen.Cursor := crDefault;
              Exit;
            end;
            ls_ClientKey := GetXmlClientKey(ls_rxxml);
            ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' = ls_Msg_Err) then
            begin
              if ls_ClientKey = 'SYST0001' then
              begin
                lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                ls_Rcrd := TStringList.Create;
                try
                  GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
                  s := ls_Rcrd[0];
                finally
                  ls_Rcrd.Free;
                end;
                s := StringReplace(s, ' ', '', [rfReplaceAll]);
                s := StringReplace(s, '-', '', [rfReplaceAll]);
                s := StringReplace(s, ':', '', [rfReplaceAll]);
                Result := s;
              end;
            end else
            begin
              GMessagebox(ls_Msg_Err, CDMSE);
            end;
          finally
            xdom := nil;
          end;
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
    Screen.Cursor := crDefault;
  except
    on e: exception do
    begin
      ls_TxLoad := 'frmMain[func_sysdate]:' + e.Message;
      Result := '';
      Assert(False, E.Message);
    end;
  end;
end;

function TFrm_SMSA2.GetRowIndexSameValue(AcxView: TcxGridDBTableView;
  ACol: Integer; AValue: string; ADefault: Integer): Integer;
var
  I: Integer;
begin
  Result := ADefault;
  for I := 0 to AcxView.DataController.RecordCount - 1 do
  begin
    if string(AcxView.DataController.Values[I, ACol]) = AValue then
    begin
      Result := I;
      Exit;
    end;
  end;
end;

function TFrm_SMSA2.func_res_cnt(sTime: string): Integer;
var
  ls_TxQry, ls_TxLoad, ls_Msg_Err, sQueryTemp: string;
  ReceiveStr: string;
  sTime2: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  StrList: TStringList;
  ErrCode: integer;
begin
  Result := -1;
  ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');

  sTime2 := formatdatetime('yyyymmdd', Now) + '210000';

  fGet_BlowFish_Query(GSQ_RES_SMSCNT, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, [sTime, sTime2]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'RESSMS', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

  StrList := TStringList.Create;
  try
    if dm.SendSock(ls_TxLoad, StrList, ErrCode, False) then
    begin
      ReceiveStr := StrList[0];
      if trim(ReceiveStr) <> '' then
      begin
        ls_rxxml := Trim(ReceiveStr);
        try
          xdom := ComsDomDocument.Create;
          try
            if not xdom.loadXML(ls_rxxml) then
              Exit;
            ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' = ls_Msg_Err) then
            begin
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
              Result := StrToIntDef(GetTextSeperationFirst('│', lst_Result.item[0].attributes.getNamedItem('Value').Text), 0);
            end
            else
              Result := -1;
          finally
            xdom := nil;
          end;
        except
          Result := -1;
        end;
      end;
    end;
  finally
    StrList.Free;
  end;
end;

procedure TFrm_SMSA2.tmrFileSmsTimer(Sender: TObject);
begin
  case cbb_level.ItemIndex of
    0:
      begin
        lblFileStep2.Caption := '';
        lblFileStep3.Caption := '';
        lblFileStep4.Caption := '';
        lblFileStep5.Caption := '';
        lblFileStep1.Style.Font.Size := 15;
        case length(Trim(lblFileStep1.Caption)) of
          0: lblFileStep1.Caption := '▶';
          2: lblFileStep1.Caption := '▶▶';
          4: lblFileStep1.Caption := '▶▶▶';
          6: lblFileStep1.Caption := '';
        end;
      end;
    1:
      begin
        lblFileStep1.Style.Font.Size := 8;
        lblFileStep1.Caption := '완료';
        lblFileStep3.Caption := '';
        lblFileStep4.Caption := '';
        lblFileStep5.Caption := '';
        lblFileStep2.Style.Font.Size := 15;
        case length(Trim(lblFileStep2.Caption)) of
          0: lblFileStep2.Caption := '▶';
          2: lblFileStep2.Caption := '▶▶';
          4: lblFileStep2.Caption := '▶▶▶';
          6: lblFileStep2.Caption := '';
        end;
      end;
    2:
      begin
        lblFileStep1.Style.Font.Size := 8;
        lblFileStep2.Style.Font.Size := 8;
        lblFileStep3.Style.Font.Size := 15;
        lblFileStep1.Caption := '완료';
        lblFileStep2.Caption := '완료';
        lblFileStep4.Caption := '';
        lblFileStep5.Caption := '';
        case length(Trim(lblFileStep3.Caption)) of
          0: lblFileStep3.Caption := '▶';
          2: lblFileStep3.Caption := '▶▶';
          4: lblFileStep3.Caption := '▶▶▶';
          6: lblFileStep3.Caption := '';
        end;
      end;
    3:
      begin
        lblFileStep3.Style.Font.Size := 8;
        lblFileStep1.Style.Font.Size := 8;
        lblFileStep2.Style.Font.Size := 8;
        lblFileStep4.Style.Font.Size := 15;
        lblFileStep5.Style.Font.Size := 8;
        lblFileStep1.Caption := '완료';
        lblFileStep2.Caption := '완료';
        lblFileStep3.Caption := '완료';
        lblFileStep5.Caption := '';
        case length(Trim(lblFileStep4.Caption)) of
          0: lblFileStep4.Caption := '▶';
          2: lblFileStep4.Caption := '▶▶';
          4: lblFileStep4.Caption := '▶';
          6: lblFileStep4.Caption := '';
        end;
      end;
    4:
      begin
        lblFileStep4.Style.Font.Size := 8;
        lblFileStep3.Style.Font.Size := 8;
        lblFileStep1.Style.Font.Size := 8;
        lblFileStep2.Style.Font.Size := 8;
        lblFileStep1.Caption := '완료';
        lblFileStep2.Caption := '완료';
        lblFileStep3.Caption := '완료';
        lblFileStep4.Caption := '완료';
        case length(Trim(lblFileStep4.Caption)) of
          0: lblFileStep5.Caption := '▶';
          2: lblFileStep5.Caption := '▶▶';
          4: lblFileStep5.Caption := '▶';
          6: lblFileStep5.Caption := '';
        end;
      end;
    5:
      begin
        lblFileStep1.Style.Font.Size := 8;
        lblFileStep2.Style.Font.Size := 8;
        lblFileStep3.Style.Font.Size := 8;
        lblFileStep4.Style.Font.Size := 8;
        lblFileStep5.Style.Font.Size := 8;
        lblFileStep1.Caption := '완료';
        lblFileStep2.Caption := '완료';
        lblFileStep3.Caption := '완료';
        lblFileStep4.Caption := '완료';
        lblFileStep5.Caption := '완료';
      end;
  end;
end;

procedure TFrm_SMSA2.cbb_levelChange(Sender: TObject);
begin
  lblFileStep1.Clear;
  lblFileStep2.Clear;
  lblFileStep3.Clear;
  lblFileStep4.Clear;
  lblFileStep5.Clear;
end;

{-------------------------------------------------------------------------------
  Procedure: TfrmSMS.RecvResultFileSmsBranchList
  Descript:  대용량파일 지사목록 수신
  Author:    hskim
  DateTime:  2008.12.17
  Arguments: ls_rxxml: WideString
  Result:    None
-------------------------------------------------------------------------------}

procedure TFrm_SMSA2.RecvResultFileSmsBranchList(ls_rxxml: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  i, iRow: Integer;
  AddIdx: Integer;

  sBrNo, sBrName: string;
  Sms_Cash, iCnt: Double;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ls_rxxml) then Exit;

    //----------------------------------------------------------------------------------------------
    //   지사별 SMS캐쉬, 광고 전송가능 갯수 표시( 1개에 13원 ) --> 13원에서 16원으로 변경됨 2008-01-02 최도순
    //----------------------------------------------------------------------------------------------
    if (0 < GetXmlRecordCount(ls_rxxml)) then
    begin
      lst_Result :=
        xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

      cxViewFileBranch.DataController.SetRecordCount(0);

      ls_Rcrd := TStringList.Create;
      try
        for i := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

    			sBrNo := ls_Rcrd[2];
    			if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB   패밀리지사일때
    			begin
    				if not Check_ALLHD(GT_SEL_BRNO.HDNO) then      //전체지사권한이 없을때
    				begin
    					if scb_FamilyBrCode.IndexOf(sBrNo) = -1 then   //권한있는 지사일경우만 그리드표기
    					else
    					begin
    						iRow := scb_BranchCode.IndexOf(sBrNo);
    						sBrName := '';
    						if iRow >= 0 then
    							sBrName := scb_BranchName.Strings[iRow];
    						Sms_Cash := StrToFloatDef(ls_Rcrd[0], 0);
    						// 13원에서 16원으로 변경됨 2008-01-02 최도순

    						// 서버에서 받아온금액(scb_SMSCASH[iRow])으로 변경됨 2012.05.22KHS
    						iCnt := Sms_Cash / StrToFloat(ls_Rcrd[4]);//SMSCASH;

    						// 파일전송 지사 그리드 표시
    						AddIdx := cxViewFileBranch.DataController.AppendRecord;
    						cxViewFileBranch.DataController.SetValue(AddIdx, 4, sBrNo);
    						cxViewFileBranch.DataController.Values[AddIdx, 0] := sBrName;
    						cxViewFileBranch.DataController.Values[AddIdx, 1] := Sms_Cash;
    						cxViewFileBranch.DataController.Values[AddIdx, 2] := ls_Rcrd[4];
    						cxViewFileBranch.DataController.SetValue(AddIdx, 3, iCnt);
    					end;
    				end	else
    				begin
    					iRow := scb_BranchCode.IndexOf(sBrNo);
    					sBrName := '';
    					if iRow >= 0 then
    						sBrName := scb_BranchName.Strings[iRow];
    					Sms_Cash := StrToFloatDef(ls_Rcrd[0], 0);
    					// 13원에서 16원으로 변경됨 2008-01-02 최도순

    					// 서버에서 받아온금액(scb_SMSCASH[iRow])으로 변경됨 2012.05.22KHS
    					iCnt := Sms_Cash / StrToFloat(ls_Rcrd[4]);//SMSCASH;

    					// 파일전송 지사 그리드 표시
    					AddIdx := cxViewFileBranch.DataController.AppendRecord;
    					cxViewFileBranch.DataController.SetValue(AddIdx, 4, sBrNo);
    					cxViewFileBranch.DataController.Values[AddIdx, 0] := sBrName;
    					cxViewFileBranch.DataController.Values[AddIdx, 1] := Sms_Cash;
    					cxViewFileBranch.DataController.Values[AddIdx, 2] := ls_Rcrd[4];
    					cxViewFileBranch.DataController.SetValue(AddIdx, 3, iCnt);
    				end;
    			end	else
    			begin
    				iRow := scb_BranchCode.IndexOf(sBrNo);
    				sBrName := '';
    				if iRow >= 0 then
    					sBrName := scb_BranchName.Strings[iRow];
    				Sms_Cash := StrToFloatDef(ls_Rcrd[0], 0);
    				// 13원에서 16원으로 변경됨 2008-01-02 최도순

    				// 서버에서 받아온금액(scb_SMSCASH[iRow])으로 변경됨 2012.05.22KHS
    				iCnt := Sms_Cash / StrToFloat(ls_Rcrd[4]);//SMSCASH;

    				// 파일전송 지사 그리드 표시
    				AddIdx := cxViewFileBranch.DataController.AppendRecord;
    				cxViewFileBranch.DataController.SetValue(AddIdx, 4, sBrNo);
    				cxViewFileBranch.DataController.Values[AddIdx, 0] := sBrName;
    				cxViewFileBranch.DataController.Values[AddIdx, 1] := Sms_Cash;
    				cxViewFileBranch.DataController.Values[AddIdx, 2] := ls_Rcrd[4];
    				cxViewFileBranch.DataController.SetValue(AddIdx, 3, iCnt);
    			end;
    		end;
      finally
        ls_Rcrd.Free;
      end;
    end;
  finally
    xdom := nil;
  end;
end;

procedure TFrm_SMSA2.cxViewFileBranchCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnSelBranch.Click;
end;

function TFrm_SMSA2.func_recieve(ls_rxxml: Widestring): Boolean;
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  ls_MSG_Err, ls_ClientKey: string;
  ls_XML: Widestring;
  ls_RV_Cnt: Integer;
  I: Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    ls_XML := ls_rxxml;
    xdom := ComsDomDocument.Create;
    try
      Result := True;

      if not xdom.loadXML(ls_XML) then
      begin
        Result := False;
        Exit;
      end;
      ls_MSG_Err := GetXmlErrorCode(ls_XML);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_RV_Cnt := GetXmlRecordCount(ls_XML);
        if (0 < ls_RV_Cnt) then
        begin
          ls_ClientKey := GetXmlClientKey(ls_XML);
          if ls_ClientKey = 'CUST0001' then
          begin
          end else
          if ls_ClientKey = 'NOSM0001' then
          begin
            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
            ls_Rcrd := TStringList.Create;
            try
              for i := 0 to lst_Result.length - 1 do
              begin
                GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                lst_tel.Items.Add(ls_Rcrd[0]);
              end;
            finally
              ls_Rcrd.Free;
            end;
            if UpperCase(GetXmlHasMore(ls_XML)) = 'N' then
            begin
              result := False;
            end;
          end;
        end else
        begin
          Result := False;
        end;
      end else
      begin
        Result := False;
        GMessagebox(MSG012 + CRLF + ls_Msg_Err, CDMSE);
      end;
      Application.ProcessMessages;
    finally
      xdom := nil;
    end;
  except
    Result := False;
  end;
end;

procedure TFrm_SMSA2.RecvResultFileSmsNoSms(ls_rxxml: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  i: Integer;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ls_rxxml) then
      Exit;
    if (0 < GetXmlRecordCount(ls_rxxml)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      for i := 0 to lst_Result.length - 1 do
      begin
        lst_tel.Items.Add(GetTextSeperationFirst('│', lst_Result.item[i].attributes.getNamedItem('Value').Text));
      end;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_SMSA2.btnFileSearchClick(Sender: TObject);
var
  I: Integer;
begin
  try
    cxViewFileExcelList.DataController.SetRecordCount(0);
    btnRemoveDuplicate.Enabled := False;
    btnSendFile.Enabled := False;
    lblFileExcelStatus.Caption := '';
    Gauge1.Position := 0;

    for I := 0 to cxViewFileExcelList.ColumnCount - 1 do
    begin
      cxViewFileExcelList.Columns[I].Visible := False;
    end;

    try
      dlgOpen.Filter := '엑셀파일(*.xls;*.xlsx)|*.xls;*.xlsx';
      if dlgOpen.Execute then
      begin
        edtFilename.Text := dlgOpen.FileName;

        pnlSmsStatus.Left := (frm_main.Width - pnlSmsStatus.Width) div 2;
        pnlSmsStatus.Top := ((frm_main.Height - pnlSmsStatus.Height) div 2) - self.Top;
        pnlSmsStatus.Caption := '엑셀 파일을 불러옵니다.';
        pnlSmsStatus.Visible := True;
        Application.ProcessMessages;

        if not ExcelToGridEx(edtFilename.Text, cxViewFileExcelList, Gauge1) then
        begin
          ShowMessage('엑셀파일을 불러오는데 실패했습니다. 엑셀파일을 확인하시고 다시 시도해 주세요.');
          Exit;
        end;

        cbb_Balsin.Properties.Items.Clear;
        for I := 0 to cxViewFileExcelList.ColumnCount - 1 do
          if cxViewFileExcelList.Columns[I].Visible then
            cbb_Balsin.Properties.Items.Add(cxViewFileExcelList.Columns[I].Caption);
        cbb_Balsin.Properties.Items.Insert(0, '');

        cbb_cust_tel.Properties.Items.Clear;
        for I := 0 to cxViewFileExcelList.ColumnCount - 1 do
          if cxViewFileExcelList.Columns[I].Visible then
            cbb_cust_tel.Properties.Items.Add(cxViewFileExcelList.Columns[I].Caption);

        cbb_cust_name.Properties.Items.Clear;
        for I := 0 to cxViewFileExcelList.ColumnCount - 1 do
          if cxViewFileExcelList.Columns[I].Visible then
            cbb_cust_name.Properties.Items.Add(cxViewFileExcelList.Columns[I].Caption);
        cbb_cust_name.Properties.Items.Insert(0, '사용안함');

        cbb_Balsin.ItemIndex := 0;
        cbb_cust_tel.ItemIndex := 1;
        cbb_cust_name.ItemIndex := 0;
        cbb_cust_name.Style.Color := clSilver;

        chkFileRecordTelNo.Checked := True;
        chkFileRecordTelNo.OnClick(nil);

        chkRemoveTel.Checked := True;
        btnRemoveDuplicate.Enabled := True;
        cbb_level.ItemIndex := 2;
        cbb_level.OnChange(nil);

        Application.ProcessMessages;
        lblFileSmsTotal.Caption := '총 ' + IntToStr(cxViewFileExcelList.DataController.RecordCount) + ' 건';
      end;
    except
    end;
  finally
    pnlSmsStatus.Visible := False;
  end;
end;

function TFrm_SMSA2.ExcelToGridEx(AFilename: string;
  AView: TcxGridDBTableView; AGauge: TAdvProgressBar): Boolean;
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
      end else
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
    end else
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

    AGauge.Position := 0;
    AGauge.Max := RowCount;

    for I := 0 to ColCount - 1 do
    begin
      if I > 15 then
        Break;
      AView.Columns[I].Visible := True;
    end;

    FArray := FWorkSheet.Range[RangeStr].Value;

    AView.BeginUpdate;
    AView.DataController.RecordCount := RowCount;
    try
      for s := 1 to RowCount do
      begin
        for z := 1 to ColCount do
        begin
          if z > 16 then
            Break;
            
          FCell := FArray[s,z];

          if VarIsClear(FCell) then
            FCell := EmptyStr;

          AView.DataController.Values[s-1, z-1] := FCell;
        end;
        if s mod 100 = 0 then
        begin
          AGauge.Position := s;
          Application.ProcessMessages;
        end;
      end;
    finally
      AView.EndUpdate;
    end;

    FWorkBook.Close(SaveChanges:=False);

    AGauge.Position := AGauge.Max;

    Result := True;
  finally
    FExcel.Quit;
    FExcel := UnAssigned;
    Screen.Cursor := OldCursor;
  end;
end;

procedure TFrm_SMSA2.chkFileRecordTelNoClick(Sender: TObject);
begin
  if chkFileRecordTelNo.Checked then
  begin
    cbKeynumber02.Visible := True;
    cbKeynumber02.SetFocus;
    cbb_Balsin.Visible := False;
  end else
  begin
    cbKeynumber02.Visible := False;
    cbb_Balsin.Visible := True;
    cbb_Balsin.Text := '';
  end;
end;

procedure TFrm_SMSA2.cbb_cust_nameChange(Sender: TObject);
begin
  if TCombobox(sender).ItemIndex = 0 then
    TCombobox(sender).Color := clsilver
  else
    TCombobox(sender).Color := clWhite;
end;

procedure TFrm_SMSA2.proc_init_filesms_blocktel;
var
  I: Integer;
  ls_TxQry, ls_TxLoad, sQueryTemp: string;
  StrList: TStringList;
  ErrCode: integer;
begin
  lst_tel.Items.Clear;
  ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
  fGet_BlowFish_Query(GSQ_BRANCH_SMS_NO, sQueryTemp);

  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    ls_TxQry := Format(sQueryTemp, [GT_SEL_BRNO.HDNO])
  else
    ls_TxQry := Format(sQueryTemp, [GT_USERIF.HD]);

  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'NOSM0001', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '2500', [rfReplaceAll]);

  StrList := TStringList.Create;
  Screen.Cursor := crHandPoint;
  pnlSmsStatus.Left := (frm_main.Width - pnlSmsStatus.Width) div 2;
  pnlSmsStatus.Top := ((frm_main.Height - pnlSmsStatus.Height) div 2) - Self.Top;
  pnlSmsStatus.Caption := '수신거부 목록을 받아오고 있습니다.';
  pnlSmsStatus.Visible := True;
  Application.ProcessMessages;
  try
    if dm.SendSock(ls_TxLoad, StrList, ErrCode, False) then
    begin
      Frm_Flash.cxPBar1.Properties.Max := StrList.Count;
      Frm_Flash.cxPBar1.Position := 0;
      for I := 0 to StrList.Count - 1 do
      begin
        Frm_Flash.cxPBar1.Position := i + 1;
        Frm_Flash.lblCnt.Caption := Format('%d / %d', [I + 1, StrList.Count]);
        if trim(StrList[I]) <> '' then
        begin
          Application.ProcessMessages;
          func_recieve(StrList[I]);
        end;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    StrList.Free;
    Frm_Flash.Hide;
    pnlSmsStatus.Visible := False;
  end;
end;

procedure TFrm_SMSA2.btnRemoveDuplicateClick(Sender: TObject);
var
  i, j, iKeyCust, icustcompare: Integer;
  sBalsin, scust_tel: string;
  sSms_Not: AnsiString;
begin
  if (cbb_Balsin.ItemIndex = -1) or (cbb_cust_tel.ItemIndex = -1) or
    (cbb_cust_name.ItemIndex = -1) then
  begin
    GMessagebox('발신, 수신번호, 고객명은 항상 선택을 해야 합니다.', cdmsi);
    exit;
  end;

  if (chkFileRecordTelNo.Checked) and (cbKeynumber02.ItemIndex = 0) then
  begin
    GMessagebox('발산(대표번호)는 직접입력 체크시 반드시 선택해야 합니다.', cdmsi);
    cbKeynumber02.SetFocus;
    Exit;
  end;

  if lst_tel.Count = 0 then
  begin
    proc_init_filesms_blocktel;
    lblFileExcelStatus.Caption := '수신거부자 목록을 받아옵니다.';
  end;

  sSms_Not := '';
  icustcompare := cxViewFileExcelList.GetColumnByFieldName('고객대표번호').Index;

  //----------------------------------------------------------------------------------------------
  //                  일반 전화번호 체크( 앞두자리가 01인경우만 가능 )
  //----------------------------------------------------------------------------------------------
  if chkRemoveTel.Checked then
  begin
    i := 0;
    j := 0;

    Gauge1.Position := 0;
    Gauge1.Max := cxViewFileExcelList.DataController.RecordCount;

    WriteSMSLog(Format('SMS 파일 중복제거를 시작합니다. [대상 건수: %d]', [cxViewFileExcelList.DataController.RecordCount]));

    cxViewFileExcelList.BeginUpdate;
    try
      lblFileExcelStatus.Caption := '일반 전화번호를 지웁니다.';
      WriteSMSLog(Format('일반 전화번호를 지웁니다. [대상 건수: %d]', [cxViewFileExcelList.DataController.RecordCount]));

      while cxViewFileExcelList.DataController.RecordCount - 1 >= I do
      begin
        scust_tel := cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex];
        if StrToIntDef(copy(sCust_Tel, 1, 2), 2) = 1 then
        begin
          cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex] := cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex];
          inc(I);
        end else
        begin
  //        cxViewFileExcelList.DataController.DeleteRecord(cxViewFileExcelList.ViewData.Records[I].RecordIndex)
          WriteSMSLog(Format('[%d] %s', [J, scust_tel]));
          cxViewFileExcelList.DataController.DeleteRecord(I);
        end;
        inc(j);
        Gauge1.Position := j;
        Application.ProcessMessages;
      end;
      lblFileSmsTotal.Caption := '총 ' + FormatFloat('#,##0', StrToFloatDef(IntToStr(cxViewFileExcelList.DataController.RecordCount), 0.0)) + ' 건';
      WriteSMSLog(Format('일반전화번호를 [%d] 건 제거했습니다.', [J - cxViewFileExcelList.DataController.RecordCount]));
    finally
      cxViewFileExcelList.EndUpdate;
    end;
  end else
  begin
    Gauge1.Position := 0;
    Gauge1.Max := cxViewFileExcelList.DataController.RecordCount;
    for i := 0 to cxViewFileExcelList.DataController.RecordCount - 1 do
    begin
      cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex] := cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex];
      Gauge1.Position := i;
      Application.ProcessMessages;
    end;
  end;

  //----------------------------------------------------------------------------------------------
  // 고객번호와 대표번호를 비교 (정렬후 위와 아래 비교)
  // 위와 같은게 있을경우 '0', 처음일경우 '1' 표시
  // '0' 인 항목 삭제
  //----------------------------------------------------------------------------------------------
  if chkFileRecordTelNo.Checked then
  begin
    lblFileExcelStatus.Caption := '';

    Gauge1.Position := 0;
    Gauge1.Max := cxViewFileExcelList.DataController.RecordCount;

    i := 0;
    lblFileExcelStatus.Caption := '고객번호 중복데이터를 검사합니다.';

    cxViewFileExcelList.Columns[cbb_cust_tel.ItemIndex].SortOrder := soAscending;

    cxViewFileExcelList.BeginUpdate;
    try
      while cxViewFileExcelList.DataController.RowCount - 2 >= i do
      begin
        Application.ProcessMessages;

        if cxViewFileExcelList.ViewData.Records[I].Values[cbb_cust_tel.ItemIndex] =
              cxViewFileExcelList.ViewData.Records[I + 1].Values[cbb_cust_tel.ItemIndex] then // or
          cxViewFileExcelList.DataController.SetValue(cxViewFileExcelList.ViewData.Records[I].RecordIndex, icustcompare, '0')
        else
          cxViewFileExcelList.DataController.SetValue(cxViewFileExcelList.ViewData.Records[I].RecordIndex, icustcompare, '1');

        Inc(i);
        Gauge1.Position := i;
      end;
    finally
      cxViewFileExcelList.EndUpdate;
    end;

    j := 0;
    i := 0;
    Gauge1.Max := cxViewFileExcelList.DataController.RecordCount;
    lblFileExcelStatus.Caption := '고객번호 중복데이터를 제거합니다.';

    WriteSMSLog(Format('고객번호 중복데이터를 제거합니다. [대상 건수: %d]', [cxViewFileExcelList.DataController.RecordCount]));
    cxViewFileExcelList.BeginUpdate;
    try
      while cxViewFileExcelList.DataController.RecordCount - 1 >= I do
      begin
        if cxViewFileExcelList.DataController.Values[I, icustcompare] = '0' then
        begin
          WriteSMSLog(Format('[%d] %s', [J, cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex]]));
          cxViewFileExcelList.DataController.DeleteRecord(I)
        end
        else
          inc(i);
        inc(j);
        Gauge1.Position := j;
        Application.ProcessMessages;
      end;
      WriteSMSLog(Format('고객번호 중복데이터를 [%d] 건 제거했습니다.', [J - cxViewFileExcelList.DataController.RecordCount]));
    finally
      cxViewFileExcelList.EndUpdate;
    end;
  end else
  begin
    cxViewFileExcelList.BeginUpdate;
    try
      Gauge1.Position := 0;
      Gauge1.Max := cxViewFileExcelList.DataController.RecordCount;

      iKeyCust := cxViewFileExcelList.GetColumnByFieldName('고객+대표').Index;

      lblFileExcelStatus.Caption := '대표번호별 고객번호 중복 데이터를 조합합니다.';
      for I := 0 to cxViewFileExcelList.DataController.RecordCount - 1 do
      begin
        sBalsin   := RemovePhone(cxViewFileExcelList.DataController.Values[I, cbb_Balsin.ItemIndex - 1]);

        if cbKeynumber02.Properties.Items.IndexOf(sBalsin) > 0 then
        begin
          sCust_tel := cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex];
          cxViewFileExcelList.DataController.Values[I, iKeyCust] := sBalsin + '-' + sCust_tel;
        end else
        begin
          GMessagebox('발신(대표번호)에 승인되지 않은 번호(' + sBalsin + ')가 있습니다.', cdmsi);
          Exit;
        end;

        Gauge1.Position := i + 1;
        Application.ProcessMessages;
      end;
      lblFileExcelStatus.Caption := '';
    finally
      cxViewFileExcelList.EndUpdate;
    end;

    cxViewFileExcelList.Columns[iKeyCust].SortOrder := soAscending;

    cxViewFileExcelList.BeginUpdate;
    try
      Gauge1.Position := 0;
      Gauge1.Max := cxViewFileExcelList.DataController.RecordCount;

      lblFileExcelStatus.Caption := '대표번호별 고객번호 중복 데이터를 검사합니다.';
      for I := 0 to cxViewFileExcelList.DataController.RecordCount - 2 do
      begin
        Application.ProcessMessages;
        if cxViewFileExcelList.ViewData.Records[I].Values[iKeyCust] =
              cxViewFileExcelList.ViewData.Records[I + 1].Values[iKeyCust] then // or
          cxViewFileExcelList.DataController.SetValue(cxViewFileExcelList.ViewData.Records[I].Index, icustcompare, '0')
        else
          cxViewFileExcelList.DataController.SetValue(cxViewFileExcelList.ViewData.Records[I].Index, icustcompare, '1');
        Gauge1.Position := i + 1;
      end;
      Gauge1.Position := Gauge1.Max;
    finally
      cxViewFileExcelList.EndUpdate;
    end;

    cxViewFileExcelList.BeginUpdate;
    try
      j := 0;
      i := 0;
      Gauge1.Max := cxViewFileExcelList.DataController.RecordCount;
      lblFileExcelStatus.Caption := '대표번호별 고객번호 중복 데이터를 제거합니다.';
      WriteSMSLog(Format('대표번호별 고객번호 중복 데이터를 제거합니다. [대상 건수: %d]', [cxViewFileExcelList.DataController.RecordCount]));
      while cxViewFileExcelList.DataController.RecordCount - 1 >= I do
      begin
        Application.ProcessMessages;
        if cxViewFileExcelList.DataController.Values[I, icustcompare] = '0' then
        begin
          WriteSMSLog(Format('[%d] %s', [J, cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex]]));
          cxViewFileExcelList.DataController.DeleteRecord(I)
        end
        else
          inc(i);
        inc(j);
        Gauge1.Position := j;
      end;
      Gauge1.Position := Gauge1.Max;
      WriteSMSLog(Format('대표번호별 고객번호 중복 데이터를 [%d] 건 제거했습니다.', [J - cxViewFileExcelList.DataController.RecordCount]));
    finally
      cxViewFileExcelList.EndUpdate;
    end;
  end;

  //----------------------------------------------------------------------------------------------
  // 선택한 지사(SMS차감 지사)에 수신거부자 제거
  //----------------------------------------------------------------------------------------------

  Gauge1.Position := 0;
  lblFileExcelStatus.Caption := '고객 데이터중 수신거부자 데이터를 제거합니다.';
  WriteSMSLog(Format('고객 데이터중 수신거부자 데이터를 제거합니다. [대상 건수: %d]', [cxViewFileExcelList.DataController.RecordCount]));

  lst_tel.Sorted := True;
//  sSms_Not := lst_tel.Items.Text;
  Gauge1.Max := cxViewFileExcelList.DataController.RecordCount;
  i := 0;
  j := 0;
  cxViewFileExcelList.BeginUpdate;
  try
    while cxViewFileExcelList.DataController.RecordCount - 1 >= I do
    begin
      Application.ProcessMessages;
      sCust_tel := CallToStr(cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex]);
      if lst_tel.Items.IndexOf(scust_tel) >= 0 then
      begin
        WriteSMSLog(Format('[%d] %s', [J, sCust_tel]));
        cxViewFileExcelList.DataController.DeleteRecord(I)
      end
      else
        inc(i);
      inc(j);
      Gauge1.Position := j;
    end;
    WriteSMSLog(Format('고객 데이터중 수신거부 데이터를 [%d] 건 제거했습니다.', [J - cxViewFileExcelList.DataController.RecordCount]));
  finally
    cxViewFileExcelList.EndUpdate;
  end;
  sSms_Not := '';
//  Application.ProcessMessages;

  cbb_level.ItemIndex := 3;
  cbb_level.OnChange(self);
  btnSendFile.Enabled := True;
  lblFileSmsTotal.Caption := '총 ' + FormatFloat('#,##0', StrToFloatDef(inttostr(cxViewFileExcelList.DataController.RecordCount), 0.0)) + ' 건';
  lblSendCount.Caption := '전송 예상 건수는 ' + formatfloat('#,##0', StrToFloatDef(inttostr(cxViewFileExcelList.DataController.RecordCount), 0.0)) + '건 입니다.'
end;

procedure TFrm_SMSA2.btnSendFileClick(Sender: TObject);
begin
  try
    GS_CUTSMS := False;
    Frm_Main.procMenuCreateActive(1001, 'SMS발송');
    proc_sms_trans;
    cbb_level.ItemIndex := 5;
  except
  end;
end;

procedure TFrm_SMSA2.proc_sms_trans;
var
  iRow, i, icnt, ikey_cnt, KeyRow: Integer;
  sBrNo, sTemp: string;
begin
  iCnt := 0;

  Frm_SMS.chkBalsin.Checked := chkFileRecordTelNo.Checked;
  if chkFileRecordTelNo.Checked then
  begin
    Frm_SMS.cbKeynumber01.ItemIndex := cbKeynumber02.ItemIndex;
  end;

  sBrNo := cxViewFileBranch.ViewData.Records[cxViewFileBranch.DataController.FocusedRowIndex].Values[4];

  Frm_SMS.cxViewMsgList.DataController.SetRecordCount(0);
  Frm_SMS.cxViewSendSms.DataController.SetRecordCount(0);
	Frm_SMS.cxViewSms.DataController.SetRecordCount(0);
  Frm_SMS.cxViewKeyNum.DataController.SetRecordCount(0);

  Frm_SMS.btnSendMsg.Enabled := False;

  Frm_SMS.cxViewSms.BeginUpdate;
  Frm_SMS.cxViewKeyNum.BeginUpdate;

  try
    Frm_SMS.cxViewSms.DataController.RecordCount := cxViewFileExcelList.DataController.RecordCount;

    for I := 0 to cxViewFileExcelList.DataController.RecordCount - 1 do
    begin
      // 전송내역 구성
      // 0, 지사코드
      Frm_SMS.cxViewSms.DataController.Values[I, 0] := sBrNo;
      // 1, 대표번호
			if chkFileRecordTelNo.Checked then
				Frm_SMS.cxViewSms.DataController.Values[I, 1] := cbKeynumber02.Text
      else
        Frm_SMS.cxViewSms.DataController.Values[I, 1] := cxViewFileExcelList.ViewData.Records[I].Values[cbb_Balsin.ItemIndex - 1];
      // 2, 고객번호
      Frm_SMS.cxViewSms.DataController.Values[I, 2] := cxViewFileExcelList.ViewData.Records[I].Values[cbb_cust_tel.ItemIndex];
      // 3, 고객명
      if cbb_cust_name.Style.Color = clSilver then
        Frm_SMS.cxViewSms.DataController.SetValue(I, 3, '')
      else
        Frm_SMS.cxViewSms.DataController.Values[I, 3] := cxViewFileExcelList.ViewData.Records[I].Values[cbb_cust_name.ItemIndex - 1];
      Inc(icnt);

      // 대표전화별 전송수 카운팅
      sTemp := Frm_SMS.cxViewSms.DataController.Values[I, 1];
      iRow := GetRowIndexSameValue(Frm_SMS.cxViewKeyNum, 1, sTemp);

      if iRow = -1 then
      begin
        KeyRow := Frm_SMS.cxViewKeyNum.DataController.AppendRecord;
        Frm_SMS.cxViewKeyNum.DataController.Values[KeyRow, 0] := Frm_SMS.cxViewSms.DataController.Values[I, 0];
        Frm_SMS.cxViewKeyNum.DataController.Values[KeyRow, 1] := Frm_SMS.cxViewSms.DataController.Values[I, 1];
        Frm_SMS.cxViewKeyNum.DataController.Values[KeyRow, 2] := 1;
      end else
      begin
        ikey_cnt := Integer(Frm_SMS.cxViewKeyNum.DataController.Values[iRow, 2]);
        Inc(ikey_cnt);
        Frm_SMS.cxViewKeyNum.DataController.SetValue(iRow, 2, ikey_cnt);
      end;
    end;
  finally
    Frm_SMS.cxViewSms.EndUpdate;
    Frm_SMS.cxViewKeyNum.EndUpdate;
  end;

  Frm_SMS.cxViewSms.Columns[1].SortOrder := soAscending;
  cxViewFileExcelList.Columns[cbb_cust_tel.ItemIndex].SortOrder := soAscending;
  Frm_SMS.mmoAfter.Text := IntToStr(iCnt);

  // 외부에서 호출함수
	Frm_SMS.proc_branch_sms;
end;

procedure TFrm_SMSA2.BtnCloseClick(Sender: TObject);
begin
  pnlSMSLog.Hide;
end;

procedure TFrm_SMSA2.chkNotSmsClick(Sender: TObject);
var
  ln_envfile: TInifile;
begin
  ln_envfile := TIniFile.Create(ENVPATHFILE);
  try
    if TcxCheckBox(Sender).Checked then
    begin
      ln_envfile.WriteString('TRANS_SMS', 'CALLMANNER', '1');
      GT_CALLMANNER_NOTSMS := 1;
    end
    else
    begin
      ln_envfile.WriteString('TRANS_SMS', 'CALLMANNER', '0');
      GT_CALLMANNER_NOTSMS := 0;
    end;
  finally
    FreeAndNil(ln_envfile);
  end;
end;

procedure TFrm_SMSA2.RecvResultFileRmvMember(AList: TStringList);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I, J: Integer;
  ls_rxxml: string;
begin
  xdom := ComsDomDocument.Create;

  FRmvMemList.Clear;
  FRmvMemList.Sorted := False;
  try
    for I := 0 to AList.Count - 1 do
    begin
      ls_rxxml := AList[I];

      if not xdom.loadXML(ls_rxxml) then
        Continue;

      if (0 < GetXmlRecordCount(ls_rxxml)) then
      begin
        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

        Application.ProcessMessages;
        for J := 0 to lst_Result.length - 1 do
        begin
          FRmvMemList.Add(RemovePhone(lst_Result.item[J].attributes.getNamedItem('Value').Text));
        end;
      end;
    end;
  finally
    FRmvMemList.Sorted := True;
    xdom := Nil;
  end;
end;

procedure TFrm_SMSA2.RecvResultFileRmvWorker(AList: TStringList);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I, J: Integer;
  ls_rxxml: string;
begin
  xdom := ComsDomDocument.Create;

  FRmvWkList.Clear;
  FRmvWkList.Sorted := False;
  try
    for I := 0 to AList.Count - 1 do
    begin
      ls_rxxml := AList[I];

      xdom := ComsDomDocument.Create;
      if not xdom.loadXML(ls_rxxml) then
        Continue;

      if (0 < GetXmlRecordCount(ls_rxxml)) then
      begin
        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

        Application.ProcessMessages;
        for J := 0 to lst_Result.length - 1 do
        begin
          FRmvWkList.Add(RemovePhone(lst_Result.item[J].attributes.getNamedItem('Value').Text));
        end;
      end;
    end;
  finally
    FRmvWkList.Sorted := True;
    xdom := Nil;
  end;
end;
procedure TFrm_SMSA2.RequestData(AData: string);
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
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_SMSA2.RequestDataList(AData: string);
var
  StrList: TStringList;
  ErrCode: integer;
begin
  StrList := TStringList.Create;
  Screen.Cursor := crHandPoint;
  try
    if dm.SendSock(AData, StrList, ErrCode, False, 30*1000) then
    begin
      if StrList.Count > 0 then
      begin
        Application.ProcessMessages;
        proc_recieve_list(StrList);
      end;
    end;
  finally
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_SMSA2.WriteSMSLog(ALog: string);
begin
  if chkSMSLog.Checked then
    mmoSMSLog.Lines.Add(FormatDateTime('HH:NN:SS.ZZZ', Now) + '> ' + ALog);
end;

procedure TFrm_SMSA2.chkSMSLogClick(Sender: TObject);
begin
  btnSMSLog.Enabled := TcxCheckBox(Sender).Checked;
end;

procedure TFrm_SMSA2.cxLabel20MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(pnlSMSLog.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SMSA2.btnSMSLogClick(Sender: TObject);
begin
  if pnlSMSLog.Visible then
    Exit;

  pnlSMSLog.Visible := True;
  pnlSMSLog.Top   := edtFilename.Top;
  pnlSMSLog.Left  := edtFilename.Left;
end;

procedure TFrm_SMSA2.btnSMSResultDownClick(Sender: TObject);
var
  tmpStr: string;
begin
  if cxViewFileExcelList.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.SMS_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[SMS메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '광고_수신거부옵션제거.xls';
  Frm_Main.sgRpExcel := Format('SMS>광고_수신거부옵션제거]%s건', [GetMoneyStr(cxViewFileExcelList.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridFileExcelList;
  Frm_Main.cxGridDBViewExcel := cxViewFileExcelList;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_SMSA2.btnSelBranchClick(Sender: TObject);
var
  ARow: Integer;
begin
  dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
    exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) >
    2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    exit;
  end;
 
  if cxViewFileBranch.DataController.FocusedRecordIndex = - 1 then
  begin
    GMessagebox('지사를 선택해주세요.', CDMSI);
    Exit;
  end;

  ARow := cxViewFileBranch.DataController.FocusedRecordIndex;
  edtSelBranch.Text := cxViewFileBranch.ViewData.Records[ARow].Values[0];

  cbb_level.ItemIndex := 1;
  cbb_level.OnChange(self);
  edtFilename.Clear;
  cxViewFileExcelList.DataController.SetRecordCount(0);
  btnFileSearch.Enabled := True;
  btnRemoveDuplicate.Enabled := False;
  btnSendFile.Enabled := False;
end;

procedure TFrm_SMSA2.edt_BalsinKeyPress(Sender: TObject; var Key: Char);
begin
  // 전화번호이기 때문에 숫자만 입력 받는다.  [(Key = #3) : Ctrl+C, (Key = #22) : Ctrl+V]
  if ((Key >= #48) and (Key <= #57)) or (Key = #8) or (Key = #3) or (Key = #22) then
  else
  begin
    Key := #0;
  end;
end;

function TFrm_SMSA2.GetCallmanerSMSList(const APath: string;
  var AData: string): Boolean;
var
  P: PAnsiChar;
  FS: TFileStream;
  Len: Integer;
  T, Enc, DataLen: DWORD;
begin
  T := GetTickCount;

  Result := False;
  
  FS := TFileStream.Create(APath, fmOpenRead or fmShareDenyWrite);
  try
    FS.ReadBuffer(PDWORD(Enc), SizeOf(DWORD));

    case TEncryptType(Enc) of
    etBlowfish:
      begin
        FS.ReadBuffer(PDWORD(DataLen), SizeOf(DWORD));
        Len := (DataLen - 1 div 8 + 1) * 8;
        GetMem(P, Len);
        try
          FS.Read(P^, Len);
          AData := BlowFishPDecrypt(CallSMSKey, P, Len);
          AData := Copy(AData, 1, DataLen);

          Result := True;
        finally
          FreeMem(P);
        end;
      end;
    else
    end;
  finally
    FS.Free;
  end;
end;

procedure TFrm_SMSA2.btnRemoveClick(Sender: TObject);
begin
  if not (chkRemoveMember.Checked or chkRemoveWorker.Checked or chkRemoveKISA.Checked or chkRemoveSpamAll.Checked) then
  begin
    GMessageBox('수신거부 옵션을 선택 해주세요.', CDMSW);
    Exit;
  end;

  if chkRemoveMember.Checked then
    RemoveSMSMember;

  if chkRemoveWorker.Checked then
    RemoveSMSWorker;

  if chkRemoveKISA.Checked then
    RemoveSMSKISA;

  if chkRemoveSpamAll.Checked then
    RemoveSMSSpamAll;

  if chkRemoveUser.Checked then
    RemoveSMSUser;

  cbb_level.ItemIndex := 4;
end;

procedure TFrm_SMSA2.RemoveSMSKISA;
var
  FList: TStringList;
  scust_tel, text: string;
  I, J: Integer;
begin
  pnlSmsStatus.Left := (frm_main.Width - pnlSmsStatus.Width) div 2;
  pnlSmsStatus.Top := ((frm_main.Height - pnlSmsStatus.Height) div 2) - self.Top;
  pnlSmsStatus.Caption := '방통위 관련 전화번호를 제거합니다.';
  pnlSmsStatus.Visible := True;
  Application.ProcessMessages;
  FList := TStringList.Create;
  try
    try
      if FileExists(DBDIRECTORY + 'SpamKISA.txt') then
        if GetCallmanerSMSList(DBDIRECTORY + 'SpamKISA.txt', text) then
          FList.Text := text;
      FList.Sorted := True;

      if FList.Count > 0 then
      begin
        Gauge1.Max := cxViewFileExcelList.DataController.RecordCount;
        i := 0;
        j := 0;
        cxViewFileExcelList.BeginUpdate;
        try
          while cxViewFileExcelList.DataController.RecordCount - 1 >= I do
          begin
            Application.ProcessMessages;
            sCust_tel := cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex];
            if FList.IndexOf(CallToStr(scust_tel)) >= 0 then
            begin
              OutputDebugString(PChar(Format('RemoveSMSKISA: %s', [sCust_Tel])));
              cxViewFileExcelList.DataController.DeleteRecord(I)
            end
            else
              inc(i);
            inc(j);
            Gauge1.Position := j;
          end;
        finally
          cxViewFileExcelList.EndUpdate;
        end;
        Application.ProcessMessages;
      end;
    except
    end;
  finally
    pnlSmsStatus.Visible := False;
    FList.Free;
    Frm_Flash.Hide;
    lblFileSmsTotal.Caption := '총 ' + FormatFloat('#,##0', StrToFloatDef(inttostr(cxViewFileExcelList.DataController.RecordCount), 0.0)) + ' 건';
    lblSendCount.Caption := '전송 예상 건수는 ' + formatfloat('#,##0', StrToFloatDef(inttostr(cxViewFileExcelList.DataController.RecordCount), 0.0)) + '건 입니다.'
  end;
end;

procedure TFrm_SMSA2.RemoveSMSMember;
var
  ls_TxLoad, ls_TxQry, sQueryTemp,
  scust_tel: string;
  I, J: Integer;
begin
  pnlSmsStatus.Left := (frm_main.Width - pnlSmsStatus.Width) div 2;
  pnlSmsStatus.Top := ((frm_main.Height - pnlSmsStatus.Height) div 2) - self.Top;
  pnlSmsStatus.Caption := '대리회사 번호를 제거합니다..';
  pnlSmsStatus.Visible := True;
  Application.ProcessMessages;
  try
    try
      if FRmvMemList.Count = 0 then
      begin
        ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
        fGet_BlowFish_Query(GSQ_HP_MEMBER_ALL, sQueryTemp);
        ls_TxQry := sQueryTemp;
        ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'RMVMEM', [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '2500', [rfReplaceAll]);

        RequestDataList(ls_TxLoad);
      end;

      if FRmvMemList.Count > 0 then
      begin
        Gauge1.Max := cxViewFileExcelList.DataController.RecordCount;
        i := 0;
        j := 0;
        cxViewFileExcelList.BeginUpdate;
        try
          while cxViewFileExcelList.DataController.RecordCount - 1 >= I do
          begin
            Application.ProcessMessages;
            sCust_tel := cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex];
            if FRmvMemList.IndexOf(CallToStr(scust_tel)) >= 0 then
            begin
              OutputDebugString(PChar(Format('RemoveSMSMember: %s', [sCust_Tel])));
              cxViewFileExcelList.DataController.DeleteRecord(I)
            end
            else
              inc(i);
            inc(j);
            Gauge1.Position := j;
          end;
        finally
          cxViewFileExcelList.EndUpdate;
        end;
        Application.ProcessMessages;
      end;
    except
    end;
  finally
    pnlSmsStatus.Visible := False;
    Frm_Flash.Hide;
    lblFileSmsTotal.Caption := '총 ' + FormatFloat('#,##0', StrToFloatDef(inttostr(cxViewFileExcelList.DataController.RecordCount), 0.0)) + ' 건';
    lblSendCount.Caption := '전송 예상 건수는 ' + formatfloat('#,##0', StrToFloatDef(inttostr(cxViewFileExcelList.DataController.RecordCount), 0.0)) + '건 입니다.'
  end;
end;

procedure TFrm_SMSA2.RemoveSMSSpamAll;
var
  FList: TStringList;
  scust_tel, text: string;
  I, J: Integer;
begin
  pnlSmsStatus.Left := (frm_main.Width - pnlSmsStatus.Width) div 2;
  pnlSmsStatus.Top := ((frm_main.Height - pnlSmsStatus.Height) div 2) - self.Top;
  pnlSmsStatus.Caption := '범용수신거부 전화번호를 제거합니다.';
  pnlSmsStatus.Visible := True;
  Application.ProcessMessages;
  FList := TStringList.Create;
  try
    try
      if FileExists(DBDIRECTORY + 'Callmannersms.TXT') then
        if GetCallmanerSMSList(DBDIRECTORY + 'Callmannersms.TXT', text) then
          FList.Text := text;
      FList.Sorted := True;

      if FList.Count > 0 then
      begin
        Gauge1.Max := cxViewFileExcelList.DataController.RecordCount;
        i := 0;
        j := 0;
        cxViewFileExcelList.BeginUpdate;
        try
          while cxViewFileExcelList.DataController.RecordCount - 1 >= I do
          begin
            Application.ProcessMessages;
            sCust_tel := cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex];
            if FList.IndexOf(CallToStr(scust_tel)) >= 0 then
            begin
              OutputDebugString(PChar(Format('RemoveSMSSpamAll: %s', [sCust_Tel])));
              cxViewFileExcelList.DataController.DeleteRecord(I)
            end
            else
              inc(i);
            inc(j);
            Gauge1.Position := j;
          end;
        finally
          cxViewFileExcelList.EndUpdate;
        end;
        Application.ProcessMessages;
      end;
    except
    end;
  finally
    pnlSmsStatus.Visible := False;
    FList.Free;
    Frm_Flash.Hide;
    lblFileSmsTotal.Caption := '총 ' + FormatFloat('#,##0', StrToFloatDef(inttostr(cxViewFileExcelList.DataController.RecordCount), 0.0)) + ' 건';
    lblSendCount.Caption := '전송 예상 건수는 ' + formatfloat('#,##0', StrToFloatDef(inttostr(cxViewFileExcelList.DataController.RecordCount), 0.0)) + '건 입니다.'
  end;
end;

procedure TFrm_SMSA2.RemoveSMSWorker;
var
  ls_TxLoad, ls_TxQry, sQueryTemp,
  scust_tel: string;
  I, J: Integer;
begin
  pnlSmsStatus.Left := (frm_main.Width - pnlSmsStatus.Width) div 2;
  pnlSmsStatus.Top := ((frm_main.Height - pnlSmsStatus.Height) div 2) - self.Top;
  pnlSmsStatus.Caption := '전체기사 전화번호를 제거합니다.';
  pnlSmsStatus.Visible := True;
  Application.ProcessMessages;
  try
    try
      if FRmvWkList.Count = 0 then
      begin
        ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
        fGet_BlowFish_Query(GSQ_HP_WORKER_ALL, sQueryTemp);
        ls_TxQry := sQueryTemp;
        ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'RMVWK', [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '2500', [rfReplaceAll]);

        RequestDataList(ls_TxLoad);
      end;

      if FRmvWkList.Count > 0 then
      begin
        Gauge1.Max := cxViewFileExcelList.DataController.RecordCount;
        i := 0;
        j := 0;
        cxViewFileExcelList.BeginUpdate;
        try
          while cxViewFileExcelList.DataController.RecordCount - 1 >= I do
          begin
            Application.ProcessMessages;
            sCust_tel := cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex];
            if FRmvWkList.IndexOf(CallToStr(scust_tel)) >= 0 then
            begin
              OutputDebugString(PChar(Format('RemoveSMSWorker: %s', [sCust_Tel])));
              cxViewFileExcelList.DataController.DeleteRecord(I)
            end
            else
              inc(i);
            inc(j);
            Gauge1.Position := j;
          end;
        finally
          cxViewFileExcelList.EndUpdate;
        end;
        Application.ProcessMessages;
      end;
    except
    end;
  finally
    pnlSmsStatus.Visible := False;
    Frm_Flash.Hide;
    lblFileSmsTotal.Caption := '총 ' + FormatFloat('#,##0', StrToFloatDef(inttostr(cxViewFileExcelList.DataController.RecordCount), 0.0)) + ' 건';
    lblSendCount.Caption := '전송 예상 건수는 ' + formatfloat('#,##0', StrToFloatDef(inttostr(cxViewFileExcelList.DataController.RecordCount), 0.0)) + '건 입니다.'
  end;
end;

procedure TFrm_SMSA2.RemoveSMSUser;
var
  FList: TStringList;
  scust_tel: string;
  I, J: Integer;
begin
  pnlSmsStatus.Left := (frm_main.Width - pnlSmsStatus.Width) div 2;
  pnlSmsStatus.Top := ((frm_main.Height - pnlSmsStatus.Height) div 2) - self.Top;
  pnlSmsStatus.Caption := '수신거부 관리에 등록된 전화번호를 제거합니다.';
  pnlSmsStatus.Visible := True;
  Application.ProcessMessages;
  FList := TStringList.Create;
  try
    try
      if FileExists(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT') then
        FList.LoadFromFile(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT');
      FList.Sorted := True;

      if FList.Count > 0 then
      begin
        Gauge1.Max := cxViewFileExcelList.DataController.RecordCount;
        i := 0;
        j := 0;
        cxViewFileExcelList.BeginUpdate;
        try
          while cxViewFileExcelList.DataController.RecordCount - 1 >= I do
          begin
            Application.ProcessMessages;
            sCust_tel := cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex];
            if FList.IndexOf(CallToStr(scust_tel)) >= 0 then
            begin
              OutputDebugString(PChar(Format('RemoveSMSUser: %s', [sCust_Tel])));
              cxViewFileExcelList.DataController.DeleteRecord(I)
            end
            else
              inc(i);
            inc(j);
            Gauge1.Position := j;
          end;
        finally
          cxViewFileExcelList.EndUpdate;
        end;
        Application.ProcessMessages;
      end;
    except
    end;
  finally
    pnlSmsStatus.Visible := False;
    FList.Free;
    Frm_Flash.Hide;
    lblFileSmsTotal.Caption := '총 ' + FormatFloat('#,##0', StrToFloatDef(inttostr(cxViewFileExcelList.DataController.RecordCount), 0.0)) + ' 건';
    lblSendCount.Caption := '전송 예상 건수는 ' + formatfloat('#,##0', StrToFloatDef(inttostr(cxViewFileExcelList.DataController.RecordCount), 0.0)) + '건 입니다.'
  end;
end;

function GetFileDesc(APath: string): string;
var
  FS: TFileStream;
begin
  Result := '';

  if not FileExists(APath) then
    Exit;

  FS := TFileStream.Create(APath, fmOpenRead or fmShareDenyWrite);
  try
    SetString(Result, nil, FS.Size);
    FS.Read(Pointer(Result)^, FS.Size);
  finally
    FS.Free;
  end;
end;

procedure TFrm_SMSA2.chkRemoveAllClick(Sender: TObject);
begin
  chkRemoveMember.Checked := TcxCheckBox(Sender).Checked;
  chkRemoveWorker.Checked := TcxCheckBox(Sender).Checked;
  chkRemoveKISA.Checked := TcxCheckBox(Sender).Checked;
  chkRemoveSpamAll.Checked := TcxCheckBox(Sender).Checked;
  chkRemoveUser.Checked := TcxCheckBox(Sender).Checked;
end;

procedure TFrm_SMSA2.chkRemoveUserClick(Sender: TObject);
var
  Msg: string;
begin
  if TcxCheckBox(Sender).Checked then
  begin
    Msg := '**주의: ‘수신거부관리’ 제거는 본 PC내 저장하신 수신거부파일을 제거할 때 사용합니다.'#13#10#13#10
          + '**참조: 수신거부 고객들을 제거하고자 할 경우 [고객]-[일반검색] 메뉴에서 '#13#10
          + '‘선택지사 수신거부 고객 PC 다운’ 메뉴를 지사별로 실시한 후 본 메뉴를 실행하세요. '#13#10
          + '=> 우측 ‘결과다운로드’로 따로 파일로 다운로드 할 경우에도 유용.';

    ShowMessage(Msg);
  end;
end;

procedure TFrm_SMSA2.Memo1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Len: Integer;
	Str: string;
begin
  Str := TMemo(Sender).Text;
  Len := GetSmsMemoLength(AnsiString(Str));

  if Str = '' then
    TcxMemo(Sender).Properties.MaxLength := 100
	else
    TcxMemo(Sender).Properties.MaxLength := 90 + GetSeperatorCount(Str, #13#10);       //80->90Byte로 변경 2011.11.25 KHS
end;

procedure TFrm_SMSA2.Memo1KeyPress(Sender: TObject; var Key: Char);
var
	Len: Integer;
begin
	if Ord(Key) = VK_BACK then
		Exit;

	Len := GetSmsMemoLength(AnsiString(TcxMemo(Sender).Text));
	cxLabel16.Caption := IntToStr(Len);
	if Key = #3 then
		Exit;
		
	if Len >= 90 then   //80->90Byte로 변경 2011.11.25 KHS
	begin
		Key := #0;
		Exit;
	end;
end;

end.

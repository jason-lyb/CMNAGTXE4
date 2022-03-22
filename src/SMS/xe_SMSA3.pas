unit xe_SMSA3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MSXML2_TLB, ComObj, HttpApp, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxLabel,
  cxCurrencyEdit, cxHyperLinkEdit, Vcl.Menus, cxContainer, Vcl.ComCtrls, dxCore,
  cxDateUtils, Vcl.ExtCtrls, cxGroupBox, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Vcl.StdCtrls, cxButtons, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  dxSkinsCore, dxSkinDevExpressStyle, dxSkinscxPCPainter;

type
  TFrm_SMSA3 = class(TForm)
    pnl5: TPanel;
    cxGridResultList: TcxGrid;
    cxViewResultList: TcxGridDBTableView;
    cxLevelResultList: TcxGridLevel;
    btnSearchA3: TcxButton;
    cxColView1Column1: TcxGridDBColumn;
    cxColView1Column2: TcxGridDBColumn;
    cxColView1Column3: TcxGridDBColumn;
    cxColView1Column4: TcxGridDBColumn;
    cxColView1Column5: TcxGridDBColumn;
    cxColView1Column6: TcxGridDBColumn;
    cxColView1Column7: TcxGridDBColumn;
    cxColView1Column8: TcxGridDBColumn;
    cxColView1Column9: TcxGridDBColumn;
    cxColView1Column10: TcxGridDBColumn;
    pm1: TPopupMenu;
    mni1: TMenuItem;
    mni2: TMenuItem;
    mni3: TMenuItem;
    mni4: TMenuItem;
    mni5: TMenuItem;
    btnDateA3: TcxButton;
    lblSosokNameA3: TcxLabel;
    btnExcelA3: TcxButton;
    pm3: TPopupMenu;
    mniN1: TMenuItem;
    cxViewResultListColumn1: TcxGridDBColumn;
    cxViewResultListColumn2: TcxGridDBColumn;
    cxLabel13: TcxLabel;
    cxDtStartA3: TcxDateEdit;
    cxDtEndA3: TcxDateEdit;
    PnlMainA3: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxLabel3: TcxLabel;
    Shape2: TShape;
    cxLabel1: TcxLabel;
    Shape1: TShape;
    cxLabel2: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure mni1Click(Sender: TObject);
    procedure mni2Click(Sender: TObject);
    procedure mni3Click(Sender: TObject);
    procedure mni4Click(Sender: TObject);
    procedure mni5Click(Sender: TObject);
    procedure btnSearchA3Click(Sender: TObject);
    procedure btnDateA3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnExcelA3Click(Sender: TObject);
    procedure mniN1Click(Sender: TObject);
    procedure cxViewResultListCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    lCurProperties : TcxCurrencyEditProperties;

    procedure proc_init_result;
        procedure RecvResultSmsResultList(ls_rxxml: WideString);
    procedure RequestData(AData: string);
    function func_sysdate: string;   // 서버 시간 로드
  public
    { Public declarations }
    dt_sysdate2: string;
    procedure proc_init;
    procedure proc_BranchChange;
    procedure proc_recieve(ls_rxxml: Widestring);  // 전문 응답 처리
    procedure proc_search;
    procedure proc_BrNameSet;
    procedure prc_Test;  // test
  end;

var
  Frm_SMSA3: TFrm_SMSA3;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_XmlProtocal, xe_xml, xe_Flash, xe_system;

procedure TFrm_SMSA3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(lCurProperties);

  Action := Cafree;
end;

procedure TFrm_SMSA3.proc_BranchChange;
begin
  proc_BrNameSet;

  proc_search;
end;

procedure TFrm_SMSA3.proc_recieve(ls_rxxml: Widestring);
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

        if ls_ClientKey = 'SMSR0001' then
          RecvResultSmsResultList(ls_rxxml);
      end  else
      begin
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
      end;
    finally
      Screen.Cursor := crDefault;
      xdom := Nil;
    end;
  except

  end;
end;

procedure TFrm_SMSA3.FormCreate(Sender: TObject);
Var i : Integer;
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

  lCurProperties := TcxCurrencyEditProperties.Create(Nil);
  proc_init;
end;

procedure TFrm_SMSA3.FormDestroy(Sender: TObject);
begin
  Frm_SMSA3 := Nil;
end;

procedure TFrm_SMSA3.proc_init;
begin
  proc_BrNameSet;
  proc_init_result;
end;

procedure TFrm_SMSA3.proc_init_result;
var
  I: Integer;
begin
  try
    cxDtEndA3.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
    cxDtStartA3.Date := cxDtEndA3.Date - 7;

    // 금액관련 설정
    lCurProperties.ReadOnly := True;
    lCurProperties.DisplayFormat := '###,##0.#';
    lCurProperties.Nullable := True;
    lCurProperties.Alignment.Horz := taRightJustify;
    lCurProperties.Alignment.Vert := taVCenter;
    if TCK_USER_PER.JON_BrchCashView = '1' then
      lCurProperties.EchoMode := eemNormal
    else
      lCurProperties.EchoMode := eemPassword
        ;
    // 지사그리드
    for I := 0 to cxViewResultList.ColumnCount - 1 do
    begin
      case I of
      0, 6..8:
        cxViewResultList.Columns[I].DataBinding.ValueType := 'Integer';
      9:
        begin
          cxViewResultList.Columns[I].DataBinding.ValueType := 'Currency';
          cxViewResultList.Columns[I].Properties := lCurProperties;
        end;
      else
        cxViewResultList.Columns[I].DataBinding.ValueType := 'String';
      end;
    end;

    cxViewResultList.DataController.SetRecordCount(0);
  except
  end;
end;

procedure TFrm_SMSA3.cxViewColumnHeaderClick(Sender: TcxGridTableView;
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

function TFrm_SMSA3.func_sysdate: string;
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
          xdom := ComsDomDocument.Create;
          try
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
            end
            else
            begin
              GMessagebox(ls_Msg_Err, CDMSE);
            end;
          finally
            xdom := Nil;
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

{-------------------------------------------------------------------------------
  Procedure: TfrmSMS.RecvResultSmsResultList
  Descript:  SMS 결과 조회 수신
  Author:    hskim
  DateTime:  2008.12.18
  Arguments: ls_rxxml: WideString
  Result:    None
-------------------------------------------------------------------------------}

procedure TFrm_SMSA3.RecvResultSmsResultList(ls_rxxml: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, RowIdx: Integer;
  sReqDate, sSendDate: string;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ls_rxxml) then
      Exit;

    if (0 < GetXmlRecordCount(ls_rxxml)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

      cxViewResultList.BeginUpdate;
      ls_Rcrd := TSTringList.Create;
      try
        for I := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
          ls_Rcrd.Insert(0, IntToStr(I + 1));

          RowIdx := cxViewResultList.DataController.AppendRecord;
          cxViewResultList.DataController.SetValue(RowIdx, 0, ls_Rcrd[0]);

          sSendDate := ls_Rcrd[1];
          sSendDate := Copy(sSendDate, 1, 10) + ' ' + Copy(sSendDate, 11, 8);

          sReqDate := ls_Rcrd[2];
          if ( Trim(sReqDate) <> '' ) And ( Length(sReqDate) = 14 ) then
          begin
            sReqDate := copy(sReqDate, 1, 4) + '-' + copy(sReqDate, 5, 2) + '-' +
              copy(sReqDate, 7, 2) + ' ' + copy(sReqDate, 9, 2) + ':' + copy(sReqDate, 11, 2) + ':' + copy(sReqDate, 13, 2);

            if StrToDateTime(sSendDate) - StrToDateTime(sReqDate) > 0 then
              sReqDate := Copy(sSendDate, 1, 16)
            else
              sReqDate := Copy(sReqDate, 1, 16);
          end;
          cxViewResultList.DataController.SetValue(RowIdx, 1, sSendDate);
          cxViewResultList.DataController.SetValue(RowIdx, 2, sReqDate);
          cxViewResultList.DataController.SetValue(RowIdx, 3, ls_Rcrd[3]);
          cxViewResultList.DataController.SetValue(RowIdx, 4, ls_Rcrd[4]);
          cxViewResultList.DataController.SetValue(RowIdx, 5, strtocall(ls_Rcrd[5]));
          cxViewResultList.DataController.SetValue(RowIdx, 6, StrToIntDef(ls_Rcrd[6], 0));
          cxViewResultList.DataController.SetValue(RowIdx, 7, StrToIntDef(ls_Rcrd[7], 0));
          cxViewResultList.DataController.SetValue(RowIdx, 8, StrToIntDef(ls_Rcrd[8], 0));
          cxViewResultList.DataController.SetValue(RowIdx, 9, StrToFloatDef(ls_Rcrd[9], 0));
          cxViewResultList.DataController.SetValue(RowIdx, 10, '다운로드');
          cxViewResultList.DataController.SetValue(RowIdx, 11, ls_Rcrd[10]);
        end;
      finally
        cxViewResultList.EndUpdate;
        ls_Rcrd.Free;
      end;
    end else
    begin
      cxViewResultList.DataController.SetRecordCount(0);
//      GMessagebox('검색된 결과가 없습니다.', CDMSI);
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_SMSA3.mni1Click(Sender: TObject);
begin
  SetDateControl(cxDtStartA3, cxDtEndA3, tdToday);
end;

procedure TFrm_SMSA3.mni2Click(Sender: TObject);
begin
  SetDateControl(cxDtStartA3, cxDtEndA3, tdYesterday);
end;

procedure TFrm_SMSA3.mni3Click(Sender: TObject);
begin
  SetDateControl(cxDtStartA3, cxDtEndA3, tdOneWeek);
end;

procedure TFrm_SMSA3.mni4Click(Sender: TObject);
begin
  SetDateControl(cxDtStartA3, cxDtEndA3, tdOneMonth);
end;

procedure TFrm_SMSA3.mni5Click(Sender: TObject);
begin
  SetDateControl(cxDtStartA3, cxDtEndA3, tdStartMonth);
end;

procedure TFrm_SMSA3.btnSearchA3Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;

  proc_search;
end;

procedure TFrm_SMSA3.proc_search;
var
  ls_TxLoad, ls_TxQry, swhere, sQueryTemp : string;
  i: Integer;
  sBrNo, sDate1, sDate2, msg: string;
begin
  dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
    exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) > 2100)
    or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 SMS전송 결과를 사용할 수 없습니다.', CDMSI);
    exit;
  end;

  cxViewResultList.DataController.SetRecordCount(0);


  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementEtc(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 광고관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  try
    swhere := '';

    if GT_SEL_BRNO.GUBUN = '1' then
    begin
      sWhere := Format(' AND A.BR_NO = ''%s'' ', [GT_SEL_BRNO.BrNo]);
    end else
    begin
      if GT_USERIF.LV = '60' then
      begin
        if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
          sWhere := Format(' AND B.HD_NO = ''%s'' ', [GT_SEL_BRNO.HDNO])
        else
          sWhere := Format(' AND B.HD_NO = ''%s'' ', [GT_USERIF.HD]);
      end else
      if GT_USERIF.LV = '40' then
        sWhere := Format(' AND A.BR_NO = ''%s'' ', [GT_USERIF.BR])
      else if GT_USERIF.LV = '10' then
        sWhere := Format(' AND B.CALLCENTER = ''%s'' AND (B.HD_NO = ''%s'' OR B.ROUTE_MGR_ETC = ''y'')', [GT_USERIF.BR, GT_USERIF.HD])
      ;
    end;

    sWhere := sWhere + 'ORDER BY A.IN_DATE DESC ';
    sDate1 := formatdatetime('yyyymmdd', cxDtStartA3.Date);
    sDate2 := formatdatetime('yyyymmdd', cxDtEndA3.Date);

    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_SMS_RESULT, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sDate1, sDate2, sWhere]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'SMSR0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_SMSA3.proc_BrNameSet;
begin
  lblSosokNameA3.Caption := GetSosokInfo;
end;

procedure TFrm_SMSA3.btnDateA3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pm1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_SMSA3.btnExcelA3Click(Sender: TObject);
begin
  if cxViewResultList.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '조회결과상세.xls';
  Frm_Main.sgRpExcel := Format('SMS>조회결과(상세)]%s건', [GetMoneyStr(cxViewResultList.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridResultList;
  Frm_Main.cxGridDBViewExcel := cxViewResultList;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_SMSA3.mniN1Click(Sender: TObject);
begin
  btnExcelA3.Click;
end;

procedure TFrm_SMSA3.RequestData(AData: string);
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

procedure TFrm_SMSA3.cxViewResultListCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
const
  _SMS_KEY = 'rsn8q9rq0k1i1sf89mec7x9b3p6z0e4n';
//  _SMS_KEY = '9me0q9b3p6c7x9re4n1sf8sn8rq0k1iz';
//  _SMS_KEY = 'e8s0e4n1sk1iz09tjffpdlaq9b3mc7xf';
var
  MIndex: string;
  Data, HTTPEnc, HttpDec: string;

  procedure RunDownload(AData: string);
  const
    _URL  = 'http://%s/sms/report2.php?Data=%s';
    _URL2 = 'http://%s/sms_ad_report_detail.do?TYPE=excel&SDU=%s';
  var
    IE: Variant;
    EHWND: THandle;
  begin
    try
      IE := CreateOleObject('InternetExplorer.Application');

      IE.height := 100;
      IE.width := 100;
      IE.left := 0;
      IE.top := 0;

      IE.MenuBar := False;
      IE.AddressBar := True;
      IE.Resizable := False;
      IE.StatusBar := False;
      IE.ToolBar := False;
      IE.Silent := false;

      sleep(1);

      //IE.Navigate(Format(_URL, ['www.callmaner.com', AData]));
      IE.Navigate(Format(_URL2, ['cas.callmaner.com:8080', AData]));
      IE.Visible := True;

      Application.ProcessMessages;
      sleep(1);
    except on E: Exception do
      GMessagebox(Format('SMS 상세결과 다운로드 시 오류(Err: %s)가 발생하였습니다.'#13#10
                        + '(다시시도 바랍니다.)' , [E.Message]), CDMSI);
    end;
  end;
var
  Base64, Base64_2, Decode, sTMP, s, sss: string;
  AEncryptData: array of Byte;
  iEncryptLen, ii : Integer;
begin
  if ACellViewInfo.Item.Index = 10 then
  begin
    SetLength(AEncryptData, MaxCommandSize);

    MIndex := cxViewResultList.DataController.Values[ACellViewInfo.GridRecord.Index, 11];
//    Data := BlowFishEncrypt(_SMS_KEY, Format('%s|%s|%s', [MIndex, GT_USERIF.ID, IfThen(GS_PRJ_AREA = 'S', '1', '2')]));
    // 2011.02.11
//    sTMP := MIndex +'00|' + GT_USERIF.ID +'|'+ IfThen(GS_PRJ_AREA = 'S', '1', '2');
//    sTMP := '00z'+MIndex +'00z|' + GT_USERIF.ID +'|'+ IfThen(GS_PRJ_AREA = 'S', '1', '2');

    if GS_PRJ_AREA = 'S' then begin
      sTMP := MIndex +'|' + GT_USERIF.ID +'|'+ '1';   // 수도권
    end else begin
      sTMP := MIndex +'|' + GT_USERIF.ID +'|'+ '2';   // 지방권
    end;
    ii := Length(sTMP) mod 8; // blowfish 는 8byte 단위로 암호화 함(나머지 부족한 자리는 공백으로 채움)
    if ii > 0 then begin
      sTMP := sTMP + LPAD(sss,' ', 8-ii);
    end;

    iEncryptLen := BlowFishEncrypt(_SMS_KEY, sTMP, AEncryptData);

    // Hex 코드 만들기..
    for ii:= 0 to iEncryptLen - 1 do
    begin
      s := s + IntToHex(Byte(AEncryptData[ii]),2);
    end;

    //SetLength(aryTmp, iEncryptLen);
    //CopyMemory(@aryTmp[0], @AEncryptData[0], iEncryptLen);
    //ss22 := BlowFishDecrypt(_SMS_KEY, aryTmp, iEncryptLen);

    HTTPEnc := HTTPEncode(s);

    RunDownload(HttpEnc);

    //Data := BlowFishEncrypt(_SMS_KEY, sTMP);
    //base64Encode(Data, Base64);
    //HTTPEnc := HTTPEncode(Base64);

    //showmessage(Data+'<>'+ blowfishdecrypt(_sms_key,data));
    //RunDownload(HttpEnc);
  end;
end;

procedure TFrm_SMSA3.prc_Test;
const
  _SMS_KEY = '9me0q9b3p6c7x9re4n1sf8sn8rq0k1iz';
//  _SMS_KEY = 'e8s0e4n1sk1iz09tjffpdlaq9b3mc7xf';
var
  MIndex: string;
  Data, HTTPEnc, HttpDec: string;

  procedure RunDownload(AData: string);
  const
    _URL = 'http://%s/sms/report.php?Data=%s';
  var
    IE: Variant;
    EHWND: THandle;
  begin
    try
      IE := CreateOleObject('InternetExplorer.Application');

      IE.height := 100;
      IE.width := 100;
      IE.left := 0;
      IE.top := 0;

      IE.MenuBar := False;
      IE.AddressBar := True;
      IE.Resizable := False;
      IE.StatusBar := False;
      IE.ToolBar := False;
      IE.Silent := false;

      sleep(1);

      IE.Navigate(Format(_URL, ['www.callmaner.com', AData]));
      IE.Visible := True;

      Application.ProcessMessages;
      sleep(1);
    except on E: Exception do
      GMessagebox(Format('SMS 상세결과 다운로드 시 오류(Err: %s)가 발생하였습니다.'#13#10
                        + '(다시시도 바랍니다.)' , [E.Message]), CDMSI);
    end;
  end;
var
  Base64, Base64_2, Decode, sTMP, sData2, s, sss, ss11, ss22 : string;
  AEncryptData: array of Byte;
  iEncryptLen, ii : Integer;
  InSize, OutSize: Cardinal;
  PIn, POut: Pointer;
  OutText : AnsiString;
  aryTmp : array of AnsiChar;
begin

    MIndex := '191765';
//    Data := BlowFishEncrypt(_SMS_KEY, Format('%s|%s|%s', [MIndex, GT_USERIF.ID, IfThen(GS_PRJ_AREA = 'S', '1', '2')]));
    // 2011.02.11
//    sTMP := MIndex +'00|' + GT_USERIF.ID +'|'+ IfThen(GS_PRJ_AREA = 'S', '1', '2');
//    sTMP := '00z'+MIndex +'00z|' + GT_USERIF.ID +'|'+ IfThen(GS_PRJ_AREA = 'S', '1', '2');

    if GS_PRJ_AREA = 'S' then begin
      sTMP := MIndex +'|' + GT_USERIF.ID +'|'+ '1';   // 수도권
    end else begin
      sTMP := MIndex +'|' + GT_USERIF.ID +'|'+ '2';   // 지방권
    end;
    ii := length(sTMP) mod 8; // blowfish 는 8byte 단위로 암호화 함(나머지 부족한 자리는 공백으로 채움)
    if ii > 0 then begin
      sTMP := sTMP + LPAD(sss,' ', 8-ii);
    end;

    SetLength(AEncryptData, MaxCommandSize);

    iEncryptLen := BlowFishEncrypt(_SMS_KEY, sTMP, AEncryptData);

    // Hex 코드 만들기..
    for ii:= 0 to iEncryptLen - 1 do
    begin
      s := s + IntToHex(Byte(AEncryptData[ii]),2);
    end;

    //SetLength(aryTmp, iEncryptLen);
    //CopyMemory(@aryTmp[0], @AEncryptData[0], iEncryptLen);
    //ss22 := BlowFishDecrypt(_SMS_KEY, aryTmp, iEncryptLen);

    HTTPEnc := HTTPEncode(s);

  //  showmessage(Data+'<>'+ blowfishdecrypt(_sms_key,data));
    RunDownload(HttpEnc);

end;

end.

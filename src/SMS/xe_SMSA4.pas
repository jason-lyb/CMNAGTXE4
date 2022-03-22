unit xe_SMSA4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxLabel,
  cxCurrencyEdit, DB, cxDBData, cxGridDBTableView, cxListBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, StdCtrls, cxRadioGroup,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxButtons, cxCheckBox,
  cxMaskEdit, cxContainer, cxPC, IniFiles, MSXML2_TLB, cxGridExportLink, ShellAPI,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, DateUtils,
  Spin, ComCtrls, cxMemo, ExtCtrls, Grids, BaseGrid, AdvGrid,
  AdvCGrid, AdvProgr, StrUtils, Gauges, ComObj, cxButtonEdit,
  cxImage, ImgList, cxHyperLinkEdit, GradientLabel, HttpApp,
  dxGDIPlusClasses, IdCoder, IdCoder3to4, IdCoderMIME, cxPCdxBarPopupMenu,
  cxLookAndFeels, cxNavigator, dxCore, cxDateUtils, cxGroupBox, AdvProgressBar,
  dxSkinsCore, dxSkinDevExpressStyle, dxSkinscxPCPainter;

type
  TFrm_SMSA4 = class(TForm)
    pnl14: TPanel;
    btnSearchA4: TcxButton;
    cxDtStartA4: TcxDateEdit;
    lbl28: TcxLabel;
    cxDtEndA4: TcxDateEdit;
    lbl29: TcxLabel;
    lbl30: TcxLabel;
    lbl31: TcxLabel;
    lbl32: TcxLabel;
    edtDaySmsCash: TcxTextEdit;
    edtDayBranchCash: TcxTextEdit;
    lbl33: TcxLabel;
    edtDayNmlPrice: TcxTextEdit;
    edtDayComPrice: TcxTextEdit;
    edtDayNmlCount: TcxTextEdit;
    edtDayComCount: TcxTextEdit;
    lbl34: TLabel;
    lbl35: TLabel;
    lbl36: TLabel;
    lbl37: TLabel;
    lbl38: TLabel;
    lbl39: TLabel;
    lblCntA4: TLabel;
    lblSosokNameA4: TcxLabel;
    pnl15: TPanel;
    cxGridDayResult: TcxGrid;
    cxViewDayResult: TcxGridDBTableView;
    cxColViewDaySchColumn1: TcxGridDBColumn;
    cxColViewDaySchColumn2: TcxGridDBColumn;
    cxColViewDaySchColumn3: TcxGridDBColumn;
    cxColViewDaySchColumn4: TcxGridDBColumn;
    cxColViewDaySchColumn5: TcxGridDBColumn;
    cxColViewDaySchColumn6: TcxGridDBColumn;
    cxColViewDaySchColumn7: TcxGridDBColumn;
    cxColViewDaySchColumn8: TcxGridDBColumn;
    cxLevelDayResult: TcxGridLevel;
    pnl16: TPanel;
    cxGridDaySum: TcxGrid;
    cxViewDaySum: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxLevelDaySum: TcxGridLevel;
    pnlDayDown: TPanel;
    cxGridDayDown: TcxGrid;
    cxViewDayDown: TcxGridDBTableView;
    cxLevelDayDown: TcxGridLevel;
    cxColViewDayDownColumn1: TcxGridDBColumn;
    cxColViewDayDownColumn2: TcxGridDBColumn;
    cxColViewDayDownColumn3: TcxGridDBColumn;
    cxColViewDayDownColumn4: TcxGridDBColumn;
    cxColViewDayDownColumn5: TcxGridDBColumn;
    cxColViewDayDownColumn6: TcxGridDBColumn;
    cxColViewDayDownColumn7: TcxGridDBColumn;
    cxColViewDayDownColumn8: TcxGridDBColumn;
    cxColViewDayDownColumn9: TcxGridDBColumn;
    cxColViewDayDownColumn10: TcxGridDBColumn;
    btnDateA4: TcxButton;
    pm2: TPopupMenu;
    mni6: TMenuItem;
    mni7: TMenuItem;
    mni8: TMenuItem;
    mni9: TMenuItem;
    mni10: TMenuItem;
    btnExcelA4: TcxButton;
    pm3: TPopupMenu;
    mniN1: TMenuItem;
    cxViewDayResultColumn1: TcxGridDBColumn;
    cxViewDaySumColumn1: TcxGridDBColumn;
    cxLabel14: TcxLabel;
    PnlMainA4: TPanel;
    pnlSmsStatus: TPanel;
    dlgSave: TSaveDialog;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxLabel3: TcxLabel;
    Shape2: TShape;
    cxLabel1: TcxLabel;
    Shape1: TShape;
    pb1: TAdvProgressBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure btnSearchA4Click(Sender: TObject);
    procedure cxViewDaySumCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure mni6Click(Sender: TObject);
    procedure mni7Click(Sender: TObject);
    procedure mni8Click(Sender: TObject);
    procedure mni9Click(Sender: TObject);
    procedure mni10Click(Sender: TObject);
    procedure btnDateA4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnExcelA4Click(Sender: TObject);
    procedure mniN1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    lCurProperties : TcxCurrencyEditProperties;
    NORSMSCASH: Double;
    SMSCASH: Double;

		gsCommercial : boolean;

    procedure proc_init_dayresult;
    procedure DisplayCashInfo;
    procedure RecvResultDaySmsResultList(ls_rxxml: WideString);
    procedure RequestData(AData: string);

        // 서버 시간 로드
    function func_sysdate: string;
    procedure proc_day_download(ACommercial: Boolean);
    procedure RecvResultBrCashInfo(ls_rxxml: WideString);
    procedure RecvResultDaySmsDownloadList(ls_rxxml: WideString);
  public
    { Public declarations }
    dt_sysdate2: string;
    procedure proc_init;
    procedure proc_BranchChange;
    // 전문 응답 처리
    procedure proc_recieve(ls_rxxml: Widestring);
    function func_res_cnt(sTime: string): Integer;

    procedure proc_daylist_search;
    procedure proc_BrNameSet;
  end;

var
  Frm_SMSA4: TFrm_SMSA4;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_XmlProtocal, xe_xml, xe_Flash, xe_system;

procedure TFrm_SMSA4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(lCurProperties);

  Action := Cafree;
end;

procedure TFrm_SMSA4.proc_BranchChange;
begin
  proc_BrNameSet;
  proc_daylist_search;
end;

procedure TFrm_SMSA4.proc_recieve(ls_rxxml: Widestring);
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

        if ls_ClientKey = 'CASH0003' then
          RecvResultBrCashInfo(ls_rxxml)
        else
        if ls_ClientKey = 'DAYR0001' then
          RecvResultDaySmsResultList(ls_rxxml)
        else
        if ls_ClientKey = 'DAYR0002' then
          RecvResultDaySmsDownloadList(ls_rxxml)
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

procedure TFrm_SMSA4.FormCreate(Sender: TObject);
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

procedure TFrm_SMSA4.FormDestroy(Sender: TObject);
begin
  Frm_SMSA4 := Nil;
end;

procedure TFrm_SMSA4.proc_init;
begin
  proc_init_dayresult;
  proc_BrNameSet;
end;

procedure TFrm_SMSA4.proc_init_dayresult;
var
  I: Integer;
begin
  cxDtEndA4.Date := StrToDate(Copy(startDateTime('yyyy-mm-dd'), 1, 10));
  cxDtStartA4.Date := cxDtEndA4.Date - 1;

  edtDayNmlPrice.Text := FormatFloat('#,##0.#', NORSMSCASH);
  edtDayComPrice.Text := FormatFloat('#,##0.#', SMSCASH);
  try
    // 금액관련 설정
    lCurProperties.ReadOnly := True;
    lCurProperties.Nullable := True;
    lCurProperties.Alignment.Horz := taRightJustify;
    lCurProperties.Alignment.Vert := taVCenter;
    if TCK_USER_PER.JON_BrchCashView = '1' then
      lCurProperties.EchoMode := eemNormal
    else
      lCurProperties.EchoMode := eemPassword
    ;
    // 지사그리드
    cxViewDayResult.Columns[0].DataBinding.ValueType := 'String';
    cxViewDayResult.Columns[1].DataBinding.ValueType := 'String';
    cxViewDayResult.Columns[2].DataBinding.ValueType := 'Integer';
    cxViewDayResult.Columns[3].DataBinding.ValueType := 'Integer';
    cxViewDayResult.Columns[4].DataBinding.ValueType := 'Integer';
    cxViewDayResult.Columns[5].DataBinding.ValueType := 'Currency';
    lCurProperties.DisplayFormat := '###,##0.##';
    cxViewDayResult.Columns[5].Properties := lCurProperties;
    cxViewDayResult.Columns[6].DataBinding.ValueType := 'Currency';
    cxViewDayResult.Columns[6].Properties := lCurProperties;
    cxViewDayResult.Columns[7].DataBinding.ValueType := 'Currency';
    cxViewDayResult.Columns[7].Properties := lCurProperties;
    cxViewDayResult.Columns[8].DataBinding.ValueType := 'String';
    cxViewDayResult.DataController.SetRecordCount(0);

    cxViewDaySum.Columns[0].DataBinding.ValueType := 'String';
    cxViewDaySum.Columns[1].DataBinding.ValueType := 'String';
    cxViewDaySum.Columns[2].DataBinding.ValueType := 'Integer';
    cxViewDaySum.Columns[3].DataBinding.ValueType := 'Integer';
    cxViewDaySum.Columns[4].DataBinding.ValueType := 'Integer';
    cxViewDaySum.Columns[5].DataBinding.ValueType := 'Currency';
    lCurProperties.DisplayFormat := '###,##0.##';
    cxViewDaySum.Columns[5].Properties := lCurProperties;
    cxViewDaySum.Columns[6].DataBinding.ValueType := 'Currency';
    cxViewDaySum.Columns[6].Properties := lCurProperties;
    cxViewDaySum.Columns[7].DataBinding.ValueType := 'Currency';
    cxViewDaySum.Columns[7].Properties := lCurProperties;
    cxViewDaySum.Columns[8].DataBinding.ValueType := 'String';
    cxViewDaySum.DataController.SetRecordCount(0);

    for I := 0 to 1 do
    begin
      cxViewDaySum.DataController.AppendRecord;
      cxViewDaySum.DataController.SetValue(I, 0, '합계');
      cxViewDaySum.DataController.SetValue(I, 1, ifThen(I = 0, '일반', '광고'));
      cxViewDaySum.DataController.SetValue(I, 2, 0);
      cxViewDaySum.DataController.SetValue(I, 3, 0);
      cxViewDaySum.DataController.SetValue(I, 4, 0);
      cxViewDaySum.DataController.SetValue(I, 5, 0);
      cxViewDaySum.DataController.SetValue(I, 6, 0);
      cxViewDaySum.DataController.SetValue(I, 7, 0);
      cxViewDaySum.DataController.SetValue(I, 8, '다운로드');
    end;

    for I := 0 to cxViewDayDown.ColumnCount - 1 do
    begin
      cxViewDayDown.Columns[I].DataBinding.ValueType := 'String';
    end;
  except
  end;
end;

procedure TFrm_SMSA4.cxViewColumnHeaderClick(Sender: TcxGridTableView;
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

function TFrm_SMSA4.func_sysdate: string;
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
            end else
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

function TFrm_SMSA4.func_res_cnt(sTime: string): Integer;
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
//        ls_rxxml := GetXmlExtract(ReceiveStr);
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
            end else
              Result := -1;
          finally
            xdom := Nil;
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

procedure TFrm_SMSA4.mni6Click(Sender: TObject);
begin
  cxDtStartA4.Date := Date;
  cxDtEndA4.Date := cxDtStartA4.Date + 1;
end;

procedure TFrm_SMSA4.mni7Click(Sender: TObject);
begin
  cxDtStartA4.Date := Date - 1;
  cxDtEndA4.Date := cxDtStartA4.Date + 1;
end;

procedure TFrm_SMSA4.mni8Click(Sender: TObject);
begin
  cxDtStartA4.Date := Date - 7;
  cxDtEndA4.Date := cxDtStartA4.Date + 7;
end;

procedure TFrm_SMSA4.mni9Click(Sender: TObject);
begin
  cxDtStartA4.Date := Date - 31;
  cxDtEndA4.Date := cxDtStartA4.Date + 31;
end;

procedure TFrm_SMSA4.mni10Click(Sender: TObject);
begin
  cxDtStartA4.Date := StartOfTheMonth(Date);
  cxDtEndA4.Date := EndOfTheMonth(Date);
end;

procedure TFrm_SMSA4.proc_BrNameSet;
begin
  lblSosokNameA4.Caption := GetSosokInfo;
  DisplayCashInfo;
end;

procedure TFrm_SMSA4.proc_daylist_search;
var
  ls_TxLoad, ls_TxQry, swhere, sQueryTemp : string;
  sDate1, sDate2, msg: string;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN <> '1') then
  begin
    GMessagebox('SMS 조회결과(일별)은 지사를 선택하셔야 합니다.', CDMSI);
    Exit;
  end;

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
      swhere := ' = ''' + GT_SEL_BRNO.BrNo + '''';
    end
    else
    begin
      if GT_USERIF.LV = '60' then
      begin
        if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
          swhere := Format(' in (select br_no from cdms_branch where hd_no = ''%s'')', [GT_SEL_BRNO.HDNO])
        else
          swhere := Format(' in (select br_no from cdms_branch where hd_no = ''%s'')', [GT_USERIF.HD])          
      end
      else if GT_USERIF.LV = '40' then
        swhere := Format(' = ''%s''', [GT_USERIF.BR])
      ;
      // 상담원은 지사 미선택 시 메시지 표시
    end;

    sDate1 := formatdatetime('yyyymmdd', cxDtStartA4.Date);
    sDate2 := formatdatetime('yyyymmdd', cxDtEndA4.Date);

    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_DAYSMS_RESULT, sQueryTemp);
    ls_TxQry := En_Coding(Format(sQueryTemp, [sWhere, sDate1, sDate2, sWhere, sDate1, sDate2]));
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'DAYR0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_SMSA4.RecvResultBrCashInfo(ls_rxxml: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ls_rxxml) then
      Exit;

    if (0 < GetXmlRecordCount(ls_rxxml)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

      if lst_Result.length > 0 then
      begin
        ls_Rcrd := TStringList.Create;
        try
          GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
          edtDaySmsCash.Text := FormatFloat('#,##0.#', StrToFloatDef(ls_Rcrd[2], 0));
          edtDayBranchCash.Text := FormatFloat('#,##0.#', StrToFloatDef(ls_Rcrd[1], 0));
          if GT_SEL_BRNO.GUBUN <> '0' then
          begin
            edtDayNmlPrice.Text := FormatFloat('#,##0.#', StrToFloatDef(ls_Rcrd[3], 0));
            edtDayComPrice.Text := FormatFloat('#,##0.#', StrToFloatDef(ls_Rcrd[4], 0));
            NORSMSCASH := StrToFloatDef(ls_Rcrd[3], 0);
            SMSCASH := StrToFloatDef(ls_Rcrd[4], 0);
            if NORSMSCASH <> 0 then
              edtDayNmlCount.Text := FormatFloat('#,##0', (StrToFloatDef(ls_Rcrd[2], 0) /  NORSMSCASH))
            else
              edtDayNmlCount.Text := '0';

            if SMSCASH <> 0 then
              edtDayComCount.Text := FormatFloat('#,##0', (StrToFloatDef(ls_Rcrd[2], 0) /  SMSCASH))
            else
              edtDayComCount.Text := '0';
          end else
          if GT_SEL_BRNO.GUBUN = '0' then
          begin
            edtDayNmlPrice.Text := '';
            edtDayComPrice.Text := '';
            NORSMSCASH := 0;
            SMSCASH := 0;
            edtDayNmlCount.Text := '';
            edtDayComCount.Text := '';
          end;
        finally
          ls_Rcrd.Free;
        end;
      end else
      begin
        edtDaySmsCash.Text := '0';
        edtDayBranchCash.Text := '0';
        edtDayNmlCount.Text := '0';
        edtDayComCount.Text := '0';
      end;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_SMSA4.RecvResultDaySmsResultList(ls_rxxml: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, RowIdx: Integer;

  CntNmlS, CntNmlF,
    CntComS, CntComF: Integer;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ls_rxxml) then
      Exit;

    if (0 < GetXmlRecordCount(ls_rxxml)) then
    begin
      lst_Result :=
        xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

      cxViewDayResult.DataController.SetRecordCount(0);

      CntNmlS := 0;
      CntNmlF := 0;
      CntComS := 0;
      CntComF := 0;

      cxViewDayResult.BeginUpdate;
      ls_Rcrd := TStringList.Create;
      try
        for I := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

          RowIdx := cxViewDayResult.DataController.AppendRecord;
          cxViewDayResult.DataController.SetValue(RowIdx, 0, ls_Rcrd[1]);
          cxViewDayResult.DataController.SetValue(RowIdx, 1, ls_Rcrd[2]);
          cxViewDayResult.DataController.SetValue(RowIdx, 2, StrToIntDef(ls_Rcrd[3], 0));
          cxViewDayResult.DataController.SetValue(RowIdx, 3, StrToIntDef(ls_Rcrd[4], 0));
          cxViewDayResult.DataController.SetValue(RowIdx, 4, StrToIntDef(ls_Rcrd[5], 0));
          cxViewDayResult.DataController.SetValue(RowIdx, 5, StrToFloatDef(ls_Rcrd[6], 0));
          cxViewDayResult.DataController.SetValue(RowIdx, 6, StrToFloatDef(ls_Rcrd[7], 0.0));
          if ls_Rcrd[2] = '일반' then
            cxViewDayResult.DataController.SetValue(RowIdx, 7, StrToIntDef(ls_Rcrd[5], 0)* NORSMSCASH)
          else
            cxViewDayResult.DataController.SetValue(RowIdx, 7, StrToIntDef(ls_Rcrd[5], 0)* SMSCASH);
          cxViewDayResult.DataController.SetValue(RowIdx, 8, '');

          if ls_Rcrd[2] = '일반' then
          begin
            CntNmlS := CntNmlS + StrToIntDef(ls_Rcrd[4], 0);
            CntNmlF := CntNmlF + StrToIntDef(ls_Rcrd[5], 0);
          end else
          begin
            CntComS := CntComS + StrToIntDef(ls_Rcrd[4], 0);
            CntComF := CntComF + StrToIntDef(ls_Rcrd[5], 0);
          end;
        end;
      finally
        ls_Rcrd.Free;
        cxViewDayResult.EndUpdate;
      end;

      lblCntA4.Caption := Format('총    %d 건', [lst_Result.length]);
      // 일반
      cxViewDaySum.DataController.SetValue(0, 2, CntNmlS + CntNmlF);
      cxViewDaySum.DataController.SetValue(0, 3, CntNmlS);
      cxViewDaySum.DataController.SetValue(0, 4, CntNmlF);
      if (CntNmlS + CntNmlF) > 0 then
        cxViewDaySum.DataController.SetValue(0, 5, (CntNmlS / (CntNmlS + CntNmlF) * 100));
      cxViewDaySum.DataController.SetValue(0, 6, CntNmlS *  NORSMSCASH);
      cxViewDaySum.DataController.SetValue(0, 7, CntNmlF *  NORSMSCASH);
      // 광고
      cxViewDaySum.DataController.SetValue(1, 2, CntComS + CntComF);
      cxViewDaySum.DataController.SetValue(1, 3, CntComS);
      cxViewDaySum.DataController.SetValue(1, 4, CntComF);
      if (CntComS + CntComF) > 0 then
        cxViewDaySum.DataController.SetValue(1, 5, (CntComS / (CntComS + CntComF) * 100));
      cxViewDaySum.DataController.SetValue(1, 6, CntComS *  SMSCASH);
      cxViewDaySum.DataController.SetValue(1, 7, CntComF *  SMSCASH);
    end else
    begin
      lblCntA4.Caption := Format('총    %d 건', [0]);

      cxViewDayResult.DataController.SetRecordCount(0);

      cxViewDaySum.DataController.SetValue(0, 2, 0);
      cxViewDaySum.DataController.SetValue(0, 3, 0);
      cxViewDaySum.DataController.SetValue(0, 4, 0);
      cxViewDaySum.DataController.SetValue(0, 5, 0);
      cxViewDaySum.DataController.SetValue(0, 6, 0);
      cxViewDaySum.DataController.SetValue(1, 2, 0);
      cxViewDaySum.DataController.SetValue(1, 3, 0);
      cxViewDaySum.DataController.SetValue(1, 4, 0);
      cxViewDaySum.DataController.SetValue(1, 5, 0);
      cxViewDaySum.DataController.SetValue(1, 6, 0);

      GMessagebox('검색된 결과가 없습니다.', CDMSI);
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_SMSA4.RecvResultDaySmsDownloadList(ls_rxxml: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, J, RowIdx: Integer;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ls_rxxml) then
      Exit;

    if (0 < GetXmlRecordCount(ls_rxxml)) then
    begin
      lst_Result :=
        xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

      cxViewDayDown.DataController.SetRecordCount(0);
      cxViewDayDown.BeginUpdate;
      pb1.Max := lst_Result.length;
      pb1.Position := 0;
      pb1.Visible := True;

      Application.ProcessMessages;
      try
        ls_Rcrd := TStringList.Create;
        try
          for I := 0 to lst_Result.length - 1 do
          begin
            GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
            ls_Rcrd.Insert(0, IntToStr(I + 1));

            RowIdx := cxViewDayDown.DataController.AppendRecord;
            for J := 0 to cxViewDayDown.ColumnCount - 1 do
            begin
              // 엑셀다운로드 권한(고객번호 숨김 체크)
              if ( GT_USERIF.Excel_Use = 'm' ) And ( Not gsCommercial ) And ( J = 5 ) then
                cxViewDayDown.DataController.SetValue(RowIdx, J, '***-****-****')
              else
                cxViewDayDown.DataController.SetValue(RowIdx, J, ls_Rcrd[J]);
            end;

            pb1.Position := I + 1;
          end;
        finally
          ls_Rcrd.Free;
        end;
      finally
        cxViewDayDown.EndUpdate;
        pb1.Visible := False;
      end;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_SMSA4.DisplayCashInfo;
var
  ls_TxQry, ls_TxLoad, sQueryTemp : string;
  swhere, swhere2: string;
begin
  try
    if GT_USERIF.LV = '60' then
    begin
      if GT_SEL_BRNO.GUBUN <> '1' then
      begin
        sWhere := format('WHERE HD_NO = ''%s'' ', [GT_SEL_BRNO.HDNO]);
        sWhere2 := format('AND HD_NO = ''%s'' ', [GT_SEL_BRNO.HDNO]);
      end
      else
      begin
        sWhere := format('WHERE BR_NO = ''%s'' ', [GT_SEL_BRNO.BrNo]);
        sWhere2 := format('AND BR_NO = ''%s'' ', [GT_SEL_BRNO.BrNo]);
      end;
    end
    else
    begin
      sWhere := format('WHERE BR_NO = ''%s'' ', [GT_SEL_BRNO.BrNo]);
      sWhere2 := format('AND BR_NO = ''%s'' ', [GT_SEL_BRNO.BrNo]);
    end;

    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_MEMBER_CASH1, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sWhere, sWhere2]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CASH0003', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_SMSA4.btnSearchA4Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	proc_daylist_search;
end;

procedure TFrm_SMSA4.cxViewDaySumCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  ACommercial: Boolean;
begin
  if ACellViewInfo.Item.Index = 8 then
  begin
    ACommercial := ACellViewInfo.GridRecord.Index = 1;
		gsCommercial := ACommercial;

    dlgSave.FileName := Format('SMS전송내역_%s-%s.xls', [
      FormatDateTime('YYYYmmdd', cxDtStartA4.Date), FormatDateTime('YYYYmmdd', cxDtEndA4.Date)]);
    if dlgSave.Execute then
    begin
      if ACommercial then
      begin
        cxViewDayDown.Columns[0].Caption := 'No.';
        cxViewDayDown.Columns[1].Caption := '지사명';
        cxViewDayDown.Columns[2].Caption := '지사코드';
        cxViewDayDown.Columns[3].Caption := '날짜';
        cxViewDayDown.Columns[4].Caption := '메세지';
        cxViewDayDown.Columns[5].Caption := '총전송건소';
        cxViewDayDown.Columns[6].Caption := '성공건수';
        cxViewDayDown.Columns[7].Caption := '실패건수';
        cxViewDayDown.Columns[8].Caption := '건당요금';
        cxViewDayDown.Columns[9].Caption := '사용금액';
      end else
      begin
        cxViewDayDown.Columns[0].Caption := 'No.';
        cxViewDayDown.Columns[1].Caption := '지사명';
        cxViewDayDown.Columns[2].Caption := '지사코드';
        cxViewDayDown.Columns[3].Caption := '날짜';
        cxViewDayDown.Columns[4].Caption := '회신번호';
        cxViewDayDown.Columns[5].Caption := '수신번호';
        cxViewDayDown.Columns[6].Caption := '구분';
        cxViewDayDown.Columns[7].Caption := '메세지';
        cxViewDayDown.Columns[8].Caption := '성공/실패';
        cxViewDayDown.Columns[9].Caption := '건당요금';
      end;

      proc_day_download(ACommercial);

      ExportGridToExcel(dlgSave.FileName, cxGridDayDown, False, True, False, 'xls');
    end;
  end;
end;

procedure TFrm_SMSA4.btnDateA4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pm2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_SMSA4.btnExcelA4Click(Sender: TObject);
begin
  if cxViewDayResult.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '조회결과일반.xls';
  Frm_Main.sgRpExcel := Format('SMS>조회결과(일반)]%s건', [GetMoneyStr(cxViewDayResult.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridDayResult;
  Frm_Main.cxGridDBViewExcel := cxViewDayResult;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_SMSA4.mniN1Click(Sender: TObject);
begin
  btnExcelA4.Click;
end;

procedure TFrm_SMSA4.RequestData(AData: string);
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

procedure TFrm_SMSA4.proc_day_download(ACommercial: Boolean);
var
  ls_TxLoad, ls_TxQry, swhere, sQueryTemp : string;
  sDate1, sDate2: string;
begin
  pnlSmsStatus.Caption := '엑셀파일을 생성 중입니다.';
  pnlSmsStatus.Visible := True;

  Application.ProcessMessages;

  try
    try
      swhere := '';
      if GT_USERIF.LV = '60' then
        if GT_SEL_BRNO.GUBUN <> '1' then
          swhere := Format(' in (select br_no from cdms_branch where hd_no = ''%s'')', [GT_SEL_BRNO.HDNO])
        else
          swhere := ' = ''' + GT_SEL_BRNO.BrNo + ''''
      else
        swhere := ' = ''' + GT_SEL_BRNO.BrNo + '''';

      sDate1 := formatdatetime('yyyymmdd', cxDtStartA4.Date);
      sDate2 := formatdatetime('yyyymmdd', cxDtEndA4.Date);

      ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');

      if ACommercial then
      begin
        fGet_BlowFish_Query(GSQ_DAYSMS_COMMERCIAL, sQueryTemp);
        ls_TxQry := En_Coding(Format(sQueryTemp, [sWhere, sDate1, sDate2, sWhere, sDate1, sDate2]))
      end else
      begin
        fGet_BlowFish_Query(GSQ_DAYSMS_NORMAL, sQueryTemp);
        ls_TxQry := En_Coding(Format(sQueryTemp, [sWhere, sDate1, sDate2, sWhere, sDate1, sDate2]));
      end;
      ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'DAYR0002', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

      RequestData(ls_TxLoad);
    except
    end;
  finally
    pnlSmsStatus.Visible := False;
  end;
end;

end.

unit xe_WORA2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, System.Math, System.StrUtils,
  Dialogs, IniFiles, MSXML2_TLB, ShellAPI, cxPCdxBarPopupMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxLabel, cxCurrencyEdit,
  cxContainer, Vcl.Menus, Data.DB, cxDBData, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxClasses, cxListBox, Vcl.StdCtrls, cxRadioGroup, cxDropDownEdit, cxCalendar,
  cxMaskEdit, cxTextEdit, cxGridDBTableView, cxButtons, cxGroupBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridCustomView, cxGrid, Vcl.ExtCtrls, cxPC, dxBarBuiltInMenu, dxSkinsCore,
  dxSkinDevExpressStyle, dxSkinscxPCPainter;

type
  TFrm_WORA2 = class(TForm)
    pmWkMenu: TPopupMenu;
    MenuItem24: TMenuItem;
    MenuItem35: TMenuItem;
    MenuItem36: TMenuItem;
    MenuItem37: TMenuItem;
    MenuItem38: TMenuItem;
    N29: TMenuItem;
    cxPcA2: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet8: TcxTabSheet;
    cxGridA22: TcxGrid;
    sg_xls: TcxGridDBTableView;
    sg_xlsColumn1: TcxGridDBColumn;
    sg_xlsColumn2: TcxGridDBColumn;
    sg_xlsColumn3: TcxGridDBColumn;
    sg_xlsColumn4: TcxGridDBColumn;
    sg_xlsColumn5: TcxGridDBColumn;
    sg_xlsColumn6: TcxGridDBColumn;
    sg_xlsColumn7: TcxGridDBColumn;
    sg_xlsColumn8: TcxGridDBColumn;
    sg_xlsColumn9: TcxGridDBColumn;
    sg_xlsColumn10: TcxGridDBColumn;
    sg_xlsColumn11: TcxGridDBColumn;
    sg_xlsColumn12: TcxGridDBColumn;
    sg_xlsColumn13: TcxGridDBColumn;
    sg_xlsColumn14: TcxGridDBColumn;
    sg_xlsColumn15: TcxGridDBColumn;
    sg_xlsColumn16: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridA21: TcxGrid;
    cxgWkCash: TcxGridBandedTableView;
    cxgWkCashColumn1: TcxGridBandedColumn;
    cxgWkCashColumn16: TcxGridBandedColumn;
    cxgWkCashColumn2: TcxGridBandedColumn;
    cxgWkCashColumn3: TcxGridBandedColumn;
    cxgWkCashColumn4: TcxGridBandedColumn;
    cxgWkCashColumn5: TcxGridBandedColumn;
    cxgWkCashColumn6: TcxGridBandedColumn;
    cxgWkCashColumn7: TcxGridBandedColumn;
    cxgWkCashColumn8: TcxGridBandedColumn;
    cxgWkCashColumn9: TcxGridBandedColumn;
    cxgWkCashColumn10: TcxGridBandedColumn;
    cxgWkCashColumn11: TcxGridBandedColumn;
    cxgWkCashColumn12: TcxGridBandedColumn;
    cxgWkCashColumn13: TcxGridBandedColumn;
    cxgWkCashColumn14: TcxGridBandedColumn;
    cxgWkCashColumn15: TcxGridBandedColumn;
    cxGridA21Level1: TcxGridLevel;
    btnSearchA2P11: TcxButton;
    btnSearchA2P12: TcxButton;
    btnSearchA2P22: TcxButton;
    cxLabel69: TcxLabel;
    edtWkCashMemo: TcxTextEdit;
    btnSearchA2P21: TcxButton;
    PnlMain: TPanel;
    cxGroupBox1: TcxGroupBox;
    cbWkComm: TcxComboBox;
    cbWkStatus: TcxComboBox;
    btnSearchA2: TcxButton;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel54: TcxLabel;
    lblSosokNameA2: TcxLabel;
    cxLabel58: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    edWkName: TcxTextEdit;
    cxDtEndA2: TcxDateEdit;
    monthDay: TcxRadioButton;
    oneDay: TcxRadioButton;
    cxDtStartA2: TcxDateEdit;
    threeDay: TcxRadioButton;
    weekDay: TcxRadioButton;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    cxGroupBox2: TcxGroupBox;
    Shape6: TShape;
    Shape7: TShape;
    cxGroupBox3: TcxGroupBox;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    cxlsWkStatus: TcxListBox;
    procedure oneDayClick(Sender: TObject);
    procedure threeDayClick(Sender: TObject);
    procedure weekDayClick(Sender: TObject);
    procedure monthDayClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSearchA2Click(Sender: TObject);
    procedure btnSearchA2P11Click(Sender: TObject);
    procedure cxgWkCashBands0HeaderClick(Sender: TObject);
    procedure cxgWkCashBands2HeaderClick(Sender: TObject);
    procedure cxgWkCashBands3HeaderClick(Sender: TObject);
    procedure cxgWkCashBands4HeaderClick(Sender: TObject);
    procedure cxgWkCashBands5HeaderClick(Sender: TObject);
    procedure cxgWkCashBands6HeaderClick(Sender: TObject);
    procedure cxgWkCashBands8HeaderClick(Sender: TObject);
    procedure cxgWkCashBands9HeaderClick(Sender: TObject);
    procedure cxgWkCashBands11HeaderClick(Sender: TObject);
    procedure cxgWkCashBands12HeaderClick(Sender: TObject);
    procedure cxgWkCashBands13HeaderClick(Sender: TObject);
    procedure cxgWkCashBands15HeaderClick(Sender: TObject);
    procedure cxgWkCashBands16HeaderClick(Sender: TObject);
    procedure cxgWkCashBands17HeaderClick(Sender: TObject);
    procedure cxgWkCashBands18HeaderClick(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure pmWkMenuPopup(Sender: TObject);
    procedure cxPcA2Change(Sender: TObject);
    procedure sg_xlsColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure FormDestroy(Sender: TObject);
    procedure cxgWkCashCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnSearchA2P12Click(Sender: TObject);
    procedure sg_xlsDataControllerSortingChanged(Sender: TObject);
  private
    { Private declarations }
    FExcelDownCash : string;
    slCommissionCd: TStringList;

    AIndex : Integer;

    procedure proc_search_wk_cash(iType: Integer = 1);
    function func_Search_Phone(sWkSabun: string): string;
    procedure proc_Wk_Tel(sWkPhone: string);
    procedure proc_WkCommissionSearch;
    procedure proc_FamilyBrChange;
  public
    { Public declarations }
    sWkSearchBrNo: string;

    procedure proc_init;
    procedure proc_BranchChange;
    // 전문 응답 처리
    procedure proc_recieve(slList: TStringList);
    function func_BrTelSearch(sBrNo: string): string;
  end;

var
  Frm_WORA2: TFrm_WORA2;

implementation

{$R *.dfm}

uses xe_GNL, xe_xml, xe_Func, xe_Dm, xe_Msg, Main, xe_gnl3, xe_Query, xe_gnl2,
  xe_Lib, xe_SMS01, xe_COM02, xe_WOR03, xe_WOR07, xe_WOR01, xe_Flash;

procedure TFrm_WORA2.proc_search_wk_cash(iType: Integer = 1);
var
  sBrNo, sHdNo, WkStatus, CmsGrp, KeyWord, FromDate, ToDate: string;
  iRow: Integer;
  ls_TxLoad, sNode: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  slReceive: TStringList;
  ErrCode: integer;
begin
  try
    if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
    begin
      GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
      Exit;
    end;

   if fGetChk_Search_HdBrNo('기사캐쉬관리') then Exit;

    //////////////////////////////////////////////////////////////////////////////
    // 기사>기사현황]1000건/콜센터(통합)/기사상태:전체/기사검색:김현수
    FExcelDownCash := Format('%s/기간:%s~%s/상태:%s/수수료그룹:%s%s',
      [
          GetSelBrInfo
        , cxDtStartA2.Text, cxDtEndA2.Text
        , cbWkStatus.Text
        , cbWkComm.Text
        , IfThen(edWkName.Text = '', '', Format('/이름,사번:%s', [edWkName.Text]))
      ]);
    //////////////////////////////////////////////////////////////////////////////

    // 1달 조회 조건이라면,,
    case iType of
      1, 2:
        begin
          if cxPcA2.ActivePageIndex = 0 then
          begin
            if cxgWkCash.DataController.RecordCount > 0 then
              Exit;
          end else
          if cxPcA2.ActivePageIndex = 1 then
          begin
            if sg_xls.DataController.RecordCount > 0 then
              Exit;
          end;

          if cxPcA2.ActivePageIndex = 1 then
          begin
            if ((cxDtEndA2.Date - cxDtStartA2.Date) > 10) and
              (Length(Trim(edWkName.Text)) < 1) then
            begin
              GMessagebox('세부내역은 조회할 기사이름(사번) 없이 10일이상 조회 할 수 업습니다.', CDMSI);
              cxDtStartA2.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 10;
              cxDtEndA2.Date := cxDtStartA2.Date + 10;
              Exit;
            end;
          end else
          if cxPcA2.ActivePageIndex = 0 then
          begin
            if ((cxDtEndA2.Date - cxDtStartA2.Date) > 30) then
            begin
              if Length(Trim(edWkName.Text)) < 1 then
              begin
                GMessagebox('한달이상 검색은 조회할 기사이름(사번)을 반드시 입력 하여야 합니다.', cdmsi);
                edWkName.SetFocus;
                cxDtStartA2.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 29;
                cxDtEndA2.Date := cxDtStartA2.Date + 29;
                Exit;
              end;
            end;
          end;

					ls_rxxml := GTx_UnitXmlLoad('C023N1.xml');
          xdom := ComsDomDocument.Create;
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
            lst_Node.item[0].attributes.getNamedItem('Value').Text := 'WOR00' + IntToStr(iType + 2);

            if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then
            begin
              sBrNo := '';
					  	if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
					  		sHdNo := GT_SEL_BRNO.HDNO
					  	else
                sHdNo := GT_USERIF.HD;
            end
            else
            begin
					  	if (GT_USERIF.LV = '60') then
                sBrNo := GT_SEL_BRNO.BrNo
              else
                sBrNo := GT_USERIF.BR;
              sHdNo := '';
            end;
            if cbWkStatus.ItemIndex > 0 then
              WkStatus := cxlsWkStatus.Items.Strings[cbWkStatus.ItemIndex];
            CmsGrp := slCommissionCd.Strings[cbWkComm.ItemIndex];
            KeyWord := Param_Filtering(edWkName.Text);

            FromDate  := formatdatetime('yyyymmdd', cxDtStartA2.Date) + '09';
            ToDate    := formatdatetime('yyyymmdd', cxDtEndA2.Date) + '09';
            sNode     := '/cdms/Service/Data/Search';

            lst_Node := xdom.documentElement.selectNodes(sNode);
            lst_Node.item[0].attributes.getNamedItem('BrNo').Text := sBrNo;
            lst_Node.item[0].attributes.getNamedItem('WkStatus').Text := WkStatus;
            lst_Node.item[0].attributes.getNamedItem('CmsGrp').Text := CmsGrp;
            lst_Node.item[0].attributes.getNamedItem('Keyword').Text := KeyWord;
            lst_Node.item[0].attributes.getNamedItem('FromDate').Text := FromDate;
            lst_Node.item[0].attributes.getNamedItem('ToDate').Text := ToDate;
            lst_Node.item[0].attributes.getNamedItem('Type').Text := IntToStr(iType);
            lst_Node.item[0].attributes.getNamedItem('HdNo').Text := sHdNo;

            ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;
          finally
            xdom := Nil;
          end;
        end;
      3:
        begin
          iRow := cxgWkCash.DataController.FocusedRecordIndex;
          if iRow < 0 then Exit;

          WkStatus := cxgWkCash.DataController.Values[iRow, 3];
          sBrNo := cxgWkCash.DataController.Values[iRow, 1];
          FromDate := formatdatetime('yyyymmdd', cxDtStartA2.Date) + '09';
          ToDate := formatdatetime('yyyymmdd', cxDtEndA2.Date) + '09';

          ls_TxLoad := GTx_UnitXmlLoad('C024.XML');
          ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WOR005', [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'BrNoString', sBrNo, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'WkSabunString', WkStatus, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'FromDateString', FromDate, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ToDateString', ToDate, [rfReplaceAll]);
        end;
    end;

    Screen.Cursor := crHourGlass;
    slReceive := TStringList.Create;
    try
      frm_Main.proc_SocketWork(False);
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 30000) then
      begin
        Application.ProcessMessages;
				proc_recieve(slReceive);
      end;
		finally
      frm_Main.proc_SocketWork(True);
      FreeAndNil(slReceive);
      Screen.Cursor := crDefault;
      Frm_Flash.Hide;
    end;
  except
  end;
end;

procedure TFrm_WORA2.oneDayClick(Sender: TObject);
begin
  if oneDay.Checked then
  begin
    cxDtStartA2.Date := Now;
    cxDtEndA2.Date   := Now + 1;
  end;
end;

procedure TFrm_WORA2.threeDayClick(Sender: TObject);
begin
  if threeDay.Checked then
    cxDtStartA2.Date := Now - 2;
  cxDtEndA2.Date := Now + 1;
end;

procedure TFrm_WORA2.weekDayClick(Sender: TObject);
begin
  if weekDay.Checked then
  begin
    cxDtStartA2.Date := Now - 6;
    cxDtEndA2.Date := Now + 1;
  end;
end;

procedure TFrm_WORA2.monthDayClick(Sender: TObject);
begin
  cxDtStartA2.Date := Now - 29;
  cxDtEndA2.Date := Now + 1;
end;

procedure TFrm_WORA2.proc_init;
var
  i, iRow: Integer;
  sTabCap: string;
begin
  try
    cxDtStartA2.Date := StrToDate(Copy(startDateTime('yyyy-mm-dd hh:nn:ss'), 1, 10));
    cxDtEndA2.Date := cxDtStartA2.Date + 1;
    oneDay.Checked := True;
    edWkName.Text := '';

    cxgWkCash.Columns[0].DataBinding.ValueType := 'Integer';
    for i := 1 to cxgWkCash.ColumnCount - 1 do
      cxgWkCash.Columns[i].DataBinding.ValueType := 'String';

    cxgWkCash.Columns[6].DataBinding.ValueType := 'Currency';
    cxgWkCash.Columns[7].DataBinding.ValueType := 'Currency';
    cxgWkCash.Columns[8].DataBinding.ValueType := 'Currency';
    cxgWkCash.Columns[9].DataBinding.ValueType := 'Currency';
    cxgWkCash.Columns[10].DataBinding.ValueType := 'Currency';
    cxgWkCash.Columns[11].DataBinding.ValueType := 'Integer';
    cxgWkCash.Columns[12].DataBinding.ValueType := 'Currency';
    cxgWkCash.Columns[13].DataBinding.ValueType := 'Currency';

		sg_xls.Columns[0].DataBinding.ValueType := 'Integer';
    for i := 1 to sg_xls.ColumnCount - 1 do
      sg_xls.Columns[i].DataBinding.ValueType := 'String';

    sg_xls.Columns[10].DataBinding.ValueType := 'Currency';
    sg_xls.Columns[11].DataBinding.ValueType := 'Currency';
    sg_xls.Columns[13].DataBinding.ValueType := 'Currency';

    sWkSearchBrNo := '';
  except
  end;

  lblSosokNameA2.Caption := GetSosokInfo;
end;

procedure TFrm_WORA2.proc_recieve(slList: TStringList);
var
  xdom: msDomDocument;
  ls_ClientKey, ls_Msg_Err, sTemp, sBrName, sMessage, sSCnt, sFCnt, sWkSabun,
  sWkName: string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  i, j, iRow, iBrNo, iRowNum, iSum, iCash, iCol, iwk_name, iwkSabun, iNo, iSort: Integer;
	iwkTitle: array[0..53] of integer;
	ls_rxxml: WideString;
  nYear, nDay, nAge : Integer;
  y, m, d : word;
begin
  try
    xdom := ComsDomDocument.Create;
    Screen.Cursor := crHourGlass;
    try
      ls_rxxml := slList[0];
      if not xdom.loadXML(ls_rxxml) then
      begin
        btnSearchA2.Enabled := True;
        btnSearchA2P11.Enabled := True;
        Screen.Cursor := crDefault;
        Exit;
      end;

      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_ClientKey := GetXmlClientKey(ls_rxxml);
        if Copy(ls_ClientKey, 1, 5) = 'WOR00' then
        begin
          ls_ClientKey := Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5);
          if StrToIntDef(ls_ClientKey, 1) <> 1 then

          case StrToIntDef(ls_ClientKey, 1) of
            3:
              begin
                if (0 < GetXmlRecordCount(ls_rxxml)) then
                begin
									cxgWkCash.DataController.SetRecordCount(0);
                  cxgWkCash.BeginUpdate;
                  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                  ls_Rcrd := TStringList.Create;
                  try
                    for i := 0 to lst_Result.length - 1 do
                    begin
                      GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
											iBrNo := scb_BranchCode.IndexOf(ls_Rcrd[0]);
											if iBrNo = -1 then
                        sBrName := ''
                      else
												sBrName := scb_BranchName.Strings[iBrNo];
											ls_Rcrd.Insert(1, sBrName);
											ls_Rcrd.Insert(0, InttoStr(I + 1));

											iSum := StrToIntDef(ls_Rcrd[6], 0);
                      iCash := StrToIntDef(ls_Rcrd[7], 0);
                      ls_Rcrd.Insert(6, IntToStr(iSum + iCash));
                      if ls_Rcrd[6] = '' then   ls_Rcrd[6] := '0';
                      if ls_Rcrd[7] = '' then   ls_Rcrd[7] := '0';
                      if ls_Rcrd[8] = '' then   ls_Rcrd[8] := '0';
                      if ls_Rcrd[9] = '' then   ls_Rcrd[9] := '0';
											if ls_Rcrd[10] = '' then  ls_Rcrd[10] := '0';
                      if ls_Rcrd[11] = '' then  ls_Rcrd[11] := '0';
                      if ls_Rcrd[12] = '' then  ls_Rcrd[12] := '0';
                      if ls_Rcrd[13] = '' then  ls_Rcrd[13] := '0';

											if not Check_ALLHD(GT_SEL_BRNO.HDNO) then      //전체지사권한이 없을때
											begin
												if scb_FamilyBrCode.IndexOf(ls_Rcrd[1]) = -1 then   //권한있는 지사일경우만 그리드표기
												else
												begin
													iRow := cxgWkCash.DataController.AppendRecord;
													cxgWkCash.DataController.Values[iRow, 0] := ls_Rcrd[0];
													cxgWkCash.DataController.Values[iRow, 1] := ls_Rcrd[1];
													cxgWkCash.DataController.Values[iRow, 2] := ls_Rcrd[2];
													cxgWkCash.DataController.Values[iRow, 3] := ls_Rcrd[3];
													cxgWkCash.DataController.Values[iRow, 4] := ls_Rcrd[4];
													cxgWkCash.DataController.Values[iRow, 5] := ls_Rcrd[5];
													cxgWkCash.DataController.Values[iRow, 6] := ls_Rcrd[6];
													cxgWkCash.DataController.Values[iRow, 7] := ls_Rcrd[7];
													cxgWkCash.DataController.Values[iRow, 8] := ls_Rcrd[8];
													cxgWkCash.DataController.Values[iRow, 9] := ls_Rcrd[9];
													cxgWkCash.DataController.Values[iRow, 10] := ls_Rcrd[10];
													cxgWkCash.DataController.Values[iRow, 11] := ls_Rcrd[11];
													cxgWkCash.DataController.Values[iRow, 12] := ls_Rcrd[12];
													cxgWkCash.DataController.Values[iRow, 13] := ls_Rcrd[13];
													cxgWkCash.DataController.Values[iRow, 14] := ls_Rcrd[14];
													ls_Rcrd[15] := ReplaceAll(ls_Rcrd[15], #13#10, '.');
													ls_Rcrd[15] := ReplaceAll(ls_Rcrd[15], #13, '.');
													ls_Rcrd[15] := ReplaceAll(ls_Rcrd[15], #10, '.');
													cxgWkCash.DataController.Values[iRow, 15] := ls_Rcrd[15];
												end;
											end else
											begin
												iRow := cxgWkCash.DataController.AppendRecord;
												cxgWkCash.DataController.Values[iRow, 0] := ls_Rcrd[0];
												cxgWkCash.DataController.Values[iRow, 1] := ls_Rcrd[1];
												cxgWkCash.DataController.Values[iRow, 2] := ls_Rcrd[2];
												cxgWkCash.DataController.Values[iRow, 3] := ls_Rcrd[3];
												cxgWkCash.DataController.Values[iRow, 4] := ls_Rcrd[4];
												cxgWkCash.DataController.Values[iRow, 5] := ls_Rcrd[5];
												cxgWkCash.DataController.Values[iRow, 6] := ls_Rcrd[6];
												cxgWkCash.DataController.Values[iRow, 7] := ls_Rcrd[7];
												cxgWkCash.DataController.Values[iRow, 8] := ls_Rcrd[8];
												cxgWkCash.DataController.Values[iRow, 9] := ls_Rcrd[9];
												cxgWkCash.DataController.Values[iRow, 10] := ls_Rcrd[10];
												cxgWkCash.DataController.Values[iRow, 11] := ls_Rcrd[11];
												cxgWkCash.DataController.Values[iRow, 12] := ls_Rcrd[12];
												cxgWkCash.DataController.Values[iRow, 13] := ls_Rcrd[13];
												cxgWkCash.DataController.Values[iRow, 14] := ls_Rcrd[14];
												ls_Rcrd[15] := ReplaceAll(ls_Rcrd[15], #13#10, '.');
												ls_Rcrd[15] := ReplaceAll(ls_Rcrd[15], #13, '.');
												ls_Rcrd[15] := ReplaceAll(ls_Rcrd[15], #10, '.');
												cxgWkCash.DataController.Values[iRow, 15] := ls_Rcrd[15];
											end;
										end;
                  finally
                    ls_Rcrd.Free;
                  end;
                  cxgWkCash.EndUpdate;
                end;
                btnSearchA2.Enabled := True;
                btnSearchA2P11.Enabled := True;
              end;
            4:
              begin
                if (0 < GetXmlRecordCount(ls_rxxml)) then
                begin
                  sg_xls.DataController.SetRecordCount(0);
                  sg_xls.BeginUpdate;
                  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                  ls_Rcrd := TStringList.Create;
                  try
                    for i := 0 to lst_Result.length - 1 do
                    begin
                      GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                      ls_Rcrd.Insert(0, IntToStr(i + 1));

                      if (edtWkCashMemo.Text <> '') and (Pos(edtWkCashMemo.Text, ls_Rcrd[12]) <= 0) then
                        Continue;

                      if ls_Rcrd[10] = '' then  ls_Rcrd[10] := '0';
                      if ls_Rcrd[11] = '' then  ls_Rcrd[11] := '0';
                      if ls_Rcrd[13] = '' then  ls_Rcrd[13] := '0';
                      if ls_Rcrd[1] <> '' then  ls_Rcrd[1] := Copy(ls_Rcrd[1], 1, 10) + ' ' + Copy(ls_Rcrd[1], 11, 8);
                      iRow := sg_xls.DataController.AppendRecord;
                      sg_xls.DataController.Values[iRow, 0] := iRow + 1;//ls_Rcrd[0];
                      sg_xls.DataController.Values[iRow, 1] := ls_Rcrd[1];
                      sg_xls.DataController.Values[iRow, 2] := ls_Rcrd[2];
                      sg_xls.DataController.Values[iRow, 3] := ls_Rcrd[3];
                      sg_xls.DataController.Values[iRow, 4] := ls_Rcrd[4];
                      sg_xls.DataController.Values[iRow, 5] := ls_Rcrd[5];
                      sg_xls.DataController.Values[iRow, 6] := ls_Rcrd[6];
                      sg_xls.DataController.Values[iRow, 7] := ls_Rcrd[7];
                      sg_xls.DataController.Values[iRow, 8] := ls_Rcrd[8];
                      sg_xls.DataController.Values[iRow, 9] := ls_Rcrd[9];
                      sg_xls.DataController.Values[iRow, 10] := ls_Rcrd[10];
                      sg_xls.DataController.Values[iRow, 11] := ls_Rcrd[11];
                      sg_xls.DataController.Values[iRow, 12] := ls_Rcrd[12];
                      sg_xls.DataController.Values[iRow, 13] := ls_Rcrd[13];
                      sg_xls.DataController.Values[iRow, 14] := ls_Rcrd[14];
                      sg_xls.DataController.Values[iRow, 15] := ls_Rcrd[15];
                    end;
                  finally
                    ls_Rcrd.Free;
                  end;
                  sg_xls.EndUpdate;
                  btnSearchA2.Enabled := True;
                  btnSearchA2P11.Enabled := True;
                end;
              end;
            5:
              begin
                if ( Not Assigned(Frm_WOR03) ) Or ( Frm_WOR03 = NIl ) then Frm_WOR03 := TFrm_WOR03.Create(Nil);

                frm_WOR03.cxgWkCashHis.DataController.SetRecordCount(0);
                if (0 < GetXmlRecordCount(ls_rxxml)) then
                begin
                  frm_WOR03.cxgWkCashHis.BeginUpdate;
                  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                  ls_Rcrd := TStringList.Create;
                  try
                    for i := 0 to lst_Result.length - 1 do
                    begin
                      GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                      ls_Rcrd.Insert(0, InttoStr(i + 1));

                      if ls_Rcrd[3] = '' then
                        ls_Rcrd[3] := '0';
                      if ls_Rcrd[4] = '' then
                        ls_Rcrd[4] := '0';
                      if ls_Rcrd[6] = '' then
                        ls_Rcrd[6] := '0';

                      if Length(ls_Rcrd[1]) = 18 then
                        ls_Rcrd[1] := Copy(ls_Rcrd[1], 1, 10) + ' ' + Copy(ls_Rcrd[1], 11, 8);

                      iRow := frm_WOR03.cxgWkCashHis.DataController.AppendRecord;
                      frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 0] := ls_Rcrd[0];
                      frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 1] := ls_Rcrd[1];
                      frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 2] := ls_Rcrd[2];
                      frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 3] := ls_Rcrd[3];
                      frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 4] := ls_Rcrd[4];
                      frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 5] := ls_Rcrd[5];
                      frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 6] := ls_Rcrd[6];
                      frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 7] := ls_Rcrd[7];
                      frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 8] := ls_Rcrd[8];
                    end;
                  finally
                    ls_Rcrd.Free;
                  end;
                  frm_WOR03.cxgWkCashHis.EndUpdate;
                  btnSearchA2.Enabled := True;
                  btnSearchA2P11.Enabled := True;
                end;
                if frm_WOR03.cxgWkCashHis.DataController.RecordCount > 0 then
                  frm_WOR03.Show;
              end;
            6:
              begin
                slCommissionCd.Clear;
                cbWkComm.Properties.Items.Clear;
                if (0 < GetXmlRecordCount(ls_rxxml)) then
                begin
                  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                  ls_Rcrd := TStringList.Create;
                  try
                    for i := 0 to lst_Result.length - 1 do
                    begin
                      GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                      cbWkComm.Properties.Items.Add(ls_Rcrd[0]);
                      slCommissionCd.Add(ls_Rcrd[1]);
                    end;
                  finally
                    ls_Rcrd.Free;
                  end;
                  if slCommissionCd.Count > 1 then
                  begin
                    cbWkComm.Properties.Items.Insert(0, '전체');
                    slCommissionCd.Insert(0, '');
                  end;
                end;
                cbWkComm.ItemIndex := 0;
              end;
            11:
              begin
                lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Fail');
                ls_Rcrd := TStringList.Create;
                try
                  GetTextSeperationEx(',', lst_Result.item[0].attributes.getNamedItem('WkSabun').Text, ls_Rcrd);
                  if ls_Rcrd.Strings[0] <> '' then
                  begin
                    GMessagebox('출근 실패 기사 사번 입니다.' + #13#10
                      + '---------------------------' + #13#10
                      + ls_Rcrd.Text + #13#10
                      + '---------------------------', CDMSI);
                  end else
                  begin
                    GMessagebox('정상 처리하였습니다.', CDMSI);
                  end;
                finally
                  ls_Rcrd.Free;
                end;
              end;
          end;
        end else
        if Copy(ls_ClientKey, 1, 5) = 'WOR01' then
        begin
          frm_WOR01.proc_recieve(ls_rxxml);
        end;
      end else
      begin
        btnSearchA2.Enabled := True;
        btnSearchA2P11.Enabled := True;
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
      end;
    finally
      btnSearchA2.Enabled := True;
      btnSearchA2P11.Enabled := True;
      Screen.Cursor := crDefault;
      xdom := Nil;
    end;
  except
    btnSearchA2.Enabled := True;
    btnSearchA2P11.Enabled := True;
  end;
end;

procedure TFrm_WORA2.FormCreate(Sender: TObject);
var
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

  proc_init;

  slCommissionCd := TStringList.Create;

  try
    cxgWkCash.Columns[5].Properties := Frm_Main.gCurProperties;
    cxgWkCash.Columns[6].Properties := Frm_Main.gCurProperties;
    cxgWkCash.Columns[7].Properties := Frm_Main.gCurProperties;
    cxgWkCash.Columns[8].Properties := Frm_Main.gCurProperties;
    cxgWkCash.Columns[9].Properties := Frm_Main.gCurProperties;
    cxgWkCash.Columns[10].Properties := Frm_Main.gCurProperties;
    cxgWkCash.Columns[12].Properties := Frm_Main.gCurProperties;
    cxgWkCash.Columns[13].Properties := Frm_Main.gCurProperties;

    sg_xls.Columns[10].Properties := Frm_Main.gCurProperties;
    sg_xls.Columns[11].Properties := Frm_Main.gCurProperties;
    sg_xls.Columns[12].Properties := Frm_Main.gCurProperties;
  Except
  end;

  if (TCK_USER_PER.WOR_MngModify = '1') then
  begin
    N29.Visible := True;
  end else
  begin
    N29.Visible := False;
  end;
  proc_WkCommissionSearch;
  cxPcA2.ActivePageIndex := 0;
end;

procedure TFrm_WORA2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(slCommissionCd);
  Action := caFree;
end;

procedure TFrm_WORA2.btnSearchA2Click(Sender: TObject);
begin
	case cxPcA2.ActivePageIndex of
    0:
      begin
				cxgWkCash.DataController.SetRecordCount(0);
				proc_search_wk_cash(1);
      end;
    1:
      begin
        sg_xls.DataController.SetRecordCount(0);
        proc_search_wk_cash(2);
      end;
  end;
end;

procedure TFrm_WORA2.proc_BranchChange;
begin
  btnSearchA2Click(btnSearchA2);
end;

procedure TFrm_WORA2.btnSearchA2P11Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		Exit;
	end;
	proc_search_wk_cash(3);
end;

procedure TFrm_WORA2.btnSearchA2P12Click(Sender: TObject);
begin
  if (cxPcA2.ActivePageIndex = 0) and (cxgWkCash.DataController.RecordCount = 0) then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

  if (cxPcA2.ActivePageIndex = 1) and (sg_xls.DataController.RecordCount = 0) then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	if TCK_USER_PER.WOR_ExcelDown <> '1' then
	begin
    ShowMessage('[엑셀다운로드[기사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  if cxPcA2.ActivePageIndex = 0 then
  begin
    Frm_Main.sgExcel := '기사별캐쉬현황.xls';
    Frm_Main.sgRpExcel := Format('기사>기사캐쉬>기사별]%s건/%s', [GetMoneyStr(cxgWkCash.DataController.RecordCount), FExcelDownCash]);
    Frm_Main.cxGridExcel := cxGridA21;
    Frm_Main.proc_excel(0);
  end else
  begin
    Frm_Main.sgExcel := '기사캐쉬내역.xls';
    Frm_Main.sgRpExcel := Format('기사>기사캐쉬>세부내역]%s건/%s', [GetMoneyStr(sg_xls.DataController.RecordCount), FExcelDownCash]);
    Frm_Main.cxGridExcel := cxGridA22;
    Frm_Main.proc_excel(0);
  end;
end;

procedure TFrm_WORA2.cxgWkCashBands0HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 0) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[0].SortOrder = soNone) or (cxgWkCash.Columns[0].SortOrder = soDescending) then
      cxgWkCash.Columns[0].SortOrder := soAscending
    else if cxgWkCash.Columns[0].SortOrder = soAscending then
      cxgWkCash.Columns[0].SortOrder := soDescending;
    cxgWkCash.Columns[0].SortIndex := 0;
    cxgWkCash.DataController.FocusedRowIndex := 0;
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands0]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_WORA2.cxgWkCashBands2HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 2) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;

    if (cxgWkCash.Columns[2].SortOrder = soNone) or (cxgWkCash.Columns[2].SortOrder = soDescending) then
      cxgWkCash.Columns[2].SortOrder := soAscending
    else if cxgWkCash.Columns[2].SortOrder = soAscending then
      cxgWkCash.Columns[2].SortOrder := soDescending;
    cxgWkCash.Columns[2].SortIndex := 2;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands2]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_WORA2.cxgWkCashBands3HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 3) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[3].SortOrder = soNone) or (cxgWkCash.Columns[3].SortOrder = soDescending) then
      cxgWkCash.Columns[3].SortOrder := soAscending
    else if cxgWkCash.Columns[3].SortOrder = soAscending then
      cxgWkCash.Columns[3].SortOrder := soDescending;
    cxgWkCash.Columns[3].SortIndex := 3;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands3]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_WORA2.cxgWkCashBands4HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 4) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[4].SortOrder = soNone) or (cxgWkCash.Columns[4].SortOrder = soDescending) then
      cxgWkCash.Columns[4].SortOrder := soAscending
    else if cxgWkCash.Columns[4].SortOrder = soAscending then
      cxgWkCash.Columns[4].SortOrder := soDescending;
    cxgWkCash.Columns[4].SortIndex := 4;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands4]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_WORA2.cxgWkCashBands5HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 5) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[5].SortOrder = soNone) or (cxgWkCash.Columns[5].SortOrder = soDescending) then
      cxgWkCash.Columns[5].SortOrder := soAscending
    else if cxgWkCash.Columns[5].SortOrder = soAscending then
      cxgWkCash.Columns[5].SortOrder := soDescending;
    cxgWkCash.Columns[5].SortIndex := 5;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands5]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_WORA2.cxgWkCashBands6HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 6) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[6].SortOrder = soNone) or (cxgWkCash.Columns[6].SortOrder = soDescending) then
      cxgWkCash.Columns[6].SortOrder := soAscending
    else if cxgWkCash.Columns[6].SortOrder = soAscending then
      cxgWkCash.Columns[6].SortOrder := soDescending;
    cxgWkCash.Columns[6].SortIndex := 6;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands6]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_WORA2.cxgWkCashBands8HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 7) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[7].SortOrder = soNone) or (cxgWkCash.Columns[7].SortOrder = soDescending) then
      cxgWkCash.Columns[7].SortOrder := soAscending
    else if cxgWkCash.Columns[7].SortOrder = soAscending then
      cxgWkCash.Columns[7].SortOrder := soDescending;
    cxgWkCash.Columns[7].SortIndex := 7;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands7]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_WORA2.cxgWkCashBands9HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 8) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[8].SortOrder = soNone) or (cxgWkCash.Columns[8].SortOrder = soDescending) then
      cxgWkCash.Columns[8].SortOrder := soAscending
    else if cxgWkCash.Columns[8].SortOrder = soAscending then
      cxgWkCash.Columns[8].SortOrder := soDescending;
    cxgWkCash.Columns[8].SortIndex := 8;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands8]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_WORA2.cxgWkCashCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  proc_search_wk_cash(3);
end;

procedure TFrm_WORA2.cxgWkCashBands11HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 9) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[9].SortOrder = soNone) or (cxgWkCash.Columns[9].SortOrder = soDescending) then
      cxgWkCash.Columns[9].SortOrder := soAscending
    else if cxgWkCash.Columns[9].SortOrder = soAscending then
      cxgWkCash.Columns[9].SortOrder := soDescending;
    cxgWkCash.Columns[9].SortIndex := 9;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands9]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_WORA2.cxgWkCashBands12HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 10) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[10].SortOrder = soNone) or (cxgWkCash.Columns[10].SortOrder = soDescending) then
      cxgWkCash.Columns[10].SortOrder := soAscending
    else if cxgWkCash.Columns[10].SortOrder = soAscending then
      cxgWkCash.Columns[10].SortOrder := soDescending;
    cxgWkCash.Columns[10].SortIndex := 10;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands10]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_WORA2.cxgWkCashBands13HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 11) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[11].SortOrder = soNone) or (cxgWkCash.Columns[11].SortOrder = soDescending) then
      cxgWkCash.Columns[11].SortOrder := soAscending
    else if cxgWkCash.Columns[11].SortOrder = soAscending then
      cxgWkCash.Columns[11].SortOrder := soDescending;
    cxgWkCash.Columns[11].SortIndex := 11;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands11]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_WORA2.cxgWkCashBands15HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 12) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[12].SortOrder = soNone) or (cxgWkCash.Columns[12].SortOrder = soDescending) then
      cxgWkCash.Columns[12].SortOrder := soAscending
    else if cxgWkCash.Columns[12].SortOrder = soAscending then
      cxgWkCash.Columns[12].SortOrder := soDescending;
    cxgWkCash.Columns[12].SortIndex := 12;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands12]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_WORA2.cxgWkCashBands16HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 13) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[13].SortOrder = soNone) or
      (cxgWkCash.Columns[13].SortOrder =
      soDescending) then
      cxgWkCash.Columns[13].SortOrder := soAscending
    else
      if cxgWkCash.Columns[13].SortOrder = soAscending then
      cxgWkCash.Columns[13].SortOrder := soDescending;
    cxgWkCash.Columns[13].SortIndex := 13;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands13]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WORA2.cxgWkCashBands17HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 14) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[14].SortOrder = soNone) or
      (cxgWkCash.Columns[14].SortOrder =
      soDescending) then
      cxgWkCash.Columns[14].SortOrder := soAscending
    else
      if cxgWkCash.Columns[14].SortOrder = soAscending then
      cxgWkCash.Columns[14].SortOrder := soDescending;
    cxgWkCash.Columns[14].SortIndex := 14;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands14]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WORA2.cxgWkCashBands18HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 15) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[15].SortOrder = soNone) or
      (cxgWkCash.Columns[15].SortOrder =
      soDescending) then
      cxgWkCash.Columns[15].SortOrder := soAscending
    else
      if cxgWkCash.Columns[15].SortOrder = soAscending then
      cxgWkCash.Columns[15].SortOrder := soDescending;
    cxgWkCash.Columns[15].SortIndex := 15;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands15]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WORA2.N29Click(Sender: TObject);
var
  iWkSabun, iRow, iBrNo: Integer;
  sWkSabun, sBrNo, sWkPhone, sKeyNum: string;
begin
  sWkPhone := '';

  if cxPcA2.ActivePageIndex = 0 then
  begin
    iWkSabun := 3;
    iBrNo := 1;
    iRow := cxgWkCash.DataController.FocusedRecordIndex;
    if iRow < 0 then
      Exit;
    sWkSabun := cxgWkCash.DataController.Values[iRow, iWkSabun];
    sBrNo := cxgWkCash.DataController.Values[iRow, iBrNo];
  end else
  if cxPcA2.ActivePageIndex = 1 then
  begin
    iWkSabun := sg_xls.GetColumnByFieldName('기사사번').Index;
    iBrNo := sg_xls.GetColumnByFieldName('지사코드').Index;
    iRow := sg_xls.DataController.FocusedRecordIndex;
    if iRow < 0 then
      Exit;
    sWkSabun := sg_xls.DataController.Values[iRow, iWkSabun];
    sBrNo := sg_xls.DataController.Values[iRow, iBrNo];
  end;

  case TMenuItem(Sender).Tag of
    0:
      begin
        if Not Assigned(Frm_WOR01) Or (Frm_WOR01 = Nil) then Frm_WOR01 := TFrm_WOR01.Create(Nil);

        if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
          proc_FamilyBrChange;

        if GS_PRJ_AREA = 'O' then
        begin
      	  frm_WOR01.proc_wk_Search(sWkSabun);
         	frm_WOR01.Show;
        end else
        begin
         	Frm_WOR01.proc_init;
        	Frm_WOR01.gWOR19Mode := 'UPDATE';
          Frm_WOR01.Show;
          Frm_WOR01.proc_wk_Search(sWkSabun);
        end;
      end;
    1:
      begin
        if ( Not Assigned(Frm_COM02) ) Or ( Frm_COM02 = NIl ) then Frm_COM02 := TFrm_COM02.Create(Nil);
        Frm_COM02.proc_wk_Search(sWkSabun);
        Frm_COM02.Show;
      end;
    2:
      begin
        sWkPhone := func_Search_Phone(sWkSabun);
        if sWkPhone = '' then
          Exit;
        proc_Wk_Tel(sWkPhone);
      end;
    3:
      begin
        sWkPhone := func_Search_Phone(sWkSabun);
        if sWkPhone = '' then Exit;
        sKeyNum := func_BrTelSearch(sBrNo);
        if ( Not Assigned(Frm_SMS01) ) Or ( Frm_SMS01 = NIl ) then Frm_SMS01 := TFrm_SMS01.Create(Nil);
        Frm_SMS01.mm_message.Text := '';
        Frm_SMS01.ed_send.Text := sKeyNum;
        Frm_SMS01.ls_sms.Items.Clear;
        Frm_SMS01.ls_sms.Items.Add(sWkPhone);
        Frm_SMS01.Proc_Init;
        Frm_SMS01.Show;
      end;
    4:
      begin
        btnSearchA2P12.Click;
      end;
  end;
end;

function TFrm_WORA2.func_Search_Phone(sWkSabun: string): string;
var
  ls_TxLoad, sNode, rv_str: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_Result: IXMLDomNodeList;
  ls_Msg_Err, sWkHp, sWkPhone: string;
  ls_Rcrd: TStringList;
  slReceive: TStringList;
  ErrCode: integer;
begin
  Result := '';
  ls_rxxml := GTx_UnitXmlLoad('SEL04.XML');
  xdom := ComsDomDocument.Create;
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
    lst_Node.item[0].attributes.getNamedItem('Value').Text := 'WOR0013';

    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Key').Text := 'WKSEARCH03';

    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Seq').Text := '1';
    lst_Node.item[0].attributes.getNamedItem('Value').Text := sWkSabun;

    ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          if not xdom.loadXML(ls_rxxml) then
          begin
            Screen.Cursor := crDefault;
            ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
            Exit;
          end;
          ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
          if ('0000' = ls_MSG_Err) then
          begin
            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
            ls_Rcrd := TStringList.Create;
            try
              GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
//              ls_Rcrd := GetTextSeperation('│', lst_Result.item[0].attributes.getNamedItem('Value').Text);
              sWkHp := ls_Rcrd[0];
              sWkPhone := ls_Rcrd[1];
              if (Copy(sWkPhone, 1, 2) = '01') and (Length(sWkPhone) in [10, 11]) then
                Result := sWkPhone
              else
                Result := sWkHp;
            finally
              ls_Rcrd.Free;
            end;
          end
          else
          begin
            Screen.Cursor := crDefault;
            GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
          end;
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_WORA2.pmWkMenuPopup(Sender: TObject);
begin
  if GT_OCX <> '' then
    MenuItem35.Visible := True
  else
    MenuItem35.Visible := False;
end;

procedure TFrm_WORA2.proc_Wk_Tel(sWkPhone: string);
var
	sCustTel : string;
begin
	sCustTel := StringReplace(sWkPhone, '-', '', [rfReplaceAll]);
  Log('기사캐쉬 기사전화걸기 ' + sCustTel, LOGDATAPATHFILE);
  Frm_Main.pCallingCID(sCustTel, GT_POSS_KEYNUM);
end;

function TFrm_WORA2.func_BrTelSearch(sBrNo: string): string;
var
  i: Integer;
  sTmp: string;
begin
  Result := '';
  try
    for i := 0 to GT_BR_KN_CNT do
    begin
      if GSL_HD_LIST[i, 0] = sBrNo then
      begin
        Result := GSL_HD_LIST[i, 7];
        break;
      end;
    end;
  except
    on e: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WORA2.cxPcA2Change(Sender: TObject);
begin
{  case cxPageControl2.ActivePageIndex of
    0:
      begin
        proc_search_wk_cash(1);
      end;
    1:
      begin
        proc_search_wk_cash(2);
      end;
  end;}
end;

procedure TFrm_WORA2.sg_xlsColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_WORA2.sg_xlsDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(sg_xls, AIndex, GS_SortNoChange);
end;

procedure TFrm_WORA2.FormDestroy(Sender: TObject);
begin
  Frm_WORA2 := Nil;
end;

procedure TFrm_WORA2.proc_WkCommissionSearch;
var
  sWhere: string;
  ls_TxLoad, sNode: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  slReceive: TStringList;
  ErrCode: integer;
begin
  try
    sWhere := '';
    if GT_SEL_BRNO.GUBUN <> '1' then
    begin
      if GT_USERIF.LV = '60' then
        sWhere := Format(' AND B.HD_NO = ''%s'' ', [GT_SEL_BRNO.HDNO])
      else
        sWhere := Format(' AND B.BR_NO = ''%s'' ', [GT_USERIF.BR]);
    end else
    if GT_SEL_BRNO.GUBUN = '1' then
    begin
      sWhere := Format(' AND B.BR_NO = ''%s'' ', [GT_SEL_BRNO.BrNo]);
    end;

    if sWkSearchBrNo <> sWhere then
    begin
      sWkSearchBrNo := sWhere;
      cbWkComm.Properties.Items.Clear;
      slCommissionCd.Clear;
    end
    else
      Exit;

    ls_rxxml := GTx_UnitXmlLoad('SEL04.xml');
    xdom := ComsDomDocument.Create;
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
      lst_Node.item[0].attributes.getNamedItem('Value').Text := 'WOR006';

      sNode := '/cdms/Service/Data/Query';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_Node.item[0].attributes.getNamedItem('Key').Text := 'WKBRCOMM01';
      lst_Node.item[0].attributes.getNamedItem('Backward').Text := sWhere;
      ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;

      Screen.Cursor := crHourGlass;
      slReceive := TStringList.Create;
      try
        frm_Main.proc_SocketWork(False);
        if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 30000) then
        begin
          Application.ProcessMessages;
          proc_recieve(slReceive);
        end;
      finally
        frm_Main.proc_SocketWork(True);
        FreeAndNil(slReceive);
        Screen.Cursor := crDefault;
        Frm_Flash.Hide;
      end;
    finally
      xdom := Nil;
    end;
  except

  end;
end;

procedure TFrm_WORA2.proc_FamilyBrChange;
var
  i : Integer;
  HdCd, HdCd_Old : String;
begin
	try
		frm_WOR01.FBrNoList.Clear;
		frm_WOR01.FTakList.Clear;
		frm_WOR01.cboBranch.Properties.Items.Clear;
		HdCd_Old := '';

		for I := 0 to scb_FamilyBrName.Count - 1 do
		begin
			 HdCd :='';
			 HdCd := frm_Main.func_search_hdNo(scb_FamilyBrCode[I]);
			 if HdCd <> HdCd_Old then
			 begin
				 frm_WOR01.RequestDataHeadInfo(HdCd);
				 HdCd_Old := HdCd;
			 end;
			 frm_WOR01.cboBranch.Properties.Items.Add('(' + HdCd + ',' + scb_FamilyBrCode[I] +')' + scb_FamilyBrName[I] + '/' + frm_WOR01.Gs_HdNm );
			 frm_WOR01.FBrNoList.Add(scb_FamilyBrCode[I]);
			 frm_WOR01.FTakList.Add(scb_FamilyTaksong[I]);
		end;
	except
	end;
end;


end.

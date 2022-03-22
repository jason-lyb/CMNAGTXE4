unit xe_WORA3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, System.Math, System.StrUtils,
  Dialogs, IniFiles, MSXML2_TLB, ShellAPI, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel, cxCurrencyEdit,
  cxClasses, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxGrid,
  cxTextEdit, cxDropDownEdit, cxMaskEdit, cxCalendar, Vcl.StdCtrls, cxButtons,
  cxGroupBox, Vcl.ExtCtrls, dxSkinsCore, dxSkinDevExpressStyle,
  dxSkinscxPCPainter;

type
  TFrm_WORA3 = class(TForm)
    PnlMain: TPanel;
    cxGroupBox1: TcxGroupBox;
    btnSearchA3: TcxButton;
    cxLabel54: TcxLabel;
    lblSosokNameA3: TcxLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape5: TShape;
    cxLabel30: TcxLabel;
    cxLabel26: TcxLabel;
    cxDtStartA3: TcxDateEdit;
    cxLabel28: TcxLabel;
    cxDtEndA3: TcxDateEdit;
    cxLabel29: TcxLabel;
    cbSelList: TcxComboBox;
    cxEdtSelText: TcxTextEdit;
    cxLabel27: TcxLabel;
    RbButton1: TcxButton;
    cxGridA3: TcxGrid;
    cxgWkAttend: TcxGridDBBandedTableView;
    cxgWkAttendColumn1: TcxGridDBBandedColumn;
    cxgWkAttendColumn2: TcxGridDBBandedColumn;
    cxgWkAttendColumn3: TcxGridDBBandedColumn;
    cxgWkAttendColumn4: TcxGridDBBandedColumn;
    cxgWkAttendColumn5: TcxGridDBBandedColumn;
    cxgWkAttendColumn6: TcxGridDBBandedColumn;
    cxgWkAttendColumn7: TcxGridDBBandedColumn;
    cxgWkAttendColumn8: TcxGridDBBandedColumn;
    cxgWkAttendColumn9: TcxGridDBBandedColumn;
    cxgWkAttendColumn10: TcxGridDBBandedColumn;
    cxgWkAttendColumn11: TcxGridDBBandedColumn;
    cxgWkAttendColumn12: TcxGridDBBandedColumn;
    cxgWkAttendColumn13: TcxGridDBBandedColumn;
    cxgWkAttendColumn14: TcxGridDBBandedColumn;
    cxGridA3Level1: TcxGridLevel;
    Shape3: TShape;
    pmWkMenuA3: TPopupMenu;
    N29: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem35: TMenuItem;
    MenuItem36: TMenuItem;
    MenuItem37: TMenuItem;
    MenuItem38: TMenuItem;
    pop_dateA3: TPopupMenu;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N29Click(Sender: TObject);
    procedure pmWkMenuA3Popup(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RbButton1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MenuItem6Click(Sender: TObject);
    procedure btnSearchA3Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure cxgWkAttendCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxgWkAttendBands0HeaderClick(Sender: TObject);
    procedure cxgWkAttendBands1HeaderClick(Sender: TObject);
    procedure cxgWkAttendBands2HeaderClick(Sender: TObject);
    procedure cxgWkAttendBands3HeaderClick(Sender: TObject);
    procedure cxgWkAttendBands5HeaderClick(Sender: TObject);
    procedure cxgWkAttendBands6HeaderClick(Sender: TObject);
    procedure cxgWkAttendBands8HeaderClick(Sender: TObject);
    procedure cxgWkAttendBands9HeaderClick(Sender: TObject);
    procedure cxgWkAttendBands11HeaderClick(Sender: TObject);
    procedure cxgWkAttendBands12HeaderClick(Sender: TObject);
    procedure cxgWkAttendBands13HeaderClick(Sender: TObject);
    procedure cxgWkAttendBands15HeaderClick(Sender: TObject);
    procedure cxgWkAttendBands16HeaderClick(Sender: TObject);
  private
    { Private declarations }
    FExcelDownBeach : string;

    function func_Search_Phone(sWkSabun: string): string;
    procedure proc_Wk_Tel(sWkPhone: string);
    procedure proc_FamilyBrChange;

    procedure proc_WkAttend;
    procedure proc_WkAttend_Search;
  public
    { Public declarations }
    procedure proc_init;

    // 전문 응답 처리
    procedure proc_recieve(slList: TStringList);
    function func_BrTelSearch(sBrNo: string): string;
  end;

var
  Frm_WORA3: TFrm_WORA3;

implementation

{$R *.dfm}

uses xe_GNL, xe_xml, xe_Func, xe_Dm, xe_Msg, Main, xe_gnl3, xe_Query, xe_gnl2,
  xe_Lib, xe_WOR03, xe_WOR04, xe_WOR01, xe_COM02, xe_SMS01, xe_Flash;


procedure TFrm_WORA3.proc_init;
var
  i, iRow: Integer;
  sTabCap: string;
begin
  try
    cxDtStartA3.Date := StrToDate(Copy(startDateTime('yyyy-mm-dd hh:nn:ss'), 1, 10));
    cxDtEndA3.Date := cxDtStartA3.Date + 1;

    for i := 0 to cxgWkAttend.ColumnCount - 1 do
      cxgWkAttend.Columns[i].DataBinding.ValueType := 'Integer';

    cxgWkAttend.Columns[1].DataBinding.ValueType := 'String';
    cxgWkAttend.Columns[2].DataBinding.ValueType := 'String';
    cxgWkAttend.Columns[3].DataBinding.ValueType := 'String';
    cxgWkAttend.Columns[10].DataBinding.ValueType := 'Currency';
    cxgWkAttend.Columns[11].DataBinding.ValueType := 'Currency';
    cxgWkAttend.Columns[12].DataBinding.ValueType := 'Currency';
    cxgWkAttend.Columns[13].DataBinding.ValueType := 'String';

    lblSosokNameA3.Caption := GetSosokInfo;

    cbSelList.ItemIndex := 0;
    cxEdtSelText.Text := '';
  except
  end;
  btnSearchA3Click(btnSearchA3);
end;

procedure TFrm_WORA3.proc_recieve(slList: TStringList);
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
        btnSearchA3.Enabled := True;
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
            2:
              begin
                if (0 < GetXmlRecordCount(ls_rxxml)) then
                begin
                  cxgWkAttend.BeginUpdate;
                  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                  ls_Rcrd := TStringList.Create;
                  try
                    for i := 0 to lst_Result.length - 1 do
                    begin
                      GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                      if StrToIntDef(ls_Rcrd[4], -1) = -1 then  ls_Rcrd[4] := '0';
                      if StrToIntDef(ls_Rcrd[5], -1) = -1 then  ls_Rcrd[5] := '0';
                      if StrToIntDef(ls_Rcrd[6], -1) = -1 then  ls_Rcrd[6] := '0';
                      if StrToIntDef(ls_Rcrd[7], -1) = -1 then  ls_Rcrd[7] := '0';
                      if StrToIntDef(ls_Rcrd[8], -1) = -1 then  ls_Rcrd[8] := '0';
                      if StrToIntDef(ls_Rcrd[9], -1) = -1 then  ls_Rcrd[9] := '0';
                      if ls_Rcrd[10] = '' then  ls_Rcrd[10] := '0';
                      if ls_Rcrd[11] = '' then  ls_Rcrd[11] := '0';
                      if ls_Rcrd[12] = '' then  ls_Rcrd[12] := '0';
                      ls_Rcrd.Insert(0, IntToStr(i + 1));
                      iRow := cxgWkAttend.DataController.AppendRecord;

                      cxgWkAttend.DataController.Values[iRow, 0] := ls_Rcrd[0];
                      cxgWkAttend.DataController.Values[iRow, 1] := ls_Rcrd[1] + '[' + ls_Rcrd[2] + ']';
                      cxgWkAttend.DataController.Values[iRow, 2] := ls_Rcrd[4];
                      cxgWkAttend.DataController.Values[iRow, 3] := ls_Rcrd[3];
                      cxgWkAttend.DataController.Values[iRow, 4] := ls_Rcrd[5];
                      cxgWkAttend.DataController.Values[iRow, 5] := ls_Rcrd[6];
                      cxgWkAttend.DataController.Values[iRow, 6] := ls_Rcrd[7];
                      cxgWkAttend.DataController.Values[iRow, 7] := ls_Rcrd[8];
                      cxgWkAttend.DataController.Values[iRow, 8] := ls_Rcrd[9];
                      cxgWkAttend.DataController.Values[iRow, 9] := ls_Rcrd[10];
                      cxgWkAttend.DataController.Values[iRow, 10] := ls_Rcrd[11];
                      cxgWkAttend.DataController.Values[iRow, 11] := ls_Rcrd[12];
                      cxgWkAttend.DataController.Values[iRow, 12] := ls_Rcrd[13];
                      cxgWkAttend.DataController.Values[iRow, 13] := ls_Rcrd[2];
                    end;
                  finally
                    ls_Rcrd.Free;
                  end;
                  cxgWkAttend.EndUpdate;
                end;
                btnSearchA3.Enabled := True;
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
                  btnSearchA3.Enabled := True;
                end;
                if frm_WOR03.cxgWkCashHis.DataController.RecordCount > 0 then
                  frm_WOR03.Show;
              end;
            8:
              begin
                if ( Not Assigned(Frm_WOR04) ) Or ( Frm_WOR04 = NIl ) then Frm_WOR04 := TFrm_WOR04.Create(Nil);

                Frm_WOR04.cxgWkAttend.DataController.SetRecordCount(0);
                Frm_WOR04.cxgWkAttend.BeginUpdate;
                if (0 < GetXmlRecordCount(ls_rxxml)) then
                begin
                  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                  ls_Rcrd := TStringList.Create;
                  try
                    for i := 0 to lst_Result.length - 1 do
                    begin
                      GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                      iRow := frm_WOR04.cxgWkAttend.DataController.AppendRecord;

                      // 1 Record 추가
                      if Length(ls_Rcrd[2]) = 18 then
                        ls_Rcrd[2] := Copy(ls_Rcrd[2], 1, 10) + ' ' + Copy(ls_Rcrd[2], 11, 8);
                      if ls_Rcrd[12] = '/' then
                        ls_Rcrd[12] := '';
                      if ls_Rcrd[13] = '/' then
                        ls_Rcrd[13] := '';
                      if ls_Rcrd[14] = '' then
                        ls_Rcrd[14] := '0';
                      if ls_Rcrd[15] = '' then
                        ls_Rcrd[15] := '0';
                      if ls_Rcrd[16] = '' then
                        ls_Rcrd[16] := '0';

                      Frm_WOR04.cxgWkAttend.DataController.Values[iRow, 0] := ls_Rcrd[0];
                      Frm_WOR04.cxgWkAttend.DataController.Values[iRow, 1] := ls_Rcrd[4];
                      Frm_WOR04.cxgWkAttend.DataController.Values[iRow, 2] := strtocall(ls_Rcrd[11]);
                      Frm_WOR04.cxgWkAttend.DataController.Values[iRow, 3] := ls_Rcrd[2];
                      Frm_WOR04.cxgWkAttend.DataController.Values[iRow, 4] := ls_Rcrd[10];
                      Frm_WOR04.cxgWkAttend.DataController.Values[iRow, 5] := ls_Rcrd[7];
                      Frm_WOR04.cxgWkAttend.DataController.Values[iRow, 6] := ls_Rcrd[12];
                      Frm_WOR04.cxgWkAttend.DataController.Values[iRow, 7] := ls_Rcrd[13];
                      Frm_WOR04.cxgWkAttend.DataController.Values[iRow, 8] := ls_Rcrd[14];
                      Frm_WOR04.cxgWkAttend.DataController.Values[iRow, 9] := ls_Rcrd[15];
                      Frm_WOR04.cxgWkAttend.DataController.Values[iRow, 10] := ls_Rcrd[16];
                      Frm_WOR04.cxgWkAttend.DataController.Values[iRow, 11] := ls_Rcrd[1];
                    end;
                  finally
                    ls_Rcrd.Free;
                  end;
                end;
                Frm_WOR04.cxgWkAttend.EndUpdate;
                if Frm_WOR04.cxgWkAttend.DataController.RecordCount > 0 then
                begin
                  Frm_WOR04.Show;
                end;
              end;
          end;
        end else
        if Copy(ls_ClientKey, 1, 5) = 'WOR01' then
        begin
          Frm_WOR01.proc_recieve(ls_rxxml);
        end else
        if Copy(ls_ClientKey, 1, 5) = 'WOR05' then
        begin
//-         frm_WOR05.proc_recieve(ls_rxxml);
        end else
        if Copy(ls_ClientKey, 1, 5) = 'WOR06' then
        begin
//-         frm_WOR06.proc_recieve(ls_rxxml);
        end else
        if Copy(ls_ClientKey, 1, 5) = 'WOR07' then
        begin
//-         frm_WOR07.proc_recieve(ls_rxxml);
        end else
        if Copy(ls_ClientKey, 1, 5) = 'WOR08' then
        begin
//-         frm_WOR08.proc_recieve(ls_rxxml);
        end else
        if Copy(ls_ClientKey, 1, 5) = 'WOR09' then
        begin
//-         frm_WOR09.proc_recieve(ls_rxxml);
        end;
      end else
      begin
        btnSearchA3.Enabled := True;
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
      end;
    finally
      btnSearchA3.Enabled := True;
      Screen.Cursor := crDefault;
      xdom := Nil;
    end;
  except
    btnSearchA3.Enabled := True;
  end;
end;


procedure TFrm_WORA3.FormCreate(Sender: TObject);
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

  if (TCK_USER_PER.WOR_MngModify = '1') then
  begin
    N29.Visible := True;
  end else
  begin
    N29.Visible := False;
  end;
end;

procedure TFrm_WORA3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_WORA3.btnSearchA3Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	cxgWkAttend.DataController.SetRecordCount(0);
  proc_WkAttend;
end;

procedure TFrm_WORA3.N29Click(Sender: TObject);
var
  iWkSabun, iRow, iBrNo: Integer;
  sWkSabun, sBrNo, sWkPhone, sKeyNum: string;
begin
  sWkPhone := '';

  iWkSabun := 2;
  iBrNo := 13;
  iRow := cxgWkAttend.DataController.FocusedRecordIndex;
  if iRow < 0 then
    exit;
  sWkSabun := cxgWkAttend.DataController.Values[iRow, iWkSabun];
  sBrNo := cxgWkAttend.DataController.Values[iRow, iBrNo];

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
          exit;
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
        if cxgWkAttend.DataController.RecordCount = 0 then
        begin
          GMessagebox('자료가 없습니다.', CDMSI);
          exit;
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

        Frm_Main.sgExcel := '기사배차현황.xls';
        Frm_Main.sgRpExcel := Format('기사>기사배차현황]%s건/%s', [GetMoneyStr(cxgWkAttend.DataController.RecordCount), FExcelDownBeach]);
        Frm_Main.cxGridExcel := cxGridA3;
        Frm_Main.proc_excel(0);
      end;
  end;
end;

function TFrm_WORA3.func_Search_Phone(sWkSabun: string): string;
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
            exit;
          end;
          ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
          if ('0000' = ls_MSG_Err) then
          begin
            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
            ls_Rcrd := TStringList.Create;
            try
              GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
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

procedure TFrm_WORA3.pmWkMenuA3Popup(Sender: TObject);
begin
  if GT_OCX <> '' then
    MenuItem35.Visible := True
  else
    MenuItem35.Visible := False;
end;

procedure TFrm_WORA3.proc_Wk_Tel(sWkPhone: string);
var
	sCustTel : string;
begin
	sCustTel := StringReplace(sWkPhone, '-', '', [rfReplaceAll]);
  Log('기사배차 기사전화걸기 ' + sCustTel, LOGDATAPATHFILE);
  Frm_Main.pCallingCID(sCustTel, GT_POSS_KEYNUM);
end;

procedure TFrm_WORA3.RbButton1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_dateA3.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

function TFrm_WORA3.func_BrTelSearch(sBrNo: string): string;
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

procedure TFrm_WORA3.cxgWkAttendBands0HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkAttend.ColumnCount - 1 do
    begin
      if (i <> 0) then
      begin
        cxgWkAttend.Columns[i].SortIndex := -1;
        cxgWkAttend.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkAttend.Columns[0].SortOrder = soNone) or
      (cxgWkAttend.Columns[0].SortOrder =
      soDescending) then
      cxgWkAttend.Columns[0].SortOrder := soAscending
    else
      if cxgWkAttend.Columns[0].SortOrder = soAscending then
      cxgWkAttend.Columns[0].SortOrder := soDescending;
    cxgWkAttend.Columns[0].SortIndex := 0;
    cxgWkAttend.DataController.FocusedRowIndex := 0;
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkAttendBands0]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WORA3.cxgWkAttendBands11HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkAttend.ColumnCount - 1 do
    begin
      if (i <> 8) then
      begin
        cxgWkAttend.Columns[i].SortIndex := -1;
        cxgWkAttend.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkAttend.Columns[8].SortOrder = soNone) or
      (cxgWkAttend.Columns[8].SortOrder =
      soDescending) then
      cxgWkAttend.Columns[8].SortOrder := soAscending
    else
      if cxgWkAttend.Columns[8].SortOrder = soAscending then
      cxgWkAttend.Columns[8].SortOrder := soDescending;
    cxgWkAttend.Columns[8].SortIndex := 8;
    cxgWkAttend.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkAttend, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkAttendBands8]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WORA3.cxgWkAttendBands12HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkAttend.ColumnCount - 1 do
    begin
      if (i <> 9) then
      begin
        cxgWkAttend.Columns[i].SortIndex := -1;
        cxgWkAttend.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkAttend.Columns[9].SortOrder = soNone) or
      (cxgWkAttend.Columns[9].SortOrder =
      soDescending) then
      cxgWkAttend.Columns[9].SortOrder := soAscending
    else
      if cxgWkAttend.Columns[9].SortOrder = soAscending then
      cxgWkAttend.Columns[9].SortOrder := soDescending;
    cxgWkAttend.Columns[9].SortIndex := 9;
    cxgWkAttend.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkAttend, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkAttendBands9]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WORA3.cxgWkAttendBands13HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkAttend.ColumnCount - 1 do
    begin
      if (i <> 10) then
      begin
        cxgWkAttend.Columns[i].SortIndex := -1;
        cxgWkAttend.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkAttend.Columns[10].SortOrder = soNone) or
      (cxgWkAttend.Columns[10].SortOrder =
      soDescending) then
      cxgWkAttend.Columns[10].SortOrder := soAscending
    else
      if cxgWkAttend.Columns[10].SortOrder = soAscending then
      cxgWkAttend.Columns[10].SortOrder := soDescending;
    cxgWkAttend.Columns[10].SortIndex := 10;
    cxgWkAttend.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkAttend, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkAttendBands10]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WORA3.cxgWkAttendBands15HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkAttend.ColumnCount - 1 do
    begin
      if (i <> 11) then
      begin
        cxgWkAttend.Columns[i].SortIndex := -1;
        cxgWkAttend.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkAttend.Columns[11].SortOrder = soNone) or
      (cxgWkAttend.Columns[11].SortOrder =
      soDescending) then
      cxgWkAttend.Columns[11].SortOrder := soAscending
    else
      if cxgWkAttend.Columns[11].SortOrder = soAscending then
      cxgWkAttend.Columns[11].SortOrder := soDescending;
    cxgWkAttend.Columns[11].SortIndex := 11;
    cxgWkAttend.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkAttend, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkAttendBands11]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WORA3.cxgWkAttendBands16HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkAttend.ColumnCount - 1 do
    begin
      if (i <> 12) then
      begin
        cxgWkAttend.Columns[i].SortIndex := -1;
        cxgWkAttend.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkAttend.Columns[12].SortOrder = soNone) or
      (cxgWkAttend.Columns[12].SortOrder =
      soDescending) then
      cxgWkAttend.Columns[12].SortOrder := soAscending
    else
      if cxgWkAttend.Columns[12].SortOrder = soAscending then
      cxgWkAttend.Columns[12].SortOrder := soDescending;
    cxgWkAttend.Columns[12].SortIndex := 12;
    cxgWkAttend.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkAttend, GS_SortNoChange);
  except
    on e: Exception do
    begin
      GMessagebox(PChar('frmWOR[cxgWkAttendBands12]Error:' + e.Message), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WORA3.cxgWkAttendBands1HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkAttend.ColumnCount - 1 do
    begin
      if (i <> 1) then
      begin
        cxgWkAttend.Columns[i].SortIndex := -1;
        cxgWkAttend.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkAttend.Columns[1].SortOrder = soNone) or
      (cxgWkAttend.Columns[1].SortOrder =
      soDescending) then
      cxgWkAttend.Columns[1].SortOrder := soAscending
    else
      if cxgWkAttend.Columns[1].SortOrder = soAscending then
      cxgWkAttend.Columns[1].SortOrder := soDescending;
    cxgWkAttend.Columns[1].SortIndex := 1;
    cxgWkAttend.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkAttend, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkAttendBands1]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WORA3.cxgWkAttendBands2HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkAttend.ColumnCount - 1 do
    begin
      if (i <> 2) then
      begin
        cxgWkAttend.Columns[i].SortIndex := -1;
        cxgWkAttend.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkAttend.Columns[2].SortOrder = soNone) or
      (cxgWkAttend.Columns[2].SortOrder =
      soDescending) then
      cxgWkAttend.Columns[2].SortOrder := soAscending
    else
      if cxgWkAttend.Columns[2].SortOrder = soAscending then
      cxgWkAttend.Columns[2].SortOrder := soDescending;
    cxgWkAttend.Columns[2].SortIndex := 2;
    cxgWkAttend.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkAttend, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkAttendBands2]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WORA3.cxgWkAttendBands3HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkAttend.ColumnCount - 1 do
    begin
      if (i <> 3) then
      begin
        cxgWkAttend.Columns[i].SortIndex := -1;
        cxgWkAttend.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkAttend.Columns[3].SortOrder = soNone) or
      (cxgWkAttend.Columns[3].SortOrder =
      soDescending) then
      cxgWkAttend.Columns[3].SortOrder := soAscending
    else
      if cxgWkAttend.Columns[3].SortOrder = soAscending then
      cxgWkAttend.Columns[3].SortOrder := soDescending;
    cxgWkAttend.Columns[3].SortIndex := 3;
    cxgWkAttend.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkAttend, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkAttendBands3]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WORA3.cxgWkAttendBands5HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkAttend.ColumnCount - 1 do
    begin
      if (i <> 4) then
      begin
        cxgWkAttend.Columns[i].SortIndex := -1;
        cxgWkAttend.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkAttend.Columns[4].SortOrder = soNone) or
      (cxgWkAttend.Columns[4].SortOrder =
      soDescending) then
      cxgWkAttend.Columns[4].SortOrder := soAscending
    else
      if cxgWkAttend.Columns[4].SortOrder = soAscending then
      cxgWkAttend.Columns[4].SortOrder := soDescending;
    cxgWkAttend.Columns[4].SortIndex := 4;
    cxgWkAttend.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkAttend, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkAttendBands4]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WORA3.cxgWkAttendBands6HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkAttend.ColumnCount - 1 do
    begin
      if (i <> 5) then
      begin
        cxgWkAttend.Columns[i].SortIndex := -1;
        cxgWkAttend.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkAttend.Columns[5].SortOrder = soNone) or
      (cxgWkAttend.Columns[5].SortOrder =
      soDescending) then
      cxgWkAttend.Columns[5].SortOrder := soAscending
    else
      if cxgWkAttend.Columns[5].SortOrder = soAscending then
      cxgWkAttend.Columns[5].SortOrder := soDescending;
    cxgWkAttend.Columns[5].SortIndex := 5;
    cxgWkAttend.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkAttend, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkAttendBands5]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WORA3.cxgWkAttendBands8HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkAttend.ColumnCount - 1 do
    begin
      if (i <> 6) then
      begin
        cxgWkAttend.Columns[i].SortIndex := -1;
        cxgWkAttend.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkAttend.Columns[6].SortOrder = soNone) or
      (cxgWkAttend.Columns[6].SortOrder =
      soDescending) then
      cxgWkAttend.Columns[6].SortOrder := soAscending
    else
      if cxgWkAttend.Columns[6].SortOrder = soAscending then
      cxgWkAttend.Columns[6].SortOrder := soDescending;
    cxgWkAttend.Columns[6].SortIndex := 6;
    cxgWkAttend.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkAttend, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkAttendBands6]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WORA3.cxgWkAttendBands9HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkAttend.ColumnCount - 1 do
    begin
      if (i <> 7) then
      begin
        cxgWkAttend.Columns[i].SortIndex := -1;
        cxgWkAttend.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkAttend.Columns[7].SortOrder = soNone) or
      (cxgWkAttend.Columns[7].SortOrder =
      soDescending) then
      cxgWkAttend.Columns[7].SortOrder := soAscending
    else
      if cxgWkAttend.Columns[7].SortOrder = soAscending then
      cxgWkAttend.Columns[7].SortOrder := soDescending;
    cxgWkAttend.Columns[7].SortIndex := 7;
    cxgWkAttend.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkAttend, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkAttendBands7]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WORA3.cxgWkAttendCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  proc_WkAttend_Search;
end;

procedure TFrm_WORA3.proc_WkAttend_Search;
var
  ls_TxQry, ls_TxLoad, sDt1, sDt2, sWkSabun, sQueryTemp : string; // XML File Load
  iRow, iwkSabun: Integer;
  slReceive: TStringList;
  ErrCode: integer;
begin
  iRow := cxgWkAttend.DataController.FocusedRecordIndex;
  if iRow < 0 then
    exit;
  iwkSabun := cxgWkAttend.GetColumnByFieldName('기사사번').Index;
  sWkSabun := cxgWkAttend.DataController.Values[iRow, iWkSabun];
  if (cxDtStartA3.Text = '') or (cxDtEndA3.Text = '') then
  begin
    cxDtStartA3.Date := StrToDate(Copy(startDateTime('yyyy-mm-dd'), 1, 10));
    cxDtEndA3.Date := cxDtStartA3.Date + 1;
  end;
  sDt1 := FormatDateTime('yyyymmdd', cxDtStartA3.Date) + '090000';
  sDt2 := FormatDateTime('yyyymmdd', cxDtEndA3.Date) + '090000';

  ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
  fGet_BlowFish_Query(GSQ_WK_ATTENT_SEARCH, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, [sWkSabun, sDt1, sDt2]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString',
    En_Coding(GT_USERIF.ID),
    [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO,
    [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WOR008',
    [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry,
    [rfReplaceAll]);

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
end;

procedure TFrm_WORA3.FormDestroy(Sender: TObject);
begin
  Frm_WORA3 := Nil;
end;

procedure TFrm_WORA3.MenuItem10Click(Sender: TObject);
begin
  SetDateControl(cxDtStartA3, cxDtEndA3, tdStartMonth);
end;

procedure TFrm_WORA3.MenuItem6Click(Sender: TObject);
begin
  SetDateControl(cxDtStartA3, cxDtEndA3, tdToday);
end;

procedure TFrm_WORA3.MenuItem7Click(Sender: TObject);
begin
  SetDateControl(cxDtStartA3, cxDtEndA3, tdYesterday);
end;

procedure TFrm_WORA3.MenuItem8Click(Sender: TObject);
begin
  SetDateControl(cxDtStartA3, cxDtEndA3, tdOneWeek);
end;

procedure TFrm_WORA3.MenuItem9Click(Sender: TObject);
begin
  SetDateControl(cxDtStartA3, cxDtEndA3, tdOneMonth);
end;

procedure TFrm_WORA3.proc_FamilyBrChange;
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

procedure TFrm_WORA3.proc_WkAttend;
var
  ls_TxQry, ls_TxLoad, sDt1, sDt2, sWhere, sHdNo, sQueryTemp: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

   if fGetChk_Search_HdBrNo('기사배차현황') then Exit;

  if cxgWkAttend.DataController.RecordCount = 0 then
  begin
    //////////////////////////////////////////////////////////////////////////////
    // 기사>기사배차현황]1000건/콜센터(통합)/기간:XXXX~XXXX
    FExcelDownBeach := Format('%s/기간:%s~%s',
      [
          GetSelBrInfo
        , cxDtStartA3.Text, cxDtEndA3.Text
      ]);
    //////////////////////////////////////////////////////////////////////////////

    sWhere := '';
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sHdNo := GT_SEL_BRNO.HDNO
    else
      sHdNo := GT_USERIF.HD;

    if (cxDtStartA3.Text = '') or (cxDtEndA3.Text = '') then
    begin
      cxDtStartA3.Date := StrToDate(Copy(startDateTime('yyyy-mm-dd'), 1, 10));
      cxDtEndA3.Date := cxDtStartA3.Date + 1;
    end;
    sDt1 := FormatDateTime('yyyymmdd', cxDtStartA3.Date) + '090000';
    sDt2 := FormatDateTime('yyyymmdd', cxDtEndA3.Date) + '090000';
    if GT_USERIF.LV <> '60' then
      sWhere := 'AND WK_BRCH = ''' + GT_USERIF.BR + ''' '
    else if GT_SEL_BRNO.GUBUN = '1' then
      sWhere := 'AND WK_BRCH = ''' + GT_SEL_BRNO.BrNo + ''' ';

    if cxEdtSelText.Text <> '' then
    begin
      if cbSelList.ItemIndex = 0 then
        sWhere := sWhere + ' AND CONF_WK_SABUN = ''' + Param_Filtering(cxEdtSelText.Text) + ''' '
      else
      if cbSelList.ItemIndex = 1 then
        sWhere := sWhere + ' AND CONF_WORKER LIKE ''%' + Param_Filtering(cxEdtSelText.Text) + '%'' ';
    end;

    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_WK_ATTEND, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sDt1, sDt2, sHdNo, sWhere]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WOR002', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

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
  end;
end;


end.

unit xe_JON55;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, MSXML2_TLB,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxLabel, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxGroupBox, Vcl.ExtCtrls, DateUtils, dxSkinsCore,
  dxSkinscxPCPainter, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  TFrm_JON55 = class(TForm)
    Panel9: TPanel;
    Shape29: TShape;
    cxGroupBox11: TcxGroupBox;
    dedt_Edate: TcxDateEdit;
    btn_UnansweredCall: TcxButton;
    cxButton21: TcxButton;
    edt_NAMETEL: TcxTextEdit;
    cxLabel16: TcxLabel;
    edt_DNIS: TcxTextEdit;
    cxLabel23: TcxLabel;
    dedt_Sdate: TcxDateEdit;
    cxLabel24: TcxLabel;
    BtncxPage2E: TcxButton;
    cxGrid5: TcxGrid;
    cxGrid_UnansweredCall: TcxGridDBTableView;
    cxGrid_UnansweredCallColumn2: TcxGridDBColumn;
    cxGrid_UnansweredCallColumn3: TcxGridDBColumn;
    cxGrid_UnansweredCallColumn4: TcxGridDBColumn;
    cxGrid_UnansweredCallColumn6: TcxGridDBColumn;
    cxGrid_UnansweredCallColumn7: TcxGridDBColumn;
    cxGrid_UnansweredCallColumn9: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    pop_date: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    cxGrid_UnansweredCallColumn10: TcxGridDBColumn;
    cxGrid_UnansweredCallColumn11: TcxGridDBColumn;
    cxGrid_UnansweredCallColumn1: TcxGridDBColumn;
    cb_Gubun: TcxComboBox;
    cxGrid_UnansweredCallColumn5: TcxGridDBColumn;
    cxGrid_UnansweredCallColumn8: TcxGridDBColumn;
    Pop_UnansweredCall: TPopupMenu;
    Pop_CallManage_N4: TMenuItem;
    Pop_CallManage_N6: TMenuItem;
    Pop_CallManage_N7: TMenuItem;
    Pop_CallManage_N8: TMenuItem;
    lb_UnanswerCnt: TcxLabel;
    tmrTicTok: TTimer;
    cxGrid_UnansweredCallColumn12: TcxGridDBColumn;
    btn_Excel: TcxButton;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_UnansweredCallClick(Sender: TObject);
    procedure cxButton21Click(Sender: TObject);
    procedure BtncxPage2EClick(Sender: TObject);
    procedure Pop_CallManage_N4Click(Sender: TObject);
    procedure Pop_UnansweredCallPopup(Sender: TObject);
    procedure Pop_CallManage_N6Click(Sender: TObject);
    procedure Pop_CallManage_N8Click(Sender: TObject);
    procedure Pop_CallManage_N7Click(Sender: TObject);
    procedure cxGrid_UnansweredCallCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_UnansweredCallMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tmrTicTokTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_ExcelClick(Sender: TObject);
  private
		{ Private declarations }
		sCustTel, sKeyNum, sGubun : string;
    iTicTokCnt : integer;
		procedure Proc_Init; // 프로그램 초기화 설정처리.
  public
    { Public declarations }
  end;

var
  Frm_JON55: TFrm_JON55;

implementation
uses xe_Lib, xe_Func, xe_XML, xe_gnl, xe_gnl3, xe_DM, xe_Msg, Main, xe_JON32;

{$R *.dfm}

procedure TFrm_JON55.N5Click(Sender: TObject);
begin
  SetDateControl(dedt_Sdate, dedt_Edate, tdStartMonth);
end;

procedure TFrm_JON55.Pop_CallManage_N4Click(Sender: TObject);
begin
	frm_Main.procJON03Open; // 접수현황 Open 여부 체크
	frm_Main.Proc_JoinFromView(GI_JON03_LastFromIdx, CallToStr(sCustTel));
  frm_Main.Frm_JON01N[GI_JON01_LastFromIdx].locCustHP_MainNum_Search := '';
  frm_Main.Frm_JON01N[GI_JON01_LastFromIdx].Proc_CIDEventAutoSearch(sCustTel, sKeyNum, '', '', '', 'N');

  pJON01Show(GI_JON01_LastFromIdx);
end;

procedure TFrm_JON55.Pop_CallManage_N6Click(Sender: TObject);
var
	AView: TcxGridDBTableView;
	irow, iWKSabun: integer;
  sWKSabun : string;
begin
	AView := cxGrid_UnansweredCall;

	irow := AView.DataController.FocusedRecordIndex;
  iWKSabun := AView.GetColumnByFieldName('기사사번').Index;
  sWKSabun := AView.DataController.Values[iRow,iWKSabun];
  if sWKSabun = '' then
  begin
    ShowMessage('선택된 기사가 없습니다.');
    Exit;
  end else
  begin
    if ( Not Assigned(Frm_JON32) ) Or ( Frm_JON32 = NIl ) then Frm_JON32 := TFrm_JON32.Create(Nil);
    Frm_JON32.Jon03Tag := Self.Tag;
  	Frm_JON32.Proc_Flag := 4;
    Frm_JON32.sWk_sabun32 := sWKSabun;
		Frm_JON32.sWkName := '';
		Frm_JON32.sKeyNumber := '';
    Frm_JON32.Show;
  end;
end;

procedure TFrm_JON55.Pop_CallManage_N7Click(Sender: TObject);
begin
	Frm_Main.pCallingCID(CallToStr(sCustTel), sKeyNum);
end;

procedure TFrm_JON55.Pop_CallManage_N8Click(Sender: TObject);
begin
  Frm_Main.pCallingCID(CallToStr(sCustTel), sKeyNum);
end;

procedure TFrm_JON55.Pop_UnansweredCallPopup(Sender: TObject);
var
	AView: TcxGridDBTableView;
	irow, iCustTel, iKeyNum, iGubun: integer;
begin
	AView := cxGrid_UnansweredCall;
	irow := AView.DataController.FocusedRecordIndex;
//  iCustTel := AView.GetColumnByFieldName('전화번호').Index;
	iCustTel := AView.GetColumnByFieldName('RealCuTel').Index;
	sCustTel := CallToStr(AView.DataController.Values[iRow,iCustTel]);
  iKeyNum := AView.GetColumnByFieldName('대표번호').Index;
  sKeyNum := CallToStr(AView.DataController.Values[iRow,iKeyNum]);
  iGubun := AView.GetColumnByFieldName('구분').Index;
  sGubun := AView.DataController.Values[iRow,iGubun];
	if sGubun = '기사' then
  begin
    Pop_CallManage_N7.Enabled := False;
    Pop_CallManage_N8.Enabled := True;
    Pop_CallManage_N6.Enabled := True;
  end
  else if sGubun = '고객' then
  begin
    Pop_CallManage_N7.Enabled := True;
    Pop_CallManage_N8.Enabled := False;
    Pop_CallManage_N6.Enabled := False;
  end;
  if GT_OCX <> '' then
  begin
    Pop_CallManage_N7.Visible := True;
    Pop_CallManage_N8.Visible := True;
  end
  else
  begin
    Pop_CallManage_N7.Visible := False;
    Pop_CallManage_N8.Visible := False;
  end;

end;

procedure TFrm_JON55.Proc_Init;
var i : integer;
begin
  cxGrid_UnansweredCall.DataController.SetRecordCount(0);
	cxGrid_UnansweredCall.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to cxGrid_UnansweredCall.ColumnCount - 1 do
		cxGrid_UnansweredCall.Columns[i].DataBinding.ValueType := 'String';

  dedt_Sdate.Date := StrToDate(Date8to10(StartDateTime('yyyymmdd')));
  dedt_Edate.Date := dedt_Sdate.Date + 1;
  edt_NAMETEL.Text := '';
  edt_DNIS.Text := '';
  cb_Gubun.ItemIndex := 0;
  sCustTel := '';
  sKeyNum := '';
  sGubun := '';
end;

procedure TFrm_JON55.tmrTicTokTimer(Sender: TObject);
begin
  inc(iTicTokCnt);
  if iTicTokCnt = 1 then lb_UnanswerCnt.Caption := '조회중'    else
  if iTicTokCnt = 2 then lb_UnanswerCnt.Caption := '조회중.'   else
  if iTicTokCnt = 3 then lb_UnanswerCnt.Caption := '조회중..'  else
  if iTicTokCnt = 4 then lb_UnanswerCnt.Caption := '조회중...'
  else iTicTokCnt := 0;
end;

procedure TFrm_JON55.BtncxPage2EClick(Sender: TObject);
begin
  Frm_Main.cxPageControl2Click(Frm_Main.cxPageControl2);
end;

procedure TFrm_JON55.btn_ExcelClick(Sender: TObject);
begin
  if cxGrid_UnansweredCall.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
    Exit;
  end;

  Frm_Main.sgExcel := '부재중전화.xls';
  Frm_Main.sgRpExcel := Format('[부재중전화]%s건', [GetMoneyStr(cxGrid_UnansweredCall.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGrid5;
  Frm_Main.cxGridDBViewExcel := cxGrid_UnansweredCall;
  Frm_Main.proc_excel(1);
end;

procedure TFrm_JON55.btn_UnansweredCallClick(Sender: TObject);
var
  ls_TxLoad: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I, ErrCode, iRow, iCallRingTime: Integer;
  ls_MSG_Err : string;
  ls_Rcrd: TStringList;
begin
	try
    //////////////////////////////////////////////////////////////////////////////////
    //  접수 전문
    //////////////////////////////////////////////////////////////////////////////////
    cxGrid_UnansweredCall.DataController.SetRecordCount(0);

    ls_TxLoad := GTx_UnitXmlLoad('JON06020.XML');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'JON06020');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strSearchDNIS', Trim(edt_DNIS.Text));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strSearchGubun', IntToStr(cb_Gubun.ItemIndex));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strSearchText', Trim(Param_Filtering(edt_NAMETEL.Text)));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strFromDate', FormatDateTime('YYYYMMDD', dedt_Sdate.Date) + '090000');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strToDate', FormatDateTime('YYYYMMDD', dedt_Edate.Date) + '090000');

    Screen.Cursor := crHourGlass;
    cxGroupBox11.Enabled := False;
    slRcvList := TStringList.Create;
    tmrTicTok.Enabled := True;
    try
      if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 30000) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          xdom := ComsDomDocument.Create;
          try
            xdom.loadXML(ls_rxxml);
            ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' <> ls_MSG_Err) then
            begin
              GMessagebox(ls_Msg_Err, CDMSE);
              exit;
            end;
            Try
              iCallRingTime := cxGrid_UnansweredCall.GetColumnByFieldName('콜인입일시').Index;
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Cid');
              cxGrid_UnansweredCall.BeginUpdate;
              ls_Rcrd := TStringList.Create;
              for i := 0 to lst_Result.length -1 do
              begin
                GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Data').Text, ls_Rcrd);

                if GT_USERIF.LV = '40' then // 지사관리자일경우 해당 지사의 대표번호내역만 처리  2015.11.24 LYB
                begin
//                  if Trim(ls_Rcrd[3]) <> '' then
                  begin
                    if scb_KeyNumber.IndexOf(ls_Rcrd[3]) < 0 then Continue;
                  end;
                end;

                iRow := cxGrid_UnansweredCall.DataController.AppendRecord;
                cxGrid_UnansweredCall.DataController.Values[iRow, 0] := I+1;
                cxGrid_UnansweredCall.DataController.Values[iRow, 1] := ls_Rcrd[0];

                if SecondsBetween(StrToDateTimeDef(ls_Rcrd[1],0), StrToDateTimeDef(ls_Rcrd[0],0)) < 1 then
                  cxGrid_UnansweredCall.DataController.Values[iRow,2] := ls_Rcrd[1]              //링타임
                else
                begin
                  if Trim(ls_Rcrd[0]) = '' then
                    cxGrid_UnansweredCall.DataController.Values[iRow,2] := ls_Rcrd[1]
                  else
                    cxGrid_UnansweredCall.DataController.Values[iRow,2] := ls_Rcrd[1] + '('
                                                + inttostr(SecondsBetween(StrToDateTimeDef(ls_Rcrd[1], 0), StrToDateTimeDef(ls_Rcrd[0], 0))) +'초)';              //링타임
                end;

                cxGrid_UnansweredCall.DataController.Values[iRow, 3] := ls_Rcrd[2];
                cxGrid_UnansweredCall.DataController.Values[iRow, 4] := StrToCall(ls_Rcrd[3]); //KeyNumber
                cxGrid_UnansweredCall.DataController.Values[iRow, 5] := ls_Rcrd[4]; //Dnis
								cxGrid_UnansweredCall.DataController.Values[iRow, 6] := func_CustTel_Masking(TCK_USER_PER.BTM_CUTELUNMASKING = '1', ls_Rcrd[5]); //custTel
								if (ls_Rcrd[7] = '') and (ls_Rcrd[8] = '') then
                begin
                  cxGrid_UnansweredCall.DataController.Values[iRow, 7] := '고객'; //Gubun
                  cxGrid_UnansweredCall.DataController.Values[iRow, 8] := ls_Rcrd[6]; //custName
                end
                else if (ls_Rcrd[7] <> '') and (ls_Rcrd[8] = '') then
                begin
                  cxGrid_UnansweredCall.DataController.Values[iRow, 7] := '고객'; //Gubun
                  cxGrid_UnansweredCall.DataController.Values[iRow, 8] := ls_Rcrd[6]; //custName
                end
                else if (ls_Rcrd[7] = '') and (ls_Rcrd[8] <> '') then
                begin
                  cxGrid_UnansweredCall.DataController.Values[iRow, 7] := '기사'; //Gubun
                  cxGrid_UnansweredCall.DataController.Values[iRow, 8] := ls_Rcrd[9]; //custName
                end
                else if (ls_Rcrd[7] <> '') and (ls_Rcrd[8] <> '') then
                begin
                  cxGrid_UnansweredCall.DataController.Values[iRow, 7] := '기사'; //Gubun
                  cxGrid_UnansweredCall.DataController.Values[iRow, 8] := ls_Rcrd[9]; //custName
                end;
                cxGrid_UnansweredCall.DataController.Values[iRow, 9] := ls_Rcrd[7]; //custSeq
								cxGrid_UnansweredCall.DataController.Values[iRow,10] := ls_Rcrd[8]; //WKSabun
								cxGrid_UnansweredCall.DataController.Values[iRow,11] := StrToCall(ls_Rcrd[5]); //custTel
							end;
            Finally
              ls_Rcrd.Free;
              cxGrid_UnansweredCall.EndUpdate;

              cxGrid_UnansweredCall.Columns[iCallRingTime].SortOrder := soDescending;
             	gfSetIndexNo(cxGrid_UnansweredCall, iCallRingTime, GS_SortNoChange, 0, True);
            End;
          finally
            xdom := Nil;
          end;
        end;
      end;
    finally
      cxGroupBox11.Enabled := True;
      tmrTicTok.Enabled := False;
      iTicTokCnt := 0;
      lb_UnanswerCnt.Caption := '부재중 건수 : '+ IntToStr(cxGrid_UnansweredCall.DataController.RecordCount) + '건';
      slRcvList.Free;
      Screen.Cursor := crDefault;
    end;
  except
    on e: Exception do
    begin
      cxGrid_UnansweredCall.EndUpdate;
      cxGroupBox11.Enabled := True;
      tmrTicTok.Enabled := False;
      iTicTokCnt := 0;
      lb_UnanswerCnt.Caption := '';
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON55.btn_UnansweredCallMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Frm_Main.iTmrBtmMenu := 0;
end;

procedure TFrm_JON55.cxButton21Click(Sender: TObject);
begin
  pop_date.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_JON55.cxGrid_UnansweredCallCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if (AButton = mbRight) then
  begin
    Pop_UnansweredCall.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
  end
  else
  begin
  end;
end;

procedure TFrm_JON55.FormCreate(Sender: TObject);
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

  Proc_Init;
end;

procedure TFrm_JON55.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON55, GS_FONTNAME);
  fSetSkin(Frm_JON55);
end;

procedure TFrm_JON55.N1Click(Sender: TObject);
begin
  SetDateControl(dedt_Sdate, dedt_Edate, tdToday);
end;

procedure TFrm_JON55.N2Click(Sender: TObject);
begin
  SetDateControl(dedt_Sdate, dedt_Edate, tdYesterday);
end;

procedure TFrm_JON55.N3Click(Sender: TObject);
begin
  SetDateControl(dedt_Sdate, dedt_Edate, tdOneWeek);
end;

procedure TFrm_JON55.N4Click(Sender: TObject);
begin
  SetDateControl(dedt_Sdate, dedt_Edate, tdOneMonth);
end;

end.


unit xe_JON53;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, MSXML2_TLB,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxGroupBox,
  Vcl.ExtCtrls, cxCurrencyEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, Math, cxCheckBox, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxCalendar, dxSkinsCore, dxSkinscxPCPainter, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  TFrm_JON53 = class(TForm)
    Panel1: TPanel;
    Panel11: TPanel;
    Shape31: TShape;
    cxGroupBox13: TcxGroupBox;
    btn_Illegal_Order_Search: TcxButton;
    cxLabel30: TcxLabel;
    cxButton15: TcxButton;
    BtncxPage6E: TcxButton;
    cxGrid7: TcxGrid;
    cxGrid_Illegal_Cancel: TcxGridDBTableView;
    cxGrid_Illegal_CancelColumn1: TcxGridDBColumn;
    cxGrid_Illegal_CancelColumn2: TcxGridDBColumn;
    cxGrid_Illegal_CancelColumn3: TcxGridDBColumn;
    cxGrid_Illegal_CancelColumn4: TcxGridDBColumn;
    cxGrid_Illegal_CancelColumn5: TcxGridDBColumn;
    cxGrid_Illegal_CancelColumn6: TcxGridDBColumn;
    cxGrid_Illegal_CancelColumn7: TcxGridDBColumn;
    cxGrid_Illegal_CancelColumn8: TcxGridDBColumn;
    cxGrid_Illegal_CancelColumn9: TcxGridDBColumn;
    cxGrid_Illegal_CancelColumn10: TcxGridDBColumn;
    cxGrid_Illegal_CancelColumn11: TcxGridDBColumn;
    cxGrid_Illegal_CancelColumn12: TcxGridDBColumn;
    cxGrid_Illegal_CancelColumn13: TcxGridDBColumn;
    cxGrid_Illegal_CancelColumn14: TcxGridDBColumn;
    cxGrid_Illegal_CancelColumn15: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
    cxLabel1: TcxLabel;
    cb_Illegal_Option: TcxComboBox;
    cxGrid_Illegal_CancelColumn16: TcxGridDBColumn;
    cxGrid_Illegal_CancelColumn17: TcxGridDBColumn;
    cxGrid_Illegal_CancelColumn18: TcxGridDBColumn;
    cxGrid_Illegal_CancelColumn19: TcxGridDBColumn;
    cxGrid_Illegal_CancelColumn20: TcxGridDBColumn;
    cxGrid_Illegal_CancelColumn21: TcxGridDBColumn;
    cxGrid_Illegal_CancelColumn22: TcxGridDBColumn;
    cxGrid_Illegal_CancelColumn23: TcxGridDBColumn;
    cxGrid_Illegal_CancelColumn24: TcxGridDBColumn;
    cxGrid_Illegal_CancelColumn25: TcxGridDBColumn;
    cxGrid_Illegal_CancelColumn26: TcxGridDBColumn;
    cxGrid_Illegal_CancelColumn27: TcxGridDBColumn;
    pmIllegal_Cancel: TPopupMenu;
    nIllegal_1: TMenuItem;
    nIllegal_2: TMenuItem;
    nIllegal_3: TMenuItem;
    nIllegal_4: TMenuItem;
    nIllegal_6: TMenuItem;
    nIllegal_8: TMenuItem;
    Search_Route_USE: TcxCheckBox;
    dedt_date: TcxDateEdit;
    cxButton14: TcxButton;
    lb_SearchDay: TcxLabel;
    pop_date: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    nIllegal_88: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure cxButton15Click(Sender: TObject);
    procedure btn_Illegal_Order_SearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtncxPage6EClick(Sender: TObject);
    procedure nIllegal_1Click(Sender: TObject);
    procedure cxGrid_Illegal_CancelCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid_Illegal_CancelCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton14Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure btn_Illegal_Order_SearchMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure pmIllegal_CancelPopup(Sender: TObject);
  private
    { Private declarations }
    sConfSlip, sWKSabun : string;
    ASearchDate, pIllegal_Option : string;
    procedure proc_init;
  public
    { Public declarations }
    Function Func_recieve(ls_rxxml: String):Boolean;
  end;

var
  Frm_JON53: TFrm_JON53;

implementation

{$R *.dfm}

uses Main, xe_xml, xe_Func, xe_GNL, xe_Dm, xe_WOR17, xe_Msg;

procedure TFrm_JON53.BtncxPage6EClick(Sender: TObject);
begin
  Frm_Main.cxPageControl2Click(Frm_Main.cxPageControl2);
end;

procedure TFrm_JON53.btn_Illegal_Order_SearchClick(Sender: TObject);
var
  ls_TxLoad: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  I, ErrCode: integer;
  sIllegal_Option, sHdNO, sBrNO : string;
begin
	try
    Case cb_Illegal_Option.ItemIndex of
      0 : sIllegal_Option := '0';
      1 : sIllegal_Option := '1';
      2 : sIllegal_Option := '2';
      3 : sIllegal_Option := '3';
      4 : sIllegal_Option := '4';
      5 : sIllegal_Option := '6';
      6 : sIllegal_Option := '8';
    End;

    pIllegal_Option := ASearchDate;

    //////////////////////////////////////////////////////////////////////////////////
    //  접수 전문
    //////////////////////////////////////////////////////////////////////////////////
    ls_TxLoad := GTx_UnitXmlLoad('JON06060.XML');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'JON06060');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'SearchOptionString', sIllegal_Option);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'DayGubunString', ASearchDate);

    if GT_SEL_BRNO.GUBUN <> '1' then
    begin
      if GT_USERIF.LV = '60' then
      begin
        sHdNO := GT_SEL_BRNO.HDNO;
        sBrNO := '';
      end
    end else
    if GT_SEL_BRNO.GUBUN = '1' then
    begin
      if GT_USERIF.LV = '60' then
      begin
        sHdNO := GT_SEL_BRNO.HDNO;
        sBrNO := GT_SEL_BRNO.BrNo;
      end;
    end;

    if GT_USERIF.LV <= '40' then
    begin
      sHdNO := '';
      sBrNO := '';
    end;

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'SearchHdNoString', sHdNO);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'SearchBrNoString', sBrNO);

    Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 30000) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          if not Func_recieve(ls_rxxml) then //HasMore
            exit;
        end;
      end;
    finally
      slRcvList.Free;
      Screen.Cursor := crDefault;
    end;
  except
    on e: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON53.btn_Illegal_Order_SearchMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Frm_Main.iTmrBtmMenu := 0;
end;

procedure TFrm_JON53.cxButton14Click(Sender: TObject);
begin
  pop_date.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_JON53.cxButton15Click(Sender: TObject);
begin
  if Frm_Main.grpSetBadCancel.Visible then
    Frm_Main.grpSetBadCancel.Visible := False
  else
  begin
    Frm_Main.grpSetBadCancel.Left := (Frm_Main.Width - Frm_Main.grpSetBadCancel.Width) div 2;
    Frm_Main.grpSetBadCancel.top := ((Frm_Main.Height - Frm_Main.grpSetBadCancel.Height) div 2) - 50;
    Frm_Main.grpSetBadCancel.Visible := True;
  end;
end;

procedure TFrm_JON53.cxGrid_Illegal_CancelCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var iRow, iConfSlip, iWkSabun : integer;
begin
  if (AButton = mbRight) then
    pmIllegal_Cancel.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y)
  else
  begin
    iRow := cxGrid_Illegal_Cancel.DataController.FocusedRecordIndex;
    if iRow = -1 then
      exit;

    iConfSlip := cxGrid_Illegal_Cancel.GetColumnByFieldName('접수번호').Index;
    sConfSlip := cxGrid_Illegal_Cancel.DataController.Values[iRow, iConfSlip];
    iWkSabun := cxGrid_Illegal_Cancel.GetColumnByFieldName('취소기사사번').Index;
    sWKSabun := cxGrid_Illegal_Cancel.DataController.Values[iRow, iWkSabun];
	end;
end;

procedure TFrm_JON53.cxGrid_Illegal_CancelCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
	iRow, iBeaChaTime : integer;
  sBeaChaTime : string;
begin
  try
    iRow := cxGrid_Illegal_Cancel.DataController.FocusedRecordIndex;
		if iRow = -1 then Exit;
		iBeaChaTime := cxGrid_Illegal_Cancel.GetColumnByFieldName('배차확정시간').Index;
    sBeaChaTime := cxGrid_Illegal_Cancel.DataController.Values[iRow, iBeaChaTime];

		if sWKSabun = '기사NO' then Exit;
		if sWkSabun = 'M00001' then exit;
		
		if Not Assigned(Frm_WOR17) then Frm_WOR17 := TFrm_WOR17.Create(Nil);

		Frm_WOR17.sWkSabun := sWKSabun;
    Frm_WOR17.proc_init;
    Frm_WOR17.sBeaChaTime := sBeaChaTime;
    Frm_WOR17.cb_WKmove_Option.ItemIndex := StrToIntDef(ASearchDate,0);
    Frm_WOR17.chk_Search_Route.Tag := 1;
    Frm_WOR17.sConfSlip := '';
    Frm_WOR17.chk_WKHIS_AllSearch.Checked := True;
    Frm_WOR17.chk_WKHIS_AllSearchClick(Frm_WOR17.chk_WKHIS_AllSearch);
    if Trim(sBeaChaTime) <> '' then
      Frm_WOR17.cxTimeEnd.EditText := Copy(sBeaChaTime, 12, 8);
    Frm_WOR17.Proc_WKMoveHis_Sreach(sWKSabun, Search_Route_USE.Checked);
    Frm_WOR17.Show;
  except
    on e: exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON53.FormCreate(Sender: TObject);
var
  Save: LongInt; // 폼타이틀 제거용.
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

	//====================================================
  // 폼 타이틀 제거..
  if BorderStyle = bsNone then Exit;

  Save := GetWindowLong(Handle, gwl_Style);
  if (Save and ws_Caption) = ws_Caption then
  begin
    case BorderStyle of
      bsSingle, bsSizeable:
        SetWindowLong(Handle, gwl_Style, Save and (not (ws_Caption)) or ws_border);
    end;
    Height := Height - getSystemMetrics(sm_cyCaption);
    Refresh;
  end;
  proc_init;
end;

procedure TFrm_JON53.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON53, GS_FONTNAME);
  fSetSkin(Frm_JON53);
  proc_init;
end;

function TFrm_JON53.Func_recieve(ls_rxxml: String): Boolean;
var
  xdom: msDomDocument;
  ls_Msg_Err: string;
  lst_Result: IXMLDomNodeList;
  i, iRow : integer;
  sTmp : string;
begin
  Result := False;
  try
    xdom := ComsDomDocument.Create;
    Screen.Cursor := crHourGlass;
    try
      if not xdom.loadXML(ls_rxxml) then
      begin
        Exit;
      end;
      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' <> ls_MSG_Err) then
      begin
        GMessagebox(ls_Msg_Err, CDMSE);
        exit;
      end;
//       lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Response/Data');
//      if (0 < strtoint(lst_Result.item[0].attributes.getNamedItem('Count').Text)) then
      begin
        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Accept');
        cxGrid_Illegal_Cancel.DataController.SetRecordCount(0);
        cxGrid_Illegal_Cancel.DataController.BeginUpdate;
        try
          for I := 0 to lst_Result.length - 1 do
          begin
            iRow := cxGrid_Illegal_Cancel.DataController.AppendRecord;
            cxGrid_Illegal_Cancel.DataController.Values[iRow,  0] := I+1;
            sTmp := lst_Result.item[i].attributes.getNamedItem('Gubun').Text;
            if sTmp = '1' then sTmp := '미확인' else
            if sTmp = '2' then sTmp := '확인' else
            if sTmp = '3' then sTmp := '정상' else
            if sTmp = '4' then sTmp := '판정보류' else
            if sTmp = '6' then sTmp := '부정취소의심' else
            if sTmp = '8' then sTmp := '부정취소확정';
            cxGrid_Illegal_Cancel.DataController.Values[iRow,  1] := sTmp; //1:미확인, 2:확인, 3:정상, 4:판정보류, 6:부정취소의심, 8:부정취소판정"
            
            cxGrid_Illegal_Cancel.DataController.Values[iRow,  2] := lst_Result.item[i].attributes.getNamedItem('ConfSlip'   ).Text; //ConfSlip="접수번호"
            cxGrid_Illegal_Cancel.DataController.Values[iRow,  3] := lst_Result.item[i].attributes.getNamedItem('BrName'     ).Text; //BrName="지사명"
            cxGrid_Illegal_Cancel.DataController.Values[iRow,  4] := lst_Result.item[i].attributes.getNamedItem('FirstInDate').Text; //FirstInDate="최초접수시간 (YY/MM/DD HH24:MI:SS)"
            cxGrid_Illegal_Cancel.DataController.Values[iRow,  5] := lst_Result.item[i].attributes.getNamedItem('InDate'     ).Text; //InDate="접수시간 (YY/MM/DD HH24:MI:SS)"
            cxGrid_Illegal_Cancel.DataController.Values[iRow,  6] := lst_Result.item[i].attributes.getNamedItem('BaechaTime' ).Text; //BaechaTime="배차확정시간(YY/MM/DD HH24:MI:SS)"
            cxGrid_Illegal_Cancel.DataController.Values[iRow,  7] := lst_Result.item[i].attributes.getNamedItem('CancelTime' ).Text; //CancelTime="취소시간(YY/MM/DD HH24:MI:SS)"
            cxGrid_Illegal_Cancel.DataController.Values[iRow,  8] := lst_Result.item[i].attributes.getNamedItem('Area' ).Text + ' '
                                                                   + lst_Result.item[i].attributes.getNamedItem('Area2').Text + ' '
                                                                   + lst_Result.item[i].attributes.getNamedItem('Area3').Text + ' '
                                                                   + lst_Result.item[i].attributes.getNamedItem('Area4').Text; //Area+Area2+Area3+Area4="출발지"
            cxGrid_Illegal_Cancel.DataController.Values[iRow,  9] := lst_Result.item[i].attributes.getNamedItem('Area5').Text; //Area5="출발지"
            cxGrid_Illegal_Cancel.DataController.Values[iRow, 10] := lst_Result.item[i].attributes.getNamedItem('MapX' ).Text; //MapX="출발지"
            cxGrid_Illegal_Cancel.DataController.Values[iRow, 11] := lst_Result.item[i].attributes.getNamedItem('MapY' ).Text; //MapY="출발지"
            cxGrid_Illegal_Cancel.DataController.Values[iRow, 12] := lst_Result.item[i].attributes.getNamedItem('EdArea' ).Text + ' '
                                                                   + lst_Result.item[i].attributes.getNamedItem('EdArea2').Text + ' '
                                                                   + lst_Result.item[i].attributes.getNamedItem('EdArea3').Text + ' '
                                                                   + lst_Result.item[i].attributes.getNamedItem('EdArea4').Text; //Area+Area2+Area3+Area4="출발지"
            cxGrid_Illegal_Cancel.DataController.Values[iRow, 13] := lst_Result.item[i].attributes.getNamedItem('EdArea5').Text; //EdArea5="도착지"
            cxGrid_Illegal_Cancel.DataController.Values[iRow, 14] := lst_Result.item[i].attributes.getNamedItem('DestX'  ).Text; //DestX="도착지"
            cxGrid_Illegal_Cancel.DataController.Values[iRow, 15] := lst_Result.item[i].attributes.getNamedItem('DestY'  ).Text; //DestY="도착지"
            cxGrid_Illegal_Cancel.DataController.Values[iRow, 16] := lst_Result.item[i].attributes.getNamedItem('Charge' ).Text; //Charge="요금"
            cxGrid_Illegal_Cancel.DataController.Values[iRow, 17] := lst_Result.item[i].attributes.getNamedItem('CReason').Text; //CReason="취소사유"
            cxGrid_Illegal_Cancel.DataController.Values[iRow, 18] := lst_Result.item[i].attributes.getNamedItem('WkSabun').Text; //WkSabun="취소기사사번"
            cxGrid_Illegal_Cancel.DataController.Values[iRow, 19] := lst_Result.item[i].attributes.getNamedItem('WkName' ).Text; //WkName="취소기사명"
            cxGrid_Illegal_Cancel.DataController.Values[iRow, 20] := lst_Result.item[i].attributes.getNamedItem('WkLoginTime').Text; //WkLoginTime="기사단말최종로그인시간"
            cxGrid_Illegal_Cancel.DataController.Values[iRow, 21] := lst_Result.item[i].attributes.getNamedItem('WkConnState').Text; //WkConnState="접속상태(접속, 접속종료, 유)"
            cxGrid_Illegal_Cancel.DataController.Values[iRow, 22] := lst_Result.item[i].attributes.getNamedItem('WKLocName'  ).Text; //WKLocName="현위치명"
            cxGrid_Illegal_Cancel.DataController.Values[iRow, 23] := lst_Result.item[i].attributes.getNamedItem('WkLocLat'   ).Text; //WkLocLat="x(위도)"
            cxGrid_Illegal_Cancel.DataController.Values[iRow, 24] := lst_Result.item[i].attributes.getNamedItem('WkLocLng'   ).Text; //WkLocLng="y(경도)"
            if UpperCase(lst_Result.item[i].attributes.getNamedItem('WkLocType').Text) = 'G' then
              cxGrid_Illegal_Cancel.DataController.Values[iRow, 25] := 'GPS위치' //WkLocType="위치타입(G:GPS위치, N:네트워크위치, M:지도선택, A:지역선택, S:로그인초기값)"
            else
            if UpperCase(lst_Result.item[i].attributes.getNamedItem('WkLocType').Text) = 'N' then
              cxGrid_Illegal_Cancel.DataController.Values[iRow, 25] := '네트워크위치' //WkLocType="위치타입(G:GPS위치, N:네트워크위치, M:지도선택, A:지역선택, S:로그인초기값)"
            else
            if UpperCase(lst_Result.item[i].attributes.getNamedItem('WkLocType').Text) = 'M' then
              cxGrid_Illegal_Cancel.DataController.Values[iRow, 25] := '지도선택' //WkLocType="위치타입(G:GPS위치, N:네트워크위치, M:지도선택, A:지역선택, S:로그인초기값)"
            else
            if UpperCase(lst_Result.item[i].attributes.getNamedItem('WkLocType').Text) = 'A' then
              cxGrid_Illegal_Cancel.DataController.Values[iRow, 25] := '지역선택' //WkLocType="위치타입(G:GPS위치, N:네트워크위치, M:지도선택, A:지역선택, S:로그인초기값)"
            else
            if UpperCase(lst_Result.item[i].attributes.getNamedItem('WkLocType').Text) = 'S' then
              cxGrid_Illegal_Cancel.DataController.Values[iRow, 25] := '로그인초기값'; //WkLocType="위치타입(G:GPS위치, N:네트워크위치, M:지도선택, A:지역선택, S:로그인초기값)"
            cxGrid_Illegal_Cancel.DataController.Values[iRow, 26] := lst_Result.item[i].attributes.getNamedItem('WkLocElapseTime').Text; //WkLocElapseTime="경과시간(현재시간과 위치업데이트시간과의 차이 -- 단위:초)"
          end;
        finally
          cxGrid_Illegal_Cancel.DataController.EndUpdate;
         { if UpperCase(GetXmlHasMore(ls_rxxml)) = 'N' then
          begin
            result := False;
            Application.ProcessMessages;
          end
          else
            result := True;  }
        end;
      end;
    finally
      Screen.Cursor := crDefault;
      xdom := Nil;
    end;
  except
    on e: exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON53.N1Click(Sender: TObject);
begin
  Case TPopupMenu(Sender).tag of
    0:
    begin
      dedt_date.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      ASearchDate := '0';
      lb_SearchDay.Caption := '오늘';
    end;
    1:
    begin
      dedt_date.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
      ASearchDate := '1';
      lb_SearchDay.Caption := '어제';
    end;
    2:
    begin
      dedt_date.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 2;
      ASearchDate := '2';
      lb_SearchDay.Caption := '2일전';
    end;
    3:
    begin
      dedt_date.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 3;
      ASearchDate := '3';
      lb_SearchDay.Caption := '3일전';
    end;
    4:
    begin
      dedt_date.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 4;
      ASearchDate := '4';
      lb_SearchDay.Caption := '4일전';
    end;
    5:
    begin
      dedt_date.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 5;
      ASearchDate := '5';
      lb_SearchDay.Caption := '5일전';
    end;
    6:
    begin
      dedt_date.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 6;
      ASearchDate := '6';
      lb_SearchDay.Caption := '6일전';
    end;
    7:
    begin
      dedt_date.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 7;
      ASearchDate := '7';
      lb_SearchDay.Caption := '7일전';
    end;
  End;
end;

procedure TFrm_JON53.nIllegal_1Click(Sender: TObject);
var
  ls_TxLoad: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml, ls_MSG_Err: string;
  ErrCode: integer;
begin
  if TMenuITem(Sender).Hint = '88' then
  begin
    try
  		ls_TxLoad := GTx_UnitXmlLoad('C010.XML');
  		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON053', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', sConfSlip, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  		ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', '8', [rfReplaceAll]);
  		ls_TxLoad := StringReplace(ls_TxLoad, 'ConfChargeString', '', [rfReplaceAll]);

      slRcvList := TStringList.Create;
      try
        if Dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False) then
        begin
          rv_str := slRcvList[0];
          if rv_str <> '' then
          begin
            ls_rxxml := rv_str;
            Application.ProcessMessages;
            ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' = ls_MSG_Err) then
            begin
//-              ShowMessage(TMenuItem(Sender).Hint + '되었습니다.');
            end else
            begin
              Screen.Cursor := crDefault;
              GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
              Exit;
            end;
          end;
        end;
      finally
        FreeAndNil(slRcvList);
      end;
    except on E: Exception do
      Assert(False, E.Message);
    end;
  end;

	try
    //////////////////////////////////////////////////////////////////////////////////
    //  접수 전문
    //////////////////////////////////////////////////////////////////////////////////
    ls_TxLoad := GTx_UnitXmlLoad('JON06062.XML');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'JON06062');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfSlipString', sConfSlip);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'GubunString', inttostr(TMenuItem(sender).Tag));

    Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 30000) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
          if ('0000' = ls_MSG_Err) then
          begin
            btn_Illegal_Order_Search.click;
            ShowMessage(TMenuItem(Sender).Caption + '되었습니다.');
          end else
          begin
            Screen.Cursor := crDefault;
            GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
          end;
        end;
      end;
    finally
      slRcvList.Free;
      Screen.Cursor := crDefault;
    end;
  except
    on e: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON53.pmIllegal_CancelPopup(Sender: TObject);
begin
  if pIllegal_Option = '0' then nIllegal_88.Visible := True
                           else nIllegal_88.Visible := False;
end;

procedure TFrm_JON53.proc_init;
var i : integer;
begin
  cxGrid_Illegal_Cancel.DataController.SetRecordCount(0);
	cxGrid_Illegal_Cancel.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to cxGrid_Illegal_Cancel.ColumnCount - 1 do
		cxGrid_Illegal_Cancel.Columns[i].DataBinding.ValueType := 'String';
	cxGrid_Illegal_Cancel.Columns[16].DataBinding.ValueType := 'Currency';

  ASearchDate := '0';
  lb_SearchDay.Caption := '오늘';
  dedt_date.Date := StrToDate(Date8to10(StartDateTime('yyyymmdd')));

end;

end.



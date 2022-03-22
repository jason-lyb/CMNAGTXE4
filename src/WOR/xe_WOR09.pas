unit xe_WOR09;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, xe_GNL,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, MSXML2_TLB,
  Vcl.Menus, cxControls, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxDropDownEdit, cxMaskEdit, cxCalendar, cxMemo, cxTextEdit, cxCheckBox,
  cxGroupBox, cxLabel, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, dxSkinsCore, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark,
  dxSkinOffice2007Silver;

type
  TFrm_WOR09 = class(TForm)
    cxedBrName: TcxTextEdit;
    cxedWkSabun: TcxTextEdit;
    cxedWkName: TcxTextEdit;
    btnSearch: TcxButton;
    cxmMemo: TcxMemo;
    BtnBrBlock: TcxButton;
    BtnHdBlock: TcxButton;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel7: TcxLabel;
    cxcbBrName: TcxComboBox;
    cxLabel9: TcxLabel;
    cxlbBrNo: TcxLabel;
    cxlbWkBrNo: TcxLabel;
    cxLabel1: TcxLabel;
    cxCtrlDate: TcxDateEdit;
    RbButton1: TcxButton;
    pop_date: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    Cb_Jumin: TcxCheckBox;
    BtnCtBlock: TcxButton;
    pnlTitle: TPanel;
    BtnClose: TcxButton;
    Panel1: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    Panel2: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    cxLblActive: TLabel;
    MenuItem10: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure cxcbBrNameClick(Sender: TObject);
    procedure BtnBrBlockClick(Sender: TObject);
    procedure BtnHdBlockClick(Sender: TObject);
    procedure cxedWkSabunKeyPress(Sender: TObject; var Key: Char);
    procedure cxedWkSabunPropertiesChange(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure RbButton1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BtnCtBlockClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MenuItem10Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure proc_WkSearch;
    procedure proc_save(iType: Integer);
  public
    { Public declarations }
    pWOR09Dock : TUNDOCKMNG;
    procedure proc_init;
    procedure proc_init2;
  end;

var
  Frm_WOR09: TFrm_WOR09;

implementation

{$R *.dfm}

uses xe_gnl2, xe_gnl3, xe_xml, xe_Func, xe_Msg, xe_Dm, xe_packet;


procedure TFrm_WOR09.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_WOR09.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_WOR09.FormCreate(Sender: TObject);
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
  proc_init;
end;

procedure TFrm_WOR09.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_WOR09.FormDestroy(Sender: TObject);
begin
  Frm_WOR09 := nil;
end;

procedure TFrm_WOR09.FormShow(Sender: TObject);
begin
  fSetFont(Frm_WOR09, GS_FONTNAME);
end;

procedure TFrm_WOR09.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WOR09.proc_init;
var
  i: Integer;
begin
  cxedBrName.Text := '';
  cxedWkSabun.Text := '';
  cxedWkSabun.Hint := '';
  btnSearch.Enabled := True;
  cxedWkName.Text := '';
  cxmMemo.Text := '';
  cxcbBrName.Properties.Items.Clear;
  Cb_Jumin.Checked := False;

  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    cxcbBrName.Properties.Items.Assign(scb_FamilyBrName)
  else
    cxcbBrName.Properties.Items.Assign(scb_BranchName);

  if GT_USERIF.LV = '60' then
  begin
    cxcbBrName.Enabled := True;
    BtnHdBlock.Visible := True;
    BtnCtBlock.Visible := False;

    if Not pWOR09Dock.bUnDock then pWOR09Dock.GUBUN := GT_SEL_BRNO.GUBUN;
    if Not pWOR09Dock.bUnDock then pWOR09Dock.BrNo  := GT_SEL_BRNO.BrNo;

    if (pWOR09Dock.GUBUN <> '1') and (GT_USERIF.LV = '60') then
    begin
      cxcbBrName.ItemIndex := 0;
    end else
    begin
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
        i := scb_FamilyBrCode.IndexOf(pWOR09Dock.BrNo)
      else
        i := scb_BranchCode.IndexOf(pWOR09Dock.BrNo);
      cxcbBrName.ItemIndex := i;
    end;
  end else
  begin
    i := scb_BranchCode.IndexOf(GT_USERIF.BR);
    cxcbBrName.ItemIndex := i;
    cxcbBrName.Enabled := False;
    BtnHdBlock.Visible := False;
//    if (GS_PRJ_AREA = 'O') and (GT_USERIF.LV = '10') then BtnCtBlock.Visible := True
//  2016.02.23 신성현과장님 요청으로 수도권도 기능 사용
    if (GT_USERIF.LV = '10') then BtnCtBlock.Visible := True
                             else BtnCtBlock.Visible := False;
  end;
  cxlbBrNo.Caption := '';
  cxlbWkBrNo.Caption := '';

  if BtnHdBlock.Visible And BtnCtBlock.Visible then
  begin
    BtnHdBlock.Left := 245;
    BtnHdBlock.Width := 120;
    BtnCtBlock.Left := 367;
    BtnCtBlock.Width := 120;
  end else
  if BtnHdBlock.Visible And Not BtnCtBlock.Visible then
  begin
    BtnHdBlock.Left := 245;
    BtnHdBlock.Width := 241;
  end else
  if Not BtnHdBlock.Visible And BtnCtBlock.Visible then
  begin
    BtnCtBlock.Left := 245;
    BtnCtBlock.Width := 241;
  end;

  cxCtrlDate.Date := Now + 60;   // 2011-09-27. add.
end;

procedure TFrm_WOR09.proc_init2;
begin
  if cxedWkSabun.Text <> '' then btnSearchClick(btnSearch);
end;

procedure TFrm_WOR09.proc_WkSearch;
var
  XmlData, Param, ErrMsg : string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  ErrCode : Integer;
begin
  cxedWkSabun.Hint := '';

  if Trim(cxedWkSabun.Text) = '' then
  begin
    GMessagebox('기사사번을 입력하세요', CDMSE);
    cxedWkSabun.SetFocus;
    Exit;
  end;

  Param := En_Coding(Param_Filtering(cxedWkSabun.Text));

  if not RequestBase(GetSel05('BLOCKWKSEARCH', 'MNG_WK.BLOCK_WK_SEARCH', '1000', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('기사 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

  xdom := ComsDomDocument.Create;
  try
    xdom.loadXML(XmlData);
    lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
    if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      ls_Rcrd := TStringList.Create;
      try
        GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
        cxedBrName.Text := ls_Rcrd[0];
        cxlbWkBrNo.Caption := ls_Rcrd[1];
        cxedWkName.Text := ls_Rcrd[2];
        cxedWkSabun.Hint := ls_Rcrd[3];

        btnSearch.Enabled := False;
      finally
        ls_Rcrd.Free;
      end;
    end else
    begin
      GMessagebox('일치하는 기사가 없습니다. 기사사번을 확인해 주세요.', CDMSE);
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_WOR09.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_WOR09.btnSearchClick(Sender: TObject);
begin
  proc_WkSearch;
end;

procedure TFrm_WOR09.cxcbBrNameClick(Sender: TObject);
begin
  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    cxlbBrNo.Caption := scb_FamilyBrCode.Strings[cxcbBrName.ItemIndex]
  else
    cxlbBrNo.Caption := scb_BranchCode.Strings[cxcbBrName.ItemIndex];    
end;

procedure TFrm_WOR09.BtnBrBlockClick(Sender: TObject);
begin
  proc_save(0);
end;

procedure TFrm_WOR09.BtnHdBlockClick(Sender: TObject);
begin
  proc_save(1);
end;

procedure TFrm_WOR09.proc_save(iType: Integer);
var
  ls_TxLoad, rv_str, ls_MSG_Err, sWkSabun, sBrNo, sMemo, BlockType: string;
  ls_rxxml: WideString;
  xdom: msDOMDocument;
  slReceive: TStringList;
  ErrCode: integer;
begin
  //2010-10-26 배차제한시 폼생성부분 코드추가 LCK.
//-  if frm_WOR = nil then
//-  begin
//-    frm_WOR := Tfrm_WOR.Create(Self);
//-    frm_WOR.cxPageControl1.ActivePageIndex := 5;
//-  end;

  if btnSearch.Enabled then
  begin
    btnSearch.Click;
    if btnSearch.Enabled then Exit;
  end;

  if Trim(cxedWkName.Text) = '' then
  begin
    GMessagebox('[기사사번] 입력 후 [기사조회] 버튼을 클릭하여, 차단할 기사를 선택해 주세요.', CDMSE);
    Exit;
  end;

	if (GS_PRJ_AREA = 'O') and ((GT_USERIF.ShareNo = 'G91') or (GT_USERIF.ShareNo = 'G58') or (GT_USERIF.HD = 'A100') or 
															(GT_USERIF.ShareNo = 'G10') or (GT_USERIF.ShareNo = 'G90') or 
															(GT_USERIF.ShareNo = 'G26') or (GT_USERIF.ShareNo = 'G39') or  //20180831KHS 이명재대리 요청
															(GT_USERIF.ShareNo = 'G41') or (GT_USERIF.ShareNo = 'G49') or
															(GT_USERIF.ShareNo = 'G54') ) then
	else
	begin
		if (cxCtrlDate.Date - Now) > 365 then
		begin
			GMessagebox('[알림!] 차단기간 설정은 최대 1년 까지 입니다.', CDMSE);
			Exit;
		end;
	end;

  if (cxCtrlDate.Date - StrToDate(FormatDateTime('YYYY-MM-DD',Now))) < 1 then
  begin
    GMessagebox('[알림!] 차단기간 설정은 현재 날짜나 과거날짜로는 할 수 없습니다.', CDMSE);
    Exit;
  end;

  if Cb_Jumin.Checked then sWkSabun := cxedWkSabun.Hint    // 주민번호
                      else sWkSabun := cxedWkSabun.Text;   // 사번

  if iType = 0 then
  begin
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sBrNo := scb_FamilyBrCode.Strings[cxcbBrName.ItemIndex]
    else
      sBrNo := scb_BranchCode.Strings[cxcbBrName.ItemIndex];
  end else
  if iType = 1 then
  begin
    if Not pWOR09Dock.bUnDock then pWOR09Dock.HDNO  := GT_SEL_BRNO.HDNO;

    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sBrNo := pWOR09Dock.HDNO
    else
      sBrNo := GT_USERIF.HD;
  end else
  if iType = 2 then  //콜센터 차단 2012.10.30 KHS
  begin
      sBrNo := GT_USERIF.CT;
  end;

  // 주민번호로 차단 부분 추가 LYB 20120720
  if iType = 0 then
  begin
    if Cb_Jumin.Checked then BlockType := '6'    // 6.기사주민번호차단
                        else BlockType := '1';   // 1.기사사번차단
  end else
  if iType = 1 then
  begin
    if Cb_Jumin.Checked then BlockType := '7'    // 7.본사기사주민번호차단
                        else BlockType := '5';   // 5.본사기사사번차단
  end else
  if iType = 2 then
  begin
    if Cb_Jumin.Checked then BlockType := '9'    // 9.콜센타기사주민번호차단
                        else BlockType := '8';   // 8.콜센타기사사번차단
  end;

  sMemo := En_Coding(cxmMemo.Text);

  ls_TxLoad := GTx_UnitXmlLoad('C065N1.XML');
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WOR092', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'modeStr', 'INSERT', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'hdNoStr', '', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'brNoStr', sBrNo, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'selTypeStr', '', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'typeStr', BlockType, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'wkSabunStr', sWkSabun, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'memoStr', sMemo + '" LimitDate="' + cxCtrlDate.Text, [rfReplaceAll]);

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
          xdom := ComsDOMDocument.Create;
          try
            if not xdom.loadXML(ls_rxxml) then
            begin
              Exit;
            end;
            ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' = ls_MSG_Err) then
            begin
              GMessagebox('차단등록하였습니다.', CDMSI);
              hide;
            end else
            begin
              Screen.Cursor := crDefault;
              GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
            end;
          finally
            xdom := Nil;
          end;
        except
          GMessagebox('실패하였습니다.', CDMSE);
          Screen.Cursor := crDefault;
        end;
      end;
    end;
  finally
    FreeAndNil(slReceive);
  end;
end;

procedure TFrm_WOR09.cxedWkSabunKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    btnSearch.Click;
end;

procedure TFrm_WOR09.cxedWkSabunPropertiesChange(Sender: TObject);
begin
  btnSearch.Enabled := True;
end;

procedure TFrm_WOR09.MenuItem10Click(Sender: TObject);
begin
	cxCtrlDate.Date := Now + 36500;  // 영구차단
end;

procedure TFrm_WOR09.MenuItem1Click(Sender: TObject);
begin
  cxCtrlDate.Date := Now + 1;   // +1 일
end;

procedure TFrm_WOR09.MenuItem2Click(Sender: TObject);
begin
  cxCtrlDate.Date := Now + 3;   // +3 일
end;

procedure TFrm_WOR09.MenuItem3Click(Sender: TObject);
begin
  cxCtrlDate.Date := Now + 7;   // +7 일
end;

procedure TFrm_WOR09.MenuItem4Click(Sender: TObject);
begin
  cxCtrlDate.Date := Now + 14;   // +14 일
end;

procedure TFrm_WOR09.MenuItem5Click(Sender: TObject);
begin
  cxCtrlDate.Date := Now + 30;   // +30 일(1개월)
end;

procedure TFrm_WOR09.MenuItem6Click(Sender: TObject);
begin
  cxCtrlDate.Date := Now + 60;   // +60 일(2개월)
end;

procedure TFrm_WOR09.MenuItem7Click(Sender: TObject);
begin
  cxCtrlDate.Date := Now + 120;   // +120 일(4개월)
end;

procedure TFrm_WOR09.MenuItem8Click(Sender: TObject);
begin
  cxCtrlDate.Date := Now + 240;   // +240 일(8개월)
end;

procedure TFrm_WOR09.MenuItem9Click(Sender: TObject);
begin
  cxCtrlDate.Date := Now + 365;   // +365 일(1년)
end;

procedure TFrm_WOR09.RbButton1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	if (GS_PRJ_AREA = 'O') and ((GT_USERIF.ShareNo = 'G91') or (GT_USERIF.ShareNo = 'G58') or (GT_USERIF.HD = 'A100') or 
															(GT_USERIF.ShareNo = 'G10') or (GT_USERIF.ShareNo = 'G90') or 
															(GT_USERIF.ShareNo = 'G26') or (GT_USERIF.ShareNo = 'G39') or  //20180831KHS 이명재대리 요청
															(GT_USERIF.ShareNo = 'G41') or (GT_USERIF.ShareNo = 'G49') or
															(GT_USERIF.ShareNo = 'G54') ) then
		MenuItem10.Visible := True
	else
		MenuItem10.Visible := False;
	pop_date.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_WOR09.BtnCtBlockClick(Sender: TObject);
begin
  proc_save(2);
end;

end.

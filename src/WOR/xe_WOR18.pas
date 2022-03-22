unit xe_WOR18;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MSXML2_TLB, cxGraphics, cxControls, cxLookAndFeels, xe_GNL,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel,
  Vcl.Buttons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxMemo, cxTextEdit,
  Vcl.StdCtrls, cxButtons, cxCheckBox, Vcl.ExtCtrls, cxGroupBox, cxMaskEdit,
  cxDropDownEdit, dxSkinsCore, dxSkinscxPCPainter, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_WOR18 = class(TForm)
    pnl1: TPanel;
    cxlbl1: TcxLabel;
    cxlbl2: TcxLabel;
    btnNew: TcxButton;
    btnSave: TcxButton;
    cxlbl3: TcxLabel;
    cxlblLbl_Hd: TcxLabel;
    cxedMemo: TcxTextEdit;
    cxTextEdit1: TcxTextEdit;
    mmoMilelist1: TcxMemo;
    pnl2: TPanel;
    btnClose: TcxButton;
    pnl3: TPanel;
    btnDel: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabellbl1: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    btn3: TSpeedButton;
    btn4: TSpeedButton;
    btn5: TSpeedButton;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    btn_wRef1: TSpeedButton;
    chkAllSelect: TcxCheckBox;
    pnlTitle: TPanel;
    BtnClose1: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Shape2: TShape;
    Shape1: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    cxGroupBox2: TcxGroupBox;
    Shape6: TShape;
    Shape7: TShape;
    cxLabel5: TcxLabel;
    cb_NoticeGubun: TcxComboBox;
    PnlMain: TPanel;
    cxLblActive: TLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
		chk_Fix: TcxCheckBox;
    cxGrid1: TcxGrid;
    cxNotice_List: TcxGridDBTableView;
    Notice_ListColumn1: TcxGridDBColumn;
    Notice_ListColumn8: TcxGridDBColumn;
    Notice_ListColumn10: TcxGridDBColumn;
    Notice_ListColumn2: TcxGridDBColumn;
    Notice_ListColumn3: TcxGridDBColumn;
    Notice_ListColumn4: TcxGridDBColumn;
    Notice_ListColumn5: TcxGridDBColumn;
    Notice_ListColumn6: TcxGridDBColumn;
    Notice_ListColumn7: TcxGridDBColumn;
    Notice_ListColumn9: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    procedure FormCreate(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure cxNavigator1ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure cxNotice_ListCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnSaveClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btn_wRef1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnClose1Click(Sender: TObject);
    procedure cb_NoticeGubunClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure mmoMilelist1PropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mmoMilelist1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxTextEdit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    GpageNum : integer;
    WKList : Tstringlist;
    WriteChk : integer;    //0 : 수정, 1 : 신규입력
    pWOR18Dock : TUNDOCKMNG;
    procedure proc_init(Aindex : integer);
    procedure proc_Notice(APage : integer);
    procedure proc_Notice_Body(Anum : String);
    procedure proc_recieve(ls_rxxml: widestring);
    function proc_FindRow(Anum : String; rRow : integer): string;
    procedure proc_seqQuery;
    function Find_MasterID(AHDNO, AUserId : string) :Boolean;
  end;

var
  Frm_WOR18: TFrm_WOR18;

implementation

{$R *.dfm}

uses xe_Dm, xe_Func, xe_gnl2, xe_gnl3, xe_Msg, xe_xml, xe_packet;


procedure TFrm_WOR18.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_WOR18.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_WOR18.FormCreate(Sender: TObject);
var
  Save: LongInt; // 폼타이틀 제거용.
  i : integer;
begin
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
	for i := 0 to cxNotice_List.ColumnCount - 1 do
  begin
    cxNotice_List.Columns[i].DataBinding.ValueType := 'String';
  end;
//  cxNotice_List.Columns[0].DataBinding.ValueType := 'integer';

  WKList := Tstringlist.Create;
  proc_init(0);
end;

procedure TFrm_WOR18.proc_init(Aindex : integer);
begin
	if Aindex = 0 then
  begin
    cxlbl2.Caption := '';
    cxNotice_List.DataController.SetRecordCount(0);
    WkList.Clear;
  end else
  if Aindex = 1 then
  begin
    cxNotice_List.Controller.FocusedRowIndex := 0;
  end;
  cxTextEdit1.Text := '';
  cxLabellbl1.Caption := '';
  cxLabel4.Caption := '';
  GpageNum := 1;
  cxTextEdit2.text := '';
  mmoMilelist1.text := '';
  cxedMemo.text := GT_USERIF.NM;
  cxTextEdit3.text := GT_USERIF.ID;
	chkAllSelect.Checked := False;
//  if chkAllSelect.Enabled then chkAllSelect.Checked := False
//                          else chkAllSelect.Checked := True;
	cb_NoticeGubun.ItemIndex := 0;
	chk_Fix.Checked := False;
end;

procedure TFrm_WOR18.btnNewClick(Sender: TObject);
begin
  proc_init(1);
end;

procedure TFrm_WOR18.proc_Notice(APage : integer);
var
  ls_TxLoad: WideString;
  ls_TxQry, rv_str : string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
begin
  if Not pWOR18Dock.bUnDock then pWOR18Dock.GUBUN := GT_SEL_BRNO.GUBUN;
	if Not pWOR18Dock.bUnDock then pWOR18Dock.HdNo  := GT_SEL_BRNO.HdNo;
  if Not pWOR18Dock.bUnDock then pWOR18Dock.BrNo  := GT_SEL_BRNO.BrNo;

  try
    GpageNum := APage;
		ls_TxQry := 'SELECT * FROM (SELECT wap_num, user_id, user_name, wap_title, in_date, hd_no, br_no, NoticeGubun, ROWNUM rn, NOTICE_FIX_TYPE '
              + '                 FROM (SELECT wap_num, user_id, user_name, wap_title, to_date(TO_CHAR(wap_reg_date, ''yyyy-mm-dd'')) '
							+ '                              in_date, hd_no, br_no, DECODE(WAP_BODY, '''',  ''1'', ''0'') NoticeGubun, NOTICE_FIX_TYPE '
              + '                         FROM cdms_wap_notice ';
    if GT_USERIF.LV = '70' then
    begin
      ls_TxQry := ls_TxQry + ' where del_yn = ''n''   ';
    end else
    if GT_USERIF.LV = '63' then
    begin
      ls_TxQry := ls_TxQry + ' where (hd_no = ''' + pWOR18Dock.HDNO + ''' OR hd_no in (select br_no from cdms_branch where hd_no = ''' + pWOR18Dock.HDNO + ''')) ';
      ls_TxQry := ls_TxQry + '   AND del_yn = ''n''    ';
      ls_TxQry := ls_TxQry + '    OR hd_no in (select br_no from cdms_branch where hd_no in (select hd_no from cdms_head where share_no = ''' + pWOR18Dock.HDNO + '''))) ';
    end else
    if GT_USERIF.LV = '60' then
    begin
      ls_TxQry := ls_TxQry + ' where (hd_no = ''' + pWOR18Dock.HDNO + ''' OR hd_no in (select br_no from cdms_branch where hd_no = ''' + pWOR18Dock.HDNO + ''')) ';
      ls_TxQry := ls_TxQry + '   AND del_yn = ''n''    ';
    end else
    if GT_USERIF.LV = '40' then
    begin
      ls_TxQry := ls_TxQry + ' where (hd_no = ''' + pWOR18Dock.HDNO + ''' OR hd_no = ''' + GT_USERIF.BR + ''') ';
      ls_TxQry := ls_TxQry + '   AND del_yn = ''n''    ';
		end;
//		ls_TxQry := ls_TxQry + ' ORDER BY TO_NUMBER (wap_num) DESC)) WHERE RN >= (((' + inttostr(APage) + '* 100) - 100) + 1) AND RN <= (' + inttostr(APage) + ' * 100) ';
		ls_TxQry := ls_TxQry + ' ORDER BY notice_fix_type DESC,wap_num DESC)) WHERE RN >= (((' + inttostr(APage) + '* 100) - 100) + 1) AND RN <= (' + inttostr(APage) + ' * 100) ';
//		ls_TxQry := ls_TxQry + ' ORDER BY notice_fix_type DESC,wap_num DESC';
//    ls_TxQry := ls_TxQry + ' WHERE RN >= (((' + inttostr(APage) ;
//    ls_TxQry := ls_TxQry + ' * 100) - 100) + 1) AND RN <= (' + inttostr(APage) ;
//    ls_TxQry := ls_TxQry + ' * 100) ';
    ls_TxQry := En_Coding(ls_TxQry);
    ls_TxLoad := GetSel01('WORK' +'NOTICE', ls_TxQry);
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
      FreeAndNil(slReceive);
    end;
  except
    on E: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WOR18.proc_recieve(ls_rxxml: widestring);
var
  xdom: msDomDocument;
  ls_ClientKey, ls_Msg_Err : string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd : TStringList;
  i, iRow : Integer;
begin
	try
    xdom := ComsDomDocument.Create;
    try
      if not xdom.loadXML(ls_rxxml) then
      begin
        Exit;
      end;

      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_ClientKey := GetXmlClientKey(ls_rxxml);
        ls_ClientKey := Copy(ls_ClientKey, 5, Length(ls_ClientKey) - 4);
        if ls_ClientKey = 'NOTICE' then
        begin
          if (0 < GetXmlRecordCount(ls_rxxml)) then
          begin
						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
            cxNotice_List.DataController.SetRecordCount(0);
            cxNotice_List.BeginUpdate;
            ls_Rcrd := TStringList.Create;
            try
              for i := 0 to lst_Result.length - 1 do
              begin
                GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                iRow := cxNotice_List.DataController.AppendRecord;
                // 1 Record 추가
                Application.ProcessMessages;

		  					SetGridData(cxNotice_List, iRow, 0, ls_Rcrd[0]);
								if ls_Rcrd[7] = '0' then	SetGridData(cxNotice_List, iRow, 1, '일반공지') else
		  					if ls_Rcrd[7] = '1' then	SetGridData(cxNotice_List, iRow, 1, '한줄공지');
								if ls_Rcrd[9] = '0' then cxNotice_List.DataController.Values[iRow, 2] := '일반' else
								if ls_Rcrd[9] = '1' then cxNotice_List.DataController.Values[iRow, 2] := '고정';   //고정공지
								SetGridData(cxNotice_List, iRow, 3, ls_Rcrd[3]);
								SetGridData(cxNotice_List, iRow, 4, ls_Rcrd[2]);
								SetGridData(cxNotice_List, iRow, 5, copy(ls_Rcrd[4],1,10));
								SetGridData(cxNotice_List, iRow, 6, ls_Rcrd[1]);
								SetGridData(cxNotice_List, iRow, 7, ls_Rcrd[5]);
								SetGridData(cxNotice_List, iRow, 8, ls_Rcrd[8]);
								SetGridData(cxNotice_List, iRow, 9, ls_Rcrd[6]);
              end;
            finally
              ls_Rcrd.Free;
            end;
            cxNotice_List.EndUpdate;
            cxNotice_List.Controller.FocusedRowIndex := 0;
          end else
          if GpageNum > 1 then
            GMessagebox('마지막 페이지입니다', CDMSE)
          else
          if cxNotice_List.DataController.RowCount <= 1 then
            cxNotice_List.DataController.SetRecordCount(0);
        end else
        if ls_ClientKey = 'NOTICEBODY' then
        begin
          if (0 < GetXmlRecordCount(ls_rxxml)) then
          begin
            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
            ls_Rcrd := TStringList.Create;
            try
              for i := 0 to lst_Result.length - 1 do
              begin
                GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

                Application.ProcessMessages;

                cxedMemo.text := ls_Rcrd[2];
                cxTextEdit1.text := ls_Rcrd[3];
                mmoMilelist1.text := ReplaceAll(ls_Rcrd[4], '¶', #13#10);
                cxLabellbl1.caption := ls_Rcrd[5];
                if ls_Rcrd[8] = '0' then chkAllSelect.Checked := True
                                    else chkAllSelect.Checked := False;
                cxLabel4.caption := ls_Rcrd[6];
                cxTextEdit2.Text := ls_Rcrd[0];
                cxTextEdit3.Text := ls_Rcrd[1];
                PnlTitle.CAPTION := format('   기사공지(본사: %s-%s)', [ls_Rcrd[9], ls_Rcrd[10]]);
                if ls_Rcrd[11] <> '' then
                  PnlTitle.CAPTION := format('   기사공지본사: %s-%s 지사:%s-%s)', [ls_Rcrd[9], ls_Rcrd[10], ls_Rcrd[11], ls_Rcrd[12]]);
		  					if Trim(mmoMilelist1.text) <> '' then
		  						cb_NoticeGubun.ItemIndex := 0
		  					else
		  						cb_NoticeGubun.ItemIndex := 1;
								cxlbl2.Caption := ls_Rcrd[13]	;
								if ls_Rcrd[14] = '0' then chk_Fix.Checked := False else
								if ls_Rcrd[14] = '1' then chk_Fix.Checked := True;   //고정공지
							end;
						finally
              ls_Rcrd.Free;
            end;
          end;
				end else
        if ls_ClientKey = 'NOTICESEQ' then
        begin
          if (0 < GetXmlRecordCount(ls_rxxml)) then
          begin
						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
            ls_Rcrd := TStringList.Create;
            try
              for i := 0 to lst_Result.length - 1 do
              begin
                GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

                cxTextEdit2.Text := ls_Rcrd[0];
              end;
            finally
              ls_Rcrd.Free;
            end;
          end;
        end else
        if ls_ClientKey = 'NOTICEUPDATE' then
        begin
        end else
        if ls_ClientKey = 'NOTICEINSERT' then
        begin
        end;
        Screen.Cursor := crDefault;
      end else
      begin
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
      end;
    finally
      xdom := Nil;
    end;
  except
    on E: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WOR18.cb_NoticeGubunClick(Sender: TObject);
begin
	if TcxComboBox(sender).ItemIndex = 0 then
	begin
		cxlbl3.Caption := '공지제목';
		mmoMilelist1.Enabled := True;
	end	else
  if TcxComboBox(sender).ItemIndex = 1 then
	begin
		cxlbl3.Caption := '한줄공지';
		mmoMilelist1.Enabled := False;
	end;
end;

procedure TFrm_WOR18.btnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_WOR18.proc_Notice_Body(Anum: String);
var
  ls_TxLoad: WideString;
  ls_TxQry, rv_str : string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
begin
	try
    if Anum = '' then exit;
		cxTextEdit2.Text := Anum;
		ls_TxQry := 'SELECT wap_num, user_id, user_name, wap_title, wap_body, TO_CHAR(wap_reg_date,''yyyy-mm-dd'') in_date '
							+ '     , read, a.hd_no, a.br_no '
							+ '     , DECODE((Select HD_NO     from cdms_HEAD where HD_NO =a.hd_no), ''''                                     '
              + '             ,(Select c.HD_NO   from cdms_branch b, cdms_HEAD c where b.br_no = a.hd_no and b.HD_NO = c.HD_NO) '
              + '             ,(Select HD_NO     from cdms_HEAD where HD_NO =a.hd_no)) as WHD_NO                                '
							+ '     , DECODE((Select HD_NAME   from cdms_HEAD where HD_NO =a.hd_no), ''''                                     '
              + '             ,(Select c.HD_NAME from cdms_branch b, cdms_HEAD c where b.br_no = a.hd_no and b.HD_NO = c.HD_NO) '
              + '             ,(Select HD_NAME   from cdms_HEAD where HD_NO =a.hd_no)) as WHD_NM  '
              + '     , DECODE((Select HD_NO     from cdms_HEAD where HD_NO = a.hd_no), ''''      '
							+'              ,(Select BR_no from cdms_branch where br_no = a.hd_no)) as WBR_NO   '
							+ '     , DECODE((Select HD_NAME   from cdms_HEAD where HD_NO = a.hd_no), ''''      '
							+ '             ,(Select BR_NAME from cdms_branch where br_no = a.hd_no)) as WBR_NM '
							+ '     , (SELECT count(wk_Sabun) from CDMS_WAP_NOTICE_WK where wap_num =''' + Anum + ''') '
							+ '     , NOTICE_FIX_TYPE '
							+ '  FROM cdms_wap_notice a '
              + ' WHERE wap_num = ' + Anum;

		ls_TxQry := En_Coding(ls_TxQry);
    ls_TxLoad := GetSel01('WORK' +'NOTICEBODY', ls_TxQry);
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
      FreeAndNil(slReceive);
    end;
  except
    on E: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WOR18.cxNavigator1ButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  ShowMessage(inttostr(AButtonIndex));
end;

procedure TFrm_WOR18.btn1Click(Sender: TObject);
begin
  proc_Notice(1);
  proc_Notice_Body(proc_FindRow('', 3));
end;

procedure TFrm_WOR18.btn2Click(Sender: TObject);
begin
  if GpageNum > 1 then
    proc_Notice(GpageNum -1)
  else
    proc_Notice(GpageNum);
end;

procedure TFrm_WOR18.btn5Click(Sender: TObject);
begin
  proc_Notice(GpageNum + 1);
end;

procedure TFrm_WOR18.BtnClose1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_WOR18.btn3Click(Sender: TObject);
begin
  proc_Notice_Body(proc_FindRow(cxTextEdit2.text, 1));
end;

procedure TFrm_WOR18.btn4Click(Sender: TObject);
begin
	proc_Notice_Body(proc_FindRow(cxTextEdit2.text, 2));
end;

procedure TFrm_WOR18.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

function TFrm_WOR18.proc_FindRow(Anum: String; rRow : integer):string;
var i, iCol : integer;
begin
  iCol := cxNotice_List.GetColumnByFieldName('No').Index;
  if rRow =  3 then
  begin
    if cxNotice_List.DataController.RowCount >= 1 then
    begin
      Result := cxNotice_List.DataController.Values[0, iCol];
      cxNotice_List.Controller.FocusedRowIndex := 0;
      exit;
    end;
  end;

  for i := 0 to cxNotice_List.DataController.RecordCount - 1 do
  begin
    if cxNotice_List.DataController.Values[i, iCol] = Anum then
    begin
      if rRow = 1 then
      begin
        if i > 0 then
        begin
          Result := cxNotice_List.DataController.Values[i -1, iCol];
          cxNotice_List.Controller.FocusedRowIndex := i - 1;
        end else
        begin
          Result := cxNotice_List.DataController.Values[i, iCol];
          cxNotice_List.Controller.FocusedRowIndex := i;
        end;
      end else
      if rRow = 2 then
      begin
        if i + 1 <= cxNotice_List.DataController.RecordCount - 1 then
        begin
          Result := cxNotice_List.DataController.Values[i +1, iCol];
          cxNotice_List.Controller.FocusedRowIndex := i + 1;
        end else
        begin
          GMessagebox('마지막 공지입니다. 다음 페이지를 조회해 주세요.', CDMSE);
          exit;
        end;
      end;
      break;
    end;
  end;
end;

procedure TFrm_WOR18.cxNotice_ListCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var iRow, iCol : integer;
    sNum : string;
begin
  iCol := cxNotice_List.GetColumnByFieldName('No').Index;
  iRow := ACellViewInfo.GridRecord.Index;
  sNum := cxNotice_List.DataController.Values[iRow, iCol];
//  iCol := cxNotice_List.GetColumnByFieldName('ID').Index;
//  iRow := ACellViewInfo.GridRecord.Index;
//  cxTextEdit3.text := cxNotice_List.DataController.Values[iRow, iCol];
  proc_Notice_Body(sNum);
end;

procedure TFrm_WOR18.cxTextEdit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);	
end;

procedure TFrm_WOR18.btnSaveClick(Sender: TObject);
var
  ls_TxLoad: WideString;
	ls_TxQry, rv_str, ls_AndCon1, iSeq, sWord, ls_MSG_Err, sTmp : string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode, i: integer;
  xdom: msDomDocument;
begin
	if Not pWOR18Dock.bUnDock then pWOR18Dock.GUBUN := GT_SEL_BRNO.GUBUN;
  if Not pWOR18Dock.bUnDock then pWOR18Dock.BrNo  := GT_SEL_BRNO.BrNo;
  if Not pWOR18Dock.bUnDock then pWOR18Dock.BrNo  := GT_SEL_BRNO.BrNo;

  try
		if (cxlbl2.Caption = '0') and (chkAllSelect.Checked = false) then
    begin
      GMessagebox('선택된 기사가 없습니다.',CDMSE);
      Exit;
    end;

    if (cxlbl2.Caption = '전체') and (chkAllSelect.Checked = False) then
    begin
      GMessagebox('선택된 기사가 없습니다.',CDMSE);
      Exit;
    end;

    if (Trim(cxTextEdit3.Text) <> GT_USERIF.ID) and (cxTextEdit3.Text <> '') then
    begin
      if GT_USERIF.LV >= '60' then
      begin
        if not Find_MasterID(pWOR18Dock.HDNO, GT_USERIF.ID) then
        begin
          GMessagebox('권한이 없습니다.',CDMSE);
          exit;
        end;
      end else
      begin
        GMessagebox('본인이 작성한 글이 아닙니다.',CDMSE);
        exit;
      end;
    end;
    if cxedMemo.Text = '' then
    begin
      GMessagebox('작성자란이 비었습니다.',CDMSE);
      exit;
    end;
    if cxTextEdit1.Text = '' then
    begin
      GMessagebox('공지제목란이 비었습니다.',CDMSE);
      exit;
    end;
		if cb_NoticeGubun.ItemIndex = 0 then
		begin
			if Trim(mmoMilelist1.Text) = '' then
			begin
				GMessagebox('일반공지는 본문내용이 있어야 합니다.',CDMSE);
				exit;
			end;
		end;
		if cb_NoticeGubun.ItemIndex = 1 then
		begin
			if Trim(mmoMilelist1.Text) <> '' then
			begin
				GMessagebox('한줄공지는 본문내용이 없어야 합니다.'+#10#13+'본문내용을 지우신 뒤 저장하십시오',CDMSE);
				exit;
			end;
		end;

   	if Not func_EucKr_Check(cxTextEdit1, 0) then Exit;
   	if Not func_EucKr_Check(mmoMilelist1, 0) then Exit;

    ls_TxLoad := GTx_UnitXmlLoad('QUERY.XML');

    sWord := En_Coding(mmoMilelist1.Text);
		sWord := ReplaceAll(sWord, #$D#$A, '¶');
		sWord := ReplaceAll(sWord, #13#10, '¶');
		sWord := ReplaceAll(sWord, #10#13, '¶');

		if chk_Fix.Checked then sTmp := '1' else sTmp := '0';//고정공지여부 True =1, False=0

		if cxTextEdit2.Text <> '' then
    begin
			ls_TxQry := ' UPDATE CDMS_WAP_NOTICE SET WAP_TITLE = ''' + cxTextEdit1.text + ''' '
                + '                          , USER_NAME = ''' + cxedMemo.text + ''' '
								+ '                          , WAP_BODY  = ''' + sWord + ''' '
								+ '                          , NOTICE_FIX_TYPE = ''' + sTmp + ''' '
								+ ' WHERE wap_num = ' + Trim(cxTextEdit2.text) + ' and  del_yn = ''n'' ';
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WORK' +'NOTICEUP', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
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
              try
                if not xdom.loadXML(ls_rxxml) then
                begin
                  GMessagebox('실패하였습니다.', CDMSE);
                  Screen.Cursor := crDefault;
                  Exit;
                end;

                ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
                if ('0000' <> ls_MSG_Err) then
                begin
                  Screen.Cursor := crDefault;
                  GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
                  Exit;
                end;
              finally
                xdom := Nil;
              end;
            except
              Screen.Cursor := crDefault;
              GMessagebox('실패하였습니다.', CDMSE);
            end;
          end;
        end;
      finally
        GMessagebox('수정되었습니다.',CDMSI);
        FreeAndNil(slReceive);
        WriteChk := 0;
      end;
      for i := 0 to cxNotice_List.DataController.RecordCount - 1 do
      begin
        if cxNotice_List.DataController.Values[i, 0] = Trim(cxTextEdit2.text) then
        begin
					cxNotice_List.DataController.Values[i, 1] := cb_NoticeGubun.text;
					cxNotice_List.DataController.Values[i, 2] := cxTextEdit1.text;
					cxNotice_List.DataController.Values[i, 3] := cxedMemo.text;
          break;
        end;
      end;
		end else                                        
    begin
			ls_TxQry := 'INSERT INTO CDMS_WAP_NOTICE ( WAP_NUM, USER_ID, USER_NAME, WAP_TITLE, WAP_BODY, WAP_REG_DATE, HD_NO, BR_NO, del_yn, NOTICE_FIX_TYPE ) '
								+ 'VALUES ( %s, ''%s'', ''%s'', ''%s'', ''%s'', sysdate, ''%s'', ''%s'', ''n'', ''%s'' )';
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WORK' +'NOTICEINS', [rfReplaceAll]);
      proc_seqQuery;
			iSeq := Trim(cxTextEdit2.text);
			if (GT_USERIF.LV = '70') or (chkAllSelect.checked) then
      begin
        ls_TxQry := Format(ls_TxQry, [cxTextEdit2.text, GT_USERIF.ID, cxedMemo.text, cxTextEdit1.text
																		, sWord, pWOR18Dock.HDNO, '0', sTmp]);
      end else
      if GT_USERIF.LV = '63' then
			begin
        ls_TxQry := Format(ls_TxQry, [cxTextEdit2.text, GT_USERIF.ID, cxedMemo.text, cxTextEdit1.text
																		, sWord, pWOR18Dock.HDNO, '0', sTmp]);
      end else
      if GT_USERIF.LV = '60' then
      begin
        ls_TxQry := Format(ls_TxQry, [cxTextEdit2.text, GT_USERIF.ID, cxedMemo.text, cxTextEdit1.text
																		, sWord, pWOR18Dock.HDNO, '1', sTmp]);
      end else
      if GT_USERIF.LV = '40' then
      begin
        ls_TxQry := Format(ls_TxQry, [cxTextEdit2.text, GT_USERIF.ID, cxedMemo.text, cxTextEdit1.text
																		, sWord, pWOR18Dock.BrNo, '1', sTmp]);
      end;

      ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
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
              try
                if not xdom.loadXML(ls_rxxml) then
                begin
                  GMessagebox('실패하였습니다.', CDMSE);
                  Screen.Cursor := crDefault;
                  Exit;
                end;

                ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
                if ('0000' <> ls_MSG_Err) then
                begin
                  Screen.Cursor := crDefault;
                  GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
                  Exit;
                end;
              finally
                xdom := Nil;
              end;
            except
              Screen.Cursor := crDefault;
              GMessagebox('실패하였습니다.', CDMSE);
            end;
          end;
        end;
      finally
        FreeAndNil(slReceive);
      end;

			if not chkAllSelect.checked then
      begin
        for i := 0 to WKList.Count -1 do
        begin
          ls_TxLoad := GTx_UnitXmlLoad('QUERY.XML');
					ls_TxQry := 'INSERT INTO CDMS_WAP_NOTICE_WK (WAP_NUM, WK_SABUN) VALUES ( %s, ''%s'')';
          ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WORK' +'NOTICEINS', [rfReplaceAll]);
          proc_seqQuery;
          ls_TxQry := Format(ls_TxQry, [iSeq, WKList[i]]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
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
                  try
                    if not xdom.loadXML(ls_rxxml) then
                    begin
                      GMessagebox('실패하였습니다.', CDMSE);
                      Screen.Cursor := crDefault;
                      Exit;
                    end;

                    ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
                    if ('0000' <> ls_MSG_Err) then
                    begin
                      Screen.Cursor := crDefault;
                      GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
                      Exit;
                    end;
                  finally
                    xdom := Nil;
                  end;
                except
                  Screen.Cursor := crDefault;
                  GMessagebox('실패하였습니다.', CDMSE);
                end;
              end;
            end;
          finally
            FreeAndNil(slReceive);
          end;
        end;
      end;
      GMessagebox('저장되었습니다.',CDMSI);
      WriteChk := 1;
    end;

  except
    on E: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
  btn_wRef1Click(nil);
end;

procedure TFrm_WOR18.proc_seqQuery;
var
  ls_TxLoad: WideString;
  ls_TxQry, rv_str : string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
begin
  try
		ls_TxQry := 'SELECT WAPNOTICE_SEQ.NEXTVAL SEQ FROM DUAL';
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WORK' +'NOTICESEQ', [rfReplaceAll]);
    ls_TxQry := En_Coding(ls_TxQry);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
				if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
//          Application.ProcessMessages;
          proc_recieve(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except
    on E: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WOR18.btnDelClick(Sender: TObject);
var
  ls_TxLoad: WideString;
  ls_TxQry : string;
  slReceive: TStringList;
  ErrCode: integer;
begin
  if Not pWOR18Dock.bUnDock then pWOR18Dock.GUBUN := GT_SEL_BRNO.GUBUN;
	if Not pWOR18Dock.bUnDock then pWOR18Dock.BrNo  := GT_SEL_BRNO.BrNo;
  if Not pWOR18Dock.bUnDock then pWOR18Dock.BrNo  := GT_SEL_BRNO.BrNo;

  try
		if (GS_PRJ_AREA = 'S') then
		begin
			if (trim(cxTextEdit3.Text) <> GT_USERIF.ID) and (cxTextEdit3.Text <> '') then
			begin
				if GT_USERIF.LV >= '60' then
				begin
					if not Find_MasterID(pWOR18Dock.HDNO, GT_USERIF.ID) then
					begin
						GMessagebox('권한이 없습니다.',CDMSE);
						exit;
					end;
				end	else
				begin
					GMessagebox('본인이 작성한 글이 아닙니다.',CDMSE);
					exit;
				end;
			end;
		end	else
    if (GS_PRJ_AREA = 'O') then
		begin
			if cb_NoticeGubun.ItemIndex = 0 then
			begin
				if (trim(cxTextEdit3.Text) <> GT_USERIF.ID) and (cxTextEdit3.Text <> '') then
				begin
					if GT_USERIF.LV >= '60' then
					begin
						if not Find_MasterID(pWOR18Dock.HDNO, GT_USERIF.ID) then
						begin
							GMessagebox('권한이 없습니다.',CDMSE);
							exit;
						end;
					end	else
					begin
						GMessagebox('본인이 작성한 글이 아닙니다.',CDMSE);
						exit;
					end;
				end;
			end	else
      if cb_NoticeGubun.ItemIndex = 1 then
			begin
				if TCK_USER_PER.WOR_Gongji <> '1' then   //지방권인 경우 기사공지작성권한에따라 공지 항목 제한 2014.01.03 KHS
				begin
					GMessagebox('기사공지 권한이 없습니다.'+#10#13+'[사용자권한]->[기사]->[기사공지작성] 권한 확인요망',CDMSE);
					exit;
				end;
			end;
		end;

    if Application.MessageBox(PChar('삭제하시겠습니까?'), CDMSI, MB_YESNO +
			MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then
    begin
      Exit;
    end;
    ls_TxLoad := GTx_UnitXmlLoad('QUERY.XML');
		ls_TxQry := 'UPDATE CDMS_WAP_NOTICE SET DEL_YN = ''y'', DEL_ID = ''' + GT_USERIF.ID + ''' WHERE WAP_NUM = ' + Trim(cxTextEdit2.text);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WORK' +'NOTICEDEL', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
      end;
    finally
      GMessagebox('삭제되었습니다',CDMSI);
      FreeAndNil(slReceive);
      WriteChk := 1;
      proc_init(1);
    end;
  except
    on E: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
  btn_wRef1Click(nil);
end;


procedure TFrm_WOR18.btn_wRef1Click(Sender: TObject);
begin
  if WriteChk = 0 then
  begin
    proc_init(1);
  end else
  if WriteChk = 1 then
  begin
    proc_Notice(GpageNum);
    proc_init(1);
  end;
end;

function TFrm_WOR18.Find_MasterID(AHDNO, AUserId : string) :Boolean;
var
  ls_TxLoad: WideString;
  ls_TxQry, rv_str : string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
  xdom: msDomDocument;
begin
  try
    ls_TxQry := 'select * from cdms_head where HD_NO = ''' + AHDNO + ''' and MASTER_ID = ''' + AUserId + ''' ';
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WORK' +'NOTICESEQ', [rfReplaceAll]);
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
          xdom := ComsDomDocument.Create;
          try
            if xdom.loadXML(ls_rxxml) then
            begin
              if (0 < GetXmlRecordCount(ls_rxxml)) then
                Result := True
              else
                Result := False;
            end;
          finally
            xdom := Nil;
          end;
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except
    on E: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WOR18.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_WOR18.FormDestroy(Sender: TObject);
begin
  WkList.Free;
  Frm_WOR18 := Nil;
end;

procedure TFrm_WOR18.FormShow(Sender: TObject);
begin
  fSetFont(Frm_WOR18, GS_FONTNAME);

	SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);
end;

procedure TFrm_WOR18.mmoMilelist1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxMemo(sender).Text := Enc_Control(TcxMemo(sender).Text);
end;

procedure TFrm_WOR18.mmoMilelist1PropertiesChange(Sender: TObject);
var
  Len: Integer;
begin
  Len := GetSmsMemoLength(AnsiString(TcxMemo(Sender).Text));

  if Len >= 2000 then
  begin
    mmoMilelist1.Text := Copy(AnsiString(mmoMilelist1.Text), 1, 2000);
  end;

  cxLabel6.Caption := IntToStr(Length(AnsiString(mmoMilelist1.Text)));
end;

end.

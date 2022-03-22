unit xe_WOR22;

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
  TFrm_WOR22 = class(TForm)
    pnl1: TPanel;
    cxlbl1: TcxLabel;
    lb_WkCnt: TcxLabel;
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
    cxGrid1: TcxGrid;
    cxNotice_List: TcxGridDBTableView;
    Notice_ListColumn1: TcxGridDBColumn;
    Notice_ListColumn8: TcxGridDBColumn;
    Notice_ListColumn2: TcxGridDBColumn;
    Notice_ListColumn3: TcxGridDBColumn;
    Notice_ListColumn4: TcxGridDBColumn;
    Notice_ListColumn5: TcxGridDBColumn;
    Notice_ListColumn6: TcxGridDBColumn;
    Notice_ListColumn7: TcxGridDBColumn;
    Notice_ListColumn9: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    PnlMain: TPanel;
    cxLblActive: TLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    chk_Fix: TcxCheckBox;
    Notice_ListColumn10: TcxGridDBColumn;
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
		function func_SetNoTice(ATag:integer):Boolean;  //기사공지 등록
	public
    { Public declarations }
    GpageNum : integer;
    WKList : Tstringlist;
    WriteChk : integer;    //0 : 수정, 1 : 신규입력
    pWOR22Dock : TUNDOCKMNG;
		procedure proc_init(Aindex : integer);
		procedure proc_Notice(APage : integer);
		procedure proc_Notice_Body(Anum : String);
		procedure proc_recieve(ls_rxxml: widestring);
    function proc_FindRow(Anum : String; rRow : integer): string;
    procedure proc_seqQuery;
    function Find_MasterID(AHDNO, AUserId : string) :Boolean;
  end;

var
  Frm_WOR22: TFrm_WOR22;

implementation

{$R *.dfm}

uses xe_Dm, xe_Func, xe_gnl2, xe_gnl3, xe_Msg, xe_xml, xe_packet, xe_Flash;


procedure TFrm_WOR22.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_WOR22.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_WOR22.FormCreate(Sender: TObject);
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

procedure TFrm_WOR22.proc_init(Aindex : integer);
begin
	if Aindex = 0 then
  begin
    lb_WkCnt.Caption := '';
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
	btnSave.Caption := '저장';
end;

procedure TFrm_WOR22.btnNewClick(Sender: TObject);
begin
	proc_init(1);
end;

procedure TFrm_WOR22.proc_Notice(APage : integer);
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i, j : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
begin
	SetDebugeWrite('TFrm_WOR22.proc_Notice');

	if Not pWOR22Dock.bUnDock then pWOR22Dock.GUBUN := GT_SEL_BRNO.GUBUN;
	if Not pWOR22Dock.bUnDock then pWOR22Dock.HdNo  := GT_SEL_BRNO.HdNo;
	if Not pWOR22Dock.bUnDock then pWOR22Dock.BrNo  := GT_SEL_BRNO.BrNo;
	Try
		cxNotice_List.DataController.SetRecordCount(0);
		//레벨 │ 연합코드│본사코드│지사코드│page st│page ed  
		
		Param := GT_USERIF.LV;
		Param := Param + '│' + GT_USERIF.ShareNo;
		Param := Param + '│' + GT_SEL_BRNO.HdNo;
		Param := Param + '│' + GT_SEL_BRNO.BrNo;
		Param := Param + '│' + inttostr((APage * 100) - 100 + 1);
		Param := Param + '│' + inttostr(APage * 100);
		

		Screen.Cursor := crHourGlass;
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel06('GET_WK_NOTICE_LIST', 'MNG.GET_WK_NOTICE_LIST', '1000', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('기사공지리스트 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				Screen.Cursor := crDefault;
				Exit;
			end;

			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			cxNotice_List.DataController.SetRecordCount(0);
			for j := 0 to slList.Count - 1 do
			begin
				Frm_Flash.cxPBar1.Position := j + 1;
				Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
				Application.ProcessMessages;
				xmlData := slList.Strings[j];
				xdom := ComsDomDocument.Create;

				try
					if not xdom.loadXML(XmlData) then Exit;

					ls_MSG_Err := GetXmlErrorCode(XmlData);
					if ('0000' = ls_MSG_Err) then
					begin
						if (0 < GetXmlRecordCount(XmlData)) then
						begin
							lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
							cxNotice_List.BeginUpdate;
							ls_Rcrd := TStringList.Create;
							try
								for i := 0 to lst_Result.length - 1 do
								begin
									GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
									iRow := cxNotice_List.DataController.AppendRecord;
									// 1 Record 추가
									Application.ProcessMessages;

									cxNotice_List.DataController.Values[iRow, 0] := ls_Rcrd[0];            //No
									if ls_Rcrd[7] = '0' then cxNotice_List.DataController.Values[iRow, 1] := '일반공지' else
									if ls_Rcrd[7] = '1' then cxNotice_List.DataController.Values[iRow, 1] := '한줄공지';   //공지구분
									if ls_Rcrd[9] = '0' then cxNotice_List.DataController.Values[iRow, 2] := '일반' else
									if ls_Rcrd[9] = '1' then cxNotice_List.DataController.Values[iRow, 2] := '고정';   //고정공지
									cxNotice_List.DataController.Values[iRow, 3] := ls_Rcrd[3];            //공지제목
									cxNotice_List.DataController.Values[iRow, 4] := ls_Rcrd[2];            //공지작성자
									cxNotice_List.DataController.Values[iRow, 5] := copy(ls_Rcrd[4],1,10); //공지작성일
									cxNotice_List.DataController.Values[iRow, 6] := ls_Rcrd[1];            //ID
									cxNotice_List.DataController.Values[iRow, 7] := ls_Rcrd[5];            //본사코드
									cxNotice_List.DataController.Values[iRow, 8] := ls_Rcrd[8];            //조회수
									cxNotice_List.DataController.Values[iRow, 9] := ls_Rcrd[6];            //전체구분
								end;
							finally
								ls_Rcrd.Free;
							end;
						end;
					end;
			
				finally
					xdom := Nil;
				end;
			end;
			cxNotice_List.EndUpdate;
			cxNotice_List.Controller.FocusedRowIndex := 0;
		finally
			Frm_Flash.hide;
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_WOR22.proc_recieve(ls_rxxml: widestring);
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
		  					SetGridData(cxNotice_List, iRow, 2, ls_Rcrd[3]);
		  					SetGridData(cxNotice_List, iRow, 3, ls_Rcrd[2]);
		  					SetGridData(cxNotice_List, iRow, 4, copy(ls_Rcrd[4],1,10));
		  					SetGridData(cxNotice_List, iRow, 5, ls_Rcrd[1]);
		  					SetGridData(cxNotice_List, iRow, 6, ls_Rcrd[5]);
		  					SetGridData(cxNotice_List, iRow, 7, ls_Rcrd[8]);
		  					SetGridData(cxNotice_List, iRow, 8, ls_Rcrd[6]);
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
								lb_WkCnt.Caption := ls_Rcrd[13]	;
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

procedure TFrm_WOR22.cb_NoticeGubunClick(Sender: TObject);
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

procedure TFrm_WOR22.btnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_WOR22.proc_Notice_Body(Anum: String);
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, i, j : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
begin
	SetDebugeWrite('TFrm_WOR22.proc_Notice_Body');

	if Anum = '' then exit;
	cxTextEdit2.Text := Anum;
	Try
		
		Param := Anum;

		Screen.Cursor := crHourGlass;
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel06('GET_WK_NOTICE_LIST', 'MNG.GET_WK_NOTICE_INFO', '1', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('기사공지 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				Screen.Cursor := crDefault;
				Exit;
			end;

			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			for j := 0 to slList.Count - 1 do
			begin
				Frm_Flash.cxPBar1.Position := j + 1;
				Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
				Application.ProcessMessages;
				xmlData := slList.Strings[j];
				xdom := ComsDomDocument.Create;

				try
					if not xdom.loadXML(XmlData) then Exit;

					ls_MSG_Err := GetXmlErrorCode(XmlData);
					if ('0000' = ls_MSG_Err) then
					begin
						if (0 < GetXmlRecordCount(XmlData)) then
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
									lb_WkCnt.Caption := ls_Rcrd[13]	;

									if ls_Rcrd[14] = '0' then chk_Fix.Checked := False else
									if ls_Rcrd[14] = '1' then chk_Fix.Checked := True;   //고정공지

								end;
							finally
								ls_Rcrd.Free;
								btnSave.Caption := '수정';
							end;
						end;
					end;
			
				finally
					xdom := Nil;
				end;
			end;
		finally
			Frm_Flash.hide;
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_WOR22.cxNavigator1ButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  ShowMessage(inttostr(AButtonIndex));
end;

procedure TFrm_WOR22.btn1Click(Sender: TObject);
begin
	proc_Notice(1);
  proc_Notice_Body(proc_FindRow('', 3));
end;

procedure TFrm_WOR22.btn2Click(Sender: TObject);
begin
  if GpageNum > 1 then
    proc_Notice(GpageNum -1)
  else
    proc_Notice(GpageNum);
end;

procedure TFrm_WOR22.btn5Click(Sender: TObject);
begin
  proc_Notice(GpageNum + 1);
end;

procedure TFrm_WOR22.BtnClose1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_WOR22.btn3Click(Sender: TObject);
begin
  proc_Notice_Body(proc_FindRow(cxTextEdit2.text, 1));
end;

procedure TFrm_WOR22.btn4Click(Sender: TObject);
begin
	proc_Notice_Body(proc_FindRow(cxTextEdit2.text, 2));
end;

procedure TFrm_WOR22.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

function TFrm_WOR22.proc_FindRow(Anum: String; rRow : integer):string;
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

procedure TFrm_WOR22.cxNotice_ListCellClick(Sender: TcxCustomGridTableView;
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

procedure TFrm_WOR22.cxTextEdit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);	
end;

procedure TFrm_WOR22.btnSaveClick(Sender: TObject);
var	iTag : integer;
begin
	if Not pWOR22Dock.bUnDock then pWOR22Dock.GUBUN := GT_SEL_BRNO.GUBUN;
	if Not pWOR22Dock.bUnDock then pWOR22Dock.HdNo  := GT_SEL_BRNO.HdNo;
	if Not pWOR22Dock.bUnDock then pWOR22Dock.BrNo  := GT_SEL_BRNO.BrNo;
	try
		if (lb_WkCnt.Caption = '0') and (chkAllSelect.Checked = false) then
		begin
			GMessagebox('선택된 기사가 없습니다.',CDMSE);
			Exit;
		end;

		if (lb_WkCnt.Caption = '전체') and (chkAllSelect.Checked = False) then
		begin
			GMessagebox('선택된 기사가 없습니다.',CDMSE);
			Exit;
		end;

    if (Trim(cxTextEdit3.Text) <> GT_USERIF.ID) and (cxTextEdit3.Text <> '') then
		begin
      if GT_USERIF.LV >= '60' then
      begin
				if not Find_MasterID(pWOR22Dock.HDNO, GT_USERIF.ID) then
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

		iTag := TcxButton(Sender).Tag;
		if func_SetNoTice(iTag) then 
		begin
			if iTag = 0 then
				GMessagebox('기사 공지가 저장되었습니다.', CDMSE) else
			if iTag = 1 then
				GMessagebox('기사 공지가 삭제되었습니다.', CDMSE);
			btnNew.Click;
			proc_Notice(1) ;		
		end;
		
	except
    on E: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WOR22.proc_seqQuery;
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

procedure TFrm_WOR22.btnDelClick(Sender: TObject);
var
  ls_TxLoad: WideString;
  ls_TxQry : string;
  slReceive: TStringList;
  ErrCode: integer;
begin
	if Not pWOR22Dock.bUnDock then pWOR22Dock.GUBUN := GT_SEL_BRNO.GUBUN;
  if Not pWOR22Dock.bUnDock then pWOR22Dock.BrNo  := GT_SEL_BRNO.BrNo;
  if Not pWOR22Dock.bUnDock then pWOR22Dock.BrNo  := GT_SEL_BRNO.BrNo;

  try
		if (GS_PRJ_AREA = 'S') then
		begin
			if (trim(cxTextEdit3.Text) <> GT_USERIF.ID) and (cxTextEdit3.Text <> '') then
			begin
				if GT_USERIF.LV >= '60' then
				begin
					if not Find_MasterID(pWOR22Dock.HDNO, GT_USERIF.ID) then
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
						if not Find_MasterID(pWOR22Dock.HDNO, GT_USERIF.ID) then
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


procedure TFrm_WOR22.btn_wRef1Click(Sender: TObject);
begin
    proc_Notice(GpageNum);
//    proc_init(1);
{  if WriteChk = 0 then
  begin
    proc_init(1);
  end else
  if WriteChk = 1 then
  begin
    proc_Notice(GpageNum);
		proc_init(1);
	end; }
end;

function TFrm_WOR22.Find_MasterID(AHDNO, AUserId : string) :Boolean;
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

procedure TFrm_WOR22.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_WOR22.FormDestroy(Sender: TObject);
begin
  WkList.Free;
  Frm_WOR22 := Nil;
end;

procedure TFrm_WOR22.FormShow(Sender: TObject);
begin
  fSetFont(Frm_WOR22, GS_FONTNAME);
	SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);
end;

function TFrm_WOR22.func_SetNoTice(ATag:integer): Boolean;
var
	XmlData, Param, ErrMsg : string;
	ErrCode, i : Integer;
	sTmp, sGubun, sUserID : string;
begin
	Try
		Result := False;
		sTmp := En_Coding(mmoMilelist1.Text);
		sTmp := ReplaceAll(sTmp, #$D#$A, '¶');
		sTmp := ReplaceAll(sTmp, #13#10, '¶');
		sTmp := ReplaceAll(sTmp, #10#13, '¶');

		if ATag = 0 then
		begin
			if cxTextEdit2.Text <> '' then 
			begin
				sGubun := 'UPDATE';
				sUserID := GT_USERIF.ID;
			end else 
			begin
				sGubun := 'INSERT';
				sUserID := GT_USERIF.ID;
			end;
		end else
		if ATag = 1 then
		begin
			sGubun := 'DELETE';	
		end;
		// UPDATE/INSERT/DELETE(저장구분) │ 공지일련번호│유저아이디│유저명│제목│내용│본사코드 또는 지사코드│전체공지/선택공지 │선택된 기사사번리스트 콤마분리 aa,bb,cc.. │
		Param := sGubun;             //저장구분
		Param := Param + '│' + cxTextEdit2.text;  //공지일련번호
		Param := Param + '│' + sUserID;  //유저아이디
		Param := Param + '│' + Trim(cxedMemo.text);  //유저명
		Param := Param + '│' + Trim(cxTextEdit1.text);  //제목
		Param := Param + '│' + sTmp;  //내용
		if (GT_USERIF.LV = '70') or (chkAllSelect.checked) or (GT_USERIF.LV = '63') then
		begin
			Param := Param + '│' + pWOR22Dock.HDNO;  //본사코드 
			Param := Param + '│' + '0';  //전체공지/선택공지 
		end else
		if (GT_USERIF.LV = '60') then
		begin
			Param := Param + '│' + pWOR22Dock.HDNO;  //본사코드 
			Param := Param + '│' + '1';  //전체공지/선택공지 
		end else
		if (GT_USERIF.LV = '40') or (GT_USERIF.LV = '10') then
		begin
			Param := Param + '│' + GT_USERIF.Br;  //지사코드
			Param := Param + '│' + '1';  //전체공지/선택공지 
		end;
		sTmp := '';
		for i := 0 to WKList.Count -1 do
		begin
			if i = 0 then sTmp := WKList[i] else sTmp := sTmp + ',' + WKList[i];
		end;
		Param := Param + '│' + sTmp;  //선택된 기사사번리스트 콤마분리
		Param := Param + '│' + IntToStr(WKList.Count);  //기사 인원수
		if chk_Fix.Checked then Param := Param + '│' + '1' else Param := Param + '│' + '0';//고정공지여부 True =1, False=0

		btnSave.Enabled := False;
		if not RequestBase(GetCallable06('SET_WK_NOTICE', 'MNG.SET_WK_NOTICE', param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('기사공지 저장 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			btnSave.Enabled := True;
			Exit;
		end;
		btnSave.Enabled := True;
		Result := True;

	except
    on E: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WOR22.mmoMilelist1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxMemo(sender).Text := Enc_Control(TcxMemo(sender).Text);
end;

procedure TFrm_WOR22.mmoMilelist1PropertiesChange(Sender: TObject);
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

unit xe_SET07;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, Grids, BaseGrid,
  AdvGrid, AdvCGrid, ExtCtrls, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxControls, cxContainer, cxEdit, cxLabel, cxListBox,
  Gauges, cxLookAndFeels, AdvObj, cxGroupBox, AdvProgressBar, dxSkinsCore,
  AdvUtil, dxSkinOffice2010Silver, cxCustomListBox, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_SET07 = class(TForm)
    Panel2: TPanel;
    cxLabel46: TcxLabel;
    cbTermTypeName: TcxComboBox;
    cxLabel48: TcxLabel;
    ed_TermType_NewNm: TcxTextEdit;
    btnSaveType: TcxButton;
    Panel1: TPanel;
    btnFileImport: TcxButton;
		btnRemoveAll: TcxButton;
		btnSave: TcxButton;
    btnSavaAs: TcxButton;
    adsg_term_type: TAdvColumnGrid;
    lbTermTypeCd: TcxListBox;
    OpenDialog1: TOpenDialog;
    pnl_ReName: TPanel;
    cxLabel123: TcxLabel;
    cxLabel124: TcxLabel;
    ed_charge_NewName: TcxTextEdit;
    btnSaveAsType: TcxButton;
    btnSaveAsClose: TcxButton;
    btnTypeDelete: TcxButton;
    PnlMain: TPanel;
    pnlTitle: TPanel;
    cxButton1: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    Gauge1: TAdvProgressBar;
    cxLblActive: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnSaveTypeClick(Sender: TObject);
    procedure cbTermTypeNameClick(Sender: TObject);
    procedure btnTypeDeleteClick(Sender: TObject);
    procedure btnRemoveAllClick(Sender: TObject);
    procedure btnFileImportClick(Sender: TObject);
    procedure adsg_term_typeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSavaAsClick(Sender: TObject);
    procedure btnSaveAsCloseClick(Sender: TObject);
    procedure btnSaveAsTypeClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxGroupBox4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
    { Private declarations }
    procedure proc_init;
  public
    { Public declarations }
  end;

var
  Frm_SET07: TFrm_SET07;

implementation

{$R *.dfm}

uses xe_SET, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_charge, xe_Msg;

procedure TFrm_SET07.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_SET07.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_SET07.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_SET07.FormDestroy(Sender: TObject);
begin
  Frm_SET07 := Nil;
end;

procedure TFrm_SET07.FormShow(Sender: TObject);
begin
  fSetFont(Frm_SET07, GS_FONTNAME);
  proc_init;
end;

procedure TFrm_SET07.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SET07.proc_init;
begin
  try
    cbTermTypeName.Properties.Items.Clear;
    lbTermTypeCd.Items.Clear;
    ed_TermType_NewNm.Text := '';

    adsg_term_type.RowCount := 2;
    adsg_term_type.Rows[1].Clear;
    adsg_term_type.Cells[0, 1] := '1';

    if CHARGE_GUBUN = 'P' then
    begin
			with dmCharge.FDQuery_SQLite do
      begin
        Close;
        SQL.Text := 'SELECT CG_CD, CG_NM, CG_GERVALUE FROM CHARGE_GROUP WHERE CG_GUBUN = ''CS'' ORDER BY CG_CD';
        open;

        while not eof do
        begin
          cbTermTypeName.Properties.Items.Add(Fields[1].AsString);
          lbTermTypeCd.Items.Add(Fields[0].AsString);
          Next;
        end;
      end;
		end else
    if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
    begin
			with dmCharge.FDQuery1 do
      begin
				dmCharge.proc_mysql_init;
        Close;
        SQL.Text := 'SELECT CG_CD, CG_NM, CG_GERVALUE FROM CDMS_GROUP WHERE CG_GUBUN = ''CS'' ORDER BY CG_CD ';
        open;

        while not eof do
        begin
          cbTermTypeName.Properties.Items.Add(Fields[1].AsString);
          lbTermTypeCd.Items.Add(Fields[0].AsString);
          Next;
        end;
      end;
    end;
  except on E: Exception do
    begin
      GMessagebox(Format('데이터 초기화 중 오류발생[오류: %s]', [E.Message]), CDMSE);
    end;
  end;
end;

procedure TFrm_SET07.btnSaveClick(Sender: TObject);
var
  i, iK0, iK1, ioldk0, iGerValue, j: Integer;
	sCode, sQuery: string;
begin
  try
    if cbTermTypeName.Text = '' then
    begin
      GMessagebox('구간타입명을 먼저 선택하세요', cdmsE);
      exit;
    end;

    sCode := lbTermTypeCd.Items.Strings[cbTermTypeName.itemIndex];

    for i := 1 to adsg_term_type.RowCount - 1 do
    begin
      if adsg_term_type.Cells[1, i] = '' then
        continue
      else
      begin
        iK0 := StrToIntDef(StringReplace(Trim(adsg_term_type.Cells[1, i]), ',', '', [rfReplaceAll]), 0);
//        iK1 := StrToIntDef(StringReplace(Trim(adsg_term_type.Cells[2, i]), ',', '', [rfReplaceAll]), 0);
        if (i > 1) then
        begin
          ioldk0 := StrToIntDef(StringReplace(Trim(adsg_term_type.Cells[2, i - 1]), ',', '', [rfReplaceAll]), 0);

          if iK0 <> iOldK0 + 1 then
          begin
            GMessagebox('출발거리(' + IntToStr(iK0) + ')와 도착거리(' + IntToStr(iOldK0) + ') 사이에 잘못된 테이터가 있습니다.' + #13#10 +
              '확인하시고 다시 해주세요', CDMSE);
            Exit;
          end;
        end;
      end;
    end;

    if CHARGE_GUBUN = 'P' then
		begin
			sQuery := 'DELETE FROM CHARGE_TERM_TYPE WHERE CT_CD = ''' + sCode + ''' AND CT_NO > 1 ';
			dmCharge.proc_SQLite_init;
			dmCharge.FDQuery_SQLite.Close;
			dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
			dmCharge.FDQuery_SQLite.ExecSQL;
				
			j := 1;
			for i := 1 to adsg_term_type.RowCount - 1 do
			begin
				if adsg_term_type.Cells[1, i] = '' then
					continue
				else
				begin
					iK0 := StrToIntDef(StringReplace(Trim(adsg_term_type.Cells[1, i]), ',', '', [rfReplaceAll]), 0);
					iK1 := StrToIntDef(StringReplace(Trim(adsg_term_type.Cells[2, i]), ',', '', [rfReplaceAll]), 0);
					iGerValue := StrToIntDef(StringReplace(Trim(adsg_term_type.Cells[3, i]), ',', '', [rfReplaceAll]), 0);
					sQuery := Format('INSERT INTO CHARGE_TERM_TYPE VALUES (%d, ''%s'', %d, %d, %d)',
															[j+1, sCode, iK0, iK1, iGerValue]);
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.ExecSQL;
					inc(j);
				end;
			end;
			GMessagebox(cbTermTypeName.Text + '가 저장되었습니다.', cdmsi);
		end else
    if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
    begin
      with dmCharge.FDQuery1 do
      begin
				if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.StartTransaction else
				if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.StartTransaction;
				try
					dmCharge.proc_mysql_init('update');
          Close;
          SQL.Text := 'DELETE FROM CDMS_TERM_TYPE WHERE CT_CD = ''' + sCode + ''' AND CT_NO > 1 ';
          ExecSQL;

          j := 1;
          for i := 1 to adsg_term_type.RowCount - 1 do
          begin
            if adsg_term_type.Cells[1, i] = '' then
              continue
            else
            begin
              iK0 := StrToIntDef(StringReplace(Trim(adsg_term_type.Cells[1, i]), ',', '', [rfReplaceAll]), 0);
              iK1 := StrToIntDef(StringReplace(Trim(adsg_term_type.Cells[2, i]), ',', '', [rfReplaceAll]), 0);
              iGerValue := StrToIntDef(StringReplace(Trim(adsg_term_type.Cells[3, i]), ',', '', [rfReplaceAll]), 0);
              dmCharge.proc_mysql_init('update');
              Close;
              SQL.Text := 'INSERT INTO CDMS_TERM_TYPE VALUES (' + IntToStr(j + 1) + ',''' + sCode + ''' '
                + ',' + IntToStr(iK0) + ',' + IntToStr(ik1) + ',' + IntToStr(iGerValue) + ') ';
              ExecSQL;
              inc(j);
            end;
          end;
					if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.Commit else
					if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.Commit;
				except
					if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.Rollback else
					if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.Rollback;
					GMessagebox('실패하였습니다.', cdmsi);
					exit;
        end;
        GMessagebox(cbTermTypeName.Text + '가 저장되었습니다.', CDMSI);
      end;
    end;
  except
  end;
end;

procedure TFrm_SET07.btnSaveTypeClick(Sender: TObject);
var
	sSno, iSn, sQuery: string;
begin
  if ed_TermType_NewNm.Text = '' then
  begin
    GMessagebox('[신규타입명]을 입력해 주세요.', CDMSE);
    ed_TermType_NewNm.SetFocus;
    Exit;
  end;

  if CHARGE_GUBUN = 'P' then
  begin
		sQuery := 'SELECT * FROM CHARGE_GROUP WHERE CG_NM = ''' + ed_TermType_NewNm.Text + ''' ';
		dmCharge.proc_SQLite_init;
		dmCharge.FDQuery_SQLite.close;
		dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
		dmCharge.FDQuery_SQLite.open;
		
		if not dmCharge.FDQuery_SQLite.IsEmpty then
		begin
			GMessagebox('같은 이름이 존재합니다.'#13#10'다른이름으로 저장하세요', cdmsE);
			exit;
		end;
		sSno := Frm_SET.func_search_sno('CS');
		iSn := IntToStr(StrToInt(copy(sSno, 3, 3)));

		sQuery := 'INSERT INTO CHARGE_GROUP (CG_NO, CG_GUBUN, CG_CD, CG_NM, CG_GERVALUE) '
			+ 'VALUES (' + iSn + ',''CS'',''' + sSno + ''',''' + Trim(ed_TermType_NewNm.Text) + ''',0) ';
		dmCharge.proc_SQLite_init;
		dmCharge.FDQuery_SQLite.Close;
		dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
		dmCharge.FDQuery_SQLite.ExecSQL;

		sQuery := 'INSERT INTO CHARGE_TERM_TYPE VALUES(1,''' + sSno + ''',0,0,0) ';
		dmCharge.proc_SQLite_init;
		dmCharge.FDQuery_SQLite.Close;
		dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
		dmCharge.FDQuery_SQLite.ExecSQL;
		
		proc_init;
		adsg_term_type.RowCount := 2;
		adsg_term_type.Rows[1].Clear;
		cbTermTypeName.ItemIndex := cbTermTypeName.Properties.Items.Count - 1;
	end else 
	if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
  begin
    with dmCharge.FDQuery1 do
    begin
      dmCharge.proc_mysql_init;
      Close;
      SQL.Text := 'SELECT * FROM CDMS_GROUP WHERE CG_NM = ''' + ed_TermType_NewNm.Text + ''' ';
      open;
      if not IsEmpty then
      begin
        GMessagebox('같은 이름이 존재합니다.'#13#10'다른이름으로 저장하세요', cdmsE);
        exit;
      end;
      sSno := Frm_SET.func_search_sno('CS');
      iSn := IntToStr(StrToInt(copy(sSno, 3, 3)));

			if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.StartTransaction else
			if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.StartTransaction;
			try
				dmCharge.proc_mysql_init('update');
        Close;
        SQL.Text := 'INSERT INTO CDMS_GROUP (CG_NO, CG_GUBUN, CG_CD, CG_NM, CG_GERVALUE) '
          + 'VALUES (' + iSn + ',''CS'',''' + sSno + ''',''' + Trim(ed_TermType_NewNm.Text) + ''',0) ';
        ExecSQL;

        Close;
        SQL.Text := 'INSERT INTO CDMS_TERM_TYPE VALUES(1,''' + sSno + ''',0,0,0) ';
        ExecSQL;
				if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.Commit else
				if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.Commit;
			except
				if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.Rollback else
				if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.Rollback;
				GMessagebox('실패하였습니다.', cdmsi);
        exit;
      end;
      proc_init;
      adsg_term_type.RowCount := 2;
      adsg_term_type.Rows[1].Clear;
      cbTermTypeName.ItemIndex := cbTermTypeName.Properties.Items.Count - 1;
    end;
  end;
end;

procedure TFrm_SET07.cbTermTypeNameClick(Sender: TObject);
var sQuery,	sSno: string;
begin
  try
    if CHARGE_GUBUN = 'P' then
    begin
			if cbTermTypeName.ItemIndex >= 0 then
			begin
				sSno := lbTermTypeCd.Items.Strings[cbTermTypeName.ItemIndex];
				adsg_term_type.RowCount := 2;
				adsg_term_type.Rows[1].Clear;
				sQuery := 'SELECT * FROM CHARGE_TERM_TYPE WHERE CT_CD = ''' + sSno + ''' AND CT_NO > 1 ORDER BY CT_KM0 ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.open;
				
				while not dmCharge.FDQuery_SQLite.EOF do
				begin
					if adsg_term_type.Cells[0, adsg_term_type.RowCount - 1] <>
						'' then
						adsg_term_type.RowCount := adsg_term_type.RowCount + 1;
					adsg_term_type.Cells[0, adsg_term_type.RowCount - 1] := IntToStr(adsg_term_type.RowCount - 1);
					adsg_term_type.Cells[1, adsg_term_type.RowCount - 1] := dmCharge.FDQuery_SQLite.Fields[2].AsString;
					adsg_term_type.Cells[2, adsg_term_type.RowCount - 1] := dmCharge.FDQuery_SQLite.Fields[3].AsString;
					adsg_term_type.Cells[3, adsg_term_type.RowCount - 1] := FormatFloat('#,##0', StrToFloatDef(dmCharge.FDQuery_SQLite.Fields[4].AsString, 0.0));
					dmCharge.FDQuery_SQLite.next;
				end;
			end;
		end else
    if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
    begin
      with dmCharge.FDQuery1 do
      begin
        if cbTermTypeName.ItemIndex >= 0 then
        begin
          sSno := lbTermTypeCd.Items.Strings[cbTermTypeName.ItemIndex];
          adsg_term_type.RowCount := 2;
          adsg_term_type.Rows[1].Clear;
          dmCharge.proc_mysql_init;
					Close;
          SQL.Text := 'SELECT * FROM CDMS_TERM_TYPE WHERE CT_CD = ''' + sSno + ''' AND CT_NO > 1 ORDER BY CT_KM0 ';
          open;
          if not IsEmpty then
          begin
            while not eof do
            begin
              if adsg_term_type.Cells[0, adsg_term_type.RowCount - 1] <> '' then
                adsg_term_type.RowCount := adsg_term_type.RowCount + 1;
              adsg_term_type.Cells[0, adsg_term_type.RowCount - 1] := IntToStr(adsg_term_type.RowCount - 1);
              adsg_term_type.Cells[1, adsg_term_type.RowCount - 1] := Fields[2].AsString;
              adsg_term_type.Cells[2, adsg_term_type.RowCount - 1] := Fields[3].AsString;
              adsg_term_type.Cells[3, adsg_term_type.RowCount - 1] := FormatFloat('#,##0', StrToFloatDef(Fields[4].AsString, 0.0));
              next;
            end;
          end;
        end;
      end;
    end;
    if adsg_term_type.RowCount = 2 then
      adsg_term_type.Cells[0, 1] := '1';
  except
  end;
end;

procedure TFrm_SET07.btnTypeDeleteClick(Sender: TObject);
var sQuery, sCode: string;
begin
  try
    if GMessagebox(cbTermTypeName.Text + '타입을 삭제 하시겠습니까?'#13#10'타입이 들어있는 요금제는 모두 삭제됩니다.', cdmsq) = idok then
    begin
      sCode := lbTermTypeCd.Items.Strings[cbTermTypeName.itemIndex];
      if CHARGE_GUBUN = 'P' then
      begin
				sQuery := 'DELETE FROM CDMS_TERM_CHARGE WHERE TC_SUB_CD = ''' + sCode + ''' ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.ExecSQL;

				sQuery := 'DELETE FROM CHARGE_TERM_TYPE WHERE CT_CD = ''' + sCode + ''' ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.ExecSQL;

				sQuery := 'DELETE FROM CHARGE_GROUP WHERE CG_CD = ''' + sCode + ''' ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.ExecSQL;

				sQuery := 'DELETE FROM CDMS_CHARGE_TYPE WHERE CT_CD = ''' + sCode + ''' ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.ExecSQL;

				GMessagebox(cbTermTypeName.Text + '가 삭제되었습니다.', 'cdmsE');
					
				proc_init;
			end else
      if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
      begin
        with dmCharge.FDQuery1 do
        begin
					if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.StartTransaction else
					if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.StartTransaction;
					try
						dmCharge.proc_mysql_init('update');
            Close;
            SQL.Text := 'DELETE FROM CDMS_TERM WHERE TC_SUB_CD = ''' + sCode + ''' ';
            ExecSQL;

            Close;
            SQL.Text := 'DELETE FROM CDMS_TERM_TYPE WHERE CT_CD = ''' + sCode + ''' ';
            ExecSQL;

            Close;
            SQL.Text := 'DELETE FROM CDMS_GROUP WHERE CG_CD = ''' + sCode + ''' ';
            ExecSQL;

            Close;
            SQL.Text := 'DELETE FROM CDMS_TYPE WHERE CT_CD = ''' + sCode + ''' ';
            ExecSQL;
						if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.Commit else
						if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.Commit;
					except
						if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.Rollback else
						if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.Rollback;
						GMessagebox('실패하였습니다.', cdmsi);
            exit;
          end;
          GMessagebox(cbTermTypeName.Text + '가 삭제되었습니다.', 'cdmsE');
          proc_init;
        end;
      end;
    end;
  except
  end;
end;

procedure TFrm_SET07.btnRemoveAllClick(Sender: TObject);
begin
  if GMessagebox('전체행을 삭제하시겠습니까?', cdmsq) = idok then
  begin
    adsg_term_type.BeginUpdate;
    adsg_term_type.RowCount := 2;
    adsg_term_type.Rows[1].Clear;
    adsg_term_type.Cells[0, 1] := '1';
    adsg_term_type.EndUpdate;
  end;
end;

procedure TFrm_SET07.btnFileImportClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    adsg_term_type.ClearRows(1, adsg_term_type.RowCount - 1);
    adsg_term_type.LoadFromXLS(OpenDialog1.FileName);
  end;
end;

procedure TFrm_SET07.adsg_term_typeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN, VK_DOWN:
      begin
        if (adsg_term_type.Row = adsg_term_type.RowCount - 1) then
        begin
          adsg_term_type.RowCount := adsg_term_type.RowCount + 1;
          adsg_term_type.Rows[adsg_term_type.RowCount - 1].Clear;
          adsg_term_type.Cells[0, adsg_term_type.RowCount - 1] := IntToStr(adsg_term_type.RowCount - 1);
          adsg_term_type.row := adsg_term_type.RowCount - 1;
          if key = vk_return then
            adsg_term_type.Col := 1;
          key := 0;
        end;
      end;
    VK_UP:
      begin
        if (adsg_term_type.RowCount > 2) and (adsg_term_type.Row =
          adsg_term_type.RowCount - 1)
          and (Trim(adsg_term_type.Cells[1, adsg_term_type.Row]) = '')
          and (Trim(adsg_term_type.Cells[2, adsg_term_type.Row]) = '') then
        begin
          adsg_term_type.RowCount := adsg_term_type.RowCount - 1;
          adsg_term_type.Col := 1;
          adsg_term_type.Row := adsg_term_type.RowCount - 1;
          key := 0;
        end;
      end;
    VK_LEFT:
      begin
        if (adsg_term_type.Col > 1) and (adsg_term_type.Row > 1) then
        begin
          if adsg_term_type.Col = 1 then
            adsg_term_type.Col := 3
          else
            adsg_term_type.Col := adsg_term_type.Col - 1;
          key := 0;
        end
      end;
    VK_RIGHT:
      begin
        if (adsg_term_type.Row <= adsg_term_type.RowCount - 1) then
        begin
          if (adsg_term_type.Row = adsg_term_type.RowCount - 1) and (adsg_term_type.col < 3) then
            adsg_term_type.col := adsg_term_type.col + 1
          else
            adsg_term_type.col := adsg_term_type.col + 1;
        end;
        key := 0;
      end
  end;
end;

procedure TFrm_SET07.btnSavaAsClick(Sender: TObject);
begin
  ed_charge_NewName.Text := '';
  pnl_ReName.Left := (Width - pnl_ReName.Width) div 2;
  pnl_ReName.top := (Height - pnl_ReName.Height) div 2;
  Gauge1.Position := 0;
  pnl_ReName.Visible := True;
  pnl_ReName.BringToFront;
  ed_charge_NewName.SetFocus;
end;

procedure TFrm_SET07.cxGroupBox4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(pnl_ReName.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SET07.btnSaveAsCloseClick(Sender: TObject);
begin
  pnl_ReName.Visible := False;
end;

procedure TFrm_SET07.btnSaveAsTypeClick(Sender: TObject);
var
  i, iK0, iK1, ioldk0, iGerValue, j: Integer;
	sSno, iSn, sQuery : string;
begin
  if ed_charge_NewName.Text = '' then
  begin
    GMessagebox('[타입명]을 입력해 주세요.', CDMSE);
    ed_charge_NewName.SetFocus;
    Exit;
  end;

  try
    for i := 1 to adsg_term_type.RowCount - 1 do
    begin
      if adsg_term_type.Cells[1, i] = '' then
        continue
      else
      begin
        iK0 := StrToIntDef(StringReplace(Trim(adsg_term_type.Cells[1, i]), ',', '', [rfReplaceAll]), 0);
        if (i > 1) then
        begin
          ioldk0 := StrToIntDef(StringReplace(Trim(adsg_term_type.Cells[2, i - 1]), ',', '', [rfReplaceAll]), 0);
					if iK0 <> iOldK0 + 1 then
          begin
            GMessagebox('출발거리(' + IntToStr(iK0) + ')와 도착거리(' + IntToStr(iOldK0) + ') 사이에 잘못된 테이터가 있습니다.' + #13#10 +
              '확인하시고 다시 해주세요', CDMSE);
            exit;
          end;
        end;
			end;
    end;
		if CHARGE_GUBUN = 'P' then
		begin
			sQuery := 'SELECT * FROM CHARGE_GROUP WHERE CG_NM = ''' + ed_charge_NewName.Text + ''' ';
			dmCharge.proc_SQLite_init;
			dmCharge.FDQuery_SQLite.Close;
			dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
			dmCharge.FDQuery_SQLite.OPEN;

			if not dmCharge.FDQuery_SQLite.IsEmpty then
			begin
				GMessagebox('같은 이름이 존재합니다.'#13#10'다른이름으로 저장하세요', cdmsE);
				exit;
			end;
			sSno := Frm_SET.func_search_sno('CS');
			iSn := IntToStr(StrToInt(copy(sSno, 3, 3)));
			dmCharge.FDConn_SQLite.StartTransaction;
			Try
				sQuery := 'INSERT INTO CHARGE_GROUP (CG_NO, CG_GUBUN, CG_CD, CG_NM, CG_GERVALUE) '
					+ 'VALUES (' + iSn + ',''CS'',''' + sSno + ''',''' + Trim(ed_charge_NewName.Text) + ''',0) ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.ExecSQL;

				sQuery := 'INSERT INTO CHARGE_TERM_TYPE VALUES(1,''' + sSno + ''',0,0,0) ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.ExecSQL;
			
				sQuery := 'DELETE FROM CHARGE_TERM_TYPE WHERE CT_CD = ''' + sSno + ''' AND CT_NO > 1 ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.ExecSQL;
			
				Gauge1.Max := adsg_term_type.RowCount - 1;
				Gauge1.Position := 0;
				j := 1;
				for i := 1 to adsg_term_type.RowCount - 1 do
				begin
					if adsg_term_type.Cells[1, i] = '' then
						continue
					else
					begin
						iK0 := StrToIntDef(StringReplace(Trim(adsg_term_type.Cells[1, i]), ',', '', [rfReplaceAll]), 0);
						iK1 := StrToIntDef(StringReplace(Trim(adsg_term_type.Cells[2, i]), ',', '', [rfReplaceAll]), 0);
						iGerValue := StrToIntDef(StringReplace(Trim(adsg_term_type.Cells[3, i]), ',', '', [rfReplaceAll]), 0);

						sQuery := 'INSERT INTO CHARGE_TERM_TYPE VALUES (' + IntToStr(j + 1) + ',''' + sSno + ''' '
							+ ',' + IntToStr(iK0) + ',' + IntToStr(ik1) + ',' + IntToStr(iGerValue) + ') ';
						dmCharge.proc_SQLite_init;
						dmCharge.FDQuery_SQLite.Close;
						dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
						dmCharge.FDQuery_SQLite.ExecSQL;
						inc(j);
					end;
					Gauge1.Position := i;
				end;
				dmCharge.FDConn_SQLite.Commit;
			except
				dmCharge.FDConn_SQLite.Rollback;
				GMessagebox('실패하였습니다.', cdmsE);
				exit;
			end;
		end else
		if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
    begin
      with dmCharge.FDQuery1 do
      begin
        dmCharge.proc_mysql_init;
        Close;
        SQL.Text := 'SELECT * FROM CDMS_GROUP WHERE CG_NM = ''' + ed_charge_NewName.Text + ''' ';
        open;
        if not IsEmpty then
        begin
          GMessagebox('같은 이름이 존재합니다.'#13#10'다른이름으로 저장하세요', cdmsE);
          exit;
        end;
        sSno := Frm_SET.func_search_sno('CS');
        iSn := IntToStr(StrToInt(copy(sSno, 3, 3)));

				if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.StartTransaction else
				if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.StartTransaction;
				try
					dmCharge.proc_mysql_init('update');
          Close;
					SQL.Text := 'INSERT INTO CDMS_GROUP (CG_NO, CG_GUBUN, CG_CD, CG_NM, CG_GERVALUE) '
						+ 'VALUES (' + iSn + ',''CS'',''' + sSno + ''',''' + Trim(ed_charge_NewName.Text) + ''',0) ';
          ExecSQL;

					Close;
          SQL.Text := 'INSERT INTO CDMS_TERM_TYPE VALUES(1,''' + sSno + ''',0,0,0) ';
          ExecSQL;

          Close;
          SQL.Text := 'DELETE FROM CDMS_TERM_TYPE WHERE CT_CD = ''' + sSno + ''' AND CT_NO > 1 ';
          ExecSQL;
          Gauge1.Max := adsg_term_type.RowCount - 1;
          Gauge1.Position := 0;
          j := 1;
          for i := 1 to adsg_term_type.RowCount - 1 do
          begin
            if adsg_term_type.Cells[1, i] = '' then
              continue
            else
            begin
              iK0 := StrToIntDef(StringReplace(Trim(adsg_term_type.Cells[1, i]), ',', '', [rfReplaceAll]), 0);
              iK1 := StrToIntDef(StringReplace(Trim(adsg_term_type.Cells[2, i]), ',', '', [rfReplaceAll]), 0);
              iGerValue := StrToIntDef(StringReplace(Trim(adsg_term_type.Cells[3, i]), ',', '', [rfReplaceAll]), 0);
              dmCharge.proc_mysql_init('update');
							Close;
              SQL.Text := 'INSERT INTO CDMS_TERM_TYPE VALUES (' + IntToStr(j + 1) + ',''' + sSno + ''' '
                + ',' + IntToStr(iK0) + ',' + IntToStr(ik1) + ',' + IntToStr(iGerValue) + ') ';
              ExecSQL;
              inc(j);
            end;
            Gauge1.Position := i;
					end;
					if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.Commit else
					if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.Commit;
				except
					if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.Rollback else
					if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.Rollback;
					GMessagebox('실패하였습니다.', cdmsi);
          exit;
        end;
      end;
    end;
    pnl_ReName.Visible := False;
    GMessagebox('저장되었습니다.', cdmsi);
    proc_init;
  except
  end;
end;

procedure TFrm_SET07.btnCloseClick(Sender: TObject);
begin
  try
    Frm_SET.proc_Query('SELCHARGENM');
  except

  end;
	Close;
end;

end.


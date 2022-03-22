unit xe_SET04;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, Grids, BaseGrid,
  AdvGrid, AdvCGrid, ExtCtrls, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxControls, cxContainer, cxEdit, cxLabel, cxListBox,
  Gauges, cxLookAndFeels, AdvObj, cxGroupBox, AdvProgressBar, dxSkinsCore,
  AdvUtil, dxSkinOffice2010Silver, cxCustomListBox, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxCheckBox, cxSpinEdit, cxTimeEdit, cxGridBandedTableView, cxMemo,
  dxScrollbarAnnotations;

type
  TFrm_SET04 = class(TForm)
    btnCopy: TcxButton;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    cxLblActive: TLabel;
    btnCancel: TcxButton;
    pnlMain: TPanel;
    cxLabel102: TcxLabel;
    cboBranch: TcxComboBox;
    cxGridA8: TcxGrid;
    cxBrCopyList: TcxGridBandedTableView;
    cxBrCopyListColumn1: TcxGridBandedColumn;
    cxBrCopyListColumn2: TcxGridBandedColumn;
    cxBrCopyListColumn4: TcxGridBandedColumn;
    cxBrCopyListColumn5: TcxGridBandedColumn;
    cxGridLevel1: TcxGridLevel;
    cxMemo1: TcxMemo;
    chkList1: TcxCheckBox;
    chkList2: TcxCheckBox;
    chkList3: TcxCheckBox;
    cxLabel1: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cboBranchPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    procedure proc_init;
    procedure pSaveData(vBrNo : String);
  public
    { Public declarations }
    FBrNo : String;
  end;

var
  Frm_SET04: TFrm_SET04;

implementation

{$R *.dfm}

uses xe_SET, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_charge, xe_Msg, Main;

procedure TFrm_SET04.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_SET04.btnCopyClick(Sender: TObject);
Var iPos : Integer;
    sTmp : String;
begin
  if Trim(cboBranch.Text) = '' then
  begin
    GMessagebox('지사를 선택하세요.', CDMSE);
    Exit;
  end;
  iPos := Pos(')', cboBranch.Text);
  sTmp := Copy(cboBranch.Text, 2, iPos - 2);

  pSaveData(sTmp);
end;

procedure TFrm_SET04.cboBranchPropertiesChange(Sender: TObject);
Var i, iRow, iPos : Integer;
    sTmp : String;
begin
  cxBrCopyList.DataController.SetRecordCount(0);

  cxBrCopyList.BeginUpdate;
  try
    for i := 0 to cboBranch.Properties.Items.Count - 1 do
    begin
      if cboBranch.Text = cboBranch.Properties.Items.Strings[i] then Continue;

      iPos := Pos(')', cboBranch.Properties.Items.Strings[i]);
      sTmp := Copy(cboBranch.Properties.Items.Strings[i], 2, iPos - 2);

      iRow := cxBrCopyList.DataController.AppendRecord;
      cxBrCopyList.DataController.Values[iRow, 0] := iRow+1;
      cxBrCopyList.DataController.Values[iRow, 1] := cboBranch.Properties.Items.Strings[i];
      cxBrCopyList.DataController.Values[iRow, 2] := '0';
      cxBrCopyList.DataController.Values[iRow, 3] := sTmp;
    end;
  finally
    cxBrCopyList.EndUpdate;
  end;
end;

procedure TFrm_SET04.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_SET04.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_SET04.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_SET04.FormCreate(Sender: TObject);
begin
  proc_init;
end;

procedure TFrm_SET04.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_SET04.FormDestroy(Sender: TObject);
begin
  Frm_SET04 := Nil;
end;

procedure TFrm_SET04.FormShow(Sender: TObject);
begin
  fSetFont(Frm_SET04, GS_FONTNAME);
end;

procedure TFrm_SET04.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SET04.proc_init;
Var i : Integer;
begin
  try
    for i := 0 to cxBrCopyList.ColumnCount - 1 do
    begin
      case i of
        0 : cxBrCopyList.Columns[i].DataBinding.ValueType := 'Integer';
        else
            cxBrCopyList.Columns[i].DataBinding.ValueType := 'String';
      end;
    end;

    pSetBranch(cboBranch);
  except on E: Exception do
    begin
      GMessagebox(Format('데이터 초기화 중 오류발생[오류: %s]', [E.Message]), CDMSE);
    end;
  end;
end;

procedure TFrm_SET04.pSaveData(vBrNo : String);
var sHdNo, sBrNo, sMsg : string;
    i, iRow, iCnt : Integer;
begin
	try
    iCnt := 0;
    for i := 0 to cxBrCopyList.DataController.RecordCount - 1 do
    begin
      if cxBrCopyList.DataController.Values[i, 2] = '1' then Inc(iCnt);
    end;

    if iCnt = 0 then
    begin
      GMessagebox('복사할 지사를 선택하세요.', CDMSE);
      Exit;
    end;

    sMsg := '복사될 지사의 이전 자료는 모두 삭제되고 새로 저장됩니다.' + CRLF +
            '복사하시겠습니까?';
    if Application.MessageBox(PChar(sMsg), PChar(GS_APPNAME), MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;

		if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.StartTransaction else
		if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.StartTransaction;
    try
      for i := 0 to cxBrCopyList.DataController.RecordCount - 1 do
      begin
        if cxBrCopyList.DataController.Values[i, 2] = '1' then
        begin
          sBrNo := cxBrCopyList.DataController.Values[i, 3];
          with dmCharge.FDQuery1 do
          begin
            //------------------------- 거리요금 ----------------------------
            if chkList1.Checked then
            begin
              dmCharge.proc_mysql_init('update');
              Close;
              SQL.Text := Format('DELETE FROM CDMS_DIST_NEW WHERE BR_NO = ''%s'' ', [sBrNo]);
              ExecSql;

              dmCharge.proc_mysql_init('update');
              Close;
              SQL.Text :=  ' INSERT INTO CDMS_DIST_NEW (BR_NO, DN_STCITY, DN_STWARD, DN_STDONG, DN_EDCITY, DN_EDWARD, DN_EDDONG ' +
                           '      , DN_DEFAULT, DN_TYPE1, DN_TYPE2, DN_TYPE3, DN_TYPE4, IN_ID, IN_DATE ) ' +
                    Format(' SELECT ''%s'', DN_STCITY, DN_STWARD, DN_STDONG, DN_EDCITY, DN_EDWARD, DN_EDDONG', [sBrNo]) +
                    Format('      , DN_DEFAULT, DN_TYPE1, DN_TYPE2, DN_TYPE3, DN_TYPE4, ''%s'', now()', [GT_USERIF.ID]) +
                           '   FROM (SELECT BR_NO, DN_STCITY, DN_STWARD, DN_STDONG, DN_EDCITY, DN_EDWARD, DN_EDDONG ' +
                           '              , CASE WHEN ( LEFT(DN_DEFAULT, 1) <> ''D'' ) THEN DN_DEFAULT ' +
                    Format('                     WHEN ( DN_DEFAULT IN ( SELECT TYPE_NO FROM CDMS_DIST_TYPE_M WHERE HD_NO = ''%s'' AND BR_NO = ''00000'') ) THEN DN_DEFAULT ELSE '' '' END DN_DEFAULT', [GT_SEL_BRNO.HdNo]) +
                           '              , CASE WHEN ( LEFT(DN_TYPE1, 1) <> ''D'' ) THEN DN_TYPE1 ' +
                    Format('                     WHEN ( DN_TYPE1 IN ( SELECT TYPE_NO FROM CDMS_DIST_TYPE_M WHERE HD_NO = ''%s'' AND BR_NO = ''00000'') ) THEN DN_TYPE1 ELSE '' '' END DN_TYPE1', [GT_SEL_BRNO.HdNo]) +
                           '              , CASE WHEN ( LEFT(DN_TYPE2, 1) <> ''D'' ) THEN DN_TYPE2 ' +
                    Format('                     WHEN ( DN_TYPE2 IN ( SELECT TYPE_NO FROM CDMS_DIST_TYPE_M WHERE HD_NO = ''%s'' AND BR_NO = ''00000'') ) THEN DN_TYPE2 ELSE '' '' END DN_TYPE2', [GT_SEL_BRNO.HdNo]) +
                           '              , CASE WHEN ( LEFT(DN_TYPE3, 1) <> ''D'' ) THEN DN_TYPE3 ' +
                    Format('                     WHEN ( DN_TYPE3 IN ( SELECT TYPE_NO FROM CDMS_DIST_TYPE_M WHERE HD_NO = ''%s'' AND BR_NO = ''00000'') ) THEN DN_TYPE3 ELSE '' '' END DN_TYPE3', [GT_SEL_BRNO.HdNo]) +
                           '              , CASE WHEN ( LEFT(DN_TYPE4, 1) <> ''D'' ) THEN DN_TYPE4 ' +
                    Format('                     WHEN ( DN_TYPE4 IN ( SELECT TYPE_NO FROM CDMS_DIST_TYPE_M WHERE HD_NO = ''%s'' AND BR_NO = ''00000'') ) THEN DN_TYPE4 ELSE '' '' END DN_TYPE4', [GT_SEL_BRNO.HdNo]) +
                           '           FROM CDMS_DIST_NEW ' +
                    Format('          WHERE BR_NO = ''%s'') A ', [vBrNo]) +
                           ' WHERE DN_DEFAULT <> '''' OR DN_TYPE1 <> '''' OR DN_TYPE2 <> '''' OR DN_TYPE3 <> '''' OR DN_TYPE4 <> '''' ';
              ExecSql;
            end;

            //------------------------- 피크타임 ----------------------------
            if chkList2.Checked then
            begin
              dmCharge.proc_mysql_init('update');
              Close;
              SQL.Text := Format('DELETE FROM CDMS_DIST_PEAK WHERE BR_NO = ''%s'' ', [sBrNo]);
              ExecSql;

              dmCharge.proc_mysql_init('update');
              Close;
              SQL.Text :=  ' INSERT INTO CDMS_DIST_PEAK (BR_NO, DP_USE_YN, DP_SATURDAY_YN, DP_HOLIDAY_YN ' +
                                 ' , DP_1_USE_YN, DP_1_SNEXTDAY, DP_1_STIME, DP_1_ENEXTDAY, DP_1_ETIME ' +
                                 ' , DP_2_USE_YN, DP_2_SNEXTDAY, DP_2_STIME, DP_2_ENEXTDAY, DP_2_ETIME ' +
                                 ' , DP_3_USE_YN, DP_3_SNEXTDAY, DP_3_STIME, DP_3_ENEXTDAY, DP_3_ETIME ' +
                                 ' , DP_4_USE_YN, DP_4_SNEXTDAY, DP_4_STIME, DP_4_ENEXTDAY, DP_4_ETIME ' +
                                 ' , DP_1_ADD_YN, DP_2_ADD_YN, DP_3_ADD_YN, DP_4_ADD_YN ' +
                                 ' , IN_ID, IN_DATE ) ' +
                    Format(' SELECT ''%s'', DP_USE_YN, DP_SATURDAY_YN, DP_HOLIDAY_YN', [sBrNo]) +
                                 ' , DP_1_USE_YN, DP_1_SNEXTDAY, DP_1_STIME, DP_1_ENEXTDAY, DP_1_ETIME ' +
                                 ' , DP_2_USE_YN, DP_2_SNEXTDAY, DP_2_STIME, DP_2_ENEXTDAY, DP_2_ETIME ' +
                                 ' , DP_3_USE_YN, DP_3_SNEXTDAY, DP_3_STIME, DP_3_ENEXTDAY, DP_3_ETIME ' +
                                 ' , DP_4_USE_YN, DP_4_SNEXTDAY, DP_4_STIME, DP_4_ENEXTDAY, DP_4_ETIME ' +
                                 ' , DP_1_ADD_YN, DP_2_ADD_YN, DP_3_ADD_YN, DP_4_ADD_YN ' +
                    Format('       , ''%s'', now()', [GT_USERIF.ID]) +
                           '   FROM CDMS_DIST_PEAK ' +
                    Format('  WHERE BR_NO = ''%s'' ', [vBrNo]);
              ExecSql;
            end;

            //------------------------- 경계요금 ----------------------------
            if chkList3.Checked then
            begin
              sHdNo := frm_Main.func_search_hdNo(sBrNo);

              dmCharge.proc_mysql_init('update');
              Close;
              SQL.Text := Format('DELETE FROM CDMS_POLYGON WHERE HD_NO = ''%s'' AND BR_NO = ''%s'' ', [sHdNo, sBrNo]);
              ExecSql;

              dmCharge.proc_mysql_init('update');
              Close;
              SQL.Text :=  ' INSERT INTO CDMS_POLYGON (HD_NO, BR_NO, PG_ADDR, PG_NAME, PG_STVALUE, PG_EDVALUE, PG_SAMEAREA_YN, PG_BIGO ' +
                           '      , PG_POINT, PG_STAT, IN_ID, IN_DATE ) ' +
                    Format(' SELECT ''%s'', ''%s'', PG_ADDR, PG_NAME, PG_STVALUE, PG_EDVALUE, PG_SAMEAREA_YN, PG_BIGO', [sHdNo, sBrNo]) +
                    Format('      , PG_POINT, PG_STAT, ''%s'', now()', [GT_USERIF.ID]) +
                           '   FROM CDMS_POLYGON ' +
                    Format('  WHERE BR_NO = ''%s'' ', [vBrNo]);
              ExecSql;
            end;
          end;
        end;
      end;
    finally
  		if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.Commit else
   		if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.Commit;
    end;
    GMessagebox('저장되었습니다.', CDMSI);
  except on E: Exception do
    begin
   		if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.Rollback else
   		if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.Rollback;
      GMessagebox(Format('데이터 저장 중 오류가 발생했습니다.'#13#10'%s', [E.Message]), CDMSE);
    end;
  end;
end;

end.


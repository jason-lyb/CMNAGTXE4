unit xe_SET01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, Grids, BaseGrid,
  AdvGrid, AdvCGrid, ExtCtrls, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxControls, cxContainer, cxEdit, cxLabel, cxListBox,
  Gauges, cxLookAndFeels, AdvObj, cxGroupBox, AdvProgressBar, dxSkinsCore,
  AdvUtil, dxSkinOffice2010Silver, cxCustomListBox, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxRadioGroup, cxCurrencyEdit, cxGridBandedTableView,
  dxScrollbarAnnotations;

type
  TFrm_SET01 = class(TForm)
    Panel2: TPanel;
    cxLabel46: TcxLabel;
    cbdistTypeName: TcxComboBox;
    cxLabel48: TcxLabel;
    ed_distType_NewNm: TcxTextEdit;
    btnSaveType: TcxButton;
    Panel1: TPanel;
		btnRemoveAll: TcxButton;
		btnSave: TcxButton;
    OpenDialog1: TOpenDialog;
    cxLabel123: TcxLabel;
    lblTypeNo: TcxLabel;
    ed_charge_NewName: TcxTextEdit;
    btnSaveAsType: TcxButton;
    btnSaveAsClose: TcxButton;
    btnTypeDelete: TcxButton;
    PnlMain: TPanel;
    pnlTitle: TPanel;
    cxButton1: TcxButton;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    grpReName: TcxGroupBox;
    cxLblActive: TLabel;
    grdList: TcxGrid;
    btnSavaAs: TcxButton;
    Shape45: TShape;
    rbHd: TcxRadioButton;
    rbBr: TcxRadioButton;
    lblSosokName: TcxLabel;
    cxLabel1: TcxLabel;
    ed_charge_Name: TcxTextEdit;
    btnAddRow: TcxButton;
    btnDelRow: TcxButton;
    grdListLevel1: TcxGridLevel;
    grdVList: TcxGridBandedTableView;
    grdVListColumn1: TcxGridBandedColumn;
    grdVListColumn2: TcxGridBandedColumn;
    grdVListColumn3: TcxGridBandedColumn;
    grdVListColumn4: TcxGridBandedColumn;
    cxLabel2: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnSaveTypeClick(Sender: TObject);
    procedure btnTypeDeleteClick(Sender: TObject);
    procedure btnRemoveAllClick(Sender: TObject);
    procedure btnSavaAsClick(Sender: TObject);
    procedure btnSaveAsCloseClick(Sender: TObject);
    procedure btnSaveAsTypeClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grpReNameMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure rbHdClick(Sender: TObject);
    procedure ed_distType_NewNmKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbdistTypeNamePropertiesChange(Sender: TObject);
    procedure btnDelRowClick(Sender: TObject);
    procedure btnAddRowClick(Sender: TObject);
  private
    { Private declarations }
    function fSearchNo: string;
    procedure pDisplay_DistType;
    procedure pSearchList;
    procedure pSelect_DistTypeM;
  public
    { Public declarations }
    FHdNo, FHdNm, FBrNo, FBrNm : String;
    FTypeNo : TStringList;
    procedure proc_init;
  end;

var
  Frm_SET01: TFrm_SET01;

implementation

{$R *.dfm}

uses xe_SET, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_charge, xe_Msg;

procedure TFrm_SET01.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_SET01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FTypeNo);

  Action := caFree;
end;

procedure TFrm_SET01.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_SET01.FormDestroy(Sender: TObject);
begin
  Frm_SET01 := Nil;
end;

procedure TFrm_SET01.FormShow(Sender: TObject);
begin
  fSetFont(Frm_SET01, GS_FONTNAME);
  proc_init;
end;

procedure TFrm_SET01.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SET01.proc_init;
Var i : Integer;
begin
  try
    FTypeNo := TStringList.Create;
    FTypeNo.Clear;

    rbBr.Checked := True;
    lblSosokName.Caption := FBrNm;
    ed_distType_NewNm.Text := '';

    for i := 0 to grdVList.ColumnCount - 1 do
    begin
      case i of
        0 : grdVList.Columns[i].DataBinding.ValueType := 'Integer';
        1, 2, 3 :
          begin
            grdVList.Columns[i].DataBinding.ValueType := 'Currency';
          end;
      end;
    end;
    grdVList.DataController.SetRecordCount(0);

    pSelect_DistTypeM;
  except on E: Exception do
    begin
      GMessagebox(Format('������ �ʱ�ȭ �� �����߻�[����: %s]', [E.Message]), CDMSE);
    end;
  end;
end;

procedure TFrm_SET01.pDisplay_DistType;
Var iRow : Integer;
begin
  try
    grdVList.BeginUpdate;
    try
      while grdVList.DataController.RecordCount < 20 do
      begin
        iRow := grdVList.DataController.AppendRecord;
        grdVList.DataController.Values[iRow, 0] := iRow+1;
        grdVList.DataController.Values[iRow, 1] := 0.0;
        grdVList.DataController.Values[iRow, 2] := 0.0;
        grdVList.DataController.Values[iRow, 3] := 0;
      end;
    finally
      grdVList.EndUpdate;
    end;
  except
  end;
end;

procedure TFrm_SET01.pSelect_DistTypeM;
Var sBrNo : String;
begin
  try
    cbdistTypeName.Properties.Items.Clear;
    FTypeNo.Clear;
    with dmCharge.FDQuery1 do
    begin
      dmCharge.proc_mysql_init;
      Close;
      if rbHd.Checked then sBrNo := '00000'
                      else sBrNo := FBrNo;
      SQL.Text := Format('SELECT TYPE_NO, TYPE_NAME FROM CDMS_DIST_TYPE_M WHERE HD_NO = ''%s'' AND BR_NO = ''%s'' ORDER BY TYPE_NAME', [FHdNo, sBrNo]);
      Open;

      while not Eof do
      begin
        cbdistTypeName.Properties.Items.Add(Fields[1].AsString);
        FTypeNo.Add(Fields[0].AsString);
        Next;
      end;
    end;
    cbdistTypeName.ItemIndex := 0;
  except on E: Exception do
    begin
      GMessagebox(Format('Ÿ�� ��ȸ �� �����߻�[����: %s]', [E.Message]), CDMSE);
    end;
  end;
end;

procedure TFrm_SET01.rbHdClick(Sender: TObject);
begin
  pSelect_DistTypeM;
  if rbHd.Checked then lblSosokName.Caption := FHdNm else
  if rbBr.Checked then lblSosokName.Caption := FBrNm;
end;

procedure TFrm_SET01.btnSaveClick(Sender: TObject);
var
  i, j, iGerValue : Integer;
  iK0, iK1, ioldk0 : Double;
	sCode, sQuery, sBrNo : String;
begin
  try
    if cbDistTypeName.Text = '' then
    begin
      GMessagebox('���Ÿ�Ը��� ���� �����ϼ���', cdmsE);
      exit;
    end;

    sCode := FTypeNo.Strings[cbDistTypeName.itemIndex];
    for i := 0 to grdVList.DataController.RecordCount - 1 do
    begin
      if grdVList.DataController.Values[i, 1] = 0.0 then Continue;

      iK0 := StrToFloatDef(StringReplace(Trim(grdVList.DataController.Values[i, 1]), ',', '', [rfReplaceAll]), 0);
      iK1 := StrToFloatDef(StringReplace(Trim(grdVList.DataController.Values[i, 2]), ',', '', [rfReplaceAll]), 0);
      if (iK0 >= iK1 ) then
      begin
        GMessagebox(Format('%d��°�� ���۰Ÿ�[%f]�� �����Ÿ�[%f]���� ���ų� Ů�ϴ�',[i+1, iK0, iK1]), CDMSE);
        Exit;
      end;

      if (i > 0) then
      begin
        ioldk0 := StrToFloatDef(StringReplace(Trim(grdVList.DataController.Values[i-1, 2]), ',', '', [rfReplaceAll]), 0);
        if iOldK0 >= iK0 then
        begin
          GMessagebox(Format('%d��°�� ���۰Ÿ�[%f]�� �����ۺ��� ���ų� �۽��ϴ�',[i+1, iK0]), CDMSE);
          Exit;
        end;
      end;

    end;

    with dmCharge.FDQuery1 do
    begin
  		if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.StartTransaction else
	 		if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.StartTransaction;
      try
        dmCharge.proc_mysql_init('update');
        Close;
        if rbHd.Checked then sBrNo := '00000'
                        else sBrNo := FBrNo;

        SQL.Text := Format('DELETE FROM CDMS_DIST_TYPE_D WHERE HD_NO = ''%s'' AND BR_NO = ''%s'' AND TYPE_NO = ''%s''', [FHdNo, sBrNo, sCode]);
        ExecSQL;

        j := 1;
        for i := 0 to grdVList.DataController.RecordCount - 1 do
        begin
          if grdVList.DataController.Values[i, 1] = 0.0 then Continue;

          iK0 := StrToFloatDef(StringReplace(Trim(grdVList.DataController.Values[i, 1]), ',', '', [rfReplaceAll]), 0);
          iK1 := StrToFloatDef(StringReplace(Trim(grdVList.DataController.Values[i, 2]), ',', '', [rfReplaceAll]), 0);
          iGerValue := StrToIntDef(StringReplace(Trim(grdVList.DataController.Values[i, 3]), ',', '', [rfReplaceAll]), 0);

          dmCharge.proc_mysql_init('update');
          Close;
          SQL.Text := 'INSERT INTO CDMS_DIST_TYPE_D(HD_NO, BR_NO, TYPE_NO, DT_STKM, DT_EDKM, DT_VALUE, IN_ID, IN_DATE) ' +
             Format('  VALUES (''%s'',''%s'',''%s'', %f, %f, %d, ''%s'', now() )',
                              [FHdNo, sBrNo, sCode, iK0, iK1, iGerValue, GT_USERIF.ID]);
          ExecSQL;
          inc(j);
        end;
    		if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.Commit else
	   		if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.Commit;
      except
    		if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.Rollback else
	   		if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.Rollback;
        GMessagebox('�����Ͽ����ϴ�.', cdmsE);
        exit;
      end;
      GMessagebox(cbDistTypeName.Text + '�� ����Ǿ����ϴ�.', CDMSI);
    end;
  except
  end;
end;

procedure TFrm_SET01.btnSaveTypeClick(Sender: TObject);
var
	sSno, sBrNo, iSn, sQuery: string;
begin
  if ed_DistType_NewNm.Text = '' then
  begin
    GMessagebox('[�ű�Ÿ�Ը�]�� �Է��� �ּ���.', CDMSE);
    ed_DistType_NewNm.SetFocus;
    Exit;
  end;

  with dmCharge.FDQuery1 do
  begin
    dmCharge.proc_mysql_init;
    Close;
    if rbHd.Checked then sBrNo := '00000'
                    else sBrNo := FBrNo;
    SQL.Text := Format('SELECT TYPE_NO, TYPE_NAME FROM CDMS_DIST_TYPE_M WHERE HD_NO = ''%s'' AND BR_NO = ''%s'' AND TYPE_NAME = ''%s'' ORDER BY TYPE_NAME', [FHdNo, sBrNo, ed_DistType_NewNm.Text]);
    Open;
    if not IsEmpty then
    begin
      GMessagebox('���� �̸��� �����մϴ�.'#13#10'�ٸ��̸����� �����ϼ���', cdmsE);
      exit;
    end;
    sSno := fSearchNo;
    try
      dmCharge.proc_mysql_init('update');
      Close;
      SQL.Text := 'INSERT INTO CDMS_DIST_TYPE_M (HD_NO, BR_NO, TYPE_NO, TYPE_NAME, IN_ID, IN_DATE) '
                + Format('VALUES (''%s'', ''%s'', ''%s'', ''%s'', ''%s'', now())', [FHdNo, sBrNo, sSno, Trim(ed_DistType_NewNm.Text), GT_USERIF.ID]);
      ExecSQL;
    except
      GMessagebox('�����Ͽ����ϴ�.', cdmsE);
      exit;
    end;
    pSelect_DistTypeM;
    cbDistTypeName.ItemIndex := cbDistTypeName.Properties.Items.Count - 1;
    Frm_SET.pSelect_DistTypeM;
  end;
end;

function TFrm_SET01.fSearchNo : string;
var iMax : string;
begin
	Result := '';
	try
    // �����ڵ�� Ÿ�Ա��� ó��, ����/���� ���� ���� �����ɼ� ����
    with dmCharge.FDQuery1 do
    begin
      dmCharge.proc_mysql_init;
      Close;
      SQL.Text := Format('SELECT MAX(SUBSTR(TYPE_NO,3,3)) FROM CDMS_DIST_TYPE_M WHERE HD_NO = ''%s''  ', [FHdNo]);
      Open;
      if IsEmpty then
        iMax := '1'
      else
        iMax := IntToStr(StrToIntDef(Fields[0].AsString, 0) + 1);
      result := 'DT' + LPAD(imax, '0', 3);
    end;
  except on E: Exception do
    GMessagebox(Format('������ ó�� �� ������ �߻��߽��ϴ�.'#13#10'%s', [E.Message]), CDMSE);
  end;
end;

procedure TFrm_SET01.pSearchList;
var sBrNo, sCode : string;
    iRow : Integer;
begin
  grdVList.DataController.SetRecordCount(0);
  if cbDistTypeName.ItemIndex < 0 then Exit;
	try
    sCode := FTypeNo.Strings[cbDistTypeName.itemIndex];
    with dmCharge.FDQuery1 do
    begin
      dmCharge.proc_mysql_init;
      Close;
      if rbHd.Checked then sBrNo := '00000'
                      else sBrNo := FBrNo;
      SQL.Text := Format('SELECT DT_STKM, DT_EDKM, DT_VALUE FROM CDMS_DIST_TYPE_D WHERE HD_NO = ''%s'' AND BR_NO = ''%s'' AND TYPE_NO = ''%s'' ORDER BY DT_STKM ', [FHdNo, sBrNo, sCode]);
      Open;
      if not IsEmpty then
      begin
        grdVList.BeginUpdate;
        try
          while not eof do
          begin
            iRow := grdVList.DataController.AppendRecord;
            grdVList.DataController.Values[iRow, 0] := iRow+1;
            grdVList.DataController.Values[iRow, 1] := Fields[0].AsString;
            grdVList.DataController.Values[iRow, 2] := Fields[1].AsString;
            grdVList.DataController.Values[iRow, 3] := Fields[2].AsString;
            Next;
          end;
        finally
          grdVList.EndUpdate;
        end;
      end;
    end;
    pDisplay_DistType;
  except on E: Exception do
    GMessagebox(Format('������ ��ȸ �� ������ �߻��߽��ϴ�.'#13#10'%s', [E.Message]), CDMSE);
  end;
end;

procedure TFrm_SET01.btnTypeDeleteClick(Sender: TObject);
var sQuery, sCode, sBrNo : string;
begin
  try
    if GMessagebox(cbDistTypeName.Text + 'Ÿ���� ���� �Ͻðڽ��ϱ�?'#13#10'Ÿ���� ����ִ� ������� ��� �����˴ϴ�.', cdmsq) = idok then
    begin
      sCode := FTypeNo.Strings[cbDistTypeName.itemIndex];
      with dmCharge.FDQuery1 do
      begin
    		if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.StartTransaction else
    		if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.StartTransaction;
        try
          dmCharge.proc_mysql_init('update');
          Close;
         if rbHd.Checked then sBrNo := '00000'
                         else sBrNo := FBrNo;
          SQL.Text := Format('DELETE FROM CDMS_DIST_TYPE_M WHERE HD_NO = ''%s'' AND BR_NO = ''%s'' AND TYPE_NO = ''%s'' ', [FHdNo, sBrNo, sCode]);
          ExecSQL;

          Close;
          SQL.Text := Format('DELETE FROM CDMS_DIST_TYPE_D WHERE HD_NO = ''%s'' AND BR_NO = ''%s'' AND TYPE_NO = ''%s'' ', [FHdNo, sBrNo, sCode]);
          ExecSQL;

      		if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.Commit else
      		if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.Commit;
        except
      		if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.Rollback else
      		if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.Rollback;
          GMessagebox('�����Ͽ����ϴ�.', cdmsE);
          exit;
        end;
        GMessagebox(cbDistTypeName.Text + '�� �����Ǿ����ϴ�.', 'cdmsE');
        pSelect_DistTypeM;
      end;
      Frm_SET.pSelect_DistTypeM;
    end;
  except
  end;
end;

procedure TFrm_SET01.cbdistTypeNamePropertiesChange(Sender: TObject);
begin
  pSearchList;
end;

procedure TFrm_SET01.btnDelRowClick(Sender: TObject);
Var iRow : Integer;
begin
  try
    iRow := grdVList.DataController.FocusedRecordIndex;
    if iRow < 0 then Exit;

    grdVList.DataController.DeleteRecord(iRow);
    pDisplay_DistType;
    gfSetIndexNo(grdVList, True);
  except
  end;
end;

procedure TFrm_SET01.btnRemoveAllClick(Sender: TObject);
begin
  if GMessagebox('��ü���� �����Ͻðڽ��ϱ�?', cdmsq) = idok then
  begin
    grdVList.DataController.SetRecordCount(0);
    pDisplay_DistType;
  end;
end;

procedure TFrm_SET01.btnSavaAsClick(Sender: TObject);
begin
  ed_charge_Name.Text := cbdistTypeName.Text;
  lblTypeNo.Hint := FTypeNo[cbdistTypeName.ItemIndex];
  ed_charge_NewName.Text := '';
  grpReName.Left := (Width - grpReName.Width) div 2;
  grpReName.top := (Height - grpReName.Height) div 2;
  grpReName.BringToFront;
  grpReName.Visible := True;

  ed_charge_NewName.SetFocus;
end;

procedure TFrm_SET01.grpReNameMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(grpReName.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SET01.ed_distType_NewNmKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then btnSaveType.Click;  
end;

procedure TFrm_SET01.btnSaveAsCloseClick(Sender: TObject);
begin
  grpReName.Visible := False;
end;

procedure TFrm_SET01.btnSaveAsTypeClick(Sender: TObject);
var
  i, iK0, iK1, ioldk0, iGerValue, j: Integer;
	sSno, iSn, sQuery, sBrNo : string;
begin
  if ed_charge_NewName.Text = '' then
  begin
    GMessagebox('[Ÿ�Ը�]�� �Է��� �ּ���.', CDMSE);
    ed_charge_NewName.SetFocus;
    Exit;
  end;

  try
    with dmCharge.FDQuery1 do
    begin
      dmCharge.proc_mysql_init;
      Close;
      if rbHd.Checked then sBrNo := '00000'
                      else sBrNo := FBrNo;

      SQL.Text := Format('SELECT TYPE_NO, TYPE_NAME FROM CDMS_DIST_TYPE_M WHERE HD_NO = ''%s'' AND BR_NO = ''%s'' AND TYPE_NAME = ''%s'' ORDER BY TYPE_NAME', [FHdNo, sBrNo, ed_charge_NewName.Text]);
      Open;
      if not IsEmpty then
      begin
        GMessagebox('���� �̸��� �����մϴ�.'#13#10'�ٸ��̸����� �����ϼ���', cdmsE);
        exit;
      end;

      try
        dmCharge.proc_mysql_init('update');
        Close;
        SQL.Text := Format('UPDATE CDMS_DIST_TYPE_M SET TYPE_NAME = ''%s'', UP_ID = ''%s'', UP_DATE = now() WHERE HD_NO = ''%s'' AND BR_NO = ''%s'' AND TYPE_NO = ''%s''',
                            [ed_charge_NewName.Text, GT_USERIF.ID, FHdNo, sBrNo, lblTypeNo.Hint]);
        ExecSQL;
      except
        GMessagebox('�����Ͽ����ϴ�.', cdmsE);
        exit;
      end;
    end;
    grpReName.Visible := False;
    GMessagebox('�����Ǿ����ϴ�.', cdmsi);
    pSelect_DistTypeM;
    Frm_SET.pSelect_DistTypeM;
  except
  end;
end;

procedure TFrm_SET01.btnAddRowClick(Sender: TObject);
Var iRow : Integer;
begin
  iRow := grdVList.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;

  try
    grdVList.DataController.InsertRecord(iRow);
    grdVList.DataController.Values[iRow, 0] := iRow+1;
    grdVList.DataController.Values[iRow, 1] := 0.0;
    grdVList.DataController.Values[iRow, 2] := 0.0;
    grdVList.DataController.Values[iRow, 3] := 0;

    pDisplay_DistType;
    gfSetIndexNo(grdVList, True);
  except
  end;
end;

procedure TFrm_SET01.btnCloseClick(Sender: TObject);
begin
	Close;
end;

end.


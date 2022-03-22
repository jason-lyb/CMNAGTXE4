unit xe_SET06;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxLabel, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxTextEdit, StdCtrls, cxButtons, cxContainer, GradientLabel, ExtCtrls,
  cxGroupBox, cxLookAndFeels, cxNavigator, dxSkinsCore, dxSkinscxPCPainter,
  cxProgressBar, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  TFrm_SET06 = class(TForm)
    PnlMain: TPanel;
    Panel1: TPanel;
    cxGroupBox22: TcxGroupBox;
    cxLabel14: TcxLabel;
    cxButton3: TcxButton;
    edt1: TcxTextEdit;
    ctxGrid: TcxGrid;
    sg_MapLocal: TcxGridDBTableView;
    sg_MapLocalColumn1: TcxGridDBColumn;
		sg_MapLocalColumn2: TcxGridDBColumn;
    sg_MapLocalColumn3: TcxGridDBColumn;
    sg_MapLocalColumn4: TcxGridDBColumn;
    sg_MapLocalColumn5: TcxGridDBColumn;
    sg_MapLocalColumn9: TcxGridDBColumn;
    sg_MapLocalColumn6: TcxGridDBColumn;
    sg_MapLocalColumn7: TcxGridDBColumn;
    cxWkConnect: TcxGridLevel;
    cxButton2: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    edt2: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    Edit3: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    Edit5: TcxTextEdit;
    Edit4: TcxTextEdit;
    Edit6: TcxTextEdit;
    btn1: TcxButton;
    btn4: TcxButton;
    lst1: TListBox;
    btn2: TcxButton;
    btn3: TcxButton;
    btn5: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxButton6: TcxButton;
    cxTextEdit2: TcxTextEdit;
    cxGrid1: TcxGrid;
    sg_MapLocal_MySQL: TcxGridDBTableView;
    cxgrdbclmn1: TcxGridDBColumn;
    cxgrdbclmn2: TcxGridDBColumn;
    cxgrdbclmn3: TcxGridDBColumn;
    cxgrdbclmn4: TcxGridDBColumn;
    cxgrdbclmn5: TcxGridDBColumn;
    cxgrdbclmn6: TcxGridDBColumn;
    cxgrdbclmn7: TcxGridDBColumn;
    cxgrdbclmn8: TcxGridDBColumn;
    cxgrdbclmn9: TcxGridDBColumn;
    cxgrdbclmn10: TcxGridDBColumn;
    cxgrdbclmn11: TcxGridDBColumn;
    cxgrdbclmn12: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    cxTextEdit7: TcxTextEdit;
    cxTextEdit8: TcxTextEdit;
    cxTextEdit9: TcxTextEdit;
    cxTextEdit10: TcxTextEdit;
    cxButton12: TcxButton;
    lst2: TListBox;
    pnlTitle: TPanel;
    BtnClose: TcxButton;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    cxLabel1: TcxLabel;
    Shape7: TShape;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel9: TcxLabel;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    cxLabel10: TcxLabel;
    Shape11: TShape;
    cxLabel11: TcxLabel;
    Shape12: TShape;
    cxLblActive: TLabel;
    cxProgressBar1: TcxProgressBar;
    procedure cxButton3Click(Sender: TObject);
		procedure sg_MapLocalCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton5Click(Sender: TObject);
    procedure sg_MapLocal_MySQLCellClick(Sender: TcxCustomGridTableView;
			ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
			AShift: TShiftState; var AHandled: Boolean);
		procedure cxButton9Click(Sender: TObject);
		procedure btn4Click(Sender: TObject);
		procedure btn1Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
		procedure cxButton10Click(Sender: TObject);
    procedure cxTextEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure cxButton12Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sg_MapLocalMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edt1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxTextEdit2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sg_MapLocal_MySQLMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure sg_MapLocalKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sg_MapLocalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sg_MapLocal_MySQLKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Edit3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
	private
		{ Private declarations }
	public
		{ Public declarations }
		gsPath: string;
		sl_Local: TStringList;
		chk_Local: TStringList;
		procedure proc_init;
		procedure proc_search(sKey: string; sGubun : integer);
		procedure proc_search_MYsql(AKey: string);
		procedure proc_search_LOCAL_DAT(APath, AKey: string);
	end;

var
  Frm_SET06: TFrm_SET06;

implementation

{$R *.dfm}

uses xe_charge, Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Msg,
  xe_SETA1;


procedure TFrm_SET06.cxButton3Click(Sender: TObject);
begin
	proc_search(edt1.Text, 1);
end;

procedure TFrm_SET06.proc_init;
var
  i: Integer;
begin
	edt1.Text := '';
	edt2.Text := '';
	Edit1.Text := '';
	Edit2.Text := '';
	Edit3.Text := '';
	Edit5.Text := '';
	Edit6.Text := '';
	cxTextEdit1.Text := '';

	cxTextEdit2.Text := '';
	cxTextEdit3.Text := '';
	cxTextEdit4.Text := '';
	cxTextEdit5.Text := '';
	cxTextEdit6.Text := '';
	cxTextEdit7.Text := '';
	cxTextEdit10.Text := '';
	for i := 0 to sg_MapLocal.ColumnCount - 1 do
		sg_MapLocal.Columns[i].DataBinding.ValueType := 'String';
	for i := 0 to sg_MapLocal_MySQL.ColumnCount - 1 do
		sg_MapLocal_MySQL.Columns[i].DataBinding.ValueType := 'String';

	Case GS_LOCALDATA_USE of
		0 :
		begin
			edt1.Enabled := True;
			cxButton3.Enabled := True;
			btn1.Enabled := True;
			cxButton5.Enabled := True;
			edt2.Enabled := True;
			Edit1.Enabled := True;
			Edit2.Enabled := True;
			Edit3.Enabled := True;
			cxTextEdit1.Enabled := True;
			Edit6.Enabled := True;
			cxButton2.Enabled := True;
			cxButton4.Enabled := True;

			cxTextEdit2.Enabled := True;
			cxButton6.Enabled := True;
			cxButton12.Enabled := True;
			cxTextEdit3.Enabled := True;
			cxTextEdit4.Enabled := True;
			cxTextEdit5.Enabled := True;
			cxTextEdit6.Enabled := True;
			cxTextEdit7.Enabled := True;
			cxTextEdit10.Enabled := True;
			cxButton9.Enabled := True;
			cxButton10.Enabled := True;

			btn4.Enabled := True;
			btn2.Enabled := True;
			btn3.Enabled := True;
			btn5.Enabled := True;
			
			ctxGrid.Enabled := True;
			cxGrid1.Enabled := True;
		end;
		1 :
		begin
			edt1.Enabled := True;
			cxButton3.Enabled := True;
			btn1.Enabled := True;
			cxButton5.Enabled := True;
			edt2.Enabled := True;
			Edit1.Enabled := True;
			Edit2.Enabled := True;
			Edit3.Enabled := True;
			cxTextEdit1.Enabled := True;
			Edit6.Enabled := True;
			cxButton2.Enabled := True;
			cxButton4.Enabled := True;

			cxTextEdit2.Enabled := False;
			cxButton6.Enabled := False;
			cxButton12.Enabled := False;
			cxTextEdit3.Enabled := False;
			cxTextEdit4.Enabled := False;
			cxTextEdit5.Enabled := False;
			cxTextEdit6.Enabled := False;
			cxTextEdit7.Enabled := False;
			cxTextEdit10.Enabled := False;
			cxButton9.Enabled := False;
			cxButton10.Enabled := False;

			btn4.Enabled := False;
			btn2.Enabled := False;
			btn3.Enabled := False;
			btn5.Enabled := False;
			ctxGrid.Enabled := True;
			cxGrid1.Enabled := False;
		end;
		2 :
		begin
			edt1.Enabled := False;
			cxButton3.Enabled := False;
			btn1.Enabled := False;
			cxButton5.Enabled := False;
			edt2.Enabled := False;
			Edit1.Enabled := False;
			Edit2.Enabled := False;
			Edit3.Enabled := False;
			cxTextEdit1.Enabled := False;
			Edit6.Enabled := False;
			cxButton2.Enabled := False;
			cxButton4.Enabled := False;

			cxTextEdit2.Enabled := True;
			cxButton6.Enabled := True;
			cxButton12.Enabled := True;
			cxTextEdit3.Enabled := True;
			cxTextEdit4.Enabled := True;
			cxTextEdit5.Enabled := True;
			cxTextEdit6.Enabled := True;
			cxTextEdit7.Enabled := True;
			cxTextEdit10.Enabled := True;
			cxButton9.Enabled := True;
			cxButton10.Enabled := True;

			btn4.Enabled := False;
			btn2.Enabled := False;
			btn3.Enabled := False;
			btn5.Enabled := False;
			ctxGrid.Enabled := False;
			cxGrid1.Enabled := True;
		end;
	end;
	if CHARGE_GUBUN = 'P' then
	begin
		edt1.Enabled := True;
		cxButton3.Enabled := True;
		btn1.Enabled := True;
		cxButton5.Enabled := True;
		edt2.Enabled := True;
		Edit1.Enabled := True;
		Edit2.Enabled := True;
		Edit3.Enabled := True;
		cxTextEdit1.Enabled := True;
		Edit6.Enabled := True;
		cxButton2.Enabled := True;
		cxButton4.Enabled := True;

		cxTextEdit2.Enabled := False;
		cxButton6.Enabled := False;
		cxButton12.Enabled := False;
		cxTextEdit3.Enabled := False;
		cxTextEdit4.Enabled := False;
		cxTextEdit5.Enabled := False;
		cxTextEdit6.Enabled := False;
		cxTextEdit7.Enabled := False;
		cxTextEdit10.Enabled := False;
		cxButton9.Enabled := False;
		cxButton10.Enabled := False;

		btn4.Enabled := False;
		btn2.Enabled := False;
		btn3.Enabled := False;
		btn5.Enabled := False;
		ctxGrid.Enabled := True;
		cxGrid1.Enabled := False;
	end;
{	if CHARGE_GUBUN = 'S' then
	begin
		proc_search('');
	end else
  begin
		sl_Local := TStringList.Create;
    sl_Local.Sort;
		gsPath := DBDIRECTORY + 'LOCAL_MAP_NEW.DAT';
		proc_search('');
	end;  }
end;

procedure TFrm_SET06.proc_search(sKey: string; sGubun : integer);
begin
	sl_Local := TStringList.Create;
	sl_Local.Sort;
	gsPath := DBDIRECTORY + 'LOCAL_MAP_NEW.DAT';
	try
		if sGubun = 0 then
		begin
			if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and ((GS_LOCALDATA_USE = 0) or (GS_LOCALDATA_USE = 2)) then        //요금서버 사용하고 '전체사용'이거나 'MySQL만 사용' 일때
			begin
				sg_MapLocal_MySQL.DataController.SetRecordCount(0);
				proc_search_MYsql(sKey);
			end;
			if (CHARGE_GUBUN = 'P') or (((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE <> 2)) then
			begin
				sg_MapLocal.DataController.SetRecordCount(0);
				proc_search_LOCAL_DAT(gsPath, sKey);
			end;
		end else
		if sGubun = 1 then
		begin
			if (CHARGE_GUBUN = 'P') or (((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE <> 2)) then
			begin
				sg_MapLocal.DataController.SetRecordCount(0);
				proc_search_LOCAL_DAT(gsPath, sKey);
			end;
		end else
		if sGubun = 2 then
		begin
			if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and ((GS_LOCALDATA_USE = 0) or (GS_LOCALDATA_USE = 2)) then        //요금서버 사용하고 '전체사용'이거나 'MySQL만 사용' 일때
			begin
				sg_MapLocal_MySQL.DataController.SetRecordCount(0);
				proc_search_MYsql(sKey);
			end;
		end;
	except
  end;
end;

procedure TFrm_SET06.sg_MapLocalCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iRow: Integer;
begin
	iRow := sg_MapLocal.DataController.FocusedRecordIndex;
	if (AShift = [ssCtrl]) then
	else
	begin
		lst1.Items.clear;
		lst1.Items.Add(IntToStr(iRow));
	end;
	edt2.Text := sg_MapLocal.DataController.Values[iRow, 1];
	edt2.Hint := sg_MapLocal.DataController.Values[iRow, 1];

	Edit1.Text := sg_MapLocal.DataController.Values[iRow, 2];
  Edit1.Hint := sg_MapLocal.DataController.Values[iRow, 2];

  Edit2.Text := sg_MapLocal.DataController.Values[iRow, 3];
	Edit2.Hint := sg_MapLocal.DataController.Values[iRow, 3];

	Edit3.Text := sg_MapLocal.DataController.Values[iRow, 4];
	Edit3.Hint := sg_MapLocal.DataController.Values[iRow, 4];

	cxTextEdit1.text := sg_MapLocal.DataController.Values[iRow, 5];
	cxTextEdit1.Hint := sg_MapLocal.DataController.Values[iRow, 5];

	Edit5.Text := sg_MapLocal.DataController.Values[iRow, 6];
	Edit6.Text := sg_MapLocal.DataController.Values[iRow, 7];

	Edit4.Hint := Trim(edt2.Text) + '|' + Trim(Edit1.Text) + '|' + Trim(Edit2.Text) + '|' + Trim(Edit3.Text) + '|' + Trim(cxTextEdit1.Text) + '|'
							+ Trim(Edit5.Text) + '|' + Trim(Edit6.Text) + '|';
end;

procedure TFrm_SET06.cxButton2Click(Sender: TObject);
var
  iRow, i : Integer;
  sSaveList: TStringList;
	sTemp1, sQuery : string;
  bOk : Boolean;
begin
	try
    bOk := False;
    for i := 0 to ComponentCount - 1 do
    begin
			if Components[i] is TcxTextEdit then
      begin
				if not func_EucKr_Check((Components[i] as TcxTextEdit), 0) then
        begin
          bOk := True;
          Break;
				end;
			end;
		end;
    if bOk then Exit;
	except
	end;

	iRow := 0;
	if sg_MapLocal.DataController.FocusedRecordIndex < 0 then exit;
	if lst1.Items.Count > 1 then
	begin
		ShowMessage('다중선택 시 수정이 불가능합니다.');
		exit;
	end;
	if (edt2.Text = '') or (Edit1.Text = '') or (Edit2.Text = '') then Exit;

	try
		if (CHARGE_GUBUN = 'P') or (((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE <> 2)) then
		begin
			sTemp1 := edt2.Text + '|' + Edit1.Text + '|' + Edit2.Text + '|' + Edit3.Text + '|' + cxTextEdit1.text + '|' + Edit5.Text + '|' + Edit6.Text;
			if FileExists(gsPath) then
			begin
				try
					if (Edit3.Hint = Edit3.Text) and (cxTextEdit1.Hint = cxTextEdit1.Text) then
					begin
						ShowMessage('수정된 내용이 없습니다.');
						Exit;
					end else
          if  (Edit3.Hint = Edit3.Text) and (cxTextEdit1.Hint <> cxTextEdit1.Text) then
					begin
						sSaveList := TStringList.Create;
						sSaveList.LoadFromFile(gsPath);
						if ( sSaveList.IndexOf(Edit4.Hint + '999') >= 0 ) Or ( sSaveList.IndexOf(Edit4.Hint + 'U') >= 0 ) then
						begin
							//1. 수정전 내용을 삭제하고 수정된 내용을 DAT파일에 넣는다
  						if ( sSaveList.IndexOf(Edit4.Hint + '999') >= 0 ) then sSaveList.Delete(sSaveList.IndexOf(Edit4.Hint + '999')) else
  						if ( sSaveList.IndexOf(Edit4.Hint + 'U'  ) >= 0 ) then sSaveList.Delete(sSaveList.IndexOf(Edit4.Hint + 'U'  ));
							sSaveList.Insert(iRow, sTemp1 + '|' + '999');
							sSaveList.SaveToFile(gsPath);

						 // GT_MAPLocal 로컬자료에서 삭제해준다.
							if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE  = 0) then
							begin
								//0-1. 수정전 내용이 메모리에 있는지 확인한다
								for i := 0 to GT_MAPLocal.slSSub.Count - 1 do
								begin
									if (GT_MAPLocal.slCity[i] = StringReplace(edt2.Text,  ' ', '', [rfReplaceAll])) and
										 (GT_MAPLocal.slWard[i] = StringReplace(Edit1.Text, ' ', '', [rfReplaceAll])) and
										 (GT_MAPLocal.slStre[i] = StringReplace(Edit2.Text, ' ', '', [rfReplaceAll])) and
										 (GT_MAPLocal.slSSub[i] = StringReplace(Edit3.Hint, ' ', '', [rfReplaceAll])) then
									begin
										iRow := i;
										Break;
									end;
								end;
								//0-2. 수정전 내용이 메모리에 있고 MySQL에 없으면 메모리에서 삭제한다
								if iRow >= 0 then
								begin
									sQuery := 'select * from CDMS_LOCAL_POI ' +
													 ' WHERE SI     = ''' + Trim(edt2.text) + ''' AND GU     = ''' + Trim(Edit1.text) + ''' AND DONG = ''' + Trim(Edit2.text) + ''' ' +
													 '   AND DNAME  = ''' + Trim(Edit3.Hint) + ''' ';//AND XPOINT = ''' + Trim(cxTextEdit8.text) + ''' AND YPOINT = ''' + Trim(cxTextEdit9.text) + ''' ';
									dmCharge.proc_mysql_init;
									dmCharge.FDQuery1.Close;
									dmCharge.FDQuery1.SQL.Text := sQuery;
									dmCharge.FDQuery1.OPEN;

									if dmCharge.FDQuery1.eof then   //수정전 자료가 MySQL에도 없을 경우 메모리에서 삭제
									begin
										GT_MAPLocal.slCity.Delete(iRow);
										GT_MAPLocal.slWard.Delete(iRow);
										GT_MAPLocal.slStre.Delete(iRow);
										GT_MAPLocal.slSSub.Delete(iRow);
										GT_MAPLocal.slSPOI.Delete(iRow);
										GT_MAPLocal.slMapX.Delete(iRow);
										GT_MAPLocal.slMapY.Delete(iRow);
									end;
								end;

								//0-3. 수정후 내용이 메모리에 있는지 확인한다
								for i := 0 to GT_MAPLocal.slSSub.Count - 1 do
								begin
									if (GT_MAPLocal.slCity[i] = StringReplace(edt2.Text,  ' ', '', [rfReplaceAll])) and
										 (GT_MAPLocal.slWard[i] = StringReplace(Edit1.Text, ' ', '', [rfReplaceAll])) and
										 (GT_MAPLocal.slStre[i] = StringReplace(Edit2.Text, ' ', '', [rfReplaceAll])) and
										 (GT_MAPLocal.slSSub[i] = StringReplace(Edit3.Text, ' ', '', [rfReplaceAll])) then
									begin
										iRow := i;
										Break;
									end;
								end;
								//0-4. 수정후 내용이 메모리에 없으면 메모리에 추가한다.
								if iRow < 0 then
								begin
									GT_MAPLocal.slCity.Add(edt2.Text);
									GT_MAPLocal.slWard.Add(Edit1.Text);
									GT_MAPLocal.slStre.Add(Edit2.Text);
									GT_MAPLocal.slSSub.Add(StringReplace(Edit3.Text, ' ', '', [rfReplaceAll]));
									GT_MAPLocal.slSPOI.Add(cxTextEdit1.text);
									GT_MAPLocal.slMapX.Add(Edit5.Text);
									GT_MAPLocal.slMapY.Add(Edit6.Text);
								end;
								if iRow >= 0 then
								begin
									sQuery := 'select * from CDMS_LOCAL_POI ' +
													 ' WHERE SI     = ''' + Trim(edt2.text) + ''' AND GU     = ''' + Trim(Edit1.text) + ''' AND DONG = ''' + Trim(Edit2.text) + ''' ' +
													 '   AND DNAME  = ''' + Trim(Edit3.Text) + ''' ';//AND XPOINT = ''' + Trim(cxTextEdit8.text) + ''' AND YPOINT = ''' + Trim(cxTextEdit9.text) + ''' ';
									dmCharge.proc_mysql_init;
									dmCharge.FDQuery1.Close;
									dmCharge.FDQuery1.SQL.Text := sQuery;
									dmCharge.FDQuery1.OPEN;

									if dmCharge.FDQuery1.eof then
									begin
										GT_MAPLocal.slCity.Add(edt2.Text);
										GT_MAPLocal.slWard.Add(Edit1.Text);
										GT_MAPLocal.slStre.Add(Edit2.Text);
										GT_MAPLocal.slSSub.Add(StringReplace(Edit3.Text, ' ', '', [rfReplaceAll]));
										GT_MAPLocal.slSPOI.Add(cxTextEdit1.text);
										GT_MAPLocal.slMapX.Add(Edit5.Text);
										GT_MAPLocal.slMapY.Add(Edit6.Text);
									end;
								end	else //0-5. 수정후 내용이 메모리에 없으면 메모리에 추가한다.
								begin
									GT_MAPLocal.slCity.Add(edt2.Text);
									GT_MAPLocal.slWard.Add(Edit1.Text);
									GT_MAPLocal.slStre.Add(Edit2.Text);
									GT_MAPLocal.slSSub.Add(StringReplace(Edit3.Text, ' ', '', [rfReplaceAll]));
									GT_MAPLocal.slSPOI.Add(cxTextEdit1.text);
									GT_MAPLocal.slMapX.Add(Edit5.Text);
									GT_MAPLocal.slMapY.Add(Edit6.Text);
								end;
							end	else
              if (((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE  = 1)) or (CHARGE_GUBUN = 'P') then
							begin
								for i := 0 to GT_MAPLocal.slSSub.Count - 1 do
								begin
									if (GT_MAPLocal.slCity[i] = StringReplace(edt2.Text,  ' ', '', [rfReplaceAll])) and
										 (GT_MAPLocal.slWard[i] = StringReplace(Edit1.Text, ' ', '', [rfReplaceAll])) and
										 (GT_MAPLocal.slStre[i] = StringReplace(Edit2.Text, ' ', '', [rfReplaceAll])) and
										 (GT_MAPLocal.slSSub[i] = StringReplace(Edit3.Hint, ' ', '', [rfReplaceAll])) then
									begin
										iRow := i;
										Break;
									end;
								end;
								if iRow >= 0 then
								begin
									GT_MAPLocal.slCity.Delete(iRow);
									GT_MAPLocal.slWard.Delete(iRow);
									GT_MAPLocal.slStre.Delete(iRow);
									GT_MAPLocal.slSSub.Delete(iRow);
									GT_MAPLocal.slSPOI.Delete(iRow);
									GT_MAPLocal.slMapX.Delete(iRow);
									GT_MAPLocal.slMapY.Delete(iRow);
								end;
								GT_MAPLocal.slCity.Add(edt2.Text);
								GT_MAPLocal.slWard.Add(Edit1.Text);
								GT_MAPLocal.slStre.Add(Edit2.Text);
								GT_MAPLocal.slSSub.Add(StringReplace(Edit3.Text, ' ', '', [rfReplaceAll]));
								GT_MAPLocal.slSPOI.Add(cxTextEdit1.text);
								GT_MAPLocal.slMapX.Add(Edit5.Text);
								GT_MAPLocal.slMapY.Add(Edit6.Text);
							end;

							GMessagebox('수정하였습니다.', cdmsi);
							Frm_SETA1.proc_Sync_DataTime_Set;
						end;
					end else
          if (Edit3.Hint <> Edit3.Text) or (cxTextEdit1.Hint <> cxTextEdit1.Text) then
					begin
						if (chk_Local.IndexOf(edt2.Text + '|' + Edit1.Text + '|' + Edit2.Text + '|' + Edit3.Text) >= 0) then
						begin
							ShowMessage('동일한 지명+상세지명의 데이터가 있어 수정을 할 수 없습니다.');
							exit;
						end;
						sSaveList := TStringList.Create;
						sSaveList.LoadFromFile(gsPath);

						if ( sSaveList.IndexOf(Edit4.Hint + '999') >= 0 ) Or ( sSaveList.IndexOf(Edit4.Hint + 'U') >= 0 ) then
						begin
							//1. 수정전 내용을 삭제하고 수정된 내용을 DAT파일에 넣는다
  						if ( sSaveList.IndexOf(Edit4.Hint + '999') >= 0 ) then sSaveList.Delete(sSaveList.IndexOf(Edit4.Hint + '999')) else
  						if ( sSaveList.IndexOf(Edit4.Hint + 'U'  ) >= 0 ) then sSaveList.Delete(sSaveList.IndexOf(Edit4.Hint + 'U'  ));
							sSaveList.Insert(iRow, sTemp1 + '|' + '999');
							sSaveList.SaveToFile(gsPath);

						 // GT_MAPLocal 로컬자료에서 삭제해준다.
							if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE  = 0) then
							begin
								//0-1. 수정전 내용이 메모리에 있는지 확인한다
								for i := 0 to GT_MAPLocal.slSSub.Count - 1 do
								begin
									if (GT_MAPLocal.slCity[i] = StringReplace(edt2.Text,  ' ', '', [rfReplaceAll])) and
										 (GT_MAPLocal.slWard[i] = StringReplace(Edit1.Text, ' ', '', [rfReplaceAll])) and
										 (GT_MAPLocal.slStre[i] = StringReplace(Edit2.Text, ' ', '', [rfReplaceAll])) and
										 (GT_MAPLocal.slSSub[i] = StringReplace(Edit3.Hint, ' ', '', [rfReplaceAll])) then
									begin
										iRow := i;
										Break;
									end;
								end;
								//0-2. 수정전 내용이 메모리에 있고 MySQL에 없으면 메모리에서 삭제한다
								if iRow >= 0 then
								begin
									sQuery := 'select * from CDMS_LOCAL_POI ' +
													 ' WHERE SI     = ''' + Trim(edt2.text) + ''' AND GU     = ''' + Trim(Edit1.text) + ''' AND DONG = ''' + Trim(Edit2.text) + ''' ' +
													 '   AND DNAME  = ''' + Trim(Edit3.Hint) + ''' ';//AND XPOINT = ''' + Trim(cxTextEdit8.text) + ''' AND YPOINT = ''' + Trim(cxTextEdit9.text) + ''' ';
									dmCharge.proc_mysql_init;
									dmCharge.FDQuery1.Close;
									dmCharge.FDQuery1.SQL.Text := sQuery;
									dmCharge.FDQuery1.OPEN;

									if dmCharge.FDQuery1.eof then   //수정전 자료가 MySQL에도 없을 경우 메모리에서 삭제
									begin
										GT_MAPLocal.slCity.Delete(iRow);
										GT_MAPLocal.slWard.Delete(iRow);
										GT_MAPLocal.slStre.Delete(iRow);
										GT_MAPLocal.slSSub.Delete(iRow);
										GT_MAPLocal.slSPOI.Delete(iRow);
										GT_MAPLocal.slMapX.Delete(iRow);
										GT_MAPLocal.slMapY.Delete(iRow);
									end;
								end;

								//0-3. 수정후 내용이 메모리에 있는지 확인한다
								for i := 0 to GT_MAPLocal.slSSub.Count - 1 do
								begin
									if (GT_MAPLocal.slCity[i] = StringReplace(edt2.Text,  ' ', '', [rfReplaceAll])) and
										 (GT_MAPLocal.slWard[i] = StringReplace(Edit1.Text, ' ', '', [rfReplaceAll])) and
										 (GT_MAPLocal.slStre[i] = StringReplace(Edit2.Text, ' ', '', [rfReplaceAll])) and
										 (GT_MAPLocal.slSSub[i] = StringReplace(Edit3.Text, ' ', '', [rfReplaceAll])) then
									begin
										iRow := i;
										Break;
									end;
								end;
								//0-4. 수정후 내용이 메모리에 없으면 메모리에 추가한다.
								if iRow < 0 then
								begin
									GT_MAPLocal.slCity.Add(edt2.Text);
									GT_MAPLocal.slWard.Add(Edit1.Text);
									GT_MAPLocal.slStre.Add(Edit2.Text);
									GT_MAPLocal.slSSub.Add(StringReplace(Edit3.Text, ' ', '', [rfReplaceAll]));
									GT_MAPLocal.slSPOI.Add(cxTextEdit1.text);
									GT_MAPLocal.slMapX.Add(Edit5.Text);
									GT_MAPLocal.slMapY.Add(Edit6.Text);
								end;
								if iRow >= 0 then
								begin
									sQuery := 'select * from CDMS_LOCAL_POI ' +
													 ' WHERE SI     = ''' + Trim(edt2.text) + ''' AND GU     = ''' + Trim(Edit1.text) + ''' AND DONG = ''' + Trim(Edit2.text) + ''' ' +
													 '   AND DNAME  = ''' + Trim(Edit3.Text) + ''' ';//AND XPOINT = ''' + Trim(cxTextEdit8.text) + ''' AND YPOINT = ''' + Trim(cxTextEdit9.text) + ''' ';
									dmCharge.proc_mysql_init;
									dmCharge.FDQuery1.Close;
									dmCharge.FDQuery1.SQL.Text := sQuery;
									dmCharge.FDQuery1.OPEN;

									if dmCharge.FDQuery1.eof then
									begin
										GT_MAPLocal.slCity.Add(edt2.Text);
										GT_MAPLocal.slWard.Add(Edit1.Text);
										GT_MAPLocal.slStre.Add(Edit2.Text);
										GT_MAPLocal.slSSub.Add(StringReplace(Edit3.Text, ' ', '', [rfReplaceAll]));
										GT_MAPLocal.slSPOI.Add(cxTextEdit1.text);
										GT_MAPLocal.slMapX.Add(Edit5.Text);
										GT_MAPLocal.slMapY.Add(Edit6.Text);
									end;
								end	else //0-5. 수정후 내용이 메모리에 없으면 메모리에 추가한다.
								begin
									GT_MAPLocal.slCity.Add(edt2.Text);
									GT_MAPLocal.slWard.Add(Edit1.Text);
									GT_MAPLocal.slStre.Add(Edit2.Text);
									GT_MAPLocal.slSSub.Add(StringReplace(Edit3.Text, ' ', '', [rfReplaceAll]));
									GT_MAPLocal.slSPOI.Add(cxTextEdit1.text);
									GT_MAPLocal.slMapX.Add(Edit5.Text);
									GT_MAPLocal.slMapY.Add(Edit6.Text);
								end;
							end	else
              if (((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE  = 1)) or (CHARGE_GUBUN = 'P') then
							begin
								for i := 0 to GT_MAPLocal.slSSub.Count - 1 do
								begin
									if (GT_MAPLocal.slCity[i] = StringReplace(edt2.Text,  ' ', '', [rfReplaceAll])) and
										 (GT_MAPLocal.slWard[i] = StringReplace(Edit1.Text, ' ', '', [rfReplaceAll])) and
										 (GT_MAPLocal.slStre[i] = StringReplace(Edit2.Text, ' ', '', [rfReplaceAll])) and
										 (GT_MAPLocal.slSSub[i] = StringReplace(Edit3.Hint, ' ', '', [rfReplaceAll])) then
									begin
										iRow := i;
										Break;
									end;
								end;
								if iRow >= 0 then
								begin
									GT_MAPLocal.slCity.Delete(iRow);
									GT_MAPLocal.slWard.Delete(iRow);
									GT_MAPLocal.slStre.Delete(iRow);
									GT_MAPLocal.slSSub.Delete(iRow);
									GT_MAPLocal.slSPOI.Delete(iRow);
									GT_MAPLocal.slMapX.Delete(iRow);
									GT_MAPLocal.slMapY.Delete(iRow);
								end;
								GT_MAPLocal.slCity.Add(edt2.Text);
								GT_MAPLocal.slWard.Add(Edit1.Text);
								GT_MAPLocal.slStre.Add(Edit2.Text);
								GT_MAPLocal.slSSub.Add(StringReplace(Edit3.Text, ' ', '', [rfReplaceAll]));
								GT_MAPLocal.slSPOI.Add(cxTextEdit1.text);
								GT_MAPLocal.slMapX.Add(Edit5.Text);
								GT_MAPLocal.slMapY.Add(Edit6.Text);
							end;
							GMessagebox('수정하였습니다.', cdmsi);
							Frm_SETA1.proc_Sync_DataTime_Set;
						end;
					end;
				finally
					proc_search('',1);
					iRow := StrToInt(lst1.Items[0]);
					// Row 번호로 행을 찾는다.
					if iRow >= 0 then
					begin
						sg_MapLocal.DataController.Values[iRow, 1] := edt2.Text;
						sg_MapLocal.DataController.Values[iRow, 2] := Edit1.Text;
						sg_MapLocal.DataController.Values[iRow, 3] := Edit2.Text;
						sg_MapLocal.DataController.Values[iRow, 4] := Edit3.Text;
						sg_MapLocal.DataController.Values[iRow, 5] := cxTextEdit1.text;
					end;
					sg_MapLocal.DataController.FocusedRecordIndex  := iRow;
					sg_MapLocal.DataController.SelectRows(iRow,iRow);
					ctxGrid.SetFocus;
					proc_init;
					FreeAndNil(sSaveList);
				end;
			end;
		end;
	except
  end;
end;

procedure TFrm_SET06.cxButton4Click(Sender: TObject);
var
	iRow, iDRow, i, j : Integer;
  sSaveList: TStringList;
	sQuery, msg, sTemp, sTemp1 : string;
begin
	if sg_MapLocal.DataController.FocusedRecordIndex < 0 then exit;
	msg := '선택한 내용을 삭제를 진행하시겠습니까?'#13#10'삭제 시 복원할 수 없습니다.';
  if Application.MessageBox(PChar(msg), CDMSI, MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
	begin
		try
			iRow := sg_MapLocal.DataController.FocusedRecordIndex;
			if sg_MapLocal.DataController.FocusedRecordIndex < 0 then Exit;

			if lst1.Items.Count > 1 then
			begin
				if FileExists(gsPath) then
				begin
					try
						sSaveList := TStringList.Create;
						sSaveList.LoadFromFile(gsPath);
						for iRow := 0 to lst1.Items.Count -1 do
						begin
							j := StrToInt(lst1.Items[iRow]);
							sTemp := sg_MapLocal.DataController.Values[j, 1] + '|' + sg_MapLocal.DataController.Values[j, 2] + '|'
										 + sg_MapLocal.DataController.Values[j, 3] + '|' + sg_MapLocal.DataController.Values[j, 4] + '|'
										 + sg_MapLocal.DataController.Values[j, 5] + '|' + sg_MapLocal.DataController.Values[j, 6] + '|'
										 + sg_MapLocal.DataController.Values[j, 7] + '|' + '999';

							sTemp1 := sg_MapLocal.DataController.Values[j, 1] + '|' + sg_MapLocal.DataController.Values[j, 2] + '|'
										 + sg_MapLocal.DataController.Values[j, 3] + '|' + sg_MapLocal.DataController.Values[j, 4] + '|'
										 + sg_MapLocal.DataController.Values[j, 5] + '|' + sg_MapLocal.DataController.Values[j, 6] + '|'
										 + sg_MapLocal.DataController.Values[j, 7] + '|' + 'U';

							if ( sSaveList.IndexOf(sTemp) >= 0 ) Or ( sSaveList.IndexOf(sTemp1) >= 0 ) then
							begin
                if ( sSaveList.IndexOf(sTemp ) >= 0 ) then sSaveList.Delete(sSaveList.IndexOf(sTemp)) else
                if ( sSaveList.IndexOf(sTemp1) >= 0 ) then sSaveList.Delete(sSaveList.IndexOf(sTemp1));

								sSaveList.SaveToFile(gsPath);
								if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE  = 0) then
								begin
									sQuery := 'select * from CDMS_LOCAL_POI ' 
													+ ' WHERE SI    = ''' + sg_MapLocal.DataController.Values[j, 1] + ''' '
													+ '   AND GU    = ''' + sg_MapLocal.DataController.Values[j, 2] + ''' '
													+ '   AND DONG  = ''' + sg_MapLocal.DataController.Values[j, 3] + ''' '
													+ '   AND DNAME = ''' + sg_MapLocal.DataController.Values[j, 4] + ''' ';//AND XPOINT = ''' + Trim(cxTextEdit8.text) + ''' AND YPOINT = ''' + Trim(cxTextEdit9.text) + ''' ';
									dmCharge.proc_mysql_init;
									dmCharge.FDQuery1.Close;
									dmCharge.FDQuery1.SQL.Text := sQuery;
									dmCharge.FDQuery1.OPEN;

									if dmCharge.FDQuery1.Eof then
									begin
										// GT_MAPLocal 로컬자료에서 삭제해준다.
										for i := 0 to GT_MAPLocal.slSSub.Count - 1 do
										begin
											if (GT_MAPLocal.slCity[i] = StringReplace(sg_MapLocal.DataController.Values[j, 1], ' ', '', [rfReplaceAll])) and
												 (GT_MAPLocal.slWard[i] = StringReplace(sg_MapLocal.DataController.Values[j, 2], ' ', '', [rfReplaceAll])) and
												 (GT_MAPLocal.slStre[i] = StringReplace(sg_MapLocal.DataController.Values[j, 3], ' ', '', [rfReplaceAll])) and
												 (GT_MAPLocal.slSSub[i] = StringReplace(sg_MapLocal.DataController.Values[j, 4], ' ', '', [rfReplaceAll])) then
											begin
												iDRow := i;
												Break;
											end;
										end;
										if iDRow >= 0 then
										begin
											 GT_MAPLocal.slCity.Delete(iDRow);
											 GT_MAPLocal.slWard.Delete(iDRow);
											 GT_MAPLocal.slStre.Delete(iDRow);
											 GT_MAPLocal.slSSub.Delete(iDRow);
											 GT_MAPLocal.slSPOI.Delete(iDRow);
											 GT_MAPLocal.slMapX.Delete(iDRow);
											 GT_MAPLocal.slMapY.Delete(iDRow);
										end;
									end;
								end	else
                if (((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE  = 1)) or (CHARGE_GUBUN = 'P') then
								begin
									for i := 0 to GT_MAPLocal.slSSub.Count - 1 do
									begin
											if (GT_MAPLocal.slCity[i] = StringReplace(sg_MapLocal.DataController.Values[j, 1], ' ', '', [rfReplaceAll])) and
												 (GT_MAPLocal.slWard[i] = StringReplace(sg_MapLocal.DataController.Values[j, 2], ' ', '', [rfReplaceAll])) and
												 (GT_MAPLocal.slStre[i] = StringReplace(sg_MapLocal.DataController.Values[j, 3], ' ', '', [rfReplaceAll])) and
												 (GT_MAPLocal.slSSub[i] = StringReplace(sg_MapLocal.DataController.Values[j, 4], ' ', '', [rfReplaceAll])) then
										begin
											iDRow := i;
											Break;
										end;
									end;
									if iDRow >= 0 then
									begin
										 GT_MAPLocal.slCity.Delete(iDRow);
										 GT_MAPLocal.slWard.Delete(iDRow);
										 GT_MAPLocal.slStre.Delete(iDRow);
										 GT_MAPLocal.slSSub.Delete(iDRow);
										 GT_MAPLocal.slSPOI.Delete(iDRow);
										 GT_MAPLocal.slMapX.Delete(iDRow);
										 GT_MAPLocal.slMapY.Delete(iDRow);
									end;
								end;
							end;
						end;
						proc_init;
						proc_search('',1);
						iRow := StrToInt(lst1.Items[0]);

						if sg_MapLocal.DataController.RecordCount < iRow + 10 then
							sg_MapLocal.DataController.FocusedRecordIndex  := iRow
						else
							sg_MapLocal.DataController.FocusedRecordIndex  := iRow + 10;
						sg_MapLocal.DataController.SelectRows(iRow,iRow);
						sg_MapLocal.DataController.FocusedRecordIndex  := iRow;

//						sg_MapLocal.DataController.SelectRows(iRow,iRow);
						ctxGrid.SetFocus;
						GMessagebox('삭제되었습니다.', cdmsi);
						Frm_SETA1.proc_Sync_DataTime_Set;
					except
					end;
				end;
			end	else
			begin
				if FileExists(gsPath) then
				begin
					try
						sSaveList := TStringList.Create;
						sSaveList.LoadFromFile(gsPath);

						sTemp := sg_MapLocal.DataController.Values[iRow, 1] + '|' + sg_MapLocal.DataController.Values[iRow, 2] + '|'
									 + sg_MapLocal.DataController.Values[iRow, 3] + '|' + sg_MapLocal.DataController.Values[iRow, 4] + '|'
									 + sg_MapLocal.DataController.Values[iRow, 5] + '|' + sg_MapLocal.DataController.Values[iRow, 6] + '|'
									 + sg_MapLocal.DataController.Values[iRow, 7] + '|' + '999';

						sTemp1 := sg_MapLocal.DataController.Values[iRow, 1] + '|' + sg_MapLocal.DataController.Values[iRow, 2] + '|'
									 + sg_MapLocal.DataController.Values[iRow, 3] + '|' + sg_MapLocal.DataController.Values[iRow, 4] + '|'
									 + sg_MapLocal.DataController.Values[iRow, 5] + '|' + sg_MapLocal.DataController.Values[iRow, 6] + '|'
									 + sg_MapLocal.DataController.Values[iRow, 7] + '|' + 'U';

  					if ( sSaveList.IndexOf(sTemp) >= 0 ) Or ( sSaveList.IndexOf(sTemp1) >= 0 ) then
						begin
              if ( sSaveList.IndexOf(sTemp ) >= 0 ) then sSaveList.Delete(sSaveList.IndexOf(sTemp)) else
              if ( sSaveList.IndexOf(sTemp1) >= 0 ) then sSaveList.Delete(sSaveList.IndexOf(sTemp1));
 							sSaveList.SaveToFile(gsPath);

							if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE  = 0) then
							begin
								sQuery := 'select * from CDMS_LOCAL_POI ' +
												 ' WHERE SI     = ''' + Trim(edt2.text) + ''' AND GU     = ''' + Trim(Edit1.text) + ''' AND DONG = ''' + Trim(Edit2.text) + ''' ' +
												 '   AND DNAME  = ''' + Trim(Edit3.Hint) + ''' ';//AND XPOINT = ''' + Trim(cxTextEdit8.text) + ''' AND YPOINT = ''' + Trim(cxTextEdit9.text) + ''' ';
								dmCharge.proc_mysql_init;
								dmCharge.FDQuery1.Close;
								dmCharge.FDQuery1.SQL.Text := sQuery;
								dmCharge.FDQuery1.OPEN;

								if dmCharge.FDQuery1.Eof then
								begin
									// GT_MAPLocal 로컬자료에서 삭제해준다.
									for i := 0 to GT_MAPLocal.slSSub.Count - 1 do
									begin
										if (GT_MAPLocal.slCity[i] = StringReplace(edt2.Text,  ' ', '', [rfReplaceAll])) and
											 (GT_MAPLocal.slWard[i] = StringReplace(Edit1.Text, ' ', '', [rfReplaceAll])) and
											 (GT_MAPLocal.slStre[i] = StringReplace(Edit2.Text, ' ', '', [rfReplaceAll])) and
											 (GT_MAPLocal.slSSub[i] = StringReplace(Edit3.Hint, ' ', '', [rfReplaceAll])) then
										begin
											iRow := i;
											Break;
										end;
									end;
									if iRow >= 0 then
									begin
										 GT_MAPLocal.slCity.Delete(iRow);
										 GT_MAPLocal.slWard.Delete(iRow);
										 GT_MAPLocal.slStre.Delete(iRow);
										 GT_MAPLocal.slSSub.Delete(iRow);
										 GT_MAPLocal.slSPOI.Delete(iRow);
										 GT_MAPLocal.slMapX.Delete(iRow);
										 GT_MAPLocal.slMapY.Delete(iRow);
									end;
								end;
							end	else
              if (((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE  = 1)) or (CHARGE_GUBUN = 'P') then
							begin
								for i := 0 to GT_MAPLocal.slSSub.Count - 1 do
								begin
									if (GT_MAPLocal.slCity[i] = StringReplace(edt2.Text,  ' ', '', [rfReplaceAll])) and
										 (GT_MAPLocal.slWard[i] = StringReplace(Edit1.Text, ' ', '', [rfReplaceAll])) and
										 (GT_MAPLocal.slStre[i] = StringReplace(Edit2.Text, ' ', '', [rfReplaceAll])) and
										 (GT_MAPLocal.slSSub[i] = StringReplace(Edit3.Hint, ' ', '', [rfReplaceAll])) then
									begin
										iRow := i;
										Break;
									end;
								end;
								if iRow >= 0 then
								begin
									GT_MAPLocal.slCity.Delete(iRow);
									GT_MAPLocal.slWard.Delete(iRow);
									GT_MAPLocal.slStre.Delete(iRow);
									GT_MAPLocal.slSSub.Delete(iRow);
									GT_MAPLocal.slSPOI.Delete(iRow);
									GT_MAPLocal.slMapX.Delete(iRow);
									GT_MAPLocal.slMapY.Delete(iRow);
								end;
							end;
							sg_MapLocal.DataController.DeleteRecord(iRow);
							proc_init;
//							proc_search('',1);

							iRow := StrToInt(lst1.Items[0]);
							if sg_MapLocal.DataController.RecordCount < iRow + 10 then
								sg_MapLocal.DataController.FocusedRecordIndex  := iRow
							else
								sg_MapLocal.DataController.FocusedRecordIndex  := iRow + 10;
							sg_MapLocal.DataController.SelectRows(iRow,iRow);
							sg_MapLocal.DataController.FocusedRecordIndex  := iRow;

							ctxGrid.SetFocus;
							GMessagebox('삭제되었습니다.', cdmsi);
							Frm_SETA1.proc_Sync_DataTime_Set;
						end;
					finally
						FreeAndNil(sSaveList);
					end;
				end;
			end;
		except
		end;
	end;
end;

procedure TFrm_SET06.FormShow(Sender: TObject);
begin
  fSetFont(Frm_SET06, GS_FONTNAME);

	Frm_SETA1.cxGroupBox8.Enabled := False;
	sg_MapLocal_MySQL.DataController.SetRecordCount(0);
	sg_MapLocal.DataController.SetRecordCount(0);
	proc_init;
	proc_search('',0);
end;

procedure TFrm_SET06.edt1KeyPress(Sender: TObject; var Key: Char);
begin
	if Ord(Key) = VK_RETURN then
		cxButton3Click(cxButton3)
	else if Ord(Key) = VK_SPACE then
		Key := #0;
end;

procedure TFrm_SET06.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_SET06.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	FreeAndNil(sl_Local);
  Action := caFree;
end;

procedure TFrm_SET06.cxButton5Click(Sender: TObject);
var iRow, i, colCheck : integer;
	sl_Local_List: TStringList;
	gsPath : string;
begin
	edt1.Text := '';
	edt2.Text := '';
	Edit1.Text := '';
	Edit2.Text := '';
	Edit3.Text := '';
	Edit5.Text := '';
	Edit6.Text := '';
	cxTextEdit1.Text := '';

	sg_MapLocal.DataController.SetRecordCount(0);
	gsPath := DBDIRECTORY + 'LOCAL_MAP_NEW.DAT';
	if FileExists(gsPath) then
	begin
		sl_Local := TStringList.Create;
		sl_Local.LoadFromFile(gsPath);
		sl_Local.sort;
		sl_Local_List := TStringList.Create;
		sg_MapLocal.BeginUpdate;
		try
			for i := 0 to sl_Local.Count - 1 do
			begin
				GetTextSeperationEx2('|', sl_Local.Strings[i], sl_Local_List);

				if sl_Local_List.Count <= 6 then colCheck := 1
																		else colCheck := 0;

				if sl_Local_List.Strings[0] = '' then Continue;

				iRow := sg_MapLocal.DataController.AppendRecord;
				sl_Local_List.Insert(0, IntToStr(iRow + 1));
				if colCheck = 1 then
				begin
					sg_MapLocal.DataController.Values[iRow, 0] := sl_Local_List[0];
					sg_MapLocal.DataController.Values[iRow, 1] := sl_Local_List[1];
					sg_MapLocal.DataController.Values[iRow, 2] := sl_Local_List[2];
					sg_MapLocal.DataController.Values[iRow, 3] := sl_Local_List[3];
					sg_MapLocal.DataController.Values[iRow, 4] := sl_Local_List[4];
					sg_MapLocal.DataController.Values[iRow, 5] := '';
					sg_MapLocal.DataController.Values[iRow, 6] := sl_Local_List[5];
					sg_MapLocal.DataController.Values[iRow, 7] := sl_Local_List[6];
				end else
				begin
					sg_MapLocal.DataController.Values[iRow, 0] := sl_Local_List[0];
					sg_MapLocal.DataController.Values[iRow, 1] := sl_Local_List[1];
					sg_MapLocal.DataController.Values[iRow, 2] := sl_Local_List[2];
					sg_MapLocal.DataController.Values[iRow, 3] := sl_Local_List[3];
					sg_MapLocal.DataController.Values[iRow, 4] := sl_Local_List[4];
					sg_MapLocal.DataController.Values[iRow, 5] := sl_Local_List[5];
					sg_MapLocal.DataController.Values[iRow, 6] := sl_Local_List[6];
					sg_MapLocal.DataController.Values[iRow, 7] := sl_Local_List[7];
				end;
			end;
		finally
    	sg_MapLocal.EndUpdate;
			FreeAndNil(sl_Local_List);
		end;
	end;
end;

procedure TFrm_SET06.sg_MapLocal_MySQLCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
	AShift: TShiftState; var AHandled: Boolean);
var
  iRow: Integer;
begin
	iRow := sg_MapLocal_MySQL.DataController.FocusedRecordIndex;
	if (AShift = [ssCtrl]) then
	else
	begin
		lst2.Items.clear;
		lst2.Items.Add(IntToStr(iRow));
	end;
	cxTextEdit3.Text := sg_MapLocal_MySQL.DataController.Values[iRow, 1];
	cxTextEdit3.Hint := sg_MapLocal_MySQL.DataController.Values[iRow, 1];

	cxTextEdit4.Text := sg_MapLocal_MySQL.DataController.Values[iRow, 2];
	cxTextEdit4.Hint := sg_MapLocal_MySQL.DataController.Values[iRow, 2];

	cxTextEdit5.Text := sg_MapLocal_MySQL.DataController.Values[iRow, 3];
	cxTextEdit5.Hint := sg_MapLocal_MySQL.DataController.Values[iRow, 3];

	cxTextEdit6.Text := sg_MapLocal_MySQL.DataController.Values[iRow, 4];
	cxTextEdit6.Hint := sg_MapLocal_MySQL.DataController.Values[iRow, 4];

	cxTextEdit7.text := sg_MapLocal_MySQL.DataController.Values[iRow, 5];
	cxTextEdit7.Hint := sg_MapLocal_MySQL.DataController.Values[iRow, 5];

	cxTextEdit8.Text := sg_MapLocal_MySQL.DataController.Values[iRow, 6];
	cxTextEdit10.Text := sg_MapLocal_MySQL.DataController.Values[iRow, 7];

	cxTextEdit9.Hint := Trim(cxTextEdit3.Text) + '|' + Trim(cxTextEdit4.Text) + '|' + Trim(cxTextEdit5.Text) + '|'
										+ Trim(cxTextEdit6.Text) + '|' + Trim(cxTextEdit7.Text) + '|' + Trim(cxTextEdit8.Text) + '|' + Trim(cxTextEdit10.Text) + '|' + '999';
end;

procedure TFrm_SET06.cxButton9Click(Sender: TObject);
var
	iRow, i : Integer;
	sTemp1, sQuery, sDate : string;
begin
	if sg_MapLocal_MySQL.DataController.FocusedRecordIndex < 0 then exit;
	if (cxTextEdit3.Text = '') or (cxTextEdit4.Text = '') or (cxTextEdit5.Text = '') then Exit;
	if lst2.Items.Count > 1 then
	begin
		ShowMessage('다중선택 시 수정이 불가능합니다.');
		exit;
	end;
	try
		sTemp1 := cxTextEdit3.Text + '|' + cxTextEdit4.Text + '|' + cxTextEdit5.Text + '|' + cxTextEdit6.Text + '|' + cxTextEdit7.text + '|'
						+ cxTextEdit8.Text + '|' + cxTextEdit10.Text;

		if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and ((GS_LOCALDATA_USE = 0) or (GS_LOCALDATA_USE = 2)) then
		begin
			if (cxTextEdit6.Hint = cxTextEdit6.Text) and (cxTextEdit7.hint = cxTextEdit7.text) then
			begin
				ShowMessage('수정된 내용이 없습니다.');
				exit;
			end	else
      if (cxTextEdit6.Hint = cxTextEdit6.Text) and (cxTextEdit7.Hint <> cxTextEdit7.Text) then
			begin
				sDate := frm_Main.func_sysdate;
				sQuery := 'select * from CDMS_LOCAL_POI ' +
								 ' WHERE SI     = ''' + Trim(cxTextEdit3.text) + ''' AND GU     = ''' + Trim(cxTextEdit4.text) + ''' AND DONG = ''' + Trim(cxTextEdit5.text) + ''' ' +
								 '   AND DNAME  = ''' + Trim(cxTextEdit6.Hint) + ''' ';//AND XPOINT = ''' + Trim(cxTextEdit8.text) + ''' AND YPOINT = ''' + Trim(cxTextEdit9.text) + ''' ';
				dmCharge.proc_mysql_init;
				dmCharge.FDQuery1.Close;
				dmCharge.FDQuery1.SQL.Text := sQuery;
				dmCharge.FDQuery1.OPEN;

				if not dmCharge.FDQuery1.Eof then
				begin
					sQuery := 'UPDATE CDMS_LOCAL_POI SET NPOI   = ''' + Trim(cxTextEdit7.text) + ''', DNAME    = ''' + Trim(cxTextEdit6.text) + ''', '
									+ '                          UserId = ''' + GT_USERIF.ID + '''          , UserName = ''' + GT_USERIF.NM + ''', LastUpTime = ''' + sDate + ''', SyncL = ''999'' '
									+ ' WHERE SI    = ''' + Trim(cxTextEdit3.text) + ''' AND GU     = ''' + Trim(cxTextEdit4.text) + ''' AND DONG   = ''' + Trim(cxTextEdit5.text) + ''' '
									+ '   AND DNAME = ''' + Trim(cxTextEdit6.Hint) + ''' ';//AND XPOINT = ''' + Trim(cxTextEdit8.text) + ''' AND YPOINT = ''' + Trim(cxTextEdit9.text) + ''' ';
					dmCharge.proc_mysql_init('update');
					dmCharge.FDQuery2.Close;
					dmCharge.FDQuery2.SQL.Text := sQuery;
					dmCharge.FDQuery2.ExecSQL;

					iRow := sg_MapLocal_MySQL.DataController.FindRecordIndexByText(0, 4, cxTextEdit6.Hint, True, True, True);
					// Row 번호로 행을 찾는다.
					if iRow >= 0 then
					begin
						sg_MapLocal_MySQL.DataController.Values[iRow, 1] := cxTextEdit3.Text;
						sg_MapLocal_MySQL.DataController.Values[iRow, 2] := cxTextEdit4.Text;
						sg_MapLocal_MySQL.DataController.Values[iRow, 3] := cxTextEdit5.Text;
						sg_MapLocal_MySQL.DataController.Values[iRow, 4] := cxTextEdit6.Text;
						sg_MapLocal_MySQL.DataController.Values[iRow, 5] := cxTextEdit7.text;
					end;

			 //    frm_JON03.LoadProgressForm;
					if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE  = 0) then
					begin
						sl_Local := TStringList.Create;
						gsPath := DBDIRECTORY + 'LOCAL_MAP_NEW.DAT';
						if not FileExists(gsPath) then exit;
						sl_Local.LoadFromFile(gsPath);
						sl_Local.Sorted := True;

						for i := 0 to GT_MAPLocal.slSSub.Count - 1 do
						begin
							if (GT_MAPLocal.slCity[i] = StringReplace(cxTextEdit3.Text, ' ', '', [rfReplaceAll])) and
								 (GT_MAPLocal.slWard[i] = StringReplace(cxTextEdit4.Text, ' ', '', [rfReplaceAll])) and
								 (GT_MAPLocal.slStre[i] = StringReplace(cxTextEdit5.Text, ' ', '', [rfReplaceAll])) and
								 (GT_MAPLocal.slSSub[i] = StringReplace(cxTextEdit6.Hint, ' ', '', [rfReplaceAll])) then
							begin
								iRow := i;
								Break;
							end;
						end;
						if iRow >= 0 then
						begin
							if sl_Local.IndexOf(cxTextEdit9.Hint) < 0 then
							begin
								GT_MAPLocal.slCity.Delete(iRow);
								GT_MAPLocal.slWard.Delete(iRow);
								GT_MAPLocal.slStre.Delete(iRow);
								GT_MAPLocal.slSSub.Delete(iRow);
								GT_MAPLocal.slSPOI.Delete(iRow);
								GT_MAPLocal.slMapX.Delete(iRow);
								GT_MAPLocal.slMapY.Delete(iRow);
							end;
						end;

						for i := 0 to GT_MAPLocal.slSSub.Count - 1 do
						begin
							if (GT_MAPLocal.slCity[i] = StringReplace(cxTextEdit3.Text, ' ', '', [rfReplaceAll])) and
								 (GT_MAPLocal.slWard[i] = StringReplace(cxTextEdit4.Text, ' ', '', [rfReplaceAll])) and
								 (GT_MAPLocal.slStre[i] = StringReplace(cxTextEdit5.Text, ' ', '', [rfReplaceAll])) and
								 (GT_MAPLocal.slSSub[i] = StringReplace(cxTextEdit6.Text, ' ', '', [rfReplaceAll])) then
							begin
								iRow := i;
								Break;
							end;
						end;
						if iRow < 0 then
						begin
							GT_MAPLocal.slCity.Add(cxTextEdit3.Text);
							GT_MAPLocal.slWard.Add(cxTextEdit4.Text);
							GT_MAPLocal.slStre.Add(cxTextEdit5.Text);
							GT_MAPLocal.slSSub.Add(StringReplace(cxTextEdit6.Text, ' ', '', [rfReplaceAll]));
							GT_MAPLocal.slSPOI.Add(cxTextEdit3.text);
							GT_MAPLocal.slMapX.Add(cxTextEdit8.Text);
							GT_MAPLocal.slMapY.Add(cxTextEdit9.Text);
						end;
					end else
          if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE  = 2) then
					begin
						for i := 0 to GT_MAPLocal.slSSub.Count - 1 do
						begin
							if (GT_MAPLocal.slCity[i] = StringReplace(cxTextEdit3.Text, ' ', '', [rfReplaceAll])) and
								 (GT_MAPLocal.slWard[i] = StringReplace(cxTextEdit4.Text, ' ', '', [rfReplaceAll])) and
								 (GT_MAPLocal.slStre[i] = StringReplace(cxTextEdit5.Text, ' ', '', [rfReplaceAll])) and
								 (GT_MAPLocal.slSSub[i] = StringReplace(cxTextEdit6.Hint, ' ', '', [rfReplaceAll])) then
							begin
								iRow := i;
								Break;
							end;
						end;
						if iRow >= 0 then
						begin
							GT_MAPLocal.slCity.Delete(iRow);
							GT_MAPLocal.slWard.Delete(iRow);
							GT_MAPLocal.slStre.Delete(iRow);
							GT_MAPLocal.slSSub.Delete(iRow);
							GT_MAPLocal.slSPOI.Delete(iRow);
							GT_MAPLocal.slMapX.Delete(iRow);
							GT_MAPLocal.slMapY.Delete(iRow);
						end;
						GT_MAPLocal.slCity.Add(cxTextEdit3.Text);
						GT_MAPLocal.slWard.Add(cxTextEdit4.Text);
						GT_MAPLocal.slStre.Add(cxTextEdit5.Text);
						GT_MAPLocal.slSSub.Add(StringReplace(cxTextEdit6.Text, ' ', '', [rfReplaceAll]));
						GT_MAPLocal.slSPOI.Add(cxTextEdit3.text);
						GT_MAPLocal.slMapX.Add(cxTextEdit8.Text);
						GT_MAPLocal.slMapY.Add(cxTextEdit9.Text);
					end;
					GMessagebox('수정하였습니다.', cdmsi);
					Frm_SETA1.proc_Sync_DataTime_Set;
  			end;
			end else
      if (cxTextEdit6.Hint <> cxTextEdit6.Text) or (cxTextEdit7.Hint <> cxTextEdit7.Text) then
			begin
				sQuery := 'select * from CDMS_LOCAL_POI ' +
								 ' WHERE SI     = ''' + Trim(cxTextEdit3.text) + ''' AND GU    = ''' + Trim(cxTextEdit4.text) + ''' AND DONG = ''' + Trim(cxTextEdit5.text) + ''' ' +
								 '   AND DNAME  = ''' + Trim(cxTextEdit6.Text) + ''' ';//AND XPOINT = ''' + Trim(cxTextEdit8.text) + ''' AND YPOINT = ''' + Trim(cxTextEdit9.text) + ''' ';
				dmCharge.proc_mysql_init;
				dmCharge.FDQuery1.Close;
				dmCharge.FDQuery1.SQL.Text := sQuery;
				dmCharge.FDQuery1.OPEN;
				if not dmCharge.FDQuery1.Eof then
				begin
					ShowMessage('동일한 지명+상세지명의 데이터가 있어 수정을 할 수 없습니다.');
					exit;
				end;

				sDate := frm_Main.func_sysdate;
				sQuery := 'select * from CDMS_LOCAL_POI ' +
								 ' WHERE SI     = ''' + Trim(cxTextEdit3.text) + ''' AND GU     = ''' + Trim(cxTextEdit4.text) + ''' AND DONG = ''' + Trim(cxTextEdit5.text) + ''' ' +
								 '   AND DNAME  = ''' + Trim(cxTextEdit6.Hint) + ''' ';//AND XPOINT = ''' + Trim(cxTextEdit8.text) + ''' AND YPOINT = ''' + Trim(cxTextEdit9.text) + ''' ';
				dmCharge.proc_mysql_init;
				dmCharge.FDQuery1.Close;
				dmCharge.FDQuery1.SQL.Text := sQuery;
				dmCharge.FDQuery1.OPEN;

				if not dmCharge.FDQuery1.Eof then
				begin
					sQuery := 'UPDATE CDMS_LOCAL_POI SET NPOI   = ''' + Trim(cxTextEdit7.text) + ''', DNAME    = ''' + Trim(cxTextEdit6.text) + ''', '
									+ '                          UserId = ''' + GT_USERIF.ID + '''          , UserName = ''' + GT_USERIF.NM + ''', LastUpTime = ''' + sDate + ''', SyncL = ''999'' '
									+ ' WHERE SI    = ''' + Trim(cxTextEdit3.text) + ''' AND GU     = ''' + Trim(cxTextEdit4.text) + ''' AND DONG   = ''' + Trim(cxTextEdit5.text) + ''' '
									+ '   AND DNAME = ''' + Trim(cxTextEdit6.Hint) + ''' ';//AND XPOINT = ''' + Trim(cxTextEdit8.text) + ''' AND YPOINT = ''' + Trim(cxTextEdit9.text) + ''' ';
					dmCharge.proc_mysql_init('update');
					dmCharge.FDQuery2.Close;
					dmCharge.FDQuery2.SQL.Text := sQuery;
					dmCharge.FDQuery2.ExecSQL;

					iRow := sg_MapLocal_MySQL.DataController.FindRecordIndexByText(0, 4, cxTextEdit6.Hint, True, True, True);
					// Row 번호로 행을 찾는다.
					if iRow >= 0 then
					begin
						sg_MapLocal_MySQL.DataController.Values[iRow, 1] := cxTextEdit3.Text;
						sg_MapLocal_MySQL.DataController.Values[iRow, 2] := cxTextEdit4.Text;
						sg_MapLocal_MySQL.DataController.Values[iRow, 3] := cxTextEdit5.Text;
						sg_MapLocal_MySQL.DataController.Values[iRow, 4] := cxTextEdit6.Text;
						sg_MapLocal_MySQL.DataController.Values[iRow, 5] := cxTextEdit7.text;
					end;

			 //    frm_JON03.LoadProgressForm;
					if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE  = 0) then
					begin
						sl_Local := TStringList.Create;
						gsPath := DBDIRECTORY + 'LOCAL_MAP_NEW.DAT';
						if not FileExists(gsPath) then exit;
						sl_Local.LoadFromFile(gsPath);
						sl_Local.Sorted := True;

						for i := 0 to GT_MAPLocal.slSSub.Count - 1 do
						begin
							if (GT_MAPLocal.slCity[i] = StringReplace(cxTextEdit3.Text, ' ', '', [rfReplaceAll])) and
								 (GT_MAPLocal.slWard[i] = StringReplace(cxTextEdit4.Text, ' ', '', [rfReplaceAll])) and
								 (GT_MAPLocal.slStre[i] = StringReplace(cxTextEdit5.Text, ' ', '', [rfReplaceAll])) and
								 (GT_MAPLocal.slSSub[i] = StringReplace(cxTextEdit6.Hint, ' ', '', [rfReplaceAll])) then
							begin
								iRow := i;
								Break;
							end;
						end;
						if iRow >= 0 then
						begin
							if sl_Local.IndexOf(cxTextEdit9.Hint) < 0 then
							begin
								GT_MAPLocal.slCity.Delete(iRow);
								GT_MAPLocal.slWard.Delete(iRow);
								GT_MAPLocal.slStre.Delete(iRow);
								GT_MAPLocal.slSSub.Delete(iRow);
								GT_MAPLocal.slSPOI.Delete(iRow);
								GT_MAPLocal.slMapX.Delete(iRow);
								GT_MAPLocal.slMapY.Delete(iRow);
							end;
						end;

						for i := 0 to GT_MAPLocal.slSSub.Count - 1 do
						begin
							if (GT_MAPLocal.slCity[i] = StringReplace(cxTextEdit3.Text, ' ', '', [rfReplaceAll])) and
								 (GT_MAPLocal.slWard[i] = StringReplace(cxTextEdit4.Text, ' ', '', [rfReplaceAll])) and
								 (GT_MAPLocal.slStre[i] = StringReplace(cxTextEdit5.Text, ' ', '', [rfReplaceAll])) and
								 (GT_MAPLocal.slSSub[i] = StringReplace(cxTextEdit6.Text, ' ', '', [rfReplaceAll])) then
							begin
								iRow := i;
								Break;
							end;
						end;
						if iRow < 0 then
						begin
							GT_MAPLocal.slCity.Add(cxTextEdit3.Text);
							GT_MAPLocal.slWard.Add(cxTextEdit4.Text);
							GT_MAPLocal.slStre.Add(cxTextEdit5.Text);
							GT_MAPLocal.slSSub.Add(StringReplace(cxTextEdit6.Text, ' ', '', [rfReplaceAll]));
							GT_MAPLocal.slSPOI.Add(cxTextEdit3.text);
							GT_MAPLocal.slMapX.Add(cxTextEdit8.Text);
							GT_MAPLocal.slMapY.Add(cxTextEdit9.Text);
						end;
					end else
          if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE  = 2) then
					begin
						for i := 0 to GT_MAPLocal.slSSub.Count - 1 do
						begin
							if (GT_MAPLocal.slCity[i] = StringReplace(cxTextEdit3.Text, ' ', '', [rfReplaceAll])) and
								 (GT_MAPLocal.slWard[i] = StringReplace(cxTextEdit4.Text, ' ', '', [rfReplaceAll])) and
								 (GT_MAPLocal.slStre[i] = StringReplace(cxTextEdit5.Text, ' ', '', [rfReplaceAll])) and
								 (GT_MAPLocal.slSSub[i] = StringReplace(cxTextEdit6.Hint, ' ', '', [rfReplaceAll])) then
							begin
								iRow := i;
								Break;
							end;
						end;
						if iRow >= 0 then
						begin
							GT_MAPLocal.slCity.Delete(iRow);
							GT_MAPLocal.slWard.Delete(iRow);
							GT_MAPLocal.slStre.Delete(iRow);
							GT_MAPLocal.slSSub.Delete(iRow);
							GT_MAPLocal.slSPOI.Delete(iRow);
							GT_MAPLocal.slMapX.Delete(iRow);
							GT_MAPLocal.slMapY.Delete(iRow);
						end;
						GT_MAPLocal.slCity.Add(cxTextEdit3.Text);
						GT_MAPLocal.slWard.Add(cxTextEdit4.Text);
						GT_MAPLocal.slStre.Add(cxTextEdit5.Text);
						GT_MAPLocal.slSSub.Add(StringReplace(cxTextEdit6.Text, ' ', '', [rfReplaceAll]));
						GT_MAPLocal.slSPOI.Add(cxTextEdit3.text);
						GT_MAPLocal.slMapX.Add(cxTextEdit8.Text);
						GT_MAPLocal.slMapY.Add(cxTextEdit9.Text);
					end;
					GMessagebox('수정하였습니다.', cdmsi);
					Frm_SETA1.proc_Sync_DataTime_Set;
				end;
			end;
			iRow := StrToInt(lst2.Items[0]);
			// Row 번호로 행을 찾는다.
			sg_MapLocal_MySQL.DataController.FocusedRecordIndex  := iRow;
			sg_MapLocal_MySQL.DataController.SelectRows(iRow,iRow);
			cxGrid1.SetFocus;
			proc_init;
		end;
	except
	end;
end;

procedure TFrm_SET06.btn4Click(Sender: TObject);
var
	iRow, i, j : Integer;
	sTemp, sTemp1, sQuery, msg, sDate : string;
	chk_Change : Boolean;
begin
	Try
		Screen.Cursor := crHourGlass;
		chk_Change := False;
		if TcxButton(Sender).Tag in [0,1] then  //이미 메모리에 올린 상태 이므로 메모리 추가는 할 필요 없다.
		begin
			if sg_MapLocal.DataController.RecordCount < 1 then exit;
			sDate := frm_Main.func_sysdate;
			if TcxButton(Sender).Tag = 0 then
			begin
				msg := '전체올리기를 진행하시겠습니까?';
        if Application.MessageBox(PChar(msg), CDMSI, MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
				begin
					Screen.Cursor := crHourGlass;
          cxProgressBar1.Position := 0;
          cxProgressBar1.Properties.Max := sg_MapLocal.DataController.RecordCount;
					for i := 0 to sg_MapLocal.DataController.RecordCount -1 do
					begin
            cxProgressBar1.Position := i;
            Application.ProcessMessages;
						sQuery := 'SELECT * FROM CDMS_LOCAL_POI WHERE SI     = ''' + sg_MapLocal.DataController.Values[i, 1] + ''' '
										+ '                               AND gu     = ''' + sg_MapLocal.DataController.Values[i, 2] + ''' '
										+ '                               AND DONG   = ''' + sg_MapLocal.DataController.Values[i, 3] + ''' '
										+ '                               AND DNAME  = ''' + sg_MapLocal.DataController.Values[i, 4] + ''' ';
						dmCharge.proc_mysql_init;
						dmCharge.FDQuery2.Close;
						dmCharge.FDQuery2.SQL.Text := sQuery;
						dmCharge.FDQuery2.open;

						if dmCharge.FDQuery2.eof then
						begin
							sQuery := 'INSERT INTO CDMS_LOCAL_POI VALUES(''' + sg_MapLocal.DataController.Values[i, 1]+ ''' '
											+ '                                , ''' + sg_MapLocal.DataController.Values[i, 2] + ''' '
											+ '                                , ''' + sg_MapLocal.DataController.Values[i, 3] + ''' '
											+ '                                , ''' + sg_MapLocal.DataController.Values[i, 4] + ''' '
											+ '                                , ''' + sg_MapLocal.DataController.Values[i, 5] + ''' '
											+ '                                , ''' + sg_MapLocal.DataController.Values[i, 6] + ''' '
											+ '                                , ''' + sg_MapLocal.DataController.Values[i, 7] + ''' '
											+ '                                , ''' + GT_USERIF.ID + ''', ''' + GT_USERIF.NM + ''', ''' + sDate + ''', '''', ''999'' )';
							dmCharge.proc_mysql_init('update');
							dmCharge.FDQuery1.Close;
							dmCharge.FDQuery1.SQL.Text := sQuery;
							dmCharge.FDQuery1.ExecSQL;

							chk_Change := True;
						end;
					end;
					ShowMessage('완료되었습니다.');
          cxProgressBar1.Position := 0;
					proc_CServer_LOCALtoList;
					proc_search('', 2);
				end;
			end else
      if TcxButton(Sender).Tag = 1 then
			begin
				if sg_MapLocal.DataController.FocusedRecordIndex < 0 then exit;

				if lst1.Items.Count > 1 then
				begin
					for iRow := 0 to lst1.Items.Count -1 do
					begin
						i := StrToInt(lst1.Items[iRow]);
						sQuery := 'SELECT * FROM CDMS_LOCAL_POI WHERE SI     = ''' + sg_MapLocal.DataController.Values[i, 1] + ''' '
										+ '                               AND gu     = ''' + sg_MapLocal.DataController.Values[i, 2] + ''' '
										+ '                               AND DONG   = ''' + sg_MapLocal.DataController.Values[i, 3] + ''' '
										+ '                               AND DNAME  = ''' + sg_MapLocal.DataController.Values[i, 4] + ''' ';
						dmCharge.proc_mysql_init;
						dmCharge.FDQuery2.Close;
						dmCharge.FDQuery2.SQL.Text := sQuery;
						dmCharge.FDQuery2.open;

						if dmCharge.FDQuery2.eof then
						begin
							sQuery := 'INSERT INTO CDMS_LOCAL_POI VALUES(''' + sg_MapLocal.DataController.Values[i, 1]+ ''' '
											+ '                                , ''' + sg_MapLocal.DataController.Values[i, 2] + ''' '
											+ '                                , ''' + sg_MapLocal.DataController.Values[i, 3] + ''' '
											+ '                                , ''' + sg_MapLocal.DataController.Values[i, 4] + ''' '
											+ '                                , ''' + sg_MapLocal.DataController.Values[i, 5] + ''' '
											+ '                                , ''' + sg_MapLocal.DataController.Values[i, 6] + ''' '
											+ '                                , ''' + sg_MapLocal.DataController.Values[i, 7] + ''' '
											+ '                                , ''' + GT_USERIF.ID + ''', ''' + GT_USERIF.NM + ''', ''' + sDate + ''', '''', ''999'' )';
							dmCharge.proc_mysql_init('update');
							dmCharge.FDQuery1.Close;
							dmCharge.FDQuery1.SQL.Text := sQuery;
							dmCharge.FDQuery1.ExecSQL;
							chk_Change := True;
						end;
					end;
					proc_search('', 2);
					for iRow := 0 to lst1.Items.Count -1 do
					begin
						i := StrToInt(lst1.Items[iRow]);
						j := sg_MapLocal_MySQL.DataController.FindRecordIndexByText(0, 4,sg_MapLocal.DataController.Values[i, 4],True,False,True);
						sg_MapLocal_MySQL.DataController.FocusedRecordIndex  := j;
						sg_MapLocal_MySQL.DataController.SelectRows(j,j);
					end;
					cxGrid1.SetFocus;
					Application.ProcessMessages;
				end else
				begin
					i := sg_MapLocal.DataController.FocusedRecordIndex;

					if i < 0 then Exit;
						sQuery := 'SELECT * FROM CDMS_LOCAL_POI WHERE SI     = ''' + sg_MapLocal.DataController.Values[i, 1] + ''' '
										+ '                               AND gu     = ''' + sg_MapLocal.DataController.Values[i, 2] + ''' '
										+ '                               AND DONG   = ''' + sg_MapLocal.DataController.Values[i, 3] + ''' '
										+ '                               AND DNAME  = ''' + sg_MapLocal.DataController.Values[i, 4] + ''' ';
					dmCharge.proc_mysql_init;
					dmCharge.FDQuery2.Close;
					dmCharge.FDQuery2.SQL.Text := sQuery;
					dmCharge.FDQuery2.open;

					if dmCharge.FDQuery2.eof then
					begin
						sQuery := 'INSERT INTO CDMS_LOCAL_POI VALUES(''' + sg_MapLocal.DataController.Values[i, 1]+ ''' '
										+ '                                , ''' + sg_MapLocal.DataController.Values[i, 2] + ''' '
										+ '                                , ''' + sg_MapLocal.DataController.Values[i, 3] + ''' '
										+ '                                , ''' + sg_MapLocal.DataController.Values[i, 4] + ''' '
										+ '                                , ''' + sg_MapLocal.DataController.Values[i, 5] + ''' '
										+ '                                , ''' + sg_MapLocal.DataController.Values[i, 6] + ''' '
										+ '                                , ''' + sg_MapLocal.DataController.Values[i, 7] + ''' '
										+ '                                , ''' + GT_USERIF.ID + ''', ''' + GT_USERIF.NM + ''', ''' + sDate + ''', '''', ''999'' )';
						dmCharge.proc_mysql_init('update');
						dmCharge.FDQuery1.Close;
						dmCharge.FDQuery1.SQL.Text := sQuery;
						dmCharge.FDQuery1.ExecSQL;
						chk_Change := True;
					end;
					proc_search('', 2);
					Application.ProcessMessages;
					iRow := sg_MapLocal_MySQL.DataController.FindRecordIndexByText(0, 4,sg_MapLocal.DataController.Values[i, 4],True,False,True);
					sg_MapLocal_MySQL.DataController.FocusedRecordIndex  := iRow;
					sg_MapLocal_MySQL.DataController.SelectRows(iRow,iRow);
					cxGrid1.SetFocus;
				end;
			end;
		end else
    if TcxButton(Sender).Tag in [2,3] then
		begin
			if sg_MapLocal_MySQL.DataController.RecordCount < 1 then exit;
			if TcxButton(Sender).Tag = 3 then
			begin
				msg := '전체 내리기를 진행하시겠습니까?';
        if Application.MessageBox(PChar(msg), CDMSI, MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
				begin
					Screen.Cursor := crHourGlass;
					sQuery := 'SELECT * FROM CDMS_LOCAL_POI ORDER BY si, gu, Dong, Dname ';
					dmCharge.proc_mysql_init;
					dmCharge.FDQuery1.Close;
					dmCharge.FDQuery1.SQL.Text := sQuery;
					dmCharge.FDQuery1.open;

          cxProgressBar1.Position := 0;
          cxProgressBar1.Properties.Max := dmCharge.FDQuery1.RecordCount;
          i := 0;

					sl_Local := TStringList.Create;
					sl_Local.LoadFromFile(gsPath);
					sl_Local.sort;
					while not dmCharge.FDQuery1.eof do
					begin
            cxProgressBar1.Position := i;
            Application.ProcessMessages;
						sTemp := dmCharge.FDQuery1.FieldByName('SI').AsString + '|' + dmCharge.FDQuery1.FieldByName('GU').AsString + '|'
									 + dmCharge.FDQuery1.FieldByName('DONG').AsString + '|' + dmCharge.FDQuery1.FieldByName('DNAME').AsString ;
						if chk_Local.IndexOf(sTemp) < 0 then
						begin
							sTemp1 := dmCharge.FDQuery1.FieldByName('SI').AsString + '|' + dmCharge.FDQuery1.FieldByName('GU').AsString + '|'
										 + dmCharge.FDQuery1.FieldByName('DONG').AsString + '|' + dmCharge.FDQuery1.FieldByName('DNAME').AsString + '|'
										 + dmCharge.FDQuery1.FieldByName('NPOI').AsString + '|' + dmCharge.FDQuery1.FieldByName('XPOINT').AsString + '|'
										 + dmCharge.FDQuery1.FieldByName('YPOINT').AsString + '|' + '999';
							sl_Local.Add(sTemp1);
							// 사용자 직접입력 정보 저장. CDS.
							GT_MAPLocal.slCity.Add(dmCharge.FDQuery1.FieldByName('SI').AsString); // 시도
							GT_MAPLocal.slWard.Add(dmCharge.FDQuery1.FieldByName('GU').AsString); // 시군구
							GT_MAPLocal.slStre.Add(dmCharge.FDQuery1.FieldByName('DONG').AsString); // 읍면동
							GT_MAPLocal.slSSub.Add(StringReplace(dmCharge.FDQuery1.FieldByName('DNAME').AsString, ' ', '', [rfReplaceAll])); // 세부지명
							GT_MAPLocal.slSPOI.Add(dmCharge.FDQuery1.FieldByName('NPOI').AsString); // 인근POI
							GT_MAPLocal.slMapX.Add(dmCharge.FDQuery1.FieldByName('XPOINT').AsString); // X 좌표
							GT_MAPLocal.slMapY.Add(dmCharge.FDQuery1.FieldByName('YPOINT').AsString); // Y 좌표
							chk_Change := True;
						end;
{						sTemp := dmCharge.FDQuery1.FieldByName('SI').AsString + '|' + dmCharge.FDQuery1.FieldByName('GU').AsString + '|'
									 + dmCharge.FDQuery1.FieldByName('DONG').AsString + '|' + dmCharge.FDQuery1.FieldByName('DNAME').AsString + '|'
									 + dmCharge.FDQuery1.FieldByName('NPOI').AsString + '|' + dmCharge.FDQuery1.FieldByName('XPOINT').AsString + '|'
									 + dmCharge.FDQuery1.FieldByName('YPOINT').AsString + '|' + '999';
						if sl_Local.IndexOf(sTemp) < 0 then
						begin
							sl_Local.Add(sTemp);
							// 사용자 직접입력 정보 저장. CDS.
							GT_MAPLocal.slCity.Add(dmCharge.FDQuery1.FieldByName('SI').AsString); // 시도
							GT_MAPLocal.slWard.Add(dmCharge.FDQuery1.FieldByName('GU').AsString); // 시군구
							GT_MAPLocal.slStre.Add(dmCharge.FDQuery1.FieldByName('DONG').AsString); // 읍면동
							GT_MAPLocal.slSSub.Add(StringReplace(dmCharge.FDQuery1.FieldByName('DNAME').AsString, ' ', '', [rfReplaceAll])); // 세부지명
							GT_MAPLocal.slSPOI.Add(dmCharge.FDQuery1.FieldByName('NPOI').AsString); // 인근POI
							GT_MAPLocal.slMapX.Add(dmCharge.FDQuery1.FieldByName('XPOINT').AsString); // X 좌표
							GT_MAPLocal.slMapY.Add(dmCharge.FDQuery1.FieldByName('YPOINT').AsString); // Y 좌표
							chk_Change := True;
						end;     }
						dmCharge.FDQuery1.next;
            Inc(i);
					end;
					sl_Local.SaveToFile(gsPath);

					ShowMessage('완료되었습니다.');
					proc_CServer_LOCALtoList;
          cxProgressBar1.Position := 0;
					proc_search('', 1);
				end;
			end	else
      if TcxButton(Sender).Tag = 2 then
			begin
				if lst2.Items.Count > 1 then
				begin
					sl_Local := TStringList.Create;
					sl_Local.LoadFromFile(gsPath);
					sl_Local.sort;
					Screen.Cursor := crHourGlass;
					for iRow := 0 to lst2.Items.Count -1 do
					begin
						i := StrToInt(lst2.Items[iRow]);
						if i < 0 then Exit;

						sQuery := 'SELECT * FROM CDMS_LOCAL_POI where si = ''' + sg_MapLocal_MySQL.DataController.Values[i, 1] + ''' '
										+ '   and gu   = ''' + sg_MapLocal_MySQL.DataController.Values[i, 2] + ''' '
										+ '   and DONG = ''' + sg_MapLocal_MySQL.DataController.Values[i, 3] + ''' '
										+ '   and DNAME = ''' + sg_MapLocal_MySQL.DataController.Values[i, 4] + ''' ORDER BY si, gu, Dong, Dname ';
						dmCharge.proc_mysql_init;
						dmCharge.FDQuery1.Close;
						dmCharge.FDQuery1.SQL.Text := sQuery;
						dmCharge.FDQuery1.open;
						if not dmCharge.FDQuery1.eof then
						begin
							sTemp := dmCharge.FDQuery1.FieldByName('SI').AsString + '|' + dmCharge.FDQuery1.FieldByName('GU').AsString + '|'
										 + dmCharge.FDQuery1.FieldByName('DONG').AsString + '|' + dmCharge.FDQuery1.FieldByName('DNAME').AsString ;
							if chk_Local.IndexOf(sTemp) < 0 then
							begin
								sTemp1 := dmCharge.FDQuery1.FieldByName('SI').AsString + '|' + dmCharge.FDQuery1.FieldByName('GU').AsString + '|'
											 + dmCharge.FDQuery1.FieldByName('DONG').AsString + '|' + dmCharge.FDQuery1.FieldByName('DNAME').AsString + '|'
											 + dmCharge.FDQuery1.FieldByName('NPOI').AsString + '|' + dmCharge.FDQuery1.FieldByName('XPOINT').AsString + '|'
											 + dmCharge.FDQuery1.FieldByName('YPOINT').AsString + '|' + '999';
								sl_Local.Add(sTemp1);
								// 사용자 직접입력 정보 저장. CDS.
								GT_MAPLocal.slCity.Add(sg_MapLocal_MySQL.DataController.Values[i, 1]); // 시도
								GT_MAPLocal.slWard.Add(sg_MapLocal_MySQL.DataController.Values[i, 2]); // 시군구
								GT_MAPLocal.slStre.Add(sg_MapLocal_MySQL.DataController.Values[i, 3]); // 읍면동
								GT_MAPLocal.slSSub.Add(StringReplace(sg_MapLocal_MySQL.DataController.Values[i, 4], ' ', '', [rfReplaceAll]));
								GT_MAPLocal.slSPOI.Add(sg_MapLocal_MySQL.DataController.Values[i, 5]); // 인근POI
								GT_MAPLocal.slMapX.Add(sg_MapLocal_MySQL.DataController.Values[i, 6]); // X 좌표
								GT_MAPLocal.slMapY.Add(sg_MapLocal_MySQL.DataController.Values[i, 7]); // Y 좌표

								chk_Change := True;
							end;
							sl_Local.SaveToFile(gsPath);
						end;
					end;
					proc_search('', 1);
					for iRow := 0 to lst2.Items.Count -1 do
					begin
						i := StrToInt(lst2.Items[iRow]);
						j := sg_MapLocal.DataController.FindRecordIndexByText(0, 4,sg_MapLocal_MySQL.DataController.Values[i, 4],True,False,True);
						sg_MapLocal.DataController.FocusedRecordIndex  := j;
						sg_MapLocal.DataController.SelectRows(j,j);
					end;
					ctxGrid.SetFocus;
				end else
				begin
					i := sg_MapLocal_MySQL.DataController.FocusedRecordIndex;
					if i < 0 then Exit;
					sl_Local := TStringList.Create;
					sl_Local.LoadFromFile(gsPath);
					sl_Local.sort;

					sQuery := 'SELECT * FROM CDMS_LOCAL_POI where si = ''' + sg_MapLocal_MySQL.DataController.Values[i, 1] + ''' '
									+ '   and gu   = ''' + sg_MapLocal_MySQL.DataController.Values[i, 2] + ''' '
									+ '   and DONG = ''' + sg_MapLocal_MySQL.DataController.Values[i, 3] + ''' '
									+ '   and DNAME = ''' + sg_MapLocal_MySQL.DataController.Values[i, 4] + ''' ORDER BY si, gu, Dong, Dname ';
					dmCharge.proc_mysql_init;
					dmCharge.FDQuery1.Close;
					dmCharge.FDQuery1.SQL.Text := sQuery;
					dmCharge.FDQuery1.open;

					if not dmCharge.FDQuery1.eof then
					begin
						sTemp := dmCharge.FDQuery1.FieldByName('SI').AsString + '|' + dmCharge.FDQuery1.FieldByName('GU').AsString + '|'
									 + dmCharge.FDQuery1.FieldByName('DONG').AsString + '|' + dmCharge.FDQuery1.FieldByName('DNAME').AsString ;
						if chk_Local.IndexOf(sTemp) < 0 then
						begin
							sTemp1 := dmCharge.FDQuery1.FieldByName('SI').AsString + '|' + dmCharge.FDQuery1.FieldByName('GU').AsString + '|'
										 + dmCharge.FDQuery1.FieldByName('DONG').AsString + '|' + dmCharge.FDQuery1.FieldByName('DNAME').AsString + '|'
										 + dmCharge.FDQuery1.FieldByName('NPOI').AsString + '|' + dmCharge.FDQuery1.FieldByName('XPOINT').AsString + '|'
										 + dmCharge.FDQuery1.FieldByName('YPOINT').AsString + '|' + '999';
							sl_Local.Add(sTemp1);
							// 사용자 직접입력 정보 저장. CDS.
							GT_MAPLocal.slCity.Add(sg_MapLocal_MySQL.DataController.Values[i, 1]); // 시도
							GT_MAPLocal.slWard.Add(sg_MapLocal_MySQL.DataController.Values[i, 2]); // 시군구
							GT_MAPLocal.slStre.Add(sg_MapLocal_MySQL.DataController.Values[i, 3]); // 읍면동
							GT_MAPLocal.slSSub.Add(StringReplace(sg_MapLocal_MySQL.DataController.Values[i, 4], ' ', '', [rfReplaceAll]));
							GT_MAPLocal.slSPOI.Add(sg_MapLocal_MySQL.DataController.Values[i, 5]); // 인근POI
							GT_MAPLocal.slMapX.Add(sg_MapLocal_MySQL.DataController.Values[i, 6]); // X 좌표
							GT_MAPLocal.slMapY.Add(sg_MapLocal_MySQL.DataController.Values[i, 7]); // Y 좌표

							chk_Change := True;
						end;
						sl_Local.SaveToFile(gsPath);
					end;
					proc_search('', 1);
					iRow := sg_MapLocal.DataController.FindRecordIndexByText(0, 4,sg_MapLocal_MySQL.DataController.Values[i, 4],True,False,True);
					sg_MapLocal.DataController.FocusedRecordIndex  := iRow;
					sg_MapLocal.DataController.SelectRows(iRow,iRow);
					ctxGrid.SetFocus;
				end;
			end;
		end;

		edt1.Text := '';
		edt2.Text := '';
		Edit1.Text := '';
		Edit2.Text := '';
		Edit3.Text := '';
		Edit5.Text := '';
		Edit6.Text := '';
		cxTextEdit1.Text := '';

		cxTextEdit2.Text := '';
		cxTextEdit3.Text := '';
		cxTextEdit4.Text := '';
		cxTextEdit5.Text := '';
		cxTextEdit6.Text := '';
		cxTextEdit7.Text := '';
		cxTextEdit10.Text := '';
		if chk_Change then
			Frm_SETA1.proc_Sync_DataTime_Set;
	finally
		FreeAndNil(sl_Local);
		Screen.Cursor := crDefault;
	end;
end;

procedure TFrm_SET06.BtnCloseClick(Sender: TObject);
begin
	Frm_SETA1.cxGroupBox8.Enabled := True;
  Close;
end;

procedure TFrm_SET06.proc_search_MYsql(AKey: string);
var sQuery : string;
	iRow : integer;
begin
	sg_MapLocal_MySQL.DataController.SetRecordCount(0);
	sg_MapLocal_MySQL.BeginUpdate;
	if AKey <> '' then
	begin
		sQuery := 'select * from CDMS_LOCAL_POI where (SI   LIKE ''%' + AKey + '%'') or (GU    LIKE ''%' + AKey + '%'') or (DONG LIKE ''%' + AKey + '%'') or (DNAME LIKE ''%' + AKey + '%'') order by si, gu, Dong, Dname';
	end else
	begin
		sQuery := 'select * from CDMS_LOCAL_POI order by si, gu, Dong, Dname';
	end;
	dmCharge.proc_mysql_init;
	dmCharge.FDQuery1.Close;
	dmCharge.FDQuery1.SQL.Text := sQuery;
	dmCharge.FDQuery1.OPEN;

	while not dmCharge.FDQuery1.Eof do
	begin
		iRow := sg_MapLocal_MySQL.DataController.AppendRecord;
		sg_MapLocal_MySQL.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
		sg_MapLocal_MySQL.DataController.Values[iRow, 1] := dmCharge.FDQuery1.Fields[0].AsString;
		sg_MapLocal_MySQL.DataController.Values[iRow, 2] := dmCharge.FDQuery1.Fields[1].AsString;
		sg_MapLocal_MySQL.DataController.Values[iRow, 3] := dmCharge.FDQuery1.Fields[2].AsString;
		sg_MapLocal_MySQL.DataController.Values[iRow, 4] := dmCharge.FDQuery1.Fields[3].AsString;
		sg_MapLocal_MySQL.DataController.Values[iRow, 5] := dmCharge.FDQuery1.Fields[4].AsString;
		sg_MapLocal_MySQL.DataController.Values[iRow, 6] := dmCharge.FDQuery1.Fields[5].AsString;
		sg_MapLocal_MySQL.DataController.Values[iRow, 7] := dmCharge.FDQuery1.Fields[6].AsString;
		sg_MapLocal_MySQL.DataController.Values[iRow, 8] := IntToStr(iRow);
		sg_MapLocal_MySQL.DataController.Values[iRow, 9] := dmCharge.FDQuery1.Fields[7].AsString;
		sg_MapLocal_MySQL.DataController.Values[iRow,10] := dmCharge.FDQuery1.Fields[8].AsString;
		if dmCharge.FDQuery1.Fields[9].AsString = '' then sg_MapLocal_MySQL.DataController.Values[iRow,11] :=''
		else
			sg_MapLocal_MySQL.DataController.Values[iRow,11] := Copy(dmCharge.FDQuery1.Fields[9].AsString, 01, 4) + '-' +
																													Copy(dmCharge.FDQuery1.Fields[9].AsString, 05, 2) + '-' +
																													Copy(dmCharge.FDQuery1.Fields[9].AsString, 07, 2) + ' ' +
																													Copy(dmCharge.FDQuery1.Fields[9].AsString, 09, 2) + ':' +
																													Copy(dmCharge.FDQuery1.Fields[9].AsString, 11, 2) + ':' +
																													Copy(dmCharge.FDQuery1.Fields[9].AsString, 13, 2);
//        sg_MapLocal.DataController.Values[iRow,11] := FormatDateTime('YYYY-MM-DD HH:NN:SS', dmCharge.FDQuery1.Fields[9].AsDateTime);

		dmCharge.FDQuery1.Next;
	end;
	sg_MapLocal_MySQL.EndUpdate;
end;

procedure TFrm_SET06.proc_search_LOCAL_DAT(APath, AKey: string);
var iRow, i, j : integer;
	sl_Local_List: TStringList;
	colCheck : integer;
begin
	if FileExists(APath) then
	begin
		sl_Local := TStringList.Create;
		chk_Local  := TStringList.Create;
		sl_Local.LoadFromFile(gsPath);
		sl_Local.sort;
		sl_Local_List := TStringList.Create;
		sg_MapLocal.BeginUpdate;
		try
			for i := 0 to sl_Local.Count - 1 do
			begin
				GetTextSeperationEx2('|', Trim(sl_Local.Strings[i]), sl_Local_List);

				chk_Local.Add(sl_Local_List[0] + '|' + sl_Local_List[1] + '|' + sl_Local_List[2] + '|' + sl_Local_List[3]);

				if sl_Local_List.Count <= 6 then colCheck := 1
																		else colCheck := 0;

				if sl_Local_List.Strings[0] = '' then Continue;

				if AKey <> '' then
				begin
					if (Pos(AKey, sl_Local_List[0]) > 0) or (Pos(AKey, sl_Local_List[1]) > 0) or (Pos(AKey, sl_Local_List[2]) > 0) or (Pos(AKey, sl_Local_List[3]) > 0)then
					begin
						iRow := sg_MapLocal.DataController.AppendRecord;
						sl_Local_List.Insert(0, IntToStr(iRow + 1));
						sg_MapLocal.DataController.Values[iRow, 0] := sl_Local_List[0];
						for j := 1 to 7 do
						begin
							if  j = 5 then
							begin
								if Copy(sl_Local_List[j],1,2) = '03' then
									sg_MapLocal.DataController.Values[iRow, j] := ''
								else
									sg_MapLocal.DataController.Values[iRow, j] := sl_Local_List[j];
							end	else
							begin
								sg_MapLocal.DataController.Values[iRow, j] := sl_Local_List[j];
							end;
						end;
					end;
				end else
				begin
					iRow := sg_MapLocal.DataController.AppendRecord;
					sl_Local_List.Insert(0, IntToStr(iRow + 1));
					if colCheck = 1 then
					begin
						sg_MapLocal.DataController.Values[iRow, 0] := sl_Local_List[0];
						sg_MapLocal.DataController.Values[iRow, 1] := sl_Local_List[1];
						sg_MapLocal.DataController.Values[iRow, 2] := sl_Local_List[2];
						sg_MapLocal.DataController.Values[iRow, 3] := sl_Local_List[3];
						sg_MapLocal.DataController.Values[iRow, 4] := sl_Local_List[4];
						sg_MapLocal.DataController.Values[iRow, 5] := '';
						sg_MapLocal.DataController.Values[iRow, 6] := sl_Local_List[5];
						sg_MapLocal.DataController.Values[iRow, 7] := sl_Local_List[6];
					end else
					begin
						sg_MapLocal.DataController.Values[iRow, 0] := sl_Local_List[0];
						sg_MapLocal.DataController.Values[iRow, 1] := sl_Local_List[1];
						sg_MapLocal.DataController.Values[iRow, 2] := sl_Local_List[2];
						sg_MapLocal.DataController.Values[iRow, 3] := sl_Local_List[3];
						sg_MapLocal.DataController.Values[iRow, 4] := sl_Local_List[4];
						sg_MapLocal.DataController.Values[iRow, 5] := sl_Local_List[5];
						sg_MapLocal.DataController.Values[iRow, 6] := sl_Local_List[6];
						sg_MapLocal.DataController.Values[iRow, 7] := sl_Local_List[7];
					end;
				end;
			end;
		finally
			FreeAndNil(sl_Local_List);
		end;
	end;
	sg_MapLocal.EndUpdate;
end;

procedure TFrm_SET06.btn1Click(Sender: TObject);
var
	msg : string;
begin
	if sg_MapLocal.DataController.RecordCount < 1 then exit;
	msg := '로컬DATA에 저장된 내용을 전체삭제를 진행하시겠습니까?'#13#10'전체삭제 시 로컬DATA 내용을 복원할 수 없습니다.';
  if Application.MessageBox(PChar(msg), CDMSI, MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
	begin
		if FileExists(gsPath) then
		begin
			sl_Local := TStringList.Create;
			sl_Local.LoadFromFile(gsPath);
			sl_Local.Clear;
			sl_Local.SaveToFile(gsPath);
			// 전역변수 초기화..
			GT_MAPLocal.slCity.Clear;
      GT_MAPLocal.slWard.Clear;
      GT_MAPLocal.slStre.Clear;
      GT_MAPLocal.slSSub.Clear;
			GT_MAPLocal.slSPOI.Clear;
			GT_MAPLocal.slMapX.Clear;
			GT_MAPLocal.slMapY.Clear;

			proc_search('',1);
			if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE = 0) then
			begin
				proc_CServer_LOCALtoList;
			end;

			ShowMessage('전체 로컬DATA 삭제가 완료되었습니다.');
		end;

		edt1.Text := '';
		edt2.Text := '';
		Edit1.Text := '';
		Edit2.Text := '';
		Edit3.Text := '';
		Edit5.Text := '';
		Edit6.Text := '';
		cxTextEdit1.Text := '';
	end;
end;

procedure TFrm_SET06.cxButton6Click(Sender: TObject);
begin
	proc_search(cxTextEdit2.Text, 2);
end;

procedure TFrm_SET06.cxButton10Click(Sender: TObject);
var sQuery, msg, sTemp : string;
	iRow, i, j, iDRow : integer;
begin
	if sg_MapLocal_MySQL.DataController.FocusedRecordIndex < 0 then exit;
	msg := '선택한 내용을 삭제를 진행하시겠습니까?'#13#10'삭제 시 복원할 수 없습니다.';
  if Application.MessageBox(PChar(msg), CDMSI, MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
	begin
		try
			if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE  = 0) then
			begin
				sl_Local := TStringList.Create;
				gsPath := DBDIRECTORY + 'LOCAL_MAP_NEW.DAT';
				if FileExists(gsPath) then sl_Local.LoadFromFile(gsPath);
				sl_Local.Sorted := True;
			end;
			if lst2.Items.Count > 1 then
			begin
				for iRow := 0 to lst2.Items.Count -1 do
				begin
					j := StrToInt(lst2.Items[iRow]);
					sQuery := 'DELETE FROM CDMS_LOCAL_POI '
									+ ' WHERE SI    = ''' + Trim(sg_MapLocal_MySQL.DataController.Values[j, 1]) + ''' '
									+ '   AND GU    = ''' + Trim(sg_MapLocal_MySQL.DataController.Values[j, 2]) + ''' '
									+ '   AND DONG  = ''' + Trim(sg_MapLocal_MySQL.DataController.Values[j, 3]) + ''' '
									+ '   AND DNAME = ''' + Trim(sg_MapLocal_MySQL.DataController.Values[j, 4]) + ''' ';
					dmCharge.proc_mysql_init('update');
					dmCharge.FDQuery2.Close;
					dmCharge.FDQuery2.SQL.Text := sQuery;
					dmCharge.FDQuery2.ExecSQL;

					if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE  = 0) then
					begin
						sTemp := sg_MapLocal_MySQL.DataController.Values[j, 1] + '|' + sg_MapLocal_MySQL.DataController.Values[j, 2] + '|'
									 + sg_MapLocal_MySQL.DataController.Values[j, 3] + '|' + sg_MapLocal_MySQL.DataController.Values[j, 4] + '|'
									 + sg_MapLocal_MySQL.DataController.Values[j, 5] + '|' + sg_MapLocal_MySQL.DataController.Values[j, 6] + '|'
									 + sg_MapLocal_MySQL.DataController.Values[j, 7] + '|' + '999';
						if sl_Local.IndexOf(sTemp) < 0 then
						begin
							for i := 0 to GT_MAPLocal.slSSub.Count - 1 do
							begin
								if (GT_MAPLocal.slCity[i] = StringReplace(sg_MapLocal_MySQL.DataController.Values[j, 1], ' ', '', [rfReplaceAll])) and
									 (GT_MAPLocal.slWard[i] = StringReplace(sg_MapLocal_MySQL.DataController.Values[j, 2], ' ', '', [rfReplaceAll])) and
									 (GT_MAPLocal.slStre[i] = StringReplace(sg_MapLocal_MySQL.DataController.Values[j, 3], ' ', '', [rfReplaceAll])) and
									 (GT_MAPLocal.slSSub[i] = StringReplace(sg_MapLocal_MySQL.DataController.Values[j, 4], ' ', '', [rfReplaceAll])) then
								begin
									iDRow := i;
									Break;
								end;
							end;
							if iDRow >= 0 then
							begin
								 GT_MAPLocal.slCity.Delete(iDRow);
								 GT_MAPLocal.slWard.Delete(iDRow);
								 GT_MAPLocal.slStre.Delete(iDRow);
								 GT_MAPLocal.slSSub.Delete(iDRow);
								 GT_MAPLocal.slSPOI.Delete(iDRow);
								 GT_MAPLocal.slMapX.Delete(iDRow);
								 GT_MAPLocal.slMapY.Delete(iDRow);
							end;
						end;
					end else
          if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE  = 2) then
					begin
						for i := 0 to GT_MAPLocal.slSSub.Count - 1 do
						begin
							if (GT_MAPLocal.slCity[i] = StringReplace(sg_MapLocal_MySQL.DataController.Values[j, 1], ' ', '', [rfReplaceAll])) and
								 (GT_MAPLocal.slWard[i] = StringReplace(sg_MapLocal_MySQL.DataController.Values[j, 2], ' ', '', [rfReplaceAll])) and
								 (GT_MAPLocal.slStre[i] = StringReplace(sg_MapLocal_MySQL.DataController.Values[j, 3], ' ', '', [rfReplaceAll])) and
								 (GT_MAPLocal.slSSub[i] = StringReplace(sg_MapLocal_MySQL.DataController.Values[j, 4], ' ', '', [rfReplaceAll])) then
							begin
								iDRow := i;
								Break;
							end;
						end;
						if iRow >= 0 then
						begin
							 GT_MAPLocal.slCity.Delete(iDRow);
							 GT_MAPLocal.slWard.Delete(iDRow);
							 GT_MAPLocal.slStre.Delete(iDRow);
							 GT_MAPLocal.slSSub.Delete(iDRow);
							 GT_MAPLocal.slSPOI.Delete(iDRow);
							 GT_MAPLocal.slMapX.Delete(iRow);
							 GT_MAPLocal.slMapY.Delete(iDRow);
						end;
					end;
				end;
				proc_init;
				proc_search('',2);

				iRow := StrToInt(lst2.Items[0]);
				if sg_MapLocal_MySQL.DataController.RecordCount < iRow + 10 then
					sg_MapLocal_MySQL.DataController.FocusedRecordIndex  := iRow
				else
					sg_MapLocal_MySQL.DataController.FocusedRecordIndex  := iRow + 10;
				sg_MapLocal_MySQL.DataController.SelectRows(iRow,iRow);
				sg_MapLocal_MySQL.DataController.FocusedRecordIndex  := iRow;
				cxGrid1.SetFocus;

				GMessagebox('삭제되었습니다.', cdmsi);
				Frm_SETA1.proc_Sync_DataTime_Set;
			end	else
			begin
				iRow := sg_MapLocal_MySQL.DataController.FocusedRecordIndex;
				sTemp := sg_MapLocal_MySQL.DataController.Values[iRow, 1] + '|' + sg_MapLocal_MySQL.DataController.Values[iRow, 2] + '|'
							 + sg_MapLocal_MySQL.DataController.Values[iRow, 3] + '|' + sg_MapLocal_MySQL.DataController.Values[iRow, 4] + '|'
							 + sg_MapLocal_MySQL.DataController.Values[iRow, 5] + '|' + sg_MapLocal_MySQL.DataController.Values[iRow, 6] + '|'
							 + sg_MapLocal_MySQL.DataController.Values[iRow, 7] + '|' + '999';

				sQuery := 'DELETE FROM CDMS_LOCAL_POI '
								+ ' WHERE SI   = ''' + Trim(sg_MapLocal_MySQL.DataController.Values[iRow, 1]) + ''' AND GU  = ''' + Trim(sg_MapLocal_MySQL.DataController.Values[iRow, 2]) + ''' '
								+ '   AND DONG = ''' + Trim(sg_MapLocal_MySQL.DataController.Values[iRow, 3]) + ''' AND DNAME = ''' + Trim(sg_MapLocal_MySQL.DataController.Values[iRow, 4]) + ''' ';
				dmCharge.proc_mysql_init('update');
				dmCharge.FDQuery2.Close;
				dmCharge.FDQuery2.SQL.Text := sQuery;
				dmCharge.FDQuery2.ExecSQL;

				if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE  = 0) then
				begin
					sl_Local := TStringList.Create;
					gsPath := DBDIRECTORY + 'LOCAL_MAP_NEW.DAT';
					if FileExists(gsPath) then sl_Local.LoadFromFile(gsPath);
					sl_Local.Sorted := True;
					if sl_Local.IndexOf(sTemp) < 0 then
					begin
						for i := 0 to GT_MAPLocal.slSSub.Count - 1 do
						begin
							if (GT_MAPLocal.slCity[i] = StringReplace(cxTextEdit3.Text, ' ', '', [rfReplaceAll])) and
								 (GT_MAPLocal.slWard[i] = StringReplace(cxTextEdit4.Text, ' ', '', [rfReplaceAll])) and
								 (GT_MAPLocal.slStre[i] = StringReplace(cxTextEdit5.Text, ' ', '', [rfReplaceAll])) and
								 (GT_MAPLocal.slSSub[i] = StringReplace(cxTextEdit6.Hint, ' ', '', [rfReplaceAll])) then
							begin
								iRow := i;
								Break;
							end;
						end;
						if iRow >= 0 then
						begin
							 GT_MAPLocal.slCity.Delete(iRow);
							 GT_MAPLocal.slWard.Delete(iRow);
							 GT_MAPLocal.slStre.Delete(iRow);
							 GT_MAPLocal.slSSub.Delete(iRow);
							 GT_MAPLocal.slSPOI.Delete(iRow);
							 GT_MAPLocal.slMapX.Delete(iRow);
							 GT_MAPLocal.slMapY.Delete(iRow);
						end;
					end;
				end else
        if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE  = 2) then
				begin
					for i := 0 to GT_MAPLocal.slSSub.Count - 1 do
					begin
						if (GT_MAPLocal.slCity[i] = StringReplace(cxTextEdit3.Text, ' ', '', [rfReplaceAll])) and
							 (GT_MAPLocal.slWard[i] = StringReplace(cxTextEdit4.Text, ' ', '', [rfReplaceAll])) and
							 (GT_MAPLocal.slStre[i] = StringReplace(cxTextEdit5.Text, ' ', '', [rfReplaceAll])) and
							 (GT_MAPLocal.slSSub[i] = StringReplace(cxTextEdit6.Hint, ' ', '', [rfReplaceAll])) then
						begin
							iRow := i;
							Break;
						end;
					end;
					if iRow >= 0 then
					begin
						 GT_MAPLocal.slCity.Delete(iRow);
						 GT_MAPLocal.slWard.Delete(iRow);
						 GT_MAPLocal.slStre.Delete(iRow);
						 GT_MAPLocal.slSSub.Delete(iRow);
						 GT_MAPLocal.slSPOI.Delete(iRow);
						 GT_MAPLocal.slMapX.Delete(iRow);
						 GT_MAPLocal.slMapY.Delete(iRow);
					end;
				end;

				proc_init;
				proc_search('',2);

				iRow := StrToInt(lst2.Items[0]);
				if sg_MapLocal_MySQL.DataController.RecordCount < iRow + 10 then
					sg_MapLocal_MySQL.DataController.FocusedRecordIndex  := iRow
				else
					sg_MapLocal_MySQL.DataController.FocusedRecordIndex  := iRow + 10;
				sg_MapLocal_MySQL.DataController.SelectRows(iRow,iRow);
				sg_MapLocal_MySQL.DataController.FocusedRecordIndex  := iRow;
				cxGrid1.SetFocus;

				GMessagebox('삭제되었습니다.', cdmsi);
				Frm_SETA1.proc_Sync_DataTime_Set;
			end;
		except
		end;
	end;
end;

procedure TFrm_SET06.cxTextEdit2KeyPress(Sender: TObject; var Key: Char);
begin
	if Ord(Key) = VK_RETURN then
		cxButton6Click(cxButton6)
	else if Ord(Key) = VK_SPACE then
		Key := #0;
end;

procedure TFrm_SET06.cxButton12Click(Sender: TObject);
var
	msg, sQuery : string;
begin
	if sg_MapLocal_MySQL.DataController.RecordCount < 1 then exit;
	msg := 'MySQL에 저장된 내용을 전체삭제를 진행하시겠습니까?'#13#10'전체삭제 시 MySQL에 저장된 내용을 복원할 수 없습니다.';
  if Application.MessageBox(PChar(msg), CDMSI, MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
	begin
		sQuery := 'DELETE FROM CDMS_LOCAL_POI ' ;
		dmCharge.proc_mysql_init('update');
		dmCharge.FDQuery2.Close;
		dmCharge.FDQuery2.SQL.Text := sQuery;
		dmCharge.FDQuery2.ExecSQL;
		// 전역변수 초기화..
		GT_MAPLocal.slCity.Clear;
		GT_MAPLocal.slWard.Clear;
		GT_MAPLocal.slStre.Clear;
		GT_MAPLocal.slSSub.Clear;
		GT_MAPLocal.slSPOI.Clear;
		GT_MAPLocal.slMapX.Clear;
		GT_MAPLocal.slMapY.Clear;

		proc_search('',2);
		if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE = 0) then
		begin
			proc_CServer_LOCALtoList;
		end;

		ShowMessage('전체 MySQL DATA 삭제가 완료되었습니다.');

		cxTextEdit2.Text := '';
		cxTextEdit3.Text := '';
		cxTextEdit4.Text := '';
		cxTextEdit5.Text := '';
		cxTextEdit6.Text := '';
		cxTextEdit7.Text := '';
		cxTextEdit10.Text := '';
	end;
end;

procedure TFrm_SET06.FormCreate(Sender: TObject);
var
  Save: LongInt;
begin
	//====================================================
  // 폼 타이틀 제거..
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
end;

procedure TFrm_SET06.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_SET06.FormDestroy(Sender: TObject);
begin
  Frm_SET06 := Nil;
end;

procedure TFrm_SET06.sg_MapLocalMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	if (shift = [ssCtrl,ssLeft]) then
	begin
		if lst1.Items.IndexOf(IntToStr(sg_MapLocal.DataController.FocusedRecordIndex)) > -1 then
			lst1.Items.Delete(lst1.Items.IndexOf(IntToStr(sg_MapLocal.DataController.FocusedRecordIndex)))
		else
			lst1.Items.Add(IntToStr(sg_MapLocal.DataController.FocusedRecordIndex));
	end else
	begin
		lst1.Clear;
		lst1.Items.Add(IntToStr(sg_MapLocal.DataController.FocusedRecordIndex));
	end;
end;

procedure TFrm_SET06.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SET06.edt1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var s : WideString;
begin
//		if (key <> 229) then  //  20191224 한컴입력기 에서는 모든 한글이 229로 넘어옴 그래서 삭제 KHS
//	begin
//		s := StringReplace(edt1.Text, ' ', '', [rfReplaceAll]);
//		proc_search(s,1);
//	end;
end;

procedure TFrm_SET06.cxTextEdit2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var s : WideString;
begin
//		if (key <> 229) then  //  20191224 한컴입력기 에서는 모든 한글이 229로 넘어옴 그래서 삭제 KHS
//	begin
//		s := StringReplace(cxTextEdit2.Text, ' ', '', [rfReplaceAll]);
//		proc_search(s,2);
//	end;
end;

procedure TFrm_SET06.Edit3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_SET06.sg_MapLocal_MySQLMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	if (shift = [ssCtrl,ssLeft]) then
	begin
		if lst2.Items.IndexOf(IntToStr(sg_MapLocal_MySQL.DataController.FocusedRecordIndex)) > -1 then
			lst2.Items.Delete(lst2.Items.IndexOf(IntToStr(sg_MapLocal_MySQL.DataController.FocusedRecordIndex)))
		else
			lst2.Items.Add(IntToStr(sg_MapLocal_MySQL.DataController.FocusedRecordIndex));
	end	else
	begin
		lst2.Clear;
		lst2.Items.Add(IntToStr(sg_MapLocal_MySQL.DataController.FocusedRecordIndex));
	end;
end;

procedure TFrm_SET06.sg_MapLocalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Shift then exit;
end;

procedure TFrm_SET06.sg_MapLocalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
	s : string;
begin
	if Key = vk_Shift then
	begin
		sg_MapLocal.OptionsSelection.MultiSelect := False;
		s := lst1.Items[lst1.Items.Count-1];
		lst1.Clear;
		lst1.Items.Add(s) ;
	end
	else
		sg_MapLocal.OptionsSelection.MultiSelect := True;
end;

procedure TFrm_SET06.sg_MapLocal_MySQLKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
	s : string;
begin
	if Key = vk_Shift then
	begin
		sg_MapLocal_MySQL.OptionsSelection.MultiSelect := False;
		s := lst2.Items[lst2.Items.Count-1];
		lst2.Clear;
		lst2.Items.Add(s) ;
	end
	else
		sg_MapLocal_MySQL.OptionsSelection.MultiSelect := True;
end;

end.

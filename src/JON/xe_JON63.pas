unit xe_JON63;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, System.Math,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxCheckBox, cxTextEdit,
	cxContainer, cxGridLevel, cxGridCustomTableView, cxGridTableView, Magnetic,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  ExtCtrls, StdCtrls, GradientLabel, cxCurrencyEdit, Menus, System.StrUtils,
  cxLookAndFeelPainters, cxMaskEdit, cxSpinEdit, cxButtons, cxPC, ChargeInfo,
  cxDropDownEdit, cxLookAndFeels, cxPCdxBarPopupMenu, cxNavigator, cxGroupBox,
  cxTL, cxTLdxBarBuiltInMenu, cxInplaceContainer, dxBarBuiltInMenu, dxSkinsCore,
	dxSkinscxPCPainter, dxSkinOffice2010Blue, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_JON63 = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    edtEndDesc: TcxTextEdit;
    edtStartDesc: TcxTextEdit;
    lbl2: TcxLabel;
		btnSearch: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleNew: TcxStyle;
    pnlTitle: TPanel;
    BtnClose: TcxButton;
    GB_View: TcxGroupBox;
    cxLblActive: TLabel;
    edt_STPoi: TcxTextEdit;
    edt_EDPoi: TcxTextEdit;
    GridA2: TcxGrid;
    cxGridALL7Charge: TcxGridDBTableView;
    cxGridALL7ChargeColumn9: TcxGridDBColumn;
    cxGridALL7ChargeColumn6: TcxGridDBColumn;
    cxGridALL7ChargeColumn5: TcxGridDBColumn;
    GridA2Level: TcxGridLevel;
    lb_FromTo: TcxLabel;
    TmrChkTag: TTimer;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edt_Charge: TcxTextEdit;
    btnInsert: TcxButton;
    btnDelete: TcxButton;
    btnUpdate: TcxButton;
    edt_SEQ: TcxTextEdit;
    cxGridALL7ChargeColumn1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCloseClick(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
		procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure edt_EDPoiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_STPoiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TmrChkTagTimer(Sender: TObject);
		procedure FormDestroy(Sender: TObject);
		procedure cxGridALL7ChargeCellDblClick(Sender: TcxCustomGridTableView;
			ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
			AShift: TShiftState; var AHandled: Boolean);
		procedure FormShow(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure cxGridALL7ChargeCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure edt_ChargeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_ChargeKeyPress(Sender: TObject; var Key: Char);
	private
		{ Private declarations }
		procedure proc_AddGrid(AST, AED : string);
		procedure proc_ChangeCharge(AGubun, AST, AED, ACharge, ASEQ : string);
	public
		{ Public declarations }
		bChkTime : Boolean;
		procedure proc_Init;

    procedure WMEnterSizeMove(var Msg: TMessage); message WM_ENTERSIZEMOVE;
    procedure WMSizing(var Msg: TMessage); message WM_SIZING;
		procedure WMMoving(var Msg: TMessage); message WM_MOVING;
    procedure WMExitSizeMove(var Msg: TMessage); message WM_ExitSIZEMOVE;
    procedure WMShowHideWindow(var Msg: TMessage); message WM_WINDOWPOSCHANGED;
    procedure WMSysCommand(var Msg: TMessage); message WM_SYSCOMMAND;
    procedure WMCommand(var Msg: TMessage); message WM_COMMAND;
	end;

var
  Frm_JON63: TFrm_JON63;

implementation

{$R *.dfm}

uses xe_charge, xe_Msg, xe_GNL, xe_Func, xe_gnl2, Main, xe_JON00;

procedure TFrm_JON63.FormCreate(Sender: TObject);
var
  Save: LongInt; // 폼타이틀 제거용.
  i : Integer;
begin
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

	proc_Init
end;

procedure TFrm_JON63.btnSearchClick(Sender: TObject);
begin
	proc_AddGrid(edt_StPoi.Text, edt_EdPoi.Text);
	if edt_StPoi.Text <> '' then
		lb_FromTo.Caption := edt_StPoi.Text + ' >>> ' + edt_EdPoi.Text; 
end;

procedure TFrm_JON63.btnUpdateClick(Sender: TObject);
begin
	if edt_SEQ.Text = '' then 
	begin
		GMessagebox('수정항목을 선택하여 주십시오', CDMSI);
		exit;
	end;
	proc_ChangeCharge('UPDATE', edt_StPoi.Text, edt_EdPoi.Text, edt_Charge.Text, edt_SEQ.Text);
	lb_FromTo.Caption := edt_StPoi.Text + ' >>> ' + edt_EdPoi.Text;
end;

procedure TFrm_JON63.btnDeleteClick(Sender: TObject);
begin
	proc_ChangeCharge('DELETE', edt_StPoi.Text, edt_EdPoi.Text, edt_Charge.Text, edt_SEQ.Text);
	lb_FromTo.Caption := edt_StPoi.Text + ' >>> ' + edt_EdPoi.Text;
end;

procedure TFrm_JON63.btnInsertClick(Sender: TObject);
begin
	proc_ChangeCharge('INSERT', edt_StPoi.Text, edt_EdPoi.Text, edt_Charge.Text, edt_SEQ.Text);
	lb_FromTo.Caption := edt_StPoi.Text + ' >>> ' + edt_EdPoi.Text;
end;

procedure TFrm_JON63.cxGridALL7ChargeCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var iRow, iTmp, iRate : Integer;
		sSt, sEd, sSeq, sCharge : string;
begin
{	Try
		iRow := cxGridALL7Charge.DataController.FocusedRecordIndex;
		sSt     := cxGridALL7Charge.DataController.Values[iRow, 0];
		sEd     := cxGridALL7Charge.DataController.Values[iRow, 1];
		sCharge := cxGridALL7Charge.DataController.Values[iRow, 2];
		sSeq    := IntToStr(cxGridALL7Charge.DataController.Values[iRow, 3]);

		edt_STPoi.Text  := sSt;
		edt_EDPoi.Text  := sEd;
		edt_Charge.Text := sCharge;
		edt_SEQ.Text    := sSeq;
	except

	End;  }
end;

procedure TFrm_JON63.cxGridALL7ChargeCellDblClick(
	Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
	AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var iRow, iTmp, iRate : Integer;
		sSt, sEd, sSeq, sCharge : string;
begin
	Try
		iRow := cxGridALL7Charge.DataController.FocusedRecordIndex;
		sSt     := cxGridALL7Charge.DataController.Values[iRow, 0];
		sEd     := cxGridALL7Charge.DataController.Values[iRow, 1];
		sCharge := cxGridALL7Charge.DataController.Values[iRow, 2];
		sSeq    := IntToStr(cxGridALL7Charge.DataController.Values[iRow, 3]);

		edt_STPoi.Text  := sSt;
		edt_EDPoi.Text  := sEd;
		edt_Charge.Text := sCharge;
		edt_SEQ.Text    := sSeq;
	except

	End;  
{	Try
		iRow := cxGridALL7Charge.DataController.FocusedRecordIndex;
		sTmp := cxGridALL7Charge.DataController.Values[iRow, 2];
		iTmp := Pos('K', sTmp);
		sTmp := Copy(sTmp, 1, iTmp-1);
		iRate := StrToIntDef(sTmp, 0) * 1000;

		if bChkTime then
		begin
			if Frm_Main.Frm_JON01N[Self.Tag].BtnRaLock.Hint <> 'F4)잠금' then
			begin
				Frm_Main.Frm_JON01N[Self.Tag].curRate.Value := iRate;
				Frm_Main.Frm_JON01N[Self.Tag].OrgRate := Frm_Main.Frm_JON01N[Self.Tag].curRate.Value;
			end;
//			btnClose.Click;
		end;   
	except
	End; }  
end;

procedure TFrm_JON63.edt_ChargeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = VK_Return then BtnSearch.Click;
end;

procedure TFrm_JON63.edt_ChargeKeyPress(Sender: TObject; var Key: Char);
begin
	if key = 'K' then
	begin
		if Pos('K', edt_Charge.Text) > 0 then key := #0
	end else
	if key in ['0'..'9', #13, #8] then
	begin
	end else key := #0;
end;

procedure TFrm_JON63.edt_EDPoiKeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin                      	
	if Key = VK_Return then BtnSearch.Click;
//	if Key = VK_Return then edt_Charge.SetFocus;
end;

procedure TFrm_JON63.edt_STPoiKeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if Key = VK_Return then edt_EDPoi.SetFocus;
end;

procedure TFrm_JON63.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON63.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_JON63.btnCloseClick(Sender: TObject);
begin
//	GS_EnvFile.WriteInteger('AcceptWin', 'Jon63Top' , self.Top);
//	GS_EnvFile.WriteInteger('AcceptWin', 'Jon63Left', self.left);
  if GS_JON01_GROUPMOVE then MagneticWnd.RemoveWindow(Self.Handle);
	Close;
end;

procedure TFrm_JON63.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON63.FormDestroy(Sender: TObject);
begin
	Frm_JON63 := Nil;
end;

procedure TFrm_JON63.FormShow(Sender: TObject);
Var i, iTop, iLeft : Integer;
begin
	fSetFont(Frm_JON63, GS_FONTNAME);
  fSetSkin(Frm_JON63);
  for i := 0 to pred(cxStyleRepository1.Count) do
  begin
    TcxStyle(cxStyleRepository1.Items[i]).Font.Name := GS_FONTNAME;
  end;

//	if GS_JON01_GROUPMOVE then TmrChkTag.Enabled := True;
	TmrChkTag.Enabled := True;   // 자석은 무조건하고 옵션에 따라 이동( 열린상태에서 자석 했을경우 바로 적용하기 위해);

	if self.Tag = -1 then
	begin
//		iTop  := GS_EnvFile.ReadInteger('AcceptWin', 'Jon63Top', (frm_main.height div 2) - (self.height div 2));
//		iLeft := GS_EnvFile.ReadInteger('AcceptWin', 'Jon63Left', (frm_main.Width div 2) - (self.Width div 2));
		Self.Left := frm_main.Left + (frm_main.Width div 2) - (self.Width div 2);//iLeft;
		Self.Top  := frm_main.Top  + (frm_main.height div 2) - (self.height div 2);//iTop;
	end else
	if Frm_Main.Frm_JON01N[Self.Tag] <> nil then
	begin
		Self.Left := Frm_Main.Frm_JON01N[Self.Tag].Left - (Self.Width + 1);
		Self.Top  := Frm_Main.Frm_JON01N[Self.Tag].Top + (Frm_Main.Frm_JON01N[Self.Tag].Height - Self.Height);
	end
end;

procedure TFrm_JON63.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
	Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON63.proc_AddGrid(AST, AED : string);
var sTmp : string;
	iRow, iTmp : integer;
begin
	Try
		edt_SEQ.Text := '';
		dmCharge.proc_mysql_init;
		dmCharge.FDQuery1.Close;
		sTmp := 'SELECT A7_STPOI, A7_EDPOI, A7_CHARGE, A7_NO FROM CDMS_A7_CHARGE '
					+ ' WHERE (A7_STPOI Like ''' + AST + '%'') '
					+ '   AND (A7_EDPOI Like ''' + AED + '%'') '
					+ 'ORDER BY A7_STPOI, A7_EDPOI, A7_CHARGE ';

		dmCharge.FDQuery1.SQL.Text := sTmp;																

		dmCharge.FDQuery1.open;
		cxGridALL7Charge.DataController.SetRecordCount(0);
		cxGridALL7Charge.BeginUpdate();
		While not dmCharge.FDQuery1.eof do
		begin
			iRow := cxGridALL7Charge.DataController.AppendRecord;	
{			if iRow = 0 then
			begin
				edt_StPoi.Text  := dmCharge.FDQuery1.Fields[0].AsString;
				edt_EdPoi.Text  := dmCharge.FDQuery1.Fields[1].AsString;
				edt_Charge.Text := dmCharge.FDQuery1.Fields[2].AsString;
			end; }
			cxGridALL7Charge.DataController.Values[iRow, 0] := dmCharge.FDQuery1.Fields[0].AsString;
			cxGridALL7Charge.DataController.Values[iRow, 1] := dmCharge.FDQuery1.Fields[1].AsString;
			cxGridALL7Charge.DataController.Values[iRow, 2] := dmCharge.FDQuery1.Fields[2].AsString;
			iTmp := dmCharge.FDQuery1.Fields[3].AsInteger;
			cxGridALL7Charge.DataController.Values[iRow, 3] := IntToStr(iTmp);
			dmCharge.FDQuery1.Next;
		end;
		cxGridALL7Charge.EndUpdate();
	Except
  End;
end;

procedure TFrm_JON63.proc_ChangeCharge(AGubun, AST, AED, ACharge, ASEQ: string);
var sTmp, sSeq : string;
	iRow : integer;
begin
	Try
		if Trim(edt_StPoi.Text) = '' then
		begin
			GMessagebox('출발지명을  입력하십시오', CDMSE);
			edt_StPoi.SetFocus;
			exit;
		end;
		if length(edt_StPoi.Text) < 2 then
		begin
			GMessagebox('출발지명은 2자 이상이어야 합니다', CDMSE);
			edt_StPoi.SetFocus;
			exit;
		end;
		if Trim(edt_EdPoi.Text) = '' then
		begin
			GMessagebox('도착지명을 입력하십시오', CDMSE);
			edt_EdPoi.SetFocus;
			exit;
		end;
		if length(edt_EdPoi.Text) < 2 then
		begin
			GMessagebox('도착지명은2자 이상이어야 합니다', CDMSE);
			edt_EdPoi.SetFocus;
			exit;
		end;
		if (AGubun <> 'DELETE') and (edt_Charge.Text = '')  then
		begin
			GMessagebox('요금을 입력하여 주십시오', CDMSE);
			edt_Charge.Setfocus;
			exit;
		end;
		if (AGubun <> 'DELETE') and (UpperCase(System.StrUtils.RightStr(edt_Charge.Text,1)) <> 'K')  then
		begin
			GMessagebox('요금은 [K] 로 끝나야 합니다', CDMSE);
			edt_Charge.Setfocus;
			exit;
		end;
		if ((AGubun = 'DELETE') or (AGubun = 'UPDATE')) and (Trim(edt_SEQ.text) = '') then
		begin
			GMessagebox('선택된 요금이 없습니다', CDMSE);
			exit;
		end;
		
		dmCharge.proc_mysql_init;
		dmCharge.FDQuery1.Close;
		if AGubun = 'INSERT' then 
			sTmp := Format('Insert into CDMS_A7_CHARGE (A7_STPOI, A7_EDPOI, A7_CHARGE) VALUES '
									 +                            '(''%s'', ''%s'', ''%s'')',[AST, AED, UpperCase(ACharge)])
		else if AGubun = 'UPDATE' then 
			sTmp := Format('Update CDMS_A7_CHARGE Set A7_STPOI = ''%s'', A7_EDPOI = ''%s'', A7_CHARGE = ''%s'' Where A7_NO = ''%d'' '
									 ,[AST, AED, UpperCase(ACharge), StrToIntDef(ASEQ, -1)])
		else if AGubun = 'DELETE' then 
			sTmp := Format('Delete from CDMS_A7_CHARGE Where A7_NO = ''%d'' ' ,[StrToIntDef(ASEQ, -1)]);

		dmCharge.FDQuery1.SQL.Text := sTmp;																
		dmCharge.FDQuery1.ExecSql;

		if {(AGubun = 'INSERT') or} (AGubun = 'DELETE') then 
		begin
//			edt_STPoi.Text := '';
//			edt_EDPoi.Text := '';
			edt_Charge.Text := '';
			edt_SEQ.Text    := '';
		end;
		if AGubun = 'INSERT' then 
		begin
			sTmp := '저장되었습니다' ;
  		btnSearch.Click;
		end else
		if AGubun = 'UPDATE' then
		begin
			sSeq := edt_SEQ.Text;
			iRow := cxGridALL7Charge.DataController.FindRecordIndexByText(0, 3, Trim(sSeq), False, True, True);

			if iRow > -1 then 
			begin
				cxGridALL7Charge.DataController.Values[iRow, 0] := edt_STPoi.Text;
				cxGridALL7Charge.DataController.Values[iRow, 1] := edt_EDPoi.Text;
				cxGridALL7Charge.DataController.Values[iRow, 2] := edt_Charge.Text;
			end;
			sTmp := '수정되었습니다';
		end else
		if AGubun = 'DELETE' then sTmp := '삭제되었습니다' ;
		GMessagebox(sTmp, CDMSI);
	Except
		GMessagebox('요금추가 실패', CDMSE);
	End;
end;

procedure TFrm_JON63.proc_Init;
var i : integer;
begin
	edt_STPoi.Text := '';
	edt_EDPoi.Text := '';
	edt_Charge.Text := '';
	edt_SEQ.Text    := '';
	
	cxGridALL7Charge.DataController.SetRecordCount(0);
	for i := 0 to cxGridALL7Charge.ColumnCount - 1 do
	begin
		cxGridALL7Charge.Columns[i].DataBinding.ValueType := 'String';
	end;
end;

procedure TFrm_JON63.TmrChkTagTimer(Sender: TObject);
begin
  TmrChkTag.Enabled := False;

  if Not Self.Showing then Exit;

  if ( Self.Tag <> TmrChkTag.Tag ) And ( bChkTime )  then
  begin
    if Frm_Main.JON01MNG[Self.Tag].Dock then
    begin
      if Assigned(MagneticWnd) then
      begin
        MagneticWnd.RemoveWindow(Self.Handle);
      end;

      MagneticWnd.AddWindow(Frm_JON00.Handle, 0, MagneticWndProc);
//      MagneticWndProc := Nil;
      TmrChkTag.Tag := Self.Tag;

      if not assigned(MagneticWndProc) then
        if Assigned(MagneticWnd) then
        begin
           MagneticWnd.AddWindow(Self.Handle, Frm_JON00.Handle, MagneticWndProc);
        end;
    end else
    begin
      if Assigned(MagneticWnd) then
      begin
        MagneticWnd.RemoveWindow(Self.Handle);
      end;

			MagneticWnd.AddWindow(Frm_Main.Frm_JON01N[Self.Tag].Handle, 0, MagneticWndProc);
//      MagneticWndProc := Nil;
      TmrChkTag.Tag := Self.Tag;

      if not assigned(MagneticWndProc) then
        if Assigned(MagneticWnd) then
        begin
					 MagneticWnd.AddWindow(Self.Handle, Frm_Main.Frm_JON01N[Self.Tag].Handle, MagneticWndProc);
        end;
    end;
  end;

  TmrChkTag.Enabled := True;
end;

procedure TFrm_JON63.WMCommand(var Msg: TMessage);
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

  inherited;

  if Assigned(MagneticWndProc) then
     MagneticWndProc(Self.Handle, WM_COMMAND, lGlue, Msg, dummyHandled);
end;

procedure TFrm_JON63.WMEnterSizeMove(var Msg: TMessage);
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

  inherited;

  if Assigned(MagneticWndProc) then
      MagneticWndProc(Self.Handle, WM_ENTERSIZEMOVE, lGlue, Msg, dummyHandled);
end;

procedure TFrm_JON63.WMExitSizeMove(var Msg: TMessage);
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

  inherited;

  if Assigned(MagneticWndProc) then
     MagneticWndProc(Self.Handle, WM_ExitSIZEMOVE, lGlue, Msg, dummyHandled);
end;

procedure TFrm_JON63.WMMoving(var Msg: TMessage);
var
   bHandled: Boolean;
begin
	if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

  if not Assigned(MagneticWndProc) then
      inherited
  else
  if MagneticWndProc(Self.Handle, WM_MOVING, lGlue, Msg, bHandled) then
    if not bHandled then
          inherited;
end;

procedure TFrm_JON63.WMShowHideWindow(var Msg: TMessage);
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

  inherited;

  if Assigned(MagneticWndProc) then
     MagneticWndProc(Self.Handle, WM_WINDOWPOSCHANGED, lGlue, Msg, dummyHandled);
end;

procedure TFrm_JON63.WMSizing(var Msg: TMessage);
var
   bHandled: Boolean;
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

  if not Assigned(MagneticWndProc) then
     inherited
  else
    if MagneticWndProc(Self.Handle, WM_SIZING, lGlue, Msg, bHandled) then
       if not bHandled then
          inherited;
end;

procedure TFrm_JON63.WMSysCommand(var Msg: TMessage);
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

  inherited;

  if Assigned(MagneticWndProc) then
    MagneticWndProc(Self.Handle, WM_SYSCOMMAND, lGlue, Msg, dummyHandled);
end;

end.

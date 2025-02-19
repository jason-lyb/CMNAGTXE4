unit xe_COM02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxGraphics, cxMaskEdit, MSXML2_TLB,
  cxDropDownEdit, cxCheckBox, StdCtrls, cxRadioGroup, cxGroupBox,
  cxButtons, cxTextEdit, cxControls, cxContainer, cxEdit, cxLabel,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, IniFiles,
  DB, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxPC,
  cxImageComboBox, cxCalendar, DateUtils, ExtCtrls,
  cxCurrencyEdit, AppEvnts, cxSpinEdit, ShellAPI, cxLookAndFeels, cxNavigator, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxPCdxBarPopupMenu, dxBarBuiltInMenu, dxSkinsCore,
  dxSkinscxPCPainter, dxDateRanges, dxSkinSharp, dxSkinOffice2010Silver, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  TFrm_COM02 = class(TForm)
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    pop_date: TPopupMenu;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N11: TMenuItem;
    PnlMain: TPanel;
    cxButton2: TcxButton;
    cxGroupBox2: TcxGroupBox;
    cxRadioButton3: TcxRadioButton;
    cxRadioButton4: TcxRadioButton;
    cxRadioButton5: TcxRadioButton;
    ed_memo: TcxTextEdit;
    chk_Status: TcxCheckBox;
    cb_Status: TcxComboBox;
    chk_Attend: TcxCheckBox;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton7: TcxButton;
    cxGroupBox3: TcxGroupBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    pop_date2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGridWkConnect: TcxGrid;
    twWkOrderList: TcxGridDBTableView;
    twWkOrderListColumn1: TcxGridDBColumn;
    twWkOrderListColumn2: TcxGridDBColumn;
    twWkOrderListColumn3: TcxGridDBColumn;
    twWkOrderListColumn4: TcxGridDBColumn;
    twWkOrderListColumn5: TcxGridDBColumn;
    twWkOrderListColumn6: TcxGridDBColumn;
    twWkOrderListColumn7: TcxGridDBColumn;
    twWkOrderListColumn8: TcxGridDBColumn;
    twWkOrderListColumn9: TcxGridDBColumn;
    twWkOrderListColumn10: TcxGridDBColumn;
    twWkOrderListColumn11: TcxGridDBColumn;
    twWkOrderListColumn12: TcxGridDBColumn;
    twWkOrderListColumn13: TcxGridDBColumn;
    twWkOrderListColumn14: TcxGridDBColumn;
    twWkOrderListColumn15: TcxGridDBColumn;
    twWkOrderListColumn20: TcxGridDBColumn;
    twWkOrderListColumn16: TcxGridDBColumn;
    twWkOrderListColumn17: TcxGridDBColumn;
    twWkOrderListColumn18: TcxGridDBColumn;
    twWkOrderListColumn19: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    tvwkCashList: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    tvwkCashListColumn1: TcxGridDBColumn;
    ed_Cash: TcxCurrencyEdit;
    de_stDate: TcxDateEdit;
    cxLabel10: TcxLabel;
    de_edDate: TcxDateEdit;
    RbButton1: TcxButton;
    chk_before: TcxCheckBox;
    cxButton6: TcxButton;
    dtstCash: TcxDateEdit;
    cxLabel17: TcxLabel;
    dtedCash: TcxDateEdit;
    cxButton1: TcxButton;
    cxButton8: TcxButton;
    cxLabel7: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel19: TcxLabel;
    ed_ChargeCash: TcxSpinEdit;
    btnRunXls: TcxButton;
    btnFillXls: TcxButton;
    cxTabSheet3: TcxTabSheet;
    cxGridCancel: TcxGrid;
    cxViewCancel: TcxGridDBTableView;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxLevelCancel: TcxGridLevel;
    dtCancelFrom: TcxDateEdit;
    cxLabel22: TcxLabel;
    dtCancelTo: TcxDateEdit;
    btnCancelDate: TcxButton;
    chkCancelBefore: TcxCheckBox;
    btnCancelSearch: TcxButton;
    btnCancelXls: TcxButton;
    edtMvMemo: TcxTextEdit;
    cxRadioButton6: TcxRadioButton;
    cxChkPubCashOut: TcxCheckBox;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    Panel1: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    cxLabel4: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    Shape3: TShape;
    cxGroupBox6: TcxGroupBox;
    cxLabel2: TcxLabel;
    Shape5: TShape;
    cxGroupBox7: TcxGroupBox;
    Shape4: TShape;
    Shape6: TShape;
    cxLabel5: TcxLabel;
    cxGroupBox8: TcxGroupBox;
    Shape7: TShape;
    cxLabel6: TcxLabel;
    Shape9: TShape;
    cb_Gubun: TcxComboBox;
    cxLblActive: TLabel;
    cbStatesView: TcxComboBox;
    cxChkMinusZero: TcxCheckBox;
    btnMinusZeroSet: TcxButton;
    grpSetMinusZeroSet: TcxGroupBox;
    cxEdtMinusZero: TcxTextEdit;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    cxViewCancelColumn1: TcxGridDBColumn;
    cxViewCancelColumn2: TcxGridDBColumn;
    cxTabSheet4: TcxTabSheet;
    cxGroupBox9: TcxGroupBox;
    Shape10: TShape;
    cxLabel8: TcxLabel;
    cxButton9: TcxButton;
    cxButton12: TcxButton;
    btn_MCashSchSearch: TcxButton;
    cxLabel15: TcxLabel;
    dt_MCashEnd: TcxDateEdit;
    dt_MCashFrom: TcxDateEdit;
    cxGrid2: TcxGrid;
    cxGridMCashList: TcxGridDBTableView;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Shape11: TShape;
    procedure cxRadioButton3Click(Sender: TObject);
    procedure chk_beforeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure chk_StatusClick(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure RbButton1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure twWkOrderListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton3Click(Sender: TObject);
    procedure chk_AttendClick(Sender: TObject);
    procedure cb_StatusClick(Sender: TObject);
    procedure de_stDateExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure ed_ChargeCashKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFillXlsClick(Sender: TObject);
    procedure btnRunXlsClick(Sender: TObject);
    procedure ed_ChargeCashKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ed_memoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCancelXlsClick(Sender: TObject);
    procedure chkCancelBeforeClick(Sender: TObject);
    procedure cxRadioButton6Click(Sender: TObject);
    procedure cxRadioButton1Click(Sender: TObject);
    procedure cxRadioButton2Click(Sender: TObject);
    procedure cxChkPubCashOutClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure cb_GubunPropertiesChange(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormHide(Sender: TObject);
    procedure cxChkMinusZeroClick(Sender: TObject);
    procedure btnMinusZeroSetClick(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure btn_MCashSchSearchClick(Sender: TObject);
    procedure dt_MCashFromExit(Sender: TObject);
  private
		igC02Top, igC02Left : Integer;
		gWkName : string;
    procedure AcceptFromCreate(sConfSlip: string; iRowIndex: Integer;
      sInsGubun: string);
    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure proc_FamilyBrChange;
		procedure proc_CashHistory(sWkSabun: string);
  public
    { Public declarations }
    Jon03Tag : Integer;
    WorA1Tag : Integer;

		procedure proc_recieve(ls_rxxml: Widestring);
		procedure proc_Search(iType: Integer);
		procedure proc_init;
		function GetXmlRecordCount2(ss_Xml: WideString): Integer;
		procedure proc_wk_Search(sWkSabun: string);
		procedure proc_MCashHistory(sWkSabun: string);
	end;

var
  Frm_COM02: TFrm_COM02;

implementation

{$R *.dfm}

uses xe_GNL, xe_Func, xe_xml, xe_packet, xe_Msg, Main, xe_SMS06,
  xe_Lib, xe_Query, xe_Dm, xe_gnl3, xe_Flash, xe_WOR01, xe_JON07;

procedure TFrm_COM02.cxRadioButton3Click(Sender: TObject);
begin
	if (GS_PRJ_AREA = 'O') and ((GT_SEL_BRNO.HDNO = 'A1903') or (GT_SEL_BRNO.HDNO = 'A100')) then
	begin

		if TcxRadioButton(Sender).Checked then
		begin
			if (cxRadioButton2.Checked) and (cxRadioButton5.Checked) then
			begin
				cb_Gubun.Visible := True;
				cb_Gubun.Left := cxLabel1.Left;
				cb_Gubun.Top := cxLabel1.Top;
				ed_memo.Text := cb_Gubun.Text;
			end	else
			begin
				ed_memo.Text := TcxRadioButton(Sender).Caption;
				cb_Gubun.Visible := False;
			end;
		end;
	end	else
	begin
		if TcxRadioButton(Sender).Checked then
		begin
			ed_memo.Text := TcxRadioButton(Sender).Caption;
		end
	end;

	if cxRadioButton6.Checked then
		ed_memo.Text := '[선입금]'+ed_memo.Text;
end;

procedure TFrm_COM02.chk_beforeClick(Sender: TObject);
begin
  de_stDate.Enabled := chk_before.Checked;
  de_edDate.Enabled := chk_before.Checked;
  RbButton1.Enabled := chk_before.Checked;
end;

procedure TFrm_COM02.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_COM02.FormClose(Sender: TObject; var Action: TCloseAction);
var
  EnvFile: TIniFile;
begin
  EnvFile := TIniFile.Create(ENVPATHFILE);
  try
    EnvFile.WriteInteger('WinPos', 'Com02Left',   igC02Left);
    EnvFile.WriteInteger('WinPos', 'Com02Top' ,   igC02Top );
  finally
    EnvFile.Free;
  end;
  Action := caFree;
end;

procedure TFrm_COM02.cxButton10Click(Sender: TObject);
begin
  try
    GS_EnvFile.WriteString('WORKER', 'MinusZeroMemo', cxEdtMinusZero.Text);
    ed_memo.Text := cxEdtMinusZero.Text;
    GrpSetMinusZeroSet.Visible := False;
  except

  end;
end;

procedure TFrm_COM02.cxButton11Click(Sender: TObject);
begin
  GrpSetMinusZeroSet.Visible := False;
end;

procedure TFrm_COM02.cxButton2Click(Sender: TObject);
var
  cash : string;
  I, ErrCode: integer;
  tmpGbn: string;
  Param, ErrMsg: string;
  sCash: string;
  sChargeCash: string;

	iCash, iACash: integer;
  iWkSabun: integer;
	iRow : Integer;
	dCashM: double;
begin
  // 공용캐쉬출금 일때에는 아래 항목을 체크 하지 않는다.[공용캐쉬출금:기사 공용캐쉬에서 차감하여 지사캐쉬로 입금함] 2011.08.23
  if ( cxChkPubCashOut.checked = False ) And ( cxChkMinusZero.Checked = False )  then
  begin
    if (cxRadioButton1.Checked = False) and (cxRadioButton2.Checked = False) and (cxRadioButton6.Checked = False) then
    begin
      ShowMessage('[입금], [출금] 또는 [선입금] 중에서 하나를 선택해 주세요!');
      cxRadioButton1.SetFocus;
      Exit;
    end;
  end;

  if ( ed_ChargeCash.Value < 1 ) And ( Not cxChkMinusZero.Checked ) then
  begin
    ShowMessage('[입출금액]을 입력해 주세요!');
    ed_ChargeCash.SetFocus;
    Exit;
  end;

  cash := ed_ChargeCash.Text;
  cash := StringReplace(cash, ',', '', [rfReplaceAll]);

	if cxRadioButton2.Checked then      //출금일 경우 (-) 처리
  	cash := '-' + cash;

  if cxRadioButton1.Checked then tmpGbn:='1' else
  if cxRadioButton2.Checked then tmpGbn:='2' else
  if cxRadioButton6.Checked then tmpGbn:='3';

	if Not func_EucKr_Check(ed_memo, 0) then Exit;

  try
    if cxChkMinusZero.Checked then
    begin
      // (-)캐쉬 0원초기화
      // 사번 + 메모
      Param := cxLabel11.Caption + '│' + En_Coding(ed_memo.Text);

      if not RequestBase(GetCallable05('SET_WK_CASH_CLEAR', 'cash.SET_WK_CASH_CLEAR', Param), ErrCode, ErrMsg) then
      begin
        GMessagebox('[' + IntToStr(ErrCode) + '] ' + ErrMsg , CDMSE);
				Exit;
      end;
    end else
    begin
			if cxChkPubCashOut.checked = False then
      begin
        // 자체캐쉬 입/출금 처리.
        //OutputDebugString(pchar('구분:'+tmpGbn));
        // 입출금선입금구분 + 사번 + 금액 + 메모
        Param := tmpGbn + '│' + cxLabel11.Caption + '│' + cash + '│' + StringReplace(En_Coding(ed_memo.Text),'[선입금]','',[rfReplaceAll]);
        // + '│' + GT_USERIF.HD + '│' + GT_USERIF.BR;

        if not RequestBase(GetCallable05('cashInOut', 'cash.cashInOut', Param), ErrCode, ErrMsg) then
        begin
					GMessagebox('[' + IntToStr(ErrCode) + '] ' + ErrMsg , CDMSE);
          Exit;
        end;
      end else
      begin
        // 공용캐쉬출금 [공용캐쉬출금:기사 공용캐쉬에서 차감하여 지사캐쉬로 입금함] 2011.08.23
        //OutputDebugString(pchar('구분:'+tmpGbn));
        // 사번 + 금액 + 메모
        Param := cxLabel11.Caption + '│' + cash + '│' + En_Coding(ed_memo.Text);
        // + '│' + GT_USERIF.HD + '│' + GT_USERIF.BR;

        if not RequestBase(GetCallable05('workerCashOut', 'cash.workerCashOut', Param), ErrCode, ErrMsg) then
        begin
          GMessagebox('[' + IntToStr(ErrCode) + '] ' + ErrMsg , CDMSE);
          Exit;
        end;
      end;
    end;

    // 2011.03.23
    begin
			if cxChkPubCashOut.checked = false then
			begin
				if cxRadioButton1.Checked then
				begin
					sCash := '입금';
				end
				else if cxRadioButton2.Checked then
				begin
					sCash := '출금';
				end
				else
				begin
					sCash := '선입금';
				end
			end else begin
				sCash := '공용캐쉬출금';
			end;

      if not GS_WKCASH_NOMSG then
      begin
        if cxChkMinusZero.Checked then
        begin
  				GMessagebox(ed_Cash.Text + '원을 0원초기화 하셨습니다.', CDMSI);
        end else
        begin
  				GMessagebox(ed_ChargeCash.Text + '원을 ' + sCash + ' 하셨습니다.', CDMSI);
        end;
      end;

			if (cxRadioButton1.Checked) or (cxRadioButton6.Checked) then
				sChargeCash := ed_ChargeCash.Text
			else
				sChargeCash := '-' + ed_ChargeCash.Text;

      if cxChkMinusZero.Checked then
      begin
  			ed_Cash.Text := '0';
      end else
      begin
  			sChargeCash := StringReplace(sChargeCash, ',', '', [rfReplaceAll]);
  			sCash := ed_Cash.Text;
  			sCash := StringReplace(sCash, ',', '', [rfReplaceAll]);
  			ed_Cash.Text := IntToStr(StrToIntDef(sCash, 0) + StrToIntDef(sChargeCash, 0));
      end;

      // 메인 변경
      iCash     := frm_Main.tvWkConnect.GetColumnByFieldName('잔액').Index;
			iWkSabun  := frm_Main.tvWkConnect.GetColumnByFieldName('기사사번').Index;
			iRow := frm_Main.tvWkConnect.DataController.FindRecordIndexByText(0, iWkSabun, cxLabel11.Caption, True, True, True);
			if iRow >= 0 then
			begin
				frm_Main.tvWkConnect.BeginUpdate;
				frm_Main.tvWkConnect.DataController.Values[iRow, iCash] := ed_Cash.Text;
        frm_Main.tvWkConnect.EndUpdate;
			end;
			dCashM := 0;

      if Assigned(Frm_Main.Frm_WORA1[WorA1Tag]) then
			begin
				iCash     := Frm_Main.Frm_WORA1[WorA1Tag].cxgWkCounsel.GetColumnByFieldName('자체캐쉬').Index;
				iACash    := Frm_Main.Frm_WORA1[WorA1Tag].cxgWkCounsel.GetColumnByFieldName('공용캐쉬').Index;
				iWkSabun  := Frm_Main.Frm_WORA1[WorA1Tag].cxgWkCounsel.GetColumnByFieldName('기사사번').Index;
				iRow      := Frm_Main.Frm_WORA1[WorA1Tag].cxgWkCounsel.DataController.FindRecordIndexByText(0, iWkSabun, cxLabel11.Caption, True, True, True);
				if iRow >= 0 then
				begin
          if cxChkMinusZero.Checked then
          begin
            Frm_Main.Frm_WORA1[WorA1Tag].cxgWkCounsel.DataController.Values[iRow, iCash ] := '0';
            Frm_Main.Frm_WORA1[WorA1Tag].cxgWkCounsel.DataController.Values[iRow, iACash] := '0';
          end else
          begin
  					if cxChkPubCashOut.checked = false then
  					begin
  						dCashM := StrToFloatDef(Frm_Main.Frm_WORA1[WorA1Tag].cxgWkCounsel.DataController.Values[iRow, iCash], 0);
  						if cxRadioButton1.Checked then
  						begin
  							dCashM := dCashM + StrToFloatDef(StringReplace(ed_ChargeCash.Text, ',', '', [rfReplaceAll]),0);
  						end else
              if cxRadioButton2.Checked then
  						begin
  							dCashM := dCashM - StrToFloatDef(StringReplace(ed_ChargeCash.Text, ',', '', [rfReplaceAll]),0);
  						end else
  						begin
  							dCashM := dCashM + StrToFloatDef(StringReplace(ed_ChargeCash.Text, ',', '', [rfReplaceAll]),0);
  						end;
  						Frm_Main.Frm_WORA1[WorA1Tag].cxgWkCounsel.DataController.Values[iRow, iCash] := FloatToStr(dCashM);
  					end else
  					begin
  						dCashM := StrToFloatDef(Frm_Main.Frm_WORA1[WorA1Tag].cxgWkCounsel.DataController.Values[iRow, iACash], 0);
  						dCashM := dCashM - StrToFloatDef(StringReplace(ed_ChargeCash.Text, ',', '', [rfReplaceAll]),0);
              Frm_Main.Frm_WORA1[WorA1Tag].cxgWkCounsel.DataController.Values[iRow, iACash] := FloatToStr(dCashM);
  					end;
          end;
				end;
      end;

      if ed_Cash.Value >= 0 then
      begin
        cxChkMinusZero.Enabled := False;
        cxChkMinusZero.Checked := False;
        cxChkMinusZeroClick(cxChkMinusZero);
      end else
      begin
        cxChkMinusZero.Enabled := True;
      end;

      ed_ChargeCash.Text := '';
      if GS_WKCASH_AUTOCLOSE then
        Hide
      else
        proc_Search(1);
    end;
  finally
    cxPageControl1.ActivePageIndex := 1;
    for I := 0 to tvwkCashList.ColumnCount - 1 do
      tvwkCashList.Columns[I].SortOrder := soNone;
    cxGridDBColumn2.SortIndex := 0;
    cxGridDBColumn2.SortOrder := soDescending;
    MenuItem6.Click;
    cxButton8.Click;
  end;
end;

procedure TFrm_COM02.proc_recieve(ls_rxxml: Widestring);
var
  xdom: msDomDocument;
  ls_ClientKey, ls_Msg_Err, sTemp: string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  i, j, iCash, iWkSabun, iRow, iSumCash: Integer;
  sCash, sChargeCash, sBaecha, sFinish: string;
  sWkBrNum, sSabun, sHp, sCyCash: string;
  Indate, BrNo, CallCenter, wsUName, wsBigo: string;
begin
	try
    xdom := ComsDomDocument.Create;
    try
      if not xdom.loadXML(ls_rxxml) then Exit;
      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_ClientKey := GetXmlClientKey(ls_rxxml);
        ls_ClientKey := Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5);
        case StrToIntDef(ls_ClientKey, 1) of
          1:
            begin
              if cxChkPubCashOut.checked = false then
              begin
                if cxRadioButton1.Checked then
                  sCash := '입급'
                else if cxRadioButton2.Checked then
                  sCash := '출금'
                else
                  sCash := '선입금';
              end else begin
                sCash := '공용캐쉬출금';
              end;

              if not GS_WKCASH_NOMSG then
                GMessagebox(ed_ChargeCash.Text + '원을 ' + sCash + '하셨습니다.', CDMSI);
              if (cxRadioButton1.Checked) or (cxRadioButton6.checked) then
                sChargeCash := ed_ChargeCash.Text
              else
                sChargeCash := '-' + ed_ChargeCash.Text;
              sChargeCash := StringReplace(sChargeCash, ',', '', [rfReplaceAll]);
              sCash := ed_Cash.Text;
              sCash := StringReplace(sCash, ',', '', [rfReplaceAll]);
              ed_Cash.Text := IntToStr(StrToIntDef(sCash, 0) + StrToIntDef(sChargeCash, 0));

              if ed_Cash.Value >= 0 then
              begin
                cxChkMinusZero.Enabled := False;
                cxChkMinusZero.Checked := False;
                cxChkMinusZeroClick(cxChkMinusZero);
              end else
              begin
                cxChkMinusZero.Enabled := True;
              end;

              // 메인 변경
              iCash     := frm_Main.tvWkConnect.GetColumnByFieldName('잔액').Index;
              iWkSabun  := frm_Main.tvWkConnect.GetColumnByFieldName('기사사번').Index;
              iRow := frm_Main.tvWkConnect.DataController.FindRecordIndexByText(0, iWkSabun, cxLabel11.Caption, True, True, True);
              if iRow >= 0 then
              begin
                frm_Main.tvWkConnect.BeginUpdate;
                frm_Main.tvWkConnect.DataController.Values[iRow, iCash] := ed_Cash.Text;
                frm_Main.tvWkConnect.EndUpdate;
              end;

              if Assigned(Frm_Main.Frm_WORA1[WorA1Tag]) then
              begin
                iCash     := Frm_Main.Frm_WORA1[WorA1Tag].cxgWkCounsel.GetColumnByFieldName('자체캐쉬').Index;
                iWkSabun  := Frm_Main.Frm_WORA1[WorA1Tag].cxgWkCounsel.GetColumnByFieldName('기사사번').Index;
                iRow      := Frm_Main.Frm_WORA1[WorA1Tag].cxgWkCounsel.DataController.FindRecordIndexByText(0, iWkSabun, cxLabel11.Caption, True, True, True);
                if iRow >= 0 then
                begin
                  Frm_Main.Frm_WORA1[WorA1Tag].cxgWkCounsel.BeginUpdate;
                  Frm_Main.Frm_WORA1[WorA1Tag].cxgWkCounsel.DataController.Values[iRow, iCash] := ed_Cash.Text;
                  Frm_Main.Frm_WORA1[WorA1Tag].cxgWkCounsel.EndUpdate;
                end;
              end;
              ed_ChargeCash.Text := '';
              if GS_WKCASH_AUTOCLOSE then
                Hide
              else
                proc_Search(1);
            end;
          2:
            begin
              tvwkCashList.BeginUpdate;
              tvwkCashList.DataController.SetRecordCount(0);
              if (0 < GetXmlRecordCount(ls_rxxml)) then
              begin
                lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                ls_Rcrd := TStringList.Create;
                try
                  for i := 0 to lst_Result.length - 1 do
                  begin
                    GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                    ls_Rcrd.Insert(0, IntToStr(i + 1));
                    iRow := tvwkCashList.DataController.AppendRecord;
                    for j := 0 to tvwkCashList.ColumnCount - 1 do
                    begin
                      if (UpperCase(tvwkCashList.Columns[j].DataBinding.ValueType) <> 'STRING')
                        and (StrToFloatDef(ls_Rcrd[j], 0) = 0) then
                        ls_Rcrd[j] := '0';
                      tvwkCashList.DataController.Values[iRow, j] := ls_Rcrd[j]; // 지사명
                    end;
                  end;
                finally
                  ls_Rcrd.Free;
                end;
              end;
              tvwkCashList.EndUpdate;
            end;
          3:
            begin
              twWkOrderList.BeginUpdate;
              twWkOrderList.DataController.SetRecordCount(0);
              if (0 < GetXmlRecordCount2(ls_rxxml)) then
              begin
                lst_Result := xdom.documentElement.selectNodes('/cdms/Service/DrivingLists/Order');
                for i := 0 to lst_Result.length - 1 do
                begin
                  iRow := twWkOrderList.DataController.AppendRecord;
                  twWkOrderList.DataController.Values[iRow, 0] := lst_Result.item[i].attributes.getNamedItem('CustTel').Text;
                  twWkOrderList.DataController.Values[iRow, 1] := lst_Result.item[i].attributes.getNamedItem('Status').Text;
                  twWkOrderList.DataController.Values[iRow, 2] := lst_Result.item[i].attributes.getNamedItem('Baecha').Text;
                  twWkOrderList.DataController.Values[iRow, 3] := lst_Result.item[i].attributes.getNamedItem('Finish').Text;
                  twWkOrderList.DataController.Values[iRow, 4] := lst_Result.item[i].attributes.getNamedItem('StartArea').Text;
                  twWkOrderList.DataController.Values[iRow, 5] := lst_Result.item[i].attributes.getNamedItem('EndArea').Text;
                  twWkOrderList.DataController.Values[iRow, 6] := lst_Result.item[i].attributes.getNamedItem('Charge').Text;
                  twWkOrderList.DataController.Values[iRow, 7] := strtocall(lst_Result.item[i].attributes.getNamedItem('KeyNumber').Text);
                  twWkOrderList.DataController.Values[iRow, 8] := lst_Result.item[i].attributes.getNamedItem('BrName').Text;
                  twWkOrderList.DataController.Values[iRow, 9] := lst_Result.item[i].attributes.getNamedItem('CustName').Text;
                  twWkOrderList.DataController.Values[iRow, 10] := lst_Result.item[i].attributes.getNamedItem('CustType').Text;
                  twWkOrderList.DataController.Values[iRow, 11] := lst_Result.item[i].attributes.getNamedItem('PayMethod').Text;
                  twWkOrderList.DataController.Values[iRow, 12] := lst_Result.item[i].attributes.getNamedItem('ConfInfo').Text;
                  twWkOrderList.DataController.Values[iRow, 13] := lst_Result.item[i].attributes.getNamedItem('InId').Text;
                  twWkOrderList.DataController.Values[iRow, 14] := lst_Result.item[i].attributes.getNamedItem('CbName').Text;
                  twWkOrderList.DataController.Values[iRow, 15] := lst_Result.item[i].attributes.getNamedItem('CbDept').Text;
                  twWkOrderList.DataController.Values[iRow, 16] := lst_Result.item[i].attributes.getNamedItem('ConfSlip').Text;
                  twWkOrderList.DataController.Values[iRow, 17] := lst_Result.item[i].attributes.getNamedItem('InDate').Text;
                  twWkOrderList.DataController.Values[iRow, 18] := lst_Result.item[i].attributes.getNamedItem('AcceptCenter').Text;
                  twWkOrderList.DataController.Values[iRow, 19] := lst_Result.item[i].attributes.getNamedItem('BrNo').Text;

                //타사콜인경우 고객정보 보호
                  Indate := lst_Result.item[i].attributes.getNamedItem('InDate').Text;
                  BrNo := lst_Result.item[i].attributes.getNamedItem('BrNo').Text;
                  CallCenter := lst_Result.item[i].attributes.getNamedItem('AcceptCenter').Text;

                  if ((GT_USERIF.LV = '60') and (scb_BranchCode.IndexOf(BrNo) < 0))
                    or ((GT_USERIF.LV = '40') and ((Trim(BrNo) <> GT_USERIF.BR)))
                    or ((GT_USERIF.LV = '10') and ((Trim(CallCenter) <> GT_USERIF.BR) or IsCustInfoDayOpen(BrNo, Indate))) then
                  begin
                    // 고객명
                    wsUName := Trim(twWkOrderList.DataController.Values[iRow, 9]);
                    if wsUName <> '' then
                      twWkOrderList.DataController.Values[iRow, 9] := '***';
                    // 적요
                    wsBigo := Trim(twWkOrderList.DataController.Values[iRow, 12]);
                    if wsBigo <> '' then
                      twWkOrderList.DataController.Values[iRow, 12] := '*****';
		  						end;

                  // 고객번호 보호
                  twWkOrderList.DataController.Values[iRow, 0] := func_Cust_Tel(
                                                                  twWkOrderList.DataController.Values[iRow, 0]
                                                                , twWkOrderList.DataController.Values[iRow, 17]
                                                                , twWkOrderList.DataController.Values[iRow, 19]
                                                                , twWkOrderList.DataController.Values[iRow, 18]
                                                              );
                  // 배차시간
                  sBaecha := twWkOrderList.DataController.Values[iRow, 2];
                  if (Length(sBaecha) <> 11) and (sBaecha <> '') then
                  begin
                    sBaecha := stringreplace(sBaecha, '-', '', [rfReplaceAll]);
                    sBaecha := stringreplace(sBaecha, ':', '', [rfReplaceAll]);
                    sBaecha := stringreplace(sBaecha, ' ', '', [rfReplaceAll]);
                    sBaecha := Format('%s-%s-%s %s:%s', [copy(sBaecha, 1, 4), copy(sBaecha, 5, 2), copy(sBaecha, 7, 2), copy(sBaecha, 9, 2), copy(sBaecha, 11, 2)]);

                    twWkOrderList.DataController.Values[iRow, 2] := sBaecha;
                  end;
                  // 완료시간
                  sfinish := twWkOrderList.DataController.Values[iRow, 3];
                  if (Length(sfinish) <> 11) and (sfinish <> '') then
                  begin
                    sfinish := stringreplace(sfinish, '-', '', [rfReplaceAll]);
                    sfinish := stringreplace(sfinish, ':', '', [rfReplaceAll]);
                    sfinish := stringreplace(sfinish, ' ', '', [rfReplaceAll]);
                    sfinish := copy(sfinish, 1, 4) + '-' + copy(sfinish, 5, 2) + '-' + copy(sfinish, 7, 2) + ' ' + copy(sfinish, 9, 2)
                                + ':' + copy(sfinish, 11, 2);

                    twWkOrderList.DataController.Values[iRow, 3] := sfinish;
                  end;
                end;
              end;
              twWkOrderList.EndUpdate;
            end;
          4:
            begin
              GMessagebox('성공하였습니다.', CDMSI);
              frm_Main.proc_wkCount;
            end;
          5:
            begin
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
              ls_Rcrd := TStringList.Create;
              try
                GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
								gWkName := ls_Rcrd[0];
                sWkBrNum := ls_Rcrd[1];
                sSabun := ls_Rcrd[2];
                sHp := ls_Rcrd[3];
                sCash := ls_Rcrd[4];
                sCyCash := ls_Rcrd[5];

                iSumCash := StrToIntDef(sCash, 0) + StrToIntDef(sCyCash, 0);

								PnlTitle.Caption := '  기사 : ' + gWkName + '(' + sSabun + ') [' + sHp + ']';
								cxLabel11.Caption := sSabun;
                cxLabel12.Caption := ls_Rcrd[8];
                cxLabel13.Caption := StringReplace(sHp, '-', '', [rfReplaceAll]);
                ed_Cash.Text := FormatFloat('#,##0', iSumCash);

                if ed_Cash.Value >= 0 then
                begin
                  cxChkMinusZero.Enabled := False;
                  cxChkMinusZero.Checked := False;
                  cxChkMinusZeroClick(cxChkMinusZero);
                end else
                begin
                  cxChkMinusZero.Enabled := True;
                end;

                chk_Attend.Checked := False;
                chk_Attend.Enabled := False;
                if ls_Rcrd[6] = '' then
                  chk_Attend.Enabled := True;
                chk_Status.Checked := False;
								cb_Status.Enabled := False;
                case StrToIntDef(ls_Rcrd[7], 0) of
									0: cb_Status.ItemIndex := 0;
                  1: cb_Status.ItemIndex := 1;
                  10: cb_Status.ItemIndex := 2;
                  21: cb_Status.ItemIndex := 3;
                  22: cb_Status.ItemIndex := 4;
                  23: cb_Status.ItemIndex := 5;
                  30: cb_Status.ItemIndex := 6;
                  40: cb_Status.ItemIndex := 7;
                  60: cb_Status.ItemIndex := 8;
									80: cb_Status.ItemIndex := 10;//보험공유
									90..99: cb_Status.ItemIndex := 9;
								end;
                if (GT_USERIF.LV <> '60') and (cb_Status.ItemIndex = 8) then
                  cb_Status.Enabled := False
                else
                  cb_Status.Enabled := True;
                chk_before.Checked := False;
                de_stDate.Enabled := False;
                de_edDate.Enabled := False;
                RbButton1.Enabled := False;
                cxRadioButton4.Checked := True;
              finally
                ls_Rcrd.Free;
              end;
            end;
          6:
            begin
              cxViewCancel.BeginUpdate;
              cxViewCancel.DataController.SetRecordCount(0);

              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Response/Data');
              for i := 0 to lst_Result.length - 1 do
              begin
                iRow := cxViewCancel.DataController.AppendRecord;

                sTemp := lst_Result.item[i].attributes.getNamedItem('CDate').Text;
                if (Length(sTemp) > 11) and (sTemp <> '') then
                begin
                  sTemp := stringreplace(sTemp, '-', '', [rfReplaceAll]);
                  sTemp := stringreplace(sTemp, ':', '', [rfReplaceAll]);
                  sTemp := stringreplace(sTemp, ' ', '', [rfReplaceAll]);
                  sTemp := copy(sTemp, 1, 4) + '-' + copy(sTemp, 5, 2) + '-' + copy(sTemp, 7, 2) + ' ' + copy(sTemp, 9, 2) + ':' + copy(sTemp, 11, 2);
                end;
                cxViewCancel.DataController.Values[iRow, 0] := sTemp;
                cxViewCancel.DataController.Values[iRow, 1] := lst_Result.item[i].attributes.getNamedItem('Penalty').Text;
                cxViewCancel.DataController.Values[iRow, 2] := lst_Result.item[i].attributes.getNamedItem('ConfSlip').Text;
                cxViewCancel.DataController.Values[iRow, 3] := lst_Result.item[i].attributes.getNamedItem('Status').Text;
                sTemp := lst_Result.item[i].attributes.getNamedItem('FInDate').Text;
                if (Length(sTemp) > 11) and (sTemp <> '') then
                begin
                  sTemp := stringreplace(sTemp, '-', '', [rfReplaceAll]);
                  sTemp := stringreplace(sTemp, ':', '', [rfReplaceAll]);
                  sTemp := stringreplace(sTemp, ' ', '', [rfReplaceAll]);
                  sTemp := copy(sTemp, 1, 4) + '-' + copy(sTemp, 5, 2) + '-' + copy(sTemp, 7, 2) + ' ' + copy(sTemp, 9, 2) + ':' + copy(sTemp, 11, 2);
                end;
                cxViewCancel.DataController.Values[iRow, 4] := sTemp;//lst_Result.item[i].attributes.getNamedItem('FInDate').Text;
                cxViewCancel.DataController.Values[iRow, 5] := lst_Result.item[i].attributes.getNamedItem('StartArea').Text;
                cxViewCancel.DataController.Values[iRow, 6] := lst_Result.item[i].attributes.getNamedItem('EndArea').Text;
                cxViewCancel.DataController.Values[iRow, 7] := lst_Result.item[i].attributes.getNamedItem('Charge').Text;
                cxViewCancel.DataController.Values[iRow, 8] := strtocall(lst_Result.item[i].attributes.getNamedItem('KeyNumber').Text);
                cxViewCancel.DataController.Values[iRow, 9] := lst_Result.item[i].attributes.getNamedItem('BrName').Text;
                cxViewCancel.DataController.Values[iRow, 10] := strtocall(lst_Result.item[i].attributes.getNamedItem('BrTel').Text);
                cxViewCancel.DataController.Values[iRow, 11] := lst_Result.item[i].attributes.getNamedItem('PayMethod').Text;
                cxViewCancel.DataController.Values[iRow, 12] := lst_Result.item[i].attributes.getNamedItem('InID').Text;
                cxViewCancel.DataController.Values[iRow, 13] := lst_Result.item[i].attributes.getNamedItem('CbName').Text;
                cxViewCancel.DataController.Values[iRow, 14] := lst_Result.item[i].attributes.getNamedItem('CbDept').Text;
                try
                  cxViewCancel.DataController.Values[iRow, 15] := lst_Result.item[i].attributes.getNamedItem('BrNo').Text;
                  cxViewCancel.DataController.Values[iRow, 16] := lst_Result.item[i].attributes.getNamedItem('Callcenter').Text;
                except
                  cxViewCancel.DataController.Values[iRow, 15] := '';
                  cxViewCancel.DataController.Values[iRow, 16] := '';
                end;
              end;
              cxViewCancel.EndUpdate;
            end;
          7:
            begin
              if (0 < GetXmlRecordCount(ls_rxxml)) then
              begin
                lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                ls_Rcrd := TStringList.Create;
                try
                  if lst_Result.length > 0 then
                    edtMvMemo.Text := lst_Result.item[0].attributes.getNamedItem('Value').Text;
                finally
                  ls_Rcrd.Free;
                end;
              end;
            end;
        end;
      end else
      begin
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
      end;
    finally
      xdom := Nil;
    end;
  except
  end;
end;

procedure TFrm_COM02.chk_StatusClick(Sender: TObject);
begin
  if chk_Status.Checked then
  begin
    cb_Status.Enabled := True;
		cxButton3.Enabled := True;
	end
  else
    cb_Status.Enabled := False;

  if (not chk_Status.Checked) and (not chk_Attend.Checked) then
		cxButton3.Enabled := False;

	if TCK_USER_PER.COM_WkStautsChange <> '1' then
		cxButton3.Enabled := False;
end;

procedure TFrm_COM02.cxButton5Click(Sender: TObject);
begin
  if ( Not Assigned(Frm_SMS06) ) Or ( Frm_SMS06 = NIl ) then Frm_SMS06 := TFrm_SMS06.Create(Nil);
  Frm_SMS06.cxTextEdit1.Text := cxLabel13.Caption;
  Frm_SMS06.cxTextEdit2.Text := GetBrOfficeTel(cxLabel12.Caption);
  Frm_SMS06.cxMemo1.Text := '';
  Frm_SMS06.Show;
end;

procedure TFrm_COM02.cxButton7Click(Sender: TObject);
begin
  hide;
end;

procedure TFrm_COM02.btnMinusZeroSetClick(Sender: TObject);
begin
  try
    GrpSetMinusZeroSet.Top := 30;
    GrpSetMinusZeroSet.Left := 386;
    if GrpSetMinusZeroSet.Visible then
    begin
      GrpSetMinusZeroSet.Visible := False;
      cxEdtMinusZero.Text := '';
    end else
    begin
      GrpSetMinusZeroSet.Visible := True;
      cxEdtMinusZero.Text := GS_EnvFile.ReadString('WORKER', 'MinusZeroMemo', '');
    end;
  except

  end;
end;

procedure TFrm_COM02.cxButton6Click(Sender: TObject);
begin
	proc_Search(cxPageControl1.ActivePageIndex);
end;

procedure TFrm_COM02.proc_Search(iType: Integer);
var
  ls_TxQry, rv_str, sQueryTemp: string;
  ls_TxLoad: string; // XML File Load
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
  ls_E717str: string;
begin

	ls_E717str := FormatDateTime('yyyymmdd', now-1);

  if iType = 0 then
  begin
		if (de_edDate.Date - de_stDate.Date) >= 32 then
    begin
      GMessagebox('검색기간은 한달이상 할 수 없습니다.', CDMSE);
      de_stDate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 7;
			de_edDate.Date := de_stDate.Date + 7;
      exit;
    end;
    ls_TxLoad := GTx_UnitXmlLoad('C031N1.xml');
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', Self.Caption + '3', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'WkSabunString', cxLabel11.Caption, [rfReplaceAll]);
    if not chk_before.Checked then
    begin
      ls_TxLoad := StringReplace(ls_TxLoad, 'FromDateString', '', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ToDateString', '', [rfReplaceAll]);
    end else
    begin
      ls_TxLoad := StringReplace(ls_TxLoad, 'FromDateString', FormatDateTime('yyyymmdd', de_stDate.Date) + '090000', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ToDateString',   FormatDateTime('yyyymmdd', de_edDate.Date) + '090000', [rfReplaceAll]);
    end;

    if cbStatesView.ItemIndex = 0 then
      ls_TxLoad := StringReplace(ls_TxLoad, 'ConfStatusString', '', [rfReplaceAll])    // 전체
    else
    if cbStatesView.ItemIndex = 1 then
      ls_TxLoad := StringReplace(ls_TxLoad, 'ConfStatusString', '2', [rfReplaceAll])    // 완료
    else
    if cbStatesView.ItemIndex = 2 then
      ls_TxLoad := StringReplace(ls_TxLoad, 'ConfStatusString', '8', [rfReplaceAll]);   // 취소

  end else
  if iType = 1 then
  begin
		proc_CashHistory(cxLabel11.Caption);
		exit;

{    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_WORKER_CASH_LIST, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [
        cxLabel11.Caption,
				FormatDatetime('yyyymmdd', dtstCash.date),
				FormatDatetime('yyyymmdd', dtedCash.date)
      ]);
		//end;

    // 수신번호, 단말기
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', Self.Caption + '2', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, #9, '', [rfReplaceAll]);}
  end else
  if iType = 2 then
  begin
    if (dtCancelTo.Date - dtCancelFrom.Date) >= 32 then
    begin
      GMessagebox('검색기간은 한달이상 할 수 없습니다.', CDMSE);
      dtCancelFrom.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 7;
      dtCancelTo.Date := dtCancelFrom.Date + 7;
      exit;
    end;
    ls_TxLoad := GTx_UnitXmlLoad('C068N1.xml');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', Self.Caption + '6', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'WkSabunStr', cxLabel11.Caption, [rfReplaceAll]);
    if not chkCancelBefore.Checked then
    begin
      ls_TxLoad := StringReplace(ls_TxLoad, 'FromDateStr', '', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ToDateStr', '', [rfReplaceAll]);
    end else
    begin
      ls_TxLoad := StringReplace(ls_TxLoad, 'FromDateStr', FormatDateTime('yyyymmdd', dtCancelFrom.Date) + '090000', [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ToDateStr',   FormatDateTime('yyyymmdd', dtCancelTo.Date) + '090000', [rfReplaceAll]);
    end;
	end else
	if iType = 3 then   //// 기타정지인 경우 기타정지 사유 표시
	begin
		ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
		fGet_BlowFish_Query(GSQ_WKMVMEMO, sQueryTemp);
		ls_TxQry := Format(sQueryTemp, [cxLabel11.Caption]);
		// 수신번호, 단말기
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', Self.Caption + '7', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, #9, '', [rfReplaceAll]);
	end else
	if iType = 4 then
	begin
		proc_MCashHistory(cxLabel11.Caption);
		exit;
	end;

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
    Frm_Flash.Hide;
    FreeAndNil(slReceive);
  end;
end;

procedure TFrm_COM02.FormShow(Sender: TObject);
begin
  fSetFont(Frm_COM02, GS_FONTNAME);
  fSetSkin(Frm_COM02);

  if GB_DARKMODE then ed_Cash.Style.TextColor := clBlack;
  
//  proc_init;
end;

procedure TFrm_COM02.proc_init;
var
  i: Integer;
begin
	Self.Left := igC02Left;
  Self.Top  := igC02Top;

  for i := 0 to tvwkCashList.ColumnCount - 1 do
    tvwkCashList.Columns[i].DataBinding.ValueType := 'String';
  tvwkCashList.Columns[0].DataBinding.ValueType := 'Integer';
  tvwkCashList.Columns[4].DataBinding.ValueType := 'Currency';
  tvwkCashList.Columns[5].DataBinding.ValueType := 'Currency';
  tvwkCashList.Columns[6].DataBinding.ValueType := 'Currency';
	tvwkCashList.Columns[9].DataBinding.ValueType := 'Integer';
	tvwkCashList.DataController.SetRecordCount(0);

  if GB_365System then ed_ChargeCash.Value := 0
                  else ed_ChargeCash.Value := 10000;

  cbStatesView.ItemIndex := 0;

  try
    if TCK_USER_PER.COM_WkCashView = '1' then
    begin
      ed_Cash.Properties.EchoMode := eemNormal;
      Frm_Main.gCurProperties.EchoMode := eemNormal;
    end else
    begin
      ed_Cash.Properties.EchoMode := eemPassword;
      Frm_Main.gCurProperties.EchoMode := eemPassword;
    end;
    tvwkCashList.Columns[4].Properties := Frm_Main.gCurProperties;
    tvwkCashList.Columns[5].Properties := Frm_Main.gCurProperties;
    tvwkCashList.Columns[6].Properties := Frm_Main.gCurProperties;

    for i := 0 to twWkOrderList.ColumnCount - 1 do
      twWkOrderList.Columns[i].DataBinding.ValueType := 'String';
		twWkOrderList.Columns[6].DataBinding.ValueType := 'Currency';
		twWkOrderList.DataController.SetRecordCount(0);

		for i := 0 to cxViewCancel.ColumnCount - 1 do
      cxViewCancel.Columns[i].DataBinding.ValueType := 'String';
		cxViewCancel.Columns[1].DataBinding.ValueType := 'Currency';
		cxViewCancel.Columns[7].DataBinding.ValueType := 'Currency';
		cxViewCancel.Columns[1].Properties := Frm_Main.gCurProperties;
		cxViewCancel.Columns[7].Properties := Frm_Main.gCurProperties;
		cxViewCancel.DataController.SetRecordCount(0);

    de_stDate.Date := StrToDate(Date8to10(StartDateTime('yyyymmdd')));
		de_edDate.Date := de_stDate.Date + 1;

    dtstCash.Date := StrToDate(Date8to10(StartDateTime('yyyymmdd'))) - 2;
    dtedCash.Date := dtstCash.Date + 3;

		dtCancelFrom.Date := StrToDate(Date8to10(StartDateTime('yyyymmdd')));
		dtCancelTo.Date := dtCancelFrom.Date + 1;

		cxGridMCashList.DataController.SetRecordCount(0);
		for i := 0 to cxGridMCashList.ColumnCount - 1 do
			cxGridMCashList.Columns[i].DataBinding.ValueType := 'String';
		cxGridMCashList.Columns[0].DataBinding.ValueType := 'Integer';
		cxGridMCashList.Columns[3].DataBinding.ValueType := 'Currency';
		cxGridMCashList.Columns[4].DataBinding.ValueType := 'Currency';

    if TCK_USER_PER.COM_WkCashView = '1' then
    begin
			Frm_Main.gCurProperties.EchoMode := eemNormal;
		end else
		begin
			Frm_Main.gCurProperties.EchoMode := eemPassword;
    end;
		cxGridMCashList.Columns[3].Properties := Frm_Main.gCurProperties;
		cxGridMCashList.Columns[4].Properties := Frm_Main.gCurProperties;

		dt_MCashFrom.Date := StrToDate(Date8to10(StartDateTime('yyyymmdd')));
		dt_MCashEnd.Date := dt_MCashFrom.Date + 1;

		chkCancelBefore.Checked := False;

    cxButton2.Enabled := False;

    if (TCK_USER_PER.COM_WkCharge = '1') and (TCK_USER_PER.COM_WkCashView = '1') then
      cxButton2.Enabled := True;

  	cxButton3.Enabled := False;
  	if (TCK_USER_PER.COM_WkStautsChange = '1') then
  		cxButton3.Enabled := True;

    if TCK_USER_PER.WOR_MngModify = '1' then
      cxButton4.Enabled := True
    else
      cxButton4.Enabled := False;

    cxRadioButton1.Checked := GS_WKCASH_TYPE_DEFAULT = cxRadioButton1.Caption;
    cxRadioButton2.Checked := GS_WKCASH_TYPE_DEFAULT = cxRadioButton2.Caption;
    cxRadioButton6.Checked := GS_WKCASH_TYPE_DEFAULT = cxRadioButton6.Caption;

    cxRadioButton3.Checked := GS_WKCASH_PAYTYPE_DEFAULT = cxRadioButton3.Caption;
    cxRadioButton4.Checked := GS_WKCASH_PAYTYPE_DEFAULT = cxRadioButton4.Caption;
    cxRadioButton5.Checked := GS_WKCASH_PAYTYPE_DEFAULT = cxRadioButton5.Caption;

    if (GS_WKCASH_TYPE_DEFAULT = cxRadioButton3.Caption) or
       (GS_WKCASH_TYPE_DEFAULT = cxRadioButton4.Caption) or
       (GS_WKCASH_TYPE_DEFAULT = cxRadioButton5.Caption)  then
     ed_memo.Text := GS_WKCASH_PAYTYPE_DEFAULT;

    if GS_WKCASH_FIXACCOUNT then
    begin
      cxPageControl1.ActivePageIndex := 1;
      cxButton8.Click;
    end
    else
      cxButton6Click(self);

    ed_ChargeCash.SetFocus;

		//수도권일경우에만 추가
		if (GS_PRJ_AREA = 'S') or (GT_KAKAOUse) then	
		begin
			if cb_Status.Properties.Items.IndexOf('단순보험공유') < 0 then
				cb_Status.Properties.Items.Add('단순보험공유');
		end;

		
	{ TODO : 기타정지인 경우 기타정지 사유 표시 }
    // 기타정지인 경우 기타정지 사유 표시
    if cb_Status.ItemIndex = 7 then
    begin
      edtMvMemo.Text := '';
      edtMvMemo.Visible := True;
      proc_Search(3);
    end else
    begin
      edtMvMemo.Visible := False;
    end;
  Except
  end;
end;

procedure TFrm_COM02.proc_MCashHistory(sWkSabun: string);
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i, j : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	sTmp : string;
begin
	SetDebugeWrite('Tfrm_AIC01.btnSearchA2Click');
	Try
		cxGridMCashList.DataController.SetRecordCount(0);

		Param := sWkSabun;
		Param := Param + '│' + FormatDatetime('yyyymmdd', dt_MCashFrom.date);
		Param := Param + '│' + FormatDatetime('yyyymmdd', dt_MCashEnd.date);

{		if TCK_USER_PER.AIC_DetailList <> '1' then  // 회사 : AI-OB 배차지연콜 상세내역
		begin
			ShowMessage('[AI-OB 배차지연콜 상세내역] 권한이 없습니다.'+#13#10+'관리자에게 문의(권한요청) 바랍니다.' +#13#10+#13#10
								+ '권한항목 >> 회사 : AI-OB 배차지연콜 상세내역');
			Exit;
		end;
}
		Screen.Cursor := crHourGlass;
		btn_MCashSchSearch.Enabled := False;
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel06('GET_WK_MCASH_INOUT_HIS', 'MCASH.GET_WK_MCASH_INOUT_HIS', '1000', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('기사 MCASH 입출 내역 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				Screen.Cursor := crDefault;
				btn_MCashSchSearch.Enabled := True;
				Exit;
			end;

			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			cxGridMCashList.DataController.SetRecordCount(0);
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
							cxGridMCashList.BeginUpdate;
							ls_Rcrd := TStringList.Create;
							try
								for i := 0 to lst_Result.length - 1 do
								begin
									GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
									Application.ProcessMessages;

									iRow := cxGridMCashList.DataController.AppendRecord; // 1 Record 추가
								//등록일,구분, MCASH입출금액, MCASH잔액,등록자, 메모

									cxGridMCashList.DataController.Values[iRow, 0] := IntToStr(iRow+1);
									cxGridMCashList.DataController.Values[iRow, 1] := ls_Rcrd[0];            //등록일	
									cxGridMCashList.DataController.Values[iRow, 2] := ls_Rcrd[1];            //구분
									if ls_Rcrd[2] = '' then sTmp := '0' else sTmp := ls_Rcrd[2];
									cxGridMCashList.DataController.Values[iRow, 3] := sTmp;            //MCASH입출금액
									if ls_Rcrd[3] = '' then sTmp := '0' else sTmp := ls_Rcrd[3];
									cxGridMCashList.DataController.Values[iRow, 4] := sTmp;            //MCASH잔액
									cxGridMCashList.DataController.Values[iRow, 5] := ls_Rcrd[4];            //등록자
									cxGridMCashList.DataController.Values[iRow, 6] := ls_Rcrd[5];            //메모
								end;
							finally
								ls_Rcrd.Free;
							end;
							cxGridMCashList.EndUpdate;
						end;
					end;
			
					if cxGridMCashList.DataController.RecordCount = 0 then
					begin
						GMessagebox('기사 MCASH 입출 내역이 없습니다.', CDMSE);
//						edt_SearchSch.Text := '';
						Exit;
					end;
				finally
					xdom := Nil;
				end;
			end;
		finally
			Frm_Flash.hide;
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			btn_MCashSchSearch.Enabled := True;
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_COM02.cxPageControl1Change(Sender: TObject);
begin
  if Self.Visible then
  begin
    if cxPageControl1.ActivePageIndex = 0 then
    begin
      if twWkOrderList.DataController.RecordCount = 0 then
        proc_Search(0);
    end else
    if cxPageControl1.ActivePageIndex = 1 then
    begin
      if tvwkCashList.DataController.RecordCount = 0 then
        proc_Search(1);
    end;
  end;
end;

function TFrm_COM02.GetXmlRecordCount2(ss_Xml: WideString): Integer;
var
  xdom: msDomDocument;
  lst_Data: IXMLDomNodeList;
begin
  Result := 0;

  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ss_Xml) then
    begin
      Log('GetXmlRecordCount loadXML Error', LOGDATAPATHFILE);
      Exit;
    end;

    lst_Data := xdom.documentElement.selectNodes('/cdms/Service/DrivingLists');
    Result := StrToIntDef(lst_Data.item[0].attributes.getNamedItem('Cnt').Text, 0);
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_COM02.RbButton1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  pop_date.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_COM02.MenuItem1Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

procedure TFrm_COM02.MenuItem2Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_COM02.MenuItem3Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_COM02.MenuItem4Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_COM02.MenuItem5Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure TFrm_COM02.N2Click(Sender: TObject);
var
	iSlip, iRow, iAccTime, iBrno, iStatus, iKeyNum: Integer;
  sSlip, sAccTime, sBrNo, sStatus, sKeyNum : string;
begin
  if cxPageControl1.ActivePageIndex = 0 then
  begin
    if twWkOrderList.DataController.RecordCount = 0 then Exit;
    iRow := twWkOrderList.DataController.FocusedRecordIndex;
    if iRow < 0 then Exit;
    iBrno := twWkOrderList.GetColumnByFieldName('지사코드').Index;
    sBrNo := twWkOrderList.DataController.Values[iRow, iBrno];
    iStatus := twWkOrderList.GetColumnByFieldName('상태').Index;
		sStatus := twWkOrderList.DataController.Values[iRow, iStatus];
		if sStatus = 'D' then sStatus := '1';
    iSlip := twWkOrderList.GetColumnByFieldName('접수번호').Index;
    sSlip := twWkOrderList.DataController.Values[iRow, iSlip];
    iKeyNum := twWkOrderList.GetColumnByFieldName('대표번호').Index;
    sKeyNum := twWkOrderList.DataController.Values[iRow, iKeyNum];
    iAccTime := twWkOrderList.GetColumnByFieldName('접수시간').Index;
    sAccTime := twWkOrderList.DataController.Values[iRow, iAccTime];
  end else
  begin
    if cxViewCancel.DataController.RecordCount = 0 then Exit;
    iRow := cxViewCancel.DataController.FocusedRecordIndex;
    if iRow < 0 then Exit;
    iBrno := cxViewCancel.GetColumnByFieldName('지사코드').Index;
    sBrNo := cxViewCancel.DataController.Values[iRow, iBrno];
		iStatus := cxViewCancel.GetColumnByFieldName('상태').Index;
		sStatus := cxViewCancel.DataController.Values[iRow, iStatus];
		if sStatus = 'D' then sStatus := '1';
    iSlip := cxViewCancel.GetColumnByFieldName('접수번호').Index;
    sSlip := cxViewCancel.DataController.Values[iRow, iSlip];
    iKeyNum := cxViewCancel.GetColumnByFieldName('대표번호').Index;
    sKeyNum := cxViewCancel.DataController.Values[iRow, iKeyNum];
    iAccTime := cxViewCancel.GetColumnByFieldName('접수시간').Index;
    sAccTime := cxViewCancel.DataController.Values[iRow, iAccTime];
  end;

  cxLabel14.Caption := sSlip;

	if ( Not Assigned(Frm_JON07) ) Or ( Frm_JON07 = Nil ) then Frm_JON07 := TFrm_JON07.Create(Nil);

		//타사콜일경우 기사에 송금 팝업메뉴 제외 2016.08.23KHS
	Frm_JON07.bTaSaCall := True;

	Frm_JON07.Jon03Tag := Jon03Tag;
	Frm_JON07.BrNo := sBrNo;
	frm_JON07.StCd := sStatus;
	frm_JON07.WkName := gWkName;
	frm_JON07.Hint := sSlip;
	frm_JON07.AccTime := sAccTime;
	frm_JON07.MainKeyNum := sKeyNum;    // 2011.07.14 add.
	frm_JON07.CuGubun := '';
	frm_JON07.Cuseq := '';

	frm_JON07.pJON07Dock.bUnDock := True;
	frm_JON07.pJON07Dock.HdNo    := GT_SEL_BRNO.HDNO;

	frm_Main.proc_SlipHis(sSlip, sAccTime, Jon03Tag);
end;

procedure TFrm_COM02.twWkOrderListCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  N2Click(Self);
end;

procedure TFrm_COM02.cxButton3Click(Sender: TObject);
var
  ls_TxLoad, sNode, sKey, sWkAttend: string;
  rv_str: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  slReceive: TStringList;
  ErrCode: integer;
begin
  if chk_Status.Checked then
  begin
		case cb_Status.ItemIndex of
      0: sKey := '0';
      1: sKey := '1';
      2: sKey := '10';
      3: sKey := '21';
      4: sKey := '22';
      5: sKey := '23';
      6: sKey := '30';
      7: sKey := '40';
			8: sKey := '60';
			9:
				begin
					ShowMessage('콜마너정지 상태로 변경하실 수 없습니다.');
					Exit;
				end;
		 10: sKey := '80';//보험공유
		end;
		if Length(sKey) = 1 then
      sKey := '0' + sKey;
  end
  else
    sKey := '';

  if chk_Attend.Checked then
    sWkAttend := '01'
  else
    sWkAttend := '';

  if (sKey = '') and (sWkAttend = '') then
    exit;

  ls_rxxml := GTx_UnitXmlLoad('C012N1.XML');
  xdom := ComsDomDocument.Create;
  try
    if (not xdom.loadXML(ls_rxxml)) then
    begin
      Screen.Cursor := crDefault;
      ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
      Exit;
    end;
    sNode := '/cdms/header/UserID';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := Self.Caption + '4';
    sNode := '/cdms/Service/Data/Driver';
    lst_Node := xdom.documentElement.selectNodes(sNode);

    lst_Node.item[0].attributes.getNamedItem('InSabun').Text := En_Coding(GT_USERIF.ID);
    lst_Node.item[0].attributes.getNamedItem('WkSabun').Text := En_Coding(cxLabel11.Caption);
    lst_Node.item[0].attributes.getNamedItem('WkStatus').Text := En_Coding(sKey);
    lst_Node.item[0].attributes.getNamedItem('Memo').Text := '';
    lst_Node.item[0].attributes.getNamedItem('WkAttend').Text := sWkAttend;
    ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, false) then
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
      Frm_Flash.Hide;
      FreeAndNil(slReceive);
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_COM02.chk_AttendClick(Sender: TObject);
begin
	if chk_Attend.Checked then
		cxButton3.Enabled := True
	else
  if (not chk_Status.Checked) then
		cxButton3.Enabled := False;

	if TCK_USER_PER.COM_WkStautsChange <> '1' then
		cxButton3.Enabled := False
end;

procedure TFrm_COM02.cb_GubunPropertiesChange(Sender: TObject);
begin
	ed_memo.Text := cb_Gubun.Text;
end;

procedure TFrm_COM02.cb_StatusClick(Sender: TObject);
begin
  if cb_Status.Tag = 1 then Exit;  
	if (GT_USERIF.LV <> '60') and (cb_Status.ItemIndex = 8) then
		cb_Status.ItemIndex := 7;
end;

procedure TFrm_COM02.de_stDateExit(Sender: TObject);
begin
	if TcxDateEdit(Sender).Text = '' then
  begin
		de_stDate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
    de_edDate.Date := de_stDate.Date + 1;
    chk_before.Checked := False;
	end;
end;

procedure TFrm_COM02.dt_MCashFromExit(Sender: TObject);
begin
	if TcxDateEdit(Sender).Text = '' then
  begin
		dt_MCashFrom.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
		dt_MCashEnd.Date := dt_MCashFrom.Date + 1;
	end;
end;

procedure TFrm_COM02.FormCreate(Sender: TObject);
var
  Save: LongInt; // 폼타이틀 제거용.
  EnvFile: TIniFile;
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
        SetWindowLong(Handle, gwl_Style, Save and (not (ws_Caption)) or ws_border);
    end;
    Height := Height - getSystemMetrics(sm_cyCaption);
    Refresh;
  end;

  EnvFile := TIniFile.Create(ENVPATHFILE);
  try
    Self.Left  := EnvFile.ReadInteger('WinPos', 'Com02Left', 0);
    Self.Top   := EnvFile.ReadInteger('WinPos', 'Com02Top', 0);

		igC02Top  := Self.Top;
    igC02Left := Self.Left;

    if Self.Left < 0 then Self.Left := 0;
    if Self.Top  < 0 then Self.Top := 0;
  finally
    EnvFile.Free;
  end;

	
	cxPageControl1.ActivePageIndex := 0;
end;

procedure TFrm_COM02.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_COM02.FormDestroy(Sender: TObject);
begin
  Frm_COM02 := Nil;
end;

procedure TFrm_COM02.FormHide(Sender: TObject);
begin
  igC02Top  := Self.Top;
  igC02Left := Self.Left;
end;

procedure TFrm_COM02.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then btnClose.Click;
end;

procedure TFrm_COM02.N1Click(Sender: TObject);
var
  iRow, iSlip, iBrNo, iCallcenter: Integer;
  sSlip, sBrNo, sCallCenter: string;
begin
  if cxPageControl1.ActivePageIndex = 0 then
  begin
    iRow := twWkOrderList.DataController.FocusedRecordIndex;
    if iRow = -1 then Exit;
    iSlip := twWkOrderList.GetColumnByFieldName('접수번호').Index;
    iBrNo := twWkOrderList.GetColumnByFieldName('지사코드').Index;
    iCallcenter := twWkOrderList.GetColumnByFieldName('콜센터코드').Index;

    sSlip := twWkOrderList.DataController.Values[iRow, iSlip];
    sBrNo := twWkOrderList.DataController.Values[iRow, iBrNo];
    sCallCenter := twWkOrderList.DataController.Values[iRow, iCallcenter];
  end else
  begin
    iRow := cxViewCancel.DataController.FocusedRecordIndex;
    if iRow = -1 then Exit;
    iSlip := cxViewCancel.GetColumnByFieldName('접수번호').Index;
    iBrNo := cxViewCancel.GetColumnByFieldName('지사코드').Index;
    iCallcenter := cxViewCancel.GetColumnByFieldName('콜센터코드').Index;

    sSlip := cxViewCancel.DataController.Values[iRow, iSlip];
    sBrNo := cxViewCancel.DataController.Values[iRow, iBrNo];
    sCallCenter := cxViewCancel.DataController.Values[iRow, iCallcenter];
  end;

  if (Trim(sSlip) <> '') then
  begin
    if (TCK_USER_PER.JON_Order = '1')
      and (((GT_USERIF.LV = '60') and (scb_BranchCode.IndexOf(sBrNo) >= 0))
      or ((GT_USERIF.LV <> '60') and (Trim(sCallcenter) = GT_USERIF.CT))) then
      AcceptFromCreate(sSlip, iRow, '수정');
  end;
end;

// 오더수정, 추가접수 화면을 띄운다.  CDS. 080730.
procedure TFrm_COM02.AcceptFromCreate(sConfSlip: string; iRowIndex: Integer;
  sInsGubun: string);
var
  sDate, sBizDate, sBizDate2: string;
begin
  if iRowIndex < 0 then
    Exit;

  // 접수창을 생성한다.
  if sInsGubun = '수정' then
  begin
    // 접수화면 중에 "수정" 화면을 찾는다.
    if Frm_Main.Proc_UpdateFromFindView(sConfSlip) = False then
    begin
      // 접수화면을 생성한다.
      if Not Frm_Main.Proc_JoinFromView(Jon03Tag, '수정', sConfSlip) then Exit;
      Frm_Main.Frm_JON01N[GI_JON01_LastFromIdx].grpCustView.Visible := False;
    end;
  end
  else
    Frm_Main.Proc_JoinFromView(Jon03Tag, '추가접수'); // 접수화면을 생성한다.

  // 그리드 상의 접수일자
  if cxPageControl1.ActivePageIndex = 0 then
  begin
    sDate := twWkOrderList.DataController.Values[iRowIndex, twWkOrderList.GetColumnByFieldName('접수시간').Index];
  end else
  begin
    sDate := cxViewCancel.DataController.Values[iRowIndex, cxViewCancel.GetColumnByFieldName('접수시간').Index];
  end;
  sBizDate := StartDateTime('yyyymmdd'); // 영업일자 얻기..
//  sBizDate2 := StartDateTime('yyyy-mm-dd'); // 전(-1일) 영업일자 얻기..
  sBizDate2 := UpDateDateTime('yyyy-mm-dd'); // 전(-7일) 영업일자 얻기..  2021.05.12 CDS

  if Copy(sDate, 1, 10) < Copy(sBizDate2, 1, 10) then
  begin
    //GMessagebox('이용한지 24시간이 지난 오더는 수정 할 수 없고, 내용만 볼 수 있습니다.',CDMSE);
    Frm_Main.Frm_JON01N[GI_JON01_LastFromIdx].btnCmdUpdSave.Tag := 99;
    // 수정 할 수 없음.
  end else
  begin
    Frm_Main.Frm_JON01N[GI_JON01_LastFromIdx].btnCmdUpdSave.Tag := 0;
    // 수정 할 수 있음.
  end;

  if StringReplace(Copy(sDate, 1, 10), '-', '', [rfReplaceAll]) = sBizDate then
    // 오더 일련번호를 받아 오더 수정창을 열어 준다. [당일오더]
    Frm_Main.Frm_JON01N[GI_JON01_LastFromIdx].Proc_OrderUpdate_Select(sConfSlip, '1', sInsGubun)
  else
    // 오더 일련번호를 받아 오더 수정창을 열어 준다. [과거오더]
    Frm_Main.Frm_JON01N[GI_JON01_LastFromIdx].Proc_OrderUpdate_Select(sConfSlip, '2', sInsGubun);

  pJON01Show(GI_JON01_LastFromIdx);
end;

procedure TFrm_COM02.cxButton4Click(Sender: TObject);
begin
  if Not Assigned(Frm_WOR01) Or (Frm_WOR01 = Nil) then Frm_WOR01 := TFrm_WOR01.Create(Nil);

	if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
		proc_FamilyBrChange;

	Frm_WOR01.gWOR19Mode := 'UPDATE';

	if GS_PRJ_AREA = 'S' then
	begin
		Frm_WOR01.proc_init;
	end;
	Frm_WOR01.gUse_Cnt := 0;
	frm_WOR01.Show;
	Frm_WOR01.proc_wk_Search(cxLabel11.Caption);
end;

procedure TFrm_COM02.proc_CashHistory(sWkSabun: string);
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i, j, k : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	sTmp : string;
begin
	SetDebugeWrite('Tfrm_AIC01.btnSearchA2Click');
	Try
		cxGridMCashList.DataController.SetRecordCount(0);

		Param := sWkSabun;
		Param := Param + '│' + FormatDatetime('yyyymmdd', dtstCash.date) + '090000';
		Param := Param + '│' + FormatDatetime('yyyymmdd', dtedCash.date) + '090000';

		Screen.Cursor := crHourGlass;
		cxButton8.Enabled := False;
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel06('GET_LIST_CASH_CHARGE', 'MNG_WK_CASH.GET_LIST_CASH_CHARGE', '1000', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('기사 MCASH 입출 내역 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				Screen.Cursor := crDefault;
				btn_MCashSchSearch.Enabled := True;
				Exit;
			end;

			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
      tvwkCashList.BeginUpdate;
      tvwkCashList.DataController.SetRecordCount(0);
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
                  GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                  ls_Rcrd.Insert(0, IntToStr(i + 1));
                  iRow := tvwkCashList.DataController.AppendRecord;
                  for k := 0 to tvwkCashList.ColumnCount - 1 do
                  begin
                    if (UpperCase(tvwkCashList.Columns[k].DataBinding.ValueType) <> 'STRING')
                      and (StrToFloatDef(ls_Rcrd[k], 0) = 0) then
                      ls_Rcrd[k] := '0';
                    tvwkCashList.DataController.Values[iRow, k] := ls_Rcrd[k]; // 지사명
                  end;
                end;
              finally
                ls_Rcrd.Free;
              end;
							
						end;
					end;
			
					if tvwkCashList.DataController.RecordCount = 0 then
					begin
						GMessagebox('기사충전 내역이 없습니다.', CDMSE);
//						edt_SearchSch.Text := '';
					end;
				finally
					xdom := Nil;
				end;
			end;
		finally
			tvwkCashList.EndUpdate;
      Frm_Flash.hide;
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			cxButton8.Enabled := True;
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_COM02.proc_FamilyBrChange;
var
  i : Integer;
  HdCd, HdCd_Old : String;
begin
	try
		frm_WOR01.cboBranch.Tag := 99;
		frm_WOR01.FBrNoList.Clear;
		frm_WOR01.FTakList.Clear;
		frm_WOR01.cboBranch.Properties.Items.Clear;
		HdCd_Old := '';

		for I := 0 to scb_FamilyBrName.Count - 1 do
		begin
			 HdCd :='';
			 HdCd := frm_Main.func_search_hdNo(scb_FamilyBrCode[I]);
			 if HdCd <> HdCd_Old then
			 begin
				 frm_WOR01.RequestDataHeadInfo(HdCd);
				 HdCd_Old := HdCd;
			 end;
       if GB_WORSOSOK_VIEW then
  			 frm_WOR01.cboBranch.Properties.Items.Add('(' + HdCd + ',' + scb_FamilyBrCode[I] +')' + scb_FamilyBrName[I] + '/' + frm_WOR01.Gs_HdNm )
       else
  			 frm_WOR01.cboBranch.Properties.Items.Add('(' + scb_FamilyBrCode[I] +')' + scb_FamilyBrName[I] );
			 frm_WOR01.FBrNoList.Add(scb_FamilyBrCode[I]);
			 frm_WOR01.FTakList.Add(scb_FamilyTaksong[I]);
			 Frm_WOR01.FShuttel4.Add(scb_FamilyShuttle4[I]);
		end;
		frm_WOR01.cboBranch.Tag := 0;
	except
	end;
end;

procedure TFrm_COM02.proc_wk_Search(sWkSabun: string);
var
  ls_TxLoad, sNode, rv_str: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  slReceive: TStringList;
  ErrCode: integer;
begin
	ls_rxxml := GTx_UnitXmlLoad('SEL04.XML');
  xdom := ComsDomDocument.Create;
  if (not xdom.loadXML(ls_rxxml)) then
  begin
    Screen.Cursor := crDefault;
    ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
    Exit;
  end;
  sNode := '/cdms/header/UserID';
  lst_Node := xdom.documentElement.selectNodes(sNode);
  lst_Node.item[0].attributes.getNamedItem('Value').Text := En_Coding(GT_USERIF.ID);
  sNode := '/cdms/header/ClientVer';
  lst_Node := xdom.documentElement.selectNodes(sNode);
  lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
  sNode := '/cdms/header/ClientKey';
  lst_Node := xdom.documentElement.selectNodes(sNode);
  lst_Node.item[0].attributes.getNamedItem('Value').Text := 'COM025';
  sNode := '/cdms/Service/Data/Query';
  lst_Node := xdom.documentElement.selectNodes(sNode);
  lst_Node.item[0].attributes.getNamedItem('Key').Text := 'WKCASHS01';
  sNode := '/cdms/Service/Data/Query/Param';
  lst_Node := xdom.documentElement.selectNodes(sNode);
  lst_Node.item[0].attributes.getNamedItem('Seq').Text := '1';
	lst_Node.item[0].attributes.getNamedItem('Value').Text := sWkSabun;
  ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;


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
    Frm_Flash.Hide;
    FreeAndNil(slReceive);
    xdom := Nil;
  end;
end;

procedure TFrm_COM02.ed_ChargeCashKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Ord(Key) = VK_RETURN then
  begin
    if ed_ChargeCash.Value < 1000 then
    begin
      ed_ChargeCash.Value := ed_ChargeCash.Value * 1000;
    end;
  end;

end;

procedure TFrm_COM02.btnFillXlsClick(Sender: TObject);
begin
  if tvwkCashList.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
    Exit;
  end;

	if (TCK_USER_PER.WOR_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[기사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '기사충전내역.xls';
  Frm_Main.sgRpExcel := Format('기사>기사충전내역]%s건', [GetMoneyStr(tvwkCashList.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGrid1;
  Frm_Main.cxGridDBViewExcel := tvwkCashList;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_COM02.btnRunXlsClick(Sender: TObject);
begin
  if twWkOrderList.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
    Exit;
  end;

	if (TCK_USER_PER.WOR_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[기사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '기사운행내역.xls';
  Frm_Main.sgRpExcel := Format('기사>기사운행내역]%s건', [GetMoneyStr(twWkOrderList.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridWkConnect;
  Frm_Main.cxGridDBViewExcel := twWkOrderList;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_COM02.btn_MCashSchSearchClick(Sender: TObject);
begin
	proc_Search(4);

end;

procedure TFrm_COM02.btnCancelXlsClick(Sender: TObject);
begin
  if cxViewCancel.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
    Exit;
  end;

	if (TCK_USER_PER.WOR_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[기사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '취소벌금운행내역.xls';
  Frm_Main.sgRpExcel := Format('기사>취소벌금운행내역]%s건', [GetMoneyStr(cxViewCancel.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridCancel;
  Frm_Main.cxGridDBViewExcel := cxViewCancel;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_COM02.btnCloseClick(Sender: TObject);
begin
  Hide;
end;

procedure TFrm_COM02.ed_ChargeCashKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    ed_memo.SetFocus;
end;

procedure TFrm_COM02.ed_memoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    cxButton2.SetFocus;
end;

procedure TFrm_COM02.chkCancelBeforeClick(Sender: TObject);
begin
  dtCancelFrom.Enabled  := chkCancelBefore.Checked;
  dtCancelTo.Enabled    := chkCancelBefore.Checked;
  btnCancelDate.Enabled := chkCancelBefore.Checked;
end;

function TFrm_COM02.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;
  case cxPageControl1.ActivePageIndex of
  0:
    begin
      AStDt := de_stDate;
      AEdDt := de_edDate;
    end;
  1:
    begin
      AStDt := dtstCash;
      AEdDt := dtedCash;
    end;
	2:
		begin
			AStDt := dtCancelFrom;
			AEdDt := dtCancelTo;
		end;
	3:
		begin
			AStDt := dt_MCashFrom;
			AEdDt := dt_MCashEnd;
		end;
	else
    Result := False;
  end;
end;

procedure TFrm_COM02.cxRadioButton6Click(Sender: TObject);
begin
  ed_memo.Text:='';
  cxRadioButton5.Checked:=true;
  cxRadioButton3Click(cxradiobutton5);
	cb_Gubun.Visible := False;
end;

procedure TFrm_COM02.cxRadioButton1Click(Sender: TObject);
begin
  ed_memo.Text:='';
  cxRadioButton4.Checked:=false;
  cxRadioButton3.Checked:=false;
  cxRadioButton5.Checked:=false;
	cb_Gubun.Visible := False;
end;

procedure TFrm_COM02.cxRadioButton2Click(Sender: TObject);
begin
  ed_memo.Text:='';
  cxRadioButton4.Checked:=false;
  cxRadioButton3.Checked:=false;
  cxRadioButton5.Checked:=false;

	if (GS_PRJ_AREA = 'O') and ((GT_SEL_BRNO.HDNO = 'A1903') or (GT_SEL_BRNO.HDNO = 'A100')) then
	begin
		if (cxRadioButton2.Checked) and (cxRadioButton5.Checked) then
		begin
			cb_Gubun.Visible := True;
			cb_Gubun.Left := cxLabel1.Left;
			cb_Gubun.Top := cxLabel1.Top;
		end	else
		begin
			cb_Gubun.Visible := False;
		end;
	end;
end;

procedure TFrm_COM02.cxChkMinusZeroClick(Sender: TObject);
begin
  try
    if cxChkMinusZero.Checked then
		begin
      cxChkPubCashOut.Checked := False;
      cxButton2.Caption := '(-)캐쉬 0원초기화 하기';
      ed_ChargeCash.Tag := ed_ChargeCash.Value;
      ed_ChargeCash.Value := 0;
      ed_memo.Text := GS_EnvFile.ReadString('WORKER', 'MinusZeroMemo', '');
			cxRadioButton1.Enabled := False;
      cxRadioButton2.Enabled := False;
      cxRadioButton3.Enabled := False;
			cxRadioButton4.Enabled := False;
			cxRadioButton5.Enabled := False;
			cxRadioButton6.Enabled := False;

			cxRadioButton1.Checked := False;
			cxRadioButton2.Checked := False;
			cxRadioButton3.Checked := False;
			cxRadioButton4.Checked := False;
			cxRadioButton5.Checked := False;
			cxRadioButton6.Checked := False;

    end else
    begin
      cxButton2.Caption := '충전하기';
      ed_memo.Text := '';
      ed_ChargeCash.Value := ed_ChargeCash.Tag;
      cxRadioButton1.Enabled := True;
      cxRadioButton2.Enabled := True;
      cxRadioButton3.Enabled := True;
      cxRadioButton4.Enabled := True;
      cxRadioButton5.Enabled := True;
      cxRadioButton6.Enabled := True;
    end;
  except

  end;
end;

procedure TFrm_COM02.cxChkPubCashOutClick(Sender: TObject);
begin
	if cxChkPubCashOut.Checked then
  begin
		cxChkMinusZero.Checked := False;
    cxButton2.Caption := '충전하기';

		cxRadioButton1.Enabled := False;
		cxRadioButton2.Enabled := False;
    cxRadioButton3.Enabled := False;
    cxRadioButton4.Enabled := False;
    cxRadioButton5.Enabled := False;
		cxRadioButton6.Enabled := False;

		cxRadioButton1.Checked := False;
		cxRadioButton2.Checked := False;
		cxRadioButton3.Checked := False;
		cxRadioButton4.Checked := False;
		cxRadioButton5.Checked := False;
		cxRadioButton6.Checked := False;
		
  end else
  begin
    cxRadioButton1.Enabled := True;
    cxRadioButton2.Enabled := True;
    cxRadioButton3.Enabled := True;
    cxRadioButton4.Enabled := True;
    cxRadioButton5.Enabled := True;
    cxRadioButton6.Enabled := True;
  end;
end;

procedure TFrm_COM02.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(frm_COM02.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_COM02.PopupMenu1Popup(Sender: TObject);
var
  iRow, iSlip, iBrNo, iCallcenter: Integer;
  sSlip, sBrNo, sCallCenter: string;
begin
  if cxPageControl1.ActivePageIndex = 0 then
  begin
    iRow := twWkOrderList.DataController.FocusedRecordIndex;
    if iRow = -1 then Exit;
    iSlip := twWkOrderList.GetColumnByFieldName('접수번호').Index;
    iBrNo := twWkOrderList.GetColumnByFieldName('지사코드').Index;
    iCallcenter := twWkOrderList.GetColumnByFieldName('콜센터코드').Index;

    sSlip := twWkOrderList.DataController.Values[iRow, iSlip];
    sBrNo := twWkOrderList.DataController.Values[iRow, iBrNo];
    sCallCenter := twWkOrderList.DataController.Values[iRow, iCallcenter];
  end else
  begin
    iRow := cxViewCancel.DataController.FocusedRecordIndex;
    if iRow = -1 then Exit;
    iSlip := cxViewCancel.GetColumnByFieldName('접수번호').Index;
    iBrNo := cxViewCancel.GetColumnByFieldName('지사코드').Index;
    iCallcenter := cxViewCancel.GetColumnByFieldName('콜센터코드').Index;

    sSlip := cxViewCancel.DataController.Values[iRow, iSlip];
    sBrNo := cxViewCancel.DataController.Values[iRow, iBrNo];
    sCallCenter := cxViewCancel.DataController.Values[iRow, iCallcenter];
  end;

  N1.Visible := False;

  if (Trim(sSlip) <> '') then
  begin
    if (TCK_USER_PER.JON_Order = '1')
      and (((GT_USERIF.LV = '60') and (scb_BranchCode.IndexOf(sBrNo) >= 0))
      or ((GT_USERIF.LV <> '60') and (Trim(sCallcenter) = GT_USERIF.CT))) then
      N1.Visible := True;
  end;
end;

end.



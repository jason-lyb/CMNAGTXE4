unit xe_WORA6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, System.Math, System.StrUtils,
  Dialogs, cxPC, cxControls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  IniFiles, MSXML2_TLB, ShellAPI, cxPCdxBarPopupMenu, cxLookAndFeels,
  cxLookAndFeelPainters, cxData, cxDataStorage, cxEdit, cxNavigator, cxLabel,
  cxCurrencyEdit, cxContainer, Vcl.Menus, Data.DB, cxDBData, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxClasses, Vcl.StdCtrls, cxRadioGroup, cxDropDownEdit,
  cxCalendar, cxMaskEdit, cxTextEdit, cxGridDBTableView, cxButtons, cxGroupBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridCustomView, cxGrid, Vcl.ExtCtrls, cxListBox, cxGridDBBandedTableView,
  dxSkinsCore, dxSkinDevExpressStyle, dxSkinscxPCPainter;

type
  TFrm_WORA6 = class(TForm)
    cxStyleRepositoryWorker: TcxStyleRepository;
    cxStyleNormal: TcxStyle;
    cxStyleSelected: TcxStyle;
    cxStyleSysLock: TcxStyle;
    cxStyleSysLockSel: TcxStyle;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle4: TcxStyle;
    PnlMain: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxLabel54: TcxLabel;
    lblSosokNameA6: TcxLabel;
    Shape1: TShape;
    Shape3: TShape;
    Shape4: TShape;
    cxLabel1: TcxLabel;
    cxGridA6: TcxGrid;
    cxGridPeakTime: TcxGridDBTableView;
    cxGridPeakTimeColumn1: TcxGridDBColumn;
    cxGridPeakTimeColumn2: TcxGridDBColumn;
    cxGridPeakTimeColumn3: TcxGridDBColumn;
    cxGridPeakTimeColumn4: TcxGridDBColumn;
    cxGridPeakTimeColumn5: TcxGridDBColumn;
    cxGridPeakTimeColumn6: TcxGridDBColumn;
    cxGridPeakTimeColumn7: TcxGridDBColumn;
    cxGridPeakTimeColumn8: TcxGridDBColumn;
    cxGridPeakTimeColumn9: TcxGridDBColumn;
    cxGridPeakTimeColumn10: TcxGridDBColumn;
    cxgrdbclmnGridPeakTimeColumn14: TcxGridDBColumn;
    cxgrdbclmnGridPeakTimeColumn15: TcxGridDBColumn;
    cxgrdbclmnGridPeakTimeColumn16: TcxGridDBColumn;
    cxgrdbclmnGridPeakTimeColumn17: TcxGridDBColumn;
    cxgrdbclmnGridPeakTimeColumn18: TcxGridDBColumn;
    cxgrdbclmnGridPeakTimeColumn19: TcxGridDBColumn;
    cxGridPeakTimeColumn11: TcxGridDBColumn;
    cxGridPeakTimeColumn12: TcxGridDBColumn;
    cxGridPeakTimeColumn13: TcxGridDBColumn;
    cxGridA6Level1: TcxGridLevel;
    cbPeakType: TcxComboBox;
    edtPeakSearch: TcxTextEdit;
    btnSearchA6: TcxButton;
    btnUpdateA6: TcxButton;
    gbxPeakBrInfo: TcxGroupBox;
    lblPeakAuthUse: TcxLabel;
    lbl31: TcxLabel;
    lbl26: TcxLabel;
    edtPeakLockSec: TcxTextEdit;
    lbl29: TcxLabel;
    edtPeakLock02: TcxTextEdit;
    lbl30: TcxLabel;
    edtPeakLock01: TcxTextEdit;
    lbl25: TcxLabel;
    lbl24: TcxLabel;
    lbl12: TcxLabel;
    lbl8: TcxLabel;
    lbl10: TcxLabel;
    lbl13: TcxLabel;
    lbl16: TcxLabel;
    edtPeakPay1: TcxTextEdit;
    edtPeakCount1: TcxTextEdit;
    edtPeakTime01: TcxTextEdit;
    edtPeakTime02: TcxTextEdit;
    lbl7: TcxLabel;
    lbl21: TcxLabel;
    lbl20: TcxLabel;
    edtPeakTime11: TcxTextEdit;
    lbl19: TcxLabel;
    edtPeakTime12: TcxTextEdit;
    edtPeakCount2: TcxTextEdit;
    edtPeakPay2: TcxTextEdit;
    lbl22: TcxLabel;
    lbl23: TcxLabel;
    gbx1: TcxGroupBox;
    lblPeakWkPassC: TcxLabel;
    lblPeakWkPassTodayC: TcxLabel;
    lblPeakWkLockC: TcxLabel;
    lblPeakWkLockTodayC: TcxLabel;
    lblPeakWkPass: TcxLabel;
    lblPeakWkPassToday: TcxLabel;
    lblPeakWkLock: TcxLabel;
    lblPeakWkLockToday: TcxLabel;
    lbl32: TcxLabel;
    lbl33: TcxLabel;
    lbl34: TcxLabel;
    lbl35: TcxLabel;
    Shape2: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure FormDestroy(Sender: TObject);
    procedure btnSearchA6Click(Sender: TObject);
    procedure btnUpdateA6Click(Sender: TObject);
    procedure cxGridPeakTimeCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridPeakTimeColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGridPeakTimeDataControllerSortingChanged(Sender: TObject);
  private
    { Private declarations }
    AIndex : Integer;

    procedure proc_FamilyBrChange;
    procedure proc_peakTimeSearch;
  public
    { Public declarations }
    procedure proc_init;
  end;

var
  Frm_WORA6: TFrm_WORA6;

implementation

{$R *.dfm}

uses xe_GNL, xe_xml, xe_Func, xe_Dm, xe_Msg, Main, xe_gnl3, xe_Query, xe_gnl2,
  xe_Lib, xe_packet, xe_WOR01;

procedure TFrm_WORA6.proc_init;
var
  i : Integer;
begin
  try
    cxGridPeakTime.Columns[0].DataBinding.ValueType := 'Integer';
    for i := 1 to cxGridPeakTime.ColumnCount - 1 do
      cxGridPeakTime.Columns[i].DataBinding.ValueType := 'String';
  except
  end;

  lblSosokNameA6.Caption := GetSosokInfo;
end;

procedure TFrm_WORA6.FormCreate(Sender: TObject);
begin
  proc_init;
end;

procedure TFrm_WORA6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_WORA6.btnSearchA6Click(Sender: TObject);
var
  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  ARow, I, J, ErrCode: Integer;
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;

  if fGetChk_Search_HdBrNo('심야배차제한') then Exit;

  //심야배차제한 기사 목록
  // - 조회구분코드(1 본사, ELSE 지사)
  // - 본사/지사코드
  // - 검색종류 (1:기사명,2:자체사번:3:단말기+폰번호 ELSE 전체)
  // - 검색키워드
  Param := '%s│%s│%d│%s';
  if GT_SEL_BRNO.GUBUN = '1' then
    Param := Format(Param, ['0', GT_SEL_BRNO.BrNo, cbPeakType.ItemIndex, Param_Filtering(edtPeakSearch.Text)])
  else
    Param := Format(Param, ['1', GT_SEL_BRNO.HDNO, cbPeakType.ItemIndex, Param_Filtering(edtPeakSearch.Text)])
  ;

  if not RequestBase(GetSel05('', 'wk_pbl.s_wk_list', '10000', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('심야 배차제한 기사 목록 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
    Exit;
  end;

	xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(XmlData) then
    begin
      ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
      Exit;
    end;

    lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
    ls_Rcrd := TStringList.Create;
    try
      cxGridPeakTime.DataController.RecordCount := 0;
      cxGridPeakTime.DataController.BeginUpdate;
      for I := 0 to lst_Result.length - 1 do
      begin
        if lst_Result.item[I].attributes.getNamedItem('Value').Text = '' then
          Continue;

        GetTextSeperationEx('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);

        ARow := cxGridPeakTime.DataController.AppendRecord;

        cxGridPeakTime.DataController.Values[ARow, 0] := ARow + 1; //No.
        for J := 0 to ls_Rcrd.Count - 1 do
          cxGridPeakTime.DataController.Values[ARow, J + 1] := ls_Rcrd[J];
      end;
    finally
      ls_Rcrd.Free;
      cxGridPeakTime.DataController.EndUpdate;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_WORA6.btnUpdateA6Click(Sender: TObject);
var
  iCol, iRow : Integer;
  sWkSabun : String;
begin
  iCol := cxGridPeakTime.GetColumnByFieldName('사번').Index;
  iRow := cxGridPeakTime.DataController.FocusedRecordIndex;

  sWkSabun := cxGridPeakTime.DataController.Values[iRow, iCol];

  if sWkSabun <> '' then
  begin
    if Not Assigned(Frm_WOR01) Or (Frm_WOR01 = Nil) then Frm_WOR01 := TFrm_WOR01.Create(Nil);
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      proc_FamilyBrChange;
    Frm_WOR01.proc_wk_Search(sWkSabun);
    Frm_WOR01.Show;
  end else
  begin
    GMessagebox('선택기사가 없습니다.',CDMSI);
  end;
end;

procedure TFrm_WORA6.cxGridPeakTimeCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iCol, iRow : Integer;
  sWkSabun : String;
begin
  iCol := cxGridPeakTime.GetColumnByFieldName('사번').Index;
  iRow := cxGridPeakTime.DataController.FocusedRecordIndex;

  sWkSabun := cxGridPeakTime.DataController.Values[iRow, iCol];

  if sWkSabun <> '' then
  begin
    if Not Assigned(Frm_WOR01) Or (Frm_WOR01 = Nil) then Frm_WOR01 := TFrm_WOR01.Create(Nil);

    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      proc_FamilyBrChange;
    Frm_WOR01.proc_wk_Search(sWkSabun);
    Frm_WOR01.Show;
  end else
  begin
    GMessagebox('선택기사가 없습니다.',CDMSI);
  end;
end;

procedure TFrm_WORA6.cxGridPeakTimeColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_WORA6.cxGridPeakTimeDataControllerSortingChanged(
  Sender: TObject);
begin
  gfSetIndexNo(cxGridPeakTime, AIndex, GS_SortNoChange);
end;

procedure TFrm_WORA6.FormDestroy(Sender: TObject);
begin
  Frm_WORA6 := Nil;
end;

procedure TFrm_WORA6.proc_FamilyBrChange;
var
  i : Integer;
  HdCd, HdCd_Old : String;
begin
	try
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
			 frm_WOR01.cboBranch.Properties.Items.Add('(' + HdCd + ',' + scb_FamilyBrCode[I] +')' + scb_FamilyBrName[I] + '/' + frm_WOR01.Gs_HdNm );
			 frm_WOR01.FBrNoList.Add(scb_FamilyBrCode[I]);
			 frm_WOR01.FTakList.Add(scb_FamilyTaksong[I]);
		end;
	except
	end;
end;

procedure Tfrm_WORA6.proc_peakTimeSearch;
  function _GetTimeFormat(AValue: string): string;
  begin
    Result := '';
    if Length(AValue) = 4 then
      Result := Copy(AValue, 1, 2) + ':' + Copy(AValue, 3, 2);
  end;

  procedure ClearBrInfoCtrl;
  begin
    edtPeakTime01.Clear;
    edtPeakTime02.Clear;
    edtPeakTime11.Clear;
    edtPeakTime12.Clear;
    edtPeakCount1.Clear;
    edtPeakCount2.Clear;
    edtPeakPay1.Clear;
    edtPeakPay2.Clear;
    edtPeakLock01.Clear;
    edtPeakLock02.Clear;
    edtPeakLockSec.Clear;
    lblPeakAuthUse.Clear;

    edtPeakTime01.Enabled := gbxPeakBrInfo.Enabled;
    edtPeakTime02.Enabled := gbxPeakBrInfo.Enabled;
    edtPeakTime11.Enabled := gbxPeakBrInfo.Enabled;
    edtPeakTime12.Enabled := gbxPeakBrInfo.Enabled;
    edtPeakCount1.Enabled := gbxPeakBrInfo.Enabled;
    edtPeakCount2.Enabled := gbxPeakBrInfo.Enabled;
    edtPeakPay1.Enabled := gbxPeakBrInfo.Enabled;
    edtPeakPay2.Enabled := gbxPeakBrInfo.Enabled;
    edtPeakLock01.Enabled := gbxPeakBrInfo.Enabled;
    edtPeakLock02.Enabled := gbxPeakBrInfo.Enabled;
    edtPeakLockSec.Enabled := gbxPeakBrInfo.Enabled;
    lblPeakAuthUse.Enabled := gbxPeakBrInfo.Enabled;

    lblPeakWkPass.Clear;
    lblPeakWkPassToday.Clear;
    lblPeakWkLock.Clear;
    lblPeakWkLockToday.Clear;
  end;

  procedure _SetPeakWkInfo(AStatus, ACount: string);
  begin
    if AStatus = lblPeakWkPassC.Caption then
      lblPeakWkPass.Caption := ACount
    else if AStatus = lblPeakWkPassTodayC.Caption then
      lblPeakWkPassToday.Caption := ACount
    else if AStatus = lblPeakWkLockC.Caption then
      lblPeakWkLock.Caption := ACount
    else if AStatus = lblPeakWkLockTodayC.Caption then
      lblPeakWkLockToday.Caption := ACount
    ;
  end;
var
  XmlData, Param, ErrMsg: string;
  xdom: DomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, ErrCode: Integer;
begin
  xdom := CoDomDocument.Create;
  gbxPeakBrInfo.Enabled := GT_SEL_BRNO.GUBUN = '1';

  ClearBrInfoCtrl;

  if GT_SEL_BRNO.GUBUN = '1' then
  begin
    Param := GT_SEL_BRNO.BrNo;

    if not RequestBase(GetSel05('', 'wk_pbl.s_br_info', '100', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('심야 배차제한 설정정보 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

    if not xdom.loadXML(XmlData) then
    begin
      ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
      Exit;
    end;

    if (0 < GetXmlRecordCount(XmlData)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      ls_Rcrd := TStringList.Create;
      try
        GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);

        lblPeakAuthUse.Caption := ls_Rcrd[1];

        edtPeakTime01.Text := _GetTimeFormat(ls_Rcrd[2]);
        edtPeakTime02.Text := _GetTimeFormat(ls_Rcrd[3]);
        edtPeakPay1.Text := IfThen(ls_Rcrd[4] = '', '', StrToMoney(ls_Rcrd[4]));
        edtPeakCount1.Text := IfThen(ls_Rcrd[5] = '', '', StrToMoney(ls_Rcrd[5]));

        edtPeakTime11.Text := _GetTimeFormat(ls_Rcrd[6]);
        edtPeakTime12.Text := _GetTimeFormat(ls_Rcrd[7]);
        edtPeakPay2.Text := IfThen(ls_Rcrd[8] = '', '', StrToMoney(ls_Rcrd[8]));
        edtPeakCount2.Text := IfThen(ls_Rcrd[9] = '', '', StrToMoney(ls_Rcrd[9]));

        edtPeakLock01.Text := _GetTimeFormat(ls_Rcrd[10]);
        edtPeakLock02.Text := _GetTimeFormat(ls_Rcrd[11]);
        edtPeakLockSec.Text := ls_Rcrd[12];
      finally
        ls_Rcrd.Free;
      end;
    end;
  end;

  // 심야 배차제한 기사현황
  // 파라미터:
  //   - 조회구분코드(1 본사, ELSE 지사)
  //   - 본사/지사코드
  Param := '%s│%s';
  if GT_SEL_BRNO.GUBUN = '1' then
    Param := Format(Param, ['0', GT_SEL_BRNO.BrNo])
  else
    Param := Format(Param, ['1', GT_SEL_BRNO.HDNO])
  ;

  if not RequestBase(GetSel05('', 'wk_pbl.s_wk_statistic', '100', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('심야 배차제한 기사현황 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
    Exit;
  end;

  if not xdom.loadXML(XmlData) then
  begin
    ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
    Exit;
  end;

  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
  ls_Rcrd := TStringList.Create;
  try
    for I := 0 to lst_Result.length - 1 do
    begin
        GetTextSeperationEx('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);

        _SetPeakWkInfo(ls_Rcrd[0], ls_Rcrd[1]);
    end;
  finally
    ls_Rcrd.Free;
  end;
{


    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          frmFlash3.JobProcess(False);
          if not xdom.loadXML(ls_rxxml) then
          begin
            Screen.Cursor := crDefault;
            ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
            exit;
          end;
          ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
          if ('0000' = ls_MSG_Err) then
          begin
            if (0 < GetXmlRecordCount(ls_rxxml)) then
            begin
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
              ls_Rcrd := TStringList.Create;
              try
                GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);

                lbValue1 := ls_Rcrd[0];
                lbValue2 := ls_Rcrd[1];
                lbValue3 := ls_Rcrd[2];
                lbValue4 := ls_Rcrd[3];
                lbValue5 := ls_Rcrd[4];
                lbValue6 := ls_Rcrd[5];
                lbValue7 := ls_Rcrd[6];

                if Length(lbValue1) = 4 then
                  lblPeakTime01.Caption := '※ 피크타임 배차 제한 수집 시간 :  ' + Copy(lbValue1,0,2) + ':' + Copy(lbValue1,3,4)
                else
                  lblPeakTime01.Caption := '※ 피크타임 배차 제한 수집 시간 :  00:00';

                if Length(lbValue2) = 4 then
                  lblPeakTime01.Caption := lblPeakTime01.Caption + ' ~ ' + Copy(lbValue2,0,2) + ':' + Copy(lbValue2,3,4)
                else
                  lblPeakTime01.Caption := lblPeakTime01.Caption + ' ~ 00:00';

                if Length(lbValue3) = 4 then
                  lbPeakTime02.Caption := '※ 피크타임 배차 제한 적용 시간 :  ' + Copy(lbValue3,0,2) + ':' + Copy(lbValue3,3,4)
                else
                  lbPeakTime02.Caption := '※ 피크타임 배차 제한 적용 시간 :  00:00';

                if Length(lbValue4) = 4 then
                  lbPeakTime02.Caption := lbPeakTime02.Caption + ' ~ ' + Copy(lbValue4,0,2) + ':' + Copy(lbValue4,3,4)
                else
                  lbPeakTime02.Caption := lbPeakTime02.Caption + ' ~ 00:00';

                lbPeakTime03.Caption := '※ 피크타임 배차 제한 건수 : ' + lbValue7 + '건';
                lbPeakTime04.Caption := '※ 배차 제한 금액 : ' + lbValue6 + '원';
                lbPeakTime05.Caption := '※ 피크타임 배차 제한 된 기사들은 오더를 볼 수 있으되 최초 '+ lbValue5 +'초 동안 배차 제한 됩니다.';

              finally
                ls_Rcrd.Free;
              end;
              Screen.Cursor := crDefault;
            end else
            begin
              cxGridPeakTime.DataController.SetRecordCount(0);
              lblPeakTime01.Caption := '※ 피크타임 배차 제한 수집 시간 :  없음';
              lbPeakTime02.Caption := '※ 피크타임 배차 제한 적용 시간 :  없음';
              lbPeakTime03.Caption := '※ 피크타임 배차 제한 건수 : 없음';
              lbPeakTime04.Caption := '※ 배차 제한 금액 : 없음';
              lbPeakTIme05.Caption := '※ 피크타임 배차 제한 된 기사들은 오더를 볼 수 있으되 최초 0초 동안 배차 제한 됩니다.';
              Screen.Cursor := crDefault;
              if cxPageControl1.ActivePage = cxTabSheet9 then
                GMessagebox('해당지사는 피크타임 배차제한설정이 되어있지 않습니다.',CDMSI);
            end;
          end
          else
          begin
            Screen.Cursor := crDefault;
            GMessagebox('피크타임 배차제한설정값 조회중 오류발생',CDMSI);
          end;
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;

  end;
}
end;

end.

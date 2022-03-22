unit xe_WORA8;

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
  dxSkinsCore, dxSkinscxPCPainter, cxCheckBox, cxDataUtils, cxTimeEdit,
  dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_WORA8 = class(TForm)
    PnlMain: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxLabel54: TcxLabel;
    lblSosokNameA8: TcxLabel;
    Shape1: TShape;
    Shape5: TShape;
    cxLabel27: TcxLabel;
    Shape3: TShape;
    edtName: TcxTextEdit;
    Shape4: TShape;
    cxLabel1: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cbKeynumberA8: TcxComboBox;
    Shape6: TShape;
    edtHp: TcxTextEdit;
    cxLabel2: TcxLabel;
    Shape7: TShape;
    cxDtStartA8: TcxDateEdit;
    cxLabel237: TcxLabel;
    cxDtEndA8: TcxDateEdit;
    cxBtnDate: TcxButton;
    cxLabel4: TcxLabel;
    Shape8: TShape;
    cbInSurYn: TcxComboBox;
    cxLabel5: TcxLabel;
    Shape9: TShape;
    cbSmsYn: TcxComboBox;
    Shape10: TShape;
    cxLabel6: TcxLabel;
    cxCB1: TcxComboBox;
    Shape11: TShape;
    cxLabel7: TcxLabel;
    cxCB2: TcxComboBox;
    Shape12: TShape;
    cxLabel8: TcxLabel;
    cxCB3: TcxComboBox;
    Shape13: TShape;
    cxLabel9: TcxLabel;
    cxCB4: TcxComboBox;
    cxCBY: TcxCheckBox;
    cxCBN: TcxCheckBox;
    cxGroupBox4: TcxGroupBox;
    cxBtnSelSMS: TcxButton;
    chk_All_Select: TcxCheckBox;
    cxGroupBox5: TcxGroupBox;
    cxChkDay: TcxCheckBox;
    pop_dateA8: TPopupMenu;
    N3: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    pm_Process: TPopupMenu;
    MenuItem10: TMenuItem;
    N1: TMenuItem;
    btnExcelA8: TcxButton;
    cxGroupBox6: TcxGroupBox;
    cxGroupBox7: TcxGroupBox;
    btnSearchA8: TcxButton;
    cxStyleRepositoryWorker: TcxStyleRepository;
    cxStyleNormal: TcxStyle;
    cxStyleSelected: TcxStyle;
    cxStyleSysLock: TcxStyle;
    cxStyleSysLockSel: TcxStyle;
    cxGridA8: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxViewDongBu: TcxGridBandedTableView;
    cxViewDongBuColumn1: TcxGridBandedColumn;
    cxViewDongBuColumn2: TcxGridBandedColumn;
    cxViewDongBuColumn3: TcxGridBandedColumn;
    cxViewDongBuColumn4: TcxGridBandedColumn;
    cxViewDongBuColumn5: TcxGridBandedColumn;
    cxViewDongBuColumn6: TcxGridBandedColumn;
    cxViewDongBuColumn7: TcxGridBandedColumn;
    cxViewDongBuColumn8: TcxGridBandedColumn;
    cxViewDongBuColumn9: TcxGridBandedColumn;
    cxViewDongBuColumn19: TcxGridBandedColumn;
    cxViewDongBuColumn10: TcxGridBandedColumn;
    cxViewDongBuColumn11: TcxGridBandedColumn;
    cxViewDongBuColumn12: TcxGridBandedColumn;
    cxViewDongBuColumn13: TcxGridBandedColumn;
    cxViewDongBuColumn14: TcxGridBandedColumn;
    cxViewDongBuColumn15: TcxGridBandedColumn;
    cxGridLevel1: TcxGridLevel;
    cxViewDongBuColumn16: TcxGridBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnSearchA8Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure cxBtnDateMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxViewDongBuColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cbKeynumber01PropertiesChange(Sender: TObject);
    procedure cxChkDayClick(Sender: TObject);
    procedure chk_All_SelectClick(Sender: TObject);
    procedure btnExcelA8Click(Sender: TObject);
    procedure cxViewDongBuStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure cxBtnSelSMSClick(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure cxViewDongBuDataControllerSortingChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    AIndex : Integer;
    FExcelDownMng : String;

    pviSucc, pviFail: integer;

    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure proc_SND_SMS(sGrid: TcxGridBandedTableView; ASubscribe: Boolean = True);
    procedure proc_CustMainProcess( sJoin : String );
    procedure proc_CustProcess( sWkSabunList, sJoin : String );
    procedure gfBandSetIndexNo(cxGridView: TcxGridBandedTableView; iIndex: Integer;
      isOK: Boolean);
  public
    { Public declarations }
    procedure proc_init;
    // 전문 응답 처리
    procedure proc_BrNameSet;
  end;

var
  Frm_WORA8: TFrm_WORA8;

implementation

{$R *.dfm}

uses xe_GNL, xe_xml, xe_Func, xe_Dm, xe_Msg, Main, xe_gnl3, xe_Query, xe_gnl2,
  xe_Lib, xe_SMS, xe_packet;


procedure TFrm_WORA8.proc_init;
var
  i : Integer;
begin
  proc_BrNameSet;

  cxDtStartA8.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
  cxDtEndA8.Date := cxDtStartA8.Date + 1;

  cxViewDongBu.Columns[0].DataBinding.ValueType := 'Boolean';     // 10 예약
	cxViewDongBu.Columns[1].DataBinding.ValueType := 'Integer';
  for i := 2 to cxViewDongBu.ColumnCount - 1 do
		cxViewDongBu.Columns[i].DataBinding.ValueType := 'String';

  cxViewDongBu.OptionsView.NoDataToDisplayInfoText := '';
end;

procedure TFrm_WORA8.proc_BrNameSet;
var
	sName, sBrNo, sHdNo: string;
  StrList: TStringList;
begin
	StrList := TStringList.Create;
  cbKeynumberA8.Tag := 1;
  try
    if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
    begin
      GetBrTelList(GT_SEL_BRNO.HDNO, StrList);
      cbKeynumberA8.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := '';
    end else
    begin
			GetBrTelList(GT_SEL_BRNO.BrNo, StrList);
			cbKeynumberA8.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := GT_SEL_BRNO.BrNo;
    end;
	finally
		StrList.Free;
  end;

  sName := GetSosokInfo;
	lblSosokNameA8.Caption := sName;

//  if cbKeynumber01.Properties.Items.Count >= 1 then
//    cbKeynumber01.Properties.Items.Insert(0, '전체');

  cbKeynumberA8.ItemIndex := 0;
  cbKeynumberA8.Tag := 0;
end;

procedure TFrm_WORA8.FormCreate(Sender: TObject);
begin
  proc_init;
end;

procedure TFrm_WORA8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_WORA8.cbKeynumber01PropertiesChange(Sender: TObject);
var
	sName, sBrName, sHdNo, sBrNo: string;
  iIdx: Integer;
begin
	if TcxComboBox(Sender).Tag = 1 then Exit;

  if GT_USERIF.LV = '60' then
  begin
    if GT_SEL_BRNO.GUBUN <> '1' then
    begin
      if TcxComboBox(Sender).Text = '전체' then
      begin
				sName := '[' + GT_SEL_BRNO.HDNO + '] 전체';
        sHdNo := GT_SEL_BRNO.HDNO;
				sBrNo := '';
      end else
      begin
        sHdNo := GT_SEL_BRNO.HDNO;

        if (TcxComboBox(Sender).Properties.Items.Count > 1) and (TcxComboBox(Sender).ItemIndex > 0) then
        begin
          if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
  					sBrNo := scb_DsBranchCode.Strings[scb_KeyNumber.IndexOf(TcxComboBox(Sender).Text)]
          else
            sBrNo := scb_DsBranchCode.Strings[TcxComboBox(Sender).ItemIndex - 1]
        end else
        begin
          if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
  					sBrNo := scb_DsBranchCode.Strings[scb_KeyNumber.IndexOf(TcxComboBox(Sender).Text)]
  				else
            sBrNo := scb_DsBranchCode.Strings[TcxComboBox(Sender).ItemIndex];
        end;

				iIdx := scb_BranchCode.IndexOf(sBrNo);
        if iIdx >= 0 then
					sBrName := scb_BranchName[iIdx]
        else
					sBrName := '';
				sName := '[' + sHdNo + '] - [' + sBrNo + ']' + sBrName;
			end;
    end else
    begin
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := GT_SEL_BRNO.BrNo;
      iIdx := scb_BranchCode.IndexOf(sBrNo);
      if iIdx >= 0 then
        sBrName := scb_BranchName[iIdx]
      else
        sBrName := '';
      sName := '[' + sHdNo + '] - [' + sBrNo + ']' + sBrName;
    end;
  end else
  begin
    sHdNo := GT_SEL_BRNO.HDNO;
    sBrNo := GT_SEL_BRNO.BrNo;
		iIdx := scb_BranchCode.IndexOf(sBrNo);
		if iIdx >= 0 then
			sBrName := scb_BranchName[iIdx]
		else
      sBrName := '';
    sName := '[' + sHdNo + '] - [' + sBrNo + ']' + sBrName;
  end;

  lblSosokNameA8.Caption := sName;
end;

procedure TFrm_WORA8.chk_All_SelectClick(Sender: TObject);
var
  i : Integer;
begin
  cxViewDongBu.DataController.BeginUpdate;
  try
    for I := 0 to cxViewDongBu.DataController.RecordCount - 1 do
    begin
      cxViewDongBu.DataController.Values[i, 0] := chk_All_Select.Checked;
    end;
  finally
    cxViewDongBu.DataController.EndUpdate;
  end;
end;

procedure TFrm_WORA8.cxBtnDateMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_dateA8.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_WORA8.btnExcelA8Click(Sender: TObject);
begin
  if cxViewDongBu.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
    Exit;
  end;

	if TCK_USER_PER.WOR_ExcelDown <> '1' then
	begin
    ShowMessage('[엑셀다운로드[기사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '동부화재보험가입현황.xls';
  Frm_Main.sgRpExcel := Format('기사>동부화재보험가입현황]%s건/%s', [GetMoneyStr(cxViewDongBu.DataController.RecordCount), FExcelDownMng]);
  Frm_Main.cxGridExcel := cxGridA8;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_WORA8.btnSearchA8Click(Sender: TObject);
var
  ls_TxLoad: string;
  rv_str, msg, sTmp : string;
  StrList, slList : TStringList;
  ErrCode: integer;

  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I, j : Integer;
  sData, sType: string;
  tmpCnt, iCnt : integer;
  tmpCntStr: string;
  k: Integer;
  tmpStr: string;
  ArrSt: array of string;
  iRow: integer;
begin
  if fGetChk_Search_HdBrNo('동부화재보험가입현황') then Exit;

	FExcelDownMng := Format('%s/대표번호:%s',
    [
        GetSelBrInfo
      , cbKeynumberA8.Text
    ]);

  Param := cbKeynumberA8.Text;

  if Trim(edtName.Text) = '' then Param := Param + '│'
                             else Param := Param + '│' + Trim(edtName.Text);

  if cbInSurYn.ItemIndex = 0 then Param := Param + '│'  else
  if cbInSurYn.ItemIndex = 1 then Param := Param + '│y' else
  if cbInSurYn.ItemIndex = 2 then Param := Param + '│n';

  if cxChkDay.Checked then
  begin
    Param := Param + '│' + FormatDateTime('YYYYMMDD090000', cxDtStartA8.Date);    //검색시작일자
    Param := Param + '│' + FormatDateTime('YYYYMMDD090000', cxDtEndA8.Date);    //검색종료일자
  end else
  begin
    Param := Param + '│' + '│';
  end;

  if Trim(edtHp.Text) = '' then Param := Param + '│'
                           else Param := Param + '│' + Trim(edtHp.Text);

  if cbSmsYn.ItemIndex = 0 then Param := Param + '│'  else
  if cbSmsYn.ItemIndex = 1 then Param := Param + '│y' else
  if cbSmsYn.ItemIndex = 2 then Param := Param + '│n';

  if cxCB1.ItemIndex = 0 then Param := Param + '│'  else
  if cxCB1.ItemIndex = 1 then Param := Param + '│y' else
  if cxCB1.ItemIndex = 2 then Param := Param + '│n';

  if cxCB2.ItemIndex = 0 then Param := Param + '│'  else
  if cxCB2.ItemIndex = 1 then Param := Param + '│y' else
  if cxCB2.ItemIndex = 2 then Param := Param + '│n';

  if cxCB3.ItemIndex = 0 then Param := Param + '│'  else
  if cxCB3.ItemIndex = 1 then Param := Param + '│y' else
  if cxCB3.ItemIndex = 2 then Param := Param + '│n';

  if cxCB4.ItemIndex = 0 then Param := Param + '│'  else
  if cxCB4.ItemIndex = 1 then Param := Param + '│y' else
  if cxCB4.ItemIndex = 2 then Param := Param + '│n';

  if ( ( cxCBY.Checked ) And ( cxCBN.Checked ) ) Or
     ( ( Not cxCBY.Checked ) And ( Not cxCBN.Checked ) ) then
    Param := Param + '│'
  else
  if ( ( cxCBY.Checked ) And ( Not cxCBN.Checked ) ) then
    Param := Param + '│1'
  else
  if ( ( Not cxCBY.Checked ) And ( cxCBN.Checked ) ) then
    Param := Param + '│2';

  slList := TStringList.Create;
  try
    if not RequestBasePaging(GetSel05('GET_INS_SEARCH', 'MNG_CUST.GET_INS_SEARCH', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('동부화재 보험가입 현황 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;

    chk_All_Select.Checked := False;
    cxViewDongBu.DataController.SetRecordCount(0);
    StrList := TStringList.Create;
    Screen.Cursor := crHourGlass;
    iCnt := 1;
    for j := 0 to slList.Count - 1 do
    begin
      Application.ProcessMessages;
      xmlData := slList.Strings[j];

      if Pos('<Data Count="',xmlData)>0 then
      begin
        tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
        if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
        tmpCnt:=StrToIntDef(tmpCntStr,0);
      end;
      if tmpCnt < 1 then Exit;

      cxViewDongBu.BeginUpdate;
      try
        SetLength(ArrSt,tmpCnt);
        tmpStr:=xmlData;
        tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
        tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
        tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);

        if Pos('<Result Value=',XmlData)>0 then
          tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);

        for k:=0 to tmpCnt-1 do
        begin
          ArrSt[k]:=tmpStr;
          if Pos('/>',tmpStr)>0 then
          begin
            ArrSt[k]:=Copy(tmpStr,1,Pos('/>',tmpStr)-1);
            if Pos('<Result Value=',ArrSt[k]) > 0 then
              ArrSt[k] := Copy(ArrSt[k],Pos('<Result Value=',ArrSt[k])+14,Length(ArrSt[k])-Pos('<Result Value=',ArrSt[k])+14+1);
            if Pos('/>',ArrSt[k]) > 0 then
              ArrSt[k] := Copy(ArrSt[k],1,Pos('/>',ArrSt[k])-1);
            ArrSt[k]:=StringReplace(ArrSt[k],'"','',[rfReplaceAll]);

            tmpStr:=Copy(tmpStr,Pos('/>',tmpStr)+2,Length(tmpStr)-Pos('/>',tmpStr)+2+1);
            StrList.Clear;
            GetTextSeperationEx('│', ArrSt[k], StrList);

            iRow := cxViewDongBu.DataController.AppendRecord;

            cxViewDongBu.DataController.Values[iRow,  0] := False;
            cxViewDongBu.DataController.Values[iRow,  1] := iCnt;
            cxViewDongBu.DataController.Values[iRow,  2] := StrToCall(strList.Strings[1]);                        // 대표번호(1)

            if Trim(StrList.Strings[2]) <> '' then                                                     // 가입신청일자(2)
              sTmp := copy(StrList.Strings[2], 1, 4) + '-' + copy(StrList.Strings[2], 5, 2) + '-' + copy(StrList.Strings[2], 7, 2) + ' ' +
                      copy(StrList.Strings[2], 9, 2) + ':' + copy(StrList.Strings[2], 11, 2) + ':' + copy(StrList.Strings[2], 13, 2)
            else
              sTmp := '';
            cxViewDongBu.DataController.Values[iRow,  3] := sTmp;

            cxViewDongBu.DataController.Values[iRow,  4] := IfThen(StrList.Strings[7] = 'y', '가입', '미가입');   // 가입유무(7)


            if Trim(StrList.Strings[3]) <> '' then                                                     // 최근완료일자(3)
              sTmp := copy(StrList.Strings[3], 1, 4) + '-' + copy(StrList.Strings[3], 5, 2) + '-' + copy(StrList.Strings[3], 7, 2)
            else
              sTmp := '';
            cxViewDongBu.DataController.Values[iRow,  5] := sTmp;
            cxViewDongBu.DataController.Values[iRow,  6] := StrList.Strings[4];                                   // 성명(4)
            cxViewDongBu.DataController.Values[iRow,  7] := StrToCall(StrList.Strings[5]);                        // 휴대폰번호(5)
            if Trim(StrList.Strings[6]) <> '' then                                                     // 최근완료일자(3)
              sTmp := copy(StrList.Strings[6], 1, 6) + '-' + copy(StrList.Strings[6], 7, 7)
            else
              sTmp := '';
            cxViewDongBu.DataController.Values[iRow,  8] := sTmp;                                      // 주민번호(6)
            cxViewDongBu.DataController.Values[iRow,  9] := IfThen(StrList.Strings[09] = 'y', '인증', '미인증');  // 실명인증여부(9)
            cxViewDongBu.DataController.Values[iRow, 10] := IfThen(StrList.Strings[10] = 'y', '동의', '미동의');  // 보험개.동(10)
            cxViewDongBu.DataController.Values[iRow, 11] := IfThen(StrList.Strings[11] = 'y', '동의', '미동의');  // 보험개.제(11)
            cxViewDongBu.DataController.Values[iRow, 12] := IfThen(StrList.Strings[12] = 'y', '동의', '미동의');  // 마케팅개.동(12)
            cxViewDongBu.DataController.Values[iRow, 13] := IfThen(StrList.Strings[13] = 'y', '동의', '미동의');  // 마케팅개.제(13)
            cxViewDongBu.DataController.Values[iRow, 14] := StrList.Strings[8];                                   // 본인인증(8)
            cxViewDongBu.DataController.Values[iRow, 15] := StrList.Strings[0];                                   // SEQ(0)
            cxViewDongBu.DataController.Values[iRow, 16] := StrList.Strings[14];                                  // 지사코드(14)
            Inc(iCnt);
          end;
        end;
      finally
        cxViewDongBu.endupdate;
      end;
    end;
  finally
    StrList.Free;
    slList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_WORA8.cxBtnSelSMSClick(Sender: TObject);
begin
  proc_SND_SMS(cxViewDongBu);
end;

procedure TFrm_WORA8.cxChkDayClick(Sender: TObject);
begin
  if cxChkDay.Checked then
  begin
    cxDtStartA8.Enabled := True;
    cxDtEndA8.Enabled := True;
    cxBtnDate.Enabled := True;
  end else
  begin
    cxDtStartA8.Enabled := False;
    cxDtEndA8.Enabled := False;
    cxBtnDate.Enabled := False;
  end;
end;

procedure TFrm_WORA8.cxViewDongBuColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_WORA8.cxViewDongBuDataControllerSortingChanged(Sender: TObject);
begin
  gfBandSetIndexNo(cxViewDongBu, AIndex, GS_SortNoChange);
end;

procedure TFrm_WORA8.cxViewDongBuStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if (cxViewDongBu.ViewData.Records[ARecord.Index].Values[0]) then
  begin
    AStyle := cxStyleSelected;
  end else
  begin
    AStyle := cxStyleNormal;
  end;
end;

procedure TFrm_WORA8.FormDestroy(Sender: TObject);
begin
  Frm_WORA8 := Nil;
end;

procedure TFrm_WORA8.FormShow(Sender: TObject);
Var i : Integer;
begin
  fSetFont(Frm_WORA8, GS_FONTNAME);
  for i := 0 to pred(cxStyleRepositoryWorker.Count) do
  begin
    TcxStyle(cxStyleRepositoryWorker.Items[i]).Font.Name := GS_FONTNAME;
  end;
end;

function TFrm_WORA8.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

  AStDt := cxDtStartA8;
  AEdDt := cxDtEndA8;
end;

procedure TFrm_WORA8.MenuItem10Click(Sender: TObject);
begin
  proc_CustMainProcess('y');
end;

procedure TFrm_WORA8.MenuItem2Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_WORA8.MenuItem3Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_WORA8.MenuItem4Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_WORA8.MenuItem5Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure TFrm_WORA8.N1Click(Sender: TObject);
begin
  proc_CustMainProcess('n');
end;

procedure TFrm_WORA8.N3Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

{-------------------------------------------------------------------------------
  Arguments: sGrid: 대상그리드; ASubscribe: 수신허용(True: 수신허용)
-------------------------------------------------------------------------------}
procedure TFrm_WORA8.proc_SND_SMS(sGrid: TcxGridBandedTableView; ASubscribe: Boolean);
var
  i, iWkTel, iWkName, iKeyNum, iCnt, RowIdx, iRow, KeyRow, ikey_cnt : Integer;
  sCustTel : string;
begin
  iWkTel  := 7;
  iWkName := 6;
  iKeyNum := 2;

  iCnt := 0;
  Frm_Main.procMenuCreateActive(1001, 'SMS발송');

  Frm_SMS.chkBalsin.Enabled := True;

  Frm_SMS.cxViewSms.DataController.SetRecordCount(0);
  Frm_SMS.cxViewKeyNum.DataController.SetRecordCount(0);
  Frm_SMS.cxViewSms.BeginUpdate;
  Frm_SMS.cxViewKeyNum.BeginUpdate;

  for I := 0 to sGrid.DataController.RecordCount - 1 do
  begin
    sCustTel := StringReplace(sGrid.ViewData.Records[I].Values[iWkTel], '-', '', [rfreplaceAll]);
    if (sGrid.DataController.Values[i, 0]) and (Copy(sCustTel, 1, 2) = '01')
      and (Length(sCustTel) in [10, 11]) then
    begin
      // 전송내역 구성
      RowIdx := Frm_SMS.cxViewSms.DataController.AppendRecord;
      // 0, 지사코드
      Frm_SMS.cxViewSms.DataController.Values[RowIdx, 0] := sGrid.ViewData.Records[I].Values[16];
      // 1, 대표번호
      Frm_SMS.cxViewSms.DataController.Values[RowIdx, 1] := StringReplace(sGrid.ViewData.Records[I].Values[iKeyNum], '-', '', [rfreplaceAll]);
      // 2, 기사번호
      Frm_SMS.cxViewSms.DataController.Values[RowIdx, 2] := StringReplace(sGrid.ViewData.Records[I].Values[iWkTel], '-', '', [rfreplaceAll]);
      // 3, 기사명
      Frm_SMS.cxViewSms.DataController.Values[RowIdx, 3] := sGrid.ViewData.Records[I].Values[iWkName];
      // 4, 마일리지
      Frm_SMS.cxViewSms.DataController.Values[RowIdx, 6] := '0';
      Inc(icnt);

      // 대표전화별 전송수 카운팅
      iRow := Frm_SMS.cxViewKeyNum.DataController.FindRecordIndexByText(0, 1,
        Frm_SMS.cxViewSms.DataController.Values[RowIdx, 1], True, True, True);

      if iRow = -1 then
      begin
        KeyRow := Frm_SMS.cxViewKeyNum.DataController.AppendRecord;
        Frm_SMS.cxViewKeyNum.DataController.Values[KeyRow, 0] := Frm_SMS.cxViewSms.DataController.Values[RowIdx, 0];
        Frm_SMS.cxViewKeyNum.DataController.Values[KeyRow, 1] := Frm_SMS.cxViewSms.DataController.Values[RowIdx, 1];
        Frm_SMS.cxViewKeyNum.DataController.Values[KeyRow, 2] := 1;
      end else
      begin
        ikey_cnt := Integer(Frm_SMS.cxViewKeyNum.DataController.Values[iRow, 2]);
        Inc(ikey_cnt);
        Frm_SMS.cxViewKeyNum.DataController.SetValue(iRow, 2, ikey_cnt);
      end;
    end;
  end;

  Frm_SMS.cxViewSms.EndUpdate;
  Frm_SMS.cxViewKeyNum.EndUpdate;
  Frm_SMS.cxViewSms.Columns[1].SortOrder := soAscending;
  Frm_SMS.mmoAfter.Text := IntToStr(iCnt);
  // 외부에서 호출함수
  Frm_SMS.proc_branch_sms;
  Frm_SMS.Show;
  Frm_SMS.cxBtnHelp.Click;
end;

procedure TFrm_WORA8.proc_CustMainProcess( sJoin : String );
const
  ls_sabun = '<Worker Sabun="%s"/>';
var
  sSabun, sMessage: string;
  iWkSabun, i, iCnt : Integer;
  slSendList: TStringList;
  iSucc, iFail : integer;
begin
  iWkSabun := 15;
  iCnt := 0;
  slSendList := TStringList.Create;
  try
    // 기사 직접 선택 검색,,
    for i := 0 to cxViewDongBu.DataController.RecordCount - 1 do
    begin
      sSabun := cxViewDongBu.ViewData.Records[I].Values[iWkSabun];
      if cxViewDongBu.ViewData.Records[I].Values[0] then
      begin
        slSendList.Add(sSabun);
        sSabun := '';
        Inc(iCnt);
      end;
    end;

    if slSendList.Count > 0 then
    begin
      iSucc := 0;
      iFail := 0;

      // 처리할 기사 수를 페이지 처리 한다.
      for i := 0 to slSendList.Count - 1 do
      begin
        proc_CustProcess(slSendList[i], sJoin); // [hjf] 한건으로 변경했으므로 무조건 1건

        // 일괄차감시 DB서버 부하를 줄이기 위해 Sleep처리
        if ((formatdatetime('hhmm', Now) >= '2100') or (formatdatetime('hhmm', Now) <= '0100')) then Sleep(100)
                                                                                                else Sleep(10);

        // 일마감 등 시스템 오류인 경우 중지
        if pviSucc + pviFail = 0 then
          Break;

        iSucc := iSucc + pviSucc; // 성공건수
        iFail := iFail + pviFail; // 실패건수
      end;

      if iSucc + iFail > 0 then
      begin
        sMessage := Format('성공건수 : %d' + #13#10 + '실패건수 : %d', [iSucc, iFail]);
        GMessagebox(sMessage, cdmsE);
      end;

			btnSearchA8.Click; // 결과 처리후 재조회 처리.
    end else
    begin
      GMessagebox('선택된 고객이 없습니다. 확인 하세요!', CDMSE);
    end;
  finally
    slSendList.Free;
  end;
end;

procedure TFrm_WORA8.proc_CustProcess( sWkSabunList, sJoin : String );
const
  ls_sabun = '<Worker Sabun="WkSabunString"/>';
var
	XmlData, Param, ErrMsg : string;
  ErrCode: integer;
begin
  try
    Param  := sWkSabunList + '│' + sJoin;
    if not RequestBase(GetCallable05('SET_INS_YN', 'MNG_CUST.SET_INS_YN', Param), XmlData, ErrCode, ErrMsg) then
    begin
      pviFail := 1;
      Exit;
    end;
    pviSucc := 1;
  except

  end;
end;

procedure TFrm_WORA8.gfBandSetIndexNo(cxGridView: TcxGridBandedTableView; iIndex: Integer;
  isOK: Boolean);
Var
  i, iNo: Integer;
begin
  try
    iNo := 1;

    if isOK then
    begin
      cxGridView.BeginUpdate;
      if iNo <> iIndex then
      begin
        for i := 0 to cxGridView.DataController.RowCount - 1 do
        begin
          cxGridView.ViewData.Records[i].Values[iNo] := i + 1;
        end;
      end;
      cxGridView.EndUpdate;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

end.

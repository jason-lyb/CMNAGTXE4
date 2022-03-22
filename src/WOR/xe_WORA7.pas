unit xe_WORA7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, System.Math, System.StrUtils,
  cxDateUtils, DateUtils,
  Dialogs, cxPC, cxControls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  IniFiles, MSXML2_TLB, ShellAPI, cxPCdxBarPopupMenu, cxLookAndFeels,
  cxLookAndFeelPainters, cxData, cxDataStorage, cxEdit, cxNavigator, cxLabel,
  cxCurrencyEdit, cxContainer, Vcl.Menus, Data.DB, cxDBData, Vcl.ComCtrls,
  dxCore, cxClasses, Vcl.StdCtrls, cxRadioGroup, cxDropDownEdit,
  cxCalendar, cxMaskEdit, cxTextEdit, cxGridDBTableView, cxButtons, cxGroupBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridCustomView, cxGrid, Vcl.ExtCtrls, cxListBox, cxGridDBBandedTableView,
  cxMemo, cxSpinEdit, dxSkinsCore, dxSkinDevExpressStyle, dxSkinscxPCPainter;

type
  TFrm_WORA7 = class(TForm)
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
    lblSosokNameA7: TcxLabel;
    Shape1: TShape;
    Shape3: TShape;
    cxGridA7: TcxGrid;
    Grid4View: TcxGridDBTableView;
    Grid3ViewColumn40: TcxGridDBColumn;
    Grid3ViewColumn41: TcxGridDBColumn;
    Grid3ViewColumn42: TcxGridDBColumn;
    Grid3ViewColumn43: TcxGridDBColumn;
    Grid3ViewColumn44: TcxGridDBColumn;
    Grid3ViewColumn45: TcxGridDBColumn;
    Grid3ViewColumn46: TcxGridDBColumn;
    Grid3ViewColumn47: TcxGridDBColumn;
    Grid3ViewColumn48: TcxGridDBColumn;
    Grid3ViewColumn49: TcxGridDBColumn;
    Grid3ViewColumn50: TcxGridDBColumn;
    Grid3ViewColumn51: TcxGridDBColumn;
    Grid3ViewColumn52: TcxGridDBColumn;
    Grid3ViewColumn53: TcxGridDBColumn;
    Grid3ViewColumn54: TcxGridDBColumn;
    Grid3ViewColumn55: TcxGridDBColumn;
    Grid3ViewColumn56: TcxGridDBColumn;
    Grid3ViewColumn57: TcxGridDBColumn;
    Grid3ViewColumn58: TcxGridDBColumn;
    Grid3ViewColumn59: TcxGridDBColumn;
    Grid3ViewColumn60: TcxGridDBColumn;
    Grid3ViewColumn61: TcxGridDBColumn;
    Grid3ViewColumn62: TcxGridDBColumn;
    Grid3ViewColumn63: TcxGridDBColumn;
    Grid3ViewColumn64: TcxGridDBColumn;
    Grid3ViewColumn65: TcxGridDBColumn;
    Grid3ViewColumn66: TcxGridDBColumn;
    Grid3ViewColumn67: TcxGridDBColumn;
    Grid3ViewColumn68: TcxGridDBColumn;
    Grid3ViewColumn69: TcxGridDBColumn;
    Grid3ViewColumn70: TcxGridDBColumn;
    Grid3ViewColumn71: TcxGridDBColumn;
    Grid3ViewColumn72: TcxGridDBColumn;
    Grid3ViewColumn73: TcxGridDBColumn;
    Grid3ViewColumn74: TcxGridDBColumn;
    Grid3ViewColumn75: TcxGridDBColumn;
    Grid3ViewColumn76: TcxGridDBColumn;
    Grid3ViewColumn77: TcxGridDBColumn;
    Grid3ViewColumn78: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxSEYear: TcxSpinEdit;
    cxSEMonth: TcxSpinEdit;
    btnSearchA7: TcxButton;
    TcxButton191: TcxButton;
    btnExcelA7: TcxButton;
    Shape2: TShape;
    pnlHelpA7: TPanel;
    cxGroupBox2: TcxGroupBox;
    Grid3: TcxGrid;
    Grid3View: TcxGridDBTableView;
    Grid3ViewColumn1: TcxGridDBColumn;
    Grid3ViewColumn2: TcxGridDBColumn;
    Grid3ViewColumn3: TcxGridDBColumn;
    Grid3ViewColumn4: TcxGridDBColumn;
    Grid3ViewColumn5: TcxGridDBColumn;
    Grid3ViewColumn6: TcxGridDBColumn;
    Grid3ViewColumn7: TcxGridDBColumn;
    Grid3ViewColumn8: TcxGridDBColumn;
    Grid3ViewColumn9: TcxGridDBColumn;
    Grid3ViewColumn10: TcxGridDBColumn;
    Grid3ViewColumn11: TcxGridDBColumn;
    Grid3ViewColumn12: TcxGridDBColumn;
    Grid3ViewColumn13: TcxGridDBColumn;
    Grid3ViewColumn14: TcxGridDBColumn;
    Grid3ViewColumn15: TcxGridDBColumn;
    Grid3ViewColumn16: TcxGridDBColumn;
    Grid3ViewColumn17: TcxGridDBColumn;
    Grid3ViewColumn18: TcxGridDBColumn;
    Grid3ViewColumn19: TcxGridDBColumn;
    Grid3ViewColumn20: TcxGridDBColumn;
    Grid3ViewColumn21: TcxGridDBColumn;
    Grid3ViewColumn22: TcxGridDBColumn;
    Grid3ViewColumn23: TcxGridDBColumn;
    Grid3ViewColumn24: TcxGridDBColumn;
    Grid3ViewColumn25: TcxGridDBColumn;
    Grid3ViewColumn26: TcxGridDBColumn;
    Grid3ViewColumn27: TcxGridDBColumn;
    Grid3ViewColumn28: TcxGridDBColumn;
    Grid3ViewColumn29: TcxGridDBColumn;
    Grid3ViewColumn30: TcxGridDBColumn;
    Grid3ViewColumn31: TcxGridDBColumn;
    Grid3ViewColumn32: TcxGridDBColumn;
    Grid3ViewColumn33: TcxGridDBColumn;
    Grid3ViewColumn34: TcxGridDBColumn;
    Grid3ViewColumn35: TcxGridDBColumn;
    Grid3ViewColumn36: TcxGridDBColumn;
    Grid3ViewColumn37: TcxGridDBColumn;
    Grid3ViewColumn38: TcxGridDBColumn;
    Grid3ViewColumn39: TcxGridDBColumn;
    Grid3Level: TcxGridLevel;
    BtnClose: TcxButton;
    cxLabel1: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure TcxButton191Click(Sender: TObject);
    procedure btnSearchA7Click(Sender: TObject);
    procedure cxGroupBox2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnExcelA7Click(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure proc_init;
    procedure proc_ATTENT_MONTHLY;
  end;

var
  Frm_WORA7: TFrm_WORA7;

implementation

{$R *.dfm}

uses xe_GNL, xe_xml, xe_Func, xe_Dm, xe_Msg, Main, xe_gnl3, xe_Query, xe_gnl2,
  xe_Lib, xe_packet;


procedure TFrm_WORA7.proc_init;
var
  i : Integer;
begin
  try
    // 그리드 초기화
    Grid4View.Columns[0].DataBinding.ValueType := 'String';
    Grid4View.Columns[1].DataBinding.ValueType := 'String';
    Grid4View.Columns[2].DataBinding.ValueType := 'String';
    Grid4View.Columns[3].DataBinding.ValueType := 'String';
    for i := 0 to 30 do
    begin
      Grid4View.Columns[i + 4].DataBinding.ValueType := 'String';  // 1일
    end;
    Grid4View.Columns[35].DataBinding.ValueType := 'String';     //출근일
    Grid4View.Columns[36].DataBinding.ValueType := 'String';     //출근율
    Grid4View.Columns[37].DataBinding.ValueType := 'Currency';     //사용료
    Grid4View.Columns[38].DataBinding.ValueType := 'String';     //기사상태
    Grid4View.DataController.SetRecordCount(0);

    if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  31 then
    begin
      Grid4View.Columns[32].Visible := True;
      Grid4View.Columns[33].Visible := True;
      Grid4View.Columns[34].Visible := True;
    end else
    if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  30 then
    begin
      Grid4View.Columns[32].Visible := True;
      Grid4View.Columns[33].Visible := True;
      Grid4View.Columns[34].Visible := False;
    end else
    if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  29 then
    begin
      Grid4View.Columns[32].Visible := True;
      Grid4View.Columns[33].Visible := False;
      Grid4View.Columns[34].Visible := False;
    end else
    if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  28 then
    begin
      Grid4View.Columns[32].Visible := False;
      Grid4View.Columns[33].Visible := False;
      Grid4View.Columns[34].Visible := False;
    end;
  except
  end;

  lblSosokNameA7.Caption := GetSosokInfo;
end;

procedure TFrm_WORA7.FormCreate(Sender: TObject);
begin
  proc_init;

  cxSEYear.Value := StrToIntDef(FormatDateTime('yyyy', Now), 1);
  cxSEMonth.Value := StrToIntDef(FormatDateTime('mm', Now), 1);
end;

procedure TFrm_WORA7.BtnCloseClick(Sender: TObject);
begin
  pnlHelpA7.Visible := False;
end;

procedure TFrm_WORA7.btnExcelA7Click(Sender: TObject);
begin
  if Grid4View.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	if TCK_USER_PER.WOR_ExcelDown <> '1' then
	begin
    ShowMessage('[엑셀다운로드[기사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '기사출근표.xls';
  Frm_Main.sgRpExcel := Format('기사>기사출근표>%s건', [GetMoneyStr(Grid4View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA7;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_WORA7.cxGroupBox2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxGroupBox(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WORA7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_WORA7.FormDestroy(Sender: TObject);
begin
  Frm_WORA7 := Nil;
end;

procedure TFrm_WORA7.TcxButton191Click(Sender: TObject);
begin
  if pnlHelpA7.Visible = True then pnlHelpA7.Visible := False
  else
  begin
    pnlHelpA7.Left := (Width - pnlHelpA7.Width) div 2;
    pnlHelpA7.top := (Height - pnlHelpA7.Height) div 2;
    pnlHelpA7.Visible := True;
    pnlHelpA7.BringToFront;
  end;
end;

procedure TFrm_WORA7.btnSearchA7Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	Grid3View.DataController.SetRecordCount(0);
  proc_ATTENT_MONTHLY;
end;

procedure TFrm_WORA7.proc_ATTENT_MONTHLY;
var
  slList, StrList: TStringList;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  I, j : Integer;
  sData, sType: string;
  tmpCnt, iCnt: integer;
  tmpCntStr: string;
  k: Integer;
  tmpStr: string;
  ArrSt : array of string;
  ArrCnt : array of Integer;
  iRow, tATTENT_1, tATTENT_2, tUES_AMT: integer;
begin
  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('출근표') then Exit;

  if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  31 then
  begin
    Grid4View.Columns[32].Visible := True;
    Grid4View.Columns[33].Visible := True;
    Grid4View.Columns[34].Visible := True;
  end else
  if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  30 then
  begin
    Grid4View.Columns[32].Visible := True;
    Grid4View.Columns[33].Visible := True;
    Grid4View.Columns[34].Visible := False;
  end else
  if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  29 then
  begin
    Grid4View.Columns[32].Visible := True;
    Grid4View.Columns[33].Visible := False;
    Grid4View.Columns[34].Visible := False;
  end else
  if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  28 then
  begin
    Grid4View.Columns[32].Visible := False;
    Grid4View.Columns[33].Visible := False;
    Grid4View.Columns[34].Visible := False;
  end;

  if cxSEMonth.Value < 10 then Param := IntToStr(cxSEYear.Value) + '0' + IntToStr(cxSEMonth.Value) //       //검색일자
                          else Param := IntToStr(cxSEYear.Value) + IntToStr(cxSEMonth.Value);//       //검색일자

  if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then  //본사
  begin
    GMessagebox('지사를 선택해 주세요.', CDMSI);
    Exit;
  end else
  begin
    if (GT_USERIF.LV = '60') then
    begin
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
        Param := Param + '│' + GT_SEL_BRNO.HDNO
      else
        Param := Param + '│' + GT_USERIF.HD;

      Param := Param + '│' + GT_SEL_BRNO.BrNo;
    end else
    begin
      Param := Param + '│' + GT_USERIF.HD;
      Param := Param + '│' + GT_USERIF.BR;
    end;
  end;
  Param := Param + '│' ;

  slList := TStringList.Create;
  try
    if not RequestBasePaging(GetSel05('GET_ATTENT_MONTHLY', 'MNG_WK.ATTEND_MONTHLY', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('기사 출근표 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

    Grid4View.DataController.SetRecordCount(0);
    Grid4View.BeginUpdate;
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

      if tmpCnt<1 then
      begin
        Grid4View.DataController.SetRecordCount(0);
        GMessagebox('검색된 내용이 없습니다.', CDMSI);
        exit;
      end;

      SetLength(ArrSt,tmpCnt);
      tmpStr:=xmlData;
      tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
      tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
      tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);


      if Pos('<Result Value=',XmlData)>0 then
        tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);

      SetLength(ArrCNT,31);

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

          iRow := Grid4View.DataController.AppendRecord;
          SetGridData(Grid4View, iRow,  0, StrToInt(IntToStr(iCnt)));
          SetGridData(Grid4View, iRow,  1, StrList.Strings[0]);                    //기사사번
          SetGridData(Grid4View, iRow,  2, StrList.Strings[2]);                    //기사자체사번
          SetGridData(Grid4View, iRow,  3, StrList.Strings[3]);                    //기사명

          for i := 0 to 30 do
          begin
            if Trim(StrList.Strings[i + 4]) = '○' then
            begin
              ArrCNT[i] := ArrCNT[i] + 1;
            end;
            SetGridData(Grid4View, iRow,  i + 4, StrList.Strings[i + 4]);          //출근여부1일
          end;
          SetGridData(Grid4View, iRow, 35, StrList.Strings[35]);                   //출근일수
          tATTENT_1 := tATTENT_1 + StrToInt(StrList.Strings[35]);
          SetGridData(Grid4View, iRow, 36, StrList.Strings[36]);                   //출근율
          SetGridData(Grid4View, iRow, 37, StrList.Strings[37]);                   //사용료
          tUES_AMT := tUES_AMT + StrToInt(StrList.Strings[37]);
          SetGridData(Grid4View, iRow, 38, StrList.Strings[1]);                    //기사상태
        end;
        Inc(iCnt);
      end;
      iRow := Grid4View.DataController.AppendRecord;

      SetGridData(Grid4View, iRow,  0, '');
      SetGridData(Grid4View, iRow,  1, '');
      SetGridData(Grid4View, iRow,  2, '');
      SetGridData(Grid4View, iRow,  3, '합계');
      for i := 0 to 30 do
      begin
        SetGridData(Grid4View, iRow,  i + 4, ArrCNT[i]);
      end;
      SetGridData(Grid4View, iRow,  35, FormatCash(tATTENT_1));
      SetGridData(Grid4View, iRow,  36, '');
      SetGridData(Grid4View, iRow,  37, FormatCash(tUES_AMT));
    end;
    Grid4View.endupdate;
  finally
    StrList.Free;
    slList.Free;
    Screen.Cursor := crDefault;
  end;

end;

end.

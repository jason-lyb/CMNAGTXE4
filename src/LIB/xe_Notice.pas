unit xe_Notice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxCheckBox, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls,
  cxButtons, Vcl.OleCtrls, SHDocVw, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  dxSkinsCore, dxSkinscxPCPainter, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, cxLabel, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_Notice = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    wb1: TWebBrowser;
    cxGridWkConnect: TcxGrid;
    cxViewNoticeList: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    Notice_ListColumnViewNoticeListColumn1: TcxGridDBColumn;
    Notice_ListColumnViewNoticeListColumn3: TcxGridDBColumn;
    Notice_ListColumnViewNoticeListColumn4: TcxGridDBColumn;
    Notice_ListColumnViewNoticeListColumn5: TcxGridDBColumn;
    Notice_ListColumnViewNoticeListColumn6: TcxGridDBColumn;
    Notice_ListColumnViewNoticeListColumn7: TcxGridDBColumn;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    Shape5: TShape;
    Shape1: TShape;
    cxBtnAccept: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxViewNoticeListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure Notice_ListColumnViewNoticeListColumn7PropertiesEditValueChanged(
      Sender: TObject);
    procedure pnlTitleMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxBtnAcceptClick(Sender: TObject);
  private
    { Private declarations }
    procedure pReadCount;
    procedure pAuto_Read_Save(bView : Boolean; iRow, iCol: Integer);
  public
    { Public declarations }
    procedure proc_init;
    procedure proc_UnRead_List;
  end;

var
  Frm_Notice: TFrm_Notice;

implementation

{$R *.dfm}

uses xe_GNL, xe_packet, xe_Func, xe_Msg, xe_gnl2;


procedure TFrm_Notice.FormCreate(Sender: TObject);
var
  Save: Integer;
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
  proc_init;
end;

procedure TFrm_Notice.FormDestroy(Sender: TObject);
begin
  Frm_Notice := Nil;
end;

procedure TFrm_Notice.btn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_Notice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_Notice.pnlTitleMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_Notice.proc_init;
var
  i: Integer;
begin
  for i := 0 to cxViewNoticeList.ColumnCount - 1 do
    cxViewNoticeList.Columns[i].DataBinding.ValueType := 'String';
  cxViewNoticeList.Columns[1].DataBinding.ValueType := 'Integer';
end;

procedure TFrm_Notice.btnCloseClick(Sender: TObject);
var
  i : Integer;
  iCol : integer;
  sNum, sUrl : string;
begin
  proc_UnRead_List;
  for i := 0 to cxViewNoticeList.DataController.RecordCount - 1 do
  begin
    if cxViewNoticeList.DataController.Values[i, 0] = False then
    begin
      iCol := cxViewNoticeList.GetColumnByFieldName('No').Index;
      sNum := cxViewNoticeList.DataController.Values[i, iCol];
      GMessagebox(Format('[%s]번 게시물을 열람하지 않으셨습니다.', [sNum]), CDMSE);

      sNum := cxViewNoticeList.DataController.Values[0, iCol];
      if GS_PRJ_AREA = 'S' then
        sUrl := GS_NOTICE_URL_S + sNum
      else
        sUrl := GS_NOTICE_URL_O + sNum;
      wb1.Navigate(sUrl);

      Exit;
    end;
  end;
  Close;
end;

procedure TFrm_Notice.cxBtnAcceptClick(Sender: TObject);
var
  i, iCol : integer;
begin
  iCol := cxViewNoticeList.GetColumnByFieldName('No').Index;
  for i := 0 to cxViewNoticeList.DataController.RecordCount - 1 do
  begin
    if cxViewNoticeList.DataController.Values[i, 0] = False then
    begin
      pAuto_Read_Save(True, i, iCol);
    end;
  end;
end;

procedure TFrm_Notice.cxViewNoticeListCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iCol, iRow : integer;
begin
  iCol := cxViewNoticeList.GetColumnByFieldName('No').Index;
  iRow := cxViewNoticeList.DataController.FocusedRecordIndex;

  pAuto_Read_Save(True, iRow, iCol);
  pReadCount;
end;

procedure TFrm_Notice.proc_UnRead_List;
var XmlData, Param, ErrMsg: string;
  ErrCode: Integer;
  StrList: TStringList;
  tmpCnt: integer;
  tmpCntStr: string;
  k: Integer;
  tmpStr : string;
  ArrSt: array of string;
  iRow: integer;
begin
  Param := '';
  if not RequestBase(GetSel05('GET_NOTICE_LIST', 'CAS.GET_NOTICE_LIST', '100', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('기사정보 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

  cxViewNoticeList.DataController.SetRecordCount(0);
  StrList := TStringList.Create;
  Screen.Cursor := crHandPoint;
  try
    if Pos('<Data Count="',xmlData)>0 then
    begin
      tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
      if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
      tmpCnt:=StrToIntDef(tmpCntStr,0);
    end;
    if tmpCnt<1 then exit;
    PnlTitle.Caption := '   미 열람(' + inttostr(tmpCnt) + ')건  공지사항 확인';
    SetLength(ArrSt,tmpCnt);
    tmpStr:=xmlData;
    tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
    tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
    tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);

    if Pos('<Result Value=',XmlData)>0 then
      tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);
    //showmessage(tmpStr);

    if tmpCnt>0 then
    begin
      cxViewNoticeList.BeginUpdate;
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
          GetTextSeperationEx('│', StringReplace(ArrSt[k], '&amp;', '', [rfReplaceAll]), StrList);

          iRow := cxViewNoticeList.DataController.AppendRecord;        // 1 Record 추가

          SetGridData(cxViewNoticeList, iRow, 0, false);
          SetGridData(cxViewNoticeList, iRow, 1, StrList.Strings[0]);
          SetGridData(cxViewNoticeList, iRow, 2, StrList.Strings[1]);
          SetGridData(cxViewNoticeList, iRow, 3, StrList.Strings[2]);
          SetGridData(cxViewNoticeList, iRow, 4, copy(StrList.Strings[3],1,4) + '-' + copy(StrList.Strings[3],5,2) + '-' + copy(StrList.Strings[3], 7,2) + ' ' +
          copy(StrList.Strings[3],9,2) + ':' + copy(StrList.Strings[3],11,2) + ':' + copy(StrList.Strings[3],13,2));
        end;
      end;
      cxViewNoticeList.endupdate;
    end;
  finally
    StrList.Free;  
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_Notice.FormShow(Sender: TObject);
begin
  proc_UnRead_List;
end;

procedure TFrm_Notice.Notice_ListColumnViewNoticeListColumn7PropertiesEditValueChanged(
  Sender: TObject);
var
  Row, Col: Integer;
begin
  Row := cxViewNoticeList.DataController.FocusedRecordIndex;
  Col := cxViewNoticeList.GetColumnByFieldName('').Index;
  cxViewNoticeList.DataController.Values[Row, Col] := not cxViewNoticeList.DataController.Values[Row, Col];
end;

procedure TFrm_Notice.pReadCount;
var
  i, aCnt : integer;
begin
  aCnt := 0;
  for i := 0 to cxViewNoticeList.DataController.RecordCount - 1 do
  begin
    if cxViewNoticeList.DataController.Values[i, 0] = False then inc(aCnt);
  end;
  pnlTitle.Caption := '   미 열람(' + inttostr(aCnt) + ')건  공지사항 확인';
end;

procedure TFrm_Notice.pAuto_Read_Save(bView : Boolean; iRow, iCol : Integer );
var sUrl, sNum, Param : string;
  i, aCnt : integer;
  XmlData: string;
  ErrCode: integer;
  ErrMsg: string;
begin
  sNum := cxViewNoticeList.DataController.Values[iRow, iCol];

  if GS_PRJ_AREA = 'S' then sUrl := GS_NOTICE_URL_S + sNum
                       else sUrl := GS_NOTICE_URL_O + sNum;

  cxViewNoticeList.DataController.Values[iRow, 0] := True;

  wb1.Navigate(sUrl);

  Param := cxViewNoticeList.DataController.Values[iRow, 1];
  try
    if not RequestBase(GetCallable05('SET_NOTICE_READ', 'CAS.SET_NOTICE_READ', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('공지 읽음 기록 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

end.

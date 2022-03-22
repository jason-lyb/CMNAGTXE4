unit xe_JON02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, dxCore,
  Dialogs, Menus, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxControls,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxLabel, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxContainer, IdBaseComponent,
  dxSkinsCore, dxSkinscxPCPainter, cxTextEdit, cxMemo, cxGroupBox, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark,
  dxSkinOffice2007Silver, dxScrollbarAnnotations;

type
  TFrm_JON02 = class(TForm)
    Panel1: TPanel;
    cxButton6: TcxButton;
    cxGrid1: TcxGrid;
    tvwCidLog: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    tvwCidLogColumn1: TcxGridDBColumn;
    tvwCidLogColumn2: TcxGridDBColumn;
    tvwCidLogColumn3: TcxGridDBColumn;
    tvwCidLogColumn4: TcxGridDBColumn;
    cxButton1: TcxButton;
    tvwCidLogColumn5: TcxGridDBColumn;
    tvwCidLogColumn6: TcxGridDBColumn;
    pnlTitle: TPanel;
    BtnClose: TcxButton;
    cxLblActive: TLabel;
    cxSISOMemo: TcxMemo;
    PnlSiSo: TPanel;
    cxGroupBox1: TcxGroupBox;
    Shape1: TShape;
    edt_NAMETEL: TcxTextEdit;
    btnCallingList: TcxButton;
    cxLCuNm: TcxLabel;
    tvwCidLogColumn7: TcxGridDBColumn;
    procedure cxButton6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure tvwCidLogCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure cxLCuNmClick(Sender: TObject);
    procedure edt_NAMETELEnter(Sender: TObject);
    procedure edt_NAMETELExit(Sender: TObject);
    procedure btnCallingListClick(Sender: TObject);
    procedure tvwCidLogTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
  private
    { Private declarations }
    procedure proc_Search;
    procedure proc_SISOSearch;
  public
    { Public declarations }
    LG_StartDateTime: string; // 업무시작일자
  end;

var
  Frm_JON02: TFrm_JON02;

implementation

{$R *.dfm}

uses xe_GNL, Main, xe_Func;

procedure TFrm_JON02.cxButton6Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_JON02.cxLCuNmClick(Sender: TObject);
begin
  edt_NAMETEL.SetFocus;
end;

procedure TFrm_JON02.edt_NAMETELEnter(Sender: TObject);
begin
  cxLCuNm.Visible := False;
end;

procedure TFrm_JON02.edt_NAMETELExit(Sender: TObject);
begin
	cxLCuNm.Visible := (edt_NAMETEL.Text = ''); // 출발지 입력 잔상.
end;

procedure TFrm_JON02.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON02.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_JON02.FormCreate(Sender: TObject);
var
  Save: LongInt; // 폼타이틀 제거용.
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
end;

procedure TFrm_JON02.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON02.FormDestroy(Sender: TObject);
begin
  Frm_JON02 := Nil;
end;

procedure TFrm_JON02.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fSetFont(Frm_JON02, GS_FONTNAME);
  fSetSkin(Frm_JON02);

  LG_StartDateTime := StartDateTime('yyyymmddhhmmss');
  for i := 0 to tvwCidLog.ColumnCount - 1 do
    tvwCidLog.Columns[i].DataBinding.ValueType := 'String';

  proc_Search;

	if GT_OCX ='SSIT' then proc_SISOSearch
										else 
										begin
											if GS_EnvFile.ReadInteger('CID_COMM', 'GUBUN', 0) = 3 then
												PnlSiSo.Visible := True
											else
												PnlSiSo.Visible := False;
										end;
end;

procedure TFrm_JON02.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON02.proc_Search;
var
  i, j, iRow: Integer;
  lsLog, lst_CidLog: TStringList;
  sTemp, sKeynum, sTime : string;
  DecodeStr : AnsiString;
  bView : Boolean;
begin
  try
    tvwCidLog.DataController.SetRecordCount(0);

    if 0 < Frm_Main.gst_CidLog.Count then
    begin //2009-01-09  작성자 : 임창기 (if 1 < Frm_Main.gst_CidLog.Count then begin)
      tvwCidLog.BeginUpdate;
      lsLog := TStringList.Create;
      try
        for i := 0 to Frm_Main.gst_CidLog.Count - 1 do
        begin
          bView := False;

          DecodeStr := Frm_Main.gst_CidLog[i];
          GetTextSeperationEx2('/', DecodeStr, lsLog);

          if ( Trim(edt_NAMETEL.Text) <> '') then
          begin
            if Pos(Trim(edt_NAMETEL.Text), lsLog[1]) > 1 then bView := True;
          end else
          begin
            bView := True;
          end;

          if bView then
          begin
						iRow := tvwCidLog.DataController.AppendRecord;
            tvwCidLog.DataController.Values[iRow, 0] := strtocall(lsLog[0]);
						tvwCidLog.DataController.Values[iRow, 1] := func_CustTel_Masking(TCK_USER_PER.BTM_CUTELUNMASKING = '1', lsLog[1]);    //전화번호
						sTemp := lsLog[2];
            sTemp := StringReplace(sTemp, ' ', '', [rfReplaceAll]);
            sTemp := stringreplace(sTemp, '-', '', [rfReplaceAll]);
						sTemp := stringreplace(sTemp, ':', '', [rfReplaceAll]);
						sTemp := copy(sTemp, 1, 4) + '-' + copy(sTemp, 5, 2) + '-' + copy(sTemp, 7, 2) + ' '
									 + copy(sTemp, 9, 2) + ':' + copy(sTemp, 11, 2) + ':' + copy(sTemp, 13, 2);

            tvwCidLog.DataController.Values[iRow, 2] := sTemp;
            tvwCidLog.DataController.Values[iRow, 3] := lsLog[3];
            tvwCidLog.DataController.Values[iRow, 4] := '';
            // DNIS 정보 추가
            if lsLog.Count > 4 then
              tvwCidLog.DataController.Values[iRow, 4] := lsLog[4];
						tvwCidLog.DataController.Values[iRow, 6] := strtocall(lsLog[1]); //RealCuTel
					end;
        end;
      finally
        lsLog.Free;
      end;
      tvwCidLog.Columns[2].SortOrder := soDescending;
      tvwCidLog.EndUpdate;
    end;

    Try
      lsLog := TStringList.Create;
      lst_CidLog := TStringList.Create;
      if Not FileExists(CIDLOGPATHFILE1) then Exit;
      lst_CidLog.LoadFromFile(CIDLOGPATHFILE1);
      for i := 0 to tvwCidLog.DataController.RecordCount - 1 do
      begin
        sKeynum  := tvwCidLog.DataController.Values[i, 0];
        sTime    := tvwCidLog.DataController.Values[i, 2];

        lst_CidLog.Find(StringReplace(sKeynum, '-', '', [rfReplaceAll]) + '/' + sTime, j);

        try
          if j < ( lst_CidLog.Count ) then
          begin
            GetTextSeperationEx2('/', lst_CidLog[j], lsLog);
            sTemp := lsLog[1];
            sTemp := StringReplace(sTemp, ' ', '', [rfReplaceAll]);
            sTemp := stringreplace(sTemp, '-', '', [rfReplaceAll]);
            sTemp := stringreplace(sTemp, ':', '', [rfReplaceAll]);
            sTemp := copy(sTemp, 1, 4) + '-' + copy(sTemp, 5, 2) + '-' + copy(sTemp, 7, 2) + ' '
                   + copy(sTemp, 9, 2) + ':' + copy(sTemp, 11, 2) + ':' + copy(sTemp, 13, 2);

            if (sKeynum = strtocall(lsLog[0])) and (sTime = sTemp) And ( lsLog.Count >= 3 ) then
            begin
              if ((lsLog[2] = '기사') or (lsLog[2] = '고객')) then
              SetGridData(tvwCidLog, i,  5, lsLog[2]);
            end;
          end;
        except
        end;
      end;
    finally
      lsLog.Free;
      FreeAndNil(lst_CidLog);
    end;
  except
  end;
end;

procedure TFrm_JON02.proc_SISOSearch;
var i : Integer;
begin
  try
    if 0 < Frm_Main.gst_SISOLog.Count then
    begin //2009-01-09  작성자 : 임창기 (if 1 < Frm_Main.gst_CidLog.Count then begin)
      cxSISOMemo.Clear;
      for i := Frm_Main.gst_SISOLog.Count - 1 downto 0 do
      begin
        cxSISOMemo.Lines.Add(Frm_Main.gst_SISOLog[i]);
      end;
    end;
  except
  end;
  PnlSiSo.Visible := True
end;

procedure TFrm_JON02.btnCallingListClick(Sender: TObject);
begin
  proc_Search;
end;

procedure TFrm_JON02.BtnCloseClick(Sender: TObject);
begin
  Hide;
end;

procedure TFrm_JON02.cxButton1Click(Sender: TObject);
begin
//-  Frm_Main.Proc_CidLog(10); //2009-01-09  작성자 : 임창기 (CID 내역 초기화)
  proc_Search;
end;

procedure TFrm_JON02.tvwCidLogCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  ls_CustTel, ls_KeyNum: string;
	ARow, iCustTel : Integer;
	ls_dnis: string;
begin
  ARow := tvwCidLog.DataController.FocusedRecordIndex;
  if 0 > ARow then Exit;
  ls_KeyNum := tvwCidLog.DataController.Values[Arow, 0];
	iCustTel := tvwCidLog.GetColumnByFieldName('RealCuTel').Index;
	ls_CustTel := tvwCidLog.DataController.Values[ARow, iCustTel];
  ls_CustTel := StringReplace(ls_CustTel, '-', '', [rfReplaceAll]);
  ls_KeyNum := StringReplace(ls_KeyNum, '-', '', [rfReplaceAll]);

  // 2011.04.08
  ls_dnis := string(tvwCidLog.DataController.Values[Arow, 4]);

  frm_Main.procJON03Open; // 접수현황 Open 여부 체크

  // 접수창을 생성한다.
  //  frm_JON03.CustTelNum_MainNum_Search(ls_CustTel, ls_KeyNum, ls_dnis);
  frm_Main.CustTelNum_MainNum_Search(ls_CustTel, ls_KeyNum);
end;

procedure TFrm_JON02.tvwCidLogTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
  AIsFooter: Boolean; var AText: string);
begin
  AText := Format('총건수 : %s건', [AText]);
end;

end.


unit xe_WOR12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, System.StrUtils,
  System.Math, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, MSXML2_TLB,
  cxControls, cxContainer, cxEdit, cxDataStorage, cxNavigator, cxLabel,
  Vcl.Grids, AdvObj, BaseGrid, AdvGrid, Vcl.StdCtrls, cxTextEdit, xe_GNL,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxClasses,
  cxGridCustomView, cxGridBandedTableView, cxGrid, cxMaskEdit, cxDropDownEdit,
  cxGroupBox, cxButtons, Vcl.ExtCtrls, AdvProgressBar, dxSkinsCore,
  dxSkinscxPCPainter, AdvUtil, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_WOR12 = class(TForm)
    cxLabel97: TcxLabel;
    btnRegist: TcxButton;
    btnExec: TcxButton;
    cxLabel126: TcxLabel;
    cxGridWkCash: TcxGrid;
    cxGridBandedTableView2: TcxGridBandedTableView;
    cxViewWkCash: TcxGridTableView;
    cxColSabun: TcxGridColumn;
    cxColName: TcxGridColumn;
    cxLevelWkCash: TcxGridLevel;
    cxColStatus: TcxGridColumn;
    cxColCurrCash: TcxGridColumn;
    cxColInOut: TcxGridColumn;
    cxColCash: TcxGridColumn;
    cxColDesc: TcxGridColumn;
    edtMemo: TcxTextEdit;
    btn1: TcxButton;
    cxColWkSabun: TcxGridColumn;
    cxColCode: TcxGridColumn;
    cxColMemo: TcxGridColumn;
    btnSelectedRowDelete: TcxButton;
    pmGrid: TPopupMenu;
    mniRegist: TMenuItem;
    mniDelete: TMenuItem;
    mniGridSep: TMenuItem;
    mniClear: TMenuItem;
    cbbMemoType: TcxComboBox;
    btnAddMemo: TcxButton;
    pnlDuplicate: TPanel;
    Label2: TLabel;
    grdDuplicate: TAdvStringGrid;
    cxColResult: TcxGridColumn;
    lblBranch: TcxLabel;
    Panel1: TPanel;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    pgbImport: TAdvProgressBar;
    cxLblActive: TLabel;
    cxColBrNo: TcxGridColumn;
    lb_HdSel: TcxLabel;
    Label3: TcxLabel;
    grp3: TcxGroupBox;
    lblResult: TLabel;
    Label1: TLabel;
    cxLabel1: TcxLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRegistClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnExecClick(Sender: TObject);
    procedure cxViewWkCashStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure btnSelectedRowDeleteClick(Sender: TObject);
    procedure btnAddMemoClick(Sender: TObject);
    procedure cxViewWkCashCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure grdDuplicateDblClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure pnlDuplicateMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn1Click(Sender: TObject);
    procedure mniRegistClick(Sender: TObject);
    procedure mniDeleteClick(Sender: TObject);
    procedure mniClearClick(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edtMemoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
		FHdNo, FBrNo, FBrName: string;
    FAddIndex: Integer;

    procedure BeginImport(Sender: TObject);
    procedure EndImport(Sender: TObject);
    procedure ImportResult(const AIndex: Integer; AData: array of string);
    procedure ImportFinish;

		function GetWkInfo(AHdNo, ABrNo, ASabun: string; var AWkSabun, AName, ACash, AStatus: string;
      out AErrCode: Integer; out AErrMsg: string): Boolean;
    function RunWkCash(const AHdNo, ABrNo, AWkSabun, AMemo: string; ACash: Integer; out AErrCode: Integer; AErrMsg: string): Boolean;
  public
    pWOR12Dock : TUNDOCKMNG;
		WorA1Tag : Integer;
		gWOR12Gubun : integer; // 본사전체선택 : 0, 지사단독선택 : 1;
		procedure SetBranch(AHdNo, ABrNo, ABrName: string);
    { Public declarations }
  end;

const
  WKCASH_CD_OK        = 0; //'정상';
  WKCASH_CD_FINISH    = 100; //'정상';
  WKCASH_CD_BADCASH   = -100; //'입금액오류';
  WKCASH_CD_NOTFOUND  = -404; //'기사없음';
  WKCASH_CD_DUPLICATE = -500; //'기사중복';
  WKCASH_CD_MINUS     = -600; //'캐쉬부족';
  WKCASH_CD_ERROR     = -999; //'기타오류발생';

var
  Frm_WOR12: TFrm_WOR12;

implementation


{$R *.dfm}

uses xe_WOR, xe_ImportFile, xe_Func, xe_gnl2, xe_gnl3, xe_packet,
  xe_Query, Main, xe_Msg, xe_xml, xe_system, xe_Dm;

procedure TFrm_WOR12.FormCreate(Sender: TObject);
var
  Save: Integer;
begin
  // 폼 타이틀 제거..
  if BorderStyle = bsNone then
    Exit;
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
	gWOR12Gubun := 0;
end;

procedure TFrm_WOR12.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_WOR12.FormShow(Sender: TObject);
begin
  fSetFont(Frm_WOR12, GS_FONTNAME);
end;

procedure TFrm_WOR12.btnCloseClick(Sender: TObject);
begin
  if not btnRegist.Enabled then
  begin
    Frm_Main.Frm_WORA1[WorA1Tag].btnSearchA1.Click;
  end;
  Self.Close;
end;

procedure TFrm_WOR12.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_WOR12.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frm_WOR12 := nil;
end;

procedure TFrm_WOR12.btnRegistClick(Sender: TObject);
var
  Msg: string;
  Ret: Boolean;
begin
  FAddIndex := cxViewWkCash.DataController.RecordCount;

  if FAddIndex > 0 then
  begin
    Msg := '기사를 추가등록 할까요?'#13#10'(추가하시려면 [예] 다시 등록하시려면 [아니오]를 선택하세요.)';
    if Application.MessageBox(PChar(Msg), '', MB_YESNO + MB_ICONQUESTION) = IDNO then
    begin
      cxViewWkCash.DataController.RecordCount := 0;
      FAddIndex := 0;
    end;
  end;

  if ( Not Assigned(Frm_ImportFile) ) Or ( Frm_ImportFile = NIl ) then Frm_ImportFile := TFrm_ImportFile.Create(Nil);
  try
    Frm_ImportFile.SetCaption('대상기사 등록');
		if gWOR12Gubun = 0 then //본사전체
			Frm_ImportFile.SetData(['자체사번', '입금액', '지사코드', '메모'], [True, True, True, False], 0)
		else //지사선택
			Frm_ImportFile.SetData(['자체사번', '입금액', '메모'], [True, True, False], 1);
		Frm_ImportFile.OnBeginImport   := BeginImport;
    Frm_ImportFile.OnEndImport     := EndImport;
    Frm_ImportFile.OnImportResult  := ImportResult;
    Frm_ImportFile.ShowModal;

    Ret := Frm_ImportFile.ModalResult = mrOK;
  finally
    Frm_ImportFile.Free;
  end;

  if Ret then ImportFinish;
end;

procedure TFrm_WOR12.BeginImport(Sender: TObject);
begin
  cxViewWkCash.DataController.BeginUpdate;
end;

procedure TFrm_WOR12.EndImport(Sender: TObject);
begin
  cxViewWkCash.DataController.EndUpdate;
end;

procedure TFrm_WOR12.ImportResult(const AIndex: Integer;
  AData: array of string);
var
	Idx, iCash: Integer;
	Sabun, Cash, Memo, sBrNo: string;
begin
	if (AData[0] = '') or (AData[1] = '') then Exit;
	if gWOR12Gubun = 0 then	
	begin
		if AData[2] = '' then 
		begin
{			GMessagebox(Format('[%s]기사 지사코드가 없습니다.'  + #13#10 
				+ '지사코드가 없는 기사는 리스트에서 자동으로 제외됩니다.'+ #13#10 + #13#10 
				+ '※본사전체 선택시 지사코드 필수입니다.', [AData[0]]), CDMSE); }
//			Exit;
		end;
		sBrNo := AData[2];
		Memo  := AData[3];
	end else
	if gWOR12Gubun = 1 then	
	begin
		sBrNo := FBrNo;
		Memo  := AData[2];
	end;

	Sabun := AData[0];
	Cash  := RemoveComma(AData[1]);

  Idx := cxViewWkCash.DataController.AppendRecord;
  cxViewWkCash.DataController.Values[Idx, cxColSabun.Index] := Sabun;
  cxViewWkCash.DataController.Values[Idx, cxColMemo.Index]  := Memo;
  if TryStrToInt(Cash, iCash) then
  begin
    cxViewWkCash.DataController.Values[Idx, cxColInOut.Index] := IfThen(Pos('-', Cash) > 0, '출금', '입금');
    cxViewWkCash.DataController.Values[Idx, cxColCash.Index]  := StrToMoney(Cash);
    cxViewWkCash.DataController.Values[Idx, cxColDesc.Index]  := '기사 조회 대기 중';
    cxViewWkCash.DataController.Values[Idx, cxColCode.Index]  := WKCASH_CD_OK;
  end
  else
  begin
    cxViewWkCash.DataController.Values[Idx, cxColInOut.Index] := '';
    cxViewWkCash.DataController.Values[Idx, cxColCash.Index]  := Cash;
    cxViewWkCash.DataController.Values[Idx, cxColDesc.Index]  := '입금액 오류';
    cxViewWkCash.DataController.Values[Idx, cxColCode.Index]  := WKCASH_CD_BADCASH;
  end;
	cxViewWkCash.DataController.Values[Idx, cxColBrNo.Index]  := sBrNo;
end;

procedure TFrm_WOR12.ImportFinish;
var
  I, Code, Cash, ErrCode: Integer;
	ErrMsg, Sabun, WkSabun, Name, Status, CurrCash, InOut, sBrNo: string;
begin
  cxViewWkCash.DataController.BeginUpdate;
  pgbImport.Max := cxViewWkCash.DataController.RecordCount;
  pgbImport.Visible := True;
  try
    for I := FAddIndex to cxViewWkCash.DataController.RecordCount - 1 do
    begin
			Sabun := cxViewWkCash.DataController.Values[I, cxColSabun.Index];
			Code  := cxViewWkCash.DataController.Values[I, cxColCode.Index];
			sBrNo := cxViewWkCash.DataController.Values[I, cxColBrNo.Index];
      if Code = WKCASH_CD_BADCASH then
        Continue;

			if not GetWkInfo(FHdNo, sBrNo, Sabun, WkSabun, Name, CurrCash, Status, ErrCode, ErrMsg) then    //<==선택된 지사코드로 기사정보조회
			begin
        cxViewWkCash.DataController.Values[I, cxColDesc.Index]  := Format('[%d] %s', [ErrCode, ErrMsg]);
        cxViewWkCash.DataController.Values[I, cxColCode.Index]  := IfThen(ErrCode < 0, ErrCode, WKCASH_CD_ERROR);
        Continue;
      end;
      if I mod 100 = 0 then
      begin
        pgbImport.Position := I;
//        pgbImport.Properties.Text := Format('기사정보 조회 중(%d%%)', [pgbImport.PercentDone]);
        Application.ProcessMessages;
      end;

      cxViewWkCash.DataController.Values[I, cxColName.Index]    := Name;
      cxViewWkCash.DataController.Values[I, cxColWkSabun.Index] := WkSabun;
      cxViewWkCash.DataController.Values[I, cxColStatus.Index]  := Status;
      cxViewWkCash.DataController.Values[I, cxColCurrCash.Index]:= StrToMoney(CurrCash);
      Cash  := StrToIntDef(RemoveComma(cxViewWkCash.DataController.Values[I, cxColCash.Index]), 0);
      InOut := cxViewWkCash.DataController.Values[I, cxColInOut.index];
      if (InOut = '출금') and (Cash + StrToIntDef(CurrCash, 0) < 0) then
      begin
        cxViewWkCash.DataController.Values[I, cxColDesc.Index]    := Format('처리가능(잔액부족:%d)', [StrToIntDef(CurrCash, 0) - Cash]);
        cxViewWkCash.DataController.Values[I, cxColCode.Index]    := WKCASH_CD_MINUS;
      end
      else
      begin
        cxViewWkCash.DataController.Values[I, cxColDesc.Index]    := '처리가능';
        cxViewWkCash.DataController.Values[I, cxColCode.Index]    := WKCASH_CD_OK;
      end;
    end;
  finally
    cxViewWkCash.DataController.EndUpdate;
    pgbImport.Visible := False;
  end;
//  ShowMessage('완료');
end;

procedure TFrm_WOR12.btnExecClick(Sender: TObject);
var
  I, Code, Cash, CurrCash, SuccCount, Total: Integer;
	WkSabun, Memo, InOut, sBrNo: string;
  ErrCode: Integer;
  ErrMsg: string;
begin
  if Not pWOR12Dock.bUnDock then pWOR12Dock.HDNO := GT_SEL_BRNO.HDNO;

  SuccCount := 0;
  for I := 0 to cxViewWkCash.DataController.RecordCount - 1 do
  begin
    Code := cxViewWkCash.DataController.Values[I, cxColCode.Index];

    if not ((Code =WKCASH_CD_OK) or (Code = WKCASH_CD_MINUS)) then
      Continue;

    WkSabun := cxViewWkCash.DataController.Values[I, cxColWkSabun.Index];
    Cash    := StrToIntDef(RemoveComma(cxViewWkCash.DataController.Values[I, cxColCash.Index]), 0);
    if cxViewWkCash.DataController.Values[I, cxColMemo.Index] <> null then
      Memo    := cxViewWkCash.DataController.Values[I, cxColMemo.Index];
		sBrNo   := cxViewWkCash.DataController.Values[I, cxColBrNo.Index];
		if RunWkCash(FHdNo, sBrNo, WkSabun, Memo, Cash, ErrCode, ErrMsg) then
    begin
      Inc(SuccCount);
      InOut := cxViewWkCash.DataController.Values[I, cxColInOut.Index];
      cxViewWkCash.DataController.Values[I, cxColDesc.Index]    := Format('[%s]처리완료', [InOut]);
      cxViewWkCash.DataController.Values[I, cxColCode.Index]    := WKCASH_CD_FINISH;
      CurrCash := StrToIntDef(RemoveComma(cxViewWkCash.DataController.Values[I, cxColCurrCash.Index]), 0);
      cxViewWkCash.DataController.Values[I, cxColResult.Index]  := StrToMoney(IntToStr(CurrCash + Cash));
    end
    else
    begin
      cxViewWkCash.DataController.Values[I, cxColDesc.Index] := Format('[%d]%s', [ErrCode, ErrMsg]);
      cxViewWkCash.DataController.Values[I, cxColCode.Index] := WKCASH_CD_ERROR;
    end;
  end;

  btnRegist.Enabled := False;
  btnExec.Enabled := False;

  Total := cxViewWkCash.DataController.RecordCount;
  lblResult.Caption := Format('전체 %d건 중 성공 %d건 실패 %d건 처리되었습니다.(실패 항목 비고참고)',
                                [Total, SuccCount, Total - SuccCount]);
  ShowMessage('처리 완료하였습니다.');
end;

function TFrm_WOR12.GetWkInfo(AHdNo, ABrNo, ASabun: string; var AWkSabun, AName,
  ACash, AStatus: string; out AErrCode: Integer; out AErrMsg: string): Boolean;
var
  XmlData, sQueryTemp: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
begin
	Result := False;
	fGet_BlowFish_Query(GSQ_WKINFO_BY_BRSABUN, sQueryTemp);
	if not RequestBase(GetSel01('GetWkInfo', Format(sQueryTemp, [ABrNo, ASabun, AHdNo])), XmlData, AErrCode, AErrMsg) then
	begin
		Exit;
  end;

  xdom := ComsDomDocument.Create;
  try
    xdom.loadXML(XmlData);

    lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

    if (lst_Result.length = 0) or (lst_Result.item[0].attributes.getNamedItem('Value').Text = '') then
		begin
			AErrCode  := WKCASH_CD_NOTFOUND;
			if gWOR12Gubun = 0 then
			begin
				if ABrNo = '' then AErrMsg   := '지사코드없음(조회불가)'
				else AErrMsg   := '자체사번의 기사없음';
			end else
			if gWOR12Gubun = 1 then
			begin
				AErrMsg   := '자체사번의 기사없음';
			end;
		end
    else if lst_Result.length > 1 then
    begin
      AErrCode  := WKCASH_CD_DUPLICATE;
      AErrMsg   := '자체사번 중복(더블클릭)';
    end
    else
    begin
      ls_Rcrd := TStringList.Create;
      try
        GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);

        AWkSabun  := ls_Rcrd[0];
        AName     := ls_Rcrd[1];
        ACash     := ls_Rcrd[2];
        AStatus   := ls_Rcrd[3];

        Result := True;
      finally
        ls_Rcrd.Free;
      end;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_WOR12.cxViewWkCashStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  Code: Integer;
begin
  if cxViewWkCash.DataController.Values[ARecord.Index, cxColCode.Index] = null then
    Exit;

  Code := cxViewWkCash.ViewData.Records[ARecord.Index].Values[cxColCode.Index];//cxViewWkCash.DataController.Values[ARecord.Index, cxColCode.Index];
  case Code of
  WKCASH_CD_NOTFOUND,
  WKCASH_CD_BADCASH:
    AStyle := frm_Main.cxStyleError;
  WKCASH_CD_DUPLICATE:
    AStyle := frm_Main.cxStyleNotice;
  WKCASH_CD_MINUS:
    AStyle := frm_Main.cxStyleWarning;
  end;
end;

procedure TFrm_WOR12.edtMemoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_WOR12.btnSelectedRowDeleteClick(Sender: TObject);
begin
  cxViewWkCash.DataController.DeleteSelection;
end;

procedure TFrm_WOR12.btnAddMemoClick(Sender: TObject);
var
  I: Integer;
  Memo: string;
begin
  if edtMemo.Text = '' then
  begin
    ShowMessage('메모를 입력하세요.');
    Exit;
	end;

 	if Not func_EucKr_Check(edtMemo, 0) then Exit;

  Memo := edtMemo.Text;

{
선택된행의 메모변경
전체메모에 메모등록
기존메모뒤에 메모추가
메모가 없는 항목에만 메모추가

}
  case cbbMemoType.ItemIndex of
  0:
    begin
      for I := 0 to cxViewWkCash.DataController.RecordCount - 1 do
      begin
        if cxViewWkCash.ViewData.Records[I].Selected then
          cxViewWkCash.ViewData.Records[I].Values[cxColMemo.Index] := Memo;
      end;
    end;
  1:
    begin
      for I := 0 to cxViewWkCash.DataController.RecordCount - 1 do
        cxViewWkCash.DataController.Values[I, cxColMemo.Index] := Memo;
    end;
  2:
    begin
      for I := 0 to cxViewWkCash.DataController.RecordCount - 1 do
      begin
        if (cxViewWkCash.DataController.Values[I, cxColMemo.Index] = null) or
            (cxViewWkCash.DataController.Values[I, cxColMemo.Index] = '') then
          cxViewWkCash.ViewData.Records[I].Values[cxColMemo.Index] := Memo
        else
          cxViewWkCash.ViewData.Records[I].Values[cxColMemo.Index] :=
              cxViewWkCash.ViewData.Records[I].Values[cxColMemo.Index] + '/' + Memo;
      end;
    end;
  3:
    begin
      for I := 0 to cxViewWkCash.DataController.RecordCount - 1 do
      begin
        if (cxViewWkCash.DataController.Values[I, cxColMemo.Index] = null) or
            (cxViewWkCash.DataController.Values[I, cxColMemo.Index] = '') then
          cxViewWkCash.ViewData.Records[I].Values[cxColMemo.Index] := Memo;
      end;
    end;
  end;
end;

procedure TFrm_WOR12.cxViewWkCashCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  I, Idx, Code: Integer;
  Sabun: string;
  XmlData, sQueryTemp : string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  ErrCode: Integer;
  ErrMsg: string;
begin
  Idx := ACellViewInfo.RecordViewInfo.Index;

  Code := cxViewWkCash.ViewData.Records[Idx].Values[cxColCode.Index];
  if Code = WKCASH_CD_DUPLICATE then
  begin
    Sabun := cxViewWkCash.ViewData.Records[Idx].Values[cxColSabun.Index];
    fGet_BlowFish_Query(GSQ_WKINFO_BY_BRSABUN, sQueryTemp);
    if not RequestBase(GetSel01('GetWkInfo', Format(sQueryTemp, [FBrNo, Sabun])), XmlData, ErrCode, ErrMsg) then
    begin
      Exit;
    end;

    xdom := ComsDomDocument.Create;
    try
      xdom.loadXML(XmlData);

      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

      if lst_Result.length > 1 then
      begin
        grdDuplicate.Tag := Idx;
        grdDuplicate.RowCount := lst_Result.length;
        ls_Rcrd := TStringList.Create;
        try
          for I := 0 to lst_Result.length - 1 do
          begin
            GetTextSeperationEx('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
            grdDuplicate.Rows[I] := ls_Rcrd;
          end;
        finally
          ls_Rcrd.Free;
        end;

        pnlDuplicate.Visible := True;
      end
      else
      begin
        pnlDuplicate.Visible := False;
      end;
    finally
      xdom := Nil;
    end;
  end;
end;

procedure TFrm_WOR12.grdDuplicateDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
var
  I, Cash: Integer;
  Name, WkSabun, Status, CurrCash, InOut: string;
begin
  I := grdDuplicate.Tag;

  Name    := grdDuplicate.Cells[1, ARow];
  WkSabun := grdDuplicate.Cells[0, ARow];
  Status  := grdDuplicate.Cells[3, ARow];
  CurrCash:= grdDuplicate.Cells[2, ARow];

  cxViewWkCash.ViewData.Records[I].Values[cxColName.Index]    := Name;
  cxViewWkCash.ViewData.Records[I].Values[cxColWkSabun.Index] := WkSabun;
  cxViewWkCash.ViewData.Records[I].Values[cxColStatus.Index]  := Status;
  cxViewWkCash.ViewData.Records[I].Values[cxColCurrCash.Index]:= StrToMoney(CurrCash);
  Cash  := StrToIntDef(RemoveComma(cxViewWkCash.ViewData.Records[I].Values[cxColCash.Index]), 0);
  InOut := cxViewWkCash.ViewData.Records[I].Values[cxColInOut.index];
  if (InOut = '출금') and (Cash > StrToIntDef(CurrCash, 0)) then
  begin
    cxViewWkCash.ViewData.Records[I].Values[cxColDesc.Index]    := Format('처리가능(잔액부족:%d)', [StrToIntDef(CurrCash, 0) - Cash]);
    cxViewWkCash.ViewData.Records[I].Values[cxColCode.Index]    := WKCASH_CD_MINUS;
  end
  else
  begin
    cxViewWkCash.ViewData.Records[I].Values[cxColDesc.Index]    := '처리가능';
    cxViewWkCash.ViewData.Records[I].Values[cxColCode.Index]    := WKCASH_CD_OK;
  end;

  pnlDuplicate.Hide;
end;

procedure TFrm_WOR12.pnlDuplicateMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(pnlDuplicate.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WOR12.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Handle, WM_SYSCOMMAND, $F012, 0);
end;

function TFrm_WOR12.RunWkCash(const AHdNo, ABrNo, AWkSabun, AMemo: string; ACash: Integer;
  out AErrCode: Integer; AErrMsg: string): Boolean;
begin
  Result := False;
  if RequestBase(GetC025WkCash('GetWkInfo', AHdNo, ABrNo, AWkSabun, AMemo, ACash), AErrCode, AErrMsg) then
  begin
    Result := True;
  end;
end;

procedure TFrm_WOR12.btn1Click(Sender: TObject);
begin
  if cxViewWkCash.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := Format('기사캐쉬일괄처리_%s.xls', [FormatDateTime('YYYYMMDD', Now)]);
	Frm_Main.sgRpExcel := Format('기사캐쉬>기사캐쉬일괄처리_%s]%s건', [FormatDateTime('YYYYMMDD', Now), GetMoneyStr(cxViewWkCash.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridWkCash;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_WOR12.mniRegistClick(Sender: TObject);
begin
  btnRegist.Click;
end;

procedure TFrm_WOR12.mniDeleteClick(Sender: TObject);
begin
  btnSelectedRowDelete.Click;
end;

procedure TFrm_WOR12.mniClearClick(Sender: TObject);
begin
  cxViewWkCash.DataController.RecordCount := 0;
end;

procedure TFrm_WOR12.SetBranch(AHdNo, ABrNo, ABrName: string);
var sTmp : string;
begin
	FHdNo := AHdNo;
	FBrNo := ABrNo;
	FBrName := ABrName;
	if gWOR12Gubun = 0 then
	begin
{		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then
		begin
			sTmp := scb_HdNm[scb_HdNo.IndexOf(FHdNo)];
		end
		else
		begin
			Br_Name := scb_BranchName[scb_BranchCode.IndexOf(pWOR01Dock.BrNo)];
			lbl10.Caption := '[' + Br_Name + ']' + ' 에서';
		end; }
		lblBranch.Caption := Format('본사 소속기사만 검색됩니다.', [sTmp, FHdNo]);
		lb_HdSel.Visible := True;
		Label3.Visible := True;
	end
	else
	begin
		lblBranch.Caption := Format('[%s(%s)]에 포함된 기사만 검색됩니다.', [ABrName, ABrNo]);
		lb_HdSel.Visible := False;
		Label3.Visible := False;
	end;
end;

end.

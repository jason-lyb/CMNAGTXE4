unit xe_JON23;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, dxCore,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, cxControls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxLabel, Vcl.ExtCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
	cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, dxSkinsCore, System.JSON,
  dxSkinscxPCPainter, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  TFrm_JON23 = class(TForm)
    cxButton20: TcxButton;
    Grid1: TcxGrid;
		cxgGrid1: TcxGridDBTableView;
    cxgGrid1Column1: TcxGridDBColumn;
    cxgGrid1Column2: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxButton1: TcxButton;
    cxgGrid1Column3: TcxGridDBColumn;
    cxgGrid1Column5: TcxGridDBColumn;
    cxgGrid1Column6: TcxGridDBColumn;
    cxButton2: TcxButton;
    pnlTitle: TPanel;
    cxButton3: TcxButton;
    btnClose: TcxButton;
    PnlMain: TPanel;
    cxgGrid1Column4: TcxGridDBColumn;
    cxLblActive: TLabel;
    cxgGrid1Column7: TcxGridDBColumn;
    pm_Pop: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    cxgGrid1Column8: TcxGridDBColumn;
    procedure cxgGrid1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxButton20Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxgGrid1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton2Click(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure pnlTitleMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure pm_PopPopup(Sender: TObject);
  private
    { Private declarations }
		procedure proc_SendMsg(iType: Integer; sId, skey, swtm, sTitle, sMsg, sResv: string);
	public
		{ Public declarations }
		procedure proc_init;
		procedure proc_Search;
		// 전문 응답 처리
		procedure proc_AddList(slList: TStringList);
	end;

var
  Frm_JON23: TFrm_JON23;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Msg, xe_Lib, xe_JON24;

procedure TFrm_JON23.cxgGrid1ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgGrid1.ColumnCount - 1 do
    begin
      if i <> AColumn.Index then
      begin
        cxgGrid1.Columns[i].SortIndex := -1;
        cxgGrid1.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgGrid1.Columns[AColumn.Index].SortOrder = soNone) or
      (cxgGrid1.Columns[AColumn.Index].SortOrder = soDescending) then
      cxgGrid1.Columns[AColumn.Index].SortOrder := soAscending
    else
      if cxgGrid1.Columns[AColumn.Index].SortOrder = soAscending then
      cxgGrid1.Columns[AColumn.Index].SortOrder := soDescending;
    cxgGrid1.Columns[AColumn.Index].SortIndex := 0;
    cxgGrid1.DataController.FocusedRowIndex := 0;
  except
    on e: Exception do
    begin
      sTemp := 'frm00002[cxgGrid1ColumnHeaderClick]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_JON23.proc_init;
var
  i: Integer;
begin
  try
    // 그리드 초기화
    cxgGrid1.Columns[0].DataBinding.ValueType := 'Integer';
    for i := 1 to cxgGrid1.ColumnCount - 1 do
    begin
      cxgGrid1.Columns[i].DataBinding.ValueType := 'String';
    end;
    cxgGrid1.DataController.SetRecordCount(0);
  except
  end;
end;

procedure TFrm_JON23.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON23.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_JON23.FormCreate(Sender: TObject);
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

  proc_init;
end;

procedure TFrm_JON23.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON23.FormDestroy(Sender: TObject);
begin
  Frm_JON23 := Nil;
end;

procedure TFrm_JON23.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON23, GS_FONTNAME);
  fSetSkin(Frm_JON23);
end;

procedure TFrm_JON23.N2Click(Sender: TObject);
var iCol, iRow, iTag : integer;
	sTmp, sUser, sTit, sCon, sKey, sWtm, sResv, sMsg, sNTime : string;
begin
	Try
		iRow := cxgGrid1.DataController.FocusedRecordIndex;
		if iRow < 0 then Exit;

		iTag := TMenuItem(Sender).Tag;
		iCol := cxgGrid1.GetColumnByFieldName('등록자ID').Index;
		sUser := cxgGrid1.DataController.Values[iRow, iCol];
		if (sUser = GT_USERIF.ID) then
		begin

			iCol := cxgGrid1.GetColumnByFieldName('키값').Index;
			sKey := cxgGrid1.DataController.Values[iRow, iCol];
			iCol := cxgGrid1.GetColumnByFieldName('등록일시').Index;
			sWtm := cxgGrid1.DataController.Values[iRow, iCol];
			iCol := cxgGrid1.GetColumnByFieldName('키값').Index;
			sKey := cxgGrid1.DataController.Values[iRow, iCol];
			iCol := cxgGrid1.GetColumnByFieldName('제목').Index;
			sTit := cxgGrid1.DataController.Values[iRow, iCol];
			iCol := cxgGrid1.GetColumnByFieldName('내용').Index;
			sCon := cxgGrid1.DataController.Values[iRow, iCol];
			sCon := StringReplace(sCon, #13#10, '|', [rfReplaceAll]);
			sCon := StringReplace(sCon, '"', '¶', [rfReplaceAll]);
			iCol := cxgGrid1.GetColumnByFieldName('예약일시').Index;
			sResv := cxgGrid1.DataController.Values[iRow, iCol];
			if iTag = 1 then //예약해제
			begin
				sNTime := FormatDateTime('yyyy-mm-dd hh:mm:dd', now);
				if sResv <= sNTime then
				begin
					sMsg := '예약시간이 경과되어 해제가 불가능 합니다.';
					GMessagebox(sMsg, CDMSI);
					exit;
				end;

				sMsg := '예약해제를 하시겠습니까?' +#13#10+#13#10
							+ '예약해제된 공지는 즉시 게시됩니다';
				if GMessagebox(sMsg, CDMSQ) = idOk then
				begin
					gBtnTag := 3;
					proc_SendMsg(1, GT_USERIF.ID, sKey, sWtm, sTit, sCon, '');
				end;
			end else
			if iTag = 2 then //공지삭제
			begin
				if GMessagebox('삭제하시겠습니까?', CDMSQ) = idOk then
				begin
					Frm_Main.pGongjiStart;

					gBtnTag := 2;
					proc_SendMsg(2, GT_USERIF.ID, sKey, sWtm, sTit, sCon, sResv);
				end;
			end;
		end else
		begin
			GMessagebox('등록한 사람만 삭제할 수 있습니다.', CDMSE);
		end;
	Except

  End;
end;

procedure TFrm_JON23.cxButton20Click(Sender: TObject);
begin
  if cxgGrid1.DataController.RecordCount > 0 then
  begin
    frm_Main.SaveDialog1.FileName := '공지현황.xls';
    if frm_Main.SaveDialog1.Execute then
    begin
      CustomExportGridToHTML(frm_Main.SaveDialog1.FileName, Grid1, False, True, 'XLS');
    end;
  end else
	begin
    GMessagebox('자료가 없습니다.', CDMSE);
	end;
end;

procedure TFrm_JON23.pm_PopPopup(Sender: TObject);
var iCol, iRow : integer;
	sTmp, sUser, sTit, sCon, sKey, sWtm, sResv : string;
begin
	Try
		N1.Enabled := False;
		N2.Enabled := False;

		iRow := cxgGrid1.DataController.FocusedRecordIndex;
		if iRow < 0 then Exit;

		iCol := cxgGrid1.GetColumnByFieldName('등록자ID').Index;
		sUser := cxgGrid1.DataController.Values[iRow, iCol];
		iCol := cxgGrid1.GetColumnByFieldName('예약일시').Index;
		sResv := cxgGrid1.DataController.Values[iRow, iCol];
		if (sResv <> '') then
		begin
			N1.Enabled := True;
		end;
		if (sUser = GT_USERIF.ID) then
		begin
			N2.Enabled := True;
		end;
	except
	
  End;
end;

procedure TFrm_JON23.pnlTitleMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON23.proc_AddList(slList: TStringList);
var
	iRow, i, iCnt: Integer;
	slSubList: TStringList;
	sTmp, sTmpTime1 : string;
	sRTime, sNTime: string;
begin
	Try
		sTmpTime1 := '';
		iCnt := 0;
	
		slSubList := TStringList.Create;
		try
			cxgGrid1.DataController.SetRecordCount(0);
			cxgGrid1.BeginUpdate;
			for i := 0 to slList.Count - 1 do
			begin
				if slList[i] <> '' then
				begin
					slSubList.Clear;
					GetTextSeperation_Add(Char(1), slList[iCnt], slSubList);
					if slSubList.Count <> 8 then
						Continue;

					iRow := cxgGrid1.DataController.AppendRecord;
					cxgGrid1.DataController.Values[iRow, 1] := slSubList[0];      // 0.등록일시
					cxgGrid1.DataController.Values[iRow, 2] := slSubList[3];      // 3.등록자명
					cxgGrid1.DataController.Values[iRow, 3] := slSubList[1];      // 1.공지제목	

					sTmp := StringReplace(slSubList[2], '|', #13#10, [rfReplaceAll]);
					sTmp := StringReplace(sTmp, '"', '¶', [rfReplaceAll]);
					cxgGrid1.DataController.Values[iRow, 4] := sTmp;  // 2.공지내용

					cxgGrid1.DataController.Values[iRow, 5] := slSubList[4];      // 4.등록자ID
					cxgGrid1.DataController.Values[iRow, 6] := slSubList[6];      // 6.키값	
//					cxgGrid1.DataController.Values[iRow, 7] := slSubList[7];      // 7.예약일시	
					sTmp := StringReplace(slSubList[7], #2  , '', [rfReplaceAll]);
					cxgGrid1.DataController.Values[iRow, 7] := sTmp;      // 7.예약일시	
				end else
					Continue;
				inc(iCnt);
			end;
			cxgGrid1.Columns[1].SortIndex := 0;
			cxgGrid1.Columns[1].SortOrder := soDescending;
			cxgGrid1.EndUpdate;

			cxgGrid1.BeginUpdate;
			for i := 0 to cxgGrid1.DataController.RecordCount - 1 do
				cxgGrid1.DataController.Values[i,0] := i+1;//IntToStr(i+1);
			cxgGrid1.EndUpdate;

			GS_GongJi := '';
			Frm_Main.cxGridGongJi.DataController.SetRecordCount(0);

			Frm_Main.cxGridGongJi.BeginUpdate;
			try
				for i := 0 to cxgGrid1.DataController.RecordCount - 1 do
				begin
					sTmp := cxgGrid1.ViewData.Records[i].Values[1] + ' (' +
									cxgGrid1.ViewData.Records[i].Values[2] + ') - ' +
									cxgGrid1.ViewData.Records[i].Values[3] + ' ' +
									cxgGrid1.ViewData.Records[i].Values[4];

					iRow := Frm_Main.cxGridGongJi.DataController.AppendRecord;
					Frm_Main.cxGridGongJi.DataController.Values[iRow, 0] := sTmp;
					Frm_Main.cxGridGongJi.DataController.Values[iRow, 1] := cxgGrid1.ViewData.Records[i].Values[1];
					Frm_Main.cxGridGongJi.DataController.Values[iRow, 2] := cxgGrid1.ViewData.Records[i].Values[3];
				end;
			finally
				Frm_Main.cxGridGongJi.EndUpdate;
				if Frm_Main.cxGridGongJi.DataController.RecordCount > 0 then
					Frm_Main.tsBtmMenu7.Caption := Format('직원공지(%s)',[FormatFloat('#,##0', Frm_Main.cxGridGongJi.DataController.RecordCount)])
				else
					Frm_Main.tsBtmMenu7.Caption := '직원공지';
			end;

			if cxgGrid1.DataController.RecordCount >= 1 then
			begin
			
				sNTime := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now);
				for i := 0 to cxgGrid1.DataController.RecordCount - 1 do
				begin
					sRTime := cxgGrid1.ViewData.Records[i].Values[7];
					if sRTime <> '' then
					begin
						if (sRTime < sNTime) then
						begin
							GS_GongJi := cxgGrid1.ViewData.Records[i].Values[4] + '    ';
							Break;
						end;
					end else
					begin
						GS_GongJi := cxgGrid1.ViewData.Records[i].Values[4] + '    ';
						Break;
					end;
				end;
			end;

{			if cxgGrid1.DataController.RecordCount >= 1 then
			begin
				if cxgGrid1.ViewData.Records[0].Values[7] = '' then
					GS_GongJi := Frm_Main.cxGridGongJi.ViewData.Records[0].Values[2] + '    ';
			end;    }

			Frm_Main.pGongjiStart;
		finally
			FreeAndNil(slSubList);
		end;
	except

  End;
end;

procedure TFrm_JON23.btnCloseClick(Sender: TObject);
begin
  Hide;
end;

procedure TFrm_JON23.cxButton1Click(Sender: TObject);
begin
	proc_Search;
end;

procedure TFrm_JON23.cxgGrid1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iRow: Integer;
begin
	iRow := cxgGrid1.DataController.FocusedRecordIndex;
  if iRow > -1 then
  begin
    if ( Not Assigned(Frm_JON24) ) Or ( Frm_JON24 = Nil ) then Frm_JON24 := TFrm_JON24.Create(Nil);
		gBtnTag := 1;
		Frm_JON24.lblwtm.Caption := cxgGrid1.DataController.Values[iRow, 1];
		Frm_JON24.lblnKey.Caption := cxgGrid1.DataController.Values[iRow, 6];
		Frm_JON24.lblUserId.Caption := cxgGrid1.DataController.Values[iRow, 5];
		Frm_JON24.edt_Title.Text := cxgGrid1.DataController.Values[iRow, 3];
		Frm_JON24.cxmmMemo.Text := cxgGrid1.DataController.Values[iRow, 4];
		if cxgGrid1.DataController.Values[iRow, 7] <> '' then
		begin
			Frm_JON24.chk_Resv.Checked := True;
			Frm_JON24.chk_Resv.Hint    := cxgGrid1.DataController.Values[iRow, 7];
			Frm_JON24.dtpResvDate.Text := Copy(cxgGrid1.DataController.Values[iRow, 7], 1,10);
			Frm_JON24.dtpResvTime.Text := Copy(cxgGrid1.DataController.Values[iRow, 7], 12,8);
		end;
		Frm_JON24.cxbModify.Caption := '수정';
    Frm_JON24.ShowModal;
  end;
end;

procedure TFrm_JON23.cxButton2Click(Sender: TObject);
begin
	if ( Not Assigned(Frm_JON24) ) Or ( Frm_JON24 = Nil ) then Frm_JON24 := TFrm_JON24.Create(Nil);
	gBtnTag := 0;
	Frm_JON24.lblnKey.Caption := '';
	Frm_JON24.lblUserId.Caption := GT_USERIF.ID;
	Frm_JON24.edt_Title.Text := '';
	Frm_JON24.cxmmMemo.Text := '';
	Frm_JON24.cxbModify.Caption := '저장';
	
	Frm_JON24.ShowModal;
end;

procedure TFrm_JON23.proc_Search;
var
	iRow, i : Integer;
  slSubList: TStringList;
	sTmp, sRTime, sNTime: string;
begin
	Try
		slGongjiList.SaveToFile('c:\aa.txt');
	except

  End;
  slSubList := TStringList.Create;
  try
		cxgGrid1.DataController.SetRecordCount(0);
		cxgGrid1.BeginUpdate;
	  for i := 0 to slGongjiList.Count - 1 do
	  begin
			iRow := -1;
			if slGongjiList[i] = '' then Continue;

      slSubList.Clear;
	  	GetTextSeperation_Add(Char(1), slGongjiList[i], slSubList);

			if slSubList.Count <> 8 then
//			if slSubList.Count <= 3 then
			begin
//    		cxgGrid1.EndUpdate;
        Continue;
      end;

			iRow := cxgGrid1.DataController.FindRecordIndexByText(0, 6, slSubList[6], True, True, True);
			if (iRow = -1) then   
	  		iRow := cxgGrid1.DataController.AppendRecord;
			cxgGrid1.DataController.Values[iRow, 1] := slSubList[0];      // 0.등록일시
			cxgGrid1.DataController.Values[iRow, 2] := slSubList[3];      // 3.등록자명
			cxgGrid1.DataController.Values[iRow, 3] := slSubList[1];      // 1.공지제목	

			sTmp := StringReplace(slSubList[2], '|', #13#10, [rfReplaceAll]);
			sTmp := StringReplace(sTmp, '¶', '"', [rfReplaceAll]);
			cxgGrid1.DataController.Values[iRow, 4] := sTmp;  // 2.공지내용
			cxgGrid1.DataController.Values[iRow, 5] := slSubList[4];      // 4.등록자ID
			cxgGrid1.DataController.Values[iRow, 6] := slSubList[6];      // 6.키값	
			sTmp := StringReplace(slSubList[7], #2  , '', [rfReplaceAll]);
			cxgGrid1.DataController.Values[iRow, 7] := sTmp;      // 7.예약일시	
		end;
		cxgGrid1.Columns[1].SortIndex := 0;
		cxgGrid1.Columns[1].SortOrder := soDescending;
		cxgGrid1.EndUpdate;

		cxgGrid1.BeginUpdate;
		for i := 0 to cxgGrid1.DataController.RecordCount - 1 do
			cxgGrid1.ViewData.Records[i].Values[0] := i + 1;//IntToStr(i + 1);
	  cxgGrid1.EndUpdate;

    GS_GongJi := '';
    Frm_Main.cxGridGongJi.DataController.SetRecordCount(0);
    Frm_Main.cxGridGongJi.BeginUpdate;
		for i := 0 to cxgGrid1.DataController.RecordCount - 1 do
    begin
			sTmp := cxgGrid1.ViewData.Records[i].Values[1] + ' (' +
							cxgGrid1.ViewData.Records[i].Values[2] + ') - ' +
							cxgGrid1.ViewData.Records[i].Values[3] + ' ' +
							cxgGrid1.ViewData.Records[i].Values[4];

    	iRow := Frm_Main.cxGridGongJi.DataController.AppendRecord;
			Frm_Main.cxGridGongJi.DataController.Values[iRow, 0] := sTmp;
			Frm_Main.cxGridGongJi.DataController.Values[iRow, 1] := cxgGrid1.ViewData.Records[i].Values[1];
			Frm_Main.cxGridGongJi.DataController.Values[iRow, 2] := cxgGrid1.ViewData.Records[i].Values[3];
		end;
    Frm_Main.cxGridGongJi.EndUpdate;
		if cxgGrid1.DataController.RecordCount >= 1 then
		begin
			
			sNTime := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now);
			for i := 0 to cxgGrid1.DataController.RecordCount - 1 do
			begin
				sRTime := cxgGrid1.ViewData.Records[i].Values[7];
				if sRTime <> '' then
				begin
					if (sRTime < sNTime) then
					begin
						GS_GongJi := cxgGrid1.ViewData.Records[i].Values[4] + '    ';
						Break;
					end;
				end else
				begin
					GS_GongJi := cxgGrid1.ViewData.Records[i].Values[4] + '    ';
					Break;
				end;
			end;
		end;

    Frm_Main.pGongjiStart;
	finally
    FreeAndNil(slSubList);
  end;
end;

procedure TFrm_JON23.proc_SendMsg(iType: Integer; sId, skey, swtm, sTitle,
  sMsg, sResv: string);
Var jsoRlt, headObj, subObj : TJSONObject;
    jso : TJSONObject;
		jsoAry : TJSONArray;
		Str, sSendId : String;
    slId : TStringList;
		i : Integer;
begin
	SetDebugeWrite('Frm_JON24.proc_SendMsg');
	// Make Json -----------------------------------------------------------------
	try
    jsoRlt := TJSONObject.Create;
    headObj := TJSONObject.Create;
    headObj.AddPair( TJSONPair.Create('seq', '%s'));
    headObj.AddPair( TJSONPair.Create('cmd', '501'));
    jsoRlt.AddPair( TJSONPair.Create('hdr', headObj));

    subObj := TJSONObject.Create;
    subObj.AddPair( TJSONPair.Create('type', 'c'));

    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sSendId := GT_SEL_BRNO.HDNO
    else
      sSendId := GT_USERIF.HD;

    slId := TStringList.Create;
    GetTextSeperationEx2(AnsiChar(1), sSendId, slId);

    jsoAry := TJSONArray.Create;
    for i := 0 to slId.Count - 1 do
    begin
      if Trim(slId.Strings[i]) <> '' then
      begin
        jso := TJSONObject.Create;
        jso.AddPair(TJsonPair.Create('rcd', slId.Strings[i]));
        jsoAry.AddElement(jso);
      end;
    end;
    subObj.AddPair( TJSONPair.Create('ls', jsoAry));

    subObj.AddPair( TJSONPair.Create('wid', GT_USERIF.ID));
    subObj.AddPair( TJSONPair.Create('wnm', GT_USERIF.NM));
    case iType of
      0 : begin
            subObj.AddPair( TJSONPair.Create('nkey', GT_USERIF.ID+FormatDateTime('yyyymmddhhmmss', now)));
            subObj.AddPair( TJSONPair.Create('wtp', 'c'));
          end;
      1 : begin
            subObj.AddPair( TJSONPair.Create('nkey', skey));
            subObj.AddPair( TJSONPair.Create('wtp', 'u'));
          end;
      2 : begin
            subObj.AddPair( TJSONPair.Create('nkey', skey));
            subObj.AddPair( TJSONPair.Create('wtp', 'd'));
          end;
    end;
		subObj.AddPair( TJSONPair.Create('wtm' , swtm));
		subObj.AddPair( TJSONPair.Create('tit', sTitle));
		subObj.AddPair( TJSONPair.Create('cont', sMsg));
		subObj.AddPair( TJSONPair.Create('resv', sResv));
		jsoRlt.AddPair( TJSONPair.Create('bdy' , subObj));

    Str := jsoRlt.ToString;
		SetDebugeWrite('Frm_JON24.proc_SendMsg : ' + Str );
  finally
    FreeAndNil(jsoRlt);
    FreeAndNil(slId);
  end;

	Dm.pSendCMessenger(True, Str);
end;

end.


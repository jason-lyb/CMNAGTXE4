unit xe_ShuttleMap;

interface

uses
	Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, ComObj,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
	cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  Vcl.Menus, Vcl.ExtCtrls, cxLabel, dxGDIPlusClasses,
	cxCurrencyEdit, Vcl.StdCtrls, cxButtons, cxRadioGroup, cxTextEdit, cxMaskEdit, System.Math,
  cxDropDownEdit, cxGroupBox, Vcl.OleCtrls, SHDocVw, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxImageComboBox, cxGridLevel,
	cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, MSXML2_TLB,
  cxGridCustomView, cxGrid, System.ImageList, Vcl.ImgList, cxImageList,
  cxDBLookupComboBox, cxGridBandedTableView, AdvProgressBar, AdvUtil, Vcl.Grids,
  AdvObj, BaseGrid, AdvGrid, AdvCGrid, cxCheckBox, cxSplitter, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark,
  dxSkinOffice2007Silver;

type
	TTmappos = record
		lon: LONG;
		lat: LONG;
	end;	

type
  Tfrm_ShuttleMap = class(TForm)
    pnl_NaverMap: TPanel;
    pnlLargeMenu: TPanel;
		cxGroupBox1: TcxGroupBox;
    tmr_Sdis: TTimer;
    pnl_Search: TPanel;
    Shape2: TShape;
    cbLine: TcxComboBox;
    cxlbl1: TcxLabel;
    Panel2: TPanel;
    cxGridDepot: TcxGrid;
    cxgDepotList1: TcxGridDBTableView;
		cxgDepotList1Column1: TcxGridDBColumn;
    cxgDepotList1Column2: TcxGridDBColumn;
    cximgDepot: TcxImageList;
    pnlTitle: TPanel;
    BtnClose: TcxButton;
    cxLblActive: TLabel;
    btn_LineSearch: TcxButton;
    Shape1: TShape;
    Label1: TLabel;
    cb_SUpDate: TcxComboBox;
    cxCESdt: TcxCurrencyEdit;
    btn_AddLine: TcxButton;
    pnl_AddLine: TcxGroupBox;
    Shape27: TShape;
    btn_AddLineSave: TcxButton;
    btn_AddLineClose: TcxButton;
    cxLabel21: TcxLabel;
		edt_AddLine: TcxTextEdit;
    pmEdit: TPopupMenu;
    mn_Update: TMenuItem;
    mn_Delete: TMenuItem;
		mn_Add: TMenuItem;
		cxgDepotList1Column3: TcxGridDBColumn;
    cxgDepotList1Column4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxgDepotList: TcxGridBandedTableView;
    cxgDepotListColumn1: TcxGridBandedColumn;
		cxgDepotListColumn2: TcxGridBandedColumn;
    cxgDepotListColumn3: TcxGridBandedColumn;
    cxgDepotListColumn4: TcxGridBandedColumn;
    cxgDepotListColumn5: TcxGridBandedColumn;
    dlgOpen: TOpenDialog;
    btn_DelLine: TcxButton;
    pnl_AddDepot: TPanel;
    cxGroupBox2: TcxGroupBox;
    lbl1: TLabel;
    lbComment: TLabel;
    btnLoadFromFile: TcxButton;
    btn_ExcelDepotSave: TcxButton;
    chkFirstRowHeader: TcxCheckBox;
    edtCount: TEdit;
    edtFilePath: TcxTextEdit;
    Panel1: TPanel;
    btn_ExcelClose: TcxButton;
    cxGridFileExcelList: TcxGrid;
    cxViewFileExcelList: TcxGridDBTableView;
    cxColXls1: TcxGridDBColumn;
    cxColXls2: TcxGridDBColumn;
    cxColXls3: TcxGridDBColumn;
    cxColXls4: TcxGridDBColumn;
    cxColXls5: TcxGridDBColumn;
    cxColXls6: TcxGridDBColumn;
    cxColXls7: TcxGridDBColumn;
    cxColXls8: TcxGridDBColumn;
    cxColXls9: TcxGridDBColumn;
    cxColXls10: TcxGridDBColumn;
    cxColXls11: TcxGridDBColumn;
    cxColXls12: TcxGridDBColumn;
    cxColXls13: TcxGridDBColumn;
    cxColXls14: TcxGridDBColumn;
    cxColXls15: TcxGridDBColumn;
    cxColXls16: TcxGridDBColumn;
    cxColViewFileExcelListColumn4: TcxGridDBColumn;
    cxColViewFileExcelListColumn5: TcxGridDBColumn;
    cxLevelLeveFilelExcelList: TcxGridLevel;
    Gauge1: TAdvProgressBar;
    lb_LineNotice: TcxLabel;
    btnShSch: TcxButton;
    Shape3: TShape;
    cxLabel2: TcxLabel;
    pnl_Button: TPanel;
    btn_DepotUpLoad: TcxButton;
    btn_Up: TcxButton;
    btn_Down: TcxButton;
    btn_Save: TcxButton;
    btn_Add: TcxButton;
    btn_Update: TcxButton;
    btn_Delete: TcxButton;
    btn_Shuttle: TcxButton;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    cxSplitter1: TcxSplitter;
    trm_ESC: TTimer;
    webNaverMap: TWebBrowser;
		procedure webNaverMapDocumentComplete(ASender: TObject;
			const pDisp: IDispatch; const URL: OleVariant);
		procedure webNaverMapNavigateComplete2(ASender: TObject;
			const pDisp: IDispatch; const URL: OleVariant);
		procedure FormCreate(Sender: TObject);
		procedure btnShSchClick(Sender: TObject);
		procedure FormDestroy(Sender: TObject);
		procedure btn_ShuttleClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BtnCloseClick(Sender: TObject);
		procedure btn_LineSearchClick(Sender: TObject);
		procedure FormShow(Sender: TObject);
    procedure tmr_SdisTimer(Sender: TObject);
		procedure cb_SUpDateClick(Sender: TObject);
    procedure btn_AddLineClick(Sender: TObject);
    procedure pnl_AddLineMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_AddLineCloseClick(Sender: TObject);
    procedure btn_AddLineSaveClick(Sender: TObject);
    procedure cbLinePropertiesChange(Sender: TObject);
		procedure edt_AddLineKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
		procedure mn_UpdateClick(Sender: TObject);
    procedure cxgDepotListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxgDepotListFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure mn_DeleteClick(Sender: TObject);
    procedure pmEditPopup(Sender: TObject);
		procedure mn_AddClick(Sender: TObject);
		procedure cxgDepotListEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
		procedure btn_SaveClick(Sender: TObject);
		procedure btn_UpClick(Sender: TObject);
    procedure cxgDepotListCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
		procedure btn_DelLineClick(Sender: TObject);
		procedure btnLoadFromFileClick(Sender: TObject);
    procedure btn_DepotUpLoadClick(Sender: TObject);
    procedure btn_ExcelDepotSaveClick(Sender: TObject);
    procedure btn_ExcelCloseClick(Sender: TObject);
    procedure cxgDepotListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
		procedure btn_AddClick(Sender: TObject);
    procedure btn_UpdateClick(Sender: TObject);
    procedure btn_DeleteClick(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure trm_ESCTimer(Sender: TObject);
	private
		{ Private declarations }
		Naver_URL : string;

		gLineCode, gLineName : TStringList;
		slLon, slLat, slDepot, slDeCode : TStringList;
		AutoFlag  : Boolean; //자동검색 시 검색 버튼 안눌임 
		FResize : Boolean;

		bEditing : Boolean; //셀 수정상태
		gPopIdx : integer; //팝업메뉴 구분값
		gPopRow : Integer; //팝업선택 Row값
		gClickRow : Integer; //선택 Row값
		gDepot : string; //수정 정류장명
		gHandled : Boolean; // 클릭이벤트 out파라메타
		gShuttleBrNo : String;
		
		procedure pLoadNaverMap;
		procedure proc_LineSearch(ASraechType : string);
		procedure setDepotPoiMark(aLatList, aLonList, aDepotList, aDepotCodeList : TStringList);
		procedure proc_MoveCenter(ALat, ALon, ALeavel : string);
		procedure proc_setFitBounds(aLatList, aLonList : TStringList);
		procedure CreateObj;
		procedure proc_LineSave;
		procedure proc_LineDelete;
		procedure proc_BusSearch;
		procedure proc_DepotSave(AGubun : string); //Grid, Excel
		procedure proc_AutoSearchStop;
		function Angle(Pt1, Pt2: TTmappos) : Double;
		function SK_GetAngleFromLine(pt1, pt2: TPoint): Double;
    function ExcelToGridEx(AFilename: string; AView: TcxGridDBTableView;
			AGauge: TAdvProgressBar): Boolean;

		procedure proc_Init(AType : Integer=0);	

		//celar 전체초기화, depot : 노선수정, updown : 순서변경
		procedure proc_BtnEnabled(AEnable : Boolean; AType : string);
	public
		{ Public declarations }
		CurDispatch: IDispatch; {save the interface globally }
		bWebLoading : Boolean;
	end;

var
  frm_ShuttleMap: Tfrm_ShuttleMap;

implementation

uses
	xe_gnl, xe_func, xe_msg, xe_WOR20, xe_Flash, xe_packet, xe_xml;

{$R *.dfm}

function Tfrm_ShuttleMap.Angle(Pt1, Pt2: TTmappos): Double;
var ang : Double;
 p1a, p2a : TPoint;
begin
	p1a.x := pt1.lon;		p1a.y := pt1.lat;
	p2a.x := pt2.lon;		p2a.y := pt2.lat;
	ang := SK_GetAngleFromLine(p1a, p2a);

	if (ang < 0) then
	begin
		ang := ang + 360.;
	end;
	ang := 360. - ang;
	Result := ang;
end;

function Tfrm_ShuttleMap.SK_GetAngleFromLine(pt1, pt2: TPoint): Double;
var ang, theta : Double;
	a, b : Double;
begin
	a := pt2.x - pt1.x;
	b := pt2.y - pt1.y;
	ang := 0;

	if (a = 0) and (b = 0) then
	begin
		Result := 0.0;
	end;

	theta := arctan2(b, a) * 180 /K_PI;
	Result := theta;
end;

procedure Tfrm_ShuttleMap.trm_ESCTimer(Sender: TObject);
begin
	trm_ESC.Enabled := False;
	if gPopIdx = 2 then
	begin
		proc_LineSearch(IntToStr(gPopRow-1));
	end;
	cxgDepotListColumn2.Options.Editing := False;
end;

procedure Tfrm_ShuttleMap.BtnCloseClick(Sender: TObject);
begin
{	if bEditing then
	begin
		GMessagebox('정류장 수정중입니다. 정류장 수정을 완료 하십시오(저장-Enter, 취소-ESC)', CDMSE);
		//셀선택 처리
		cxGridDepot.SetFocus;
		cxgDepotList.Controller.FocusedRowIndex := gPopRow;
		cxgDepotList.Controller.EditingController.ShowEdit(cxgDepotList.Controller.FocusedItem);
		Exit;
	end; }
	proc_Init;
	
	GS_EnvFile.WriteString('ShuttleForm', 'Width', IntToStr(Self.Width));
	GS_EnvFile.WriteString('ShuttleForm', 'Height', IntToStr(Self.Height));
	GS_EnvFile.WriteString('ShuttleForm', 'Top', IntToStr(Self.Top));
	GS_EnvFile.WriteString('ShuttleForm', 'Left', IntToStr(Self.Left));

	if Assigned(Frm_WOR20) then Frm_WOR20.Close;  // 셔틀버스관리
	
	hide;
end;

procedure Tfrm_ShuttleMap.btnLoadFromFileClick(Sender: TObject);
var
  I: Integer;
begin
	try
    cxViewFileExcelList.DataController.SetRecordCount(0);
		Gauge1.Position := 0;

		for I := 0 to cxViewFileExcelList.ColumnCount - 1 do
    begin
      cxViewFileExcelList.Columns[I].Visible := False;
    end;

    try
			dlgOpen.Filter := '엑셀파일(*.xls;*.xlsx)|*.xls;*.xlsx';
			if dlgOpen.Execute then
			begin
				edtFilePath.Text := dlgOpen.FileName;

				Application.ProcessMessages;

				if not ExcelToGridEx(edtFilePath.Text, cxViewFileExcelList, Gauge1) then
        begin
					ShowMessage('엑셀파일을 불러오는데 실패했습니다. 엑셀파일을 확인하시고 다시 시도해 주세요.');
          Exit;
				end;
				edtCount.Text := '총 ' + IntToStr(cxViewFileExcelList.DataController.RecordCount) + ' 건';
			end;
		except
		end;
	finally
	end;
end;

procedure Tfrm_ShuttleMap.btnShSchClick(Sender: TObject);
var XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, i : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	j : integer;
begin
//1. 노선정보조회 sel06  MNG.GET_ROUTE_LIST
//request : 지사코드
//response :  1.노선코드 2.노선명 

	try
		gLineCode.Clear;
		gLineName.Clear;
		slList := TStringList.Create;
		try
//			Param := GT_SEL_BRNO.BrNo;
			Param := GT_USERIF.ShareNo;
			if not RequestBasePaging(GetSel06('GET_ROUTE_LIST', 'MNG.GET_ROUTE_LIST', '100', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('노선조회 결과 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				FreeAndNil(slList);
				Exit;
			end;

			xdom := ComsDomDocument.Create;
			try
				Frm_Flash.cxPBar1.Properties.Max := slList.Count;
				Frm_Flash.cxPBar1.Position := 0;
				for j := 0 to slList.Count - 1 do
				begin
					Frm_Flash.cxPBar1.Position := j + 1;
					Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
					Application.ProcessMessages;
					xmlData := slList.Strings[j];
					xdom.loadXML(XmlData);

					ls_MSG_Err := GetXmlErrorCode(XmlData);
					if ('0000' = ls_MSG_Err) then
					begin
						cbLine.Tag := 99;
						cbLine.Properties.Items.Clear;
						cbLine.Tag := 0;
						if (0 < GetXmlRecordCount(XmlData)) then
						begin
							lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
							ls_Rcrd := TStringList.Create;
							try
								for i := 0 to lst_Result.length - 1 do
								begin
									GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

									gLineCode.Add(ls_Rcrd[0]);
									gLineName.Add(ls_Rcrd[1]);
								end;
								cbLine.Properties.Items.Assign(gLineName);
								cbLine.ItemIndex := 0;
//								btn_LineSearch.Click;
							finally
								ls_Rcrd.Free;
							end;
						end;
					end;
				end;
			finally
				xdom := Nil;
			end;
		finally
			Frm_Flash.hide;    
			Screen.Cursor := crDefault;
			FreeAndNil(slList);
		end;
	except
		on E: Exception do
		begin
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
	end;
end;
//37.42829747263545, 126.76620435615891)

procedure Tfrm_ShuttleMap.btn_AddClick(Sender: TObject);
var iRow : Integer;
	sCode : string;
begin
	proc_AutoSearchStop; //자동갱신 초기화
	
	if (gLineCode.Count = 0) and (cbLine.ItemIndex < 0) then
	begin
		exit;
	end;
	
	if bEditing then
	begin
		GMessagebox('정류장 추가/수정 중입니다. 정류장 추가/수정을 완료 하십시오(저장-Enter, 취소-ESC)', CDMSE);
		//셀선택 처리
		cxGridDepot.SetFocus;
		cxgDepotList.Controller.FocusedRowIndex := gPopRow;
		cxgDepotList.Controller.EditingController.ShowEdit(cxgDepotList.Controller.FocusedItem);
		Exit;
	end;
	
	if cxgDepotList.DataController.RecordCount >= 100 then
	begin
		GMessagebox('정류장 100개 이상 추가 불가', CDMSE);
		Screen.Cursor := crDefault;
		Exit;
	end;
	
	gPopIdx := TcxButton(Sender).Tag; //버튼업무 구분값

	proc_BtnEnabled(False, 'Depot');
	btn_Save.Enabled := false;

	cxgDepotList.BeginUpdate();
	iRow := cxgDepotList.DataController.AppendRecord;
//	cxgDepotList.DataController.FocusedRecordIndex := iRow;
	cxgDepotList.DataController.Values[iRow, 0] := IntToStr(iRow+1);
	cxgDepotList.DataController.Values[iRow, 1] := '';
	cxgDepotList.DataController.Values[iRow, 2] := '';
	cxgDepotList.DataController.Values[iRow, 3] := '';
	cxgDepotList.DataController.Values[iRow, 4] := '';
	cxgDepotList.EndUpdate();

	sCode := '999'; //가상정류장코드
	Try
		ExecuteJavaScript(webNaverMap,'setIdx('''+sCode+''','+IntToStr(iRow+2)+');');
	except
	End;

	cxgDepotListColumn2.Options.Editing := true;	
	bEditing := cxgDepotListColumn2.Options.Editing;
	gPopRow := iRow;

//	cxgDepotListCellClick(cxgDepotList, cxgDepotList.Items[1].FocusedCellViewInfo, mbLeft,[ssLeft], gHandled);     //셀클릭
	cxgDepotList.DataController.FocusedRecordIndex := gPopRow;
	cxgDepotList.Controller.FocusedItemIndex := 1;
	cxGridDepot.SetFocus;

	//셀선택 처리
	cxgDepotList.Controller.EditingController.ShowEdit(cxgDepotList.Controller.FocusedItem);
end;

procedure Tfrm_ShuttleMap.btn_AddLineClick(Sender: TObject);
begin
	proc_AutoSearchStop; //자동갱신 초기화
	if bEditing then
	begin
		GMessagebox('정류장 추가/수정 중입니다. 정류장 추가/수정을 완료 하십시오(저장-Enter, 취소-ESC)', CDMSE);
		//셀선택 처리
		cxGridDepot.SetFocus;
		cxgDepotList.Controller.FocusedRowIndex := gPopRow;
		cxgDepotList.Controller.EditingController.ShowEdit(cxgDepotList.Controller.FocusedItem);
		Exit;
	end;
	lb_LineNotice.Caption := '신규노선을 등록하여 주십시오.';
	edt_AddLine.text := '';
	if pnl_AddLine.Visible then
		pnl_AddLine.Visible := false
	else
	begin
		pnl_AddLine.Visible := True;
		edt_AddLine.SetFocus;
	end;

	pnl_AddLine.Top := 129;	
	pnl_AddLine.Left := pnlLargeMenu.left - pnl_AddLine.width;	
end;

procedure Tfrm_ShuttleMap.btn_AddLineCloseClick(Sender: TObject);
begin
	pnl_AddLine.Visible := false;
end;

procedure Tfrm_ShuttleMap.btn_AddLineSaveClick(Sender: TObject);
begin
	proc_LineSave;
end;

procedure Tfrm_ShuttleMap.btn_DeleteClick(Sender: TObject);
var iRow, i : Integer;
	sDepot, sMsg, sCode : string;
begin
	proc_AutoSearchStop; //자동갱신 초기화
	if (gLineCode.Count = 0) and (cbLine.ItemIndex < 0) then
	begin
		exit;
	end;
	if bEditing then
	begin
		GMessagebox('정류장 추가/수정 중입니다. 정류장 추가/수정을 완료 하십시오(저장-Enter, 취소-ESC)', CDMSE);
		//셀선택 처리
		cxGridDepot.SetFocus;
		cxgDepotList.Controller.FocusedRowIndex := gPopRow;
		cxgDepotList.Controller.EditingController.ShowEdit(cxgDepotList.Controller.FocusedItem);
		Exit;
	end;

	gPopIdx := TcxButton(Sender).Tag; //팝업업무 구분값
	iRow := cxgDepotList.DataController.FocusedRecordIndex;
	if iRow < 0 then exit;

	proc_MoveCenter(slLat[iRow], slLon[iRow], '13');

	sDepot := cxgDepotList.DataController.Values[iRow, 1];
	sCode := cxgDepotList.DataController.Values[iRow, 0]; //가상정류장코드
	sMsg := '[' + sDepot + '] 정류장을 삭제하시겠습니까?';
	if Application.MessageBox(PChar(sMsg), '[정류장삭제]', MB_YESNO +	MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
	begin
		cxgDepotList.DataController.DeleteRecord(iRow);

		cxgDepotList.BeginUpdate();
		for i := 0 to cxgDepotList.DataController.RecordCount-1 do
		begin
			cxgDepotList.DataController.Values[i, 0] := IntToStr(i+1);
		end;
		cxgDepotList.EndUpdate();

		Try
			ExecuteJavaScript(webNaverMap,'setIdx('''+sCode+''','+IntToStr(iRow+2)+');');
			ExecuteJavaScript(webNaverMap,'RemoveTmpMark();');
		except
		End;

		if iRow = 0 then 
		begin
			if cxgDepotList.DataController.RecordCount > 0 then gPopRow := iRow	else gPopRow := -1;
		end
		else gPopRow := iRow-1;
		proc_DepotSave('Grid');
	end;
end;

procedure Tfrm_ShuttleMap.btn_DelLineClick(Sender: TObject);
begin
	proc_AutoSearchStop; //자동갱신 초기화
	if bEditing then
	begin
		GMessagebox('정류장 추가/수정 중입니다. 정류장 추가/수정을 완료 하십시오(저장-Enter, 취소-ESC)', CDMSE);
		//셀선택 처리
		cxGridDepot.SetFocus;
		cxgDepotList.Controller.FocusedRowIndex := gPopRow;
		cxgDepotList.Controller.EditingController.ShowEdit(cxgDepotList.Controller.FocusedItem);
		Exit;
	end;

	proc_LineDelete;
end;

procedure Tfrm_ShuttleMap.btn_DepotUpLoadClick(Sender: TObject);
begin
	proc_AutoSearchStop; //자동갱신 초기화
	if (gLineCode.Count = 0) and (cbLine.ItemIndex < 0) then   //노선이 없을경유
	begin
		exit;
	end;

	if bEditing then
	begin
		GMessagebox('정류장 추가/수정 중입니다. 정류장 추가/수정을 완료 하십시오(저장-Enter, 취소-ESC)', CDMSE);
		//셀선택 처리
		cxGridDepot.SetFocus;
		cxgDepotList.Controller.FocusedRowIndex := gPopRow;
		cxgDepotList.Controller.EditingController.ShowEdit(cxgDepotList.Controller.FocusedItem);
		Exit;
	end;

	Gauge1.Position := 0;
	edtCount.Text := '';
	chkFirstRowHeader.checked := False;
	cxViewFileExcelList.DataController.SetRecordCount(0);
	edtFilePath.Text := '';
	if pnl_AddDepot.Visible then
		pnl_AddDepot.Visible := false
	else
	begin
		pnl_AddDepot.Visible := True;
	end;


	pnl_AddDepot.Top := 129;	
	pnl_AddDepot.Left := pnlLargeMenu.left - pnl_AddDepot.width;	

	proc_BtnEnabled(False, 'Depot');

end;

procedure Tfrm_ShuttleMap.btn_ExcelCloseClick(Sender: TObject);
begin
	pnl_AddDepot.Visible := false;
	proc_BtnEnabled(True, 'Depot');
end;

procedure Tfrm_ShuttleMap.btn_ExcelDepotSaveClick(Sender: TObject);
var sMsg : string;
begin
	Try
		if cxViewFileExcelList.DataController.RecordCount < 1 then exit;
		
		sMsg := cbLine.Text + ' 노선에 정류장을 등록하시겠습니까?';
		if Application.MessageBox(PChar(sMsg), '[정류장등록]', MB_YESNO +	MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
		begin
			proc_DepotSave('Excel');
			btn_ExcelClose.Click;
		end;
	except

	End;   
end;

procedure Tfrm_ShuttleMap.btn_LineSearchClick(Sender: TObject);
begin
	try
		proc_AutoSearchStop; //자동갱신 초기화
		proc_BusSearch;// 버스위치 조회
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
			
end;

procedure Tfrm_ShuttleMap.btn_SaveClick(Sender: TObject);
var sMsg : string;
begin
	Try
		sMsg := '변경된 노선으로 저장하시겠습니까?';
		if Application.MessageBox(PChar(sMsg), '[변경노선저장]', MB_YESNO +	MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
		begin
			proc_DepotSave('Grid');
		end
		else btn_LineSearch.Click;

		proc_BtnEnabled(True, 'Depot');
		btn_Save.Enabled := false;

	except

	End;   

end;

procedure Tfrm_ShuttleMap.btn_ShuttleClick(Sender: TObject);
begin
{	if bEditing then
	begin
		cxgDepotListColumn2.Options.Editing := False;	
		bEditing := cxgDepotListColumn2.Options.Editing;
		if gPopIdx = 2 then
		begin
			cxgDepotList.DataController.DeleteRecord(gPopRow);
			Try
				ExecuteJavaScript(webNaverMap,'RemoveTmpMark();');
			except
			End;
			mn_Add.Enabled := True;
			mn_Update.Enabled := True;
			pnl_Button.Enabled := True;
		end else
		begin
			Try
				ExecuteJavaScript(webNaverMap,'setIdx('''','+IntToStr(-1)+');');
			except
			End;
		end;
//		GMessagebox('정류장 추가/수정 중입니다. 정류장 추가/수정을 완료 하십시오(저장-Enter, 취소-ESC)', CDMSE);
//		//셀선택 처리
 //		cxGridDepot.SetFocus;
 //		cxgDepotList.Controller.FocusedRowIndex := gPopRow;
 //		cxgDepotList.Controller.EditingController.ShowEdit(cxgDepotList.Controller.FocusedItem);
 //		Exit;    
	end;}

	if (gLineCode.Count = 0) and (cbLine.ItemIndex < 0) then
	begin
		exit;
	end;

	proc_AutoSearchStop; //자동갱신 초기화

	if Not Assigned(Frm_WOR20) Or (Frm_WOR20 = Nil) then Frm_WOR20 := TFrm_WOR20.Create(Nil);
	Frm_WOR20.proc_init;
	Frm_WOR20.gLineCode.Assign(gLineCode);
	Frm_WOR20.gLineName.Assign(gLineName);
	Frm_WOR20.cbLine.Properties.items.Assign(cbLine.Properties.items);
	Frm_WOR20.cbLine.ItemIndex := cbLine.ItemIndex;
	Frm_WOR20.cbLine2.Properties.items.Assign(cbLine.Properties.items);
	Frm_WOR20.cbLine2.ItemIndex := cbLine.ItemIndex;

	if gShuttleBrNo = '' then
	begin
		Frm_WOR20.btnBusInfoSave.enabled := False;
		Frm_WOR20.btnLineNameUpdate.enabled := False;
	end else
	begin
		Frm_WOR20.btnBusInfoSave.enabled := True;
		Frm_WOR20.btnLineNameUpdate.enabled := True;
	end;
	Frm_WOR20.gShuttleBrNo := gShuttleBrNo;    
	Frm_WOR20.Top := self.Top;// + pnlTitle.Height;
	Frm_WOR20.Show;
end;

procedure Tfrm_ShuttleMap.btn_UpClick(Sender: TObject);
var iSelfRow, iSomeoneRow, iTag : integer;
	sSelf_1, sSelf_2, sSelf_3, sSelf_4, sSelf_5 : string; 
	sSomeone_1, sSomeone_2, sSomeone_3, sSomeone_4, sSomeone_5 : string; 
begin
	proc_AutoSearchStop; //자동갱신 초기화

	//tag : 51(Up), 52(Down)
	iTag := TcxButton(Sender).Tag;
	if gClickRow = -1 then exit;
	iSelfRow := gClickRow;

	if iTag = 51 then 
	begin
		if iSelfRow = 0 then exit;
		iSomeoneRow := gClickRow - 1;
	end else 
	if iTag = 52 then 
	begin
		if iSelfRow = cxgDepotList.DataController.RecordCount-1 then exit;
		iSomeoneRow := gClickRow + 1; 
	end;
	
	sSelf_1 :=  cxgDepotList.DataController.Values[iSomeoneRow, 0];    //순번(코드) 대상코드값으로 입력
	sSelf_2 :=  cxgDepotList.DataController.Values[iSelfRow, 1];    //정류장명
	sSelf_3 :=  cxgDepotList.DataController.Values[iSelfRow, 2];    // lat
	sSelf_4 :=  cxgDepotList.DataController.Values[iSelfRow, 3];    //Lon
	sSelf_5 :=  cxgDepotList.DataController.Values[iSomeoneRow, 4];    // 정류장코드 = 순번

	sSomeone_1 :=  cxgDepotList.DataController.Values[iSelfRow, 0];    //순번(코드)
	sSomeone_2 :=  cxgDepotList.DataController.Values[iSomeoneRow, 1];    //정류장명
	sSomeone_3 :=  cxgDepotList.DataController.Values[iSomeoneRow, 2];    // lat
	sSomeone_4 :=  cxgDepotList.DataController.Values[iSomeoneRow, 3];    //Lon
	sSomeone_5 :=  cxgDepotList.DataController.Values[iSelfRow, 4];    // 정류장코드 = 순번

	cxgDepotList.BeginUpdate();
	cxgDepotList.DataController.Values[iSomeoneRow, 0] := sSelf_1;
	cxgDepotList.DataController.Values[iSomeoneRow, 1] := sSelf_2;
	cxgDepotList.DataController.Values[iSomeoneRow, 2] := sSelf_3;
	cxgDepotList.DataController.Values[iSomeoneRow, 3] := sSelf_4;
	cxgDepotList.DataController.Values[iSomeoneRow, 4] := sSelf_5;

	cxgDepotList.DataController.Values[iSelfRow, 0] := sSomeone_1;
	cxgDepotList.DataController.Values[iSelfRow, 1] := sSomeone_2;
	cxgDepotList.DataController.Values[iSelfRow, 2] := sSomeone_3;
	cxgDepotList.DataController.Values[iSelfRow, 3] := sSomeone_4;
	cxgDepotList.DataController.Values[iSelfRow, 4] := sSomeone_5;

	cxgDepotList.EndUpdate();

	Application.ProcessMessages;
	
	if iTag = 51 then 
	begin
		gClickRow := iSelfRow -1;
	end else 
	if iTag = 52 then 
	begin
		gClickRow := iSelfRow +1;
	end;
	cxgDepotList.Controller.FocusedRowIndex := gClickRow;
	cxGridDepot.setfocus;


	proc_BtnEnabled(False, 'UpDown');
	btn_Save.Enabled := True;

end;

procedure Tfrm_ShuttleMap.btn_UpdateClick(Sender: TObject);
var iRow : Integer;
	sCode : string;
begin
	proc_AutoSearchStop; //자동갱신 초기화
	if (gLineCode.Count = 0) and (cbLine.ItemIndex < 0) then
	begin
		exit;
	end;
	if bEditing then
	begin
		GMessagebox('정류장 추가/수정 중입니다. 정류장 추가/수정을 완료 하십시오(저장-Enter, 취소-ESC)', CDMSE);
		//셀선택 처리
		cxGridDepot.SetFocus;
		cxgDepotList.Controller.FocusedRowIndex := gPopRow;
		cxgDepotList.Controller.EditingController.ShowEdit(cxgDepotList.Controller.FocusedItem);
		Exit;
	end;

	gPopIdx := TcxButton(Sender).Tag; //팝업업무 구분값
	gPopRow := -1;
	iRow := cxgDepotList.DataController.FocusedRecordIndex;
	if iRow < 0 then exit;

//	cxgDepotList.OptionsSelection.CellSelect := True;

	proc_MoveCenter(slLat[iRow], slLon[iRow], '13');
	sCode := cxgDepotList.DataController.Values[iRow, 4]; //정류장코드
	gDepot := cxgDepotList.DataController.Values[iRow, 1]; //변경전 정류장
	Try
		ExecuteJavaScript(webNaverMap,'setIdx('''+sCode+''','+IntToStr(iRow+2)+');');
	except
	End;

	proc_BtnEnabled(False, 'Depot');
	
	cxgDepotListColumn2.Options.Editing := true;	
	bEditing := cxgDepotListColumn2.Options.Editing;
	gPopRow := iRow;
	//셀선택 처리
	cxgDepotList.DataController.FocusedRecordIndex := gPopRow;
	cxgDepotList.Controller.FocusedItemIndex := 1;
	cxGridDepot.SetFocus;
	cxgDepotList.Controller.EditingController.ShowEdit(cxgDepotList.Controller.FocusedItem);
end;

procedure Tfrm_ShuttleMap.cbLinePropertiesChange(Sender: TObject);
begin
	if bEditing then
	begin
		GMessagebox('정류장 추가/수정 중입니다. 정류장 추가/수정을 완료 하십시오(저장-Enter, 취소-ESC)', CDMSE);
		//셀선택 처리
		cxGridDepot.SetFocus;
		cxgDepotList.Controller.FocusedRowIndex := gPopRow;
		cxgDepotList.Controller.EditingController.ShowEdit(cxgDepotList.Controller.FocusedItem);
		Exit;
	end;

	if cbLine.Tag = 99 then exit;

	if (gLineCode.Count = 0) and (cbLine.ItemIndex < 0) then
	begin
		exit;
	end;

	proc_Init;


	//4.노선정류장조회 sel06   MNG.GET_SH_STOP_LIST
// request : 노선코드
// response :  1.정류장순번 2.정류장명 3.X 4.Y 
	try
		proc_AutoSearchStop; //자동갱신 초기화
			
		proc_LineSearch('All');   //정류장 조회 및 표기
		proc_BusSearch;// 버스위치 조회
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_ShuttleMap.cb_SUpDateClick(Sender: TObject);
var
  iCnt: integer;
begin
	if bEditing then
	begin
		GMessagebox('정류장 추가/수정 중입니다. 정류장 추가/수정을 완료 하십시오(저장-Enter, 취소-ESC)', CDMSE);
		//셀선택 처리
		cxGridDepot.SetFocus;
		cxgDepotList.Controller.FocusedRowIndex := gPopRow;
		cxgDepotList.Controller.EditingController.ShowEdit(cxgDepotList.Controller.FocusedItem);
		Exit;
	end;

	try
    case cb_SUpDate.ItemIndex of
			0:
        begin
					cxCESdt.Value := 0;
					cxCESdt.Visible := False;
					btnShSch.Enabled := True;
					AutoFlag := False;

          tmr_Sdis.Enabled := (cb_SUpDate.ItemIndex > 0);
				end;
		else
      begin
				iCnt := StrToIntDef(Trim(Copy(cb_SUpDate.Text, 1, 3)), 0);
				if iCnt > 0 then
				begin
					cxCESdt.Value := iCnt; // 갱신시간 카운트.
					cxCESdt.Visible := True;

					tmr_Sdis.Enabled := (cb_SUpDate.ItemIndex > 0);
        end else
				begin
					if cb_SUpDate.ItemIndex <> 0 then
						cb_SUpDate.ItemIndex := 0;
        end;

				case cb_SUpDate.ItemIndex of
					1: tmr_Sdis.Interval := 1000;//1800;
					2: tmr_Sdis.Interval := 1000;//1500;
				else
					tmr_Sdis.Interval := 1000;//1300;
				end;
      end;
    end;
		if cxCESdt.Visible = True then
    begin
      cxCESdt.SetFocus;
    end;
  except on E: Exception do
    Assert(False, E.Message);
	end;
end;

procedure Tfrm_ShuttleMap.CreateObj;
var i : integer;
	Save: LongInt; // 폼타이틀 제거용.
begin
	try
		if BorderStyle = bsNone then Exit;
		SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);

		//====================================================
		// 폼 타이틀 제거..
		FResize := True;
		Save := GetWindowLong(Handle,  GWL_STYLE);
		if (Save and ws_Caption) = ws_Caption then
		begin
			case BorderStyle of
				bsSizeable:
					SetWindowLong(Handle, GWL_STYLE, Save and (not (WS_CAPTION)) or WS_BORDER);
			end;
			Height := Height - getSystemMetrics(SM_CYCAPTION);
			Self.Refresh;
		end;

    // 엑셀 그리드
    for I := 0 to cxViewFileExcelList.ColumnCount - 1 do
    begin
      cxViewFileExcelList.Columns[i].DataBinding.ValueType := 'String';
    end;
	except
		on e: exception do
		begin
			Log('CreateObj Error :' + E.Message, LOGDATAPATHFILE);
			Assert(False, 'CreateObj Error :' + E.Message);
		end;
	end;
end;

procedure Tfrm_ShuttleMap.cxgDepotListCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
//	proc_AutoSearchStop; //자동갱신 초기화
	gClickRow := cxgDepotList.DataController.FocusedRecordIndex; //선택한 행 위치
end;

procedure Tfrm_ShuttleMap.cxgDepotListCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var iRow : integer;
begin
//	proc_AutoSearchStop; //자동갱신 초기화
	iRow := cxgDepotList.DataController.FocusedRecordIndex;
	if iRow < 0 then exit;
	proc_MoveCenter(slLat[iRow], slLon[iRow], '13');
{	Try
		ExecuteJavaScript(webNaverMap,'CenterMove('+slLat[iRow]+','+ slLon[iRow] +',''13'');');
	except

	End;  }
end;

procedure Tfrm_ShuttleMap.cxgDepotListEditKeyDown(
	Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
	AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
var sMsg, sDepot : string;
	slatX, slonY : String;
begin
	try
		if key = vk_return then
		begin
			if bEditing then
			begin
				cxGridDepot.Tag := 99;
				cxGridDepot.SetFocus;
				cxGridDepot.Tag := 0;

				cxgDepotListColumn2.Options.Editing := False;	
				bEditing := cxgDepotListColumn2.Options.Editing;

	//			iRow := cxgDepotList.DataController.FocusedRecordIndex;
	//			sDepot := cxgDepotList.DataController.Values[gPopRow, 1];
				if gPopIdx = 0 then //수정
					sMsg := '[' + gDepot + '] 정류장을 변경하시겠습니까?'
				else
				if  gPopIdx = 2 then // 추가
				begin
					slatX := ExecuteJavaScriptGetValue(webNaverMap, 'lat');
					slonY := ExecuteJavaScriptGetValue(webNaverMap, 'lng');
					if (slatX <> '') and (slonY <> '') then
					else
					begin
						GMessagebox('지도위에 정류장을 표기하세요', CDMSE);
						cxgDepotListColumn2.Options.Editing := True;	
						bEditing := cxgDepotListColumn2.Options.Editing;
						exit;
					end;

					if cxgDepotList.ViewData.Records[gPopRow].Values[1] = null then sDepot := '' else
					sDepot := cxgDepotList.ViewData.Records[gPopRow].Values[1];

					if Trim(sDepot) = '' then
					begin
						GMessagebox('정류장명을 입력하세요', CDMSE);
						cxgDepotListColumn2.Options.Editing := True;	
						bEditing := cxgDepotListColumn2.Options.Editing;
						exit;
					end;

					sMsg := '[' + sDepot + '] 정류장을 추가하시겠습니까?' ;
				end;
			
				if Application.MessageBox(PChar(sMsg), '[정류장저장]', MB_YESNO +	MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
				begin
					slatX := ExecuteJavaScriptGetValue(webNaverMap, 'lat');
					slonY := ExecuteJavaScriptGetValue(webNaverMap, 'lng');
					if (slatX <> '') and (slonY <> '') then
					begin
						cxgDepotList.DataController.Values[gPopRow, 2] := slatX;
						cxgDepotList.DataController.Values[gPopRow, 3] := slonY;
					end
					else
					begin
						if gPopIdx = 2 then    //추가
						begin
							GMessagebox('지도위에 정류장을 표기하세요', CDMSE);
							cxgDepotListColumn2.Options.Editing := True;	
							bEditing := cxgDepotListColumn2.Options.Editing;
							exit;
						end;
					end;
					proc_BtnEnabled(True, 'Depot');

//					cxgDepotList.OptionsSelection.CellSelect := False;

					proc_DepotSave('Grid');
				end
				else
				begin
					if gPopIdx = 0 then
						proc_LineSearch(IntToStr(gPopRow))
					else
					if gPopIdx = 2 then
					begin
						cxgDepotList.DataController.DeleteRecord(gPopRow);
						Try
							ExecuteJavaScript(webNaverMap,'RemoveTmpMark();');
						except
						End;
//						cxgDepotList.OptionsSelection.CellSelect := False;

					end;
					proc_BtnEnabled(True, 'Depot');
				end;
			end;
		end else
		if Key = VK_ESCAPE then
		begin
			bEditing := False;
			if gPopIdx = 1 then
			begin
				Try
					ExecuteJavaScript(webNaverMap,'setIdx('''','+IntToStr(-1)+');');
				except
				End;
			end;
			proc_BtnEnabled(True, 'Depot');
			trm_ESC.Enabled := True;
		end;

	except

  end;
end;

procedure Tfrm_ShuttleMap.cxgDepotListFocusedRecordChanged(
	Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
	if bEditing then
	begin
		if (cxgDepotList.Controller.FocusedRowIndex <> gPopRow) and (cxGridDepot.Tag <> 99) then
			GMessagebox('정류장 수정중입니다. 정류장 수정을 완료 하십시오(저장-Enter, 취소-ESC)', CDMSE);
		//셀선택 처리
		cxgDepotList.Controller.FocusedRowIndex := gPopRow;
//		cxgDepotList.Controller.FocusedColumnIndex := 1;
		cxgDepotList.Controller.EditingController.ShowEdit(cxgDepotList.Controller.FocusedItem);
		Exit;
	end
	else
	begin
	
  end;
end;

procedure Tfrm_ShuttleMap.cxgDepotListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	Try
		if gShuttleBrNo = '' then exit;

		if Key = VK_F2 then
			mn_UpdateClick(mn_Update) else
		if Key = VK_Delete then
			mn_DeleteClick(mn_Delete) else
		if Key = VK_Insert then
			mn_AddClick(mn_Add)
			
	except
	
  End;

end;

procedure Tfrm_ShuttleMap.edt_AddLineKeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if key = vk_Return then btn_AddLineSave.click;
	
end;


function Tfrm_ShuttleMap.ExcelToGridEx(AFilename: string;
	AView: TcxGridDBTableView; AGauge: TAdvProgressBar): Boolean;
var
  FExcel: Variant;
  FWorkbook: Variant;
  FWorksheet: Variant;
  FCell: Variant;
	FArray: Variant;
	I, s,z, iRow: Integer;
  rangestr:string;
  startstr,endstr:string;
  code: Integer;
  sr,er,sc,ec: Integer;
  ulc: Boolean;
  OldCursor: TCursor;
  ColCount, RowCount: Integer;
begin
	Result := False;

  OldCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;

  try
    FExcel := CreateOleObject('excel.application');
  except
    Screen.Cursor := OldCursor;
    raise EAdvGridError.Create('Excel OLE server not found');
    Exit;
  end;

  try
    FWorkBook := FExcel.WorkBooks.Open(AFilename);
    FWorkSheet := FWorkBook.ActiveSheet;
    rangestr := FWorkSheet.UsedRange.Address;

    //decode here how many cells are required, $A$1:$D$8 for example
    startstr := '';
    endstr := '';

    sc := -1;
    ec := -1;

    if Pos(':',rangestr) > 0 then
    begin
      startstr := Copy(rangestr,1,pos(':',rangestr)-1);
      endstr := Copy(rangestr,pos(':',rangestr)+1,255);

      if pos('$',startstr) = 1 then
        Delete(startstr,1,1);

      if pos('$',endstr) = 1 then
        Delete(endstr,1,1);

      ulc := not (Pos('$',startstr) > 0);

      if pos('$',startstr) > 0 then
        Val(copy(startstr,pos('$',startstr)+1,255),sr,code)
      else
        Val(startstr,sr,code);

      if code <> 0 then
        sr := -1;

      if pos('$',endstr) > 0 then
        Val(copy(endstr,pos('$',endstr)+1,255),er,code)
      else
        Val(endstr,er,code);

      if code <> 0 then
        er := -1;

      // now decode the Columns
      if ulc then
      begin
        sc := 1;
        ec := 256;
      end else
      begin
        if pos('$',startstr) > 0 then
          startstr := Copy(startstr,1,pos('$',startstr)-1);

        if pos('$',endstr) > 0 then
          endstr := Copy(endstr,1,pos('$',endstr) - 1);

        if startstr <> '' then
          sc := ord(startstr[1]) - 64;

        if Length(startstr)>1 then
          sc := sc * 26 + ord(startstr[2]) - 64;

        if endstr<>'' then
          ec := ord(endstr[1]) - 64;
        if Length(endstr)>1 then
          ec := ec * 26 + ord(endstr[2]) - 64;
      end;
    end else
    begin
      sc := 1;
      sr := 1;
      ec := 1;
      er := 1;
    end;

    if (sr <> -1) and (er <> -1) and (sc <> -1) and (ec <> -1) then
    begin
      ColCount := ec - sc + 1;
			RowCount := er - sr + 1;
    end;

    rangestr := Chr(ord('A') - 1 + sc) + IntToStr(sr)+':';

    if (ColCount > 26) then
    begin
			rangestr := rangestr + chr(ord('A') - 1 + ((ec - sc) div 26));
      rangestr := rangestr + chr(ord('A') + ((ec - sc) mod 26));
    end
    else
      rangestr := rangestr + Chr(ord('A') - 1 + ec);

    rangestr := rangestr + IntToStr(er);

    AGauge.Position := 0;
		AGauge.Max := RowCount;

    for I := 0 to ColCount - 1 do
    begin
      if I > 15 then
        Break;
      AView.Columns[I].Visible := True;
    end;

		FArray := FWorkSheet.Range[RangeStr].Value;

		AView.BeginUpdate;
//		RowCount := RowCount - IfThen(chkFirstRowHeader.Checked, 1, 0);
		AView.DataController.RecordCount := RowCount - IfThen(chkFirstRowHeader.Checked, 1, 0);
		try
			iRow := 0;
			for s := 1 to RowCount do
			begin
				if (chkFirstRowHeader.Checked) and (s = 1) then Continue;
				for z := 1 to ColCount do
				begin
					if z > 16 then
						Break;

					FCell := FArray[s,z];

					if VarIsClear(FCell) then
						FCell := EmptyStr;
//					AView.DataController.Values[s-1, z-1] := FCell;
					AView.DataController.Values[iRow, z-1] := FCell;
				end;
				if s mod 100 = 0 then
				begin
					AGauge.Position := s;
					Application.ProcessMessages;
				end;
				inc(iRow);
			end;
		finally
      AView.EndUpdate;
    end;

    FWorkBook.Close(SaveChanges:=False);

    AGauge.Position := AGauge.Max;

    Result := True;
  finally
    FExcel.Quit;
    FExcel := UnAssigned;
    Screen.Cursor := OldCursor;
  end;
end;

procedure Tfrm_ShuttleMap.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure Tfrm_ShuttleMap.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	if Assigned(slLon) then slLon.Free; 
	if Assigned(slLat) then slLat.Free; 
	if Assigned(slDepot) then slDepot.Free; 
	if Assigned(slDeCode) then slDeCode.Free; 
	
	if Assigned(gLineCode) then gLineCode.Free; 
	if Assigned(gLineName) then gLineName.Free; 
	if Assigned(Frm_WOR20) then Frm_WOR20.Close;  // 셔틀버스관리
  Action := caFree;
end;

procedure Tfrm_ShuttleMap.FormCreate(Sender: TObject);
begin
	try
		CreateObj;
		AutoFlag := False;
		
		cxgDepotList.Columns[0].DataBinding.ValueType := 'String';
		cxgDepotList.Columns[1].DataBinding.ValueType := 'String';
		cxgDepotList.Columns[2].DataBinding.ValueType := 'String';
		cxgDepotList.Columns[3].DataBinding.ValueType := 'String';
		cxgDepotList.Columns[4].DataBinding.ValueType := 'String';

		pLoadNaverMap;   
		sleep(1000);  //네이버 지도 최초실행 시 오류 방지

		gLineCode := TStringList.Create;
		gLineName := TStringList.Create;

		slLon := TStringList.Create;
		slLat := TStringList.Create;
		slDepot := TStringList.Create;
		slDeCode := TStringList.Create;
		
	except
		on e: exception do
		begin
      Log('FormCreate Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'FormCreate Error :' + E.Message);
		end;
  end;
end;

procedure Tfrm_ShuttleMap.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure Tfrm_ShuttleMap.FormDestroy(Sender: TObject);
begin
	frm_ShuttleMap := Nil;
end;

procedure Tfrm_ShuttleMap.FormResize(Sender: TObject);
begin
	SetDebugeWrite('frm_ShuttleMap.FormResize');
	try
		if not FResize then
		begin
			if not Assigned(frm_ShuttleMap) then
			begin
				GS_EnvFile.WriteString('ShuttleForm', 'Width', '1034');
				GS_EnvFile.WriteString('ShuttleForm', 'Height', '716');
				GS_EnvFile.WriteString('ShuttleForm', 'Top', '0');
				GS_EnvFile.WriteString('ShuttleForm', 'Left', '0');
			end else                                
			begin
				GS_EnvFile.WriteString('ShuttleForm', 'Width', IntToStr(Self.Width));
				GS_EnvFile.WriteString('ShuttleForm', 'Height', IntToStr(Self.Height));
				GS_EnvFile.WriteString('ShuttleForm', 'Top', IntToStr(Self.Top));
				GS_EnvFile.WriteString('ShuttleForm', 'Left', IntToStr(Self.Left));
			end;
		end;
		FResize := False;
	except
	end;
end;

procedure Tfrm_ShuttleMap.FormShow(Sender: TObject);
begin
  fSetFont(frm_ShuttleMap, GS_FONTNAME);

	FResize := True;
	Self.Width  := GS_EnvFile.ReadInteger('ShuttleForm', 'Width', 1034);
	FResize := True;
	Self.Height := GS_EnvFile.ReadInteger('ShuttleForm', 'Height', 716);
	FResize := True;
	Self.Top := GS_EnvFile.ReadInteger('ShuttleForm', 'Top', 0);
	FResize := True;
	Self.Left := GS_EnvFile.ReadInteger('ShuttleForm', 'Left', 0);


	gShuttleBrNo := ''; //셔틀관리지사코드
	if (GT_SEL_BRNO.BRNO = SHUTTLE_BrNo) and (GT_SEL_BRNO.GUBUN = '1') then
	begin
		gShuttleBrNo := SHUTTLE_BrNo;
	end;
	
{	if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
	begin
		for I := 0 to scb_FamilyBrCode.Count - 1 do
		begin
			if scb_FamilyBrCode[i] = SHUTTLE_BrNo then
			begin
				gShuttleBrNo := scb_FamilyBrCode[i];
				Break;
			end;
		end;
	end else
	begin
		for I := 0 to scb_BranchCode.Count - 1 do
		begin
			if scb_BranchCode[i] = SHUTTLE_BrNo then
			begin
				gShuttleBrNo := scb_BranchCode[i];
				Break;
			end;
		end;
	end;}
	
	proc_Init;

	btnShSch.Click;
end;



procedure Tfrm_ShuttleMap.mn_AddClick(Sender: TObject);
begin
	btn_AddClick(btn_Add);	
end;

procedure Tfrm_ShuttleMap.mn_DeleteClick(Sender: TObject);
begin
	btn_DeleteClick(btn_Delete);
end;

procedure Tfrm_ShuttleMap.mn_UpdateClick(Sender: TObject);
begin
	btn_UpdateClick(btn_Update);

end;

procedure Tfrm_ShuttleMap.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(pnl_AddDepot.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_ShuttleMap.pLoadNaverMap;
Var iRandom : integer;
		sClient: string;
begin
	Try
		iRandom := RandomRange(0, gslNaverClientID.Count); //실제 갯수만큼 사용 0, 5 -> Max index = 4
		sClient := gslNaverClientID[iRandom];
		Naver_URL := 'http://203.251.202.13:88/map/makeNaverMap_Shuttle_cloud.jsp?ncpClientId=' + sClient;
		bWebLoading := False;
		try
			webNaverMap.Silent := True;
			webNaverMap.Navigate(Naver_URL);
		except on E: Exception do
			Assert(False, E.Message);
		end;

	except on E: Exception do
		Assert(False, E.Message);
	end; 
end;

procedure Tfrm_ShuttleMap.pmEditPopup(Sender: TObject);
begin
	
	proc_AutoSearchStop; //자동갱신 초기화

	gPopIdx := -1;//초기화

	if gShuttleBrNo = '' then
	begin
		mn_Add.enabled := False;
		mn_Update.enabled := False;
		mn_Delete.enabled := False;
	end else
	begin
		mn_Add.enabled := True;
		mn_Update.enabled := True;
		mn_Delete.enabled := True;
	end;
	
end;

procedure Tfrm_ShuttleMap.pnlTitleMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_ShuttleMap.pnl_AddLineMouseDown(Sender: TObject;
	Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(pnl_AddLine.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_ShuttleMap.proc_setFitBounds(aLatList, aLonList : TStringList);
var dLat1, dLon1, dLat2, dLon2 : Double;
	sLat1, sLon1, sLat2, sLon2 : string;
	i : integer;
begin
	dLat1 := 0; dLat2 := 0; dLon1 := 0; dLon2 := 0;
	sLat1 := ''; sLat2 := ''; sLon1 := ''; sLon2 := '';
	for i := 0 to aLatList.Count - 1 do
	begin
		if i = 0 then
		begin
			dLat1 := StrToFloatDef(aLatList[i], 0.0);
			dLat2 := StrToFloatDef(aLatList[i], 0.0);
			dLon1 := StrToFloatDef(aLonList[i], 0.0);
			dLon2 := StrToFloatDef(aLonList[i], 0.0);
		end
		else
		if dLat1 >= StrToFloatDef(aLatList[i], 0.0) then dLat1 := StrToFloatDef(aLatList[i], 0.0) else
		if dLat2 <  StrToFloatDef(aLatList[i], 0.0) then dLat2 := StrToFloatDef(aLatList[i], 0.0);

		if dLon1 >= StrToFloatDef(aLonList[i], 0.0) then dLon1 := StrToFloatDef(aLonList[i], 0.0) else
		if dLon2 <  StrToFloatDef(aLonList[i], 0.0) then dLon2 := StrToFloatDef(aLonList[i], 0.0);
			
	end;
	sLat1 := FloatToStr(dLat1);	
	sLat2 := FloatToStr(dLat2);	
	sLon1 := FloatToStr(dLon1);	
	sLon2 := FloatToStr(dLon2);	

	Try
		ExecuteJavaScript(webNaverMap,'setFitBounds('+sLat1+','+sLon1+','+sLat2+','+sLon2+');');
	except

	End;
end;



procedure Tfrm_ShuttleMap.setDepotPoiMark(aLatList, aLonList,
	aDepotList, aDepotCodeList: TStringList);
var i : integer;
begin
	Try
		for i := 0 to aLatList.Count - 1 do
		begin
			ExecuteJavaScript(webNaverMap,'setDepotPoiMark('+InttoStr(i+2)+', '+aLatList[i]+','+ aLonList[i] +','''+ aDepotList[i] +''','''+ aDepotCodeList[i] +''');');
		end;
		proc_setFitBounds(aLatList, aLonList);
	except
	
	End;
end;


procedure Tfrm_ShuttleMap.tmr_SdisTimer(Sender: TObject);
begin
	try
		if (cb_SUpDate.ItemIndex = 0) then
		begin
			tmr_Sdis.Enabled := False;
			cxCESdt.Value := 0; // 갱신시간 카운트.
			Exit;
		end;

		cxCESdt.Value := cxCESdt.Value - 1; // 갱신시간 카운트.
		if cxCESdt.Value < 0 then
			cxCESdt.Value := StrToIntDef(Trim(Copy(cb_SUpDate.Text, 1, 3)), 30);

		if cxCESdt.Value = 0 then
		begin
			proc_BusSearch;
			AutoFlag := True;
			tmr_Sdis.Enabled := True;
			cxCESdt.Value := 0;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure Tfrm_ShuttleMap.proc_AutoSearchStop;
begin
	cb_SUpDate.ItemIndex := 0;
	tmr_Sdis.Enabled := False;
	cxCESdt.Value := 0; // 갱신시간 카운트.
end;

procedure Tfrm_ShuttleMap.proc_BtnEnabled(AEnable: Boolean; AType : string);
begin
	if AType = 'ReadOnly' then
	begin
		cbLine				.Enabled := True;
		btn_LineSearch.Enabled := True;
		btn_Shuttle   .Enabled := True;
		cb_SUpDate    .Enabled := True;
	end else
	begin
		cbLine				.Enabled := AEnable;
		btn_LineSearch.Enabled := AEnable;
		btn_Shuttle   .Enabled := AEnable;
		cb_SUpDate    .Enabled := AEnable;
	end;
	btn_AddLine   .Enabled := AEnable;
	btn_DelLine   .Enabled := AEnable;

	mn_Update.Enabled := AEnable;
	mn_Delete.Enabled := AEnable;
	mn_Add	 .Enabled := AEnable;

	btn_Update.Enabled := AEnable;
	btn_Delete.Enabled := AEnable;
	btn_Add		.Enabled := AEnable;
	btn_DepotUpLoad.Enabled := AEnable;

	if AType <> 'UpDown' then
	begin
		btn_Up  .Enabled := AEnable;
		btn_Down.Enabled := AEnable;
	end;
end;

procedure Tfrm_ShuttleMap.proc_BusSearch;
var XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, i : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	slTmp1, slTmp2, slTmp3, slTmp4, slTmp5, slTmp6, slTmp7, slTmp8 : TStringList;
	sTmp, sGubun : string;
	j : integer;
begin
//6.셔틀위치조회 sel06  MNG.GET_ROUTE_ST_WK_LIST
// request : 노선코드
// response :  1.기사사번 2.기사명 3.단말기번호 4.이전좌표 X 5.이전좌표 Y 6.좌표 X 7.좌표 Y
	if (gLineCode.Count = 0) and (cbLine.ItemIndex < 0) then
	begin
		exit;
	end;
	try
		btn_LineSearch.Enabled := False;
		slList := TStringList.Create;
		try
			Param := gLineCode[cbLine.ItemIndex];
			if not RequestBasePaging(GetSel06('GET_SH_STOP_LIST', 'MNG.GET_ROUTE_ST_WK_LIST', '50', Param), slList, ErrCode, ErrMsg) then
			begin
				Log(Format('셔틀위치조회 결과 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), LOGDATAPATHFILE);
//				GMessagebox(Format('셔틀위치조회 결과 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				FreeAndNil(slList);
				Exit;
			end;

			xdom := ComsDomDocument.Create;
			try
				slTmp1 := TStringList.Create; slTmp2 := TStringList.Create; slTmp3 := TStringList.Create;
				slTmp4 := TStringList.Create;	slTmp5 := TStringList.Create;	slTmp6 := TStringList.Create;
				slTmp7 := TStringList.Create; slTmp8 := TStringList.Create;

				Frm_Flash.cxPBar1.Properties.Max := slList.Count;
				Frm_Flash.cxPBar1.Position := 0;
				for j := 0 to slList.Count - 1 do
				begin
					Frm_Flash.cxPBar1.Position := j + 1;
					Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
					Application.ProcessMessages;
					xmlData := slList.Strings[j];
					xdom.loadXML(XmlData);

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

									slTmp1.Add(ls_Rcrd[0]);
									slTmp2.Add(ls_Rcrd[1]);
									slTmp3.Add(ls_Rcrd[2]);
									if ls_Rcrd[3] = '' then slTmp4.Add('0') else slTmp4.Add(ls_Rcrd[3]);
									if ls_Rcrd[4] = '' then slTmp5.Add('0') else slTmp5.Add(ls_Rcrd[4]);
									slTmp6.Add(ls_Rcrd[5]);
									slTmp7.Add(ls_Rcrd[6]);
									slTmp8.Add(ls_Rcrd[7]); //셔틀상태 1:운행, 5:대기, 9:종료
								end;
							finally
								ls_Rcrd.Free;
							end;
						end;
					end;
				end;
			finally
				xdom := Nil;
				Try
					ExecuteJavaScript(webNaverMap,'RemoveShuttleMK();');
					if slTmp1.Count > 0 then
					begin
						Try
							sGubun := '';
							for i := 0 to slTmp1.Count - 1 do
							begin
//								Log('관리현재좌표 : ' + slTmp6[i] + '|' +  slTmp7[i], LOGDATAPATHFILE);
//								Log('관리이전좌표 : ' + slTmp4[i] + '|' +  slTmp5[i], LOGDATAPATHFILE);

								if slTmp8[i] = '1' then sGubun := 's0001' else
								if slTmp8[i] = '5' then sGubun := 's0101' else
								if slTmp8[i] = '9' then sGubun := 's0201' ;

								sTmp := slTmp2[i] + '[' + slTmp3[i] + ']';
								if (slTmp6[i] <> '') and (slTmp7[i] <> '') then
//									ExecuteJavaScript(webNaverMap,'setShuttleMK1('+InttoStr(slLon.Count + 100 + i)+','+slTmp4[i]+','+ slTmp5[i] +','+slTmp6[i]+','+ slTmp7[i] +','''+ sTmp +''','''+slTmp1[i]+''' );');
									ExecuteJavaScript(webNaverMap,'setShuttleMK('+slTmp4[i]+','+ slTmp5[i] +','+slTmp6[i]+','+ slTmp7[i] +','''+ sTmp +''','''+slTmp1[i]+''','''+sGubun+''' );');
							end;
						except
	
						End;
					end;
				except
				End;
				slTmp1.Free;
				slTmp2.Free;
				slTmp3.Free;
				slTmp4.Free;
				slTmp5.Free;
				slTmp6.Free;
				slTmp7.Free;
				slTmp8.Free;
			end;
		finally
			Frm_Flash.hide;    
			Screen.Cursor := crDefault;
			FreeAndNil(slList);
			btn_LineSearch.Enabled := True;
		end;
	except
		on E: Exception do
		begin
			btn_LineSearch.Enabled := True;
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_ShuttleMap.proc_DepotSave(AGubun : string);
var sParam, sDepCode, sDepName, sLon, sLat, sTmp : string;
	i : integer;
	XmlData, ErrMsg : string;
	ErrCode : integer;
begin
//5.노선정류장 저장 col06  MNG.SET_SH_STOP_SAVE
// request : 1.노선코드 2.저장개수 2.[정류장순번,정류장순번...] 3.[정류장명,정류장명...] 4.[X,X...] 5.[Y,Y...]
// response : 성공,실패 (기존그대로)
	if (gLineCode.Count = 0) and (cbLine.ItemIndex < 0) then
	begin
		exit;
	end;
	try
		sParam := gLineCode[cbLine.ItemIndex];
		if AGubun = 'Grid' then
		begin
			sParam := sParam + '│' + IntToStr(cxgDepotList.DataController.RecordCount);
		
			for i:= 0 to cxgDepotList.DataController.RecordCount - 1 do
			begin
				if i = 0 then
				begin
					sDepCode := cxgDepotList.DataController.Values[i, 0];
					sDepName := cxgDepotList.DataController.Values[i, 1];
					sLat := cxgDepotList.DataController.Values[i, 2];
					sLon := cxgDepotList.DataController.Values[i, 3];
				end
				else
				begin
					sDepCode := sDepCode + ',' + cxgDepotList.DataController.Values[i, 0];
					sDepName := sDepName + ',' + cxgDepotList.DataController.Values[i, 1];
					sLat := sLat + ',' + cxgDepotList.DataController.Values[i, 2];
					sLon := sLon + ',' + cxgDepotList.DataController.Values[i, 3];
				end;
			end;
		end else
		if AGubun = 'Excel' then
		begin
			if cxViewFileExcelList.DataController.RecordCount >= 100 then
				sParam := sParam + '│' + '100'
			else
				sParam := sParam + '│' + IntToStr(cxViewFileExcelList.DataController.RecordCount);

			for i:= 0 to cxViewFileExcelList.DataController.RecordCount - 1 do
			begin
        if i = 100 then break;
				if i = 0 then
				begin
					sDepCode := IntToStr(i+1);
					sDepName := cxViewFileExcelList.DataController.Values[i, 0];
					sTmp := cxViewFileExcelList.DataController.Values[i, 1];
					if pos('.', sTmp) < 1 then sLat := SetWGS84(sTmp) else sLat := sTmp;
					sTmp := cxViewFileExcelList.DataController.Values[i, 2];
					if pos('.', sTmp) < 1 then sLon := SetWGS84(sTmp) else sLon := sTmp;
				end
				else
				begin
					sDepCode := sDepCode + ',' + IntToStr(i+1);
					sDepName := sDepName + ',' + cxViewFileExcelList.DataController.Values[i, 0];

					sTmp := cxViewFileExcelList.DataController.Values[i, 1];
					if pos('.', sTmp) < 1 then sTmp := SetWGS84(sTmp);
					sLat := sLat + ',' + sTmp;

					sTmp := cxViewFileExcelList.DataController.Values[i, 2];
					if pos('.', sTmp) < 1 then sTmp := SetWGS84(sTmp);
					sLon := sLon + ',' + sTmp;
				end;
			end;
		end;
		sParam := sParam + '│' + sDepCode + '│' + sDepName + '│' + sLat + '│' + sLon;		

		
		if not RequestBase(GetCallable06('SET_SH_STOP_SAVE', 'MNG.SET_SH_STOP_SAVE', sParam), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('노선정류장 지정 시 오류가 발생하였습니다.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			exit;
		end;
		gClickRow := -1;
		if gPopRow > -1 then
			proc_LineSearch(IntToStr(gPopRow))
		else
			btn_LineSearch.Click;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;


procedure Tfrm_ShuttleMap.proc_Init(AType: Integer);
begin
	gPopRow := -1;
	gClickRow := -1;

	if gShuttleBrNo = '' then
		proc_BtnEnabled(False, 'ReadOnly') //조회버튼만 활성화
	else
		proc_BtnEnabled(True, 'Clear'); //버튼 초기화
	
	btn_Save.Enabled := false;
	cxgDepotListColumn2.Options.Editing := False;	
	bEditing := cxgDepotListColumn2.Options.Editing;

	cxgDepotList.DataController.SetRecordCount(0);
	Try
		ExecuteJavaScript(webNaverMap,'RemovePoiMark();');
	except
	End;
	Try
		ExecuteJavaScript(webNaverMap,'RemoveShuttleMK();');
	except
	End;
	Try
		ExecuteJavaScript(webNaverMap,'setArray();');
	except
	End;

end;

procedure Tfrm_ShuttleMap.proc_LineDelete;
var sParam, sMsg : string;
	XmlData, ErrMsg : string;
	ErrCode : integer;
begin
//3.노선삭제 col06  MNG.SET_ROUTE_DELETE
//request :  노선코드

//response : 성공,실패 (기존그대로)
  if (gLineCode.Count = 0) and (cbLine.ItemIndex < 0) then
	begin
		exit;
	end;
	Try
		if cbLine.ItemIndex = -1 then exit;
		sParam := '';
		sParam :=  gLineCode[cbLine.ItemIndex];

		sMsg := '[' + cbLine.Text + '] 노선을 삭제하시겠습니까?';
		if Application.MessageBox(PChar(sMsg), '[노선삭제]', MB_YESNO +	MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
		begin
			if not RequestBase(GetCallable06('SET_ROUTE_DELETE', 'MNG.SET_ROUTE_DELETE', sParam), XmlData, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('노선삭제 시 오류가 발생하였습니다.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				exit;
			end;
			btnShSch.Click;
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_ShuttleMap.proc_LineSave;
var sHdNo, sBrNo, sParam : string;
	XmlData, ErrMsg : string;
	ErrCode, iDx : integer;
begin
//3.노선저장 col06  MNG.SET_ROUTE_SAVE
//request : 본사코드, 지사코드, 노선코드(신규는 빈값),노선명,노선안내 내용 
//response : 성공,실패 (기존그대로)
	try
		if Trim(edt_AddLine.Text) = '' then
		begin
			GMessagebox('노선명을 입력하세요.', CDMSE);
			edt_AddLine.SetFocus;
			exit;
		end;
	
		sHdNo := GT_SEL_BRNO.HDNO;
		sBrNo := gShuttleBrNo;          //GT_SEL_BRNO.BrNo;//

		sParam := '';
		sParam := sHdNo + '│' + sBrNo + '│' + '' + '│' + edt_AddLine.Text + '│' + '';

		if not RequestBase(GetCallable06('SET_ROUTE_SAVE', 'MNG.SET_ROUTE_SAVE', sParam), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('노선저장 시 오류가 발생하였습니다.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			lb_LineNotice.Caption := '노선저장 시 오류가 발생하였습니다';
			exit;
		end;

		lb_LineNotice.Caption := '노선이 저장되었습니다.';
//		btn_AddLine.Click;
		btnShSch.Click;

		iDx := cbLine.Properties.Items.IndexOf(edt_AddLine.text);
		cbLine.ItemIndex := iDx ;

	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_ShuttleMap.proc_LineSearch(ASraechType : string);
var XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	j : integer;
begin
//4.노선정류장조회 sel06   MNG.GET_SH_STOP_LIST
// request : 노선코드
// response :  1.정류장순번 2.정류장명 3.X 4.Y 
	try
		slLon.Clear;
		slLat.Clear;
		slDepot.clear;
		slDeCode.Clear;

		slList := TStringList.Create;
		try
			Param := gLineCode[cbLine.ItemIndex];
			if not RequestBasePaging(GetSel06('GET_SH_STOP_LIST', 'MNG.GET_SH_STOP_LIST', '100', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('노선정류장조회 결과 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				FreeAndNil(slList);
				Exit;
			end;

			xdom := ComsDomDocument.Create;
			try
				Frm_Flash.cxPBar1.Properties.Max := slList.Count;
				Frm_Flash.cxPBar1.Position := 0;
				for j := 0 to slList.Count - 1 do
				begin
					Frm_Flash.cxPBar1.Position := j + 1;
					Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
					Application.ProcessMessages;
					xmlData := slList.Strings[j];
					xdom.loadXML(XmlData);

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

									slDeCode.Add(ls_Rcrd[0]);
									slDepot .Add(ls_Rcrd[1]);
									slLat   .Add(ls_Rcrd[2]);
									slLon   .Add(ls_Rcrd[3]);
								end;
							finally
								ls_Rcrd.Free;
							end;
						end;
					end;
				end;
			finally
				xdom := Nil;
				cxgDepotList.DataController.SetRecordCount(0);
				Try
					ExecuteJavaScript(webNaverMap,'RemovePoiMark();');
					if slLat.Count > 0 then
					begin

						Try
							ExecuteJavaScript(webNaverMap,'setArray();');
						except
						End;
						
						setDepotPoiMark(slLat, slLon, slDepot, slDeCode);

						cxgDepotList.BeginUpdate;
						for I := 0 to slDepot.Count - 1 do
						begin
							iRow := cxgDepotList.DataController.AppendRecord;
							cxgDepotList.DataController.Values[iRow, 0] := iRow+1;
							cxgDepotList.DataController.Values[iRow, 1] := slDepot[i];
							cxgDepotList.DataController.Values[iRow, 2] := slLat[i];
							cxgDepotList.DataController.Values[iRow, 3] := slLon[i];
							cxgDepotList.DataController.Values[iRow, 4] := slDeCode[i];
						end;
						cxgDepotList.EndUpdate;	
					end
					else 
					begin
						if (Area_CenterLat = '0') or (Area_CenterLon = '0') or (Area_CenterLat = '') or (Area_CenterLon = '') then
							proc_MoveCenter('37.565612', '126.978013', '7') //서울시청
						else
							proc_MoveCenter(SetWGS84(Area_CenterLat), SetWGS84(Area_CenterLon), '7');
					end;

					if ASraechType <> 'All' then
					begin
//						cxgDepotList.Controller.TopRowIndex := StrToIntDef(ASraechType,0);
            cxGridDepot.SetFocus;
						cxgDepotList.DataController.FocusedRecordIndex := StrToIntDef(ASraechType,0);
						cxgDepotList.Controller.FocusedItemIndex := 1;
//						cxgDepotListCellClick(cxgDepotList, cxgDepotList.Items[1].FocusedCellViewInfo, mbLeft,[ssLeft], gHandled);     //셀클릭
						cxgDepotListCellDblClick(cxgDepotList, cxgDepotList.Items[1].FocusedCellViewInfo, mbLeft,[ssLeft], gHandled);    //셀더블클릭
					end;	
					gPopRow := -1;
				except
				End;
			end;
		finally
			Frm_Flash.hide;    
			Screen.Cursor := crDefault;
			FreeAndNil(slList);
		end;
	except
		on E: Exception do
		begin
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
	end;

	
end;

procedure Tfrm_ShuttleMap.proc_MoveCenter(ALat, ALon, ALeavel: string);
begin
	Try
		ExecuteJavaScript(webNaverMap,'CenterMove('+ALat+','+ALon+','+ALeavel+');');
	except

	End;
end;

procedure Tfrm_ShuttleMap.webNaverMapDocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
	if (pDisp = CurDispatch) then
  begin
		webNaverMap.Visible := True;
		bWebLoading := True;
    CurDispatch := nil;
	end;
end;

procedure Tfrm_ShuttleMap.webNaverMapNavigateComplete2(ASender: TObject;
	const pDisp: IDispatch; const URL: OleVariant);
begin
	if CurDispatch = nil then
     CurDispatch := pDisp; { save for comparison }
end;

end.

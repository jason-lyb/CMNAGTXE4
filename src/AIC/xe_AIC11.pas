unit xe_AIC11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2010Blue,
	Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, Vcl.ExtCtrls, cxGroupBox,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxCheckBox, cxCurrencyEdit, cxGridLevel,
	cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, MSXML2_TLB, ComObj,
  cxGridCustomView, cxGrid, dxBarBuiltInMenu, cxPC, dxGDIPlusClasses, cxImage,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxMaskEdit, dxSkinDevExpressStyle, cxSplitter, cxGridBandedTableView, dxSkinOffice2010Silver, dxSkinSharp, dxDateRanges, dxSkinMetropolisDark,
  dxSkinOffice2007Silver, dxScrollbarAnnotations;

type
  Tfrm_AIC11 = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    pnl_Main: TPanel;
    cxGroupBox1: TcxGroupBox;
    Shape1: TShape;
    lblSosokNameA1: TcxLabel;
    btnSearchA1: TcxButton;
    cxLabel54: TcxLabel;
    btn_Add: TcxButton;
    btn_Update: TcxButton;
    btn_Delete: TcxButton;
    chk_All: TcxCheckBox;
    cxGridAI1: TcxGrid;
    cxGridAI_HCallList1: TcxGridDBTableView;
    cxGridAI_HCallList1Column0: TcxGridDBColumn;
    cxGridAI_HCallList1Column1: TcxGridDBColumn;
    cxGridAI_HCallList1Column2: TcxGridDBColumn;
    cxGridAI_HCallList1Column3: TcxGridDBColumn;
    cxGridAI_HCallList1Column4: TcxGridDBColumn;
    cxGridAI_HCallList1Column5: TcxGridDBColumn;
    cxGridAI_HCallList1Column6: TcxGridDBColumn;
    cxGridAI_HCallList1Column7: TcxGridDBColumn;
    cxGridAI_HCallList1Column8: TcxGridDBColumn;
    cxGridAI_HCallList1Column9: TcxGridDBColumn;
    cxGridAI_HCallList1Column10: TcxGridDBColumn;
    cxGridAI_HCallList1Column11: TcxGridDBColumn;
    cxGridAI_HCallList1Column12: TcxGridDBColumn;
    cxGridAI_HCallList1Column13: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxGridAI2: TcxGrid;
    cxGridAI_HCallList2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridAI_HCallList2Column2: TcxGridDBColumn;
		cxGridAI_HCallList2Column3: TcxGridDBColumn;
    cxGridAI_HCallList2Column1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridAI_HCallList2Column4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    pnl_Main2: TPanel;
    cxGroupBox2: TcxGroupBox;
    Shape2: TShape;
    lblSosokNameA2: TcxLabel;
    btnSearchA2: TcxButton;
    cxLabel19: TcxLabel;
    Shape4: TShape;
    cxLabel18: TcxLabel;
    cb_ScenarioA2: TcxComboBox;
    cb_KeyNumberA2: TcxComboBox;
    cxLabel22: TcxLabel;
    Shape3: TShape;
    Shape5: TShape;
    cxDtStartA1: TcxDateEdit;
    cxDtEndA1: TcxDateEdit;
    cxLabel75: TcxLabel;
    btn_KeyNumber: TcxButton;
    cxLabel23: TcxLabel;
    Shape81: TShape;
    edt_Slip: TcxTextEdit;
    cxLabel24: TcxLabel;
    btnDateA1: TcxButton;
    pop_dateA1: TPopupMenu;
    MiToday: TMenuItem;
    MiYesterday: TMenuItem;
    MiOneWeek: TMenuItem;
    MiOneMonth: TMenuItem;
    MiStartMonth: TMenuItem;
    btnExcelA2: TcxButton;
    pnl_Main3: TPanel;
    cxGroupBox3: TcxGroupBox;
    Shape6: TShape;
    Shape8: TShape;
    Shape9: TShape;
    lblSosokNameA3: TcxLabel;
    btnSearchA3: TcxButton;
    cxLabel3: TcxLabel;
    cb_KeyNumberA3: TcxComboBox;
    cxLabel5: TcxLabel;
    cxDtStartA2: TcxDateEdit;
    cxDtEndA2: TcxDateEdit;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    btnDateA2: TcxButton;
    btnExcelA3: TcxButton;
    cxGrid1: TcxGrid;
    cxGridAI2_HCallList1: TcxGridBandedTableView;
    cxGridBandedColumn22: TcxGridBandedColumn;
    cxGridBandedColumn23: TcxGridBandedColumn;
    cxGridBandedColumn24: TcxGridBandedColumn;
    cxGridBandedColumn25: TcxGridBandedColumn;
    cxGridBandedColumn26: TcxGridBandedColumn;
    cxGridBandedColumn27: TcxGridBandedColumn;
    cxGridBandedColumn28: TcxGridBandedColumn;
    cxGridBandedColumn29: TcxGridBandedColumn;
    cxGridBandedColumn30: TcxGridBandedColumn;
    cxGridBandedColumn31: TcxGridBandedColumn;
    cxGridBandedColumn32: TcxGridBandedColumn;
    cxGridBandedColumn33: TcxGridBandedColumn;
    cxGridBandedColumn34: TcxGridBandedColumn;
    cxGridBandedColumn35: TcxGridBandedColumn;
    cxGridBandedColumn39: TcxGridBandedColumn;
    cxGridBandedColumn40: TcxGridBandedColumn;
    cxGridBandedColumn41: TcxGridBandedColumn;
    cxGridLevel3: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridAI3_HCallList1: TcxGridBandedTableView;
    cxGridAI3_HCallList1Column1: TcxGridBandedColumn;
    cxGridAI3_HCallList1Column2: TcxGridBandedColumn;
    cxGridAI3_HCallList1Column3: TcxGridBandedColumn;
    cxGridAI3_HCallList1Column4: TcxGridBandedColumn;
    cxGridAI3_HCallList1Column5: TcxGridBandedColumn;
    cxGridAI3_HCallList1Column12: TcxGridBandedColumn;
    cxGridAI3_HCallList1Column13: TcxGridBandedColumn;
    cxGridAI3_HCallList1Column14: TcxGridBandedColumn;
    cxGridAI3_HCallList1Column15: TcxGridBandedColumn;
    cxGridAI3_HCallList1Column16: TcxGridBandedColumn;
    cxGridAI3_HCallList1Column17: TcxGridBandedColumn;
    cxGridAI3_HCallList1Column18: TcxGridBandedColumn;
    cxGridAI3_HCallList1Column19: TcxGridBandedColumn;
    cxGridAI3_HCallList1Column20: TcxGridBandedColumn;
    cxGridLevel9: TcxGridLevel;
    cxGridAI_HCallList2Column5: TcxGridDBColumn;
    cxGridAI_HCallList2Column6: TcxGridDBColumn;
    cxGridAI2_HCallList1Column2: TcxGridBandedColumn;
    cxGridAI2_HCallList1Column3: TcxGridBandedColumn;
    cxGridAI2_HCallList1Column4: TcxGridBandedColumn;
    pnl_KeyNumberList: TPanel;
    Panel14: TPanel;
    btn_Close2: TcxButton;
    cxGrid3: TcxGrid;
    cxGridAI_List3: TcxGridDBTableView;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    Shape7: TShape;
    cxGroupBox4: TcxGroupBox;
    cxLabel9: TcxLabel;
    Shape10: TShape;
    cxGroupBox5: TcxGroupBox;
    Shape11: TShape;
    lb_Scenario_Detail: TcxLabel;
    Shape49: TShape;
    Shape12: TShape;
    Shape13: TShape;
		procedure btn_AddClick(Sender: TObject);
		procedure btnSearchA1Click(Sender: TObject);
		procedure FormCreate(Sender: TObject);
		procedure FormClose(Sender: TObject; var Action: TCloseAction);
		procedure chk_AllClick(Sender: TObject);
		procedure cxGridAI_HCallList1Column0PropertiesEditValueChanged(Sender: TObject);
		procedure cxGridAI_HCallList1CellClick(Sender: TcxCustomGridTableView;
			ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
			AShift: TShiftState; var AHandled: Boolean);
		procedure FormDestroy(Sender: TObject);
		procedure btn_DeleteClick(Sender: TObject);
		procedure btn_DownloadClick(Sender: TObject);
    procedure btn_KeyNumberClick(Sender: TObject);
		procedure MiTodayClick(Sender: TObject);
		procedure btnSearchA2Click(Sender: TObject);
    procedure cxGridAI2_HCallList1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGridAI_HCallList1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure btnExcelA2Click(Sender: TObject);
    procedure btnExcelA3Click(Sender: TObject);
    procedure btnSearchA3Click(Sender: TObject);
		procedure cxGridAI2_HCallList1CellDblClick(Sender: TcxCustomGridTableView;
			ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
			AShift: TShiftState; var AHandled: Boolean);
		procedure cxGridAI_HCallList1CellDblClick(Sender: TcxCustomGridTableView;
			ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
			AShift: TShiftState; var AHandled: Boolean);
		procedure cxGridAI2_HCallList1Bands0HeaderClick(Sender: TObject);
    procedure cxGridAI2_HCallList1Bands2HeaderClick(Sender: TObject);
    procedure cxGridAI2_HCallList1Bands3HeaderClick(Sender: TObject);
    procedure cxGridAI2_HCallList1Bands4HeaderClick(Sender: TObject);
    procedure cxGridAI2_HCallList1Bands5HeaderClick(Sender: TObject);
    procedure cxGridAI2_HCallList1Bands6HeaderClick(Sender: TObject);
    procedure cxGridAI2_HCallList1Bands7HeaderClick(Sender: TObject);
    procedure cxGridAI2_HCallList1Bands10HeaderClick(Sender: TObject);
    procedure cxGridAI2_HCallList1Bands14HeaderClick(Sender: TObject);
    procedure cxGridAI2_HCallList1Bands15HeaderClick(Sender: TObject);
    procedure cxGridAI2_HCallList1Bands16HeaderClick(Sender: TObject);
    procedure cxGridAI2_HCallList1Bands12HeaderClick(Sender: TObject);
    procedure cxGridAI2_HCallList1Bands18HeaderClick(Sender: TObject);
    procedure cxGridAI2_HCallList1Bands19HeaderClick(Sender: TObject);
    procedure cxGridAI2_HCallList1Bands20HeaderClick(Sender: TObject);
    procedure cxGridAI2_HCallList1Bands21HeaderClick(Sender: TObject);
    procedure cxGridAI2_HCallList1Bands22HeaderClick(Sender: TObject);
    procedure cxGridAI3_HCallList1Bands0HeaderClick(Sender: TObject);
    procedure cxGridAI3_HCallList1Bands2HeaderClick(Sender: TObject);
    procedure cxGridAI3_HCallList1Bands3HeaderClick(Sender: TObject);
    procedure cxGridAI3_HCallList1Bands4HeaderClick(Sender: TObject);
    procedure cxGridAI3_HCallList1Bands6HeaderClick(Sender: TObject);
    procedure cxGridAI3_HCallList1Bands7HeaderClick(Sender: TObject);
    procedure cxGridAI3_HCallList1Bands8HeaderClick(Sender: TObject);
    procedure cxGridAI3_HCallList1Bands9HeaderClick(Sender: TObject);
    procedure cxGridAI3_HCallList1Bands12HeaderClick(Sender: TObject);
    procedure cxGridAI3_HCallList1Bands13HeaderClick(Sender: TObject);
    procedure cxGridAI3_HCallList1Bands14HeaderClick(Sender: TObject);
    procedure cxGridAI3_HCallList1Bands15HeaderClick(Sender: TObject);
    procedure cxGridAI3_HCallList1Bands16HeaderClick(Sender: TObject);
    procedure btn_Close2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
	private
		{ Private declarations }
		gFKeyNumer, gF070KeyNumer: TStringList;
		gBrNo : string;
		gIndex : Integer;
		procedure proc_Init;
		function func_BasicScenario:Boolean;
		procedure proc_BtnEnable(ABool : Boolean);
		function func_ScenarioDelete(ABrNo, AKeyNumber, AScenario : string):Boolean;
		function func_GetAIOBKeyNumber(ABrNo:string):Boolean;
		function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
		procedure proc_GridSorted(AView:TcxGridBandedTableView; ACol : integer);
	public
		{ Public declarations }
		gFScenarioNo, gFScenarioNM : TStringList;

		procedure proc_BrNameSet;
	end;

var
	frm_AIC11: Tfrm_AIC11;

implementation

{$R *.dfm}

uses xe_AIC02, xe_gnl, xe_gnl3, xe_Lib, xe_packet, xe_Func, xe_Msg, xe_Xml , xe_AIC10,
  xe_AIC09, Main, xe_Flash, xe_AIC12, xe_AIC13;

procedure Tfrm_AIC11.btnExcelA3Click(Sender: TObject);
begin
	if cxGridAI3_HCallList1.DataController.RecordCount = 0 then
  begin
		GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
	begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
		Exit;
  end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[정산메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

	Frm_Main.sgExcel := 'AI-OB 해피콜 일별현황.xls';
	Frm_Main.sgRpExcel := Format('회사>AI-OB 해피콜 일별현황]%s건', [GetMoneyStr(cxGridAI3_HCallList1.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := cxGrid2;
	Frm_Main.bgExcelOPT := False;
	Frm_Main.proc_excel(0);
end;

procedure Tfrm_AIC11.btnSearchA1Click(Sender: TObject);
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i, j : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
begin
	SetDebugeWrite('Tfrm_AIC11.btnSearchA1Click');
	try
		cxGridAI_HCallList1.DataController.SetRecordCount(0);
		cxGridAI_HCallList2.DataController.SetRecordCount(0);

		if GT_SEL_BRNO.GUBUN <> '1' then
		begin
			GMessagebox(PChar('좌측지사를 선택하십시오.'), CDMSI);
			Exit;
		end;

		if ( GT_USERIF.LV = '60' ) then
			Param := GT_SEL_BRNO.BrNo
		else
			Param := GT_USERIF.BR;

		if not GetAIOouBoundYN(Param) then
		begin
			Exit;
		end;

		if TCK_USER_PER.AIC_HappyCallSet <> '1' then  // 회사 : AI-OB 해피콜 설정
		begin
			ShowMessage('[AI-OB 해피콜 설정] 권한이 없습니다.'+#13#10+'관리자에게 문의(권한요청) 바랍니다.' +#13#10+#13#10
								+ '권한항목 >> 회사 : AI-OB 해피콜 설정');
			Exit;
		end;

		Screen.Cursor := crHourGlass;
		btnSearchA1.Enabled := False;
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel06('GET_BD_LIST', 'AI_OB_MNG.GET_HC_LIST', '1000', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('해피콜 시나리오 설정 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
				Screen.Cursor := crDefault;
				btnSearchA1.Enabled := True;
				proc_BtnEnable(True);
				Exit;
			end;

			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
  		cxGridAI_HCallList1.DataController.SetRecordCount(0);
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
							cxGridAI_HCallList1.BeginUpdate;
							ls_Rcrd := TStringList.Create;
							try
								for i := 0 to lst_Result.length - 1 do
								begin
									GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
									Application.ProcessMessages;

									iRow := cxGridAI_HCallList1.DataController.AppendRecord; // 1 Record 추가
									//B100│(주)콜마너│00000000│HC01│해피콜(기본)│y│1030│1200│30│2│월,화,수,목,금,토,일│n
									cxGridAI_HCallList1.DataController.Values[iRow, 0] := false;                   //선택
									cxGridAI_HCallList1.DataController.Values[iRow, 1] := IntToStr(iRow+1);        //순번
									cxGridAI_HCallList1.DataController.Values[iRow, 2] := ls_Rcrd[1];              //지사명
									if ls_Rcrd[2] = '00000000' then                                              
										cxGridAI_HCallList1.DataController.Values[iRow, 3] := '' else
										cxGridAI_HCallList1.DataController.Values[iRow, 3] := StrToCall(ls_Rcrd[2]); //대표번호	
									cxGridAI_HCallList1.DataController.Values[iRow, 4] := ls_Rcrd[3];              //시나리오코드 
									cxGridAI_HCallList1.DataController.Values[iRow, 5] := ls_Rcrd[4];              //시나리오명 
									if ls_Rcrd[5] = 'y' then                                                       //사용유무
									cxGridAI_HCallList1.DataController.Values[iRow, 6] := '사용' else cxGridAI_HCallList1.DataController.Values[iRow, 6] := '미사용';
									cxGridAI_HCallList1.DataController.Values[iRow, 7] := copy(ls_Rcrd[6],1,2) + ':' + copy(ls_Rcrd[6],3,2);              //콜시작시간 
									cxGridAI_HCallList1.DataController.Values[iRow, 8] := copy(ls_Rcrd[7],1,2) + ':' + copy(ls_Rcrd[7],3,2);              //콜종료시간 
									cxGridAI_HCallList1.DataController.Values[iRow, 9] := ls_Rcrd[8];              //실패재연결시간
									cxGridAI_HCallList1.DataController.Values[iRow,10] := ls_Rcrd[9];              //실패재연결횟수 
									cxGridAI_HCallList1.DataController.Values[iRow,11] := ls_Rcrd[0];              //지사코드
									cxGridAI_HCallList1.DataController.Values[iRow,12] := ls_Rcrd[10];             //콜요청요일
									if ls_Rcrd[11] = 'y' then
									cxGridAI_HCallList1.DataController.Values[iRow,13] := '사용' else cxGridAI_HCallList1.DataController.Values[iRow,13] := '미사용';
								end;
							finally
								ls_Rcrd.Free;
							end;
							cxGridAI_HCallList1.EndUpdate;
						end;
					end;
					if (cxGridAI_HCallList1.DataController.RowCount > 0) and (cxGridAI_HCallList1.DataController.Values[0, 3] = '') then //지사단독설정
					begin
						btn_Add.Enabled := True;
						btn_Update.Enabled := True;
						btn_Delete.Enabled := True;
					end else
          if cxGridAI_HCallList1.DataController.RowCount = 0 then //설정이 없으면
					begin
						btn_Add.Enabled := True;
						btn_Update.Enabled := False;
						btn_Delete.Enabled := False;
					end else
					begin
						btn_Add.Enabled := True;
						btn_Update.Enabled := True;
						btn_Delete.Enabled := True;
					end;
				finally
					xdom := Nil;
				end;
			end;
		finally
			Frm_Flash.hide;
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			btnSearchA1.Enabled := True;
			proc_BtnEnable(True);
		end;
	except
    on E: Exception do
		begin
			Assert(False, E.Message);
		end;
  end;
end;

procedure Tfrm_AIC11.btn_AddClick(Sender: TObject);
var iTag, iRow, iCol, iTmp : integer;
	sGubun, sBrNo, sBrNm, sKey, sScenarioNo, sScenarioNm, sUse, sSTime, sETime, 
	sFailTime, sFailCnt, sBasicUse, sCallDay, sHolyDay : string;
begin
	SetDebugeWrite('Tfrm_AIC11.btn_AddClick');
	Try
		if not GetAIOouBoundYN(GT_SEL_BRNO.BrNo) then	Exit;

		if TCK_USER_PER.AIC_HappyCallSet <> '1' then  // 회사 : AI-OB 해피콜 설정
		begin
			ShowMessage('[AI-OB 해피콜 설정] 권한이 없습니다.'+#13#10+'관리자에게 문의(권한요청) 바랍니다.' +#13#10+#13#10
								+ '권한항목 >> 회사 : AI-OB 해피콜 설정');
			Exit;
		end;

		iTag := TcxButton(Sender).tag;
		if iTag = 1 then
		begin
			iRow := cxGridAI_HCallList1.DataController.FocusedRecordIndex;
      if iRow < 0 then Exit;

			iCol := cxGridAI_HCallList1.GetColumnByFieldName('지사코드').Index;
			sBrNo := cxGridAI_HCallList1.DataController.Values[iRow, iCol];
			iCol := cxGridAI_HCallList1.GetColumnByFieldName('지사명').Index;
			sBrNm := cxGridAI_HCallList1.DataController.Values[iRow, iCol];
			iCol := cxGridAI_HCallList1.GetColumnByFieldName('대표번호').Index;
			sKey := CallToStr(cxGridAI_HCallList1.DataController.Values[iRow, iCol]);
			iCol := cxGridAI_HCallList1.GetColumnByFieldName('시나리오코드').Index;
			sScenarioNo := cxGridAI_HCallList1.DataController.Values[iRow, iCol];
			iCol := cxGridAI_HCallList1.GetColumnByFieldName('시나리오명').Index;
			sScenarioNm := cxGridAI_HCallList1.DataController.Values[iRow, iCol];
			iCol := cxGridAI_HCallList1.GetColumnByFieldName('사용').Index;
			sUse := cxGridAI_HCallList1.DataController.Values[iRow, iCol];
			iCol := cxGridAI_HCallList1.GetColumnByFieldName('콜시작시간').Index;
			sSTime := cxGridAI_HCallList1.DataController.Values[iRow, iCol];
			iCol := cxGridAI_HCallList1.GetColumnByFieldName('콜종료시간').Index;
			sETime := cxGridAI_HCallList1.DataController.Values[iRow, iCol];
			iCol := cxGridAI_HCallList1.GetColumnByFieldName('실패재연결시간').Index;
			sFailTime := cxGridAI_HCallList1.DataController.Values[iRow, iCol];
			iCol := cxGridAI_HCallList1.GetColumnByFieldName('실패재연결횟수').Index;
			sFailCnt := cxGridAI_HCallList1.DataController.Values[iRow, iCol];
			iCol := cxGridAI_HCallList1.GetColumnByFieldName('지사코드').Index;
			sBasicUse := cxGridAI_HCallList1.DataController.Values[iRow, iCol];
			iCol := cxGridAI_HCallList1.GetColumnByFieldName('콜요청요일').Index;
			sCallDay := cxGridAI_HCallList1.DataController.Values[iRow, iCol];
			iCol := cxGridAI_HCallList1.GetColumnByFieldName('공유일콜').Index;
			sHolyDay := cxGridAI_HCallList1.DataController.Values[iRow, iCol];
		end;
//		if sKey = '' then sGubun := '0' else sGubun := '1'; //0:지사설정, 1: 대표번호설정 ,2 : 완전신규
		iCol := cxGridAI_HCallList1.GetColumnByFieldName('대표번호').Index;
		if (cxGridAI_HCallList1.DataController.RowCount = 0) then sGubun := '2' else
		if cxGridAI_HCallList1.DataController.Values[0, iCol] = '' then sGubun := '0' else sGubun := '1';
		
		if (iTag = 0) or (iTag = 1) then
		begin
			iRow := cxGridAI_HCallList1.DataController.FocusedRecordIndex;
			if (iRow < 0) and (iTag = 1) then 
			begin
				GMessagebox('선택된 지사가 없습니다.', CDMSI);
				Exit;
			end;
			
			if ( Not Assigned(Frm_AIC12) ) Or ( Frm_AIC12 = Nil ) then 
				Frm_AIC12 := TFrm_AIC12.Create(Nil);
			Frm_AIC12.proc_Init;
			Frm_AIC12.giType := StrToIntDef(sGubun,0);  //0:지사설정, 1: 대표번호설정, 2 : 완전신규
			Frm_AIC12.Tag := iTag;
			Frm_AIC12.Hint := gBrNo;
			Frm_AIC12.cb_Keynumber.Properties.Items.Clear;
			Frm_AIC12.cb_Keynumber.Properties.Items.Assign(gFKeyNumer);
			Frm_AIC12.cb_KeyNumber.ItemIndex := -1;
			Frm_AIC12.cb_Gubun.Enabled := False;
			if iTag = 0 then //신규추가
			begin
				Frm_AIC12.gSaveGubun := 'i'; //i insert u update
				Frm_AIC12.cb_Scenario.Tag := 99; 
				Frm_AIC12.cb_Scenario.Properties.Items.Clear;
				Frm_AIC12.cb_Scenario.Properties.Items.Assign(gFScenarioNm);
				Frm_AIC12.cb_Scenario.Tag := 0; 
				Frm_AIC12.cb_Scenario.ItemIndex := 0;
				Frm_AIC12.lb_AIListNAme.Caption := ' AI-OB 해피콜 시나리오 설정(신규)';
				if sGubun = '0' then Frm_AIC12.lb_AIListNAme.Caption := ' AI-OB 해피콜 시나리오 설정(신규)-지사별' else
				if sGubun = '1' then Frm_AIC12.lb_AIListNAme.Caption := ' AI-OB 해피콜 시나리오 설정(신규)-대표번호별';

				if sGubun = '2' then  //0:지사설정
				begin
					Frm_AIC12.cb_Gubun.Enabled := True;
				end;
				Frm_AIC12.cb_Gubun.ItemIndex := StrToIntDef(sGubun,0); //0:지사설정, 1: 대표번호설정, 2 : 완전신규
				Frm_AIC12.Show;
				Frm_AIC12.dt_STime.SetFocus;			
			end else
			if iTag = 1 then //수정
			begin
				Frm_AIC12.gSaveGubun := 'u'; //i insert u update
				Frm_AIC12.cb_Gubun.ItemIndex := StrToIntDef(sGubun,0); //0:지사설정, 1: 대표번호설정, 2 : 완전신규
				Frm_AIC12.cb_Scenario.Tag := 99;
				Frm_AIC12.cb_Scenario.Properties.Items.Clear;
				Frm_AIC12.cb_Scenario.Properties.Items.Add(sScenarioNm);
				Frm_AIC12.gScenario := sScenarioNo;
				Frm_AIC12.cb_Scenario.ItemIndex := 0;
				Frm_AIC12.cb_Scenario.Tag := 0;
				Frm_AIC12.proc_ScenarioList('Update', sKey, sScenarioNo);

				Frm_AIC12.lb_AIListNAme.Caption := sScenarioNm + ' AI-OB 해피콜 시나리오 설정';
				Frm_AIC12.cb_Gubun.ItemIndex := StrToIntDef(sGubun,0); //0:지사설정, 1: 대표번호설정, 2 : 완전신규

				Frm_AIC12.cb_KeyNumber.Tag := 99;
				iTmp := gFKeyNumer.indexOf(sKey);
				Frm_AIC12.cb_KeyNumber.Properties.Items.Clear;
				if iTmp > -1 then
				begin
					Frm_AIC12.cb_KeyNumber.Properties.Items.Add(sKey);
					Frm_AIC12.cb_KeyNumber.ItemIndex := 0;
				end;
				Frm_AIC12.cb_KeyNumber.Tag := 0;
				Frm_AIC12.cb_KeyNumber.Enabled := False;

				Frm_AIC12.dt_STime.Text := sSTime;			
				Frm_AIC12.dt_ETime.Text := sETime;
				Frm_AIC12.edt_FailReConnectTime.Text := sFailTime;
				Frm_AIC12.edt_FailReConnectCnt.Text := sFailCnt;

				if sUse = '사용' then Frm_AIC12.cb_Use.ItemIndex := 0 else Frm_AIC12.cb_Use.ItemIndex := 1;

				iTmp := Pos('월', sCallDay);	if iTmp > 0 then Frm_AIC12.chk_Mon.Checked := True; 
				iTmp := Pos('화', sCallDay);	if iTmp > 0 then Frm_AIC12.chk_Tue.Checked := True; 
				iTmp := Pos('수', sCallDay);	if iTmp > 0 then Frm_AIC12.chk_Wed.Checked := True; 
				iTmp := Pos('목', sCallDay);	if iTmp > 0 then Frm_AIC12.chk_Thu.Checked := True; 
				iTmp := Pos('금', sCallDay);	if iTmp > 0 then Frm_AIC12.chk_Fri.Checked := True; 
				iTmp := Pos('토', sCallDay);	if iTmp > 0 then Frm_AIC12.chk_Sat.Checked := True; 
				iTmp := Pos('일', sCallDay);	if iTmp > 0 then Frm_AIC12.chk_Sun.Checked := True; 
				
				if sHolyDay = '사용' then Frm_AIC12.chk_Holy.Checked := True else Frm_AIC12.chk_Holy.Checked := False;
				
				Frm_AIC12.Show;
				Frm_AIC12.dt_STime.SetFocus;			
			end;
		end;
	except
  End;
end;

procedure Tfrm_AIC11.btn_Close2Click(Sender: TObject);
begin
	pnl_KeyNumberList.Visible := False;
end;

procedure Tfrm_AIC11.btn_DeleteClick(Sender: TObject);
var I, iCheckCol, iCol, iKey : integer;
	sScenarioNo, sKey, sMsg : string;
	slTmp1, slTmp2 : TStringList;
begin
	SetDebugeWrite('Tfrm_AIC11.btn_DeleteClick');
	Try
		if not GetAIOouBoundYN(GT_SEL_BRNO.BrNo) then	Exit;
		if TCK_USER_PER.AIC_HappyCallSet <> '1' then  // 회사 : AI-OB 해피콜 설정
		begin
			ShowMessage('[AI-OB 해피콜 설정] 권한이 없습니다.'+#13#10+'관리자에게 문의(권한요청) 바랍니다.' +#13#10+#13#10
								+ '권한항목 >> 회사 : AI-OB 해피콜 설정');
			Exit;
		end;

		sMsg := '선택하신 시나리오를 삭제하시겠습니까?';
		if Application.MessageBox(PChar(sMsg), CDMSI, MB_YESNO +	MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
		begin
			iCheckCol := cxGridAI_HCallList1.GetColumnByFieldName('').Index;
			iCol := cxGridAI_HCallList1.GetColumnByFieldName('시나리오코드').Index;
			iKey := cxGridAI_HCallList1.GetColumnByFieldName('대표번호').Index;
			slTmp1 := TStringList.create;
			slTmp2 := TStringList.create;
			Try
				for I := 0 to cxGridAI_HCallList1.DataController.RecordCount - 1 do
				begin	
					if cxGridAI_HCallList1.ViewData.Records[I].Values[iCheckCol] then
					begin
						slTmp1.Add(cxGridAI_HCallList1.DataController.Values[I, iCol]);
						slTmp2.Add(CallToStr(cxGridAI_HCallList1.DataController.Values[I, iKey]));
					end;
				end;
				for I := 0 to slTmp1.Count - 1 do
				begin	
					sScenarioNo := slTmp1[i];
					sKey := slTmp2[i];
					if Not func_ScenarioDelete(gBrNo, sKey, sScenarioNo) then Break;
				end;
			Finally
				slTmp1.Free;
				slTmp2.Free;
			End;
			btnSearchA1.Click;
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_AIC11.btn_DownloadClick(Sender: TObject);
  procedure RunDownload;
  var
    IE: Variant;
  begin
    try
      IE := CreateOleObject('InternetExplorer.Application');

      IE.height := 100;
      IE.width := 100;
      IE.left := 0;
      IE.top := 0;

      IE.MenuBar := False;
      IE.AddressBar := True;
      IE.Resizable := False;
      IE.StatusBar := False;
      IE.ToolBar := False;
      IE.Silent := false;

      sleep(1);

			IE.Navigate('http://www.callmaner.com/download/콜마너_음성인식OB신청서.zip');
      IE.Visible := True;

      Application.ProcessMessages;
      sleep(1);
    except on E: Exception do
			GMessagebox(Format('신청서 다운로드 시 오류(Err: %s)가 발생하였습니다.'#13#10
												+ '(다시시도 바랍니다.)' , [E.Message]), CDMSI);
		end;
  end;
begin
	RunDownload;
end;

procedure Tfrm_AIC11.btn_KeyNumberClick(Sender: TObject);
var i, iRow : integer;
begin
	SetDebugeWrite('Tfrm_AIC11.btn_KeyNumberClick');
	Try
		if TCK_USER_PER.AIC_HappyCallSet <> '1' then  // 회사 : AI-OB 해피콜 설정
		begin
			ShowMessage('[AI-OB 해피콜 설정] 권한이 없습니다.'+#13#10+'관리자에게 문의(권한요청) 바랍니다.' +#13#10+#13#10
								+ '권한항목 >> 회사 : AI-OB 해피콜 설정');
			Exit;
		end;
		
		cxGridAI_List3.DataController.SetRecordCount(0);
		cxGridAI_List3.BeginUpdate;
		for I := 0 to gFKeyNumer.Count -1 do
		begin
			iRow := cxGridAI_List3.DataController.AppendRecord;
			cxGridAI_List3.DataController.Values[iRow, 0] := IntToStr(iRow+1); 
			cxGridAI_List3.DataController.Values[iRow, 1] := gFKeyNumer[i];
			cxGridAI_List3.DataController.Values[iRow, 2] := gF070KeyNumer[i];
		end;
		cxGridAI_List3.EndUpdate;

		pnl_KeyNumberList.Top := 84;
		pnl_KeyNumberList.Left := 665;
		pnl_KeyNumberList.Visible := True;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_AIC11.chk_AllClick(Sender: TObject);
var
	i, iCol: Integer;
begin
	iCol := cxGridAI_HCallList1.GetColumnByFieldName('').Index;

	cxGridAI_HCallList1.DataController.BeginUpdate;
	try
		for I := 0 to cxGridAI_HCallList1.DataController.RecordCount - 1 do
		begin
			cxGridAI_HCallList1.DataController.Values[I, iCol] := chk_All.Checked;
		end;
  finally
		cxGridAI_HCallList1.DataController.EndUpdate;
  end;
end;

procedure Tfrm_AIC11.btnSearchA2Click(Sender: TObject);
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i, j : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	sTmp : string;
begin
	SetDebugeWrite('Tfrm_AIC11.btnSearchA2Click');
	Try
		cxGridAI2_HCallList1.DataController.SetRecordCount(0);

		if GT_SEL_BRNO.GUBUN <> '1' then
		begin
			GMessagebox(PChar('좌측지사를 선택하십시오.'), CDMSI);
			Exit;
		end;

		Param := FormatDateTime('YYYYMMDD', cxDtStartA1.Date);
		Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtEndA1.Date);

		if ( GT_USERIF.LV = '60' ) then
		begin
			Param := Param + '│' + GT_SEL_BRNO.BrNo;
			sTmp := GT_SEL_BRNO.BrNo;
		end	else
		begin
			Param := Param + '│' + GT_USERIF.BR;
			sTmp := GT_USERIF.BR;
		end;

		if cb_KeyNumberA2.ItemIndex = 0 then	
			Param := Param + '│' + ''
		else
			Param := Param + '│' + CallToStr(cb_KeyNumberA2.Text);

		if cb_ScenarioA2.ItemIndex = 0 then	    //전체
			Param := Param + '│' + ''
		else
			Param := Param + '│' + gFScenarioNo[cb_ScenarioA2.ItemIndex-1];     //전체문구때문
		
		Param := Param + '│' + Trim(edt_Slip.text);

		if not GetAIOouBoundYN(sTmp) then	Exit;

		if TCK_USER_PER.AIC_HappyCallDetailList <> '1' then  // 회사 : AI-OB 해피콜 상세내역
		begin
			ShowMessage('[AI-OB 해피콜 상세내역] 권한이 없습니다.'+#13#10+'관리자에게 문의(권한요청) 바랍니다.' +#13#10+#13#10
								+ '권한항목 >> 회사 : AI-OB 해피콜 상세내역');
			Exit;
		end;

		Screen.Cursor := crHourGlass;
		btnSearchA2.Enabled := False;
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel06('GET_HC_SEARCH_LIST', 'AI_OB_MNG.GET_HC_SEARCH_LIST', '1000', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('해피콜 상세내역 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
				Screen.Cursor := crDefault;
				btnSearchA2.Enabled := True;
				Exit;
			end;

			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
  		cxGridAI2_HCallList1.DataController.SetRecordCount(0);
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
							cxGridAI2_HCallList1.BeginUpdate;
							ls_Rcrd := TStringList.Create;
							try
								for i := 0 to lst_Result.length - 1 do
								begin
									GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
									Application.ProcessMessages;

									iRow := cxGridAI2_HCallList1.DataController.AppendRecord; // 1 Record 추가
								  //지사코드|지사명|대표번호|날짜|접수번호|고객번호 |고객명 |고객구분 |시나리오코드|시나리오명 |
								  //완료고객 | 취소고객 | 문의고객 | 총OB콜수 | 문자수신처리 | No-시나리오완료 |통화중연결종료 | 전화안받음| 차감캐쉬
									cxGridAI2_HCallList1.DataController.Values[iRow, 0] := IntToStr(iRow+1);
									cxGridAI2_HCallList1.DataController.Values[iRow, 1] := ls_Rcrd[0];            //지사코드
									cxGridAI2_HCallList1.DataController.Values[iRow, 2] := ls_Rcrd[1];            //지사명	
									cxGridAI2_HCallList1.DataController.Values[iRow, 3] := StrToCall(ls_Rcrd[2]); //대표번호
									cxGridAI2_HCallList1.DataController.Values[iRow, 4] := ls_Rcrd[3];            //날짜
									cxGridAI2_HCallList1.DataController.Values[iRow, 5] := ls_Rcrd[4];            //접수번호
									cxGridAI2_HCallList1.DataController.Values[iRow, 6] := StrToCall(ls_Rcrd[5]); //고객번호
									cxGridAI2_HCallList1.DataController.Values[iRow, 7] := ls_Rcrd[6];            //고객명
									cxGridAI2_HCallList1.DataController.Values[iRow, 8] := ls_Rcrd[7];            //고객구분
									cxGridAI2_HCallList1.DataController.Values[iRow, 9] := ls_Rcrd[8];            //시나리오코드
									cxGridAI2_HCallList1.DataController.Values[iRow,10] := ls_Rcrd[9];            //시나리오명
									cxGridAI2_HCallList1.DataController.Values[iRow,11] := StrToIntDef(ls_Rcrd[10],0);           //완료고객
									cxGridAI2_HCallList1.DataController.Values[iRow,12] := StrToIntDef(ls_Rcrd[11],0);           //취소고객
									cxGridAI2_HCallList1.DataController.Values[iRow,13] := StrToIntDef(ls_Rcrd[12],0);           //문의고객
									cxGridAI2_HCallList1.DataController.Values[iRow,14] := StrToIntDef(ls_Rcrd[13],0);           //총OB콜수
									cxGridAI2_HCallList1.DataController.Values[iRow,15] := StrToIntDef(ls_Rcrd[14],0);           //문자수신처리
									cxGridAI2_HCallList1.DataController.Values[iRow,16] := StrToIntDef(ls_Rcrd[15],0);           //No-시나리오완료(정상종료콜수)
									cxGridAI2_HCallList1.DataController.Values[iRow,17] := StrToIntDef(ls_Rcrd[16],0);           //통화중연결종료
									cxGridAI2_HCallList1.DataController.Values[iRow,18] := StrToIntDef(ls_Rcrd[17],0);           //전화안받음
									cxGridAI2_HCallList1.DataController.Values[iRow,19] := StrToIntDef(ls_Rcrd[18],0);           //차감캐쉬
								end;
							finally
								ls_Rcrd.Free;
							end;
							cxGridAI2_HCallList1.EndUpdate;
						end;
					end;
				finally
					xdom := Nil;
				end;
			end;
		finally
			Frm_Flash.hide;
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			btnSearchA2.Enabled := True;
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_AIC11.btnSearchA3Click(Sender: TObject);
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i, j, iSCnt, iFCnt : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	slList, ls_Rcrd : TStringList;
	sTmp : string;
begin
	SetDebugeWrite('Tfrm_AIC11.btnSearchA3Click');
	Try
		cxGridAI3_HCallList1.DataController.SetRecordCount(0);

		if GT_SEL_BRNO.GUBUN <> '1' then
		begin
			GMessagebox(PChar('좌측지사를 선택하십시오.'), CDMSI);
			Exit;
		end;

		if TCK_USER_PER.AIC_HappyCallDayTOT <> '1' then  // 회사 : AI-OB 해피콜 일별현황
		begin
			ShowMessage('[AI-OB 해피콜 일별현황] 권한이 없습니다.'+#13#10+'관리자에게 문의(권한요청) 바랍니다.' +#13#10+#13#10
								+ '권한항목 >> 회사 : AI-OB 해피콜 일별현황');
			Exit;
		end;

		Param := FormatDateTime('YYYYMMDD', cxDtStartA2.Date);
		Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtEndA2.Date);

		if ( GT_USERIF.LV = '60' ) then
		begin
			Param := Param + '│' + GT_SEL_BRNO.BrNo;
			sTmp := GT_SEL_BRNO.BrNo;
		end	else
		begin
			Param := Param + '│' + GT_USERIF.BR;
			sTmp := GT_USERIF.BR;
		end;

		if cb_KeyNumberA3.ItemIndex = 0 then	
			Param := Param + '│' + ''
		else
			Param := Param + '│' + CallToStr(cb_KeyNumberA3.Text);

		if not GetAIOouBoundYN(sTmp) then	Exit;

		Screen.Cursor := crHourGlass;
		btnSearchA3.Enabled := False;
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel06('GET_BD_DAY_LIST', 'AI_OB_MNG.GET_HC_DAY_LIST', '1000', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('해피콜 상세내역 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
				Screen.Cursor := crDefault;
				btnSearchA3.Enabled := True;
				Exit;
			end;

			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			cxGridAI3_HCallList1.DataController.SetRecordCount(0);
			for j := 0 to slList.Count - 1 do
			begin
				Frm_Flash.cxPBar1.Position := j + 1;
				Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
				Application.ProcessMessages;
				xmlData := slList.Strings[j];
				xdom := ComsDomDocument.Create;
				try
					if not xdom.loadXML(XmlData) then Exit;
					iSCnt :=0; iFCnt := 0;
					ls_MSG_Err := GetXmlErrorCode(XmlData);
					if ('0000' = ls_MSG_Err) then
					begin
						if (0 < GetXmlRecordCount(XmlData)) then
						begin
							lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
							cxGridAI3_HCallList1.BeginUpdate;
							ls_Rcrd := TStringList.Create;
							try
								for i := 0 to lst_Result.length - 1 do
								begin
									GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
									Application.ProcessMessages;

									iRow := cxGridAI3_HCallList1.DataController.AppendRecord; // 1 Record 추가
								  //지사코드 | 지사명 | 대표번호 | 날짜 | 완료고객 | 취소고객 | 문의고객 | 총OB콜수 |
								  //문자수신처리 | No-시나리오완료 | 통화중연결종료 | 전화안받음 | 차감캐쉬
									cxGridAI3_HCallList1.DataController.Values[iRow, 0] := IntToStr(iRow+1);
									cxGridAI3_HCallList1.DataController.Values[iRow, 1] := ls_Rcrd[0];            //지사코드
									cxGridAI3_HCallList1.DataController.Values[iRow, 2] := ls_Rcrd[1];            //지사명	
									cxGridAI3_HCallList1.DataController.Values[iRow, 3] := StrToCall(ls_Rcrd[2]); //대표번호
									cxGridAI3_HCallList1.DataController.Values[iRow, 4] := ls_Rcrd[3];            //날짜
									cxGridAI3_HCallList1.DataController.Values[iRow, 5] := ls_Rcrd[4];            //완료고객
									cxGridAI3_HCallList1.DataController.Values[iRow, 6] := ls_Rcrd[5];            //취소고객
									cxGridAI3_HCallList1.DataController.Values[iRow, 7] := ls_Rcrd[6];            //문의고객
									cxGridAI3_HCallList1.DataController.Values[iRow, 8] := ls_Rcrd[7];            //총OB콜수
									cxGridAI3_HCallList1.DataController.Values[iRow, 9] := ls_Rcrd[8];            //문자수신처리
									cxGridAI3_HCallList1.DataController.Values[iRow,10] := ls_Rcrd[9];            //No-시나리오완료
									cxGridAI3_HCallList1.DataController.Values[iRow,11] := ls_Rcrd[10];           //통화중연결종료
									cxGridAI3_HCallList1.DataController.Values[iRow,12] := ls_Rcrd[11];           //전화안받음
									cxGridAI3_HCallList1.DataController.Values[iRow,13] := ls_Rcrd[12];           //차감캐쉬
								end;
							finally
								ls_Rcrd.Free;
							end;
							cxGridAI3_HCallList1.EndUpdate;
						end;
					end;
				finally
					xdom := Nil;
				end;
			end;
		finally
			Frm_Flash.hide;
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			btnSearchA3.Enabled := True;
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_AIC11.btnExcelA2Click(Sender: TObject);
begin
	if cxGridAI2_HCallList1.DataController.RecordCount = 0 then
  begin
		GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
	begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
		Exit;
  end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
		ShowMessage('[엑셀다운로드[정산메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

	Frm_Main.sgExcel := 'AI-OB 해피콜 상세내역.xls';
	Frm_Main.sgRpExcel := Format('회사>AI-OB 해피콜 상세내역]%s건', [GetMoneyStr(cxGridAI2_HCallList1.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := cxGrid1;
	Frm_Main.bgExcelOPT := False;
	Frm_Main.proc_excel(0);
end;

procedure Tfrm_AIC11.cxGridAI2_HCallList1Bands0HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_HCallList1, 0);
end;

procedure Tfrm_AIC11.cxGridAI2_HCallList1Bands10HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_HCallList1, 10);
end;

procedure Tfrm_AIC11.cxGridAI2_HCallList1Bands12HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_HCallList1, 14);
end;

procedure Tfrm_AIC11.cxGridAI2_HCallList1Bands14HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_HCallList1, 11);
end;

procedure Tfrm_AIC11.cxGridAI2_HCallList1Bands15HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_HCallList1, 12);
end;

procedure Tfrm_AIC11.cxGridAI2_HCallList1Bands16HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_HCallList1, 13);
end;

procedure Tfrm_AIC11.cxGridAI2_HCallList1Bands18HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_HCallList1, 15);
end;

procedure Tfrm_AIC11.cxGridAI2_HCallList1Bands19HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_HCallList1, 16);
end;

procedure Tfrm_AIC11.cxGridAI2_HCallList1Bands20HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_HCallList1, 17);
end;

procedure Tfrm_AIC11.cxGridAI2_HCallList1Bands21HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_HCallList1, 18);
end;

procedure Tfrm_AIC11.cxGridAI2_HCallList1Bands22HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_HCallList1, 19);
end;

procedure Tfrm_AIC11.cxGridAI2_HCallList1Bands2HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_HCallList1, 2);
end;

procedure Tfrm_AIC11.cxGridAI2_HCallList1Bands3HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_HCallList1, 3);
end;

procedure Tfrm_AIC11.cxGridAI2_HCallList1Bands4HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_HCallList1, 4);
end;

procedure Tfrm_AIC11.cxGridAI2_HCallList1Bands5HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_HCallList1, 5);
end;

procedure Tfrm_AIC11.cxGridAI2_HCallList1Bands6HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_HCallList1, 6);
end;

procedure Tfrm_AIC11.cxGridAI2_HCallList1Bands7HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_HCallList1, 7);
end;

procedure Tfrm_AIC11.cxGridAI2_HCallList1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var 	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i, iCol, iSCol : Integer;
	xdom: msDomDocument;
	sSlip, sScenarioNo : string;
	iSlip, iAccTime : integer;
	sAccTime : string;
	iCheck : Boolean;
begin
	SetDebugeWrite('Tfrm_AIC11.cxGridAI2_HCallList1CellDblClick');
	Try
		iRow := cxGridAI2_HCallList1.DataController.FocusedRecordIndex;
		iSlip := 5;
		sSlip := cxGridAI2_HCallList1.DataController.Values[iRow, iSlip];
		iSCol := ACellViewInfo.Item.FocusedCellViewInfo.Item.Index;

		if iSCol = iSlip then
		begin 
			iCheck := False;
			for I := 0 to JON03_MAX_CNT - 1 do
			begin
				if Frm_Main.JON03MNG[i].Use then
				begin
					 iCheck := True;
				end;
			end;

			if Not iCheck then Frm_Main.procMainMenuCreateActive(200);

			iAccTime    := 4;//cxGridAI2_HCallList1.GetColumnByFieldName('리콜일시').Index;
			sAccTime := cxGridAI2_HCallList1.DataController.Values[iRow,iAccTime];
			if sSlip = '' then exit;
			Frm_Main.AcceptFromCreate(sSlip, sAccTime, '조회', GI_JON03_LastFromIdx);
		end else
		begin
			if ( Not Assigned(Frm_AIC13) ) Or ( Frm_AIC13 = Nil ) then 
				Frm_AIC13 := TFrm_AIC13.Create(Nil);
			Frm_AIC13.proc_Init;

			iCol := 9;//cxGridAI2_HCallList1.GetColumnByFieldName('시나리오코드').Index;
			sScenarioNo := cxGridAI2_HCallList1.DataController.Values[iRow, iCol];
		
			Param := sSlip + '│' + sScenarioNo;

			if not RequestBase(GetSel06('GET_SCN_LIST', 'AI_OB_MNG.GET_BD_SEARCH_DETAIL_LIST', '1000', Param), XmlData, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('해피콜 세부내역 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
				Exit;
			end;
			xdom := ComsDomDocument.Create;
			Frm_AIC13.cxGridAI2_List2.DataController.SetRecordCount(0);
			Frm_AIC13.cxGridAI2_List3.DataController.SetRecordCount(0);
			try
				if not xdom.loadXML(XmlData) then Exit;
				ls_MSG_Err := GetXmlErrorCode(XmlData);
				if ('0000' = ls_MSG_Err) then
				begin
					if (0 < GetXmlRecordCount(XmlData)) then
					begin
						Frm_AIC13.proc_Get_List(XmlData);
					end;
				end;
			finally
				xdom := Nil;
				Frm_AIC13.Show;
			end;
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_AIC11.cxGridAI2_HCallList1ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	gIndex := AColumn.Index;
end;

procedure Tfrm_AIC11.cxGridAI3_HCallList1Bands0HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_HCallList1, 0);
end;

procedure Tfrm_AIC11.cxGridAI3_HCallList1Bands12HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_HCallList1, 9);
end;

procedure Tfrm_AIC11.cxGridAI3_HCallList1Bands13HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_HCallList1, 10);
end;

procedure Tfrm_AIC11.cxGridAI3_HCallList1Bands14HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_HCallList1, 11);
end;

procedure Tfrm_AIC11.cxGridAI3_HCallList1Bands15HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_HCallList1, 12);
end;

procedure Tfrm_AIC11.cxGridAI3_HCallList1Bands16HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_HCallList1, 13);
end;

procedure Tfrm_AIC11.cxGridAI3_HCallList1Bands2HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_HCallList1, 2);
end;

procedure Tfrm_AIC11.cxGridAI3_HCallList1Bands3HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_HCallList1, 3);
end;

procedure Tfrm_AIC11.cxGridAI3_HCallList1Bands4HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_HCallList1, 4);
end;

procedure Tfrm_AIC11.cxGridAI3_HCallList1Bands6HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_HCallList1, 5);
end;

procedure Tfrm_AIC11.cxGridAI3_HCallList1Bands7HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_HCallList1, 6);
end;

procedure Tfrm_AIC11.cxGridAI3_HCallList1Bands8HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_HCallList1, 7);
end;

procedure Tfrm_AIC11.cxGridAI3_HCallList1Bands9HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_HCallList1, 8);
end;

procedure Tfrm_AIC11.cxGridAI_HCallList1CellClick(Sender: TcxCustomGridTableView;
	ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
	AShift: TShiftState; var AHandled: Boolean);
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i, iCol : Integer;
  xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
	sScenarioNo, sScenarioNm, sKeyNumber, sBrNo : string;
begin
	SetDebugeWrite('Tfrm_AIC11.cxGridAI_HCallList1CellClick');
	Try
		iRow := cxGridAI_HCallList1.DataController.FocusedRecordIndex;

		iCol := cxGridAI_HCallList1.GetColumnByFieldName('지사코드').Index;
		sBrNo := cxGridAI_HCallList1.DataController.Values[iRow, iCol];
		iCol := cxGridAI_HCallList1.GetColumnByFieldName('대표번호').Index;
		sKeyNumber := CallToStr(cxGridAI_HCallList1.DataController.Values[iRow, iCol]);
		iCol := cxGridAI_HCallList1.GetColumnByFieldName('시나리오코드').Index;
		sScenarioNo := cxGridAI_HCallList1.DataController.Values[iRow, iCol];
		iCol := cxGridAI_HCallList1.GetColumnByFieldName('시나리오명').Index;
		sScenarioNm := cxGridAI_HCallList1.DataController.Values[iRow, iCol];
		
		lb_Scenario_Detail.Caption := sScenarioNm + ' 시나리오 상세 내역';
		Param := sBrNo + '│' + sKeyNumber + '│' + sScenarioNo;

		if not RequestBase(GetSel06('GET_SCN_LIST', 'AI_OB_MNG.GET_SCN_LIST', '10', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('해피콜 시나리오 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Exit;
		end;

		xdom := ComsDomDocument.Create;
		cxGridAI_HCallList2.DataController.SetRecordCount(0);
		try
			try
				if not xdom.loadXML(XmlData) then Exit;
				ls_MSG_Err := GetXmlErrorCode(XmlData);
				if ('0000' = ls_MSG_Err) then
				begin
					if (0 < GetXmlRecordCount(XmlData)) then
					begin
						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
						cxGridAI_HCallList2.BeginUpdate;
						ls_Rcrd := TStringList.Create;
						try
							for i := 0 to lst_Result.length - 1 do
							begin
								GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
								Application.ProcessMessages;
							  // 0지사코드 │ 1대표번호 │ 2시나리오코드 │ 3STEP │ 4STEP명 │ 5SEQ │ 6사용유무(y/n) │7안내메시지 │ 8답변메시지
							  //"B100│00000000│HC01│FIRST│시작│1│y│안녕하세요. %지사명% 대리운전 입니다.│││"/>
								iRow := cxGridAI_HCallList2.DataController.AppendRecord; // 1 Record 추가

								cxGridAI_HCallList2.DataController.Values[iRow, 0] := ls_Rcrd[5]; //순번
								cxGridAI_HCallList2.DataController.Values[iRow, 1] := ls_Rcrd[4]; //단계
								cxGridAI_HCallList2.DataController.Values[iRow, 2] := ls_Rcrd[7]; //안내메세지
								cxGridAI_HCallList2.DataController.Values[iRow, 3] := ls_Rcrd[8]; //답변메세지
								cxGridAI_HCallList2.DataController.Values[iRow, 4] := ls_Rcrd[9]; //SMS메세지

								if ls_Rcrd[10] = 'y' then                                     //	SMS전송여부
									cxGridAI_HCallList2.DataController.Values[iRow, 5] := '사용' else cxGridAI_HCallList2.DataController.Values[iRow, 6] := '미사용';
								if ls_Rcrd[6] = 'y' then                                     //	사용유무
									cxGridAI_HCallList2.DataController.Values[iRow, 6] := '사용' else cxGridAI_HCallList2.DataController.Values[iRow, 6] := '미사용';
								cxGridAI_HCallList2.DataController.Values[iRow, 7] := ls_Rcrd[0]; //지사코드
								if ls_Rcrd[1] = '00000000' then                              //대표번호	
									cxGridAI_HCallList2.DataController.Values[iRow, 8] := '' else
									cxGridAI_HCallList2.DataController.Values[iRow, 8] := StrToCall(ls_Rcrd[1]);	
								cxGridAI_HCallList2.DataController.Values[iRow, 9] := ls_Rcrd[2]; //시나리오코드
								cxGridAI_HCallList2.DataController.Values[iRow,10] := ls_Rcrd[3]; //step
							end;
						finally
							ls_Rcrd.Free;
						end;
						cxGridAI_HCallList2.EndUpdate;
					end;
				end;
			finally
				xdom := Nil;
			end;
		except
			on E: Exception do
			begin
				Assert(False, E.Message);
			end;
		end;
	except
  End;
end;

procedure Tfrm_AIC11.cxGridAI_HCallList1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
	btn_Update.OnClick(btn_Update);
end;

procedure Tfrm_AIC11.cxGridAI_HCallList1Column0PropertiesEditValueChanged(
  Sender: TObject);
var
	iRow, iCol: Integer;
begin
	iRow := cxGridAI_HCallList1.DataController.FocusedRecordIndex;
	iCol := cxGridAI_HCallList1.GetColumnByFieldName('').Index;
	cxGridAI_HCallList1.DataController.Values[iRow, iCol] := not cxGridAI_HCallList1.DataController.Values[iRow, iCol];
end;

procedure Tfrm_AIC11.cxGridAI_HCallList1ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	gIndex := AColumn.Index;
end;

procedure Tfrm_AIC11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	if Assigned(Frm_AIC12) then Frm_AIC12.Close; 
	if Assigned(Frm_AIC13) then Frm_AIC13.Close; 
	if Assigned(Frm_AIC10) then Frm_AIC10.Close; 
		
	FreeAndNil(gFKeyNumer);
	FreeAndNil(gF070KeyNumer);
	
	FreeAndNil(gFScenarioNo);
	FreeAndNil(gFScenarioNM);
	Action := caFree;
end;

procedure Tfrm_AIC11.FormCreate(Sender: TObject);
begin
	proc_Init;	
end;

procedure Tfrm_AIC11.FormDestroy(Sender: TObject);
begin
	frm_AIC11 := Nil;
end;

procedure Tfrm_AIC11.FormShow(Sender: TObject);
begin
  fSetFont(Frm_AIC11, GS_FONTNAME);
end;

function Tfrm_AIC11.func_BasicScenario: Boolean;
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, i : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
begin
	SetDebugeWrite('Tfrm_AIC11.func_BasicScenario');
	try
		Result := False;
		Param := 'HC';
		if not RequestBase(GetSel06('GET_BD_LIST', 'AI_OB_MNG.GET_AI_SCN_LIST', '100', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('해피콜 기본시나리오 리스트 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Exit;
		end;

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
							GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

							gFScenarioNo.Add(ls_Rcrd[0]);
							gFScenarioNM.Add(ls_Rcrd[1]);
						end;
					finally
						ls_Rcrd.Free;
						Result := True;
					end;
				end;
			end;
		finally
			xdom := Nil;
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

function Tfrm_AIC11.func_GetAIOBKeyNumber(ABrNo: string): Boolean;
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, i : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
begin
	SetDebugeWrite('Tfrm_AIC11.func_GetAIOBKeyNumber');
	try
		Result := False;
		Param := ABrNo;

		if not RequestBase(GetSel06('GET_AI_OUT_KEYNUMBER_LIST', 'AI_OB_MNG.GET_AI_OUT_KEYNUMBER_LIST', '1000', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('AI 아웃바운드 설정된 대표번호 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Exit;
		end;

		Result := True;

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
							GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

							gFKeyNumer.Add(ls_Rcrd[0]);
							gF070KeyNumer.Add(ls_Rcrd[1]);
						end;
					finally
						ls_Rcrd.Free;
						Result := True;
					end;
				end;
			end;
		finally
			xdom := Nil;
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_AIC11.proc_BrNameSet;
var
  sName : string;
begin
	SetDebugeWrite('Tfrm_AIC11.proc_BrNameSet');
	Try
		lblSosokNameA1.Caption := GetSosokInfo;
		lblSosokNameA2.Caption := GetSosokInfo;
		lblSosokNameA3.Caption := GetSosokInfo;

		if GT_SEL_BRNO.GUBUN <> '1' then
		begin
			GMessagebox(PChar('좌측지사를 선택하십시오.'), CDMSI);
			proc_BtnEnable(False);
			Exit;
		end;

		try
			gFKeyNumer.Clear;
			gF070KeyNumer.Clear;
			if Not func_GetAIOBKeyNumber(GT_SEL_BRNO.BrNo) then  //AI 아웃바운드 설정된 대표번호 
			begin
			{	for I := 0 to scb_DsBranchCode.Count - 1 do
				begin
					if scb_DsBranchCode[I] = GT_SEL_BRNO.BrNo then
					begin
						if Trim(scb_KeyNumber[I]) <> '' then
							gFKeyNumer.Add(scb_KeyNumber[I]);
					end;
				end;   }
			end;
		except
		end;


		sName := GetSosokInfo;

		proc_BtnEnable(True);

		cb_ScenarioA2.Properties.Items.Clear;
		cb_ScenarioA2.Properties.Items.Assign(gFScenarioNm);
		cb_ScenarioA2.Properties.Items.Insert(0, '전체');
		cb_ScenarioA2.ItemIndex := 0;

		cb_KeynumberA2.Properties.Items.Clear;
		cb_KeynumberA2.Properties.Items.Assign(gFKeyNumer);
		cb_KeynumberA2.Properties.Items.Insert(0, '전체');
		cb_KeynumberA2.ItemIndex := 0;

		cb_KeynumberA3.Properties.Items.Clear;
		cb_KeynumberA3.Properties.Items.Assign(gFKeyNumer);
		cb_KeynumberA3.Properties.Items.Insert(0, '전체');
		cb_KeynumberA3.ItemIndex := 0;

		Case cxPageControl1.ActivePageIndex of
		0 : begin
					btnSearchA1.Click;
				end;
		1 : begin
					btnSearchA2.Click;
				end;
		2 : begin
					btnSearchA3.Click;
				end;
		End;
		gBrNo := GT_SEL_BRNO.BrNo;
	except
	end;
end;

procedure Tfrm_AIC11.proc_BtnEnable(ABool: Boolean);
begin
	btn_Add.Enabled := ABool;
	btn_Update.Enabled := ABool;
	btn_Delete.Enabled := ABool;
	btn_KeyNumber.Enabled := ABool;
end;

procedure Tfrm_AIC11.proc_GridSorted(AView: TcxGridBandedTableView;
  ACol: integer);
begin
	try
		if (AView.Columns[ACol].SortOrder = soNone) or
			(AView.Columns[ACol].SortOrder = soDescending) then
			AView.Columns[ACol].SortOrder := soAscending
		else
			if AView.Columns[ACol].SortOrder = soAscending then
			AView.Columns[ACol].SortOrder := soDescending;
		AView.Columns[ACol].SortIndex := 0;
		AView.DataController.FocusedRowIndex := 0;
		gfSetIndexNo(AView, GS_SortNoChange);
	except
		on e: exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_AIC11.proc_Init;
var  i : integer;
begin
	cxPageControl1.ActivePageIndex := 0;

	cxGridAI_List3.DataController.SetRecordCount(0);
	for i := 0 to cxGridAI_List3.ColumnCount - 1 do
		cxGridAI_List3.Columns[i].DataBinding.ValueType := 'String';
	cxGridAI_List3.Columns[0].DataBinding.ValueType := 'Integer';

	cxGridAI_HCallList1.DataController.SetRecordCount(0);
	for i := 0 to cxGridAI_HCallList1.ColumnCount - 1 do
		cxGridAI_HCallList1.Columns[i].DataBinding.ValueType := 'String';
	cxGridAI_HCallList1.Columns[0].DataBinding.ValueTypeClass := TcxBooleanValueType;
	cxGridAI_HCallList1.Columns[1].DataBinding.ValueType := 'Integer';

	cxGridAI_HCallList2.DataController.SetRecordCount(0);
	for i := 0 to cxGridAI_HCallList2.ColumnCount - 1 do
		cxGridAI_HCallList2.Columns[i].DataBinding.ValueType := 'String';
	cxGridAI_HCallList2.Columns[0].DataBinding.ValueType := 'Integer';

	cxDtStartA1.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
	cxDtEndA1.Date := cxDtStartA1.Date + 1;
	cb_ScenarioA2.properties.items.clear;
	cb_KeyNumberA2.properties.items.clear;
	edt_Slip.Text := '';
	
	cxGridAI2_HCallList1.DataController.SetRecordCount(0);
	for i := 0 to cxGridAI2_HCallList1.ColumnCount - 1 do
		cxGridAI2_HCallList1.Columns[i].DataBinding.ValueType := 'String';
	cxGridAI2_HCallList1.Columns[0].DataBinding.ValueType := 'Integer';
	cxGridAI2_HCallList1.Columns[11].DataBinding.ValueType := 'Currency';
	cxGridAI2_HCallList1.Columns[12].DataBinding.ValueType := 'Currency';
	cxGridAI2_HCallList1.Columns[13].DataBinding.ValueType := 'Currency';
	cxGridAI2_HCallList1.Columns[14].DataBinding.ValueType := 'Currency';
	cxGridAI2_HCallList1.Columns[15].DataBinding.ValueType := 'Currency';
	cxGridAI2_HCallList1.Columns[16].DataBinding.ValueType := 'Currency';
	cxGridAI2_HCallList1.Columns[17].DataBinding.ValueType := 'Currency';
	cxGridAI2_HCallList1.Columns[18].DataBinding.ValueType := 'Currency';
	cxGridAI2_HCallList1.Columns[19].DataBinding.ValueType := 'Currency';

	cxDtEndA2.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
	cxDtStartA2.Date := cxDtEndA2.Date - 14;
	cb_KeyNumberA3.properties.items.clear;

	cxGridAI3_HCallList1.DataController.SetRecordCount(0);

	for i := 0 to cxGridAI3_HCallList1.ColumnCount - 1 do
	begin
		case i of
			0 : cxGridAI3_HCallList1.Columns[i].DataBinding.ValueType := 'Integer';
			1..4 : cxGridAI3_HCallList1.Columns[i].DataBinding.ValueType := 'String';
			else
			begin
				cxGridAI3_HCallList1.Columns[i].DataBinding.ValueType := 'Currency';
			end;
		end;
	end;
	gFKeyNumer := TStringList.Create;
	gF070KeyNumer := TStringList.Create;
	gFScenarioNo := TStringList.Create;
	gFScenarioNM := TStringList.Create;

	if func_BasicScenario then
	begin
		Exit;
	end;
end;

function Tfrm_AIC11.func_ScenarioDelete(ABrNo, AKeyNumber, AScenario : string):Boolean;
var
	XmlData, Param, ErrMsg : string;
	ErrCode : Integer;
begin
	SetDebugeWrite('Tfrm_AIC11.func_ScenarioDelete');
	try
		Result := False;
		Param := '2'; //개별삭제
		Param := Param + '│' + ABrNo;
		Param := Param + '│' + AKeyNumber;
		Param := Param + '│' + AScenario;

		proc_BtnEnable(False);
		if not RequestBase(GetCallable06('SET_BD_SAVE', 'AI_OB_MNG.SET_BD_DELETE', param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('해피콜 설정 삭제 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			proc_BtnEnable(True);
			Exit;
		end;
		proc_BtnEnable(True);
		Result := True;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

function Tfrm_AIC11.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;
	Case cxPageControl1.ActivePageIndex of
  1 : begin
				AStDt := cxDtStartA1;
				AEdDt := cxDtEndA1;
			end;
  2 : begin
				AStDt := cxDtStartA2;
				AEdDt := cxDtEndA2;
			end;
	End;
end;

procedure Tfrm_AIC11.MiTodayClick(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
	case TMenuItem(Sender).Tag of
		0 :
			if GetActiveDateControl(StDt, EdDt) then
				SetDateControl(StDt, EdDt, tdToday);
		1 :
			if GetActiveDateControl(StDt, EdDt) then
				SetDateControl(StDt, EdDt, tdYesterday);
		2 :
			if GetActiveDateControl(StDt, EdDt) then
				SetDateControl(StDt, EdDt, tdOneWeek);
		3 :
			if GetActiveDateControl(StDt, EdDt) then
				SetDateControl(StDt, EdDt, tdOneMonth);
		4 :
			if GetActiveDateControl(StDt, EdDt) then
				SetDateControl(StDt, EdDt, tdStartMonth);
	end;
end;

end.

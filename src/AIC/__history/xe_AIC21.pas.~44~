unit xe_AIC21;

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
  cxMaskEdit, dxSkinDevExpressStyle, cxSplitter, cxGridBandedTableView,
  Vcl.WinXPickers, cxSpinEdit, cxRadioGroup, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  Tfrm_AIC21 = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    pnl_Main: TPanel;
    cxGroupBox1: TcxGroupBox;
    lblSosokNameA1: TcxLabel;
    btnSearchA1: TcxButton;
    cxLabel54: TcxLabel;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    pnl_Main2: TPanel;
    cxGroupBox2: TcxGroupBox;
    lblSosokNameA2: TcxLabel;
    btnSearchA2: TcxButton;
    cb_KeyNumberA2: TcxComboBox;
    cxLabel22: TcxLabel;
    cxDtStartA1: TcxDateEdit;
    cxDtEndA1: TcxDateEdit;
    cxLabel75: TcxLabel;
    cxLabel23: TcxLabel;
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
    lblSosokNameA3: TcxLabel;
    btnSearchA3: TcxButton;
    cb_KeyNumberA3: TcxComboBox;
    cxDtStartA2: TcxDateEdit;
    cxDtEndA2: TcxDateEdit;
    btnDateA2: TcxButton;
    btnExcelA3: TcxButton;
    cxGrid1: TcxGrid;
    cxGridAI2_IBList1: TcxGridBandedTableView;
    cxGridAI2_IBList1Column0: TcxGridBandedColumn;
    cxGridAI2_IBList1Column1: TcxGridBandedColumn;
    cxGridAI2_IBList1Column2: TcxGridBandedColumn;
    cxGridAI2_IBList1Column3: TcxGridBandedColumn;
    cxGridAI2_IBList1Column4: TcxGridBandedColumn;
    cxGridAI2_IBList1Column5: TcxGridBandedColumn;
    cxGridAI2_IBList1Column6: TcxGridBandedColumn;
    cxGridAI2_IBList1Column7: TcxGridBandedColumn;
    cxGridAI2_IBList1Column8: TcxGridBandedColumn;
    cxGridAI2_IBList1Column9: TcxGridBandedColumn;
    cxGridAI2_IBList1Column10: TcxGridBandedColumn;
    cxGridAI2_IBList1Column14: TcxGridBandedColumn;
    cxGridAI2_IBList1Column15: TcxGridBandedColumn;
    cxGridAI2_IBList1Column16: TcxGridBandedColumn;
    cxGridAI2_IBList1Column17: TcxGridBandedColumn;
    cxGridAI2_IBList1Column18: TcxGridBandedColumn;
    cxGridAI2_IBList1Column19: TcxGridBandedColumn;
    cxGridLevel3: TcxGridLevel;
    cxGridAI2_IBList1Column11: TcxGridBandedColumn;
    cxGridAI2_IBList1Column12: TcxGridBandedColumn;
    btn_Update: TcxButton;
    tim_STime: TTimePicker;
    cxLabel53: TcxLabel;
    tim_ETime: TTimePicker;
    cxLabel1: TcxLabel;
    Shape11: TShape;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    edt_HelloBrNm: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    pnl_Radio2: TPanel;
    rdo_2_0: TcxRadioButton;
    rdo_2_1: TcxRadioButton;
    pnl_Radio1: TPanel;
    rdo_1_0: TcxRadioButton;
    rdo_1_1: TcxRadioButton;
    cxLabel13: TcxLabel;
    pnl_Radio3: TPanel;
    rdo_3_0: TcxRadioButton;
    rdo_3_1: TcxRadioButton;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    edt_BasicCash: TcxSpinEdit;
    cxLabel17: TcxLabel;
    edt_AddCash: TcxSpinEdit;
    cxLabel20: TcxLabel;
    pnl_Radio4: TPanel;
    rdo_4_0: TcxRadioButton;
    rdo_4_1: TcxRadioButton;
    cxLabel21: TcxLabel;
    pnl_Radio5: TPanel;
    rdo_5_0: TcxRadioButton;
    rdo_5_1: TcxRadioButton;
    cxLabel25: TcxLabel;
    pnl_Radio6: TPanel;
    rdo_6_0: TcxRadioButton;
    rdo_6_1: TcxRadioButton;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    btn_AIScenarioDown: TcxButton;
    cxGridAI2_IBList1Column20: TcxGridBandedColumn;
    cxGridAI2_IBList1Column21: TcxGridBandedColumn;
    cxGridAI2_IBList1Column22: TcxGridBandedColumn;
    cxGridAI2_IBList1Column23: TcxGridBandedColumn;
    cxGridAI2_IBList1Column24: TcxGridBandedColumn;
    cxGridAI2_IBList1Column25: TcxGridBandedColumn;
    cxGridAI2_IBList1Column26: TcxGridBandedColumn;
    cxGridAI2_IBList1Column27: TcxGridBandedColumn;
    cxGridAI2_IBList1Column28: TcxGridBandedColumn;
    cxGrid2: TcxGrid;
    cxGridAI3_IBList1: TcxGridBandedTableView;
    cxGridBandedColumn0: TcxGridBandedColumn;
    cxGridBandedColumn1: TcxGridBandedColumn;
    cxGridBandedColumn2: TcxGridBandedColumn;
    cxGridBandedColumn3: TcxGridBandedColumn;
    cxGridBandedColumn4: TcxGridBandedColumn;
    cxGridBandedColumn5: TcxGridBandedColumn;
    cxGridBandedColumn6: TcxGridBandedColumn;
    cxGridBandedColumn7: TcxGridBandedColumn;
    cxGridBandedColumn8: TcxGridBandedColumn;
    cxGridBandedColumn9: TcxGridBandedColumn;
    cxGridBandedColumn10: TcxGridBandedColumn;
    cxGridBandedColumn11: TcxGridBandedColumn;
    cxGridBandedColumn12: TcxGridBandedColumn;
    cxGridBandedColumn13: TcxGridBandedColumn;
    cxGridBandedColumn14: TcxGridBandedColumn;
    cxGridBandedColumn15: TcxGridBandedColumn;
    cxGridBandedColumn16: TcxGridBandedColumn;
    cxGridBandedColumn17: TcxGridBandedColumn;
    cxGridBandedColumn18: TcxGridBandedColumn;
    cxGridBandedColumn19: TcxGridBandedColumn;
    cxGridBandedColumn20: TcxGridBandedColumn;
    cxGridBandedColumn21: TcxGridBandedColumn;
    cxGridBandedColumn22: TcxGridBandedColumn;
    cxGridBandedColumn23: TcxGridBandedColumn;
    cxGridBandedColumn24: TcxGridBandedColumn;
    cxGridBandedColumn25: TcxGridBandedColumn;
    cxGridBandedColumn26: TcxGridBandedColumn;
    cxGridBandedColumn27: TcxGridBandedColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridAI3_IBList1Column1: TcxGridBandedColumn;
    cxGroupBox4: TcxGroupBox;
    Shape4: TShape;
    Shape21: TShape;
    Shape22: TShape;
    Shape1: TShape;
    Shape7: TShape;
    Shape10: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    cxLabel18: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    cxTabSheet4: TcxTabSheet;
    pnl_Main4: TPanel;
    Shape2: TShape;
    cxGrid3: TcxGrid;
    cxGridAI4_IBList1: TcxGridBandedTableView;
    cxGridBandedColumn28: TcxGridBandedColumn;
    cxGridBandedColumn29: TcxGridBandedColumn;
    cxGridBandedColumn30: TcxGridBandedColumn;
    cxGridBandedColumn31: TcxGridBandedColumn;
    cxGridBandedColumn32: TcxGridBandedColumn;
    cxGridBandedColumn33: TcxGridBandedColumn;
    cxGridBandedColumn34: TcxGridBandedColumn;
    cxGridBandedColumn35: TcxGridBandedColumn;
    cxGridBandedColumn36: TcxGridBandedColumn;
    cxGridBandedColumn37: TcxGridBandedColumn;
    cxGridBandedColumn38: TcxGridBandedColumn;
    cxGridBandedColumn39: TcxGridBandedColumn;
    cxGridBandedColumn40: TcxGridBandedColumn;
    cxGridBandedColumn41: TcxGridBandedColumn;
    cxGridLevel2: TcxGridLevel;
    cxGroupBox5: TcxGroupBox;
    lblSosokNameA4: TcxLabel;
    btnSearchA4: TcxButton;
    cb_KeyNumberA4: TcxComboBox;
    cxLabel31: TcxLabel;
    cxDtStartA3: TcxDateEdit;
    cxDtEndA3: TcxDateEdit;
    cxLabel32: TcxLabel;
    cxLabel33: TcxLabel;
    edt_Slip3: TcxTextEdit;
    cxLabel34: TcxLabel;
    btnDateA3: TcxButton;
    btnExcelA4: TcxButton;
    cxLabel35: TcxLabel;
		procedure btnSearchA1Click(Sender: TObject);
		procedure FormCreate(Sender: TObject);
		procedure FormClose(Sender: TObject; var Action: TCloseAction);
		procedure FormDestroy(Sender: TObject);
		procedure btn_InfoClick(Sender: TObject);
    procedure btn_KeyNumberClick(Sender: TObject);
		procedure MiTodayClick(Sender: TObject);
		procedure btnSearchA2Click(Sender: TObject);
    procedure cxGridAI2_IBList1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGridAI_HCallList1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure btnExcelA2Click(Sender: TObject);
    procedure btnExcelA3Click(Sender: TObject);
    procedure btnSearchA3Click(Sender: TObject);
		procedure cxGridAI2_IBList1CellDblClick(Sender: TcxCustomGridTableView;
			ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
			AShift: TShiftState; var AHandled: Boolean);
		procedure cxGridAI_HCallList1CellDblClick(Sender: TcxCustomGridTableView;
			ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
			AShift: TShiftState; var AHandled: Boolean);
		procedure cxGridAI2_IBList1Bands0HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands2HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands3HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands4HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands5HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands6HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands7HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands10HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands14HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands15HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands16HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands12HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands18HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands19HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands22HeaderClick(Sender: TObject);
    procedure cxGridAI3_IBList1Bands0HeaderClick(Sender: TObject);
    procedure cxGridAI3_IBList1Bands2HeaderClick(Sender: TObject);
    procedure cxGridAI3_IBList1Bands3HeaderClick(Sender: TObject);
    procedure cxGridAI3_IBList1Bands4HeaderClick(Sender: TObject);
    procedure cxGridAI3_IBList1Bands6HeaderClick(Sender: TObject);
    procedure cxGridAI3_IBList1Bands7HeaderClick(Sender: TObject);
    procedure cxGridAI3_IBList1Bands8HeaderClick(Sender: TObject);
    procedure cxGridAI3_IBList1Bands9HeaderClick(Sender: TObject);
    procedure cxGridAI3_IBList1Bands12HeaderClick(Sender: TObject);
    procedure cxGridAI3_IBList1Bands13HeaderClick(Sender: TObject);
    procedure cxGridAI3_IBList1Bands14HeaderClick(Sender: TObject);
    procedure cxGridAI3_IBList1Bands15HeaderClick(Sender: TObject);
    procedure cxGridAI3_IBList1Bands16HeaderClick(Sender: TObject);
    procedure btn_UpdateClick(Sender: TObject);
    procedure btn_AIScenarioDownClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands8HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands9HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands11HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands17HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands23HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands24HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands25HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands27HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands28HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands29HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands30HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands31HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands32HeaderClick(Sender: TObject);
    procedure cxGridAI2_IBList1Bands33HeaderClick(Sender: TObject);
    procedure cxGridAI3_IBList1Bands5HeaderClick(Sender: TObject);
    procedure cxGridAI3_IBList1Bands10HeaderClick(Sender: TObject);
    procedure cxGridAI3_IBList1Bands11HeaderClick(Sender: TObject);
    procedure cxGridAI3_IBList1Bands17HeaderClick(Sender: TObject);
    procedure cxGridAI3_IBList1Bands18HeaderClick(Sender: TObject);
    procedure cxGridAI3_IBList1Bands20HeaderClick(Sender: TObject);
    procedure cxGridAI3_IBList1Bands21HeaderClick(Sender: TObject);
    procedure cxGridAI3_IBList1Bands22HeaderClick(Sender: TObject);
    procedure cxGridAI3_IBList1Bands24SetStoredPropertyValue(
      Sender: TcxGridBand; const AName: string; const AValue: Variant);
    procedure cxGridAI3_IBList1Bands25SetStoredPropertyValue(
      Sender: TcxGridBand; const AName: string; const AValue: Variant);
    procedure cxGridAI3_IBList1Bands26SetStoredPropertyValue(
      Sender: TcxGridBand; const AName: string; const AValue: Variant);
    procedure cxGridAI3_IBList1Bands27SetStoredPropertyValue(
      Sender: TcxGridBand; const AName: string; const AValue: Variant);
    procedure cxGridAI3_IBList1Bands28SetStoredPropertyValue(
      Sender: TcxGridBand; const AName: string; const AValue: Variant);
    procedure cxGridAI3_IBList1Bands29SetStoredPropertyValue(
      Sender: TcxGridBand; const AName: string; const AValue: Variant);
    procedure cxGridAI3_IBList1Bands30SetStoredPropertyValue(
      Sender: TcxGridBand; const AName: string; const AValue: Variant);
    procedure FormShow(Sender: TObject);
    procedure btnSearchA4Click(Sender: TObject);
    procedure cxGridAI4_IBList1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
	private
		{ Private declarations }
		gFKeyNumer, gF070KeyNumer: TStringList;
		gBrNo : string;
		gIndex : Integer;
		procedure proc_Init;
		function func_BasicScenario:Boolean;
		procedure proc_BtnEnable(ABool : Boolean);
		function func_ScenarioDelete(ABrNo, AKeyNumber, AScenario : string):Boolean;
		function func_GetAIIBKeyNumber(ABrNo:string):Boolean;
		function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
		procedure proc_GridSorted(AView:TcxGridBandedTableView; ACol : integer);
	public
		{ Public declarations }
		gFScenarioNo, gFScenarioNM : TStringList;

		procedure proc_BrNameSet;
	end;

var
	frm_AIC21: Tfrm_AIC21;

implementation

{$R *.dfm}

uses xe_AIC02, xe_gnl, xe_gnl3, xe_Lib, xe_packet, xe_Func, xe_Msg, xe_Xml , xe_AIC10,
  xe_AIC09, Main, xe_Flash, xe_JON08;

procedure Tfrm_AIC21.btnExcelA3Click(Sender: TObject);
begin
	if cxGridAI3_IBList1.DataController.RecordCount = 0 then
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

	Frm_Main.sgExcel := 'AI-iB 인바운드 일별현황.xls';
	Frm_Main.sgRpExcel := Format('회사>AI-iB 인바운드 일별현황]%s건', [GetMoneyStr(cxGridAI3_IBList1.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := cxGrid2;
	Frm_Main.bgExcelOPT := False;
	Frm_Main.proc_excel(0);
end;

procedure Tfrm_AIC21.btnSearchA1Click(Sender: TObject);
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, i, j : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
begin
	SetDebugeWrite('Tfrm_AIC21.btnSearchA1Click');
	try

		if GT_SEL_BRNO.GUBUN <> '1' then
		begin
			GMessagebox(PChar('좌측지사를 선택하십시오.'), CDMSI);
			Exit;
		end;

		if ( GT_USERIF.LV = '60' ) then
			Param := GT_SEL_BRNO.BrNo
		else
			Param := GT_USERIF.BR;

//		if not GetAIOouBoundYN(Param) then
//		begin
//			Exit;
//		end;

		if TCK_USER_PER.AIC_IBCallSet <> '1' then  // 회사 : AI-OB 해피콜 설정
		begin
			ShowMessage('[인바운드 설정] 권한이 없습니다.'+#13#10+'관리자에게 문의(권한요청) 바랍니다.' +#13#10+#13#10
								+ '권한항목 >> 회사 : AI-IB 인바운드 설정');
			Exit;
		end;

		Screen.Cursor := crHourGlass;
		btnSearchA1.Enabled := False;
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel06('GET_AI_CONFIG', 'AI_IB_MNG.GET_AI_CONFIG', '1', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('인바운드 설정 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
				Screen.Cursor := crDefault;
				btnSearchA1.Enabled := True;
				proc_BtnEnable(True);
				Exit;
			end;

			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			for j := 0 to slList.Count - 1 do
			begin
				Frm_Flash.cxPBar1.Position := j + 1;
				Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
				Application.ProcessMessages;
				xmlData := slList.Strings[j];

				xdom := ComsDomDocument.Create;
				try
					if not xdom.loadXML(XmlData) then Exit;   //"1030│1000│n│씨엠엔피│0│y│10000│5000│y│y│y"

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
                  if Trim(ls_Rcrd[0]) = '' then
                    tim_STime.Time := strToTime('00:00:00')
                  else
  									tim_STime.Time := strToTime(Copy(ls_Rcrd[0],1,2) + ':' + Copy(ls_Rcrd[0],3,2) + ':00');

                  if Trim(ls_Rcrd[1]) = '' then
                    tim_ETime.Time := strToTime('00:00:00')
                  else
  									tim_ETime.Time := strToTime(Copy(ls_Rcrd[1],1,2) + ':' + Copy(ls_Rcrd[1],3,2) + ':00');

									if ls_Rcrd[2] = 'y' then rdo_1_0.Checked := True else rdo_1_1.Checked := True;
									edt_HelloBrNm.Text := Trim(ls_Rcrd[3]); 
									if ls_Rcrd[4] = '0' then rdo_2_0.Checked := True else if ls_Rcrd[4] = '5' then rdo_2_1.Checked := True;
									if ls_Rcrd[5] = 'y' then rdo_3_0.Checked := True else rdo_3_1.Checked := True;
									edt_BasicCash.Value := StrToIntDef(ls_Rcrd[6], 0);
									edt_AddCash.Value   := StrToIntDef(ls_Rcrd[7], 0);
									if ls_Rcrd[8] = 'y' then rdo_4_0.Checked := True else rdo_4_1.Checked := True;
									if ls_Rcrd[9] = 'y' then rdo_5_0.Checked := True else rdo_5_1.Checked := True;
									if ls_Rcrd[10] = 'y' then rdo_6_0.Checked := True else rdo_6_1.Checked := True;
								end;
							finally
								ls_Rcrd.Free;
							end;
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

procedure Tfrm_AIC21.btn_AIScenarioDownClick(Sender: TObject);
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

			IE.Navigate('http://www.callmaner.com/download/콜마너 AI콜센터 시나리오_고객용_v1.pdf');
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

procedure Tfrm_AIC21.btn_InfoClick(Sender: TObject);
begin
	if ( Not Assigned(Frm_AIC10) ) Or ( Frm_AIC10 = Nil ) then 
		Frm_AIC10 := TFrm_AIC10.Create(Nil);
	Frm_AIC10.Show;	
end;

procedure Tfrm_AIC21.btn_KeyNumberClick(Sender: TObject);
var i, iRow : integer;
begin
	SetDebugeWrite('Tfrm_AIC21.btn_KeyNumberClick');
	Try
		if TCK_USER_PER.AIC_IBCallSet <> '1' then  // 회사 : AI-OB 해피콜 설정
		begin
			ShowMessage('[AI-IB 인바운드  설정] 권한이 없습니다.'+#13#10+'관리자에게 문의(권한요청) 바랍니다.' +#13#10+#13#10
								+ '권한항목 >> 회사 : AI-IB 인바운드  설정');
			Exit;
		end;
		
		cxGridAI3_IBList1.DataController.SetRecordCount(0);
		cxGridAI3_IBList1.BeginUpdate;
		for I := 0 to gFKeyNumer.Count -1 do
		begin
			iRow := cxGridAI3_IBList1.DataController.AppendRecord;
			cxGridAI3_IBList1.DataController.Values[iRow, 0] := IntToStr(iRow+1); 
			cxGridAI3_IBList1.DataController.Values[iRow, 1] := gFKeyNumer[i];
			cxGridAI3_IBList1.DataController.Values[iRow, 2] := gF070KeyNumer[i];
		end;
		cxGridAI3_IBList1.EndUpdate;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_AIC21.btn_UpdateClick(Sender: TObject);
var
	XmlData, Param, ErrMsg, sTmp : string;
	ErrCode : Integer;
begin
	try
//		if not GetAIOouBoundYN(gBrNo) then
//		begin
//			Exit;
//		end;

		if (rdo_1_0.Checked) and (edt_HelloBrNm.Text = '') then
		begin
			GMessagebox('인사멘트 사용 지사명을 입력하십시오다.', CDMSI);
			edt_HelloBrNm.SetFocus;
			Exit;
		end;
		if (rdo_3_1.Checked) and (edt_BasicCash.Value < 1000 ) then
		begin
			GMessagebox('기본요금이 1,000원 미만입니다.' + #13#10 + '금액을 다시 입력하십시오', CDMSI);
			edt_BasicCash.SetFocus;
			Exit;
		end;

		Param := gBrNo;             //지사코드
    if FormatdateTime('hhmm', tim_STime.Time) = '0000' then
   		Param := Param + '│'
    else
  		Param := Param + '│' + FormatdateTime('hhmm', tim_STime.Time);

    if FormatdateTime('hhmm', tim_ETime.Time) = '0000' then
  		Param := Param + '│'
    else
  		Param := Param + '│' + FormatdateTime('hhmm', tim_ETime.Time);
		if rdo_1_0.Checked then Param := Param + '│' + 'y' else Param := Param + '│' + 'n';
		Param := Param + '│' + Trim(edt_HelloBrNm.text);  
		if rdo_2_0.Checked then Param := Param + '│' + '0' else Param := Param + '│' + '5';
		if rdo_3_0.Checked then Param := Param + '│' + 'y' else Param := Param + '│' + 'n';
		sTmp := StringReplace(edt_BasicCash.text,',','',[rfReplaceAll]);
		Param := Param + '│' + Trim(sTmp);  
		sTmp := StringReplace(edt_AddCash.text,',','',[rfReplaceAll]);
		Param := Param + '│' + Trim(sTmp);  
		if rdo_4_0.Checked then Param := Param + '│' + 'y' else Param := Param + '│' + 'n';
		if rdo_5_0.Checked then Param := Param + '│' + 'y' else Param := Param + '│' + 'n';
		if rdo_6_0.Checked then Param := Param + '│' + 'y' else Param := Param + '│' + 'n';
		
		if not RequestBase(GetCallable06('SET_AI_CONFIG', 'AI_IB_MNG.SET_AI_CONFIG', param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('인바운드 설정 저장 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Exit;
		end;
		GMessagebox('인바운드 설정완료', CDMSI);
    btnSearchA1Click(btnSearchA1);
	except
    on E: Exception do
		begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure Tfrm_AIC21.btnSearchA2Click(Sender: TObject);
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i, j : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	sTmp : string;
begin
	SetDebugeWrite('Tfrm_AIC21.btnSearchA2Click');
	Try
		cxGridAI2_IBList1.DataController.SetRecordCount(0);

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

		Param := Param + '│' + Trim(edt_Slip.text);

//		if not GetAIOouBoundYN(sTmp) then
//		begin
//			Exit;
//		end;

		if TCK_USER_PER.AIC_IBCallDetailList <> '1' then  // 회사 : AI-OB 해피콜 상세내역
		begin
			ShowMessage('[AI-IB 인바운드  상세내역] 권한이 없습니다.'+#13#10+'관리자에게 문의(권한요청) 바랍니다.' +#13#10+#13#10
								+ '권한항목 >> 회사 : AI-IB 인바운드 상세내역');
			Exit;
		end;

		Screen.Cursor := crHourGlass;
		btnSearchA2.Enabled := False;
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel06('GET_IB_SEARCH_LIST', 'AI_IB_MNG.GET_IB_SEARCH_LIST', '1000', Param), slList, ErrCode, ErrMsg, 600000) then
			begin
				GMessagebox(Format('AI_IB 인바운드 상세내역 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
				Screen.Cursor := crDefault;
				btnSearchA2.Enabled := True;
				Exit;
			end;

			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			cxGridAI2_IBList1.DataController.SetRecordCount(0);
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
							cxGridAI2_IBList1.BeginUpdate;
							ls_Rcrd := TStringList.Create;
							try
								for i := 0 to lst_Result.length - 1 do
								begin
									GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
									Application.ProcessMessages;

									iRow := cxGridAI2_IBList1.DataController.AppendRecord; // 1 Record 추가
								//지사코드 | 지사명 | 대표번호 | 날짜 | 접수번호 | 고객번호 | 고객명 |
								//대기 | 상담원연결 | 기사 | 배차중고객 | 접수중고객 | 정상콜수 | 문의 |
								//업소 | 현금 | 카드 | 마일 | 합계|접수율|
								//완료 | 취소 | 문의 | 접수취소 | 요금인상 | 추가접수 | 독촉문자 | 기사취소 | LBS건수 | 정산금액

									cxGridAI2_IBList1.DataController.Values[iRow, 0] := IntToStr(iRow+1);
									cxGridAI2_IBList1.DataController.Values[iRow, 1] := ls_Rcrd[ 0];            //지사코드
									cxGridAI2_IBList1.DataController.Values[iRow, 2] := ls_Rcrd[ 1];            //지사명	
									cxGridAI2_IBList1.DataController.Values[iRow, 3] := StrToCall(ls_Rcrd[ 2]); //대표번호
									cxGridAI2_IBList1.DataController.Values[iRow, 4] := ls_Rcrd[ 3];            //날짜
									cxGridAI2_IBList1.DataController.Values[iRow, 5] := ls_Rcrd[ 4];            //접수번호
									cxGridAI2_IBList1.DataController.Values[iRow, 6] := StrToCall(ls_Rcrd[ 5]); //고객번호
									cxGridAI2_IBList1.DataController.Values[iRow, 7] := ls_Rcrd[ 6];            //고객명
									cxGridAI2_IBList1.DataController.Values[iRow, 8] := StrToIntDef(ls_Rcrd[ 7],0);           //대기
									cxGridAI2_IBList1.DataController.Values[iRow, 9] := StrToIntDef(ls_Rcrd[ 8],0);           //상담원연결
									cxGridAI2_IBList1.DataController.Values[iRow,10] := StrToIntDef(ls_Rcrd[ 9],0);           //기사
									cxGridAI2_IBList1.DataController.Values[iRow,11] := StrToIntDef(ls_Rcrd[10],0);           //배차중고객
									cxGridAI2_IBList1.DataController.Values[iRow,12] := StrToIntDef(ls_Rcrd[11],0);           //접수중고객
									cxGridAI2_IBList1.DataController.Values[iRow,13] := StrToIntDef(ls_Rcrd[12],0);           //문의
									cxGridAI2_IBList1.DataController.Values[iRow,14] := StrToIntDef(ls_Rcrd[13],0);           //업소
									cxGridAI2_IBList1.DataController.Values[iRow,15] := StrToIntDef(ls_Rcrd[14],0);           //현금
									cxGridAI2_IBList1.DataController.Values[iRow,16] := StrToIntDef(ls_Rcrd[15],0);           //카드
									cxGridAI2_IBList1.DataController.Values[iRow,17] := StrToIntDef(ls_Rcrd[16],0);           //마일
									cxGridAI2_IBList1.DataController.Values[iRow,18] := StrToIntDef(ls_Rcrd[17],0);           //완료
									cxGridAI2_IBList1.DataController.Values[iRow,19] := StrToIntDef(ls_Rcrd[18],0);           //취소
									cxGridAI2_IBList1.DataController.Values[iRow,20] := StrToIntDef(ls_Rcrd[19],0);           //문의
									cxGridAI2_IBList1.DataController.Values[iRow,21] := StrToIntDef(ls_Rcrd[20],0);           //접수취소
									cxGridAI2_IBList1.DataController.Values[iRow,22] := StrToIntDef(ls_Rcrd[21],0);           //요금인상
									cxGridAI2_IBList1.DataController.Values[iRow,23] := StrToIntDef(ls_Rcrd[22],0);           //추가접수
									cxGridAI2_IBList1.DataController.Values[iRow,24] := StrToIntDef(ls_Rcrd[23],0);           //독촉문자
									cxGridAI2_IBList1.DataController.Values[iRow,25] := StrToIntDef(ls_Rcrd[24],0);           //기사취소
									cxGridAI2_IBList1.DataController.Values[iRow,26] := StrToIntDef(ls_Rcrd[25],0);           //LBS건수
									cxGridAI2_IBList1.DataController.Values[iRow,27] := StrToIntDef(ls_Rcrd[25],0) * 100;     //정산금액
								end;
							finally
								ls_Rcrd.Free;
							end;
							cxGridAI2_IBList1.EndUpdate;
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

procedure Tfrm_AIC21.btnSearchA3Click(Sender: TObject);
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i, j, iTmp1, iTmp2 : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	slList, ls_Rcrd : TStringList;
	sTmp : string;
	dTmp : Double;
begin
	SetDebugeWrite('Tfrm_AIC21.btnSearchA3Click');
	Try
		cxGridAI3_IBList1.DataController.SetRecordCount(0);

		if GT_SEL_BRNO.GUBUN <> '1' then
		begin
			GMessagebox(PChar('좌측지사를 선택하십시오.'), CDMSI);
			Exit;
		end;

		if TCK_USER_PER.AIC_IBCallDayTOT <> '1' then  // 회사 : AI-OB 해피콜 일별현황
		begin
			ShowMessage('[AI-IB 인바운드 일별현황] 권한이 없습니다.'+#13#10+'관리자에게 문의(권한요청) 바랍니다.' +#13#10+#13#10
								+ '권한항목 >> 회사 : AI-IB 인바운드 일별현황');
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

//		if not GetAIOouBoundYN(sTmp) then
//		begin
//			Exit;
//		end;

		Screen.Cursor := crHourGlass;
		btnSearchA3.Enabled := False;
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel06('GET_IB_DAY_LIST', 'AI_IB_MNG.GET_IB_DAY_LIST', '1000', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('인바운드  상세내역 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
				Screen.Cursor := crDefault;
				btnSearchA3.Enabled := True;
				Exit;
			end;

			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			cxGridAI3_IBList1.DataController.SetRecordCount(0);
			iTmp1 := 0; iTmp2 := 0;
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
							cxGridAI3_IBList1.BeginUpdate;
							ls_Rcrd := TStringList.Create;
							try
								for i := 0 to lst_Result.length - 1 do
								begin
									GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
									Application.ProcessMessages;

									iRow := cxGridAI3_IBList1.DataController.AppendRecord; // 1 Record 추가
								//지사코드 | 지사명 | 대표번호 | 날짜 | 총콜수 | 대기콜수 | 상담원연결 | 기사 | 배차중고객 | 접수중고객 | 정상콜수 | 문의 |
								//업소 | 현금 | 카드 | 마일 | 완료 | 취소 | 문의 | 접수취소 | 요금인상 | 추가접수 | 독촉문자 | 기사취소 | LBS건수 | 정산금액

									cxGridAI3_IBList1.DataController.Values[iRow, 0] := IntToStr(iRow+1);
									cxGridAI3_IBList1.DataController.Values[iRow, 1] := ls_Rcrd[ 0];            //지사코드
									cxGridAI3_IBList1.DataController.Values[iRow, 2] := ls_Rcrd[ 1];            //지사명	
									cxGridAI3_IBList1.DataController.Values[iRow, 3] := StrToCall(ls_Rcrd[ 2]); //대표번호
									cxGridAI3_IBList1.DataController.Values[iRow, 4] := ls_Rcrd[ 3];            //날짜
									cxGridAI3_IBList1.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[ 4],0);           //총콜수
									cxGridAI3_IBList1.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[ 5],0);           //대기콜수
									cxGridAI3_IBList1.DataController.Values[iRow, 7] := StrToIntDef(ls_Rcrd[ 6],0);           //상담원연결
									cxGridAI3_IBList1.DataController.Values[iRow, 8] := StrToIntDef(ls_Rcrd[ 7],0);           //기사
									cxGridAI3_IBList1.DataController.Values[iRow, 9] := StrToIntDef(ls_Rcrd[ 8],0);           //배차중고객
									cxGridAI3_IBList1.DataController.Values[iRow,10] := StrToIntDef(ls_Rcrd[ 9],0);           //접수중고객

									iTmp1 := StrToIntDef(ls_Rcrd[ 4],0) - (StrToIntDef(ls_Rcrd[ 6],0) + StrToIntDef(ls_Rcrd[ 7],0) +
																												 StrToIntDef(ls_Rcrd[ 8],0) + StrToIntDef(ls_Rcrd[ 9],0));
									sTmp := IntToStr(iTmp1);																			
									cxGridAI3_IBList1.DataController.Values[iRow,11] := StrToIntDef(sTmp,0);                  //정상콜수
									cxGridAI3_IBList1.DataController.Values[iRow,12] := StrToIntDef(ls_Rcrd[10],0);           //문의
									
									cxGridAI3_IBList1.DataController.Values[iRow,13] := StrToIntDef(ls_Rcrd[11],0);           //업소
									cxGridAI3_IBList1.DataController.Values[iRow,14] := StrToIntDef(ls_Rcrd[12],0);           //현금
									cxGridAI3_IBList1.DataController.Values[iRow,15] := StrToIntDef(ls_Rcrd[13],0);           //카드
									cxGridAI3_IBList1.DataController.Values[iRow,16] := StrToIntDef(ls_Rcrd[14],0);           //마일
																																													
									iTmp2 := StrToIntDef(ls_Rcrd[11],0) + StrToIntDef(ls_Rcrd[12],0) 
												 + StrToIntDef(ls_Rcrd[13],0) + StrToIntDef(ls_Rcrd[14],0);
									sTmp := IntToStr(iTmp2);
									cxGridAI3_IBList1.DataController.Values[iRow,17] := StrToIntDef(sTmp,0);                  //합계
									
									dTmp := 0;
									if iTmp1 <> 0 then
                  begin
										dTmp := (iTmp2 / iTmp1) * 100;
										dTmp := Round(dTmp);
									end;
									cxGridAI3_IBList1.DataController.Values[iRow,18] := (dTmp);         //접수율
									cxGridAI3_IBList1.DataController.Values[iRow,19] := StrToIntDef(ls_Rcrd[15],0);           //완료
									cxGridAI3_IBList1.DataController.Values[iRow,20] := StrToIntDef(ls_Rcrd[16],0);           //취소
									cxGridAI3_IBList1.DataController.Values[iRow,21] := StrToIntDef(ls_Rcrd[17],0);           //문의
									cxGridAI3_IBList1.DataController.Values[iRow,22] := StrToIntDef(ls_Rcrd[18],0);           //접수취소
									cxGridAI3_IBList1.DataController.Values[iRow,23] := StrToIntDef(ls_Rcrd[19],0);           //요금인상
									cxGridAI3_IBList1.DataController.Values[iRow,24] := StrToIntDef(ls_Rcrd[20],0);           //추가접수
									cxGridAI3_IBList1.DataController.Values[iRow,25] := StrToIntDef(ls_Rcrd[21],0);           //독촉문자
									cxGridAI3_IBList1.DataController.Values[iRow,26] := StrToIntDef(ls_Rcrd[22],0);           //기사취소
									cxGridAI3_IBList1.DataController.Values[iRow,27] := StrToIntDef(ls_Rcrd[23],0);           //LBS건수
									cxGridAI3_IBList1.DataController.Values[iRow,28] := StrToIntDef(ls_Rcrd[23],0) * 100;     //정산금액

								end;
							finally
								ls_Rcrd.Free;
							end;
							cxGridAI3_IBList1.EndUpdate;
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

procedure Tfrm_AIC21.btnSearchA4Click(Sender: TObject);
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i, j : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	sTmp : string;
begin
	SetDebugeWrite('Tfrm_AIC21.btnSearchA4Click');
	Try
		cxGridAI4_IBList1.DataController.SetRecordCount(0);

		if GT_SEL_BRNO.GUBUN <> '1' then
		begin
			GMessagebox(PChar('좌측지사를 선택하십시오.'), CDMSI);
			Exit;
		end;

		Param := FormatDateTime('YYYYMMDD', cxDtStartA3.Date);
		Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtEndA3.Date);

		if ( GT_USERIF.LV = '60' ) then
		begin
			Param := Param + '│' + GT_SEL_BRNO.BrNo;
			sTmp := GT_SEL_BRNO.BrNo;
		end	else
		begin
			Param := Param + '│' + GT_USERIF.BR;
			sTmp := GT_USERIF.BR;
		end;

		if cb_KeyNumberA4.ItemIndex = 0 then
			Param := Param + '│' + ''
		else
			Param := Param + '│' + CallToStr(cb_KeyNumberA4.Text);

		Param := Param + '│' + Trim(edt_Slip3.text);

//		if not GetAIOouBoundYN(sTmp) then
//		begin
//			Exit;
//		end;

		if TCK_USER_PER.AIC_IBCallDetailList <> '1' then  // 회사 : AI-IB 상세내역
		begin
			ShowMessage('[AI-IB 인바운드 접수통계내역] 권한이 없습니다.'+#13#10+'관리자에게 문의(권한요청) 바랍니다.' +#13#10+#13#10
								+ '권한항목 >> 회사 : AI-IB 인바운드 접수통계내역');
			Exit;
		end;

		Screen.Cursor := crHourGlass;
		btnSearchA4.Enabled := False;
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel06('GET_IB_RESULT_LIST', 'AI_IB_MNG.GET_IB_RESULT_LIST', '1000', Param), slList, ErrCode, ErrMsg, 600000) then
			begin
				GMessagebox(Format('AI_IB 인바운드 접수통계내역 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
				Screen.Cursor := crDefault;
				btnSearchA2.Enabled := True;
				Exit;
			end;

			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			cxGridAI2_IBList1.DataController.SetRecordCount(0);
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
							cxGridAI4_IBList1.BeginUpdate;
							ls_Rcrd := TStringList.Create;
							try
								for i := 0 to lst_Result.length - 1 do
								begin
									GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
									Application.ProcessMessages;

									iRow := cxGridAI4_IBList1.DataController.AppendRecord; // 1 Record 추가
								  //지사코드 | 지사명 | 대표번호 | 날짜 | 접수번호 | 고객번호 | 고객명 |
								  //7.접수상태 | 8.취소상태 | 9.문의상태 | 10.상담원개입여부 | 요금인상

									cxGridAI4_IBList1.DataController.Values[iRow, 0] := IntToStr(iRow+1);
									cxGridAI4_IBList1.DataController.Values[iRow, 1] := ls_Rcrd[ 0];            //지사코드
									cxGridAI4_IBList1.DataController.Values[iRow, 2] := ls_Rcrd[ 1];            //지사명
									cxGridAI4_IBList1.DataController.Values[iRow, 3] := StrToCall(ls_Rcrd[ 2]); //대표번호
									cxGridAI4_IBList1.DataController.Values[iRow, 4] := ls_Rcrd[ 3];            //날짜
									cxGridAI4_IBList1.DataController.Values[iRow, 5] := ls_Rcrd[ 4];            //접수번호
									cxGridAI4_IBList1.DataController.Values[iRow, 6] := StrToCall(ls_Rcrd[ 5]); //고객번호
									cxGridAI4_IBList1.DataController.Values[iRow, 7] := ls_Rcrd[ 6];            //고객명

                  //상태
                  if StrToIntDef(ls_Rcrd[ 7],0) = 1 then
                  begin
                    cxGridAI4_IBList1.DataController.Values[iRow, 8] := '완료';

                    if StrToIntDef(ls_Rcrd[10],0) > 0 then
                    begin
    									cxGridAI4_IBList1.DataController.Values[iRow, 9] := 0;           //접수완료
  	  								cxGridAI4_IBList1.DataController.Values[iRow,10] := 1;           //수정완료
                    end else
                    begin
    									cxGridAI4_IBList1.DataController.Values[iRow, 9] := 1;           //접수완료
  	  								cxGridAI4_IBList1.DataController.Values[iRow,10] := 0;           //수정완료
                    end;
                    cxGridAI4_IBList1.DataController.Values[iRow,11] := 0;
                    cxGridAI4_IBList1.DataController.Values[iRow,12] := 0;
                  end else
                  if StrToIntDef(ls_Rcrd[ 8],0) = 1 then
                  begin
                    cxGridAI4_IBList1.DataController.Values[iRow, 8] := '취소';
                    cxGridAI4_IBList1.DataController.Values[iRow, 9] := 0;
                    cxGridAI4_IBList1.DataController.Values[iRow,10] := 0;
  									cxGridAI4_IBList1.DataController.Values[iRow,11] := 1;           //취소
                    cxGridAI4_IBList1.DataController.Values[iRow,12] := 0;
                  end else       //상태
                  if StrToIntDef(ls_Rcrd[ 9],0) = 1 then
                  begin
                    cxGridAI4_IBList1.DataController.Values[iRow, 8] := '문의';
                    cxGridAI4_IBList1.DataController.Values[iRow, 9] := 0;
                    cxGridAI4_IBList1.DataController.Values[iRow,10] := 0;
                    cxGridAI4_IBList1.DataController.Values[iRow,11] := 0;
    								cxGridAI4_IBList1.DataController.Values[iRow,12] := 1;           //문의
                  end;

									cxGridAI4_IBList1.DataController.Values[iRow,13] := ls_Rcrd[11];           //요금인상
								end;
							finally
								ls_Rcrd.Free;
							end;
							cxGridAI4_IBList1.EndUpdate;
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
			btnSearchA4.Enabled := True;
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_AIC21.btnExcelA2Click(Sender: TObject);
begin
	if cxGridAI2_IBList1.DataController.RecordCount = 0 then
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

	Frm_Main.sgExcel := 'AI-IB 인바운드 상세내역.xls';
	Frm_Main.sgRpExcel := Format('회사>AI-IB 인바운드 상세내역]%s건', [GetMoneyStr(cxGridAI2_IBList1.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := cxGrid1;
	Frm_Main.bgExcelOPT := False;
	Frm_Main.proc_excel(0);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands0HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 0);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands10HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 10);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands11HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 11);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands12HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 14);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands14HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 14);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands15HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 15);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands16HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 15);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands17HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 16);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands18HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 17);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands19HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 18);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands22HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 19);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands23HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 21);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands24HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 22);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands25HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 23);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands27HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 24);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands28HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 25);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands29HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 26);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands2HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 2);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands30HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 27);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands31HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 28);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands32HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 29);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands33HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 30);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands3HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 3);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands4HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 4);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands5HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 5);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands6HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 6);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands7HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 7);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands8HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 8);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1Bands9HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI2_IBList1, 9);
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
	iRow, i, iSCol : Integer;
	sSlip : string;
	iSlip, iAccTime : integer;
	sAccTime : string;
	iCheck : Boolean;
begin
	SetDebugeWrite('Tfrm_AIC21.cxGridAI2_IBList1CellDblClick');
	Try
		iRow := cxGridAI2_IBList1.DataController.FocusedRecordIndex;
		iSlip := 5;
		sSlip := cxGridAI2_IBList1.DataController.Values[iRow, iSlip];
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

			iAccTime := 4;//cxGridAI2_IBList1.GetColumnByFieldName('접수일시').Index;
			sAccTime := cxGridAI2_IBList1.DataController.Values[iRow,iAccTime];
			if sSlip = '' then exit;
			Frm_Main.AcceptFromCreate(sSlip, sAccTime, '수정', GI_JON03_LastFromIdx);
		end else
		begin
			if ( Not Assigned(Frm_JON08) ) Or ( Frm_JON08 = Nil ) then Frm_JON08 := TFrm_JON08.Create(Nil);

			Frm_JON08.Jon03Tag := Self.Tag;
			frm_Main.proc_AiRecHis(sSlip, 99);
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_AIC21.cxGridAI2_IBList1ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	gIndex := AColumn.Index;
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands0HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_IBList1, 0);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands10HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_IBList1, 10);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands11HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_IBList1, 11);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands12HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_IBList1, 9);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands13HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_IBList1, 12);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands14HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_IBList1, 13);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands15HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_IBList1, 14);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands16HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_IBList1, 15);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands17HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_IBList1, 16);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands18HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_IBList1, 17);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands20HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_IBList1, 18);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands21HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_IBList1, 19);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands22HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_IBList1, 20);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands24SetStoredPropertyValue(
  Sender: TcxGridBand; const AName: string; const AValue: Variant);
begin
	proc_GridSorted(cxGridAI3_IBList1, 21);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands25SetStoredPropertyValue(
	Sender: TcxGridBand; const AName: string; const AValue: Variant);
begin
	proc_GridSorted(cxGridAI3_IBList1, 22);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands26SetStoredPropertyValue(
	Sender: TcxGridBand; const AName: string; const AValue: Variant);
begin
	proc_GridSorted(cxGridAI3_IBList1, 23);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands27SetStoredPropertyValue(
	Sender: TcxGridBand; const AName: string; const AValue: Variant);
begin
	proc_GridSorted(cxGridAI3_IBList1, 24);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands28SetStoredPropertyValue(
	Sender: TcxGridBand; const AName: string; const AValue: Variant);
begin
	proc_GridSorted(cxGridAI3_IBList1, 25);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands29SetStoredPropertyValue(
	Sender: TcxGridBand; const AName: string; const AValue: Variant);
begin
	proc_GridSorted(cxGridAI3_IBList1, 26);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands2HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_IBList1, 2);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands30SetStoredPropertyValue(
  Sender: TcxGridBand; const AName: string; const AValue: Variant);
begin
	proc_GridSorted(cxGridAI3_IBList1, 27);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands3HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_IBList1, 3);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands4HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_IBList1, 4);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands5HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_IBList1, 5);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands6HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_IBList1, 6);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands7HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_IBList1, 7);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands8HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_IBList1, 8);
end;

procedure Tfrm_AIC21.cxGridAI3_IBList1Bands9HeaderClick(Sender: TObject);
begin
	proc_GridSorted(cxGridAI3_IBList1, 9);
end;

procedure Tfrm_AIC21.cxGridAI4_IBList1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
	iRow, i, iSCol : Integer;
	sSlip : string;
	iSlip, iAccTime : integer;
	sAccTime : string;
	iCheck : Boolean;
begin
	SetDebugeWrite('Tfrm_AIC21.cxGridAI2_IBList1CellDblClick');
	Try
		iRow := cxGridAI4_IBList1.DataController.FocusedRecordIndex;
		iSlip := 5;
		sSlip := cxGridAI4_IBList1.DataController.Values[iRow, iSlip];
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

			iAccTime := 4;//cxGridAI2_IBList1.GetColumnByFieldName('접수일시').Index;
			sAccTime := cxGridAI4_IBList1.DataController.Values[iRow,iAccTime];
			if sSlip = '' then exit;
			Frm_Main.AcceptFromCreate(sSlip, sAccTime, '수정', GI_JON03_LastFromIdx);
		end else
		begin
			if ( Not Assigned(Frm_JON08) ) Or ( Frm_JON08 = Nil ) then Frm_JON08 := TFrm_JON08.Create(Nil);

			Frm_JON08.Jon03Tag := Self.Tag;
			frm_Main.proc_AiRecHis(sSlip, 99);
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_AIC21.cxGridAI_HCallList1CellDblClick(Sender: TcxCustomGridTableView;
	ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
	AShift: TShiftState; var AHandled: Boolean);
begin
	btn_Update.OnClick(btn_Update);
end;

procedure Tfrm_AIC21.cxGridAI_HCallList1ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	gIndex := AColumn.Index;
end;

procedure Tfrm_AIC21.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	if Assigned(Frm_AIC10) then Frm_AIC10.Close; 
		
	FreeAndNil(gFKeyNumer);
	FreeAndNil(gF070KeyNumer);
	
	FreeAndNil(gFScenarioNo);
	FreeAndNil(gFScenarioNM);
	Action := caFree;
end;

procedure Tfrm_AIC21.FormCreate(Sender: TObject);
begin
	proc_Init;
end;

procedure Tfrm_AIC21.FormDestroy(Sender: TObject);
begin
	frm_AIC21 := Nil;
end;

procedure Tfrm_AIC21.FormShow(Sender: TObject);
begin
  fSetFont(Frm_AIC21, GS_FONTNAME);
end;

function Tfrm_AIC21.func_BasicScenario: Boolean;
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, i : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
begin
	SetDebugeWrite('Tfrm_AIC21.func_BasicScenario');
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

function Tfrm_AIC21.func_GetAIIBKeyNumber(ABrNo: string): Boolean;
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, i : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
begin
	SetDebugeWrite('Tfrm_AIC21.func_GetAIOBKeyNumber');
	try
		Result := False;
		Param := ABrNo;

		if not RequestBase(GetSel06('GET_AI_IN_KEYNUMBER_LIST', 'AI_IB_MNG.GET_AI_IN_KEYNUMBER_LIST', '1000', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('AI 인바운드 설정된 대표번호 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
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

procedure Tfrm_AIC21.proc_BrNameSet;
var
  sName : string;
begin
	SetDebugeWrite('Tfrm_AIC21.proc_BrNameSet');
	Try
		lblSosokNameA1.Caption := GetSosokInfo;
		lblSosokNameA2.Caption := GetSosokInfo;
		lblSosokNameA3.Caption := GetSosokInfo;
		lblSosokNameA4.Caption := GetSosokInfo;

		if GT_SEL_BRNO.GUBUN <> '1' then
		begin
			GMessagebox(PChar('좌측지사를 선택하십시오.'), CDMSI);
			proc_BtnEnable(False);
			Exit;
		end;

		try
			gFKeyNumer.Clear;
			gF070KeyNumer.Clear;
			if Not func_GetAIIBKeyNumber(GT_SEL_BRNO.BrNo) then  //AI 아웃바운드 설정된 대표번호 
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

		cb_KeynumberA2.Properties.Items.Clear;
		cb_KeynumberA2.Properties.Items.Assign(gFKeyNumer);
		cb_KeynumberA2.Properties.Items.Insert(0, '전체');
		cb_KeynumberA2.ItemIndex := 0;

		cb_KeynumberA3.Properties.Items.Clear;
		cb_KeynumberA3.Properties.Items.Assign(gFKeyNumer);
		cb_KeynumberA3.Properties.Items.Insert(0, '전체');
		cb_KeynumberA3.ItemIndex := 0;

		cb_KeynumberA4.Properties.Items.Clear;
		cb_KeynumberA4.Properties.Items.Assign(gFKeyNumer);
		cb_KeynumberA4.Properties.Items.Insert(0, '전체');
		cb_KeynumberA4.ItemIndex := 0;

		Case cxPageControl1.ActivePageIndex of
		0 : begin
					btnSearchA1.Click;
				end;
		1 : begin
//					btnSearchA2.Click;
				end;
		2 : begin
//					btnSearchA3.Click;
				end;
		End;
		gBrNo := GT_SEL_BRNO.BrNo;
	except
	end;
end;

procedure Tfrm_AIC21.proc_BtnEnable(ABool: Boolean);
begin
	btnSearchA1.Enabled := ABool;
	btnSearchA2.Enabled := ABool;
	btnSearchA3.Enabled := ABool;
	btnSearchA4.Enabled := ABool;
	btnExcelA2.Enabled := ABool;
	btnExcelA3.Enabled := ABool;
	btnExcelA4.Enabled := ABool;
	btn_Update.Enabled := ABool;
end;

procedure Tfrm_AIC21.proc_GridSorted(AView: TcxGridBandedTableView;
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

procedure Tfrm_AIC21.proc_Init;
var  i : integer;
begin
	cxPageControl1.ActivePageIndex := 0;

  cxPageControl1.Pages[3].TabVisible := False;

	tim_STime.Time := strToTime('18:00:00');
	tim_ETime.Time := strToTime('03:00:00');
	rdo_1_0.Checked := False;
	rdo_1_1.Checked := True;
	edt_HelloBrNm.Text := '';
	rdo_2_0.Checked := True;
	rdo_2_1.Checked := False;
	rdo_3_0.Checked := True;
	rdo_3_1.Checked := False;
	edt_BasicCash.Value := 10000;
	edt_AddCash.Value := 5000;
	rdo_4_0.Checked := True;
	rdo_4_1.Checked := False;
	rdo_5_0.Checked := True;
	rdo_5_1.Checked := False;
	rdo_6_0.Checked := True;
	rdo_6_1.Checked := False;
	
	cxDtStartA1.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
	cxDtEndA1.Date := cxDtStartA1.Date + 1;
	cb_KeyNumberA2.properties.items.clear;
	edt_Slip.Text := '';
	
	cxGridAI2_IBList1.DataController.SetRecordCount(0);
	for i := 0 to cxGridAI2_IBList1.ColumnCount - 1 do
	begin
		case i of
			0 : cxGridAI2_IBList1.Columns[i].DataBinding.ValueType := 'Integer';
			1..7 : cxGridAI2_IBList1.Columns[i].DataBinding.ValueType := 'String';
			else
			begin
				cxGridAI2_IBList1.Columns[i].DataBinding.ValueType := 'Currency';
			end;
		end;
	end;
	
	cxDtEndA2.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
	cxDtStartA2.Date := cxDtEndA2.Date - 14;
	cb_KeyNumberA3.properties.items.clear;

	cxGridAI3_IBList1.DataController.SetRecordCount(0);

	for i := 0 to cxGridAI3_IBList1.ColumnCount - 1 do
	begin
		case i of
			0 : cxGridAI3_IBList1.Columns[i].DataBinding.ValueType := 'Integer';
			1..4 : cxGridAI3_IBList1.Columns[i].DataBinding.ValueType := 'String';
			else
			begin
				cxGridAI3_IBList1.Columns[i].DataBinding.ValueType := 'Currency';
			end;
		end;
	end;


	cxDtEndA3.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
	cxDtStartA3.Date := cxDtEndA3.Date - 14;
	cb_KeyNumberA3.properties.items.clear;

	cxGridAI4_IBList1.DataController.SetRecordCount(0);

	for i := 0 to cxGridAI4_IBList1.ColumnCount - 1 do
	begin
		case i of
			0 : cxGridAI4_IBList1.Columns[i].DataBinding.ValueType := 'Integer';
			9..12 : cxGridAI4_IBList1.Columns[i].DataBinding.ValueType := 'Currency';
			else
			begin
        cxGridAI4_IBList1.Columns[i].DataBinding.ValueType := 'String';
			end;
		end;
	end;

	gFKeyNumer := TStringList.Create;
	gF070KeyNumer := TStringList.Create;
	gFScenarioNo := TStringList.Create;
	gFScenarioNM := TStringList.Create;

	if func_BasicScenario then Exit;
end;

function Tfrm_AIC21.func_ScenarioDelete(ABrNo, AKeyNumber, AScenario : string):Boolean;
var
	XmlData, Param, ErrMsg : string;
	ErrCode : Integer;
begin
	SetDebugeWrite('Tfrm_AIC21.func_ScenarioDelete');
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

function Tfrm_AIC21.GetActiveDateControl(var AStDt,
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
  3 : begin
				AStDt := cxDtStartA3;
				AEdDt := cxDtEndA3;
			end;
	End;
end;

procedure Tfrm_AIC21.MiTodayClick(Sender: TObject);
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

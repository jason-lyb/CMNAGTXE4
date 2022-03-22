unit xe_JON59;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels, MSXML2_TLB,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  cxControls, cxStyles,  cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxImageComboBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
	cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel, xe_GNL, IniFiles,
  cxCurrencyEdit, dxSkinscxPCPainter, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  Tfrm_JON59 = class(TForm)
		pnlTitle: TPanel;
    cxLblActive: TLabel;
    btnClose: TcxButton;
    ctxGrid: TcxGrid;
    stg_PaneltyHis_View: TcxGridDBTableView;
    stg_PaneltyHis_ViewColumn1: TcxGridDBColumn;
    stg_PaneltyHis_ViewColumn2: TcxGridDBColumn;
    stg_PaneltyHis_ViewColumn4: TcxGridDBColumn;
    stg_PaneltyHis_ViewColumn5: TcxGridDBColumn;
    stg_PaneltyHis_ViewColumn6: TcxGridDBColumn;
    stg_PaneltyHis_ViewColumn7: TcxGridDBColumn;
    stg_PaneltyHis_ViewColumn8: TcxGridDBColumn;
    cxWkConnect: TcxGridLevel;
    cxLabel1: TcxLabel;
    cbPanelty: TcxComboBox;
    btnSearch: TcxButton;
    stg_PaneltyHis_ViewColumn3: TcxGridDBColumn;
    cxLabel2: TcxLabel;
    lbSlip: TcxLabel;
    lbTitle: TListBox;
    popGrid: TPopupMenu;
    N2: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
		procedure FormDestroy(Sender: TObject);
		procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
		procedure btnCloseClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure stg_PaneltyHis_ViewColumnPosChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure stg_PaneltyHis_ViewColumnSizeChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
  private
    { Private declarations }
		procedure proc_Cell_Read;
		procedure proc_Cell_Save;
		procedure proc_Cell_Clear;
	public
    { Public declarations }
		Jon03Tag : Integer;
		pJON59Dock : TUNDOCKMNG;
		pJon59Slip : string;
		bOpen : Boolean;
		procedure proc_PaneltyHis(ASlip : string);
		procedure proc_init;
	end;

var
  frm_JON59: Tfrm_JON59;

implementation

{$R *.dfm}
uses Main, xe_packet, xe_Msg, xe_Func, xe_xml;

 const
	 COLUUMNLIST : array[0..7] of TSortList = (
		 (cName : '처리일시';  cWid : 132 ),
		 (cName : '벌금구분';  cWid : 102 ),
		 (cName : '취소벌금';  cWid : 064 ),
		 (cName : '기사소속';  cWid : 084 ),
		 (cName : '기사사번';  cWid : 072 ),
		 (cName : '기사명'  ;  cWid : 105 ),
		 (cName : '입력자'  ;  cWid : 105 ),
		 (cName : '메모'    ;  cWid : 279 )
	 );

procedure Tfrm_JON59.btnCloseClick(Sender: TObject);
begin
	Hide;
  if Assigned(Frm_Main.Frm_JON03[Jon03Tag]) then
  begin
   if Frm_Main.Frm_JON03[Jon03Tag].Grd2.CanFocus then
     Frm_Main.Frm_JON03[Jon03Tag].Grd2.SetFocus
   else
	 if Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.CanFocus then
		 Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.SetFocus;
  end;
end;

procedure Tfrm_JON59.btnSearchClick(Sender: TObject);
begin
	proc_PaneltyHis(pJon59Slip);
end;

procedure Tfrm_JON59.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
	cxLblActive.Visible := True;
end;

procedure Tfrm_JON59.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrm_JON59.FormCreate(Sender: TObject);
var
  Save: LongInt;
	i : Integer;
begin
	if BorderStyle = bsNone then Exit;
	SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);

	//====================================================
	// 폼 타이틀 제거..
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

	//그리드 초기화
	for i := 0 to stg_PaneltyHis_View.ColumnCount - 1 do
		stg_PaneltyHis_View.Columns[i].DataBinding.ValueType := 'String';

	i := stg_PaneltyHis_View.GetColumnByFieldName('취소벌금').Index;
	stg_PaneltyHis_View.Columns[i].DataBinding.ValueType := 'Currency';   //지급보험금
	stg_PaneltyHis_View.DataController.SetRecordCount(0);
end;

procedure Tfrm_JON59.FormDeactivate(Sender: TObject);
begin
	cxLblActive.Visible := False;
end;

procedure Tfrm_JON59.FormDestroy(Sender: TObject);
begin
	Frm_JON59 := Nil;
end;

procedure Tfrm_JON59.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON59, GS_FONTNAME);
  fSetSkin(Frm_JON59);
end;

procedure Tfrm_JON59.N2Click(Sender: TObject);
begin
	proc_Cell_Clear;
end;

procedure Tfrm_JON59.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_JON59.proc_Cell_Clear;
var
	i: Integer;
	ln_env: TIniFile;
  Column: TcxGridDBColumn;
begin
	try
		ln_env := TIniFile.Create(ENVPATHFILE);
		ln_env.EraseSection('ConfJON59');
		ln_env.EraseSection('ConfJON59Size');
		stg_PaneltyHis_View.DataController.BeginUpdate;
		try
			for i := 0 to Length(COLUUMNLIST) - 1 do
			begin
				Column := stg_PaneltyHis_View.GetColumnByFieldName(COLUUMNLIST[i].CName);
				Column.Index := i;
				Column.Width := COLUUMNLIST[i].CWid;
			end;

		finally
			stg_PaneltyHis_View.DataController.EndUpdate;
			FreeAndNil(ln_env);
    end;
  except
    on e: Exception do
    begin
      Assert(False, E.Message);
    end;
	end;
end;

procedure Tfrm_JON59.proc_Cell_Read;
var
	i, j, iRow, ciWid : Integer;
	ln_env: TIniFile;
	ShowList, WidthList: TStringList;
	Column: TcxGridDBColumn;
	sTmp : string;
begin
	ln_Env := TIniFile.Create(ENVPATHFILE);
	ShowList := TStringList.Create;
	WidthList := TStringList.Create;

	try
		ln_env.ReadSectionValues('ConfJON59', ShowList);
		ln_env.ReadSectionValues('ConfJON59Size', WidthList);

    if (ShowList.Count > 0) and (ShowList.Count = WidthList.Count) then
		begin
      for I := 0 to ShowList.Count - 1 do
      begin
				Column := stg_PaneltyHis_View.GetColumnByFieldName(ShowList.Values[IntToStr(I)]);

				for j := 0 to Length(COLUUMNLIST) - 1 do
				begin
					sTmp := ShowList.Values[IntToStr(i)];
					if (COLUUMNLIST[j].CName = sTmp ) then
					begin
						ciWid := COLUUMNLIST[j].CWid;
						Break;
          end;
				end;

				if Assigned(Column) then
				begin
					Column.Index := I;
					Column.Width := StrToIntDef(WidthList.Values[IntToStr(I)], ciWid);
				end;
			end;
		end else
		begin
			proc_Cell_Clear;
		end;
	finally
		FreeAndNil(ShowList);
		FreeAndNil(WidthList);
    FreeAndNil(ln_env);
  end;
end;

procedure Tfrm_JON59.proc_Cell_Save;
var
	i: Integer;
	ln_env: TIniFile;
	sTmp: string;
begin
	try
		// 접속기사 그리드 컬럼이동 설정값 저장.
		ln_env := TIniFile.Create(ENVPATHFILE);
		try
			ln_env.EraseSection('ConfJON59');
			ln_env.EraseSection('ConfJON59Size');
			for i := 0 to stg_PaneltyHis_View.ColumnCount - 1 do
			begin
				sTmp := stg_PaneltyHis_View.Columns[i].DataBinding.FieldName;
				ln_env.WriteString('ConfJON59', IntToStr(i), sTmp);
				ln_env.WriteInteger('ConfJON59Size', IntToStr(i), stg_PaneltyHis_View.Columns[i].Width);
			end;
		finally
			FreeAndNil(ln_env);
		end;
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure Tfrm_JON59.proc_init;
begin
	bOpen := False;
	cbPanelty.ItemIndex := 0;
	pJon59Slip := '';
	lbSlip.Caption := '';
	proc_Cell_Read;
end;

procedure Tfrm_JON59.proc_PaneltyHis(ASlip: string);
var
	ErrCode : Integer;
	Param, XmlData, ErrMsg : String;
	lst_Result: IXMLDomNodeList;
	xdom: msDomDocument;
	ls_Rcrd : TStringList;
	iRow, i : integer;
	iTitle: array[0..7] of integer;
begin
	bOpen := False;
	Param := ASlip;
	Param := Param + '│' + '03';
	case cbPanelty.ItemIndex of
		0 : Param := Param + '│' + '';
		1 : Param := Param + '│' + '1'; 
		2 : Param := Param + '│' + '2'; 
	end;
	Screen.Cursor := crHourGlass;
	if not RequestBase(GetSEL06('GET_WK_CASH_LIST', 'AGENT_WK.GET_WK_CASH_LIST', '50', Param), XmlData, ErrCode, ErrMsg) then
	begin
		GMessagebox(Format('취소벌금 캐시조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
		Screen.Cursor := crDefault;
		Exit;
	end;

	xdom := ComsDomDocument.Create;
  try
		if not xdom.loadXML(XmlData) then
		begin
			Screen.Cursor := crDefault;
			Exit;
    end;

		lbSlip.Caption := ASlip;
		stg_PaneltyHis_View.DataController.SetRecordCount(0);
		if (0 < GetXmlRecordCount(XmlData)) then
		begin
			stg_PaneltyHis_View.BeginUpdate;
			lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
			ls_Rcrd := TStringList.Create;
			try
				for i := 0 to lbTitle.Items.Count - 1 do
					iTitle[i] := stg_PaneltyHis_View.GetColumnByFieldName(lbTitle.Items.Strings[i]).Index;
					
				for i := 0 to lst_Result.length - 1 do
				begin
					try
//            H48428│7397B*김이석│500│H48428│20161008054454│적립││초심대리
						GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
						iRow := stg_PaneltyHis_View.DataController.AppendRecord;
	 
						stg_PaneltyHis_View.DataController.Values[iRow,  iTitle[0]] := GetStrToDateTimeGStr(ls_Rcrd[4], 3); //입력일
						
						if ls_Rcrd[6] = '1' then
							stg_PaneltyHis_View.DataController.Values[iRow,  iTitle[1]] := '상담원취소벌금'
						else if ls_Rcrd[6] = '2' then
							stg_PaneltyHis_View.DataController.Values[iRow,  iTitle[1]] := '기사취소벌금'
						else
							stg_PaneltyHis_View.DataController.Values[iRow,  iTitle[1]] := ls_Rcrd[6]; //벌금구분
							
						if ls_Rcrd[2] = '' then ls_Rcrd[2] := '0';
						stg_PaneltyHis_View.DataController.Values[iRow,  iTitle[2]] := ls_Rcrd[2]; 					   //취소벌금
						stg_PaneltyHis_View.DataController.Values[iRow,  iTitle[3]] := ls_Rcrd[7];   					 //기사소속
						stg_PaneltyHis_View.DataController.Values[iRow,  iTitle[4]] := ls_Rcrd[0];   					 //사번
						stg_PaneltyHis_View.DataController.Values[iRow,  iTitle[5]] := ls_Rcrd[1];             //기사명
						stg_PaneltyHis_View.DataController.Values[iRow,  iTitle[6]] := ls_Rcrd[3];   					 //입력자
						stg_PaneltyHis_View.DataController.Values[iRow,  iTitle[7]] := ls_Rcrd[5];   					 //메모
					except                                                      
						stg_PaneltyHis_View.EndUpdate;
						Screen.Cursor := crDefault;
						ls_Rcrd.Free;
					end;
				end;
			finally
				stg_PaneltyHis_View.EndUpdate;
				ls_Rcrd.Free;
				bOpen := True;
			end;
		end
		else
		begin
			GMessagebox('조회된 패널티가 없습니다.', CDMSE);
		end;
	finally
		xdom := Nil;
		Screen.Cursor := crDefault;
  end;
end;

procedure Tfrm_JON59.stg_PaneltyHis_ViewColumnPosChanged(
	Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
	proc_Cell_Save;
end;

procedure Tfrm_JON59.stg_PaneltyHis_ViewColumnSizeChanged(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
	proc_Cell_Save;
end;

end.

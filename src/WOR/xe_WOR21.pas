unit xe_WOR21;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  Vcl.Menus, dxSkinscxPCPainter, dxBarBuiltInMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, cxLabel, cxCurrencyEdit, cxTextEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
	cxGridCustomView, cxGrid, cxPC, cxMemo, Vcl.StdCtrls, cxButtons, cxMaskEdit, MSXML2_TLB, 
  cxDropDownEdit, Vcl.ExtCtrls, cxGroupBox, dxSkinOffice2010Silver, dxDateRanges,
  dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
	TBusDriver = record
		LineCode, LineName, LineUpName, LineDownName, LSabun, Worker, HP, CSabun: TStringList;
	end;
	
	
type
  TFrm_WOR21 = class(TForm)
    Panel1: TPanel;
    pnlTitle: TPanel;
    cxLblActive: TLabel;
    BtnClose: TcxButton;
    Panel2: TPanel;
    cxPageControl2: TcxPageControl;
    cxGroupBox1: TcxGroupBox;
    Shape1: TShape;
    cbLine: TcxComboBox;
    cxLabel54: TcxLabel;
    btn_Sel1: TcxButton;
    btnLineNameUpdate: TcxButton;
    pnl_LineNameUpdate: TcxGroupBox;
    Shape27: TShape;
    Shape5: TShape;
    btn_AddLineSave: TcxButton;
    btn_AddLineClose: TcxButton;
    cxLabel21: TcxLabel;
    edt_LineUpName: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    edt_LineDownName: TcxTextEdit;
    cxLabel8: TcxLabel;
    lb_LineNotice: TcxLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    cxGrid1: TcxGrid;
    cxgDriverIn: TcxGridDBTableView;
    cxgDriverInColumn0: TcxGridDBColumn;
    cxgDriverInColumn1: TcxGridDBColumn;
    cxgDriverInColumn2: TcxGridDBColumn;
    cxgDriverInColumn3: TcxGridDBColumn;
    cxgDriverInColumn4: TcxGridDBColumn;
    cxgDriverInColumn5: TcxGridDBColumn;
    cxgDriverInColumn7: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxLabel44: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    Panel10: TPanel;
    Panel11: TPanel;
    cxGrid2: TcxGrid;
    cxgDriverOut: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Panel12: TPanel;
    Shape4: TShape;
    btn_Sel2: TcxButton;
    edt_Sel2: TcxTextEdit;
    cb_Sel2: TcxComboBox;
    cxLabel3: TcxLabel;
    Panel7: TPanel;
    Panel8: TPanel;
    cxGrid3: TcxGrid;
    cxAnotherDriver: TcxGridDBTableView;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    Panel9: TPanel;
    Shape3: TShape;
    btn_Sel3: TcxButton;
    edt_Sel3: TcxTextEdit;
    cb_Sel3: TcxComboBox;
    cxLabel2: TcxLabel;
    cb_Sel1: TcxComboBox;
    edt_Sel1: TcxTextEdit;
    procedure BtnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
		procedure FormCreate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxLblActiveMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
		procedure FormActivate(Sender: TObject);
		procedure FormClose(Sender: TObject; var Action: TCloseAction);
		procedure FormDeactivate(Sender: TObject);
    procedure cbLinePropertiesChange(Sender: TObject);
		procedure btn_Sel1Click(Sender: TObject);
    procedure edt_Sel2PropertiesChange(Sender: TObject);
		procedure cxgDriverInCellDblClick(Sender: TcxCustomGridTableView;
			ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
			AShift: TShiftState; var AHandled: Boolean);
    procedure edt_Sel1PropertiesChange(Sender: TObject);
    procedure btn_Sel2Click(Sender: TObject);
    procedure edt_Sel1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_Sel2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_Sel3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
		procedure btnLineNameUpdateClick(Sender: TObject);
		procedure btn_AddLineSaveClick(Sender: TObject);
    procedure btn_AddLineCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
	private
		{ Private declarations }
		procedure proc_BusDriverList;
		procedure proc_BusDriverSearch(ATag : integer);
		procedure proc_SetDriver(AView : TcxGridDBTableView; ARow, ATag : Integer) ;
		procedure proc_LineSave;
	public
		{ Public declarations }
		gLineCode, gLineName, gLineUpName, gLineDownName : TStringList;
		gShuttleBrNo : string;
		procedure proc_init;
	end;

var
  Frm_WOR21: TFrm_WOR21;

implementation

uses
	xe_gnl, xe_func, xe_packet, xe_xml, xe_Flash, xe_msg, main;

{$R *.dfm}

procedure TFrm_WOR21.btn_AddLineCloseClick(Sender: TObject);
begin
	cbLine.enabled := True;
	pnl_LineNameUpdate.Visible := False;
end;

procedure TFrm_WOR21.btn_AddLineSaveClick(Sender: TObject);
begin
	proc_LineSave;
end;

procedure TFrm_WOR21.btn_Sel1Click(Sender: TObject);
begin
	if edt_Sel1.Text = '' then proc_BusDriverList  //빈값이면 전체조회
	else
	begin
		proc_BusDriverSearch(0);
	end;
end;

procedure TFrm_WOR21.btn_Sel2Click(Sender: TObject);
begin
	proc_BusDriverSearch(TcxButton(Sender).Tag);
end;

procedure TFrm_WOR21.BtnCloseClick(Sender: TObject);
begin
	close;
end;

procedure TFrm_WOR21.cbLinePropertiesChange(Sender: TObject);
begin
	btn_Sel1.Click;
end;

procedure TFrm_WOR21.btnLineNameUpdateClick(Sender: TObject);
var iRow : integer;
begin
	cbLine.enabled := False;
	pnl_LineNameUpdate.Visible := True;
	pnl_LineNameUpdate.left := 215;
	pnl_LineNameUpdate.Top := 36;
	
	iRow := cbLine.ItemIndex; 
	edt_LineUpName.Text := gLineUpName[iRow];
	edt_LineDownName.Text := gLineDownName[iRow];
	lb_LineNotice.Caption := '';
end;

procedure TFrm_WOR21.cxgDriverInCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var AView: TcxGridDBTableView;
	iRow, iTag : integer;
begin
	if gShuttleBrNo = '' then exit;
	
	if TcxGridDBTableView(Sender).Tag = 0 then
	begin
		AView := cxgDriverIn;
	end else
	if TcxGridDBTableView(Sender).Tag = 1 then
	begin
		AView := cxgDriverOut;
	end else
	if TcxGridDBTableView(Sender).Tag = 2 then
	begin
		AView := cxAnotherDriver;
	end;
	iTag := TcxGridDBTableView(Sender).Tag;
	iRow := AView.DataController.FocusedRecordIndex;
	proc_SetDriver(AView, iRow, iTag);
end;

procedure TFrm_WOR21.cxLblActiveMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WOR21.edt_Sel1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = VK_Return then btn_Sel1.Click;
end;

procedure TFrm_WOR21.edt_Sel1PropertiesChange(Sender: TObject);
begin
	if edt_Sel1.text <> '' then btn_Sel1.Caption := '조회' else btn_Sel1.Caption := '전체조회';
end;

procedure TFrm_WOR21.edt_Sel2KeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if key = VK_Return then btn_Sel2.Click;
end;

procedure TFrm_WOR21.edt_Sel2PropertiesChange(Sender: TObject);
begin
	if TcxTextEdit(Sender).Tag = 1 then
	begin
		if edt_Sel2.text <> '' then btn_Sel2.Enabled := True else btn_Sel2.Enabled := False;
	end else
	if TcxTextEdit(Sender).Tag = 2 then
	begin
  	if edt_Sel3.text <> '' then btn_Sel3.Enabled := True else btn_Sel3.Enabled := False;
	end
end;

procedure TFrm_WOR21.edt_Sel3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = VK_Return then btn_Sel3.Click;
end;

procedure TFrm_WOR21.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_WOR21.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	if Assigned(gLineCode) then gLineCode.Free;
	if Assigned(gLineName) then gLineName.Free;
	if Assigned(gLineUpName) then gLineUpName.Free;
	if Assigned(gLineDownName) then gLineDownName.Free;
	
	Action := caFree;
end;

procedure TFrm_WOR21.FormCreate(Sender: TObject);
var
  Save: LongInt;
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

	gLineCode := TStringList.Create;
	gLineName := TStringList.Create;
	gLineUpName := TStringList.Create;
	gLineDownName := TStringList.Create;

	proc_init;
end;

procedure TFrm_WOR21.FormDeactivate(Sender: TObject);
begin
	cxLblActive.Visible := False;
end;

procedure TFrm_WOR21.FormDestroy(Sender: TObject);
begin
	Frm_WOR21 := Nil;
end;

procedure TFrm_WOR21.FormShow(Sender: TObject);
begin
  fSetFont(Frm_WOR21, GS_FONTNAME);
end;

procedure TFrm_WOR21.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
	Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WOR21.proc_BusDriverList;
var XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	sTmp : string;
	j : integer;
	fBusDriver1, fBusDriver2, fBusDriver3 : TBusDriver;
begin
//7.셔틀지정기사조회 sel06  MNG.GET_WORKER_ROUTE_DSNT_LIST
//request : 지사코드
//response : 1.기사사번 2.자체사번 3.기사명 4.단말기번호 5.노선코드 6.노선명
	try
		slList := TStringList.Create;
		try
			Param := GT_USERIF.ShareNo;
			if not RequestBasePaging(GetSel06('GET_SHUTTLE_WK_LIST', 'SHUTTLE_MNG.GET_SHUTTLE_WK_LIST', '900', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('셔틀지정기사조회 결과 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				FreeAndNil(slList);
				Exit;
			end;

			//해당노선
			fBusDriver1.LineCode := TStringList.Create;
			fBusDriver1.LineName := TStringList.Create;
			fBusDriver1.LineUpName   := TStringList.Create;
			fBusDriver1.LineDownName := TStringList.Create;
			fBusDriver1.LSabun 	 := TStringList.Create;
			fBusDriver1.Worker 	 := TStringList.Create;
			fBusDriver1.HP 			 := TStringList.Create;
			fBusDriver1.CSabun 	 := TStringList.Create;
			//미지정
			fBusDriver2.LineCode := TStringList.Create;
			fBusDriver2.LineName := TStringList.Create;
			fBusDriver2.LineUpName   := TStringList.Create;
			fBusDriver2.LineDownName := TStringList.Create;
			fBusDriver2.LSabun 	 := TStringList.Create;
			fBusDriver2.Worker 	 := TStringList.Create;
			fBusDriver2.HP 			 := TStringList.Create;
			fBusDriver2.CSabun 	 := TStringList.Create;
			//다른노선
			fBusDriver3.LineCode := TStringList.Create;
			fBusDriver3.LineName := TStringList.Create;
			fBusDriver3.LineUpName   := TStringList.Create;
			fBusDriver3.LineDownName := TStringList.Create;
			fBusDriver3.LSabun 	 := TStringList.Create;
			fBusDriver3.Worker 	 := TStringList.Create;
			fBusDriver3.HP 			 := TStringList.Create;
			fBusDriver3.CSabun 	 := TStringList.Create;

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
								sTmp := '';
								for i := 0 to lst_Result.length - 1 do
								begin
									GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
									Application.ProcessMessages;
									if cbLine.ItemIndex = gLineCode.IndexOf(ls_Rcrd[4]) then   //해당노선
									begin
										fBusDriver1.LineCode.Add(ls_Rcrd[4]);             //노선코드
										fBusDriver1.LineName.Add(ls_Rcrd[5] + '<->' + ls_Rcrd[6]); //노선명
										fBusDriver1.LineUpName  .Add(ls_Rcrd[5]);         //상노선명
										fBusDriver1.LineDownName.Add(ls_Rcrd[6]);         //하노선명
										fBusDriver1.LSabun 	.Add(ls_Rcrd[1]);             //자체사번
										fBusDriver1.Worker 	.Add(ls_Rcrd[2]);             //기사명
										fBusDriver1.HP 			.Add(StrToCall(ls_Rcrd[3]));  //단말기
										fBusDriver1.CSabun 	.Add(ls_Rcrd[0]);             //기사사번
									end else
									if ls_Rcrd[4] <> '' then    //다른노선
									begin
										fBusDriver3.LineCode.Add(ls_Rcrd[4]);             //노선코드
										fBusDriver3.LineName.Add(ls_Rcrd[5] + '<->' + ls_Rcrd[6]); //노선명
										fBusDriver3.LineUpName  .Add(ls_Rcrd[5]);         //상노선명
										fBusDriver3.LineDownName.Add(ls_Rcrd[6]);         //하노선명
										fBusDriver3.LSabun 	.Add(ls_Rcrd[1]);             //자체사번
										fBusDriver3.Worker 	.Add(ls_Rcrd[2]);             //기사명
										fBusDriver3.HP 			.Add(StrToCall(ls_Rcrd[3]));  //단말기
										fBusDriver3.CSabun 	.Add(ls_Rcrd[0]);             //기사사번
									end else   //미지정
									begin
										fBusDriver2.LineCode.Add(ls_Rcrd[4]);             //노선코드
										fBusDriver2.LineName.Add(ls_Rcrd[5] + '<->' + ls_Rcrd[6]); //노선명
										fBusDriver2.LineUpName  .Add(ls_Rcrd[5]);         //상노선명
										fBusDriver2.LineDownName.Add(ls_Rcrd[6]);         //하노선명
										fBusDriver2.LSabun 	.Add(ls_Rcrd[1]);             //자체사번
										fBusDriver2.Worker 	.Add(ls_Rcrd[2]);             //기사명
										fBusDriver2.HP 			.Add(StrToCall(ls_Rcrd[3]));  //단말기
										fBusDriver2.CSabun 	.Add(ls_Rcrd[0]);             //기사사번
									end;
								end;
							finally
								ls_Rcrd.Free
							end;

							cxgDriverIn.DataController.SetRecordCount(0);
							Try
								cxgDriverIn.BeginUpdate;
								iRow := 0;
								for i := 0 to fBusDriver1.LineCode.Count -1 do
								begin
									iRow := cxgDriverIn.DataController.AppendRecord;
									cxgDriverIn.DataController.Values[iRow, 0] := IntToStr(iRow + 1);       //순번
									cxgDriverIn.DataController.Values[iRow, 1] := fBusDriver1.LineCode[i];  //노선코드
									cxgDriverIn.DataController.Values[iRow, 2] := fBusDriver1.LineName[i];  //노선명
									cxgDriverIn.DataController.Values[iRow, 3] := fBusDriver1.LSabun  [i];  //자체사번
									cxgDriverIn.DataController.Values[iRow, 4] := fBusDriver1.Worker  [i];  //기사명
									cxgDriverIn.DataController.Values[iRow, 5] := fBusDriver1.HP			[i];  //단말기
									cxgDriverIn.DataController.Values[iRow, 6] := fBusDriver1.CSabun	[i];  //기사사번
								end;
								cxgDriverIn.EndUpdate;
							except
								cxgDriverIn.EndUpdate;
							End;

							Try
								cxAnotherDriver.DataController.SetRecordCount(0);
								cxAnotherDriver.BeginUpdate;
								iRow := 0;
								for i := 0 to fBusDriver3.LineCode.Count -1 do
								begin
									iRow := cxAnotherDriver.DataController.AppendRecord;
									cxAnotherDriver.DataController.Values[iRow, 0] := IntToStr(iRow + 1);       //순번
									cxAnotherDriver.DataController.Values[iRow, 1] := fBusDriver3.LineCode[i];  //노선코드
									cxAnotherDriver.DataController.Values[iRow, 2] := fBusDriver3.LineName[i];  //노선명
									cxAnotherDriver.DataController.Values[iRow, 3] := fBusDriver3.LSabun  [i];  //자체사번
									cxAnotherDriver.DataController.Values[iRow, 4] := fBusDriver3.Worker  [i];  //기사명
									cxAnotherDriver.DataController.Values[iRow, 5] := fBusDriver3.HP			[i];  //단말기
									cxAnotherDriver.DataController.Values[iRow, 6] := fBusDriver3.CSabun	[i];  //기사사번
								end;
								cxAnotherDriver.EndUpdate;
							except
								cxAnotherDriver.EndUpdate;
							End;

							Try
								cxgDriverOut.DataController.SetRecordCount(0);
								cxgDriverOut.BeginUpdate;
								iRow := 0;
								for i := 0 to fBusDriver2.LineCode.Count -1 do
								begin
									iRow := cxgDriverOut.DataController.AppendRecord;
									cxgDriverOut.DataController.Values[iRow, 0] := IntToStr(iRow + 1);       //순번
									cxgDriverOut.DataController.Values[iRow, 1] := fBusDriver2.LineCode[i];  //노선코드
									cxgDriverOut.DataController.Values[iRow, 2] := fBusDriver2.LineName[i];  //노선명
									cxgDriverOut.DataController.Values[iRow, 3] := fBusDriver2.LSabun  [i];  //자체사번
									cxgDriverOut.DataController.Values[iRow, 4] := fBusDriver2.Worker  [i];  //기사명
									cxgDriverOut.DataController.Values[iRow, 5] := fBusDriver2.HP			[i];  //단말기
									cxgDriverOut.DataController.Values[iRow, 6] := fBusDriver2.CSabun	[i];  //기사사번
								end;
								cxgDriverOut.EndUpdate;
							except
								cxgDriverOut.EndUpdate;
							End;
						end;
					end;
				end;
			finally
				xdom := Nil;
				fBusDriver1.LineCode.Free;
				fBusDriver1.LineName.Free;
				fBusDriver1.LineUpName.Free;
				fBusDriver1.LineDownName.Free;
				fBusDriver1.LSabun 	.Free;
				fBusDriver1.Worker 	.Free;
				fBusDriver1.HP 			.Free;
				fBusDriver1.CSabun 	.Free;
				fBusDriver2.LineCode.Free;
				fBusDriver2.LineName.Free;
				fBusDriver2.LineUpName.Free;
				fBusDriver2.LineDownName.Free;
				fBusDriver2.LSabun 	.Free;
				fBusDriver2.Worker 	.Free;
				fBusDriver2.HP 			.Free;
				fBusDriver2.CSabun 	.Free;
				fBusDriver3.LineCode.Free;
				fBusDriver3.LineName.Free;
				fBusDriver3.LineUpName.Free;
				fBusDriver3.LineDownName.Free;
				fBusDriver3.LSabun 	.Free;
				fBusDriver3.Worker 	.Free;
				fBusDriver3.HP 			.Free;
				fBusDriver3.CSabun 	.Free;
			end;
		finally
			Frm_Flash.hide;    
			Screen.Cursor := crDefault;
		end;
	except
		on E: Exception do
		begin
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
			ls_Rcrd.Free;
			fBusDriver1.LineCode.Free;
			fBusDriver1.LineName.Free;
			fBusDriver1.LineUpName.Free;
			fBusDriver1.LineDownName.Free;
			fBusDriver1.LSabun 	.Free;
			fBusDriver1.Worker 	.Free;
			fBusDriver1.HP 			.Free;
			fBusDriver1.CSabun 	.Free;
			fBusDriver2.LineCode.Free;
			fBusDriver2.LineName.Free;
			fBusDriver2.LineUpName.Free;
			fBusDriver2.LineDownName.Free;
			fBusDriver2.LSabun 	.Free;
			fBusDriver2.Worker 	.Free;
			fBusDriver2.HP 			.Free;
			fBusDriver2.CSabun 	.Free;
			fBusDriver3.LineCode.Free;
			fBusDriver3.LineName.Free;
			fBusDriver3.LineUpName.Free;
			fBusDriver3.LineDownName.Free;
			fBusDriver3.LSabun 	.Free;
			fBusDriver3.Worker 	.Free;
			fBusDriver3.HP 			.Free;
			fBusDriver3.CSabun 	.Free;
		end;
	end;
end;

procedure TFrm_WOR21.proc_BusDriverSearch(ATag : integer);
var i, iPos, iRow : integer;
	slTmp1, slTmp2, slTmp3, slTmp4, slTmp5, slTmp6 : TStringList;
	AView: TcxGridDBTableView;
	ACombo : TcxComboBox;
	AEdit : TcxTextEdit;
	iSabun, iWkNm, iHp : integer;
	sSabun, sWkNm, sHp : String;
begin
	if ATag = 0 then
	begin
		AView := cxgDriverIn;
		ACombo:= cb_Sel1;
		AEdit := edt_Sel1;
	end else
	if ATag = 1 then
	begin
		AView := cxgDriverOut;
		ACombo:= cb_Sel2;
		AEdit := edt_Sel2;
	end else
	if ATag = 2 then
	begin
		AView := cxAnotherDriver;
		ACombo:= cb_Sel3;
		AEdit := edt_Sel3;
	end;

	slTmp1 := TStringList.Create;
	slTmp2 := TStringList.Create;
	slTmp3 := TStringList.Create;
	slTmp4 := TStringList.Create;
	slTmp5 := TStringList.Create;
	slTmp6 := TStringList.Create;
	Try
		iSabun := AView.GetColumnByFieldName('자체사번').Index;
		iWkNm := AView.GetColumnByFieldName('기사명').Index;
		iHp := AView.GetColumnByFieldName('단말기').Index;
		iPos := 0;
		for i := 0 to  AView.DataController.RecordCount -1 do
		begin
			if ACombo.ItemIndex = 0 then
			begin
				sSabun := AView.DataController.Values[i, iSabun];
				iPos   := Pos(AEdit.Text, sSabun);
			end else
			if ACombo.ItemIndex = 1 then
			begin
				sWkNm:= AView.DataController.Values[i, iWkNm];
				iPos := Pos(AEdit.Text, sWkNm);
			end else
			if ACombo.ItemIndex = 2 then
			begin
				sHp  := CallToStr(AView.DataController.Values[i, iHp]);
				iPos := Pos(CallToStr(AEdit.Text), sHp);
			end;
			
			if iPos > 0 then
			begin
				slTmp1.Add(AView.DataController.Values[i, 1]);
				slTmp2.Add(AView.DataController.Values[i, 2]);
				slTmp3.Add(AView.DataController.Values[i, 3]);
				slTmp4.Add(AView.DataController.Values[i, 4]);
				slTmp5.Add(AView.DataController.Values[i, 5]);
				slTmp6.Add(AView.DataController.Values[i, 6]);
			end;
			iPos := 0;
		end;

		AView.DataController.SetRecordCount(0);
		
		for i := 0 to slTmp1.Count -1 do
		begin
			iRow := AView.DataController.AppendRecord;
			AView.DataController.Values[iRow, 0] := iRow + 1;               //순번
			AView.DataController.Values[iRow, 1] := slTmp1[i];             //노선코드
			AView.DataController.Values[iRow, 2] := slTmp2[i];             //노선명
			AView.DataController.Values[iRow, 3] := slTmp3[i];             //자체사번
			AView.DataController.Values[iRow, 4] := slTmp4[i];             //기사명
			AView.DataController.Values[iRow, 5] := StrToCall(slTmp5[i]);  //단말기
			AView.DataController.Values[iRow, 6] := slTmp6[i];             //기사사번
		end;
  Finally
		slTmp1.Free;
		slTmp2.Free;
		slTmp3.Free;
		slTmp4.Free;
		slTmp5.Free;
		slTmp6.Free;
	End;
end;

procedure TFrm_WOR21.proc_init;
var
  i: Integer;
begin
	cbLine.Properties.Items.Clear;

	cb_Sel1.ItemIndex := 0;
	edt_Sel1.Text := '';
	cb_Sel2.ItemIndex := 0;
	edt_Sel2.Text := '';
	cb_Sel3.ItemIndex := 0;
	edt_Sel3.Text := '';

	cxgDriverIn.DataController.SetRecordCount(0);
	cxgDriverIn.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 0 to cxgDriverIn.ColumnCount - 1 do
	begin
		cxgDriverIn.Columns[i].DataBinding.ValueType := 'String';
	end;

	cxgDriverOut.DataController.SetRecordCount(0);
	cxgDriverOut.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 0 to cxgDriverOut.ColumnCount - 1 do
	begin
		cxgDriverOut.Columns[i].DataBinding.ValueType := 'String';
	end;

	cxAnotherDriver.DataController.SetRecordCount(0);
	cxAnotherDriver.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 0 to cxAnotherDriver.ColumnCount - 1 do
	begin
		cxAnotherDriver.Columns[i].DataBinding.ValueType := 'String';
	end;
end;

procedure TFrm_WOR21.proc_LineSave;
var sHdNo, sBrNo, sParam : string;
	XmlData, ErrMsg : string;
	ErrCode : integer;
begin
//3.노선저장 col06  MNG.SET_ROUTE_SAVE
//request : 본사코드, 지사코드, 노선코드(신규는 빈값),노선명,노선안내 내용 
//response : 성공,실패 (기존그대로)
	try
		if Trim(edt_LineUpName.Text) = '' then
		begin
			GMessagebox('상행노선명을 입력하세요.', CDMSE);
			edt_LineUpName.SetFocus;
			exit;
		end;
		if Trim(edt_LineUpName.Text) = '' then
		begin
			GMessagebox('하행노선명을 입력하세요.', CDMSE);
			edt_LineDownName.SetFocus;
			exit;
		end;
	
		sHdNo := GT_SEL_BRNO.HDNO;
		sBrNo := gShuttleBrNo;          //GT_SEL_BRNO.BrNo;//

		sParam := '';
		sParam := IntToStr(1) + '│' + sHdNo + '│' + sBrNo + '│' + GT_USERIF.ShareNo + '│' 
						+ gLineCode[cbLine.ItemIndex] + '│' + Trim(edt_LineUpName.Text) + '│' + Trim(edt_LineDownName.Text);

		sHdNo := GT_SEL_BRNO.HDNO;
		sBrNo := GT_SEL_BRNO.BrNo;

		if not RequestBase(GetCallable06('SET_ROUTE_Update', 'SHUTTLE_MNG.SET_ROUTE_SAVE', sParam), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('노선명 수정 시 오류가 발생하였습니다.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			lb_LineNotice.Caption := '노선명 수정 시 오류가 발생하였습니다';
			cbLine.enabled := True;
			exit;
		end;

		lb_LineNotice.Caption := '노선명 수정되었습니다.';
//		btn_AddLine.Click;
	except
		on E: Exception do
		begin
			cbLine.enabled := True;
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_WOR21.proc_SetDriver(AView: TcxGridDBTableView; ARow, ATag: Integer);
var sLineCode, sLineName, sSabun, sWkName, sParam, sMsg : string;
	iLineName, iSabun, iWkName : integer;
	XmlData, ErrMsg : string;
	ErrCode : integer;
begin
//8.셔틀기사 지정 저장 col06  MNG.SET_WORKER_ROUTE_DSNT_SAVE
//request : 1.노선코드, 2.기사사번
//response : 성공,실패 (기존그대로)
	try
		iLineName := AView.GetColumnByFieldName('운행노선').Index;
		iSabun := AView.GetColumnByFieldName('기사사번').Index;
		iWkName := AView.GetColumnByFieldName('기사명').Index;

		sLineName := AView.DataController.Values[ARow, iLineName];
		sSabun    := AView.DataController.Values[ARow, iSabun];
		sWkName   := AView.DataController.Values[ARow, iWkName];

		if ATag = 0 then
		begin
			sMsg := Format('%s 기사님을 [%s]노선에서 제외하시겠습니까?', [sWkName, sLineName]);
			sLineCode := '';
		end else
		begin
			sMsg := Format('%s 기사님을 [%s]노선에 등록하시겠습니까?', [sWkName, cbLine.Text]);
			sLineCode := gLineCode[cbLine.ItemIndex];
		end;
		
		if Application.MessageBox(PChar(sMsg), '[노선버스]', MB_YESNO +	MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
		begin
			sParam := '';
			sParam := sLineCode + '│' + sSabun;

			if not RequestBase(GetCallable06('SET_ROUTE_SHUTTLE_WK', 'SHUTTLE_MNG.SET_ROUTE_SHUTTLE_WK', sParam), XmlData, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('셔틀기사 지정 시 오류가 발생하였습니다.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				exit;
			end;

			if ATag = 0 then
			begin
//				sMsg := Format('%s 기사님은 [%s]노선에서 제외되었습니다.', [sWkName, sLineName]);
				sLineCode := '';
			end	else
			begin
//				sMsg := Format('%s 기사님을 [%s]노선에 등록하였습니다.', [sWkName, cbLine2.Text]);
			end;
//			GMessagebox(sMsg, cdmsE);
			proc_BusDriverList;
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

end.

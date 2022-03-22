unit xe_AIC13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2010Blue,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxStyles,
	dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, ComObj,
  cxNavigator, Data.DB, cxDBData, cxLabel, cxCurrencyEdit, cxButtonEdit,
	cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, MSXML2_TLB,
  cxClasses, cxGridCustomView, cxGrid, cxContainer, cxGroupBox, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, dxSkinOffice2010Silver, dxSkinSharp, dxDateRanges, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  Tfrm_AIC13 = class(TForm)
    pnlTitle: TPanel;
    cxLblActive: TLabel;
    BtnClose: TcxButton;
    cxGrid1: TcxGrid;
    cxGridAI2_List2: TcxGridDBTableView;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridAI2_List2Column1: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridAI2_List3: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    IdHTTP1: TIdHTTP;
    cxGridAI2_List3Column1: TcxGridDBColumn;
    cxGridAI2_List2Column2: TcxGridDBColumn;
    grpPlayer: TcxGroupBox;
    btnExit: TcxButton;
    cxLabel2: TcxLabel;
    pnl_MediaBase: TPanel;
    cxGridAI2_List2Column3: TcxGridDBColumn;
    cxGridAI2_List2Column4: TcxGridDBColumn;
    cxGridAI2_List2Column5: TcxGridDBColumn;
    SaveDialog1: TSaveDialog;
    cxGridAI2_List3Column2: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    Shape11: TShape;
    lb_Scenario_Detail: TcxLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
		procedure cxGridDBColumn6PropertiesButtonClick(Sender: TObject;
			AButtonIndex: Integer);
    procedure btnExitClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure pnlTitleMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxGridAI2_List2Column2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridAI2_List2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
		procedure cxGridAI2_List2Column5PropertiesButtonClick(Sender: TObject;
			AButtonIndex: Integer);
    procedure cxGridAI2_List3Column2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
	private
		{ Private declarations }
		function func_FileDown(ALink : string) : Boolean;
		function func_FileStream(AFileNm, AUrl : String):Boolean;
	public
		{ Public declarations }
		procedure pPlay(sDate, sPPN : String );
		procedure	proc_Init;
		procedure proc_Get_List(AList : string);

	end;

var
  frm_AIC13: Tfrm_AIC13;

implementation

{$R *.dfm}

uses xe_Dm, Main, xe_GNL, xe_Media_1, xe_Media_2, xe_xml, xe_Func, xe_packet, xe_Msg;

procedure Tfrm_AIC13.BtnCloseClick(Sender: TObject);
begin
	close;
end;

procedure Tfrm_AIC13.btnExitClick(Sender: TObject);
begin
	if GT_MediaType = 'Windows' then
	begin
		frm_MAin.frm_Media_1[3].winPlayer.Controls.Stop();
	end else
	if GT_MediaType = 'Basic' then
	begin
		frm_MAin.frm_Media_2[3].MediaPlayer0.Close;
	end;
	grpPlayer.Visible := False;
end;

procedure Tfrm_AIC13.cxGridAI2_List2CellClick(Sender: TcxCustomGridTableView;
	ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var 	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i, iCol : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
	sTmp, tmpCntStr : string;
	tmpCnt : Integer;
begin
	SetDebugeWrite('Tfrm_AIC13.cxGridAI2_List2CellClick');
	Try
		iRow := cxGridAI2_List2.DataController.FocusedRecordIndex;
		iCol := cxGridAI2_List2.GetColumnByFieldName('ppn').Index;
		sTmp := cxGridAI2_List2.DataController.Values[iRow, iCol];

		Param := sTmp;

		if not RequestBase(GetSel06('GET_BD_SEARCH_REC_LIST', 'AI_OB_MNG.GET_BD_SEARCH_REC_LIST', '100', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('배차지연콜 세부 녹취내역 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Exit;
		end;
		xdom := ComsDomDocument.Create;
		cxGridAI2_List3.DataController.SetRecordCount(0);
		try
			if not xdom.loadXML(XmlData) then Exit;

			ls_MSG_Err := GetXmlErrorCode(XmlData);
			if ('0000' = ls_MSG_Err) then
			begin
				tmpCnt := 0;
				if Pos('<Data Count="',xmlData)>0 then
        begin
					tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
          if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
					tmpCnt:=StrToIntDef(tmpCntStr,0);
        end;
				if tmpCnt < 1 then
        begin
					Exit;
				end;

				lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
				cxGridAI2_List3.BeginUpdate;
				ls_Rcrd := TStringList.Create;
				try
					for i := 0 to lst_Result.length - 1 do
					begin
						GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
						Application.ProcessMessages;
					// 순번 | 통화시작시간 | 통화종료시간 | 통화구분 | 차감캐쉬 | 녹취내역

						iRow := cxGridAI2_List3.DataController.AppendRecord; // 1 Record 추가

						cxGridAI2_List3.DataController.Values[iRow, 0] := IntToStr(iRow+1);
						cxGridAI2_List3.DataController.Values[iRow, 1] := ls_Rcrd[0];
						cxGridAI2_List3.DataController.Values[iRow, 2] := ls_Rcrd[1];
						cxGridAI2_List3.DataController.Values[iRow, 3] := ls_Rcrd[2];
						cxGridAI2_List3.DataController.Values[iRow, 4] := ls_Rcrd[3];	
						cxGridAI2_List3.DataController.Values[iRow, 5] := ls_Rcrd[4] + '-' + ls_Rcrd[1];
						cxGridAI2_List3.DataController.Values[iRow, 6] := '';
					end;
				finally
					ls_Rcrd.Free;
				end;
				cxGridAI2_List3.EndUpdate;
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

procedure Tfrm_AIC13.cxGridAI2_List2Column2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
Var iRow, iCol, iDate : Integer;
		sPPN, sDate : String;
begin
	iRow := cxGridAI2_List2.DataController.FocusedRecordIndex;
	if iRow  = -1 then Exit;
	iCol := cxGridAI2_List2.GetColumnByFieldName('ppn').Index;
	sPPN := cxGridAI2_List2.DataController.Values[iRow, iCol];

	iDate := cxGridAI2_List2.GetColumnByFieldName('통화시작시간').Index;
	sDate := cxGridAI2_List2.DataController.Values[iRow, iDate];

	pPlay( sDate, sPPN );
end;

procedure Tfrm_AIC13.cxGridAI2_List2Column5PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
Var iRow : Integer;
	sUrl : string;
	iCol, iDate : Integer;
	sFileNm, sDate, sYMD, sPPN : String;
begin
	SetDebugeWrite('Tfrm_AIC13.cxGridAI2_List2Column5PropertiesButtonClick');
	Try
		iRow := cxGridAI2_List2.DataController.FocusedRecordIndex;
		if iRow  = -1 then Exit;

		iDate := cxGridAI2_List2.GetColumnByFieldName('통화시작시간').Index;
		sDate := cxGridAI2_List2.DataController.Values[iRow, iDate];

		sYMD := Copy(cxGridAI2_List2.DataController.Values[iRow, iDate], 1, 10);
		sYMD := StringReplace(sYMD,'-','',[rfReplaceAll]);

    iCol := cxGridAI2_List2.GetColumnByFieldName('ppn').Index;
		sPPN := cxGridAI2_List2.DataController.Values[iRow, iCol];

		sUrl := fgetAiRecordURL(sDate, sPPN);
		sFileNm := sYMD + '-' + cxGridAI2_List2.DataController.Values[iRow, iCol] + '.wav';

		if not func_FileStream(sFileNm, sUrl) then
		begin
			GMessagebox('녹취파일 다운로드 실패', CDMSI);
		end else GMessagebox('녹취파일 다운로드 완료', CDMSI);
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_AIC13.cxGridAI2_List3Column2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
Var iRow : Integer;
	sUrl : string;
	iCol, iDate : Integer;
	sFileNm, sDate, sPPN, sYMD : String;
begin
	SetDebugeWrite('Tfrm_AIC13.cxGridAI2_List3Column2PropertiesButtonClick');
	Try
		iRow := cxGridAI2_List3.DataController.FocusedRecordIndex;
		if iRow  = -1 then Exit;
		iDate := cxGridAI2_List3.GetColumnByFieldName('처리일시').Index;
		sDate := cxGridAI2_List3.DataController.Values[iRow, iDate];

		sYMD := Copy(cxGridAI2_List3.DataController.Values[iRow, iDate], 1, 10);
		sYMD := StringReplace(sYMD,'-','',[rfReplaceAll]);

    iCol := cxGridAI2_List3.GetColumnByFieldName('ppn').Index;
		sPPN := cxGridAI2_List3.DataController.Values[iRow, iCol];

		sUrl := fgetAiRecordURL(sDate, sPPN);
		sFileNm := sYMD + '-' + cxGridAI2_List2.DataController.Values[iRow, iCol] + '.wav';

		if not func_FileStream(sFileNm, sUrl) then
		begin
			GMessagebox('녹취파일 다운로드 실패', CDMSI);
		end else GMessagebox('녹취파일 다운로드 완료', CDMSI);
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_AIC13.cxGridDBColumn6PropertiesButtonClick(Sender: TObject;
	AButtonIndex: Integer);
Var iRow, iCol, iDate : Integer;
		sDate, sPPN : String;
begin
	iRow := cxGridAI2_List3.DataController.FocusedRecordIndex;
	if iRow  = -1 then Exit;
	iCol := cxGridAI2_List3.GetColumnByFieldName('ppn').Index;
	sPPN := cxGridAI2_List3.DataController.Values[iRow, iCol];

	iDate := cxGridAI2_List3.GetColumnByFieldName('처리일시').Index;
	sDate := cxGridAI2_List3.DataController.Values[iRow, iDate];

	pPlay( sDate, sPPN );
end;

procedure Tfrm_AIC13.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
	cxLblActive.Visible := True;
end;

procedure Tfrm_AIC13.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Action := caFree;
end;

procedure Tfrm_AIC13.FormCreate(Sender: TObject);
var i : integer;
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

	cxGridAI2_List2.DataController.SetRecordCount(0);
	for i := 0 to cxGridAI2_List2.ColumnCount - 1 do
		cxGridAI2_List2.Columns[i].DataBinding.ValueType := 'String';
	cxGridAI2_List2.Columns[0].DataBinding.ValueType := 'Integer';
	cxGridAI2_List2.Columns[4].DataBinding.ValueType := 'Currency';

	cxGridAI2_List3.DataController.SetRecordCount(0);
	for i := 0 to cxGridAI2_List3.ColumnCount - 1 do
		cxGridAI2_List3.Columns[i].DataBinding.ValueType := 'String';
	cxGridAI2_List3.Columns[0].DataBinding.ValueType := 'Integer';

	Try
//		if Not Assigned(frm_MAin.frm_Media_1[3]) then
			frm_MAin.frm_Media_1[3] := Tfrm_Media_1.Create(nil);
		frm_MAin.frm_Media_1[3].Parent := pnl_MediaBase;
		frm_MAin.frm_Media_1[3].Align := alClient;
		GT_MediaType := 'Windows';
	Except
//		if Not Assigned(frm_MAin.frm_Media_2[3]) then
			frm_MAin.frm_Media_2[3] := Tfrm_Media_2.Create(nil);
		frm_MAin.frm_Media_2[3].Parent := pnl_MediaBase;
		frm_MAin.frm_Media_2[3].Align := alClient;
		frm_MAin.frm_Media_2[3].MediaPlayer0.visible := True;

		GT_MediaType := 'Basic';                
	End;
end;

procedure Tfrm_AIC13.FormDeactivate(Sender: TObject);
begin
	cxLblActive.Visible := False;
end;

procedure Tfrm_AIC13.FormDestroy(Sender: TObject);
begin
	Frm_AIC13 := Nil;

end;

procedure Tfrm_AIC13.FormShow(Sender: TObject);
begin
  fSetFont(Frm_AIC13, GS_FONTNAME);
end;

function Tfrm_AIC13.func_FileDown(ALink: string): Boolean;
var sUrl, sTmp, sFileName : string;
	fsData : TFileStream;
begin
	Result := False;
	Try
		sFileName := SOUNDDIRECTORY + 'Tmp.wav';
		fsData := TFileStream.Create(sFileName, fmCreate);
		try
			sTmp  := GS_EnvFile.ReadString('CID_COMM', 'PBX_IP',  '');
			sUrl := ALink;
			IdHTTP1.Get(sUrl, fsData);
		finally
			fsData.Free;
			Result := True;
		end;	
	Except
		Result := False;
	End;
end;

function Tfrm_AIC13.func_FileStream(AFileNm, AUrl: String): Boolean;
	procedure RunDownload(AUrl : string);
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

			IE.Navigate(AUrl);
      IE.Visible := True;

      Application.ProcessMessages;
      sleep(1);
		except on E: Exception do
			GMessagebox(Format('녹취파일 다운로드 시 오류(Err: %s)가 발생하였습니다.'#13#10
												+ '(다시시도 바랍니다.)' , [E.Message]), CDMSI);
		end;
	end;
Var
	sUrl, sFileName : string;
	fsData : TFileStream;
	sFileNm : String;
begin
	SetDebugeWrite('Tfrm_AIC13.func_FileStream');
	Try
		Result := False;
		sUrl := AUrl;
		sFileNm := AFileNm;

		SaveDialog1.Title := '녹취다운로드'; 
		SaveDialog1.InitialDir := EXECDIRECTORY;//+'RecDownLoad';
		SaveDialog1.FileName := sFileNm;
		if SaveDialog1.Execute then
		begin
			sFileName := SaveDialog1.FileName;
			if FileExists(sFileName) then
			begin
				if MessageDlg('파일이 이미 존재합니다. 덮어쓰시겠습니까?', mtConfirmation,[mbYes,mbNo], 0) = mrNo then
				begin
					fsData := TFileStream.Create(sFileName, fmCreate);
					try
						IdHTTP1.Get(sUrl, fsData);
					finally
						fsData.Free;
					end;	
				end;
			end else
			begin
				fsData := TFileStream.Create(sFileName, fmCreate);
				try
					IdHTTP1.Get(sUrl, fsData);
				finally
					fsData.Free;
				end;	
			end;
			Result := True;
		end;	
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_AIC13.pnlTitleMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ReleaseCapture;
	PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_AIC13.pPlay(sDate, sPPN : String);
Var sUrl, sFileName : string;
begin
	Try
//		grpPlayer.Visible := True;

		sUrl := fgetAiRecordURL(sDate, sPPN);

//  WindowsMediaPlayer1.URL := 'file://C:\BigBuckBunny.mp4';
//  WindowsMediaPlayer1.controls.play;

		if GT_MediaType = 'Windows' then
		begin
			try
				frm_MAin.frm_Media_1[3].winPlayer.mediaCollection.getAll.clear;
				frm_MAin.frm_Media_1[3].winPlayer.currentPlaylist.clear;
				frm_MAin.frm_Media_1[3].winPlayer.URL := sUrl;
			except
				On E: Exception do
				begin
					ShowMessage(e.Message);
				end;
			end;
		end else
		if GT_MediaType = 'Basic' then
		begin
			frm_MAin.frm_Media_2[3].MediaPlayer0.Close;
			if Assigned(frm_MAin.frm_Media_2[1]) then frm_MAin.frm_Media_2[1].MediaPlayer0.Close;
			if Assigned(frm_MAin.frm_Media_2[2]) then frm_MAin.frm_Media_2[2].MediaPlayer0.Close;
			sFileName := SOUNDDIRECTORY + 'Tmp.wav';
			
			if FileExists(sFileName) then
				DeleteFile(sFileName);	

			if func_FileDown(sUrl) then
			begin
				frm_MAin.frm_Media_2[3].MediaPlayer0.FileName := sFileName;
				frm_MAin.frm_Media_2[3].MediaPlayer0.Open;
				frm_MAin.frm_Media_2[3].MediaPlayer0.Play;
			end;
		end;
		
	except

	End;
end;

procedure Tfrm_AIC13.proc_Get_List(AList: string);
var XmlData, ls_MSG_Err : string;
	iRow, i : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
begin
	SetDebugeWrite('Tfrm_AIC13.proc_Get_List');
	Try
		XmlData := AList;
		xdom := ComsDomDocument.Create;
		cxGridAI2_List2.DataController.SetRecordCount(0);
		cxGridAI2_List3.DataController.SetRecordCount(0);
		try
			if not xdom.loadXML(XmlData) then Exit;

			ls_MSG_Err := GetXmlErrorCode(XmlData);
			if ('0000' = ls_MSG_Err) then
			begin
				if (0 < GetXmlRecordCount(XmlData)) then
				begin
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					cxGridAI2_List2.BeginUpdate;
					ls_Rcrd := TStringList.Create;
					try
						for i := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							Application.ProcessMessages;
						// 순번 | 통화시작시간 | 통화종료시간 | 통화구분 | 차감캐쉬 | 녹취내역

							iRow := cxGridAI2_List2.DataController.AppendRecord; // 1 Record 추가

							cxGridAI2_List2.DataController.Values[iRow, 0] := IntToStr(iRow+1);
							cxGridAI2_List2.DataController.Values[iRow, 1] := ls_Rcrd[0];        //통화시작시간 
							cxGridAI2_List2.DataController.Values[iRow, 2] := ls_Rcrd[1];        //통화종료시간 
							cxGridAI2_List2.DataController.Values[iRow, 3] := ls_Rcrd[6];        //통화시간(초)
							cxGridAI2_List2.DataController.Values[iRow, 4] := ls_Rcrd[2];        //통화구분 
							cxGridAI2_List2.DataController.Values[iRow, 5] := ls_Rcrd[3];	       //차감캐쉬 
							cxGridAI2_List2.DataController.Values[iRow, 6] := ls_Rcrd[4];        //ppn번호
							if ls_Rcrd[5] = 'y' then
								cxGridAI2_List2.DataController.Values[iRow, 7] := '녹취청취가능' else
								cxGridAI2_List2.DataController.Values[iRow, 7] := '녹취없음' ;	       //녹취내역유무 
							cxGridAI2_List2.DataController.Values[iRow, 8] := '';
						end;
					finally
						ls_Rcrd.Free;
					end;
					cxGridAI2_List2.EndUpdate;
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

procedure Tfrm_AIC13.proc_Init;
var i : integer;
begin
	cxGridAI2_List2.DataController.SetRecordCount(0);
	for i := 0 to cxGridAI2_List2.ColumnCount - 1 do
		cxGridAI2_List2.Columns[i].DataBinding.ValueType := 'String';
	cxGridAI2_List2.Columns[0].DataBinding.ValueType := 'Integer';
	cxGridAI2_List2.Columns[5].DataBinding.ValueType := 'Currency';

	cxGridAI2_List3.DataController.SetRecordCount(0);
	for i := 0 to cxGridAI2_List3.ColumnCount - 1 do
		cxGridAI2_List3.Columns[i].DataBinding.ValueType := 'String';
	cxGridAI2_List3.Columns[0].DataBinding.ValueType := 'Integer';

end;

end.

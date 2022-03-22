unit xe_JON08;

interface

uses
	Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, xe_GNL,
  Dialogs, IniFiles, clipbrd, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxImageComboBox,
  cxCurrencyEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.ExtCtrls, cxContainer, cxLabel, dxSkinsCore,
  dxSkinscxPCPainter, Vcl.OleCtrls, WMPLib_TLB, cxGroupBox,
  cxButtonEdit, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  TFrm_JON08 = class(TForm)
    Panel1: TPanel;
    ctxGrid: TcxGrid;
    stg_His_View: TcxGridDBTableView;
    stg_His_ViewColumn1: TcxGridDBColumn;
    stg_His_ViewColumn2: TcxGridDBColumn;
    stg_His_ViewColumn3: TcxGridDBColumn;
    stg_His_ViewColumn4: TcxGridDBColumn;
    stg_His_ViewColumn5: TcxGridDBColumn;
    stg_His_ViewColumn6: TcxGridDBColumn;
    stg_His_ViewColumn7: TcxGridDBColumn;
    cxWkConnect: TcxGridLevel;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    cxLblActive: TLabel;
    stg_His_ViewColumn8: TcxGridDBColumn;
    grpSetPlayer: TcxGroupBox;
    stg_His_ViewColumn9: TcxGridDBColumn;
    btnExit: TcxButton;
    pnl_MediaBase: TPanel;
    IdHTTP1: TIdHTTP;
    Shape7: TShape;
    lbTitle: TListBox;
    popGrid: TPopupMenu;
    N2: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grpSetPlayerMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PlayerPlayStateChange(ASender: TObject; NewState: Integer);
    procedure stg_His_ViewColumn9PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnExitClick(Sender: TObject);
		procedure FormShow(Sender: TObject);
		procedure N2Click(Sender: TObject);
		procedure stg_His_ViewColumnPosChanged(Sender: TcxGridTableView;
			AColumn: TcxGridColumn);
		procedure stg_His_ViewColumnSizeChanged(Sender: TcxGridTableView;
			AColumn: TcxGridColumn);
	private
		{ Private declarations }

		function func_FileDown(ALink : string) : Boolean;
		procedure proc_Cell_Read;
		procedure proc_Cell_Save;
		procedure proc_Cell_Clear;
	public
		{ Public declarations }
		Jon03Tag : Integer;
		procedure Proc_init;
		procedure pPlay(sDate, sPPN : String );
	end;

var
  Frm_JON08: TFrm_JON08;

implementation

{$R *.dfm}

uses Main,  xe_Func, xe_Msg, xe_Lib, xe_xml, xe_Dm, xe_Media_1, xe_Media_2;

 const
	 COLUUMNLIST : array[0..8] of TSortList = (
		 (cName : '처리일시';  cWid : 100 ),
		 (cName : '순번'    ;  cWid : 040 ),
		 (cName : '콜구분'  ;  cWid : 080 ),
		 (cName : '콜단계'  ;  cWid : 080 ),
		 (cName : 'TTS내역' ;  cWid : 600 ),
		 (cName : 'STT내역' ;  cWid : 199 ),
		 (cName : 'PPN'     ;  cWid : 064 ),
		 (cName : 'FileName';  cWid : 050 ),
		 (cName : '녹취청취';  cWid : 064)
	 );

procedure TFrm_JON08.btnCloseClick(Sender: TObject);
begin
	Hide;
  try
    if Jon03Tag = 99 then exit;
		if Assigned(Frm_Main.Frm_JON03[Jon03Tag]) then
		begin
     if Frm_Main.Frm_JON03[Jon03Tag].Grd2.CanFocus then
       Frm_Main.Frm_JON03[Jon03Tag].Grd2.SetFocus
     else
     if Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.CanFocus then
			 Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.SetFocus;
		end;
	except

  end;
end;

procedure TFrm_JON08.btnExitClick(Sender: TObject);
begin
	if GT_MediaType = 'Windows' then
	begin
		frm_MAin.frm_Media_1[0].winPlayer.Controls.Stop();
	end else
	if GT_MediaType = 'Basic' then
	begin
		frm_MAin.frm_Media_2[0].MediaPlayer0.Close;
	end;
	grpSetPlayer.Visible := False;
end;

procedure TFrm_JON08.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON08.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_JON08.FormCreate(Sender: TObject);
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

	Try
//		if Not Assigned(frm_MAin.frm_Media_1[0]) then
			frm_MAin.frm_Media_1[0] := Tfrm_Media_1.Create(nil);
		frm_MAin.frm_Media_1[0].Parent := pnl_MediaBase;
		frm_MAin.frm_Media_1[0].Align := alClient;
		GT_MediaType := 'Windows';
	Except
//		if Not Assigned(frm_MAin.frm_Media_2[0]) then
			frm_MAin.frm_Media_2[0] := Tfrm_Media_2.Create(nil);
		frm_MAin.frm_Media_2[0].Parent := pnl_MediaBase;
		frm_MAin.frm_Media_2[0].Align := alClient;
		frm_MAin.frm_Media_2[0].MediaPlayer0.visible := True;

		GT_MediaType := 'Basic';                
	End;

	Proc_init;
end;

procedure TFrm_JON08.Proc_init;
var
	i : Integer;
begin
	for i := 0 to stg_His_View.ColumnCount - 1 do
	begin
		stg_His_View.Columns[i].DataBinding.ValueType := 'String';
	end;
	stg_His_View.DataController.SetRecordCount(0);
	proc_Cell_Read;

end;

procedure TFrm_JON08.stg_His_ViewColumn9PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
Var iRow, iCol : Integer;
    sPPN, sDate : String;
begin
  iRow := stg_His_View.DataController.FocusedRecordIndex;
  if iRow  = -1 then Exit;

	iCol  := stg_His_View.GetColumnByFieldName('처리일시').Index;
	sDate := stg_His_View.DataController.Values[iRow, iCol];

	iCol := stg_His_View.GetColumnByFieldName('PPN').Index;
	sPPN := stg_His_View.DataController.Values[iRow, iCol];

	pPlay(sDate, sPPN);
end;

procedure TFrm_JON08.stg_His_ViewColumnPosChanged(Sender: TcxGridTableView;
	AColumn: TcxGridColumn);
begin
	proc_Cell_Save;
end;

procedure TFrm_JON08.stg_His_ViewColumnSizeChanged(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	proc_Cell_Save;
end;

procedure TFrm_JON08.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON08.FormDestroy(Sender: TObject);
begin
  Frm_JON08 := Nil;
end;

procedure TFrm_JON08.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then btnClose.Click;
end;

procedure TFrm_JON08.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON08, GS_FONTNAME);
  fSetSkin(Frm_JON08);
end;

function TFrm_JON08.func_FileDown(ALink: string): Boolean;
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

procedure TFrm_JON08.grpSetPlayerMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
  PostMessage(grpSetPlayer.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON08.N2Click(Sender: TObject);
begin
	proc_Cell_Clear;
end;

procedure TFrm_JON08.PlayerPlayStateChange(ASender: TObject; NewState: Integer);
begin
  if NewState = 3 then
    grpSetPlayer.Visible := True else
  if NewState = 8 then
    grpSetPlayer.Visible := False;

// NewSate 값
//0	Undefined	Windows Media Player is in an undefined state.
//1	Stopped	Playback of the current media item is stopped.
//2	Paused	Playback of the current media item is paused. When a media item is paused, resuming playback begins from the same location.
//3	Playing	The current media item is playing.
//4	ScanForward	The current media item is fast forwarding.
//5	ScanReverse	The current media item is fast rewinding.
//6	Buffering	The current media item is getting additional data from the server.
//7	Waiting	Connection is established, but the server is not sending data. Waiting for session to begin.
//8	MediaEnded	Media item has completed playback.
//9	Transitioning	Preparing new media item.
//10	Ready	Ready to begin playing.
//11	Reconnecting	Reconnecting to stream.
end;

procedure TFrm_JON08.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON08.pPlay(sDate, sPPN : String );
Var sUrl, sFileName : string;
begin
	Try
		grpSetPlayer.Visible := True;

		sUrl := fgetAiRecordURL(sDate, sPPN);

//  WindowsMediaPlayer1.URL := 'file://C:\BigBuckBunny.mp4';
//  WindowsMediaPlayer1.controls.play;

		if GT_MediaType = 'Windows' then
		begin
			try
				frm_MAin.frm_Media_1[0].winPlayer.mediaCollection.getAll.clear;
				frm_MAin.frm_Media_1[0].winPlayer.currentPlaylist.clear;
				frm_MAin.frm_Media_1[0].winPlayer.URL := sUrl;
			except
				On E: Exception do
				begin
					ShowMessage(e.Message);
				end;
			end;
		end else
		if GT_MediaType = 'Basic' then
		begin
			frm_MAin.frm_Media_2[0].MediaPlayer0.Close;
			if Assigned(frm_MAin.frm_Media_2[1]) then frm_MAin.frm_Media_2[1].MediaPlayer0.Close;
			if Assigned(frm_MAin.frm_Media_2[2]) then frm_MAin.frm_Media_2[2].MediaPlayer0.Close;
			sFileName := SOUNDDIRECTORY + 'Tmp.wav';
			
			if FileExists(sFileName) then
				DeleteFile(sFileName);	

			if func_FileDown(sUrl) then
			begin
				frm_MAin.frm_Media_2[0].MediaPlayer0.FileName := sFileName;
				frm_MAin.frm_Media_2[0].MediaPlayer0.Open;
				frm_MAin.frm_Media_2[0].MediaPlayer0.Play;
			end;
		end;
		
	except

	End;
end;

procedure TFrm_JON08.proc_Cell_Clear;
var
	i: Integer;
	ln_env: TIniFile;
  Column: TcxGridDBColumn;
begin
	try
		ln_env := TIniFile.Create(ENVPATHFILE);
		ln_env.EraseSection('ConfJON08');
		ln_env.EraseSection('ConfJON08Size');
		stg_His_View.DataController.BeginUpdate;
		try
			for i := 0 to Length(COLUUMNLIST) - 1 do
			begin
				Column := stg_His_View.GetColumnByFieldName(COLUUMNLIST[i].CName);
				Column.Index := i;
				Column.Width := COLUUMNLIST[i].CWid;
			end;

		finally
			stg_His_View.DataController.EndUpdate;
			FreeAndNil(ln_env);
    end;
  except
		on e: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON08.proc_Cell_Read;
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
		ln_env.ReadSectionValues('ConfJON08', ShowList);
		ln_env.ReadSectionValues('ConfJON08Size', WidthList);

		if (ShowList.Count > 0) and (ShowList.Count = WidthList.Count) then
		begin
      for I := 0 to ShowList.Count - 1 do
      begin
				Column := stg_His_View.GetColumnByFieldName(ShowList.Values[IntToStr(I)]);

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

procedure TFrm_JON08.proc_Cell_Save;
var
  i: Integer;
  ln_env: TIniFile;
	sTmp: string;
begin
	try
		// 접속기사 그리드 컬럼이동 설정값 저장.
		ln_env := TIniFile.Create(ENVPATHFILE);
		try
			ln_env.EraseSection('ConfJON08');
			ln_env.EraseSection('ConfJON08Size');
			for i := 0 to stg_His_View.ColumnCount - 1 do
			begin
				sTmp := stg_His_View.Columns[i].DataBinding.FieldName;
				ln_env.WriteString('ConfJON08', IntToStr(i), sTmp);
				ln_env.WriteInteger('ConfJON08Size', IntToStr(i), stg_His_View.Columns[i].Width);
			end;
		finally
			FreeAndNil(ln_env);
		end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

end.


unit xe_WOR14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, xe_GNL,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, MSXML2_TLB,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxLabel, cxMemo, cxDropDownEdit, cxGroupBox,
  Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxCalendar, dxSkinsCore,
  dxSkinscxPCPainter, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_WOR14 = class(TForm)
    lb_wk_nm: TLabel;
    lb_wk_penalty: TLabel;
    lb_wk_plus: TLabel;
    de_stDate: TcxDateEdit;
    Label13: TLabel;
    de_edDate: TcxDateEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    lb_wk_recommend: TLabel;
    cxGPL_List: TcxGridDBTableView;
    cxGPL_LV: TcxGridLevel;
    cxGPL: TcxGrid;
    cxGPL_ListColumn1: TcxGridDBColumn;
    cxGPL_ListColumn2: TcxGridDBColumn;
    cxGPL_ListColumn3: TcxGridDBColumn;
    cxGPL_ListColumn4: TcxGridDBColumn;
    Panel2: TPanel;
    cxButton4: TcxButton;
    Label1: TLabel;
    Label2: TLabel;
    pnlTitle: TPanel;
    BtnClose: TcxButton;
    Label6: TLabel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cb_Penalty_List: TcxComboBox;
    mmo_Penalty_Reason: TcxMemo;
    GbWorkerMC: TcxGroupBox;
    cxButton3: TcxButton;
    cxButton5: TcxButton;
    Label3: TLabel;
    Label4: TLabel;
    mmo_WK: TcxMemo;
    mmo_WK_Recommend: TcxMemo;
    cxButton6: TcxButton;
    Panel1: TPanel;
    cxLblActive: TLabel;
    cxGPL_ListColumn5: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure mmo_Penalty_ReasonKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Proc_Wk_Penalty_Info(Types: string);
  public
    { Public declarations }
		sWkSabun: string;
    pWOR14Dock : TUNDOCKMNG;
		procedure Proc_Init;
	end;

var
	Frm_WOR14: TFrm_WOR14;

implementation

{$R *.dfm}

uses xe_Func, xe_packet, xe_Msg, xe_xml, xe_Flash;

procedure TFrm_WOR14.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WOR14.FormCreate(Sender: TObject);
var
  Save: LongInt;
 i : Integer;
begin
  try
    // 날짜형식이 'yy/mm/dd'일경우 오류 발생 가능성으로 인해 자체 Display 포맷 변경
    for i := 0 to ComponentCount - 1 do
    begin
      if Components[i] is TcxDateEdit then
      begin
        (Components[i] as TcxDateEdit).Properties.DisplayFormat := 'yyyy/mm/dd';
        (Components[i] as TcxDateEdit).Properties.EditFormat    := 'yyyy/mm/dd';
      end;
    end;
  except
  end;

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
end;

procedure TFrm_WOR14.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_WOR14.FormDestroy(Sender: TObject);
begin
  Frm_WOR14 := Nil;
end;

procedure TFrm_WOR14.FormShow(Sender: TObject);
begin
  fSetFont(Frm_WOR14, GS_FONTNAME);

  Proc_Init;
end;

procedure TFrm_WOR14.mmo_Penalty_ReasonKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxMemo(sender).Text := Enc_Control(TcxMemo(sender).Text);
end;

procedure TFrm_WOR14.Proc_Init;
begin
	cb_Penalty_List.Properties.Items.Clear;
	de_stDate.Date := StrToDate(Date8to10(StartDateTime('yyyymmdd')));
	de_edDate.Date := de_stDate.Date + 1;

	if sWkSabun = '' then
	begin
		GMessagebox('잘못된 기사사번입니다.',CDMSI);
		Exit;
	end;

  mmo_Penalty_Reason.Clear;

	//그리드 초기화
	cxGPL_List.BeginUpdate;
	try
		cxGPL_List.DataController.SetRecordCount(0);
		cxGPL_List.Columns[0].DataBinding.ValueType := 'String';
		cxGPL_List.Columns[1].DataBinding.ValueType := 'String';
		cxGPL_List.Columns[2].DataBinding.ValueType := 'String';
		cxGPL_List.Columns[3].DataBinding.ValueType := 'String';
		cxGPL_List.Columns[4].DataBinding.ValueType := 'String';
	finally
		cxGPL_List.EndUpdate;
	end;

	Proc_Wk_Penalty_Info('1');  //기사정보 조회
	Proc_Wk_Penalty_Info('2');  //페널티 부과항목 조회
	cxButton1Click(cxButton1);
end;

procedure TFrm_WOR14.Proc_Wk_Penalty_Info(Types: string);
var
  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd, slList: TStringList;
	I, ErrCode, iRow, j: Integer;
begin
  if Types = '1' then
  begin
    Param := Types + '│' + sWkSabun;
    if not RequestBase(GetSel05('GETORDERTODAY', 'worker.put_bad_score', '100', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('기사 정보 로드 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;

    xdom := ComsDomDocument.Create;
    try
      xdom.loadXML(XmlData);

      lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');

      if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
      begin
        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
        ls_Rcrd := TStringList.Create;
        try
          for I := 0 to lst_Result.length - 1 do
          begin
            GetTextSeperationEx('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
            lb_wk_nm.Caption := '기사명 : ' + ls_Rcrd[0];
            lb_wk_penalty.Caption := '페널티 점수 : ' + ls_Rcrd[1];
            lb_wk_plus.Caption := '플러스 점수 : ' + ls_Rcrd[2];
            lb_wk_recommend.Caption := '추천 : ' + ls_Rcrd[3];
          end;
        finally
          ls_Rcrd.Free;
        end;
      end;
    finally
      xdom := Nil;
    end;
  end else
  if Types = '2' then
  begin
    Param := Types;
		if not RequestBase(GetSel05('GETORDERTODAY', 'worker.put_bad_score', '1000', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('페널티 부과항목 로드 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;
    xdom := ComsDomDocument.Create;
    try
      xdom.loadXML(XmlData);

      lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
      if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
      begin
        try
          lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
          ls_Rcrd := TStringList.Create;
          try
            for I := 0 to lst_Result.length - 1 do
            begin
              GetTextSeperationEx('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
              cb_Penalty_List.Properties.Items.Add(ls_Rcrd[0]+' ('+ ls_Rcrd[1] + '점)');
            end;
          finally
            ls_Rcrd.Free;
          end;
        finally
          cb_Penalty_List.ItemIndex := 0;
        end;
      end;
    finally
      xdom := Nil;
    end;
  end else
  if Types = '3' then
  begin
    Param := '2' + '│' + sWkSabun;
    Param := Param + '│' + StringReplace(de_stDate.Text,'-','',[rfReplaceAll]);
    Param := Param + '│' + StringReplace(de_edDate.Text,'-','',[rfReplaceAll]);

		slList := TStringList.Create;
		Screen.Cursor := crHourGlass;
		try
			if not RequestBasePaging(GetSel05('GETORDERTODAY', 'worker.get_plus_log', '1000', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('페널티 현황 로드 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				Screen.Cursor := crDefault;
				FreeAndNil(slList);
				Exit;
			end;
    
			xdom := ComsDomDocument.Create;
			try
				Frm_Flash.cxPBar1.Properties.Max := slList.Count;
				Frm_Flash.cxPBar1.Position := 0;
				cxGPL_List.DataController.SetRecordCount(0);
				cxGPL_List.BeginUpdate;
				for j := 0 to slList.Count - 1 do
				begin
					Frm_Flash.cxPBar1.Position := j + 1;
					Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
					Application.ProcessMessages;
					xmlData := slList.Strings[j];
					xdom.loadXML(XmlData);

					lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');

					if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
					begin
						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
						ls_Rcrd := TStringList.Create;
						try
							for I := 0 to lst_Result.length - 1 do
							begin
								GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
								iRow := cxGPL_List.DataController.AppendRecord;
								cxGPL_List.DataController.Values[iRow, 0] := ls_Rcrd[0];
								cxGPL_List.DataController.Values[iRow, 1] := ls_Rcrd[4];
								cxGPL_List.DataController.Values[iRow, 2] := ls_Rcrd[1] + '/' + ls_Rcrd[2];
								cxGPL_List.DataController.Values[iRow, 3] := ls_Rcrd[5];
								cxGPL_List.DataController.Values[iRow, 4] := ls_Rcrd[6];
							end;
						finally
							ls_Rcrd.Free;
						end;
					end;
				end;
			finally
				cxGPL_List.EndUpdate;
				xdom := nil;
				Frm_Flash.Hide;
				FreeAndNil(slList);
				Screen.Cursor := crDefault;
			end;
		except
			on e: exception do
			begin
				FreeAndNil(slList);
				Screen.Cursor := crDefault;
				Assert(False, E.Message);
			end;
		end;
	end;
end;

procedure TFrm_WOR14.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_WOR14.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_WOR14.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_WOR14.cxButton1Click(Sender: TObject);
begin
  Proc_Wk_Penalty_Info('3');  //페널티 현황 조회
end;

procedure TFrm_WOR14.cxButton2Click(Sender: TObject);
begin
  mmo_WK.Text := '';
  mmo_WK_Recommend.Text := '';

  GbWorkerMC.Left := 16;
  GbWorkerMC.Top  := 34;
  GbWorkerMC.Visible := True;
end;

procedure TFrm_WOR14.cxButton3Click(Sender: TObject);
var
  XmlData, Param, ErrMsg: string;
  ErrCode : Integer;
begin
  if mmo_WK.Text = '' then
  begin
    GMessagebox('기사메모를 입력하세요',CDMSE);
    Exit;
  end;

  if sWkSabun = '' then
  begin
    GMessagebox('기사사번이 잘못되었습니다.',CDMSE);
    Exit;
  end;

 	if Not func_EucKr_Check(mmo_WK, 0) then Exit;

  if Not pWOR14Dock.bUnDock then pWOR14Dock.HDNO  := GT_SEL_BRNO.HDNO;
  if Not pWOR14Dock.bUnDock then pWOR14Dock.BrNo  := GT_SEL_BRNO.brno;

  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := '3' + '│' + sWkSabun + '│' + pWOR14Dock.HDNO + '│' + pWOR14Dock.BrNo
  else
    Param := '3' + '│' + sWkSabun + '│' + GT_USERIF.HD + '│' + GT_USERIF.BR;

  Param := Param + '│' + '5' + '│' + mmo_WK.Text;

  if not RequestBase(GetCallable05('PUTRECOMMD', 'worker.put_recommend', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('기사 메모저장 중 오류가 발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

  GMessagebox(GetXmlResult(XmlData), CDMSE);
  GbWorkerMC.Visible := False;
end;

procedure TFrm_WOR14.cxButton4Click(Sender: TObject);
var
  XmlData, Param, ErrMsg: string;
  ErrCode : Integer;
begin
  if sWkSabun = '' then
  begin
    ShowMessage('기사사번이 잘못되었습니다.');
    Exit;
  end;

 	if Not func_EucKr_Check(mmo_Penalty_Reason, 0) then Exit;

	if Not pWOR14Dock.bUnDock then pWOR14Dock.HDNO  := GT_SEL_BRNO.HDNO;
  if Not pWOR14Dock.bUnDock then pWOR14Dock.BrNo  := GT_SEL_BRNO.brno;

  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := '1' + '│' + sWkSabun + '│' + pWOR14Dock.HDNO + '│' + pWOR14Dock.BrNo
  else
    Param := '1' + '│' + sWkSabun + '│' + GT_USERIF.HD + '│' + GT_USERIF.BR;

  Param := Param + '│' + IntToStr(cb_Penalty_List.ItemIndex+1);
  param := param + '│' + mmo_Penalty_Reason.Text;

  if not RequestBase(GetCallable05('PUTRECOMMD', 'worker.put_recommend', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('기사 패널티 부과 중 오류가 발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

  GMessagebox(GetXmlResult(XmlData), CDMSI);
  BtnCloseClick(Sender);
end;


procedure TFrm_WOR14.cxButton5Click(Sender: TObject);
var
  XmlData, Param, ErrMsg: string;
  ErrCode : Integer;
begin
  if sWkSabun = '' then
  begin
    GMessagebox('기사사번이 잘못되었습니다.',CDMSE);
    Exit;
  end;

  if mmo_WK_Recommend.Text = '' then
  begin
    GMessagebox('기사 추천메모를 입력하세요',CDMSE);
    Exit;
  end;

 	if Not func_EucKr_Check(mmo_WK_Recommend, 0) then Exit;

  if Not pWOR14Dock.bUnDock then pWOR14Dock.HDNO  := GT_SEL_BRNO.HDNO;
  if Not pWOR14Dock.bUnDock then pWOR14Dock.BrNo  := GT_SEL_BRNO.brno;

  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := '2' + '│' + sWkSabun + '│' + pWOR14Dock.HDNO + '│' + pWOR14Dock.BrNo
  else
		Param := '2' + '│' + sWkSabun + '│' + GT_USERIF.HD + '│' + GT_USERIF.BR;

  Param := Param + '│' + '4' + '│' + mmo_WK_Recommend.Text;

  if not RequestBase(GetCallable05('PUTRECOMMD', 'worker.put_recommend', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('기사 추천 중 오류가 발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

  GMessagebox(GetXmlResult(XmlData), CDMSI);
  GbWorkerMC.Visible := False;
end;

procedure TFrm_WOR14.cxButton6Click(Sender: TObject);
begin
  GbWorkerMC.Visible := False;
end;

end.
unit xe_WOR16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, MSXML2_TLB, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxLabel, Vcl.Menus,
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxButtons, Vcl.ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxSkinsCore, dxSkinscxPCPainter, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark,
  dxSkinOffice2007Silver;

type
  Tfrm_WOR16 = class(TForm)
    lb_wkname_title: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    de_stDate: TcxDateEdit;
    de_edDate: TcxDateEdit;
    cxButton1: TcxButton;
    cxGrd_Cancel_List: TcxGridDBTableView;
    cxGrdCancel_level: TcxGridLevel;
    cxGrd: TcxGrid;
    cxGrd_Cancel_ListColumn1: TcxGridDBColumn;
    cxGrd_Cancel_ListColumn2: TcxGridDBColumn;
    cxGrd_Cancel_ListColumn3: TcxGridDBColumn;
    cxGrd_Cancel_ListColumn4: TcxGridDBColumn;
    cxGrd_Cancel_ListColumn5: TcxGridDBColumn;
    cxGrd_Cancel_ListColumn6: TcxGridDBColumn;
    cxGrd_Cancel_ListColumn7: TcxGridDBColumn;
    cxGrd_Cancel_ListColumn8: TcxGridDBColumn;
    cxGrd_Cancel_ListColumn9: TcxGridDBColumn;
    pnlTitle: TPanel;
    BtnClose: TcxButton;
    cxLblActive: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lb_wkname_titleMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure GradientLabel2MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sWkSabun : String;
    procedure proc_init;
  end;

var
  frm_WOR16: Tfrm_WOR16;

implementation

{$R *.dfm}

uses xe_Func, xe_packet, xe_Msg, xe_GNL, xe_Flash;

procedure Tfrm_WOR16.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure Tfrm_WOR16.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrm_WOR16.FormCreate(Sender: TObject);
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

  if BorderStyle = bsNone then  Exit;

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

procedure Tfrm_WOR16.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure Tfrm_WOR16.FormDestroy(Sender: TObject);
begin
  Frm_WOR16 := Nil;
end;

procedure Tfrm_WOR16.FormShow(Sender: TObject);
begin
  fSetFont(Frm_WOR16, GS_FONTNAME);
end;

procedure Tfrm_WOR16.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_WOR16.proc_init;
var
  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	I, j, ErrCode: Integer;
begin
  lb_wkname_title.Caption := '기사정보 : ';

  //배차취소로그 날짜 셋팅
  de_stDate.Date := StrToDate(Date8to10(StartDateTime('yyyymmdd')));
  de_edDate.Date := de_stDate.Date + 1;

  //그리드 초기화
  cxGrd_Cancel_List.DataController.SetRecordCount(0);
  cxGrd_Cancel_List.BeginUpdate;
  try
    for I:=0 to 6 do
    begin
      cxGrd_Cancel_List.Columns[I].DataBinding.ValueType := 'String';
    end;
    cxGrd_Cancel_List.Columns[7].DataBinding.ValueType := 'Integer';
    cxGrd_Cancel_List.Columns[8].DataBinding.ValueType := 'Integer';

  finally
    cxGrd_Cancel_List.EndUpdate;
  end;

	Param := sWkSabun;

	try
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel05('GETPLUSINFO', 'worker.get_plus_info', '100', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('기사 정보 로드 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
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

					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

					ls_Rcrd := TStringList.Create;
					try
						for I := 0 to lst_Result.length - 1 do
						begin
							if lst_Result.item[i].attributes.getNamedItem('Value').Text = '' then
								Continue;
							GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							lb_wkname_title.Caption := '기사정보 : ' + ls_Rcrd[4] + '/' + ls_Rcrd[17];
						end;
					finally
						ls_Rcrd.Free;
					end;
				end;
			finally
				xdom := Nil;
			end;
		finally
			Frm_Flash.hide;
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

procedure Tfrm_WOR16.Panel1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_WOR16.Panel2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_WOR16.lb_wkname_titleMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_WOR16.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_WOR16.cxButton1Click(Sender: TObject);
var
  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	I, ErrCode, iRow: Integer;
	j : integer;
begin
	Param := sWkSabun;

	Param := Param + '│' + StringReplace(de_stDate.Text,'-','',[rfReplaceAll]);
  Param := Param + '│' + StringReplace(de_edDate.Text,'-','',[rfReplaceAll]);


	try
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel05('GETCANCELLIST', 'worker.get_baecha_cancel_list', '100', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('배차취소로그 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				FreeAndNil(slList);
				Exit;
			end;

			xdom := ComsDomDocument.Create;
			try
				Frm_Flash.cxPBar1.Properties.Max := slList.Count;
				Frm_Flash.cxPBar1.Position := 0;
				cxGrd_Cancel_List.DataController.SetRecordCount(0);
				cxGrd_Cancel_List.BeginUpdate;
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
								if lst_Result.item[i].attributes.getNamedItem('Value').Text = '' then Continue;

								GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
								iRow := cxGrd_Cancel_List.DataController.AppendRecord;
								cxGrd_Cancel_List.DataController.Values[iRow, 0] := IntToStr(iRow+1);
								cxGrd_Cancel_List.DataController.Values[iRow, 1] := ls_Rcrd[0];
								cxGrd_Cancel_List.DataController.Values[iRow, 2] := ls_Rcrd[1];
								cxGrd_Cancel_List.DataController.Values[iRow, 3] := ls_Rcrd[2];
								cxGrd_Cancel_List.DataController.Values[iRow, 4] := ls_Rcrd[3];
								cxGrd_Cancel_List.DataController.Values[iRow, 5] := ls_Rcrd[4];
								cxGrd_Cancel_List.DataController.Values[iRow, 6] := ls_Rcrd[5];
								cxGrd_Cancel_List.DataController.Values[iRow, 7] := StrToIntDef(ls_Rcrd[6],0);
								cxGrd_Cancel_List.DataController.Values[iRow, 8] := StrToIntDef(ls_Rcrd[7],0);
							end;
						finally
							ls_Rcrd.Free;
						end;
					end;
				end;
			finally
				cxGrd_Cancel_List.EndUpdate;
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

procedure Tfrm_WOR16.GradientLabel2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

end.

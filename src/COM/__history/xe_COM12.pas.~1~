unit xe_COM12;

interface

uses
	Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, xe_GNL, MSXML2_TLB,
  Dialogs, IniFiles, clipbrd, cxGraphics, cxControls, cxLookAndFeels, dxCore,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxImageComboBox,
  cxCurrencyEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.ExtCtrls, cxContainer, cxLabel, dxSkinsCore,
  dxSkinscxPCPainter, Vcl.OleCtrls, WMPLib_TLB, cxGroupBox,
  cxButtonEdit, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver, cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  TFrm_COM12 = class(TForm)
    pnlTitle: TPanel;
    btnClose: TcxButton;
    cxLblActive: TLabel;
    cxGrid2: TcxGrid;
    cxShareCall: TcxGridDBTableView;
    cxShareCallColumn1: TcxGridDBColumn;
    cxShareCallColumn2: TcxGridDBColumn;
    cxShareCallColumn3: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxShareCallColumn4: TcxGridDBColumn;
    cxShareCallColumn5: TcxGridDBColumn;
    cxShareCallColumn6: TcxGridDBColumn;
    tmrShareCall: TTimer;
    cxGroupBox1: TcxGroupBox;
    cxButton7: TcxButton;
    cbbShareCall: TcxComboBox;
    lblShareCallTime: TcxLabel;
    cbbSido: TcxComboBox;
    cbbGugun: TcxComboBox;
    cxLabel6: TcxLabel;
    lblShareCallCnt: TcxLabel;
    cxShareCallColumn7: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cbbShareCallPropertiesChange(Sender: TObject);
    procedure tmrShareCallTimer(Sender: TObject);
    procedure cbbSidoPropertiesChange(Sender: TObject);
    procedure cxShareCallDataControllerSortingChanged(Sender: TObject);
    procedure cxShareCallColumnHeaderClick(Sender: TcxGridTableView; AColumn: TcxGridColumn);
    procedure cxShareCallColumnPosChanged(Sender: TcxGridTableView; AColumn: TcxGridColumn);
    procedure cxShareCallColumnSizeChanged(Sender: TcxGridTableView; AColumn: TcxGridColumn);
  private
    AIndex : Integer;
    procedure proc_Share;
		{ Private declarations }
	public
		{ Public declarations }
		procedure Proc_init;
  end;

var
  Frm_COM12: TFrm_COM12;

implementation

{$R *.dfm}

uses Main,  xe_Func, xe_Msg, xe_Lib, xe_xml, xe_Dm, xe_Query, xe_packet, xe_Flash;

procedure TFrm_COM12.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_COM12.cbbShareCallPropertiesChange(Sender: TObject);
var
  Sec: Integer;
begin
  SetDebugeWrite('Main.cbbShareCallPropertiesChange');
  try
    Sec := StrToIntDef(cbbShareCall.Text, -1);

    if (Sec < 0) then
    begin
      lblShareCallTime.Visible := False;
      tmrShareCall.Tag := -1;
      tmrShareCall.Enabled := False;
      Exit;
    end;

    tmrShareCall.Tag := Sec;
    tmrShareCall.Enabled := not (Sec = -1);
    lblShareCallTime.Visible := not (Sec = -1);
    lblShareCallTime.Caption := IntToStr(Sec);
    cxButton7.Click;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_COM12.cbbSidoPropertiesChange(Sender: TObject);
begin
  SetDebugeWrite('Main.cbbSidoPropertiesChange');
  try
    if GONGuCALLYN = 'y' then
      Frm_Main.RequestDataArea(cbbGugun, cbbSido.Text, '', True);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_COM12.cxButton7Click(Sender: TObject);
begin
  SetDebugeWrite('Main.cxButton7Click');
  proc_Share;
  if cbbShareCall.ItemIndex > 0 then
    lblShareCallTime.Caption := cbbShareCall.Text;
end;

procedure TFrm_COM12.cxShareCallColumnHeaderClick(Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_COM12.cxShareCallColumnPosChanged(Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  SetDebugeWrite('Main.cxShareCallColumnPosChanged');
  SaveGridSizeEnv(Sender, GS_EnvFile);
end;

procedure TFrm_COM12.cxShareCallColumnSizeChanged(Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  SaveGridSizeEnv(Sender, GS_EnvFile);
end;

procedure TFrm_COM12.cxShareCallDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxShareCall, AIndex, GS_SortNoChange);
end;

procedure TFrm_COM12.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_COM12.proc_Share;
var
  xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
  ls_TxQry, ls_TxLoad, rv_str, sQueryTemp : string;
  ls_rxxml, ls_MSG_Err : String;
  ls_Rcrd, slReceive: TStringList;
  ErrCode, iRow, i, iCol0, iCol1, iCol2, iCol3, iCol4, iCol5, iCol6 : integer;
  sWhere, sOrderby : string;
begin
  SetDebugeWrite('Main.proc_Share');
  try
    sWhere := '';
    if GONGuCALLYN = 'y' then
    begin
      if cbbSido.ItemIndex <> 0  then sWhere := ' AND A.CONF_AREA = ''' + cbbSido.Text + ''' ';
      if cbbGugun.ItemIndex <> 0 then sWhere := sWhere + ' AND A.CONF_AREA2 = ''' + cbbGugun.text + ''' ';
    end;
    sOrderby := GS_EnvFile.ReadString('WORKER_TR', 'ORDERBY', '0');

    fGet_BlowFish_Query(GSQ_SHERED_INFO, sQueryTemp);
    if Copy(sOrderby,1,1) = '0' then
    begin
      ls_TxQry := Format(sQueryTemp, [En_Coding(GT_USERIF.ID), GT_USERIF.SA, sWhere, 'ORDER BY RNUM ' + Copy(sOrderby,2,Length(sOrderby)-1)])
    end else
    if Copy(sOrderby,1,1) = '2' then
    begin
      ls_TxQry := Format(sQueryTemp, [En_Coding(GT_USERIF.ID), GT_USERIF.SA, sWhere, 'ORDER BY AREA ' + Copy(sOrderby,2,Length(sOrderby)-1)])
    end;

    ls_TxLoad := GetSel01('SRCH0001', ls_TxQry);

    cxShareCall.DataController.SetRecordCount(0);
    lblShareCallCnt.Caption := '0';
    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          if (0 < GetXmlRecordCount(ls_rxxml)) then
          begin
            xdom := ComsDomDocument.Create;
            try
              if not xdom.loadXML(ls_rxxml) then Exit;

              ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
              if ('0000' = ls_MSG_Err) then
              begin
                lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                cxShareCall.BeginUpdate;
                ls_Rcrd := TStringList.Create;
                try
                  iCol0 := cxShareCall.GetColumnByFieldName('순번').Index;
                  iCol1 := cxShareCall.GetColumnByFieldName('기호').Index;
                  iCol2 := cxShareCall.GetColumnByFieldName('최초접수시간').Index;
                  iCol3 := cxShareCall.GetColumnByFieldName('출발지').Index;
                  iCol4 := cxShareCall.GetColumnByFieldName('도착지').Index;
                  iCol5 := cxShareCall.GetColumnByFieldName('요금').Index;
                  iCol6 := cxShareCall.GetColumnByFieldName('접수시간').Index;
                  for i := 0 to lst_Result.length - 1 do
                  begin
                    GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                    iRow := cxShareCall.DataController.AppendRecord;

                    cxShareCall.DataController.Values[iRow, iCol0] := StrToIntDef(ls_Rcrd[0], 0);
                    cxShareCall.DataController.Values[iRow, iCol1] := ls_Rcrd[1];
                    cxShareCall.DataController.Values[iRow, iCol2] := GetStrToDateTimeGStr(ls_Rcrd[6], 1);
                    cxShareCall.DataController.Values[iRow, iCol3] := ls_Rcrd[2];
                    cxShareCall.DataController.Values[iRow, iCol4] := ls_Rcrd[3];
                    cxShareCall.DataController.Values[iRow, iCol5] := ls_Rcrd[4];
                    cxShareCall.DataController.Values[iRow, iCol6] := GetStrToDateTimeGStr(ls_Rcrd[5], 1);
                  end;
                finally
                  ls_Rcrd.Free;
                end;
                cxShareCall.EndUpdate;
                lblShareCallCnt.Caption := FormatFloat('#,##0', cxShareCall.DataController.RecordCount);

                if AIndex < 0 then AIndex := iCol2;
                cxShareCall.Columns[AIndex].SortOrder := soDescending;
                cxShareCall.Columns[AIndex].SortIndex := 0;
                gfSetIndexNo(cxShareCall, AIndex, GS_SortNoChange);
              end;
            finally
              xdom := Nil;
            end;
          end;
        end;
      end;
    finally
      Frm_Flash.Hide;
      FreeAndNil(slReceive);
    end;
  except
    on E: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_COM12.tmrShareCallTimer(Sender: TObject);
var
  Sec: Integer;
begin
  SetDebugeWrite('Main.tmrShareCallTimer');
  try
    Sec := StrToIntDef(lblShareCallTime.Caption, 0);
    Dec(Sec);

    if Sec < 0 then
    begin
      cxButton7.Click;
      Sec := tmrShareCall.Tag;
    end;

    lblShareCallTime.Caption := IntToStr(Sec);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_COM12.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_COM12.FormCreate(Sender: TObject);
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

	Proc_init;
end;

procedure TFrm_COM12.Proc_init;
var
	i : Integer;
begin
  for i := 0 to cxShareCall.ColumnCount - 1 do
		cxShareCall.Columns[i].DataBinding.ValueType := 'String';

  cxShareCall.Columns[0].DataBinding.ValueType := 'Integer';
  cxShareCall.Columns[5].DataBinding.ValueType := 'Integer';

  // 2010.12.14 공유콜 기호컬럼 비가시화
  cxShareCall.Columns[1].Visible := False;

  AIndex := -1;
end;

procedure TFrm_COM12.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_COM12.FormDestroy(Sender: TObject);
begin
  Frm_COM12 := Nil;
end;

procedure TFrm_COM12.FormShow(Sender: TObject);
begin
  fSetFont(Frm_COM12, GS_FONTNAME);
  fSetSkin(Frm_COM12);

  InitGridSizeEnv(cxShareCall);
  LoadGridSizeEnv(cxShareCall, GS_EnvFile);
end;

procedure TFrm_COM12.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

end.


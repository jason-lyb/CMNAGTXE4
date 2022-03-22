unit xe_CMP016;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MSXML2_TLB, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxLabel, cxCheckBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, GradientLabel,
  Vcl.ExtCtrls, cxGroupBox, dxSkinsCore, dxSkinscxPCPainter, dxSkinOffice2010Silver, dxSkinSharp, dxDateRanges, dxSkinMetropolisDark,
  dxSkinOffice2007Silver;

type
  TFrm_CMP016 = class(TForm)
    PnlMain: TPanel;
    lbl65: TcxLabel;
    lblBrSosok: TcxLabel;
    btnUpdate: TcxButton;
    btn1: TcxButton;
    cxGrid9: TcxGrid;
    cxViewKeyPhone: TcxGridBandedTableView;
    cxGridBandedColumn1: TcxGridBandedColumn;
    cxGridBandedColumn2: TcxGridBandedColumn;
    cxGridBandedColumn3: TcxGridBandedColumn;
    cxGridBandedColumn4: TcxGridBandedColumn;
    cxGridBandedColumn5: TcxGridBandedColumn;
    cxGridLevel2: TcxGridLevel;
    cxGridBandedColumn6: TcxGridBandedColumn;
    cxGridBandedColumn7: TcxGridBandedColumn;
    PnlTitle: TPanel;
    btnClose: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Shape1: TShape;
    cxLblActive: TLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure cxGridBandedColumn2PropertiesEditValueChanged(
      Sender: TObject);
    procedure cxGridBandedColumn3PropertiesEditValueChanged(
      Sender: TObject);
    procedure cxGridBandedColumn4PropertiesEditValueChanged(
      Sender: TObject);
    procedure cxGridBandedColumn5PropertiesEditValueChanged(
      Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
		{ Private declarations }
		FBranchCode: string;
		procedure proc_BrKeynumber_Search(ABRNO : string);
	public
		{ Public declarations }
		procedure proc_init;
		procedure SetBrCode(ACode, AName: string);
	end;

var
	Frm_CMP016: TFrm_CMP016;

implementation



{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_xml, xe_packet, xe_Msg;

{ Tfrm_CMP016 }

procedure TFrm_CMP016.proc_init;
var
  I : Integer;
begin
  try
		for I := 0 to cxViewKeyPhone.ColumnCount - 1 do
		begin
			cxViewKeyPhone.Columns[i].DataBinding.ValueType := 'String';
		end;
	except
	end;
end;

procedure TFrm_CMP016.SetBrCode(ACode, AName: string);
begin
	FBranchCode := ACode;

	lblBrSosok.Caption := Format('[%s] %s', [ACode, AName]);
	proc_BrKeynumber_Search(FBranchCode);
end;

procedure TFrm_CMP016.btnCloseClick(Sender: TObject);
begin
	Close;
end;

procedure TFrm_CMP016.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_CMP016.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_CMP016.FormCreate(Sender: TObject);
var
  Save: Integer;
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
	proc_init;
end;

procedure TFrm_CMP016.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_CMP016.FormDestroy(Sender: TObject);
begin
  Frm_CMP016 := Nil;
end;

procedure TFrm_CMP016.FormShow(Sender: TObject);
begin
  fSetFont(Frm_CMP016, GS_FONTNAME);
end;

procedure TFrm_CMP016.btnUpdateClick(Sender: TObject);
var
	XmlData, Param, ErrMsg : string;
	i, errcode : Integer;
begin
	try
		Param := '';
		if cxViewKeyPhone.DataController.RecordCount < 1 then
		begin
			ShowMessage('조회된 내용이 없습니다.');
			exit;
		end;
		Param := inttostr(cxViewKeyPhone.DataController.RecordCount);
		for i := 0 to cxViewKeyPhone.DataController.RecordCount - 1 do
		begin
			Param := Param +  '│' + CallToStr(cxViewKeyPhone.DataController.Values[i,0])
										 +  '│' + cxViewKeyPhone.DataController.Values[i,1]
										 +  '│' + cxViewKeyPhone.DataController.Values[i,2];
			if cxViewKeyPhone.DataController.Values[i,3] = True then
				Param := Param +  '│' + 'y'
			else
				Param := Param +  '│' + 'n';
			if cxViewKeyPhone.DataController.Values[i,5] = True then
				Param := Param +  '│' + 'y'
			else
				Param := Param +  '│' + 'n';
			if cxViewKeyPhone.DataController.Values[i,4] = True then
				Param := Param +  '│' + 'y'
			else
				Param := Param +  '│' + 'n';
			if cxViewKeyPhone.DataController.Values[i,6] = True then
				Param := Param +  '│' + 'y'
			else
				Param := Param +  '│' + 'n';
		end;
		if not RequestBase(GetCallable05('MNG_BRANCH', 'MNG_BRANCH.SET_TAX_KEYNUM', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSI);
			Exit;
		end;

		btn1.Click;
		ShowMessage('법인오더 기사원천징수 설정이 완료되었습니다.');
	except
		ShowMessage('법인오더 기사원천징수 설정 중 오류 발생');
	end;
end;

procedure TFrm_CMP016.btn1Click(Sender: TObject);
begin
	proc_BrKeynumber_Search(FBranchCode);
end;

procedure TFrm_CMP016.proc_BrKeynumber_Search(ABRNO: string);
var
	XmlData, Param, ErrMsg : string;
	xdom: msDomDocument;
	lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd : TStringList;
	i, ErrCode, iRow : Integer;
begin
	try
		Param := ABRNO;
		if not RequestBase(GetSel05('MNG_BRANCH', 'MNG_BRANCH.LIST_TAX_KEYNUM', '1000', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('법인오더 기사원천징수 설정 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Exit;
		end;

		xdom := ComsDomDocument.Create;
    try
		  xdom.loadXML(XmlData);
		  lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
		  cxViewKeyPhone.DataController.SetRecordCount(0);
		  if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
		  begin
		  	lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
		  	ls_Rcrd := TStringList.Create;
		  	cxViewKeyPhone.BeginUpdate;
		  	try
		  		for I := 0 to lst_Result.length - 1 do
		  		begin
		  			GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
		  			iRow := cxViewKeyPhone.DataController.AppendRecord;
		  			cxViewKeyPhone.DataController.Values[iRow, 0] := strtoCall(ls_Rcrd[1]);
		  			cxViewKeyPhone.DataController.Values[iRow, 1] := ls_Rcrd[2];
		  			cxViewKeyPhone.DataController.Values[iRow, 2] := ls_Rcrd[3];
		  			if ls_Rcrd[4] = 'y' then
		  				cxViewKeyPhone.DataController.Values[iRow, 3] := True
		  			else
		  				cxViewKeyPhone.DataController.Values[iRow, 3] := False;
		  			if ls_Rcrd[6] = 'y' then
		  				cxViewKeyPhone.DataController.Values[iRow, 4] := True
		  			else
		  				cxViewKeyPhone.DataController.Values[iRow, 4] := False;
		  			if ls_Rcrd[5] = 'y' then
		  				cxViewKeyPhone.DataController.Values[iRow, 5] := True
		  			else
		  				cxViewKeyPhone.DataController.Values[iRow, 5] := False;
		  			if ls_Rcrd[7] = 'y' then
		  				cxViewKeyPhone.DataController.Values[iRow, 6] := True
		  			else
		  				cxViewKeyPhone.DataController.Values[iRow, 6] := False;
		  		end;
//	  			cbbCustCNTmonth.ItemIndex := cbbCustCNTmonth.Properties.Items.IndexOf(ls_Rcrd[2]);
		  	finally
		  		cxViewKeyPhone.EndUpdate;
		  		ls_Rcrd.Free;
		  	end;
		  end;
    finally
      xdom := Nil;
    end;
	except
    on e: exception do
    begin
			Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CMP016.PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_CMP016.cxGridBandedColumn2PropertiesEditValueChanged(
  Sender: TObject);
var
	Row: Integer;
begin
	Row := cxViewKeyPhone.DataController.FocusedRecordIndex;

	IF cxViewKeyPhone.DataController.Values[Row, 3] = True then
	begin
		cxViewKeyPhone.DataController.Values[Row, 3] := False;
	end else
	begin
		cxViewKeyPhone.DataController.Values[Row, 3] := True;
	end;
end;

procedure TFrm_CMP016.cxGridBandedColumn3PropertiesEditValueChanged(
  Sender: TObject);
var
	Row: Integer;
begin
	Row := cxViewKeyPhone.DataController.FocusedRecordIndex;

	IF cxViewKeyPhone.DataController.Values[Row, 4] = True then
	begin
		cxViewKeyPhone.DataController.Values[Row, 4] := False;
	end else
	begin
		cxViewKeyPhone.DataController.Values[Row, 4] := True;
	end;
end;

procedure TFrm_CMP016.cxGridBandedColumn4PropertiesEditValueChanged(
  Sender: TObject);
var
	Row: Integer;
begin
	Row := cxViewKeyPhone.DataController.FocusedRecordIndex;

	IF cxViewKeyPhone.DataController.Values[Row, 5] = True then
	begin
		cxViewKeyPhone.DataController.Values[Row, 5] := False;
	end else
	begin
		cxViewKeyPhone.DataController.Values[Row, 5] := True;
	end;
end;

procedure TFrm_CMP016.cxGridBandedColumn5PropertiesEditValueChanged(
  Sender: TObject);
var
	Row: Integer;
begin
	Row := cxViewKeyPhone.DataController.FocusedRecordIndex;

	IF cxViewKeyPhone.DataController.Values[Row, 6] = True then
	begin
		cxViewKeyPhone.DataController.Values[Row, 6] := False;
	end	else
	begin
		cxViewKeyPhone.DataController.Values[Row, 6] := True;
	end;
end;

end.

unit xe_CUT014;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, MSXML2_TLB,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  Vcl.Menus, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel,
  cxImageComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, cxGroupBox, cxTextEdit, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxGDIPlusClasses;

type
  TFrm_CUT014 = class(TForm)
    Panel1: TPanel;
    cxGroupBox1: TcxGroupBox;
    Shape4: TShape;
    cxLabel1: TcxLabel;
    btnBlockWkSearch: TcxButton;
    btnBlockWkReg: TcxButton;
    btnBlockWkDel: TcxButton;
    ctxGrid: TcxGrid;
    cxBlockWKList: TcxGridDBTableView;
    cxBlockWKListColumn1: TcxGridDBColumn;
    cxBlockWKListColumn2: TcxGridDBColumn;
    cxBlockWKListColumn3: TcxGridDBColumn;
    cxWkList: TcxGridLevel;
    cxBlockWKListColumn4: TcxGridDBColumn;
    edtWkSabun: TcxTextEdit;
    cxBlockWKListColumn5: TcxGridDBColumn;
    cxBlockWKListColumn6: TcxGridDBColumn;
    cxBlockWKListColumn7: TcxGridDBColumn;
    cxBlockWKListColumn8: TcxGridDBColumn;
    cxBlockWKListColumn9: TcxGridDBColumn;
    cxBlockWKListColumn10: TcxGridDBColumn;
    cxBlockWKListColumn11: TcxGridDBColumn;
    cxBlockWKListColumn12: TcxGridDBColumn;
    pnlTitle: TPanel;
    cxLblActive: TLabel;
    btnClose: TcxButton;
    img_Kakao: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCloseClick(Sender: TObject);
    procedure btnBlockWkRegClick(Sender: TObject);
    procedure btnBlockWkSearchClick(Sender: TObject);
    procedure btnBlockWkDelClick(Sender: TObject);
    procedure cxBlockWKListCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure proc_BlockWKReg;
    procedure proc_BlockWKDel;

  public
    { Public declarations }
		ACbCuGb, AGuBun, AHdNo, ABrNo, AKeynum, ACuseq, AWkSabun, AMemo, AKDSabun, AKDName: string;
		procedure proc_Init;
		procedure proc_BlockWKSearch(sGubun : String; iGubun : integer);
  end;

var
  Frm_CUT014: TFrm_CUT014;

implementation

{$R *.dfm}

uses xe_Func, xe_packet, xe_Msg, xe_GNL, xe_Flash;

procedure TFrm_CUT014.btnBlockWkDelClick(Sender: TObject);
begin
	if edtWkSabun.Text = '' then
  begin
    GMessageBox('��縦 �����ϼ���.', CDMSE);
    Exit;
  end;
  cxGroupBox1.Enabled := False;
	proc_BlockWKDel;
end;

procedure TFrm_CUT014.btnBlockWkRegClick(Sender: TObject);
begin
	if edtWkSabun.Text = '' then
  begin
    GMessageBox('������ ��簡 �����ϴ�.', CDMSE);
    Exit;
  end;
  cxGroupBox1.Enabled := False;
	proc_BlockWKReg;
end;

procedure TFrm_CUT014.btnBlockWkSearchClick(Sender: TObject);
begin
	if edtWkSabun.Text <> '' then
    proc_BlockWKSearch('CUT014', 0)
  else
		proc_BlockWKSearch('CUT014', 1);
end;

procedure TFrm_CUT014.btnCloseClick(Sender: TObject);
begin
	Close;
end;

procedure TFrm_CUT014.cxBlockWKListCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var iRow, iTmp : integer;
	sTmp : string;
begin
	iRow := cxBlockWKList.DataController.FocusedRecordIndex;

	iTmp := cxBlockWKList.GetColumnByFieldName('���Ҽ�����').Index;
	sTmp := cxBlockWKList.DataController.Values[iRow, iTmp];
	iTmp := cxBlockWKList.GetColumnByFieldName('����').Index;
	edtWkSabun.Text := cxBlockWKList.DataController.Values[iRow, iTmp];
	if sTmp = 'īī���븮' then
	begin
		iTmp := cxBlockWKList.GetColumnByFieldName('�����').Index;
		AKDSabun := cxBlockWKList.DataController.Values[iRow, iTmp];
		AKDNAme := edtWkSabun.Text;
		AWkSabun := '';
		img_Kakao.Visible := True;
	end else
	begin
		iTmp := cxBlockWKList.GetColumnByFieldName('�����').Index;
		AWkSabun := cxBlockWKList.DataController.Values[iRow, iTmp];
		AKDSabun := '';
		AKDNAme  := '';
		img_Kakao.Visible := False;
	end;
	cxLabel1.Caption := '�����ұ���';
end;

procedure TFrm_CUT014.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_CUT014.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_CUT014.FormCreate(Sender: TObject);
var
  Save: LongInt; // ��Ÿ��Ʋ ���ſ�.
begin
  // �� Ÿ��Ʋ ����..
  if BorderStyle = bsNone then
    Exit;
  Save := GetWindowLong(Handle, gwl_Style);
  if (Save and ws_Caption) = ws_Caption then
  begin
    case BorderStyle of
      bsSingle, bsSizeable:
        SetWindowLong(Handle, gwl_Style, Save and (not (ws_Caption)) or ws_border);
    end;
  end;
  proc_Init;
end;

procedure TFrm_CUT014.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_CUT014.FormDestroy(Sender: TObject);
begin
  Frm_CUT014 := Nil;
end;

procedure TFrm_CUT014.FormShow(Sender: TObject);
begin
  fSetFont(Frm_CUT014, GS_FONTNAME);
  fSetSkin(Frm_CUT014);
end;

procedure TFrm_CUT014.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_CUT014.proc_BlockWKDel;
var
	XmlData, Param: string;
	ErrCode, iRow, iKRow, iWkSabun: integer;
  ErrMsg: string;
begin
	if cxBlockWKList.DataController.RecordCount < 1 then 
	begin
		cxGroupBox1.Enabled := True;
		exit;
	end;

  iWkSabun := cxBlockWKList.GetColumnByFieldName('�����').Index;
  iRow := cxBlockWKList.DataController.FindRecordIndexByText(0, iWkSabun, AWkSabun, False, True, True);
	iKRow := cxBlockWKList.DataController.FindRecordIndexByText(0, iWkSabun, AKDSabun, False, True, True);
	if (iRow < 0) and (iKRow < 0) then
  begin
		GMessageBox('���� ��ϵ� ��� �ƴմϴ�.', CDMSE);
		cxGroupBox1.Enabled := True;
    Exit;
  end;
  Try
    Param := '';
    Param :=  'REMOVE';
    Param :=  Param + '��' + ACbCuGb;
    Param :=  Param + '��' + AHdNo;
    Param :=  Param + '��' + ABrNo;

    Param :=  Param + '��' + AKeynum;
    Param :=  Param + '��' + ACuseq;

    Param :=  Param + '��' + AWkSabun;
		Param :=  Param + '��' + AMemo;
		Param :=  Param + '��' + AKDSabun; //KD ��� �߰� 20210820 KHS
		Param :=  Param + '��' + AKDName; //KD �̸� �߰� 20210820 KHS

    if not RequestBase(GetCallable05('SET_CUST_WK_BLOCK', 'MNG_CUST.SET_CUST_WK_BLOCK', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
			cxGroupBox1.Enabled := True;
      Exit;
    end;
    GMessageBox('������ �Ϸ�Ǿ����ϴ�.', CDMSI);
	Except
		begin
			GMessageBox('������� �� ������ �߻��Ͽ����ϴ�.', CDMSE);
			cxGroupBox1.Enabled := False;
		end;
	End;
	proc_BlockWKSearch('CUT014', 1);
end;

procedure TFrm_CUT014.proc_BlockWKReg;
var
	XmlData, Param: string;
  ErrCode, iRow, iWkSabun: integer;
  ErrMsg: string;
begin
	iWkSabun := cxBlockWKList.GetColumnByFieldName('�����').Index;
  iRow := cxBlockWKList.DataController.FindRecordIndexByText(0, iWkSabun, AWkSabun, False, True, True);
  if iRow > -1 then
  begin
    GMessageBox('�̹� ���ܵ�ϵ� ����Դϴ�.', CDMSE);
    cxGroupBox1.Enabled := True;
    Exit;
  end;
  Try
    Param :=  'SAVE';
    Param :=  Param + '��' + ACbCuGb;
    Param :=  Param + '��' + AHdNo;
    Param :=  Param + '��' + ABrNo;

    Param :=  Param + '��' + AKeynum;
    Param :=  Param + '��' + ACuseq;

    Param :=  Param + '��' + AWkSabun;
    Param :=  Param + '��' + AMemo;
		Param :=  Param + '��' + AKDSabun; //KD ��� �߰� 20210820 KHS
		Param :=  Param + '��' + AKDName; //KD �̸� �߰� 20210820 KHS

    if not RequestBase(GetCallable05('SET_CUST_WK_BLOCK', 'MNG_CUST.SET_CUST_WK_BLOCK', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
			cxGroupBox1.Enabled := True;
      Exit;
    end;
    GMessageBox('������ �Ϸ�Ǿ����ϴ�.', CDMSI);
  Except
    begin
      cxGroupBox1.Enabled := True;
      GMessageBox('������� ��� �� ������ �߻��Ͽ����ϴ�.', CDMSE);
      exit;
    end;
  End;
  proc_BlockWKSearch('CUT014', 1);
end;

procedure TFrm_CUT014.proc_BlockWKSearch(sGubun : String; iGubun : integer);
var
	XmlData, Param: string;
  ErrCode: integer;
  ErrMsg: string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd, slList: TStringList;
	I, iRow, j : Integer;
begin
	Try
    cxGroupBox1.Enabled := False;
    if (sGubun = 'CUT011') or (sGubun = 'CUT009') then
    begin
      btnBlockWkReg.Enabled := False;
      cxLabel1.Caption := '�����ұ���';
    end else
    if (sGubun = 'CUT014') then
    else
    begin
      btnBlockWkReg.Enabled := True;
      cxLabel1.Caption := '�����ұ���';
    end;

    Param := '';
    Param :=  AHdNo;
    Param :=  Param + '��' + ABrNo;

    Param :=  Param + '��' + AKeynum;
    Param :=  Param + '��' + ACuseq;
    if iGubun = 0 then
      Param :=  Param + '��' + AWkSabun
    else if iGubun = 1 then
      Param :=  Param + '��' + '';

		slList := TStringList.Create;
		Screen.Cursor := crHourGlass;

		if not RequestBasePaging(GetSel05('GET_CUST_WK_BLOCK_LIST', 'MNG_CUST.GET_CUST_WK_BLOCK_LIST', '1000', Param), slList, ErrCode, ErrMsg) then
		begin
      GMessagebox(Format('���ܱ�� ��ȸ  �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			cxGroupBox1.Enabled := True;
			FreeAndNil(slList);
      Exit;
    end;

		xdom := ComsDomDocument.Create;
		try
			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			cxBlockWKList.DataController.SetRecordCount(0);

			if ACbCuGb = '2' then //����
				cxBlockWKList.Columns[5].Visible := true
			else
				cxBlockWKList.Columns[5].Visible := False;
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
					cxBlockWKList.BeginUpdate;

					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					ls_Rcrd := TStringList.Create;
					try
						for I := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx2('��', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
							Application.ProcessMessages;
						{ ls_Rcrd[ 0];   //��������
							ls_Rcrd[ 1];   //�����ڵ�
							ls_Rcrd[ 2];   //�����ڵ�
							ls_Rcrd[ 3];   //��ǥ��ȣ
							ls_Rcrd[ 4];   //���ܵ����
							ls_Rcrd[ 5];   //�޸�
							ls_Rcrd[ 6];   //����ֹι�ȣ
							ls_Rcrd[ 7];   //�����
							ls_Rcrd[ 8];   //����
							ls_Rcrd[ 9];   //���θ�
							ls_Rcrd[10];   //���Ҽ�����             }

							iRow := cxBlockWKList.DataController.AppendRecord; // 1 Record �߰�
							cxBlockWKList.DataController.Values[iRow, 0] := i+1; //����

							cxBlockWKList.DataController.Values[iRow, 1] := ls_Rcrd[10];   //���Ҽ�����
							cxBlockWKList.DataController.Values[iRow, 2] := ls_Rcrd[ 7];   //�����
							cxBlockWKList.DataController.Values[iRow, 3] := ls_Rcrd[ 8];   //����
							cxBlockWKList.DataController.Values[iRow, 4] := ls_Rcrd[ 4];   //���ܵ����
							cxBlockWKList.DataController.Values[iRow, 5] := ls_Rcrd[ 9];   //���θ�
							cxBlockWKList.DataController.Values[iRow, 6] := ls_Rcrd[ 6];   //����ֹι�ȣ
							cxBlockWKList.DataController.Values[iRow, 7] := ls_Rcrd[ 5];   //�޸�
							cxBlockWKList.DataController.Values[iRow, 8] := ls_Rcrd[ 0];   //��������
							cxBlockWKList.DataController.Values[iRow, 9] := ls_Rcrd[ 1];   //�����ڵ�
							cxBlockWKList.DataController.Values[iRow,10] := ls_Rcrd[ 2];   //�����ڵ�
							cxBlockWKList.DataController.Values[iRow,11] := ls_Rcrd[ 3];   //��ǥ��ȣ
						end;
					finally
						FreeAndNil(ls_Rcrd);
					end;
					cxBlockWKList.EndUpdate;
				end;
			end;
		finally
			xdom := Nil;
			cxGroupBox1.Enabled := True;
			btnBlockWkDel.Enabled := True;
			Frm_Flash.hide;    
			Screen.Cursor := crDefault;
			FreeAndNil(slList);
		end;
		if cxBlockWKList.DataController.RecordCount = 0 then
		begin
			btnBlockWkDel.Enabled := False;
		end;
	except
		on E: Exception do
		begin
			cxGroupBox1.Enabled := True;
			GMessageBox('������� ��� �� ������ �߻��Ͽ����ϴ�.', CDMSE);
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
			Frm_Flash.Hide;
		end;
	end;
end;

procedure TFrm_CUT014.proc_Init;
var i : integer;
begin
	ACbCuGb := ''; AGuBun := ''; AHdNo := ''; ABrNo := '';
	AKeynum := ''; ACuseq := ''; AWkSabun := ''; AMemo := ''; AKDSabun := ''; AKDName := '';
	for i := 1 to cxBlockWKList.ColumnCount - 1 do
		cxBlockWKList.Columns[i].DataBinding.ValueType := 'String';

	cxBlockWKList.Columns[0].DataBinding.ValueType := 'Integer';
  cxBlockWKList.DataController.SetRecordCount(0); // Record �ʱ�ȭ.

  edtWkSabun.Text := '';
end;

end.

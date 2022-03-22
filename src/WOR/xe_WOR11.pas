unit xe_WOR11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.Menus, cxGroupBox, Vcl.ExtCtrls, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxLabel, dxSkinsCore,
  dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_WOR11 = class(TForm)
    lbl1: TcxLabel;
    lbl2: TcxLabel;
    edtPickupNo: TcxTextEdit;
    edtInDate: TcxTextEdit;
    lbl3: TcxLabel;
    edtStatus: TcxTextEdit;
    lbl4: TcxLabel;
    edtPickupSabun: TcxTextEdit;
    lbl5: TcxLabel;
    edtPickupPhone: TcxTextEdit;
    lbl6: TcxLabel;
    edtPickupDate: TcxTextEdit;
    lbl7: TcxLabel;
    lbl8: TcxLabel;
    edtBrName: TcxTextEdit;
    edtBrPhone: TcxTextEdit;
    lbl10: TcxLabel;
    edtRegSabun: TcxTextEdit;
    edtRegSabun2: TcxTextEdit;
    lbl9: TLabel;
    lbl11: TcxLabel;
    meoStartAreaWOR11: TcxTextEdit;
    cxtSA1: TcxTextEdit;
    cxtSA2: TcxTextEdit;
    cxtSA3: TcxTextEdit;
    lbl12: TcxLabel;
    meoEndAreaWOR11: TcxTextEdit;
    cxtStartAreaDetail: TcxTextEdit;
    cxtStartXval: TcxTextEdit;
    cxtStartYval: TcxTextEdit;
    lblStartAreaName: TcxLabel;
    lblEndAreaName: TcxLabel;
    cxtEd1: TcxTextEdit;
    cxtEd2: TcxTextEdit;
    cxtEd3: TcxTextEdit;
    cxtEndAreaDetail: TcxTextEdit;
    cxtEndXval: TcxTextEdit;
    cxtEndYval: TcxTextEdit;
    btnUpdate: TcxButton;
    btnRegister: TcxButton;
    btnCancel: TcxButton;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    PnlMain: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    cxLblActive: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnRegisterClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
		procedure meoStartAreaWOR11KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    ls_ActiveControl: string;
		aSelRow : integer;
		procedure Proc_AreaSearchKDown_Added(Key: Word);
	public
    { Public declarations }
		lcsSta1, lcsSta2, lcsSta3: string; // 출1, 출2, 출3
		lcsEnd1, lcsEnd2, lcsEnd3: string; // 도1, 도2, 도3
		procedure SetPickupData(AIsToday: Boolean; ASeq, AStatus, AInDate, APickupSabun, APickupPhone, APickupDate,
      ABrName, ABrPhone, ARegSabun, ARegSabun2, AStArea, AStArea1, AStArea2, AStArea3,
      AEdArea, AEdArea1, AEdArea2, AEdArea3, AStX, AStY, AEdX, AEdY: string; ARow : integer);

    function UpdatePickupData(ASeq, AAction, AStatus: string): Boolean; overload;
    function UpdatePickupData(ASeq, AAction, AStatus, AWkSabun, AHdNo, ABrNm, APhone, AStArea1, AStArea2,
			AStArea3, AStArea4, AEdArea1, AEdArea2, AEdArea3, AEdArea4, AStX, AStY, AEdX, AEdY: string): Boolean; overload;
		procedure Hide_Panel(Panel: string; Showhide : integer);
		procedure Grid_Clear(Panel: string; Grid: Integer);
		procedure lcs_Clear(Panel: string);
  end;

var
  Frm_WOR11: TFrm_WOR11;

implementation


{$R *.dfm}

uses xe_xml, xe_GNL, xe_GNL2, xe_Dm, xe_Msg, xe_Func, xe_WOR10, xe_JON30;

{ Tfrm_WOR11 }

procedure TFrm_WOR11.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_WOR11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_WOR11.FormCreate(Sender: TObject);
var
  Save: LongInt; // 폼타이틀 제거용.
begin
  //====================================================
  // 폼 타이틀 제거..
  Save := GetWindowLong(Handle, gwl_Style);
  if (Save and ws_Caption) = ws_Caption then
  begin
    case BorderStyle of
      bsSingle, bsSizeable:
        SetWindowLong(Handle, gwl_Style, Save and (not (ws_Caption)) or ws_border);
    end;
    Height := Height - getSystemMetrics(sm_cyCaption);
    Refresh;
  end;
end;

procedure TFrm_WOR11.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_WOR11.FormDestroy(Sender: TObject);
begin
  Frm_WOR11 := Nil;
end;

procedure TFrm_WOR11.btnCloseClick(Sender: TObject);
begin
	Hide_Panel('meoEndAreaCUT',1);
	Close;
end;

procedure TFrm_WOR11.SetPickupData(AIsToday: Boolean; ASeq, AStatus, AInDate, APickupSabun,
  APickupPhone, APickupDate, ABrName, ABrPhone, ARegSabun, ARegSabun2,
  AStArea, AStArea1, AStArea2, AStArea3, AEdArea, AEdArea1, AEdArea2,
  AEdArea3, AStX, AStY, AEdX, AEdY: string; ARow : integer);
begin
  btnUpdate.Enabled := AIsToday;
  btnCancel.Enabled := AIsToday;
  btnRegister.Enabled := AIsToday;

  edtPickupNo.Text    := ASeq;
  edtStatus.Text      := AStatus;
  edtInDate.Text      := AInDate;
  edtPickupSabun.Text := APickupSabun;
  edtPickupPhone.Text := APickupPhone;
  edtPickupDate.Text  := APickupDate;

  edtBrName.Text      := ABrName;
  edtBrPhone.Text     := ABrPhone;
  edtRegSabun.Text    := ARegSabun;
  edtRegSabun2.Text   := ARegSabun2;

	meoStartAreaWOR11.Text      := AStArea;
	cxtSA1.Text     := AStArea1;
	cxtSA2.Text     := AStArea2;
	cxtSA3.Text     := AStArea3;
	lblStartAreaName.Caption   := AStArea1 + ' ' + AStArea2 + ' ' + AStArea3;

	meoEndAreaWOR11.Text      := AEdArea;
	cxtEd1.Text     := AEdArea1;
	cxtEd2.Text     := AEdArea2;
	cxtEd3.Text     := AEdArea3;
	lblEndAreaName.Caption   := AEdArea1 + ' ' + AEdArea2 + ' ' + AEdArea3;

	cxtStartXval.Text     := AStX;
	cxtStartYval.Text     := AStY;
	cxtEndXval.Text     := AStX;
	cxtEndYval.Text     := AEdY;

	aSelRow := ARow;
end;

function TFrm_WOR11.UpdatePickupData(ASeq, AAction,
  AStatus: string): Boolean;
begin
  Result := UpdatePickupData(ASeq, AAction, AStatus, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
end;

function TFrm_WOR11.UpdatePickupData(ASeq, AAction, AStatus, AWkSabun, AHdNo, ABrNm, APhone,
  AStArea1, AStArea2, AStArea3, AStArea4, AEdArea1, AEdArea2, AEdArea3, AEdArea4, AStX, AStY, AEdX, AEdY: string): Boolean;
var
  ls_TxLoad, AData: string;
  StrList: TStringList;
  ErrCode: integer;
begin
  StrList := TStringList.Create;
  Result := False;
  try
    ls_TxLoad := GTx_UnitXmlLoad('C027N1.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString',     GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',  VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',  'UPDATE', [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'actionString',     AAction, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'StatusString',     AStatus, [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'WkSabunString',    AWkSabun, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'HdNoString',       AHdNo, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'SequenceString',   ASeq, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'StartSiString',    AStArea1, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'StartGuString',    AStArea2, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'StartDongString',  AStArea3, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'StartDetailString', AStArea4, [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'DestSiString',     AEdArea1, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'DestGuString',     AEdArea2, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'DestDongString',   AEdArea3, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'DestDetailString', AEdArea4, [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'BrNameString',     ABrNm, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'WkPhoneString',    APhone, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VPhoneYnString',   '', [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'CountString',      '', [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'StartMapXString', AStX, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'StartMapYString', AStY, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'DestMapXString',  AEdX, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'DestMapYString',  AEdY, [rfReplaceAll]);

    if dm.SendSock(ls_TxLoad, StrList, ErrCode, False) then
    begin
      AData := StrList[0];
      if trim(AData) <> '' then
      begin
        Application.ProcessMessages;

        if (GetXmlErrorCode(AData) = '0000') then Result := True
                                             else GMessagebox(GetXmlErrorCode(AData), CDMSE);
      end;
    end;
  finally
		if Assigned(Frm_WOR10) then 
			Frm_WOR10.FUpdated := Result;
    StrList.Free;
  end;
end;

procedure TFrm_WOR11.btnCancelClick(Sender: TObject);
begin
  if UpdatePickupData(
    edtPickupNo.Text,   // ASeq,
    'D',                // AAction,
    '8'
  ) then
  begin
    GMessagebox('취소 되었습니다.', CDMSI);
    Close;
  end;
end;

procedure TFrm_WOR11.btnRegisterClick(Sender: TObject);
begin
  if UpdatePickupData(
    edtPickupNo.Text,   // ASeq,
    'D',                // AAction,
    '0'
  ) then
  begin
    GMessagebox('재등록 되었습니다.', CDMSI);
    Close;
  end;
end;

procedure TFrm_WOR11.btnUpdateClick(Sender: TObject);
begin
 	if Not func_EucKr_Check(meoStartAreaWOR11, 0) then Exit;
 	if Not func_EucKr_Check(meoEndAreaWOR11, 0) then Exit;

	if UpdatePickupData(
    edtPickupNo.Text,   // ASeq,
		'U',                // AAction,
    '',                 // AStatus,
    '',                 // AWkSabun,
    '',                 // AHdNo,
    '',                 // ABrNm,
    '',                 // APhone
		cxtSA1.Text,
		cxtSA2.Text,
		cxtSA3.Text,
		meoStartAreaWOR11.Text,
		cxtEd1.Text,
		cxtEd2.Text,
		cxtEd3.Text,
		meoEndAreaWOR11.Text,
		cxtStartXval.Text,
		cxtStartYval.Text,
		cxtEndXval.Text,
		cxtEndYval.Text
	) then
  begin
    GMessagebox('수정 되었습니다.', CDMSI);
    if Assigned(Frm_WOR10) then
    begin
  		Frm_WOR10.btnSearch.click;
	  	Frm_WOR10.cxGridPickup.SetFocus;
		  Frm_WOR10.cxViewPickup.DataController.FocusedRecordIndex := aSelRow;
    end;

    Close;
  end;
end;

procedure TFrm_WOR11.FormShow(Sender: TObject);
begin
  fSetFont(Frm_WOR11, GS_FONTNAME);

	Frm_WOR10.FUpdated := False;

	btnCancel.enabled := True;
	if edtStatus.Text = '취소' then
		btnCancel.enabled := False;
end;

procedure TFrm_WOR11.Grid_Clear(Panel: string; Grid: Integer);
begin
  if Panel = 'meoStartAreaCUT' then
  begin
    if Grid = 1 then
    begin
      Frm_JON30.AdvStringGrid1.Clear;
      Frm_JON30.AdvStringGrid1.RowCount := 2;

      Frm_JON30.AdvStringGrid1.Cells[0, 0] := '시도';
      Frm_JON30.AdvStringGrid1.Cells[1, 0] := '시군구';
      Frm_JON30.AdvStringGrid1.Cells[2, 0] := '읍면동';
      Frm_JON30.AdvStringGrid1.Cells[3, 0] := '세부지명';
      Frm_JON30.AdvStringGrid1.Cells[4, 0] := '인근POI';
      Frm_JON30.AdvStringGrid1.Cells[5, 0] := '거리(m)';
      Frm_JON30.AdvStringGrid1.Cells[6, 0] := 'X좌표';
      Frm_JON30.AdvStringGrid1.Cells[7, 0] := 'Y좌표';
      Frm_JON30.AdvStringGrid1.ShowSelection := False;
    end else
    if Grid = 2 then
    begin
      Frm_JON30.AdvStringGrid2.Clear;
      Frm_JON30.AdvStringGrid2.RowCount := 1;
      Frm_JON30.AdvStringGrid2.ShowSelection := False;
    end else
    if Grid = 3 then
    begin
      Frm_JON30.AdvStringGrid3.Clear;
      Frm_JON30.AdvStringGrid3.RowCount := 1;
      Frm_JON30.AdvStringGrid3.ShowSelection := False;
    end;
  end else
  if Panel = 'meoEndAreaCUT' then
  begin
    if Grid = 1 then
    begin
      Frm_JON30.AdvStringGrid5.Clear;
      Frm_JON30.AdvStringGrid5.RowCount := 2;

      Frm_JON30.AdvStringGrid5.Cells[0, 0] := '시도';
      Frm_JON30.AdvStringGrid5.Cells[1, 0] := '시군구';
      Frm_JON30.AdvStringGrid5.Cells[2, 0] := '읍면동';
      Frm_JON30.AdvStringGrid5.Cells[3, 0] := '세부지명';
      Frm_JON30.AdvStringGrid5.Cells[4, 0] := '인근POI';
      Frm_JON30.AdvStringGrid5.Cells[5, 0] := '거리(m)';
      Frm_JON30.AdvStringGrid5.Cells[6, 0] := 'X좌표';
      Frm_JON30.AdvStringGrid5.Cells[7, 0] := 'Y좌표';
      Frm_JON30.AdvStringGrid5.ShowSelection := False;
    end else
    if Grid = 2 then
    begin
      Frm_JON30.AdvStringGrid4.Clear;
      Frm_JON30.AdvStringGrid4.RowCount := 1;
      Frm_JON30.AdvStringGrid4.ShowSelection := False;
    end else
    if Grid = 3 then
    begin
      Frm_JON30.AdvStringGrid6.Clear;
      Frm_JON30.AdvStringGrid6.RowCount := 1;
      Frm_JON30.AdvStringGrid6.ShowSelection := False;
    end;
  end;
end;

procedure TFrm_WOR11.Hide_Panel(Panel: string; Showhide: integer);
begin
	if Showhide = 0 then Frm_JON30.Show
	else
	if Showhide = 1 then
	begin
		if (Panel = 'meoStartAreaWOR11') OR (Panel = 'meoEndAreaWOR11') then
		begin
			Frm_JON30.Hide;
		end else
		begin
			Frm_JON30.Hide;
		end;
	end;

	if Panel = 'meoStartAreaWOR11' then
	begin
		Frm_JON30.pnl_01START.Visible := True;
		Frm_JON30.pnl_02END.Visible := False;
		Frm_JON30.pnl_03VIA.Visible := False;
	end else
	if Panel = 'meoEndAreaWOR11' then
	begin
		Frm_JON30.pnl_01START.Visible := False;
		Frm_JON30.pnl_02END.Visible := True;
		Frm_JON30.pnl_03VIA.Visible := False;
	end;
end;

procedure TFrm_WOR11.lcs_Clear(Panel: string);
begin
	if Panel = 'meoStartAreaWOR11' then
  begin
		lcsSta1 := '';
		lcsSta2 := '';
		lcsSta3 := '';
		cxtSA1.Text := '';
		cxtSA2.Text := '';
		cxtSA3.Text := '';
		cxtStartAreaDetail.Text := '';
		lblStartAreaName.Caption := '';
		meoStartAreaWOR11.Text := '';
		cxtStartXval.Text := '';
		cxtStartYval.Text := '';
	end else
	if Panel = 'meoEndAreaWOR11' then
	begin
		lcsEnd1 := '';
		lcsEnd2 := '';
		lcsEnd3 := '';
		cxtEd1.Text := '';
		cxtEd2.Text := '';
		cxtEd3.Text := '';
		cxtEndAreaDetail.Text := '';
		lblEndAreaName.Caption := '';
		meoEndAreaWOR11.Text := '';
		cxtEndXval.Text := '';
		cxtEndYval.Text := '';
	end;
end;

procedure TFrm_WOR11.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WOR11.meoStartAreaWOR11KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(sender).Text := Enc_Control(TcxTextEdit(sender).Text);
	lcsActiveEdit := 'meoStartAreaWOR11'; // 활성화 된 출발지, 도착지 Edit 구분을 저장.
	if Key = VK_BACK then
	begin
		if TcxTextEdit(Sender).Name = 'edtStArea' then
		begin
			if Length(meoStartAreaWOR11.Text) <= 4 then
			begin
				lcsSta1 := '';
				lcsSta2 := '';
				lcsSta3 := '';
				cxtSA1.Text := '';
				cxtSA2.Text := '';
				cxtSA3.Text := '';
				cxtStartAreaDetail.Text := '';
				lblStartAreaName.Caption := '';
				meoStartAreaWOR11.Text := '';
				cxtStartXval.Text := '';
				cxtStartYval.Text := '';
			end;
		end else
		if TcxTextEdit(Sender).Name = 'edtEdArea' then
		begin
			if Length(meoEndAreaWOR11.Text) <= 4 then
			begin
				lcsEnd1 := '';
				lcsEnd2 := '';
				lcsEnd3 := '';
				cxtEd1.Text := '';
				cxtEd2.Text := '';
				cxtEd3.Text := '';
				cxtEndAreaDetail.Text := '';
				lblEndAreaName.Caption := '';
				meoEndAreaWOR11.Text := '';
				cxtEndXval.Text := '';
				cxtEndYval.Text := '';
			end;
    end;
	end
	else
  if Key = VK_RETURN then
	begin
		if TcxTextEdit(Sender).Name = 'meoStartAreaWOR11' then
		begin
			lcsActiveEdit := 'meoStartAreaWOR11' ;
			Proc_AreaSearchKDown_Added(Key);
			{if Frm_JON30.Visible = True then
			begin
				if Frm_JON30.AdvStringGrid1.Cells[0,1] <> '' then
				begin
					Frm_JON30.Proc_SendParent(Frm_JON30.AdvStringGrid1.GetRealRow + 1, True);
					Hide_Panel(lcsActiveEdit,1);
				end;
				if (Frm_JON30.AdvStringGrid1.Cells[0,1] = '') and (Frm_JON30.AdvStringGrid2.Cells[0,0] <> '') then
				begin
					Frm_JON30.Proc_SendParent_ADV2(Frm_JON30.AdvStringGrid2.GetRealRow + 1, Frm_JON30.AdvStringGrid2.GetRealCol, True);
					Hide_Panel(lcsActiveEdit,1);
				end;
				meoStartAreaWOR11.SetFocus;
			end; }
		end
		else
		if TcxTextEdit(Sender).Name = 'meoEndAreaWOR11' then
		begin
			lcsActiveEdit := 'meoEndAreaWOR11' ;
			Proc_AreaSearchKDown_Added(Key);
		end;
	end;
end;


procedure TFrm_WOR11.Proc_AreaSearchKDown_Added(Key: Word);
begin
	if not (key in [vk_F7..vk_F12]) then
  begin
		if ((lcsActiveEdit = 'meoStartAreaWOR11') and (Length(WideString(meoStartAreaWOR11.Text)) >= 2))
			or ((lcsActiveEdit = 'meoEndAreaWOR11') and (Length(WideString(meoEndAreaWOR11.Text)) >= 2)) then
    begin
      Application.ProcessMessages;

			if not Frm_JON30.noSearch then      //advgrid3 클릭 시 재 검색 안됨.
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
         Hide_Panel(lcsActiveEdit,0);
        end else
        if GS_MAP_AREA_AUTOSHOW = False then
        begin
          Frm_JON30.chk_Map(False);
          Hide_Panel(lcsActiveEdit,0);
        end;
        Frm_JON30.tmThread.Interval := 90;
        Frm_JON30.tmThread.Enabled := True;
      end else
      begin
        Frm_JON30.noSearch := False;
      end;
    end;
  end;
end;

end.

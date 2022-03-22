unit xe_SET08;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, jpeg, Vcl.StdCtrls,
  Vcl.ExtCtrls, xe_GNL,  AdvCardList, GDIPCustomItem, GDIPTextItem, GDIPImageTextItem,
  GDIPGraphicItem, GDIPButtonItem, CustomItemsContainer, AdvHorizontalPolyList,
  GDIPSectionItem, GDIPImageSectionItem, GDIPHeaderItem, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxLabel, cxButtons, cxGroupBox, cxCheckBox,
  cxListBox, dxGDIPlusClasses, dxSkinOffice2010Silver, cxCustomListBox, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_SET08 = class(TForm)
    Panel1: TPanel;
    btnSch1: TcxButton;
    btnSch2: TcxButton;
    btnSch3: TcxButton;
    btnSch4: TcxButton;
    btnSch5: TcxButton;
    btnSch6: TcxButton;
    btnSch7: TcxButton;
    btnSch8: TcxButton;
    btnSch9: TcxButton;
    btnSch10: TcxButton;
    btnSch11: TcxButton;
    btnSch12: TcxButton;
    btnSch13: TcxButton;
    btnSch14: TcxButton;
    btnSch15: TcxButton;
    btnSch16: TcxButton;
    btnSch17: TcxButton;
    btnSch18: TcxButton;
    btnSch19: TcxButton;
    btnSch20: TcxButton;
    btnSch21: TcxButton;
    btnSch22: TcxButton;
    pnlTitle: TPanel;
    cxLblActive: TLabel;
    BtnClose: TcxButton;
    cxLabel1: TcxLabel;
    btnOk: TcxButton;
    Panel2: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxLabel2: TcxLabel;
    chkMuSch: TcxCheckBox;
    chkSch1: TcxCheckBox;
    chkSch2: TcxCheckBox;
    chkSch3: TcxCheckBox;
    chkSch4: TcxCheckBox;
    chkSch5: TcxCheckBox;
    chkSch6: TcxCheckBox;
    chkSch7: TcxCheckBox;
    chkSch8: TcxCheckBox;
    chkSch9: TcxCheckBox;
    chkSch10: TcxCheckBox;
    chkSch11: TcxCheckBox;
    chkSch12: TcxCheckBox;
    chkSch13: TcxCheckBox;
    chkSch14: TcxCheckBox;
    chkSch15: TcxCheckBox;
    chkSch16: TcxCheckBox;
    chkSch17: TcxCheckBox;
    chkSch18: TcxCheckBox;
    chkSch19: TcxCheckBox;
    chkSch20: TcxCheckBox;
    chkSch21: TcxCheckBox;
    chkSch22: TcxCheckBox;
    cxLabel3: TcxLabel;
    Shape1: TShape;
    Panel3: TPanel;
    btnMuSch: TcxButton;
    pnlMain: TPanel;
		lb_FastFind: TcxListBox;
    lb_FastFindOut: TcxListBox;
    cxLabel40: TcxLabel;
    pnlLeft: TPanel;
    pnlHlp: TPanel;
    Image1: TImage;
    btnHlp: TcxButton;
    Shape2: TShape;
    btnSch23: TcxButton;
    chkSch23: TcxCheckBox;
    cxMemo1: TcxMemo;
    chkSch24: TcxCheckBox;
    btnSch24: TcxButton;
    btnSch25: TcxButton;
    chkSch25: TcxCheckBox;
    chkSch26: TcxCheckBox;
    btnSch26: TcxButton;
    chk_Mileage: TcxCheckBox;
    chk_CMPSupportY: TcxCheckBox;
    chk_CMPSupportN: TcxCheckBox;
    btn_Mileage: TcxButton;
    btn_CMPSupportY: TcxButton;
    btn_CMPSupportN: TcxButton;
    chkSch27: TcxCheckBox;
    btnSch27: TcxButton;
    procedure FormDestroy(Sender: TObject);
    procedure btnSch1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnSch1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnSch1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
    procedure chkSch1Click(Sender: TObject);
    procedure chkMuSchClick(Sender: TObject);
    procedure btnHlpClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chk_MileageClick(Sender: TObject);
    procedure chk_CMPSupportYClick(Sender: TObject);
    procedure chk_CMPSupportNClick(Sender: TObject);
  private
    { Private declarations }
    FTableButtonDragging : boolean;
    FMouseDownLocation : TPoint;
    FButtonStartingLocation : TPoint;

    bFirst : Boolean;
    rPoList : array [1..23] of TPoList;
		ipMoveNo, iViewCnt : Integer;
		gChkStat : string;
		
    procedure SetAutoPos;
    procedure SetLoadItem;
    procedure SetPoList;
    procedure SetNoChange( ApNo, ANo : Integer );
    function GetChangeNo( ATop, ALeft : Integer ) : Integer;
    procedure GetViewCount;
		procedure LoadINIData;
		function CompINIData( bSave : Boolean ) : Boolean;
		procedure SaveINIData;
  public
    { Public declarations }
  end;

var
  Frm_SET08: TFrm_SET08;

implementation

{$R *.dfm}

uses Main, xe_Msg, xe_Func, xe_SETA1;

procedure TFrm_SET08.BtnCloseClick(Sender: TObject);
begin
	if CompINIData(False) then
  begin
    SaveINIData;
  end;

  Close;
end;

procedure TFrm_SET08.btnHlpClick(Sender: TObject);
begin
  if btnHlp.Tag = 0 then
  begin
    btnHlp.Tag := 1;
    Self.Width := 660;
    pnlHlp.Visible := False;
  end else
  begin
    btnHlp.Tag := 0;
    Self.Width := 890;
    pnlHlp.Visible := True;;
  end;
end;

procedure TFrm_SET08.btnOkClick(Sender: TObject);
begin
  if CompINIData(True) then SaveINIData;
end;

procedure TFrm_SET08.btnSch1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  FTableButtonDragging := true;
  FMouseDownLocation := Mouse.CursorPos;
  TcxButton(Sender).BringToFront;
  ipMoveNo := TcxButton(Sender).Tag;
  FButtonStartingLocation := TPoint.Create(TcxButton(Sender).Left, TcxButton(Sender).Top);
end;

procedure TFrm_SET08.btnSch1MouseMove(Sender: TObject; Shift: TShiftState; X,
	Y: Integer);
Var iX, iY, iNo : Integer;
begin
	if FTableButtonDragging then
  begin
    iX := FButtonStartingLocation.X + (Mouse.CursorPos.X - FMouseDownLocation.X);
    iY := FButtonStartingLocation.Y + (Mouse.CursorPos.Y - FMouseDownLocation.Y);
    iNo := GetChangeNo(iY, iX);

    cxMemo1.Lines.Insert(1, 'a-' + IntToStr(iX) + '-' + IntToStr(iY) + '-' + IntToStr(iNo));
    if ipMoveNo <> iNo then
		begin
			SetNoChange(ipMoveNo, iNo );
      SetAutoPos;
    end;

    TcxButton(Sender).Left := iX;
    TcxButton(Sender).Top  := iY;
    TcxButton(Sender).Invalidate;
  end;
end;

procedure TFrm_SET08.btnSch1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  FTableButtonDragging := false;

  ipMoveNo := 0;
  SetAutoPos;;
end;

procedure TFrm_SET08.chk_CMPSupportNClick(Sender: TObject);
begin
	if chk_CMPSupportN.Checked then btn_CMPSupportN.Visible := True
														 else btn_CMPSupportN.Visible := False;
end;

procedure TFrm_SET08.chk_CMPSupportYClick(Sender: TObject);
begin
	if chk_CMPSupportY.Checked then btn_CMPSupportY.Visible := True
														 else btn_CMPSupportY.Visible := False;
end;

procedure TFrm_SET08.chk_MileageClick(Sender: TObject);
begin
	if chk_Mileage.Checked then btn_Mileage.Visible := True
												 else btn_Mileage.Visible := False;
end;

procedure TFrm_SET08.chkMuSchClick(Sender: TObject);
begin
	if chkMuSch.Checked then btnMuSch.Visible := True
											else btnMuSch.Visible := False;
end;

procedure TFrm_SET08.chkSch1Click(Sender: TObject);
Var iNo, iTag : Integer;
begin
  if bFirst then Exit;

  GetViewCount;
  iNo := TcxCheckBox(Sender).Tag;
  if TcxCheckBox(Sender).Checked then
  begin
    if iViewCnt >= 20 then
    begin
  		GMessagebox('최대 20개까지 선택 가능합니다.', cdmsE);

      bFirst := True;
      TcxCheckBox(Sender).Checked := False;
      bFirst := False;

      Exit;
    end;

    TcxButton(FindComponent('btnSch'+IntToStr(iNo))).Visible := True;
    TcxButton(FindComponent('btnSch'+IntToStr(iNo))).Tag := iViewCnt + 1;
  end else
  begin
    TcxButton(FindComponent('btnSch'+IntToStr(iNo))).Visible := False;
    iTag := TcxButton(FindComponent('btnSch'+IntToStr(iNo))).Tag;
    SetNoChange(iTag, iViewCnt);
    ipMoveNo := 0;
  end;

  SetAutoPos;
end;

procedure TFrm_SET08.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_SET08.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_SET08.FormCreate(Sender: TObject);
begin
	SetPoList;

  if GS_COUNSEL_MULTICHECKSHOW then
  begin
    btnMuSch.Visible := True;
    chkMuSch.Checked := True;
  end else
  begin
    btnMuSch.Visible := False;
    chkMuSch.Checked := False;
  end;

  bFirst := True;
	LoadINIData;
  SetLoadItem;
  bFirst := False;

  btnHlp.Tag := 1;
  Self.Width := 660;
  pnlHlp.Visible := False;

	SetAutoPos;
end;

procedure TFrm_SET08.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_SET08.FormDestroy(Sender: TObject);
begin
  Frm_SET08 := Nil;
end;

procedure TFrm_SET08.FormShow(Sender: TObject);
begin
  fSetFont(Frm_SET08, GS_FONTNAME);
  fSetSkin(Frm_SET08);
end;

procedure TFrm_SET08.SetPoList;
Var i : Integer;
begin
  for i := 1 to Length(rPoList) do
  begin
    if ( i > 0  ) And ( i <= 5  ) then rPoList[i].Top := (10 * 1)            else
    if ( i > 5  ) And ( i <= 10 ) then rPoList[i].Top := (10 * 2) + (25 * 1) else
    if ( i > 10 ) And ( i <= 15 ) then rPoList[i].Top := (10 * 3) + (25 * 2) else
    if ( i > 15 ) And ( i <= 20 ) then rPoList[i].Top := (10 * 4) + (25 * 3) else
    if ( i > 20 ) And ( i <= 25 ) then rPoList[i].Top := (10 * 5) + (25 * 4);

    if ( i Mod 5 ) = 1 then rPoList[i].Left := (10 * 1)             else
    if ( i Mod 5 ) = 2 then rPoList[i].Left := (10 * 2) + (120 * 1) else
    if ( i Mod 5 ) = 3 then rPoList[i].Left := (10 * 3) + (120 * 2) else
    if ( i Mod 5 ) = 4 then rPoList[i].Left := (10 * 4) + (120 * 3) else
    if ( i Mod 5 ) = 0 then rPoList[i].Left := (10 * 5) + (120 * 4);
  end;
end;

function TFrm_SET08.CompINIData( bSave : Boolean ) : Boolean;
Var lsTmp : TStringList;
    i, j : Integer;
		msg, sChkStat : String;
		bOk : Boolean;
begin
	GetViewCount;
  try
    lsTmp := TStringList.Create;
    for i := 1 to iViewCnt do
    begin
      for j := 1 to 27 do
      begin
        if Assigned(TcxButton(FindComponent('btnSch'+IntToStr(j)))) then
        begin
					if ( TcxButton(FindComponent('btnSch'+IntToStr(j))).Tag = i ) And
						 ( TcxButton(FindComponent('btnSch'+IntToStr(j))).Visible ) then
          begin
						lsTmp.Add(TcxButton(FindComponent('btnSch'+IntToStr(j))).Caption);
						Break;
          end;
				end;
      end;
		end;

    bOk := True;
		if lb_FastFind.Items.Count = iViewCnt then
    begin
      for i := 0 to lb_FastFind.Items.Count - 1 do
      begin
				if lb_FastFind.Items.Strings[i] <> lsTmp.Strings[i] then
        begin
          bOk := False;
          Break;
        end;
			end;
    end else
    begin
      bOk := False;
    end;

		if GS_COUNSEL_MULTICHECKSHOW <> chkMuSch.Checked then bOk := False;  

		//체크변경 확인
		sChkStat := '';
		if chk_Mileage.Checked     then sChkStat := '1' else sChkStat := '2';
		if chk_CMPSupportY.Checked then sChkStat := sChkStat + '1' else sChkStat := sChkStat + '2';
		if chk_CMPSupportN.Checked then sChkStat := sChkStat + '1' else sChkStat := sChkStat + '2';

		if sChkStat <> gChkStat then
		begin
			bOk := False;  
			gChkStat := sChkStat;
		end;
		//체크변경 확인
		
		lb_FastFindOut.Clear;
		for j := 1 to 27 do
    begin
      if Assigned(TcxButton(FindComponent('btnSch'+IntToStr(j)))) then
      begin
        if Not TcxButton(FindComponent('btnSch'+IntToStr(j))).Visible then
					lb_FastFindOut.Items.Add(TcxButton(FindComponent('btnSch'+IntToStr(j))).Caption);
      end;
    end;

    if ( Not bOk ) then
    begin
      if ( Not bSave ) then
      begin
        msg := '검색 조건 내역이 변경되었습니다.'#13#10
             + '수정하시겠습니까?';

        if Application.MessageBox(PChar(msg), CDMSI,
              MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
        begin
					lb_FastFind.Items.Clear;
          lb_FastFind.Items := lsTmp;
          Result := True;
        end else
        begin
          Result := False;
        end;
      end else
      begin
        lb_FastFind.Items.Clear;
        lb_FastFind.Items := lsTmp;
        Result := True;
      end;
    end else
    begin
      Result := False;
    end;
  finally
    FreeAndNil(lsTmp);
  end;
end;

procedure TFrm_SET08.SaveINIData;
var
  i : Integer;
begin
	GS_EnvFile.EraseSection('FastFindSort');
  GS_EnvFile.EraseSection('FastFindSortOut');

  // ini파일에 상태순 저장
	for i := 0 to lb_FastFind.Items.Count - 1 do
    GS_EnvFile.WriteString('FastFindSort', lb_FastFind.Items.Strings[i], IntToStr(i));

  // ini파일에 상태순 저장
  for i := 0 to lb_FastFindOut.Items.Count - 1 do
    GS_EnvFile.WriteString('FastFindSortOut', lb_FastFindOut.Items.Strings[i], IntToStr(i));

	if lb_FastFind.Items.Count >=  1 then gJONFastFind.Key1  := lb_FastFind.Items.Strings[00]
                                   else gJONFastFind.Key1  := '';
  if lb_FastFind.Items.Count >=  2 then gJONFastFind.Key2  := lb_FastFind.Items.Strings[01]
                                   else gJONFastFind.Key2  := '';
  if lb_FastFind.Items.Count >=  3 then gJONFastFind.Key3  := lb_FastFind.Items.Strings[02]
                                   else gJONFastFind.Key3  := '';
  if lb_FastFind.Items.Count >=  4 then gJONFastFind.Key4  := lb_FastFind.Items.Strings[03]
                                   else gJONFastFind.Key4  := '';
  if lb_FastFind.Items.Count >=  5 then gJONFastFind.Key5  := lb_FastFind.Items.Strings[04]
                                   else gJONFastFind.Key5  := '';
  if lb_FastFind.Items.Count >=  6 then gJONFastFind.Key6  := lb_FastFind.Items.Strings[05]
                                   else gJONFastFind.Key6  := '';
  if lb_FastFind.Items.Count >=  7 then gJONFastFind.Key7  := lb_FastFind.Items.Strings[06]
                                   else gJONFastFind.Key7  := '';
  if lb_FastFind.Items.Count >=  8 then gJONFastFind.Key8  := lb_FastFind.Items.Strings[07]
                                   else gJONFastFind.Key8  := '';
  if lb_FastFind.Items.Count >=  9 then gJONFastFind.Key9  := lb_FastFind.Items.Strings[08]
                                   else gJONFastFind.Key9  := '';
  if lb_FastFind.Items.Count >= 10 then gJONFastFind.Key10 := lb_FastFind.Items.Strings[09]
                                   else gJONFastFind.Key10 := '';
  if lb_FastFind.Items.Count >= 11 then gJONFastFind.Key11 := lb_FastFind.Items.Strings[10]
                                   else gJONFastFind.Key11 := '';
  if lb_FastFind.Items.Count >= 12 then gJONFastFind.Key12 := lb_FastFind.Items.Strings[11]
                                   else gJONFastFind.Key12 := '';
  if lb_FastFind.Items.Count >= 13 then gJONFastFind.Key13 := lb_FastFind.Items.Strings[12]
                                   else gJONFastFind.Key13 := '';
  if lb_FastFind.Items.Count >= 14 then gJONFastFind.Key14 := lb_FastFind.Items.Strings[13]
                                   else gJONFastFind.Key14 := '';
  if lb_FastFind.Items.Count >= 15 then gJONFastFind.Key15 := lb_FastFind.Items.Strings[14]
                                   else gJONFastFind.Key15 := '';
  if lb_FastFind.Items.Count >= 16 then gJONFastFind.Key16 := lb_FastFind.Items.Strings[15]
                                   else gJONFastFind.Key16 := '';
  if lb_FastFind.Items.Count >= 17 then gJONFastFind.Key17 := lb_FastFind.Items.Strings[16]
                                   else gJONFastFind.Key17 := '';
  if lb_FastFind.Items.Count >= 18 then gJONFastFind.Key18 := lb_FastFind.Items.Strings[17]
                                   else gJONFastFind.Key18 := '';
  if lb_FastFind.Items.Count >= 19 then gJONFastFind.Key19 := lb_FastFind.Items.Strings[18]
                                   else gJONFastFind.Key19 := '';
  if lb_FastFind.Items.Count >= 20 then gJONFastFind.Key20 := lb_FastFind.Items.Strings[19]
                                   else gJONFastFind.Key20 := '';

	GS_COUNSEL_MULTICHECKSHOW := chkMuSch.Checked;
	GS_JON03Mileage     := chk_Mileage.Checked;
	GS_JON03CMPSupportY := chk_CMPSupportY.Checked;
	GS_JON03CMPSupportN := chk_CMPSupportN.Checked;

	for i := 0 to JON03_MAX_CNT - 1 do
  begin
		if frm_Main.JON03MNG[i].CreateYN then
    begin
			frm_Main.Frm_JON03[i].LoadFastFindControls;

			if GS_COUNSEL_MULTICHECKSHOW then frm_Main.Frm_JON03[i].chk_MultiSearch.Visible := True
																	 else frm_Main.Frm_JON03[i].chk_MultiSearch.Visible := False;
    end;
  end;

	GS_EnvFile.WriteBool('COUNSEL', 'MULTIUSECHECKSHOW', GS_COUNSEL_MULTICHECKSHOW);

	GS_EnvFile.WriteBool('COUNSEL', 'JON03Mileage'    , GS_JON03Mileage);     // [접수현황] 마일리지 옵션추가
	GS_EnvFile.WriteBool('COUNSEL', 'JON03CMPSupportY', GS_JON03CMPSupportY); // [접수현황] 지원금 옵션추가
	GS_EnvFile.WriteBool('COUNSEL', 'JON03CMPSupportN', GS_JON03CMPSupportN); // [접수현황] 지원금제외 옵션추가

	if Assigned(Frm_SETA1) then
  begin
		Frm_SETA1.lb_FastFind.Items := lb_FastFind.Items;
    Frm_SETA1.lb_FastFindOut.Items := lb_FastFindOut.Items;
  end;

  GMessagebox('저장되었습니다.', cdmsi);
end;

procedure TFrm_SET08.SetAutoPos;
Var i, iTag : Integer;
begin
  for i := 1 to 27 do
  begin
    if Assigned(TcxButton(FindComponent('btnSch'+IntToStr(i)))) then
    begin
      iTag := TcxButton(FindComponent('btnSch'+IntToStr(i))).Tag;
      if iTag <> ipMoveNo then
      begin
        TcxButton(FindComponent('btnSch'+IntToStr(i))).Top  := rPoList[iTag].Top;
        TcxButton(FindComponent('btnSch'+IntToStr(i))).Left := rPoList[iTag].Left;
      end;
    end;
  end;
end;

procedure TFrm_SET08.SetLoadItem;
Var i, j : Integer;
begin
	for j := 1 to 27 do
	begin
    if Assigned(TcxButton(FindComponent('btnSch'+IntToStr(j)))) then
    begin
      TcxButton(FindComponent('btnSch'+IntToStr(j))).Visible := False;
      TcxButton(FindComponent('btnSch'+IntToStr(j))).Tag     := 0;
    end;

    if Assigned(TcxCheckBox(FindComponent('chkSch'+IntToStr(j)))) then
      TcxCheckBox(FindComponent('chkSch'+IntToStr(j))).Checked := False;
  end;

	for i := 0 to lb_FastFind.Items.Count - 1 do
  begin
		for j := 1 to 27 do
    begin
      if Assigned(TcxButton(FindComponent('btnSch'+IntToStr(j)))) then
      begin
				if TcxButton(FindComponent('btnSch'+IntToStr(j))).Caption = lb_FastFind.Items.Strings[i] then
        begin
          TcxButton(FindComponent('btnSch'+IntToStr(j))).Visible := True;
          TcxButton(FindComponent('btnSch'+IntToStr(j))).Tag := i+1;

          TcxCheckBox(FindComponent('chkSch'+IntToStr(j))).Checked := True;
          Break;
				end;
      end;
    end;
  end;
end;

procedure TFrm_SET08.SetNoChange( ApNo, ANo : Integer );
Var i, iTag : Integer;
begin
	if ApNo = ANo then Exit;

	for i := 1 to 27 do
  begin
    if Assigned(TcxButton(FindComponent('btnSch'+IntToStr(i)))) then
    begin
      TcxButton(FindComponent('btnSch'+IntToStr(i))).Hint := '';
    end;
  end;

	for i := 1 to 27 do
  begin
    if Assigned(TcxButton(FindComponent('btnSch'+IntToStr(i)))) then
    begin
      if TcxButton(FindComponent('btnSch'+IntToStr(i))).Tag = ApNo then
      begin
        ipMoveNo := ANo;
        TcxButton(FindComponent('btnSch'+IntToStr(i))).Hint := 'A';
        TcxButton(FindComponent('btnSch'+IntToStr(i))).Tag  := ANo;
//        cxMemo1.Lines.Insert(1, TcxButton(FindComponent('btnSch'+IntToStr(i))).Caption + '-d' + IntToStr(iTag) + '-' + IntToStr(ANo) + '-' + IntToStr(APNo));
        Break;
      end;
    end;
  end;

	for i := 1 to 27 do
  begin
    if Assigned(TcxButton(FindComponent('btnSch'+IntToStr(i)))) then
    begin
      if TcxButton(FindComponent('btnSch'+IntToStr(i))).Hint = 'A' then
      begin
        TcxButton(FindComponent('btnSch'+IntToStr(i))).Hint := 'A';
        Continue;
      end;

      iTag := TcxButton(FindComponent('btnSch'+IntToStr(i))).Tag;
//      cxMemo1.Lines.Insert(1, TcxButton(FindComponent('btnSch'+IntToStr(i))).Caption + '-a' + IntToStr(iTag) + '-' + IntToStr(ANo) + '-' + IntToStr(APNo));
      if ( ANo < ApNo ) then
      begin
        if ( iTag >= ANo ) And ( iTag < ApNo ) then
        begin
          TcxButton(FindComponent('btnSch'+IntToStr(i))).Tag := iTag + 1;
//          cxMemo1.Lines.Insert(1, TcxButton(FindComponent('btnSch'+IntToStr(i))).Caption + '-b' + IntToStr(iTag+1) + '-' + IntToStr(ANo) + '-' + IntToStr(APNo));
        end;
      end else
      begin
        if ( iTag > ApNo ) And ( iTag <= ANo ) then
        begin
          TcxButton(FindComponent('btnSch'+IntToStr(i))).Tag := iTag - 1;
//          cxMemo1.Lines.Insert(1, TcxButton(FindComponent('btnSch'+IntToStr(i))).Caption + '-c' + IntToStr(iTag-1) + '-' + IntToStr(ANo) + '-' + IntToStr(APNo));
        end;
      end;
    end;
  end;
end;

function TFrm_SET08.GetChangeNo( ATop, ALeft : Integer ) : Integer;
Var i : Integer;
begin
  Result := ipMoveNo;
	for i := 1 to 27 do
  begin
    if ( (( rPoList[i].Top  - 10  ) <= ATop  ) And ( rPoList[i].Top  + 25  > ATop  ) ) And
       ( (( rPoList[i].Left - 110 ) <= ALeft ) And ( rPoList[i].Left + 120 > ALeft ) ) then
    begin
      Result := i;
      Break;
    end;
  end;
end;

procedure TFrm_SET08.GetViewCount;
Var i : Integer;
begin
  iViewCnt := 0;
	for i := 1 to 27 do
  begin
    if Assigned(TcxButton(FindComponent('btnSch'+IntToStr(i)))) then
    begin
      if TcxButton(FindComponent('btnSch'+IntToStr(i))).Visible then
      begin
        Inc(iViewCnt);
      end;
    end;
  end;
end;

procedure TFrm_SET08.LoadINIData;
Var i, j : Integer;
begin
	// 20120801 빠른검색 순서 설정  LYB
	if Not GS_EnvFile.SectionExists('FastFindSort') then pInitFastFind;

	// ini 설정대로 상태순서 set
	lb_FastFind.Items.Clear;
  GS_EnvFile.ReadSection('FastFindSort', lb_FastFind.Items);

  if lb_FastFind.Items.Count > 20 then
  begin
    j := 0;
		lb_FastFindOut.Items.Clear;
		for i := 20 to lb_FastFind.Items.Count - 1 do
    begin
			GS_EnvFile.WriteString('FastFindSortOut', lb_FastFind.Items.Strings[i], IntToStr(j));
      Inc(j);
    end;

		for i := lb_FastFind.Items.Count - 1 downto 20 do
    begin
      lb_FastFind.Items.Delete(i);
		end;
	end;

  if GS_EnvFile.SectionExists('FastFindSortOut') then
  begin
		lb_FastFindOut.Items.Clear;
		GS_EnvFile.ReadSection('FastFindSortOut', lb_FastFindOut.Items);
    // ini 설정대로 상태순서 set
  end;
	gChkStat := '';
	chk_Mileage.Checked     := GS_JON03Mileage;              // [접수현황] 마일리지 옵션추가
	chk_CMPSupportY.Checked := GS_JON03CMPSupportY;          // [접수현황] 지원금 옵션추가
	chk_CMPSupportN.Checked := GS_JON03CMPSupportN;          // [접수현황] 지원금제외 옵션추가

	if chk_Mileage.Checked     then gChkStat := '1' else gChkStat := '2';
	if chk_CMPSupportY.Checked then gChkStat := gChkStat + '1' else gChkStat := gChkStat + '2';
	if chk_CMPSupportN.Checked then gChkStat := gChkStat + '1' else gChkStat := gChkStat + '2';
end;

procedure TFrm_SET08.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

end.

unit xe_JON021;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2007Silver, dxSkinOffice2010Silver, dxSkinSharp, Vcl.Menus,
	Vcl.StdCtrls, cxButtons, dxGDIPlusClasses, Vcl.ExtCtrls, cxLabel, cxGroupBox, Magnetic,
	IniFiles, MSXML2_TLB, system.Math;

type
  Tfrm_JON021 = class(TForm)
    pnl_Main: TcxGroupBox;
    lb_Title: TcxLabel;
    Image1: TImage;
    cxGroupBox1: TcxGroupBox;
    lb_AiFare: TcxLabel;
    lb_VipFare: TcxLabel;
    lb_EconomyFare: TcxLabel;
    lb_Distance: TcxLabel;
    lb_Time: TcxLabel;
    btn_Close: TcxButton;
    cxLblActive: TLabel;
    TmrChkTag: TTimer;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxBtnFixPos: TcxButton;
    btn_Auto: TcxButton;
    procedure btn_CloseClick(Sender: TObject);
		procedure FormCreate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
		procedure FormActivate(Sender: TObject);
		procedure FormClose(Sender: TObject; var Action: TCloseAction);
		procedure TmrChkTagTimer(Sender: TObject);
    procedure lb_TitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure lb_AiFareClick(Sender: TObject);
    procedure cxBtnFixPosClick(Sender: TObject);
    procedure btn_AutoClick(Sender: TObject);
  private
		{ Private declarations }
		ig021Top, ig021Left : Integer;
    gRTotalTime : Integer;
	public
		{ Public declarations }
		bChkTime : Boolean;
		procedure proc_init;

		function func_KakaoTAICharge(AlDepArr : TStringList; AResvTime : String):string;
		procedure WMEnterSizeMove(var Msg: TMessage); message WM_ENTERSIZEMOVE;
		procedure WMSizing(var Msg: TMessage); message WM_SIZING;
    procedure WMMoving(var Msg: TMessage); message WM_MOVING;
    procedure WMExitSizeMove(var Msg: TMessage); message WM_EXITSIZEMOVE;
		procedure WMShowHideWindow(var Msg: TMessage); message WM_WINDOWPOSCHANGED;
    procedure WMSysCommand(var Msg: TMessage); message WM_SYSCOMMAND;
    procedure WMCommand(var Msg: TMessage); message WM_COMMAND;
	end;

var
  frm_JON021: Tfrm_JON021;

implementation

{$R *.dfm}
uses Main, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet, xe_xml, xe_Dm, xe_JON00,
  xe_Flash;

procedure Tfrm_JON021.btn_AutoClick(Sender: TObject);
begin
	GB_KMAiRateMode := TcxButton(Sender).Down;
	if GB_KMAiRateMode then btn_Auto.Caption := '�������' else btn_Auto.Caption := '�ڵ����';

	GS_EnvFile.WriteBool('MYMAINTELUSE', 'KMAiRateMode', GB_KMAiRateMode);

	if GB_KMAiRateMode then btn_Auto.LookAndFeel.SkinName := 'Office2010Silver'
										 else btn_Auto.LookAndFeel.SkinName := 'Sharp';
end;

procedure Tfrm_JON021.btn_CloseClick(Sender: TObject);
begin
	bChkTime := False;
  TmrChkTag.Tag := 100;
	if GS_JON01_GROUPMOVE then MagneticWnd.RemoveWindow(Self.Handle);

	Hide;
end;

procedure Tfrm_JON021.cxBtnFixPosClick(Sender: TObject);
begin
	GS_JON021_POSFIX := TcxButton(Sender).Down;
	GS_EnvFile.WriteBool('AcceptWin', 'Jon021Fix', GS_JON021_POSFIX);

	if GS_JON021_POSFIX then cxBtnFixPos.LookAndFeel.SkinName := 'Office2010Silver'
											else cxBtnFixPos.LookAndFeel.SkinName := 'Sharp';

	ig021Top  := Self.Top;
  ig021Left := Self.Left;
end;

procedure Tfrm_JON021.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := False;
end;

procedure Tfrm_JON021.FormClose(Sender: TObject; var Action: TCloseAction);
var
  EnvFile: TIniFile;
begin
  EnvFile := TIniFile.Create(ENVPATHFILE);
  try
		EnvFile.WriteInteger('WinPos', 'Jon021Left', ig021Left);
		EnvFile.WriteInteger('WinPos', 'Jon021Top' , ig021Top );
  finally
    EnvFile.Free;
	end;
  Action := caFree;
end;

procedure Tfrm_JON021.FormCreate(Sender: TObject);
var
  i : integer;
  Save: LongInt; // ��Ÿ��Ʋ ���ſ�.
begin
	Self.Left  := GS_EnvFile.ReadInteger('WinPos', 'Jon019Left', 0);
  Self.Top   := GS_EnvFile.ReadInteger('WinPos', 'Jon019Top', 0);

	ig021Top  := Self.Top;
	ig021Left := Self.Left;

	if Self.Left < 0 then Self.Left := 0;
  if Self.Top < 0 then Self.Top := 0;

	if BorderStyle = bsNone then Exit;
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
	btn_Auto.Down := GB_KMAiRateMode;
	GB_KMAiRateMode := TcxButton(Sender).Down;
	if GB_KMAiRateMode then btn_Auto.Caption := '�������' else btn_Auto.Caption := '�ڵ����';

	GS_EnvFile.WriteBool('MYMAINTELUSE', 'KMAiRateMode', GB_KMAiRateMode);

	if GB_KMAiRateMode then btn_Auto.LookAndFeel.SkinName := 'Office2010Silver'
										 else btn_Auto.LookAndFeel.SkinName := 'Sharp';
	proc_init;
end;

procedure Tfrm_JON021.FormDeactivate(Sender: TObject);
begin
	cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := False;
end;

procedure Tfrm_JON021.FormDestroy(Sender: TObject);
begin
	frm_JON021 := Nil;
end;

procedure Tfrm_JON021.FormShow(Sender: TObject);
begin
	fSetFont(Frm_JON021, GS_FONTNAME);
	fSetSkin(Frm_JON021);
//  if GS_JON01_GROUPMOVE then TmrChkTag.Enabled := True;
	TmrChkTag.Enabled := True;   // �ڼ��� �������ϰ� �ɼǿ� ���� �̵�( �������¿��� �ڼ� ������� �ٷ� �����ϱ� ����);

	if Not GS_JON021_POSFIX then
  begin
    Self.Left := Frm_Main.Frm_JON01N[Self.Tag].Left - (Self.Width + 1);
		Self.Top  := Frm_Main.Frm_JON01N[Self.Tag].Top + Frm_Main.Frm_JON01N[Self.Tag].pnlBody.Top + Frm_Main.Frm_JON01N[Self.Tag].grpOption.Top;
  end else
  begin
		Self.Left := ig021Left;
		Self.Top  := ig021Top;
	end;
	SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);
	btn_Auto.Down := GB_KMAiRateMode;
	btn_AutoClick(btn_Auto);
end;

procedure Tfrm_JON021.lb_AiFareClick(Sender: TObject);
var sTmp, sChargeNm : string;
begin
	sTmp := TcxLabel(Sender).Hint;
  sChargeNm := Copy(TcxLabel(Sender).Caption, 1, 4);
	Frm_Main.Frm_JON01N[Self.Tag].curRate.value := StrToIntDef(sTmp, 0);
  Frm_Main.Frm_JON01N[Self.Tag].curKm.Text := lb_Distance.Hint;
  Frm_Main.Frm_JON01N[Self.Tag].fTotalTime := gRTotalTime;

  Frm_Main.Frm_JON01N[Self.Tag].pnl_charge.BringToFront;
  Frm_Main.Frm_JON01N[Self.Tag].pnl_charge.Visible := True;

  Frm_Main.Frm_JON01N[Self.Tag].Lbl_Charge.Caption := 'īī��AI���)' + sChargeNm+ ' ' + StrToMoney(sTmp);
  Frm_Main.Frm_JON01N[Self.Tag].Lbl_Distance.Caption := 'īī����Ž)' + lb_Distance.Hint + ' �ð�)' + lb_Time.Caption;
  Frm_Main.Frm_JON01N[Self.Tag].pnl_Charge.height := 21;
  Frm_Main.Frm_JON01N[Self.Tag].Lbl_Distance.Left := Frm_Main.Frm_JON01N[Self.Tag].Pnl_Charge.Width  
                                                 - ( Frm_Main.Frm_JON01N[Self.Tag].Lbl_Distance.Width  + 7);
  Frm_Main.Frm_JON01N[Self.Tag].Lbl_Distance.Top  := Frm_Main.Frm_JON01N[Self.Tag].Lbl_Charge.Top;

	btn_Close.Click;
end;

procedure Tfrm_JON021.lb_TitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_JON021.proc_init;
begin
	lb_AiFare     .Caption := '���Ĵٵ� -';
	lb_VipFare    .Caption := '�����̾� -';
	lb_EconomyFare.Caption := '���ڳ�� -';
	lb_Distance   .Caption := '- ';
	lb_Time       .Caption := '- ';

  lb_AiFare     .Hint := '';
  lb_VipFare    .Hint := '';
  lb_EconomyFare.Hint := '';
  lb_Distance   .Hint := '';
  lb_Time       .Hint := '';
  gRTotalTime := 0;
end;

function Tfrm_JON021.func_KakaoTAICharge(AlDepArr: TStringList;
	AResvTime: String):string;
var
	ls_TxLoad, XmlData, ls_MSG_Err : string;
	slRcvList: TStringList;
	xdom: msDomDocument;
	lst_Result: IXMLDomNodeList;
	ErrCode, j, iRow, iTmp : Integer;
	sTmp, sDate, sDep, sArr, sVia, sAiFare, sVipFare, sEconomyFare, sDis, sChargeNm: string; 
	iHour, iMin, iSec, iTotalTime : Integer;
	dTmp : Double;
begin
	try
    Result := '';
		sDep := AlDepArr[0];
		sArr := AlDepArr[1];
		sVia := AlDepArr[2];

		ls_TxLoad := GTx_UnitXmlLoad('KM00030.XML');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'KM00030');
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strDep', Trim(sDep));
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strArr', Trim(sArr));
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strVia', Trim(sVia));
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strScheduledAt', Trim(AResvTime));

		slRcvList := TStringList.Create;
		try
			if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 180000) then
			begin
				if slRcvList.Count > 0 then
				begin
					Frm_Flash.cxPBar1.Properties.Max := slRcvList.Count;
					Frm_Flash.cxPBar1.Position := 0;

					for j := 0 to slRcvList.Count - 1 do
					begin
						Frm_Flash.cxPBar1.Position := j + 1;
						Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slRcvList.Count);
						Application.ProcessMessages;
						xmlData := slRcvList.Strings[j];

						xdom := ComsDomDocument.Create;

						if not xdom.loadXML(XmlData) then Exit;

						ls_MSG_Err := GetXmlErrorCode(XmlData);
						if ('0000' = ls_MSG_Err) then
						begin
							lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Response/Data');
							sTmp := lst_Result.item[0].attributes.getNamedItem('AiFare').Text;
							lb_AiFare.Caption := '���Ĵٵ� ' + strToMoney(sTmp) + '��';
							sAiFare := RemoveAll(strToMoney(sTmp), ','); 
							lb_AiFare.Hint := sAiFare;
							
							sTmp := lst_Result.item[0].attributes.getNamedItem('VipFare').Text;
							lb_VipFare.Caption := '�����̾� ' + strToMoney(sTmp) + '��';
							sVipFare := RemoveAll(strToMoney(sTmp), ',');
							lb_VipFare.Hint := sVipFare;

							sTmp := lst_Result.item[0].attributes.getNamedItem('EconomyFare').Text;
							lb_EconomyFare.Caption := '���ڳ�� ' + strToMoney(sTmp) + '��';
							sEconomyFare := RemoveAll(strToMoney(sTmp), ',');
							lb_EconomyFare.Hint := sEconomyFare;

							sTmp := lst_Result.item[0].attributes.getNamedItem('Distance').Text;
							dTmp := RoundTo(StrToFloat(sTmp) / 1000, -1);
							sTmp := FloatToStr(dTmp);
							lb_Distance.Caption := sTmp + 'Km';
							sDis := sTmp + 'Km';
              lb_Distance.Hint := sDis;
              
							sTmp := lst_Result.item[0].attributes.getNamedItem('Time').Text;
							iTmp := Pos('.', sTmp);
							sTmp := Copy(sTmp, 1, iTmp-1);
							lb_Time.Hint := sTmp;
							iTotalTime := StrToIntDef(sTmp, 0);
							iHour := iTotalTime div 3600;
							iMin  := (iTotalTime - (iHour * 3600)) div 60;
							iSec  := (iTotalTime - (iHour * 3600) - (iMin * 60));

							sDate := '';
							if iHour > 0 then sDate := sDate + IntToStr(iHour) + '�ð�';
							if iMin > 0  then sDate := sDate + IntToStr(iMin) + '��';
//							if iSec > 0  then sDate := sDate + IntToStr(iSec) + '��';
              gRTotalTime := iTotalTime;
							lb_Time.Caption := sDate;
              Result := sDate;
							if GS_KMAiRateName = 'AiFare'      then begin sChargeNm := '���ٴٵ�'; sTmp := sAiFare;  end else
							if GS_KMAiRateName = 'VipFare'     then begin sChargeNm := '�����̾�'; sTmp := sVipFare; end else
							if GS_KMAiRateName = 'EconomyFare' then begin sChargeNm := '���ڳ��'; sTmp := sEconomyFare; end;
							if (GB_KMAiRateUSE) and (not GB_KMAiRateMode) then   //�ڵ���忡���� �ڵ����� �˾���ư���� â ���� ��� ���� Ŭ������ ��� ���ý� ������� �������.
							begin
								Frm_Main.Frm_JON01N[Self.Tag].curRate.value := StrToIntDef(sTmp, 0);
                Frm_Main.Frm_JON01N[Self.Tag].curKm.Text := lb_Distance.Hint;
                Frm_Main.Frm_JON01N[Self.Tag].fTotalTime := iTotalTime;
//								Frm_Main.Frm_JON01N[Self.Tag].curKm.Text := sDis; //�ڵ����뿡�� ����. ����� ���� 20210930

                Frm_Main.Frm_JON01N[Self.Tag].pnl_charge.BringToFront;
                Frm_Main.Frm_JON01N[Self.Tag].pnl_charge.Visible := True;

                Frm_Main.Frm_JON01N[Self.Tag].Lbl_Charge.Caption := 'īī��AI���)' + sChargeNm+ ' ' + StrToMoney(sTmp);
                Frm_Main.Frm_JON01N[Self.Tag].Lbl_Distance.Caption := 'īī����Ž)' + lb_Distance.Hint + ' �ð�)' + lb_Time.Caption;
                Frm_Main.Frm_JON01N[Self.Tag].pnl_Charge.height := 21;
                Frm_Main.Frm_JON01N[Self.Tag].Lbl_Distance.Left := Frm_Main.Frm_JON01N[Self.Tag].Pnl_Charge.Width  
                                                               - ( Frm_Main.Frm_JON01N[Self.Tag].Lbl_Distance.Width  + 7);
                Frm_Main.Frm_JON01N[Self.Tag].Lbl_Distance.Top  := Frm_Main.Frm_JON01N[Self.Tag].Lbl_Charge.Top
//                                                                   Frm_Main.Frm_JON01N[Self.Tag].Pnl_Charge.Height 
//                                                               - ( Frm_Main.Frm_JON01N[Self.Tag].Lbl_Distance.Height + 6);
              end;
							gsKMAiChargeOK := True;
              Frm_Main.Frm_JON01N[Self.Tag].fTotalTime := iTotalTime;
						end else
						begin
							inc(GS_KM00030_ErrorCnt);
							if Pos(ls_Msg_Err, GS_KM00030_ErrorMsg) < 1 then
								GS_KM00030_ErrorMsg := GS_KM00030_ErrorMsg + ls_Msg_Err + '/';
							gsKMAiChargeOK := False;
						//							GMessagebox(ls_Msg_Err, CDMSE);  //�����޼��� ����� ����, ��������� 
						end;
					end;
				end;
			end;
		finally
      xdom := Nil;
		end;
  except
    on e: Exception do
    begin
			sTmp := 'JON021[func_KakaoTAICharge]Error : ' + e.Message;
			Assert(False, E.Message);
		end;
	end;    
end;

procedure Tfrm_JON021.TmrChkTagTimer(Sender: TObject);
begin
  TmrChkTag.Enabled := False;
  if Not Self.Showing then Exit;
  try
    if ( Self.Tag <> TmrChkTag.Tag ) And ( bChkTime )  then
    begin
      if Frm_Main.JON01MNG[Self.Tag].Dock then
      begin
        if Assigned(MagneticWnd) then
        begin
          MagneticWnd.RemoveWindow(Self.Handle);
        end;

        MagneticWnd.AddWindow(Frm_JON00.Handle, 0, MagneticWndProc);
//        MagneticWndProc := Nil;
        TmrChkTag.Tag := Self.Tag;

        if not assigned(MagneticWndProc) then
          if Assigned(MagneticWnd) then
          begin
             MagneticWnd.AddWindow(Self.Handle, Frm_JON00.Handle, MagneticWndProc);
          end;
      end else
      begin
        if Assigned(MagneticWnd) then
        begin
          MagneticWnd.RemoveWindow(Self.Handle);
        end;

        MagneticWnd.AddWindow(Frm_Main.Frm_JON01N[Self.Tag].Handle, 0, MagneticWndProc);
//        MagneticWndProc := Nil;
        TmrChkTag.Tag := Self.Tag;

        if not assigned(MagneticWndProc) then
          if Assigned(MagneticWnd) then
          begin
             MagneticWnd.AddWindow(Self.Handle, Frm_Main.Frm_JON01N[Self.Tag].Handle, MagneticWndProc);
          end;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;

  TmrChkTag.Enabled := True;
end;

procedure Tfrm_JON021.WMCommand(var Msg: TMessage);
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

	inherited;

	if Assigned(MagneticWndProc) then
		MagneticWndProc(Self.Handle, WM_COMMAND, lGlue, Msg, dummyHandled);
end;

procedure Tfrm_JON021.WMEnterSizeMove(var Msg: TMessage);
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

	inherited;

	if Assigned(MagneticWndProc) then
		MagneticWndProc(Self.Handle, WM_ENTERSIZEMOVE, lGlue, Msg, dummyHandled);
end;

procedure Tfrm_JON021.WMExitSizeMove(var Msg: TMessage);
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

	inherited;

	if Assigned(MagneticWndProc) then
		MagneticWndProc(Self.Handle, WM_EXITSIZEMOVE, lGlue, Msg, dummyHandled);
end;

procedure Tfrm_JON021.WMMoving(var Msg: TMessage);
var
	bHandled: Boolean;
begin
	ig021Top  := Self.Top;
	ig021Left := Self.Left;

  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

	if not Assigned(MagneticWndProc) then
		inherited
	else
		if MagneticWndProc(Self.Handle, WM_MOVING, lGlue, Msg, bHandled) then
			if not bHandled then
				inherited;
end;

procedure Tfrm_JON021.WMShowHideWindow(var Msg: TMessage);
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

	inherited;

	if Assigned(MagneticWndProc) then
		MagneticWndProc(Self.Handle, WM_WINDOWPOSCHANGED, lGlue, Msg, dummyHandled);
end;

procedure Tfrm_JON021.WMSizing(var Msg: TMessage);
var
	bHandled: Boolean;
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

	if not Assigned(MagneticWndProc) then
		inherited
	else
		if MagneticWndProc(Self.Handle, WM_SIZING, lGlue, Msg, bHandled) then
			if not bHandled then
				inherited;
end;

procedure Tfrm_JON021.WMSysCommand(var Msg: TMessage);
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

	inherited;

	if Assigned(MagneticWndProc) then
		MagneticWndProc(Self.Handle, WM_SYSCOMMAND, lGlue, Msg, dummyHandled);
end;

end.

unit xe_JON019;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxGraphics, cxStyles, MSXML2_TLB,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxLabel,
  cxCheckBox, cxImageComboBox, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxDropDownEdit, cxCalendar,
  cxMaskEdit, cxTextEdit, cxContainer, StdCtrls, cxButtons, GradientLabel,
	ExtCtrls, jpeg, Magnetic, cxLookAndFeels, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxNavigator, cxRadioGroup, cxGroupBox, IniFiles, dxGDIPlusClasses,
  Vcl.ImgList, cxMemo, cxRichEdit, AdvGlowButton, dxSkinsCore,
	dxSkinscxPCPainter, System.ImageList, cxImageList, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, 
	dxSkinMetropolisDark, dxSkinOffice2007Silver, dxScrollbarAnnotations;
type
  TSMART = record
		OderWorker, Weather, S1, S2, S3, S4, SX, SY, E1, E2, E3, E4, EX, EY, STYPE: STRING;
  end;

type
  TFrm_JON019 = class(TForm)
		pnlMain: TPanel;
    cxTextEdit14: TcxTextEdit;
    cxComboBox2: TcxComboBox;
    cxComboBox3: TcxComboBox;
    cxCheckBox2: TcxCheckBox;
    cxDate20: TcxDateEdit;
    cxDate21: TcxDateEdit;
    pnl3: TPanel;
    btn_Setting: TcxButton;
    cxButton3: TcxButton;
    pnlTitle: TPanel;
    BtnClose: TcxButton;
    cxLabel16: TcxLabel;
    cxLabel2: TcxLabel;
    pnl_Grid: TPanel;
    cxLabel18: TcxLabel;
    lb_NearWKCnt: TcxLabel;
    cxLabel20: TcxLabel;
    lb_NearStandByCallCnt: TcxLabel;
    cxLabel11: TcxLabel;
    chk_AutoSmartCharge: TcxCheckBox;
    chk_PopUpSmartCharge: TcxCheckBox;
    cxLabel14: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel21: TcxLabel;
    chk_RealTimeWorker: TcxCheckBox;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    chk_RealTimeWeather: TcxCheckBox;
    TmrChkTag: TTimer;
    cxGrid1: TcxGrid;
    cxGridOrderSTview: TcxGridBandedTableView;
    cxGridOrderSTviewColumn1: TcxGridBandedColumn;
    cxGridOrderSTviewColumn2: TcxGridBandedColumn;
    cxGridOrderSTviewColumn3: TcxGridBandedColumn;
    cxGridOrderSTviewColumn4: TcxGridBandedColumn;
    cxGridOrderSTviewColumn5: TcxGridBandedColumn;
    cxGridOrderSTviewColumn6: TcxGridBandedColumn;
    cxGridOrderSTviewColumn7: TcxGridBandedColumn;
    cxGridOrderSTviewColumn8: TcxGridBandedColumn;
    cxGridOrderSTviewColumn9: TcxGridBandedColumn;
    cxGridOrderSTviewColumn10: TcxGridBandedColumn;
    cxGridOrderSTviewColumn11: TcxGridBandedColumn;
    cxGridOrderSTviewColumn12: TcxGridBandedColumn;
    cxGridOrderSTviewColumn13: TcxGridBandedColumn;
    cxGridOrderSTviewColumn14: TcxGridBandedColumn;
    cxGridOrderSTviewColumn15: TcxGridBandedColumn;
    cxGridOrderSTviewColumn16: TcxGridBandedColumn;
    cxGridOrderSTviewColumn17: TcxGridBandedColumn;
    cxGridOrderSTviewColumn18: TcxGridBandedColumn;
    cxGridOrderSTviewColumn19: TcxGridBandedColumn;
    cxGridOrderSTviewColumn20: TcxGridBandedColumn;
    cxGridOrderSTviewColumn21: TcxGridBandedColumn;
    cxGridOrderSTviewColumn22: TcxGridBandedColumn;
    cxGridLevel1: TcxGridLevel;
    tmr_gHighlight: TTimer;
    Panel1: TPanel;
    cxImageList1: TcxImageList;
    chkSmartRate: TcxCheckBox;
    rb_DongDong: TcxRadioButton;
    rb_DongGu: TcxRadioButton;
    rb_GuDong: TcxRadioButton;
    rb_GuGu: TcxRadioButton;
    rb_GuSi: TcxRadioButton;
    Panel4: TPanel;
    Image1: TImage;
    cxLabel3: TcxLabel;
    lb_WeatherArea: TcxLabel;
    lb_WeatherTemp: TcxLabel;
    lb_Today: TcxLabel;
    lb_Weather: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel24: TcxLabel;
    lb_Sample: TcxLabel;
    lb_SmartTitle: TcxLabel;
    cxLabel26: TcxLabel;
    lb_RankSmart: TcxLabel;
    cxLabel10: TcxLabel;
    lb_Rank1: TcxLabel;
    cxLabel9: TcxLabel;
    lb_Rank2: TcxLabel;
    lb_Rank3: TcxLabel;
    cxLabel8: TcxLabel;
    rb_Auto: TcxRadioButton;
    Panel2: TPanel;
    Panel3: TPanel;
    lb_SAddr: TcxRichEdit;
    lb_DAddr: TcxRichEdit;
    cxLabel1: TcxLabel;
    cxLblActive: TLabel;
    chk_AllPopUpSmartCharge: TcxCheckBox;
    btn_sntest: TcxButton;
    cxBtnFixPos: TcxButton;
    edt_sntest: TcxTextEdit;
    grpSetting: TcxGroupBox;
    Shape7: TShape;
    cxLabel6: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure btn_SettingClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure pnl3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rb_DongDongClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure chk_AutoSmartChargeClick(Sender: TObject);
    procedure chk_PopUpSmartChargeClick(Sender: TObject);
    procedure chk_RealTimeWorkerClick(Sender: TObject);
    procedure chk_RealTimeWeatherClick(Sender: TObject);
    procedure TmrChkTagTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGridOrderSTviewCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tmr_gHighlightTimer(Sender: TObject);
    procedure cxGridOrderSTviewStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure chkSmartRateClick(Sender: TObject);
    procedure rb_DongGuClick(Sender: TObject);
    procedure rb_GuDongClick(Sender: TObject);
    procedure rb_GuGuClick(Sender: TObject);
    procedure rb_GuSiClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rb_AutoClick(Sender: TObject);
    procedure cxGridOrderSTviewCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxBtnFixPosClick(Sender: TObject);
    procedure chk_AllPopUpSmartChargeClick(Sender: TObject);
    procedure btn_sntestClick(Sender: TObject);
    procedure lb_RankSmartDblClick(Sender: TObject);
    procedure cxGridOrderSTviewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    iSmartRow : integer;
    FSmart : TSMART;
    APar : Boolean;
    iFirstGridHighlight, iParCnt : Integer;
    iSmartColumn : integer;  //현재시간구분

    ig019Top, ig019Left : Integer;
    procedure proc_Init;
  public
    { Public declarations }
    bChkTime : Boolean;
    procedure WMEnterSizeMove(var Msg: TMessage); message WM_ENTERSIZEMOVE;
    procedure WMSizing(var Msg: TMessage); message WM_SIZING;
    procedure WMMoving(var Msg: TMessage); message WM_MOVING;
    procedure WMExitSizeMove(var Msg: TMessage); message WM_EXITSIZEMOVE;
		procedure WMShowHideWindow(var Msg: TMessage); message WM_WINDOWPOSCHANGED;
    procedure WMSysCommand(var Msg: TMessage); message WM_SYSCOMMAND;
    procedure WMCommand(var Msg: TMessage); message WM_COMMAND;

    Procedure Proc_SmartCharge(AOderWorker, AWeather, ASta1, ASta2, ASta3, ASPOI, ASX, ASY, AEnd1, AEnd2, AEnd3, AEPOI, AEX, AEY, AType : string);
	end;

var
  Frm_JON019: TFrm_JON019;

implementation

{$R *.dfm}

uses Main, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet, xe_xml, xe_Dm, xe_JON00;

procedure TFrm_JON019.WMCommand(var Msg: TMessage);
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

procedure TFrm_JON019.WMEnterSizeMove(var Msg: TMessage);
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

procedure TFrm_JON019.WMExitSizeMove(var Msg: TMessage);
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

procedure TFrm_JON019.WMMoving(var Msg: TMessage);
var
	bHandled: Boolean;
begin
  ig019Top  := Self.Top;
  ig019Left := Self.Left;

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

procedure TFrm_JON019.WMShowHideWindow(var Msg: TMessage);
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

procedure TFrm_JON019.WMSizing(var Msg: TMessage);
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

procedure TFrm_JON019.WMSysCommand(var Msg: TMessage);
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

procedure TFrm_JON019.FormCreate(Sender: TObject);
var
  i : integer;
  Save: LongInt; // 폼타이틀 제거용.
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

	//====================================================
  // 폼 타이틀 제거..
  Image1.Picture := Nil;
  if GT_USERIF.ID = 'sntest' then
  begin
    edt_sntest.Visible := True;
    btn_sntest.Visible := True;
  end;

  cxBtnFixPos.Down := GS_JON019_POSFIX;
  cxBtnFixPosClick(cxBtnFixPos);

  Self.Left  := GS_EnvFile.ReadInteger('WinPos', 'Jon019Left', 0);
  Self.Top   := GS_EnvFile.ReadInteger('WinPos', 'Jon019Top', 0);

  ig019Top  := Self.Top;
  ig019Left := Self.Left;

  if GB_JON_SMARTSIZEFLAG = 0 then cxButton3.Caption := '작게보기'
                              else cxButton3.Caption := '크게보기';

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
end;

procedure TFrm_JON019.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := False;
end;

procedure TFrm_JON019.FormDestroy(Sender: TObject);
begin
  frm_JON019 := Nil;
end;

procedure TFrm_JON019.BtnCloseClick(Sender: TObject);
begin
  bChkTime := False;
  TmrChkTag.Tag := 100;
  if GS_JON01_GROUPMOVE then MagneticWnd.RemoveWindow(Self.Handle);

  if grpSetting.Visible then grpSetting.Visible := False;

	Hide;
end;

procedure TFrm_JON019.btn_SettingClick(Sender: TObject);
begin
  if grpSetting.Visible = True then
  begin
    grpSetting.Visible := False;
  end else
  begin
    grpSetting.Visible := True;
    grpSetting.Height  := 232;
    grpSetting.Left    := 2;
    grpSetting.Top     := 35;
   	chk_AutoSmartCharge.Checked := GT_AutoSmartCharge;
   	chk_PopUpSmartCharge.Checked := GT_PopUpSmartCharge;
   	chk_AllPopUpSmartCharge.Checked := GT_AllPopUpSmartCharge;
   	chk_RealTimeWorker.Checked := GT_RealTimeWorker;
   	chk_RealTimeWeather.Checked := GT_RealTimeWeather;
    chkSmartRate.Checked := GB_JON_SMARTRATEUSE;
  end;
end;

procedure TFrm_JON019.cxBtnFixPosClick(Sender: TObject);
begin
  GS_JON019_POSFIX := TcxButton(Sender).Down;
  GS_EnvFile.WriteBool('AcceptWin', 'Jon019Fix', GS_JON019_POSFIX);

	if GS_JON019_POSFIX then cxBtnFixPos.LookAndFeel.SkinName := 'Office2010Silver'
                      else cxBtnFixPos.LookAndFeel.SkinName := 'Sharp';

  ig019Top  := Self.Top;
  ig019Left := Self.Left;
end;

procedure TFrm_JON019.btn_sntestClick(Sender: TObject);
begin
  GB_JON_SMARTTESTDATE := Trim(edt_sntest.Text);
  GS_EnvFile.WriteString('SmartOption', 'SMARTTESTDATE', GB_JON_SMARTTESTDATE);
end;

procedure TFrm_JON019.cxButton3Click(Sender: TObject);
begin
	if cxButton3.Caption = '크게보기' then //크게보기상태
	begin
    GB_JON_SMARTSIZEFLAG := 0;
		FormResize(sender);
		cxButton3.Caption := '작게보기';
	end	else
	if cxButton3.Caption = '작게보기' then //작게보기상태
	begin
    GB_JON_SMARTSIZEFLAG := 1;
		FormResize(sender);
		cxButton3.Caption := '크게보기';
	end;

  GS_EnvFile.WriteInteger('SmartOption', 'SmartSizeFlag', GB_JON_SMARTSIZEFLAG);

  Self.Left := Frm_Main.Frm_JON01N[Self.Tag].Left - (Self.Width + 1);
  Self.Top  := Frm_Main.Frm_JON01N[Self.Tag].Top;
end;

procedure TFrm_JON019.cxGridOrderSTviewCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var iRow : integer;
	sTmp : string;
begin

	iRow := cxGridOrderSTview.DataController.FocusedRecordIndex;
	sTmp := cxGridOrderSTview.DataController.Values[iRow, 0];
	sTmp := StringReplace(sTmp,',','',[rfReplaceAll]);
	sTmp := StringReplace(sTmp,'원','',[rfReplaceAll]);
 	Frm_Main.Frm_JON01N[Self.Tag].curRate.value := StrToIntDef(sTmp, 0);
end;

procedure TFrm_JON019.cxGridOrderSTviewCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  AView: TcxCustomGridTableView;
begin
 	AView := Sender as TcxCustomGridTableView;

  if AViewInfo.GridRecord.Index = iSmartRow  then
  begin
    if ( tmr_gHighlight.Enabled ) And ( iParCnt <= 6 ) then
    begin
      if APar then
      begin
        AViewInfo.EditViewInfo.TextColor := clYellow;
        AViewInfo.EditViewInfo.Font.Style  := [fsBold];
        AViewInfo.EditViewInfo.Font.Size := 11;
        AViewInfo.EditViewInfo.Paint(ACanvas);
        Exit;
      end;
    end;   //반짝이 표기

    ///////////////////////칸그리기//////////////////////////////////////
    ACanvas.Brush.Color := $00C1D6FF;
    AViewInfo.EditViewInfo.BackgroundColor := ACanvas.Brush.Color;
    if AViewInfo.Item.Index in [2, 5, 8, 11, 14, 17, 20] then //취소율만 붉은색
    begin
      if GB_DARKMODE then AViewInfo.EditViewInfo.TextColor := GS_DarkFocusColor
                     else AViewInfo.EditViewInfo.TextColor := clRed;
    end else
    begin
      AViewInfo.EditViewInfo.TextColor := clBlack;
    end;
    AViewInfo.EditViewInfo.Font.Style := [fsBold];
    AViewInfo.EditViewInfo.Font.Size := 11;
    AViewInfo.EditViewInfo.Paint(ACanvas);

    ACanvas.Pen.Style := psSolid;

    if AViewInfo.Item.VisibleIndex = 0 then
      ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bLeft, bTop, bBottom], 3);
    if AViewInfo.Item.VisibleIndex = Sender.VisibleItemCount - 1 then
      ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bRight, bTop, bBottom], 3)
    else
      ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bTop, bBottom], 3);

    ADone := True;
  end else  //비선택요금 라인
  begin
    ACanvas.Pen.Style := psSolid;
    if AViewInfo.Item.Index in [2, 5, 8, 11, 14, 17, 20] then //취소율만 붉은색
    begin
      if GB_DARKMODE then AViewInfo.EditViewInfo.TextColor := GS_DarkFocusColor
                     else AViewInfo.EditViewInfo.TextColor := clRed;
    end else
    begin
     if GB_DARKMODE then AViewInfo.EditViewInfo.TextColor := clWhite
                    else AViewInfo.EditViewInfo.TextColor := clBlack;
    end;
    AViewInfo.EditViewInfo.Font.Style  := [fsBold];
    AViewInfo.EditViewInfo.Font.Size := 11;
    AViewInfo.EditViewInfo.Paint(ACanvas);

    if AViewInfo.Item.Index in [10, 11, 12] then
    begin
      ACanvas.Brush.Color := $00EEEEEE;
      AViewInfo.EditViewInfo.BackgroundColor := ACanvas.Brush.Color;
      AViewInfo.EditViewInfo.TextColor := clBlack;
      AViewInfo.EditViewInfo.Paint(ACanvas);
    end;
    if AViewInfo.Item.Index in [13, 14, 15] then
    begin
      ACanvas.Brush.Color := $00C5FDFE;
      AViewInfo.EditViewInfo.BackgroundColor := ACanvas.Brush.Color;
      AViewInfo.EditViewInfo.TextColor := clBlack;
      AViewInfo.EditViewInfo.Paint(ACanvas);
    end;
    if AViewInfo.Item.Index in [16, 17, 18] then
    begin
      ACanvas.Brush.Color := $00FFE1C4;
      AViewInfo.EditViewInfo.BackgroundColor := ACanvas.Brush.Color;
      AViewInfo.EditViewInfo.TextColor := clBlack;
      AViewInfo.EditViewInfo.Paint(ACanvas);
    end;

    if iSmartColumn = 20 then
    begin
      if AViewInfo.Item.Index in [4,5,6] then
      begin
        ACanvas.Brush.Color := $00C1D6FF;
        AViewInfo.EditViewInfo.BackgroundColor := ACanvas.Brush.Color;
        AViewInfo.EditViewInfo.TextColor := clBlack;
        if AViewInfo.Item.Index = 4 then
        begin
          if AViewInfo.GridRecord.Index = 0 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bLeft, bTop], 3);
          if AViewInfo.GridRecord.Index = 6 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bLeft, bBottom], 3)
          else
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bLeft], 3);
          AViewInfo.EditViewInfo.Paint(ACanvas);
        end;
        if AViewInfo.Item.Index = 6 then
        begin
          if AViewInfo.GridRecord.Index = 0 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bRight, bTop], 3);
          if AViewInfo.GridRecord.Index = 6 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bRight, bBottom], 3)
          else
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bRight], 3);
          AViewInfo.EditViewInfo.Paint(ACanvas);
        end;
        if AViewInfo.Item.Index = 5 then
        begin
          if AViewInfo.GridRecord.Index = 0 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bTop], 3);
          if AViewInfo.GridRecord.Index = 6 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bBottom], 3);
          AViewInfo.EditViewInfo.Paint(ACanvas);
        end;
      end;
    end else
    if iSmartColumn = 40 then
    begin
      if AViewInfo.Item.Index in [7,8,9] then
      begin
        ACanvas.Brush.Color := $00C1D6FF;
        AViewInfo.EditViewInfo.BackgroundColor := ACanvas.Brush.Color;
        AViewInfo.EditViewInfo.TextColor := clBlack;
        if AViewInfo.Item.Index = 7 then
        begin
          if AViewInfo.GridRecord.Index = 0 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bLeft, bTop], 3);
          if AViewInfo.GridRecord.Index = 9 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bLeft, bBottom], 3)
          else
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bLeft], 3);
          AViewInfo.EditViewInfo.Paint(ACanvas);
        end;
        if AViewInfo.Item.Index = 9 then
        begin
          if AViewInfo.GridRecord.Index = 0 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bRight, bTop], 3);
          if AViewInfo.GridRecord.Index = 9 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bRight, bBottom], 3)
          else
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bRight], 3);
          AViewInfo.EditViewInfo.Paint(ACanvas);
        end;
        if AViewInfo.Item.Index = 8 then
        begin
          if AViewInfo.GridRecord.Index = 0 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bTop], 3);
          if AViewInfo.GridRecord.Index = 9 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bBottom], 3);
          AViewInfo.EditViewInfo.Paint(ACanvas);
        end;
      end;
    end else
    if iSmartColumn = 62 then
    begin
      if AViewInfo.Item.Index in [10,11,12] then
      begin
        ACanvas.Brush.Color := $00C1D6FF;
        AViewInfo.EditViewInfo.TextColor := clBlack;
        AViewInfo.EditViewInfo.BackgroundColor := ACanvas.Brush.Color;
         if AViewInfo.Item.Index = 10 then
        begin
          if AViewInfo.GridRecord.Index = 0 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bLeft, bTop], 3);
          if AViewInfo.GridRecord.Index = 12 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bLeft, bBottom], 3)
          else
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bLeft], 3);
          AViewInfo.EditViewInfo.Paint(ACanvas);
        end;
        if AViewInfo.Item.Index = 12 then
        begin
          if AViewInfo.GridRecord.Index = 0 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bRight, bTop], 3);
          if AViewInfo.GridRecord.Index = 12 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bRight, bBottom], 3)
          else
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bRight], 3);
          AViewInfo.EditViewInfo.Paint(ACanvas);
        end;
        if AViewInfo.Item.Index = 11 then
        begin
          if AViewInfo.GridRecord.Index = 0 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bTop], 3);
          if AViewInfo.GridRecord.Index = 12 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bBottom], 3);
          AViewInfo.EditViewInfo.Paint(ACanvas);
        end;
      end;
    end else
    if iSmartColumn = 64 then
    begin
      if AViewInfo.Item.Index in [13,14,15] then
      begin
        ACanvas.Brush.Color := $00C1D6FF;
        AViewInfo.EditViewInfo.TextColor := clBlack;
        AViewInfo.EditViewInfo.BackgroundColor := ACanvas.Brush.Color;
         if AViewInfo.Item.Index = 13 then
        begin
          if AViewInfo.GridRecord.Index = 0 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bLeft, bTop], 3);
          if AViewInfo.GridRecord.Index = 15 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bLeft, bBottom], 3)
          else
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bLeft], 3);
          AViewInfo.EditViewInfo.Paint(ACanvas);
        end;
        if AViewInfo.Item.Index = 15 then
        begin
          if AViewInfo.GridRecord.Index = 0 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bRight, bTop], 3);
          if AViewInfo.GridRecord.Index = 15 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bRight, bBottom], 3)
          else
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bRight], 3);
          AViewInfo.EditViewInfo.Paint(ACanvas);
        end;
        if AViewInfo.Item.Index = 14 then
        begin
          if AViewInfo.GridRecord.Index = 0 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bTop], 3);
          if AViewInfo.GridRecord.Index = 15 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bBottom], 3);
          AViewInfo.EditViewInfo.Paint(ACanvas);
        end;
      end;
    end else
    if iSmartColumn = 66 then
    begin
      if AViewInfo.Item.Index in [16,17,18] then
      begin
        ACanvas.Brush.Color := $00C1D6FF;
        AViewInfo.EditViewInfo.TextColor := clBlack;
        AViewInfo.EditViewInfo.BackgroundColor := ACanvas.Brush.Color;
         if AViewInfo.Item.Index = 16 then
        begin
          if AViewInfo.GridRecord.Index = 0 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bLeft, bTop], 3);
          if AViewInfo.GridRecord.Index = 18 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bLeft, bBottom], 3)
          else
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bLeft], 3);
          AViewInfo.EditViewInfo.Paint(ACanvas);
        end;
        if AViewInfo.Item.Index = 18 then
        begin
          if AViewInfo.GridRecord.Index = 0 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bRight, bTop], 3);
          if AViewInfo.GridRecord.Index = 18 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bRight, bBottom], 3)
          else
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bRight], 3);
          AViewInfo.EditViewInfo.Paint(ACanvas);
        end;
        if AViewInfo.Item.Index = 17 then
        begin
          if AViewInfo.GridRecord.Index = 0 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bTop], 3);
          if AViewInfo.GridRecord.Index = 18 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bBottom], 3);
          AViewInfo.EditViewInfo.Paint(ACanvas);
        end;
      end;
    end else
    if iSmartColumn = 80 then
    begin
      if AViewInfo.Item.Index in [19,20,21] then
      begin
        ACanvas.Brush.Color := $00C1D6FF;
        AViewInfo.EditViewInfo.TextColor := clBlack;
        AViewInfo.EditViewInfo.BackgroundColor := ACanvas.Brush.Color;
         if AViewInfo.Item.Index = 19 then
        begin
          if AViewInfo.GridRecord.Index = 0 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bLeft, bTop], 3);
          if AViewInfo.GridRecord.Index = 6 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bLeft, bBottom], 3)
          else
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bLeft], 3);
          AViewInfo.EditViewInfo.Paint(ACanvas);
        end;
        if AViewInfo.Item.Index = 21 then
        begin
          if AViewInfo.GridRecord.Index = 0 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bRight, bTop], 3);
          if AViewInfo.GridRecord.Index = 21 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bRight, bBottom], 3)
          else
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bRight], 3);
          AViewInfo.EditViewInfo.Paint(ACanvas);
        end;
        if AViewInfo.Item.Index = 20 then
        begin
          if AViewInfo.GridRecord.Index = 0 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bTop], 3);
          if AViewInfo.GridRecord.Index = 21 then
            ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clMaroon, clMaroon, [bBottom], 3);
          AViewInfo.EditViewInfo.Paint(ACanvas);
        end;
      end;
    end;
    ADone := True;
  end;
end;

procedure TFrm_JON019.cxGridOrderSTviewCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  ACanvas.Brush.Color := clYellow;
  AViewInfo.BorderColor[bLeft];
end;

procedure TFrm_JON019.cxGridOrderSTviewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  AStyle := Frm_Main.cxStyleSmartBasic;
end;

procedure TFrm_JON019.rb_AutoClick(Sender: TObject);
begin
  FSmart.STYPE := '';
  if rb_Auto.Tag = 0  then
    Proc_SmartCharge(FSmart.OderWorker, FSmart.Weather
                   , FSmart.S1, FSmart.S2, FSmart.S3, FSmart.S4, FSmart.SX, FSmart.SY
                   , FSmart.E1, FSmart.E2, FSmart.E3, FSmart.E4, FSmart.EX, FSmart.EY
                   , FSmart.STYPE);
  rb_Auto.Tag := 0;
end;

procedure TFrm_JON019.chk_RealTimeWeatherClick(Sender: TObject);
begin
	GT_RealTimeWeather  := chk_RealTimeWeather.Checked;
	GS_EnvFile.WriteBool('SmartOption', 'RealTimeWeather', GT_RealTimeWeather );
end;

procedure TFrm_JON019.chk_RealTimeWorkerClick(Sender: TObject);
begin
	GT_RealTimeWorker  := chk_RealTimeWorker.Checked;
	GS_EnvFile.WriteBool('SmartOption', 'RealTimeWorker', GT_RealTimeWorker );
end;

procedure TFrm_JON019.chkSmartRateClick(Sender: TObject);
begin
  GB_JON_SMARTRATEUSE := chkSmartRate.Checked;
  GS_EnvFile.WriteBool('SmartOption', 'SmartRateUse', GB_JON_SMARTRATEUSE);
end;

procedure TFrm_JON019.chk_AllPopUpSmartChargeClick(Sender: TObject);
begin
	GT_AllPopUpSmartCharge  := chk_AllPopUpSmartCharge.Checked;
	GS_EnvFile.WriteBool('SmartOption', 'AllPopUpSmartCharge', GT_AllPopUpSmartCharge );
end;

procedure TFrm_JON019.chk_AutoSmartChargeClick(Sender: TObject);
begin
	GT_AutoSmartCharge  := chk_AutoSmartCharge.Checked;
	GS_EnvFile.WriteBool('SmartOption', 'AutoSmartCharge', GT_AutoSmartCharge );
end;

procedure TFrm_JON019.chk_PopUpSmartChargeClick(Sender: TObject);
begin
	GT_PopUpSmartCharge  := chk_PopUpSmartCharge.Checked;
	GS_EnvFile.WriteBool('SmartOption', 'PopUpSmartCharge', GT_PopUpSmartCharge );
end;

procedure TFrm_JON019.FormResize(Sender: TObject);
begin
	if GB_JON_SMARTSIZEFLAG = 0 then   //크게보기
	begin
		self.Width := 1270;
    cxGridOrderSTview.Bands[5].Visible := True;
    cxGridOrderSTview.Bands[6].Visible := True;
    cxGridOrderSTview.Bands[7].Visible := True;
    cxGridOrderSTview.Bands[8].Visible := True;
    cxGridOrderSTview.Bands[9].Visible := True;
    cxGridOrderSTview.Bands[10].Visible := True;
    cxGridOrderSTview.Bands[11].Visible := True;
    cxGridOrderSTview.Bands[12].Visible := True;
    cxGridOrderSTview.Bands[13].Width   := 438;
    cxGridOrderSTview.Bands[13].Visible := True;
    cxGridOrderSTview.Bands[14].Visible := True;
    cxGridOrderSTview.Bands[15].Visible := True;
    cxGridOrderSTview.Bands[16].Visible := True;
    cxGridOrderSTview.Bands[17].Visible := True;
    cxGridOrderSTview.Bands[18].Visible := True;
    cxGridOrderSTview.Bands[19].Visible := True;
    cxGridOrderSTview.Bands[20].Visible := True;
	end	else
	if GB_JON_SMARTSIZEFLAG = 1 then   //작게보기
	begin
		self.Width := 533;

    cxGridOrderSTview.Bands[5].Visible := False;
    cxGridOrderSTview.Bands[6].Visible := False;
    cxGridOrderSTview.Bands[7].Visible := False;
    cxGridOrderSTview.Bands[8].Visible := False;
    cxGridOrderSTview.Bands[9].Visible := False;
    cxGridOrderSTview.Bands[10].Visible := False;
    cxGridOrderSTview.Bands[11].Visible := False;
    cxGridOrderSTview.Bands[12].Visible := False;
    cxGridOrderSTview.Bands[13].Visible := False;
    cxGridOrderSTview.Bands[14].Visible := False;
    cxGridOrderSTview.Bands[15].Visible := False;
    cxGridOrderSTview.Bands[16].Visible := False;
    cxGridOrderSTview.Bands[17].Visible := False;
    cxGridOrderSTview.Bands[18].Visible := False;
    cxGridOrderSTview.Bands[19].Visible := False;
    cxGridOrderSTview.Bands[20].Visible := False;

    if iSmartColumn = 20 then
    begin
      cxGridOrderSTview.Bands[5].Visible := True;
      cxGridOrderSTview.Bands[5].Width   := 142;
      cxGridOrderSTview.Bands[6].Visible := True;
      cxGridOrderSTview.Bands[6].Width   := 38;
      cxGridOrderSTview.Bands[7].Visible := True;
      cxGridOrderSTview.Bands[7].Width   := 49;
      cxGridOrderSTview.Bands[8].Visible := True;
      cxGridOrderSTview.Bands[8].Width   := 56;
    end else
    if iSmartColumn = 40 then
    begin
      cxGridOrderSTview.Bands[9].Visible := True;
      cxGridOrderSTview.Bands[9].Width   := 142;
      cxGridOrderSTview.Bands[10].Visible := True;
      cxGridOrderSTview.Bands[10].Width   := 38;
      cxGridOrderSTview.Bands[11].Visible := True;
      cxGridOrderSTview.Bands[11].Width   := 49;
      cxGridOrderSTview.Bands[12].Visible := True;
      cxGridOrderSTview.Bands[12].Width   := 56;
    end else
    if iSmartColumn = 62 then
    begin
      cxGridOrderSTview.Bands[13].Visible := True;
      cxGridOrderSTview.Bands[13].Width   := 147;
      cxGridOrderSTview.Bands[14].Visible := True;
      cxGridOrderSTview.Bands[14].Width   := 147;
    end else
    if iSmartColumn = 64 then
    begin
      cxGridOrderSTview.Bands[13].Visible := True;
      cxGridOrderSTview.Bands[13].Width   := 147;
      cxGridOrderSTview.Bands[15].Visible := True;
      cxGridOrderSTview.Bands[15].Width   := 147;
    end else
    if iSmartColumn = 66 then
    begin
      cxGridOrderSTview.Bands[13].Visible := True;
      cxGridOrderSTview.Bands[13].Width   := 147;
      cxGridOrderSTview.Bands[16].Visible := True;
      cxGridOrderSTview.Bands[16].Width   := 147;
    end else
    if iSmartColumn = 80 then
    begin
      cxGridOrderSTview.Bands[17].Visible := True;
      cxGridOrderSTview.Bands[17].Width   := 142;
      cxGridOrderSTview.Bands[18].Visible := True;
      cxGridOrderSTview.Bands[19].Visible := True;
      cxGridOrderSTview.Bands[20].Visible := True;
    end;
	end;
end;

procedure TFrm_JON019.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON019, GS_FONTNAME);
  fSetSkin(Frm_JON019);
//  if GS_JON01_GROUPMOVE then TmrChkTag.Enabled := True;
	TmrChkTag.Enabled := True;   // 자석은 무조건하고 옵션에 따라 이동( 열린상태에서 자석 했을경우 바로 적용하기 위해);

  edt_sntest.Text := GB_JON_SMARTTESTDATE;

  if Not GS_JON019_POSFIX then
  begin
    Self.Left := Frm_Main.Frm_JON01N[Self.Tag].Left - (Self.Width + 1);
    Self.Top  := Frm_Main.Frm_JON01N[Self.Tag].Top;
  end else
  begin
    Self.Left := ig019Left;
		Self.Top  := ig019Top;                  
  end;
end;

procedure TFrm_JON019.lb_RankSmartDblClick(Sender: TObject);
var sTmp : string;
begin
	sTmp := TcxLabel(Sender).caption;
	sTmp := StringReplace(sTmp,',','',[rfReplaceAll]);
	sTmp := StringReplace(sTmp,'원','',[rfReplaceAll]);
	Frm_Main.Frm_JON01N[Self.Tag].curRate.value := StrToIntDef(sTmp, 0);
end;

procedure TFrm_JON019.pnl3MouseDown(Sender: TObject; Button: TMouseButton;
	Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON019.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON019.proc_Init;
begin
  cxGridOrderSTview.Bands[9].Visible := False;
  cxGridOrderSTview.Bands[10].Visible := False;
  cxGridOrderSTview.Bands[11].Visible := False;
  cxGridOrderSTview.Bands[12].Visible := False;
  cxGridOrderSTview.Bands[13].Visible := False;
  cxGridOrderSTview.Bands[14].Visible := False;
  cxGridOrderSTview.Bands[15].Visible := False;
  cxGridOrderSTview.Bands[16].Visible := False;
  cxGridOrderSTview.Bands[17].Visible := False;
  cxGridOrderSTview.Bands[18].Visible := False;
  cxGridOrderSTview.Bands[19].Visible := False;
  cxGridOrderSTview.Bands[20].Visible := False;
  cxGridOrderSTview.Bands[21].Visible := False;
  cxGridOrderSTview.Bands[22].Visible := False;
  cxGridOrderSTview.Bands[23].Visible := False;
  cxGridOrderSTview.Bands[24].Visible := False;
  cxGridOrderSTview.Bands[25].Visible := False;
  cxGridOrderSTview.Bands[26].Visible := False;
end;

procedure TFrm_JON019.Proc_SmartCharge(AOderWorker, AWeather, ASta1, ASta2,
  ASta3, ASPOI, ASX, ASY, AEnd1, AEnd2, AEnd3, AEPOI, AEX, AEY, AType: string);
var
  ls_TxLoad: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I, ErrCode, iRow, iRCnt, iWeatherCode: Integer;
  ls_MSG_Err, sSearchType: string;
  ls_Rcrd: TStringList;
  sSampleAmount, sDate : string;
  sSmart, sPeekLevel : string;
  sSmartBaseName, sPeekUp, sPeekScore : string;
  AColor : TColor;
begin
    //////////////////////////////////////////////////////////////////////////////////
    //  접수 전문
    //////////////////////////////////////////////////////////////////////////////////
  FSmart.OderWorker := AOderWorker;
  FSmart.Weather := AWeather;
  FSmart.S1 := ASta1;
  FSmart.S2 := ASta2;
  FSmart.S3 := ASta3;
  FSmart.S4 := ASPOI;
  FSmart.SX := ASX;
  FSmart.SY := ASY;
  FSmart.E1 := AEnd1;
  FSmart.E2 := AEnd2;
  FSmart.E3 := AEnd3;
  FSmart.E4 := AEPOI;
  FSmart.EX := AEX;
  FSmart.EY := AEY;
  FSmart.STYPE := AType;
  Try
    cxGridOrderSTview.DataController.SetRecordCount(0);

    ls_TxLoad := GTx_UnitXmlLoad('JON03060N2.XML');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'JON03060');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strNowOrderWorker', AOderWorker);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strNowWeather', AWeather);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strType', AType);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strDeparture', En_Coding(ASta1 + '│' + ASta2 + '│' + ASta3 + '│' + ASPOI + '│' + ASX + '│' + ASY));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strArrive'   , En_Coding(AEnd1 + '│' + AEnd2 + '│' + AEnd3 + '│' + AEPOI + '│' + AEX + '│' + AEY));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strtestDateTime', GB_JON_SMARTTESTDATE);

    Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;
    iParCnt := 1;
    try
      if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 30000) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          xdom := ComsDomDocument.Create;
          try
            xdom.loadXML(ls_rxxml);

            ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' <> ls_MSG_Err) then
            begin
              GMessagebox(ls_Msg_Err, CDMSE);
              exit;
            end;
            lb_Today.Caption := formatdatetime('mm월 dd일', now);
            lb_Rank1.Caption := '';
            lb_Rank2.Caption := '';
            lb_Rank3.Caption := '';
            iSmartRow := -1;
            rb_Auto.Tag := 1;
            {     if AType = '1' then rb_DongDong.Checked := True
            else if AType = '2' then rb_DongGu.Checked   := True
            else if AType = '3' then rb_GuDong.Checked   := True
            else if AType = '4' then rb_GuGu.Checked     := True
            else if AType = '5' then rb_GuSi.Checked     := True;    }
            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Now');

            lb_NearWKCnt.Caption := lst_Result.item[0].attributes.getNamedItem('workerCount').Text ;
            lb_NearStandByCallCnt.Caption := lst_Result.item[0].attributes.getNamedItem('orderCount').Text ;

            lb_WeatherArea.Caption := lst_Result.item[0].attributes.getNamedItem('weatherArea').Text ;
            iWeatherCode := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('weatherCode').Text, 0) ;   //날씨코드
            if iWeatherCode = 0 then
            begin
              cxImageList1.GetIcon(0, Image1.Picture.Icon);
//              Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\Image\00.png');
              lb_Weather.Caption := '맑음';
            end else
            if iWeatherCode = 1 then
            begin
              cxImageList1.GetIcon(1, Image1.Picture.Icon);
//              Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\Image\20.png');
              lb_Weather.Caption := '구름 조금';
            end else
            if iWeatherCode = 20 then
            begin
              cxImageList1.GetIcon(1, Image1.Picture.Icon);
//              Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\Image\20.png');
              lb_Weather.Caption := '흐린 후 갬';
            end else
            if iWeatherCode = 30 then
            begin
              cxImageList1.GetIcon(1, Image1.Picture.Icon);
//              Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\Image\20.png');
              lb_Weather.Caption := '구름';
            end else
            if iWeatherCode = 40 then
            begin
              cxImageList1.GetIcon(1, Image1.Picture.Icon);
//              Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\Image\20.png');
              lb_Weather.Caption := '소나기';
            end else
            if iWeatherCode = 50 then
            begin
              cxImageList1.GetIcon(2, Image1.Picture.Icon);
//              Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\Image\50.png');
              lb_Weather.Caption := '비';
            end else
            if iWeatherCode = 60 then
            begin
              cxImageList1.GetIcon(3, Image1.Picture.Icon);
//              Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\Image\70.png');
              lb_Weather.Caption := '뇌우';
            end else
            if iWeatherCode = 70 then
            begin
              cxImageList1.GetIcon(3, Image1.Picture.Icon);
//              Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\Image\70.png');
              lb_Weather.Caption := '눈';
            end else
            if iWeatherCode = 80 then
            begin
              cxImageList1.GetIcon(4, Image1.Picture.Icon);
//              Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\Image\80.png');
              lb_Weather.Caption := '안개';
            end else
            if iWeatherCode = 90 then
            begin
              cxImageList1.GetIcon(5, Image1.Picture.Icon);
//              Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\Image\90.png');
              lb_Weather.Caption := '흐린구름';
            end;

            lb_WeatherTemp.Caption := lst_Result.item[0].attributes.getNamedItem('weatherTemp').Text ;

            //sSmartColumn := 현재시간 및 피크등급에 따른 데이터 컬럼값 {20, 40, 62, 64, 66, 80}
            iSmartColumn := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('smartColumnCode').Text, 20) ;

            //smartBaseName := 스마트요금이 선정된 기준명칭 {전체, 낮, 저녁, 약피크, 중피크, 강피크, 강피크+, 강피크++, 새벽}
            sSmartBaseName := lst_Result.item[0].attributes.getNamedItem('smartColumnName').Text ;
            lb_SmartTitle.Caption := sSmartBaseName;

            sPeekLevel := lst_Result.item[0].attributes.getNamedItem('peakUpLevel').Text;
            if sPeekLevel = '-' then
            begin
              lb_SmartTitle.Caption := lb_SmartTitle.Caption + '(↓)';
              lb_SmartTitle.Style.TextColor := clBlue;
            end else
            if sPeekLevel = '1' then
            begin
              lb_SmartTitle.Caption := lb_SmartTitle.Caption + '(↑)';
              lb_SmartTitle.Style.TextColor := clFuchsia;
            end else
            if sPeekLevel >= '2' then
            begin
              lb_SmartTitle.Caption := lb_SmartTitle.Caption + '(↑↑)';
              lb_SmartTitle.Style.TextColor := clRed;
            end else
            begin
              lb_SmartTitle.Style.TextColor := clBlack;
            end;

            sSmart := lst_Result.item[0].attributes.getNamedItem('smartPrice').Text;
            lb_RankSmart.Caption := FormatFloat('#,##0', StrToFloatDef(sSmart, 0.0)) + '원' ;

            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Past');
            iRCnt := strtoint(lst_Result.item[0].attributes.getNamedItem('rowCount').Text) ;
            sSearchType := lst_Result.item[0].attributes.getNamedItem('searchType').Text ;       //검색구간 타입
            lb_SAddr.Text := ASta1 + ' ' + ASta2 + ' ' + ASta3 + ' ' + ASPOI;
            lb_DAddr.Text := AEnd1 + ' ' + AEnd2 + ' ' + AEnd3 + ' ' + AEPOI;

            if GB_DARKMODE then
            begin
               AColor := clAqua;
               lb_SAddr.Style.TextColor := clWhite;
               lb_DAddr.Style.TextColor := clWhite;
            end else AColor := clBlack;

            if sSearchType = 'DD' then
            begin
              cxLabel24.Caption := '[동->동 기준]';
              MarkAllKeyWords(lb_SAddr, ASta1, AColor, []);
              MarkAllKeyWords(lb_SAddr, ASta2, AColor, []);
              MarkAllKeyWords(lb_DAddr, AEnd1, AColor, []);
              MarkAllKeyWords(lb_DAddr, AEnd2, AColor, []);

              MarkAllKeyWords(lb_SAddr, ASta3, AColor, [fsBold]);
              MarkAllKeyWords(lb_DAddr, AEnd3, AColor, [fsBold]);
            end else
            if sSearchType = 'DG' then
            begin
              cxLabel24.Caption := '[동->구 기준]';
              MarkAllKeyWords(lb_SAddr, ASta1, AColor, []);
              MarkAllKeyWords(lb_SAddr, ASta2, AColor, []);
              MarkAllKeyWords(lb_DAddr, AEnd1, AColor, []);
              MarkAllKeyWords(lb_DAddr, AEnd3, AColor, []);

              MarkAllKeyWords(lb_SAddr, ASta3, AColor, [fsBold]);
              MarkAllKeyWords(lb_DAddr, AEnd2, AColor, [fsBold]);
            end else
            if sSearchType = 'GD' then
            begin
              cxLabel24.Caption := '[구->동 기준]';
              MarkAllKeyWords(lb_SAddr, ASta1, AColor, []);
              MarkAllKeyWords(lb_SAddr, ASta3, AColor, []);
              MarkAllKeyWords(lb_DAddr, AEnd1, AColor, []);
              MarkAllKeyWords(lb_DAddr, AEnd2, AColor, []);

              MarkAllKeyWords(lb_SAddr, ASta2, AColor, [fsBold]);
              MarkAllKeyWords(lb_DAddr, AEnd3, AColor, [fsBold]);
            end else
            if sSearchType = 'GG' then
            begin
              cxLabel24.Caption := '[구->구 기준]';
              MarkAllKeyWords(lb_SAddr, ASta1, AColor, []);
              MarkAllKeyWords(lb_SAddr, ASta3, AColor, []);
              MarkAllKeyWords(lb_DAddr, AEnd1, AColor, []);
              MarkAllKeyWords(lb_DAddr, AEnd3, AColor, []);

              MarkAllKeyWords(lb_SAddr, ASta2, AColor, [fsBold]);
              MarkAllKeyWords(lb_DAddr, AEnd2, AColor, [fsBold]);
            end else
            if sSearchType = 'GS' then
            begin
              cxLabel24.Caption := '[시 기준]';
              MarkAllKeyWords(lb_SAddr, ASta2, AColor, []);
              MarkAllKeyWords(lb_SAddr, ASta3, AColor, []);
              MarkAllKeyWords(lb_DAddr, AEnd2, AColor, []);
              MarkAllKeyWords(lb_DAddr, AEnd3, AColor, []);

              MarkAllKeyWords(lb_SAddr, ASta1, AColor, [fsBold]);
              MarkAllKeyWords(lb_DAddr, AEnd1, AColor, [fsBold]);
            end;

            sSampleAmount := lst_Result.item[0].attributes.getNamedItem('sample').Text ;
            lb_Sample.Caption := sSampleAmount;
//            sSampleAmount := lst_Result.item[0].attributes.getNamedItem('sampleCount').Text ;
//            meo_Debug.Lines.Add('샘플건수 : ' + sSampleAmount);
            if iRCnt > 0 then
            begin
              ls_Rcrd := TStringList.Create;
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Past/Row');
              cxGridOrderSTview.DataController.SetRecordCount(0);
              cxGridOrderSTview.BeginUpdate;
              self.Height := 348;
              self.Height := self.Height + (iRCnt * 30);
              for i := 0 to iRCnt -1 do
              begin
                if lst_Result.item[i].attributes.getNamedItem('rank').Text = '1' then
                begin
                  if lb_Rank1.Caption = '' then
                    lb_Rank1.Caption := FormatFloat('#,##0', StrToFloatDef(lst_Result.item[i].attributes.getNamedItem('price').Text, 0.0)) + '원'
                  else
                  if lb_Rank2.Caption = '' then
                    lb_Rank2.Caption := FormatFloat('#,##0', StrToFloatDef(lst_Result.item[i].attributes.getNamedItem('price').Text, 0.0)) + '원'
                  else
                    lb_Rank3.Caption := FormatFloat('#,##0', StrToFloatDef(lst_Result.item[i].attributes.getNamedItem('price').Text, 0.0)) + '원'
                end else
                if lst_Result.item[i].attributes.getNamedItem('rank').Text = '2' then
                begin
                  if lb_Rank2.Caption = '' then
                    lb_Rank2.Caption := FormatFloat('#,##0', StrToFloatDef(lst_Result.item[i].attributes.getNamedItem('price').Text, 0.0)) + '원'
                  else
                    lb_Rank3.Caption := FormatFloat('#,##0', StrToFloatDef(lst_Result.item[i].attributes.getNamedItem('price').Text, 0.0)) + '원'
                end else
                if lst_Result.item[i].attributes.getNamedItem('rank').Text = '3' then
                  lb_Rank3.Caption := FormatFloat('#,##0', StrToFloatDef(lst_Result.item[i].attributes.getNamedItem('price').Text, 0.0)) + '원' ;

                iRow := cxGridOrderSTview.DataController.AppendRecord;
                SetGridData(cxGridOrderSTview, iRow, 0,
                            FormatFloat('#,##0', StrToFloatDef(lst_Result.item[i].attributes.getNamedItem('price').Text, 0.0)) + '원');
                if sSmart = lst_Result.item[i].attributes.getNamedItem('price').Text then iSmartRow := i;

					  		GetTextSeperationEx2('|', lst_Result.item[i].attributes.getNamedItem('total').Text, ls_Rcrd);
                if ls_Rcrd[0] = '' then
                  SetGridData(cxGridOrderSTview, iRow, 1, '-')
                else
                  SetGridData(cxGridOrderSTview, iRow, 1, ls_Rcrd[0] + '%');
                if ls_Rcrd[1] = '' then
                  SetGridData(cxGridOrderSTview, iRow, 2, '-')
                else
                  SetGridData(cxGridOrderSTview, iRow, 2, ls_Rcrd[1] + '%');
                if ls_Rcrd[2] = '' then
                  SetGridData(cxGridOrderSTview, iRow, 3, '-')
                else
                  SetGridData(cxGridOrderSTview, iRow, 3, ls_Rcrd[2] + '분');

{                lb_SmartTitle.Caption := sSmartBaseName;
                cxGridOrderSTview.Bands[5].Caption := '낮(09시~18시)';}

                ls_Rcrd.Clear;
                GetTextSeperationEx2('|', lst_Result.item[i].attributes.getNamedItem('t20').Text, ls_Rcrd);
                if ls_Rcrd[0] = '' then
                  SetGridData(cxGridOrderSTview, iRow, 4, '-')
                else
                  SetGridData(cxGridOrderSTview, iRow, 4, ls_Rcrd[0] + '%');
                if ls_Rcrd[1] = '' then
                  SetGridData(cxGridOrderSTview, iRow, 5, '-')
                else
                  SetGridData(cxGridOrderSTview, iRow, 5, ls_Rcrd[1] + '%');
                if ls_Rcrd[2] = '' then
                  SetGridData(cxGridOrderSTview, iRow, 6, '-')
                else
                  SetGridData(cxGridOrderSTview, iRow, 6, ls_Rcrd[2] + '분');

                ls_Rcrd.Clear;
                GetTextSeperationEx2('|', lst_Result.item[i].attributes.getNamedItem('t40').Text, ls_Rcrd);
                if ls_Rcrd[0] = '' then
                  SetGridData(cxGridOrderSTview, iRow, 7, '-')
                else
                  SetGridData(cxGridOrderSTview, iRow, 7, ls_Rcrd[0] + '%');
                if ls_Rcrd[1] = '' then
                  SetGridData(cxGridOrderSTview, iRow, 8, '-')
                else
                  SetGridData(cxGridOrderSTview, iRow, 8, ls_Rcrd[1] + '%');
                if ls_Rcrd[2] = '' then
                  SetGridData(cxGridOrderSTview, iRow, 9, '-')
                else
                  SetGridData(cxGridOrderSTview, iRow, 9, ls_Rcrd[2] + '분');

                ls_Rcrd.Clear;
                GetTextSeperationEx2('|', lst_Result.item[i].attributes.getNamedItem('t62').Text, ls_Rcrd);
                if ls_Rcrd[0] = '' then
                  SetGridData(cxGridOrderSTview, iRow, 10, '-')
                else
                  SetGridData(cxGridOrderSTview, iRow, 10, ls_Rcrd[0] + '%');
                if ls_Rcrd[1] = '' then
                  SetGridData(cxGridOrderSTview, iRow, 11, '-')
                else
                  SetGridData(cxGridOrderSTview, iRow, 11, ls_Rcrd[1] + '%');
                if ls_Rcrd[2] = '' then
                  SetGridData(cxGridOrderSTview, iRow, 12, '-')
                else
                  SetGridData(cxGridOrderSTview, iRow, 12, ls_Rcrd[2] + '분');

                ls_Rcrd.Clear;
                GetTextSeperationEx2('|', lst_Result.item[i].attributes.getNamedItem('t64').Text, ls_Rcrd);
                if ls_Rcrd[0] = '' then
                  SetGridData(cxGridOrderSTview, iRow, 13, '-')
                else
                  SetGridData(cxGridOrderSTview, iRow, 13, ls_Rcrd[0] + '%');
                if ls_Rcrd[1] = '' then
                  SetGridData(cxGridOrderSTview, iRow, 14, '-')
                else
                  SetGridData(cxGridOrderSTview, iRow, 14, ls_Rcrd[1] + '%');
                if ls_Rcrd[2] = '' then
                  SetGridData(cxGridOrderSTview, iRow, 15, '-')
                else
                  SetGridData(cxGridOrderSTview, iRow, 15, ls_Rcrd[2] + '분');

                ls_Rcrd.Clear;
                GetTextSeperationEx2('|', lst_Result.item[i].attributes.getNamedItem('t66').Text, ls_Rcrd);
                if ls_Rcrd[0] = '' then
                  SetGridData(cxGridOrderSTview, iRow, 16, '-')
                else
                  SetGridData(cxGridOrderSTview, iRow, 16, ls_Rcrd[0] + '%');
                if ls_Rcrd[1] = '' then
                  SetGridData(cxGridOrderSTview, iRow, 17, '-')
                else
                  SetGridData(cxGridOrderSTview, iRow, 17, ls_Rcrd[1] + '%');
                if ls_Rcrd[2] = '' then
                  SetGridData(cxGridOrderSTview, iRow, 18, '-')
                else
                  SetGridData(cxGridOrderSTview, iRow, 18, ls_Rcrd[2] + '분');

                ls_Rcrd.Clear;
                GetTextSeperationEx2('|', lst_Result.item[i].attributes.getNamedItem('t80').Text, ls_Rcrd);
                if ls_Rcrd[0] = '' then
                  SetGridData(cxGridOrderSTview, iRow, 19, '-')
                else
                  SetGridData(cxGridOrderSTview, iRow, 19, ls_Rcrd[0] + '%');
                if ls_Rcrd[1] = '' then
                  SetGridData(cxGridOrderSTview, iRow, 20, '-')
                else
                  SetGridData(cxGridOrderSTview, iRow, 20, ls_Rcrd[1] + '%');
                if ls_Rcrd[2] = '' then
                  SetGridData(cxGridOrderSTview, iRow, 21, '-')
                else
                  SetGridData(cxGridOrderSTview, iRow, 21, ls_Rcrd[2] + '분');
              end;
              cxGridOrderSTview.EndUpdate;
            end;
          finally
            xdom := Nil;
          end;
        end;
      end;
    finally
      ls_Rcrd.Free;
      slRcvList.Free;
      Screen.Cursor := crDefault;
      tmr_gHighlight.Enabled := True;
    end;
  except
    on e: Exception do
    begin
      Screen.Cursor := crDefault;
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON019.rb_DongDongClick(Sender: TObject);
begin
{  rb_DongDong.Checked    := True;
  rb_DongDong.Font.Style := [fsBold];
  rb_DongGu.Font.Style   := [];
  rb_GuDong.Font.Style   := [];
  rb_GuGu.Font.Style     := [];
  rb_GuSi.Font.Style     := [];
  lb_SAddr.Style.Font.Style  := [];
  lb_SGungu.Style.Font.Style := [];
  lb_SDong.Style.Font.Style  := [fsBold];
  lb_DSido.Style.Font.Style  := [];
  lb_DGungu.Style.Font.Style := [];
  lb_DDong.Style.Font.Style  := [fsBold];
  cxLabel24.Caption := '[동->동 기준]'; }
  FSmart.STYPE := 'DD';
  Proc_SmartCharge(FSmart.OderWorker, FSmart.Weather
                 , FSmart.S1, FSmart.S2, FSmart.S3, FSmart.S4, FSmart.SX, FSmart.SY
                 , FSmart.E1, FSmart.E2, FSmart.E3, FSmart.E4, FSmart.EX, FSmart.EY
                 , FSmart.STYPE);
end;

procedure TFrm_JON019.rb_DongGuClick(Sender: TObject);
begin
{  rb_DongGu.Checked      := True;

  rb_DongDong.Font.Style := [];
  rb_DongGu.Font.Style   := [fsBold];
  rb_GuDong.Font.Style   := [];
  rb_GuGu.Font.Style     := [];
  rb_GuSi.Font.Style     := [];
  lb_Ssido.Style.Font.Style  := [];
  lb_SGungu.Style.Font.Style := [];
  lb_SDong.Style.Font.Style  := [fsBold];
  lb_DSido.Style.Font.Style  := [];
  lb_DGungu.Style.Font.Style := [fsBold];
  lb_DDong.Style.Font.Style  := [];
  cxLabel24.Caption := '[동->구 기준]'; }

  FSmart.STYPE := 'DG';
  Proc_SmartCharge(FSmart.OderWorker, FSmart.Weather
                 , FSmart.S1, FSmart.S2, FSmart.S3, FSmart.S4, FSmart.SX, FSmart.SY
                 , FSmart.E1, FSmart.E2, FSmart.E3, FSmart.E4, FSmart.EX, FSmart.EY
                 , FSmart.STYPE);
end;

procedure TFrm_JON019.rb_GuDongClick(Sender: TObject);
begin
{  rb_GuDong.Checked      := True;

  rb_DongDong.Font.Style := [];
  rb_DongGu.Font.Style   := [];
  rb_GuDong.Font.Style   := [fsBold];
  rb_GuGu.Font.Style     := [];
  rb_GuSi.Font.Style     := [];
  lb_Ssido.Style.Font.Style  := [];
  lb_SGungu.Style.Font.Style := [fsBold];
  lb_SDong.Style.Font.Style  := [];
  lb_DSido.Style.Font.Style  := [];
  lb_DGungu.Style.Font.Style := [];
  lb_DDong.Style.Font.Style  := [fsBold];
  cxLabel24.Caption := '[구->동 기준]';  }
  FSmart.STYPE := 'GD';
  Proc_SmartCharge(FSmart.OderWorker, FSmart.Weather
                 , FSmart.S1, FSmart.S2, FSmart.S3, FSmart.S4, FSmart.SX, FSmart.SY
                 , FSmart.E1, FSmart.E2, FSmart.E3, FSmart.E4, FSmart.EX, FSmart.EY
                 , FSmart.STYPE);
end;

procedure TFrm_JON019.rb_GuGuClick(Sender: TObject);
begin
{  rb_GuGu.Checked        := True;

  rb_DongDong.Font.Style := [];
  rb_DongGu.Font.Style   := [];
  rb_GuDong.Font.Style   := [];
  rb_GuGu.Font.Style     := [fsBold];
  rb_GuSi.Font.Style     := [];
  lb_Ssido.Style.Font.Style  := [];
  lb_SGungu.Style.Font.Style := [fsBold];
  lb_SDong.Style.Font.Style  := [];
  lb_DSido.Style.Font.Style  := [];
  lb_DGungu.Style.Font.Style := [fsBold];
  lb_DDong.Style.Font.Style  := [];
  cxLabel24.Caption := '[구->구 기준]';  }

  FSmart.STYPE := 'GG';
  Proc_SmartCharge(FSmart.OderWorker, FSmart.Weather
                 , FSmart.S1, FSmart.S2, FSmart.S3, FSmart.S4, FSmart.SX, FSmart.SY
                 , FSmart.E1, FSmart.E2, FSmart.E3, FSmart.E4, FSmart.EX, FSmart.EY
                 , FSmart.STYPE);
end;

procedure TFrm_JON019.rb_GuSiClick(Sender: TObject);
begin
{  rb_GuSi.Checked        := True;

  rb_DongDong.Font.Style := [];
  rb_DongGu.Font.Style   := [];
  rb_GuDong.Font.Style   := [];
  rb_GuGu.Font.Style     := [];
  rb_GuSi.Font.Style     := [fsBold];
  lb_Ssido.Style.Font.Style  := [];
  lb_SGungu.Style.Font.Style := [fsBold];
  lb_SDong.Style.Font.Style  := [];
  lb_DSido.Style.Font.Style  := [fsBold];
  lb_DGungu.Style.Font.Style := [];
  lb_DDong.Style.Font.Style  := [];
  cxLabel24.Caption := '[구->시 기준]'; }

  FSmart.STYPE := 'GS';
  Proc_SmartCharge(FSmart.OderWorker, FSmart.Weather
                 , FSmart.S1, FSmart.S2, FSmart.S3, FSmart.S4, FSmart.SX, FSmart.SY
                 , FSmart.E1, FSmart.E2, FSmart.E3, FSmart.E4, FSmart.EX, FSmart.EY
                 , FSmart.STYPE);
end;

procedure TFrm_JON019.TmrChkTagTimer(Sender: TObject);
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

procedure TFrm_JON019.tmr_gHighlightTimer(Sender: TObject);
begin
  try
    if iParCnt > 6 then
    begin
      tmr_gHighlight.Enabled := False;
      APar := True;
      Exit;
    end;
    APar := Not APar;
    cxGridOrderSTview.Invalidate(True);
    Inc(iParCnt);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON019.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON019.FormClose(Sender: TObject; var Action: TCloseAction);
var
  EnvFile: TIniFile;
begin
  EnvFile := TIniFile.Create(ENVPATHFILE);
  try
    EnvFile.WriteInteger('WinPos', 'Jon019Left', ig019Left);
    EnvFile.WriteInteger('WinPos', 'Jon019Top' , ig019Top );
  finally
    EnvFile.Free;
  end;

  Action := caFree;
end;

end.

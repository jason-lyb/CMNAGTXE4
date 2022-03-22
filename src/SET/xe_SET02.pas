unit xe_SET02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, Grids, BaseGrid,
  AdvGrid, AdvCGrid, ExtCtrls, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxControls, cxContainer, cxEdit, cxLabel, cxListBox,
  Gauges, cxLookAndFeels, AdvObj, cxGroupBox, AdvProgressBar, dxSkinsCore,
  AdvUtil, dxSkinOffice2010Silver, cxCustomListBox, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxCheckBox, cxSpinEdit, cxTimeEdit;

type
  TFrm_SET02 = class(TForm)
    btnSave: TcxButton;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    cxLblActive: TLabel;
    btnCancel: TcxButton;
    cbPeakUseYn: TcxCheckBox;
    cbSaturdayUseYn: TcxCheckBox;
    cbD1UseYn: TcxCheckBox;
    cbD2UseYn: TcxCheckBox;
    cbD3UseYn: TcxCheckBox;
    cbD4UseYn: TcxCheckBox;
    cbHolidayUseYn: TcxCheckBox;
    cbD1SNextYn: TcxCheckBox;
    cbD2SNextYn: TcxCheckBox;
    cbD3SNextYn: TcxCheckBox;
    cbD4SNextYn: TcxCheckBox;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    cbD1ENextYn: TcxCheckBox;
    cbD2ENextYn: TcxCheckBox;
    cbD3ENextYn: TcxCheckBox;
    cbD4ENextYn: TcxCheckBox;
    te1STime: TcxTimeEdit;
    te2STime: TcxTimeEdit;
    te3STime: TcxTimeEdit;
    te4STime: TcxTimeEdit;
    te1ETime: TcxTimeEdit;
    te2ETime: TcxTimeEdit;
    te3ETime: TcxTimeEdit;
    te4ETime: TcxTimeEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    pnlMain: TPanel;
    cxLabel13: TcxLabel;
    lblSosokName: TcxLabel;
    cbD1AddYn: TcxCheckBox;
    cbD2AddYn: TcxCheckBox;
    cbD3AddYn: TcxCheckBox;
    cbD4AddYn: TcxCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure cbD1UseYnClick(Sender: TObject);
    procedure cbD2UseYnClick(Sender: TObject);
    procedure cbD3UseYnClick(Sender: TObject);
    procedure cbD4UseYnClick(Sender: TObject);
    procedure cbPeakUseYnClick(Sender: TObject);
  private
    { Private declarations }
    procedure proc_init;
    procedure pSaveData;
  public
    { Public declarations }
    FBrNo : String;
    procedure pSelectData;
  end;

var
  Frm_SET02: TFrm_SET02;

implementation

{$R *.dfm}

uses xe_SET, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_charge, xe_Msg;

procedure TFrm_SET02.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_SET02.btnSaveClick(Sender: TObject);
Var sDate1, sDate2, sDate3, sDate4, eDate1, eDate2, eDate3, eDate4 : String;
begin
  sDate1 := '';
  eDate1 := '';
  if cbD1UseYn.Checked then
  begin
    if cbD1SNextYn.Checked then sDate1 := FormatDateTime('YYYY-MM-DD', Now + 1) + ' ' + te1STime.Text
                           else sDate1 := FormatDateTime('YYYY-MM-DD', Now) + ' ' + te1STime.Text;

    if cbD1ENextYn.Checked then eDate1 := FormatDateTime('YYYY-MM-DD', Now + 1) + ' ' + te1ETime.Text
                           else eDate1 := FormatDateTime('YYYY-MM-DD', Now) + ' ' + te1ETime.Text;
  end;
  sDate2 := '';
  eDate2 := '';
  if cbD2UseYn.Checked then
  begin
    if cbD2SNextYn.Checked then sDate2 := FormatDateTime('YYYY-MM-DD', Now + 1) + ' ' + te2STime.Text
                           else sDate2 := FormatDateTime('YYYY-MM-DD', Now) + ' ' + te2STime.Text;

    if cbD2ENextYn.Checked then eDate2 := FormatDateTime('YYYY-MM-DD', Now + 1) + ' ' + te2ETime.Text
                           else eDate2 := FormatDateTime('YYYY-MM-DD', Now) + ' ' + te2ETime.Text;
  end;
  sDate3 := '';
  eDate3 := '';
  if cbD3UseYn.Checked then
  begin
    if cbD3SNextYn.Checked then sDate3 := FormatDateTime('YYYY-MM-DD', Now + 1) + ' ' + te3STime.Text
                           else sDate3 := FormatDateTime('YYYY-MM-DD', Now) + ' ' + te3STime.Text;

    if cbD3ENextYn.Checked then eDate3 := FormatDateTime('YYYY-MM-DD', Now + 1) + ' ' + te3ETime.Text
                           else eDate3 := FormatDateTime('YYYY-MM-DD', Now) + ' ' + te3ETime.Text;
  end;
  sDate4 := '';
  eDate4 := '';
  if cbD4UseYn.Checked then
  begin
    if cbD4SNextYn.Checked then sDate4 := FormatDateTime('YYYY-MM-DD', Now + 1) + ' ' + te4STime.Text
                           else sDate4 := FormatDateTime('YYYY-MM-DD', Now) + ' ' + te4STime.Text;

    if cbD4ENextYn.Checked then eDate4 := FormatDateTime('YYYY-MM-DD', Now + 1) + ' ' + te4ETime.Text
                           else eDate4 := FormatDateTime('YYYY-MM-DD', Now) + ' ' + te4ETime.Text;
  end;

  if (sDate1 <> '') And (eDate1 <> '') then
  begin
    if sDate1 >= eDate1 then
    begin
      GMessagebox('1-타입의 시작일자가 종료일자보다 같거나 큽니다.', CDMSE);
      Exit;
    end;

    if (sDate2 <> '') And (eDate2 <> '') then
    begin
      if ( sDate1 >= sDate2 ) And ( sDate1 <= eDate2 ) then
      begin
        GMessagebox('1-타입의 시작일자가 2-타입의 일자와 겹칩니다.', CDMSE);
        Exit;
      end;
      if ( eDate1 >= sDate2 ) And ( eDate1 <= eDate2 ) then
      begin
        GMessagebox('1-타입의 종료일자가 2-타입의 일자와 겹칩니다.', CDMSE);
        Exit;
      end;
    end;

    if (sDate3 <> '') And (eDate3 <> '') then
    begin
      if ( sDate1 >= sDate3 ) And ( sDate1 <= eDate3 ) then
      begin
        GMessagebox('1-타입의 시작일자가 3-타입의 일자와 겹칩니다.', CDMSE);
        Exit;
      end;
      if ( eDate1 >= sDate3 ) And ( eDate1 <= eDate3 ) then
      begin
        GMessagebox('1-타입의 종료일자가 3-타입의 일자와 겹칩니다.', CDMSE);
        Exit;
      end;
    end;

    if (sDate4 <> '') And (eDate4 <> '') then
    begin
      if ( sDate1 >= sDate4 ) And ( sDate1 <= eDate4 ) then
      begin
        GMessagebox('1-타입의 시작일자가 4-타입의 일자와 겹칩니다.', CDMSE);
        Exit;
      end;
      if ( eDate1 >= sDate4 ) And ( eDate1 <= eDate4 ) then
      begin
        GMessagebox('1-타입의 종료일자가 4-타입의 일자와 겹칩니다.', CDMSE);
        Exit;
      end;
    end;
  end;

  if (sDate2 <> '') And (eDate2 <> '') then
  begin
    if sDate2 >= eDate2 then
    begin
      GMessagebox('2-타입의 시작일자가 종료일자보다 같거나 큽니다.', CDMSE);
      Exit;
    end;

    if (sDate1 <> '') And (eDate1 <> '') then
    begin
      if ( sDate2 >= sDate1 ) And ( sDate2 <= eDate1 ) then
      begin
        GMessagebox('2-타입의 시작일자가 1-타입의 일자와 겹칩니다.', CDMSE);
        Exit;
      end;
      if ( eDate2 >= sDate1 ) And ( eDate2 <= eDate1 ) then
      begin
        GMessagebox('2-타입의 종료일자가 1-타입의 일자와 겹칩니다.', CDMSE);
        Exit;
      end;
    end;

    if (sDate3 <> '') And (eDate3 <> '') then
    begin
      if ( sDate2 >= sDate3 ) And ( sDate2 <= eDate3 ) then
      begin
        GMessagebox('2-타입의 시작일자가 3-타입의 일자와 겹칩니다.', CDMSE);
        Exit;
      end;
      if ( eDate2 >= sDate3 ) And ( eDate2 <= eDate3 ) then
      begin
        GMessagebox('2-타입의 종료일자가 3-타입의 일자와 겹칩니다.', CDMSE);
        Exit;
      end;
    end;

    if (sDate4 <> '') And (eDate4 <> '') then
    begin
      if ( sDate2 >= sDate4 ) And ( sDate2 <= eDate4 ) then
      begin
        GMessagebox('2-타입의 시작일자가 4-타입의 일자와 겹칩니다.', CDMSE);
        Exit;
      end;
      if ( eDate2 >= sDate4 ) And ( eDate2 <= eDate4 ) then
      begin
        GMessagebox('2-타입의 종료일자가 4-타입의 일자와 겹칩니다.', CDMSE);
        Exit;
      end;
    end;
  end;

  if (sDate3 <> '') And (eDate3 <> '') then
  begin
    if sDate3 >= eDate3 then
    begin
      GMessagebox('3-타입의 시작일자가 종료일자보다 같거나 큽니다.', CDMSE);
      Exit;
    end;

    if (sDate1 <> '') And (eDate1 <> '') then
    begin
      if ( sDate3 >= sDate1 ) And ( sDate3 <= eDate1 ) then
      begin
        GMessagebox('3-타입의 시작일자가 1-타입의 일자와 겹칩니다.', CDMSE);
        Exit;
      end;
      if ( eDate3 >= sDate1 ) And ( eDate3 <= eDate1 ) then
      begin
        GMessagebox('3-타입의 종료일자가 1-타입의 일자와 겹칩니다.', CDMSE);
        Exit;
      end;
    end;

    if (sDate2 <> '') And (eDate2 <> '') then
    begin
      if ( sDate3 >= sDate2 ) And ( sDate3 <= eDate2 ) then
      begin
        GMessagebox('3-타입의 시작일자가 2-타입의 일자와 겹칩니다.', CDMSE);
        Exit;
      end;
      if ( eDate3 >= sDate2 ) And ( eDate3 <= eDate2 ) then
      begin
        GMessagebox('3-타입의 종료일자가 2-타입의 일자와 겹칩니다.', CDMSE);
        Exit;
      end;
    end;

    if (sDate4 <> '') And (eDate4 <> '') then
    begin
      if ( sDate3 >= sDate4 ) And ( sDate3 <= eDate4 ) then
      begin
        GMessagebox('3-타입의 시작일자가 4-타입의 일자와 겹칩니다.', CDMSE);
        Exit;
      end;
      if ( eDate3 >= sDate4 ) And ( eDate3 <= eDate4 ) then
      begin
        GMessagebox('3-타입의 종료일자가 4-타입의 일자와 겹칩니다.', CDMSE);
        Exit;
      end;
    end;
  end;

  if (sDate4 <> '') And (eDate4 <> '') then
  begin
    if sDate4 >= eDate4 then
    begin
      GMessagebox('4-타입의 시작일자가 종료일자보다 같거나 큽니다.', CDMSE);
      Exit;
    end;

    if (sDate1 <> '') And (eDate1 <> '') then
    begin
      if ( sDate4 >= sDate1 ) And ( sDate4 <= eDate1 ) then
      begin
        GMessagebox('4-타입의 시작일자가 1-타입의 일자와 겹칩니다.', CDMSE);
        Exit;
      end;
      if ( eDate3 >= sDate1 ) And ( eDate3 <= eDate1 ) then
      begin
        GMessagebox('4-타입의 종료일자가 1-타입의 일자와 겹칩니다.', CDMSE);
        Exit;
      end;
    end;

    if (sDate2 <> '') And (eDate2 <> '') then
    begin
      if ( sDate4 >= sDate2 ) And ( sDate4 <= eDate2 ) then
      begin
        GMessagebox('4-타입의 시작일자가 2-타입의 일자와 겹칩니다.', CDMSE);
        Exit;
      end;
      if ( eDate4 >= sDate2 ) And ( eDate4 <= eDate2 ) then
      begin
        GMessagebox('4-타입의 종료일자가 2-타입의 일자와 겹칩니다.', CDMSE);
        Exit;
      end;
    end;

    if (sDate3 <> '') And (eDate3 <> '') then
    begin
      if ( sDate4 >= sDate3 ) And ( sDate4 <= eDate3 ) then
      begin
        GMessagebox('4-타입의 시작일자가 3-타입의 일자와 겹칩니다.', CDMSE);
        Exit;
      end;
      if ( eDate4 >= sDate3 ) And ( eDate4 <= eDate3 ) then
      begin
        GMessagebox('4-타입의 종료일자가 3-타입의 일자와 겹칩니다.', CDMSE);
        Exit;
      end;
    end;
  end;

  pSaveData;
end;

procedure TFrm_SET02.cbD1UseYnClick(Sender: TObject);
begin
  cbD1AddYn.Enabled := cbD1UseYn.Checked;
  cbD1SNextYn.Enabled := cbD1UseYn.Checked;
  te1STime.Enabled    := cbD1UseYn.Checked;
  cbD1ENextYn.Enabled := cbD1UseYn.Checked;
  te1ETime.Enabled    := cbD1UseYn.Checked;
end;

procedure TFrm_SET02.cbD2UseYnClick(Sender: TObject);
begin
  cbD2AddYn.Enabled := cbD2UseYn.Checked;
  cbD2SNextYn.Enabled := cbD2UseYn.Checked;
  te2STime.Enabled    := cbD2UseYn.Checked;
  cbD2ENextYn.Enabled := cbD2UseYn.Checked;
  te2ETime.Enabled    := cbD2UseYn.Checked;
end;

procedure TFrm_SET02.cbD3UseYnClick(Sender: TObject);
begin
  cbD3AddYn.Enabled := cbD3UseYn.Checked;
  cbD3SNextYn.Enabled := cbD3UseYn.Checked;
  te3STime.Enabled    := cbD3UseYn.Checked;
  cbD3ENextYn.Enabled := cbD3UseYn.Checked;
  te3ETime.Enabled    := cbD3UseYn.Checked;
end;

procedure TFrm_SET02.cbD4UseYnClick(Sender: TObject);
begin
  cbD4AddYn.Enabled := cbD4UseYn.Checked;
  cbD4SNextYn.Enabled := cbD4UseYn.Checked;
  te4STime.Enabled    := cbD4UseYn.Checked;
  cbD4ENextYn.Enabled := cbD4UseYn.Checked;
  te4ETime.Enabled    := cbD4UseYn.Checked;
end;

procedure TFrm_SET02.cbPeakUseYnClick(Sender: TObject);
begin
  cbSaturdayUseYn.Enabled := cbPeakUseYn.Checked;
  cbHolidayUseYn.Enabled := cbPeakUseYn.Checked;
  cbD1UseYn.Enabled := cbPeakUseYn.Checked;
  cbD2UseYn.Enabled := cbPeakUseYn.Checked;
  cbD3UseYn.Enabled := cbPeakUseYn.Checked;
  cbD4UseYn.Enabled := cbPeakUseYn.Checked;
end;

procedure TFrm_SET02.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_SET02.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_SET02.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_SET02.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_SET02.FormDestroy(Sender: TObject);
begin
  Frm_SET02 := Nil;
end;

procedure TFrm_SET02.FormShow(Sender: TObject);
begin
  fSetFont(Frm_SET02, GS_FONTNAME);
  pSelectData;
end;

procedure TFrm_SET02.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SET02.proc_init;
Var i : Integer;
begin
  try
    cbPeakUseYn.Checked := False;
    cbPeakUseYnClick(cbPeakUseYn);

    cbSaturdayUseYn.Checked := False;
    cbHolidayUseYn.Checked := False;

    cbD1UseYn.Checked := False;
    cbD1UseYnClick(cbD1UseYn);
    cbD1SNextYn.Checked := False;
    te1STime.Text := '19:00';
    cbD1ENextYn.Checked := False;
    te1ETime.Text := '19:00';

    cbD2UseYn.Checked := False;
    cbD2UseYnClick(cbD2UseYn);
    cbD2SNextYn.Checked := False;
    te2STime.Text := '19:00';
    cbD2ENextYn.Checked := False;
    te2ETime.Text := '19:00';

    cbD3UseYn.Checked := False;
    cbD3UseYnClick(cbD3UseYn);
    cbD3SNextYn.Checked := False;
    te3STime.Text := '19:00';
    cbD3ENextYn.Checked := False;
    te3ETime.Text := '19:00';

    cbD4UseYn.Checked := False;
    cbD4UseYnClick(cbD4UseYn);
    cbD4SNextYn.Checked := False;
    te4STime.Text := '19:00';
    cbD4ENextYn.Checked := False;
    te4ETime.Text := '19:00';
  except on E: Exception do
    begin
      GMessagebox(Format('데이터 초기화 중 오류발생[오류: %s]', [E.Message]), CDMSE);
    end;
  end;
end;

procedure TFrm_SET02.pSelectData;
var sBrNo, sCode : string;
    iRow : Integer;
begin
  proc_init;
	try
    with dmCharge.FDQuery1 do
    begin
      dmCharge.proc_mysql_init;
      Close;
      SQL.Text := Format('SELECT DP_USE_YN, DP_SATURDAY_YN, DP_HOLIDAY_YN ' +
                             ' , DP_1_USE_YN, DP_1_SNEXTDAY, DP_1_STIME, DP_1_ENEXTDAY, DP_1_ETIME ' +
                             ' , DP_2_USE_YN, DP_2_SNEXTDAY, DP_2_STIME, DP_2_ENEXTDAY, DP_2_ETIME ' +
                             ' , DP_3_USE_YN, DP_3_SNEXTDAY, DP_3_STIME, DP_3_ENEXTDAY, DP_3_ETIME ' +
                             ' , DP_4_USE_YN, DP_4_SNEXTDAY, DP_4_STIME, DP_4_ENEXTDAY, DP_4_ETIME ' +
                             ' , DP_1_ADD_YN, DP_2_ADD_YN, DP_3_ADD_YN, DP_4_ADD_YN ' +
                          ' FROM CDMS_DIST_PEAK WHERE BR_NO = ''%s'' ', [FBrNo]);
      Open;
      if not IsEmpty then
      begin
        cbPeakUseYn.Checked     := Fields[0].AsString = 'y';
        cbSaturdayUseYn.Checked := Fields[1].AsString = 'y';
        cbHolidayUseYn.Checked  := Fields[2].AsString = 'y';

        cbD1UseYn.Checked   := Fields[3].AsString = 'y';
        cbD1SNextYn.Checked := Fields[4].AsString = 'y';
        te1STime.Text       := Fields[5].AsString;
        cbD1ENextYn.Checked := Fields[6].AsString = 'y';
        te1ETime.Text       := Fields[7].AsString;
        cbD1UseYnClick(cbD1UseYn);

        cbD2UseYn.Checked   := Fields[8].AsString = 'y';
        cbD2SNextYn.Checked := Fields[9].AsString = 'y';
        te2STime.Text       := Fields[10].AsString;
        cbD2ENextYn.Checked := Fields[11].AsString = 'y';
        te2ETime.Text       := Fields[12].AsString;
        cbD2UseYnClick(cbD2UseYn);

        cbD3UseYn.Checked   := Fields[13].AsString = 'y';
        cbD3SNextYn.Checked := Fields[14].AsString = 'y';
        te3STime.Text       := Fields[15].AsString;
        cbD3ENextYn.Checked := Fields[16].AsString = 'y';
        te3ETime.Text       := Fields[17].AsString;
        cbD3UseYnClick(cbD3UseYn);

        cbD4UseYn.Checked   := Fields[18].AsString = 'y';
        cbD4SNextYn.Checked := Fields[19].AsString = 'y';
        te4STime.Text       := Fields[20].AsString;
        cbD4ENextYn.Checked := Fields[21].AsString = 'y';
        te4ETime.Text       := Fields[22].AsString;
        cbD4UseYnClick(cbD4UseYn);

        cbD1AddYn.Checked := Fields[23].AsString = 'y';
        cbD2AddYn.Checked := Fields[24].AsString = 'y';
        cbD3AddYn.Checked := Fields[25].AsString = 'y';
        cbD4AddYn.Checked := Fields[26].AsString = 'y';
      end;
    end;
  except on E: Exception do
    GMessagebox(Format('데이터 조회 중 오류가 발생했습니다.'#13#10'%s', [E.Message]), CDMSE);
  end;
end;

procedure TFrm_SET02.pSaveData;
var sBrNo, sCode : string;
    iRow : Integer;
begin
	try
    with dmCharge.FDQuery1 do
    begin
      dmCharge.proc_mysql_init;
      Close;
      SQL.Text := Format('SELECT BR_NO FROM CDMS_DIST_PEAK WHERE BR_NO = ''%s'' ', [FBrNo]);
      Open;
      if not IsEmpty then
      begin
        dmCharge.proc_mysql_init('update');
        Close;
        SQL.Text := Format('UPDATE CDMS_DIST_PEAK SET DP_USE_YN = ''%s'', DP_SATURDAY_YN = ''%s'', DP_HOLIDAY_YN = ''%s'' ' +
                               ' , DP_1_USE_YN = ''%s'', DP_1_SNEXTDAY = ''%s'', DP_1_STIME = ''%s'', DP_1_ENEXTDAY = ''%s'', DP_1_ETIME = ''%s'' ' +
                               ' , DP_2_USE_YN = ''%s'', DP_2_SNEXTDAY = ''%s'', DP_2_STIME = ''%s'', DP_2_ENEXTDAY = ''%s'', DP_2_ETIME = ''%s'' ' +
                               ' , DP_3_USE_YN = ''%s'', DP_3_SNEXTDAY = ''%s'', DP_3_STIME = ''%s'', DP_3_ENEXTDAY = ''%s'', DP_3_ETIME = ''%s'' ' +
                               ' , DP_4_USE_YN = ''%s'', DP_4_SNEXTDAY = ''%s'', DP_4_STIME = ''%s'', DP_4_ENEXTDAY = ''%s'', DP_4_ETIME = ''%s'' ' +
                               ' , DP_1_ADD_YN = ''%s'', DP_2_ADD_YN = ''%s'', DP_3_ADD_YN = ''%s'', DP_4_ADD_YN = ''%s'' ' +
                               ' , UP_ID = ''%s'', UP_DATE = now() ' +
                           ' WHERE BR_NO = ''%s'' ',
                          [fgetCheckBoxYN(cbPeakUseYn), fgetCheckBoxYN(cbSaturdayUseYn), fgetCheckBoxYN(cbHolidayUseYn),
                           fgetCheckBoxYN(cbD1UseYn), fgetCheckBoxYN(cbD1SNextYn), te1STime.Text, fgetCheckBoxYN(cbD1ENextYn), te1ETime.Text,
                           fgetCheckBoxYN(cbD2UseYn), fgetCheckBoxYN(cbD2SNextYn), te2STime.Text, fgetCheckBoxYN(cbD2ENextYn), te2ETime.Text,
                           fgetCheckBoxYN(cbD3UseYn), fgetCheckBoxYN(cbD3SNextYn), te3STime.Text, fgetCheckBoxYN(cbD3ENextYn), te3ETime.Text,
                           fgetCheckBoxYN(cbD4UseYn), fgetCheckBoxYN(cbD4SNextYn), te4STime.Text, fgetCheckBoxYN(cbD4ENextYn), te4ETime.Text,
                           fgetCheckBoxYN(cbD1AddYn), fgetCheckBoxYN(cbD2AddYn), fgetCheckBoxYN(cbD3AddYn), fgetCheckBoxYN(cbD4AddYn),
                           GT_USERIF.ID, FBrNo]);
        ExecSql;
      end else
      begin
        dmCharge.proc_mysql_init('update');
        Close;
        SQL.Text := Format('INSERT INTO CDMS_DIST_PEAK ( BR_NO, DP_USE_YN, DP_SATURDAY_YN, DP_HOLIDAY_YN ' +
                               ' , DP_1_USE_YN, DP_1_SNEXTDAY, DP_1_STIME, DP_1_ENEXTDAY, DP_1_ETIME ' +
                               ' , DP_2_USE_YN, DP_2_SNEXTDAY, DP_2_STIME, DP_2_ENEXTDAY, DP_2_ETIME ' +
                               ' , DP_3_USE_YN, DP_3_SNEXTDAY, DP_3_STIME, DP_3_ENEXTDAY, DP_3_ETIME ' +
                               ' , DP_4_USE_YN, DP_4_SNEXTDAY, DP_4_STIME, DP_4_ENEXTDAY, DP_4_ETIME ' +
                               ' , DP_1_ADD_YN, DP_2_ADD_YN, DP_3_ADD_YN, DP_4_ADD_YN ' +
                               ' , IN_ID, IN_DATE ) ' +
                           ' VALUES ( ''%s'', ''%s'', ''%s'', ''%s'', ' +
                                    ' ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ' +
                                    ' ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ' +
                                    ' ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ' +
                                    ' ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ' +
                                    ' ''%s'', ''%s'', ''%s'', ''%s'', ' +
                                    ' ''%s'', now()) ',
                          [FBrNo, fgetCheckBoxYN(cbPeakUseYn), fgetCheckBoxYN(cbSaturdayUseYn), fgetCheckBoxYN(cbHolidayUseYn),
                           fgetCheckBoxYN(cbD1UseYn), fgetCheckBoxYN(cbD1SNextYn), te1STime.Text, fgetCheckBoxYN(cbD1ENextYn), te1ETime.Text,
                           fgetCheckBoxYN(cbD2UseYn), fgetCheckBoxYN(cbD2SNextYn), te2STime.Text, fgetCheckBoxYN(cbD2ENextYn), te2ETime.Text,
                           fgetCheckBoxYN(cbD3UseYn), fgetCheckBoxYN(cbD3SNextYn), te3STime.Text, fgetCheckBoxYN(cbD3ENextYn), te3ETime.Text,
                           fgetCheckBoxYN(cbD4UseYn), fgetCheckBoxYN(cbD4SNextYn), te4STime.Text, fgetCheckBoxYN(cbD4ENextYn), te4ETime.Text,
                           fgetCheckBoxYN(cbD1AddYn), fgetCheckBoxYN(cbD2AddYn), fgetCheckBoxYN(cbD3AddYn), fgetCheckBoxYN(cbD4AddYn),
                           GT_USERIF.ID]);
        ExecSql;
      end;
    end;
    GMessagebox('저장되었습니다.', CDMSI);
  except on E: Exception do
    GMessagebox(Format('데이터 저장 중 오류가 발생했습니다.'#13#10'%s', [E.Message]), CDMSE);
  end;
end;

end.


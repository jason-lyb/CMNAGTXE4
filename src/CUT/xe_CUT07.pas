unit xe_CUT07;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxGraphics, cxDropDownEdit,
  cxCalendar, cxMemo, StdCtrls, cxRadioGroup, ExtCtrls, cxTextEdit,
  cxMaskEdit, cxControls, cxContainer, cxEdit, cxLabel, cxButtons,
  cxCurrencyEdit, cxLookAndFeels, cxGroupBox, dxSkinsCore, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_CUT07 = class(TForm)
    cxLabel19: TcxLabel;
    cxedEdit1: TcxTextEdit;
    cxmmMemo: TcxMemo;
    cxlbBrNo: TcxLabel;
    cxlbCode: TcxLabel;
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxButton1: TcxButton;
    cxCurrencyEdit5: TcxCurrencyEdit;
    cxTextEdit3: TcxTextEdit;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    edtMileMemo: TcxTextEdit;
    PnlTitle: TPanel;
    cxButton4: TcxButton;
    PnlMain: TPanel;
    cxLabel54: TcxLabel;
    Shape1: TShape;
    cxGroupBox1: TcxGroupBox;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    cxGroupBox2: TcxGroupBox;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    cxLblActive: TLabel;
    Shape12: TShape;
    Shape13: TShape;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    edMileage01: TcxCurrencyEdit;
    cxCurrencyEdit1: TcxCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure proc_init;
    // 전문 응답 처리
    procedure proc_recieve(ls_rxxml: Widestring);
    procedure proc_mod_cust_mileage(sSeq: string; iType: Integer);
  end;

var
  Frm_CUT07: TFrm_CUT07;

implementation

{$R *.dfm}

uses xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Msg, xe_packet, xe_xml, xe_Dm,
  xe_Query, Main, xe_CUT;

procedure TFrm_CUT07.PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_CUT07.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_CUT07.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_CUT07.FormCreate(Sender: TObject);
begin
  proc_init;
end;

procedure TFrm_CUT07.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_CUT07.FormDestroy(Sender: TObject);
begin
  Frm_CUT07 := Nil;
end;

procedure TFrm_CUT07.FormShow(Sender: TObject);
begin
  fSetFont(Frm_CUT07, GS_FONTNAME);
end;

procedure TFrm_CUT07.proc_init;
begin
  cxlbBrNo.Caption := '';
  cxlbCode.Caption := '';
  cxLabel14.Caption := '';
  cxTextEdit4.Text := '';
  cxedEdit1.Text := '';
  cxTextEdit1.Text := '';
  cxTextEdit2.Text := '';
  edtMileMemo.Clear;
  cxmmMemo.Text := '';
  edMileage01.Value := 0;
  cxCurrencyEdit1.Value := 0;
  cxCurrencyEdit2.Value := 0;
	cxCurrencyEdit3.Value := 0;
  cxCurrencyEdit4.Value := 0;
  cxCurrencyEdit5.Value := 0;
  cxTextEdit3.Text := '';
end;

procedure TFrm_CUT07.proc_recieve(ls_rxxml: Widestring);
var
  ls_ClientKey, ls_Msg_Err : string;
  iCurMlg, iTotalMlg: Integer;
begin
	try
		Screen.Cursor := crHourGlass;
		try
      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_ClientKey := GetXmlClientKey(ls_rxxml);
        ls_ClientKey := Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5);
        case StrToIntDef(ls_ClientKey, 1) of
          1:
            begin
							GMessagebox('충전하였습니다.', CDMSI);
							iCurMlg := StrToIntdef(cxCurrencyEdit1.Text, 0) + StrToIntDef(cxCurrencyEdit4.text, 0);
              cxCurrencyEdit1.Text := IntToStr(iCurMlg);
              iTotalMlg := StrToIntDef(edMileage01.Text, 0) + StrToIntDef(cxCurrencyEdit4.text, 0);
              edMileage01.Text := IntToStr(iTotalMlg);
              proc_mod_cust_mileage(cxlbCode.Caption, 1);
            end;
          2:
            begin
              GMessagebox('상품권이 지급되었습니다.', CDMSI);
							proc_mod_cust_mileage(cxlbCode.Caption, 2);
            end;
        end;
      end else
      begin
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
      end;
    finally
			Screen.Cursor := crHourGlass;
    end;
  except
  end;
end;

procedure TFrm_CUT07.cxButton1Click(Sender: TObject);
var
  ls_TxLoad, ls_TxQry, sQueryTemp: string;
  rv_str, cu_mlg, cu_tel: string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
begin

	cu_mlg := StringReplace(cxCurrencyEdit4.Text, ',', '', [rfReplaceAll]);
	cu_tel := StringReplace(cxTextEdit2.Text, '-', '', [rfReplaceAll]);

	if StrTointDef(cu_mlg,0) < 1 then 
	begin
		GMessagebox('충전하실 마일리지를 입력하여주십시오.', CDMSE);
		exit;
	end;

	ls_TxLoad := GTx_UnitXmlLoad('QUERY.XML');
	ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', Self.Caption + '1', [rfReplaceAll]);
  fGet_BlowFish_Query(GSQ_MILEAGE_INSERT, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, [cxlbCode.Caption, cu_Tel, cu_mlg,
    En_Coding(GT_USERIF.ID), cxLabel14.Caption, cxlbBrNo.Caption, edtMileMemo.Text]);

  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

  cxButton1.Enabled := False;
  slReceive := TStringList.Create;
	try
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
    begin
      rv_str := slReceive[0];
      if rv_str <> '' then
      begin
				ls_rxxml := rv_str;
        Application.ProcessMessages;
        proc_recieve(ls_rxxml);
      end;
    end;
  finally
    cxButton1.Enabled := True;
    FreeAndNil(slReceive);
  end;
  Close;
end;

procedure TFrm_CUT07.proc_mod_cust_mileage(sSeq: string; iType: Integer);
var
  iRow, iCurMlg, iCnt: Integer;
begin
	Frm_Main.procMenuCreateActive(409, '마일리지현황(고객별)');

  iRow := Frm_CUT.CustView9.DataController.FindRecordIndexByText(0, 1, sSeq, True, True, True);
  if iRow = -1 then Exit;

  if iType = 1 then
  begin
    Frm_CUT.CustView9.DataController.Values[iRow, 8] := edMileage01.Value;
    Frm_CUT.CustView9.DataController.Values[iRow, 9] := cxCurrencyEdit1.Value;
  end else
	if iType = 2 then
  begin
		iCurMlg :=
			StrToIntDef(StringReplace(Frm_CUT.CustView9.DataController.Values[iRow,
      9],
        ',',
      '', [rfReplaceAll]), 0);
    iCnt :=
			StrToIntDef(StringReplace(Frm_CUT.CustView9.DataController.Values[iRow,
      10], ',', '',
				[rfReplaceAll]), 0);
    iCurMlg := iCurMlg - StrToIntDef(cxCurrencyEdit5.Text, 0);
    iCnt := iCnt + 1;
		Frm_CUT.CustView9.DataController.Values[iRow, 9] := iCurMlg;
		Frm_CUT.CustView9.DataController.Values[iRow, 10] := iCnt;
  end;
end;

procedure TFrm_CUT07.cxButton2Click(Sender: TObject);
var
  ls_TxLoad, rv_str: string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
begin
	if Not func_EucKr_Check(edtMileMemo, 0) then Exit;

{	if StrTointDef(cxCurrencyEdit5.text,0) < 1 then 
	begin
		GMessagebox('차감하실 마일리지를 입력하여주십시오.', CDMSE);
		exit;
	end;                                        }

	if cxTextEdit3.text = '' then 
	begin
		GMessagebox('지급상품을 입력하여 주십시오.', CDMSE);
		exit;
	end;

	ls_TxLoad := GTx_UnitXmlLoad('C021N1.XML');
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', Self.Caption + '2', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CustTelString', En_Coding(StringReplace(cxTextEdit2.Text, '-', '', [rfReplaceAll])), [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'CuSeqString', En_Coding(cxlbCode.Caption), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'PrizeString', En_Coding(StringReplace(cxTextEdit3.Text, ',', '', [rfReplaceAll])), [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'PrizeMlgString', En_Coding(cxCurrencyEdit5.Text), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserMemoString', En_Coding(edtMileMemo.Text), [rfReplaceAll]);

  cxButton2.Enabled := False;
  Screen.Cursor := crHandPoint;

  slReceive := TStringList.Create;
  try
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
    begin
      rv_str := slReceive[0];
      if rv_str <> '' then
      begin
        ls_rxxml := rv_str;
        Application.ProcessMessages;
				proc_recieve(ls_rxxml);
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    cxButton2.Enabled := True;
    FreeAndNil(slReceive);
  end;
  Close;
end;

procedure TFrm_CUT07.cxButton3Click(Sender: TObject);
begin
	Frm_Main.procMenuCreateActive(410, '마일리지상세(적립+지급)');

	Frm_CUT.cxedCuSEQ.Text := cxlbCode.Caption;
//	Frm_CUT.CustView9.DataController.SetRecordCount(0);
	Frm_CUT.proc_MileageDetail;

  Close;
end;

procedure TFrm_CUT07.cxButton4Click(Sender: TObject);
begin
  Close;
end;

end.


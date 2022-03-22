unit xe_SMS07;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, Spin, ComCtrls, ExtCtrls, MSXML2_TLB,
  cxCheckBox, cxMemo, StdCtrls, cxTextEdit, cxControls, cxContainer,
  cxEdit, cxLabel, cxButtons, GradientLabel, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxMaskEdit, cxDropDownEdit, cxCalc, cxSpinEdit,
  cxTimeEdit, cxCurrencyEdit, cxLookAndFeels, cxNavigator, Vcl.Imaging.jpeg,
  dxSkinsCore, dxSkinscxPCPainter, Clipbrd, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  cxGroupBox;

type
  // 본사정보 임시저장 구조체
  THeadInfoTmp = record
    Name, Code, Owner, Phone, Phone2, ID, SNum, attend_hp : string;
    Use, TypeV: Boolean;
    Symbol, ShareOrder, VirAccount: string;
    Share: Integer;
    Memo: string;
    Period: Integer;
    Bank, BankNum, BankName: string;
    // 2011.01.12 추가(본사주소)
    Zipcode,Addr1,Addr2: string;
  end;

  TFrm_SMS07 = class(TForm)
    pnl1: TPanel;
    img1: TImage;
    RbButton16: TcxButton;
    cxLabel14: TcxLabel;
    cxLabel2: TcxLabel;
    ed_send: TcxTextEdit;
    edt_sender_Hidden: TEdit;
    ed_receiver: TcxMemo;
    mm_message: TcxMemo;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    cxCheckBox5: TcxCheckBox;
    cxCheckBox6: TcxCheckBox;
    cxCheckBox7: TcxCheckBox;
    cxCheckBox8: TcxCheckBox;
    cxCheckBox9: TcxCheckBox;
    cxCheckBox11: TcxCheckBox;
    cxCheckBox13: TcxCheckBox;
    cxCheckBox12: TcxCheckBox;
    cxCheckBox10: TcxCheckBox;
    cxButton1: TcxButton;
    cxONOFF_CHK: TcxCheckBox;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    shp1: TShape;
    cxCheckBox22: TcxCheckBox;
    cxCheckBox23: TcxCheckBox;
    cxTimeEdit1: TcxTimeEdit;
    cxCheckBox14: TcxCheckBox;
    cxLabel6: TcxLabel;
    cxTimeEdit2: TcxTimeEdit;
    cxLabel7: TcxLabel;
    cmb_DisTime1: TcxComboBox;
    cxLabel8: TcxLabel;
    cxTimeEdit3: TcxTimeEdit;
    cxCheckBox15: TcxCheckBox;
    cxLabel9: TcxLabel;
    cxTimeEdit4: TcxTimeEdit;
    cxLabel10: TcxLabel;
    cmb_DisTime2: TcxComboBox;
    cxLabel11: TcxLabel;
    cxTimeEdit5: TcxTimeEdit;
    cxCheckBox16: TcxCheckBox;
    cxLabel12: TcxLabel;
    cxTimeEdit6: TcxTimeEdit;
    cxLabel13: TcxLabel;
    cmb_DisTime3: TcxComboBox;
    cxLabel15: TcxLabel;
    cxTimeEdit7: TcxTimeEdit;
    cxCheckBox17: TcxCheckBox;
    cxLabel18: TcxLabel;
    cxTimeEdit8: TcxTimeEdit;
    cxLabel19: TcxLabel;
    cmb_DisTime4: TcxComboBox;
    cxLabel20: TcxLabel;
    cxTimeEdit9: TcxTimeEdit;
    cxCheckBox18: TcxCheckBox;
    cxLabel21: TcxLabel;
    cxTimeEdit10: TcxTimeEdit;
    cxLabel22: TcxLabel;
    cmb_DisTime5: TcxComboBox;
    cxLabel23: TcxLabel;
    cxCheckBox19: TcxCheckBox;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxCheckBox20: TcxCheckBox;
    cxLabel28: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    cxCheckBox21: TcxCheckBox;
    cxButton2: TcxButton;
    cxGridBrOrder: TcxGrid;
    cxSgBrOrder: TcxGridDBTableView;
    cxSgBrOrderColumn1: TcxGridDBColumn;
    cxSgBrOrderColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxSgBrOrderColumn4: TcxGridDBColumn;
    cxSgBrOrderColumn5: TcxGridDBColumn;
    cxSgBrOrderColumn6: TcxGridDBColumn;
    cxSgBrOrderColumn7: TcxGridDBColumn;
    cxSgBrOrderColumn8: TcxGridDBColumn;
    cxSgBrOrderColumn9: TcxGridDBColumn;
    cxSgBrOrderColumn10: TcxGridDBColumn;
    cxSgBrOrderColumn11: TcxGridDBColumn;
    cxSgBrOrderColumn12: TcxGridDBColumn;
    cxSgBrOrderColumn13: TcxGridDBColumn;
    cxSgBrOrderColumn14: TcxGridDBColumn;
    cxCheckBox24: TcxCheckBox;
    cxCheckBox25: TcxCheckBox;
    pnlTitle: TPanel;
    cxLblActive: TLabel;
    cxGroupBox1: TcxGroupBox;
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure RbButton16Click(Sender: TObject);
    procedure cxCheckBox22Click(Sender: TObject);
    procedure cxCheckBox23Click(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxCheckBox2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxSgBrOrderCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxSgBrOrderColumn1PropertiesEditValueChanged(
      Sender: TObject);
    procedure cxSgBrOrderKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxSgBrOrderKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxSgBrOrderMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxSgBrOrderMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxSgBrOrderMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxSgBrOrderSelectionChanged(Sender: TcxCustomGridTableView);
    procedure ed_receiverKeyPress(Sender: TObject; var Key: Char);
    procedure ed_sendKeyPress(Sender: TObject; var Key: Char);
		procedure cxButton1Click(Sender: TObject);
		procedure cxButton3Click(Sender: TObject);
		procedure cxTimeEdit1Exit(Sender: TObject);
		procedure cxCheckBox14Click(Sender: TObject);
		procedure cxCheckBox15Click(Sender: TObject);
		procedure cxCheckBox16Click(Sender: TObject);
		procedure cxCheckBox17Click(Sender: TObject);
		procedure cxCheckBox18Click(Sender: TObject);
		procedure cxTimeEdit2Exit(Sender: TObject);
		procedure cxTimeEdit3Exit(Sender: TObject);
		procedure cxTimeEdit4Exit(Sender: TObject);
		procedure cxTimeEdit6Exit(Sender: TObject);
		procedure cxTimeEdit5Exit(Sender: TObject);
		procedure cxTimeEdit7Exit(Sender: TObject);
		procedure cxTimeEdit8Exit(Sender: TObject);
		procedure cxTimeEdit9Exit(Sender: TObject);
		procedure cxTimeEdit10Exit(Sender: TObject);
		procedure mm_messageKeyPress(Sender: TObject; var Key: Char);
    procedure mm_messageKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxCheckBox24Click(Sender: TObject);
    procedure cxONOFF_CHKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure pnlTitleMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure mm_messagePropertiesChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure mm_messageKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FHeadInfo: THeadInfoTmp;
  public
    { Public declarations }
    gnMouseKeyDown, gnClickedRow: Integer;
    gbControlKeyDown, gbMouseKeyDrag: Boolean;
    procedure proc_smsRead(ls_rxxml: WideString);
    procedure proc_init;
    procedure proc_SetINI;
    // 지사별 콜카운트
    procedure proc_BrOrder;
    procedure proc_recieve(ls_rxxml: widestring);
    procedure RequestDataHead; // 본사관리 - 본사정보 요청
    procedure RequestData(AData: string);
    procedure ResponseDataBase(ADataStr: WideString);     // 처음 데이터를 수신하는 함수
    procedure ResponseDataHead(AXmlStr: WideString);      // 본사관리 - 본사정보 수신
    procedure DisplayHeadInfo(AInfo: THeadInfoTmp);
		function fChkTime:Boolean;//(Anum : integer; ATime : TTime);
	end;

var
  Frm_SMS07: TFrm_SMS07;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml;


procedure TFrm_SMS07.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_SMS07.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_SMS07.FormCreate(Sender: TObject);
var i, iRow : integer;
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

  for i := 0 to cxSgBrOrder.ColumnCount - 1 do
  begin
    cxSgBrOrder.Columns[i].DataBinding.ValueType := 'String';
  end;
  iRow := cxSgBrOrder.GetColumnByFieldName('취소율').Index;
  cxSgBrOrder.Columns[iRow].DataBinding.ValueType := 'Currency';

  cxSgBrOrder.DataController.SetRecordCount(0);

  proc_init;
end;

procedure TFrm_SMS07.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_SMS07.FormDestroy(Sender: TObject);
begin
  Frm_SMS07 := Nil;
end;

procedure TFrm_SMS07.cxButton2Click(Sender: TObject);
var i : integer;
  sReceive_num, sTemp : string;
  HDSection : string;
begin
	SetDebugeWrite('TFrm_SMS07.cxButton2Click');
	Try
   	if Not func_EucKr_Check(mm_message, 1) then Exit;

//		if not fChkTime then exit;
		
		HDSection := GT_SEL_BRNO.HdNo;
    if cxONOFF_CHK.Checked then GS_ONOFF_CHK := True
    else GS_ONOFF_CHK := False;
    GS_EnvFile.WriteBool(HDSection, 'ONOFF_CHK', GS_ONOFF_CHK);

    if cxCheckBox24.checked then GS_ALL_CHK := True
    else GS_ALL_CHK := False;
    GS_EnvFile.WriteBool(HDSection, 'ALL_CHK', GS_ALL_CHK);

    if cxCheckBox1.checked then GS_ALLBR_CHK := True
    else GS_ALLBR_CHK := False;
    GS_EnvFile.WriteBool(HDSection, 'ALLBR_CHK', GS_ALLBR_CHK);

    if cxCheckBox2.checked then GS_BRNAME_CHK := True
    else GS_BRNAME_CHK := False;
    GS_EnvFile.WriteBool(HDSection, 'BRNAME_CHK', GS_BRNAME_CHK);

    if cxCheckBox3.checked then GS_BRMTEL_CHK := True
    else GS_BRMTEL_CHK := False;
    GS_EnvFile.WriteBool(HDSection, 'BRMTEL_CHK', GS_BRMTEL_CHK);

    if cxCheckBox4.checked then GS_TOTCNT_CHK := True
    else GS_TOTCNT_CHK := False;
    GS_EnvFile.WriteBool(HDSection, 'TOTCNT_CHK', GS_TOTCNT_CHK);

    if cxCheckBox5.checked then GS_ORDER_CHK := True
    else GS_ORDER_CHK := False;
    GS_EnvFile.WriteBool(HDSection, 'ORDER_CHK', GS_ORDER_CHK);

    if cxCheckBox6.checked then GS_STANDBY_CHK := True
    else GS_STANDBY_CHK := False;
    GS_EnvFile.WriteBool(HDSection, 'STANDBY_CHK', GS_STANDBY_CHK);

    if cxCheckBox7.checked then GS_RUN_CHK := True
    else GS_RUN_CHK := False;
    GS_EnvFile.WriteBool(HDSection, 'RUN_CHK', GS_RUN_CHK);

    if cxCheckBox8.checked then GS_FINISHED_CHK := True
    else GS_FINISHED_CHK := False;
    GS_EnvFile.WriteBool(HDSection, 'FINISHED_CHK', GS_FINISHED_CHK);

    if cxCheckBox9.checked then GS_FINISHEDper_CHK := True
    else GS_FINISHEDper_CHK := False;
    GS_EnvFile.WriteBool(HDSection, 'FINISHEDper_CHK', GS_FINISHEDper_CHK);

    if cxCheckBox10.checked then GS_CANCEL_CHK := True
    else GS_CANCEL_CHK := False;
    GS_EnvFile.WriteBool(HDSection, 'CANCEL_CHK', GS_CANCEL_CHK);

    if cxCheckBox11.checked then GS_CANCELPer_CHK := True
    else GS_CANCELPer_CHK := False;
    GS_EnvFile.WriteBool(HDSection, 'CANCELPer_CHK', GS_CANCELPer_CHK);

    if cxCheckBox12.checked then GS_INQUIRE_CHK := True
    else GS_INQUIRE_CHK := False;
    GS_EnvFile.WriteBool(HDSection, 'INQUIRE_CHK', GS_INQUIRE_CHK);

    if cxCheckBox13.checked then GS_BOOKING_CHK := True
    else GS_BOOKING_CHK := False;
    GS_EnvFile.WriteBool(HDSection, 'BOOKING_CHK', GS_BOOKING_CHK);

    if cxCheckBox25.checked then GS_DATETIME_CHK := True
    else GS_DATETIME_CHK := False;
    GS_EnvFile.WriteBool(HDSection, 'DATETIME_CHK', GS_DATETIME_CHK);

    if cxCheckBox14.checked then GS_FIR_CHK := True
    else GS_FIR_CHK := False;
    GS_EnvFile.WriteBool  (HDSection, 'FIR_CHK', GS_FIR_CHK);
    GS_FIR_FTIME := cxTimeEdit1.text;
    GS_EnvFile.WriteString(HDSection, 'FIR_FTIME', GS_FIR_FTIME);
    GS_FIR_ETIME := cxTimeEdit2.text;
    GS_EnvFile.WriteString(HDSection, 'FIR_ETIME', GS_FIR_ETIME);
    GS_FIR_DTIME := IntToStr(cmb_DisTime1.ItemIndex);
    GS_EnvFile.WriteString(HDSection, 'FIR_DTIME', GS_FIR_DTIME);

    if cxCheckBox15.checked then GS_SEC_CHK := True
    else GS_SEC_CHK := False;
    GS_EnvFile.WriteBool  (HDSection, 'SEC_CHK', GS_SEC_CHK);
    GS_SEC_FTIME := cxTimeEdit3.text;
    GS_EnvFile.WriteString(HDSection, 'SEC_FTIME', GS_SEC_FTIME);
    GS_SEC_ETIME := cxTimeEdit4.text;
    GS_EnvFile.WriteString(HDSection, 'SEC_ETIME', GS_SEC_ETIME);
    GS_SEC_DTIME := IntToStr(cmb_DisTime2.ItemIndex);
    GS_EnvFile.WriteString(HDSection, 'SEC_DTIME', GS_SEC_DTIME);

    if cxCheckBox16.checked then GS_THI_CHK := True
    else GS_THI_CHK := False;
    GS_EnvFile.WriteBool  (HDSection, 'THI_CHK', GS_THI_CHK);
    GS_THI_FTIME := cxTimeEdit5.text;
    GS_EnvFile.WriteString(HDSection, 'THI_FTIME', GS_THI_FTIME);
    GS_THI_ETIME := cxTimeEdit6.text;
    GS_EnvFile.WriteString(HDSection, 'THI_ETIME', GS_THI_ETIME);
    GS_THI_DTIME := IntToStr(cmb_DisTime3.ItemIndex);
    GS_EnvFile.WriteString(HDSection, 'THI_DTIME', GS_THI_DTIME);

    if cxCheckBox17.checked then GS_FOU_CHK := True
    else GS_FOU_CHK := False;
    GS_EnvFile.WriteBool  (HDSection, 'FOU_CHK', GS_FOU_CHK);
    GS_FOU_FTIME := cxTimeEdit7.text;
    GS_EnvFile.WriteString(HDSection, 'FOU_FTIME', GS_FOU_FTIME);
    GS_FOU_ETIME := cxTimeEdit8.text;
    GS_EnvFile.WriteString(HDSection, 'FOU_ETIME', GS_FOU_ETIME);
    GS_FOU_DTIME := IntToStr(cmb_DisTime4.ItemIndex);
    GS_EnvFile.WriteString(HDSection, 'FOU_DTIME', GS_FOU_DTIME);

    if cxCheckBox18.checked then GS_FIF_CHK := True
    else GS_FIF_CHK := False;
    GS_EnvFile.WriteBool  (HDSection, 'FIF_CHK', GS_FIF_CHK);
    GS_FIF_FTIME := cxTimeEdit9.text;
    GS_EnvFile.WriteString(HDSection, 'FIF_FTIME', GS_FIF_FTIME);
    GS_FIF_ETIME := cxTimeEdit10.text;
    GS_EnvFile.WriteString(HDSection, 'FIF_ETIME', GS_FIF_ETIME);
    GS_FIF_DTIME := IntToStr(cmb_DisTime5.ItemIndex);
    GS_EnvFile.WriteString(HDSection, 'FIF_DTIME', GS_FIF_DTIME);

    if cxCheckBox19.checked then GS_TOTAL_CHK := True
    else GS_TOTAL_CHK := False;
    GS_EnvFile.WriteBool  (HDSection, 'TOTAL_CHK', GS_TOTAL_CHK);
    GS_TOTAL_CNT := cxTextEdit1.text;
    GS_EnvFile.WriteString(HDSection, 'TOTAL_CNT', GS_TOTAL_CNT);

    if cxCheckBox20.checked then GS_ORDERT_CHK := True
    else GS_ORDERT_CHK := False;
    GS_EnvFile.WriteBool  (HDSection, 'ORDERT_CHK', GS_ORDERT_CHK);
    GS_ORDERT_CNT := cxTextEdit2.text;
    GS_EnvFile.WriteString(HDSection, 'ORDERT_CNT', GS_ORDERT_CNT);

    if cxCheckBox21.checked then GS_CANCELT_CHK := True
    else GS_CANCELT_CHK := False;
    GS_EnvFile.WriteBool  (HDSection, 'CANCELT_CHK', GS_CANCELT_CHK);
    GS_CANCELT_PER := cxTextEdit3.text;
    GS_EnvFile.WriteString(HDSection, 'CANCELT_PER', GS_CANCELT_PER);

    GS_BRNO_LIST := '';
    GS_BRNM_LIST := '';
    GS_BRTEL_LIST := '';
    for i := 0 to cxSgBrOrder.DataController.RecordCount - 1 do
    begin
      if cxSgBrOrder.ViewData.Records[i].Values[0] then // ok
      begin
        GS_BRNO_LIST := GS_BRNO_LIST + cxSgBrOrder.ViewData.Records[I].Values[2] + '│';
        GS_BRNM_LIST := GS_BRNM_LIST + cxSgBrOrder.ViewData.Records[I].Values[1] + '│';
        GS_BRTEL_LIST := GS_BRTEL_LIST + RemovePhone(cxSgBrOrder.ViewData.Records[I].Values[3]) + '│';
      end;
    end;
    if GS_BRNO_LIST  <> '' then GS_EnvFile.WriteString(HDSection, 'BRNO_LIST', GS_BRNO_LIST);
    if GS_BRNM_LIST  <> '' then GS_EnvFile.WriteString(HDSection, 'BRNM_LIST', GS_BRNM_LIST);
    if GS_BRTEL_LIST <> '' then GS_EnvFile.WriteString(HDSection, 'BRTEL_LIST', GS_BRTEL_LIST);

    sReceive_Num := ed_receiver.Lines.CommaText;
    if ed_receiver.Lines.Count = 1 then
    begin
      if not NumericCheck(STANDFUNCPATHFILE, ed_receiver.text, sReceive_Num) then
        Exit;
      GS_RECEIVER_TEL := sReceive_Num;
      GS_EnvFile.WriteString(HDSection, 'RECEIVER_TEL', GS_RECEIVER_TEL);
    end
    else
    begin
      for I := 0 to ed_receiver.Lines.Count - 1 do
      begin
        sTemp := RemovePhone(ed_receiver.Lines[I]);
        if Length(sTemp) = 11 then
        begin
          if StrToIntDef(sTemp, -1) < 1010000000 then
          begin
            GMessagebox(Format('받는이 전화번호 형식이 올바르지 않습니다.' + #13#10
              + '받는이를 정확히 입력해 주세요.[%s]', [ed_receiver.Lines[I]]), CDMSE);
            Exit;
          end;
        end
        else if Length(sTemp) = 10 then
        begin
          if StrToIntDef(sTemp, -1) < 111000000 then
          begin
            GMessagebox(Format('받는이 전화번호 형식이 올바르지 않습니다.' + #13#10
              + '받는이를 정확히 입력해 주세요.[%s]', [ed_receiver.Lines[I]]), CDMSE);
            Exit;
          end;
        end
        else
        begin
          GMessagebox(Format('받는이 전화번호 형식이 올바르지 않습니다.' + #13#10
            + '받는이를 정확히 입력해 주세요.[%s]', [ed_receiver.Lines[I]]), CDMSE);
          Exit;
        end;
        GS_RECEIVER_TEL := sReceive_Num;
        GS_EnvFile.WriteString(HDSection, 'RECEIVER_TEL', GS_RECEIVER_TEL);
      end;
    end;

    GS_SEND_TEL := ed_send.Text;
    if GS_SEND_TEL = '대표번호' then
      GS_SEND_TEL := ''
    else
      GS_SEND_TEL := ed_send.Text;
    GS_EnvFile.WriteString(HDSection, 'SEND_TEL', GS_SEND_TEL);

    GS_MMS_STR := mm_message.Text;
		GS_EnvFile.WriteString(HDSection, 'MMS_STR', GS_MMS_STR);

    if GS_ONOFF_CHK then
		begin
			frm_Main.trmAUTOSMSSEND.enabled := False;
			frm_Main.trmAUTOSMS.enabled := True;
		end
    else
    begin
      frm_Main.trmAUTOSMS.enabled := False;
			frm_Main.trmAUTOSMSSEND.enabled := False;
		end;
		GMessagebox('저장되었습니다.', CDMSI);

  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_SMS07.RbButton16Click(Sender: TObject);
var
  sTemp, Msg, rMsg,
  ls_TxLoad, rv_str, sReceive_num, sSend_num, sTime: string;
  ls_rxxml: Widestring;
  StrList: TStringList;
  I, j, ErrCode : integer;
  sMessage, sysdate : string;
  allOrder : double;
begin
  try
    sysdate := frm_main.func_sysdate;
    sysdate := copy(sysdate,7,2) + '일 ' + copy(sysdate,9,2) + ':' + copy(sysdate,11,2);
    if Trim(mm_message.Text) = '' then
    begin
      GMessagebox('전송메세지를 입력하세요', CDMSE);
      Exit;
    end;
    
    if Trim(ed_receiver.Text) = '' then
    begin
      GMessagebox('받는이를 입력하세요', CDMSE);
			Exit;
    end;

    if ed_send.Text = '대표번호' then sSend_num := cxSgBrOrder.ViewData.Records[0].Values[3]
    else sSend_num :=  ed_send.Text;
    sSend_num := RemovePhone(sSend_num);
    if not NumericCheck(STANDFUNCPATHFILE, '대표번호', sSend_num) then
      Exit;

    sReceive_num := RemovePhone(ed_receiver.Lines.CommaText);
    if ed_receiver.Lines.Count = 1 then
    begin
//      sReceive_num := ed_receiver.Text;
      if not NumericCheck(STANDFUNCPATHFILE, '받는이', sReceive_Num) then
        Exit;
    end
    else
    begin
      for I := 0 to ed_receiver.Lines.Count - 1 do
      begin
        sTemp := RemovePhone(ed_receiver.Lines[I]);
        if Length(sTemp) = 11 then
        begin
          if StrToIntDef(sTemp, -1) < 1010000000 then
          begin
            GMessagebox(Format('받는이 전화번호 형식이 올바르지 않습니다.' + #13#10
              + '받는이를 정확히 입력해 주세요.[%s]', [ed_receiver.Lines[I]]), CDMSE);
            Exit;
          end;
        end
        else if Length(sTemp) = 10 then
        begin
          if StrToIntDef(sTemp, -1) < 111000000 then
          begin
            GMessagebox(Format('받는이 전화번호 형식이 올바르지 않습니다.' + #13#10
              + '받는이를 정확히 입력해 주세요.[%s]', [ed_receiver.Lines[I]]), CDMSE);
            Exit;
          end;
        end
        else
        begin
          GMessagebox(Format('받는이 전화번호 형식이 올바르지 않습니다.' + #13#10
            + '받는이를 정확히 입력해 주세요.[%s]', [ed_receiver.Lines[I]]), CDMSE);
          Exit;
        end;
      end;
    end;

    sTime := '';
    sMessage := mm_message.Text;
    if cxCheckBox1.Checked then
    begin
      for i := 0 to cxSgBrOrder.DataController.RowCount -1 do
      begin

      end;
      if cxCheckBox1.Checked then
        sMessage := StringReplace(sMessage, '<$본사명$>',   FHeadInfo.Name, [rfReplaceall]);
      if cxCheckBox2.Checked then
        sMessage := StringReplace(sMessage, '<$지사명$>',   '', [rfReplaceall]);
      if cxCheckBox3.Checked then
        sMessage := StringReplace(sMessage, '<$대표번호$>', cxSgBrOrder.ViewData.Records[0].Values[3], [rfReplaceall]);
      if cxCheckBox4.Checked then
        sMessage := StringReplace(sMessage, '<$총건수$>',   '0', [rfReplaceall]);
      if cxCheckBox5.Checked then
        sMessage := StringReplace(sMessage, '<$접수$>',   '0', [rfReplaceall]);
      if cxCheckBox6.Checked then
        sMessage := StringReplace(sMessage, '<$대기$>',   '0', [rfReplaceall]);
      if cxCheckBox7.Checked then
        sMessage := StringReplace(sMessage, '<$운행$>',   '0', [rfReplaceall]);
      if cxCheckBox8.Checked then
        sMessage := StringReplace(sMessage, '<$완료$>',   '0', [rfReplaceall]);

      if cxCheckBox9.Checked then
        sMessage := StringReplace(sMessage, '<$완료율$>', '0', [rfReplaceall]);
      if cxCheckBox10.Checked then
        sMessage := StringReplace(sMessage, '<$취소$>',   '0', [rfReplaceall]);
      if cxCheckBox11.Checked then
        sMessage := StringReplace(sMessage, '<$취소율$>', '0', [rfReplaceall]);
      if cxCheckBox12.Checked then
        sMessage := StringReplace(sMessage, '<$문의$>',   '0', [rfReplaceall]);
      if cxCheckBox13.Checked then
        sMessage := StringReplace(sMessage, '<$예약$>',   '0', [rfReplaceall]);
      if cxCheckBox25.Checked then
        sMessage := StringReplace(sMessage, '<$일자시간$>',   sysdate, [rfReplaceall]);


      Msg := StringReplace(sMessage, #13#10, #10, [rfReplaceAll]);
      rMsg := Msg ;
      if length(widestring(Msg)) <= 39 then
      begin
        ls_TxLoad := GTx_UnitXmlLoad('SMS02.XML');
        ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString',     En_Coding(GT_USERIF.ID), [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',  VERSIONINFO, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',  'WSMS0001', [rfReplaceAll]);

        ls_TxLoad := StringReplace(ls_TxLoad, 'ReceiverString',   En_Coding(sReceive_Num), [rfReplaceAll]);

        ls_TxLoad := StringReplace(ls_TxLoad, 'SenderString',     En_Coding(sSend_num), [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'MessageString',    En_Coding(Msg), [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'ReservationString', sTime, [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', '', [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'WkSabunString', '', [rfReplaceAll]);

				

        StrList := TStringList.Create;
        try
          if dm.SendSock(ls_TxLoad, StrList, ErrCode, False) then
          begin
            rv_str := StrList[0];
            if rv_str <> '' then
            begin
              ls_rxxml := rv_str;
              Application.ProcessMessages;
              proc_smsRead(ls_rxxml);
            end;
          end;
        finally
          StrList.Free;
        end;
      end
      else
      begin
        for j := 0 to (length(widestring(Msg)) div 40) do
        begin
          if j = 0 then
            rMsg := '1)' + copy(widestring(Msg),1, 39)
          else
            rMsg := inttostr(j+1) + ')' + copy(widestring(Msg),(j * 39) + 1, 39);

          ls_TxLoad := GTx_UnitXmlLoad('SMS02.XML');
          ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString',     En_Coding(GT_USERIF.ID), [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',  VERSIONINFO, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',  'WSMS0001', [rfReplaceAll]);

          ls_TxLoad := StringReplace(ls_TxLoad, 'ReceiverString',   En_Coding(sReceive_Num), [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'SenderString',     En_Coding(sSend_num), [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'MessageString',    En_Coding(rMsg), [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ReservationString', sTime, [rfReplaceAll]);

					ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', '', [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'WkSabunString', '', [rfReplaceAll]);

					StrList := TStringList.Create;
          try
            if dm.SendSock(ls_TxLoad, StrList, ErrCode, False) then
            begin
              rv_str := StrList[0];
              if rv_str <> '' then
              begin
                ls_rxxml := rv_str;
                Application.ProcessMessages;
                proc_smsRead(ls_rxxml);
              end;
            end;
          finally
            StrList.Free;
          end;
//            delete(widestring(rMsg),1,40);
        end;
      end;
    end
    else
    begin
      for i := 0 to cxSgBrOrder.DataController.RowCount -1 do
      begin
        if cxSgBrOrder.ViewData.Records[i].Values[0] then // ok
        begin
          //----------------------------------------------------------------------------------------------------
          //      메세지에 고객명, 지사명, 대표번호 조합
          //----------------------------------------------------------------------------------------------------
          if cxCheckBox1.Checked then
            sMessage := StringReplace(sMessage, '<$본사명$>',   FHeadInfo.Name, [rfReplaceall]);
          if cxCheckBox2.Checked then
            sMessage := StringReplace(sMessage, '<$지사명$>',   cxSgBrOrder.ViewData.Records[I].Values[1], [rfReplaceall]);
          if cxCheckBox3.Checked then
            sMessage := StringReplace(sMessage, '<$대표번호$>', cxSgBrOrder.ViewData.Records[I].Values[3], [rfReplaceall]);
          if cxCheckBox4.Checked then
            sMessage := StringReplace(sMessage, '<$총건수$>',   cxSgBrOrder.ViewData.Records[I].Values[4], [rfReplaceall]);
          if cxCheckBox5.Checked then
            sMessage := StringReplace(sMessage, '<$접수$>',   cxSgBrOrder.ViewData.Records[I].Values[5], [rfReplaceall]);
          if cxCheckBox6.Checked then
            sMessage := StringReplace(sMessage, '<$대기$>',   cxSgBrOrder.ViewData.Records[I].Values[8], [rfReplaceall]);
          if cxCheckBox7.Checked then
            sMessage := StringReplace(sMessage, '<$운행$>',   cxSgBrOrder.ViewData.Records[I].Values[6], [rfReplaceall]);
          if cxCheckBox8.Checked then
            sMessage := StringReplace(sMessage, '<$완료$>',   cxSgBrOrder.ViewData.Records[I].Values[7], [rfReplaceall]);

          allOrder := StrToFloat(cxSgBrOrder.ViewData.Records[I].Values[7]) / StrToFloat(cxSgBrOrder.ViewData.Records[I].Values[5]) * 100;
          if cxCheckBox9.Checked then
            sMessage := StringReplace(sMessage, '<$완료율$>', FormatFloat('#,##0.#', allOrder), [rfReplaceall]);
          if cxCheckBox10.Checked then
            sMessage := StringReplace(sMessage, '<$취소$>',   cxSgBrOrder.ViewData.Records[I].Values[11], [rfReplaceall]);
          if cxCheckBox11.Checked then
            sMessage := StringReplace(sMessage, '<$취소율$>', cxSgBrOrder.ViewData.Records[I].Values[12], [rfReplaceall]);
          if cxCheckBox12.Checked then
            sMessage := StringReplace(sMessage, '<$문의$>',   cxSgBrOrder.ViewData.Records[I].Values[9], [rfReplaceall]);
          if cxCheckBox13.Checked then
            sMessage := StringReplace(sMessage, '<$예약$>',   cxSgBrOrder.ViewData.Records[I].Values[10], [rfReplaceall]);


          Msg := StringReplace(sMessage, #13#10, #10, [rfReplaceAll]);
          rMsg := Msg ;
          if length(widestring(Msg)) <= 39 then
          begin
            ls_TxLoad := GTx_UnitXmlLoad('SMS02.XML');
            ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString',     En_Coding(GT_USERIF.ID), [rfReplaceAll]);
            ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',  VERSIONINFO, [rfReplaceAll]);
            ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',  'WSMS0001', [rfReplaceAll]);

            ls_TxLoad := StringReplace(ls_TxLoad, 'ReceiverString',   En_Coding(sReceive_Num), [rfReplaceAll]);

            ls_TxLoad := StringReplace(ls_TxLoad, 'SenderString',     En_Coding(sSend_num), [rfReplaceAll]);
            ls_TxLoad := StringReplace(ls_TxLoad, 'MessageString',    En_Coding(Msg), [rfReplaceAll]);
            ls_TxLoad := StringReplace(ls_TxLoad, 'ReservationString', sTime, [rfReplaceAll]);

						ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', '', [rfReplaceAll]);
						ls_TxLoad := StringReplace(ls_TxLoad, 'WkSabunString', '', [rfReplaceAll]);
						StrList := TStringList.Create;
            try
              if dm.SendSock(ls_TxLoad, StrList, ErrCode, False) then
              begin
                rv_str := StrList[0];
                if rv_str <> '' then
                begin
                  ls_rxxml := rv_str;
                  Application.ProcessMessages;
                  proc_smsRead(ls_rxxml);
                end;
              end;
            finally
              StrList.Free;
            end;
          end
          else
          begin
            for j := 0 to (length(widestring(Msg)) div 40) do
            begin
              if j = 0 then
                rMsg := '1)' + copy(widestring(Msg),1, 39)
              else
                rMsg := inttostr(j+1) + ')' + copy(widestring(Msg),(j * 39) + 1, 39);

							ls_TxLoad := GTx_UnitXmlLoad('SMS02.XML');
              ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString',     En_Coding(GT_USERIF.ID), [rfReplaceAll]);
              ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',  VERSIONINFO, [rfReplaceAll]);
              ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',  'WSMS0001', [rfReplaceAll]);

              ls_TxLoad := StringReplace(ls_TxLoad, 'ReceiverString',   En_Coding(sReceive_Num), [rfReplaceAll]);
              ls_TxLoad := StringReplace(ls_TxLoad, 'SenderString',     En_Coding(sSend_num), [rfReplaceAll]);
              ls_TxLoad := StringReplace(ls_TxLoad, 'MessageString',    En_Coding(rMsg), [rfReplaceAll]);
              ls_TxLoad := StringReplace(ls_TxLoad, 'ReservationString', sTime, [rfReplaceAll]);

							ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', '', [rfReplaceAll]);
							ls_TxLoad := StringReplace(ls_TxLoad, 'WkSabunString', '', [rfReplaceAll]);
							
							StrList := TStringList.Create;
              try
                if dm.SendSock(ls_TxLoad, StrList, ErrCode, False) then
                begin
                  rv_str := StrList[0];
                  if rv_str <> '' then
									begin
                    ls_rxxml := rv_str;
                    Application.ProcessMessages;
                    proc_smsRead(ls_rxxml);
                  end;
                end;
              finally
                StrList.Free;
              end;
  //            delete(widestring(rMsg),1,40);
            end;
          end;
        end;
      end;
    end;
  except
  end;
end;

procedure TFrm_SMS07.cxCheckBox22Click(Sender: TObject);
begin
  if cxCheckBox22.Checked then
  begin
    ed_send.Text := '';
    ed_send.Enabled := True;
  end
  else
  begin
    ed_send.Text := '대표번호';
    ed_send.Enabled := False;
  end;
end;

procedure TFrm_SMS07.cxCheckBox23Click(Sender: TObject);
begin
  if cxCheckBox23.Checked then
  begin
    ed_receiver.Text := '';
    ed_receiver.Enabled := True;
  end
  else
  begin
    if GS_RECEIVER_TEL <> '' then
    begin
      ed_receiver.Text := '본사관리자';
      ed_receiver.Enabled := False;
      DisplayHeadInfo(FHeadInfo);
    end
    else ed_receiver.lines.CommaText := GS_RECEIVER_TEL;
  end;
end;

procedure TFrm_SMS07.proc_smsRead(ls_rxxml: WideString);
var
  xdom: msDomDocument;
  ls_Msg_Err: string;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ls_rxxml) then
      Exit;

    ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
    if ('0000' = ls_Msg_Err) then
    begin
      GMessagebox('전송' + CMC006, CDMSI);
//      Hide;
    end
    else
    begin
      GMessagebox('전송에' + CMC010 + CRLF + ls_Msg_Err, CDMSE);
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_SMS07.cxCheckBox1Click(Sender: TObject);
var
  s, s1: wideString;
const
  sTarget = '<$본사명$>';
begin
  if TcxCheckBox(Sender).Checked then
  begin
    if mm_message.SelStart > 0 then
    begin
      s := mm_message.Text;
      s := copy(s, 1, mm_message.SelStart);
      s1 := stringReplace(mm_message.Text, s, '', [rfReplaceAll]);
      mm_message.Text := s + sTarget + s1;
    end
    else
    begin
      mm_message.Text := sTarget + mm_message.Text;
    end;
    mm_message.SelStart := length(mm_message.Text);
    cxCheckBox2.Checked := False;
    cxCheckBox2.Enabled := False;
    cxCheckBox3.Checked := False;
    cxCheckBox3.Enabled := False;

  end
  else
  begin
    mm_message.Text := StringReplace(mm_message.Text, sTarget, '', [rfReplaceAll]);
    cxCheckBox2.Enabled := True;
    cxCheckBox3.Enabled := True;
  end;

  cxLabel16.Caption := IntToStr(Length(mm_message.Text));
  mm_message.SetFocus;

end;

procedure TFrm_SMS07.cxCheckBox2Click(Sender: TObject);
var
  s, s1: wideString;
  sTarget : string;
//const
//  sTarget = '<$' + TcxCheckBox(Sender).Caption +'$>';
begin
  sTarget := '<$' + TcxCheckBox(Sender).Caption +'$>';
  if TcxCheckBox(Sender).Checked then
  begin
    if mm_message.SelStart > 0 then
    begin
      s := mm_message.Text;
      s := copy(s, 1, mm_message.SelStart);
      s1 := stringReplace(mm_message.Text, s, '', [rfReplaceAll]);
      mm_message.Text := s + sTarget + s1;
    end
    else
    begin
      mm_message.Text := sTarget + mm_message.Text;
    end;
    mm_message.SelStart := length(mm_message.Text);
  end
  else
    mm_message.Text := StringReplace(mm_message.Text, sTarget, '', [rfReplaceAll]);

  cxLabel16.Caption := IntToStr(Length(mm_message.Text));
  mm_message.SetFocus;
end;

procedure TFrm_SMS07.proc_init;
begin
  ed_send.Text := '대표번호';
  cxCheckBox22.checked := false;
  ed_send.Enabled := false;
  ed_receiver.Text := '본사관리자';
  cxCheckBox23.checked := false;
  ed_receiver.Enabled := false;

  cxCheckBox1.Checked := False;
  cxCheckBox2.Checked := False;
  cxCheckBox3.Checked := False;
  cxCheckBox4.Checked := False;
  cxCheckBox5.Checked := False;
  cxCheckBox6.Checked := False;
  cxCheckBox7.Checked := False;
  cxCheckBox8.Checked := False;
  cxCheckBox9.Checked := False;
  cxCheckBox10.Checked := False;
  cxCheckBox11.Checked := False;
  cxCheckBox12.Checked := False;
  cxCheckBox13.Checked := False;

  cxCheckBox14.Checked := False;
  cxCheckBox15.Checked := False;
  cxCheckBox16.Checked := False;
  cxCheckBox17.Checked := False;
  cxCheckBox18.Checked := False;
  cxCheckBox19.Checked := False;
  cxCheckBox20.Checked := False;
  cxCheckBox21.Checked := False;


  cxTimeEdit1.text := '18:00';
  cxTimeEdit2.text := '21:59';
  cxTimeEdit1.Enabled := False;
  cxTimeEdit2.Enabled := False;
  cmb_DisTime1.ItemIndex := 3;
  cxTimeEdit3.text := '22:00';
  cxTimeEdit4.text := '22:59';
  cxTimeEdit3.Enabled := False;
  cxTimeEdit4.Enabled := False;
  cmb_DisTime2.ItemIndex := 2;
  cxTimeEdit5.text := '23:00';
  cxTimeEdit6.text := '23:59';
  cxTimeEdit5.Enabled := False;
  cxTimeEdit6.Enabled := False;
  cmb_DisTime3.ItemIndex := 1;
  cxTimeEdit7.text := '00:00';
  cxTimeEdit8.text := '00:59';
  cxTimeEdit7.Enabled := False;
  cxTimeEdit8.Enabled := False;
  cmb_DisTime4.ItemIndex := 2;
  cxTimeEdit9.text := '01:00';
  cxTimeEdit10.text := '05:00';
  cxTimeEdit9.Enabled := False;
  cxTimeEdit10.Enabled := False;
  cmb_DisTime5.ItemIndex := 3;

  cxTextEdit1.Text := '';
  cxTextEdit2.Text := '';
  cxTextEdit3.Text := '';
end;

procedure TFrm_SMS07.proc_SetINI;
var i, j : integer;
  ls_Rcrd : TstringList;
begin
  try
    cxONOFF_CHK.checked := GS_ONOFF_CHK;
    if GS_ONOFF_CHK then
      cxONOFF_CHK.Caption := '실시간발송 ON'
    else
      cxONOFF_CHK.Caption := '실시간발송 OFF';

    cxCheckBox1.checked := GS_ALLBR_CHK;
    cxCheckBox2.checked := GS_BRNAME_CHK;
    cxCheckBox3.checked := GS_BRMTEL_CHK;
    cxCheckBox4.checked := GS_TOTCNT_CHK;
    cxCheckBox5.checked := GS_ORDER_CHK;
    cxCheckBox6.checked := GS_STANDBY_CHK;
    cxCheckBox7.checked := GS_RUN_CHK;
    cxCheckBox8.checked := GS_FINISHED_CHK;
    cxCheckBox9.checked := GS_FINISHEDper_CHK;
    cxCheckBox10.checked := GS_CANCEL_CHK;
    cxCheckBox11.checked := GS_CANCELPer_CHK;
    cxCheckBox12.checked := GS_INQUIRE_CHK;
    cxCheckBox13.checked := GS_BOOKING_CHK;
    cxCheckBox25.checked := GS_DATETIME_CHK;

    cxCheckBox14.checked := GS_FIR_CHK;
    if GS_FIR_FTIME <> '' then
      cxTimeEdit1.text := GS_FIR_FTIME;
    if GS_FIR_ETIME <> '' then
      cxTimeEdit2.text := GS_FIR_ETIME;
    cmb_DisTime1.ItemIndex := strtoint(GS_FIR_DTIME);

    cxCheckBox15.checked := GS_SEC_CHK;
    if GS_SEC_FTIME <> '' then
      cxTimeEdit3.text := GS_SEC_FTIME;
    if GS_SEC_ETIME <> '' then
      cxTimeEdit4.text := GS_SEC_ETIME;
    cmb_DisTime2.ItemIndex := strtoint(GS_SEC_DTIME);

    cxCheckBox16.checked := GS_THI_CHK;
    if GS_THI_FTIME <> '' then
      cxTimeEdit5.text := GS_THI_FTIME;
    if GS_THI_ETIME <> '' then
      cxTimeEdit6.text := GS_THI_ETIME;
    cmb_DisTime3.ItemIndex := strtoint(GS_THI_DTIME);

    cxCheckBox17.checked := GS_FOU_CHK;
    if GS_FOU_FTIME <> '' then
      cxTimeEdit7.text := GS_FOU_FTIME;
    if GS_FOU_ETIME <> '' then
      cxTimeEdit8.text := GS_FOU_ETIME;
    cmb_DisTime4.ItemIndex := strtoint(GS_FOU_DTIME);

    cxCheckBox18.checked := GS_FIF_CHK;
    if GS_FIF_FTIME <> '' then
      cxTimeEdit9.text := GS_FIF_FTIME;
    if GS_FIF_ETIME <> '' then
      cxTimeEdit10.text := GS_FIF_ETIME;
    cmb_DisTime5.ItemIndex := strtoint(GS_FIF_DTIME);

    cxCheckBox19.checked := GS_TOTAL_CHK;
    cxTextEdit1.text := GS_TOTAL_CNT;

    cxCheckBox20.checked := GS_ORDERT_CHK;
    cxTextEdit2.text := GS_ORDERT_CNT;

    cxCheckBox21.checked := GS_CANCELT_CHK;
    cxTextEdit3.text := GS_CANCELT_PER;
    mm_message.text := '';
    mm_message.text := GS_MMS_STR;

    if GS_SEND_TEL <> '' then
    begin
			cxCheckBox22.Checked := True;
      ed_send.text := GS_SEND_TEL;
		end
    else cxCheckBox22.Checked := False;
    ed_receiver.lines.CommaText := GS_RECEIVER_TEL;

    cxCheckBox24.checked := GS_ALL_CHK;
    if not GS_ALL_CHK then
		begin
      ls_Rcrd := TStringList.Create;
			try                        
//				GetTextSeperationEx('│', GS_BRNO_LIST, ls_Rcrd);
				GetTextSeperationEx('│', GS_BRTEL_LIST, ls_Rcrd);
				for i := 0 to ls_Rcrd.Count -1 do
        begin
					for j := 0 to cxSgBrOrder.DataController.RowCount -1 do
          begin
//						if cxSgBrOrder.DataController.Values[j, 2] = ls_Rcrd[i] then
						if CallToStr(cxSgBrOrder.DataController.Values[j, 3]) = ls_Rcrd[i] then
						begin
              cxSgBrOrder.DataController.Values[j, 0] := True;
						end;
          end;
        end;
      finally
        ls_Rcrd.Free;
      end;
    end else
		begin
      ls_Rcrd := TStringList.Create;
      try
				GetTextSeperationEx('│', GS_BRNO_LIST, ls_Rcrd);
        for i := 0 to ls_Rcrd.Count -1 do
        begin
          for j := 0 to cxSgBrOrder.DataController.RowCount -1 do
          begin
            cxSgBrOrder.DataController.Values[j, 0] := True;
          end;
        end;
      finally
        ls_Rcrd.Free;
      end;
    end;
  except
  end;
end;

procedure TFrm_SMS07.FormShow(Sender: TObject);
begin
  fSetFont(Frm_SMS07, GS_FONTNAME);
  fSetSkin(Frm_SMS07);

{  proc_init;
  proc_BrOrder;
  proc_SetINI;
  RequestDataHead;}
end;

procedure TFrm_SMS07.pnlTitleMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SMS07.proc_BrOrder;
var
  ls_TxLoad: WideString;
  ls_TxQry, rv_str, sTmp: string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
begin
  try
		sTmp := '';
		if GT_UserIF.LV = '40' then sTmp := '   and a.BR_NO = ''' + GT_SEL_BRNO.BrNo + ''' ' 
													 else sTmp := '   and a.HD_NO = ''' + frm_Main.func_search_hdNo(GT_SEL_BRNO.BrNo) + ''' ' ;
	
		if not Check_ID(GT_USERIF.ID, GT_SEL_BRNO.BrNo) then
			ls_TxQry := 'select a.BR_NAME, a.BR_NO, b.BR_TEL, ''0'',''0'',''0'',''0'',''0'',''0'',''0'',''0''  '
                + '  from CDMS_BRANCH a, CDMS_BRANCH_TEL b,  CDMS_HEAD c '
								+ ' where a.BR_NO = b.BR_NO '
								+ '   and A.HD_NO = c.HD_NO ' 
								+ sTmp
//								+ '   and a.HD_NO = ''' + frm_Main.func_search_hdNo(GT_SEL_BRNO.BrNo) + ''' '
		else
      ls_TxQry := 'select a.BR_NAME, a.BR_NO, b.BR_TEL, ''0'',''0'',''0'',''0'',''0'',''0'',''0'',''0''  '
                + '  from CDMS_BRANCH a, CDMS_BRANCH_TEL b,  CDMS_HEAD c '
                + ' where a.BR_NO = b.BR_NO '
                + '   and A.HD_NO = c.HD_NO '
                + '   and A.BR_NO &lt;&gt; ''E717'' '
                + '   and a.HD_NO = ''' + frm_Main.func_search_hdNo(GT_SEL_BRNO.BrNo) + ''' ';

    ls_TxLoad := GetSel01('Main' +'BRCALL', ls_TxQry);
    cxSgBrOrder.DataController.SetRecordCount(0);
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
      FreeAndNil(slReceive);
    end;
  except
    on E: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_SMS07.proc_recieve(ls_rxxml: widestring);
var
  xdom: msDomDocument;
  ls_ClientKey, ls_Msg_Err : string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd : TStringList;
  i, j, iRow : Integer;
  iCancelCnt, iTotal: Integer;
  sCancelRate : Integer;
begin
  try
    xdom := ComsDomDocument.Create;
    try
      if not xdom.loadXML(ls_rxxml) then
      begin
        Exit;
      end;

      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_ClientKey := GetXmlClientKey(ls_rxxml);
        ls_ClientKey := Copy(ls_ClientKey, 5, Length(ls_ClientKey) - 4);
        if ls_ClientKey = 'BRCALL' then
        begin
          if (0 < GetXmlRecordCount(ls_rxxml)) then
          begin
            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
            cxSgBrOrder.BeginUpdate;
            ls_Rcrd := TStringList.Create;
            try
              for i := 0 to lst_Result.length - 1 do
              begin
                GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                ls_Rcrd.Insert(0, IntToStr(i + 1));
                iRow := cxSgBrOrder.DataController.AppendRecord;
                // 1 Record 추가
                Application.ProcessMessages;
                for J := 4 to 11 do
                  if ls_Rcrd[J] = '' then
                    ls_Rcrd[J] := '0';

                iCancelCnt := StrToIntDef(ls_Rcrd[11], 0);
                iTotal := StrToIntDef(ls_Rcrd[4], 0);
                if iTotal = 0 then
//                  sCancelRate := '0'
                  sCancelRate := 0
                else
//                  sCancelRate := IntToStr(round(iCancelCnt / iTotal * 100));
                  sCancelRate := round(iCancelCnt / iTotal * 100);

                SetGridData(cxSgBrOrder, iRow, 0, false);
                SetGridData(cxSgBrOrder, iRow, 1, ls_Rcrd[1]);
                SetGridData(cxSgBrOrder, iRow, 2, ls_Rcrd[2]);
                SetGridData(cxSgBrOrder, iRow, 3, strtocall(ls_Rcrd[3]));
                SetGridData(cxSgBrOrder, iRow, 4, ls_Rcrd[4]);
                SetGridData(cxSgBrOrder, iRow, 5, ls_Rcrd[5]);
                if not frm_Main.chkBrCallFinAndRun.Checked then
                  SetGridData(cxSgBrOrder, iRow, 6, ls_Rcrd[6]);
                if not frm_Main.chkBrCallFinAndRun.Checked then
                  SetGridData(cxSgBrOrder, iRow, 7, ls_Rcrd[7])
                else
                  SetGridData(cxSgBrOrder, iRow, 7, StrToIntDef(ls_Rcrd[6], 0) + StrToIntDef(ls_Rcrd[7], 0));
                SetGridData(cxSgBrOrder, iRow, 8, ls_Rcrd[8]);
                SetGridData(cxSgBrOrder, iRow, 9, ls_Rcrd[9]);
                SetGridData(cxSgBrOrder, iRow, 10, ls_Rcrd[10]);
                SetGridData(cxSgBrOrder, iRow, 11, ls_Rcrd[11]);
                SetGridData(cxSgBrOrder, iRow, 12, sCancelRate);
              end;
            finally
              ls_Rcrd.Free;
            end;
            cxSgBrOrder.EndUpdate;
          end;
        end;
        Screen.Cursor := crDefault;
      end else
      begin
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
      end;
    finally
      xdom := Nil;
    end;
  except
    on E: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_SMS07.cxSgBrOrderCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  Row, Col: Integer;
begin
//  gnClickedRow := ACellViewInfo.GridRecord.Index;
  gnClickedRow := cxSgBrOrder.DataController.FocusedRecordIndex;
  if (gbControlKeyDown) and (AButton = mbLeft) then
  begin
    Row := ACellViewInfo.GridRecord.Index;
    Col := cxSgBrOrder.GetColumnByFieldName('').Index;
    cxSgBrOrder.DataController.Values[Row, Col] := cxSgBrOrder.DataController.IsRowSelected(Row);
  end;
end;

procedure TFrm_SMS07.cxSgBrOrderColumn1PropertiesEditValueChanged(
  Sender: TObject);
var
  Row, Col: Integer;
begin
  Row := cxSgBrOrder.DataController.FocusedRecordIndex;
  Col := cxSgBrOrder.GetColumnByFieldName('').Index;
  cxSgBrOrder.DataController.Values[Row, Col] := not cxSgBrOrder.DataController.Values[Row, Col];
end;

procedure TFrm_SMS07.cxSgBrOrderKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := True;
    cxSgBrOrder.OptionsSelection.CellMultiSelect := False;
    cxSgBrOrder.OptionsSelection.CellSelect := False;
    cxSgBrOrder.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_SMS07.cxSgBrOrderKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := False;
  end;
end;

procedure TFrm_SMS07.cxSgBrOrderMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbLeft then
    Exit;
  gnClickedRow := cxSgBrOrder.DataController.FocusedRecordIndex;
  gnMouseKeyDown := cxSgBrOrder.DataController.FocusedRecordIndex;
  if not gbControlKeyDown then
  begin
    cxSgBrOrder.OptionsSelection.CellMultiSelect := True;
    cxSgBrOrder.OptionsSelection.CellSelect := True;
    cxSgBrOrder.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_SMS07.cxSgBrOrderMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if (gnMouseKeyDown > -1) and (gnMouseKeyDown <> cxSgBrOrder.DataController.FocusedRecordIndex) then
  begin
    gbMouseKeyDrag := True;
  end;
end;

procedure TFrm_SMS07.cxSgBrOrderMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  I, Row, Col: Integer;
begin
  if Button <> mbLeft then
    Exit;
  if (not gbControlKeyDown) then
  begin
    Col := cxSgBrOrder.GetColumnByFieldName('').Index;
    if gbMouseKeyDrag then
    begin
      cxSgBrOrder.DataController.BeginUpdate;
      try
        for I := 0 to cxSgBrOrder.DataController.RecordCount - 1 do
        begin
          if cxSgBrOrder.DataController.IsRowSelected(I) then
            cxSgBrOrder.ViewData.Records[I].Values[Col] := True;
//            cxgWkCounsel.DataController.Values[I, Col] := True;
        end;
      finally
        cxSgBrOrder.DataController.EndUpdate;
      end;
    end
    else
    begin
//      cxgWkCounsel.ViewData.GridView.

      Row := cxSgBrOrder.DataController.FocusedRecordIndex;
      if (Row > -1) and (gnClickedRow = Row) then
        cxSgBrOrder.DataController.Values[Row, Col] := not cxSgBrOrder.DataController.Values[Row, Col];
    end;
  end;
  gnClickedRow    := -1;
  gnMouseKeyDown  := -1;
  gbMouseKeyDrag  := False;
end;

procedure TFrm_SMS07.cxSgBrOrderSelectionChanged(
  Sender: TcxCustomGridTableView);
var
  Row, Col: Integer;
begin
  if gbControlKeyDown then
  begin
    Row := cxSgBrOrder.DataController.FocusedRecordIndex;
    Col := cxSgBrOrder.GetColumnByFieldName('').Index;
    cxSgBrOrder.DataController.Values[Row, Col] := cxSgBrOrder.DataController.IsRowSelected(Row);
  end;
end;

procedure TFrm_SMS07.ed_receiverKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) in [8, 13, 48..57, 17, 22] then
  else
    Key := #0;
end;

procedure TFrm_SMS07.ed_sendKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) in [8, 48..57] then
  else
    Key := #0;
end;

procedure TFrm_SMS07.RequestDataHead;
var
  ls_TxLoad: string;
begin
  try
    ls_TxLoad := GTx_UnitXmlLoad('C044N1.xml');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'HEAD0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'SELECT/UPDATE', 'SELECT', [rfReplaceAll]);
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      ls_TxLoad := StringReplace(ls_TxLoad, 'HeadsHdNo', GT_SEL_BRNO.HDNO, [rfReplaceAll])
    else
      ls_TxLoad := StringReplace(ls_TxLoad, 'HeadsHdNo', GT_USERIF.HD, [rfReplaceAll]);    
    // 2011-09-23 본사 마스터 인증번호 추가.  xml 전문 변경없이 코드에 추가 함.
    ls_TxLoad := StringReplace(ls_TxLoad, '대표연락처', '" mem_hp2="" mem_attend_hp="' , [rfReplaceAll]);

    RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_SMS07.RequestData(AData: string);
var
  ReceiveStr: string;
  StrList: TStringList;
  ErrCode: integer;
begin
  StrList := TStringList.Create;
  Screen.Cursor := crHandPoint;
  try
    if dm.SendSock(AData, StrList, ErrCode, False) then
    begin
      ReceiveStr := StrList[0];

      if trim(ReceiveStr) <> '' then
      begin
        Application.ProcessMessages;
        ResponseDataBase(ReceiveStr);
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    StrList.Free
  end;
end;

procedure TFrm_SMS07.ResponseDataBase(ADataStr: WideString);
var
  xdom: msDomDocument;
  XmlData: WideString;
  ErrorCode, ClientKey: string;
begin
  xdom := ComsDomDocument.Create;
  Screen.Cursor := crHourGlass;
  try
    try
      XmlData := ADataStr;
      if not xdom.loadXML(XmlData) then
        Exit;
      
      ErrorCode := GetXmlErrorCode(XmlData);
      if ('0000' = ErrorCode) then
      begin
        ClientKey := GetXmlClientKey(XmlData);

        if ClientKey = 'HEAD0001' then
          ResponseDataHead(XmlData);
      end else
      begin
        GMessagebox(MSG012 + CRLF + ErrorCode, CDMSE);
      end;
    except
    end;
  finally
    Screen.Cursor := crDefault;
    xdom := Nil;
  end;
end;

procedure TFrm_SMS07.ResponseDataHead(AXmlStr: WideString);
var
  xdom: msDomDocument;
  ResultList: IXMLDomNodeList;
  sTemp, HDSection: string;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then
      Exit;
    HDSection := GT_SEL_BRNO.HdNo;

    ResultList := xdom.documentElement.selectNodes('/cdms/Service/Heads/Head');

    if ResultList.length > 0 then
    begin
      with ResultList[0].attributes do
      begin
        // 본사기본정보
        FHeadInfo.Name := getNamedItem('name').text;
        GS_HEAD_NAME   := FHeadInfo.Name;
        GS_EnvFile.WriteString(HDSection, 'HEAD_NAME', GS_HEAD_NAME);

        FHeadInfo.Code := getNamedItem('no').text;
        GS_HEAD_NO     := FHeadInfo.Code;
        GS_EnvFile.WriteString(HDSection, 'HEAD_NO', GS_HEAD_NO);
        FHeadInfo.Owner   := getNamedItem('mem_name').text;
        FHeadInfo.Phone   := getnamedItem('mem_hp').text;
        FHeadInfo.Phone2  := getnamedItem('mem_hp2').text;   // 2011-09-21   add.  인증핸폰

        FHeadInfo.attend_hp := getnamedItem('mem_attend_hp').text;
        // 본사아이디가 아닌경우 아이디 감추기
        sTemp := getNamedItem('mem_id').text;
        if GT_USERIF.ID <> sTemp then
          sTemp := Rpad(Copy(sTemp, 1, 1), System.Length(sTemp), '*');
        FHeadInfo.ID := sTemp;
        FHeadInfo.SNum := getNamedItem('company_no').text;

        // 본사설정정보
        FHeadInfo.Use := (UpperCase(getNamedItem('use').text) = 'Y');
        FHeadInfo.TypeV := (getNamedItem('hierarchy').text = '3');
        FHeadInfo.Symbol := getNamedItem('symbol').Text;
        FHeadInfo.ShareOrder := getNamedItem('union_name').Text;
        sTemp := getNamedItem('bank').Text;
        FHeadInfo.Share := StrToIntDef(getNamedItem('share_level').text, 0);
        FHeadInfo.Memo := getNamedItem('Memo').text;

        // 정산캐쉬관리
        FHeadInfo.Period := StrToIntDef(getNamedItem('settle_cycle').text, 0);
        FHeadInfo.Bank := getNamedItem('settle_bank').text;
        FHeadInfo.BankNum := getNamedItem('settle_account').text;
        FHeadInfo.BankName := getNamedItem('settle_depositor').text;


        // 2011.01.12 추가(본사주소)
        FHeadInfo.Zipcode := getnameditem('zipcode').text;
        FHeadInfo.Addr1 := getnameditem('address1').text;
        FHeadInfo.Addr2 := getnameditem('address2').text;


      end;

      DisplayHeadInfo(FHeadInfo);
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_SMS07.DisplayHeadInfo(AInfo: THeadInfoTmp);
begin
  // 본사기본정보
  if GS_RECEIVER_TEL = '' then
  begin
    ed_receiver.Text := '';
    if AInfo.Phone <> '' then
    begin
      ed_receiver.lines.add(AInfo.Phone);
    end
    else
    begin
      ed_receiver.lines.add(AInfo.Phone2);
    end;
  end;
end;

procedure TFrm_SMS07.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_SMS07.cxButton3Click(Sender: TObject);
begin
  ed_receiver.Lines.CommaText := '1,1';
end;

procedure TFrm_SMS07.cxTimeEdit1Exit(Sender: TObject);
var inTime, sTime, eTime : TTime;
	sTmp : string;
begin
	sTmp := '설정1';
	inTime := cxTimeEdit1.Time;
	if inTime = StrToDateTime('00:00') then exit;
	if inTime = cxTimeEdit2.Time then
	begin
		cxTimeEdit2.SetFocus;
		GMessagebox('설정1의 시작시간과 종료시간이 동일합니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
		exit;
	end;
	if cxCheckBox15.Checked then
	begin
		sTime := cxTimeEdit3.Time;
		eTime := cxTimeEdit4.Time;
		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit2.SetFocus;
				GMessagebox(sTmp + '과 설정2의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end else
    if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit2.SetFocus;
				GMessagebox(sTmp + '과 설정2의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;

	if cxCheckBox16.Checked then
	begin
		sTime := cxTimeEdit5.Time;
		eTime := cxTimeEdit6.Time;
		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit2.SetFocus;
				GMessagebox(sTmp + '과 설정3의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end else
    if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit2.SetFocus;
				GMessagebox(sTmp + '과 설정3의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;

	if cxCheckBox17.Checked then
	begin
		sTime := cxTimeEdit7.Time;
		eTime := cxTimeEdit8.Time;
		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit2.SetFocus;
				GMessagebox(sTmp + '과 설정4의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end else
    if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit2.SetFocus;
				GMessagebox(sTmp + '과 설정4의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;

	if cxCheckBox18.Checked then
	begin
		sTime := cxTimeEdit9.Time;
		eTime := cxTimeEdit10.Time;
		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit2.SetFocus;
				GMessagebox(sTmp + '과 설정5의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end else
    if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit2.SetFocus;
				GMessagebox(sTmp + '과 설정5의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;
end;

function TFrm_SMS07.fChkTime:Boolean;//(Anum: integer; ATime: TTime);
var inTime, sTime, eTime : TTime;
	i : integer;
	sTmp : string;
begin
	Result := False;
	if cxCheckBox14.checked then
	begin
		inTime := cxTimeEdit1.Time;
		if inTime = cxTimeEdit2.Time then
		begin
			cxTimeEdit2.SetFocus;
			GMessagebox('설정1의 시작시간과 종료시간이 동일합니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
			exit;
		end;
	end;
	if cxCheckBox15.checked then
	begin
		inTime := cxTimeEdit3.Time;
		if inTime = cxTimeEdit4.Time then
		begin
			cxTimeEdit4.SetFocus;
			GMessagebox('설정2의 시작시간과 종료시간이 동일합니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
			exit;
		end;
	end;
	if cxCheckBox16.checked then
	begin
		inTime := cxTimeEdit5.Time;
		if inTime = cxTimeEdit6.Time then
		begin
			cxTimeEdit6.SetFocus;
			GMessagebox('설정3의 시작시간과 종료시간이 동일합니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
			exit;
		end;
	end;
	if cxCheckBox17.checked then
	begin
		inTime := cxTimeEdit7.Time;
		if inTime = cxTimeEdit8.Time then
		begin
			cxTimeEdit8.SetFocus;
			GMessagebox('설정4의 시작시간과 종료시간이 동일합니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
			exit;
		end;
	end;
	if cxCheckBox18.checked then
	begin
		inTime := cxTimeEdit9.Time;
		if inTime = cxTimeEdit10.Time then
		begin
			cxTimeEdit10.SetFocus;
			GMessagebox('설정5의 시작시간과 종료시간이 동일합니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
			exit;
		end;
	end;

	for i := 1 to 10 do
	begin
		inTime := TcxTimeEdit(FindComponent('cxTimeEdit'+IntToStr(i))).time;
//		BBTime := TcxTimeEdit(FindComponent('cxTimeEdit'+IntToStr(i+1))).time;
		case i of
			1,2 : 
			begin
				if not cxCheckBox14.Checked then Continue;
				sTmp := '설정1'  ;
			end;
			3,4 : 
			begin
				if not cxCheckBox15.Checked then Continue;
				sTmp := '설정2'  ;
			end;
			5,6 : 
			begin
				if not cxCheckBox16.Checked then Continue;
				sTmp := '설정3'  ;
			end;
			7,8 : 
			begin
				if not cxCheckBox17.Checked then Continue;
				sTmp := '설정4'  ;
			end;
			9,10 : 
			begin
				if not cxCheckBox18.Checked then Continue;
				sTmp := '설정5'  ;
			end;
		end;
		
		
		if (cxCheckBox14.Checked) and (i <> 1) and (i <> 2) then
		begin
			sTime := cxTimeEdit1.Time;
			eTime := cxTimeEdit2.Time;
			if sTime < eTime then
			begin
				if (sTime <= inTime) and (eTime >= inTime) then
				begin
					GMessagebox(sTmp + '과 설정1의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
					exit;
				end;
			end
			else if sTime > eTime then
			begin
				if (sTime <= inTime) or (eTime >= inTime) then
				begin
					GMessagebox(sTmp + '과 설정1의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
					exit;
				end;
			end;
		end;
		if (cxCheckBox15.Checked) and (i <> 3) and (i <> 4)  then
		begin
			sTime := cxTimeEdit3.Time;
			eTime := cxTimeEdit4.Time;
			if sTime < eTime then
			begin
				if (sTime <= inTime) and (eTime >= inTime) then
				begin
					GMessagebox(sTmp + '과 설정2의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
					exit;
				end;
			end
			else if sTime > eTime then
			begin
				if (sTime <= inTime) or (eTime >= inTime) then
				begin
					GMessagebox(sTmp + '과 설정2의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
					exit;
				end;
			end;
		end;
		if (cxCheckBox16.Checked) and (i <> 5) and (i <> 6)  then
		begin
			sTime := cxTimeEdit5.Time;
			eTime := cxTimeEdit6.Time;

			if sTime < eTime then
			begin
				if (sTime <= inTime) and (eTime >= inTime) then
				begin
					GMessagebox(sTmp + '과 설정3의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
					exit;
				end;
			end
			else if sTime > eTime then
			begin
				if (sTime <= inTime) or (eTime >= inTime) then
				begin
					GMessagebox(sTmp + '과 설정3의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
					exit;
				end;
			end;
		end;
		if (cxCheckBox17.Checked) and (i <> 7) and (i <> 8)  then
		begin
			sTime := cxTimeEdit7.Time;
			eTime := cxTimeEdit8.Time;

			if sTime < eTime then
			begin
				if (sTime <= inTime) and (eTime >= inTime) then
				begin
					GMessagebox(sTmp + '과 설정4의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
					exit;
				end;
			end
			else if sTime > eTime then
			begin
				if (sTime <= inTime) or (eTime >= inTime) then
				begin
					GMessagebox(sTmp + '과 설정4의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
					exit;
				end;
			end;
		end;
		if (cxCheckBox18.Checked) and (i <> 9) and (i <> 10)  then
		begin
			sTime := cxTimeEdit9.Time;
			eTime := cxTimeEdit10.Time;

			if sTime < eTime then
			begin
				if (sTime <= inTime) and (eTime >= inTime) then
				begin
					GMessagebox(sTmp + '과 설정5의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
					exit;
				end;
			end
			else if sTime > eTime then
			begin
				if (sTime <= inTime) or (eTime >= inTime) then
				begin
					GMessagebox(sTmp + '과 설정5의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
					exit;
				end;
			end;
		end;
	end;
	Result := True;
end;

procedure TFrm_SMS07.cxCheckBox14Click(Sender: TObject);
begin
  if cxCheckBox14.Checked then
  begin
    cxTimeEdit1.Enabled := True;
    cxTimeEdit2.Enabled := True;
  end
  else
  begin
    cxTimeEdit1.Enabled := False;
		cxTimeEdit2.Enabled := False;
		cxTimeEdit1.time := StrToDateTime('00:00');
		cxTimeEdit2.time := StrToDateTime('00:00');
	end;
end;

procedure TFrm_SMS07.cxCheckBox15Click(Sender: TObject);
begin
  if cxCheckBox15.Checked then
  begin
    cxTimeEdit3.Enabled := True;
    cxTimeEdit4.Enabled := True;
  end
  else
  begin
		cxTimeEdit3.Enabled := False;
		cxTimeEdit4.Enabled := False;
		cxTimeEdit3.time := StrToDateTime('00:00');
		cxTimeEdit4.time := StrToDateTime('00:00');
	end;
end;

procedure TFrm_SMS07.cxCheckBox16Click(Sender: TObject);
begin
  if cxCheckBox16.Checked then
  begin
    cxTimeEdit5.Enabled := True;
    cxTimeEdit6.Enabled := True;
  end
  else
  begin
    cxTimeEdit5.Enabled := False;
    cxTimeEdit6.Enabled := False;
		cxTimeEdit5.time := StrToDateTime('00:00');
		cxTimeEdit6.time := StrToDateTime('00:00');
	end;
end;

procedure TFrm_SMS07.cxCheckBox17Click(Sender: TObject);
begin
  if cxCheckBox17.Checked then
  begin
    cxTimeEdit7.Enabled := True;
    cxTimeEdit8.Enabled := True;
  end
  else
  begin
    cxTimeEdit7.Enabled := False;
    cxTimeEdit8.Enabled := False;
		cxTimeEdit7.time := StrToDateTime('00:00');
		cxTimeEdit8.time := StrToDateTime('00:00');
	end;
end;

procedure TFrm_SMS07.cxCheckBox18Click(Sender: TObject);
begin
  if cxCheckBox18.Checked then
  begin
    cxTimeEdit9.Enabled := True;
    cxTimeEdit10.Enabled := True;
  end
  else
  begin
    cxTimeEdit9.Enabled := False;
    cxTimeEdit10.Enabled := False;
		cxTimeEdit9.time := StrToDateTime('00:00');
		cxTimeEdit10.time := StrToDateTime('00:00');
	end;
end;

procedure TFrm_SMS07.cxTimeEdit2Exit(Sender: TObject);
var inTime, sTime, eTime : TTime;
	sTmp : string;
begin
	sTmp := '설정1';
	inTime := cxTimeEdit2.Time;
	if inTime = StrToDateTime('00:00') then exit;
	
	if inTime = cxTimeEdit1.Time then
	begin
		cxTimeEdit1.SetFocus;
		GMessagebox('설정1의 시작시간과 종료시간이 동일합니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
		exit;
	end;  
	if cxCheckBox15.Checked then
	begin
		sTime := cxTimeEdit3.Time;
		eTime := cxTimeEdit4.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit1.SetFocus;
				GMessagebox(sTmp + '과 설정2의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit1.SetFocus;
				GMessagebox(sTmp + '과 설정2의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;
	if cxCheckBox16.Checked then
	begin
		sTime := cxTimeEdit5.Time;
		eTime := cxTimeEdit6.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit1.SetFocus;
				GMessagebox(sTmp + '과 설정3의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit1.SetFocus;
				GMessagebox(sTmp + '과 설정3의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;
	if cxCheckBox17.Checked then
	begin
		sTime := cxTimeEdit7.Time;
		eTime := cxTimeEdit8.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit1.SetFocus;
				GMessagebox(sTmp + '과 설정4의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit1.SetFocus;
				GMessagebox(sTmp + '과 설정4의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;
	if cxCheckBox18.Checked then
	begin
		sTime := cxTimeEdit9.Time;
		eTime := cxTimeEdit10.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit1.SetFocus;
				GMessagebox(sTmp + '과 설정5의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit1.SetFocus;
				GMessagebox(sTmp + '과 설정5의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;  
end;

procedure TFrm_SMS07.cxTimeEdit3Exit(Sender: TObject);
var inTime, sTime, eTime : TTime;
	sTmp : string;
begin
	sTmp := '설정2';
	inTime := cxTimeEdit3.Time;
	if inTime = StrToDateTime('00:00') then exit;
	if inTime = cxTimeEdit4.Time then
	begin
		cxTimeEdit4.SetFocus;
		GMessagebox('설정2의 시작시간과 종료시간이 동일합니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
		exit;
	end;
	if cxCheckBox14.Checked then
	begin
		sTime := cxTimeEdit1.Time;
		eTime := cxTimeEdit2.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit4.SetFocus;
				GMessagebox(sTmp + '과 설정1의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit4.SetFocus;
				GMessagebox(sTmp + '과 설정1의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;
	if cxCheckBox16.Checked then
	begin
		sTime := cxTimeEdit5.Time;
		eTime := cxTimeEdit6.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit4.SetFocus;
				GMessagebox(sTmp + '과 설정3의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit4.SetFocus;
				GMessagebox(sTmp + '과 설정3의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;
	if cxCheckBox17.Checked then
	begin
		sTime := cxTimeEdit7.Time;
		eTime := cxTimeEdit8.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit4.SetFocus;
				GMessagebox(sTmp + '과 설정4의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit4.SetFocus;
				GMessagebox(sTmp + '과 설정4의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;
	if cxCheckBox18.Checked then
	begin
		sTime := cxTimeEdit9.Time;
		eTime := cxTimeEdit10.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit4.SetFocus;
				GMessagebox(sTmp + '과 설정5의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit4.SetFocus;
				GMessagebox(sTmp + '과 설정5의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
      end;
    end;
	end; 
end;

procedure TFrm_SMS07.cxTimeEdit4Exit(Sender: TObject);
var inTime, sTime, eTime : TTime;
	sTmp : string;
begin
	sTmp := '설정2';
	inTime := cxTimeEdit4.Time;
	if inTime = StrToDateTime('00:00') then exit;
	if inTime = cxTimeEdit3.Time then
	begin
		cxTimeEdit3.SetFocus;
		GMessagebox('설정2의 시작시간과 종료시간이 동일합니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
		exit;
	end;
	if cxCheckBox14.Checked then
	begin
		sTime := cxTimeEdit1.Time;
		eTime := cxTimeEdit2.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit3.SetFocus;
				GMessagebox(sTmp + '과 설정1의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit3.SetFocus;
				GMessagebox(sTmp + '과 설정1의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;
	if cxCheckBox16.Checked then
	begin
		sTime := cxTimeEdit5.Time;
		eTime := cxTimeEdit6.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit3.SetFocus;
				GMessagebox(sTmp + '과 설정3의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit3.SetFocus;
				GMessagebox(sTmp + '과 설정3의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;
	if cxCheckBox17.Checked then
	begin
		sTime := cxTimeEdit7.Time;
		eTime := cxTimeEdit8.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit3.SetFocus;
				GMessagebox(sTmp + '과 설정4의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit3.SetFocus;
				GMessagebox(sTmp + '과 설정4의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;
	if cxCheckBox18.Checked then
	begin
		sTime := cxTimeEdit9.Time;
		eTime := cxTimeEdit10.Time;
		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit3.SetFocus;
				GMessagebox(sTmp + '과 설정5의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit3.SetFocus;
				GMessagebox(sTmp + '과 설정5의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
    end;
	end;
end;

procedure TFrm_SMS07.cxTimeEdit6Exit(Sender: TObject);
var inTime, sTime, eTime : TTime;
	sTmp : string;
begin
	sTmp := '설정3';
	inTime := cxTimeEdit6.Time;
	if inTime = StrToDateTime('00:00') then exit;
	if inTime = cxTimeEdit5.Time then
	begin
		cxTimeEdit5.SetFocus;
		GMessagebox('설정3의 시작시간과 종료시간이 동일합니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
		exit;
	end;
	if cxCheckBox14.Checked then
	begin
		sTime := cxTimeEdit1.Time;
		eTime := cxTimeEdit2.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit5.SetFocus;
				GMessagebox(sTmp + '과 설정1의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit5.SetFocus;
				GMessagebox(sTmp + '과 설정1의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;
	if cxCheckBox15.Checked then
	begin
		sTime := cxTimeEdit3.Time;
		eTime := cxTimeEdit4.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit5.SetFocus;
				GMessagebox(sTmp + '과 설정2의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit5.SetFocus;
				GMessagebox(sTmp + '과 설정2의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;
	if cxCheckBox17.Checked then
	begin
		sTime := cxTimeEdit7.Time;
		eTime := cxTimeEdit8.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit5.SetFocus;
				GMessagebox(sTmp + '과 설정4의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit5.SetFocus;
				GMessagebox(sTmp + '과 설정4의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;
	if cxCheckBox18.Checked then
	begin
		sTime := cxTimeEdit9.Time;
		eTime := cxTimeEdit10.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit5.SetFocus;
				GMessagebox(sTmp + '과 설정5의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit5.SetFocus;
				GMessagebox(sTmp + '과 설정5의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
      end;
    end;
	end;   
end;

procedure TFrm_SMS07.cxTimeEdit5Exit(Sender: TObject);
var inTime, sTime, eTime : TTime;
	sTmp : string;
begin
	sTmp := '설정3';
	inTime := cxTimeEdit5.Time;
	if inTime = StrToDateTime('00:00') then exit;
	if inTime = cxTimeEdit6.Time then
  begin
		cxTimeEdit6.SetFocus;
		GMessagebox('설정3의 시작시간과 종료시간이 동일합니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
		exit;
	end;
	if cxCheckBox14.Checked then
	begin
		sTime := cxTimeEdit1.Time;
		eTime := cxTimeEdit2.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit6.SetFocus;
				GMessagebox(sTmp + '과 설정1의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit6.SetFocus;
				GMessagebox(sTmp + '과 설정1의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;
	if cxCheckBox15.Checked then
	begin
		sTime := cxTimeEdit3.Time;
		eTime := cxTimeEdit4.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit6.SetFocus;
				GMessagebox(sTmp + '과 설정2의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit6.SetFocus;
				GMessagebox(sTmp + '과 설정2의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
      end;
    end;
  end;
  if cxCheckBox17.Checked then
  begin
    sTime := cxTimeEdit7.Time;
    eTime := cxTimeEdit8.Time;

    if sTime < eTime then
    begin
      if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit6.SetFocus;
				GMessagebox(sTmp + '과 설정3의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit6.SetFocus;
				GMessagebox(sTmp + '과 설정4의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;
	if cxCheckBox18.Checked then
	begin
		sTime := cxTimeEdit9.Time;
		eTime := cxTimeEdit10.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit6.SetFocus;
				GMessagebox(sTmp + '과 설정5의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit6.SetFocus;
				GMessagebox(sTmp + '과 설정5의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
      end;
    end;
	end; 
end;

procedure TFrm_SMS07.cxTimeEdit7Exit(Sender: TObject);
var inTime, sTime, eTime : TTime;
	sTmp : string;
begin
	sTmp := '설정4';
	inTime := cxTimeEdit7.Time;
	if inTime = StrToDateTime('00:00') then exit;
	if inTime = cxTimeEdit8.Time then
  begin
		cxTimeEdit8.SetFocus;
		GMessagebox('설정4의 시작시간과 종료시간이 동일합니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
		exit;
	end;
  if cxCheckBox14.Checked then
  begin
    sTime := cxTimeEdit1.Time;
    eTime := cxTimeEdit2.Time;

    if sTime < eTime then
    begin
      if (sTime <= inTime) and (eTime >= inTime) then
      begin
				cxTimeEdit8.SetFocus;
				GMessagebox(sTmp + '과 설정1의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit8.SetFocus;
				GMessagebox(sTmp + '과 설정1의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;
	if cxCheckBox15.Checked then
	begin
		sTime := cxTimeEdit3.Time;
		eTime := cxTimeEdit4.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit8.SetFocus;
				GMessagebox(sTmp + '과 설정2의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit8.SetFocus;
				GMessagebox(sTmp + '과 설정2의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;
	if cxCheckBox16.Checked then
	begin
		sTime := cxTimeEdit5.Time;
		eTime := cxTimeEdit6.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit8.SetFocus;
				GMessagebox(sTmp + '과 설정3의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit8.SetFocus;
				GMessagebox(sTmp + '과 설정3의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
      end;
    end;
  end;
  if cxCheckBox18.Checked then
  begin
    sTime := cxTimeEdit9.Time;
    eTime := cxTimeEdit10.Time;

    if sTime < eTime then
    begin
      if (sTime <= inTime) and (eTime >= inTime) then
      begin
				cxTimeEdit8.SetFocus;
				GMessagebox(sTmp + '과 설정5의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit8.SetFocus;
				GMessagebox(sTmp + '과 설정5의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
      end;
    end;
	end;  
end;

procedure TFrm_SMS07.cxTimeEdit8Exit(Sender: TObject);
var inTime, sTime, eTime : TTime;
	sTmp : string;
begin
	sTmp := '설정4';
	inTime := cxTimeEdit8.Time;
	if inTime = StrToDateTime('00:00') then exit;
	if inTime = cxTimeEdit7.Time then
  begin
		cxTimeEdit7.SetFocus;
		GMessagebox('설정4의 시작시간과 종료시간이 동일합니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
		exit;
	end;
	if cxCheckBox14.Checked then
	begin
		sTime := cxTimeEdit1.Time;
		eTime := cxTimeEdit2.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit7.SetFocus;
				GMessagebox(sTmp + '과 설정1의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit7.SetFocus;
				GMessagebox(sTmp + '과 설정1의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;
	if cxCheckBox15.Checked then
	begin
		sTime := cxTimeEdit3.Time;
		eTime := cxTimeEdit4.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit7.SetFocus;
				GMessagebox(sTmp + '과 설정2의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit7.SetFocus;
				GMessagebox(sTmp + '과 설정2의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
      end;
    end;
  end;
  if cxCheckBox16.Checked then
  begin
    sTime := cxTimeEdit5.Time;
    eTime := cxTimeEdit6.Time;

    if sTime < eTime then
    begin
      if (sTime <= inTime) and (eTime >= inTime) then
      begin
				cxTimeEdit7.SetFocus;
				GMessagebox(sTmp + '과 설정3의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit7.SetFocus;
				GMessagebox(sTmp + '과 설정3의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;
	if cxCheckBox18.Checked then
	begin
		sTime := cxTimeEdit9.Time;
		eTime := cxTimeEdit10.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit7.SetFocus;
				GMessagebox(sTmp + '과 설정5의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit7.SetFocus;
				GMessagebox(sTmp + '과 설정5의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
        exit;
			end;
		end;
	end;   
end;

procedure TFrm_SMS07.cxTimeEdit9Exit(Sender: TObject);
var inTime, sTime, eTime : TTime;
	sTmp : string;
begin
	sTmp := '설정5';
	inTime := cxTimeEdit9.Time;
	if inTime = StrToDateTime('00:00') then exit;
	if inTime = cxTimeEdit10.Time then
	begin
		cxTimeEdit10.SetFocus;
		GMessagebox('설정5의 시작시간과 종료시간이 동일합니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
		exit;
	end;
	if cxCheckBox14.Checked then
	begin
		sTime := cxTimeEdit1.Time;
		eTime := cxTimeEdit2.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit10.SetFocus;
				GMessagebox(sTmp + '과 설정1의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit10.SetFocus;
				GMessagebox(sTmp + '과 설정1의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;
	if cxCheckBox15.Checked then
	begin
		sTime := cxTimeEdit3.Time;
		eTime := cxTimeEdit4.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit10.SetFocus;
				GMessagebox(sTmp + '과 설정2의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit10.SetFocus;
				GMessagebox(sTmp + '과 설정2의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;
	if cxCheckBox16.Checked then
	begin
		sTime := cxTimeEdit5.Time;
		eTime := cxTimeEdit6.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit10.SetFocus;
				GMessagebox(sTmp + '과 설정3의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
      end;
    end
    else if sTime > eTime then
    begin
      if (sTime <= inTime) or (eTime >= inTime) then
      begin
				cxTimeEdit10.SetFocus;
				GMessagebox(sTmp + '과 설정3의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
      end;
    end;
  end;
  if cxCheckBox17.Checked then
  begin
    sTime := cxTimeEdit7.Time;
    eTime := cxTimeEdit8.Time;

    if sTime < eTime then
    begin
      if (sTime <= inTime) and (eTime >= inTime) then
      begin
				cxTimeEdit10.SetFocus;
				GMessagebox(sTmp + '과 설정4의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
      end;
    end
    else if sTime > eTime then
    begin
      if (sTime <= inTime) or (eTime >= inTime) then
      begin
				cxTimeEdit10.SetFocus;
				GMessagebox(sTmp + '과 설정4의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
      end;
    end;
	end;  
end;

procedure TFrm_SMS07.cxTimeEdit10Exit(Sender: TObject);
var inTime, sTime, eTime : TTime;
	sTmp : string;
begin
	sTmp := '설정5';
	inTime := cxTimeEdit10.Time;
	if inTime = StrToDateTime('00:00') then exit;
	if inTime = cxTimeEdit9.Time then
	begin
		cxTimeEdit9.SetFocus;
		GMessagebox('설정5의 시작시간과 종료시간이 동일합니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
		exit;
	end;
	if cxCheckBox14.Checked then
	begin
		sTime := cxTimeEdit1.Time;
		eTime := cxTimeEdit2.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit9.SetFocus;
				GMessagebox(sTmp + '과 설정1의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
			if (sTime <= inTime) or (eTime >= inTime) then
			begin
				cxTimeEdit9.SetFocus;
				GMessagebox(sTmp + '과 설정1의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;
	if cxCheckBox15.Checked then
	begin
		sTime := cxTimeEdit3.Time;
		eTime := cxTimeEdit4.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit9.SetFocus;
				GMessagebox(sTmp + '과 설정2의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
    end
    else if sTime > eTime then
    begin
      if (sTime <= inTime) or (eTime >= inTime) then
      begin
				cxTimeEdit9.SetFocus;
				GMessagebox(sTmp + '과 설정2의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end;
	end;
	if cxCheckBox16.Checked then
	begin
		sTime := cxTimeEdit5.Time;
		eTime := cxTimeEdit6.Time;

		if sTime < eTime then
		begin
			if (sTime <= inTime) and (eTime >= inTime) then
			begin
				cxTimeEdit9.SetFocus;
				GMessagebox(sTmp + '과 설정3의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
			end;
		end
		else if sTime > eTime then
		begin
      if (sTime <= inTime) or (eTime >= inTime) then
      begin
				cxTimeEdit9.SetFocus;
				GMessagebox(sTmp + '과 설정3의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
      end;
    end;
  end;
  if cxCheckBox17.Checked then
  begin
    sTime := cxTimeEdit7.Time;
    eTime := cxTimeEdit8.Time;

    if sTime < eTime then
    begin
      if (sTime <= inTime) and (eTime >= inTime) then
      begin
				cxTimeEdit9.SetFocus;
				GMessagebox(sTmp + '과 설정4의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
      end;
    end
		else if sTime > eTime then
    begin
      if (sTime <= inTime) or (eTime >= inTime) then
      begin
				cxTimeEdit9.SetFocus;
				GMessagebox(sTmp + '과 설정4의 시간이 중복됩니다.' + #13#10 + '시간을 변경하여 주십시오.', CDMSE);
				exit;
      end;
    end;
	end;   
end;

procedure TFrm_SMS07.mm_messageKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var sMsg, sTmp : string;
begin
	if ( ssCtrl in Shift) and ( Key = Ord('V') ) then
	begin
		sTmp := ClipBoard.AsText;
		if GetSmsMemoLength(AnsiString(sTmp)) > 90 then
		begin
			sMsg := GetStrPharseByte(sTmp, 89);
			ClipBoard.AsText := sMsg;
//			mm_message.Text := sMsg;
		end;
	end;
end;

procedure TFrm_SMS07.mm_messageKeyPress(Sender: TObject; var Key: Char);
var
  Len: Integer;
begin
  if Ord(Key) = VK_BACK then
    Exit;
  Len := GetSmsMemoLength(AnsiString(mm_message.Text));
	cxLabel16.Caption := IntToStr(Len);
	if Key = #3 then
		Exit;

	if Len >= 90 then   //80->90Byte로 변경 2011.11.25 KHS
	begin
		Key := #0;
		Exit;
	end;
end;

procedure TFrm_SMS07.mm_messageKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Len: Integer;
begin
	TcxMemo(sender).Text := Enc_Control(TcxMemo(sender).Text);	
  Len := GetSmsMemoLength(AnsiString(mm_message.Text));
  cxLabel16.Caption := IntToStr(Len);
end;

procedure TFrm_SMS07.mm_messagePropertiesChange(Sender: TObject);
begin
  cxLabel16.Caption := IntToStr(Length(AnsiString(mm_message.Text)));
end;

procedure TFrm_SMS07.cxCheckBox24Click(Sender: TObject);
var i : integer;
begin
  if TcxCheckBox(Sender).Checked then
  begin
    for i := 0 to cxSgBrOrder.DataController.RowCount -1 do
    begin
      cxSgBrOrder.DataController.Values[i, 0] := True;
    end;
    cxCheckBox1.Checked := False;
  end
  else
  begin
    for i := 0 to cxSgBrOrder.DataController.RowCount -1 do
    begin
      cxSgBrOrder.DataController.Values[i, 0] := False;
    end;
  end;
end;

procedure TFrm_SMS07.cxONOFF_CHKClick(Sender: TObject);
var HDSection : string;
begin
  if TcxCheckBox(Sender).Checked then
  begin
    cxONOFF_CHK.Caption := '실시간발송 ON';
    GS_ONOFF_CHK := True;
    frm_Main.trmAUTOSMS.enabled := False;
    frm_Main.trmAUTOSMS.enabled := True;
  end
  else
  begin
    cxONOFF_CHK.Caption := '실시간발송 OFF';
    GS_ONOFF_CHK := False;
    frm_Main.trmAUTOSMS.enabled := False;
    frm_Main.trmAUTOSMSSEND.enabled := False;
  end;
  HDSection := GT_SEL_BRNO.HdNo;
  GS_EnvFile.WriteBool(HDSection, 'ONOFF_CHK', GS_ONOFF_CHK);
end;

end.

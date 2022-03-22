unit xe_SMS01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, xe_GNL,
  Dialogs, MSXML2_TLB, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxControls, cxContainer, cxEdit, cxPCdxBarPopupMenu, cxGroupBox, cxPC, IdTCPClient,
  IDGlobal,  Vcl.StdCtrls, cxMemo, cxTextEdit, cxCheckBox, Vcl.Samples.Spin, Vcl.ComCtrls,
  Vcl.ExtCtrls, cxLabel, cxButtons, IniFiles, dxCore, cxDateUtils, cxSpinEdit,
  cxTimeEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.Imaging.jpeg, dxBarBuiltInMenu,
  dxSkinsCore, dxSkinscxPCPainter, cxListBox, cxRadioGroup, Clipbrd,
  dxGDIPlusClasses, cxScrollBox, AdvUtil, Vcl.Grids,
  AdvObj, BaseGrid, AdvGrid, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxButtonEdit, cxCurrencyEdit, cxGridBandedTableView,
  dxDateRanges, cxCustomListBox, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  TFrm_SMS01 = class(TForm)
    pnlMain: TPanel;
    pnlLeft: TPanel;
    Image1: TImage;
    ed_sender_Hidden: TEdit;
    btnSend: TcxButton;
    rbchk_re: TcxCheckBox;
    cxLabel14: TcxLabel;
    cxLabel2: TcxLabel;
    mm_message: TcxMemo;
    lbSrtLen: TcxLabel;
    lbMaxLen: TcxLabel;
    cxButton9: TcxButton;
		cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    cxLabel35: TcxLabel;
    cxLabel36: TcxLabel;
    cxLabel37: TcxLabel;
    cxLabel38: TcxLabel;
    cxLabel39: TcxLabel;
    cxLabel40: TcxLabel;
    cxLabel41: TcxLabel;
    cxLabel42: TcxLabel;
    cxLabel43: TcxLabel;
    cxLabel44: TcxLabel;
    cxLabel45: TcxLabel;
    cxLabel46: TcxLabel;
    cxLabel47: TcxLabel;
    cxLabel48: TcxLabel;
    cxLabel49: TcxLabel;
    cxLabel50: TcxLabel;
    cxLabel51: TcxLabel;
    cxLabel52: TcxLabel;
    cxLabel53: TcxLabel;
    cxLabel54: TcxLabel;
    cxLabel55: TcxLabel;
    cxLabel56: TcxLabel;
    cxLabel57: TcxLabel;
    cxLabel58: TcxLabel;
    cxLabel59: TcxLabel;
    cxLabel60: TcxLabel;
    cxLabel61: TcxLabel;
    cxLabel62: TcxLabel;
    cxLabel63: TcxLabel;
    cxLabel64: TcxLabel;
    cxTabSheet2: TcxTabSheet;
    cxLabel22: TcxLabel;
    cxLabel65: TcxLabel;
    cxLabel66: TcxLabel;
    cxLabel67: TcxLabel;
    cxLabel68: TcxLabel;
    cxLabel69: TcxLabel;
    cxLabel70: TcxLabel;
    cxLabel71: TcxLabel;
    cxLabel72: TcxLabel;
    cxLabel73: TcxLabel;
    cxLabel74: TcxLabel;
    cxLabel75: TcxLabel;
    cxLabel76: TcxLabel;
    cxLabel77: TcxLabel;
    cxLabel78: TcxLabel;
    cxLabel79: TcxLabel;
    cxLabel80: TcxLabel;
    cxLabel81: TcxLabel;
    cxLabel82: TcxLabel;
    cxLabel83: TcxLabel;
    cxLabel84: TcxLabel;
    cxLabel85: TcxLabel;
    cxLabel86: TcxLabel;
    cxLabel87: TcxLabel;
    cxLabel88: TcxLabel;
    cxLabel89: TcxLabel;
    cxLabel90: TcxLabel;
    cxLabel91: TcxLabel;
    cxLabel92: TcxLabel;
    cxLabel93: TcxLabel;
    cxLabel94: TcxLabel;
    cxLabel95: TcxLabel;
    ls_sms: TListBox;
    ed_receiver: TcxMemo;
    lblBranchSMSName: TcxLabel;
    lblBranchSMSCash: TcxLabel;
    lblBranchSMSAccount: TcxLabel;
		edtBranchSMSName: TcxTextEdit;
    edtBranchSMSCash: TcxTextEdit;
    edtBranchSMSAccount: TcxTextEdit;
    pnlTitle: TPanel;
    BtnClose: TcxButton;
		pnl_Char: TcxGroupBox;
    GBSmsCashInfo: TcxGroupBox;
    cxButton12: TcxButton;
    grpSMS: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    dt_date: TcxDateEdit;
    Panel3: TPanel;
    cxLblActive: TLabel;
    sp_time1: TcxSpinEdit;
    sp_time2: TcxSpinEdit;
    ed_receiverD: TcxTextEdit;
    cbKeynumber01: TcxComboBox;
    ed_send: TcxTextEdit;
    cxGBSch: TcxGroupBox;
    cxBtnSch: TcxButton;
    cxEdtSch: TcxTextEdit;
    cxLBSch: TcxListBox;
    cxBtnSchExit: TcxButton;
    rdo_SMS: TcxRadioButton;
    rdo_Push: TcxRadioButton;
    cxLabel1: TcxLabel;
    Shape1: TShape;
    edtPushTitle: TcxTextEdit;
    cxLabel11: TcxLabel;
    Shape2: TShape;
    edtPushMemo: TcxMemo;
    cxGroupBox4: TcxGroupBox;
    cxLabel12: TcxLabel;
    edtReciveWKList: TcxMemo;
    cxButton13: TcxButton;
    lbPushCnt: TcxLabel;
    GBPushCashInfo: TcxGroupBox;
    edtBranchPushAccount: TcxTextEdit;
    edtBranchPushCash: TcxTextEdit;
    edtBranchPushName: TcxTextEdit;
    lblBranchPushAccount: TcxLabel;
    lblBranchPushCash: TcxLabel;
    lblBranchPushName: TcxLabel;
    pnlRigth: TPanel;
    cxGroupBox5: TcxGroupBox;
    rbSms1: TcxRadioButton;
    rbSms2: TcxRadioButton;
    grpPush: TcxGroupBox;
    pnlPreview: TPanel;
    grpPreview: TcxGroupBox;
    cxScrollBox1: TcxScrollBox;
    lblPv1: TcxLabel;
    mPv1: TcxMemo;
    lblPv2: TcxLabel;
    mPv2: TcxMemo;
    lblPv3: TcxLabel;
    mPv3: TcxMemo;
    lblPv4: TcxLabel;
    mPv4: TcxMemo;
    lblPv5: TcxLabel;
    mPv5: TcxMemo;
    btnPvSend: TcxButton;
    btnPvExit: TcxButton;
    lblSndCnt: TcxLabel;
    pcSendView: TcxPageControl;
		tsSave: TcxTabSheet;
    tsSend: TcxTabSheet;
    chkAutoSave: TcxCheckBox;
    tsClose: TcxTabSheet;
    cxGridA2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
		cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxViewSendSms: TcxGridBandedTableView;
    cxViewSendSmsColumn1: TcxGridBandedColumn;
    cxViewSendSmsColumn2: TcxGridBandedColumn;
    cxViewSendSmsColumn3: TcxGridBandedColumn;
    cxViewSendSmsColumn4: TcxGridBandedColumn;
    cxGridLevel1: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    btnMsgDel: TcxButton;
    cxLabel13: TcxLabel;
    edtMsgSch: TcxTextEdit;
    btnMsgSch: TcxButton;
    Shape3: TShape;
    lblPv6: TcxLabel;
    mPv6: TcxMemo;
    lb_Cnt: TcxLabel;
    Label8: TcxLabel;
    lbl1: TcxLabel;
    grpOpt: TcxGroupBox;
    btnMSel2: TcxButton;
    btnMSel3: TcxButton;
    btnMSel4: TcxButton;
    btnMSel5: TcxButton;
    btnMSel6: TcxButton;
    btnMSel7: TcxButton;
    btnMSel8: TcxButton;
    btnMSel9: TcxButton;
    cxLabel10: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel96: TcxLabel;
    Memo1: TcxMemo;
    Memo8: TcxMemo;
    Memo9: TcxMemo;
    Memo2: TcxMemo;
    Memo3: TcxMemo;
    Memo4: TcxMemo;
    Memo5: TcxMemo;
    Memo6: TcxMemo;
    Memo7: TcxMemo;
    btnMSel1: TcxButton;
    btnMSave: TcxButton;
    lb_Cnt2: TcxLabel;
    lb_Cnt1: TcxLabel;
    lb_Cnt3: TcxLabel;
    lb_Cnt4: TcxLabel;
    lb_Cnt5: TcxLabel;
    lb_Cnt6: TcxLabel;
    lb_Cnt7: TcxLabel;
    lb_Cnt8: TcxLabel;
    lb_Cnt9: TcxLabel;
    lbSrtLen1: TcxLabel;
    lbMaxLen1: TcxLabel;
    lbSrtLen2: TcxLabel;
    lbMaxLen2: TcxLabel;
    lbSrtLen3: TcxLabel;
    lbMaxLen3: TcxLabel;
    lbSrtLen4: TcxLabel;
    lbMaxLen4: TcxLabel;
    lbSrtLen5: TcxLabel;
    lbMaxLen5: TcxLabel;
    lbSrtLen6: TcxLabel;
    lbMaxLen6: TcxLabel;
    lbSrtLen7: TcxLabel;
    lbMaxLen7: TcxLabel;
    lbSrtLen8: TcxLabel;
    lbMaxLen8: TcxLabel;
    lbSrtLen9: TcxLabel;
    lbMaxLen9: TcxLabel;
    cxGroupBox6: TcxGroupBox;
    btnMSel22: TcxButton;
    btnMSel23: TcxButton;
    btnMSel24: TcxButton;
    btnMSel25: TcxButton;
    btnMSel26: TcxButton;
    btnMSel27: TcxButton;
    btnMSel28: TcxButton;
    btnMSel29: TcxButton;
    cxLabel132: TcxLabel;
    cxLabel133: TcxLabel;
    cxLabel134: TcxLabel;
    cxLabel135: TcxLabel;
    cxLabel136: TcxLabel;
    cxLabel137: TcxLabel;
    cxLabel138: TcxLabel;
    cxLabel139: TcxLabel;
    cxLabel140: TcxLabel;
    cxLabel141: TcxLabel;
    cxLabel142: TcxLabel;
    cxLabel143: TcxLabel;
    Memo21: TcxMemo;
    Memo28: TcxMemo;
    Memo29: TcxMemo;
    Memo22: TcxMemo;
    Memo23: TcxMemo;
    Memo24: TcxMemo;
    Memo25: TcxMemo;
    Memo26: TcxMemo;
    Memo27: TcxMemo;
    btnMSel21: TcxButton;
    btnMSave_WK: TcxButton;
    lb_Cnt22: TcxLabel;
    lb_Cnt21: TcxLabel;
    lb_Cnt23: TcxLabel;
    lb_Cnt24: TcxLabel;
    lb_Cnt25: TcxLabel;
    lb_Cnt26: TcxLabel;
    lb_Cnt27: TcxLabel;
    lb_Cnt28: TcxLabel;
    lb_Cnt29: TcxLabel;
    lbSrtLen21: TcxLabel;
    lbMaxLen21: TcxLabel;
    lbSrtLen22: TcxLabel;
    lbMaxLen22: TcxLabel;
    lbSrtLen23: TcxLabel;
    lbMaxLen23: TcxLabel;
    lbSrtLen24: TcxLabel;
    lbMaxLen24: TcxLabel;
    lbSrtLen25: TcxLabel;
    lbMaxLen25: TcxLabel;
    lbSrtLen26: TcxLabel;
    lbMaxLen26: TcxLabel;
    lbSrtLen27: TcxLabel;
    lbMaxLen27: TcxLabel;
    lbSrtLen28: TcxLabel;
    lbMaxLen28: TcxLabel;
    lbSrtLen29: TcxLabel;
    lbMaxLen29: TcxLabel;
    PageControl1: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxGroupBox2: TcxGroupBox;
    btnMSel12: TcxButton;
    btnMSel13: TcxButton;
    btnMSel14: TcxButton;
    btnMSel15: TcxButton;
    btnMSel16: TcxButton;
    btnMSel17: TcxButton;
    btnMSel18: TcxButton;
    btnMSel19: TcxButton;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel97: TcxLabel;
    cxLabel98: TcxLabel;
    cxLabel99: TcxLabel;
    cxLabel100: TcxLabel;
    cxLabel101: TcxLabel;
    cxLabel102: TcxLabel;
    cxLabel103: TcxLabel;
    cxLabel104: TcxLabel;
    Memo11: TcxMemo;
    Memo18: TcxMemo;
    Memo19: TcxMemo;
    Memo12: TcxMemo;
    Memo13: TcxMemo;
    Memo14: TcxMemo;
    Memo15: TcxMemo;
    Memo16: TcxMemo;
    Memo17: TcxMemo;
    btnMSel11: TcxButton;
    btnMSave_CUST: TcxButton;
    lb_Cnt12: TcxLabel;
    lb_Cnt11: TcxLabel;
    lb_Cnt13: TcxLabel;
    lb_Cnt14: TcxLabel;
    lb_Cnt15: TcxLabel;
    lb_Cnt16: TcxLabel;
    lb_Cnt17: TcxLabel;
    lb_Cnt18: TcxLabel;
    lb_Cnt19: TcxLabel;
    lbSrtLen11: TcxLabel;
    lbMaxLen11: TcxLabel;
    lbSrtLen12: TcxLabel;
    lbMaxLen12: TcxLabel;
    lbSrtLen13: TcxLabel;
    lbMaxLen13: TcxLabel;
    lbSrtLen14: TcxLabel;
    lbMaxLen14: TcxLabel;
    lbSrtLen15: TcxLabel;
    lbMaxLen15: TcxLabel;
    lbSrtLen16: TcxLabel;
    lbMaxLen16: TcxLabel;
    lbSrtLen17: TcxLabel;
    lbMaxLen17: TcxLabel;
    lbSrtLen18: TcxLabel;
    lbMaxLen18: TcxLabel;
    lbSrtLen19: TcxLabel;
    lbMaxLen19: TcxLabel;
		procedure btnSendClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mm_messageChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnMSel1Click(Sender: TObject);
    procedure rbchk_reClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mm_messageKeyPress(Sender: TObject; var Key: Char);
    procedure ed_receiver_bakKeyPress(Sender: TObject; var Key: Char);
    procedure cbKeynumber01KeyPress(Sender: TObject; var Key: Char);
    procedure cxLabel20MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure mm_messageKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton9Click(Sender: TObject);
    procedure cxLabel23Click(Sender: TObject);
    procedure Memo1Exit(Sender: TObject);
		procedure btnMSaveClick(Sender: TObject);
		procedure ed_receiverKeyPress(Sender: TObject; var Key: Char);
    procedure mm_messageKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnl_CharMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure mm_messageMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxBtnSchClick(Sender: TObject);
    procedure cxBtnSchExitClick(Sender: TObject);
    procedure cxEdtSchKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxEdtSchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxLBSchDblClick(Sender: TObject);
    procedure cxLBSchKeyPress(Sender: TObject; var Key: Char);
		procedure rdo_SMSClick(Sender: TObject);
		procedure cxButton13Click(Sender: TObject);
    procedure edtPushTitleKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtPushMemoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPushTitleKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rbSms1Click(Sender: TObject);
    procedure btnPvExitClick(Sender: TObject);
    procedure btnPvSendClick(Sender: TObject);
    procedure chkAutoSaveClick(Sender: TObject);
    procedure pcSendViewChange(Sender: TObject);
    procedure cxCol3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnMsgSchClick(Sender: TObject);
    procedure edtMsgSchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnMsgDelClick(Sender: TObject);
    procedure Memo1PropertiesChange(Sender: TObject);
  private
    { Private declarations }
    nType : Integer;    // 1.1건문자,  2.연속문자

    giMaxChar : Integer;
    giSendCnt : Integer;

    slSendMsg : TStringList;

    sReceive_num, sTime, sSend_num : string;

    procedure DisplayBranchSMSInfo;
    procedure proc_BrNameSet;
		function Func_KeyNumberList_Search: Boolean;
		function DisplayCashInfo:string;
    procedure pPvMemoHide;
    procedure pSnedMsgSave( sMsg : String );
    procedure pShowSendMsg( aValue : String );
	public
		{ Public declarations }
		sMemo, sConfSlip, sWkSabun : string;
		sSendKind : string; // SMS, '' : 문자 , PUSH : PUSH
    pSMS01Dock : TUNDOCKMNG;
    gslSlip, gslWkSabun, gslCustTel : TStringList;
		procedure Proc_Init;
		procedure proc_smsRead(ls_rxxml: WideString; bMsg : boolean = True);
		procedure proc_BranchChange;
		function RequestBranchSMSInfo(ABrNo: string; out ACash, AAccount: string): Boolean;
	end;

var
  Frm_SMS01: TFrm_SMS01;

Const
  sSendMsgFile = 'SMS_Send_Msg.txt';

implementation


{$R *.dfm}

uses xe_Msg, xe_Func, xe_xml, xe_Dm, xe_Query, xe_Lib, xe_packet;

procedure TFrm_SMS01.btnPvExitClick(Sender: TObject);
begin
  grpSMS.Enabled := True;
  grpOpt.Enabled := True;
  pPvMemoHide;
  pnlPreview.Visible := False;
  pnlPreview.Align := alNone;
end;

procedure TFrm_SMS01.btnPvSendClick(Sender: TObject);
Var ls_TxLoad, rv_str, Msg, ls_rxxml : String;
  ErrCode, j, i : Integer;
  StrList : TStringList;
  idx : Integer;
  ls_Msg_Err, sBrNm, Cash, Account : string;
begin
 	if Not func_EucKr_Check(mm_message, 1) then Exit;
  try
    try
      if gslCustTel.Count > 0 then
      begin
        StrList := TStringList.Create;
        try
          for i := 0 to gslCustTel.Count -1 do
          begin
            for j := 1 to giSendCnt do
            begin
              StrList.Clear;
              Msg := TcxMemo(FindComponent('mPv' + IntToStr(j))).Text;
              Msg := StringReplace(Msg, #13#10, #10, [rfReplaceAll]);

              ls_TxLoad := GTx_UnitXmlLoad('SMS02.XML');
              ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString'     , En_Coding(GT_USERIF.ID), [rfReplaceAll]);
              ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString'  , VERSIONINFO, [rfReplaceAll]);
              ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString'  , 'WSMS0001', [rfReplaceAll]);
              ls_TxLoad := StringReplace(ls_TxLoad, 'ReceiverString'   , En_Coding(gslCustTel[i]), [rfReplaceAll]);
              ls_TxLoad := StringReplace(ls_TxLoad, 'SenderString'     , En_Coding(sSend_num), [rfReplaceAll]);
              ls_TxLoad := StringReplace(ls_TxLoad, 'MessageString'    , En_Coding(Msg), [rfReplaceAll]);
              ls_TxLoad := StringReplace(ls_TxLoad, 'ReservationString', sTime, [rfReplaceAll]);
              ls_TxLoad := StringReplace(ls_TxLoad, 'MemoString'       , sMemo, [rfReplaceAll]);
              ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString'   , gslSlip[i], [rfReplaceAll]);
              ls_TxLoad := StringReplace(ls_TxLoad, 'WkSabunString'    , gslWkSabun[i], [rfReplaceAll]);

              if dm.SendSock(ls_TxLoad, StrList, ErrCode, False) then
              begin
                rv_str := StrList[0];
                if rv_str <> '' then
                begin
                  ls_rxxml := rv_str;
                  Application.ProcessMessages;
                  ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
                  if ('0000' = ls_Msg_Err) then
                  begin
                    GS_EnvFile.WriteString('COUNSEL', 'SMSLASTNO', ed_send.Text);

                    if i = gslCustTel.Count -1  then
                    begin
                      if j = giSendCnt then
                      begin
                        GMessagebox(IntToStr(gslCustTel.Count) + '건 전송' + CMC006, CDMSI);
                        Close;
                      end;
                    end;
                  end else
                  begin
                    if j = giSendCnt then
                    begin
                      idx := scb_BranchCode.IndexOf(GT_USERIF.BR);
                      if idx >= 0 then sBrNm := scb_BranchName.Strings[idx];

                      if not RequestBranchSMSInfo(GT_USERIF.BR, Cash, Account) then Exit;
                      if Trim(Account) = '' then Account := '0';

                      GMessagebox('문자 전송에' + CMC010 + CRLF +
                                           ' * ' + sBrNm + '[' + GT_USERIF.BR + ']  SMS캐쉬:' + Account + '원' + CRLF +
                                           ' * ' + ls_Msg_Err, CDMSE);
                    end;
                  end;
  
                  Sleep(100);
                end;
              end;
            end;
          end;
        finally
          StrList.Free;
          sMemo := '';
          sConfSlip := '';
          sWkSabun := '';
          ed_receiver.Visible := True;
          ed_receiverD.Visible := False;
        end;
          
      end else
      begin
        for j := 1 to giSendCnt do
        begin
          Msg := TcxMemo(FindComponent('mPv' + IntToStr(j))).Text;
          Msg := StringReplace(Msg, #13#10, #10, [rfReplaceAll]);

          ls_TxLoad := GTx_UnitXmlLoad('SMS02.XML');
          ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString'     , En_Coding(GT_USERIF.ID), [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString'  , VERSIONINFO, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString'  , 'WSMS0001', [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ReceiverString'   , En_Coding(sReceive_Num), [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'SenderString'     , En_Coding(sSend_num), [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'MessageString'    , En_Coding(Msg), [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ReservationString', sTime, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'MemoString'       , sMemo, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString'   , sConfSlip, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'WkSabunString'    , sWkSabun, [rfReplaceAll]);

          StrList := TStringList.Create;
          try
            if dm.SendSock(ls_TxLoad, StrList, ErrCode, False) then
            begin
              rv_str := StrList[0];
              if rv_str <> '' then
              begin
                ls_rxxml := rv_str;
                Application.ProcessMessages;
                if j = giSendCnt then proc_smsRead(ls_rxxml)
                                 else proc_smsRead(ls_rxxml, False);
              end;
            end;
          finally
            StrList.Free;
            sMemo := '';
            sConfSlip := '';
            sWkSabun := '';
            ed_receiver.Visible := True;
            ed_receiverD.Visible := False;
          end;
          Sleep(100);
        end;
      end;
    finally
      Cursor := crDefault;

      pSnedMsgSave(mm_message.Text);
      pPvMemoHide;
      grpSMS.Enabled := True;
      grpOpt.Enabled := True;
      pnlPreview.Visible := False;
      pnlPreview.Align := alNone;
    end;
  except on E: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_SMS01.btnSendClick(Sender: TObject);
var
	sTemp, Msg,	ls_TxLoad, rv_str, sResult, sMessage, sMsg : string;
	ls_rxxml: Widestring;
	StrList: TStringList;
	I, ErrCode, iTmp : integer;
  idx : Integer;
  ls_Msg_Err, sBrNm, Cash, Account : string;
begin
	try
		if Trim(mm_message.Text) = '' then
		begin
			GMessagebox('전송메세지를 입력하세요', CDMSE);
			Exit;
		end;

		if ( Trim(ed_receiver.Text) = '' ) And ( Trim(ed_receiverD.Text) = '' ) then
		begin
			GMessagebox('받는이를 입력하세요', CDMSE);
			Exit;
		end;

		if ( Trim(ed_send.Text) = '' ) then
		begin
			GMessagebox('보내는이를 입력하세요', CDMSE);
			Exit;
		end;

		sSend_num := fCallNumCheck8282(ed_send.Text);

		if not NumericCheck(STANDFUNCPATHFILE, '보내는이', sSend_num) then Exit;

		if ed_receiver.Visible then
		begin
			sReceive_num := RemovePhone(ed_receiver.Lines.CommaText);
			if ed_receiver.Lines.Count = 1 then
			begin
				if not NumericCheck(STANDFUNCPATHFILE, '받는이', sReceive_Num) then
					Exit;
			end else
			begin
				for I := 0 to ed_receiver.Lines.Count - 1 do
				begin
					sTemp := RemovePhone(ed_receiver.Lines[I]);
					if Length(sTemp) = 11 then
					begin
						if StrToIntDef(sTemp, -1) < 1010000000 then
						begin
							GMessagebox(Format('받는이 전화번호 형식이 올바르지 않습니다.' + #13#10 +
								                 '받는이를 정확히 입력해 주세요.[%s]', [ed_receiver.Lines[I]]), CDMSE);
							Exit;
						end;
					end else
					if Length(sTemp) = 10 then
					begin
						if StrToIntDef(sTemp, -1) < 111000000 then
						begin
							GMessagebox(Format('받는이 전화번호 형식이 올바르지 않습니다.' + #13#10 +
								                 '받는이를 정확히 입력해 주세요.[%s]', [ed_receiver.Lines[I]]), CDMSE);
							Exit;
						end;
					end else
					if Length(sTemp) = 0 then
					begin
						Continue;
					end else
					begin
						GMessagebox(Format('받는이 전화번호 형식이 올바르지 않습니다.' + #13#10 +
							                 '받는이를 정확히 입력해 주세요.[%s]', [ed_receiver.Lines[I]]), CDMSE);
						Exit;
					end;
				end;
			end;
		end else
		begin
			sReceive_num := ed_receiverD.Text;
			if not NumericCheck(STANDFUNCPATHFILE, '받는이', sReceive_Num) then
				 Exit;

			sTemp := RemovePhone(sReceive_num);
			if Length(sTemp) = 11 then
			begin
				if StrToIntDef(sTemp, -1) < 1010000000 then
				begin
					GMessagebox(Format('받는이 전화번호 형식이 올바르지 않습니다.' + #13#10 +
						                 '받는이를 정확히 입력해 주세요.[%s]', [sTemp]), CDMSE);
					Exit;
				end;
			end else
			if Length(sTemp) = 10 then
			begin
				if StrToIntDef(sTemp, -1) < 111000000 then
				begin
					GMessagebox(Format('받는이 전화번호 형식이 올바르지 않습니다.' + #13#10 +
						                 '받는이를 정확히 입력해 주세요.[%s]', [sTemp]), CDMSE);
					Exit;
				end;
			end else
			begin
				GMessagebox(Format('받는이 전화번호 형식이 올바르지 않습니다.' + #13#10 +
					                 '받는이를 정확히 입력해 주세요.[%s]', [sTemp]), CDMSE);
				Exit;
			end;
		end;

		sTime := '';
		if rbchk_re.Checked then
			sTime := formatdatetime('yyyymmdd', dt_date.Date) +
               LPad(IntToStr(sp_Time1.Value), '0', 2) +
               LPad(IntToStr(Sp_Time2.Value), '0', 2) + '00';

		Msg := StringReplace(mm_message.Text, #13#10, #10, [rfReplaceAll]);

		sResult := func_EucKr_CheckSMS(Msg);
		if sResult <> '' then
		begin
			GMessagebox(Format('         [%s] <<< 문자오류' + #13#10 + #13#10 + '이 문자는 올바른 표기가 아닙니다. '  + #13#10
				+ '정확히 입력하여 주십시오.', [sResult]), CDMSE);
			iTmp := Pos(sResult, Msg);
			mm_message.SelStart := iTmp-1;
			mm_message.SelLength := 1;
			mm_message.SetFocus;
			Exit;
		end;

    if nType = 1 then   // 1건문자
    begin
      StrList := TStringList.Create;
      try
        if gslCustTel.Count > 0 then
        begin
          for i := 0 to gslCustTel.Count -1 do
          begin
            StrList.Clear;                                    
            ls_TxLoad := GTx_UnitXmlLoad('SMS02.XML');
            ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString',     En_Coding(GT_USERIF.ID), [rfReplaceAll]);
            ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',  VERSIONINFO, [rfReplaceAll]);
            ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',  'WSMS0001', [rfReplaceAll]);
            ls_TxLoad := StringReplace(ls_TxLoad, 'ReceiverString',   En_Coding(gslCustTel[i]), [rfReplaceAll]);
            ls_TxLoad := StringReplace(ls_TxLoad, 'SenderString',     En_Coding(sSend_num), [rfReplaceAll]);
            ls_TxLoad := StringReplace(ls_TxLoad, 'MessageString',    En_Coding(Msg), [rfReplaceAll]);
            ls_TxLoad := StringReplace(ls_TxLoad, 'ReservationString', sTime, [rfReplaceAll]);
            ls_TxLoad := StringReplace(ls_TxLoad, 'MemoString', sMemo, [rfReplaceAll]);
            ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', gslSlip[i], [rfReplaceAll]);
            ls_TxLoad := StringReplace(ls_TxLoad, 'WkSabunString', gslWkSabun[i], [rfReplaceAll]);

            if dm.SendSock(ls_TxLoad, StrList, ErrCode, False) then
            begin
              rv_str := StrList[0];
              if rv_str <> '' then
              begin
                ls_rxxml := rv_str;
                Application.ProcessMessages;
                ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
                if ('0000' = ls_Msg_Err) then
                begin
                  GS_EnvFile.WriteString('COUNSEL', 'SMSLASTNO', ed_send.Text);

                  if i = gslCustTel.Count -1  then
                  begin
          					GMessagebox(IntToStr(gslCustTel.Count) + '건 전송' + CMC006, CDMSI);
                    Close;
                  end;
                end else
                begin
                  idx := scb_BranchCode.IndexOf(GT_USERIF.BR);
                  if idx >= 0 then sBrNm := scb_BranchName.Strings[idx];

                  if not RequestBranchSMSInfo(GT_USERIF.BR, Cash, Account) then Exit;
                  if Trim(Account) = '' then Account := '0';

                  GMessagebox('문자 전송에' + CMC010 + CRLF +
                                       ' * ' + sBrNm + '[' + GT_USERIF.BR + ']  SMS캐쉬:' + Account + '원' + CRLF +
                                       ' * ' + ls_Msg_Err, CDMSE);
                end;
              end;
            end;
          end;


        end else
        begin
          ls_TxLoad := GTx_UnitXmlLoad('SMS02.XML');
          ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString',     En_Coding(GT_USERIF.ID), [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',  VERSIONINFO, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',  'WSMS0001', [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ReceiverString',   En_Coding(sReceive_Num), [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'SenderString',     En_Coding(sSend_num), [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'MessageString',    En_Coding(Msg), [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ReservationString', sTime, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'MemoString', sMemo, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', sConfSlip, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'WkSabunString', sWkSabun, [rfReplaceAll]);

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
        end;
      finally
        StrList.Free;

        pSnedMsgSave(mm_message.Text);
        sMemo := '';
        sConfSlip := '';
        sWkSabun := '';
        ed_receiver.Visible := True;
        ed_receiverD.Visible := False;
      end;
    end else
    if nType = 2 then   // 연속문자
    begin
      grpSMS.Enabled := False;
			grpOpt.Enabled := False;

      sMessage := mm_message.Text;
      if GetSmsMemoLength(AnsiString(sMessage)) > 90 then          //80->90Byte로 변경 2011.11.25 KHS
      begin
        giSendCnt := 0;
        while GetSmsMemoLength(AnsiString(sMessage)) > 0 do
        begin
          Inc(giSendCnt);

          if GetSmsMemoLength(AnsiString(sMessage)) <= 90 then
          begin
            sMsg := sMessage;
            sMessage := '';
          end else
          begin
            sMsg := GetStrPharseByte(sMessage, 89);               // 89.이유는 한글2byte이므로 90일경우 91byte가 될수 있음
            sMessage := Copy(sMessage, Length(sMsg) + 1, Length(AnsiString(sMessage)) - Length(AnsiString(sMsg)));
          end;

          if giSendCnt = 1 then
					begin
						mPv1.Text := sMsg;
					end else
          begin
            if giSendCnt > 6 then Break;
            TcxLabel(FindComponent('lblPv' + IntToStr(giSendCnt))).Visible := True;
            TcxMemo(FindComponent('mPv' + IntToStr(giSendCnt))).Visible := True;
            TcxMemo(FindComponent('mPv' + IntToStr(giSendCnt))).Text := sMsg;
          end;
        end;
      end;

      lblSndCnt.Caption := IntTosTr(giSendCnt) + ' 건';

      pnlPreview.Align := alClient;
      pnlPreview.Visible := True;
    end;
	except
	end;
end;

procedure TFrm_SMS01.proc_smsRead(ls_rxxml: WideString; bMsg : boolean);
var
  xdom: msDomDocument;
  idx : Integer;
  ls_Msg_Err, sBrNm, Cash, Account : string;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ls_rxxml) then Exit;

    ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
    if ('0000' = ls_Msg_Err) then
    begin
      GS_EnvFile.WriteString('COUNSEL', 'SMSLASTNO', ed_send.Text);
      if bMsg then
      begin
        GMessagebox('전송' + CMC006, CDMSI);
        Close;
      end;
    end else
    begin
      if bMsg then
      begin
        idx := scb_BranchCode.IndexOf(GT_USERIF.BR);
        if idx >= 0 then sBrNm := scb_BranchName.Strings[idx];

        if not RequestBranchSMSInfo(GT_USERIF.BR, Cash, Account) then Exit;
        if Trim(Account) = '' then Account := '0';

        GMessagebox('문자 전송에' + CMC010 + CRLF +
                             ' * ' + sBrNm + '[' + GT_USERIF.BR + ']  SMS캐쉬:' + Account + '원' + CRLF +
                             ' * ' + ls_Msg_Err, CDMSE);
      end;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_SMS01.pShowSendMsg( aValue : String );
Var i, iRow : Integer;
    slTmp : TStringList;
begin
  slTmp := TStringList.Create;
  try
    cxViewSendSms.DataController.SetRecordCount(0);
    cxViewSendSms.BeginUpdate;
    for i := 0 to slSendMsg.Count - 1 do
    begin
      GetTextSeperationEx2('│', slSendMsg[i], slTmp);

      if slTmp.Count >= 2 then
      begin
        if ( Pos(aValue, slTmp[1]) > 0 ) Or ( Trim(aValue) = '' ) then
        begin
          iRow := cxViewSendSms.DataController.AppendRecord;
          cxViewSendSms.DataController.Values[iRow, 1] := slTmp[0];
          cxViewSendSms.DataController.Values[iRow, 2] := StringReplace(slTmp[1], '¶', #13#10, [rfReplaceAll]);
        end;
      end;
    end;
  finally
    cxViewSendSms.EndUpdate;

    cxViewSendSms.Columns[1].SortOrder := soDescending;
    cxViewSendSms.Columns[1].SortIndex := 0;

    FreeAndNil(slTmp);
  end;
end;

procedure TFrm_SMS01.pSnedMsgSave(sMsg: String);
begin
  try
    if Not GS_SENDMSG_AUTOSAVE then Exit;
    sMsg := StringReplace(sMsg, #13#10, '¶', [rfReplaceAll]);
    slSendMsg.Add(FormatDateTime('YYYY-MM-DD HH:NN:SS', Now) + '│' + sMsg);
    slSendMsg.SaveToFile(DBDIRECTORY + sSendMsgFile);
  finally

  end;
end;

procedure TFrm_SMS01.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_SMS01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_SMS01.mm_messageChange(Sender: TObject);
var iLen, iCnt : integer;
begin
  iLen := GetSmsMemoLength(AnsiString(TcxMemo(Sender).Text));
	lbSrtLen.Caption := IntToStr(iLen);

  if iLen > 449 then
  begin
		TcxMemo(Sender).Text := GetStrPharseByte(TcxMemo(Sender).Text, 445);
    iLen := GetSmsMemoLength(AnsiString(TcxMemo(Sender).Text));
  	lbSrtLen.Caption := IntToStr(iLen);
  end;

  if iLen > 90 then
  begin
    rbSms2.Checked := True;

    iCnt := fgetCountSms(TcxMemo(sender).Text);
		lb_Cnt.Caption := Format('%d건', [iCnt]);
    lb_Cnt.style.TextColor := clBlue;
    lb_Cnt.style.font.style := [fsBold];

    if iCnt > 5 then iCnt := 5;   // 최대 5건까지 연속문자 전송가능
    lbMaxLen.Caption := Format('/ %dByte', [iCnt * 90]);

  end else
  if iLen <= 90 then
  begin
    rbSms1.Checked := True;

    if iLen = 0 then lb_Cnt.Caption := Format('%d건', [0])
                else lb_Cnt.Caption := Format('%d건', [1]);

    lb_Cnt.style.TextColor := clBlack;
    lb_Cnt.style.font.style := [];

    lbMaxLen.Caption := '/ 90Byte';
  end;
end;

procedure TFrm_SMS01.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
  begin
    if ActiveControl.Name = 'ed_receiver' then
      ed_send.SetFocus
    else
    if ActiveControl.Name = 'ed_send' then
    begin
      if IDOK = GMessagebox(CMS011, CDMSQ) then
        btnSendClick(nil)
      else
        Exit;
    end;
  end;
end;

procedure TFrm_SMS01.FormShow(Sender: TObject);
var iCnt, i : integer;
begin
  fSetFont(Frm_SMS01, GS_FONTNAME);
  fSetSkin(Frm_SMS01);

	Proc_Init;

	if sSendKind = 'PUSH' then
	begin
{		pnlTitle.Caption := '     PUSH를 발송 합니다.';
		cxGroupBox3.Top := 290;
		pnlPush.Visible := True; }
		rdo_PUSH.checked := True;
		iCnt := 0;
		for i := 0 to edtReciveWKList.Lines.Count -1 do
		begin
			if edtReciveWKList.Lines[i] <> '' then
			begin
				inc(iCnt);
			end;
		end;
		lbPushCnt.Caption := IntToStr(iCnt) + '명';
	end	else
	begin
{		pnlTitle.Caption := '    SMS 전송을 합니다.';
		cxGroupBox3.Top := 183;
		pnlPush.Visible := False;   }
		rdo_SMS.checked := True;
		if sSendKind = '' then
		begin
			rdo_PUSH.visible := False;
			rdo_SMS.visible := False;
		end;
	end;

end;

procedure TFrm_SMS01.Proc_Init;
Var sSend : String;
begin
	try
		pnlTitle.Caption := '    SMS 전송을 합니다.';

    gslWkSabun.Clear;
    gslSlip.Clear;
    gslCustTel.Clear;
    
		lbPushCnt.Caption := '명';
		grpPush.Visible := False;
		edtPushTitle.Text := '';
		edtPushMemo.Clear;

		rbchk_re.Checked := False;
    rbchk_re.OnClick(self);
    if ls_sms.Items.Count = 0 then
    begin
      ed_receiver.Text := '';
      lbSrtLen.Caption := '0';
		end else
    if ls_sms.Items.Count = 1 then
    begin
      ed_receiver.Text := ls_sms.Items.Strings[0];
    end else
    begin
      ed_receiver.Lines := ls_sms.Items;
    end;

    if Trim(ed_send.Text) = '' then
    begin
      sSend := GS_EnvFile.ReadString('COUNSEL', 'SMSLASTNO', ed_send.Text);
      if cbKeynumber01.Properties.Items.IndexOf(sSend) > 0 then
        ed_Send.Text := sSend;
    end;
  except
  end;
	DisplayBranchSMSInfo;
end;

procedure TFrm_SMS01.btnMSel1Click(Sender: TObject);
var
	i: Integer;
begin
	for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TcxMemo) and
       (TcxMemo(Components[i]).Tag = TcxButton(Sender).Tag) then
    begin
      if Trim(TcxMemo(Components[i]).Text) <> '' then
			begin
				if sSendKind = 'PUSH' then
				begin
          edtPushMemo.Lines.Clear;
					edtPushMemo.Lines.Add(TcxMemo(Components[i]).Text);
				end else
				begin
     			mm_message.Text := GetStrPharseByte(TcxMemo(Components[i]).Text, giMaxChar);
    			lbSrtLen.Caption := IntToStr(Length(AnsiString(mm_message.Text)));
				end;
			end;
		end;
  end;
end;

procedure TFrm_SMS01.btnMsgDelClick(Sender: TObject);
Var i, j : Integer;
begin
  if cxViewSendSms.DataController.GetSelectedCount = 0 then Exit;

  for i := 0 to cxViewSendSms.DataController.RecordCount - 1 do
  begin
    if ( cxViewSendSms.ViewData.Records[I].Values[0] <> Null ) And
       ( cxViewSendSms.ViewData.Records[I].Values[0] ) then
    begin
      for j := 0 to slSendMsg.Count - 1 do
      begin
        if pos(cxViewSendSms.ViewData.Records[I].Values[1], slSendMsg.Strings[j]) > 0 then
        begin
          slSendMsg.Delete(j);
          Break;
        end;
      end;
    end;
  end;
  slSendMsg.SaveToFile(DBDIRECTORY + sSendMsgFile);
  btnMsgSch.Click;
end;

procedure TFrm_SMS01.btnMsgSchClick(Sender: TObject);
begin
  pShowSendMsg(edtMsgSch.Text);
end;

procedure TFrm_SMS01.rbchk_reClick(Sender: TObject);
begin
  if Rbchk_re.Checked then
  begin
    dt_date.Date := now;
    sp_Time1.Value := StrToIntDef(formatdatetime('hh', now), 0);
    sp_time2.Value := StrToIntDef(Copy(formatdatetime('hh:mm', now), 4, 2), 0);
    dt_date.Enabled := True;
    sp_time1.Enabled := True;
    sp_time2.Enabled := True;
    dt_date.SetFocus;
  end else
  begin
		dt_date.Enabled := False;
    sp_time1.Enabled := False;
    sp_time2.Enabled := False;
  end;
end;

procedure TFrm_SMS01.rbSms1Click(Sender: TObject);
begin
  if rbSms1.Checked then
  begin
    nType := 1;
    btnSend.Caption := '전송';
  end else
  if rbSms2.Checked then
  begin
    nType := 2;
    btnSend.Caption := '미리'#10'보기';
  end;
end;

procedure TFrm_SMS01.rdo_SMSClick(Sender: TObject);
var sPush : string;
begin
	if TcxRadioButton(sender).Checked then
	begin
		if TcxRadioButton(sender).Tag = 0 then
		begin
			pnlTitle.Caption := '    SMS 전송을 합니다.';
			grpPush.Visible := False;
      grpPush.Align := alNone;
			btnMSave.Enabled := True;
			sSendKind := '';
		end	else
		begin
			sPush := DisplayCashInfo;
			if StrToIntDef(sPush,0) > 0 then
				pnlTitle.Caption := '     PUSH를 발송 합니다.' + ' [PUSH단가 : ' + sPush + '원]'
			else
				pnlTitle.Caption := '     PUSH를 발송 합니다.';

      grpPush.Align := alClient;
			grpPush.Visible := True;

			edtPushTitle.SetFocus;
			btnMSave.Enabled := False;
			sSendKind := 'PUSH';
		end;
	end;
end;

procedure TFrm_SMS01.FormCreate(Sender: TObject);
var
  ln_envfile: TIniFile;
  Save: LongInt; // 폼타이틀 제거용.
  i : Integer;
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

  giMaxChar := 450;  // 최대 5건까지 연속문자 전송가능
  pPvMemoHide;
  pcSendView.ActivePageIndex := 0;
  cxViewSendSms.OptionsView.NoDataToDisplayInfoText := '';

  for I := 0 to cxViewSendSms.ColumnCount - 1 do
    cxViewSendSms.Columns[i].DataBinding.ValueType := 'String';

  slSendMsg := TStringList.Create;
  if FileExists(DBDIRECTORY + sSendMsgFile) then
    slSendMsg.LoadFromFile(DBDIRECTORY + sSendMsgFile);
  pShowSendMsg('');

  try
    ln_envfile := TIniFile.Create(DBDIRECTORY + 'SMS.Ini');
		Memo1.Text  := StringReplace(ln_envfile.ReadString('USER_1', 'Memo1', ''), '㏆', #13#10, [rfReplaceAll]);
		Memo2.Text  := StringReplace(ln_envfile.ReadString('USER_1', 'Memo2', ''), '㏆', #13#10, [rfReplaceAll]);
		Memo3.Text  := StringReplace(ln_envfile.ReadString('USER_1', 'Memo3', ''), '㏆', #13#10, [rfReplaceAll]);
		Memo4.Text  := StringReplace(ln_envfile.ReadString('USER_1', 'Memo4', ''), '㏆', #13#10, [rfReplaceAll]);
		Memo5.Text  := StringReplace(ln_envfile.ReadString('USER_1', 'Memo5', ''), '㏆', #13#10, [rfReplaceAll]);
		Memo6.Text  := StringReplace(ln_envfile.ReadString('USER_1', 'Memo6', ''), '㏆', #13#10, [rfReplaceAll]);
		Memo7.Text  := StringReplace(ln_envfile.ReadString('USER_1', 'Memo7', ''), '㏆', #13#10, [rfReplaceAll]);
		Memo8.Text  := StringReplace(ln_envfile.ReadString('USER_1', 'Memo8', ''), '㏆', #13#10, [rfReplaceAll]);
		Memo9.Text  := StringReplace(ln_envfile.ReadString('USER_1', 'Memo9', ''), '㏆', #13#10, [rfReplaceAll]);

		Memo11.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo11', ''), '㏆', #13#10, [rfReplaceAll]);
		Memo12.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo12', ''), '㏆', #13#10, [rfReplaceAll]);
		Memo13.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo13', ''), '㏆', #13#10, [rfReplaceAll]);
		Memo14.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo14', ''), '㏆', #13#10, [rfReplaceAll]);
		Memo15.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo15', ''), '㏆', #13#10, [rfReplaceAll]);
		Memo16.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo16', ''), '㏆', #13#10, [rfReplaceAll]);
		Memo17.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo17', ''), '㏆', #13#10, [rfReplaceAll]);
		Memo18.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo18', ''), '㏆', #13#10, [rfReplaceAll]);
		Memo19.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo19', ''), '㏆', #13#10, [rfReplaceAll]);

		Memo21.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo21', ''), '㏆', #13#10, [rfReplaceAll]);
		Memo22.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo22', ''), '㏆', #13#10, [rfReplaceAll]);
		Memo23.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo23', ''), '㏆', #13#10, [rfReplaceAll]);
		Memo24.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo24', ''), '㏆', #13#10, [rfReplaceAll]);
		Memo25.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo25', ''), '㏆', #13#10, [rfReplaceAll]);
		Memo26.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo26', ''), '㏆', #13#10, [rfReplaceAll]);
		Memo27.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo27', ''), '㏆', #13#10, [rfReplaceAll]);
		Memo28.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo28', ''), '㏆', #13#10, [rfReplaceAll]);
		Memo29.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo29', ''), '㏆', #13#10, [rfReplaceAll]);

		GS_SENDMSG_AUTOSAVE := ln_envfile.ReadBool('USER_1', 'GS_SENDMSG_AUTOSAVE', True);
		chkAutoSave.Checked := GS_SENDMSG_AUTOSAVE;

    ln_envfile.Free;

		proc_BrNameSet;

		sSendKind := '';
    nType := 1;
    gslSlip := TStringList.Create; 
    gslWkSabun := TStringList.Create;
    gslCustTel := TStringList.Create;
	except
  end;
end;

procedure TFrm_SMS01.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_SMS01.FormDestroy(Sender: TObject);
begin
  if Assigned(slSendMsg) then FreeAndNil(slSendMsg);

  Frm_SMS01 := Nil;
end;

procedure TFrm_SMS01.mm_messageKeyPress(Sender: TObject; var Key: Char);
var
  iLen: Integer;
begin
  if Ord(Key) = VK_BACK then Exit;
  if Key = #3 then Exit;

  iLen := GetSmsMemoLength(AnsiString(TcxMemo(Sender).Text));
  if iLen >= 449 then
  begin
    Key := #0;
		TcxMemo(Sender).Text := GetStrPharseByte(TcxMemo(Sender).Text, 445);
    Exit;
  end;
end;

procedure TFrm_SMS01.mm_messageKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxMemo(sender).Text := Enc_Control(TcxMemo(sender).Text);
end;

procedure TFrm_SMS01.mm_messageMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	pnl_Char.Tag := TcxMemo(Sender).Tag;
end;

procedure TFrm_SMS01.ed_receiver_bakKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) in [8, 48..57] then
  else
    Key := #0;
end;

procedure TFrm_SMS01.cbKeynumber01KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) in [8, 13, 48..57, 17, 22] then
	else
    Key := #0;
end;

procedure TFrm_SMS01.chkAutoSaveClick(Sender: TObject);
var
  ln_envfile: TIniFile;
begin
  if chkAutoSave.Checked then GS_SENDMSG_AUTOSAVE := True
                         else GS_SENDMSG_AUTOSAVE := False;

  try
    ln_envfile := TIniFile.Create(DBDIRECTORY + 'SMS.Ini');
    ln_envfile.WriteBool('USER_1', 'GS_SENDMSG_AUTOSAVE', GS_SENDMSG_AUTOSAVE);
  finally
    ln_envfile.Free;
  end;
end;

procedure TFrm_SMS01.cxLabel20MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxLabel(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SMS01.mm_messageKeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
var sMsg, sTmp : string;
begin
  if Ord(key) = VK_F5 then
  begin
    pnl_Char.Left := (frm_SMS01.Width - pnl_Char.Width) div 2;
    pnl_Char.Top := (frm_SMS01.Height - pnl_Char.Height) div 2;
    pnl_Char.Tag := TcxMemo(Sender).tag;
    pnl_Char.Visible := True;
    pnl_Char.BringToFront;
	end	else
	if ( ssCtrl in Shift) and ( Key = Ord('V') ) then
	begin
    sTmp := ClipBoard.AsText;
    // 450 Max = 총 5건까지 연속문자 전송 가능
    if GetSmsMemoLength(AnsiString(sTmp)) + GetSmsMemoLength(AnsiString(TcxMemo(Sender).Text)) > giMaxChar then
    begin
      sMsg := GetStrPharseByte(sTmp, giMaxChar - GetSmsMemoLength(AnsiString(TcxMemo(Sender).Text)));
      ClipBoard.AsText := sMsg;
    end;
	end;
end;

procedure TFrm_SMS01.cxButton9Click(Sender: TObject);
begin
  pnl_Char.Left := 12;  // (frm_SMS01.Width - pnl_Char.Width) div 2;
  pnl_Char.Top  := 231; // (frm_SMS01.Height - pnl_Char.Height) div 2;
  pnl_Char.Visible := True;
  pnl_Char.BringToFront;
end;

procedure TFrm_SMS01.cxCol3PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
Var iRow : Integer;
begin
  iRow := cxViewSendSms.DataController.FocusedRecordIndex;
  if iRow = -1 then Exit;

  mm_message.Text := cxViewSendSms.DataController.Values[iRow, 2];
end;

procedure TFrm_SMS01.cxEdtSchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var i : Integer;
begin
  SetDebugeWrite('TFrm_SMS01.cxTSearchMainTelKeyDown');
  if Key = VK_BACK then
  begin
    if (Length(cxEdtSch.Text) <= 1) then
    begin
      cxLBSch.Items.Clear;
      cxLBSch.Items.BeginUpdate;
      try
        for i := 1 to cbKeynumber01.Properties.Items.Count - 1 do
        begin
          if cxLBSch.Items.IndexOf(cbKeynumber01.Properties.Items[i]) < 0 then
           cxLBSch.Items.Add(cbKeynumber01.Properties.Items[i]);
        end;
      finally
        cxLBSch.Items.EndUpdate;
      end;
    end;
  end else
  if Key = VK_DOWN then
  begin
    if cxLBSch.Visible then cxLBSch.SetFocus;
  end;
end;

procedure TFrm_SMS01.cxEdtSchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  SetDebugeWrite('Frm_SMS01.cxEdtSchKeyUp');
//  if (key <> 229) then   //  20191224 한컴입력기 에서는 모든 한글이 229로 넘어옴 그래서 삭제 KHS
  begin
  	if Trim(cxEdtSch.Text) = '' then  Exit;

    // 대표번호로 조회..
   	if not Func_KeyNumberList_Search then Exit;
  end;
end;

procedure TFrm_SMS01.cxLabel23Click(Sender: TObject);
var
  cText: string;
  cLine: string;
  i, p: Integer;
  s : AnsiString;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TcxMemo) and (TcxMemo(Components[i]).Tag = pnl_Char.Tag) And ( TcxMemo(Components[i]).Tag <> 0 ) then
    begin
      cLine := TcxLabel(Sender).Caption;
      p := TcxMemo(Components[i]).SelStart + TcxMemo(Components[i]).SelLength + 1;
      cText := TcxMemo(Components[i]).Text;
      Insert(cLine, cText, p);
      TcxMemo(Components[i]).Text := cText;
      TcxMemo(Components[i]).SelStart := p + Length(cLine) - 1;

      if TcxMemo(Components[i]).Tag <> 0 then
      begin
        if fCheckMaxLength(TcxMemo(Components[i]), giMaxChar) then
        begin
          s := TcxMemo(Components[i]).Text;
          s := Copy(s, 1, giMaxChar);
          TcxMemo(Components[i]).Text := s;
        end;
      end;
    end;
  end;
end;

procedure TFrm_SMS01.cxLBSchDblClick(Sender: TObject);
begin
	ed_send.Text := cxLBSch.Items[cxLBSch.ItemIndex];
  cxBtnSchExit.Click;
end;

procedure TFrm_SMS01.cxLBSchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
  	ed_send.Text := cxLBSch.Items[cxLBSch.ItemIndex];
    cxBtnSchExit.Click;
  end;
end;

procedure TFrm_SMS01.Memo1Exit(Sender: TObject);
var
  ln_envfile: TIniFile;
begin
	try
		ln_envfile := TIniFile.Create(DBDIRECTORY + 'SMS.Ini');
		ln_envfile.WriteString('USER_1', TMemo(Sender).Name, StringReplace(TMemo(Sender).Text, #13#10, '㏆', [rfReplaceAll])) ;
		ln_envfile.Free;
  except
  end;
end;

procedure TFrm_SMS01.Memo1PropertiesChange(Sender: TObject);
var iCnt, iLen : integer;
begin
	iLen := Length(AnsiString(TcxMemo(sender).Text));
	TcxLabel(FindComponent('lbSrtLen' + IntToStr(TcxLabel(sender).Tag))).Caption := IntToStr(iLen);

	if iLen > 450 then
	begin
		TcxMemo(Sender).Text := GetStrPharseByte(TcxMemo(Sender).Text, 450);
		iLen := Length(AnsiString(TcxMemo(Sender).Text));
		TcxLabel(FindComponent('lbSrtLen' + IntToStr(TcxLabel(sender).Tag))).Caption := IntToStr(iLen);
	end;

	if iLen > 90 then
	begin
		iCnt := fgetCountSms(TcxMemo(sender).Text);

		TcxLabel(FindComponent('lb_Cnt' + IntToStr(TcxLabel(Sender).Tag))).Caption := Format('%d건', [iCnt]);
		TcxLabel(FindComponent('lb_Cnt' + IntToStr(TcxLabel(sender).Tag))).style.Textcolor := clBlue;
		TcxLabel(FindComponent('lb_Cnt' + IntToStr(TcxLabel(sender).Tag))).style.font.style := [fsBold];

		if iCnt > 5 then   // 최대 5건까지 연속문자 전송가능
			TcxLabel(FindComponent('lbMaxLen' + IntToStr(TcxLabel(sender).Tag))).Caption := Format('/ %dByte', [5 * 90])
		else
			TcxLabel(FindComponent('lbMaxLen' + IntToStr(TcxLabel(sender).Tag))).Caption := Format('/ %dByte', [iCnt * 90]);
	end else
	begin
		if iLen = 0 then TcxLabel(FindComponent('lb_Cnt' + IntToStr(TcxLabel(Sender).Tag))).Caption := '0건'
								else TcxLabel(FindComponent('lb_Cnt' + IntToStr(TcxLabel(Sender).Tag))).Caption := '1건';
    if GB_DARKMODE then
		  TcxLabel(FindComponent('lb_Cnt' + IntToStr(TcxLabel(sender).Tag))).Style.Textcolor := clWhite
    else
		  TcxLabel(FindComponent('lb_Cnt' + IntToStr(TcxLabel(sender).Tag))).Style.Textcolor := clBlack;

		TcxLabel(FindComponent('lb_Cnt' + IntToStr(TcxLabel(sender).Tag))).style.font.style := [];

		TcxLabel(FindComponent('lbMaxLen' + IntToStr(TcxLabel(sender).Tag))).Caption := '/ 90Byte';
	end;
end;

procedure TFrm_SMS01.BtnCloseClick(Sender: TObject);
begin
	Close;
end;

procedure TFrm_SMS01.btnMSaveClick(Sender: TObject);
var
  ln_envfile: TIniFile;
  i : Integer;
  bOK : Boolean;
begin
	try
    bOk := False;
		for i := 0 to ComponentCount - 1 do
    begin
			if Components[i] is TcxMemo then
      begin
				if not func_EucKr_Check((Components[i] as TcxMemo), 1) then
        begin
          bOk := True;
          Break;
				end;
			end;
		end;
    if bOk then Exit;
	except
	end;

	try
    ln_envfile := TIniFile.Create(DBDIRECTORY + 'SMS.Ini');
		ln_envfile.WriteString('USER_1', 'Memo1' , StringReplace(Memo1.Text , #13#10, '㏆', [rfReplaceAll]));
		ln_envfile.WriteString('USER_1', 'Memo2' , StringReplace(Memo2.Text , #13#10, '㏆', [rfReplaceAll]));
		ln_envfile.WriteString('USER_1', 'Memo3' , StringReplace(Memo3.Text , #13#10, '㏆', [rfReplaceAll]));
		ln_envfile.WriteString('USER_1', 'Memo5' , StringReplace(Memo4.Text , #13#10, '㏆', [rfReplaceAll]));
		ln_envfile.WriteString('USER_1', 'Memo6' , StringReplace(Memo5.Text , #13#10, '㏆', [rfReplaceAll]));
		ln_envfile.WriteString('USER_1', 'Memo7' , StringReplace(Memo6.Text , #13#10, '㏆', [rfReplaceAll]));
		ln_envfile.WriteString('USER_1', 'Memo9' , StringReplace(Memo7.Text , #13#10, '㏆', [rfReplaceAll]));
		ln_envfile.WriteString('USER_1', 'Memo10', StringReplace(Memo8.Text , #13#10, '㏆', [rfReplaceAll]));
		ln_envfile.WriteString('USER_1', 'Memo11', StringReplace(Memo9.Text , #13#10, '㏆', [rfReplaceAll]));

		ln_envfile.WriteString('USER_1', 'Memo11' , StringReplace(Memo11.Text, #13#10, '㏆', [rfReplaceAll]));
		ln_envfile.WriteString('USER_1', 'Memo12' , StringReplace(Memo12.Text, #13#10, '㏆', [rfReplaceAll]));
		ln_envfile.WriteString('USER_1',
'Memo13' , StringReplace(Memo13.Text, #13#10, '㏆', [rfReplaceAll]));
		ln_envfile.WriteString('USER_1', 'Memo14' , StringReplace(Memo14.Text, #13#10, '㏆', [rfReplaceAll]));
		ln_envfile.WriteString('USER_1', 'Memo15' , StringReplace(Memo15.Text, #13#10, '㏆', [rfReplaceAll]));
		ln_envfile.WriteString('USER_1', 'Memo16' , StringReplace(Memo16.Text, #13#10, '㏆', [rfReplaceAll]));
		ln_envfile.WriteString('USER_1', 'Memo17' , StringReplace(Memo17.Text, #13#10, '㏆', [rfReplaceAll]));
		ln_envfile.WriteString('USER_1', 'Memo18' , StringReplace(Memo18.Text, #13#10, '㏆', [rfReplaceAll]));
		ln_envfile.WriteString('USER_1', 'Memo19' , StringReplace(Memo19.Text, #13#10, '㏆', [rfReplaceAll]));

		ln_envfile.WriteString('USER_2', 'Memo21' , StringReplace(Memo21.Text, #13#10, '㏆', [rfReplaceAll]));
		ln_envfile.WriteString('USER_2', 'Memo22' , StringReplace(Memo22.Text, #13#10, '㏆', [rfReplaceAll]));
		ln_envfile.WriteString('USER_2', 'Memo23' , StringReplace(Memo23.Text, #13#10, '㏆', [rfReplaceAll]));
		ln_envfile.WriteString('USER_2', 'Memo24' , StringReplace(Memo24.Text, #13#10, '㏆', [rfReplaceAll]));
		ln_envfile.WriteString('USER_2', 'Memo25' , StringReplace(Memo25.Text, #13#10, '㏆', [rfReplaceAll]));
		ln_envfile.WriteString('USER_2', 'Memo26' , StringReplace(Memo26.Text, #13#10, '㏆', [rfReplaceAll]));
		ln_envfile.WriteString('USER_2', 'Memo27' , StringReplace(Memo27.Text, #13#10, '㏆', [rfReplaceAll]));
		ln_envfile.WriteString('USER_2', 'Memo28' , StringReplace(Memo28.Text, #13#10, '㏆', [rfReplaceAll]));
		ln_envfile.WriteString('USER_2', 'Memo29' , StringReplace(Memo29.Text, #13#10, '㏆', [rfReplaceAll]));
		ln_envfile.Free;
	except
	end;
end;

procedure TFrm_SMS01.cxButton12Click(Sender: TObject);
begin
  pnl_Char.Visible := False;
end;

procedure TFrm_SMS01.cxButton13Click(Sender: TObject);
var
	sTmp : string;
	I, ErrCode, iCnt, iLoopCnt, iTmp, iWkCnt: integer;

	sParam, sLoop, XmlData, ErrMsg : String;     //
begin
	SetDebugeWrite('TFrm_BTN.btn_2_1Click');
	Try
		if Trim(edtPushTitle.Text) = '' then
		begin
			GMessagebox('PUSH제목을 입력하세요', CDMSE);
			edtPushTitle.SetFocus;
			Exit;
		end;
		if Trim(edtPushMemo.Text) = '' then
		begin
			GMessagebox('PUSH내용을 입력하세요', CDMSE);
			edtPushMemo.SetFocus;
			Exit;
		end;

		if Trim(edtReciveWKList.Text) = ''  then
		begin
			GMessagebox('PUSH대상이 없습니다.', CDMSE);
			Exit;
		end;

		sParam := '';
		sParam := GT_USERIF.LV; //레벨
		sParam := sParam + '│' + '1';          //타입-  전체 0 , 선택 1
		sParam := sParam + '│' + GT_USERIF.ShareNo; //로그인 사용자 연합코드
		sParam := sParam + '│' + GT_USERIF.HD;      //로그인 사용자 본사코드
		sParam := sParam + '│' + GT_USERIF.BR;      //로그인 사용자 지사코드
		sParam := sParam + '│' + GT_USERIF.NM;      //로그인 사용자 유저명
		sParam := sParam + '│' + Trim(edtPushTitle.Text);  //제목
		sTmp := edtPushMemo.Text;
		sTmp := ReplaceAll(sTmp, #$D#$A, '¶');
		sTmp := ReplaceAll(sTmp, #13#10, '¶');
		sTmp := ReplaceAll(sTmp, #10#13, '¶');
		sParam := sParam + '│' + Trim(sTmp);  //내용
		sParam := sParam + '│' + '2';  //공지 0 , 푸시 1, 공지+푸시 2

		iCnt := 0;
		iLoopCnt := 0;
		sTmp := '';
		iWkCnt := edtReciveWKList.Lines.Count div 100;
		iTmp := edtReciveWKList.Lines.Count - (iWkCnt*100); //100단위 나눈 후 남은 인원
		for i := 0 to edtReciveWKList.Lines.Count -1 do
		begin
			if edtReciveWKList.Lines[i] <> '' then
			begin
				if sTmp = '' then sTmp := edtReciveWKList.Lines[i]
				else 				      sTmp := sTmp + ',' + edtReciveWKList.Lines[i];
				inc(iCnt);
			end;

			if iCnt = 100 then
			begin
				sLoop := '';
				sLoop := sParam + '│' + IntToStr(iCnt);  //대상인원
				sLoop := sLoop + '│' + sTmp;  //대상사번

				if not RequestBase(GetCallable05('WK_NOTICE_INSERT', 'MNG_WK.WK_NOTICE_INSERT', sLoop), XmlData, ErrCode, ErrMsg) then
				begin
//					GMessageBox(Format('PUSH 발송오류 [%d] %s', [ErrCode, ErrMsg]), CDMSE);
//					Exit;
				end;

				inc(iLoopCnt); //몇번전송했는지 횟수
				iCnt := 0;
				sTmp := '';
			end else
      if (iLoopCnt = iWkCnt) and  (iTmp = iCnt) then //100명단위로 보내고 나머지 인원인지 확인
			begin
				sLoop := '';
				sLoop := sParam + '│' + IntToStr(iCnt);  //대상인원
				sLoop := sLoop + '│' + sTmp;  //대상사번

				if not RequestBase(GetCallable05('WK_NOTICE_INSERT', 'MNG_WK.WK_NOTICE_INSERT', sLoop), XmlData, ErrCode, ErrMsg) then
				begin
//					GMessageBox(Format('PUSH 발송오류 [%d] %s', [ErrCode, ErrMsg]), CDMSE);
//					Exit;
				end;
			end;

		end;

		GMessagebox('Push가 정상적으로 발송되었습니다.', CDMSI);
		Close;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_SMS01.cxBtnSchClick(Sender: TObject);
Var i : Integer;
begin
  cxGBSch.Left := 61;
  cxGBSch.Top  := 358;
  cxGBSch.BringToFront;
  cxGBSch.Visible := True;

  cxEdtSch.Clear;
  cxLBSch.Items.Clear;
  cxLBSch.Items.BeginUpdate;
  try
    for i := 1 to cbKeynumber01.Properties.Items.Count - 1 do
    begin
      if cxLBSch.Items.IndexOf(cbKeynumber01.Properties.Items[i]) < 0 then
         cxLBSch.Items.Add(cbKeynumber01.Properties.Items[i]);
    end;
  finally
    cxLBSch.Items.EndUpdate;
	end;

  cxEdtSch.SetFocus;
end;

procedure TFrm_SMS01.cxBtnSchExitClick(Sender: TObject);
begin
  cxGBSch.Visible := False;
end;

procedure TFrm_SMS01.edtMsgSchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = Vk_Return then btnMsgSch.Click;
end;

procedure TFrm_SMS01.edtPushMemoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxMemo(sender).Text := Enc_Control(TcxMemo(sender).Text);
end;

procedure TFrm_SMS01.edtPushTitleKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then edtPushMemo.SetFocus;
end;

procedure TFrm_SMS01.edtPushTitleKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_SMS01.ed_receiverKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) in [8, 13, 48..57, 17, 22] then
  else
    Key := #0;
end;

procedure TFrm_SMS01.DisplayBranchSMSInfo;
var
  Cash, Account: string;
begin
	if Not pSMS01Dock.bUnDock then pSMS01Dock.GUBUN := GT_SEL_BRNO.GUBUN;
  if Not pSMS01Dock.bUnDock then pSMS01Dock.BrNo  := GT_SEL_BRNO.BrNo;
  if Not pSMS01Dock.bUnDock then pSMS01Dock.BrName:= GT_SEL_BRNO.BrName;

	GBSmsCashInfo.Visible := pSMS01Dock.GUBUN = '1';
	GBPushCashInfo.Visible := pSMS01Dock.GUBUN = '1';

	if pSMS01Dock.GUBUN = '1' then
  begin
		if not RequestBranchSMSInfo(pSMS01Dock.BrNo, Cash, Account) then Exit;

		edtBranchSMSName.Text := Format('%s(%s)', [pSMS01Dock.BrName, pSMS01Dock.BrNo]);
		edtBranchSMSCash.Text := FormatFloat('#,##0.#', StrToFloatDef(Cash, 0));
		edtBranchSMSAccount.Text := Account;
		lblBranchSMSAccount.Visible := Account <> '';
		edtBranchSMSAccount.Visible := Account <> '';

		edtBranchPushName.Text := Format('%s(%s)', [pSMS01Dock.BrName, pSMS01Dock.BrNo]);
		edtBranchPushCash.Text := FormatFloat('#,##0.#', StrToFloatDef(Cash, 0));
		edtBranchPushAccount.Text := Account;
		lblBranchPushAccount.Visible := Account <> '';
		edtBranchPushAccount.Visible := Account <> '';
	end;
end;

function TFrm_SMS01.DisplayCashInfo:string;
var
  ls_TxQry, ls_TxLoad, sQueryTemp : string;
  swhere, swhere2: string;
	StrList: TStringList;
	ErrCode: integer;
	xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
	ls_rxxml: WideString;
begin
	result := '';
	try
		if GT_USERIF.LV = '60' then
    begin
      if GT_SEL_BRNO.GUBUN <> '1' then
      begin
        sWhere := format('WHERE HD_NO = ''%s'' ', [GT_SEL_BRNO.HDNO]);
        sWhere2 := format('AND HD_NO = ''%s'' ', [GT_SEL_BRNO.HDNO]);
      end else
      begin
        sWhere := format('WHERE BR_NO = ''%s'' ', [GT_SEL_BRNO.BrNo]);
        sWhere2 := format('AND BR_NO = ''%s'' ', [GT_SEL_BRNO.BrNo]);
      end;
    end else
    begin
      sWhere := format('WHERE BR_NO = ''%s'' ', [GT_SEL_BRNO.BrNo]);
      sWhere2 := format('AND BR_NO = ''%s'' ', [GT_SEL_BRNO.BrNo]);
    end;

    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_MEMBER_CASH1, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sWhere, sWhere2]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CASH0003', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

		StrList := TStringList.Create;
		Screen.Cursor := crHandPoint;
		try
			if dm.SendSock(ls_TxLoad, StrList, ErrCode, False) then
			begin
				ls_rxxml := StrList[0];

				if trim(ls_rxxml) <> '' then
				begin
					Application.ProcessMessages;
					xdom := ComsDomDocument.Create;
					try
						if not xdom.loadXML(ls_rxxml) then
							Exit;

						if (0 < GetXmlRecordCount(ls_rxxml)) then
						begin
							lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

							if lst_Result.length > 0 then
							begin
								ls_Rcrd := TStringList.Create;
								try
									GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
									if GT_SEL_BRNO.GUBUN <> '0' then
									begin
										result := IntToStr(StrToIntDef(ls_Rcrd[5], 0));
									end else
									if GT_SEL_BRNO.GUBUN = '0' then
									begin
										result := '0';
									end;
								finally
									ls_Rcrd.Free;
								end;
							end else
							begin
								result := '0';
							end;
						end;
					finally
						xdom := Nil;
					end;
				end;
			end;
		finally
			StrList.Free;
			Screen.Cursor := crDefault;
		end;
	except
	end;
end;

function TFrm_SMS01.RequestBranchSMSInfo(ABrNo: string; out ACash,
  AAccount: string): Boolean;
var
  xdom: msDomDocument;
  ls_Msg_Err, sQueryTemp : string;
  ls_TxQry, ls_TxLoad: string;
  ReceiveStr: string;
  StrList, ls_Rcrd: TStringList;
  ErrCode: integer;
  lst_Result: IXMLDomNodeList;
begin
  Result := False;

  ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
  fGet_BlowFish_Query(GSQ_SMS_CASHINFO, sQueryTemp);
	ls_TxQry := Format(sQueryTemp, [ABrNo]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CASH0001', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

  StrList := TStringList.Create;
  Screen.Cursor := crHandPoint;
  try
    if dm.SendSock(ls_TxLoad, StrList, ErrCode, False) then
    begin
      ReceiveStr := StrList[0];

      if trim(ReceiveStr) <> '' then
      begin
        Application.ProcessMessages;
        xdom := ComsDomDocument.Create;
        try
          if not xdom.loadXML(ReceiveStr) then Exit;

          ls_MSG_Err := GetXmlErrorCode(ReceiveStr);
          if ('0000' = ls_MSG_Err) then
          begin
            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
            ls_Rcrd := TStringList.Create;
            try
              GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);

              ACash := ls_Rcrd[0];
              AAccount := ls_Rcrd[1];

              Result := True;
            finally
              ls_Rcrd.Free;
            end;
          end else
          begin
            GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
          end;
        finally
          xdom := Nil;
        end;
      end;
    end;
  finally
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_SMS01.pcSendViewChange(Sender: TObject);
begin
  if pcSendView.ActivePageIndex = 2 then Close;
end;

procedure TFrm_SMS01.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(frm_SMS01.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SMS01.pnl_CharMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ReleaseCapture;
  PostMessage(pnl_Char.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SMS01.pPvMemoHide;
Var i : Integer;
begin
  for i := 2 to 6 do
  begin
    TcxLabel(FindComponent('lblPv' + IntToStr(i))).Visible := False;
    TcxMemo(FindComponent('mPv' + IntToStr(i))).Visible := False;
  end;
end;

procedure TFrm_SMS01.proc_BranchChange;
begin
  DisplayBranchSMSInfo;
end;

procedure TFrm_SMS01.proc_BrNameSet;
var
  StrList: TStringList;
begin
  if Not pSMS01Dock.bUnDock then pSMS01Dock.GUBUN := GT_SEL_BRNO.GUBUN;
  if Not pSMS01Dock.bUnDock then pSMS01Dock.HdNo  := GT_SEL_BRNO.HdNo;
  if Not pSMS01Dock.bUnDock then pSMS01Dock.BrNo  := GT_SEL_BRNO.BrNo;
  if Not pSMS01Dock.bUnDock then pSMS01Dock.BrName:= GT_SEL_BRNO.BrName;

	StrList := TStringList.Create;
  cbKeynumber01.Tag := 1;
  try
    if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (pSMS01Dock.GUBUN <> '1') then
    begin
      GetBrTelList(pSMS01Dock.HDNO, StrList);
      cbKeynumber01.Properties.Items.Assign(StrList);
    end else
    begin
			GetBrTelList(pSMS01Dock.BrNo, StrList);
			cbKeynumber01.Properties.Items.Assign(StrList);
    end;
	finally
		StrList.Free;
  end;

  if cbKeynumber01.Properties.Items.Count >= 1 then
    cbKeynumber01.Properties.Items.Insert(0, '번호선택');

  cbKeynumber01.ItemIndex := 0;
  cbKeynumber01.Tag := 0;
end;

function TFrm_SMS01.Func_KeyNumberList_Search: Boolean;
var
	i : Integer;
	bRlt: boolean;
	sKey: string;
begin
  SetDebugeWrite('TFrm_SMS01.Func_KeyNumberList_Search');
  try
    bRlt := False;
    cxLBSch.Items.Clear;

    sKey := RemoveAll(cxEdtSch.text, '-'); // 조회할 대표번호 읽기.
    cxLBSch.Items.BeginUpdate;
    try
      for i := 1 to cbKeynumber01.Properties.Items.Count - 1 do
      begin
        if (Pos(sKey, cbKeynumber01.Properties.Items[i]) > 0) then
        begin // 지사명  찾기..
          if cxLBSch.Items.IndexOf(cbKeynumber01.Properties.Items[i]) < 0 then
           cxLBSch.Items.Add(cbKeynumber01.Properties.Items[i]);
          bRlt := True;
        end;
      end;
    finally
      cxLBSch.Items.EndUpdate;
    end;
    Result := bRlt;
  Except
    on e: exception do
    begin
      Log('Func_KeyNumberList_Search Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Func_KeyNumberList_Search Error :' + E.Message);
    end;
  end;
end;

end.



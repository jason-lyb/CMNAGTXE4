unit xe_SMSA1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, ComObj,
  Dialogs, IDGlobal, MSXML2_TLB, IniFiles, StrUtils, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxPCdxBarPopupMenu, cxStyles, HttpApp,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxLabel, cxCurrencyEdit, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils,
  IdCoder, IdCoder3to4, IdCoderMIME, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, Vcl.ImgList, Vcl.ExtCtrls,
  cxDropDownEdit, Vcl.Samples.Spin, cxTextEdit, cxMaskEdit, cxCalendar,
  cxCheckBox, cxGroupBox, Vcl.StdCtrls, cxButtons, cxMemo, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxPC, Vcl.Imaging.jpeg, dxBarBuiltInMenu,
  AdvProgressBar, dxSkinsCore, dxSkinDevExpressStyle, dxSkinscxPCPainter,
  System.ImageList;

type
  TFrm_SMSA1 = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    cxGridBranchSms: TcxGrid;
    cxViewBranchSms: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxLevelBranchSms: TcxGridLevel;
    cxColViewBranchSmsColumn1: TcxGridDBColumn;
    cxColViewBranchSmsColumn2: TcxGridDBColumn;
    cxColViewBranchSmsColumn3: TcxGridDBColumn;
    pnl3: TPanel;
    img1: TImage;
    mm_message: TcxMemo;
    cxLabel17: TcxLabel;
    btnInsertChar: TcxButton;
    se_time1: TSpinEdit;
    se_time2: TSpinEdit;
    btnPreView: TcxButton;
    rbchk_re: TcxCheckBox;
    cxLabel2: TcxLabel;
    ed_send: TcxTextEdit;
    lbl1: TLabel;
    chkBalsin: TcxCheckBox;
    chkNameAdd: TcxCheckBox;
    chkBrAdd: TcxCheckBox;
    chkTelAdd: TcxCheckBox;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    btnSendMsg: TcxButton;
    lbl4: TLabel;
    mmoBefore: TMemo;
    lbl6: TLabel;
    mmoAfter: TMemo;
    lbl11: TLabel;
    lblSMSCaption: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    cxLabel16: TcxLabel;
    pnl4: TPanel;
    cxPageControl2: TcxPageControl;
    cxtbsht3: TcxTabSheet;
    cxLabel5: TcxLabel;
    Memo1: TcxMemo;
    btnSetMsg1: TcxButton;
    cxLabel18: TcxLabel;
    btnSetMsg2: TcxButton;
    cxLabel7: TcxLabel;
    btnSetMsg3: TcxButton;
    cxLabel19: TcxLabel;
    Memo5: TcxMemo;
    btnSetMsg4: TcxButton;
    Memo2: TcxMemo;
    Memo3: TcxMemo;
    cxLabel96: TcxLabel;
    btnSetMsg5: TcxButton;
    Memo6: TcxMemo;
    cxLabel6: TcxLabel;
    Memo7: TcxMemo;
    cxLabel9: TcxLabel;
    Memo9: TcxMemo;
    cxLabel10: TcxLabel;
    Memo10: TcxMemo;
    btnSetMsg8: TcxButton;
    cxLabel8: TcxLabel;
    Memo11: TcxMemo;
    btnSetMsg9: TcxButton;
    btnSetMsg6: TcxButton;
    btnSetMsg7: TcxButton;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel15: TcxLabel;
    cxtbsht4: TcxTabSheet;
    cbbSelect: TcxComboBox;
    chkAll: TcxCheckBox;
    cxedKey: TcxTextEdit;
    cxlb1: TcxLabel;
    cxGridMsgList: TcxGrid;
    cxViewMsgList: TcxGridDBTableView;
    cxColViewMsgListColumn1: TcxGridDBColumn;
    cxColViewMsgListColumn2: TcxGridDBColumn;
    cxLevelMsgList: TcxGridLevel;
    cxColViewBranchSmsColumn4: TcxGridDBColumn;
    cxColViewMsgListColumn3: TcxGridDBColumn;
    cxColViewMsgListColumn4: TcxGridDBColumn;
    cxColViewMsgListColumn5: TcxGridDBColumn;
    cxColViewMsgListColumn6: TcxGridDBColumn;
    cxColViewMsgListColumn7: TcxGridDBColumn;
    cxGridSendSms: TcxGrid;
    cxViewSendSms: TcxGridDBTableView;
    cxCol1: TcxGridDBColumn;
    cxCol2: TcxGridDBColumn;
    cxCol3: TcxGridDBColumn;
    cxCol4: TcxGridDBColumn;
    cxCol5: TcxGridDBColumn;
    cxCol6: TcxGridDBColumn;
    cxCol7: TcxGridDBColumn;
    cxLevelSendSms: TcxGridLevel;
    cxGridKeyNum: TcxGrid;
    cxViewKeyNum: TcxGridDBTableView;
    cxLevelKeyNum: TcxGridLevel;
    cxColViewKeyNumColumn1: TcxGridDBColumn;
    cxColViewKeyNumColumn2: TcxGridDBColumn;
    cxColViewKeyNumColumn3: TcxGridDBColumn;
    cxGridSms: TcxGrid;
    cxViewSms: TcxGridDBTableView;
    cxLevelSms: TcxGridLevel;
    cxColViewSmsColumn1: TcxGridDBColumn;
    cxColViewSmsColumn2: TcxGridDBColumn;
    cxColViewSmsColumn3: TcxGridDBColumn;
    cxColViewSmsColumn4: TcxGridDBColumn;
    cxColViewSmsColumn5: TcxGridDBColumn;
    cxColViewSmsColumn6: TcxGridDBColumn;
    tmrFileSms: TTimer;
    dlgOpen: TOpenDialog;
    pnlSmsStatus: TPanel;
    pm1: TPopupMenu;
    mni1: TMenuItem;
    mni2: TMenuItem;
    mni3: TMenuItem;
    mni4: TMenuItem;
    mni5: TMenuItem;
    mmo_log: TMemo;
    ilDown: TImageList;
    dlgSave: TSaveDialog;
    pm2: TPopupMenu;
    mni6: TMenuItem;
    mni7: TMenuItem;
    mni8: TMenuItem;
    mni9: TMenuItem;
    mni10: TMenuItem;
    pm3: TPopupMenu;
    mniN1: TMenuItem;
    itcSMS: TIdTCPClient;
    pnl_Char: TPanel;
    lbl41: TcxLabel;
    cxPageControl3: TcxPageControl;
    cxtbsht2: TcxTabSheet;
    lbl43: TcxLabel;
    lbl44: TcxLabel;
    lbl45: TcxLabel;
    lbl46: TcxLabel;
    lbl47: TcxLabel;
    lbl48: TcxLabel;
    lbl49: TcxLabel;
    lbl50: TcxLabel;
    lbl51: TcxLabel;
    lbl52: TcxLabel;
    lbl53: TcxLabel;
    lbl54: TcxLabel;
    lbl55: TcxLabel;
    lbl56: TcxLabel;
    lbl57: TcxLabel;
    lbl58: TcxLabel;
    lbl59: TcxLabel;
    lbl60: TcxLabel;
    lbl61: TcxLabel;
    lbl62: TcxLabel;
    lbl63: TcxLabel;
    lbl64: TcxLabel;
    lbl65: TcxLabel;
    lbl66: TcxLabel;
    lbl67: TcxLabel;
    lbl68: TcxLabel;
    lbl69: TcxLabel;
    lbl70: TcxLabel;
    lbl71: TcxLabel;
    lbl72: TcxLabel;
    lbl73: TcxLabel;
    lbl74: TcxLabel;
    lbl75: TcxLabel;
    lbl76: TcxLabel;
    lbl77: TcxLabel;
    lbl78: TcxLabel;
    lbl79: TcxLabel;
    lbl80: TcxLabel;
    lbl81: TcxLabel;
    lbl82: TcxLabel;
    lbl83: TcxLabel;
    lbl84: TcxLabel;
    cxtbsht1: TcxTabSheet;
    lbl85: TcxLabel;
    lbl86: TcxLabel;
    lbl87: TcxLabel;
    lbl88: TcxLabel;
    lbl89: TcxLabel;
    lbl90: TcxLabel;
    lbl91: TcxLabel;
    lbl92: TcxLabel;
    lbl93: TcxLabel;
    lbl94: TcxLabel;
    lbl95: TcxLabel;
    lbl96: TcxLabel;
    lbl97: TcxLabel;
    lbl98: TcxLabel;
    lbl99: TcxLabel;
    lbl100: TcxLabel;
    lbl101: TcxLabel;
    lbl102: TcxLabel;
    lbl103: TcxLabel;
    lbl104: TcxLabel;
    lbl105: TcxLabel;
    lbl106: TcxLabel;
    lbl107: TcxLabel;
    lbl108: TcxLabel;
    lbl109: TcxLabel;
    lbl110: TcxLabel;
    lbl111: TcxLabel;
    lbl112: TcxLabel;
    lbl113: TcxLabel;
    lbl114: TcxLabel;
    lbl115: TcxLabel;
    lbl116: TcxLabel;
    lbl5: TLabel;
    chkSplit: TcxCheckBox;
    edtSplitMin: TcxTextEdit;
    Label2: TLabel;
    edtSplitCnt: TcxTextEdit;
    Label3: TLabel;
    IdEncoderMIME1: TIdEncoderMIME;
    chkMileAdd: TcxCheckBox;
    cxColViewSmsColumn7: TcxGridDBColumn;
    dtp_date: TcxDateEdit;
    PnlMain: TPanel;
    grp2: TcxGroupBox;
    grp1: TcxGroupBox;
    cxButton12: TcxButton;
    pb1: TAdvProgressBar;
    AdvProgress1: TAdvProgressBar;
    cxCBAdA: TcxCheckBox;
    PnlHelp: TcxGroupBox;
    cxButton1: TcxButton;
    Label1: TLabel;
    cxBtnHelp: TcxButton;
    cxViewBranchSmsColumn1: TcxGridDBColumn;
    cbKeynumber01: TcxComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure btnSearchClick(Sender: TObject);
    procedure lbl43Click(Sender: TObject);
    procedure chkNameAddClick(Sender: TObject);
    procedure chkBrAddClick(Sender: TObject);
    procedure chkTelAddClick(Sender: TObject);
    procedure mm_messageKeyPress(Sender: TObject; var Key: Char);
    procedure mm_messageKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSetMsg1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSendMsgClick(Sender: TObject);
    procedure rbchk_reClick(Sender: TObject);
    procedure chkBalsinClick(Sender: TObject);
    procedure btnPreViewClick(Sender: TObject);
    procedure btnInsertCharClick(Sender: TObject);
    procedure cbb_cust_nameChange(Sender: TObject);
    procedure chkNotSmsClick(Sender: TObject);
    procedure btnDateMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbl41MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure mm_messageKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtSplitMinKeyPress(Sender: TObject; var Key: Char);
    procedure ed_sendKeyPress(Sender: TObject; var Key: Char);
    procedure edt_BalsinKeyPress(Sender: TObject; var Key: Char);
    procedure chkSplitClick(Sender: TObject);
    procedure chkRemoveUserClick(Sender: TObject);
    procedure chkMileAddClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure mm_messageMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton12Click(Sender: TObject);
    procedure cxCBAdAClick(Sender: TObject);
    procedure cxBtnHelpClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure PnlHelpMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    SMSCASH : Double;

    lCurProperties : TcxCurrencyEditProperties;

    FNoRecvDispList: Boolean;

    FRmvMemList,
    FRmvWkList: TStringList;
    FNoRecvList: TStringList;

    procedure proc_init_sendsms;
    procedure proc_free_sendsms;

    function GetRowIndexSameValue(AcxView: TcxGridDBTableView; ACol: Integer; AValue: string;
      ADefault: Integer = -1): Integer; // default -1(nothing)
    procedure RecvResultSendSmsBranchList(ls_rxxml: WideString);
    procedure RecvResultFileRmvMember(AList: TStringList);
    procedure RecvResultFileRmvWorker(AList: TStringList);
    procedure RequestDataList(AData: string);
    function GetCallmanerSMSList(const APath: string; var AData: string): Boolean;
    procedure RecvResultBrCashInfo(ls_rxxml: WideString);

        // 서버 시간 로드
    function func_sysdate: string;
    procedure proc_recieve(ls_rxxml: Widestring);
    procedure RequestData(AData: string);
    procedure proc_stab_ref(sBR_NO: string);
  public
    { Public declarations }
    dt_sysdate2: string;
    procedure proc_init;
    procedure proc_BranchChange;
    // 전문 응답 처리
    procedure proc_recieve_list(AList: TStringList);
    function func_recieve(ls_rxxml: Widestring): Boolean;
    function func_res_cnt(sTime: string): Integer;
    function func_first_check(sBr_No: AnsiString; iTotalCnt, iType, iRow:
      Integer): string;
    function SMS_Send(ss_SendText: AnsiString; socket: TIdTCPClient;
      iTimeout: Integer = 5000): AnsiString;
    function SMS_Send2(ss_SendText: AnsiString; socket: TIdTCPClient;
      tout: integer = 5000): AnsiString;
    function SMS_Recieve(socket: TIdTCPClient): AnsiString;

    procedure proc_branch_sms;
    procedure proc_BrNameSet;
    procedure DisplayCashInfo;
    procedure prc_Test;  // test
  end;

  function GetFileDesc(APath: string): string;

var
  Frm_SMSA1: TFrm_SMSA1;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_XmlProtocal, xe_xml, xe_Flash, xe_system;


type
  TEncryptType = (etBlowfish = 100);

const
  CallSMSKey = 'l2t7y9we5bv6m7am4fs79gs4d5a7zj4u';

Var
  SMSEncryptData: array of Byte;

procedure TFrm_SMSA1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  proc_free_sendsms;

  FreeAndNil(lCurProperties);

  if Assigned(FRmvMemList) then FreeAndNil(FRmvMemList);
  if Assigned(FRmvWkList) then FreeAndNil(FRmvWkList);
  if Assigned(FNoRecvList) then FreeAndNil(FNoRecvList);

  Action := Cafree;
end;

procedure TFrm_SMSA1.proc_free_sendsms;
var
  ln_envfile: TIniFile;
begin
  ln_envfile := TIniFile.Create(DBDIRECTORY + 'SMS.Ini');
  try
    ln_envfile.WriteString('USER_1', 'Memo1', StringReplace(Memo1.Text, #13#10, '㏆', [rfReplaceAll]));
    ln_envfile.WriteString('USER_1', 'Memo2', StringReplace(Memo2.Text, #13#10, '㏆', [rfReplaceAll]));
    ln_envfile.WriteString('USER_1', 'Memo3', StringReplace(Memo3.Text, #13#10, '㏆', [rfReplaceAll]));
    ln_envfile.WriteString('USER_1', 'Memo5', StringReplace(Memo5.Text, #13#10, '㏆', [rfReplaceAll]));
    ln_envfile.WriteString('USER_1', 'Memo6', StringReplace(Memo6.Text, #13#10, '㏆', [rfReplaceAll]));
    ln_envfile.WriteString('USER_1', 'Memo7', StringReplace(Memo7.Text, #13#10, '㏆', [rfReplaceAll]));
    ln_envfile.WriteString('USER_1', 'Memo9', StringReplace(Memo9.Text, #13#10, '㏆', [rfReplaceAll]));
    ln_envfile.WriteString('USER_1', 'Memo10', StringReplace(Memo10.Text, #13#10, '㏆', [rfReplaceAll]));
    ln_envfile.WriteString('USER_1', 'Memo11', StringReplace(Memo11.Text, #13#10, '㏆', [rfReplaceAll]));
  finally
    ln_envfile.Free;
  end;
end;

procedure TFrm_SMSA1.proc_BranchChange;
begin
  proc_BrNameSet;
end;

procedure TFrm_SMSA1.proc_recieve_list(AList: TStringList);
var
  xdom: msDomDocument;
  ls_ClientKey, ls_Msg_Err, ls_rxxml: string;
begin
  try
    xdom := ComsDomDocument.Create;
    Screen.Cursor := crHourGlass;
    try
      ls_rxxml := AList[0];
      if not xdom.loadXML(ls_rxxml) then
      begin
        Screen.Cursor := crDefault;
        Exit;
      end;

      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_ClientKey := GetXmlClientKey(ls_rxxml);

        if ls_ClientKey = 'RMVMEM' then
          RecvResultFileRmvMember(AList)
        else if ls_ClientKey = 'RMVWK' then
          RecvResultFileRmvWorker(AList)
        ;
      end else
      begin
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
      end;
    finally
      Screen.Cursor := crDefault;
      xdom := Nil;
    end;
  except
  end;
end;

procedure TFrm_SMSA1.FormCreate(Sender: TObject);
Var i : Integer;
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

  // 권한 적용 (버튼, 에디트박스...)
//------------------------------------------------------------------------------
// 메뉴표시 처리
// [hjf] DB메뉴 정보 변경할 수 없어 임시 주석처리
//------------------------------------------------------------------------------
  FRmvMemList := TStringList.Create;
  FRmvWkList  := TStringList.Create;

  lCurProperties := TcxCurrencyEditProperties.Create(Nil);

  FNoRecvList := TStringList.Create;
  FNoRecvList.Duplicates := dupIgnore;
  FNoRecvList.Sorted := True;

  proc_init;
end;

procedure TFrm_SMSA1.FormDestroy(Sender: TObject);
begin
  Frm_SMSA1 := Nil;
end;

procedure TFrm_SMSA1.proc_init;
begin
  proc_init_sendsms;

  proc_BrNameSet;
end;

procedure TFrm_SMSA1.proc_init_sendsms;
var
  I: Integer;
  ln_envfile: TIniFile;
begin
  cxPageControl2.ActivePageIndex := 0;

  try
    // 금액관련 설정
    lCurProperties.ReadOnly := True;
    lCurProperties.DisplayFormat := '###,##0';
    lCurProperties.Alignment.Horz := taRightJustify;
    lCurProperties.Alignment.Vert := taVCenter;
    lCurProperties.Nullable := True;
    if TCK_USER_PER.JON_BrchCashView = '1' then
      lCurProperties.EchoMode := eemNormal
    else
      lCurProperties.EchoMode := eemPassword;

    // 지사그리드
    cxViewBranchSms.Columns[0].DataBinding.ValueType := 'String';
    cxViewBranchSms.Columns[1].DataBinding.ValueType := 'Currency';
    cxViewBranchSms.Columns[1].Properties := lCurProperties;
    lCurProperties.DisplayFormat := '###,##0.#';
    cxViewBranchSms.Columns[2].DataBinding.ValueType := 'Currency';
    cxViewBranchSms.Columns[2].Properties := lCurProperties;
    cxViewBranchSms.Columns[3].DataBinding.ValueType := 'Currency';
    cxViewBranchSms.Columns[3].Properties := lCurProperties;
    cxViewBranchSms.Columns[4].DataBinding.ValueType := 'String';
    cxViewBranchSms.Columns[5].DataBinding.ValueType := 'String';
    cxViewBranchSms.Columns[6].DataBinding.ValueType := 'Currency';
    cxViewBranchSms.Columns[6].Properties := lCurProperties;
    cxViewBranchSms.DataController.SetRecordCount(0);

    // 전송메시지
    for I := 0 to cxViewMsgList.ColumnCount - 1 do
      cxViewMsgList.Columns[i].DataBinding.ValueType := 'String';

    // 전송메시지(내부)
    for I := 0 to cxViewSendSms.ColumnCount - 1 do
      cxViewSendSms.Columns[i].DataBinding.ValueType := 'String';

    // 대표번호별 사용자 수
    cxViewKeyNum.Columns[0].DataBinding.ValueType := 'String';
    cxViewKeyNum.Columns[1].DataBinding.ValueType := 'String';
    cxViewKeyNum.Columns[2].DataBinding.ValueType := 'Integer';

    //
    for I := 0 to cxViewSms.ColumnCount - 1 do
      cxViewSms.Columns[i].DataBinding.ValueType := 'String';
    cxViewSms.Columns[6].DataBinding.ValueType := 'Currency';
  except
  end;

  try
    if SMSCASH > 0 then
    begin
      lblSMSCaption.Caption := '(광고 SMS는 건당 ' + FormatFloat('#,##0.#', SMSCASH) + '원 (VAT포함))';
    end;

   //80->90Byte로 변경 2011.11.25 KHS
    Memo1.Properties.MaxLength := 90;
    Memo2.Properties.MaxLength := 90;
    Memo3.Properties.MaxLength := 90;
    Memo5.Properties.MaxLength := 90;
    Memo6.Properties.MaxLength := 90;
    Memo7.Properties.MaxLength := 90;
    Memo9.Properties.MaxLength := 90;
    Memo10.Properties.MaxLength := 90;
    Memo11.Properties.MaxLength := 90;
    ln_envfile := TIniFile.Create(DBDIRECTORY + 'SMS.Ini');
    try
      Memo1.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo1', ''), '㏆', #13#10, [rfReplaceAll]);
      Memo2.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo2', ''), '㏆', #13#10, [rfReplaceAll]);
      Memo3.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo3', ''), '㏆', #13#10, [rfReplaceAll]);
      Memo5.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo5', ''), '㏆', #13#10, [rfReplaceAll]);
      Memo6.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo6', ''), '㏆', #13#10, [rfReplaceAll]);
      Memo7.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo7', ''), '㏆', #13#10, [rfReplaceAll]);
      Memo9.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo9', ''), '㏆', #13#10, [rfReplaceAll]);
      Memo10.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo10', ''), '㏆', #13#10, [rfReplaceAll]);
      Memo11.Text := StringReplace(ln_envfile.ReadString('USER_1', 'Memo11', ''), '㏆', #13#10, [rfReplaceAll]);
    finally
      ln_envfile.Free;
    end;
    mm_message.Properties.MaxLength := 100;
    mm_message.Text := '';

    AdvProgress1.Position := 0;
    dtp_date.Date := now;
    rbchk_re.Checked := False;
    ed_send.Enabled := False;
    rbchk_reClick(rbchk_re);
  except
  end;
end;

procedure TFrm_SMSA1.cxButton12Click(Sender: TObject);
begin
  pnl_Char.Visible := False;
end;

procedure TFrm_SMSA1.cxButton1Click(Sender: TObject);
begin
  PnlHelp.Visible := False;
end;

procedure TFrm_SMSA1.cxBtnHelpClick(Sender: TObject);
begin
//  PnlHelp.Left := ( PnlMain.Width  - PnlHelp.Width ) div 2;
//  PnlHelp.Top  := ((PnlMain.Height - PnlHelp.Height) div 2) - 50;

  PnlHelp.BringToFront;
  PnlHelp.Visible := True;
end;

procedure TFrm_SMSA1.cxCBAdAClick(Sender: TObject);
Var Len : Integer;
begin
  if cxCBAdA.Checked then
  begin
    mm_message.Text := '(광고)'+#13#10+
                       '회사명 or 서비스명'+#13#10+#13#10+#13#10+
                       '무료거부:080-';
  end else
  begin
    mm_message.Text := '';
  end;

  Len := GetSmsMemoLength(AnsiString(mm_message.Text));
  cxLabel16.Caption := IntToStr(Len);
end;

procedure TFrm_SMSA1.cxViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
var
  I: Integer;
begin
  try
    for I := 0 to Sender.ColumnCount - 1 do
    begin
      if I <> AColumn.Index then
      begin
        Sender.Columns[I].SortIndex := -1;
        Sender.Columns[I].SortOrder := soNone;
      end;
    end;

    if (Sender.Columns[AColumn.Index].SortOrder = soNone) or
      (Sender.Columns[AColumn.Index].SortOrder = soDescending) then
      Sender.Columns[AColumn.Index].SortOrder := soAscending
    else
      Sender.Columns[AColumn.Index].SortOrder := soDescending
    ;

    Sender.Columns[AColumn.Index].SortIndex := 0;
    Sender.DataController.FocusedRecordIndex := 0;
  except on E: Exception do
      GMessagebox(PChar('frmChild[cxgGrid1ColumnHeaderClick]Error:' + E.Message), CDMSE);
  end;
end;

procedure TFrm_SMSA1.btnSearchClick(Sender: TObject);
begin
  ///
end;

procedure TFrm_SMSA1.lbl43Click(Sender: TObject);
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
        if fCheckMaxLength(TcxMemo(Components[i]), 90) then
        begin
          s := TcxMemo(Components[i]).Text;
          s := Copy(s, 1, 90);
          TcxMemo(Components[i]).Text := s;
        end;
      end;

    end;
  end;
end;

procedure TFrm_SMSA1.chkNameAddClick(Sender: TObject);
var
  s, s1: wideString;
const
  sTarget = '<$고객명$>';
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
  end
  else
    mm_message.Text := StringReplace(mm_message.Text, sTarget, '', [rfReplaceAll]);

  cxLabel16.Caption := IntToStr(Length(AnsiString(mm_message.Text)));
  mm_message.SetFocus;
end;

procedure TFrm_SMSA1.chkBrAddClick(Sender: TObject);
var
  s, s1: wideString;
const
  sTarget = '<$지사명$>';
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
  end
  else
    mm_message.Text := StringReplace(mm_message.Text, sTarget, '', [rfReplaceAll]);

  cxLabel16.Caption := IntToStr(Length(AnsiString(mm_message.Text)));
  mm_message.SetFocus;
end;

procedure TFrm_SMSA1.chkTelAddClick(Sender: TObject);
var
  s, s1: wideString;
const
  sTarget = '<$대표번호$>';
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
  end
  else
    mm_message.Text := StringReplace(mm_message.Text, sTarget, '', [rfReplaceAll]);

  cxLabel16.Caption := IntToStr(Length(AnsiString(mm_message.Text)));
  mm_message.SetFocus;
end;

procedure TFrm_SMSA1.mm_messageKeyPress(Sender: TObject; var Key: Char);
var
  Len: Integer;
begin
  if Ord(Key) = VK_BACK then Exit;

  Len := GetSmsMemoLength(AnsiString(TcxMemo(Sender).Text));
	cxLabel16.Caption := IntToStr(Len);
  if Key = #3 then Exit;

  if Len >= 90 then
  begin
    Key := #0;
    Exit;
  end;
end;

procedure TFrm_SMSA1.mm_messageKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Ord(key) = VK_F5 then
  begin
    pnl_Char.Left := btnInsertChar.Left;
    pnl_Char.Top := btnInsertChar.Top + btnInsertChar.Height + 2;
    pnl_Char.Tag := TcxMemo(Sender).tag;
    pnl_Char.Visible := True;
    pnl_Char.BringToFront;
  end;
end;

procedure TFrm_SMSA1.btnSetMsg1Click(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TcxMemo) and (TcxMemo(Components[i]).Tag =
      TcxButton(Sender).Tag) then
    begin
      mm_message.Text := TcxMemo(Components[i]).Text;
      cxLabel16.Caption := IntToStr(Length(AnsiString(mm_message.Text)));
    end;
  end;
end;

procedure TFrm_SMSA1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
  begin
    if ActiveControl.Name = 'ed_receiver' then
      ed_send.SetFocus
    else
      if ActiveControl.Name = 'ed_send' then
    begin
      if IDOK = GMessagebox(CMS011, CDMSQ) then
        btnSendMsgClick(nil)
      else
        Exit;
    end;
  end;
end;


function TFrm_SMSA1.func_sysdate: string;
var
  ls_TxLoad, rv_str: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Msg_Err: string;
  ls_Rcrd: TStringList;
  ls_ClientKey: string;
  s: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
  try
    Result := '';

    ls_TxLoad := GetSel01('SYST0001', 'SELECT SYSDATE FROM CDMS_SYSCODE WHERE ROWNUM = 1');

    Screen.Cursor := crHandPoint;
    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if trim(rv_str) <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          xdom := ComsDomDocument.Create;
          try
            if not xdom.loadXML(ls_rxxml) then
            begin
              Screen.Cursor := crDefault;
              Exit;
            end;
            ls_ClientKey := GetXmlClientKey(ls_rxxml);
            ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' = ls_Msg_Err) then
            begin
              if ls_ClientKey = 'SYST0001' then
              begin
                lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                ls_Rcrd := TStringList.Create;
                try
                  GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
                  s := ls_Rcrd[0];
                finally
                  ls_Rcrd.Free;
                end;
                s := StringReplace(s, ' ', '', [rfReplaceAll]);
                s := StringReplace(s, '-', '', [rfReplaceAll]);
                s := StringReplace(s, ':', '', [rfReplaceAll]);
                Result := s;
              end;
            end
            else
            begin
              GMessagebox(ls_Msg_Err, CDMSE);
            end;
          finally
            xdom := Nil;
          end;
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
    Screen.Cursor := crDefault;
  except
    on e: exception do
    begin
      ls_TxLoad := 'frmMain[func_sysdate]:' + e.Message;
      Result := '';
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_SMSA1.btnSendMsgClick(Sender: TObject);
var
  i, iBrNo, iCnt, iRow, iRowcnt, itotalcnt, iResCnt, iSentCount: Integer;
  sBrNo, sDate, sCust_Tel, sRTime, Msg, sSmsResult : string;
  sSendTxt : AnsiString;
  SendTime, MaxTime: TDateTime;
  IsSplitSend: Boolean;
	SplitMin, SplitCnt, MinCount, TotalCnt: Integer;
  // 2011.01.12
  tm_nowdate: string;
  tm_reqdate: string;
	Error_CHK : string;
	AReceicer, ASender, AMessage, AReservtm : AnsiString;
begin


	SendTime := 1;
	btnSendMsg.Enabled := False;
  try
    try
			// 2011.01.12 과거시간으로 예약제한
			if rbchk_re.Checked then
      begin
        // 현재시간(DB시간과 로그인시 동기화)
      //  tm_nowdate:=FormatDateTime('YYYY-MM-DD hh:mm',Now());

        tm_nowdate:=func_sysdate;
        if Length(tm_nowdate)>=12 then
        begin
          tm_nowdate:=Copy(tm_nowdate,1,4)+'-'+copy(tm_nowdate,5,2)+'-'+copy(tm_nowdate,7,2)+' '+copy(tm_nowdate,9,2)+':'+copy(tm_nowdate,11,2);
        end;
        // 예약시간
        tm_reqdate:=formatdatetime('YYYY-MM-DD ',dtp_date.Date) + se_time1.Text + ':' + se_time2.text;
        if tm_nowdate>tm_reqdate then
        begin
          GMessagebox('과거시간으로 예약은 불가합니다.' + #13#10 + '(' + '현재시간 : ' + tm_nowdate + ')',cdmsI);
          exit;
        end;
      end;
      iRow := GetRowIndexSameValue(cxViewBranchSms, 4, '불가');
      if iRow > -1 then
      begin
        GMessagebox('SMS 캐쉬가 부족한 지사가 있습니다.' + #13#10 +
          '부족한 지사에 SMS캐쉬를 충전해 주세요', CDMSE);
        exit;
      end;

      if cxViewSendSms.DataController.RecordCount = 0 then
      begin
        GMessagebox('[미리보기(조합)] 버튼 을 이용하여 메시지 조합을 먼저해주세요.', CDMSE);
        Exit;
      end;

      dt_sysdate2 := frm_main.func_sysdate;
      if dt_sysdate2 = '' then
      begin
        GMessagebox('다시한번 보내기 버튼을 눌러주세요', CDMSI);
        exit;
      end;
      if trim(mm_message.Text) = '' then
      begin
        GMessagebox('메세지 내용이 없습니다.', cdmsi);
        exit;
      end;

      sRTime := IntToStr(se_Time1.Value) + LPad(IntToStr(se_time2.Value), '0', 2);
      //----------------------------------------------------------------------------------------------------
      //      예약시간및, 전송시간 체크
      //----------------------------------------------------------------------------------------------------
      if GT_USERIF.HD <> 'A100' then
      begin
        if ((StrToIntdef(sRTime, 200) > 2040) or (se_Time1.Value < 9)) and (se_Time1.Enabled) then
        begin
          GMessagebox('오후 8시40분 부터 오전 9시 사이에보내는 SMS광고를 예약 할 수 없습니다.', CDMSE);
          exit;
        end;

        if (StrToInt(copy(dt_sysdate2, 9, 4)) >= 2040) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 900) then
        begin
          GMessagebox('오후 8시40분부터 오전 9시 사이에는 SMS광고를 보낼 수 없습니다.', CDMSE);
          exit;
        end;
      end;

      IsSplitSend := chkSplit.Checked;
      if IsSplitSend then
      begin
        if (StrToIntDef(edtSplitMin.Text, -1) = -1) or (StrToIntDef(edtSplitCnt.Text, -1) = -1) then
        begin
          GMessagebox('분할전송 내용을 확인해주세요.', CDMSE);
          Exit;
        end;

        if rbchk_re.Checked then
          SendTime := Trunc(dtp_date.Date) + EncodeTime(se_time1.Value, se_time2.Value, 0, 0)
        else
          SendTime := Now;

        TotalCnt := StrToIntDef(mmoAfter.Text, 0);
        SplitMin := StrToInt(edtSplitMin.Text);
        SplitCnt := StrToInt(edtSplitCnt.Text);

        MinCount := (((TotalCnt-1) div SplitCnt) + 1) * SplitMin;
        MaxTime   := SendTime + MinCount*1/24/60;

        if FormatDateTime('YYYYMMDDHHNN', MaxTime) >= FormatDateTime('YYYYMMDD', SendTime) + '2040' then
        begin
          Msg := Format('요청하신 분할전송이 [%s]에 완료 됩니다.'#13#10 +
            '(오후 8시40분부터 오전 9시 사이에는 SMS광고를 보낼 수 없습니다.)', [FormatDateTime('MM-DD HH:NN', MaxTime)]);
          GMessagebox(Msg, CDMSE);
          Exit;
        end;
      end;

      itotalcnt := 0;
      for I := 0 to cxViewBranchSms.DataController.RecordCount - 1 do
        itotalcnt := itotalcnt + StrToIntDef(RemoveComma(cxViewBranchSms.ViewData.Records[I].Values[1]), 0);

      if itotalcnt > 2000 then
      begin
        if rbchk_re.Checked then
          sDate := formatdatetime('yyyymmdd', dtp_date.Date)
            + LPAD(IntToStr(se_Time1.Value), '0', 2)
            + LPad(IntToStr(Se_Time2.Value), '0', 2) + '00'
        else
          sDate := formatdatetime('yyyymmddhhmmss', Now);
        iResCnt := func_res_cnt(sDate);
        if iResCnt = -1 then
        begin
          GMessagebox('서버와 연결상태가 안좋습니다' + #13#10 +
            '다시한번 시도하세요', CDMSI);
          exit;
        end;
      end;

      AdvProgress1.Max := StrToIntDef(mmoAfter.Text, 0);
      sBrno := '';
      AdvProgress1.Position := 0;
      mmo_log.Lines.Clear;
      Cursor := crHourGlass;

			//----------------------------------------------------------------------------------------------------
      //   광고 전송 ( 지사별로 나누어서 전송 )
      //   SMS파일전송_전문설계서.doc 참고
      //----------------------------------------------------------------------------------------------------
			itotalcnt := 0;
			iSentCount := 0;
			
			for iBrNo := 0 to cxViewBranchSms.DataController.RecordCount - 1 do
      begin
        sBrNo := cxViewBranchSms.ViewData.Records[iBrNo].Values[5];
        iCnt := StrToIntDef(RemoveComma(cxViewBranchSms.ViewData.Records[iBrNo].Values[1]), 0);
        mmo_log.Lines.Add('[' + sBrNo + ']에 ' + IntToStr(iCnt) + '건 요청');
        if iCnt > 0 then
        begin
					iRow := GetRowIndexSameValue(cxViewSendSms, 0, sBrNo);
					Error_CHK := func_first_check(sBrNo, iCnt, 0, iRow);
					if Error_CHK = '00' then
					begin
						mmo_log.Lines.Add('[' + sBrNo + ']에 ' + IntToStr(iCnt) + '건 승인');
						func_first_check(sBrNo, iCnt, 1, iRow);
						mmo_log.Lines.Add('[' + sBrNo + ']에 ' + IntToStr(iCnt) + '건 확인');
						iRowcnt := 0;
						AdvProgress1.Max := iCnt;
						AdvProgress1.Position := 0;
						mmo_log.Lines.Add('[' + sBrNo + ']에 ' + IntToStr(iCnt) + '건, 목록: ' + IntToStr(cxViewSendSms.DataController.RecordCount));

{						ASender   := Rpad('',  16, ' ');
						ASender   := StringReplace(cxViewSendSms.ViewData.Records[0].Values[2], '-', '', [rfReplaceAll]) + ASender;
						ASender   := copy(ASender, 1, 16);           // 대표번호
							
						// 예약시간 설정
						if chkSplit.Checked then
						begin
							sDate := FormatDateTime('YYYYMMDDHHNN', SendTime + (1/24/60 * (iSentCount div SplitCnt) * SplitMin)) + '00';
						end
						else
						begin
							if rbchk_re.Checked then
								sDate := formatdatetime('yyyymmdd', dtp_date.Date) + LPAD(IntToStr(se_Time1.Value), '0', 2) + LPad(IntToStr(Se_Time2.Value), '0', 2) + '00'
							else
								sDate := dt_sysdate2;
						end;
						AReservtm := Rpad('',  14, ' ');
						AReservtm := sDate + AReservtm;
						AReservtm := copy(AReservtm, 1, 14);   }       //발송일자

						while iCnt > iRowcnt do
						begin
							Application.ProcessMessages;
							sCust_Tel := Trim(cxViewSendSms.ViewData.Records[iRow + iRowCnt].Values[3]);
              sCust_Tel := StringReplace(sCust_Tel, '-', '', [rfReplaceAll]);

              sSendTxt := '';
              if length(sCust_Tel) >= 12 then
              begin
                inc(iRowcnt);
                continue;
              end;
//              mmo_log.Lines.Add('[' + sBrNo + ']에 ' + IntToStr(iRowcnt) + '번째 전송');

							// 예약시간 설정
							if chkSplit.Checked then
							begin
								sDate := FormatDateTime('YYYYMMDDHHNN', SendTime + (1/24/60 * (iSentCount div SplitCnt) * SplitMin)) + '00';
							end
							else
							begin
								if rbchk_re.Checked then
									sDate := formatdatetime('yyyymmdd', dtp_date.Date) + LPAD(IntToStr(se_Time1.Value), '0', 2) + LPad(IntToStr(Se_Time2.Value), '0', 2) + '00'
								else
									sDate := dt_sysdate2;
							end;  

							AReceicer := Rpad('',  16, ' ');
							AReceicer := sCust_Tel + AReceicer;
							AReceicer := copy(AReceicer, 1, 16);        //수신자번호

							ASender   := Rpad('',  16, ' ');
							ASender   := StringReplace(cxViewSendSms.ViewData.Records[iRow + iRowCnt].Values[2], '-', '', [rfReplaceAll]) + ASender;
							ASender   := copy(ASender, 1, 16);           // 대표번호
							
							AMessage  := Rpad('', 100, ' ');
							AMessage  := StringReplace(cxViewSendSms.ViewData.Records[iRow + iRowCnt].Values[4], #13, '', [rfReplaceAll]) + AMessage;
							AMessage  := copy(AMessage, 1, 100);         //문자내용
							
							AReservtm := Rpad('',  14, ' ');
							AReservtm := sDate + AReservtm;
							AReservtm := copy(AReservtm, 1, 14);          //발송일자

							sSendTxt  := AReceicer + ASender + AMessage + AReservtm;
{							sSendTxt := RPad(sCust_Tel, 16, ' ')
									+ Rpad(StringReplace(cxViewSendSms.ViewData.Records[iRow + iRowCnt].Values[2], '-', '', [rfReplaceAll]),  16, ' ')
									+ RPad(StringReplace(cxViewSendSms.ViewData.Records[iRow + iRowCnt].Values[4], #13, '', [rfReplaceAll]), 100, ' ')     //80->90Byte로 변경 2011.11.25 KHS
									+ RPad(sDate, 14, ' ');   }
							SMS_Send(sSendTxt, itcSMS, 2000);
							inc(iRowcnt);
              Inc(iSentCount);
              AdvProgress1.Position := iSentCount;
            end;

            itotalcnt := itotalcnt + iCnt;

            sSmsResult := Copy(SMS_Recieve(itcSMS), 23, 2);
            if sSmsResult = '01' then
            begin
              mmo_log.Lines.Add('[' + sBrNo + ']에 ' + IntToStr(iCnt) + '건 응답 실패');
              ShowMessage('알 수 없는 오류 입니다..' + #13#10 + '잠시 후 다시 시도해 주십시오.');
              Exit;
            end
            else if sSmsResult = '21' then
            begin
              mmo_log.Lines.Add('[' + sBrNo + ']에 ' + IntToStr(iCnt) + '건 응답 실패');
              ShowMessage('수신데이터가 없습니다...' + #13#10 + '잠시 후 다시 시도해 주십시오.');
              Exit;
            end
            else if sSmsResult = '00' then
              mmo_log.Lines.Add('[' + sBrNo + ']에 ' + IntToStr(iCnt) + '건 응답 성공')
            else
            begin
              mmo_log.Lines.Add('[' + sBrNo + ']에 ' + IntToStr(iCnt) + '건 응답 실패');
              ShowMessage('알 수 없는 오류 입니다..' + #13#10 + '잠시 후 다시 시도해 주십시오.');
              Exit;
            end;
          end else
          if Error_CHK = '12' then //func_first_check(sBrNo, iCnt, 0, iRow) = '12' then
          begin
            ShowMessage('SMS캐쉬가 부족합니다.' + #13#10 + 'SMS캐쉬를 충전하시고 시도바랍니다.');
            Exit;
          end
          else if Error_CHK = '11' then
          begin
            ShowMessage('지사코드 오류입니다..' + #13#10 + '지사코드를 확인하시고 시도바랍니다.');
            Exit;
          end
          else if Error_CHK = '01' then
          begin
            ShowMessage('알 수 없는 오류 입니다..' + #13#10 + '잠시 후 다시 시도해 주십시오.');
            Exit;
          end
          else
          begin
            ShowMessage('서버접속 실패 입니다..' + #13#10 + '잠시 후 다시 시도해 주십시오.');
            Exit;
          end;
        end;
        mmo_log.Lines.Add('[' + sBrNo + ']에 전송 완료')
      end;
      GMessagebox(IntToStr(itotalcnt) + '건 전송하였습니다.', CDMSI);
    except on E: Exception do
      begin
        mmo_log.Lines.Add(Format('[' + sBrNo + ']에 전송 시 오류발생[%s]', [E.Message]));
        Assert(False, E.Message);
      end;
    end;
  finally
    Cursor := crDefault;
    btnSendMsg.Enabled := True;
  end;
end;

procedure TFrm_SMSA1.rbchk_reClick(Sender: TObject);
begin
  dtp_date.Enabled := rbchk_re.Checked;
  se_time1.Enabled := rbchk_re.Checked;
  se_time2.Enabled := rbchk_re.Checked;

  if rbchk_re.Checked then
  begin
    dtp_date.Date := Date;
    se_Time1.Value := StrToIntDef(formatdatetime('hh', now), 0);
    se_time2.Value := StrToIntDef(Copy(formatdatetime('hh:mm', now), 4, 2), 0);

    dtp_date.SetFocus;
  end;
end;

procedure TFrm_SMSA1.chkBalsinClick(Sender: TObject);
begin
  if chkBalsin.Checked then
  begin
    cbKeynumber01.Visible := True;
  end else
  begin
    cbKeynumber01.Visible := False;
    ed_send.Text := '자동삽입';
    ed_send.Enabled := False;
  end;
end;

procedure TFrm_SMSA1.proc_branch_sms;
var
  i, iRow, iTotal, Idx, RowIdx: Integer;
  sBrCode, sBranch_Name, sCnt, sq_brch: string;
begin
  sq_brch := '';
  //  cxGridSendSms.Visible := False;
  cxViewBranchSms.DataController.SetRecordCount(0);

  iTotal := 0;

  cxViewKeyNum.BeginUpdate;
  try
    for I := 0 to cxViewKeyNum.DataController.RecordCount - 1 do
    begin
      sBrCode := cxViewKeyNum.ViewData.Records[i].Values[0];
      if sBrCode = '' then
        Continue;

      Idx := scb_BranchCode.IndexOf(sBrCode);
      iRow := GetRowIndexSameValue(cxViewBranchSms, 5, sBrCode);
      sCnt := cxViewKeyNum.ViewData.Records[i].Values[2];
      iTotal := iTotal + StrToIntDef(sCnt, 0);
      if (Idx > -1) and (Idx < scb_BranchName.Count) then
        sBranch_Name := scb_BranchName.Strings[Idx]
      else
        sBranch_Name := '';

      if iRow > -1 then
      begin
        cxViewBranchSms.DataController.Values[iRow, 1] := StrToIntDef(cxViewBranchSms.ViewData.Records[iRow].Values[1], 0) + StrToIntDef(sCnt, 0);
      end else
      begin
        RowIdx := cxViewBranchSms.DataController.AppendRecord;
        cxViewBranchSms.DataController.SetValue(RowIdx, 0, sBranch_Name);
        cxViewBranchSms.DataController.SetValue(RowIdx, 5, sBrCode);
        cxViewBranchSms.DataController.SetValue(RowIdx, 1, sCnt);

        if sq_brch = '' then
          sq_brch := '''' + sBrcode + ''' '
        else
          sq_brch := sq_brch + ',''' + sBrCode + ''' ';
      end;
    end;
  finally
    cxViewKeyNum.EndUpdate;
  end;
  mmoBefore.Text := IntToStr(iTotal);
  if sq_brch <> '' then
    proc_stab_ref(sq_brch);
end;

procedure TFrm_SMSA1.btnPreViewClick(Sender: TObject);
var
  dblCash, dblDan : Double;
  iCnt, iRow, iBrNo, i, j, k, iSrow, irowcnt: Integer;
  sBrNo, sMessage, sBrName, sName, sBalsin, sMsg: string;
  sSms_Not_agree: array[0..1, 0..14] of string;
  sList, sList_Kt: TStringList;
  sList_Text: string;
  RowIdx: Integer;
  TelNo: string;
  sTemp: string;
  BeforeTel: string;
  DuplicateTel: Boolean;
  AddCnt: Integer;

  FNotAgreeUser,
  FNotAgreeKT,
  FNotAgreeCmn: string;
begin
	try
    if Trim(mm_message.Text) = '' then
    begin
      GMessagebox('작성한 메세지가 없습니다.', cdmsi);
      mm_message.SetFocus;
      exit;
    end;
    BeforeTel := '';

    cxViewSendSms.DataController.SetRecordCount(0);

    btnPreView.Enabled := False;
    btnSendMsg.Enabled := False;

    pnlSmsStatus.Left := (frm_main.Width - pnlSmsStatus.Width) div 2;
    pnlSmsStatus.Top := ((frm_main.Height - pnlSmsStatus.Height) div 2) - Self.Top;
    pnlSmsStatus.Visible := True;
    pnlSmsStatus.Caption := '정통부지정 수신거부 파일 및 PC내 수신거부 파일 비교 제거 중';
    Application.ProcessMessages;

    try
      //----------------------------------------------------------------------------------------------------
      //  지사별 전송갯수 체크
      //----------------------------------------------------------------------------------------------------
      proc_branch_sms;
      AdvProgress1.Position := 0;
      AdvProgress1.Max := cxViewSms.DataController.RowCount;

      DoubleBuffered := True;
      sList := TStringList.Create;
      sList.Clear;
//      sList.Duplicates := dupignore;
//      sList.Sorted := True;
{
      sList_Kt := TStringList.Create;
      sList_Kt.Clear;
      sList_Kt.Duplicates := dupignore;
      sList_Kt.Sorted := True;
}      
      //----------------------------------------------------------------------------------------------------
      //  수신거부자 리스트 로드
      //  ( SMS_NOT_ARGEE.TXT : PC에 저장된 수신거부자(개인적으로 추가한 파일 )
      //  ( NOT_SMS_KT.TXT : 광고 전송 업체에서 수신거부자로 등록된 사람들 ( SMS 사업팀 김인환 대래한테 받은 파일 )
      //----------------------------------------------------------------------------------------------------
      // 사용자 수신거부 리스트

      FNotAgreeUser := GetFileDesc(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT');
      FNotAgreeKT   := GetFileDesc(DBDIRECTORY + 'NOT_SMS_KT.TXT');
      if GT_CALLMANNER_NOTSMS = 1 then
        if not GetCallmanerSMSList(DBDIRECTORY + 'Callmannersms.TXT', FNotAgreeCmn) then
          FNotAgreeCmn := '';

      sList.Text := FNotAgreeUser + #13#10 + FNotAgreeKT + #13#10 + FNotAgreeCmn;
      sList.Sort;
      FillChar(sSms_Not_agree, SizeOf(sSms_Not_agree), chr($00));

      sList_Text := sList.Text;
      sSms_Not_agree[0, 0] := copy(sList_Text, 7, pos(#$A'0101'#$D, sList_text) - 6) + #$D;
      sSms_Not_agree[0, 1] := copy_st(sList_Text, #$A'0101'#$D, #$A'0102'#$D) + #$D;
      sSms_Not_agree[0, 2] := copy_st(sList_Text, #$A'0102'#$D, #$A'0103'#$D) + #$D;
      sSms_Not_agree[0, 3] := copy_st(sList_Text, #$A'0103'#$D, #$A'0104'#$D) + #$D;
      sSms_Not_agree[0, 4] := copy_st(sList_Text, #$A'0104'#$D, #$A'0105'#$D) + #$D;
      sSms_Not_agree[0, 5] := copy_st(sList_Text, #$A'0105'#$D, #$A'0106'#$D) + #$D;
      sSms_Not_agree[0, 6] := copy_st(sList_Text, #$A'0106'#$D, #$A'0107'#$D) + #$D;
      sSms_Not_agree[0, 7] := copy_st(sList_Text, #$A'0107'#$D, #$A'0108'#$D) + #$D;
      sSms_Not_agree[0, 8] := copy_st(sList_Text, #$A'0108'#$D, #$A'0109'#$D) + #$D;
      sSms_Not_agree[0, 9] := copy_st(sList_Text, #$A'0109'#$D, #$A'0110'#$D) + #$D;
      sSms_Not_agree[0, 10] := copy_st(sList_Text, #$A'0110'#$D, #$A'0160'#$D) + #$D;
      sSms_Not_agree[0, 11] := copy_st(sList_Text, #$A'0160'#$D, #$A'0170'#$D) + #$D;
      sSms_Not_agree[0, 12] := copy_st(sList_Text, #$A'0170'#$D, #$A'0180'#$D) + #$D;
      sSms_Not_agree[0, 13] := copy_st(sList_Text, #$A'0180'#$D, #$A'0190'#$D) + #$D;
      sSms_Not_agree[0, 14] := copy_st(sList_Text, #$A'0190'#$D, #$A'0200'#$D) + #$D;

      FreeAndNil(sList);
          
{
      if FileExists(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT') then
        sList.LoadFromFile(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT');
      if pos('-', sList.Text) > 0 then
      begin
        sList.Text := StringReplace(sList.Text, '-', '', [rfReplaceAll]);
        sList.SaveToFile(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT');
      end;

      // KT 수신거부 리스트
      if FileExists(DBDIRECTORY + 'NOT_SMS_KT.TXT') then
      begin
        sList_kt.LoadFromFile(DBDIRECTORY + 'NOT_SMS_KT.TXT');
        sList_kt.Text := StringReplace(sList_kt.Text, '-', '', [rfReplaceAll]);
        sLIst.AddStrings(sList_Kt);
      end;
      //----------------------------------------------------------------------------------------------------
      // 수신거부자 제거 방법
      // 1. 수신거부자 정렬 ('0101','01010000000'...'0102','01020000000'...'0103'.....'0200')
      // 2. '0101' ~ '0102' 까지 sSms_Not_agree[0,0]..sSms_Not_agree[0,14] 복사
      // 3. 고객번호중 '0101' 로 시작하는 것은 sSms_Not_agree[0,0], '0102' 는 sSms_Not_agree[0,1] 에서 검색
      // 4. 수신거부자에 있으면 그번호는 전송안함
      //----------------------------------------------------------------------------------------------------

      if GT_CALLMANNER_NOTSMS = 1 then
      begin
        sList_kt.Clear;
        if FileExists(DBDIRECTORY + 'Callmannersms.TXT') then
        begin
          if GetCallmanerSMSList(DBDIRECTORY + 'Callmannersms.TXT', sList_Text) then
          begin
            sSms_Not_agree[1, 0] := copy(sList_Text, 7, pos(#$A'0101'#$D, sList_text) - 6) + #$D;
            sSms_Not_agree[1, 1] := copy_st(sList_Text, #$A'0101'#$D, #$A'0102'#$D) + #$D;
            sSms_Not_agree[1, 2] := copy_st(sList_Text, #$A'0102'#$D, #$A'0103'#$D) + #$D;
            sSms_Not_agree[1, 3] := copy_st(sList_Text, #$A'0103'#$D, #$A'0104'#$D) + #$D;
            sSms_Not_agree[1, 4] := copy_st(sList_Text, #$A'0104'#$D, #$A'0105'#$D) + #$D;
            sSms_Not_agree[1, 5] := copy_st(sList_Text, #$A'0105'#$D, #$A'0106'#$D) + #$D;
            sSms_Not_agree[1, 6] := copy_st(sList_Text, #$A'0106'#$D, #$A'0107'#$D) + #$D;
            sSms_Not_agree[1, 7] := copy_st(sList_Text, #$A'0107'#$D, #$A'0108'#$D) + #$D;
            sSms_Not_agree[1, 8] := copy_st(sList_Text, #$A'0108'#$D, #$A'0109'#$D) + #$D;
            sSms_Not_agree[1, 9] := copy_st(sList_Text, #$A'0109'#$D, #$A'0110'#$D) + #$D;
            sSms_Not_agree[1, 10] := copy_st(sList_Text, #$A'0110'#$D, #$A'0160'#$D) + #$D;
            sSms_Not_agree[1, 11] := copy_st(sList_Text, #$A'0160'#$D, #$A'0170'#$D) + #$D;
            sSms_Not_agree[1, 12] := copy_st(sList_Text, #$A'0170'#$D, #$A'0180'#$D) + #$D;
            sSms_Not_agree[1, 13] := copy_st(sList_Text, #$A'0180'#$D, #$A'0190'#$D) + #$D;
            sSms_Not_agree[1, 14] := copy_st(sList_Text, #$A'0190'#$D, #$A'0200'#$D) + #$D;
          end;
        end;
      end;

      FillChar(sSms_Not_agree, SizeOf(sSms_Not_agree), chr($00));

      sList_Text := sList.Text;
      sSms_Not_agree[0, 0] := copy(sList_Text, 7, pos(#$A'0101'#$D, sList_text) - 6) + #$D;
      sSms_Not_agree[0, 1] := copy_st(sList_Text, #$A'0101'#$D, #$A'0102'#$D) + #$D;
      sSms_Not_agree[0, 2] := copy_st(sList_Text, #$A'0102'#$D, #$A'0103'#$D) + #$D;
      sSms_Not_agree[0, 3] := copy_st(sList_Text, #$A'0103'#$D, #$A'0104'#$D) + #$D;
      sSms_Not_agree[0, 4] := copy_st(sList_Text, #$A'0104'#$D, #$A'0105'#$D) + #$D;
      sSms_Not_agree[0, 5] := copy_st(sList_Text, #$A'0105'#$D, #$A'0106'#$D) + #$D;
      sSms_Not_agree[0, 6] := copy_st(sList_Text, #$A'0106'#$D, #$A'0107'#$D) + #$D;
      sSms_Not_agree[0, 7] := copy_st(sList_Text, #$A'0107'#$D, #$A'0108'#$D) + #$D;
      sSms_Not_agree[0, 8] := copy_st(sList_Text, #$A'0108'#$D, #$A'0109'#$D) + #$D;
      sSms_Not_agree[0, 9] := copy_st(sList_Text, #$A'0109'#$D, #$A'0110'#$D) + #$D;
      sSms_Not_agree[0, 10] := copy_st(sList_Text, #$A'0110'#$D, #$A'0160'#$D) + #$D;
      sSms_Not_agree[0, 11] := copy_st(sList_Text, #$A'0160'#$D, #$A'0170'#$D) + #$D;
      sSms_Not_agree[0, 12] := copy_st(sList_Text, #$A'0170'#$D, #$A'0180'#$D) + #$D;
      sSms_Not_agree[0, 13] := copy_st(sList_Text, #$A'0180'#$D, #$A'0190'#$D) + #$D;
      sSms_Not_agree[0, 14] := copy_st(sList_Text, #$A'0190'#$D, #$A'0200'#$D) + #$D;

      FreeAndNil(sList_kt);
      FreeAndNil(sList);
}
      if chkBalsin.Checked then
        cxViewSms.Columns[2].SortOrder := soAscending
      else
      begin
        cxViewSms.Columns[1].SortIndex := 0;
        cxViewSms.Columns[2].SortIndex := 1;
        cxViewSms.Columns[1].SortOrder := soAscending;
        cxViewSms.Columns[2].SortOrder := soAscending;
      end;

	//    cxViewBranchSms.BeginUpdate;
      cxViewSendSms.BeginUpdate;
      try
        for I := 0 to cxViewSms.DataController.RecordCount - 1 do
        begin
          Application.ProcessMessages;
          AdvProgress1.Position := i + 1;

					sBrNo   := cxViewSms.ViewData.Rows[I].Values[0];               // 지사코드
          sBalsin := RemovePhone(cxViewSms.ViewData.Rows[I].Values[1]);  // 대표번호
          TelNo   := RemovePhone(cxViewSms.ViewData.Rows[I].Values[2]);  // 고객번호

          // 고객번호 형식 체크
          if (StrToIntDef(Copy(sBalsin, 1, 6), -1) = -1) or (StrToFloatDef(TelNo, 0.0) = 0.0) or (Length(string(TelNo)) >= 12) then
          begin
            iSrow := GetRowIndexSameValue(cxViewBranchSms, 5, sBrNo);
            if iSrow = -1 then
              continue;
            
            iCnt := StrToIntDef(RemoveComma(cxViewBranchSms.ViewData.Rows[iSrow].Values[1]), 1) - 1;
            cxViewBranchSms.ViewData.Rows[iSrow].Values[1] := StrToFloat(IntToStr(iCnt));
//            cxViewBranchSms.DataController.SetValue(iSrow, 1, StrToFloat(IntToStr(iCnt)));
            continue;
          end;

          case StrToIntDef(copy(TelNo, 1, 4), 200) of
            100..109:
              begin
                j := StrToInt(copy(TelNo, 4, 1));
                k := pos(#$A + TelNo + #$D, sSms_Not_Agree[0, j]);
                if k > 0 then
                begin
                  iSrow := GetRowIndexSameValue(cxViewBranchSms, 5, sBrNo);
                  if iSrow = -1 then
                    continue;
                  iCnt := StrToIntDef(RemoveComma(cxViewBranchSms.ViewData.Rows[iSrow].Values[1]), 1) - 1;
                  cxViewBranchSms.ViewData.Rows[iSrow].Values[1] := StrToFloat(IntToStr(iCnt));

                  continue;
                end;

                if GT_CALLMANNER_NOTSMS = 1 then
                begin
                  j := StrToInt(copy(TelNo, 4, 1));
                  k := pos(#$A + TelNo + #$D, sSms_Not_Agree[1, j]);
                  if k > 0 then
                  begin
                    iSrow := GetRowIndexSameValue(cxViewBranchSms, 5, sBrNo);
                    if iSrow = -1 then
                      continue;
                    iCnt := StrToIntDef(RemoveComma(cxViewBranchSms.ViewData.Rows[iSrow].Values[1]), 1) - 1;
                    cxViewBranchSms.ViewData.Rows[iSrow].Values[1] := StrToFloat(IntToStr(iCnt));

                    continue;
                  end;
                end;
              end;
            110..119:
              begin
                k := pos(#$A + TelNo + #$D, sSms_Not_Agree[0, 10]);
                if k > 0 then
                begin
                  iSrow := GetRowIndexSameValue(cxViewBranchSms, 5, sBrNo);
                  if iSrow = -1 then
                    continue;
                  iCnt := StrToIntDef(RemoveComma(cxViewBranchSms.ViewData.Rows[iSrow].Values[1]), 1) - 1;
                  cxViewBranchSms.ViewData.Rows[iSrow].Values[1] := StrToFloat(IntToStr(iCnt));

                  continue;
                end;
                if GT_CALLMANNER_NOTSMS = 1 then
                begin
                  k := pos(#$A + TelNo + #$D, sSms_Not_Agree[1, 10]);
                  if k > 0 then
                  begin
                    iSrow := GetRowIndexSameValue(cxViewBranchSms, 5, sBrNo);
                    if iSrow = -1 then
                      continue;

                    iCnt := StrToIntDef(RemoveComma(cxViewBranchSms.ViewData.Rows[iSrow].Values[1]), 1) - 1;
                    cxViewBranchSms.ViewData.Rows[iSrow].Values[1] := StrToFloat(IntToStr(iCnt));

                    continue;
                  end;
                end;
              end;
            160..169:
              begin
                k := pos(#$A + TelNo + #$D, sSms_Not_Agree[0, 11]);
                if k > 0 then
                begin
                  iSrow := GetRowIndexSameValue(cxViewBranchSms, 5, sBrNo);
                  if iSrow = -1 then
                    continue;
                  iCnt := StrToIntDef(RemoveComma(cxViewBranchSms.ViewData.Rows[iSrow].Values[1]), 1) - 1;
                  cxViewBranchSms.ViewData.Rows[iSrow].Values[1] := StrToFloat(IntToStr(iCnt));

                  continue;
                end;
                if GT_CALLMANNER_NOTSMS = 1 then
                begin
                  k := pos(#$A + TelNo + #$D, sSms_Not_Agree[1, 11]);
                  if k > 0 then
                  begin
                    k := K + length(TelNo) - 1;
                    sSms_Not_Agree[1, 11] := StringReplace(sSms_Not_Agree[1, 11], copy(sSms_Not_Agree[1, 11], 1, k), '', [rfReplaceAll]);
                    iSrow := GetRowIndexSameValue(cxViewBranchSms, 5, sBrNo);
                    if iSrow = -1 then
                      continue;

                    iCnt := StrToIntDef(RemoveComma(cxViewBranchSms.ViewData.Rows[iSrow].Values[1]), 1) - 1;
                    cxViewBranchSms.ViewData.Rows[iSrow].Values[1] := StrToFloat(IntToStr(iCnt));

                    continue;
                  end;
                end;
              end;
            170..179:
              begin
                k := pos(#$A + TelNo + #$D, sSms_Not_Agree[0, 12]);
                if k > 0 then
                begin
                  k := K + length(TelNo) - 1;
                  sSms_Not_Agree[0, 12] := StringReplace(sSms_Not_Agree[0, 12], copy(sSms_Not_Agree[0, 12], 1, k), '', [rfReplaceAll]);
                  iSrow := GetRowIndexSameValue(cxViewBranchSms, 5, sBrNo);
                  if iSrow = -1 then
                    continue;
                  iCnt := StrToIntDef(RemoveComma(cxViewBranchSms.ViewData.Rows[iSrow].Values[1]), 1) - 1;
                  cxViewBranchSms.ViewData.Rows[iSrow].Values[1] := StrToFloat(IntToStr(iCnt));

                  continue;
                end;
                if GT_CALLMANNER_NOTSMS = 1 then
                begin
                  k := pos(#$A + TelNo + #$D, sSms_Not_Agree[1, 12]);
                  if k > 0 then
                  begin
                    k := K + length(TelNo) - 1;
                    sSms_Not_Agree[1, 12] := StringReplace(sSms_Not_Agree[1, 12], copy(sSms_Not_Agree[1, 12], 1, k), '', [rfReplaceAll]);
                    iSrow := GetRowIndexSameValue(cxViewBranchSms, 5, sBrNo);
                    if iSrow = -1 then
                      continue;

                    iCnt := StrToIntDef(RemoveComma(cxViewBranchSms.ViewData.Rows[iSrow].Values[1]), 1) - 1;
                    cxViewBranchSms.ViewData.Rows[iSrow].Values[1] := StrToFloat(IntToStr(iCnt));

                    continue;
                  end;
                end;
              end;
            180..189:
              begin
                k := pos(#$A + TelNo + #$D, sSms_Not_Agree[0, 13]);
                if k > 0 then
                begin
                  k := K + length(TelNo) - 1;
                  sSms_Not_Agree[0, 13] := StringReplace(sSms_Not_Agree[0, 13], copy(sSms_Not_Agree[0, 13], 1, k), '', [rfReplaceAll]);
                  iSrow := GetRowIndexSameValue(cxViewBranchSms, 5, sBrNo);
                  if iSrow = -1 then
                    continue;
                  iCnt := StrToIntDef(RemoveComma(cxViewBranchSms.ViewData.Rows[iSrow].Values[1]), 1) - 1;
                  cxViewBranchSms.ViewData.Rows[iSrow].Values[1] := StrToFloat(IntToStr(iCnt));

                  continue;
                end;
                if GT_CALLMANNER_NOTSMS = 1 then
                begin
                  k := pos(#$A + TelNo + #$D, sSms_Not_Agree[1, 13]);
                  if k > 0 then
                  begin
                    k := K + length(TelNo) - 1;
                    sSms_Not_Agree[1, 13] := StringReplace(sSms_Not_Agree[1, 13], copy(sSms_Not_Agree[1, 13], 1, k), '', [rfReplaceAll]);
                    iSrow := GetRowIndexSameValue(cxViewBranchSms, 5, sBrNo);
                    if iSrow = -1 then
                      continue;

                    iCnt := StrToIntDef(RemoveComma(cxViewBranchSms.ViewData.Rows[iSrow].Values[1]), 1) - 1;
                    cxViewBranchSms.ViewData.Rows[iSrow].Values[1] := StrToFloat(IntToStr(iCnt));

                    continue;
                  end;
                end;
              end;
            190..199:
              begin
                k := pos(#$A + TelNo + #$D, sSms_Not_Agree[0, 14]);
                if k > 0 then
                begin
                  k := K + length(TelNo) - 1;
                  sSms_Not_Agree[0, 14] := StringReplace(sSms_Not_Agree[0, 14], copy(sSms_Not_Agree[0, 14], 1, k), '', [rfReplaceAll]);
                  iSrow := GetRowIndexSameValue(cxViewBranchSms, 5, sBrNo);
                  if iSrow = -1 then
                    continue;

                  iCnt := StrToIntDef(RemoveComma(cxViewBranchSms.ViewData.Rows[iSrow].Values[1]), 1) - 1;
                  cxViewBranchSms.ViewData.Rows[iSrow].Values[1] := StrToFloat(IntToStr(iCnt));

                  continue;
                end;
                if GT_CALLMANNER_NOTSMS = 1 then
                begin
                  k := pos(#$A + TelNo + #$D, sSms_Not_Agree[1, 14]);
                  if k > 0 then
                  begin
                    k := K + length(TelNo) - 1;
                    sSms_Not_Agree[1, 14] := StringReplace(sSms_Not_Agree[1, 14], copy(sSms_Not_Agree[1, 14], 1, k), '', [rfReplaceAll]);
                    iSrow := GetRowIndexSameValue(cxViewBranchSms, 5, sBrNo);
                    if iSrow = -1 then
                      continue;

                    iCnt := StrToIntDef(RemoveComma(cxViewBranchSms.ViewData.Rows[iSrow].Values[1]), 1) - 1;
                    cxViewBranchSms.ViewData.Rows[iSrow].Values[1] := StrToFloat(IntToStr(iCnt));

                    continue;
                  end;
                end;
              end
          else
            begin
              iSrow := GetRowIndexSameValue(cxViewBranchSms, 5, sBrNo);
              if iSrow = -1 then
                continue;

              iCnt := StrToIntDef(RemoveComma(cxViewBranchSms.ViewData.Rows[iSrow].Values[1]), 1) - 1;
              cxViewBranchSms.ViewData.Rows[iSrow].Values[1] := StrToFloat(IntToStr(iCnt));

              continue;
            end;

          end;

          if chkBalsin.Checked then
          begin
            if cbKeynumber01.ItemIndex = 0 then
            begin
              GMessagebox('보내는이 번호를 선택해 주세요', CDMSI);
              Exit;
            end else
            begin
              sTemp := cxViewSms.ViewData.Records[I].Values[2];
              sBalsin := RemovePhone(cbKeynumber01.Text);
            end;
          end else
          begin
            sTemp := cxViewSms.ViewData.Records[I].Values[2] + '-' + cxViewSms.ViewData.Records[I].Values[1];
            sBalsin := RemovePhone(cxViewSms.DataController.Values[I, 1]);
          end;

          DuplicateTel := (sTemp = BeforeTel);

          BeforeTel := sTemp;

          if not DuplicateTel then
          begin
            //----------------------------------------------------------------------------------------------------
            //      메세지에 고객명, 지사명, 대표번호 조합
            //----------------------------------------------------------------------------------------------------
            sMessage := StringReplace(mm_message.Text, #13#10, #10, [rfReplaceAll]);
            sName := cxViewSms.ViewData.Records[I].Values[3];//  cxViewSms.DataController.Values[I, 3];
            if sName = '' then
              sname := '고객';
            if chkNameAdd.Checked then
              sMessage := StringReplace(sMessage, '<$고객명$>', sName, [rfReplaceall]);
            if chkBrAdd.Checked then
            begin
              iBrNo := GetRowIndexSameValue(cxViewBranchSms, 5, sBrNo);
              if iBrNo > -1 then
                sBrName := string(cxViewBranchSms.DataController.Values[iBrNo, 0]);
              if sBrName = '' then
                sBrName := '대리업체';
              sMessage := StringReplace(sMessage, '<$지사명$>', sBrName, [rfReplaceall]);
            end;
            if chkTelAdd.Checked then
            begin
              sMessage := StringReplace(sMessage, '<$대표번호$>', cxViewSms.ViewData.Records[I].Values[1], [rfReplaceall]);
            end;
            if chkMileAdd.Checked then
            begin
//              sMessage := StringReplace(sMessage, '<$마일리지$>', cxViewSms.ViewData.Records[I].Values[6], [rfReplaceall]);
              if GS_CUTSMS = True then
                sMessage := StringReplace(sMessage, '<$마일리지$>', FormatFloat('#,##0', StrToFloatDef(cxViewSms.ViewData.Records[I].Values[6], 0.0)), [rfReplaceall])
              else
                sMessage := StringReplace(sMessage, '<$마일리지$>', '', [rfReplaceall]);
            end;

            //----------------------------------------------------------------------------------------------------
            //      조합후 메세지 길이가 80 Byte를 넘을 경우 메세지를 분리
            //----------------------------------------------------------------------------------------------------
            if Length(sMessage) > 90 then          //80->90Byte로 변경 2011.11.25 KHS
            begin
              AddCnt := 0;
              while Length(sMessage) > 0 do
              begin
                if Length(sMessage) <= 90 then
                begin
                  sMsg := sMessage;
                  sMessage := '';
                end else
                begin
                  sMsg := GetStrPharseByte(sMessage, 90);
                  sMessage := Copy(sMessage, Length(sMsg) + 1, Length(sMessage) - Length(sMsg));
                end;
              
                RowIdx := cxViewSendSms.DataController.AppendRecord;

                cxViewSendSms.DataController.SetValue(RowIdx, 0, cxViewSms.ViewData.Records[I].Values[0]);
                cxViewSendSms.DataController.SetValue(RowIdx, 1, cxViewSms.ViewData.Records[I].Values[1]);
                cxViewSendSms.DataController.SetValue(RowIdx, 3, cxViewSms.ViewData.Records[I].Values[2]);
                cxViewSendSms.DataController.SetValue(RowIdx, 5, cxViewSms.ViewData.Records[I].Values[3]);
                cxViewSendSms.DataController.SetValue(RowIdx, 4, sMsg);
                cxViewSendSms.DataController.SetValue(RowIdx, 2, sBalsin);
                cxViewSendSms.DataController.Values[RowIdx, 6] := IfThen(chkBalsin.Checked, cxViewSms.ViewData.Records[I].Values[2],
                  cxViewSms.ViewData.Records[I].Values[2] + '-' + cxViewSms.ViewData.Records[I].Values[1]);

                Inc(AddCnt);
              end;

              iSrow := GetRowIndexSameValue(cxViewBranchSms, 5, sBrNo);
              iCnt := StrToIntDef(RemoveComma(cxViewBranchSms.DataController.Values[iSrow, 1]), 1) + (AddCnt-1);
              cxViewBranchSms.DataController.SetValue(iSrow, 1, StrToFloat(IntToStr(iCnt)));
            end else
            begin
              RowIdx := cxViewSendSms.DataController.AppendRecord;

              cxViewSendSms.DataController.SetValue(RowIdx, 0, cxViewSms.ViewData.Records[I].Values[0]);
              cxViewSendSms.DataController.SetValue(RowIdx, 1, cxViewSms.ViewData.Records[I].Values[1]);
              cxViewSendSms.DataController.SetValue(RowIdx, 3, cxViewSms.ViewData.Records[I].Values[2]);
              cxViewSendSms.DataController.SetValue(RowIdx, 5, cxViewSms.ViewData.Records[I].Values[3]);
              cxViewSendSms.DataController.SetValue(RowIdx, 4, sMessage);
              cxViewSendSms.DataController.SetValue(RowIdx, 2, sBalsin);
              cxViewSendSms.DataController.Values[RowIdx, 6] := IfThen(chkBalsin.Checked, cxViewSms.ViewData.Records[I].Values[2],
                 cxViewSms.ViewData.Records[I].Values[2] + '-' + cxViewSms.ViewData.Records[I].Values[1]);
            end;
          end else
          begin
            iRow := GetRowIndexSameValue(cxViewBranchSms, 5, sBrNo);
            iCnt := StrToIntDef(RemoveComma(cxViewBranchSms.DataController.Values[iRow, 1]), 1) - 1;
            cxViewBranchSms.DataController.SetValue(iRow, 1, StrToFloat(IntToStr(iCnt)));
          end;
        end;
      finally
  //      cxViewBranchSms.EndUpdate;
        cxViewSendSms.EndUpdate;
      end;
      FillChar(sSms_Not_agree, SizeOf(sSms_Not_agree), chr($00));

      if cxViewSendSms.DataController.RecordCount > 20 then
        irowcnt := 20
      else
        iRowcnt := cxViewSendSms.DataController.RecordCount;

      cxViewMsgList.BeginUpdate;
      try
        cxViewMsgList.DataController.SetRecordCount(iRowCnt);
        for i := 0 to iRowcnt - 1 do
        begin
          for j := 0 to cxViewMsgList.ColumnCount - 1 do
          begin
            if j <= cxViewSendSms.ColumnCount then
              cxViewMsgList.DataController.SetValue(I, J, cxViewSendSms.DataController.GetValue(I, J));
          end;

          cxViewMsgList.DataController.SetValue(I, 4, StringReplace(cxViewMsgList.DataController.GetValue(I, 4), #10, '¿', [rfReplaceAll]));
        end;
      finally
        cxViewMsgList.EndUpdate;
      end;

      //----------------------------------------------------------------------------------------------------
      //      전송전에 지사별로 캐쉬와 전송갯수 비교 (불가가 하나라도 있을경우 전송불가)
      //----------------------------------------------------------------------------------------------------
      for I := 0 to cxViewBranchSms.DataController.RecordCount - 1 do
      begin
        iCnt := StrToIntDef(RemoveComma(cxViewBranchSms.DataController.Values[I, 1]), 0);
        dblDan := StrToFloatDef(RemoveComma(cxViewBranchSms.DataController.Values[I, 6]), 0);
        cxViewBranchSms.DataController.SetValue(I, 1, StrToFloat(IntToStr(iCnt)));
        dblCash := StrToFloatDef(RemoveComma(cxViewBranchSms.DataController.Values[I, 2]), 0) - (iCnt * dblDan);
        cxViewBranchSms.DataController.SetValue(I, 3, dblCash);
        cxViewBranchSms.DataController.Values[I, 4] := IfThen(dblCash > 0, '가능', '불가');
      end;
      mmoAfter.Text := IntToStr(cxViewSendSms.DataController.RecordCount);

    finally
      cxPageControl2.ActivePageIndex := 1;
      btnPreView.Enabled := True;
      btnSendMsg.Enabled := True;
      pnlSmsStatus.Visible := False;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function TFrm_SMSA1.GetRowIndexSameValue(AcxView: TcxGridDBTableView;
  ACol: Integer; AValue: string; ADefault: Integer): Integer;
var
  I: Integer;
begin
  Result := ADefault;
  for I := 0 to AcxView.DataController.RecordCount - 1 do
//  for I := AcxView.DataController.RecordCount - 1 downto 0 do
  begin
    if string(AcxView.DataController.Values[I, ACol]) = AValue then
//    if string(AcxView.ViewData.Records[I].Values[ACol]) = AValue then
    begin
      Result := I;
      Exit;
    end;
  end;
end;

function TFrm_SMSA1.func_res_cnt(sTime: string): Integer;
var
  ls_TxQry, ls_TxLoad, ls_Msg_Err, sQueryTemp : string;
  ReceiveStr: string;
  sTime2: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  StrList: TStringList;
  ErrCode: integer;
begin
  Result := -1;
  ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');

  sTime2 := formatdatetime('yyyymmdd', Now) + '210000';

  fGet_BlowFish_Query(GSQ_RES_SMSCNT, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, [sTime, sTime2]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'RESSMS', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

  StrList := TStringList.Create;
  try
    if dm.SendSock(ls_TxLoad, StrList, ErrCode, False) then
    begin
      ReceiveStr := StrList[0];

      if trim(ReceiveStr) <> '' then
      begin
//        ls_rxxml := GetXmlExtract(ReceiveStr);
        ls_rxxml := Trim(ReceiveStr);
        try
          xdom := ComsDomDocument.Create;
          try
            if not xdom.loadXML(ls_rxxml) then
              Exit;
            ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' = ls_Msg_Err) then
            begin
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
//              ls_Rcrd := GetTextSeperation('│', lst_Result.item[0].attributes.getNamedItem('Value').Text);
              Result := StrToIntDef(GetTextSeperationFirst('│', lst_Result.item[0].attributes.getNamedItem('Value').Text), 0);
            end
            else
              Result := -1;
          finally
            xdom := Nil;
          end;
        except
          Result := -1;
        end;
      end;
    end;
  finally
    StrList.Free;
  end;
end;

function TFrm_SMSA1.func_first_check(sBr_No: AnsiString; iTotalCnt, iType,
  iRow: Integer): string;
var
  sDate, ls_TxSend, rv_str : AnsiString;
begin
  try
    Result := '';
    ls_Txsend := '';
    if iType = 0 then
    begin
      if rbchk_re.Checked then
        sDate := formatdatetime('yyyymmdd', dtp_date.Date)
          + LPad(IntToStr(se_Time1.Value), '0', 2)
          + LPad(IntToStr(Se_Time2.Value), '0', 2) + '00'
      else
      begin
        sDate := dt_sysdate2;
      end;
      ls_TxSend := Rpad(GT_USERIF.ID, 12, ' ') + RPad(sBr_no, 6, ' ') + '0100'
				+ '00' + RPad(IntToStr(iTotalCnt), 10, ' ');
      ls_TxSend := ls_TxSend + RPad(' ', 16, ' ')
        + RPad(StringReplace(cxViewSendSms.ViewData.Records[iRow].Values[2],
        '-', '',
        [rfReplaceAll]), 16, ' ')
        + RPad(cxViewSendSms.ViewData.Records[iRow].Values[4], 100, ' ')     //80->100Byte로 변경 2011.11.25 KHS
        + RPad(sDate, 14, ' ');
      rv_str := SMS_Send2(ls_TxSend, itcSMS, 2000);
      Result := copy(rv_str, 23, 2);
    end
    else
      if iType = 1 then
    begin
      ls_TxSend := Rpad(GT_USERIF.ID, 12, ' ') + RPad(sBr_no, 6, ' ') + '0200'
        + '00' + RPad(IntToStr(iTotalCnt), 10, ' ');
      rv_str := SMS_Send(ls_TxSend, itcSMS, 2000);
      Result := '';
    end;
  except on E: Exception do
    begin
      Result := '';
    end;
  end;
end;

function TFrm_SMSA1.SMS_Send(ss_SendText: AnsiString; socket: TIdTCPClient;
  iTimeout: Integer): AnsiString;
var
  ls_msg: string;
begin
  //전송하기
  try
    Result := '';
    socket.IOHandler.CheckForDisconnect(False, True);
    if not socket.Connected then
    begin
      socket.Disconnect;
      socket.Host := SMS_SERVER_IP;
      socket.Port := SMS_PORT;
      socket.Connect;
    end;

    socket.ReadTimeout := iTimeout;
    socket.IOHandler.Write(RawToBytes(pAnsiChar(ss_Sendtext)^, length(ss_SendText)));
//    socket.IOHandler.Write(ss_Sendtext);

    Result := 'Success';
  except on E: Exception do
    begin
      socket.disconnect;
      ls_msg := '서버접속 중 문제가 발생했습니다' + #13#10 + e.Message;
      mmo_log.Lines.Add(ls_msg);
      Assert(False, E.Message);
      Result := 'Error';
      exit;
    end
  end;
end;

function TFrm_SMSA1.SMS_Recieve(socket: TIdTCPClient): AnsiString;
var
  i: Integer;
  ls_msg, rv_str: string;
begin
  try
    socket.ReadTimeout := 10000;
    result := '';

    rv_str := '';
    i := 0;
    while (length(rv_str) < 20) and (i < 100) do
    begin
      Socket.IOHandler.CheckForDataOnSource(10);
      rv_str := rv_str + socket.IOHandler.InputBufferAsString;

      sleep(10);
      Inc(i);
    end;

    result := rv_str;
  except on E: Exception do
    begin
      socket.disconnect;
      ls_msg := '서버수신 중 문제가 발생했습니다' + #13#10 + e.Message;
      result := '';
      mmo_log.Lines.Add(ls_msg);
      //GMessagebox(ls_msg,cdmsi);
      exit;
    end
  end;
end;

function TFrm_SMSA1.SMS_Send2(ss_SendText: AnsiString; socket: TIdTCPClient;
  tout: integer): AnsiString;
var
  ls_msg, rv_str, temp: string;
  nCount: Integer;
  BRString : TIdBytes;
begin
  //전송하기
  try
    rv_str := '';
    temp := '';
    socket.Disconnect;
    socket.Host := SMS_SERVER_IP;
    socket.Port := SMS_PORT;
    socket.Connect();

    socket.ReadTimeout := tout;
    socket.IOHandler.Write(RawToBytes(PAnsiChar(ss_Sendtext)^, length(ss_SendText)));
//    socket.IOHandler.Write(ss_Sendtext);
  except on E: Exception do
    begin
      socket.Disconnect;
      ls_msg := '서버접속 중 문제가 발생했습니다' + #13#10 + e.Message;
      result := '';
      mmo_log.Lines.Add(ls_msg);
      //GMessagebox(ls_msg,cdmsi);
      exit;
    end;
  end;

  // 소켓초기화
  if ss_Sendtext = '' then
  begin
    socket.ReadTimeout := 10;
    result := '';
    exit;
  end;

  //수신하기
  try
    rv_str := '';
    nCount := 0;
    while length(rv_str) < 20 do
    begin
      Socket.IOHandler.CheckForDataOnSource(10);
      rv_str := rv_str + socket.IOHandler.InputBufferAsString;
      sleep(10);
      Inc(nCount);
      if nCount > 1000 then
        Break;
    end;

    result := rv_str;
  except on E: Exception do
    begin
      socket.disconnect;
      ls_msg := '서버수신 중 문제가 발생했습니다' + #13#10 + e.Message;
      result := '';
      mmo_log.Lines.Add(ls_msg);
      //GMessagebox(ls_msg,cdmsi);
      exit;
    end
  end;
end;

procedure TFrm_SMSA1.btnInsertCharClick(Sender: TObject);
begin
  pnl_char.Left := (btnInsertChar.ClientOrigin.X - pnl_Char.Parent.ClientOrigin.X);
  pnl_char.Top  := (btnInsertChar.ClientOrigin.Y - pnl_Char.Parent.ClientOrigin.Y);

  pnl_Char.Visible := True;
  pnl_Char.BringToFront;
end;

procedure TFrm_SMSA1.RecvResultSendSmsBranchList(ls_rxxml: WideString);
var
  iSum, iResult, dblDan : Double;
  i, iRow, iCnt : Integer;
  ls_Rcrd: TStringList;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ls_rxxml) then
      Exit;

    if (0 < GetXmlRecordCount(ls_rxxml)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      ls_Rcrd := TStringList.Create;
      try
        for i := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
          iRow := GetRowIndexSameValue(cxViewBranchSms, 5, ls_Rcrd[1]);

          if iRow > -1 then
          begin
            cxViewBranchSms.DataController.SetValue(iRow, 2, StrToFloatDef(ls_Rcrd[0], 0));
            iCnt := StrToIntDef(string(cxViewBranchSms.ViewData.Records[iRow].Values[1]), 0);
            dblDan := StrToFloatDef(ls_Rcrd[3], 0);
            cxViewBranchSms.DataController.SetValue(iRow, 6, dblDan);
            // 13원에서 16원으로 변경됨 2008-01-02 최도순
            iSum := iCnt * dblDan;

            iResult := StrToFloatDef(ls_Rcrd[0], 0) - iSum;
            cxViewBranchSms.DataController.SetValue(iRow, 3, iResult);
            cxViewBranchSms.DataController.Values[iRow, 4] := IfThen(iResult >= 0, '가능', '불가');
          end;
        end;
      finally
        ls_Rcrd.Free;
      end;
    end;
  finally
    xdom := Nil;
  end;
end;

function TFrm_SMSA1.func_recieve(ls_rxxml: Widestring): Boolean;
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  ls_MSG_Err, ls_ClientKey: string;
  ls_XML: Widestring;
  ls_RV_Cnt: Integer;
  I: Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    ls_XML := ls_rxxml;
    xdom := ComsDomDocument.Create;
    try
      Result := True;

      if not xdom.loadXML(ls_XML) then
      begin
        Result := False;
        Exit;
      end;
      ls_MSG_Err := GetXmlErrorCode(ls_XML);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_RV_Cnt := GetXmlRecordCount(ls_XML);
        if (0 < ls_RV_Cnt) then
        begin
          ls_ClientKey := GetXmlClientKey(ls_XML);
          if ls_ClientKey = 'CUST0001' then
          begin
          end;
        end else
        begin
          Result := False;
        end;
      end
      else
      begin
        Result := False;
        GMessagebox(MSG012 + CRLF + ls_Msg_Err, CDMSE);
      end;
      Application.ProcessMessages;
    finally
      xdom := Nil;
    end;
  except
    Result := False;
  end;
end;

procedure TFrm_SMSA1.cbb_cust_nameChange(Sender: TObject);
begin
  if TCombobox(sender).ItemIndex = 0 then
    TCombobox(sender).Color := clsilver
  else
    TCombobox(sender).Color := clWhite;
end;

procedure TFrm_SMSA1.chkNotSmsClick(Sender: TObject);
var
  ln_envfile: TInifile;
begin
  ln_envfile := TIniFile.Create(ENVPATHFILE);
  try
    if TcxCheckBox(Sender).Checked then
    begin
      ln_envfile.WriteString('TRANS_SMS', 'CALLMANNER', '1');
      GT_CALLMANNER_NOTSMS := 1;
    end
    else
    begin
      ln_envfile.WriteString('TRANS_SMS', 'CALLMANNER', '0');
      GT_CALLMANNER_NOTSMS := 0;
    end;
  finally
    FreeAndNil(ln_envfile);
  end;
end;

procedure TFrm_SMSA1.proc_BrNameSet;
var
  sName: string;
  StrList: TStringList;
begin
  sName := GetSosokInfo;

	StrList := TStringList.Create;
  cbKeynumber01.Tag := 1;
  try
    if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
    begin
      GetBrTelList(GT_SEL_BRNO.HDNO, StrList);
      cbKeynumber01.Properties.Items.Assign(StrList);
    end else
    begin
			GetBrTelList(GT_SEL_BRNO.BrNo, StrList);
			cbKeynumber01.Properties.Items.Assign(StrList);
    end;
	finally
		StrList.Free;
  end;

  if cbKeynumber01.Properties.Items.Count >= 1 then
    cbKeynumber01.Properties.Items.Insert(0, '번호선택');

  cbKeynumber01.ItemIndex := 0;
  cbKeynumber01.Tag := 0;

  DisplayCashInfo;
end;

procedure TFrm_SMSA1.DisplayCashInfo;
var
  ls_TxQry, ls_TxLoad, sQueryTemp : string;
  swhere, swhere2: string;
begin
  try
    if GT_USERIF.LV = '60' then
    begin
      if GT_SEL_BRNO.GUBUN <> '1' then
      begin
        sWhere := format('WHERE HD_NO = ''%s'' ', [GT_SEL_BRNO.HDNO]);
        sWhere2 := format('AND HD_NO = ''%s'' ', [GT_SEL_BRNO.HDNO]);
      end
      else
      begin
        sWhere := format('WHERE BR_NO = ''%s'' ', [GT_SEL_BRNO.BrNo]);
        sWhere2 := format('AND BR_NO = ''%s'' ', [GT_SEL_BRNO.BrNo]);
      end;
    end
    else
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

    RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_SMSA1.RecvResultFileRmvMember(AList: TStringList);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I, J: Integer;
  ls_rxxml: string;
begin
  xdom := ComsDomDocument.Create;
  FRmvMemList.Clear;
  FRmvMemList.Sorted := False;
  try
    for I := 0 to AList.Count - 1 do
    begin
      ls_rxxml := AList[I];

      if not xdom.loadXML(ls_rxxml) then
        Continue;

      if (0 < GetXmlRecordCount(ls_rxxml)) then
      begin
        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

        Application.ProcessMessages;
        for J := 0 to lst_Result.length - 1 do
        begin
          FRmvMemList.Add(RemovePhone(lst_Result.item[J].attributes.getNamedItem('Value').Text));
        end;
      end;
    end;
  finally
    FRmvMemList.Sorted := True;
    xdom := Nil;
  end;
end;

procedure TFrm_SMSA1.RecvResultFileRmvWorker(AList: TStringList);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I, J: Integer;
  ls_rxxml: string;
begin
  FRmvWkList.Clear;
  FRmvWkList.Sorted := False;
  try
    for I := 0 to AList.Count - 1 do
    begin
      ls_rxxml := AList[I];

      xdom := ComsDomDocument.Create;
      try
        if not xdom.loadXML(ls_rxxml) then
          Continue;

        if (0 < GetXmlRecordCount(ls_rxxml)) then
        begin
          lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

          Application.ProcessMessages;
          for J := 0 to lst_Result.length - 1 do
          begin
            FRmvWkList.Add(RemovePhone(lst_Result.item[J].attributes.getNamedItem('Value').Text));
          end;
        end;
      finally
        xdom := Nil;
      end;
    end;
  finally
    FRmvWkList.Sorted := True;
  end;
end;
procedure TFrm_SMSA1.btnDateMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pm1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_SMSA1.btn1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pm2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_SMSA1.lbl41MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ReleaseCapture;
  PostMessage(pnl_Char.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SMSA1.RequestDataList(AData: string);
var
  StrList: TStringList;
  ErrCode: integer;
begin
  StrList := TStringList.Create;
  Screen.Cursor := crHandPoint;
  try
    if dm.SendSock(AData, StrList, ErrCode, False, 30*1000) then
    begin
      if StrList.Count > 0 then
      begin
        Application.ProcessMessages;
        proc_recieve_list(StrList);
      end;
    end;
  finally
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_SMSA1.mm_messageKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Len: Integer;
  Str: string;
begin
  Str := TMemo(Sender).Text;
  Len := GetSmsMemoLength(AnsiString(Str));

  if Str = '' then
    TcxMemo(Sender).Properties.MaxLength := 100
  else
    TcxMemo(Sender).Properties.MaxLength := 90 + GetSeperatorCount(Str, #13#10);       //80->90Byte로 변경 2011.11.25 KHS

  cxLabel16.Caption := IntToStr(Len);
end;

procedure TFrm_SMSA1.mm_messageMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pnl_Char.Tag := TcxMemo(Sender).Tag;
end;

procedure TFrm_SMSA1.PnlHelpMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(PnlHelp.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SMSA1.edtSplitMinKeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key >= #48) and (Key <= #57)) or (Key = #8) then
  else
  begin
    Key := #0;
  end;
end;

procedure TFrm_SMSA1.ed_sendKeyPress(Sender: TObject; var Key: Char);
begin
  // 전화번호이기 때문에 숫자만 입력 받는다.  [(Key = #3) : Ctrl+C, (Key = #22) : Ctrl+V]
  if ((Key >= #48) and (Key <= #57)) or (Key = #8) or (Key = #3) or (Key = #22) then
  else
  begin
    Key := #0;
  end;
end;

procedure TFrm_SMSA1.edt_BalsinKeyPress(Sender: TObject; var Key: Char);
begin
  // 전화번호이기 때문에 숫자만 입력 받는다.  [(Key = #3) : Ctrl+C, (Key = #22) : Ctrl+V]
  if ((Key >= #48) and (Key <= #57)) or (Key = #8) or (Key = #3) or (Key = #22) then
  else
  begin
    Key := #0;
  end;
end;

procedure TFrm_SMSA1.chkSplitClick(Sender: TObject);
begin
  edtSplitMin.Enabled := chkSplit.Checked;
  edtSplitCnt.Enabled := chkSplit.Checked;

  if chkSplit.Checked then
    edtSplitMin.SetFocus;
end;

function TFrm_SMSA1.GetCallmanerSMSList(const APath: string;
  var AData: string): Boolean;
var
  P: PAnsiChar;
  FS: TFileStream;
  Len: Integer;
  T, Enc, DataLen: DWORD;
begin
  T := GetTickCount;

  Result := False;
  
  FS := TFileStream.Create(APath, fmOpenRead or fmShareDenyWrite);
  try
    FS.ReadBuffer(PDWORD(Enc), SizeOf(DWORD));

    case TEncryptType(Enc) of
    etBlowfish:
      begin
        FS.ReadBuffer(PDWORD(DataLen), SizeOf(DWORD));
        Len := (DataLen - 1 div 8 + 1) * 8;
        GetMem(P, Len);
        try
          FS.Read(P^, Len);
          AData := BlowFishPDecrypt(CallSMSKey, P, Len);
          AData := Copy(AData, 1, DataLen);

          Result := True;
        finally
          FreeMem(P);
        end;
      end;
    else
    end;
  finally
    FS.Free;
  end;
end;

procedure TFrm_SMSA1.prc_Test;
const
  _SMS_KEY = '9me0q9b3p6c7x9re4n1sf8sn8rq0k1iz';
//  _SMS_KEY = 'e8s0e4n1sk1iz09tjffpdlaq9b3mc7xf';
var
  MIndex: string;
  Data, HTTPEnc, HttpDec: string;

  procedure RunDownload(AData: string);
  const
    _URL = 'http://%s/sms/report.php?Data=%s';
  var
    IE: Variant;
    EHWND: THandle;
  begin
    try
      IE := CreateOleObject('InternetExplorer.Application');

      IE.height := 100;
      IE.width := 100;
      IE.left := 0;
      IE.top := 0;

      IE.MenuBar := False;
      IE.AddressBar := True;
      IE.Resizable := False;
      IE.StatusBar := False;
      IE.ToolBar := False;
      IE.Silent := false;

      sleep(1);

      IE.Navigate(Format(_URL, ['www.callmaner.com', AData]));
      IE.Visible := True;

      Application.ProcessMessages;
      sleep(1);
    except on E: Exception do
      GMessagebox(Format('SMS 상세결과 다운로드 시 오류(Err: %s)가 발생하였습니다.'#13#10
                        + '(다시시도 바랍니다.)' , [E.Message]), CDMSI);
    end;
  end;
var
  Base64, Base64_2, Decode, sTMP, sData2, s, sss, ss11, ss22 : string;
  iEncryptLen, ii : Integer;
  InSize, OutSize: Cardinal;
  PIn, POut: Pointer;
  OutText : AnsiString;
  aryTmp : array of AnsiChar;
begin

    MIndex := '191765';

    if GS_PRJ_AREA = 'S' then begin
      sTMP := MIndex +'|' + GT_USERIF.ID +'|'+ '1';   // 수도권
    end else begin
      sTMP := MIndex +'|' + GT_USERIF.ID +'|'+ '2';   // 지방권
    end;
    ii := length(sTMP) mod 8; // blowfish 는 8byte 단위로 암호화 함(나머지 부족한 자리는 공백으로 채움)
    if ii > 0 then begin
      sTMP := sTMP + LPAD(sss,' ', 8-ii);
    end;

    SetLength(SMSEncryptData, 1024);
    iEncryptLen := BlowFishEncrypt(_SMS_KEY, sTMP, SMSEncryptData);

    // Hex 코드 만들기..
    for ii:= 0 to iEncryptLen - 1 do
    begin
      s := s + IntToHex(Byte(SMSEncryptData[ii]),2);
    end;

    ZeroMemory(@SMSEncryptData, sizeof(SMSEncryptData));

    HTTPEnc := HTTPEncode(s);

  //  showmessage(Data+'<>'+ blowfishdecrypt(_sms_key,data));
    RunDownload(HttpEnc);

end;

function GetFileDesc(APath: string): string;
var
  FS: TFileStream;
begin
  Result := '';

  if not FileExists(APath) then
    Exit;

  FS := TFileStream.Create(APath, fmOpenRead or fmShareDenyWrite);
  try
    SetString(Result, nil, FS.Size);
    FS.Read(Pointer(Result)^, FS.Size);
  finally
    FS.Free;
  end;
end;

procedure TFrm_SMSA1.chkRemoveUserClick(Sender: TObject);
var
  Msg: string;
begin
  if TcxCheckBox(Sender).Checked then
  begin
    Msg := '**주의: ‘수신거부관리’ 제거는 본 PC내 저장하신 수신거부파일을 제거할 때 사용합니다.'#13#10#13#10
          + '**참조: 수신거부 고객들을 제거하고자 할 경우 [고객]-[일반검색] 메뉴에서 '#13#10
          + '‘선택지사 수신거부 고객 PC 다운’ 메뉴를 지사별로 실시한 후 본 메뉴를 실행하세요. '#13#10
          + '=> 우측 ‘결과다운로드’로 따로 파일로 다운로드 할 경우에도 유용.';

    ShowMessage(Msg);
  end;
end;

procedure TFrm_SMSA1.chkMileAddClick(Sender: TObject);
var
  s, s1: wideString;
const
  sTarget = '<$마일리지$>';
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
  end
  else
    mm_message.Text := StringReplace(mm_message.Text, sTarget, '', [rfReplaceAll]);

  cxLabel16.Caption := IntToStr(Length(AnsiString(mm_message.Text)));
  mm_message.SetFocus;
end;

procedure TFrm_SMSA1.proc_recieve(ls_rxxml: Widestring);
var
  xdom: msDomDocument;
  ls_ClientKey, ls_Msg_Err: string;
begin
  try
    xdom := ComsDomDocument.Create;
    Screen.Cursor := crHourGlass;
    try
      ls_rxxml := ls_rxxml;
      if not xdom.loadXML(ls_rxxml) then
      begin
        Screen.Cursor := crDefault;
        Exit;
      end;

      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_ClientKey := GetXmlClientKey(ls_rxxml);

        if ls_ClientKey = 'CASH0002' then RecvResultSendSmsBranchList(ls_rxxml) else
        if ls_ClientKey = 'CASH0003' then RecvResultBrCashInfo(ls_rxxml);
      end  else
      begin
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
      end;
    finally
      Screen.Cursor := crDefault;
      xdom := Nil;
    end;
  except

  end;
end;

procedure TFrm_SMSA1.RecvResultBrCashInfo(ls_rxxml: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ls_rxxml) then Exit;

    SMSCASH := 0;

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
            SMSCASH := StrToFloatDef(ls_Rcrd[4], 0);
          end;
        finally
          ls_Rcrd.Free;
        end;
      end;
    end;

    if SMSCASH > 0 then
      lblSMSCaption.Caption := '(광고 SMS는 건당 ' + FormatFloat('#,##0.#', SMSCASH) + '원 (VAT포함))';
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_SMSA1.RequestData(AData: string);
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
        proc_recieve(ReceiveStr);
      end;
    end;
  finally
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_SMSA1.proc_stab_ref(sBR_NO: string);
var
  ls_TxQry, ls_TxLoad, swhere, sQueryTemp: string;
begin
  try
    sWhere := format('WHERE BR_NO in (%s) ', [sBR_NO]);
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_BRANCH_SMS_CASH, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sWhere]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CASH0002', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    RequestData(ls_TxLoad);
  except
  end;
end;

end.

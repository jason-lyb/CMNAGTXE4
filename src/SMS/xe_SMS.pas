unit xe_SMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, ComObj,
	Dialogs, IDGlobal, MSXML2_TLB, IniFiles, StrUtils, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxPCdxBarPopupMenu, cxStyles, HttpApp,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxLabel, cxCurrencyEdit, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils,
  IdCoder, IdCoder3to4, IdCoderMIME, IdBaseComponent, IdComponent, AdvGrid,
  IdTCPConnection, IdTCPClient, Vcl.ImgList, Vcl.ExtCtrls, cxGridExportLink,
  cxDropDownEdit, Vcl.Samples.Spin, cxTextEdit, cxMaskEdit, cxCalendar,
  cxCheckBox, cxGroupBox, Vcl.StdCtrls, cxButtons, cxMemo, cxGridLevel,
	cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxPC, Vcl.Imaging.jpeg, dxBarBuiltInMenu,
  AdvProgressBar, dxSkinsCore, dxSkinscxPCPainter, Clipbrd,
	System.ImageList, cxHyperLinkEdit, cxListBox, math,  dxGDIPlusClasses, cxScrollBox, dxSkinOffice2010Silver, dxDateRanges, cxCustomListBox,
  dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_SMS = class(TForm)
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
    lbMaxLen: TcxLabel;
    btnInsertChar: TcxButton;
    se_time1: TSpinEdit;
    se_time2: TSpinEdit;
    btnPreView: TcxButton;
    rbchk_re: TcxCheckBox;
    cxLabel2: TcxLabel;
    ed_send: TcxTextEdit;
    chkBalsin: TcxCheckBox;
    chkNameAdd: TcxCheckBox;
    chkBrAdd: TcxCheckBox;
    chkTelAdd: TcxCheckBox;
    btnSendMsg: TcxButton;
    mmoBefore: TMemo;
    mmoAfter: TMemo;
    lbSrtLen: TcxLabel;
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
    mmo_log: TMemo;
    ilDown: TImageList;
    dlgSave: TSaveDialog;
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
    chkSplit: TcxCheckBox;
    edtSplitMin: TcxTextEdit;
    edtSplitCnt: TcxTextEdit;
    IdEncoderMIME1: TIdEncoderMIME;
    chkMileAdd: TcxCheckBox;
		cxColViewSmsColumn7: TcxGridDBColumn;
    dtp_date: TcxDateEdit;
    PnlMainA1: TPanel;
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
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    PnlMainA2: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxLabel41: TcxLabel;
    lblFileSms: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel42: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    lblFileStep1: TcxLabel;
    lblFileStep2: TcxLabel;
    lblFileStep3: TcxLabel;
    lblFileStep4: TcxLabel;
    lblFileStep5: TcxLabel;
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
    PnlRight: TPanel;
    cxGroupBox2: TcxGroupBox;
    Gauge1: TAdvProgressBar;
    btnFileSearch: TcxButton;
    btnRemove: TcxButton;
    btnRemoveDuplicate: TcxButton;
    btnSelBranch: TcxButton;
    btnSendFile: TcxButton;
    btnSMSLog: TcxButton;
    btnSMSResultDown: TcxButton;
    cbb_level: TComboBox;
    chkFileRecordTelNo: TcxCheckBox;
    chkRemoveAll: TcxCheckBox;
    chkRemoveKISA: TcxCheckBox;
    chkRemoveMember: TcxCheckBox;
    chkRemoveSpamAll: TcxCheckBox;
    chkRemoveTel: TcxCheckBox;
    chkRemoveUser: TcxCheckBox;
    chkRemoveWorker: TcxCheckBox;
    chkSMSLog: TcxCheckBox;
    cxGridFileBranch: TcxGrid;
		cxViewFileBranch: TcxGridDBTableView;
    cxCol8: TcxGridDBColumn;
    cxCol9: TcxGridDBColumn;
    cxCol12: TcxGridDBColumn;
    cxCol10: TcxGridDBColumn;
    cxCol11: TcxGridDBColumn;
    cxLevelFileBranch: TcxGridLevel;
    cxGridFileExcelList: TcxGrid;
    cxViewFileExcelList: TcxGridDBTableView;
    cxColXls1: TcxGridDBColumn;
    cxColXls2: TcxGridDBColumn;
    cxColXls3: TcxGridDBColumn;
    cxColXls4: TcxGridDBColumn;
    cxColXls5: TcxGridDBColumn;
    cxColXls6: TcxGridDBColumn;
    cxColXls7: TcxGridDBColumn;
    cxColXls8: TcxGridDBColumn;
    cxColXls9: TcxGridDBColumn;
    cxColXls10: TcxGridDBColumn;
    cxColXls11: TcxGridDBColumn;
    cxColXls12: TcxGridDBColumn;
    cxColXls13: TcxGridDBColumn;
    cxColXls14: TcxGridDBColumn;
    cxColXls15: TcxGridDBColumn;
    cxColXls16: TcxGridDBColumn;
		cxColViewFileExcelListColumn4: TcxGridDBColumn;
    cxColViewFileExcelListColumn5: TcxGridDBColumn;
    cxLevelLeveFilelExcelList: TcxGridLevel;
    cxLabel38: TcxLabel;
    cxLabel39: TcxLabel;
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
    edtFilename: TcxTextEdit;
    edtSelBranch: TcxTextEdit;
    lst_tel: TListBox;
    cbb_Balsin: TcxComboBox;
    cbKeynumber02: TcxComboBox;
    cbb_cust_tel: TcxComboBox;
    cbb_cust_name: TcxComboBox;
    grp3: TcxGroupBox;
    lblSendCount: TLabel;
    Label4: TLabel;
    pnlSMSLog: TPanel;
    cxLabel40: TcxLabel;
    mmoSMSLog: TcxMemo;
    BtnClose: TcxButton;
    PnlMainA3: TPanel;
    cxGridResultList: TcxGrid;
		cxViewResultList: TcxGridDBTableView;
    cxColView1Column1: TcxGridDBColumn;
    cxColView1Column2: TcxGridDBColumn;
    cxColView1Column3: TcxGridDBColumn;
    cxColView1Column4: TcxGridDBColumn;
    cxColView1Column5: TcxGridDBColumn;
    cxColView1Column6: TcxGridDBColumn;
    cxColView1Column7: TcxGridDBColumn;
    cxColView1Column8: TcxGridDBColumn;
    cxColView1Column9: TcxGridDBColumn;
    cxColView1Column10: TcxGridDBColumn;
		cxViewResultListColumn1: TcxGridDBColumn;
    cxViewResultListColumn2: TcxGridDBColumn;
    cxLevelResultList: TcxGridLevel;
    pnl5: TPanel;
		cxGroupBox3: TcxGroupBox;
    Shape1: TShape;
    Shape2: TShape;
    btnDateA3: TcxButton;
    btnExcelA3: TcxButton;
    btnSearchA3: TcxButton;
    cxLabel53: TcxLabel;
    cxDtEndA3: TcxDateEdit;
    cxDtStartA3: TcxDateEdit;
    lblSosokNameA3: TcxLabel;
    cxLabel54: TcxLabel;
    cxLabel55: TcxLabel;
    cxLabel56: TcxLabel;
    pop_Date: TPopupMenu;
    MiToday: TMenuItem;
    MiYesterday: TMenuItem;
    MiOneWeek: TMenuItem;
    MiOneMonth: TMenuItem;
    MiStartMonth: TMenuItem;
    PnlMainA4: TPanel;
    pnl14: TPanel;
    cxGroupBox4: TcxGroupBox;
    Shape3: TShape;
    Shape4: TShape;
    btnDateA4: TcxButton;
    btnExcelA4: TcxButton;
    btnSearchA4: TcxButton;
    cxLabel57: TcxLabel;
    cxDtEndA4: TcxDateEdit;
    cxDtStartA4: TcxDateEdit;
    lbl28: TcxLabel;
    lbl29: TcxLabel;
    lblSosokNameA4: TcxLabel;
    cxGroupBox5: TcxGroupBox;
    edtDayBranchCash: TcxTextEdit;
    edtDayComCount: TcxTextEdit;
    edtDayComPrice: TcxTextEdit;
    edtDayNmlCount: TcxTextEdit;
    edtDayNmlPrice: TcxTextEdit;
    edtDaySmsCash: TcxTextEdit;
    lbl30: TcxLabel;
    lbl31: TcxLabel;
    lbl32: TcxLabel;
    lbl33: TcxLabel;
    cxLabel58: TcxLabel;
    cxLabel59: TcxLabel;
    pnl15: TPanel;
    cxGridDayResult: TcxGrid;
    cxViewDayResult: TcxGridDBTableView;
    cxColViewDaySchColumn1: TcxGridDBColumn;
    cxColViewDaySchColumn2: TcxGridDBColumn;
    cxColViewDaySchColumn3: TcxGridDBColumn;
    cxColViewDaySchColumn4: TcxGridDBColumn;
    cxColViewDaySchColumn5: TcxGridDBColumn;
    cxColViewDaySchColumn6: TcxGridDBColumn;
    cxColViewDaySchColumn7: TcxGridDBColumn;
    cxViewDayResultColumn1: TcxGridDBColumn;
    cxColViewDaySchColumn8: TcxGridDBColumn;
    cxLevelDayResult: TcxGridLevel;
    cxGridDaySum: TcxGrid;
    cxViewDaySum: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxViewDaySumColumn1: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxLevelDaySum: TcxGridLevel;
    pnlDayDown: TPanel;
    cxGridDayDown: TcxGrid;
    cxViewDayDown: TcxGridDBTableView;
    cxColViewDayDownColumn1: TcxGridDBColumn;
    cxColViewDayDownColumn2: TcxGridDBColumn;
    cxColViewDayDownColumn3: TcxGridDBColumn;
    cxColViewDayDownColumn4: TcxGridDBColumn;
    cxColViewDayDownColumn5: TcxGridDBColumn;
    cxColViewDayDownColumn6: TcxGridDBColumn;
    cxColViewDayDownColumn7: TcxGridDBColumn;
    cxColViewDayDownColumn8: TcxGridDBColumn;
    cxColViewDayDownColumn9: TcxGridDBColumn;
    cxColViewDayDownColumn10: TcxGridDBColumn;
    cxLevelDayDown: TcxGridLevel;
    PnlMainA5: TPanel;
    pnl6: TPanel;
    Shape5: TShape;
    btnNoRecvSearch: TcxButton;
    cxLabel60: TcxLabel;
    edtNoRecvSearch: TcxTextEdit;
    pnl7: TPanel;
    btnRegNoRecv: TcxButton;
    btnDelNoRecv: TcxButton;
    pnl8: TPanel;
    lstNoRecvList: TcxListBox;
    lbl18: TcxLabel;
    lbl19: TcxLabel;
    btnAddNoRecv: TcxButton;
    pnlNoRecvMsg: TPanel;
    cxLabel61: TcxLabel;
    grp5: TcxGroupBox;
    chkNotSms: TcxCheckBox;
    lbl21: TcxLabel;
    mmoAddNoRecv: TcxMemo;
    pnl_file_add: TPanel;
    cxGroupBox6: TcxGroupBox;
    pnl_WkList: TPanel;
    pnl_WkList_Condition: TPanel;
    Shape6: TShape;
    cxLabel62: TcxLabel;
    btn3: TcxButton;
    btn4: TcxButton;
    lstNoRecvFileAdd: TcxListBox;
    mmo_file_path: TcxMemo;
    pnl12: TPanel;
    pnl13: TPanel;
    btn5: TcxButton;
    btn6: TcxButton;
    Shape7: TShape;
    Shape8: TShape;
    cboSearchGubun: TcxComboBox;
    cxLabel63: TcxLabel;
    Shape9: TShape;
    cxLabel64: TcxLabel;
    edtDayPushPrice: TcxTextEdit;
    edtDayPushCount: TcxTextEdit;
    cboSearchGubun4: TcxComboBox;
    cxLabel65: TcxLabel;
    Shape10: TShape;
    cxGrid1: TcxGrid;
    cxViewResultExcel: TcxGridDBTableView;
    cxGridDBColumn01: TcxGridDBColumn;
    cxGridDBColumn02: TcxGridDBColumn;
    cxGridDBColumn03: TcxGridDBColumn;
    cxGridDBColumn04: TcxGridDBColumn;
    cxGridDBColumn05: TcxGridDBColumn;
    cxGridDBColumn06: TcxGridDBColumn;
    cxGridDBColumn07: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridDBColumn08: TcxGridDBColumn;
    cxViewResultListColumn3: TcxGridDBColumn;
    lbl13: TcxLabel;
    lbl6: TcxLabel;
    lbl11: TcxLabel;
    lblSMSCaption: TcxLabel;
    lbl12: TcxLabel;
    lbl5: TcxLabel;
    lbl10: TcxLabel;
    lbl7: TcxLabel;
    lbl8: TcxLabel;
    lbl9: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    lbl4: TcxLabel;
    lblFileSmsTotal: TcxLabel;
    lblCntA4: TcxLabel;
    lbl34: TcxLabel;
    lbl35: TcxLabel;
    lbl36: TcxLabel;
    lbl37: TcxLabel;
    lbl38: TcxLabel;
    lbl39: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    lbl16: TcxLabel;
    lblNoRecvCount: TcxLabel;
    lblFileExcelStatus: TcxLabel;
    btnGetList: TcxButton;
    btn_Terms: TcxButton;
    btnMenual2: TcxButton;
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
    lbl1: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    lb_Cnt1: TcxLabel;
    lb_Cnt2: TcxLabel;
    lb_Cnt3: TcxLabel;
    lb_Cnt4: TcxLabel;
    lb_Cnt5: TcxLabel;
    lb_Cnt6: TcxLabel;
    lb_Cnt7: TcxLabel;
    lb_Cnt8: TcxLabel;
    lb_Cnt9: TcxLabel;
    lbl22: TcxLabel;
    lbl_excel_cnt: TcxLabel;
    cxScrollBox1: TcxScrollBox;
    lb_Cnt: TcxLabel;
    chk4Number: TcxCheckBox;
    cxGridBranchResult: TcxGrid;
    cxViewBranchResult: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Shape11: TShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
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
    procedure tmrFileSmsTimer(Sender: TObject);
    procedure cbb_levelChange(Sender: TObject);
    procedure cxViewFileBranchCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnFileSearchClick(Sender: TObject);
    procedure chkFileRecordTelNoClick(Sender: TObject);
    procedure cbb_cust_namePropertiesChange(Sender: TObject);
    procedure btnRemoveDuplicateClick(Sender: TObject);
    procedure btnSendFileClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure chkSMSLogClick(Sender: TObject);
    procedure cxLabel40MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnSMSLogClick(Sender: TObject);
    procedure btnSMSResultDownClick(Sender: TObject);
    procedure btnSelBranchClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure chkRemoveAllClick(Sender: TObject);
    procedure MiTodayClick(Sender: TObject);
    procedure MiYesterdayClick(Sender: TObject);
    procedure MiOneWeekClick(Sender: TObject);
    procedure MiOneMonthClick(Sender: TObject);
    procedure MiStartMonthClick(Sender: TObject);
    procedure btnSearchA3Click(Sender: TObject);
    procedure btnExcelA3Click(Sender: TObject);
		procedure cxViewResultListCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure mniN1Click(Sender: TObject);
    procedure btnSearchA4Click(Sender: TObject);
    procedure cxViewDaySumCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnExcelA4Click(Sender: TObject);
    procedure btnAddNoRecvClick(Sender: TObject);
    procedure btnNoRecvSearchClick(Sender: TObject);
    procedure btnRegNoRecvClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btnDelNoRecvClick(Sender: TObject);
    procedure edtNoRecvSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGroupBox6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxPageControl1Change(Sender: TObject);
    procedure btnGetListClick(Sender: TObject);
    procedure btn_TermsClick(Sender: TObject);
    procedure Memo1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtNoRecvSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mm_messagePropertiesChange(Sender: TObject);
    procedure Memo1PropertiesChange(Sender: TObject);
    procedure chk4NumberClick(Sender: TObject);
    procedure cbKeynumber01PropertiesChange(Sender: TObject);
    procedure cbKeynumber02PropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cboSearchGubun4PropertiesChange(Sender: TObject);
    procedure cxViewDayResultMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cxViewBranchResultMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }

		NORSMSCASH: Double;
		SMSCASH: Double;
		PUSHCASH: Double;

		gsCommercial : boolean;

    giMaxChar : Integer;

    lCurProperties : TcxCurrencyEditProperties;

    FNoRecvDispList: Boolean;

    FRmvMemList,
    FRmvWkList: TStringList;
    FNoRecvList: TStringList;

    glBranchResult1, glBranchResult2, glBranchResult3, glBranchResult4, glBranchResult5, glBranchResult6 : TStringList;

		sBrNo, sHdNo : string;

		procedure proc_init_sendsms;
    procedure proc_free_sendsms;

    function GetRowIndexSameValue(AcxView: TcxGridDBTableView; ACol: Integer; AValue: string;
      ADefault: Integer = -1): Integer; // default -1(nothing)
    procedure RecvResultSendSmsBranchList(ls_rxxml: WideString);
    procedure RecvResultFileRmvMember(AList: TStringList);
    procedure RecvResultFileRmvWorker(AList: TStringList);
    procedure RequestDataList(AData: string);
    function GetCallmanerSMSList(const APath: string; var AData: AnsiString): Boolean;
    procedure RecvResultBrCashInfo(ls_rxxml: WideString);

        // 서버 시간 로드
    function func_sysdate: string;
    procedure proc_recieve(ls_rxxml: Widestring);
    procedure RequestData(AData: string);
    procedure proc_stab_ref(sBR_NO: string);
    procedure RecvResultFileSmsBranchList(ls_rxxml: WideString);
    procedure RecvResultFileSmsNoSms(ls_rxxml: WideString);
    function ExcelToGridEx(AFilename: string; AView: TcxGridDBTableView;
      AGauge: TAdvProgressBar): Boolean;
		procedure proc_init_filesms_blocktel;
    procedure proc_sms_trans;
    procedure WriteSMSLog(ALog: string);
    procedure RemoveSMSKISA;
    procedure RemoveSMSMember;
    procedure RemoveSMSSpamAll;
    procedure RemoveSMSUser;
    procedure RemoveSMSWorker;
    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure proc_init_result;
    procedure RecvResultSmsResultList(ls_rxxml: WideString);
		procedure proc_search;
		procedure proc_search_Push;
		procedure proc_init_dayresult;
		procedure proc_daylist_search;
		procedure proc_daylist_search_PUSH;
		procedure RecvResultDaySmsDownloadList(ls_rxxml: WideString);
    procedure RecvResultDaySmsResultList(ls_rxxml: WideString);
    procedure proc_day_download(ACommercial: Boolean);
    procedure proc_init_norecv;
    procedure pResultDayToBranch(sBrNo, sValue1, sValue2, sValue3, sValue4, sValue5: String);
    procedure pDisplayResultBranch;
  public
    { Public declarations }
    dt_sysdate2: string;
		procedure proc_init;
    procedure proc_init_filesms;
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
  Frm_SMS: TFrm_SMS;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_XmlProtocal, xe_xml, xe_Flash, xe_system, xe_JON51,
  xe_SearchWord;


type
  TEncryptType = (etBlowfish = 100);

const
  CallSMSKey = 'l2t7y9we5bv6m7am4fs79gs4d5a7zj4u';

Var
  SMSEncryptData: array of Byte;

procedure TFrm_SMS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  proc_free_sendsms;

  FreeAndNil(lCurProperties);

  if Assigned(FRmvMemList) then FreeAndNil(FRmvMemList);
  if Assigned(FRmvWkList) then FreeAndNil(FRmvWkList);
  if Assigned(FNoRecvList) then FreeAndNil(FNoRecvList);

  Action := Cafree;
end;

procedure TFrm_SMS.proc_free_sendsms;
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

procedure TFrm_SMS.proc_BranchChange;
begin
  proc_BrNameSet;
end;

procedure TFrm_SMS.proc_recieve_list(AList: TStringList);
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

        if ls_ClientKey = 'RMVMEM' then RecvResultFileRmvMember(AList) else
        if ls_ClientKey = 'RMVWK'  then RecvResultFileRmvWorker(AList);
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

procedure TFrm_SMS.FormCreate(Sender: TObject);
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

  if GT_USERIF.ID = 'sntest' then btnGetList.Visible := True;
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

  glBranchResult1 := TStringList.Create;
  glBranchResult2 := TStringList.Create;
  glBranchResult3 := TStringList.Create;
  glBranchResult4 := TStringList.Create;
  glBranchResult5 := TStringList.Create;
  glBranchResult6 := TStringList.Create;

  giMaxChar := 450;  // 최대 5건까지 연속문자 전송가능
  cxBtnHelp.Click;

  proc_init;
end;

procedure TFrm_SMS.FormDestroy(Sender: TObject);
begin
  Frm_SMS := Nil;
end;

procedure TFrm_SMS.proc_init;
begin
	sBrNo := '';
	sHdNo := '';

	cxPageControl1.ActivePageIndex := 0;
	proc_init_sendsms;
  proc_init_filesms;
	proc_init_result;
	proc_init_dayresult;
	proc_init_norecv;

	proc_BrNameSet;

	if TCK_USER_PER.SMS_Advertisement = '1' then   //대량SMS발송
	begin
		cxTabSheet1.TabVisible := True;
		cxTabSheet2.TabVisible := True;
	end	else
	begin
		cxTabSheet1.TabVisible := False;
		cxTabSheet2.TabVisible := False;
	end;

	if TCK_USER_PER.SMS_Detail_Result = '1' then   //조회결과-상세
		cxTabSheet3.TabVisible := True
	else
		cxTabSheet3.TabVisible := False;

	if TCK_USER_PER.SMS_Result = '1' then  //조회결과-일별
		cxTabSheet4.TabVisible := True
	else
		cxTabSheet4.TabVisible := False;

	if TCK_USER_PER.SMS_NoSms = '1' then   //수신거부관리
		cxTabSheet5.TabVisible := True
	else
		cxTabSheet5.TabVisible := False;
end;

procedure TFrm_SMS.proc_init_sendsms;
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
    begin
      lCurProperties.EchoMode := eemNormal;
    end else
    begin
      lCurProperties.EchoMode := eemPassword;
    end;

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
		mm_message.Text := '';
		
		AdvProgress1.Position := 0;
    dtp_date.Date := now;
    rbchk_re.Checked := False;
    ed_send.Enabled := False;
    rbchk_reClick(rbchk_re);
  except
  end;
end;

procedure TFrm_SMS.proc_init_filesms;
var
  I: integer;
  ls_TxQry, ls_TxLoad, swhere, sQueryTemp : string;
begin
  try
    // 금액관련 설정
    lCurProperties.ReadOnly := True;
    lCurProperties.Nullable := True;
    lCurProperties.DisplayFormat := '#,##0.#';
    lCurProperties.Alignment.Horz := taRightJustify;
    lCurProperties.Alignment.Vert := taVCenter;
    if TCK_USER_PER.JON_BrchCashView = '1' then
    begin
      lCurProperties.EchoMode := eemNormal;
    end else
    begin
      lCurProperties.EchoMode := eemPassword;
    end;

    // 지사그리드
    cxViewFileBranch.Columns[0].DataBinding.ValueType := 'String';
    cxViewFileBranch.Columns[1].DataBinding.ValueType := 'Currency';
    cxViewFileBranch.Columns[1].Properties := lCurProperties;
    cxViewFileBranch.Columns[2].DataBinding.ValueType := 'Currency';
    cxViewFileBranch.Columns[2].Properties := lCurProperties;
    lCurProperties.DisplayFormat := '#,##0';
    cxViewFileBranch.Columns[3].DataBinding.ValueType := 'Currency';
    cxViewFileBranch.Columns[3].Properties := lCurProperties;
    cxViewFileBranch.Columns[4].DataBinding.ValueType := 'String';
    cxViewFileBranch.DataController.SetRecordCount(0);

    // 엑셀 그리드
    for I := 0 to cxViewFileExcelList.ColumnCount - 1 do
    begin
      cxViewFileExcelList.Columns[i].DataBinding.ValueType := 'String';
    end;
  except
  end;

  // 필드 초기화

  edtSelBranch.Clear;
  edtFilename.Clear;

  cbb_Balsin.Properties.Items.Clear;
  cbb_Balsin.Visible := False;

  chkFileRecordTelNo.Checked := True;
  cbKeynumber02.Visible := True;

  cbb_cust_tel.Properties.Items.Clear;
  cbb_cust_name.Properties.Items.Clear;
  cxViewFileExcelList.DataController.SetRecordCount(0);

  btnFileSearch.Enabled := False;
  btnRemoveDuplicate.Enabled := False;
  btnSendFile.Enabled := False;

  tmrFileSms.Enabled := True;
  cbb_level.ItemIndex := 0;
  cbb_level.OnChange(self);

  lblSendCount.Caption := '전송 예상 건수는  0건 입니다.';

  if GT_USERIF.LV <> '60' then
    sWhere := format('WHERE HD_NO = ''%s'' AND BR_NO = ''%s'' ', [GT_USERIF.HD, GT_USERIF.BR])
  else if GT_USERIF.LV = '60' then
  begin
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sWhere := format('WHERE HD_NO = ''%s'' and use_yn = ''y'' ', [GT_SEL_BRNO.HDNO])
    else
      sWhere := format('WHERE HD_NO = ''%s'' and use_yn = ''y'' ', [GT_USERIF.HD]);
  end;

  try
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_BRANCH_SMSBRANCH_CASH, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sWhere]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CASH0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_SMS.proc_init_dayresult;
var
  I: Integer;
begin
	cxDtEndA4.Date := StrToDate(Copy(startDateTime('yyyy-mm-dd'), 1, 10));
  cxDtStartA4.Date := cxDtEndA4.Date - 1;

	edtDayNmlPrice.Text := FormatFloat('#,##0.#', NORSMSCASH);
	edtDayComPrice.Text := FormatFloat('#,##0.#', SMSCASH);
	edtDayPushPrice.Text := FormatFloat('#,##0.#', PUSHCASH);
	
  try
    // 금액관련 설정
    lCurProperties.ReadOnly := True;
    lCurProperties.Nullable := True;
    lCurProperties.Alignment.Horz := taRightJustify;
    lCurProperties.Alignment.Vert := taVCenter;
    if TCK_USER_PER.JON_BrchCashView = '1' then
    begin
      lCurProperties.EchoMode := eemNormal;
    end else
    begin
      lCurProperties.EchoMode := eemPassword;
    end;
    // 지사그리드
    cxViewDayResult.Columns[0].DataBinding.ValueType := 'String';
    cxViewDayResult.Columns[1].DataBinding.ValueType := 'String';
    cxViewDayResult.Columns[2].DataBinding.ValueType := 'Integer';
    cxViewDayResult.Columns[3].DataBinding.ValueType := 'Integer';
    cxViewDayResult.Columns[4].DataBinding.ValueType := 'Integer';
    cxViewDayResult.Columns[5].DataBinding.ValueType := 'Currency';
    lCurProperties.DisplayFormat := '###,##0.##';
    cxViewDayResult.Columns[5].Properties := lCurProperties;
    cxViewDayResult.Columns[6].DataBinding.ValueType := 'Currency';
    cxViewDayResult.Columns[6].Properties := lCurProperties;
    cxViewDayResult.Columns[7].DataBinding.ValueType := 'Currency';
    cxViewDayResult.Columns[7].Properties := lCurProperties;
    cxViewDayResult.Columns[8].DataBinding.ValueType := 'String';
    cxViewDayResult.DataController.SetRecordCount(0);

    cxViewBranchResult.Columns[0].DataBinding.ValueType := 'String';
    cxViewBranchResult.Columns[1].DataBinding.ValueType := 'String';
    cxViewBranchResult.Columns[2].DataBinding.ValueType := 'Integer';
    cxViewBranchResult.Columns[3].DataBinding.ValueType := 'Integer';
    cxViewBranchResult.Columns[4].DataBinding.ValueType := 'Integer';
    cxViewBranchResult.Columns[5].DataBinding.ValueType := 'Currency';
    lCurProperties.DisplayFormat := '###,##0.##';
    cxViewBranchResult.Columns[5].Properties := lCurProperties;
    cxViewBranchResult.Columns[6].DataBinding.ValueType := 'Currency';
    cxViewBranchResult.Columns[6].Properties := lCurProperties;
    cxViewBranchResult.Columns[7].DataBinding.ValueType := 'Currency';
    cxViewBranchResult.Columns[7].Properties := lCurProperties;
    cxViewBranchResult.Columns[8].DataBinding.ValueType := 'String';
    cxViewBranchResult.DataController.SetRecordCount(0);

    cxViewDaySum.Columns[0].DataBinding.ValueType := 'String';
    cxViewDaySum.Columns[1].DataBinding.ValueType := 'String';
    cxViewDaySum.Columns[2].DataBinding.ValueType := 'Integer';
    cxViewDaySum.Columns[3].DataBinding.ValueType := 'Integer';
    cxViewDaySum.Columns[4].DataBinding.ValueType := 'Integer';
    cxViewDaySum.Columns[5].DataBinding.ValueType := 'Currency';
    lCurProperties.DisplayFormat := '###,##0.##';
    cxViewDaySum.Columns[5].Properties := lCurProperties;
    cxViewDaySum.Columns[6].DataBinding.ValueType := 'Currency';
    cxViewDaySum.Columns[6].Properties := lCurProperties;
    cxViewDaySum.Columns[7].DataBinding.ValueType := 'Currency';
    cxViewDaySum.Columns[7].Properties := lCurProperties;
    cxViewDaySum.Columns[8].DataBinding.ValueType := 'String';

		cxViewDaySum.DataController.SetRecordCount(0);

		for I := 0 to 1 do
		begin
			cxViewDaySum.DataController.AppendRecord;
			cxViewDaySum.DataController.SetValue(I, 0, '합계');
			cxViewDaySum.DataController.SetValue(I, 1, StrUtils.ifThen(I = 0, '일반', '광고'));
			cxViewDaySum.DataController.SetValue(I, 2, 0);
			cxViewDaySum.DataController.SetValue(I, 3, 0);
			cxViewDaySum.DataController.SetValue(I, 4, 0);
			cxViewDaySum.DataController.SetValue(I, 5, 0);
			cxViewDaySum.DataController.SetValue(I, 6, 0);
			cxViewDaySum.DataController.SetValue(I, 7, 0);
			cxViewDaySum.DataController.SetValue(I, 8, '다운로드');
		end; 

		for I := 0 to cxViewDayDown.ColumnCount - 1 do
    begin
      cxViewDayDown.Columns[I].DataBinding.ValueType := 'String';
    end;
  except
  end;
end;

procedure TFrm_SMS.proc_init_norecv;
var
  I: Integer;
  Msg: string;
begin
  if (FileExists(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT')) and (FNoRecvList.Count > 0) then
    Exit;

  //----------------------------------------------------------------------------------------------
  // PC에 저장된 수신거부자 저장
  //----------------------------------------------------------------------------------------------
  DoubleBuffered := True;

  // [hjf] SMS_NOT_ARGEE.DAT(구버젼 초기 수신거부파일타입)에 대한 로직 제거(김지호 대리 결정)
  if (FNoRecvList.Count = 0) and (FileExists(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT')) then
  begin
    pnlSmsStatus.Left := (frm_main.Width - pnlSmsStatus.Width) div 2;
    pnlSmsStatus.Top := ((frm_main.Height - pnlSmsStatus.Height) div 2) - Self.Top;
    pnlSmsStatus.Caption := '수신거부 리스트를 불러옵니다.';
    pnlSmsStatus.Visible := True;
    Application.ProcessMessages;
    FNoRecvList.LoadFromFile(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT');
  end;

  if pos('-', FNoRecvList.Text) > 0 then
  begin
    FNoRecvList.Text := StringReplace(FNoRecvList.Text, '-', '', [rfReplaceAll]);
    FNoRecvList.SaveToFile(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT');
  end;

  if FNoRecvList.Count > 10 * 10000 then
  begin
    Msg := '수신거부 목록이 많아 화면에 표시할 경우 오래걸릴 수 있습니다.'
            + #13#10'화면에 표시하시겠습니까?'
            + #13#10#13#10'(화면에 표시하지 않아도 수신거부회원 제거는 정상처리 됩니다.)';

    if Application.MessageBox(PChar(Msg), CDMSI, MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = ID_YES then
    begin
      FNoRecvDispList := True;

      pb1.Visible := True;
      pb1.Max := FNoRecvList.Count;
      lstNoRecvList.Items.BeginUpdate;
      try
        for I := 0 to FNoRecvList.Count - 1 do
        begin
          lstNoRecvList.Items.Add(FNoRecvList[I]);
          pb1.Position := I + 1;
        end;
      finally
        lstNoRecvList.Items.EndUpdate;
      end;
    end else
    begin
      FNoRecvDispList := False;
    end;
  end else
  begin
    FNoRecvDispList := True;

    lstNoRecvList.Items.Assign(FNoRecvList);
  end;

  mmoAddNoRecv.Text := '';

  if GT_CALLMANNER_NOTSMS = 1 then chkNotSms.Checked := True
                              else chkNotSms.Checked := False;

  pnlNoRecvMsg.Visible := not FNoRecvDispList;
  pnlNoRecvMsg.BringToFront;

  lblNoRecvCount.Caption := '총  ' + IntToStr(FNoRecvList.Count - 1) + '명';
  pnlSmsStatus.Visible := False;
  pb1.Visible := False;
end;

procedure TFrm_SMS.cxButton12Click(Sender: TObject);
begin
  pnl_Char.Visible := False;
end;

procedure TFrm_SMS.cxButton1Click(Sender: TObject);
begin
  PnlHelp.Visible := False;
end;

procedure TFrm_SMS.btn_TermsClick(Sender: TObject);
var
	IE : Variant;
  Value : Cardinal;
begin
	IE := CreateOleObject('InternetExplorer.Application');

	IE.Navigate( 'http://www.callmaner.com/term.html' );
	IE.AddressBar := False;
	IE.MenuBar := False;
	IE.ToolBar := False;
	IE.StatusBar := False;

	IE.Width := 550;
	IE.Height := 600;

	IE.Top := 0;//((Self.Top * 2 + Self.Height) - IE.Height)/2;
	IE.Left := 0;//Self.Left - IE.Width;

//            bIE := True;
	Value := IE.Hwnd;
	RegSetValue(HKEY_CURRENT_USER, 'HKSFA\IE_HWND', REG_DWORD, @Value, SizeOf(Cardinal));
	IE.Visible := true;
	SetForegroundWindow(Value);
end;

procedure TFrm_SMS.btnGetListClick(Sender: TObject);
begin
  pGetComponentListSMS;
end;

procedure TFrm_SMS.cxBtnHelpClick(Sender: TObject);
begin
  PnlHelp.Left := 420;
  PnlHelp.Top  := 255;

  PnlHelp.BringToFront;
  PnlHelp.Visible := True;
end;

procedure TFrm_SMS.cxCBAdAClick(Sender: TObject);
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
  lbSrtLen.Caption := IntToStr(Len);
end;

procedure TFrm_SMS.cxGroupBox6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(pnl_file_add.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SMS.cxLabel40MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(pnlSMSLog.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SMS.cxPageControl1Change(Sender: TObject);
Var iTag : Integer;
begin
  iTag := cxPageControl1.Pages[cxPageControl1.ActivePageIndex].Tag;

  if Assigned(Frm_JON51) then
      if TCK_USER_PER.BTM_MENUSCH = '1' then Frm_JON51.Menu_Use_Mark('ADD', iTag);
end;

procedure TFrm_SMS.cxViewBranchResultMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  btnExcelA4.Tag := 1;
end;

procedure TFrm_SMS.cxViewColumnHeaderClick(Sender: TcxGridTableView;
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
      Sender.Columns[AColumn.Index].SortOrder := soDescending;

    Sender.Columns[AColumn.Index].SortIndex := 0;
    Sender.DataController.FocusedRecordIndex := 0;
  except on E: Exception do
      GMessagebox(PChar('frmChild[cxgGrid1ColumnHeaderClick]Error:' + E.Message), CDMSE);
  end;
end;

procedure TFrm_SMS.cxViewDayResultMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  btnExcelA4.Tag := 0;
end;

procedure TFrm_SMS.cxViewDaySumCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
	ACommercial: Boolean;

	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	i, ErrCode, iRow, j, k : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
begin
	if ACellViewInfo.Item.Index = 8 then
  begin
		if btnSearchA4.Hint = 'SMS' then
		begin
			ACommercial := ACellViewInfo.GridRecord.Index = 1;
			gsCommercial := ACommercial;

			dlgSave.FileName := Format('SMS전송내역_%s-%s.xls', [
				FormatDateTime('YYYYmmdd', cxDtStartA4.Date), FormatDateTime('YYYYmmdd', cxDtEndA4.Date)]);
			if dlgSave.Execute then
			begin
				if ACommercial then
				begin
					cxViewDayDown.Columns[0].Caption := 'No.';
					cxViewDayDown.Columns[1].Caption := '지사명';
					cxViewDayDown.Columns[2].Caption := '지사코드';
					cxViewDayDown.Columns[3].Caption := '날짜';
					cxViewDayDown.Columns[4].Caption := '메세지';
					cxViewDayDown.Columns[5].Caption := '총전송건소';
					cxViewDayDown.Columns[6].Caption := '성공건수';
					cxViewDayDown.Columns[7].Caption := '실패건수';
					cxViewDayDown.Columns[8].Caption := '건당요금';
					cxViewDayDown.Columns[9].Caption := '사용금액';
				end else
				begin
					cxViewDayDown.Columns[0].Caption := 'No.';
					cxViewDayDown.Columns[1].Caption := '지사명';
					cxViewDayDown.Columns[2].Caption := '지사코드';
					cxViewDayDown.Columns[3].Caption := '날짜';
					cxViewDayDown.Columns[4].Caption := '회신번호';
					cxViewDayDown.Columns[5].Caption := '수신번호';
					cxViewDayDown.Columns[6].Caption := '구분';
					cxViewDayDown.Columns[7].Caption := '메세지';
					cxViewDayDown.Columns[8].Caption := '성공/실패';
					cxViewDayDown.Columns[9].Caption := '건당요금';
				end;

				proc_day_download(ACommercial);
			end;
		end else
		begin
			ACommercial := ACellViewInfo.GridRecord.Index = 1;
			gsCommercial := ACommercial;

			dlgSave.FileName := Format('PUSH전송내역_%s-%s.xls', [
				FormatDateTime('YYYYmmdd', cxDtStartA4.Date), FormatDateTime('YYYYmmdd', cxDtEndA4.Date)]);

			if dlgSave.Execute then
			begin
				cxViewDayDown.Columns[0].Caption := 'No.';
				cxViewDayDown.Columns[1].Caption := '지사명';
				cxViewDayDown.Columns[2].Caption := '지사코드';
				cxViewDayDown.Columns[3].Caption := '날짜';
				cxViewDayDown.Columns[4].Caption := '회신번호';
				cxViewDayDown.Columns[5].Caption := '수신번호';
				cxViewDayDown.Columns[6].Caption := '구분';
				cxViewDayDown.Columns[7].Caption := '메세지';
				cxViewDayDown.Columns[8].Caption := '성공/실패';
				cxViewDayDown.Columns[9].Caption := '건당요금';
				//(주)콜마너│B100│2017-02-01││01068213015│test│전송성공│7
				try
					Param := sHdNo;
					Param := Param + '│' + sBrNo;

					Param := Param + '│' + formatdatetime('yyyymmdd', cxDtStartA4.Date) + '│' + formatdatetime('yyyymmdd', cxDtEndA4.Date);

					Screen.Cursor := crHourGlass;

					slList := TStringList.Create;
					try
						if not RequestBasePaging(GetSel06('GET_PUSH_RESULT_STAT_DOWNLOAD', 'PUSH.GET_PUSH_RESULT_STAT_DOWNLOAD', '100', Param), slList, ErrCode, ErrMsg) then
						begin
							GMessagebox(Format('조회결과(일별)-다운로드 리스트 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
							FreeAndNil(slList);
							Screen.Cursor := crDefault;
							Exit;
						end;
						pnlSmsStatus.Left := (frm_main.Width - pnlSmsStatus.Width) div 2;
						pnlSmsStatus.Top := ((frm_main.Height - pnlSmsStatus.Height) div 2) - Self.Top;
						pnlSmsStatus.Caption := '엑셀파일을 생성 중입니다.';
						pnlSmsStatus.Visible := True;

						Application.ProcessMessages;

						xdom := ComsDomDocument.Create;
						try
							Frm_Flash.cxPBar1.Properties.Max := slList.Count;
							Frm_Flash.cxPBar1.Position := 0;
							cxViewDayDown.DataController.SetRecordCount(0);
							cxViewDayDown.BeginUpdate;
							for j := 0 to slList.Count - 1 do
							begin
								Frm_Flash.cxPBar1.Position := j + 1;
								Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
								Application.ProcessMessages;
								xmlData := slList.Strings[j];
								xdom.loadXML(XmlData);

								ls_MSG_Err := GetXmlErrorCode(XmlData);
								if ('0000' = ls_MSG_Err) then
								begin
									if (0 < GetXmlRecordCount(XmlData)) then
									begin
										lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

										pb1.Max := lst_Result.length;
										pb1.Position := 0;
										pb1.Visible := True;

										Application.ProcessMessages;
										ls_Rcrd := TStringList.Create;
										try
											for I := 0 to lst_Result.length - 1 do
											begin
												GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
												ls_Rcrd.Insert(0, IntToStr(I + 1));
												ls_Rcrd.Insert(6, 'PUSH');
												//(주)콜마너│B100│2017-02-01││01068213015│test│전송성공│7
												iRow := cxViewDayDown.DataController.AppendRecord;
												for k := 0 to cxViewDayDown.ColumnCount - 1 do
												begin
													// 엑셀다운로드 권한(고객번호 숨김 체크)
													if ( GT_USERIF.Excel_Use = 'm' ) And ( Not gsCommercial ) And ( k = 5 ) then
														cxViewDayDown.DataController.SetValue(iRow, k, '***-****-****')
													else
														cxViewDayDown.DataController.SetValue(iRow, k, ls_Rcrd[k]);
												end;

												pb1.Position := I + 1;
											end;
										finally
											ls_Rcrd.Free;
										end;
									end;
								end;
							end;
						finally
							cxViewDayDown.EndUpdate;
							pb1.Visible := False;
							Screen.Cursor := crDefault;
							pnlSmsStatus.Visible := False;
							xdom := Nil;
						end;
					finally
						Frm_Flash.hide;
						Screen.Cursor := crDefault;
						FreeAndNil(slList);
					end;
				except
					on e: Exception do
					begin
						Frm_Flash.hide;
						Screen.Cursor := crDefault;
						FreeAndNil(slList);
						pnlSmsStatus.Visible := False;
						Assert(False, E.Message);
						exit;
					end;
				end;
			end;
		end;

		ExportGridToExcel(dlgSave.FileName, cxGridDayDown, False, True, False, 'xls');
  end;
end;

procedure TFrm_SMS.cxViewFileBranchCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnSelBranch.Click;
end;

procedure TFrm_SMS.cxViewResultListCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
const
	_SMS_KEY = 'rsn8q9rq0k1i1sf89mec7x9b3p6z0e4n';
//  _SMS_KEY = '9me0q9b3p6c7x9re4n1sf8sn8rq0k1iz';
//  _SMS_KEY = 'e8s0e4n1sk1iz09tjffpdlaq9b3mc7xf';
var
  MIndex: string;
	HTTPEnc : string;

  procedure RunDownload(AData: string);
  const
    _URL  = 'http://%s/sms/report2.php?Data=%s';
		_URL2 = 'http://%s/sms_ad_report_detail.do?TYPE=excel&SDU=%s';
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

      //IE.Navigate(Format(_URL, ['www.callmaner.com', AData]));
      IE.Navigate(Format(_URL2, ['cas.callmaner.com:8080', AData]));
      IE.Visible := True;

      Application.ProcessMessages;
      sleep(1);
    except on E: Exception do
      GMessagebox(Format('SMS 상세결과 다운로드 시 오류(Err: %s)가 발생하였습니다.'#13#10
                        + '(다시시도 바랍니다.)' , [E.Message]), CDMSE);
    end;
  end;
var
	sTMP, s, sss: string;
	AEncryptData: array of Byte;
	iEncryptLen, ii : Integer;

	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i, iTmp, j : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
begin
	if ACellViewInfo.Item.Index = 10 then
	begin
		if btnSearchA3.Hint = 'SMS' then
		begin
			SetLength(AEncryptData, MaxCommandSize);

			MIndex := cxViewResultList.DataController.Values[ACellViewInfo.GridRecord.Index, 11];
			if GS_PRJ_AREA = 'S' then begin
				sTMP := MIndex +'|' + GT_USERIF.ID +'|'+ '1';   // 수도권
			end else begin
				sTMP := MIndex +'|' + GT_USERIF.ID +'|'+ '2';   // 지방권
			end;
			ii := Length(sTMP) mod 8; // blowfish 는 8byte 단위로 암호화 함(나머지 부족한 자리는 공백으로 채움)
			if ii > 0 then begin
				sTMP := sTMP + LPAD(sss,' ', 8-ii);
			end;

			iEncryptLen := BlowFishEncrypt(_SMS_KEY, sTMP, AEncryptData);

			// Hex 코드 만들기..
			for ii:= 0 to iEncryptLen - 1 do
			begin
				s := s + IntToHex(Byte(AEncryptData[ii]),2);
			end;

			HTTPEnc := HTTPEncode(s);

			RunDownload(HttpEnc);
		end else
    if btnSearchA3.Hint = 'PUSH' then
		begin
			cxViewResultExcel.DataController.SetRecordCount(0);
			try
				iTmp := cxViewResultList.GetColumnByFieldName('PushSeq').Index;
				Param := cxViewResultList.DataController.Values[ACellViewInfo.GridRecord.Index, iTmp];

				Screen.Cursor := crHourGlass;

				slList := TStringList.Create;
				if not RequestBasePaging(GetSel06('GET_PUSH_RESULT_DOWNLOAD', 'PUSH.GET_PUSH_RESULT_DOWNLOAD', '100', Param), slList, ErrCode, ErrMsg) then
				begin
					GMessagebox(Format('조회결과(상세)-다운로드 리스트 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
					Screen.Cursor := crDefault;
					Exit;
				end;
				xdom := ComsDomDocument.Create;
				try
					Frm_Flash.cxPBar1.Properties.Max := slList.Count;
					Frm_Flash.cxPBar1.Position := 0;
					cxViewResultExcel.DataController.SetRecordCount(0);
					cxViewResultExcel.BeginUpdate;
					for j := 0 to slList.Count - 1 do
					begin
						Frm_Flash.cxPBar1.Position := j + 1;
						Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
						Application.ProcessMessages;
						xmlData := slList.Strings[j];
						xdom.loadXML(XmlData);
					
						ls_MSG_Err := GetXmlErrorCode(XmlData);
						if ('0000' = ls_MSG_Err) then
						begin
							if (0 < GetXmlRecordCount(XmlData)) then
							begin
								lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
								ls_Rcrd := TStringList.Create;
								try
									for i := 0 to lst_Result.length - 1 do
									begin
										GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
										Application.ProcessMessages;

										iRow := cxViewResultExcel.DataController.AppendRecord; // 1 Record 추가

										ls_Rcrd.Insert(0, IntToStr(I + 1));

										cxViewResultExcel.DataController.SetValue(iRow, 0, ls_Rcrd[0]);
										cxViewResultExcel.DataController.SetValue(iRow, 1, ls_Rcrd[1]);
										cxViewResultExcel.DataController.SetValue(iRow, 2, ls_Rcrd[2]);
										cxViewResultExcel.DataController.SetValue(iRow, 3, ls_Rcrd[3]);
										cxViewResultExcel.DataController.SetValue(iRow, 4, GetStrToDateTimeGStr(ls_Rcrd[4],3));//입력시간
										cxViewResultExcel.DataController.SetValue(iRow, 5, GetStrToDateTimeGStr(ls_Rcrd[5],3));//예약시간
										cxViewResultExcel.DataController.SetValue(iRow, 6, GetStrToDateTimeGStr(ls_Rcrd[6],3));//전송시간
										cxViewResultExcel.DataController.SetValue(iRow, 7, ls_Rcrd[7]);
									end;
								finally
									ls_Rcrd.Free;
								end;
									

							end;
						end;
					end;
				finally
					cxViewResultExcel.EndUpdate;
					Screen.Cursor := crDefault;
					FreeAndNil(slList);
					Frm_Flash.hide;
					xdom := Nil;
				end;
			except
				on e: Exception do
				begin
					Screen.Cursor := crDefault;
					FreeAndNil(slList);
					Assert(False, E.Message);
					exit;
				end;
			end;
			
			if cxViewResultExcel.DataController.RecordCount = 0 then
			begin
				GMessagebox('자료가 없습니다.', CDMSE);
				Exit;
			end;

			if GT_USERIF.Excel_Use = 'n' then
			begin
				GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
				Exit;
			end;

			if (TCK_USER_PER.SMS_ExcelDown <> '1') then
			begin
				ShowMessage('[엑셀다운로드[SMS메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
				Exit;
			end;

			Frm_Main.sgExcel := '조회결과상세-일별(PUSH).xls';
			Frm_Main.sgRpExcel := Format('SMS>조회결과(상세)-일별(PUSH)]%s건', [GetMoneyStr(cxViewResultExcel.DataController.RecordCount)]);
			Frm_Main.cxGridExcel := cxGrid1;
			Frm_Main.cxGridDBViewExcel := cxViewResultExcel;
			Frm_Main.proc_excel(0);

		end;
	end;
end;

procedure TFrm_SMS.btnSearchA3Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		exit;
	end;

	if cboSearchGubun.ItemIndex = 0 then
	begin
		proc_search;
		btnSearchA3.Hint := 'SMS';
	end	else
	begin
		proc_search_Push;
		btnSearchA3.Hint := 'PUSH';
	end
end;

procedure TFrm_SMS.btnSearchA4Click(Sender: TObject);
var i : integer;
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		exit;
	end;
	cxViewDaySum.DataController.SetRecordCount(0);
	if cboSearchGubun4.ItemIndex = 0 then
	begin
		btnSearchA4.Hint := 'SMS';

		for I := 0 to 1 do
		begin
			cxViewDaySum.DataController.AppendRecord;
			cxViewDaySum.DataController.SetValue(I, 0, '합계');
			cxViewDaySum.DataController.SetValue(I, 1, StrUtils.ifThen(I = 0, '일반', '광고'));
			cxViewDaySum.DataController.SetValue(I, 2, 0);
			cxViewDaySum.DataController.SetValue(I, 3, 0);
			cxViewDaySum.DataController.SetValue(I, 4, 0);
			cxViewDaySum.DataController.SetValue(I, 5, 0);
			cxViewDaySum.DataController.SetValue(I, 6, 0);
			cxViewDaySum.DataController.SetValue(I, 7, 0);
			cxViewDaySum.DataController.SetValue(I, 8, '다운로드');
		end;

		proc_daylist_search;
	end else
	begin
		btnSearchA4.Hint := 'PUSH';

		cxViewDaySum.DataController.AppendRecord;
		cxViewDaySum.DataController.SetValue(0, 0, '합계');
		cxViewDaySum.DataController.SetValue(0, 1, 'PUSH');
		cxViewDaySum.DataController.SetValue(0, 2, 0);
		cxViewDaySum.DataController.SetValue(0, 3, 0);
		cxViewDaySum.DataController.SetValue(0, 4, 0);
		cxViewDaySum.DataController.SetValue(0, 5, 0);
		cxViewDaySum.DataController.SetValue(0, 6, 0);
		cxViewDaySum.DataController.SetValue(0, 7, 0);
		cxViewDaySum.DataController.SetValue(0, 8, '다운로드');

		proc_daylist_search_PUSH;
	end;
end;

procedure TFrm_SMS.proc_search;
var
	ls_TxLoad, ls_TxQry, swhere, sQueryTemp : string;
	sDate1, sDate2, msg: string;
begin
	dt_sysdate2 := frm_main.func_sysdate;

	if Trim(dt_sysdate2) = '' then
  begin
		GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSE);
		exit;
	end;

	if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) > 2100)
		or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 SMS전송 결과를 사용할 수 없습니다.', CDMSE);
    exit;
  end;

  cxViewResultList.DataController.SetRecordCount(0);


  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementEtc(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 광고관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSE);
    Exit;
  end;

  try
    swhere := '';

    if GT_SEL_BRNO.GUBUN = '1' then
    begin
      sWhere := Format(' AND A.BR_NO = ''%s'' ', [GT_SEL_BRNO.BrNo]);
    end else
    begin
      if GT_USERIF.LV = '60' then
      begin
        if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
          sWhere := Format(' AND B.HD_NO = ''%s'' ', [GT_SEL_BRNO.HDNO])
        else
          sWhere := Format(' AND B.HD_NO = ''%s'' ', [GT_USERIF.HD]);
      end else
      if GT_USERIF.LV = '40' then
        sWhere := Format(' AND A.BR_NO = ''%s'' ', [GT_USERIF.BR])
      else if GT_USERIF.LV = '10' then
        sWhere := Format(' AND B.CALLCENTER = ''%s'' AND (B.HD_NO = ''%s'' OR B.ROUTE_MGR_ETC = ''y'')', [GT_USERIF.BR, GT_USERIF.HD])
      ;
    end;

    sWhere := sWhere + 'ORDER BY A.IN_DATE DESC ';
    sDate1 := formatdatetime('yyyymmdd', cxDtStartA3.Date);
    sDate2 := formatdatetime('yyyymmdd', cxDtEndA3.Date);

    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_SMS_RESULT, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sDate1, sDate2, sWhere]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'SMSR0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

		RequestData(ls_TxLoad);
	except
	end;
end;

procedure TFrm_SMS.proc_search_Push;
var
	XmlData, Param, ErrMsg : string;
	ErrCode, i, j : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	RowIdx: Integer;
	sReqDate, sSendDate: string;
begin
	dt_sysdate2 := frm_main.func_sysdate;

	if Trim(dt_sysdate2) = '' then
	begin
		GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSE);
		exit;
	end;

	if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) > 2100)
		or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
		GMessagebox('오후 9시부터 오전 1시 사이에는 PUSH전송 결과를 사용할 수 없습니다.', CDMSE);
		exit;
  end;

	cxViewResultList.DataController.SetRecordCount(0);


	try
		Param := sHdNo;
		Param := Param + '│' + sBrNo;

		Param := Param + '│' + formatdatetime('yyyymmdd', cxDtStartA3.Date) + '│' + formatdatetime('yyyymmdd', cxDtEndA3.Date);


		Screen.Cursor := crHourGlass;

		slList := TStringList.Create;
		if not RequestBasePaging(GetSel06('GET_PUSH_RESULT_SEARCH', 'PUSH.GET_PUSH_RESULT_SEARCH', '100', Param), slList, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('조회결과(상세) 공지푸시 리스트 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			Exit;
		end;
		
		xdom := ComsDomDocument.Create;
		try
			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			cxViewResultList.DataController.SetRecordCount(0);
			cxViewResultList.BeginUpdate;
			for j := 0 to slList.Count - 1 do
			begin
				Frm_Flash.cxPBar1.Position := j + 1;
				Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
				Application.ProcessMessages;
				xmlData := slList.Strings[j];
				xdom.loadXML(XmlData);

				if (0 < GetXmlRecordCount(XmlData)) then
				begin
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

					ls_Rcrd := TSTringList.Create;
					try
						for I := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

							RowIdx := cxViewResultList.DataController.AppendRecord;
							ls_Rcrd.Insert(0, IntToStr(RowIdx+1));
							cxViewResultList.DataController.SetValue(RowIdx, 0, ls_Rcrd[0]);

							sSendDate := ls_Rcrd[1];
							sSendDate := Copy(sSendDate, 1, 10) + ' ' + Copy(sSendDate, 11, 8);

							sReqDate := ls_Rcrd[2];
							if ( Trim(sReqDate) <> '' ) And ( Length(sReqDate) = 14 ) then
							begin
								sReqDate := copy(sReqDate, 1, 4) + '-' + copy(sReqDate, 5, 2) + '-' +
									copy(sReqDate, 7, 2) + ' ' + copy(sReqDate, 9, 2) + ':' + copy(sReqDate, 11, 2) + ':' + copy(sReqDate, 13, 2);

								if StrToDateTime(sSendDate) - StrToDateTime(sReqDate) > 0 then
									sReqDate := Copy(sSendDate, 1, 16)
								else
									sReqDate := Copy(sReqDate, 1, 16);
							end
							else if ( Trim(sReqDate) <> '' ) And ( Length(sReqDate) = 18 ) then
							begin
								sReqDate := Copy(sReqDate, 1, 10) + ' ' + Copy(sReqDate, 11, 8);
							end;
							cxViewResultList.DataController.SetValue(RowIdx, 1, sSendDate);
							cxViewResultList.DataController.SetValue(RowIdx, 2, sReqDate);
							cxViewResultList.DataController.SetValue(RowIdx, 3, ls_Rcrd[3]);
							cxViewResultList.DataController.SetValue(RowIdx, 4, ls_Rcrd[4]);
							cxViewResultList.DataController.SetValue(RowIdx, 5, strtocall(ls_Rcrd[5]));
							cxViewResultList.DataController.SetValue(RowIdx, 6, StrToIntDef(ls_Rcrd[6], 0));
							cxViewResultList.DataController.SetValue(RowIdx, 7, StrToIntDef(ls_Rcrd[7], 0));
							cxViewResultList.DataController.SetValue(RowIdx, 8, StrToIntDef(ls_Rcrd[8], 0));
							cxViewResultList.DataController.SetValue(RowIdx, 9, StrToFloatDef(ls_Rcrd[9], 0));
							cxViewResultList.DataController.SetValue(RowIdx, 10, '다운로드');
							cxViewResultList.DataController.SetValue(RowIdx, 11, ls_Rcrd[10]);  //M-Index
							cxViewResultList.DataController.SetValue(RowIdx, 12, ls_Rcrd[10]);  //pushSeq
						end;
					finally
						ls_Rcrd.Free;
					end;
				end;
			end;
		finally
			cxViewResultList.EndUpdate;
			xdom := Nil;
			Frm_Flash.hide;
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			if cxViewResultList.DataController.RecordCount = 0 then
			begin
				GMessagebox('검색된 결과가 없습니다.', CDMSE);
			end;
		end;

	except
		on e: Exception do
		begin
			Screen.Cursor := crDefault;
			Frm_Flash.hide;
			FreeAndNil(slList);
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_SMS.btnSelBranchClick(Sender: TObject);
var
  ARow: Integer;
begin
  dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSE);
    exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) >
    2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSE);
    exit;
  end;

  if cxViewFileBranch.DataController.FocusedRecordIndex = - 1 then
  begin
    GMessagebox('지사를 선택해주세요.', CDMSE);
    Exit;
  end;

  ARow := cxViewFileBranch.DataController.FocusedRecordIndex;
  edtSelBranch.Text := cxViewFileBranch.ViewData.Records[ARow].Values[0];

  cbb_level.ItemIndex := 1;
  cbb_level.OnChange(self);
  edtFilename.Clear;
  cxViewFileExcelList.DataController.SetRecordCount(0);
  btnFileSearch.Enabled := True;
  btnRemoveDuplicate.Enabled := False;
  btnSendFile.Enabled := False;
end;

procedure TFrm_SMS.lbl43Click(Sender: TObject);
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

procedure TFrm_SMS.Memo1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxMemo(sender).Text := Enc_Control(TcxMemo(sender).Text);
end;

procedure TFrm_SMS.Memo1PropertiesChange(Sender: TObject);
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

		TcxLabel(FindComponent('lb_Cnt' + IntToStr(TLabel(Sender).Tag))).Caption := Format('%d건', [iCnt]);
		TcxLabel(FindComponent('lb_Cnt' + IntToStr(TcxLabel(sender).Tag))).style.Textcolor := clBlue;
		TcxLabel(FindComponent('lb_Cnt' + IntToStr(TcxLabel(sender).Tag))).style.font.style := [fsBold];

    if iCnt > 5 then   // 최대 5건까지 연속문자 전송가능
  		TcxLabel(FindComponent('lbMaxLen' + IntToStr(TcxLabel(sender).Tag))).Caption := Format('/ %dByte', [5 * 90])
    else
  		TcxLabel(FindComponent('lbMaxLen' + IntToStr(TcxLabel(sender).Tag))).Caption := Format('/ %dByte', [iCnt * 90]);
	end else
	begin
    if iLen = 0 then TcxLabel(FindComponent('lb_Cnt' + IntToStr(TLabel(Sender).Tag))).Caption := '0건'
                else TcxLabel(FindComponent('lb_Cnt' + IntToStr(TLabel(Sender).Tag))).Caption := '1건';
		TcxLabel(FindComponent('lb_Cnt' + IntToStr(TcxLabel(sender).Tag))).Style.Textcolor := clBlack;
		TcxLabel(FindComponent('lb_Cnt' + IntToStr(TcxLabel(sender).Tag))).style.font.style := [];

		TcxLabel(FindComponent('lbMaxLen' + IntToStr(TcxLabel(sender).Tag))).Caption := '/ 90Byte';
	end;
end;

procedure TFrm_SMS.MiOneMonthClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_SMS.MiOneWeekClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_SMS.MiStartMonthClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure TFrm_SMS.MiTodayClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

procedure TFrm_SMS.MiYesterdayClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

function TFrm_SMS.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

  Case cxPageControl1.ActivePageIndex of
  2 : begin
        AStDt := cxDtStartA3;
      	AEdDt := cxDtEndA3;
      end;
  3 : begin
        AStDt := cxDtStartA4;
        AEdDt := cxDtEndA4;
      end;
  end;
end;

procedure TFrm_SMS.chkNameAddClick(Sender: TObject);
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
    end else
    begin
      mm_message.Text := sTarget + mm_message.Text;
    end;
    mm_message.SelStart := length(mm_message.Text);
  end
  else
    mm_message.Text := StringReplace(mm_message.Text, sTarget, '', [rfReplaceAll]);

  lbSrtLen.Caption := IntToStr(Length(AnsiString(mm_message.Text)));
  mm_message.SetFocus;
end;

procedure TFrm_SMS.chkBrAddClick(Sender: TObject);
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
    end else
    begin
      mm_message.Text := sTarget + mm_message.Text;
    end;
    mm_message.SelStart := length(mm_message.Text);
  end
  else
    mm_message.Text := StringReplace(mm_message.Text, sTarget, '', [rfReplaceAll]);

  lbSrtLen.Caption := IntToStr(Length(AnsiString(mm_message.Text)));
  mm_message.SetFocus;
end;

procedure TFrm_SMS.chkFileRecordTelNoClick(Sender: TObject);
begin
  if chkFileRecordTelNo.Checked then
  begin
    cbKeynumber02.Visible := True;
    cbKeynumber02.SetFocus;
    cbb_Balsin.Visible := False;
  end else
  begin
    cbKeynumber02.Visible := False;
    cbb_Balsin.Visible := True;
    cbb_Balsin.Text := '';
  end;
end;

procedure TFrm_SMS.chkTelAddClick(Sender: TObject);
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
    end else
    begin
      mm_message.Text := sTarget + mm_message.Text;
    end;
    mm_message.SelStart := length(mm_message.Text);
  end
  else
    mm_message.Text := StringReplace(mm_message.Text, sTarget, '', [rfReplaceAll]);

  lbSrtLen.Caption := IntToStr(Length(AnsiString(mm_message.Text)));
  mm_message.SetFocus;
end;

procedure TFrm_SMS.mm_messageKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_SMS.mm_messageKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
	sTmp, sMsg : string;
begin
	if Ord(key) = VK_F5 then
	begin
		pnl_Char.Left := btnInsertChar.Left;
    pnl_Char.Top := btnInsertChar.Top + btnInsertChar.Height + 2;
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

procedure TFrm_SMS.btnSetMsg1Click(Sender: TObject);
var
  i: Integer;
begin
	for i := 0 to ComponentCount - 1 do
	begin
		if (Components[i] is TcxMemo) and (TcxMemo(Components[i]).Tag =
			TcxButton(Sender).Tag) then
		begin
      if Trim(TcxMemo(Components[i]).Text) <> '' then
      begin
  			mm_message.Text := GetStrPharseByte(TcxMemo(Components[i]).Text, giMaxChar);
	  		lbSrtLen.Caption := IntToStr(Length(AnsiString(mm_message.Text)));
      end;
		end;
  end;
end;

procedure TFrm_SMS.btnSMSLogClick(Sender: TObject);
begin
  if pnlSMSLog.Visible then Exit;

  pnlSMSLog.Visible := True;
  pnlSMSLog.Top   := edtFilename.Top;
  pnlSMSLog.Left  := edtFilename.Left;
end;

procedure TFrm_SMS.btnSMSResultDownClick(Sender: TObject);
begin
  if cxViewFileExcelList.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
    Exit;
  end;

	if (TCK_USER_PER.SMS_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[SMS메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '광고_수신거부옵션제거.xls';
  Frm_Main.sgRpExcel := Format('SMS>광고_수신거부옵션제거]%s건', [GetMoneyStr(cxViewFileExcelList.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridFileExcelList;
  Frm_Main.cxGridDBViewExcel := cxViewFileExcelList;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_SMS.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
  begin
    if ActiveControl.Name = 'ed_receiver' then ed_send.SetFocus else
    if ActiveControl.Name = 'ed_send' then
    begin
      if IDOK = GMessagebox(CMS011, CDMSQ) then
        btnSendMsgClick(nil)
      else
        Exit;
    end;
  end;
end;

procedure TFrm_SMS.FormShow(Sender: TObject);
begin
  fSetFont(Frm_SMS, GS_FONTNAME);
end;

function TFrm_SMS.func_sysdate: string;
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
            end else
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

procedure TFrm_SMS.btnSendFileClick(Sender: TObject);
begin
  try
    GS_CUTSMS := False;
    Frm_Main.procMenuCreateActive(1001, 'SMS발송');
    proc_sms_trans;
    cbb_level.ItemIndex := 5;
  except
  end;
end;

procedure TFrm_SMS.proc_sms_trans;
var
  iRow, i, icnt, ikey_cnt, KeyRow: Integer;
  sBrNo, sTemp: string;
begin
  iCnt := 0;

  Frm_SMS.chkBalsin.Checked := chkFileRecordTelNo.Checked;
  if chkFileRecordTelNo.Checked then
  begin
    Frm_SMS.cbKeynumber01.ItemIndex := cbKeynumber02.ItemIndex;
  end;

  sBrNo := cxViewFileBranch.ViewData.Records[cxViewFileBranch.DataController.FocusedRowIndex].Values[4];

  Frm_SMS.cxViewMsgList.DataController.SetRecordCount(0);
  Frm_SMS.cxViewSendSms.DataController.SetRecordCount(0);
	Frm_SMS.cxViewSms.DataController.SetRecordCount(0);
  Frm_SMS.cxViewKeyNum.DataController.SetRecordCount(0);
  Frm_SMS.btnSendMsg.Enabled := False;
  Frm_SMS.cxViewSms.BeginUpdate;
  Frm_SMS.cxViewKeyNum.BeginUpdate;

  try
    Frm_SMS.cxViewSms.DataController.RecordCount := cxViewFileExcelList.DataController.RecordCount;

    for I := 0 to cxViewFileExcelList.DataController.RecordCount - 1 do
    begin
      // 전송내역 구성
      // 0, 지사코드
      Frm_SMS.cxViewSms.DataController.Values[I, 0] := sBrNo;
      // 1, 대표번호
			if chkFileRecordTelNo.Checked then
				Frm_SMS.cxViewSms.DataController.Values[I, 1] := cbKeynumber02.Text
      else
        Frm_SMS.cxViewSms.DataController.Values[I, 1] := cxViewFileExcelList.ViewData.Records[I].Values[cbb_Balsin.ItemIndex - 1];
      // 2, 고객번호
      Frm_SMS.cxViewSms.DataController.Values[I, 2] := cxViewFileExcelList.ViewData.Records[I].Values[cbb_cust_tel.ItemIndex];
      // 3, 고객명
      if cbb_cust_name.Style.Color = clSilver then
        Frm_SMS.cxViewSms.DataController.SetValue(I, 3, '')
      else
        Frm_SMS.cxViewSms.DataController.Values[I, 3] := cxViewFileExcelList.ViewData.Records[I].Values[cbb_cust_name.ItemIndex - 1];
      Inc(icnt);

      // 대표전화별 전송수 카운팅
      sTemp := Frm_SMS.cxViewSms.DataController.Values[I, 1];
      iRow := GetRowIndexSameValue(Frm_SMS.cxViewKeyNum, 1, sTemp);

      if iRow = -1 then
      begin
        KeyRow := Frm_SMS.cxViewKeyNum.DataController.AppendRecord;
        Frm_SMS.cxViewKeyNum.DataController.Values[KeyRow, 0] := Frm_SMS.cxViewSms.DataController.Values[I, 0];
        Frm_SMS.cxViewKeyNum.DataController.Values[KeyRow, 1] := Frm_SMS.cxViewSms.DataController.Values[I, 1];
        Frm_SMS.cxViewKeyNum.DataController.Values[KeyRow, 2] := 1;
      end else
      begin
        ikey_cnt := Integer(Frm_SMS.cxViewKeyNum.DataController.Values[iRow, 2]);
        Inc(ikey_cnt);
        Frm_SMS.cxViewKeyNum.DataController.SetValue(iRow, 2, ikey_cnt);
      end;
    end;
  finally
    Frm_SMS.cxViewSms.EndUpdate;
    Frm_SMS.cxViewKeyNum.EndUpdate;
  end;

  Frm_SMS.cxViewSms.Columns[1].SortOrder := soAscending;
  cxViewFileExcelList.Columns[cbb_cust_tel.ItemIndex].SortOrder := soAscending;
  Frm_SMS.mmoAfter.Text := IntToStr(iCnt);

  // 외부에서 호출함수
	Frm_SMS.proc_branch_sms;
end;

procedure TFrm_SMS.btnSendMsgClick(Sender: TObject);
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
 	if Not func_EucKr_Check(mm_message, 1) then Exit;

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
          GMessagebox('과거시간으로 예약은 불가합니다.' + #13#10 + '(' + '현재시간 : ' + tm_nowdate + ')',cdmsE);
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
        GMessagebox('다시한번 보내기 버튼을 눌러주세요', CDMSE);
        exit;
      end;
      if trim(mm_message.Text) = '' then
      begin
        GMessagebox('메세지 내용이 없습니다.', cdmsE);
        exit;
      end;

      sRTime := IntToStr(se_Time1.Value) + LPad(IntToStr(se_time2.Value), '0', 2);
      //----------------------------------------------------------------------------------------------------
      //      예약시간및, 전송시간 체크
      //----------------------------------------------------------------------------------------------------
//      if GT_USERIF.HD <> 'A100' then
      begin
				if ((StrToIntdef(sRTime, 200) > 2040) or (se_Time1.Value < 9)) and (se_Time1.Enabled) then
        begin
					GMessagebox('오후 8시40분 부터 오전 9시 사이에보내는 SMS광고를 예약 할 수 없습니다.', CDMSE);
          exit;
        end;

				if ((StrToInt(copy(dt_sysdate2, 9, 4)) >= 2040) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 900)) and (not rbchk_re.checked)then
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
            '다시한번 시도하세요', CDMSE);
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
							end	else
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
            end else
            if sSmsResult = '21' then
            begin
              mmo_log.Lines.Add('[' + sBrNo + ']에 ' + IntToStr(iCnt) + '건 응답 실패');
              ShowMessage('수신데이터가 없습니다...' + #13#10 + '잠시 후 다시 시도해 주십시오.');
              Exit;
            end else
            if sSmsResult = '00' then
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
          end else
          if Error_CHK = '11' then
          begin
            ShowMessage('지사코드 오류입니다..' + #13#10 + '지사코드를 확인하시고 시도바랍니다.');
            Exit;
          end else
          if Error_CHK = '01' then
          begin
            ShowMessage('알 수 없는 오류 입니다..' + #13#10 + '잠시 후 다시 시도해 주십시오.');
            Exit;
          end else
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

procedure TFrm_SMS.rbchk_reClick(Sender: TObject);
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

procedure TFrm_SMS.chk4NumberClick(Sender: TObject);
var
	s, s1: wideString;
const
	sTarget = '<$4자리$>';
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

	lbSrtLen.Caption := IntToStr(Length(AnsiString(mm_message.Text)));
	mm_message.SetFocus;
end;

procedure TFrm_SMS.chkBalsinClick(Sender: TObject);
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

procedure TFrm_SMS.proc_branch_sms;
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

procedure TFrm_SMS.btnPreViewClick(Sender: TObject);
var
  dblCash, dblDan : Double;
	iCnt, iRow, iBrNo, i, j, k, iSrow, irowcnt: Integer;
	sBrNo, sMessage, sBrName, sName, sBalsin, sMsg: string;
	sSms_Not_agree: array[0..1, 0..14] of string;
	sList, sList_Kt: TStringList;
	sList_Text: string;
	RowIdx: Integer;
	TelNo: string;
	sTemp, sTmp: string;
	slTmp : TStringList;
	iDx : integer;
	BeforeTel: string;
	DuplicateTel: Boolean;
  AddCnt: Integer;

  FNotAgreeUser,
  FNotAgreeKT : string;
	FNotAgreeCmn : AnsiString;
begin
	try
		if Trim(mm_message.Text) = '' then
    begin
      GMessagebox('작성한 메세지가 없습니다.', cdmsE);
      mm_message.SetFocus;
			exit;
    end;
		if not chkBalsin.Checked then     //대표번호선택 이 아닐경우 , 자동삽입일 경우
		begin
			slTmp := TStringList.Create;
			sTmp := '';
			Try
				for I := 0 to cxViewSms.DataController.RecordCount - 1 do
				begin
					sBalsin := RemovePhone(cxViewSms.ViewData.Rows[I].Values[1]);  // 대표번호
			
					if not func_KeyNumAuthCheck(sBalsin) then
					begin
						iDx := slTmp.IndexOf(StrToCall(sBalsin));
						if iDx < 0 then slTmp.Add(StrToCall(sBalsin));
					end;
				end;	

				if slTmp.Count > 0 then
				begin
					for i := 0 to slTmp.Count - 1 do
					begin
						if  i = 0 then sTmp := slTmp[i] else sTmp := sTmp + ', ' + slTmp[i];
					end;
				end;

			Finally
				slTmp.Free;
			End;
			if sTmp <> '' then
			begin
				GMessagebox('대표번호 증빙되어있지 않은 번호가 포함되어있습니다.' +#13#10+#13#10
									+ '대표번호 증명원(회사>대표번호증명원관리) 등록 후 사용하세요' +#13#10+#13#10
									+ '[대상번호]' +#13#10
									+ sTmp , CDMSE);
				 exit;					
			end;
		end;

		
		if Not func_EucKr_Check(mm_message, 1) then Exit;

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
              GMessagebox('보내는이 번호를 선택해 주세요', CDMSE);
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
						if chk4Number.Checked then
						begin
							sMessage := StringReplace(sMessage, '<$4자리$>', RightStr(TelNo, 4), [rfReplaceall])
						end;

            //----------------------------------------------------------------------------------------------------
            //      조합후 메세지 길이가 80 Byte를 넘을 경우 메세지를 분리
            //----------------------------------------------------------------------------------------------------
//						if Length(sMessage) > 90 then          //80->90Byte로 변경 2011.11.25 KHS
						if GetSmsMemoLength(AnsiString(sMessage)) > 90 then          //80->90Byte로 변경 2011.11.25 KHS
						begin
							AddCnt := 0;
							while GetSmsMemoLength(AnsiString(sMessage)) > 0 do
							begin
								if GetSmsMemoLength(AnsiString(sMessage)) <= 90 then
								begin
									sMsg := sMessage;
									sMessage := '';
								end else
								begin
									sMsg := GetStrPharseByte(sMessage, 89);          // 89.이유는 한글2byte이므로 90일경우 91byte가 될수 있음
									sMessage := Copy(sMessage, Length(sMsg) + 1, Length(AnsiString(sMessage)) - Length(AnsiString(sMsg)));
								end;
							
                RowIdx := cxViewSendSms.DataController.AppendRecord;

                cxViewSendSms.DataController.SetValue(RowIdx, 0, cxViewSms.ViewData.Records[I].Values[0]);
                cxViewSendSms.DataController.SetValue(RowIdx, 1, cxViewSms.ViewData.Records[I].Values[1]);
                cxViewSendSms.DataController.SetValue(RowIdx, 3, cxViewSms.ViewData.Records[I].Values[2]);
                cxViewSendSms.DataController.SetValue(RowIdx, 5, cxViewSms.ViewData.Records[I].Values[3]);
                cxViewSendSms.DataController.SetValue(RowIdx, 4, sMsg);
                cxViewSendSms.DataController.SetValue(RowIdx, 2, sBalsin);
								cxViewSendSms.DataController.Values[RowIdx, 6] := StrUtils.IfThen(chkBalsin.Checked, cxViewSms.ViewData.Records[I].Values[2],
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
              cxViewSendSms.DataController.Values[RowIdx, 6] := StrUtils.IfThen(chkBalsin.Checked, cxViewSms.ViewData.Records[I].Values[2],
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
        cxViewBranchSms.DataController.Values[I, 4] := StrUtils.IfThen(dblCash > 0, '가능', '불가');
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

procedure TFrm_SMS.btnRegNoRecvClick(Sender: TObject);
begin
  mmo_file_path.Text := '';
  lbl_excel_cnt.Caption := '총   000 명';
  lstNoRecvFileAdd.Items.Clear;
  pnl_file_add.Left := (frm_main.Width - pnl_file_add.Width) div 2;
  pnl_file_add.top := ((frm_main.Height - pnl_file_add.Height) div 2) -
    Self.Top;
  pnl_file_add.Visible := True;
  pnl_file_add.BringToFront;
end;

procedure TFrm_SMS.btnRemoveClick(Sender: TObject);
begin
  if not (chkRemoveMember.Checked or chkRemoveWorker.Checked or chkRemoveKISA.Checked or chkRemoveSpamAll.Checked) then
  begin
    GMessageBox('수신거부 옵션을 선택 해주세요.', CDMSW);
    Exit;
  end;

  if chkRemoveMember.Checked then
    RemoveSMSMember;

  if chkRemoveWorker.Checked then
    RemoveSMSWorker;

  if chkRemoveKISA.Checked then
    RemoveSMSKISA;

  if chkRemoveSpamAll.Checked then
    RemoveSMSSpamAll;

  if chkRemoveUser.Checked then
    RemoveSMSUser;

  cbb_level.ItemIndex := 4;
end;

procedure TFrm_SMS.RemoveSMSKISA;
var
  FList: TStringList;
  scust_tel : string;
  text : AnsiString;
  I, J: Integer;
begin
  pnlSmsStatus.Left := (frm_main.Width - pnlSmsStatus.Width) div 2;
  pnlSmsStatus.Top := ((frm_main.Height - pnlSmsStatus.Height) div 2) - self.Top;
  pnlSmsStatus.Caption := '방통위 관련 전화번호를 제거합니다.';
  pnlSmsStatus.Visible := True;
  Application.ProcessMessages;
  FList := TStringList.Create;
  try
    try
      if FileExists(DBDIRECTORY + 'SpamKISA.txt') then
        if GetCallmanerSMSList(DBDIRECTORY + 'SpamKISA.txt', text) then
          FList.Text := text;
      FList.Sorted := True;

      if FList.Count > 0 then
      begin
        Gauge1.Max := cxViewFileExcelList.DataController.RecordCount;
        i := 0;
        j := 0;
        cxViewFileExcelList.BeginUpdate;
        try
          while cxViewFileExcelList.DataController.RecordCount - 1 >= I do
          begin
            Application.ProcessMessages;
            sCust_tel := cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex];
            if FList.IndexOf(CallToStr(scust_tel)) >= 0 then
            begin
              OutputDebugString(PChar(Format('RemoveSMSKISA: %s', [sCust_Tel])));
              cxViewFileExcelList.DataController.DeleteRecord(I)
            end
            else
              inc(i);
            inc(j);
            Gauge1.Position := j;
          end;
        finally
          cxViewFileExcelList.EndUpdate;
        end;
        Application.ProcessMessages;
      end;
    except
    end;
  finally
    pnlSmsStatus.Visible := False;
    FList.Free;
    Frm_Flash.Hide;
    lblFileSmsTotal.Caption := '총 ' + FormatFloat('#,##0', StrToFloatDef(inttostr(cxViewFileExcelList.DataController.RecordCount), 0.0)) + ' 건';
    lblSendCount.Caption := '전송 예상 건수는 ' + formatfloat('#,##0', StrToFloatDef(inttostr(cxViewFileExcelList.DataController.RecordCount), 0.0)) + '건 입니다.'
  end;
end;

procedure TFrm_SMS.RemoveSMSMember;
var
  ls_TxLoad, ls_TxQry, sQueryTemp,
  scust_tel: string;
  I, J: Integer;
begin
  pnlSmsStatus.Left := (frm_main.Width - pnlSmsStatus.Width) div 2;
  pnlSmsStatus.Top := ((frm_main.Height - pnlSmsStatus.Height) div 2) - self.Top;
  pnlSmsStatus.Caption := '대리회사 번호를 제거합니다..';
  pnlSmsStatus.Visible := True;
  Application.ProcessMessages;
  try
    try
      if FRmvMemList.Count = 0 then
      begin
        ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
        fGet_BlowFish_Query(GSQ_HP_MEMBER_ALL, sQueryTemp);
        ls_TxQry := sQueryTemp;
        ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'RMVMEM', [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '2500', [rfReplaceAll]);

        RequestDataList(ls_TxLoad);
      end;

      if FRmvMemList.Count > 0 then
      begin
        Gauge1.Max := cxViewFileExcelList.DataController.RecordCount;
        i := 0;
        j := 0;
        cxViewFileExcelList.BeginUpdate;
        try
          while cxViewFileExcelList.DataController.RecordCount - 1 >= I do
          begin
            Application.ProcessMessages;
            sCust_tel := cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex];
            if FRmvMemList.IndexOf(CallToStr(scust_tel)) >= 0 then
            begin
              OutputDebugString(PChar(Format('RemoveSMSMember: %s', [sCust_Tel])));
              cxViewFileExcelList.DataController.DeleteRecord(I)
            end
            else
              inc(i);
            inc(j);
            Gauge1.Position := j;
          end;
        finally
          cxViewFileExcelList.EndUpdate;
        end;
        Application.ProcessMessages;
      end;
    except
    end;
  finally
    pnlSmsStatus.Visible := False;
    Frm_Flash.Hide;
    lblFileSmsTotal.Caption := '총 ' + FormatFloat('#,##0', StrToFloatDef(inttostr(cxViewFileExcelList.DataController.RecordCount), 0.0)) + ' 건';
    lblSendCount.Caption := '전송 예상 건수는 ' + formatfloat('#,##0', StrToFloatDef(inttostr(cxViewFileExcelList.DataController.RecordCount), 0.0)) + '건 입니다.'
  end;
end;

procedure TFrm_SMS.RemoveSMSSpamAll;
var
  FList: TStringList;
  scust_tel : string;
  text : AnsiString;
  I, J: Integer;
begin
  pnlSmsStatus.Left := (frm_main.Width - pnlSmsStatus.Width) div 2;
  pnlSmsStatus.Top := ((frm_main.Height - pnlSmsStatus.Height) div 2) - self.Top;
  pnlSmsStatus.Caption := '범용수신거부 전화번호를 제거합니다.';
  pnlSmsStatus.Visible := True;
  Application.ProcessMessages;
  FList := TStringList.Create;
  try
    try
      if FileExists(DBDIRECTORY + 'Callmannersms.TXT') then
        if GetCallmanerSMSList(DBDIRECTORY + 'Callmannersms.TXT', text) then
          FList.Text := text;
      FList.Sorted := True;

      if FList.Count > 0 then
      begin
        Gauge1.Max := cxViewFileExcelList.DataController.RecordCount;
        i := 0;
        j := 0;
        cxViewFileExcelList.BeginUpdate;
        try
          while cxViewFileExcelList.DataController.RecordCount - 1 >= I do
          begin
            Application.ProcessMessages;
            sCust_tel := cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex];
            if FList.IndexOf(CallToStr(scust_tel)) >= 0 then
            begin
              OutputDebugString(PChar(Format('RemoveSMSSpamAll: %s', [sCust_Tel])));
              cxViewFileExcelList.DataController.DeleteRecord(I)
            end
            else
              inc(i);
            inc(j);
            Gauge1.Position := j;
          end;
        finally
          cxViewFileExcelList.EndUpdate;
        end;
        Application.ProcessMessages;
      end;
    except
    end;
  finally
    pnlSmsStatus.Visible := False;
    FList.Free;
    Frm_Flash.Hide;
    lblFileSmsTotal.Caption := '총 ' + FormatFloat('#,##0', StrToFloatDef(inttostr(cxViewFileExcelList.DataController.RecordCount), 0.0)) + ' 건';
    lblSendCount.Caption := '전송 예상 건수는 ' + formatfloat('#,##0', StrToFloatDef(inttostr(cxViewFileExcelList.DataController.RecordCount), 0.0)) + '건 입니다.'
  end;
end;

procedure TFrm_SMS.RemoveSMSWorker;
var
  ls_TxLoad, ls_TxQry, sQueryTemp,
  scust_tel: string;
  I, J: Integer;
begin
  pnlSmsStatus.Left := (frm_main.Width - pnlSmsStatus.Width) div 2;
  pnlSmsStatus.Top := ((frm_main.Height - pnlSmsStatus.Height) div 2) - self.Top;
  pnlSmsStatus.Caption := '전체기사 전화번호를 제거합니다.';
  pnlSmsStatus.Visible := True;
  Application.ProcessMessages;
  try
    try
      if FRmvWkList.Count = 0 then
      begin
        ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
        fGet_BlowFish_Query(GSQ_HP_WORKER_ALL, sQueryTemp);
        ls_TxQry := sQueryTemp;
        ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'RMVWK', [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '2500', [rfReplaceAll]);

        RequestDataList(ls_TxLoad);
      end;

      if FRmvWkList.Count > 0 then
      begin
        Gauge1.Max := cxViewFileExcelList.DataController.RecordCount;
        i := 0;
        j := 0;
        cxViewFileExcelList.BeginUpdate;
        try
          while cxViewFileExcelList.DataController.RecordCount - 1 >= I do
          begin
            Application.ProcessMessages;
            sCust_tel := cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex];
            if FRmvWkList.IndexOf(CallToStr(scust_tel)) >= 0 then
            begin
              OutputDebugString(PChar(Format('RemoveSMSWorker: %s', [sCust_Tel])));
              cxViewFileExcelList.DataController.DeleteRecord(I)
            end
            else
              inc(i);
            inc(j);
            Gauge1.Position := j;
          end;
        finally
          cxViewFileExcelList.EndUpdate;
        end;
        Application.ProcessMessages;
      end;
    except
    end;
  finally
    pnlSmsStatus.Visible := False;
    Frm_Flash.Hide;
    lblFileSmsTotal.Caption := '총 ' + FormatFloat('#,##0', StrToFloatDef(inttostr(cxViewFileExcelList.DataController.RecordCount), 0.0)) + ' 건';
    lblSendCount.Caption := '전송 예상 건수는 ' + formatfloat('#,##0', StrToFloatDef(inttostr(cxViewFileExcelList.DataController.RecordCount), 0.0)) + '건 입니다.'
  end;
end;

procedure TFrm_SMS.RemoveSMSUser;
var
  FList: TStringList;
  scust_tel: string;
  I, J: Integer;
begin
  pnlSmsStatus.Left := (frm_main.Width - pnlSmsStatus.Width) div 2;
  pnlSmsStatus.Top := ((frm_main.Height - pnlSmsStatus.Height) div 2) - self.Top;
  pnlSmsStatus.Caption := '수신거부 관리에 등록된 전화번호를 제거합니다.';
  pnlSmsStatus.Visible := True;
  Application.ProcessMessages;
  FList := TStringList.Create;
  try
    try
      if FileExists(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT') then
        FList.LoadFromFile(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT');
      FList.Sorted := True;

      if FList.Count > 0 then
      begin
        Gauge1.Max := cxViewFileExcelList.DataController.RecordCount;
        i := 0;
        j := 0;
        cxViewFileExcelList.BeginUpdate;
        try
          while cxViewFileExcelList.DataController.RecordCount - 1 >= I do
          begin
            Application.ProcessMessages;
            sCust_tel := cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex];
            if FList.IndexOf(CallToStr(scust_tel)) >= 0 then
            begin
              OutputDebugString(PChar(Format('RemoveSMSUser: %s', [sCust_Tel])));
              cxViewFileExcelList.DataController.DeleteRecord(I)
            end
            else
              inc(i);
            inc(j);
            Gauge1.Position := j;
          end;
        finally
          cxViewFileExcelList.EndUpdate;
        end;
        Application.ProcessMessages;
      end;
    except
    end;
  finally
    pnlSmsStatus.Visible := False;
    FList.Free;
    Frm_Flash.Hide;
    lblFileSmsTotal.Caption := '총 ' + FormatFloat('#,##0', StrToFloatDef(inttostr(cxViewFileExcelList.DataController.RecordCount), 0.0)) + ' 건';
    lblSendCount.Caption := '전송 예상 건수는 ' + formatfloat('#,##0', StrToFloatDef(inttostr(cxViewFileExcelList.DataController.RecordCount), 0.0)) + '건 입니다.'
  end;
end;

procedure TFrm_SMS.btnRemoveDuplicateClick(Sender: TObject);
var
  i, j, iKeyCust, icustcompare: Integer;
  sBalsin, scust_tel: string;
  sSms_Not: AnsiString;
begin
  if (cbb_Balsin.ItemIndex = -1) or (cbb_cust_tel.ItemIndex = -1) or
    (cbb_cust_name.ItemIndex = -1) then
  begin
    GMessagebox('발신, 수신번호, 고객명은 항상 선택을 해야 합니다.', cdmsE);
    exit;
  end;

  if (chkFileRecordTelNo.Checked) and (cbKeynumber02.ItemIndex = 0) then
  begin
    GMessagebox('발산(대표번호)는 직접입력 체크시 반드시 선택해야 합니다.', cdmsE);
    cbKeynumber02.SetFocus;
    Exit;
  end;

  if lst_tel.Count = 0 then
  begin
    proc_init_filesms_blocktel;
    lblFileExcelStatus.Caption := '수신거부자 목록을 받아옵니다.';
  end;

  sSms_Not := '';
  icustcompare := cxViewFileExcelList.GetColumnByFieldName('고객대표번호').Index;

  //----------------------------------------------------------------------------------------------
  //                  일반 전화번호 체크( 앞두자리가 01인경우만 가능 )
  //----------------------------------------------------------------------------------------------
  if chkRemoveTel.Checked then
  begin
    i := 0;
    j := 0;

    Gauge1.Position := 0;
    Gauge1.Max := cxViewFileExcelList.DataController.RecordCount;

    WriteSMSLog(Format('SMS 파일 중복제거를 시작합니다. [대상 건수: %d]', [cxViewFileExcelList.DataController.RecordCount]));

    cxViewFileExcelList.BeginUpdate;
    try
      lblFileExcelStatus.Caption := '일반 전화번호를 지웁니다.';
      WriteSMSLog(Format('일반 전화번호를 지웁니다. [대상 건수: %d]', [cxViewFileExcelList.DataController.RecordCount]));

      while cxViewFileExcelList.DataController.RecordCount - 1 >= I do
      begin
        scust_tel := cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex];
        if StrToIntDef(copy(sCust_Tel, 1, 2), 2) = 1 then
        begin
          cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex] := cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex];
          inc(I);
        end else
        begin
  //        cxViewFileExcelList.DataController.DeleteRecord(cxViewFileExcelList.ViewData.Records[I].RecordIndex)
          WriteSMSLog(Format('[%d] %s', [J, scust_tel]));
          cxViewFileExcelList.DataController.DeleteRecord(I);
        end;
        inc(j);
        Gauge1.Position := j;
        Application.ProcessMessages;
      end;
      lblFileSmsTotal.Caption := '총 ' + FormatFloat('#,##0', StrToFloatDef(IntToStr(cxViewFileExcelList.DataController.RecordCount), 0.0)) + ' 건';
      WriteSMSLog(Format('일반전화번호를 [%d] 건 제거했습니다.', [J - cxViewFileExcelList.DataController.RecordCount]));
    finally
      cxViewFileExcelList.EndUpdate;
    end;
  end else
  begin
    Gauge1.Position := 0;
    Gauge1.Max := cxViewFileExcelList.DataController.RecordCount;
    for i := 0 to cxViewFileExcelList.DataController.RecordCount - 1 do
    begin
      cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex] := cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex];
      Gauge1.Position := i;
      Application.ProcessMessages;
    end;
  end;

  //----------------------------------------------------------------------------------------------
  // 고객번호와 대표번호를 비교 (정렬후 위와 아래 비교)
  // 위와 같은게 있을경우 '0', 처음일경우 '1' 표시
  // '0' 인 항목 삭제
  //----------------------------------------------------------------------------------------------
  if chkFileRecordTelNo.Checked then
  begin
    lblFileExcelStatus.Caption := '';

    Gauge1.Position := 0;
    Gauge1.Max := cxViewFileExcelList.DataController.RecordCount;

    i := 0;
    lblFileExcelStatus.Caption := '고객번호 중복데이터를 검사합니다.';

    cxViewFileExcelList.Columns[cbb_cust_tel.ItemIndex].SortOrder := soAscending;

		Application.ProcessMessages;

		cxViewFileExcelList.BeginUpdate;
    try
      while cxViewFileExcelList.DataController.RowCount - 2 >= i do
      begin
        Application.ProcessMessages;

        if cxViewFileExcelList.ViewData.Records[I].Values[cbb_cust_tel.ItemIndex] =
              cxViewFileExcelList.ViewData.Records[I + 1].Values[cbb_cust_tel.ItemIndex] then // or
          cxViewFileExcelList.DataController.SetValue(cxViewFileExcelList.ViewData.Records[I].RecordIndex, icustcompare, '0')
        else
          cxViewFileExcelList.DataController.SetValue(cxViewFileExcelList.ViewData.Records[I].RecordIndex, icustcompare, '1');

        Inc(i);
        Gauge1.Position := i;
      end;
    finally
      cxViewFileExcelList.EndUpdate;
    end;

    j := 0;
    i := 0;
    Gauge1.Max := cxViewFileExcelList.DataController.RecordCount;
    lblFileExcelStatus.Caption := '고객번호 중복데이터를 제거합니다.';

		Application.ProcessMessages;

    WriteSMSLog(Format('고객번호 중복데이터를 제거합니다. [대상 건수: %d]', [cxViewFileExcelList.DataController.RecordCount]));
    cxViewFileExcelList.BeginUpdate;
    try
      while cxViewFileExcelList.DataController.RecordCount - 1 >= I do
      begin
        if cxViewFileExcelList.DataController.Values[I, icustcompare] = '0' then
        begin
          WriteSMSLog(Format('[%d] %s', [J, cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex]]));
          cxViewFileExcelList.DataController.DeleteRecord(I)
        end
        else
          inc(i);
        inc(j);
        Gauge1.Position := j;
        Application.ProcessMessages;
      end;
      WriteSMSLog(Format('고객번호 중복데이터를 [%d] 건 제거했습니다.', [J - cxViewFileExcelList.DataController.RecordCount]));
    finally
      cxViewFileExcelList.EndUpdate;
    end;
  end else
  begin
    cxViewFileExcelList.BeginUpdate;
    try
      Gauge1.Position := 0;
      Gauge1.Max := cxViewFileExcelList.DataController.RecordCount;

      iKeyCust := cxViewFileExcelList.GetColumnByFieldName('고객+대표').Index;

      lblFileExcelStatus.Caption := '대표번호별 고객번호 중복 데이터를 조합합니다.';
			Application.ProcessMessages;

			for I := 0 to cxViewFileExcelList.DataController.RecordCount - 1 do
      begin
        sBalsin   := RemovePhone(cxViewFileExcelList.DataController.Values[I, cbb_Balsin.ItemIndex - 1]);

        if cbKeynumber02.Properties.Items.IndexOf(sBalsin) > 0 then
        begin
          sCust_tel := cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex];
          cxViewFileExcelList.DataController.Values[I, iKeyCust] := sBalsin + '-' + sCust_tel;
        end else
        begin
          GMessagebox('발신(대표번호)에 승인되지 않은 번호(' + sBalsin + ')가 있습니다.', cdmsE);
          Exit;
        end;

        Gauge1.Position := i + 1;
        Application.ProcessMessages;
      end;
      lblFileExcelStatus.Caption := '';
    finally
      cxViewFileExcelList.EndUpdate;
    end;

    cxViewFileExcelList.Columns[iKeyCust].SortOrder := soAscending;

    cxViewFileExcelList.BeginUpdate;
    try
      Gauge1.Position := 0;
      Gauge1.Max := cxViewFileExcelList.DataController.RecordCount;

      lblFileExcelStatus.Caption := '대표번호별 고객번호 중복 데이터를 검사합니다.';
			Application.ProcessMessages;

			for I := 0 to cxViewFileExcelList.DataController.RecordCount - 2 do
      begin
        Application.ProcessMessages;
        if cxViewFileExcelList.ViewData.Records[I].Values[iKeyCust] =
              cxViewFileExcelList.ViewData.Records[I + 1].Values[iKeyCust] then // or
          cxViewFileExcelList.DataController.SetValue(cxViewFileExcelList.ViewData.Records[I].Index, icustcompare, '0')
        else
          cxViewFileExcelList.DataController.SetValue(cxViewFileExcelList.ViewData.Records[I].Index, icustcompare, '1');
        Gauge1.Position := i + 1;
      end;
      Gauge1.Position := Gauge1.Max;
    finally
      cxViewFileExcelList.EndUpdate;
    end;

    cxViewFileExcelList.BeginUpdate;
    try
      j := 0;
      i := 0;
      Gauge1.Max := cxViewFileExcelList.DataController.RecordCount;
      lblFileExcelStatus.Caption := '대표번호별 고객번호 중복 데이터를 제거합니다.';
			Application.ProcessMessages;

			WriteSMSLog(Format('대표번호별 고객번호 중복 데이터를 제거합니다. [대상 건수: %d]', [cxViewFileExcelList.DataController.RecordCount]));
			while cxViewFileExcelList.DataController.RecordCount - 1 >= I do
      begin
        Application.ProcessMessages;
        if cxViewFileExcelList.DataController.Values[I, icustcompare] = '0' then
        begin
          WriteSMSLog(Format('[%d] %s', [J, cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex]]));
          cxViewFileExcelList.DataController.DeleteRecord(I)
        end
        else
          inc(i);
        inc(j);
        Gauge1.Position := j;
      end;
      Gauge1.Position := Gauge1.Max;
      WriteSMSLog(Format('대표번호별 고객번호 중복 데이터를 [%d] 건 제거했습니다.', [J - cxViewFileExcelList.DataController.RecordCount]));
    finally
      cxViewFileExcelList.EndUpdate;
    end;
  end;

  //----------------------------------------------------------------------------------------------
  // 선택한 지사(SMS차감 지사)에 수신거부자 제거
  //----------------------------------------------------------------------------------------------

  Gauge1.Position := 0;
  lblFileExcelStatus.Caption := '고객 데이터중 수신거부자 데이터를 제거합니다.';
  WriteSMSLog(Format('고객 데이터중 수신거부자 데이터를 제거합니다. [대상 건수: %d]', [cxViewFileExcelList.DataController.RecordCount]));

  lst_tel.Sorted := True;
//  sSms_Not := lst_tel.Items.Text;
  Gauge1.Max := cxViewFileExcelList.DataController.RecordCount;
  i := 0;
  j := 0;
  cxViewFileExcelList.BeginUpdate;
  try
    while cxViewFileExcelList.DataController.RecordCount - 1 >= I do
    begin
      Application.ProcessMessages;
      sCust_tel := CallToStr(cxViewFileExcelList.DataController.Values[I, cbb_cust_tel.ItemIndex]);
      if lst_tel.Items.IndexOf(scust_tel) >= 0 then
      begin
        WriteSMSLog(Format('[%d] %s', [J, sCust_tel]));
        cxViewFileExcelList.DataController.DeleteRecord(I)
      end
      else
        inc(i);
      inc(j);
      Gauge1.Position := j;
    end;
    WriteSMSLog(Format('고객 데이터중 수신거부 데이터를 [%d] 건 제거했습니다.', [J - cxViewFileExcelList.DataController.RecordCount]));
  finally
    cxViewFileExcelList.EndUpdate;
  end;
  sSms_Not := '';
//  Application.ProcessMessages;

  cbb_level.ItemIndex := 3;
  cbb_level.OnChange(self);
  btnSendFile.Enabled := True;
  lblFileSmsTotal.Caption := '총 ' + FormatFloat('#,##0', StrToFloatDef(inttostr(cxViewFileExcelList.DataController.RecordCount), 0.0)) + ' 건';
  lblSendCount.Caption := '전송 예상 건수는 ' + formatfloat('#,##0', StrToFloatDef(inttostr(cxViewFileExcelList.DataController.RecordCount), 0.0)) + '건 입니다.'
end;

function TFrm_SMS.GetRowIndexSameValue(AcxView: TcxGridDBTableView;
  ACol: Integer; AValue: string; ADefault: Integer): Integer;
var
  I: Integer;
begin
  Result := ADefault;
  for I := 0 to AcxView.DataController.RecordCount - 1 do
  begin
    if string(AcxView.DataController.Values[I, ACol]) = AValue then
    begin
      Result := I;
      Exit;
    end;
  end;
end;

function TFrm_SMS.func_res_cnt(sTime: string): Integer;
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

function TFrm_SMS.func_first_check(sBr_No: AnsiString; iTotalCnt, iType,
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
      ls_TxSend := Rpad(GT_USERIF.ID, 12, ' ') + RPad(sBr_no, 6, ' ') + '0100' + '00' + RPad(IntToStr(iTotalCnt), 10, ' ');
      ls_TxSend := ls_TxSend +
                   RPad(' ', 16, ' ') +
                   RPad(StringReplace(cxViewSendSms.ViewData.Records[iRow].Values[2], '-', '', [rfReplaceAll]), 16, ' ') +
                   RPad(cxViewSendSms.ViewData.Records[iRow].Values[4], 100, ' ') +    //80->100Byte로 변경 2011.11.25 KHS
                   RPad(sDate, 14, ' ');
      rv_str := SMS_Send2(ls_TxSend, itcSMS, 2000);
      Result := copy(rv_str, 23, 2);
    end else
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

function TFrm_SMS.SMS_Send(ss_SendText: AnsiString; socket: TIdTCPClient;
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

function TFrm_SMS.SMS_Recieve(socket: TIdTCPClient): AnsiString;
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
      //GMessagebox(ls_msg,cdmsE);
      exit;
    end
  end;
end;

function TFrm_SMS.SMS_Send2(ss_SendText: AnsiString; socket: TIdTCPClient;
  tout: integer): AnsiString;
var
  ls_msg, rv_str, temp: string;
  nCount: Integer;
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
      //GMessagebox(ls_msg,cdmsE);
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
      //GMessagebox(ls_msg,cdmsE);
      exit;
    end
  end;
end;

procedure TFrm_SMS.tmrFileSmsTimer(Sender: TObject);
begin
  case cbb_level.ItemIndex of
    0:
      begin
        lblFileStep2.Caption := '';
        lblFileStep3.Caption := '';
        lblFileStep4.Caption := '';
        lblFileStep5.Caption := '';
        lblFileStep1.Style.Font.Size := 15;
        case length(Trim(lblFileStep1.Caption)) of
          0: lblFileStep1.Caption := '▶';
          1: lblFileStep1.Caption := '▶▶';
          2: lblFileStep1.Caption := '▶▶▶';
          3: lblFileStep1.Caption := '';
        end;
      end;
    1:
      begin
        lblFileStep1.Style.Font.Size := 8;
        lblFileStep1.Caption := '완료';
        lblFileStep3.Caption := '';
        lblFileStep4.Caption := '';
        lblFileStep5.Caption := '';
        lblFileStep2.Style.Font.Size := 15;
        case length(Trim(lblFileStep2.Caption)) of
          0: lblFileStep2.Caption := '▶';
          1: lblFileStep2.Caption := '▶▶';
          2: lblFileStep2.Caption := '▶▶▶';
          3: lblFileStep2.Caption := '';
        end;
      end;
    2:
      begin
        lblFileStep1.Style.Font.Size := 8;
        lblFileStep2.Style.Font.Size := 8;
        lblFileStep3.Style.Font.Size := 15;
        lblFileStep1.Caption := '완료';
        lblFileStep2.Caption := '완료';
        lblFileStep4.Caption := '';
        lblFileStep5.Caption := '';
        case length(Trim(lblFileStep3.Caption)) of
          0: lblFileStep3.Caption := '▶';
          1: lblFileStep3.Caption := '▶▶';
          2: lblFileStep3.Caption := '▶▶▶';
          3: lblFileStep3.Caption := '';
        end;
      end;
    3:
      begin
        lblFileStep3.Style.Font.Size := 8;
        lblFileStep1.Style.Font.Size := 8;
        lblFileStep2.Style.Font.Size := 8;
        lblFileStep4.Style.Font.Size := 15;
        lblFileStep5.Style.Font.Size := 8;
        lblFileStep1.Caption := '완료';
        lblFileStep2.Caption := '완료';
        lblFileStep3.Caption := '완료';
        lblFileStep5.Caption := '';
        case length(Trim(lblFileStep4.Caption)) of
          0: lblFileStep4.Caption := '▶';
          1: lblFileStep4.Caption := '▶▶';
          2: lblFileStep4.Caption := '▶';
          3: lblFileStep4.Caption := '';
        end;
      end;
    4:
      begin
        lblFileStep4.Style.Font.Size := 8;
        lblFileStep3.Style.Font.Size := 8;
        lblFileStep1.Style.Font.Size := 8;
        lblFileStep2.Style.Font.Size := 8;
        lblFileStep1.Caption := '완료';
        lblFileStep2.Caption := '완료';
        lblFileStep3.Caption := '완료';
        lblFileStep4.Caption := '완료';
        case length(Trim(lblFileStep4.Caption)) of
          0: lblFileStep5.Caption := '▶';
          1: lblFileStep5.Caption := '▶▶';
          2: lblFileStep5.Caption := '▶';
          3: lblFileStep5.Caption := '';
        end;
      end;
    5:
      begin
        lblFileStep1.Style.Font.Size := 8;
        lblFileStep2.Style.Font.Size := 8;
        lblFileStep3.Style.Font.Size := 8;
        lblFileStep4.Style.Font.Size := 8;
        lblFileStep5.Style.Font.Size := 8;
        lblFileStep1.Caption := '완료';
        lblFileStep2.Caption := '완료';
        lblFileStep3.Caption := '완료';
        lblFileStep4.Caption := '완료';
        lblFileStep5.Caption := '완료';
      end;
  end;
end;

procedure TFrm_SMS.btnInsertCharClick(Sender: TObject);
begin
  pnl_char.Left := (btnInsertChar.ClientOrigin.X - pnl_Char.Parent.ClientOrigin.X);
  pnl_char.Top  := (btnInsertChar.ClientOrigin.Y - pnl_Char.Parent.ClientOrigin.Y);

  pnl_Char.Visible := True;
  pnl_Char.BringToFront;
end;

procedure TFrm_SMS.btnNoRecvSearchClick(Sender: TObject);
var
  i: integer;
  s: string;
begin
  pnlNoRecvMsg.Visible := False;
  lstNoRecvList.Items.Clear;

  if not FNoRecvDispList and (Length(Trim(edtNoRecvSearch.Text)) < 4) then
  begin
    ShowMessage('검색하실 전화번호를 4자리 이상으로 입력해주세요.');
    Exit;
  end;

  if Trim(edtNoRecvSearch.Text) <> '' then
  begin
    lstNoRecvList.Items.Clear;
    for i := 0 to FNoRecvList.Count - 1 do
    begin
      s := FNoRecvList.Strings[i];
      if Pos(edtNoRecvSearch.Text, s) > 0 then
        lstNoRecvList.Items.Add(s);
    end;
  end;

  if lstNoRecvList.Items.Count = 0 then
  begin
    if FNoRecvDispList then
      lstNoRecvList.Items.Assign(FNoRecvList)
    else
    begin
      ShowMessage('검색 결과가 없습니다.');
      pnlNoRecvMsg.Visible := True;
      pnlNoRecvMsg.BringToFront;
      Exit;
    end;
  end;

  lblNoRecvCount.Caption := '총  ' + IntToStr(FNoRecvList.Count) + '명';
end;

procedure TFrm_SMS.RecvResultSendSmsBranchList(ls_rxxml: WideString);
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
						cxViewBranchSms.DataController.Values[iRow, 4] := StrUtils.IfThen(iResult >= 0, '가능', '불가');
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

function TFrm_SMS.func_recieve(ls_rxxml: Widestring): Boolean;
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
          end else
          if ls_ClientKey = 'NOSM0001' then
          begin
            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
            ls_Rcrd := TStringList.Create;
            try
              for i := 0 to lst_Result.length - 1 do
              begin
                GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                lst_tel.Items.Add(ls_Rcrd[0]);
              end;
            finally
              ls_Rcrd.Free;
            end;
            if UpperCase(GetXmlHasMore(ls_XML)) = 'N' then
            begin
              result := False;
            end;
          end;
        end else
        begin
          Result := False;
        end;
      end else
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

procedure TFrm_SMS.cbb_cust_nameChange(Sender: TObject);
begin
  if TCombobox(sender).ItemIndex = 0 then
    TCombobox(sender).Color := clsilver
  else
    TCombobox(sender).Color := clWhite;
end;

procedure TFrm_SMS.cbb_cust_namePropertiesChange(Sender: TObject);
begin
  if TCombobox(sender).ItemIndex = 0 then
    TCombobox(sender).Color := clsilver
  else
    TCombobox(sender).Color := clWhite;
end;

procedure TFrm_SMS.cbb_levelChange(Sender: TObject);
begin
  lblFileStep1.Clear;
  lblFileStep2.Clear;
  lblFileStep3.Clear;
  lblFileStep4.Clear;
  lblFileStep5.Clear;
end;

procedure TFrm_SMS.cbKeynumber01PropertiesChange(Sender: TObject);
var iOIdx : integer;
	sTmp : string;
begin
	Try	
		iOIdx := cbKeynumber01.ItemIndex;
		if iOIdx < 1 then exit;
		
		sTmp := cbKeynumber01.Text;
		if not func_KeyNumAuthCheck(sTmp) then
		begin
			GMessagebox('선택하신 대표번호[' + cbKeynumber01.Text + ']는 증빙이 되지 않은 번호입니다.' +#13#10+#13#10
								+ '대표번호 증명원(회사>대표번호증명원관리) 등록 후 사용하세요', CDMSE);
			cbKeynumber01.ItemIndex := 0;
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	End;
end;

procedure TFrm_SMS.cbKeynumber02PropertiesChange(Sender: TObject);
var iOIdx : integer;
	sTmp : string;
begin
	Try	
		iOIdx := cbKeynumber02.ItemIndex;
		if iOIdx < 1 then exit;
		
		sTmp := cbKeynumber02.Text;
		if not func_KeyNumAuthCheck(sTmp) then
		begin
			GMessagebox('선택하신 대표번호[' + cbKeynumber02.Text + ']는 증빙이 되지 않은 번호입니다.' +#13#10+#13#10
								+ '대표번호 증명원(회사>대표번호증명원관리) 등록 후 사용하세요', CDMSE);
			cbKeynumber02.ItemIndex := 0;
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	End;
end;

procedure TFrm_SMS.cboSearchGubun4PropertiesChange(Sender: TObject);
begin
  if cboSearchGubun4.ItemIndex = 0 then
  begin
    cxGridBranchResult.Visible := True;
    Shape11.Visible := True;
  end else
  begin
    Shape11.Visible := False;
    cxGridBranchResult.Visible := False;
  end;
end;

procedure TFrm_SMS.chkNotSmsClick(Sender: TObject);
var
  ln_envfile: TInifile;
begin
  ln_envfile := TIniFile.Create(ENVPATHFILE);
  try
    if TcxCheckBox(Sender).Checked then
		begin
      ln_envfile.WriteString('TRANS_SMS', 'CALLMANNER', '1');
      GT_CALLMANNER_NOTSMS := 1;
    end else
    begin
      ln_envfile.WriteString('TRANS_SMS', 'CALLMANNER', '0');
      GT_CALLMANNER_NOTSMS := 0;
    end;
  finally
    FreeAndNil(ln_envfile);
  end;
end;

procedure TFrm_SMS.proc_BrNameSet;
var
  StrList: TStringList;
begin
	StrList := TStringList.Create;
  cbKeynumber01.Tag := 1;
	cbKeynumber02.Tag := 1;
  try
    if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
    begin
			GetBrTelList(GT_SEL_BRNO.HDNO, StrList);
			cbKeynumber01.Properties.Items.Assign(StrList);
      cbKeynumber02.Properties.Items.Assign(StrList);
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := '';
		end else
    begin
			GetBrTelList(GT_SEL_BRNO.BrNo, StrList);
			cbKeynumber01.Properties.Items.Assign(StrList);
			cbKeynumber02.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := GT_SEL_BRNO.BrNo;
		end;
	finally
		StrList.Free;
  end;

  if cbKeynumber01.Properties.Items.Count >= 1 then
    cbKeynumber01.Properties.Items.Insert(0, '번호선택');

  if cbKeynumber02.Properties.Items.Count >= 1 then
    cbKeynumber02.Properties.Items.Insert(0, '번호선택');

  cbKeynumber01.ItemIndex := 0;
  cbKeynumber01.Tag := 0;

  cbKeynumber02.ItemIndex := 0;
  cbKeynumber02.Tag := 0;

  DisplayCashInfo;

  lblSosokNameA3.Caption := GetSosokInfo;
  lblSosokNameA4.Caption := GetSosokInfo;
end;

procedure TFrm_SMS.DisplayCashInfo;
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

    RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_SMS.RecvResultFileRmvMember(AList: TStringList);
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

procedure TFrm_SMS.RecvResultFileRmvWorker(AList: TStringList);
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

procedure TFrm_SMS.btn3Click(Sender: TObject);
var
  sList: TstringList;
begin
  try
    sList := TStringList.Create;
    try
      sList.Sorted := True;
      sList.Duplicates := dupignore;
      dlgOpen.Filter := '텍스트파일|*.txt';
      if dlgOpen.Execute then
      begin
        Application.ProcessMessages;
        pnlSmsStatus.Left := (frm_main.Width - pnlSmsStatus.Width) div 2;
        pnlSmsStatus.Top := ((frm_main.Height - pnlSmsStatus.Height) div 2) - Self.Top;
        pnlSmsStatus.Caption := '파일을 불러옵니다.';
        pnlSmsStatus.Visible := True;
        Application.ProcessMessages;
        sList.LoadFromFile(dlgOpen.FileName);
        sList.Text := StringReplace(sList.Text, '-', '', [rfReplaceAll]);
        sList.Text := StringReplace(sList.Text, ' ', '', [rfReplaceAll]);
      end;

      mmo_file_path.Text := dlgOpen.FileName;
      lstNoRecvFileAdd.Items.Assign(sList);
      Application.ProcessMessages;
    finally
      FreeAndNil(sList);
    end;
    lbl_excel_cnt.Caption := '총 ' + IntToStr(lstNoRecvFileAdd.items.Count) + ' 명';
    pnlSmsStatus.Visible := False;
  except
  end;
end;

procedure TFrm_SMS.btn4Click(Sender: TObject);
begin
  if lstNoRecvFileAdd.SelCount = 0 then
    Exit;
  lstNoRecvFileAdd.DeleteSelected;
end;

procedure TFrm_SMS.btn5Click(Sender: TObject);
begin
  if mmo_file_path.Text = '' then
  begin
    ShowMessage('파일을 먼저 선택해 주세요.');
    Exit;
  end;

  DoubleBuffered := True;

  pnlSmsStatus.Left := (frm_main.Width - pnlSmsStatus.Width) div 2;
  pnlSmsStatus.Top := ((frm_main.Height - pnlSmsStatus.Height) div 2) - Self.Top;
  pnlSmsStatus.Caption := '불러온 파일을 추가합니다.';
  pnlSmsStatus.Visible := True;
  try
    Application.ProcessMessages;

    try
      if FNoRecvList.IndexOf('0100') = -1 then
      begin
        FNoRecvList.Add('0100');
        FNoRecvList.Add('0101');
        FNoRecvList.Add('0102');
        FNoRecvList.Add('0103');
        FNoRecvList.Add('0104');
        FNoRecvList.Add('0105');
        FNoRecvList.Add('0106');
        FNoRecvList.Add('0107');
        FNoRecvList.Add('0108');
        FNoRecvList.Add('0109');
        FNoRecvList.Add('0110');
        FNoRecvList.Add('0160');
        FNoRecvList.Add('0170');
        FNoRecvList.Add('0180');
        FNoRecvList.Add('0190');
        FNoRecvList.Add('0200');
      end;

      if FNoRecvList.IndexOf('0100') > 0 then
      begin
        while FNoRecvList.Strings[0] <> '0100' do
        begin
          FNoRecvList.Delete(0);
        end;
      end;
      Application.ProcessMessages;
    finally
    end;
    Application.ProcessMessages;

    FNoRecvList.AddStrings(lstNoRecvFileAdd.Items);
    if FNoRecvDispList then
      lstNoRecvList.Items.Assign(FNoRecvList);

    edtNoRecvSearch.Text := '';
    FNoRecvList.SaveToFile(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT');
    lblNoRecvCount.Caption := '총  ' + IntToStr(FNoRecvList.Count - 1) + '명';
  finally
    pnlSmsStatus.Visible := False;
  end;
  pnl_file_add.Visible := False;
end;

procedure TFrm_SMS.btn6Click(Sender: TObject);
begin
  pnl_file_add.Visible := False;
end;

procedure TFrm_SMS.btnAddNoRecvClick(Sender: TObject);
begin
  if Trim(mmoAddNoRecv.Text) = '' then Exit;

  DoubleBuffered := True;
  Application.ProcessMessages;
  try
    mmoAddNoRecv.Text := StringReplace(mmoAddNoRecv.Text, '-', '', [rfReplaceAll]);
    mmoAddNoRecv.Text := StringReplace(mmoAddNoRecv.Text, ' ', '', [rfReplaceAll]);

    FNoRecvList.AddStrings(mmoAddNoRecv.Lines);

    if FNoRecvList.IndexOf('0100') = -1 then
    begin
      FNoRecvList.Add('0100');
      FNoRecvList.Add('0101');
      FNoRecvList.Add('0102');
      FNoRecvList.Add('0103');
      FNoRecvList.Add('0104');
      FNoRecvList.Add('0105');
      FNoRecvList.Add('0106');
      FNoRecvList.Add('0107');
      FNoRecvList.Add('0108');
      FNoRecvList.Add('0109');
      FNoRecvList.Add('0110');
      FNoRecvList.Add('0160');
      FNoRecvList.Add('0170');
      FNoRecvList.Add('0180');
      FNoRecvList.Add('0190');
      FNoRecvList.Add('0200');
    end;
    if FNoRecvList.IndexOf('0100') > 0 then
    begin
      while FNoRecvList.Strings[0] <> '0100' do
      begin
        FNoRecvList.Delete(0);
      end;
    end;
    Application.ProcessMessages;
  finally
  end;

  Application.ProcessMessages;
  if FNoRecvDispList then
    lstNoRecvList.Items.Assign(FNoRecvList);
  edtNoRecvSearch.Text := '';
  mmoAddNoRecv.Lines.Clear;

  // 수신거부 파일에 저장
  FNoRecvList.SaveToFile(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT');

  lblNoRecvCount.Caption := '총  ' + IntToStr(FNoRecvList.Count - 1) + '명';
end;

procedure TFrm_SMS.BtnCloseClick(Sender: TObject);
begin
  pnlSMSLog.Hide;
end;

procedure TFrm_SMS.btnDelNoRecvClick(Sender: TObject);
var
  I, Idx: Integer;
begin
  try
    if lstNoRecvList.SelCount = 0 then
      Exit;

    pnlSmsStatus.Left := (frm_main.Width - pnlSmsStatus.Width) div 2;
    pnlSmsStatus.Top := ((frm_main.Height - pnlSmsStatus.Height) div 2) - Self.Top;
    pnlSmsStatus.Caption := '선택 리스트를 삭제합니다.';

    for I := lstNoRecvList.Items.Count - 1 downto 0 do
    begin
      if lstNoRecvList.Selected[I] then
      begin
        Idx := FNoRecvList.IndexOf(lstNoRecvList.Items[I]);
        if Idx > -1 then
        begin
          FNoRecvList.Delete(Idx);
        end;
        lstNoRecvList.Items.Delete(I);
      end;
    end;

    FNoRecvList.SaveToFile(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT');
    lblNoRecvCount.Caption := '총  ' + IntToStr(FNoRecvList.Count - 1) + '명';
    pnlSmsStatus.Visible := False;
  except on E: Exception do
    GMessagebox(Format('수신거부 파일 삭제 시 오류가 발생했습니다.'#13#10'(오류: %s)', [E.Message]), CDMSE);
  end;
end;

procedure TFrm_SMS.btnExcelA3Click(Sender: TObject);
begin
	if cxViewResultList.DataController.RecordCount = 0 then
	begin
		GMessagebox('자료가 없습니다.', CDMSE);
		Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
		Exit;
	end;

	if (TCK_USER_PER.SMS_ExcelDown <> '1') then
	begin
		ShowMessage('[엑셀다운로드[SMS메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	Frm_Main.sgExcel := '조회결과상세.xls';
	Frm_Main.sgRpExcel := Format('SMS>조회결과(상세)]%s건', [GetMoneyStr(cxViewResultList.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := cxGridResultList;
	Frm_Main.cxGridDBViewExcel := cxViewResultList;
	Frm_Main.proc_excel(0);
end;

procedure TFrm_SMS.btnExcelA4Click(Sender: TObject);
begin
  if btnExcelA4.Tag = 0 then
  begin
    if cxViewDayResult.DataController.RecordCount = 0 then
    begin
      GMessagebox('자료가 없습니다.', CDMSE);
      Exit;
    end;

    if GT_USERIF.Excel_Use = 'n' then
    begin
      GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
      Exit;
    end;

    if (TCK_USER_PER.SMS_ExcelDown <> '1') then
    begin
      ShowMessage('[엑셀다운로드[SMS메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
      Exit;
    end;

    Frm_Main.sgExcel := '조회결과일반.xls';
    Frm_Main.sgRpExcel := Format('SMS>조회결과(일별)]%s건', [GetMoneyStr(cxViewDayResult.DataController.RecordCount)]);
    Frm_Main.cxGridExcel := cxGridDayResult;
    Frm_Main.cxGridDBViewExcel := cxViewDayResult;
    Frm_Main.proc_excel(0);
  end else
  begin
    if cxViewBranchResult.DataController.RecordCount = 0 then
    begin
      GMessagebox('자료가 없습니다.', CDMSE);
      Exit;
    end;

    if GT_USERIF.Excel_Use = 'n' then
    begin
      GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
      Exit;
    end;

    if (TCK_USER_PER.SMS_ExcelDown <> '1') then
    begin
      ShowMessage('[엑셀다운로드[SMS메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
      Exit;
    end;

    Frm_Main.sgExcel := '조회결과지사.xls';
    Frm_Main.sgRpExcel := Format('SMS>조회결과(지사)]%s건', [GetMoneyStr(cxViewDayResult.DataController.RecordCount)]);
    Frm_Main.cxGridExcel := cxGridBranchResult;
    Frm_Main.cxGridDBViewExcel := cxViewBranchResult;
    Frm_Main.proc_excel(0);
  end;
end;

procedure TFrm_SMS.btnFileSearchClick(Sender: TObject);
var
  I: Integer;
begin
  try
    cxViewFileExcelList.DataController.SetRecordCount(0);
    btnRemoveDuplicate.Enabled := False;
    btnSendFile.Enabled := False;
    lblFileExcelStatus.Caption := '';
    Gauge1.Position := 0;

    for I := 0 to cxViewFileExcelList.ColumnCount - 1 do
    begin
      cxViewFileExcelList.Columns[I].Visible := False;
    end;

    try
      dlgOpen.Filter := '엑셀파일(*.xls;*.xlsx)|*.xls;*.xlsx';
      if dlgOpen.Execute then
      begin
        edtFilename.Text := dlgOpen.FileName;

        pnlSmsStatus.Left := (frm_main.Width - pnlSmsStatus.Width) div 2;
        pnlSmsStatus.Top := ((frm_main.Height - pnlSmsStatus.Height) div 2) - self.Top;
        pnlSmsStatus.Caption := '엑셀 파일을 불러옵니다.';
        pnlSmsStatus.Visible := True;
        Application.ProcessMessages;

        if not ExcelToGridEx(edtFilename.Text, cxViewFileExcelList, Gauge1) then
        begin
          ShowMessage('엑셀파일을 불러오는데 실패했습니다. 엑셀파일을 확인하시고 다시 시도해 주세요.');
          Exit;
        end;

        cbb_Balsin.Properties.Items.Clear;
        for I := 0 to cxViewFileExcelList.ColumnCount - 1 do
          if cxViewFileExcelList.Columns[I].Visible then
            cbb_Balsin.Properties.Items.Add(cxViewFileExcelList.Columns[I].Caption);
        cbb_Balsin.Properties.Items.Insert(0, '');

        cbb_cust_tel.Properties.Items.Clear;
        for I := 0 to cxViewFileExcelList.ColumnCount - 1 do
          if cxViewFileExcelList.Columns[I].Visible then
            cbb_cust_tel.Properties.Items.Add(cxViewFileExcelList.Columns[I].Caption);

        cbb_cust_name.Properties.Items.Clear;
        for I := 0 to cxViewFileExcelList.ColumnCount - 1 do
          if cxViewFileExcelList.Columns[I].Visible then
            cbb_cust_name.Properties.Items.Add(cxViewFileExcelList.Columns[I].Caption);
        cbb_cust_name.Properties.Items.Insert(0, '사용안함');

        cbb_Balsin.ItemIndex := 0;
        cbb_cust_tel.ItemIndex := 1;
        cbb_cust_name.ItemIndex := 0;
        cbb_cust_name.Style.Color := clSilver;

        chkFileRecordTelNo.Checked := True;
        chkFileRecordTelNo.OnClick(nil);

        chkRemoveTel.Checked := True;
        btnRemoveDuplicate.Enabled := True;
        cbb_level.ItemIndex := 2;
        cbb_level.OnChange(nil);

        Application.ProcessMessages;
        lblFileSmsTotal.Caption := '총 ' + IntToStr(cxViewFileExcelList.DataController.RecordCount) + ' 건';
      end;
    except
    end;
  finally
    pnlSmsStatus.Visible := False;
  end;
end;

function TFrm_SMS.ExcelToGridEx(AFilename: string;
  AView: TcxGridDBTableView; AGauge: TAdvProgressBar): Boolean;
var
  FExcel: Variant;
  FWorkbook: Variant;
  FWorksheet: Variant;
  FCell: Variant;
  FArray: Variant;
  I, s,z: Integer;
  rangestr:string;
  startstr,endstr:string;
  code: Integer;
  sr,er,sc,ec: Integer;
  ulc: Boolean;
  OldCursor: TCursor;
  ColCount, RowCount: Integer;
begin
  Result := False;

  OldCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;

  try
    FExcel := CreateOleObject('excel.application');
  except
    Screen.Cursor := OldCursor;
    raise EAdvGridError.Create('Excel OLE server not found');
    Exit;
  end;

  try
    FWorkBook := FExcel.WorkBooks.Open(AFilename);
    FWorkSheet := FWorkBook.ActiveSheet;
    rangestr := FWorkSheet.UsedRange.Address;

    //decode here how many cells are required, $A$1:$D$8 for example
    startstr := '';
    endstr := '';

    sc := -1;
    ec := -1;

    if Pos(':',rangestr) > 0 then
    begin
      startstr := Copy(rangestr,1,pos(':',rangestr)-1);
      endstr := Copy(rangestr,pos(':',rangestr)+1,255);

      if pos('$',startstr) = 1 then
        Delete(startstr,1,1);

      if pos('$',endstr) = 1 then
        Delete(endstr,1,1);

      ulc := not (Pos('$',startstr) > 0);

      if pos('$',startstr) > 0 then
        Val(copy(startstr,pos('$',startstr)+1,255),sr,code)
      else
        Val(startstr,sr,code);

      if code <> 0 then
        sr := -1;

      if pos('$',endstr) > 0 then
        Val(copy(endstr,pos('$',endstr)+1,255),er,code)
      else
        Val(endstr,er,code);

      if code <> 0 then
        er := -1;

      // now decode the Columns
      if ulc then
      begin
        sc := 1;
        ec := 256;
      end else
      begin
        if pos('$',startstr) > 0 then
          startstr := Copy(startstr,1,pos('$',startstr)-1);

        if pos('$',endstr) > 0 then
          endstr := Copy(endstr,1,pos('$',endstr) - 1);

        if startstr <> '' then
          sc := ord(startstr[1]) - 64;

        if Length(startstr)>1 then
          sc := sc * 26 + ord(startstr[2]) - 64;

        if endstr<>'' then
          ec := ord(endstr[1]) - 64;
        if Length(endstr)>1 then
          ec := ec * 26 + ord(endstr[2]) - 64;
      end;
    end else
    begin
      sc := 1;
      sr := 1;
      ec := 1;
      er := 1;
    end;

    if (sr <> -1) and (er <> -1) and (sc <> -1) and (ec <> -1) then
    begin
      ColCount := ec - sc + 1;
      RowCount := er - sr + 1;
    end;

    rangestr := Chr(ord('A') - 1 + sc) + IntToStr(sr)+':';

    if (ColCount > 26) then
    begin
      rangestr := rangestr + chr(ord('A') - 1 + ((ec - sc) div 26));
      rangestr := rangestr + chr(ord('A') + ((ec - sc) mod 26));
    end
    else
      rangestr := rangestr + Chr(ord('A') - 1 + ec);

    rangestr := rangestr + IntToStr(er);

    AGauge.Position := 0;
    AGauge.Max := RowCount;

    for I := 0 to ColCount - 1 do
    begin
      if I > 15 then
        Break;
      AView.Columns[I].Visible := True;
    end;

    FArray := FWorkSheet.Range[RangeStr].Value;

    AView.BeginUpdate;
    AView.DataController.RecordCount := RowCount;
    try
      for s := 1 to RowCount do
      begin
        for z := 1 to ColCount do
        begin
          if z > 16 then
            Break;

          FCell := FArray[s,z];

          if VarIsClear(FCell) then
            FCell := EmptyStr;

          AView.DataController.Values[s-1, z-1] := FCell;
        end;
        if s mod 100 = 0 then
        begin
          AGauge.Position := s;
          Application.ProcessMessages;
        end;
      end;
    finally
      AView.EndUpdate;
    end;

    FWorkBook.Close(SaveChanges:=False);

    AGauge.Position := AGauge.Max;

    Result := True;
  finally
    FExcel.Quit;
    FExcel := UnAssigned;
    Screen.Cursor := OldCursor;
  end;
end;

procedure TFrm_SMS.lbl41MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ReleaseCapture;
  PostMessage(pnl_Char.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SMS.RequestDataList(AData: string);
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

procedure TFrm_SMS.mm_messageKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxMemo(sender).Text := Enc_Control(TcxMemo(sender).Text);
end;

procedure TFrm_SMS.mm_messageMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pnl_Char.Tag := TcxMemo(Sender).Tag;
end;

procedure TFrm_SMS.mm_messagePropertiesChange(Sender: TObject);
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
    iCnt := fgetCountSms(TcxMemo(sender).Text);
		lb_Cnt.Caption := Format('%d건', [iCnt]);
		lb_Cnt.style.Textcolor := clBlue;
		lb_Cnt.style.font.style := [fsBold];

    if iCnt > 5 then iCnt := 5;   // 최대 5건까지 연속문자 전송가능
		lbMaxLen.Caption := Format('/ %dByte', [iCnt * 90]);
	end else
	begin
    if iLen = 0 then lb_Cnt.Caption := Format('%d건', [0])
                else lb_Cnt.Caption := Format('%d건', [1]);
		lb_Cnt.style.Textcolor := clBlack;
		lb_Cnt.style.font.style := [];

		lbMaxLen.Caption := '/ 90Byte';
	end;
end;

procedure TFrm_SMS.mniN1Click(Sender: TObject);
begin
  case cxPageControl1.ActivePageIndex of
    2 : btnExcelA3.Click;
    3 : btnExcelA4.Click;
  end;
end;

procedure TFrm_SMS.PnlHelpMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(PnlHelp.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SMS.edtNoRecvSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Ord(Key) = VK_RETURN then
    btnNoRecvSearch.Click;
end;

procedure TFrm_SMS.edtNoRecvSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_SMS.edtSplitMinKeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key >= #48) and (Key <= #57)) or (Key = #8) then
  else
  begin
    Key := #0;
  end;
end;

procedure TFrm_SMS.ed_sendKeyPress(Sender: TObject; var Key: Char);
begin
  // 전화번호이기 때문에 숫자만 입력 받는다.  [(Key = #3) : Ctrl+C, (Key = #22) : Ctrl+V]
  if ((Key >= #48) and (Key <= #57)) or (Key = #8) or (Key = #3) or (Key = #22) then
  else
  begin
    Key := #0;
  end;
end;

procedure TFrm_SMS.edt_BalsinKeyPress(Sender: TObject; var Key: Char);
begin
  // 전화번호이기 때문에 숫자만 입력 받는다.  [(Key = #3) : Ctrl+C, (Key = #22) : Ctrl+V]
  if ((Key >= #48) and (Key <= #57)) or (Key = #8) or (Key = #3) or (Key = #22) then
  else
  begin
    Key := #0;
  end;
end;

procedure TFrm_SMS.chkSMSLogClick(Sender: TObject);
begin
  btnSMSLog.Enabled := TcxCheckBox(Sender).Checked;
end;

procedure TFrm_SMS.chkSplitClick(Sender: TObject);
begin
  edtSplitMin.Enabled := chkSplit.Checked;
  edtSplitCnt.Enabled := chkSplit.Checked;

  if chkSplit.Checked then
    edtSplitMin.SetFocus;
end;

function TFrm_SMS.GetCallmanerSMSList(const APath: string; var AData: AnsiString): Boolean;
var
  FS: TFileStream;
  P: TIdBytes;
  Len: Integer;
  Enc, DataLen: DWORD;
begin
  Result := False;

  FS := TFileStream.Create(APath, fmOpenRead or fmShareDenyWrite);
  try
    FS.ReadBuffer(PDWORD(Enc), SizeOf(DWORD));

    case TEncryptType(Enc) of
    etBlowfish:
      begin
        if FS.Size > 0 then
        begin
          FS.ReadBuffer(PDWORD(DataLen), SizeOf(DWORD));
          Len := (DataLen - 1 div 8 + 1) * 8;

          SetLength(P, Len);
          FS.Read(P[0], Len);

          AData := BlowFishPDecrypt(CallSMSKey, PAnsiChar(P), Len);
          Result := True;
        end;
      end;
    else
    end;
  finally
    FS.Free;
  end;
end;

procedure TFrm_SMS.prc_Test;
const
  _SMS_KEY = '9me0q9b3p6c7x9re4n1sf8sn8rq0k1iz';
//  _SMS_KEY = 'e8s0e4n1sk1iz09tjffpdlaq9b3mc7xf';
var
  MIndex: string;
  HTTPEnc : string;

  procedure RunDownload(AData: string);
  const
    _URL = 'http://%s/sms/report.php?Data=%s';
  var
    IE: Variant;
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
                        + '(다시시도 바랍니다.)' , [E.Message]), CDMSE);
    end;
  end;
var
  sTMP, s, sss : string;
  iEncryptLen, ii : Integer;
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

procedure TFrm_SMS.chkRemoveAllClick(Sender: TObject);
begin
  chkRemoveMember.Checked := TcxCheckBox(Sender).Checked;
  chkRemoveWorker.Checked := TcxCheckBox(Sender).Checked;
  chkRemoveKISA.Checked := TcxCheckBox(Sender).Checked;
  chkRemoveSpamAll.Checked := TcxCheckBox(Sender).Checked;
  chkRemoveUser.Checked := TcxCheckBox(Sender).Checked;
end;

procedure TFrm_SMS.chkRemoveUserClick(Sender: TObject);
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

procedure TFrm_SMS.chkMileAddClick(Sender: TObject);
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
    end else
    begin
      mm_message.Text := sTarget + mm_message.Text;
    end;
    mm_message.SelStart := length(mm_message.Text);
  end
  else
    mm_message.Text := StringReplace(mm_message.Text, sTarget, '', [rfReplaceAll]);

  lbSrtLen.Caption := IntToStr(Length(AnsiString(mm_message.Text)));
  mm_message.SetFocus;
end;

procedure TFrm_SMS.proc_recieve(ls_rxxml: Widestring);
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

        if ls_ClientKey = 'CASH0001' then RecvResultFileSmsBranchList(ls_rxxml) else
        if ls_ClientKey = 'CASH0002' then RecvResultSendSmsBranchList(ls_rxxml) else
        if ls_ClientKey = 'CASH0003' then RecvResultBrCashInfo(ls_rxxml) else
				if ls_ClientKey = 'NOSM0001' then RecvResultFileSmsNoSms(ls_rxxml) else
				if ls_ClientKey = 'SMSR0001' then RecvResultSmsResultList(ls_rxxml){ else
				if ls_ClientKey = 'GET_PUSH_RESULT_SEARCH' then RecvResultSmsResultList(ls_rxxml)}; //PUSH 조회(상세)
				if ls_ClientKey = 'DAYR0001' then RecvResultDaySmsResultList(ls_rxxml) else
//				if ls_ClientKey = 'GET_PUSH_RESULT_STAT' then RecvResultDaySmsResultList(ls_rxxml) else //PUSH 조회(일별)
				if ls_ClientKey = 'DAYR0002' then RecvResultDaySmsDownloadList(ls_rxxml);
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

procedure TFrm_SMS.proc_init_result;
var
  I: Integer;
begin
	try
    cxDtEndA3.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
    cxDtStartA3.Date := cxDtEndA3.Date - 7;

    // 금액관련 설정
    lCurProperties.ReadOnly := True;
    lCurProperties.DisplayFormat := '###,##0.#';
    lCurProperties.Nullable := True;
    lCurProperties.Alignment.Horz := taRightJustify;
    lCurProperties.Alignment.Vert := taVCenter;
    if TCK_USER_PER.JON_BrchCashView = '1' then
    begin
      lCurProperties.EchoMode := eemNormal;
    end else
    begin
      lCurProperties.EchoMode := eemPassword;
    end;
        ;
    // 지사그리드
		for I := 0 to cxViewResultList.ColumnCount - 1 do
		begin
			case I of
			0, 6..8:
				cxViewResultList.Columns[I].DataBinding.ValueType := 'Integer';
			9:
				begin
					cxViewResultList.Columns[I].DataBinding.ValueType := 'Currency';
					cxViewResultList.Columns[I].Properties := lCurProperties;
				end;
			else
				cxViewResultList.Columns[I].DataBinding.ValueType := 'String';
			end;
		end;

		cxViewResultList.DataController.SetRecordCount(0);

		for I := 0 to cxViewResultExcel.ColumnCount - 1 do
		begin
			case I of
			0:
				cxViewResultExcel.Columns[I].DataBinding.ValueType := 'Integer';
			else
				cxViewResultExcel.Columns[I].DataBinding.ValueType := 'String';
			end;
		end;

		cxViewResultExcel.DataController.SetRecordCount(0);
		cboSearchGubun.ItemIndex := 0;
		btnSearchA3.Hint := '';
  except
  end;
end;

procedure TFrm_SMS.RecvResultBrCashInfo(ls_rxxml: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
begin
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
					edtDaySmsCash.Text := FormatFloat('#,##0.#', StrToFloatDef(ls_Rcrd[2], 0));
          edtDayBranchCash.Text := FormatFloat('#,##0.#', StrToFloatDef(ls_Rcrd[1], 0));
					if GT_SEL_BRNO.GUBUN <> '0' then
          begin
            edtDayNmlPrice.Text := FormatFloat('#,##0.#', StrToFloatDef(ls_Rcrd[3], 0));
						edtDayComPrice.Text := FormatFloat('#,##0.#', StrToFloatDef(ls_Rcrd[4], 0));
						edtDayPushPrice.Text := FormatFloat('#,##0.#', StrToFloatDef(ls_Rcrd[5], 0));
						NORSMSCASH := StrToFloatDef(ls_Rcrd[3], 0);
						SMSCASH := StrToFloatDef(ls_Rcrd[4], 0);
						PUSHCASH := StrToFloatDef(ls_Rcrd[5], 0);
						if NORSMSCASH <> 0 then
							edtDayNmlCount.Text := FormatFloat('#,##0', (StrToFloatDef(ls_Rcrd[2], 0) /  NORSMSCASH))
            else
              edtDayNmlCount.Text := '0';

						if SMSCASH <> 0 then
							edtDayComCount.Text := FormatFloat('#,##0', (StrToFloatDef(ls_Rcrd[2], 0) /  SMSCASH))
						else
							edtDayComCount.Text := '0';

						if PUSHCASH <> 0 then
							edtDayPushCount.Text := FormatFloat('#,##0', (StrToFloatDef(ls_Rcrd[2], 0) /  PUSHCASH))
						else
							edtDayPushCount.Text := '0';
					end else
					if GT_SEL_BRNO.GUBUN = '0' then
          begin
            edtDayNmlPrice.Text := '';
						edtDayComPrice.Text := '';
						edtDayPushPrice.Text := '';
						NORSMSCASH := 0;
						SMSCASH := 0;
						PUSHCASH := 0;
						edtDayNmlCount.Text := '';
						edtDayComCount.Text := '';
						edtDayPushCount.Text := '';

          end;
        finally
          ls_Rcrd.Free;
        end;
      end else
      begin
				edtDaySmsCash.Text 	  := '0';
				edtDayBranchCash.Text := '0';
				edtDayPushPrice.Text  := '0';
				edtDayNmlCount.Text 	:= '0';
				edtDayComCount.Text 	:= '0';
				edtDayPushCount.Text  := '0';
			end;
		end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_SMS.RequestData(AData: string);
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

procedure TFrm_SMS.proc_stab_ref(sBR_NO: string);
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

{-------------------------------------------------------------------------------
  Procedure: TfrmSMS.RecvResultFileSmsBranchList
  Descript:  대용량파일 지사목록 수신
  Author:    hskim
  DateTime:  2008.12.17
  Arguments: ls_rxxml: WideString
  Result:    None
-------------------------------------------------------------------------------}

procedure TFrm_SMS.RecvResultFileSmsBranchList(ls_rxxml: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  i, iRow: Integer;
  AddIdx: Integer;

  sBrNo, sBrName: string;
  Sms_Cash, iCnt: Double;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ls_rxxml) then Exit;

    //----------------------------------------------------------------------------------------------
    //   지사별 SMS캐쉬, 광고 전송가능 갯수 표시( 1개에 13원 ) --> 13원에서 16원으로 변경됨 2008-01-02 최도순
    //----------------------------------------------------------------------------------------------
    if (0 < GetXmlRecordCount(ls_rxxml)) then
    begin
      lst_Result :=
        xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

      cxViewFileBranch.DataController.SetRecordCount(0);

      ls_Rcrd := TStringList.Create;
      try
        for i := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

    			sBrNo := ls_Rcrd[2];
    			if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB   패밀리지사일때
    			begin
    				if not Check_ALLHD(GT_SEL_BRNO.HDNO) then      //전체지사권한이 없을때
    				begin
    					if scb_FamilyBrCode.IndexOf(sBrNo) = -1 then   //권한있는 지사일경우만 그리드표기
    					else
    					begin
    						iRow := scb_BranchCode.IndexOf(sBrNo);
    						sBrName := '';
    						if iRow >= 0 then
    							sBrName := scb_BranchName.Strings[iRow];
    						Sms_Cash := StrToFloatDef(ls_Rcrd[0], 0);
    						// 13원에서 16원으로 변경됨 2008-01-02 최도순

								// 서버에서 받아온금액(scb_SMSCASH[iRow])으로 변경됨 2012.05.22KHS
                iCnt := 0;
                if StrToFloatDef(ls_Rcrd[4], 0) <> 0 then
        					iCnt := Sms_Cash / StrToFloatDef(ls_Rcrd[4], 0);//SMSCASH;

    						// 파일전송 지사 그리드 표시
    						AddIdx := cxViewFileBranch.DataController.AppendRecord;
    						cxViewFileBranch.DataController.SetValue(AddIdx, 4, sBrNo);
    						cxViewFileBranch.DataController.Values[AddIdx, 0] := sBrName;
    						cxViewFileBranch.DataController.Values[AddIdx, 1] := Sms_Cash;
    						cxViewFileBranch.DataController.Values[AddIdx, 2] := StrToFloatDef(ls_Rcrd[4], 0);
    						cxViewFileBranch.DataController.SetValue(AddIdx, 3, iCnt);
    					end;
    				end	else
    				begin
    					iRow := scb_BranchCode.IndexOf(sBrNo);
    					sBrName := '';
    					if iRow >= 0 then
    						sBrName := scb_BranchName.Strings[iRow];
    					Sms_Cash := StrToFloatDef(ls_Rcrd[0], 0);
    					// 13원에서 16원으로 변경됨 2008-01-02 최도순

    					// 서버에서 받아온금액(scb_SMSCASH[iRow])으로 변경됨 2012.05.22KHS
              iCnt := 0;
              if StrToFloatDef(ls_Rcrd[4], 0) <> 0 then
      					iCnt := Sms_Cash / StrToFloatDef(ls_Rcrd[4], 0);//SMSCASH;

    					// 파일전송 지사 그리드 표시
    					AddIdx := cxViewFileBranch.DataController.AppendRecord;
    					cxViewFileBranch.DataController.SetValue(AddIdx, 4, sBrNo);
    					cxViewFileBranch.DataController.Values[AddIdx, 0] := sBrName;
    					cxViewFileBranch.DataController.Values[AddIdx, 1] := Sms_Cash;
    					cxViewFileBranch.DataController.Values[AddIdx, 2] := StrToFloatDef(ls_Rcrd[4], 0);
    					cxViewFileBranch.DataController.SetValue(AddIdx, 3, iCnt);
    				end;
    			end	else
    			begin
    				iRow := scb_BranchCode.IndexOf(sBrNo);
    				sBrName := '';
    				if iRow >= 0 then
    					sBrName := scb_BranchName.Strings[iRow];
    				Sms_Cash := StrToFloatDef(ls_Rcrd[0], 0);
    				// 13원에서 16원으로 변경됨 2008-01-02 최도순

    				// 서버에서 받아온금액(scb_SMSCASH[iRow])으로 변경됨 2012.05.22KHS
    				iCnt := Sms_Cash / StrToFloat(ls_Rcrd[4]);//SMSCASH;

    				// 파일전송 지사 그리드 표시
    				AddIdx := cxViewFileBranch.DataController.AppendRecord;
    				cxViewFileBranch.DataController.SetValue(AddIdx, 4, sBrNo);
    				cxViewFileBranch.DataController.Values[AddIdx, 0] := sBrName;
    				cxViewFileBranch.DataController.Values[AddIdx, 1] := Sms_Cash;
    				cxViewFileBranch.DataController.Values[AddIdx, 2] := ls_Rcrd[4];
    				cxViewFileBranch.DataController.SetValue(AddIdx, 3, iCnt);
    			end;
    		end;
      finally
        ls_Rcrd.Free;
      end;
    end;
  finally
    xdom := nil;
  end;
end;

procedure TFrm_SMS.RecvResultFileSmsNoSms(ls_rxxml: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  i: Integer;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ls_rxxml) then
      Exit;
    if (0 < GetXmlRecordCount(ls_rxxml)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      for i := 0 to lst_Result.length - 1 do
      begin
        lst_tel.Items.Add(GetTextSeperationFirst('│', lst_Result.item[i].attributes.getNamedItem('Value').Text));
      end;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_SMS.proc_init_filesms_blocktel;
var
  I: Integer;
  ls_TxQry, ls_TxLoad, sQueryTemp: string;
  StrList: TStringList;
  ErrCode: integer;
begin
  lst_tel.Items.Clear;
  ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
  fGet_BlowFish_Query(GSQ_BRANCH_SMS_NO, sQueryTemp);

  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    ls_TxQry := Format(sQueryTemp, [GT_SEL_BRNO.HDNO])
  else
    ls_TxQry := Format(sQueryTemp, [GT_USERIF.HD]);

  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'NOSM0001', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '2500', [rfReplaceAll]);

  StrList := TStringList.Create;
  Screen.Cursor := crHandPoint;
  pnlSmsStatus.Left := (frm_main.Width - pnlSmsStatus.Width) div 2;
  pnlSmsStatus.Top := ((frm_main.Height - pnlSmsStatus.Height) div 2) - Self.Top;
  pnlSmsStatus.Caption := '수신거부 목록을 받아오고 있습니다.';
  pnlSmsStatus.Visible := True;
  Application.ProcessMessages;
  try
    if dm.SendSock(ls_TxLoad, StrList, ErrCode, False) then
    begin
      Frm_Flash.cxPBar1.Properties.Max := StrList.Count;
      Frm_Flash.cxPBar1.Position := 0;
      for I := 0 to StrList.Count - 1 do
      begin
        Frm_Flash.cxPBar1.Position := i + 1;
        Frm_Flash.lblCnt.Caption := Format('%d / %d', [I + 1, StrList.Count]);
        if trim(StrList[I]) <> '' then
        begin
          Application.ProcessMessages;
          func_recieve(StrList[I]);
        end;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    StrList.Free;
    Frm_Flash.Hide;
    pnlSmsStatus.Visible := False;
  end;
end;

procedure TFrm_SMS.WriteSMSLog(ALog: string);
begin
  if chkSMSLog.Checked then
    mmoSMSLog.Lines.Add(FormatDateTime('HH:NN:SS.ZZZ', Now) + '> ' + ALog);
end;

{-------------------------------------------------------------------------------
  Procedure: TfrmSMS.RecvResultSmsResultList
  Descript:  SMS 결과 조회 수신
  Author:    hskim
  DateTime:  2008.12.18
  Arguments: ls_rxxml: WideString
  Result:    None
-------------------------------------------------------------------------------}

procedure TFrm_SMS.RecvResultSmsResultList(ls_rxxml: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, RowIdx: Integer;
  sReqDate, sSendDate: string;
begin
	xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ls_rxxml) then
      Exit;

    if (0 < GetXmlRecordCount(ls_rxxml)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

      cxViewResultList.BeginUpdate;
			ls_Rcrd := TSTringList.Create;
			try
				for I := 0 to lst_Result.length - 1 do
				begin
					GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
					ls_Rcrd.Insert(0, IntToStr(I + 1));

					RowIdx := cxViewResultList.DataController.AppendRecord;
					cxViewResultList.DataController.SetValue(RowIdx, 0, ls_Rcrd[0]);

					sSendDate := ls_Rcrd[1];
					sSendDate := Copy(sSendDate, 1, 10) + ' ' + Copy(sSendDate, 11, 8);

          sReqDate := ls_Rcrd[2];
					if ( Trim(sReqDate) <> '' ) And ( Length(sReqDate) = 14 ) then
          begin
            sReqDate := copy(sReqDate, 1, 4) + '-' + copy(sReqDate, 5, 2) + '-' +
              copy(sReqDate, 7, 2) + ' ' + copy(sReqDate, 9, 2) + ':' + copy(sReqDate, 11, 2) + ':' + copy(sReqDate, 13, 2);

            if StrToDateTime(sSendDate) - StrToDateTime(sReqDate) > 0 then
              sReqDate := Copy(sSendDate, 1, 16)
						else
              sReqDate := Copy(sReqDate, 1, 16);
					end else
          if ( Trim(sReqDate) <> '' ) And ( Length(sReqDate) = 18 ) then
					begin
						sReqDate := Copy(sReqDate, 1, 10) + ' ' + Copy(sReqDate, 11, 8);
          end;
					cxViewResultList.DataController.SetValue(RowIdx, 1, sSendDate);
					cxViewResultList.DataController.SetValue(RowIdx, 2, sReqDate);
					cxViewResultList.DataController.SetValue(RowIdx, 3, ls_Rcrd[3]);
          cxViewResultList.DataController.SetValue(RowIdx, 4, ls_Rcrd[4]);
          cxViewResultList.DataController.SetValue(RowIdx, 5, strtocall(ls_Rcrd[5]));
					cxViewResultList.DataController.SetValue(RowIdx, 6, StrToIntDef(ls_Rcrd[6], 0));
          cxViewResultList.DataController.SetValue(RowIdx, 7, StrToIntDef(ls_Rcrd[7], 0));
          cxViewResultList.DataController.SetValue(RowIdx, 8, StrToIntDef(ls_Rcrd[8], 0));
					cxViewResultList.DataController.SetValue(RowIdx, 9, StrToFloatDef(ls_Rcrd[9], 0));
          cxViewResultList.DataController.SetValue(RowIdx, 10, '다운로드');
					cxViewResultList.DataController.SetValue(RowIdx, 11, ls_Rcrd[10]);  //M-Index
					cxViewResultList.DataController.SetValue(RowIdx, 12, ls_Rcrd[10]);  //pushSeq
				end;
			finally
				cxViewResultList.EndUpdate;
        ls_Rcrd.Free;
      end;
    end else
    begin
			cxViewResultList.DataController.SetRecordCount(0);
			GMessagebox('검색된 결과가 없습니다.', CDMSE);
		end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_SMS.proc_daylist_search;
var
  ls_TxLoad, ls_TxQry, swhere, sQueryTemp : string;
  sDate1, sDate2, msg: string;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN <> '1') then
  begin
    GMessagebox('SMS 조회결과(일별)은 지사를 선택하셔야 합니다.', CDMSE);
    Exit;
  end;

  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementEtc(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 광고관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSE);
    Exit;
  end;

  try
    swhere := '';
    if GT_SEL_BRNO.GUBUN = '1' then
    begin
      swhere := ' = ''' + GT_SEL_BRNO.BrNo + '''';
    end else
    begin
      if GT_USERIF.LV = '60' then
      begin
        if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
          swhere := Format(' in (select br_no from cdms_branch where hd_no = ''%s'')', [GT_SEL_BRNO.HDNO])
        else
          swhere := Format(' in (select br_no from cdms_branch where hd_no = ''%s'')', [GT_USERIF.HD])
      end else
      if GT_USERIF.LV = '40' then
        swhere := Format(' = ''%s''', [GT_USERIF.BR])
      ;
      // 상담원은 지사 미선택 시 메시지 표시
    end;

    sDate1 := formatdatetime('yyyymmdd', cxDtStartA4.Date);
    sDate2 := formatdatetime('yyyymmdd', cxDtEndA4.Date);

    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_DAYSMS_RESULT, sQueryTemp);
    ls_TxQry := En_Coding(Format(sQueryTemp, [sWhere, sDate1, sDate2, sWhere, sDate1, sDate2]));
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'DAYR0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_SMS.proc_daylist_search_PUSH;
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i, j, iCnt : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;

	RowIdx: Integer;

	CntNmlS, CntNmlF,
	CntComS, CntComF: Integer;

	iTmp, iTmp1 : integer;
	dTmp : Double;
begin
	dt_sysdate2 := frm_main.func_sysdate;

	if Trim(dt_sysdate2) = '' then
	begin
		GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSE);
		exit;
	end;

	if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) > 2100)
		or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
		GMessagebox('오후 9시부터 오전 1시 사이에는 PUSH전송 결과를 사용할 수 없습니다.', CDMSE);
		exit;
  end;

	cxViewDayResult.DataController.SetRecordCount(0);
	try
		Param := sHdNo;
		Param := Param + '│' + sBrNo;
		Param := Param + '│' + formatdatetime('yyyymmdd', cxDtStartA4.Date) + '│' + formatdatetime('yyyymmdd', cxDtEndA4.Date);

		Screen.Cursor := crHourGlass;

		slList := TStringList.Create;
		if not RequestBasePaging(GetSel06('GET_PUSH_RESULT_STAT', 'PUSH.GET_PUSH_RESULT_STAT', '2', Param), slList, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('조회결과(일별) 공지푸시 리스트 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			Exit;
		end;

		xdom := ComsDomDocument.Create;
		try
			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			cxViewDayResult.DataController.SetRecordCount(0);
			cxViewDayResult.BeginUpdate;
			CntNmlS := 0;
			CntNmlF := 0;
			CntComS := 0;
			CntComF := 0;
			iCnt := 0;
			for j := 0 to slList.Count - 1 do
			begin
				Frm_Flash.cxPBar1.Position := j + 1;
				Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
				Application.ProcessMessages;
				xmlData := slList.Strings[j];
				xdom.loadXML(XmlData);

				if (0 < GetXmlRecordCount(XmlData)) then
				begin
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

					ls_Rcrd := TStringList.Create;
					try
						for I := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							//''  │2017-02-01│PUSH│33│33│0│231│0"/>          PUSH
							//B100│2017-02-01│일반│59│55│4│93.22│0 SMS
							RowIdx := cxViewDayResult.DataController.AppendRecord;
							cxViewDayResult.DataController.SetValue(RowIdx, 0, ls_Rcrd[1]);
							cxViewDayResult.DataController.SetValue(RowIdx, 1, ls_Rcrd[2]);
							cxViewDayResult.DataController.SetValue(RowIdx, 2, StrToIntDef(ls_Rcrd[3], 0));
							cxViewDayResult.DataController.SetValue(RowIdx, 3, StrToIntDef(ls_Rcrd[4], 0));
							cxViewDayResult.DataController.SetValue(RowIdx, 4, StrToIntDef(ls_Rcrd[5], 0));
							if btnSearchA4.Hint = 'SMS' then
							begin
								cxViewDayResult.DataController.SetValue(RowIdx, 5, StrToFloatDef(ls_Rcrd[6], 0));
								cxViewDayResult.DataController.SetValue(RowIdx, 6, StrToFloatDef(ls_Rcrd[7], 0.0));
								if ls_Rcrd[2] = '일반' then
									cxViewDayResult.DataController.SetValue(RowIdx, 7, StrToIntDef(ls_Rcrd[5], 0)* NORSMSCASH)
								else
									cxViewDayResult.DataController.SetValue(RowIdx, 7, StrToIntDef(ls_Rcrd[5], 0)* SMSCASH);
								cxViewDayResult.DataController.SetValue(RowIdx, 8, '');

								if ls_Rcrd[2] = '일반' then
								begin
									CntNmlS := CntNmlS + StrToIntDef(ls_Rcrd[4], 0);
									CntNmlF := CntNmlF + StrToIntDef(ls_Rcrd[5], 0);
								end else
								begin
									CntComS := CntComS + StrToIntDef(ls_Rcrd[4], 0);
									CntComF := CntComF + StrToIntDef(ls_Rcrd[5], 0);
								end;
							end	else
							begin
								CntNmlS := CntNmlS + StrToIntDef(ls_Rcrd[4], 0);
								CntNmlF := CntNmlF + StrToIntDef(ls_Rcrd[5], 0);

								iTmp := StrToIntDef(ls_Rcrd[3], 0);    //총건수
								iTmp1 := StrToIntDef(ls_Rcrd[4], 0);   //성공건수

								dTmp := roundto((iTmp1 / iTmp * 100),-1);

								cxViewDayResult.DataController.SetValue(RowIdx, 5, FloatToStr(dTmp));    //성공률
								cxViewDayResult.DataController.SetValue(RowIdx, 6, CntNmlS *  PUSHCASH);//StrToFloatDef(ls_Rcrd[6], 0.0)); //사용금액
								cxViewDayResult.DataController.SetValue(RowIdx, 7, StrToFloatDef(ls_Rcrd[7], 0.0));
								cxViewDayResult.DataController.SetValue(RowIdx, 8, '');
							end;
						end;
					finally
						ls_Rcrd.Free;
					end;
					iCnt := iCnt + lst_Result.length;
				end;
			end;
			cxViewDayResult.EndUpdate;

			lblCntA4.Caption := Format('총    %d 건', [iCnt]);

			if btnSearchA4.Hint = 'SMS' then
			begin
				// 일반
				cxViewDaySum.DataController.SetValue(0, 2, CntNmlS + CntNmlF);
				cxViewDaySum.DataController.SetValue(0, 3, CntNmlS);
				cxViewDaySum.DataController.SetValue(0, 4, CntNmlF);
				if (CntNmlS + CntNmlF) > 0 then
					cxViewDaySum.DataController.SetValue(0, 5, (CntNmlS / (CntNmlS + CntNmlF) * 100));
				cxViewDaySum.DataController.SetValue(0, 6, CntNmlS *  NORSMSCASH);
				cxViewDaySum.DataController.SetValue(0, 7, CntNmlF *  NORSMSCASH);
				// 광고
				cxViewDaySum.DataController.SetValue(1, 2, CntComS + CntComF);
				cxViewDaySum.DataController.SetValue(1, 3, CntComS);
				cxViewDaySum.DataController.SetValue(1, 4, CntComF);
				if (CntComS + CntComF) > 0 then
					cxViewDaySum.DataController.SetValue(1, 5, (CntComS / (CntComS + CntComF) * 100));
				cxViewDaySum.DataController.SetValue(1, 6, CntComS *  SMSCASH);
				cxViewDaySum.DataController.SetValue(1, 7, CntComF *  SMSCASH);
			end	else
			begin
				//  PUSH
				cxViewDaySum.DataController.SetValue(0, 2, CntNmlS + CntNmlF);
				cxViewDaySum.DataController.SetValue(0, 3, CntNmlS);
				cxViewDaySum.DataController.SetValue(0, 4, CntNmlF);
				if (CntNmlS + CntNmlF) > 0 then
					cxViewDaySum.DataController.SetValue(0, 5, (CntNmlS / (CntNmlS + CntNmlF) * 100));
				cxViewDaySum.DataController.SetValue(0, 6, CntNmlS *  PUSHCASH);
				cxViewDaySum.DataController.SetValue(0, 7, CntNmlF *  PUSHCASH);
			end;

			if cxViewDayResult.DataController.RecordCount = 0 then
			begin
				lblCntA4.Caption := Format('총    %d 건', [0]);

				cxViewDayResult.DataController.SetRecordCount(0);

				cxViewDaySum.DataController.SetValue(0, 2, 0);
				cxViewDaySum.DataController.SetValue(0, 3, 0);
				cxViewDaySum.DataController.SetValue(0, 4, 0);
				cxViewDaySum.DataController.SetValue(0, 5, 0);
				cxViewDaySum.DataController.SetValue(0, 6, 0);
				if btnSearchA4.Hint = 'SMS' then
				begin
					cxViewDaySum.DataController.SetValue(1, 2, 0);
					cxViewDaySum.DataController.SetValue(1, 3, 0);
					cxViewDaySum.DataController.SetValue(1, 4, 0);
					cxViewDaySum.DataController.SetValue(1, 5, 0);
					cxViewDaySum.DataController.SetValue(1, 6, 0);
				end;

				GMessagebox('검색된 결과가 없습니다.', CDMSE);
			end;
		finally
			xdom := Nil;
			Frm_Flash.hide;
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
		end;
	except
		on e: Exception do
		begin
			Screen.Cursor := crDefault;
			Frm_Flash.hide;
			FreeAndNil(slList);
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_SMS.RecvResultDaySmsResultList(ls_rxxml: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, RowIdx: Integer;

  CntNmlS, CntNmlF,
	CntComS, CntComF,
  CntAmtB, CntAmtA : Integer;

	iTmp, iTmp1 : integer;
	dTmp : Double;
begin
	xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ls_rxxml) then Exit;

    if (0 < GetXmlRecordCount(ls_rxxml)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      cxViewDayResult.DataController.SetRecordCount(0);
      cxViewBranchResult.DataController.SetRecordCount(0);

      CntNmlS := 0;
      CntNmlF := 0;
      CntComS := 0;
      CntComF := 0;
      CntAmtB := 0;
      CntAmtA := 0;

      glBranchResult1.Clear;
      glBranchResult2.Clear;
      glBranchResult3.Clear;
      glBranchResult4.Clear;
      glBranchResult5.Clear;
      glBranchResult6.Clear;

      cxViewDayResult.BeginUpdate;
      ls_Rcrd := TStringList.Create;
      try
        for I := 0 to lst_Result.length - 1 do
				begin
					GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
					//''  │2017-02-01│PUSH│33│33│0│231│0"/>          PUSH
					//B100│2017-02-01│일반│59│55│4│93.22│0 SMS
					RowIdx := cxViewDayResult.DataController.AppendRecord;
					cxViewDayResult.DataController.SetValue(RowIdx, 0, ls_Rcrd[1]);
					cxViewDayResult.DataController.SetValue(RowIdx, 1, ls_Rcrd[2]);
					cxViewDayResult.DataController.SetValue(RowIdx, 2, StrToIntDef(ls_Rcrd[3], 0));
					cxViewDayResult.DataController.SetValue(RowIdx, 3, StrToIntDef(ls_Rcrd[4], 0));
					cxViewDayResult.DataController.SetValue(RowIdx, 4, StrToIntDef(ls_Rcrd[5], 0));
					if btnSearchA4.Hint = 'SMS' then
					begin
						cxViewDayResult.DataController.SetValue(RowIdx, 5, StrToFloatDef(ls_Rcrd[6], 0));
						cxViewDayResult.DataController.SetValue(RowIdx, 6, StrToFloatDef(ls_Rcrd[7], 0.0));
						if ls_Rcrd[2] = '일반' then
							cxViewDayResult.DataController.SetValue(RowIdx, 7, StrToIntDef(ls_Rcrd[5], 0)* NORSMSCASH)
						else
							cxViewDayResult.DataController.SetValue(RowIdx, 7, StrToIntDef(ls_Rcrd[5], 0)* SMSCASH);
						cxViewDayResult.DataController.SetValue(RowIdx, 8, '');

						if ls_Rcrd[2] = '일반' then
						begin
							CntNmlS := CntNmlS + StrToIntDef(ls_Rcrd[4], 0);
							CntNmlF := CntNmlF + StrToIntDef(ls_Rcrd[5], 0);
						end else
						begin
							CntComS := CntComS + StrToIntDef(ls_Rcrd[4], 0);
							CntComF := CntComF + StrToIntDef(ls_Rcrd[5], 0);
						end;

            if ls_Rcrd[2] = '일반' then
            begin
              CntAmtB := CntAmtB + StrToIntDef(ls_Rcrd[7], 0);
              pResultDayToBranch(ls_Rcrd[0]+'_1', ls_Rcrd[3], ls_Rcrd[4], ls_Rcrd[5], ls_Rcrd[6], ls_Rcrd[7]);
            end else
            begin
              CntAmtA := CntAmtA + StrToIntDef(ls_Rcrd[7], 0);
              pResultDayToBranch(ls_Rcrd[0]+'_2', ls_Rcrd[3], ls_Rcrd[4], ls_Rcrd[5], ls_Rcrd[6], ls_Rcrd[7]);
            end;
					end	else
					begin
						CntNmlS := CntNmlS + StrToIntDef(ls_Rcrd[4], 0);
						CntNmlF := CntNmlF + StrToIntDef(ls_Rcrd[5], 0);

						iTmp := StrToIntDef(ls_Rcrd[3], 0);    //총건수
						iTmp1 := StrToIntDef(ls_Rcrd[4], 0);   //성공건수

						dTmp := roundto((iTmp1 / iTmp * 100),-1);

						cxViewDayResult.DataController.SetValue(RowIdx, 5, FloatToStr(dTmp));    //성공률
						cxViewDayResult.DataController.SetValue(RowIdx, 6, CntNmlS *  PUSHCASH);//StrToFloatDef(ls_Rcrd[6], 0.0)); //사용금액
						cxViewDayResult.DataController.SetValue(RowIdx, 7, StrToFloatDef(ls_Rcrd[7], 0.0));
						cxViewDayResult.DataController.SetValue(RowIdx, 8, '');
					end;
				end;
      finally
				ls_Rcrd.Free;
        cxViewDayResult.EndUpdate;
      end;

      pDisplayResultBranch;
      lblCntA4.Caption := Format('총    %d 건', [lst_Result.length]);

			if btnSearchA4.Hint = 'SMS' then
			begin
				// 일반
				cxViewDaySum.DataController.SetValue(0, 2, CntNmlS + CntNmlF);
				cxViewDaySum.DataController.SetValue(0, 3, CntNmlS);
				cxViewDaySum.DataController.SetValue(0, 4, CntNmlF);
				if (CntNmlS + CntNmlF) > 0 then
					cxViewDaySum.DataController.SetValue(0, 5, (CntNmlS / (CntNmlS + CntNmlF) * 100));
				cxViewDaySum.DataController.SetValue(0, 6, CntAmtB);
				cxViewDaySum.DataController.SetValue(0, 7, CntNmlF *  NORSMSCASH);
				// 광고
				cxViewDaySum.DataController.SetValue(1, 2, CntComS + CntComF);
				cxViewDaySum.DataController.SetValue(1, 3, CntComS);
				cxViewDaySum.DataController.SetValue(1, 4, CntComF);
				if (CntComS + CntComF) > 0 then
					cxViewDaySum.DataController.SetValue(1, 5, (CntComS / (CntComS + CntComF) * 100));
				cxViewDaySum.DataController.SetValue(1, 6, CntAmtA);
				cxViewDaySum.DataController.SetValue(1, 7, CntComF *  SMSCASH);
			end	else
			begin
				//  PUSH
				cxViewDaySum.DataController.SetValue(0, 2, CntNmlS + CntNmlF);
				cxViewDaySum.DataController.SetValue(0, 3, CntNmlS);
				cxViewDaySum.DataController.SetValue(0, 4, CntNmlF);
				if (CntNmlS + CntNmlF) > 0 then
					cxViewDaySum.DataController.SetValue(0, 5, (CntNmlS / (CntNmlS + CntNmlF) * 100));
				cxViewDaySum.DataController.SetValue(0, 6, CntNmlS *  PUSHCASH);
				cxViewDaySum.DataController.SetValue(0, 7, CntNmlF *  PUSHCASH);
			end;
		end else
    begin
      lblCntA4.Caption := Format('총    %d 건', [0]);
      cxViewDayResult.DataController.SetRecordCount(0);
			cxViewDaySum.DataController.SetValue(0, 2, 0);
			cxViewDaySum.DataController.SetValue(0, 3, 0);
			cxViewDaySum.DataController.SetValue(0, 4, 0);
			cxViewDaySum.DataController.SetValue(0, 5, 0);
			cxViewDaySum.DataController.SetValue(0, 6, 0);
			if btnSearchA4.Hint = 'SMS' then
			begin
				cxViewDaySum.DataController.SetValue(1, 2, 0);
				cxViewDaySum.DataController.SetValue(1, 3, 0);
				cxViewDaySum.DataController.SetValue(1, 4, 0);
				cxViewDaySum.DataController.SetValue(1, 5, 0);
				cxViewDaySum.DataController.SetValue(1, 6, 0);
			end;

      GMessagebox('검색된 결과가 없습니다.', CDMSE);
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_SMS.pResultDayToBranch(sBrNo, sValue1, sValue2, sValue3, sValue4, sValue5 : String );
Var idx : Integer;
begin
  try
    idx := glBranchResult1.IndexOf(sBrNo);
    if idx < 0 then
    begin
      glBranchResult1.Add(sBrNo);
      glBranchResult2.Add(sValue1);
      glBranchResult3.Add(sValue2);
      glBranchResult4.Add(sValue3);
      glBranchResult5.Add(sValue4);
      glBranchResult6.Add(sValue5);
    end else
    begin
      glBranchResult2.Strings[idx] := IntToStr(StrToIntDef(glBranchResult2.Strings[idx], 0) + StrToIntDef(sValue1, 0));
      glBranchResult3.Strings[idx] := IntToStr(StrToIntDef(glBranchResult3.Strings[idx], 0) + StrToIntDef(sValue2, 0));
      glBranchResult4.Strings[idx] := IntToStr(StrToIntDef(glBranchResult4.Strings[idx], 0) + StrToIntDef(sValue3, 0));
      glBranchResult5.Strings[idx] := FloatToStr(StrToFloatDef(glBranchResult5.Strings[idx], 0) + StrToFloatDef(sValue4, 0));
      glBranchResult6.Strings[idx] := FloatToStr(StrToFloatDef(glBranchResult6.Strings[idx], 0) + StrToFloatDef(sValue5, 0));
    end;
  except

  end;
end;

procedure TFrm_SMS.pDisplayResultBranch;
Var i, RowIdx, idx, iSortIndex : Integer;
    sGubun, sBrNo : String;
begin
  cxViewBranchResult.BeginUpdate;
  try
    for i := 0 to glBranchResult1.Count - 1 do
    begin
      RowIdx := cxViewBranchResult.DataController.AppendRecord;

      sBrNo := Copy(glBranchResult1.Strings[i], 1, Length(glBranchResult1.Strings[i]) - 2);
      sGubun := RightStr(glBranchResult1.Strings[i], 1);

      idx := scb_BranchCode.IndexOf(sBrNo);
      if idx < 0 then cxViewBranchResult.DataController.SetValue(RowIdx, 0, sBrNo)
                 else cxViewBranchResult.DataController.SetValue(RowIdx, 0, scb_BranchName.Strings[idx] + '(' + sBrNo + ')' );
      if sGubun = '1' then cxViewBranchResult.DataController.SetValue(RowIdx, 1, '일반') else
      if sGubun = '2' then cxViewBranchResult.DataController.SetValue(RowIdx, 1, '광고');
      cxViewBranchResult.DataController.SetValue(RowIdx, 2, StrToIntDef(glBranchResult2.Strings[i], 0));
      cxViewBranchResult.DataController.SetValue(RowIdx, 3, StrToIntDef(glBranchResult3.Strings[i], 0));
      cxViewBranchResult.DataController.SetValue(RowIdx, 4, StrToIntDef(glBranchResult4.Strings[i], 0));
      cxViewBranchResult.DataController.SetValue(RowIdx, 5, (StrToIntDef(glBranchResult3.Strings[i], 0) / StrToIntDef(glBranchResult2.Strings[i], 0)) * 100);
      cxViewBranchResult.DataController.SetValue(RowIdx, 6, StrToFloatDef(glBranchResult6.Strings[i], 0.0));
      cxViewBranchResult.DataController.SetValue(RowIdx, 7, StrToIntDef(glBranchResult4.Strings[i], 0)* NORSMSCASH);
      cxViewBranchResult.DataController.SetValue(RowIdx, 8, '');
    end;
  finally
    cxViewBranchResult.EndUpdate;
    iSortIndex := cxViewBranchResult.GetColumnByFieldName('지사(코드)').Index;
    cxViewBranchResult.Columns[iSortIndex].SortOrder := soAscending;
    cxViewBranchResult.Columns[iSortIndex].SortIndex := 0;
  end;
end;

procedure TFrm_SMS.RecvResultDaySmsDownloadList(ls_rxxml: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, J, RowIdx: Integer;
begin
	xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ls_rxxml) then
      Exit;

		if (0 < GetXmlRecordCount(ls_rxxml)) then
		begin
			lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

			cxViewDayDown.DataController.SetRecordCount(0);
			cxViewDayDown.BeginUpdate;
			pb1.Max := lst_Result.length;
			pb1.Position := 0;
			pb1.Visible := True;

			Application.ProcessMessages;
			try
				ls_Rcrd := TStringList.Create;
				try
					for I := 0 to lst_Result.length - 1 do
					begin
						GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
						ls_Rcrd.Insert(0, IntToStr(I + 1));

						RowIdx := cxViewDayDown.DataController.AppendRecord;
						for J := 0 to cxViewDayDown.ColumnCount - 1 do
						begin
							// 엑셀다운로드 권한(고객번호 숨김 체크)
							if ( GT_USERIF.Excel_Use = 'm' ) And ( Not gsCommercial ) And ( J = 5 ) then
								cxViewDayDown.DataController.SetValue(RowIdx, J, '***-****-****')
							else
								cxViewDayDown.DataController.SetValue(RowIdx, J, ls_Rcrd[J]);
						end;

						pb1.Position := I + 1;
					end;
				finally
					ls_Rcrd.Free;
        end;
      finally
        cxViewDayDown.EndUpdate;
        pb1.Visible := False;
      end;
    end;
	finally
    xdom := Nil;
  end;
end;

procedure TFrm_SMS.proc_day_download(ACommercial: Boolean);
var
  ls_TxLoad, ls_TxQry, swhere, sQueryTemp : string;
  sDate1, sDate2: string;
begin
	pnlSmsStatus.Left := (frm_main.Width - pnlSmsStatus.Width) div 2;
  pnlSmsStatus.Top := ((frm_main.Height - pnlSmsStatus.Height) div 2) - Self.Top;
  pnlSmsStatus.Caption := '엑셀파일을 생성 중입니다.';
  pnlSmsStatus.Visible := True;

  Application.ProcessMessages;

  try
    try
      swhere := '';
      if GT_USERIF.LV = '60' then
        if GT_SEL_BRNO.GUBUN <> '1' then
          swhere := Format(' in (select br_no from cdms_branch where hd_no = ''%s'')', [GT_SEL_BRNO.HDNO])
        else
          swhere := ' = ''' + GT_SEL_BRNO.BrNo + ''''
      else
        swhere := ' = ''' + GT_SEL_BRNO.BrNo + '''';

      sDate1 := formatdatetime('yyyymmdd', cxDtStartA4.Date);
      sDate2 := formatdatetime('yyyymmdd', cxDtEndA4.Date);

      ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');

      if ACommercial then
      begin
        fGet_BlowFish_Query(GSQ_DAYSMS_COMMERCIAL, sQueryTemp);
        ls_TxQry := En_Coding(Format(sQueryTemp, [sWhere, sDate1, sDate2, sWhere, sDate1, sDate2]))
      end else
      begin
        fGet_BlowFish_Query(GSQ_DAYSMS_NORMAL, sQueryTemp);
        ls_TxQry := En_Coding(Format(sQueryTemp, [sWhere, sDate1, sDate2, sWhere, sDate1, sDate2]));
      end;
      ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'DAYR0002', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

      RequestData(ls_TxLoad);
    except
    end;
  finally
    pnlSmsStatus.Visible := False;
  end;
end;

end.

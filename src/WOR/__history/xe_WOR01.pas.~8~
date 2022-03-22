unit xe_WOR01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,  MSXML2_TLB,
  system.Math, system.StrUtils, xe_lib, jpeg, DateUtils, IdSSLOpenSSL,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, xe_GNL,
  cxControls, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxLabel, Vcl.ExtCtrls, IdGlobal, IdBaseComponent, IdComponent, IniFiles,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP,
  Vcl.ExtDlgs, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.OleCtrls, SHDocVw,
  cxMemo, cxCheckBox, Vcl.StdCtrls, cxDropDownEdit, cxCalendar, cxRadioGroup,
  cxTextEdit, cxMaskEdit, cxGroupBox, cxButtons, IdHTTP, WebImage, Vcl.Buttons,
	AdvPanel, AdvGlowButton, dxSkinsCore, ComObj,
  dxSkinscxPCPainter, cxImage, dxGDIPlusClasses, dxBarBuiltInMenu, cxPC,
  cxListBox, dxDateRanges, cxCustomListBox, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
	TWORKER = record
		NAME, WSABUN, SABUN, SHARPNO, USEHP, USEMC, USESHARE, STATE: TstringList;
	end;
	TCallINS = record
		InsGubun, InsCD, InsNum, InsADate, InsS, InsE, InsStatus : TstringList;
	end;

  TFrm_WOR01 = class(TForm)
    OpenPictureDialog1: TOpenPictureDialog;
    IdFTP1: TIdFTP;
    cxGrid1: TcxGrid;
    cxgBrSet: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
		cxgBrSetColumn1: TcxGridDBColumn;
    cxgBrSetColumn2: TcxGridDBColumn;
    cxgBrSetColumn3: TcxGridDBColumn;
    cxgBrSetColumn4: TcxGridDBColumn;
    cxgBrSetColumn5: TcxGridDBColumn;
    wb1: TWebBrowser;
    Timer1: TTimer;
    pnlTitle: TPanel;
    BtnClose: TcxButton;
    cxbModify: TcxButton;
    cxbNewUser: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    cxLabel17: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel12: TcxLabel;
    cxbWkImage: TcxButton;
    cboBranch: TcxComboBox;
    cxedSabun: TcxTextEdit;
    cxedName: TcxTextEdit;
    cxedSoNum: TcxTextEdit;
    Panel1: TPanel;
    cxrdMan: TcxRadioButton;
    cxrdWoman: TcxRadioButton;
    cxedDrvLic: TcxTextEdit;
    cxbBrNum: TcxButton;
    Panel3: TPanel;
    edtNameSabun: TcxTextEdit;
    btnLicCheck: TcxButton;
    edtRealName: TcxTextEdit;
    cxbSoNumCheck: TcxButton;
		cxAge: TcxLabel;
    cxLabel30: TcxLabel;
    cxdtLinsDate: TcxDateEdit;
    cxLabel24: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel6: TcxLabel;
		cxLabel9: TcxLabel;
		cxbWkHp: TcxButton;
    exedAddr1: TcxTextEdit;
    exedAddr2: TcxTextEdit;
    cxcbWkHp: TcxComboBox;
    edt_WkHp: TcxTextEdit;
    cxcbPhone: TcxComboBox;
    cxedPhone: TcxTextEdit;
    cxedTel: TcxTextEdit;
    cxbHpCheck: TcxButton;
    btnWorkerAddr: TcxButton;
		edtWorkerZipCode: TcxTextEdit;
    cxLabel26: TcxLabel;
		cbbLicType: TcxComboBox;
    cxcbWkHp_JoinCNT: TcxComboBox;
    cxcbWkShareNo: TcxComboBox;
    cxGroupBox2: TcxGroupBox;
    cxHdNo: TcxTextEdit;
    cxedWkSabun: TcxTextEdit;
    PnlMain: TPanel;
    PnlRight: TPanel;
    Shape39: TShape;
    pnl_HPCheck: TPanel;
    btn_AddHP: TcxButton;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    lb_S2: TcxLabel;
    lb_S3: TcxLabel;
    lb_Sabun2: TcxLabel;
    lb_Sabun3: TcxLabel;
    cxcbWkHp_JoinCNT2: TcxComboBox;
    cxcbWkShareNo2: TcxComboBox;
    cxbHpCheck2: TcxButton;
    btn_DelHP2: TcxButton;
    cxcbWkHp_JoinCNT3: TcxComboBox;
    cxcbWkShareNo3: TcxComboBox;
    cxbHpCheck3: TcxButton;
    btn_DelHP3: TcxButton;
    cxcbWkHp2: TcxComboBox;
    edt_WkHp2: TcxTextEdit;
    cxcbWkHp3: TcxComboBox;
    edt_WkHp3: TcxTextEdit;
    PnlGB1Btm: TPanel;
    cxLabel33: TcxLabel;
    cb_Shuttle_Status: TcxComboBox;
    cxLabel34: TcxLabel;
    cb_Shuttle_Charge: TcxComboBox;
    cxLabel35: TcxLabel;
    edt_TagID: TcxTextEdit;
    IdHTTP1: TIdHTTP;
    cxiWkImg: TWebImage;
    cxLblActive: TLabel;
    cxedSoNum1: TcxTextEdit;
    Label2: TLabel;
    APnlViewMemo: TAdvPanel;
    cxLabel36: TcxLabel;
    cxMemo1: TcxMemo;
    btnPnlViewClose: TcxButton;
    cxcbWkmc: TcxComboBox;
    cxcbWkmc2: TcxComboBox;
    cxcbWkmc3: TcxComboBox;
    cxLabel37: TcxLabel;
    lb_S4: TcxLabel;
    lb_Sabun4: TcxLabel;
    cxcbWkHp_JoinCNT4: TcxComboBox;
    cxcbWkShareNo4: TcxComboBox;
    cxbHpCheck4: TcxButton;
    btn_DelHP4: TcxButton;
    cxcbWkHp4: TcxComboBox;
    edt_WkHp4: TcxTextEdit;
    cxcbWkmc4: TcxComboBox;
    pnlCall2: TPanel;
    Shape48: TShape;
    Shape49: TShape;
    cxcbWkShareNo9: TcxComboBox;
    cxRBCall2N: TcxRadioButton;
    cxRBCall2Y: TcxRadioButton;
    cxLabel39: TcxLabel;
    lb_Sabun9: TcxLabel;
    cxLabel29: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    pnlWKInsranceApply: TPanel;
    grpWKInsranceApply: TcxGroupBox;
    btnWKInsranceApplyOK: TcxButton;
    btnWKInsranceApplyClose: TcxButton;
    cxLabel48: TcxLabel;
    cxdCallInsStartDate: TcxDateEdit;
    cxLabel49: TcxLabel;
    cxLabel50: TcxLabel;
    cxLabel51: TcxLabel;
    cxLabel52: TcxLabel;
    chkInsStartDate: TcxCheckBox;
    Shape42: TShape;
    cxLabel5: TcxLabel;
    cxLblLicSt: TcxLabel;
    cboNavi: TcxComboBox;
    img_NoImage: TcxImage;
    btnLicView: TcxButton;
    pnl_LicenseView: TPanel;
    cxiWkLicenseImg: TWebImage;
    Pnl_Title: TPanel;
    cxButton4: TcxButton;
    cxBtnFixPos: TAdvGlowButton;
    cxBtnOldSelect: TcxButton;
    cxBtnColorSet: TcxButton;
    cbStatesView: TcxComboBox;
    btn_LicenseClose: TcxButton;
    edt_Index4: TEdit;
    edt_Index3: TEdit;
    edt_Index2: TEdit;
    edt_Index: TEdit;
    cxLabel21: TcxLabel;
    cxedWkBkName: TcxTextEdit;
    cxedWkBkName2: TcxTextEdit;
    cxLabel18: TcxLabel;
    cxLabel20: TcxLabel;
    cxdtReg: TcxDateEdit;
    cxdtEnd: TcxDateEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    기타: TcxTabSheet;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    pnl_Ins: TPanel;
    Shape52: TShape;
    cxbWKInsranceApply: TcxButton;
    cxLabel41: TcxLabel;
    lb_WKINS_MER_STATUS: TcxLabel;
    cxLabel46: TcxLabel;
    dt_CallInsStartDate: TcxDateEdit;
    cxLabel47: TcxLabel;
    chkCallDrive: TcxCheckBox;
    chkDrive: TcxCheckBox;
		pnl_TakIns: TPanel;
    cxlbl4: TcxLabel;
    chkTakHwak: TcxCheckBox;
    cxLabel22: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel2: TcxLabel;
    cxcbAttendArea: TcxComboBox;
    cxcbComtype: TcxComboBox;
    cxedFreeCall: TcxTextEdit;
    cxLabel25: TcxLabel;
    cbbPriceBlock: TcxComboBox;
    cbbOrderView: TcxComboBox;
    lbl1: TcxLabel;
    cbbDistanceType: TcxComboBox;
    Shape35: TShape;
    cxlbl1: TcxLabel;
    cxtPlusState: TcxTextEdit;
    btnPlusJoin: TcxButton;
    cxlbl2: TcxLabel;
    cxtPlusPenalty: TcxTextEdit;
    cxtPlusScore: TcxTextEdit;
    cxlbl3: TcxLabel;
    btnPlusCalc: TcxButton;
    btnPlusPView: TcxButton;
    btnPlusLogView: TcxButton;
    btnPlusRight: TcxButton;
    cxtP1: TcxTextEdit;
    cxtP2: TcxTextEdit;
    cxtP3: TcxTextEdit;
    cxtP4: TcxTextEdit;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    BtnViewMemo: TAdvGlowButton;
    chkTaksong: TcxCheckBox;
    btnCallHelp: TcxButton;
    cxLabel8: TcxLabel;
    cxLabel40: TcxLabel;
    cxLabel53: TcxLabel;
    cxLabel43: TcxLabel;
    btn_InSureCopyTak: TcxButton;
    cxedInsNum: TcxTextEdit;
    cxcbInsCorper: TcxComboBox;
    cxdtInsStart: TcxDateEdit;
    cxdtInsEnd: TcxDateEdit;
    cxedMemo: TcxTextEdit;
    cxmmMemo: TcxMemo;
    lb_WKINS_KB_STATUS: TcxLabel;
    pnl1: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    lbl3: TcxLabel;
    lbl4: TcxLabel;
    lbl5: TcxLabel;
    lbl6: TcxLabel;
    lbl7: TcxLabel;
    lbl8: TcxLabel;
    lbl9: TcxLabel;
    lbl10: TcxLabel;
    lbl11: TcxLabel;
    lbl12: TcxLabel;
    lbl13: TcxLabel;
    lbl2: TcxLabel;
    Label12: TcxLabel;
    Label14: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Shape38: TShape;
    pnl_DBIns: TPanel;
    cxLabel3: TcxLabel;
    Shape17: TShape;
    lb_INS_Status: TcxLabel;
    cxLabel28: TcxLabel;
    chkOnlyAuto: TcxCheckBox;
    lbSearchBranch1: TcxLabel;
    edt_BrNm: TcxTextEdit;
    lst_BRList1: TcxListBox;
    lb_Shuttle4: TcxLabel;
    cxTabSheet3: TcxTabSheet;
    Panel6: TPanel;
    Shape58: TShape;
    cxLabel38: TcxLabel;
    chkTakAlly: TcxCheckBox;
    pnl_TakIns_Month: TPanel;
    cxLabel27: TcxLabel;
    cb_TakInsCorper: TcxComboBox;
    cxLabel42: TcxLabel;
    edtTakInsNum: TcxTextEdit;
    cxLabel45: TcxLabel;
    cxdTaktInsEnd: TcxDateEdit;
    cxLabel44: TcxLabel;
    cxdTaktInsStart: TcxDateEdit;
    pnl_TakIns_TakCall: TPanel;
    Shape60: TShape;
    cxLabel54: TcxLabel;
    cxLabel55: TcxLabel;
    dt_TakCallInsStartDate: TcxDateEdit;
    lb_TakINS_MER_STATUS: TcxLabel;
    cxbTakInsranceApply: TcxButton;
    chkTakCall: TcxCheckBox;
    cxTabSheet4: TcxTabSheet;
    pnl_WOR05: TPanel;
    Panel8: TPanel;
    Shape18: TShape;
    cxLabel11: TcxLabel;
    cb_Wor05List: TcxComboBox;
    cxLabel59: TcxLabel;
    cxLabel58: TcxLabel;
    cb_Wor23List: TcxComboBox;
    cxLabel10: TcxLabel;
    Shape62: TShape;
    lb_Event_202010: TcxLabel;
    cxPageControl2: TcxPageControl;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxgStateList: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    btnStateList: TcxButton;
    cxBrNo: TcxTextEdit;
    chkKidiDrive: TcxCheckBox;
    btn_WKKidiApply: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel4: TcxLabel;
    lbKidiDrive: TcxLabel;
    lb_WKINS_Kidi_STATUS: TcxLabel;
    cxLabel56: TcxLabel;
    btn_WKKidiSch: TcxButton;
    btn_WKKidiSMS: TcxButton;
    btn_WKKidiSync: TcxButton;
    cxLabel60: TcxLabel;
    cxLabel57: TcxLabel;
    lb_AgDate: TcxLabel;
    chk_JON01SelfCard: TcxCheckBox;
    edtPhone: TcxTextEdit;
    deWorkStart: TcxDateEdit;
    cxLabel61: TcxLabel;
    cbWorkStart: TcxCheckBox;
    Shape36: TShape;
		procedure FormCreate(Sender: TObject);
    procedure cxbSoNumCheckClick(Sender: TObject);
    procedure cxedSoNumKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxbWkImageClick(Sender: TObject);
    procedure cboBranchClick(Sender: TObject);
    procedure cxbNewUserClick(Sender: TObject);
    procedure cxbModifyClick(Sender: TObject);
    procedure cxbHpCheckClick(Sender: TObject);
    procedure cxbBrNumClick(Sender: TObject);
    procedure cxcbWkHpClick(Sender: TObject);
    procedure edt_WkHpKeyDown(Sender: TObject; var Key: Word;	Shift: TShiftState);
    procedure cxedSabunKeyPress(Sender: TObject; var Key: Char);
    procedure cxedSabunKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_WkHpExit(Sender: TObject);
    procedure cxbWkHpClick(Sender: TObject);
    procedure cxedSabunExit(Sender: TObject);
    procedure btnWorkerAddrClick(Sender: TObject);
    procedure btnLicCheckClick(Sender: TObject);
    procedure edtNameSabunKeyPress(Sender: TObject; var Key: Char);
    procedure btnPlusJoinClick(Sender: TObject);
    procedure btnPlusCalcClick(Sender: TObject);
    procedure btnPlusRightClick(Sender: TObject);
    procedure btnPlusLogViewClick(Sender: TObject);
    procedure btnPlusPViewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure chkTaksongClick(Sender: TObject);
		procedure cxdtInsEndExit(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxdtLinsDateExit(Sender: TObject);
    procedure cxcbWkHp_JoinCNTClick(Sender: TObject);
    procedure cxcbWkHp_JoinCNTPropertiesChange(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
		procedure edt_WkHpKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
		procedure btn_AddHPClick(Sender: TObject);
    procedure btn_DelHP2Click(Sender: TObject);
    procedure btn_DelHP3Click(Sender: TObject);
    procedure cxcbWkHp_JoinCNT2PropertiesChange(Sender: TObject);
    procedure cxcbWkHp_JoinCNT3PropertiesChange(Sender: TObject);
    procedure edt_WkHp2Exit(Sender: TObject);
		procedure edt_WkHp2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_WkHp3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_WkHp3Exit(Sender: TObject);
    procedure cxcbWkHp2Click(Sender: TObject);
    procedure cxcbWkHp3Click(Sender: TObject);
    procedure edt_WkHp2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
		procedure edt_WkHp3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
		procedure cb_Shuttle_ChargePropertiesChange(Sender: TObject);
		procedure cxedSoNumKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
		procedure edtRealNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
		procedure cxedSoNum1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
		procedure BtnViewMemoClick(Sender: TObject);
		procedure btnPnlViewCloseClick(Sender: TObject);
		procedure FormHide(Sender: TObject);
		procedure cxcbWkHp4Click(Sender: TObject);
		procedure edt_WkHp4Exit(Sender: TObject);
		procedure edt_WkHp4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
		procedure edt_WkHp4KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxcbWkHp_JoinCNT4PropertiesChange(Sender: TObject);
    procedure btn_DelHP4Click(Sender: TObject);
		procedure cxRBCall2NClick(Sender: TObject);
		procedure cxbWKInsranceApplyClick(Sender: TObject);
    procedure btnCallHelpClick(Sender: TObject);
    procedure Shape50ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
		procedure btnWKInsranceApplyOKClick(Sender: TObject);
    procedure btnWKInsranceApplyCloseClick(Sender: TObject);
    procedure chkInsStartDateKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxdCallInsStartDateKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxedTelMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cxcbWkmcKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxcbWkmcMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cxedNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxedNameKeyPress(Sender: TObject; var Key: Char);
    procedure cxedNameKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_WkHpMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnLicViewClick(Sender: TObject);
    procedure btn_LicenseCloseClick(Sender: TObject);
    procedure Pnl_TitleMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cxedTelKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxedMemoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxmmMemoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbbLicTypePropertiesChange(Sender: TObject);
    procedure chkInsStartDatePropertiesChange(Sender: TObject);
		procedure chkDrivePropertiesChange(Sender: TObject);
		procedure chkTaksongPropertiesChange(Sender: TObject);
    procedure btn_InSureCopyTakClick(Sender: TObject);
    procedure grpWKInsranceApplyMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure chkCallDrivePropertiesChange(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure cxcbInsCorperPropertiesChange(Sender: TObject);
    procedure cboBranchPropertiesChange(Sender: TObject);
    procedure lbSearchBranch1Click(Sender: TObject);
    procedure lst_BRList1DblClick(Sender: TObject);
    procedure lst_BRList1Exit(Sender: TObject);
    procedure lst_BRList1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_BrNmMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
		procedure edt_BrNmKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_BrNmFocusChanged(Sender: TObject);
    procedure edt_BrNmExit(Sender: TObject);
    procedure edt_BrNmEnter(Sender: TObject);
    procedure edt_BrNmPropertiesChange(Sender: TObject);
    procedure edt_BrNmKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
		procedure chkTakAllyPropertiesChange(Sender: TObject);
    procedure chkTakCallPropertiesChange(Sender: TObject);
    procedure lb_Event_202010Click(Sender: TObject);
    procedure btnStateListClick(Sender: TObject);
    procedure chkKidiDrivePropertiesChange(Sender: TObject);
    procedure btn_WKKidiApplyClick(Sender: TObject);
    procedure btn_WKKidiSMSClick(Sender: TObject);
    procedure btn_WKKidiSchClick(Sender: TObject);
    procedure btn_WKKidiSyncClick(Sender: TObject);
    procedure cbWorkStartPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    slNaviHpCd, slInsCode, slTakInsCode, slCmdCode: TStringList;
		bFileUpload, bModify: Boolean;
		join_Cnt : integer;
		iShuttle_Charge : integer;

    FLicStCd: string;
		FLicenseCode: TStringList;
		gsOrgHp : string;

		iUse_Chk, iUse_Add_Cnt : integer; //사용체크 번호
		iChk_Sabun, iFlag : integer; //사번체크 버튼번호
		FWORKER : TWORKER;
		iShareGroupIDX : integer;

    igW01Top, igW01Left : Integer;

    m_ImgBff : array [0..307199] of AnsiChar; // 이미지를 담을 버퍼, 최대 300k
		m_ImgSize : Integer;

		slBHCode, slBHName : TStringList;
		slC029Seq, slC029Memo : TStringList;
		slMCashSeq, slMCashMemo : TStringList;
		glCallInsInfo : TCallINS;

		sPTmp : String;
		ipnl_WOR05_Margin : integer;  //일비차감 항목 위치

		searchBRlist : TStringList; //지사검색
		gbKidiInfoChange : Boolean; //개인보험 사용 시 주민번호, 단말기번호 변경이면 True
		procedure GetLicenseSysCode;
		// 사용자 리스트 수정(iType : 0 : 추가, 1 : 수정, 2 : 삭제(정지))
		procedure proc_brchange(sBrNo: string);
		function func_WkUpdate(sWkSabun: string): Boolean;
		procedure proc_save_image(sFileName: string);

		procedure RequestData(AData: string);
		procedure ResponseDataBase(ADataStr: WideString);
		procedure ResponseDataHeadInfo(AXmlStr: WideString);
		procedure RequestSendCommand(AGubun, AParams: string);
		procedure proc_SelectSettlement(ASABUN: string);
		// 사용자 저장(iType : 0 : 추가, 1 : 수정, 2 : 삭제(정지))
		procedure proc_Worker_Save_Cheonan(iType: Integer);
		procedure proc_Worker_Save(iType: Integer);
		procedure proc_Worker_SaveO(iType: Integer);
		procedure proc_Worker_SaveO_Jeju(iType: Integer);
		function fSetImage(sWkSabun : String): Boolean;
		function func_GETHOLIDAY(AParam:string):Boolean; //공휴일 체크 YYYYMMDD 1 - 공휴일, 0 - 공휴일이 아님
		function func_CallInsureShareNo(AShareNo:string):Boolean; //True : 제한연합, False : 제한아님
		procedure proc_BHSet(iType: Integer);
		procedure proc_C029Set;
		procedure proc_MCashSet;
		function func_C029INSERT(ASabun:string) : Boolean;
		function func_BrNameList_Search:Boolean;
		function Proc_BRNOSearch: string;
		function Proc_HDNOSearch: string;
		procedure proc_EVENT_TARGET_CHECK(AJumin : string);
	public
		{ Public declarations }
		FHdNoList: TStringList;
		FBrNoList: TStringList;
		FTakList: TStringList;      //탁송가능지사
		FShuttel4: TStringList;      //#4
		modifyChk, fChk : Boolean;
		Gs_HdNm : string;
		Black_chk : Boolean;
		iCorper : integer; //수정 시 불러오는 보험인덱스
		gWOR19Mode : string;
		gUse_Cnt : integer; //#추가
		WorA1Tag : Integer;

		gKey50 : Boolean;   //퇴직자 수정창 오픈시 배열미사용 하기 위한 구분값
		pWOR01Dock : TUNDOCKMNG;
		procedure proc_sysRead;
		procedure proc_init;
		procedure proc_Finit;
		// 전문 응답 처리
		procedure proc_recieve(ls_rxxml: Widestring);
		procedure proc_recieve_S(ls_rxxml: Widestring);     //수도권
		procedure proc_recieve_O(ls_rxxml: Widestring);     //지방권
		procedure proc_recieve_O_Jeju(ls_rxxml: Widestring);     //지방권
		procedure proc_recieve_C(ls_rxxml: Widestring);     //천안
		procedure proc_CheckBlacklist(sTemp: string; iType: Integer = 0);
		procedure proc_wk_Search(sWkSabun: string);
		procedure proc_wk_Modify_init(sWkSabun: string);
		procedure RequestDataHeadInfo(AHdNo: string);
		procedure proc_CheckRegJumin(sTemp: string);
    procedure SetBranch;
  end;

var
  Frm_WOR01: TFrm_WOR01;
  Org_BR_NO, Org_HD_NO : string;

implementation

{$R *.dfm}

uses xe_Dm, xe_Func, xe_gnl2, xe_gnl3, xe_packet, xe_xml, xe_Query,
  xe_Msg, xe_WOR, Main, xe_WOR02, xe_Flash, xe_WOR13, xe_JON33, xe_CMP011,
  xe_JON057;

procedure TFrm_WOR01.FormCreate(Sender: TObject);
var
  Save: LongInt; // 폼타이틀 제거용.
  EnvFile: TIniFile;
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
        SetWindowLong(Handle, gwl_Style, Save and (not (ws_Caption)) or ws_border);
    end;
    Height := Height - getSystemMetrics(sm_cyCaption);
    Refresh;
  end;

  cxLabel60.Caption := '조회결과는 보험사연계로'+CRLF+'다소 지연될 수 있습니다';

	EnvFile := TIniFile.Create(ENVPATHFILE);
  try
		Self.Left  := EnvFile.ReadInteger('WinPos', 'Wor01Left', 0);
		Self.Top   := EnvFile.ReadInteger('WinPos', 'Wor01Top', 0);

		igW01Top  := Self.Top;
		igW01Left := Self.Left;

    if Self.Left < 0 then Self.Left := 0;
		if Self.Top < 0 then Self.Top := 0;

		ipnl_WOR05_Margin := 0;
	finally
    EnvFile.Free;
  end;
  //붕붕대리 A2265 신규기사 등록 제한. 20190928 KHS 신성현차장님 요청
	if (GS_PRJ_AREA = 'O') and (GT_USERIF.HD = 'A2265') then cxbNewUser.Enabled := False;

  if (IsAngelPlusHead(GS_PRJ_AREA = 'S', GT_UserIF.HD)) then
  begin
    edtPhone.Left := cxcbPhone.Left;
    edtPhone.Top  := cxcbPhone.Top;
    cxcbPhone.Visible := False;
    edtPhone.Visible := True;
  end else
  begin
    cxcbPhone.Visible := True;
    edtPhone.Visible := False;
  end;

	proc_Finit;
end;

procedure TFrm_WOR01.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_WOR01.FormDestroy(Sender: TObject);
begin
  frm_WOR01 := Nil;
end;

procedure TFrm_WOR01.FormHide(Sender: TObject);
begin
  igW01Top  := Self.Top;
  igW01Left := Self.Left;
end;

procedure TFrm_WOR01.proc_init;
var
	iTmp, iRow, iDx: Integer;
	sTmp : string;
begin
	if (GS_PRJ_AREA = 'O') then lb_Event_202010.visible := False
	else 
	begin
		lb_Event_202010.visible := True;
		lb_Event_202010.Enabled := True;
	end;

	//현장카드 옵션 현장카드 연합 추가 정회귀팀장 요청 KHS 20210224
	if GT_SPOT_CARD_CFG_YN then
	begin
		chk_JON01SelfCard.Visible := True;
		lb_Event_202010.height := 35;
	end else
	begin
		chk_JON01SelfCard.Visible := False;
		lb_Event_202010.height := 56;
	end;
	chk_JON01SelfCard.Checked := False;

	img_NoImage.Visible := False;

	APnlViewMemo.Visible := False;
	cxMemo1.Clear;
	GS_NICE_CHK := False;

  sTmp := FormatdateTime('mm', Now);
  if Copy(sTmp,1,1) = '0' then sTmp := Copy(sTmp,2,1);
  lb_Event_202010.Caption := sTmp + '월 이벤트조회';

  if Not pWOR01Dock.bUnDock then pWOR01Dock.GUBUN := GT_SEL_BRNO.GUBUN;
  if Not pWOR01Dock.bUnDock then pWOR01Dock.HdNo  := GT_SEL_BRNO.HdNo;
  if Not pWOR01Dock.bUnDock then pWOR01Dock.BrNo  := GT_SEL_BRNO.BrNo;
  if Not pWOR01Dock.bUnDock then pWOR01Dock.BrName:= GT_SEL_BRNO.BrName;

	edt_Index.text := '';
	edt_Index2.text := '';
	edt_Index3.text := '';
	iDx := -1;
	if pWOR01Dock.GUBUN <> '1' then
  begin
		iDx := IfThen(GT_USERIF.LV = '60', 0, FBrNoList.IndexOf(GT_USERIF.BR));
	end else
	if pWOR01Dock.GUBUN = '1' then
	begin
		iDx := FBrNoList.IndexOf(pWOR01Dock.BrNo);
  end;

	if Cheonan_ShareGroup(GS_PRJ_AREA, GT_USERIF.ShareNo) then  
	begin
		cxcbWkShareNo.Properties.Items.Clear;
		cxcbWkShareNo.Properties.Items.Add('콜수주연합선택');
		cxcbWkShareNo.Properties.Items.Add('G70.하나연합');
    cxcbWkShareNo.Properties.Items.Add('G71.우리연합');
		cxcbWkShareNo.Properties.Items.Add('G72.수도권');
    cxcbWkShareNo.Properties.Items.Add('G73.수도권2');
		cxcbWkShareNo.ItemIndex := 0;

		btn_AddHP.Visible := True;
		//콜당보험
//		pnl_insure.Visible := False;
//		cxButton3.Visible := False;
	end else
	begin
		cxcbWkShareNo.Properties.Items.Clear;
    cxcbWkShareNo.Properties.Items.Add('콜수주연합선택');
    cxcbWkShareNo.Properties.Items.Add('G70.공유연합01');
    cxcbWkShareNo.Properties.Items.Add('G71.공유연합02');
    cxcbWkShareNo.Properties.Items.Add('G72.공유연합03');
    cxcbWkShareNo.Properties.Items.Add('G73.공유연합04');
    cxcbWkShareNo.ItemIndex := 0;

		btn_AddHP.Visible := False;
	end;

	cxcbWkShareNo2.Properties.Items.Clear;
	cxcbWkShareNo2.Properties.Items := cxcbWkShareNo.Properties.Items;

  cxcbWkShareNo3.Properties.Items.Clear;
	cxcbWkShareNo3.Properties.Items := cxcbWkShareNo.Properties.Items;

//	SHUTTLE_USE := '';
	if SHUTTLE_USE = 'y' then
	begin
		Self.Height := 530;//528;//505;//490;
		PnlGB1Btm.Height := 138;//138;//164;//152;
		ipnl_WOR05_Margin := 0;

		cxLabel33        .visible := True;
		cb_Shuttle_Status.visible := True;

   	cxLabel34        .visible := True;
		cb_Shuttle_Charge.visible := True;

		cxLabel35.visible := True;
		edt_TagID.visible := True;
	end else
	begin
		Self.Height := 500;//480;//455;//440;
		PnlGB1Btm.Height := 108;//90;//114;//102;
//		ipnl_WOR05_Margin := 45; //셔틀미사용시 기타정보 위치 지정

		cxLabel33        .visible := False;
		cb_Shuttle_Status.visible := False;

		cxLabel34        .visible := False;
		cb_Shuttle_Charge.visible := False;

		cxLabel35.visible := False;
		edt_TagID.visible := False;
	end;

  if GS_CALL2_Use = 'y' then
  begin
//		pnlCall2.Visible := True;

//    cxbWkHp.Left := 331;
//    cxbWkHp.Width := 114;
	end else
	begin
		pnlCall2.Visible := False;

//    cxbWkHp.Left := 7;
//    cxbWkHp.Width := 438;
	end;

	chkTakAlly.checked := False;
	cxPageControl1.ActivePageIndex := 0;

	cxbModify.Caption := '신규저장';
	cboBranch.ItemIndex := IfThen(iDx = -1, 0, iDx);
	cboBranch.Enabled := (GT_USERIF.LV = '60') or ((GT_USERIF.LV = '10') and (IsPassedManagementWk(pWOR01Dock.BrNo)));
	cboNavi.ItemIndex := 0;

	edt_BrNm.Enabled := True;
	edt_BrNm.Text := '';
	lbSearchBranch1.Enabled := True;
	lst_BRList1.visible := False;
	lst_BRList1.Clear;

	cxedSabun.Text := '';
	edtNameSabun.Clear;
	edtNameSabun.Hint := '';
	cxedName.Text := '';
	edtNameSabun.Clear;
	cxedSoNum.Text := '';
	cxedSoNum1.Text := '';
	cxedSoNum.Hint := '';
	cxedSoNum1.Hint := '';
	cxrdMan.Checked := True;
  exedAddr1.Text := '';
	exedAddr2.Text := '';
	cxcbWkHp.ItemIndex := 0;
  cxcbWkmc.ItemIndex := 0;
  cxcbWkmc2.ItemIndex := 0;
  cxcbWkmc3.ItemIndex := 0;

  cxRBCall2Y.Tag := 0;
  cxRBCall2N.Checked := True;
	cxRBCall2Y.Enabled := False;

	cxcbWkHp_JoinCNT.Enabled := False;
	cxcbWkHp_JoinCNT.tag := 0;
	cxcbWkHp_JoinCNT2.Enabled := False;
	cxcbWkHp_JoinCNT.tag := 2;
	cxcbWkHp_JoinCNT3.Enabled := False;
	cxcbWkHp_JoinCNT.tag := 3;
	cxcbWkHp_JoinCNT4.Enabled := False;
	cxcbWkHp_JoinCNT.tag := 4;
	cxcbWkShareNo.Enabled := False;
	cxcbWkShareNo.Tag := 0;
	cxcbWkShareNo2.Enabled := False;
	cxcbWkShareNo2.Tag := 2;
	cxcbWkShareNo3.Enabled := False;
	cxcbWkShareNo3.Tag := 3;
	cxcbWkHp_JoinCNT.ItemIndex := 0;
	cxcbWkHp_JoinCNT2.ItemIndex := 1;
	cxcbWkHp_JoinCNT3.ItemIndex := 2;
	cxcbWkHp_JoinCNT4.ItemIndex := 3;
	edt_WkHp.Text := '';
	edt_WkHp.Hint := edt_WkHp.Text;
	cxcbWkHp_JoinCNT.Hint := IntToStr(cxcbWkHp_JoinCNT.ItemIndex);
	cxcbPhone.ItemIndex := 0;
  edtPhone.Text := '';
  cxedPhone.Text := '';
  cxedTel.Text := '';
	cxdCallInsStartDate.Text := '';
	chkInsStartDate.checked := False;
//  cxdtInsEnd.Text := FormatDateTime('yyyy-mm-dd', now);
	cxdtLinsDate.Text := '';

	lb_INS_Status.Caption :=	'';

  cbWorkStart.Checked := False;
  deWorkStart.Enabled := False;
  deWorkStart.Text := '';

	//////////////콜당보험////////////////
	chkCallDrive.Hint := '';
	chkCallDrive.Enabled := False;
	cxbWKInsranceApply.Enabled := False;
//	dt_CallInsStartDate.Enabled := cxbWKInsranceApply.Enabled;
	dt_CallInsStartDate.Text := '';

	//////////////개인보험(보험개발원)////////////////
	gsOrgHp := '';
	gbKidiInfoChange := False;
	chkKidiDrive.Hint := '';
	chkKidiDrive.Enabled := False;
	lbKidiDrive.Enabled := False;
	lb_AgDate.Caption :=	'';
	lb_WKINS_Kidi_STATUS.Caption :=	'';

	btn_WKKidiApply.Enabled := False;
	btn_WKKidiSch .Enabled  := False;	
	btn_WKKidiSync.Enabled  := False;	
	btn_WKKidiSMS.Enabled   := False;
	
	//////////////일반보험////////////////
	chkDrive.Checked := True;
	cxcbInsCorper.ItemIndex := 0;
	cxdtInsStart.Text := '';
	cxdtInsEnd.Text := '';
	cxedInsNum.Text := '';
	cxedInsNum.Hint := '';
	lb_WKINS_MER_STATUS.Caption := '';
	lb_WKINS_KB_STATUS.Caption := '';
	cxdtInsStart.Text := '';
	cxdtInsEnd.Text := '';
	
	//////////////월당보험/////////////////
	pnl_DBIns.Hint := '';
	pnl_DBIns.Visible := False;
	cxcbInsCorper.enabled := True;
	cxedInsNum.enabled := True;
	cxdtInsStart.enabled := True;
	cxdtInsEnd.enabled := True;

 	//////////////탁송콜당보험////////////////
	chkTakCall.Hint := '';
	chkTakCall.Enabled := False;
	chkTakCall.Checked := False;
	cxbTakInsranceApply.Enabled := False;
	lb_TakINS_MER_STATUS.Caption := '';
	dt_TakCallInsStartDate.Text := '';

	//////////////탁송보험////////////////
	chkTaksong.Checked := False;
	cxlbl4.Visible := True;
	cb_TakInsCorper.ItemIndex := 0;
	edtTakInsNum.Text:= '';
	edtTakInsNum.enabled := False;
	chkTakHwak.Visible := False;
	chkTakHwak.Checked := False;
	cxdTaktInsStart.Text := '';
	cxdTaktInsEnd.Text := '';

	cxedDrvLic.Text := '';
	cxedMemo.Text := '';
  cxmmMemo.Text := '';
	cxdtReg.Text := FormatDateTime('yyyy-mm-dd', now);
	cxdtEnd.Text := '';
  cxedWkSabun.Text := '';
	cxedWkBkName.Text := '';
	cxedWkBkName2.Text := '';
  bFileUpload := False;
  bModify := False;
	cbbOrderView.ItemIndex := 1;
	cbbDistanceType.ItemIndex := 0;
  cxedFreeCall.Text := '';
	cxbModify.Caption := '신규저장';
	cxbWKInsranceApply.Enabled := False;
//	dt_CallInsStartDate.Enabled := cxbWKInsranceApply.Enabled;
	cxbWKInsranceApply.Tag := 0;
	cxbBrNum.Tag := 0;
	cxbBrNum.Enabled := True;
	cxbSoNumCheck.Tag := 0;
  cxbSoNumCheck.Enabled := True;
	cxbHpCheck.Enabled := True;
	cxbHpCheck2.Enabled := True;
	cxbHpCheck3.Enabled := True;
	pnlTitle.Caption := '   기사 신규등록';
  cxbWkHp.Tag := 0;
	cxbWkHp.Enabled := False;
	cxiWkImg.WebPicture := Nil;

	cbbPriceBlock.Text := '';
	cbbPriceBlock.Enabled := True;
	if (GS_PRJ_AREA = 'O') and ((GT_USERIF.ShareNo = 'G33') or (GT_USERIF.ShareNo = 'G63') or (GT_USERIF.ShareNo = 'G20') or
															(GT_USERIF.ShareNo = 'G45') or (GT_USERIF.ShareNo = 'G73')) then
	begin
		cbbPriceBlock.Enabled := False; //경남연합만 비활성화 20171130 KHS 정회귀팀장 요청
	end;

//  cbbPriceBlock.Enabled := False; // 최도순(신성현) 요청으로 비활성화처리
	cxAge.caption := '';
  // 지방권의 경우 무료운행 건수 사용안함
  if GS_PRJ_AREA = 'O' then
  begin
    cxLabel2.Visible := False;
		cxedFreeCall.Visible := False;
	end;

  FLicStCd := '00';
  edtRealName.Text := '';
  edtRealName.Enabled := True;
//  cxedSoNum.Enabled := True;
  cxedDrvLic.Enabled := True;

  // 플러스콜 신규 기능 추가. 2010.09.30
  cxtPlusState.Text := '';
  cxtPlusPenalty.text := '';
  cxtPlusScore.Text := '';
  cxtP1.Text := ''; cxtP2.Text := '';cxtP3.Text := '';cxtP4.Text := '';
	btnPlusJoin.Enabled := False;
	btnPlusCalc.Enabled := False;
	btnPlusPView.Enabled := False;
	btnPlusLogView.Enabled := False;

	if cxBrNo.Text <> '' then
	begin
		sTmp := GetPlusCallYN(cxBrNo.Text);
		if copy(sTmp,2,4) = 'yyyy' then
		begin
			btnPlusRight.Enabled := True;
			btnPlusPView.Enabled := True;
		end else
		begin
			btnPlusRight.Enabled := False;
			btnPlusPView.Enabled := False;
		end;
	end;
	//btnPlusRight.Enabled := False;  // 법인기사로 사용하여 해제함. 2011-11-07

	chkOnlyAuto.Checked := False;
	cxlbl4.caption := '동의안함';
	cxlbl4.Style.font.style := [];
	cxlbl4.Style.font.color := clBlack;
	pnl1.Visible := False;

	proc_BHSet(2);

	iTmp := glCallInsInfo.InsGubun.IndexOf('t');
	if iTmp > -1 then
	begin
		iRow := slTakInsCode.IndexOf(glCallInsInfo.InsCD[iTmp]);
		if iRow <> -1 then
			cb_TakInsCorper.ItemIndex := iRow
		else
			cb_TakInsCorper.ItemIndex := 0;
		edtTakInsNum.Text := glCallInsInfo.InsNum[iTmp];
		cxdTaktInsStart.Text := glCallInsInfo.InsS[iTmp];
		cxdTaktInsEnd.Text := glCallInsInfo.InsE[iTmp];
		if chkTakHwak.Hint = 'y' then chkTakHwak.checked := True;
  end;

	modifyChk := False;
	iCorper := 0;
	cxLblLicSt.Caption := '';
	cxTextEdit1.text := '';
	join_Cnt := 0;
	gsOrgHp := '';
	if GT_USERIF.MultiWorkerCnt < 2 then
		btn_AddHP.Visible := False;
	btn_AddHP.Enabled := False;
	btn_DelHP2.Enabled := False;
	btn_DelHP3.Enabled := False;
	iUse_Chk := 0;
	gUse_Cnt := 0;
	iUse_Add_Cnt := 0;
	iChk_Sabun := 0;
	FWORKER.NAME.Clear;
	FWORKER.WSABUN.Clear;
	FWORKER.SABUN.Clear;
	FWORKER.SHARPNO.Clear;
	FWORKER.USEHP.Clear;
  FWORKER.USEMC.Clear;
	FWORKER.USESHARE.Clear;
	FWORKER.STATE.Clear;

	glCallInsInfo.InsGubun.Clear;
	glCallInsInfo.InsCD.Clear;
	glCallInsInfo.InsNum.Clear;
	glCallInsInfo.InsADate.Clear;
	glCallInsInfo.InsS.Clear;
	glCallInsInfo.InsE.Clear;
	glCallInsInfo.InsStatus.Clear;

  cxcbWkmc.Enabled := True;
	cxcbWkHp.Enabled := True;
	edt_WkHp.Enabled := True;
  cxcbWkmc2.Enabled := False;
	cxcbWkHp2.Enabled := False;
	edt_WkHp2.Enabled := False;
  cxcbWkmc3.Enabled := False;
	cxcbWkHp3.Enabled := False;
	edt_WkHp3.Enabled := False;
  cxcbWkmc4.Enabled := False;
	cxcbWkHp4.Enabled := False;
	edt_WkHp4.Enabled := False;

	cxcbWkHp_JoinCNT.Enabled := False;
	cxcbWkShareNo.Enabled := False;
	cxbHpCheck.Enabled := False;
	cxcbWkHp_JoinCNT2.Enabled := False;
	cxcbWkShareNo2.Enabled := False;
	cxbHpCheck2.Enabled := False;
	cxcbWkHp_JoinCNT3.Enabled := False;
	cxcbWkShareNo3.Enabled := False;
	cxbHpCheck3.Enabled := False;
	cxcbWkHp_JoinCNT4.Enabled := False;
	cxcbWkShareNo4.Enabled := False;
	cxbHpCheck4.Enabled := False;
	cxbModify.Enabled := True;

	edt_TagID.text := '';
	cb_Shuttle_Status.ItemIndex := 0;

  cb_Shuttle_Charge.Tag := 1;
	cb_Shuttle_Charge.ItemIndex := 0;
	cb_Shuttle_Charge.Tag := 0;

	pnl_WOR05.Visible := True;
//	cxGroupBox3.height := 175 - ipnl_WOR05_Margin;

//	if GS_PRJ_AREA = 'O' then
  //  제주연합대리 G29 탁송콜당보험 추가 20210914 KHS.정회귀팀장 요청
  // G36 / 목포(코리아) ㄴG58 / 콜라인 추가 20211229 KHS.정회귀팀장 요청
  if (GB_CallLine) then
  begin
    if (GS_PRJ_AREA = 'O') and ((GT_USERIF.ShareNo = 'G36') or (GT_USERIF.ShareNo = 'G58')) then
    begin
      chkTakCall.visible := True;
      pnl_TakIns_TakCall.visible := True;
      pnl_TakIns_Month.Top := 59;
    end else
    begin
  		chkTakCall.visible := False;
	  	pnl_TakIns_TakCall.visible := False;
		  pnl_TakIns_Month.Top := 41;
    end;
  end else  
	if (GS_PRJ_AREA = 'O') and (GT_USERIF.ShareNo <> 'G05') and (GT_USERIF.ShareNo <> 'G12') and (GT_USERIF.ShareNo <> 'G29') and 
     (GT_USERIF.ID <> 'sntest') then
	begin
		chkTakCall.visible := False;
		pnl_TakIns_TakCall.visible := False;
		pnl_TakIns_Month.Top := 41;
	end else
//	if GS_PRJ_AREA = 'S' then
	begin
		chkTakCall.visible := True;
		pnl_TakIns_TakCall.visible := True;
		pnl_TakIns_Month.Top := 59;
	end;

  cxPageControl2.ActivePageIndex := 0;
  cxgStateList.DataController.SetRecordCount(0);
end;

procedure TFrm_WOR01.proc_MCashSet;
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, i, j, iTmp : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	sTmp, sTmp2 : string;
begin
	SetDebugeWrite('TFrm_WOR01.proc_MCashSet');
	Try
		Param := Trim(cxHdNo.Text);

{		if TCK_USER_PER.AIC_DetailList <> '1' then  // 회사 : AI-OB 배차지연콜 상세내역
		begin
			ShowMessage('[AI-OB 배차지연콜 상세내역] 권한이 없습니다.'+#13#10+'관리자에게 문의(권한요청) 바랍니다.' +#13#10+#13#10
								+ '권한항목 >> 회사 : AI-OB 배차지연콜 상세내역');
			Exit;
		end;
}
		Screen.Cursor := crHourGlass;
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel06('GET_WK_MCASH_SCHEDULE_LIST', 'MCASH.GET_WK_MCASH_SCHEDULE_LIST', '100', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('M-Cash 스케줄 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				Screen.Cursor := crDefault;
				Exit;
			end;

			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			slMCashSeq.Clear;
			slMCashMemo.Clear;
			for j := 0 to slList.Count - 1 do
			begin
				Frm_Flash.cxPBar1.Position := j + 1;
				Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
				Application.ProcessMessages;
				xmlData := slList.Strings[j];
				xdom := ComsDomDocument.Create;

				try
					if not xdom.loadXML(XmlData) then Exit;

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
									GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
									Application.ProcessMessages;

  								//스케쥴 일련번호, 스케쥴명, 일차감금액, 한도금액, 기본여부
									sTmp2 := '';
									if ls_Rcrd[4] = 'y' then sTmp2 := '기본스케줄';
									sTmp := ls_Rcrd[1] + ', '                       //스케쥴명
												+	StrToMoney(ls_Rcrd[2]) + ', '           //일차감금액
												+	StrToMoney(ls_Rcrd[3]) + ', '           //한도금액
												+ sTmp2;                                  //기본여부
									slMCashMemo.Add(sTmp);
									slMCashSeq.Add(ls_Rcrd[0]);  //스케쥴 일련번호
								end;
							finally
								ls_Rcrd.Free;
							end;
						end;
					end;
					cb_Wor23List.Clear;
					cb_Wor23List.Properties.Items.Assign(slMCashMemo);
					iTmp := 0;
					for i := 0 to slMCashMemo.Count-1 do
					begin 
						if Pos(', 기본스케줄',slMCashMemo[i]) > 0 then 
						begin
							iTmp := i; 
							Break;
						end;
					end;
					cb_Wor23List.ItemIndex := iTmp;
				finally
					xdom := Nil;
				end;
			end;
		finally
			Frm_Flash.hide;
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_WOR01.proc_recieve(ls_rxxml: Widestring);
var
  xdom: msDomDocument;
  lst_Result, lst_Count: IXMLDomNodeList;
	ls_Rcrd, hpList : TStringList;
	ls_ClientKey, ls_Msg_Err, sWkSabun : string;
	I, iCnt, iRow : Integer;
	sMsg, sMsgSub, sHpNO, sSharp : string;
begin
	xdom := ComsDomDocument.Create;
	Screen.Cursor := crHourGlass;
	try
		try
      if not xdom.loadXML(ls_rxxml) then Exit;

      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
			begin
        ls_ClientKey := GetXmlClientKey(ls_rxxml);
				ls_ClientKey := Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5);
        case StrToIntDef(ls_ClientKey, 1) of
          1:
            begin
              if ( Not Assigned(Frm_WOR02) ) Or ( Frm_WOR02 = NIl ) then Frm_WOR02 := TFrm_WOR02.Create(Nil);
              Frm_WOR02.cxgBlackList.DataController.SetRecordCount(0);
              Frm_WOR02.cxgBlackList.BeginUpdate;
              if (0 < GetXmlRecordCount(ls_rxxml)) then
              begin
                lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
								ls_Rcrd := TStringList.Create;
                try
                  for i := 0 to lst_Result.length - 1 do
                  begin
                    GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                    ls_Rcrd.Insert(0, IntToStr(i + 1));
                    iRow := frm_WOR02.cxgBlackList.DataController.AppendRecord;

                    if Length(ls_Rcrd[4]) = 18 then
                      ls_Rcrd[4] := Copy(ls_Rcrd[4], 1, 10) + ' ' + Copy(ls_Rcrd[4], 11, 8);
                    Frm_WOR02.cxgBlackList.DataController.Values[iRow, 0] := ls_Rcrd[0];
                    Frm_WOR02.cxgBlackList.DataController.Values[iRow, 1] := ls_Rcrd[1];
                    Frm_WOR02.cxgBlackList.DataController.Values[iRow, 2] := strtocall(ls_Rcrd[2]);
                    Frm_WOR02.cxgBlackList.DataController.Values[iRow, 3] := strtocall(ls_Rcrd[3]);
                    Frm_WOR02.cxgBlackList.DataController.Values[iRow, 4] := ls_Rcrd[4];
                    Frm_WOR02.cxgBlackList.DataController.Values[iRow, 5] := ls_Rcrd[5];
                  end;
                finally
                  ls_Rcrd.Free;
                end;
              end;
              Frm_WOR02.cxgBlackList.EndUpdate;
              if Frm_WOR02.cxgBlackList.DataController.RecordCount > 0 then
              begin
                Frm_WOR02.Show;
                cxbSoNumCheck.Enabled := True;
              end;
            end;
					92:
            begin
              if ( Not Assigned(Frm_WOR02) ) Or ( Frm_WOR02 = NIl ) then Frm_WOR02 := TFrm_WOR02.Create(Nil);
							Frm_WOR02.cxgBlackList.DataController.SetRecordCount(0);
							Frm_WOR02.cxgBlackList.BeginUpdate;
              if (0 < GetXmlRecordCount(ls_rxxml)) then
							begin
								lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                ls_Rcrd := TStringList.Create;
                try
                  for i := 0 to lst_Result.length - 1 do
                  begin
										GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
										ls_Rcrd.Insert(0, IntToStr(i + 1));
                    iRow := frm_WOR02.cxgBlackList.DataController.AppendRecord;

                    if Length(ls_Rcrd[4]) = 18 then
											ls_Rcrd[4] := Copy(ls_Rcrd[4], 1, 10) + ' ' + Copy(ls_Rcrd[4], 11, 8);
										Frm_WOR02.cxgBlackList.DataController.Values[iRow, 0] := ls_Rcrd[0];
										Frm_WOR02.cxgBlackList.DataController.Values[iRow, 1] := ls_Rcrd[1];
										Frm_WOR02.cxgBlackList.DataController.Values[iRow, 2] := strtocall(ls_Rcrd[2]);
										Frm_WOR02.cxgBlackList.DataController.Values[iRow, 3] := strtocall(ls_Rcrd[3]);
										Frm_WOR02.cxgBlackList.DataController.Values[iRow, 4] := ls_Rcrd[4];
										Frm_WOR02.cxgBlackList.DataController.Values[iRow, 5] := ls_Rcrd[5];
									end;
									Black_chk := True;
								finally
                  ls_Rcrd.Free;
                end;
							end	else
								Black_chk := False;
							Frm_WOR02.cxgBlackList.EndUpdate;
              if Frm_WOR02.cxgBlackList.DataController.RecordCount > 0 then
              begin
                Frm_WOR02.Show;
                cxbHpCheck.Enabled := True;
								cxbHpCheck2.Enabled := True;
								cxbHpCheck3.Enabled := True;
              end;
							cxbModify.Enabled := true;
            end;
					93:
						begin
							GMessagebox('퇴직처리 되었습니다.', CDMSI);
						end;
          2:
            begin
              if (0 < GetXmlRecordCount(ls_rxxml)) then
              begin
                lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                ls_Rcrd := TStringList.Create;
                cxgBrSet.BeginUpdate();
                try
                  for i := 0 to lst_Result.length - 1 do
                  begin
                    GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                    if ls_Rcrd[0] = 'BH' then
                    begin
											slBHCode.Add(ls_Rcrd[1]);     //보험코드
											slBHName.Add(ls_Rcrd[3]);     //보험사명
										end else
  									if ls_Rcrd[0] = 'PM' then
										begin
											cboNavi.Properties.Items.Add(ls_Rcrd[3]);
											slNaviHpCd.Add(ls_Rcrd[1]);
										end else
										begin
                      iRow := cxgBrSet.DataController.AppendRecord;
                      cxgBrSet.DataController.Values[iRow, 0] := ls_Rcrd[0];
                      cxgBrSet.DataController.Values[iRow, 1] := ls_Rcrd[1];
                      cxgBrSet.DataController.Values[iRow, 2] := ls_Rcrd[2];
											cxgBrSet.DataController.Values[iRow, 3] := ls_Rcrd[3];
											cxgBrSet.DataController.Values[iRow, 4] := ls_Rcrd[4];
										end;
                  end;

									proc_BHSet(0);// 보험사 콤보설정 0: 전체, 1: 콜당보험용 보험사
									proc_BHSet(2);//탁송
								finally
                  ls_Rcrd.Free;
                  cxgBrSet.EndUpdate();
                end;
              end;
            end;
          3:
            begin
              cxcbAttendArea.Properties.Items.Clear;
              cxcbComtype.Properties.Items.Clear;
              slCmdCode.Clear;
              if (0 < GetXmlRecordCount(ls_rxxml)) then
              begin
                lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                ls_Rcrd := TStringList.Create;
                try
                  for i := 0 to lst_Result.length - 1 do
									begin
                    GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                    if ls_Rcrd[0] = 'BR' then
                    begin
                      cxcbAttendArea.Properties.Items.Add(ls_Rcrd[1]);
                    end
                    else if ls_Rcrd[0] = 'CM' then
                    begin
                      cxcbComtype.Properties.Items.Add(ls_Rcrd[1]);
                      slCmdCode.Add(ls_Rcrd[2]);
                    end;
                  end;
                finally
                  ls_Rcrd.Free;
                end;
                cxcbAttendArea.ItemIndex := 0;
                cxcbComtype.ItemIndex := 0;
              end;
            end;
					5:
            begin
							if FShuttel4[cboBranch.itemindex] = 'y' then //shuttle4 셔틀전문지사의 경우
							begin
								cxbHpCheck.Enabled := True;
								cxcbWkHp_JoinCNT.Enabled := True;
								cxcbWkShareNo.Enabled := True;

								iCnt := GetXmlRecordCount(ls_rxxml);
								sMsg := '';
								sMsgSub := '';
								if (iCnt > 0) then
								begin
									lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
									ls_Rcrd := TStringList.Create;
									try
										GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
										if ls_Rcrd[0] = cxedWkSabun.Text then
										begin
											if cxbHpCheck.Tag = 0 then
												GMessagebox('사용가능한 단말기 번호 입니다.', CDMSI);
											gsOrgHp := edt_WkHp.Text;
											cxbHpCheck.Enabled := False;
										end	else
										begin
											GMessagebox(Format('[이미 등록된 단말기 번호] 이전 기사 소속업체에 문의하세요.'#13#10 +
																				'%s(%s) -[%s]', [ls_Rcrd[1], ls_Rcrd[2], ls_Rcrd[3]]), CDMSE);
										end;
									finally
										ls_Rcrd.Free;
									end;
								end	else
								begin
									cxbHpCheck.Enabled := False;
									if cxbHpCheck.Tag = 0 then
										GMessagebox('사용가능한 단말기 번호 입니다.', CDMSI);
									gsOrgHp := edt_WkHp.Text;	
									cxcbWkHp_JoinCNT.ItemIndex := 0;
									cxcbWkHp_JoinCNT.Enabled := False;
									cxcbWkShareNo.ItemIndex := 0;
									cxcbWkShareNo.Enabled := False;
								end;
							end else
							if GT_USERIF.MultiWorkerCnt > 1 then
							begin
								cxbHpCheck.Enabled := True;
								cxcbWkHp_JoinCNT.Enabled := True;
								if GS_PRJ_AREA = 'S' then cxcbWkShareNo.Enabled := False else
								if GS_PRJ_AREA = 'O' then cxcbWkShareNo.Enabled := True;

								iCnt := GetXmlRecordCount(ls_rxxml);
								sMsg := '';
								sMsgSub := '';
								if (iCnt > 0) then
								begin
									lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
									ls_Rcrd := TStringList.Create;
									hpList  := TStringList.Create;
									try
										if iCnt < GT_USERIF.MultiWorkerCnt then
										begin
											GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
											if (not Cheonan_ShareGroup(GS_PRJ_AREA, GT_USERIF.ShareNo)) and (GS_PRJ_AREA = 'S') then //   수도권(천안제외)
											begin
												cxcbWkHp_JoinCNT.Enabled := False;
												if ls_Rcrd[5] = cxHdNo.Text then
												begin
													sMsg := '[이미 등록된 단말기 번호]';
													GMessagebox(sMsg + #13#10#13#10 + '이미 동일번호를 사용중입니다.' + #13#10 +  '본사내 동일번호로 등록이 불가능합니다.', CDMSE);
												end else
												begin
													sMsg := '[이미 등록된 단말기 번호] 중복으로 등록됩니다.';
													for i := 0 to iCnt - 1 do
													begin
														GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
														if pos('#',ls_Rcrd[4]) < 1 then
															hpList.add('#1')
														else
														begin
															hpList.add(copy(ls_Rcrd[4], pos('#',ls_Rcrd[4]),2));
														end;

														if sMsgSub = '' then
														begin
															sMsgSub := Format('%s(%s) - [%s] - [%s]', [ls_Rcrd[1], ls_Rcrd[2], ls_Rcrd[3], ls_Rcrd[4]]);
														end	else
														begin
															sMsgSub := sMsgSub + #13#10 + Format('%s(%s) - [%s] - [%s]', [ls_Rcrd[1], ls_Rcrd[2], ls_Rcrd[3], ls_Rcrd[4]]);
														end;
													end;

													if hpList.IndexOf('#1') > -1 then
													begin
														if ( hpList.IndexOf('#2') > -1 )  And ( GT_USERIF.MultiWorkerCnt >= 3 ) then
														begin
															if ( hpList.IndexOf('#3') > -1 ) And ( GT_USERIF.MultiWorkerCnt >= 4 ) then
															begin
																sHpNO := '4번(#4)';
															end	else sHpNO := '3번(#3)';
														end	else sHpNO := '2번(#2)';
													end	else sHpNO := '기본(#1)';

													GMessagebox('사용가능한 단말기 번호 입니다.', CDMSI);
//													GMessagebox(sMsg + #13#10#13#10 + sMsgSub + #13#10#13#10 + '기사단말 프로그램은 ' + sHpNO + ' 으로 등록(변경) 가능합니다.', CDMSE);
													cxcbWkHp_JoinCNT.ItemIndex := cxcbWkHp_JoinCNT.Properties.Items.IndexOf(copy(sHpNO, pos('(',sHpNO) + 1, 2) );
													gsOrgHp := edt_WkHp.Text;
	//                        사용체크후에 자동으로 #1,2,3 변경되는 부분 변경안되게 수정 20160303
													cxbHpCheck.Enabled := False;
												end;
											end else    //천안연합, 지방권   "L77838│지원팀테스트│16886618│보험료미납│01099991112│A283
											begin
												sMsg := '[이미 등록된 단말기 번호] 중복으로 등록됩니다.';
												for i := 0 to iCnt - 1 do
												begin
													GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
													if (Cheonan_ShareGroup(GS_PRJ_AREA, GT_USERIF.ShareNo)) and (Proc_HDNOSearch = ls_Rcrd[5]) then
													begin   //정회귀팀장님 요청 20191119
														sMsg := '[이미 등록된 단말기 번호]';
														GMessagebox(sMsg+ #13#10#13#10 +'동일본사내 중복 등록할 경우에는 수정창에서 추가하십시오', CDMSE);
														exit;	
													end;

													if pos('#',ls_Rcrd[4]) < 1 then
														hpList.add('#1')
													else
													begin
														hpList.add(copy(ls_Rcrd[4], pos('#',ls_Rcrd[4]),2));
													end;

													if sMsgSub = '' then
													begin
														sMsgSub := Format('%s(%s) - [%s] - [%s]', [ls_Rcrd[1], ls_Rcrd[2], ls_Rcrd[3], ls_Rcrd[4]]);
													end	else
													begin
														sMsgSub := sMsgSub + #13#10 + Format('%s(%s) - [%s] - [%s]', [ls_Rcrd[1], ls_Rcrd[2], ls_Rcrd[3], ls_Rcrd[4]]);
													end;
												end;

												if hpList.IndexOf('#1') > -1 then
												begin
													if ( hpList.IndexOf('#2') > -1 )  And ( GT_USERIF.MultiWorkerCnt >= 3 ) then
													begin
														if ( hpList.IndexOf('#3') > -1 ) And ( GT_USERIF.MultiWorkerCnt >= 4 ) then
														begin
															sHpNO := '4번(#4)';
														end	else sHpNO := '3번(#3)';
													end	else sHpNO := '2번(#2)';
												end	else sHpNO := '기본(#1)';

												GMessagebox(sMsg + #13#10#13#10 + sMsgSub + #13#10#13#10 + '기사단말 프로그램은 ' + sHpNO + ' 으로 등록(변경) 가능합니다.', CDMSE);
												cxcbWkHp_JoinCNT.ItemIndex := cxcbWkHp_JoinCNT.Properties.Items.IndexOf(copy(sHpNO, pos('(',sHpNO) + 1, 2) );
//                        사용체크후에 자동으로 #1,2,3 변경되는 부분 변경안되게 수정 20160303
												cxbHpCheck.Enabled := False;
												cxcbWkHp_JoinCNT.Enabled := True;
												gsOrgHp := edt_WkHp.Text;
											end;
										end else
										begin
											sMsg := Format('[이미 등록된 단말기 번호] 단말번호 1회선 당 %d개까지 중복등록 가능 합니다.', [GT_USERIF.MultiWorkerCnt]);
											if (not Cheonan_ShareGroup(GS_PRJ_AREA, GT_USERIF.ShareNo)) and (GS_PRJ_AREA = 'S') then  //수도권(천안제외)
											begin
												GMessagebox(sMsg + #13#10#13#10 + '추가등록이 불가합니다.', CDMSE);
											end else
											begin
												for i := 0 to iCnt - 1 do
												begin
													GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

													if Pos('#', ls_Rcrd[4]) < 1 then
														sSharp := '#1'
													else
														sSharp := Copy(ls_Rcrd[4], Pos('#', ls_Rcrd[4]), 2);

													if sMsgSub = '' then
													begin
														sMsgSub := Format('%s : %s(%s) - [%s]', [sSharp, ls_Rcrd[1], ls_Rcrd[2], ls_Rcrd[3]])
													end else
													begin
														sMsgSub := sMsgSub + #13#10 + Format('%s : %s(%s) - [%s]', [sSharp, ls_Rcrd[1], ls_Rcrd[2], ls_Rcrd[3]]);
													end;
												end;
												GMessagebox(sMsg + #13#10#13#10 + sMsgSub + #13#10#13#10 + '추가등록이 불가합니다.', CDMSE);
											end
//  											cxcbWkHp_JoinCNT.ItemIndex := strtoint(edt_Index.text);
//                        cxcbWkShareNo.ItemIndex := cxcbWkShareNo.Tag;
										end;
									finally
										ls_Rcrd.Free;
										hpList.Free;
									end;
								end	else
								begin
									cxbHpCheck.Enabled := False;
									if cxbHpCheck.Tag = 0 then
										GMessagebox('사용가능한 단말기 번호 입니다.', CDMSI);
									gsOrgHp := edt_WkHp.Text;	
									cxcbWkHp_JoinCNT.ItemIndex := 0;
									cxcbWkHp_JoinCNT.Enabled := False;
									cxcbWkShareNo.ItemIndex := 0;
									cxcbWkShareNo.Enabled := False;
								end;
							end else
							begin
								cxbHpCheck.Enabled := True;
								iCnt := GetXmlRecordCount(ls_rxxml);
								if (iCnt > 0) then
								begin
									lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
									ls_Rcrd := TStringList.Create;
									try
										GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
										if ls_Rcrd[0] = cxedWkSabun.Text then
										begin
											if cxbHpCheck.Tag = 0 then
												GMessagebox('사용가능한 단말기 번호 입니다.', CDMSI);
											cxbHpCheck.Enabled := False;
										end	else
										begin
											GMessagebox(Format('[이미 등록된 단말기 번호] 이전 기사 소속업체에 문의하세요.'#13#10 +
																				'%s(%s) -[%s]', [ls_Rcrd[1], ls_Rcrd[2], ls_Rcrd[3]]), CDMSE);
										end;
									finally
										ls_Rcrd.Free;
									end;
								end	else
								begin
									cxbHpCheck.Enabled := False;
									if cxbHpCheck.Tag = 0 then
										GMessagebox('사용가능한 단말기 번호 입니다.', CDMSI);
								end;
							end;
						end;
          6:
            begin
              try
                cxbBrNum.Enabled := True;
                iCnt := GetXmlRecordCount(ls_rxxml);
                if (0 < iCnt) then
                begin
                  if iCnt = 1 then
                  begin
                    lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                    if lst_Result.item[0].attributes.getNamedItem('Value').Text = cxedWkSabun.Text then
                    begin
                      cxbBrNum.Enabled := False;
                      if cxbBrNum.Tag = 0 then
                        GMessagebox('사용할 수 있습니다', CDMSI);
                    end else
                      GMessagebox('이미 사용중인 자체사번 입니다.', CDMSE);
                  end else
                    GMessagebox('이미 사용중인 자체사번 입니다.', CDMSE);
                end else
                begin
                  cxbBrNum.Enabled := False;
                  if cxbBrNum.Tag = 0 then
                    GMessagebox('사용할 수 있습니다', CDMSI);
                end;
              except on E: Exception do
                begin
                  Log(LOGDATAPATHFILE, '기사사번확인 - Rcv:' + E.Message);
                  cxbModify.Enabled := True;
                end;
              end;
            end;
					7:
						begin
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Worker');
              sWkSabun := lst_Result.item[0].attributes.getNamedItem('WK_SABUN').Text;
							if bFileUpload then
              begin
                proc_save_image(sWkSabun);
                if not fSetImage(sWKSabun) then
                  func_WkUpdate(sWkSabun);
              end;
							cxcbWkShareNo.Tag := cxcbWkShareNo.ItemIndex;
         			cxbHpCheck.Tag := 0;
							cxbHpCheck2.Tag := 2;
							cxbHpCheck3.Tag := 3;

							Try
								sMsg := '';
								if cb_Wor05List.itemindex > 0 then
								begin
									if func_C029INSERT(sWkSabun) then//일비차감 등록
									begin
										sMsg := #13#10 + #13#10 + '[일비차감 등록 완료]' +#13#10
													+ '추가된 내용은 기사현황 > 일비차감설정메뉴에서 확인하여 주십시오.';
									end else
									begin
										sMsg := #13#10 + #13#10 + '[일비차감 등록 실패]' +#13#10 + '기사등록은 완료되었으나 일비차감등록은 실패 하였습니다.' +#13#10 + #13#10 
													+ '기사현황 > 일비차감설정메뉴에서 추가하여 주십시오.';
                  end;
								end;	
							except
              End;
							
							GMessagebox('기사를 추가하였습니다.' +  sMsg, CDMSI);
							
							if Assigned(Frm_Main.Frm_WORA1[WorA1Tag]) then
              begin
                Frm_Main.Frm_WORA1[WorA1Tag].lbWkSabun.Items.Clear;
                Frm_Main.Frm_WORA1[WorA1Tag].lbWkSabun.Items.Add(sWkSabun);
                Frm_Main.Frm_WORA1[WorA1Tag].proc_WorkerList(1);
              end;
              Hide;
            end;
					8:
						begin
							if bFileUpload then
              begin
								if not fSetImage(cxedWkSabun.Text) then
									func_WkUpdate(cxedWkSabun.Text);
              end;
							cxcbWkShareNo.Tag := cxcbWkShareNo.ItemIndex;
        			cxbHpCheck.Tag := 0;
         			cxbHpCheck2.Tag := 2;
							cxbHpCheck3.Tag := 3;
							cxbModify.Enabled := True;
							if Assigned(Frm_Main.Frm_WORA1[WorA1Tag]) then
							begin
								Frm_Main.Frm_WORA1[WorA1Tag].lbWkSabun.Items.Clear;
								Frm_Main.Frm_WORA1[WorA1Tag].lbWkSabun.Items.Add(cxedWkSabun.Text);
								Frm_Main.Frm_WORA1[WorA1Tag].proc_WorkerList(1);
							end;
							if chkKidiDrive.checked  and gbKidiInfoChange then
							begin
								sMsg := '단말기번호, 주민번호 수정으로 '+ #13#10
											+ '개인보험(보험개발원) 정보의 조회가필요합니다.' + #13#10+ #13#10
											+ '조회 하시겠습니까?';
								if Application.MessageBox(PChar(sMsg), '[개인보험]', MB_ICONQUESTION + MB_YESNO) = IDYES then
								begin
									proc_wk_Search(cxedWkSabun.Text);
								end else
								begin
									GMessagebox('기사정보를 수정하였습니다.', CDMSI);
									Hide;
								end;
							end else
							begin
								GMessagebox('기사정보를 수정하였습니다.', CDMSI);
								Hide;
							end;
						end;
					9:
            begin
              cxbWkHp.Enabled := False;
							GMessagebox('단말기 초기화 요청을 하였습니다.', CDMSE);
            end;
          90:
            begin
							lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

              FLicenseCode.Clear;
              ls_Rcrd := TStringList.Create;
              try
                for I := 0 to lst_Result.length - 1 do
                begin
                  GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

                  FLicenseCode.Add(Format('%s=%s', [ls_Rcrd[0], ls_Rcrd[1]]));
                end;
              finally
                ls_Rcrd.Free;
              end;
            end;
					91:
            begin
							lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');

              if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
              begin
                lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

                ls_Rcrd := TStringList.Create;
                try
                  sMsg := Trim(edtRealName.text) + ' 기사님은' +  #13#10;
                  for I := 0 to lst_Result.length - 1 do
                  begin
                    GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                    sMsg := sMsg + Format('(본사:%s, 지사:%s) 에 [기사상태:%s]으로 ' + #13#10, [ls_Rcrd[1], ls_Rcrd[2], ls_Rcrd[3]]);
                  end;
                  sMsg := sMsg + '등록되어 있습니다.';
                  GMessagebox(sMsg, CDMSI);
                finally
                  ls_Rcrd.Free;
                end;
              end;
            end;
        end;
        Screen.Cursor := crDefault;
      end else
      begin
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
				cxbHpCheck.Tag := 0;
				cxbHpCheck2.Tag := 2;
				cxbHpCheck3.Tag := 3;
      end;
    except
    end;
  finally
    Screen.Cursor := crDefault;
    xdom := Nil;
  end;
end;

procedure TFrm_WOR01.proc_recieve_C(ls_rxxml: Widestring);
var
	xdom: msDomDocument;
  lst_Result, lst_Count: IXMLDomNodeList;
	ls_Rcrd, hpList, wk_Hplist, slTmp : TStringList;
	ls_Msg_Err, sTmp, sWkSabun : string;
	I, j, iCnt, iRow, k, iDx: Integer;
	sMsg, sMsgSub, sHpNO, sSharp, sTmp2 : string;
begin
	xdom := ComsDomDocument.Create;
  Screen.Cursor := crHourGlass;
	try
		try
			if not xdom.loadXML(ls_rxxml) then Exit;

      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
			begin
				if (0 < GetXmlRecordCount(ls_rxxml)) then
				begin
					iFlag := 0;
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					ls_Rcrd := TStringList.Create;
					wk_Hplist := TStringList.Create;
					try
						for i := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							iRow := FBrNoList.IndexOf(ls_Rcrd[0]);

							if iRow <> -1 then
								cboBranch.ItemIndex := iRow;
							cboBranchClick(cboBranch);

							cboBranch.Enabled := False;                         //지방도 지사변경 불가  Enabled := False 2013.1.8 KHS

							cxBrNo.Text := ls_Rcrd[0];
							Org_BR_NO := ls_Rcrd[0];                                 //원 지사코드 저장 2011.12.19 KHS
							cxHdNo.Text := ls_Rcrd[1];
							Org_HD_NO := ls_Rcrd[1];                                 //원 본사코드 저장 2011.12.19 KHS
							cxedWkSabun.Text := ls_Rcrd[2];                          //콜마너사번

							cxedSabun.Text := ls_Rcrd[4];
							cxedSabun.Hint := ls_Rcrd[4];

							// [hjf] 이름에 "자체사번*이름" 일 경우 구분하여 표시
							if Pos('*', ls_Rcrd[3]) > 0 then
							begin
								edtNameSabun.Text := Copy(ls_Rcrd[3], 1, Pos('*', ls_Rcrd[3])-1);
								cxedName.Text := Copy(ls_Rcrd[3], Pos('*', ls_Rcrd[3]) + 1, Length(ls_Rcrd[3]));
							end else
							begin
								edtNameSabun.Text := '';
								cxedName.Text := ls_Rcrd[3];
							end;

							cxbBrNum.Enabled := False;
							if Length(ls_Rcrd[5]) = 13 then
							begin
								cxedSoNum.Text := Copy(ls_Rcrd[5], 1, 6);
								cxedSoNum1.Text := Copy(ls_Rcrd[5], 7, 7);
								cxedSoNum.Hint := Copy(ls_Rcrd[5], 1, 6);
								cxedSoNum1.Hint := Copy(ls_Rcrd[5], 7, 7);
								cxAge.Caption := func_Age(Copy(ls_Rcrd[5], 1, 6), Copy(ls_Rcrd[5], 7, 7));
							end else
							begin
								cxedSoNum.Text := Copy(ls_Rcrd[5], 1, 6);
								cxedSoNum1.Text := Copy(ls_Rcrd[5], 7, 7);
								cxedSoNum.Hint := Copy(ls_Rcrd[5], 1, 6);
								cxedSoNum1.Hint := Copy(ls_Rcrd[5], 7, 7);
								cxAge.Caption := '';
							end;

							cxrdWoman.Checked := (ls_Rcrd[6] = 'w');
							exedAddr1.Text := ls_Rcrd[7];
							exedAddr2.Text := ls_Rcrd[8];
							edtWorkerZipCode.Text := ls_Rcrd[28];
							if Length(ls_Rcrd[9]) in [10, 11] then
							begin
								iRow := cxcbWkHp.Properties.Items.IndexOf(Copy(ls_Rcrd[9], 1, 3));
								if iRow <> -1 then  cxcbWkHp.ItemIndex := iRow
								else                cxcbWkHp.ItemIndex := 0;
								gsOrgHp := strtocall(Copy(ls_Rcrd[9], 4, Length(ls_Rcrd[9]) - 3));

								edt_WkHp.Text := gsOrgHp;
								edt_WkHp.Hint := edt_WkHp.Text;
												
								cxcbWkHp_JoinCNT.ItemIndex := 0;
								cxcbWkHp_JoinCNT.Hint := IntToStr(cxcbWkHp_JoinCNT.ItemIndex);
								cxcbWkShareNo.ItemIndex := 0;
								cxcbWkShareNo.Tag := 0;
								edt_Index.text := inttostr(cxcbWkHp_JoinCNT.ItemIndex);
								iFlag := 0;
							end	else
							if Length(ls_Rcrd[9]) in [12, 13] then
							begin
								iRow := cxcbWkHp.Properties.Items.IndexOf(Copy(ls_Rcrd[9], 1, 3));
								if iRow <> -1 then  cxcbWkHp.ItemIndex := iRow
								else                cxcbWkHp.ItemIndex := 0;
								if Pos('#', ls_Rcrd[9]) > 0 then
								begin
									gsOrgHp := strtocall(Copy(ls_Rcrd[9], 4, Length(ls_Rcrd[9]) - 5));
									edt_WkHp.Text := gsOrgHp;
									edt_WkHp.Hint := edt_WkHp.Text;
													
									cxcbWkHp_JoinCNT.ItemIndex := cxcbWkHp_JoinCNT.Properties.Items.IndexOf(Copy(ls_Rcrd[9], length(ls_Rcrd[9]) -1, 2));
									cxcbWkHp_JoinCNT.Hint := IntToStr(cxcbWkHp_JoinCNT.ItemIndex);
									iFlag := cxcbWkHp_JoinCNT.ItemIndex + 1;
								end else
								begin
									gsOrgHp := strtocall(Copy(ls_Rcrd[9], 4, Length(ls_Rcrd[9]) - 3));
									edt_WkHp.Text := gsOrgHp;
									edt_WkHp.Hint := edt_WkHp.Text;
								end;
								edt_Index.text := inttostr(cxcbWkHp_JoinCNT.ItemIndex);
							end;
							iRow := slNaviHpCd.IndexOf(ls_Rcrd[10]);
							if iRow <> -1 then
								cboNavi.ItemIndex := iRow
							else
								cboNavi.ItemIndex := 0;
							if Length(ls_Rcrd[11]) > 3 then
							begin
								if Length(ls_Rcrd[11]) = 12 then
								begin
                  if (IsAngelPlusHead(GS_PRJ_AREA = 'S', GT_UserIF.HD)) then
                  begin
                    edtPhone.Text := copy(ls_Rcrd[11], 1, 4);
                  end else
                  begin
                    iRow := cxcbPhone.Properties.Items.IndexOf(copy(ls_Rcrd[11], 1, 4));
                    if iRow <> -1 then
                      cxcbPhone.ItemIndex := iRow
                    else
                      cxcbPhone.ItemIndex := 0;
                  end;
                  cxedPhone.Text := strtocall(Copy(ls_Rcrd[11], 5, Length(ls_Rcrd[11]) - 4));
								end else
								begin
                  if (IsAngelPlusHead(GS_PRJ_AREA = 'S', GT_UserIF.HD)) then
                  begin
                    edtPhone.Text := copy(ls_Rcrd[11], 1, 3);
                  end else
                  begin
                    iRow := cxcbPhone.Properties.Items.IndexOf(copy(ls_Rcrd[11], 1, 3));
                    if iRow <> -1 then
                      cxcbPhone.ItemIndex := iRow
                    else
                      cxcbPhone.ItemIndex := 0;
                  end;
									cxedPhone.Text := strtocall(Copy(ls_Rcrd[11], 4, Length(ls_Rcrd[11]) - 3));
								end;
							end;
							cxedTel.Text := strtocall(ls_Rcrd[12]);

							cxedInsNum.Text := ls_Rcrd[14];
							cxedInsNum.Hint := ls_Rcrd[14]; //콜당보험관련-보험번호번호 저장 20160823KHS
							sTmp := ls_Rcrd[15];
							sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
							if Length(sTmp) = 8 then
							begin
								if StrTointDef(sTmp, 0) > 0 then
									sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2)
								else
									sTmp := FormatDateTime('yyyy-mm-dd', Now);
							end
							else
								sTmp := FormatDateTime('yyyy-mm-dd', Now);
							cxdtInsEnd.Text := sTmp;
												
							try
								sTmp := ls_Rcrd[73];
								if Copy(sTmp, 1, 1) <> '0' then
								begin
									sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
									if Length(sTmp) = 8 then
									begin
										sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2);
										cxdtInsStart.Text := sTmp;
									end else
										cxdtInsStart.Text := ''
								end else
									cxdtInsStart.Text := ''
							Except
								cxdtInsStart.Text := ''
							end;
							glCallInsInfo.InsGubun.Clear;
							glCallInsInfo.InsCD .Clear;
							glCallInsInfo.InsNum.Clear;
							glCallInsInfo.InsADate.Clear;
							glCallInsInfo.InsS  .Clear;
							glCallInsInfo.InsE  .Clear;
							glCallInsInfo.InsStatus.Clear;

							glCallInsInfo.InsGubun.Add('m');
							glCallInsInfo.InsCD .Add(ls_Rcrd[13]);
							glCallInsInfo.InsNum.Add(cxedInsNum.Text);
							glCallInsInfo.InsADate.Add('');
							glCallInsInfo.InsS  .Add(cxdtInsStart.Text);
							glCallInsInfo.InsE  .Add(cxdtInsEnd.Text);
							glCallInsInfo.InsStatus.Add('');

							cxedDrvLic.Text := ls_Rcrd[16];
							cxedMemo.Text := ls_Rcrd[17];

							if Trim(ls_Rcrd[18]) <> '' then   //기사메모
							begin
								slTmp := TStringList.Create;
								try
									GetTextSeperationEx2('¶', ls_Rcrd[18], slTmp);
									for j := 0 to slTmp.Count - 1 do
									begin
										if j = 0 then
											cxmmMemo.Text := slTmp[j]
										else
											cxmmMemo.Text := cxmmMemo.Text + #13#10 + slTmp[j];
									end;
								finally
									FreeAndNil(slTmp);
								end;
							end;

							if pos('[본인인증성공]', cxmmMemo.Text) > 0 then
							begin
								cxbSoNumCheck.Tag := 99;
								cxbSoNumCheck.Enabled := False;
								cxmmMemo.Text := StringReplace(cxmmMemo.Text, '[본인인증성공]', '', [rfReplaceAll]);
							end;

							sTmp := ls_Rcrd[19];
							sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
							if Length(sTmp) = 8 then
								sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2)
							else
								sTmp := FormatDateTime('yyyy-mm-dd', Now);
							cxdtReg.Text := sTmp;
							cxdtEnd.Text := ls_Rcrd[20];
							iRow := cxcbAttendArea.Properties.Items.IndexOf(ls_Rcrd[21]);
							if iRow = -1 then
								cxcbAttendArea.ItemIndex := 0
							else
								cxcbAttendArea.ItemIndex := iRow;
							cbbOrderView.ItemIndex := StrToIntDef(ls_Rcrd[22], 1);
							cbbDistanceType.ItemIndex := StrToIntDef(ls_Rcrd[35], 0);

							iRow := slCmdCode.IndexOf(ls_Rcrd[23]);
							if iRow = -1 then
								cxcbComtype.ItemIndex := 0
							else
								cxcbComtype.ItemIndex := iRow;
							cxedFreeCall.Text := ls_Rcrd[24];
							cxedWkBkName.Text := ls_Rcrd[26] + ' [ ' + ls_Rcrd[27] + ' ]';
							cxedWkBkName2.Text := ls_Rcrd[31] + ' [ ' + ls_Rcrd[32] + ' ]';

							bFileUpload := False;
							bModify := False;

							cxiWkImg.WebPicture.LoadFromURL(proc_HttpGetWorkImageURL(Trim(cxedWkSabun.Text), 'Person'));

							FLicStCd := ls_Rcrd[30];
							cxLblLicSt.Caption := FLicenseCode.Values[FLicStCd];
							edtRealName.Text := ls_Rcrd[29];

							if ls_Rcrd[33] = '-' then
							begin
								cbbPriceBlock.Text := '수정불가';
								cbbPriceBlock.Enabled := False;
							end else
							begin
								cbbPriceBlock.Enabled := True;
								cbbPriceBlock.ItemIndex := IfThen(ls_Rcrd[33] = 'y', 0, 1);
							end;

							if ls_Rcrd[44] = 'y' then        //스틱가능여부
							begin
								chkOnlyAuto.Checked := False
							end else
								chkOnlyAuto.Checked := True;

							//탁송콜당보험 추가
							if ls_Rcrd[83] = '0' then lb_TakINS_MER_STATUS.Caption := '가입요청' else
							if ls_Rcrd[83] = '1' then lb_TakINS_MER_STATUS.Caption := '통과'     else
							if ls_Rcrd[83] = '2' then lb_TakINS_MER_STATUS.Caption := '거부'     else
							if ls_Rcrd[83] = '3' then lb_TakINS_MER_STATUS.Caption := '심사중'   else
							if ls_Rcrd[83] = '4' then lb_TakINS_MER_STATUS.Caption := '기사정보오류' else
							if ls_Rcrd[83] = '5' then lb_TakINS_MER_STATUS.Caption := '기타'     else
							if ls_Rcrd[83] = '7' then lb_TakINS_MER_STATUS.Caption := '해지요청' else
							if ls_Rcrd[83] = '8' then lb_TakINS_MER_STATUS.Caption := '해지' 		else
							if ls_Rcrd[83] = '9' then lb_TakINS_MER_STATUS.Caption := '미가입'   else lb_TakINS_MER_STATUS.Caption := ls_Rcrd[83] ;
							lb_TakINS_MER_STATUS.Hint := ls_Rcrd[83];

							cxbTakInsranceApply.Enabled := True;
							if (func_CallInsureShareNo(GT_USERIF.ShareNo)) or (lb_TakINS_MER_STATUS.Caption = '통과') then
								cxbTakInsranceApply.Enabled := False
							else
								cxbTakInsranceApply.Enabled := True;

							if Length(ls_Rcrd[81]) = 8 then       //탁송콜당보험 자동적용일자
								dt_TakCallInsStartDate.Text := copy(ls_Rcrd[81],1,4) + '-' + copy(ls_Rcrd[81],5,2) + '-' +copy(ls_Rcrd[81],7,2);

							glCallInsInfo.InsGubun.Add('tm');
							glCallInsInfo.InsCD .Add(ls_Rcrd[76]);
							glCallInsInfo.InsNum.Add(ls_Rcrd[68]);
							glCallInsInfo.InsADate.Add('');
							sTmp := ls_Rcrd[74]; //ls_Rcrd[74] wk.CONSIGNMENT_ST_DATE -- 탁송보험시작일
							if Copy(sTmp, 1, 1) <> '0' then
							begin
								sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
								if Length(sTmp) = 8 then
									sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2);
							end;
							glCallInsInfo.InsS  .Add(sTmp);
							sTmp := ls_Rcrd[75];  //ls_Rcrd[75] wk.CONSIGNMENT_EXPIRATION -- 탁송만기일
							if Copy(sTmp, 1, 1) <> '0' then
							begin
								sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
								if Length(sTmp) = 8 then
									sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2);
							end;
							glCallInsInfo.InsE  .Add(sTmp);
							glCallInsInfo.InsStatus.Add('');

							slTmp := TStringList.Create;
							Try
								slTmp.Clear;
								slTmp.Delimiter     := '|';
								slTmp.DelimitedText := ls_Rcrd[82]; //ls_Rcrd[82]메리츠 탁송콜당보험정보 (구분자) 예) - 보험번호|시작일|만기일
															
								glCallInsInfo.InsGubun.Add('tc');
								glCallInsInfo.InsCD .Add('06');
								glCallInsInfo.InsNum.Add(slTmp[0]); 
								sTmp := ls_Rcrd[81]; //ls_Rcrd[81] wk.CONSIGNMENT_ST_DATE -- 탁송보험시작일 
								if Copy(sTmp, 1, 1) <> '0' then
								begin
									sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
									if Length(sTmp) = 8 then
										sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2);
								end;
								glCallInsInfo.InsADate.Add(sTmp);
								glCallInsInfo.InsS  .Add(GetStrToDateTimeGStr(slTmp[1], 4));
								glCallInsInfo.InsE  .Add(GetStrToDateTimeGStr(slTmp[2], 4));
								glCallInsInfo.InsStatus.Add(lb_TakINS_MER_STATUS.Caption);
													
								glCallInsInfo.InsGubun.Add('tk');
								glCallInsInfo.InsCD .Add('15');
								glCallInsInfo.InsNum.Add('');
								glCallInsInfo.InsADate.Add('');
								glCallInsInfo.InsS  .Add('');
								glCallInsInfo.InsE  .Add('');
								glCallInsInfo.InsStatus.Add('');
							Finally
								slTmp.Free
							End;	

							if ls_Rcrd[45] = 'y' then        //탁송가능여부
							begin
								//탁송콜당보험 정보 
							//ls_Rcrd[74] wk.CONSIGNMENT_ST_DATE -- 탁송보험시작일 
							//ls_Rcrd[75] wk.CONSIGNMENT_EXPIRATION -- 탁송만기일

							//ls_Rcrd[80] wk.wk_ins_cons_type 탁송구분값(n(없음),c(메리츠콜당),k(KB콜당),m(월당)) 분리  기본은 n(없음)
							//ls_Rcrd[81] m.INS_AUTO_DATE --탁송 콜당 자동적용일
							//ls_Rcrd[82] 탁송 콜당메리츠 보험정보
							//ls_Rcrd[83] m.ins_result --탁송 콜당메리츠 심사결과
							//ls_Rcrd[84] 월당 자동적용일
							//ls_Rcrd[85] 월당 DB손보 보험정보
							//ls_Rcrd[86] 월당 DB손보 심사결과   												

								iDx := glCallInsInfo.InsGubun.indexOf('t'+ls_Rcrd[80]);
								if idx > -1 then
								begin
									edtTakInsNum.Text := glCallInsInfo.InsNum[iDx];
									cxdTaktInsStart.Text := glCallInsInfo.InsS[iDx];
									cxdTaktInsEnd.Text := glCallInsInfo.InsE[iDx];
								end;

								pnl_TakIns.enabled := True;
								if ls_Rcrd[80] = 'm' then
								begin
									modifyChk := True;
									fChk      := True;
									cxlbl4.caption := '동의함';
									cxlbl4.Style.font.style := [fsBold];
									cxlbl4.Style.font.color := clRed;
									edtTakInsNum.enabled := True;
									chkTaksong.Tag := 99;
									chkTaksong.Checked := True;
									chkTaksong.Tag := 0;
														
									//ls_Rcrd[76] wk.CONSIGNMENT_CORPER -- 탁송보험사 

									if (chkTaksong.Checked) and 
										 ((GetLicTypeCode(cbbLicType.Text) = '10') or (GetLicTypeCode(cbbLicType.Text) = '11') or   //1종대형, 1종보통
											(GetLicTypeCode(cbbLicType.Text) = '13') or (GetLicTypeCode(cbbLicType.Text) = '20') or   //1종특수, 2종보통
											(GetLicTypeCode(cbbLicType.Text) = '30')) then //1종대형특수 
									begin
										chkTakHwak.Visible := True;
										if ls_Rcrd[69] = 'y' then chkTakHwak.Checked := True else chkTakHwak.Checked := False;
										chkTakHwak.Hint := ls_Rcrd[69]; 
									end
									else
									begin
										chkTakHwak.Visible := False;
										chkTakHwak.Checked := False; 
										chkTakHwak.Hint := '';
									end;
									iRow := slTakInsCode.IndexOf(ls_Rcrd[76]);
									if iRow <> -1 then
										cb_TakInsCorper.ItemIndex := iRow
									else
										cb_TakInsCorper.ItemIndex := 0;													
																
									edtTakInsNum.Text := ls_Rcrd[68]; //탁송보험번호 20170107 KHS
								end else
							//ls_Rcrd[80] wk.wk_ins_cons_type 탁송구분값(n(없음),c(메리츠콜당),k(KB콜당),m(월당)) 분리  기본은 n(없음)
							//ls_Rcrd[81] m.INS_AUTO_DATE --탁송 콜당 자동적용일
							//ls_Rcrd[82] 탁송 콜당메리츠 보험정보
							//ls_Rcrd[83] m.ins_result --탁송 콜당메리츠 심사결과   												
								if ls_Rcrd[80] = 'c' then
								begin
									modifyChk := True;
									fChk      := True;
									edtTakInsNum.enabled := True;
									chkTakCall.Hint := 'tc';
									chkTakCall.Checked := True;
									chkTakCall.Tag := 0;

									chkTakHwak.Visible := False;
									chkTakHwak.Checked := False; 
									chkTakHwak.Hint := '';
								end else
								if ls_Rcrd[80] = 'k' then
								begin
													
								end;
							end else
							begin
								modifyChk := False;
								fChk      := False;
								cxlbl4.caption := '동의안함';
								cxlbl4.Style.font.style := [];
								cxlbl4.Style.font.color := clBlack;
								edtTakInsNum.enabled := False;
								chkTaksong.Tag := 99;
								chkTaksong.Checked := False;
								chkTaksong.Tag := 0;
//								pnl_TakIns.enabled := False;
								edtTakInsNum.Text := ''; //탁송보험번호 20170107 KHS	
							end;
							cxTextEdit1.Text := ls_Rcrd[46];

							glCallInsInfo.InsGubun.Add('t');
							glCallInsInfo.InsCD .Add(ls_Rcrd[76]);
							glCallInsInfo.InsNum.Add(edtTakInsNum.Text);
							glCallInsInfo.InsADate.Add('');
							glCallInsInfo.InsS  .Add(GetStrToDateTimeGStr(cxdTaktInsStart.Text, 4));
							glCallInsInfo.InsE  .Add(GetStrToDateTimeGStr(cxdTaktInsEnd.Text, 4));
							glCallInsInfo.InsStatus.Add('');

							try
								sTmp := ls_Rcrd[47];
								if Copy(sTmp, 1, 1) <> '0' then
								begin
									sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
									if Length(sTmp) = 8 then
										sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2)
									else
										sTmp := FormatDateTime('yyyy-mm-dd', Now);

									cxdtLinsDate.Text := sTmp;
								end else
									cxdtLinsDate.Text := ''
							Except
								cxdtLinsDate.Text := ''
							end;

							if ls_Rcrd.Count > 34 then
								cbbLicType.ItemIndex := cbbLicType.Properties.Items.IndexOf(GetLicTypeValue(ls_Rcrd[34]));

							// 플러스콜 사용여부 체크(지사,본사,연합) 설정값 모두 만족해야 함.
							if ls_Rcrd[43] = 'yyyy' then
							begin
								btnPlusRight.Enabled:= True;
								btnPlusPView.Enabled := True;
								if (ls_Rcrd[36] = '1') or (ls_Rcrd[36] = '2') or (ls_Rcrd[36] = '3') then
								begin
									btnPlusJoin.Enabled := True;
									btnPlusJoin.Caption := '법인기사탈퇴';
									btnPlusCalc.Enabled := True;
									btnPlusLogView.Enabled := True;
									btnPlusRight.Enabled := False;
									btnPlusPView.Enabled := False;
									if ls_Rcrd[36] = '1' then begin
										cxtPlusState.Text   := '정상';
									end else if ls_Rcrd[36] = '2' then begin
										cxtPlusState.Text   := '일시정지';
									end else begin
										cxtPlusState.Text   := '정지';
									end;
								end else
								if ls_Rcrd[36] = '9' then
								begin
									btnPlusJoin.Enabled := false;
									btnPlusJoin.Caption := '법인기사가입';
									cxtPlusState.Text   := '법인기사탈퇴';
									btnPlusRight.Enabled:= True;
									btnPlusPView.Enabled := True;
								end;

								cxtPlusScore.Text   := ls_Rcrd[37];  // 플러스 점수
								cxtPlusPenalty.Text := ls_Rcrd[38];  // 패널티 벌점
								if ls_Rcrd[39] = 'null' then
								begin
									cxtP1.Text := '가입 : -';
								end else
								begin
									cxtP1.Text := '가입 : ' + ls_Rcrd[39];
								end;

								if ls_Rcrd[40] = 'null' then
								begin
									cxtP2.Text := '정지 : -';
								end else
								begin
									cxtP2.Text := '정지 : ' + ls_Rcrd[40];
								end;

								if ls_Rcrd[41] = 'null' then
								begin
									cxtP3.Text := '해제 : -';
								end else
								begin
									cxtP3.Text := '해제 : ' + ls_Rcrd[41];
								end;

								if ls_Rcrd[42] = 'null' then
								begin
									cxtP4.Text := '탈퇴 : -';
								end else
								begin
									cxtP4.Text := '탈퇴 : ' + ls_Rcrd[42];
								end;
							end;

							if Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo) = 'G70' then iShareGroupIDX := 1 else
							if Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo) = 'G71' then iShareGroupIDX := 2 else
							if Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo) = 'G72' then iShareGroupIDX := 3 else
							if Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo) = 'G73' then iShareGroupIDX := 4;

							wk_Hplist.Clear;

							if not gKey50 then
							begin
								if Trim(ls_Rcrd[49]) <> '' then
								begin
									cxcbWkHp_JoinCNT.ItemIndex := 0;
									cxcbWkHp_JoinCNT.Enabled := False;
									edt_Index.text := inttostr(cxcbWkHp_JoinCNT.ItemIndex);

									GetTextSeperationEx2('^', Trim(ls_Rcrd[49]), wk_Hplist);   //'01044934569#2^^L68113^2222^00'
									FWORKER.USEHP   .Add(wk_Hplist[0]);
									FWORKER.SHARPNO .Add('');
									FWORKER.USESHARE.add(wk_Hplist[1]);
									FWORKER.WSABUN  .add(wk_Hplist[2]);
									FWORKER.SABUN   .add(wk_Hplist[3]);
									FWORKER.NAME    .add(wk_Hplist[3] + '*' + Trim(cxedName.Text));
									FWORKER.STATE   .add(wk_Hplist[4]);
									if wk_Hplist.Count > 5 then
									begin
										FWORKER.USEMC   .add(wk_Hplist[5]);
										cxcbWkmc.ItemIndex := cxcbWkmc.Properties.Items.IndexOf(wk_Hplist[5]);
										if cxcbWkmc.ItemIndex = -1 then cxcbWkmc.ItemIndex := 0;
									end else FWORKER.USEMC.add('');
									cxcbWkShareNo.ItemIndex := 0;

									cxcbWkShareNo.Tag := cxcbWkShareNo.ItemIndex;
									cxcbWkShareNo.Enabled := False;
									cxbHpCheck.Enabled := False;
								end;

								if Trim(ls_Rcrd[50]) <> '' then
								begin
									cxcbWkHp_JoinCNT2.ItemIndex := 1;
									cxcbWkHp_JoinCNT2.Enabled := False;
									edt_Index.text := inttostr(cxcbWkHp_JoinCNT2.ItemIndex);

									GetTextSeperationEx2('^', Trim(ls_Rcrd[50]), wk_Hplist);   //'01044934569#2^^L68113^2222^00'
									FWORKER.USEHP   .Add(copy(wk_Hplist[0], 1, pos('#',wk_Hplist[0]) - 1));
									FWORKER.SHARPNO .Add('#2');
									FWORKER.USESHARE.add(wk_Hplist[1]);
									FWORKER.WSABUN  .add(wk_Hplist[2]);
									FWORKER.SABUN   .add(wk_Hplist[3]);
									FWORKER.NAME    .add(wk_Hplist[3] + '*' + Trim(cxedName.Text));
									FWORKER.STATE   .add(wk_Hplist[4]);
									if wk_Hplist.Count > 5 then
									begin
										FWORKER.USEMC   .add(wk_Hplist[5]);
										cxcbWkmc2.ItemIndex := cxcbWkmc2.Properties.Items.IndexOf(wk_Hplist[5]);
										if cxcbWkmc2.ItemIndex = -1 then cxcbWkmc2.ItemIndex := 0;
									end else FWORKER.USEMC.add('');

									cxcbWkHp2.ItemIndex := cxcbWkHp.ItemIndex;
									edt_WkHp2.Text := edt_WkHp.Text;

									cxcbWkShareNo2.ItemIndex := iShareGroupIDX;

									cxcbWkShareNo2.Tag := cxcbWkShareNo2.ItemIndex;
									cxcbWkShareNo2.Enabled := False;
									cxbHpCheck2.Enabled := False;
								end;

								if Trim(ls_Rcrd[51]) <> '' then
								begin
									cxcbWkHp_JoinCNT3.ItemIndex := 2;
									cxcbWkHp_JoinCNT3.Enabled := False;
									edt_Index.text := inttostr(cxcbWkHp_JoinCNT3.ItemIndex);

									GetTextSeperationEx2('^', Trim(ls_Rcrd[51]), wk_Hplist);   //'01044934569#2^^L68113^2222^00'
									FWORKER.USEHP   .Add(copy(wk_Hplist[0], 1, pos('#',wk_Hplist[0]) - 1));
									FWORKER.SHARPNO .Add('#3');
									FWORKER.USESHARE.add(wk_Hplist[1]);
									FWORKER.WSABUN  .add(wk_Hplist[2]);
									FWORKER.SABUN   .add(wk_Hplist[3]);
									FWORKER.NAME    .add(wk_Hplist[3] + '*' + Trim(cxedName.Text));
									FWORKER.STATE   .add(wk_Hplist[4]);
									if wk_Hplist.Count > 5 then
									begin
										FWORKER.USEMC   .add(wk_Hplist[5]);
										cxcbWkmc3.ItemIndex := cxcbWkmc3.Properties.Items.IndexOf(wk_Hplist[5]);
										if cxcbWkmc3.ItemIndex = -1 then cxcbWkmc3.ItemIndex := 0;
									end else FWORKER.USEMC.add('');

									cxcbWkShareNo3.ItemIndex := iShareGroupIDX;

									cxcbWkHp3.ItemIndex := cxcbWkHp.ItemIndex;
									edt_WkHp3.Text := edt_WkHp.Text;

									cxcbWkShareNo3.Tag := cxcbWkShareNo3.ItemIndex;
									cxcbWkShareNo3.Enabled := False;
									cxbHpCheck3.Enabled := False;
								end;

								if Trim(ls_Rcrd[52]) <> '' then
								begin
									cxcbWkHp_JoinCNT4.ItemIndex := 3;
									cxcbWkHp_JoinCNT4.Enabled := False;
									edt_Index.text := inttostr(cxcbWkHp_JoinCNT4.ItemIndex);

									GetTextSeperationEx2('^', Trim(ls_Rcrd[52]), wk_Hplist);   //'01044934569#2^^L68113^2222^00'
									FWORKER.USEHP   .Add(copy(wk_Hplist[0], 1, pos('#',wk_Hplist[0]) - 1));
									FWORKER.SHARPNO .Add('#4');
									FWORKER.USESHARE.add(wk_Hplist[1]);
									FWORKER.WSABUN  .add(wk_Hplist[2]);
									FWORKER.SABUN   .add(wk_Hplist[3]);
									FWORKER.NAME    .add(wk_Hplist[3] + '*' + Trim(cxedName.Text));
									FWORKER.STATE   .add(wk_Hplist[4]);
									if wk_Hplist.Count > 5 then
									begin
										FWORKER.USEMC   .add(wk_Hplist[5]);
										cxcbWkmc4.ItemIndex := cxcbWkmc4.Properties.Items.IndexOf(wk_Hplist[5]);
										if cxcbWkmc4.ItemIndex = -1 then cxcbWkmc4.ItemIndex := 0;
									end else FWORKER.USEMC.add('');

									cxcbWkShareNo4.ItemIndex := iShareGroupIDX;

									cxcbWkHp4.ItemIndex := cxcbWkHp.ItemIndex;
									edt_WkHp4.Text := edt_WkHp.Text;

									cxcbWkShareNo4.Tag := cxcbWkShareNo4.ItemIndex;
									cxcbWkShareNo4.Enabled := False;
									cxbHpCheck4.Enabled := False;
								end;
								gUse_Cnt := StrToIntDef(ls_Rcrd[48],0);
								for j := 1 to gUse_Cnt do
								begin
									if j = 1 then
									begin
										cxcbWkHp_JoinCNT.Enabled := False;
										cxcbWkShareNo.Enabled := False;
										cxbHpCheck.Enabled := False;
										if FWORKER.STATE[0] = '00' then
										begin
											if gUse_Cnt < 4 then btn_AddHP.Enabled := True;
										end;
										if iFlag = 0 then
										begin
											cxcbWkHp.Enabled := True;
											cxcbWkHp.Visible := True;
											edt_WkHp.Enabled := True;
											edt_WkHp.Visible := True;
											cxcbWkmc.Enabled := True;
										end;
									end else
									if j = 2 then
									begin
										cxcbWkHp_JoinCNT2.Enabled := False;
										cxcbWkShareNo2.Enabled := False;
										cxbHpCheck2.Enabled := False;
										if FWORKER.STATE[0] = '00' then
										begin
											if gUse_Cnt < 4 then btn_AddHP.Enabled := True;
											self.Height := self.Height + 25;
										end;
										lb_S2.Visible := False;
										lb_Sabun2.Caption := '';
										lb_Sabun2.Visible := False;

										if iFlag = 2 then
										begin
											cxcbWkHp2.Enabled := True;
											edt_WkHp2.Enabled := True;
											cxcbWkmc2.Enabled := True;
										end;
										cxcbWkHp2.Visible := True;
										edt_WkHp2.Visible := True;
										cxcbWkmc2.visible := True;
										btn_DelHP2.Caption := '퇴직';
										btn_DelHP2.Enabled := True;
										btn_DelHP2.Tag := 1;
									end else
									if j = 3 then
									begin
										cxcbWkHp_JoinCNT3.Enabled := False;
										cxcbWkShareNo3.Enabled := False;
										cxbHpCheck3.Enabled := False;
										if FWORKER.STATE[0] = '00' then
										begin
											if gUse_Cnt < 4 then btn_AddHP.Enabled := True;
											self.Height := self.Height + 25;
										end;
										lb_S3.Visible := False;
										lb_Sabun3.Caption := '';
										lb_Sabun3.Visible := False;

										if iFlag = 3 then
										begin
											cxcbWkHp3.Enabled := True;
											edt_WkHp3.Enabled := True;
											cxcbWkmc3.Enabled := True;
										end;
										cxcbWkHp3.Visible := True;
										edt_WkHp3.Visible := True;
										cxcbWkmc3.Visible := True;
										btn_DelHP3.Caption := '퇴직';
										btn_DelHP3.Enabled := True;
										btn_DelHP3.Tag := 1;
									end else
									if j = 4 then
									begin
										cxcbWkHp_JoinCNT4.Enabled := False;
										cxcbWkShareNo4.Enabled := False;
										cxbHpCheck4.Enabled := False;
										if FWORKER.STATE[0] = '00' then
										begin
											if gUse_Cnt < 4 then btn_AddHP.Enabled := True;
											self.Height := self.Height + 25;
										end;
										lb_S4.Visible := False;
										lb_Sabun4.Caption := '';
										lb_Sabun4.Visible := False;

										if iFlag = 4 then
										begin
											cxcbWkHp4.Enabled := True;
											edt_WkHp4.Enabled := True;
											cxcbWkmc4.Enabled := True;
										end;
										cxcbWkHp4.Visible := True;
										edt_WkHp4.Visible := True;
										cxcbWkmc4.Visible := True;
										btn_DelHP4.Caption := '퇴직';
										btn_DelHP4.Enabled := True;
										btn_DelHP4.Tag := 1;
									end;
								end;

								if ls_Rcrd.Count > 53 then
								begin
									if Trim(ls_Rcrd[53]) <> '' then
									begin
										cxRBCall2Y.Checked := True;
										cxRBCall2Y.Tag := 1;
										GetTextSeperationEx2('^', Trim(ls_Rcrd[53]), wk_Hplist);   //'01044934569#2^^L68113^2222^00'
										FWORKER.USEHP   .Add(copy(wk_Hplist[0], 1, pos('#',wk_Hplist[0]) - 1));
										FWORKER.SHARPNO .Add('#9');
										FWORKER.USESHARE.add(wk_Hplist[1]);
										FWORKER.WSABUN  .add(wk_Hplist[2]);
										FWORKER.SABUN   .add(wk_Hplist[3]);
										FWORKER.NAME    .add(wk_Hplist[3] + '*' + Trim(cxedName.Text));
										FWORKER.STATE   .add(wk_Hplist[4]);
										if wk_Hplist.Count > 5 then FWORKER.USEMC.add(wk_Hplist[5])
																					 else FWORKER.USEMC.add(' ');
									end;
								end;
												
							end	else
							begin
								cxcbWkHp.Enabled := True;
								cxcbWkHp.Visible := True;
								edt_WkHp.Enabled := True;
								edt_WkHp.Visible := True;
								cxcbWkmc.Enabled := True;
							end;

							if ls_Rcrd[54] = ''  then cb_Shuttle_Status.ItemIndex := 0 else
							if ls_Rcrd[54] = 'y' then cb_Shuttle_Status.ItemIndex := 1 else
							if ls_Rcrd[54] = 'n' then cb_Shuttle_Status.ItemIndex := 2;

							cb_Shuttle_Charge.Tag := 1;
							cb_Shuttle_Charge.ItemIndex := StrToIntDef(ls_Rcrd[55],0);
							cb_Shuttle_Charge.Tag := 0;
							iShuttle_Charge := cb_Shuttle_Charge.ItemIndex;
							edt_TagID.Text := Trim(ls_Rcrd[56]);

							if ls_Rcrd[59] = '0' then lb_WKINS_MER_STATUS.Caption := '가입요청' else
							if ls_Rcrd[59] = '1' then lb_WKINS_MER_STATUS.Caption := '통과'     else
							if ls_Rcrd[59] = '2' then lb_WKINS_MER_STATUS.Caption := '거부'     else
							if ls_Rcrd[59] = '3' then lb_WKINS_MER_STATUS.Caption := '심사중'   else
							if ls_Rcrd[59] = '4' then lb_WKINS_MER_STATUS.Caption := '기사정보오류' else
							if ls_Rcrd[59] = '5' then lb_WKINS_MER_STATUS.Caption := '기타'     else
							if ls_Rcrd[59] = '7' then lb_WKINS_MER_STATUS.Caption := '해지요청' else
							if ls_Rcrd[59] = '8' then lb_WKINS_MER_STATUS.Caption := '해지' 		else
							if ls_Rcrd[59] = '9' then lb_WKINS_MER_STATUS.Caption := '미가입'   else lb_WKINS_MER_STATUS.Caption := ls_Rcrd[59] ;
							lb_WKINS_MER_STATUS.Hint := ls_Rcrd[59];


							if ls_Rcrd[70] = '0' then lb_WKINS_KB_STATUS.Caption := '가입요청' else
							if ls_Rcrd[70] = '1' then lb_WKINS_KB_STATUS.Caption := '통과'     else
							if ls_Rcrd[70] = '2' then lb_WKINS_KB_STATUS.Caption := '거부'     else
							if ls_Rcrd[70] = '3' then lb_WKINS_KB_STATUS.Caption := '심사중'   else
							if ls_Rcrd[70] = '4' then lb_WKINS_KB_STATUS.Caption := '기사정보오류' else
							if ls_Rcrd[70] = '5' then lb_WKINS_KB_STATUS.Caption := '기타'     else
							if ls_Rcrd[70] = '8' then lb_WKINS_KB_STATUS.Caption := '해지요청' else
							if ls_Rcrd[70] = '8' then lb_WKINS_KB_STATUS.Caption := '해지'     else
							if ls_Rcrd[70] = '9' then lb_WKINS_KB_STATUS.Caption := '미가입'   else lb_WKINS_KB_STATUS.Caption := ls_Rcrd[70] ;
							lb_WKINS_KB_STATUS.Hint := ls_Rcrd[70];

							cxbWKInsranceApply.Enabled := True;
							if (func_CallInsureShareNo(GT_USERIF.ShareNo)) or (lb_WKINS_MER_STATUS.Caption = '통과') then
								cxbWKInsranceApply.Enabled := False
							else
								cxbWKInsranceApply.Enabled := True;

							if Length(ls_Rcrd[62]) = 8 then     //콜당보험 자동적용일자
							begin
								cxdCallInsStartDate.Text := copy(ls_Rcrd[62],1,4) + '-' + copy(ls_Rcrd[62],5,2) + '-' +copy(ls_Rcrd[62],7,2);
							end;
							dt_CallInsStartDate.Text := cxdCallInsStartDate.Text;

							//개인보험(보험개발원)
							//ls_Rcrd[91] 개인보험(보험개발원) INS_STEP	 (보험상태)							
							//ls_Rcrd[92] 개인보험(보험개발원) AGREE_DATE(동의일시)											
							//ls_Rcrd[93] 개인보험(보험개발원) INS_RESULT(심사결과)	
							//ls_Rcrd[94] 개인보험(보험개발원) 보험정보(보험번호|보험시작일|보험종료일)
							//ls_Rcrd[95] 개인보험(보험개발원) 보험사

							//Registered  값이면  동의미진행     Agree이면  동의완료   Ok 정상 20210127 정경석차장 정의
							if ls_Rcrd[91] = 'init'     then lb_WKINS_Kidi_STATUS.Caption := '등록중'           else
							if ls_Rcrd[91] = 'registed' then lb_WKINS_Kidi_STATUS.Caption := '동의미진행'		    else
							if ls_Rcrd[91] = 'agree'    then lb_WKINS_Kidi_STATUS.Caption := '동의완료'         else
							if ls_Rcrd[91] = 'reject'   then lb_WKINS_Kidi_STATUS.Caption := '정보제공동의철회' else
							if ls_Rcrd[91] = 'ok'       then lb_WKINS_Kidi_STATUS.Caption := '보험정상'         else
							if ls_Rcrd[91] = 'expired'  then lb_WKINS_Kidi_STATUS.Caption := '보험만료'         
																					else lb_WKINS_Kidi_STATUS.Caption := ls_Rcrd[91];
							if (ls_Rcrd[91] <> '') then btn_WKKidiApply.Enabled := False else btn_WKKidiApply.Enabled := True;
							if (ls_Rcrd[91] <> '') and (ls_Rcrd[91] <> 'init') then
							begin
								btn_WKKidiSch .Enabled := True;	
								btn_WKKidiSync.Enabled := True;	
							end;

              if  ls_Rcrd[91] = 'registed'                       then btn_WKKidiSMS.Enabled := True else
              if  ls_Rcrd[91] = 'reject'                         then btn_WKKidiSMS.Enabled := True else
              if (ls_Rcrd[91] = 'agree') or (ls_Rcrd[91] = 'ok') then btn_WKKidiSMS.Enabled := False
                                                                 else btn_WKKidiSMS.Enabled := False;
							if (ls_Rcrd[91] = 'ok') then
							begin																									 
								btn_WKKidiSch .Enabled := False;
								btn_WKKidiSync.Enabled := True;  //신성현 팀장요청 20210405 KHS
							end;
							lb_AgDate.Caption := GetStrToDateTimeGStr(ls_Rcrd[92], 3);

							slTmp := TStringList.Create;
							Try
								slTmp.Clear;
								slTmp.Delimiter     := '|';
								slTmp.DelimitedText := ls_Rcrd[78]; //ls_Rcrd[78]메리츠 콜당보험정보 (구분자) 예) - 보험번호|시작일|만기일
								glCallInsInfo.InsGubun.Add('c');
								glCallInsInfo.InsCD .Add('06');
								glCallInsInfo.InsNum.Add(slTmp[0]);
								glCallInsInfo.InsADate.Add(GetStrToDateTimeGStr(dt_CallInsStartDate.Text, 4));
								glCallInsInfo.InsS  .Add(GetStrToDateTimeGStr(slTmp[1], 4));
								glCallInsInfo.InsE  .Add(GetStrToDateTimeGStr(slTmp[2], 4));
								glCallInsInfo.InsStatus.Add(lb_WKINS_MER_STATUS.Caption);
													
								slTmp.Clear;
								slTmp.Delimiter     := '|';
								slTmp.DelimitedText := ls_Rcrd[79]; //ls_Rcrd[79]KB 콜당보험정보(구분자) 예) -  보험번호|시작일|만기일
								glCallInsInfo.InsGubun.Add('k');
								glCallInsInfo.InsCD .Add('15');
								glCallInsInfo.InsNum.Add(slTmp[0]);
								glCallInsInfo.InsADate.Add('');
								glCallInsInfo.InsS  .Add(GetStrToDateTimeGStr(slTmp[1], 4));
								glCallInsInfo.InsE  .Add(GetStrToDateTimeGStr(slTmp[2], 4));
								glCallInsInfo.InsStatus.Add(lb_WKINS_KB_STATUS.Caption);

								slTmp.Clear;
								slTmp.Delimiter     := '|';
								slTmp.DelimitedText := ls_Rcrd[85]; //ls_Rcrd[85]월당 DB손보 보험정보(구분자) 예) -  보험번호|시작일|만기일
								glCallInsInfo.InsGubun.Add('d');
								glCallInsInfo.InsCD .Add('03');
								glCallInsInfo.InsNum.Add(slTmp[0]);
								glCallInsInfo.InsADate.Add('');
								glCallInsInfo.InsS  .Add(GetStrToDateTimeGStr(slTmp[1], 4));
								glCallInsInfo.InsE  .Add(GetStrToDateTimeGStr(slTmp[2], 4));
								if ls_Rcrd[86] = '1' then glCallInsInfo.InsStatus.Add('통과') //ls_Rcrd[86] 월당 DB손보 심사결과   	
								else glCallInsInfo.InsStatus.Add(ls_Rcrd[86]); //ls_Rcrd[86] 월당 DB손보 심사결과   	

								//ls_Rcrd[94] 개인보험(보험개발원) 보험정보(보험번호|보험시작일|보험종료일)
								slTmp.Clear;
								slTmp.Delimiter     := '|';
								slTmp.DelimitedText := ls_Rcrd[94]; 
								glCallInsInfo.InsGubun.Add('b');
								//ls_Rcrd[95] 개인보험(보험개발원) 보험사
								glCallInsInfo.InsCD .Add(ls_Rcrd[95]); //보험사 없음 .정보제공을 안함
								glCallInsInfo.InsNum.Add(slTmp[0]);
								glCallInsInfo.InsADate.Add('');
								glCallInsInfo.InsS  .Add(GetStrToDateTimeGStr(slTmp[1], 4));
								glCallInsInfo.InsE  .Add(GetStrToDateTimeGStr(slTmp[2], 4));
								glCallInsInfo.InsStatus.Add(lb_WKINS_Kidi_STATUS.Caption);
							Finally
								slTmp.Free
							End;
											
							iRow := slInsCode.IndexOf(ls_Rcrd[13]);
							//ls_Rcrd[77] wk.GNR_SUB_YN  -- 일반콜 사용여부 
							if ls_Rcrd[77] = 'y' then
							begin
								pnl_DBIns.Hint := '';
								if ls_Rcrd[58] = 'n' then //보험 구분 : 지정안됨
								begin
									chkDrive.Checked := False;
									chkCallDrive.Checked := False;
									cxcbInsCorper.ItemIndex := 0;
									if iRow <> -1 then
										cxcbInsCorper.ItemIndex := iRow
									else
										cxcbInsCorper.ItemIndex := 0;

									iCorper := cxcbInsCorper.ItemIndex;
									pnl_DBIns.Visible := False;
								end else
								if ls_Rcrd[58] = 'm' then  //보험 구분 : 월정액
								begin
									chkDrive.Checked := True;
									if iRow <> -1 then
										cxcbInsCorper.ItemIndex := iRow
									else
										cxcbInsCorper.ItemIndex := 0;

									iCorper := cxcbInsCorper.ItemIndex;
									pnl_DBIns.Visible := False;
								end else
								if ls_Rcrd[58] = 'b' then 	//보험 구분 : 개인보험(보험개발원)
								begin
									if lb_WKINS_Kidi_STATUS.Caption = '보험정상' then
									begin
										chkKidiDrive.Hint := 'b';
										chkKidiDrive.Checked := True;

										cxcbInsCorper.Enabled := False; //보험사 없음
										iCorper := cxcbInsCorper.ItemIndex;
															
										for k := 0 to glCallInsInfo.InsCD.Count -1 do
										begin
											if (glCallInsInfo.InsGubun[k] = chkKidiDrive.Hint)then
											begin
												cxedInsNum.Text := glCallInsInfo.InsNum[k]; 
												sTmp := glCallInsInfo.InsS[k];
												cxdtInsStart.Text := glCallInsInfo.InsS[k]; 
												sTmp := glCallInsInfo.InsE[k];
												cxdtInsEnd  .Text := glCallInsInfo.InsE[k]; 
											end;
										end;
										pnl_DBIns.Visible := False;
									end;

								end else
								if ls_Rcrd[58] = 'c' then 	//보험 구분 : 콜당보험
								begin
									chkCallDrive.Hint := 'c';
									chkCallDrive.Checked := True;
									cxcbInsCorper.ItemIndex := 0;
									iCorper := cxcbInsCorper.ItemIndex;

									for k := 0 to glCallInsInfo.InsCD.Count -1 do
									begin
										if (glCallInsInfo.InsGubun[k] = 'c') and (glCallInsInfo.InsCD[k] = '06') then
										begin
											cxedInsNum.Text := glCallInsInfo.InsNum[k];
											sTmp := glCallInsInfo.InsS[k];
											cxdtInsStart.Text := glCallInsInfo.InsS[k];
											sTmp := glCallInsInfo.InsE[k];
											cxdtInsEnd  .Text := glCallInsInfo.InsE[k];
										end;
									end;
									pnl_DBIns.Visible := False;
								end else
								if ls_Rcrd[58] = 'k' then 	//보험 구분 : 콜당보험
								begin
									chkCallDrive.Hint := 'k';
									chkCallDrive.Checked := True;
									cxcbInsCorper.ItemIndex := 1;

									iCorper := cxcbInsCorper.ItemIndex;

									for k := 0 to glCallInsInfo.InsCD.Count -1 do
									begin
										if (glCallInsInfo.InsGubun[k] = 'k') and (glCallInsInfo.InsCD[k] = '15') then
										begin
											cxedInsNum.Text := glCallInsInfo.InsNum[k];
											sTmp := glCallInsInfo.InsS[k];
											cxdtInsStart.Text := glCallInsInfo.InsS[k];
											sTmp := glCallInsInfo.InsE[k];
											cxdtInsEnd  .Text := glCallInsInfo.InsE[k];
										end;
									end;
									pnl_DBIns.Visible := False;

									//KB (기존step|갱신step)
									slTmp := TStringList.Create;
									Try
										slTmp.Clear;
										slTmp.Delimiter     := '/';
										slTmp.DelimitedText := Trim(ls_Rcrd[87]);
														
										if (slTmp[0] <> '') and (slTmp[1] <> '')then 
											lb_INS_Status.Caption := ls_Rcrd[87]
										else if (slTmp[0] <> '') and (slTmp[1] = '')then 
											lb_INS_Status.Caption := slTmp[0]
										else lb_INS_Status.Caption :=	'';
									Finally
										slTmp.Free;
									End;
								end else
								if ls_Rcrd[58] = 'd' then 	//보험 구분 : 월당보험
								begin
									chkDrive.Checked := True;
									if iRow <> -1 then
										cxcbInsCorper.ItemIndex := iRow
									else
										cxcbInsCorper.ItemIndex := 0;

									iCorper := cxcbInsCorper.ItemIndex;
									pnl_DBIns.Hint := ls_Rcrd[58];//'d';

									for k := 0 to glCallInsInfo.InsCD.Count -1 do
									begin
										if (glCallInsInfo.InsGubun[k] = 'd') and (glCallInsInfo.InsCD[k] = '03') then
										begin
											cxedInsNum.Text := glCallInsInfo.InsNum[k];
											sTmp := glCallInsInfo.InsS[k];
											cxdtInsStart.Text := glCallInsInfo.InsS[k];
											sTmp := glCallInsInfo.InsE[k];
											cxdtInsEnd  .Text := glCallInsInfo.InsE[k];
										end;
									end;
									pnl_DBIns.Visible := True;
									pnl_DBIns.left := 5;
									pnl_DBIns.Top := 5;
									cxcbInsCorper.enabled := False;
									cxedInsNum.enabled := False;
									cxdtInsStart.enabled := False;
									cxdtInsEnd.enabled := False;

									//DB (기존step|갱신step)  		
									slTmp := TStringList.Create;
									Try
										slTmp.Clear;
										slTmp.Delimiter     := '/';
										slTmp.DelimitedText := Trim(ls_Rcrd[88]);
														
										if (slTmp[0] <> '') and (slTmp[1] <> '')then 
											lb_INS_Status.Caption := ls_Rcrd[88]
										else if (slTmp[0] <> '') and (slTmp[1] = '')then 
											lb_INS_Status.Caption := slTmp[0]
										else lb_INS_Status.Caption :=	'';
									Finally
										slTmp.Free;
									End;
								end;
							end else
							begin
								pnl_DBIns.Visible := False;
								chkDrive.Checked := False;
								chkCallDrive.Checked := False;
								chkKidiDrive.Checked := False;
								cxcbInsCorper.ItemIndex := 0;
							end;

							//ls_Rcrd[58] = 'c' 일경우 lb_WKINS_STATUS.Caption = '통과'가 아니면 ls_Rcrd[58]과 상관없이 보험구분은 없음  20160831KHS

							//ls_Rcrd[60] <=카카오설치기사
							//ls_Rcrd[61] <=카카오이용기사
							//기사상태 : 보험료미납(21)일 경우에만 활성화
//											if ls_Rcrd[72] = '21' then cxdtInsStart.Enabled := True else cxdtInsStart.Enabled := False;

							//ls_Rcrd[63] <=셔틀타입
							//ls_Rcrd[64] <=셔틀일반제목
							//ls_Rcrd[65] <=셔틀일반내용
							//ls_Rcrd[66] <=셔틀기동제목
							//ls_Rcrd[67] <=셔틀기동내용

							//ls_Rcrd[70] <= KB콜당보험 상태
							//ls_Rcrd[70] <= KB콜당보험 자동적용일
							//ls_Rcrd[72] <= 기사상태
							//ls_Rcrd[73] wk.INSURANCE_ST_DATE -- 보험시작일
							//ls_Rcrd[74] wk.CONSIGNMENT_ST_DATE -- 탁송보험시작일
							//ls_Rcrd[75] wk.CONSIGNMENT_EXPIRATION -- 탁송만기일
							//ls_Rcrd[76] wk.CONSIGNMENT_CORPER -- 탁송보험사
							//ls_Rcrd[77] wk.GNR_SUB_YN  -- 일반콜 사용여부
							//ls_Rcrd[78]메리츠 콜당보험정보 (구분자) 예) - 보험번호|시작일|만기일
							//ls_Rcrd[79]KB 콜당보험정보(구분자) 예) -  보험번호|시작일|만기일

							//ls_Rcrd[80] wk.wk_ins_cons_type 탁송구분값(n(없음),c(메리츠콜당),k(KB콜당),m(월당)) 분리  기본은 n(없음)
							//ls_Rcrd[81] m.INS_AUTO_DATE --탁송 콜당 자동적용일
							//ls_Rcrd[82] 탁송 콜당메리츠 보험정보
							//ls_Rcrd[83] m.ins_result --탁송 콜당메리츠 심사결과
							//ls_Rcrd[84] 월당 자동적용일
							//ls_Rcrd[85] 월당 DB손보 보험정보
							//ls_Rcrd[86] 월당 DB손보 심사결과
								//ls_Rcrd[87] KB (기존step|갱신step)  												
								//ls_Rcrd[88] DB (기존step|갱신step)  
							//ls_Rcrd[89] 탁송연합기사여부	
							chkTakAlly.Tag := 99;
							if ls_Rcrd[89] = 'y' then		//탁송연합기사여부		
								chkTakAlly.checked := True else chkTakAlly.checked := False;																
							chkTakAlly.Tag := 0;

							//ls_Rcrd[90] MCash 스케줄 코드												
							idx := -1;
							if ls_Rcrd.Count > 90 then
							begin
								idx := slMCashSeq.IndexOf(ls_Rcrd[90]);
								cb_Wor23List.ItemIndex := idx;
							end;
							//ls_Rcrd[96] 현장카드 사용여부
							if ls_Rcrd.Count > 96 then
							begin
								if ls_Rcrd[96] = 'y' then chk_JON01SelfCard.Checked := True
                                     else chk_JON01SelfCard.Checked := False;
							end;

              //ls_Rcrd[97] 업무시작일
							if ls_Rcrd.Count > 97 then
							begin
								if ls_Rcrd[97] = '' then
                   cbWorkStart.Checked := False
                else
                begin
                  cbWorkStart.Checked := True;
   	   						if Length(ls_Rcrd[97]) = 19 then
	   	   						deWorkStart.Text := copy(ls_Rcrd[97],1,10);
                end;
							end;
							//ls_Rcrd[91] 개인보험(보험개발원) INS_STEP	 (보험상태)							
							//ls_Rcrd[92] 개인보험(보험개발원) AGREE_DATE(동의일시)											
							//ls_Rcrd[93] 개인보험(보험개발원) INS_RESULT(심사결과)	
							//ls_Rcrd[94] 개인보험(보험개발원) 보험정보(보험번호|보험시작일|보험종료일)
							//ls_Rcrd[95] 개인보험(보험개발원) 보험사
						end;
					finally
						ls_Rcrd.Free;
						wk_Hplist.Free;
						if GT_USERIF.MultiWorkerCnt <= gUse_Cnt then btn_AddHP.Enabled := False;
					end;
				end;
				Screen.Cursor := crDefault;
      end else
      begin
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
				cxbHpCheck.Tag := 0;
				cxbHpCheck2.Tag := 2;
				cxbHpCheck3.Tag := 3;
      end;
    except
    end;
  finally
    Screen.Cursor := crDefault;
    xdom := Nil;
  end;
end;

procedure TFrm_WOR01.proc_recieve_O(ls_rxxml: Widestring);
var
  xdom: msDomDocument;
  lst_Result, lst_Count: IXMLDomNodeList;
	ls_Rcrd, hpList, wk_Hplist, slTmp : TStringList;
	ls_Msg_Err, sTmp, sWkSabun : string;
	I, j, iCnt, iRow, k, iDx: Integer;
	sMsg, sMsgSub, sHpNO, sSharp, sTmp2 : string;
begin
	xdom := ComsDomDocument.Create;
	Screen.Cursor := crHourGlass;
	try
		try
      if not xdom.loadXML(ls_rxxml) then Exit;

      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
			begin
				if (0 < GetXmlRecordCount(ls_rxxml)) then
				begin
					iFlag := 0;
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					ls_Rcrd := TStringList.Create;
					try
						for i := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							iRow := FBrNoList.IndexOf(ls_Rcrd[0]);

							if iRow <> -1 then cboBranch.ItemIndex := iRow;
							cboBranchClick(cboBranch);
							cboBranch.Enabled := False;                         //지방도 지사변경 불가  Enabled := False 2013.1.8 KHS
							cxBrNo.Text := ls_Rcrd[0];
							Org_BR_NO := ls_Rcrd[0];                                 //원 지사코드 저장 2011.12.19 KHS
							cxHdNo.Text := ls_Rcrd[1];
							Org_HD_NO := ls_Rcrd[1];                                 //원 본사코드 저장 2011.12.19 KHS
							cxedWkSabun.Text := ls_Rcrd[2];
							cxedSabun.Text := ls_Rcrd[4];
							cxedSabun.Hint := ls_Rcrd[4];

							// [hjf] 이름에 "자체사번*이름" 일 경우 구분하여 표시
							if Pos('*', ls_Rcrd[3]) > 0 then
							begin
								edtNameSabun.Text := Copy(ls_Rcrd[3], 1, Pos('*', ls_Rcrd[3])-1);
								cxedName.Text := Copy(ls_Rcrd[3], Pos('*', ls_Rcrd[3]) + 1, Length(ls_Rcrd[3]));
							end else
							begin
								edtNameSabun.Text := '';
								cxedName.Text := ls_Rcrd[3];
							end;

							cxbBrNum.Enabled := False;
							if Length(ls_Rcrd[5]) = 13 then
							begin
								cxedSoNum.Text := Copy(ls_Rcrd[5], 1, 6);
								cxedSoNum1.Text := Copy(ls_Rcrd[5], 7, 7);
								cxedSoNum.Hint := Copy(ls_Rcrd[5], 1, 6);
								cxedSoNum1.Hint := Copy(ls_Rcrd[5], 7, 7);
								cxAge.Caption := func_Age(Copy(ls_Rcrd[5], 1, 6), Copy(ls_Rcrd[5], 7, 7));
							end else
							begin
								cxedSoNum.Text := Copy(ls_Rcrd[5], 1, 6);
								cxedSoNum1.Text := Copy(ls_Rcrd[5], 7, 7);
								cxedSoNum.Hint := Copy(ls_Rcrd[5], 1, 6);
								cxedSoNum1.Hint := Copy(ls_Rcrd[5], 7, 7);
								cxAge.Caption := '';
							end;

							cxrdWoman.Checked := (ls_Rcrd[6] = 'w');
							exedAddr1.Text := ls_Rcrd[7];
							exedAddr2.Text := ls_Rcrd[8];
							edtWorkerZipCode.Text := ls_Rcrd[28];
							if Length(ls_Rcrd[9]) in [10, 11] then
							begin
								iRow := cxcbWkHp.Properties.Items.IndexOf(Copy(ls_Rcrd[9], 1, 3));
								if iRow <> -1 then  cxcbWkHp.ItemIndex := iRow
								else                cxcbWkHp.ItemIndex := 0;
								gsOrgHp := strtocall(Copy(ls_Rcrd[9], 4, Length(ls_Rcrd[9]) - 3));
								edt_WkHp.Text := gsOrgHp;
								edt_WkHp.Hint := edt_WkHp.Text;
								cxcbWkHp_JoinCNT.ItemIndex := 0;
								cxcbWkHp_JoinCNT.Hint := IntToStr(cxcbWkHp_JoinCNT.ItemIndex);
								cxcbWkShareNo.ItemIndex := 0;
								cxcbWkShareNo.Tag := 0;
								edt_Index.text := inttostr(cxcbWkHp_JoinCNT.ItemIndex);
							end else
							if Length(ls_Rcrd[9]) in [12, 13] then
							begin
								iRow := cxcbWkHp.Properties.Items.IndexOf(Copy(ls_Rcrd[9], 1, 3));
								if iRow <> -1 then  cxcbWkHp.ItemIndex := iRow
								else                cxcbWkHp.ItemIndex := 0;
								if Pos('#', ls_Rcrd[9]) > 0 then
								begin
									gsOrgHp := strtocall(Copy(ls_Rcrd[9], 4, Length(ls_Rcrd[9]) - 5));
									edt_WkHp.Text := gsOrgHp;
									edt_WkHp.Hint := edt_WkHp.Text;
									cxcbWkHp_JoinCNT.ItemIndex := cxcbWkHp_JoinCNT.Properties.Items.IndexOf(Copy(ls_Rcrd[9], length(ls_Rcrd[9]) -1, 2));
									cxcbWkHp_JoinCNT.Hint := IntToStr(cxcbWkHp_JoinCNT.ItemIndex);
								end else
								begin
									gsOrgHp := strtocall(Copy(ls_Rcrd[9], 4, Length(ls_Rcrd[9]) - 5));
									edt_WkHp.Text := gsOrgHp;
									edt_WkHp.Hint := edt_WkHp.Text;
								end;
								edt_Index.text := inttostr(cxcbWkHp_JoinCNT.ItemIndex);
							end;
							cxbHpCheck.Enabled := False;
							iRow := slNaviHpCd.IndexOf(ls_Rcrd[10]);
							if iRow <> -1 then
								cboNavi.ItemIndex := iRow
							else
								cboNavi.ItemIndex := 0;
							if Length(ls_Rcrd[11]) > 3 then
							begin
								if Length(ls_Rcrd[11]) = 12 then
								begin
                  if (IsAngelPlusHead(GS_PRJ_AREA = 'S', GT_UserIF.HD)) then
                  begin
                    edtPhone.Text := copy(ls_Rcrd[11], 1, 4);
                  end else
                  begin
                    iRow := cxcbPhone.Properties.Items.IndexOf(copy(ls_Rcrd[11], 1, 4));
                    if iRow <> -1 then
                      cxcbPhone.ItemIndex := iRow
                    else
                      cxcbPhone.ItemIndex := 0;
                  end;
									cxedPhone.Text := strtocall(Copy(ls_Rcrd[11], 5, Length(ls_Rcrd[11]) - 4));
								end else
								begin
                  if (IsAngelPlusHead(GS_PRJ_AREA = 'S', GT_UserIF.HD)) then
                  begin
                    edtPhone.Text := copy(ls_Rcrd[11], 1, 3);
                  end else
                  begin
                    iRow := cxcbPhone.Properties.Items.IndexOf(copy(ls_Rcrd[11], 1, 3));
                    if iRow <> -1 then
                      cxcbPhone.ItemIndex := iRow
                    else
                      cxcbPhone.ItemIndex := 0;
                  end;
									cxedPhone.Text := strtocall(Copy(ls_Rcrd[11], 4, Length(ls_Rcrd[11]) - 3));
								end;
							end;
							cxedTel.Text := strtocall(ls_Rcrd[12]);

							cxedInsNum.Text := ls_Rcrd[14];
							cxedInsNum.Hint := ls_Rcrd[14]; //콜당보험관련-보험번호번호 저장 20160823KHS
							sTmp := ls_Rcrd[15];
							sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
							if Length(sTmp) = 8 then
							begin
								if StrTointDef(sTmp, 0) > 0 then
									sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2)
								else
									sTmp := FormatDateTime('yyyy-mm-dd', Now);
							end
							else
								sTmp := FormatDateTime('yyyy-mm-dd', Now);
							cxdtInsEnd.Text := sTmp;
												
							try
								sTmp := ls_Rcrd[65];
								if Copy(sTmp, 1, 1) <> '0' then
								begin
									sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
									if Length(sTmp) = 8 then
									begin
										sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2);
										cxdtInsStart.Text := sTmp;
									end else
										cxdtInsStart.Text := ''
								end else
									cxdtInsStart.Text := ''
							Except
								cxdtInsStart.Text := ''
							end;
							glCallInsInfo.InsGubun.Clear;
							glCallInsInfo.InsCD .Clear;
							glCallInsInfo.InsNum.Clear;
							glCallInsInfo.InsADate.Clear;
							glCallInsInfo.InsS  .Clear;
							glCallInsInfo.InsE  .Clear;
							glCallInsInfo.InsStatus.Clear;

							glCallInsInfo.InsGubun.Add('m');
							glCallInsInfo.InsCD .Add(ls_Rcrd[13]);
							glCallInsInfo.InsNum.Add(cxedInsNum.Text);
							glCallInsInfo.InsADate.Add('');
							glCallInsInfo.InsS  .Add(cxdtInsStart.Text);
							glCallInsInfo.InsE  .Add(cxdtInsEnd.Text);
							glCallInsInfo.InsStatus.Add('');

							cxedDrvLic.Text := ls_Rcrd[16];
							cxedMemo.Text := ls_Rcrd[17];

							if Trim(ls_Rcrd[18]) <> '' then   //기사메모
							begin
								slTmp := TStringList.Create;
								try
									GetTextSeperationEx2('¶', ls_Rcrd[18], slTmp);
									for j := 0 to slTmp.Count - 1 do
									begin
										if j = 0 then
											cxmmMemo.Text := slTmp[j]
										else
											cxmmMemo.Text := cxmmMemo.Text + #13#10 + slTmp[j];
									end;
								finally
									FreeAndNil(slTmp);
								end;
							end;

							if pos('[본인인증성공]', cxmmMemo.Text) > 0 then
							begin
								cxbSoNumCheck.Tag := 99;
								cxbSoNumCheck.Enabled := False;
								cxmmMemo.Text := StringReplace(cxmmMemo.Text, '[본인인증성공]', '', [rfReplaceAll]);
							end;

							sTmp := ls_Rcrd[19];
							sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
							if Length(sTmp) = 8 then
								sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2)
							else
								sTmp := FormatDateTime('yyyy-mm-dd', Now);
							cxdtReg.Text := sTmp;
							cxdtEnd.Text := ls_Rcrd[20];
							iRow := cxcbAttendArea.Properties.Items.IndexOf(ls_Rcrd[21]);
							if iRow = -1 then
								cxcbAttendArea.ItemIndex := 0
							else
								cxcbAttendArea.ItemIndex := iRow;
							cbbOrderView.ItemIndex := StrToIntDef(ls_Rcrd[22], 1);
							cbbDistanceType.ItemIndex := StrToIntDef(ls_Rcrd[35], 0);

							iRow := slCmdCode.IndexOf(ls_Rcrd[23]);
							if iRow = -1 then
								cxcbComtype.ItemIndex := 0
							else
								cxcbComtype.ItemIndex := iRow;
							cxedFreeCall.Text := ls_Rcrd[24];
							cxedWkBkName.Text := ls_Rcrd[26] + ' [ ' + ls_Rcrd[27] + ' ]';
							if ls_Rcrd.Count > 31 then
								cxedWkBkName2.Text := ls_Rcrd[31] + ' [ ' + ls_Rcrd[32] + ' ]';
							bFileUpload := False;
							bModify := False;
							cxiWkImg.WebPicture.LoadFromURL(proc_HttpGetWorkImageURL(Trim(cxedWkSabun.Text), 'Person'));

							FLicStCd := ls_Rcrd[30];
							cxLblLicSt.Caption := FLicenseCode.Values[FLicStCd];
							edtRealName.Text := ls_Rcrd[29];

							if ls_Rcrd[33] = '-' then
							begin
								cbbPriceBlock.Text := '수정불가';
								cbbPriceBlock.Enabled := False;
							end else
							begin
								cbbPriceBlock.Enabled := True;
								cbbPriceBlock.ItemIndex := IfThen(ls_Rcrd[33] = 'y', 0, 1);
							end;

							if ls_Rcrd[44] = 'y' then        //스틱가능여부
							begin
								chkOnlyAuto.Checked := False
							end else
								chkOnlyAuto.Checked := True;

							//탁송콜당보험 추가
{												if ls_Rcrd[75] = '0' then lb_TakINS_MER_STATUS.Caption := '가입요청' else
							if ls_Rcrd[75] = '1' then lb_TakINS_MER_STATUS.Caption := '통과'     else
							if ls_Rcrd[75] = '2' then lb_TakINS_MER_STATUS.Caption := '거부'     else
							if ls_Rcrd[75] = '3' then lb_TakINS_MER_STATUS.Caption := '심사중'   else
							if ls_Rcrd[75] = '4' then lb_TakINS_MER_STATUS.Caption := '기사정보오류' else
							if ls_Rcrd[75] = '5' then lb_TakINS_MER_STATUS.Caption := '기타'     else
							if ls_Rcrd[75] = '7' then lb_TakINS_MER_STATUS.Caption := '해지요청' else
							if ls_Rcrd[75] = '8' then lb_TakINS_MER_STATUS.Caption := '해지' 		else
							if ls_Rcrd[75] = '9' then lb_TakINS_MER_STATUS.Caption := '미가입'   else lb_TakINS_MER_STATUS.Caption := ls_Rcrd[75] ;
							lb_TakINS_MER_STATUS.Hint := ls_Rcrd[75];

							cxbTakInsranceApply.Enabled := True;
							if (func_CallInsureShareNo(GT_USERIF.ShareNo)) or (lb_TakINS_MER_STATUS.Caption = '통과') then
								cxbTakInsranceApply.Enabled := False
							else
								cxbTakInsranceApply.Enabled := True;
													
							if Length(ls_Rcrd[73]) = 8 then       //탁송콜당보험 자동적용일자
								dt_TakCallInsStartDate.Text := copy(ls_Rcrd[73],1,4) + '-' + copy(ls_Rcrd[73],5,2) + '-' +copy(ls_Rcrd[73],7,2);
}
							glCallInsInfo.InsGubun.Add('tm');
							glCallInsInfo.InsCD .Add(ls_Rcrd[68]); //wk.CONSIGNMENT_CORPER -- 탁송보험사 
							glCallInsInfo.InsNum.Add(ls_Rcrd[60]); //탁송보험번호
							glCallInsInfo.InsADate.Add('');
							sTmp := ls_Rcrd[66]; //ls_Rcrd[66] wk.CONSIGNMENT_ST_DATE -- 탁송보험시작일 
							if Copy(sTmp, 1, 1) <> '0' then
							begin
								sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
								if Length(sTmp) = 8 then
									sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2);
							end;
							glCallInsInfo.InsS  .Add(sTmp);
							sTmp := ls_Rcrd[67];  //ls_Rcrd[67] wk.CONSIGNMENT_EXPIRATION -- 탁송만기일
							if Copy(sTmp, 1, 1) <> '0' then
							begin
								sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
								if Length(sTmp) = 8 then
									sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2);
							end;
							glCallInsInfo.InsE  .Add(sTmp);
							glCallInsInfo.InsStatus.Add('');

							slTmp := TStringList.Create;
							Try
								slTmp.Clear;
								slTmp.Delimiter     := '|';
								slTmp.DelimitedText := ls_Rcrd[74]; //ls_Rcrd[82]메리츠 탁송콜당보험정보 (구분자) 예) - 보험번호|시작일|만기일
															
								glCallInsInfo.InsGubun.Add('tc');
								glCallInsInfo.InsCD .Add('06');
								glCallInsInfo.InsNum.Add(slTmp[0]); 
								sTmp := ls_Rcrd[73]; //ls_Rcrd[73] m.INS_AUTO_DATE --탁송 콜당 자동적용일
								if Copy(sTmp, 1, 1) <> '0' then
								begin
									sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
									if Length(sTmp) = 8 then
										sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2);
								end;
								glCallInsInfo.InsADate.Add(sTmp);
								glCallInsInfo.InsS  .Add(GetStrToDateTimeGStr(slTmp[1], 4));
								glCallInsInfo.InsE  .Add(GetStrToDateTimeGStr(slTmp[2], 4));
								glCallInsInfo.InsStatus.Add(ls_Rcrd[75]);
													
								glCallInsInfo.InsGubun.Add('tk');
								glCallInsInfo.InsCD .Add('15');
								glCallInsInfo.InsNum.Add('');
								glCallInsInfo.InsADate.Add('');
								glCallInsInfo.InsS  .Add('');
								glCallInsInfo.InsE  .Add('');
								glCallInsInfo.InsStatus.Add('');
							Finally
								slTmp.Free
							End;	

							if ls_Rcrd[45] = 'y' then        //탁송가능여부
							begin
								//탁송콜당보험 정보 
  							//ls_Rcrd[72] wk.wk_ins_cons_type 탁송구분값(n(없음),c(메리츠콜당),k(KB콜당),m(월당)) 분리  기본은 n(없음)
	  						//ls_Rcrd[73] m.INS_AUTO_DATE --탁송 콜당 자동적용일
		  					//ls_Rcrd[74] 탁송 콜당메리츠 보험정보
			  				//ls_Rcrd[75] m.ins_result --탁송 콜당메리츠 심사결과

								iDx := glCallInsInfo.InsGubun.indexOf('t'+ls_Rcrd[72]);
								if idx > -1 then
								begin
									edtTakInsNum.Text := glCallInsInfo.InsNum[iDx];
									cxdTaktInsStart.Text := glCallInsInfo.InsS[iDx];
									cxdTaktInsEnd.Text := glCallInsInfo.InsE[iDx];
								end;

								pnl_TakIns.enabled := True;
								if ls_Rcrd[72] = 'm' then
								begin
									modifyChk := True;
									fChk      := True;
									cxlbl4.caption := '동의함';
									cxlbl4.Style.font.style := [fsBold];
									cxlbl4.Style.font.color := clRed;
									edtTakInsNum.enabled := True;
									chkTaksong.Tag := 99;
									chkTaksong.Checked := True;
									chkTaksong.Tag := 0;

									//ls_Rcrd[76] wk.CONSIGNMENT_CORPER -- 탁송보험사

									iRow := slTakInsCode.IndexOf(ls_Rcrd[68]);
									if iRow <> -1 then
										cb_TakInsCorper.ItemIndex := iRow
									else
										cb_TakInsCorper.ItemIndex := 0;

									edtTakInsNum.Text := ls_Rcrd[60]; //탁송보험번호 20170107 KHS
								end;
							end else
							begin
								modifyChk := False;
								fChk      := False;
								cxlbl4.caption := '동의안함';
								cxlbl4.Style.font.style := [];
								cxlbl4.Style.font.color := clBlack;
								edtTakInsNum.enabled := False;
								chkTaksong.Tag := 99;
								chkTaksong.Checked := False;
								chkTaksong.Tag := 0;
								pnl_TakIns.enabled := False;
								edtTakInsNum.Text := ''; //탁송보험번호 20170107 KHS
							end;

							cxTextEdit1.Text := ls_Rcrd[46];

							glCallInsInfo.InsGubun.Add('t');
							glCallInsInfo.InsCD .Add(ls_Rcrd[68]);
							glCallInsInfo.InsNum.Add(edtTakInsNum.Text);
							glCallInsInfo.InsADate.Add('');
							glCallInsInfo.InsS  .Add(GetStrToDateTimeGStr(cxdTaktInsStart.Text, 4));
							glCallInsInfo.InsE  .Add(GetStrToDateTimeGStr(cxdTaktInsEnd.Text, 4));
							glCallInsInfo.InsStatus.Add('');
							sTmp := ls_Rcrd[47];
							sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
							if ( Length(sTmp) = 8 ) And ( Copy(sTmp, 1, 1) <> '0') then
								sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2)
							else
								sTmp := FormatDateTime('yyyy-mm-dd', Now);
							cxdtLinsDate.Text := sTmp;

							if ls_Rcrd.Count > 34 then
								cbbLicType.ItemIndex := cbbLicType.Properties.Items.IndexOf(GetLicTypeValue(ls_Rcrd[34]));

							// 플러스콜 사용여부 체크(지사,본사,연합) 설정값 모두 만족해야 함.
							if ls_Rcrd[43] = 'yyyy' then
							begin
								btnPlusRight.Enabled:= True;
								btnPlusPView.Enabled := True;
								if (ls_Rcrd[36] = '1') or (ls_Rcrd[36] = '2') or (ls_Rcrd[36] = '3') then
								begin
									btnPlusJoin.Enabled := True;
									btnPlusJoin.Caption := '법인기사탈퇴';
									btnPlusCalc.Enabled := True;
									btnPlusLogView.Enabled := True;
									btnPlusRight.Enabled := False;
									btnPlusPView.Enabled := False;
									if ls_Rcrd[36] = '1' then
									begin
										cxtPlusState.Text   := '정상';
									end else
									if ls_Rcrd[36] = '2' then
									begin
										cxtPlusState.Text   := '일시정지';
									end else
									begin
										cxtPlusState.Text   := '정지';
									end;
								end	else
								if ls_Rcrd[36] = '9' then
								begin
									btnPlusJoin.Enabled := false;
									btnPlusJoin.Caption := '법인기사가입';
									cxtPlusState.Text   := '법인기사탈퇴';
									btnPlusRight.Enabled:= True;
									btnPlusPView.Enabled := True;
								end;

								cxtPlusScore.Text   := ls_Rcrd[37];  // 플러스 점수
								cxtPlusPenalty.Text := ls_Rcrd[38];  // 패널티 벌점
								if ls_Rcrd[39] = 'null' then
								begin
									cxtP1.Text := '가입 : -';
								end else
								begin
									cxtP1.Text := '가입 : ' + ls_Rcrd[39];
								end;

								if ls_Rcrd[40] = 'null' then
								begin
									cxtP2.Text := '정지 : -';
								end else
								begin
									cxtP2.Text := '정지 : ' + ls_Rcrd[40];
								end;

								if ls_Rcrd[41] = 'null' then
								begin
									cxtP3.Text := '해제 : -';
								end else
								begin
									cxtP3.Text := '해제 : ' + ls_Rcrd[41];
								end;

								if ls_Rcrd[42] = 'null' then
								begin
									cxtP4.Text := '탈퇴 : -';
								end else
								begin
									cxtP4.Text := '탈퇴 : ' + ls_Rcrd[42];
								end;
							end;

							if Trim(ls_Rcrd[49]) = ''    then cxcbWkShareNo.ItemIndex := 0 else
							if Trim(ls_Rcrd[49]) = 'G70' then cxcbWkShareNo.ItemIndex := 1 else
							if Trim(ls_Rcrd[49]) = 'G71' then cxcbWkShareNo.ItemIndex := 2 else
							if Trim(ls_Rcrd[49]) = 'G72' then cxcbWkShareNo.ItemIndex := 3 else
							if Trim(ls_Rcrd[49]) = 'G73' then cxcbWkShareNo.ItemIndex := 4;
							cxcbWkShareNo.Tag := cxcbWkShareNo.ItemIndex;

							join_Cnt := 0;
							join_Cnt := StrToIntDef(ls_Rcrd[48],0);
							if join_Cnt < 2 then
							begin
								cxcbWkHp_JoinCNT.Enabled := False;
								cxcbWkShareNo.Enabled := False;
							end else
							begin
								cxcbWkHp_JoinCNT.Enabled := True;
								if cxcbWkHp_JoinCNT.ItemIndex > 0 then cxcbWkShareNo.Enabled := True;
							end;

							if ls_Rcrd[50] = ''  then cb_Shuttle_Status.ItemIndex := 0 else
							if ls_Rcrd[50] = 'y' then cb_Shuttle_Status.ItemIndex := 1 else
							if ls_Rcrd[50] = 'n' then cb_Shuttle_Status.ItemIndex := 2;

							cb_Shuttle_Charge.Tag := 1;
							cb_Shuttle_Charge.ItemIndex := StrToIntDef(ls_Rcrd[51],0);
							cb_Shuttle_Charge.Tag := 0;
							iShuttle_Charge := cb_Shuttle_Charge.ItemIndex;
							edt_TagID.Text := Trim(ls_Rcrd[52]);

							cxcbWkmc.ItemIndex := cxcbWkmc.Properties.Items.IndexOf(ls_Rcrd[53]);
							if cxcbWkmc.ItemIndex = -1 then cxcbWkmc.ItemIndex := 0;
					
							if ls_Rcrd[56] = '0' then lb_WKINS_MER_STATUS.Caption := '가입요청' else
							if ls_Rcrd[56] = '1' then lb_WKINS_MER_STATUS.Caption := '통과'     else
							if ls_Rcrd[56] = '2' then lb_WKINS_MER_STATUS.Caption := '거부'     else
							if ls_Rcrd[56] = '3' then lb_WKINS_MER_STATUS.Caption := '심사중'   else
							if ls_Rcrd[56] = '4' then lb_WKINS_MER_STATUS.Caption := '기사정보오류' else
							if ls_Rcrd[56] = '5' then lb_WKINS_MER_STATUS.Caption := '기타'     else
							if ls_Rcrd[56] = '8' then lb_WKINS_MER_STATUS.Caption := '해지요청' else
							if ls_Rcrd[56] = '8' then lb_WKINS_MER_STATUS.Caption := '해지'     else
							if ls_Rcrd[56] = '9' then lb_WKINS_MER_STATUS.Caption := '미가입'   else lb_WKINS_MER_STATUS.Caption := ls_Rcrd[56] ;
							lb_WKINS_MER_STATUS.Hint := ls_Rcrd[56];

							if ls_Rcrd[62] = '0' then lb_WKINS_KB_STATUS.Caption := '가입요청' else
							if ls_Rcrd[62] = '1' then lb_WKINS_KB_STATUS.Caption := '통과'     else
							if ls_Rcrd[62] = '2' then lb_WKINS_KB_STATUS.Caption := '거부'     else
							if ls_Rcrd[62] = '3' then lb_WKINS_KB_STATUS.Caption := '심사중'   else
							if ls_Rcrd[62] = '4' then lb_WKINS_KB_STATUS.Caption := '기사정보오류' else
							if ls_Rcrd[62] = '5' then lb_WKINS_KB_STATUS.Caption := '기타'     else
							if ls_Rcrd[62] = '8' then lb_WKINS_KB_STATUS.Caption := '해지요청' else
							if ls_Rcrd[62] = '8' then lb_WKINS_KB_STATUS.Caption := '해지'     else
							if ls_Rcrd[62] = '9' then lb_WKINS_KB_STATUS.Caption := '미가입'   else lb_WKINS_KB_STATUS.Caption := ls_Rcrd[62] ;
							lb_WKINS_KB_STATUS.Hint := ls_Rcrd[62];

							cxbWKInsranceApply.Enabled := True;
							if (func_CallInsureShareNo(GT_USERIF.ShareNo)) or (lb_WKINS_MER_STATUS.Caption = '통과') then
								cxbWKInsranceApply.Enabled := False
							else
								cxbWKInsranceApply.Enabled := True;

							if Length(ls_Rcrd[59]) = 8 then       //콜당보험 자동적용일자
								cxdCallInsStartDate.Text := copy(ls_Rcrd[59],1,4) + '-' + copy(ls_Rcrd[59],5,2) + '-' +copy(ls_Rcrd[59],7,2);
							dt_CallInsStartDate.Text := cxdCallInsStartDate.Text;
												
							//개인보험(보험개발원)
							//ls_Rcrd[83] 개인보험(보험개발원) INS_STEP	 (보험상태)							
							//ls_Rcrd[84] 개인보험(보험개발원) AGREE_DATE(동의일시)											
							//ls_Rcrd[85] 개인보험(보험개발원) INS_RESULT(심사결과)	
							//ls_Rcrd[86] 개인보험(보험개발원) 보험정보(보험번호|보험시작일|보험종료일)
							//ls_Rcrd[87] 개인보험(보험개발원) 보험사

							//Registered  값이면  동의미진행     Agree이면  동의완료   Ok 정상 20210127 정경석차장 정의
							if ls_Rcrd[83] = 'init'     then lb_WKINS_Kidi_STATUS.Caption := '등록중'           else
							if ls_Rcrd[83] = 'registed' then lb_WKINS_Kidi_STATUS.Caption := '동의미진행'		    else
							if ls_Rcrd[83] = 'agree'    then lb_WKINS_Kidi_STATUS.Caption := '동의완료'         else
							if ls_Rcrd[83] = 'reject'   then lb_WKINS_Kidi_STATUS.Caption := '정보제공동의철회' else
							if ls_Rcrd[83] = 'ok'       then lb_WKINS_Kidi_STATUS.Caption := '보험정상'         else
							if ls_Rcrd[83] = 'expired'  then lb_WKINS_Kidi_STATUS.Caption := '보험만료'         
																					else lb_WKINS_Kidi_STATUS.Caption := ls_Rcrd[83];
							if (ls_Rcrd[83] <> '') then btn_WKKidiApply.Enabled := False else btn_WKKidiApply.Enabled := True;
							if (ls_Rcrd[83] <> '') and (ls_Rcrd[83] <> 'init') then
							begin
								btn_WKKidiSch .Enabled := True;
								btn_WKKidiSync.Enabled := True;
							end;
							if  ls_Rcrd[83] = 'registed'                       then btn_WKKidiSMS.Enabled := True else
              if  ls_Rcrd[83] = 'reject'                         then btn_WKKidiSMS.Enabled := True else
							if (ls_Rcrd[83] = 'agree') or (ls_Rcrd[83] = 'ok') then btn_WKKidiSMS.Enabled := False
																																 else btn_WKKidiSMS.Enabled := False;
							if (ls_Rcrd[83] = 'ok') then
							begin																									 
								btn_WKKidiSch .Enabled := False;
								btn_WKKidiSync.Enabled := True;//신성현 팀장요청 20210405 KHS
							end;
							lb_AgDate.Caption := GetStrToDateTimeGStr(ls_Rcrd[84], 3);

							slTmp := TStringList.Create;
							Try
								slTmp.Clear;
								slTmp.Delimiter     := '|';
								slTmp.DelimitedText := ls_Rcrd[70]; //ls_Rcrd[78]메리츠 콜당보험정보 (구분자) 예) - 보험번호|시작일|만기일
								glCallInsInfo.InsGubun.Add('c');
								glCallInsInfo.InsCD .Add('06');
								glCallInsInfo.InsNum.Add(slTmp[0]);
								glCallInsInfo.InsADate.Add(GetStrToDateTimeGStr(dt_CallInsStartDate.Text, 4));
								glCallInsInfo.InsS  .Add(GetStrToDateTimeGStr(slTmp[1], 4));
								glCallInsInfo.InsE  .Add(GetStrToDateTimeGStr(slTmp[2], 4));
								glCallInsInfo.InsStatus.Add(lb_WKINS_MER_STATUS.Caption);
													
								slTmp.Clear;
								slTmp.Delimiter     := '|';
								slTmp.DelimitedText := ls_Rcrd[71]; //ls_Rcrd[79]KB 콜당보험정보(구분자) 예) -  보험번호|시작일|만기일
								glCallInsInfo.InsGubun.Add('k');
								glCallInsInfo.InsCD .Add('15');
								glCallInsInfo.InsNum.Add(slTmp[0]);
								glCallInsInfo.InsADate.Add('');
								glCallInsInfo.InsS  .Add(GetStrToDateTimeGStr(slTmp[1], 4));
								glCallInsInfo.InsE  .Add(GetStrToDateTimeGStr(slTmp[2], 4));
								glCallInsInfo.InsStatus.Add(lb_WKINS_KB_STATUS.Caption);
													
								slTmp.Clear;
								slTmp.Delimiter     := '|';
								slTmp.DelimitedText := ls_Rcrd[77]; //ls_Rcrd[77]월당 DB손보 보험정보(구분자) 예) -  보험번호|시작일|만기일
								glCallInsInfo.InsGubun.Add('d');
								glCallInsInfo.InsCD .Add('03');
								glCallInsInfo.InsNum.Add(slTmp[0]);
								glCallInsInfo.InsADate.Add('');
								glCallInsInfo.InsS  .Add(GetStrToDateTimeGStr(slTmp[1], 4));
								glCallInsInfo.InsE  .Add(GetStrToDateTimeGStr(slTmp[2], 4));
								if ls_Rcrd[78] = '1' then glCallInsInfo.InsStatus.Add('통과') //ls_Rcrd[78] 월당 DB손보 심사결과   	
								else glCallInsInfo.InsStatus.Add(ls_Rcrd[78]); //ls_Rcrd[78] 월당 DB손보 심사결과   	

								//ls_Rcrd[86] 개인보험(보험개발원) 보험정보(보험번호|보험시작일|보험종료일)
								slTmp.Clear;
								slTmp.Delimiter     := '|';
								slTmp.DelimitedText := ls_Rcrd[86]; 
								glCallInsInfo.InsGubun.Add('b');
								//ls_Rcrd[87] 개인보험(보험개발원) 보험사
								glCallInsInfo.InsCD .Add(ls_Rcrd[87]); 
								glCallInsInfo.InsNum.Add(slTmp[0]);
								glCallInsInfo.InsADate.Add('');
								glCallInsInfo.InsS  .Add(GetStrToDateTimeGStr(slTmp[1], 4));
								glCallInsInfo.InsE  .Add(GetStrToDateTimeGStr(slTmp[2], 4));
								glCallInsInfo.InsStatus.Add(lb_WKINS_Kidi_STATUS.Caption);

							Finally
								slTmp.Free
							End;

							iRow := slInsCode.IndexOf(ls_Rcrd[13]);
							//ls_Rcrd[77] wk.GNR_SUB_YN  -- 일반콜 사용여부
							if ls_Rcrd[69] = 'y' then
							begin
								pnl_DBIns.Hint := '';
								if ls_Rcrd[55] = 'n' then //보험 구분 : 지정안됨
								begin
									chkDrive.Checked := False;
									chkCallDrive.Checked := False;
									cxcbInsCorper.ItemIndex := 0;
									if iRow <> -1 then cxcbInsCorper.ItemIndex := iRow
							                  else cxcbInsCorper.ItemIndex := 0;

									iCorper := cxcbInsCorper.ItemIndex;
									pnl_DBIns.Visible := False;
								end	else
								if ls_Rcrd[55] = 'm' then  //보험 구분 : 월정액
								begin
									chkDrive.Checked := True;
									if iRow <> -1 then cxcbInsCorper.ItemIndex := iRow
                                else cxcbInsCorper.ItemIndex := 0;

									iCorper := cxcbInsCorper.ItemIndex;
									pnl_DBIns.Visible := False;
								end else
								if ls_Rcrd[55] = 'b' then 	//보험 구분 : 개인보험(보험개발원)
								begin
									if lb_WKINS_Kidi_STATUS.Caption = '보험정상' then
									begin
										chkKidiDrive.Hint := 'b';
										chkKidiDrive.Checked := True;

										cxcbInsCorper.Enabled := False; //보험사 없음
										iCorper := cxcbInsCorper.ItemIndex;
															
										for k := 0 to glCallInsInfo.InsCD.Count -1 do
										begin
											if (glCallInsInfo.InsGubun[k] = chkKidiDrive.Hint)then
											begin
												cxedInsNum.Text := glCallInsInfo.InsNum[k]; 
												sTmp := glCallInsInfo.InsS[k];
												cxdtInsStart.Text := glCallInsInfo.InsS[k]; 
												sTmp := glCallInsInfo.InsE[k];
												cxdtInsEnd  .Text := glCallInsInfo.InsE[k]; 
											end;
										end;
										pnl_DBIns.Visible := False;
									end;
								end else
								if ls_Rcrd[55] = 'c' then 	//보험 구분 : 콜당보험
								begin
									chkCallDrive.Hint := 'c';
									chkCallDrive.Checked := True;
									cxcbInsCorper.ItemIndex := 0;
									iCorper := cxcbInsCorper.ItemIndex;
									for k := 0 to glCallInsInfo.InsCD.Count -1 do
									begin
										if (glCallInsInfo.InsGubun[k] = 'c') and (glCallInsInfo.InsCD[k] = '06') then
										begin
											cxedInsNum.Text := glCallInsInfo.InsNum[k];
											sTmp := glCallInsInfo.InsS[k];
											cxdtInsStart.Text := glCallInsInfo.InsS[k];
											sTmp := glCallInsInfo.InsE[k];
											cxdtInsEnd  .Text := glCallInsInfo.InsE[k];
										end;
									end;
									pnl_DBIns.Visible := False;
								end else
								if ls_Rcrd[55] = 'k' then 	//보험 구분 : 콜당보험
								begin
									chkCallDrive.Hint := 'k';
									chkCallDrive.Checked := True;
									cxcbInsCorper.ItemIndex := 1;
									iCorper := cxcbInsCorper.ItemIndex;
									for k := 0 to glCallInsInfo.InsCD.Count -1 do
									begin
										if (glCallInsInfo.InsGubun[k] = 'k') and (glCallInsInfo.InsCD[k] = '15') then
										begin
											cxedInsNum.Text := glCallInsInfo.InsNum[k]; 
											sTmp := glCallInsInfo.InsS[k];
											cxdtInsStart.Text := glCallInsInfo.InsS[k]; 
											sTmp := glCallInsInfo.InsE[k];
											cxdtInsEnd  .Text := glCallInsInfo.InsE[k]; 
										end;
									end;
									pnl_DBIns.Visible := False;

									//KB (기존step|갱신step)
									slTmp := TStringList.Create;
									Try
										slTmp.Clear;
										slTmp.Delimiter     := '/';
										slTmp.DelimitedText := Trim(ls_Rcrd[79]); 
														
										if (slTmp[0] <> '') and (slTmp[1] <> '') then lb_INS_Status.Caption := ls_Rcrd[79] else
                    if (slTmp[0] <> '') and (slTmp[1] = '' ) then lb_INS_Status.Caption := slTmp[0]
                                                             else lb_INS_Status.Caption :=	'';
									Finally
										slTmp.Free;
									End;
								end	else
								if ls_Rcrd[55] = 'd' then 	//보험 구분 : 월당보험
								begin
									chkDrive.Checked := True;
									if iRow <> -1 then cxcbInsCorper.ItemIndex := iRow
                                else cxcbInsCorper.ItemIndex := 0;

									iCorper := cxcbInsCorper.ItemIndex;
									pnl_DBIns.Hint := ls_Rcrd[55];//'d';

									for k := 0 to glCallInsInfo.InsCD.Count -1 do
									begin
										if (glCallInsInfo.InsGubun[k] = 'd') and (glCallInsInfo.InsCD[k] = '03') then
										begin
											cxedInsNum.Text := glCallInsInfo.InsNum[k]; 
											sTmp := glCallInsInfo.InsS[k];
											cxdtInsStart.Text := glCallInsInfo.InsS[k]; 
											sTmp := glCallInsInfo.InsE[k];
											cxdtInsEnd  .Text := glCallInsInfo.InsE[k]; 
										end;
									end;
									pnl_DBIns.Visible := True;
									pnl_DBIns.left := 5;
									pnl_DBIns.Top := 5;
									cxcbInsCorper.enabled := False;
									cxedInsNum.enabled := False;
									cxdtInsStart.enabled := False;
									cxdtInsEnd.enabled := False;

									//DB (기존step|갱신step) 
									slTmp := TStringList.Create;
									Try
										slTmp.Clear;
										slTmp.Delimiter     := '/';
										slTmp.DelimitedText := Trim(ls_Rcrd[80]);

										if (slTmp[0] <> '') and (slTmp[1] <> '') then	lb_INS_Status.Caption := ls_Rcrd[80] else
                    if (slTmp[0] <> '') and (slTmp[1] = '' ) then	lb_INS_Status.Caption := slTmp[0]
										else lb_INS_Status.Caption :=	'';
									Finally
										slTmp.Free;
									End;
								end;
							end	else
							begin
								chkDrive.Checked := False;
								chkCallDrive.Checked := False;
								chkKidiDrive.Checked := False;
								cxcbInsCorper.ItemIndex := 0;
								pnl_DBIns.Visible := False;
							end;
							//ls_Rcrd[57] <=카카오설치기사
							//ls_Rcrd[58] <=카카오이용기사
							//기사상태 : 보험료미납(21)일 경우에만 활성화   >> 보험료미납 자동정산일 항목 사용한함
//  										if ls_Rcrd[64] = '21' then cxdtInsStart.Enabled := True else cxdtInsStart.Enabled := False;

							//ls_Rcrd[62] <= KB콜당보험 상태
							//ls_Rcrd[63] <= KB콜당보험 자동적용일
							//ls_Rcrd[64] <= 기사상태
							//ls_Rcrd[65] wk.INSURANCE_ST_DATE -- 보험시작일 
							//ls_Rcrd[66] wk.CONSIGNMENT_ST_DATE -- 탁송보험시작일 
							//ls_Rcrd[67] wk.CONSIGNMENT_EXPIRATION -- 탁송만기일 
							//ls_Rcrd[68] wk.CONSIGNMENT_CORPER -- 탁송보험사 
							//ls_Rcrd[69] wk.GNR_SUB_YN  -- 일반콜 사용여부 
							//ls_Rcrd[70]메리츠 콜당보험정보 (구분자) 예) - 보험번호|시작일|만기일
							//ls_Rcrd[71]KB 콜당보험정보(구분자) 예) -  보험번호|시작일|만기일
							//ls_Rcrd[72] wk.wk_ins_cons_type 탁송구분값(n(없음),c(메리츠콜당),k(KB콜당),m(월당)) 분리  기본은 n(없음)
							//ls_Rcrd[73] m.INS_AUTO_DATE --탁송 콜당 자동적용일
							//ls_Rcrd[74] 탁송 콜당메리츠 보험정보
							//ls_Rcrd[75] m.ins_result --탁송 콜당메리츠 심사결과   												
							//ls_Rcrd[76] 월당 자동적용일
							//ls_Rcrd[77] 월당 DB손보 보험정보
							//ls_Rcrd[78] 월당 DB손보 심사결과   												
							//ls_Rcrd[79] KB (기존step|갱신step)  												
							//ls_Rcrd[80] DB (기존step|갱신step)  	

							//ls_Rcrd[81] 탁송연합기사여부	
							chkTakAlly.Tag := 99;
							if ls_Rcrd[81] = 'y' then		//탁송연합기사여부
								chkTakAlly.checked := True else chkTakAlly.checked := False;							
							chkTakAlly.Tag := 0;

							//ls_Rcrd[82] MCash 스케줄 코드											
							idx := -1;
							if ls_Rcrd.Count > 82 then
							begin
								idx := slMCashSeq.IndexOf(ls_Rcrd[82]);
								cb_Wor23List.ItemIndex := idx;
							end;
							//ls_Rcrd[88] 현장카드 사용여부
							if ls_Rcrd.Count > 88 then
							begin
								if ls_Rcrd[88] = 'y' then chk_JON01SelfCard.Checked := True
                                     else chk_JON01SelfCard.Checked := False;
							end;

              //ls_Rcrd[89] 업무시작일
							if ls_Rcrd.Count > 89 then
							begin
								if ls_Rcrd[89] = '' then
                   cbWorkStart.Checked := False
                else
                begin
                  cbWorkStart.Checked := True;
   	   						if Length(ls_Rcrd[89]) = 19 then
	   	   						deWorkStart.Text := copy(ls_Rcrd[89],1,10);
                end;
							end;
							//ls_Rcrd[83] 개인보험(보험개발원) INS_STEP	 (보험상태)
							//ls_Rcrd[84] 개인보험(보험개발원) AGREE_DATE(동의일시)
							//ls_Rcrd[85] 개인보험(보험개발원) INS_RESULT(심사결과)
							//ls_Rcrd[86] 개인보험(보험개발원) 보험정보(보험번호|보험시작일|보험종료일)
							//ls_Rcrd[87] 개인보험(보험개발원) 보험사
						end;
					finally
						ls_Rcrd.Free;
						wk_Hplist.Free;

					end;
				end;
				Screen.Cursor := crDefault;
      end else
      begin
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
				cxbHpCheck.Tag := 0;
				cxbHpCheck2.Tag := 2;
				cxbHpCheck3.Tag := 3;
      end;
    except
    end;
  finally
    Screen.Cursor := crDefault;
    xdom := Nil;
	end;
end;

procedure TFrm_WOR01.proc_recieve_O_Jeju(ls_rxxml: Widestring);
var
  xdom: msDomDocument;
  lst_Result, lst_Count: IXMLDomNodeList;
	ls_Rcrd, hpList, wk_Hplist, slTmp : TStringList;
	ls_Msg_Err, sTmp, sWkSabun : string;
	I, j, iCnt, iRow, k, iDx: Integer;
	sMsg, sMsgSub, sHpNO, sSharp, sTmp2 : string;
begin
	xdom := ComsDomDocument.Create;
	Screen.Cursor := crHourGlass;
	try
		try
      if not xdom.loadXML(ls_rxxml) then Exit;

      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
			begin
				if (0 < GetXmlRecordCount(ls_rxxml)) then
				begin
					iFlag := 0;
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					ls_Rcrd := TStringList.Create;
					try
						for i := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							iRow := FBrNoList.IndexOf(ls_Rcrd[0]);

							if iRow <> -1 then cboBranch.ItemIndex := iRow;
							cboBranchClick(cboBranch);
							cboBranch.Enabled := False;                         //지방도 지사변경 불가  Enabled := False 2013.1.8 KHS
							cxBrNo.Text := ls_Rcrd[0];
							Org_BR_NO := ls_Rcrd[0];                                 //원 지사코드 저장 2011.12.19 KHS
							cxHdNo.Text := ls_Rcrd[1];
							Org_HD_NO := ls_Rcrd[1];                                 //원 본사코드 저장 2011.12.19 KHS
							cxedWkSabun.Text := ls_Rcrd[2];
							cxedSabun.Text := ls_Rcrd[4];
							cxedSabun.Hint := ls_Rcrd[4];

							// [hjf] 이름에 "자체사번*이름" 일 경우 구분하여 표시
							if Pos('*', ls_Rcrd[3]) > 0 then
							begin
								edtNameSabun.Text := Copy(ls_Rcrd[3], 1, Pos('*', ls_Rcrd[3])-1);
								cxedName.Text := Copy(ls_Rcrd[3], Pos('*', ls_Rcrd[3]) + 1, Length(ls_Rcrd[3]));
							end else
							begin
								edtNameSabun.Text := '';
								cxedName.Text := ls_Rcrd[3];
							end;

							cxbBrNum.Enabled := False;
							if Length(ls_Rcrd[5]) = 13 then
							begin
								cxedSoNum.Text := Copy(ls_Rcrd[5], 1, 6);
								cxedSoNum1.Text := Copy(ls_Rcrd[5], 7, 7);
								cxedSoNum.Hint := Copy(ls_Rcrd[5], 1, 6);
								cxedSoNum1.Hint := Copy(ls_Rcrd[5], 7, 7);
								cxAge.Caption := func_Age(Copy(ls_Rcrd[5], 1, 6), Copy(ls_Rcrd[5], 7, 7));
							end else
							begin
								cxedSoNum.Text := Copy(ls_Rcrd[5], 1, 6);
								cxedSoNum1.Text := Copy(ls_Rcrd[5], 7, 7);
								cxedSoNum.Hint := Copy(ls_Rcrd[5], 1, 6);
								cxedSoNum1.Hint := Copy(ls_Rcrd[5], 7, 7);
								cxAge.Caption := '';
							end;

							cxrdWoman.Checked := (ls_Rcrd[6] = 'w');
							exedAddr1.Text := ls_Rcrd[7];
							exedAddr2.Text := ls_Rcrd[8];
							edtWorkerZipCode.Text := ls_Rcrd[28];
							if Length(ls_Rcrd[9]) in [10, 11] then
							begin
								iRow := cxcbWkHp.Properties.Items.IndexOf(Copy(ls_Rcrd[9], 1, 3));
								if iRow <> -1 then  cxcbWkHp.ItemIndex := iRow
								else                cxcbWkHp.ItemIndex := 0;
								gsOrgHp := strtocall(Copy(ls_Rcrd[9], 4, Length(ls_Rcrd[9]) - 3));
								edt_WkHp.Text := gsOrgHp;
								edt_WkHp.Hint := edt_WkHp.Text;
								cxcbWkHp_JoinCNT.ItemIndex := 0;
								cxcbWkHp_JoinCNT.Hint := IntToStr(cxcbWkHp_JoinCNT.ItemIndex);
								cxcbWkShareNo.ItemIndex := 0;
								cxcbWkShareNo.Tag := 0;
								edt_Index.text := inttostr(cxcbWkHp_JoinCNT.ItemIndex);
							end else
							if Length(ls_Rcrd[9]) in [12, 13] then
							begin
								iRow := cxcbWkHp.Properties.Items.IndexOf(Copy(ls_Rcrd[9], 1, 3));
								if iRow <> -1 then  cxcbWkHp.ItemIndex := iRow
								else                cxcbWkHp.ItemIndex := 0;
								if Pos('#', ls_Rcrd[9]) > 0 then
								begin
									gsOrgHp := strtocall(Copy(ls_Rcrd[9], 4, Length(ls_Rcrd[9]) - 5));
									edt_WkHp.Text := gsOrgHp;
									edt_WkHp.Hint := edt_WkHp.Text;
									cxcbWkHp_JoinCNT.ItemIndex := cxcbWkHp_JoinCNT.Properties.Items.IndexOf(Copy(ls_Rcrd[9], length(ls_Rcrd[9]) -1, 2));
									cxcbWkHp_JoinCNT.Hint := IntToStr(cxcbWkHp_JoinCNT.ItemIndex);
								end else
								begin
									gsOrgHp := strtocall(Copy(ls_Rcrd[9], 4, Length(ls_Rcrd[9]) - 5));
									edt_WkHp.Text := gsOrgHp;
									edt_WkHp.Hint := edt_WkHp.Text;
								end;
								edt_Index.text := inttostr(cxcbWkHp_JoinCNT.ItemIndex);
							end;
							cxbHpCheck.Enabled := False;
							iRow := slNaviHpCd.IndexOf(ls_Rcrd[10]);
							if iRow <> -1 then
								cboNavi.ItemIndex := iRow
							else
								cboNavi.ItemIndex := 0;
							if Length(ls_Rcrd[11]) > 3 then
							begin
								if Length(ls_Rcrd[11]) = 12 then
								begin
                  if (IsAngelPlusHead(GS_PRJ_AREA = 'S', GT_UserIF.HD)) then
                  begin
                    edtPhone.Text := copy(ls_Rcrd[11], 1, 4);
                  end else
                  begin
                    iRow := cxcbPhone.Properties.Items.IndexOf(copy(ls_Rcrd[11], 1, 4));
                    if iRow <> -1 then
                      cxcbPhone.ItemIndex := iRow
                    else
                      cxcbPhone.ItemIndex := 0;
                  end;
									cxedPhone.Text := strtocall(Copy(ls_Rcrd[11], 5, Length(ls_Rcrd[11]) - 4));
								end else
								begin
                  if (IsAngelPlusHead(GS_PRJ_AREA = 'S', GT_UserIF.HD)) then
                  begin
                    edtPhone.Text := copy(ls_Rcrd[11], 1, 3);
                  end else
                  begin
                    iRow := cxcbPhone.Properties.Items.IndexOf(copy(ls_Rcrd[11], 1, 3));
                    if iRow <> -1 then
                      cxcbPhone.ItemIndex := iRow
                    else
                      cxcbPhone.ItemIndex := 0;
                  end;
									cxedPhone.Text := strtocall(Copy(ls_Rcrd[11], 4, Length(ls_Rcrd[11]) - 3));
								end;
							end;
							cxedTel.Text := strtocall(ls_Rcrd[12]);

							cxedInsNum.Text := ls_Rcrd[14];
							cxedInsNum.Hint := ls_Rcrd[14]; //콜당보험관련-보험번호번호 저장 20160823KHS
							sTmp := ls_Rcrd[15];
							sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
							if Length(sTmp) = 8 then
							begin
								if StrTointDef(sTmp, 0) > 0 then
									sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2)
								else
									sTmp := FormatDateTime('yyyy-mm-dd', Now);
							end
							else
								sTmp := FormatDateTime('yyyy-mm-dd', Now);
							cxdtInsEnd.Text := sTmp;
												
							try
								sTmp := ls_Rcrd[65];
								if Copy(sTmp, 1, 1) <> '0' then
								begin
									sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
									if Length(sTmp) = 8 then
									begin
										sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2);
										cxdtInsStart.Text := sTmp;
									end else
										cxdtInsStart.Text := ''
								end else
									cxdtInsStart.Text := ''
							Except
								cxdtInsStart.Text := ''
							end;
							glCallInsInfo.InsGubun.Clear;
							glCallInsInfo.InsCD .Clear;
							glCallInsInfo.InsNum.Clear;
							glCallInsInfo.InsADate.Clear;
							glCallInsInfo.InsS  .Clear;
							glCallInsInfo.InsE  .Clear;
							glCallInsInfo.InsStatus.Clear;

							glCallInsInfo.InsGubun.Add('m');
							glCallInsInfo.InsCD .Add(ls_Rcrd[13]);
							glCallInsInfo.InsNum.Add(cxedInsNum.Text);
							glCallInsInfo.InsADate.Add('');
							glCallInsInfo.InsS  .Add(cxdtInsStart.Text);
							glCallInsInfo.InsE  .Add(cxdtInsEnd.Text);
							glCallInsInfo.InsStatus.Add('');

							cxedDrvLic.Text := ls_Rcrd[16];
							cxedMemo.Text := ls_Rcrd[17];

							if Trim(ls_Rcrd[18]) <> '' then   //기사메모
							begin
								slTmp := TStringList.Create;
								try
									GetTextSeperationEx2('¶', ls_Rcrd[18], slTmp);
									for j := 0 to slTmp.Count - 1 do
									begin
										if j = 0 then
											cxmmMemo.Text := slTmp[j]
										else
											cxmmMemo.Text := cxmmMemo.Text + #13#10 + slTmp[j];
									end;
								finally
									FreeAndNil(slTmp);
								end;
							end;

							if pos('[본인인증성공]', cxmmMemo.Text) > 0 then
							begin
								cxbSoNumCheck.Tag := 99;
								cxbSoNumCheck.Enabled := False;
								cxmmMemo.Text := StringReplace(cxmmMemo.Text, '[본인인증성공]', '', [rfReplaceAll]);
							end;

							sTmp := ls_Rcrd[19];
							sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
							if Length(sTmp) = 8 then
								sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2)
							else
								sTmp := FormatDateTime('yyyy-mm-dd', Now);
							cxdtReg.Text := sTmp;
							cxdtEnd.Text := ls_Rcrd[20];
							iRow := cxcbAttendArea.Properties.Items.IndexOf(ls_Rcrd[21]);
							if iRow = -1 then
								cxcbAttendArea.ItemIndex := 0
							else
								cxcbAttendArea.ItemIndex := iRow;
							cbbOrderView.ItemIndex := StrToIntDef(ls_Rcrd[22], 1);
							cbbDistanceType.ItemIndex := StrToIntDef(ls_Rcrd[35], 0);

							iRow := slCmdCode.IndexOf(ls_Rcrd[23]);
							if iRow = -1 then
								cxcbComtype.ItemIndex := 0
							else
								cxcbComtype.ItemIndex := iRow;
							cxedFreeCall.Text := ls_Rcrd[24];
							cxedWkBkName.Text := ls_Rcrd[26] + ' [ ' + ls_Rcrd[27] + ' ]';
							if ls_Rcrd.Count > 31 then
								cxedWkBkName2.Text := ls_Rcrd[31] + ' [ ' + ls_Rcrd[32] + ' ]';
							bFileUpload := False;
							bModify := False;
							cxiWkImg.WebPicture.LoadFromURL(proc_HttpGetWorkImageURL(Trim(cxedWkSabun.Text), 'Person'));

							FLicStCd := ls_Rcrd[30];
							cxLblLicSt.Caption := FLicenseCode.Values[FLicStCd];
							edtRealName.Text := ls_Rcrd[29];

							if ls_Rcrd[33] = '-' then
							begin
								cbbPriceBlock.Text := '수정불가';
								cbbPriceBlock.Enabled := False;
							end else
							begin
								cbbPriceBlock.Enabled := True;
								cbbPriceBlock.ItemIndex := IfThen(ls_Rcrd[33] = 'y', 0, 1);
							end;

							if ls_Rcrd[44] = 'y' then        //스틱가능여부
							begin
								chkOnlyAuto.Checked := False
							end else
								chkOnlyAuto.Checked := True;

							//탁송콜당보험 추가
							if ls_Rcrd[75] = '0' then lb_TakINS_MER_STATUS.Caption := '가입요청' else
							if ls_Rcrd[75] = '1' then lb_TakINS_MER_STATUS.Caption := '통과'     else
							if ls_Rcrd[75] = '2' then lb_TakINS_MER_STATUS.Caption := '거부'     else
							if ls_Rcrd[75] = '3' then lb_TakINS_MER_STATUS.Caption := '심사중'   else
							if ls_Rcrd[75] = '4' then lb_TakINS_MER_STATUS.Caption := '기사정보오류' else
							if ls_Rcrd[75] = '5' then lb_TakINS_MER_STATUS.Caption := '기타'     else
							if ls_Rcrd[75] = '7' then lb_TakINS_MER_STATUS.Caption := '해지요청' else
							if ls_Rcrd[75] = '8' then lb_TakINS_MER_STATUS.Caption := '해지' 		else
							if ls_Rcrd[75] = '9' then lb_TakINS_MER_STATUS.Caption := '미가입'   else lb_TakINS_MER_STATUS.Caption := ls_Rcrd[75] ;
							lb_TakINS_MER_STATUS.Hint := ls_Rcrd[75];

							cxbTakInsranceApply.Enabled := True;
							if (func_CallInsureShareNo(GT_USERIF.ShareNo)) or (lb_TakINS_MER_STATUS.Caption = '통과') then
								cxbTakInsranceApply.Enabled := False
							else
								cxbTakInsranceApply.Enabled := True;
													
							if Length(ls_Rcrd[73]) = 8 then       //탁송콜당보험 자동적용일자
								dt_TakCallInsStartDate.Text := copy(ls_Rcrd[73],1,4) + '-' + copy(ls_Rcrd[73],5,2) + '-' +copy(ls_Rcrd[73],7,2);

							glCallInsInfo.InsGubun.Add('tm');
							glCallInsInfo.InsCD .Add(ls_Rcrd[68]); //wk.CONSIGNMENT_CORPER -- 탁송보험사 
							glCallInsInfo.InsNum.Add(ls_Rcrd[60]); //탁송보험번호
							glCallInsInfo.InsADate.Add('');
							sTmp := ls_Rcrd[66]; //ls_Rcrd[66] wk.CONSIGNMENT_ST_DATE -- 탁송보험시작일 
							if Copy(sTmp, 1, 1) <> '0' then
							begin
								sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
								if Length(sTmp) = 8 then
									sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2);
							end;
							glCallInsInfo.InsS  .Add(sTmp);
							sTmp := ls_Rcrd[67];  //ls_Rcrd[67] wk.CONSIGNMENT_EXPIRATION -- 탁송만기일
							if Copy(sTmp, 1, 1) <> '0' then
							begin
								sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
								if Length(sTmp) = 8 then
									sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2);
							end;
							glCallInsInfo.InsE  .Add(sTmp);
							glCallInsInfo.InsStatus.Add('');

							slTmp := TStringList.Create;
							Try
								slTmp.Clear;
								slTmp.Delimiter     := '|';
								slTmp.DelimitedText := ls_Rcrd[74]; //ls_Rcrd[74]메리츠 탁송콜당보험정보 (구분자) 예) - 보험번호|시작일|만기일
															
								glCallInsInfo.InsGubun.Add('tc');
								glCallInsInfo.InsCD .Add('06');
								glCallInsInfo.InsNum.Add(slTmp[0]); 
								sTmp := ls_Rcrd[73]; //ls_Rcrd[73] m.INS_AUTO_DATE --탁송 콜당 자동적용일
								if Copy(sTmp, 1, 1) <> '0' then
								begin
									sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
									if Length(sTmp) = 8 then
										sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2);
								end;
								glCallInsInfo.InsADate.Add(sTmp);
								glCallInsInfo.InsS  .Add(GetStrToDateTimeGStr(slTmp[1], 4));
								glCallInsInfo.InsE  .Add(GetStrToDateTimeGStr(slTmp[2], 4));
								glCallInsInfo.InsStatus.Add(lb_TakINS_MER_STATUS.Caption);
													
								glCallInsInfo.InsGubun.Add('tk');
								glCallInsInfo.InsCD .Add('15');
								glCallInsInfo.InsNum.Add('');
								glCallInsInfo.InsADate.Add('');
								glCallInsInfo.InsS  .Add('');
								glCallInsInfo.InsE  .Add('');
								glCallInsInfo.InsStatus.Add('');
							Finally
								slTmp.Free
							End;	

							if ls_Rcrd[45] = 'y' then        //탁송가능여부
							begin
								//탁송콜당보험 정보 
							//ls_Rcrd[72] wk.wk_ins_cons_type 탁송구분값(n(없음),c(메리츠콜당),k(KB콜당),m(월당)) 분리  기본은 n(없음)
							//ls_Rcrd[73] m.INS_AUTO_DATE --탁송 콜당 자동적용일
							//ls_Rcrd[74] 탁송 콜당메리츠 보험정보
							//ls_Rcrd[75] m.ins_result --탁송 콜당메리츠 심사결과   												

								iDx := glCallInsInfo.InsGubun.indexOf('t'+ls_Rcrd[72]);
								if idx > -1 then
								begin
									edtTakInsNum.Text := glCallInsInfo.InsNum[iDx];
									cxdTaktInsStart.Text := glCallInsInfo.InsS[iDx];
									cxdTaktInsEnd.Text := glCallInsInfo.InsE[iDx];
								end;

								pnl_TakIns.enabled := True;
								if ls_Rcrd[72] = 'm' then
								begin
									modifyChk := True;
									fChk      := True;
									cxlbl4.caption := '동의함';
									cxlbl4.Style.font.style := [fsBold];
									cxlbl4.Style.font.color := clRed;
									edtTakInsNum.enabled := True;
									chkTaksong.Tag := 99;
									chkTaksong.Checked := True;
									chkTaksong.Tag := 0;
														
									//ls_Rcrd[76] wk.CONSIGNMENT_CORPER -- 탁송보험사 
{
									if (chkTaksong.Checked) and 
										 ((GetLicTypeCode(cbbLicType.Text) = '10') or (GetLicTypeCode(cbbLicType.Text) = '11') or   //1종대형, 1종보통
											(GetLicTypeCode(cbbLicType.Text) = '13') or (GetLicTypeCode(cbbLicType.Text) = '20') or   //1종특수, 2종보통
											(GetLicTypeCode(cbbLicType.Text) = '30')) then //1종대형특수 
									begin
										chkTakHwak.Visible := True;
										if ls_Rcrd[69] = 'y' then chkTakHwak.Checked := True else chkTakHwak.Checked := False;
										chkTakHwak.Hint := ls_Rcrd[69]; 
									end
									else
									begin
										chkTakHwak.Visible := False;
										chkTakHwak.Checked := False; 
										chkTakHwak.Hint := '';
									end; }      //탁확은 지방사용안함.

									iRow := slTakInsCode.IndexOf(ls_Rcrd[68]);
									if iRow <> -1 then
										cb_TakInsCorper.ItemIndex := iRow
									else
										cb_TakInsCorper.ItemIndex := 0;													

									edtTakInsNum.Text := ls_Rcrd[60]; //탁송보험번호 20170107 KHS
								end else
							//ls_Rcrd[72] wk.wk_ins_cons_type 탁송구분값(n(없음),c(메리츠콜당),k(KB콜당),m(월당)) 분리  기본은 n(없음)
							//ls_Rcrd[73] m.INS_AUTO_DATE --탁송 콜당 자동적용일
							//ls_Rcrd[74] 탁송 콜당메리츠 보험정보
							//ls_Rcrd[75] m.ins_result --탁송 콜당메리츠 심사결과   												
								if ls_Rcrd[72] = 'c' then
								begin
									modifyChk := True;
									fChk      := True;
									edtTakInsNum.enabled := True;
									chkTakCall.Hint := 'tc';
									chkTakCall.Checked := True;
									chkTakCall.Tag := 0;
//									chkTakHwak.Visible := False;
//									chkTakHwak.Checked := False;
//									chkTakHwak.Hint := '';
								end else
								if ls_Rcrd[72] = 'k' then
								begin
													
								end;
							end else
							begin
								modifyChk := False;
								fChk      := False;
								cxlbl4.caption := '동의안함';
								cxlbl4.Style.font.style := [];
								cxlbl4.Style.font.color := clBlack;
								edtTakInsNum.enabled := False;
								chkTaksong.Tag := 99;
								chkTaksong.Checked := False;
								chkTaksong.Tag := 0;
//								pnl_TakIns.enabled := False;
								edtTakInsNum.Text := ''; //탁송보험번호 20170107 KHS	
							end;

							cxTextEdit1.Text := ls_Rcrd[46];

							glCallInsInfo.InsGubun.Add('t');
							glCallInsInfo.InsCD .Add(ls_Rcrd[68]);
							glCallInsInfo.InsNum.Add(edtTakInsNum.Text);
							glCallInsInfo.InsADate.Add('');
							glCallInsInfo.InsS  .Add(GetStrToDateTimeGStr(cxdTaktInsStart.Text, 4));
							glCallInsInfo.InsE  .Add(GetStrToDateTimeGStr(cxdTaktInsEnd.Text, 4));
							glCallInsInfo.InsStatus.Add('');
							try
								sTmp := ls_Rcrd[47];
								sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
								if ( Length(sTmp) = 8 ) And ( Copy(sTmp, 1, 1) <> '0') then
									sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2)
								else
									sTmp := FormatDateTime('yyyy-mm-dd', Now);
								cxdtLinsDate.Text := sTmp;
							Except
								cxdtLinsDate.Text := ''
							end;

							if ls_Rcrd.Count > 34 then
								cbbLicType.ItemIndex := cbbLicType.Properties.Items.IndexOf(GetLicTypeValue(ls_Rcrd[34]));
													
							// 플러스콜 사용여부 체크(지사,본사,연합) 설정값 모두 만족해야 함.
							if ls_Rcrd[43] = 'yyyy' then
							begin
								btnPlusRight.Enabled:= True;
								btnPlusPView.Enabled := True;

								if (ls_Rcrd[36] = '1') or (ls_Rcrd[36] = '2') or (ls_Rcrd[36] = '3') then
								begin
									btnPlusJoin.Enabled := True;
									btnPlusJoin.Caption := '법인기사탈퇴';
									btnPlusCalc.Enabled := True;
									btnPlusLogView.Enabled := True;
									btnPlusRight.Enabled := False;
									btnPlusPView.Enabled := False;
									if ls_Rcrd[36] = '1' then
									begin
										cxtPlusState.Text   := '정상';
									end else
									if ls_Rcrd[36] = '2' then
									begin
										cxtPlusState.Text   := '일시정지';
									end else
									begin
										cxtPlusState.Text   := '정지';
									end;
								end	else
								if ls_Rcrd[36] = '9' then
								begin
									btnPlusJoin.Enabled := false;
									btnPlusJoin.Caption := '법인기사가입';
									cxtPlusState.Text   := '법인기사탈퇴';
									btnPlusRight.Enabled:= True;
									btnPlusPView.Enabled := True;
								end;

								cxtPlusScore.Text   := ls_Rcrd[37];  // 플러스 점수
								cxtPlusPenalty.Text := ls_Rcrd[38];  // 패널티 벌점
								if ls_Rcrd[39] = 'null' then
								begin
									cxtP1.Text := '가입 : -';
								end else
								begin
									cxtP1.Text := '가입 : ' + ls_Rcrd[39];
								end;

								if ls_Rcrd[40] = 'null' then
								begin
									cxtP2.Text := '정지 : -';
								end else
								begin
									cxtP2.Text := '정지 : ' + ls_Rcrd[40];
								end;

								if ls_Rcrd[41] = 'null' then
								begin
									cxtP3.Text := '해제 : -';
								end else
								begin
									cxtP3.Text := '해제 : ' + ls_Rcrd[41];
								end;

								if ls_Rcrd[42] = 'null' then
								begin
									cxtP4.Text := '탈퇴 : -';
								end else
								begin
									cxtP4.Text := '탈퇴 : ' + ls_Rcrd[42];
								end;
							end;

							if Trim(ls_Rcrd[49]) = ''    then cxcbWkShareNo.ItemIndex := 0 else
							if Trim(ls_Rcrd[49]) = 'G70' then cxcbWkShareNo.ItemIndex := 1 else
							if Trim(ls_Rcrd[49]) = 'G71' then cxcbWkShareNo.ItemIndex := 2 else
							if Trim(ls_Rcrd[49]) = 'G72' then cxcbWkShareNo.ItemIndex := 3 else
							if Trim(ls_Rcrd[49]) = 'G73' then cxcbWkShareNo.ItemIndex := 4;
							cxcbWkShareNo.Tag := cxcbWkShareNo.ItemIndex;

							join_Cnt := 0;
							join_Cnt := StrToIntDef(ls_Rcrd[48],0);
							if join_Cnt < 2 then
							begin
								cxcbWkHp_JoinCNT.Enabled := False;
								cxcbWkShareNo.Enabled := False;
							end else
							begin
								cxcbWkHp_JoinCNT.Enabled := True;
								if cxcbWkHp_JoinCNT.ItemIndex > 0 then cxcbWkShareNo.Enabled := True;
							end;

							if ls_Rcrd[50] = ''  then cb_Shuttle_Status.ItemIndex := 0 else
							if ls_Rcrd[50] = 'y' then cb_Shuttle_Status.ItemIndex := 1 else
							if ls_Rcrd[50] = 'n' then cb_Shuttle_Status.ItemIndex := 2;

							cb_Shuttle_Charge.Tag := 1;
							cb_Shuttle_Charge.ItemIndex := StrToIntDef(ls_Rcrd[51],0);
							cb_Shuttle_Charge.Tag := 0;
							iShuttle_Charge := cb_Shuttle_Charge.ItemIndex;
							edt_TagID.Text := Trim(ls_Rcrd[52]);

							cxcbWkmc.ItemIndex := cxcbWkmc.Properties.Items.IndexOf(ls_Rcrd[53]);
							if cxcbWkmc.ItemIndex = -1 then cxcbWkmc.ItemIndex := 0;
					
							if ls_Rcrd[56] = '0' then lb_WKINS_MER_STATUS.Caption := '가입요청' else
							if ls_Rcrd[56] = '1' then lb_WKINS_MER_STATUS.Caption := '통과'     else
							if ls_Rcrd[56] = '2' then lb_WKINS_MER_STATUS.Caption := '거부'     else
							if ls_Rcrd[56] = '3' then lb_WKINS_MER_STATUS.Caption := '심사중'   else
							if ls_Rcrd[56] = '4' then lb_WKINS_MER_STATUS.Caption := '기사정보오류' else
							if ls_Rcrd[56] = '5' then lb_WKINS_MER_STATUS.Caption := '기타'     else
							if ls_Rcrd[56] = '8' then lb_WKINS_MER_STATUS.Caption := '해지요청' else
							if ls_Rcrd[56] = '8' then lb_WKINS_MER_STATUS.Caption := '해지'     else
							if ls_Rcrd[56] = '9' then lb_WKINS_MER_STATUS.Caption := '미가입'   else lb_WKINS_MER_STATUS.Caption := ls_Rcrd[56] ;
							lb_WKINS_MER_STATUS.Hint := ls_Rcrd[56];

							if ls_Rcrd[62] = '0' then lb_WKINS_KB_STATUS.Caption := '가입요청' else
							if ls_Rcrd[62] = '1' then lb_WKINS_KB_STATUS.Caption := '통과'     else
							if ls_Rcrd[62] = '2' then lb_WKINS_KB_STATUS.Caption := '거부'     else
							if ls_Rcrd[62] = '3' then lb_WKINS_KB_STATUS.Caption := '심사중'   else
							if ls_Rcrd[62] = '4' then lb_WKINS_KB_STATUS.Caption := '기사정보오류' else
							if ls_Rcrd[62] = '5' then lb_WKINS_KB_STATUS.Caption := '기타'     else
							if ls_Rcrd[62] = '8' then lb_WKINS_KB_STATUS.Caption := '해지요청' else
							if ls_Rcrd[62] = '8' then lb_WKINS_KB_STATUS.Caption := '해지'     else
							if ls_Rcrd[62] = '9' then lb_WKINS_KB_STATUS.Caption := '미가입'   else lb_WKINS_KB_STATUS.Caption := ls_Rcrd[62] ;
							lb_WKINS_KB_STATUS.Hint := ls_Rcrd[62];

							cxbWKInsranceApply.Enabled := True;
							if (func_CallInsureShareNo(GT_USERIF.ShareNo)) or (lb_WKINS_MER_STATUS.Caption = '통과') then
								cxbWKInsranceApply.Enabled := False
							else
								cxbWKInsranceApply.Enabled := True;
//												dt_CallInsStartDate.Enabled := cxbWKInsranceApply.Enabled;

							if Length(ls_Rcrd[59]) = 8 then       //콜당보험 자동적용일자
								cxdCallInsStartDate.Text := copy(ls_Rcrd[59],1,4) + '-' + copy(ls_Rcrd[59],5,2) + '-' +copy(ls_Rcrd[59],7,2);
							dt_CallInsStartDate.Text := cxdCallInsStartDate.Text;
												
							//개인보험(보험개발원)
							//ls_Rcrd[83] 개인보험(보험개발원) INS_STEP	 (보험상태)
							//ls_Rcrd[84] 개인보험(보험개발원) AGREE_DATE(동의일시)
							//ls_Rcrd[85] 개인보험(보험개발원) INS_RESULT(심사결과)	
							//ls_Rcrd[86] 개인보험(보험개발원) 보험정보(보험번호|보험시작일|보험종료일)
							//ls_Rcrd[87] 개인보험(보험개발원) 보험사
							
							//Registered  값이면  동의미진행     Agree이면  동의완료   Ok 정상 20210127 정경석차장 정의
							if ls_Rcrd[83] = 'init'     then lb_WKINS_Kidi_STATUS.Caption := '등록중'           else
							if ls_Rcrd[83] = 'registed' then lb_WKINS_Kidi_STATUS.Caption := '동의미진행'		    else
							if ls_Rcrd[83] = 'agree'    then lb_WKINS_Kidi_STATUS.Caption := '동의완료'         else
							if ls_Rcrd[83] = 'reject'   then lb_WKINS_Kidi_STATUS.Caption := '정보제공동의철회' else
							if ls_Rcrd[83] = 'ok'       then lb_WKINS_Kidi_STATUS.Caption := '보험정상'         else
							if ls_Rcrd[83] = 'expired'  then lb_WKINS_Kidi_STATUS.Caption := '보험만료'         
																					else lb_WKINS_Kidi_STATUS.Caption := ls_Rcrd[83];
							if (ls_Rcrd[83] <> '') then btn_WKKidiApply.Enabled := False else btn_WKKidiApply.Enabled := True;
							if (ls_Rcrd[83] <> '') and (ls_Rcrd[83] <> 'init') then
							begin
								btn_WKKidiSch .Enabled := True;	
								btn_WKKidiSync.Enabled := True;	
							end;
							if  ls_Rcrd[83] = 'registed'                       then btn_WKKidiSMS.Enabled := True else
              if  ls_Rcrd[83] = 'reject'                         then btn_WKKidiSMS.Enabled := True else
							if (ls_Rcrd[83] = 'agree') or (ls_Rcrd[83] = 'ok') then btn_WKKidiSMS.Enabled := False 
																																 else btn_WKKidiSMS.Enabled := False;
							if (ls_Rcrd[83] = 'ok') then
							begin																									 
								btn_WKKidiSch .Enabled := False;
								btn_WKKidiSync.Enabled := True;  //신성현 팀장요청 20210405 KHS
							end;
							lb_AgDate.Caption := GetStrToDateTimeGStr(ls_Rcrd[84], 3);

							slTmp := TStringList.Create;
							Try
								slTmp.Clear;
								slTmp.Delimiter     := '|';
								slTmp.DelimitedText := ls_Rcrd[70]; //ls_Rcrd[78]메리츠 콜당보험정보 (구분자) 예) - 보험번호|시작일|만기일
								glCallInsInfo.InsGubun.Add('c');
								glCallInsInfo.InsCD .Add('06');
								glCallInsInfo.InsNum.Add(slTmp[0]);
								glCallInsInfo.InsADate.Add(GetStrToDateTimeGStr(dt_CallInsStartDate.Text, 4));
								glCallInsInfo.InsS  .Add(GetStrToDateTimeGStr(slTmp[1], 4));
								glCallInsInfo.InsE  .Add(GetStrToDateTimeGStr(slTmp[2], 4));
								glCallInsInfo.InsStatus.Add(lb_WKINS_MER_STATUS.Caption);
													
								slTmp.Clear;
								slTmp.Delimiter     := '|';
								slTmp.DelimitedText := ls_Rcrd[71]; //ls_Rcrd[79]KB 콜당보험정보(구분자) 예) -  보험번호|시작일|만기일
								glCallInsInfo.InsGubun.Add('k');
								glCallInsInfo.InsCD .Add('15');
								glCallInsInfo.InsNum.Add(slTmp[0]);
								glCallInsInfo.InsADate.Add('');
								glCallInsInfo.InsS  .Add(GetStrToDateTimeGStr(slTmp[1], 4));
								glCallInsInfo.InsE  .Add(GetStrToDateTimeGStr(slTmp[2], 4));
								glCallInsInfo.InsStatus.Add(lb_WKINS_KB_STATUS.Caption);
													
								slTmp.Clear;
								slTmp.Delimiter     := '|';
								slTmp.DelimitedText := ls_Rcrd[77]; //ls_Rcrd[77]월당 DB손보 보험정보(구분자) 예) -  보험번호|시작일|만기일
								glCallInsInfo.InsGubun.Add('d');
								glCallInsInfo.InsCD .Add('03');
								glCallInsInfo.InsNum.Add(slTmp[0]);
								glCallInsInfo.InsADate.Add('');
								glCallInsInfo.InsS  .Add(GetStrToDateTimeGStr(slTmp[1], 4));
								glCallInsInfo.InsE  .Add(GetStrToDateTimeGStr(slTmp[2], 4));
								if ls_Rcrd[78] = '1' then glCallInsInfo.InsStatus.Add('통과') //ls_Rcrd[78] 월당 DB손보 심사결과   	
								else glCallInsInfo.InsStatus.Add(ls_Rcrd[78]); //ls_Rcrd[78] 월당 DB손보 심사결과   	

								//ls_Rcrd[86] 개인보험(보험개발원) 보험정보(보험번호|보험시작일|보험종료일)
								slTmp.Clear;
								slTmp.Delimiter     := '|';
								slTmp.DelimitedText := ls_Rcrd[86]; 
								glCallInsInfo.InsGubun.Add('b');
								//ls_Rcrd[87] 개인보험(보험개발원) 보험사
								glCallInsInfo.InsCD .Add(ls_Rcrd[87]); 
								glCallInsInfo.InsNum.Add(slTmp[0]);
								glCallInsInfo.InsADate.Add('');
								glCallInsInfo.InsS  .Add(GetStrToDateTimeGStr(slTmp[1], 4));
								glCallInsInfo.InsE  .Add(GetStrToDateTimeGStr(slTmp[2], 4));
								glCallInsInfo.InsStatus.Add(lb_WKINS_Kidi_STATUS.Caption);

							Finally
								slTmp.Free
							End;												

							iRow := slInsCode.IndexOf(ls_Rcrd[13]);
							//ls_Rcrd[77] wk.GNR_SUB_YN  -- 일반콜 사용여부
							if ls_Rcrd[69] = 'y' then
							begin
								pnl_DBIns.Hint := '';
								if ls_Rcrd[55] = 'n' then //보험 구분 : 지정안됨
								begin
									chkDrive.Checked := False;
									chkCallDrive.Checked := False;
									cxcbInsCorper.ItemIndex := 0;
									if iRow <> -1 then
										cxcbInsCorper.ItemIndex := iRow
									else
										cxcbInsCorper.ItemIndex := 0;

									iCorper := cxcbInsCorper.ItemIndex;
									pnl_DBIns.Visible := False;
								end
								else
								if ls_Rcrd[55] = 'm' then  //보험 구분 : 월정액
								begin
									chkDrive.Checked := True;
									if iRow <> -1 then
										cxcbInsCorper.ItemIndex := iRow
									else
										cxcbInsCorper.ItemIndex := 0;

									iCorper := cxcbInsCorper.ItemIndex;
									pnl_DBIns.Visible := False;
								end else
								if ls_Rcrd[55] = 'b' then 	//보험 구분 : 개인보험(보험개발원)
								begin
									if lb_WKINS_Kidi_STATUS.Caption = '보험정상' then
									begin
										chkKidiDrive.Hint := 'b';
										chkKidiDrive.Checked := True;

										cxcbInsCorper.Enabled := False; //보험사 없음
										iCorper := cxcbInsCorper.ItemIndex;
															
										for k := 0 to glCallInsInfo.InsCD.Count -1 do
										begin
											if (glCallInsInfo.InsGubun[k] = chkKidiDrive.Hint)then
											begin
												cxedInsNum.Text := glCallInsInfo.InsNum[k]; 
												sTmp := glCallInsInfo.InsS[k];
												cxdtInsStart.Text := glCallInsInfo.InsS[k]; 
												sTmp := glCallInsInfo.InsE[k];
												cxdtInsEnd  .Text := glCallInsInfo.InsE[k]; 
											end;
										end;
										pnl_DBIns.Visible := False;
									end;

								end else
								if ls_Rcrd[55] = 'c' then 	//보험 구분 : 콜당보험
								begin
									chkCallDrive.Hint := 'c';
									chkCallDrive.Checked := True;

									cxcbInsCorper.ItemIndex := 0;

									iCorper := cxcbInsCorper.ItemIndex;

															
									for k := 0 to glCallInsInfo.InsCD.Count -1 do
									begin
										if (glCallInsInfo.InsGubun[k] = 'c') and (glCallInsInfo.InsCD[k] = '06') then
										begin
											cxedInsNum.Text := glCallInsInfo.InsNum[k]; 
											sTmp := glCallInsInfo.InsS[k];
											cxdtInsStart.Text := glCallInsInfo.InsS[k]; 
											sTmp := glCallInsInfo.InsE[k];
											cxdtInsEnd  .Text := glCallInsInfo.InsE[k]; 
										end;
									end;
									pnl_DBIns.Visible := False;
								end
								else
								if ls_Rcrd[55] = 'k' then 	//보험 구분 : 콜당보험
								begin
									chkCallDrive.Hint := 'k';
									chkCallDrive.Checked := True;
									cxcbInsCorper.ItemIndex := 1;

									iCorper := cxcbInsCorper.ItemIndex;
									for k := 0 to glCallInsInfo.InsCD.Count -1 do
									begin
										if (glCallInsInfo.InsGubun[k] = 'k') and (glCallInsInfo.InsCD[k] = '15') then
										begin
											cxedInsNum.Text := glCallInsInfo.InsNum[k]; 
											sTmp := glCallInsInfo.InsS[k];
											cxdtInsStart.Text := glCallInsInfo.InsS[k]; 
											sTmp := glCallInsInfo.InsE[k];
											cxdtInsEnd  .Text := glCallInsInfo.InsE[k]; 
										end;
									end;
									pnl_DBIns.Visible := False;

									//KB (기존step|갱신step)
									slTmp := TStringList.Create;
									Try
										slTmp.Clear;
										slTmp.Delimiter     := '/';
										slTmp.DelimitedText := Trim(ls_Rcrd[79]); 
														
										if (slTmp[0] <> '') and (slTmp[1] <> '')then 
											lb_INS_Status.Caption := ls_Rcrd[79] 
										else if (slTmp[0] <> '') and (slTmp[1] = '')then 
											lb_INS_Status.Caption := slTmp[0] 
										else lb_INS_Status.Caption :=	'';
									Finally
										slTmp.Free;
									End;
								end
								else
								if ls_Rcrd[55] = 'd' then 	//보험 구분 : 월당보험
								begin
									chkDrive.Checked := True;
									if iRow <> -1 then
										cxcbInsCorper.ItemIndex := iRow
									else
										cxcbInsCorper.ItemIndex := 0;

									iCorper := cxcbInsCorper.ItemIndex;
									pnl_DBIns.Hint := ls_Rcrd[55];//'d';

									for k := 0 to glCallInsInfo.InsCD.Count -1 do
									begin
										if (glCallInsInfo.InsGubun[k] = 'd') and (glCallInsInfo.InsCD[k] = '03') then
										begin
											cxedInsNum.Text := glCallInsInfo.InsNum[k]; 
											sTmp := glCallInsInfo.InsS[k];
											cxdtInsStart.Text := glCallInsInfo.InsS[k]; 
											sTmp := glCallInsInfo.InsE[k];
											cxdtInsEnd  .Text := glCallInsInfo.InsE[k]; 
										end;
									end;
									pnl_DBIns.Visible := True;
									pnl_DBIns.left := 5;
									pnl_DBIns.Top := 5;
									cxcbInsCorper.enabled := False;
									cxedInsNum.enabled := False;
									cxdtInsStart.enabled := False;
									cxdtInsEnd.enabled := False;

									//DB (기존step|갱신step) 
									slTmp := TStringList.Create;
									Try
										slTmp.Clear;
										slTmp.Delimiter     := '/';
										slTmp.DelimitedText := Trim(ls_Rcrd[80]);
														
										if (slTmp[0] <> '') and (slTmp[1] <> '')then 
											lb_INS_Status.Caption := ls_Rcrd[80]
										else if (slTmp[0] <> '') and (slTmp[1] = '')then 
											lb_INS_Status.Caption := slTmp[0]
										else lb_INS_Status.Caption :=	'';
									Finally
										slTmp.Free;
									End;
								end;
							end	else
							begin
								chkDrive.Checked := False;
								chkCallDrive.Checked := False;
								chkKidiDrive.Checked := False;
								cxcbInsCorper.ItemIndex := 0;
								pnl_DBIns.Visible := False;
							end;
							//ls_Rcrd[57] <=카카오설치기사
							//ls_Rcrd[58] <=카카오이용기사
							//기사상태 : 보험료미납(21)일 경우에만 활성화   >> 보험료미납 자동정산일 항목 사용한함
//  										if ls_Rcrd[64] = '21' then cxdtInsStart.Enabled := True else cxdtInsStart.Enabled := False;

							//ls_Rcrd[62] <= KB콜당보험 상태
							//ls_Rcrd[63] <= KB콜당보험 자동적용일
							//ls_Rcrd[64] <= 기사상태
							//ls_Rcrd[65] wk.INSURANCE_ST_DATE -- 보험시작일 
							//ls_Rcrd[66] wk.CONSIGNMENT_ST_DATE -- 탁송보험시작일 
							//ls_Rcrd[67] wk.CONSIGNMENT_EXPIRATION -- 탁송만기일 
							//ls_Rcrd[68] wk.CONSIGNMENT_CORPER -- 탁송보험사 
							//ls_Rcrd[69] wk.GNR_SUB_YN  -- 일반콜 사용여부 
							//ls_Rcrd[70]메리츠 콜당보험정보 (구분자) 예) - 보험번호|시작일|만기일
							//ls_Rcrd[71]KB 콜당보험정보(구분자) 예) -  보험번호|시작일|만기일
							//ls_Rcrd[72] wk.wk_ins_cons_type 탁송구분값(n(없음),c(메리츠콜당),k(KB콜당),m(월당)) 분리  기본은 n(없음)
							//ls_Rcrd[73] m.INS_AUTO_DATE --탁송 콜당 자동적용일
							//ls_Rcrd[74] 탁송 콜당메리츠 보험정보
							//ls_Rcrd[75] m.ins_result --탁송 콜당메리츠 심사결과   												
							//ls_Rcrd[76] 월당 자동적용일
							//ls_Rcrd[77] 월당 DB손보 보험정보
							//ls_Rcrd[78] 월당 DB손보 심사결과   												
							//ls_Rcrd[79] KB (기존step|갱신step)  												
							//ls_Rcrd[80] DB (기존step|갱신step)  	

							//ls_Rcrd[81] 탁송연합기사여부	
							chkTakAlly.Tag := 99;
							if ls_Rcrd[81] = 'y' then		//탁송연합기사여부		
								chkTakAlly.checked := True else chkTakAlly.checked := False;							
							chkTakAlly.Tag := 0;

							//ls_Rcrd[82] MCash 스케줄 코드
							idx := -1;
							if ls_Rcrd.Count > 81 then
							begin
								idx := slMCashSeq.IndexOf(ls_Rcrd[82]);
								cb_Wor23List.ItemIndex := idx;
							end;
							//ls_Rcrd[88] 현장카드 사용여부
							if ls_Rcrd.Count > 88 then
							begin
								if ls_Rcrd[88] = 'y' then chk_JON01SelfCard.Checked := True
                                     else chk_JON01SelfCard.Checked := False;
							end;

              //ls_Rcrd[89] 업무시작일
							if ls_Rcrd.Count > 89 then
							begin
								if ls_Rcrd[89] = '' then
                   cbWorkStart.Checked := False
                else
                begin
                  cbWorkStart.Checked := True;
   	   						if Length(ls_Rcrd[89]) = 19 then
	   	   						deWorkStart.Text := copy(ls_Rcrd[89],1,10);
                end;
							end;
						end;
							//ls_Rcrd[83] 개인보험(보험개발원) INS_STEP	 (보험상태)							
							//ls_Rcrd[84] 개인보험(보험개발원) AGREE_DATE(동의일시)											
							//ls_Rcrd[85] 개인보험(보험개발원) INS_RESULT(심사결과)	
							//ls_Rcrd[86] 개인보험(보험개발원) 보험정보(보험번호|보험시작일|보험종료일)
							//ls_Rcrd[87] 개인보험(보험개발원) 보험사
					finally
						ls_Rcrd.Free;
						wk_Hplist.Free;
					end;
				end;
				Screen.Cursor := crDefault;
      end else
      begin
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
				cxbHpCheck.Tag := 0;
				cxbHpCheck2.Tag := 2;
				cxbHpCheck3.Tag := 3;
      end;
    except
    end;
  finally
    Screen.Cursor := crDefault;
    xdom := Nil;
	end;
end;

procedure TFrm_WOR01.proc_recieve_S(ls_rxxml: Widestring);
var
  xdom: msDomDocument;
  lst_Result, lst_Count: IXMLDomNodeList;
	ls_Rcrd, hpList, wk_Hplist, slTmp : TStringList;
	ls_Msg_Err, sTmp, sWkSabun : string;
	I, j, iCnt, iRow, k, iDx: Integer;
	sMsg, sMsgSub, sHpNO, sSharp, sTmp2 : string;
begin
	xdom := ComsDomDocument.Create;
  Screen.Cursor := crHourGlass;
	try
		try
      if not xdom.loadXML(ls_rxxml) then Exit;

      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
			begin
				if (0 < GetXmlRecordCount(ls_rxxml)) then
				begin
					iFlag := 0;
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					ls_Rcrd := TStringList.Create;
					try
						for i := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							iRow := FBrNoList.IndexOf(ls_Rcrd[0]);

							if iRow <> -1 then cboBranch.ItemIndex := iRow;
							cboBranchClick(cboBranch);
							cboBranch.Enabled := False;                         //지방도 지사변경 불가  Enabled := False 2013.1.8 KHS
							cxBrNo.Text := ls_Rcrd[0];
							Org_BR_NO := ls_Rcrd[0];                                 //원 지사코드 저장 2011.12.19 KHS
							cxHdNo.Text := ls_Rcrd[1];
							Org_HD_NO := ls_Rcrd[1];                                 //원 본사코드 저장 2011.12.19 KHS
							cxedWkSabun.Text := ls_Rcrd[2];                          //콜마너사번

							cxedSabun.Text := ls_Rcrd[4];
							cxedSabun.Hint := ls_Rcrd[4];

							// [hjf] 이름에 "자체사번*이름" 일 경우 구분하여 표시
							if Pos('*', ls_Rcrd[3]) > 0 then
							begin
								edtNameSabun.Text := Copy(ls_Rcrd[3], 1, Pos('*', ls_Rcrd[3])-1);
								cxedName.Text := Copy(ls_Rcrd[3], Pos('*', ls_Rcrd[3]) + 1, Length(ls_Rcrd[3]));
							end else
							begin
								edtNameSabun.Text := '';
								cxedName.Text := ls_Rcrd[3];
							end;

							cxbBrNum.Enabled := False;
							if Length(ls_Rcrd[5]) = 13 then
							begin
								cxedSoNum.Text := Copy(ls_Rcrd[5], 1, 6);
								cxedSoNum1.Text := Copy(ls_Rcrd[5], 7, 7);
								cxedSoNum.Hint := Copy(ls_Rcrd[5], 1, 6);
								cxedSoNum1.Hint := Copy(ls_Rcrd[5], 7, 7);
								cxAge.Caption := func_Age(Copy(ls_Rcrd[5], 1, 6), Copy(ls_Rcrd[5], 7, 7));
							end else
							begin
								cxedSoNum.Text := Copy(ls_Rcrd[5], 1, 6);
								cxedSoNum1.Text := Copy(ls_Rcrd[5], 7, 7);
								cxedSoNum.Hint := Copy(ls_Rcrd[5], 1, 6);
								cxedSoNum1.Hint := Copy(ls_Rcrd[5], 7, 7);
								cxAge.Caption := '';
							end;

							cxrdWoman.Checked := (ls_Rcrd[6] = 'w');
							exedAddr1.Text := ls_Rcrd[7];
							exedAddr2.Text := ls_Rcrd[8];
							edtWorkerZipCode.Text := ls_Rcrd[28];
							if Length(ls_Rcrd[9]) in [10, 11] then
							begin
								iRow := cxcbWkHp.Properties.Items.IndexOf(Copy(ls_Rcrd[9], 1, 3));
								if iRow <> -1 then  cxcbWkHp.ItemIndex := iRow
								else                cxcbWkHp.ItemIndex := 0;
								gsOrgHp := strtocall(Copy(ls_Rcrd[9], 4, Length(ls_Rcrd[9]) - 3));

								edt_WkHp.Text := gsOrgHp;
								edt_WkHp.Hint := edt_WkHp.Text;
												
								cxcbWkHp_JoinCNT.ItemIndex := 0;
								cxcbWkHp_JoinCNT.Hint := IntToStr(cxcbWkHp_JoinCNT.ItemIndex);
								cxcbWkShareNo.ItemIndex := 0;
								cxcbWkShareNo.Tag := 0;
								edt_Index.text := inttostr(cxcbWkHp_JoinCNT.ItemIndex);
								iFlag := 0;
							end	else
							if Length(ls_Rcrd[9]) in [12, 13] then
							begin
								iRow := cxcbWkHp.Properties.Items.IndexOf(Copy(ls_Rcrd[9], 1, 3));
								if iRow <> -1 then  cxcbWkHp.ItemIndex := iRow
								else                cxcbWkHp.ItemIndex := 0;
								if Pos('#', ls_Rcrd[9]) > 0 then
								begin
									gsOrgHp := strtocall(Copy(ls_Rcrd[9], 4, Length(ls_Rcrd[9]) - 5));
									edt_WkHp.Text := gsOrgHp;
									edt_WkHp.Hint := edt_WkHp.Text;
													
									cxcbWkHp_JoinCNT.ItemIndex := cxcbWkHp_JoinCNT.Properties.Items.IndexOf(Copy(ls_Rcrd[9], length(ls_Rcrd[9]) -1, 2));
									cxcbWkHp_JoinCNT.Hint := IntToStr(cxcbWkHp_JoinCNT.ItemIndex);
									iFlag := cxcbWkHp_JoinCNT.ItemIndex + 1;
								end else
								begin
									gsOrgHp := strtocall(Copy(ls_Rcrd[9], 4, Length(ls_Rcrd[9]) - 3));
									edt_WkHp.Text := gsOrgHp;
									edt_WkHp.Hint := edt_WkHp.Text;
								end;
								edt_Index.text := inttostr(cxcbWkHp_JoinCNT.ItemIndex);
							end;
							iRow := slNaviHpCd.IndexOf(ls_Rcrd[10]);
							if iRow <> -1 then
								cboNavi.ItemIndex := iRow
							else
								cboNavi.ItemIndex := 0;
							if Length(ls_Rcrd[11]) > 3 then
							begin
								if Length(ls_Rcrd[11]) = 12 then
								begin
                  if (IsAngelPlusHead(GS_PRJ_AREA = 'S', GT_UserIF.HD)) then
                  begin
                    edtPhone.Text := copy(ls_Rcrd[11], 1, 4);
                  end else
                  begin
                    iRow := cxcbPhone.Properties.Items.IndexOf(copy(ls_Rcrd[11], 1, 4));
                    if iRow <> -1 then
                      cxcbPhone.ItemIndex := iRow
                    else
                      cxcbPhone.ItemIndex := 0;
                  end;
									cxedPhone.Text := strtocall(Copy(ls_Rcrd[11], 5, Length(ls_Rcrd[11]) - 4));
								end else
								begin
                  if (IsAngelPlusHead(GS_PRJ_AREA = 'S', GT_UserIF.HD)) then
                  begin
                    edtPhone.Text := copy(ls_Rcrd[11], 1, 3);
                  end else
                  begin
                    iRow := cxcbPhone.Properties.Items.IndexOf(copy(ls_Rcrd[11], 1, 3));
                    if iRow <> -1 then
                      cxcbPhone.ItemIndex := iRow
                    else
                      cxcbPhone.ItemIndex := 0;
                  end;
									cxedPhone.Text := strtocall(Copy(ls_Rcrd[11], 4, Length(ls_Rcrd[11]) - 3));
								end;
							end;
							cxedTel.Text := strtocall(ls_Rcrd[12]);

							cxedInsNum.Text := ls_Rcrd[14];
							cxedInsNum.Hint := ls_Rcrd[14]; //콜당보험관련-보험번호번호 저장 20160823KHS
							sTmp := ls_Rcrd[15];
							sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
							if Length(sTmp) = 8 then
							begin
								if StrTointDef(sTmp, 0) > 0 then
									sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2)
								else
									sTmp := FormatDateTime('yyyy-mm-dd', Now);
							end
							else
								sTmp := FormatDateTime('yyyy-mm-dd', Now);
							cxdtInsEnd.Text := sTmp;
												
							try
								sTmp := ls_Rcrd[73];
								if Copy(sTmp, 1, 1) <> '0' then
								begin
									sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
									if Length(sTmp) = 8 then
									begin
										sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2);
										cxdtInsStart.Text := sTmp;
									end else
										cxdtInsStart.Text := ''
								end else
									cxdtInsStart.Text := ''
							Except
								cxdtInsStart.Text := ''
							end;
							glCallInsInfo.InsGubun.Clear;
							glCallInsInfo.InsCD .Clear;
							glCallInsInfo.InsNum.Clear;
							glCallInsInfo.InsADate.Clear;
							glCallInsInfo.InsS  .Clear;
							glCallInsInfo.InsE  .Clear;
							glCallInsInfo.InsStatus.Clear;

							glCallInsInfo.InsGubun.Add('m');
							glCallInsInfo.InsCD .Add(ls_Rcrd[13]);
							glCallInsInfo.InsNum.Add(cxedInsNum.Text);
							glCallInsInfo.InsADate.Add('');
							glCallInsInfo.InsS  .Add(cxdtInsStart.Text);
							glCallInsInfo.InsE  .Add(cxdtInsEnd.Text);
							glCallInsInfo.InsStatus.Add('');

							cxedDrvLic.Text := ls_Rcrd[16];
							cxedMemo.Text := ls_Rcrd[17];

							if Trim(ls_Rcrd[18]) <> '' then   //기사메모
							begin
								slTmp := TStringList.Create;
								try
									GetTextSeperationEx2('¶', ls_Rcrd[18], slTmp);
									for j := 0 to slTmp.Count - 1 do
									begin
										if j = 0 then
											cxmmMemo.Text := slTmp[j]
										else
											cxmmMemo.Text := cxmmMemo.Text + #13#10 + slTmp[j];
									end;
								finally
									FreeAndNil(slTmp);
								end;
							end;

							if pos('[본인인증성공]', cxmmMemo.Text) > 0 then
							begin
								cxbSoNumCheck.Tag := 99;
								cxbSoNumCheck.Enabled := False;
								cxmmMemo.Text := StringReplace(cxmmMemo.Text, '[본인인증성공]', '', [rfReplaceAll]);
							end;

							sTmp := ls_Rcrd[19];
							sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
							if Length(sTmp) = 8 then
								sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2)
							else
								sTmp := FormatDateTime('yyyy-mm-dd', Now);
							cxdtReg.Text := sTmp;
							cxdtEnd.Text := ls_Rcrd[20];
							iRow := cxcbAttendArea.Properties.Items.IndexOf(ls_Rcrd[21]);
							if iRow = -1 then
								cxcbAttendArea.ItemIndex := 0
							else
								cxcbAttendArea.ItemIndex := iRow;
							cbbOrderView.ItemIndex := StrToIntDef(ls_Rcrd[22], 1);
							cbbDistanceType.ItemIndex := StrToIntDef(ls_Rcrd[35], 0);

							iRow := slCmdCode.IndexOf(ls_Rcrd[23]);
							if iRow = -1 then
								cxcbComtype.ItemIndex := 0
							else
								cxcbComtype.ItemIndex := iRow;
							cxedFreeCall.Text := ls_Rcrd[24];
							cxedWkBkName.Text := ls_Rcrd[26] + ' [ ' + ls_Rcrd[27] + ' ]';
							if ls_Rcrd.Count > 31 then
								cxedWkBkName2.Text := ls_Rcrd[31] + ' [ ' + ls_Rcrd[32] + ' ]';

							bFileUpload := False;
							bModify := False;

							cxiWkImg.WebPicture.LoadFromURL(proc_HttpGetWorkImageURL(Trim(cxedWkSabun.Text), 'Person'));

							FLicStCd := ls_Rcrd[30];
							cxLblLicSt.Caption := FLicenseCode.Values[FLicStCd];
							edtRealName.Text := ls_Rcrd[29];

							if ls_Rcrd[33] = '-' then
							begin
								cbbPriceBlock.Text := '수정불가';
								cbbPriceBlock.Enabled := False;
							end else
							begin
								cbbPriceBlock.Enabled := True;
								cbbPriceBlock.ItemIndex := IfThen(ls_Rcrd[33] = 'y', 0, 1);
							end;

							if ls_Rcrd[44] = 'y' then        //스틱가능여부
							begin
								chkOnlyAuto.Checked := False
							end else
								chkOnlyAuto.Checked := True;
													
							//탁송콜당보험 추가
							if ls_Rcrd[83] = '0' then lb_TakINS_MER_STATUS.Caption := '가입요청' else
							if ls_Rcrd[83] = '1' then lb_TakINS_MER_STATUS.Caption := '통과'     else
							if ls_Rcrd[83] = '2' then lb_TakINS_MER_STATUS.Caption := '거부'     else
							if ls_Rcrd[83] = '3' then lb_TakINS_MER_STATUS.Caption := '심사중'   else
							if ls_Rcrd[83] = '4' then lb_TakINS_MER_STATUS.Caption := '기사정보오류' else
							if ls_Rcrd[83] = '5' then lb_TakINS_MER_STATUS.Caption := '기타'     else
							if ls_Rcrd[83] = '7' then lb_TakINS_MER_STATUS.Caption := '해지요청' else
							if ls_Rcrd[83] = '8' then lb_TakINS_MER_STATUS.Caption := '해지' 		else
							if ls_Rcrd[83] = '9' then lb_TakINS_MER_STATUS.Caption := '미가입'   else lb_TakINS_MER_STATUS.Caption := ls_Rcrd[83] ;
							lb_TakINS_MER_STATUS.Hint := ls_Rcrd[83];

							cxbTakInsranceApply.Enabled := True;
							if (func_CallInsureShareNo(GT_USERIF.ShareNo)) or (lb_TakINS_MER_STATUS.Caption = '통과') then
								cxbTakInsranceApply.Enabled := False
							else
								cxbTakInsranceApply.Enabled := True;
													
							if Length(ls_Rcrd[81]) = 8 then       //탁송콜당보험 자동적용일자
								dt_TakCallInsStartDate.Text := copy(ls_Rcrd[81],1,4) + '-' + copy(ls_Rcrd[81],5,2) + '-' +copy(ls_Rcrd[81],7,2);

							glCallInsInfo.InsGubun.Add('tm');
							glCallInsInfo.InsCD .Add(ls_Rcrd[76]);
							glCallInsInfo.InsNum.Add(ls_Rcrd[68]);
							glCallInsInfo.InsADate.Add('');
							sTmp := ls_Rcrd[74]; //ls_Rcrd[74] wk.CONSIGNMENT_ST_DATE -- 탁송보험시작일 
							if Copy(sTmp, 1, 1) <> '0' then
							begin
								sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
								if Length(sTmp) = 8 then
									sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2);
							end;
							glCallInsInfo.InsS  .Add(sTmp);
							sTmp := ls_Rcrd[75];  //ls_Rcrd[75] wk.CONSIGNMENT_EXPIRATION -- 탁송만기일
							if Copy(sTmp, 1, 1) <> '0' then
							begin
								sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
								if Length(sTmp) = 8 then
									sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2);
							end;
							glCallInsInfo.InsE  .Add(sTmp);
							glCallInsInfo.InsStatus.Add('');

							slTmp := TStringList.Create;
							Try
								slTmp.Clear;
								slTmp.Delimiter     := '|';
								slTmp.DelimitedText := ls_Rcrd[82]; //ls_Rcrd[82]메리츠 탁송콜당보험정보 (구분자) 예) - 보험번호|시작일|만기일
															
								glCallInsInfo.InsGubun.Add('tc');
								glCallInsInfo.InsCD .Add('06');
								glCallInsInfo.InsNum.Add(slTmp[0]); 
								sTmp := ls_Rcrd[81]; //ls_Rcrd[81] wk.CONSIGNMENT_ST_DATE -- 탁송보험시작일 
								if Copy(sTmp, 1, 1) <> '0' then
								begin
									sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
									if Length(sTmp) = 8 then
										sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2);
								end;
								glCallInsInfo.InsADate.Add(sTmp);
								glCallInsInfo.InsS  .Add(GetStrToDateTimeGStr(slTmp[1], 4));
								glCallInsInfo.InsE  .Add(GetStrToDateTimeGStr(slTmp[2], 4));
								glCallInsInfo.InsStatus.Add(lb_TakINS_MER_STATUS.Caption);
													
								glCallInsInfo.InsGubun.Add('tk');
								glCallInsInfo.InsCD .Add('15');
								glCallInsInfo.InsNum.Add('');
								glCallInsInfo.InsADate.Add('');
								glCallInsInfo.InsS  .Add('');
								glCallInsInfo.InsE  .Add('');
								glCallInsInfo.InsStatus.Add('');
							Finally
								slTmp.Free
							End;	

							if ls_Rcrd[45] = 'y' then        //탁송가능여부
							begin
								//탁송콜당보험 정보 
                //ls_Rcrd[74] wk.CONSIGNMENT_ST_DATE -- 탁송보험시작일
                //ls_Rcrd[75] wk.CONSIGNMENT_EXPIRATION -- 탁송만기일

                //ls_Rcrd[80] wk.wk_ins_cons_type 탁송구분값(n(없음),c(메리츠콜당),k(KB콜당),m(월당)) 분리  기본은 n(없음)
                //ls_Rcrd[81] m.INS_AUTO_DATE --탁송 콜당 자동적용일
                //ls_Rcrd[82] 탁송 콜당메리츠 보험정보
                //ls_Rcrd[83] m.ins_result --탁송 콜당메리츠 심사결과
                //ls_Rcrd[84] 월당 자동적용일
                //ls_Rcrd[85] 월당 DB손보 보험정보
                //ls_Rcrd[86] 월당 DB손보 심사결과

								iDx := glCallInsInfo.InsGubun.indexOf('t'+ls_Rcrd[80]);
								if idx > -1 then
								begin
									edtTakInsNum.Text := glCallInsInfo.InsNum[iDx];
									cxdTaktInsStart.Text := glCallInsInfo.InsS[iDx];
									cxdTaktInsEnd.Text := glCallInsInfo.InsE[iDx];
								end;

								pnl_TakIns.enabled := True;      //수도권
								if ls_Rcrd[80] = 'm' then
								begin
									modifyChk := True;
									fChk      := True;
									cxlbl4.caption := '동의함';
									cxlbl4.Style.font.style := [fsBold];
									cxlbl4.Style.font.color := clRed;
									edtTakInsNum.enabled := True;
									chkTaksong.Tag := 99;
									chkTaksong.Checked := True;
									chkTaksong.Tag := 0;

									//ls_Rcrd[76] wk.CONSIGNMENT_CORPER -- 탁송보험사

									if (chkTaksong.Checked) and
										 ((GetLicTypeCode(cbbLicType.Text) = '10') or (GetLicTypeCode(cbbLicType.Text) = '11') or   //1종대형, 1종보통
											(GetLicTypeCode(cbbLicType.Text) = '13') or (GetLicTypeCode(cbbLicType.Text) = '20') or   //1종특수, 2종보통
											(GetLicTypeCode(cbbLicType.Text) = '30')) then //1종대형특수
									begin
										chkTakHwak.Visible := True;
										if ls_Rcrd[69] = 'y' then chkTakHwak.Checked := True else chkTakHwak.Checked := False;
										chkTakHwak.Hint := ls_Rcrd[69];
									end else
									begin
										chkTakHwak.Visible := False;
										chkTakHwak.Checked := False;
										chkTakHwak.Hint := '';
									end;
									iRow := slTakInsCode.IndexOf(ls_Rcrd[76]);
									if iRow <> -1 then
										cb_TakInsCorper.ItemIndex := iRow
									else
										cb_TakInsCorper.ItemIndex := 0;

									edtTakInsNum.Text := ls_Rcrd[68]; //탁송보험번호 20170107 KHS
								end else
							//ls_Rcrd[80] wk.wk_ins_cons_type 탁송구분값(n(없음),c(메리츠콜당),k(KB콜당),m(월당)) 분리  기본은 n(없음)
							//ls_Rcrd[81] m.INS_AUTO_DATE --탁송 콜당 자동적용일
							//ls_Rcrd[82] 탁송 콜당메리츠 보험정보
							//ls_Rcrd[83] m.ins_result --탁송 콜당메리츠 심사결과
								if ls_Rcrd[80] = 'c' then
								begin
									modifyChk := True;
									fChk      := True;
									edtTakInsNum.enabled := True;
									chkTakCall.Hint := 'tc';
									chkTakCall.Checked := True;
									chkTakCall.Tag := 0;
	//   							pnl_TakIns.enabled := True;
									chkTakHwak.Visible := False;
									chkTakHwak.Checked := False;
									chkTakHwak.Hint := '';
								end else
								if ls_Rcrd[80] = 'k' then
								begin

								end;
							end else
							begin
								modifyChk := False;
								fChk      := False;
								cxlbl4.caption := '동의안함';
								cxlbl4.Style.font.style := [];
								cxlbl4.Style.font.color := clBlack;
								edtTakInsNum.enabled := False;
								chkTaksong.Tag := 99;
								chkTaksong.Checked := False;
								chkTaksong.Tag := 0;
//								pnl_TakIns.enabled := False;
								edtTakInsNum.Text := ''; //탁송보험번호 20170107 KHS
							end;

							cxTextEdit1.Text := ls_Rcrd[46];

							glCallInsInfo.InsGubun.Add('t');
							glCallInsInfo.InsCD .Add(ls_Rcrd[76]);
							glCallInsInfo.InsNum.Add(edtTakInsNum.Text);
							glCallInsInfo.InsADate.Add('');
							glCallInsInfo.InsS  .Add(GetStrToDateTimeGStr(cxdTaktInsStart.Text, 4));
							glCallInsInfo.InsE  .Add(GetStrToDateTimeGStr(cxdTaktInsEnd.Text, 4));
							glCallInsInfo.InsStatus.Add('');

							try
								sTmp := ls_Rcrd[47];
								if Copy(sTmp, 1, 1) <> '0' then
								begin
									sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
									if Length(sTmp) = 8 then
										sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp, 5, 2) + '-' + Copy(sTmp, 7, 2)
									else
										sTmp := FormatDateTime('yyyy-mm-dd', Now);

									cxdtLinsDate.Text := sTmp;
								end else
									cxdtLinsDate.Text := ''
							Except
								cxdtLinsDate.Text := ''
							end;

							if ls_Rcrd.Count > 34 then
								cbbLicType.ItemIndex := cbbLicType.Properties.Items.IndexOf(GetLicTypeValue(ls_Rcrd[34]));

							// 플러스콜 사용여부 체크(지사,본사,연합) 설정값 모두 만족해야 함.
							if ls_Rcrd[43] = 'yyyy' then
							begin
								btnPlusRight.Enabled:= True;
								btnPlusPView.Enabled := True;
								if (ls_Rcrd[36] = '1') or (ls_Rcrd[36] = '2') or (ls_Rcrd[36] = '3') then
								begin
									btnPlusJoin.Enabled := True;
									btnPlusJoin.Caption := '법인기사탈퇴';
									btnPlusCalc.Enabled := True;
									btnPlusLogView.Enabled := True;
									btnPlusRight.Enabled := False;
									btnPlusPView.Enabled := False;
									if ls_Rcrd[36] = '1' then cxtPlusState.Text := '정상'     else
                  if ls_Rcrd[36] = '2' then cxtPlusState.Text := '일시정지'
                                       else	cxtPlusState.Text := '정지';
								end else
								if ls_Rcrd[36] = '9' then
								begin
									btnPlusJoin.Enabled := false;
									btnPlusJoin.Caption := '법인기사가입';
									cxtPlusState.Text   := '법인기사탈퇴';
									btnPlusRight.Enabled:= True;
									btnPlusPView.Enabled := True;
								end;

								cxtPlusScore.Text   := ls_Rcrd[37];  // 플러스 점수
								cxtPlusPenalty.Text := ls_Rcrd[38];  // 패널티 벌점
								if ls_Rcrd[39] = 'null' then cxtP1.Text := '가입 : -'
								                        else cxtP1.Text := '가입 : ' + ls_Rcrd[39];
								if ls_Rcrd[40] = 'null' then cxtP2.Text := '정지 : -'
								                        else cxtP2.Text := '정지 : ' + ls_Rcrd[40];
								if ls_Rcrd[41] = 'null' then cxtP3.Text := '해제 : -'
                                        else cxtP3.Text := '해제 : ' + ls_Rcrd[41];
								if ls_Rcrd[42] = 'null' then cxtP4.Text := '탈퇴 : -'
								                        else cxtP4.Text := '탈퇴 : ' + ls_Rcrd[42];
							end;

							if Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo) = 'G70' then iShareGroupIDX := 1 else
							if Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo) = 'G71' then iShareGroupIDX := 2 else
							if Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo) = 'G72' then iShareGroupIDX := 3 else
							if Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo) = 'G73' then iShareGroupIDX := 4;

							wk_Hplist := TStringList.Create;
							Try
								if Trim(ls_Rcrd[49]) <> '' then
								begin
									GetTextSeperationEx2('^', Trim(ls_Rcrd[49]), wk_Hplist);   //'01044934569#2^^L68113^2222^00'
									sTmp2 := wk_Hplist[1];
								end;
								if Trim(ls_Rcrd[50]) <> '' then
								begin
									GetTextSeperationEx2('^', Trim(ls_Rcrd[50]), wk_Hplist);   //'01044934569#2^^L68113^2222^00'
									sTmp2 := wk_Hplist[1];
								end;

								if Trim(ls_Rcrd[51]) <> '' then
								begin
									GetTextSeperationEx2('^', Trim(ls_Rcrd[51]), wk_Hplist);   //'01044934569#2^^L68113^2222^00'
									sTmp2 := wk_Hplist[1];
								end;

								if Trim(ls_Rcrd[52]) <> '' then
								begin
									GetTextSeperationEx2('^', Trim(ls_Rcrd[52]), wk_Hplist);   //'01044934569#2^^L68113^2222^00'
									sTmp2 := wk_Hplist[1];
								end;

								if Trim(sTmp2) = ''    then cxcbWkShareNo.ItemIndex := 0 else
								if Trim(sTmp2) = 'G70' then cxcbWkShareNo.ItemIndex := 1 else
								if Trim(sTmp2) = 'G71' then cxcbWkShareNo.ItemIndex := 2 else
								if Trim(sTmp2) = 'G72' then cxcbWkShareNo.ItemIndex := 3 else
								if Trim(sTmp2) = 'G73' then cxcbWkShareNo.ItemIndex := 4;
								cxcbWkShareNo.Tag := cxcbWkShareNo.ItemIndex;
							except

              End;

							join_Cnt := 0;
							join_Cnt := StrToIntDef(ls_Rcrd[48],0);
							if join_Cnt < 2 then
							begin
								cxcbWkHp_JoinCNT.Enabled := False;
								cxcbWkShareNo.Enabled := False;
							end else
							begin
							{	cxcbWkHp_JoinCNT.Enabled := True;
								if cxcbWkHp_JoinCNT.ItemIndex > 0 then cxcbWkShareNo.Enabled := True;  }
							end;

							if ls_Rcrd[54] = ''  then cb_Shuttle_Status.ItemIndex := 0 else
							if ls_Rcrd[54] = 'y' then cb_Shuttle_Status.ItemIndex := 1 else
							if ls_Rcrd[54] = 'n' then cb_Shuttle_Status.ItemIndex := 2;

							cb_Shuttle_Charge.Tag := 1;
							cb_Shuttle_Charge.ItemIndex := StrToIntDef(ls_Rcrd[55],0);
							cb_Shuttle_Charge.Tag := 0;
							iShuttle_Charge := cb_Shuttle_Charge.ItemIndex;
							edt_TagID.Text := Trim(ls_Rcrd[56]);

							if ls_Rcrd[59] = '0' then lb_WKINS_MER_STATUS.Caption := '가입요청' else
							if ls_Rcrd[59] = '1' then lb_WKINS_MER_STATUS.Caption := '통과'     else
							if ls_Rcrd[59] = '2' then lb_WKINS_MER_STATUS.Caption := '거부'     else
							if ls_Rcrd[59] = '3' then lb_WKINS_MER_STATUS.Caption := '심사중'   else
							if ls_Rcrd[59] = '4' then lb_WKINS_MER_STATUS.Caption := '기사정보오류' else
							if ls_Rcrd[59] = '5' then lb_WKINS_MER_STATUS.Caption := '기타'     else
							if ls_Rcrd[59] = '7' then lb_WKINS_MER_STATUS.Caption := '해지요청' else
							if ls_Rcrd[59] = '8' then lb_WKINS_MER_STATUS.Caption := '해지' 		else
							if ls_Rcrd[59] = '9' then lb_WKINS_MER_STATUS.Caption := '미가입'   else lb_WKINS_MER_STATUS.Caption := ls_Rcrd[59] ;
							lb_WKINS_MER_STATUS.Hint := ls_Rcrd[59];

							if ls_Rcrd[70] = '0' then lb_WKINS_KB_STATUS.Caption := '가입요청' else
							if ls_Rcrd[70] = '1' then lb_WKINS_KB_STATUS.Caption := '통과'     else
							if ls_Rcrd[70] = '2' then lb_WKINS_KB_STATUS.Caption := '거부'     else
							if ls_Rcrd[70] = '3' then lb_WKINS_KB_STATUS.Caption := '심사중'   else
							if ls_Rcrd[70] = '4' then lb_WKINS_KB_STATUS.Caption := '기사정보오류' else
							if ls_Rcrd[70] = '5' then lb_WKINS_KB_STATUS.Caption := '기타'     else
							if ls_Rcrd[70] = '8' then lb_WKINS_KB_STATUS.Caption := '해지요청' else
							if ls_Rcrd[70] = '8' then lb_WKINS_KB_STATUS.Caption := '해지'     else
							if ls_Rcrd[70] = '9' then lb_WKINS_KB_STATUS.Caption := '미가입'   else lb_WKINS_KB_STATUS.Caption := ls_Rcrd[70] ;
							lb_WKINS_KB_STATUS.Hint := ls_Rcrd[70];

							cxbWKInsranceApply.Enabled := True;
							if (func_CallInsureShareNo(GT_USERIF.ShareNo)) or (lb_WKINS_MER_STATUS.Caption = '통과') then
								cxbWKInsranceApply.Enabled := False
							else
								cxbWKInsranceApply.Enabled := True;
//												dt_CallInsStartDate.Enabled := cxbWKInsranceApply.Enabled;

							if Length(ls_Rcrd[62]) = 8 then     //콜당보험 자동적용일자
							begin
								cxdCallInsStartDate.Text := copy(ls_Rcrd[62],1,4) + '-' + copy(ls_Rcrd[62],5,2) + '-' +copy(ls_Rcrd[62],7,2);
							end;
							dt_CallInsStartDate.Text := cxdCallInsStartDate.Text;

							//개인보험(보험개발원)
							//ls_Rcrd[91] 개인보험(보험개발원) INS_STEP	 (보험상태)							
							//ls_Rcrd[92] 개인보험(보험개발원) AGREE_DATE(동의일시)											
							//ls_Rcrd[93] 개인보험(보험개발원) INS_RESULT(심사결과)	  <<< 이걸로 사용하지마세요 (정경석차장)210127
							//ls_Rcrd[94] 개인보험(보험개발원) 보험정보(보험번호|보험시작일|보험종료일)
							//ls_Rcrd[95] 개인보험(보험개발원) 보험사
							
							//Registered  값이면  동의미진행     Agree이면  동의완료   Ok 정상 20210127 정경석차장 정의
							if ls_Rcrd[91] = 'init'     then lb_WKINS_Kidi_STATUS.Caption := '등록중'           else
							if ls_Rcrd[91] = 'registed' then lb_WKINS_Kidi_STATUS.Caption := '동의미진행'		    else
							if ls_Rcrd[91] = 'agree'    then lb_WKINS_Kidi_STATUS.Caption := '동의완료'         else
							if ls_Rcrd[91] = 'reject'   then lb_WKINS_Kidi_STATUS.Caption := '정보제공동의철회' else
							if ls_Rcrd[91] = 'ok'       then lb_WKINS_Kidi_STATUS.Caption := '보험정상'         else
							if ls_Rcrd[91] = 'expired'  then lb_WKINS_Kidi_STATUS.Caption := '보험만료'         
																					else lb_WKINS_Kidi_STATUS.Caption := ls_Rcrd[91];
							if (ls_Rcrd[91] <> '') then btn_WKKidiApply.Enabled := False else btn_WKKidiApply.Enabled := True;
							if (ls_Rcrd[91] <> '') and (ls_Rcrd[91] <> 'init') then
							begin
								btn_WKKidiSch .Enabled := True;	
								btn_WKKidiSync.Enabled := True;	
							end;
							if  ls_Rcrd[91] = 'registed'                       then btn_WKKidiSMS.Enabled := True else
              if  ls_Rcrd[91] = 'reject'                         then btn_WKKidiSMS.Enabled := True else
							if (ls_Rcrd[91] = 'agree') or (ls_Rcrd[91] = 'ok') then btn_WKKidiSMS.Enabled := False 
																																 else btn_WKKidiSMS.Enabled := False;
							if (ls_Rcrd[91] = 'ok') then
							begin																									 
								btn_WKKidiSch .Enabled := False;
								btn_WKKidiSync.Enabled := True;//신성현 팀장요청 20210405 KHS
							end;
							lb_AgDate.Caption := GetStrToDateTimeGStr(ls_Rcrd[92], 3);
							
							slTmp := TStringList.Create;
							Try
								slTmp.Clear;
								slTmp.Delimiter     := '|';
								slTmp.DelimitedText := ls_Rcrd[78]; //ls_Rcrd[78]메리츠 콜당보험정보 (구분자) 예) - 보험번호|시작일|만기일
								glCallInsInfo.InsGubun.Add('c');
								glCallInsInfo.InsCD .Add('06');
								glCallInsInfo.InsNum.Add(slTmp[0]);
								glCallInsInfo.InsADate.Add(GetStrToDateTimeGStr(dt_CallInsStartDate.Text, 4));
								glCallInsInfo.InsS  .Add(GetStrToDateTimeGStr(slTmp[1], 4));
								glCallInsInfo.InsE  .Add(GetStrToDateTimeGStr(slTmp[2], 4));
								glCallInsInfo.InsStatus.Add(lb_WKINS_MER_STATUS.Caption);
													
								slTmp.Clear;
								slTmp.Delimiter     := '|';
								slTmp.DelimitedText := ls_Rcrd[79]; //ls_Rcrd[79]KB 콜당보험정보(구분자) 예) -  보험번호|시작일|만기일
								glCallInsInfo.InsGubun.Add('k');
								glCallInsInfo.InsCD .Add('15');
								glCallInsInfo.InsNum.Add(slTmp[0]);
								glCallInsInfo.InsADate.Add('');
								glCallInsInfo.InsS  .Add(GetStrToDateTimeGStr(slTmp[1], 4));
								glCallInsInfo.InsE  .Add(GetStrToDateTimeGStr(slTmp[2], 4));
								glCallInsInfo.InsStatus.Add(lb_WKINS_KB_STATUS.Caption);

								slTmp.Clear;
								slTmp.Delimiter     := '|';
								slTmp.DelimitedText := ls_Rcrd[85]; //ls_Rcrd[85]월당 DB손보 보험정보(구분자) 예) -  보험번호|시작일|만기일
								glCallInsInfo.InsGubun.Add('d');
								glCallInsInfo.InsCD .Add('03');
								glCallInsInfo.InsNum.Add(slTmp[0]);
								glCallInsInfo.InsADate.Add('');
								glCallInsInfo.InsS  .Add(GetStrToDateTimeGStr(slTmp[1], 4));
								glCallInsInfo.InsE  .Add(GetStrToDateTimeGStr(slTmp[2], 4));
								if ls_Rcrd[86] = '1' then glCallInsInfo.InsStatus.Add('통과') //ls_Rcrd[86] 월당 DB손보 심사결과   	
								else glCallInsInfo.InsStatus.Add(ls_Rcrd[86]); //ls_Rcrd[86] 월당 DB손보 심사결과   	

								//ls_Rcrd[94] 개인보험(보험개발원) 보험정보(보험번호|보험시작일|보험종료일)
								slTmp.Clear;
								slTmp.Delimiter     := '|';
								slTmp.DelimitedText := ls_Rcrd[94]; 
								glCallInsInfo.InsGubun.Add('b');
								//ls_Rcrd[95] 개인보험(보험개발원) 보험사
								glCallInsInfo.InsCD .Add(ls_Rcrd[95]); //보험사 없음 .정보제공을 안함
								glCallInsInfo.InsNum.Add(slTmp[0]);
								glCallInsInfo.InsADate.Add('');
								glCallInsInfo.InsS  .Add(GetStrToDateTimeGStr(slTmp[1], 4));
								glCallInsInfo.InsE  .Add(GetStrToDateTimeGStr(slTmp[2], 4));
								glCallInsInfo.InsStatus.Add(lb_WKINS_Kidi_STATUS.Caption);
							Finally
								slTmp.Free
							End;
							iRow := slInsCode.IndexOf(ls_Rcrd[13]);
							//ls_Rcrd[77] wk.GNR_SUB_YN  -- 일반콜 사용여부 
							if ls_Rcrd[77] = 'y' then
							begin
								pnl_DBIns.Hint := '';
								if ls_Rcrd[58] = 'n' then //보험 구분 : 지정안됨
								begin
									chkDrive.Checked := False;
									chkCallDrive.Checked := False;
									cxcbInsCorper.ItemIndex := 0;
									if iRow <> -1 then cxcbInsCorper.ItemIndex := iRow
                                else cxcbInsCorper.ItemIndex := 0;
									iCorper := cxcbInsCorper.ItemIndex;
									pnl_DBIns.Visible := False;
								end else
								if ls_Rcrd[58] = 'm' then  //보험 구분 : 월정액
								begin
									chkDrive.Checked := True;
									if iRow <> -1 then cxcbInsCorper.ItemIndex := iRow
                                else cxcbInsCorper.ItemIndex := 0;
									iCorper := cxcbInsCorper.ItemIndex;
									pnl_DBIns.Visible := False;
								end else
								if ls_Rcrd[58] = 'b' then 	//보험 구분 : 개인보험(보험개발원)
								begin
									if lb_WKINS_Kidi_STATUS.Caption = '보험정상' then
									begin
										chkKidiDrive.Hint := 'b';
										chkKidiDrive.Checked := True;

										iCorper := cxcbInsCorper.ItemIndex;    
										cxcbInsCorper.Enabled := False; //보험사 수정불가
															
										for k := 0 to glCallInsInfo.InsCD.Count -1 do
										begin
											if (glCallInsInfo.InsGubun[k] = chkKidiDrive.Hint)then
											begin
												cxedInsNum.Text := glCallInsInfo.InsNum[k];
												sTmp := glCallInsInfo.InsS[k];
												cxdtInsStart.Text := glCallInsInfo.InsS[k];
												sTmp := glCallInsInfo.InsE[k];
												cxdtInsEnd  .Text := glCallInsInfo.InsE[k];
											end;
										end;
										pnl_DBIns.Visible := False;
									end;
								end else
								if ls_Rcrd[58] = 'c' then 	//보험 구분 : 콜당보험
								begin
									chkCallDrive.Hint := 'c';
									chkCallDrive.Checked := True;
									cxcbInsCorper.ItemIndex := 0;
									iCorper := cxcbInsCorper.ItemIndex;
									for k := 0 to glCallInsInfo.InsCD.Count -1 do
									begin
										if (glCallInsInfo.InsGubun[k] = 'c') and (glCallInsInfo.InsCD[k] = '06') then
										begin
											cxedInsNum.Text := glCallInsInfo.InsNum[k]; 
											sTmp := glCallInsInfo.InsS[k];
											cxdtInsStart.Text := glCallInsInfo.InsS[k]; 
											sTmp := glCallInsInfo.InsE[k];
											cxdtInsEnd  .Text := glCallInsInfo.InsE[k]; 
										end;
									end;
									pnl_DBIns.Visible := False;
								end	else
								if ls_Rcrd[58] = 'k' then 	//보험 구분 : 콜당보험
								begin
									chkCallDrive.Hint := 'k';
									chkCallDrive.Checked := True;
									cxcbInsCorper.ItemIndex := 1;
									iCorper := cxcbInsCorper.ItemIndex;
									for k := 0 to glCallInsInfo.InsCD.Count -1 do
									begin
										if (glCallInsInfo.InsGubun[k] = 'k') and (glCallInsInfo.InsCD[k] = '15') then
										begin
											cxedInsNum.Text := glCallInsInfo.InsNum[k]; 
											sTmp := glCallInsInfo.InsS[k];
											cxdtInsStart.Text := glCallInsInfo.InsS[k]; 
											sTmp := glCallInsInfo.InsE[k];
											cxdtInsEnd  .Text := glCallInsInfo.InsE[k]; 
										end;
									end;
									pnl_DBIns.Visible := False;

									//KB (기존step|갱신step)
									slTmp := TStringList.Create;
									Try
										slTmp.Clear;
										slTmp.Delimiter     := '/';
										slTmp.DelimitedText := Trim(ls_Rcrd[87]);
														
										if (slTmp[0] <> '') and (slTmp[1] <> '')then 
											lb_INS_Status.Caption := ls_Rcrd[87]
										else if (slTmp[0] <> '') and (slTmp[1] = '')then 
											lb_INS_Status.Caption := slTmp[0]
										else lb_INS_Status.Caption :=	'';
									Finally
										slTmp.Free;
									End;
								end	else
								if (ls_Rcrd[58] = 'd') and (ls_Rcrd[86] = '1') then 	//보험 구분 : 월당보험
								begin
									chkDrive.Checked := True;
									if iRow <> -1 then cxcbInsCorper.ItemIndex := iRow
                                else cxcbInsCorper.ItemIndex := 0;
									iCorper := cxcbInsCorper.ItemIndex;
									pnl_DBIns.Hint := ls_Rcrd[58];//'d';
									for k := 0 to glCallInsInfo.InsCD.Count -1 do
									begin
										if (glCallInsInfo.InsGubun[k] = 'd') and (glCallInsInfo.InsCD[k] = '03') then
										begin
											cxedInsNum.Text := glCallInsInfo.InsNum[k];
											sTmp := glCallInsInfo.InsS[k];
											cxdtInsStart.Text := glCallInsInfo.InsS[k];
											sTmp := glCallInsInfo.InsE[k];
											cxdtInsEnd  .Text := glCallInsInfo.InsE[k];
										end;
									end;
									pnl_DBIns.Visible := True;
									pnl_DBIns.left := 5;
									pnl_DBIns.Top := 5;
									cxcbInsCorper.enabled := False;
									cxedInsNum.enabled := False;
									cxdtInsStart.enabled := False;
									cxdtInsEnd.enabled := False;

									//DB (기존step|갱신step)
									slTmp := TStringList.Create;
									Try
										slTmp.Clear;
										slTmp.Delimiter     := '/';
										slTmp.DelimitedText := Trim(ls_Rcrd[88]);

										if (slTmp[0] <> '') and (slTmp[1] <> '')then
											lb_INS_Status.Caption := ls_Rcrd[88]
										else if (slTmp[0] <> '') and (slTmp[1] = '')then
											lb_INS_Status.Caption := slTmp[0]
										else lb_INS_Status.Caption :=	'';
									Finally
										slTmp.Free;
									End;
								end;
							end else
							begin
								chkDrive.Checked := False;
								chkCallDrive.Checked := False;
								chkKidiDrive.Checked := False;
								cxcbInsCorper.ItemIndex := 0;
							end;
							//ls_Rcrd[58] = 'c' 일경우 lb_WKINS_STATUS.Caption = '통과'가 아니면 ls_Rcrd[58]과 상관없이 보험구분은 없음  20160831KHS

							//ls_Rcrd[60] <=카카오설치기사
							//ls_Rcrd[61] <=카카오이용기사
							//기사상태 : 보험료미납(21)일 경우에만 활성화
//											if ls_Rcrd[72] = '21' then cxdtInsStart.Enabled := True else cxdtInsStart.Enabled := False;

							//ls_Rcrd[63] <=셔틀타입
							//ls_Rcrd[64] <=셔틀일반제목
							//ls_Rcrd[65] <=셔틀일반내용
							//ls_Rcrd[66] <=셔틀기동제목
							//ls_Rcrd[67] <=셔틀기동내용

							//ls_Rcrd[70] <= KB콜당보험 상태
							//ls_Rcrd[71] <= KB콜당보험 자동적용일
							//ls_Rcrd[72] <= 기사상태
							//ls_Rcrd[73] wk.INSURANCE_ST_DATE -- 보험시작일
							//ls_Rcrd[74] wk.CONSIGNMENT_ST_DATE -- 탁송보험시작일
							//ls_Rcrd[75] wk.CONSIGNMENT_EXPIRATION -- 탁송만기일
							//ls_Rcrd[76] wk.CONSIGNMENT_CORPER -- 탁송보험사
							//ls_Rcrd[77] wk.GNR_SUB_YN  -- 일반콜 사용여부
							//ls_Rcrd[78]메리츠 콜당보험정보 (구분자) 예) - 보험번호|시작일|만기일
							//ls_Rcrd[79]KB 콜당보험정보(구분자) 예) -  보험번호|시작일|만기일

							//ls_Rcrd[80] wk.wk_ins_cons_type 탁송구분값(n(없음),c(메리츠콜당),k(KB콜당),m(월당)) 분리  기본은 n(없음)
							//ls_Rcrd[81] m.INS_AUTO_DATE --탁송 콜당 자동적용일
							//ls_Rcrd[82] 탁송 콜당메리츠 보험정보
							//ls_Rcrd[83] m.ins_result --탁송 콜당메리츠 심사결과
							//ls_Rcrd[84] 월당 자동적용일
							//ls_Rcrd[85] 월당 DB손보 보험정보
							//ls_Rcrd[86] 월당 DB손보 심사결과

							//ls_Rcrd[87] KB (기존step|갱신step)
							//ls_Rcrd[88] DB (기존step|갱신step)

							//ls_Rcrd[89] 탁송연합기사여부
							chkTakAlly.Tag := 99;
							if ls_Rcrd[89] = 'y' then	chkTakAlly.checked := True	//탁송연합기사여부
								                   else chkTakAlly.checked := False;
							chkTakAlly.Tag := 0;

							//ls_Rcrd[90] MCash 스케줄 코드
							idx := -1;
							if ls_Rcrd.Count > 90 then
							begin
								idx := slMCashSeq.IndexOf(ls_Rcrd[90]);
								cb_Wor23List.ItemIndex := idx;
							end;
							//ls_Rcrd[96] 현장카드 사용여부
							if ls_Rcrd.Count > 96 then
							begin
								if ls_Rcrd[96] = 'y' then chk_JON01SelfCard.Checked := True
                                     else chk_JON01SelfCard.Checked := False;
							end;

              //ls_Rcrd[97] 업무시작일
							if ls_Rcrd.Count > 97 then
							begin
								if ls_Rcrd[97] = '' then
                   cbWorkStart.Checked := False
                else
                begin
                  cbWorkStart.Checked := True;
   	   						if Length(ls_Rcrd[97]) = 19 then
	   	   						deWorkStart.Text := copy(ls_Rcrd[97],1,10);
                end;
							end;

							//ls_Rcrd[91] 개인보험(보험개발원) INS_STEP	 (보험상태)							
							//ls_Rcrd[92] 개인보험(보험개발원) AGREE_DATE(동의일시)											
							//ls_Rcrd[93] 개인보험(보험개발원) INS_RESULT(심사결과)	
							//ls_Rcrd[94] 개인보험(보험개발원) 보험정보(보험번호|보험시작일|보험종료일)
							//ls_Rcrd[95] 개인보험(보험개발원) 보험사
						end;
					finally
						ls_Rcrd.Free;
						wk_Hplist.Free;
					end;
				end;
				Screen.Cursor := crDefault;
      end else
      begin
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
				cxbHpCheck.Tag := 0;
				cxbHpCheck2.Tag := 2;
				cxbHpCheck3.Tag := 3;
      end;
    except
    end;
  finally
    Screen.Cursor := crDefault;
    xdom := Nil;
  end;
end;

procedure TFrm_WOR01.proc_Worker_Save(iType: Integer);
var
  ls_TxLoad, sNode, rv_str: string;
	sSNum, sWkHp, sWkPhone, sWkTel, sNaviCd, sInsCd, sTakInsCd, sWkViewCd, sWkCommCd, sSex, sPriceBlock: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
	lst_Node: IXMLDOMNodeList;
  slReceive: TStringList;
	ErrCode : integer;
	WorkerName, sTmp: string;
	bCheck : Boolean;
	sBeforeJumin, sMsg : string;
begin
	try
		cxbBrNum.Tag := 99;
		if cxedSabun.Text = '' then
		begin
			GMessagebox('사번을 입력하셔야 합니다.', CDMSE);
			cxedSabun.SetFocus;
			cxbModify.Enabled := true;
			exit;
		end;
		if cxedSabun.Text <> '' then
		begin
			cxbBrNum.Click;
			if cxbBrNum.Enabled then
			begin
				cxbBrNum.Tag :=0;
				cxbBrNum.SetFocus;
				cxbModify.Enabled := True;
				Exit;
			end;
		end;

		if cxedName.Text = '' then
		begin
			GMessagebox('성명을 입력하셔야 합니다.', CDMSE);
			cxedName.SetFocus;
			cxbModify.Enabled := true;
			exit;
		end;

		sTmp := StringReplace(cxedSoNum.Text + cxedSoNum1.Text, '-', '', [rfReplaceAll]);        //지금 주민번호 입력된 내용
		sBeforeJumin := StringReplace(cxedSoNum.Hint + cxedSoNum1.Hint, '-', '', [rfReplaceAll]); //불러왔을때 주민번호 내용

    //고용보험료 차감 예외 기사처리 20211229 KHS 신성현팀장요청
    if sTmp <> '1111111111111' then
    begin

      if ( Not cxbSoNumCheck.Enabled ) And (cxbSoNumCheck.Tag = 99) then
      begin

        if (iType = 1) and (sTmp <> sBeforeJumin) then
        begin
          GMessagebox('본인인증을 받은신 경우 주민등록번호 수정이 불가합니다.' + #10#13 + '추가 기사등록을 하실 경우에는 신규등록을'
           + #10#13 + '이용하여 주십시오.', CDMSE);
          cxedSoNum.Text  := cxedSoNum.Hint ;
          cxedSoNum1.Text := cxedSoNum1.Hint ;
          cxbModify.Enabled := True;
          gbKidiInfoChange := False;
          Exit;
        end;
			
        if pos('[본인인증성공]', cxmmMemo.Text) < 1 then
        cxmmMemo.Text := '[본인인증성공]' + cxmmMemo.Text;
      end;

      if (iType = 1) and (sTmp <> sBeforeJumin) then
      begin
        bCheck := func_SoNumCheck(sBeforeJumin);
        if bCheck then
        begin
          GMessagebox('이전 주민등록번호가 유효할 경우 주민등록번호 수정이 불가합니다.' + #10#13 + '추가 기사등록을 하실 경우에는 신규등록을'
           + #10#13 + '이용하여 주십시오.', CDMSE);
          cxedSoNum.Text  := cxedSoNum.Hint ;
          cxedSoNum1.Text := cxedSoNum1.Hint ;
          cxbModify.Enabled := True;
          gbKidiInfoChange := False;
          Exit;
        end;
      end;
		
      //개인보험 + 주민번호 변경시
      if (sTmp <> sBeforeJumin) and (chkKidiDrive.checked) then
      begin
        sMsg := '[개인보험-보험개발원] 사용중 주민번호 변경하시면 '+#13#10
              + '[개인보험-보험개발원] 등록을 다시 진행하여야 합니다.' +#13#10+#13#10 
              + '그래도 저장하시겠습니까?';
        if Application.MessageBox(PChar(sMsg), '[보험개발원]', MB_YESNO +	MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
        begin
          gbKidiInfoChange := True;  		
        end else
        begin
          cxedSoNum.SetFocus;
          Exit;			
        end;
      end;

      if (Length(sTmp) = 13) then
      begin
        bCheck := func_SoNumCheck(sTmp);
        if bCheck then
        begin
          // 수도권만 외국인 신규등록 불가능 하도록 제한. 2011.08.01
          // 외국인 등록 허용 2019.03.12 KHS 팀장님 지시   5,6,7,8
          // 외국인 등록 불가 2019.03.25 KHS 팀장님 지시
          if (GS_PRJ_AREA = 'S') and (LeftStr(cxedSoNum1.Text, 1) <> '1') and (LeftStr(cxedSoNum1.Text, 1) <> '2') and 
             (LeftStr(cxedSoNum1.Text, 1) <> '3') and (LeftStr(cxedSoNum1.Text, 1) <> '4') then
          begin
            GMessagebox('기사등록 불가한(임시거주 제2외국인, 외국인,, 등등) 주민번호를 입력하였습니다.', CDMSE);
            cxedSoNum.SetFocus;
            cxbModify.Enabled := True;
            Exit;
          end;
        end else
        begin
          GMessagebox('주민등록번호를 잘못 입력하였습니다.' + #13#10 + '주민등록번호를 다시한번 확인하여 주십시오', CDMSE);
          cxedSoNum.SetFocus;
          cxbModify.Enabled := True;
          Exit;
        end;
      end else
      begin
        if cxedSoNum.Text = '' then
        begin
          GMessagebox('주민등록번호 > 생년월일(6자리)을 입력하여 주십시오.', CDMSE);
          cxbModify.Enabled := True;
          cxedSoNum.SetFocus;
          Exit;
        end;
        if Length(cxedSoNum.Text) < 6 then
        begin
          GMessagebox('주민등록번호 > 생년월일을 정확히 입력하여 주십시오.', CDMSE);
          cxedSoNum.SetFocus;
          cxbModify.Enabled := True;
          Exit;
        end;
        if cxedSoNum1.Text = '' then
        begin
          GMessagebox('주민등록번호 > 생년월일외 뒷 7자리를 입력하여 주십시오.', CDMSE);
          cxedSoNum1.SetFocus;
          cxbModify.Enabled := True;
          Exit;
        end;
        if Length(cxedSoNum1.Text) < 7 then
        begin
          GMessagebox('주민등록번호 > 생년월일외 뒷 7자리를 정확히 입력하여 주십시오.', CDMSE);
          cxedSoNum1.SetFocus;
          cxbModify.Enabled := True;
          Exit;
        end;
      end;
    end;

		cxbHpCheck.Tag := 99;
		cxbHpCheck2.Tag := 98;
		cxbHpCheck3.Tag := 97;

		if edt_WkHp.Text = '' then
    begin
			GMessagebox('단말기 번호를 입력하셔야 합니다.', CDMSE);
			cxbHpCheck.Tag := 0;
			cxbHpCheck2.Tag := 2;
			cxbHpCheck3.Tag := 3;
			edt_WkHp.SetFocus;
			cxbModify.Enabled := true;
			exit;
		end;
		if cxbHpCheck.Enabled then
		begin
			GMessagebox('단말기 사용체크를 하여주십시오.', CDMSE);
			cxbHpCheck.Tag := 0;
			cxbHpCheck2.Tag := 2;
			cxbHpCheck3.Tag := 3;
			cxbHpCheck.SetFocus;
			cxbModify.Enabled := true;
			Exit;
		end;
		cxbHpCheck.Tag := 0;
		cxbHpCheck2.Tag := 2;
		cxbHpCheck3.Tag := 3;
		
		if cxedPhone.Text = '' then
		begin
			GMessagebox('휴대폰 번호를 입력하셔야 합니다.', CDMSE);
			cxedPhone.SetFocus;
			cxbModify.Enabled := true;
			exit;
		end;

		if (chkCallDrive.checked) and (lb_WKINS_MER_STATUS.Caption <> '통과') then
		begin
			GMessagebox('[콜당보험]은 심사결과가 통과일 경우만 선택가능합니다..', CDMSE);
			cxPageControl1.ActivePageIndex := 0;
			chkCallDrive.SetFocus;
			cxbModify.Enabled := true;
			exit;
		end;

		if (chkKidiDrive.checked) and (lb_WKINS_Kidi_STATUS.Caption <> '보험정상') then
		begin
			GMessagebox('[개인보험]은 심사결과가 [보험정상]일 경우만 선택가능합니다..', CDMSE);
			cxPageControl1.ActivePageIndex := 0;
			chkKidiDrive.SetFocus;
			cxbModify.Enabled := true;
			exit;
		end;

		if (chkDrive.checked)  then
		begin
			if (cxcbInsCorper.ItemIndex = 0) then
			begin
				GMessagebox('[대리운전보험]일 경우에는 보험사를 선택하여야 합니다.', CDMSE);
				cxPageControl1.ActivePageIndex := 0;
				cxcbInsCorper.SetFocus;
				cxbModify.Enabled := true;
				exit;
			end;
			if (cxedInsNum.Text = '') then
			begin
				GMessagebox('[대리운전보험]일 경우에는 보험 번호를 입력하셔야 합니다.', CDMSE);
				cxPageControl1.ActivePageIndex := 0;
				cxedInsNum.SetFocus;
				cxbModify.Enabled := true;
				exit;
			end;
		end;

		if chkTakAlly.checked then
		begin
			if not chkTaksong.Checked  then
			begin
				GMessagebox('탁송연합기사 가입시에는 탁송운전보험에 꼭 가입하셔야 합니다.', CDMSE);
				cxPageControl1.ActivePageIndex := 0;
				Exit;
			end;
		end;

		if (chkTakCall.Checked) and (lb_TakINS_MER_STATUS.Caption <> '통과') then
		begin
			GMessagebox('[탁송콜당보험]은 심사결과가 통과일 경우만 선택가능합니다..', CDMSE);
			chkCallDrive.SetFocus;
			cxbModify.Enabled := true;
			exit;
		end;

    if cbWorkStart.Checked then
    begin
      if Trim(deWorkStart.Text) = '' then
      begin
        GMessagebox('업무시작 체크시 업무시작일을 입력하세요', CDMSE);
        deWorkStart.SetFocus;
        Exit;
      end;
    end;

   	if (chkTaksong.Checked)  then
		begin
			if (cb_TakInsCorper.ItemIndex = 0) then
			begin
				GMessagebox('[탁송보험]일 경우에는 보험사를 선택하여야 합니다.', CDMSE);
				cxPageControl1.ActivePageIndex := 0;
				cb_TakInsCorper.SetFocus;
				cxbModify.Enabled := true;
				Exit;
			end;
			if (Trim(edtTakInsNum.Text) = '') then
			begin
				GMessagebox('[탁송보험]일 경우에는 경우 탁송보험번호를 꼭 입력하셔야 합니다.', CDMSE);
				cxPageControl1.ActivePageIndex := 0;
				if edtTakInsNum.enabled then edtTakInsNum.SetFocus;
				cxbModify.Enabled := true;
				Exit;
			end;
		end;

		if edtNameSabun.Text = '' then
			WorkerName := cxedName.Text
		else
			WorkerName := Format('%s*%s', [edtNameSabun.Text, cxedName.Text]);

		if Length(WorkerName) > 15 then
    begin
			GMessagebox('기사사번 길이 + 성명 길이가 너무 깁니다.' +#13#10
				+ '기사사번 및 성명을 단축하여 입력 바랍니다.' + #13#10
				+ '(가능길이 15bytes: 한글(2Bytes), 영문,숫자(1Bytes))', CDMSE);
			cxedName.SetFocus;
			cxbModify.Enabled := true;
			exit;
    end;

		if (gsOrgHp <> '') and (gsOrgHp <> edt_WkHp.Text) then
		begin
			cxbHpCheck.Enabled := True;
			gsOrgHp := edt_WkHp.Text;
			cxbModify.Enabled := true;
			exit;
		end;
		sWkHp := cxcbWkHp.Text + edt_WkHp.Text;
		sWkHp := StringReplace(sWkHp, '-', '', [rfReplaceAll]);

		proc_CheckBlacklist(sWkHp, 1);
		if Black_chk then
		begin
			cxbModify.Enabled := true;
			exit;
    end;

		ls_rxxml := GTx_UnitXmlLoad('C038N4.XML');
		xdom := ComsDomDocument.Create;
		try
      if (not xdom.loadXML(ls_rxxml)) then
      begin
				Screen.Cursor := crDefault;
				ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
				cxbModify.Enabled := True;
				Exit;
      end;

      sNode := '/cdms/header/UserID';
      lst_Node := xdom.documentElement.selectNodes(sNode);
		  lst_Node.item[0].attributes.getNamedItem('Value').Text := En_Coding(GT_USERIF.ID);
      sNode := '/cdms/header/ClientVer';
			lst_Node := xdom.documentElement.selectNodes(sNode);
			lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
      sNode := '/cdms/header/ClientKey';
      lst_Node := xdom.documentElement.selectNodes(sNode);
			if iType = 0 then
			begin
				lst_Node.item[0].attributes.getNamedItem('Value').Text := 'WOR197';
        sNode := '/cdms/Service/Worker';
				lst_Node := xdom.documentElement.selectNodes(sNode);
				lst_Node.item[0].attributes.getNamedItem('action').Text := 'INSERT';
				lst_Node.item[0].attributes.getNamedItem('WK_SABUN').Text := '';
        Org_BR_NO := cxBrNo.Text;
      end else
			begin
				lst_Node.item[0].attributes.getNamedItem('Value').Text := 'WOR198';
				sNode := '/cdms/Service/Worker';
				lst_Node := xdom.documentElement.selectNodes(sNode);
				lst_Node.item[0].attributes.getNamedItem('action').Text := 'UPDATE';

				lst_Node.item[0].attributes.getNamedItem('SEL_WK_SABUN').Text := '';
				lst_Node.item[0].attributes.getNamedItem('WK_SABUN').Text := cxedWkSabun.text;
      end;
      if iType <> 0 then
      begin
        if Org_HD_NO <> cxHdNo.Text then
				begin
          GMessagebox('소속본사 내 지사이동만 가능합니다.', CDMSE);
          cxbModify.Enabled := True;
          Exit;
        end;
      end;
			lst_Node.item[0].attributes.getNamedItem('HD_NO').Text := cxHdNo.Text;
			lst_Node.item[0].attributes.getNamedItem('BR_NO').Text := Org_BR_NO;          //지방권 지사 변경 시 원 지사 코드 저장 2011.12.19 KHS
		  lst_Node.item[0].attributes.getNamedItem('TO_BR_NO').Text := cxBrNo.Text;     //지방권 지사 변경 시 변경된 지사 코드 저장 2011.12.19 KHS
			lst_Node.item[0].attributes.getNamedItem('WK_NAME').Text := WorkerName;

			lst_Node.item[0].attributes.getNamedItem('BR_WK_NUM').Text := cxedSabun.Text;
			if cxcbWkmc.ItemIndex = 0 then
				lst_Node.item[0].attributes.getNamedItem('WK_MOCK').Text := ''
      else
  		  lst_Node.item[0].attributes.getNamedItem('WK_MOCK').Text := cxcbWkmc.Text;

			if chkOnlyAuto.Checked = True then lst_Node.item[0].attributes.getNamedItem('WORK_STICK_YN').Text := 'n'
																		else lst_Node.item[0].attributes.getNamedItem('WORK_STICK_YN').Text := 'y';
			if chkTaksong.Checked = True then lst_Node.item[0].attributes.getNamedItem('WORK_CONSIGNMENT_YN').Text := 'y'
																	 else lst_Node.item[0].attributes.getNamedItem('WORK_CONSIGNMENT_YN').Text := 'n';

			if chkTaksong.Checked = True then 
			begin
				lst_Node.item[0].attributes.getNamedItem('WORK_CONSIGNMENT_YN').Text := 'y';
				lst_Node.item[0].attributes.getNamedItem('WK_INS_CONS_GUBUN').Text := 'm';
			end else
			if chkTakCall.Checked = True then  
			begin
				lst_Node.item[0].attributes.getNamedItem('WORK_CONSIGNMENT_YN').Text := 'y';
				lst_Node.item[0].attributes.getNamedItem('WK_INS_CONS_GUBUN').Text := 'c';
			end else
			begin
				lst_Node.item[0].attributes.getNamedItem('WORK_CONSIGNMENT_YN').Text := 'n';
				lst_Node.item[0].attributes.getNamedItem('WK_INS_CONS_GUBUN').Text := 'n';
			end;

			if (chkTaksong.Checked) and (chkTakHwak.Checked) then    //탁송기사이면서 탁송확대기사이면 
				lst_Node.item[0].attributes.getNamedItem('CONSIGNMENT_EXP_YN').Text := 'y'
			else 
				lst_Node.item[0].attributes.getNamedItem('CONSIGNMENT_EXP_YN').Text := 'n';
																	 
			lst_Node.item[0].attributes.getNamedItem('WK_CONINS_NUM').Text := Trim(edtTakInsNum.Text); //탁송보험번호 20170107 KHS														 

			lst_Node.item[0].attributes.getNamedItem('CONSIGNMENT_ST_DATE').Text := FormatDateTime('YYYYMMDD', cxdTaktInsStart.Date); //탁송보험시작일 
			lst_Node.item[0].attributes.getNamedItem('CONSIGNMENT_EXPIRATION').Text := FormatDateTime('YYYYMMDD', cxdTaktInsEnd.Date); //탁송만기일 

			if cb_TakInsCorper.ItemIndex = 0 then
			begin
				if chkTakCall.checked then
				begin
					sTakInsCd := '06';
				end
				else sTakInsCd := '00';
			end			else
			begin
				sTakInsCd := slTakInsCode.Strings[cb_TakInsCorper.ItemIndex];
				if sTakInsCd = '99' then //변경 할 보험가사 '기타'이면  //대대협이면
				begin
					if cb_TakInsCorper.ItemIndex <> iCorper then    //처음 불러온 보험사가 수정될 보험사와 다르면
					begin
						GMessagebox('타송보험사를 [기타]로 지정할 수 없습니다.', CDMSE);
						cxPageControl1.ActivePageIndex := 0;
						cxbModify.Enabled := true;
						exit;
					end;
				end;  
			end;
			lst_Node.item[0].attributes.getNamedItem('CONSIGNMENT_CORPER').Text := sTakInsCd;

			if cxlbl4.caption = '동의함' then lst_Node.item[0].attributes.getNamedItem('WORK_CONSIGNMENT_AGREE_YN').Text := 'y'
																	 else lst_Node.item[0].attributes.getNamedItem('WORK_CONSIGNMENT_AGREE_YN').Text := '';

		  if (bFileUpload) or (bModify) then
		  	lst_Node.item[0].attributes.getNamedItem('PICTURE_YN').Text := 'y'
		  else
		  	lst_Node.item[0].attributes.getNamedItem('PICTURE_YN').Text := '';

			sSNum := cxedSoNum.Text + cxedSoNum1.Text;
      sSNum := StringReplace(sSNum, '-', '', [rfReplaceAll]);
		  sSNum := StringReplace(sSNum, ' ', '', [rfReplaceAll]);

      if (IsAngelPlusHead(GS_PRJ_AREA = 'S', GT_UserIF.HD)) then
      begin
        sWkPhone := edtPhone.Text + cxedPhone.Text;
      end else
      begin
        sWkPhone := cxcbPhone.Text + cxedPhone.Text;
      end;
		  sWkPhone := StringReplace(sWkPhone, '-', '', [rfReplaceAll]);
		  sWkTel := cxedTel.Text;
		  sWkTel := StringReplace(sWkTel, '-', '', [rfReplaceAll]);

			Try
				sNaviCd := slNaviHpCd.Strings[cboNavi.ItemIndex];
			except
				sNaviCd := '';
			End;

			if cxcbInsCorper.ItemIndex = 0 then
			begin
				if chkCallDrive.checked then
				begin
					sInsCd := slInsCode.Strings[cxcbInsCorper.ItemIndex];
				end else sInsCd := '00';
			end	else
			if cxcbInsCorper.ItemIndex > 0 then
			begin
				sInsCd := slInsCode.Strings[cxcbInsCorper.ItemIndex];
				if sInsCd = '99' then //변경 할 보험가사 '기타'이면  //대대협이면
				begin
					if cxcbInsCorper.ItemIndex <> iCorper then    //처음 불러온 보험사가 수정될 보험사와 다르면
					begin
						GMessagebox('보험사를 [기타]로 지정할 수 없습니다.', CDMSE);
						cxPageControl1.ActivePageIndex := 0;
						cxbModify.Enabled := true;
						exit;
					end;
				end;
			end;

			sWkViewCd := IntToStr(cbbOrderView.ItemIndex);// IfThen(cxrdOwner.Checked, '0', '1');
      sSex := IfThen(cxrdMan.Checked, 'm', 'w');
		  if cxcbComtype.ItemIndex > -1 then
		  		sWkCommCd := slCmdCode.Strings[cxcbComtype.ItemIndex];
      sPriceBlock := '-';
		  if cbbPriceBlock.Enabled then
		  	sPriceBlock := IfThen(cbbPriceBlock.ItemIndex = 1, 'n', 'y');

		  lst_Node.item[0].attributes.getNamedItem('WK_SNUM').Text := sSNum;
			lst_Node.item[0].attributes.getNamedItem('WK_SEX').Text := sSex;
		  lst_Node.item[0].attributes.getNamedItem('ADDR1').Text := exedAddr1.Text;
		  lst_Node.item[0].attributes.getNamedItem('ADDR2').Text := exedAddr2.Text;
			lst_Node.item[0].attributes.getNamedItem('ZIPCODE').Text := edtWorkerZipCode.Text;
			if cxcbWkHp_JoinCNT.ItemIndex = 0 then
			else
				sWkHp := sWkHp + Trim(cxcbWkHp_JoinCNT.Text);

      if IsHBShare(GS_PRJ_AREA = 'O', GT_USERIF.ShareNo) then
				lst_Node.item[0].attributes.getNamedItem('WK_HP').Text := sWkHp + '#3'
      else if GB_365System then
				lst_Node.item[0].attributes.getNamedItem('WK_HP').Text := sWkHp + '#7'
			else if GB_CallLine then
				lst_Node.item[0].attributes.getNamedItem('WK_HP').Text := sWkHp + '#5'
			else if FShuttel4[cboBranch.itemindex] = 'y' then
				lst_Node.item[0].attributes.getNamedItem('WK_HP').Text := sWkHp + '#4'
			else
				lst_Node.item[0].attributes.getNamedItem('WK_HP').Text := sWkHp;
			lst_Node.item[0].attributes.getNamedItem('WK_PDA_MODEL').Text := sNaviCd;
			lst_Node.item[0].attributes.getNamedItem('WK_PHONE').Text := sWkPhone;
			lst_Node.item[0].attributes.getNamedItem('WK_TEL').Text := sWkTel;

			lst_Node.item[0].attributes.getNamedItem('WK_INS_CORPER').Text := sInsCd;
			lst_Node.item[0].attributes.getNamedItem('WK_INS_NUM').Text := cxedInsNum.Text;

			if (chkDrive.checked) or (chkCallDrive.checked) then
				lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').Text := 'y'
			else
				lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').Text := 'n';
			
			lst_Node.item[0].attributes.getNamedItem('INSURANCE_ST_DATE').Text := FormatDateTime('YYYYMMDD', cxdtInsStart.Date); // 보험시작일 
			lst_Node.item[0].attributes.getNamedItem('INSURANCE_EXPIRATION').Text := FormatDateTime('YYYYMMDD', cxdtInsEnd.Date);
			lst_Node.item[0].attributes.getNamedItem('WK_DRV_LIC').Text := cxedDrvLic.Text;
			lst_Node.item[0].attributes.getNamedItem('WK_SHOT_MEMO').Text := cxedMemo.Text;

			sTmp := Trim(cxmmMemo.Text);
			sTmp := ReplaceAll(sTmp, #$D#$A, '¶');
			sTmp := ReplaceAll(sTmp, #13#10, '¶');
			sTmp := ReplaceAll(sTmp, #10#13, '¶');
			
			lst_Node.item[0].attributes.getNamedItem('WK_MEMO').Text := sTmp;
			lst_Node.item[0].attributes.getNamedItem('WK_REG_DATE').Text := FormatDateTime('YYYYMMDD', cxdtReg.Date);
		  lst_Node.item[0].attributes.getNamedItem('WK_BASIC_SIDO').Text := cxcbAttendArea.Text;
		  lst_Node.item[0].attributes.getNamedItem('WK_EXTERNAL_ORDER').Text := sWkViewCd;
		  lst_Node.item[0].attributes.getNamedItem('CMS_CODE').Text := sWkCommCd;
		  lst_Node.item[0].attributes.getNamedItem('FREE_CNT').Text := cxedFreeCall.Text;
		  lst_Node.item[0].attributes.getNamedItem('WK_EXTERNAL_ORDER').Text := sWkViewCd;
			lst_Node.item[0].attributes.getNamedItem('WK_REAL_NAME').Text := edtRealName.Text;
			lst_Node.item[0].attributes.getNamedItem('LIC_ST_CD').Text := FLicStCd;
			lst_Node.item[0].attributes.getNamedItem('MIN_FINISH_YN').text := sPriceBlock;
			lst_Node.item[0].attributes.getNamedItem('LIC_TYPE').text := GetLicTypeCode(cbbLicType.Text);
			lst_Node.item[0].attributes.getNamedItem('DRIVE_DISTANCE_TYPE').text := IntToStr(cbbDistanceType.ItemIndex);
			lst_Node.item[0].attributes.getNamedItem('WK_DRV_LIC_DATE').text := FormatDateTime('YYYYMMDD', cxdtLinsDate.Date);  //면허발급일자

			if not func_CallInsureShareNo(GT_USERIF.ShareNo) then //제한연합아니면
			begin
				//탁송보험만 선택 시 m으로 넣어줌 2017.12.26(정경석과장) KHS
//      탁송보험 구분값 추가 CONS_INS_GUBUN 2018.04.17 (정경석과장) KHS
//                                   변경전	 변경후
//      월정액보험	콜당보험(통과)		Ins_Type Ins_Type	
//         O	        X	              m	      m
//         X	        X	              n	      n
//         X	        O	              c,k	    c,k
//      개인보험(보험개발원 ) 추가  2021.01.28 KHS
//      월정액보험	콜당보험(통과)	개인보험(개발원)	Ins_Type
//         O	        X	                 X               m
//         X	        O	                 X               c,k
//         X	        X	                 O               b
//         X	        X	                 X               n
//- wk_ins_type 추가 'b' 
		{m:단체보험(월당), c:콜당(메리츠), d: db손보(개인보험), k:콜당(KB), n:미지정, b:보험개발원연동(개인보험)}
				if (not chkDrive.Checked) and (not chkCallDrive.Checked) and (not chkKidiDrive.Checked) then  //보험구분
				begin
					lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'n'; //일반콜 사용안함
					lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'n'; //일반콜 선택안할경우 
					lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
				end else
				if (chkDrive.Checked) and (cxcbInsCorper.ItemIndex <> 0) then  //보험구분
				begin
					lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'y'; //일반콜 사용함
					lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'm';
					lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
				end else
				if (chkCallDrive.Checked) and (cxcbInsCorper.ItemIndex = 0) then  //보험구분
				begin
					lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'y'; //일반콜 사용함
					lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'c';
					if iType = 0 then
						lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '9'
					else
						lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
				end else
				if (chkCallDrive.Checked) and (cxcbInsCorper.ItemIndex = 1) then  //보험구분
				begin
					lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'y'; //일반콜 사용함
					lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'k';
					if iType = 0 then
						lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '9'
					else
						lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
				end else
				if (chkKidiDrive.Checked) then  //보험구분 : 개인보험(보험개발원)
				begin
					lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'y'; //일반콜 사용함
					lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'b';
					if iType = 0 then
						lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '9'
					else
						lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
				end;
			end
			else //제한연합이면
			begin
				if (not chkDrive.Checked) and (not chkCallDrive.Checked) and (not chkKidiDrive.Checked) then  //보험구분
				begin
					lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'n'; //일반콜 사용안함
					lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'n'; //'없음'상태
					lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
				end else
				begin
					lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'y'; //일반콜 사용함
					lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'm';
					lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
				end;
			end;

			//월당보험일 경우에는 무조건 월당보험으로 적용
			if pnl_DBIns.Hint = 'd' then 
			begin
				lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'y'; //일반콜 사용함
				lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'd'; //월당보험
			end;

			lst_Node.item[0].attributes.getNamedItem('ORDER_SHARE_NO').text := '';
			if cxcbWkHp_JoinCNT.ItemIndex <> 0 then //#2이상일경우에만 20170803 KHS
			begin
				case	cxcbWkShareNo.Tag of
					0 : lst_Node.item[0].attributes.getNamedItem('ORDER_SHARE_NO').text := '';
					1 : lst_Node.item[0].attributes.getNamedItem('ORDER_SHARE_NO').text := 'G70';
					2 : lst_Node.item[0].attributes.getNamedItem('ORDER_SHARE_NO').text := 'G71';
					3 : lst_Node.item[0].attributes.getNamedItem('ORDER_SHARE_NO').text := 'G72';
					4 : lst_Node.item[0].attributes.getNamedItem('ORDER_SHARE_NO').text := 'G73';
				end;
			end; //#1일경우에는 무조건 공유연합없음

			lst_Node.item[0].attributes.getNamedItem('AUTO_STATUS_DATE').Text := FormatDateTime('YYYYMMDD', cxdtInsStart.Date);

			if cb_Shuttle_Status.ItemIndex = 0 then
				lst_Node.item[0].attributes.getNamedItem('SHUTTLE_REG_STATUS').Text := '' else
			if cb_Shuttle_Status.ItemIndex = 1 then
		  	lst_Node.item[0].attributes.getNamedItem('SHUTTLE_REG_STATUS').Text := 'y' else
		  if cb_Shuttle_Status.ItemIndex = 2 then
		  	lst_Node.item[0].attributes.getNamedItem('SHUTTLE_REG_STATUS').Text := 'n';

			lst_Node.item[0].attributes.getNamedItem('SHUTTLE_PAY_TYPE').Text := IntToStr(cb_Shuttle_Charge.ItemIndex);
			lst_Node.item[0].attributes.getNamedItem('SHUTTLE_TID').Text := trim(edt_TagID.Text);//UpperCase(edt_TagID.Text);

			if chkTakAlly.Checked then sTmp := 'y' else sTmp := 'n';
			lst_Node.item[0].attributes.getNamedItem('WK_CONS_SHARE_YN').Text := sTmp;
			if chk_JON01SelfCard.Checked then sTmp := 'y' else sTmp := 'n';
			lst_Node.item[0].attributes.getNamedItem('SPOT_CARD_YN').Text := sTmp;
			Try
				sTmp := '';
				if cb_Wor23List.ItemIndex < 0 then sTmp := ''
                                      else sTmp := slMCashSeq[cb_Wor23List.ItemIndex];
			except
				sTmp := '';
			End;
			lst_Node.item[0].attributes.getNamedItem('MCASH_SCHEDULE_SEQ').Text := sTmp; //MCash 스케줄 추가 20190827 KHS

			if cbWorkStart.Checked then sTmp := FormatDateTime('YYYY-MM-DD 00:00:00', deWorkStart.Date) else sTmp := '';
			lst_Node.item[0].attributes.getNamedItem('WORK_START_DATE').Text := sTmp;
			
			ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;

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
		  	cxbModify.Enabled := True;
			end;  
    finally
      xdom := Nil;
		end;   
	except
		on E: Exception do
		begin
				Assert(False, E.Message);
			cxbHpCheck.Tag := 0;
			cxbHpCheck2.Tag := 2;
			cxbHpCheck3.Tag := 3;
			cxbModify.Enabled := True;
		end;
	end;
end;

procedure Tfrm_WOR01.proc_Worker_SaveO(iType: Integer);
var
	ls_TxLoad, sNode, rv_str, sTmp : string;
	sSNum, sWkHp, sWkPhone, sWkTel, sNaviCd, sInsCd, sWkViewCd, sWkCommCd, sSex, sPriceBlock: string;
	ls_rxxml: WideString;
	xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
	slReceive: TStringList;
  ErrCode: integer;
	WorkerName, sBeforeJumin, sTakInsCd, sMsg: string;
	bCheck : Boolean;
begin
	try
		cxbBrNum.Tag := 99;
		if cxedSabun.Text = '' then
		begin
			GMessagebox('사번을 입력하셔야 합니다.', CDMSE);
			cxedSabun.SetFocus;
			cxbModify.Enabled := true;
			exit;
		end;
		if cxedSabun.Text <> '' then
		begin
			cxbBrNum.Click;
			if cxbBrNum.Enabled then
			begin
				cxbBrNum.Tag :=0;
				cxbBrNum.SetFocus;
				cxbModify.Enabled := True;
				Exit;
			end;
		end;

		if cxedName.Text = '' then
		begin
			GMessagebox('성명을 입력하셔야 합니다.', CDMSE);
			cxedName.SetFocus;
			cxbModify.Enabled := true;
			exit;
		end;

		sTmp := StringReplace(cxedSoNum.Text + cxedSoNum1.Text, '-', '', [rfReplaceAll]);        //지금 주민번호 입력된 내용
		sBeforeJumin := StringReplace(cxedSoNum.Hint + cxedSoNum1.Hint, '-', '', [rfReplaceAll]); //불러왔을때 주민번호 내용

    //고용보험료 차감 예외 기사처리 20211229 KHS 신성현팀장요청
    if sTmp <> '1111111111111' then
    begin
      if ( Not cxbSoNumCheck.Enabled ) And (cxbSoNumCheck.Tag = 99) then
      begin

        if (iType = 1) and (sTmp <> sBeforeJumin) then
        begin
          GMessagebox('본인인증을 받은신 경우 주민등록번호 수정이 불가합니다.' + #10#13 + '추가 기사등록을 하실 경우에는 신규등록을'
           + #10#13 + '이용하여 주십시오.', CDMSE);
          cxedSoNum.Text  := cxedSoNum.Hint ;
          cxedSoNum1.Text := cxedSoNum1.Hint ;
          cxbModify.Enabled := True;
          gbKidiInfoChange := False;
          Exit;
        end;
			
        if pos('[본인인증성공]', cxmmMemo.Text) < 1 then
        cxmmMemo.Text := '[본인인증성공]' + cxmmMemo.Text;
      end;

      if ( Not GB_CallLine ) And (iType = 1) and (sTmp <> sBeforeJumin) then
      begin
        bCheck := func_SoNumCheck(sBeforeJumin);
        if bCheck then
        begin
           GMessagebox('이전 주민등록번호가 유효할 경우 주민등록번호 수정이 불가합니다.' + #10#13 + '추가 기사등록을 하실 경우에는 신규등록을'
           + #10#13 + '이용하여 주십시오.', CDMSE);
          cxedSoNum.Text  := cxedSoNum.Hint ;
          cxedSoNum1.Text := cxedSoNum1.Hint ;
          cxbModify.Enabled := True;
          gbKidiInfoChange := False;
          Exit;
        end;
      end;
		
      //개인보험 + 주민번호 변경시
      if (sTmp <> sBeforeJumin) and (chkKidiDrive.checked) then
      begin
        sMsg := '[개인보험-보험개발원] 사용중 주민번호 변경하시면 '+#13#10
              + '[개인보험-보험개발원] 등록을 다시 진행하여야 합니다.' +#13#10+#13#10 
              + '그래도 저장하시겠습니까?';
        if Application.MessageBox(PChar(sMsg), '[보험개발원]', MB_YESNO +	MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
        begin
          gbKidiInfoChange := True;  		
        end else
        begin
          cxedSoNum.SetFocus;
          Exit;			
        end;
      end;

      if (Length(sTmp) = 13) then
      begin
        bCheck := func_SoNumCheck(sTmp);
        if bCheck then
        begin
          // 수도권만 외국인 신규등록 불가능 하도록 제한. 2011.08.01
          // 외국인 등록 허용 2019.03.12 KHS 팀장님 지시 5,6,7,8
          // 외국인 등록 불가 2019.03.25 KHS 팀장님 지시
          if (GS_PRJ_AREA = 'S') and (LeftStr(cxedSoNum1.Text, 1) <> '1') and (LeftStr(cxedSoNum1.Text, 1) <> '2') and 
             (LeftStr(cxedSoNum1.Text, 1) <> '3') and (LeftStr(cxedSoNum1.Text, 1) <> '4') then
          begin
            GMessagebox('기사등록 불가한(임시거주 제2외국인, 외국인,, 등등) 주민번호를 입력하였습니다.', CDMSE);
            cxedSoNum.SetFocus;
            cxbModify.Enabled := True;
            Exit;
          end;
        end else
        begin
          GMessagebox('주민등록번호를 잘못 입력하였습니다.' + #13#10 + '주민등록번호를 다시한번 확인하여 주십시오', CDMSE);
          cxedSoNum.SetFocus;
          cxbModify.Enabled := True;
          Exit;
        end;
      end else
      begin
        if cxedSoNum.Text = '' then
        begin
          GMessagebox('주민등록번호 > 생년월일(6자리)을 입력하여 주십시오.', CDMSE);
          cxbModify.Enabled := True;
          cxedSoNum.SetFocus;
          Exit;
        end;
        if Length(cxedSoNum.Text) < 6 then
        begin
          GMessagebox('주민등록번호 > 생년월일을 정확히 입력하여 주십시오.', CDMSE);
          cxedSoNum.SetFocus;
          cxbModify.Enabled := True;
          Exit;
        end;
        if cxedSoNum1.Text = '' then
        begin
          GMessagebox('주민등록번호 > 생년월일외 뒷 7자리를 입력하여 주십시오.', CDMSE);
          cxedSoNum1.SetFocus;
          cxbModify.Enabled := True;
          Exit;
        end;
        if Length(cxedSoNum1.Text) < 7 then
        begin
          GMessagebox('주민등록번호 > 생년월일외 뒷 7자리를 정확히 입력하여 주십시오.', CDMSE);
          cxedSoNum1.SetFocus;
          cxbModify.Enabled := True;
          Exit;
        end;
      end;
    end;

		cxbHpCheck.Tag := 99;

		if edt_WkHp.Text = '' then
    begin
      GMessagebox('단말기 번호를 입력하셔야 합니다.', CDMSE);
			cxbHpCheck.Tag := 0;
			edt_WkHp.SetFocus;
			cxbModify.Enabled := true;
			exit;
		end;
		if cxbHpCheck.Enabled then
		begin
			GMessagebox('단말기 사용체크를 하여주십시오.', CDMSE);
			cxbHpCheck.Tag := 0;
			cxbHpCheck.SetFocus;
			cxbModify.Enabled := true;
			Exit;
		end;

		cxbHpCheck.Tag := 0;

		if cxedPhone.Text = '' then
		begin
			GMessagebox('휴대폰 번호를 입력하셔야 합니다.', CDMSE);
			cxedPhone.SetFocus;
			cxbModify.Enabled := true;
			exit;
		end;

		if (chkCallDrive.checked) and (lb_WKINS_MER_STATUS.Caption <> '통과') then
		begin
			GMessagebox('[콜당보험]은 심사결과가 통과일 경우만 선택가능합니다..', CDMSE);
			cxPageControl1.ActivePageIndex := 0;
			chkCallDrive.SetFocus;
			cxbModify.Enabled := true;
			exit;
		end;

		if (chkKidiDrive.checked) and (lb_WKINS_Kidi_STATUS.Caption <> '보험정상') then
		begin
			GMessagebox('[개인보험]은 심사결과가 [보험정상]일 경우만 선택가능합니다..', CDMSE);
			cxPageControl1.ActivePageIndex := 0;
			chkKidiDrive.SetFocus;
			cxbModify.Enabled := true;
			exit;
		end;

		if (chkDrive.checked)  then
		begin
			if (cxcbInsCorper.ItemIndex = 0) then
			begin
				GMessagebox('[대리운전보험]일 경우에는 보험사를 선택하여야 합니다.', CDMSE);
				cxPageControl1.ActivePageIndex := 0;
				cxcbInsCorper.SetFocus;
				cxbModify.Enabled := true;
				exit;
			end;
			if (cxedInsNum.Text = '') then
			begin
				GMessagebox('[대리운전보험]일 경우에는 보험 번호를 입력하셔야 합니다.', CDMSE);
				cxPageControl1.ActivePageIndex := 0;
				cxedInsNum.SetFocus;
				cxbModify.Enabled := true;
				exit;
			end;
		end;

		if chkTakAlly.checked then
		begin
			if not chkTaksong.Checked  then
			begin
				GMessagebox('탁송연합기사 가입시에는 탁송운전보험에 꼭 가입하셔야 합니다.', CDMSE);
				cxPageControl1.ActivePageIndex := 0;
				Exit;
			end;
		end;

		if (chkTaksong.Checked)  then
		begin
			if (cb_TakInsCorper.ItemIndex = 0) then
			begin
				GMessagebox('[탁송보험]일 경우에는 보험사를 선택하여야 합니다.', CDMSE);
				cxPageControl1.ActivePageIndex := 0;
				cb_TakInsCorper.SetFocus;
				cxbModify.Enabled := true;
				Exit;
			end;
			if (Trim(edtTakInsNum.Text) = '') then
			begin
				GMessagebox('[탁송보험]일 경우에는 경우 탁송보험번호를 꼭 입력하셔야 합니다.', CDMSE);
				cxPageControl1.ActivePageIndex := 0;
				if edtTakInsNum.enabled then edtTakInsNum.SetFocus;
				cxbModify.Enabled := true;
				Exit;
			end;
		end;

		if edtNameSabun.Text = '' then
			WorkerName := cxedName.Text
		else
			WorkerName := Format('%s*%s', [edtNameSabun.Text, cxedName.Text]);

		if Length(WorkerName) > 15 then
    begin
			GMessagebox('기사사번 길이 + 성명 길이가 너무 깁니다.' +#13#10
        + '기사사번 및 성명을 단축하여 입력 바랍니다.' + #13#10
				+ '(가능길이 15bytes: 한글(2Bytes), 영문,숫자(1Bytes))', CDMSE);
			cxedName.SetFocus;
			cxbModify.Enabled := true;
			exit;
    end;


		if gsOrgHp <> edt_WkHp.Text then
		begin
			cxbHpCheck.Enabled := True;
			gsOrgHp := edt_WkHp.Text;
			cxbModify.Enabled := true;
			exit;
		end;
		sWkHp := cxcbWkHp.Text + edt_WkHp.Text;
		sWkHp := StringReplace(sWkHp, '-', '', [rfReplaceAll]);

		proc_CheckBlacklist(sWkHp, 1);
		if Black_chk then 
		begin
			cxbModify.Enabled := true;
			exit;
    end;

		ls_rxxml := GTx_UnitXmlLoad('C038N4.XML');
    xdom := ComsDomDocument.Create;
		try
      if (not xdom.loadXML(ls_rxxml)) then
      begin
        Screen.Cursor := crDefault;
				ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
				cxbModify.Enabled := True;
        Exit;
      end;

      sNode := '/cdms/header/UserID';
      lst_Node := xdom.documentElement.selectNodes(sNode);
		  lst_Node.item[0].attributes.getNamedItem('Value').Text := En_Coding(GT_USERIF.ID);
      sNode := '/cdms/header/ClientVer';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
      sNode := '/cdms/header/ClientKey';
      lst_Node := xdom.documentElement.selectNodes(sNode);
		  if iType = 0 then
      begin
        lst_Node.item[0].attributes.getNamedItem('Value').Text := 'WOR017';
        sNode := '/cdms/Service/Worker';
        lst_Node := xdom.documentElement.selectNodes(sNode);
        lst_Node.item[0].attributes.getNamedItem('action').Text := 'INSERT';
				lst_Node.item[0].attributes.getNamedItem('WK_SABUN').Text := '';
        Org_BR_NO := cxBrNo.Text;
      end else
		  begin
		  	lst_Node.item[0].attributes.getNamedItem('Value').Text := 'WOR018';
        sNode := '/cdms/Service/Worker';
        lst_Node := xdom.documentElement.selectNodes(sNode);
        lst_Node.item[0].attributes.getNamedItem('action').Text := 'UPDATE';
        lst_Node.item[0].attributes.getNamedItem('WK_SABUN').Text := cxedWkSabun.Text;
			end;
      if iType <> 0 then
      begin
        if Org_HD_NO <> cxHdNo.Text then
        begin
					GMessagebox('소속본사 내 지사이동만 가능합니다.', CDMSE);
					cxbModify.Enabled := True;
          Exit;
        end;
      end;
			lst_Node.item[0].attributes.getNamedItem('HD_NO').Text := cxHdNo.Text;
			lst_Node.item[0].attributes.getNamedItem('BR_NO').Text := Org_BR_NO;          //지방권 지사 변경 시 원 지사 코드 저장 2011.12.19 KHS
      lst_Node.item[0].attributes.getNamedItem('TO_BR_NO').Text := cxBrNo.Text;     //지방권 지사 변경 시 변경된 지사 코드 저장 2011.12.19 KHS

			lst_Node.item[0].attributes.getNamedItem('WK_NAME').Text := WorkerName;
			lst_Node.item[0].attributes.getNamedItem('BR_WK_NUM').Text := cxedSabun.Text;
			if cxcbWkmc.ItemIndex = 0 then
   		  lst_Node.item[0].attributes.getNamedItem('WK_MOCK').Text := ''
      else
  		  lst_Node.item[0].attributes.getNamedItem('WK_MOCK').Text := cxcbWkmc.Text;

      if chkOnlyAuto.Checked = True then lst_Node.item[0].attributes.getNamedItem('WORK_STICK_YN').Text := 'n'
																		else lst_Node.item[0].attributes.getNamedItem('WORK_STICK_YN').Text := 'y';
																		
			if chkTaksong.Checked = True then 
			begin
				lst_Node.item[0].attributes.getNamedItem('WORK_CONSIGNMENT_YN').Text := 'y';
				lst_Node.item[0].attributes.getNamedItem('WK_INS_CONS_GUBUN').Text := 'm';       //탁송 보험 구분
			end else
			begin
				lst_Node.item[0].attributes.getNamedItem('WORK_CONSIGNMENT_YN').Text := 'n';
				lst_Node.item[0].attributes.getNamedItem('WK_INS_CONS_GUBUN').Text := 'n';
			end;

			lst_Node.item[0].attributes.getNamedItem('CONSIGNMENT_ST_DATE').Text := FormatDateTime('YYYYMMDD', cxdTaktInsStart.Date); //탁송보험시작일 
			lst_Node.item[0].attributes.getNamedItem('CONSIGNMENT_EXPIRATION').Text := FormatDateTime('YYYYMMDD', cxdTaktInsEnd.Date); //탁송만기일 
			if cb_TakInsCorper.ItemIndex = 0 then sTakInsCd := '00'
			else
			begin
				sTakInsCd := slTakInsCode.Strings[cb_TakInsCorper.ItemIndex];
				if sTakInsCd = '99' then //변경 할 보험가사 '기타'이면  //대대협이면
				begin
					if cb_TakInsCorper.ItemIndex <> iCorper then    //처음 불러온 보험사가 수정될 보험사와 다르면
					begin
						GMessagebox('타송보험사를 [기타]로 지정할 수 없습니다.', CDMSE);
						cxPageControl1.ActivePageIndex := 0;
						cxbModify.Enabled := true;
						exit;
					end;
				end;  
			end;
			lst_Node.item[0].attributes.getNamedItem('CONSIGNMENT_CORPER').Text := sTakInsCd;
						
 			lst_Node.item[0].attributes.getNamedItem('WK_CONINS_NUM').Text := Trim(edtTakInsNum.Text); //탁송보험번호 20170107 KHS														 

      if cxlbl4.caption = '동의함' then lst_Node.item[0].attributes.getNamedItem('WORK_CONSIGNMENT_AGREE_YN').Text := 'y'
      else lst_Node.item[0].attributes.getNamedItem('WORK_CONSIGNMENT_AGREE_YN').Text := '';

       if (bFileUpload) or (bModify) then
        lst_Node.item[0].attributes.getNamedItem('PICTURE_YN').Text := 'y'
      else
        lst_Node.item[0].attributes.getNamedItem('PICTURE_YN').Text := '';

      sSNum := cxedSoNum.Text + cxedSoNum1.Text;
      sSNum := StringReplace(sSNum, '-', '', [rfReplaceAll]);
		  sSNum := StringReplace(sSNum, ' ', '', [rfReplaceAll]);

      if (IsAngelPlusHead(GS_PRJ_AREA = 'S', GT_UserIF.HD)) then
      begin
        sWkPhone := edtPhone.Text + cxedPhone.Text;
      end else
      begin
        sWkPhone := cxcbPhone.Text + cxedPhone.Text;
      end;
      sWkPhone := StringReplace(sWkPhone, '-', '', [rfReplaceAll]);
		  sWkTel := cxedTel.Text;
		  sWkTel := StringReplace(sWkTel, '-', '', [rfReplaceAll]);

			Try
				sNaviCd := slNaviHpCd.Strings[cboNavi.ItemIndex];
			except
				sNaviCd := '';
			End;

			if (not func_CallInsureShareNo(GT_USERIF.ShareNo)) and (cxcbInsCorper.ItemIndex = 0) then
			begin
				if chkCallDrive.checked then
				begin
					sInsCd := slInsCode.Strings[cxcbInsCorper.ItemIndex];
				end
				else	sInsCd := '00';
			end
			else
			begin
				sInsCd := slInsCode.Strings[cxcbInsCorper.ItemIndex];
				if sInsCd = '99' then //변경 할 보험가사 '기타'이면  //대대협이면
				begin
					if cxcbInsCorper.ItemIndex <> iCorper then    //처음 불러온 보험사가 수정될 보험사와 다르면
					begin
						GMessagebox('보험사를 [기타]로 지정할 수 없습니다.', CDMSE);
						cxPageControl1.ActivePageIndex := 0;
						cxbModify.Enabled := true;
						exit;
					end;
				end;
			end;

			sWkViewCd := IntToStr(cbbOrderView.ItemIndex);// IfThen(cxrdOwner.Checked, '0', '1');
      sSex := IfThen(cxrdMan.Checked, 'm', 'w');
      if cxcbComtype.ItemIndex > -1 then
		  		sWkCommCd := slCmdCode.Strings[cxcbComtype.ItemIndex];
      sPriceBlock := '-';
			if cbbPriceBlock.Enabled then
        sPriceBlock := IfThen(cbbPriceBlock.ItemIndex = 1, 'n', 'y');

		  lst_Node.item[0].attributes.getNamedItem('WK_SNUM').Text := sSNum;
		  lst_Node.item[0].attributes.getNamedItem('WK_SEX').Text := sSex;
      lst_Node.item[0].attributes.getNamedItem('ADDR1').Text := exedAddr1.Text;
      lst_Node.item[0].attributes.getNamedItem('ADDR2').Text := exedAddr2.Text;
		  lst_Node.item[0].attributes.getNamedItem('ZIPCODE').Text := edtWorkerZipCode.Text;
			if ( cxcbWkHp_JoinCNT.ItemIndex = 0 ) Or IsHBShare(GS_PRJ_AREA = 'O', GT_USERIF.ShareNo) then
			else
				sWkHp := sWkHp + Trim(cxcbWkHp_JoinCNT.Text);

      if IsHBShare(GS_PRJ_AREA = 'O', GT_USERIF.ShareNo) then
				lst_Node.item[0].attributes.getNamedItem('WK_HP').Text := sWkHp + '#3'
      else if GB_365System then
				lst_Node.item[0].attributes.getNamedItem('WK_HP').Text := sWkHp + '#7'
			else if GB_CallLine then
				lst_Node.item[0].attributes.getNamedItem('WK_HP').Text := sWkHp + '#5'
			else if FShuttel4[cboBranch.itemindex] = 'y' then
				lst_Node.item[0].attributes.getNamedItem('WK_HP').Text := sWkHp + '#4'
			else	
				lst_Node.item[0].attributes.getNamedItem('WK_HP').Text := sWkHp;
			lst_Node.item[0].attributes.getNamedItem('WK_PDA_MODEL').Text := sNaviCd;
      lst_Node.item[0].attributes.getNamedItem('WK_PHONE').Text := sWkPhone;
      lst_Node.item[0].attributes.getNamedItem('WK_TEL').Text := sWkTel;
			lst_Node.item[0].attributes.getNamedItem('WK_INS_CORPER').Text := sInsCd;
			lst_Node.item[0].attributes.getNamedItem('WK_INS_NUM').Text := cxedInsNum.Text;
			
			if (chkDrive.checked) or (chkCallDrive.checked) then
				lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').Text := 'y'
			else
				lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').Text := 'n';

			lst_Node.item[0].attributes.getNamedItem('INSURANCE_ST_DATE').Text := FormatDateTime('YYYYMMDD', cxdtInsStart.Date); // 보험시작일 
			lst_Node.item[0].attributes.getNamedItem('INSURANCE_EXPIRATION').Text := FormatDateTime('YYYYMMDD', cxdtInsEnd.Date);
      lst_Node.item[0].attributes.getNamedItem('WK_DRV_LIC').Text := cxedDrvLic.Text;
      lst_Node.item[0].attributes.getNamedItem('WK_SHOT_MEMO').Text := cxedMemo.Text;

			sTmp := Trim(cxmmMemo.Text);
			sTmp := ReplaceAll(sTmp, #$D#$A, '¶');
			sTmp := ReplaceAll(sTmp, #13#10, '¶');
			sTmp := ReplaceAll(sTmp, #10#13, '¶');
			lst_Node.item[0].attributes.getNamedItem('WK_MEMO').Text := sTmp;
			lst_Node.item[0].attributes.getNamedItem('WK_REG_DATE').Text := FormatDateTime('YYYYMMDD', cxdtReg.Date);
		  lst_Node.item[0].attributes.getNamedItem('WK_BASIC_SIDO').Text := cxcbAttendArea.Text;
      lst_Node.item[0].attributes.getNamedItem('WK_EXTERNAL_ORDER').Text := sWkViewCd;
      lst_Node.item[0].attributes.getNamedItem('CMS_CODE').Text := sWkCommCd;
      lst_Node.item[0].attributes.getNamedItem('FREE_CNT').Text := cxedFreeCall.Text;
      lst_Node.item[0].attributes.getNamedItem('WK_EXTERNAL_ORDER').Text := sWkViewCd;
      lst_Node.item[0].attributes.getNamedItem('WK_REAL_NAME').Text := edtRealName.Text;
      lst_Node.item[0].attributes.getNamedItem('LIC_ST_CD').Text := FLicStCd;
      lst_Node.item[0].attributes.getNamedItem('MIN_FINISH_YN').text := sPriceBlock;
      lst_Node.item[0].attributes.getNamedItem('LIC_TYPE').text := GetLicTypeCode(cbbLicType.Text);
		  lst_Node.item[0].attributes.getNamedItem('DRIVE_DISTANCE_TYPE').text := IntToStr(cbbDistanceType.ItemIndex);
			lst_Node.item[0].attributes.getNamedItem('WK_DRV_LIC_DATE').text := FormatDateTime('YYYYMMDD', cxdtLinsDate.Date);  //면허발급일자

			if not func_CallInsureShareNo(GT_USERIF.ShareNo) then //제한연합아니면
			begin
				//탁송보험만 선택 시 m으로 넣어줌 2017.12.26(정경석과장) KHS
//			                                     변경전	 변경후
//      월당보험	콜당보험(통과)	탁송보험	Ins_Type Ins_Type	
//         O	        X	             O	       m	      m
//         O         	X              X	       m	      m 
//         X	        X	             O	       n	      m
//         X	        X	             X	       n	      n
//         X        	O              X       	 c,k	    c.k
//         X	        O	             O	       c,k	    c,k
//      탁송보험 구분값 추가 CONS_INS_GUBUN 2018.04.17 (정경석과장) KHS
//                                   변경전	 변경후
//      월당보험	콜당보험(통과)		Ins_Type Ins_Type	
//         O	        X	              m	      m
//         X	        X	              n	      n
//         X	        O	              c,k	    c,k
//      개인보험(보험개발원 ) 추가  2021.01.28 KHS
//      월정액보험	콜당보험(통과)	개인보험(개발원)	Ins_Type
//         O	        X	                 X               m
//         X	        O	                 X               c,k
//         X	        X	                 O               b
//         X	        X	                 X               n
//- wk_ins_type 추가 'b' 
		{m:단체보험(월당), c:콜당(메리츠), d: db손보(개인보험), k:콜당(KB), n:미지정, b:보험개발원연동(개인보험)}
				if (not chkDrive.Checked) and (not chkCallDrive.Checked) and (not chkKidiDrive.Checked) then  //보험구분
				begin
					lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'n'; //일반콜 사용안함
					lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'n'; // 탁송조차 선택안할경우 
					lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
				end else    
				if (chkDrive.Checked) and (cxcbInsCorper.ItemIndex <> 0) then  //보험구분
				begin
					lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'y'; //일반콜 사용함
					lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'm';
					lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
				end else
				if (chkCallDrive.Checked) and (cxcbInsCorper.ItemIndex = 0) then  //보험구분
				begin
					lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'y'; //일반콜 사용함
					lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'c';
					if iType = 0 then
						lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '9'
					else
						lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
				end else
				if (chkCallDrive.Checked) and (cxcbInsCorper.ItemIndex = 1) then  //보험구분
				begin
					lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'y'; //일반콜 사용함
					lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'k';
					if iType = 0 then
						lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '9'
					else
						lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
				end else
				if (chkKidiDrive.Checked) then  //보험구분 : 개인보험(보험개발원)
				begin
					lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'y'; //일반콜 사용함
					lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'b';
					if iType = 0 then
						lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '9'
					else
						lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
				end;
			end
			else //제한연합이면
			begin
				if (not chkDrive.Checked) and (not chkCallDrive.Checked) and (not chkKidiDrive.Checked) then  //보험구분
				begin
					lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'n'; //일반콜 사용안함
					lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'n'; //'없음'상태
					lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
				end else
				begin
					lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'y'; //일반콜 사용함
					lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'm';
					lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
				end;
			end;

			//월당보험일 경우에는 무조건 월당보험으로 적용
			if pnl_DBIns.Hint = 'd' then 
			begin
				lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'y'; //일반콜 사용함
				lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'd'; //월당보험
			end;

			if ( cxcbWkShareNo.ItemIndex = 0 ) Or ( Not cxcbWkShareNo.Visible ) then
				lst_Node.item[0].attributes.getNamedItem('ORDER_SHARE_NO').text := ''
			else
				lst_Node.item[0].attributes.getNamedItem('ORDER_SHARE_NO').text := Copy(cxcbWkShareNo.Text, 1, 3);

			lst_Node.item[0].attributes.getNamedItem('AUTO_STATUS_DATE').Text := FormatDateTime('YYYYMMDD', cxdtInsStart.Date);

		  if cb_Shuttle_Status.ItemIndex = 0 then
				lst_Node.item[0].attributes.getNamedItem('SHUTTLE_REG_STATUS').Text := '' else
		  if cb_Shuttle_Status.ItemIndex = 1 then
				lst_Node.item[0].attributes.getNamedItem('SHUTTLE_REG_STATUS').Text := 'y' else
		  if cb_Shuttle_Status.ItemIndex = 2 then
		  	lst_Node.item[0].attributes.getNamedItem('SHUTTLE_REG_STATUS').Text := 'n';

		  lst_Node.item[0].attributes.getNamedItem('SHUTTLE_PAY_TYPE').Text := IntToStr(cb_Shuttle_Charge.ItemIndex);
			lst_Node.item[0].attributes.getNamedItem('SHUTTLE_TID').Text := trim(edt_TagID.Text);//UpperCase(edt_TagID.Text);

			if chkTakAlly.Checked then sTmp := 'y' else sTmp := 'n';
			lst_Node.item[0].attributes.getNamedItem('WK_CONS_SHARE_YN').Text := sTmp;
			if chk_JON01SelfCard.Checked then sTmp := 'y' else sTmp := 'n';
			lst_Node.item[0].attributes.getNamedItem('SPOT_CARD_YN').Text := sTmp;
			Try
				sTmp := '';
				if cb_Wor23List.ItemIndex < 0 then sTmp := ''
                                      else sTmp := slMCashSeq[cb_Wor23List.ItemIndex];
			except
				sTmp := '';
			End;
			lst_Node.item[0].attributes.getNamedItem('MCASH_SCHEDULE_SEQ').Text := sTmp; //MCash 스케줄 추가 20190827 KHS

			if cbWorkStart.Checked then sTmp := FormatDateTime('YYYY-MM-DD 00:00:00', deWorkStart.Date) else sTmp := '';
			lst_Node.item[0].attributes.getNamedItem('WORK_START_DATE').Text := sTmp;

			ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;

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
				cxbModify.Enabled := True;
      end;
    finally
      xdom := Nil;
    end;
	except on E: Exception do
		begin
			cxbHpCheck.Tag := 0;
			cxbModify.Enabled := True;
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_WOR01.proc_Worker_SaveO_Jeju(iType: Integer);
var
	ls_TxLoad, sNode, rv_str, sTmp : string;
	sSNum, sWkHp, sWkPhone, sWkTel, sNaviCd, sInsCd, sWkViewCd, sWkCommCd, sSex, sPriceBlock: string;
	ls_rxxml: WideString;
	xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
	slReceive: TStringList;
  ErrCode: integer;
	WorkerName, sBeforeJumin, sTakInsCd, sMsg: string;
	bCheck : Boolean;
begin
	try
		cxbBrNum.Tag := 99;
		if cxedSabun.Text = '' then
		begin
			GMessagebox('사번을 입력하셔야 합니다.', CDMSE);
			cxedSabun.SetFocus;
			cxbModify.Enabled := true;
			exit;
		end;
		if cxedSabun.Text <> '' then
		begin
			cxbBrNum.Click;
			if cxbBrNum.Enabled then
			begin
				cxbBrNum.Tag :=0;
				cxbBrNum.SetFocus;
				cxbModify.Enabled := True;
				Exit;
			end;
		end;

		if cxedName.Text = '' then
		begin
			GMessagebox('성명을 입력하셔야 합니다.', CDMSE);
			cxedName.SetFocus;
			cxbModify.Enabled := true;
			exit;
		end;

		sTmp := StringReplace(cxedSoNum.Text + cxedSoNum1.Text, '-', '', [rfReplaceAll]);        //지금 주민번호 입력된 내용
		sBeforeJumin := StringReplace(cxedSoNum.Hint + cxedSoNum1.Hint, '-', '', [rfReplaceAll]); //불러왔을때 주민번호 내용

    //고용보험료 차감 예외 기사처리 20211229 KHS 신성현팀장요청
    if sTmp <> '1111111111111' then
    begin
      if ( Not cxbSoNumCheck.Enabled ) And (cxbSoNumCheck.Tag = 99) then
      begin

        if (iType = 1) and (sTmp <> sBeforeJumin) then
        begin
          GMessagebox('본인인증을 받은신 경우 주민등록번호 수정이 불가합니다.' + #10#13 + '추가 기사등록을 하실 경우에는 신규등록을'
           + #10#13 + '이용하여 주십시오.', CDMSE);
          cxedSoNum.Text  := cxedSoNum.Hint ;
          cxedSoNum1.Text := cxedSoNum1.Hint ;
          cxbModify.Enabled := True;
          gbKidiInfoChange := False;
          Exit;
        end;
			
        if pos('[본인인증성공]', cxmmMemo.Text) < 1 then
        cxmmMemo.Text := '[본인인증성공]' + cxmmMemo.Text;
      end;

      if (iType = 1) and (sTmp <> sBeforeJumin) then
      begin
        bCheck := func_SoNumCheck(sBeforeJumin);
        if bCheck then
        begin
          GMessagebox('이전 주민등록번호가 유효할 경우 주민등록번호 수정이 불가합니다.' + #10#13 + '추가 기사등록을 하실 경우에는 신규등록을'
           + #10#13 + '이용하여 주십시오.', CDMSE);
          cxedSoNum.Text  := cxedSoNum.Hint ;
          cxedSoNum1.Text := cxedSoNum1.Hint ;
          cxbModify.Enabled := True;
          gbKidiInfoChange := False;
          Exit;
        end;
      end;
		
      //개인보험 + 주민번호 변경시
      if (sTmp <> sBeforeJumin) and (chkKidiDrive.checked) then
      begin
        sMsg := '[개인보험-보험개발원] 사용중 주민번호 변경하시면 '+#13#10
              + '[개인보험-보험개발원] 등록을 다시 진행하여야 합니다.' +#13#10+#13#10 
              + '그래도 저장하시겠습니까?';
        if Application.MessageBox(PChar(sMsg), '[보험개발원]', MB_YESNO +	MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
        begin
          gbKidiInfoChange := True;  		
        end else
        begin
          cxedSoNum.SetFocus;
          Exit;			
        end;
      end;

      if (Length(sTmp) = 13) then
      begin
        bCheck := func_SoNumCheck(sTmp);
        if bCheck then
        begin
          // 수도권만 외국인 신규등록 불가능 하도록 제한. 2011.08.01
          // 외국인 등록 허용 2019.03.12 KHS 팀장님 지시 5,6,7,8
          // 외국인 등록 불가 2019.03.25 KHS 팀장님 지시
          if (GS_PRJ_AREA = 'S') and (LeftStr(cxedSoNum1.Text, 1) <> '1') and (LeftStr(cxedSoNum1.Text, 1) <> '2') and 
             (LeftStr(cxedSoNum1.Text, 1) <> '3') and (LeftStr(cxedSoNum1.Text, 1) <> '4') then
          begin
            GMessagebox('기사등록 불가한(임시거주 제2외국인, 외국인,, 등등) 주민번호를 입력하였습니다.', CDMSE);
            cxedSoNum.SetFocus;
            cxbModify.Enabled := True;
            Exit;
          end;
        end else
        begin
          GMessagebox('주민등록번호를 잘못 입력하였습니다.' + #13#10 + '주민등록번호를 다시한번 확인하여 주십시오', CDMSE);
          cxedSoNum.SetFocus;
          cxbModify.Enabled := True;
          Exit;
        end;
      end else
      begin
        if cxedSoNum.Text = '' then
        begin
          GMessagebox('주민등록번호 > 생년월일(6자리)을 입력하여 주십시오.', CDMSE);
          cxbModify.Enabled := True;
          cxedSoNum.SetFocus;
          Exit;
        end;
        if Length(cxedSoNum.Text) < 6 then
        begin
          GMessagebox('주민등록번호 > 생년월일을 정확히 입력하여 주십시오.', CDMSE);
          cxedSoNum.SetFocus;
          cxbModify.Enabled := True;
          Exit;
        end;
        if cxedSoNum1.Text = '' then
        begin
          GMessagebox('주민등록번호 > 생년월일외 뒷 7자리를 입력하여 주십시오.', CDMSE);
          cxedSoNum1.SetFocus;
          cxbModify.Enabled := True;
          Exit;
        end;
        if Length(cxedSoNum1.Text) < 7 then
        begin
          GMessagebox('주민등록번호 > 생년월일외 뒷 7자리를 정확히 입력하여 주십시오.', CDMSE);
          cxedSoNum1.SetFocus;
          cxbModify.Enabled := True;
          Exit;
        end;
      end;
    end;

		cxbHpCheck.Tag := 99;

		if edt_WkHp.Text = '' then
    begin
      GMessagebox('단말기 번호를 입력하셔야 합니다.', CDMSE);
			cxbHpCheck.Tag := 0;
			edt_WkHp.SetFocus;
			cxbModify.Enabled := true;
			exit;
		end;
		if cxbHpCheck.Enabled then
		begin
			GMessagebox('단말기 사용체크를 하여주십시오.', CDMSE);
			cxbHpCheck.Tag := 0;
			cxbHpCheck.SetFocus;
			cxbModify.Enabled := true;
			Exit;
		end;

		cxbHpCheck.Tag := 0;
		
		if cxedPhone.Text = '' then
		begin
			GMessagebox('휴대폰 번호를 입력하셔야 합니다.', CDMSE);
			cxedPhone.SetFocus;
			cxbModify.Enabled := true;
			exit;
		end;

		if (chkCallDrive.checked) and (lb_WKINS_MER_STATUS.Caption <> '통과') then
		begin
			GMessagebox('[콜당보험]은 심사결과가 통과일 경우만 선택가능합니다..', CDMSE);
			cxPageControl1.ActivePageIndex := 0;
			chkCallDrive.SetFocus;
			cxbModify.Enabled := true;
			exit;
		end;

		if (chkKidiDrive.checked) and (lb_WKINS_Kidi_STATUS.Caption <> '보험정상') then
		begin
			GMessagebox('[개인보험]은 심사결과가 [보험정상]일 경우만 선택가능합니다..', CDMSE);
			cxPageControl1.ActivePageIndex := 0;
			chkKidiDrive.SetFocus;
			cxbModify.Enabled := true;
			exit;
		end;

		if (chkDrive.checked)  then
		begin
			if (cxcbInsCorper.ItemIndex = 0) then
			begin
				GMessagebox('[대리운전보험]일 경우에는 보험사를 선택하여야 합니다.', CDMSE);
				cxPageControl1.ActivePageIndex := 0;
				cxcbInsCorper.SetFocus;
				cxbModify.Enabled := true;
				exit;
			end;
			if (cxedInsNum.Text = '') then
			begin
				GMessagebox('[대리운전보험]일 경우에는 보험 번호를 입력하셔야 합니다.', CDMSE);
				cxPageControl1.ActivePageIndex := 0;
				cxedInsNum.SetFocus;
				cxbModify.Enabled := true;
				exit;
			end;
		end;

		if chkTakAlly.checked then
		begin
			if not chkTaksong.Checked  then
			begin
				GMessagebox('탁송연합기사 가입시에는 탁송운전보험에 꼭 가입하셔야 합니다.', CDMSE);
				cxPageControl1.ActivePageIndex := 0;
				Exit;
			end;
		end;

		if (chkTakCall.Checked) and (lb_TakINS_MER_STATUS.Caption <> '통과') then
		begin
			GMessagebox('[탁송콜당보험]은 심사결과가 통과일 경우만 선택가능합니다..', CDMSE);
			chkCallDrive.SetFocus;
			cxbModify.Enabled := true;
			exit;
		end;
				if (chkTaksong.Checked)  then
		begin
			if (cb_TakInsCorper.ItemIndex = 0) then
			begin
				GMessagebox('[탁송보험]일 경우에는 보험사를 선택하여야 합니다.', CDMSE);
				cxPageControl1.ActivePageIndex := 0;
				cb_TakInsCorper.SetFocus;
				cxbModify.Enabled := true;
				Exit;
			end;
			if (Trim(edtTakInsNum.Text) = '') then
			begin
				GMessagebox('[탁송보험]일 경우에는 경우 탁송보험번호를 꼭 입력하셔야 합니다.', CDMSE);
				cxPageControl1.ActivePageIndex := 0;
				if edtTakInsNum.enabled then edtTakInsNum.SetFocus;
				cxbModify.Enabled := true;
				Exit;
			end;
		end;

		if edtNameSabun.Text = '' then
			WorkerName := cxedName.Text
		else
			WorkerName := Format('%s*%s', [edtNameSabun.Text, cxedName.Text]);

		if Length(WorkerName) > 15 then
    begin
			GMessagebox('기사사번 길이 + 성명 길이가 너무 깁니다.' +#13#10
        + '기사사번 및 성명을 단축하여 입력 바랍니다.' + #13#10
				+ '(가능길이 15bytes: 한글(2Bytes), 영문,숫자(1Bytes))', CDMSE);
			cxedName.SetFocus;
			cxbModify.Enabled := true;
			exit;
    end;


		if gsOrgHp <> edt_WkHp.Text then
		begin
			cxbHpCheck.Enabled := True;
			gsOrgHp := edt_WkHp.Text;
			cxbModify.Enabled := true;
			exit;
		end;
		sWkHp := cxcbWkHp.Text + edt_WkHp.Text;
		sWkHp := StringReplace(sWkHp, '-', '', [rfReplaceAll]);

		proc_CheckBlacklist(sWkHp, 1);
		if Black_chk then 
		begin
			cxbModify.Enabled := true;
			exit;
    end;

		ls_rxxml := GTx_UnitXmlLoad('C038N4.XML');
    xdom := ComsDomDocument.Create;
		try
      if (not xdom.loadXML(ls_rxxml)) then
      begin
        Screen.Cursor := crDefault;
				ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
				cxbModify.Enabled := True;
        Exit;
      end;

      sNode := '/cdms/header/UserID';
      lst_Node := xdom.documentElement.selectNodes(sNode);
		  lst_Node.item[0].attributes.getNamedItem('Value').Text := En_Coding(GT_USERIF.ID);
      sNode := '/cdms/header/ClientVer';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
      sNode := '/cdms/header/ClientKey';
      lst_Node := xdom.documentElement.selectNodes(sNode);
		  if iType = 0 then
      begin
        lst_Node.item[0].attributes.getNamedItem('Value').Text := 'WOR017';
        sNode := '/cdms/Service/Worker';
        lst_Node := xdom.documentElement.selectNodes(sNode);
        lst_Node.item[0].attributes.getNamedItem('action').Text := 'INSERT';
				lst_Node.item[0].attributes.getNamedItem('WK_SABUN').Text := '';
        Org_BR_NO := cxBrNo.Text;
      end else
		  begin
		  	lst_Node.item[0].attributes.getNamedItem('Value').Text := 'WOR018';
        sNode := '/cdms/Service/Worker';
        lst_Node := xdom.documentElement.selectNodes(sNode);
        lst_Node.item[0].attributes.getNamedItem('action').Text := 'UPDATE';
        lst_Node.item[0].attributes.getNamedItem('WK_SABUN').Text := cxedWkSabun.Text;
			end;
      if iType <> 0 then
      begin
        if Org_HD_NO <> cxHdNo.Text then
        begin
					GMessagebox('소속본사 내 지사이동만 가능합니다.', CDMSE);
					cxbModify.Enabled := True;
          Exit;
        end;
      end;
			lst_Node.item[0].attributes.getNamedItem('HD_NO').Text := cxHdNo.Text;
			lst_Node.item[0].attributes.getNamedItem('BR_NO').Text := Org_BR_NO;          //지방권 지사 변경 시 원 지사 코드 저장 2011.12.19 KHS
      lst_Node.item[0].attributes.getNamedItem('TO_BR_NO').Text := cxBrNo.Text;     //지방권 지사 변경 시 변경된 지사 코드 저장 2011.12.19 KHS

			lst_Node.item[0].attributes.getNamedItem('WK_NAME').Text := WorkerName;
			lst_Node.item[0].attributes.getNamedItem('BR_WK_NUM').Text := cxedSabun.Text;
			if cxcbWkmc.ItemIndex = 0 then
   		  lst_Node.item[0].attributes.getNamedItem('WK_MOCK').Text := ''
      else
  		  lst_Node.item[0].attributes.getNamedItem('WK_MOCK').Text := cxcbWkmc.Text;

      if chkOnlyAuto.Checked = True then lst_Node.item[0].attributes.getNamedItem('WORK_STICK_YN').Text := 'n'
																		else lst_Node.item[0].attributes.getNamedItem('WORK_STICK_YN').Text := 'y';
																		
			if chkTaksong.Checked = True then 
			begin
				lst_Node.item[0].attributes.getNamedItem('WORK_CONSIGNMENT_YN').Text := 'y';
				lst_Node.item[0].attributes.getNamedItem('WK_INS_CONS_GUBUN').Text := 'm';       //탁송 보험 구분
			end else
			if chkTakCall.Checked = True then  
			begin
				lst_Node.item[0].attributes.getNamedItem('WORK_CONSIGNMENT_YN').Text := 'y';
				lst_Node.item[0].attributes.getNamedItem('WK_INS_CONS_GUBUN').Text := 'c';
			end else
			begin
				lst_Node.item[0].attributes.getNamedItem('WORK_CONSIGNMENT_YN').Text := 'n';
				lst_Node.item[0].attributes.getNamedItem('WK_INS_CONS_GUBUN').Text := 'n';
			end;

			lst_Node.item[0].attributes.getNamedItem('WK_CONINS_NUM').Text := Trim(edtTakInsNum.Text); //탁송보험번호 20170107 KHS														 

			lst_Node.item[0].attributes.getNamedItem('CONSIGNMENT_ST_DATE').Text := FormatDateTime('YYYYMMDD', cxdTaktInsStart.Date); //탁송보험시작일 
			lst_Node.item[0].attributes.getNamedItem('CONSIGNMENT_EXPIRATION').Text := FormatDateTime('YYYYMMDD', cxdTaktInsEnd.Date); //탁송만기일 
			if cb_TakInsCorper.ItemIndex = 0 then
			begin
				if chkTakCall.checked then
				begin
					sTakInsCd := '06';
				end
				else sTakInsCd := '00';
			end	else
			begin
				sTakInsCd := slTakInsCode.Strings[cb_TakInsCorper.ItemIndex];
				if sTakInsCd = '99' then //변경 할 보험가사 '기타'이면  //대대협이면
				begin
					if cb_TakInsCorper.ItemIndex <> iCorper then    //처음 불러온 보험사가 수정될 보험사와 다르면
					begin
						GMessagebox('타송보험사를 [기타]로 지정할 수 없습니다.', CDMSE);
						cxPageControl1.ActivePageIndex := 0;
						cxbModify.Enabled := true;
						exit;
					end;
				end;  
			end;
			lst_Node.item[0].attributes.getNamedItem('CONSIGNMENT_CORPER').Text := sTakInsCd;
						
			if cxlbl4.caption = '동의함' then lst_Node.item[0].attributes.getNamedItem('WORK_CONSIGNMENT_AGREE_YN').Text := 'y'
      else lst_Node.item[0].attributes.getNamedItem('WORK_CONSIGNMENT_AGREE_YN').Text := '';

			 if (bFileUpload) or (bModify) then
        lst_Node.item[0].attributes.getNamedItem('PICTURE_YN').Text := 'y'
      else
				lst_Node.item[0].attributes.getNamedItem('PICTURE_YN').Text := '';

      sSNum := cxedSoNum.Text + cxedSoNum1.Text;
      sSNum := StringReplace(sSNum, '-', '', [rfReplaceAll]);
		  sSNum := StringReplace(sSNum, ' ', '', [rfReplaceAll]);

      if (IsAngelPlusHead(GS_PRJ_AREA = 'S', GT_UserIF.HD)) then
      begin
        sWkPhone := edtPhone.Text + cxedPhone.Text;
      end else
      begin
        sWkPhone := cxcbPhone.Text + cxedPhone.Text;
      end;
      sWkPhone := StringReplace(sWkPhone, '-', '', [rfReplaceAll]);
		  sWkTel := cxedTel.Text;
		  sWkTel := StringReplace(sWkTel, '-', '', [rfReplaceAll]);

			Try
				sNaviCd := slNaviHpCd.Strings[cboNavi.ItemIndex];
			except
				sNaviCd := '';
			End;

			if (not func_CallInsureShareNo(GT_USERIF.ShareNo)) and (cxcbInsCorper.ItemIndex = 0) then
			begin
				if chkCallDrive.checked then
				begin
					sInsCd := slInsCode.Strings[cxcbInsCorper.ItemIndex];
				end	else	sInsCd := '00';
			end
			else
			begin
				sInsCd := slInsCode.Strings[cxcbInsCorper.ItemIndex];
				if sInsCd = '99' then //변경 할 보험가사 '기타'이면  //대대협이면
				begin
					if cxcbInsCorper.ItemIndex <> iCorper then    //처음 불러온 보험사가 수정될 보험사와 다르면
					begin
						GMessagebox('보험사를 [기타]로 지정할 수 없습니다.', CDMSE);
						cxPageControl1.ActivePageIndex := 0;
						cxbModify.Enabled := true;
						exit;
					end;
				end;
			end;

			sWkViewCd := IntToStr(cbbOrderView.ItemIndex);// IfThen(cxrdOwner.Checked, '0', '1');
      sSex := IfThen(cxrdMan.Checked, 'm', 'w');
      if cxcbComtype.ItemIndex > -1 then
		  		sWkCommCd := slCmdCode.Strings[cxcbComtype.ItemIndex];
      sPriceBlock := '-';
			if cbbPriceBlock.Enabled then
        sPriceBlock := IfThen(cbbPriceBlock.ItemIndex = 1, 'n', 'y');

		  lst_Node.item[0].attributes.getNamedItem('WK_SNUM').Text := sSNum;
		  lst_Node.item[0].attributes.getNamedItem('WK_SEX').Text := sSex;
      lst_Node.item[0].attributes.getNamedItem('ADDR1').Text := exedAddr1.Text;
      lst_Node.item[0].attributes.getNamedItem('ADDR2').Text := exedAddr2.Text;
		  lst_Node.item[0].attributes.getNamedItem('ZIPCODE').Text := edtWorkerZipCode.Text;
			if cxcbWkHp_JoinCNT.ItemIndex = 0 then
			else
				sWkHp := sWkHp + Trim(cxcbWkHp_JoinCNT.Text);

			if FShuttel4[cboBranch.itemindex] = 'y' then
				lst_Node.item[0].attributes.getNamedItem('WK_HP').Text := sWkHp + '#4'
			else	
				lst_Node.item[0].attributes.getNamedItem('WK_HP').Text := sWkHp;
			lst_Node.item[0].attributes.getNamedItem('WK_PDA_MODEL').Text := sNaviCd;
      lst_Node.item[0].attributes.getNamedItem('WK_PHONE').Text := sWkPhone;
      lst_Node.item[0].attributes.getNamedItem('WK_TEL').Text := sWkTel;
			lst_Node.item[0].attributes.getNamedItem('WK_INS_CORPER').Text := sInsCd;
			lst_Node.item[0].attributes.getNamedItem('WK_INS_NUM').Text := cxedInsNum.Text;
			
			if (chkDrive.checked) or (chkCallDrive.checked) then
				lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').Text := 'y'
			else
				lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').Text := 'n';

			lst_Node.item[0].attributes.getNamedItem('INSURANCE_ST_DATE').Text := FormatDateTime('YYYYMMDD', cxdtInsStart.Date); // 보험시작일 
			lst_Node.item[0].attributes.getNamedItem('INSURANCE_EXPIRATION').Text := FormatDateTime('YYYYMMDD', cxdtInsEnd.Date);
      lst_Node.item[0].attributes.getNamedItem('WK_DRV_LIC').Text := cxedDrvLic.Text;
      lst_Node.item[0].attributes.getNamedItem('WK_SHOT_MEMO').Text := cxedMemo.Text;

			sTmp := Trim(cxmmMemo.Text);
			sTmp := ReplaceAll(sTmp, #$D#$A, '¶');
			sTmp := ReplaceAll(sTmp, #13#10, '¶');
			sTmp := ReplaceAll(sTmp, #10#13, '¶');
			lst_Node.item[0].attributes.getNamedItem('WK_MEMO').Text := sTmp;
			lst_Node.item[0].attributes.getNamedItem('WK_REG_DATE').Text := FormatDateTime('YYYYMMDD', cxdtReg.Date);
		  lst_Node.item[0].attributes.getNamedItem('WK_BASIC_SIDO').Text := cxcbAttendArea.Text;
      lst_Node.item[0].attributes.getNamedItem('WK_EXTERNAL_ORDER').Text := sWkViewCd;
      lst_Node.item[0].attributes.getNamedItem('CMS_CODE').Text := sWkCommCd;
      lst_Node.item[0].attributes.getNamedItem('FREE_CNT').Text := cxedFreeCall.Text;
      lst_Node.item[0].attributes.getNamedItem('WK_EXTERNAL_ORDER').Text := sWkViewCd;
      lst_Node.item[0].attributes.getNamedItem('WK_REAL_NAME').Text := edtRealName.Text;
      lst_Node.item[0].attributes.getNamedItem('LIC_ST_CD').Text := FLicStCd;
      lst_Node.item[0].attributes.getNamedItem('MIN_FINISH_YN').text := sPriceBlock;
      lst_Node.item[0].attributes.getNamedItem('LIC_TYPE').text := GetLicTypeCode(cbbLicType.Text);
		  lst_Node.item[0].attributes.getNamedItem('DRIVE_DISTANCE_TYPE').text := IntToStr(cbbDistanceType.ItemIndex);
			lst_Node.item[0].attributes.getNamedItem('WK_DRV_LIC_DATE').text := FormatDateTime('YYYYMMDD', cxdtLinsDate.Date);  //면허발급일자

			if not func_CallInsureShareNo(GT_USERIF.ShareNo) then //제한연합아니면
			begin
				//탁송보험만 선택 시 m으로 넣어줌 2017.12.26(정경석과장) KHS
//			                                     변경전	 변경후
//      월당보험	콜당보험(통과)	탁송보험	Ins_Type Ins_Type	
//         O	        X	             O	       m	      m
//         O         	X              X	       m	      m 
//         X	        X	             O	       n	      m
//         X	        X	             X	       n	      n
//         X        	O              X       	 c,k	    c.k
//         X	        O	             O	       c,k	    c,k
//      탁송보험 구분값 추가 CONS_INS_GUBUN 2018.04.17 (정경석과장) KHS
//                                   변경전	 변경후
//      월당보험	콜당보험(통과)		Ins_Type Ins_Type	
//         O	        X	              m	      m
//         X	        X	              n	      n
//         X	        O	              c,k	    c,k
//      개인보험(보험개발원 ) 추가  2021.01.28 KHS
//      월정액보험	콜당보험(통과)	개인보험(개발원)	Ins_Type
//         O	        X	                 X               m
//         X	        O	                 X               c,k
//         X	        X	                 O               b
//         X	        X	                 X               n
//- wk_ins_type 추가 'b' 
		{m:단체보험(월당), c:콜당(메리츠), d: db손보(개인보험), k:콜당(KB), n:미지정, b:보험개발원연동(개인보험)}
				if (not chkDrive.Checked) and (not chkCallDrive.Checked) and (not chkKidiDrive.Checked) then  //보험구분
				begin
					lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'n'; //일반콜 사용안함
					lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'n'; // 탁송조차 선택안할경우 
					lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
				end else    
				if (chkDrive.Checked) and (cxcbInsCorper.ItemIndex <> 0) then  //보험구분
				begin
					lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'y'; //일반콜 사용함
					lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'm';
					lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
				end else
				if (chkCallDrive.Checked) and (cxcbInsCorper.ItemIndex = 0) then  //보험구분
				begin
					lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'y'; //일반콜 사용함
					lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'c';
					if iType = 0 then
						lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '9'
					else
						lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
				end else
				if (chkCallDrive.Checked) and (cxcbInsCorper.ItemIndex = 1) then  //보험구분
				begin
					lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'y'; //일반콜 사용함
					lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'k';
					if iType = 0 then
						lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '9'
					else
						lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
				end else
				if (chkKidiDrive.Checked) then  //보험구분 : 개인보험(보험개발원)
				begin
					lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'y'; //일반콜 사용함
					lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'b';
					if iType = 0 then
						lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '9'
					else
						lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
				end;
			end
			else //제한연합이면
			begin
				if (not chkDrive.Checked) and (not chkCallDrive.Checked) and (not chkKidiDrive.Checked) then  //보험구분
				begin
					lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'n'; //일반콜 사용안함
					lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'n'; //'없음'상태
					lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
				end else
				begin
					lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'y'; //일반콜 사용함
					lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'm';
					lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
				end;
			end;

			//월당보험일 경우에는 무조건 월당보험으로 적용
			if pnl_DBIns.Hint = 'd' then 
			begin
				lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'y'; //일반콜 사용함
				lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'd'; //월당보험
			end;

			if ( cxcbWkShareNo.ItemIndex = 0 ) Or ( Not cxcbWkShareNo.Visible ) then
				lst_Node.item[0].attributes.getNamedItem('ORDER_SHARE_NO').text := ''
			else
				lst_Node.item[0].attributes.getNamedItem('ORDER_SHARE_NO').text := Copy(cxcbWkShareNo.Text, 1, 3);

			lst_Node.item[0].attributes.getNamedItem('AUTO_STATUS_DATE').Text := FormatDateTime('YYYYMMDD', cxdtInsStart.Date);

		  if cb_Shuttle_Status.ItemIndex = 0 then
				lst_Node.item[0].attributes.getNamedItem('SHUTTLE_REG_STATUS').Text := '' else
		  if cb_Shuttle_Status.ItemIndex = 1 then
				lst_Node.item[0].attributes.getNamedItem('SHUTTLE_REG_STATUS').Text := 'y' else
		  if cb_Shuttle_Status.ItemIndex = 2 then
		  	lst_Node.item[0].attributes.getNamedItem('SHUTTLE_REG_STATUS').Text := 'n';

		  lst_Node.item[0].attributes.getNamedItem('SHUTTLE_PAY_TYPE').Text := IntToStr(cb_Shuttle_Charge.ItemIndex);
			lst_Node.item[0].attributes.getNamedItem('SHUTTLE_TID').Text := trim(edt_TagID.Text);//UpperCase(edt_TagID.Text);

			if chkTakAlly.Checked then sTmp := 'y' else sTmp := 'n';
			lst_Node.item[0].attributes.getNamedItem('WK_CONS_SHARE_YN').Text := sTmp;
			if chk_JON01SelfCard.Checked then sTmp := 'y' else sTmp := 'n';
			lst_Node.item[0].attributes.getNamedItem('SPOT_CARD_YN').Text := sTmp;
			Try
				sTmp := '';
				if cb_Wor23List.ItemIndex < 0 then sTmp := ''
                                      else sTmp := slMCashSeq[cb_Wor23List.ItemIndex];
			except
				sTmp := '';
			End;
			lst_Node.item[0].attributes.getNamedItem('MCASH_SCHEDULE_SEQ').Text := sTmp; //MCash 스케줄 추가 20190827 KHS

			if cbWorkStart.Checked then sTmp := FormatDateTime('YYYY-MM-DD 00:00:00', deWorkStart.Date) else sTmp := '';
			lst_Node.item[0].attributes.getNamedItem('WORK_START_DATE').Text := sTmp;

			ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;

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
				cxbModify.Enabled := True;
      end;
    finally
      xdom := Nil;
    end;
	except on E: Exception do
		begin
			cxbHpCheck.Tag := 0;
			cxbModify.Enabled := True;
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_WOR01.proc_Worker_Save_Cheonan(iType: Integer);
var
  ls_TxLoad, sNode, rv_str: string;
	sSNum, sWkHp, sWkPhone, sWkTel, sNaviCd, sInsCd, sTakInsCd, sWkViewCd, sWkCommCd, sSex, sPriceBlock: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
	lst_Node: IXMLDOMNodeList;
  slReceive: TStringList;
  ErrCode, i : integer;
	WorkerName, sTmp, sMsg: string;
	bCheck : Boolean;
	sBeforeJumin : string;
begin
	try
		cxbBrNum.Tag := 99;
		if cxedSabun.Text = '' then
		begin
			GMessagebox('사번을 입력하셔야 합니다.', CDMSE);
			cxedSabun.SetFocus;
			cxbModify.Enabled := true;
			exit;
		end;
		if cxedSabun.Text <> '' then
		begin
      cxbBrNum.Click;
      if cxbBrNum.Enabled then
			begin
        cxbBrNum.Tag :=0;
        cxbBrNum.SetFocus;
        cxbModify.Enabled := True;
        Exit;
      end;
    end;

		if cxedName.Text = '' then
		begin
			GMessagebox('성명을 입력하셔야 합니다.', CDMSE);
			cxedName.SetFocus;
			cxbModify.Enabled := true;
			exit;
		end;

		sTmp := StringReplace(cxedSoNum.Text + cxedSoNum1.Text, '-', '', [rfReplaceAll]);        //지금 주민번호 입력된 내용
		sBeforeJumin := StringReplace(cxedSoNum.Hint + cxedSoNum1.Hint, '-', '', [rfReplaceAll]); //불러왔을때 주민번호 내용

    //고용보험료 차감 예외 기사처리 20211229 KHS 신성현팀장요청
    if sTmp <> '1111111111111' then
    begin
      if ( Not cxbSoNumCheck.Enabled ) And (cxbSoNumCheck.Tag = 99) then
      begin

        if (iType = 1) and (sTmp <> sBeforeJumin) then
        begin
          GMessagebox('본인인증을 받은신 경우 주민등록번호 수정이 불가합니다.' + #10#13 + '추가 기사등록을 하실 경우에는 신규등록을'
           + #10#13 + '이용하여 주십시오.', CDMSE);
          cxedSoNum.Text  := cxedSoNum.Hint ;
          cxedSoNum1.Text := cxedSoNum1.Hint ;
          cxbModify.Enabled := True;
          gbKidiInfoChange := False;
          Exit;
        end;
			
        if pos('[본인인증성공]', cxmmMemo.Text) < 1 then
        cxmmMemo.Text := '[본인인증성공]' + cxmmMemo.Text;
      end;

      if (iType = 1) and (sTmp <> sBeforeJumin) then
      begin
        bCheck := func_SoNumCheck(sBeforeJumin);
        if bCheck then
        begin
          GMessagebox('이전 주민등록번호가 유효할 경우 주민등록번호 수정이 불가합니다.' + #10#13 + '추가 기사등록을 하실 경우에는 신규등록을'
           + #10#13 + '이용하여 주십시오.', CDMSE);
          cxedSoNum.Text  := cxedSoNum.Hint ;
          cxedSoNum1.Text := cxedSoNum1.Hint ;
          cxbModify.Enabled := True;
          gbKidiInfoChange := False;
          Exit;
        end;
      end;
		
      //개인보험 + 주민번호 변경시
      if (sTmp <> sBeforeJumin) and (chkKidiDrive.checked) then
      begin
        sMsg := '[개인보험-보험개발원] 사용중 주민번호 변경하시면 '+#13#10
              + '[개인보험-보험개발원] 등록을 다시 진행하여야 합니다.' +#13#10+#13#10 
              + '그래도 저장하시겠습니까?';
        if Application.MessageBox(PChar(sMsg), '[보험개발원]', MB_YESNO +	MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
        begin
          gbKidiInfoChange := True;  		
        end else
        begin
          cxedSoNum.SetFocus;
          Exit;			
        end;
      end;

      if (Length(sTmp) = 13) then
      begin
        bCheck := func_SoNumCheck(sTmp);
        if bCheck then
        begin
          // 수도권만 외국인 신규등록 불가능 하도록 제한. 2011.08.01
          // 외국인 등록 허용 2019.03.12 KHS 팀장님 지시 5,6,7,8
          // 외국인 등록 불가 2019.03.25 KHS 팀장님 지시
          if (GS_PRJ_AREA = 'S') and (LeftStr(cxedSoNum1.Text, 1) <> '1') and (LeftStr(cxedSoNum1.Text, 1) <> '2') and 
             (LeftStr(cxedSoNum1.Text, 1) <> '3') and (LeftStr(cxedSoNum1.Text, 1) <> '4') then
          begin
            GMessagebox('기사등록 불가한(임시거주 제2외국인, 외국인,, 등등) 주민번호를 입력하였습니다.', CDMSE);
            cxedSoNum.SetFocus;
            cxbModify.Enabled := True;
            Exit;
          end;
        end else
        begin
          GMessagebox('주민등록번호를 잘못 입력하였습니다.' + #13#10 + '주민등록번호를 다시한번 확인하여 주십시오', CDMSE);
          cxedSoNum.SetFocus;
          cxbModify.Enabled := True;
          Exit;
        end;
      end else
      begin
        if cxedSoNum.Text = '' then
        begin
          GMessagebox('주민등록번호 > 생년월일(6자리)을 입력하여 주십시오.', CDMSE);
          cxbModify.Enabled := True;
          cxedSoNum.SetFocus;
          Exit;
        end;
        if Length(cxedSoNum.Text) < 6 then
        begin
          GMessagebox('주민등록번호 > 생년월일을 정확히 입력하여 주십시오.', CDMSE);
          cxedSoNum.SetFocus;
          cxbModify.Enabled := True;
          Exit;
        end;
        if cxedSoNum1.Text = '' then
        begin
          GMessagebox('주민등록번호 > 생년월일외 뒷 7자리를 입력하여 주십시오.', CDMSE);
          cxedSoNum1.SetFocus;
          cxbModify.Enabled := True;
          Exit;
        end;
        if Length(cxedSoNum1.Text) < 7 then
        begin
          GMessagebox('주민등록번호 > 생년월일외 뒷 7자리를 정확히 입력하여 주십시오.', CDMSE);
          cxedSoNum1.SetFocus;
          cxbModify.Enabled := True;
          Exit;
        end;
      end;
    end;

		cxbHpCheck.Tag := 99;
		cxbHpCheck2.Tag := 98;
		cxbHpCheck3.Tag := 97;

		if edt_WkHp.Text = '' then
    begin
			GMessagebox('단말기 번호를 입력하셔야 합니다.', CDMSE);
			cxbHpCheck.Tag := 0;
			cxbHpCheck2.Tag := 2;
			cxbHpCheck3.Tag := 3;
			edt_WkHp.SetFocus;
			cxbModify.Enabled := true;
			exit;
		end;
		if cxbHpCheck.Enabled then
		begin
			GMessagebox('단말기 사용체크를 하여주십시오.', CDMSE);
			cxbHpCheck.Tag := 0;
			cxbHpCheck2.Tag := 2;
			cxbHpCheck3.Tag := 3;
			cxbHpCheck.SetFocus;
			cxbModify.Enabled := true;
			Exit;
		end;
		cxbHpCheck.Tag := 0;
		cxbHpCheck2.Tag := 2;
		cxbHpCheck3.Tag := 3;
		
		if cxedPhone.Text = '' then
    begin
      GMessagebox('핸드폰 번호를 입력하셔야 합니다.', CDMSE);
			cxedPhone.SetFocus;
			cxbModify.Enabled := true;
			exit;
    end;

		if (chkDrive.checked)  then
		begin
			if (cxcbInsCorper.ItemIndex = 0) then
			begin
				GMessagebox('[대리운전보험]일 경우에는 보험사를 선택하여야 합니다.', CDMSE);
				cxPageControl1.ActivePageIndex := 0;
				cxcbInsCorper.SetFocus;
				cxbModify.Enabled := true;
				exit;
			end;
			if (cxedInsNum.Text = '') then
			begin
				GMessagebox('[대리운전보험]일 경우에는 보험 번호를 입력하셔야 합니다.', CDMSE);
				cxPageControl1.ActivePageIndex := 0;
				cxedInsNum.SetFocus;
				cxbModify.Enabled := true;
				exit;
			end;
		end;

		if chkTakAlly.checked then
		begin
			if not chkTaksong.Checked  then
			begin
				GMessagebox('탁송연합기사 가입시에는 탁송운전보험에 꼭 가입하셔야 합니다.', CDMSE);
				cxPageControl1.ActivePageIndex := 0;
				Exit;
			end;
		end;

		if (chkTakCall.Checked) and (lb_TakINS_MER_STATUS.Caption <> '통과') then
		begin
			GMessagebox('[탁송콜당보험]은 심사결과가 통과일 경우만 선택가능합니다..', CDMSE);
			chkCallDrive.SetFocus;
			cxbModify.Enabled := true;
			exit;
		end;

		if (chkTaksong.Checked)  then
		begin
			if (cb_TakInsCorper.ItemIndex = 0) then
			begin
				GMessagebox('[탁송보험]일 경우에는 보험사를 선택하여야 합니다.', CDMSE);
				cxPageControl1.ActivePageIndex := 0;
				cb_TakInsCorper.SetFocus;
				cxbModify.Enabled := true;
				Exit;
			end;
			if (Trim(edtTakInsNum.Text) = '') then
			begin
				GMessagebox('[탁송보험]일 경우에는 경우 탁송보험번호를 꼭 입력하셔야 합니다.', CDMSE);
				cxPageControl1.ActivePageIndex := 0;
				if edtTakInsNum.enabled then edtTakInsNum.SetFocus;
				cxbModify.Enabled := true;
				Exit;
			end;
		end else
		if not chkTakCall.Checked then
		begin
{			GMessagebox('탁송운전보험을 꼭 선택하셔야 합니다.', CDMSE);
			if edtTakInsNum.enabled then edtTakInsNum.SetFocus;
			cxbModify.Enabled := true;
			Exit;     }//-
		end;
		
		if edtNameSabun.Text = '' then
      WorkerName := cxedName.Text
    else
      WorkerName := Format('%s*%s', [edtNameSabun.Text, cxedName.Text]);

		if Length(WorkerName) > 15 then
    begin
			GMessagebox('기사사번 길이 + 성명 길이가 너무 깁니다.' +#13#10
        + '기사사번 및 성명을 단축하여 입력 바랍니다.' + #13#10
				+ '(가능길이 15bytes: 한글(2Bytes), 영문,숫자(1Bytes))', CDMSE);
			cxedName.SetFocus;
			cxbModify.Enabled := true;
			exit;
    end;


		if gsOrgHp <> edt_WkHp.Text then
		begin
			cxbHpCheck.Enabled := True;
			gsOrgHp := edt_WkHp.Text;
			cxbModify.Enabled := true;
			exit;
		end;
		sWkHp := cxcbWkHp.Text + edt_WkHp.Text;
		sWkHp := StringReplace(sWkHp, '-', '', [rfReplaceAll]);

		proc_CheckBlacklist(sWkHp, 1);
		if Black_chk then
		begin
			cxbModify.Enabled := true;
			exit;
    end;

		ls_rxxml := GTx_UnitXmlLoad('C038N4.XML');
		xdom := ComsDomDocument.Create;
    try
      if (not xdom.loadXML(ls_rxxml)) then
      begin
				Screen.Cursor := crDefault;
        ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
        cxbModify.Enabled := True;
        Exit;
      end;

      sNode := '/cdms/header/UserID';
      lst_Node := xdom.documentElement.selectNodes(sNode);
		  lst_Node.item[0].attributes.getNamedItem('Value').Text := En_Coding(GT_USERIF.ID);
      sNode := '/cdms/header/ClientVer';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
      sNode := '/cdms/header/ClientKey';
      lst_Node := xdom.documentElement.selectNodes(sNode);
			if iType = 0 then
			begin
        lst_Node.item[0].attributes.getNamedItem('Value').Text := 'WOR197';
        sNode := '/cdms/Service/Worker';
        lst_Node := xdom.documentElement.selectNodes(sNode);
        lst_Node.item[0].attributes.getNamedItem('action').Text := 'INSERT';
        lst_Node.item[0].attributes.getNamedItem('WK_SABUN').Text := '';
        Org_BR_NO := cxBrNo.Text;
      end else
		  begin
		  	lst_Node.item[0].attributes.getNamedItem('Value').Text := 'WOR198';
		  	sNode := '/cdms/Service/Worker';
		  	lst_Node := xdom.documentElement.selectNodes(sNode);
		  	lst_Node.item[0].attributes.getNamedItem('action').Text := 'UPDATE';

				if ( gUse_Cnt + iUse_Add_Cnt = 0 ) And ( Not cxRBCall2Y.Checked ) then
					lst_Node.item[0].attributes.getNamedItem('SEL_WK_SABUN').Text := cxedWkSabun.text
				else
				begin
					if FWORKER.WSABUN.count = 1 then
						lst_Node.item[0].attributes.getNamedItem('SEL_WK_SABUN').Text := FWORKER.WSABUN[0]
					else
					begin
						if iFlag = 0 then
							lst_Node.item[0].attributes.getNamedItem('SEL_WK_SABUN').Text := FWORKER.WSABUN[0]
						else
							lst_Node.item[0].attributes.getNamedItem('SEL_WK_SABUN').Text := FWORKER.WSABUN[iFlag-1];
					end;
				end;


				if ( gUse_Cnt + iUse_Add_Cnt = 0 ) And ( Not cxRBCall2Y.Checked ) then sTmp := cxedWkSabun.text
		  	else
		  	begin
		  		for i := 0 to FWORKER.WSABUN.Count  -1 do
		  		begin
		  			if i = 0 then
		  			begin
							sTmp := FWORKER.WSABUN[i]
		  			end else
		  			begin
							sTmp := sTmp + '│' + FWORKER.WSABUN[i];
		  			end;
		  		end;
		  		for i := 0 to iUse_Add_Cnt -1 do
		  		begin
						sTmp := sTmp + '│';
		  		end;
					if ( cxRBCall2Y.Tag = 0 ) And ( cxRBCall2Y.Checked ) then sTmp := sTmp + '│';
				end;
				lst_Node.item[0].attributes.getNamedItem('WK_SABUN').Text := sTmp;
      end;
      if iType <> 0 then
      begin
        if Org_HD_NO <> cxHdNo.Text then
        begin
          GMessagebox('소속본사 내 지사이동만 가능합니다.', CDMSE);
					cxbModify.Enabled := True;
          Exit;
        end;
      end;
		  lst_Node.item[0].attributes.getNamedItem('HD_NO').Text := cxHdNo.Text;
		  lst_Node.item[0].attributes.getNamedItem('BR_NO').Text := Org_BR_NO;          //지방권 지사 변경 시 원 지사 코드 저장 2011.12.19 KHS
		  lst_Node.item[0].attributes.getNamedItem('TO_BR_NO').Text := cxBrNo.Text;     //지방권 지사 변경 시 변경된 지사 코드 저장 2011.12.19 KHS
			if ( gUse_Cnt + iUse_Add_Cnt = 0 ) And ( Not cxRBCall2Y.Checked ) then	sTmp := WorkerName
		  else
			if ( gUse_Cnt + iUse_Add_Cnt = 1 ) And ( Not cxRBCall2Y.Checked ) then	sTmp := WorkerName
		  else
		  begin
				for i := 0 to FWORKER.USEHP.Count  -1 do
		  	begin
		  		if i = 0 then
						sTmp := FWORKER.NAME[i]
					else
						sTmp := sTmp + '│' + FWORKER.NAME[i];
		  	end;
		  end;
			lst_Node.item[0].attributes.getNamedItem('WK_NAME').Text := sTmp;

			if ( gUse_Cnt + iUse_Add_Cnt = 0 ) And ( Not cxRBCall2Y.Checked ) then sTmp := cxedSabun.Text
		  else
			if ( gUse_Cnt + iUse_Add_Cnt = 1 ) And ( Not cxRBCall2Y.Checked ) then sTmp := cxedSabun.Text
		  else
			begin
		  	for i := 0 to FWORKER.SABUN.Count -1 do
		  	begin
					if i = 0 then
						sTmp := FWORKER.SABUN[i]
		  		else
						sTmp := sTmp + '│' + FWORKER.SABUN[i];
		  	end;
		  end;
			lst_Node.item[0].attributes.getNamedItem('BR_WK_NUM').Text := sTmp;

		  if ( gUse_Cnt + iUse_Add_Cnt = 0 ) And ( Not cxRBCall2Y.Checked ) then
      begin
				if cxcbWkmc.ItemIndex = 0 then sTmp := ''
																	else sTmp := cxcbWkmc.Text
      end else
		  if ( gUse_Cnt + iUse_Add_Cnt = 1 ) And ( Not cxRBCall2Y.Checked ) then
			begin
				if cxcbWkmc.ItemIndex = 0 then sTmp := ''
																	else sTmp := cxcbWkmc.Text
		  end else
			begin
		  	for i := 0 to FWORKER.USEMC.Count -1 do
		  	begin
		  		if i = 0 then
						sTmp := FWORKER.USEMC[i]
		  		else
						sTmp := sTmp + '│' + FWORKER.USEMC[i];
		  	end;
		  end;
			lst_Node.item[0].attributes.getNamedItem('WK_MOCK').Text := sTmp;

			if chkOnlyAuto.Checked = True then lst_Node.item[0].attributes.getNamedItem('WORK_STICK_YN').Text := 'n'
		                                else lst_Node.item[0].attributes.getNamedItem('WORK_STICK_YN').Text := 'y';

			if chkTaksong.Checked = True then 
			begin
				lst_Node.item[0].attributes.getNamedItem('WORK_CONSIGNMENT_YN').Text := 'y';
				lst_Node.item[0].attributes.getNamedItem('WK_INS_CONS_GUBUN').Text := 'm';
			end else
			if chkTakCall.Checked = True then  
			begin
				lst_Node.item[0].attributes.getNamedItem('WORK_CONSIGNMENT_YN').Text := 'y';
				lst_Node.item[0].attributes.getNamedItem('WK_INS_CONS_GUBUN').Text := 'c';
			end else
			begin
				lst_Node.item[0].attributes.getNamedItem('WORK_CONSIGNMENT_YN').Text := 'n';
				lst_Node.item[0].attributes.getNamedItem('WK_INS_CONS_GUBUN').Text := 'n';
			end;
			lst_Node.item[0].attributes.getNamedItem('WK_CONINS_NUM').Text := Trim(edtTakInsNum.Text); //탁송보험번호 20170107 KHS														 

			lst_Node.item[0].attributes.getNamedItem('CONSIGNMENT_ST_DATE').Text := FormatDateTime('YYYYMMDD', cxdTaktInsStart.Date); //탁송보험시작일 
			lst_Node.item[0].attributes.getNamedItem('CONSIGNMENT_EXPIRATION').Text := FormatDateTime('YYYYMMDD', cxdTaktInsEnd.Date); //탁송만기일 

			if cb_TakInsCorper.ItemIndex = 0 then
			begin
				if chkTakCall.checked then
				begin
					sTakInsCd := '06';
				end
				else sTakInsCd := '00';
			end	else
			begin
				sTakInsCd := slTakInsCode.Strings[cb_TakInsCorper.ItemIndex];
				if sTakInsCd = '99' then //변경 할 보험가사 '기타'이면  //대대협이면
				begin
					if cb_TakInsCorper.ItemIndex <> iCorper then    //처음 불러온 보험사가 수정될 보험사와 다르면
					begin
						GMessagebox('탁송보험사를 [기타]로 지정할 수 없습니다.', CDMSE);
						cxPageControl1.ActivePageIndex := 0;
						cxbModify.Enabled := true;
						exit;
					end;
				end;  
			end;
			lst_Node.item[0].attributes.getNamedItem('CONSIGNMENT_CORPER').Text := sTakInsCd;

			if cxlbl4.caption = '동의함' then lst_Node.item[0].attributes.getNamedItem('WORK_CONSIGNMENT_AGREE_YN').Text := 'y'
																	 else lst_Node.item[0].attributes.getNamedItem('WORK_CONSIGNMENT_AGREE_YN').Text := '';

		  if (bFileUpload) or (bModify) then
				lst_Node.item[0].attributes.getNamedItem('PICTURE_YN').Text := 'y'
		  else
		  	lst_Node.item[0].attributes.getNamedItem('PICTURE_YN').Text := '';

			sSNum := cxedSoNum.Text + cxedSoNum1.Text;
      sSNum := StringReplace(sSNum, '-', '', [rfReplaceAll]);
		  sSNum := StringReplace(sSNum, ' ', '', [rfReplaceAll]);

      if (IsAngelPlusHead(GS_PRJ_AREA = 'S', GT_UserIF.HD)) then
      begin
        sWkPhone := edtPhone.Text + cxedPhone.Text;
      end else
      begin
        sWkPhone := cxcbPhone.Text + cxedPhone.Text;
      end;
		  sWkPhone := StringReplace(sWkPhone, '-', '', [rfReplaceAll]);
		  sWkTel := cxedTel.Text;
		  sWkTel := StringReplace(sWkTel, '-', '', [rfReplaceAll]);

			Try
				sNaviCd := slNaviHpCd.Strings[cboNavi.ItemIndex];
			except
				sNaviCd := '';
			End;

			if cxcbInsCorper.ItemIndex = 0 then
			begin
				if chkCallDrive.checked then
				begin
					sInsCd := slInsCode.Strings[cxcbInsCorper.ItemIndex];
				end else	sInsCd := '00';
			end	else
			if cxcbInsCorper.ItemIndex > 0 then
			begin
				sInsCd := slInsCode.Strings[cxcbInsCorper.ItemIndex];
				if sInsCd = '99' then //변경 할 보험가사 '기타'이면  //대대협이면
				begin
					if cxcbInsCorper.ItemIndex <> iCorper then    //처음 불러온 보험사가 수정될 보험사와 다르면
					begin
						GMessagebox('보험사를 [기타]로 지정할 수 없습니다.', CDMSE);
						cxPageControl1.ActivePageIndex := 0;
						cxbModify.Enabled := true;
						exit;
					end;
				end;
			end;

      sWkViewCd := IntToStr(cbbOrderView.ItemIndex);// IfThen(cxrdOwner.Checked, '0', '1');
      sSex := IfThen(cxrdMan.Checked, 'm', 'w');
		  if cxcbComtype.ItemIndex > -1 then
		  		sWkCommCd := slCmdCode.Strings[cxcbComtype.ItemIndex];
      sPriceBlock := '-';
		  if cbbPriceBlock.Enabled then
		  	sPriceBlock := IfThen(cbbPriceBlock.ItemIndex = 1, 'n', 'y');

		  lst_Node.item[0].attributes.getNamedItem('WK_SNUM').Text := sSNum;
			lst_Node.item[0].attributes.getNamedItem('WK_SEX').Text := sSex;
		  lst_Node.item[0].attributes.getNamedItem('ADDR1').Text := exedAddr1.Text;
		  lst_Node.item[0].attributes.getNamedItem('ADDR2').Text := exedAddr2.Text;
		  lst_Node.item[0].attributes.getNamedItem('ZIPCODE').Text := edtWorkerZipCode.Text;

			if ( gUse_Cnt + iUse_Add_Cnt = 0 ) And ( Not cxRBCall2Y.Checked ) then sTmp := sWkHp
			else
			if ( gUse_Cnt + iUse_Add_Cnt = 1 ) And ( Not cxRBCall2Y.Checked ) then sTmp := sWkHp
		  else
		  begin
				for i := 0 to FWORKER.USEHP.Count -1 do
		  	begin
		  		if i = 0  then
						sTmp := FWORKER.USEHP[i]
		  		else
						sTmp := sTmp + '│' + FWORKER.USEHP[i];
		  	end;
		  end;
			if FShuttel4[cboBranch.itemindex] = 'y' then
				lst_Node.item[0].attributes.getNamedItem('WK_HP').Text := sWkHp + '#4'
			else	
				lst_Node.item[0].attributes.getNamedItem('WK_HP').Text := sTmp;

		  lst_Node.item[0].attributes.getNamedItem('WK_PDA_MODEL').Text := sNaviCd;
			lst_Node.item[0].attributes.getNamedItem('WK_PHONE').Text := sWkPhone;
      lst_Node.item[0].attributes.getNamedItem('WK_TEL').Text := sWkTel;
	 {		if cxcbInsCorper.ItemIndex = 0 then  //보험구분
			begin
				lst_Node.item[0].attributes.getNamedItem('WK_INS_CORPER').Text := '';
				lst_Node.item[0].attributes.getNamedItem('WK_INS_NUM').Text := '';
			end
			else
			begin
				lst_Node.item[0].attributes.getNamedItem('WK_INS_CORPER').Text := sInsCd;
				lst_Node.item[0].attributes.getNamedItem('WK_INS_NUM').Text := cxedInsNum.Text;
			end;  }
	  	lst_Node.item[0].attributes.getNamedItem('WK_INS_CORPER').Text := sInsCd;
  		lst_Node.item[0].attributes.getNamedItem('WK_INS_NUM').Text := cxedInsNum.Text;

			lst_Node.item[0].attributes.getNamedItem('INSURANCE_ST_DATE').Text := FormatDateTime('YYYYMMDD', cxdtInsStart.Date); // 보험시작일
			lst_Node.item[0].attributes.getNamedItem('INSURANCE_EXPIRATION').Text := FormatDateTime('YYYYMMDD', cxdtInsEnd.Date);
			lst_Node.item[0].attributes.getNamedItem('WK_DRV_LIC').Text := cxedDrvLic.Text;
      lst_Node.item[0].attributes.getNamedItem('WK_SHOT_MEMO').Text := cxedMemo.Text;

			sTmp := Trim(cxmmMemo.Text);
			sTmp := ReplaceAll(sTmp, #$D#$A, '¶');
			sTmp := ReplaceAll(sTmp, #13#10, '¶');
			sTmp := ReplaceAll(sTmp, #10#13, '¶');
			lst_Node.item[0].attributes.getNamedItem('WK_MEMO').Text := sTmp;
			lst_Node.item[0].attributes.getNamedItem('WK_REG_DATE').Text := FormatDateTime('YYYYMMDD', cxdtReg.Date);
		  lst_Node.item[0].attributes.getNamedItem('WK_BASIC_SIDO').Text := cxcbAttendArea.Text;
		  lst_Node.item[0].attributes.getNamedItem('WK_EXTERNAL_ORDER').Text := sWkViewCd;
		  lst_Node.item[0].attributes.getNamedItem('CMS_CODE').Text := sWkCommCd;
			lst_Node.item[0].attributes.getNamedItem('FREE_CNT').Text := cxedFreeCall.Text;
			lst_Node.item[0].attributes.getNamedItem('WK_EXTERNAL_ORDER').Text := sWkViewCd;
			lst_Node.item[0].attributes.getNamedItem('WK_REAL_NAME').Text := edtRealName.Text;
			lst_Node.item[0].attributes.getNamedItem('LIC_ST_CD').Text := FLicStCd;
			lst_Node.item[0].attributes.getNamedItem('MIN_FINISH_YN').text := sPriceBlock;
			lst_Node.item[0].attributes.getNamedItem('LIC_TYPE').text := GetLicTypeCode(cbbLicType.Text);
			lst_Node.item[0].attributes.getNamedItem('DRIVE_DISTANCE_TYPE').text := IntToStr(cbbDistanceType.ItemIndex);
			lst_Node.item[0].attributes.getNamedItem('WK_DRV_LIC_DATE').text := FormatDateTime('YYYYMMDD', cxdtLinsDate.Date);  //면허발급일자

			//탁송보험만 선택 시 m으로 넣어줌 2017.12.26(정경석과장) KHS
//			                                     변경전	 변경후
//      월당보험	콜당보험(통과)	탁송보험	Ins_Type Ins_Type	
//         O	        X	             O	       m	      m
//         O         	X              X	       m	      m 
//         X	        X	             O	       n	      m
//         X	        X	             X	       n	      n
//         X        	O              X       	 c,k	    c.k
//         X	        O	             O	       c,k	    c,k
//      탁송보험 구분값 추가 CONS_INS_GUBUN 2018.04.17 (정경석과장) KHS
//                                   변경전	 변경후
//      월당보험	콜당보험(통과)		Ins_Type Ins_Type	
//         O	        X	              m	      m
//         X	        X	              n	      n
//         X	        O	              c,k	    c,k
//      개인보험(보험개발원 ) 추가  2021.01.28 KHS
//      월정액보험	콜당보험(통과)	개인보험(개발원)	Ins_Type
//         O	        X	                 X               m
//         X	        O	                 X               c,k
//         X	        X	                 O               b
//         X	        X	                 X               n
//- wk_ins_type 추가 'b' 
		{m:단체보험(월당), c:콜당(메리츠), d: db손보(개인보험), k:콜당(KB), n:미지정, b:보험개발원연동(개인보험)}
			if (not chkDrive.Checked) and (not chkCallDrive.Checked) and (not chkKidiDrive.Checked) then  //보험구분
			begin
				lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'n'; //일반콜 사용안함
				lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'n'; //탁송조차 선택안할경우 
				lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
			end else    
			if (chkDrive.Checked) and (cxcbInsCorper.ItemIndex = 0) then  //보험구분
			begin
				lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'y'; //일반콜 사용함
				lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'n'; //'없음'상태
				lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
			end else
			if (chkDrive.Checked) and (cxcbInsCorper.ItemIndex <> 0) then  //보험구분
			begin
				lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'y'; //일반콜 사용함
				lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'm';
				lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
			end else
			if (chkCallDrive.Checked) and (cxcbInsCorper.ItemIndex = 0) then  //보험구분
			begin
				lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'y'; //일반콜 사용함
				lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'c';
				if iType = 0 then
					lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '9'
				else
					lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
			end else
			if (chkCallDrive.Checked) and (cxcbInsCorper.ItemIndex = 1) then  //보험구분
			begin
				lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'y'; //일반콜 사용함
				lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'k';
				if iType = 0 then
					lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '9'
				else
					lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
			end else
			if (chkKidiDrive.Checked) then  //보험구분 : 개인보험(보험개발원)
			begin
				lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'y'; //일반콜 사용함
				lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'b';
				if iType = 0 then
					lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '9'
				else
					lst_Node.item[0].attributes.getNamedItem('WK_INS_STATUS').text := '';
			end;

			//월당보험일 경우에는 무조건 월당보험으로 적용
			if pnl_DBIns.Hint = 'd' then 
			begin
				lst_Node.item[0].attributes.getNamedItem('GNR_SUB_YN').text := 'y'; //일반콜 사용함
				lst_Node.item[0].attributes.getNamedItem('WK_INS_GUBUN').text := 'd'; //월당보험
			end;

				
			if ( gUse_Cnt + iUse_Add_Cnt = 0 ) And ( Not cxRBCall2Y.Checked ) then sTmp := ''
			else
			if ( gUse_Cnt + iUse_Add_Cnt = 1 ) And ( Not cxRBCall2Y.Checked ) then sTmp := ''
		  else
		  begin
				for i := 0 to FWORKER.USESHARE.Count -1 do
		  	begin
		  		if i = 0 then
						sTmp := FWORKER.USESHARE[i]
		  		else
						sTmp := sTmp + '│' + FWORKER.USESHARE[i];
				end;
		  end;
			lst_Node.item[0].attributes.getNamedItem('ORDER_SHARE_NO').text := sTmp;

			lst_Node.item[0].attributes.getNamedItem('AUTO_STATUS_DATE').Text := FormatDateTime('YYYYMMDD', cxdtInsStart.Date);

		  if cb_Shuttle_Status.ItemIndex = 0 then
		  	lst_Node.item[0].attributes.getNamedItem('SHUTTLE_REG_STATUS').Text := '' else
		  if cb_Shuttle_Status.ItemIndex = 1 then
		  	lst_Node.item[0].attributes.getNamedItem('SHUTTLE_REG_STATUS').Text := 'y' else
		  if cb_Shuttle_Status.ItemIndex = 2 then
				lst_Node.item[0].attributes.getNamedItem('SHUTTLE_REG_STATUS').Text := 'n';

		  lst_Node.item[0].attributes.getNamedItem('SHUTTLE_PAY_TYPE').Text := IntToStr(cb_Shuttle_Charge.ItemIndex);
		  lst_Node.item[0].attributes.getNamedItem('SHUTTLE_TID').Text := trim(edt_TagID.Text);//UpperCase(edt_TagID.Text);

			if chkTakAlly.Checked then sTmp := 'y' else sTmp := 'n';
			lst_Node.item[0].attributes.getNamedItem('WK_CONS_SHARE_YN').Text := sTmp;
			if chk_JON01SelfCard.Checked then sTmp := 'y' else sTmp := 'n';
			lst_Node.item[0].attributes.getNamedItem('SPOT_CARD_YN').Text := sTmp;
			Try
				sTmp := '';
				if cb_Wor23List.ItemIndex < 0 then sTmp := ''
                                      else sTmp := slMCashSeq[cb_Wor23List.ItemIndex];
			except
				sTmp := '';
			End;
			lst_Node.item[0].attributes.getNamedItem('MCASH_SCHEDULE_SEQ').Text := sTmp;   //MCash 스케줄 추가 20190827 KHS

			if cbWorkStart.Checked then sTmp := FormatDateTime('YYYY-MM-DD 00:00:00', deWorkStart.Date) else sTmp := '';
			lst_Node.item[0].attributes.getNamedItem('WORK_START_DATE').Text := sTmp;

			ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;

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
		  	cxbModify.Enabled := True;
		  end;
    finally
      xdom := Nil;
    end;
	except
		on E: Exception do
		begin
				Assert(False, E.Message);
			cxbHpCheck.Tag := 0;
			cxbHpCheck2.Tag := 2;
			cxbHpCheck3.Tag := 3;
			cxbModify.Enabled := True;
		end;
	end;
end;

procedure TFrm_WOR01.cxbSoNumCheckClick(Sender: TObject);
Var sMsg, slBrNo : String;
begin
  //고용보험료 차감 예외 기사처리 20211229 KHS 신성현팀장요청
  if cxedSoNum.Text + cxedSoNum1.Text = '1111111111111' then exit;
  
	sMsg := '본인인증 서비스 이용시(인증실패시에도) 60원의 이용료가 발생합니다.' + #13 +
					'(지사캐쉬에서 차감)' + #13 +
					'본인인증 서비스를 이용하시겠습니까?' + #13#13 +
					'※ 본인인증후에는 지사정보 "저장/수정" 버튼을 꼭 누르셔야 정상처리됩니다.';

	if Application.MessageBox(PChar(sMsg), '', MB_YESNO + MB_ICONINFORMATION) = IDNO then Exit;

  slBrNo := cxBrNo.Text;

	if fGetBrCash(slBrNo) < 60 then
	begin
    ShowMessage('지사 캐쉬 잔액이 부족하여 본인 인증 서비스를 이용할 수 없습니다');
    Exit;
  end;

  try
    if ( not Assigned(Frm_JON057) ) Or ( Frm_JON057 = Nil ) then Frm_JON057 := TFrm_JON057.Create(nil);
    Frm_JON057.sBrNo := slBrNo;
    if GS_PRJ_AREA = 'S' then Frm_JON057.sArea := '1'
                         else Frm_JON057.sArea := '2';
	  Frm_JON057.ShowModal;
  Finally
    if GS_NICE_CHK then
    begin
      edtRealName.Text := GS_NICE_Name;
			cxedSoNum.Text := Copy(GS_NICE_Birth, 3, 6);
      if GS_NICE_Sex = '1' then cxrdMan.Checked := True
                           else cxrdWoman.Checked := True;

{      ShowMessage('성명 : ' + GS_NICE_Name + #13#10 +
                  '생년월일 : ' + GS_NICE_Birth + #13#10 +
                  '성별 : ' + GS_NICE_Sex + #13#10 +
                  '본인인증 성공');}

      ShowMessage('NICE평가정보 본인인증 성공' + #13#10 +
									'수정 및 저장을 해주세요');
    	cxbSoNumCheck.Tag := 99;
      cxbSoNumCheck.Enabled := False;
    end else
    begin
    	cxbSoNumCheck.Tag := 0;
      if GS_NICE_Err <> '' then
        ShowMessage('NICE평가정보 본인인증 실패 : ' + GS_NICE_Err);
    end;
  end;
end;

procedure TFrm_WOR01.cxedSoNum1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var sTemp : String;
    bCheck : Boolean;
begin
  if key = vk_Return then
  begin
    //고용보험료 차감 예외 기사처리 20211229 KHS 신성현팀장요청
    if cxedSoNum.Text + cxedSoNum1.Text = '1111111111111' then exit;

  	sTemp := StringReplace(cxedSoNum.Text + cxedSoNum1.Text, '-', '', [rfReplaceAll]);

  	if (Length(sTemp) = 13) then
    begin
      if Length(stemp) = 13 then
      begin
        bCheck := func_SoNumCheck(sTemp);
        if bCheck then
  			begin
					// 수도권만 외국인 신규등록 불가능 하도록 제한. 2011.08.01
					// 외국인 등록 허용 2019.03.12 KHS 팀장님 지시  5,6,7,8
					// 외국인 등록 불가 2019.03.25 KHS 팀장님 지시
					if (GS_PRJ_AREA = 'S') and (LeftStr(cxedSoNum1.Text, 1) <> '1') and (LeftStr(cxedSoNum1.Text, 1) <> '2') and 
						 (LeftStr(cxedSoNum1.Text, 1) <> '3') and (LeftStr(cxedSoNum1.Text, 1) <> '4') then
					begin
						GMessagebox('기사등록 불가한(임시거주 제2외국인 등) 주민번호를 입력하였습니다.', CDMSE);
						cxbModify.Enabled := True;
            Exit;
          end;
        end else
        begin
          GMessagebox('주민등록 번호를 잘못 입력하였습니다.', CDMSE);
          cxbModify.Enabled := True;
          Exit;
        end;
  		end;
  		proc_CheckRegJumin(sTemp); // 타 지사 등록여부 확인 2012.10.18 KHS
  		proc_CheckBlacklist(sTemp, 0);
    end else
    begin
      GMessagebox('주민등록 번호를 잘못 입력하였습니다.', CDMSE);
			cxbModify.Enabled := True;
      Exit;
  	end;

    cxAge.caption := func_Age(copy(cxedSoNum.Text,1,6), copy(cxedSoNum1.Text,1,1));
  end;
end;

procedure TFrm_WOR01.cxedSoNumKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//고용보험료 차감 예외 기사처리 20211229 KHS 신성현팀장요청
  if cxedSoNum.Text + cxedSoNum1.Text = '1111111111111' then exit;

  if key = vk_Return then
    cxAge.caption := func_Age(copy(cxedSoNum.Text,1,6), copy(cxedSoNum1.Text,1,1));

	if GS_PRJ_AREA = 'S' then
	begin
		if cxbModify.Caption = '신규저장' then
			cxbSoNumCheck.Enabled := True;
	end
	else
		cxbSoNumCheck.Enabled := True;
end;

procedure TFrm_WOR01.cxedSoNumKeyPress(Sender: TObject; var Key: Char);
begin
//  if key in ['0'..'9', #13, #8, '-'] then
//  else
//    key := #0;
end;

procedure TFrm_WOR01.cxedTelKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);	
end;

procedure TFrm_WOR01.cxedTelMouseUp(Sender: TObject; Button: TMouseButton;
	Shift: TShiftState; X, Y: Integer);
begin
	if cxbHpCheck.Enabled then
	begin
		GMessagebox('단말기 사용체크를 하여주십시오.', CDMSE);
		cxbHpCheck.SetFocus;
		cxbModify.Enabled := true;
		Exit;
	end;
end;

procedure TFrm_WOR01.cxmmMemoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	TcxMemo(sender).Text := Enc_Control(TcxMemo(sender).Text);	
end;

procedure TFrm_WOR01.cxPageControl1Change(Sender: TObject);
begin
	case cxPageControl1.ActivePageIndex of
		0 : btnCallHelp.Visible := True;
		else btnCallHelp.Visible := False;
	end;
end;

procedure TFrm_WOR01.cxRBCall2NClick(Sender: TObject);
Var idx : Integer;
begin
	if cxRBCall2Y.Checked then
  begin
  	lb_Sabun9.Caption := Trim(cxedSabun.Text) + 'E';
		{if GS_PRJ_AREA = 'S' then
		begin
			cxcbWkShareNo9.Enabled := False;

			if Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo) = 'G70' then iShareGroupIDX := 1 else
      if Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo) = 'G71' then iShareGroupIDX := 2 else
			if Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo) = 'G72' then iShareGroupIDX := 3 else
      if Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo) = 'G73' then iShareGroupIDX := 4;

      cxcbWkShareNo9.ItemIndex := iShareGroupIDX;
    end else
		if GS_PRJ_AREA = 'O' then} cxcbWkShareNo9.Enabled := True;
	end else
	if cxRBCall2N.Checked then
  begin
    if cxRBCall2Y.Tag = 1 then
    begin
  		Try
  			if Application.MessageBox(PChar('#9기사를 퇴직처리 하시겠습니까?'), '', MB_YESNO + MB_ICONINFORMATION) = IDYES then
  			begin
  				try
						idx := FWORKER.SHARPNO.IndexOf('#9');
  					proc_SelectSettlement(FWORKER.WSABUN[idx]);
  				finally
  					FWORKER.WSABUN.Delete(idx);
  					FWORKER.SABUN.Delete(idx);
  					FWORKER.NAME.Delete(idx);
  					FWORKER.USESHARE.Delete(idx);
  					FWORKER.SHARPNO.Delete(idx);
  					FWORKER.USEHP.Delete(idx);
  					FWORKER.USEMC.Delete(idx);
  					FWORKER.STATE.Delete(idx);
            cxRBCall2Y.Tag := 0;
  				end
  			end else
        begin
          cxRBCall2Y.Checked := True;
        end;
  		except
  			ShowMessage('#9 퇴직오류.');
  		end;
    end;
  end;
end;

function TFrm_WOR01.func_BrNameList_Search: Boolean;
var
	i, iOldIdx: integer;
	bRlt: boolean;
	sKey: string;
begin
	SetDebugeWrite('TFrm_WOR01.func_BrNameList_Search');
	try
		bRlt := False;
		lst_BRList1.Items.Clear;
		searchBRlist.Clear;
		sKey := edt_BrNm.text; // 조회할 지사명 읽기.

		iOldIdx := cboBranch.ItemIndex;  // 현재 index 값을 저장.[못찾을 경우 현재 선택지사로 되돌려줌]
		cboBranch.Tag := 1;
		lst_BRList1.Items.BeginUpdate;
		// 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
		for i := 0 to cboBranch.Properties.Items.Count - 1 do
		begin
			if (Pos(sKey, cboBranch.Properties.Items.Strings[i]) > 0) then
			begin // 지사명  찾기..
				lst_BRList1.Items.Add(cboBranch.Properties.Items.Strings[i]);
				searchBRlist.Add(inttostr(i));
				bRlt := True;
			end;
		end;
		lst_BRList1.Items.EndUpdate;
		cboBranch.ItemIndex := iOldIdx;
		lst_BRList1.Visible := True;
		lst_BRList1.Left := 92;
		lst_BRList1.Top := 39;
		if lst_BRList1.Items.Count > 30 then
			lst_BRList1.Height := 300
		else
			lst_BRList1.Height := lst_BRList1.Items.Count * 18;
		cboBranch.Tag := 0;
		// 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
		Result := bRlt;
	Except
		on e: exception do
		begin
			Log('proc_BrNameList_Search Error :' + E.Message, LOGDATAPATHFILE);
			Assert(False, 'proc_BrNameList_Search Error :' + E.Message);
		end;
	end;
end;

function TFrm_WOR01.func_C029INSERT(ASabun:string):Boolean;
var
	ls_TxLoad: string; // XML File Load
	sWorkerNode, rv_str, sSeq : string;
	ls_rxxml: WideString;
	xdom: msDomDocument;
	lst_Node: IXMLDOMNodeList;
	slReceive: TStringList;
	ErrCode: integer;
	ls_Msg_Err : string;
begin
	Result := False;
	Screen.Cursor := crHourGlass;
	ls_rxxml := GTx_UnitXmlLoad('C029.XML');

	xdom := ComsDomDocument.Create;
	try
		if not xdom.loadXML(ls_rxxml) then
    begin
			Screen.Cursor := crDefault;
			Exit;
		end;

		sWorkerNode := '/cdms/header/ClientKey';
		lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
		lst_Node.item[0].attributes.getNamedItem('Value').text := 'WOR062';

		sWorkerNode := '/cdms/header/UserID';
		lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
		lst_Node.item[0].attributes.getNamedItem('Value').text := GT_USERIF.ID;

		sWorkerNode := '/cdms/Service/Reserves';
		lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
		lst_Node.item[0].attributes.getNamedItem('action').Text := 'INSERT';

		lst_Node.item[0].attributes.getNamedItem('Cnt').Text := '1';

		sWorkerNode := '/cdms/Service/Reserves/Reserve';
		lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
		lst_Node.item[0].attributes.getNamedItem('InId').Text := GT_USERIF.ID;

		sSeq := slC029Seq[cb_Wor05List.itemindex];
		
		lst_Node.item[0].attributes.getNamedItem('Sequence').Text := sSeq;
		lst_Node.item[0].attributes.getNamedItem('WkCount').Text := '1';

		lst_Node.item[0].childNodes.item[0].attributes.getNamedItem('WkSabun').Text := ASabun;

		
		ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 +  xDom.documentElement.xml;
		slReceive := TStringList.Create;
    try
			if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
				if (rv_str <> '') then
				begin
					ls_rxxml := rv_str;
					ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
					if ('0000' = ls_MSG_Err) then
					begin
						Result := True;
          end;
					Application.ProcessMessages;
				end;
			end;
		finally
			FreeAndNil(slReceive);
		end;
	finally
		xdom := Nil;
	end;
end;

procedure TFrm_WOR01.proc_C029Set;
var
	ls_TxLoad: string; // XML File Load
	sWorkerNode, rv_str, sBrNo : string;
	ls_rxxml: WideString;
	xdom: msDomDocument;
	lst_Node: IXMLDOMNodeList;
	lst_Result: IXMLDomNodeList;
	i : Integer;
	slReceive: TStringList;
	ErrCode: integer;
	ls_Msg_Err, sTmp, sDate : string;
begin
	Screen.Cursor := crHourGlass;
	ls_rxxml := GTx_UnitXmlLoad('C029.XML');

	xdom := ComsDomDocument.Create;
	try
		if not xdom.loadXML(ls_rxxml) then
    begin
			Screen.Cursor := crDefault;
			Exit;
		end;

		sWorkerNode := '/cdms/header/ClientKey';

		lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
		lst_Node.item[0].attributes.getNamedItem('Value').text := 'WOR051';
		sWorkerNode := '/cdms/header/UserID';
		lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
		lst_Node.item[0].attributes.getNamedItem('Value').text := En_Coding(GT_USERIF.ID);
		sWorkerNode := '/cdms/Service/Reserves';
		lst_Node := xdom.documentElement.selectNodes(sWorkerNode);

		sBrNo := FBrNoList[cboBranch.itemindex];

		lst_Node.item[0].attributes.getNamedItem('ChargeType').Text := '3';
		lst_Node.item[0].attributes.getNamedItem('WkSabun').Text := '';
		lst_Node.item[0].attributes.getNamedItem('RsvMemo').Text := '';

		lst_Node.item[0].attributes.getNamedItem('action').text := 'SELECT';

		lst_Node.item[0].attributes.getNamedItem('FromDate').Text := '';
		lst_Node.item[0].attributes.getNamedItem('ToDate').Text := '';
		lst_Node.item[0].attributes.getNamedItem('Cnt').Text := '';
		lst_Node.item[0].attributes.getNamedItem('BrNo').Text := sBrNo;
		ls_rxxml := xDom.documentElement.xml;

		
		slC029Seq.clear;
		slC029Memo.clear;
		ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 +  xDom.documentElement.xml;
		slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
				if (rv_str <> '') then
				begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;

					if not xdom.loadXML(ls_rxxml) then
					begin
						Screen.Cursor := crDefault;
						Exit;
					end;

					ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
					if ('0000' = ls_MSG_Err) then
					begin
						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Reserves/Reserve');
						if lst_Result.length > 0 then
						begin
							slC029Memo.Add('선택안함');
							slC029Seq.Add('');
							for i := 0 to lst_Result.length - 1 do
							begin
								if lst_Result.item[i].attributes.getNamedItem('Sequence').text = '' then
									Continue;
								if lst_Result.item[i].attributes.getNamedItem('RsvMemo').text = '선입금' then
									Continue;

//								case StrToIntDef(lst_Result.item[i].attributes.getNamedItem('Term').text, 0) of
//									0: sTerm := '일비';
//									1: sTerm := '주비';
//									2: sTerm := '월비';
//									4: sTerm := '없음';
//								end;

								sDate := ''; //일자 제외 .신성현차장님 요청 20181205
{								sDate := '(' + Copy(lst_Result.item[i].attributes.getNamedItem('StartDate').text,1,10) + ' / '
														 + Copy(lst_Result.item[i].attributes.getNamedItem('RsvDate').text,1,10)   + ' / '
														 + Copy(lst_Result.item[i].attributes.getNamedItem('EndDate').text,1,10)   + ')';   }

								sTmp := StrToMoney(lst_Result.item[i].attributes.getNamedItem('Charge').text) + ', '
//											+ sTerm	+ ', '
											+ lst_Result.item[i].attributes.getNamedItem('RsvMemo').text + ', '
											+ sDate;
								slC029Memo.Add(sTmp);
								slC029Seq.Add(lst_Result.item[i].attributes.getNamedItem('Sequence').text);
							end;
						end;
					end;

					cb_Wor05List.Clear;
					cb_Wor05List.Properties.Items.Assign(slC029Memo);
					cb_Wor05List.ItemIndex := 0;
				end;
			end;
		finally
			FreeAndNil(slReceive);
		end;
	finally
		Screen.Cursor := crDefault;
		xdom := Nil;
	end;
end;

procedure TFrm_WOR01.proc_CheckBlacklist(sTemp: string; iType: Integer = 0);
var
  ls_TxLoad, sNode, sWhere, rv_str: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
	lst_Node: IXMLDOMNodeList;
  slReceive: TStringList;
  ErrCode: integer;
begin
	sWhere := '';

  if iType = 0 then
		sWhere := ' AND W.WK_SNUM = ''' + sTemp + ''' '
  else
    if iType = 1 then
		sWhere := ' AND W.WK_HP = ''' + sTemp + ''' ';

  ls_rxxml := GTx_UnitXmlLoad('SEL04.XML');
  xdom := ComsDomDocument.Create;
  try
    if (not xdom.loadXML(ls_rxxml)) then
    begin
      Screen.Cursor := crDefault;
      ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
      cxbModify.Enabled := True;
      Exit;
    end;
    sNode := '/cdms/header/UserID';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := En_Coding(GT_USERIF.ID);

    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;

    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    if iType = 0 then
      lst_Node.item[0].attributes.getNamedItem('Value').Text := 'WOR011'
    else if iType = 1 then
	  	lst_Node.item[0].attributes.getNamedItem('Value').Text := 'WOR0092';

    sNode := '/cdms/Service/Data/Query';
	  lst_Node := xdom.documentElement.selectNodes(sNode);
	  lst_Node.item[0].attributes.getNamedItem('Key').Text := 'WKBLCHECK';
    lst_Node.item[0].attributes.getNamedItem('Backward').Text := sWhere;

    ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;

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
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_WOR01.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WOR01.Pnl_TitleMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(pnl_LicenseView.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WOR01.proc_BHSet(iType: Integer);
var i : integer;
begin

	if slBHCode.Count > 0 then
	begin
		if iType = 0 then
		begin
			cxcbInsCorper.Properties.Items.Clear;
			slInsCode.Clear;
			for i := 0 to slBHCode.Count -1 do
			begin
				if slBHCode[i] = '15' then   //KB보험 1번으로
				begin
					cxcbInsCorper.Properties.Items.Insert(1, slBHName[i]);
					slInsCode.Insert(1, slBHCode[i]);
				end
				else
				if slBHCode[i] = '01' then    //LIG보험 끝에서 두번째
				begin
				end
				else
				begin
					cxcbInsCorper.Properties.Items.Add(slBHName[i]);
					slInsCode.Add(slBHCode[i]);
				end;
			end;
			cxcbInsCorper.Properties.Items.Insert((slBHName.Count-1)-1, 'LIG');
			slInsCode.Insert((slBHCode.Count-1)-1, '01');
		end
		else if iType = 1 then
		begin
			cxcbInsCorper.Properties.Items.Clear;
			slInsCode.Clear;
			cxcbInsCorper.Properties.Items.Add('메리츠');
			slInsCode.Add('06');
			cxcbInsCorper.Properties.Items.Add('KB');
			slInsCode.Add('15');
		end
		else if iType = 3 then
		begin
			cb_TakInsCorper.Properties.Items.Clear;
			slTakInsCode.Clear;
			cb_TakInsCorper.Properties.Items.Add('메리츠');
			slTakInsCode.Add('06');
		end 
		else if iType = 2 then
		begin
			cb_TakInsCorper.Properties.Items.Clear;
			slTakInsCode.Clear;
			for i := 0 to slBHCode.Count -1 do
			begin
				if slBHCode[i] = '15' then   //KB보험 1번으로
				begin
					cb_TakInsCorper.Properties.Items.Insert(1, slBHName[i]);
					slTakInsCode.Insert(1, slBHCode[i]);
				end
				else
				if slBHCode[i] = '01' then    //LIG보험 끝에서 두번째
				begin
				end
				else
				begin
					cb_TakInsCorper.Properties.Items.Add(slBHName[i]);
					slTakInsCode.Add(slBHCode[i]);
				end;
			end;
			cb_TakInsCorper.Properties.Items.Insert((slBHName.Count-1)-1, 'LIG');
			slTakInsCode.Insert((slBHCode.Count-1)-1, '01');
			if cb_TakInsCorper.ItemIndex < 0 then
				cb_TakInsCorper.ItemIndex := 0;
		end;
	end;

end;

procedure TFrm_WOR01.proc_brchange(sBrNo: string);
var
  i: Integer;
	msg, sTemp: string;
begin
  if Not pWOR01Dock.bUnDock then pWOR01Dock.GUBUN := GT_SEL_BRNO.GUBUN;
  if Not pWOR01Dock.bUnDock then pWOR01Dock.HdNo  := GT_SEL_BRNO.HdNo;
  if Not pWOR01Dock.bUnDock then pWOR01Dock.BrNo  := GT_SEL_BRNO.BrNo;
  if Not pWOR01Dock.bUnDock then pWOR01Dock.BrName:= GT_SEL_BRNO.BrName;

  if (GT_USERIF.LV = '10') and (pWOR01Dock.GUBUN = '1') and (not IsPassedManagementWk(pWOR01Dock.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 기사관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
		GMessagebox(Format(msg, [pWOR01Dock.BrNo, pWOR01Dock.BrName]), CDMSE);
    cxbModify.Enabled := True;
		Exit;
  end;

	if (GT_USERIF.LV = '60') and (cboBranch.Tag <> 88) then
	begin
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
		begin
			if sPTmp <> GT_SEL_BRNO.HdNo then	proc_sysRead;
			sPTmp := pWOR01Dock.HdNo;
		end;
	end;

  cbbOrderView.ItemIndex := 1;
	cxcbAttendArea.Properties.Items.Clear;
	cxcbComtype.Properties.Items.Clear;
  slCmdCode.Clear;
	sTemp := '';
	for i := 0 to cxgBrSet.DataController.RecordCount - 1 do
	begin
    if cxgBrSet.DataController.Values[i, 1] = sBrNo then
    begin
			sTemp := Trim(cxgBrSet.DataController.Values[i, 0]);
			if sTemp = 'PN' then
			begin
				if (GT_USERIF.ShareNo = 'G03') and (cxgBrSet.DataController.Values[i, 2] = '부산') then    //부산연합의 경우 부산이 0번째 신성현차장님 요청 20180206 KHS
					cxcbAttendArea.Properties.Items.Insert(0, cxgBrSet.DataController.Values[i, 2])
				else
					cxcbAttendArea.Properties.Items.Add(cxgBrSet.DataController.Values[i, 2]);
			end
			else if sTemp = 'PO' then
      begin
        cxcbComtype.Properties.Items.Add(cxgBrSet.DataController.Values[i, 2]);
        slCmdCode.Add(cxgBrSet.DataController.Values[i, 3]);
      end;
    end;
  end;
  if cxcbAttendArea.Properties.Items.Count > 0 then
    cxcbAttendArea.ItemIndex := 0;
  if cxcbComtype.Properties.Items.Count > 0 then
    cxcbComtype.ItemIndex := 0;
end;

function TFrm_WOR01.Proc_BRNOSearch: string;
begin
  if cboBranch.itemindex >= 0 then
  	Result := FBrNoList[cboBranch.itemindex]
  else
    Result := '';
//	Result := Trim(RightStr(cboBranch.Text, 5)); // 본사코드,지사코드      '(A100,O501)SN테스트지사_01/콜마너본사'
end;

procedure TFrm_WOR01.proc_sysRead;
var
  ls_TxLoad, rv_str: string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  i: Integer;
  ErrCode: integer;
begin
  try
    if Not pWOR01Dock.bUnDock then pWOR01Dock.GUBUN := GT_SEL_BRNO.GUBUN;
    if Not pWOR01Dock.bUnDock then pWOR01Dock.HdNo  := GT_SEL_BRNO.HdNo;
    if Not pWOR01Dock.bUnDock then pWOR01Dock.BrNo  := GT_SEL_BRNO.BrNo;
    if Not pWOR01Dock.bUnDock then pWOR01Dock.BrName:= GT_SEL_BRNO.BrName;

//    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) And ( GT_SEL_BRNO.HDNO = '' ) then Exit;

    cboNavi.Properties.Items.Clear;
    slNaviHpCd.Clear;
    cxcbInsCorper.Properties.Items.Clear;
    slInsCode.Clear;
    slTakInsCode.Clear;

    cxgBrSet.DataController.SetRecordCount(0);

    cxcbAttendArea.Properties.Items.Clear;
    cxcbComtype.Properties.Items.Clear;
    slCmdCode.Clear;

    if GT_USERIF.LV = '60' then
    begin
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
        ls_TxLoad := GetSel04('WOR012', 'WKSYSREAD2', '', '', [pWOR01Dock.HDNO, pWOR01Dock.HDNO])
      else
        ls_TxLoad := GetSel04('WOR012', 'WKSYSREAD2', '', '', [GT_USERIF.HD, GT_USERIF.HD]);
    end
    else
      ls_TxLoad := GetSel04('WOR012', 'WKSYSREAD1', '', '', [GT_USERIF.BR, GT_USERIF.BR, GT_USERIF.BR, GT_USERIF.BR]);

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        Frm_Flash.cxPBar1.Properties.Max := slReceive.Count;
        Frm_Flash.cxPBar1.Position := 0;

        slBHCode.Clear;
        slBHName.Clear;

        for i := 0 to slReceive.Count - 1 do
        begin
          rv_str := slReceive[i];
          if rv_str <> '' then
          begin
            ls_rxxml := rv_str;
            proc_recieve(ls_rxxml);
            Frm_Flash.cxPBar1.Position := i +1;
            Frm_Flash.lblCnt.Caption := IntToStr(i + 1) + '/' + IntToStr(slReceive.Count);
            Application.ProcessMessages;
          end;
        end;
      end;
    finally
      FreeAndNil(slReceive);
      Frm_Flash.Hide;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_WOR01.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_WOR01.FormClose(Sender: TObject; var Action: TCloseAction);
var
  EnvFile: TIniFile;
begin
	EnvFile := TIniFile.Create(ENVPATHFILE);
  try
    EnvFile.WriteInteger('WinPos', 'Wor01Left',   igW01Left);
    EnvFile.WriteInteger('WinPos', 'Wor01Top' ,   igW01Top );
  finally
    EnvFile.Free;
  end;

  timer1.Enabled := False;
  FreeAndNil(slNaviHpCd);
	FreeAndNil(slInsCode);
	FreeAndNil(slTakInsCode);
	FreeAndNil(slCmdCode);
  FreeAndNil(FLicenseCode);
  FreeAndNil(FHdNoList);
  FreeAndNil(FBrNoList);
	FreeAndNil(FTakList);
	FreeAndNil(FShuttel4);
	
	FreeAndNil(slBHCode);
	FreeAndNil(slBHName);
	FreeAndNil(slC029Seq);
	FreeAndNil(slC029Memo);
	FreeAndNil(slMCashSeq);
	FreeAndNil(slMCashMemo);
	

	FreeAndNil(FWORKER.NAME    );
	FreeAndNil(FWORKER.WSABUN  );
	FreeAndNil(FWORKER.SABUN   );
	FreeAndNil(FWORKER.SHARPNO );
	FreeAndNil(FWORKER.USEHP   );
	FreeAndNil(FWORKER.USEMC   );
	FreeAndNil(FWORKER.USESHARE);
	FreeAndNil(FWORKER.STATE   );

	FreeAndNil(glCallInsInfo.InsGubun );
	FreeAndNil(glCallInsInfo.InsCD );
	FreeAndNil(glCallInsInfo.InsNum);
	FreeAndNil(glCallInsInfo.InsADate);
	FreeAndNil(glCallInsInfo.InsS  );
	FreeAndNil(glCallInsInfo.InsE  );
	FreeAndNil(glCallInsInfo.InsStatus  );

	FreeAndNil(searchBRlist  );

	Action := caFree;
end;

procedure TFrm_WOR01.cxbWkImageClick(Sender: TObject);
var
	FH1, iCount : Integer;
  sFileName: string;
begin
	if OpenPictureDialog1.Execute then
  begin
    sFileName := OpenPictureDialog1.FileName;

    FH1 :=  FileOpen(sFileName, fmShareDenyWrite);
    m_ImgSize := FileSeek(FH1,0,2);
    If m_ImgSize > 200000 then
    Begin
      MessageDlg('사진파일 크기는 200kbyte를 넘을 수 없습니다.', mtWarning, [mbOK], 0);
      m_ImgSize := 0;
      Exit ;
    End;
    FileSeek(FH1,0,0);
    if FH1 <> -1 then
    begin
      iCount := FileRead(FH1, m_ImgBff, Sizeof(m_ImgBff));
      FileClose(FH1);
    end;

    bFileUpload := True;

		cxiWkImg.WebPicture.LoadFromFile(sFileName);

		if cxbModify.Caption = '수정' then
    begin
      proc_save_image(cxedWkSabun.Text);
		end;
		cxiWkImg.WebPicture.LoadFromFile(sFileName);
		img_NoImage.Visible := False;
	end;
end;

procedure TFrm_WOR01.cbbLicTypePropertiesChange(Sender: TObject);
begin
	if GS_PRJ_AREA = 'S' then
	begin
		if (GetLicTypeCode(cbbLicType.Text) = '10') or (GetLicTypeCode(cbbLicType.Text) = '11') or   //1종대형, 1종보통
			 (GetLicTypeCode(cbbLicType.Text) = '13') or (GetLicTypeCode(cbbLicType.Text) = '20') or   //1종특수, 2종보통
			 (GetLicTypeCode(cbbLicType.Text) = '30')then  //1종대형특수
		begin
			if chkTaksong.checked then chkTakHwak.Visible := True else chkTakHwak.Visible := False;
		end	else
		begin
			chkTakHwak.Checked := False;
			chkTakHwak.Visible := False;
		end;
	end;
end;

procedure TFrm_WOR01.cboBranchClick(Sender: TObject);
begin
	if scb_BranchCode.Count <= 0 then	Exit;
	cxBrNo.Text := FBrNoList[cboBranch.itemindex];
	cxHdNo.Text := FHdNoList[cboBranch.itemindex];
{  if FTakList[cboBranch.itemindex] = 'y' then
		chkTaksong.Enabled := True
	else if FTakList[cboBranch.itemindex] = 'n' then
		chkTaksong.Enabled := False
	else chkTaksong.Enabled := False;            }
	proc_brchange(FBrNoList[cboBranch.itemindex]);

  if IsHBShare(GS_PRJ_AREA = 'O', GT_USERIF.ShareNo) then
	begin
    lb_Shuttle4.Caption := '#3';
		lb_Shuttle4.Visible := True;
		lb_Shuttle4.Left := 162;
		lb_Shuttle4.Top := 0;
	end else
	if GB_365System then
	begin
    lb_Shuttle4.Caption := '#7';
		lb_Shuttle4.Visible := True;
		lb_Shuttle4.Left := 162;
		lb_Shuttle4.Top := 0;
	end else
  if GB_CallLine then
	begin
    lb_Shuttle4.Caption := '#5';
		lb_Shuttle4.Visible := True;
		lb_Shuttle4.Left := 162;
		lb_Shuttle4.Top := 0;
	end else
	if FShuttel4[cboBranch.itemindex] = 'y' then
	begin
    lb_Shuttle4.Caption := '#4';
		lb_Shuttle4.Visible := True;
		lb_Shuttle4.Left := 162;
		lb_Shuttle4.Top := 0;
	end else lb_Shuttle4.Visible := False;
end;

procedure TFrm_WOR01.cboBranchPropertiesChange(Sender: TObject);
var sTmp : string;
begin
	if cboBranch.Tag = 99 then exit;
	if (FBrNoList.Count > 0) and (cboBranch.ItemIndex > -1) and (gWOR19Mode = 'Insert') then
		proc_C029Set; //일비차감설정

	if (FBrNoList.Count > 0) and (cboBranch.ItemIndex > -1) and (gWOR19Mode <> '') then
		proc_MCashSet; //MCash 설정
			
	sTmp := Proc_BRNOSearch;									
	// 탁송연합콜 사용 [접수창체크옵션,지사,본사,연합] 조회  yyny
	sTmp := GetTakAllyYN(sTmp);

	if copy(sTmp,5,1) = 'y' then
	begin
		chkTakAlly.Enabled := True;
	end else
	begin
		chkTakAlly.Enabled := False;
		chkTakAlly.Checked := False;
	end;
end;

procedure TFrm_WOR01.cbWorkStartPropertiesChange(Sender: TObject);
begin
  deWorkStart.Enabled := cbWorkStart.Checked;
end;

procedure TFrm_WOR01.cb_Shuttle_ChargePropertiesChange(Sender: TObject);
begin
	if (cb_Shuttle_Charge.ItemIndex <> 0) AND (iShuttle_Charge <> 0) And ( cb_Shuttle_Charge.Tag = 0 ) then
	begin
		if (iShuttle_Charge <> cb_Shuttle_Charge.ItemIndex) then
			GMessagebox('납부상태 변경 시 미납상태로 자동변경되며 자동환불은 불가합니다.' + #13#10 + '꼭, 자체정산으로 환불바랍니다.', CDMSE);
	end;
end;

procedure TFrm_WOR01.chkCallDrivePropertiesChange(Sender: TObject);
var iTmp : integer;
	bTmp : Boolean;
	sTmp : string;
begin
	if chkCallDrive.Tag = 99 then exit;
	if not chkCallDrive.Checked then
	begin
		if (not chkDrive.Checked) and (not chkKidiDrive.Checked) then
		begin
{			sTmp := '체크 해제하시면'+#13#10+'기사는, 내정보 및 계좌정보를 볼수 없습니다.'+#13#10+#13#10+'해제하시겠습니까?';
			if Application.MessageBox(PChar(sTmp), CDMSE, MB_YESNO +
				MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then
			begin
				chkCallDrive.Tag := 99;
				chkCallDrive.Checked := True;
				chkCallDrive.Tag := 0;
				Exit;
			end; }
			bTmp := False;
			btn_InSureCopyTak.Enabled := bTmp;
			cxcbInsCorper.Enabled := bTmp;
			cxedInsNum.Enabled := bTmp;
			cxdtInsStart.Enabled := bTmp;
			cxdtInsEnd.Enabled := bTmp;
			cxedInsNum.Text := '';
			cxdtInsStart.Text := '';
			cxdtInsEnd.Text := '';
		end;
		cxcbInsCorper.ItemIndex := 0;
	end else
	begin
		bTmp := True;
		btn_InSureCopyTak.Enabled := bTmp;
		cxcbInsCorper.Enabled := bTmp;
		cxedInsNum.Enabled := bTmp;
		cxdtInsStart.Enabled := bTmp;
		cxdtInsEnd.Enabled := bTmp;
		if chkCallDrive.Hint <> '' then
		begin
			iTmp := glCallInsInfo.InsGubun.IndexOf(chkCallDrive.Hint);

			if glCallInsInfo.InsStatus[iTmp] <> '통과' then
			begin
				if glCallInsInfo.InsCD[iTmp] = '06' then //메리츠
				begin
					GMessagebox('메리츠 심사결과가 통과일 경우에만 설정이 가능합니다', CDMSE);
				end else
        if glCallInsInfo.InsCD[iTmp] = '15' then //KB
				begin
					GMessagebox('KB 심사결과가 통과일 경우에만 설정이 가능합니다', CDMSE);
				end else
          GMessagebox('심사결과가 통과일 경우에만 설정이 가능합니다', CDMSE);
				chkCallDrive.Tag := 99;
				if (not chkDrive.Checked) and (not chkKidiDrive.Checked) then
				begin
					btn_InSureCopyTak.Enabled := False;
					cxcbInsCorper.Enabled := False;
					cxedInsNum.Enabled := False;
					cxdtInsStart.Enabled := False;
					cxdtInsEnd.Enabled := False;
				end;
				chkCallDrive.Checked := False;
				chkCallDrive.Tag := 0;
				exit;
			end;
			lb_WKINS_MER_STATUS.caption := glCallInsInfo.InsStatus[iTmp];
			dt_CallInsStartDate.Text := glCallInsInfo.InsADate[iTmp];
			cxdCallInsStartDate.Text := glCallInsInfo.InsADate[iTmp];
			cxdtInsStart.Text := glCallInsInfo.InsS[iTmp];
			cxdtInsEnd.Text := glCallInsInfo.InsE[iTmp];
			cxedInsNum.Text := glCallInsInfo.InsNum[iTmp];

			proc_BHSet(1);// 보험사 콤보설정 0: 전체, 1: 콜당보험용 보험사
			if glCallInsInfo.InsCD[iTmp] = '06' then cxcbInsCorper.ItemIndex := 0 else
			if glCallInsInfo.InsCD[iTmp] = '15' then cxcbInsCorper.ItemIndex := 1;
		end else
    if chkCallDrive.Hint = '' then
		begin
			iTmp := glCallInsInfo.InsGubun.IndexOf('c');
			if (iTmp > 0) and (glCallInsInfo.InsStatus[iTmp] = '통과') then
			begin
				lb_WKINS_MER_STATUS.caption := glCallInsInfo.InsStatus[iTmp];
				dt_CallInsStartDate.Text := glCallInsInfo.InsADate[iTmp];
				cxdCallInsStartDate.Text := glCallInsInfo.InsADate[iTmp];
				cxdtInsStart.Text := glCallInsInfo.InsS[iTmp];
				cxdtInsEnd.Text := glCallInsInfo.InsE[iTmp];
				cxedInsNum.Text := glCallInsInfo.InsNum[iTmp];

				proc_BHSet(1);// 보험사 콤보설정 0: 전체, 1: 콜당보험용 보험사
				cxcbInsCorper.ItemIndex := 0;
			end	else
			begin
				iTmp := glCallInsInfo.InsGubun.IndexOf('k');
				if (iTmp > 0) and (glCallInsInfo.InsStatus[iTmp] = '통과') then
				begin
					lb_WKINS_MER_STATUS.caption := glCallInsInfo.InsStatus[iTmp];
					dt_CallInsStartDate.Text := glCallInsInfo.InsADate[iTmp];
					cxdCallInsStartDate.Text := glCallInsInfo.InsADate[iTmp];
					cxdtInsStart.Text := glCallInsInfo.InsS[iTmp];
					cxdtInsEnd.Text := glCallInsInfo.InsE[iTmp];
					cxedInsNum.Text := glCallInsInfo.InsNum[iTmp];

					proc_BHSet(1);// 보험사 콤보설정 0: 전체, 1: 콜당보험용 보험사
					cxcbInsCorper.ItemIndex := 1;
				end	else
				begin
					GMessagebox('심사결과가 통과일 경우에만 설정이 가능합니다', CDMSE);
					chkCallDrive.Tag := 99;
					if (not chkDrive.Checked) and (not chkKidiDrive.Checked) then
					begin
						btn_InSureCopyTak.Enabled := False;
						cxcbInsCorper.Enabled := False;
						cxedInsNum.Enabled := False;
						cxdtInsStart.Enabled := False;
						cxdtInsEnd.Enabled := False;
					end;
					chkCallDrive.Checked := False;
					chkCallDrive.Tag := 0;
					exit;
				end;
			end;
		end;
		chkDrive.Tag := 99;
		chkDrive.checked := False;
		chkDrive.Tag := 0;
		chkKidiDrive.Tag := 99;
		chkKidiDrive.checked := False;
		chkKidiDrive.Tag := 0;
	end;
end;

procedure TFrm_WOR01.chkDrivePropertiesChange(Sender: TObject);
var iTmp, iRow : integer;
	bTmp : Boolean;
begin
	if chkDrive.Tag = 99 then exit;

	if not chkDrive.Checked then 
	begin
		if (not chkCallDrive.Checked) and (not chkKidiDrive.Checked) then
		begin
			bTmp := False;
			btn_InSureCopyTak.Enabled := bTmp;
			cxcbInsCorper.Enabled := bTmp;
			cxedInsNum.Enabled := bTmp;
			cxdtInsStart.Enabled := bTmp;
			cxdtInsEnd.Enabled := bTmp;
			cxedInsNum.Text := '';
			cxdtInsStart.Text := '';
			cxdtInsEnd.Text := '';
		end;
		cxcbInsCorper.ItemIndex := 0;
	end else 
	begin	
		chkCallDrive.checked := False;
		chkKidiDrive.Checked := False;		

		proc_BHSet(0);

		bTmp := True;
		btn_InSureCopyTak.Enabled := bTmp;
		cxcbInsCorper.Enabled := bTmp;
		cxedInsNum.Enabled := bTmp;
		cxdtInsStart.Enabled := bTmp;
		cxdtInsEnd.Enabled := bTmp;

		iTmp := glCallInsInfo.InsGubun.IndexOf('m');
		if iTmp < 0 then 
		begin
			cxcbInsCorper.ItemIndex := 0;
			cxedInsNum.Text := '';
			cxdtInsStart.Text := '';
			cxdtInsEnd.Text := '';
			exit;
		end;
		
		iRow := slInsCode.IndexOf(glCallInsInfo.InsCD[iTmp]);
		if iRow <> -1 then
			cxcbInsCorper.ItemIndex := iRow
		else
			cxcbInsCorper.ItemIndex := 0;
		cxedInsNum.Text := glCallInsInfo.InsNum[iTmp];
		cxdtInsStart.Text := glCallInsInfo.InsS[iTmp];
		cxdtInsEnd.Text := glCallInsInfo.InsE[iTmp];
	end;
{	cxButton5.Enabled := bTmp;
	cxcbInsCorper.Enabled := bTmp;
	cxedInsNum.Enabled := bTmp;
	cxdtInsStart.Enabled := bTmp;
	cxdtInsEnd.Enabled := bTmp;  }
end;

procedure TFrm_WOR01.proc_wk_Search(sWkSabun: string);
var
	XmlData, ErrMsg: string;
	ErrCode: integer;
	sTmp : string;
begin
	proc_wk_Modify_init(sWkSabun);

	if not RequestBase(GetSel05('WOR194', 'MNG_WK.GET_WK_INFO_N4', '1', sWkSabun), XmlData, ErrCode, ErrMsg) then
	begin
		GMessagebox(Format('기사정보 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
		modifyChk := False;
		Exit;
	end;

	if Cheonan_ShareGroup(GS_PRJ_AREA, GT_USERIF.ShareNo) then
		proc_recieve_C(XmlData) else
	if GS_PRJ_AREA = 'S' then
		proc_recieve_S(XmlData) else
	if GS_PRJ_AREA = 'O' then
	begin
		//  제주연합대리 G29 탁송콜당보험 추가 20210914 KHS.정회귀팀장 요청
		if ((GT_USERIF.ShareNo = 'G05') or (GT_USERIF.ShareNo = 'G12')  or (GT_USERIF.ShareNo = 'G29') or (GT_USERIF.ID = 'sntest')) then
			proc_recieve_O_Jeju(XmlData)
		else
			proc_recieve_O(XmlData);
	end;

	sTmp := Proc_BRNOSearch;									
	// 탁송연합콜 사용 [접수창체크옵션,지사,본사,연합] 조회  yyny
	sTmp := GetTakAllyYN(sTmp);

	if copy(sTmp,5,1) = 'y' then
	begin
		chkTakAlly.Enabled := True;
	end else
	begin
		chkTakAlly.Enabled := False;
		chkTakAlly.Checked := False;
	end;

  btnStateList.Click;
end;

procedure TFrm_WOR01.cxbNewUserClick(Sender: TObject);
Var sMsg : String;
begin
	if GS_NICE_CHK then
  begin
    sMsg := '본인인증 후 수정/저장 없이 초기화하시겠습니까?';
		if Application.MessageBox(PChar(sMsg), '', MB_YESNO + MB_ICONINFORMATION) = IDNO then Exit;
  end;
	proc_init;
end;

procedure TFrm_WOR01.cxbModifyClick(Sender: TObject);
var i, idx : integer;
	SABUN_List : TStringList;
	NAME_List : TStringList;
	USESHARE_List : TStringList;
	SHARPNO_List : TStringList;
	USEHP_List : TStringList;
  USEMC_List : TStringList;
  bOk : Boolean;
begin
	bOk := False;
  try
    for i := 0 to ComponentCount - 1 do
    begin
      if Components[i] is TcxTextEdit then
      begin
        if not func_EucKr_Check((Components[i] as TcxTextEdit), 0) then
        begin
          bOk := True;
          Break;
        end;
      end else
      if Components[i] is TcxMemo then
      begin
        if not func_EucKr_Check((Components[i] as TcxMemo), 0) then
        begin
          bOk := True;
          Break;
        end;
      end;
    end;
    if bOk then Exit;
  except
  end;
	if cxbModify.Caption = '신규저장' then
  begin
		if GS_PRJ_AREA = 'S' then proc_Worker_Save(0) else
		if GS_PRJ_AREA = 'O' then
		begin
			//  제주연합대리 G29 탁송콜당보험 추가 20210914 KHS.정회귀팀장 요청
			if ((GT_USERIF.ShareNo = 'G05') or (GT_USERIF.ShareNo = 'G12')  or (GT_USERIF.ShareNo = 'G29') or (GT_USERIF.ID = 'sntest')) then
				proc_Worker_SaveO_Jeju(0)
			else
				proc_Worker_SaveO(0);
		end;	
	end else
	begin
		if Cheonan_ShareGroup(GS_PRJ_AREA, GT_USERIF.ShareNo) then 
		begin 
			Try
				cxbModify.Enabled := False;
  			SABUN_List := TStringList.Create;
  			NAME_List := TStringList.Create;
				USESHARE_List := TStringList.Create;
				SHARPNO_List := TStringList.Create;
  			USEHP_List := TStringList.Create;
        USEMC_List := TStringList.Create;

				if iUse_Add_Cnt + gUse_Cnt > 1 then
				begin
					SABUN_List.Assign(FWORKER.SABUN);
					NAME_List.Assign(FWORKER.NAME);
					USESHARE_List.Assign(FWORKER.USESHARE);
					SHARPNO_List.Assign(FWORKER.SHARPNO);
					USEHP_List.Assign(FWORKER.USEHP);
					USEMC_LIst.Assign(FWORKER.USEMC);

					FWORKER.SABUN.Clear;
					FWORKER.NAME.Clear;
					FWORKER.USESHARE.Clear;
					FWORKER.SHARPNO.Clear;
					FWORKER.USEHP.Clear;
					FWORKER.USEMC.Clear;

  				if gUse_Cnt = 1 then   //1개 기사 - 선택기사
  				begin
  					FWORKER.SABUN.Add(Trim(cxedSabun.Text));
  					FWORKER.NAME.Add(Trim(cxedSabun.Text) + '*' + cxedName.Text);
  					FWORKER.USESHARE.Add('');
  					FWORKER.SHARPNO.Add('');
  					FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '');
            if cxcbWkmc.ItemIndex = 0 then FWORKER.USEMC.add('')
																			else FWORKER.USEMC.add(cxcbWkmc.Text);

  					if iUse_Add_Cnt = 1 then //추가된 기사가 1개일 경우
  					begin
  						FWORKER.SABUN.Add(Trim(lb_Sabun2.Caption));
  						FWORKER.NAME.Add(Trim(lb_Sabun2.Caption) + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#2');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#2');
              if cxcbWkmc2.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc2.Text);
  					end else
  					if iUse_Add_Cnt = 2 then
  					begin
							FWORKER.SABUN.Add(Trim(lb_Sabun2.Caption));
  						FWORKER.NAME.Add(Trim(lb_Sabun2.Caption) + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#2');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#2');
              if cxcbWkmc2.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc2.Text);

  						FWORKER.SABUN.Add(Trim(lb_Sabun3.Caption));
  						FWORKER.NAME.Add(Trim(lb_Sabun3.Caption) + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#3');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#3');
              if cxcbWkmc3.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc3.Text);
  					end else
  					if iUse_Add_Cnt = 3 then
  					begin
  						FWORKER.SABUN.Add(Trim(lb_Sabun2.Caption));
  						FWORKER.NAME.Add(Trim(lb_Sabun2.Caption) + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#2');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#2');
              if cxcbWkmc2.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc2.Text);

  						FWORKER.SABUN.Add(Trim(lb_Sabun3.Caption));
  						FWORKER.NAME.Add(Trim(lb_Sabun3.Caption) + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#3');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#3');
              if cxcbWkmc3.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc3.Text);

  						FWORKER.SABUN.Add(Trim(lb_Sabun4.Caption));
  						FWORKER.NAME.Add(Trim(lb_Sabun4.Caption) + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#4');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#4');
              if cxcbWkmc4.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc4.Text);
  					end;
  				end else
  				if gUse_Cnt = 2 then   //2개 기사 - 선택기사
  				begin
  					if iFlag = 0 then
  					begin
  						/////선택된 기사#
  						FWORKER.SABUN.Add(Trim(cxedSabun.Text));
  						FWORKER.NAME.Add(Trim(cxedSabun.Text) + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add('');
  						FWORKER.SHARPNO.Add('');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '');
              if cxcbWkmc.ItemIndex = 0 then FWORKER.USEMC.add('')
                                        else FWORKER.USEMC.add(cxcbWkmc.Text);
  						/////선택된 기사#

  						FWORKER.SABUN.Add(SABUN_List[1]);
  						FWORKER.NAME.Add(SABUN_List[1] + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#2');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#2');
              if cxcbWkmc2.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc2.Text);
  					end else
            if iFlag = 2 then
  					begin
  						FWORKER.SABUN.Add(SABUN_List[0]);
  						FWORKER.NAME.Add(SABUN_List[0] + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add('');
  						FWORKER.SHARPNO.Add('');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '');
              if cxcbWkmc.ItemIndex = 0 then FWORKER.USEMC.add('')
                                        else FWORKER.USEMC.add(cxcbWkmc.Text);

  						/////선택된 기사#
  						FWORKER.SABUN.Add(Trim(cxedSabun.Text));
  						FWORKER.NAME.Add(Trim(cxedSabun.Text) + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#2');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#2');
              if cxcbWkmc2.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc2.Text);
  						/////선택된 기사#
  					end;

  					if iUse_Add_Cnt = 1 then  //추가된 기사가 1개일 경우
  					begin
  						FWORKER.SABUN.Add(Trim(lb_Sabun3.Caption));
  						FWORKER.NAME.Add(Trim(lb_Sabun3.Caption) + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#3');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#3');
              if cxcbWkmc3.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc3.Text);
  					end else
  					if iUse_Add_Cnt = 2 then  //추가된 기사가 2개일 경우
  					begin
  						FWORKER.SABUN.Add(Trim(lb_Sabun3.Caption));
  						FWORKER.NAME.Add(Trim(lb_Sabun3.Caption) + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#3');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#3');
              if cxcbWkmc3.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc3.Text);

  						FWORKER.SABUN.Add(Trim(lb_Sabun4.Caption));
  						FWORKER.NAME.Add(Trim(lb_Sabun4.Caption) + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#4');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#4');
              if cxcbWkmc4.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc4.Text);
  					end;
  				end else
  				if gUse_Cnt = 3 then   //3개 기사 - 선택기사
  				begin
  					if iFlag = 0 then
  					begin
  						/////선택된 기사#
  						FWORKER.SABUN.Add(Trim(cxedSabun.Text));
  						FWORKER.NAME.Add(Trim(cxedSabun.Text) + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add('');
  						FWORKER.SHARPNO.Add('');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '');
              if cxcbWkmc.ItemIndex = 0 then FWORKER.USEMC.add('')
                                        else FWORKER.USEMC.add(cxcbWkmc.Text);
  						/////선택된 기사#

  						FWORKER.SABUN.Add(SABUN_List[1]);
  						FWORKER.NAME.Add(SABUN_List[1] + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#2');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#2');
              if cxcbWkmc2.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc2.Text);

  						FWORKER.SABUN.Add(SABUN_List[2]);
  						FWORKER.NAME.Add(SABUN_List[2] + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#3');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#3');
              if cxcbWkmc3.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc3.Text);
  					end else
            if iFlag = 2 then
  					begin
  						FWORKER.SABUN.Add(SABUN_List[0]);
  						FWORKER.NAME.Add(SABUN_List[0] + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add('');
  						FWORKER.SHARPNO.Add('');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '');
              if cxcbWkmc.ItemIndex = 0 then FWORKER.USEMC.add('')
                                        else FWORKER.USEMC.add(cxcbWkmc.Text);

  						/////선택된 기사#
  						FWORKER.SABUN.Add(Trim(cxedSabun.Text));
  						FWORKER.NAME.Add(Trim(cxedSabun.Text) + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#2');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#2');
              if cxcbWkmc2.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc2.Text);

  						/////선택된 기사#
  						FWORKER.SABUN.Add(SABUN_List[2]);
  						FWORKER.NAME.Add(SABUN_List[2] + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#3');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#3');
              if cxcbWkmc3.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc3.Text);
  					end else
            if iFlag = 3 then
  					begin
  						FWORKER.SABUN.Add(SABUN_List[0]);
  						FWORKER.NAME.Add(SABUN_List[0] + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add('');
  						FWORKER.SHARPNO.Add('');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '');
              if cxcbWkmc.ItemIndex = 0 then FWORKER.USEMC.add('')
                                        else FWORKER.USEMC.add(cxcbWkmc.Text);

  						/////선택된 기사#
  						FWORKER.SABUN.Add(SABUN_List[1]);
  						FWORKER.NAME.Add(SABUN_List[1] + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#2');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#2');
              if cxcbWkmc2.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc2.Text);

  						/////선택된 기사#
  						FWORKER.SABUN.Add(cxedSabun.Text);
  						FWORKER.NAME.Add(cxedSabun.Text + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#3');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#3');
              if cxcbWkmc3.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc3.Text);
  					end;

  					if iUse_Add_Cnt = 1 then  //추가된 기사가 1개일 경우
  					begin
  						FWORKER.SABUN.Add(Trim(lb_Sabun4.Caption));
  						FWORKER.NAME.Add(Trim(lb_Sabun4.Caption) + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#4');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#4');
              if cxcbWkmc4.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc4.Text);
  					end;
  				end else
  				if gUse_Cnt = 4 then   //3개 기사 - 선택기사
  				begin
  					if iFlag = 0 then
  					begin
  						/////선택된 기사#
  						FWORKER.SABUN.Add(Trim(cxedSabun.Text));
  						FWORKER.NAME.Add(Trim(cxedSabun.Text) + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add('');
  						FWORKER.SHARPNO.Add('');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '');
              if cxcbWkmc.ItemIndex = 0 then FWORKER.USEMC.add('')
                                        else FWORKER.USEMC.add(cxcbWkmc.Text);
  						/////선택된 기사#

  						FWORKER.SABUN.Add(SABUN_List[1]);
  						FWORKER.NAME.Add(SABUN_List[1] + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#2');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#2');
              if cxcbWkmc2.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc2.Text);

  						FWORKER.SABUN.Add(SABUN_List[2]);
  						FWORKER.NAME.Add(SABUN_List[2] + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#3');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#3');
              if cxcbWkmc3.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc3.Text);

  						FWORKER.SABUN.Add(SABUN_List[3]);
  						FWORKER.NAME.Add(SABUN_List[3] + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#4');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#4');
              if cxcbWkmc4.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc4.Text);
  					end else
            if iFlag = 2 then
  					begin
  						FWORKER.SABUN.Add(SABUN_List[0]);
  						FWORKER.NAME.Add(SABUN_List[0] + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add('');
  						FWORKER.SHARPNO.Add('');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '');
              if cxcbWkmc.ItemIndex = 0 then FWORKER.USEMC.add('')
                                        else FWORKER.USEMC.add(cxcbWkmc.Text);

  						/////선택된 기사#
  						FWORKER.SABUN.Add(Trim(cxedSabun.Text));
  						FWORKER.NAME.Add(Trim(cxedSabun.Text) + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#2');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#2');
              if cxcbWkmc2.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc2.Text);

  						/////선택된 기사#
  						FWORKER.SABUN.Add(SABUN_List[2]);
  						FWORKER.NAME.Add(SABUN_List[2] + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#3');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#3');
              if cxcbWkmc3.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc3.Text);

  						/////선택된 기사#
  						FWORKER.SABUN.Add(SABUN_List[3]);
  						FWORKER.NAME.Add(SABUN_List[3] + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#4');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#4');
              if cxcbWkmc4.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc4.Text);
  					end else
            if iFlag = 3 then
  					begin
  						FWORKER.SABUN.Add(SABUN_List[0]);
  						FWORKER.NAME.Add(SABUN_List[0] + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add('');
  						FWORKER.SHARPNO.Add('');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '');
              if cxcbWkmc.ItemIndex = 0 then FWORKER.USEMC.add('')
                                        else FWORKER.USEMC.add(cxcbWkmc.Text);

  						/////선택된 기사#
  						FWORKER.SABUN.Add(SABUN_List[1]);
  						FWORKER.NAME.Add(SABUN_List[1] + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#2');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#2');
              if cxcbWkmc2.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc2.Text);

  						/////선택된 기사#
  						FWORKER.SABUN.Add(cxedSabun.Text);
  						FWORKER.NAME.Add(cxedSabun.Text + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#3');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#3');
              if cxcbWkmc3.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc3.Text);

  						/////선택된 기사#
  						FWORKER.SABUN.Add(cxedSabun.Text);
  						FWORKER.NAME.Add(cxedSabun.Text + '*' + cxedName.Text);
  						FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
  						FWORKER.SHARPNO.Add('#4');
  						FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#4');
              if cxcbWkmc4.ItemIndex = 0 then FWORKER.USEMC.add('')
                                         else FWORKER.USEMC.add(cxcbWkmc4.Text);
  					end;
  				end;
  			end;

        if ( cxRBCall2Y.Checked ) then
        begin
					idx := SHARPNO_List.IndexOf('#9');
          if idx >= 0 then
          begin
  					FWORKER.SABUN.Add(SABUN_List[idx]);
	  				FWORKER.NAME.Add(SABUN_List[idx]+ '*' + cxedName.Text);
          end else
          begin
  					FWORKER.SABUN.Add(Trim(lb_Sabun9.Caption));
	  				FWORKER.NAME.Add(Trim(lb_Sabun9.Caption) + '*' + cxedName.Text);
          end;
					FWORKER.USESHARE.Add(Check_ShareGroup(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo));
					FWORKER.SHARPNO.Add('#9');
					FWORKER.USEHP.Add(cxcbWkHp.Text + CallToStr(edt_WkHp.Text) + '#9');
          if cxcbWkmc.ItemIndex = 0 then FWORKER.USEMC.add('')
                                    else FWORKER.USEMC.add(cxcbWkmc.Text);
				end;
  		except
				ShowMessage('기사 수정 중 오류가 발생하였습니다');
  			cxbModify.Enabled := True;
  			SABUN_List.Free;
  			NAME_List.Free;
  			USESHARE_List.Free;
  			SHARPNO_List.Free;
				USEHP_List.Free;
  		end;

			proc_Worker_Save_Cheonan(1);
		end	else
		begin
			if GS_PRJ_AREA = 'S' then
			begin
				proc_Worker_Save(1);
			end else  
			if GS_PRJ_AREA = 'O' then
			begin
				//  제주연합대리 G29 탁송콜당보험 추가 20210914 KHS.정회귀팀장 요청
				if ((GT_USERIF.ShareNo = 'G05') or (GT_USERIF.ShareNo = 'G12')  or (GT_USERIF.ShareNo = 'G29') or (GT_USERIF.ID = 'sntest')) then
					proc_Worker_SaveO_Jeju(1)
				else
					proc_Worker_SaveO(1);
			end;	
		end;

    GS_NICE_CHK := False;
  end;
end;

procedure TFrm_WOR01.cxbHpCheckClick(Sender: TObject);
var
	XmlData, sHp, rv_str, sMsg, Param, ErrMsg, sGubun, ls_MSG_Err : string;
	lst_Result : IXMLDomNodeList;
  slReceive, slList : TStringList;
  ErrCode, j, i : integer;
begin
	if Trim(edt_WkHp.Text) = '' then
	begin
		GMessagebox('단말기 번호를 입력해주세요.', CDMSE);
		cxbHPCheck.Enabled := True;
		cxbModify.Enabled := true;
		Exit;
	end;
	sHp := cxcbWkHp.Text + edt_WkHp.Text;
	sHp := StringReplace(sHp, '-', '', [rfReplaceAll]);
	if (Length(sHp) < 10) or (Length(sHp) > 11)    then
	begin
		GMessagebox('단말기 번호 자리수가 틀립니다.', CDMSE);
		cxbHPCheck.Enabled := True;
		cxbModify.Enabled := true;
		Exit;
	end;

	if copy(sHp, 1,3) = '010' then
	begin
		if Length(sHp) <= 10  then
		begin
			GMessagebox('단말기 번호 자리수가 틀립니다.', CDMSE);
			cxbHPCheck.Enabled := True;
			cxbModify.Enabled := true;
			Exit;
		end;
	end;

	if (chkKidiDrive.checked) then
	begin
		sMsg := '[개인보험-보험개발원] 사용중 단말기번호를 변경후 저장하시면 '+#13#10
					+ '[개인보험-보험개발원] 등록을 다시 진행하여야 합니다.' +#13#10+#13#10 
					+ '그래도 변경 하시겠습니까?';
		if Application.MessageBox(PChar(sMsg), '[보험개발원]', MB_YESNO +	MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
		begin
			gbKidiInfoChange := True;  
		end else
		begin 
			edt_WkHp.Text := edt_WkHp.Hint;
			cxbHpCheck.Enabled := False;
			cxcbWkHp_JoinCNT.ItemIndex := StrToInt(cxcbWkHp_JoinCNT.Hint);
			if (chkKidiDrive.checked) then
			begin
				gbKidiInfoChange := False;
			end;
			Exit;			
		end;
	end;

	Try
		sHp := cxcbWkHp.Text + edt_WkHp.Text;
		sHp := StringReplace(sHp, '-', '', [rfReplaceAll]);
    sGubun := '0';  // 프로그램구분 (일반 0 , HB연합 3 , 콜마너S 4, 콜라인 5 , 원주365 7, Dcall 8, 탁이야 9 )

    if IsHBShare(GS_PRJ_AREA = 'O', GT_USERIF.ShareNo) then
    begin
      sHp := sHp + '#3';
      sGubun := '3';
    end else
    if GB_365System then
    begin
      sHp := sHp + '#7';
      sGubun := '7';
    end else  //#7 유효성체크
    if GB_CallLine then
    begin
      sHp := sHp + '#5';
      sGubun := '5';
    end else  //#5 유효성체크
		if FShuttel4[cboBranch.itemindex] = 'y' then
    begin
      sHp := sHp + '#4'; //#4 셔틀기사 유효성체크
      sGubun := '4';
    end;

		Param := sGubun + '│' + sHp;

		Screen.Cursor := crHourGlass;
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel06('WOR015', 'MNG.GET_WK_HP_SEARCH', '100', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('기사단말기 사용체크 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				Screen.Cursor := crDefault;
				Exit;
			end;

			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			slMCashSeq.Clear;
			slMCashMemo.Clear;
			for j := 0 to slList.Count - 1 do
			begin
				Frm_Flash.cxPBar1.Position := j + 1;
				Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
				Application.ProcessMessages;
				xmlData := slList.Strings[j];
				if xmlData <> '' then
  				proc_recieve(xmlData);
			end;
			gbKidiInfoChange := chkKidiDrive.Checked;
  		proc_CheckBlacklist(sHp, 1);
		finally
			Frm_Flash.hide;
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_WOR01.cxbBrNumClick(Sender: TObject);
var
  ls_TxLoad, sNode, rv_str: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
begin
  try
    if cxedSabun.Text = '' then
    begin
      GMessageBox('사번을 입력하세요.', CDMSE);
			cxbModify.Enabled := true;
      Exit;
    end;

    ls_rxxml := GTx_UnitXmlLoad('SEL04.XML');
    xdom := ComsDomDocument.Create;
    try
      if (not xdom.loadXML(ls_rxxml)) then
      begin
        Screen.Cursor := crDefault;
        ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
		  	cxbModify.Enabled := true;
        Exit;
      end;

		  iChk_Sabun := TcxButton(sender).tag;

      sNode := '/cdms/header/UserID';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_Node.item[0].attributes.getNamedItem('Value').Text := En_Coding(GT_USERIF.ID);
      sNode := '/cdms/header/ClientVer';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
      sNode := '/cdms/header/ClientKey';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_Node.item[0].attributes.getNamedItem('Value').Text := 'WOR016';
      sNode := '/cdms/Service/Data/Query';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_Node.item[0].attributes.getNamedItem('Key').Text := 'WKBRNUM01';

      sNode := '/cdms/Service/Data/Query/Param';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_clon := lst_node.item[0].cloneNode(True);
      sNode := '/cdms/Service/Data/Query';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_Node.item[0].appendChild(lst_clon);

      sNode := '/cdms/Service/Data/Query/Param';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_Node.item[0].attributes.getNamedItem('Seq').Text := '1';
      lst_Node.item[0].attributes.getNamedItem('Value').Text := cxBrNo.Text;
      lst_Node.item[1].attributes.getNamedItem('Seq').Text := '2';
      lst_Node.item[1].attributes.getNamedItem('Value').Text := cxedSabun.Text;

      ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;

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
    finally
      xdom := Nil;
    end;
  except on E: Exception do
    begin
      Assert(False, E.Message);
			Log(LOGDATAPATHFILE, '기사사번요청 - ' + E.Message);
    end;
  end;
end;

procedure TFrm_WOR01.cxcbInsCorperPropertiesChange(Sender: TObject);
var i : integer;
begin
	if chkCallDrive.Checked then
	begin
//		if cxcbInsCorper.Tag = 99 then exit;
		if cxcbInsCorper.ItemIndex = 0 then
		begin
			if lb_WKINS_MER_STATUS.Hint <> '1' then
			begin
				GMessagebox('메리츠 심사결과가 통과일 경우에만 설정이 가능합니다', CDMSE);
				cxcbInsCorper.Tag := 99;
				cxcbInsCorper.ItemIndex := 1;
				cxcbInsCorper.Tag := 0;
				exit;
			end;
			for i := 0 to glCallInsInfo.InsCD.Count -1 do
			begin
				if (glCallInsInfo.InsGubun[i] = 'c') and (glCallInsInfo.InsCD[i] = '06') then
				begin
					cxedInsNum.Text := glCallInsInfo.InsNum[i];
					cxdtInsStart.Text := glCallInsInfo.InsS[i];
					cxdtInsEnd  .Text := glCallInsInfo.InsE[i];
				end;
			end;
		end else
		if cxcbInsCorper.ItemIndex = 1 then
		begin
			if lb_WKINS_KB_STATUS.Hint <> '1' then
			begin
				GMessagebox('KB 심사결과가 통과일 경우에만 설정이 가능합니다', CDMSE);
				cxcbInsCorper.Tag := 99;
				cxcbInsCorper.ItemIndex := 0;
				cxcbInsCorper.Tag := 0;
				exit;
			end;
			for i := 0 to glCallInsInfo.InsCD.Count -1 do
			begin
				if (glCallInsInfo.InsGubun[i] = 'k') and (glCallInsInfo.InsCD[i] = '15') then
				begin
					cxedInsNum.Text := glCallInsInfo.InsNum[i];
					cxdtInsStart.Text := glCallInsInfo.InsS[i];
					cxdtInsEnd  .Text := glCallInsInfo.InsE[i];
				end;
			end;
		end
	end;
end;

procedure TFrm_WOR01.cxcbWkHp2Click(Sender: TObject);
begin
  cxbHpCheck2.Enabled := True;
end;

procedure TFrm_WOR01.cxcbWkHp3Click(Sender: TObject);
begin
  cxbHpCheck3.Enabled := True;
end;

procedure TFrm_WOR01.cxcbWkHp4Click(Sender: TObject);
begin
  cxbHpCheck4.Enabled := True;
end;

procedure TFrm_WOR01.cxcbWkHpClick(Sender: TObject);
begin
  cxbHpCheck.Enabled := True;
end;

procedure TFrm_WOR01.edt_WkHpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then
	begin
		cxbHpCheck2.Enabled := False;
		cxbHpCheck3.Enabled := False;
		cxbHpCheck4.Enabled := False;

		cxcbWkmc.SetFocus;
		if cxbHpCheck.Enabled then
		begin
			GMessagebox('단말기 사용체크를 하여주십시오.', CDMSE);
			edt_WkHp.Tag := 99;
			cxbHpCheck.SetFocus;
			cxbModify.Enabled := true;
			Exit;
		end;
	end;
end;

procedure TFrm_WOR01.edt_WkHpKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	edt_WkHp.Tag := 0;
  if (IsAngelPlusHead(GS_PRJ_AREA = 'S', GT_UserIF.HD)) then
  begin
    edtPhone.Text := cxcbWkHp.Text;
  end else
  begin
	  cxcbPhone.ItemIndex := cxcbWkHp.ItemIndex;
  end;
	cxedPhone.Text := edt_WkHp.Text;
	cxcbWkHp2.ItemIndex := cxcbWkHp.ItemIndex;
	edt_WkHp2.Text := edt_WkHp.Text;
	cxcbWkHp3.ItemIndex := cxcbWkHp.ItemIndex;
	edt_WkHp3.Text := edt_WkHp.Text;
	cxcbWkHp4.ItemIndex := cxcbWkHp.ItemIndex;
	edt_WkHp4.Text := edt_WkHp.Text;

	if CallToStr(edt_WkHp.Text) <> CallToStr(edt_WkHp.Hint) then
	begin
		cxbHpCheck.Enabled := True;
	end
	else
	begin
		gsOrgHp := edt_WkHp.Text; 
		cxbHpCheck.Enabled := False;
		cxcbWkHp_JoinCNT.ItemIndex := StrToInt(cxcbWkHp_JoinCNT.Hint);
		if (chkKidiDrive.checked) then
		begin
			gbKidiInfoChange := False;
		end;

	end;

end;

procedure TFrm_WOR01.edt_WkHpMouseDown(Sender: TObject; Button: TMouseButton;
	Shift: TShiftState; X, Y: Integer);
begin
	edt_WkHp.Tag := 0;
end;

procedure TFrm_WOR01.cxedSabunKeyPress(Sender: TObject; var Key: Char);
begin
  if key in ['a'..'z', 'A'..'Z', '0'..'9', #13, #8] then
//  if key in ['0'..'9', #13, #8] then
  else
    key := #0;
end;

procedure TFrm_WOR01.cxedSabunKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  cxbBrNum.Enabled := True;
end;

procedure TFrm_WOR01.edt_BrNmEnter(Sender: TObject);
begin
	lbSearchBranch1.Visible := False;
end;

procedure TFrm_WOR01.edt_BrNmExit(Sender: TObject);
begin
	lbSearchBranch1.Visible := (edt_BrNm.Text = '');
end;

procedure TFrm_WOR01.edt_BrNmFocusChanged(Sender: TObject);
begin
	lbSearchBranch1.Visible := ( Not edt_BrNm.Focused ) And (edt_BrNm.Text = '');
end;

procedure TFrm_WOR01.edt_BrNmKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	SetDebugeWrite('TFrm_WOR01.edt_BrNm');
	if Key = VK_BACK then
	begin
		if (Length(edt_BrNm.Text) <= 1) then
		begin
			lst_BRList1.Items.Clear;
			searchBRlist.Clear;
			lst_BRList1.Visible := False;
			Exit;
		end;
	end else
	if Key = VK_DOWN then
	begin
		if lst_BRLIst1.ItemIndex < 0 then lst_BRLIst1.ItemIndex := 0;
		if lst_BRList1.Visible then lst_BRList1.SetFocus;
	end else
	if Key = VK_RETURN then
	begin
		cboBranch.ItemIndex := StrToIntDef(searchBRlist[0], 0);
		cxedSabun.SetFocus;
		lst_BRList1.Visible := False;
	end;
end;

procedure TFrm_WOR01.edt_BrNmKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	SetDebugeWrite('TFrm_WOR01.edt_BrNmKeyUp');
//		if (key <> 229) then  //  20191224 한컴입력기 에서는 모든 한글이 229로 넘어옴 그래서 삭제 KHS
	begin
		if Trim(edt_BrNm.Text) = '' then
		begin
			edt_BrNm.SetFocus;
			Exit;
		end;

		if Length(Trim(edt_BrNm.Text)) >= 1 then
		begin
			if not func_BrNameList_Search then Exit;
		end;
	end;
end;

procedure TFrm_WOR01.edt_BrNmMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	SetDebugeWrite('TFrm_WOR01.edt_BrNmMouseDown');
	if lst_BRList1.Items.Count > 0 then
	begin
		if lst_BRList1.Items.Count > 30 then
			lst_BRList1.Height := 300
		else
			lst_BRList1.Height := lst_BRList1.Items.Count * 18;
		lst_BRList1.Left := 92;
		lst_BRList1.Top := 39;
		lst_BRList1.Visible := True;
	end;
end;

procedure TFrm_WOR01.edt_BrNmPropertiesChange(Sender: TObject);
begin
	if ( Not edt_BrNm.Focused ) then
		lbSearchBranch1.Visible := (edt_BrNm.Text = ''); 
end;

procedure TFrm_WOR01.edt_WkHp2Exit(Sender: TObject);
begin
	if cxedPhone.Text = '' then
	begin
    if (IsAngelPlusHead(GS_PRJ_AREA = 'S', GT_UserIF.HD)) then
    begin
      edtPhone.Text := cxcbWkHp2.Text;
    end else
    begin
		  cxcbPhone.ItemIndex := cxcbWkHp2.ItemIndex;
    end;
		cxedPhone.Text := edt_WkHp2.Text;
	end;
end;

procedure TFrm_WOR01.edt_WkHp2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then
	begin
		cxbHpCheck.Enabled := False;
		cxbHpCheck3.Enabled := False;
		cxbHpCheck4.Enabled := False;
		
		cxcbWkmc2.SetFocus;
		if cxbHpCheck2.Enabled then
		begin
			GMessagebox('단말기 사용체크를 하여주십시오.', CDMSE);
			cxbHpCheck2.SetFocus;
			edt_WkHp.Tag := 99;
			cxbModify.Enabled := true;
			Exit;
		end;
	end;
end;

procedure TFrm_WOR01.edt_WkHp2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (IsAngelPlusHead(GS_PRJ_AREA = 'S', GT_UserIF.HD)) then
  begin
    edtPhone.Text := cxcbWkHp2.Text;
  end else
  begin
	  cxcbPhone.ItemIndex := cxcbWkHp2.ItemIndex;
  end;
	cxedPhone.Text := edt_WkHp2.Text;
	cxcbWkHp.ItemIndex := cxcbWkHp2.ItemIndex;
	edt_WkHp.Text := edt_WkHp2.Text;
	cxcbWkHp3.ItemIndex := cxcbWkHp2.ItemIndex;
	edt_WkHp3.Text := edt_WkHp2.Text;
	cxcbWkHp4.ItemIndex := cxcbWkHp2.ItemIndex;
	edt_WkHp4.Text := edt_WkHp2.Text;
	
	cxbHpCheck2.Enabled := CallToStr(edt_WkHp2.Text) <> CallToStr(edt_WkHp.Hint);
end;

procedure TFrm_WOR01.edt_WkHp3Exit(Sender: TObject);
begin
	if cxedPhone.Text = '' then
	begin
    if (IsAngelPlusHead(GS_PRJ_AREA = 'S', GT_UserIF.HD)) then
    begin
      edtPhone.Text := cxcbWkHp3.Text;
    end else
    begin
  		cxcbPhone.ItemIndex := cxcbWkHp3.ItemIndex;
    end;
		cxedPhone.Text := edt_WkHp3.Text;
	end;
end;

procedure TFrm_WOR01.edt_WkHp3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then
	begin
		cxbHpCheck.Enabled := False;
		cxbHpCheck2.Enabled := False;
		cxbHpCheck4.Enabled := False;
		
		cxcbWkmc3.SetFocus;
		if cxbHpCheck3.Enabled then
		begin
			GMessagebox('단말기 사용체크를 하여주십시오.', CDMSE);
			cxbHpCheck3.SetFocus;
			edt_WkHp.Tag := 99;
			cxbModify.Enabled := true;
			Exit;
		end;
	end;
end;

procedure TFrm_WOR01.edt_WkHp3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (IsAngelPlusHead(GS_PRJ_AREA = 'S', GT_UserIF.HD)) then
  begin
    edtPhone.Text := cxcbWkHp3.Text;
  end else
  begin
	  cxcbPhone.ItemIndex := cxcbWkHp3.ItemIndex;
  end;
	cxedPhone.Text := edt_WkHp3.Text;
	cxcbWkHp.ItemIndex := cxcbWkHp3.ItemIndex;
	edt_WkHp.Text := edt_WkHp3.Text;
	cxcbWkHp2.ItemIndex := cxcbWkHp3.ItemIndex;
	edt_WkHp2.Text := edt_WkHp3.Text;
	cxcbWkHp4.ItemIndex := cxcbWkHp3.ItemIndex;
	edt_WkHp4.Text := edt_WkHp3.Text;

	cxbHpCheck3.Enabled := CallToStr(edt_WkHp3.Text) <> CallToStr(edt_WkHp.Hint);
end;

procedure TFrm_WOR01.edt_WkHp4Exit(Sender: TObject);
begin
	if cxedPhone.Text = '' then
	begin
    if (IsAngelPlusHead(GS_PRJ_AREA = 'S', GT_UserIF.HD)) then
    begin
      edtPhone.Text := cxcbWkHp4.Text;
    end else
    begin
		  cxcbPhone.ItemIndex := cxcbWkHp4.ItemIndex;
    end;
		cxedPhone.Text := edt_WkHp4.Text;
	end;
end;

procedure TFrm_WOR01.edt_WkHp4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then
	begin
		cxbHpCheck.Enabled := False;
		cxbHpCheck2.Enabled := False;
		cxbHpCheck3.Enabled := False;
		
		cxcbWkmc4.SetFocus;
		if cxbHpCheck4.Enabled then
		begin
			GMessagebox('단말기 사용체크를 하여주십시오.', CDMSE);
			cxbHpCheck4.SetFocus;
			edt_WkHp.Tag := 99;
			cxbModify.Enabled := true;
			Exit;
		end;
	end;
end;

procedure TFrm_WOR01.edt_WkHp4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (IsAngelPlusHead(GS_PRJ_AREA = 'S', GT_UserIF.HD)) then
  begin
    edtPhone.Text := cxcbWkHp4.Text;
  end else
  begin
  	cxcbPhone.ItemIndex := cxcbWkHp4.ItemIndex;
  end;
	cxedPhone.Text := edt_WkHp4.Text;

	cxcbWkHp.ItemIndex := cxcbWkHp4.ItemIndex;
	edt_WkHp.Text := edt_WkHp4.Text;

	cxcbWkHp2.ItemIndex := cxcbWkHp4.ItemIndex;
	edt_WkHp2.Text := edt_WkHp4.Text;

	cxcbWkHp3.ItemIndex := cxcbWkHp4.ItemIndex;
	edt_WkHp3.Text := edt_WkHp4.Text;

	cxbHpCheck4.Enabled := CallToStr(edt_WkHp4.Text) <> CallToStr(edt_WkHp.Hint);
end;

procedure TFrm_WOR01.edt_WkHpExit(Sender: TObject);
begin
  if cxedPhone.Text = '' then
  begin
    if (IsAngelPlusHead(GS_PRJ_AREA = 'S', GT_UserIF.HD)) then
    begin
      edtPhone.Text := cxcbWkHp.Text;
    end else
    begin
      cxcbPhone.ItemIndex := cxcbWkHp.ItemIndex;
    end;
    cxedPhone.Text := edt_WkHp.Text;
	end;
	
end;

function TFrm_WOR01.func_CallInsureShareNo(AShareNo: string): Boolean;
begin
	Result := False;   //G20 제외 정회귀팀장 요청 20191218 KHS
	if (GS_PRJ_AREA = 'O') and
		 ((AShareNo = 'G33') or (AShareNo = 'G63') or (AShareNo = 'G34'){ or (AShareNo = 'G20')} or (AShareNo = 'G45')) then
		Result := True;
end;

function TFrm_WOR01.func_GETHOLIDAY(AParam: string): Boolean;
var
	ErrMsg, ls_MSG_Err: string;
	xdom: msDomDocument;
	XmlData, sTmp : string;
	lst_Result : IXMLDomNodeList;
	ErrCode : integer;
begin
	SetDebugeWrite('TFrm_Main.func_CancelDate');
	try
		Result := False;
		if not RequestBase(GetSel06('GET_HOLIDAY', 'COM.GET_HOLIDAY', '1', AParam), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('공휴일 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Exit;
		end;
		xdom := ComsDomDocument.Create;
		try
			if not xdom.loadXML(XmlData) then Exit;

			ls_MSG_Err := GetXmlErrorCode(XmlData);
			if ('0000' = ls_MSG_Err) then
			begin
				if (0 < GetXmlRecordCount(XmlData)) then
				begin
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					sTmp := lst_Result.item[0].attributes.getNamedItem('Value').Text;
				end;

				if sTmp = '1' then 
					Result := True;
			end;
		finally
			xdom := Nil;
		end;
	except
		on e: exception do
		begin
			Assert(False, E.Message);
		end;
	end; 
end;

function TFrm_WOR01.func_WkUpdate(sWkSabun: string): Boolean;
var
  ls_TxLoad,  sQuery, rv_str, ls_MSG_Err, sQueryTemp : string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  slReceive: TStringList;
  ErrCode: integer;
begin
  Result := False;
  try
    fGet_BlowFish_Query(GSQ_WK_NOT_PICTURE, sQueryTemp);
    sQuery := Format(sQueryTemp, [sWkSabun]);
    ls_TxLoad := GTx_UnitXmlLoad('QUERY.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WOR018', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', sQuery, [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          xdom := ComsDomDocument.Create;
          try
            if not xdom.loadXML(ls_rxxml) then
            begin
              Exit;
            end;
            ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' = ls_MSG_Err) then
            begin
              Result := True;
            end;
          finally
            xdom := Nil;
          end;
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_WOR01.proc_wk_Modify_init(sWkSabun: string);
begin
	if (GS_PRJ_AREA = 'O') then lb_Event_202010.visible := False
	else 
	begin
		lb_Event_202010.visible := False;
		lb_Event_202010.Enabled := False;
	end;

	//현장카드 옵션 현장카드 연합 추가 정회귀팀장 요청 KHS 20210224
	if GT_SPOT_CARD_CFG_YN then
	begin
		chk_JON01SelfCard.Visible := True;
		lb_Event_202010.height := 35;
	end else
	begin
		chk_JON01SelfCard.Visible := False;
		lb_Event_202010.height := 56;
	end;
  chk_JON01SelfCard.Checked := False;

	pnl_WOR05.Visible := False;
//	cxGroupBox3.height := 244 - ipnl_WOR05_Margin;

	cbbPriceBlock.Text := '';
	if (GS_PRJ_AREA = 'O') and ((GT_USERIF.ShareNo = 'G33') or (GT_USERIF.ShareNo = 'G63') or (GT_USERIF.ShareNo = 'G20') or
															(GT_USERIF.ShareNo = 'G45') or (GT_USERIF.ShareNo = 'G73')) then
	begin
		cbbPriceBlock.Enabled := False; //경남연합만 비활성화 20171130 KHS 정회귀팀장 요청
	end;

	chkTakAlly.checked := False;
	cxPageControl1.ActivePageIndex := 0;
	
	edt_BrNm.Enabled := False;
	edt_BrNm.Text := '';
	lbSearchBranch1.Enabled := False;
	lst_BRList1.visible := False;
	lst_BRList1.Clear;

	img_NoImage.Visible := False;
	cxdCallInsStartDate.Enabled := False;
	edt_Index.text := '';
	edt_Index2.text := '';
	edt_Index3.text := '';
	edt_Index4.text := '';
	cxcbInsCorper.ItemIndex := 0;
	cboNavi.ItemIndex := 0;
 	cxbSoNumCheck.Tag := 0;
	cxbSoNumCheck.Enabled := True;
  cxedSabun.Text := '';
  edtNameSabun.Clear;
	cxedName.Text := '';
  cxedSoNum.Text := '';
  cxedSoNum1.Text := '';
  cxrdMan.Checked := True;
  exedAddr1.Text := '';
  exedAddr2.Text := '';
	cxcbWkHp.ItemIndex := 0;
	cxcbWkHp_JoinCNT.Enabled := False;
	cxcbWkHp_JoinCNT.tag := 0;
	cxcbWkHp_JoinCNT2.Enabled := False;
	cxcbWkHp_JoinCNT.tag := 2;
	cxcbWkHp_JoinCNT3.Enabled := False;
	cxcbWkHp_JoinCNT.tag := 3;
	cxcbWkHp_JoinCNT4.Enabled := False;
	cxcbWkHp_JoinCNT.tag := 4;
	cxcbWkShareNo.Enabled := False;
	cxcbWkShareNo.Tag := 0;
	cxcbWkShareNo2.Enabled := False;
	cxcbWkShareNo2.Tag := 2;
	cxcbWkShareNo3.Enabled := False;
	cxcbWkShareNo3.Tag := 3;
	cxcbWkShareNo4.Enabled := False;
	cxcbWkShareNo4.Tag := 4;

	cxRBCall2Y.Enabled := True;
  cxRBCall2Y.Tag := 0;
	cxcbWkShareNo4.Enabled := False;
	cxcbWkShareNo4.Tag := 3;

	cxcbWkHp_JoinCNT.ItemIndex := 0;
	cxcbWkHp_JoinCNT2.ItemIndex := 1;
	cxcbWkHp_JoinCNT3.ItemIndex := 2;
	cxcbWkHp_JoinCNT4.ItemIndex := 3;
	cxcbPhone.ItemIndex := 0;
	cxedPhone.Text := '';
	cxedTel.Text := '';

	lb_INS_Status.Caption :=	'';
	//////////////콜당보험////////////////
	chkCallDrive.Hint := '';
	chkCallDrive.Enabled := True;
  chkCallDrive.Tag := 99;
	chkCallDrive.Checked := False;
  chkCallDrive.Tag := 0;
	cxbWKInsranceApply.Enabled := False;
//	dt_CallInsStartDate.Enabled := cxbWKInsranceApply.Enabled;
	dt_CallInsStartDate.Text := '';

	//////////////개인보험(보험개발원)////////////////
	gsOrgHp := '';
	gbKidiInfoChange := False;
	chkKidiDrive.Hint := '';
	chkKidiDrive.Enabled := True;
	lbKidiDrive.Enabled := True;
	lb_AgDate.Caption :=	'';
	lb_WKINS_Kidi_STATUS.Caption :=	'';

	btn_WKKidiApply.Enabled := False;
	btn_WKKidiSch .Enabled  := False;	
	btn_WKKidiSync.Enabled  := False;	
	btn_WKKidiSMS.Enabled   := False;
	
	//////////////월당보험/////////////////
	pnl_DBIns.Hint := '';
	pnl_DBIns.Visible := False;
	cxcbInsCorper.enabled := True;
	cxedInsNum.enabled := True;
	cxdtInsStart.enabled := True;
	cxdtInsEnd.enabled := True;
	//////////////일반보험////////////////
	chkDrive.Checked := False;
	cxcbInsCorper.ItemIndex := 0;
	cxdtInsStart.Text := '';
	cxdtInsEnd.Text := '';
	cxedInsNum.Text := '';
	cxedInsNum.Hint := '';
	lb_WKINS_MER_STATUS.Caption := '';
	lb_WKINS_KB_STATUS.Caption := '';
	cxdtInsStart.Text := '';
	cxdtInsEnd.Text := '';

	//////////////탁송콜당보험////////////////
	chkTakCall.Hint := '';
	chkTakCall.Enabled := True;
	chkTakCall.Tag := 99;
	chkTakCall.Checked := False;
	chkTakCall.Tag := 0;
	cxbTakInsranceApply.Enabled := True;//-false;
	lb_TakINS_MER_STATUS.Caption := '';
//	dt_CallInsStartDate.Enabled := cxbWKInsranceApply.Enabled;
	dt_TakCallInsStartDate.Text := '';
	Pnl_TakIns.Enabled := True;   //-

	//////////////탁송보험////////////////
	chkTaksong.Checked := False;
	cxlbl4.Visible := True;
	cb_TakInsCorper.ItemIndex := 0;
	edtTakInsNum.Text:= '';
	edtTakInsNum.enabled := False;
	chkTakHwak.Visible := False;
	chkTakHwak.Checked := False;
	chkTakHwak.Hint := '';
	cxdTaktInsStart.Text := '';
	cxdTaktInsEnd.Text := '';

	
	cxedDrvLic.Text := '';
	cxTextEdit1.text := '';
	cxedMemo.Text := '';
	cxmmMemo.Text := '';
	cxdtReg.Text := FormatDateTime('YYYY-MM-DD', Now);
	cxdtEnd.Text := '';
	cxedWkSabun.Text := sWkSabun;
	cxcbAttendArea.Properties.Items.Clear;
	cbbOrderView.ItemIndex := 1;
	cxcbComtype.Properties.Items.Clear;
	cxedFreeCall.Text := '';
	cxiWkImg.WebPicture := Nil;
	cxbModify.Caption := '수정';

	cboBranch.Enabled := False;
	PnlTitle.Caption := '   기사 수정';
	cxbWkHp.Enabled := True;
	bFileUpload := False;
	bModify := False;
	chkOnlyAuto.checked := False;

	fChk := False;
	chkTaksong.checked := False;
	cxlbl4.Caption := '동의안함';
	cxlbl4.Style.font.style := [];
	cxlbl4.Style.font.color := clBlack;
	///탁송보험번호 20170107KHS

	pnl1.Visible := False;
  cxAge.caption := '';
  // 플러스콜 신규 기능 추가. 2010.09.30
  cxtPlusState.Text := '';
  cxtPlusPenalty.text := '';
  cxtPlusScore.Text := '';
  cxtP1.Text := ''; cxtP2.Text := '';cxtP3.Text := '';cxtP4.Text := '';
	btnPlusJoin.Enabled := False;
	btnPlusCalc.Enabled := False;
	btnPlusPView.Enabled := False;
	btnPlusLogView.Enabled := False;
	btnPlusRight.Enabled := False;    // 법인기사로 사용하여 해제함. 2011-11-07
	join_Cnt := 0;
	edt_WkHp.Hint := edt_WkHp.Text;
	cxcbWkHp_JoinCNT.Hint := IntToStr(cxcbWkHp_JoinCNT.ItemIndex);
	cxcbWkHp2.ItemIndex := 0;
	edt_WkHp2.Text := '';
	cxcbWkHp3.ItemIndex := 0;
	edt_WkHp3.Text := '';
	cxcbWkHp4.ItemIndex := 0;
	edt_WkHp4.Text := '';
	FWORKER.NAME.Clear;
	FWORKER.WSABUN.Clear;
	FWORKER.SABUN.Clear;
	FWORKER.SHARPNO.Clear;
	FWORKER.USEHP.Clear;
	FWORKER.USEMC.Clear;
	FWORKER.USESHARE.Clear;
	FWORKER.STATE.Clear;

	glCallInsInfo.InsCD.Clear;
	glCallInsInfo.InsNum.Clear;
	glCallInsInfo.InsS.Clear;
	glCallInsInfo.InsE.Clear;
{	if GS_PRJ_AREA = 'S' then	cxcbWkHp.Enabled := False;
  if GS_PRJ_AREA = 'S' then edt_WkHp.Enabled := False;
	if GS_PRJ_AREA = 'S' then cxcbWkmc.Enabled := False; }
	chkTakHwak.visible := False;
{	if GS_PRJ_AREA = 'O' then
	begin
		chkTakHwak.visible := False;
	end else
	begin
		chkTakHwak.visible := True;
	end;}
	chkTakHwak.Hint := '';
	cxcbWkHp2.Enabled := False;
	edt_WkHp2.Enabled := False;
  cxcbWkmc2.Enabled := False;
	cxcbWkHp3.Enabled := False;
	edt_WkHp3.Enabled := False;
  cxcbWkmc3.Enabled := False;
	cxcbWkHp4.Enabled := False;
	edt_WkHp4.Enabled := False;
  cxcbWkmc4.Enabled := False;

	cxcbWkHp_JoinCNT.Enabled := False;
	cxcbWkShareNo.Enabled := False;
	cxbHpCheck.Enabled := False;
	cxcbWkHp_JoinCNT2.Enabled := False;
	cxcbWkShareNo2.Enabled := False;
	cxbHpCheck2.Enabled := False;
	cxcbWkHp_JoinCNT3.Enabled := False;
	cxcbWkShareNo3.Enabled := False;
	cxbHpCheck3.Enabled := False;
	cxcbWkHp_JoinCNT4.Enabled := False;
	cxcbWkShareNo4.Enabled := False;
	cxbHpCheck4.Enabled := False;
	if GT_USERIF.MultiWorkerCnt < 2 then
		btn_AddHP.Visible := False;

	cxbModify.Enabled := True;

end;

procedure TFrm_WOR01.proc_save_image(sFileName: string);
begin
	if not DirectoryExists(WORKDRIVE) then
    ForceDirectories(WORKDRIVE);

  if FileExists(WORKDRIVE + sFileName + '.JPG') then
    DeleteFile(WORKDRIVE + sFileName + '.JPG');

  cxiWkImg.WebPicture.SaveToFile(WORKDRIVE + sFileName + '.jpg');
end;

procedure TFrm_WOR01.cxbWkHpClick(Sender: TObject);
var
  ls_TxLoad, sNode, rv_str: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  slReceive: TStringList;
  ErrCode: integer;
begin
  ls_rxxml := GTx_UnitXmlLoad('C039.xml');
  xdom := ComsDomDocument.Create;
  try
    if (not xdom.loadXML(ls_rxxml)) then
    begin
      Screen.Cursor := crDefault;
      ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
	  	cxbModify.Enabled := true;
      Exit;
    end;
    sNode := '/cdms/header/UserID';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := 'WOR019';
    sNode := '/cdms/Service/Telecom';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Sabun').Text := cxedWkSabun.Text;
    ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;
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
  finally
    xdom := Nil;
	end;
end;

procedure TFrm_WOR01.cxedMemoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);	
end;

procedure TFrm_WOR01.cxedNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if (key = vk_Return)   then
	begin
		if cxbModify.Caption = '신규저장' then //신규일때
		begin
			edtRealName.Text := cxedName.Text;
		end;
		edtRealName.Setfocus;
	end;
end;

procedure TFrm_WOR01.cxedNameKeyPress(Sender: TObject; var Key: Char);
begin
{	if cxbModify.Caption = '신규저장' then //신규일때
	begin
		edtRealName.Text := cxedName.Text;
	end; }
end;

procedure TFrm_WOR01.cxedNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);	
	if cxbModify.Caption = '신규저장' then //신규일때
	begin
		edtRealName.Text := cxedName.Text;
	end;
	
	if edt_WkHp.Tag = 99 then exit;
	if cxbHpCheck.Enabled then
	begin
		GMessagebox('단말기 사용체크를 하여주십시오.', CDMSE);
//		cxbHpCheck.SetFocus;
		cxbModify.Enabled := true;
		edt_WkHp.Tag := 99;
		Exit;
	end
	else
	if cxbHpCheck2.Enabled then
	begin
		GMessagebox('단말기 사용체크를 하여주십시오.', CDMSE);
//		cxbHpCheck2.SetFocus;
		cxbModify.Enabled := true;
		edt_WkHp.Tag := 99;
		Exit;
	end
	else
	if cxbHpCheck3.Enabled then
	begin
		GMessagebox('단말기 사용체크를 하여주십시오.', CDMSE);
//		cxbHpCheck3.SetFocus;
		cxbModify.Enabled := true;
		edt_WkHp.Tag := 99;
		Exit;
	end
	else
	if cxbHpCheck4.Enabled then
	begin
		GMessagebox('단말기 사용체크를 하여주십시오.', CDMSE);
//		cxbHpCheck4.SetFocus;
		cxbModify.Enabled := true;
		edt_WkHp.Tag := 99;
		Exit;
	end;
end;

procedure TFrm_WOR01.cxedSabunExit(Sender: TObject);
begin
	if cxedSabun.Hint = cxedSabun.Text then
		Exit;
	edtNameSabun.Text := TcxTextEdit(Sender).Text;
	lb_Sabun2.Caption := TcxTextEdit(Sender).Text + 'B';
	lb_Sabun3.Caption := TcxTextEdit(Sender).Text + 'C';
	lb_Sabun4.Caption := TcxTextEdit(Sender).Text + 'D';
	lb_Sabun9.Caption := TcxTextEdit(Sender).Text + 'E';
end;

procedure TFrm_WOR01.btnWKInsranceApplyCloseClick(Sender: TObject);
begin
	cxbWKInsranceApply.Enabled := True;
//	dt_CallInsStartDate.Enabled := cxbWKInsranceApply.Enabled;
	pnlWKInsranceApply.Visible := False;
	cxdCallInsStartDate.Tag := 0;

end;

procedure TFrm_WOR01.btnWKInsranceApplyOKClick(Sender: TObject);
var
	XmlData, ErrMsg : string;
	ErrCode : Integer;
	sParams, sHP, sPhone, sTmp, sCallGubun  : string;

	dt_sysdate : string;
	sNowDate : string;
begin
//기사사번│본사코드│지사코드│사업자등록번호│핸드폰(오더용)│연락처│기사이름(실명)│주민번호│운전면허종류│운전면허번호│이메일│메모
	SetDebugeWrite('TFrm_WOR01.btnWKInsranceApplyOKClick');
	try
		dt_sysdate := frm_main.func_sysdate;  //'20160831170619'
		sNowDate := copy(GetStrToDateTimeGStr(dt_sysdate, 3),1,10);
		if chkInsStartDate.checked then
		begin
			if StrToDate(cxdCallInsStartDate.Text) <= StrToDate(sNowDate) then
			begin
				GMessagebox('보험자동적용일은 현재일 보다 커야 합니다', CDMSE);
				exit;
			end;
		end;
		
		if btnWKInsranceApplyOK.Tag = 0 then sCallGubun := 'n' else
		if btnWKInsranceApplyOK.Tag = 1 then sCallGubun := 'y';//탁송콜당

		sHP := cxcbWkHp.Text + edt_WkHp.Text;
		sHP := StringReplace(sHP, '-', '', [rfReplaceAll]);
		sPhone := cxcbPhone.Text + cxedPhone.Text;
		sPhone := StringReplace(sPhone, '-', '', [rfReplaceAll]);

		if chkInsStartDate.Checked then
			sTmp := FormatDateTime('yyyymmdd', cxdCallInsStartDate.Date)
		else
			sTmp := '';
			
		if Trim(edtRealName.Text) <> '' then
		begin
			sParams := cxedWkSabun.Text + '│' + cxHdNo.Text  + '│' + cxBrNo.Text      + '│'  
							 + sHP              + '│' + sPhone       + '│' + edtRealName.Text + '│' + cxedSoNum.Text+cxedSoNum1.Text + '│' 
							 + StringReplace(cxedDrvLic.Text, '-', '', [rfReplaceAll]) + '│' + sTmp;
		end
		else
		begin
			sParams := cxedWkSabun.Text + '│' + cxHdNo.Text  + '│' + cxBrNo.Text      + '│'  
							 + sHP              + '│' + sPhone       + '│' + cxedName.Text + '│' + cxedSoNum.Text+cxedSoNum1.Text + '│'
							 + StringReplace(cxedDrvLic.Text, '-', '', [rfReplaceAll]) + '│' + sTmp;
		end;
		sParams := sParams + '│' + sCallGubun; //일반콜당, 탁송콜당 구분값 추가

		if not RequestBase(GetCallable06('SET_INSERT_INS_CALL', 'INS.SET_INSERT_INS_CALL', sParams), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('콜당보험 신청 시 오류가 발생하였습니다.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			if (ErrCode = 2002) or (ErrCode = 2003) or (ErrCode = 2001) then
			else
			begin
				btnWKInsranceApplyOK.Enabled := True;
				btnWKInsranceApplyClose.Click;
			end;
			pnlWKInsranceApply.Visible := False;
			cxbWKInsranceApply.Enabled := True;
//			dt_CallInsStartDate.Enabled := cxbWKInsranceApply.Enabled;
		end;
		if sCallGubun = 'n' then //일반콜당
			lb_WKINS_MER_STATUS.Caption := '가입요청'
		else if sCallGubun = 'y' then  //탁송콜당
			lb_TakINS_MER_STATUS.Caption := '가입요청';
		pnlWKInsranceApply.Visible := False;
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_WOR01.btnWorkerAddrClick(Sender: TObject);
begin
  if ( not Assigned(Frm_CMP011) ) Or ( Frm_CMP011 = Nil ) then Frm_CMP011 := TFrm_CMP011.Create(Self);
  Frm_CMP011.SetEdit(TEdit(edtWorkerZipCode), TEdit(exedAddr1), TEdit(exedAddr2));
  Frm_CMP011.ShowModal;
end;

procedure TFrm_WOR01.btn_AddHPClick(Sender: TObject);
begin
	if cxbBrNum.Enabled = True then
	begin
		ShowMessage('사번체크를 하십시오');
		exit;
	end;
	
	if cxbHpCheck.Enabled then
	begin
		GMessagebox('단말기 사용체크를 하여주십시오.', CDMSE);
		cxbHpCheck.SetFocus;
		cxbModify.Enabled := true;
		Exit;
	end	else
	if cxbHpCheck2.Enabled then
	begin
		GMessagebox('단말기 사용체크를 하여주십시오.', CDMSE);
		cxbHpCheck2.SetFocus;
		cxbModify.Enabled := true;
		Exit;
	end	else
	if cxbHpCheck3.Enabled then
	begin
		GMessagebox('단말기 사용체크를 하여주십시오.', CDMSE);
		cxbHpCheck3.SetFocus;
		cxbModify.Enabled := true;
		Exit;
	end	else
	if cxbHpCheck4.Enabled then
	begin
		GMessagebox('단말기 사용체크를 하여주십시오.', CDMSE);
		cxbHpCheck4.SetFocus;
		cxbModify.Enabled := true;
		Exit;
	end;

//	pnl_HPCheck.Height := pnl_HPCheck.Height + 22;
	Self.Height := Self.Height + 25;
	if pnl_HPCheck.Height >= 86 then btn_AddHP.Enabled := False;
	iUse_Add_Cnt := iUse_Add_Cnt + 1;
	if GT_USERIF.MultiWorkerCnt  <= iUse_Add_Cnt + gUse_Cnt then btn_AddHP.Enabled := False;
	if gUse_Cnt = 1 then
	begin
		if iUse_Add_Cnt = 1 then
		begin
			cxcbWkHp_JoinCNT2.Enabled := False;
			cxcbWkHp_JoinCNT2.ItemIndex := 1;
			cxcbWkShareNo2.Enabled := False;
			cxcbWkShareNo2.ItemIndex := iShareGroupIDX;
			cxbHpCheck2.Enabled := False;

			btn_DelHP2.Caption := '제거';
			btn_DelHP2.Enabled := True;
			btn_DelHP2.Tag := 0;

			lb_S2.Visible := True;
			lb_Sabun2.Visible := True;
			lb_Sabun2.Caption := Trim(cxedSabun.Text) + 'B' ;//FWORKER.SABUN[0] + 'B';
			cxcbWkHp2.Visible := False;
			edt_WkHp2.Visible := False;
		end else
    if iUse_Add_Cnt = 2 then
		begin
			cxcbWkHp_JoinCNT3.Enabled := False;
			cxcbWkHp_JoinCNT3.ItemIndex := 2;
			cxcbWkShareNo3.Enabled := False;
			cxcbWkShareNo3.ItemIndex := iShareGroupIDX;
			cxbHpCheck3.Enabled := False;

			btn_DelHP2.Caption := '제거';
			btn_DelHP2.Enabled := True;
			btn_DelHP2.Tag := 0;

			lb_S3.Visible := True;
			lb_Sabun3.Visible := True;
			lb_Sabun3.Caption := Trim(cxedSabun.Text) + 'C' ;//FWORKER.SABUN[0] + 'C';
			cxcbWkHp3.Visible := False;
			edt_WkHp3.Visible := False;
		end else
    if iUse_Add_Cnt = 3 then
		begin
			cxcbWkHp_JoinCNT4.Enabled := False;
			cxcbWkHp_JoinCNT4.ItemIndex := 3;
			cxcbWkShareNo4.Enabled := False;
			cxcbWkShareNo4.ItemIndex := iShareGroupIDX;
			cxbHpCheck4.Enabled := False;

			btn_DelHP3.Caption := '제거';
			btn_DelHP3.Enabled := True;
			btn_DelHP3.Tag := 0;

			lb_S4.Visible := True;
			lb_Sabun4.Visible := True;
			lb_Sabun4.Caption := Trim(cxedSabun.Text) + 'D' ;//FWORKER.SABUN[0] + 'C';
			cxcbWkHp4.Visible := False;
			edt_WkHp4.Visible := False;
		end;
	end	else
	if gUse_Cnt = 2 then
	begin
		if iUse_Add_Cnt = 1 then
		begin
  		cxcbWkHp_JoinCNT3.Enabled := False;
  		cxcbWkHp_JoinCNT3.ItemIndex := 2;
			cxcbWkShareNo3.Enabled := False;
  		cxcbWkShareNo3.ItemIndex := iShareGroupIDX;
  		cxbHpCheck3.Enabled := False;

  		btn_DelHP3.Caption := '제거';
  		btn_DelHP3.Enabled := True;
  		btn_DelHP3.Tag := 0;

  		btn_AddHP.Enabled := False;
  		lb_S3.Visible := True;
  		lb_Sabun3.Visible := True;
			lb_Sabun3.Caption := Trim(cxedSabun.Text) + 'C' ;//FWORKER.SABUN[0] + 'C';
  		cxcbWkHp3.Visible := False;
  		edt_WkHp3.Visible := False;
    end else
    if iUse_Add_Cnt = 2 then
		begin
			cxcbWkHp_JoinCNT4.Enabled := False;
			cxcbWkHp_JoinCNT4.ItemIndex := 3;
			cxcbWkShareNo4.Enabled := False;
			cxcbWkShareNo4.ItemIndex := iShareGroupIDX;
			cxbHpCheck4.Enabled := False;

			btn_DelHP3.Caption := '제거';
			btn_DelHP3.Enabled := True;
			btn_DelHP3.Tag := 0;

			lb_S4.Visible := True;
			lb_Sabun4.Visible := True;
			lb_Sabun4.Caption := Trim(cxedSabun.Text) + 'D' ;//FWORKER.SABUN[0] + 'C';
			cxcbWkHp4.Visible := False;
			edt_WkHp4.Visible := False;
		end;
	end	else
	if gUse_Cnt = 3 then
	begin
		cxcbWkHp_JoinCNT4.Enabled := False;
		cxcbWkHp_JoinCNT4.ItemIndex := 3;
		cxcbWkShareNo4.Enabled := False;
		cxcbWkShareNo4.ItemIndex := iShareGroupIDX;
		cxbHpCheck4.Enabled := False;

		btn_DelHP3.Caption := '제거';
		btn_DelHP3.Enabled := True;
		btn_DelHP3.Tag := 0;

		lb_S4.Visible := True;
		lb_Sabun4.Visible := True;
		lb_Sabun4.Caption := Trim(cxedSabun.Text) + 'D' ;//FWORKER.SABUN[0] + 'C';
		cxcbWkHp4.Visible := False;
		edt_WkHp4.Visible := False;
	end;
end;

procedure TFrm_WOR01.btn_DelHP2Click(Sender: TObject);
begin
	if btn_DelHP2.Tag = 0 then //추가된것 삭제
	begin
		cxcbWkHp_JoinCNT2.Enabled := False;
		cxcbWkHp_JoinCNT2.ItemIndex := 1;
		cxcbWkShareNo2.Enabled := False;
		cxcbWkShareNo2.ItemIndex := iShareGroupIDX;
		cxbHpCheck2.Enabled := False;
		iUse_Add_Cnt := 0;
		btn_AddHP.Enabled := True;
		btn_DelHP2.Enabled := False;
	end else
  if btn_DelHP2.Tag = 1 then //퇴직처리
	begin
		if gUse_Cnt >= 3 then
		begin
			ShowMessage('#3을 먼저 퇴직처리 하십시오.');
			exit;
		end;
		Try
			if Application.MessageBox(PChar('#2기사를 퇴직처리 하시겠습니까?'), '', MB_YESNO + MB_ICONINFORMATION) = IDYES then
			begin
				try
					proc_SelectSettlement(FWORKER.WSABUN[1]);
				finally
					gUse_Cnt := gUse_Cnt -1;
					cxcbWkHp2.visible := False;
					edt_WkHp2.visible := False;
          cxcbWkmc2.Enabled := False;
					FWORKER.WSABUN.Delete(1);
					FWORKER.SABUN.Delete(1);
					FWORKER.NAME.Delete(1);
					FWORKER.USESHARE.Delete(1);
					FWORKER.SHARPNO.Delete(1);
					FWORKER.USEHP.Delete(1);
					FWORKER.USEMC.Delete(1);
					FWORKER.STATE.Delete(1);

					if iFlag = 2 then
					begin
						ShowMessage('수정대상의 퇴직처리로 현재 수정창은 자동으로 닫힙니다.');
						BtnClose.Click;
					end;
				end
			end
			else exit;
		except
			ShowMessage('#2 퇴직오류.');
		end;
	end;
//	pnl_HPCheck.Height := pnl_HPCheck.Height - 22;
	self.Height := self.Height - 25;
	if pnl_HPCheck.Height < 86 then btn_AddHP.Enabled := True;
end;

procedure TFrm_WOR01.btn_DelHP3Click(Sender: TObject);
begin
	if btn_DelHP3.Tag = 0 then //추가된것
	begin
		cxcbWkHp_JoinCNT3.Enabled := False;
		cxcbWkHp_JoinCNT3.ItemIndex := 2;
		cxcbWkShareNo3.Enabled := False;
		cxcbWkShareNo3.ItemIndex := iShareGroupIDX;
		cxbHpCheck3.Enabled := True;
		iUse_Add_Cnt := 0;
		btn_AddHP.Enabled := True;
		btn_DelHP3.Enabled := False;
	end else
  if btn_DelHP3.Tag = 1 then //퇴직처리할것
	begin
		if gUse_Cnt = 4 then
		begin
			ShowMessage('#4을 먼저 퇴직처리 하십시오.');
			exit;
		end;
		//퇴직전문 처리
		Try
			if Application.MessageBox(PChar('#3기사를 퇴직처리 하시겠습니까?'), '', MB_YESNO + MB_ICONINFORMATION) = IDYES then
			begin
				try
					proc_SelectSettlement(FWORKER.WSABUN[2]);
				finally
					gUse_Cnt := gUse_Cnt -1;
					cxcbWkHp3.visible := False;
					edt_WkHp3.visible := False;
          cxcbWkmc3.Enabled := False;
					FWORKER.WSABUN.Delete(2);
					FWORKER.SABUN.Delete(2);
					FWORKER.NAME.Delete(2);
					FWORKER.USESHARE.Delete(2);
					FWORKER.SHARPNO.Delete(2);
					FWORKER.USEHP.Delete(2);
					FWORKER.USEMC.Delete(2);
					FWORKER.STATE.Delete(2);

					if iFlag = 3 then
					begin
						ShowMessage('수정대상의 퇴직처리로 현재 수정창은 자동으로 닫힙니다.');
						BtnClose.Click;
					end;
				end;
			end
			else exit;
		except
			ShowMessage('#3 퇴직오류.');
		end;
	end;

//	pnl_HPCheck.Height := pnl_HPCheck.Height - 22;
	self.Height := self.Height - 25;
	if pnl_HPCheck.Height < 86 then btn_AddHP.Enabled := True;
end;

procedure TFrm_WOR01.btn_DelHP4Click(Sender: TObject);
begin
	if btn_DelHP4.Tag = 0 then //추가된것
	begin
		cxcbWkHp_JoinCNT4.Enabled := False;
		cxcbWkHp_JoinCNT4.ItemIndex := 2;
		cxcbWkShareNo4.Enabled := False;
		cxcbWkShareNo4.ItemIndex := iShareGroupIDX;
		cxbHpCheck4.Enabled := True;
		iUse_Add_Cnt := 0;
		btn_AddHP.Enabled := True;
		btn_DelHP4.Enabled := False;
	end else
  if btn_DelHP4.Tag = 1 then //퇴직처리할것
	begin
		//퇴직전문 처리
		Try
			if Application.MessageBox(PChar('#4기사를 퇴직처리 하시겠습니까?'), '', MB_YESNO + MB_ICONINFORMATION) = IDYES then
			begin
				try
					proc_SelectSettlement(FWORKER.WSABUN[3]);
				finally
					gUse_Cnt := gUse_Cnt -1;
					cxcbWkHp4.visible := False;
					edt_WkHp4.visible := False;
          cxcbWkmc4.Enabled := False;
					FWORKER.WSABUN.Delete(3);
					FWORKER.SABUN.Delete(3);
					FWORKER.NAME.Delete(3);
					FWORKER.USESHARE.Delete(3);
					FWORKER.SHARPNO.Delete(3);
					FWORKER.USEHP.Delete(3);
					FWORKER.USEMC.Delete(3);
					FWORKER.STATE.Delete(3);

					if iFlag = 3 then
					begin
						ShowMessage('수정대상의 퇴직처리로 현재 수정창은 자동으로 닫힙니다.');
						BtnClose.Click;
					end;
				end;
			end
			else Exit;
		except
			ShowMessage('#4 퇴직오류.');
		end;
	end;

//	pnl_HPCheck.Height := pnl_HPCheck.Height - 22;
	self.Height := self.Height - 25;
	if pnl_HPCheck.Height < 86 then btn_AddHP.Enabled := True;
end;

procedure TFrm_WOR01.btn_LicenseCloseClick(Sender: TObject);
begin
	pnl_LicenseView.Visible := False;
end;

procedure TFrm_WOR01.GetLicenseSysCode; //먼허 종류
var
  ls_TxQry, ls_TxLoad, rv_str, sQueryTemp : string;
  slReceive: TStringList;
  ErrCode: Integer;
begin
  try
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_COMMON_CODE, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, ['LS']);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WOR0090', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          Application.ProcessMessages;
          proc_recieve(rv_str);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except
  end;
end;

procedure TFrm_WOR01.grpWKInsranceApplyMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(pnlWKInsranceApply.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WOR01.lbSearchBranch1Click(Sender: TObject);
begin
	edt_BrNm.SetFocus;
end;

procedure TFrm_WOR01.lb_Event_202010Click(Sender: TObject);
var sTmp : string;
	bCheck : Boolean;
begin
	Try
    //고용보험료 차감 예외 기사처리 20211229 KHS 신성현팀장요청
    if cxedSoNum.Text + cxedSoNum1.Text = '1111111111111' then exit;
    
		sTmp := StringReplace(cxedSoNum.Text + cxedSoNum1.Text, '-', '', [rfReplaceAll]);        //지금 주민번호 입력된 내용
		if (Length(sTmp) = 13) then
		begin
			if func_SoNumCheck(sTmp) then
			begin
				proc_EVENT_TARGET_CHECK(cxedSoNum.Text + cxedSoNum1.Text);
			end else
			begin
				GMessagebox('주민등록번호를 잘못 입력하였습니다.' + #13#10 + '주민등록번호를 다시한번 확인하여 주십시오', CDMSE);
				cxedSoNum.SetFocus;
				Exit;
			end;
		end else
		begin
			if cxedSoNum.Text = '' then
			begin
				GMessagebox('주민등록번호 > 생년월일(6자리)을 입력하여 주십시오.', CDMSE);
				cxedSoNum.SetFocus;
				Exit;
			end;
			if Length(cxedSoNum.Text) < 6 then
			begin
				GMessagebox('주민등록번호 > 생년월일을 정확히 입력하여 주십시오.', CDMSE);
				cxedSoNum.SetFocus;
				Exit;
			end;
			if cxedSoNum1.Text = '' then
			begin
				GMessagebox('주민등록번호 > 생년월일외 뒷 7자리를 입력하여 주십시오.', CDMSE);
				cxedSoNum1.SetFocus;
				Exit;
			end;
			if Length(cxedSoNum1.Text) < 7 then
			begin
				GMessagebox('주민등록번호 > 생년월일외 뒷 7자리를 정확히 입력하여 주십시오.', CDMSE);
				cxedSoNum1.SetFocus;
				Exit;
			end;
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_WOR01.lst_BRList1DblClick(Sender: TObject);
begin
	SetDebugeWrite('TFrm_WOR01.lst_BRListDblClick');
	cboBranch.ItemIndex := StrToIntDef(searchBRlist[lst_BRList1.ItemIndex], 0);
	lst_BRList1.Visible := False;
end;

procedure TFrm_WOR01.lst_BRList1Exit(Sender: TObject);
begin
	SetDebugeWrite('TFrm_ACC.lst_BRListExit');
	lst_BRList1.Visible := False;
end;

procedure TFrm_WOR01.lst_BRList1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	SetDebugeWrite('TFrm_WOR01.lst_BRListKeyDown');
	if key = vk_Return then
	begin
		if lst_BRList1.ItemIndex < 0 then exit;
		cboBranch.ItemIndex := StrToIntDef(searchBRlist[lst_BRList1.ItemIndex], 0);
		lst_BRList1.Visible := False;
	end else
	if Key = VK_UP then
	begin
		if lst_BRlist1.Selected[0] then edt_BrNm.SetFocus;
	end;
end;

procedure TFrm_WOR01.BtnCloseClick(Sender: TObject);
Var sMsg : String;
begin
	if GS_NICE_CHK then
  begin
		sMsg := '본인인증 후 수정/저장 없이 종료하시겠습니까?';
    if Application.MessageBox(PChar(sMsg), '', MB_YESNO + MB_ICONINFORMATION) = IDNO then Exit;
  end;

  timer1.Enabled := False;
	cboBranch.Tag := 99;
	cboBranch.ItemIndex := -2;
	cboBranch.Tag := 0;
	gWOR19Mode := ''; //종료시 MCash 조회 제외위해 추가 20190825 KHS
	proc_Init;
	Hide;   
end;

procedure TFrm_WOR01.btnLicCheckClick(Sender: TObject);
var
	AreaCode : Integer;
  ALicNum1, ALicNum2, Ssn, ErrStr: string;
  ls_Url, AYear, UrlEncode_ID  : string;
  iParams, Base64_ID : AnsiString;
begin
  //고용보험료 차감 예외 기사처리 20211229 KHS 신성현팀장요청
  if cxedSoNum.Text + cxedSoNum1.Text = '1111111111111' then exit;

  // 실명확인
  if edtRealName.Text = '' then
  begin
    GMessagebox('기사 실명을 입력해 주세요.', CDMSE);
    edtRealName.SetFocus;
    cxbModify.Enabled := True;
    Exit;
  end;

{  if cxbSoNumCheck.Enabled then
  begin
    cxbSoNumCheck.Tag := 99;
    cxbSoNumCheck.Click;
  end else
  begin

  end;}

{  if cxbSoNumCheck.enabled=true then
  begin
    GMessagebox('본인인증이 완료되지않아 운전면허인증이 불가합니다',cdmse);
    cxbModify.Enabled := True;
    exit;
  end;}

  // 운전면허확인
	if not CheckDriverLicense(cxedDrvLic.Text, AreaCode, AYear, ALicNum1, ALicNum2, ErrStr) then
  begin
		GMessagebox('운전면허정보를 정확히 입력해주세요.', CDMSE);
		cxbModify.Enabled := True;
		Exit;
	end;
//	Ssn := RemoveAll(cxedSoNum.Text + cxedSoNum1.Text, '-');
	Ssn := cxedSoNum.Text;

//////////////////////////////////운전면허 검증변경 2012.1.2 khs///////////////////////////////////////////
  iParams := edtRealName.Text + ',' + Ssn + ',' + IntToStr(AreaCode) + AYear + ALicNum1 + ALicNum2;

	base64Encode(iParams, Base64_ID);
	UrlEncode_ID := UrlEncode(Base64_ID);   //UrlEncode 2011.12.06 KHS

//	ls_Url := 'http://cas.callmaner.com:8080/oel/driverUrlCheckServelt.do?version=1&params=' + UrlEncode_ID;
	//URL 변경 20190517 KHS
	ls_Url := 'https://api.cd1.kr:8443/driver_license_check_v3/checkDriverLicense?apikey=Qz4T5SpSWfWkxCak3M7C64v6P&data=' + UrlEncode_ID;

	wb1.Navigate(ls_Url);
	Timer1.Enabled := True;
//////////////////////////////////운전면허 검증변경 2012.1.2 khs///////////////////////////////////////////

//  FLicStCd := IntToStr(Integer(dm.LicenseCertificate(edtRealName.Text, Ssn, AreaCode, AYear, ALicNum1, ALicNum2)));
//  edtLicSt.Text := FLicenseCode.Values[FLicStCd];
end;

procedure TFrm_WOR01.btnLicViewClick(Sender: TObject);
begin
	if pnl_LicenseView.Visible then
		pnl_LicenseView.Visible := False
	else
	begin
		pnl_LicenseView.Top := 209;
		pnl_LicenseView.Left := 17;
		pnl_LicenseView.Visible := True;
		cxiWkLicenseImg.WebPicture.LoadFromURL(proc_HttpGetWorkImageURL(Trim(cxedWkSabun.Text), 'License'));
	end;
end;


procedure TFrm_WOR01.edtNameSabunKeyPress(Sender: TObject; var Key: Char);
begin
  if key in ['a'..'z', 'A'..'Z', '0'..'9', #13, #8] then
  else
    key := #0;
end;

//본사명 검색
procedure TFrm_WOR01.RequestDataHeadInfo(AHdNo: string);
var
  ls_TxQry, ls_TxLoad, sQueryTemp: string;
begin
  try
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_HEAD_NAME, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [AHdNo]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'HDNM0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_WOR01.RequestData(AData: string);
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
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_WOR01.ResponseDataBase(ADataStr: WideString);
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
        if ClientKey = 'HDNM0001' then
          ResponseDataHeadInfo(XmlData);
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

procedure TFrm_WOR01.ResponseDataHeadInfo(AXmlStr: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I: Integer;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then
      Exit;

    if (0 < GetXmlRecordCount(AXmlStr)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

      for I := 0 to lst_Result.length - 1 do
      begin
        Gs_HdNm := '';
        Gs_HdNm := lst_Result.item[i].attributes.getNamedItem('Value').Text;
      end;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_WOR01.Shape50ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

end;

// 법인기사 관련 정보 조회. (플러스기사 --> 법인기사 전환 2011-11-08)
procedure TFrm_WOR01.RequestSendCommand(AGubun, AParams : string);
var
  XmlData, ErrMsg, Tmp: string;
  ErrCode, ist : Integer;
  lss : TStringList;
begin
  lss := TStringList.Create;
  try
    if AGubun = 'PLUS_UPD' then
    begin
      if not RequestBase(GetCallable05('PLUSWORKER_UPD', 'WORKER.PLUS_WK_UPDATE', AParams), XmlData, ErrCode, ErrMsg) then
      begin
        GMessagebox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
        Exit;
      end;
      ist := Pos('<Result Value="', XmlData);
      Tmp := copy(XmlData, ist + 15, Length(XmlData));
      ist := Pos('"', Tmp);
      Tmp := Copy(Tmp, 1, ist-1);
      if RightStr(AParams, 1) = '2' then
			begin
        cxtPlusState.Text := '정상';
        GMessageBox(ErrMsg, CDMSE);
        btnPlusJoin.Caption  := '법인기사탈퇴';
        btnPlusCalc.Enabled := True;
        btnPlusLogView.Enabled := True;
        btnPlusPView.Enabled := True;
        cxtP1.Text := '가입 : ' + Tmp;
        cxtP4.Text := '탈퇴 : -';
      end else
      begin
        cxtPlusState.Text := '법인기사탈퇴';     // 탈퇴코드 : 9
        GMessageBox(ErrMsg, CDMSE);
        btnPlusJoin.Caption  := '법인기사가입';
        btnPlusJoin.Enabled := False;
        btnPlusCalc.Enabled := False;
        btnPlusLogView.Enabled := False;
        btnPlusRight.Enabled := True;       // 자격확인 활성화
        btnPlusPView.Enabled := True;
        cxtP4.Text := '탈퇴 : ' + Tmp;
      end;
    end	else
    if AGubun = 'PLUS_CALC' then
    begin
      if not RequestBase(GetCallable05('PLUSWORKER_CALC', 'WORKER.RELIEF_PUNISH', AParams), XmlData, ErrCode, ErrMsg) then
      begin
        GMessagebox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
        Exit;
      end;
      ist := Pos('<Result Value="', XmlData);
      Tmp := copy(XmlData, ist + 15, Length(XmlData));
      ist := Pos('"', Tmp);
      Tmp := Copy(Tmp, 1, ist-1);
      if Length(Tmp) > 1 then begin
        GMessageBox(ErrMsg , CDMSE);
        GetTextSeperationEx('│', Tmp, lss);
        cxtPlusPenalty.Text := lss[0];
        cxtPlusScore.Text   := lss[1];
      end;
    end	else
    if AGubun = 'PLUS_REQ' then
    begin
      if not RequestBase(GetCallable05('PLUSWORKER_REQ', 'WORKER.POSSIBLE_PLUS_WORKER', AParams), XmlData, ErrCode, ErrMsg) then
      begin
        GMessagebox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
        cxtPlusState.Text := '자격미달';
        btnPlusJoin.Enabled  := False;
        btnPlusJoin.Caption  := '법인기사가입';
        Exit;
      end;

      cxtPlusState.Text := '가입가능';
      //GMessageBox(ErrMsg , CDMSE);
      btnPlusJoin.Enabled  := True;
      btnPlusJoin.Caption  := '법인기사가입';
      btnPlusRight.Enabled := False;
      btnPlusCalc.Enabled  := False;
      btnPlusPView.Enabled := False;
    end;
  finally
    FreeAndNil(lss);
  end;  
end;

// 플러스 기사 가입.
procedure TFrm_WOR01.btnPlusJoinClick(Sender: TObject);
begin
  if btnPlusJoin.Caption = '법인기사가입' then begin
		RequestSendCommand('PLUS_UPD', cxedWkSabun.Text + '│' + '2');   // 가입
  end else begin
		RequestSendCommand('PLUS_UPD', cxedWkSabun.Text + '│' + '4');   // 탈퇴
  end;
end;

// 플러스점수보상[구제받기]
procedure TFrm_WOR01.btnPlusCalcClick(Sender: TObject);
begin
	RequestSendCommand('PLUS_CALC', cxedWkSabun.Text);
end;

// 플러스 기사 자격을 확인.
procedure TFrm_WOR01.btnPlusRightClick(Sender: TObject);
begin
	RequestSendCommand('PLUS_REQ', cxedWkSabun.Text);
end;

procedure TFrm_WOR01.btnPnlViewCloseClick(Sender: TObject);
begin
  APnlViewMemo.Visible := False;
end;

procedure TFrm_WOR01.btnStateListClick(Sender: TObject);
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, i, j, iRow : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
begin
	SetDebugeWrite('TFrm_WOR01.btnStateListClick');

	try
    // 본사코드│지사코드│검색구분│검색키워드(기사사번)│시작일(yyyymmddhh24miss)│종료일(yyyymmddhh24miss)
		Param := Trim(cxHdNo.Text) + '│' + Trim(cxBrNo.Text) + '│0│' + Trim(cxedWkSabun.Text) + '││';

		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel06('GET_LIST_WK_STATUS_LOG', 'MNG_WK.GET_LIST_WK_STATUS_LOG', '100', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('기사 상태변경 리스트조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				Screen.Cursor := crDefault;
				Exit;
			end;

      cxgStateList.DataController.SetRecordCount(0);
			for j := 0 to slList.Count - 1 do
			begin
				Application.ProcessMessages;
				xmlData := slList.Strings[j];

				xdom := ComsDomDocument.Create;
				try
					if not xdom.loadXML(XmlData) then Exit;

          cxgStateList.BeginUpdate;
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
									GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
									Application.ProcessMessages;

                  iRow := cxgStateList.DataController.AppendRecord;
                  cxgStateList.DataController.Values[iRow, 0] := ls_Rcrd[4];   // 변경일자
                  cxgStateList.DataController.Values[iRow, 1] := ls_Rcrd[5];   // 변경내역
                  cxgStateList.DataController.Values[iRow, 2] := ls_Rcrd[6];   // 변경ID
								end;
							finally
								ls_Rcrd.Free;
							end;
						end;
					end;
				finally
          cxgStateList.EndUpdate;
					xdom := Nil;
					Screen.Cursor := crDefault;
				end;
			end;
		finally
			Frm_Flash.Hide;
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
		end;
	except
    on E: Exception do
    begin
      Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_WOR01.BtnViewMemoClick(Sender: TObject);
begin
  if APnlViewMemo.Visible then APnlViewMemo.Visible := False
  else
  begin
		cxMemo1.Text := cxmmMemo.Text;

    ApnlViewMemo.Top  := cxGroupBox1.Top;
    ApnlViewMemo.Left := cxGroupBox1.Left;
    ApnlViewMemo.Width := cxGroupBox1.Width;
    ApnlViewMemo.Height := cxGroupBox1.Height;
    APnlViewMemo.Visible := True;
  end;
end;

procedure TFrm_WOR01.btnPlusLogViewClick(Sender: TObject);
begin
  if Not Assigned(Frm_WOR13) Or (Frm_WOR13 = Nil) then Frm_WOR13 := TFrm_WOR13.Create(Nil);
  Frm_WOR13.SetData_Param(cxedWkSabun.Text);
  Frm_WOR13.Show;
end;

procedure TFrm_WOR01.btnPlusPViewClick(Sender: TObject);
begin
  if Not Assigned(Frm_JON33) Or (Frm_JON33 = Nil) then Frm_JON33 := TFrm_JON33.Create(Nil);
  Frm_JON33.Show;
end;

procedure TFrm_WOR01.FormShow(Sender: TObject);
Var i : Integer;
begin
  fSetFont(Frm_WOR01, GS_FONTNAME);

	Self.Left := igW01Left;
  Self.Top  := igW01Top;

	SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);

		// 2010.12.29 지방권에서 기사오더보기 입력불가추가
	if GS_PRJ_AREA = 'O' then cbbOrderView.enabled := False
                       else cbbOrderView.enabled := True;
	iUse_Chk := 0;
//	gUse_Cnt := 0; 기사조회 전으로 위치 변경
	iUse_Add_Cnt := 0;
	iChk_Sabun := 0;

//  GT_USERIF.MultiWorkerCnt := 4;

	if GT_USERIF.MultiWorkerCnt > 0 then
  begin
    cxcbWkHp_JoinCNT.Properties.BeginUpdate;
    cxcbWkHp_JoinCNT.Properties.Items.Clear;
    for i := 1 to GT_USERIF.MultiWorkerCnt do
			cxcbWkHp_JoinCNT.Properties.Items.Add(Format('#%d', [i]));
		cxcbWkHp_JoinCNT.Properties.EndUpdate;
		cxcbWkHp_JoinCNT.Visible := True;

		cxcbWkHp_JoinCNT2.Properties.BeginUpdate;
		cxcbWkHp_JoinCNT2.Properties.Items.Clear;
		for i := 1 to GT_USERIF.MultiWorkerCnt do
			cxcbWkHp_JoinCNT2.Properties.Items.Add(Format('#%d', [i]));
		cxcbWkHp_JoinCNT2.Properties.EndUpdate;
		cxcbWkHp_JoinCNT2.Visible := True;

		cxcbWkHp_JoinCNT3.Properties.BeginUpdate;
		cxcbWkHp_JoinCNT3.Properties.Items.Clear;
    for i := 1 to GT_USERIF.MultiWorkerCnt do
			cxcbWkHp_JoinCNT3.Properties.Items.Add(Format('#%d', [i]));
		cxcbWkHp_JoinCNT3.Properties.EndUpdate;
		cxcbWkHp_JoinCNT3.Visible := True;

		cxcbWkHp_JoinCNT4.Properties.BeginUpdate;
		cxcbWkHp_JoinCNT4.Properties.Items.Clear;
    for i := 1 to GT_USERIF.MultiWorkerCnt do
			cxcbWkHp_JoinCNT4.Properties.Items.Add(Format('#%d', [i]));
		cxcbWkHp_JoinCNT4.Properties.EndUpdate;
		cxcbWkHp_JoinCNT4.Visible := True;

		if Cheonan_ShareGroup(GS_PRJ_AREA, GT_USERIF.ShareNo) then  
			cxcbWkShareNo.Visible := True
		else cxcbWkShareNo.Visible := False;

		cxbHpCheck.Left := 198 ;//366;
	end else
  begin
		cxcbWkHp_JoinCNT.Visible := False;
		cxcbWkShareNo.Visible := False;
		cxcbWkHp_JoinCNT2.Visible := False;
		cxcbWkShareNo2.Visible := False;
		cxcbWkHp_JoinCNT3.Visible := False;
		cxcbWkShareNo3.Visible := False;
		cxcbWkHp_JoinCNT4.Visible := False;
		cxcbWkShareNo4.Visible := False;
		if cboBranch.itemindex > -1 then
			if ( FShuttel4[cboBranch.itemindex] = 'y' ) Or
         ( GB_365System ) Or ( GB_CallLine ) Or
         ( IsHBShare(GS_PRJ_AREA = 'O', GT_USERIF.ShareNo) ) then cxbHpCheck.Left := 198
                                                             else cxbHpCheck.Left := 163;//258;
	end;
end;

procedure TFrm_WOR01.edtRealNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if GS_PRJ_AREA = 'S' then
	begin
		if cxbModify.Caption = '신규저장' then
			cxbSoNumCheck.Enabled := True;
	end
	else
		cxbSoNumCheck.Enabled := True;
end;

procedure TFrm_WOR01.Timer1Timer(Sender: TObject);
var  MyDocument: OleVariant;
  aTest : WideString;
begin
  try
    MyDocument := wb1.Document;
    aTest := MyDocument.Body.InnerText;
    if Copy(aTest, 1, 2) = 'OK' then
    begin
      cxLblLicSt.Caption := '정상';
      cxLblLicSt.Style.TextColor := clBlue;
      FLicStCd := '10';
      Timer1.Enabled := False;
    end else
    if Copy(aTest, 1, 2) = 'NG' then
    begin
      cxLblLicSt.Caption := '면허이상';
      cxLblLicSt.Style.TextColor := clRed;
      FLicStCd := '20';
      Timer1.Enabled := False;
    end else
    begin
      cxLblLicSt.Caption := '미확인';
      cxLblLicSt.Style.TextColor := clBlack;
      FLicStCd := '00';
    end;
  except

  end;
end;

procedure TFrm_WOR01.chkInsStartDateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then cxdCallInsStartDate.SetFocus;
end;

procedure TFrm_WOR01.chkInsStartDatePropertiesChange(Sender: TObject);
var	dt_sysdate, sNowDate : string;
begin
	if chkInsStartDate.Checked then 
		cxdCallInsStartDate.Enabled := True
	else
	if not chkInsStartDate.Checked then
	begin 
		cxdCallInsStartDate.Enabled := False;

		dt_sysdate := frm_main.func_sysdate;  //'20160831170619'
		sNowDate := copy(GetStrToDateTimeGStr(dt_sysdate, 3),1,10);
		if (StrToInt(copy(dt_sysdate, 9, 4)) > 1500) then
			cxdCallInsStartDate.date := StrToDate(sNowDate) + 2
		else
			cxdCallInsStartDate.date := StrToDate(sNowDate) + 1;
	end;
end;

procedure TFrm_WOR01.chkKidiDrivePropertiesChange(Sender: TObject);
var iTmp, i, iRow : integer;
	bTmp : Boolean;
	sTmp : string;
begin
	if chkKidiDrive.Tag = 99 then exit;
	if not chkKidiDrive.Checked then
	begin
		if (not chkDrive.Checked) and (not chkCallDrive.Checked) then
		begin
			sTmp := '체크 해제하시면'+#13#10+'기사는, 내정보 및 계좌정보를 볼수 없습니다.'+#13#10+#13#10+'해제하시겠습니까?';
			if Application.MessageBox(PChar(sTmp), CDMSE, MB_YESNO +
				MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then
			begin
				chkKidiDrive.Tag := 99;
				chkKidiDrive.Checked := True;
				chkKidiDrive.Tag := 0;
				Exit;
			end;
			bTmp := False;
			btn_InSureCopyTak.Enabled := bTmp;
			cxcbInsCorper.Enabled := bTmp;
			cxedInsNum.Enabled := bTmp;
			cxdtInsStart.Enabled := bTmp;
			cxdtInsEnd.Enabled := bTmp;
			cxedInsNum.Text := '';
			cxdtInsStart.Text := '';
			cxdtInsEnd.Text := '';
		end;

		cxcbInsCorper.ItemIndex := 0;
	end else
	begin
		bTmp := False;
		btn_InSureCopyTak.Enabled := bTmp;
		cxcbInsCorper.Enabled := bTmp;
		cxedInsNum.Enabled := bTmp;
		cxdtInsStart.Enabled := bTmp;
		cxdtInsEnd.Enabled := bTmp;
		if chkKidiDrive.Hint <> '' then
		begin
			iTmp := glCallInsInfo.InsGubun.IndexOf(chkKidiDrive.Hint);

			if glCallInsInfo.InsStatus[iTmp] <> '보험정상' then
			begin
				GMessagebox('심사결과가 [보험정상]일 경우에만 설정이 가능합니다', CDMSE);

				chkKidiDrive.Tag := 99;
				if (not chkDrive.Checked) and (not chkCallDrive.Checked) then
				begin
					btn_InSureCopyTak.Enabled := False;
					cxcbInsCorper.Enabled := False;
					cxedInsNum.Enabled := False;
					cxdtInsStart.Enabled := False;
					cxdtInsEnd.Enabled := False;
				end else
				begin
					btn_InSureCopyTak.Enabled := True;
					cxcbInsCorper.Enabled := True;
					cxedInsNum.Enabled := True;
					cxdtInsStart.Enabled := True;
					cxdtInsEnd.Enabled := True;
				end;
				chkKidiDrive.Checked := False;
				chkKidiDrive.Tag := 0;
				exit;
			end;

			chkDrive.Checked := False;		
			chkCallDrive.checked := False;

			lb_WKINS_Kidi_STATUS.caption := glCallInsInfo.InsStatus[iTmp];
			dt_CallInsStartDate.Text := glCallInsInfo.InsADate[iTmp];
			cxdCallInsStartDate.Text := glCallInsInfo.InsADate[iTmp];
			cxdtInsStart.Text := glCallInsInfo.InsS[iTmp];
			cxdtInsEnd.Text := glCallInsInfo.InsE[iTmp];
			cxedInsNum.Text := glCallInsInfo.InsNum[iTmp];

//			proc_BHSet(4);// 보험사 콤보설정 0: 전체, 1: 콜당보험용 보험사 4: 개인보험(보험개발원)
			proc_BHSet(0);
			iRow := slInsCode.IndexOf(glCallInsInfo.InsCD[iTmp]);
			if iTmp <> -1 then
				cxcbInsCorper.ItemIndex := iRow
			else
				cxcbInsCorper.ItemIndex := 0;
		end else
		if chkKidiDrive.Hint = '' then
		begin
			iTmp := glCallInsInfo.InsGubun.IndexOf('b');
			if glCallInsInfo.InsStatus[iTmp] <> '보험정상' then
			begin
				GMessagebox('심사결과가 [보험정상]일 경우에만 설정이 가능합니다', CDMSE);

				chkKidiDrive.Tag := 99;
				if (not chkDrive.Checked) and (not chkCallDrive.Checked) then
				begin
					btn_InSureCopyTak.Enabled := False;
					cxcbInsCorper.Enabled := False;
					cxedInsNum.Enabled := False;
					cxdtInsStart.Enabled := False;
					cxdtInsEnd.Enabled := False;
				end else
				begin
					btn_InSureCopyTak.Enabled := True;
					cxcbInsCorper.Enabled := True;
					cxedInsNum.Enabled := True;
					cxdtInsStart.Enabled := True;
					cxdtInsEnd.Enabled := True;
				end;
				chkKidiDrive.Checked := False;
				chkKidiDrive.Tag := 0;
				exit;
			end else
			if (iTmp > 0) and (glCallInsInfo.InsStatus[iTmp] = '보험정상') then
			begin
				chkDrive.Checked := False;		
				chkCallDrive.checked := False;
				lb_WKINS_Kidi_STATUS.caption := glCallInsInfo.InsStatus[iTmp];
				dt_CallInsStartDate.Text := glCallInsInfo.InsADate[iTmp];
				cxdCallInsStartDate.Text := glCallInsInfo.InsADate[iTmp];
				cxdtInsStart.Text := glCallInsInfo.InsS[iTmp];
				cxdtInsEnd.Text := glCallInsInfo.InsE[iTmp];
				cxedInsNum.Text := glCallInsInfo.InsNum[iTmp];

//				proc_BHSet(4);// 보험사 콤보설정 0: 전체, 1: 콜당보험용 보험사 4: 개인보험(보험개발원)
				proc_BHSet(0);
				iRow := slInsCode.IndexOf(glCallInsInfo.InsCD[iTmp]);
				if iRow <> -1 then
					cxcbInsCorper.ItemIndex := iRow
				else
					cxcbInsCorper.ItemIndex := 0;
			end;
		end;
		chkDrive.Tag := 99;
		chkDrive.checked := False;
		chkDrive.Tag := 0;
		chkCallDrive.Tag := 99;
		chkCallDrive.checked := False;
		chkCallDrive.Tag := 0;
	end;
end;

procedure TFrm_WOR01.chkTakAllyPropertiesChange(Sender: TObject);
begin
	if chkTakAlly.Tag = 99 then exit;
	if chkTakAlly.checked then
	begin
		if not chkTaksong.Checked  then
		begin
			GMessagebox('탁송연합기사 가입시에는 탁송운전보험에 꼭 가입하셔야 합니다.', CDMSE);
			cxPageControl1.ActivePageIndex := 0;
			Exit;
		end else
		if chkTaksong.Checked  then
		begin
			if (cb_TakInsCorper.ItemIndex = 0) then
			begin
				GMessagebox('[탁송보험]일 경우에는 보험사를 선택하여야 합니다.', CDMSE);
				cxPageControl1.ActivePageIndex := 0;
				cb_TakInsCorper.SetFocus;
				Exit;
			end;
			if (Trim(edtTakInsNum.Text) = '') then
			begin
				GMessagebox('[탁송보험]일 경우에는 경우 탁송보험번호를 꼭 입력하셔야 합니다.', CDMSE);
				cxPageControl1.ActivePageIndex := 0;
				if edtTakInsNum.enabled then edtTakInsNum.SetFocus;
				Exit;
			end;
		end;
	end;
end;

procedure TFrm_WOR01.chkTakCallPropertiesChange(Sender: TObject);
var iTmp : integer;
	bTmp : Boolean;
begin
	if chkTakCall.Tag = 99 then exit;
	if not chkTakCall.Checked then 
	begin
//-		chkTaksong.Checked := True;
		if not chkTaksong.Checked then
		begin
{			sTmp := '체크 해제하시면'+#13#10+'기사는, 내정보 및 계좌정보를 볼수 없습니다.'+#13#10+#13#10+'해제하시겠습니까?';
			if Application.MessageBox(PChar(sTmp), CDMSE, MB_YESNO +
				MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then
			begin
				chkTakCall.Tag := 99;
				chkTakCall.Checked := True;
				chkTakCall.Tag := 0;
				exit;
			end; }
			bTmp := False;
			cb_TakInsCorper.Enabled := bTmp;
			edtTakInsNum.Enabled := bTmp;
			cxdTaktInsStart.Enabled := bTmp;
			cxdTaktInsEnd.Enabled := bTmp;
			edtTakInsNum.Text := '';
			cxdTaktInsStart.Text := '';
			cxdTaktInsEnd.Text := '';
		end else
		if not chkTakCall.Checked then
		begin
{			sTmp := '체크 해제하시면'+#13#10+'기사는, 내정보 및 계좌정보를 볼수 없습니다.'+#13#10+#13#10+'해제하시겠습니까?';
			if Application.MessageBox(PChar(sTmp), CDMSE, MB_YESNO +
				MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then
			begin
				chkTakCall.Tag := 99;
				chkTakCall.Checked := True;
				chkTakCall.Tag := 0;
				exit;
			end; }
			if not chkTaksong.Checked then
			begin
				bTmp := False;
				cb_TakInsCorper.Enabled := bTmp;
				edtTakInsNum.Enabled := bTmp;
				cxdTaktInsStart.Enabled := bTmp;
				cxdTaktInsEnd.Enabled := bTmp;
				edtTakInsNum.Text := '';
				cxdTaktInsStart.Text := '';
				cxdTaktInsEnd.Text := '';
				cb_TakInsCorper.ItemIndex := 0;
			end;
		end;
	end else 
	begin    //탁송콜당체크
		bTmp := True;
		cb_TakInsCorper.Enabled := bTmp;
		edtTakInsNum.Enabled := bTmp;
		cxdTaktInsStart.Enabled := bTmp;
		cxdTaktInsEnd.Enabled := bTmp;
		if chkTakCall.Hint <> '' then
		begin
			iTmp := glCallInsInfo.InsGubun.IndexOf(chkTakCall.Hint);

			if glCallInsInfo.InsStatus[iTmp] <> '통과' then
			begin
				if glCallInsInfo.InsCD[iTmp] = '06' then //메리츠
				begin
					GMessagebox('메리츠 심사결과가 통과일 경우에만 설정이 가능합니다', CDMSE);
				end ;
{				else if glCallInsInfo.InsCD[iTmp] = '15' then //KB
				begin
					GMessagebox('KB 심사결과가 통과일 경우에만 설정이 가능합니다', CDMSE);
				end
				else GMessagebox('심사결과가 통과일 경우에만 설정이 가능합니다', CDMSE);  }
				chkTakCall.Tag := 99;
				if not chkTaksong.Checked then
				begin
					cb_TakInsCorper.Enabled := False;
					edtTakInsNum.Enabled := False;
					cxdTaktInsStart.Enabled := False;
					cxdTaktInsEnd.Enabled := False;
				end;
				chkTakCall.Checked := False;
				chkTakCall.Tag := 0;
				exit;
			end;
			lb_TakINS_MER_STATUS.caption := glCallInsInfo.InsStatus[iTmp];
			dt_TakCallInsStartDate.Text := glCallInsInfo.InsADate[iTmp];
			cxdTaktInsStart.Text := glCallInsInfo.InsS[iTmp];
			cxdTaktInsEnd.Text := glCallInsInfo.InsE[iTmp];
			edtTakInsNum.Text := glCallInsInfo.InsNum[iTmp];

			proc_BHSet(3);// 보험사 콤보설정 0: 전체, 1: 콜당보험용 보험사
			if glCallInsInfo.InsCD[iTmp] = '06' then cb_TakInsCorper.ItemIndex := 0 else
			if glCallInsInfo.InsCD[iTmp] = '15' then cb_TakInsCorper.ItemIndex := 1;
		end
		else if chkTakCall.Hint = '' then
		begin
			iTmp := glCallInsInfo.InsGubun.IndexOf('tc');
			if (iTmp > 0) and (glCallInsInfo.InsStatus[iTmp] = '통과') then
			begin
				lb_TakINS_MER_STATUS.caption := glCallInsInfo.InsStatus[iTmp];
				dt_TakCallInsStartDate.Text := glCallInsInfo.InsADate[iTmp];
				cxdTaktInsStart.Text := glCallInsInfo.InsS[iTmp];
				cxdTaktInsEnd.Text := glCallInsInfo.InsE[iTmp];
				edtTakInsNum.Text := glCallInsInfo.InsNum[iTmp];

				proc_BHSet(3);// 보험사 콤보설정 0: 전체, 1: 콜당보험용 보험사
				cb_TakInsCorper.ItemIndex := 0;
			end
			else
			begin
				iTmp := glCallInsInfo.InsGubun.IndexOf('tk');
				if (iTmp > 0) and (glCallInsInfo.InsStatus[iTmp] = '통과') then
				begin
					lb_TakINS_MER_STATUS.caption := glCallInsInfo.InsStatus[iTmp];
					dt_TakCallInsStartDate.Text := glCallInsInfo.InsADate[iTmp];
					cxdTaktInsStart.Text := glCallInsInfo.InsS[iTmp];
					cxdTaktInsEnd.Text := glCallInsInfo.InsE[iTmp];
					edtTakInsNum.Text := glCallInsInfo.InsNum[iTmp];

					proc_BHSet(3);// 보험사 콤보설정 0: 전체, 1: 콜당보험용 보험사
//					cb_TakInsCorper.ItemIndex := 1;
				end	else
				begin
					GMessagebox('심사결과가 통과일 경우에만 설정이 가능합니다', CDMSE);
					chkTakCall.Tag := 99;
					if not chkTaksong.Checked then
					begin
						cb_TakInsCorper.Enabled := False;
						edtTakInsNum.Enabled := False;
						cxdTaktInsStart.Enabled := False;
						cxdTaktInsEnd.Enabled := False;
					end;
					chkTakCall.Checked := False;
					chkTakCall.Tag := 0;
					exit;
				end;
			end;
		end;

		chkTaksong.Tag := 99;
		chkTaksong.checked := False;
		chkTakHwak.checked := False;		
		chkTaksong.Tag := 0;
	end;
end;

procedure TFrm_WOR01.chkTaksongClick(Sender: TObject);
begin
	if Not pWOR01Dock.bUnDock then pWOR01Dock.GUBUN := GT_SEL_BRNO.GUBUN;
	if Not pWOR01Dock.bUnDock then pWOR01Dock.HdNo  := GT_SEL_BRNO.HdNo;
  if Not pWOR01Dock.bUnDock then pWOR01Dock.BrNo  := GT_SEL_BRNO.BrNo;
  if Not pWOR01Dock.bUnDock then pWOR01Dock.BrName:= GT_SEL_BRNO.BrName;
end;

procedure TFrm_WOR01.chkTaksongPropertiesChange(Sender: TObject);
var
	HD_NAME, Br_Name : string;
	iTmp, iRow : integer;
begin
	if chkTaksong.Tag = 99 then exit;
	if chkTaksong.Checked = True then
  begin
		if cxbModify.Caption = '수정' then
		begin
			if ((not modifyChk) or (fChk = True)) and (cxlbl4.caption = '동의안함') then
			begin
        if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then
        begin
					HD_NAME := scb_HdNm[scb_HdNo.IndexOf(pWOR01Dock.HDNO)];
//					Br_Name := scb_BranchName[scb_BranchCode.IndexOf(pWOR01Dock.BrNo)];
					Br_Name := scb_BranchName[scb_BranchCode.IndexOf(cxBrNo.Text)];    //20170531 KHS
					
					lbl10.Caption := '[' + HD_NAME + ', ' + Br_Name + ']' + ' 에서';
        end
				else
        begin
          Br_Name := scb_BranchName[scb_BranchCode.IndexOf(pWOR01Dock.BrNo)];
          lbl10.Caption := '[' + Br_Name + ']' + ' 에서';
				end;
				pnl1.Visible := true;
				pnl1.left := 17;
				pnl1.Top := 156;
			end else
			begin
				proc_BHSet(2);
				if chkTaksong.Checked then
				begin
					if GS_PRJ_AREA = 'S' then
					begin
						if (GetLicTypeCode(cbbLicType.Text) = '10') or (GetLicTypeCode(cbbLicType.Text) = '11') or   //1종대형, 1종보통
							 (GetLicTypeCode(cbbLicType.Text) = '13') or (GetLicTypeCode(cbbLicType.Text) = '20') or   //1종특수, 2종보통
							 (GetLicTypeCode(cbbLicType.Text) = '30')then  //1종대형특수
						begin
							chkTakHwak.Visible := True;
							chkTakHwak.SetFocus;
						end;
					end;
					cb_TakInsCorper.enabled := True;
					edtTakInsNum.enabled := True;
					cxdTaktInsStart.Enabled := True;
					cxdTaktInsEnd.Enabled := True;
				end;

				iTmp := glCallInsInfo.InsGubun.IndexOf('t');
				if iTmp < 0 then exit;
		
				iRow := slTakInsCode.IndexOf(glCallInsInfo.InsCD[iTmp]);
				if iRow <> -1 then
					cb_TakInsCorper.ItemIndex := iRow
				else
					cb_TakInsCorper.ItemIndex := 0;
				edtTakInsNum.Text := glCallInsInfo.InsNum[iTmp];
				cxdTaktInsStart.Text := glCallInsInfo.InsS[iTmp];
				cxdTaktInsEnd.Text := glCallInsInfo.InsE[iTmp];
				if chkTakHwak.Hint = 'y' then chkTakHwak.checked := True;
			end;
      fChk := True;
    end	else
    if cxbModify.Caption <> '수정' then
    begin
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then
			begin
        HD_NAME := scb_HdNm[scb_HdNo.IndexOf(pWOR01Dock.HDNO)];
				Br_Name := scb_BranchName[scb_BranchCode.IndexOf(cxBrNo.Text)];
        lbl10.Caption := '[' + HD_NAME + ', ' + Br_Name + ']' + ' 에서';
      end else
			begin
				Br_Name := scb_BranchName[scb_BranchCode.IndexOf(pWOR01Dock.BrNo)];
        lbl10.Caption := '[' + Br_Name + ']' + ' 에서';
      end;
//      HD_NAME := scb_HdNm[scb_HdNo.IndexOf(pWOR01Dock.HDNO)];
//      Br_Name := scb_BranchName[scb_BranchCode.IndexOf(pWOR01Dock.BrNo)];
//      lbl10.Caption := '[' + HD_NAME + ', ' + Br_Name + ']' + ' 에서';
			pnl1.Visible := true;
			pnl1.left := 17;
			pnl1.Top := 156;
		end;
		chkTakCall.checked := False;
	end else
	begin
//		Pnl_TakIns.Enabled := False;
		cxlbl4.caption := '동의안함';
		cxlbl4.Style.font.style := [];
		cxlbl4.Style.font.color := clBlack;
		pnl1.Visible := False;
//		edtTakInsNum.enabled := False;
//		cb_TakInsCorper.enabled := False;
		chkTakHwak.Visible := False;
		chkTakHwak.Checked := False;

		cb_TakInsCorper.ItemIndex := 0;
		edtTakInsNum.Text := '';
		cxdTaktInsStart.Text := '';
		cxdTaktInsEnd.Text := '';
	end;
end;

procedure TFrm_WOR01.cxdCallInsStartDateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then btnWKInsranceApplyOK.SetFocus;
end;

procedure TFrm_WOR01.cxdtInsEndExit(Sender: TObject);
begin
{	sDate := cxdtInsEnd.Date;

	if (sDate > Now) and (sDate < incYear(Now, 2)) then
	begin

	end
	else 
	begin
		if (chkDrive.checked) and (cxcbInsCorper.ItemIndex <> 0) then
			ShowMessage('보험만기일자가 유효하지 않습니다');
	end;   }
end;

procedure TFrm_WOR01.cxButton1Click(Sender: TObject);
var iTmp, iRow : integer;
begin
	Pnl_TakIns.Enabled := True;
	pnl1.Visible := False;
	cxlbl4.caption := '동의함';
	cxlbl4.Style.font.style := [fsBold];
	cxlbl4.Style.font.color := clRed;
	proc_BHSet(2);
	if chkTaksong.Checked then
	begin
		if GS_PRJ_AREA = 'S' then
		begin
			if (GetLicTypeCode(cbbLicType.Text) = '10') or (GetLicTypeCode(cbbLicType.Text) = '11') or   //1종대형, 1종보통
				 (GetLicTypeCode(cbbLicType.Text) = '13') or (GetLicTypeCode(cbbLicType.Text) = '20') or   //1종특수, 2종보통
				 (GetLicTypeCode(cbbLicType.Text) = '30')then  //1종대형특수
			begin
				chkTakHwak.Visible := True;
				chkTakHwak.SetFocus;
			end;
		end;
		cb_TakInsCorper.enabled := True;
		edtTakInsNum.enabled := True;
		cxdTaktInsStart.Enabled := True;
		cxdTaktInsEnd.Enabled := True;
	end;

	iTmp := glCallInsInfo.InsGubun.IndexOf('t');
	if iTmp < 0 then exit;
		
	iRow := slTakInsCode.IndexOf(glCallInsInfo.InsCD[iTmp]);
	if iRow <> -1 then
		cb_TakInsCorper.ItemIndex := iRow
	else
		cb_TakInsCorper.ItemIndex := 0;
	edtTakInsNum.Text := glCallInsInfo.InsNum[iTmp];
	cxdTaktInsStart.Text := glCallInsInfo.InsS[iTmp];
	cxdTaktInsEnd.Text := glCallInsInfo.InsE[iTmp];
	if chkTakHwak.Hint = 'y' then chkTakHwak.checked := True;
end;

procedure TFrm_WOR01.cxButton2Click(Sender: TObject);
begin
//	Pnl_TakIns.Enabled := False;
	pnl1.Visible := False;
	chkTaksong.Checked := False;
	cxlbl4.caption := '동의안함';
	cxlbl4.Style.font.style := [];
	cxlbl4.Style.font.color := clBlack;

	chkTakHwak.Visible := False;
	chkTakHwak.Checked := False;
//	pnl_TakIns.enabled := False;
end;

procedure TFrm_WOR01.btnCallHelpClick(Sender: TObject);
var
	IE : Variant;
  Value : Cardinal;
begin
	IE := CreateOleObject('InternetExplorer.Application');

//	IE.Navigate( 'http://www.callmaner.com/driver_location.html' );
	IE.Navigate( 'http://www.callmaner.com/ins_call_info.html' );//﻿﻿ -콜당보험 안내
	IE.AddressBar := False;
	IE.MenuBar := False;
	IE.ToolBar := False;
	IE.StatusBar := False;

	IE.Width := 1100;
	IE.Height := 800;

	IE.Top := Self.Top;//((Self.Top * 2 + Self.Height) - IE.Height)/2;
	IE.Left := 0;//Self.Left - IE.Width;

//            bIE := True;
	Value := IE.Hwnd;
	RegSetValue(HKEY_CURRENT_USER, 'HKSFA\IE_HWND', REG_DWORD, @Value, SizeOf(Cardinal));
	IE.Visible := true;
	SetForegroundWindow(Value);
end;

procedure TFrm_WOR01.btn_InSureCopyTakClick(Sender: TObject);
begin
	if not chkTaksong.Checked then
	begin
		GMessagebox('탁송운전자보험 사용 체크 후 적용하십시오.', CDMSE);
		exit;
	end;
	cb_TakInsCorper.ItemIndex := cb_TakInsCorper.properties.Items.indexOf(cxcbInsCorper.Text);
	edtTakInsNum.Text := cxedInsNum.Text;
	cxdTaktInsEnd.Text := cxdtInsEnd.Text;
end;

procedure TFrm_WOR01.cxbWKInsranceApplyClick(Sender: TObject);
var dt_sysdate : string;
	sNowDate : string;
begin
	SetDebugeWrite('TFrm_WOR01.cxbWKInsranceApplyClick');
	Try
		cxbWKInsranceApply.Enabled := False;
//		dt_CallInsStartDate.Enabled := cxbWKInsranceApply.Enabled;
		pnlWKInsranceApply.left := 540;
		pnlWKInsranceApply.Top := 128;
		pnlWKInsranceApply.Visible := True;
		cxdCallInsStartDate.Tag := 99; //날짜를 직접 선택할 경우에만 change 타게 하기위해 태크 추가 20160831KHS
		chkInsStartDate.SetFocus;
		
		btnWKInsranceApplyOK.Tag := TcxButton(Sender).Tag; 
		if TcxButton(Sender).Tag = 0 then  //일반콜당보험 신청
		begin
			grpWKInsranceApply.Caption := '   콜당보험심사요청';
			pnlWKInsranceApply.Top := 128;
			cxdCallInsStartDate.Text := dt_CallInsStartDate.text;
		end else
		if TcxButton(Sender).Tag = 1 then //탁송콜당보험 신청
		begin
			grpWKInsranceApply.Caption := '   탁송콜당보험심사요청';
			pnlWKInsranceApply.Top := 203;
			cxdCallInsStartDate.Text := dt_TakCallInsStartDate.text;
		end;

		if cxdCallInsStartDate.Text = '' then
		begin
			dt_sysdate := frm_main.func_sysdate;  //'20160831170619'
			sNowDate := copy(GetStrToDateTimeGStr(dt_sysdate, 3),1,10);

			if (StrToInt(copy(dt_sysdate, 9, 4)) > 1500) then
				cxdCallInsStartDate.date := StrToDate(sNowDate) + 2
			else
				cxdCallInsStartDate.date := StrToDate(sNowDate) + 1;
		end;
	except on E: Exception do
    Assert(False, E.Message);
	end;
end;

procedure TFrm_WOR01.btn_WKKidiApplyClick(Sender: TObject);
var
	XmlData, ErrMsg, ls_MSG_Err : string;
	ErrCode : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
	sParams, sWkSabun, sHP, sWkName, sSsn, sMsg : string;
begin
  //고용보험료 차감 예외 기사처리 20211229 KHS 신성현팀장요청
  if cxedSoNum.Text + cxedSoNum1.Text = '1111111111111' then exit;
    
//보험개발원 보험 심사요청
	SetDebugeWrite('TFrm_WOR01.cxbWKKidiApplyClick');
	try
		btn_WKKidiApply.enabled := False;
		sWkSabun := Trim(cxedWkSabun.Text);
		sHP := cxcbWkHp.Text + edt_WkHp.Text;
		sHP := StringReplace(sHP, '-', '', [rfReplaceAll]);
		sWkName := Trim(edtRealName.Text);
		sSsn := cxedSoNum.Text + cxedSoNum1.Text;
		//요청 : 기사사번│본사코드│지사코드│휴대폰번호│기사실명│기사주민번호
		sParams := sWkSabun + '│' + cxHdNo.Text + '│' + cxBrNo.Text + '│'
						 + sHP      + '│' + sWkName     + '│' + sSsn;

		if not RequestBase(GetCallable06('SET_INSERT_KIDI_INS_CALL', 'INS.SET_INSERT_KIDI_INS_CALL', sParams), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('보험개발원 보험 심사요청 시 오류가 발생하였습니다.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			btn_WKKidiApply.enabled := True;
			Exit;
		end;

		sMsg := '보험개발원에 정보등록을 요청하였습니다' +#13#10
					+ '요청결과는 기사정보를 갱신하신 뒤 확인 할 수 있습니다.' +#13#10
					+ '갱신시 저장하지 않은 정보는 삭제됩니다.'+#13#10+#13#10
					+ '기사정보를 갱신 하시겠습니까?';
		if Application.MessageBox(PChar(sMsg), '[보험개발원]', MB_YESNO +	MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
		begin
			proc_wk_Search(cxedWkSabun.Text);
    end;
//		btn_WKKidiSch.Click;
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_WOR01.btn_WKKidiSchClick(Sender: TObject);
var sParam : string;
	ls_rxxml, Param, ErrMsg, ls_MSG_Err: string;
	xdom: msDomDocument;
	XmlData, sTmp : string;
	lst_Result : IXMLDomNodeList;
	ErrCode : integer;
	sParams, sWkSabun, sHP, sMemo, sSsn, sSTEP, sResult : string;
	ls_Rcrd : TStringList;
	i, iTmp : integer;
begin
  //고용보험료 차감 예외 기사처리 20211229 KHS 신성현팀장요청
  if cxedSoNum.Text + cxedSoNum1.Text = '1111111111111' then exit;
    
  //보험개발원 보험 심사요청
	SetDebugeWrite('TFrm_WOR01.btn_WKKidiSchClick');
	try
		btn_WKKidiSch.Enabled := False;
		sWkSabun := Trim(cxedWkSabun.Text);
		sSsn := cxedSoNum.Text+ Copy(cxedSoNum1.Text, 1,1);

		//요청 : 기사사번│지사코드│기사주민번호
		sParam := '';
		sParam := sWkSabun + '│' + cxBrNo.Text + '│' + sSsn;

		if not RequestBase(GetSel06('GET_RESULT_KIDI_INS_CALL', 'INS.GET_RESULT_KIDI_INS_CALL', '1', sParam), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('보험개발원 현재상태조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			btn_WKKidiSch.Enabled := True;
			Exit;
		end;
		xdom := ComsDomDocument.Create;
		try
			if not xdom.loadXML(XmlData) then Exit;

			ls_MSG_Err := GetXmlErrorCode(XmlData);
			if ('0000' = ls_MSG_Err) then
			begin
				if (0 < GetXmlRecordCount(XmlData)) then
				begin
					ls_Rcrd := TStringList.Create;
					try
						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

						for i := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							sMemo := '';
							if ls_Rcrd[1] <> '' then sMemo := ls_Rcrd[1];

							//보험상태(INS_STEP)   14         Y   VARCHAR2 (10 Byte)      init: 등록중, registed 등록, agree 정보제공동의, reject 정보제공동의철회 ,ok 보험정상, expired: 보험만료
							if ls_Rcrd[2] = 'init'     then sSTEP := '등록중'           else
							if ls_Rcrd[2] = 'registed' then sSTEP := '동의미진행'		   else
							if ls_Rcrd[2] = 'agree'    then sSTEP := '동의완료'         else
							if ls_Rcrd[2] = 'reject'   then sSTEP := '정보제공동의철회' else
							if ls_Rcrd[2] = 'ok'       then sSTEP := '보험정상'         else
							if ls_Rcrd[2] = 'expired'  then sSTEP := '보험만료'
																				 else sSTEP := ls_Rcrd[2];
							lb_WKINS_Kidi_STATUS.Caption := sSTEP;

							if (ls_Rcrd[2] <> '') then btn_WKKidiApply.Enabled := False else btn_WKKidiApply.Enabled := True;
							if (ls_Rcrd[2] <> '') and (ls_Rcrd[2] <> 'init') then
							begin
								btn_WKKidiSch .Enabled := True;
								btn_WKKidiSync.Enabled := True;
							end;
							if  ls_Rcrd[2] = 'registed'                      then btn_WKKidiSMS.Enabled := True else
              if  ls_Rcrd[2] = 'reject'                        then btn_WKKidiSMS.Enabled := True else
							if (ls_Rcrd[2] = 'agree') or (ls_Rcrd[2] = 'ok') then btn_WKKidiSMS.Enabled := False
																															 else btn_WKKidiSMS.Enabled := False;

							//심사결과(INS_RESULT)   15         Y   CHAR (1 Byte)         보험가입상태 {0:가입요청, 1:통과, 2:거부, 3:심사중,
							//4:기사ID/이름/주민번호 set이 올바르지않음, 5:기타, 7:해지요청, 8:해지, 9:미가입, D:재등록
							if ls_Rcrd[3] = '0' then sResult := '가입요청' else
							if ls_Rcrd[3] = '1' then sResult := '통과' 		 else
							if ls_Rcrd[3] = '2' then sResult := '거부'     else
							if ls_Rcrd[3] = '3' then sResult := '심사중'   else
							if ls_Rcrd[3] = '4' then sResult := '기사정보가 올바르지않음' else
							if ls_Rcrd[3] = '5' then sResult := '기타'     else
							if ls_Rcrd[3] = '7' then sResult := '해지요청' else
							if ls_Rcrd[3] = '8' then sResult := '해지'     else
							if ls_Rcrd[3] = '9' then sResult := '미가입'   else
							if ls_Rcrd[3] = 'D' then sResult := '재등록'   else sResult := ls_Rcrd[3];

							//보험심사/갱신상태
							lb_INS_Status.Caption := {sResult + }sMemo;

							lb_AgDate.Caption := GetStrToDateTimeGStr(ls_Rcrd[4], 3);

							iTmp := glCallInsInfo.InsGubun.IndexOf('b');
							if iTmp > -1 then
								glCallInsInfo.InsStatus[iTmp] := lb_WKINS_Kidi_STATUS.Caption;
						end;
					finally
						ls_Rcrd.Free;
					end;
				end;
			end;
		finally
			xdom := Nil;
			btn_WKKidiSch.Enabled := True;
		end;
	except
		on e: exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_WOR01.btn_WKKidiSMSClick(Sender: TObject);
var
	XmlData, ErrMsg, ls_MSG_Err : string;
	ErrCode : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
	sParams, sWkSabun, sHP, sSsn, sMsg : string;
begin
  //고용보험료 차감 예외 기사처리 20211229 KHS 신성현팀장요청
  if cxedSoNum.Text + cxedSoNum1.Text = '1111111111111' then exit;

  //보험개발원 개인정보제공동의 SMS전송
	SetDebugeWrite('TFrm_WOR01.cxbWKKidiSMSClick');
	try
		btn_WKKidiSMS.Enabled := False;
		sWkSabun := Trim(cxedWkSabun.Text);
		sHP := cxcbWkHp.Text + edt_WkHp.Text;
		sHP := StringReplace(sHP, '-', '', [rfReplaceAll]);
		sSsn := cxedSoNum.Text+ Copy(cxedSoNum1.Text, 1,1);
		//요청 : 기사사번│지사코드│기사주민번호│휴대폰번호
		sParams := sWkSabun + '│' + cxBrNo.Text + '│' + sSsn + '│' + sHP ;

		if not RequestBase(GetCallable06('SET_AGREE_KIDI_INS_CALL', 'INS.SET_AGREE_KIDI_INS_CALL', sParams), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('보험개발원 개인정보제공동의 SMS전송 시 오류가 발생하였습니다.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			btn_WKKidiSMS.Enabled := True;
			Exit;
		end;
		sMsg := '개인정보제공동의 SMS전송을 요청하였습니다' +#13#10  +#13#10
					+ '수신문자를 통해 정보동의를 하여야만 개인보험등록이 가능합니다';
		GMessagebox(sMsg, CDMSI);
		btn_WKKidiSMS.Enabled := True;
//		btn_WKKidiSch.Click;

	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_WOR01.btn_WKKidiSyncClick(Sender: TObject);
var
	XmlData, ErrMsg, ls_MSG_Err : string;
	ErrCode : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
	sParams, sWkSabun, sSsn, sMsg : string;
begin
  //고용보험료 차감 예외 기사처리 20211229 KHS 신성현팀장요청
  if cxedSoNum.Text + cxedSoNum1.Text = '1111111111111' then exit;

  //보험개발원 보험정보조회(동기화)
	SetDebugeWrite('TFrm_WOR01.cxbWKKidiSMSClick');
	try
		btn_WKKidiSync.Enabled := False;
		sWkSabun := Trim(cxedWkSabun.Text);
		sSsn := cxedSoNum.Text+ Copy(cxedSoNum1.Text, 1,1);
		//요청 : 기사사번│지사코드│기사주민번호
		sParams := sWkSabun + '│' + cxBrNo.Text + '│' + sSsn;

		if not RequestBase(GetCallable06('SET_FIND_KIDI_INS_CALL', 'INS.SET_FIND_KIDI_INS_CALL', sParams), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('보험개발원 보험정보조회(동기화) 시 오류가 발생하였습니다.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			btn_WKKidiSync.Enabled := True;
			Exit;
		end;

		sMsg := '개인보험정보에 대한 동기화 요청하였습니다' +#13#10
					+ '갱신시 저장하지 않은 정보는 삭제됩니다.'+#13#10+#13#10
					+ '기사정보를 갱신 하시겠습니까?';
		if Application.MessageBox(PChar(sMsg), '[보험개발원]', MB_YESNO +	MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
		begin
			proc_wk_Search(cxedWkSabun.Text);
		end else btn_WKKidiSync.Enabled := True;

	except on E: Exception do
		Assert(False, E.Message);
	end;

end;

procedure TFrm_WOR01.proc_CheckRegJumin(sTemp: string);
var
  XmlData, ErrMsg: string;
	ErrCode: integer;
	Param : string;
begin
  Param := 'CHK_WK_SNUM';
  Param := Param + '│' + cxHdNo.Text;
  Param := Param + '│' + cxBrNo.Text;
  Param := Param + '│' + sTemp + '│';

	if not RequestBase(GetSel05('WOR0091', 'MNG_WK.GET_WK_LIST', '100', Param), XmlData, ErrCode, ErrMsg) then
	begin
		GMessagebox(Format('기사가입 정보 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
		cxbModify.Enabled := True;
		Exit;
	end;
	
	proc_recieve(XmlData);
end;

procedure TFrm_WOR01.proc_EVENT_TARGET_CHECK(AJumin: string);
var
	ErrCode: integer;
	Param, XmlData, ErrMsg, ls_rxxml : String;
begin
	try
    //요청 : 주민번호│연합코드. 클라에서 이벤트코드는 의미없음. 서버에서 처리 20210531 KHS
    Param := AJumin + '│' + GT_USERIF.ShareNo;
		if RequestBase(GetSel06('EVENT_TARGET_CHECK', 'MNG_WK.EVENT_TARGET_CHECK', '1', Param), ls_rxxml, ErrCode, ErrMsg) then
//		if RequestBase(GetCallable06('EVENT_TARGET_CHECK', 'MNG_WK.EVENT_TARGET_CHECK', param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('[축하합니다]' + #13#10 + #13#10 + '%s', [ErrMsg]), CDMSE);
		end else
		begin
			GMessagebox(Format('[알림]' + #13#10 + #13#10 + '[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Exit;
		end;
	except
    on e:Exception do
    begin
			Assert(False, 'TFrm_WOR01[proc_EVENT_TARGET_CHECK]:' + E.Message);
    end;
	end;
end;

procedure TFrm_WOR01.proc_Finit;
var  i: Integer;
begin
	sPTmp := '';

	for i := 0 to cxgBrSet.ColumnCount - 1 do
    cxgBrSet.Columns[i].DataBinding.ValueType := 'String';

	for i := 0 to cxgStateList.ColumnCount - 1 do
    cxgStateList.Columns[i].DataBinding.ValueType := 'String';

  cxgStateList.OptionsView.NoDataToDisplayInfoText := '';

  cxPageControl2.ActivePageIndex := 0;

  FLicenseCode := TStringList.Create;
  GetLicenseSysCode;

	FWORKER.NAME     := TStringList.Create;
	FWORKER.WSABUN   := TStringList.Create;
	FWORKER.SABUN    := TStringList.Create;
	FWORKER.SHARPNO  := TStringList.Create;
	FWORKER.USEHP    := TStringList.Create;
	FWORKER.USEMC    := TStringList.Create;
	FWORKER.USESHARE := TStringList.Create;
	FWORKER.STATE    := TStringList.Create;

	searchBRlist := TStringList.Create;

	glCallInsInfo.InsGubun  := TStringList.Create;
	glCallInsInfo.InsCD  := TStringList.Create;
	glCallInsInfo.InsNum := TStringList.Create;
	glCallInsInfo.InsADate := TStringList.Create;
	glCallInsInfo.InsS   := TStringList.Create;
	glCallInsInfo.InsE   := TStringList.Create;
	glCallInsInfo.InsStatus   := TStringList.Create;

	slNaviHpCd := TStringList.Create;
	slInsCode := TStringList.Create;
	slTakInsCode := TStringList.Create;
	slCmdCode := TStringList.Create;
	slBHCode := TStringList.Create;
	slBHName := TStringList.Create;
	slC029Seq := TStringList.Create;
	slC029Memo := TStringList.Create;

	slMCashSeq := TStringList.Create;
	slMCashMemo := TStringList.Create;
	
	proc_sysRead;

	FHdNoList := TStringList.Create;
	FBrNoList := TStringList.Create;
	FTakList := TStringList.Create;
	FShuttel4:= TStringList.Create;

  SetBranch;

  if Not pWOR01Dock.bUnDock then pWOR01Dock.HdNo  := GT_SEL_BRNO.HdNo;

	if (GT_USERIF.LV = '60') or ((GT_USERIF.LV = '10') and (IsPassedManagementWk(pWOR01Dock.BrNo))) then
    cboBranch.Enabled := True
	else
		cboBranch.Enabled := False;

	cbbLicType.Properties.Items.Clear;
	for I := 0 to Length(LicTypeList) - 1 do
		cbbLicType.Properties.Items.Add(LicTypeList[I].Value);
	cbbLicType.ItemIndex := 5;
	proc_init;
end;

procedure TFrm_WOR01.SetBranch;
Var HdCd, HdCd_Old: string;
    i : Integer;
begin
	cboBranch.Properties.Items.Clear;
  HdCd_Old := '';
  // 기사수정 권한 이관한 경우만
  if GT_USERIF.LV = '10' then   // 상담원
  begin
    for I := 0 to scb_BranchName.Count - 1 do
    begin
      if IsPassedManagementWk(scb_BranchCode[I]) then
      begin
         HdCd :='';
         HdCd := frm_Main.func_search_hdNo(scb_BranchCode[I]);
         if HdCd <> HdCd_Old then
         begin
           RequestDataHeadInfo(HdCd); //본사명 검색
           HdCd_Old := HdCd;
         end;

         if GB_WORSOSOK_VIEW then
           //지사 표시 시 본사코드, 지사코드, 지사명, 본사명 표기
           cboBranch.Properties.Items.Add('(' + HdCd + ',' + scb_BranchCode[I] +')' + scb_BranchName[I] + '/' + Gs_HdNm)
         else
           //지사 표시 시 지사코드, 지사명표기
           cboBranch.Properties.Items.Add('('+scb_BranchCode[I]+')' + scb_BranchName[I]);
				 FHdNoList.Add(HdCd);
				 FBrNoList.Add(scb_BranchCode[I]);
				 FTakList.Add(scb_Taksong[I]);
				 FShuttel4.Add(scb_Shuttle4[I]);
			end;
    end;
	end else
  begin
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
		begin
      for I := 0 to scb_FamilyBrName.Count - 1 do
      begin
         HdCd :='';
         HdCd := frm_Main.func_search_hdNo(scb_FamilyBrCode[I]);
         if HdCd <> HdCd_Old then
         begin
					 RequestDataHeadInfo(HdCd);
					 HdCd_Old := HdCd;
         end;
         if GB_WORSOSOK_VIEW then
           //지사 표시 시 본사코드, 지사코드, 지사명, 본사명 표기
           cboBranch.Properties.Items.Add('(' + HdCd + ',' + scb_FamilyBrCode[I] +')' + scb_FamilyBrName[I] + '/' + Gs_HdNm)
         else
           //지사 표시 시 지사코드, 지사명표기
           cboBranch.Properties.Items.Add('('+scb_FamilyBrCode[I]+')' + scb_FamilyBrName[I]);
				 FHdNoList.Add(HdCd);
         FBrNoList.Add(scb_FamilyBrCode[I]);
				 FTakList.Add(scb_FamilyTaksong[I]);
				 FShuttel4.Add(scb_FamilyShuttle4[I]);
      end;
		end else
    begin
      for I := 0 to scb_BranchName.Count - 1 do
      begin
         HdCd :='';
         HdCd := frm_Main.func_search_hdNo(scb_BranchCode[I]);
         if HdCd <> HdCd_Old then
         begin
           RequestDataHeadInfo(HdCd);
           HdCd_Old := HdCd;
         end;
         if GB_WORSOSOK_VIEW then
           //지사 표시 시 본사코드, 지사코드, 지사명, 본사명 표기
           cboBranch.Properties.Items.Add('(' + HdCd + ',' + scb_BranchCode[I] +')' + scb_BranchName[I] + '/' + Gs_HdNm)
         else
           //지사 표시 시 지사코드, 지사명표기
           cboBranch.Properties.Items.Add('('+scb_BranchCode[I]+')' + scb_BranchName[I]);
				 FHdNoList.Add(HdCd);
         FBrNoList.Add(scb_BranchCode[I]);
				 FTakList.Add(scb_Taksong[I]);
				 FShuttel4.Add(scb_Shuttle4[I]);
      end;
    end;
  end;
end;

function TFrm_WOR01.Proc_HDNOSearch: string;
begin
  if cboBranch.itemindex >= 0 then
  	Result := FHdNoList[cboBranch.itemindex]
  else
    REsult := '';
end;

procedure TFrm_WOR01.cxdtLinsDateExit(Sender: TObject);
var
	sDate : TDate;
begin
	sDate := cxdtLinsDate.Date;

	if (sDate > Now) then
	begin
		ShowMessage('면허발급일자가 유효하지 않습니다');
	end;
end;

procedure TFrm_WOR01.cxcbWkHp_JoinCNT2PropertiesChange(Sender: TObject);
begin
	if StrToIntDef(edt_Index2.Text,0) <> cxcbWkHp_JoinCNT2.ItemIndex then
	begin
		cxbHpCheck2.Enabled := False;
		cxcbWkShareNo2.ItemIndex := 1;
	end else
	begin
		cxbHpCheck2.Enabled := False;
		cxcbWkShareNo2.ItemIndex := cxcbWkShareNo2.Tag;
	end;
end;

procedure TFrm_WOR01.cxcbWkHp_JoinCNT3PropertiesChange(Sender: TObject);
begin
	if StrToIntDef(edt_Index3.Text,0) <> cxcbWkHp_JoinCNT3.ItemIndex then
	begin
		cxbHpCheck3.Enabled := False;
		cxcbWkShareNo3.ItemIndex := 2;
	end else
	begin
		cxbHpCheck3.Enabled := False;
		cxcbWkShareNo3.ItemIndex := cxcbWkShareNo.Tag;
	end;
end;

procedure TFrm_WOR01.cxcbWkHp_JoinCNT4PropertiesChange(Sender: TObject);
begin
	if StrToIntDef(edt_Index4.Text,0) <> cxcbWkHp_JoinCNT4.ItemIndex then
	begin
		cxbHpCheck4.Enabled := False;
		cxcbWkShareNo4.ItemIndex := 2;
	end else
	begin
		cxbHpCheck4.Enabled := False;
		cxcbWkShareNo4.ItemIndex := cxcbWkShareNo.Tag;
	end;
end;

procedure TFrm_WOR01.cxcbWkHp_JoinCNTClick(Sender: TObject);
begin
  if StrToIntDef(edt_Index.Text,0) <> cxcbWkHp_JoinCNT.ItemIndex then
	begin
		if GS_PRJ_AREA = 'S' then cxbHpCheck.Enabled := False else
		if GS_PRJ_AREA = 'O' then cxbHpCheck.Enabled := True;
		cxcbWkShareNo.ItemIndex := 0;
	end else
	begin
		cxbHpCheck.Enabled := False;
		cxcbWkShareNo.ItemIndex := cxcbWkShareNo.Tag;
	end;
end;

procedure TFrm_WOR01.cxcbWkHp_JoinCNTPropertiesChange(Sender: TObject);
begin
if cxcbWkHp_JoinCNT.ItemIndex > 0 then
	begin
		if GS_PRJ_AREA = 'S' then cxcbWkShareNo.Enabled := False else
		if GS_PRJ_AREA = 'O' then cxcbWkShareNo.Enabled := True;
	end else
	begin
		cxcbWkShareNo.Enabled := False;
		cxcbWkShareNo.ItemIndex := 0;
	end;
end;

procedure TFrm_WOR01.cxcbWkmcKeyUp(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if edt_WkHp.Tag = 99 then exit;
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);	
	if cxbHpCheck.Enabled then
	begin
		GMessagebox('단말기 사용체크를 하여주십시오.', CDMSE);
		cxbHpCheck.SetFocus;
		cxbModify.Enabled := true;
		edt_WkHp.Tag := 99;
		Exit;
	end	else
	if cxbHpCheck2.Enabled then
	begin
		GMessagebox('단말기 사용체크를 하여주십시오.', CDMSE);
		cxbHpCheck2.SetFocus;
		cxbModify.Enabled := true;
		edt_WkHp.Tag := 99;
		Exit;
	end	else
	if cxbHpCheck3.Enabled then
	begin
		GMessagebox('단말기 사용체크를 하여주십시오.', CDMSE);
		cxbHpCheck3.SetFocus;
		cxbModify.Enabled := true;
		edt_WkHp.Tag := 99;
		Exit;
	end	else
	if cxbHpCheck4.Enabled then
	begin
		GMessagebox('단말기 사용체크를 하여주십시오.', CDMSE);
		cxbHpCheck4.SetFocus;
		cxbModify.Enabled := true;
		edt_WkHp.Tag := 99;
		Exit;
	end;
end;

procedure TFrm_WOR01.cxcbWkmcMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	if edt_WkHp.Tag = 99 then exit;
	if cxbHpCheck.Enabled then
	begin
		GMessagebox('단말기 사용체크를 하여주십시오.', CDMSE);
		cxbHpCheck.SetFocus;
		cxbModify.Enabled := true;
		edt_WkHp.Tag := 99;
		Exit;
	end	else
	if cxbHpCheck2.Enabled then
	begin
		GMessagebox('단말기 사용체크를 하여주십시오.', CDMSE);
		cxbHpCheck2.SetFocus;
		cxbModify.Enabled := true;
		edt_WkHp.Tag := 99;
		Exit;
	end	else
	if cxbHpCheck3.Enabled then
	begin
		GMessagebox('단말기 사용체크를 하여주십시오.', CDMSE);
		cxbHpCheck3.SetFocus;
		cxbModify.Enabled := true;
		edt_WkHp.Tag := 99;
		Exit;
	end	else
	if cxbHpCheck4.Enabled then
	begin
		GMessagebox('단말기 사용체크를 하여주십시오.', CDMSE);
		cxbHpCheck4.SetFocus;
		cxbModify.Enabled := true;
		edt_WkHp.Tag := 99;
		Exit;
	end;
end;

procedure TFrm_WOR01.proc_SelectSettlement(ASABUN: string);
var
	ls_TxLoad, sNode, sKey : string;
	rv_str: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  slReceive: TStringList;
  ErrCode: integer;
begin
	sKey := '50';

	ls_rxxml := GTx_UnitXmlLoad('C012N1.XML');
  xdom := ComsDomDocument.Create;
  try
    if (not xdom.loadXML(ls_rxxml)) then
    begin
      Screen.Cursor := crDefault;
      ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
	  	Exit;
    end;
    sNode := '/cdms/header/UserID';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
		lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
	  lst_Node.item[0].attributes.getNamedItem('Value').Text := 'WOR0093';
	  sNode := '/cdms/Service/Data/Driver';
    lst_Node := xdom.documentElement.selectNodes(sNode);

    lst_Node.item[0].attributes.getNamedItem('InSabun').Text := En_Coding(GT_USERIF.ID);
	  lst_Node.item[0].attributes.getNamedItem('WkSabun').Text := En_Coding(ASABUN);
    lst_Node.item[0].attributes.getNamedItem('WkStatus').Text := En_Coding(sKey);
    lst_Node.item[0].attributes.getNamedItem('Memo').Text := '';
	  lst_Node.item[0].attributes.getNamedItem('WkAttend').Text := '';
    ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, false) then
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
  finally
    xdom := Nil;
  end;
end;

function TFrm_WOR01.fSetImage( sWkSabun : String ) : Boolean;
var
  ls_TxLoad: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml, ls_Msg_Err: string;
  ErrCode: integer;
	xdom : msDomDocument;
  sBase64Img : AnsiString;
begin
  Result := False;
	try
		ls_TxLoad := GTx_UnitXmlLoad('WOR00020.XML');
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString',        GT_USERIF.ID,   [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',     VERSIONINFO,    [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',     'WOR00020',     [rfReplaceAll]);
    sBase64Img := Base64EncodeBytes(RawToBytes(m_ImgBff, m_ImgSize));
		ls_TxLoad := StringReplace(ls_TxLoad, 'WkSabunStr',    En_Coding(sWkSabun), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ItemStr'  ,    En_Coding(sBase64Img), [rfReplaceAll]);

		Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;
		try
			if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False) then
			begin
        rv_str := slRcvList[0];
				if rv_str <> '' then
				begin
          ls_rxxml := rv_str;
					xdom := ComsDomDocument.Create;
					try
						if not xdom.loadXML(ls_rxxml) then Exit;

            ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
						if ('0000' = ls_Msg_Err) then
            begin
              Result := True;
						end else
						begin
							GMessagebox('기사 사진 저장 중 에러가 발생 하였습니다.' + #10#13 + ls_Msg_Err, CDMSE);
            end;
          finally
            xDom := Nil;
          end;
        end;
      end;
    finally
      FreeAndNil(slRcvList);
      Screen.Cursor := crDefault;
    end;
  except
    on e: exception do
    begin
      Assert(False, E.Message);
    end;
	end;
end;

end.

unit xe_ACC10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, MSXML2_TLB, cxGridExportLink, ShellAPI, cxGraphics, Jpeg, IdFTPList,
  cxLookAndFeels, cxLookAndFeelPainters, cxControls, cxContainer, cxEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, cxLabel, cxCurrencyEdit, cxCheckBox, cxCalendar, cxTimeEdit,
  cxTextEdit, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.ExtCtrls,
  cxGroupBox, IdGlobal, IdBaseComponent, IdComponent, IdTCPConnection, IdSSL,
  IdTCPClient, IdExplicitTLSClientServerBase, IdFTP, IdFTPCommon, Vcl.ExtDlgs,
  cxDropDownEdit, dxGDIPlusClasses, cxGridBandedTableView, cxMaskEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, GradientLabel,
  AdvProgressBar, cxMemo, dxSkinsCore, dxSkinscxPCPainter, cxButtonEdit, cxListBox,
  dxDateRanges, cxCustomListBox, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  TFrm_ACC10 = class(TForm)
    Pnl_L2: TPanel;
		Panel3: TPanel;
    GradientLabel2: TGradientLabel;
    Pnl_Acc: TPanel;
    btn_GOk: TcxButton;
    btn_GNo: TcxButton;
    Edt_uGyeJa: TcxTextEdit;
    Edt_uYekumju: TcxTextEdit;
    pop_date: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Panel4: TPanel;
    cxGrid1: TcxGrid;
    cxGridC: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    GradientLabel3: TGradientLabel;
    Panel5: TPanel;
    Grid3: TcxGrid;
    cxGridA: TcxGridDBTableView;
    cxGridAColumn8: TcxGridDBColumn;
    cxGridAColumn9: TcxGridDBColumn;
    cxGridAColumn6: TcxGridDBColumn;
    cxGridAColumn5: TcxGridDBColumn;
    cxGridAColumn2: TcxGridDBColumn;
    cxGridAColumn3: TcxGridDBColumn;
    cxGridAColumn4: TcxGridDBColumn;
    cxGridAColumn7: TcxGridDBColumn;
    cxGridAColumn1: TcxGridDBColumn;
    cxGridAColumn10: TcxGridDBColumn;
    cxGridAColumn11: TcxGridDBColumn;
    Grid3Level: TcxGridLevel;
    cxLCuBubinCode: TcxLabel;
    de_stDate: TcxDateEdit;
    Label13: TLabel;
    de_edDate: TcxDateEdit;
    RbButton1: TcxButton;
    Btn_Sch1: TcxButton;
    de_stDate1: TcxDateEdit;
    Label1: TLabel;
    de_edDate1: TcxDateEdit;
    cxButton8: TcxButton;
    Btn_Sch2: TcxButton;
    pop_date1: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    N51: TMenuItem;
    cxGridAColumn12: TcxGridDBColumn;
    cxGridCColumn1: TcxGridDBColumn;
    Pnl_Lock: TPanel;
    Edt_PW: TcxTextEdit;
    cxButton55: TcxButton;
    cxButton56: TcxButton;
    tm_AppLock: TTimer;
    Btn_Resrv: TcxButton;
    cxGridAColumn13: TcxGridDBColumn;
    CB_uBank: TcxComboBox;
    cxGridAColumn14: TcxGridDBColumn;
    Pnl_L1: TPanel;
    cxGrid4: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxBranch: TcxGridBandedTableView;
    cxBranchColumn1: TcxGridBandedColumn;
    cxBranchColumn2: TcxGridBandedColumn;
    cxBranchColumn3: TcxGridBandedColumn;
    cxBranchColumn4: TcxGridBandedColumn;
    cxBranchColumn5: TcxGridBandedColumn;
    cxBranchColumn6: TcxGridBandedColumn;
    cxBranchColumn7: TcxGridBandedColumn;
    cxBranchColumn8: TcxGridBandedColumn;
    cxBranchColumn9: TcxGridBandedColumn;
    cxBranchColumn10: TcxGridBandedColumn;
    cxBranchColumn11: TcxGridBandedColumn;
    cxBranchColumn12: TcxGridBandedColumn;
    cxBranchColumn13: TcxGridBandedColumn;
    cxBranchColumn14: TcxGridBandedColumn;
    cxBranchColumn15: TcxGridBandedColumn;
    cxBranchColumn16: TcxGridBandedColumn;
    cxBranchColumn17: TcxGridBandedColumn;
    cxBranchColumn18: TcxGridBandedColumn;
    Btn_S: TcxButton;
    Btn_Request: TcxButton;
    BtnAccCng: TcxButton;
    Btn_A: TcxButton;
    Edt_Error: TcxTextEdit;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxCheck: TcxGridBandedTableView;
    cxGridBandedColumn1: TcxGridBandedColumn;
    cxGridBandedColumn2: TcxGridBandedColumn;
    cxGridBandedColumn3: TcxGridBandedColumn;
    cxGridBandedColumn4: TcxGridBandedColumn;
    cxGridBandedColumn5: TcxGridBandedColumn;
    cxGridBandedColumn6: TcxGridBandedColumn;
    cxGridBandedColumn7: TcxGridBandedColumn;
    cxGridBandedColumn8: TcxGridBandedColumn;
    cxGridBandedColumn9: TcxGridBandedColumn;
    cxGridBandedColumn17: TcxGridBandedColumn;
    cxGridBandedColumn18: TcxGridBandedColumn;
    cxGridLevel2: TcxGridLevel;
    Edt_bBank: TcxTextEdit;
    Edt_bGyeJa: TcxTextEdit;
    Edt_bYekumju: TcxTextEdit;
    Cb_QBank: TcxCheckBox;
    Image1: TImage;
    tm_Check: TTimer;
    Edt_Path1: TcxTextEdit;
    Edt_Path2: TcxTextEdit;
    Edt_Path4: TcxTextEdit;
    Edt_Path3: TcxTextEdit;
    Edt_Path5: TcxTextEdit;
    Btn_Up1: TcxButton;
    Btn_Up2: TcxButton;
    Btn_Up4: TcxButton;
    Btn_Up3: TcxButton;
    Btn_Up5: TcxButton;
    OpenPictureDialog1: TOpenPictureDialog;
    btnBtn_Del1: TcxButton;
    btnBtn_Del2: TcxButton;
    btnBtn_Del3: TcxButton;
    btnBtn_Del4: TcxButton;
    btnBtn_Del5: TcxButton;
    cxBranchColumn19: TcxGridBandedColumn;
    cxBranchColumn20: TcxGridBandedColumn;
    cxButton1: TcxButton;
    Pnl_J: TPanel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    Cb_JGubun: TcxComboBox;
    Image2: TImage;
    Panel1: TPanel;
    ImageS: TImage;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxLabel54: TcxLabel;
    Shape1: TShape;
    Shape5: TShape;
    Shape2: TShape;
    Label2: TLabel;
    cxGroupBox2: TcxGroupBox;
    cxLabel1: TcxLabel;
    Shape3: TShape;
    cxGroupBox3: TcxGroupBox;
    Lbl_T1Name: TcxLabel;
    Shape4: TShape;
    Lbl_JTitle: TcxLabel;
    Shape6: TShape;
    cxGroupBox4: TcxGroupBox;
    Lbl_TName: TcxLabel;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    Shape14: TShape;
    cxLabel8: TcxLabel;
    Shape15: TShape;
    cxLabel9: TcxLabel;
    Shape16: TShape;
    cxLabel10: TcxLabel;
    Shape17: TShape;
    cxLabel11: TcxLabel;
    Shape18: TShape;
    cxLabel13: TcxLabel;
    acAwayTimer1: TTimer;
    LMDProgressNow: TAdvProgressBar;
    cxLblActive: TLabel;
    cxLabel12: TcxLabel;
    Shape19: TShape;
    Btn_Send: TcxButton;
    Pnl_Send: TPanel;
    cxGroupBox5: TcxGroupBox;
    Shape24: TShape;
    Shape25: TShape;
    Shape26: TShape;
    btnSendNo: TcxButton;
    btnSendOK: TcxButton;
    CB_sBank: TcxComboBox;
    Edt_sGyeJa: TcxTextEdit;
    Edt_sYekumju: TcxTextEdit;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    msMemo: TcxMemo;
    cxLabel14: TcxLabel;
    Shape20: TShape;
    PnlAccMgr: TPanel;
    cxGroupBox6: TcxGroupBox;
    Shape21: TShape;
    Shape22: TShape;
    Shape23: TShape;
    cb_mBank: TcxComboBox;
    Edt_mGyeJa: TcxTextEdit;
    Edt_mYekumju: TcxTextEdit;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    Shape27: TShape;
    Edt_mName: TcxTextEdit;
    cxLabel21: TcxLabel;
    btnmSave: TcxButton;
    btnmClose: TcxButton;
    btnmDel: TcxButton;
    btnmAdd: TcxButton;
    cxGrid3: TcxGrid;
    cxGridViewAccMgr: TcxGridDBTableView;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    btnAccMgr: TcxButton;
    cxBranchColumn21: TcxGridBandedColumn;
    cxBranchColumn22: TcxGridBandedColumn;
    cxBranchColumn23: TcxGridBandedColumn;
    cxBranchColumn24: TcxGridBandedColumn;
    pop_Menu: TPopupMenu;
    N6: TMenuItem;
    N7: TMenuItem;
    cxCheckBox1: TcxCheckBox;
    Lbl_mName: TcxLabel;
    Shape28: TShape;
    btnmSch: TcxButton;
    cxGridDBColumn52: TcxGridDBColumn;
    PnlAccList: TPanel;
    cxLbAccList: TcxListBox;
    cxButton2: TcxButton;
    cxButton5: TcxButton;
    cxLabel22: TcxLabel;
    edtBranch: TcxTextEdit;
    lbSearchBranch: TcxLabel;
    cxGrid5: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridDBColumn55: TcxGridDBColumn;
    cxGridDBColumn56: TcxGridDBColumn;
    cxGridDBColumn57: TcxGridDBColumn;
    cxGridDBColumn58: TcxGridDBColumn;
    cxGridDBColumn59: TcxGridDBColumn;
    cxGridDBColumn60: TcxGridDBColumn;
    cxGridDBColumn61: TcxGridDBColumn;
    cxGridDBColumn62: TcxGridDBColumn;
    cxGridDBColumn63: TcxGridDBColumn;
    cxGridDBColumn64: TcxGridDBColumn;
    cxGridDBColumn65: TcxGridDBColumn;
    cxGridDBColumn66: TcxGridDBColumn;
    cxGridDBColumn67: TcxGridDBColumn;
    cxGridDBColumn68: TcxGridDBColumn;
    cxGridDBColumn69: TcxGridDBColumn;
    cxGridDBColumn70: TcxGridDBColumn;
    cxBranchOrg: TcxGridBandedTableView;
    cxGridBandedColumn10: TcxGridBandedColumn;
    cxGridBandedColumn11: TcxGridBandedColumn;
    cxGridBandedColumn12: TcxGridBandedColumn;
    cxGridBandedColumn13: TcxGridBandedColumn;
    cxGridBandedColumn14: TcxGridBandedColumn;
    cxGridBandedColumn15: TcxGridBandedColumn;
    cxGridBandedColumn16: TcxGridBandedColumn;
    cxGridBandedColumn19: TcxGridBandedColumn;
    cxGridBandedColumn20: TcxGridBandedColumn;
    cxGridBandedColumn21: TcxGridBandedColumn;
    cxGridBandedColumn22: TcxGridBandedColumn;
    cxGridBandedColumn23: TcxGridBandedColumn;
    cxGridBandedColumn24: TcxGridBandedColumn;
    cxGridBandedColumn25: TcxGridBandedColumn;
    cxGridBandedColumn26: TcxGridBandedColumn;
    cxGridBandedColumn27: TcxGridBandedColumn;
    cxGridBandedColumn28: TcxGridBandedColumn;
    cxGridBandedColumn29: TcxGridBandedColumn;
    cxGridBandedColumn30: TcxGridBandedColumn;
    cxGridBandedColumn31: TcxGridBandedColumn;
    cxGridBandedColumn32: TcxGridBandedColumn;
    cxGridBandedColumn33: TcxGridBandedColumn;
    cxGridBandedColumn34: TcxGridBandedColumn;
    cxGridBandedColumn35: TcxGridBandedColumn;
    cxGridLevel5: TcxGridLevel;
    btnExcelA1: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxGridAColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure BtnAccCngClick(Sender: TObject);
    procedure btn_GNoClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RbButton1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxGridCColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxButton8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure Btn_Sch2Click(Sender: TObject);
    procedure Btn_RequestClick(Sender: TObject);
    procedure GradientLabel4MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Edt_uYekumjuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_GOkClick(Sender: TObject);
    procedure Btn_Sch1Click(Sender: TObject);
    procedure cxGridACellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure GradientLabel5MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure tm_AppLockTimer(Sender: TObject);
    procedure cxButton55Click(Sender: TObject);
    procedure cxButton56Click(Sender: TObject);
    procedure Edt_PWKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridACanSelectRecord(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure Btn_ResrvClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxBranchColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxBandColumn10PropertiesEditValueChanged(Sender: TObject);
    procedure cxBranchStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure Btn_AClick(Sender: TObject);
    procedure Btn_SClick(Sender: TObject);
    procedure cxBranchColumn13PropertiesChange(Sender: TObject);
    procedure cxBranchColumn13PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure Cb_QBankClick(Sender: TObject);
    procedure CB_uBankKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tm_CheckTimer(Sender: TObject);
    procedure cxGridACustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure Btn_Up1Click(Sender: TObject);
    procedure Btn_Up2Click(Sender: TObject);
    procedure Btn_Up3Click(Sender: TObject);
    procedure Btn_Up4Click(Sender: TObject);
    procedure Btn_Up5Click(Sender: TObject);
    procedure btnBtn_Del1Click(Sender: TObject);
    procedure btnBtn_Del2Click(Sender: TObject);
    procedure btnBtn_Del3Click(Sender: TObject);
    procedure btnBtn_Del4Click(Sender: TObject);
    procedure btnBtn_Del5Click(Sender: TObject);
    procedure IdFTP1Work(Sender: TObject; AWorkMode: TWorkMode;
      const AWorkCount: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure GradientLabel18MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure cxButton3Click(Sender: TObject);
    procedure Edt_Path1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnCloseClick(Sender: TObject);
    procedure acAwayTimer1Timer(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Btn_SendClick(Sender: TObject);
    procedure btnSendNoClick(Sender: TObject);
    procedure btnSendOKClick(Sender: TObject);
    procedure btnmAddClick(Sender: TObject);
    procedure btnmCloseClick(Sender: TObject);
    procedure btnAccMgrClick(Sender: TObject);
    procedure cxBranchInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure cxBranchColumn24PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure N6Click(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure btnmSchClick(Sender: TObject);
    procedure btnmSaveClick(Sender: TObject);
    procedure cxGridViewAccMgrCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnmDelClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxLbAccListDblClick(Sender: TObject);
    procedure Edt_uYekumjuKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure msMemoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lbSearchBranchClick(Sender: TObject);
    procedure edtBranchEnter(Sender: TObject);
    procedure edtBranchExit(Sender: TObject);
    procedure edtBranchFocusChanged(Sender: TObject);
    procedure edtBranchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExcelA1Click(Sender: TObject);
    procedure edtBranchPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    Scb_BankCd, scb_BankNm : TStringList;

 		sl_BrAccList : TStringList;
		slBrListNm, slBrListCd, slBrInfo, searchBRlist, searchBRCodelist : TStringList;
    procedure proc_init;
    procedure proc_BankLog;
    procedure proc_CashLog;
    procedure proc_recieve(slList: TStringList);
    procedure proc_Branch;
    procedure proc_Bank;
    function ResponseProcess(AXml: string; var AMsg: String): Boolean;
    procedure proc_Check;
    procedure proc_Head_GetInfo;

    procedure proc_File_Load( EdtFileName : TcxTextEdit; nGubun : Integer );
    procedure proc_save_image(sBaseName : AnsiString; sFileName: string);
    function AccUpLoadFile(sFN1, sFN2, sFN3, sFN4, sFN5, sFTPPath: string): Boolean;
    function GetFileSize( sFileName : String ) : Integer;
    function funcAccountCheck(sBrNo, sBankCd, sAccount : String; iAmt : Integer) : String;
    procedure proc_pop_Menu_AccList( sBrNo : String );
    procedure mniUserClick(Sender: TObject);
    procedure proc_AccList(sBrNo: String);
 		procedure proc_FindGridBranch(AStr : string);
  public
    { Public declarations }
  end;

var
  Frm_ACC10: TFrm_ACC10;
  sExcelFileName : String;

implementation


{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_xml,
  xe_packet, FastStringFuncs, xe_Flash;

procedure TFrm_ACC10.proc_init;
Var i : Integer;
begin
   // 그리드 초기화
   cxBranch.Columns[00].DataBinding.ValueType := 'Integer';     // 00 No
   cxBranch.Columns[01].DataBinding.ValueType := 'String';      // 01 지사명
	 cxBranch.Columns[02].DataBinding.ValueType := 'String';      // 02 은행명
   cxBranch.Columns[03].DataBinding.ValueType := 'String';      // 03 출금계좌
   cxBranch.Columns[04].DataBinding.ValueType := 'String';      // 04 예금주
   cxBranch.Columns[05].DataBinding.ValueType := 'Currency';    // 05 본사정산금액
   cxBranch.Columns[06].DataBinding.ValueType := 'Currency';    // 06 지사정산금액
   cxBranch.Columns[07].DataBinding.ValueType := 'Currency';    // 07 설정금액
   cxBranch.Columns[08].DataBinding.ValueType := 'Currency';    // 08 잔액
   cxBranch.Columns[09].DataBinding.ValueType := 'String';      // 09 정산구분
   cxBranch.Columns[10].DataBinding.ValueType := 'Boolean';     // 10 예약
   cxBranch.Columns[11].DataBinding.ValueType := 'DateTime';    // 11 예약일
   cxBranch.Columns[12].DataBinding.ValueType := 'DateTime';    // 12 예약시
   cxBranch.Columns[13].DataBinding.ValueType := 'Currency';    // 13 출금액
   cxBranch.Columns[14].DataBinding.ValueType := 'String';      // 14 적요
   cxBranch.Columns[15].DataBinding.ValueType := 'String';      // 15 메모
   cxBranch.Columns[16].DataBinding.ValueType := 'String';      // 16 휴대폰
   cxBranch.Columns[17].DataBinding.ValueType := 'String';      // 17 지사코드
   cxBranch.Columns[18].DataBinding.ValueType := 'String';      // 18 은행코드
   cxBranch.Columns[19].DataBinding.ValueType := 'String';      // 19 정산코드
   cxBranch.DataController.SetRecordCount(0);

	 // 그리드 초기화
	 cxBranchOrg.Columns[00].DataBinding.ValueType := 'Integer';     // 00 No
	 cxBranchOrg.Columns[01].DataBinding.ValueType := 'String';      // 01 지사명
	 cxBranchOrg.Columns[02].DataBinding.ValueType := 'String';      // 02 은행명
	 cxBranchOrg.Columns[03].DataBinding.ValueType := 'String';      // 03 출금계좌
	 cxBranchOrg.Columns[04].DataBinding.ValueType := 'String';      // 04 예금주
	 cxBranchOrg.Columns[05].DataBinding.ValueType := 'Currency';    // 05 본사정산금액
	 cxBranchOrg.Columns[06].DataBinding.ValueType := 'Currency';    // 06 지사정산금액
	 cxBranchOrg.Columns[07].DataBinding.ValueType := 'Currency';    // 07 설정금액
	 cxBranchOrg.Columns[08].DataBinding.ValueType := 'Currency';    // 08 잔액
	 cxBranchOrg.Columns[09].DataBinding.ValueType := 'String';      // 09 정산구분
	 cxBranchOrg.Columns[10].DataBinding.ValueType := 'Boolean';     // 10 예약
	 cxBranchOrg.Columns[11].DataBinding.ValueType := 'DateTime';    // 11 예약일
	 cxBranchOrg.Columns[12].DataBinding.ValueType := 'DateTime';    // 12 예약시
	 cxBranchOrg.Columns[13].DataBinding.ValueType := 'Currency';    // 13 출금액
	 cxBranchOrg.Columns[14].DataBinding.ValueType := 'String';      // 14 적요
	 cxBranchOrg.Columns[15].DataBinding.ValueType := 'String';      // 15 메모
	 cxBranchOrg.Columns[16].DataBinding.ValueType := 'String';      // 16 휴대폰
	 cxBranchOrg.Columns[17].DataBinding.ValueType := 'String';      // 17 지사코드
	 cxBranchOrg.Columns[18].DataBinding.ValueType := 'String';      // 18 은행코드
	 cxBranchOrg.Columns[19].DataBinding.ValueType := 'String';      // 19 정산코드
	 cxBranchOrg.DataController.SetRecordCount(0);

   // 그리드 초기화
   cxCheck.Columns[00].DataBinding.ValueType := 'Integer';
   cxCheck.Columns[01].DataBinding.ValueType := 'String';
   cxCheck.Columns[02].DataBinding.ValueType := 'String';
   cxCheck.Columns[03].DataBinding.ValueType := 'String';
   cxCheck.Columns[04].DataBinding.ValueType := 'String';
   cxCheck.Columns[05].DataBinding.ValueType := 'Currency';
   cxCheck.Columns[06].DataBinding.ValueType := 'Currency';
   cxCheck.Columns[07].DataBinding.ValueType := 'Currency';
   cxCheck.Columns[08].DataBinding.ValueType := 'Currency';
   cxCheck.Columns[09].DataBinding.ValueType := 'String';
   cxCheck.Columns[10].DataBinding.ValueType := 'String';
   cxCheck.DataController.SetRecordCount(0);

   // 그리드 초기화
   cxGridA.Columns[00].DataBinding.ValueType := 'Integer';
   cxGridA.Columns[01].DataBinding.ValueType := 'String';
   cxGridA.Columns[02].DataBinding.ValueType := 'Currency';
   cxGridA.Columns[03].DataBinding.ValueType := 'String';
   cxGridA.Columns[04].DataBinding.ValueType := 'String';
   cxGridA.Columns[05].DataBinding.ValueType := 'Currency';
   cxGridA.Columns[06].DataBinding.ValueType := 'String';
   cxGridA.Columns[07].DataBinding.ValueType := 'String';
   cxGridA.Columns[08].DataBinding.ValueType := 'String';
   cxGridA.Columns[09].DataBinding.ValueType := 'String';
   cxGridA.Columns[10].DataBinding.ValueType := 'String';
   cxGridA.Columns[11].DataBinding.ValueType := 'String';
   cxGridA.Columns[12].DataBinding.ValueType := 'String';
   cxGridA.Columns[13].DataBinding.ValueType := 'String';
   cxGridA.DataController.SetRecordCount(0);

   for i := 0 to cxGridC.ColumnCount - 1 do
   begin
     if i in [0, 9] then
       cxGridC.Columns[i].DataBinding.ValueType := 'Integer' else
     if i in [5, 6] then
       cxGridC.Columns[i].DataBinding.ValueType := 'Currency'
     else
       cxGridC.Columns[i].DataBinding.ValueType := 'String';
   end;
   cxGridC.DataController.SetRecordCount(0);

   for i := 0 to cxGridViewAccMgr.ColumnCount - 1 do
   begin
     if i in [0] then
       cxGridViewAccMgr.Columns[i].DataBinding.ValueType := 'Integer'
     else
       cxGridViewAccMgr.Columns[i].DataBinding.ValueType := 'String';
   end;
   cxGridViewAccMgr.DataController.SetRecordCount(0);

   if (GS_PRJ_AREA = 'S') AND (GT_USERIF.HD = 'A100' ) And (GT_USERIF.BR = 'B100') then
   begin
     Btn_A.Left := 807;
     Btn_A.Width := 77;
     Btn_Request.Left := 890;
     Btn_Request.Width := 77;
     Btn_Send.Left := 971;
     Btn_Send.Width := 77;
     BtnAccCng.Left := 1052;
     BtnAccCng.Width := 77;

     Btn_Send.Visible := True;
   end else
   begin
     Btn_A.Left := 807;
     Btn_A.Width := 106;
     Btn_Request.Left := 916;
     Btn_Request.Width := 106;
     BtnAccCng.Left := 1026;
     BtnAccCng.Width := 106;

     Btn_Send.Visible := False;
   end;
end;

procedure TFrm_ACC10.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_ACC10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_ACC10.FormCreate(Sender: TObject);
var
  Save: LongInt; // 폼타이틀 제거용.
  i : Integer;
begin
  try
    // 날짜형식이 'yy/mm/dd'일경우 오류 발생 가능성으로 인해 자체 Display 포맷 변경
    for i := 0 to ComponentCount - 1 do
    begin
      if Components[i] is TcxDateEdit then
      begin
        (Components[i] as TcxDateEdit).Properties.DisplayFormat :=  'yyyy/mm/dd';
        (Components[i] as TcxDateEdit).Properties.EditFormat    :=  'yyyy/mm/dd';
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

  proc_init;
end;

procedure TFrm_ACC10.cxGridAColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGridA.ColumnCount - 1 do
    begin
      if i <> AColumn.Index then
      begin
        cxGridA.Columns[i].SortIndex := -1;
        cxGridA.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGridA.Columns[AColumn.Index].SortOrder = soNone) or
      (cxGridA.Columns[AColumn.Index].SortOrder = soDescending) then
      cxGridA.Columns[AColumn.Index].SortOrder := soAscending
    else
      if cxGridA.Columns[AColumn.Index].SortOrder = soAscending then
      cxGridA.Columns[AColumn.Index].SortOrder := soDescending;
    cxGridA.Columns[AColumn.Index].SortIndex := 0;
    cxGridA.DataController.FocusedRowIndex := 0;
  except
    on e: Exception do
    begin
      sTemp := 'TfrmACC10[cxGridAColumnHeaderClick]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_ACC10.BtnAccCngClick(Sender: TObject);
Var iRow : Integer;
begin
  if ( (GT_USERIF.LV = '60') and (GT_USERIF.Master = 'y') ) Or
     ( (GT_USERIF.LV = '40') and (GT_USERIF.Master = 'y') ) then
  begin

  end else
  begin
    ShowMessage('본사마스터 및 지사마스터 관리자만 계좌변경요청 할수 있습니다');
    Exit;
  end;

  if cxBranch.DataController.RecordCount = 0 then  Exit;

  iRow := cxBranch.DataController.FocusedRecordIndex;

  if iRow < 0 then
  begin
    ShowMessage('계좌 변경 지사를 선택하십시오.');
    Exit;
  end;

  Cb_QBank.Checked := False;
  Lbl_TName.Caption := cxBranch.DataController.Values[iRow, 01];
  Lbl_TName.Hint := cxBranch.DataController.Values[iRow, 17];
  Edt_bBank.Text  := cxBranch.DataController.Values[iRow, 02];
	Edt_bBank.Hint := cxBranch.DataController.Values[iRow, 18];
	Edt_bGyeJa.Text := cxBranch.DataController.Values[iRow, 03];
  Edt_bYekumju.Text := cxBranch.DataController.Values[iRow, 04];

  CB_uBank.ItemIndex := -1;
  Edt_uGyeJa.Clear;
  Edt_uYekumju.Clear;
  LMDProgressNow.Position := 0;

  ImageS.Picture := nil;
    
  Edt_Path1.Clear;
  Edt_Path1.Hint := '0';
  Edt_Path2.Clear;
  Edt_Path2.Hint := '0';
  Edt_Path3.Clear;
  Edt_Path3.Hint := '0';
  Edt_Path4.Clear;
  Edt_Path4.Hint := '0';
  Edt_Path5.Clear;
  Edt_Path5.Hint := '0';

  if GT_USERIF.LV = '60' then
    Cb_QBank.Visible := True
  else if GT_USERIF.LV = '40' then
    Cb_QBank.Visible := False;

  Pnl_L1.Enabled := False;

  Pnl_Acc.Left := (Width  - Pnl_Acc.Width ) div 2;
  Pnl_Acc.Top  := (Height - Pnl_Acc.Height) div 2;
  Pnl_Acc.Visible := True;
  Pnl_Acc.BringToFront;
  CB_uBank.SetFocus;
end;

procedure TFrm_ACC10.btn_GNoClick(Sender: TObject);
begin
  Pnl_Acc.Visible := False;
  Pnl_L1.Enabled := True;
end;

procedure TFrm_ACC10.N1Click(Sender: TObject);
begin
  SetDateControl(de_stDate, de_edDate, tdToday);
end;

procedure TFrm_ACC10.N2Click(Sender: TObject);
begin
  SetDateControl(de_stDate, de_edDate, tdYesterday);
end;

procedure TFrm_ACC10.N3Click(Sender: TObject);
begin
  SetDateControl(de_stDate, de_edDate, tdOneWeek);
end;

procedure TFrm_ACC10.N4Click(Sender: TObject);
begin
  SetDateControl(de_stDate, de_edDate, tdOneMonth);
end;

procedure TFrm_ACC10.N5Click(Sender: TObject);
begin
  SetDateControl(de_stDate, de_edDate, tdStartMonth);
end;

procedure TFrm_ACC10.N6Click(Sender: TObject);
Var
   iRow : Integer;
begin
  iRow := cxBranch.DataController.FocusedRecordIndex;
  if iRow = -1 then Exit;

  cxBranch.DataController.Values[iRow, 20] := cxBranch.DataController.Values[iRow, 02];
  cxBranch.DataController.Values[iRow, 21] := cxBranch.DataController.Values[iRow, 03];
  cxBranch.DataController.Values[iRow, 22] := cxBranch.DataController.Values[iRow, 04];
end;

procedure TFrm_ACC10.FormShow(Sender: TObject);
begin
  fSetFont(Frm_ACC10, GS_FONTNAME);

  Scb_BankCd := TStringList.Create;
  scb_BankNm := TStringList.Create;
  sl_BrAccList := TStringList.Create;

	slBRListNm := TStringList.Create;
	slBrListCd := TStringList.Create;
	slBrInfo   := TStringList.Create;
	searchBRlist := TStringList.Create;
	searchBRCodelist  := TStringList.Create;

  Btn_S.Click;
  N4.Click;
  N11.Click;

  proc_Bank;
  cxCheckBox1Click(cxCheckBox1);
end;

procedure TFrm_ACC10.RbButton1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  pop_date.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_ACC10.cxGridCColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGridC.ColumnCount - 1 do
    begin
      if i <> AColumn.Index then
      begin
        cxGridC.Columns[i].SortIndex := -1;
        cxGridC.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGridC.Columns[AColumn.Index].SortOrder = soNone) or
      (cxGridC.Columns[AColumn.Index].SortOrder = soDescending) then
      cxGridC.Columns[AColumn.Index].SortOrder := soAscending
    else
      if cxGridC.Columns[AColumn.Index].SortOrder = soAscending then
      cxGridC.Columns[AColumn.Index].SortOrder := soDescending;
    cxGridC.Columns[AColumn.Index].SortIndex := 0;
    cxGridC.DataController.FocusedRowIndex := 0;
  except
    on e: Exception do
    begin
      sTemp := 'TfrmACC10[cxGridCColumnHeaderClick]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_ACC10.cxGridViewAccMgrCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
Var idx : Integer;
begin
  idx := cxGridViewAccMgr.DataController.FocusedRecordIndex;
  if idx < 0 then Exit;

  Edt_mName.Text := cxGridViewAccMgr.DataController.Values[idx, 01];
  cb_mBank.ItemIndex := Scb_BankCd.IndexOf(cxGridViewAccMgr.DataController.Values[idx, 06]);
  Edt_mGyeJa.Text := cxGridViewAccMgr.DataController.Values[idx, 03];
  Edt_mGyeJa.Enabled := False;
  Edt_mYekumju.Text := cxGridViewAccMgr.DataController.Values[idx, 04];
end;

procedure TFrm_ACC10.cxLbAccListDblClick(Sender: TObject);
begin
  cxButton5.Click;
end;

procedure TFrm_ACC10.edtBranchEnter(Sender: TObject);
begin
	lbSearchBranch.Visible := False;
end;

procedure TFrm_ACC10.edtBranchExit(Sender: TObject);
begin
	lbSearchBranch.Visible := (edtBranch.Text = '');
end;

procedure TFrm_ACC10.edtBranchFocusChanged(Sender: TObject);
begin
	lbSearchBranch.Visible := ( Not edtBranch.Focused ) And (edtBranch.Text = '');
end;

procedure TFrm_ACC10.edtBranchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	SetDebugeWrite('TFrm_ACC10.edtBranchKeyDown');
	if Key = VK_RETURN then
	begin
		Btn_S.Click;
	end;
end;

procedure TFrm_ACC10.edtBranchPropertiesChange(Sender: TObject);
begin
	if ( Not edtBranch.Focused ) then
		lbSearchBranch.Visible := (edtBranch.Text = ''); // 상담메모 입력 잔상.
end;

procedure TFrm_ACC10.proc_CashLog;
var
  XmlData, Param, ErrMsg, startDate, endDate : string;
  xdom: msDomDocument;
	lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	I, ErrCode, iCnt, iRow : Integer;
	j : integer;
begin
  if (de_stDate.Text = '') or (de_edDate.Text = '') then
  begin
    de_stDate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
    de_edDate.Date := de_stDate1.Date + 1;
  end;
  startDate := StringReplace(DateToStr(de_stDate.Date), '-', '', [rfReplaceAll]) + '000000';
  endDate   := StringReplace(DateToStr(de_edDate.Date), '-', '', [rfReplaceAll]) + '235959';

  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := GT_SEL_BRNO.HDNO + '│'
  else
  begin
    if GT_USERIF.LV = '60' then
      Param := GT_USERIF.HD + '│'
    else if GT_USERIF.LV = '40' then
      Param := GT_USERIF.HD + '│' + GT_USERIF.BR;
  end;

  Param := Param + '│' + startDate + '│' + endDate;

	try
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel05('GETPAYOUTLIST', 'PAY_OUT.GET_PAY_OUT_LIST', '1000', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('출금 현황 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				FreeAndNil(slList);
				Exit;
			end;

			xdom := ComsDomDocument.Create;
			try
				iCnt := 1;
				Frm_Flash.cxPBar1.Properties.Max := slList.Count;
				Frm_Flash.cxPBar1.Position := 0;
				cxGridA.DataController.SetRecordCount(0);
				cxGridA.BeginUpdate;
				for j := 0 to slList.Count - 1 do
				begin
					Frm_Flash.cxPBar1.Position := j + 1;
					Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
					Application.ProcessMessages;
					xmlData := slList.Strings[j];
					xdom.loadXML(XmlData);
					lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');

					if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
					begin
						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
						ls_Rcrd := TStringList.Create;
						try
							iRow := 0;
							for I := 0 to lst_Result.length - 1 do
							begin
								// 0일련번호, 1지사코드, 2지사명, 3은행명, 4계좌번호, 5예금주, 6적요, 7메모, 8휴대폰번호, 9출금금액, 10잔액, 11요청일자, 12예약일자, 13상태(0.완료/1.예약/2.미처리), 14요청결과
								GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);

								iCnt := cxGridA.DataController.AppendRecord;
								cxGridA.DataController.Values[iCnt, 00] := iRow + 1;
								cxGridA.DataController.Values[iCnt, 01] := ls_Rcrd[02];  //지사명
								cxGridA.DataController.Values[iCnt, 02] := ls_Rcrd[10];  //잔액
								cxGridA.DataController.Values[iCnt, 03] := ls_Rcrd[13];  //상태
								cxGridA.DataController.Values[iCnt, 04] := ls_Rcrd[14];  //요청결과
								cxGridA.DataController.Values[iCnt, 05] := ls_Rcrd[09];  //출금금액
								if ( ls_Rcrd[13] = '예약' ) Or ( ls_Rcrd[14] = '예약 취소' ) then
									cxGridA.DataController.Values[iCnt, 06] := ls_Rcrd[12]  //예약일자
								else
									cxGridA.DataController.Values[iCnt, 06] := ls_Rcrd[11];  //요청일자
								cxGridA.DataController.Values[iCnt, 07] := ls_Rcrd[03];  //은행명
								cxGridA.DataController.Values[iCnt, 08] := ls_Rcrd[04];  //계좌번호
								cxGridA.DataController.Values[iCnt, 09] := ls_Rcrd[05];  //예금주
								cxGridA.DataController.Values[iCnt, 10] := ls_Rcrd[06];  //적요
								cxGridA.DataController.Values[iCnt, 11] := ls_Rcrd[01];  //지사코드
								cxGridA.DataController.Values[iCnt, 12] := ls_Rcrd[00];  //일련번호
								cxGridA.DataController.Values[iCnt, 13] := ls_Rcrd[07];  //메모
								Inc(iRow);
							end;
						finally
							ls_Rcrd.Free;
						end;
					end;
				end;
			finally
				cxGridA.EndUpdate;
				FreeAndNil(slList);
				xdom := Nil;
			end;
		finally
			Frm_Flash.hide;    
			Screen.Cursor := crDefault;
			FreeAndNil(slList);
		end;
	except
		on E: Exception do
		begin
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_ACC10.proc_BankLog;
var
  sNode, ls_TxLoad, startDate, endDate, sBrNo : string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;

  iBrNo, iRow : Integer;
begin
  iRow := cxGridA.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;
  iBrNo := cxGridA.GetColumnByFieldName('지사코드').Index;
  sBrNo := cxGridA.DataController.Values[iRow, iBrNo];

  ls_rxxml := GTx_UnitXmlLoad('SEL04.XML');
  xdom := ComsDOMDocument.Create;
  try
    if (not xdom.loadXML(ls_rxxml)) then
    begin
      Screen.Cursor := crDefault;
      ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
      Exit;
    end;

    sNode := '/cdms/header/UserID';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text :=
      En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := 'BANKACC01';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Key').Text := 'BRCASHS03'; //지사

    if (de_stDate1.Text = '') or (de_edDate1.Text = '') then
    begin
      de_stDate1.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      de_edDate1.Date := de_stDate1.Date + 1;
    end;
    startDate := StringReplace(DateToStr(de_stDate1.Date), '-', '', [rfReplaceAll]) + '000000';
    endDate   := StringReplace(DateToStr(de_edDate1.Date), '-', '', [rfReplaceAll]) + '235959';

    //노드를 복사해서 param을 생성한다....
    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_clon := lst_node.item[0].cloneNode(True);
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].appendChild(lst_clon);

    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_clon := lst_node.item[0].cloneNode(True);
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].appendChild(lst_clon);

    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Seq').Text := '1';
    lst_Node.item[0].attributes.getNamedItem('Value').Text := startDate;
    lst_Node.item[1].attributes.getNamedItem('Seq').Text := '2';
    lst_Node.item[1].attributes.getNamedItem('Value').Text := endDate;
    lst_Node.item[2].attributes.getNamedItem('Seq').Text := '3';
    lst_Node.item[2].attributes.getNamedItem('Value').Text := sBrNo;

    ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;
    Screen.Cursor := crHourGlass;
    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 30000) then
      begin
        Application.ProcessMessages;
        proc_recieve(slReceive);
      end;
    finally
      FreeAndNil(slReceive);
      Screen.Cursor := crDefault;
      Frm_Flash.Hide;
    end;
  finally
    xDom := Nil;
  end;
end;

procedure TFrm_ACC10.cxButton8MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  pop_date1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_ACC10.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked then
  begin
    cxBranch.Bands[15].Visible := True;
    cxBranch.Bands[16].Visible := True;
    cxBranch.Bands[17].Visible := True;
    cxBranch.Bands[18].Visible := True;
    cxBranch.Bands[19].Visible := True;
  end else
  begin
    cxBranch.Bands[15].Visible := False;
    cxBranch.Bands[16].Visible := False;
    cxBranch.Bands[17].Visible := False;
    cxBranch.Bands[18].Visible := False;
    cxBranch.Bands[19].Visible := False;
  end;
end;

procedure TFrm_ACC10.N11Click(Sender: TObject);
begin
  SetDateControl(de_stDate1, de_edDate1, tdToday);
end;

procedure TFrm_ACC10.N21Click(Sender: TObject);
begin
  SetDateControl(de_stDate1, de_edDate1, tdYesterday);
end;

procedure TFrm_ACC10.N31Click(Sender: TObject);
begin
  SetDateControl(de_stDate1, de_edDate1, tdOneWeek);
end;

procedure TFrm_ACC10.N51Click(Sender: TObject);
begin
  SetDateControl(de_stDate1, de_edDate1, tdStartMonth);
end;

procedure TFrm_ACC10.N41Click(Sender: TObject);
begin
  SetDateControl(de_stDate1, de_edDate1, tdOneMonth);
end;

procedure TFrm_ACC10.proc_recieve(slList: TStringList);
var
  xdom: msDomDocument;
  ls_MSG_Err, ls_ClientKey, sTemp: string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd : TStringList;
  i, j, iRow, iCnt, iNo : Integer;
  ls_rxxml: WideString;
begin
  try
    xdom := ComsDomDocument.Create;
    try
      ls_rxxml := slList[0];
      if not xdom.loadXML(ls_rxxml) then
      begin
        Screen.Cursor := crDefault;
        Exit;
      end;
      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_ClientKey := GetXmlClientKey(ls_rxxml);
        if ls_ClientKey = 'BANKACC01' then
        begin
          cxGridC.BeginUpdate;
          cxGridC.DataController.SetRecordCount(0);
          iNo := 0;
          iCnt := 0;
          for j := 0 to slList.Count - 1 do
          begin
            ls_rxxml := slList.Strings[j];
            if not xdom.loadXML(ls_rxxml) then
            begin
              Exit;
            end;
            iCnt := iCnt + GetXmlRecordCount(ls_rxxml);
          end;

          Frm_Flash.cxPBar1.Properties.Max := slList.Count;
          Frm_Flash.cxPBar1.Position := 0;

          for j := 0 to slList.Count - 1 do
          begin
//-            frm_Main.sbar_Message.Panels[4].Text := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
            Frm_Flash.cxPBar1.Position := j + 1;
            Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
            Application.ProcessMessages;
            ls_rxxml := slList.Strings[j];
            if not xdom.loadXML(ls_rxxml) then
            begin
              Exit;
            end;

            if (0 < GetXmlRecordCount(ls_rxxml)) then
            begin
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

              ls_Rcrd := TStringList.Create;
              try
                for i := 0 to lst_Result.length - 1 do
                begin
                  GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                  if not Check_ID(GT_USERIF.ID, ls_Rcrd[0]) then
                  begin
                    iRow := cxGridC.DataController.AppendRecord;
                    // 1 Record 추가
                    cxGridC.DataController.Values[iRow, 0] := IntToStr(iCnt - iNo);
                    cxGridC.DataController.Values[iRow, 1] := ls_Rcrd[1];
                    sTemp := ls_Rcrd[2];
                    if sTemp <> '' then
                    begin
                      sTemp := StringReplace(sTemp, '-', '', [rfReplaceAll]);
                      sTemp := StringReplace(sTemp, ':', '', [rfReplaceAll]);
                      sTemp := StringReplace(sTemp, ' ', '', [rfReplaceAll]);
                      sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp,  5, 2) + '-' + Copy(sTemp,  7, 2) + ' '
                             + Copy(sTemp, 9, 2) + ':' + Copy(sTemp, 11, 2) + ':' + Copy(sTemp, 13, 2);
                    end;
                    cxGridC.DataController.Values[iRow, 2] := sTemp;
                    cxGridC.DataController.Values[iRow, 3] := ls_Rcrd[3];
                    cxGridC.DataController.Values[iRow, 4] := ls_Rcrd[4];
                    cxGridC.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[5], 0);
                    cxGridC.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[6], 0);
                    cxGridC.DataController.Values[iRow, 7] := ls_Rcrd[7];
                    cxGridC.DataController.Values[iRow, 8] := ls_Rcrd[8];
                    cxGridC.DataController.Values[iRow, 9] := IntToStr(iNo+1);
                    Inc(iNo);
                  end;
                end;
              finally
                ls_Rcrd.Free;
              end;
            end;
          end;
          cxGridC.Columns[9].SortOrder := soDescending;
          cxGridC.Columns[9].SortIndex := -1;

          cxGridC.EndUpdate;

          frm_Main.sbar_Message.Panels[4].Text := '';
        end;
      end else
      begin
				GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
        Screen.Cursor := crDefault;
        Exit;
      end;
    finally
      xdom := Nil;
    end;
  except
    Screen.Cursor := crDefault;
    Exit;
  end;
end;

procedure TFrm_ACC10.Btn_Sch2Click(Sender: TObject);
begin
  cxGridC.DataController.SetRecordCount(0);
  proc_BankLog;
end;

procedure TFrm_ACC10.proc_Branch;
var
  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd, slList: TStringList;
	I, ErrCode, iCnt, j : Integer;
begin
	if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := GT_SEL_BRNO.HDNO + '│'
  else
  begin
    if GT_USERIF.LV = '60' then
      Param := GT_USERIF.HD + '│'
    else if GT_USERIF.LV = '40' then
      Param := GT_USERIF.HD + '│' + GT_USERIF.BR;
  end;

	slList := TStringList.Create;
	Screen.Cursor := crHourGlass;
	Try
		if not RequestBasePaging(GetSel05('GETCASHBRLIST', 'PAY_OUT.GET_CASH_BR_LIST', '100', Param), slList, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('지사리스트 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Screen.Cursor := crDefault;
			FreeAndNil(slList);
			Exit;
		end;

		xdom := ComsDomDocument.Create;
		try
			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			cxBranch.DataController.SetRecordCount(0);
			cxBranch.BeginUpdate;

      cxBranchOrg.DataController.SetRecordCount(0);
			cxBranchOrg.BeginUpdate;
			for j := 0 to slList.Count - 1 do
			begin
				Frm_Flash.cxPBar1.Position := j + 1;
				Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
				Application.ProcessMessages;
				xmlData := slList.Strings[j];
				xdom.loadXML(XmlData);

				lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
				slBrListCd.Clear;
				slBrListNm.Clear;
				slBrInfo.Clear;
				if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
				begin
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					ls_Rcrd := TStringList.Create;
					try
//						iRow := 0;
						for I := 0 to lst_Result.length - 1 do
						begin
							// 0 지사코드, 1 지사명, 2 출금계좌, 3 은행명, 4 은행코드, 5 예금주, 6 본사정산금액, 7 지사정산금액, 8 설정금액, 9 잔액, 10 정산구분(0:정산안함/1:일일정산/2:월요일정산)
							GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);

							slBrListCd.Add(ls_Rcrd[0]); //지사코드
							slBrListNm.Add(ls_Rcrd[1]); //지사명
							slBrInfo.Add(ls_Rcrd[0] + ' : ' + ls_Rcrd[1]); //지사코드 + ':' + 지사명

							//원본 데이터 그리드
							iCnt := cxBranchOrg.DataController.AppendRecord;
							cxBranchOrg.DataController.Values[iCnt, 00] := iCnt + 1;
							cxBranchOrg.DataController.Values[iCnt, 01] := ls_Rcrd[1];
							cxBranchOrg.DataController.Values[iCnt, 02] := ls_Rcrd[3];
							cxBranchOrg.DataController.Values[iCnt, 03] := ls_Rcrd[2];
							cxBranchOrg.DataController.Values[iCnt, 04] := ls_Rcrd[5];

							if GT_USERIF.LV = '40' then
							begin
								cxBranchOrg.DataController.Values[iCnt, 05] := 0;
								cxBranchOrg.Bands[05].Visible := False;
								cxBranchOrg.Columns[05].Visible := False;
							end else
							begin
								cxBranchOrg.DataController.Values[iCnt, 05] := StrToIntDef(ls_Rcrd[6], 0);
								cxBranchOrg.Bands[05].Visible := True;
								cxBranchOrg.Columns[05].Visible := True;
							end;

							cxBranchOrg.DataController.Values[iCnt, 06] := StrToIntDef(ls_Rcrd[7], 0);
							cxBranchOrg.DataController.Values[iCnt, 07] := StrToIntDef(ls_Rcrd[8], 0);
							cxBranchOrg.DataController.Values[iCnt, 08] := StrToIntDef(ls_Rcrd[9], 0);

							if ls_Rcrd[10] = '0' then cxBranchOrg.DataController.Values[iCnt, 09] := '정산안함' else
							if ls_Rcrd[10] = '1' then cxBranchOrg.DataController.Values[iCnt, 09] := '일일정산' else
							if ls_Rcrd[10] = '2' then cxBranchOrg.DataController.Values[iCnt, 09] := '월요일정산';

							cxBranchOrg.DataController.Values[iCnt, 10] := False;
							cxBranchOrg.DataController.Values[iCnt, 11] := Null;
							cxBranchOrg.DataController.Values[iCnt, 12] := Null;
							cxBranchOrg.DataController.Values[iCnt, 13] := 0;

							cxBranchOrg.Columns[14].Options.Editing := True;

							cxBranchOrg.DataController.Values[iCnt, 14] := '콜마너정산';
							cxBranchOrg.DataController.Values[iCnt, 15] := '';
							cxBranchOrg.DataController.Values[iCnt, 16] := '';
							cxBranchOrg.DataController.Values[iCnt, 17] := ls_Rcrd[0];
							cxBranchOrg.DataController.Values[iCnt, 18] := ls_Rcrd[4];
							cxBranchOrg.DataController.Values[iCnt, 19] := ls_Rcrd[10];

							cxBranchOrg.DataController.Values[iCnt, 20] := ls_Rcrd[3];
							cxBranchOrg.DataController.Values[iCnt, 21] := ls_Rcrd[2];
							cxBranchOrg.DataController.Values[iCnt, 22] := ls_Rcrd[5];

							//UI그리드 항목 추가
							iCnt := cxBranch.DataController.AppendRecord;
							cxBranch.DataController.Values[iCnt, 00] := iCnt + 1;
							cxBranch.DataController.Values[iCnt, 01] := ls_Rcrd[1];
							cxBranch.DataController.Values[iCnt, 02] := ls_Rcrd[3];
							cxBranch.DataController.Values[iCnt, 03] := ls_Rcrd[2];
							cxBranch.DataController.Values[iCnt, 04] := ls_Rcrd[5];

							if GT_USERIF.LV = '40' then
							begin
								cxBranch.DataController.Values[iCnt, 05] := 0;
								cxBranch.Bands[05].Visible := False;
								cxBranch.Columns[05].Visible := False;
							end else
							begin
								cxBranch.DataController.Values[iCnt, 05] := StrToIntDef(ls_Rcrd[6], 0);
								cxBranch.Bands[05].Visible := True;
								cxBranch.Columns[05].Visible := True;
							end;

							cxBranch.DataController.Values[iCnt, 06] := StrToIntDef(ls_Rcrd[7], 0);
							cxBranch.DataController.Values[iCnt, 07] := StrToIntDef(ls_Rcrd[8], 0);
							cxBranch.DataController.Values[iCnt, 08] := StrToIntDef(ls_Rcrd[9], 0);

							if ls_Rcrd[10] = '0' then cxBranch.DataController.Values[iCnt, 09] := '정산안함' else
							if ls_Rcrd[10] = '1' then cxBranch.DataController.Values[iCnt, 09] := '일일정산' else
							if ls_Rcrd[10] = '2' then cxBranch.DataController.Values[iCnt, 09] := '월요일정산';

							cxBranch.DataController.Values[iCnt, 10] := False;
							cxBranch.DataController.Values[iCnt, 11] := Null;
							cxBranch.DataController.Values[iCnt, 12] := Null;
							cxBranch.DataController.Values[iCnt, 13] := 0;

							cxBranch.Columns[14].Options.Editing := True;

							cxBranch.DataController.Values[iCnt, 14] := '콜마너정산';
							cxBranch.DataController.Values[iCnt, 15] := '';
							cxBranch.DataController.Values[iCnt, 16] := '';
							cxBranch.DataController.Values[iCnt, 17] := ls_Rcrd[0];
							cxBranch.DataController.Values[iCnt, 18] := ls_Rcrd[4];
							cxBranch.DataController.Values[iCnt, 19] := ls_Rcrd[10];

							cxBranch.DataController.Values[iCnt, 20] := ls_Rcrd[3];
							cxBranch.DataController.Values[iCnt, 21] := ls_Rcrd[2];
							cxBranch.DataController.Values[iCnt, 22] := ls_Rcrd[5];
//							Inc(iRow);
						end;
					finally
						ls_Rcrd.Free;
					end;
				end;
			end;
		finally
			cxBranch.EndUpdate;
      cxBranchOrg.EndUpdate;
			xdom := nil;
			Frm_Flash.Hide;
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
		end;
	except
		on e: exception do
		begin
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
  end;
end;

procedure TFrm_ACC10.Btn_RequestClick(Sender: TObject);
var
  i, iCnt : Integer;
  lsTmp, lsTmp1, sReDate : String;

  ls_TxLoad : string;
  rv_str: string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode, iSt, iEd : integer;
  Msg, sTemp : string;
begin
  if cxBranch.DataController.RecordCount <= 0 then Exit;

  Btn_Request.Enabled := False;
  try
    ls_TxLoad := GTx_UnitXmlLoad('C601.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'C601', [rfReplaceAll]);

    iCnt := 0;
    lsTmp1 := '';
    for i := 0 to cxBranch.DataController.RecordCount - 1 do
    begin
      if cxBranch.DataController.Values[i, 13] <> 0 then
      begin
        lsTmp := ' <Data HdNo="본사코드" BrNo="지사코드" BankCd="은행코드" BankCode="계좌번호" AccountName="예금주" Cash="이체금액" Info="적요" Memo="메모"	Hp="휴대폰"	ResDate="예약일"/> ';

        if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
          lsTmp := StringReplace(lsTmp, '본사코드', GT_SEL_BRNO.HDNO, [rfReplaceAll])
				else
          lsTmp := StringReplace(lsTmp, '본사코드', GT_USERIF.HD, [rfReplaceAll]);

				lsTmp := StringReplace(lsTmp, '지사코드', cxBranch.DataController.Values[i, 17], [rfReplaceAll]);

				sTemp := Scb_BankCd[Scb_BankNm.IndexOf(cxBranch.DataController.Values[i, 20])];
//					sTemp := Scb_BankCd[Scb_BankCd.IndexOf(cxBranch.DataController.Values[i, 18])];    //은행코드 직접 적용 20190602 KHS  예정
				lsTmp := StringReplace(lsTmp, '은행코드', sTemp, [rfReplaceAll]);
				lsTmp := StringReplace(lsTmp, '계좌번호', cxBranch.DataController.Values[i, 21], [rfReplaceAll]);
        sTemp := cxBranch.DataController.Values[i, 22];
        iSt := Pos('[', sTemp)+1;
        iEd := Length(sTemp);
				sTemp := Copy(sTemp, iSt, ( iEd - iSt));
        lsTmp := StringReplace(lsTmp, '예금주'  , sTemp, [rfReplaceAll]);

        lsTmp := StringReplace(lsTmp, '이체금액', cxBranch.DataController.Values[i, 13], [rfReplaceAll]);
        lsTmp := StringReplace(lsTmp, '적요'    , cxBranch.DataController.Values[i, 14], [rfReplaceAll]);
        lsTmp := StringReplace(lsTmp, '메모'    , cxBranch.DataController.Values[i, 15], [rfReplaceAll]);
        lsTmp := StringReplace(lsTmp, '휴대폰'  , cxBranch.DataController.Values[i, 16], [rfReplaceAll]);

        sReDate := '';
        if cxBranch.DataController.Values[i, 10] = True then
        begin
          sReDate := FormatDateTime('YYYY-MM-DD', cxBranch.DataController.Values[i, 11]) + ' ' +
                     FormatDateTime('HH:NN'     , cxBranch.DataController.Values[i, 12]);
          if sReDate <> '' then
          begin
            sReDate := StringReplace(sReDate, '-', '', [rfReplaceAll]);
            sReDate := StringReplace(sReDate, ':', '', [rfReplaceAll]);
            sReDate := StringReplace(sReDate, ' ', '', [rfReplaceAll]);
            sReDate := sReDate + '00';
          end;
        end;

        lsTmp := StringReplace(lsTmp, '예약일'  , sReDate, [rfReplaceAll]);
        inc(iCnt);
        lsTmp1 := lsTmp1 + lsTmp;
      end;
    end;

    ls_TxLoad := StringReplace(ls_TxLoad, '레코드수', IntToStr(iCnt), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'C601VALUE', lsTmp1, [rfReplaceAll]);

    Screen.Cursor := crHourGlass;
    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 10000, 'C600') then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          if ResponseProcess(ls_rxxml, Msg) then
          begin
            Application.ProcessMessages;
						GMessagebox('출금요청이 완료 되었습니다.' + #13#10 + #13#10 + Msg, CDMSI);
          end else
          begin
            GMessagebox(Msg, CDMSE);
          end;
        end else
        begin
          GMessagebox('[Error]서버에서 결과를 수신하지 못하였습니다.', CDMSE);
        end;
      end;
    finally
      Frm_Flash.Hide;
      FreeAndNil(slReceive);
      Screen.Cursor := crDefault;
    end;
    Btn_S.Click;
    Btn_Sch1.Click;
  except
    on e:Exception do
    begin
      sTemp := 'frmACC10[Cb_RequestClick]:' + e.Message;
      Log(sTemp, LOGDATAPATHFILE);
      Assert(False, 'frmACC10[Cb_RequestClick]:' + E.Message);
    end;
  end;
end;

function TFrm_ACC10.ResponseProcess(AXml: string; var AMsg: String): Boolean;
var
  xdom: msDomDocument;
  lst_Node: IXMLDomNodeList;
  ls_MSG_Err, ls_ClientKey : string;
begin
  Result := False;

  xdom := ComsDomDocument.Create;
  Screen.Cursor := crHourGlass;
  try
    try
      if not xdom.loadXML(AXml) then Exit;
      //-------------------------- Client Key Read -----------------------------
      lst_Node := xdom.documentElement.selectNodes('/cdms/header/ClientKey');
      ls_ClientKey := lst_Node.item[0].attributes.getNamedItem('Value').Text;
      //------------------------------------------------------------------------

      if ls_ClientKey = 'C601' then
      begin
        ls_MSG_Err := GetXmlErrorCode(AXml);
        if ('0000' = ls_MSG_Err) then
        begin
          AMsg := GetXmlErrorMsg(AXml);
          Result := True;
        end
        else
          AMsg := ls_MSG_Err;
      end;
    except
      on e: exception do
      begin
        Assert(False, 'frmACC10[ResponseProcess]:' + E.Message);
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    xdom := Nil;
  end;
end;

procedure TFrm_ACC10.GradientLabel4MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxLabel(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_ACC10.Edt_uYekumjuKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ActiveControl <> nil) and (key = VK_RETURN) then btn_GOk.SetFocus;
end;

procedure TFrm_ACC10.Edt_uYekumjuKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_ACC10.btn_GOkClick(Sender: TObject);
Var Param, XmlData, ErrMsg, sBankCd, sFileName, sDirName,
    sfN1, sfN2, sfN3, sfN4, sfN5,                   // 변환파일명
    sufN1, sufN2, sufN3, sufN4, sufN5,              // 업로드위치및파일명
    sefN1, sefN2, sefN3, sefN4, sefN5 : String;     // 서버실제위치파일명
    ErrCode, iTotSize : Integer;
    bCheck : Boolean;
begin
	if CB_uBank.ItemIndex = -1 then
  begin
    ShowMessage('은행을 선택하십시오.');
    CB_uBank.SetFocus;
    Exit;
  end;

  if Trim(Edt_uGyeJa.Text) = '' then
  begin
    ShowMessage('계좌번호를 입력하십시오.');
    Edt_uGyeJa.SetFocus;
    Exit;
  end;

  if Trim(Edt_uYekumju.Text) = '' then
  begin
    ShowMessage('예금주를 입력하십시오.');
    Edt_uYekumju.SetFocus;
    Exit;
  end;

  sBankCd := Scb_BankCd[CB_uBank.ItemIndex];

  if ( Edt_bBank.Hint + Trim(Edt_bGyeJa.Text) + Trim(Edt_bYekumju.Text) ) =
     ( sBankCd        + Trim(Edt_uGyeJa.Text) + Trim(Edt_uYekumju.Text) ) then
  begin
    ShowMessage('동일한 계좌로 변경 할 수 없습니다.');
    Exit;
  end;

  if ( Edt_Path1.Hint = '0' ) And ( Edt_Path2.Hint = '0' ) And ( Edt_Path3.Hint = '0' ) And
     ( Edt_Path4.Hint = '0' ) And ( Edt_Path5.Hint = '0' ) then
  begin
    ShowMessage('통장사본(은행발행본), 신분증사본(뒷자리숨김), 사업자등록증 파일 미첨부로 요청 불가합니다.');
    Exit;
  end;

  try
    sDirName  := FormatDateTime('YYYYMM', Now);
    sFileName := FormatDateTime('DDHHNN', Now);
    AC_FTP_PATH := '/' + sDirName +'/';
    bCheck := False;

    sfN1 := '';
    sfN2 := '';
    sfN3 := '';
    sfN4 := '';
    sfN5 := '';

    sufN1 := '';
    sufN2 := '';
    sufN3 := '';
    sufN4 := '';
    sufN5 := '';

    sefN1 := '';
    sefN2 := '';
    sefN3 := '';
    sefN4 := '';
    sefN5 := '';

    iTotSize := 0;
    if Edt_Path1.Hint = '1' then iTotSize := iTotSize + GetFileSize(Edt_Path1.Text);
    if Edt_Path2.Hint = '1' then iTotSize := iTotSize + GetFileSize(Edt_Path2.Text);
    if Edt_Path3.Hint = '1' then iTotSize := iTotSize + GetFileSize(Edt_Path3.Text);
    if Edt_Path4.Hint = '1' then iTotSize := iTotSize + GetFileSize(Edt_Path4.Text);
    if Edt_Path5.Hint = '1' then iTotSize := iTotSize + GetFileSize(Edt_Path5.Text);

    LMDProgressNow.Position := 0;
    LMDProgressNow.Max := iTotSize;

    if Edt_Path1.Hint = '1' then
    begin
      sfN1  := Lbl_TName.Hint + '_' + sFileName + '_1';
      sufN1 := WORKDRIVE + sfN1 + '.JPG';
      sefN1 := sDirName +'_'+ sfN1;
      proc_save_image(Edt_Path1.Text, sfN1);
    end;

    if Edt_Path2.Hint = '1' then
    begin
      sfN2  := Lbl_TName.Hint + '_' + sFileName + '_2';
      sufN2 := WORKDRIVE + sfN2 + '.JPG';
      sefN2 := sDirName +'_'+ sfN2;
      proc_save_image(Edt_Path2.Text, sfN2);
    end;

    if Edt_Path3.Hint = '1' then
    begin
      sfN3  := Lbl_TName.Hint + '_' + sFileName + '_3';
      sufN3 := WORKDRIVE + sfN3 + '.JPG';
      sefN3 := sDirName +'_'+ sfN3;
      proc_save_image(Edt_Path3.Text, sfN3);
    end;

    if Edt_Path4.Hint = '1' then
    begin
      sfN4  := Lbl_TName.Hint + '_' + sFileName + '_4';
      sufN4 := WORKDRIVE + sfN4 + '.JPG';
      sefN4 := sDirName +'_'+ sfN4;
      proc_save_image(Edt_Path4.Text, sfN4);
    end;

    if Edt_Path5.Hint = '1' then
    begin
      sfN5  := Lbl_TName.Hint + '_' + sFileName + '_5';
      sufN5 := WORKDRIVE + sfN5 + '.JPG';
      sefN5 := sDirName +'_'+ sfN5;
      proc_save_image(Edt_Path5.Text, sfN5);
    end;

		if AccUpLoadFile(sufN1, sufN2, sufN3, sufN4, sufN5, AC_FTP_PATH) then
    begin
			if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
				Param := GT_SEL_BRNO.HDNO + '│' + Trim(Lbl_TName.Hint)
      else
      begin
        if GT_USERIF.LV = '60' then
          Param := GT_USERIF.HD + '│' + Trim(Lbl_TName.Hint)
        else if GT_USERIF.LV = '40' then
          Param := GT_USERIF.HD + '│' + GT_USERIF.BR;
			end;

      Param := Param + '│' + Trim(Edt_bBank.Hint) + '│' + Trim(Edt_bGyeJa.Text) + '│' + Trim(Edt_bYekumju.Text)
                     + '│' + sBankCd              + '│' + Trim(Edt_uGyeJa.Text) + '│' + Trim(Edt_uYekumju.Text);

      if Cb_QBank.Checked then Param  := Param + '│' + '0'    // 본사계좌변경
                          else Param  := Param + '│' + '1';   // 지사계좌변경

      Param  := Param + '│' + sefN1 + '│' + sefN2 + '│' + sefN3 + '│' + sefN4 + '│' + sefN5;

      if not RequestBase(GetCallable05('SETPAYOUTBANKMOD', 'PAY_OUT.SET_PAY_OUT_BANK_MOD', Param), XmlData, ErrCode, ErrMsg) then
      begin
        GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
        LMDProgressNow.Position := 0;
        Exit;
      end;
      LMDProgressNow.Position := 0;
      ShowMessage('변경 요청 되었습니다.' + #13#10 +
                  '운영팀 승인 후에 변경 계좌가 반영 됩니다.' );

      Pnl_Acc.Visible := False;
      Pnl_L1.Enabled := True;
    end else
    begin
      ShowMessage('첨부파일 UpLoad 중 오류 발생');
    end;
  except
    ShowMessage('변경 요청 중 오류 발생');
  end;
end;

procedure TFrm_ACC10.Btn_Sch1Click(Sender: TObject);
begin
  cxGridA.DataController.SetRecordCount(0);
  cxGridC.DataController.SetRecordCount(0);  
  proc_CashLog;
end;

procedure TFrm_ACC10.cxGridACellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  Btn_Sch2.Click;
end;

procedure TFrm_ACC10.GradientLabel5MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxLabel(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_ACC10.tm_AppLockTimer(Sender: TObject);
begin
  tm_AppLock.Enabled := False;

  Pnl_L1.Enabled := False;
  Pnl_L2.Enabled := False;

  Pnl_Lock.Left := (Width  - Pnl_Lock.Width ) div 2;
  Pnl_Lock.Top  := (Height - Pnl_Lock.Height) div 2;
  Pnl_Lock.Visible := True;
  Pnl_Lock.BringToFront;

  Edt_PW.Clear;
  Edt_PW.SetFocus; 
end;

procedure TFrm_ACC10.cxButton55Click(Sender: TObject);
var
  XmlData, Param, ErrMsg : string;
  ErrCode: Integer;
begin
  if Trim(Edt_PW.Text) = '' then
  begin
    ShowMessage('비밀번호를 입력하십시오.');
    Edt_PW.SetFocus;
    Exit;
  end;

  Param := Trim(Edt_PW.Text) + '│' + GT_USERIF.IP + '│' + GT_USERIF.MC;

  if not RequestBase(GetCallable05('GETPWDCHK', 'PAY_OUT.GET_PWD_CHK', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

  Pnl_Lock.Visible := False;
  Pnl_L1.Enabled := True;
  Pnl_L2.Enabled := True;
end;

procedure TFrm_ACC10.cxButton56Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_ACC10.cxButton5Click(Sender: TObject);
Var iPos, iRow : Integer;
    sAccNo : String;
    slTmp : TStringList;
begin
  iRow := cxBranch.DataController.FocusedRecordIndex;
  if iRow = -1 then Exit;

  sAccNo := cxLbAccList.Items.Strings[cxLbAccList.ItemIndex];
  iPos := Pos('-', sAccNo);
  sAccNo := Copy(sAccNo, iPos+1, Length(sAccNo)-iPos);

  try
    slTmp := TStringList.Create;
    GetTextSeperationEx2('/', sAccNo, slTmp);

    cxBranch.DataController.Values[iRow, 20] := slTmp[0];
    cxBranch.DataController.Values[iRow, 21] := slTmp[1];
    cxBranch.DataController.Values[iRow, 22] := slTmp[2];
  finally
    slTmp.Free;
  end;
  PnlAccList.Visible := False;
end;

procedure TFrm_ACC10.btnmCloseClick(Sender: TObject);
begin
  PnlAccMgr.Visible := False;
end;

procedure TFrm_ACC10.btnmDelClick(Sender: TObject);
Var Param, XmlData, ErrMsg, sBankCd : String;
    ErrCode : Integer;
begin
  if ( Trim(Edt_mGyeJa.Text) = '' ) Or ( Edt_mGyeJa.Enabled ) then
  begin
		GMessagebox('삭제 계좌번호를 선택하세요.)', CDMSE);
    Edt_mGyeJa.SetFocus;
    Exit;
  end;

  if Application.MessageBox('삭제하시겠습니까?', CDMSE, MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;

  try
    Param := 'DELETE│';

    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      Param := Param + GT_SEL_BRNO.HDNO + '│'
    else
      Param := Param + GT_USERIF.HD + '│';

    sBankCd := Scb_BankCd[CB_mBank.ItemIndex];

    Param := Param + lbl_mName.Hint + '│' + sBankCd + '│' + Trim(Edt_mGyeJa.Text) + '│' + Trim(Edt_mYekumju.Text) + '│' + Trim(Edt_mName.Text);
    if not RequestBase(GetCallable06('SETBRACCOUNT', 'MNG.SET_BR_ACCOUNT', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;
		GMessagebox('삭제하였습니다.', CDMSI);
    btnmSch.Click;
    btnmAdd.Click;
  except
  end;
end;

procedure TFrm_ACC10.btnmSaveClick(Sender: TObject);
Var Param, XmlData, ErrMsg, sBankCd : String;
    ErrCode : Integer;
begin
  if Trim(Edt_mName.Text) = '' then
  begin
    GMessagebox('계좌명을 입력하세요.)', CDMSE);
    Edt_mName.SetFocus;
    Exit;
  end;

  if CB_mBank.ItemIndex < 0 then
  begin
    GMessagebox('은행명을 선택하세요.)', CDMSE);
    CB_mBank.SetFocus;
    Exit;
  end;

  if Trim(Edt_mGyeJa.Text) = '' then
  begin
    GMessagebox('계좌번호를 입력하세요.)', CDMSE);
    Edt_mGyeJa.SetFocus;
    Exit;
  end;

  if Trim(Edt_mYekumju.Text) = '' then
  begin
    GMessagebox('예금주를 입력하세요.)', CDMSE);
    Edt_mYekumju.SetFocus;
    Exit;
  end;

  try
    if Edt_mGyeJa.Enabled then
      Param := 'INSERT│'
    else
      Param := 'UPDATE│';

    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      Param := Param + GT_SEL_BRNO.HDNO + '│'
    else
      Param := Param + GT_USERIF.HD + '│';

    sBankCd := Scb_BankCd[CB_mBank.ItemIndex];

    Param := Param + lbl_mName.Hint + '│' + sBankCd + '│' + Trim(Edt_mGyeJa.Text) + '│' + Trim(Edt_mYekumju.Text) + '│' + Trim(Edt_mName.Text);
    if not RequestBase(GetCallable06('SETBRACCOUNT', 'MNG.SET_BR_ACCOUNT', Param), XmlData, ErrCode, ErrMsg) then
    begin
			GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;

    if Edt_mGyeJa.Enabled then
			GMessagebox('저장하였습니다.', CDMSI)
		else
			GMessagebox('수정하였습니다.', CDMSI);

    btnmSch.Click;
    btnmAdd.Click;
  except
  end;
end;

procedure TFrm_ACC10.btnmSchClick(Sender: TObject);
var
  XmlData, Param, ErrMsg, ls_MSG_Err : string;
  ErrCode, iRow, i : Integer;
  xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
  ls_Rcrd : TStringList;
begin
  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := GT_SEL_BRNO.HDNO
  else
    Param := GT_USERIF.HD;

  Param := Param + '│' + Lbl_mName.Hint;

	if not RequestBase(GetSel06('GETBRACCOUNT', 'MNG.GET_BR_ACCOUNT', '1000', Param), XmlData, ErrCode, ErrMsg) then
  begin
		GMessagebox(Format('송금 계좌 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

	xdom := ComsDomDocument.Create;
  cxGridViewAccMgr.DataController.SetRecordCount(0);
  try
    try
      if not xdom.loadXML(XmlData) then Exit;

      ls_MSG_Err := GetXmlErrorCode(XmlData);
      if ('0000' = ls_MSG_Err) then
      begin
        if (0 < GetXmlRecordCount(XmlData)) then
        begin
          lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
          cxGridViewAccMgr.BeginUpdate;
          ls_Rcrd := TStringList.Create;
          try
            for i := 0 to lst_Result.length - 1 do
            begin
              GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
  						Application.ProcessMessages;

  						iRow := cxGridViewAccMgr.DataController.AppendRecord; // 1 Record 추가

  						cxGridViewAccMgr.DataController.Values[iRow, 0] := IntToStr(i+1);
  						cxGridViewAccMgr.DataController.Values[iRow, 1] := ls_Rcrd[5];
  						cxGridViewAccMgr.DataController.Values[iRow, 2] := ls_Rcrd[2];
  						cxGridViewAccMgr.DataController.Values[iRow, 3] := ls_Rcrd[3];
  						cxGridViewAccMgr.DataController.Values[iRow, 4] := ls_Rcrd[4];
  						cxGridViewAccMgr.DataController.Values[iRow, 5] := ls_Rcrd[0];
  						cxGridViewAccMgr.DataController.Values[iRow, 6] := ls_Rcrd[1];
            end;
          finally
            ls_Rcrd.Free;
          end;
          cxGridViewAccMgr.EndUpdate;
        end;
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

procedure TFrm_ACC10.Edt_PWKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ActiveControl <> nil) and (key = VK_RETURN) then cxButton55.Click;
end;

procedure TFrm_ACC10.cxGridACanSelectRecord(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; var AAllow: Boolean);
var iRow, iReserv : Integer;
begin
  iRow    := cxGridA.DataController.GetRowInfo(ARecord.Index).RecordIndex;
  iReserv := cxGridA.GetColumnByFieldName('상태').Index;

  if cxGridA.DataController.Values[iRow, iReserv] = null then  Exit;

  if Trim(cxGridA.DataController.Values[iRow, iReserv]) = '예약' then
    Btn_Resrv.Enabled := True
  else
    Btn_Resrv.Enabled := False;
end;

procedure TFrm_ACC10.Btn_ResrvClick(Sender: TObject);
var iRow, iSeq, ErrCode : Integer;
    XmlData, Param, ErrMsg : string;
    sSeq : String;
begin
  iRow := cxGridA.DataController.FocusedRecordIndex;
  iSeq := cxGridA.GetColumnByFieldName('일련번호').Index;
  sSeq := Trim(cxGridA.DataController.Values[iRow, iSeq]);

  Param := sSeq;

  if not RequestBase(GetCallable05('SETPAYOUTCANCEL', 'PAY_OUT.SET_PAY_OUT_CANCEL', Param), XmlData, ErrCode, ErrMsg) then
  begin
		GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

  Btn_Sch1.Click;
end;

procedure TFrm_ACC10.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_ACC10.proc_Bank;
var
  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, ErrCode : Integer;
begin
  Scb_BankCd.Clear;
  Scb_BankNm.Clear;
  CB_uBank.Clear;
  CB_sBank.Clear;
  cb_mBank.Clear;

  Param := '';

  if not RequestBase(GetSel05('GETBANKCDLIST', 'PAY_OUT.GET_BANK_CD_LIST', '100', Param), XmlData, ErrCode, ErrMsg) then
  begin
		GMessagebox(Format('은행리스트 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

  xdom := ComsDomDocument.Create;
  try
    xdom.loadXML(XmlData);
    lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
    Scb_BankCd.Clear;
    CB_uBank.Clear;
    CB_sBank.Clear;
    cb_mBank.Clear;
    if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      ls_Rcrd := TStringList.Create;
      try
        for I := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
          Scb_BankCd.Add(ls_Rcrd[0]);
          Scb_BankNm.Add(ls_Rcrd[1]);
          CB_uBank.Properties.Items.Add(ls_Rcrd[1]);
          CB_sBank.Properties.Items.Add(ls_Rcrd[1]);
          CB_mBank.Properties.Items.Add(ls_Rcrd[1]);
        end;
      finally
        ls_Rcrd.Free;
      end;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_ACC10.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_ACC10.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Scb_BankCd);
  FreeAndNil(Scb_BankNm);
  FreeAndNil(sl_BrAccList);

	FreeAndNil(slBRListNm);
	FreeAndNil(slBRListCd);
	FreeAndNil(slBrInfo);
	FreeAndNil(searchBRlist);
	FreeAndNil(searchBRCodelist);

  Frm_ACC10 := Nil;
end;

procedure TFrm_ACC10.cxBranchColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxBranch.ColumnCount - 1 do
    begin
      if i <> AColumn.Index then
      begin
        cxBranch.Columns[i].SortIndex := -1;
        cxBranch.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxBranch.Columns[AColumn.Index].SortOrder = soNone) or
      (cxBranch.Columns[AColumn.Index].SortOrder = soDescending) then
      cxBranch.Columns[AColumn.Index].SortOrder := soAscending
    else
      if cxBranch.Columns[AColumn.Index].SortOrder = soAscending then
      cxBranch.Columns[AColumn.Index].SortOrder := soDescending;
    cxBranch.Columns[AColumn.Index].SortIndex := 0;
    cxBranch.DataController.FocusedRowIndex := 0;
  except
    on e: Exception do
    begin
      sTemp := 'TfrmACC10[cxBranchColumnHeaderClick]Error:' + e.Message;
			GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_ACC10.cxBranchInitEdit(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
Var i : Integer;
begin
 if AEdit is TcxComboBox then
  begin
    TcxComboBox(AEdit).Clear;
    for i := 0 to CB_uBank.Properties.Items.Count - 1 do
    begin
      TcxComboBox(AEdit).Properties.Items.Add(CB_uBank.Properties.Items.Strings[i]);
    end;
  end;
end;

procedure TFrm_ACC10.cxBandColumn10PropertiesEditValueChanged(
  Sender: TObject);
var
  Row : Integer;
begin
  Row := cxBranch.DataController.FocusedRecordIndex;

  if Row < 0 then Exit;

  IF cxBranch.DataController.Values[Row, 10] = True then
  begin
    cxBranch.DataController.Values[Row, 10] := False;
    cxBranch.DataController.Values[Row, 11] := Null;
    cxBranch.DataController.Values[Row, 12] := Null;
//    cxBranch.Columns[10].Options.Editing := False;
//    cxBranch.Columns[11].Options.Editing := False;
  end else
  begin
    cxBranch.DataController.Values[Row, 10] := True;
    cxBranch.DataController.Values[Row, 11] := Now;
    cxBranch.DataController.Values[Row, 12] := Now + 1/48;  // 30분 후
//    cxBranch.Columns[10].Options.Editing := True;
//    cxBranch.Columns[11].Options.Editing := True;
  end;
end;

procedure TFrm_ACC10.cxBranchStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if (ARecord.Selected) or (Sender.DataController.RecordCount = 0) then  Exit;

  try
    AStyle := frm_Main.cxStyle15;

    if ARecord.Values[10] = True then AStyle.Color := $00B3B3FF
                                 else AStyle.Color := clWhite;

    if cxBranch.Columns[AItem.Index].Options.Editing = True then AStyle.Color := $00FFF4F4;

  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_ACC10.cxBranchColumn24PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
Var
   iRow : Integer;
begin
  iRow := cxBranch.DataController.FocusedRecordIndex;
  if iRow = -1 then Exit;

  proc_pop_Menu_AccList(cxBranch.DataController.Values[iRow, 17]);
	pop_Menu.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_ACC10.proc_pop_Menu_AccList( sBrNo : String );
var
  i : Integer;
  Menu: TMenuItem;
begin
  proc_AccList(sBrNo);

  while pop_Menu.Items.Count > 0 do
  begin
    Menu := pop_Menu.Items[0];
    pop_Menu.Items.Delete(0);
    Menu.Free;
  end;

  sl_BrAccList.Insert(0, '정산계좌선택');
  sl_BrAccList.Insert(1, '송금계좌직접입력');
  if sl_BrAccList.Count > 2 then
  begin
    sl_BrAccList.Insert(2, '-');
    sl_BrAccList.Insert(3, ' ------ 송금계좌내역 ------');
  end;
  for i := 0 to sl_BrAccList.Count - 1 do
  begin
    try
      Menu := TMenuItem.Create(pop_Menu);
      if i > 13 then
        Menu.Caption := '송금계좌더보기..'
      else
        Menu.Caption := sl_BrAccList[i];

      if i = 3 then Menu.Enabled := False
               else Menu.Enabled := True;

      Menu.Visible := True;
      Menu.OnClick := mniUserClick;
      Menu.Tag     := i;
      pop_Menu.Items.Insert(I, Menu);
      if i > 13 then Break;
    except on E: Exception do
      ShowMessage(E.Message);
    end;
  end;
end;

procedure TFrm_ACC10.proc_AccList(sBrNo : String);
var
  XmlData, Param, ErrMsg, ls_MSG_Err : string;
  ErrCode, i : Integer;
  xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
  ls_Rcrd : TStringList;
begin
  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := GT_SEL_BRNO.HDNO
  else
    Param := GT_USERIF.HD;

  Param := Param + '│' + sBrNo;

	if not RequestBase(GetSel06('GETBRACCOUNT', 'MNG.GET_BR_ACCOUNT', '1000', Param), XmlData, ErrCode, ErrMsg) then
  begin
		GMessagebox(Format('송금 계좌 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

	xdom := ComsDomDocument.Create;
  sl_BrAccList.Clear;
  try
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
              GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
              sl_BrAccList.Add(ls_Rcrd[5] + '-' + ls_Rcrd[2] + '/' + ls_Rcrd[3] + '/' + ls_Rcrd[4]);
            end;
          finally
            ls_Rcrd.Free;
          end;
        end;
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

procedure TFrm_ACC10.mniUserClick(Sender: TObject);
Var i, iRow, iPos : Integer;
    sAccNo : String;
    slTmp : TStringList;
begin
  iRow := cxBranch.DataController.FocusedRecordIndex;

  if TMenuItem(Sender).Tag = 0 then
  begin
    if iRow = -1 then Exit;

    cxBranch.DataController.Values[iRow, 20] := cxBranch.DataController.Values[iRow, 02];
    cxBranch.DataController.Values[iRow, 21] := cxBranch.DataController.Values[iRow, 03];
    cxBranch.DataController.Values[iRow, 22] := cxBranch.DataController.Values[iRow, 04];
  end else
  if TMenuItem(Sender).Tag = 1 then
  begin
    if iRow = -1 then Exit;

    cxBranch.DataController.Values[iRow, 20] := '';
    cxBranch.DataController.Values[iRow, 21] := '';
    cxBranch.DataController.Values[iRow, 22] := '';
  end else
  if TMenuItem(Sender).Tag = 14 then
  begin
    cxLbAccList.Items.Clear;
    for i := 4 to sl_BrAccList.Count - 1 do
    begin
      cxLbAccList.Items.Add(sl_BrAccList[i]);
    end;

    PnlAccList.Left := (Pnl_L1.Width - PnlAccList.Width ) div 2;
    PnlAccList.Top  := (Pnl_L1.Height - PnlAccList.Height) div 2;
    PnlAccList.Visible := True;
    PnlAccList.BringToFront;
  end else
  begin
    if iRow = -1 then Exit;

    iPos := Pos('-', TMenuItem(Sender).Caption);
    sAccNo := TMenuItem(Sender).Caption;
    sAccNo := Copy(sAccNo, iPos+1, Length(sAccNo)-iPos);

    try
      slTmp := TStringList.Create;
      GetTextSeperationEx2('/', sAccNo, slTmp);

      cxBranch.DataController.Values[iRow, 20] := slTmp[0];
      cxBranch.DataController.Values[iRow, 21] := slTmp[1];
      cxBranch.DataController.Values[iRow, 22] := slTmp[2];
    finally
      slTmp.Free;
    end;
  end;
end;

procedure TFrm_ACC10.msMemoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 	TcxMemo(sender).Text := Enc_Control(TcxMemo(sender).Text);
end;

procedure TFrm_ACC10.Btn_AClick(Sender: TObject);
var i, iRow, ErrCode, iPos, iAmt : Integer;
    iJ1, iJ2 : Real;
    bOk : Boolean;
    XmlData, Param, ErrMsg, sBrName, sBrNo, sBankCd, sAccount, sReDate, sAccNm : string;
begin
  if cxBranch.DataController.RecordCount <= 0 then Exit;
  Btn_A.Enabled := False;
  try
    proc_Check;

    Btn_Request.Enabled := False;
    Btn_Send.Enabled := False;
    Edt_Error.Clear;

    for i := 0 to cxBranch.DataController.RecordCount - 1 do
    begin
      iAmt := cxBranch.DataController.Values[i, 13];  // 출금액

      if iAmt <> 0 then
      begin
        bOk := True;

        sBrName := cxBranch.DataController.Values[i, 01];

        iRow := cxCheck.DataController.FindRecordIndexByText(0, 9, cxBranch.DataController.Values[i, 17], True, True, True);

				if iAmt < 10000 then     //20170530 KHS 정승훈 팀장님 요청 0601부터 시행
				begin
					Edt_Error.Text := sBrName + ' : 1만원이상 출금 가능합니다.';
					bOk := False;
					Btn_A.Enabled := True;
					GMessagebox(Edt_Error.Text, CDMSE);
					Exit;
				end;
				
				if iRow < 0 then
        begin
          Edt_Error.Text := sBrName + ' : 지사정보가 없습니다. 다시 조회 후 이용바랍니다.';
          bOk := False;
          Btn_A.Enabled := True;
          Exit;
        end;

        sBrNo := cxBranch.DataController.Values[i, 17];
        if ( cxBranch.DataController.Values[i, 20] = '' ) Or
           ( cxBranch.DataController.Values[i, 21] = '' ) then
        begin
          Edt_Error.Text := sBrName + ' : 은행정보가 잘못 되었습니다. 계좌확인 후 이용바랍니다.';
          cxBranch.DataController.FocusedRecordIndex := iRow;
          cxGrid4.SetFocus;
          bOk := False;
					Btn_A.Enabled := True;
          Exit;
        end;

        try
					sBankCd := Scb_BankCd[Scb_BankNm.IndexOf(cxBranch.DataController.Values[i, 20])];
//					sBankCd := Scb_BankCd[Scb_BankCd.IndexOf(cxBranch.DataController.Values[i, 18])];    //은행코드 직접 적용 20190602 KHS  예정
				except
					Edt_Error.Text := sBrName + ' : 은행명(코드)이 잘못 되었습니다. 은행명(코드) 확인후 이용바랍니다.';
					cxBranch.DataController.FocusedRecordIndex := iRow;
          cxGrid4.SetFocus;
          bOk := False;
					Btn_A.Enabled := True;
          Exit;
				end;
				
        sAccount := cxBranch.DataController.Values[i, 21];

        sAccNm := funcAccountCheck(sBrNo, sBankCd, sAccount, iAmt);
        if sAccNm = '' then
        begin
					Edt_Error.Text := sBrName + ' : 예금주 조회 실패';
					cxBranch.DataController.FocusedRecordIndex := iRow;
          cxGrid4.SetFocus;
          bOk := False;
          Btn_A.Enabled := True;
          Exit;
        end else
        begin
					if cxBranch.DataController.Values[i, 22] <> Null then
					begin
						iPos := Pos('[', cxBranch.DataController.Values[i, 22]);
						if iPos <= 0 then
            begin
              cxBranch.DataController.Values[i, 22] := cxBranch.DataController.Values[i, 22] + '[' + sAccNm + ']';
            end else
            begin
              cxBranch.DataController.Values[i, 22] := Copy(cxBranch.DataController.Values[i, 22], 1, iPos-1) + '[' + sAccNm + ']';
            end;
          end else
          begin
            cxBranch.DataController.Values[i, 22] := '[' + sAccNm + ']';
          end;
        end;

        if cxBranch.DataController.Values[i, 10] = True then
        begin
          sReDate := FormatDateTime('YYYY-MM-DD', cxBranch.DataController.Values[i, 11]) + ' ' +
                     FormatDateTime('HH:NN'     , cxBranch.DataController.Values[i, 12]);
          if ( FormatDateTime('YYYY-MM-DD HH:NN', Now ) >= sReDate ) then
          begin
            Edt_Error.Text := sBrName + ' : 예약일시가 잘못 되었습니다. 확인 바랍니다.';
            cxBranch.DataController.FocusedRecordIndex := iRow;
            cxGrid4.SetFocus;
            bOk := False;
            Btn_A.Enabled := True;
            Exit;
          end;

          Param := cxBranch.DataController.Values[i, 17];
          if not RequestBase(GetCallable05('GETRESCHK', 'PAY_OUT.GET_RES_CHK', Param), XmlData, ErrCode, ErrMsg) then
          begin
            Edt_Error.Text := Format(sBrName + ' : [%d] %s', [ErrCode, ErrMsg]);
            cxBranch.DataController.FocusedRecordIndex := iRow;
            cxGrid4.SetFocus;
            bOk := False;
            Btn_A.Enabled := True;
            Exit;
          end;
        end;

        // 05 본사정산금액, 06 지사정산금액, 07 설정금액, 08 잔액, 12 출금액

        if GT_USERIF.LV = '60' then  // 본사관리자일 경우 본사정산기준 금액
          iJ1 := ( cxCheck.DataController.Values[iRow, 05] - cxCheck.DataController.Values[iRow, 07] )
        else                        // 지사관리자일 경우 지사정산기준 금액
          iJ1 := ( cxCheck.DataController.Values[iRow, 06] - cxCheck.DataController.Values[iRow, 07] );

        iJ2 := ( cxCheck.DataController.Values[iRow, 08] - cxCheck.DataController.Values[iRow, 07] );

        if GT_USERIF.LV = '60' then  // 본사관리자일 경우 본사정산기준 금액
        begin
          if ( ( cxCheck.DataController.Values[iRow, 05] >= iAmt ) and
               ( cxCheck.DataController.Values[iRow, 07] >  iAmt ) and
               ( iJ1 < iAmt ) ) then
          begin
            Edt_Error.Text := sBrName + ' : 출금액이 설정금액보다 부족합니다.';
            cxBranch.DataController.FocusedRecordIndex := iRow;
            cxGrid4.SetFocus;
            bOk := False;
            Btn_A.Enabled := True;
						GMessagebox(Edt_Error.Text, CDMSE);
						Exit;
          end;
        end else
        begin
          if ( ( cxCheck.DataController.Values[iRow, 06] >= iAmt ) and
               ( cxCheck.DataController.Values[iRow, 07] >  iAmt ) and
               ( iJ1 < iAmt ) ) then
          begin
            Edt_Error.Text := sBrName + ' : 출금액이 설정금액보다 부족합니다.';
            cxBranch.DataController.FocusedRecordIndex := iRow;
            cxGrid4.SetFocus;
            bOk := False;
            Btn_A.Enabled := True;
            Exit;
          end;
        end;

        if ( ( cxCheck.DataController.Values[iRow, 08] >= iAmt ) and
             ( cxCheck.DataController.Values[iRow, 07] >  iAmt ) and
             ( iJ2 < iAmt ) ) then
        begin
          Edt_Error.Text := sBrName + ' : 출금액이 설정금액보다 부족합니다.';
          cxBranch.DataController.FocusedRecordIndex := iRow;
          cxGrid4.SetFocus;
          bOk := False;
          Btn_A.Enabled := True;
          Exit;
        end;

        if  iJ1 < iAmt then
        begin
          Edt_Error.Text := sBrName + ' : 09시 정산기준 출금액이 부족합니다.';
          cxBranch.DataController.FocusedRecordIndex := iRow;
          cxGrid4.SetFocus;
          bOk := False;
          Btn_A.Enabled := True;
          Exit;
        end;

        if iJ2 < iAmt then
        begin
          Edt_Error.Text := sBrName + ' : 잔액 기준 출금액이 부족합니다.';
          cxBranch.DataController.FocusedRecordIndex := iRow;
          cxGrid4.SetFocus;
          bOk := False;
          Btn_A.Enabled := True;
          Exit;
        end;
      end;
    end;
    tm_Check.Enabled := True;
    Btn_Request.Enabled := bOk;
    Btn_Send.Enabled := bOK;
  finally
    Btn_A.Enabled := True;
  end;
end;

procedure TFrm_ACC10.Btn_SClick(Sender: TObject);
begin
	if Trim(edtBranch.Text) = '' then
	begin
		proc_Branch;
		Btn_Request.Enabled := False;
		Btn_Send.Enabled := False;
		Edt_Error.Clear;
	end
	else proc_FindGridBranch(Trim(edtBranch.Text));
end;

procedure TFrm_ACC10.proc_FindGridBranch(AStr : string);
var iRow, i : integer;
	sTmp : string;
begin
	Try
		cxBranch.DataController.SetRecordCount(0);
		cxBranch.BeginUpdate();
		iRow := 0; i := 0;
		while i <= cxBranchOrg.DataController.RecordCount-1 do
		begin
			sTmp := cxBranchOrg.DataController.Values[i, 01];
			if Pos(AStr, sTmp) > 0 then
			begin
				iRow := cxBranch.DataController.AppendRecord;
				cxBranch.DataController.Values[iRow, 00] := iRow + 1;
				cxBranch.DataController.Values[iRow, 01] := cxBranchOrg.DataController.Values[i, 01];
				cxBranch.DataController.Values[iRow, 02] := cxBranchOrg.DataController.Values[i, 02];
				cxBranch.DataController.Values[iRow, 03] := cxBranchOrg.DataController.Values[i, 03];
				cxBranch.DataController.Values[iRow, 04] := cxBranchOrg.DataController.Values[i, 04];
				cxBranch.DataController.Values[iRow, 05] := cxBranchOrg.DataController.Values[i, 05];
				cxBranch.DataController.Values[iRow, 06] := cxBranchOrg.DataController.Values[i, 06];
				cxBranch.DataController.Values[iRow, 07] := cxBranchOrg.DataController.Values[i, 07];
				cxBranch.DataController.Values[iRow, 08] := cxBranchOrg.DataController.Values[i, 08];
				cxBranch.DataController.Values[iRow, 09] := cxBranchOrg.DataController.Values[i, 09];
				cxBranch.DataController.Values[iRow, 10] := cxBranchOrg.DataController.Values[i, 10];
				cxBranch.DataController.Values[iRow, 11] := cxBranchOrg.DataController.Values[i, 11];
				cxBranch.DataController.Values[iRow, 12] := cxBranchOrg.DataController.Values[i, 12];
				cxBranch.DataController.Values[iRow, 13] := cxBranchOrg.DataController.Values[i, 13];
				cxBranch.DataController.Values[iRow, 14] := cxBranchOrg.DataController.Values[i, 14];
				cxBranch.DataController.Values[iRow, 15] := cxBranchOrg.DataController.Values[i, 15];
				cxBranch.DataController.Values[iRow, 16] := cxBranchOrg.DataController.Values[i, 16];
				cxBranch.DataController.Values[iRow, 17] := cxBranchOrg.DataController.Values[i, 17];
				cxBranch.DataController.Values[iRow, 18] := cxBranchOrg.DataController.Values[i, 18];
				cxBranch.DataController.Values[iRow, 19] := cxBranchOrg.DataController.Values[i, 19];
				cxBranch.DataController.Values[iRow, 20] := cxBranchOrg.DataController.Values[i, 20];
				cxBranch.DataController.Values[iRow, 21] := cxBranchOrg.DataController.Values[i, 21];
				cxBranch.DataController.Values[iRow, 22] := cxBranchOrg.DataController.Values[i, 22];
			end;
			inc(i);
		end;
		cxBranch.EndUpdate();
	except
	End;
end;

procedure TFrm_ACC10.Btn_SendClick(Sender: TObject);
Var i : Integer;
    bOk : Boolean;
begin
  if cxBranch.DataController.RecordCount = 0 then  Exit;

  bOk := True;
  for i := 0 to cxBranch.DataController.RecordCount - 1 do
  begin
    if cxBranch.DataController.Values[i, 13] <> 0 then
    begin
      if ( (GS_PRJ_AREA = 'O') AND (GT_USERIF.HD = 'A1488') And (cxBranch.DataController.Values[i, 17] = 'H289')  ) then
      begin

      end else
      begin
        bOK := False;
        Break;
      end;
    end;
  end;

  if Not bOK then
  begin
    GMessagebox('송금 요청할 수 없는 지사가 포함되어있습니다.' + #13#10 +
                '송금 요청 가능 지사만 금액 입력 바랍니다.', CDMSE);
    Exit;
  end;

  proc_Bank;

  CB_sBank.ItemIndex := -1;
  Edt_sGyeJa.Clear;
  Edt_sYekumju.Clear;
  msMemo.Clear;

  Pnl_Send.Left := (Width  - Pnl_Send.Width ) div 2;
  Pnl_Send.Top  := (Height - Pnl_Send.Height) div 2;
  Pnl_Send.Visible := True;
  Pnl_Send.BringToFront;
  CB_sBank.SetFocus;
end;

procedure TFrm_ACC10.proc_Check;
var
  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, ErrCode, iCnt, iRow : Integer;
begin
  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := GT_SEL_BRNO.HDNO + '│'
  else
  begin
    if GT_USERIF.LV = '60' then
      Param := GT_USERIF.HD + '│'
    else if GT_USERIF.LV = '40' then
      Param := GT_USERIF.HD + '│' + GT_USERIF.BR;
  end;

  if not RequestBase(GetSel05('GETCASHBRLIST', 'PAY_OUT.GET_CASH_BR_LIST', '1000', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('지사리스트 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

  xdom := ComsDomDocument.Create;
  try
    xdom.loadXML(XmlData);
    lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');

    if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
    begin
      cxCheck.DataController.SetRecordCount(0);
      cxCheck.BeginUpdate;
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      ls_Rcrd := TStringList.Create;
      try
        iRow := 0;
        for I := 0 to lst_Result.length - 1 do
        begin
          // 0 지사코드, 1 지사명, 2 출금계좌, 3 은행명, 4 은행코드, 5 예금주, 6 본사정산금액, 7 지사정산금액, 8 설정금액, 9 잔액
          GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);

          iCnt := cxCheck.DataController.AppendRecord;
          cxCheck.DataController.Values[iCnt, 00] := iRow + 1;
          cxCheck.DataController.Values[iCnt, 01] := ls_Rcrd[1];
          cxCheck.DataController.Values[iCnt, 02] := ls_Rcrd[3];
          cxCheck.DataController.Values[iCnt, 03] := ls_Rcrd[2];
          cxCheck.DataController.Values[iCnt, 04] := ls_Rcrd[5];
          cxCheck.DataController.Values[iCnt, 05] := ls_Rcrd[6];
          cxCheck.DataController.Values[iCnt, 06] := ls_Rcrd[7];
          cxCheck.DataController.Values[iCnt, 07] := ls_Rcrd[8];
          cxCheck.DataController.Values[iCnt, 08] := ls_Rcrd[9];
          cxCheck.DataController.Values[iCnt, 09] := ls_Rcrd[0];
          cxCheck.DataController.Values[iCnt, 10] := ls_Rcrd[4];
          Inc(iRow);
        end;
      finally
        ls_Rcrd.Free;
      end;
      cxCheck.EndUpdate;
    end;
  finally
    xdom := Nil;
  end;
end;

function TFrm_ACC10.funcAccountCheck(sBrNo, sBankCd, sAccount : String; iAmt : Integer) : String;
Var ls_TxLoad, rv_str, ls_rxxml : String;
  slReceive : TStringList;
  ErrCode : Integer;
  xdom: msDomDocument;
  sHdNo, ls_MSG_Err : string;
  lst_Result: IXMLDomNodeList;
begin
  try
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sHdNo := GT_SEL_BRNO.HDNO
    else
    begin
      sHdNo := GT_USERIF.HD
    end;

    ls_TxLoad := GTx_UnitXmlLoad('C600.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'ACC10' + 'C600', [rfReplaceAll]);

		ls_TxLoad := StringReplace(ls_TxLoad, 'strHdNo', sHdNo, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'strBrNo', sBrNo, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'strBankCd', sBankCd, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'strAccount', sAccount, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'strCash', IntToStr(iAmt), [rfReplaceAll]);

//		Assert(False, 'C600.XML Send :' + ls_TxLoad);
		slReceive := TStringList.Create;
		try
			if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 10000, 'C600') then
			begin
				rv_str := slReceive[0];
//    		Assert(False, 'C600.XML Recv :' + rv_str);
				if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          xdom := ComsDomDocument.Create;
          try
            if not xdom.loadXML(ls_rxxml) then Exit;
            ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' = ls_MSG_Err) then
            begin
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data');
              Result := lst_Result.item[0].attributes.getNamedItem('AccName').Text;
            end else
            begin
              Result := '';
              Screen.Cursor := crDefault;
							GMessagebox(ls_MSG_Err, CDMSE);
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

procedure TFrm_ACC10.cxBranchColumn13PropertiesChange(Sender: TObject);
begin
  Btn_Request.Enabled := False;
  Btn_Send.Enabled := False;
end;

procedure TFrm_ACC10.cxBranchColumn13PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if DisplayValue = '' then DisplayValue := 0;
end;

procedure TFrm_ACC10.proc_Head_GetInfo;
var
  XmlData, Param, ErrMsg : string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd : TStringList;
  ErrCode, i : Integer;
begin
  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := GT_SEL_BRNO.HDNO
  else
    Param := GT_USERIF.HD;

  if not RequestBase(GetSel05('GETBRLIST', 'PAY_OUT.GET_BANK_INFO_HEAD', '100', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

  xdom := ComsDomDocument.Create;
  xdom.loadXML(XmlData);
  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
  ls_Rcrd := TStringList.Create;
  try
    for i := 0 to lst_Result.length - 1 do
    begin
      if lst_Result.item[i].attributes.getNamedItem('Value').Text = '' then
        Continue;

      // 0 본사명, 1 계좌번호, 2 은행코드, 3 은행명, 4 예금주
      GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

      Lbl_TName   .Caption := ls_Rcrd[0];
      Edt_bGyeJa  .Text    := ls_Rcrd[1];
      Edt_bBank   .Hint    := ls_Rcrd[2];
      Edt_bBank   .Text    := ls_Rcrd[3];
      Edt_bYekumju.Text    := ls_Rcrd[4];
    end;
  finally
    ls_Rcrd.Free;
    xdom := Nil;
  end;
end;

procedure TFrm_ACC10.Cb_QBankClick(Sender: TObject);
Var iRow : Integer;
begin
  if Cb_QBank.Checked then
  begin
    Lbl_TName.Style.Font.Color := $0077BBAC;
    proc_Head_GetInfo;
  end else
  begin
    iRow := cxBranch.DataController.FocusedRecordIndex;

    Lbl_TName.Style.Font.Color := $00B8B07A;
    Lbl_TName.Caption := cxBranch.DataController.Values[iRow, 01];
    Lbl_TName   .Hint := cxBranch.DataController.Values[iRow, 16];
    Edt_bBank   .Text := cxBranch.DataController.Values[iRow, 02];
    Edt_bBank   .Hint := cxBranch.DataController.Values[iRow, 17];
    Edt_bGyeJa  .Text := cxBranch.DataController.Values[iRow, 03];
    Edt_bYekumju.Text := cxBranch.DataController.Values[iRow, 04];
  end;
end;

procedure TFrm_ACC10.CB_uBankKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ActiveControl <> nil) and (key = VK_RETURN) then
  begin
    Key := 0;
    SelectNext(TWinControl(ActiveControl), True, True);
  end;
end;

procedure TFrm_ACC10.tm_CheckTimer(Sender: TObject);
begin
  tm_Check.Enabled := False;

  Btn_Request.Enabled := False;
  Btn_Send.Enabled := False;
end;

procedure TFrm_ACC10.cxGridACustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
Var
  AView: TcxGridDBTableView;
  Inx : Integer;
begin
  AView := Sender as TcxGridDBTableView;

  Inx := AView.GetColumnByFieldName('상태').Index;

  if Trim(AViewInfo.GridRecord.Values[Inx]) = '예약'   then ACanvas.Brush.Color := $00B3B3FF else
  if Trim(AViewInfo.GridRecord.Values[Inx]) = '미처리' then ACanvas.Font.Color := clRed;
end;

procedure TFrm_ACC10.proc_File_Load( EdtFileName : TcxTextEdit; nGubun : Integer );
var
  f: file of Byte;
  size: Longint;
  sFileName: string;
  i : Integer;
begin
  if OpenPictureDialog1.Execute then
  begin
    sFileName := OpenPictureDialog1.FileName;
    ImageS.Picture.LoadFromFile(sFileName);
    AssignFile(f, sFileName);
    Reset(f);
    try
      size := FileSize(f);
    finally
      CloseFile(f);
    end;
    if size > 1000*1024 then
    begin
      GMessagebox('파일 사이즈가 너무 큽니다.(1 MByte이하로 등록바랍니다.)', CDMSE);
      exit;
    end;

    for i := 1 to 5 do
    begin
      if ( i <> nGubun ) And ( TcxTextEdit(FindComponent('Edt_Path'+IntToStr(i))).Text = sFileName ) then
      begin
        GMessagebox('이미 첨부된 파일입니다.', CDMSE);
        Exit;
      end;
    end;

    EdtFileName.Hint := '1';
    EdtFileName.Text := sFileName;
  end;
end;

procedure TFrm_ACC10.Btn_Up1Click(Sender: TObject);
begin
  proc_File_Load(Edt_Path1, 1);
end;

procedure TFrm_ACC10.Btn_Up2Click(Sender: TObject);
begin
  proc_File_Load(Edt_Path2, 2);
end;

procedure TFrm_ACC10.Btn_Up3Click(Sender: TObject);
begin
  proc_File_Load(Edt_Path3, 3);
end;

procedure TFrm_ACC10.Btn_Up4Click(Sender: TObject);
begin
  proc_File_Load(Edt_Path4, 4);
end;

procedure TFrm_ACC10.Btn_Up5Click(Sender: TObject);
begin
  proc_File_Load(Edt_Path5, 5);
end;

procedure TFrm_ACC10.btnAccMgrClick(Sender: TObject);
Var iRow : Integer;
begin
  if ( (GT_USERIF.LV = '60') and (GT_USERIF.Master = 'y') ) Or
     ( (GT_USERIF.LV = '40') and (GT_USERIF.Master = 'y') ) then
  begin

  end else
  begin
    ShowMessage('본사마스터 및 지사마스터 관리자만 송금계좌관리를 할수 있습니다');
    Exit;
  end;

  if cxBranch.DataController.RecordCount = 0 then  Exit;

  iRow := cxBranch.DataController.FocusedRecordIndex;

  if iRow < 0 then
  begin
    ShowMessage('계좌 관리 지사를 선택하십시오.');
    Exit;
  end;

  Lbl_mName.Caption := cxBranch.DataController.Values[iRow, 01];
  Lbl_mName.Hint    := cxBranch.DataController.Values[iRow, 17];

  PnlAccMgr.Left := (Width  - PnlAccMgr.Width ) div 2;
  PnlAccMgr.Top  := (Height - PnlAccMgr.Height) div 2;
  PnlAccMgr.Visible := True;
  PnlAccMgr.BringToFront;
  Edt_mName.SetFocus;

  btnmSch.Click;
end;

procedure TFrm_ACC10.btnBtn_Del1Click(Sender: TObject);
begin
  Edt_Path1.Clear;
  Edt_Path1.Hint := '0';
  ImageS.Picture := nil;
end;

procedure TFrm_ACC10.btnBtn_Del2Click(Sender: TObject);
begin
  Edt_Path2.Clear;
  Edt_Path2.Hint := '0';
  ImageS.Picture := nil;
end;

procedure TFrm_ACC10.btnBtn_Del3Click(Sender: TObject);
begin
  Edt_Path3.Clear;
  Edt_Path3.Hint := '0';
  ImageS.Picture := nil;
end;

procedure TFrm_ACC10.btnBtn_Del4Click(Sender: TObject);
begin
  Edt_Path4.Clear;
  Edt_Path4.Hint := '0';
  ImageS.Picture := nil;
end;

procedure TFrm_ACC10.btnBtn_Del5Click(Sender: TObject);
begin
  Edt_Path5.Clear;
  Edt_Path5.Hint := '0';
  ImageS.Picture := nil;
end;

procedure TFrm_ACC10.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_ACC10.btnExcelA1Click(Sender: TObject);
begin
	if cxGridA.DataController.RecordCount = 0 then
  begin
		GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
    Exit;
  end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[정산메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

	Frm_Main.sgExcel := '출금요청현황.xls';
	Frm_Main.sgRpExcel := Format('정산>출금요청현황]%s건', [GetMoneyStr(cxGridA.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := Grid3;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC10.btnmAddClick(Sender: TObject);
begin
  cb_mBank.ItemIndex := 0;
  Edt_mGyeJa.Clear;
  Edt_mYekumju.Clear;
  Edt_mGyeJa.Enabled := True;
  Edt_mName.Clear;

  Edt_mName.SetFocus;
end;

procedure TFrm_ACC10.btnSendNoClick(Sender: TObject);
begin
  Pnl_Send.Visible := False;
end;

procedure TFrm_ACC10.btnSendOKClick(Sender: TObject);
var
  i, iCnt : Integer;
  lsTmp, lsTmp1, sReDate, sBankCd : String;

  ls_TxLoad : string;
  rv_str: string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
  Msg, sTemp : string;
begin
  if cxBranch.DataController.RecordCount <= 0 then Exit;

  if CB_sBank.ItemIndex < 0 then
  begin
		GMessagebox('은행명을 선택하세요.)', CDMSE);
    CB_sBank.SetFocus;
    Exit;
  end;

  if Trim(Edt_sGyeJa.Text) = '' then
  begin
    GMessagebox('계좌번호를 입력하세요.)', CDMSE);
    Edt_sGyeJa.SetFocus;
    Exit;
  end;

  if Trim(Edt_sYekumju.Text) = '' then
  begin
    GMessagebox('예금주를 입력하세요.)', CDMSE);
    Edt_sYekumju.SetFocus;
    Exit;
  end;

  sBankCd := Scb_BankCd[CB_sBank.ItemIndex];

  Btn_Send.Enabled := False;
  try
    ls_TxLoad := GTx_UnitXmlLoad('C601.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'C601', [rfReplaceAll]);

    iCnt := 0;
    lsTmp1 := '';
    for i := 0 to cxBranch.DataController.RecordCount - 1 do
    begin
      if cxBranch.DataController.Values[i, 13] <> 0 then
      begin
        lsTmp := ' <Data HdNo="본사코드" BrNo="지사코드" BankCd="은행코드" BankCode="계좌번호" AccountName="예금주" Cash="이체금액" Info="적요" Memo="메모"	Hp="휴대폰"	ResDate="예약일"/> ';

        if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
          lsTmp := StringReplace(lsTmp, '본사코드', GT_SEL_BRNO.HDNO, [rfReplaceAll])
        else
          lsTmp := StringReplace(lsTmp, '본사코드', GT_USERIF.HD, [rfReplaceAll]);

        lsTmp := StringReplace(lsTmp, '지사코드', cxBranch.DataController.Values[i, 17], [rfReplaceAll]);

        if ( (GS_PRJ_AREA = 'O') AND (GT_USERIF.HD = 'A1488') And (cxBranch.DataController.Values[i, 17] = 'H289')  ) then
        begin
          lsTmp := StringReplace(lsTmp, '은행코드', sBankCd, [rfReplaceAll]);
          lsTmp := StringReplace(lsTmp, '계좌번호', Trim(Edt_sGyeJa.Text), [rfReplaceAll]);
          lsTmp := StringReplace(lsTmp, '예금주'  , Trim(Edt_sYekumju.Text), [rfReplaceAll]);
        end else
        begin
          ShowMessage(cxBranch.DataController.Values[i, 01] + ' 지사는 송금 처리를 할수 없는 지사 입니다' + #13#10 +
                      '출금 처리됩니다.');

					lsTmp := StringReplace(lsTmp, '은행코드', cxBranch.DataController.Values[i, 18], [rfReplaceAll]);
          lsTmp := StringReplace(lsTmp, '계좌번호', cxBranch.DataController.Values[i, 03], [rfReplaceAll]);
          lsTmp := StringReplace(lsTmp, '예금주'  , cxBranch.DataController.Values[i, 04], [rfReplaceAll]);
        end;
        lsTmp := StringReplace(lsTmp, '이체금액', cxBranch.DataController.Values[i, 13], [rfReplaceAll]);
        lsTmp := StringReplace(lsTmp, '적요'    , cxBranch.DataController.Values[i, 14], [rfReplaceAll]);
        lsTmp := StringReplace(lsTmp, '메모'    , '[송금처리]' + msMemo.Text, [rfReplaceAll]);
        lsTmp := StringReplace(lsTmp, '휴대폰'  , cxBranch.DataController.Values[i, 16], [rfReplaceAll]);

        if cxBranch.DataController.Values[i, 10] = True then
        begin
          sReDate := FormatDateTime('YYYY-MM-DD', cxBranch.DataController.Values[i, 11]) + ' ' +
                     FormatDateTime('HH:NN'     , cxBranch.DataController.Values[i, 12]);
          if sReDate <> '' then
          begin
            sReDate := StringReplace(sReDate, '-', '', [rfReplaceAll]);
            sReDate := StringReplace(sReDate, ':', '', [rfReplaceAll]);
            sReDate := StringReplace(sReDate, ' ', '', [rfReplaceAll]);
            sReDate := sReDate + '00';
          end;
        end;

        lsTmp := StringReplace(lsTmp, '예약일'  , sReDate, [rfReplaceAll]);
        inc(iCnt);
        lsTmp1 := lsTmp1 + lsTmp;
      end;
    end;

    ls_TxLoad := StringReplace(ls_TxLoad, '레코드수', IntToStr(iCnt), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'C601VALUE', lsTmp1, [rfReplaceAll]);

    Screen.Cursor := crHourGlass;
    slReceive := TStringList.Create;
		try
			if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 10000, 'C600') then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          if ResponseProcess(ls_rxxml, Msg) then
          begin
            Application.ProcessMessages;
            GMessagebox('송금요청이 완료 되었습니다.' + #13#10 + #13#10 + Msg, CDMSE);
            Pnl_Send.Visible := False;
          end else
          begin
            GMessagebox(Msg, CDMSE);
          end;
        end else
        begin
          GMessagebox('[Error]서버에서 결과를 수신하지 못하였습니다.', CDMSE);
        end;
      end;
    finally
      Frm_Flash.Hide;
      FreeAndNil(slReceive);
      Screen.Cursor := crDefault;
    end;
    Btn_S.Click;
    Btn_Sch1.Click;
  except
    on e:Exception do
    begin
      sTemp := 'frmACC10[btnSendOKClick]:' + e.Message;
      Log(sTemp, LOGDATAPATHFILE);
      Assert(False, 'frmACC10[btnSendOKClick]:' + E.Message);
    end;
  end;
end;

procedure TFrm_ACC10.proc_save_image(sBaseName : AnsiString; sFileName: string);
var
  oJpg: TJpegImage;
  oBmp: TBitmap;
begin
  if not DirectoryExists(WORKDRIVE) then ForceDirectories(WORKDRIVE);

  if FileExists(WORKDRIVE + sFileName + '.JPG') then
    DeleteFile(WORKDRIVE + sFileName + '.JPG');

  // 파일크기변환
  oJpg := TJpegImage.Create;
  oBmp := TBitmap.Create;
  try
    if UpperCase(Rightstr(sBaseName, 3)) = 'JPG' then
    begin
      oJpg.LoadFromFile(sBaseName);
    end else
    begin
      oBmp.LoadFromFile(sBaseName);
      oJpg.Assign(oBmp);
    end;
    oJpg.SaveToFile(WORKDRIVE + sFileName + '.jpg');
  finally
    oJpg.Free;
    oBmp.Free;
  end;
end;

procedure TFrm_ACC10.acAwayTimer1Timer(Sender: TObject);
begin
  if IdleTime > 600 then
  begin
    // 프로그램을 종료한다.
    tm_AppLock.Enabled := True;
  end;
end;

function TFrm_ACC10.AccUpLoadFile(sFN1, sFN2, sFN3, sFN4, sFN5, sFTPPath: string): Boolean;
	function FindDirectory(idTmp:TIdFTP; TargetMake : string) : boolean;
  var
    i : Integer;
    tempString : TStringList;
  begin
    tempString := TStringList.Create;
    tempString.Clear;

//    IdFTPUP.ChangeDir(TargetMake);
		idTmp.List(tempString, '', False);

    for i := 0 to tempString.Count - 1 do
			if (idTmp.DirectoryListing.Items[i].ItemType = ditDirectory) then
				if TargetMake = idTmp.DirectoryListing.Items[i].FileName then
        begin
          Result := TRUE;
          exit;
        end;

    Result := FALSE;
  end;

	procedure FTPMakedir(idTmp:TIdFTP; TargetMake : string);
	begin
		if not FindDirectory(idTmp, TargetMake) then
    try
			idTmp.MakeDir(TargetMake);
    except

    end;
	end;
Var IdFTPUP_Tmp : TIdFTP;
	iErrorCnt : integer;
begin
	try
		Result := False;
		//업데이트 서버 주소 설정.
		IdFTPUP_Tmp := TIdFTP.Create(nil);
		Try
			IdFTPUP_Tmp.Passive := True;
			Screen.Cursor := crHourGlass;
			try
				IdFTPUP_Tmp.Username := AC_FTP_USER;      //'user_account'
				IdFTPUP_Tmp.Password := AC_FTP_PW;        //'rPwhkqusrud119!#'
				IdFTPUP_Tmp.Host := GT_CDMS_WKPIC_URL;    //'61.77.191.112'
				IdFTPUP_Tmp.Port := AC_FTP_PORT;          //21
				IdFTPUP_Tmp.ReadTimeout := 3000;
				IdFTPUP_Tmp.Connect();

				while not IdFTPUP_Tmp.Connected do
				begin
					Try
						inc(iErrorCnt);
						IdFTPUP_Tmp.Connect();
					except on E: Exception do
						begin
							if iErrorCnt > 3 then
							begin
								GMessagebox('업로드 서버에 접근할 수 없습니다.', CDMSE);
								Assert(False, E.Message);
								Screen.Cursor := crDefault;
								Result := False;
								exit;
							end;
							Log('CMP017.AccUpLoadFile Error :' + E.Message, LOGDATAPATHFILE);
						end;
					end;
				end;
			except
			end;

			if IdFTPUP_Tmp.Connected then
			begin
				try
					FTPMakedir(IdFTPUP_Tmp, FormatDateTime('YYYYMM', Now));
				except
				end;

				IdFTPUP_Tmp.ChangeDir(sFTPPath);
				Sleep(100);
				if sFN1 <> '' then IdFTPUP_Tmp.Put(sFN1, ExtractFileName(sFN1));
				if sFN2 <> '' then IdFTPUP_Tmp.Put(sFN2, ExtractFileName(sFN2));
				if sFN3 <> '' then IdFTPUP_Tmp.Put(sFN3, ExtractFileName(sFN3));
				if sFN4 <> '' then IdFTPUP_Tmp.Put(sFN4, ExtractFileName(sFN4));
				if sFN5 <> '' then IdFTPUP_Tmp.Put(sFN5, ExtractFileName(sFN5));
				Sleep(50);
				Result := True;
			end;
		finally
			IdFTPUP_Tmp.Free;
			Screen.Cursor := crDefault;
		end;
		// ------------------------------------------------------------------------
{		Result := False;
		//업데이트 서버 주소 설정.
		if IdFTPUP.Connected then
			IdFTPUP.DisconnectNotifyPeer;

		IdFTPUP.Passive := True;
		try
			IdFTPUP.Username := AC_FTP_USER;      //'user_account'
			IdFTPUP.Password := AC_FTP_PW;        //'rPwhkqusrud119!#'
			IdFTPUP.Host := GT_CDMS_WKPIC_URL;    //'61.77.191.112'
			IdFTPUP.Port := AC_FTP_PORT;          //21
			IdFTPUP.ReadTimeout := 1000;
			IdFTPUP.Connect();
		except
			GMessagebox('업로드 서버에 접근할 수 없습니다.', CDMSE);
			Result := False;
			exit;
		end;

		if IdFTPUP.Connected then
		begin
      try
        FTPMakedir(FormatDateTime('YYYYMM', Now));
      except
      end;

      IdFTPUP.ChangeDir(sFTPPath);
      Sleep(100);
      if sFN1 <> '' then IdFTPUP.Put(sFN1, ExtractFileName(sFN1));
      if sFN2 <> '' then IdFTPUP.Put(sFN2, ExtractFileName(sFN2));
      if sFN3 <> '' then IdFTPUP.Put(sFN3, ExtractFileName(sFN3));
      if sFN4 <> '' then IdFTPUP.Put(sFN4, ExtractFileName(sFN4));
      if sFN5 <> '' then IdFTPUP.Put(sFN5, ExtractFileName(sFN5));
      Sleep(50);
      Result := True;
    end;
		// ------------------------------------------------------------------------
}  except on E: Exception do
		begin
      GMessagebox('업로드 서버에 접근할 수 없습니다.', CDMSE);
			Assert(False, E.Message);
			Screen.Cursor := crDefault;
      Result := False;
    end;
  end;
end;

procedure TFrm_ACC10.IdFTP1Work(Sender: TObject; AWorkMode: TWorkMode;
  const AWorkCount: Integer);
begin
  if (AWorkMode = wmWrite) then
  begin
		// 받은 사이즈를 진행 시킨다.
		LMDProgressNow.Position   := AWorkCount;
	end;
end;

procedure TFrm_ACC10.lbSearchBranchClick(Sender: TObject);
begin
	edtBranch.SetFocus;
end;

function TFrm_ACC10.GetFileSize( sFileName : String ) : Integer;
var
  SearchRec: TSearchRec; // 파일 속성값을 저장.
begin
  if FileExists(sFileName) then
  begin
    FindFirst(sFileName, faAnyFile, SearchRec);
		Result := SearchRec.Size;
  end;
end;

procedure TFrm_ACC10.cxButton1Click(Sender: TObject);
Var iRow : Integer;
begin
  if cxBranch.DataController.RecordCount = 0 then  Exit;

  iRow := cxBranch.DataController.FocusedRecordIndex;

  if iRow < 0 then
  begin
    ShowMessage('계좌 변경 지사를 선택하십시오.');
    Exit;
  end;

  Lbl_T1Name.Caption := cxBranch.DataController.Values[iRow, 01];
  Lbl_T1Name.Hint    := cxBranch.DataController.Values[iRow, 17];
  Lbl_JTitle.Caption := cxBranch.DataController.Values[iRow, 09];
  Lbl_JTitle.Hint    := cxBranch.DataController.Values[iRow, 19];

  Cb_JGubun.ItemIndex := 0;

  Pnl_J.Left := (Width  - Pnl_J.Width ) div 2;
  Pnl_J.Top  := (Height - Pnl_J.Height) div 2;
  Pnl_J.Visible := True;
  Pnl_J.BringToFront;
  Cb_JGubun.SetFocus;
end;

procedure TFrm_ACC10.cxButton2Click(Sender: TObject);
begin
  PnlAccList.Visible := False;
end;

procedure TFrm_ACC10.cxButton4Click(Sender: TObject);
begin
  Pnl_J .Visible := False;
  Pnl_L1.Enabled := True;
end;

procedure TFrm_ACC10.GradientLabel18MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxLabel(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_ACC10.cxButton3Click(Sender: TObject);
Var Param, sGubun : String;
begin
  if StrToFloatDef(Lbl_JTitle.Hint, 0) = Cb_JGubun.ItemIndex then
  begin
    ShowMessage('동일한 정산 방식으로 변경 할 수 없습니다.');
    Exit;
  end;

  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := GT_SEL_BRNO.HDNO + '│' + Trim(Lbl_T1Name.Hint)
  else
  begin
    if GT_USERIF.LV = '60' then
      Param := GT_USERIF.HD + '│' + Trim(Lbl_T1Name.Hint)
    else if GT_USERIF.LV = '40' then
      Param := GT_USERIF.HD + '│' + GT_USERIF.BR;
  end;

  if Cb_JGubun.ItemIndex = 0 then sGubun := '0' else
  if Cb_JGubun.ItemIndex = 1 then sGubun := '1' else
  if Cb_JGubun.ItemIndex = 2 then sGubun := '2';

  Param := Param + '│' + sGubun;

//  if not RequestBase(GetCallable05('SETPAYOUTBANKMOD', 'PAY_OUT.SET_PAY_OUT_JUNG_MOD', Param), XmlData, ErrCode, ErrMsg) then
//  begin
//    GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
//    Exit;
//  end;
  ShowMessage('변경 요청 되었습니다.' + #13#10 +
              '운영팀 승인 후에 실정산에 반영 됩니다.' );

  Pnl_J.Visible := False;
  Pnl_L1.Enabled := True;
end;

procedure TFrm_ACC10.Edt_Path1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Var sFileName : TcxTextEdit;
begin
  sFileName := Sender as TcxTextEdit;
  if Trim(sFileName.Text) <> '' then
    ImageS.Picture.LoadFromFile(sFileName.Text)
  else
    ImageS.Picture := nil;
end;

end.



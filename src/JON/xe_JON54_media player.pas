unit xe_JON54;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, IniFiles,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxLabel, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  AdvGlowButton, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxGroupBox,  MSXML2_TLB, Vcl.ImgList,
  cxImageComboBox, System.DateUtils, cxImage, cxListBox, cxRadioGroup, cxPCdxBarPopupMenu, cxPC,
  dxStatusBar, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IDGlobal, WinSock, cxCheckBox,
	dxBarBuiltInMenu, AdvProgressBar, cxMemo, dxSkinsCore, dxSkinDevExpressStyle,  System.JSON,
  dxSkinscxPCPainter, cxProgressBar, System.ImageList, cxImageList, ComObj,
  cxButtonEdit, Vcl.OleCtrls, WMPLib_TLB, IdHTTP, dxSkinOffice2010Blue;

  type
    TJ54OnCMNPacketPage = procedure(ANowPage, AFinalPage: string) of object;
    TJ54OnCMNSessionDisConnect = procedure(Sender: TObject) of object;
    TJ54OnCMNSessionConnect = procedure(Sender: TObject) of object;

type
  TFrm_JON54 = class(TForm)
    Panel1: TPanel;
    cxGroupBox13: TcxGroupBox;
    imgTRS: TImage;
    BtncxPage6E: TcxButton;
    btn_PickUpPhone: TcxButton;
    btn_HangUp: TcxButton;
    btn_Calling: TcxButton;
    btn_SimpleCalling: TcxButton;
    dedt_date: TcxDateEdit;
    edt_NAMETEL: TcxTextEdit;
    btnCallingList: TcxButton;
    BtnBtm1Setting: TcxButton;
    cxButton14: TcxButton;
    btnCallListAutoSearch: TAdvGlowButton;
    cxLabel21: TcxLabel;
    ed_TelNum: TcxTextEdit;
    cxButton16: TcxButton;
    pop_date: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    trm_CallList: TTimer;
    cb_Gubun: TcxComboBox;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    lb_SearchDay: TcxLabel;
    Pop_CallManage: TPopupMenu;
    Pop_CallManage_N1: TMenuItem;
    Pop_CallManage_N2: TMenuItem;
    Pop_CallManage_N3: TMenuItem;
    Pop_CallManage_N4: TMenuItem;
    Pop_CallManage_N5: TMenuItem;
    Pop_CallManage_N6: TMenuItem;
    Pop_CallManage_N7: TMenuItem;
    Pop_CallManage_N8: TMenuItem;
    Pop_CallManage_N9: TMenuItem;
    Pop_CallManage_N10: TMenuItem;
    pm_FavoriteNumber: TPopupMenu;
    N_Separate: TMenuItem;
    N_NumberUpdate: TMenuItem;
    N_16886618: TMenuItem;
    Shape31: TShape;
    cxCallingStatus: TcxImageList;
    cxImage2: TcxImage;
    tmrHL: TTimer;
    PnlCalling: TPanel;
    lb_CallingTitle_List: TcxListBox;
    lb_CallingListCnt: TcxLabel;
    pop_CallingStateCHK: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    cxButton1: TcxButton;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxGrid_CallManage: TcxGridDBTableView;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid2: TcxGrid;
		cxGrid_CallManageOut: TcxGridDBTableView;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
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
    cxGridLevel1: TcxGridLevel;
    lb_CallingTitleOut_List: TcxListBox;
    TCPClientJ54: TIdTCPClient;
    tmPingJ54: TTimer;
    Pop_CallManage_N11: TMenuItem;
    trm_CallCnt: TTimer;
		pnl1: TPanel;
    cxImage3: TcxImage;
    cxTabSheet3: TcxTabSheet;
    cxGrid3: TcxGrid;
    tvwCidLog: TcxGridDBTableView;
    tvwCidLogColumn1: TcxGridDBColumn;
		tvwCidLogColumn2: TcxGridDBColumn;
    tvwCidLogColumn3: TcxGridDBColumn;
    tvwCidLogColumn4: TcxGridDBColumn;
    tvwCidLogColumn5: TcxGridDBColumn;
    tvwCidLogColumn6: TcxGridDBColumn;
		cxGridLevel2: TcxGridLevel;
    Shape1: TShape;
    cxGridDBColumn99: TcxGridDBColumn;
    cxGridDBColumn98: TcxGridDBColumn;
    cxMemo1: TcxMemo;
    cxLabel1: TcxLabel;
		cxGrid_CallManageOutColumn1: TcxGridDBColumn;
		cxGrid_CallManageOutColumn2: TcxGridDBColumn;
    cxGrid_CallManageOutColumn3: TcxGridDBColumn;
    cxGrid_CallManageOutColumn4: TcxGridDBColumn;
    cxGrid_CallManageOutColumn5: TcxGridDBColumn;
    cxGrid_CallManageColumn1: TcxGridDBColumn;
    cxGrid_CallManageColumn2: TcxGridDBColumn;
    cxGrid_CallManageColumn3: TcxGridDBColumn;
    cxGrid_CallManageColumn4: TcxGridDBColumn;
    cxGrid_CallManageColumn5: TcxGridDBColumn;
    cxTabSheet4: TcxTabSheet;
    cxListBox1: TcxListBox;
    pnl_PBX_1: TcxGroupBox;
    Shape30: TShape;
    cxLabel35: TcxLabel;
    btnDateA1: TcxButton;
    cxDtStartA1: TcxDateEdit;
    cxDtEndA1: TcxDateEdit;
    cxLabel36: TcxLabel;
    cxLabel37: TcxLabel;
    btnSearchA1: TcxButton;
    btnExcelA1: TcxButton;
    Shape57: TShape;
    cb_Keynumber01: TcxComboBox;
    cxLabel48: TcxLabel;
    Shape2: TShape;
    cxLabel15: TcxLabel;
    edt_1_1: TcxTextEdit;
    Shape3: TShape;
    cb_1_1: TcxComboBox;
    cxLabel2: TcxLabel;
    cxTabSheet5: TcxTabSheet;
    pnl_PBX_2: TcxGroupBox;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    cxLabel4: TcxLabel;
    btnDateA2: TcxButton;
    cxDtStartA2: TcxDateEdit;
    cxDtEndA2: TcxDateEdit;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    btnSearchA2: TcxButton;
    btnExcelA2: TcxButton;
    cb_Keynumber02: TcxComboBox;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    edt_2_1: TcxTextEdit;
    cb_2_1: TcxComboBox;
    cxLabel10: TcxLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    lb_CallingCNT: TcxLabel;
    lb_CallingOutCNT: TcxLabel;
    lb_CallOutCNT: TcxLabel;
    lb_OperCNT: TcxLabel;
    rb_CursorChk: TcxCheckBox;
    Panel5: TPanel;
    cxProgressBar1: TcxProgressBar;
    Panel6: TPanel;
    cxPageControl2: TcxPageControl;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    cxGrid6: TcxGrid;
    cxGrid_PBXCounsol_2: TcxGridDBTableView;
    cxGrid_PBXCounsol_2Column0: TcxGridDBColumn;
    cxGrid_PBXCounsol_2Column1: TcxGridDBColumn;
    cxGrid_PBXCounsol_2Column2: TcxGridDBColumn;
    cxGrid_PBXCounsol_2Column3: TcxGridDBColumn;
    cxGrid_PBXCounsol_2Column4: TcxGridDBColumn;
    cxGrid_PBXCounsol_2Column5: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    Shape9: TShape;
    cbGrpNm2: TcxComboBox;
    cxLabel11: TcxLabel;
    Shape10: TShape;
    cbAgtNm2: TcxComboBox;
    cxLabel12: TcxLabel;
    cxGrid4: TcxGrid;
    cxGrid_PBXCounsol_1: TcxGridDBTableView;
    cxGrid_PBXCounsol_1Column0: TcxGridDBColumn;
    cxGrid_PBXCounsol_1Column1: TcxGridDBColumn;
    cxGrid_PBXCounsol_1Column2: TcxGridDBColumn;
    cxGrid_PBXCounsol_1Column3: TcxGridDBColumn;
    cxGrid_PBXCounsol_1Column4: TcxGridDBColumn;
    cxGrid_PBXCounsol_1Column5: TcxGridDBColumn;
    cxGrid_PBXCounsol_1Column6: TcxGridDBColumn;
    cxGrid_PBXCounsol_1Column7: TcxGridDBColumn;
    cxGrid_PBXCounsol_1Column8: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    Shape12: TShape;
    cbGrpNm1: TcxComboBox;
    cxLabel13: TcxLabel;
    Shape13: TShape;
    cbAgtNm1: TcxComboBox;
    cxLabel14: TcxLabel;
    Shape14: TShape;
    cb_1_4: TcxComboBox;
    cxLabel16: TcxLabel;
    pop_dateA1: TPopupMenu;
    MiToday: TMenuItem;
    MiYesterday: TMenuItem;
    MiOneWeek: TMenuItem;
    MiOneMonth: TMenuItem;
    MiStartMonth: TMenuItem;
    Pop_NoCall: TPopupMenu;
    Pop_NoCall_N1: TMenuItem;
    cxPageControl3: TcxPageControl;
    cxTabSheet8: TcxTabSheet;
    cxTabSheet9: TcxTabSheet;
    cxGrid8: TcxGrid;
    cxGridPBX_Admin2: TcxGridDBTableView;
    cxGridPBX_Admin2Column0: TcxGridDBColumn;
    cxGridPBX_Admin2Column1: TcxGridDBColumn;
    cxGridPBX_Admin2Column4: TcxGridDBColumn;
    cxGridPBX_Admin2Column2: TcxGridDBColumn;
    cxGridPBX_Admin2Column3: TcxGridDBColumn;
    cxGridPBX_Admin2Column5: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGridPBX_Admin1: TcxGridDBTableView;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridDBColumn55: TcxGridDBColumn;
    cxGridDBColumn56: TcxGridDBColumn;
    cxGridDBColumn57: TcxGridDBColumn;
    cxGridDBColumn58: TcxGridDBColumn;
    cxGridDBColumn59: TcxGridDBColumn;
    cxGridDBColumn60: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    cxTabSheet10: TcxTabSheet;
    cxGridPBX_Admin2Column6: TcxGridDBColumn;
    cxGridPBX_Admin2Column7: TcxGridDBColumn;
    cxGridPBX_Admin2Column8: TcxGridDBColumn;
    pnl_Palyer: TPanel;
    cxGridPBX_Admin1Column1: TcxGridDBColumn;
    cxGrid7: TcxGrid;
    cxGridPBX_Admin3: TcxGridDBTableView;
    cxGridPBX_Admin3Column0: TcxGridDBColumn;
    cxGridPBX_Admin3Column1: TcxGridDBColumn;
    cxGridPBX_Admin3Column2: TcxGridDBColumn;
    cxGridPBX_Admin3Column3: TcxGridDBColumn;
    cxGridPBX_Admin3Column4: TcxGridDBColumn;
    cxGridPBX_Admin3Column5: TcxGridDBColumn;
    cxGridPBX_Admin3Column6: TcxGridDBColumn;
    cxGridPBX_Admin3Column7: TcxGridDBColumn;
    cxGridPBX_Admin3Column8: TcxGridDBColumn;
    cxGridPBX_Admin3Column9: TcxGridDBColumn;
    cxGridPBX_Admin3Column10: TcxGridDBColumn;
    cxGridPBX_Admin3Column11: TcxGridDBColumn;
    cxGridPBX_Admin3Column12: TcxGridDBColumn;
    cxGridPBX_Admin3Column13: TcxGridDBColumn;
    cxGridPBX_Admin3Column14: TcxGridDBColumn;
    cxGridPBX_Admin3Column15: TcxGridDBColumn;
    cxGridPBX_Admin3Column16: TcxGridDBColumn;
    cxGridLevel7: TcxGridLevel;
    IdHTTP1: TIdHTTP;
    SaveDialog1: TSaveDialog;
    cxGridPBX_Admin2Column9: TcxGridDBColumn;
    cxGridPBX_Admin2Column10: TcxGridDBColumn;
    cxGridPBX_Admin2Column11: TcxGridDBColumn;
    cxGridPBX_Admin2Column12: TcxGridDBColumn;
    cxGridPBX_Admin2Column13: TcxGridDBColumn;
    lb_CMNPHONE_Notice1: TcxLabel;
    lb_CMNPHONE_Notice2: TcxLabel;
    procedure btnCallingListClick(Sender: TObject);
    procedure trm_CallListTimer(Sender: TObject);
    procedure btnCallListAutoSearchClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Pop_CallManagePopup(Sender: TObject);
    procedure cxButton14Click(Sender: TObject);
		procedure cxGrid_CallManageCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Pop_CallManage_N1Click(Sender: TObject);
    procedure Pop_CallManage_N2Click(Sender: TObject);
    procedure Pop_CallManage_N3Click(Sender: TObject);
    procedure Pop_CallManage_N4Click(Sender: TObject);
    procedure Pop_CallManage_N5Click(Sender: TObject);
    procedure Pop_CallManage_N6Click(Sender: TObject);
    procedure Pop_CallManage_N7Click(Sender: TObject);
    procedure Pop_CallManage_N8Click(Sender: TObject);
    procedure Pop_CallManage_N11Click(Sender: TObject);
    procedure edt_NAMETELKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_PickUpPhoneClick(Sender: TObject);
    procedure btn_HangUpClick(Sender: TObject);
    procedure BtnBtm1SettingClick(Sender: TObject);
		procedure btn_CallingClick(Sender: TObject);
    procedure btn_SimpleCallingClick(Sender: TObject);
    procedure cxButton16Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtncxPage6EClick(Sender: TObject);
		procedure cxGrid_CallManageStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure tmrHLTimer(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure TCPClientJ54Connected(Sender: TObject);
    procedure TCPClientJ54Disconnected(Sender: TObject);
    procedure tmPingJ54Timer(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure trm_CallCntTimer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tvwCidLogCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid_CallManageColumnPosChanged(Sender: TcxGridTableView; AColumn: TcxGridColumn);
		procedure cxGrid_CallManageColumnSizeChanged(Sender: TcxGridTableView; AColumn: TcxGridColumn);
    procedure cxGrid_CallManageOutColumnPosChanged(Sender: TcxGridTableView; AColumn: TcxGridColumn);
    procedure cxGrid_CallManageOutColumnSizeChanged(Sender: TcxGridTableView; AColumn: TcxGridColumn);
    procedure cb_1_4PropertiesChange(Sender: TObject);
		procedure MiTodayClick(Sender: TObject);
    procedure MiYesterdayClick(Sender: TObject);
    procedure MiOneWeekClick(Sender: TObject);
    procedure MiOneMonthClick(Sender: TObject);
    procedure MiStartMonthClick(Sender: TObject);
		procedure btnSearchA1Click(Sender: TObject);
		procedure cxPageControl2PageChanging(Sender: TObject; NewPage: TcxTabSheet;
			var AllowChange: Boolean);
		procedure btnSearchA2Click(Sender: TObject);
		procedure Pop_NoCallPopup(Sender: TObject);
    procedure Pop_NoCall_N1Click(Sender: TObject);
    procedure cxGrid_PBXCounsol_1DataControllerSortingChanged(Sender: TObject);
    procedure cxGrid_PBXCounsol_2DataControllerSortingChanged(Sender: TObject);
    procedure cxGridPBX_Admin1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGrid_PBXCounsol_2ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGrid_PBXCounsol_1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGridPBX_Admin1DataControllerSortingChanged(Sender: TObject);
		procedure cbGrpNm1PropertiesChange(Sender: TObject);
		procedure cbGrpNm2PropertiesChange(Sender: TObject);
    procedure cxGridPBX_Admin3Column14PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxPageControl3Change(Sender: TObject);
    procedure cxGridPBX_Admin3Column15PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid_PBXCounsol_1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid_PBXCounsol_2StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure edt_1_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExcelA1Click(Sender: TObject);
    procedure edt_2_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbGrpNm2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbAgtNm2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
		procedure btnExcelA2Click(Sender: TObject);
    procedure cxGrid_PBXCounsol_2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    APreSearchDate, ASearchDate : string;
    ALastUpdate, dt_CallingServerTime, AHasMore : string;
    lg_status : string;
    sCustTel, sKeyNum, sConf_Slip : string;
		FFavoriteNumber: TStringList;
		arrCallingState: array[0..3] of integer;
    AiCallingOut, AiCallOut : integer;

    FSendPingCount54, FSendOTPCount54 : Integer;
    FReConnectCheck54 : Boolean;
    FReconnectCount54 : Integer;
    FSENDOTP54, FRECVOTP54 : AnsiString;

    J54FOnSessionConnect: TJ54OnCMNSessionConnect;
    J54FOnSessionDisConnect: TJ54OnCMNSessionDisConnect;
    J54FOnCMNPacketPage: TJ54OnCMNPacketPage;
    iCallingCnt : integer;

    LG_StartDateTime: string; // 업무시작일자

    Jon54PacketData: Array Of Byte;
		BRHeader, BRBody: TIdBytes;

		ACol : Integer;

		slGrpId : TStringList;
		slAgtId : array[1..2] of TStringList;

		procedure Proc_Init; // 프로그램 초기화 설정처리.
		procedure proc_CallingList(AParam : string; AGubun : Integer);
    procedure mniUserClick(Sender: TObject);
		procedure proc_Calling_lap_time;
    function func_lap_time(in_date, In_Time: string; iType: Integer = 0): string;
    function func_lap_timeSS(in_date, In_Time: string; iType: Integer = 0): string;
		function func_CallManageAdd(iGubun : integer; AList : TStringList) : Boolean;
		function func_AcceptInsert_Calling(ss_XML: string): Boolean;
		function func_AcceptInsert_CallingOut(ss_XML: string): Boolean;

    function J54DoReConnect : Boolean;
    function J54SockConnect(ATimeOut: Integer = 9000): Boolean;
    procedure J54GetOTPCode(AXML: WideString);
    function J54func_login : Boolean;

    property OnJ54SessionConnect: TJ54OnCMNSessionConnect read J54FOnSessionConnect write J54FOnSessionConnect;
    property OnJ54SessionDisConnect: TJ54OnCMNSessionDisConnect read J54FOnSessionDisConnect write J54FOnSessionDisConnect;
    property OnJ54CMNPacketPage: TJ54OnCMNPacketPage read J54FOnCMNPacketPage write J54FOnCMNPacketPage;

    function J54SendSock(const ASendData: string; var slList: TStringList;
			var AErrorCode: Integer; bOptCd: Boolean;
			ATimeOut: Integer = 15000 { 3000 } ): Boolean;
		function GetCurrentView: TcxGridDBTableView;
		function GetRecordIndexByText(AView: TcxCustomGridTableView; AText: string; AColumnIndex: Integer): Integer;
		procedure proc_Change_Title;
		procedure proc_Change_Title_EndCall;
		function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
		procedure pGetAgentList( aGrpId : String; Var aCombo : TcxComBoBox );
		procedure pSnd_AgentList( iGId : Integer; aGrpId : String );

		procedure proc_5011Grid(ACode, AData: string);
		procedure proc_5031Grid(ACode, AData: string);
		procedure proc_5111Grid(ACode, AData: string);
		procedure proc_5211Grid(ACode, AData: string);
		procedure proc_5311Grid(ACode, AData: string);

 public
		{ Public declarations }
		CallingTitle: array[0..24] of integer;
		CallingOutTitle: array[0..24] of integer;

		HashInsert : THashedStringList;
		HashUpdate : THashedStringList;
		HashUpdateRow : THashedStringList;

		HashDeleteRow : THashedStringList;
		HashCaller : THashedStringList;

		giGrpId : Integer;

		procedure proc_FavoriteNumber;
		procedure load_FavoriteNumber;
		procedure proc_Search;
		procedure proc_PBX_CallList(AData, ACode : string);
		procedure proc_PBXAdmin_CallList(AData, ACode : string);

		procedure pRcv_GroupList(AData:string);
		procedure pRcv_AgentList( sData : String );
	end;

var
  Frm_JON54: TFrm_JON54;

implementation

{$R *.dfm}

uses xe_Lib, xe_Func, xe_XML, xe_gnl3, xe_DM, Main, xe_Msg, xe_Flash,
	xe_JON01, xe_JON32, xe_gnl, xe_JON35, xe_gnl2, xe_packet, xe_system, CidSi415Lib;

procedure TFrm_JON54.BtnBtm1SettingClick(Sender: TObject);
var
  sTmp: string;
  ln_envFile: TIniFile;
begin
  if GS_EXEC_GUBUN = 0 then
  begin
    sTmp := '콜마너 프로그램 동시 실행 시 나중에 실행된 프로그램에서는 발신번호(CID), 로컬요금DB 연동이 제한 됩니다.'
      + #13#10 + #13#10
      + '먼저 실행한 프로그램을 통해 접수하시기 바랍니다.';
    GMessagebox(sTmp, CDMSI);
    Exit;
  end;

//  if (GT_USERIF.HD = 'A1531') or (GT_USERIF.HD = 'A100') then Frm_Main.PnlAcdSvr.Visible := True;

  try
    ln_envfile := TIniFile.Create(ENVPATHFILE);
    try
      Frm_Main.ed_ACDServerIP.Text := ln_envfile.ReadString('CID_COMM', 'ACDSERVERIP', '127.0.0.1');
      Frm_Main.cxAcdSvrUse.Checked := ln_envfile.ReadBool('CID_COMM', 'ACDSERVERUSE', False);

      if gsInternalNumber <> '' then
      begin
        Frm_Main.ed_Number.Text := gsInternalNumber;
        if ln_envFile.ReadString('CID_COMM', 'CID_SELSVR', '1') = '1' then
          Frm_Main.RB_SvrUse1.Checked := True
        else
          Frm_Main.RB_SvrUse2.Checked := True;

        Frm_Main.ed_CID_Ip1.Text := ln_envFile.ReadString('CID_COMM', 'CID_IP',  '');
        Frm_Main.ed_CID_Ip2.Text := ln_envFile.ReadString('CID_COMM', 'CID_IP2',  '');
				if ln_envFile.ReadString('CID_COMM', 'CID_AUTO', 'Y') = 'Y' then
          Frm_Main.rchk_Use.Checked := True
        else
          Frm_Main.rchk_Use.Checked := False;

        if ln_envFile.ReadString('CID_COMM', 'CID_SELSVRUSE', 'Y') = 'Y' then
        begin
          GS_SERVERCIDUSE := True;
          Frm_Main.cxChkCidSvrIPUse.Checked := True;
          Frm_Main.CbCidSvrIP.Enabled := True;
        end else
        begin
          GS_SERVERCIDUSE := False;
          Frm_Main.cxChkCidSvrIPUse.Checked := False;
					Frm_Main.CbCidSvrIP.Enabled := False;
        end;
      end else
      begin
        Frm_Main.RB_SvrUse1.Checked := True;
        Frm_Main.ed_Number.Text := '';
        Frm_Main.ed_CID_Ip1.Text := '';
        Frm_Main.ed_CID_Ip2.Text := '';
        Frm_Main.rchk_Use.Checked := False;
      end;

			if (Frm_Main.cxCIDList.Properties.Items.Count = 5) and (ln_envfile.ReadInteger('CID_COMM', 'GUBUN', 0) = 5) then
			begin
//				GS_EnvFile.WriteInteger('CID_COMM', 'GUBUN' , 0);
				Frm_Main.cxCIDList.ItemIndex := 0
			end
			else
				Frm_Main.cxCIDList.ItemIndex := ln_envfile.ReadInteger('CID_COMM', 'GUBUN', 0);

			Frm_Main.cxCIDListPropertiesChange(Frm_Main.cxCIDList);
			GT_POSS_TEL := StrToIntDef(GS_EnvFile.ReadString('POSS_TEL', 'GT_POSS_TEL', '0'), 0);

      //2008-06-30  CTI IP 설정값 추가.
      if GT_POSS_TEL = 0 then
      begin
        Frm_Main.chkUseSet02.Checked := False;
        Frm_Main.ed_CTIIP.Text := '';
				GT_POSS_IP := '';
				GT_POSS_KEYNUM := '';
      end else
      begin
        GT_POSS_IP := GS_EnvFile.ReadString('POSS_IP', 'GT_POSS_IP', '');
        Frm_Main.chkUseSet02.Checked := True;
        Frm_Main.ed_CTIIP.Text := GT_POSS_IP;
      end;
    	GT_POSS_KEYNUM := StringReplace(GS_EnvFile.ReadString('POSS_TEL', 'GT_POSS_KEYNUM', ''), '-', '', [rfReplaceAll]);
      Frm_Main.ed_ExTensionNumber.Text := GT_POSS_KEYNUM;

			if GT_OCX = 'SI415' then
			begin
				frm_Main.edt_PBXID.Text  := GS_EnvFile.ReadString('CID_COMM', 'PBX_ID',  '');
				frm_Main.edt_PBXPW.Text  := GS_EnvFile.ReadString('CID_COMM', 'PBX_PW',  '');
				frm_Main.edt_PBXEXT.Text := GS_EnvFile.ReadString('CID_COMM', 'PBX_EXT',  '');
				if GS_EnvFile.ReadString('CID_COMM', 'PBX_LV',  '0') = '2' then frm_Main.cb_PBXLevel.ItemIndex := 1 else
				if GS_EnvFile.ReadString('CID_COMM', 'PBX_LV',  '0') = '4' then frm_Main.cb_PBXLevel.ItemIndex := 2 
				else frm_Main.cb_PBXLevel.ItemIndex := StrToInt(GS_EnvFile.ReadString('CID_COMM', 'PBX_LV',  '0'));

				frm_Main.edt_PBXIP.Text  := GS_EnvFile.ReadString('CID_COMM', 'PBX_IP',  '');
				if GS_EnvFile.ReadString('CID_COMM', 'PBX_OP', '') = '1' then frm_Main.rdo_Phone_Use.Checked := True else frm_Main.rdo_Phone_NOUse.Checked := True;
				frm_Main.edt_ComID.Text := GT_ComID;

			end;




		finally
			FreeAndNil(ln_envfile);
    end;
	except on E: Exception do
		Assert(False, E.Message);
  end;

	GS_JON54AutoRun := GS_EnvFile.ReadBool('COUNSEL', 'JON54AutoRun', True);
	Frm_Main.chkJON54AutoRun.Checked := GS_JON54AutoRun;

	Frm_Main.pnlCTISetting.Left := (Frm_Main.Width - Frm_Main.pnlCTISetting.Width) div 2;
	Frm_Main.pnlCTISetting.top := ((Frm_Main.Height - Frm_Main.pnlCTISetting.Height) div 2) - 50;
  Frm_Main.ed_ACDServerIP.text := GS_EnvFile.ReadString('CID_COMM', 'ACDSERVERIP', '');
	Frm_Main.pnlCTISetting.Visible := True;
end;

procedure TFrm_JON54.btnCallingListClick(Sender: TObject);
begin
	if cxPageControl1.ActivePageIndex = 1 then  //종료콜
	begin
		if TCK_USER_PER.BTM_CALLMNGCNT <> '1' then  //통화종료/전화종료건수 보기 권한없으면 리스트추가금지 20170110 KHS
		begin
			exit;
		end;
	end;   

	if cxPageControl1.ActivePageIndex In [0, 1] then
	begin
		btnCallingList.Enabled := False;
		trm_CallList.Enabled := False;

		// 과거 자료는 종료콜 탭에서 조회 처리
		if ASearchDate <> '0' then                           
      cxPageControl1.ActivePageIndex := 1;

		ALastUpdate := '';       //조회버튼 클릭 시 무조건 초기화 검색
    iCallingCnt := 0;
		if cxPageControl1.ActivePageIndex = 0 then
    begin
      if ASearchDate = '0' then
      begin
        AiCallingOut := 0; //통화종료 초기화
        AiCallOut := 0;    //전화종료 초기화

        // 전체 상담원들 통화종료/전화종료 값 맞추기 위해 조회 클릭시 전체 조회 처리
				if TCK_USER_PER.BTM_CALLMNGCNT = '1' then  //통화종료/전화종료건수 보기 권한없으면 리스트추가금지 20170110 KHS
				begin
					cxGrid_CallManageOut.DataController.SetRecordCount(0);
					proc_CallingList('', 1);
				end;
      end;
			ALastUpdate := '';
      cxGrid_CallManage.DataController.SetRecordCount(0);
			proc_CallingList('', cxPageControl1.ActivePageIndex);
    end else
    if cxPageControl1.ActivePageIndex = 1 then
    begin
      AiCallingOut := 0; //통화종료 초기화
      AiCallOut := 0;    //전화종료 초기화
    	proc_CallingList('', cxPageControl1.ActivePageIndex);
    end;
  end else
  if cxPageControl1.ActivePageIndex = 2 then
  begin
    frm_Main.Proc_CidLog(88, '');
    proc_Search;
  end;
end;

procedure TFrm_JON54.btnCallListAutoSearchClick(Sender: TObject);
begin
	if btnCallListAutoSearch.Down then
  begin
		btnCallListAutoSearch.Tag := 0;
		dedt_date.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
    lb_SearchDay.Caption := '오늘';
    ASearchDate := '0';

    btnCallListAutoSearch.Enabled := True;
    btnCallListAutoSearch.Caption := '조회중';

    if APreSearchDate <> '0' then btnCallingList.Click
														 else proc_CallingList('', cxPageControl1.ActivePageIndex);
		btnCallingList.Enabled := False;
  end else
  begin
		trm_CallList.Enabled := False;
		btnCallListAutoSearch.Caption := '자동조회';
		btnCallListAutoSearch.Tag := 1;
		btnCallingList.Enabled := True;
	end;
end;

procedure TFrm_JON54.BtncxPage6EClick(Sender: TObject);
begin
  Frm_Main.cxPageControl2Click(Frm_Main.cxPageControl2);
end;

procedure TFrm_JON54.btnExcelA1Click(Sender: TObject);
var	AView: TcxGridDBTableView;
	AGrid : TcxGrid;
	sTmp, sExcel : string;
begin
	if cxPageControl2.ActivePageIndex = 0 then  //상담원통화내역(개인, 전체)
	begin
		AView := cxGrid_PBXCounsol_1;
		AGrid := cxGrid4;
		sTmp := '통화내역-상담원>전체내역';
		sExcel := '상담원_전체내역.xls'
	end
	else
	begin
		AView := cxGrid_PBXCounsol_2;
		AGrid := cxGrid6;
		sTmp := '통화내역-상담원>미연결콜';
		sExcel := '상담원_미연결콜.xls'
	end;
	

	if AView.DataController.RecordCount = 0 then
	begin
		GMessagebox('자료가 없습니다.', CDMSI);
		Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
		Exit;
	end;

	Frm_Main.sgExcel := sExcel;
	Frm_Main.sgRpExcel := Format('%s %s건', [sTmp, GetMoneyStr(AView.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := AGrid;
	Frm_Main.bgExcelOPT := False;
	Frm_Main.proc_excel(0);
end;

procedure TFrm_JON54.btnSearchA1Click(Sender: TObject);
var sStr, sANI, sDNIS, sTmp : string;
	idx : integer;
	sGId, sAId : string;
begin
	idx := cbGrpNm1.Properties.Items.IndexOf(cbGrpNm1.Text);
	if idx < 1  then sGId := ''
							else sGId := slGrpId.Strings[idx];
	if sGId = '전체' then sGId := '';						
	idx := cbAgtNm1.Properties.Items.IndexOf(cbAgtNM1.Text);
	if idx < 1  then sAId := ''
							else sAId := slAgtId[1].Strings[idx];
	if sAId = '전체' then sAId := '';						

	if cb_Keynumber01.ItemIndex = 0 then sANI := '' else sANI := cb_Keynumber01.Text; 
	sDNIS := Trim(CallToStr(edt_1_1.Text));

	case cb_1_1.ItemIndex of
	0,1 : sTmp := sDNIS + ',' + sANI;  
		2 : sTmp := sANI + ',' + sDNIS;
	end;
	
	if cxPageControl2.ActivePageIndex = 0 then  //상담원통화내역(개인, 전체)
	begin
		if cb_1_4.ItemIndex = 1 then
		begin    //'50105023                       69ss15      2018-06-28 09:00:002018-07-05 09:00:00                              0'
			case cb_1_1.ItemIndex of
			0,1 : sStr := fSI_5010_Send(FormatDateTime('yyyy-mm-dd', cxDtStartA1.date) + ' 09:00:00',
																	FormatDateTime('yyyy-mm-dd', cxDtEndA1.date) + ' 09:00:00',
																	sDNIS,
																	sANI, 
																	IntToStr(cb_1_1.ItemIndex));
				2 : sStr := fSI_5010_Send(FormatDateTime('yyyy-mm-dd', cxDtStartA1.date) + ' 09:00:00',
																	FormatDateTime('yyyy-mm-dd', cxDtEndA1.date) + ' 09:00:00',
																	sANI,
																	sDNIS, 
																	IntToStr(cb_1_1.ItemIndex));
			end;
		end else
		begin
			case cb_1_1.ItemIndex of
			0,1 : sStr := fSI_5020_Send(FormatDateTime('yyyy-mm-dd', cxDtStartA1.date) + ' 09:00:00',
																	FormatDateTime('yyyy-mm-dd', cxDtEndA1.date) + ' 09:00:00',
																	sDNIS,
																	sANI, 
																	IntToStr(cb_1_1.ItemIndex), sGId, sAId);
				2 : sStr := fSI_5020_Send(FormatDateTime('yyyy-mm-dd', cxDtStartA1.date) + ' 09:00:00',
																	FormatDateTime('yyyy-mm-dd', cxDtEndA1.date) + ' 09:00:00',
																	sANI,
																	sDNIS, 
																	IntToStr(cb_1_1.ItemIndex), sGId, sAId);
			end;

		end;
		cxGrid_PBXCounsol_1.DataController.SetRecordCount(0);
	end else
	if cxPageControl2.ActivePageIndex = 1 then  //상담원미통화내역
	begin
		sStr := fSI_5030_Send(FormatDateTime('yyyy-mm-dd', cxDtStartA1.date) + ' 09:00:00', 
													FormatDateTime('yyyy-mm-dd', cxDtEndA1.date) + ' 09:00:00',
													Trim(CallToStr(edt_1_1.Text)),
													sANI);
		cxGrid_PBXCounsol_2.DataController.SetRecordCount(0);
	end;

//	pnl_PBX_1.Enabled := False;
	Screen.Cursor := crHourGlass;
	Frm_Main.bSI415.Socket.SendText(sStr);												

//sStr := '[{"CallID":"11246967","GroupID":"","AgentID":"","StartTime":"2018-07-05 08:21:52","CallType":"1","CallDNIS":"1877-8189","CallANI":"01045555634"},'+
//'{"CallID":"11246966","GroupID":"","AgentID":"","StartTime":"2018-07-05 07:12:35","CallType":"1","CallDNIS":"1877-8189","CallANI":"01053016001"},'+
//'{"CallID":"11246965","GroupID":"","AgentID":"","StartTime":"2018-07-05 05:53:14","CallType":"1","CallDNIS":"1877-8189","CallANI":"01033300751"},'+
//{"CallID":"11246964","GroupID":"","AgentID":"","StartTime":"2018-07-04 22:56:12","CallType":"1","CallDNIS":"1877-6336","CallANI":"01044360360"},'+
//'{"CallID":"11246963","GroupID":"","AgentID":"","StartTime":"2018-07-04 21:13:13","CallType":"1","CallDNIS":"1877-6336","CallANI":"16883773"},'+
//{"CallID":"11246962","GroupID":"","AgentID":"","StartTime":"2018-07-04 20:14:22","CallType":"1","CallDNIS":"1877-9447","CallANI":"01057382070"},'+
//'{"CallID":"11246961","GroupID":"","AgentID":"","StartTime":"2018-07-04 20:07:35","CallType":"1","CallDNIS":"1877-8189","CallANI":"01037968028"},'+
//{"CallID":"11246960","GroupID":"","AgentID":"","StartTime":"2018-07-04 20:01:14","CallType":"1","CallDNIS":"1877-9447","CallANI":"01098614643"},'+
//'{"CallID":"11246959","GroupID":"","AgentID":"","StartTime":"2018-07-04 20:00:14","CallType":"1","CallDNIS":"1877-9447","CallANI":"01098614643"},'+
//{"CallID":"11246958","GroupID":"","AgentID":"","StartTime":"2018-07-04 19:10:00","CallType":"1","CallDNIS":"1877-9447","CallANI":"01046860089"},'+
//'{"CallID":"11246957","GroupID":"","AgentID":"","StartTime":"2018-07-04 19:08:14","CallType":"1","CallDNIS":"1877-9447","CallANI":"01046860089"},'+
//{"CallID":"11246956","GroupID":"","AgentID":"","StartTime":"2018-07-04 18:53:43","CallType":"1","CallDNIS":"1877-9447","CallANI":"01046860089"},'+
//'{"CallID":"11246955","GroupID":"","AgentID":"","StartTime":"2018-07-04 18:49:30","CallType":"1","CallDNIS":"1877-9447","CallANI":"01046860089"},'+
//{"CallID":"11246954","GroupID":"","AgentID":"","StartTime":"2018-07-04 18:48:11","CallType":"1","CallDNIS":"1877-9447","CallANI":"01046860089"},'+
//'{"CallID":"11246953","GroupID":"","AgentID":"","StartTime":"2018-07-04 18:47:38","CallType":"1","CallDNIS":"1877-9447","CallANI":"01046860089"},'+
//{"CallID":"11246952","GroupID":"","AgentID":"","StartTime":"2018-07-04 18:28:21","CallType":"1","CallDNIS":"1877-9447","CallANI":"01046860089"},'+
//'{"CallID":"11246951","GroupID":"","AgentID":"","StartTime":"2018-07-04 17:42:03","CallType":"1","CallDNIS":"1877-9447","CallANI":"01046860089"},'+
//{"CallID":"11246950","GroupID":"","AgentID":"","StartTime":"2018-07-04 17:05:36","CallType":"1","CallDNIS":"1877-8189","CallANI":"01032786155"},'+
//'{"CallID":"11246949","GroupID":"","AgentID":"","StartTime":"2018-07-04 16:37:57","CallType":"1","CallDNIS":"1877-6336","CallANI":"15883333"},'+
//{"CallID":"11246948","GroupID":"","AgentID":"","StartTime":"2018-07-04 16:35:43","CallType":"1","CallDNIS":"1877-9350","CallANI":"01055920294"},'+
//'{"CallID":"11246947","GroupID":"","AgentID":"","StartTime":"2018-07-04 15:44:16","CallType":"1","CallDNIS":"1877-8189","CallANI":"01073656778"},'+
//{"CallID":"11246946","GroupID":"","AgentID":"","StartTime":"2018-07-04 15:20:41","CallType":"1","CallDNIS":"1877-8189","CallANI":"01048580911"},'+
//'{"CallID":"11246945","GroupID":"","AgentID":"","StartTime":"2018-07-04 14:50:30","CallType":"1","CallDNIS":"1877-9497","CallANI":"01038652604"},'+
//{"CallID":"11246944","GroupID":"","AgentID":"","StartTime":"2018-07-04 13:52:57","CallType":"1","CallDNIS":"1877-6336","CallANI":"01071307979"},'+
//'{"CallID":"11246943","GroupID":"","AgentID":"","StartTime":"2018-07-04 12:09:02","CallType":"1","CallDNIS":"1877-9417","CallANI":"01045848283"},'+
//{"CallID":"11246942","GroupID":"","AgentID":"","StartTime":"2018-07-04 12:08:21","CallType":"1","CallDNIS":"1877-9417","CallANI":"0639107732"},'+
//'{"CallID":"11246941","GroupID":"1","AgentID":"bubble04","StartTime":"2018-07-04 12:08:06","CallType":"1","CallDNIS":"1877-9417","CallANI":"01045848283"},'+
//{"CallID":"11246940","GroupID":"","AgentID":"","StartTime":"2018-07-04 11:48:48","CallType":"1","CallDNIS":"1877-9350","CallANI":"01064118060"},'+
//'{"CallID":"11246939","GroupID":"","AgentID":"","StartTime":"2018-07-04 10:55:56","CallType":"1","CallDNIS":"1877-9350","CallANI":"0537411492"}]';
//'50205023                      133ss15      2018-05-01 09:00:002018-07-06 09:00:00                              0                                                                '                           '							
//'50205023                      133ss15      2018-06-27 09:00:002018-07-06 09:00:00                              0                                                                '
end;

procedure TFrm_JON54.btn_CallingClick(Sender: TObject);
begin
	Frm_Main.pCallingCID(Trim(ed_TelNum.Text), GT_POSS_KEYNUM);//'');
end;

procedure TFrm_JON54.btn_HangUpClick(Sender: TObject);
Var sStr : String;
		sURL, sURL1, sRequest, sNaesun : string;
begin
	if GT_OCX = 'NKT' then
	begin
  	sStr := '';

		sStr := sStr + '203';
		sStr := sStr + Rpad('C', 15, ' ');;
		sStr := sStr + Rpad('', 2, ' ');;
		sStr := sStr + '0  ';

		Frm_Main.bNKT_4BS.Socket.SendText(sStr);
  	SetDebugeWrite('NKT Send: '+ sStr);
  end else
	if GT_OCX = 'luxsys' then
	begin

    snaesun := gsInternalNumber;
    if Pos(',', snaesun) > 0 then
      snaesun := Copy(snaesun, 1, Pos(',', snaesun) - 1);
    if Frm_Main.xCTI_CTI.Socket.Connected = True then
    begin
      // 전화걸기 요청
      gtOUTB.sType := '901';
      gtOUTB.sTell := Rpad('',   14, ' ');
      gtOUTB.sCLin := Rpad('',  14, ' '); //대표번호
      gtOUTB.sRltc := '  ';
      gtOUTB.sLine := '    ';

      Frm_Main.xCTI_CTI.Socket.SendText(#2 + gtOUTB.sType + gtOUTB.sTell + Rpad(Trim(snaesun), 5,  ' ') + gtOUTB.sCLin + gtOUTB.sRltc + #3);
    end;
  	SetDebugeWrite('NKT Send: '+ sStr);
  end else
  begin

  end;
end;

procedure TFrm_JON54.btn_PickUpPhoneClick(Sender: TObject);
var sStr : string;
		sURL, sURL1, sRequest : string;
begin
	if GT_OCX = 'NKT' then
	begin
  	sStr := '';

		sStr := sStr + '202';
		sStr := sStr + Rpad('C', 15, ' ');
		sStr := sStr + Rpad('', 2, ' ');
		sStr := sStr + '137';
		sStr := sStr + Rpad(GS_JONCidInput.KeyNumber,   15, ' ');
		sStr := sStr + Rpad(GS_JONCidInput.PhoneNumber, 30, ' ');
		sStr := sStr + Rpad('', 60, ' ');
		sStr := sStr + '1';
		sStr := sStr + Rpad('', 1, ' ');
		sStr := sStr + Rpad('', 15, ' ');
		sStr := sStr + Rpad('', 15, ' ');

  	Frm_Main.bNKT_4BS.Socket.SendText(sStr);
  	SetDebugeWrite('NKT Send: '+ sStr);
  end;
end;

procedure TFrm_JON54.btn_SimpleCallingClick(Sender: TObject);
var
  pt: TPoint;
begin
  GetCursorPos(pt);
	pm_FavoriteNumber.Popup(pt.X, pt.Y);
end;

procedure TFrm_JON54.cbAgtNm2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = VK_RETURN then btnSearchA2.Click;
end;

procedure TFrm_JON54.cbGrpNm1PropertiesChange(Sender: TObject);
Var sGId : String;
		idx : Integer;
begin
	if cbGrpNm1.Tag = 99 then exit;

	if cbGrpNm1.ItemIndex < 1 then Exit;

	idx := cbGrpNm1.Properties.Items.IndexOf(cbGrpNM1.Text);
	sGid := slGrpId.Strings[idx];

	cbAgtNm1.enabled := False;
	pSnd_AgentList(1, sGId);
end;

procedure TFrm_JON54.cbGrpNm2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = VK_RETURN then btnSearchA2.Click;
end;

procedure TFrm_JON54.cbGrpNm2PropertiesChange(Sender: TObject);
Var sGId : String;
		idx : Integer;
begin
	if cbGrpNm2.Tag = 99 then exit;

	if cbGrpNm2.ItemIndex < 1 then Exit;

	idx := cbGrpNm2.Properties.Items.IndexOf(cbGrpNm2.Text);
	sGid := slGrpId.Strings[idx];

	
	pSnd_AgentList(54, sGId);

end;

procedure TFrm_JON54.cb_1_4PropertiesChange(Sender: TObject);
begin
	if cb_1_4.ItemIndex = 0 then
	begin
		cbGrpNm1.Enabled := True; 
		cbAgtNm1.Enabled := True;
	end else
	begin
		cbGrpNm1.Enabled := False; 
		cbAgtNm1.Enabled := False; 
	end;
end;

procedure TFrm_JON54.cxButton14Click(Sender: TObject);
begin
  pop_date.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_JON54.cxButton16Click(Sender: TObject);
begin
//  if gsCidVersion = 'CAT' then
//    begin
      Frm_Main.tmr_JoinView.Tag := 100;
      Frm_Main.Func_New_Cid('C8007         15990000     1010      01041934993  17:01:38P633');

//      Frm_Main.Func_New_Cid('117271415775000      20060001043545421   01:06:40                                            ' +
//                            '117271215771200      20060001052858793   01:07:10                                            ' +
//                            '117270715771577      20060001063169480   01:07:34                                            ');

//  end else
//  begin
//    Frm_Main.Func_New_Cid('C17           12345        114       0234008506   18:59:06B100');
//  end;
end;

procedure TFrm_JON54.cxButton1Click(Sender: TObject);
begin
  pop_CallingStateCHK.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_JON54.btnExcelA2Click(Sender: TObject);
var	AView: TcxGridDBTableView;
	AGrid : TcxGrid;
	sTmp, sExcel : string;
begin
	if cxPageControl3.ActivePageIndex = 0 then  //상담원통화내역(개인, 전체)
	begin
		AView := cxGridPBX_Admin1;
		AGrid := cxGrid5;
		sTmp := '통화내역-관리자>전체내역';
		sExcel := '관리자_전체내역.xls';
	end else
	if cxPageControl3.ActivePageIndex = 1 then  //상담원통화내역(개인, 전체)
	begin
		AView := cxGridPBX_Admin2;
		AGrid := cxGrid8;
		sTmp := '통화내역-관리자>미연결콜';
		sExcel := '관리자_미연결콜.xls';
	end else
	if cxPageControl3.ActivePageIndex = 2 then  //상담원통화내역(개인, 전체)
	begin
		AView := cxGridPBX_Admin3;
		AGrid := cxGrid7;
		sTmp := '통화내역-관리자>녹취조회';
		sExcel := '관리자_녹취조회.xls';
	end;
	

	if AView.DataController.RecordCount = 0 then
	begin
		GMessagebox('자료가 없습니다.', CDMSI);
		Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
		Exit;
	end;

	Frm_Main.sgExcel := sExcel;
	Frm_Main.sgRpExcel := Format('%s %s건', [sTmp, GetMoneyStr(AView.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := AGrid;
	Frm_Main.bgExcelOPT := False;
	Frm_Main.proc_excel(0);
end;

procedure TFrm_JON54.btnSearchA2Click(Sender: TObject);
var sStr : string;
	idx : integer;
	sGId, sAId, sANI, sDNIS : string;
begin
	idx := cbGrpNm2.Properties.Items.IndexOf(cbGrpNm2.Text);
	if idx < 0  then sGId := ''
							else sGId := slGrpId.Strings[idx];
	if sGId = '전체' then sGId := '';						
	idx := cbAgtNm2.Properties.Items.IndexOf(cbAgtNM2.Text);
	if idx < 0  then sAId := ''
							else sAId := slAgtId[2].Strings[idx];
	if sAId = '전체' then sAId := '';						

	if cb_Keynumber02.ItemIndex = 0 then sANI := '' else sANI := cb_Keynumber02.Text; 
	sDNIS := Trim(CallToStr(edt_2_1.Text));

	if cxPageControl3.ActivePageIndex = 0 then  //상담원통화내역(관리자, 전체)
	begin
		case cb_2_1.ItemIndex of
		0,1 : sStr := fSI_5110_Send('5110',
																FormatDateTime('yyyy-mm-dd', cxDtStartA2.date) + ' 09:00:00', 
																FormatDateTime('yyyy-mm-dd', cxDtEndA2.date) + ' 09:00:00',
																sDNIS,
																sANI, 
																IntToStr(cb_2_1.ItemIndex), sGId, sAId, '', '1000', GT_Si415_INFO.Id);
			2 : sStr := fSI_5110_Send('5110',
																FormatDateTime('yyyy-mm-dd', cxDtStartA2.date) + ' 09:00:00', 
																FormatDateTime('yyyy-mm-dd', cxDtEndA2.date) + ' 09:00:00',
																sANI, 
																sDNIS,
																IntToStr(cb_2_1.ItemIndex), sGId, sAId, '', '1000', GT_Si415_INFO.Id);
		end;
		cxGridPBX_Admin1.DataController.SetRecordCount(0);
	end else
	if cxPageControl3.ActivePageIndex = 1 then  //미연결콜(관리자, 전체)
	begin
		sStr := fSI_5210_Send(FormatDateTime('yyyy-mm-dd', cxDtStartA2.date) + ' 09:00:00', 
													FormatDateTime('yyyy-mm-dd', cxDtEndA2.date) + ' 09:00:00',
													sDNIS,
													sANI, 
													sGId, sAId, '1000', GT_Si415_INFO.Id);
		cxGridPBX_Admin2.DataController.SetRecordCount(0);
	end else
	if cxPageControl3.ActivePageIndex = 2 then  //녹취조회(관리자, 전체)
	begin                                           
		case cb_2_1.ItemIndex of
		0,1 : sStr := fSI_5310_Send(FormatDateTime('yyyy-mm-dd', cxDtStartA2.date) + ' 09:00:00', 
																FormatDateTime('yyyy-mm-dd', cxDtEndA2.date) + ' 09:00:00',
																sDNIS,
																sANI, 
																IntToStr(cb_2_1.ItemIndex), sGId, sAId, '1000', GT_Si415_INFO.Id);
			2 : sStr := fSI_5310_Send(FormatDateTime('yyyy-mm-dd', cxDtStartA2.date) + ' 09:00:00', 
																FormatDateTime('yyyy-mm-dd', cxDtEndA2.date) + ' 09:00:00',
																sANI, 
																sDNIS,
																IntToStr(cb_2_1.ItemIndex), sGId, sAId, '1000', GT_Si415_INFO.Id);
		end;
		cxGridPBX_Admin3.DataController.SetRecordCount(0);
	end;
	pSi415SendData(sStr);
	//Frm_Main.bSI415_A.Socket.SendText(sStr);												
end;

procedure TFrm_JON54.cxGridPBX_Admin1ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	ACol := AColumn.Index;
end;

procedure TFrm_JON54.cxGridPBX_Admin1DataControllerSortingChanged(
  Sender: TObject);
begin
	gfSetIndexNo(cxGridPBX_Admin1, ACol, GS_SortNoChange);
end;

procedure TFrm_JON54.cxGridPBX_Admin3Column14PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
Var iRow, iSpeak, iDx : Integer;
	sSpeak, sUrl, sTmp : string;
begin
	Try
{		Player.mediaCollection.getAll.clear;
		Player.currentPlaylist.clear;

		iRow := cxGridPBX_Admin3.DataController.FocusedRecordIndex;
		iSpeak := cxGridPBX_Admin3.GetColumnByFieldName('파일명').Index;
		sSpeak := cxGridPBX_Admin3.DataController.Values[iRow, iSpeak];

		sTmp  := GS_EnvFile.ReadString('CID_COMM', 'PBX_IP',  '');
		sUrl := 'http://'+sTmp+':9425/ss15_rec/';
//		sUrl := 'http://203.240.232.40:9425/ivrment/';


		try
			Player.URL := sUrl+sSpeak;
		except
			On E: Exception do
			begin
				ShowMessage(e.Message);
			end;
		end;   }
	except

	End;
end;

procedure TFrm_JON54.cxGridPBX_Admin3Column15PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
	procedure RunDownload(AUrl : string);
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

			IE.Navigate(AUrl);
      IE.Visible := True;

      Application.ProcessMessages;
      sleep(1);
		except on E: Exception do
			GMessagebox(Format('녹취파일 다운로드 시 오류(Err: %s)가 발생하였습니다.'#13#10
												+ '(다시시도 바랍니다.)' , [E.Message]), CDMSI);
		end;
	end;
Var iRow, iSpeak, iDx : Integer;
	sSpeak, sUrl, sTmp, sFileName : string;
	fsData : TFileStream;
begin

	iRow := cxGridPBX_Admin3.DataController.FocusedRecordIndex;
	iSpeak := cxGridPBX_Admin3.GetColumnByFieldName('파일명').Index;
	sSpeak := cxGridPBX_Admin3.DataController.Values[iRow, iSpeak];

	sTmp  := GS_EnvFile.ReadString('CID_COMM', 'PBX_IP',  '');
	sUrl := 'http://'+sTmp+':9425/ss15_rec/' + sSpeak;
	SaveDialog1.Title := '녹취다운로드'; 

	if SaveDialog1.Execute then
	begin
		sFileName := SaveDialog1.FileName;
		if FileExists(sFileName) then
		begin
			if MessageDlg('파일이 이미 존재합니다. 덮어쓰시겠습니까?', mtConfirmation,[mbYes,mbNo], 0) = mrYES then
			begin
				fsData := TFileStream.Create(sFileName, fmCreate);
				try
					IdHTTP1.Get(sUrl, fsData);
				finally
					fsData.Free;
				end;	
			end;
		end else
		begin
			fsData := TFileStream.Create(sFileName, fmCreate);
			try
				IdHTTP1.Get(sUrl, fsData);
			finally
				fsData.Free;
			end;	
		end;
		
	end;	
	//		sUrl := 'http://203.240.232.40:9425/ivrment/';
//	RunDownload(sUrl);

	
end;

procedure TFrm_JON54.cxGrid_CallManageCellClick(Sender: TcxCustomGridTableView;
	ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
	AShift: TShiftState; var AHandled: Boolean);
begin
	btnCallListAutoSearch.Down := False;
  btnCallListAutoSearch.Caption := '자동조회';
  btnCallListAutoSearch.Tag := 1;
  trm_CallList.Enabled := False;
  btnCallingList.Enabled := True;

	if (AButton = mbRight) then
  begin
    Pop_CallManage.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
  end;
end;

procedure TFrm_JON54.cxGrid_CallManageColumnPosChanged(Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
	SetDebugeWrite('TFrm_JON54.cxGrid_CallManageColumnPosChanged');
	try
//		proc_Change_Title;
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_JON54.cxGrid_CallManageColumnSizeChanged(Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
	SetDebugeWrite('TFrm_JON54.cxGrid_CallManageColumnSizeChanged');
	try
//		proc_Change_Title;
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_JON54.cxGrid_CallManageOutColumnPosChanged(Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
	SetDebugeWrite('TFrm_JON54.cxGrid_CallManageOutColumnPosChanged');
	try
//		proc_Change_Title_EndCall;
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_JON54.cxGrid_CallManageOutColumnSizeChanged(Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
	SetDebugeWrite('TFrm_JON54.cxGrid_CallManageOutColumnSizeChanged');
	try
//		proc_Change_Title_EndCall;
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_JON54.cxGrid_CallManageStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var iCallingStatus, iRow : integer;
begin
  iRow := cxGrid_CallManage.DataController.GetRowInfo(ARecord.Index).RecordIndex;
  iCallingStatus := cxGrid_CallManage.GetColumnByFieldName('전화상태').Index;
  if cxGrid_CallManage.DataController.Values[iRow,iCallingStatus] = '오퍼링' then
  begin
		AStyle := frm_Main.cxStyle2;
  end
  else AStyle := frm_Main.cxStyle1;
end;

procedure TFrm_JON54.cxGrid_PBXCounsol_1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var iRow, iCol, iOut, iSend : integer;
	sStr, sTmp : string;
begin
	Try
		iRow := cxGrid_PBXCounsol_1.DataController.FocusedRecordIndex;
		iCol := ACellViewInfo.item.Index;
		iSend := cxGrid_PBXCounsol_1.GetColumnByFieldName('발신번호').Index;
		iOut := cxGrid_PBXCounsol_1.GetColumnByFieldName('수신번호').Index;

		if iCol = iSend then
		begin
			sTmp := cxGrid_PBXCounsol_1.DataController.Values[iRow, iSend];
			sStr := fSI_2501_Send(CallToStr(sTmp), '');
			Frm_Main.bSI415.Socket.SendText(sStr);		//'25015023                       30ss15      0234008522                    '										
		end else
		if iCol = iOut then
		begin
			sTmp := cxGrid_PBXCounsol_1.DataController.Values[iRow, iOut];
			sStr := fSI_2501_Send(CallToStr(sTmp), '');
			Frm_Main.bSI415.Socket.SendText(sStr);												
		end;
	
  Finally

  End;
end;

procedure TFrm_JON54.cxGrid_PBXCounsol_1ColumnHeaderClick(
	Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
	ACol := AColumn.Index;
end;

procedure TFrm_JON54.cxGrid_PBXCounsol_1DataControllerSortingChanged(
  Sender: TObject);
begin
	gfSetIndexNo(cxGrid_PBXCounsol_1, ACol, GS_SortNoChange);
end;

procedure TFrm_JON54.cxGrid_PBXCounsol_2CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var iRow, iCol, iOut, iSend : integer;
	sStr, sTmp : string;
begin
	Try
		iRow := cxGrid_PBXCounsol_2.DataController.FocusedRecordIndex;
		iCol := ACellViewInfo.item.Index;
		iSend := cxGrid_PBXCounsol_2.GetColumnByFieldName('발신번호').Index;

		if iCol = iSend then
		begin
			sTmp := cxGrid_PBXCounsol_2.DataController.Values[iRow, iSend];
			sStr := fSI_2501_Send(CallToStr(sTmp), '');
			Frm_Main.bSI415.Socket.SendText(sStr);		//'25015023                       30ss15      0234008522                    '										
		end;
	
  Finally

  End;
end;

procedure TFrm_JON54.cxGrid_PBXCounsol_2ColumnHeaderClick(
	Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
	ACol := AColumn.Index;
end;

procedure TFrm_JON54.cxGrid_PBXCounsol_2DataControllerSortingChanged(
  Sender: TObject);
begin
	gfSetIndexNo(cxGrid_PBXCounsol_2, ACol, GS_SortNoChange);
end;

procedure TFrm_JON54.cxGrid_PBXCounsol_2StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
{  iRow := cxGrid_CallManage.DataController.GetRowInfo(ARecord.Index).RecordIndex;
  iCallingStatus := cxGrid_CallManage.GetColumnByFieldName('전화상태').Index;
  if cxGrid_CallManage.DataController.Values[iRow,iCallingStatus] = '오퍼링' then
  begin
    AStyle := frm_Main.cxStyle2;
  end
  else AStyle := frm_Main.cxStyle1;    }
end;

procedure TFrm_JON54.cxPageControl1Change(Sender: TObject);
begin
	if TCK_USER_PER.BTM_CALLMNG <> '1' then Exit;

	case cxPageControl1.ActivePageIndex of
		0:
      begin
				if btnCallListAutoSearch.Tag in [0,99] then
        begin
          if ASearchDate = '0' then
          begin
            btnCallListAutoSearch.down := True;
            btnCallListAutoSearch.Caption := '조회중';
						trm_CallList.Enabled := True;
          end;
					btnCallListAutoSearch.Enabled := True;
					btnCallListAutoSearch.Tag := 0;
        end else
        begin
          btnCallListAutoSearch.Enabled := True;
				end;
//				
			end;
    1, 2 :
      begin
				trm_CallList.Enabled := False;
				btnCallListAutoSearch.down := False;
				btnCallListAutoSearch.Enabled := False;
				if btnCallListAutoSearch.Tag <> 1 then
					btnCallListAutoSearch.Tag := 99;
				btnCallListAutoSearch.Caption := '자동조회';
				btnCallingList.Enabled := True;

				if cxPageControl1.ActivePageIndex = 2 then proc_Search;
      end;
  end;
end;

procedure TFrm_JON54.cxPageControl2PageChanging(Sender: TObject;
	NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
	if	cxPageControl2.ActivePageIndex = 1 then
	begin
		cb_1_1.Enabled := True;
		cbGrpNm1.Enabled := True;
		cbAgtNm1.Enabled := True;
		cb_1_4.Enabled := True;
	end else
	if	cxPageControl2.ActivePageIndex = 0 then
	begin
		cb_1_1.Enabled := False;
		cbGrpNm1.Enabled := False;
		cbAgtNm1.Enabled := False;
		cb_1_4.Enabled := False;
	end;
end;

procedure TFrm_JON54.cxPageControl3Change(Sender: TObject);
begin
	pnl_Palyer.Visible := False;
	cb_2_1.enabled := True;
	case cxPageControl3.ActivePageIndex of
		1 : cb_2_1.enabled := False;  
		2 : pnl_Palyer.Visible := True;  
	end;

end;

procedure TFrm_JON54.edt_1_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then btnSearchA1.Click;
end;

procedure TFrm_JON54.edt_2_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = VK_RETURN then btnSearchA2.Click;
end;

procedure TFrm_JON54.edt_NAMETELKeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if key = VK_RETURN then
	begin
		btnCallingList.Enabled := True;
    btnCallingList.Click;
  end;
end;

procedure TFrm_JON54.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Jon54PacketData := Nil;
  FreeAndNil(FFavoriteNumber);

  tmPingJ54.Enabled := False;
  TCPClientJ54.Tag := 1;
  TCPClientJ54.Disconnect;

  Action := caFree;
end;

procedure TFrm_JON54.FormCreate(Sender: TObject);
Var i, iRow, iWidth : Integer;
	sTmp : string;
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
	if not Assigned(GS_EnvFile) then
		GS_EnvFile := TIniFile.Create(ENVPATHFILE);

	try
		for i := 0 to cxGrid_CallManage.ColumnCount - 1 do
			cxGrid_CallManage.Columns[i].DataBinding.ValueType := 'String';
		SetDebugeWrite('cxGrid_CallManage.BeginUpdate');
		cxGrid_CallManage.BeginUpdate;
		try
			cxGrid_CallManage.DataController.SetRecordCount(0);
			for i := 0 to cxGrid_CallManage.ColumnCount - 1 do
			begin
				iWidth := 64;
				sTmp := GS_EnvFile.ReadString('JON54', IntToStr(i), '');
				iWidth := StrToIntDef(GS_EnvFile.ReadString('JON54Size', IntToStr(i), '0'), 0);

				if lb_CallingTitle_List.Items.IndexOf(sTmp) < 0 then
				begin
					sTmp := '';
					iWidth := 64;
				end;

				if sTmp <> '' then
				begin
					iRow := cxGrid_CallManage.GetColumnByFieldName(sTmp).Index;
					if iRow = -1 then iRow := i;
				end
				else iRow := i;
					
				cxGrid_CallManage.Columns[iRow].Index := i;
				cxGrid_CallManage.Columns[i].Width := iWidth;
			end;
		finally
			cxGrid_CallManage.EndUpdate;
			SetDebugeWrite('cxGVeOrderList.EndUpdate');
		end;
		
		for i := 0 to cxGrid_CallManageOut.ColumnCount - 1 do
			cxGrid_CallManageOut.Columns[i].DataBinding.ValueType := 'String';
		SetDebugeWrite('cxGrid_CallManageOut.BeginUpdate');
		cxGrid_CallManageOut.BeginUpdate;
		try
			cxGrid_CallManageOut.DataController.SetRecordCount(0);
			for i := 0 to cxGrid_CallManageOut.ColumnCount - 1 do
			begin
				iWidth := 64;
				sTmp := GS_EnvFile.ReadString('JON54EndCall', IntToStr(i), '');
				iWidth := StrToIntDef(GS_EnvFile.ReadString('JON54EndCallSize', IntToStr(i), '0'), 0);

				if lb_CallingTitleOut_List.Items.IndexOf(sTmp) < 0 then
				begin
					sTmp := '';
					iWidth := 64;
				end;

				if sTmp <> '' then
				begin
					iRow := cxGrid_CallManageOut.GetColumnByFieldName(sTmp).Index;
					if iRow = -1 then iRow := i;
				end
				else iRow := i;
					
				cxGrid_CallManageOut.Columns[iRow].Index := i;
				cxGrid_CallManageOut.Columns[i].Width := iWidth;
			end;
		finally
			cxGrid_CallManageOut.EndUpdate;
			SetDebugeWrite('cxGrid_CallManageOut.EndUpdate');
		end;


		cxDtStartA1.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
		cxDtEndA1.Date := cxDtStartA1.Date + 1;
		for i := 0 to cxGrid_PBXCounsol_1.ColumnCount - 1 do
			cxGrid_PBXCounsol_1.Columns[i].DataBinding.ValueType := 'String';
		cxGrid_PBXCounsol_1.Columns[0].DataBinding.ValueType := 'Integer';	
		
		for i := 0 to cxGrid_PBXCounsol_2.ColumnCount - 1 do
			cxGrid_PBXCounsol_2.Columns[i].DataBinding.ValueType := 'String';
		cxGrid_PBXCounsol_2.Columns[0].DataBinding.ValueType := 'Integer';	


		cxDtStartA2.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
		cxDtEndA2.Date := cxDtStartA1.Date + 1;
		cxGridPBX_Admin1.DataController.SetRecordCount(0);
		for i := 0 to cxGridPBX_Admin1.ColumnCount - 1 do
			cxGridPBX_Admin1.Columns[i].DataBinding.ValueType := 'String';
		cxGridPBX_Admin1.Columns[0].DataBinding.ValueType := 'Integer';	

		cxGridPBX_Admin2.DataController.SetRecordCount(0);
		for i := 0 to cxGridPBX_Admin2.ColumnCount - 1 do
			cxGridPBX_Admin2.Columns[i].DataBinding.ValueType := 'String';
		cxGridPBX_Admin2.Columns[0].DataBinding.ValueType := 'Integer';	

		cxGridPBX_Admin3.DataController.SetRecordCount(0);
		for i := 0 to cxGridPBX_Admin3.ColumnCount - 1 do
			cxGridPBX_Admin3.Columns[i].DataBinding.ValueType := 'String';
		cxGridPBX_Admin3.Columns[0].DataBinding.ValueType := 'Integer';	

		slGrpId := TStringList.Create;
		slAgtId[1] := TStringList.Create;
		slAgtId[2] := TStringList.Create;

		Proc_Init;
	Except
		on e: exception do
		begin
      Log('FormCreate Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'FormCreate Error :' + E.Message);
    end;
	end;

end;

procedure TFrm_JON54.FormDestroy(Sender: TObject);
begin
	FreeAndNil(slGrpId);
	FreeAndNil(slAgtId[1]);
	FreeAndNil(slAgtId[2]);

	FreeAndNil(HashInsert);
  FreeAndNil(HashUpdate);
  FreeAndNil(HashUpdateRow);

  FreeAndNil(HashDeleteRow);
  FreeAndNil(HashCaller);
end;

function TFrm_JON54.func_lap_time(in_date, In_Time: string;
  iType: Integer): string;
var
  sTime, dTime: TDateTime;
  sDate: string;
begin
  Result:= '';
  try
    if iType = 0 then
      sDate := dt_CallingServerTime
    else
    begin
      sDate := In_Time;
    end;

    if sDate = '' then
      Exit;

    sDate := GetStrToLongDateTimeStr(sDate);
    sTime := StrToDateTime(sDate);

    sDate := GetStrToLongDateTimeStr(in_date);
    dTime := StrToDateTime(sDate);

    sDate := FormatDateTime('hhmmss', sTime - dTime);

    if (StrToIntDef(copy(sDate, 1, 4), 100) >= 20) and (iType = 0) then
    begin
      Exit;
    end else
    begin
      if (StrToIntDef(copy(sDate, 1, 2), 0) = 0) then
        sDate := IntToStr(StrToIntDef(copy(sDate, 3, 2), 0)) + '분' +
                 IntToStr(StrToIntDef(copy(sDate, 5, 2), 0)) + '초'
      else
        sDate := IntToStr(StrToIntDef(copy(sDate, 1, 2), 0)) + '시간' +
                 IntToStr(StrToIntDef(copy(sDate, 3, 2), 0)) + '분' +
                 IntToStr(StrToIntDef(copy(sDate, 5, 2), 0)) + '초';

      Result := sDate;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function TFrm_JON54.func_lap_timeSS(in_date, In_Time: string;
  iType: Integer): string;
var
  sTime, dTime: TDateTime;
  sDate: string;
begin
  Result:= '';
  try
    if iType = 0 then
      sDate := dt_CallingServerTime
    else
    begin
      sDate := In_Time;
    end;

    if sDate = '' then
      Exit;

    sDate := GetStrToLongDateTimeStr(sDate);
    sTime := StrToDateTime(sDate);

    sDate := GetStrToLongDateTimeStr(in_date);
    dTime := StrToDateTime(sDate);

    sDate := FormatDateTime('hhmmss', sTime - dTime);

    if (StrToIntDef(copy(sDate, 1, 4), 100) >= 20) and (iType = 0) then
    begin
      Exit;
    end else
    begin
			if (StrToIntDef(copy(sDate, 3, 2), 0) = 0) then
        sDate := IntToStr(StrToIntDef(copy(sDate, 5, 2), 0)) + '초'
      else
        sDate := IntToStr(StrToIntDef(copy(sDate, 3, 2), 0)) + '분' +
                 IntToStr(StrToIntDef(copy(sDate, 5, 2), 0)) + '초';

      Result := sDate;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function TFrm_JON54.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

	Case cxPageControl1.ActivePageIndex of
	3 : begin
				AStDt := cxDtStartA1;
				AEdDt := cxDtEndA1;
			end;
	4 : begin
				AStDt := cxDtStartA2;
				AEdDt := cxDtEndA2;
			end;
  End;
end;

function TFrm_JON54.GetCurrentView: TcxGridDBTableView;
begin
	Result := cxGrid_CallManage;

  if cxPageControl1.ActivePageIndex = 1 then
		Result := cxGrid_CallManageOut;
end;

function TFrm_JON54.GetRecordIndexByText(AView: TcxCustomGridTableView;
  AText: string; AColumnIndex: Integer): Integer;
var I: Integer;
begin
  Result := - 1;
  with AView.ViewData do
  begin
    for I := 0 to RecordCount - 1 do
    begin
      if StrPos(PChar(Records[I].DisplayTexts[AColumnIndex]), PChar(AText)) <> nil then
      begin
        Result := Records[I].RecordIndex;
        Break;
      end;
    end;
  end;
end;

function TFrm_JON54.J54DoReConnect: Boolean;
begin
  Result := True;
  if J54SockConnect(3000) then Exit;

  Dm.SetServerIP;

  while Dm.ServerIPChange do
  begin
    if J54SockConnect(3000) then Exit;
  end;

  SERVER_IP := GS_BACKUP_SVRIP[0];
  if Trim(TESTSERVER_IP) <> '' then
    SERVER_IP := TESTSERVER_IP;

  GMessagebox('네트워크 접속 후 다시 작업 해 주십시오', CDMSI);
  Result := False;
end;

function TFrm_JON54.J54func_login: Boolean;
var
  SendData: string;
  RecvData: string;
  sUserID: string;
  sUserPW: string;
  sMsg, MacAddr, LockCode, ls_URL, sType: string;
  ErrCode: Integer;
  slList: TStringList;
  IE: variant;
  sQueryTemp : String;
begin
  Result := False;

  FSENDOTP54 := CC_ENCRYPT;
  FRECVOTP54 := CC_DNCRYPT;
  sType := '3';

	fGet_BlowFish_Query(gsClientVer, sQueryTemp);
	if GS_CheckPC then
		LockCode := GetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), 'Code')
	else
		LockCode := GetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), GT_USERIF.ID+'Code');

	if Trim(LockCode) = '' then
    LockCode := GetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), 'Code');
  SendData := GetC001Login('LOGIN', GT_USERIF.MC, GT_USERIF.HS, GT_USERIF.VN, '', '',  SysInfoRec.ComputerName, LockCode, GS_PRJ_VERSION, sQueryTemp, sType);

  try
    slList := TStringList.Create;
    try
      if J54SendSock(SendData, slList, ErrCode, True) then
      begin
      end;
    finally
      slList.Free;
    end;
  except
    J54DoReConnect;
  end;
end;

procedure TFrm_JON54.J54GetOTPCode(AXML: WideString);
var
  xdom: msDomDocument;
  XMLNode: IXMLDomNodeList;
  TempStr: string;
begin
  xdom := ComsDomDocument.Create;
  if not xdom.loadXML(AXML) then
    exit;
  try
    XMLNode := xdom.documentElement.selectNodes('/cdms/Service/Error');
    TempStr := XMLNode.item[0].attributes.getNamedItem('Code').Text;
    if TempStr = '0000' then
    begin
      XMLNode := xdom.documentElement.selectNodes('/cdms/Service/Data/Member');

      FSENDOTP54 := XMLNode.item[0].attributes.getNamedItem('PrivateKey').Text;
      FRECVOTP54 := FSENDOTP54;
      FSendOTPCount54 := 0;
    end;
  except
  end;
  xdom := nil;
end;

function TFrm_JON54.J54SendSock(const ASendData: string;
  var slList: TStringList; var AErrorCode: Integer; bOptCd: Boolean;
  ATimeOut: Integer): Boolean;
label
  Retry;
var
  TempStr, TempStr2: AnsiString;
  EndData: Boolean;
  AMsgCode: AnsiString;
  AHeader: TTCKCommonHeader;
  APacketSize: Integer;
  pData: PAnsiChar;
  retry_cnt: Integer;
begin
  Result := False;
  retry_cnt := 0;

  // 임계영역 설정.
Retry:
  _CS_SockSendJ54.Acquire;
  try
    if TCPClientJ54.Tag = 1 then
    begin
      slList.Add('');
      exit;
    end;

    if bOptCd then
      AMsgCode := 'C001'
    else
      AMsgCode := '0000';

    if ASendData = '9999' then
      AMsgCode := '9999'
    else
      FSendOTPCount54 := 0;

    EndData := False;

    try
      tmPingJ54.Enabled := False;
      if TCPClientJ54.Connected then
      begin
        slList.Clear;
        FSendPingCount54 := 0;

        // 2011.04.05 통계화면조회속도지체로 타임아웃 1분까지 연장
        TCPClientJ54.ReadTimeout := 60000;
        Frm_Main.sbar_Message.Panels[4].Text := '';

        try
          AErrorCode := NO_ERROR_CODE;
          TempStr := UTF8Encode(ASendData);

          APacketSize := MakePacket(Jon54PacketData , AMsgCode, TempStr, FSENDOTP54);
          TCPClientJ54.IOHandler.Write(RawToBytes(Jon54PacketData[0], APacketSize));
        except
          on E: Exception do
          begin
            OutputDebugString(PChar(Format('WriteBuffer: %s[IP: %s]',
              [E.Message, SERVER_IP])));

            if (retry_cnt = 0) then
            begin
              retry_cnt := 1;
            end;

            raise;
          end;
        end;

        TCPClientJ54.Tag := 1;
        repeat
          // [hjf] Header에서 패킷 길이 읽어와서 메모리를 읽는다.
          try
            SetLength(BRHeader, MaxArrHeadSize);
            TCPClientJ54.IOHandler.ReadBytes(BRHeader, MaxArrHeadSize, False);
            Move(BRHeader[0], AHeader, MaxArrHeadSize);
            AHeader.PacketLength := ntohl(AHeader.PacketLength);
          except
            on E: Exception do
            begin
              OutputDebugString(PChar(Format('ReadBuffer Header: %s[IP: %s]',
                [E.Message, SERVER_IP])));
              raise;
            end;
          end;

          if AHeader.PacketLength > 0 then
          begin
            try
              SetLength(BRBody, AHeader.PacketLength);
              TCPClientJ54.IOHandler.ReadBytes(BRBody,  AHeader.PacketLength, False);
            except
              on E: Exception do
              begin
                OutputDebugString(PChar(Format('ReadBuffer: %s[IP: %s]',
                  [E.Message, SERVER_IP])));
                raise;
              end;
            end;
            TCPClientJ54.IOHandler.ReadString(1);

            TempStr2 := BlowFishDecrypt(FRECVOTP54, BRBody[0],  AHeader.PacketLength);
            TempStr := UTF8Decode(TempStr2);

            if AMsgCode = 'C001' then
            // 로그인 전문인 경우 암호화 키 변경
            begin
              J54GetOTPCode(TempStr);
              EndData := True;
            end else
            if Dm.GetRecvPage_JON54(TempStr) then
            begin
              EndData := True;
              Application.ProcessMessages;
            end;

            slList.Add(TempStr);
          end else
          begin
            slList.Add('');
          end;
        until EndData;

        AErrorCode := NO_ERROR_CODE;
        Result := True;
        tmPingJ54.Enabled := True;
        TCPClientJ54.Tag := 0;
      end else
      begin
        AErrorCode := NO_ERROR_CODE;
        slList.Add('');
        Result := False;
        TCPClientJ54.Tag := 0;
        tmPingJ54.Enabled := False;

        if (retry_cnt = 0) then
        begin
          retry_cnt := 1;
        end;
      end;
    except
      on E: Exception do
      begin
        slList.Add('');
        Result := True;
        TCPClientJ54.Tag := 0;
        tmPingJ54.Enabled := False;
        TCPClientJ54.Disconnect;
        Log(E.Message, LOGDATAPATHFILE);
      end;
    end;
  finally
    // 2011.04.05
    TCPClientJ54.ReadTimeout := ATimeOut;
    // 임계영역 설정.
    _CS_SockSendJ54.Release;
  end;

  if (retry_cnt = 1) then
  begin
    retry_cnt := 2;
    // 재접속후 재호출
    J54DoReConnect;
    goto Retry;
  end;
end;

function TFrm_JON54.J54SockConnect(ATimeOut: Integer): Boolean;
begin
  Result := True;
  try
      if not TCPClientJ54.Connected then
      begin
        FReConnectCheck54 := True;

        TCPClientJ54.Host := SERVER_IP;
        TCPClientJ54.Port := StrToInt(SERVER_PORT);
        TCPClientJ54.ReadTimeout := ATimeOut;
        TCPClientJ54.ConnectTimeout := ATimeOut;
        TCPClientJ54.Connect();
      end;
  except
    on E: Exception do
    begin
      OutputDebugString(PChar(Format('Failed connect [IP: %s, %s]', [SERVER_IP, SERVER_PORT])));
      Result := False;
    end;
  end;
end;

procedure TFrm_JON54.N1Click(Sender: TObject);
begin
  Case TPopupMenu(Sender).tag of
    0:
    begin
      dedt_date.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      ASearchDate := '0';
			lb_SearchDay.Caption := '오늘';
			btnCallListAutoSearch.Caption := '조회중지';
      btnCallListAutoSearch.Down := True;
			btnCallingList.Enabled := True;
			if cxPageControl1.ActivePageIndex = 0 then
        btnCallListAutoSearch.Enabled := True;
    end;
    1:
    begin
			dedt_date.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
      ASearchDate := '1';
			lb_SearchDay.Caption := '어제';
			btnCallListAutoSearch.Down := False;
			btnCallListAutoSearch.Caption := '자동조회';
      trm_CallList.Enabled := False;
      btnCallingList.Enabled := True;
			if cxPageControl1.ActivePageIndex = 0 then
        btnCallListAutoSearch.Enabled := False;
    end;
    2:
    begin
      dedt_date.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 2;
      ASearchDate := '2';
			lb_SearchDay.Caption := '2일전';
      btnCallListAutoSearch.Down := False;
			btnCallListAutoSearch.Caption := '자동조회';
      trm_CallList.Enabled := False;
      btnCallingList.Enabled := True;
      if cxPageControl1.ActivePageIndex = 0 then
        btnCallListAutoSearch.Enabled := False;
    end;
    3:
    begin
      dedt_date.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 3;
      ASearchDate := '3';
      lb_SearchDay.Caption := '3일전';
			btnCallListAutoSearch.Down := False;
			btnCallListAutoSearch.Caption := '자동조회';
      trm_CallList.Enabled := False;
      btnCallingList.Enabled := True;
      if cxPageControl1.ActivePageIndex = 0 then
        btnCallListAutoSearch.Enabled := False;
    end;
    4:
    begin
      dedt_date.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 4;
      ASearchDate := '4';
      lb_SearchDay.Caption := '4일전';
      btnCallListAutoSearch.Down := False;
			btnCallListAutoSearch.Caption := '자동조회';
      trm_CallList.Enabled := False;
      btnCallingList.Enabled := True;
      if cxPageControl1.ActivePageIndex = 0 then
        btnCallListAutoSearch.Enabled := False;
    end;
    5:
    begin
      dedt_date.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 5;
      ASearchDate := '5';
      lb_SearchDay.Caption := '5일전';
      btnCallListAutoSearch.Down := False;
			btnCallListAutoSearch.Caption := '자동조회';
      trm_CallList.Enabled := False;
      btnCallingList.Enabled := True;
      if cxPageControl1.ActivePageIndex = 0 then
        btnCallListAutoSearch.Enabled := False;
   end;
    6:
    begin
      dedt_date.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 6;
      ASearchDate := '6';
      lb_SearchDay.Caption := '6일전';
      btnCallListAutoSearch.Down := False;
			btnCallListAutoSearch.Caption := '자동조회';
      trm_CallList.Enabled := False;
      btnCallingList.Enabled := True;
      if cxPageControl1.ActivePageIndex = 0 then
        btnCallListAutoSearch.Enabled := False;
    end;
    7:
    begin
      dedt_date.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 7;
      ASearchDate := '7';
      lb_SearchDay.Caption := '7일전';
      btnCallListAutoSearch.Down := False;
      btnCallListAutoSearch.Caption := '자동조회';
      trm_CallList.Enabled := False;
      btnCallingList.Enabled := True;
      if cxPageControl1.ActivePageIndex = 0 then
        btnCallListAutoSearch.Enabled := False;
    end;
  End;
end;

procedure TFrm_JON54.pGetAgentList(aGrpId: String; var aCombo: TcxComBoBox);
Var
	bNext : Boolean;
	sTmp, sPid : string;
	subObj : TJSONObject;
	arrjObj : TJSONArray;
	i : Integer;
begin
	try
		pSI_6210_Send('6210', aGrpID, '');   // 상담원 조회

		sTmp := '61105023                    331          00                                                                5    E'+
						'[{"AgentId":"001", "AgentName":"홍길동", "GroupID":"001","GroupName":"콜마너1","AgentDesc":"","Muser":""},'+
						'{"AgentId":"001", "AgentName":"이순신","GroupID":"002","GroupName":"콜마너2","AgentDesc":"","Muser":""},'+
						'{"AgentId":"001", "AgentName":"꼬끼리","GroupID":"003","GroupName":"콜마너3","AgentDesc":"","Muser":""},'+
						'{"AgentId":"001", "AgentName":"오리","GroupID":"004","GroupName":"콜마너4","AgentDesc":"","Muser":""},'+
						'{"AgentId":"001", "AgentName":"토끼", "GroupID":"005","GroupName":"콜마너5","AgentDesc":"","Muser":""}]';

		sTmp := fSI_6211_Recv( sTmp, bNext);

		aCombo.Properties.Items.Clear;
		slAgtId[aCombo.Tag].Clear;

		arrjObj := TJSONObject.ParseJSONValue(sTmp) as TJSONArray;
		Try
			for i := 0 to arrjObj.Size - 1 do
			begin
				subObj := arrjObj.Get(i) as TJSONObject;

				slAgtId[aCombo.Tag].Add(subObj.Get('AgentId').JsonValue.Value);
				aCombo.Properties.Items.Add(subObj.Get('AgentName').JsonValue.Value);
			end;
		except
			SetDebugeWrite('[pGetAgentList] Json arrjObj error');	
		end;
	except
	end;
end;

procedure TFrm_JON54.pRcv_AgentList(sData: String);
Var
  bNext : Boolean;
  sTmp, sPid : string;
  subObj : TJSONObject;
	arrjObj : TJSONArray;
  i : Integer;
begin
	try
		if giGrpId = 1 then
    begin
      cbAgtNm1.Properties.Items.Clear;
			slAgtId[giGrpId].Clear;
	  	slAgtId[giGrpId].Add('전체');
  		cbAgtNm1.Properties.Items.Add('전체');
			arrjObj := TJSONObject.ParseJSONValue(sData) as TJSONArray;
			Try
				for i := 0 to arrjObj.Size - 1 do
				begin
					subObj := arrjObj.Get(i) as TJSONObject;

					slAgtId[giGrpId].Add(subObj.Get('AgentID').JsonValue.Value);
					cbAgtNm1.Properties.Items.Add(subObj.Get('AgentName').JsonValue.Value);
				end;
			except
				SetDebugeWrite('[pRcv_AgentList] Json arrjObj error');	
			end;
			cbAgtNm1.ItemIndex := 0;
			cbAgtNm2.enabled := True;

		end else
		if giGrpId = 54 then
		begin
			cbAgtNm2.Properties.Items.Clear;
			slAgtId[2].Clear;
			slAgtId[2].Add('전체');
			cbAgtNm2.Properties.Items.Add('전체');
			arrjObj := TJSONObject.ParseJSONValue(sData) as TJSONArray;
			try
				for i := 0 to arrjObj.Size - 1 do
				begin
					subObj := arrjObj.Get(i) as TJSONObject;

					slAgtId[2].Add(subObj.Get('AgentID').JsonValue.Value);
					cbAgtNm2.Properties.Items.Add(subObj.Get('AgentName').JsonValue.Value);
				end;
			except
				SetDebugeWrite('[pRcv_AgentList] Json arrjObj error');	
			end;
			cbAgtNm2.ItemIndex := 0;
			cbAgtNm2.enabled := True;
			cbAgtNm2.hint := '';
			giGrpId := 2;
		end;
	except
  end;
end;

procedure TFrm_JON54.pRcv_GroupList(AData:string);
Var
	bNext : Boolean;
	sTmp, sPid : string;
	subObj : TJSONObject;
	arrjObj : TJSONArray;
	i : Integer;
begin
	try
//		pSI_6110_Send('6110', '');   // 상담 그룹 조회

//		sTmp := '61105023                    331          00                                5    E[{"GroupID":"001","GroupName":"콜마너1","GroupDesc":"","Muser":""}'+
//						',{"GroupID":"002","GroupName":"콜마너2","GroupDesc":"","Muser":""},{"GroupID":"003","GroupName":"콜마너3","GroupDesc":"","Muser":""},{"GroupID":"004","GroupName":"콜마너4","GroupDesc":"","Muser":""},{"GroupID":"005","GroupName":"콜마너5","GroupDesc":"","Muser":""}]';

		cbGrpNm1.Properties.Items.Clear;
		cbGrpNm2.Properties.Items.Clear;
		slGrpId.Clear;

		slGrpId.Add('전체');
		cbGrpNm1.Properties.Items.Add('전체');
		arrjObj := TJSONObject.ParseJSONValue(AData) as TJSONArray;
		Try
			for i := 0 to arrjObj.Size - 1 do
			begin
				subObj := arrjObj.Get(i) as TJSONObject;

				slGrpId.Add(subObj.Get('GroupID').JsonValue.Value);
				cbGrpNm1.Properties.Items.Add(subObj.Get('GroupName').JsonValue.Value);
			end;
		except
			SetDebugeWrite('[pRcv_GroupList] Json arrjObj error');	
		end;
		cbGrpNm1.Tag := 99;
		cbGrpNm1.ItemIndex := 0;
		cbGrpNm1.Tag := 98;
		
		cbGrpNm2.Properties.Items := cbGrpNm1.Properties.Items;
		cbGrpNm2.Tag := 99;  //변경안됨
		cbGrpNm2.ItemIndex := 0;
		cbGrpNm2.Tag := 98;  //변경됨
	except
	end;
end;

procedure TFrm_JON54.Pop_CallManagePopup(Sender: TObject);
var
	AView: TcxGridDBTableView;
	irow, iCustTel, iKeyNum, iGubun, iConfSlip: integer;
	sGubun : string;
begin
	AView := GetCurrentView;

	irow := AView.DataController.FocusedRecordIndex;
	iCustTel := AView.GetColumnByFieldName('전화번호').Index;
	sCustTel := CallToStr(AView.DataController.Values[iRow,iCustTel]);
	iKeyNum := AView.GetColumnByFieldName('대표번호').Index;
  sKeyNum := StringReplace(AView.DataController.Values[iRow,iKeyNum], '-', '', [rfReplaceAll]);
  iGubun := AView.GetColumnByFieldName('기사여부').Index;
  sGubun := AView.DataController.Values[iRow,iGubun];
	iConfSlip := AView.GetColumnByFieldName('접수번호').Index;
	sConf_Slip := AView.DataController.Values[iRow,iConfSlip];
	if sGubun = '고객' then
  begin
    Pop_CallManage_N5.Visible := True;
    Pop_CallManage_N7.Visible := True;
    Pop_CallManage_N6.Visible := False;
    Pop_CallManage_N8.Visible := False;
  end else
  begin
    Pop_CallManage_N5.Visible := False;
    Pop_CallManage_N7.Visible := False;
    Pop_CallManage_N6.Visible := True;
    Pop_CallManage_N8.Visible := True;
  end;
  if ASearchDate <> '0' then
    Pop_CallManage_N2.Visible := False
  else
    Pop_CallManage_N2.Visible := True;

	if cxPageControl1.ActivePageIndex = 1 then
    Pop_CallManage_N11.Visible := False
	else
	begin
		if TCK_USER_PER.BTM_CALLMNGCNT = '1' then
			Pop_CallManage_N11.Visible := True
		else
			Pop_CallManage_N11.Visible := False;
	end;
end;

procedure TFrm_JON54.Pop_CallManage_N11Click(Sender: TObject);
var
	AView: TcxGridDBTableView;
	iRow, iSrow, iCidKey : integer;
  sWKSabun : string;
  sNTime, sTime, sLTime : string;

  ls_TxLoad: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  XmlData, Param, ErrMsg: string;
  I, ErrCode : Integer;
  ls_MSG_Err, sTmp, sTemp : string;
  ls_Rcrd: TStringList;
  iGridIdex : integer;
begin
  AView := cxGrid_CallManage;
	iSrow := AView.DataController.FocusedRecordIndex;

  sNTime := FormatDateTime('hhmmss', Now);
  sTime := copy(sNTime,1,2) + ':' + copy(sNTime,3,2) + ':' + copy(sNTime,5,2);
  sLTime := func_lap_timeSS(AView.DataController.Values[isRow, CallingTitle[ 2]], sTime, 1);

  iCidKey := AView.GetColumnByFieldName('CidKey').Index;

  ls_TxLoad := GTx_UnitXmlLoad('JON06011.XML');
  ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
  ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
  ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'JON06011');
  ls_TxLoad := ReplaceAll(ls_TxLoad, 'stCallKey', AView.DataController.Values[iRow, CallingTitle[1]]);
  ls_TxLoad := ReplaceAll(ls_TxLoad, 'strStatus', 'IE');

  slRcvList := TStringList.Create;
  try
    if J54SendSock(ls_TxLoad, slRcvList, ErrCode, False, 30000) then
    begin
      rv_str := slRcvList[0];
      if rv_str <> '' then
      begin
        ls_rxxml := rv_str;
        Application.ProcessMessages;
        ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
        if ('0000' = ls_MSG_Err) then
        begin
//-              ShowMessage(TMenuItem(Sender).Hint + '되었습니다.');
        end else
        begin
          Screen.Cursor := crDefault;
          GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
          Exit;
        end;
      end;
    end;
  finally
    FreeAndNil(slRcvList);
  end;

	cxGrid_CallManageOut.BeginUpdate;
  Try
    Try
			iRow := cxGrid_CallManageOut.DataController.FindRecordIndexByText(0, iCidKey, AView.DataController.Values[iRow, CallingTitle[0]], False, True, True);
      if iRow >= 0 then
      begin
        exit;
      end;
    except on E: Exception do
      begin
      end;
    end;
		iRow := cxGrid_CallManageOut.DataController.AppendRecord;
    cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[ 0]] := iRow+1;                  //순번
    cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[ 1]] := AView.DataController.Values[isRow, CallingTitle[ 1]];
    cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[ 2]] := AView.DataController.Values[isRow, CallingTitle[ 2]];
    cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[ 3]] := AView.DataController.Values[isRow, CallingTitle[ 3]];

    sLTime := StringReplace(sLTime, '분', ':', [rfReplaceAll]);
    sLTime := '00:' + StringReplace(sLTime, '초', '', [rfReplaceAll]);
    cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[ 4]] := FormatDateTime('hh:mm:ss', StrToDateTime(AView.DataController.Values[isRow, CallingTitle[ 2]])
                                                                           + StrToDateTime(sLTime))
                                                                           + '(' + func_lap_timeSS(AView.DataController.Values[isRow, CallingTitle[ 2]], sTime, 1) + ')';

		cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[ 5]] := '통화종료';;
    cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[ 6]] := strtoCall(AView.DataController.Values[isRow, CallingTitle[ 6]]);
    cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[ 7]] := AView.DataController.Values[isRow, CallingTitle[ 7]];
		cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[ 8]] := AView.DataController.Values[isRow, CallingTitle[ 8]];
    cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[ 9]] := AView.DataController.Values[isRow, CallingTitle[ 9]];
    cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[10]] := AView.DataController.Values[isRow, CallingTitle[10]];
    cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[11]] := AView.DataController.Values[isRow, CallingTitle[11]];
    cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[12]] := AView.DataController.Values[isRow, CallingTitle[12]];
    cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[13]] := AView.DataController.Values[isRow, CallingTitle[13]];
    cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[14]] := AView.DataController.Values[isRow, CallingTitle[14]];
    cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[15]] := AView.DataController.Values[isRow, CallingTitle[15]];
    cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[16]] := AView.DataController.Values[isRow, CallingTitle[16]];
    cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[17]] := AView.DataController.Values[isRow, CallingTitle[17]];
    cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[18]] := AView.DataController.Values[isRow, CallingTitle[18]];
    cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[19]] := AView.DataController.Values[isRow, CallingTitle[19]];

    cxGrid_CallManage.DataController.DeleteRecord(isRow);

  Finally
    cxGrid_CallManageOut.EndUpdate;
    btnCallListAutoSearch.Down := True;
    btnCallListAutoSearch.Click;
  End;
end;

procedure TFrm_JON54.Pop_CallManage_N1Click(Sender: TObject);
begin
  //  sCustTel := '01056542294';
  edt_NAMETEL.Text := sCustTel;

  // 과거 자료는 종료콜 탭에서 조회 처리
  if ASearchDate <> '0' then
      cxPageControl1.ActivePageIndex := 1;
	proc_CallingList(callToStr(sCustTel), cxPageControl1.ActivePageIndex);
end;

procedure TFrm_JON54.Pop_CallManage_N2Click(Sender: TObject);
begin
  Frm_Main.Frm_JON03[GI_JON03_LastFromIdx].proc_Acc_Search(8, callToStr(sCustTel));
  btnCallListAutoSearch.Down := True;
  btnCallListAutoSearch.Click;
end;

procedure TFrm_JON54.Pop_CallManage_N3Click(Sender: TObject);
var i, iSlip, iTel, iFirstDateTime : integer;
  sSlip, sFirstDateTime : string;
	AView: TcxGridDBTableView;
begin
	AView := GetCurrentView;
	sSlip := '';
	iSlip := AView.GetColumnByFieldName('접수번호').Index;
	iTel := AView.GetColumnByFieldName('전화번호').Index;
  iFirstDateTime := AView.GetColumnByFieldName('최초접수일자').Index;
  for i := 0 to AView.DataController.RecordCount -1 do
  begin
    if (AView.DataController.Values[i,iSlip] <> '') and (AView.DataController.Values[i,iTel] = sCustTel) then
    begin
      sSlip := AView.DataController.Values[i,iSlip];
      sFirstDateTime := AView.DataController.Values[i,iFirstDateTime];
      Break;
    end;
  end;
  if sSlip = '' then exit;
  Frm_Main.AcceptFromCreate(sSlip, sFirstDateTime, '조회', GI_JON03_LastFromIdx);
  btnCallListAutoSearch.Down := True;
  btnCallListAutoSearch.Click;
end;

procedure TFrm_JON54.Pop_CallManage_N4Click(Sender: TObject);
begin
  frm_Main.Proc_JoinFromView(GI_JON03_LastFromIdx, CallToStr(sCustTel));
  if Frm_Main.JON01MNG[GI_JON01_LastFromIdx].FrmGubun = 2 then
  begin
    frm_Main.Frm_JON01B[GI_JON01_LastFromIdx].locCustHP_MainNum_Search := '';
    frm_Main.Frm_JON01B[GI_JON01_LastFromIdx].Proc_CIDEventAutoSearch(sCustTel, sKeyNum, '', '', '', 'N');
  end else
  begin
    frm_Main.Frm_JON01[GI_JON01_LastFromIdx].locCustHP_MainNum_Search := '';
    frm_Main.Frm_JON01[GI_JON01_LastFromIdx].Proc_CIDEventAutoSearch(sCustTel, sKeyNum, '', '', '', 'N');
  end;

  btnCallListAutoSearch.Down := True;
  btnCallListAutoSearch.Click;
end;

procedure TFrm_JON54.Pop_CallManage_N5Click(Sender: TObject);
var
	AView: TcxGridDBTableView;
	irow, iCustName: integer;
  sCustName : string;
  CustTel, CounselName, CounselID, CustName: string;
begin
	AView := GetCurrentView;

	irow := AView.DataController.FocusedRecordIndex;
	iCustName := cxGrid_CallManage.GetColumnByFieldName('고객명').Index;
  sCustName := cxGrid_CallManage.DataController.Values[iRow,iCustName];

  if (GT_POSS_TEL <> 1) or (GT_POSS_IP = '') then
  begin
    if GT_OCX <> 'KLCNS' then
    begin
      GMessagebox('전화걸기 기능을 사용할 수 없습니다.' + #13#10
        + '설정에서 전화걸기 기능을 설정해 주세요.', CDMSI);
      Exit;
    end;
  end;

  if pos('*', sCustTel) > 0 then
  begin
    GMessagebox('수신거부 권한이 없습니다.', CDMSI);
    exit;
  end;

  if Application.MessageBox('고객 전화번호를 전화 거부/차단 하시겠습니까?'
    + #13#10'전화 거부/차단시 고객이 전화하면 시스템에서 전화를 자동끊어줍니다', 'CDMS', MB_YESNO +
    MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
  begin
    Exit;
  end;

  CounselID   := GT_USERIF.ID;
  CounselName := GT_USERIF.NM;
end;

procedure TFrm_JON54.Pop_CallManage_N6Click(Sender: TObject);
var
	AView: TcxGridDBTableView;
	irow, iWKSabun: integer;
	sWKSabun : string;
begin
	AView := GetCurrentView;
	irow := AView.DataController.FocusedRecordIndex;
  iWKSabun := AView.GetColumnByFieldName('고객기사').Index;
	sWKSabun := AView.DataController.Values[iRow,iWKSabun];
//  sWKSabun := 'L57034';
	if sWKSabun = '' then
	begin
		GMessagebox('기사사번이 없습니다.', CDMSI);
		Exit;
	end else
	begin
		if ( Not Assigned(Frm_JON32) ) Or ( Frm_JON32 = NIl ) then Frm_JON32 := TFrm_JON32.Create(Nil);
		Frm_JON32.Jon03Tag := Self.Tag;
		Frm_JON32.Proc_Flag := 5;
		Frm_JON32.sWk_sabun32 := sWKSabun;
		Frm_JON32.Show;
		//기사 상세 정보 조회프로시저
		Frm_JON32.Proc_Initialization;
		//기사 당일 오더내역 조회프로시저
		Frm_JON32.Proc_WorkerOrderToday;
		// 기사 업무 현황 조회
		Frm_JON32.cxButton1Click(Sender);
	end;
end;

procedure TFrm_JON54.Pop_CallManage_N7Click(Sender: TObject);
var
	iRow, iSlip: integer;
	sSlip : string;
	AView: TcxGridDBTableView;
begin
	AView := GetCurrentView;

	iRow := AView.DataController.FocusedRecordIndex;
	sSlip := '';
	iSlip := AView.GetColumnByFieldName('접수번호').Index;
	sSlip := AView.DataController.Values[iRow,iSlip];
	Frm_Main.pCallingCID(sCustTel, sKeyNum);
end;

procedure TFrm_JON54.Pop_CallManage_N8Click(Sender: TObject);
var
	ls_TxLoad, rv_str, sWkHp, KeyNum: string;
	ls_rxxml: wideString;
	xdom: msDomDocument;
	lst_Result: IXMLDomNodeList;
	slReceive: TStringList;
	ErrCode: integer;
	irow, iWKSabun: integer;
	sWKSabun : string;
	AView: TcxGridDBTableView;
begin
	AView := GetCurrentView;

	irow := AView.DataController.FocusedRecordIndex;
	iWKSabun := AView.GetColumnByFieldName('고객기사').Index;
  sWKSabun := AView.DataController.Values[iRow,iWKSabun];
//  sWKSabun := 'L57034';
	if sWKSabun = '' then
  begin
    GMessagebox('기사사번이 없습니다.', CDMSI);
    Exit;
  end;

  try
    ls_TxLoad := GTx_UnitXmlLoad('C015.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'HINT0003',[rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '3', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', sWKSabun, [rfReplaceAll]);

    sWkHp := '';
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
            if xdom.loadXML(ls_rxxml) then
            begin
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Accept');
              sWkHp := lst_Result.item[0].attributes.getNamedItem('Info3').text
            end;
          finally
            xdom := Nil;
          end;
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except
    on E: Exception do
    begin
      Assert(False, E.Message);
      GMessagebox(PChar('Jon54[Pop_CallManage_N8]:' + e.Message), CDMSE);
    end;
  end;

  if sWkHp = '' then
  begin
    Application.MessageBox('기사님의 휴대폰 번호을(를) 등록하세요', '알림', MB_OK);
    Exit;
  end;
	Frm_Main.pCallingCID(CallToStr(sWkHp), sKeyNum);
end;

procedure TFrm_JON54.Pop_NoCallPopup(Sender: TObject);
var
	iRow, iStatus, iPbxKey: integer;
	sStatus : string;
begin
	if cxGrid_PBXCounsol_2.DataController.RecordCount < 1 then exit;
	
	iRow := cxGrid_PBXCounsol_2.DataController.FocusedRecordIndex;
	iStatus := cxGrid_PBXCounsol_2.GetColumnByFieldName('처리상태').Index;
	iPbxKey := cxGrid_PBXCounsol_2.GetColumnByFieldName('PBXKey').Index;
	sStatus := cxGrid_PBXCounsol_2.DataController.Values[iRow,iStatus];
	
	Pop_NoCall_N1.Visible := False;
	if sStatus = '접수대기' then
	begin
		Pop_NoCall_N1.Visible := True;
	end;
end;

procedure TFrm_JON54.Pop_NoCall_N1Click(Sender: TObject);
var
	iRow, iStatus, iPbxKey: integer;
	sPbxKey, sStr : string;
begin
	iRow := cxGrid_PBXCounsol_2.DataController.FocusedRecordIndex;
	iPbxKey := cxGrid_PBXCounsol_2.GetColumnByFieldName('PBXKey').Index;
	sPbxKey := cxGrid_PBXCounsol_2.DataController.Values[iRow,iPbxKey];

	sStr :=	fSI_5040_Send(sPbxKey);  //'11246898'

	Frm_Main.bSI415.Socket.SendText(sStr);												

end;

procedure TFrm_JON54.proc_5011Grid(ACode, AData: string);
Var
	bNext : Boolean;
	sTmp, sPid, sMsg : string;
	subObj : TJSONObject;
	arrjObj : TJSONArray;
	i, iRow, iPbxKey : Integer;
begin
	try
		if gSiSchRevH.sResult <> '00' then
		begin
			sMsg := '';
			GMessagebox('조회중 오류가 발생하였습니다.', CDMSI);
			pnl_PBX_1.Enabled := True;
			Exit;
		end;
		
		
		arrjObj := TJSONObject.ParseJSONValue(AData) as TJSONArray;

{		if not bNext then
		begin
			pnl_PBX_1.Enabled := False;
		end else
		begin
			cxGrid_PBXCounsol_1.DataController.SetRecordCount(0);
			pnl_PBX_1.Enabled := True;
		end; }
		
		cxGrid_PBXCounsol_1.BeginUpdate;
		Try
			for i := 0 to arrjObj.Size - 1 do
			begin
				subObj := arrjObj.Get(i) as TJSONObject;
				iRow := cxGrid_PBXCounsol_1.DataController.AppendRecord;
				cxGrid_PBXCounsol_1.DataController.Values[iRow, 0] := iRow +1;
				cxGrid_PBXCounsol_1.DataController.Values[iRow, 1] := subObj.Get('CallID').JsonValue.Value;    //접수번호
				if ACode = '5011' then
				begin
					cxGrid_PBXCounsol_1.DataController.Values[iRow, 2] := '';
					cxGrid_PBXCounsol_1.DataController.Values[iRow, 3] := '';
				end else
				if ACode = '5021' then
				begin
					cxGrid_PBXCounsol_1.DataController.Values[iRow, 2] := subObj.Get('GroupID').JsonValue.Value; //그룹 ID
					cxGrid_PBXCounsol_1.DataController.Values[iRow, 3] := subObj.Get('AgentID').JsonValue.Value; //상담원 ID
				end;                                                                                                      				
				cxGrid_PBXCounsol_1.DataController.Values[iRow, 4] := subObj.Get('StartTime').JsonValue.Value; //호인입시간
				if subObj.Get('CallType').JsonValue.Value = '1' then sTmp := 'In' else sTmp := 'Out';
				cxGrid_PBXCounsol_1.DataController.Values[iRow, 5] := sTmp;  //콜 타입 (1: Inbound, 그외값은 Outbound)
				cxGrid_PBXCounsol_1.DataController.Values[iRow, 6] := StrToCall(subObj.Get('CallANI').JsonValue.Value);  //발신번호
				cxGrid_PBXCounsol_1.DataController.Values[iRow, 7] := StrToCall(subObj.Get('CallDNIS').JsonValue.Value); //수신번호
				cxGrid_PBXCounsol_1.DataController.Values[iRow, 8] := '';   //상담내역
			end;
		finally
			cxGrid_PBXCounsol_1.EndUpdate;
		End;
	except
		SetDebugeWrite('[proc_5011Grid] Json arrjObj error');	
		cxGrid_PBXCounsol_1.EndUpdate;
	end;
end;

procedure TFrm_JON54.proc_5031Grid(ACode, AData: string);
Var
	bNext : Boolean;
	sTmp, sPid, sMsg : string;
	subObj : TJSONObject;
	arrjObj : TJSONArray;
	i, iRow, iPbxKey : Integer;
begin
	try
		if gSiSchRevH.sResult <> '00' then
		begin
			sMsg := '';
			GMessagebox('조회중 오류가 발생하였습니다.', CDMSI);
			pnl_PBX_1.Enabled := True;
			Exit;
		end;
		

		arrjObj := TJSONObject.ParseJSONValue(AData) as TJSONArray;

{		if not bNext then
		begin
			pnl_PBX_1.Enabled := False;
		end else
		begin
			cxGrid_PBXCounsol_2.DataController.SetRecordCount(0);
			pnl_PBX_1.Enabled := True;
		end;  }
		
		cxGrid_PBXCounsol_2.BeginUpdate;
		Try
			for i := 0 to arrjObj.Size - 1 do
			begin
				subObj := arrjObj.Get(i) as TJSONObject;
				iRow := cxGrid_PBXCounsol_2.DataController.AppendRecord;
				cxGrid_PBXCounsol_2.DataController.Values[iRow, 0] := iRow +1;
				cxGrid_PBXCounsol_2.DataController.Values[iRow, 1] := subObj.Get('CallID').JsonValue.Value;    //접수번호
				cxGrid_PBXCounsol_2.DataController.Values[iRow, 2] := subObj.Get('StartTime').JsonValue.Value; //호인입시간
				cxGrid_PBXCounsol_2.DataController.Values[iRow, 3] := StrToCall(subObj.Get('CallANI').JsonValue.Value);  //발신번호
				cxGrid_PBXCounsol_2.DataController.Values[iRow, 4] := StrToCall(subObj.Get('CallDNIS').JsonValue.Value);   //수신번호
				cxGrid_PBXCounsol_2.DataController.Values[iRow, 5] := subObj.Get('Status').JsonValue.Value;  //'접수대기', '처리완료'
			end;
			
			cxGrid_PBXCounsol_2.EndUpdate;
		except
			SetDebugeWrite('[proc_5031Grid] Json arrjObj error');	
			cxGrid_PBXCounsol_2.EndUpdate;
		End;
	except
	end;
end;

procedure TFrm_JON54.proc_5111Grid(ACode, AData: string);
Var
	bNext : Boolean;
	sTmp, sPid, sMsg : string;
	subObj : TJSONObject;
	arrjObj : TJSONArray;
	i, iRow, iPbxKey : Integer;
begin
	try
		if gSiSchRevH.sResult <> '00' then
		begin
			sMsg := '';
			GMessagebox('조회중 오류가 발생하였습니다.', CDMSI);
			pnl_PBX_1.Enabled := True;
			Exit;
		end;
		
		
		arrjObj := TJSONObject.ParseJSONValue(AData) as TJSONArray;
		if arrjObj = nil then exit;

{		if not bNext then
		begin
			pnl_PBX_1.Enabled := False;
		end else
		begin
			cxGrid_PBXCounsol_1.DataController.SetRecordCount(0);
			pnl_PBX_1.Enabled := True;
		end; }
		
		cxGridPBX_Admin1.BeginUpdate;
		Try
			for i := 0 to arrjObj.Size - 1 do
			begin
				subObj := arrjObj.Get(i) as TJSONObject;
				iRow := cxGridPBX_Admin1.DataController.AppendRecord;
				cxGridPBX_Admin1.DataController.Values[iRow, 0] := iRow +1;
				cxGridPBX_Admin1.DataController.Values[iRow, 1] := subObj.Get('CallID').JsonValue.Value;           //		접수번호
				cxGridPBX_Admin1.DataController.Values[iRow, 2] := subObj.Get('Service_in_time').JsonValue.Value;  //		호인입시간
				cxGridPBX_Admin1.DataController.Values[iRow, 3] := subObj.Get('Service_out_time').JsonValue.Value; //		호 해제시간
				cxGridPBX_Admin1.DataController.Values[iRow, 4] := subObj.Get('Queue_in_time').JsonValue.Value;    //		cti 큐 인입시간
				cxGridPBX_Admin1.DataController.Values[iRow, 5] := subObj.Get('Queue_out_time').JsonValue.Value;   //		cti 큐 해제시간
				cxGridPBX_Admin1.DataController.Values[iRow, 6] := subObj.Get('Agent_req_time').JsonValue.Value;   //		상담원요청시간
				cxGridPBX_Admin1.DataController.Values[iRow, 7] := subObj.Get('Agent_resp_time').JsonValue.Value;  //		상담원응답시간
				cxGridPBX_Admin1.DataController.Values[iRow, 8] := subObj.Get('Con_end_time').JsonValue.Value;     //		상담종료시간
				cxGridPBX_Admin1.DataController.Values[iRow, 9] := subObj.Get('Write_end_time').JsonValue.Value;   //		작업종료시간
				cxGridPBX_Admin1.DataController.Values[iRow,10] := subObj.Get('GroupID').JsonValue.Value;          //		그룹 ID
				cxGridPBX_Admin1.DataController.Values[iRow,11] := subObj.Get('GroupName').JsonValue.Value;        //		그룹 명
				cxGridPBX_Admin1.DataController.Values[iRow,12] := subObj.Get('AgentID').JsonValue.Value;          //		상담원 ID
				cxGridPBX_Admin1.DataController.Values[iRow,13] := subObj.Get('AgentName').JsonValue.Value;        //		상담원 명
				cxGridPBX_Admin1.DataController.Values[iRow,14] := subObj.Get('Ext_no').JsonValue.Value;           //		내선번호
				cxGridPBX_Admin1.DataController.Values[iRow,15] := StrToCall(subObj.Get('Caller_id').JsonValue.Value);// 		발신자번호
				cxGridPBX_Admin1.DataController.Values[iRow,16] := StrToCall(subObj.Get('CallDNIS').JsonValue.Value); //		수신자번호
				cxGridPBX_Admin1.DataController.Values[iRow,17] := subObj.Get('Buz_name').JsonValue.Value;         //  	서비스명
				cxGridPBX_Admin1.DataController.Values[iRow,18] := StrToCall(subObj.Get('Service_no').JsonValue.Value);//  	대표번호
				if subObj.Get('Call_type').JsonValue.Value = 'Inbound' then
					cxGridPBX_Admin1.DataController.Values[iRow,19] := 'IN'
				else if subObj.Get('Call_type').JsonValue.Value = 'Outbound' then       // 		0: 모든콜, 1: 착신콜, 2: 발신콜
					cxGridPBX_Admin1.DataController.Values[iRow,19] := 'OUT' 
				else
					cxGridPBX_Admin1.DataController.Values[iRow,19] := subObj.Get('Call_type').JsonValue.Value; 
				cxGridPBX_Admin1.DataController.Values[iRow,20] := subObj.Get('Call_result').JsonValue.Value;      //		호처리결과
				cxGridPBX_Admin1.DataController.Values[iRow,21] := subObj.Get('Call_transfer').JsonValue.Value;    // 		호전환여부
				cxGridPBX_Admin1.DataController.Values[iRow,22] := subObj.Get('Con_memo').JsonValue.Value;         //  	상담내역
			end;
			
		finally
			cxGridPBX_Admin1.EndUpdate;
		End;
	except
		SetDebugeWrite('[proc_5111Grid] Json arrjObj error');	
		cxGridPBX_Admin1.EndUpdate;
	end;
end;

procedure TFrm_JON54.proc_5211Grid(ACode, AData: string);
Var
	bNext : Boolean;
	sTmp, sPid, sMsg : string;
	subObj : TJSONObject;
	arrjObj : TJSONArray;
	i, iRow, iPbxKey : Integer;
begin
	try
		if gSiSchRevH.sResult <> '00' then
		begin
			sMsg := '';
			GMessagebox('조회중 오류가 발생하였습니다.', CDMSI);
			pnl_PBX_1.Enabled := True;
			Exit;
		end;
		
		
		arrjObj := TJSONObject.ParseJSONValue(AData) as TJSONArray;
		if arrjObj = nil then exit;
{		if not bNext then
		begin
			pnl_PBX_1.Enabled := False;
		end else
		begin
			cxGrid_PBXCounsol_1.DataController.SetRecordCount(0);
			pnl_PBX_1.Enabled := True;
		end; }
		
		cxGridPBX_Admin2.BeginUpdate;
		Try
			for i := 0 to arrjObj.Size - 1 do
			begin
				subObj := arrjObj.Get(i) as TJSONObject;
				iRow := cxGridPBX_Admin2.DataController.AppendRecord;
				cxGridPBX_Admin2.DataController.Values[iRow, 0] := iRow +1;
				cxGridPBX_Admin2.DataController.Values[iRow, 1] := subObj.Get('CallID').JsonValue.Value;           //		접수번호
				cxGridPBX_Admin2.DataController.Values[iRow, 2] := StrToCall(subObj.Get('Caller_id').JsonValue.Value);  			//		발신자번호
				cxGridPBX_Admin2.DataController.Values[iRow, 3] := StrToCall(subObj.Get('CallDNIS').JsonValue.Value); 				//		수신자번호
				cxGridPBX_Admin2.DataController.Values[iRow, 4] := subObj.Get('Buz_name').JsonValue.Value;    			//		서비스명
				cxGridPBX_Admin2.DataController.Values[iRow, 5] := StrToCall(subObj.Get('Service_no').JsonValue.Value);   		//		대표번호
				if subObj.Get('Agent_req_time').JsonValue.Value = '1899-12-30 00:00:00' then
					cxGridPBX_Admin2.DataController.Values[iRow, 6] := ''   //		상담원요청시간
				else
					cxGridPBX_Admin2.DataController.Values[iRow, 6] := subObj.Get('Agent_req_time').JsonValue.Value;   //		상담원요청시간
				cxGridPBX_Admin2.DataController.Values[iRow, 7] := subObj.Get('Service_in_time').JsonValue.Value;  //		호인입시간
				cxGridPBX_Admin2.DataController.Values[iRow, 8] := subObj.Get('Service_out_time').JsonValue.Value; //		호 해제시간
				cxGridPBX_Admin2.DataController.Values[iRow, 9] := subObj.Get('Call_result').JsonValue.Value;      //		호처리결과
				cxGridPBX_Admin2.DataController.Values[iRow,10] := subObj.Get('GroupID').JsonValue.Value;          //		그룹ID
				cxGridPBX_Admin2.DataController.Values[iRow,11] := subObj.Get('GroupName').JsonValue.Value;        //		그룹명
				cxGridPBX_Admin2.DataController.Values[iRow,12] := subObj.Get('AgentID').JsonValue.Value;          //		상담원ID
				cxGridPBX_Admin2.DataController.Values[iRow,13] := subObj.Get('AgentName').JsonValue.Value;        //		상담원명
			end;
		finally
			cxGridPBX_Admin2.EndUpdate;
		End;
	except
		SetDebugeWrite('[proc_5211Grid] Json arrjObj error');	
		cxGridPBX_Admin2.EndUpdate;
	end;
end;

procedure TFrm_JON54.proc_5311Grid(ACode, AData: string);
Var
	bNext : Boolean;
	sTmp, sPid, sMsg : string;
	subObj : TJSONObject;
	arrjObj : TJSONArray;
	i, iRow, iPbxKey : Integer;
begin
	try
		if gSiSchRevH.sResult <> '00' then
		begin
			sMsg := '';
			GMessagebox('조회중 오류가 발생하였습니다.', CDMSI);
			pnl_PBX_1.Enabled := True;
			Exit;
		end;
		
		
		arrjObj := TJSONObject.ParseJSONValue(AData) as TJSONArray;
		if arrjObj = nil then exit;

{		if not bNext then
		begin
			pnl_PBX_1.Enabled := False;
		end else
		begin
			cxGrid_PBXCounsol_1.DataController.SetRecordCount(0);
			pnl_PBX_1.Enabled := True;
		end; }
		
		cxGridPBX_Admin3.BeginUpdate;
		Try
			for i := 0 to arrjObj.Size - 1 do
			begin
				subObj := arrjObj.Get(i) as TJSONObject;
				iRow := cxGridPBX_Admin3.DataController.AppendRecord;
				cxGridPBX_Admin3.DataController.Values[iRow, 0] := iRow +1;
				cxGridPBX_Admin3.DataController.Values[iRow, 1] := subObj.Get('CallID').JsonValue.Value;           //		접수번호
				cxGridPBX_Admin3.DataController.Values[iRow, 2] := subObj.Get('GroupID').JsonValue.Value + '(' + subObj.Get('GroupName').JsonValue.Value + ')';          //		그룹 ID + 그룹 명
				cxGridPBX_Admin3.DataController.Values[iRow, 3] := subObj.Get('AgentID').JsonValue.Value + '(' + subObj.Get('AgentName').JsonValue.Value + ')';          //		상담원 ID + 상담원 명
				cxGridPBX_Admin3.DataController.Values[iRow, 4] := subObj.Get('Ext_no').JsonValue.Value;           //		내선번호
				cxGridPBX_Admin3.DataController.Values[iRow, 5] := StrToCall(subObj.Get('Caller_id').JsonValue.Value);        // 		발신자번호
				cxGridPBX_Admin3.DataController.Values[iRow, 6] := StrToCall(subObj.Get('CallDNIS').JsonValue.Value);         //		수신자번호
				cxGridPBX_Admin3.DataController.Values[iRow, 7] := subObj.Get('Buz_name').JsonValue.Value;         //  	서비스명
				cxGridPBX_Admin3.DataController.Values[iRow, 8] := StrToCall(subObj.Get('Service_no').JsonValue.Value);       // 		대표번호
				if subObj.Get('Call_type').JsonValue.Value = 'Inbound' then
					cxGridPBX_Admin3.DataController.Values[iRow, 9] := 'IN'
				else if subObj.Get('Call_type').JsonValue.Value = 'Outbound' then       // 		0: 모든콜, 1: 착신콜, 2: 발신콜
					cxGridPBX_Admin3.DataController.Values[iRow, 9] := 'OUT' 
				else
					cxGridPBX_Admin3.DataController.Values[iRow, 9] := subObj.Get('Call_type').JsonValue.Value; 
				cxGridPBX_Admin3.DataController.Values[iRow,10] := subObj.Get('Trans_no').JsonValue.Value;         //		콜 전환 번호간
				cxGridPBX_Admin3.DataController.Values[iRow,11] := subObj.Get('Start_time').JsonValue.Value;   		//		녹취 시작 시간
				cxGridPBX_Admin3.DataController.Values[iRow,12] := subObj.Get('End_time').JsonValue.Value;   			//		녹취 종료 시간
				cxGridPBX_Admin3.DataController.Values[iRow,13] := subObj.Get('File_size').JsonValue.Value;  			//		녹취파일 크기
				cxGridPBX_Admin3.DataController.Values[iRow,14] := '';   //		녹취청취
				cxGridPBX_Admin3.DataController.Values[iRow,15] := '';   //		녹취받기
				cxGridPBX_Admin3.DataController.Values[iRow,16] := subObj.Get('File_full_name').JsonValue.Value;   //		녹취파일 명

			end;
		finally
			cxGridPBX_Admin3.EndUpdate;
		End;
	except
		SetDebugeWrite('[proc_5311Grid] Json arrjObj error');	
		cxGridPBX_Admin3.EndUpdate;
	end;
end;

procedure TFrm_JON54.proc_CallingList(AParam: string; AGubun : Integer);
var
	ls_TxLoad: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  XmlData, Param, ErrMsg: string;
	I, ErrCode, iRow, iCallRingTime : Integer;
  sTmp, sTemp : string;
  ls_Rcrd: TStringList;
  iGridIdex : integer;
begin
	try

		if TCK_USER_PER.BTM_CALLMNG <> '1' then Exit;
		
    if Not Frm_Main.BtnFix.Down then Exit;

    btnCallingList.Tag := 1;
    cxImage2.Visible := False;
    cxImage3.Visible := True;

    Application.ProcessMessages;
    tmrHL.Enabled := True;

    if lg_status <> ASearchDate + IntToStr(cb_Gubun.ItemIndex) + Trim(edt_NAMETEL.Text) then
    begin
      ALastUpdate := '';
			cxGrid_CallManage.DataController.SetRecordCount(0);
    end;
    if ASearchDate <> '0' then
    begin
      ALastUpdate := '';
      cxGrid_CallManage.DataController.SetRecordCount(0);
    end;

    //////////////////////////////////////////////////////////////////////////////////
    //  접수 전문
    //////////////////////////////////////////////////////////////////////////////////

    if Trim(edt_NAMETEL.Text) <> '' then ALastUpdate := '';

		ls_TxLoad := GTx_UnitXmlLoad('JON06010.XML');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'JON06010');
    if AParam <> '' then
    begin
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'strSearchGubun', IntToStr(0));
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'strSearchKeyword', Trim(AParam));
    end else
    begin
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'strSearchGubun', IntToStr(cb_Gubun.ItemIndex));
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'strSearchKeyword', Trim(Param_Filtering(edt_NAMETEL.Text)));
    end;
    if AGubun = 0 then
    begin
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'strCallStatus', 'IR,IC,IL');
      iGridIdex := 0;
      if ALastUpdate = '' then
        cxGrid_CallManage.DataController.SetRecordCount(0);
    end else
		if AGubun = 1 then
		begin
      if ALastUpdate <> '' then
      begin
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strCallStatus', 'IR,IC,IL');
        iGridIdex := 0;
      end else
      begin
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strCallStatus', 'IE,OU,IL');
        iGridIdex := 1;
        cxGrid_CallManageOut.DataController.SetRecordCount(0);
      end;
    end;
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strSearchDate', ASearchDate);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strLastUpdate', ALastUpdate);


		slRcvList := TStringList.Create;
		try
			if J54SendSock(ls_TxLoad, slRcvList, ErrCode, False, 180000) then
			begin
				if slRcvList.Count > 0 then
				begin
					for i := 0 to cxGrid_CallManage.ColumnCount - 1 do
						CallingTitle[i] := cxGrid_CallManage.GetColumnByFieldName(lb_CallingTitle_List.Items.Strings[i]).Index;
					for i := 0 to cxGrid_CallManageOut.ColumnCount - 1 do
						CallingOutTitle[i] := cxGrid_CallManageOut.GetColumnByFieldName(lb_CallingTitleOut_List.Items.Strings[i]).Index;

					btnCallingList.Enabled := False;
					cxGrid_CallManageOut.BeginUpdate;

					cxProgressBar1.Properties.Max := slRcvList.Count - 1;
					cxProgressBar1.Position := 0;


					for i := 0 to slRcvList.Count - 1 do
          begin
						cxProgressBar1.Position := i;
						Application.ProcessMessages;
						if iGridIdex = 0 then
            begin
							if not Func_AcceptInsert_Calling(slRcvList.Strings[i]) then
              begin
								trm_CallList.Enabled := False;
								btnCallListAutoSearch.Caption := '자동조회';
								btnCallListAutoSearch.Tag := 1;
								btnCallingList.Enabled := True;
                Break;
              end;
            end else
            begin
							if not Func_AcceptInsert_CallingOut(slRcvList.Strings[i]) then
              begin
            		trm_CallList.Enabled := False;
            		btnCallListAutoSearch.Caption := '자동조회';
            		btnCallListAutoSearch.Tag := 1;
            		btnCallingList.Enabled := True;
								Break;
              end;
						end;
          end;

          if ASearchDate = '0' then
          begin
						iCallRingTime := cxGrid_CallManage.GetColumnByFieldName('정렬일자').Index;
						cxGrid_CallManage.Columns[iCallRingTime].SortOrder := soDescending;
						cxGrid_CallManage.Columns[5].SortOrder := soAscending;
//						cxGrid_CallManage.Columns[2].SortOrder := soDescending;
					end else
					begin
//						iCallRingTime := cxGrid_CallManageOut.GetColumnByFieldName('정렬일자').Index;
//						cxGrid_CallManageOut.Columns[iCallRingTime].SortOrder := soDescending;
//						cxGrid_CallManageOut.Columns[5].SortOrder := soAscending;

						cxGrid_CallManage.Columns[5].SortOrder := soNone;
						cxGrid_CallManage.Columns[2].SortOrder := soNone;
          end;
            cxGrid_CallManageOut.EndUpdate;
        end;
      end;
    finally
      if (cxGrid_CallManage.DataController.RecordCount > 0) then
      begin
        if rb_CursorChk.Checked then
        begin
          cxGrid_CallManage.DataController.SelectRows(0, 0);
          cxGrid_CallManage.DataController.FocusedRowIndex := 0;
          cxGrid_CallManage.DataController.Scroll(0);
        end;
      end;

      slRcvList.Free;
      cxProgressBar1.Position := 0;
      lg_status := ASearchDate + IntToStr(cb_Gubun.ItemIndex) + Trim(edt_NAMETEL.Text);

      if iGridIdex = 1 then
      begin
        trm_CallCnt.Enabled := True;
        btnCallingList.Enabled := True;
      end;

      if ASearchDate <> '0' then
        btnCallingList.Enabled := True
      else
      if ASearchDate = '0' then
      begin
        if iGridIdex <> 1 then
        begin
					if Trim(edt_NAMETEL.Text) = '' then
					begin
            btnCallListAutoSearch.Down := True;
						btnCallListAutoSearch.Caption := '조회중';
          end
          else btnCallingList.Enabled := True;
        end;
      end;

      APreSearchDate := ASearchDate;

      if TCK_USER_PER.BTM_CALLMNGCNT = '1' then
      begin
				lb_CallingListCnt.Caption := '총 건수 : ' +  FormatFloat('#,##0', cxGrid_CallManage.DataController.RecordCount +
																																					cxGrid_CallManageOut.DataController.RecordCount) + '건';
      end else
      begin
        lb_CallingListCnt.Caption := '총 건수 : ' +  FormatFloat('#,##0', cxGrid_CallManage.DataController.RecordCount ) + '건';
      end;

			if btnCallListAutoSearch.Down and ((AHasMore = 'N') or (AHasMore = '')) and (btnCallListAutoSearch.Tag = 0) then
      begin
				if Trim(edt_NAMETEL.Text) = '' then
					trm_CallList.Enabled := True;
			end else
			begin
				trm_CallList.Enabled := False;
				
				btnCallListAutoSearch.down := False;
//				btnCallListAutoSearch.Enabled := False;
				btnCallListAutoSearch.Caption := '자동조회';
				btnCallingList.Enabled := True;  
			end;
    end;
  except
    on e: Exception do
    begin
      sTemp := 'Jon54[proc_CallingList]Error : ' + e.Message;
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON54.proc_Calling_lap_time;
var
  i, iRow, iCallingS, iCallingE, iCallState, iCallRing, iOperCnt, iCallingCnt, iCallState2 : Integer;
	sCallState, sCidKey, sTemp: string;
  AView: TcxGridDBTableView;
  sDlist : TStringList;
begin
	AView := cxGrid_CallManage;

  try
    if (StrToDateTimeDef(FormatDateTime('hh:mm:ss', now),0) >= StrToDateTime('09:00:00')) and
			 (StrToDateTimeDef(FormatDateTime('hh:mm:ss', now),0) <= StrToDateTime('09:00:01')) then
    begin
			cxGrid_CallManage.DataController.SetRecordCount(0);
      cxGrid_CallManageOut.DataController.SetRecordCount(0);
      iOperCnt := 0; iCallingCnt := 0;
      AiCallingOut := 0; AiCallOut := 0;

      if TCK_USER_PER.BTM_CALLMNGCNT = '1' then
      begin
        lb_CallingOutCNT.Caption := '통화종료 건수 : ' +  FormatFloat('#,##0', AiCallingOut) + '건';
        lb_CallOutCNT.Caption    := '전화종료 건수 : ' +  FormatFloat('#,##0', AiCallOut)    + '건';
      end else
      begin
        lb_CallingOutCNT.Caption := '';
        lb_CallOutCNT.Caption    := '';
      end;
    end;

		iCallingS   := AView.GetColumnByFieldName('통화시작').Index;
    iCallRing   := AView.GetColumnByFieldName('링타임').Index;
		iCallingE   := AView.GetColumnByFieldName('통화종료').Index;
    iCallState  := AView.GetColumnByFieldName('전화상태').Index;

    if lb_OperCNT.Style.TextColor = clWindowText then
    begin
      lb_OperCNT.Style.TextColor := clRed;
      lb_OperCNT.Style.Font.Style := [fsBold];
    end else
    begin
      lb_OperCNT.Style.TextColor := clWindowText;
      lb_OperCNT.Style.Font.Style := [];
    end;

    if not Assigned(sDlist) then sDlist := TStringList.Create
														else sDlist.Clear;

		iOperCnt := 0;
    iCallingCnt := 0;
    i := 0;
    while i <= AView.DataController.RecordCount - 1 do
		begin
      sCallState := AView.DataController.Values[i, iCallState];
      sCidKey    := AView.DataController.Values[i, 1];
      if (sCallState = '오퍼링') then
      begin
        if GB_CALLMNG_DATEDISP = 0 then  // 시간만 표시
        begin
          if (AView.DataController.Values[i, iCallingS] <> null)  then
          begin
            if MinutesBetween(StrToDateTimeDef(dt_CallingServerTime,0), StrToDateTimeDef(AView.DataController.Values[i, iCallingS],0)) > 1 then
            begin
              sDlist.Add(inttostr(i));
              iOperCnt := iOperCnt -1;
            end else
            if(MinutesBetween(StrToDateTimeDef(dt_CallingServerTime,0), StrToDateTimeDef(AView.DataController.Values[i, iCallingS],0)) > 3) and
              (MinutesBetween(StrToDateTimeDef(dt_CallingServerTime,0), StrToDateTimeDef(AView.DataController.Values[i, iCallingS],0)) < 5) then
            begin

            end else
            begin
              AView.DataController.Values[i, iCallRing] := func_lap_timeSS(AView.DataController.Values[i, iCallingS], dt_CallingServerTime);
              inc(iOperCnt);
            end;
          end else
          begin
            sDlist.Add(inttostr(i));
            iOperCnt := iOperCnt -1;
          end;
        end else                      // 날짜+시간표시
        begin
          if (AView.DataController.Values[i, iCallingS] <> null)  then
          begin
            if MinutesBetween(StrToDateTimeDef(dt_CallingServerTime,0), StrToDateTimeDef(Copy(AView.DataController.Values[i, iCallingS], 12, 8),0)) > 1 then
            begin
              sDlist.Add(inttostr(i));
              iOperCnt := iOperCnt -1;
            end else
            if(MinutesBetween(StrToDateTimeDef(dt_CallingServerTime,0), StrToDateTimeDef(Copy(AView.DataController.Values[i, iCallingS], 12, 8),0)) > 3) and
              (MinutesBetween(StrToDateTimeDef(dt_CallingServerTime,0), StrToDateTimeDef(Copy(AView.DataController.Values[i, iCallingS], 12, 8),0)) < 5) then
            begin

            end else
            begin
              AView.DataController.Values[i, iCallRing] := func_lap_timeSS(Copy(AView.DataController.Values[i, iCallingS], 12, 8), dt_CallingServerTime);
              inc(iOperCnt);
            end;
          end else
          begin
            sDlist.Add(inttostr(i));
            iOperCnt := iOperCnt -1;
          end;
        end;
      end else
      if (sCallState = '통화') then
      begin
        inc(iCallingCnt);
      end else
      if (sCallState = '통화중') then
      begin
        if (AView.DataController.Values[i, iCallingS] <> null) then
        begin
          if GB_CALLMNG_DATEDISP = 0 then  // 시간만 표시
          begin
            if MinutesBetween(StrToDateTimeDef(dt_CallingServerTime,0), StrToDateTimeDef(AView.DataController.Values[i, iCallingS],0)) > 19 then
            begin
              sDlist.Add(inttostr(i));
              iCallingCnt := iCallingCnt -1;
            end else
            begin
              AView.DataController.Values[i, iCallingE] := func_lap_time(AView.DataController.Values[i, iCallingS], dt_CallingServerTime);
              inc(iCallingCnt);
            end;
          end else
          begin
            if MinutesBetween(StrToDateTimeDef(dt_CallingServerTime,0), StrToDateTimeDef(Copy(AView.DataController.Values[i, iCallingS], 12, 8),0)) > 19 then
            begin
              sDlist.Add(inttostr(i));
              iCallingCnt := iCallingCnt -1;
            end else
            begin
              AView.DataController.Values[i, iCallingE] := func_lap_time(Copy(AView.DataController.Values[i, iCallingS], 12, 8), dt_CallingServerTime);
              inc(iCallingCnt);
            end;
          end;
        end else
        begin
          sDlist.Add(inttostr(i));
          iCallingCnt := iCallingCnt -1;
        end;
      end else
      if (sCallState = '미통화') or (sCallState = '통화종료') or (sCallState = '전화종료') then
      begin
        if (AView.DataController.Values[i, iCallingS] <> null) then
        begin
          sDlist.Add(inttostr(i));
        end;
      end;
      inc(i);
    end;

    if sDList.Count > 0 then
    begin
      sDList.Sorted := True;
      try
				cxGrid_CallManage.BeginUpdate;
        for i := sDList.Count - 1 downto 0 do
        begin
          iRow := StrToIntDef(sDList[i], -1);
          if (cxGrid_CallManage.DataController.RecordCount - 1 >= iRow) and (iRow >= 0) then
          begin
            SetDebugeWrite('Lap_Time삭제 : ' + cxGrid_CallManage.DataController.Values[iRow, 1]);
            cxGrid_CallManage.DataController.DeleteRecord(iRow);
          end;
        end;
      finally
        cxGrid_CallManage.EndUpdate;
      end;
    end;

    lb_OperCNT.Caption    := '대기중 건수 : ' +  FormatFloat('#,##0', iOperCnt)    + '건';
    lb_CallingCNT.Caption := '통화중 건수 : ' +  FormatFloat('#,##0', iCallingCnt) + '건';

		FreeAndNil(sDList);
  except
    on E: Exception do
    begin
      AView.EndUpdate;
    	FreeAndNil(sDList);
      sTemp := 'Jon54[proc_lap_time]Error : ' + e.Message;
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON54.proc_Change_Title;
var
	i: Integer;
	sTemp: string;
begin
	SetDebugeWrite('Frm_JON054.proc_Change_Title');
	try
		// 접속기사 그리드 컬럼이동 설정값 저장.
		GS_EnvFile.EraseSection('JON54');
		GS_EnvFile.EraseSection('JON54Size');
		for i := 0 to cxGrid_CallManage.ColumnCount - 1 do
		begin
			sTemp := cxGrid_CallManage.Columns[i].DataBinding.FieldName;
			GS_EnvFile.WriteString('JON54', IntToStr(i), sTemp);
			if cxGrid_CallManage.Columns[i].Visible then
				GS_EnvFile.WriteInteger('JON54Size', IntToStr(i), cxGrid_CallManage.Columns[i].Width)
			else
				GS_EnvFile.WriteInteger('JON54Size', IntToStr(i), 0)
		end;
	except

	end;
end;

procedure TFrm_JON54.proc_Change_Title_EndCall;
var
	i: Integer;
	sTemp: string;
begin
	SetDebugeWrite('TFrm_JON54.proc_Change_Title_EndCall');
	try
		// 접속기사 그리드 컬럼이동 설정값 저장.
		GS_EnvFile.EraseSection('JON54EndCall');
		GS_EnvFile.EraseSection('JON54EndCallSize');
		for i := 0 to cxGrid_CallManageOut.ColumnCount - 1 do
		begin
			sTemp := cxGrid_CallManageOut.Columns[i].DataBinding.FieldName;
			GS_EnvFile.WriteString('JON54EndCall', IntToStr(i), sTemp);
			if cxGrid_CallManageOut.Columns[i].Visible then
				GS_EnvFile.WriteInteger('JON54EndCallSize', IntToStr(i), cxGrid_CallManageOut.Columns[i].Width)
			else
				GS_EnvFile.WriteInteger('JON54EndCallSize', IntToStr(i), 0)
		end;
	except

	end;
end;

function TFrm_JON54.func_CallManageAdd(iGubun: integer; AList : TStringList) : Boolean;
var iRow, iCallRingTime, iCallRingState, iCidKey : integer;
  sTemp : string;
begin
  Result := False;
	if TCK_USER_PER.BTM_CALLMNGCNT <> '1' then  //통화종료/전화종료건수 보기 권한없으면 리스트추가금지 20170110 KHS
		exit;

  if ( GT_USERIF.LV = '40' ) Or ( GT_USERIF.LV = '60' ) then // 지사, 본사 관리자일경우 해당 지사의 대표번호내역만 처리  2015.11.24 LYB
  begin
		if scb_KeyNumber.IndexOf(AList[7]) < 0 then
		begin
      if GT_USERIF.LV = '40' then Exit else
      if (GT_USERIF.LV = '60') and (scb_BranchCode.IndexOf(GT_USERIF.CT) < 0) then Exit;
//      if GT_USERIF.LV = '40' then Exit;
//      else if (GT_USERIF.LV = '60') and (GT_USERIF.CT <> AList[21]) then
//        Exit;
    end;
  end;

	iCallRingTime := cxGrid_CallManageOut.GetColumnByFieldName('정렬일자').Index;
  iCallRingState := cxGrid_CallManageOut.GetColumnByFieldName('전화상태').Index;
  iCidKey := cxGrid_CallManageOut.GetColumnByFieldName('CidKey').Index;
  cxGrid_CallManageOut.BeginUpdate;
  Try
    Try
      Try
        iRow := cxGrid_CallManageOut.DataController.FindRecordIndexByText(0, iCidKey, AList[0], False, True, True);
        if iRow >= 0 then
        begin
					exit;
        end;
      except on E: Exception do
        begin
          sTemp := 'Jon54[Add]Error : ' + e.Message;
          Assert(False, E.Message);
        end;
      end;
      Result := True;
			iRow := cxGrid_CallManageOut.DataController.AppendRecord;
      cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[0]] := iRow+1;                  //순번
      cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[1]] := AList[0];              //CIDKey
      if GB_CALLMNG_DATEDISP = 0 then
        cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[2]] := copy(AList[1],12,8)//ls_Rcrd[2]; //연결시작
      else
        cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[2]] := AList[1];

      if GB_CALLMNG_DATEDISP = 0 then
      begin
        if Trim(AList[1]) <> '' then
        begin
          if (StrToDateTimeDef(AList[1], 0) > 0) and (StrToDateTimeDef(AList[3], 0) > 0) then
          begin
            if SecondsBetween(StrToDateTimeDef(AList[3],0), StrToDateTimeDef(AList[1],0)) < 1 then
              cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[4]] := copy(AList[3],12,8)//ls_Rcrd[3]; //연결시작
            else
            begin
              cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[4]] := copy(AList[3],12,8) + '('
                                          + inttostr(SecondsBetween(StrToDateTimeDef(AList[3], 0), StrToDateTimeDef(AList[1], 0))) +'초)';   //연결시작            //링타임
            end;
          end;
        end else
        begin
          cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[4]] := copy(AList[3],12,8)//ls_Rcrd[3]; //연결시작
        end;
      end else
      begin
        if Trim(AList[1]) <> '' then
        begin
          if (StrToDateTimeDef(AList[1], 0) > 0) and (StrToDateTimeDef(AList[3], 0) > 0) then
          begin
            if SecondsBetween(StrToDateTimeDef(AList[3],0), StrToDateTimeDef(AList[1],0)) < 1 then
              cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[4]] := AList[3]//ls_Rcrd[3]; //연결시작
            else
            begin
              cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[4]] := AList[3] + '('
                                          + inttostr(SecondsBetween(StrToDateTimeDef(AList[3], 0), StrToDateTimeDef(AList[1], 0))) +'초)';   //연결시작            //링타임
            end;
          end;
        end else
        begin
          cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[4]] := AList[3]//ls_Rcrd[3]; //연결시작
        end;
      end;

      if (StrToDateTimeDef(AList[1], 0) > 0) and (StrToDateTimeDef(AList[2], 0) > 0) then
      begin
        if SecondsBetween(StrToDateTimeDef(AList[2], 0), StrToDateTimeDef(AList[1], 0)) < 1 then
          cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[3]] := ''              //링타임
        else
        begin
          cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[3]] := inttostr(SecondsBetween(StrToDateTimeDef(AList[2], 0),
                                                                                      StrToDateTimeDef(AList[1], 0))) +'초';              //링타임
        end;
      end
      else cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[3]] := '';


      cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[5]] := AList[4];               //전화상태
      cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[6]] := strtoCall(AList[5]);    //전화번호
      cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[7]] := AList[6];               //지사명
      cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[8]] := strtoCall(AList[7]);    //대표번호
      cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[9]] := AList[8];               //DNIS
      if AList[9] = '' then
        cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[10]] := AList[10]              //통화상담원
      else
      begin
        if AList[10] = '' then
          cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[10]] := AList[9]
        else
          cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[10]] := AList[9] + ',' + AList[10];  //통화상담원
      end;

      if AList[13] = '0' then
        cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[12]] := '일반' else
      if AList[13] = '1' then
        cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[12]] := '업소' else
      if AList[13] = '3' then
        cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[12]] := '법인' else
      if AList[13] = '4' then
        cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[12]] := '일반';                 //고객구분

      if (AList[11] = '') and (AList[14] = '') then
      begin
        cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[11]] := AList[12];             //고객명
        cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[13]] := '고객';                 //기사여부
        cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[17]] := AList[11];              //고객Seq, 기사사번
      end else
      if (AList[11] <> '') and (AList[14] = '') then
      begin
        cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[11]] := AList[12];             //고객명
        cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[13]] := '고객';                 //기사여부
        cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[17]] := AList[11];              //고객Seq, 기사사번
      end else
      if (AList[11] = '') and (AList[14] <> '') then
      begin
        cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[11]] := AList[15];             //기사명
        cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[13]] := '기사' + '(' + AList[16] + ')'; //기사여부
        cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[17]] := AList[14];              //고객Seq, 기사사번
      end else
      if (AList[11] <> '') and (AList[14] <> '') then
      begin
        cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[11]] := AList[15];             //기사명
        cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[13]] := '기사' + '(' + AList[16] + ')'; //기사여부
        cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[17]] := AList[14];              //고객Seq, 기사사번
      end;

      if (AList[13] = '') or (AList[13] = '0') then
        cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[14]] := ''
      else
        cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[14]] := AList[17];               //오늘접수

      cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[15]] := AList[18];              //접수번호
      cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[16]] := AList[19];              //최종접수일자
      if AList[1] <> '' then
        cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[18]] := AList[1]
      else
        cxGrid_CallManageOut.DataController.Values[iRow, CallingOutTitle[18]] := AList[3];
      cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[19]] := AList[20];              //이용횟수

    Finally
      cxGrid_CallManageOut.EndUpdate;
			cxGrid_CallManageOut.Columns[iCallRingTime].SortOrder := soDescending;
		End;
  except
    on e: Exception do
    begin
      cxGrid_CallManageOut.EndUpdate;
      sTemp := 'Jon54[func_CallManageAdd]Error : ' + e.Message;
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON54.Proc_Init;
var i : integer;
begin
	lb_CMNPHONE_Notice1.Caption := '';
	lb_CMNPHONE_Notice2.Caption := '';

	ASearchDate := '0';
  ALastUpdate := '';
  lg_status := '';

  SetLength(Jon54PacketData, MaxCommandSize);

  lb_SearchDay.Caption := '오늘';
  cxGrid_CallManage.DataController.SetRecordCount(0);
	cxGrid_CallManage.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to cxGrid_CallManage.ColumnCount - 1 do
		cxGrid_CallManage.Columns[i].DataBinding.ValueType := 'String';
  cxGrid_CallManage.Columns[1].Width := 0;

  cxGrid_CallManageOut.DataController.SetRecordCount(0);
	cxGrid_CallManageOut.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to cxGrid_CallManageOut.ColumnCount - 1 do
		cxGrid_CallManageOut.Columns[i].DataBinding.ValueType := 'String';
  cxGrid_CallManageOut.Columns[1].Width := 0;

  dedt_date.Date := StrToDate(Date8to10(StartDateTime('yyyymmdd')));
  edt_NAMETEL.Text := '';
  ed_TelNum.Text := '';
  cb_Gubun.ItemIndex := 0;
  FFavoriteNumber := Tstringlist.Create;

	btnCallListAutoSearch.Down := True;

	cxPageControl1.ActivePageIndex := 0;

	if TCK_USER_PER.BTM_CALLMNG <> '1' then
	begin
		PnlCalling.Left := 430;
		PnlCalling.Top := 3;
		PnlCalling.Visible := True;
		PnlCalling.Width := 517;

		PnlCalling.Caption := '통화 관리 메뉴 권한이 없습니다.';

		lb_CallingListCnt.Visible := False;
		
	end
	else
	begin
		if TCK_USER_PER.BTM_CALLMNGCNT <> '1' then
			cxLabel1.visible := True
		else
			cxLabel1.visible := False;
			
	end;
	
  lb_CallingOutCNT.Visible := TCK_USER_PER.BTM_CALLMNGCNT = '1';
	lb_CallOutCNT.Visible := TCK_USER_PER.BTM_CALLMNGCNT = '1';

  LG_StartDateTime := StartDateTime('yyyymmddhhmmss');
  for i := 0 to tvwCidLog.ColumnCount - 1 do
		tvwCidLog.Columns[i].DataBinding.ValueType := 'String';

	for i := 0 to cxGrid_CallManage.ColumnCount - 1 do
		cxGrid_CallManage.Columns[i].DataBinding.ValueType := 'String';

	for i := 0 to cxGrid_CallManageOut.ColumnCount - 1 do
		cxGrid_CallManageOut.Columns[i].DataBinding.ValueType := 'String';



	proc_Search;
end;

procedure TFrm_JON54.proc_PBXAdmin_CallList(AData, ACode: string);
Var
	bNext : Boolean;
	sPid : Ansistring;
	sTmp, sMsg : string;
	subObj : TJSONObject;
	arrjObj : TJSONArray;
	i, iRow, iPbxKey : Integer;
	AView: TcxGridDBTableView;
begin
	try
		bNext := False;
		if ACode = '5111' then //통화내역 - 관리자
		begin
			sTmp := fSI_5111_Recv( AData, sPid, bNext);
			proc_5111Grid(ACode, sTmp);
		end else
		if ACode = '5211' then //통화내역 - 관리자
		begin
			sTmp := fSI_5211_Recv( AData, sPid, bNext);
			proc_5211Grid(ACode, sTmp);
		end else
		if ACode = '5311' then //통화내역 - 관리자
		begin
			sTmp := fSI_5311_Recv( AData, sPid, bNext);
			proc_5311Grid(ACode, sTmp);
		end;
		Screen.Cursor := crDefault;
	except
		Screen.Cursor := crDefault;
	end;
end;

procedure TFrm_JON54.proc_PBX_CallList(AData, ACode: string);
Var
	bNext : Boolean;
	sPid : Ansistring;
	sTmp, sMsg : string;
	subObj : TJSONObject;
	arrjObj : TJSONArray;
	i, iRow, iPbxKey : Integer;
	AView: TcxGridDBTableView;
begin
	try
		bNext := False;
//		sTmp := '61105023                    331          00                                                                5    E'+
//						'[{"AgentId":"001", "AgentName":"홍길동", "GroupID":"001","GroupName":"콜마너1","AgentDesc":"","Muser":""},'+
//						'{"AgentId":"001", "AgentName":"이순신","GroupID":"002","GroupName":"콜마너2","AgentDesc":"","Muser":""},'+
//						'{"AgentId":"001", "AgentName":"꼬끼리","GroupID":"003","GroupName":"콜마너3","AgentDesc":"","Muser":""},'+
//						'{"AgentId":"001", "AgentName":"오리","GroupID":"004","GroupName":"콜마너4","AgentDesc":"","Muser":""},'+
//						'{"AgentId":"001", "AgentName":"토끼", "GroupID":"005","GroupName":"콜마너5","AgentDesc":"","Muser":""}]';

		if ACode = '5011' then 
		begin
			sTmp := fSI_5011_Recv( AData, sPid, bNext);
			proc_5011Grid(ACode, sTmp);
//			AView := cxGrid_PBXCounsol_1;
		end else
		if ACode = '5021' then 
		begin
			sTmp := fSI_5021_Recv( AData, sPid, bNext);
			proc_5011Grid(ACode, sTmp);
//			AView := cxGrid_PBXCounsol_1;
		end else
		if ACode = '5031' then 
		begin
			sTmp := fSI_5031_Recv( AData, sPid, bNext);
			proc_5031Grid(ACode, sTmp);
//			AView := cxGrid_PBXCounsol_2;
		end;
		if ACode = '5041' then   //미연결콜 상태변경
		begin
			sTmp := fSI_5041_Recv( AData, sPid, bNext);
			if gSiSchRevH.sResult = '00' then
			begin
				iPbxKey := cxGrid_PBXCounsol_2.GetColumnByFieldName('PBXKey').Index;
				iRow := cxGrid_PBXCounsol_2.DataController.FindRecordIndexByText(0, iPbxKey, sTmp, False, True, True);
				if iRow > -1 then
				begin
					cxGrid_PBXCounsol_2.BeginUpdate;
					cxGrid_PBXCounsol_2.DataController.Values[iRow, 5] := '처리완료';
					cxGrid_PBXCounsol_2.EndUpdate;
				end;
			end;
			exit;                    			
		end;
		Screen.Cursor := crDefault;

	except
		Screen.Cursor := crDefault;
	end;

	{"CallID":"11232526","StartTime":"2016-11-09오후 11:45:50","CallType":"2","CallDNIS":"0700000000","CallANI":"01011111111"}


end;

procedure TFrm_JON54.proc_Search;
var
  i, j, iRow: Integer;
  lsLog, lsLog1, lst_CidLog: TStringList;
  sTemp, ORGStr, sKeynum, sCustTel, sTime : string;
  DecodeStr : AnsiString;
  bView : Boolean;
begin
  try
		tvwCidLog.DataController.SetRecordCount(0);

    if 0 < Frm_Main.gst_CidLog.Count then
		begin 
      tvwCidLog.BeginUpdate;
			lsLog := TStringList.Create;
      try
        for i := 0 to Frm_Main.gst_CidLog.Count - 1 do
        begin
          bView := False;

          DecodeStr := Frm_Main.gst_CidLog[i];
          GetTextSeperationEx2('/', DecodeStr, lsLog);

          if ( CB_Gubun.ItemIndex = 0 ) And ( Trim(edt_NAMETEL.Text) <> '') then
					begin
						if Pos(Trim(edt_NAMETEL.Text), lsLog[1]) > 1 then bView := True;
          end else
          begin
						bView := True;
          end;

          if bView then
					begin
            iRow := tvwCidLog.DataController.AppendRecord;
            tvwCidLog.DataController.Values[iRow, 0] := strtocall(lsLog[0]);
            tvwCidLog.DataController.Values[iRow, 1] := strtocall(lsLog[1]);
            sTemp := lsLog[2];
            sTemp := StringReplace(sTemp, ' ', '', [rfReplaceAll]);
            sTemp := stringreplace(sTemp, '-', '', [rfReplaceAll]);
            sTemp := stringreplace(sTemp, ':', '', [rfReplaceAll]);
            sTemp := copy(sTemp, 1, 4) + '-' + copy(sTemp, 5, 2) + '-' + copy(sTemp, 7, 2) + ' '
                   + copy(sTemp, 9, 2) + ':' + copy(sTemp, 11, 2) + ':' + copy(sTemp, 13, 2);

            tvwCidLog.DataController.Values[iRow, 2] := sTemp;
            tvwCidLog.DataController.Values[iRow, 3] := lsLog[3];
            tvwCidLog.DataController.Values[iRow, 4] := '';
            // DNIS 정보 추가
            if lsLog.Count > 4 then
              tvwCidLog.DataController.Values[iRow, 4] := lsLog[4];
          end;
        end;
      finally
        lsLog.Free;
      end;
      tvwCidLog.Columns[2].SortOrder := soDescending;
      tvwCidLog.EndUpdate;
    end;

    Try
			lsLog := TStringList.Create;
			lst_CidLog := TStringList.Create;
			if Not FileExists(CIDLOGPATHFILE1) then Exit;
      lst_CidLog.LoadFromFile(CIDLOGPATHFILE1);
      for i := 0 to tvwCidLog.DataController.RecordCount - 1 do
      begin
        sKeynum  := tvwCidLog.DataController.Values[i, 0];
        sTime    := tvwCidLog.DataController.Values[i, 2];

        lst_CidLog.Find(StringReplace(sKeynum, '-', '', [rfReplaceAll]) + '/' + sTime, j);

        try
          if j < ( lst_CidLog.Count ) then
					begin
            GetTextSeperationEx2('/', lst_CidLog[j], lsLog);
            sTemp := lsLog[1];
            sTemp := StringReplace(sTemp, ' ', '', [rfReplaceAll]);
            sTemp := stringreplace(sTemp, '-', '', [rfReplaceAll]);
            sTemp := stringreplace(sTemp, ':', '', [rfReplaceAll]);
            sTemp := copy(sTemp, 1, 4) + '-' + copy(sTemp, 5, 2) + '-' + copy(sTemp, 7, 2) + ' '
                   + copy(sTemp, 9, 2) + ':' + copy(sTemp, 11, 2) + ':' + copy(sTemp, 13, 2);

            if (sKeynum = strtocall(lsLog[0])) and (sTime = sTemp) And ( lsLog.Count >= 3 ) then
            begin
              if ((lsLog[2] = '기사') or (lsLog[2] = '고객')) then
              SetGridData(tvwCidLog, i,  5, lsLog[2]);
            end;
          end;
				except
        end;
      end;
    finally
      lsLog.Free;
      FreeAndNil(lst_CidLog);
		end;
  except
  end;
end;

procedure TFrm_JON54.pSnd_AgentList(iGId: Integer; aGrpId: String);
begin
	try
		giGrpId := iGId;
		cbAgtNm1.Tag := 1;
		if iGId = 1 then
			pSI_6210_JON54_Send('6210', aGrpID, '')   // 상담원 조회
		else if iGId = 54 then
		begin
			pSI_6210_Send('6210', aGrpID, '');   // 상담원 조회
			cbAgtNm2.Hint := '54';
    end;


//		pRcv_AgentList('');
	except
  end;
end;

procedure TFrm_JON54.TCPClientJ54Connected(Sender: TObject);
begin
  if assigned(J54FOnSessionConnect) then
    J54FOnSessionConnect(Sender);

	FReconnectCount54 := 0;
  J54func_login;
end;

procedure TFrm_JON54.TCPClientJ54Disconnected(Sender: TObject);
begin
  if TCPClientJ54.Tag = 1 then Exit;

  FReconnectCount54 := 0;
  tmPingJ54.Enabled := False;
  if FReConnectCheck54 then
    J54DoReConnect
  else
  begin
    if assigned(J54FOnSessionDisConnect) then
      J54FOnSessionDisConnect(Sender);
  end;
end;

function TFrm_JON54.func_AcceptInsert_Calling(ss_XML: string): Boolean;

	procedure SetGrid(AGUBUN : string; Ai: Integer; AList, AListRow : string; ADOList: TStringList);
  var iRow : integer;
  begin
		GetTextSeperationEx2('│', AList, ADOList);
		if AGUBUN = 'UPDATE' then
			iRow := StrToIntDef(AListRow, 0)
		else if AGUBUN = 'INSERT' then
			iRow := cxGrid_CallManage.DataController.AppendRecord;

		cxGrid_CallManage.DataController.Values[iRow, CallingTitle[0]] := iRow + 1;                  //순번
		cxGrid_CallManage.DataController.Values[iRow, CallingTitle[1]] := ADOList[0];              //CIDKey


		if GB_CALLMNG_DATEDISP = 0 then
			cxGrid_CallManage.DataController.Values[iRow, CallingTitle[2]] := copy(ADOList[1],12,8)//ls_Rcrd[2]; //연결시작
		else
			cxGrid_CallManage.DataController.Values[iRow, CallingTitle[2]] := ADOList[1]; //'2018-03-13 19:33:40'

			
		if GB_CALLMNG_DATEDISP = 0 then
    begin
			if Trim(ADOList[1]) <> '' then
			begin
				if (StrToDateTimeDef(ADOList[1], 0) > 0) and (StrToDateTimeDef(ADOList[3], 0) > 0) then
				begin
					if SecondsBetween(StrToDateTimeDef(ADOList[3],0), StrToDateTimeDef(ADOList[1],0)) < 1 then
						cxGrid_CallManage.DataController.Values[iRow, CallingTitle[4]] := copy(ADOList[3],12,8)//ls_Rcrd[3]; //연결시작
					else
					begin
						cxGrid_CallManage.DataController.Values[iRow, CallingTitle[4]] := copy(ADOList[3],12,8) + '('
																				+ inttostr(SecondsBetween(StrToDateTimeDef(ADOList[3], 0), StrToDateTimeDef(ADOList[1], 0))) +'초)';   //연결시작            //링타임
					end;
				end;
			end else
			begin
				cxGrid_CallManage.DataController.Values[iRow, CallingTitle[4]] := copy(ADOList[3],12,8)//ADOList[3]; //연결시작
			end;
		end else
    begin
      if Trim(ADOList[1]) <> '' then
      begin
        if (StrToDateTimeDef(ADOList[1], 0) > 0) and (StrToDateTimeDef(ADOList[3], 0) > 0) then
				begin
          if SecondsBetween(StrToDateTimeDef(ADOList[3],0), StrToDateTimeDef(ADOList[1],0)) < 1 then
            cxGrid_CallManage.DataController.Values[iRow, CallingTitle[4]] := ADOList[3]//ADOList[3]; //연결시작
          else
          begin
            cxGrid_CallManage.DataController.Values[iRow, CallingTitle[4]] := ADOList[3] + '('
                                        + inttostr(SecondsBetween(StrToDateTimeDef(ADOList[3], 0), StrToDateTimeDef(ADOList[1], 0))) +'초)';   //연결시작            //링타임
          end;
        end;
      end else
      begin
        cxGrid_CallManage.DataController.Values[iRow, CallingTitle[4]] := ADOList[3]//ADOList[3]; //연결시작
      end;
		end;  


		if (StrToDateTimeDef(ADOList[1], 0) > 0) and (StrToDateTimeDef(ADOList[2], 0) > 0) then
    begin
      if SecondsBetween(StrToDateTimeDef(ADOList[2], 0), StrToDateTimeDef(ADOList[1], 0)) < 1 then
        cxGrid_CallManage.DataController.Values[iRow, CallingTitle[3]] := ''              //링타임
      else
      begin
        cxGrid_CallManage.DataController.Values[iRow, CallingTitle[3]] := inttostr(SecondsBetween(StrToDateTimeDef(ADOList[2], 0),
                                                                                    StrToDateTimeDef(ADOList[1], 0))) +'초';              //링타임
      end;
    end
    else cxGrid_CallManage.DataController.Values[iRow, CallingTitle[3]] := '';

    cxGrid_CallManage.DataController.Values[iRow, CallingTitle[5]] := ADOList[4];               //전화상태
    cxGrid_CallManage.DataController.Values[iRow, CallingTitle[6]] := strtocall(ADOList[5]);//'01091222361';//strtoCall(ADOList[5]);    //전화번호
    cxGrid_CallManage.DataController.Values[iRow, CallingTitle[7]] := ADOList[6];               //지사명
    cxGrid_CallManage.DataController.Values[iRow, CallingTitle[8]] := strtoCall(ADOList[7]);    //대표번호
    cxGrid_CallManage.DataController.Values[iRow, CallingTitle[9]] := ADOList[8];               //DNIS
   if ADOList[9] = '' then
      cxGrid_CallManage.DataController.Values[iRow, CallingTitle[10]] := ADOList[10]              //통화상담원
    else
    begin
      if ADOList[10] = '' then
        cxGrid_CallManage.DataController.Values[iRow, CallingTitle[10]] := ADOList[9]
      else
        cxGrid_CallManage.DataController.Values[iRow, CallingTitle[10]] := ADOList[9] + ',' + ADOList[10];  //내선번호 + 통화상담원
    end;

    if ADOList[13] = '0' then
      cxGrid_CallManage.DataController.Values[iRow, CallingTitle[12]] := '일반' else
    if ADOList[13] = '1' then
      cxGrid_CallManage.DataController.Values[iRow, CallingTitle[12]] := '업소' else
    if ADOList[13] = '3' then
      cxGrid_CallManage.DataController.Values[iRow, CallingTitle[12]] := '법인' else
    if ADOList[13] = '4' then
      cxGrid_CallManage.DataController.Values[iRow, CallingTitle[12]] := '일반'                  //고객구분
    else
    begin
      if ADOList[7] <> '' then cxGrid_CallManage.DataController.Values[iRow, CallingTitle[12]] := '신규';
    end;

    if (ADOList[11] = '') and (ADOList[14] = '') then
    begin
      cxGrid_CallManage.DataController.Values[iRow, CallingTitle[11]] := ADOList[12];             //고객명
      cxGrid_CallManage.DataController.Values[iRow, CallingTitle[13]] := '고객';                 //기사여부
      cxGrid_CallManage.DataController.Values[iRow, CallingTitle[17]] := ADOList[11];              //고객Seq, 기사사번
    end else
    if (ADOList[11] <> '') and (ADOList[14] = '') then
    begin
      cxGrid_CallManage.DataController.Values[iRow, CallingTitle[11]] := ADOList[12];             //고객명
      cxGrid_CallManage.DataController.Values[iRow, CallingTitle[13]] := '고객';                 //기사여부
      cxGrid_CallManage.DataController.Values[iRow, CallingTitle[17]] := ADOList[11];              //고객Seq, 기사사번
    end else
    if (ADOList[11] = '') and (ADOList[14] <> '') then
    begin
      cxGrid_CallManage.DataController.Values[iRow, CallingTitle[11]] := ADOList[15];             //기사명
      cxGrid_CallManage.DataController.Values[iRow, CallingTitle[13]] := '기사' + '(' + ADOList[16] + ')'; //기사여부
      cxGrid_CallManage.DataController.Values[iRow, CallingTitle[17]] := ADOList[14];              //고객Seq, 기사사번
    end else
    if (ADOList[11] <> '') and (ADOList[14] <> '') then
    begin
      cxGrid_CallManage.DataController.Values[iRow, CallingTitle[11]] := ADOList[15];             //기사명
      cxGrid_CallManage.DataController.Values[iRow, CallingTitle[13]] := '기사' + '(' + ADOList[16] + ')'; //기사여부
      cxGrid_CallManage.DataController.Values[iRow, CallingTitle[17]] := ADOList[14];              //고객Seq, 기사사번
    end;

    if (ADOList[13] = '') or (ADOList[13] = '0') then
      cxGrid_CallManage.DataController.Values[iRow, CallingTitle[14]] := ''
    else
      cxGrid_CallManage.DataController.Values[iRow, CallingTitle[14]] := ADOList[17];               //오늘접수

    cxGrid_CallManage.DataController.Values[iRow, CallingTitle[15]] := ADOList[18];              //접수번호
    cxGrid_CallManage.DataController.Values[iRow, CallingTitle[16]] := ADOList[19];              //최종접수일자
    if ADOList[1] <> '' then
      cxGrid_CallManage.DataController.Values[iRow, CallingTitle[18]] := ADOList[1]
    else
      cxGrid_CallManage.DataController.Values[iRow, CallingTitle[18]] := ADOList[3];
		cxGrid_CallManage.DataController.Values[iRow, CallingTitle[19]] := ADOList[20];              //이용횟수
		cxGrid_CallManage.DataController.Values[iRow, CallingTitle[20]] := ADOList[21];              //이전통화
		cxGrid_CallManage.DataController.Values[iRow, CallingTitle[21]] := ADOList[22];              //총건수
		cxGrid_CallManage.DataController.Values[iRow, CallingTitle[22]] := ADOList[23];              //취소건수
		cxGrid_CallManage.DataController.Values[iRow, CallingTitle[23]] := ADOList[24];              //상담메모
		cxGrid_CallManage.DataController.Values[iRow, CallingTitle[24]] := ADOList[25];              //기사메모
	end;
var
  xdom: msDomDocument;
  ls_ClientKey, ClientKey, ls_Msg_Err, sMsg, sEndDate, sTemp: string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd, sList: TStringList;
  i,j, iRow, iTemp, iDel: Integer;
  bCheck: Boolean;
  ls_rxxml: WideString;
  ErrDesc: string;
  iCallRingTime, iCidKey, iCallRingState, iCallingS, iCallingE, iCallerNum, iCustNum : integer;
  SCallRingTime, sCidKey : string;
	AView: TcxGridDBTableView;
  BeforeCidKey, BeForeState : string;
  iCallerIdx : integer;
begin


{	ss_XML := '<?xml version="1.0" encoding="EUC-KR"?><cdms><header><UserID Value="BS0000"/><ClientVer Value="5.06"/><ClientKey Value="JON06010"/></header>'
					+ '<Service ID="JON06010" Name="통화관리" VersionNum="1"><Error Code="0000" Message="Success"/><Data Count="2" CurPage="1" Debug="" '
					+ 'Elapsed="1" HasMore="N" LastUpdate="092221033">'
					+ '<Cid Data="P9810104906026218:15:48│2018-03-12 18:15:45│2018-03-12 18:15:48││통화중│01049060262│오천콜│0515555000│5501│2002│bs104(조은미)│38084759││0││││0│││19││0│0││"/>'
					+ '<Cid Data="P9810708233180114:43:28│2018-03-12 18:15:48│2018-03-12 18:15:48│2018-03-12 18:15:47│통화중│07082331801│080육백만콜│0806000000│9850│2023│bs131(정미경)│││││││0│││0││0│0││" />'
					+ '</Data></Service></cdms>';       }
	try
		ls_rxxml := ss_XML;
    xdom := ComsDomDocument.Create;
    try
      result := True;
      if not xdom.loadXML(ls_rxxml) then
      begin
        Result := False;
        Exit;
      end;
      //-------------------------------------------------------------------------------
      //  전송결과 체크('0000' 성공 , 나머지는 에러
      //-------------------------------------------------------------------------------
      ls_MSG_Err := GetXmlErrorCode(ss_XML);
      ls_ClientKey := GetXmlClientKey(ss_XML);
		  //-------------------------------------------------------------------------------
      //  선택 Row Color 설정
      //-------------------------------------------------------------------------------
			if ('0000' = ls_MSG_Err) then
      begin
 		  	if ls_ClientKey <> 'JON06010' then exit;

        SetDebugeWrite('_CallList: ' + ss_XML);
        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data');
        ALastUpdate := lst_Result.item[0].attributes.getNamedItem('LastUpdate').Text;
        if (0 < GetXmlRecordCount(ls_rxxml)) then
        begin
          for i := 0 to cxGrid_CallManage.ColumnCount - 1 do
            CallingTitle[i] := cxGrid_CallManage.GetColumnByFieldName(lb_CallingTitle_List.Items.Strings[i]).Index;
					for i := 0 to cxGrid_CallManageOut.ColumnCount - 1 do
            CallingOutTitle[i] := cxGrid_CallManageOut.GetColumnByFieldName(lb_CallingTitleOut_List.Items.Strings[i]).Index;


          AHasMore := lst_Result.item[0].attributes.getNamedItem('HasMore').Text;
//          if AHasMore = 'N' then proc_Calling_lap_time;  //다 받았을 경우에만 경과시간 계산
          if ALastUpdate <> '0' then
          begin
            dt_CallingServerTime := copy(ALastUpdate,1,2) + ':' + copy(ALastUpdate,3,2) + ':' + copy(ALastUpdate,5,2);
            dt_CallingServerTime := FormatDateTime('hh:mm:ss', StrToDateTimeDef(dt_CallingServerTime,0) + StrToDateTime('09:00:00'));
          end
          else dt_CallingServerTime := ALastUpdate;

          Try
						iCallRingTime := cxGrid_CallManage.GetColumnByFieldName('정렬일자').Index;
            iCallRingState := cxGrid_CallManage.GetColumnByFieldName('전화상태').Index;
						iCallingS   := cxGrid_CallManage.GetColumnByFieldName('통화시작').Index;
            iCallerNum  := cxGrid_CallManage.GetColumnByFieldName('통화상담원').Index;
            iCustNum    := cxGrid_CallManage.GetColumnByFieldName('전화번호').Index;
//	          	iCallingE   := cxGrid_CallManage.GetColumnByFieldName('통화종료').Index;

            iCidKey := cxGrid_CallManage.GetColumnByFieldName('CidKey').Index;

            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Cid');
						ls_Rcrd := TStringList.Create;
						BeforeCidKey := ''; BeForeState := '';

						if not Assigned(HashInsert) then
						begin
							HashInsert := THashedStringList.Create;
							HashUpdate := THashedStringList.Create;
							HashUpdateRow := THashedStringList.Create;
							HashDeleteRow := THashedStringList.Create;
							HashCaller    := THashedStringList.Create;
						end else
						begin
							HashInsert.Clear;
							HashUpdate.Clear;
							HashUpdateRow.Clear;
							HashDeleteRow.Clear;
							HashCaller.Clear;
						end;

            for i := 0 to lst_Result.length -1 do
            begin
							GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Data').Text, ls_Rcrd);
							/////////////////////////////////////////갱신, 삭제, 추가 체크//////////////////////////////////////////////////

							if ( GT_USERIF.LV = '40' ) Or ( GT_USERIF.LV = '60' ) then // 지사, 본사 관리자일경우 해당 지사의 대표번호내역만 처리  2015.11.24 LYB
							begin
								if scb_KeyNumber.IndexOf(ls_Rcrd[7]) < 0 then
								begin
                  if GT_USERIF.LV = '40' then Exit else
                  if (GT_USERIF.LV = '60') and (scb_BranchCode.IndexOf(GT_USERIF.CT) < 0) then Exit;
//									if GT_USERIF.LV = '40' then Continue;
//									else if (GT_USERIF.LV = '60') and (GT_USERIF.CT <> ls_Rcrd[21]) then
//										Continue;
								end;
							end;

              if Length(ls_Rcrd[5]) < 9 then
              begin
                Continue;
              end;

              if ls_Rcrd[4] = '미통화' then
              begin
                try
                  SetDebugeWrite('미통화 : ' + lst_Result.item[i].attributes.getNamedItem('Data').Text);
                  iRow := GetRecordIndexByText(cxGrid_CallManage, ls_Rcrd[0], iCidKey);
                Except
                  on E: Exception do
                  begin
                    iRow := -1;
                  end;
                end;
                if iRow >= 0 then
                begin
                  SetDebugeWrite('미통화삭제 : ' + inttostr(iRow) + ':' + lst_Result.item[i].attributes.getNamedItem('Data').Text);
                  HashDeleteRow.add(inttostr(iRow) + '=' + (lst_Result.item[i].attributes.getNamedItem('Data').Text));
                end;
                Continue;
              end;

							if (ls_Rcrd[4] = '통화종료') or (ls_Rcrd[4] = '전화종료') then
							begin
								if TCK_USER_PER.BTM_CALLMNGCNT <> '1' then Continue;  //통화종료/전화종료건수 보기 권한없으면 리스트추가금지 20170110 KHS
								
								if func_CallManageAdd(1, ls_Rcrd) then
								begin
									if ls_Rcrd[4] = '통화종료' then inc(AiCallingOut);
                  if ls_Rcrd[4] = '전화종료' then inc(AiCallOut);

                  if TCK_USER_PER.BTM_CALLMNGCNT = '1' then
                  begin
                    lb_CallingOutCNT.Caption := '통화종료 건수 : ' +  FormatFloat('#,##0', AiCallingOut) + '건';
                    lb_CallOutCNT.Caption    := '전화종료 건수 : ' +  FormatFloat('#,##0', AiCallOut)    + '건';
                  end else
                  begin
                    lb_CallingOutCNT.Caption := '';
                    lb_CallOutCNT.Caption    := '';
                  end;
                end;

                try
									iRow := GetRecordIndexByText(cxGrid_CallManage, ls_Rcrd[0], iCidKey);
                  SetDebugeWrite('통화종료 : ' + lst_Result.item[i].attributes.getNamedItem('Data').Text);
                Except
                  on E: Exception do
                  begin
                    iRow := -1;
                  end;
                end;
                if iRow >= 0 then
                begin
//                  HashDeleteCIDKEY.Add(ls_Rcrd[0]);
                  SetDebugeWrite('통화종료삭제 : ' + inttostr(iRow) + ':' + lst_Result.item[i].attributes.getNamedItem('Data').Text);
                  HashDeleteRow.add(inttostr(iRow) + '=' + (lst_Result.item[i].attributes.getNamedItem('Data').Text));
                end;
                Continue;
              end;

              if (ls_Rcrd[4] = '오퍼링') and (dt_CallingServerTime <> '0') then
              begin
                if MinutesBetween(StrToDateTimeDef(dt_CallingServerTime,0),
                                  StrToDateTimeDef(copy(ls_Rcrd[1],12,8),0)) > 1 then
                begin
                  Continue;
                end else
                begin
                  try
                    if ls_Rcrd[9] <> '' then
                      iRow := GetRecordIndexByText(cxGrid_CallManage, ls_Rcrd[9], iCallerNum)
                    else iRow := -1;
                  Except
                    on E: Exception do
                    begin
                      iRow := -1;
                    end;
                  end;
                  if iRow >= 0 then
                  begin
//                    HashDeleteCIDKEY.Add(ls_Rcrd[0]);
                    SetDebugeWrite('오퍼링삭제 : ' + inttostr(iRow) + ':' + lst_Result.item[i].attributes.getNamedItem('Data').Text);
                    HashDeleteRow.add(inttostr(iRow) + '=' + (lst_Result.item[i].attributes.getNamedItem('Data').Text));
                    Continue;
                  end;
                end;
              end;

              if (ls_Rcrd[4] = '통화중') and (dt_CallingServerTime <> '0') then
              begin
                if MinutesBetween(StrToDateTimeDef(dt_CallingServerTime,0),
                                  StrToDateTimeDef(copy(ls_Rcrd[1],12,8),0)) > 19 then
                begin
                  Continue;
                end else
                begin
                  try
                    if ls_Rcrd[9] <> '' then
                      iRow := GetRecordIndexByText(cxGrid_CallManage, ls_Rcrd[9], iCallerNum)
                    else iRow := -1;
                  Except
                    on E: Exception do
                    begin
                      iRow := -1;
                    end;
                  end;
                  if iRow >= 0 then
                  begin
                    SetDebugeWrite('통화중삭제 : ' + inttostr(iRow) + ':' + lst_Result.item[i].attributes.getNamedItem('Data').Text);
										HashDeleteRow.add(inttostr(iRow) + '=' + (lst_Result.item[i].attributes.getNamedItem('Data').Text));
                    Continue;
                  end;
                end;
              end;
            end;

            HashDeleteRow.Sorted := True;
            cxGrid_CallManage.BeginUpdate;
            Try
              for i := HashDeleteRow.Count -1 Downto 0 do
              begin
                try
									cxGrid_CallManage.DataController.DeleteRecord(StrToIntDef(HashDeleteRow[i], -1));
                  SetDebugeWrite('삭제리스트 : Row=' + HashDeleteRow[i] + '///' + HashDeleteRow.Values[HashDeleteRow.Names[i]]);
                except

                end;
              end;
						except
							cxGrid_CallManage.EndUpdate;
						end;
						cxGrid_CallManage.EndUpdate;

            for i := 0 to lst_Result.length -1 do
            begin
							GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Data').Text, ls_Rcrd);
							/////////////////////////////////////////갱신, 삭제, 추가 체크//////////////////////////////////////////////////

							if ( GT_USERIF.LV = '40' ) Or ( GT_USERIF.LV = '60' ) then // 지사, 본사 관리자일경우 해당 지사의 대표번호내역만 처리  2015.11.24 LYB
							begin
								if scb_KeyNumber.IndexOf(ls_Rcrd[7]) < 0 then
								begin
                  if GT_USERIF.LV = '40' then Exit else
                  if (GT_USERIF.LV = '60') and (scb_BranchCode.IndexOf(GT_USERIF.CT) < 0) then Exit;
//									if GT_USERIF.LV = '40' then Continue;
//									else if (GT_USERIF.LV = '60') and (GT_USERIF.CT <> ls_Rcrd[21]) then
//										Continue;
								end;
							end;

              try //기존자료 여부 확인
                iRow := GetRecordIndexByText(cxGrid_CallManage, ls_Rcrd[0], iCidKey);
              except on E: Exception do
                begin
                  iRow := -1;
                end;
              end;

              if (ls_Rcrd[4] = '오퍼링') and (dt_CallingServerTime <> '0') then
              begin
                if MinutesBetween(StrToDateTimeDef(dt_CallingServerTime,0),
                                  StrToDateTimeDef(copy(ls_Rcrd[1],12,8),0)) > 4 then
                begin
                  Continue;
                end;
              end else
              if (ls_Rcrd[4] = '통화중') and (dt_CallingServerTime <> '0') then
              begin
                if MinutesBetween(StrToDateTimeDef(dt_CallingServerTime,0),
                                  StrToDateTimeDef(copy(ls_Rcrd[1],12,8),0)) > 19 then
                begin
                  Continue;
                end;
              end;

              if (iRow < 0) or (iRow >= cxGrid_CallManage.DataController.RecordCount) then
              begin
                iRow := -1;
                if HashCaller.IndexOf(ls_Rcrd[9]) > -1 then
                begin

								end;
								if (ls_Rcrd[4] = '통화종료') or (ls_Rcrd[4] = '전화종료') then
								begin
									Continue;
								end; 
								HashInsert.Add(lst_Result.item[i].attributes.getNamedItem('Data').Text);
								SetDebugeWrite('insert ' + lst_Result.item[i].attributes.getNamedItem('Data').Text);
								HashCaller.Add(ls_Rcrd[9]);
								Continue;
              end else
              begin
                HashUpdate.Add(lst_Result.item[i].attributes.getNamedItem('Data').Text);
                SetDebugeWrite('update ' + lst_Result.item[i].attributes.getNamedItem('Data').Text);
                HashUpdateRow.Add(inttostr(iRow));
                Continue;
              end;
            end;

            cxGrid_CallManage.BeginUpdate;
            for i := 0 to HashUpdate.Count -1 do    //수정내용먼저 적용
            begin
              try
								SetGrid('UPDATE', i, HashUpdate[i], HashUpdateRow[i], ls_Rcrd);
              except on E: Exception do
								begin
                  iRow := -1;
									Log('HashUpdate: '  + e.Message, LOGDATAPATHFILE);
								end;
              end;
            end;

						for i := 0 to HashInsert.Count -1 do    //수정내용먼저 적용
            begin
              try
                SetGrid('INSERT', i, HashInsert[i], '0', ls_Rcrd);
              except on E: Exception do
                begin
                  iRow := -1;
                  Log('HashInsert: '  + e.Message, LOGDATAPATHFILE);
                end;
              end;
            end;
          Finally
						cxGrid_CallManage.EndUpdate;
						if AHasMore = 'N' then
            begin
              proc_Calling_lap_time;  //다 받았을 경우에만 경과시간 계산
              ls_Rcrd.Free;
              Result := True;
            end;
          end;
        end else
        begin

					if ALastUpdate <> '0' then
          begin
            dt_CallingServerTime := copy(ALastUpdate,1,2) + ':' + copy(ALastUpdate,3,2) + ':' + copy(ALastUpdate,5,2);
            dt_CallingServerTime := FormatDateTime('hh:mm:ss', StrToDateTimeDef(dt_CallingServerTime,0) + StrToDateTime('09:00:00'));
          end
          else dt_CallingServerTime := ALastUpdate;
          proc_Calling_lap_time;
          ls_Rcrd.Free;
          Result := True;
        end;
      end else
      begin
        ls_Msg_Err := GetXmlErrorCode(ss_XML);
        GMessagebox(ls_Msg_Err, CDMSI);

        Result := False;
      end;
    finally
      xdom := Nil;
    end;
  except on E: Exception do
    begin
      cxGrid_CallManage.EndUpdate;
      ls_Rcrd.Free;
      Result := False;
    end;
  end;
end;

function TFrm_JON54.func_AcceptInsert_CallingOut(ss_XML: string): Boolean;
var
  xdom: msDomDocument;
  ls_ClientKey, ClientKey, ls_Msg_Err, sMsg, sEndDate, sTemp: string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd, sList: TStringList;
  i,j, iRow, iTemp: Integer;
  bCheck: Boolean;
  ls_rxxml: WideString;
  ErrDesc: string;
  iCallRingTime, iCidKey, iCallRingState, iCallingS, iCallingE : integer;
  SCallRingTime, sCidKey : string;
begin
	try
    ls_rxxml := ss_XML;
		xdom := ComsDomDocument.Create;
    try
      result := True;
			if not xdom.loadXML(ls_rxxml) then
      begin
        Result := False;
        Exit;
      end;
      //-------------------------------------------------------------------------------
      //  전송결과 체크('0000' 성공 , 나머지는 에러
      //-------------------------------------------------------------------------------
      ls_MSG_Err := GetXmlErrorCode(ss_XML);
      ls_ClientKey := GetXmlClientKey(ss_XML);
		  //-------------------------------------------------------------------------------
      //  선택 Row Color 설정
      //-------------------------------------------------------------------------------
      if ('0000' = ls_MSG_Err) then
      begin
 		  	if ls_ClientKey <> 'JON06010' then exit;

        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data');
        ALastUpdate := lst_Result.item[0].attributes.getNamedItem('LastUpdate').Text;
        if (0 < GetXmlRecordCount(ls_rxxml)) then
        begin
          for i := 0 to cxGrid_CallManage.ColumnCount - 1 do
            CallingTitle[i] := cxGrid_CallManage.GetColumnByFieldName(lb_CallingTitle_List.Items.Strings[i]).Index;

					for i := 0 to cxGrid_CallManageOut.ColumnCount - 1 do
            CallingOutTitle[i] := cxGrid_CallManageOut.GetColumnByFieldName(lb_CallingTitleOut_List.Items.Strings[i]).Index;

          AHasMore := lst_Result.item[0].attributes.getNamedItem('HasMore').Text;
//          if AHasMore = 'N' then proc_Calling_lap_time;  //다 받았을 경우에만 경과시간 계산
          if ALastUpdate <> '0' then
          begin
            dt_CallingServerTime := copy(ALastUpdate,1,2) + ':' + copy(ALastUpdate,3,2) + ':' + copy(ALastUpdate,5,2);
            dt_CallingServerTime := FormatDateTime('hh:mm:ss', StrToDateTimeDef(dt_CallingServerTime,0) + StrToDateTime('09:00:00'));
          end
          else dt_CallingServerTime := ALastUpdate;

          Try
            iCallRingTime := cxGrid_CallManageOut.GetColumnByFieldName('정렬일자').Index;
            iCallRingState := cxGrid_CallManageOut.GetColumnByFieldName('전화상태').Index;
            iCallingS   := cxGrid_CallManageOut.GetColumnByFieldName('통화시작').Index;
//	          	iCallingE   := cxGrid_CallManageOut.GetColumnByFieldName('통화종료').Index;
            iCidKey := cxGrid_CallManageOut.GetColumnByFieldName('CidKey').Index;

            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Cid');
            ls_Rcrd := TStringList.Create;
            for i := 0 to lst_Result.length -1 do
            begin
              GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Data').Text, ls_Rcrd);
              /////////////////////////////////////////갱신, 삭제, 추가 체크//////////////////////////////////////////////////

							if ( GT_USERIF.LV = '40' ) Or ( GT_USERIF.LV = '60' ) then // 지사, 본사 관리자일경우 해당 지사의 대표번호내역만 처리  2015.11.24 LYB
							begin
								if scb_KeyNumber.IndexOf(ls_Rcrd[7]) < 0 then
								begin
                  if GT_USERIF.LV = '40' then Exit else
                  if (GT_USERIF.LV = '60') and (scb_BranchCode.IndexOf(GT_USERIF.CT) < 0) then Exit;
//									if GT_USERIF.LV = '40' then Continue;
//									else if (GT_USERIF.LV = '60') and (GT_USERIF.CT <> ls_Rcrd[21]) then
//										Continue;
								end;
							end;

              if ls_Rcrd[4] = '미통화' then
              begin
                iRow := cxGrid_CallManageOut.DataController.FindRecordIndexByText(0, iCidKey, ls_Rcrd[0], False, True, True);
                if iRow >= 0 then
                  cxGrid_CallManageOut.DataController.DeleteRecord(iRow);
                Continue;
              end;

              if cxGrid_CallManageOut.DataController.RecordCount = 0 then
              begin
                iRow := cxGrid_CallManageOut.DataController.AppendRecord;
              end	else
              begin
                try
                  iRow := cxGrid_CallManageOut.DataController.FindRecordIndexByText(0, iCidKey, ls_Rcrd[0], False, True, True);
                except on E: Exception do
                  begin
                    iRow := -1;
                  end;
                end;

                if iRow >= cxGrid_CallManageOut.DataController.RecordCount then
                  iRow := -1;
                if iRow = -1 then
                begin
                  iRow := cxGrid_CallManageOut.DataController.AppendRecord;
                end;
              end;

              /////////////////////////////////////////갱신, 삭제, 추가 체크//////////////////////////////////////////////////
              cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[0]] := iRow+1;                  //순번
              cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[1]] := ls_Rcrd[0];              //CIDKey
              if GB_CALLMNG_DATEDISP = 0 then
                cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[2]] := copy(ls_Rcrd[1],12,8)//ls_Rcrd[2]; //연결시작
              else
                cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[2]] := ls_Rcrd[1];

              if GB_CALLMNG_DATEDISP = 0 then
              begin
                if Trim(ls_Rcrd[1]) <> '' then
                begin
                  if (StrToDateTimeDef(ls_Rcrd[1], 0) > 0) and (StrToDateTimeDef(ls_Rcrd[3], 0) > 0) then
                  begin
                    if SecondsBetween(StrToDateTimeDef(ls_Rcrd[3],0), StrToDateTimeDef(ls_Rcrd[1],0)) < 1 then
                      cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[4]] := copy(ls_Rcrd[3],12,8)//ls_Rcrd[3]; //연결시작
                    else
                    begin
                      cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[4]] := copy(ls_Rcrd[3],12,8) + '('
                                                  + inttostr(SecondsBetween(StrToDateTimeDef(ls_Rcrd[3], 0), StrToDateTimeDef(ls_Rcrd[1], 0))) +'초)';   //연결시작            //링타임
                    end;
                  end;
                end else
                begin
                  cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[4]] := copy(ls_Rcrd[3],12,8)//ls_Rcrd[3]; //연결시작
                end;
              end else
              begin
                if Trim(ls_Rcrd[1]) <> '' then
                begin
                  if (StrToDateTimeDef(ls_Rcrd[1], 0) > 0) and (StrToDateTimeDef(ls_Rcrd[3], 0) > 0) then
                  begin
                    if SecondsBetween(StrToDateTimeDef(ls_Rcrd[3],0), StrToDateTimeDef(ls_Rcrd[1],0)) < 1 then
                      cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[4]] := ls_Rcrd[3]//ls_Rcrd[3]; //연결시작
                    else
                    begin
                      cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[4]] := ls_Rcrd[3] + '('
                                                  + inttostr(SecondsBetween(StrToDateTimeDef(ls_Rcrd[3], 0), StrToDateTimeDef(ls_Rcrd[1], 0))) +'초)';   //연결시작            //링타임
                    end;
                  end;
                end else
                begin
									cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[4]] := ls_Rcrd[3]//ls_Rcrd[3]; //연결시작
                end;
              end;

              if (StrToDateTimeDef(ls_Rcrd[1], 0) > 0) and (StrToDateTimeDef(ls_Rcrd[2], 0) > 0) then
              begin
                if SecondsBetween(StrToDateTimeDef(ls_Rcrd[2], 0), StrToDateTimeDef(ls_Rcrd[1], 0)) < 1 then
                  cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[3]] := ''              //링타임
                else
                begin
                  cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[3]] := inttostr(SecondsBetween(StrToDateTimeDef(ls_Rcrd[2], 0),
                                                                                              StrToDateTimeDef(ls_Rcrd[1], 0))) +'초';              //링타임
                end;
              end
              else cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[3]] := '';

              cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[5]] := ls_Rcrd[4];               //전화상태
              cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[6]] := strtoCall(ls_Rcrd[5]);    //전화번호
              cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[7]] := ls_Rcrd[6];               //지사명
              cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[8]] := strtoCall(ls_Rcrd[7]);    //대표번호
              cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[9]] := ls_Rcrd[8];               //DNIS
              if ls_Rcrd[9] = '' then
                cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[10]] := ls_Rcrd[10]              //통화상담원
              else
              begin
                if ls_Rcrd[10] = '' then
                  cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[10]] := ls_Rcrd[9]
                else
                  cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[10]] := ls_Rcrd[9] + ',' + ls_Rcrd[10];  //통화상담원
              end;

              if ls_Rcrd[13] = '0' then
                cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[12]] := '일반' else
              if ls_Rcrd[13] = '1' then
                cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[12]] := '업소' else
              if ls_Rcrd[13] = '3' then
                cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[12]] := '법인' else
              if ls_Rcrd[13] = '4' then
                cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[12]] := '일반'                  //고객구분
              else
              begin
                if ls_Rcrd[7] <> '' then cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[12]] := '신규';
              end;

              if (ls_Rcrd[11] = '') and (ls_Rcrd[14] = '') then
              begin
                cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[11]] := ls_Rcrd[12];             //고객명
                cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[13]] := '고객';                 //기사여부
                cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[17]] := ls_Rcrd[11];              //고객Seq, 기사사번
              end else
              if (ls_Rcrd[11] <> '') and (ls_Rcrd[14] = '') then
              begin
                cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[11]] := ls_Rcrd[12];             //고객명
                cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[13]] := '고객';                 //기사여부
                cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[17]] := ls_Rcrd[11];              //고객Seq, 기사사번
              end else
              if (ls_Rcrd[11] = '') and (ls_Rcrd[14] <> '') then
              begin
                cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[11]] := ls_Rcrd[15];             //기사명
                cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[13]] := '기사' + '(' + ls_Rcrd[16] + ')'; //기사여부
                cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[17]] := ls_Rcrd[14];              //고객Seq, 기사사번
              end else
              if (ls_Rcrd[11] <> '') and (ls_Rcrd[14] <> '') then
              begin
                cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[11]] := ls_Rcrd[15];             //기사명
                cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[13]] := '기사' + '(' + ls_Rcrd[16] + ')'; //기사여부
                cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[17]] := ls_Rcrd[14];              //고객Seq, 기사사번
              end;

              if (ls_Rcrd[13] = '') or (ls_Rcrd[13] = '0') then
                cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[14]] := ''
              else
                cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[14]] := ls_Rcrd[17];               //오늘접수

              cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[15]] := ls_Rcrd[18];              //접수번호
              cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[16]] := ls_Rcrd[19];              //최종접수일자
              if ls_Rcrd[1] <> '' then
                cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[18]] := ls_Rcrd[1]
              else
                cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[18]] := ls_Rcrd[3];
							cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[19]] := ls_Rcrd[20];     ///이용회수
							cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[20]] := ls_Rcrd[21];     //이전통화
							cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[21]] := ls_Rcrd[22];     //총건수
							cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[22]] := ls_Rcrd[23];     //취소건수
							cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[23]] := ls_Rcrd[24];     //상담메모
							cxGrid_CallManageOut.DataController.Values[iRow, CallingTitle[24]] := ls_Rcrd[25];     //기사메모
						end;
          Finally
            if AHasMore = 'N' then
            begin
              ls_Rcrd.Free;
              Result := True;
            end;
          end;
        end else
        begin
          lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data');

          ALastUpdate := lst_Result.item[0].attributes.getNamedItem('LastUpdate').Text;
          if ALastUpdate <> '0' then
          begin
            dt_CallingServerTime := copy(ALastUpdate,1,2) + ':' + copy(ALastUpdate,3,2) + ':' + copy(ALastUpdate,5,2);
            dt_CallingServerTime := FormatDateTime('hh:mm:ss', StrToDateTimeDef(dt_CallingServerTime,0) + StrToDateTime('09:00:00'));
          end
          else dt_CallingServerTime := ALastUpdate;
        end;
      end else
      begin
        ls_Msg_Err := GetXmlErrorCode(ss_XML);
        GMessagebox(ls_Msg_Err, CDMSI);

        Result := False;
      end;
    finally
      xdom := Nil;
    end;
  except on E: Exception do
    begin
      Result := False;
    end;
  end;
end;

procedure TFrm_JON54.tmPingJ54Timer(Sender: TObject);
var
  RecvData: string;
  ErrCode: Integer;
  slList: TStringList;
begin
  if FSendPingCount54 = SENDPING_CNT then
  begin
    slList := TStringList.Create;
		if J54SendSock('9999', slList, ErrCode, False) then
      RecvData := slList[0];
    FSendPingCount54 := 0;
    FreeAndNil(slList);
  end else
  begin
    Inc(FSendPingCount54);
  end;
  if FSendOTPCount54 >= SENDOPT_CNT then
  begin
    FSendOTPCount54 := 0;
    J54DoReConnect;
  end else
  begin
    Inc(FSendOTPCount54);
  end;
end;

procedure TFrm_JON54.tmrHLTimer(Sender: TObject);
begin
  tmrHL.Enabled := False;
  cxImage2.Visible := True;
  cxImage3.Visible := False;
end;

procedure TFrm_JON54.trm_CallCntTimer(Sender: TObject);
var i : integer;
    iA1, iA2 : Integer;
begin
  trm_CallCnt.Enabled := False;
	for I := 0 to cxGrid_CallManageOut.DataController.RecordCount -1 do
  begin
    if cxGrid_CallManageOut.DataController.Values[i, 5] = '오퍼링' then inc(iA1) else
    if cxGrid_CallManageOut.DataController.Values[i, 5] = '통화중' then inc(iA2) else
		if cxGrid_CallManageOut.DataController.Values[i, 5] = '통화종료' then inc(AiCallingOut) else
    if cxGrid_CallManageOut.DataController.Values[i, 5] = '통화' then inc(AiCallingOut) else
    if cxGrid_CallManageOut.DataController.Values[i, 5] = '전화종료' then inc(AiCallOut);
	end;

  if ASearchDate <> '0' then
  begin
    lb_OperCNT.Caption    := '대기중 건수 : ' +  FormatFloat('#,##0', iA1) + '건';
    lb_CallingCNT.Caption := '통화중 건수 : ' +  FormatFloat('#,##0', iA2) + '건';
  end;

  if TCK_USER_PER.BTM_CALLMNGCNT = '1' then
  begin
    lb_CallingOutCNT.Caption := '통화종료 건수 : ' + FormatFloat('#,##0', AiCallingOut) + '건';
    lb_CallOutCNT.Caption := '전화종료 건수 : ' +  FormatFloat('#,##0', AiCallOut) + '건';
  end else
  begin
    lb_CallingOutCNT.Caption := '';
		lb_CallOutCNT.Caption := '';
  end;
end;

procedure TFrm_JON54.trm_CallListTimer(Sender: TObject);
begin
  trm_CallList.Enabled := False;
	// 과거 자료는 종료콜 탭에서 조회 처리
  if ASearchDate <> '0' then
      cxPageControl1.ActivePageIndex := 1;

  if APreSearchDate <> '0' then btnCallingList.Click
													 else proc_CallingList('', cxPageControl1.ActivePageIndex);
end;

procedure TFrm_JON54.tvwCidLogCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  ls_CustTel, ls_KeyNum: string;
  ARow, iIndex: Integer;
  ls_dnis: string;
begin
  ARow := tvwCidLog.DataController.FocusedRecordIndex;
  if 0 > ARow then
    Exit;
  ls_KeyNum := tvwCidLog.DataController.Values[Arow, 0];
  ls_CustTel := tvwCidLog.DataController.Values[ARow, 1];
  ls_CustTel := StringReplace(ls_CustTel, '-', '', [rfReplaceAll]);
  ls_KeyNum := StringReplace(ls_KeyNum, '-', '', [rfReplaceAll]);

  // 2011.04.08
  ls_dnis := string(tvwCidLog.DataController.Values[Arow, 4]);

  // 접수창을 생성한다.
  frm_Main.CustTelNum_MainNum_Search(ls_CustTel, ls_KeyNum);
end;

// 사용한 객체 및 폼 컨트롤, 전역변수 Closing 처리 한다.  CDS. 080901.
procedure TFrm_JON54.proc_FavoriteNumber;
var
  I, iRow: Integer;
  Menu: TMenuItem;
begin
  FFavoriteNumber.Clear;
  load_FavoriteNumber; // ini에서 담은 스트링리스트를 그리드에 뿌려줌

  FFavoriteNumber.AddStrings(GS_UserFavoriteNumber);
  FFavoriteNumber.Add('-');
  FFavoriteNumber.Add('[간편 전화번호 등록/삭제]=');
  FFavoriteNumber.Add('[콜마너 고객센터(1688-6618)걸기]=');

  while Frm_JON54.pm_FavoriteNumber.Items.Count > 0 do
  begin
    Menu := pm_FavoriteNumber.Items[0];
    pm_FavoriteNumber.Items.Delete(0);
    Menu.Free;
  end;

  for I := 0 to FFavoriteNumber.Count - 1 do
  begin
    try
      Menu := TMenuItem.Create(pm_FavoriteNumber);

      if FFavoriteNumber[I] = '-'  then
        Menu.Caption := FFavoriteNumber[I]
      else
        Menu.Caption := FFavoriteNumber.Names[I] + ' ' + FFavoriteNumber.Values[FFavoriteNumber.Names[I]];

      Menu.Enabled := True;
      Menu.Visible := True;
      Menu.OnClick := mniUserClick;
      Menu.Tag     := i;
      pm_FavoriteNumber.Items.Insert(I, Menu);
    except on E: Exception do
      ShowMessage(E.Message);
    end;
  end;
end;

procedure TFrm_JON54.mniUserClick(Sender: TObject);
Var iPos : Integer;
    sCallNo : String;
begin
  if TMenuItem(Sender).Tag = FFavoriteNumber.Count - 2 then
  begin
    Frm_Main.pnl_Favorite.Left := (Frm_Main.Width  - Frm_Main.pnl_Favorite.Width) div 2;
    Frm_Main.pnl_Favorite.top := ((Frm_Main.Height - Frm_Main.pnl_Favorite.Height) div 2) - 50;

    Frm_Main.pnl_Favorite.Visible := True;
    Frm_Main.ed_FavoriteNum.SetFocus;
  end else
  if TMenuItem(Sender).Tag = FFavoriteNumber.Count - 1 then
  begin
		Frm_Main.pCallingCID('16886618', '');
  end else
  begin
    iPos := Pos(' ', TMenuItem(Sender).Caption);
    sCallNo := Copy(TMenuItem(Sender).Caption, 1, iPos - 1);
		Frm_Main.pCallingCID(sCallNo, '');
  end;
end;

procedure TFrm_JON54.load_FavoriteNumber;
var i, iRow : integer;
begin
  Frm_Main.cxGridFavoriteList.BeginUpdate;
	Frm_Main.cxGridFavoriteList.DataController.SetRecordCount(0);
  for i := 0  to GS_UserFavoriteNumber.Count - 1 do
  begin
    iRow := Frm_Main.cxGridFavoriteList.DataController.AppendRecord;

    Frm_Main.cxGridFavoriteList.DataController.Values[iRow, 0] := inttostr(i + 1);
    Frm_Main.cxGridFavoriteList.DataController.Values[iRow, 1] := GS_UserFavoriteNumber.Names[I];
    Frm_Main.cxGridFavoriteList.DataController.Values[iRow, 2] := GS_UserFavoriteNumber.Values[GS_UserFavoriteNumber.Names[I]] ;
  end;
  Frm_Main.cxGridFavoriteList.EndUpdate;
end;

procedure TFrm_JON54.MenuItem8Click(Sender: TObject);
var i, iSlip, iTel, iFirstDateTime : integer;
  sSlip, sFirstDateTime : string;
begin
  sSlip := '';
	iSlip := cxGrid_CallManageOut.GetColumnByFieldName('접수번호').Index;
  iTel := cxGrid_CallManage.GetColumnByFieldName('전화번호').Index;
  iFirstDateTime := cxGrid_CallManage.GetColumnByFieldName('최초접수일자').Index;
	for i := 0 to cxGrid_CallManage.DataController.RecordCount -1 do
  begin
    if (cxGrid_CallManage.DataController.Values[i,iSlip] <> '') and (cxGrid_CallManage.DataController.Values[i,iTel] = sCustTel) then
    begin
			sSlip := cxGrid_CallManage.DataController.Values[i,iSlip];
			sFirstDateTime := cxGrid_CallManage.DataController.Values[i,iFirstDateTime];
      Break;
		end;
  end;
//  sSlip := '35583772';
//  sFirstDateTime := '2014-04-22 10:28:08';
  if sSlip = '' then exit;
  Frm_Main.AcceptFromCreate(sSlip, sFirstDateTime, '조회', GI_JON03_LastFromIdx);
end;

procedure TFrm_JON54.MiOneMonthClick(Sender: TObject);
var	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
		SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_JON54.MiOneWeekClick(Sender: TObject);
var	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
		SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_JON54.MiStartMonthClick(Sender: TObject);
var	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
		SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure TFrm_JON54.MiTodayClick(Sender: TObject);
var	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
		SetDateControl(StDt, EdDt, tdToday);
end;

procedure TFrm_JON54.MiYesterdayClick(Sender: TObject);
var	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
		SetDateControl(StDt, EdDt, tdYesterday);
end;

end.


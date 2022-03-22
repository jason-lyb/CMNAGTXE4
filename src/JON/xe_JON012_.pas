unit xe_JON012;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, xe_GNL,
  Vcl.Controls, MSXML2_TLB, System.StrUtils, System.Math, Vcl.Forms, Vcl.Dialogs, cxPCdxBarPopupMenu, cxGraphics, IniFiles,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, Magnetic,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxLabel, cxImageComboBox, cxCurrencyEdit, cxContainer, Vcl.Menus,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxClasses, Vcl.ExtCtrls, Vcl.ImgList,
  cxTextEdit, cxDropDownEdit, cxGroupBox, Vcl.StdCtrls, cxMaskEdit, cxCalendar,
  cxButtons, cxMemo, cxRichEdit, AdvScrollBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxPC, cxImage, Vcl.Imaging.jpeg, WebImage, Vcl.Grids, AdvObj, BaseGrid, AdvGrid,
  dxBarBuiltInMenu, AdvGlowButton, Vcl.Buttons, dxSkinsCore,
  dxSkinscxPCPainter, cxCheckBox, cxCheckComboBox,
  System.ImageList, cxSplitter, dxScreenTip, dxCustomHint,
  cxHint, dxGDIPlusClasses, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  TRec = record
    FieldName: string;  // 그리드 타이틀 명
    TagName: string;    // xml 태그 명
  end;

const
	OrderTitle: array[0..48] of TRec = (
      (FieldName: '최초접수일시';	  TagName: 'InTime')
    , (FieldName: '상태';	          TagName: 'Status')
    , (FieldName: '출발지';	        TagName: 'Area5')
    , (FieldName: '도착지';	        TagName: 'EdArea5')
    , (FieldName: '기사';	          TagName: 'WkSabun')
    , (FieldName: '요금';	          TagName: 'Charge')
    , (FieldName: '마일리지';	      TagName: 'Mileage')
    , (FieldName: '취소사유';	      TagName: 'CReason')
    , (FieldName: '적요';	          TagName: 'ConfInfo')
    , (FieldName: '접수자';	        TagName: 'Member')
    , (FieldName: '대표번호';	      TagName: 'KeyNumber')
    , (FieldName: '고객메모';	      TagName: 'Memo')
    , (FieldName: '접수번호';	      TagName: 'ConfSlip')
    , (FieldName: '접수일시';	      TagName: 'InDate')
		, (FieldName: '상태코드2';      TagName: 'Status')
		, (FieldName: '고객전화';	      TagName: 'CustTel')
    , (FieldName: '출좌표X';	      TagName: 'MapX')
    , (FieldName: '출좌표Y';	      TagName: 'MapY')
    , (FieldName: '출1';	          TagName: 'Area')
    , (FieldName: '출2';	          TagName: 'Area2')
    , (FieldName: '출3';	          TagName: 'Area3')
    , (FieldName: '출4';	          TagName: 'Area4')
    , (FieldName: '출5';	          TagName: 'Area5')
    , (FieldName: '도좌표X';	      TagName: 'DestX')
    , (FieldName: '도좌표Y';	      TagName: 'DestY')
    , (FieldName: '도1';	          TagName: 'EdArea')
    , (FieldName: '도2';	          TagName: 'EdArea2')
    , (FieldName: '도3';	          TagName: 'EdArea3')
    , (FieldName: '도4';	          TagName: 'EdArea4')
    , (FieldName: '도5';	          TagName: 'EdArea5')
    , (FieldName: '복수콜';	        TagName: 'MultiCallGB')
    , (FieldName: 'No';	            TagName: '')
    , (FieldName: '지사명';	        TagName: 'BrName')
    , (FieldName: '콜센터코드';	    TagName: 'Callcenter')
    , (FieldName: '오더타입';	      TagName: 'OrderType')
    , (FieldName: '배차시간';       TagName: 'BaechaTime')
    , (FieldName: '완료시간';       TagName: 'FinishTime')
		, (FieldName: '기사본사코드';   TagName: 'WkHead')
		, (FieldName: '기사지사코드';   TagName: 'WkBrch')
		, (FieldName: '기사콜센터';     TagName: 'WkCenter')
		, (FieldName: '접수구분';       TagName: 'FirstInSource')
		, (FieldName: '적요2';          TagName: 'ConfInfo2')
		, (FieldName: '경유요금';       TagName: 'ViaCharge')
		, (FieldName: '실제등록콜센터'; TagName: 'AcceptCenter')
		, (FieldName: '콜센터2';        TagName: 'Callcenter2')
		, (FieldName: '보정요금';       TagName: 'AddCharge')
		, (FieldName: '대기요금';       TagName: 'WaitCharge')
    , (FieldName: '경유지';	        TagName: '')
		, (FieldName: '경유지정보';     TagName: 'ViaInfo')
	);

type
  TcxGridSiteAccess = class (TcxGridSite);
  TcxControlScrollBarsAccess = class (TcxControlWindowedScrollBars);

type
  TFrm_JON012 = class(TForm)
    pnlTitle: TPanel;
    btnClose: TcxButton;
    Panel2: TPanel;
    cxPageControl1: TcxPageControl;
    appTabSheet1: TcxTabSheet;
    ctxGrid: TcxGrid;
    cxGVeOrderList: TcxGridDBTableView;
    cxColGVeOrderListColumn31: TcxGridDBColumn;
    cxGVeOrderListColumn1: TcxGridDBColumn;
    cxGVeOrderListColumn2: TcxGridDBColumn;
    cxGVeOrderListColumn3: TcxGridDBColumn;
    cxGVeOrderListColumn4: TcxGridDBColumn;
    cxGVeOrderListColumn5: TcxGridDBColumn;
    cxGVeOrderListColumn6: TcxGridDBColumn;
    cxGVeOrderListColumn7: TcxGridDBColumn;
    cxGVeOrderListColumn31: TcxGridDBColumn;
    cxGVeOrderListColumn8: TcxGridDBColumn;
    cxGVeOrderListColumn9: TcxGridDBColumn;
    cxGVeOrderListColumn10: TcxGridDBColumn;
    cxGVeOrderListColumn11: TcxGridDBColumn;
    cxGVeOrderListColumn12: TcxGridDBColumn;
    cxGVeOrderListColumn13: TcxGridDBColumn;
    cxGVeOrderListColumn14: TcxGridDBColumn;
    cxGVeOrderListColumn15: TcxGridDBColumn;
    cxGVeOrderListColumn16: TcxGridDBColumn;
    cxGVeOrderListColumn17: TcxGridDBColumn;
    cxGVeOrderListColumn18: TcxGridDBColumn;
    cxGVeOrderListColumn19: TcxGridDBColumn;
    cxGVeOrderListColumn20: TcxGridDBColumn;
    cxGVeOrderListColumn21: TcxGridDBColumn;
    cxGVeOrderListColumn22: TcxGridDBColumn;
    cxGVeOrderListColumn23: TcxGridDBColumn;
    cxGVeOrderListColumn24: TcxGridDBColumn;
    cxGVeOrderListColumn25: TcxGridDBColumn;
    cxGVeOrderListColumn26: TcxGridDBColumn;
    cxGVeOrderListColumn27: TcxGridDBColumn;
    cxGVeOrderListColumn28: TcxGridDBColumn;
    cxGVeOrderListColumn29: TcxGridDBColumn;
    cxGVeOrderListColumn30: TcxGridDBColumn;
    cxColGVeOrderListColumn33: TcxGridDBColumn;
    cxColGVeOrderListColumn34: TcxGridDBColumn;
    asgGVeOrderListColumn31: TcxGridDBColumn;
    asgGVeOrderListColumn32: TcxGridDBColumn;
    asgGVeOrderListColumn33: TcxGridDBColumn;
    cxGVeOrderListColumn35: TcxGridDBColumn;
    cxGVeOrderListColumn32: TcxGridDBColumn;
    cxgrdbclmnGVeOrderListColumn33: TcxGridDBColumn;
    cxGVeOrderListColumn34: TcxGridDBColumn;
    cxGVeOrderListColumn36: TcxGridDBColumn;
    cxWkConnect: TcxGridLevel;
    appTabSheet2: TcxTabSheet;
    Panel3: TPanel;
    pnlCallDrive: TPanel;
    cxGrid1: TcxGrid;
    cxToday_GridList: TcxGridDBTableView;
    cxgrdbclmn1: TcxGridDBColumn;
    cxgrdbclmn2: TcxGridDBColumn;
    cxgrdbclmn3: TcxGridDBColumn;
    cxgrdbclmn4: TcxGridDBColumn;
    cxgrdbclmn5: TcxGridDBColumn;
    cxgrdbclmn6: TcxGridDBColumn;
    cxgrdbclmn7: TcxGridDBColumn;
    cxgrdbclmn8: TcxGridDBColumn;
    cxgrdbclmn9: TcxGridDBColumn;
    cxgrdbclmn10: TcxGridDBColumn;
    cxgrdbclmn11: TcxGridDBColumn;
    cxgrdbclmn12: TcxGridDBColumn;
    cxgrdbclmn13: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    lbTitle: TListBox;
    pnlColorSet: TcxGroupBox;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    pm_Cancel: TMenuItem;
    pm_CanReAcc: TMenuItem;
    pm_Panelty: TMenuItem;
    pm_CanRes: TMenuItem;
    pm_ReAccept: TMenuItem;
    pm_complete: TMenuItem;
    pm_reservation: TMenuItem;
    pm_cancellation: TMenuItem;
    MenuItem3: TMenuItem;
    pm_edit: TMenuItem;
    pm_Recon: TMenuItem;
    pm_smsRecon: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N6: TMenuItem;
    PopupMenu2: TPopupMenu;
    pm_Cancel1: TMenuItem;
    pm_CanReAcc1: TMenuItem;
    pm_Panelty1: TMenuItem;
    pm_CanRes1: TMenuItem;
    pm_ReAccept1: TMenuItem;
    pm_complete1: TMenuItem;
    pm_reservation1: TMenuItem;
    pm_cancellation1: TMenuItem;
    MenuItem10: TMenuItem;
    pm_edit1: TMenuItem;
    pm_Recon1: TMenuItem;
    pm_smsRecon1: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    N51: TMenuItem;
    MenuItem17: TMenuItem;
    grpSetBrch_select: TcxGroupBox;
    cxComboBox1: TcxComboBox;
    cxLabel1: TcxLabel;
    Lbl_SmsCash: TcxLabel;
    grpSetExcel: TcxGroupBox;
    Edit1: TcxCurrencyEdit;
    Label32: TLabel;
    tmJonClose: TTimer;
    tmr_hint: TTimer;
    cxlbCustTel: TcxLabel;
    cxlbKeyNum: TcxLabel;
    cxlbSlip: TcxLabel;
    cxStyleRepository1: TcxStyleRepository;
    cxstyleToday: TcxStyle;
    cxstyleUpdate: TcxStyle;
    cxstyleMulti: TcxStyle;
    cxStyleTelSe: TcxStyle;
    Panel1: TPanel;
    Panel7: TPanel;
    cxLabel2: TcxLabel;
    Memo_WorkerInfo: TcxRichEdit;
    Shape1: TShape;
    PnlHelp: TPanel;
    cxGroupBox1: TcxGroupBox;
    Panel8: TPanel;
    TmrChkTag: TTimer;
    ColorDialog1: TColorDialog;
    lblColorTelSe: TcxLabel;
    lblColorMulti: TcxLabel;
    lblColorToday: TcxLabel;
    lblColorUpdate: TcxLabel;
    BtnWCall1: TcxButton;
    BtnWCall2: TcxButton;
    PnlWorkImg: TPanel;
    BtnLClose1: TcxButton;
    cxLblWkNm: TcxLabel;
    cxiWkImg: TWebImage;
    Lbl_Hint: TLabel;
    cxLblActive: TLabel;
    BtnSheet1: TcxButton;
    BtnSheet2: TcxButton;
    cxBtnOldSelect: TcxButton;
    cxBtnColorSet: TcxButton;
    btn2: TcxButton;
    btn3: TcxButton;
    BtnpnlColorSetClose: TcxButton;
    btn_sms_con: TcxButton;
    btn1: TcxButton;
    cxGVeOrderListColumn33: TcxGridDBColumn;
    cxCheckComboBox1: TcxCheckComboBox;
    cbStatesView: TcxComboBox;
    N7: TMenuItem;
    cxBtnAccept: TcxButton;
    Panel10: TPanel;
    cxGVeOrderListColumn37: TcxGridDBColumn;
    splOrderHis: TcxSplitter;
    pnlKDGrid: TPanel;
    Panel15: TPanel;
    cxButton1: TcxButton;
    Panel16: TPanel;
    cxImage1: TcxImage;
    btn_KDCall: TcxButton;
    lb_KDWorker: TcxLabel;
    cxGrid4: TcxGrid;
    cxGridKDDrive: TcxGridDBTableView;
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
    cxGridLevel4: TcxGridLevel;
    splAccept: TcxSplitter;
    pnl_CallTOT: TPanel;
    Panel5: TPanel;
    Shape4: TShape;
    de_stDate: TcxDateEdit;
    de_edDate: TcxDateEdit;
    Shape2: TShape;
    Shape3: TShape;
    cxOrderGrid: TcxGrid;
    cxOrder_Stat: TcxGridDBTableView;
    cxOrder_Level: TcxGridLevel;
    cxBtnFixPos: TcxButton;
    Label8: TcxLabel;
    lblCuCancel: TcxLabel;
    Label1: TcxLabel;
    Label10: TcxLabel;
    Label6: TcxLabel;
    lblCoCnt: TcxLabel;
    lblCuCnt: TcxLabel;
    Pnl_DestList: TPanel;
    cxGrid2: TcxGrid;
    cxGVeOrderDestList: TcxGridDBTableView;
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
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
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
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Panel12: TPanel;
    btnDestSearch: TcxButton;
    edtDest: TcxTextEdit;
    edtStar: TcxTextEdit;
    lblStarFlag: TcxLabel;
    lblDestFlag: TcxLabel;
    lblBigoFlag: TcxLabel;
    edtBigo: TcxTextEdit;
    lblMemoFlag: TcxLabel;
    edtMemo: TcxTextEdit;
    btn_wksms: TcxButton;
    btn_wk_move: TcxButton;
    btn_baecha_limit: TcxButton;
    btn_baecha_cancellog: TcxButton;
    btn_wk_penalty: TcxButton;
    btn_wkModify: TcxButton;
    btn5: TcxButton;
    lb_penalty: TcxLabel;
    lb_plus: TcxLabel;
    Label4: TcxLabel;
    lbl8: TcxLabel;
    lb_wkname_title: TcxLabel;
    Shape13: TShape;
    Shape5: TShape;
    cxGVeOrderDestListColumn1: TcxGridDBColumn;
    cxGVeOrderListColumn38: TcxGridDBColumn;
    cxGVeOrderListColumn39: TcxGridDBColumn;
    cxGVeOrderDestListColumn2: TcxGridDBColumn;
    cxgrdbclmn14: TcxGridDBColumn;
    cxGridDBColumn58: TcxGridDBColumn;
    N8: TMenuItem;
    cxGVeOrderListColumn40: TcxGridDBColumn;
    cxGVeOrderListColumn42: TcxGridDBColumn;
    cxGVeOrderDestListColumn3: TcxGridDBColumn;
    cxGVeOrderDestListColumn4: TcxGridDBColumn;

    cxGVeOrderListColumn41: TcxGridDBColumn;
    cxGVeOrderListColumn43: TcxGridDBColumn;
    cxGVeOrderDestListColumn5: TcxGridDBColumn;
    cxGVeOrderDestListColumn6: TcxGridDBColumn;
    pnl_SelStCd: TcxGroupBox;
    chk_St2: TcxCheckBox;
    chk_St8: TcxCheckBox;
    chk_St4: TcxCheckBox;
    chk_St1: TcxCheckBox;
    btn_SelInit: TcxButton;
    pm_SelStcd: TPopupMenu;
    m_StAll: TMenuItem;
    MenuItem21: TMenuItem;
    m_St2: TMenuItem;
    m_St1: TMenuItem;
    m_St4: TMenuItem;
    m_St8: TMenuItem;
    btn_SelStCd: TcxButton;
    cxChkTitle: TcxCheckComboBox;procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxBtnColorSetClick(Sender: TObject);
    procedure tmJonCloseTimer(Sender: TObject);
    procedure tmr_hintTimer(Sender: TObject);
    procedure cxBtnOldSelectClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
		procedure FormShow(Sender: TObject);
    procedure cxGVeOrderListCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGVeOrderListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGVeOrderListColumnPosChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGVeOrderListColumnSizeChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGVeOrderListMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ctxGridMouseLeave(Sender: TObject);
    procedure cxToday_GridListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn5Click(Sender: TObject);
    procedure pm_CancelClick(Sender: TObject);
    procedure pm_CanResClick(Sender: TObject);
    procedure pm_PaneltyClick(Sender: TObject);
    procedure pm_CanReAccClick(Sender: TObject);
    procedure pm_ReAcceptClick(Sender: TObject);
    procedure pm_completeClick(Sender: TObject);
    procedure pm_reservationClick(Sender: TObject);
    procedure pm_cancellationClick(Sender: TObject);
    procedure pm_editClick(Sender: TObject);
    procedure pm_ReconClick(Sender: TObject);
    procedure pm_smsReconClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure pm_Cancel1Click(Sender: TObject);
    procedure pm_CanReAcc1Click(Sender: TObject);
    procedure pm_Panelty1Click(Sender: TObject);
    procedure pm_CanRes1Click(Sender: TObject);
    procedure pm_ReAccept1Click(Sender: TObject);
    procedure pm_complete1Click(Sender: TObject);
    procedure pm_reservation1Click(Sender: TObject);
    procedure pm_cancellation1Click(Sender: TObject);
    procedure pm_edit1Click(Sender: TObject);
    procedure pm_Recon1Click(Sender: TObject);
    procedure pm_smsRecon1Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure btn_wksmsClick(Sender: TObject);
    procedure btn_wk_moveClick(Sender: TObject);
    procedure btn_baecha_limitClick(Sender: TObject);
    procedure btn_baecha_cancellogClick(Sender: TObject);
    procedure btn_wk_penaltyClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn_sms_conClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure cxPageControl1Click(Sender: TObject);
    procedure BtnpnlColorSetCloseClick(Sender: TObject);
    procedure BtnSheet1Click(Sender: TObject);
    procedure BtnSheet2Click(Sender: TObject);
    procedure pnlTitleResize(Sender: TObject);
    procedure cxColGVeOrderListColumn31GetCellHint(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean;
      var AHintTextRect: TRect);
    procedure cxGVeOrderListStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxGVeOrderListColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure TmrChkTagTimer(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure PopupMenu2Popup(Sender: TObject);
    procedure lblColorTodayClick(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure BtnWCall1Click(Sender: TObject);
    procedure BtnWCall2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure BtnLClose1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure cxiWkImgDownLoadError(Sender: TObject; err: string);
    procedure FormDestroy(Sender: TObject);
    procedure cxBtnFixPosClick(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_wkModifyClick(Sender: TObject);
    procedure cxCheckComboBox1PropertiesClickCheck(Sender: TObject;
      ItemIndex: Integer; var AllowToggle: Boolean);
    procedure cbStatesViewPropertiesChange(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure cxBtnAcceptClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtDestKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnDestSearchClick(Sender: TObject);
    procedure lblStarFlagClick(Sender: TObject);
    procedure lblDestFlagClick(Sender: TObject);
    procedure edtStarEnter(Sender: TObject);
    procedure edtDestEnter(Sender: TObject);
    procedure edtStarExit(Sender: TObject);
    procedure edtDestExit(Sender: TObject);
    procedure Panel12Resize(Sender: TObject);
    procedure btn_KDCallClick(Sender: TObject);
    procedure cxGridKDDriveCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGVeOrderListGetCellHeight(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      ACellViewInfo: TcxGridTableDataCellViewInfo; var AHeight: Integer);
    procedure lblBigoFlagClick(Sender: TObject);
    procedure lblMemoFlagClick(Sender: TObject);
    procedure edtBigoEnter(Sender: TObject);
    procedure edtBigoExit(Sender: TObject);
    procedure edtMemoEnter(Sender: TObject);
    procedure edtMemoExit(Sender: TObject);
    procedure m_StAllClick(Sender: TObject);
    procedure m_St2Click(Sender: TObject);
    procedure btn_SelStCdClick(Sender: TObject);
    procedure btn_SelInitClick(Sender: TObject);
    procedure chk_St2PropertiesChange(Sender: TObject);
    procedure cxChkTitlePropertiesChange(Sender: TObject);
    procedure cxGridKDDriveMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxToday_GridListMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
   	giStCd, giWkSabun, giConfSlip, giMile, giStart, giEnd, giInDate, giOrderType : integer;

    procedure HScrollHandler(Sender: TObject; ScrollCode: TScrollCode; var ScrollPos: Integer);

    procedure pGetColumnIndex;
    function GetCustTel: string;
		function func_check_CallCenterYN(AView: TcxGridDBTableView): Boolean;
		function func_check_CallCenterYN_WK: Boolean;

		procedure proc_Grid_Hint(sValue: string; ACol, ARow: Integer);
    function func_Grid_hint(ACol, ARow: Integer): string;
    procedure proc_excel(iType: Integer);
		procedure proc_excel_NoSms(iType: Integer);
		function func_excel_check(iType: Integer; sHd_No: string = ''; sBr_No: string = ''): string;
    function func_License(ss_rxxml: widestring): string;

    procedure proc_Change_Title;

    // 해당 접수창을 찾아서 보여준다.
    procedure Proc_JoinFromFindView;
    // 오더수정, 추가접수 화면을 띄운다. CDS. 080730.
    procedure AcceptFromCreate(sConfSlip, AccTime, sInsGubun: string);
    procedure LabelShowHint(X, Y: Integer; sHint: string);
    procedure proc_wk_modify;
		function GetCurrentView: TcxGridDBTableView;
  public
    { Public declarations }
    Jon03Tag : Integer;

    pJON012Dock : TUNDOCKMNG;

    loc_lsCol: TStringList; // 접수컬럼 index 저장.
		sActivePage : integer;
		sWk_sabun32, sWk_NAME, sWkhp, sWKBrNo, gWkHdNo, sWkphone, sBrtel, sPhone_info, sFinishCnt, sCancelCnt : string;

    bChkTime : Boolean;

		Pop_Yn: Boolean;
    Click_Yn: Boolean;

		FResize : Boolean;
		iOpen_Gubun : integer; //고객정보 1, 접수창0  에서 오픈구분

		gCUT011CuSeq : String;
		gCUT011CuGb : integer;
		procedure SetcxPageControl;

		// 접수현황에 선택한 고객 및 기사의 해당 오더를 조회 해 준다.
		function Proc_CustWorkerOrderSearch: boolean;
		function Proc_CustWorkerOrderSearch_WK(AView : TcxGridDBTableView): boolean;

		// 고객과거이용내역[cdms_a01]을 검색 한다..
		procedure Proc_CustOldSelect;
		// 고객과거 이용내역[cdms_a01]   Proc_CustOldSelect
		procedure Proc_CustOldSelectResult(rxxml: widestring; gubun : Integer);
		// 접수후 복사시 과거이용내역 갱신 20191105 KHS
		procedure Proc_JoinCopyCustHis;

		procedure Proc_Initialization;
		procedure Proc_WorkerInfo;
		procedure Proc_WorkerOrderToday(ASabun, ASlip, AWkHp : string);
		procedure Proc_WorkerDaily_Statistic(Row1, Row2: Integer);
    procedure SetStatesViewCheck;
    procedure SocketSend(lsSendText: string);

    procedure WMEnterSizeMove(var Msg: TMessage); message WM_ENTERSIZEMOVE;
    procedure WMSizing(var Msg: TMessage); message WM_SIZING;
		procedure WMMoving(var Msg: TMessage); message WM_MOVING;
    procedure WMExitSizeMove(var Msg: TMessage); message WM_ExitSIZEMOVE;
    procedure WMShowHideWindow(var Msg: TMessage); message WM_WINDOWPOSCHANGED;
    procedure WMSysCommand(var Msg: TMessage); message WM_SYSCOMMAND;
    procedure WMCommand(var Msg: TMessage); message WM_COMMAND;
  end;

var
  Frm_JON012: TFrm_JON012;

implementation

{$R *.dfm}

uses Main, xe_gnl3, xe_packet, xe_Dm, xe_xml, xe_Query,
  xe_Func, xe_Msg, xe_gnl2, xe_JON30, xe_system, xe_WOR17, xe_WOR09, xe_WOR16,
  xe_WOR14, xe_SMS01, xe_JON15, xe_COM01, xe_Flash, xe_JON07, xe_Jon015,
  xe_CUT011, xe_Lib, xe_WOR01, xe_CUT014, xe_JON32, xe_JON00;

//---------------------- Custom Message Handling procedures ----------------------
// These procedures shold be placed per every forms which we want to give magnetic
//  effect.

procedure TFrm_JON012.WMEnterSizeMove(var Msg: TMessage);
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

procedure TFrm_JON012.WMSizing(var Msg: TMessage);
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

procedure TFrm_JON012.WMMoving(var Msg: TMessage);
var
   bHandled: Boolean;
begin
  gi012Top  := Self.Top;
  gi012Left := Self.Left;

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

procedure TFrm_JON012.WMExitSizeMove(var Msg: TMessage);
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

  inherited;

  if Assigned(MagneticWndProc) then
     MagneticWndProc(Self.Handle, WM_ExitSIZEMOVE, lGlue, Msg, dummyHandled);
end;

procedure TFrm_JON012.WMShowHideWindow(var Msg: TMessage);
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

procedure TFrm_JON012.WMSysCommand(var Msg: TMessage);
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

procedure TFrm_JON012.WMCommand(var Msg: TMessage);
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

//------------------- end of Custom Message Handling procedures -----------------

procedure TFrm_JON012.btn1Click(Sender: TObject);
begin
  SetDebugeWrite('Frm_JON012.btn1Click');
  grpSetExcel.Visible := False;
end;

procedure TFrm_JON012.btn2Click(Sender: TObject);
var
  sBrNo: string;
begin
  SetDebugeWrite('Frm_JON012.btn2Click');
  try
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sBrNo := scb_FamilyBrCode.Strings[cxComboBox1.ItemIndex]
    else
      sBrNo := scb_BranchCode.Strings[cxComboBox1.ItemIndex];

    Label32.Caption := func_excel_check(Panel5.Tag, '', sBrNo);
    if Label32.Caption <> '' then
    begin
      grpSetExcel.Left := (Width - grpSetExcel.Width) div 2;
      grpSetExcel.top := (Height - grpSetExcel.Height) div 2;
      grpSetExcel.Visible := True;
      grpSetExcel.BringToFront;
      btn_sms_con.Enabled := True;
      Edit1.Text := '';
      edit1.SetFocus;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.btn3Click(Sender: TObject);
begin
  SetDebugeWrite('Frm_JON012.btn3Click');
  grpSetBrch_select.Visible := False;
end;

procedure TFrm_JON012.btn5Click(Sender: TObject);
var
  i, Row1, Row2 : integer;
	tmpDate : TDateTime;
begin
  SetDebugeWrite('Frm_JON012.btn5Click');
  try
  	if de_stDate.Date > de_edDate.Date then
  	begin
  		GMessagebox('시작일자가 더 큽니다.' + #13#10 + '조회일자를 다시 선택하십시오.', CDMSE);
  		de_stDate.Date := StrToDate(Date8to10(StartDateTime('yyyymmdd')))-7;
  		de_edDate.Date := de_stDate.Date + 7;
  		Exit;
  	end;
  	{------------------------- 그리드 셋팅 시작 -------------------------}
  	cxOrder_Stat.ClearItems;
  	cxOrder_Stat.DataController.SetRecordCount(0);
    cxOrder_Stat.BeginUpdate;
  	try
  		cxOrder_Stat.CreateColumn.Caption := '일자';
      cxOrder_Stat.Columns[0].DataBinding.FieldName := '일자';
      cxOrder_Stat.Columns[0].DataBinding.ValueType := 'String';
      cxOrder_Stat.Columns[0].HeaderAlignmentHorz := taCenter;
      cxOrder_Stat.Columns[0].HeaderAlignmentVert := cxClasses.vaCenter;
  		cxOrder_Stat.Columns[0].Width := 40;
  		cxOrder_Stat.Columns[0].PropertiesClassName := 'Label';
  		cxOrder_Stat.Columns[0].PropertiesClass := TcxLabelProperties;
  		cxOrder_Stat.Columns[0].Properties.Alignment.Horz := taCenter;
      cxOrder_Stat.Columns[0].Properties.Alignment.Vert := taVCenter;

      tmpDate := de_stDate.Date-1;
      i := 0;
      while True do
      begin
        if (de_stDate.Date + i) > (de_edDate.Date) then Break;

        tmpDate := tmpDate+1;
  			cxOrder_Stat.CreateColumn.Caption := RightStr(DateToStr(tmpDate), 5);
  			cxOrder_Stat.Columns[i+1].DataBinding.FieldName := StringReplace(DateToStr(de_stDate.date+i),'-','',[rfReplaceAll]);
  			cxOrder_Stat.Columns[i+1].DataBinding.ValueType := 'Integer';
        cxOrder_Stat.Columns[i+1].HeaderAlignmentHorz := taCenter;
  			cxOrder_Stat.Columns[i+1].HeaderAlignmentVert := cxClasses.vaCenter;
  			cxOrder_Stat.Columns[i+1].Width := 50;
  			cxOrder_Stat.Columns[i+1].PropertiesClassName :=  'CurrencyEdit';
  			cxOrder_Stat.Columns[i+1].PropertiesClass := TcxCurrencyEditProperties;
   		 (cxOrder_Stat.Columns[i+1].Properties as TcxCurrencyEditProperties).DisplayFormat := ',0;-,0';
        cxOrder_Stat.Columns[i+1].Properties.Alignment.Horz := taRightJustify;
        cxOrder_Stat.Columns[i+1].Properties.Alignment.Vert := taVCenter;
        i := i + 1;
      end;

  		cxOrder_Stat.CreateColumn.Caption := '합계';
  		cxOrder_Stat.Columns[i+1].DataBinding.FieldName := '합계';
  		cxOrder_Stat.Columns[i+1].DataBinding.ValueType := 'Integer';
  		cxOrder_Stat.Columns[i+1].HeaderAlignmentHorz := taCenter;
  		cxOrder_Stat.Columns[i+1].HeaderAlignmentVert := cxClasses.vaCenter;
  		cxOrder_Stat.Columns[i+1].Width := 60;
  		cxOrder_Stat.Columns[i+1].PropertiesClassName := 'CurrencyEdit';
  		cxOrder_Stat.Columns[i+1].PropertiesClass := TcxCurrencyEditProperties;
  		(cxOrder_Stat.Columns[i+1].Properties as TcxCurrencyEditProperties).DisplayFormat := ',0;-,0';
  		cxOrder_Stat.Columns[i+1].Properties.Alignment.Horz := taRightJustify;
  		cxOrder_Stat.Columns[i+1].Properties.Alignment.Vert := taVCenter;
  	finally
      cxOrder_Stat.EndUpdate;
  	end;

    cxOrder_Stat.BeginUpdate;
    try
      Row1 := cxOrder_Stat.DataController.AppendRecord;
      cxOrder_Stat.DataController.Values[Row1, 0] := '건수';
      Row2 := cxOrder_Stat.DataController.AppendRecord;
      cxOrder_Stat.DataController.Values[Row2, 0] := '금액';
  	finally
      cxOrder_Stat.EndUpdate;
    end;
    {-------------------------- 그리드 셋팅 끝 --------------------------}
    {------------------------- 데이타 조회 시작 -------------------------}
  	Proc_WorkerDaily_Statistic(Row1, Row2);
    {-------------------------- 데이타 조회 끝 --------------------------}
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.btnCloseClick(Sender: TObject);
begin
  try
    Self.Hide;
    SetDebugeWrite('Frm_JON012.btnCloseClick');

    if ( GB_JON_WKCALLPOPUP ) And ( Not Frm_Main.Frm_JON01N[Self.Tag].Showing ) And ( Frm_Main.Frm_JON01N[Self.Tag].cxLblCIDUseFlg.Hint = 'CID' ) then
    begin
      Frm_Main.Frm_JON01N[Self.Tag].btnCmdExit.Description := 'T';
      Frm_Main.Frm_JON01N[Self.Tag].btnCmdExit.Click;
      GI_JON_WKCALLPOPUP := -1;
    end;
    pnlColorSet.Visible := False;
    bChkTime := False;
    TmrChkTag.Tag := 100;
    if GS_JON01_GROUPMOVE then MagneticWnd.RemoveWindow(Self.Handle);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.btnDestSearchClick(Sender: TObject);
var i, j, iSta, iEnd, iMemo, iBigo, iRow : integer;
	  sTmp : string;
    bSearch : Boolean;
begin
	SetDebugeWrite('Frm_JON012.btnDestSearchClick');
  if (Trim(edtStar.Text) = '') And (Trim(edtDest.Text) = '') And (Trim(edtBigo.Text) = '') And (Trim(edtMemo.Text) = '') then Exit;

  try
    iSta  := cxGVeOrderList.GetColumnByFieldName('출발지').Index;
    iEnd  := cxGVeOrderList.GetColumnByFieldName('도착지').Index;
    iBigo := cxGVeOrderList.GetColumnByFieldName('적요'  ).Index;
    iMemo := cxGVeOrderList.GetColumnByFieldName('고객메모').Index;
    cxGVeOrderDestList.DataController.SetRecordCount(0);

    cxGVeOrderDestList.BeginUpdate;
    for i := 0 to cxGVeOrderList.DataController.RecordCount -1 do
    begin
      bSearch := True;
      if ( Trim(edtStar.Text) <> '' ) then
        bSearch := (Pos(Trim(edtStar.Text), cxGVeOrderList.DataController.Values[i, iSta]) > 0);
      if Not bSearch then Continue;

      if ( Trim(edtDest.Text) <> '' ) then
        bSearch := (Pos(Trim(edtDest.Text), cxGVeOrderList.DataController.Values[i, iEnd]) > 0);
      if Not bSearch then Continue;

      if ( Trim(edtBigo.Text) <> '' ) then
        bSearch := (Pos(Trim(edtBigo.Text), cxGVeOrderList.DataController.Values[i, iBigo]) > 0);
      if Not bSearch then Continue;

      if ( Trim(edtMemo.Text) <> '' ) then
        bSearch := (Pos(Trim(edtMemo.Text), cxGVeOrderList.DataController.Values[i, iMemo]) > 0);

      if bSearch then
      begin
        iRow := cxGVeOrderDestList.DataController.AppendRecord;
				for J := 0 to Length(OrderTitle)-1 do
        begin
          Try
						sTmp := cxGVeOrderList.DataController.Values[i, cxGVeOrderList.GetColumnByFieldName(OrderTitle[J].FieldName).Index];
          Except
						sTmp := '';
          End;
          _AddData(cxGVeOrderDestList, iRow, OrderTitle[J].FieldName, sTmp);
        end;
			end;
    end;
    cxGVeOrderDestList.EndUpdate;
    if cxGVeOrderDestList.DataController.RecordCount = 1 then Pnl_DestList.Height := 100
                                                         else Pnl_DestList.Height := 69 + (cxGVeOrderDestList.DataController.RecordCount * 20);

    if (self.Height div 2) < Pnl_DestList.Height then Pnl_DestList.Height := (self.Height div 2) - 30;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.BtnSheet1Click(Sender: TObject);
begin
  SetDebugeWrite('Frm_JON012.BtnSheet1Click');
  try
    sActivePage := 0;
    cxPageControl1.ActivePageIndex := 0;
    cxPageControl1Click(Sender);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.BtnSheet2Click(Sender: TObject);
begin
  SetDebugeWrite('Frm_JON012.BtnSheet2Click');
  try
    sActivePage := 1;
    cxPageControl1.ActivePageIndex := 1;
    cxPageControl1Click(Sender);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.BtnWCall1Click(Sender: TObject);
begin
  SetDebugeWrite('Frm_JON012.BtnWCall1Click');
  try
    if BtnWCall1.Description <> '' then
    begin
      SetDebugeWrite('기사정보1 기사전화걸기 ' + BtnWCall1.Description);
      Frm_Main.TelWorkerByBrSabun(BtnWCall1.Description, Frm_Main.Frm_JON01N[Self.Tag].Proc_MainKeyNumberSearch)
    end else
      GMessagebox('단말기 번호가 없습니다.', CDMSE);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.BtnWCall2Click(Sender: TObject);
begin
  SetDebugeWrite('Frm_JON012.BtnWCall2Click');
  try
    if BtnWCall2.Description <> '' then
    begin
      SetDebugeWrite('기사정보2 기사전화걸기 ' + BtnWCall2.Description);
      Frm_Main.TelWorkerByBrSabun(BtnWCall2.Description, Frm_Main.Frm_JON01N[Self.Tag].Proc_MainKeyNumberSearch)
    end else
      GMessagebox('핸드폰 번호가 없습니다.', CDMSE);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.btn_baecha_cancellogClick(Sender: TObject);
begin
  SetDebugeWrite('Frm_JON012.btn_baecha_cancellogClick');
  try
   if Not Assigned(Frm_WOR16) then Frm_WOR16 := TFrm_WOR16.Create(Nil);
   Frm_WOR16.sWkSabun := sWk_sabun32;
   Frm_WOR16.proc_init;
   Frm_WOR16.Show;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.btn_baecha_limitClick(Sender: TObject);
begin
  SetDebugeWrite('Frm_JON012.btn_baecha_limitClick');
  try
    if Not Assigned(Frm_WOR09) then Frm_WOR09 := TFrm_WOR09.Create(Nil);
    Frm_WOR09.pWOR09Dock.bUnDock := pJON012Dock.bUnDock;
    Frm_WOR09.pWOR09Dock.HdNo    := pJON012Dock.HdNo;
    Frm_WOR09.pWOR09Dock.BrNo    := pJON012Dock.BrNo;
    Frm_WOR09.pWOR09Dock.BrName  := pJON012Dock.BrName;
    Frm_WOR09.pWOR09Dock.Gubun   := pJON012Dock.Gubun;
    Frm_WOR09.pWOR09Dock.Idx     := pJON012Dock.Idx;

  	Frm_WOR09.proc_init;
  	Frm_WOR09.cxedWkSabun.Text := sWk_sabun32;
  	Frm_WOR09.proc_init2;

  	Frm_WOR09.Show;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.btn_KDCallClick(Sender: TObject);
begin
	SetDebugeWrite('Frm_JON012.btn_KDCallClick');
  try
    if btn_KDCall.Description <> '' then
    begin
      SetDebugeWrite('KM 기사전화걸기 ' + btn_KDCall.Description);
      Frm_Main.TelWorkerByBrSabun(btn_KDCall.Description, Frm_Main.Frm_JON01N[Self.Tag].Proc_MainKeyNumberSearch)
    end else
      GMessagebox('핸드폰 번호가 없습니다.', CDMSE);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.btn_SelStCdClick(Sender: TObject);
begin
	pnl_SelStCd.Left := btn_SelStCd.Left + btn_SelStCd.Width - pnl_SelStCd.Width;
	pnl_SelStCd.Top := 2;
	if pnl_SelStCd.Visible then pnl_SelStCd.Visible := False else pnl_SelStCd.Visible := True;
end;

procedure TFrm_JON012.btn_sms_conClick(Sender: TObject);
begin
  SetDebugeWrite('Frm_JON012.btn_sms_conClick');
  try
    if edit1.Text = Label32.Caption then
    begin
      grpSetExcel.Visible := False;
      grpSetBrch_select.Visible := False;
      proc_excel_NoSms(grpSetExcel.Tag);
    end else
    begin
      GMessagebox('인증번호가 다릅니다.' + #13#10 + '다시 입력하세요', cdmsw);
      edit1.Text := '';
      edit1.SetFocus;
      Exit;
    end;
  except
    GMessagebox('실패하였습니다.', CDMSE);
  end;
end;

procedure TFrm_JON012.btn_wkModifyClick(Sender: TObject);
begin
  proc_wk_modify;
end;

procedure TFrm_JON012.btn_wksmsClick(Sender: TObject);
begin
  SetDebugeWrite('Frm_JON012.btn_wksmsClick');
  try
    if Not Assigned(Frm_SMS01) then Frm_SMS01 := TFrm_SMS01.Create(Nil);
    Frm_SMS01.pSMS01Dock.bUnDock := pJON012Dock.bUnDock;
    Frm_SMS01.pSMS01Dock.HdNo    := pJON012Dock.HdNo;
    Frm_SMS01.pSMS01Dock.BrNo    := pJON012Dock.BrNo;
    Frm_SMS01.pSMS01Dock.BrName  := pJON012Dock.BrName;
    Frm_SMS01.pSMS01Dock.Gubun   := pJON012Dock.Gubun;
    Frm_SMS01.pSMS01Dock.Idx     := pJON012Dock.Idx;

		Frm_SMS01.ed_send.Text := sBrtel;
		Frm_SMS01.ls_sms.Items.Clear;
		if sWkhp <> '' then
			Frm_SMS01.ls_sms.Items.Add(CallToStr(sWkhp))
		else
			Frm_SMS01.ls_sms.Items.Add(sWkphone);
		Frm_SMS01.sMemo := '[기사문자전송]';
		Frm_SMS01.sConfSlip := '';
		Frm_SMS01.sWkSabun := sWk_sabun32;
    Frm_SMS01.Proc_Init;
		Frm_SMS01.sSendKind := '';
		Frm_SMS01.rdo_SMS.Visible := False;
		Frm_SMS01.rdo_PUSH.Visible := False;
		Frm_SMS01.PageControl1.ActivePageIndex := 2;
		Frm_SMS01.Show;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.btn_wk_moveClick(Sender: TObject);
begin
  SetDebugeWrite('Frm_JON012.btn_wk_moveClick');
  try
    if Not Assigned(Frm_WOR17) then Frm_WOR17 := TFrm_WOR17.Create(Nil);
    Frm_WOR17.pWOR17Dock.bUnDock := pJON012Dock.bUnDock;
    Frm_WOR17.pWOR17Dock.HdNo    := pJON012Dock.HdNo;
    Frm_WOR17.pWOR17Dock.BrNo    := pJON012Dock.BrNo;
    Frm_WOR17.pWOR17Dock.BrName  := pJON012Dock.BrName;
    Frm_WOR17.pWOR17Dock.Gubun   := pJON012Dock.Gubun;
    Frm_WOR17.pWOR17Dock.Idx     := pJON012Dock.Idx;

    Frm_WOR17.Jon03Tag := Jon03Tag;
    Frm_WOR17.sWkSabun := sWk_sabun32;
    Frm_WOR17.proc_init;
    Frm_WOR17.sConfSlip := '';
    Frm_WOR17.chk_WKHIS_AllSearch.Checked := True;
    Frm_WOR17.chk_WKHIS_AllSearchClick(Frm_WOR17.chk_WKHIS_AllSearch);
    Frm_WOR17.Show;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.btn_wk_penaltyClick(Sender: TObject);
begin
  SetDebugeWrite('Frm_JON012.btn_wk_penaltyClick');
  try
    if Not Assigned(Frm_WOR14) then Frm_WOR14 := TFrm_WOR14.Create(Nil);
    Frm_WOR14.pWOR14Dock.bUnDock := pJON012Dock.bUnDock;
    Frm_WOR14.pWOR14Dock.HdNo    := pJON012Dock.HdNo;
    Frm_WOR14.pWOR14Dock.BrNo    := pJON012Dock.BrNo;
    Frm_WOR14.pWOR14Dock.BrName  := pJON012Dock.BrName;
    Frm_WOR14.pWOR14Dock.Gubun   := pJON012Dock.Gubun;
    Frm_WOR14.pWOR14Dock.Idx     := pJON012Dock.Idx;

    Frm_WOR14.sWkSabun := sWk_sabun32;
    Frm_WOR14.proc_init;
    Frm_WOR14.Show;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.cbStatesViewPropertiesChange(Sender: TObject);
Var i : Integer;
begin
  GS_JON012_STATS := cbStatesView.ItemIndex;
	GS_EnvFile.WriteInteger('AcceptWin', 'Jon012Stats', GS_JON012_STATS);

  for i := 0 to JON_MAX_CNT - 1 do
  begin
    if Self.Tag <> i then
    begin
      if Assigned(Frm_Main.Frm_JON012[i]) Or ( Frm_Main.Frm_JON012[i] <> Nil ) then
      begin
        Frm_Main.Frm_JON012[i].cbStatesView.ItemIndex := GS_JON012_STATS;
        Frm_Main.Frm_JON012[i].SetStatesViewCheck;
			end;
    end;
  end;

  SetStatesViewCheck;
end;

procedure TFrm_JON012.chk_St2PropertiesChange(Sender: TObject);
Var i : Integer;
begin
	try
		if chk_St2.Tag = 99 then exit;

		GS_JON012_STATS := cbStatesView.ItemIndex;

		GS_JON012_ST2 := chk_St2.Checked;
		GS_JON012_ST1 := chk_St1.Checked;
		GS_JON012_ST4 := chk_St4.Checked;
		GS_JON012_ST8 := chk_St8.Checked;

		GS_EnvFile.WriteBool('AcceptWin', 'Jon012St2', GS_JON012_ST2);
		GS_EnvFile.WriteBool('AcceptWin', 'Jon012St1', GS_JON012_ST1);
		GS_EnvFile.WriteBool('AcceptWin', 'Jon012St4', GS_JON012_ST4);
		GS_EnvFile.WriteBool('AcceptWin', 'Jon012St8', GS_JON012_ST8);

		for i := 0 to JON_MAX_CNT - 1 do
		begin
			if Self.Tag <> i then
			begin
				if Assigned(Frm_Main.Frm_JON012[i]) Or ( Frm_Main.Frm_JON012[i] <> Nil ) then
				begin
					Frm_Main.Frm_JON012[i].SetStatesViewCheck;
				end;
			end;
		end;

		SetStatesViewCheck;

	except on E: Exception do
		Assert(False, E.Message);
	end;
end;



procedure TFrm_JON012.SetStatesViewCheck;
Var iStCd: Integer;
begin
	try

		iStCd := cxGVeOrderList.GetColumnByFieldName('상태').Index;

		if (not GS_JON012_ST2) and (not GS_JON012_ST1) and (not GS_JON012_ST4) and (not GS_JON012_ST8) then
		begin
			btn_SelInitClick(btn_SelInit);
			exit;
		end;
		cxGVeOrderList.DataController.Filter.Clear;
		cxGVeOrderList.DataController.Filter.Root.BoolOperatorKind := fboOr;

		if GS_JON012_ST2 then cxGVeOrderList.DataController.Filter.Root.AddItem(cxGVeOrderList.Columns[iStCd], foEqual, '2', '완료');
		if GS_JON012_ST1 then cxGVeOrderList.DataController.Filter.Root.AddItem(cxGVeOrderList.Columns[iStCd], foEqual, '1', '배차');
		if GS_JON012_ST4 then cxGVeOrderList.DataController.Filter.Root.AddItem(cxGVeOrderList.Columns[iStCd], foEqual, '4', '문의');
		if GS_JON012_ST8 then cxGVeOrderList.DataController.Filter.Root.AddItem(cxGVeOrderList.Columns[iStCd], foEqual, '8', '취소');

		cxGVeOrderList.DataController.Filter.Root.AddItem(cxGVeOrderList.Columns[iStCd], foEqual, 'gi', '경품지급');
		cxGVeOrderList.DataController.Filter.Root.AddItem(cxGVeOrderList.Columns[iStCd], foEqual, 'cs', '가격수정');
		cxGVeOrderList.DataController.Filter.Root.AddItem(cxGVeOrderList.Columns[iStCd], foEqual, 'bi', '보정입력');
		cxGVeOrderList.DataController.Filter.Active := True;
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_JON012.ctxGridMouseLeave(Sender: TObject);
begin
  try
    GT_HINT_SHOW := False;
    OldHintView012.ARow := -1;    // 20120719 LYB 수정
    PnlHelp.Visible := False;
    tmr_hint.Enabled := False;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.cxBtnAcceptClick(Sender: TObject);
var sCaption : String;
    i : Integer;
begin
  try
    GI_JON_WKCALLPOPUP := -1;
    // 접수하기 누른후 전화번호에서 다시 엔터시 접수창 사라지지 않게 하기 위해  2021.02.05 LYB

    if Frm_Main.JON01MNG[Self.Tag].Dock then
    begin
      sCaption := Self.Hint;
      for i := 0 to Frm_JON00.cxTabControl1.Tabs.Count - 1 do
      begin
        if (Frm_JON00.cxTabControl1.Tabs[i].Caption = sCaption) And
           (Frm_JON00.slTabTag[i] = IntToStr(Self.Tag)) then
        begin
          Frm_JON00.cxTabControl1.Tabs[i].Visible := True;
          Break;
        end;
      end;
      Frm_Jon00.cxTabControl1.TabIndex := i;
      Frm_JON00.Show;
    end;

    Frm_Main.Frm_JON01N[Self.Tag].cxLblCIDUseFlg.Hint := '';
    Frm_Main.Frm_JON01N[Self.Tag].Show
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.cxBtnColorSetClick(Sender: TObject);
begin
  try
    SetDebugeWrite('Frm_JON012.cxBtnOldSelectClick');
    pnlColorSet.Top := 31;
    pnlColorSet.Left := cxBtnColorSet.Left - pnlColorSet.Width;

    if not pnlColorSet.Visible then
      pnlColorSet.Visible := True
    else
      pnlColorSet.Visible := False;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.cxBtnFixPosClick(Sender: TObject);
Var i, iLeft, iTop, iValue : Integer;
begin
  try
    if Assigned(Frm_Main.Frm_JON01N[Self.Tag]) And (GB_JON_FIXEDPIN) And ( cxBtnFixPos.Down ) then
    begin
      if Frm_Main.JON01MNG[Self.Tag].Dock then
      begin
        iLeft := (Self.Left + Self.Width) - Frm_JON00.Left;
        iTop  := (Self.Top) - (Frm_JON00.Top + Frm_JON00.Height);
        if ( iLeft <= 2 ) And ( iLeft >= -2 ) then
        begin
          iValue := Self.Top - Frm_JON00.Top;
          GS_EnvFile.WriteInteger('AcceptWin', 'Jon012Top' , iValue);
          GS_EnvFile.WriteInteger('AcceptWin', 'Jon012Left', 0);
          GS_EnvFile.WriteBool('AcceptWin', 'Jon012Pos' , True);    // True : Left
        end else
        if ( iTop <= 2 ) And ( iTop >= -2 ) then
        begin
          iValue := Self.Left - Frm_JON00.Left;
          GS_EnvFile.WriteInteger('AcceptWin', 'Jon012Top' , 0);
          GS_EnvFile.WriteInteger('AcceptWin', 'Jon012Left', iValue);
          GS_EnvFile.WriteBool('AcceptWin', 'Jon012Pos' , False);  // False : Top;
        end else
        begin
          GMessagebox('접수창과 붙어있을경우에만 고정옵션을 사용 할수 있습니다', CDMSI);
          cxBtnFixPos.Down := False;
          cxBtnFixPos.LookAndFeel.SkinName := 'Sharp';
          Exit;
        end;
      end else
      begin
        iLeft := (Self.Left + Self.Width) - Frm_Main.Frm_JON01N[Self.Tag].Left;
        iTop  := (Self.Top) - (Frm_Main.Frm_JON01N[Self.Tag].Top + Frm_Main.Frm_JON01N[Self.Tag].Height);
        if ( iLeft <= 2 ) And ( iLeft >= -2 ) then
        begin
          iValue := Self.Top - Frm_Main.Frm_JON01N[Self.Tag].Top;
          GS_EnvFile.WriteInteger('AcceptWin', 'Jon012Top' , iValue);
          GS_EnvFile.WriteInteger('AcceptWin', 'Jon012Left', 0);
          GS_EnvFile.WriteBool('AcceptWin', 'Jon012Pos' , True);    // True : Left
        end else
        if ( iTop <= 2 ) And ( iTop >= -2 ) then
        begin
          iValue := Self.Left - Frm_Main.Frm_JON01N[Self.Tag].Left;
          GS_EnvFile.WriteInteger('AcceptWin', 'Jon012Top' , 0);
          GS_EnvFile.WriteInteger('AcceptWin', 'Jon012Left', iValue);
          GS_EnvFile.WriteBool('AcceptWin', 'Jon012Pos' , False);  // False : Top;
        end else
        begin
          GMessagebox('접수창과 붙어있을경우에만 고정옵션을 사용 할수 있습니다', CDMSI);
          cxBtnFixPos.Down := False;
          cxBtnFixPos.LookAndFeel.SkinName := 'Sharp';
          Exit;
        end;
      end;
    end;
  except
  end;

  try
    GS_JON012_POSFIX := TcxButton(Sender).Down;
    GS_EnvFile.WriteBool('AcceptWin', 'Jon012Fix', GS_JON012_POSFIX);

    if GS_JON012_POSFIX then cxBtnFixPos.LookAndFeel.SkinName := 'Office2010Silver'
                        else cxBtnFixPos.LookAndFeel.SkinName := 'Sharp';

    for i := 0 to JON_MAX_CNT - 1 do
    begin
      if Self.Tag <> i then
      begin
        if Assigned(Frm_Main.Frm_JON012[i]) Or ( Frm_Main.Frm_JON012[i] <> Nil ) then
        begin
          Frm_Main.Frm_JON012[i].cxBtnFixPos.Down := GS_JON012_POSFIX;
           if GS_JON012_POSFIX then Frm_Main.Frm_JON012[i].cxBtnFixPos.LookAndFeel.SkinName := 'Office2010Silver'
                               else Frm_Main.Frm_JON012[i].cxBtnFixPos.LookAndFeel.SkinName := 'Sharp';
        end;
      end;
    end;

    gi012Top  := Self.Top;
    gi012Left := Self.Left;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.cxBtnOldSelectClick(Sender: TObject);
begin
	SetDebugeWrite('Frm_JON012.cxBtnOldSelectClick');
  try
		cxBtnOldSelect.Enabled := False;
		cxBtnOldSelect.Hint := '1';
    // 고객과거이용내역[cdms_a01]을 검색 한다..
		Proc_CustOldSelect;
	finally
		cxBtnOldSelect.Enabled := True;
		cxBtnOldSelect.Hint := '';
  end;
end;

procedure TFrm_JON012.btn_SelInitClick(Sender: TObject);
begin
	chk_St2.Tag := 99;
	chk_St2.Checked := False;
	chk_St1.Checked := False;
	chk_St4.Checked := False;
	chk_St8.Checked := False;
	chk_St2.Tag := 0;

	GS_JON012_ST2 := chk_St2.Checked;
	GS_JON012_ST1 := chk_St1.Checked;
	GS_JON012_ST4 := chk_St4.Checked;
	GS_JON012_ST8 := chk_St8.Checked;

	GS_EnvFile.WriteBool('AcceptWin', 'Jon012St2', GS_JON012_ST2);
	GS_EnvFile.WriteBool('AcceptWin', 'Jon012St1', GS_JON012_ST1);
	GS_EnvFile.WriteBool('AcceptWin', 'Jon012St4', GS_JON012_ST4);
	GS_EnvFile.WriteBool('AcceptWin', 'Jon012St8', GS_JON012_ST8);

	cxGVeOrderList.DataController.Filter.Clear;
	cxGVeOrderList.DataController.Filter.Active := False;

	pnl_SelStCd.Visible := False;
end;

procedure TFrm_JON012.BtnLClose1Click(Sender: TObject);
begin
  try
    SetDebugeWrite('Frm_JON012.BtnLClose1Click');
    if PnlWorkImg.Left <> cxGrid1.Left then
    begin
      PnlWorkImg.Left := cxGrid1.Left;
    end else
    begin
      PnlWorkImg.Left := ( PnlWorkImg.Width * -1 );
    end;
    BtnLClose1.Left := PnlWorkImg.Left + (PnlWorkImg.Width);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.BtnpnlColorSetCloseClick(Sender: TObject);
begin
	pnlColorSet.Visible := False;
end;

procedure TFrm_JON012.cxCheckComboBox1PropertiesClickCheck(Sender: TObject;
  ItemIndex: Integer; var AllowToggle: Boolean);
Var i, li_Status : Integer;
    lCheckKey, lCheckName : TStringList;
begin
  try
    li_Status := cxGVeOrderList.GetColumnByFieldName('상태').Index;
    cxGVeOrderList.DataController.Filter.Clear;

    lCheckKey := TStringList.Create;
    lCheckName := TStringList.Create;
    lCheckKey.Clear;
    lCheckName.Clear;
    try
      for i := 0 to cxCheckComboBox1.Properties.Items.Count - 1 do
      begin
        if cxCheckComboBox1.States[i] = cbsChecked then
        begin
          lCheckKey.Add(cxCheckComboBox1.Properties.Items[i].ShortDescription);
          lCheckName.Add(cxCheckComboBox1.Properties.Items[i].Description);
        end;
      end;

      if lCheckKey.Count > 0 then
      begin
        cxGVeOrderList.DataController.Filter.Root.BoolOperatorKind := fboOr;
        for i := 0 to lCheckKey.Count - 1 do
        begin
          cxGVeOrderList.DataController.Filter.Root.AddItem(cxGVeOrderList.Columns[li_Status], foEqual, lCheckKey[i], lCheckName[i]);
        end;
        cxGVeOrderList.DataController.Filter.Root.AddItem(cxGVeOrderList.Columns[li_Status], foEqual, 'gi', '경품지급');
        cxGVeOrderList.DataController.Filter.Root.AddItem(cxGVeOrderList.Columns[li_Status], foEqual, 'cs', '가격수정');
        cxGVeOrderList.DataController.Filter.Root.AddItem(cxGVeOrderList.Columns[li_Status], foEqual, 'bi', '보정입력');
        cxGVeOrderList.DataController.Filter.Active := True;
      end else
			begin
        cxGVeOrderList.DataController.Filter.Active := False;
      end;
    finally
      lCheckKey.Free;
      lCheckName.Free;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.cxChkTitlePropertiesChange(Sender: TObject);
var i, iTmp: Integer;
	ln_env: TIniFile;
	sTmp: string;
begin
  try
		if TcxCheckComboBox(Sender).Tag = 99 then
      Exit;
		ln_Env := TIniFile.Create(ENVPATHFILE);
		Try
			ln_env.EraseSection('JON012ListShow');
			ln_env.EraseSection('JON012ListHide');
			cxGVeOrderList.BeginUpdate;
			for i := 0 to cxChkTitle.Properties.Items.Count - 1 do
			begin
				sTmp := cxChkTitle.Properties.Items[i].Description;
				iTmp := cxGVeOrderList.GetColumnByFieldName(sTmp).Index;
				if iTmp < 0 then Continue;
			
				if cxChkTitle.GetItemState(i) = cbsUnchecked then
				begin
					ln_env.WriteString('JON012ListHide', sTmp, '1');
					cxGVeOrderList.columns[iTmp].Visible := False;
				end else
				begin
					ln_env.WriteString('JON012ListShow', sTmp, '1');
					cxGVeOrderList.columns[iTmp].Visible := True;
				end;
			end;
			cxGVeOrderList.EndUpdate;

			proc_Change_Title;
		Finally
			FreeAndNil(ln_env);

		End;
	except

  end;
end;

procedure TFrm_JON012.cxColGVeOrderListColumn31GetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
begin
  try
    if GS_HINT_NO then Exit;

    if GT_MOUSE_HINT = 1 then
    begin
      GT_HINT_SHOW := True;

      HintView012.sValue := ACellViewInfo.Text;
      HintView012.ARow := ARecord.RecordIndex;
      HintView012.ACol := cxGVeOrderList.GetColumnByFieldName(cxGVeOrderList.Columns[ACellViewInfo.Item.Index].DataBinding.FieldName).Index;
      tmr_hint.Interval := 1000;
      tmr_hint.Enabled := True;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.cxGridKDDriveCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iRow : Integer;
  sCaption: string;
begin
	SetDebugeWrite('Frm_JON012.cxGridKDDriveCellDblClick');

  try
    if (AShift = [ssright]) then Exit;

		// 해당 접수창을 찾아서 보여준다.
		Proc_JoinFromFindView;
		// 폼 캡션을 읽는다.
		sCaption := Frm_Main.Frm_JON01N[Self.Tag].Caption;
		iRow := cxGridKDDrive.DataController.FocusedRecordIndex;

		with Frm_Main.Frm_JON01N[Self.Tag] do
		begin
			if iRow > -1 then
			begin
					// 당일 오더 정보를 조회 한다.
					// 접수현황에 선택한 고객 및 기사의 해당 오더를 조회 해 준다.
					if Proc_CustWorkerOrderSearch_WK(cxGridKDDrive) = True then tmJonClose.Enabled := True; // 고객이용내역 및 접수창 관련 폼을 모두 닫는다.
			end;
		end;
  Except
    on e: exception do
    begin
      Log('cxToday_GridListCellDblClick Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'cxToday_GridListCellDblClick Error :' + E.Message);
    end;
	end;
end;

procedure TFrm_JON012.cxGridKDDriveMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  cxGrid4.Tag := 1;// cxGridKDDrive
  cxGrid1.Tag := 0;// cxToday_GridList
end;

procedure TFrm_JON012.cxGVeOrderListCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iCol, iRow, iTitleIndex,
	iSt1, iSt2, iSt3, iSt4, iSt5, iStX, iStY,
	iEd1, iEd2, iEd3, iEd4, iEd5, iEdX, iEdY,
  iVia, iViaCNT, iNum,
	iSlip, iCallCenter, iStatus, iWKNM, iKeyNum, iRate, iInDate, iWkSabun, iTmp, iLen, i : Integer;

  sInDate, sConfSlip, sCaption,
  sDate, xStr, yStr,
	sTmp1, sTmp2, sTmp3, sTmp4, sTmp5, sTmpX, sTmpY,
	sMsgTmp, sTmp, sabun : String;

  AView: TcxGridDBTableView;
  bOk, bShow : Boolean;
  slTmp : TStringList;
  key : word;
begin
  SetDebugeWrite('Frm_JON012.cxGVeOrderListCellClick');

  AView := Sender as TcxGridDBTableView;
  iRow := AView.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;

  try
    try
      if AButton = mbRight then Exit;
      if (AShift = [ssright]) then Exit;

      if ashift = [ssshift]  then outputdebugstring(pchar('1')) else
      if ashift = [ssalt]    then outputdebugstring(pchar('2')) else
      if ashift = [ssctrl]   then outputdebugstring(pchar('3')) else
      if ashift = [ssleft]   then outputdebugstring(pchar('4')) else
      if ashift = [ssright]  then outputdebugstring(pchar('5')) else
      if ashift = [ssmiddle] then outputdebugstring(pchar('6')) else
      if ashift = [ssdouble] then outputdebugstring(pchar('7'));

      // 좌측마우스 버튼 클릭 시 기존에 선택했던 레코드가 FocusedRecordIndex로 넘어옴
      if AButton = TMouseButton(mbLeft) then
      begin
        if GT_MOUSE_HINT = 2 then
        begin
          HintView012.sValue := ACellViewInfo.Text;
          HintView012.ARow := Sender.DataController.FocusedRecordIndex;
          HintView012.ACol := AView.GetColumnByFieldName(AView.Columns[ACellViewInfo.Item.Index].DataBinding.FieldName).Index;
          tmr_hint.Interval := 500;
          tmr_hint.Enabled := True;
        end;
      end;

      if iOpen_Gubun = 1 then Exit; //고객창에서 오픈시에는 빠져나감

      Proc_JoinFromFindView;
      // 폼 캡션을 읽는다.
      sCaption := Frm_Main.Frm_JON01N[Self.Tag].Caption;

      OutputDebugString(PChar('1:'+scaption));
      iCol := lbTitle.Items.IndexOf(AView.Columns[ACellViewInfo.Item.FocusedCellViewInfo.Item.Index].Caption);

      iSlip := AView.GetColumnByFieldName('접수번호').Index;
      iTitleIndex := AView.GetColumnByFieldName('접수일시').Index;
      iCallCenter := AView.GetColumnByFieldName('콜센터코드').Index;
      iStatus := AView.GetColumnByFieldName('상태').Index;
      iWKNM := AView.GetColumnByFieldName('기사').Index;
      iKeyNum := AView.GetColumnByFieldName('대표번호').Index;

      with Frm_Main.Frm_JON01N[Self.Tag] do
      begin
        if iRow > -1 then
        begin
          if iCol = 1 then   // 최초접수일시
          begin
            sInDate := AView.DataController.Values[iRow, iTitleIndex];
            sIndate := copy(Trim(sIndate), 1, 19);
            // 접수번호
            sConfSlip := AView.DataController.Values[iRow, iSlip];

            if ( Not Assigned(Frm_JON07) ) Or ( Frm_JON07 = Nil ) then Frm_JON07 := TFrm_JON07.Create(Nil);

              //타사콜일경우 기사에 송금 팝업메뉴 제외 2016.08.23KHS
            Frm_JON07.bTaSaCall := True;
            if not func_check_CallCenterYN(AView) then
              Frm_JON07.bTaSaCall := False;

            Frm_JON07.Jon03Tag := Jon03Tag;
            Frm_JON07.BrNo := AView.DataController.Values[iRow, iCallCenter];
            frm_JON07.StCd := AView.DataController.Values[iRow, iStatus];
      			if frm_JON07.StCd = 'D' then frm_JON07.StCd := '1';
            frm_JON07.WkName := AView.DataController.Values[iRow, iWKNM];
            frm_JON07.Hint := AView.DataController.Values[iRow, iSlip];
            frm_JON07.AccTime := sInDate;
            frm_JON07.MainKeyNum := AView.DataController.Values[iRow, iKeyNum];    // 2011.07.14 add.
            frm_JON07.CuGubun := '';
            frm_JON07.Cuseq := '';

            frm_JON07.pJON07Dock.bUnDock := pJON012Dock.bUnDock;
            frm_JON07.pJON07Dock.HdNo    := pJON012Dock.HdNo;

            frm_Main.proc_SlipHis(sConfSlip, sInDate, Jon03Tag);
          end else
          if ((Pos('수정', sCaption) = 0) Or (GS_UPMODE_START_CHANGE) ) And (iCol = 3)  then          // 2012.07.19 수정모드 시 출발지 변경  khs
          begin
            J30ShowS := True;
            sTmp1 := ''; sTmp2 := ''; sTmp3 := ''; sTmp4 := ''; sTmp5 := ''; sTmpX := ''; sTmpY := '';

            // 출발지 정보
            iSt1 := AView.GetColumnByFieldName('출1').Index;
            iSt2 := AView.GetColumnByFieldName('출2').Index;
            iSt3 := AView.GetColumnByFieldName('출3').Index;
            iSt4 := AView.GetColumnByFieldName('출4').Index;
            iSt5 := AView.GetColumnByFieldName('출5').Index;
            iStX := AView.GetColumnByFieldName('출좌표X').Index;
            iStY := AView.GetColumnByFieldName('출좌표Y').Index;

            sTmp1 := Trim(AView.DataController.Values[iRow, iSt1]);
            sTmp2 := Trim(AView.DataController.Values[iRow, iSt2]);
            sTmp3 := Trim(AView.DataController.Values[iRow, iSt3]);
            sTmp4 := Trim(AView.DataController.Values[iRow, iSt4]);
            sTmp5 := Trim(AView.DataController.Values[iRow, iSt5]);
            sTmpX := Trim(AView.DataController.Values[iRow, iStX]);
            sTmpY := Trim(AView.DataController.Values[iRow, iStY]);
            if ( (sTmp1 <> '') and (sTmp2 <> '') and (sTmp3 <> '') and (sTmp4 <> '') and
                 (sTmp5 <> '') and (sTmpX <> '') and (sTmpY <> '') ) Or
               ( (GT_USERIF.HD = 'A876') And (GT_USERIF.BR = 'D615') ) then     // 지원팀 제외
            begin
              gJONStaChkXY.Area1 := AView.DataController.Values[iRow, iSt1];
              gJONStaChkXY.Area2 := AView.DataController.Values[iRow, iSt2];
              gJONStaChkXY.Area3 := AView.DataController.Values[iRow, iSt3];
              gJONStaChkXY.Area4 := AView.DataController.Values[iRow, iSt4];
              gJONStaChkXY.Area5 := AView.DataController.Values[iRow, iSt5];
              gJONStaChkXY.X := AView.DataController.Values[iRow, iStX];
              gJONStaChkXY.Y := AView.DataController.Values[iRow, iStY];
              gJONStaChkXY.Gubun := 'A';

              lcsSta1 := AView.DataController.Values[iRow, iSt1];
              lcsSta2 := AView.DataController.Values[iRow, iSt2];
              lcsSta3 := AView.DataController.Values[iRow, iSt3];

              if AView.DataController.Values[iRow, iSt4] <> '☆' then
                cxtStartAreaDetail.Text := AView.DataController.Values[iRow, iSt4]
              else
                cxtStartAreaDetail.Text := '';
              lcsConfAREA4            := AView.DataController.Values[iRow, iSt4];

              ///고객 저장된 출발지입력값에서 특성값 제거  후붛, 즉후, 탁송, 정장, 경유 20181126KHS  탁송)
              ///탁확)스틱)적요)경유)정장) 콜무)   결제관련 제외 ♥]♥♥]♥♥♥] 후불)즉후)법후)
              sTmp := func_StartAreaFunc(AView.DataController.Values[iRow, iSt5]);
              cxtStartAreaDetail.Hint := sTmp;   //출발지 입력값
  //              cxtStartAreaDetail.Hint := AView.DataController.Values[iRow, iSt5];

              cxtStartXval.Text := AView.DataController.Values[iRow, iStX];
              xStr := AView.DataController.Values[iRow, iStX];

              cxtStartYval.Text := AView.DataController.Values[iRow, iStY];
              yStr := AView.DataController.Values[iRow, iStY];

              gsStartGUIDEXval := cxtStartXval.Text;
              gsStartGUIDEYval := cxtStartYval.Text;

              lcsStaCellSel := '';
              lcsStaDocId := '';

              GS_Grid_DEP := 'H'; //과거이용내역일때
  //-            changeLog('S'+ 'H' + xStr + ':' + yStr, false);        //x,y좌표 변경시 로그생성 2012.08.08 KHS

              // 출발지 세부지명
              if Trim(cxtStartAreaDetail.Hint) <> '' then meoStartArea.Text := cxtStartAreaDetail.Hint else
              if Trim(cxtStartAreaDetail.Text) <> '' then meoStartArea.Text := cxtStartAreaDetail.Text else
              if Trim(lcsSta3) <> '' then meoStartArea.Text := lcsSta3;

              lbl_00.Tag := 0;
              pSetLabelClick(lbl_00);
              lbl_04.Tag := 0;
              pSetLabelClick(lbl_04);
              sTaksong := 'n';
              sStickCall := 'n';
              if pos('스틱)', meoStartArea.Text) > 0 then
              begin
                lbl_04.Tag := 1;
                sStickCall := 'y';
              end;
              if pos('탁송)', meoStartArea.Text) > 0 then
              begin
                lbl_00.Tag := 1;
                sTaksong := 'y';
              end;

              lblStartAreaName.Text := AView.DataController.Values[iRow, iSt1] + ' ' + AView.DataController.Values[iRow, iSt2] + ' ' + AView.DataController.Values[iRow, iSt3];

              MarkAllWords(lblStartAreaName, UpperCase(meoStartArea.Text), clRed, [fsBold]);
              MarkAllWords(cxtStartAreaDetail, UpperCase(meoStartArea.Text), clRed, [fsBold]);
            end else
            begin
              if (sTmp1 = '') and (sTmp2 = '') and (sTmp3 = '') and (sTmp4 = '') and (sTmp5 = '') and (sTmpX = '') and (sTmpY = '') then
              //전체 빈값으면 skip
              else
              begin
                sMsgTmp := '[출발지 정보 오류]' + #13#10 + '아래와 같은 이유로 출발지를 자동설정할 수 없습니다.' + #13#10;
                if sTmp1 = '' then sMsgTmp := sMsgTmp + '- 시도 정보가 비어있습니다.' + #13#10;
                if sTmp2 = '' then sMsgTmp := sMsgTmp + '- 시군구 정보가 비어있습니다.' + #13#10;
                if sTmp3 = '' then sMsgTmp := sMsgTmp + '- 읍면동 정보가 비어있습니다.' + #13#10;
                if sTmp4 = '' then sMsgTmp := sMsgTmp + '- 상세지명 정보가 비어있습니다.' + #13#10;
                if sTmp5 = '' then sMsgTmp := sMsgTmp + '- 출발지입력 정보가 비어있습니다.' + #13#10;
                if sTmpX = '' then sMsgTmp := sMsgTmp + '- 좌표(Lat) 정보가 비어있습니다.' + #13#10;
                if sTmpY = '' then sMsgTmp := sMsgTmp + '- 좌표(Lon) 정보가 비어있습니다.' + #13#10;

                GMessagebox(sMsgTmp, CDMSE);
              end;
              exit;
            end;

            if ((cxtStartXval.Text <> '') and (cxtStartYval.Text <> '')
              and (cxtEndXval.Text <> '') and (cxtEndYval.Text <> '')) then
            begin
              curKm.Text := FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
                    cxtStartXval.Text, cxtStartYval.Text, cxtEndXval.Text, cxtEndYval.Text) *
                    StrToFloatDef(CHARGE_DIS, 1.0), ffNumber, 3, 1);

              // 대표번호 별 기본 설정 요금 반영 여부를 결정 한다.[True:반영, False:미반영]
              if not Frm_Main.Frm_JON01N[Self.Tag].IsNotModifyPrice and ((gsMyMainTelUse = 'FALSE') or (gsMyRateRemarkMaintain = 'FALSE')) then
              begin
                if gsMyMainTelUse = 'TRUE' then
                begin
                  if func_search_charge > 0 then
                  begin
                    tmrThRealDis.Tag := 0;
                    proc_dis_alculation(Self.Tag, True);
                    if GT_DISTANCE_ST = 1  then proc_Realdis_Mng
                                           else begin
                                                  iRate := func_search_charge;
                                                  if Not gsMyMainRateNoChange then
                                                  begin
                                                    curRate.Value := iRate;
                                                    OrgRate := curRate.Value;
                                                  end;
                                                end;
                  end;
                end else
                begin
                  tmrThRealDis.Tag := 0;
                  proc_dis_alculation(Self.Tag, True);
                  if GT_DISTANCE_ST = 1  then proc_Realdis_Mng
                                         else begin
                                                  iRate := func_search_charge;
                                                  if Not gsMyMainRateNoChange then
                                                  begin
                                                    curRate.Value := iRate;
                                                    OrgRate := curRate.Value;
                                                  end;
                                              end;
                end;
              end;
            end else
            begin
              curKm.Text := '';
              // 대표번호 별 기본 설정 요금 반영 여부를 결정 한다.[True:반영, False:미반영]
              // 대표번호별 요금제 적용안하거나, 대표번호 적용안하고 복수콜 입력시 요금 적요 정보 유지 안하고..  // 20120615 LYB
              if ( gsMyMainTelUse = 'FALSE') Or ( (gsMyMainTelUse = 'False') and (gsMyRateRemarkMaintain = 'FALSE') ) then
              begin
                tmrThRealDis.Tag := 0;
                curRate.Value := 0; // 요금 초기화.
                proc_dis_alculation(Self.Tag, True);
                if GT_DISTANCE_ST = 1  then proc_Realdis_Mng
                                       else begin
                                              iRate := func_search_charge;
                                              if Not gsMyMainRateNoChange then
                                              begin
                                                curRate.Value := iRate;
                                                OrgRate := curRate.Value;
                                              end;
                                            end;
              end;
            end;

            if (cxtStartXval.Text = '') or (cxtStartYval.Text = '') then
            begin
              lcsActiveEdit := 'meoStartArea'; // 활성화 된 출발지, 도착지 Edit 구분을 저장.
              meoStartArea.SetFocus;
            end
            else
              meoEndArea.SetFocus;
          end else
          if ( (Pos('수정', sCaption) = 0) or (GS_UPMODE1_START_CHANGE) ) and (iCol = 5) then  // 2015.03.16 수정모드 시 도착지 변경  lyb
          begin
            J30ShowE := True;
            sTmp1 := ''; sTmp2 := ''; sTmp3 := ''; sTmp4 := ''; sTmp5 := ''; sTmpX := ''; sTmpY := '';
            // 도착지 정보
            iEd1 := AView.GetColumnByFieldName('도1').Index;
            iEd2 := AView.GetColumnByFieldName('도2').Index;
            iEd3 := AView.GetColumnByFieldName('도3').Index;
            iEd4 := AView.GetColumnByFieldName('도4').Index;
            iEd5 := AView.GetColumnByFieldName('도5').Index;
            iEdX := AView.GetColumnByFieldName('도좌표X').Index;
            iEdY := AView.GetColumnByFieldName('도좌표Y').Index;

            sTmp1 := Trim(AView.DataController.Values[iRow, iEd1]);
            sTmp2 := Trim(AView.DataController.Values[iRow, iEd2]);
            sTmp3 := Trim(AView.DataController.Values[iRow, iEd3]);
            sTmp4 := Trim(AView.DataController.Values[iRow, iEd4]);
            sTmp5 := Trim(AView.DataController.Values[iRow, iEd5]);
            sTmpX := Trim(AView.DataController.Values[iRow, iEdX]);
            sTmpY := Trim(AView.DataController.Values[iRow, iEdY]);

            bOk := False;
            if ((GS_PRJ_AREA = 'O') and (GT_USERIF.ShareNo = 'G91')) Or
               ((GT_USERIF.HD = 'A876') And (GT_USERIF.BR = 'D615')) then bOk := True;   // 지원팀 제외

            // 도착지 동우선 검색 옵션 사용시 시도/좌표만 들어있어도 적용
            if ( GS_SEARCH_DEST_DONGSINAME ) And ((sTmp1 <> '') and (sTmpX <> '') and (sTmpY <> '')) then bOk := True;

            // 도착지 동우선 검색 옵션 미사용시 모든 정보 들어있어야 적용
            if ( Not GS_SEARCH_DEST_DONGSINAME ) And ((sTmp1 <> '') and (sTmp2 <> '') and (sTmp3 <> '') and (sTmp5 <> '') and (sTmpX <> '') and (sTmpY <> '')) then bOk := True;

            if bOk then
            begin
              lcsEnd1 := AView.DataController.Values[iRow, iEd1];
              lcsEnd2 := AView.DataController.Values[iRow, iEd2];
              lcsEnd3 := AView.DataController.Values[iRow, iEd3];
              cxtEndAreaDetail.Caption := AView.DataController.Values[iRow, iEd4];
              cxtEndAreaDetail.Hint := AView.DataController.Values[iRow, iEd5];

              gJONEndChkXY.X  := AView.DataController.Values[iRow, iEdX];
              cxtEndXval.Text := AView.DataController.Values[iRow, iEdX];
              xStr := AView.DataController.Values[iRow, iEdX];

              gJONEndChkXY.Y  := AView.DataController.Values[iRow, iEdY];
              cxtEndYval.Text := AView.DataController.Values[iRow, iEdY];
              yStr := AView.DataController.Values[iRow, iEdY];

              gsEndGUIDEXval := cxtEndXval.Text;
              gsEndGUIDEYval := cxtEndYval.Text;

              lcsEndCellSel := '';
              lcsEndDocId := '';

              GS_Grid_DES := 'H'; //과거이용내역일때

              // 도착지 세부지명
              if Trim(cxtEndAreaDetail.Hint) <> '' then
                meoEndArea.Text := cxtEndAreaDetail.Hint
              else if Trim(lcsEnd3) <> '' then
                meoEndArea.Text := lcsEnd3;

              lblEndAreaName.Caption := AView.DataController.Values[iRow, iEd1] + ' ' +
                                        AView.DataController.Values[iRow, iEd2] + ' ' +
                                        AView.DataController.Values[iRow, iEd3];

              cxReEndArea.Text := lblEndAreaName.Caption + ' ' + cxtEndAreaDetail.Caption;
              MarkAllWords(cxReEndArea, UpperCase(meoEndArea.Text), clRed, [fsBold]);
            end else
            begin
              if (sTmp1 = '') and (sTmp2 = '') and (sTmp3 = '') and (sTmp4 = '') and (sTmp5 = '') and (sTmpX = '') and (sTmpY = '') then
              //전체 빈값으면 skip
              else
              begin
                sMsgTmp := '[도착지 정보 오류]' + #13#10 + '아래와 같은 이유로 도착지를 자동설정할 수 없습니다.' + #13#10;
                if sTmp1 = '' then sMsgTmp := sMsgTmp + '- 시도 정보가 비어있습니다.' + #13#10;
                if sTmp2 = '' then sMsgTmp := sMsgTmp + '- 시군구 정보가 비어있습니다.' + #13#10;
                if sTmp3 = '' then sMsgTmp := sMsgTmp + '- 읍면동 정보가 비어있습니다.' + #13#10;
                if sTmp5 = '' then sMsgTmp := sMsgTmp + '- 도착지입력 정보가 비어있습니다.' + #13#10;
                if sTmpX = '' then sMsgTmp := sMsgTmp + '- 좌표(Lat) 정보가 비어있습니다.' + #13#10;
                if sTmpY = '' then sMsgTmp := sMsgTmp + '- 좌표(Lon) 정보가 비어있습니다.' + #13#10;

                GMessagebox(sMsgTmp, CDMSE);
              end;
              Exit;
            end;

            if ((cxtStartXval.Text <> '') and (cxtStartYval.Text <> '') and (cxtEndXval.Text <> '') and (cxtEndYval.Text <> '')) then
            begin
              curKm.Text :=
                FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
                cxtStartXval.Text, cxtStartYval.Text, cxtEndXval.Text, cxtEndYval.Text) *
                StrToFloatDef(CHARGE_DIS, 1.0),
                ffNumber, 3, 1);

              // 대표번호 별 기본 설정 요금 반영 여부를 결정 한다.[True:반영, False:미반영]
              if not Frm_Main.Frm_JON01N[Self.Tag].IsNotModifyPrice and ((gsMyMainTelUse = 'FALSE') or (gsMyRateRemarkMaintain = 'FALSE')) then
              begin
                if gsMyMainTelUse = 'TRUE' then
                begin
                  if func_search_charge > 0 then
                  begin
                    tmrThRealDis.Tag := 0;
                    proc_dis_alculation(Self.Tag, True);
                    if GT_DISTANCE_ST = 1  then proc_Realdis_Mng
                                           else begin
                                                  iRate := func_search_charge;
                                                  if Not gsMyMainRateNoChange then
                                                  begin
                                                    curRate.Value := iRate;
                                                    OrgRate := curRate.Value;
                                                  end;
                                                end;
                  end;
                end else
                begin
                  tmrThRealDis.Tag := 0;
                  proc_dis_alculation(Self.Tag, True);
                  if GT_DISTANCE_ST = 1  then proc_Realdis_Mng
                                         else begin
                                                iRate := func_search_charge;
                                                if Not gsMyMainRateNoChange then
                                                begin
                                                  curRate.Value := iRate;
                                                  OrgRate := curRate.Value;
                                                end;
                                              end;
                end;
              end;
            end else
            begin
              curKm.Text := '';
              // 대표번호 별 기본 설정 요금 반영 여부를 결정 한다.[True:반영, False:미반영]
              // 대표번호별 요금제 적용안하거나, 대표번호 적용안하고 복수콜 입력시 요금 적요 정보 유지 안하고..  // 20120615 LYB
              if ( gsMyMainTelUse = 'FALSE') Or ( (gsMyMainTelUse = 'False') and (gsMyRateRemarkMaintain = 'FALSE') ) then
              begin
                tmrThRealDis.Tag := 0;
                curRate.Value := 0; // 요금 초기화.
                proc_dis_alculation(Self.Tag, True);
                if GT_DISTANCE_ST = 1  then proc_Realdis_Mng
                                       else begin
                                              iRate := func_search_charge;
                                              if Not gsMyMainRateNoChange then
                                              begin
                                                curRate.Value := iRate;
                                                OrgRate := curRate.Value;
                                              end;
                                            end;
              end;
            end;

            if (cxtEndXval.Text = '') Or (cxtEndYval.Text = '') then
            begin
              lcsActiveEdit := 'meoEndArea'; // 활성화 된 출발지, 도착지 Edit 구분을 저장.
              meoEndArea.SetFocus;
            end else
              meoBigo.SetFocus;
          end else
          if ( (Pos('수정', sCaption) = 0) Or (GS_UPMODE3_START_CHANGE) ) And (iCol = 10) then
          begin
            // 적요 정보
            iTitleIndex := AView.GetColumnByFieldName('적요').Index;
            meoBigo.Text := AView.DataController.Values[iRow, iTitleIndex];
          end else
          if ( (Pos('수정', sCaption) = 0) Or (GS_UPMODE2_START_CHANGE) ) And (iCol = 7) then // 2015.03.16 수정모드 시 요금 변경  lyb
          begin
            // 대표번호 별 기본 설정 요금 반영 여부를 결정 한다.[True:반영, False:미반영]
            iTitleIndex := AView.GetColumnByFieldName('요금').Index;
            // 대표번호별 기본요금 적용에서 무조건 변경 않됨과 복수콜 입력시 요금, 적요 정보유지 선택시  2012-06-18  LYB
            if ( ( gsMyMainTelUse = 'TRUE' ) And (gsMyMainTelUseYN = 'N' ) ) Or ( ( gsMyRateRemarkMaintain = 'TRUE' ) And (Assigned(Frm_JON015) ) )  then
            begin
              OrgRate := curRate.Value;
            end else
            begin
              curRate.Value := StrToIntDef(StringReplace(AView.DataController.Values[iRow, iTitleIndex],
                  ',', '', [rfReplaceAll]), 0);
              OrgRate := curRate.Value;
            end;
          end else
          if iCol = iWKNM then
          begin
            try
              iTmp := LastDelimiter(')', cxGVeOrderList.DataController.Values[iRow, iWKNM]);
              iLen := Length( cxGVeOrderList.DataController.Values[iRow, iWKNM] );
              Sabun := Copy(cxGVeOrderList.DataController.Values[iRow, iWKNM], iTmp + 1, iLen - iTmp);

              if sabun = '' then
              begin
                GMessagebox('배차된 기사가 없습니다.', CDMSE);
                Exit;
              end else
              if sabun = '기사NO' then
              begin
                GMessagebox('기사명이 [기사없음]일 경우에는'+#13#10+'기사정보조회를 할 수 없습니다.', CDMSE);
                Exit;
              end else
              begin
                bShow := True;
                if ( Not Assigned(Frm_JON32) ) Or ( Frm_JON32 = NIl ) then
                begin
                  Frm_JON32 := TFrm_JON32.Create(Nil);
                  bShow := False;
                end;
                Frm_JON32.pJON32Dock.bUnDock := pJON012Dock.bUnDock;
                Frm_JON32.pJON32Dock.HdNo    := pJON012Dock.HdNo;
                Frm_JON32.pJON32Dock.BrNo    := pJON012Dock.BrNo;
                Frm_JON32.pJON32Dock.BrName  := pJON012Dock.BrName;
                Frm_JON32.pJON32Dock.Gubun   := pJON012Dock.Gubun;
                Frm_JON32.pJON32Dock.Idx     := pJON012Dock.Idx;

                Frm_JON32.Jon03Tag := Self.Tag;
                Frm_JON32.Proc_Flag := 1;
                Frm_JON32.sWk_sabun32 := sabun;
                Frm_JON32.sSlip := AView.DataController.Values[iRow, iSlip];
                Frm_JON32.sWkName := Copy(AView.DataController.Values[iRow, iWKNM], 1, iTmp - 1);
                Frm_JON32.sKeyNumber := AView.DataController.Values[iRow, iKeyNum];
                Frm_JON32.Show;
                if bShow then Frm_JON32.pShow;
              end;
            except on E: Exception do
              Assert(False, E.Message);
            end;
          end else
          if iCol = 47 then  // 경유지 클릭시
          begin
            try
              // 경유지 사이즈 초기화
              shpVia.Height := 0;
              gJon01Size[Self.Tag].shpViaH := shpVia.Height;
              grpViaArea.Height := 0;
              gJon01Size[Self.Tag].grpViaAreaH := grpViaArea.Height;

              if ViaADDTag = 1 then pSetFormScroll(0, -32) else
              if ViaADDTag > 1 then pSetFormScroll(0, -1 * (5 + (ViaADDTag * 27)));

              // 저장된 경유지 정보를 초기화 한다.
              for i := 1 to 5 do
              begin
                XposVia[i] := '';
                YposVia[i] := '';
                ViaAreaDetail[i] := '';
                ViaAreaName[i] := '';
                DocId[i] := '';
                CellSel[i] := '';
                SchWord[i] := '';
                ViaSA1[i] := '';
                ViaSA2[i] := '';
                ViaSA3[i] := '';
                DocId[i]  := '';
                CellSel[i] := '';
                SchWord[i] := '';
              end;
              ViaNowTag := 1;   //현재 입력중인 경유지위치
              ViaADDTag := 0;   //현재 추가한 경유지위치
              ViaOK;

              // 2^서울^송파구^신천동^잠실역^잠실역^037304907^127060024^서울^광진구^자양동^구의역 2호선^구의역^037321377^127050985
              iVia := AView.GetColumnByFieldName('경유지정보').Index;
              try
                slTmp := TStringList.Create;
                GetTextSeperationEx2('^', AView.DataController.Values[iRow, iVia], slTmp);

                iViaCNT := StrToIntDef(slTmp[0], 0);
                ViaADDTag := iViaCNT;
                if iViaCNT > 0 then
                begin
                  for i := 0 to iViaCNT - 1 do
                  begin
                    iNum := (i * 7);
                    if slTmp.Count > (7*(i+1)) then
                    begin
                      if i = 0 then
                      begin
                        meoViaArea1.Text := slTmp[iNum + 5];
                        cxViaAreaName1.Caption := slTmp[iNum + 1] + ' '
                                                + slTmp[iNum + 2] + ' '
                                                + slTmp[iNum + 3];
                        ViaSA1[1]        := slTmp[iNum + 1];
                        ViaSA2[1]        := slTmp[iNum + 2];
                        ViaSA3[1]        := slTmp[iNum + 3];
                        ViaAreaDetail[1] := slTmp[iNum + 4];
                        ViaAreaName[1]   := slTmp[iNum + 5];
                        XposVia[1]       := slTmp[iNum + 6];
                        YposVia[1]       := slTmp[iNum + 7];
                        DocId[1]         := '';
                        CellSel[1]       := '';
                        SchWord[1]       := '';
                      end else
                      begin
                        meoViaArea[i+1].Text := slTmp[iNum + 5];
                        cxViaAreaName[i+1].Caption := slTmp[iNum + 1] + ' '
                                                    + slTmp[iNum + 2] + ' '
                                                    + slTmp[iNum + 3];
                        ViaSA1[i+1]        := slTmp[iNum + 1];
                        ViaSA2[i+1]        := slTmp[iNum + 2];
                        ViaSA3[i+1]        := slTmp[iNum + 3];
                        ViaAreaDetail[i+1] := slTmp[iNum + 4];
                        ViaAreaName[i+1]   := slTmp[iNum + 5];
                        XposVia[i+1]       := slTmp[iNum + 6];
                        YposVia[i+1]       := slTmp[iNum + 7];
                        DocId[i+1]         := '';
                        CellSel[i+1]       := '';
                        SchWord[i+1]       := '';
                      end;
                    end;
                  end;

                  grpViaArea.Enabled := True;
                  grpViaArea.Height := grpViaArea.Height + ( 27 * iViaCNT );
                  shpVia.Height := shpVia.Height + 5;

                  gJon01Size[Self.Tag].grpViaAreaH := grpViaArea.Height;
                  gJon01Size[Self.Tag].shpViaH := shpVia.Height;
                  pSetFormScroll(0, ( iViaCNT * 27 ) + 5 );

                  // 수정후 지도보기 클릭 시 좌표 사용하기 위해 처리
                  for i := 0 to iViaCNT - 1 do
                  begin
                    if XposVia[i+1] <> '' then
                    begin
                      GT_PASS_INFO[Self.Tag][i].AREA1 := ViaSA1[i+1];
                      GT_PASS_INFO[Self.Tag][i].AREA2 := ViaSA2[i+1];
                      GT_PASS_INFO[Self.Tag][i].AREA3 := ViaSA3[i+1];
                      GT_PASS_INFO[Self.Tag][i].AREA4 := ViaAreaDetail[i+1];
                      if i = 0 then
                        GT_PASS_INFO[Self.Tag][i].AREA5 := meoViaArea1.Text
                      else
                        GT_PASS_INFO[Self.Tag][i].AREA5 := meoViaArea[i+1].Text;
                      GT_PASS_INFO[Self.Tag][i].DOCID := DocId[i+1];
                      GT_PASS_INFO[Self.Tag][i].CELLS := CellSel[i+1];
                      GT_PASS_INFO[Self.Tag][i].SWORD := ViaAreaDetail[i+1];
                      GT_PASS_INFO[Self.Tag][i].MAP_X := XposVia[i+1];
                      GT_PASS_INFO[Self.Tag][i].MAP_Y := YposVia[i+1];
                    end;
                  end;
                  meoStartArea.Text := meoStartArea.Text + ' '; //수정창에서 경유지명 따로 분리하기위함  gsStArea[iRow]   20190123 KHS
                  meoStartArea.Text := Trim(meoStartArea.Text);

                  meoViaArea1.Enabled := True;
                  cxViaAreaName1.Enabled := True;
                  BtnViaAdd.Enabled := True;
                  lbl_02.Tag := 1;
                  pSetLabelClick(lbl_02);

                  if ((cxtStartXval.Text <> '') and (cxtStartYval.Text <> '')) then
                  begin
                    Key := 13;
                    meoViaArea1KeyUp(meoViaArea1, Key, []);
                  end;
                end;
              finally
                FreeAndNil(slTmp);
              end;
            except on E: Exception do
              Assert(False, E.Message);
            end;
          end;
        end;
      end;
    except on E: Exception do
      Assert(False, E.Message);
    end;
  finally
    try
//      iInDate := AView.GetColumnByFieldName('접수일시').Index;
//      sInDate := AView.DataController.Values[iRow, iInDate];
//      sIndate := copy(sIndate, 1, 19);
//      sDate := StartDateTime('yyyy-mm-dd hh:nn:ss');
//
//      if (sInDate >= sDate) then
//      begin
//        iSlip := AView.GetColumnByFieldName('접수번호').Index;
//        A01_HIS_POPUP.Slip := AView.DataController.Values[iRow, iSlip];
//        iStatus := AView.GetColumnByFieldName('상태').Index;
//        A01_HIS_POPUP.Status := AView.DataController.Values[iRow, iStatus];
//    		if A01_HIS_POPUP.Status = 'D' then A01_HIS_POPUP.Status := '1';
//        GT_OrderInfo[Jon03Tag].slip:=A01_HIS_POPUP.Slip;
//        GT_OrderInfo[Jon03Tag].Status:=A01_HIS_POPUP.Status;
//      end else
//			begin
//        A01_HIS_POPUP.Slip:='_';
//        A01_HIS_POPUP.Status:='';
//        gt_orderinfo[Jon03Tag].slip:='_';
//        gt_orderinfo[Jon03Tag].status:='';
//      end;
    except
    end;
  end;
end;

procedure TFrm_JON012.cxGVeOrderListCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
Var
  iCol, iChoiceRow, iSlip, li_Status, iInDate : Integer;
  sInDate, sCaption, sDate : String;
  AView: TcxGridDBTableView;
begin
  SetDebugeWrite('Frm_JON012.cxGVeOrderListCellDblClick');
	AView := Sender as TcxGridDBTableView;
  iChoiceRow := AView.DataController.FocusedRecordIndex;
  if iChoiceRow < 0 then Exit;
  try
    try
      // 해당 접수창을 찾아서 보여준다.
      Proc_JoinFromFindView;
      // 폼 캡션을 읽는다.
      sCaption := Frm_Main.Frm_JON01N[Self.Tag].Caption;
      iCol := lbTitle.Items.IndexOf(AView.Columns[ACellViewInfo.Item.FocusedCellViewInfo.Item.Index].Caption);
      if iChoiceRow > -1 then
      begin
        if iCol = 2 then
        begin
          // 당일 오더 정보를 조회 한다.
          // 접수현황에 선택한 고객 및 기사의 해당 오더를 조회 해 준다.
          if Proc_CustWorkerOrderSearch = True then
            tmJonClose.Enabled := True; // 고객이용내역 및 접수창 관련 폼을 모두 닫는다.
        end;
      end;
    except on E: Exception do
      Assert(False, E.Message);
    end;
	finally
		try
//			iInDate := AView.GetColumnByFieldName('접수일시').Index;
//			sInDate := AView.DataController.Values[iChoiceRow, iInDate];
//			sIndate := copy(sIndate, 1, 19);
//			sDate := StartDateTime('yyyy-mm-dd hh:nn:ss');
//
//			if (sInDate >= sDate) then
//			begin
//				iSlip := AView.GetColumnByFieldName('접수번호').Index;
//				A01_HIS_POPUP.Slip := AView.DataController.Values[iChoiceRow, iSlip];
//				li_Status := AView.GetColumnByFieldName('상태').Index;
//				A01_HIS_POPUP.Status := AView.DataController.Values[iChoiceRow, li_Status];
//				if A01_HIS_POPUP.Status = 'D' then A01_HIS_POPUP.Status := '1';
//				GT_OrderInfo[Jon03Tag].slip:=A01_HIS_POPUP.Slip;
//				GT_OrderInfo[Jon03Tag].Status:=A01_HIS_POPUP.Status;
//			end else
//			begin
//				A01_HIS_POPUP.Slip:='_';
//				A01_HIS_POPUP.Status:='';
//				gt_orderinfo[Jon03Tag].slip:='_';
//				gt_orderinfo[Jon03Tag].status:='';
//			end;
		except
		end;
  end;
end;

procedure TFrm_JON012.cxGVeOrderListColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
var
  i, iBrWk, iNo, SortIndex: Integer;
  sTemp: string;
	AView: TcxGridDBTableView;
begin
  SetDebugeWrite('Frm_JON012.cxGVeOrderListColumnHeaderClick');
	AView := Sender as TcxGridDBTableView;
	iNo       := AView.GetColumnByFieldName('No').Index;
	iBrWk     := AView.GetColumnByFieldName('최초접수일시').Index;
  SortIndex := AColumn.Index;
//	if SortIndex = iBrWk then	SortIndex := iNo;

	if (SortIndex = iNo) or (SortIndex =	iBrWk) then
	begin
		try
			for i := 0 to AView.ColumnCount - 1 do
			begin
				if i <> SortIndex then
				begin
					AView.Columns[i].SortIndex := -1;
					AView.Columns[i].SortOrder := soNone;
				end;
			end;
			if (AView.Columns[SortIndex].SortOrder = soNone) or (AView.Columns[SortIndex].SortOrder = soDescending) then
				AView.Columns[SortIndex].SortOrder := soAscending
			else if AView.Columns[SortIndex].SortOrder = soAscending then
				AView.Columns[SortIndex].SortOrder := soDescending;
		except
			on e: Exception do
			begin
				Assert(False, E.Message);
				sTemp := 'frmJon012[cxGVeOrderListColumnHeaderClick]Error:' + e.Message;
				GMessagebox(PChar(sTemp), CDMSE);

				Assert(False, E.Message);
			end;
		end;
  end;
end;

procedure TFrm_JON012.cxGVeOrderListColumnPosChanged(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  SetDebugeWrite('Frm_JON012.cxGVeOrderListColumnPosChanged');
  try
		proc_Change_Title;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.cxGVeOrderListColumnSizeChanged(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  SetDebugeWrite('Frm_JON012.cxGVeOrderListColumnSizeChanged');
  try
    proc_Change_Title;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.cxGVeOrderListGetCellHeight(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; ACellViewInfo: TcxGridTableDataCellViewInfo;
  var AHeight: Integer);
begin
	AHeight := GS_JON_GRIDHEIGHT;
end;

procedure TFrm_JON012.cxGVeOrderListMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var APoint : TPoint;
    ARow : Integer;
begin
  try
    // 20120719 LYB 수정
    APoint.X := X;
    APoint.Y := Y;

    if cxGVeOrderList.ViewInfo.GetHitTest(APoint) is TcxGridRecordCellHitTest then
    begin
      ARow := TcxGridRecordCellHitTest(cxGVeOrderList.ViewInfo.GetHitTest(APoint)).GridRecord.Index;
    end else
    begin
      ctxGridMouseLeave(Sender);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.cxGVeOrderListStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AView: TcxGridDBTableView;
	iRow : Integer;
	sOrderType, sBizDate, sWkSabun, ConfSlip: string;
begin
	try
    // 오늘 이용내역이 있을경우 다른 색상으로 표시
    if (ARecord.Selected) or (Sender.DataController.RecordCount = 0) then Exit;

	  AView := Sender as TcxGridDBTableView;
		iRow := AView.DataController.GetRowInfo(ARecord.Index).RecordIndex;

    // 2011.03.07 오더타입 추가(1=전화2)
    if giOrderType <= 0 then
      sOrderType := 'x'
    else
    if (AView.DataController.Values[iRow, giOrderType]) = null then
      sOrderType := 'x'
    else
      sOrderType := (AView.DataController.Values[iRow, giOrderType]);

    // 2008-09-22 12:25:30
    if AView.DataController.Values[iRow, giInDate] = null then Exit;
    if Length(AView.DataController.Values[iRow, giInDate]) < 10 then Exit;

    sBizDate := StartDateTime('yyyy-mm-dd hh:nn:ss'); // 영업일자 얻기..
    sWkSabun := AView.DataController.Values[iRow, giWkSabun];
		ConfSlip := AView.DataController.Values[iRow, giConfSlip];
    if length(sWkSabun) < 6 then
      sWkSabun := ''
    else
      sWkSabun := Copy(sWkSabun, Length(sWkSabun) - 6 + 1, 6);

    // 전화2 추가 2011.03.07
    if sOrderType = '1' then
    begin
      AStyle := cxStyleTelSe;
    // 수정 오더
    end else
    if (Frm_Main.Frm_JON01N[Self.Tag].cxtJoinNum.Text = ConfSlip) and (ConfSlip <> '') then
    begin
      AStyle := cxstyleUpdate;
      if GB_DARKMODE then AStyle.TextColor := clBlack;
    // 타기사 복수콜(타기사 오더는 색상구분)
    end else
    if (Frm_Main.Frm_JON01N[Self.Tag].lcsCu_seq = '') and (Frm_Main.Frm_JON01N[self.Tag].locWkSabun <> '') and (Frm_Main.Frm_JON01N[self.Tag].locWkSabun <> sWkSabun) then
    begin
      AStyle := cxstyleMulti;
      if GB_DARKMODE then AStyle.TextColor := clBlack;
    // 오늘오더
    end else
    if AView.DataController.Values[iRow, giInDate] >= sBizDate then
    begin
      AStyle := cxstyleToday;
      if GB_DARKMODE then AStyle.TextColor := clBlack;
    end else
      AStyle := frm_Main.cxStyle1;
    // 2011.03.04 전화2색상 그리드적용

		if AItem.Index = giMile then
		begin
			if Copy(AView.DataController.Values[iRow, giMile],1,1) = '-' then
			begin
				AStyle  := frm_Main.cxStyleBold;
        if GB_DARKMODE then AStyle.TextColor := GS_DarkFocusColor
                       else AStyle.TextColor := clRed;
			end;
		end;

		if (AItem.Index = giStart) or (AItem.Index = giEnd) then
		begin
			if (sOrderType = '4') and (AView.DataController.Values[iRow, giConfSlip] = '') then
      begin
        AStyle  := frm_Main.cxStyleBold;
        if GB_DARKMODE then AStyle.TextColor := GS_DarkFocusColor
                       else AStyle.TextColor := clRed;
      end;
		end;
    AStyle.Font.Size := 9;
  Except
    on e: exception do
    begin
      Log('cxGVeOrderListStylesGetContentStyle Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'cxGVeOrderListStylesGetContentStyle Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON012.cxiWkImgDownLoadError(Sender: TObject; err: string);
begin
  SetDebugeWrite('Frm_JON012.cxiWkImgDownLoadError');
  PnlWorkImg.Left := ( PnlWorkImg.Width * -1 );
  BtnLClose1.Left := PnlWorkImg.Left + (PnlWorkImg.Width);
end;

procedure TFrm_JON012.cxPageControl1Click(Sender: TObject);
begin
  SetDebugeWrite('Frm_JON012.cxPageControl1Click');
  try
    if cxPageControl1.ActivePageIndex = 0 then
    begin
      if GB_JON012_DESTSEARCH_USE then
      begin
        splOrderHis.Visible := True;
        Pnl_DestList.Visible := True;
        cxGVeOrderDestList.DataController.SetRecordCount(0);
        Pnl_DestList.Height := 69;
        edtDest.text := '';
      end else
      begin
			  splOrderHis.Visible := False;
        Pnl_DestList.Visible := False;
      end;

      BtnSheet1.Down := True;
			lbl8.Visible := True;
			cxBtnOldSelect.Visible := True;
			cxBtnColorSet.Visible := True;
			cxChkTitle.Visible := True;
			btn_SelStCd.Visible := True;
//			cbStatesView.Visible := True;
			cxBtnFixPos.Visible := True;
			lb_wkname_title.Visible := False;
			cxBtnAccept.Visible := False;
			sActivePage := 0;

			FResize := True;
			Self.Width  := GS_EnvFile.ReadInteger('UserHisForm', 'Width', 562);
			FResize := True;
			Self.Height := GS_EnvFile.ReadInteger('UserHisForm', 'Height', 277);
//			if (Self.Width > 863) then lbl8.Visible := True else lbl8.Visible := False;

    end else
    if cxPageControl1.ActivePageIndex = 1 then
    begin
			splOrderHis.Visible := False;

      BtnSheet2.Down := True;
      lbl8.Visible := False;
      cxBtnOldSelect.Visible := False;
      cxBtnColorSet.Visible := False;
//			cbStatesView.Visible := False;
			cxChkTitle.Visible := False;
			btn_SelStCd.Visible := False;
			cxBtnFixPos.Visible := False;

      lb_wkname_title.Visible := True;
      cxBtnAccept.Visible := ( GB_JON_WKCALLPOPUP ) And ( Frm_Main.Frm_JON01N[Self.Tag].cxLblCIDUseFlg.Hint = 'CID' );

      sActivePage := 1;

      if ( GB_JON_FIXEDPIN ) then
			begin
        FResize := True;
        Self.Width  := GS_EnvFile.ReadInteger('UserHisForm', 'Width', 562);
        FResize := True;
        Self.Height := GS_EnvFile.ReadInteger('UserHisForm', 'Height', 277);
      end else
      begin
        FResize := True;
        Self.Width  := GS_EnvFile.ReadInteger('UserHisForm_WK', 'Width_WK', 720);
        FResize := True;
        Self.Height := GS_EnvFile.ReadInteger('UserHisForm_WK', 'Height_WK', 440);
      end;
    end;
  Except
    on e: exception do
    begin
      Log('cxPageControl1Click Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'cxPageControl1Click Error :' + E.Message);
    end;
  end;
  SetcxPageControl;
end;

procedure TFrm_JON012.SetcxPageControl;
begin
  SetDebugeWrite('Frm_JON012.SetcxPageControl');
  try
    if BtnSheet1.Visible And BtnSheet2.Visible then
    begin
      BtnSheet1.Left := 3;
      BtnSheet2.Left := 117;

      Lbl8.Left := 236;
      lb_wkname_title.Left := 236;
    end else
    if BtnSheet1.Visible And Not BtnSheet2.Visible then
    begin
      BtnSheet1.Left := 3;
      Lbl8.Left := 130;
    end else
    if Not BtnSheet1.Visible And BtnSheet2.Visible then
    begin
      BtnSheet2.Left := 3;
      lb_wkname_title.Left := 130;
    end;
  Except
    on e: exception do
    begin
      Log('SetcxPageControl Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'SetcxPageControl Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON012.cxToday_GridListCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  iChoiceRow : Integer;
  sCaption: string;
begin
  SetDebugeWrite('Frm_JON012.cxToday_GridListCellDblClick');
  try
    if (AShift = [ssright]) then Exit;
		// 해당 접수창을 찾아서 보여준다.
		Proc_JoinFromFindView;
		// 폼 캡션을 읽는다.
 		sCaption := Frm_Main.Frm_JON01N[Self.Tag].Caption;
		iChoiceRow := cxToday_GridList.DataController.FocusedRecordIndex;

		if iChoiceRow > -1 then
		begin
			// 당일 오더 정보를 조회 한다.
			// 접수현황에 선택한 고객 및 기사의 해당 오더를 조회 해 준다.
			if Proc_CustWorkerOrderSearch_WK(cxToday_GridList) then tmJonClose.Enabled := True; // 고객이용내역 및 접수창 관련 폼을 모두 닫는다.
		end;
  Except
    on e: exception do
    begin
      Log('cxToday_GridListCellDblClick Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'cxToday_GridListCellDblClick Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON012.cxToday_GridListMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  cxGrid4.Tag := 0;// cxGridKDDrive
  cxGrid1.Tag := 1;// cxToday_GridList
end;

procedure TFrm_JON012.edtBigoEnter(Sender: TObject);
begin
  lblBigoFlag.Visible := False;
end;

procedure TFrm_JON012.edtBigoExit(Sender: TObject);
begin
	lblBigoFlag.Visible := (edtBigo.Text = '');
end;

procedure TFrm_JON012.edtDestEnter(Sender: TObject);
begin
  lblDestFlag.Visible := False;
end;

procedure TFrm_JON012.edtDestExit(Sender: TObject);
begin
	lblDestFlag.Visible := (edtDest.Text = '');
end;

procedure TFrm_JON012.edtDestKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then btnDestSearch.Click;
end;

procedure TFrm_JON012.edtMemoEnter(Sender: TObject);
begin
  lblMemoFlag.Visible := False;
end;

procedure TFrm_JON012.edtMemoExit(Sender: TObject);
begin
	lblMemoFlag.Visible := (edtMemo.Text = '');
end;

procedure TFrm_JON012.edtStarEnter(Sender: TObject);
begin
  lblStarFlag.Visible := False;
end;

procedure TFrm_JON012.edtStarExit(Sender: TObject);
begin
	lblStarFlag.Visible := (edtStar.Text = '');
end;

procedure TFrm_JON012.FormActivate(Sender: TObject);
Var i : Integer;
   sStr : String;
begin
  try
    cxLblActive.Color := GS_ActiveColor;
    cxLblActive.Visible := True;

    // --------------------------------------------------------------- 접수창 선택 및 과거이용내역 자동 선택 처리
    if (Not gbJON012Click[Self.Tag]) And Assigned(Frm_Main.Frm_JON012[Self.Tag]) And ( Frm_Main.JON012MNG[Self.Tag].CreateYN ) then
    begin
      for i := 0 to JON_MAX_CNT - 1 do
      begin
        if i = Self.Tag then gbJON012Click[i] := True
                        else gbJON012Click[i] := False;
      end;
    end;

    if (Not gbJON01Click[Self.Tag]) And Assigned(Frm_Main.Frm_JON01N[Self.Tag]) And ( Frm_Main.JON01MNG[Self.Tag].CreateYN ) then
    begin
      for i := 0 to JON_MAX_CNT - 1 do
      begin
        if i = Self.Tag then gbJON01Click[i] := True
                        else gbJON01Click[i] := False;
      end;
      if GS_JON01_TAB = 0 then
      begin
        Frm_Main.Frm_JON01N[Self.Tag].BringToFront;
      end else
      if GS_JON01_TAB = 1 then
      begin
        sStr := Frm_Main.JON01MNG[Self.Tag].Hint;
        for i := 0 to Frm_JON00.cxTabControl1.Tabs.Count - 1 do
        begin
          if (Frm_JON00.cxTabControl1.Tabs[i].Caption = sStr) And
             (Frm_JON00.slTabTag[i] = IntToStr(Self.Tag)) then
            break;
        end;
        Frm_JON00.cxTabControl1.TabIndex := i;

				Frm_Main.Frm_Jon01N[Self.Tag].BringToFront;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.FormClose(Sender: TObject; var Action: TCloseAction);
var
  EnvFile: TIniFile;
begin
  EnvFile := TIniFile.Create(ENVPATHFILE);
  try
    EnvFile.WriteInteger('WinPos', 'Jon012Left', gi012Left);
    EnvFile.WriteInteger('WinPos', 'Jon012Top' , gi012Top );
  finally
    EnvFile.Free;
  end;

  Action := caFree;
end;

procedure TFrm_JON012.FormCreate(Sender: TObject);
const
  ciWid: array[0..30] of Integer = (
//  0     1     2     3     4     5     6     7     8     9
    91,   58,   82,   42,   72,   74,   57,   88,   64,   72,
    93,   112,  64,   64,   64,   64,   64,   64,   64,   64,
    64,   64,   64,   64,   64,   64,   64,   64,   64,   64,
    64
  );
var
  i, iRow, iWidth: integer;
  sTemp: string;
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

  if GB_DARKMODE then
    Memo_WorkerInfo.Style.LookAndFeel.SkinName := 'MetropolisDark';

  try
    SetDebugeWrite('Frm_JON012.FormCreate');
    //====================================================
    // 폼 타이틀 제거..
    if BorderStyle = bsNone then Exit;

    Save := GetWindowLong(Handle, gwl_Style);
    FResize := True;
    if (Save and ws_Caption) = ws_Caption then
    begin
      case BorderStyle of
        bsSingle, bsSizeable:
          SetWindowLong(Handle, gwl_Style, Save and (not (ws_Caption)) or ws_border);
      end;
      Height := Height - getSystemMetrics(sm_cyCaption);
      Refresh;
    end;

    cxBtnFixPos.Down := GS_JON012_POSFIX;
    cxBtnFixPosClick(cxBtnFixPos);
		cbStatesView.ItemIndex := GS_JON012_STATS;

		btn_baecha_limit.Visible := (TCK_USER_PER.WOR_ShareBaechaSet = '1');       // 304.공유콜배차제한설정
    btn_wkModify.Enabled := (TCK_USER_PER.WOR_MngModify = '1');

    appTabSheet1.TabVisible := True;
    appTabSheet2.TabVisible := False;

    if not Assigned(GS_EnvFile) then
      GS_EnvFile := TIniFile.Create(ENVPATHFILE);

    loc_lsCol := TStringList.Create; // 접수컬럼 index 저장.
    try
      for i := 0 to cxGVeOrderList.ColumnCount - 1 do
        cxGVeOrderList.Columns[i].DataBinding.ValueType := 'String';

      SetDebugeWrite('cxGVeOrderList.BeginUpdate');
      cxGVeOrderList.BeginUpdate;
      try
        cxGVeOrderList.DataController.SetRecordCount(0);
        for i := 0 to cxGVeOrderList.ColumnCount - 1 do
        begin
          sTemp := GS_EnvFile.ReadString('UserHis', IntToStr(i), '');
          iWidth := StrToIntDef(GS_EnvFile.ReadString('UserHisSize', IntToStr(i), '0'), 0);

          if lbTitle.Items.IndexOf(sTemp) < 0 then
          begin
            sTemp := '';
            iWidth := 64;
          end;

          if sTemp <> '' then
          begin
            iRow := cxGVeOrderList.GetColumnByFieldName(sTemp).Index;
            if iRow = -1 then iRow := i;
          end
          else
            iRow := i;
          cxGVeOrderList.Columns[iRow].Index := i;
          cxGVeOrderList.Columns[iRow].DataBinding.ValueType := IfThen(sTemp = 'No', 'Integer', 'String');
          cxGVeOrderList.Columns[i].Width := IfThen(iWidth = 0, ciwid[i], iWidth);
        end;
      finally
        cxGVeOrderList.EndUpdate;
        SetDebugeWrite('cxGVeOrderList.EndUpdate');
      end;
      iRow := cxGVeOrderList.GetColumnByFieldName('No').Index;
      cxGVeOrderList.Columns[iRow].DataBinding.ValueType := 'Integer';

			for i := 0 to cxGVeOrderDestList.ColumnCount - 1 do
				cxGVeOrderDestList.Columns[i].DataBinding.ValueType := 'String';
			SetDebugeWrite('cxGVeOrderDestList.BeginUpdate');
			cxGVeOrderDestList.BeginUpdate;
			try
				cxGVeOrderDestList.DataController.SetRecordCount(0);
				for i := 0 to cxGVeOrderDestList.ColumnCount - 1 do
				begin
					sTemp := GS_EnvFile.ReadString('UserHis', IntToStr(i), '');
          iWidth := StrToIntDef(GS_EnvFile.ReadString('UserHisSize', IntToStr(i), '0'), 0);

					if lbTitle.Items.IndexOf(sTemp) < 0 then
          begin
            sTemp := '';
            iWidth := 64;
          end;

          if sTemp <> '' then
					begin
						iRow := cxGVeOrderDestList.GetColumnByFieldName(sTemp).Index;
            if iRow = -1 then iRow := i;
          end
					else
            iRow := i;
					cxGVeOrderDestList.Columns[iRow].Index := i;
					cxGVeOrderDestList.Columns[iRow].DataBinding.ValueType := IfThen(sTemp = 'No', 'Integer', 'String');
					cxGVeOrderDestList.Columns[i].Width := IfThen(iWidth = 0, ciwid[i], iWidth);
        end;
      finally
				cxGVeOrderDestList.EndUpdate;
				SetDebugeWrite('cxGVeOrderDestList.EndUpdate');
			end;
			iRow := cxGVeOrderDestList.GetColumnByFieldName('No').Index;
			cxGVeOrderDestList.Columns[iRow].DataBinding.ValueType := 'Integer';

			for i := 0 to cxGridKDDrive.ColumnCount - 1 do
				cxGridKDDrive.Columns[i].DataBinding.ValueType := 'String';
			cxGridKDDrive.Columns[0].DataBinding.ValueType := 'Integer';

			for i := 0 to cxToday_GridList.ColumnCount - 1 do
				cxToday_GridList.Columns[i].DataBinding.ValueType := 'String';
			cxToday_GridList.Columns[0].DataBinding.ValueType := 'Integer';

			pGetColumnIndex;

      TcxControlScrollBarsAccess( TcxGridSiteAccess(cxGVeOrderList.Site).MainScrollBars).HScrollBar.OnScroll := HScrollHandler;
      TcxControlScrollBarsAccess( TcxGridSiteAccess(cxGVeOrderDestList.Site).MainScrollBars).HScrollBar.OnScroll := HScrollHandler;

		  sActivePage := 0;
		  FResize := True;
		  Self.Width  := StrToIntDef(GS_EnvFile.ReadString('UserHisForm', 'Width', '562'), 562);
		  FResize := True;
		  Self.Height := StrToIntDef(GS_EnvFile.ReadString('UserHisForm', 'Height', '277'), 277);

      Self.Left  := GS_EnvFile.ReadInteger('WinPos', 'Jon012Left', 0);
      Self.Top   := GS_EnvFile.ReadInteger('WinPos', 'Jon012Top', 0);

      gi012Left := Self.Left;
      gi012Top  := Self.Top;

      if Self.Left < 0 then Self.Left := 0;
      if Self.Top < 0 then Self.Top := 0;
    finally
      FreeAndNil(loc_lsCol);
    end;
  Except
    on e: exception do
    begin
      Log('FormCreate Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'FormCreate Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON012.FormDeactivate(Sender: TObject);
begin
  SetDebugeWrite('Frm_JON012.FormDeactivate');
  cxLblActive.Visible := False;
end;

procedure TFrm_JON012.FormDestroy(Sender: TObject);
begin
  Frm_JON012 := Nil;
end;

procedure TFrm_JON012.FormHide(Sender: TObject);
begin
  SetDebugeWrite('Frm_JON012.FormHide');
  try
    Frm_Main.JON012MNG[Self.Tag].Use := False;
    if Assigned(Frm_JON07) then Frm_JON07.Hide;    // 상세이력
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((ssAlt in Shift) and (Key = VK_F4)) then
  begin
    Key := 0;
    btnClose.Click;
  end;
end;

procedure TFrm_JON012.FormResize(Sender: TObject);
begin
  SetDebugeWrite('Frm_JON012.FormResize');
	try
		if not FResize then
		begin
			if ( sActivePage = 0 ) Or ( GB_JON_FIXEDPIN ) then
			begin
				GS_EnvFile.WriteString('UserHisForm', 'Width', IntToStr(Self.Width));
				GS_EnvFile.WriteString('UserHisForm', 'Height', IntToStr(Self.Height));
			end	else
      if sActivePage = 1 then
			begin
				if Self.Width < 720 then
					GS_EnvFile.WriteString('UserHisForm_WK', 'Width_WK', '720')
				else
					GS_EnvFile.WriteString('UserHisForm_WK', 'Width_WK', IntToStr(Self.Width));

				if Self.Height < 410 then
					GS_EnvFile.WriteString('UserHisForm_WK', 'Height_WK', '410')
				else
					GS_EnvFile.WriteString('UserHisForm_WK', 'Height_WK', IntToStr(Self.Height));
			end;
		end;
		FResize := False;

//		if (Self.Width > 863) and (cxPageControl1.ActivePageIndex = 0) then lbl8.Visible := True else lbl8.Visible := False;
	except on E: Exception do
    Assert(False, E.Message);
	end;
end;

procedure TFrm_JON012.FormShow(Sender: TObject);
Var bLeft : Boolean;
		i, iTop, iLeft, iTmp : Integer;
		sTmp : string;
		slShow, slHide : TStringList;
begin
	SetDebugeWrite('Frm_JON012.FormShow');

//  if Not GB_DARKMODE then
//    Memo_WorkerInfo.Style.LookAndFeel.SkinName := sdxDefaultSkinName;

  for i := 0 to pred(cxStyleRepository1.Count) do
  begin
    TcxStyle(cxStyleRepository1.Items[i]).Font.Name := GS_FONTNAME;
  end;

  try
    // 2011.01.05 팝업(slip셋팅)과 클릭(slip초기화)의 동시발생을 막기위해 추가
    Pop_Yn := False;
    Click_Yn := False;
    cxstyleToday.Color := StringToColor(GS_EnvFile.ReadString('UserHisColor', 'ColorToday', '$00FE9EA0'));
    cxstyleUpdate.Color := StringToColor(GS_EnvFile.ReadString('UserHisColor', 'ColorUpdate', '$00FFFF21'));
    cxstyleMulti.Color := StringToColor(GS_EnvFile.ReadString('UserHisColor', 'ColorMulti', '$00FF30FF'));
    cxstyleTelSe.Color := StringToColor(GS_EnvFile.ReadString('UserHisColor', 'ColorTelSe', '$0030FFFF'));

    lblColorToday.Style.Color := cxstyleToday.Color;
    lblColorUpdate.Style.Color := cxstyleUpdate.Color;
    lblColorMulti.Style.Color := cxstyleMulti.Color;
    lblColorTelSe.Style.Color := cxstyleTelSe.Color;

    if (Frm_Main.Frm_JON01N[Self.Tag].sCust_Gubun = '2') Or
       (Frm_Main.Frm_JON01N[Self.Tag].sCust_Gubun = '' ) Or
       ( iOpen_Gubun = 1 ) Or ( GB_JON_FIXEDPIN ) then
    begin
      FResize := True;
      Self.Width  := GS_EnvFile.ReadInteger('UserHisForm', 'Width', 562);
      FResize := True;
      Self.Height := GS_EnvFile.ReadInteger('UserHisForm', 'Height', 277);
    end else
    begin
      FResize := True;
      Self.Width  := GS_EnvFile.ReadInteger('UserHisForm_WK', 'Width_WK', 720);
      FResize := True;
      Self.Height := GS_EnvFile.ReadInteger('UserHisForm_WK', 'Height_WK', 440);
    end;

    if ( iOpen_Gubun = 0 ) And ( Not GS_JON012_POSFIX ) then
    begin
      if Frm_Main.JON01MNG[Self.Tag].Dock then
      begin
        Self.Left := Frm_Jon00.Left - (Self.Width + 1);
        Self.Top  := Frm_Jon00.Top + ( (Frm_Jon00.Height) - Self.Height);
      end else
      begin
        Self.Left := Frm_Main.Frm_JON01N[Self.Tag].Left - (Self.Width + 1);
        Self.Top  := Frm_Main.Frm_JON01N[Self.Tag].Top + ( (Frm_Main.Frm_JON01N[Self.Tag].Height) - Self.Height);
      end;
    end else
    if ( iOpen_Gubun = 1 ) And ( Not GS_JON012_POSFIX ) then
    begin
      Self.Left := Frm_CUT011.Left - (Self.Width + 1);
      Self.Top  := Frm_CUT011.Top;
    end else
    begin
      if GB_JON_FIXEDPIN then
      begin
        bLeft := GS_EnvFile.ReadBool('AcceptWin', 'Jon012Pos' , True);
				iTop  := GS_EnvFile.ReadInteger('AcceptWin', 'Jon012Top', 200);
        iLeft := GS_EnvFile.ReadInteger('AcceptWin', 'Jon012Left', 0);
        if bLeft then
        begin
          if Frm_Main.JON01MNG[Self.Tag].Dock then
          begin
            Self.Left := Frm_JON00.Left - (Self.Width + 1);
            Self.Top  := Frm_JON00.Top + iTop;
          end else
          begin
            Self.Left := Frm_Main.Frm_JON01N[Self.Tag].Left - (Self.Width + 1);
            Self.Top  := Frm_Main.Frm_JON01N[Self.Tag].Top + iTop;
          end;
        end else
        begin
          if Frm_Main.JON01MNG[Self.Tag].Dock then
          begin
            Self.Left := Frm_JON00.Left + iLeft;
            Self.Top  := Frm_JON00.Top + (Frm_JON00.Height + 1);
          end else
          begin
            Self.Left := Frm_Main.Frm_JON01N[Self.Tag].Left + iLeft;
            Self.Top  := Frm_Main.Frm_JON01N[Self.Tag].Top + (Frm_Main.Frm_JON01N[Self.Tag].Height + 1);
          end;
        end;
      end else
      begin
        Self.Left := gi012Left;
        Self.Top  := gi012Top;
      end;
    end;

    if GT_OCX <> '' then
    begin
      BtnWCall1.Visible := True;
      BtnWCall2.Visible := True;
    end else
    begin
      BtnWCall1.Visible := False;
      BtnWCall2.Visible := False;
    end;

    if (TCK_USER_PER.WOR_MngModify = '1') then
    begin
      btn_wkModify.Enabled := True;
    end else
    begin
      btn_wkModify.Enabled := False;
		end;

		slShow := TStringList.Create;
		slHide := TStringList.Create;
		Try
			cxChkTitle.Tag := 99;
			GS_EnvFile.ReadSection('JON012ListShow', slShow);
			GS_EnvFile.ReadSection('JON012ListHide', slHide);
			cxGVeOrderList.BeginUpdate;
			for i := 0 to cxChkTitle.Properties.Items.Count - 1 do
			begin
				sTmp := cxChkTitle.Properties.Items[i].Description;
				iTmp := cxGVeOrderList.GetColumnByFieldName(sTmp).Index;
				if slHide.IndexOf(sTmp) < 0 then
				begin
					cxChkTitle.SetItemState(i, cbsChecked);
					cxGVeOrderList.columns[iTmp].Visible := True;
				end else
				begin
					cxChkTitle.SetItemState(i, cbsUnchecked);
					cxGVeOrderList.columns[iTmp].Visible := False;
				end;
			end;
			cxGVeOrderList.EndUpdate;
			cxChkTitle.Tag := 0;
		finally
			slShow.Free; slHide.Free;
		end;
		proc_Change_Title;
		
		chk_St2.Tag := 99;
		chk_St2.Checked := GS_JON012_ST2;
		chk_St1.Checked := GS_JON012_ST1;
		chk_St4.Checked := GS_JON012_ST4;
		chk_St8.Checked := GS_JON012_ST8;
		chk_St2.Tag := 0;
		
		SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);

//    if GS_JON01_GROUPMOVE then TmrChkTag.Enabled := True;
  	TmrChkTag.Enabled := True;   // 자석은 무조건하고 옵션에 따라 이동( 열린상태에서 자석 했을경우 바로 적용하기 위해);
  except on e: exception do
    begin
      Log('FormShow Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'FormShow Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON012.N2Click(Sender: TObject);
const
  ciWid: array[0..48] of Integer =
    ( 45,  91,  58,   82,  42,  72,  74,  57,  64,  88,
      64,  72,  93,  112,  64,   0,   0,   0,   0,   0,
       0,   0,   0,    0,   0,   0,   0,   0,   0,   0,
       0,   0,  100,   0,   0,  64,  64,   0,   0,   0,
       0,  60,  100,  64,   0,  64,  64,  64,   0);
var
  i, iRow : Integer;
  sTemp : string;
begin
  SetDebugeWrite('Frm_JON012.N2Click');
  try
    GS_EnvFile.EraseSection('UserHis');
    for i := 0 to lbTitle.Items.Count - 1 do
    begin
      sTemp := lbTitle.Items.Strings[i];
      iRow := cxGVeOrderList.GetColumnByFieldName(sTemp).Index;
      cxGVeOrderList.Columns[iRow].Index := i;
      cxGVeOrderList.Columns[iRow].Width := ciwid[i];
    end;
		proc_Change_Title;
  except
  end;
end;

procedure TFrm_JON012.N31Click(Sender: TObject);
var
	ls_TxLoad, ls_TxQry, rv_str, sCustTel, sBrNo, sQueryTemp : string;
	ls_rxxml: wideString;
	ErrCode: integer;
	slReceive: TStringList;
	AView: TcxGridDBTableView;
begin
  SetDebugeWrite('Frm_JON012.N31Click');
  try
   	AView := GetCurrentView;
    if AView.DataController.FocusedRecordIndex = -1 then
      Exit;
    if not func_check_CallCenterYN_WK then
    begin
      GMessagebox('타사콜입니다.' + #13#10 + '상태변경을 할 수 없습니다.', CDMSE);
      Exit;
    end;

    with Frm_Main.Frm_JON03[Jon03Tag] do
    begin
      if grpSetBrch_select.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetBrch_select.BringToFront;
        Exit;
      end;
      if ( Assigned(Frm_JON15) ) And ( Frm_JON15 <> Nil ) then
      begin
        if frm_JON15.Visible then
        begin
          GMessagebox('오더취소창을 닫고 작업해 주세요', CDMSE);
         { Frm_JON15.rg_Cancelchoice.SetFocus;
          if Trim(A01_HIS_POPUP.Slip)<>'' then
          begin
            Frm_JON15.gSlip := A01_HIS_POPUP.Slip;
            Frm_JON15.gStatus := A01_HIS_POPUP.Status;
          end;      }
          Frm_JON15.Show;
          Exit;
        end;
      end;
      if grpSetPanelty.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetPanelty.BringToFront;
        RadioGroup1.SetFocus;
        Exit;
      end;
      if grpSetcancel_charge.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetcancel_charge.BringToFront;
        ed_cancel_charge.SetFocus;
        Exit;
      end;
    end;

    if A01_HIS_POPUP.WkTel = '' then
      Exit;

    sBrNo := Frm_Main.Frm_JON01N[Self.Tag].Proc_BRNOSearch;
    sCustTel := GetCustTel;
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_ACCEPT_SMS, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [A01_HIS_POPUP.WkTel, sBrNo]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'SMSP0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          Frm_Main.Frm_JON03[Jon03Tag].proc_recieve(ls_rxxml);
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

procedure TFrm_JON012.N3Click(Sender: TObject);
var
	ls_TxLoad, ls_TxQry, rv_str, sCustTel, sBrNo, sQueryTemp : String;
	ls_rxxml: wideString;
	ErrCode: integer;
	slReceive: TStringList;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
begin
  SetDebugeWrite('Frm_JON012.N3Click');
  try
    if cxGVeOrderList.DataController.FocusedRecordIndex = -1 then
      Exit;
    if not func_check_CallCenterYN(cxGVeOrderList) then
    begin
      GMessagebox('타사콜입니다.' + #13#10 + '상태변경을 할 수 없습니다.', CDMSE);
      Exit;
    end;

    with Frm_Main.Frm_JON03[Jon03Tag] do
    begin
      if grpSetBrch_select.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetBrch_select.BringToFront;
        Exit;
      end;
      if ( Assigned(Frm_JON15) ) And ( Frm_JON15 <> Nil ) then
      begin
        if frm_JON15.Visible then
        begin
          GMessagebox('오더취소창을 닫고 작업해 주세요', CDMSE);
      {    Frm_JON15.rg_Cancelchoice.SetFocus;
          if Trim(A01_HIS_POPUP.Slip)<>'' then
          begin
            Frm_JON15.gSlip := A01_HIS_POPUP.Slip;
            Frm_JON15.gStatus := A01_HIS_POPUP.Status;
          end;   }
          Frm_JON15.Show;
          Exit;
        end;
      end;
      if grpSetPanelty.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetPanelty.BringToFront;
        RadioGroup1.SetFocus;
        Exit;
      end;
      if grpSetcancel_charge.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetcancel_charge.BringToFront;
        ed_cancel_charge.SetFocus;
        Exit;
      end;
    end;

    sBrNo := Frm_Main.Frm_JON01N[Self.Tag].Proc_BRNOSearch;
  except on E: Exception do
    Assert(False, E.Message);
  end;

  try
    ls_TxLoad := GTx_UnitXmlLoad('C015.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'HINT0003', [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '7', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', A01_HIS_POPUP.Slip, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'Param2String', '0', [rfReplaceAll]);   // 독촉문자는 당일오더만 가능
		ls_TxLoad := StringReplace(ls_TxLoad, 'Conf_slipString', A01_HIS_POPUP.Slip, [rfReplaceAll]); //접수번호추가

    if (GS_PRJ_AREA = 'O') and (Pos('㉹',A01_HIS_POPUP.WkName) = 1) and (GT_USERIF.WKVPhone = 'y') then
    begin
       Frm_Main.Frm_JON03[Jon03Tag].gbWkGubun := True;
//       ls_TxLoad := StringReplace(ls_TxLoad, 'VPhoneString', 'y', [rfReplaceAll])
    end else
    begin
       Frm_Main.Frm_JON03[Jon03Tag].gbWkGubun := False;
    end;
    ls_TxLoad := StringReplace(ls_TxLoad, 'VPhoneString', '', [rfReplaceAll]);

		slReceive := TStringList.Create;
    try
      if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;

          xdom := ComsDomDocument.Create;
          try
            if not xdom.loadXML(ls_rxxml) then Exit;
            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Accept');

						sCustTel := lst_Result.item[0].attributes.getNamedItem('Info1').Text;
						Frm_Main.Frm_JON03[Jon03Tag].gsWkHp := lst_Result.item[0].attributes.getNamedItem('Info2').Text;
          finally
            xdom := nil;
          end;
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;

    sCustTel := StringReplace(sCustTel, '-', '', [rfReplaceAll]);
    Frm_Main.Frm_JON03[Jon03Tag].gsCustTel := sCustTel;

    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_ACCEPT_SMS, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [Frm_Main.Frm_JON03[Jon03Tag].gsWkHp, sBrNo]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'SMSP0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          Frm_Main.Frm_JON03[Jon03Tag].proc_recieve(ls_rxxml);
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

procedure TFrm_JON012.N41Click(Sender: TObject);
var
  sKeyNum, sCustTel: string;
	AView: TcxGridDBTableView;
begin
  SetDebugeWrite('Frm_JON012.N41Click');
  try
   	AView := GetCurrentView;
    if AView.DataController.FocusedRecordIndex < 0 then Exit;

    sKeyNum := Frm_Main.Frm_JON01N[Self.Tag].Proc_MainKeyNumberSearch;
    sKeyNum := StringReplace(sKeyNum, '-', '', [rfReplaceAll]);

    if Frm_Main.Frm_JON01N[Self.Tag].locWkSabun = '' then
    begin
      sCustTel := Frm_Main.Frm_JON01N[Self.Tag].cxtCallTelNum.Text;
    end else
    begin
      sCustTel := GetCustTel;
    end;
    sCustTel := StringReplace(sCustTel, '-', '', [rfReplaceAll]);

    if pos('*', sCustTel) > 0 then
    begin
      GMessagebox('타사콜이어서 문자를 보낼 수 없습니다.', CDMSE);
      Exit;
    end;

    if StrToIntDef(copy(sCustTel, 1, 2), 0) <> 1 then
    begin
      GMessagebox('고객번호가 핸드폰이 아닙니다.' + #13#10 +
        '문자메세지를 보낼수 없습니다.',
        CDMSE);
      Exit;
    end;

    try
      if Not Assigned(Frm_SMS01) then Frm_SMS01 := TFrm_SMS01.Create(Nil);
      Frm_SMS01.pSMS01Dock.bUnDock := pJON012Dock.bUnDock;
      Frm_SMS01.pSMS01Dock.HdNo    := pJON012Dock.HdNo;
      Frm_SMS01.pSMS01Dock.BrNo    := pJON012Dock.BrNo;
      Frm_SMS01.pSMS01Dock.BrName  := pJON012Dock.BrName;
      Frm_SMS01.pSMS01Dock.Gubun   := pJON012Dock.Gubun;
      Frm_SMS01.pSMS01Dock.Idx     := pJON012Dock.Idx;

      Frm_SMS01.mm_message.Text := '';
      sKeyNum := StringReplace(sKeyNum, '-', '', [rfReplaceAll]);
      Frm_SMS01.ed_send.Text := sKeyNum;
      Frm_SMS01.ls_sms.Items.Clear;
      Frm_SMS01.ls_sms.Items.Add(sCustTel);
      Frm_SMS01.Proc_Init;
      Frm_SMS01.sSendKind := '';
      Frm_SMS01.rdo_SMS.Visible := False;
      Frm_SMS01.rdo_PUSH.Visible := False;
    	Frm_SMS01.PageControl1.ActivePageIndex := 1;
      Frm_SMS01.Show;
    finally
      if Frm_Main.Frm_JON03[Jon03Tag].btnAutoRe.Tag = 1 then
      begin
        Frm_Main.Frm_JON03[Jon03Tag].AAutoSearch_Stop := False;
        Frm_Main.Frm_JON03[Jon03Tag].tmr_dis.Enabled := True;
        Frm_Main.Frm_JON03[Jon03Tag].PnlAuto.Visible := True;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.N4Click(Sender: TObject);
var
  sKeyNum, sCustTel : String;
begin
  SetDebugeWrite('Frm_JON012.N4Click');
	if cxGVeOrderList.DataController.FocusedRecordIndex < 0 then Exit;

  sKeyNum := Frm_Main.Frm_JON01N[Self.Tag].Proc_MainKeyNumberSearch;
  sKeyNum := StringReplace(sKeyNum, '-', '', [rfReplaceAll]);

  if Frm_Main.Frm_JON01N[Self.Tag].locWkSabun = '' then
  begin
    sCustTel := Frm_Main.Frm_JON01N[Self.Tag].cxtCallTelNum.Text;
  end else
  begin
    sCustTel := GetCustTel;
  end;
  sCustTel := StringReplace(sCustTel, '-', '', [rfReplaceAll]);

  if pos('*', sCustTel) > 0 then
  begin
    GMessagebox('타사콜이어서 문자를 보낼 수 없습니다.', CDMSE);
    Exit;
  end;

  if StrToIntDef(copy(sCustTel, 1, 2), 0) <> 1 then
  begin
    GMessagebox('고객번호가 핸드폰이 아닙니다.' + #13#10 +
                '문자메세지를 보낼수 없습니다.',  CDMSE);
    Exit;
  end;

  try
    if Not Assigned(Frm_SMS01) then Frm_SMS01 := TFrm_SMS01.Create(Nil);
    Frm_SMS01.pSMS01Dock.bUnDock := pJON012Dock.bUnDock;
    Frm_SMS01.pSMS01Dock.HdNo    := pJON012Dock.HdNo;
    Frm_SMS01.pSMS01Dock.BrNo    := pJON012Dock.BrNo;
    Frm_SMS01.pSMS01Dock.BrName  := pJON012Dock.BrName;
    Frm_SMS01.pSMS01Dock.Gubun   := pJON012Dock.Gubun;
    Frm_SMS01.pSMS01Dock.Idx     := pJON012Dock.Idx;

    Frm_SMS01.mm_message.Text := '';
    sKeyNum := StringReplace(sKeyNum, '-', '', [rfReplaceAll]);
    Frm_SMS01.ed_send.Text := sKeyNum;
    Frm_SMS01.ls_sms.Items.Clear;
    Frm_SMS01.ls_sms.Items.Add(sCustTel);
    Frm_SMS01.Proc_Init;
    Frm_SMS01.sMemo := '[고객문자전송]';
    Frm_SMS01.sConfSlip := A01_HIS_POPUP.Slip;
		Frm_SMS01.sSendKind := '';
		Frm_SMS01.rdo_SMS.Visible := False;
		Frm_SMS01.rdo_PUSH.Visible := False;
		Frm_SMS01.PageControl1.ActivePageIndex := 1;
		Frm_SMS01.Show;
  finally
    if Frm_Main.Frm_JON03[Jon03Tag].btnAutoRe.Tag = 1 then
    begin
      Frm_Main.Frm_JON03[Jon03Tag].AAutoSearch_Stop := False;
      Frm_Main.Frm_JON03[Jon03Tag].tmr_dis.Enabled := True;
      Frm_Main.Frm_JON03[Jon03Tag].PnlAuto.Visible := True;
    end;
  end;
end;

procedure TFrm_JON012.N51Click(Sender: TObject);
var	AView: TcxGridDBTableView;
begin
  SetDebugeWrite('Frm_JON012.N51Click');
 	AView := GetCurrentView;
	// 당일 오더 정보를 조회 한다.
	// 접수현황에 선택한 고객 및 기사의 해당 오더를 조회 해 준다.
	if AView.DataController.FocusedRecordIndex < 0 then Exit;
	if Proc_CustWorkerOrderSearch_WK(AView) = True then tmJonClose.Enabled := True;
	// 고객이용내역 및 접수창 관련 폼을 모두 닫는다.
end;

procedure TFrm_JON012.N5Click(Sender: TObject);
begin
  SetDebugeWrite('Frm_JON012.N5Click');
	// 당일 오더 정보를 조회 한다.
	// 접수현황에 선택한 고객 및 기사의 해당 오더를 조회 해 준다.
	if cxGVeOrderList.DataController.FocusedRecordIndex < 0 then Exit;
	if Proc_CustWorkerOrderSearch = True then tmJonClose.Enabled := True;
	// 고객이용내역 및 접수창 관련 폼을 모두 닫는다.
end;

procedure TFrm_JON012.N6Click(Sender: TObject);
begin
  SetDebugeWrite('Frm_JON012.N6Click');
	if cxGVeOrderList.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
  end;

	proc_excel(0);
end;

procedure TFrm_JON012.N7Click(Sender: TObject);
var
  iRow, iWkSabun, iTmp, iLen: integer;
  sWkSabun: string;
begin
  try
    if Not Assigned(Frm_CUT014) Or (Frm_CUT014 = Nil) then Frm_CUT014 := TFrm_CUT014.Create(Nil);

    iRow := cxGVeOrderList.DataController.FocusedRecordIndex;
  //  iKeynum := cxGVeOrderList.GetColumnByFieldName('대표번호').Index;
  //  sKeynum := CallToStr(cxGVeOrderList.DataController.Values[iRow, iKeynum]);

    iWkSabun := cxGVeOrderList.GetColumnByFieldName('기사').Index;
    iTmp := LastDelimiter(')', cxGVeOrderList.DataController.Values[iRow, iWkSabun]);
    iLen := Length( cxGVeOrderList.DataController.Values[iRow, iWkSabun] );
    sWkSabun := Copy(cxGVeOrderList.DataController.Values[iRow, iWkSabun], iTmp + 1, iLen - iTmp);

    Frm_CUT014.proc_Init;

    if iOpen_Gubun = 0 then  //접수창에서 과거이용내역 띄움
    begin
//      Frm_CUT014.ACbCuGb := IntToStr(Frm_Main.Frm_JON01N[Self.Tag].CbCuGb.ItemIndex);
      if TPopupMenu(Sender).Tag = 0 then
      begin
        Frm_CUT014.ACbCuGb := '0';
        Frm_CUT014.ACuseq  := Frm_Main.Frm_JON01N[Self.Tag].lcsCu_seq;          //고객코드
      end else
      if TPopupMenu(Sender).Tag = 1 then
      begin
        Frm_CUT014.ACbCuGb := '2';
        Frm_CUT014.ACuseq  := Frm_Main.Frm_JON01N[Self.Tag].cxtCuBubin.Hint     //법인코드
      end;
			end else
    if iOpen_Gubun = 1 then //고객정보창에서 과거이용내역 띄움
    begin
      Frm_CUT014.ACuseq  := gCUT011CuSeq;
      Frm_CUT014.ACbCuGb  := IntToStr(gCUT011CuGb);
    end;
    Frm_CUT014.AWkSabun:= sWkSabun;
    Frm_CUT014.AMemo   := '';

		Frm_CUT014.edtWkSabun.text := StringReplace(cxGVeOrderList.DataController.Values[iRow, iWkSabun], ')'+sWkSabun, '', [rfReplaceAll]);
    Frm_CUT014.proc_BlockWKSearch('JON012', 1);
		Frm_CUT014.Show;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.Panel12Resize(Sender: TObject);
Var iW : Integer;
begin
  try
    iW := Trunc( ( Pnl_DestList.Width - ( btnDestSearch.Width + 40 ) ) / 4 );

    edtStar.Left := 10;
    edtStar.Width := iW;
    lblStarFlag.Left := edtStar.Left + 20;

    edtDest.Left := edtStar.Left + edtStar.Width + 5;
    edtDest.Width := iW;
    lblDestFlag.Left := edtDest.Left + 20;

    edtBigo.Left := edtDest.Left + edtDest.Width + 5;
    edtBigo.Width := iW;
    lblBigoFlag.Left := edtBigo.Left + 20;

    edtMemo.Left := edtBigo.Left + edtBigo.Width + 5;
    edtMemo.Width := iW;
    lblMemoFlag.Left := edtMemo.Left + 20;
  except
  end;
end;

procedure TFrm_JON012.tmJonCloseTimer(Sender: TObject);
begin
  try
    SetDebugeWrite('Frm_JON012.tmJonCloseTimer');
    tmJonClose.Enabled := False;
    bChkTime := False;
    TmrChkTag.Tag := 100;
    if GS_JON01_GROUPMOVE then MagneticWnd.RemoveWindow(Self.Handle);

    Self.Hide; // 고객이용내역 화면을 닫는다.
    GI_JON_WKCALLPOPUP := -1; //LYB 20160222
    Frm_Main.Frm_JON01N[Self.Tag].btnCmdExit.Description := 'T';
    Frm_Main.Frm_JON01N[Self.Tag].btnCmdExit.Click
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.TmrChkTagTimer(Sender: TObject);
begin
	TmrChkTag.Enabled := False;

  if Not Self.Showing then Exit;

  if bChkTime then
  begin
//    if (Not gbJON012Click[Self.Tag]) And (GS_JON012_LASTACTIVE <> Self.Tag) then
//    begin
//      BringToFront;
//      GS_JON012_LASTACTIVE := Self.Tag;
//    end;

    try
      if ( Self.Tag <> TmrChkTag.Tag ) And ( bChkTime )  then
      begin
        if Frm_Main.JON01MNG[Self.Tag].Dock then
        begin
          if Assigned(MagneticWnd) then
          begin
    //        if TmrChkTag.Tag < 21 then
    //          MagneticWnd.RemoveWindow(Frm_JON00.Handle);
            MagneticWnd.RemoveWindow(Self.Handle);
          end;

          MagneticWnd.AddWindow(Frm_JON00.Handle, 0, MagneticWndProc);
    //      MagneticWndProc := Nil;
          TmrChkTag.Tag := Self.Tag;
    //
          if not assigned(MagneticWndProc) then
            if Assigned(MagneticWnd) then
            begin
               MagneticWnd.AddWindow(Self.Handle, Frm_JON00.Handle, MagneticWndProc);
            end;
        end else
        begin
          if Assigned(MagneticWnd) then
          begin
//            if TmrChkTag.Tag < 21 then
//              MagneticWnd.RemoveWindow(Frm_Main.Frm_JON01N[TmrChkTag.Tag].Handle);
            MagneticWnd.RemoveWindow(Self.Handle);
          end;

          MagneticWnd.AddWindow(Frm_Main.Frm_JON01N[Self.Tag].Handle, 0, MagneticWndProc);
//          MagneticWndProc := Nil;
          TmrChkTag.Tag := Self.Tag;

          if not assigned(MagneticWndProc) then
            if Assigned(MagneticWnd) then
            begin
              MagneticWnd.AddWindow(Self.Handle, Frm_Main.Frm_JON01N[Self.Tag].Handle, MagneticWndProc);
            end;
        end;
      end;
    except
    end;
  end;

  TmrChkTag.Enabled := True;
end;

procedure TFrm_JON012.tmr_hintTimer(Sender: TObject);
begin
  tmr_hint.Enabled := False;
  try
    if (OldHintView012.sValue <> HintView012.sValue) or
       (OldHintView012.ARow   <> HintView012.ARow  ) or
       (OldHintView012.ACol   <> HintView012.ACol  ) then
    begin
      OldHintView012.sValue := HintView012.sValue;
      OldHintView012.ARow := HintView012.ARow;
      OldHintView012.ACol := HintView012.ACol;

      PnlHelp.Visible := False;  // 20120719 LYB 수정
			proc_Grid_Hint(HintView012.sValue, HintView012.ACol, HintView012.ARow);
    end;
  except
  end;
end;

procedure TFrm_JON012.LabelShowHint(X, Y : Integer; sHint : string);  // 20120719 LYB 수정
begin
  try
    if GT_HINT_SHOW then
    begin
      Lbl_Hint.Caption := sHint;
      PnlHelp.Width  := Lbl_Hint.Width + 10;

      if Lbl_Hint.Height > 200 then
      begin
        Lbl_Hint.Height := 200;
        PnlHelp.Height := Lbl_Hint.Height + 10;
      end else
        PnlHelp.Height := Lbl_Hint.Height + 10;

      // 20130627  화면 좌측 끝 부분 마우스 위치 시에 넘어가는거 방지 LYB
      if ctxGrid.Width > ( X + PnlHelp.Width ) then PnlHelp.Left := X
                                               else PnlHelp.Left := ( ( ctxGrid.Width ) - PnlHelp.Width ) - 10;

      // 20140724  화면 하단 끝 부분 마우스 위치 시에 넘어가는거 방지 LYB
      if ctxGrid.Height > ( Y + PnlHelp.Height ) then PnlHelp.Top := Y + 110
                                                 else PnlHelp.Top := ( ( ctxGrid.Height + 110 ) - PnlHelp.Height  ) - 10;

      PnlHelp.Top  := Y + 9;     // 20120801 LYB 수정
      PnlHelp.Visible := True;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

// 접수현황 그리드 선택( sValue : 선택셀 값, Acol, ARow : 콜, Row)
procedure TFrm_JON012.proc_Grid_Hint(sValue: string; ACol, ARow: Integer);
var
  sTemp : string;
  iWkName, iWkSabun : Integer;
  mPoint, P : TPoint;
begin
  SetDebugeWrite('Frm_JON012.proc_Grid_Hint');
  try
    if ( sValue <> '' ) and ( sValue <> '()' ) then
    begin
      mPoint.X  := Mouse.CursorPos.X;
      mPoint.Y  := Mouse.CursorPos.Y;

      if ( ( mPoint.X > Self.Left ) And ( mPoint.X < (Self.Left + Self.Width ) ) ) And
         ( ( mPoint.Y > Self.Top  ) And ( mPoint.Y < (Self.Top  + Self.Height) ) ) then  // 현재 마우스위치가 그리드안에 있을경우
      begin
        iWkName  := cxGVeOrderList.GetColumnByFieldName('기사').Index;
        iWkSabun := cxGVeOrderList.GetColumnByFieldName('기사사번').Index;

        P := ctxGrid.ScreenToClient(Mouse.CursorPos);

        if ( ACol = iWkName )  then
        begin
          if sValue <> '' then
          begin
            sTemp := func_Grid_hint(iWkSabun, ARow);
            sTemp := sTemp + #13#10#13#10 + func_Grid_hint(iWkName, ARow);
            LabelShowHint(P.X, P.Y, sValue + #13#10 + sTemp);
          end
          else
            LabelShowHint(P.X, P.Y, sTemp);
        end else
        begin
          LabelShowHint(P.X, P.Y, sValue);
        end;
      end;
    end;
  except
  end;
end;

function TFrm_JON012.func_Grid_hint(ACol, ARow: Integer): string;
var
	ls_TxQry, ls_TxLoad, rv_str, swk_head, swk_br, swk_cen, sWhere, sWkSabun, sWkName, sQueryTemp, sAcceptTime, sBizDate, sSlip : string;
	li_sabun, li_wk_head, li_wk_br, li_wk_cen, iTmp, iLen, iAcceptTime, iSlip : Integer;
  ls_rxxml: WideString;
  iWkName, iWkSabun: Integer;
  slReceive: TStringList;
  ErrCode: Integer;
begin
  SetDebugeWrite('Frm_JON012.func_Grid_hint');
  if ARow >= cxGVeOrderList.DataController.RecordCount then  Exit;

  try
		iWkName  := cxGVeOrderList.GetColumnByFieldName('기사').Index;
    iWkSabun := cxGVeOrderList.GetColumnByFieldName('기사사번').Index;

    if ACol in [iWkName, iWkSabun] then
    begin
      try
        li_sabun      := cxGVeOrderList.GetColumnByFieldName('기사').Index;
        li_wk_head    := cxGVeOrderList.GetColumnByFieldName('기사본사코드').Index;
        li_wk_br      := cxGVeOrderList.GetColumnByFieldName('기사지사코드').Index;
        li_wk_cen     := cxGVeOrderList.GetColumnByFieldName('기사콜센터').Index;
				iAcceptTime   := cxGVeOrderList.GetColumnByFieldName('접수일시').Index;
				iSlip   := cxGVeOrderList.GetColumnByFieldName('접수번호').Index;

        iTmp := LastDelimiter(')', cxGVeOrderList.DataController.Values[Arow, li_sabun]);
        iLen := Length( cxGVeOrderList.DataController.Values[Arow, li_sabun] );

        sWkSabun      := Copy(cxGVeOrderList.DataController.Values[Arow, li_sabun], iTmp + 1, iLen - iTmp);
        sWkName       := cxGVeOrderList.DataController.Values[Arow, li_sabun];
        swk_head      := cxGVeOrderList.DataController.Values[Arow, li_wk_head];
        swk_br        := cxGVeOrderList.DataController.Values[Arow, li_wk_br];
        swk_cen       := cxGVeOrderList.DataController.Values[Arow, li_wk_cen];
				sAcceptTime  := cxGVeOrderList.DataController.Values[Arow, iAcceptTime];
				sAcceptTime  := RemoveDatetimeSeparator(sAcceptTime);
				sAcceptTime  := StringReplace(sAcceptTime, '/', '', [rfReplaceAll]);
				
				sSlip  := cxGVeOrderList.DataController.Values[Arow, iSlip];
			except on E: Exception do
				Assert(False, E.Message);
      end;

      if ACol = iWkName then
      begin
				if sWkSabun = '기사NO' then exit;
				if sWkSabun = 'M00001' then exit;
        if ((GT_USERIF.LV = '10') and (GT_USERIF.CT = swk_cen)) or ((GT_USERIF.LV = '40')
          and (GT_USERIF.BR = swk_br)) or ((GT_USERIF.LV = '60') and (GT_USERIF.HD = swk_head)) then
        begin
          sWhere := '';
        end else
        begin
          if GT_USERIF.LV = '10' then
            sWhere := ' AND CALLCENTER = ''' + GT_USERIF.CT + ''' '
          else
            if GT_USERIF.LV = '40' then
            sWhere := ' AND CONF_BRCH = ''' + GT_USERIF.BR + ''' '
          else
            if GT_USERIF.LV = '60' then
            begin
              if Not pJON012Dock.bUnDock then pJON012Dock.HDNO := GT_SEL_BRNO.HDNO;

              if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
                sWhere := ' AND CONF_HEAD = ''' + pJON012Dock.HDNO + ''' '
              else
                sWhere := ' AND CONF_HEAD = ''' + GT_USERIF.HD + ''' ';
            end;
        end;

        ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
        fGet_BlowFish_Query(GSQ_WK_LIST_TODAY, sQueryTemp);
        ls_TxQry := Format(sQueryTemp, [sWkSabun, swhere]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WKLS0001', [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

        slReceive := TStringList.Create;
        try
          if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
          begin
            rv_str := slReceive[0];
            if rv_str <> '' then
            begin
              ls_rxxml := rv_str;
              Application.ProcessMessages;
              Result := Frm_Main.Frm_JON03[Jon03Tag].func_recieve_hint(ls_rxxml);
            end;
          end;
        finally
          FreeAndNil(slReceive);
          Frm_Flash.Hide;
        end;
      end else
      begin
				ls_TxLoad := GTx_UnitXmlLoad('C015.XML');
        ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
        if Acol = iWkSabun then
        begin
					ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'HINT0003', [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '3', [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', sWkSabun, [rfReplaceAll]);

          sBizDate := StartDateTime('yyyymmddhhmmss'); // 영업일자 얻기..

          if sAcceptTime >= sBizDate then
            ls_TxLoad := StringReplace(ls_TxLoad, 'Param2String', '0', [rfReplaceAll])   // 당일오더
          else
            ls_TxLoad := StringReplace(ls_TxLoad, 'Param2String', '', [rfReplaceAll]);  // 과거오더

					if (GS_PRJ_AREA = 'O') and (Pos('㉹',sWkName) = 1) and (GT_USERIF.WKVPhone = 'y') then
             ls_TxLoad := StringReplace(ls_TxLoad, 'VPhoneString', 'y', [rfReplaceAll])
					else
						 ls_TxLoad := StringReplace(ls_TxLoad, 'VPhoneString', '', [rfReplaceAll])
				end;
				ls_TxLoad := StringReplace(ls_TxLoad, 'Conf_slipString', sSlip, [rfReplaceAll]); //접수번호추가

				slReceive := TStringList.Create;
        try
          if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
          begin
            rv_str := slReceive[0];
            if rv_str <> '' then
            begin
              ls_rxxml := rv_str;
              Application.ProcessMessages;
              Result := Frm_Main.Frm_JON03[Jon03Tag].func_recieve_hint(ls_rxxml);
            end;
          end;
        finally
          Frm_Flash.Hide;
          FreeAndNil(slReceive);
        end;
      end;
    end else
    begin
      Result := cxGVeOrderList.DataController.Values[ARow, ACol];
    end;
  except on E: Exception do
    Assert(False, E.Message + ' / ' + ls_TxLoad);
  end;
end;

// 고객과거이용내역[cdms_a01]을 검색 한다..
procedure TFrm_JON012.Proc_CustOldSelect;
var
	ls_TxLoad, sCustTell, sKeyNumber, sConfSlip, sCustSeq: string;
begin
	SetDebugeWrite('Frm_JON012.Proc_CustOldSelect');
  try
    if Self.Hint = '고객등록/수정' then
    begin
      if ( Not Assigned(Frm_CUT011) ) Or ( Frm_CUT011 = Nil ) then Exit;

      sConfSlip := '0'; // 오더접수번호
      sCustTell := Frm_CUT011.cxCustTel.DataController.Values[0, 0];
      sCustTell := StringReplace(sCustTell,'-', '', [rfReplaceAll]);
      sKeyNumber := Frm_CUT011.Proc_MainKeyNumberSearch;   //cboBranch
      sCustSeq := Frm_CUT011.clbCuSeq.caption;
    end else
    begin
      sConfSlip := Frm_Main.Frm_JON01N[Self.Tag].cxtJoinNum.Text; // 오더접수번호
      sCustTell := Frm_Main.Frm_JON01N[Self.Tag].locsCuTel;
      sCustTell := StringReplace(sCustTell,'-', '', [rfReplaceAll]);
      sKeyNumber := Frm_Main.Frm_JON01N[Self.Tag].Proc_MainKeyNumberSearch;
      sCustSeq := Frm_Main.Frm_JON01N[Self.Tag].lcsCu_seq;
    end;

    if (cxlbSlip.Caption <> sConfSlip) or (cxlbCustTel.Caption <> sCustTell) or (cxlbKeyNum.Caption <> sKeyNumber) then
    begin
      cxGVeOrderList.DataController.SetRecordCount(0);
      cxGVeOrderList.DataController.Filter.Clear;
      cxGVeOrderList.DataController.Filter.Active := False;
			cxGVeOrderDestList.DataController.SetRecordCount(0);
			Pnl_DestList.Height := 69;
			edtDest.text := '';

      cxlbSlip.Caption := sConfSlip;
      cxlbCustTel.Caption := sCustTell;
      cxlbKeyNum.Caption := sKeyNumber;
    end;

    if (cxBtnOldSelect.Tag = 1) and (self.hint <> '고객등록/수정')then
    begin // 조회 했는지의 여부를 체크한다.
      GMessagebox('현재 고객님의 과거이용내역을 이미 조회를 한 상태 입니다.', CDMSE);
      Exit;
    end;

    if sCustSeq = '' then Exit;

    if sCustTell = '' then
    begin
      GMessagebox('고객 전화번호가 부정확 합니다. 전화번호 확인 후 조회 하세요!', CDMSE);
      Exit;
    end;
    if sKeyNumber = '' then
    begin
      GMessagebox('지사의 대표번호가 없습니다. 대표번호 확인 후 조회 하세요!', CDMSE);
      Exit;
    end;

    // 수정모드에서 sConfSlip 이 필요한 이유는 선택오더만 제외하고 조회하여 보여주어야 하기 때문이다.
		// 신규모드 일때에는 sConfSlip 을 '0' 으로 해주어야 에러가 발생하지 않는다.
		if Pos('수정', Frm_Main.Frm_JON01N[Self.Tag].Caption) = 0 then
    begin
      sConfSlip := '0';
		end;
    // 전문 정보를 작성한다.
		ls_TxLoad := GTx_UnitXmlLoad('C037N4.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CUOD0010', [rfReplaceAll]); // 고객이용내역을 조회 한다.
		ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', En_Coding(sConfSlip), [rfReplaceAll]); // 오더접수번호
		ls_TxLoad := StringReplace(ls_TxLoad, 'CustSeqString', sCustSeq, [rfReplaceAll]);   //고객이용내용 조회용 고객 seq
		ls_TxLoad := StringReplace(ls_TxLoad, 'TodayYnString', 'n', [rfReplaceAll]);   //고객이용내용 백업테이블 : n

    Application.ProcessMessages;

		Screen.Cursor := crHourGlass;
    SocketSend(ls_TxLoad); // 전문을 요청한다.
  except on e: exception do
    begin
      Log('Proc_CustOldSelect Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Proc_CustOldSelect Error :' + E.Message);
    end;
  end;
end;

// 고객과거 이용내역[cdms_a01]   Proc_CustOldSelect
procedure TFrm_JON012.Proc_CustOldSelectResult(rxxml: widestring; gubun : Integer);

  function GetRecordIndexByText(AView: TcxCustomGridTableView; AText: string; AColumnIndex: Integer): Integer;
  var
    I: Integer;
  begin
    Result := -1;
    for I := 0 to AView.DataController.RecordCount - 1 do
    begin
      if StrPos(PChar(AView.DataController.DisplayTexts[I, AColumnIndex]), PChar(AText)) <> nil then
      begin
        Result := i;
        Break;
      end;
    end;
  end;

var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
	slTmp, slHide : TStringList;
	ls_Msg_Err, sBizDate, sTmp, DataValue, sConfS, sTodayDate, sCurMileage, sMileage, sInDate : string;
	iRCnt, i, J, iBidx, iSidx, iCnt, iStCd, iConfSlip, iSch, iNow, iRow, iBrWk, iTmp : Integer;
begin
	SetDebugeWrite('Frm_JON012.Proc_CustOldSelectResult');

  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(rxxml) then
    begin
      GMessagebox('[과거이용내역조회]XML전문 형식이 맞지 않습니다.' + #13#10
				+ '다시한번 조회 하세요', CDMSE);
      Exit;
    end;

    ls_Msg_Err := GetXmlErrorCode(rxxml);
    i := 0;
    iNow := 0;
    try
      if ('0000' = ls_Msg_Err) then
      begin
        if cxBtnOldSelect.Hint <> '1' then  // 과거이용내역에서 또 과거이용내역 눌렀을때는 초기화 하지 않음
        begin
          cxGVeOrderList.DataController.SetRecordCount(0);
          cxGVeOrderList.DataController.Filter.Clear;
          cxGVeOrderList.DataController.Filter.Active := False;
        end;

        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/AcceptInfo');
        iRCnt := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Count').Text, 0);
        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/AcceptInfo/Accept');

        if iRcnt > 0 then
        begin // 과거 이용내역을 보여준다.
          iStCd := cxGVeOrderList.GetColumnByFieldName('접수일시').Index;
          iConfSlip := cxGVeOrderList.GetColumnByFieldName('접수번호').Index;
          // 2008-09-22 12:25:30
          sBizDate := StartDateTime('yyyy-mm-dd hh:nn:ss'); // 영업일자 얻기..
          for iCnt := 0 to cxGVeOrderList.DataController.RecordCount - 1 do
          begin // 당일건 찾기
            if cxGVeOrderList.DataController.Values[iCnt, iStCd] >= sBizDate then
              Inc(iNow);
          end;

          iSidx := cxGVeOrderList.DataController.RecordCount + 1;
          // 레코드 시작 index 값을 저장.
          i := iSidx;
          Application.ProcessMessages;

          sTodayDate := StartDateTime('yyyy-mm-dd hh:nn:ss');
					SetDebugeWrite('JON01N.cxGVeOrderList.BeginUpdate');

					slHide := TStringList.Create;
					Try
						GS_EnvFile.ReadSection('JON012ListHide', slHide);

						cxGVeOrderList.BeginUpdate;
						try
							if (Pos('수정', Frm_Main.Frm_JON01N[Self.Tag].Caption) > 0) and (iNow < 1) then
							begin
								iNow := 1;
								//수정화면에서 당일건 조회가 아니고, 과거건 조회 일때는 "과거이용내역" 클릭시 전체를 Display~ 한다.
							end;

							if (iSidx - iNow) < 1 then
							begin
								iSidx := 2;
								iNow := 1;
							end;

							for iCnt := 1 to iRcnt do
							begin
								Application.ProcessMessages;
								if lst_Result.item[iCnt - 1].attributes.getNamedItem('InTime').Text = '' then Continue;

								sCurMileage := formatfloat('#,##0', StrToFloatDef(lst_Result.item[iCnt - 1].attributes.getNamedItem('CurMileage').Text, 0.0));
								sMileage    := formatfloat('#,##0', StrToFloatDef(lst_Result.item[iCnt - 1].attributes.getNamedItem('Mileage').Text, 0.0));

								sConfS := lst_Result.item[iCnt - 1].attributes.getNamedItem('ConfSlip').Text;
								iSch := iConfSlip;
								if sConfS = '' then   // 접수번호가 없을 경우 접수일수로 체크
								begin
									sConfS := lst_Result.item[iCnt - 1].attributes.getNamedItem('InDate').Text;
									iSch := iStCd;
								end;

								if cbStatesView.ItemIndex = 0 then
									iRow := cxGVeOrderList.DataController.FindRecordIndexByText(0, iSch, sConfS, False, True, True)
								else
									iRow := GetRecordIndexByText(cxGVeOrderList, sConfS, iSch);

								if iRow >= 0 then Continue;

								iBidx := cxGVeOrderList.DataController.AppendRecord;

								for J := 0 to Length(OrderTitle)-1 do
								begin
//									iTmp := slHide.IndexOf(OrderTitle[J].FieldName);
//									if iTmp > 0 then Continue;
									case J of
										2:
											begin
												if lst_Result.item[iCnt - 1].attributes.getNamedItem('Status').Text = 'gi' then
												begin
													DataValue := '경품지급';
												end else
												if lst_Result.item[iCnt - 1].attributes.getNamedItem('Status').Text = 'cs' then
												begin
													DataValue := '가격수정';
												end else
												if lst_Result.item[iCnt - 1].attributes.getNamedItem('Status').Text = 'bi' then
												begin
													DataValue := '보정입력';
												end else
												begin
													DataValue := lst_Result.item[iCnt - 1].attributes.getNamedItem('Area5').Text;
												end;
											end;
										3:
											begin
												if lst_Result.item[iCnt - 1].attributes.getNamedItem('Status').Text = 'gi' then
												begin
													DataValue := formatfloat('#,##0', StrToFloatDef(lst_Result.item[iCnt - 1].attributes.getNamedItem('Mileage').Text, 0.0)) + '원 경품지급';
												end else
												if lst_Result.item[iCnt - 1].attributes.getNamedItem('Status').Text = 'cs' then
												begin
													DataValue := formatfloat('#,##0', StrToFloatDef(lst_Result.item[iCnt - 1].attributes.getNamedItem('Mileage').Text, 0.0)) + '원 가격수정';
												end else
												if lst_Result.item[iCnt - 1].attributes.getNamedItem('Status').Text = 'bi' then
												begin
													DataValue := formatfloat('#,##0', StrToFloatDef(lst_Result.item[iCnt - 1].attributes.getNamedItem('Mileage').Text, 0.0)) + '원 보정입력';
												end else
												begin
													DataValue := lst_Result.item[iCnt - 1].attributes.getNamedItem('EdArea5').Text;
												end;
											end;
										5:
											begin
												DataValue := FormatFloat('#,##0', StrToFloatDef(lst_Result.item[iCnt - 1].attributes.getNamedItem('Charge').Text, 0.0));
											end;
										6:
											begin
												if StrToFloatDef(lst_Result.item[iCnt - 1].attributes.getNamedItem('Mileage').Text, 0.0) < 0 then
												begin
													DataValue := formatfloat('#,##0', StrToFloatDef(lst_Result.item[iCnt - 1].attributes.getNamedItem('Mileage').Text, 0.0))
																								 + '(마일리지사용) (잔액 : ' + sCurMileage + ')';
												end else
												if StrToFloatDef(lst_Result.item[iCnt - 1].attributes.getNamedItem('Mileage').Text, 0.0) > 0 then
												begin
													DataValue := '+'+formatfloat('#,##0', StrToFloatDef(lst_Result.item[iCnt - 1].attributes.getNamedItem('Mileage').Text, 0.0))
																								 + ' (잔액 : ' + sCurMileage + ')';
												end	else
												if StrToFloatDef(lst_Result.item[iCnt - 1].attributes.getNamedItem('Mileage').Text, 0.0) = 0 then
												begin
													DataValue := FormatFloat('#,##0', StrToFloatDef(lst_Result.item[iCnt - 1].attributes.getNamedItem('Mileage').Text, 0.0));
												end;
											end;
										31:
											DataValue := IntToStr(iBidx+1);
									else
										begin
											try
												if ( OrderTitle[J].TagName <> '' ) And (Assigned(lst_Result.item[iCnt - 1].attributes.getNamedItem(OrderTitle[J].TagName)) ) then
	//                      if Assigned(lst_Result.item[iCnt - 1].attributes.getNamedItem(OrderTitle[J].TagName)) then
													DataValue := lst_Result.item[iCnt - 1].attributes.getNamedItem(OrderTitle[J].TagName).Text
												else
													DataValue := '';
											except
												DataValue := '';
											end;
										end;
									end;

									if OrderTitle[J].FieldName = '접수일시' then
									begin
										if ( Self.Tag <> 100 ) And ( Self.Tag >= 0 ) then // 고객정보에서 고객정보수정시 접수창이 없다.
										begin
											if (not Frm_Main.Frm_JON01N[Self.Tag].FHasTodayData) and (Copy(lst_Result.item[iCnt - 1].attributes.getNamedItem(OrderTitle[J].TagName).Text, 1, 19) >= StartDateTime('yyyy-mm-dd hh:nn:ss')) then
												Frm_Main.Frm_JON01N[Self.Tag].FHasTodayData := True;
										end;
									end;

									if OrderTitle[J].FieldName = '경유지정보' then
									begin
										// 1^서울^송파구^방이동^잠실^잠실역^037304289^127063700
										slTmp := TStringList.Create;
										try
											GetTextSeperationEx2('^', DataValue, slTmp);
											if slTmp.Count > 5 then
											begin
												if StrToIntDef(slTmp[0], 0) > 0 then
												begin
													_AddData(cxGVeOrderList, iBidx, '경유지', slTmp[5]);
												end;
											end;
										finally
										end;
									end;

									_AddData(cxGVeOrderList, iBidx, OrderTitle[J].FieldName, DataValue);
								end;

								if ( Self.Tag <> 100 ) And ( Self.Tag >= 0 ) then // 고객정보에서 고객정보수정시 접수창이 없다.
								begin
									// 당일오더 건에 대해선 칼라를 변경하여 구분이 될수 있게 해준다.
									if iCnt = 1 then
									begin
										sInDate := lst_Result.item[iCnt - 1].attributes.getNamedItem('InDate').Text; // 접수일시
										sInDate := StringReplace(sInDate, '/', '-', [rfReplaceAll]);
										sInDate := copy(sInDate, 1, 19);
										if sInDate >= sTodayDate then
										begin
											Frm_Main.Frm_JON01N[Self.Tag].SetCustControlColor(True, True);
											// 고객정보 화면의 라벨칼라를 변경해준다.
										end else
										begin
											Frm_Main.Frm_JON01N[Self.Tag].SetCustControlColor(True, False);
										end;
									end;
								end;

								i := i + 1;
								if i > 199 then Exit;
							end;
							// 조회 했는지의 여부를 체크한다.
							cxGVeOrderList.EndUpdate;

							if gubun = 0 then
							begin
								if cxBtnOldSelect.Hint = '1' then //버튼을 눌렀을때만 조회여부 체크 2016.08.05 KHS
									cxBtnOldSelect.Tag := 1;
									// 조회 했는지의 여부를 체크한다.

								iBrWk  := cxGVeOrderList.GetColumnByFieldName('최초접수일시').Index;
								cxGVeOrderList.Columns[iBrWk].SortOrder := soDescending;
								gfSetIndexNo(cxGVeOrderList, 1, True);   //NO 정렬에 맞게 수정
							end;

							Application.ProcessMessages;
							SetDebugeWrite('cxGVeOrderList.EndUpdate');
						except on e: exception do
							begin
								cxGVeOrderList.CancelUpdate;
								SetDebugeWrite('Frm_JON012.cxGVeOrderList.CancelUpdate');
								sTmp := 'JON012[Proc_CustOldSelectResult] CancelUpdate :' + e.Message;
								Log(sTmp, LOGDATAPATHFILE);
								Assert(False, sTmp);
							end;
						end;
					finally
						slHide.Free;
					end;
				end else
        begin
          if cxBtnOldSelect.Hint = '1' then
            GMessagebox('[과거이용내역조회] 검색 데이터가 없습니다.', CDMSE);
        end;
      end else
      begin
        GMessagebox(MSG012 + CRLF + ls_Msg_Err, CDMSE);
      end;
    except
      on e: exception do
      begin
        ShowMessage('[과거이용내역조회]예외처리 발생 : ' + e.Message);
      end;
    end;
  finally
    xdom := Nil;
	end;
end;

procedure TFrm_JON012.Proc_JoinCopyCustHis;
var
	ls_TxLoad, sCustTell, sKeyNumber, sConfSlip, sCustSeq: string;
begin
	SetDebugeWrite('Frm_JON012.Proc_JoinCopyCustHis');
	try
    sConfSlip := Frm_Main.Frm_JON01N[Self.Tag].cxtJoinNum.Text; // 오더접수번호
    sCustTell := Frm_Main.Frm_JON01N[Self.Tag].locsCuTel;
    sCustTell := StringReplace(sCustTell,'-', '', [rfReplaceAll]);
    sKeyNumber := Frm_Main.Frm_JON01N[Self.Tag].Proc_MainKeyNumberSearch;
    sCustSeq := Frm_Main.Frm_JON01N[Self.Tag].lcsCu_seq;

		if (cxlbSlip.Caption <> sConfSlip) or (cxlbCustTel.Caption <> sCustTell) or (cxlbKeyNum.Caption <> sKeyNumber) then
    begin
			cxGVeOrderList.DataController.SetRecordCount(0);
      cxGVeOrderList.DataController.Filter.Clear;
      cxGVeOrderList.DataController.Filter.Active := False;
			cxGVeOrderDestList.DataController.SetRecordCount(0);
			Pnl_DestList.Height := 69;
			edtDest.text := '';

      cxlbSlip.Caption := sConfSlip;
      cxlbCustTel.Caption := sCustTell;
      cxlbKeyNum.Caption := sKeyNumber;
    end;

		if sCustSeq = '' then
      Exit;

    if sCustTell = '' then
    begin
      GMessagebox('고객 전화번호가 부정확 합니다. 전화번호 확인 후 조회 하세요!', CDMSE);
      Exit;
    end;
    if sKeyNumber = '' then
    begin
      GMessagebox('지사의 대표번호가 없습니다. 대표번호 확인 후 조회 하세요!', CDMSE);
			Exit;
    end;

		// 수정모드에서 sConfSlip 이 필요한 이유는 선택오더만 제외하고 조회하여 보여주어야 하기 때문이다.
		// 신규모드 일때에는 sConfSlip 을 '0' 으로 해주어야 에러가 발생하지 않는다.
		sConfSlip := '0';

		// 전문 정보를 작성한다.
		ls_TxLoad := GTx_UnitXmlLoad('C037N4.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CUOD0010', [rfReplaceAll]); // 고객이용내역을 조회 한다.
		ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', En_Coding(sConfSlip), [rfReplaceAll]); // 오더접수번호
		ls_TxLoad := StringReplace(ls_TxLoad, 'CustSeqString', sCustSeq, [rfReplaceAll]);   //고객이용내용 조회용 고객 seq
		ls_TxLoad := StringReplace(ls_TxLoad, 'TodayYnString', 'y', [rfReplaceAll]);   //고객이용내용 당일테이블 : y

    Application.ProcessMessages;

		Screen.Cursor := crHourGlass;
		SocketSend(ls_TxLoad); // 전문을 요청한다.
  except on e: exception do
    begin
      Log('Proc_CustOldSelect Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Proc_CustOldSelect Error :' + E.Message);
    end;
  end;
end;

// 해당 접수창을 찾아서 보여준다.
procedure TFrm_JON012.Proc_JoinFromFindView;
var
  sCaption: string;
  i, iFCnt, iNow: integer;
begin
  SetDebugeWrite('Frm_JON012.Proc_JoinFromFindView');
  try
    if Frm_Main.JON01MNG[Self.Tag].Dock then
    begin
      iNow := Frm_Jon00.cxTabControl1.TabIndex;
      iFCnt := -1;
      // 해당 탭을 찾아서 보여준다
      sCaption := Self.Hint;
      for i := 0 to Frm_Jon00.cxTabControl1.Tabs.Count - 1 do
      begin
        if (Frm_JON00.cxTabControl1.Tabs[i].Caption = sCaption) And
           (Frm_JON00.slTabTag[i] = IntToStr(Self.Tag)) then
        begin
          iFCnt := i;
          Break;
        end;
      end;
      if iFCnt > -1 then
      begin
        if iFCnt <> iNow then
        begin
          // 접수화면 보이기..
          Frm_Jon00.cxTabControl1.TabIndex := iFCnt;
        end;
      end;
    end;
    // 접수화면 보이기..
    Frm_Main.Frm_JON01N[Self.Tag].Show;
  except on e: exception do
    begin
      Log('Proc_JoinFromFindView Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Proc_JoinFromFindView Error :' + E.Message);
    end;
  end;
end;

// 접수현황에 선택한 고객 및 기사의 해당 오더를 조회 해 준다.
function TFrm_JON012.Proc_CustWorkerOrderSearch: boolean;
var
  ACol: Integer;
  sInDate, sDate, sConfSlip, sCallNum : string;
begin
  SetDebugeWrite('Frm_JON012.Proc_CustWorkerOrderSearch');
  try
    Result := False;
    if cxGVeOrderList.DataController.FocusedRecordIndex = -1 then  Exit;

    ACol    := cxGVeOrderList.GetColumnByFieldName('접수일시').Index;
    sInDate := cxGVeOrderList.DataController.Values[cxGVeOrderList.DataController.FocusedRecordIndex, ACol];
    sIndate := copy(Trim(sIndate), 1, 19);
    sDate := StartDateTime('yyyy-mm-dd hh:nn:ss');

    if (sInDate < sDate) and (Pos('수정', Frm_Main.Frm_JON01N[Self.Tag].Caption) = 0) then
    begin
      GMessagebox('오늘 데이터가 아닙니다.', CDMSE);
      Exit;
    end;

    with Frm_Main.Frm_JON03[Jon03Tag] do
    begin
      if grpSetBrch_select.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetBrch_select.BringToFront;
        Exit;
      end;
      if ( Assigned(Frm_JON15) ) And ( Frm_JON15 <> Nil ) then
      begin
        if frm_JON15.Visible then
				begin
					GMessagebox('오더취소창을 닫고 작업해 주세요', CDMSE);
					Frm_JON15.rg_Cancelchoice.SetFocus;
					Frm_JON15.Show;  
					Exit;
        end;
      end;
      if grpSetPanelty.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetPanelty.BringToFront;
        RadioGroup1.SetFocus;
        Exit;
      end;
      if grpSetcancel_charge.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetcancel_charge.BringToFront;
        ed_cancel_charge.SetFocus;
        Exit;
      end;
    end;

    // 접수번호
    sConfSlip := cxGVeOrderList.DataController.Values[cxGVeOrderList.DataController.FocusedRecordIndex,
                                                      cxGVeOrderList.GetColumnByFieldName('접수번호').Index];
    sCallNum := Frm_Main.Frm_JON01N[Self.Tag].cxtCallTelNum.Text;

    if Frm_Main.Frm_JON01N[Self.Tag].lcsCu_seq <> '' then
      Frm_Main.Frm_JON03[Jon03Tag].proc_Acc_Search(6, sCallNum)
      // 고객전화번호로 조회 [고객전화일때,,]
    else
      Frm_Main.Frm_JON03[Jon03Tag].proc_Acc_Search(7, sConfSlip);
      // 접수번호로 조회     [기사전화일때,,]

    Result := True;
  except on e: exception do
    begin
      Log('Proc_CustWorkerOrderSearch Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Proc_CustWorkerOrderSearch Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON012.pm_Cancel1Click(Sender: TObject);
var
	iArea1, iArea2, iKeyNum, iRow, iCustNum, ErrCode : Integer;
  ls_TxLoad, ls_TxQry, sQueryTemp, sCustTel, sBrNo, rv_str, ls_rxxml : String;
  slReceive: TStringList;
	AView: TcxGridDBTableView;
begin
  SetDebugeWrite('Frm_JON012.pm_Cancel1Click');
	try
   	AView := GetCurrentView;
		if TPopupmenu(Sender).Tag in [0,1] then
			iRow := AView.DataController.FocusedRecordIndex;

		if iRow < 0 then Exit;

		if not func_check_CallCenterYN_WK then
		begin
      GMessagebox('타사콜입니다.' + #13#10 + '상태변경을 할 수 없습니다.', CDMSE);
      Exit;
    end;

    with Frm_Main.Frm_JON03[Jon03Tag] do
    begin
      if grpSetBrch_select.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetBrch_select.BringToFront;
				Exit;
      end;
      if ( Assigned(Frm_JON15) ) And ( Frm_JON15 <> Nil ) then
      begin
        if frm_JON15.Visible then
				begin
					GMessagebox('오더취소창을 닫고 작업해 주세요', CDMSE);
{          Frm_JON15.rg_Cancelchoice.SetFocus;
          if Trim(A01_HIS_POPUP.Slip)<>'' then
          begin
						Frm_JON15.gSlip := A01_HIS_POPUP.Slip;
						Frm_JON15.gStatus := A01_HIS_POPUP.Status;
					end;      }
					Frm_JON15.Show;      
					Exit;
        end;
      end;
      if grpSetPanelty.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetPanelty.BringToFront;
        RadioGroup1.SetFocus;
        Exit;
      end;
      if grpSetcancel_charge.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetcancel_charge.BringToFront;
        ed_cancel_charge.SetFocus;
				Exit;
      end;
    end;

    Frm_Main.Frm_JON03[Jon03Tag].AAutoSearch_Stop := False;
    Frm_Main.Frm_JON03[Jon03Tag].tmr_dis.Enabled := False;
    Frm_Main.Frm_JON03[Jon03Tag].PnlAuto.Visible := False;

		iArea1 := AView.GetColumnByFieldName('출발지').Index;
		iArea2 := AView.GetColumnByFieldName('도착지').Index;
		iKeyNum := AView.GetColumnByFieldName('대표번호').Index;

    sBrNo := Frm_Main.Frm_JON01N[Self.Tag].Proc_BRNOSearch;

		// 고객번호 찾기
		iCustNum := AView.GetColumnByFieldName('고객연락처').Index;
		sCustTel := AView.DataController.Values[iRow, iCustNum];
		sCustTel := StringReplace(sCustTel, '-', '', [rfReplaceAll]);

    if TPopupMenu(Sender).Tag in [0, 1] then
		begin
      if Not Assigned(Frm_JON15) then Frm_JON15 := TFrm_JON15.Create(Nil);

      if TPopupmenu(Sender).Tag = 1 then
        frm_JON15.pnlTitle.Caption := '  취소하기'
      else
        frm_JON15.pnlTitle.Caption := '  취소+재접수';

      Frm_JON15.Jon03Tag := Self.Jon03Tag;
      frm_JON15.RbCheckBox1.Visible := False;
 			frm_JON15.Left := (frm_Main.Width - Frm_Main.Frm_JON01N[Self.Tag].Width - frm_JON15.Width) div 2;
			frm_JON15.top := (frm_Main.Height - frm_JON15.Height) div 2;
      if frm_JON15.top <= 10 then frm_JON15.top := 10;
			frm_JON15.ed_cancel_custnum.Text := sCustTel;
			frm_JON15.ed_cancel_custname.Text := '';
			frm_JON15.ed_cancel_area.Text := AView.DataController.Values[iRow, iArea1];
			frm_JON15.ed_cancel_area2.Text := AView.DataController.Values[iRow, iArea2];
			Frm_JON15.gBrNo  := sBrNo;
			frm_JON15.KeyNum := AView.DataController.Values[iRow, iKeyNum];
      frm_JON15.RbCheckBox1.Visible := False;
      frm_JON15.RbCheckBox1.Checked := False;
      if TPopupMenu(Sender).Tag = 1 then
        frm_JON15.RbCheckBox1.Visible := True;
			Frm_JON15.rdo_Cancel0.checked := True;
			frm_JON15.cb_CancelSMS.Checked := false;

      if Trim(A01_HIS_POPUP.Slip)<>'' then
			begin
				Frm_JON15.gSlip := A01_HIS_POPUP.Slip;
				Frm_JON15.gStatus := A01_HIS_POPUP.Status;
      end;
      frm_JON15.Show;
    end else
      if TPopupMenu(Sender).Tag in [2, 5] then
    begin
      if Not Assigned(Frm_COM01) then Frm_COM01 := TFrm_COM01.Create(Nil);
      Frm_COM01.pCOM01Dock.bUnDock := pJON012Dock.bUnDock;
      Frm_COM01.pCOM01Dock.HdNo    := pJON012Dock.HdNo;
      Frm_COM01.pCOM01Dock.BrNo    := pJON012Dock.BrNo;
      Frm_COM01.pCOM01Dock.BrName  := pJON012Dock.BrName;
      Frm_COM01.pCOM01Dock.Gubun   := pJON012Dock.Gubun;
      Frm_COM01.pCOM01Dock.Idx     := pJON012Dock.Idx;

      Frm_COM01.Jon03Tag := Self.Jon03Tag;
      Frm_COM01.Tag := TPopupMenu(Sender).Tag;
      // 2 : 강제배차, 5 : 문자배차, 0 : 접수창 배차
      Frm_COM01.ed_ConfSlip.Text := A01_HIS_POPUP.Slip;
      Frm_COM01.ed_st_cd.Text := A01_HIS_POPUP.Status;
      Frm_COM01.Show;
      Exit;
    end;

    //기사부족 취소문자 메시지 설정값 가져오기
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_BRANCH_SMS_LACK_MSG, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sBrNo]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'WKLACKMSG', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
			begin
        rv_str := slReceive[0];
        if rv_str <> '' then
				begin
					ls_rxxml := rv_str;
          Application.ProcessMessages;
					Frm_Main.Frm_JON03[Jon03Tag].proc_recieve(ls_rxxml);
        end;
      end;
      btnClose.Click; // CDS. 080828. 추가.
    finally
      FreeAndNil(slReceive);
      Frm_Flash.Hide;
    end;
  except
    Screen.Cursor := crDefault;
	end;
end;

procedure TFrm_JON012.pm_CancelClick(Sender: TObject);
var
  iArea1, iArea2, iKeyNum, iRow, ErrCode : Integer;
  ls_TxLoad, ls_TxQry, sQueryTemp, sCustTel, sBrNo, rv_str, ls_rxxml: String;
  slReceive: TStringList;
begin
  SetDebugeWrite('Frm_JON012.pm_CancelClick');
	try
		if TPopupmenu(Sender).Tag in [0,1] then
			iRow := cxGVeOrderList.DataController.FocusedRecordIndex;

		if iRow < 0 then Exit;

    if not func_check_CallCenterYN(cxGVeOrderList) then
    begin
      GMessagebox('타사콜입니다.' + #13#10 + '상태변경을 할 수 없습니다.', CDMSE);
      Exit;
    end;

    with Frm_Main.Frm_JON03[Jon03Tag] do
    begin
      if grpSetBrch_select.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetBrch_select.BringToFront;
				Exit;
      end;

      if ( Assigned(Frm_JON15) ) And ( Frm_JON15 <> Nil ) then
      begin
				if frm_JON15.Visible then
				begin
					GMessagebox('오더취소창을 닫고 작업해 주세요', CDMSE);
		 {     Frm_JON15.rg_Cancelchoice.SetFocus;
          if Trim(A01_HIS_POPUP.Slip)<>'' then
          begin
						Frm_JON15.gSlip := A01_HIS_POPUP.Slip;
						Frm_JON15.gStatus := A01_HIS_POPUP.Status;
					end;          }
					Frm_JON15.Show; 
					Exit;
        end;
      end;

      if grpSetPanelty.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetPanelty.BringToFront;
        RadioGroup1.SetFocus;
        Exit;
      end;
      if grpSetcancel_charge.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetcancel_charge.BringToFront;
        ed_cancel_charge.SetFocus;
				Exit;
      end;
    end;

    Frm_Main.Frm_JON03[Jon03Tag].AAutoSearch_Stop := False;
    Frm_Main.Frm_JON03[Jon03Tag].tmr_dis.Enabled := False;
    Frm_Main.Frm_JON03[Jon03Tag].PnlAuto.Visible := False;

    iArea1 := cxGVeOrderList.GetColumnByFieldName('출발지').Index;
    iArea2 := cxGVeOrderList.GetColumnByFieldName('도착지').Index;
    iKeyNum := cxGVeOrderList.GetColumnByFieldName('대표번호').Index;

    sBrNo := Frm_Main.Frm_JON01N[Self.Tag].Proc_BRNOSearch;
    // 고객번호 찾기
    sCustTel := Frm_Main.Frm_JON01N[Self.Tag].cxtCallTelNum.Text;
    sCustTel := StringReplace(sCustTel, '-', '', [rfReplaceAll]);

    if TPopupMenu(Sender).Tag in [0, 1] then
    begin
      if Not Assigned(Frm_JON15) then Frm_JON15 := TFrm_JON15.Create(Nil);

      if TPopupmenu(Sender).Tag = 1 then
        frm_JON15.pnlTitle.Caption := '  취소하기'
      else
        frm_JON15.pnlTitle.Caption := '  취소+재접수';

      Frm_JON15.Jon03Tag := Self.Jon03Tag;
      frm_JON15.RbCheckBox1.Visible := False;
      frm_JON15.Left := (frm_Main.Width - Frm_Main.Frm_JON01N[Self.Tag].Width - frm_JON15.Width) div 2;
      frm_JON15.top := (frm_Main.Height - frm_JON15.Height) div 2;
      if frm_JON15.top <= 10 then frm_JON15.top := 10;
      frm_JON15.ed_cancel_custnum.Text := sCustTel;
      frm_JON15.ed_cancel_custname.Text := Frm_Main.Frm_JON01N[Self.Tag].edtCuName.Text;
      frm_JON15.ed_cancel_area.Text := cxGVeOrderList.DataController.Values[iRow, iArea1];
      frm_JON15.ed_cancel_area2.Text := cxGVeOrderList.DataController.Values[iRow, iArea2];
      Frm_JON15.gBrNo  := sBrNo;
      frm_JON15.KeyNum := cxGVeOrderList.DataController.Values[iRow, iKeyNum];
      frm_JON15.RbCheckBox1.Visible := False;
      frm_JON15.RbCheckBox1.Checked := False;
      if TPopupMenu(Sender).Tag = 1 then
        frm_JON15.RbCheckBox1.Visible := True;
			Frm_JON15.rdo_Cancel0.checked := True;
			frm_JON15.cb_CancelSMS.Checked := false;

      if Trim(A01_HIS_POPUP.Slip)<>'' then
      begin
				Frm_JON15.gSlip := A01_HIS_POPUP.Slip;
				Frm_JON15.gStatus := A01_HIS_POPUP.Status;
      end;
      frm_JON15.Show;
    end else
    if TPopupMenu(Sender).Tag in [2, 5] then
    begin
      if Not Assigned(Frm_COM01) then Frm_COM01 := TFrm_COM01.Create(Nil);
      Frm_COM01.pCOM01Dock.bUnDock := pJON012Dock.bUnDock;
      Frm_COM01.pCOM01Dock.HdNo    := pJON012Dock.HdNo;
      Frm_COM01.pCOM01Dock.BrNo    := pJON012Dock.BrNo;
      Frm_COM01.pCOM01Dock.BrName  := pJON012Dock.BrName;
      Frm_COM01.pCOM01Dock.Gubun   := pJON012Dock.Gubun;
      Frm_COM01.pCOM01Dock.Idx     := pJON012Dock.Idx;

      Frm_COM01.Jon03Tag := Self.Jon03Tag;
      Frm_COM01.Tag := TPopupMenu(Sender).Tag;
      // 2 : 강제배차, 5 : 문자배차, 0 : 접수창 배차
      Frm_COM01.ed_ConfSlip.Text := A01_HIS_POPUP.Slip;
      Frm_COM01.ed_st_cd.Text := A01_HIS_POPUP.Status;
      Frm_COM01.Show;
      Exit;
    end;

    //기사부족 취소문자 메시지 설정값 가져오기
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_BRANCH_SMS_LACK_MSG, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sBrNo]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'WKLACKMSG', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

		slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
			begin
        rv_str := slReceive[0];
        if rv_str <> '' then
				begin
					ls_rxxml := rv_str;
          Application.ProcessMessages;
					Frm_Main.Frm_JON03[Jon03Tag].proc_recieve(ls_rxxml);
        end;
      end;
			btnClose.Click; // CDS. 080828. 추가.
		finally
      FreeAndNil(slReceive);
    end;
  except
    Screen.Cursor := crDefault;
	end;
end;

procedure TFrm_JON012.pm_cancellation1Click(Sender: TObject);
var
  ls_TxLoad, rv_str, ls_rxxml : String;
  iRow, ErrCode : Integer;
  slReceive: TStringList;
	AView: TcxGridDBTableView;
begin
  SetDebugeWrite('Frm_JON012.pm_cancellation1Click');
  try
   	AView := GetCurrentView;
    iRow := AView.DataController.FocusedRecordIndex;
    if iRow < 0 then Exit;

    if not func_check_CallCenterYN_WK then
    begin
      GMessagebox('타사콜입니다.' + #13#10 + '상태변경을 할 수 없습니다.', CDMSE);
      Exit;
    end;

    ls_TxLoad := GTx_UnitXmlLoad('C007.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'RESV000' + IntToStr(TPopupMenu(Sender).Tag), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', A01_HIS_POPUP.Slip, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', A01_HIS_POPUP.Status, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'GubunCodeString', IntToStr(TPopupMenu(Sender).Tag), [rfReplaceAll]);
    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          Frm_Main.Frm_JON03[Jon03Tag].proc_recieve(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.pm_cancellationClick(Sender: TObject);
var
  ls_TxLoad, rv_str, ls_rxxml : String;
  iRow, ErrCode : Integer;
  slReceive: TStringList;
begin
  SetDebugeWrite('Frm_JON012.pm_cancellationClick');
  try
    iRow := cxGVeOrderList.DataController.FocusedRecordIndex;
    if iRow < 0 then Exit;

    if not func_check_CallCenterYN(cxGVeOrderList) then
    begin
      GMessagebox('타사콜입니다.' + #13#10 + '상태변경을 할 수 없습니다.', CDMSE);
      Exit;
    end;

    ls_TxLoad := GTx_UnitXmlLoad('C007.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'RESV000' + IntToStr(TPopupMenu(Sender).Tag), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', A01_HIS_POPUP.Slip, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', A01_HIS_POPUP.Status, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'GubunCodeString', IntToStr(TPopupMenu(Sender).Tag), [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          Frm_Main.Frm_JON03[Jon03Tag].proc_recieve(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.pm_CanReAcc1Click(Sender: TObject);
var
	iArea1, iArea2, iKeyNum, iRow, iCustNum, ErrCode : Integer;
  ls_TxLoad, ls_TxQry, sQueryTemp, sCustTel, sBrNo, rv_str, ls_rxxml: String;
  slReceive: TStringList;
	AView: TcxGridDBTableView;
begin
  SetDebugeWrite('Frm_JON012.pm_CanReAcc1Click');
	try
   	AView := GetCurrentView;
		if TPopupmenu(Sender).Tag in [0,1] then
			iRow := AView.DataController.FocusedRecordIndex;

		if iRow < 0 then Exit;

		if not func_check_CallCenterYN_WK then
		begin
      GMessagebox('타사콜입니다.' + #13#10 + '상태변경을 할 수 없습니다.', CDMSE);
      Exit;
    end;

    with Frm_Main.Frm_JON03[Jon03Tag] do
    begin
      if grpSetBrch_select.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetBrch_select.BringToFront;
				Exit;
      end;
      if ( Assigned(Frm_JON15) ) And ( Frm_JON15 <> Nil ) then
      begin
        if frm_JON15.Visible then
        begin
					GMessagebox('오더취소창을 닫고 작업해 주세요', CDMSE);
       {   Frm_JON15.rg_Cancelchoice.SetFocus;
          if Trim(A01_HIS_POPUP.Slip)<>'' then
          begin
						Frm_JON15.gSlip := A01_HIS_POPUP.Slip;
						Frm_JON15.gStatus := A01_HIS_POPUP.Status;
					end;             }
					Frm_JON15.Show; 
          Exit;
        end;
      end;
      if grpSetPanelty.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetPanelty.BringToFront;
        RadioGroup1.SetFocus;
        Exit;
      end;
      if grpSetcancel_charge.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetcancel_charge.BringToFront;
        ed_cancel_charge.SetFocus;
				Exit;
      end;
    end;

    Frm_Main.Frm_JON03[Jon03Tag].AAutoSearch_Stop := False;
    Frm_Main.Frm_JON03[Jon03Tag].tmr_dis.Enabled := False;
    Frm_Main.Frm_JON03[Jon03Tag].PnlAuto.Visible := False;

		iArea1 := AView.GetColumnByFieldName('출발지').Index;
		iArea2 := AView.GetColumnByFieldName('도착지').Index;
		iKeyNum := AView.GetColumnByFieldName('대표번호').Index;

    sBrNo := Frm_Main.Frm_JON01N[Self.Tag].Proc_BRNOSearch;

		// 고객번호 찾기
		iCustNum := AView.GetColumnByFieldName('고객연락처').Index;
		sCustTel := AView.DataController.Values[iRow, iCustNum];
		sCustTel := StringReplace(sCustTel, '-', '', [rfReplaceAll]);

    if TPopupMenu(Sender).Tag in [0, 1] then
		begin
      if Not Assigned(Frm_JON15) then Frm_JON15 := TFrm_JON15.Create(Nil);

      if TPopupmenu(Sender).Tag = 1 then
        frm_JON15.pnlTitle.Caption := '  취소하기'
      else
        frm_JON15.pnlTitle.Caption := '  취소+재접수';

      Frm_JON15.Jon03Tag := Self.Jon03Tag;
      frm_JON15.RbCheckBox1.Visible := False;
      frm_JON15.Left := (frm_Main.Width - Frm_Main.Frm_JON01N[Self.Tag].Width - frm_JON15.Width) div 2;
			frm_JON15.top := (frm_Main.Height - frm_JON15.Height) div 2;
      if frm_JON15.top <= 10 then frm_JON15.top := 10;
			frm_JON15.ed_cancel_custnum.Text := sCustTel;
			frm_JON15.ed_cancel_custname.Text := '';//frm_Jon03.frmJon011[Self.Tag].edtCuName.Text;
			frm_JON15.ed_cancel_area.Text := AView.DataController.Values[iRow, iArea1];
			frm_JON15.ed_cancel_area2.Text := AView.DataController.Values[iRow, iArea2];
			Frm_JON15.gBrNo  := sBrNo;
			frm_JON15.KeyNum := AView.DataController.Values[iRow, iKeyNum];
      frm_JON15.RbCheckBox1.Visible := False;
      frm_JON15.RbCheckBox1.Checked := False;
      if TPopupMenu(Sender).Tag = 1 then
        frm_JON15.RbCheckBox1.Visible := True;
			Frm_JON15.rdo_Cancel0.checked := True;
			frm_JON15.cb_CancelSMS.Checked := false;

      if Trim(A01_HIS_POPUP.Slip)<>'' then
      begin
				Frm_JON15.gSlip := A01_HIS_POPUP.Slip;
				Frm_JON15.gStatus := A01_HIS_POPUP.Status;
			end;
			frm_JON15.Show;
    end else
    if TPopupMenu(Sender).Tag in [2, 5] then
    begin
      if Not Assigned(Frm_COM01) then Frm_COM01 := TFrm_COM01.Create(Nil);
      Frm_COM01.pCOM01Dock.bUnDock := pJON012Dock.bUnDock;
      Frm_COM01.pCOM01Dock.HdNo    := pJON012Dock.HdNo;
      Frm_COM01.pCOM01Dock.BrNo    := pJON012Dock.BrNo;
      Frm_COM01.pCOM01Dock.BrName  := pJON012Dock.BrName;
      Frm_COM01.pCOM01Dock.Gubun   := pJON012Dock.Gubun;
      Frm_COM01.pCOM01Dock.Idx     := pJON012Dock.Idx;

      Frm_COM01.Jon03Tag := Self.Jon03Tag;
      Frm_COM01.Tag := TPopupMenu(Sender).Tag;
      // 2 : 강제배차, 5 : 문자배차, 0 : 접수창 배차
      Frm_COM01.ed_ConfSlip.Text := A01_HIS_POPUP.Slip;
      Frm_COM01.ed_st_cd.Text := A01_HIS_POPUP.Status;
      Frm_COM01.Show;
      Exit;
    end;

    //기사부족 취소문자 메시지 설정값 가져오기
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_BRANCH_SMS_LACK_MSG, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sBrNo]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'WKLACKMSG', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
			begin
        rv_str := slReceive[0];
        if rv_str <> '' then
				begin
					ls_rxxml := rv_str;
          Application.ProcessMessages;
					Frm_Main.Frm_JON03[Jon03Tag].proc_recieve(ls_rxxml);
        end;
      end;
      btnClose.Click; // CDS. 080828. 추가.
    finally
      FreeAndNil(slReceive);
    end;
  except
    Screen.Cursor := crDefault;
	end;
end;

procedure TFrm_JON012.pm_CanReAccClick(Sender: TObject);
var
  iArea1, iArea2, iKeyNum, iRow, ErrCode : Integer;
  ls_TxLoad, ls_TxQry, sQueryTemp, sCustTel, sBrNo, rv_str, ls_rxxml : String;
  slReceive: TStringList;
begin
  SetDebugeWrite('Frm_JON012.pm_CanReAccClick');
	try
		if TPopupmenu(Sender).Tag in [0,1] then
			iRow := cxGVeOrderList.DataController.FocusedRecordIndex;

		if iRow < 0 then Exit;

    if not func_check_CallCenterYN(cxGVeOrderList) then
    begin
      GMessagebox('타사콜입니다.' + #13#10 + '상태변경을 할 수 없습니다.', CDMSE);
      Exit;
    end;

    with Frm_Main.Frm_JON03[Jon03Tag] do
    begin
      if grpSetBrch_select.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetBrch_select.BringToFront;
				Exit;
      end;
      if ( Assigned(Frm_JON15) ) And ( Frm_JON15 <> Nil ) then
      begin
        if frm_JON15.Visible then
        begin
					GMessagebox('오더취소창을 닫고 작업해 주세요', CDMSE);
	 {				Frm_JON15.rg_Cancelchoice.SetFocus;
          if Trim(A01_HIS_POPUP.Slip)<>'' then
          begin
						Frm_JON15.gSlip :=A01_HIS_POPUP.Slip;
						Frm_JON15.gStatus :=A01_HIS_POPUP.Status;
					end;            }
					Frm_JON15.Show;    
          Exit;
        end;
      end;
      if grpSetPanelty.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetPanelty.BringToFront;
        RadioGroup1.SetFocus;
        Exit;
      end;
      if grpSetcancel_charge.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetcancel_charge.BringToFront;
        ed_cancel_charge.SetFocus;
				Exit;
      end;
    end;

    Frm_Main.Frm_JON03[Jon03Tag].AAutoSearch_Stop := False;
    Frm_Main.Frm_JON03[Jon03Tag].tmr_dis.Enabled := False;
    Frm_Main.Frm_JON03[Jon03Tag].PnlAuto.Visible := False;

    iArea1 := cxGVeOrderList.GetColumnByFieldName('출발지').Index;
    iArea2 := cxGVeOrderList.GetColumnByFieldName('도착지').Index;
    iKeyNum := cxGVeOrderList.GetColumnByFieldName('대표번호').Index;

    sBrNo := Frm_Main.Frm_JON01N[Self.Tag].Proc_BRNOSearch;
    // 고객번호 찾기
    sCustTel := Frm_Main.Frm_JON01N[Self.Tag].cxtCallTelNum.Text;
    sCustTel := StringReplace(sCustTel, '-', '', [rfReplaceAll]);

    if TPopupMenu(Sender).Tag in [0, 1] then
    begin
      if Not Assigned(Frm_JON15) then Frm_JON15 := TFrm_JON15.Create(Nil);

      if TPopupmenu(Sender).Tag = 1 then
        frm_JON15.pnlTitle.Caption := '  취소하기'
      else
        frm_JON15.pnlTitle.Caption := '  취소+재접수';

      Frm_JON15.Jon03Tag := Self.Jon03Tag;
      frm_JON15.RbCheckBox1.Visible := False;
      frm_JON15.Left := (frm_Main.Width - Frm_Main.Frm_JON01N[Self.Tag].Width - frm_JON15.Width) div 2;
      frm_JON15.top := (frm_Main.Height - frm_JON15.Height) div 2;
      if frm_JON15.top <= 10 then frm_JON15.top := 10;
      frm_JON15.ed_cancel_custnum.Text := sCustTel;
      frm_JON15.ed_cancel_custname.Text := Frm_Main.Frm_JON01N[Self.Tag].edtCuName.Text;
      frm_JON15.ed_cancel_area.Text := cxGVeOrderList.DataController.Values[iRow, iArea1];
      frm_JON15.ed_cancel_area2.Text := cxGVeOrderList.DataController.Values[iRow, iArea2];
			Frm_JON15.gBrNo  := sBrNo;
			frm_JON15.KeyNum := cxGVeOrderList.DataController.Values[iRow, iKeyNum];
      frm_JON15.RbCheckBox1.Visible := False;
      frm_JON15.RbCheckBox1.Checked := False;
      if TPopupMenu(Sender).Tag = 1 then
        frm_JON15.RbCheckBox1.Visible := True;
			Frm_JON15.rdo_Cancel0.checked := True;
			frm_JON15.cb_CancelSMS.Checked := false;

      if Trim(A01_HIS_POPUP.Slip)<>'' then
      begin
				Frm_JON15.gSlip :=A01_HIS_POPUP.Slip;
				Frm_JON15.gStatus :=A01_HIS_POPUP.Status;
			end;
			frm_JON15.Show;
    end else
    if TPopupMenu(Sender).Tag in [2, 5] then
    begin
      if Not Assigned(Frm_COM01) then Frm_COM01 := TFrm_COM01.Create(Nil);
      Frm_COM01.pCOM01Dock.bUnDock := pJON012Dock.bUnDock;
      Frm_COM01.pCOM01Dock.HdNo    := pJON012Dock.HdNo;
      Frm_COM01.pCOM01Dock.BrNo    := pJON012Dock.BrNo;
      Frm_COM01.pCOM01Dock.BrName  := pJON012Dock.BrName;
      Frm_COM01.pCOM01Dock.Gubun   := pJON012Dock.Gubun;
      Frm_COM01.pCOM01Dock.Idx     := pJON012Dock.Idx;

      Frm_COM01.Jon03Tag := Self.Jon03Tag;
      Frm_COM01.Tag := TPopupMenu(Sender).Tag;
      // 2 : 강제배차, 5 : 문자배차, 0 : 접수창 배차
      Frm_COM01.ed_ConfSlip.Text := A01_HIS_POPUP.Slip;
      Frm_COM01.ed_st_cd.Text := A01_HIS_POPUP.Status;
      Frm_COM01.Show;
      Exit;
    end;

    //기사부족 취소문자 메시지 설정값 가져오기
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_BRANCH_SMS_LACK_MSG, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sBrNo]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'WKLACKMSG', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
			begin
        rv_str := slReceive[0];
        if rv_str <> '' then
				begin
					ls_rxxml := rv_str;
          Application.ProcessMessages;
					Frm_Main.Frm_JON03[Jon03Tag].proc_recieve(ls_rxxml);
        end;
      end;
      btnClose.Click; // CDS. 080828. 추가.
    finally
      FreeAndNil(slReceive);
    end;
  except
    Screen.Cursor := crDefault;
	end;
end;

procedure TFrm_JON012.pm_CanRes1Click(Sender: TObject);
var
  ls_TxLoad, rv_str, ls_rxxml : String;
  iRow, ErrCode : Integer;
  slReceive: TStringList;
	AView: TcxGridDBTableView;
begin
  SetDebugeWrite('Frm_JON012.pm_CanRes1Click');
  try
   	AView := GetCurrentView;
    iRow := AView.DataController.FocusedRecordIndex;
    if iRow < 0 then Exit;

    if not func_check_CallCenterYN_WK then
    begin
      GMessagebox('타사콜입니다.' + #13#10 + '상태변경을 할 수 없습니다.', CDMSE);
      Exit;
    end;

    ls_TxLoad := GTx_UnitXmlLoad('C007.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'RESV000' + IntToStr(TPopupMenu(Sender).Tag), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', A01_HIS_POPUP.Slip, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', A01_HIS_POPUP.Status, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'GubunCodeString', IntToStr(TPopupMenu(Sender).Tag), [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          Frm_Main.Frm_JON03[Jon03Tag].proc_recieve(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.pm_CanResClick(Sender: TObject);
var
  ls_TxLoad, rv_str, ls_rxxml : String;
  iRow, ErrCode : Integer;
  slReceive: TStringList;
begin
  SetDebugeWrite('Frm_JON012.pm_CanResClick');
  try
    iRow := cxGVeOrderList.DataController.FocusedRecordIndex;
    if iRow < 0 then Exit;

    if not func_check_CallCenterYN(cxGVeOrderList) then
    begin
      GMessagebox('타사콜입니다.' + #13#10 + '상태변경을 할 수 없습니다.', CDMSE);
      Exit;
    end;

    ls_TxLoad := GTx_UnitXmlLoad('C007.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'RESV000' + IntToStr(TPopupMenu(Sender).Tag), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', A01_HIS_POPUP.Slip, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', A01_HIS_POPUP.Status, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'GubunCodeString', IntToStr(TPopupMenu(Sender).Tag), [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          Frm_Main.Frm_JON03[Jon03Tag].proc_recieve(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.pm_complete1Click(Sender: TObject);
var
  ls_TxLoad, sMsg, rv_str, ls_rxxml: string;
  ErrCode: integer;
  slReceive: TStringList;
	AView: TcxGridDBTableView;
begin
  SetDebugeWrite('Frm_JON012.pm_complete1Click');
  try
   	AView := GetCurrentView;
    if AView.DataController.FocusedRecordIndex < 0 then Exit;

    if not func_check_CallCenterYN_WK then
    begin
      GMessagebox('타사콜입니다.' + #13#10 + '상태변경을 할 수 없습니다.', CDMSE);
      Exit;
    end;

    if (gWkHdNo = 'A5406') or
       (gWkHdNo = 'A5405') or
       (gWkHdNo = 'A5404') or
       (gWkHdNo = 'A5403') or
       (gWkHdNo = 'A5402') or
       (gWkHdNo = 'A5400') or
       (gWkHdNo = 'A5399') or
       (gWkHdNo = 'A5398') or
    {		 (sWkHead = 'A100') or}
       (gWkHdNo = 'A283') or
       (gWkHdNo = 'A5397') then
    begin
      sMsg := '탁송기사 차량 사진등록이 완료되지 않았습니다.' + #13#10
            + '사고시에는 탁송보험이 적용되지않습니다.' + #13#10 + #13#10
            + '완료처리 하시겠습니까?';
      if Application.MessageBox(PChar(sMsg), CDMSI, MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then Exit;
    end;

    ls_TxLoad := GTx_UnitXmlLoad('C010.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'CANC0006', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', A01_HIS_POPUP.Slip, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', A01_HIS_POPUP.Status, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ConfChargeString', '', [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          Frm_Main.Frm_JON03[Jon03Tag].proc_recieve(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.pm_completeClick(Sender: TObject);
var
  ls_TxLoad, sMsg, sWkHead, rv_str, ls_rxxml : String;
  ErrCode, iRow, iWkHead : Integer;
  slReceive: TStringList;
begin
  SetDebugeWrite('Frm_JON012.pm_completeClick');
  try
    iRow :=  cxGVeOrderList.DataController.FocusedRecordIndex;
    if iRow < 0 then Exit;

    if not func_check_CallCenterYN(cxGVeOrderList) then
    begin
      GMessagebox('타사콜입니다.' + #13#10 + '상태변경을 할 수 없습니다.', CDMSE);
      Exit;
    end;

    iWkHead := cxGVeOrderList.GetColumnByFieldName('기사본사코드').Index;
    sWkHead := cxGVeOrderList.DataController.Values[iRow, iWkHead];

    if (sWkHead = 'A5406') or
       (sWkHead = 'A5405') or
       (sWkHead = 'A5404') or
       (sWkHead = 'A5403') or
       (sWkHead = 'A5402') or
       (sWkHead = 'A5400') or
       (sWkHead = 'A5399') or
       (sWkHead = 'A5398') or
  {		 (sWkHead = 'A100') or}
       (sWkHead = 'A283') or
       (sWkHead = 'A5397') then
    begin
      sMsg := '탁송기사 차량 사진등록이 완료되지 않았습니다.' + #13#10
            + '사고시에는 탁송보험이 적용되지않습니다.' + #13#10 + #13#10
            + '완료처리 하시겠습니까?';
      if Application.MessageBox(PChar(sMsg), CDMSI, MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then Exit;
    end;

    ls_TxLoad := GTx_UnitXmlLoad('C010.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'CANC0006', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', A01_HIS_POPUP.Slip, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', A01_HIS_POPUP.Status, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ConfChargeString', '', [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          Frm_Main.Frm_JON03[Jon03Tag].proc_recieve(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.pm_edit1Click(Sender: TObject);
var
  iInDate, iRow, li_Status,
	iSlip : integer;
	sInDate, sDate : String;
	AView: TcxGridDBTableView;
begin
  SetDebugeWrite('Frm_JON012.pm_edit1Click');
  try
   	AView := GetCurrentView;
    iRow := AView.DataController.FocusedRecordIndex;
    if iRow = -1 then Exit;

    iSlip := AView.GetColumnByFieldName('접수번호').Index;
    iInDate := AView.GetColumnByFieldName('시간').Index;
    sInDate := AView.DataController.Values[iRow, iInDate];
    sIndate := copy(sIndate, 1, 19);
    sDate := StartDateTime('yyyy-mm-dd hh:nn:ss');

    if (sInDate >= sDate) then
    begin
//      A01_HIS_POPUP.Slip := cxToday_GridList.DataController.Values[iRow, iSlip];
//      li_Status := cxToday_GridList.GetColumnByFieldName('오더타입').Index;
//      A01_HIS_POPUP.Status := cxToday_GridList.DataController.Values[iRow, li_Status];
// 	    if A01_HIS_POPUP.Status = 'D' then A01_HIS_POPUP.Status := '1';
    end else
    begin
      A01_HIS_POPUP.Slip:='_';
      A01_HIS_POPUP.Status:='';
    end;

    if (Trim(A01_HIS_POPUP.Slip) <> '') then
    begin
      iInDate := AView.GetColumnByFieldName('시간').Index;
      sInDate := AView.DataController.Values[iRow, iInDate];
      if (TCK_USER_PER.JON_Order = '1') then
        AcceptFromCreate(A01_HIS_POPUP.Slip, sInDate, '수정')
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.pm_editClick(Sender: TObject);
var
  iInDate, iRow, li_Status,
	iSlip, iCallCenter, iStatus, iWKNM, iKeyNum : Integer;
  sInDate, sDate, sBizDate2: string;
begin
  SetDebugeWrite('Frm_JON012.pm_editClick');
  try
    iRow := cxGVeOrderList.DataController.FocusedRecordIndex;
    if iRow = -1 then Exit;

    iSlip := cxGVeOrderList.GetColumnByFieldName('접수번호').Index;
    iCallCenter := cxGVeOrderList.GetColumnByFieldName('콜센터코드').Index;
    iStatus := cxGVeOrderList.GetColumnByFieldName('상태').Index;
    iWKNM := cxGVeOrderList.GetColumnByFieldName('기사').Index;
    iKeyNum := cxGVeOrderList.GetColumnByFieldName('대표번호').Index;
    li_Status := cxGVeOrderList.GetColumnByFieldName('상태').Index;

    iInDate := cxGVeOrderList.GetColumnByFieldName('접수일시').Index;
    sInDate := cxGVeOrderList.DataController.Values[iRow, iInDate];
    sIndate := copy(sIndate, 1, 19);
//    sDate := StartDateTime('yyyy-mm-dd hh:nn:ss');
    sBizDate2 := UpDateDateTime('yyyy-mm-dd'); // 전(-7일) 영업일자 얻기..  2021.05.12 CDS

    A01_HIS_POPUP.Slip := cxGVeOrderList.DataController.Values[iRow, iSlip];
{    if (sInDate >= sBizDate2) then
    begin
      A01_HIS_POPUP.Slip := cxGVeOrderList.DataController.Values[iRow, iSlip];
//      A01_HIS_POPUP.Slip := cxGVeOrderList.DataController.Values[iRow, iSlip];
//      A01_HIS_POPUP.Status := cxGVeOrderList.DataController.Values[iRow, li_Status];
//			if A01_HIS_POPUP.Status = 'D' then A01_HIS_POPUP.Status := '1';
    end else
    begin
      A01_HIS_POPUP.Slip:='_';
      A01_HIS_POPUP.Status:='';
    end;   }

    if (Trim(A01_HIS_POPUP.Slip) <> '') then
    begin
      if (TCK_USER_PER.JON_Order = '1') then
        AcceptFromCreate(A01_HIS_POPUP.Slip, sInDate, '수정')
      else
      begin
        if ( Not Assigned(Frm_JON07) ) Or ( Frm_JON07 = Nil ) then Frm_JON07 := TFrm_JON07.Create(Nil);

          //타사콜일경우 기사에 송금 팝업메뉴 제외 2016.08.23KHS
        Frm_JON07.bTaSaCall := True;
        if not func_check_CallCenterYN(cxGVeOrderList) then
          Frm_JON07.bTaSaCall := False;
					
        Frm_JON07.Jon03Tag := Jon03Tag;
        Frm_JON07.BrNo := cxGVeOrderList.DataController.Values[iRow, iCallCenter];
        frm_JON07.StCd := cxGVeOrderList.DataController.Values[iRow, iStatus];
        if frm_JON07.StCd = 'D' then frm_JON07.StCd := '1';
        frm_JON07.WkName := cxGVeOrderList.DataController.Values[iRow, iWKNM];
        frm_JON07.Hint := cxGVeOrderList.DataController.Values[iRow, iSlip];
        frm_JON07.AccTime := sInDate;
        frm_JON07.MainKeyNum := cxGVeOrderList.DataController.Values[iRow, iKeyNum];    // 2011.07.14 add.
        frm_JON07.CuGubun := '';
        frm_JON07.Cuseq := '';

        frm_JON07.pJON07Dock.bUnDock := pJON012Dock.bUnDock;
        frm_JON07.pJON07Dock.HdNo    := pJON012Dock.HdNo;

        frm_Main.proc_SlipHis(A01_HIS_POPUP.Slip, sInDate, Jon03Tag);
        frm_JON07.Proc_BeachaBtnClear;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.pm_Panelty1Click(Sender: TObject);
var
  iRow, ErrCode: Integer;
  ls_TxLoad, ls_TxQry, sQueryTemp, rv_str: String;
  ls_rxxml: WideString;
  slReceive: TStringList;
	AView: TcxGridDBTableView;
begin
  SetDebugeWrite('Frm_JON012.pm_Panelty1Click');
	try
   	AView := GetCurrentView;
		iRow := AView.DataController.FocusedRecordIndex;
    if iRow < 0 then Exit;
		if not func_check_CallCenterYN_WK then
    begin
      GMessagebox('타사콜입니다.' + #13#10 + '상태변경을 할 수 없습니다.', CDMSE);
      Exit;
    end;

  	with Frm_Main.Frm_JON03[Jon03Tag] do
    begin
      if grpSetBrch_select.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetBrch_select.BringToFront;
        Exit;
      end;
      if ( Assigned(Frm_JON15) ) And ( Frm_JON15 <> Nil ) then
      begin
        if frm_JON15.Visible then
				begin
					GMessagebox('오더취소창을 닫고 작업해 주세요', CDMSE);
         { Frm_JON15.rg_Cancelchoice.SetFocus;
          if Trim(A01_HIS_POPUP.Slip)<>'' then
          begin
						Frm_JON15.gSlip :=A01_HIS_POPUP.Slip;
						Frm_JON15.gStatus :=A01_HIS_POPUP.Status;
					end;             }
					Frm_JON15.Show;
          Exit;
        end;
      end;
      if grpSetPanelty.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetPanelty.BringToFront;
        RadioGroup1.SetFocus;
        Exit;
      end;
      if grpSetcancel_charge.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetcancel_charge.BringToFront;
        ed_cancel_charge.SetFocus;
        Exit;
      end;
    end;

		if (GT_USERIF.SA = '02') then
    begin
      Frm_Main.Frm_JON03[Jon03Tag].grpSetcancel_charge.Left := self.Width - Frm_Main.Frm_JON03[Jon03Tag].grpSetcancel_charge.Width;
      Frm_Main.Frm_JON03[Jon03Tag].grpSetcancel_charge.top := Self.top;
      Frm_Main.Frm_JON03[Jon03Tag].ed_cancel_charge.Text := '500';
      Frm_Main.Frm_JON03[Jon03Tag].grpSetcancel_charge.Visible := True;
      Frm_Main.Frm_JON03[Jon03Tag].grpSetcancel_charge.BringToFront;
      Frm_Main.Frm_JON03[Jon03Tag].ed_cancel_charge.SetFocus;
      Exit;
    end else
    begin
      if (GT_USERIF.SA = '01') then
      begin
        if GMessagebox('배차취소시 벌금 500원이 과금됩니다.' + #13#10 + '배차취소 하시겠습니까?', cdmsq) <> idok then
          Exit;
      end;
			ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
      fGet_BlowFish_Query(GSQ_BRNO_PANELTY2, sQueryTemp);
      ls_TxQry := Format(sQueryTemp, [A01_HIS_POPUP.WkSabun]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'PNLT0001', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

      slReceive := TStringList.Create;
      try
        if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
        begin
          rv_str := slReceive[0];
          if rv_str <> '' then
          begin
            ls_rxxml := rv_str;
            Application.ProcessMessages;
            Frm_Main.Frm_JON03[Jon03Tag].proc_recieve(ls_rxxml);
          end;
        end;
      finally
        FreeAndNil(slReceive);
      end;
    end;
	except
  end;
end;

procedure TFrm_JON012.pm_PaneltyClick(Sender: TObject);
var
  ls_TxLoad, rv_str, ls_rxxml: string;
  ErrCode: integer;
  slReceive: TStringList;
begin
  SetDebugeWrite('Frm_JON012.pm_PaneltyClick');
  try
    if cxGVeOrderList.DataController.FocusedRecordIndex < 0 then Exit;

    if not func_check_CallCenterYN(cxGVeOrderList) then
    begin
      GMessagebox('타사콜입니다.' + #13#10 + '상태변경을 할 수 없습니다.', CDMSE);
      Exit;
    end;

    ls_TxLoad := GTx_UnitXmlLoad('C008.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'CANC0008', [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', A01_HIS_POPUP.Slip, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', A01_HIS_POPUP.Status, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'BaechaYnString', 'n', [rfReplaceAll]);  // 재접수시 근배 여부 (y/n)

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          Frm_Main.Frm_JON03[Jon03Tag].proc_recieve(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.pm_ReAccept1Click(Sender: TObject);
var
  ls_TxLoad, rv_str, ls_rxxml: string;
  ErrCode: integer;
  slReceive: TStringList;
	AView: TcxGridDBTableView;
begin
  SetDebugeWrite('Frm_JON012.pm_ReAccept1Click');
  try
   	AView := GetCurrentView;
    if AView.DataController.FocusedRecordIndex < 0 then Exit;
    if not func_check_CallCenterYN_WK then
    begin
      GMessagebox('타사콜입니다.' + #13#10 + '상태변경을 할 수 없습니다.', CDMSE);
      Exit;
    end;

    ls_TxLoad := GTx_UnitXmlLoad('C008.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'CANC0008', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', A01_HIS_POPUP.Slip, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', A01_HIS_POPUP.Status, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'BaechaYnString', 'n', [rfReplaceAll]);  // 재접수시 근배 여부 (y/n)

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          Frm_Main.Frm_JON03[Jon03Tag].proc_recieve(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.pm_ReAcceptClick(Sender: TObject);
var
  ls_TxLoad, rv_str, ls_rxxml : String;
  ErrCode: integer;
  slReceive: TStringList;
begin
  SetDebugeWrite('Frm_JON012.pm_ReAcceptClick');
  try
    if cxGVeOrderList.DataController.FocusedRecordIndex < 0 then Exit;
    if not func_check_CallCenterYN(cxGVeOrderList) then
    begin
      GMessagebox('타사콜입니다.' + #13#10 + '상태변경을 할 수 없습니다.', CDMSE);
      Exit;
    end;

    ls_TxLoad := GTx_UnitXmlLoad('C008.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'CANC0008', [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', A01_HIS_POPUP.Slip, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', A01_HIS_POPUP.Status, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'BaechaYnString', 'n', [rfReplaceAll]);  // 재접수시 근배 여부 (y/n)
    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          Frm_Main.Frm_JON03[Jon03Tag].proc_recieve(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.pm_Recon1Click(Sender: TObject);
var
	iArea1, iArea2, iKeyNum, iRow, iCustNum, ErrCode : Integer;
  ls_TxLoad, ls_TxQry, sQueryTemp, sCustTel, sBrNo, rv_str, ls_rxxml: string;
  slReceive: TStringList;
	AView: TcxGridDBTableView;
begin
  SetDebugeWrite('Frm_JON012.pm_Recon1Click');
	try
   	AView := GetCurrentView;
		if TPopupmenu(Sender).Tag in [0,1] then
			iRow := AView.DataController.FocusedRecordIndex;

		if iRow < 0 then Exit;
		if not func_check_CallCenterYN_WK then
		begin
      GMessagebox('타사콜입니다.' + #13#10 + '상태변경을 할 수 없습니다.', CDMSE);
      Exit;
    end;

    with Frm_Main.Frm_JON03[Jon03Tag] do
    begin
      if grpSetBrch_select.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetBrch_select.BringToFront;
				Exit;
      end;
      if ( Assigned(Frm_JON15) ) And ( Frm_JON15 <> Nil ) then
      begin
        if frm_JON15.Visible then
        begin
					GMessagebox('오더취소창을 닫고 작업해 주세요', CDMSE);
				{  Frm_JON15.rg_Cancelchoice.SetFocus;
          if Trim(A01_HIS_POPUP.Slip)<>'' then
          begin
						Frm_JON15.gSlip :=A01_HIS_POPUP.Slip;
						Frm_JON15.gStatus :=A01_HIS_POPUP.Status;
					end;  }
					Frm_JON15.Show;
          Exit;
        end;
      end;
      if grpSetPanelty.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetPanelty.BringToFront;
        RadioGroup1.SetFocus;
        Exit;
      end;
      if grpSetcancel_charge.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetcancel_charge.BringToFront;
        ed_cancel_charge.SetFocus;
				Exit;
      end;
    end;

    Frm_Main.Frm_JON03[Jon03Tag].AAutoSearch_Stop := False;
    Frm_Main.Frm_JON03[Jon03Tag].tmr_dis.Enabled := False;
    Frm_Main.Frm_JON03[Jon03Tag].PnlAuto.Visible := False;

		iArea1 := AView.GetColumnByFieldName('출발지').Index;
		iArea2 := AView.GetColumnByFieldName('도착지').Index;
		iKeyNum := AView.GetColumnByFieldName('대표번호').Index;

    sBrNo := Frm_Main.Frm_JON01N[Self.Tag].Proc_BRNOSearch;

		// 고객번호 찾기
		iCustNum := AView.GetColumnByFieldName('고객연락처').Index;
		sCustTel := AView.DataController.Values[iRow, iCustNum];
		sCustTel := StringReplace(sCustTel, '-', '', [rfReplaceAll]);

    if TPopupMenu(Sender).Tag in [0, 1] then
		begin
      if Not Assigned(Frm_JON15) then Frm_JON15 := TFrm_JON15.Create(Nil);

      if TPopupmenu(Sender).Tag = 1 then
        frm_JON15.pnlTitle.Caption := '  취소하기'
      else
        frm_JON15.pnlTitle.Caption := '  취소+재접수';

      Frm_JON15.Jon03Tag := Self.Jon03Tag;
      frm_JON15.RbCheckBox1.Visible := False;
      frm_JON15.Left := (frm_Main.Width - Frm_Main.Frm_JON01N[Self.Tag].Width - frm_JON15.Width) div 2;
			frm_JON15.top := (frm_Main.Height - frm_JON15.Height) div 2;
      if frm_JON15.top <= 10 then frm_JON15.top := 10;
			frm_JON15.ed_cancel_custnum.Text := sCustTel;
			frm_JON15.ed_cancel_custname.Text := '';//frm_Jon03.frmJon011[Self.Tag].edtCuName.Text;
			frm_JON15.ed_cancel_area.Text := AView.DataController.Values[iRow, iArea1];
			frm_JON15.ed_cancel_area2.Text := AView.DataController.Values[iRow, iArea2];
			Frm_JON15.gBrNo  := sBrNo;
			frm_JON15.KeyNum := AView.DataController.Values[iRow, iKeyNum];
      frm_JON15.RbCheckBox1.Visible := False;
      frm_JON15.RbCheckBox1.Checked := False;
      if TPopupMenu(Sender).Tag = 1 then
        frm_JON15.RbCheckBox1.Visible := True;
			Frm_JON15.rdo_Cancel0.checked := True;
			frm_JON15.cb_CancelSMS.Checked := false;

      if Trim(A01_HIS_POPUP.Slip)<>'' then
      begin
				Frm_JON15.gSlip :=A01_HIS_POPUP.Slip;
				Frm_JON15.gStatus :=A01_HIS_POPUP.Status;
			end;
			frm_JON15.Show;
    end else
    if TPopupMenu(Sender).Tag in [2, 5] then
    begin
      if Not Assigned(Frm_COM01) then Frm_COM01 := TFrm_COM01.Create(Nil);
      Frm_COM01.pCOM01Dock.bUnDock := pJON012Dock.bUnDock;
      Frm_COM01.pCOM01Dock.HdNo    := pJON012Dock.HdNo;
      Frm_COM01.pCOM01Dock.BrNo    := pJON012Dock.BrNo;
      Frm_COM01.pCOM01Dock.BrName  := pJON012Dock.BrName;
      Frm_COM01.pCOM01Dock.Gubun   := pJON012Dock.Gubun;
      Frm_COM01.pCOM01Dock.Idx     := pJON012Dock.Idx;

      Frm_COM01.Jon03Tag := Self.Jon03Tag;
      Frm_COM01.Tag := TPopupMenu(Sender).Tag;
      // 2 : 강제배차, 5 : 문자배차, 0 : 접수창 배차
      Frm_COM01.ed_ConfSlip.Text := A01_HIS_POPUP.Slip;
      Frm_COM01.ed_st_cd.Text := A01_HIS_POPUP.Status;
      Frm_COM01.Show;
      Exit;
    end;

    //기사부족 취소문자 메시지 설정값 가져오기
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_BRANCH_SMS_LACK_MSG, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sBrNo]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'WKLACKMSG', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
			begin
        rv_str := slReceive[0];
        if rv_str <> '' then
				begin
					ls_rxxml := rv_str;
          Application.ProcessMessages;
					Frm_Main.Frm_JON03[Jon03Tag].proc_recieve(ls_rxxml);
        end;
      end;
      btnClose.Click; // CDS. 080828. 추가.
    finally
      FreeAndNil(slReceive);
    end;
  except
    Screen.Cursor := crDefault;
	end;
end;

procedure TFrm_JON012.pm_ReconClick(Sender: TObject);
var
  iArea1, iArea2, iKeyNum, iRow, ErrCode : Integer;
  ls_TxLoad, ls_TxQry, sQueryTemp, sCustTel, sBrNo, rv_str, ls_rxxml : String;
  slReceive: TStringList;
begin
  SetDebugeWrite('Frm_JON012.pm_ReconClick');
	try
		if TPopupmenu(Sender).Tag in [0,1] then
			iRow := cxGVeOrderList.DataController.FocusedRecordIndex;

		if iRow < 0 then Exit;

    if not func_check_CallCenterYN(cxGVeOrderList) then
    begin
      GMessagebox('타사콜입니다.' + #13#10 + '상태변경을 할 수 없습니다.', CDMSE);
      Exit;
    end;

    with Frm_Main.Frm_JON03[Jon03Tag] do
    begin
      if grpSetBrch_select.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetBrch_select.BringToFront;
				Exit;
      end;
      if ( Assigned(Frm_JON15) ) And ( Frm_JON15 <> Nil ) then
      begin
        if frm_JON15.Visible then
        begin
					GMessagebox('오더취소창을 닫고 작업해 주세요', CDMSE);
				 { Frm_JON15.rg_Cancelchoice.SetFocus;
          if Trim(A01_HIS_POPUP.Slip)<>'' then
          begin
						Frm_JON15.gSlip :=A01_HIS_POPUP.Slip;
						Frm_JON15.gStatus :=A01_HIS_POPUP.Status;
					end; }
					Frm_JON15.Show;
          Exit;
        end;
      end;
      if grpSetPanelty.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetPanelty.BringToFront;
        RadioGroup1.SetFocus;
        Exit;
      end;
      if grpSetcancel_charge.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetcancel_charge.BringToFront;
        ed_cancel_charge.SetFocus;
				Exit;
      end;
    end;

    Frm_Main.Frm_JON03[Jon03Tag].AAutoSearch_Stop := False;
    Frm_Main.Frm_JON03[Jon03Tag].tmr_dis.Enabled := False;
    Frm_Main.Frm_JON03[Jon03Tag].PnlAuto.Visible := False;

    iArea1 := cxGVeOrderList.GetColumnByFieldName('출발지').Index;
    iArea2 := cxGVeOrderList.GetColumnByFieldName('도착지').Index;
    iKeyNum := cxGVeOrderList.GetColumnByFieldName('대표번호').Index;

    sBrNo := Frm_Main.Frm_JON01N[Self.Tag].Proc_BRNOSearch;
    // 고객번호 찾기
    sCustTel := Frm_Main.Frm_JON01N[Self.Tag].cxtCallTelNum.Text;
    sCustTel := StringReplace(sCustTel, '-', '', [rfReplaceAll]);

    if TPopupMenu(Sender).Tag in [0, 1] then
    begin
      if Not Assigned(Frm_JON15) then Frm_JON15 := TFrm_JON15.Create(Nil);

      if TPopupmenu(Sender).Tag = 1 then
        frm_JON15.pnlTitle.Caption := '  취소하기'
      else
        frm_JON15.pnlTitle.Caption := '  취소+재접수';

      Frm_JON15.Jon03Tag := Self.Jon03Tag;
      frm_JON15.RbCheckBox1.Visible := False;
      frm_JON15.Left := (frm_Main.Width - Frm_Main.Frm_JON01N[Self.Tag].Width - frm_JON15.Width) div 2;
      frm_JON15.top := (frm_Main.Height - frm_JON15.Height) div 2;
      if frm_JON15.top <= 10 then frm_JON15.top := 10;
      frm_JON15.ed_cancel_custnum.Text := sCustTel;
      frm_JON15.ed_cancel_custname.Text := Frm_Main.Frm_JON01N[Self.Tag].edtCuName.Text;
      frm_JON15.ed_cancel_area.Text := cxGVeOrderList.DataController.Values[iRow, iArea1];
      frm_JON15.ed_cancel_area2.Text := cxGVeOrderList.DataController.Values[iRow, iArea2];
			Frm_JON15.gBrNo  := sBrNo;
			frm_JON15.KeyNum := cxGVeOrderList.DataController.Values[iRow, iKeyNum];
      frm_JON15.RbCheckBox1.Visible := False;
      frm_JON15.RbCheckBox1.Checked := False;
      if TPopupMenu(Sender).Tag = 1 then
        frm_JON15.RbCheckBox1.Visible := True;
			Frm_JON15.rdo_Cancel0.checked := True;
			frm_JON15.cb_CancelSMS.Checked := false;

      if Trim(A01_HIS_POPUP.Slip)<>'' then
			begin
				Frm_JON15.gSlip :=A01_HIS_POPUP.Slip;
				Frm_JON15.gStatus :=A01_HIS_POPUP.Status;
			end;
			frm_JON15.Show;
    end else
      if TPopupMenu(Sender).Tag in [2, 5] then
    begin
      if Not Assigned(Frm_COM01) then Frm_COM01 := TFrm_COM01.Create(Nil);
      Frm_COM01.pCOM01Dock.bUnDock := pJON012Dock.bUnDock;
      Frm_COM01.pCOM01Dock.HdNo    := pJON012Dock.HdNo;
      Frm_COM01.pCOM01Dock.BrNo    := pJON012Dock.BrNo;
      Frm_COM01.pCOM01Dock.BrName  := pJON012Dock.BrName;
      Frm_COM01.pCOM01Dock.Gubun   := pJON012Dock.Gubun;
      Frm_COM01.pCOM01Dock.Idx     := pJON012Dock.Idx;

      Frm_COM01.Jon03Tag := Self.Jon03Tag;
      Frm_COM01.Tag := TPopupMenu(Sender).Tag;
      // 2 : 강제배차, 5 : 문자배차, 0 : 접수창 배차
      Frm_COM01.ed_ConfSlip.Text := A01_HIS_POPUP.Slip;
      Frm_COM01.ed_st_cd.Text := A01_HIS_POPUP.Status;
      Frm_COM01.Show;
      Exit;
    end;

    //기사부족 취소문자 메시지 설정값 가져오기
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_BRANCH_SMS_LACK_MSG, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sBrNo]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'WKLACKMSG', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
			begin
        rv_str := slReceive[0];
        if rv_str <> '' then
				begin
					ls_rxxml := rv_str;
          Application.ProcessMessages;
					Frm_Main.Frm_JON03[Jon03Tag].proc_recieve(ls_rxxml);
        end;
      end;
      btnClose.Click; // CDS. 080828. 추가.
    finally
      FreeAndNil(slReceive);
    end;
  except
    Screen.Cursor := crDefault;
	end;
end;

procedure TFrm_JON012.pm_reservation1Click(Sender: TObject);
var
  ls_TxLoad, rv_str, ls_rxxml: string;
  iRow, ErrCode: integer;
  slReceive: TStringList;
	AView: TcxGridDBTableView;
begin
  SetDebugeWrite('Frm_JON012.pm_reservation1Click');
  try
   	AView := GetCurrentView;
    iRow := AView.DataController.FocusedRecordIndex;
    if iRow < 0 then Exit;

    if not func_check_CallCenterYN_WK then
    begin
      GMessagebox('타사콜입니다.' + #13#10 + '상태변경을 할 수 없습니다.', CDMSE);
      Exit;
    end;

    ls_TxLoad := GTx_UnitXmlLoad('C007.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'RESV000' + IntToStr(TPopupMenu(Sender).Tag), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', A01_HIS_POPUP.Slip, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', A01_HIS_POPUP.Status, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'GubunCodeString', IntToStr(TPopupMenu(Sender).Tag), [rfReplaceAll]);
    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          Frm_Main.Frm_JON03[Jon03Tag].proc_recieve(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.pm_reservationClick(Sender: TObject);
var
  ls_TxLoad, rv_str, ls_rxxml : String;
  iRow, ErrCode : Integer;
  slReceive: TStringList;
begin
  SetDebugeWrite('Frm_JON012.pm_reservationClick');
  try
    iRow := cxGVeOrderList.DataController.FocusedRecordIndex;
    if iRow < 0 then Exit;

    if not func_check_CallCenterYN(cxGVeOrderList) then
    begin
      GMessagebox('타사콜입니다.' + #13#10 + '상태변경을 할 수 없습니다.', CDMSE);
      Exit;
    end;

    ls_TxLoad := GTx_UnitXmlLoad('C007.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'RESV000' + IntToStr(TPopupMenu(Sender).Tag), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', A01_HIS_POPUP.Slip, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', A01_HIS_POPUP.Status, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'GubunCodeString', IntToStr(TPopupMenu(Sender).Tag), [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          Frm_Main.Frm_JON03[Jon03Tag].proc_recieve(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.pm_smsRecon1Click(Sender: TObject);
var
	iArea1, iArea2, iKeyNum, iRow, iCustNum, ErrCode : Integer;
  ls_TxLoad, ls_TxQry, sQueryTemp, sCustTel, sBrNo, rv_str, ls_rxxml : String;
  slReceive: TStringList;
	AView: TcxGridDBTableView;
begin
  SetDebugeWrite('Frm_JON012.pm_smsRecon1Click');
	try
   	AView := GetCurrentView;
		if TPopupmenu(Sender).Tag in [0,1] then
			iRow := AView.DataController.FocusedRecordIndex;

		if iRow < 0 then Exit;
		if not func_check_CallCenterYN_WK then
		begin
      GMessagebox('타사콜입니다.' + #13#10 + '상태변경을 할 수 없습니다.', CDMSE);
      Exit;
    end;

    with Frm_Main.Frm_JON03[Jon03Tag] do
    begin
      if grpSetBrch_select.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetBrch_select.BringToFront;
				Exit;
      end;
      if ( Assigned(Frm_JON15) ) And ( Frm_JON15 <> Nil ) then
      begin
        if frm_JON15.Visible then
				begin
					GMessagebox('오더취소창을 닫고 작업해 주세요', CDMSE);
				{  Frm_JON15.rg_Cancelchoice.SetFocus;
          if Trim(A01_HIS_POPUP.Slip)<>'' then
          begin
						Frm_JON15.gSlip :=A01_HIS_POPUP.Slip;
						Frm_JON15.gStatus :=A01_HIS_POPUP.Status;
					end;  }
					Frm_JON15.Show;
          Exit;
        end;
      end;
      if grpSetPanelty.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetPanelty.BringToFront;
        RadioGroup1.SetFocus;
        Exit;
      end;
      if grpSetcancel_charge.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetcancel_charge.BringToFront;
        ed_cancel_charge.SetFocus;
				Exit;
      end;
    end;

    Frm_Main.Frm_JON03[Jon03Tag].AAutoSearch_Stop := False;
    Frm_Main.Frm_JON03[Jon03Tag].tmr_dis.Enabled := False;
    Frm_Main.Frm_JON03[Jon03Tag].PnlAuto.Visible := False;

		iArea1 := AView.GetColumnByFieldName('출발지').Index;
		iArea2 := AView.GetColumnByFieldName('도착지').Index;
		iKeyNum := AView.GetColumnByFieldName('대표번호').Index;

    sBrNo := Frm_Main.Frm_JON01N[Self.Tag].Proc_BRNOSearch;

		// 고객번호 찾기
		iCustNum := AView.GetColumnByFieldName('고객연락처').Index;
		sCustTel := AView.DataController.Values[iRow, iCustNum];
		sCustTel := StringReplace(sCustTel, '-', '', [rfReplaceAll]);

    if TPopupMenu(Sender).Tag in [0, 1] then
		begin
      if Not Assigned(Frm_JON15) then Frm_JON15 := TFrm_JON15.Create(Nil);

      if TPopupmenu(Sender).Tag = 1 then
        frm_JON15.pnlTitle.Caption := '  취소하기'
      else
        frm_JON15.pnlTitle.Caption := '  취소+재접수';

      Frm_JON15.Jon03Tag := Self.Jon03Tag;
      frm_JON15.RbCheckBox1.Visible := False;
      frm_JON15.Left := (frm_Main.Width - Frm_Main.Frm_JON01N[Self.Tag].Width - frm_JON15.Width) div 2;
			frm_JON15.top := (frm_Main.Height - frm_JON15.Height) div 2;
      if frm_JON15.top <= 10 then frm_JON15.top := 10;
			frm_JON15.ed_cancel_custnum.Text := sCustTel;
			frm_JON15.ed_cancel_custname.Text := '';//frm_Jon03.frmJon011[Self.Tag].edtCuName.Text;
			frm_JON15.ed_cancel_area.Text := AView.DataController.Values[iRow, iArea1];
			frm_JON15.ed_cancel_area2.Text := AView.DataController.Values[iRow, iArea2];
			Frm_JON15.gBrNo  := sBrNo;
			frm_JON15.KeyNum := AView.DataController.Values[iRow, iKeyNum];
			frm_JON15.RbCheckBox1.Visible := False;
      frm_JON15.RbCheckBox1.Checked := False;
      if TPopupMenu(Sender).Tag = 1 then
        frm_JON15.RbCheckBox1.Visible := True;
			Frm_JON15.rdo_Cancel0.checked := True;
			frm_JON15.cb_CancelSMS.Checked := false;

      if Trim(A01_HIS_POPUP.Slip)<>'' then
      begin
				Frm_JON15.gSlip :=A01_HIS_POPUP.Slip;
				Frm_JON15.gStatus :=A01_HIS_POPUP.Status;
			end;
			frm_JON15.Show;
    end else
    if TPopupMenu(Sender).Tag in [2, 5] then
    begin
      if Not Assigned(Frm_COM01) then Frm_COM01 := TFrm_COM01.Create(Nil);
      Frm_COM01.pCOM01Dock.bUnDock := pJON012Dock.bUnDock;
      Frm_COM01.pCOM01Dock.HdNo    := pJON012Dock.HdNo;
      Frm_COM01.pCOM01Dock.BrNo    := pJON012Dock.BrNo;
      Frm_COM01.pCOM01Dock.BrName  := pJON012Dock.BrName;
      Frm_COM01.pCOM01Dock.Gubun   := pJON012Dock.Gubun;
      Frm_COM01.pCOM01Dock.Idx     := pJON012Dock.Idx;
      Frm_COM01.Jon03Tag := Self.Jon03Tag;
      Frm_COM01.Tag := TPopupMenu(Sender).Tag;
      // 2 : 강제배차, 5 : 문자배차, 0 : 접수창 배차
      Frm_COM01.ed_ConfSlip.Text := A01_HIS_POPUP.Slip;
      Frm_COM01.ed_st_cd.Text := A01_HIS_POPUP.Status;
      Frm_COM01.Show;
      Exit;
    end;

    //기사부족 취소문자 메시지 설정값 가져오기
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_BRANCH_SMS_LACK_MSG, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sBrNo]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'WKLACKMSG', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
			begin
        rv_str := slReceive[0];
        if rv_str <> '' then
				begin
					ls_rxxml := rv_str;
          Application.ProcessMessages;
					Frm_Main.Frm_JON03[Jon03Tag].proc_recieve(ls_rxxml);
        end;
      end;
      btnClose.Click; // CDS. 080828. 추가.
    finally
      FreeAndNil(slReceive);
    end;
  except
    Screen.Cursor := crDefault;
	end;
end;

procedure TFrm_JON012.pm_smsReconClick(Sender: TObject);
var
  iArea1, iArea2, iKeyNum, iRow, ErrCode : Integer;
  ls_TxLoad, ls_TxQry, sQueryTemp, sCustTel, sBrNo, rv_str, ls_rxxml : String;
  slReceive: TStringList;
begin
  SetDebugeWrite('Frm_JON012.pm_smsReconClick');
	try
		if TPopupmenu(Sender).Tag in [0,1] then
			iRow := cxGVeOrderList.DataController.FocusedRecordIndex;

		if iRow < 0 then Exit;
    if not func_check_CallCenterYN(cxGVeOrderList) then
    begin
      GMessagebox('타사콜입니다.' + #13#10 + '상태변경을 할 수 없습니다.', CDMSE);
      Exit;
    end;

    with Frm_Main.Frm_JON03[Jon03Tag] do
    begin
      if grpSetBrch_select.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetBrch_select.BringToFront;
				Exit;
      end;
      if ( Assigned(Frm_JON15) ) And ( Frm_JON15 <> Nil ) then
      begin
        if frm_JON15.Visible then
				begin
					GMessagebox('오더취소창을 닫고 작업해 주세요', CDMSE);
				 {	Frm_JON15.rg_Cancelchoice.SetFocus;
          if Trim(A01_HIS_POPUP.Slip)<>'' then
          begin
						Frm_JON15.gSlip :=A01_HIS_POPUP.Slip;
						Frm_JON15.gStatus :=A01_HIS_POPUP.Status;
					end;  }
					Frm_JON15.Show;
          Exit;
        end;
      end;
      if grpSetPanelty.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetPanelty.BringToFront;
        RadioGroup1.SetFocus;
        Exit;
      end;
      if grpSetcancel_charge.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetcancel_charge.BringToFront;
        ed_cancel_charge.SetFocus;
				Exit;
      end;
    end;

    Frm_Main.Frm_JON03[Jon03Tag].AAutoSearch_Stop := False;
    Frm_Main.Frm_JON03[Jon03Tag].tmr_dis.Enabled := False;
    Frm_Main.Frm_JON03[Jon03Tag].PnlAuto.Visible := False;

    iArea1 := cxGVeOrderList.GetColumnByFieldName('출발지').Index;
    iArea2 := cxGVeOrderList.GetColumnByFieldName('도착지').Index;
    iKeyNum := cxGVeOrderList.GetColumnByFieldName('대표번호').Index;

    sBrNo := Frm_Main.Frm_JON01N[Self.Tag].Proc_BRNOSearch;
    // 고객번호 찾기
    sCustTel := Frm_Main.Frm_JON01N[Self.Tag].cxtCallTelNum.Text;
    sCustTel := StringReplace(sCustTel, '-', '', [rfReplaceAll]);

    if TPopupMenu(Sender).Tag in [0, 1] then
    begin
      if TPopupmenu(Sender).Tag = 1 then
        frm_JON15.pnlTitle.Caption := '  취소하기'
      else
        frm_JON15.pnlTitle.Caption := '  취소+재접수';

      Frm_JON15.Jon03Tag := Self.Jon03Tag;
      frm_JON15.RbCheckBox1.Visible := False;
      frm_JON15.Left := (frm_Main.Width - Frm_Main.Frm_JON01N[Self.Tag].Width - frm_JON15.Width) div 2;
      frm_JON15.top := (frm_Main.Height - frm_JON15.Height) div 2;
      if frm_JON15.top <= 10 then frm_JON15.top := 10;
      frm_JON15.ed_cancel_custnum.Text := sCustTel;
      frm_JON15.ed_cancel_custname.Text := Frm_Main.Frm_JON01N[Self.Tag].edtCuName.Text;
      frm_JON15.ed_cancel_area.Text := cxGVeOrderList.DataController.Values[iRow, iArea1];
      frm_JON15.ed_cancel_area2.Text := cxGVeOrderList.DataController.Values[iRow, iArea2];
      frm_JON15.KeyNum := cxGVeOrderList.DataController.Values[iRow, iKeyNum];
      frm_JON15.RbCheckBox1.Visible := False;
      frm_JON15.RbCheckBox1.Checked := False;
      if TPopupMenu(Sender).Tag = 1 then
        frm_JON15.RbCheckBox1.Visible := True;
			Frm_JON15.rdo_Cancel0.checked := True;
      frm_JON15.cb_CancelSMS.Checked := false;

      if Trim(A01_HIS_POPUP.Slip)<>'' then
      begin
				Frm_JON15.gSlip :=A01_HIS_POPUP.Slip;
				Frm_JON15.gStatus :=A01_HIS_POPUP.Status;
			end;
			frm_JON15.Show;
    end else
    if TPopupMenu(Sender).Tag in [2, 5] then
    begin
      if Not Assigned(Frm_COM01) then Frm_COM01 := TFrm_COM01.Create(Nil);
      Frm_COM01.pCOM01Dock.bUnDock := pJON012Dock.bUnDock;
      Frm_COM01.pCOM01Dock.HdNo    := pJON012Dock.HdNo;
      Frm_COM01.pCOM01Dock.BrNo    := pJON012Dock.BrNo;
      Frm_COM01.pCOM01Dock.BrName  := pJON012Dock.BrName;
      Frm_COM01.pCOM01Dock.Gubun   := pJON012Dock.Gubun;
      Frm_COM01.pCOM01Dock.Idx     := pJON012Dock.Idx;

      Frm_COM01.Tag := TPopupMenu(Sender).Tag;
      // 2 : 강제배차, 5 : 문자배차, 0 : 접수창 배차
      Frm_COM01.ed_ConfSlip.Text := A01_HIS_POPUP.Slip;
      Frm_COM01.ed_st_cd.Text := A01_HIS_POPUP.Status;
      Frm_COM01.Show;
      Exit;
    end;

    //기사부족 취소문자 메시지 설정값 가져오기
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_BRANCH_SMS_LACK_MSG, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sBrNo]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'WKLACKMSG', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
			begin
        rv_str := slReceive[0];
        if rv_str <> '' then
				begin
					ls_rxxml := rv_str;
          Application.ProcessMessages;
					Frm_Main.Frm_JON03[Jon03Tag].proc_recieve(ls_rxxml);
        end;
      end;
      btnClose.Click; // CDS. 080828. 추가.
    finally
      FreeAndNil(slReceive);
    end;
  except
    Screen.Cursor := crDefault;
	end;
end;

procedure TFrm_JON012.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON012.pnlTitleResize(Sender: TObject);
begin
  pnlColorSet.Left := cxBtnColorSet.Left - pnlColorSet.Width;
end;

procedure TFrm_JON012.PopupMenu1Popup(Sender: TObject);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
	iInDate, li_Status, iRow, iSlip, iWkSabun, iTmp, iLen, ErrCode : Integer;
	sInDate, sDate, sWkSabun, ls_TxLoad, cDate, cDate2, ls_rxxml, rv_str, sWkHp, swkPhon, sBizDate2 : string;
	sList, slReceive: TStringList;
begin
	SetDebugeWrite('Frm_JON012.PopupMenu1Popup');
	try
		Pop_Yn := true;
		try
			iRow := cxGVeOrderList.DataController.FocusedRecordIndex;

			if iRow < 0 then
      begin
        pm_Cancel.Enabled := False;
        pm_CanReAcc.Enabled := False;
        pm_Panelty.Enabled := False;
        pm_CanRes.Enabled := False;
        pm_ReAccept.Enabled := False;
        pm_complete.Enabled := False;
        pm_reservation.Enabled := False;
				pm_cancellation.Enabled := False;
        pm_edit.Enabled := False;
        pm_Recon.Enabled := False;
        pm_smsRecon.Enabled := False;
        N3.Enabled := False;
        N4.Enabled := False;
        N5.Enabled := False;
        N7.Enabled := False; //기사배차차단
        N8.Enabled := False; //기사배차차단
        Exit;
      end;

      pm_Edit.Enabled := True;
      if TCK_USER_PER.JON_Recon <> '1' then
        pm_Recon.Visible := True;
      if TCK_USER_PER.JON_SMSRecon <> '1' then
        pm_smsRecon.Visible := True;

			iInDate := cxGVeOrderList.GetColumnByFieldName('접수일시').Index;
			sInDate := cxGVeOrderList.DataController.Values[iRow, iInDate];
			sIndate := copy(sIndate, 1, 19);
      sDate := StartDateTime('yyyy-mm-dd hh:nn:ss');

      iWkSabun := cxGVeOrderList.GetColumnByFieldName('기사').Index;
      iTmp := LastDelimiter(')', cxGVeOrderList.DataController.Values[iRow, iWkSabun]);
      iLen := Length( cxGVeOrderList.DataController.Values[iRow, iWkSabun] );
      sWkSabun := Copy(cxGVeOrderList.DataController.Values[iRow, iWkSabun], iTmp + 1, iLen - iTmp);

      N7.Enabled := False; //고객배차차단
      N8.Enabled := False; //법인배차차단

      pm_Cancel.Enabled := False;
      pm_Panelty.Enabled := False;
      pm_ReAccept.Enabled := False;
      pm_complete.Enabled := False;
      pm_reservation.Enabled := False;
      pm_cancellation.Enabled := False;
      pm_CanReAcc.Enabled := False;
      pm_CanRes.Enabled := False;

      N5.Enabled := False;

      // [엑셀다운] 접수엑셀권한 있을 경우 표시
      if GT_USERIF.Excel_Use <> 'n' then
        N6.Visible := (TCK_USER_PER.JON_ExcelDown = '1');

      pm_Recon.Enabled := False;
      pm_smsRecon.Enabled := False;
//      pm_edit.Enabled := False;
      N3.Enabled := False;
      N4.Enabled := False;
      if (sInDate >= sDate) then
      begin
        N5.Enabled := True;
        iSlip := cxGVeOrderList.GetColumnByFieldName('접수번호').Index;
        A01_HIS_POPUP.Slip := cxGVeOrderList.DataController.Values[iRow, iSlip];
        li_Status := cxGVeOrderList.GetColumnByFieldName('상태').Index;
        A01_HIS_POPUP.Status := cxGVeOrderList.DataController.Values[iRow, li_Status];
				if A01_HIS_POPUP.Status = 'D' then A01_HIS_POPUP.Status := '1';

        A01_HIS_POPUP.WkSabun := sWkSabun;
        A01_HIS_POPUP.WkName := cxGVeOrderList.DataController.Values[iRow, iWkSabun];

        A01_HIS_POPUP.Idx := Self.Tag;
				if A01_HIS_POPUP.Status = '' then
          A01_HIS_POPUP.Status := 'A';

        sList := TStringList.Create;
        sList.Delimiter := ')';
        sList.DelimitedText := A01_HIS_POPUP.WkName;
        if sList.Count > 1 then
        begin
          A01_HIS_POPUP.WkSabun := sList.Strings[sList.count - 1];

          try
						ls_TxLoad := GTx_UnitXmlLoad('C015.XML');
            ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
            ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
            ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'HINT0003', [rfReplaceAll]);

            ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '3', [rfReplaceAll]);
        		ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', A01_HIS_POPUP.WkSabun, [rfReplaceAll]);

						cDate := cxGVeOrderList.DataController.Values[iRow, iInDate];
						cDate := StringReplace(cDate, ' ', '', [rfReplaceAll]);
            cDate2 := StartDateTime('yyyy-mm-dd hh:nn:ss');
            cDate2 := StringReplace(cDate2, ' ', '', [rfReplaceAll]);
            if (cDate < cDate2) then
              ls_TxLoad := StringReplace(ls_TxLoad, 'Param2String', '', [rfReplaceAll])   // 과거오더
            else
              ls_TxLoad := StringReplace(ls_TxLoad, 'Param2String', '0', [rfReplaceAll]);  // 당일오더

            if (GS_PRJ_AREA = 'O') and (Pos('㉹',A01_HIS_POPUP.WkName) = 1) and (GT_USERIF.WKVPhone = 'y') then
               ls_TxLoad := StringReplace(ls_TxLoad, 'VPhoneString', 'y', [rfReplaceAll])
            else
               ls_TxLoad := StringReplace(ls_TxLoad, 'VPhoneString', '', [rfReplaceAll]);

						ls_TxLoad := StringReplace(ls_TxLoad, 'Conf_slipString', A01_HIS_POPUP.Slip, [rfReplaceAll]); //접수번호추가
        		slReceive := TStringList.Create;
            try
              if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
              begin
                rv_str := slReceive[0];
                if rv_str <> '' then
                begin
                  ls_rxxml := rv_str;
                  Application.ProcessMessages;
                  xdom := ComsDomDocument.Create;
                  try
                    if not xdom.loadXML(ls_rxxml) then Exit;
                    lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Accept');
        						sWkHp := lst_Result.item[0].attributes.getNamedItem('Info3').Text;
        						swkPhon := lst_Result.item[0].attributes.getNamedItem('Info2').Text;

                    if sWkHp <> '' then
        							A01_HIS_POPUP.WkTel := CallToStr(sWkHp)
                    else
                      A01_HIS_POPUP.WkTel := CallToStr(swkPhon);
                  finally
                    xdom := nil;
                  end;
                end;
              end;
            finally
              FreeAndNil(slReceive);
            end;
          except on E: Exception do
            Assert(False, E.Message);
          end;
        end else
        begin
          A01_HIS_POPUP.WkSabun := '';
          A01_HIS_POPUP.WkTel := '';
        end;

        FreeAndNil(sList);

        case A01_HIS_POPUP.Status[1] of
          '0': //접수
            begin
              pm_Cancel.Enabled := True;
              pm_reservation.Enabled := True;

              pm_Edit.Enabled := True;
              if TCK_USER_PER.JON_Recon <> '1' then
                pm_Recon.Visible := True;
              if TCK_USER_PER.JON_SMSRecon <> '1' then
                pm_smsRecon.Visible := True;
              N4.Enabled := True;
            end;
					'1', 'B', 'C', 'M': //배차
            begin
              pm_Cancel.Enabled := True;
              pm_Panelty.Enabled := True;
              pm_CanReAcc.Enabled := True;
              pm_CanRes.Enabled := True;
              pm_complete.Enabled := True;
              pm_reservation.Enabled := True;

              N4.Enabled := True;
              N3.Enabled := True;
              pm_Edit.Enabled := True;
            end;

          '2': //완료
            begin
              pm_Cancel.Enabled := True;
              pm_Panelty.Enabled := True;
              pm_CanReAcc.Enabled := True;

              pm_Edit.Enabled := True;
              N4.Enabled := True;
            end;

          '3': //강제
            begin
              pm_Cancel.Enabled := True;
              pm_Panelty.Enabled := True;
              pm_CanReAcc.Enabled := True;
              pm_CanRes.Enabled := True;
              pm_complete.Enabled := True;

              pm_Edit.Enabled := True;
              N4.Enabled := True;
              N3.Enabled := True;
            end;

          '4': //문의
            begin
              pm_Cancel.Enabled := True;
              pm_ReAccept.Enabled := True;

              pm_Edit.Enabled := True;
              if TCK_USER_PER.JON_Recon <> '1' then
                pm_Recon.Visible := True;
              if TCK_USER_PER.JON_SMSRecon <> '1' then
                pm_smsRecon.Visible := True;
              N4.Enabled := True;
              pm_reservation.Enabled := True;
            end;

          '5': //대기
            begin
              pm_Cancel.Enabled := True;
              pm_ReAccept.Enabled := True;
              pm_cancellation.Enabled := True;

              pm_Edit.Enabled := True;
              if TCK_USER_PER.JON_Recon <> '1' then
                pm_Recon.Visible := True;
              if TCK_USER_PER.JON_SMSRecon <> '1' then
                pm_smsRecon.Visible := True;
              N4.Enabled := True;
            end;
          '8': //취소
            begin
              pm_ReAccept.Enabled := True;

              pm_Edit.Enabled := True;
              if TCK_USER_PER.JON_Recon <> '1' then
                pm_Recon.Visible := True;
              if TCK_USER_PER.JON_SMSRecon <> '1' then
                pm_smsRecon.Visible := True;
              N4.Enabled := True;
              pm_reservation.Enabled := True;

              if GB_365System then    // 원주 365는 취소상태일경우 아래 배차메뉴 숨김처리
              begin
                pm_Recon.Visible := False;           // 강제배차
                pm_smsRecon.Visible := False;        // 문자배차
                N3.Visible := False;                 // 재배차
                N4.Visible := False;                 // 타사배차
              end;
            end;

          'R': // 예약
            begin
              pm_Cancel.Enabled := True;
              pm_reservation.Enabled := True;

              pm_Edit.Enabled := True;
              if TCK_USER_PER.JON_Recon <> '1' then
                pm_Recon.Visible := True;
              if TCK_USER_PER.JON_SMSRecon <> '1' then
                pm_smsRecon.Visible := True;
              N4.Enabled := True;
            end;
        else
          pm_Edit.Enabled := False;
          pm_Cancel.Enabled := False;
          pm_Recon.Enabled := False;
          pm_smsRecon.Enabled := False;
          pm_reservation.Enabled := False;
          pm_cancellation.Enabled := False;
          pm_ReAccept.Enabled := False;
          pm_complete.Enabled := False;
          pm_panelty.Enabled := False;
          pm_CanReAcc.Enabled := False;
          pm_CanRes.Enabled := False;
          N4.Enabled := False;
          N3.Enabled := False;
        end;
      end else
      begin
        pm_Edit.Enabled := True;

        A01_HIS_POPUP.Slip:='_';
        A01_HIS_POPUP.Status:='';
			end;

      if sWkSabun <> '' then
      begin
        N7.Enabled := True; //고객배차제한
        if (Frm_Main.Frm_JON01N[Self.Tag].CbCuGb.ItemIndex = 2  ) And
           (Frm_Main.Frm_JON01N[Self.Tag].cxtCuBubin.Hint <> '' ) then N8.Visible := True;  //법인배차제한
      end;
    except
      pm_Edit.Enabled := False;
      pm_Cancel.Enabled := False;
      pm_Recon.Enabled := False;
      pm_smsRecon.Enabled := False;
      pm_reservation.Enabled := False;
      pm_cancellation.Enabled := False;
      pm_ReAccept.Enabled := False;
      pm_complete.Enabled := False;
      pm_panelty.Enabled := False;
      pm_CanReAcc.Enabled := False;
      pm_CanRes.Enabled := False;
    end;
  finally
    Pop_Yn := false;
  end;
end;

procedure TFrm_JON012.PopupMenu2Popup(Sender: TObject);
var
	iInDate, li_Status, iRow, iSlip, iKeyNumber : Integer;
	sInDate, sDate, sSlip, sKeyNumber : string;
	sList: TStringList;
	AView: TcxGridDBTableView;
begin
  SetDebugeWrite('Frm_JON012.PopupMenu2Popup');
	try
		Pop_Yn := true;
		try
    	AView := GetCurrentView;
			iRow := AView.DataController.FocusedRecordIndex;
      if iRow < 0 then exit;
			iSlip := AView.GetColumnByFieldName('접수번호').Index;
			sSlip := AView.DataController.Values[iRow, iSlip];

			iKeyNumber := AView.GetColumnByFieldName('대표번호').Index;
			sKeyNumber := AView.DataController.Values[iRow, iKeyNumber];
			if scb_KeyNumber.IndexOf(sKeyNumber) < 0 then
				GS_OUR_KEYNUMBER := False;
			if not GS_OUR_KEYNUMBER then
			begin
				pm_Cancel1.Enabled := False;
				pm_CanReAcc1.Enabled := False;
				pm_Panelty1.Enabled := False;
				pm_CanRes1.Enabled := False;
				pm_ReAccept1.Enabled := False;
				pm_complete1.Enabled := False;
				pm_reservation1.Enabled := False;
				pm_cancellation1.Enabled := False;
				pm_edit1.Enabled := False;
				pm_Recon1.Enabled := False;
				pm_smsRecon1.Enabled := False;
				N31.Enabled := False;
				N41.Enabled := False;
				N51.Enabled := False;
				Exit;
			end;

			if iRow < 0 then
			begin
				pm_Cancel1.Enabled := False;
				pm_CanReAcc1.Enabled := False;
				pm_Panelty1.Enabled := False;
				pm_CanRes1.Enabled := False;
				pm_ReAccept1.Enabled := False;
				pm_complete1.Enabled := False;
				pm_reservation1.Enabled := False;
				pm_cancellation1.Enabled := False;
				pm_edit1.Enabled := False;
				pm_Recon1.Enabled := False;
				pm_smsRecon1.Enabled := False;
				N31.Enabled := False;
				N41.Enabled := False;
				N51.Enabled := False;
				Exit;
			end;

			pm_Edit1.Enabled := True;
			if TCK_USER_PER.JON_Recon <> '1' then
				pm_Recon1.Visible := True;
			if TCK_USER_PER.JON_SMSRecon <> '1' then
				pm_smsRecon1.Visible := True;

			iInDate := AView.GetColumnByFieldName('시간').Index;
			sInDate := AView.DataController.Values[iRow, iInDate];
			sIndate := copy(sIndate, 1, 19);
			sDate := StartDateTime('yyyy-mm-dd hh:nn:ss');
			pm_Cancel1.Enabled := False;
			pm_Panelty1.Enabled := False;
			pm_ReAccept1.Enabled := False;
			pm_complete1.Enabled := False;
			pm_reservation1.Enabled := False;
			pm_cancellation1.Enabled := False;
			pm_CanReAcc1.Enabled := False;
			pm_CanRes1.Enabled := False;

			N51.Enabled := False;

			pm_Edit1.Enabled := False;
			pm_Recon1.Enabled := False;
			pm_smsRecon1.Enabled := False;
			pm_edit1.Enabled := False;
			N31.Enabled := False;
			N41.Enabled := False;
      if (sInDate >= sDate) then
      begin
				N51.Enabled := True;
				A01_HIS_POPUP.Slip := sSlip;
				li_Status := AView.GetColumnByFieldName('오더타입').Index;
				A01_HIS_POPUP.Status := AView.DataController.Values[iRow, li_Status];
				if A01_HIS_POPUP.Status = 'D' then A01_HIS_POPUP.Status := '1';

				A01_HIS_POPUP.Idx := Self.Tag;
				if A01_HIS_POPUP.Status = '' then
					A01_HIS_POPUP.Status := 'A';

				A01_HIS_POPUP.WkSabun := sWk_sabun32;
				A01_HIS_POPUP.WkTel := CallToStr(sWkphone);

        FreeAndNil(sList);

        case A01_HIS_POPUP.Status[1] of
          '0': //접수
            begin
							pm_Cancel1.Enabled := True;
							pm_reservation1.Enabled := True;

							pm_Edit1.Enabled := True;
							if TCK_USER_PER.JON_Recon <> '1' then
								pm_Recon1.Visible := True;
              if TCK_USER_PER.JON_SMSRecon <> '1' then
								pm_smsRecon1.Visible := True;
							N41.Enabled := True;
            end;

          '1', 'B', 'C', 'M': //배차
            begin
							pm_Cancel1.Enabled := True;
							pm_Panelty1.Enabled := True;
							pm_CanReAcc1.Enabled := True;
							pm_CanRes1.Enabled := True;
							pm_complete1.Enabled := True;
							pm_reservation1.Enabled := True;

							N41.Enabled := True;
							N31.Enabled := True;
							pm_Edit1.Enabled := True;
            end;

          '2': //완료
            begin
							pm_Cancel1.Enabled := True;
							pm_Panelty1.Enabled := True;
							pm_CanReAcc1.Enabled := True;

							pm_Edit1.Enabled := True;
							N41.Enabled := True;
            end;

          '3': //강제
            begin
							pm_Cancel1.Enabled := True;
							pm_Panelty1.Enabled := True;
							pm_CanReAcc1.Enabled := True;
							pm_CanRes1.Enabled := True;
							pm_complete1.Enabled := True;

							pm_Edit1.Enabled := True;
							N41.Enabled := True;
							N31.Enabled := True;
            end;

          '4': //문의
            begin
							pm_Cancel1.Enabled := True;
							pm_ReAccept1.Enabled := True;

							pm_Edit1.Enabled := True;
              if TCK_USER_PER.JON_Recon <> '1' then
								pm_Recon1.Visible := True;
              if TCK_USER_PER.JON_SMSRecon <> '1' then
								pm_smsRecon1.Visible := True;
							N41.Enabled := True;
							pm_reservation1.Enabled := True;
            end;

          '5': //대기
            begin
							pm_Cancel1.Enabled := True;
							pm_ReAccept1.Enabled := True;
							pm_cancellation1.Enabled := True;

							pm_Edit1.Enabled := True;
              if TCK_USER_PER.JON_Recon <> '1' then
								pm_Recon1.Visible := True;
              if TCK_USER_PER.JON_SMSRecon <> '1' then
								pm_smsRecon1.Visible := True;
							N41.Enabled := True;
            end;

          '8': //취소
            begin
							pm_ReAccept1.Enabled := True;

							pm_Edit1.Enabled := True;
              if TCK_USER_PER.JON_Recon <> '1' then
								pm_Recon1.Visible := True;
              if TCK_USER_PER.JON_SMSRecon <> '1' then
								pm_smsRecon1.Visible := True;
							N41.Enabled := True;
							pm_reservation1.Enabled := True;
            end;

          'R': // 예약
            begin
							pm_Cancel1.Enabled := True;
							pm_reservation1.Enabled := True;

							pm_Edit1.Enabled := True;
              if TCK_USER_PER.JON_Recon <> '1' then
								pm_Recon1.Visible := True;
              if TCK_USER_PER.JON_SMSRecon <> '1' then
								pm_smsRecon1.Visible := True;
							N41.Enabled := True;
            end;
        else
					pm_Edit1.Enabled := False;
					pm_Cancel1.Enabled := False;
					pm_Recon1.Enabled := False;
					pm_smsRecon1.Enabled := False;
					pm_reservation1.Enabled := False;
					pm_cancellation1.Enabled := False;
					pm_ReAccept1.Enabled := False;
					pm_complete1.Enabled := False;
					pm_panelty1.Enabled := False;
					pm_CanReAcc1.Enabled := False;
					pm_CanRes1.Enabled := False;
					N41.Enabled := False;
					N31.Enabled := False;
        end;
      end else
      begin
        A01_HIS_POPUP.Slip:='_';
        A01_HIS_POPUP.Status:='';
			end;
    except
			pm_Edit1.Enabled := False;
      pm_Cancel1.Enabled := False;
      pm_Recon1.Enabled := False;
      pm_smsRecon1.Enabled := False;
      pm_reservation1.Enabled := False;
      pm_cancellation1.Enabled := False;
      pm_ReAccept1.Enabled := False;
      pm_complete1.Enabled := False;
      pm_panelty1.Enabled := False;
      pm_CanReAcc1.Enabled := False;
			pm_CanRes1.Enabled := False;
    end;
  finally
    Pop_Yn := false;
  end;
end;

procedure TFrm_JON012.proc_Change_Title;
const
	ciWid: array[0..48] of Integer = (
//  0     1     2     3     4     5     6     7     8     9
		91,   58,   82,   42,   72,   74,   57,   88,   64,   72,
		93,   112,  64,   64,   64,   64,   64,   64,   64,   64,
		64,   64,   64,   64,   64,   64,   64,   64,   64,   64,
		64,   64,   64,   64,   64,   64,   64,   64,   64,   64,
		64,   64,   64,   64,   64,   64,   64,   64,   64
  );
var
	i, iWidth, iRow: Integer;
  sTmp: string;
begin
	SetDebugeWrite('Frm_JON012.proc_Change_Title');
  try
    // 접속기사 그리드 컬럼이동 설정값 저장.
    GS_EnvFile.EraseSection('UserHis');
    GS_EnvFile.EraseSection('UserHisSize');
    for i := 0 to cxGVeOrderList.ColumnCount - 1 do
    begin
      sTmp := cxGVeOrderList.Columns[i].DataBinding.FieldName;
      GS_EnvFile.WriteString('UserHis', IntToStr(i), sTmp);
			if cxGVeOrderList.Columns[i].Visible then
				GS_EnvFile.WriteInteger('UserHisSize', IntToStr(i), cxGVeOrderList.Columns[i].Width)
      else
				GS_EnvFile.WriteInteger('UserHisSize', IntToStr(i), 0)
    end;
    pGetColumnIndex;

		cxGVeOrderDestList.BeginUpdate;
		try
			//cxGVeOrderDestList.DataController.SetRecordCount(0);
			for i := 0 to cxGVeOrderDestList.ColumnCount - 1 do
			begin
				sTmp := GS_EnvFile.ReadString('UserHis', IntToStr(i), '');
				iWidth := StrToIntDef(GS_EnvFile.ReadString('UserHisSize', IntToStr(i), '0'), 0);

				if lbTitle.Items.IndexOf(sTmp) < 0 then
				begin
					sTmp := '';
					iWidth := 64;
				end;

				if sTmp <> '' then
				begin
					iRow := cxGVeOrderDestList.GetColumnByFieldName(sTmp).Index;
					if iRow = -1 then iRow := i;
				end
				else
					iRow := i;
				cxGVeOrderDestList.Columns[iRow].Index := i;
				cxGVeOrderDestList.Columns[iRow].DataBinding.ValueType := IfThen(sTmp = 'No', 'Integer', 'String');
				cxGVeOrderDestList.Columns[i].Width := IfThen(iWidth = 0, ciwid[i], iWidth);
			end;
		finally
			cxGVeOrderDestList.EndUpdate;
			SetDebugeWrite('cxGVeOrderDestList.EndUpdate');
		end;
  except
  end;
end;

function TFrm_JON012.Proc_CustWorkerOrderSearch_WK(AView : TcxGridDBTableView): boolean;
var
  ACol: Integer;
  sInDate, sDate, sConfSlip: string;
begin
	SetDebugeWrite('Frm_JON012.Proc_CustWorkerOrderSearch_WK');
  try
    Result := False;
		if AView.DataController.FocusedRecordIndex = -1 then Exit;

		ACol    := AView.GetColumnByFieldName('시간').Index;
		sInDate := AView.DataController.Values[AView.DataController.FocusedRecordIndex, ACol];
    sIndate := copy(Trim(sIndate), 1, 19);
		sDate := StartDateTime('yyyy-mm-dd hh:nn:ss');

    if (sInDate < sDate) and (Pos('수정', Frm_Main.Frm_JON01N[Self.Tag].Caption) = 0) then
    begin
      GMessagebox('오늘 데이터가 아닙니다.', CDMSE);
      Exit;
    end;

    with Frm_Main.Frm_JON03[Jon03Tag] do
    begin
      if grpSetBrch_select.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetBrch_select.BringToFront;
        Exit;
      end;
      if ( Assigned(Frm_JON15) ) And ( Frm_JON15 <> Nil ) then
      begin
        if Frm_JON15.Visible then
        begin
          GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
          Frm_JON15.rg_Cancelchoice.SetFocus;
          Exit;
        end;
      end;
      if grpSetPanelty.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetPanelty.BringToFront;
        RadioGroup1.SetFocus;
        Exit;
      end;
      if grpSetcancel_charge.Visible then
      begin
        GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
        grpSetcancel_charge.BringToFront;
        ed_cancel_charge.SetFocus;
        Exit;
      end;
    end;

		// 접수번호
		sConfSlip := AView.DataController.Values[AView.DataController.FocusedRecordIndex,
			AView.GetColumnByFieldName('접수번호').Index];

		if sConfSlip = '' then exit;

		//기사콜링 시 기사 이용내역 > 오더선택하면 리스트 갱신되는거 막기위해 사용 20191204KHS
		Frm_Main.Frm_JON03[Jon03Tag].btnAutoRe.Tag := 99;
	
		Frm_Main.Frm_JON03[Jon03Tag].proc_Acc_Search(7, sConfSlip); // 접수번호로 조회     [기사전화일때,,]

    Result := True;
  Except
    on e: exception do
    begin
      Log('Proc_CustWorkerOrderSearch_WK Error :' + E.Message, LOGDATAPATHFILE);
			Assert(False, 'Proc_CustWorkerOrderSearch_WK Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON012.Proc_WorkerDaily_Statistic(Row1, Row2: Integer);
var
  xdom: msDomDocument;
  lst_Count,lst_Result: IXMLDomNodeList;
  XmlData, Param, ErrMsg: string;
  ls_Rcrd: TStringList;
  I, ErrCode, iCol, iCol2, iSum, iSum2: Integer;
begin
  SetDebugeWrite('Frm_JON012.Proc_WorkerDaily_Statistic');
  try
    iSum := 0;
    iSum2 := 0;

    Param := sWk_sabun32;
    //  Param := GT_OrderInfo.WkSabun;
    Param := Param + '│' + StringReplace(de_stDate.Text,'-','',[rfReplaceAll]);
    Param := Param + '│' + StringReplace(de_edDate.Text,'-','',[rfReplaceAll]);

		if not RequestBase(GetSel05('GETORDERDAILY', 'worker.get_daily_order_statistic', '1000', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('기사 업무 현황 로드 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;

    xdom := ComsDomDocument.Create;
    try
      xdom.loadXML(XmlData);
      lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
      if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
      begin
        cxOrder_Stat.DataController.BeginUpdate;
        try
          lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
          ls_Rcrd := TStringList.Create;
          try
            for I := 0 to lst_Result.length - 1 do
            begin
              GetTextSeperationEx('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
              iCol := cxOrder_Stat.GetColumnByFieldName(ls_Rcrd[0]).Index;
              if iCol <> -1 then
              begin
                if (ls_Rcrd[1] <> '0') and (ls_Rcrd[2] <> '0') then
                begin
                  cxOrder_Stat.DataController.Values[Row1, iCol] := StrToIntDef(ls_Rcrd[1],0);
                  cxOrder_Stat.DataController.Values[Row2, iCol] := StrToIntDef(ls_Rcrd[2],0);
                  iSum := iSum + StrToIntDef(ls_Rcrd[1],0);
                  iSum2 := iSum2 + StrToIntDef(ls_Rcrd[2],0);
                end;
              end;
            end;
          finally
            ls_Rcrd.Free;
          end;
        finally
          cxOrder_Stat.DataController.EndUpdate;
        end;

        //기사 업무현황 통계작업
        iCol2 := cxOrder_Stat.GetColumnByFieldName('합계').Index;
        cxOrder_Stat.DataController.BeginUpdate;
        try
          cxOrder_Stat.DataController.Values[Row1, iCol2] := iSum;
          cxOrder_Stat.DataController.Values[Row2, iCol2] := iSum2;
        finally
          cxOrder_Stat.DataController.EndUpdate;
        end;
      end;
    finally
      xdom := Nil;
    end;
  Except
    on e: exception do
    begin
      Log('Proc_WorkerDaily_Statistic Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Proc_WorkerDaily_Statistic Error :' + Param + '-' + E.Message);
    end;
  end;
end;

procedure TFrm_JON012.Proc_Initialization;
begin
  SetDebugeWrite('Frm_JON012.Proc_Initialization');
  try
    //기사 상세정보 라벨 셋팅...
		lb_wkname_title.Caption := sWK_NAME;
    Memo_WorkerInfo.Lines.Clear;
  	if (GS_PRJ_AREA = 'O') then
      Memo_WorkerInfo.Text := Format('본사명 : %s ' + #13#10 +
                                     '지사명 : %s ' + #13#10 +
                                     '상황실 : %s ' + #13#10 +
                                     '기사명 : %s ' + #13#10 +
                                     '단말기 : %s ' + #13#10 +
                                     '핸드폰 : %s ' + #13#10 +
                                     '입사일 : %s ' + #13#10 +
                                     '우선배차 : %s ' + #13#10 +
                                     '나이 : %s ' + #13#10 +
                                     '성별 : %s ' + #13#10 +
                                     '수수료그룹 : %s ' + #13#10 +
                                     '잔액 : %s ' + #13#10 +
                                     '건수제한 : %s (건)' + #13#10 +
                                     '완료시간 : %s (분)' + #13#10 +
                                     '보험정보 : %s ' + #13#10 +
                                     '보험만료 : %s ' + #13#10 +
                                     '폰정보 : %s ' + #13#10 +
                                     '면허상태 : %s ' + #13#10 +
                                     '업무상태 : %s ' + #13#10 +
                                     '기사등급 : %s ' + #13#10 +
                                     '당일완료콜수 : %s (건)' + #13#10 +
                                     '당일취소콜수 : %s (건)' + #13#10 +
                                     '배차취소율 : %s ' + #13#10 +
                                     '플러스점수 : %s (점)' + #13#10 +
                                     '패널티점수 : %s (점)' + #13#10 +
                                     '스틱/탁송 : %s ' + #13#10 +
                                     '복장상태 : %s ' + #13#10 +
                                     '셔틀등록상태 : %s ' + #13#10 +
                                     '셔틀과금타입 : %s ' + #13#10 +
                                     '태그번호 : %s ' + #13#10 +
                                     '보험구분 : %s ',
                                     ['', '', '', '', '', '', '', '', '', '', ' (%)', '', '', '', '', '', '', '', '', '', '', '', ' (%)', '', '', '', '', '', '', '', ''])
  else
		Memo_WorkerInfo.Text := Format('본사명 : %s ' + #13#10 +
																	 '지사명 : %s ' + #13#10 +
																	 '상황실 : %s ' + #13#10 +
																	 '기사명 : %s ' + #13#10 +
																	 '단말기 : %s ' + #13#10 +
																	 '핸드폰 : %s ' + #13#10 +
																	 '입사일 : %s ' + #13#10 +
																	 '우선배차 : %s ' + #13#10 +
																	 '나이 : %s ' + #13#10 +
																	 '성별 : %s ' + #13#10 +
																	 '수수료그룹 : %s ' + #13#10 +
																	 '잔액 : %s ' + #13#10 +
																	 '건수제한 : %s (건)' + #13#10 +
																	 '완료시간 : %s (분)' + #13#10 +
																	 '보험정보 : %s ' + #13#10 +
																	 '보험만료 : %s ' + #13#10 +
																	 '폰정보 : %s ' + #13#10 +
																	 '면허상태 : %s ' + #13#10 +
																	 '업무상태 : %s ' + #13#10 +
																	 '기사등급 : %s ' + #13#10 +
																	 '당일완료콜수 : %s (건)' + #13#10 +
																	 '당일취소콜수 : %s (건)' + #13#10 +
																	 '배차취소율 : %s ' + #13#10 +
																	 '플러스점수 : %s (점)' + #13#10 +
																	 '패널티점수 : %s (점)' + #13#10 +
																	 '스틱/탁송 : %s ' + #13#10 +
																	 '복장상태 : %s ' + #13#10 +
																	 '셔틀등록상태 : %s ' + #13#10 +
																	 '셔틀과금타입 : %s ' + #13#10 +
																	 '태그번호 : %s ',
																	 ['', '', '', '', '', '', '', '', '', '', ' (%)', '', '', '', '', '', '', '', '', '', '', '', ' (%)', '', '', '', '', '', '', '']);

    lb_penalty.Caption := '. 패널티 : ';
    lb_plus.Caption := '. 플러스 : ';

    cxLblWkNm.Caption := '';
    lblCoCnt.Caption := '';
    lblCuCnt.Caption := '';
    lblCuCancel.Caption := '';

    BtnWCall1.Description := '';
    BtnWCall2.Description := '';

    gWkHdNo := '';

    cxiWkImg.WebPicture := Nil;

    if GS_JON012_POSFIX then cxBtnFixPos.LookAndFeel.SkinName := 'Office2010Silver'
                        else cxBtnFixPos.LookAndFeel.SkinName := 'Sharp';

		//기사 업무 현황 날짜 셋팅
    de_stDate.Date := StrToDate(Date8to10(StartDateTime('yyyymmdd')))-7;
    de_edDate.Date := de_stDate.Date + 7;
    //기사 업무 현황 리스트 초기화
//    cxOrder_Stat.ClearItems;
  Except
    on e: exception do
    begin
      Log('Proc_Initialization Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Proc_Initialization Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON012.Proc_WorkerInfo;
var
	xdom: msDomDocument;
	lst_Result: IXMLDomNodeList;
  sList, ls_Rcrd : TStringList;
	XmlData, Param, ErrMsg, sTmp, sData, sType, sTmpInfo : string;
	I, ErrCode: Integer;
begin
  SetDebugeWrite('Frm_JON012.Proc_WorkerInfo');
  try
    Param := sWk_sabun32;
		if not RequestBase(GetSel05('GETPLUSINFO', 'worker.get_plus_info', '1', Param), XmlData, ErrCode, ErrMsg) then
		begin
      GMessagebox(Format('기사상세정보 로드 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
		end;

    xdom := ComsDomDocument.Create;
    xdom.loadXML(XmlData);
    lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

    sList := TStringList.Create;
    ls_Rcrd := TStringList.Create;
    try
      for I := 0 to lst_Result.length - 1 do
			begin
        if lst_Result.item[i].attributes.getNamedItem('Value').Text = '' then  Continue;
        GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

        lb_wkname_title.Caption := ls_Rcrd[4] + '/' + ls_Rcrd[17];
        lb_penalty.Caption := '패널티 : ' + ls_Rcrd[19];
        lb_plus.Caption := '플러스 : ' + ls_Rcrd[18];

        lblCoCnt.Caption := sFinishCnt + ' 건';
        lblCuCnt.Caption := sCancelCnt + ' 건';
        lblCuCancel.Caption := ls_Rcrd[20];

        sBrtel := ls_Rcrd[2];

        Memo_WorkerInfo.Lines.Clear;
				Memo_WorkerInfo.Lines.Add(Format('본사명 : %s ',[ls_Rcrd[0]]));
        Memo_WorkerInfo.Lines.Add(Format('지사명 : %s ',[ls_Rcrd[1]]));

        sType := 'Tel';
        sData := ls_Rcrd[2];
        Memo_WorkerInfo.Lines.Add(Format('상황실 : %s ',[Data_Parser(sData, sType)]));
        Memo_WorkerInfo.Lines.Add(Format('기사명 : %s ',[ls_Rcrd[4]]));
				cxLblWkNm.Caption := ls_Rcrd[4];

        if ls_Rcrd.Count > 24 then
        begin
          if (GS_PRJ_AREA = 'O') and (GT_USERIF.HD <> ls_Rcrd[25]) and (GT_USERIF.WKVPhone = 'y') then
          begin
            sData := ls_Rcrd[26];
            sWkhp := sData;
            BtnWCall1.Description := sData;
            sType := 'Tel';
            Memo_WorkerInfo.Lines.Add(Format('단말기 : %s ',[Data_Parser(sData,sType)]));
            sData := ls_Rcrd[27];
            sWkphone := sData;
            BtnWCall2.Description := sData;
            sType := 'Tel';
						Memo_WorkerInfo.Lines.Add(Format('핸드폰 : %s ',[Data_Parser(sData,sType)]));
          end else
          begin
            sData := ls_Rcrd[5];
            sWkhp := sData;
            BtnWCall1.Description := sData;
            sType := 'Tel';
            Memo_WorkerInfo.Lines.Add(Format('단말기 : %s ',[Data_Parser(sData,sType)]));
            sData := ls_Rcrd[6];
            sWkphone := sData;
						BtnWCall2.Description := sData;
            sType := 'Tel';
            Memo_WorkerInfo.Lines.Add(Format('핸드폰 : %s ',[Data_Parser(sData,sType)]));
          end;
        end else
        begin
          sData := ls_Rcrd[5];
          sWkhp := sData;
          BtnWCall1.Description := sData;
          sType := 'Tel';
          Memo_WorkerInfo.Lines.Add(Format('단말기 : %s ',[Data_Parser(sData,sType)]));
          sData := ls_Rcrd[6];
          sWkphone := sData;
          BtnWCall2.Description := sData;
          sType := 'Tel';
					Memo_WorkerInfo.Lines.Add(Format('핸드폰 : %s ',[Data_Parser(sData,sType)]));
        end;
				sTmp := '';
				if ls_Rcrd[45] = 'y' then sTmp := '적용';
				Memo_WorkerInfo.Lines.Add('우선배차: ' + sTmp);         //신성현차장님 요청 20190826 KHS
				sData := ls_Rcrd[7];
				sType := 'Date';
        Memo_WorkerInfo.Lines.Add(Format('입사일 : %s ',[Data_Parser(sData,sType)]));
				Memo_WorkerInfo.Lines.Add(Format('나이 : %s 세',[ls_Rcrd[28]]));
				Memo_WorkerInfo.Lines.Add(Format('성별 : %s ',[ls_Rcrd[29]]));
				Memo_WorkerInfo.Lines.Add(Format('수수료그룹 : %s ',[ls_Rcrd[8] + '(5)']));
        Memo_WorkerInfo.Lines.Add(Format('잔액 : %s ',[ls_Rcrd[9]]));
        Memo_WorkerInfo.Lines.Add(Format('건수제한 : %s ',[ls_Rcrd[10] + '(건)']));
        Memo_WorkerInfo.Lines.Add(Format('완료시간 : %s ',[ls_Rcrd[11] + '(분)']));
        Memo_WorkerInfo.Lines.Add(Format('보험정보 : %s ',[ls_Rcrd[12] + ' ' + ls_Rcrd[13]]));
        sData := ls_Rcrd[14];
        sType := 'Date';
        Memo_WorkerInfo.Lines.Add(Format('보험만료 : %s ',[Data_Parser(sData,sType)]));

        try
          GetTextSeperationEx('/', sPhone_Info, sList);
          if sList.Count > 0 then
          begin
            if sList.Count = 1 then
              sTmpInfo := sList[0] else
            if sList.Count = 2 then
              sTmpInfo := sList[0] + #13#10 +'            '+ '(' + sList[1] +')' else
            if sList.Count >= 3 then
              sTmpInfo := sList[0] + #13#10 +'            '+ '(' + sList[1] +')'+ #13#10 +'            ' + sList[2];
          end;
        except
        end;

        Memo_WorkerInfo.Lines.Add(Format('폰정보 : %s ',[sTmpInfo]));
        Memo_WorkerInfo.Lines.Add(Format('면허상태 : %s ',[ls_Rcrd[15]]));
        Memo_WorkerInfo.Lines.Add(Format('업무상태 : %s ',[ls_Rcrd[16]]));
        Memo_WorkerInfo.Lines.Add(Format('기사등급 : %s ',[ls_Rcrd[17]]));

				if GS_PRJ_AREA = 'S' then
				begin
					sTmp := '';
					if ls_Rcrd[35] = 'y' then
					begin
						if ls_Rcrd[36] = 'y' then sTmp := '탁송확대기사'
						else sTmp := '탁송기사';
					end;
					Memo_WorkerInfo.Lines.Add('탁송종류: ' + sTmp);
					sTmp := '';
					if (ls_Rcrd[35] = 'y') or (ls_Rcrd[36] = 'y') then sTmp := ls_Rcrd[37];
					Memo_WorkerInfo.Lines.Add('탁송보험: ' + sTmp);

					sTmp := '';
					if ls_Rcrd[34] = '10' then sTmp := '1종대형' else
					if ls_Rcrd[34] = '11' then sTmp := '1종보통' else
					if ls_Rcrd[34] = '12' then sTmp := '1종소형' else
					if ls_Rcrd[34] = '13' then sTmp := '1종특수' else
					if ls_Rcrd[34] = '20' then sTmp := '2동보통' else
					if ls_Rcrd[34] = '21' then sTmp := '2종소형' else
					if ls_Rcrd[34] = '99' then sTmp := '기타'    else sTmp := ls_Rcrd[34];
					Memo_WorkerInfo.Lines.Add('면허종류: ' + sTmp);
				end;

        sTmp := '';
				if ls_Rcrd[22] = 'y' then sTmp := '스틱가능' else
        if ls_Rcrd[22] = 'n' then sTmp := '스틱불가'
                             else sTmp := '';

				if ls_Rcrd[23] = 'y' then	sTmp := sTmp + ' 탁송가능' else
				if ls_Rcrd[23] = 'n' then	sTmp := sTmp + ' 탁송불가'
														 else	sTmp := sTmp + '';
        Memo_WorkerInfo.Lines.Add(Format('%s',[sTmp]));
        Memo_WorkerInfo.Lines.Add(Format('복장상태 : %s ',[ls_Rcrd[21]]));

				sWKBrNo := ls_Rcrd[24];    // 기사 지사 코드
				gWkHdNo := ls_Rcrd[25];    // 기사 본사 코드

				if ls_Rcrd[31] = '0' then	Memo_WorkerInfo.Lines.Add('셔틀등록상태 : 미가입') else
        if ls_Rcrd[31] = '1' then	Memo_WorkerInfo.Lines.Add('셔틀등록상태 : 가입 ')	else
        if ls_Rcrd[31] = '2' then	Memo_WorkerInfo.Lines.Add('셔틀등록상태 : 미납')
                             else	Memo_WorkerInfo.Lines.Add('셔틀등록상태 : 미가입');

				if ls_Rcrd[32] = '0' then	Memo_WorkerInfo.Lines.Add('셔틀과금타입 : 미설정') else
        if ls_Rcrd[32] = '1' then	Memo_WorkerInfo.Lines.Add('셔틀과금타입 : 건당차감') else
        if ls_Rcrd[32] = '2' then	Memo_WorkerInfo.Lines.Add('셔틀과금타입 : 일정액차감') else
        if ls_Rcrd[32] = '3' then	Memo_WorkerInfo.Lines.Add('셔틀과금타입 : 월정액차감') else
        if ls_Rcrd[32] = '4' then	Memo_WorkerInfo.Lines.Add('셔틀과금타입 : 월정액차감2')
                             else	Memo_WorkerInfo.Lines.Add('셔틀과금타입 : 미설정');

				Memo_WorkerInfo.Lines.Add(Format('태그번호 : %s ',[ls_Rcrd[30]]));

				if (GS_PRJ_AREA = 'O') then
				begin
          if GB_DARKMODE then	Memo_WorkerInfo.SelAttributes.Color := clAqua
                         else Memo_WorkerInfo.SelAttributes.Color := clBlue;
					Memo_WorkerInfo.SelAttributes.Style := [fsBold];
					if (ls_Rcrd[33] = 'm') or
             (ls_Rcrd[33] = '') then	Memo_WorkerInfo.Lines.Add(Format('보헙구분 : %s ',['월정액보험'])) else
					if ls_Rcrd[33] = 'c' then	Memo_WorkerInfo.Lines.Add(Format('보헙구분 : %s ',['콜당보험']));
				end;
			end;

			Memo_WorkerInfo.SelStart := 0;
      Memo_WorkerInfo.SelLength := Pos('입사일', Memo_WorkerInfo.Text) - 8;
			if GB_DARKMODE then	Memo_WorkerInfo.SelAttributes.Color := clAqua
                     else Memo_WorkerInfo.SelAttributes.Color := clBlue;
      Memo_WorkerInfo.SelAttributes.Style := [fsBold];

			PnlWorkImg.Top := cxGrid1.Top + cxGrid1.Height - PnlWorkImg.Height;
			PnlWorkImg.Left := cxGrid1.Left;
			BtnLClose1.Left := PnlWorkImg.Left + (PnlWorkImg.Width);
			BtnLClose1.Top := PnlWorkImg.Top + (PnlWorkImg.Height-BtnLClose1.Height);

      cxiWkImg.WebPicture.LoadFromURL(proc_HttpGetWorkImageURL(Trim(sWk_sabun32), 'Person'));
    finally
			xdom := Nil;
      ls_Rcrd.Free;
      sList.Free;
    end;
  Except
    on e: exception do
    begin
      Log('Proc_WorkerInfo Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Proc_WorkerInfo Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON012.Proc_WorkerOrderToday(ASabun, ASlip, AWkHp : string);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  XmlData, Param, ErrMsg: string;
  ls_Rcrd: TStringList;
	I, ErrCode, iRow: Integer;
	AView : TcxGridDBTableView;
begin
	SetDebugeWrite('Frm_JON012.Proc_WorkerOrderToday');
  try
//		Param := sWk_sabun32;
		Param := ASabun + '│' + ASlip + '│' + AWkHp;
		if not RequestBase(GetSel05('GETORDERTODAY', 'worker.get_order_today_list', '100', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('기사 당일 오더내역 로드 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Exit;
    end;

		if (ASabun = 'M00001') and ((GS_PRJ_AREA = 'S') or (GT_KAKAOUse)) then AView := cxGridKDDrive
                                                                      else AView := cxToday_GridList;

		xdom := ComsDomDocument.Create;
		try
      xdom.loadXML(XmlData);

			AView.DataController.SetRecordCount(0);
			AView.DataController.BeginUpdate;

      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      ls_Rcrd := TStringList.Create;
      try
        for I := 0 to lst_Result.length - 1 do
				begin
          if lst_Result.item[i].attributes.getNamedItem('Value').Text = '' then Continue;
					GetTextSeperationEx('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
					iRow := AView.DataController.AppendRecord;
          AView.DataController.Values[iRow, 0] := I+1;
          AView.DataController.Values[iRow, 1] := ls_Rcrd[0];
          AView.DataController.Values[iRow, 2] := ls_Rcrd[1];
          AView.DataController.Values[iRow, 3] := ls_Rcrd[2];
          AView.DataController.Values[iRow, 4] := ls_Rcrd[3];
          AView.DataController.Values[iRow, 5] := copy(ls_Rcrd[4],1,10) + ' ' + copy(ls_Rcrd[4],11, 8);
          AView.DataController.Values[iRow, 6] := ls_Rcrd[5];
          AView.DataController.Values[iRow, 7] := ls_Rcrd[6];
          AView.DataController.Values[iRow, 8] := ls_Rcrd[7];
          AView.DataController.Values[iRow, 9] := ls_Rcrd[8];
          AView.DataController.Values[iRow, 10] := ls_Rcrd[9];
          AView.DataController.Values[iRow, 11] := ls_Rcrd[10];
					AView.DataController.Values[iRow, 12] := ls_Rcrd[11];
					AView.DataController.Values[iRow, 13] := '';
          if ls_Rcrd.Count > 12 then
  					AView.DataController.Values[iRow, 13] := ls_Rcrd[12];
        end;
      finally
				ls_Rcrd.Free;
      end;
    finally
			AView.DataController.EndUpdate;
      xdom := Nil;
		end;
  Except
		on e: exception do
    begin
      Log('Proc_WorkerOrderToday Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Proc_WorkerOrderToday Error :' + E.Message);
    end;
  end;
end;

function TFrm_JON012.func_check_CallCenterYN(AView: TcxGridDBTableView): Boolean;
var
  tm_Slip, tm_Keynumber, tm_Brname, tm_Callcenter, tm_Callcenter2, sInDate, sDate : string;
  iSelRow, iInDate, iSlip, li_Status : Integer;
begin
  SetDebugeWrite('Frm_JON012.func_check_CallCenterYN');
	Result := False;
  try
    iSelRow := AView.DataController.GetFocusedRecordIndex;
    if iSelRow < 0 then exit;
//
//    iInDate := AView.GetColumnByFieldName('접수일시').Index;
//    sInDate := AView.DataController.Values[iSelRow, iInDate];
//    sIndate := copy(sIndate, 1, 19);
//    sDate := StartDateTime('yyyy-mm-dd hh:nn:ss');
//
//    if (sInDate >= sDate) then
//    begin
//      iSlip := AView.GetColumnByFieldName('접수번호').Index;
//      A01_HIS_POPUP.Slip := AView.DataController.Values[iSelRow, iSlip];
//      li_Status := AView.GetColumnByFieldName('상태').Index;
//      A01_HIS_POPUP.Status := AView.DataController.Values[iSelRow, li_Status];
//			if A01_HIS_POPUP.Status = 'D' then A01_HIS_POPUP.Status := '1';
//		end else
//		begin
//			A01_HIS_POPUP.Slip:='_';
//			A01_HIS_POPUP.Status:='';
//		end;

    tm_Slip := AView.DataController.Values[iSelRow, AView.GetColumnByFieldName('접수번호').Index];
    tm_KeyNumber :=string(AView.DataController.Values[AView.DataController.FocusedRecordIndex,
      AView.GetColumnByFieldName('대표번호').Index]);
    tm_Brname := string(AView.DataController.Values[AView.DataController.FocusedRecordIndex,
      AView.GetColumnByFieldName('지사명').Index]);
    tm_Callcenter := string(AView.DataController.Values[AView.DataController.FocusedRecordIndex,
      AView.GetColumnByFieldName('콜센터코드').Index]);
		tm_Callcenter2 := string(AView.DataController.Values[AView.DataController.FocusedRecordIndex,
			AView.GetColumnByFieldName('콜센터2').Index]);

    if (Trim(tm_Slip) <> '')
      and (Trim(tm_KeyNumber) <> '') then
    begin
      if ((GT_USERIF.LV =  '60') and (scb_BranchName.IndexOf(tm_Brname) >= 0)) Or
         ((GT_USERIF.LV <> '60') and (Trim(tm_Callcenter) = GT_USERIF.CT) Or (Trim(tm_Callcenter2) = GT_USERIF.CT))
      then
        Result := True
      else
        Result := False;
    end;
  except on E: Exception do
    Assert(False, E.Message);
	end;
end;

procedure TFrm_JON012.AcceptFromCreate(sConfSlip, AccTime, sInsGubun: string);
var
  sBizDate, sBizDate2: string;
begin
  SetDebugeWrite('Frm_JON012.AcceptFromCreate');
  try
    // 접수창을 생성한다.
    if sInsGubun = '수정' then
    begin
      // 접수화면 중에 "수정" 화면을 찾는다.
      if Frm_Main.Proc_UpdateFromFindView(sConfSlip) = False then
      begin
        // 접수화면을 생성한다.
        if Not Frm_Main.Proc_JoinFromView(Jon03Tag, '수정', sConfSlip) then Exit;
        Frm_Main.Frm_JON01N[GI_JON01_LastFromIdx].grpCustView.Visible := False;
      end;
    end;

    // 그리드 상의 접수일자
    sBizDate := StartDateTime('yyyy-mm-dd hh:nn:ss'); // 영업일자 얻기..
//    sBizDate2 := StartDateTime('yyyy-mm-dd'); // 전(-1일) 영업일자 얻기..
    sBizDate2 := UpDateDateTime('yyyy-mm-dd'); // 전(-7일) 영업일자 얻기..  2021.05.12 CDS

    //if Copy(sDate,1,10) < Copy(sBizDate2,1,10) then begin
    // 2008-08-08 12:20:00 < 2008-08-09 09:00:00
    if AccTime < sBizDate2 then
    begin
      //GMessagebox('이용한지 24시간이 지난 오더는 수정 할 수 없고, 내용만 볼 수 있습니다.',CDMSE);
      Frm_Main.Frm_JON01N[GI_JON01_LastFromIdx].btnCmdUpdSave.Tag := 99;
      // 수정 할 수 없음.
    end else
    begin
      Frm_Main.Frm_JON01N[GI_JON01_LastFromIdx].btnCmdUpdSave.Tag := 0;
      // 수정 할 수 있음.
    end;

    if AccTime > sBizDate then
      // 오더 일련번호를 받아 오더 수정창을 열어 준다. [당일오더]
      Frm_Main.Frm_JON01N[GI_JON01_LastFromIdx].Proc_OrderUpdate_Select(sConfSlip, '1', sInsGubun)
    else
      // 오더 일련번호를 받아 오더 수정창을 열어 준다. [과거오더]
      Frm_Main.Frm_JON01N[GI_JON01_LastFromIdx].Proc_OrderUpdate_Select(sConfSlip, '2', sInsGubun);

    pJON01Show(GI_JON01_LastFromIdx);
  Except
    on e: exception do
    begin
      Log('AcceptFromCreate Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AcceptFromCreate Error :' + E.Message);
    end;
  end;
end;

function TFrm_JON012.GetCurrentView: TcxGridDBTableView;
begin
  if cxGrid1.Tag = 1 then Result := cxToday_GridList else
  if cxGrid4.Tag = 1 then Result := cxGridKDDrive else Result := cxToday_GridList;
end;

function TFrm_JON012.GetCustTel: string;
var
  iCustTel, iRow: Integer;
begin
  SetDebugeWrite('Frm_JON012.GetCustTel');
  try
    Result := '';
    iRow := cxGVeOrderList.DataController.FocusedRecordIndex;

    if iRow < 0 then
      Exit;

    iCustTel := cxGVeOrderList.GetColumnByFieldName('고객전화').Index;
    Result := cxGVeOrderList.DataController.Values[iRow, iCustTel];
  Except
    on e: exception do
    begin
      Log('GetCustTel Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'GetCustTel Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON012.Image1Click(Sender: TObject);
begin
  SetDebugeWrite('Frm_JON012.Image1Click');
  PnlWorkImg.Left := ( PnlWorkImg.Width * -1 );
  BtnLClose1.Left := PnlWorkImg.Left + (PnlWorkImg.Width);
end;

procedure TFrm_JON012.lblBigoFlagClick(Sender: TObject);
begin
  edtBigo.SetFocus;
end;

procedure TFrm_JON012.lblColorTodayClick(Sender: TObject);
begin
  SetDebugeWrite('Frm_JON012.lblColorTodayClick');
  try
    ColorDialog1. Color := (Sender as TcxLabel).Style.Color;
    if (ColorDialog1.Execute) then
    begin
      (Sender as TcxLabel).Style.Color := ColorDialog1.Color ;
      if Sender = lblColorToday then
      begin
        cxstyleToday.Color := ColorDialog1.Color;
        GS_EnvFile.WriteString('UserHisColor', 'ColorToday', ColorToString(cxstyleToday.Color));
      end else
      if Sender = lblColorUpdate then
      begin
        cxstyleUpdate.Color := ColorDialog1.Color;
        GS_EnvFile.WriteString('UserHisColor', 'ColorUpdate', ColorToString(cxstyleUpdate.Color));
      end else
      if Sender = lblColorMulti then
      begin
        cxstyleMulti.Color := ColorDialog1.Color;
        GS_EnvFile.WriteString('UserHisColor', 'ColorMulti', ColorToString(cxstyleMulti.Color));
      end else
      if Sender = lblColorTelSe then
      begin
        cxStyleTelSe.Color := ColorDialog1.Color;
        GS_EnvFile.WriteString('UserHisColor', 'ColorTelSe', ColorToString(cxstyleTelSe.Color));
      end;
    end;
    cxGVeOrderList.DataController.Values[0, 0] := cxGVeOrderList.DataController.Values[0, 0];
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.lblDestFlagClick(Sender: TObject);
begin
  edtDest.SetFocus;
end;

procedure TFrm_JON012.lblMemoFlagClick(Sender: TObject);
begin
  edtMemo.SetFocus;
end;

procedure TFrm_JON012.lblStarFlagClick(Sender: TObject);
begin
  edtStar.SetFocus;
end;

procedure TFrm_JON012.m_St2Click(Sender: TObject);
Var iStCd, iTag : Integer;
begin
	try
		iStCd := cxGVeOrderList.GetColumnByFieldName('상태').Index;
		iTag := TmenuItem(Sender).Tag;

		if TmenuItem(Sender).Checked then TmenuItem(Sender).Checked := False else TmenuItem(Sender).Checked := True;

		if (not m_St2.Checked) and (not m_St1.Checked) and (not m_St4.Checked) and (not m_St8.Checked) then
		begin
			m_StAllClick(m_StAll);
			exit;
		end;
		cxGVeOrderList.DataController.Filter.Clear;
		cxGVeOrderList.DataController.Filter.Root.BoolOperatorKind := fboOr;

		cxGVeOrderList.DataController.Filter.Clear;
		cxGVeOrderList.DataController.Filter.Root.BoolOperatorKind := fboOr;

		if m_St2.Checked then cxGVeOrderList.DataController.Filter.Root.AddItem(cxGVeOrderList.Columns[iStCd], foEqual, '2', '완료');
		if m_St1.Checked then cxGVeOrderList.DataController.Filter.Root.AddItem(cxGVeOrderList.Columns[iStCd], foEqual, '1', '배차');
		if m_St4.Checked then cxGVeOrderList.DataController.Filter.Root.AddItem(cxGVeOrderList.Columns[iStCd], foEqual, '4', '문의');
		if m_St8.Checked then cxGVeOrderList.DataController.Filter.Root.AddItem(cxGVeOrderList.Columns[iStCd], foEqual, '8', '취소');

		cxGVeOrderList.DataController.Filter.Root.AddItem(cxGVeOrderList.Columns[iStCd], foEqual, 'gi', '경품지급');
		cxGVeOrderList.DataController.Filter.Root.AddItem(cxGVeOrderList.Columns[iStCd], foEqual, 'cs', '가격수정');
		cxGVeOrderList.DataController.Filter.Root.AddItem(cxGVeOrderList.Columns[iStCd], foEqual, 'bi', '보정입력');
		cxGVeOrderList.DataController.Filter.Active := True;

	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_JON012.m_StAllClick(Sender: TObject);
begin
	m_St2.Checked := False;
	m_St1.Checked := False;
	m_St4.Checked := False;
	m_St8.Checked := False;

	cxGVeOrderList.DataController.Filter.Clear;
	cxGVeOrderList.DataController.Filter.Active := False;
end;

function TFrm_JON012.func_excel_check(iType: Integer; sHd_No, sBr_No: string): string;
var
  ls_TxLoad, rv_str, sExcel: string;
  ls_rxxml: wideString;
  slReceive: TStringList;
  ErrCode: integer;
begin
	try
    if ( GT_USERIF.LV = '60' ) Or ( GT_USERIF.LV = '40' ) then     // 본사관리자
    begin
      if sHd_No = '' then sHd_No := GT_SEL_BRNO.HDNO;
      if sBr_No = '' then sBr_No := GT_SEL_BRNO.BrNo;
    end else
    if ( GT_USERIF.LV = '10' ) then     // 상담원
    begin
      if sHd_No = '' then sHd_No := GT_USERIF.HD;
      if sBr_No = '' then sBr_No := GT_USERIF.BR;
    end;

    if ( GT_USERIF.LV = '60' ) then     // 본사관리자
  	begin
      if Not fGetCheck_BlowFish_HdBrNo( GT_SEL_BRNO.HDNO, GT_SEL_BRNO.BrNo ) then
      begin
        GMessagebox('다운 권한이 없는 본사.지사 입니다.', CDMSE);
        Assert(False, '[N지사코드변조] 과거이용내역 : fGetCheck_BlowFish_HdBrNo : ' + GT_SEL_BRNO.HDNO + GT_SEL_BRNO.BrNo + ' - ' + GS_BlowFish_HdBrNo);
        Exit;
      end;
  	end else
    if ( GT_USERIF.LV = '40' ) then     // 지사관리자
  	begin
      if Not fGetCheck_BlowFish_HdBrNo( GT_SEL_BRNO.HDNO, GT_SEL_BRNO.BrNo ) then
      begin
        GMessagebox('다운 권한이 없는 본사.지사 입니다.', CDMSE);
        Assert(False, '[N지사코드변조] 과거이용내역 : fGetCheck_BlowFish_HdBrNo : ' + GT_USERIF.HD + GT_SEL_BRNO.BrNo + ' - ' + GS_BlowFish_HdBrNo);
        Exit;
      end;
    end else
    if ( GT_USERIF.LV = '10' ) then     // 상담원
    begin
      if Not fGetCheck_BlowFish_HdBrNo( GT_USERIF.HD, GT_USERIF.BR ) then
      begin
        GMessagebox('다운 권한이 없는 본사.지사 입니다.', CDMSE);
        Assert(False, '[N지사코드변조] 과거이용내역 : fGetCheck_BlowFish_HdBrNo : ' + GT_USERIF.HD + GT_USERIF.BR + ' - ' + GS_BlowFish_HdBrNo);
        Exit;
      end;
    end;

		sExcel := Format('접수>과거이용내역]%s건', [GetMoneyStr(cxGVeOrderList.DataController.RecordCount)]);

    ls_TxLoad := GTx_UnitXmlLoad('C017.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'HdNoString', sHd_No, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'BrNoString', sBr_No, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'MacAddressString', GT_USERIF.MC, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ExcelString', sExcel, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'HDDSNString', RemoveAll(GT_USERIF.HS, '-'), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'LocalIPString', GT_USERIF.IP, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'CompNameString', SysInfoRec.ComputerName, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'LoginDateString', GT_USERIF.LoginTime, [rfReplaceAll]);

    if TCK_USER_PER.COM_ExcelNoSMS = '1' then
    begin
      ls_TxLoad := StringReplace(ls_TxLoad, 'AuthYNString', 'N', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'AUTH0002', [rfReplaceAll]);   // 인증번호 미발송
    end else
    begin
      ls_TxLoad := StringReplace(ls_TxLoad, 'AuthYNString', 'Y', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'AUTH0001', [rfReplaceAll]);
    end;

    Result := '';
    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
				if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
					Result := func_License(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except
    on E: Exception do
    begin
			ls_TxLoad := 'jon012[func_excel_check]:' + e.Message;
      GMessagebox(PChar(ls_TxLoad), CDMSE);
      Assert(False, E.Message);
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TFrm_JON012.proc_excel(iType: Integer);
begin
  SetDebugeWrite('Frm_JON012.proc_excel');
	if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
    Exit;
  end;

	if (TCK_USER_PER.COM_ExcelNoSMS <> '1') and (GT_USERIF.LV = '60') then
	begin
		cxComboBox1.Properties.Items.Clear;
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			cxComboBox1.Properties.Items.Assign(scb_FamilyBrName)
		else
			cxComboBox1.Properties.Items.Assign(scb_BranchName);
		Lbl_SmsCash.Caption := 'SMS캐쉬';

    cxComboBox1.ItemIndex := 0;
		grpSetBrch_select.Left := (Width - grpSetBrch_select.Width) div 2;
		grpSetBrch_select.top := (Height - grpSetBrch_select.Height) div 2;
		grpSetBrch_select.Visible := True;
    grpSetBrch_select.BringToFront;
    grpSetBrch_select.Tag := iType;
		grpSetExcel.Tag := iType;

    Exit;
  end;

  // 엑셀다운로드 권한 있으면 다운로드 기록, 없으면 인증번호 전송(C017)
  try
		Label32.Caption := func_excel_check(iType);
  except
    GMessagebox('엑셀 다운로드 인증 중 오류가 발생 했습니다.'#13#10'다시 시도 바랍니다.', CDMSE);
		Exit;
  end;

  if TCK_USER_PER.COM_ExcelNoSMS <> '1' then
  begin
		if (Label32.Caption <> '') then
    begin
      grpSetExcel.Left := (Width - grpSetExcel.Width) div 2;
      grpSetExcel.top := (Height - grpSetExcel.Height) div 2;
      grpSetExcel.Visible := True;
      grpSetExcel.BringToFront;
      grpSetExcel.Tag := iType;
      btn_sms_con.Enabled := True;
      Edit1.Text := '';
      edit1.SetFocus;
    end else
    begin
      GMessagebox('', CDMSE);
    end;
  end else
  begin
    proc_excel_NoSms(iType);
	end;
end;

procedure TFrm_JON012.proc_excel_NoSms(iType: Integer);
begin
	frm_Main.SaveDialog1.FileName := Frm_Main.Frm_JON01N[Self.Tag].locsCuTel +' 과거이용내역.xls';
	if frm_Main.SaveDialog1.Execute then
	begin
		CustomExportGridToHTML(frm_Main.SaveDialog1.FileName, ctxGrid, False, True, 'XLS');
	end;
end;

function TFrm_JON012.func_License(ss_rxxml: widestring): string;
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Msg_Err, ls_ClientKey, ls_rxxml: string;
begin
  SetDebugeWrite('Frm_JON012.func_License');
  try
    xdom := ComsDomDocument.Create;
    try
      Result := '';
      if not xdom.loadXML(ss_rxxml) then Exit;

      ls_rxxml := ss_rxxml;
      ls_ClientKey := GetXmlClientKey(ls_rxxml);
      if ls_ClientKey = 'AUTH0001' then
      begin
        ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
        if ls_Msg_Err = '0000' then
        begin
          lst_Result :=
            xdom.documentElement.selectNodes('/cdms/Service/Data/Auth');
          GMessagebox('엑셀 인증번호를 발송하였습니다.', CDMSI);
          Result := lst_Result.item[0].attributes.getNamedItem('Code').Text;
        end else
        begin
          GMessagebox(ls_Msg_Err, CDMSE);
          Result := '';
          Exit;
        end;
      end else
      if ls_ClientKey = 'AUTH0002' then
      begin
        ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
        if ls_Msg_Err = '0000' then
          Result := '0000'
        else
        begin
          GMessagebox(ls_Msg_Err, CDMSE);
          Result := '';
          Exit;
        end;
      end;
    finally
      xdom := nil;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function TFrm_JON012.func_check_CallCenterYN_WK: Boolean;
var
  tm_Slip, tm_Keynumber, tm_Brname, tm_Callcenter, tm_Callcenter2, tm_AccCallcenter, sInDate, sDate : String;
	iInDate, iSelRow, iSlip, li_Status: Integer;
	AView: TcxGridDBTableView;
begin
 	AView := GetCurrentView;
  SetDebugeWrite('Frm_JON012.func_check_CallCenterYN_WK');
	Result := False;
	try
		iSelRow := AView.DataController.GetFocusedRecordIndex;
    if iSelRow < 0 then exit;
//
//		iInDate := cxToday_GridList.GetColumnByFieldName('시간').Index;
//		sInDate := cxToday_GridList.DataController.Values[iSelRow, iInDate];
//		sIndate := copy(sIndate, 1, 19);
//    sDate := StartDateTime('yyyy-mm-dd hh:nn:ss');
//
//    if (sInDate >= sDate) then
//    begin
//			iSlip := cxToday_GridList.GetColumnByFieldName('접수번호').Index;
//			A01_HIS_POPUP.Slip := cxToday_GridList.DataController.Values[iSelRow, iSlip];
//			li_Status := cxToday_GridList.GetColumnByFieldName('오더타입').Index;
//			A01_HIS_POPUP.Status := cxToday_GridList.DataController.Values[iSelRow, li_Status];
//			if A01_HIS_POPUP.Status = 'D' then A01_HIS_POPUP.Status := '1';
//
//      GT_OrderInfo[Jon03Tag].slip:=A01_HIS_POPUP.Slip;
//      GT_OrderInfo[Jon03Tag].Status:=A01_HIS_POPUP.Status;
//    end else
//    begin
//      A01_HIS_POPUP.Slip:='_';
//      A01_HIS_POPUP.Status:='';
//      gt_orderinfo[Jon03Tag].slip:='_';
//      gt_orderinfo[Jon03Tag].status:='';
//    end;

    tm_Slip := AView.DataController.Values[iSelRow, AView.GetColumnByFieldName('접수번호').Index];
		tm_KeyNumber := string(AView.DataController.Values[AView.DataController.FocusedRecordIndex
		                                                 , AView.GetColumnByFieldName('대표번호').Index]);
                                                     
		tm_Brname := string(AView.DataController.Values[AView.DataController.FocusedRecordIndex
                                                  , AView.GetColumnByFieldName('지사명').Index]);
                                                  
		tm_Callcenter := string(AView.DataController.Values[AView.DataController.FocusedRecordIndex
                                                      , AView.GetColumnByFieldName('콜센터코드').Index]);
                                                      
		tm_Callcenter2 := string(AView.DataController.Values[AView.DataController.FocusedRecordIndex
                                                       , AView.GetColumnByFieldName('콜센터2').Index]);

    if (Trim(tm_Slip)      <> '') and
       (Trim(tm_KeyNumber) <> '') then
    begin
      if ((GT_USERIF.LV = '60') and (scb_BranchName.IndexOf(tm_Brname) >= 0)) Or
         ((GT_USERIF.LV <> '60') and (Trim(tm_Callcenter) = GT_USERIF.CT) Or (Trim(tm_Callcenter2) = GT_USERIF.CT))
			then
				Result := True
      else
        Result := False;
		end;
  except on E: Exception do
    Assert(False, E.Message);
	end;
end;

procedure TFrm_JON012.proc_wk_modify;
var
  i : Integer;
  HdCd, HdCd_Old : String;
begin
  try
    if ( (GT_USERIF.LV = '60') And (GT_USERIF.BR = sWKBrNo) ) or ((GT_USERIF.LV = '10') and (IsPassedManagementWk(sWKBrNo))) then
    begin
      if Not Assigned(Frm_WOR01) Or (Frm_WOR01 = Nil) then Frm_WOR01 := TFrm_WOR01.Create(Nil);

      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      begin
        try
          Frm_WOR01.cboBranch.Tag := 99;
          Frm_WOR01.FBrNoList.Clear;
          Frm_WOR01.FTakList.Clear;
          Frm_WOR01.cboBranch.Properties.Items.Clear;
          HdCd_Old := '';

          for I := 0 to scb_FamilyBrName.Count - 1 do
          begin
            HdCd :='';
            HdCd := frm_Main.func_search_hdNo(scb_FamilyBrCode[I]);
            if HdCd <> HdCd_Old then
            begin
               Frm_WOR01.RequestDataHeadInfo(HdCd);
               HdCd_Old := HdCd;
            end;
            if GB_WORSOSOK_VIEW then
              Frm_WOR01.cboBranch.Properties.Items.Add('(' + HdCd + ',' + scb_FamilyBrCode[I] +')' + scb_FamilyBrName[I] + '/' + frm_WOR01.Gs_HdNm )
            else
              Frm_WOR01.cboBranch.Properties.Items.Add('(' + scb_FamilyBrCode[I] +')' + scb_FamilyBrName[I] );
            Frm_WOR01.FBrNoList.Add(scb_FamilyBrCode[I]);
            Frm_WOR01.FTakList.Add(scb_FamilyTaksong[I]);
            Frm_WOR01.FShuttel4.Add(scb_FamilyShuttle4[I]);
          end;
          Frm_WOR01.cboBranch.Tag := 0;
        except
        end;
      end;

      Frm_WOR01.gKey50 := False;
      if GS_PRJ_AREA = 'O' then
      begin
        Frm_WOR01.gUse_Cnt := 0;
        Frm_WOR01.Show;
        Frm_WOR01.proc_wk_Search(sWk_sabun32);
      end else
      begin
        Frm_WOR01.proc_init;
        Frm_WOR01.gWOR19Mode := 'UPDATE';
        Frm_WOR01.gUse_Cnt := 0;
        Frm_WOR01.Show;
        Frm_WOR01.proc_wk_Search(sWk_sabun32);
      end;
    end else
    begin
      GMessagebox('다른지사에 기사입니다.' + #13#10 + '수정할수 없습니다.', CDMSE);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.pGetColumnIndex;
begin
  try
    giInDate    := cxGVeOrderList.GetColumnByFieldName('접수일시').Index;
    giWkSabun   := cxGVeOrderList.GetColumnByFieldName('기사').Index;
		giConfSlip  := cxGVeOrderList.GetColumnByFieldName('접수번호').Index;
		giOrderType := cxGVeOrderList.GetColumnByFieldName('오더타입').Index;

		giMile  := cxGVeOrderList.GetColumnByFieldName('마일리지').Index;
		giStCd  := cxGVeOrderList.GetColumnByFieldName('상태').Index;
		giStart := cxGVeOrderList.GetColumnByFieldName('출발지').Index;
		giEnd   := cxGVeOrderList.GetColumnByFieldName('도착지').Index;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.SocketSend(lsSendText: string);
var
  slRcvList: TStringList;
  // 전문 결과 처리 위해 사용 변수. 2009.01.09
  rv_str, ls_rxxml: string;
  ErrCode: integer;
begin
	SetDebugeWrite('TFrm_JON012.SocketSend');
	try
    Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;
    try
      if dm.SendSock(lsSendText, slRcvList, ErrCode, False) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
					Proc_CustOldSelectResult(ls_rxxml, 0);
        end;
      end;
    finally
      FreeAndNil(slRcvList);
      Screen.Cursor := crDefault;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON012.HScrollHandler(Sender: TObject; ScrollCode: TScrollCode; var ScrollPos: Integer);
begin
  cxGVeOrderList.Controller.Scroll(sbHorizontal, scTrack, ScrollPos);
  cxGVeOrderDestList.Controller.Scroll(sbHorizontal, scTrack, ScrollPos);
end;

end.



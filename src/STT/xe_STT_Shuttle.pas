unit xe_STT_Shuttle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, MSXML2_TLB,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, DateUtils,
  cxContainer, cxEdit, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxLabel, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit, cxGridChartView,
  cxDropDownEdit, cxMaskEdit, cxCalendar, Vcl.StdCtrls, cxButtons, cxGroupBox,
	Vcl.ExtCtrls, system.Math, AdvSplitter, cxCheckBox, dxSkinsCore, StrUtils,
	dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, cxProgressBar, SmartSRXLib_TLB,
  cxRadioGroup, cxSpinEdit, dxSkinOffice2010Blue, cxGridBandedTableView, AdvGlowButton,
  cxTimeEdit, cxSplitter, Vcl.OleCtrls, TalMapXLib_TLB, System.ImageList,
  Vcl.ImgList, cxImageList, dxSkinOffice2016Colorful, dxDateRanges,
  dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

	
type
  pKSPoint = ^TKSPoint;
  TKSPoint = record
    _x: integer;
    _y: integer;
	end;
type
  TTmappos = record
    lon: LONG;
    lat: LONG;
  end;
type
  TRoutePoint = record
    lon: TStringList;
    lat: TStringList;
    Idx: TStringList;
  end;

type
  TFrm_STT_Shuttle = class(TForm)
		pop_dateA1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    dlgSave: TSaveDialog;
    pmExcelA1: TPopupMenu;
    mniN1: TMenuItem;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    pnlChartA1: TPanel;
    cxGridA1C1: TcxGrid;
    cxGridA1C1ChartView1: TcxGridChartView;
    cxGridA1C1ChartView1Series1: TcxGridChartSeries;
    cxGridA1C1Level1: TcxGridLevel;
    Panel3: TPanel;
    Shape4: TShape;
    cbChartKindA1: TcxComboBox;
    cxLabel2: TcxLabel;
    btnChartA1: TcxButton;
    cbKindA1: TcxComboBox;
    cxGridA1C2: TcxGrid;
    cxGridA1C2ChartALL: TcxGridChartView;
    cxGridA1C2ChartSeries1: TcxGridChartSeries;
    cxGridA1C2ChartSeries2: TcxGridChartSeries;
    cxGridLevel2: TcxGridLevel;
    PnlMainA1: TPanel;
    Shape7: TShape;
    cxGroupBox2: TcxGroupBox;
    btnExcelA1: TcxButton;
    btnSearchA1: TcxButton;
    edt_SearchA1: TcxTextEdit;
    lblSosokNameA1: TcxLabel;
    cb_SearchA1: TcxComboBox;
    cxGridA1: TcxGrid;
    cxGridA1View1: TcxGridDBTableView;
    cxCol1: TcxGridDBColumn;
		cxCol2: TcxGridDBColumn;
    cxCol3: TcxGridDBColumn;
    cxCol4: TcxGridDBColumn;
    cxCol5: TcxGridDBColumn;
    cxCol6: TcxGridDBColumn;
    cxCol7: TcxGridDBColumn;
    cxCol8: TcxGridDBColumn;
    cxCol9: TcxGridDBColumn;
    cxLevelWorker: TcxGridLevel;
    AdvSplitter3: TAdvSplitter;
    AdvSplitter5: TAdvSplitter;
    pnlChartA2: TPanel;
    Panel9: TPanel;
    Shape24: TShape;
    cbChartKindA2: TcxComboBox;
    cxLabel28: TcxLabel;
    btnChartA2: TcxButton;
    cxGridA2C2: TcxGrid;
    cxGridA2C2ChartALL: TcxGridChartView;
    cxGridA2C2ChartALLSeries1: TcxGridChartSeries;
    cxGridLevel4: TcxGridLevel;
    PnlMainA2: TPanel;
    Shape25: TShape;
    AdvSplitter7: TAdvSplitter;
    pnlChartA3: TPanel;
    cxGridA3C1: TcxGrid;
    cxGridA3C1ChartView1: TcxGridChartView;
    cxGridA3C1ChartView1Series1: TcxGridChartSeries;
    cxGridA3C1Level1: TcxGridLevel;
    Panel13: TPanel;
    Shape36: TShape;
    cbChartKindA3: TcxComboBox;
    cxLabel44: TcxLabel;
    btnChartA3: TcxButton;
    cbKindA3: TcxComboBox;
    cxGridA3C2: TcxGrid;
    cxGridA3C2ChartALL: TcxGridChartView;
    cxGridA3C2ChartSeries1: TcxGridChartSeries;
    cxGridA3C2ChartSeries2: TcxGridChartSeries;
    cxGridLevel7: TcxGridLevel;
    PnlMainA3: TPanel;
    Shape37: TShape;
    AdvSplitter8: TAdvSplitter;
    pnlChartA4: TPanel;
    cxGridA4C1: TcxGrid;
    cxGridA4C1ChartView1: TcxGridChartView;
    cxGridA4C1ChartView1Series1: TcxGridChartSeries;
    cxGridA4C1Level1: TcxGridLevel;
    Panel15: TPanel;
    Shape41: TShape;
    cbChartKindA4: TcxComboBox;
    cxLabel50: TcxLabel;
    btnChartA4: TcxButton;
    cbKindA4: TcxComboBox;
    cxGridA4C2: TcxGrid;
    cxGridA4C2ChartALL: TcxGridChartView;
    cxGridA4C2ChartSeries1: TcxGridChartSeries;
    cxGridA4C2ChartSeries2: TcxGridChartSeries;
    cxGridLevel9: TcxGridLevel;
    PnlMainA4: TPanel;
    Shape42: TShape;
    cxBrNo11: TcxTextEdit;
    cxHdNo11: TcxTextEdit;
    tm_Flash: TTimer;
    cxGridA1C1ChartView1Series2: TcxGridChartSeries;
    cxSTTStyle: TcxStyleRepository;
    cxSTT_Field1: TcxStyle;
    cxSTT_Field2: TcxStyle;
    cxSTT_Field3: TcxStyle;
    cxSTT_Field4: TcxStyle;
    cxSTT_Field5: TcxStyle;
    cxSTT_Field6: TcxStyle;
    cxSTT_Field7: TcxStyle;
    cxSTT_Field8: TcxStyle;
    cxSTT_Field9: TcxStyle;
    cxSTT_Field10: TcxStyle;
    cxSTT_Field11: TcxStyle;
    cxSTT_Field12: TcxStyle;
    empty1: TcxStyle;
    empty2: TcxStyle;
    empty3: TcxStyle;
    empty4: TcxStyle;
    empty5: TcxStyle;
    cxSTTChart: TcxStyle;
    cxStyleBasic: TcxStyle;
    cxSTTChartGridLine: TcxStyle;
    cxStyleSmartPeek2: TcxStyle;
    cxStyleSmartPeek3: TcxStyle;
    cxStyleSaturday: TcxStyle;
    cxStyleSunDay: TcxStyle;
    cxStyleGridBG: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    cxGroupBox1: TcxGroupBox;
    btnExcelA2: TcxButton;
    btnSearchA2: TcxButton;
    edt_SearchA2: TcxTextEdit;
    lblSosokNameA2: TcxLabel;
    cb_SearchA2: TcxComboBox;
    cxGroupBox3: TcxGroupBox;
    btnExcelA3: TcxButton;
    btnSearchA3: TcxButton;
    edt_SearchA3: TcxTextEdit;
    lblSosokNameA3: TcxLabel;
    cb_SearchA3: TcxComboBox;
    cxGroupBox4: TcxGroupBox;
    btnExcelA4: TcxButton;
    btnSearchA4: TcxButton;
    edt_SearchA4: TcxTextEdit;
    lblSosokNameA4: TcxLabel;
    cb_SearchA4: TcxComboBox;
    btnDateA1: TcxButton;
    cxDtStartA1: TcxDateEdit;
    cxDtEndA1: TcxDateEdit;
    btnDateA2: TcxButton;
    cxDtStartA2: TcxDateEdit;
    cxDtEndA2: TcxDateEdit;
    btnDateA3: TcxButton;
    cxDtStartA3: TcxDateEdit;
    cxDtEndA3: TcxDateEdit;
    btnDateA4: TcxButton;
    cxDtStartA4: TcxDateEdit;
    cxDtEndA4: TcxDateEdit;
    cxGridA2: TcxGrid;
    cxGridA2View1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridA4: TcxGrid;
    cxGridA4View1: TcxGridDBTableView;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGridA3: TcxGrid;
    cxGridA3View1: TcxGridDBTableView;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    cxGridA4View1Column1: TcxGridDBColumn;
    cxTabSheet5: TcxTabSheet;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    cxImageList1: TcxImageList;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    PnlMain: TPanel;
    PnlBtm: TPanel;
    mMap_WKmoveLog: TTalMapXCtrl;
    cxSplitter1: TcxSplitter;
    pnlTitle: TPanel;
    cxGroupBox5: TcxGroupBox;
    btnSearchA5: TcxButton;
    cxLabel20: TcxLabel;
    cxLabel75: TcxLabel;
    cxTimeEnd: TcxTimeEdit;
    cxTimeStart: TcxTimeEdit;
    cxGroupBox6: TcxGroupBox;
    btnMapPos: TcxButton;
    chkCenter: TcxCheckBox;
    chk_Search_Route: TcxCheckBox;
    cxGroupBox7: TcxGroupBox;
    cxLabel30: TcxLabel;
    btnRView: TcxButton;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxGroupBox8: TcxGroupBox;
    btnMapPlay: TcxButton;
    btnMapStop: TcxButton;
    btnMapFPlay: TcxButton;
    chk_RView: TcxCheckBox;
    PnlTop: TPanel;
    cxGrdMV: TcxGrid;
    cxGrdMV_List: TcxGridDBTableView;
    cxGrdMV_ListColumn1: TcxGridDBColumn;
    cxGrdMV_ListColumn2: TcxGridDBColumn;
    cxGrdMV_ListColumn3: TcxGridDBColumn;
    cxGrdMV_ListColumn4: TcxGridDBColumn;
    cxGrdMV_ListColumn5: TcxGridDBColumn;
    cxGrdMV_ListColumn6: TcxGridDBColumn;
    cxGrdMV_Level: TcxGridLevel;
    pnlRView: TPanel;
    cxLabel33: TcxLabel;
    cxGrdMC: TcxGrid;
    cxGrdMC_List: TcxGridDBTableView;
    cxGridDBColumn06: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    btnExit: TcxButton;
    pnlHint: TPanel;
    cxDtStartA5: TcxDateEdit;
    cxDtEndA5: TcxDateEdit;
    btnDateA5: TcxButton;
    cxLabel27: TcxLabel;
    edt_SearchA5: TcxTextEdit;
    cxButton1: TcxButton;
    cxGrid1: TcxGrid;
    cxGridRunList: TcxGridDBTableView;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
    cxGridRunListColumn1: TcxGridDBColumn;
    btnChartShow1: TcxButton;
    btnChartShow2: TcxButton;
    btnChartShow3: TcxButton;
    btnChartShow4: TcxButton;
    cxTabSheet0: TcxTabSheet;
    PnlMainA0: TPanel;
    Shape13: TShape;
    cxGroupBox9: TcxGroupBox;
    cxLabel21: TcxLabel;
    btnExcelA0: TcxButton;
    btnSearchA0: TcxButton;
    lblSosokNameA0: TcxLabel;
    cxButton4: TcxButton;
    cxDtStartA0: TcxDateEdit;
    cxDtEndA0: TcxDateEdit;
    cxLabel24: TcxLabel;
    cxLabel34: TcxLabel;
    cxGridA0: TcxGrid;
    cxGridA0View1: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridLevel10: TcxGridLevel;
    cxLabel35: TcxLabel;
    cb_SearchA0: TcxComboBox;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxTeStartA0: TcxTimeEdit;
    cxTeEndA0: TcxTimeEdit;
    cxGridA0View1Column1: TcxGridDBColumn;
    cxGridA0View1Column2: TcxGridDBColumn;
    cxGridA0View1Column3: TcxGridDBColumn;
    cxLabel22: TcxLabel;
    edt_SearchA0: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuItemClick(Sender: TObject);
    procedure mniN1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExcelA2Click(Sender: TObject);
    procedure btnSearchA2Click(Sender: TObject);
    procedure cbChartKindA2PropertiesChange(Sender: TObject);
		procedure cxGridA1View1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cbChartKindA3PropertiesChange(Sender: TObject);
    procedure cxGridA3View1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure btnDateA4Click(Sender: TObject);
    procedure cbChartKindA4PropertiesChange(Sender: TObject);
    procedure cbKindA4PropertiesChange(Sender: TObject);
    procedure cxGridA4View1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGridA2View1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGridA1C2ChartALLGetValueHint(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cxGridA1C2ChartSeries1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cbKindA1PropertiesChange(Sender: TObject);
    procedure cxGridA2C2ChartALLGetValueHint(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cxGridA2C2ChartSeries1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
		procedure cxGridA1C1ChartView1GetValueHint(Sender: TcxGridChartView;
			ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
		procedure cxGridA1C1ChartView1Series1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cxGridA3C2ChartALLSeries1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cxGridA3C1ChartView1Series1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cxGridA3C1ChartView1GetValueHint(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cxGridA3C2ChartALLGetValueHint(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cxGridA4C1ChartView1Series1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cxGridA4C1ChartView1GetValueHint(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure tm_FlashTimer(Sender: TObject);
    procedure pop_dateA1Popup(Sender: TObject);
    procedure cxGridA4C2ChartALLGetValueHint(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cxGridA4C2ChartALLSeries7GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
		procedure btnSearchA1Click(Sender: TObject);
    procedure btnExcelA1Click(Sender: TObject);
    procedure btnExcelA3Click(Sender: TObject);
    procedure btnExcelA4Click(Sender: TObject);
    procedure btnSearchA3Click(Sender: TObject);
    procedure btnSearchA4Click(Sender: TObject);
    procedure btnChartA1Click(Sender: TObject);
		procedure btnChartA2Click(Sender: TObject);
		procedure cbKindA3PropertiesChange(Sender: TObject);
		procedure btnChartA3Click(Sender: TObject);
		procedure btnChartA4Click(Sender: TObject);
		procedure btnSearchA5Click(Sender: TObject);
		procedure mMap_WKmoveLogCreate(ASender: TObject; Value: Integer);
    procedure btnMapPosClick(Sender: TObject);
    procedure chk_Search_RouteClick(Sender: TObject);
    procedure btnMapFPlayClick(Sender: TObject);
    procedure btnMapPlayClick(Sender: TObject);
    procedure btnMapStopClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure mMap_WKmoveLogMouseMove(ASender: TObject; Flag, X, Y: Integer);
    procedure mMap_WKmoveLogPOI_DblClick(ASender: TObject; const POI: IXPOIItem;
      nFlag, X, Y: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure mMap_WKmoveLogStateChange(ASender: TObject; Code, Value1,
      Value2: Integer);
    procedure mMap_WKmoveLogUI_MouseHover(ASender: TObject; const Obj: IXUIObj);
    procedure mMap_WKmoveLogUI_MouseLeave(ASender: TObject; const Obj: IXUIObj);
    procedure mMap_WKmoveLogUI_MouseMove(ASender: TObject; const Obj: IXUIObj;
      Flag, X, Y: Integer);
    procedure mMap_WKmoveLogUI_MouseUp(ASender: TObject; const Obj: IXUIObj;
      Flag, X, Y: Integer);
    procedure edt_SearchA1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
		procedure N1Click(Sender: TObject);
		procedure cxGridRunListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure edt_SearchA5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrdMV_ListCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrdMV_ListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrdMV_ListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cbChartKindA1PropertiesChange(Sender: TObject);
    procedure btnChartShow1Click(Sender: TObject);
    procedure btnChartShow2Click(Sender: TObject);
    procedure btnChartShow3Click(Sender: TObject);
    procedure btnChartShow4Click(Sender: TObject);
    procedure btnSearchA0Click(Sender: TObject);
    procedure cxGridA0View1ColumnHeaderClick(Sender: TcxGridTableView; AColumn: TcxGridColumn);
    procedure btnExcelA0Click(Sender: TObject);
    procedure edt_SearchA0KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
		{ Private declarations }
    AIndex : Integer;
    AOrderBy : string;

    mCtrlState : IXMasterControlState;
    mCtrlMan : IXCtrlMan;
    mUiman : IXUIMan;
    mDpsize : IXSize;
    mUtil : IXUtility;
    mPoiman : TalMapXLib_TLB.IXPOIMan;

    maxLogicalLevel : Integer;
    minLogicalLevel : Integer;
    ws_Lon, ws_Lat : integer;
    sw_Lon, sw_Lat : Double;
    m_Lon, m_Lat : Integer;   //mousemove 값
    mBtnLevle : array [0..12] of IXUIButton;
    MyToolBar1 : array[0..20] of IXUIButton;
    btnImg : IXUIImage;
    stcMsgArea: IXUIStaticText;
    layerMan : IXLayerMan;

    gbPlayStop : Boolean;

		sts_Chk : Boolean;
    giPreId, giStrId, giEndId : Integer;

    Pt1, Pt2 : TTmappos;
    pLocLat, pLocLng, pLocType : string;
    FRoutePoint : TRoutePoint;

		slLonList, slLatList : TStringList;
		function SetCtrlState(setType : Integer):Integer;
		function WGS84ToBessel(Y_1, x_1 : string) : integer;
		function BesselToWGS84(Y_1, x_1 : double) : integer;
		procedure OnMoveMap(lon, lat : INTEGER);
		procedure GeneralInit;
		procedure CreateToolBarUI;
		procedure CreateLevelBar;                                          //레벨생성
		procedure DestroyUI;
		procedure MapLevel_Master(level : INTEGER);
		procedure MakeStatusbar;
		function GetAdminCodeF(GLon, GLot : Integer) : string;
		procedure Mark_Symbol(Lon, Lat, index : Integer;AId, AGu : string);
		Procedure Proc_WK_Point(sLon, sLat, AId, AGu : string);    //선택 기사 위치에 마크
		procedure SetMapRectLevel(LLon, LLat, RLon, RLat : Integer);
		procedure Clear_WKPOI;
//    procedure Proc_RouteLine(AFromLon, AFromLat, AToLon, AToLat : integer; AViaLon, AViaLat : array of integer); //메인지도 경로 표기
		procedure Proc_RouteLine(ARoutePoint : TRoutePoint);
		Function SK_GetAngleFromLine(pt1, pt2 : TPoint) : Double;
		function Angle(Pt1, Pt2: TTmappos): Double;
		function fmod(const A,B:Extended): Extended;
    procedure Map_ZoomIn;
		procedure Map_ZoomOut;
		function Map_SetLevel(level: Integer): Integer;
		procedure BirdView;
		procedure CopyToClipboard;
    procedure DrawPolygon;
		procedure DrawPolyline;
		procedure Map_Rotate;
    procedure View3D;
		procedure ViewText;
    procedure HistoryNext;
		procedure HistoryPrev;
    procedure CheckArea;
		procedure CheckDistance;
		procedure DelDistance;
		procedure SaveImage;
		procedure RemovePolygon;
		procedure ObjectModify;
		procedure ShowThemeForm;
		procedure pSetDriverPoint;
    procedure pSetMapMove(LLon, LLat, RLon, RLat: Integer);
		function GetCurrentView: TcxGridDBTableView;
		procedure pSetPoiLoad;
		procedure pMapPlay( idx : Integer );
		procedure pSetLineAdd( ALon, ALat : String );

		procedure proc_init_Chart;
		procedure proc_init_key;
		procedure SetSearchDate(AStart, AEnd: TDate);

    procedure proc_SearchA0;
		procedure proc_SearchA1;
		procedure proc_SearchA2;
		procedure proc_SearchA3;
		procedure proc_SearchA4;
		procedure proc_SearchA5(ASabun : string; AChk : Boolean);
		procedure proc_SearchA5_2(ASabun, ASEQ : string; AChk : Boolean);
		procedure proc_LineSearch(ASraechType : string);
    procedure proc_BankLog2(sBrNo: string);
	public                                  
		{ Public declarations }
		sWkSabun : String;
		sConfSlip : String;   // 접수번호;
		sBeaChaTime : String;

		procedure proc_init;
		procedure proc_BrNameSet;
	end;

var
  Frm_STT_Shuttle: TFrm_STT_Shuttle;

implementation

{$R *.dfm}

uses Main, xe_Flash, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Dm, xe_Lib, xe_Msg,
	xe_packet, xe_xml, xe_Query, xe_system, xe_JON51, xe_SearchWord;

procedure TFrm_STT_Shuttle.FormCreate(Sender: TObject);
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

  cxPageControl1.Pages[0].TabVisible := GB_365System;  // 365시스템만
  if GB_365System then cxPageControl1.ActivePageIndex := 0
                  else cxPageControl1.ActivePageIndex := 1;

  FRoutePoint.lon := TStringList.Create;
  FRoutePoint.lat := TStringList.Create;
  FRoutePoint.Idx := TStringList.Create;

  slLonList := TStringList.Create;
  slLatList := TStringList.Create;

	proc_init;
end;

procedure TFrm_STT_Shuttle.FormDestroy(Sender: TObject);
begin
  Frm_STT_Shuttle := Nil;
  if Assigned(mMap_WKmoveLog) then FreeAndNil(mMap_WKmoveLog);
  FreeAndNil(FRoutePoint.lon);
  FreeAndNil(FRoutePoint.lat);
  FreeAndNil(FRoutePoint.Idx);

  FreeAndNil(slLonList);
  FreeAndNil(slLatList);
end;

procedure TFrm_STT_Shuttle.FormShow(Sender: TObject);
Var i : Integer;
begin
  fSetFont(Frm_STT_Shuttle, GS_FONTNAME);
  for i := 0 to pred(cxSTTStyle.Count) do
  begin
    TcxStyle(cxSTTStyle.Items[i]).Font.Name := GS_FONTNAME;
  end;

  for i := 0 to pred(cxStyleRepository1.Count) do
  begin
    TcxStyle(cxStyleRepository1.Items[i]).Font.Name := GS_FONTNAME;
  end;
end;

procedure TFrm_STT_Shuttle.GeneralInit;
begin
	maxLogicalLevel := 13 -1;
  minLogicalLevel := 0;

  mCtrlMan := mMap_WKmoveLog.GetCtrlMan;
  CreateLevelBar;
  mCtrlState.SetLevel(3);
  CreateToolBarUI;
  MakeStatusbar;
end;

function TFrm_STT_Shuttle.GetAdminCodeF(GLon, GLot: Integer): string;
var
  mAdminman : IXAdminMan;
  mCenterLL : TalMapXLib_TLB.IXPoint;
  mAdmitem : IXAdminItem;
  admcode : string;
  obj : IXUIObj;
begin
//  mCtrlMan := mMap.GetCtrlMan();
	mAdminman := mCtrlMan.GetAdminMan();
	mCtrlState := mCtrlMan.GetControlState();
	mCenterLL := mCtrlState.GetLLCenter(); // 지도의 중심 좌표
	mAdmitem := mAdminman.GetAdminItem(GLon, GLot);

	if mAdmitem <> nil then
  begin
		admcode := mAdmitem.GetAdminCode();	// 행정동 코드 얻기
    obj := mUiman.GetChildByUIID(301);
		if (obj <> nil) then obj.SetCaption(mAdmitem.GetAdminName(' ', 3));
		mAdmitem.Destroy();
	end;
  Result := admcode;
end;

function TFrm_STT_Shuttle.GetCurrentView: TcxGridDBTableView;
begin
	Result := cxGrdMV_List;

  if pnlRView.Visible then
		Result := cxGrdMC_List;    // 당일 내역 목록
end;

procedure TFrm_STT_Shuttle.HistoryNext;
begin
  mCtrlman := mMap_WKmoveLog.GetCtrlMan();
  mCtrlState := mCtrlman.GetControlState();
  mCtrlState.HistoryNext();
end;

procedure TFrm_STT_Shuttle.HistoryPrev;
begin
  mCtrlman := mMap_WKmoveLog.GetCtrlMan();
  mCtrlState := mCtrlman.GetControlState();
  mCtrlState.HistoryPrev();
end;

procedure TFrm_STT_Shuttle.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  sts_Chk := False;
	Action := Cafree;
end;

procedure TFrm_STT_Shuttle.proc_init;
begin
	AOrderBy := 'sum1';

	proc_init_key;
	proc_BrNameSet;
	proc_init_Chart;
end;


procedure TFrm_STT_Shuttle.proc_init_Chart;
var AChartView : array[1..7] of TcxGridChartView;
	i : integer;
begin
	AChartView[1] := cxGridA1C2ChartAll;
	AChartView[2] := cxGridA1C1ChartView1;
	AChartView[3] := cxGridA2C2ChartAll;
	AChartView[4] := cxGridA3C2ChartAll;
	AChartView[5] := cxGridA3C1ChartView1;
	AChartView[6] := cxGridA4C2ChartAll;
	AChartView[7] := cxGridA4C1ChartView1;

	for I := 1 to 7 do
	begin
//		if I = 23 then Continue;
		///기본차트 style
		AChartView[i].Styles.ActiveDataLevelInfo := cxSTTChart;
		AChartView[i].Styles.ActiveDataLevelInfo :=  cxSTTChart;
		AChartView[i].Styles.DataLevelActiveValueInfo :=  cxSTTChart;
		AChartView[i].Styles.DataLevelsInfo :=  cxSTTChart;
		AChartView[i].Styles.DiagramSelector :=  cxSTTChart;
		AChartView[i].Styles.Legend :=  cxSTTChart;
		AChartView[i].Styles.Title :=  cxSTTChart;
		AChartView[i].Styles.ToolBox :=  cxSTTChart;

		///DiagramArea style
		AChartView[i].DiagramArea.AxisValue.TickMarkLabelFormat :=  ',0;-,0' ;
		AChartView[i].DiagramArea.EmptyPointsDisplayMode :=  epdmGap;
		AChartView[i].DiagramArea.Styles.Axis :=  cxStyleBasic;
		AChartView[i].DiagramArea.Styles.CategoryGridLines :=  cxSTTChart;
		AChartView[i].DiagramArea.Styles.GridLines :=  cxSTTChartGridLine;
		AChartView[i].DiagramArea.Styles.Plot :=  cxSTTChart;
		AChartView[i].DiagramArea.Values.CaptionPosition :=  ldvcpAbove;
		AChartView[i].DiagramArea.Values.MarkerStyle :=  cmsSquare;

		///DiagramBar style
		AChartView[i].DiagramBar.AxisValue.TickMarkLabelFormat :=  ',0;-,0';
		AChartView[i].DiagramBar.Styles.Axis :=  cxStyleBasic              ;
		AChartView[i].DiagramBar.Styles.AxisTitle :=  cxSTTChart           ;
		AChartView[i].DiagramBar.Styles.CategoryGridLines :=  cxSTTChart;//cxStyleBasic ;
		AChartView[i].DiagramBar.Styles.GridLines :=  cxSTTChartGridLine   ;
		AChartView[i].DiagramBar.Styles.Plot :=  cxSTTChart                ;
		AChartView[i].DiagramBar.Values.CaptionPosition :=  cdvcpOutsideEnd;

		///DiagramColumn style
//		AChartView[i].DiagramColumn.Active :=  True                           ;
		AChartView[i].DiagramColumn.AxisValue.MinMaxValues :=  mmvAuto        ;
		AChartView[i].DiagramColumn.AxisValue.TickMarkLabelFormat :=  ',0;-,0';
		AChartView[i].DiagramColumn.Styles.Axis :=  cxStyleBasic              ;
		AChartView[i].DiagramColumn.Styles.AxisTitle :=  cxSTTChart           ;
		AChartView[i].DiagramColumn.Styles.CategoryGridLines :=  cxStyleBasic ;
		AChartView[i].DiagramColumn.Styles.GridLines :=  cxSTTChartGridLine   ;
		AChartView[i].DiagramColumn.Styles.Plot :=  cxSTTChart                ;
		AChartView[i].DiagramColumn.Values.CaptionPosition :=  cdvcpOutsideEnd;

		///DiagramLine style
		AChartView[i].DiagramLine.AxisValue.TickMarkLabelFormat :=  ',0;-,0' ;
		AChartView[i].DiagramLine.Styles.Axis :=  cxStyleBasic               ;
		AChartView[i].DiagramLine.Styles.AxisTitle :=  cxSTTChart            ;
		AChartView[i].DiagramLine.Styles.CategoryGridLines :=  cxSTTChart    ;
		AChartView[i].DiagramLine.Styles.GridLines :=  cxSTTChartGridLine    ;
		AChartView[i].DiagramLine.Styles.Plot :=  cxSTTChart                 ;
		AChartView[i].DiagramLine.Values.CaptionPosition :=  ldvcpAbove      ;
		AChartView[i].DiagramLine.Values.MarkerStyle :=  cmsSquare           ;

		///DiagramPie style
		AChartView[i].DiagramPie.Legend.Orientation := cpoHorizontal                      ;
		AChartView[i].DiagramPie.Legend.Position := cppNone                               ;
		AChartView[i].DiagramPie.Styles.ValueCaptions := cxStyleBasic                     ;
		AChartView[i].DiagramPie.Styles.SeriesSites := cxSTTChart                         ;
		AChartView[i].DiagramPie.Values.CaptionPosition := pdvcpOutsideEndWithLeaderLines ;
		AChartView[i].DiagramPie.Values.CaptionItems := [pdvciCategory, pdvciPercentage]  ;
																																										 
		///DiagramStackedArea style
		AChartView[i].DiagramStackedArea.AxisValue.TickMarkLabelFormat :=  ',0;-,0'        ;
		AChartView[i].DiagramStackedArea.Styles.Axis :=  cxStyleBasic                      ;
		AChartView[i].DiagramStackedArea.Styles.CategoryGridLines :=  cxSTTChart           ;
		AChartView[i].DiagramStackedArea.Styles.GridLines :=  cxSTTChartGridLine           ;
		AChartView[i].DiagramStackedArea.Styles.Plot :=  cxSTTChart                        ;
		AChartView[i].DiagramStackedArea.Values.CaptionPosition :=  ldvcpAbove             ;
		AChartView[i].DiagramStackedArea.Values.MarkerStyle :=  cmsSquare                  ;
																																										 
		///DiagramStackedBar style                                                       
		AChartView[i].DiagramStackedBar.AxisValue.TickMarkLabelFormat :=  ',0;-,0'         ;
		AChartView[i].DiagramStackedBar.Styles.Axis :=  cxStyleBasic                       ;
		AChartView[i].DiagramStackedBar.Styles.CategoryGridLines :=  cxSTTChart;//cxStyleBasic          ;
		AChartView[i].DiagramStackedBar.Styles.GridLines :=  cxSTTChartGridLine            ;
		AChartView[i].DiagramStackedBar.Styles.Plot :=  cxSTTChart                         ;
		AChartView[i].DiagramStackedBar.Values.CaptionPosition :=  cdvcpOutsideEnd         ;

		///DiagramStackedColumn style
		AChartView[i].DiagramStackedColumn.AxisValue.TickMarkLabelFormat :=  ',0;-,0'      ;
		AChartView[i].DiagramStackedColumn.Styles.Axis :=  cxStyleBasic                    ;
		AChartView[i].DiagramStackedColumn.Styles.CategoryGridLines :=  cxStyleBasic       ;
		AChartView[i].DiagramStackedColumn.Styles.GridLines :=  cxSTTChartGridLine         ;
		AChartView[i].DiagramStackedColumn.Styles.Plot :=  cxSTTChart                      ;
		AChartView[i].DiagramStackedColumn.Values.CaptionPosition :=  cdvcpInsideEnd       ;
	end;
end;


procedure TFrm_STT_Shuttle.proc_init_key;
var
  I: Integer;
begin
	try
		cxDtStartA0.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
		cxDtEndA0.Date := cxDtStartA0.Date + 1;

		for I := 0 to cxGridA0View1.ColumnCount - 1 do
		begin
			case I of
				0:
					cxGridA0View1.Columns[I].DataBinding.ValueTypeClass := TcxIntegerValueType;
				4, 5:
					begin
						cxGridA0View1.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
						cxGridA0View1.Columns[I].Properties := frm_Main.gCurProperties;
					end;
			else
				cxGridA0View1.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
			end;
		end;
	except
	end;

	//---------------------------------------------------------------------------- A1
	try
		cxDtStartA1.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
		cxDtEndA1.Date := cxDtStartA1.Date + 1;

		for I := 0 to cxGridA1View1.ColumnCount - 1 do
		begin
			case I of
				0:
					cxGridA1View1.Columns[I].DataBinding.ValueTypeClass := TcxIntegerValueType;
				5..7:
					begin
						cxGridA1View1.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
						cxGridA1View1.Columns[I].Properties := frm_Main.gCurProperties;
					end;
			else
				cxGridA1View1.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
			end;
		end;
		cb_SearchA1.ItemIndex := 0;
		edt_SearchA1.Text := '';
		cbKindA1.ItemIndex := 0;
	except

	end;

	//---------------------------------------------------------------------------- A2
  try
		cxDtStartA2.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),
			1, 8))) - 1;
		cxDtEndA2.Date := cxDtStartA2.Date + 1;

		for I := 0 to cxGridA2View1.ColumnCount - 1 do
		begin
			case I of
				0:
					cxGridA2View1.Columns[I].DataBinding.ValueTypeClass := TcxIntegerValueType;
				5:
					begin
						cxGridA2View1.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
						cxGridA2View1.Columns[I].Properties := Frm_Main.gCurProperties;
					end;
			else
				cxGridA2View1.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
			end;
		end;
		cb_SearchA2.ItemIndex := 0;
		edt_SearchA2.Text := '';
	except
  end;

	// --------------------------------------------------------------------------- A3 
	try
		cxDtStartA3.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),
			1, 8))) - 1;
		cxDtEndA3.Date := cxDtStartA3.Date + 1;

		for I := 0 to cxGridA3View1.ColumnCount - 1 do
		begin
			case I of
				0:
					cxGridA3View1.Columns[I].DataBinding.ValueTypeClass := TcxIntegerValueType;
				2..4:
					begin
						cxGridA3View1.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
						cxGridA3View1.Columns[I].Properties := frm_Main.gCurProperties;
					end;
			else
				cxGridA3View1.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
			end;
		end;
		cb_SearchA3.ItemIndex := 0;
		edt_SearchA3.Text := '';
		cbKindA3.ItemIndex := 0;
	except

	end;

	// --------------------------------------------------------------------------- A4

	try
		cxDtStartA4.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),
			1, 8))) - 1;
		cxDtEndA4.Date := cxDtStartA4.Date + 1;

		for I := 0 to cxGridA4View1.ColumnCount - 1 do
		begin
			case I of
				0:
					cxGridA4View1.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
				2..4:
					begin
						cxGridA4View1.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
						cxGridA4View1.Columns[I].Properties := frm_Main.gCurProperties;
					end;
			else
				cxGridA4View1.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
			end;
		end;
		cb_SearchA4.ItemIndex := 0;
		edt_SearchA4.Text := '';
		cbKindA4.ItemIndex := 0;
	except

	end;

	// --------------------------------------------------------------------------- A5

		//그리드 초기화
	try
		sBeaChaTime := '';
		edt_SearchA5.Text := '';
		cxGridRunList.DataController.SetRecordCount(0);
		cxGridRunList.Columns[0].DataBinding.ValueTypeClass := TcxIntegerValueType;
		for i := 1 to cxGridRunList.ColumnCount - 1 do
			cxGridRunList.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;

		cxGrdMV_List.DataController.SetRecordCount(0);
		cxGrdMV_List.Columns[0].DataBinding.ValueType := 'Integer';
		for i := 1 to cxGrdMV_List.ColumnCount - 1 do
			cxGrdMV_List.Columns[i].DataBinding.ValueType := 'String';

		cxGrdMC_List.DataController.SetRecordCount(0);
		cxGrdMC_List.Columns[0].DataBinding.ValueTypeClass := TcxIntegerValueType;
		for i := 1 to cxGrdMC_List.ColumnCount - 1 do
			cxGrdMC_List.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;

		cxDtStartA5.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),
			1, 8))) - 1;
		cxDtEndA5.Date := cxDtStartA5.Date + 1;
		cxTimeStart.Text := '09:00:00';
		cxTimeEnd  .Text := FormatDateTime('HH:NN:SS', Now);
	except

	end;
	
end;

procedure TFrm_STT_Shuttle.proc_LineSearch(ASraechType: string);
var XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, i : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	j : integer;
begin
//4.노선정류장조회 sel06   MNG.GET_SH_STOP_LIST
// request : 노선코드
// response :  1.정류장순번 2.정류장명 3.X 4.Y 정5.류장이동소요시간 분단위 6.상하행구분 (상U , 하 D) 
 
	try
		slList := TStringList.Create;
		try
			Param := ASraechType;
			if not RequestBasePaging(GetSel06('GET_STATION_LIST', 'SHUTTLE_MNG.GET_STATION_LIST', '100', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('노선정류장조회 결과 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				FreeAndNil(slList);
				Exit;
			end;

			xdom := ComsDomDocument.Create;
			try
				Frm_Flash.cxPBar1.Properties.Max := slList.Count;
				Frm_Flash.cxPBar1.Position := 0;
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

									WGS84ToBessel(getWGS84(ls_Rcrd[3]), '0'+ getWGS84(ls_Rcrd[2]));
									Mark_Symbol(ws_Lon, ws_Lat, StrToInt(ls_Rcrd[0]), '99', '');
								end;
							finally
								ls_Rcrd.Free;
							end;
						end;
					end;
				end;
			finally
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

procedure TFrm_STT_Shuttle.Proc_RouteLine(ARoutePoint: TRoutePoint);
Var i, j : Integer;
  aDistance : Double;
  aTime, aHour, aMin, aSec, SRPort : integer;
  sTmp, SRIp : string;
	RouteMan : SmartSRXLib_TLB.IXRouteMan;
  SmartSR : TSmartSRXCtrl;
  info : IXRouteInfo4;
  style : IXLayerStyle;
  mPolygon : IXLayerPolygon;
  mCenterLL : TalMapXLib_TLB.IXPoint;
  iRouteCnt, iRouteDraw, iIdx, xIdx : integer;
begin
  Try
    Screen.Cursor := crHourGlass;
    SmartSR := TSmartSRXCtrl.Create(nil);
    if RouteMan = nil then
      RouteMan := SmartSR.GetRouteMan();

    try
      GetSearchRouteIpPort(SRIp, SRPort);

//      SRIp := '211.219.153.75';

      if RouteMan.Open(SRIp, SRPort) then
        RouteMan.Clear()
      else
      begin
        if GS_SmartServerIP = SearchRoute1[0].IP then Inc(SR1ErrCnt)
                                                 else Inc(SR2ErrCnt);

        GetSearchRouteIpPort(SRIp, SRPort);
        SetDebugeWrite('1. SmartSR Open : IP - ' + SRIp + ',' + ' Port - ' + IntToStr(SRPort));

        if RouteMan.Open(SRIp, SRPort) then
          RouteMan.Clear()
        else
        begin
          GMessagebox('경로 탐색 서버 접속 장애 발생으로 인해 연결할수 없습니다.', CDMSE);
          Exit;
        end;
      end;

      if ( SR1ErrCnt > 4 ) And ( SR2ErrCnt > 4 ) then
      begin
        chk_Search_Route.Checked := False;
        GMessagebox('경로 탐색 서버 접속 장애 발생으로 인해 연결할수 없습니다.', CDMSE);
        Exit;
      end;

      iRouteCnt := 0; //전체적인 횟수
      iRouteDraw := 0; //동일인덱스 횟수
      iIdx := 0; xIdx := 0;
      while ARoutePoint.Idx.Count > 0 do
      begin
        iIdx := StrToInt(ARoutePoint.Idx[0]);
        if iIdx = xIdx then
        begin
          if iRouteCnt = 0 then
          begin
            RouteMan.SetOrgLonLat(strtoint(ARoutePoint.lon[0]), strtoint(ARoutePoint.lat[0]));
          end
          else if ARoutePoint.Idx.Count > 1 then
          begin
            if (iIdx <> StrToIntDef(ARoutePoint.Idx[1],0)) then
            begin
              RouteMan.SetDstLonLat(strtoint(ARoutePoint.lon[0]), strtoint(ARoutePoint.lat[0]));
              iRouteCnt := 0;
              xIdx := StrToInt(ARoutePoint.Idx[1]);
              ARoutePoint.lon.Delete(0);
              ARoutePoint.lat.Delete(0);
              ARoutePoint.Idx.Delete(0);

              RouteMan.SetOrgDirectionToBoth();
              RouteMan.SetViaDirectionToBoth();
              RouteMan.SetDstDirectionToBoth();

              ////// Toll비
              RouteMan.SetTollFareType(1);

              ////// 탐색 옵션
              RouteMan.Remote_SetRPCType(GT_DISTANCE_ROUTETYPE, GT_DISTANCE_ROADTYPE, GT_DISTANCE_TOLLTYPE);
//              RouteMan.Remote_SetRPCType(2, 1, 2);  // 최단, 일반도로, 유로
              /////////////////////////////////////////////////////////////////
              info := RouteMan.SearchRoute4;
              if (info <> nil) then
              begin
                if GS_SmartServerIP = SearchRoute1[0].IP then SR1ErrCnt := 0
                                                         else SR2ErrCnt := 0;

                aDistance := 0;
                aTime := 0;
                for i := 0 to info.GetNodeCount - 1 do
                begin
                  info.SetCurrentNodeIndex(i);

                  aDistance := aDistance + info.GetNodeRemainDist();
                  aTime := aTime + info.GetNodeRemainTime();
                end;
                mCtrlState := mctrlMan.GetControlState();
                layerMan := mCtrlMan.GetLayerMan();
                mCenterLL := mCtrlState.GetLLCenter(); // 지도의 중심 좌표

                // Step 1. Make XLayer Style
                style := layerMan.FindStyle(500);
                if (style = Nil) then
                begin
                  style := layerMan.NewStyle(500);
                  style.SetPen(mUtil.RGBColor(13, 136, 230), 5, 0);//mUtilL.GetConstToValue('PS_SOLID'));
                end;
                // Step 2. Make XLayer PolyLine
                mPolygon := layerMan.NewPolygon(0, -1);
                mPolygon.BeginUpdate();
                for i := 0 to info.GetLinkCount - 1 do
                begin
                  info.SetCurrentLinkIndex(i);
                  for j := 0 to info.GetLinkNumPoint-1 do
                  begin
                    if (info.GetLinkPointLon(j) > 0) and (info.GetLinkPointLat(j) > 0) then
                    begin
                      mPolygon.AddPoint(info.GetLinkPointLon(j), info.GetLinkPointLat(j));
                      mPolygon.SetCanClick(1);
                      mPolygon.SetCanFocus(1);
                      mPolygon.SetClosed(0);   // 0: Line, 1: Polygon
                      mPolygon.SetStyle(style);
                    end;
                  end;
                end;
                mPolygon.EndUpdate();

                ///거리 및 시간 표기///
                mUiman := mCtrlMan.GetUIMan;
                aDistance := Roundto(aDistance / 1000,-1);
                aHour := aTime div 3600;
                aMin  := (aTime - (aHour * 3600)) div 60;
                aSec  := (aTime - (aHour * 3600) - (aMin * 60));
                if aHour > 0 then
                  sTmp := '이동 거리:' + FloatToStr(aDistance) + 'Km 시간:' + IntToStr(aHour) + '시간' + IntToStr(aMin) + '분' + IntToStr(aSec) + '초'
                else
                  sTmp := '이동 거리:' + FloatToStr(aDistance) + 'Km 시간:' + IntToStr(aMin) + '분' + IntToStr(aSec) + '초';
                stcMsgArea.SetCaption(sTmp);
                stcMsgArea.SetCanFocus(0);
                stcMsgArea.SetCanClick(0);
  //              mItem.SetContents(sTmp);
              end;
              Continue;
            end
            else
            begin
              RouteMan.AddNode(strtoint(ARoutePoint.lon[0]), strtoint(ARoutePoint.lat[0]));
            end;
          end
          else if ARoutePoint.Idx.Count = 1 then
          begin
            RouteMan.SetDstLonLat(strtoint(ARoutePoint.lon[0]), strtoint(ARoutePoint.lat[0]));
            ARoutePoint.lon.Delete(0);
            ARoutePoint.lat.Delete(0);
            ARoutePoint.Idx.Delete(0);

            RouteMan.SetOrgDirectionToBoth();
            RouteMan.SetViaDirectionToBoth();
            RouteMan.SetDstDirectionToBoth();

            ////// Toll비
            RouteMan.SetTollFareType(1);

            ////// 탐색 옵션
            RouteMan.Remote_SetRPCType(GT_DISTANCE_ROUTETYPE, GT_DISTANCE_ROADTYPE, GT_DISTANCE_TOLLTYPE);
//            RouteMan.Remote_SetRPCType(2, 1, 2);  // 최단, 일반도로, 유로
            /////////////////////////////////////////////////////////////////
            info := RouteMan.SearchRoute4;
            if (info <> nil) then
            begin
              if GS_SmartServerIP = SearchRoute1[0].IP then SR1ErrCnt := 0
                                                       else SR2ErrCnt := 0;

              aDistance := 0;
              aTime := 0;
              for i := 0 to info.GetNodeCount - 1 do
              begin
                info.SetCurrentNodeIndex(i);

                aDistance := aDistance + info.GetNodeRemainDist();
                aTime := aTime + info.GetNodeRemainTime();
              end;
              mCtrlState := mctrlMan.GetControlState();
              layerMan := mCtrlMan.GetLayerMan();
              mCenterLL := mCtrlState.GetLLCenter(); // 지도의 중심 좌표

              // Step 1. Make XLayer Style
              style := layerMan.FindStyle(500);
              if (style = Nil) then
              begin
                style := layerMan.NewStyle(500);
                style.SetPen(mUtil.RGBColor(13, 136, 230), 5, 0);//mUtilL.GetConstToValue('PS_SOLID'));
              end;
              // Step 2. Make XLayer PolyLine
              mPolygon := layerMan.NewPolygon(0, -1);
              mPolygon.BeginUpdate();
              for i := 0 to info.GetLinkCount - 1 do
              begin
                info.SetCurrentLinkIndex(i);
                for j := 0 to info.GetLinkNumPoint-1 do
                begin
                  if (info.GetLinkPointLon(j) > 0) and (info.GetLinkPointLat(j) > 0) then
                  begin
                    mPolygon.AddPoint(info.GetLinkPointLon(j), info.GetLinkPointLat(j));
                    mPolygon.SetCanClick(1);
                    mPolygon.SetCanFocus(1);
                    mPolygon.SetClosed(0);   // 0: Line, 1: Polygon
                    mPolygon.SetStyle(style);
                  end;
                end;
              end;
              mPolygon.EndUpdate();

              ///거리 및 시간 표기///
              mUiman := mCtrlMan.GetUIMan;
              aDistance := Roundto(aDistance / 1000,-1);
              aHour := aTime div 3600;
              aMin  := (aTime - (aHour * 3600)) div 60;
              aSec  := (aTime - (aHour * 3600) - (aMin * 60));
              if aHour > 0 then
                sTmp := '이동 거리:' + FloatToStr(aDistance) + 'Km 시간:' + IntToStr(aHour) + '시간' + IntToStr(aMin) + '분' + IntToStr(aSec) + '초'
              else
                sTmp := '이동 거리:' + FloatToStr(aDistance) + 'Km 시간:' + IntToStr(aMin) + '분' + IntToStr(aSec) + '초';
              stcMsgArea.SetCaption(sTmp);
              stcMsgArea.SetCanFocus(0);
              stcMsgArea.SetCanClick(0);
            end;

            Continue;
          end
          else
          begin
            RouteMan.AddNode(strtoint(ARoutePoint.lon[0]), strtoint(ARoutePoint.lat[0]));
          end;
          ARoutePoint.lon.Delete(0);
          ARoutePoint.lat.Delete(0);
          ARoutePoint.Idx.Delete(0);
          xIdx := iIdx;
          inc(iRouteCnt);
        end
        else if iIdx <> xIdx then
        begin
          ARoutePoint.lon.Delete(iRouteCnt);
          ARoutePoint.lat.Delete(iRouteCnt);
          ARoutePoint.Idx.Delete(iRouteCnt);
          iRouteCnt := 0;
          xIdx := iIdx;
        end;
      end;
    finally
      FreeAndNil(SmartSR);
      RouteMan := nil;
    end;
  except
    ShowMessage('기사이동로그-경로탐색 오류');
  End;
    Screen.Cursor := crDefault;

{  for i := 0 to ARoutePoint.lon.count -1 do
  begin
    if i = 0 then
    begin
      RouteMan.SetOrgLonLat(strtoint(ARoutePoint.lon[0]), strtoint(ARoutePoint.lat[0]));
    end
    else if i = ARoutePoint.lon.count -1 then
    begin
      RouteMan.SetDstLonLat(strtoint(ARoutePoint.lon[i]), strtoint(ARoutePoint.lat[i]));
    end
    else
    begin
      RouteMan.AddNode(strtoint(ARoutePoint.lon[i]), strtoint(ARoutePoint.lat[i]));
    end;
  end;   }

  ////// 양방향 탐색을 위해서는 아래의 옵션을 추가해 주세요. //////
end;

procedure TFrm_STT_Shuttle.proc_SearchA0;
var
	XmlData, Param, ErrMsg, ls_MSG_Err, startDate, endDate, sType, sTemp, sValue, sDriver, sCount, sGubun, sWorker : string;
	ErrCode, i : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
	strHdNo, strBrNo : string;
	iRow, iPos : Integer;
begin
	if fGetChk_Search_HdBrNo('NFC현황') then Exit;

	cxGridA0View1.DataController.SetRecordCount(0);

	try
		//////////////////////////////////////////////////////////////////////////////////
		//  접수 전문
		//////////////////////////////////////////////////////////////////////////////////
//		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
//			strHdNo := GT_SEL_BRNO.HDNO
//		else
//			strHdNo := GT_USERIF.HD;
//		Param := strHdNo;

		if (GT_USERIF.lv = '60') then	strBrNo := GT_SEL_BRNO.BrNo
                             else	strBrNo := GT_USERIF.BR;

    startDate := StringReplace(DateToStr(cxDtStartA0.Date), '-', '', [rfReplaceAll]) + FormatDateTime('HHNNSS', cxTeStartA0.Time);
    endDate   := StringReplace(DateToStr(cxDtEndA0.Date  ), '-', '', [rfReplaceAll]) + FormatDateTime('HHNNSS', cxTeEndA0.Time);

    if cb_SearchA0.ItemIndex = 0 then sType := '00' else   //  타입조건 ( 00 전체, 56 입금, 57 환불)
    if cb_SearchA0.ItemIndex = 1 then sType := '56' else
    if cb_SearchA0.ItemIndex = 2 then sType := '57';

		Param := strBrNo;
		Param := Param + '│' + startDate + '│' + endDate;
		Param := Param + '│' + sType;

		Screen.Cursor := crHourGlass;

		tm_Flash.Enabled := True;
		Frm_Main.Enabled := False;

		if not RequestBase(GetSel06('GET_NFC_SHUTTLE_CASH_LOG ', 'MNG.GET_NFC_SHUTTLE_CASH_LOG ', '500', Param), XmlData, ErrCode, ErrMsg) then
		begin
			Frm_Flash.hide;
			tm_Flash.Enabled := False;
			Application.ProcessMessages;
			GMessagebox(Format('NFC현황 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Frm_Main.Enabled := True;
			Screen.Cursor := crDefault;
			Exit;
		end;

		xdom := ComsDomDocument.Create;
		try
			if not xdom.loadXML(XmlData) then
			begin
				Frm_Flash.hide;
				Frm_Main.Enabled := True;
				tm_Flash.Enabled := False;
				Screen.Cursor := crDefault;
				Exit;
			end;

			ls_MSG_Err := GetXmlErrorCode(XmlData);
			if ('0000' = ls_MSG_Err) then
			begin
				if (0 < GetXmlRecordCount(XmlData)) then
				begin
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					cxGridA0View1.DataController.SetRecordCount(0);
					cxGridA0View1.BeginUpdate;
					ls_Rcrd := TStringList.Create;
					try
						iRow := 0;
						for I := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							if not Check_ID(GT_USERIF.ID, ls_Rcrd[2]) then
							begin
                // 메모에서 자료 추출
                sTemp := StringReplace(ls_Rcrd[7], #$A, '/', [rfReplaceAll]);

                // 구자료
                if Pos(',', sTemp) > 0 then
                begin
                  sTemp := StringReplace(sTemp, '/', '', [rfReplaceAll]);

                  // 횟수는 무시
                  iPos := Pos('회', sTemp);
                  sValue := Copy(sTemp, 1, iPos);
                  sTemp  := StringReplace(sTemp, sValue, '', [rfReplaceAll]);

                  // 유형
                  sGubun := Copy(sTemp, 1, 2);
                  sTemp  := StringReplace(sTemp, sGubun, '', [rfReplaceAll]);

                  // 건수
                  if sGubun = '셔틀' then sCount := '1' else
                  if sGubun = '연결' then sCount := '0' else
                  if sGubun = 'ko'   then sCount := '0' else
                  if sGubun = '환불' then sCount := '-1';

                  // 대리기사
                  iPos := Pos(',', sTemp);
                  sWorker := Copy(sTemp, 1, iPos-1);
                end else
                // 신자료
                begin
                  sValue := fPosEx(sTemp, '/', 1);
                  sValue := StringReplace(sValue, '회', '', [rfReplaceAll]);

                  // 유형
                  sGubun := fPosExN(sTemp, '/', 2);

                  // 건수
                  if sGubun = '셔틀' then sCount := '1' else
                  if sGubun = '연결' then sCount := '0' else
                  if sGubun = 'ko'   then sCount := '0' else
                  if sGubun = '환불' then sCount := '-1';

                  // 대리기사
                  sWorker := fPosExN(sTemp, '/', 3);
                end;

                sTemp := ls_Rcrd[3];
                iPos := Pos('*', sTemp);
                sDriver := Copy(sTemp, iPos+1, Length(sTemp)-iPos);

                if Trim(edt_SearchA0.Text) <> '' then
                begin
                  if Pos(Trim(edt_SearchA0.Text), sDriver) <= 0 then Continue;
                end;

                iRow := cxGridA0View1.DataController.AppendRecord;  // 1 Record 추가
                cxGridA0View1.DataController.Values[iRow, 0] := IntToStr(iRow + 1);                // No
                cxGridA0View1.DataController.Values[iRow, 1] := ls_Rcrd[1];                        // 지사명
                cxGridA0View1.DataController.Values[iRow, 2] := sDriver;                           // 셔틀기사
                cxGridA0View1.DataController.Values[iRow, 3] := ls_Rcrd[4];                        // 타입
                cxGridA0View1.DataController.Values[iRow, 4] := StrToIntDef(ls_Rcrd[5], 0);        // 금액
                cxGridA0View1.DataController.Values[iRow, 5] := StrToIntDef(sCount, 0);            // 건수
                cxGridA0View1.DataController.Values[iRow, 6] := sGubun;                            // 유형
                cxGridA0View1.DataController.Values[iRow, 7] := sWorker;                            // 대리기사
                sTemp := ls_Rcrd[2];
                if sTemp <> '' then
                begin
                  sTemp := StringReplace(sTemp, '-', '', [rfReplaceAll]);
                  sTemp := StringReplace(sTemp, ':', '', [rfReplaceAll]);
                  sTemp := StringReplace(sTemp, ' ', '', [rfReplaceAll]);
                  sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp,  5, 2) + '-' + Copy(sTemp,  7, 2) + ' ' +
                           Copy(sTemp, 9, 2) + ':' + Copy(sTemp, 11, 2) + ':' + Copy(sTemp, 13, 2);
                end;
                cxGridA0View1.DataController.Values[iRow, 8] := sTemp;                             // 입력일
                cxGridA0View1.DataController.Values[iRow, 9] := StringReplace(ls_Rcrd[7], #$A, '/', [rfReplaceAll]); // 메모
//                cxGridA0View1.DataController.Values[iRow, 8] := ls_Rcrd[8];                        // 접수번호
							end;
						end;
					finally
						ls_Rcrd.Free;
						cxGridA0View1.EndUpdate;
					end;
				end	else
				begin
					Frm_Flash.hide;
					tm_Flash.Enabled := False;
					Application.ProcessMessages;
					GMessagebox('검색된 내용이 없습니다', CDMSE);
				end;
			end;
		finally
			Screen.Cursor := crDefault;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			tm_Flash.Enabled := False;
			xdom := Nil;
		end;
	except
		on e: Exception do
		begin
			ls_Rcrd.Free;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			tm_Flash.Enabled := False;
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_STT_Shuttle.proc_SearchA1;
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, i : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
	strHdNo, strBrNo : string;
	iNum: Integer;
begin
	SetDebugeWrite('TFrm_STT_Shuttle.proc_SearchA1');

	if fGetChk_Search_HdBrNo('기사별 통계') then Exit;

	cxGridA1View1.DataController.SetRecordCount(0);

	try
		//////////////////////////////////////////////////////////////////////////////////
		//  접수 전문
		//////////////////////////////////////////////////////////////////////////////////
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			strHdNo := GT_SEL_BRNO.HDNO
		else
			strHdNo := GT_USERIF.HD;
		Param := strHdNo;

		if (GT_USERIF.lv = '60') then
		begin
			if GT_SEL_BRNO.GUBUN = '1' then
				strBrNo := GT_SEL_BRNO.BrNo
			else
				strBrNo := '';
		end
		else
			strBrNo := GT_USERIF.BR;
			
		Param := Param + '│' + strBrNo;
		Param := Param + '│' + IntToStr(cb_SearchA1.ItemIndex);
		Param := Param + '│' + Trim(edt_SearchA1.Text);
		Param := Param + '│' + formatdatetime('yyyymmdd', cxDtStartA1.Date) + '│' + formatdatetime('yyyymmdd', cxDtEndA1.Date);

		Screen.Cursor := crHourGlass;

		tm_Flash.Enabled := True;
		Frm_Main.Enabled := False;

		if not RequestBase(GetSel06('GET_STAT_SHUTTLE_WK', 'SHUTTLE_MNG.GET_STAT_SHUTTLE_WK', '500', Param), XmlData, ErrCode, ErrMsg) then
		begin
			Frm_Flash.hide;
			tm_Flash.Enabled := False;
			Application.ProcessMessages;
			GMessagebox(Format('기사별 셔틀통계 리스트 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Frm_Main.Enabled := True;
			Screen.Cursor := crDefault;
			Exit;
		end;
		
		xdom := ComsDomDocument.Create;
		try
			if not xdom.loadXML(XmlData) then
			begin
				Frm_Flash.hide;
				Frm_Main.Enabled := True;
				tm_Flash.Enabled := False;
				Screen.Cursor := crDefault;
				Exit;
			end;

			ls_MSG_Err := GetXmlErrorCode(XmlData);
			if ('0000' = ls_MSG_Err) then
			begin
				if (0 < GetXmlRecordCount(XmlData)) then
				begin
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					cxGridA1View1.DataController.SetRecordCount(0);
					cxGridA1View1.BeginUpdate;
					ls_Rcrd := TStringList.Create;
					try
						iNum := 0;
						for I := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							if not Check_ID(GT_USERIF.ID, ls_Rcrd[2]) then
							begin
								ls_Rcrd.Insert(0, IntToStr(iNum + 1));

								cxGridA1View1.DataController.AppendRecord;
								cxGridA1View1.DataController.SetValue(iNum, 0, ls_Rcrd[0]);
								cxGridA1View1.DataController.SetValue(iNum, 1, ls_Rcrd[1]);
								cxGridA1View1.DataController.SetValue(iNum, 2, Format('%s(%s)', [ls_Rcrd[2], ls_Rcrd[3]]));
								cxGridA1View1.DataController.SetValue(iNum, 3, ls_Rcrd[4]);             //기사사번
								cxGridA1View1.DataController.SetValue(iNum, 4, ls_Rcrd[5]);             //기사명
								cxGridA1View1.DataController.SetValue(iNum, 5, ls_Rcrd[6]);             //호출건수
								cxGridA1View1.DataController.SetValue(iNum, 6, ls_Rcrd[7]);             //탑승건수
								cxGridA1View1.DataController.SetValue(iNum, 7, ls_Rcrd[8]);             //Gap
								cxGridA1View1.DataController.SetValue(iNum, 8, ls_Rcrd[9]);             //입사일
								iNum := iNum + 1;
							end;
						end;
					finally
						ls_Rcrd.Free;
						cxGridA1View1.EndUpdate;
						btnChartA1.Click;
					end;
				end
				else
				begin
					Frm_Flash.hide;
					tm_Flash.Enabled := False;
					Application.ProcessMessages;
					GMessagebox('검색된 내용이 없습니다', CDMSE);
				end;
			end;
		finally
			Screen.Cursor := crDefault;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			tm_Flash.Enabled := False;
			xdom := Nil;
		end;
	except
		on e: Exception do
		begin
			ls_Rcrd.Free;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			tm_Flash.Enabled := False;
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_STT_Shuttle.proc_SearchA2;
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, i : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
	strHdNo, strBrNo : string;
	iNum: Integer;
begin
	SetDebugeWrite('TFrm_STT_Shuttle.proc_SearchA2');

	if fGetChk_Search_HdBrNo('차량별 통계') then Exit;

	cxGridA2View1.DataController.SetRecordCount(0);

	try
		//////////////////////////////////////////////////////////////////////////////////
		//  접수 전문
		//////////////////////////////////////////////////////////////////////////////////
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			strHdNo := GT_SEL_BRNO.HDNO
		else
			strHdNo := GT_USERIF.HD;
		Param := strHdNo;

		if (GT_USERIF.lv = '60') then
		begin
			if GT_SEL_BRNO.GUBUN = '1' then
				strBrNo := GT_SEL_BRNO.BrNo
			else
				strBrNo := '';
		end
		else
			strBrNo := GT_USERIF.BR;
			
		Param := Param + '│' + strBrNo;
		Param := Param + '│' + IntToStr(cb_SearchA2.ItemIndex);
		Param := Param + '│' + Trim(edt_SearchA2.Text);
		Param := Param + '│' + formatdatetime('yyyymmdd', cxDtStartA2.Date) + '│' + formatdatetime('yyyymmdd', cxDtEndA2.Date);

		Screen.Cursor := crHourGlass;

		tm_Flash.Enabled := True;
		Frm_Main.Enabled := False;

		if not RequestBase(GetSel06('GET_STAT_SHUTTLE_BUS', 'SHUTTLE_MNG.GET_STAT_SHUTTLE_BUS', '500', Param), XmlData, ErrCode, ErrMsg) then
		begin
			Frm_Flash.hide;
			tm_Flash.Enabled := False;
			Application.ProcessMessages;
			GMessagebox(Format('차량별 셔틀통계 리스트 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Frm_Main.Enabled := True;
			Screen.Cursor := crDefault;
			Exit;
		end;
		
		xdom := ComsDomDocument.Create;
		try
			if not xdom.loadXML(XmlData) then
			begin
				Frm_Flash.hide;
				Frm_Main.Enabled := True;
				tm_Flash.Enabled := False;
				Screen.Cursor := crDefault;
				Exit;
			end;

			ls_MSG_Err := GetXmlErrorCode(XmlData);
			if ('0000' = ls_MSG_Err) then
			begin
				if (0 < GetXmlRecordCount(XmlData)) then
				begin
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					cxGridA2View1.DataController.SetRecordCount(0);
					cxGridA2View1.BeginUpdate;
					ls_Rcrd := TStringList.Create;
					try
						iNum := 0;
						for I := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							if not Check_ID(GT_USERIF.ID, ls_Rcrd[2]) then
							begin
								ls_Rcrd.Insert(0, IntToStr(iNum + 1));

								cxGridA2View1.DataController.AppendRecord;
								cxGridA2View1.DataController.SetValue(iNum, 0, ls_Rcrd[0]);
								cxGridA2View1.DataController.SetValue(iNum, 1, ls_Rcrd[1]);
								cxGridA2View1.DataController.SetValue(iNum, 2, Format('%s(%s)', [ls_Rcrd[2], ls_Rcrd[3]]));
								cxGridA2View1.DataController.SetValue(iNum, 3, ls_Rcrd[4]);             //차량번호
								cxGridA2View1.DataController.SetValue(iNum, 4, ls_Rcrd[5]);             //노선명
								cxGridA2View1.DataController.SetValue(iNum, 5, ls_Rcrd[6]);             //탑승건수(Tag)
								cxGridA2View1.DataController.SetValue(iNum, 6, ls_Rcrd[7]);             //등록일
								iNum := iNum + 1;
							end;
						end;
					finally
						ls_Rcrd.Free;
						cxGridA2View1.EndUpdate;
						btnChartA2.Click;
					end;
				end
				else
				begin
					Frm_Flash.hide;
					tm_Flash.Enabled := False;
					Application.ProcessMessages;
					GMessagebox('검색된 내용이 없습니다', CDMSE);
				end;
			end;
		finally
			Screen.Cursor := crDefault;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			tm_Flash.Enabled := False;
			xdom := Nil;
		end;
	except
		on e: Exception do
		begin
			ls_Rcrd.Free;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			tm_Flash.Enabled := False;
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
	end;
end;


procedure TFrm_STT_Shuttle.proc_SearchA3;
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, i : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
	strHdNo, strBrNo : string;
	iNum: Integer;
begin
	SetDebugeWrite('TFrm_STT_Shuttle.proc_SearchA3');

	if fGetChk_Search_HdBrNo('노선별 통계') then Exit;

	cxGridA3View1.DataController.SetRecordCount(0);

	try
		//////////////////////////////////////////////////////////////////////////////////
		//  접수 전문
		//////////////////////////////////////////////////////////////////////////////////
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			strHdNo := GT_SEL_BRNO.HDNO
		else
			strHdNo := GT_USERIF.HD;
		Param := strHdNo;

		if (GT_USERIF.lv = '60') then
		begin
			if GT_SEL_BRNO.GUBUN = '1' then
				strBrNo := GT_SEL_BRNO.BrNo
			else
				strBrNo := '';
		end
		else
			strBrNo := GT_USERIF.BR;
			
		Param := Param + '│' + strBrNo;
		Param := Param + '│' + IntToStr(cb_SearchA3.ItemIndex);
		Param := Param + '│' + Trim(edt_SearchA3.Text);
		Param := Param + '│' + formatdatetime('yyyymmdd', cxDtStartA3.Date) + '│' + formatdatetime('yyyymmdd', cxDtEndA3.Date);

		Screen.Cursor := crHourGlass;

		tm_Flash.Enabled := True;
		Frm_Main.Enabled := False;

		if not RequestBase(GetSel06('GET_STAT_SHUTTLE_LINE', 'SHUTTLE_MNG.GET_STAT_SHUTTLE_LINE', '100', Param), XmlData, ErrCode, ErrMsg) then
		begin
			Frm_Flash.hide;
			tm_Flash.Enabled := False;
			Application.ProcessMessages;
			GMessagebox(Format('노선별 셔틀통계 리스트 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Frm_Main.Enabled := True;
			Screen.Cursor := crDefault;
			Exit;
		end;
		
		xdom := ComsDomDocument.Create;
		try
			if not xdom.loadXML(XmlData) then
			begin
				Frm_Flash.hide;
				Frm_Main.Enabled := True;
				tm_Flash.Enabled := False;
				Screen.Cursor := crDefault;
				Exit;
			end;

			ls_MSG_Err := GetXmlErrorCode(XmlData);
			if ('0000' = ls_MSG_Err) then
			begin
				if (0 < GetXmlRecordCount(XmlData)) then
				begin
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					cxGridA3View1.DataController.SetRecordCount(0);
					cxGridA3View1.BeginUpdate;
					ls_Rcrd := TStringList.Create;
					try
						iNum := 0;
						for I := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							if not Check_ID(GT_USERIF.ID, ls_Rcrd[2]) then
							begin
								ls_Rcrd.Insert(0, IntToStr(iNum + 1));

								cxGridA3View1.DataController.AppendRecord;
								cxGridA3View1.DataController.SetValue(iNum, 0, ls_Rcrd[0]);
								cxGridA3View1.DataController.SetValue(iNum, 1, ls_Rcrd[1]);     //노선명
								cxGridA3View1.DataController.SetValue(iNum, 2, ls_Rcrd[2]);     //호출건수
								cxGridA3View1.DataController.SetValue(iNum, 3, ls_Rcrd[3]);     //탑승건수(Tag)
								cxGridA3View1.DataController.SetValue(iNum, 4, ls_Rcrd[4]);     //Gap
								iNum := iNum + 1;
							end;
						end;
					finally
						ls_Rcrd.Free;
						cxGridA3View1.EndUpdate;
						btnChartA3.Click;
					end;
				end
				else
				begin
					Frm_Flash.hide;
					tm_Flash.Enabled := False;
					Application.ProcessMessages;
					GMessagebox('검색된 내용이 없습니다', CDMSE);
				end;
			end;
		finally
			Screen.Cursor := crDefault;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			tm_Flash.Enabled := False;
			xdom := Nil;
		end;
	except
		on e: Exception do
		begin
			ls_Rcrd.Free;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			tm_Flash.Enabled := False;
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_STT_Shuttle.proc_SearchA4;
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, i : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
	strHdNo, strBrNo : string;
	iNum: Integer;
begin
	SetDebugeWrite('TFrm_STT_Shuttle.proc_SearchA3');

	if fGetChk_Search_HdBrNo('노선별 통계') then Exit;

	cxGridA4View1.DataController.SetRecordCount(0);

	try
		//////////////////////////////////////////////////////////////////////////////////
		//  접수 전문
		//////////////////////////////////////////////////////////////////////////////////
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			strHdNo := GT_SEL_BRNO.HDNO
		else
			strHdNo := GT_USERIF.HD;
		Param := strHdNo;

		if (GT_USERIF.lv = '60') then
		begin
			if GT_SEL_BRNO.GUBUN = '1' then
				strBrNo := GT_SEL_BRNO.BrNo
			else
				strBrNo := '';
		end
		else
			strBrNo := GT_USERIF.BR;
			
		Param := Param + '│' + strBrNo;
		Param := Param + '│' + IntToStr(cb_SearchA4.ItemIndex);
		Param := Param + '│' + Trim(edt_SearchA4.Text);
		Param := Param + '│' + formatdatetime('yyyymmdd', cxDtStartA4.Date) + '│' + formatdatetime('yyyymmdd', cxDtEndA4.Date);

		Screen.Cursor := crHourGlass;

		tm_Flash.Enabled := True;
		Frm_Main.Enabled := False;

		if not RequestBase(GetSel06('GET_STAT_SHUTTLE_TIME', 'SHUTTLE_MNG.GET_STAT_SHUTTLE_TIME', '30', Param), XmlData, ErrCode, ErrMsg) then
		begin
			Frm_Flash.hide;
			tm_Flash.Enabled := False;
			Application.ProcessMessages;
			GMessagebox(Format('시간대별 셔틀통계 리스트 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Frm_Main.Enabled := True;
			Screen.Cursor := crDefault;
			Exit;
		end;
		
		xdom := ComsDomDocument.Create;
		try
			if not xdom.loadXML(XmlData) then
			begin
				Frm_Flash.hide;
				Frm_Main.Enabled := True;
				tm_Flash.Enabled := False;
				Screen.Cursor := crDefault;
				Exit;
			end;

			ls_MSG_Err := GetXmlErrorCode(XmlData);
			if ('0000' = ls_MSG_Err) then
			begin
				if (0 < GetXmlRecordCount(XmlData)) then
				begin
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					cxGridA4View1.DataController.SetRecordCount(0);
					cxGridA4View1.BeginUpdate;
					ls_Rcrd := TStringList.Create;
					try
						iNum := 0;
						for I := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							if not Check_ID(GT_USERIF.ID, ls_Rcrd[2]) then
							begin
								ls_Rcrd.Insert(0, IntToStr(iNum + 1));

								cxGridA4View1.DataController.AppendRecord;
								cxGridA4View1.DataController.SetValue(iNum, 0, ls_Rcrd[0]);
								cxGridA4View1.DataController.SetValue(iNum, 1, ls_Rcrd[1]);     //시간
								cxGridA4View1.DataController.SetValue(iNum, 2, ls_Rcrd[2]);     //호출건수
								cxGridA4View1.DataController.SetValue(iNum, 3, ls_Rcrd[3]);     //탑승건수(Tag)
								cxGridA4View1.DataController.SetValue(iNum, 4, ls_Rcrd[4]);     //Gap
								iNum := iNum + 1;
							end;
						end;
					finally
						ls_Rcrd.Free;
						cxGridA4View1.EndUpdate;
						btnChartA4.Click;
					end;
				end
				else
				begin
					Frm_Flash.hide;
					tm_Flash.Enabled := False;
					Application.ProcessMessages;
					GMessagebox('검색된 내용이 없습니다', CDMSE);
				end;
			end;
		finally
			Screen.Cursor := crDefault;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			tm_Flash.Enabled := False;
			xdom := Nil;
		end;
	except
		on e: Exception do
		begin
			ls_Rcrd.Free;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			tm_Flash.Enabled := False;
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_STT_Shuttle.proc_SearchA5(ASabun : string; AChk : Boolean);
var XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, i : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	sTmp : string;
	j, iNum : integer;
begin
	try
		slList := TStringList.Create;
		try
			Param := UpperCase(ASabun);
			sTmp := StringReplace(DateToStr(cxDtStartA5.date),'-','',[rfReplaceAll]);
			Param := Param + '│' + sTmp;
			sTmp := StringReplace(cxTimeStart.text,':','',[rfReplaceAll]);
			Param := Param + sTmp;
			
			sTmp := StringReplace(DateToStr(cxDtEndA5.date),'-','',[rfReplaceAll]);
			Param := Param + '│' + sTmp;
			sTmp := StringReplace(cxTimeEnd.text,':','',[rfReplaceAll]);
			Param := Param + sTmp;

			//날짜from (yyyymmddhh24miss), 날짜to (yyyymmddhh24miss)
			if not RequestBasePaging(GetSel06('GET_WK_BUS_DRIVE_LIST', 'SHUTTLE_MNG.GET_WK_BUS_DRIVE_LIST', '9999', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('운행내역 결과 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				FreeAndNil(slList);
				Exit;
			end;

			xdom := ComsDomDocument.Create;
			try
				Frm_Flash.cxPBar1.Properties.Max := slList.Count;
				Frm_Flash.cxPBar1.Position := 0;
				cxGridRunList.DataController.SetRecordCount(0);
				for j := 0 to slList.Count - 1 do
				begin
					xmlData := slList.Strings[j];
					xdom.loadXML(XmlData);

					cxGridRunList.BeginUpdate;

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
									Frm_Flash.cxPBar1.Position := i + 1;
									Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
									Application.ProcessMessages;
									
									GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

									if not Check_ID(GT_USERIF.ID, ls_Rcrd[2]) then
									begin
										ls_Rcrd.Insert(0, IntToStr(iNum + 1));
										//운행SEQ, 노선SEQ, , 노선하행제목
										cxGridRunList.DataController.AppendRecord;
										cxGridRunList.DataController.SetValue(iNum, 0, ls_Rcrd[0]);   //순번
										cxGridRunList.DataController.SetValue(iNum, 1, ls_Rcrd[1]);   //운행SEQ
										cxGridRunList.DataController.SetValue(iNum, 2, ls_Rcrd[2]);   //노선SEQ
										cxGridRunList.DataController.SetValue(iNum, 3, ls_Rcrd[3]);   //노선상행제목
										cxGridRunList.DataController.SetValue(iNum, 4, ls_Rcrd[4]);   //노선하행제목
										iNum := iNum + 1;
									end;

								end;
							finally
								FreeAndNil(ls_Rcrd);
							end;
						end;
					end;
					cxGridRunList.EndUpdate;
				end;
			finally
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

procedure TFrm_STT_Shuttle.proc_SearchA5_2(ASabun, ASEQ: string; AChk : Boolean);
var XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	sTmp : string;
	j : integer;
	dTmpLon, dTmpLat : double;
	bLonLat : Boolean;
  sTime, eTime : TDatetime;
  iFlag : integer;
begin
//4.노선정류장조회 sel06   MNG.GET_SH_STOP_LIST
// request : 노선코드
// response :  1.정류장순번 2.정류장명 3.X 4.Y 정5.류장이동소요시간 분단위 6.상하행구분 (상U , 하 D) 
 
	try
		slList := TStringList.Create;
		try
			Param := UpperCase(ASabun);
			Param := Param + '│' + ASEQ;
			sTmp := StringReplace(DateToStr(cxDtStartA5.date),'-','',[rfReplaceAll]);
			Param := Param + '│' + sTmp;
			sTmp := StringReplace(cxTimeStart.text,':','',[rfReplaceAll]);
			Param := Param + sTmp;
			
			sTmp := StringReplace(DateToStr(cxDtEndA5.date),'-','',[rfReplaceAll]);
			Param := Param + '│' + sTmp;
			sTmp := StringReplace(cxTimeEnd.text,':','',[rfReplaceAll]);
			Param := Param + sTmp;

			//날짜from (yyyymmddhh24miss), 날짜to (yyyymmddhh24miss)
			Screen.Cursor := crHourGlass;
			if not RequestBasePaging(GetSel06('GET_WK_SESSION_LOG', 'SHUTTLE_MNG.GET_WK_SESSION_LOG', '9999', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('기사이동로그 결과 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				Screen.Cursor := crDefault;
				FreeAndNil(slList);
				Exit;
			end;

			xdom := ComsDomDocument.Create;
			try
//				Frm_Flash.show;
//				Frm_Flash.cxPBar1.Properties.Max := slList.Count;
//				Frm_Flash.cxPBar1.Position := 0;
				cxGrdMV_List.DataController.SetRecordCount(0);
				cxGroupBox5.enabled := False;
				cxGrdMV.enabled := False;
				for j := 0 to slList.Count - 1 do
				begin
					xmlData := slList.Strings[j];
					xdom.loadXML(XmlData);

					ls_MSG_Err := GetXmlErrorCode(XmlData);
					if ('0000' = ls_MSG_Err) then
					begin
						if (0 < GetXmlRecordCount(XmlData)) then
						begin
							lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
							ls_Rcrd := TStringList.Create;
							cxGrdMV_List.BeginUpdate;
							try
								for i := 0 to lst_Result.length - 1 do
								begin
//									Frm_Flash.cxPBar1.Position := j + 1;
//									Frm_Flash.lblCnt.Caption := IntToStr(I + 1) + '/' + IntToStr(slList.Count);
//									Application.ProcessMessages;
									
									GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

									pLocLat := ls_Rcrd[0];
									pLocLng := ls_Rcrd[1];

									dTmpLon := StrToFloatDef(pLocLng, 0);                        //더블형으로 변환
									dTmpLat := StrToFloatDef(pLocLat, 0);

									bLonLat := PtInPolygon(dTmpLon, dTmpLat, FKOREAAREA_XY.Lon, FKOREAAREA_XY.Lat, FKOREAAREA_XY.Lon.count);
									if Not bLonLat then continue;//유효한 좌표가 아니면
									
									iRow := cxGrdMV_List.DataController.AppendRecord;

									cxGrdMV_List.DataController.Values[iRow, 0] := IntToStr(iRow+1);
									cxGrdMV_List.DataController.Values[iRow, 1] := pLocLat;
									cxGrdMV_List.DataController.Values[iRow, 2] := pLocLng;
									cxGrdMV_List.DataController.Values[iRow, 3] := copy(ls_Rcrd[2], 1, 10) + ' ' + copy(ls_Rcrd[2], 11, 8);
									cxGrdMV_List.DataController.Values[iRow, 4] := ls_Rcrd[3];
									cxGrdMV_List.DataController.Values[iRow, 5] := ls_Rcrd[4];

									if i = 0 then
									begin
										sTime := StrToDateTimeDef(copy(ls_Rcrd[2], 11, 8),0);
										eTime := StrToDateTimeDef(copy(ls_Rcrd[2], 11, 8),0);
									end else
									begin
										eTime := sTime;
										sTime := StrToDateTimeDef(copy(ls_Rcrd[2], 11, 8),0)
									end;
                  if MinutesBetween(sTime, eTime) > 9  then
                  begin
										iFlag := iFlag + 1;
                  end;

									if (copy(pLocLat,1,1) = '3') and (copy(pLocLng,1,2) = '12') then
                  begin
										WGS84ToBessel(getWGS84(pLocLng), '0'+ getWGS84(pLocLat));
										FRoutePoint.lon.add(inttostr(ws_Lon));
										FRoutePoint.lat.add(inttostr(ws_Lat));
                    FRoutePoint.Idx.add(inttostr(iFlag));
                  end;
								end;


								
							finally
								Screen.Cursor := crDefault;
								ls_Rcrd.Free;
								cxGrdMV_List.EndUpdate;
//								Frm_Flash.hide;    
							end;
							cxGrdMV_List.Columns[0].SortOrder := soDescending;
							pSetPoiLoad;

							if AChk then Proc_RouteLine(FRoutePoint);
						end;
					end;
				end;
			finally
				xdom := Nil;
			end;
		finally
			cxGroupBox5.enabled := True;
			cxGrdMV.enabled := True;
			Screen.Cursor := crDefault;
			FreeAndNil(slList);
		end;
	except
		on E: Exception do
		begin
			cxGroupBox5.enabled := True;
			cxGrdMV.enabled := True;
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
	end;           
end;

procedure TFrm_STT_Shuttle.Proc_WK_Point(sLon, sLat, AId, AGu: string);
begin
	WGS84ToBessel(getWGS84(sLon), '0'+ getWGS84(sLat));
//  pWKPntF := Point(ws_Lon, ws_Lat);
//  pWKPntT := Point(ws_Lon, ws_Lat);

  OnMoveMap(ws_Lon, ws_Lat);
	Mark_Symbol(ws_Lon, ws_Lat, 1, Aid, AGu);
end;

procedure TFrm_STT_Shuttle.pSetDriverPoint;
var iRow, iLng, iLat, iNo : integer;
		sLng, sLat, sId : string;

		mGroup : IXPOIGroup;
		mPoi : IXPOIItem;
    mStyle : IXPOIStyle;
    AView: TcxGridDBTableView;
begin
	AView := GetCurrentView;

	iRow := AView.DataController.FocusedRecordIndex;
	if iRow = -1 then	Exit;

	iLng := AView.GetColumnByFieldName('경도').Index;
	sLng := AView.DataController.Values[iRow, iLng];

	iLat := AView.GetColumnByFieldName('위도').Index;
	sLat := AView.DataController.Values[iRow, iLat];

	iNo := AView.GetColumnByFieldName('No').Index;
	sId := AView.DataController.Values[iRow, iNo];

  pnlHint.Visible := False;
  if Trim(sLng) = '' then
  begin
    if PnlTop.Align = alLeft then
    begin
      pnlHint.Left := PnlTop.Width + (PnlBtm.Width  - pnlHint.Width ) div 2;
      pnlHint.Top  := pnlTitle.Height + (PnlBtm.Height - pnlHint.Height) div 2;
    end else
    begin
      pnlHint.Left := (PnlBtm.Width  - pnlHint.Width ) div 2;
      pnlHint.Top  := pnlTitle.Height + PnlTop.Height + (PnlBtm.Height - pnlHint.Height) div 2;
    end;
    pnlHint.BringToFront;
    pnlHint.Visible := True;
    pnlHint.Repaint;
    Exit;
  end;

  WGS84ToBessel(getWGS84(sLng), '0'+ getWGS84(sLat));

  if (chkCenter.Checked) Or (chkCenter.Tag = 1) then
  begin
    OnMoveMap(ws_Lon, ws_Lat);     //기사 현재 위치
    chkCenter.Tag := 0;
  end;

  pSetMapMove(ws_Lon, ws_Lat, 2, 3);

  try
    mGroup := mPoiman.FindGroup(0);

    if ( giPreID >= 0 ) And ( giPreID <> giStrID ) And ( giPreID <> giEndID ) then
    begin
      mPoi := mGroup.FindItem(giPreID);
      mStyle := mPoiman.FindStyle(100);
      if mStyle = nil then
      begin
        mStyle := mPoiman.NewStyle(100);
        mStyle.SetGDIFont(GS_FONTNAME, 0, 9);
        mStyle.SetFontColor(mUtil.RGBColor(0, 0, 0));
        mStyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));
        mStyle.SetBrush(mUtil.RGBColor(251, 249, 250), 0);
        mStyle.SetPen(mUtil.RGBColor(185, 183, 186), 1, 0);
      end;
      if mPoi <> nil then
        mPoi.SetStyle(mStyle);
    end;

    mPoi := mGroup.FindItem(StrToInt(sId));
    mStyle := mPoiman.FindStyle(200);
    if mStyle = nil then
    begin
      mStyle := mPoiman.NewStyle(200);
      mStyle.SetGDIFont(GS_FONTNAME, 0, 9);
      mStyle.SetFontColor(mUtil.RGBColor(0, 0, 0));
      mStyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));
      mStyle.SetBrush(mUtil.RGBColor(255, 255, 0), 0);
      mStyle.SetPen(mUtil.RGBColor(185, 183, 186), 1, 0);
    end;

    if mPoi <> nil then
    begin
      if ( StrToInt(sId) <> giStrID ) And ( StrToInt(sId) <> giEndID ) then
        mPoi.SetStyle(mStyle);
      mPoiman.SetTopItem(mPoi);
    end;

    giPreID := StrToInt(sId);
  except

  end;
end;

procedure TFrm_STT_Shuttle.pSetLineAdd(ALon, ALat: String);
Var
  style : IXLayerStyle;
  mPolygon : IXLayerPolygon;
  i : Integer;
begin
	try
    // Step 1. Make XLayer Style
    style := layerMan.FindStyle(500);
    if (style = Nil) then
		begin
      style := layerMan.NewStyle(500);
      style.SetPen(mUtil.RGBColor(13, 136, 230), 5, 0);//mUtilL.GetConstToValue('PS_SOLID'));
		end;


    slLonList.Add(ALon);
    slLatList.Add(ALat);

    // Step 2. Make XLayer PolyLine
    mPolygon := layerMan.NewPolygon(0, -1);

    mPolygon.BeginUpdate();
    try
      for i := 0 to slLonList.Count - 1 do
      begin
				WGS84ToBessel(getWGS84(slLonList.Strings[i]), '0'+ getWGS84(slLatList.Strings[i]));
        mPolygon.AddPoint(ws_Lon, ws_Lat);
      end;
      mPolygon.SetCanClick(1);
      mPolygon.SetCanFocus(1);
      mPolygon.SetClosed(0);   // 0: Line, 1: Polygon
      mPolygon.SetStyle(style);
    finally
      mPolygon.EndUpdate();
    end;
  Except

  end;
end;

procedure TFrm_STT_Shuttle.pSetMapMove(LLon, LLat, RLon, RLat: Integer);
Var
  mPoint, mCenterLL : TalMapXLib_TLB.IXPoint;
  mPos   : IXMapPos;
  iX, iY, CLon, CLat : Integer;
begin
  try
    mCtrlState := mCtrlMan.GetControlState();
    mPoint := mCtrlState.LLToDP(LLon, LLat, 0);

    iX := mPoint.GetX;
    iY := mPoint.GetY;

    if ( iX <= 100 ) Or ( iY <= 100 ) Or
       ( iX >= mMap_WKmoveLog.Width - 100 ) Or ( iY >= mMap_WKmoveLog.Height - 100 ) then
    begin
      cLon := 0;
      cLat := 0;
      mCenterLL := mCtrlState.GetLLCenter();

      if ( iX <= 100 ) And ( iY <= 100 ) then
      begin
        mPos := mCtrlState.DPToLL(100, 100);

        CLon := (LLon - mPos._Lon);
        CLat := (LLat - mPos._Lat);
      end else
      begin
        if ( iX <= 100 ) then
        begin
          mPos := mCtrlState.DPToLL(100, iY);

          CLon := (LLon - mPos._Lon);
        end else
        if ( iY <= 100 ) then
        begin
          mPos := mCtrlState.DPToLL(iX, 100);

          CLat := (LLat - mPos._Lat);
        end;
      end;

      if ( iX >= mMap_WKmoveLog.Width - 100 ) And ( iY >= mMap_WKmoveLog.Height - 100 ) then
      begin
        mPos := mCtrlState.DPToLL(mMap_WKmoveLog.Width - 100, mMap_WKmoveLog.Height - 100);

        CLon := (LLon - mPos._Lon);
        CLat := (LLat - mPos._Lat);
      end else
      begin
        if ( iX >= mMap_WKmoveLog.Width ) then
        begin
          mPos := mCtrlState.DPToLL(mMap_WKmoveLog.Width - 100, iY);

          CLon := (LLon - mPos._Lon);
        end else
        if ( iY >= mMap_WKmoveLog.Height ) then
        begin
          mPos := mCtrlState.DPToLL(iX, mMap_WKmoveLog.Height - 100);

          CLat := (LLat - mPos._Lat);
        end;
      end;

      mCtrlState.SetLLCenter(mCenterLL._X + CLon, mCenterLL._Y + CLat);
    end;
  except

  end;
end;

procedure TFrm_STT_Shuttle.pSetPoiLoad;
Var AView: TcxGridDBTableView;
		i, iLng, iLat, iLocType : Integer;
    AYMax, AXMax, AYMin, AXMin, AWKLon, AWKLat : integer;
    sLng, sLat : String;
begin
  AView := GetCurrentView;

	iLat := AView.GetColumnByFieldName('위도').Index;
	iLng := AView.GetColumnByFieldName('경도').Index;

  try
    Clear_WKPOI;
//		Frm_Flash.show;
//		Frm_Flash.cxPBar1.Properties.Max := AView.DataController.RecordCount;
//		Frm_Flash.cxPBar1.Position := 0;

		for i := 0 to AView.DataController.RecordCount - 1 do
		begin
//			Frm_Flash.cxPBar1.Position := I + 1;
//			Frm_Flash.lblCnt.Caption := IntToStr(I + 1) + '/' + IntToStr(AView.DataController.RecordCount);
//			Application.ProcessMessages;   
			
			sLng := AView.DataController.Values[i, iLng];
			sLat := AView.DataController.Values[i, iLat];

      pLocType := AView.DataController.Values[i, iLocType];
      if (UpperCase(pLocType) <> 'G') Or ( UpperCase(pLocType) <> 'N' ) then pLocType := '';

			if ( Copy(sLat, 1, 1) = '3' ) and ( Copy(sLng, 1, 2) = '12' ) then
      begin
				WGS84ToBessel(getWGS84(sLng), '0'+ getWGS84(sLat));

        /////이동경로 표기를 위한 좌표 값 저장, 각도를 구하기 위한 좌표 값 저장////
        if i = 0 then
				begin
          Pt1.lon := ws_Lon;
          Pt1.lat := ws_Lat;
        end else
        if i = (AView.DataController.RecordCount - 1) then
        begin
          Pt2.lon := Pt1.lon;
          Pt2.lat := Pt1.lat;
          Pt1.lon := ws_Lon;
          Pt1.lat := ws_Lat;
        end else
        begin
          Pt2.lon := Pt1.lon;
          Pt2.lat := Pt1.lat;
          Pt1.lon := ws_Lon;
          Pt1.lat := ws_Lat;
        end;
        /////이동경로 표기를 위한 좌표 값 저장////

        /////지도 크기를 정하기 위한 좌표 값 저장////
        if i = 0 then AYMax := ws_Lon
        else
        begin
          if AYMax < ws_Lon then
            AYMax := ws_Lon;
        end;
        if i = 0 then AXMax := ws_Lat
        else
        begin
          if AXMax < ws_Lat then
            AXMax := ws_Lat;
        end;

        if i = 0 then AYMin := ws_Lon
        else
        begin
          if AYMin > ws_Lon then
            AYMin := ws_Lon;
        end;
        if i = 0 then AXMin := ws_Lat
        else
        begin
					if AXMin > ws_Lat then
						AXMin := ws_Lat;
        end;
				/////지도 크기를 정하기 위한 좌표 값 저장////

        //기사 위치 마크
				Proc_WK_Point(sLng, sLat, IntToStr(AView.DataController.Values[i, 0]), '');
			end;
		end;        

		if AYMin > AWKLon then AYMin := AWKLon;
    if AXMin > AWKLat then AXMin := AWKLat;
    if AYMax < AWKLon then AYMax := AWKLon;
		if AXMax > AWKLon then AXMax := AWKLon;
    SetMapRectLevel(AYMax, AXMax, AYMin, AXMin);

    if Not chk_Search_Route.Checked then
    begin
      if AView.DataController.RecordCount > 0 then
			begin
        Try
					sLng := AView.DataController.Values[0, iLng];
					sLat := AView.DataController.Values[0, iLat];
					WGS84ToBessel(getWGS84(sLng), '0'+ getWGS84(sLat));
          OnMoveMap(ws_Lon, ws_Lat);     //기사 현재 위치
//										mCtrlState.SetLevel(2);
        except

        end;
      end;
		end;

    giPreId := -1;
    giStrId := -1;
    giEndId := -1;
	finally
		Frm_Flash.hide;
  end;
end;

procedure TFrm_STT_Shuttle.RemovePolygon;
var
  layerMan : IXLayerMan;
  layer : IXLayer;
begin
  mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
  layerMan := mCtrlMan.GetLayerMan();
  layer :=  layerMan.FindLayer(1);
  if layer <> nil then layer.ClearObject();
end;

procedure TFrm_STT_Shuttle.btnSearchA0Click(Sender: TObject);
var
	msg: string;
begin
	if (GT_SEL_BRNO.GUBUN = '0') then
	begin
		GMessagebox('지사별 조회만 가능합니다. ' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		Exit;
	end;

	if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
	begin
		msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
				+ #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
		GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSE);
		Exit;
	end;

  proc_SearchA0;
end;

procedure TFrm_STT_Shuttle.btnSearchA1Click(Sender: TObject);
var
	dt_sysdate2, msg: string;
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		Exit;
	end;

	if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
	begin
		msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
				+ #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
		GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSE);
		Exit;
	end;

	if fGetChk_Search_HdBrNo('기사별통계') then Exit;

	dt_sysdate2 := frm_main.func_sysdate;

	if Trim(dt_sysdate2) = '' then
	begin
		GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSE);
		Exit;
	end;
	
	cxGridA1View1.DataController.SetRecordCount(0);
	cxGridA1C2ChartALL.DataController.SetRecordCount(0);
	cxGridA1C1ChartView1.DataController.SetRecordCount(0);
	proc_SearchA1;
end;

procedure TFrm_STT_Shuttle.btnSearchA2Click(Sender: TObject);
var
	dt_sysdate2, msg: string;
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		Exit;
	end;

	if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
	begin
		msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
				+ #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
		GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSE);
		Exit;
	end;

	if fGetChk_Search_HdBrNo('차량별통계') then Exit;

	dt_sysdate2 := frm_main.func_sysdate;

	if Trim(dt_sysdate2) = '' then
	begin
		GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSE);
		Exit;
	end;

	cxGridA2View1.DataController.SetRecordCount(0);
	cxGridA2C2ChartALL.DataController.SetRecordCount(0);
	proc_SearchA2;
end;

procedure TFrm_STT_Shuttle.btnSearchA3Click(Sender: TObject);
var
	dt_sysdate2, msg: string;
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		Exit;
	end;

	if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
	begin
		msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
				+ #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
		GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSE);
		Exit;
	end;

	if fGetChk_Search_HdBrNo('노선별통계') then Exit;

	dt_sysdate2 := frm_main.func_sysdate;

	if Trim(dt_sysdate2) = '' then
	begin
		GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSE);
		Exit;
	end;

	cxGridA3View1.DataController.SetRecordCount(0);
	cxGridA3C2ChartALL.DataController.SetRecordCount(0);
	cxGridA3C1ChartView1.DataController.SetRecordCount(0);
	proc_SearchA3;
end;

procedure TFrm_STT_Shuttle.btnSearchA4Click(Sender: TObject);
var
	dt_sysdate2, msg: string;
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		Exit;
	end;

	if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
	begin
		msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
				+ #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
		GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSE);
		Exit;
	end;

	if fGetChk_Search_HdBrNo('시간대별통계') then Exit;

	dt_sysdate2 := frm_main.func_sysdate;

	if Trim(dt_sysdate2) = '' then
	begin
		GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSE);
		Exit;
	end;

	cxGridA4View1.DataController.SetRecordCount(0);
	cxGridA4C2ChartALL.DataController.SetRecordCount(0);
	cxGridA4C1ChartView1.DataController.SetRecordCount(0);
	proc_SearchA4;
end;

procedure TFrm_STT_Shuttle.btnSearchA5Click(Sender: TObject);
begin
	if edt_SearchA5.text = '' then
	begin
		GMessagebox('셔틀기사 사번을 입력하여 주십시오.', CDMSE);
		edt_SearchA5.Setfocus;
		Exit;
	end;
	proc_SearchA5(edt_SearchA5.text, chk_Search_Route.Checked);
end;

procedure TFrm_STT_Shuttle.cbChartKindA1PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	if cxGridA1C2.Visible = True then AViewChart := cxGridA1C2ChartALL;

	case TcxComboBox(sender).ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;
  btnChartA1.Click;
end;

procedure TFrm_STT_Shuttle.cbChartKindA2PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	if cxGridA2C2.Visible = True then AViewChart := cxGridA2C2ChartALL;

	case TcxComboBox(sender).ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;
  btnChartA2.Click;
end;

procedure TFrm_STT_Shuttle.cbChartKindA3PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	if cxGridA3C1.Visible = True then AViewChart := cxGridA3C1ChartView1;
	if cxGridA3C2.Visible = True then AViewChart := cxGridA3C2ChartAll;

	case cbChartKindA3.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;
	btnChartA3.Click;
end;

procedure TFrm_STT_Shuttle.cbChartKindA4PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	if cxGridA4C1.Visible = True then AViewChart := cxGridA4C1ChartView1;
	if cxGridA4C2.Visible = True then AViewChart := cxGridA4C2ChartAll;

	case cbChartKindA4.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;
	btnChartA4.Click;

end;

procedure TFrm_STT_Shuttle.cbKindA1PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	cxGridA1View1.Columns[0].SortOrder := soNone;
	cxGridA1View1.Columns[1].SortOrder := soNone;
	cxGridA1View1.Columns[2].SortOrder := soNone;
	cxGridA1View1.Columns[3].SortOrder := soNone;
	cxGridA1View1.Columns[4].SortOrder := soNone;
	cxGridA1View1.Columns[5].SortOrder := soNone;
	case cbKindA1.ItemIndex of
		0 :
		begin
			cxGridA1View1.Columns[6].SortOrder := soNone;
			cxGridA1View1.Columns[7].SortOrder := soNone;
			cxGridA1View1.Columns[8].SortOrder := soNone;
		end;
		1 :
		begin
			AOrderBy := 'sum1';
			cxGridA1View1.Columns[6].SortOrder := soNone;
			cxGridA1View1.Columns[7].SortOrder := soNone;
			cxGridA1View1.Columns[8].SortOrder := soNone;

			cxGridA1View1.Columns[5].SortOrder := soDescending;
		end;
		2 :
		begin
			AOrderBy := 'sum2';
			cxGridA1View1.Columns[6].SortOrder := soNone;
			cxGridA1View1.Columns[7].SortOrder := soNone;
			cxGridA1View1.Columns[8].SortOrder := soNone;

			cxGridA1View1.Columns[6].SortOrder := soDescending;
		end;
	end;

	if cxGridA1View1.DataController.RecordCount > 0 then
	begin
		cxGridA1View1.DataController.SelectRows(0, 0);
		cxGridA1View1.DataController.FocusedRowIndex := 0;
		cxGridA1View1.DataController.Scroll(0);
	end;

	if cbKindA1.ItemIndex = 0 then
	begin
		cxGridA1C1.Visible := False;
		cxGridA1C2.Visible := True;
	end else
	begin
		cxGridA1C1.Visible := True;
		cxGridA1C2.Visible := False;
	end;

	if cxGridA1C1.Visible = True then AViewChart := cxGridA1C1ChartView1;
	if cxGridA1C2.Visible = True then AViewChart := cxGridA1C2ChartALL;

	case cbChartKindA1.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;

	cxGridA1C2ChartALL.DataController.SetRecordCount(0);
	cxGridA1C1ChartView1.DataController.SetRecordCount(0);

	btnChartA1.Click;
end;

procedure TFrm_STT_Shuttle.cbKindA3PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	cxGridA3View1.Columns[0].SortOrder := soNone;
	cxGridA3View1.Columns[1].SortOrder := soNone;
	case cbKindA3.ItemIndex of
		0 :
		begin
			cxGridA3View1.Columns[2].SortOrder := soNone;
			cxGridA3View1.Columns[3].SortOrder := soNone;
			cxGridA3View1.Columns[4].SortOrder := soNone;
		end;
		1 :
		begin
			AOrderBy := 'sum1';
			cxGridA3View1.Columns[2].SortOrder := soNone;
			cxGridA3View1.Columns[3].SortOrder := soNone;
			cxGridA3View1.Columns[4].SortOrder := soNone;

			cxGridA3View1.Columns[2].SortOrder := soDescending;
		end;
		2 :
		begin
			AOrderBy := 'sum2';
			cxGridA3View1.Columns[2].SortOrder := soNone;
			cxGridA3View1.Columns[3].SortOrder := soNone;
			cxGridA3View1.Columns[4].SortOrder := soNone;

			cxGridA3View1.Columns[3].SortOrder := soDescending;
		end;
	end;

	if cxGridA3View1.DataController.RecordCount > 0 then
	begin
		cxGridA3View1.DataController.SelectRows(0, 0);
		cxGridA3View1.DataController.FocusedRowIndex := 0;
		cxGridA3View1.DataController.Scroll(0);
	end;

	if cbKindA3.ItemIndex = 0 then
	begin
		cxGridA3C1.Visible := False;
		cxGridA3C2.Visible := True;
	end else
	begin
		cxGridA3C1.Visible := True;
		cxGridA3C2.Visible := False;
	end;

	if cxGridA3C1.Visible = True then AViewChart := cxGridA3C1ChartView1;
	if cxGridA3C2.Visible = True then AViewChart := cxGridA3C2ChartALL;

	case cbChartKindA3.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;

	cxGridA3C2ChartALL.DataController.SetRecordCount(0);
	cxGridA3C1ChartView1.DataController.SetRecordCount(0);

	btnChartA3.Click;
end;

procedure TFrm_STT_Shuttle.cbKindA4PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	cxGridA4View1.Columns[0].SortOrder := soNone;
	cxGridA4View1.Columns[1].SortOrder := soNone;
	case cbKindA4.ItemIndex of
		0 :
		begin
			cxGridA4View1.Columns[2].SortOrder := soNone;
			cxGridA4View1.Columns[3].SortOrder := soNone;
			cxGridA4View1.Columns[4].SortOrder := soNone;
		end;
		1 :
		begin
			AOrderBy := 'sum1';
			cxGridA4View1.Columns[2].SortOrder := soNone;
			cxGridA4View1.Columns[3].SortOrder := soNone;
			cxGridA4View1.Columns[4].SortOrder := soNone;

			cxGridA4View1.Columns[2].SortOrder := soDescending;
		end;
		2 :
		begin
			AOrderBy := 'sum2';
			cxGridA4View1.Columns[2].SortOrder := soNone;
			cxGridA4View1.Columns[3].SortOrder := soNone;
			cxGridA4View1.Columns[4].SortOrder := soNone;

			cxGridA4View1.Columns[3].SortOrder := soDescending;
		end;
	end;

	if cxGridA4View1.DataController.RecordCount > 0 then
	begin
		cxGridA4View1.DataController.SelectRows(0, 0);
		cxGridA4View1.DataController.FocusedRowIndex := 0;
		cxGridA4View1.DataController.Scroll(0);
	end;

	if cbKindA4.ItemIndex = 0 then
	begin
		cxGridA4C1.Visible := False;
		cxGridA4C2.Visible := True;
	end else
	begin
		cxGridA4C1.Visible := True;
		cxGridA4C2.Visible := False;
	end;

	if cxGridA4C1.Visible = True then AViewChart := cxGridA4C1ChartView1;
	if cxGridA4C2.Visible = True then AViewChart := cxGridA4C2ChartALL;

	case cbChartKindA4.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;

	cxGridA4C2ChartALL.DataController.SetRecordCount(0);
	cxGridA4C1ChartView1.DataController.SetRecordCount(0);

	btnChartA4.Click;
end;

function TFrm_STT_Shuttle.Angle(Pt1, Pt2: TTmappos): Double;
var ang : Double;
 p1, p2 : TPoint;
begin
	p1.x := pt1.lon;		p1.y := pt1.lat;
	p2.x := pt2.lon;		p2.y := pt2.lat;
	ang := SK_GetAngleFromLine(p1, p2);

	if (ang < 0) then
  begin
		ang := ang + 360.;
	end;
	ang := 360. - ang;
	Result := ang;
end;

function TFrm_STT_Shuttle.BesselToWGS84(Y_1, x_1: double): integer;
var degree_y, degree_x, min_x, min_y, s_y, s_x, ss_y, ss_x : Double;
  r_x, r_y : integer;
  coord : TalMapXLib_TLB.IXCoordSys;
  pos : IXMapPos;
  d_s, m_s, s_s, ss_s : string;
begin

	sw_Lon := 0;
	sw_Lat := 0;
	
	coord := mMap_WKmoveLog.GetCoordSys();
  pos := coord.BesselToWGS84(Y_1, x_1);
  r_y := pos._Lon;
  r_x := pos._Lat;

  degree_y := Trunc(r_y/360000.0);
  min_y := Trunc((r_y - degree_y*360000) / 6000.0);
  s_y := Trunc(((r_y - degree_y*360000) - min_y * 6000) / 100);
  ss_y := ((r_y - degree_y*360000) - min_y * 6000) - s_y * 100;

  if Trunc(degree_y) < 10 then d_s := '0' + FloatToStr(Trunc(degree_y))
  else d_s := FloatToStr(Trunc(degree_y));
  if Trunc(min_y) < 10 then m_s := '0' + FloatToStr(Trunc(min_y))
  else m_s := FloatToStr(Trunc(min_y));
  if Trunc(s_y) < 10 then s_s := '0' + FloatToStr(Trunc(s_y))
  else s_s := FloatToStr(Trunc(s_y));
  if Trunc(ss_y) < 10 then ss_s := '0' + FloatToStr(Trunc(ss_y))
  else ss_s := FloatToStr(Trunc(ss_y));
  sw_Lon := StrToFloatDef(d_s + m_s + s_s + ss_s, 0);

  degree_x := Trunc(r_x/360000.0);
  min_x := Trunc((r_x - degree_x*360000) / 6000.0);
  s_x := Trunc(((r_x - degree_x*360000) - min_x * 6000) / 100);
  ss_x := ((r_x - degree_x*360000) - min_x * 6000) - s_x * 100;

  if Trunc(degree_x) < 10 then d_s := '0' + FloatToStr(Trunc(degree_x))
  else d_s := FloatToStr(Trunc(degree_x));
  if Trunc(min_x) < 10 then m_s := '0' + FloatToStr(Trunc(min_x))
  else m_s := FloatToStr(Trunc(min_x));
  if Trunc(s_x) < 10 then s_s := '0' + FloatToStr(Trunc(s_x))
  else s_s := FloatToStr(Trunc(s_x));
  if Trunc(ss_x) < 10 then ss_s := '0' + FloatToStr(Trunc(ss_x))
  else ss_s := FloatToStr(Trunc(ss_x));
  sw_Lat := StrToFloatDef(d_s + m_s + s_s + ss_s, 0);
end;

procedure TFrm_STT_Shuttle.BirdView;
var
  vector : IXVector;
begin
  mCtrlState := mMap_WKmoveLog.GetCtrlMan.GetControlState ;
  vector := mCtrlState.GetRotate;
  if vector.GetX() <> 0 then
  begin
    vector.SetX(0);
  end
  else
  begin
    vector.SetX(-60);
  end;

  mCtrlState.SetRotate(vector);
end;

procedure TFrm_STT_Shuttle.CheckArea;
var
  layerMan : IXLayerMan;
  style : IXLayerStyle;
  obj : IXLayerPolygon;
begin
  mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
  layerMan := mCtrlMan.GetLayerMan();
  mUtil := mMap_WKmoveLog.GetUtility();

  style := layerMan.NewStyle(-1);
  style.SetPen(mUtil.RGBColor(0, 0, 255), 2, mUtil.GetConstToValue('PS_SOLID'));
  style.SetBrush(mUtil.RGBAColor(0, 0, 255, 100), mUtil.GetConstToValue('BS_SOLID'));

  obj := layerMan.NewPolygon(2, -1);
  obj.SetStyle(style);
  obj.SetClosed(1);
	obj.SetShowArea(1);
  obj.SetCanClick(1);
  obj.SetCanFocus(1);

  obj.SetStateModeNew();
end;

procedure TFrm_STT_Shuttle.CheckDistance;
var
  layerMan : IXLayerMan;
  style : IXLayerStyle;
  obj : IXLayerPolygon;
begin
  mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
  layerMan := mCtrlMan.GetLayerMan();
  mUtil := mMap_WKmoveLog.GetUtility();

  style := layerMan.NewStyle(-1);
  style.SetPen(mUtil.RGBColor(0, 0, 255), 2, mUtil.GetConstToValue('PS_SOLID'));

  obj := layerMan.NewPolygon(2, -1);
  obj.SetStyle(style);
  obj.SetClosed(0);
  obj.SetShowDistance(1);
	obj.SetShowArea(1);
  obj.SetCanClick(1);
  obj.SetCanFocus(1);

  obj.SetStateModeNew();
end;

procedure TFrm_STT_Shuttle.chk_Search_RouteClick(Sender: TObject);
begin
  if chk_Search_Route.Checked then
	begin
    if chk_Search_Route.Tag = 0 then btnSearchA5.Click;
  end else
  begin
    if Assigned(mCtrlMan) then
    begin
      layerMan := mCtrlMan.GetLayerMan();
      layerMan.ClearLayer;                                   //경로탐색 삭제
    end;
  end;
	chk_Search_Route.Tag := 0;
end;

procedure TFrm_STT_Shuttle.Clear_WKPOI;
begin
	if Assigned(mPoiman) then
  begin
   mPoiman.DeleteGroup(0);
   layerMan := mCtrlMan.GetLayerMan();
   layerMan.ClearLayer;            //경로탐색 삭제
  end;
end;

procedure TFrm_STT_Shuttle.CopyToClipboard;
begin
  mMap_WKmoveLog.CopyToClipboard();
end;

procedure TFrm_STT_Shuttle.CreateLevelBar;
var
	mImageman : IXImageMan;
  mBg, mLevelBarBg, mBtnZoomIn, mBtnZoomOut   : IXUIButton;
  i, UIID, CY  : Integer;
  imgName : string;
  mRootPath : string;
  bCreateLevelBar : Boolean;
begin
  if bCreateLevelBar = true then     // true가 됤 있나?..의문
  begin
		mLevelBarBg.DestroyUIObj();
		for i := 0 to 12 do
		begin
			mBtnLevle[i].DestroyUIObj();
		end;
		bCreateLevelBar := false;
		Exit;
  end;
  mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
  mUiman := mCtrlMan.GetUIMan;
  mCtrlState := mCtrlMan.GetControlState;
  mDpsize := mCtrlState.GetSizeDP;
  mUtil := mMap_WKmoveLog.GetUtility;

  if mUiman.GetShowCompass = 0 then mUiman.SetShowCompass(1)
                               else mUiman.SetShowCompass(0);
  mCtrlMan := mMap_WKmoveLog.GetCtrlMan();

	mImageman := mCtrlMan.GetImageMan;
  mRootPath := ExtractFilePath(Application.ExeName);
  mImageman.SetDefaultPath(mRootPath + '\Image\');
//  mImageman.SetDefaultPath(MAP_URL + 'Theme\Image\UI\LevelBar');

  // BackGround Image
  mBg := mUiman.CreateUI_Button(mUiman);
  mBg.SetParent(mUiman);
  mBg.SetUIID(11);
  mBg.SetImageList('bg.png', 24, 163);
  mBg.SetBound(mDpsize.GetCX-38, (mDpsize.GetCY - 170) div 2, 28, 170);
  mBg.SetAlpha(70);
  mBg.AddEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSELEAVE') or mUtil.GetConstToValue('TMEVENTTYPE_MOUSEENTER'));

  // Zoom In Button
  mBtnZoomIn := mUiman.CreateUI_Button(mUiman);
  mBtnZoomIn.SetParent(mBg);
  mBtnZoomIn.SetUIID(12);
  mBtnZoomIn.SetImageList('btn_minus.png', 16, 15);
  mBtnZoomIn.SetBound(4, 5, 16, 15);
	mBtnZoomIn.SetCanClick(1);
	mBtnZoomIn.SetCanDrag(1);
	mBtnZoomIn.SetDragTracker(1);
	mBtnZoomIn.AddEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSEUP') or mUtil.GetConstToValue('TMEVENTTYPE_MOUSELEAVE') or mUtil.GetConstToValue('TMEVENTTYPE_MOUSEENTER'));

  // Zoom Out Button
	mBtnZoomOut := mUiman.CreateUI_Button(mUiman);
	mBtnZoomOut.SetParent(mBg);
	mBtnZoomOut.SetUIID(13);
	mBtnZoomOut.SetImageList('btn_plus.png', 16, 15);
	mBtnZoomOut.SetBound(4, mBg.GetItemHeight()-18, 16, 15);
	mBtnZoomOut.SetCanClick(1);
	mBtnZoomOut.SetCanDrag(1);
	mBtnZoomOut.SetDragTracker(1);
	mBtnZoomOut.AddEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSEUP') or mUtil.GetConstToValue('TMEVENTTYPE_MOUSELEAVE') or	mUtil.GetConstToValue('TMEVENTTYPE_MOUSEENTER'));

  UIID := 14;
  CY := mBtnZoomIn.GetHeight;
  for i := 12 downto 0 do
  begin
		mBtnLevle[i] := mUiman.CreateUI_Button(mUiman);
		mBtnLevle[i].SetParent(mBg);
  	mBtnLevle[i].SetUIID(UIID);
		imgName := 'level_' + IntToStr(i) + '.png';
		mBtnLevle[i].SetImageList(imgName, 22, 9);
		mBtnLevle[i].SetBound(1, CY, 22, 9);
		mBtnLevle[i].SetCanClick(1);
		mBtnLevle[i].SetCanDrag(1);
		mBtnLevle[i].SetDragTracker(1);
		mBtnLevle[i].SetImageAutoChange(0);
		mBtnLevle[i].SetItemIndex(1);
		mBtnLevle[i].AddEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSEUP') or mUtil.GetConstToValue('TMEVENTTYPE_MOUSELEAVE') or mUtil.GetConstToValue('TMEVENTTYPE_MOUSEENTER'));
		CY := CY + 9;
		Inc(UIID);

	end;
	// 현재 Level 표출
	MapLevel_Master(mCtrlState.GetLevel());
end;

procedure TFrm_STT_Shuttle.CreateToolBarUI;
var
  i, UIID : Integer;
  width_px : Integer;
  bCreateToolBarStyle1 : Boolean;
  dpsize : IXSize;
  mUrl, mRootPath : string;
begin
  if bCreateToolBarStyle1 = true then
  begin
    for i :=0 to 20 do
    begin
      MyToolBar1[i].DestroyUIObj();
    end;
		bCreateToolBarStyle1 := false;
		Exit;
  end
	else bCreateToolBarStyle1 := true;

	mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
	mUiman := mCtrlman.GetUIMan();
	mCtrlState := mCtrlman.GetControlState();
	dpsize := mCtrlstate.GetSizeDP();
	mUtil := mMap_WKmoveLog.GetUtility();

	width_px := dpsize.GetCX div 2 - 300;

	UIID := 200;
	for i:=0 to 20 do
  begin
    if (i <> 11) and (i <> 12) and (i <> 16) then
    begin
      MyToolBar1[i] := mUiman.CreateUI_Button(mUiman);
      MyToolBar1[i].SetParent(mUiman);
      MyToolBar1[i].SetUIID(UIID);
      mUrl := 'map_btn_' + IntToStr(i) + '.png';
      MyToolBar1[i].SetImageList(mUrl, 21, 21);
      MyToolBar1[i].SetBound(width_px, dpsize.GetCY()-50, 21, 21);
      MyToolBar1[i].SetAlpha(0);
      MyToolBar1[i].SetCanClick(1);
      MyToolBar1[i].SetCanDrag(1);
      MyToolBar1[i].SetDragTracker(1);
      MyToolBar1[i].SetImageAutoChange(0);
      MyToolBar1[i].SetItemIndex(1);
      if i = 1 then MyToolBar1[i].SetHint('축소') else
      if i = 2 then MyToolBar1[i].SetHint('확대') else
      if i = 3 then MyToolBar1[i].SetHint('회전') else
      if i = 4 then MyToolBar1[i].SetHint('이전화면') else
      if i = 5 then MyToolBar1[i].SetHint('다음화면') else
      if i = 6 then MyToolBar1[i].SetHint('조망보기') else
      if i = 7 then MyToolBar1[i].SetHint('3D보기') else
      if i = 8 then MyToolBar1[i].SetHint('텍스트보기') else
      if i = 9 then MyToolBar1[i].SetHint('클립보드저장') else
      if i = 10then MyToolBar1[i].SetHint('지도화면저장') else
      if i = 13 then MyToolBar1[i].SetHint('폴리곤그리기') else
      if i = 14 then MyToolBar1[i].SetHint('폴리라인그리기') else
      if i = 15 then MyToolBar1[i].SetHint('객체지우기') else
      if i = 16 then MyToolBar1[i].SetHint('반경그리기') else
      if i = 17 then MyToolBar1[i].SetHint('면적측정') else
      if i = 18 then MyToolBar1[i].SetHint('거리측정') else
      if i = 19 then MyToolBar1[i].SetHint('객체삭제') else
      if i = 20 then MyToolBar1[i].SetHint('객체편집');
      MyToolBar1[i].AddEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSEUP')    or mUtil.GetConstToValue('TMEVENTTYPE_MOUSEDOWN')
                              or mUtil.GetConstToValue('TMEVENTTYPE_MOUSELEAVE') or mUtil.GetConstToValue('TMEVNETTYPE_MOUSEENTER') or mUtil.GetConstToValue('TMEVNETTYPE_MOUSEMOVE'));
      width_px := width_px + 25;
    end;
		Inc(UIID);
	end;
end;

procedure TFrm_STT_Shuttle.btnChartA1Click(Sender: TObject);
var
	I : Integer;
	AStyle : TcxStyle;
begin
	case cbKindA1.ItemIndex of
		0:
		begin
			cxGridA1C1.Visible := False;
			cxGridA1C2.Visible := True;
			cxGridA1C2ChartALL.BeginUpdate();
			try
				cxGridA1C2ChartALL.DataController.RecordCount := cxGridA1View1.DataController.RecordCount;
				 for I := 0 to cxGridA1View1.DataController.RecordCount-1 do
				 begin
					 cxGridA1C2ChartALL.Categories.Values[I] := cxGridA1View1.ViewData.Records[i].Values[4];

					 cxGridA1C2ChartSeries1.Values[I] := cxGridA1View1.ViewData.Records[i].Values[ 5];
					 cxGridA1C2ChartSeries2.Values[I] := cxGridA1View1.ViewData.Records[i].Values[ 6];
				 end;
			finally
				cxGridA1C2ChartALL.EndUpdate();
			end;
		end;
		1,2:
		begin
			cxGridA1C1.Visible := True;
			cxGridA1C2.Visible := False;
			cxGridA1C1ChartView1.BeginUpdate();
			try
				cxGridA1C1ChartView1.DataController.RecordCount := cxGridA1View1.DataController.RecordCount;
				cxGridA1C1ChartView1Series1.DisplayText := cbKindA1.text;

				AStyle := TcxStyle(FindComponent('cxSTT_Field' + IntToStr(cbKindA1.ItemIndex)));
				cxGridA1C1ChartView1Series1.Styles.values := AStyle;
				for I := 0 to cxGridA1View1.DataController.RecordCount-1 do
				begin
					cxGridA1C1ChartView1.Categories.Values[I] := cxGridA1View1.ViewData.Records[i].Values[ 4];

					case cbKindA1.ItemIndex of
						1 : cxGridA1C1ChartView1Series1.Values[I] := cxGridA1View1.ViewData.Records[i].Values[ 5];
						2 : cxGridA1C1ChartView1Series1.Values[I] := cxGridA1View1.ViewData.Records[i].Values[ 6];
					end;
				end;
			finally
				cxGridA1C1ChartView1.EndUpdate();
			end;
		end;
	end;
end;

procedure TFrm_STT_Shuttle.btnChartA2Click(Sender: TObject);
var
	I : Integer;
begin
	cxGridA2C2.Visible := True;
	cxGridA2C2ChartALL.BeginUpdate();
	try
		cxGridA2C2ChartALL.DataController.RecordCount := cxGridA2View1.DataController.RecordCount;
		 for I := 0 to cxGridA2View1.DataController.RecordCount-1 do
		 begin
			 cxGridA2C2ChartALL.Categories.Values[I] := cxGridA2View1.ViewData.Records[i].Values[3];

			 cxGridA2C2ChartALLSeries1.Values[I] := cxGridA2View1.ViewData.Records[i].Values[ 5];
		 end;
	finally
		cxGridA2C2ChartALL.EndUpdate();
	end;
end;

procedure TFrm_STT_Shuttle.btnChartA3Click(Sender: TObject);
var
	I : Integer;
	AStyle : TcxStyle;
begin
	case cbKindA3.ItemIndex of
		0:
		begin
			cxGridA3C1.Visible := False;
			cxGridA3C2.Visible := True;
			cxGridA3C2ChartALL.BeginUpdate();
			try
				cxGridA3C2ChartALL.DataController.RecordCount := cxGridA3View1.DataController.RecordCount;
				 for I := 0 to cxGridA3View1.DataController.RecordCount-1 do
				 begin
					 cxGridA3C2ChartALL.Categories.Values[I] := cxGridA3View1.ViewData.Records[i].Values[1];
									
					 cxGridA3C2ChartSeries1.Values[I] := cxGridA3View1.ViewData.Records[i].Values[ 2];
					 cxGridA3C2ChartSeries2.Values[I] := cxGridA3View1.ViewData.Records[i].Values[ 3];
				 end;
			finally
				cxGridA3C2ChartALL.EndUpdate();
			end;
		end;
		1,2:
		begin
			cxGridA3C1.Visible := True;
			cxGridA3C2.Visible := False;
			cxGridA3C1ChartView1.BeginUpdate();
			try
				cxGridA3C1ChartView1.DataController.RecordCount := cxGridA3View1.DataController.RecordCount;
				cxGridA3C1ChartView1Series1.DisplayText := cbKindA3.text;

				AStyle := TcxStyle(FindComponent('cxSTT_Field' + IntToStr(cbKindA3.ItemIndex)));
				cxGridA3C1ChartView1Series1.Styles.values := AStyle;
				for I := 0 to cxGridA3View1.DataController.RecordCount-1 do
				begin
					cxGridA3C1ChartView1.Categories.Values[I] := cxGridA3View1.ViewData.Records[i].Values[ 1];

					case cbKindA3.ItemIndex of
						1 : cxGridA3C1ChartView1Series1.Values[I] := cxGridA3View1.ViewData.Records[i].Values[ 2];
						2 : cxGridA3C1ChartView1Series1.Values[I] := cxGridA3View1.ViewData.Records[i].Values[ 3];
					end;
				end;
			finally
				cxGridA3C1ChartView1.EndUpdate();
			end;
		end;
	end;
end;

procedure TFrm_STT_Shuttle.btnChartA4Click(Sender: TObject);
var
	I : Integer;
	AStyle : TcxStyle;
begin
	case cbKindA4.ItemIndex of
		0:
		begin
			cxGridA4C1.Visible := False;
			cxGridA4C2.Visible := True;
			cxGridA4C2ChartALL.BeginUpdate();
			try
				cxGridA4C2ChartALL.DataController.RecordCount := cxGridA4View1.DataController.RecordCount;
				 for I := 0 to cxGridA4View1.DataController.RecordCount-1 do
				 begin
					 cxGridA4C2ChartALL.Categories.Values[I] := cxGridA4View1.ViewData.Records[i].Values[1];
									
					 cxGridA4C2ChartSeries1.Values[I] := cxGridA4View1.ViewData.Records[i].Values[ 2];
					 cxGridA4C2ChartSeries2.Values[I] := cxGridA4View1.ViewData.Records[i].Values[ 3];
				 end;
			finally
				cxGridA4C2ChartALL.EndUpdate();
			end;
		end;
		1,2:
		begin
			cxGridA4C1.Visible := True;
			cxGridA4C2.Visible := False;
			cxGridA4C1ChartView1.BeginUpdate();
			try
				cxGridA4C1ChartView1.DataController.RecordCount := cxGridA4View1.DataController.RecordCount;
				cxGridA4C1ChartView1Series1.DisplayText := cbKindA4.text;

				AStyle := TcxStyle(FindComponent('cxSTT_Field' + IntToStr(cbKindA4.ItemIndex)));
				cxGridA4C1ChartView1Series1.Styles.values := AStyle;
				for I := 0 to cxGridA4View1.DataController.RecordCount-1 do
				begin
					cxGridA4C1ChartView1.Categories.Values[I] := cxGridA4View1.ViewData.Records[i].Values[ 1];

					case cbKindA4.ItemIndex of
						1 : cxGridA4C1ChartView1Series1.Values[I] := cxGridA4View1.ViewData.Records[i].Values[ 2];
						2 : cxGridA4C1ChartView1Series1.Values[I] := cxGridA4View1.ViewData.Records[i].Values[ 3];
					end;
				end;
			finally
				cxGridA4C1ChartView1.EndUpdate();
			end;
		end;
	end;
end;

procedure TFrm_STT_Shuttle.btnChartShow1Click(Sender: TObject);
begin
	if pnlChartA1.Height <> 0 then
	begin
		pnlChartA1.Height := 0;
		btnChartShow1.Caption := '그래프보기';
	end else
	begin
		pnlChartA1.Height := cxTabSheet1.Height Div 3;
		btnChartShow1.Caption := '그래프닫기';
		btnChartA1.click;
	end;
end;

procedure TFrm_STT_Shuttle.btnDateA4Click(Sender: TObject);
begin
  pop_dateA1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_STT_Shuttle.cxGridA2View1ColumnHeaderClick(Sender: TcxGridTableView;
	AColumn: TcxGridColumn);
begin
	AIndex := AColumn.Index;
end;

procedure TFrm_STT_Shuttle.cxButton1Click(Sender: TObject);
begin
	proc_LineSearch(edt_SearchA5.text);
end;

procedure TFrm_STT_Shuttle.btnChartShow4Click(Sender: TObject);
begin
	if pnlChartA4.Height <> 0 then
	begin
		pnlChartA4.Height := 0;
		btnChartShow4.Caption := '그래프보기';
	end else
	begin
		pnlChartA4.Height := cxTabSheet4.Height Div 3;
		btnChartShow4.Caption := '그래프닫기';
		btnChartA4.click;
	end;
end;

procedure TFrm_STT_Shuttle.btnChartShow3Click(Sender: TObject);
begin
	if pnlChartA3.Height <> 0 then
	begin
		pnlChartA3.Height := 0;
		btnChartShow3.Caption := '그래프보기';
	end else
	begin
		pnlChartA3.Height := cxTabSheet3.Height Div 3;
		btnChartShow3.Caption := '그래프닫기';
		btnChartA3.click;
	end;
end;

procedure TFrm_STT_Shuttle.btnChartShow2Click(Sender: TObject);
begin
	if pnlChartA2.Height <> 0 then
	begin
		pnlChartA2.Height := 0;
		btnChartShow2.Caption := '그래프보기';
	end else
	begin
		pnlChartA2.Height := cxTabSheet2.Height Div 3;
		btnChartShow2.Caption := '그래프닫기';
		btnChartA2.click;
	end;
end;

procedure TFrm_STT_Shuttle.cxGrdMV_ListCellClick(Sender: TcxCustomGridTableView;
	ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
	pSetDriverPoint;
end;

procedure TFrm_STT_Shuttle.cxGrdMV_ListCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if cxGrdMV_List.DataController.GetSelectedCount > 1 then btnRView.Enabled := True
																											else btnRView.Enabled := False;

  pSetDriverPoint;
end;

procedure TFrm_STT_Shuttle.cxGrdMV_ListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Focused then
    ACanvas.FillRect(AViewInfo.Bounds, clSkyBlue)
  else
    ACanvas.FillRect(AViewInfo.Bounds, AViewInfo.Params.Color);

  ACanvas.DrawTexT(AViewInfo.Text, AViewInfo.TextBounds, 0, True);
  ADone := True;
end;

procedure TFrm_STT_Shuttle.cxGridA0View1ColumnHeaderClick(Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
	AIndex := AColumn.Index;
end;

procedure TFrm_STT_Shuttle.cxGridA1C1ChartView1GetValueHint(Sender: TcxGridChartView;
	ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory : string;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	
	if cbChartKindA1.itemIndex = 7 then    //Pie
	begin
		case cbKindA1.itemIndex of
			1 : sTmp := sCategory + ' 완료건수 : ' + sValue + '건';
			2 : sTmp := sCategory + ' 취소건수 : ' + sValue + '건';
			3 : sTmp := sCategory + ' 문의건수 : ' + sValue + '건';
			4 : sTmp := sCategory + ' 총건수 : ' + sValue + '건';
			5 : sTmp := sCategory + ' 신규고객 : ' + sValue + '명';
			6 : sTmp := sCategory + ' 기존고객 : ' + sValue + '명';
			7 : sTmp := sCategory + ' 신규비율 : ' + sValue + '%';
			8 : sTmp := sCategory + ' 취소율 : ' + sValue + '%';
		end;
	end
	else
	begin
		case cbKindA1.itemIndex of
			1 : sTmp := '완료건수 : ' + sValue + '건';
			2 : sTmp := '취소건수 : ' + sValue + '건';
			3 : sTmp := '문의건수 : ' + sValue + '건';
			4 : sTmp := '총건수 : ' + sValue + '건';
			5 : sTmp := '신규고객 : ' + sValue + '명';
			6 : sTmp := '기존고객 : ' + sValue + '명';
			7 : sTmp := '신규비율 : ' + sValue + '%';
			8 : sTmp := '취소율 : ' + sValue + '%';
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT_Shuttle.cxGridA1C1ChartView1Series1GetValueDisplayText(
	Sender: TObject; const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	if cbChartKindA1.itemIndex = 1 then
	begin
		case cbKindA1.itemIndex of
			1 : sTmp := '완료건수 : ' + sValue + '건';
			2 : sTmp := '취소건수 : ' + sValue + '건';
			3 : sTmp := '문의건수 : ' + sValue + '건';
			4 : sTmp := '총건수 : ' + sValue + '건';
			5 : sTmp := '신규고객 : ' + sValue + '명';
			6 : sTmp := '기존고객 : ' + sValue + '명';
			7 : sTmp := '신규비율 : ' + sValue + '%';
			8 : sTmp := '취소율 : ' + sValue + '%';
		end;
	end
	else
	begin
		case cbKindA1.itemIndex of
			1 : sTmp := sValue + '건';
			2 : sTmp := sValue + '건';
			3 : sTmp := sValue + '건';
			4 : sTmp := sValue + '건';
			5 : sTmp := sValue + '명';
			6 : sTmp := sValue + '명';
			7 : sTmp := sValue + '%';
			8 : sTmp := sValue + '%';
		end;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT_Shuttle.cxGridA1C2ChartALLGetValueHint(Sender: TcxGridChartView;
	ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory : string;
	iTag : integer;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	iTag := ASeries.Tag;
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	
	if cbChartKindA1.itemIndex = 7 then    //Pie
	begin
		case iTag of
			0 : sTmp := sCategory + ' 호출건수 : ' + sValue + '건';
			1 : sTmp := sCategory + ' 탑승건수 : ' + sValue + '건';
		end;
	end
	else
	begin
		case iTag of
			0 : sTmp := '호출건수 : ' + sValue + '건';
			1 : sTmp := '탑승건수 : ' + sValue + '건';
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT_Shuttle.cxGridA1C2ChartSeries1GetValueDisplayText(Sender: TObject;
	const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
	iTag : integer;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	iTag := TcxGridChartSeries(Sender).Tag;
	if cbChartKindA1.itemIndex = 1 then
	begin
		case iTag of
			0 : sTmp := '완료건수 : ' + sValue + '건';
			1 : sTmp := '취소건수 : ' + sValue + '건';
			2 : sTmp := '문의건수 : ' + sValue + '건';
			3 : sTmp := '총건수 : ' + sValue + '건';
			4 : sTmp := '신규고객 : ' + sValue + '명';
			5 : sTmp := '기존고객 : ' + sValue + '명';
			6 : sTmp := '신규비율 : ' + sValue + '%';
			7 : sTmp := '취소율 : ' + sValue + '%';
		end;
	end
	else
	begin
		case iTag of
			0 : sTmp := sValue + '건';
			1 : sTmp := sValue + '건';
			2 : sTmp := sValue + '건';
			3 : sTmp := sValue + '건';
			4 : sTmp := sValue + '명';
			5 : sTmp := sValue + '명';
			6 : sTmp := sValue + '%';
			7 : sTmp := sValue + '%';
		end;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT_Shuttle.cxGridA2C2ChartALLGetValueHint(Sender: TcxGridChartView;
  ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory, sValuePlus : string;
	iTag : integer;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	iTag := ASeries.Tag;
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	 
	sValuePlus := formatfloat('#,##0', StrToFloatDef(cxGridA2C2ChartALLSeries1.Values[AValueIndex], 0.0));
	if cbChartKindA2.itemIndex = 7 then    //Pie
	begin
		sTmp := sCategory + ' 탑승건수 : ' + sValue + '건';
	end
	else
	begin
		sTmp := '탑승건수 : ' + sValue + '건';
	end;
	AHint := sTmp;
end;

procedure TFrm_STT_Shuttle.cxGridA2C2ChartSeries1GetValueDisplayText(Sender: TObject;
  const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
	iTag : integer;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	iTag := TcxGridChartSeries(Sender).Tag;
	if cbChartKindA2.itemIndex = 1 then
	begin
		case iTag of
			0 : sTmp := '자사콜운행건수 : ' + sValue + '건';
			1 : sTmp := '타사콜운행건수 : ' + sValue + '건';
			2 : sTmp := '총운행건수 : ' + sValue + '건';
		end;
	end
	else
	begin
		case iTag of
			0 : sTmp := sValue + '건';
			1 : sTmp := sValue + '건';
			2 : sTmp := sValue + '건';
		end;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT_Shuttle.cxGridA3C1ChartView1GetValueHint(Sender: TcxGridChartView;
  ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory : string;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));

	if cbChartKindA3.itemIndex = 7 then    //Pie
	begin
		case cbKindA3.itemIndex of
			1 : sTmp := sCategory + ' 1회 : ' + sValue + '명';
			2 : sTmp := sCategory + ' 2회 : ' + sValue + '명';
			3 : sTmp := sCategory + ' 3회 : ' + sValue + '명';
			4 : sTmp := sCategory + ' 4회 : ' + sValue + '명';
			5 : sTmp := sCategory + ' 5회 : ' + sValue + '명';
			6 : sTmp := sCategory + ' 6~10회 : ' + sValue + '명';
			7 : sTmp := sCategory + ' 11회 : ' + sValue + '명';
		end;
	end
	else
	begin
		case cbKindA3.itemIndex of
			1 : sTmp := '1회 : ' + sValue + '명';
			2 : sTmp := '2회 : ' + sValue + '명';
			3 : sTmp := '3회 : ' + sValue + '명';
			4 : sTmp := '4회 : ' + sValue + '명';
			5 : sTmp := '5회 : ' + sValue + '명';
			6 : sTmp := '6~10회 : ' + sValue + '명';
			7 : sTmp := '11회 : ' + sValue + '명';
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT_Shuttle.cxGridA3C1ChartView1Series1GetValueDisplayText(
  Sender: TObject; const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	if cbChartKindA3.itemIndex = 1 then
	begin
		case cbKindA3.itemIndex of
			1 : sTmp := '1회 : ' + sValue + '명';
			2 : sTmp := '2회 : ' + sValue + '명';
			3 : sTmp := '3회 : ' + sValue + '명';
			4 : sTmp := '4회 : ' + sValue + '명';
			5 : sTmp := '5회 : ' + sValue + '명';
			6 : sTmp := '6~10회 : ' + sValue + '명';
			7 : sTmp := '11회이상 : ' + sValue + '명';
		end;
	end
	else
	begin
		case cbKindA3.itemIndex of
			1 : sTmp := sValue + '명';
			2 : sTmp := sValue + '명';
			3 : sTmp := sValue + '명';
			4 : sTmp := sValue + '명';
			5 : sTmp := sValue + '명';
			6 : sTmp := sValue + '명';
			7 : sTmp := sValue + '명';
		end;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT_Shuttle.cxGridA3C2ChartALLGetValueHint(Sender: TcxGridChartView;
	ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory : string;
	iTag : integer;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	iTag := ASeries.Tag;
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	
	if cbChartKindA3.itemIndex = 7 then    //Pie
	begin
		case iTag of
			0 : sTmp := sCategory + ' 1회 : ' + sValue + '명';
			1 : sTmp := sCategory + ' 2회 : ' + sValue + '명';
			2 : sTmp := sCategory + ' 3회 : ' + sValue + '명';
			3 : sTmp := sCategory + ' 4회 : ' + sValue + '명';
			4 : sTmp := sCategory + ' 5회 : ' + sValue + '명';
			5 : sTmp := sCategory + ' 6~10회 : ' + sValue + '명';
			6 : sTmp := sCategory + ' 11회이상 : ' + sValue + '명';
		end;
	end
	else
	begin
		case iTag of
			0 : sTmp := '1회 : ' + sValue + '명';
			1 : sTmp := '2회 : ' + sValue + '명';
			2 : sTmp := '3회 : ' + sValue + '명';
			3 : sTmp := '4회 : ' + sValue + '명';
			4 : sTmp := '5회 : ' + sValue + '명';
			5 : sTmp := '6~10회 : ' + sValue + '명';
			6 : sTmp := '11회이상 : ' + sValue + '명';
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT_Shuttle.cxGridA3C2ChartALLSeries1GetValueDisplayText(Sender: TObject;
	const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
	iTag : integer;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	iTag := TcxGridChartSeries(Sender).Tag;
	if cbChartKindA3.itemIndex = 1 then
	begin
		case iTag of
			0 : sTmp := '1회 : ' + sValue + '명';
			1 : sTmp := '2회 : ' + sValue + '명';
			2 : sTmp := '3회 : ' + sValue + '명';
			3 : sTmp := '4회 : ' + sValue + '명';
			4 : sTmp := '5회 : ' + sValue + '명';
			5 : sTmp := '6~10회 : ' + sValue + '명';
			6 : sTmp := '11회이상 : ' + sValue + '명';
		end;
	end
	else
	begin
		case iTag of
			0 : sTmp := sValue + '명';
			1 : sTmp := sValue + '명';
			2 : sTmp := sValue + '명';
			3 : sTmp := sValue + '명';
			4 : sTmp := sValue + '명';
			5 : sTmp := sValue + '명';
			6 : sTmp := sValue + '명';
		end;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT_Shuttle.cxGridA3View1ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	AIndex := AColumn.Index;
end;

procedure TFrm_STT_Shuttle.cxGridA4C1ChartView1GetValueHint(Sender: TcxGridChartView;
  ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sTmp1, sValue, sCategory : string;
	iTag : integer;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	iTag := ASeries.Tag;
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	if cbKindA4.itemIndex <> 3 then sTmp1 := '건' else sTmp1 := '%';
	
	if cbChartKindA4.itemIndex = 7 then    //Pie
	begin
		case iTag of
			0 : sTmp := sCategory + ' 자사콜 : ' + sValue + sTmp1;
			1 : sTmp := sCategory + ' 공유콜 : ' + sValue + sTmp1;
			2 : sTmp := sCategory + ' 자사합계 : ' + sValue + sTmp1;
		end;
	end
	else
	begin
		case iTag of
			0 : sTmp := '자사콜 : ' + sValue + sTmp1;
			1 : sTmp := '공유콜 : ' + sValue + sTmp1;
			2 : sTmp := '자사합계 : ' + sValue + sTmp1;
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT_Shuttle.cxGridA4C1ChartView1Series1GetValueDisplayText(
  Sender: TObject; const AValue: Variant; var ADisplayText: string);
var sTmp, sTmp1, sValue : string;
	iTag : integer;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	iTag := TcxGridChartSeries(Sender).Tag;
	if cbKindA4.itemIndex <> 3 then sTmp1 := '건' else sTmp1 := '%';
	
	if cbChartKindA4.itemIndex = 1 then
	begin
		case iTag of
			0 : sTmp := '(발)자사콜 : ' + sValue + sTmp1;
			1 : sTmp := '(발)공유콜 : ' + sValue + sTmp1;
			2 : sTmp := '(발)자사합계 : ' + sValue + sTmp1;
			3 : sTmp := '(수)자사콜 : ' + sValue + sTmp1;
			4 : sTmp := '(수)공유콜 : ' + sValue + sTmp1;
			5 : sTmp := '(수)자사합계 : ' + sValue + sTmp1;
			6 : sTmp := '(%)자사콜 : ' + sValue + sTmp1;
			7 : sTmp := '(%)공유콜 : ' + sValue + sTmp1;
			8 : sTmp := '(%)자사합계 : ' + sValue + sTmp1;
		end;
	end
	else
	begin
		sTmp := sValue + sTmp1;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT_Shuttle.cxGridA4C2ChartALLGetValueHint(Sender: TcxGridChartView;
  ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp,sTmp1, sValue, sCategory : string;
	iTag : integer;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	iTag := ASeries.Tag;
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	
	if cbKindA4.itemIndex <> 3 then sTmp1 := '건' else sTmp1 := '%';
	
	if cbChartKindA4.itemIndex = 7 then    //Pie
	begin
		case iTag of
			0 : sTmp := sCategory + ' (발)자사콜 : '   + sValue + sTmp1;
			1 : sTmp := sCategory + ' (발)공유콜 : '   + sValue + sTmp1;
			2 : sTmp := sCategory + ' (발)자사합계 : ' + sValue + sTmp1;
			3 : sTmp := sCategory + ' (수)자사콜 : '   + sValue + sTmp1;
			4 : sTmp := sCategory + ' (수)공유콜 : '   + sValue + sTmp1;
			5 : sTmp := sCategory + ' (수)자사합계 : ' + sValue + sTmp1;
			6 : sTmp := sCategory + ' (%)자사콜 : '   + sValue + sTmp1;
			7 : sTmp := sCategory + ' (%)공유콜 : '   + sValue + sTmp1;
			8 : sTmp := sCategory + ' (%)자사합계 : ' + sValue + sTmp1;
		end;
	end
	else
	begin
		case iTag of
			0 : sTmp := '(발)자사콜 : '   + sValue + sTmp1;
			1 : sTmp := '(발)공유콜 : '   + sValue + sTmp1;
			2 : sTmp := '(발)자사합계 : ' + sValue + sTmp1;
			3 : sTmp := '(수)자사콜 : '   + sValue + sTmp1;
			4 : sTmp := '(수)공유콜 : '   + sValue + sTmp1;
			5 : sTmp := '(수)자사합계 : ' + sValue + sTmp1;
			6 : sTmp := '(%)자사콜 : '   + sValue + sTmp1;
			7 : sTmp := '(%)공유콜 : '   + sValue + sTmp1;
			8 : sTmp := '(%)자사합계 : ' + sValue + sTmp1;
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT_Shuttle.cxGridA4C2ChartALLSeries7GetValueDisplayText(Sender: TObject;
  const AValue: Variant; var ADisplayText: string);
var sTmp, sTmp1, sValue : string;
	iTag : integer;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	iTag := TcxGridChartSeries(Sender).Tag;
	if iTag < 6 then sTmp1 := '건' else sTmp1 := '%';
	
	if cbChartKindA4.itemIndex = 1 then
	begin
		case iTag of
			0 : sTmp := '(발)자사콜 : ' + sValue + sTmp1;
			1 : sTmp := '(발)공유콜 : ' + sValue + sTmp1;
			2 : sTmp := '(발)자사합계 : ' + sValue + sTmp1;
			3 : sTmp := '(수)자사콜 : ' + sValue + sTmp1;
			4 : sTmp := '(수)공유콜 : ' + sValue + sTmp1;
			5 : sTmp := '(수)자사합계 : ' + sValue + sTmp1;
			6 : sTmp := '(%)자사콜 : ' + sValue + sTmp1;
			7 : sTmp := '(%)공유콜 : ' + sValue + sTmp1;
			8 : sTmp := '(%)자사합계 : ' + sValue + sTmp1;
		end;
	end
	else
	begin
		sTmp := sValue + sTmp1;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT_Shuttle.cxGridA4View1ColumnHeaderClick(Sender: TcxGridTableView;
	AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_STT_Shuttle.cxGridRunListCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
	AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var iRow : integer;
	sTmp : string;	
begin
	iRow := cxGridRunList.DataController.FocusedRecordIndex;
	sTmp := cxGridRunList.DataController.Values[iRow,1];
	proc_SearchA5_2(edt_SearchA5.text, sTmp, chk_Search_Route.Checked);
end;

procedure TFrm_STT_Shuttle.DelDistance;
var
  layerMan : IXLayerMan;
  layer : IXLayer;
begin
  mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
	layerMan := mCtrlMan.GetLayerMan();
  layer :=  layerMan.FindLayer(2);
  if layer <> nil then layer.ClearObject();
end;

procedure TFrm_STT_Shuttle.DestroyUI;
var
obj : IXUIObj;
i : Integer;
begin
	obj := mMap_WKmoveLog.GetCtrlMan.GetUIMan.GetChildByUIID(11);
  if obj <> nil then
		obj.DestroyUIObj();

  for i :=0 to 20 do
  begin
    if (i <> 11) and (i <> 12) and (i <> 16) then
      MyToolBar1[i].DestroyUIObj();
  end;
end;

procedure TFrm_STT_Shuttle.DrawPolygon;
var
  layerMan : IXLayerMan;
  style : IXLayerStyle;
  obj : IXLayerPolygon;
begin
  mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
  layerMan := mCtrlMan.GetLayerMan();
  mUtil := mMap_WKmoveLog.GetUtility();

  style := layerMan.NewStyle(-1);
  style.SetPen(mUtil.RGBColor(0, 0, 255), 2, mUtil.GetConstToValue('PS_SOLID'));
  style.SetBrush(mUtil.RGBAColor(0, 0, 255, 100), mUtil.GetConstToValue('BS_SOLID'));

  obj := layerMan.NewPolygon(1, -1);
  obj.SetStyle(style);
  obj.SetClosed(1);
  obj.SetCanClick(1);
  obj.SetCanFocus(1);

  obj.SetStateModeNew();
end;

procedure TFrm_STT_Shuttle.DrawPolyline;
var
  layerMan : IXLayerMan;
  style : IXLayerStyle;
  obj : IXLayerPolygon;
begin
  mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
  layerMan := mCtrlMan.GetLayerMan();
  mUtil := mMap_WKmoveLog.GetUtility();

  style := layerMan.NewStyle(-1);
  style.SetPen(mUtil.RGBColor(0, 0, 255), 2, mUtil.GetConstToValue('PS_DOT'));

  obj := layerMan.NewPolygon(1, -1);
  obj.SetStyle(style);
  obj.SetClosed(1);
  obj.SetCanClick(1);
  obj.SetCanFocus(1);

  obj.SetStateModeNew();
end;

procedure TFrm_STT_Shuttle.edt_SearchA0KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then btnSearchA0.Click;
end;

procedure TFrm_STT_Shuttle.edt_SearchA1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then btnSearchA1.Click;
end;

procedure TFrm_STT_Shuttle.edt_SearchA5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then btnSearchA5.click;
end;

function TFrm_STT_Shuttle.fmod(const A, B: Extended): Extended;
begin
  Result := A - (B*Trunc(A / B));
end;

procedure TFrm_STT_Shuttle.cxGridA1View1ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	AIndex := AColumn.Index;
end;

procedure TFrm_STT_Shuttle.MakeStatusbar;
var
  mDpsize : IXSize;
  mImageman : IXImageMan;
  mRootPath : string;
begin
	mUiman := mCtrlMan.GetUIMan();
	mCtrlState := mCtrlMan.GetControlState();
	mDpsize := mCtrlState.GetSizeDP();

	mImageman := mCtrlMan.GetImageMan();
  mRootPath := ExtractFilePath(Application.ExeName);
  mImageman.SetDefaultPath(mRootPath + '\Image\');
//  mImageman.SetDefaultPath(MAP_URL + 'Theme\image');

	btnImg := mUiman.CreateUI_Image(mUiman);
	btnImg.SetParent(mUiman);
	btnImg.SetUIID(300);
	btnImg.SetImage('areaPanel.png');
//	btnImg.SetBound(0, mDpsize.GetCY()-37, 470, 37);
	btnImg.SetBound(-65, 0, 470, 37);
	btnImg.SetCanClick(0);
	btnImg.SetAlpha(30);
	btnImg.SetAnchor(mUtil.GetConstToValue('TMUIOBJ_ANCHOR_LEFT') or mUtil.GetConstToValue('TMUIOBJ_ANCHOR_TOP'));

	stcMsgArea := mUiman.CreateUI_StaticText(mUiman);
	stcMsgArea.SetParent(btnImg);
	stcMsgArea.SetUIID(301);
	stcMsgArea.SetBound(85, 4, 280, 30);
	stcMsgArea.SetUIObjFontColor(mUtil.RGBColor(255, 255, 255));
	stcMsgArea.SetFont(10, 1, ('돋움'),0);
	stcMsgArea.SetUIObjFontColor(mUtil.RGBColor(255, 255, 255));
	stcMsgArea.SetCanFocus(0);
	stcMsgArea.SetCanClick(0);
end;

procedure TFrm_STT_Shuttle.MapLevel_Master(level: INTEGER);
var i, SetEnabled, SetDisable : Integer;
  mLevelBarBg : IXUIButton;
begin
	mUiman := mCtrlman.GetUIMan();
  mLevelBarBg := mUiman.CreateUI_Button(mUiman);
	if mLevelBarBg = nil then Exit;

	// Image Index 설정 0~3
	SetEnabled := 0;
	SetDisable := 1;
	for i := 0 to 12  do
  begin
    if not Assigned(mBtnLevle[i]) then break;
    
		if level = i then
      mBtnLevle[i].SetItemIndex(SetEnabled)
		else mBtnLevle[i].SetItemIndex(SetDisable);
	end;
end;

procedure TFrm_STT_Shuttle.Map_Rotate;
begin
  mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
  mCtrlMan.SetMapRotation(1);
end;

function TFrm_STT_Shuttle.Map_SetLevel(level: Integer): Integer;
begin
  if (level < minLogicalLevel) then Exit;
  if (level > maxLogicalLevel) then Exit;
	try
    mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
    mCtrlState := mCtrlMan.GetControlState;
    mCtrlState.SetLevel(level);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_STT_Shuttle.Map_ZoomIn;
begin
  try
    mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
    mCtrlState := mCtrlMan.GetControlState;
  	if (mCtrlState.GetLevel() > minLogicalLevel) then	mCtrlState.SetLevel(mCtrlState.GetLevel() -1);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_STT_Shuttle.Map_ZoomOut;
begin
  try
    mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
    mCtrlState := mCtrlMan.GetControlState;
  	if (mCtrlState.GetLevel() < maxLogicalLevel) then	mCtrlState.SetLevel(mCtrlState.GetLevel() +1);
  except on E: Exception do
		Assert(False, E.Message);
  end;
end;

procedure TFrm_STT_Shuttle.Mark_Symbol(Lon, Lat, index: Integer; AId,
  AGu: string);
var
  mGroup : IXPOIGroup;
  mGstyle, mStyle : IXPOIStyle;
	mItem : IXPOIItem;
	mImageman : IXImageMan;
	mImage : IXMagicImage;
	mRootPath : String;
	iTmp, mAngle : Integer;
begin
	try
		mCtrlState := mCtrlMan.GetControlState();

		// Step 3. Make POI Items
		mImageman := mCtrlMan.GetImageMan();
		mRootPath := ExtractFilePath(Application.ExeName);
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		mPoiman := mCtrlMan.GetPOIMan();
//		mImage := mImageman.LoadImageList('SH','marker_100.png', 28, 37);
		mImage := mImageman.LoadImageList('WK','Arrow.png', 16, 16);

		mGroup := mPoiman.FindGroup(0); //현재 기사위치
		if mGroup = nil then mGroup := mPoiman.NewGroup(0);

		mGstyle := mPoiman.FindStyle(1);
		if (mGstyle = nil) then
		begin
			mGstyle := mPoiman.NewStyle(1); // -1: 아이디 자동 생성
			mGstyle.SetGDIFont(GS_FONTNAME, 0, 9);                           // 레벨별 기사 상태 캡션표기
			mGstyle.SetFontColor(mUtil.RGBColor(0, 0, 0));              // 캡션글자
			mGstyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));     // 캡션 글자테두리
			mGstyle.SetBrush(mUtil.RGBColor(251, 249, 250), 0);         // 캡션배경
			mGstyle.SetPen(mUtil.RGBColor(175, 57, 54), 1, 0);
		end;
		mGroup.SetStyle(mGstyle);

		if Not mImage.IsValid then ShowMessage('Image 이상');

		mItem := mGroup.NewItem(-1) ;
			if AGu = '' then mItem.SetCaption('[' + Aid + ']')
									else mItem.SetCaption('[' + Aid + '.' + AGu + ']');
//      mItem.SetContents(Aname);
		mItem.SetLonLat(Lon, Lat);
		mItem.SetImage(mImage);
		mItem.SetShowImage(1);
		mItem.SetImageIndex(index);
		mItem.SetImageOffset(4);
		mItem.SetTextStyle(StrToInt('0x12'));
		mItem.SetString(Aid);

		iTmp := mItem.GetID;

		mStyle := mPoiman.FindStyle(1);
		if mStyle = nil then
		begin
			mStyle := mPoiman.NewStyle(1);
			mStyle.SetGDIFont(GS_FONTNAME, 0, 9);                           // 레벨별 기사 상태 캡션표기
			mStyle.SetFontColor(mUtil.RGBColor(0, 0, 0));              // 캡션글자
			mStyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));     // 캡션 글자테두리
			mStyle.SetBrush(mUtil.RGBColor(251, 249, 250), 0);         // 캡션배경
			mStyle.SetPen(mUtil.RGBColor(175, 57, 54), 1, 0);
		end;
		mItem.SetStyle(mStyle);
		mItem.SetSyncAngle(1);
		if (Pt1.lon >0) and (Pt1.lat >0) and (Pt2.lon >0) and (Pt2.lat >0) then
		mAngle := Trunc(Angle(Pt1, Pt2)); //+ 180;
		mItem.SetAngle(mAngle);
		mItem.SetAlpha(100);

	except
  end;
end;

procedure TFrm_STT_Shuttle.MenuItemClick(Sender: TObject);
var
  StartDt, EndDt: TDate;
begin
	StartDt := -1;
	EndDt := -1;

  case TMenuItem(Sender).Tag of
    0:
			begin
        StartDt := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),
          1, 8)));
        EndDt := StartDt + 1;
      end;
    1:
      begin
				StartDt := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),
          1, 8))) - 1;
        EndDt := StartDt + 1;
			end;
		2:
      begin
				StartDt := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),
					1, 8))) - 7;
				EndDt := StartDt + 7;
			end;
    3:
      begin
        StartDt := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),
          1, 8))) - 31;
        EndDt := StartDt + 31;
      end;
		4:
			begin
				StartDt := StartOfTheMonth(Now);
				EndDt := EndOfTheMonth(Now);
			end;
	end;

  if StartDt > -1 then
  begin
		SetSearchDate(StartDt, EndDt);
  end;
end;

procedure TFrm_STT_Shuttle.SaveImage;
var filename : WideString;
begin
	mUtil := mMap_WKmoveLog.GetUtility();
	filename := mUtil.SaveImageDialog('C:\', 'MapImage.png');
	mMap_WKmoveLog.SaveImage(filename);
end;

function TFrm_STT_Shuttle.SetCtrlState(setType: Integer): Integer;
begin
  mCtrlState := mCtrlman.GetControlState();

  case setType of
    // 마우스 드래그 이동
		11: // 설정
				mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_DRAG'), 1);
		12: // 해제
        mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_DRAG'), 0);

    // 마우스 드래그 확대/축소
    21: // 설정
        mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_DRAGZOOM'), 1);
    22: // 해제
        mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_DRAGZOOM'), 0);

    // 마우스 클릭 이동
		31: // 설정
        mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_CLICK'), 1);
    32: // 해제
        mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_CLICK'), 0);

    // 마우스 클릭 이동
    33: // 설정
				mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_DCLICK'), 1);
    34: // 해제
        mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_DCLICK'), 0);

    // 마우스 휠 확대/축소
    41: // 설정
        mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_WHEEL_ZOOM'), 1);
    42: // 해제
        mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_WHEEL_ZOOM'), 0);
  end;
end;

procedure TFrm_STT_Shuttle.SetMapRectLevel(LLon, LLat, RLon, RLat: Integer);
Var
  mCenterLL : TalMapXLib_TLB.IXPoint;
  mMapRect  : IXMapRect;
begin
	mCtrlState := mCtrlMan.GetControlState();
	mCenterLL := mCtrlState.GetLLCenter(); // 지도의 중심 좌표

	mMapRect := mUtil.GetMapRect();

	mMapRect.SetLLat(LLat);
	mMapRect.SetLLong(LLon);
	mMapRect.SetRLong(RLon);
	mMapRect.SetULat(RLat);

  mCtrlState.SetMapRectLevel(mMapRect, 0);
end;

procedure TFrm_STT_Shuttle.SetSearchDate(AStart, AEnd: TDate);
begin
	case cxPageControl1.ActivePageIndex of
    0:
      begin
				cxDtStartA0.Date := AStart;
				cxDtEndA0.Date := AEnd;
			end;
    1:
      begin
				cxDtStartA1.Date := AStart;
				cxDtEndA1.Date := AEnd;
			end;
    2:
      begin
				cxDtStartA2.Date := AStart;
				cxDtEndA2.Date := AEnd;
			end;
		3:
			begin
				cxDtStartA3.Date := AStart;
				cxDtEndA3.Date := AEnd;
			end;
		4:
			begin
				cxDtStartA4.Date := AStart;
				cxDtEndA4.Date := AEnd;
			end;
		5:
			begin
				cxDtStartA5.Date := AStart;
				cxDtEndA5.Date := AEnd;
				cxTimeStart.Time := StrToTime('09:00:00');
				cxTimeEnd.Time := Now;
			end;
	end;
end;

procedure TFrm_STT_Shuttle.ShowThemeForm;
var
  thememan : IXThemeMan;
begin
  mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
  thememan := mCtrlMan.GetThemeMan();
  thememan.ShowForm();
end;

function TFrm_STT_Shuttle.SK_GetAngleFromLine(pt1, pt2: TPoint): Double;
var ang, theta : Double;
	a, b : Double;
begin
	a := pt2.x - pt1.x;
	b := pt2.y - pt1.y;
	ang := 0;
	if (a = 0) and (b = 0) then
	begin
		Result := 0.0;
	end;

	theta := arctan2(b, a) * 180 /K_PI;
	Result := theta;
end;

procedure TFrm_STT_Shuttle.tm_FlashTimer(Sender: TObject);
begin
	if (not Frm_Flash.Visible) then
	begin
		Frm_Flash.Show;
		Sleep(10);
		Frm_Flash.BringToFront;
	end;
	Frm_Flash.cxPBar1.Properties.Max := -100;
	Frm_Flash.cxPBar1.Properties.Min := -100;
	Frm_Flash.cxPBar1.Properties.Marquee := True;
	Frm_Flash.cxPBar1.Properties.ShowTextStyle := cxtsText;

end;

procedure TFrm_STT_Shuttle.View3D;
var
  state : Integer;
  mtype : Integer;
begin
  mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
  mUiman := mCtrlMan.GetUIMan;
  mCtrlState := mCtrlMan.GetControlState;
  mDpsize := mCtrlState.GetSizeDP;
  mUtil := mMap_WKmoveLog.GetUtility;
  mCtrlState := mMap_WKmoveLog.GetCtrlMan.GetControlState;
  state := mUtil.GetConstToValue('TMCTRLSTATE_DISPLAY_BUILDING_TYPE');
	mtype := mCtrlState.GetState(state);
  if mtype = 1 then
  begin
    mCtrlState.SetState(state, mUtil.GetConstToValue('TMCTRLSTATE_CODE_BUILDING_3D_MASK'));
  end
  else if mtype = 16 then
  begin
    mCtrlState.SetState(state, mUtil.GetConstToValue('TMCTRLSTATE_CODE_BUILDING_3D_1'));
  end
  else if mtype = 17 then
  begin
    mCtrlState.SetState(state, mUtil.GetConstToValue('TMCTRLSTATE_CODE_BUILDING_3D_2'));
  end
  else if mtype = 18 then
  begin
    mCtrlState.SetState(state, mUtil.GetConstToValue('TMCTRLSTATE_CODE_BUILDING_NORMAL'));
  end
  else
  begin
    mCtrlState.SetState(state, mUtil.GetConstToValue('TMCTRLSTATE_CODE_BUILDING_NORMAL'));
  end;
end;

procedure TFrm_STT_Shuttle.ViewText;
var
  mMapMan : IXMapMan;
begin
  mMapMan := mMap_WKmoveLog.GetCtrlMan.GetMapMan();
  if mMapMan.GetVisible = 5 then mMapMan.SetVisible(7)
  else if mMapMan.GetVisible = 7 then mMapMan.SetVisible(5);
end;

function TFrm_STT_Shuttle.WGS84ToBessel(Y_1, x_1: string): integer;
var r_y, r_X : Integer;
  coord : TalMapXLib_TLB.IXCoordSys;
  pos : IXMapPos;
  int_string1, int_string2 : string;
begin
	ws_Lon := 0;
	ws_Lat := 0;
	if ( Copy(x_1, 1, 1) <> '0' ) Or ( Copy(Y_1, 1, 1) <> '1' ) then Exit;

 	if (Y_1 ='') or (x_1 = '') then Exit;

  int_string1 := Y_1;
  r_y := ((StrToInt64(Copy(int_string1,1,3)) * 360000) + (StrToInt64(Copy(int_string1,4,2)) * 6000) + (StrToInt64(Copy(int_string1,6,2)) * 100) + StrToInt64(Copy(int_string1,8,2)));

  int_string2 := x_1;
  r_X := ((StrToInt64(Copy(int_string2,1,3)) * 360000) + (StrToInt64(Copy(int_string2,4,2)) * 6000) + (StrToInt64(Copy(int_string2,6,2)) * 100) + StrToInt64(Copy(int_string2,8,2)));

  coord := mMap_WKmoveLog.GetCoordSys();
  pos := coord.WGS84ToBessel(r_y, r_X);
  ws_Lon := pos._Lon;
  ws_Lat := pos._Lat;
end;

procedure TFrm_STT_Shuttle.btnExcelA0Click(Sender: TObject);
begin
	if cxGridA0View1.DataController.RecordCount = 0 then
	begin
		GMessagebox('자료가 없습니다.', CDMSE);
		Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	Frm_Main.sgExcel := '셔틀통계-NFC현황.xls';
	Frm_Main.sgRpExcel := Format('셔틀통계>NFC현황]%s건', [GetMoneyStr(cxGridA0View1.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := cxGridA0;
	Frm_Main.cxGridDBViewExcel := cxGridA0View1;
	Frm_Main.proc_excel(0);
end;

procedure TFrm_STT_Shuttle.btnExcelA1Click(Sender: TObject);
begin
	if cxGridA1View1.DataController.RecordCount = 0 then
	begin
		GMessagebox('자료가 없습니다.', CDMSE);
		Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	Frm_Main.sgExcel := '셔틀통계-기사별통계.xls';
	Frm_Main.sgRpExcel := Format('셔틀통계>기사별통계]%s건', [GetMoneyStr(cxGridA1View1.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := cxGridA1;
	Frm_Main.cxGridDBViewExcel := cxGridA1View1;
	Frm_Main.proc_excel(0);
end;

procedure TFrm_STT_Shuttle.btnExcelA2Click(Sender: TObject);
begin
	if cxGridA2View1.DataController.RecordCount = 0 then
	begin
		GMessagebox('자료가 없습니다.', CDMSE);
		Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	Frm_Main.sgExcel := '셔틀통계-차량별통계.xls';
	Frm_Main.sgRpExcel := Format('셔틀통계>차량별통계]%s건', [GetMoneyStr(cxGridA2View1.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := cxGridA2;
	Frm_Main.cxGridDBViewExcel := cxGridA2View1;
	Frm_Main.proc_excel(0);
end;

procedure TFrm_STT_Shuttle.btnExcelA3Click(Sender: TObject);
begin
	if cxGridA3View1.DataController.RecordCount = 0 then
	begin
		GMessagebox('자료가 없습니다.', CDMSE);
		Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	Frm_Main.sgExcel := '셔틀통계-노선별통계.xls';
	Frm_Main.sgRpExcel := Format('셔틀통계>노선별통계]%s건', [GetMoneyStr(cxGridA3View1.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := cxGridA3;
	Frm_Main.cxGridDBViewExcel := cxGridA3View1;
	Frm_Main.proc_excel(0);
end;

procedure TFrm_STT_Shuttle.btnExcelA4Click(Sender: TObject);
begin
	if cxGridA3View1.DataController.RecordCount = 0 then
	begin
		GMessagebox('자료가 없습니다.', CDMSE);
		Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	Frm_Main.sgExcel := '셔틀통계-시간대별통계.xls';
	Frm_Main.sgRpExcel := Format('셔틀통계>시간대별통계]%s건', [GetMoneyStr(cxGridA4View1.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := cxGridA4;
	Frm_Main.cxGridDBViewExcel := cxGridA4View1;
	Frm_Main.proc_excel(0);
end;

procedure TFrm_STT_Shuttle.btnExitClick(Sender: TObject);
begin
  layerMan := mCtrlMan.GetLayerMan();
  layerMan.ClearLayer;            //경로 삭제

  chk_RView.Enabled := True;
  btnRView.Enabled := True;
	pnlRView.Visible := False;

  pSetPoiLoad;
end;

procedure TFrm_STT_Shuttle.btnMapFPlayClick(Sender: TObject);
begin
  slLonList.Clear;
  slLatList.Clear;
	pMapPlay(-1);
end;

procedure TFrm_STT_Shuttle.btnMapPlayClick(Sender: TObject);
Var AView: TcxGridDBTableView;
begin
  AView := GetCurrentView;
	pMapPlay(AView.DataController.FocusedRecordIndex);
end;

procedure TFrm_STT_Shuttle.btnMapPosClick(Sender: TObject);
begin
	if btnMapPos.Tag = 1 then
	begin
    btnMapPos.Tag := 0;
    PnlTop.Align := alLeft;
    cxSplitter1.Align := alLeft;
		pnlTop.Width := 600;
  end else
  begin
    btnMapPos.Tag := 1;
    PnlTop.Align := alTop;
    cxSplitter1.Align := alTop;
    pnlTop.Height := 300;
  end;
  btnMapPos.OptionsImage.ImageIndex := btnMapPos.Tag;

  // 위치 조정
  DestroyUI;
  CreateLevelBar;
  CreateToolBarUI;
end;

procedure TFrm_STT_Shuttle.btnMapStopClick(Sender: TObject);
begin
	gbPlayStop := True;
end;

procedure TFrm_STT_Shuttle.mMap_WKmoveLogCreate(ASender: TObject;
  Value: Integer);
var
  mMapMan : IXMapMan;
  mThemeMan : IXThemeMan;
  mAdminMan : IXAdminMan;
  mRootPath, XPos, YPos : String;
  sTemp : string;
begin
	try
    mRootPath := ExtractFilePath(Application.ExeName);

    mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
    mThemeMan := mCtrlMan.GetThemeMan();
		mMapMan := mCtrlMan.GetMapMan();
    mAdminMan := mCtrlMan.GetAdminMan();

    mPoiman := mCtrlMan.GetPOIMan();


    // CtrlMan의 Default Path를 프로그램 실행 디렉토리로 설정
  //  mCtrlMan.SetDefaultPath(WideString(mRootPath));
    mCtrlMan.SetDefaultPath(MAP_URL);

    // 라이센스 파일을 Load한다 정상적으로 Load가 안되면 에러메세지지가 출력.
  //  if mCtrlMan.LoadLicense(WideString(mRootPath + 'eksys\license\jway_sn.TML')) <> true then
    if mCtrlMan.LoadLicense(MAP_URL + 'license\CMNAGTXE.tml') <> true then
    begin
      Assert(False, 'TalMap License Error :' + MAP_URL + 'license\CMNAGTXE.tml');
      ShowMessage('라이센스 설정에 실패했습니다.');
      exit
    end;

    // Map 데이터를 설정 TM1폴더의 상위 폴더를 지정.
    // Web Server에 올리실 경우는 아래와 같이 동일하게 TM1폴더의 상위 폴더까지만 지정하면 됩니다.
    // 예: 'http://user-site.co.kr/Map/MapData' --> MapData 밑에는 TM1폴더가 위치하게 하면 됩니다.
  //  if mMapMan.SetDefaultPath(WideString(mRootPath + 'eksys\MapData')) <> true then
    if mMapMan.SetDefaultPath(MAP_URL + 'MapData') <> true then
    begin
      ShowMessage('Map 데이터 설정에 실패했습니다.');
      exit
    end;

    // Theme 파일을 설정.
  //  mThemeMan.SetDefaultPath(mRootPath + 'eksys\Theme');
    mThemeMan.SetDefaultPath(MAP_URL + 'Theme');
    if mThemeMan.LoadTheme('MNS.TMT') <> 1 then
    begin
      ShowMessage('테마파일 설정에 실패했습니다.');
      Exit
    end;

    // Admin 파일을 설정.
  //  mAdminMan.SetDefaultPath(mRootPath + 'eksys\Theme');
    mAdminMan.SetDefaultPath(MAP_URL + 'Theme');

    if mAdminMan.LoadAdmin('TalMap_M.TMA') <> true then
    begin
      ShowMessage('행정도파일 설정에 실패했습니다.');
      Exit
    end;
    mUiman := mCtrlman.GetUIMan();
		mUiman.SetShowCenterLine(2);       //센터 열십자.

		SetCtrlState(32);//마우스 클릭이동 해제

    mCtrlMan.SetDefaultEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSEMOVE') or mUtil.GetConstToValue('TMEVENTTYPE_MOUSEDOWN') or
                                 mUtil.GetConstToValue('TMEVENTTYPE_MOUSEUP')   or mUtil.GetConstToValue('TMEVENTTYPE_POI_MOUSEDOWN'));

    XPos := Area_CenterLat;//'037335565';
    YPos := Area_CenterLon;//'126583729';
    WGS84ToBessel(YPos, XPos);
    OnMoveMap(ws_Lon, ws_Lat);

    sts_Chk := True;


		GeneralInit;
	except
    on E: exception do
    begin
      sTemp := 'Map 예외처리 발생:' + e.Message;
      Assert(False, E.Message);
      ShowMessage(sTemp);
    end;
  end;
end;

procedure TFrm_STT_Shuttle.mMap_WKmoveLogMouseMove(ASender: TObject; Flag, X,
  Y: Integer);
var
  pos : IXMapPos;
  mAdminman : IXAdminMan;
  mStyle : IXLayerStyle;
  mLayerman : IXLayerMan;
  mLayer : IXLayer;
  mItem : IXAdminItem;
  mPoll : TalMapXLib_TLB.IXPoint;
  mPolygon : IXLayerPolygon;
begin
  Try
    mUtil := mMap_WKmoveLog.GetUtility;
    mCtrlMan := mMap_WKmoveLog.GetCtrlMan;
    mLayerman := mCtrlman.GetLayerMan();
    mLayer :=  mLayerman.FindLayer(1);
    if mLayer <>nil then
      mLayer.ClearObject();

    pos := mCtrlState.DPToLL(X, Y);
    m_Lon := pos.GetLon;
    m_Lat := pos.GetLat;

    mLayerman := mCtrlMan.GetLayerMan;
    mAdminman := mCtrlMan.GetAdminMan;
    // Make Layer Style
    mStyle := mLayerman.FindStyle(200);
    if mStyle = nil then
    begin
      mStyle := mLayerman.NewStyle(200);
      mStyle.SetPen(mUtil.RGBColor(201, 227, 240), 1, mUtil.GetConstToValue('PS_SOLID'));
      mStyle.SetBrush(mUtil.RGBAColor(201, 227, 240, 100), mUtil.GetConstToValue('BS_SOLID'));
      mStyle.SetVisibleLevel(1, 0);
      mStyle.SetVisibleLevel(2, 0);
    end;

    // Make Layer Polygon
    mLayer := mLayerman.FindLayer(1);
    if mLayer = nil then mLayer := mLayerman.NewLayer(1);

    // mAdminMan.LoadAdmin('TalMap_M.TMA');
    mItem := mAdminMan.GetAdminItemByCode(GetAdminCodeF(m_Lon,m_Lat));

    mPoll :=  mCtrlState.GetLLCenter();

    BesselToWGS84(mPoll.GetX, mPoll.Gety);
    Save_map_Lon := FloatToStr(sw_Lon);
    Save_map_Lat := '0'+ FloatToStr(sw_Lat);

    mPolygon := mLayer.NewPolygon(-1);

    mPolygon.BeginUpdate();
    // 0: PolyLine, 1: Polygone
    mPolygon.SetClosed(1);
    mPolygon.SetStyle(mStyle);
    mPolygon.SetCanClick(0);
    mPolygon.SetCanFocus(0);
    mPolygon.EndUpdate();

    if mItem <> nil then
      mPolygon.SetAdminShape(mItem,0);
    mPolygon.SetStateModeNew();
  except

  End;
end;

procedure TFrm_STT_Shuttle.mMap_WKmoveLogPOI_DblClick(ASender: TObject;
  const POI: IXPOIItem; nFlag, X, Y: Integer);
var
  pos : IXMapPos;
  mLayerman : IXLayerMan;
  mLayer : IXLayer;
  m_Lon, m_Lat : Integer;
begin
  mLayerman := mCtrlman.GetLayerMan();
  mLayer :=  mLayerman.FindLayer(1);
  if mLayer <> nil then
    mLayer.ClearObject();

  pos := mCtrlState.DPToLL(X, Y);
  m_Lon := pos.GetLon;
  m_Lat := pos.GetLat;

  OnMoveMap(m_Lon, m_Lat);
  cxGrdMV.SetFocus;
	cxGrdMV_List.DataController.FocusedRecordIndex := strtoint(POI.GetString) - 1 ;
end;

procedure TFrm_STT_Shuttle.mMap_WKmoveLogStateChange(ASender: TObject; Code,
  Value1, Value2: Integer);
var
  mGroup : IXPOIGroup;
  mGstyle : IXPOIStyle;
begin
  Try
    mUtil := mMap_WKmoveLog.GetUtility;
    mCtrlMan := mMap_WKmoveLog.GetCtrlMan;
    mPoiman := mCtrlMan.GetPOIMan();

    mCtrlState := mCtrlman.GetControlState();
    if Code = mUtil.GetConstToValue('TMCHECKCONFIG_LEVEL') then
    begin
      MapLevel_Master(mCtrlState.GetLevel());

      mGroup := mPoiman.FindGroup(0);
      if mGroup = nil then mGroup := mPoiman.NewGroup(0);

      mGstyle := mPoiman.FindStyle(1);
      if (mGstyle <> nil) then
      begin
        if mCtrlState.GetLevel() < 6 then
        begin
          mGstyle.SetGDIFont(GS_FONTNAME, 0, 9);                           // 레벨별 기사 상태 캡션표기
          mGstyle.SetFontColor(mUtil.RGBColor(0, 0, 0));              // 캡션글자
          mGstyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));     // 캡션 글자테두리
          mGstyle.SetBrush(mUtil.RGBColor(251, 249, 250), 0);         // 캡션배경
          mGstyle.SetPen(mUtil.RGBColor(175, 57, 54), 1, 0);
          mGroup.SetStyle(mGstyle);
        end else
        begin
          mGroup.ClearStyle;
        end;
      end;
    end;
  except
	end;
end;

procedure TFrm_STT_Shuttle.mMap_WKmoveLogUI_MouseHover(ASender: TObject;
  const Obj: IXUIObj);
begin
  if Obj.GetUIID = 11 then // Level Bar BG
     Obj.SetAlpha(0)
  else
  if ( ( Obj.GetUIID > 11 ) And ( Obj.GetUIID < 27 ) ) then
		 Obj.GetParent().SetAlpha(0);
end;

procedure TFrm_STT_Shuttle.mMap_WKmoveLogUI_MouseLeave(ASender: TObject;
  const Obj: IXUIObj);
begin
  if Obj.GetUIID = 11 then // Level Bar BG
     Obj.SetAlpha(70)
  else
	if ( ( Obj.GetUIID > 11 ) And ( Obj.GetUIID < 27 ) ) then
     Obj.GetParent().SetAlpha(70);
end;

procedure TFrm_STT_Shuttle.mMap_WKmoveLogUI_MouseMove(ASender: TObject;
  const Obj: IXUIObj; Flag, X, Y: Integer);
begin
  if Obj.GetUIID > 200 then
  begin
    MyToolBar1[Obj.GetUIID - 200].SetItemIndex(3);
    Obj.SetAlpha(0);
	end;
end;

procedure TFrm_STT_Shuttle.mMap_WKmoveLogUI_MouseUp(ASender: TObject;
  const Obj: IXUIObj; Flag, X, Y: Integer);
var UIID : integer;
begin
  if Obj.GetParent.GetUIID = 11 then
  begin
    case obj.GetUIID of
      12: Map_ZoomOut;
      13: Map_ZoomIn;
      14: Map_SetLevel(12);
      15: Map_SetLevel(11);
      16: Map_SetLevel(10);
      17: Map_SetLevel(9);
      18: Map_SetLevel(8);
      19: Map_SetLevel(7);
      20: Map_SetLevel(6);
      21: Map_SetLevel(5);
      22: Map_SetLevel(4);
      23: Map_SetLevel(3);
      24: Map_SetLevel(2);
      25: Map_SetLevel(1);
      26: Map_SetLevel(0);
    end;
  end
  else
  begin
    UIID := obj.GetUIID;
    case UIID of
     201 : Map_ZoomOut;
     202 : Map_ZoomIn;
     203 : Map_Rotate();
     204 : HistoryPrev();
     205 : HistoryNext();
     206 : BirdView();
     207 : View3D;
     208 : ViewText();
     209 : CopyToClipboard;
     210 : SaveImage;
     211 : Exit;
     212 : Exit;
     213 : DrawPolygon;
     214 : DrawPolyline;
     215 : RemovePolygon;
     216 : Exit;
     217 : CheckArea;
     218 : CheckDistance;
     219 : DelDistance;
     220 : ObjectModify;
     221 : ShowThemeForm();
    end;
     MyToolBar1[UIID-200].SetItemIndex(1);
  end;
end;

procedure TFrm_STT_Shuttle.mniN1Click(Sender: TObject);
begin
	case cxPageControl1.ActivePageIndex of
	 0 :	btnExcelA0.Click;
	 1 :	btnExcelA1.Click;
	 2 :  btnExcelA2.Click;
	 3 :  btnExcelA3.Click;
	 4 :  btnExcelA4.Click;
	end;
end;

procedure TFrm_STT_Shuttle.N1Click(Sender: TObject);
Var
  RouteMan : IXRouteMan;
  style : IXLayerStyle;
  mPolygon : IXLayerPolygon;
  mCenterLL : TalMapXLib_TLB.IXPoint;

	mGroup : IXPOIGroup;
	mPoi : IXPOIItem;
  mStyle : IXPOIStyle;

  sLng, sLat, sNo : String;
  i, j, iLng, iLat, iNo, iRow : Integer;
begin
 // 경로보기
  try
    cxGrdMC_List.DataController.SetRecordCount(0);
    cxGrdMC_List.BeginUpdate;
    try
      for i := 0 to cxGrdMV_List.DataController.RecordCount - 1 do
      begin
        if cxGrdMV_List.ViewData.Records[i].Selected then
        begin
          iRow := cxGrdMC_List.DataController.AppendRecord;
          for j := 1 to cxGrdMV_List.ColumnCount - 1 do
          begin
            cxGrdMC_List.DataController.Values[iRow, j] := cxGrdMV_List.ViewData.Records[i].Values[j];
          end;
        end;
      end;
    finally
      cxGrdMC_List.endUpdate;
    end;

    cxGrdMC_List.BeginUpdate;
    try
      for i := 0 to cxGrdMC_List.DataController.RecordCount - 1 do
      begin
        cxGrdMC_List.DataController.Values[i, 0] := cxGrdMC_List.DataController.RecordCount - i;
      end;
    finally
      cxGrdMC_List.endUpdate;
    end;

    chk_RView.Enabled := False;
    btnRView.Enabled := False;
    pnlRView.Visible := True;

    pSetPoiLoad;

    layerMan := mCtrlMan.GetLayerMan();
    layerMan.ClearLayer;            //경로 삭제

    mCtrlState := mctrlMan.GetControlState();
    mCenterLL := mCtrlState.GetLLCenter(); // 지도의 중심 좌표

    // Step 1. Make XLayer Style
    style := layerMan.FindStyle(500);
    if (style = Nil) then
    begin
      style := layerMan.NewStyle(500);
      style.SetPen(mUtil.RGBColor(13, 136, 230), 5, 0);//mUtilL.GetConstToValue('PS_SOLID'));
    end;
    // Step 2. Make XLayer PolyLine
    mPolygon := layerMan.NewPolygon(0, -1);
    mPolygon.BeginUpdate();
    try
			iLng := cxGrdMC_List.GetColumnByFieldName('경도').Index;
      iLat := cxGrdMC_List.GetColumnByFieldName('위도').Index;
      iNo  := cxGrdMC_List.GetColumnByFieldName('No').Index;
      for i := 0 to cxGrdMC_List.DataController.RecordCount - 1 do
      begin
        sLng := cxGrdMC_List.ViewData.Records[i].Values[iLng];
        sLat := cxGrdMC_List.ViewData.Records[i].Values[iLat];
        sNo  := cxGrdMC_List.ViewData.Records[i].Values[iNo];

        if ( Trim(sLng) = '' ) Or ( Trim(sLat) = '' ) then Continue;

        if giEndId = -1 then giEndId := StrToInt(sNo);
        WGS84ToBessel(getWGS84(sLng), '0'+ getWGS84(sLat));
        mPolygon.AddPoint(ws_Lon, ws_Lat);
        mPolygon.SetCanClick(1);
        mPolygon.SetCanFocus(1);
        mPolygon.SetClosed(0);   // 0: Line, 1: Polygon
        mPolygon.SetStyle(style);
      end;
      giStrId := StrToInt(sNo);
    finally
      mPolygon.EndUpdate();
    end;

    mGroup := mPoiman.FindGroup(0);
    mPoi := mGroup.FindItem(giStrId);
    mStyle := mPoiman.FindStyle(300);
    if mStyle = nil then
    begin
      mStyle := mPoiman.NewStyle(300);
      mStyle.SetGDIFont(GS_FONTNAME, 0, 9);
      mStyle.SetFontColor(mUtil.RGBColor(0, 0, 0));
      mStyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));
      mStyle.SetBrush(mUtil.RGBColor(255, 0, 0), 0);
      mStyle.SetPen(mUtil.RGBColor(185, 183, 186), 1, 0);
    end;
    mPoi.SetStyle(mStyle);
    mPoiman.SetTopItem(mPoi);

    mPoi := mGroup.FindItem(giEndId);
    mStyle := mPoiman.FindStyle(400);
    if mStyle = nil then
    begin
      mStyle := mPoiman.NewStyle(400);
      mStyle.SetGDIFont(GS_FONTNAME, 0, 9);
      mStyle.SetFontColor(mUtil.RGBColor(0, 0, 0));
      mStyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));
      mStyle.SetBrush(mUtil.RGBColor(0, 0, 255), 0);
      mStyle.SetPen(mUtil.RGBColor(185, 183, 186), 1, 0);
    end;
    mPoi.SetStyle(mStyle);
    mPoiman.SetTopItem(mPoi);
  Except

  end;
end;

procedure TFrm_STT_Shuttle.ObjectModify;
var
  baseman : IXBaseMan;
  layerMan : IXLayerMan;
begin
  mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
  layerman := mCtrlman.GetLayerMan();
  mUtil := mMap_WKmoveLog.GetUtility();

  baseman := layerman.CastToBaseManager();
  if baseman.GetManMode = mUtil.GetConstToValue('TMMAN_MODE_EDIT') then
      baseman.SetManMode(mUtil.GetConstToValue('TMMAN_MODE_NONE'))
  else baseman.SetManMode(mUtil.GetConstToValue('TMMAN_MODE_EDIT'));
end;

procedure TFrm_STT_Shuttle.OnMoveMap(lon, lat: INTEGER);
begin
  mCtrlState := mCtrlMan.GetControlState;
  mCtrlState.SetLLCenter(lon, lat);
end;

procedure TFrm_STT_Shuttle.pMapPlay(idx: Integer);
Var i, iLng, iLat : Integer;
    sLng, sLat : String;
    AView: TcxGridDBTableView;
begin
  AView := GetCurrentView;

  if idx < 0 then
    idx := AView.DataController.RecordCount;

	iLng := AView.GetColumnByFieldName('경도').Index;
	iLat := AView.GetColumnByFieldName('위도').Index;

  gbPlayStop := False;
	for i := idx - 1 downto 0 do
  begin
    if gbPlayStop then Break;
    AView.DataController.FocusedRecordIndex := i;

    if ( AView = cxGrdMV_List ) then
    begin
      layerMan := mCtrlMan.GetLayerMan();
      layerMan.ClearLayer;
    end;

    if ( AView = cxGrdMV_List ) And ( chk_RView.Checked ) then
    begin
    	sLng := AView.DataController.Values[i, iLng];
    	sLat := AView.DataController.Values[i, iLat];
      pSetLineAdd( sLng, sLat );
    end;

    pSetDriverPoint;

    Sleep(150);
    Application.ProcessMessages;
  end;
end;

procedure TFrm_STT_Shuttle.pop_dateA1Popup(Sender: TObject);
begin
	case cxPageControl1.ActivePageIndex of
		0..6 : MenuItem1.visible := False;
	else
		MenuItem1.visible := True;
	end;
end;

procedure TFrm_STT_Shuttle.proc_BrNameSet;
var
	sBrNo, sHdNo : string;
	StrList: TStringList;
begin
	StrList := TStringList.Create;
	try
		if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
		begin
			GetBrTelList(GT_SEL_BRNO.HDNO, StrList);
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := '';
		end else
		begin
			GetBrTelList(GT_SEL_BRNO.BrNo, StrList);
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := GT_SEL_BRNO.BrNo;
		end;
	finally
		StrList.Free;
	end;

  lblSosokNameA0.Caption := GetSosokInfo;
  lblSosokNameA1.Caption := GetSosokInfo;
	lblSosokNameA2.Caption := GetSosokInfo;
  lblSosokNameA3.Caption := GetSosokInfo;
	lblSosokNameA4.Caption := GetSosokInfo;
end;

procedure TFrm_STT_Shuttle.proc_BankLog2(sBrNo: string);
var
  sNode, ls_TxLoad, startDate, endDate, sTemp : string;
  ls_MSG_Err : string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node, lst_Result : IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive, ls_Rcrd : TStringList;
  i, j, ErrCode, iRow : integer;
  bOk : Boolean;
begin
  cxGridA0View1.DataController.SetRecordCount(0);

  ls_rxxml := GTx_UnitXmlLoad('SEL04.XML');
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
    lst_Node.item[0].attributes.getNamedItem('Value').Text := 'BANKACC02';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Key').Text := 'BRCASHS03'; //지사

    if (cxDtStartA1.Text = '') or (cxDtEndA1.Text = '') then
    begin
      cxDtStartA1.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      cxDtEndA1.Date := cxDtStartA1.Date + 1;
    end;
    startDate := StringReplace(DateToStr(cxDtStartA0.Date), '-', '',
      [rfReplaceAll]) + FormatDateTime('HHNNSS', cxTeStartA0.Time);
    endDate := StringReplace(DateToStr(cxDtEndA0.Date), '-', '', [rfReplaceAll])
      + FormatDateTime('HHNNSS', cxTeEndA0.Time);

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
      frm_Main.proc_SocketWork(False);
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 30000) then
      begin
        Application.ProcessMessages;

        ls_rxxml := slReceive[0];
        if not xdom.loadXML(ls_rxxml) then
        begin
          Screen.Cursor := crDefault;
          Exit;
        end;

        ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
        if ('0000' = ls_MSG_Err) then
        begin
          cxGridA0View1.BeginUpdate;

          Frm_Flash.cxPBar1.Properties.Max := slReceive.Count;
          Frm_Flash.cxPBar1.Position := 0;
          try
            for j := 0 to slReceive.Count - 1 do
            begin
              Frm_Flash.cxPBar1.Position := j + 1;
              Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slReceive.Count);
              Application.ProcessMessages;
              ls_rxxml := slReceive.Strings[j];
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
                    bOk := False;
                    if (cb_SearchA0.ItemIndex = 0) And ((ls_Rcrd[4] = '셔틀요금') Or (ls_Rcrd[4] = '셔틀환불')) then bOk := True else
                    if (cb_SearchA0.ItemIndex = 1) And (ls_Rcrd[4] = '셔틀요금') then bOk := True else
                    if (cb_SearchA0.ItemIndex = 2) And (ls_Rcrd[4] = '셔틀환불') then bOk := True;

                    if bOk then
                    begin
                      iRow := cxGridA0View1.DataController.AppendRecord;  // 1 Record 추가
                      cxGridA0View1.DataController.Values[iRow, 0] := IntToStr(iRow + 1);                // No
                      cxGridA0View1.DataController.Values[iRow, 1] := ls_Rcrd[1];                        // 지사명
                      sTemp := ls_Rcrd[2];
                      if sTemp <> '' then
                      begin
                        sTemp := StringReplace(sTemp, '-', '', [rfReplaceAll]);
                        sTemp := StringReplace(sTemp, ':', '', [rfReplaceAll]);
                        sTemp := StringReplace(sTemp, ' ', '', [rfReplaceAll]);
                        sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp,  5, 2) + '-' + Copy(sTemp,  7, 2) + ' ' +
                                 Copy(sTemp, 9, 2) + ':' + Copy(sTemp, 11, 2) + ':' + Copy(sTemp, 13, 2);
                      end;
                      cxGridA0View1.DataController.Values[iRow, 2] := sTemp;                             // 입력일
                      cxGridA0View1.DataController.Values[iRow, 3] := ls_Rcrd[3];                        // 입력자
                      cxGridA0View1.DataController.Values[iRow, 4] := ls_Rcrd[4];                        // 타입
                      cxGridA0View1.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[5], 0);        // 금액
  //                    cxGridA0View1.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[6], 0);        // 잔액
                      cxGridA0View1.DataController.Values[iRow, 6] := StringReplace(ls_Rcrd[7], #$A, '/', [rfReplaceAll]);; // 메모
  //                    cxGridA0View1.DataController.Values[iRow, 8] := ls_Rcrd[8];                        // 접수번호
                    end;
                  end;
                finally
                  ls_Rcrd.Free;
                end;
					  	end else
					  	begin
					  		GMessagebox('검색된 내용이 없습니다.', CDMSE);
					  	end;
            end;
          finally
            cxGridA0View1.EndUpdate;
            if cxGridA0View1.DataController.RecordCount = 0 then
            begin
  			  		GMessagebox('검색된 내용이 없습니다.', CDMSE);
            end;
          end;
        end else
        begin
          GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
          Screen.Cursor := crDefault;
          Exit;
        end;
      end;
    finally
      frm_Main.proc_SocketWork(True);
      FreeAndNil(slReceive);
      Screen.Cursor := crDefault;
      Frm_Flash.Hide;
    end;
  finally
    xdom := Nil;
  end;
end;

end.


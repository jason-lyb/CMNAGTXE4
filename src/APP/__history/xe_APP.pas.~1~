unit xe_APP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MSXML2_TLB, cxGraphics, cxControls, cxLookAndFeels, SHDocVw,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxDropDownEdit, Vcl.ExtCtrls, cxMaskEdit, ActiveX, IdFTP, IdFTPCommon, Jpeg, IdFTPList, PNGImage, System.StrUtils, Vcl.Imaging.GIFImg,
  cxSpinEdit, cxCurrencyEdit, cxListBox, cxCheckBox, cxTextEdit, cxRadioGroup,
  cxButtons, cxLabel, AdvScrollBox, cxGroupBox, dxSkinsCore,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxCalendar, cxTimeEdit,
  cxButtonEdit, Vcl.OleCtrls, cxGridLevel, cxGridBandedTableView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxSkinOffice2010Blue, dxDateRanges, cxCustomListBox, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark,
  dxSkinOffice2007Silver, Vcl.ExtDlgs, cxImage, WebImage;

type
  TFrm_APP = class(TForm)
    sbPanel1: TAdvScrollBox;
    bvl1: TBevel;
    cxLabel45: TcxLabel;
    cxLabel30: TcxLabel;
    cxLabel1: TcxLabel;
    lblSosokNameA1: TcxLabel;
    btnModifyA1: TcxButton;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel14: TcxLabel;
    pnl2: TPanel;
    rg_charge_ser1: TcxRadioButton;
    rg_charge_ser2: TcxRadioButton;
    rg_charge_ser3: TcxRadioButton;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel24: TcxLabel;
    Edt_AppTitle: TcxTextEdit;
    cxLabel25: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel96: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel32: TcxLabel;
    cxLabel41: TcxLabel;
    cxLabel43: TcxLabel;
    cxLabel44: TcxLabel;
    Cb_AppChk1: TcxCheckBox;
    pnl4: TPanel;
    rg_charge_ser4: TcxRadioButton;
    rg_charge_ser5: TcxRadioButton;
    pnl5: TPanel;
    rg_charge_ser6: TcxRadioButton;
    rg_charge_ser7: TcxRadioButton;
    cxHdNo: TcxTextEdit;
    cxBrNo: TcxTextEdit;
    Pnl_Card: TPanel;
    lb_map: TcxListBox;
    btn3: TcxButton;
    lb_sel_map: TcxListBox;
    btn4: TcxButton;
    btn5: TcxButton;
    cxLabel21: TcxLabel;
    cxLabel26: TcxLabel;
    Pnl_Charge: TPanel;
    lbl2: TLabel;
    cxLabel10: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel15: TcxLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Se_Key_Number1: TcxSpinEdit;
    Pnl_Cid: TPanel;
    cxLabel38: TcxLabel;
    cxLabel35: TcxLabel;
    cxLabel33: TcxLabel;
    OF_Edt1: TcxTextEdit;
    cxLabel34: TcxLabel;
    CE_Edt1: TcxTextEdit;
    cxLabel36: TcxLabel;
    cxLabel37: TcxLabel;
    NE_Edt1: TcxTextEdit;
		OF_CidChk: TcxCheckBox;
    CE_CidChk: TcxCheckBox;
    NE_CidChk: TcxCheckBox;
		cxLabel48: TcxLabel;
    OF_Edt2: TcxTextEdit;
    cxLabel49: TcxLabel;
    CE_Edt2: TcxTextEdit;
    cxLabel50: TcxLabel;
    NE_Edt2: TcxTextEdit;
    cxLabel2: TcxLabel;
    LB_CardList: TcxListBox;
    Pnl_Mile: TPanel;
    cxLabel22: TcxLabel;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxLabel23: TcxLabel;
    cxLabel28: TcxLabel;
    pnl6: TPanel;
    rg_charge_ser8: TcxRadioButton;
    rg_charge_ser9: TcxRadioButton;
    pnl7: TPanel;
    img2: TImage;
    Cb_CidChk4: TcxCheckBox;
    cxLabel40: TcxLabel;
    rg_charge_ser10: TcxRadioButton;
    rg_charge_ser11: TcxRadioButton;
    Cb_AppChk2: TcxCheckBox;
    btnSearchA1: TcxButton;
    cbKeynumber01: TcxComboBox;
    cxLabel51: TcxLabel;
    OF_WifiChk: TcxCheckBox;
    OF_AndroidChk: TcxCheckBox;
    OF_IphoneChk: TcxCheckBox;
    OF_EtcChk: TcxCheckBox;
    cxLabel52: TcxLabel;
    OF_CustChk1: TcxCheckBox;
    OF_CustChk2: TcxCheckBox;
    OF_CustChk3: TcxCheckBox;
    OF_CustChk4: TcxCheckBox;
    cxLabel54: TcxLabel;
    OF_CustLevChk1: TcxCheckBox;
    OF_CustLevChk2: TcxCheckBox;
    OF_CustLevChk3: TcxCheckBox;
    OF_CustLevChk4: TcxCheckBox;
    OF_CustLevChk5: TcxCheckBox;
    OF_CustLevChk6: TcxCheckBox;
    OF_CustLevChk7: TcxCheckBox;
    OF_Edt_Cnt: TcxCurrencyEdit;
    cxLabel55: TcxLabel;
    CE_WifiChk: TcxCheckBox;
    CE_AndroidChk: TcxCheckBox;
    CE_IphoneChk: TcxCheckBox;
    CE_EtcChk: TcxCheckBox;
    cxLabel56: TcxLabel;
    CE_CustChk1: TcxCheckBox;
    CE_CustChk2: TcxCheckBox;
    CE_CustChk3: TcxCheckBox;
    CE_CustChk4: TcxCheckBox;
    cxLabel57: TcxLabel;
    CE_CustLevChk1: TcxCheckBox;
    CE_CustLevChk2: TcxCheckBox;
    CE_CustLevChk3: TcxCheckBox;
    CE_CustLevChk4: TcxCheckBox;
    CE_CustLevChk5: TcxCheckBox;
    CE_CustLevChk6: TcxCheckBox;
    CE_CustLevChk7: TcxCheckBox;
    CE_Edt_Cnt: TcxCurrencyEdit;
    cxLabel58: TcxLabel;
    NE_WifiChk: TcxCheckBox;
    NE_AndroidChk: TcxCheckBox;
    NE_IphoneChk: TcxCheckBox;
    NE_EtcChk: TcxCheckBox;
    cxLabel59: TcxLabel;
    NE_CustChk1: TcxCheckBox;
    NE_CustChk2: TcxCheckBox;
    NE_CustChk3: TcxCheckBox;
    NE_CustChk4: TcxCheckBox;
    cxLabel60: TcxLabel;
    NE_CustLevChk1: TcxCheckBox;
    NE_CustLevChk2: TcxCheckBox;
    NE_CustLevChk3: TcxCheckBox;
    NE_CustLevChk4: TcxCheckBox;
    NE_CustLevChk5: TcxCheckBox;
    NE_CustLevChk6: TcxCheckBox;
    NE_CustLevChk7: TcxCheckBox;
    NE_Edt_Cnt: TcxCurrencyEdit;
    cxLabel39: TcxLabel;
    cxLabel61: TcxLabel;
    cxLabel62: TcxLabel;
    cxLabel64: TcxLabel;
    cxLabel65: TcxLabel;
    cxLabel66: TcxLabel;
    OF_CustChk5: TcxCheckBox;
    CE_CustChk5: TcxCheckBox;
    NE_CustChk5: TcxCheckBox;
    edt1: TEdit;
    edt2: TEdit;
    pnl8: TPanel;
    OF_OneDaychk: TcxRadioButton;
    OF_DAY: TcxCurrencyEdit;
    OF_ALLDaychk: TcxRadioButton;
    pnl9: TPanel;
    CE_OneDaychk: TcxRadioButton;
    CE_DAY: TcxCurrencyEdit;
    CE_ALLDaychk: TcxRadioButton;
    pnl10: TPanel;
    NE_OneDaychk: TcxRadioButton;
    NE_ALLDaychk: TcxRadioButton;
    NE_DAY: TcxCurrencyEdit;
    OF_Install_No_Send: TcxCheckBox;
    CE_Install_No_Send: TcxCheckBox;
    NE_Install_No_Send: TcxCheckBox;
    PnlMainA1: TPanel;
    PnlHelp: TcxGroupBox;
    cxButton1: TcxButton;
    cxLabel29: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel42: TcxLabel;
    Panel1: TPanel;
    rg_Chu_ser1: TcxRadioButton;
    rg_Chu_ser2: TcxRadioButton;
    rg_Chu_ser3: TcxRadioButton;
    Pnl_ChMile: TPanel;
    cxCurrencyEdit5: TcxCurrencyEdit;
    cxLabel53: TcxLabel;
    cxChkAppChu: TcxCheckBox;
    rg_charge_Aser1: TcxRadioButton;
    rg_charge_Aser2: TcxRadioButton;
    rg_charge_Aser3: TcxRadioButton;
		cxCheckBox1: TcxCheckBox;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxLabel46: TcxLabel;
    cxCheckBox2: TcxCheckBox;
    rg_Chu_Aser1: TcxRadioButton;
    rg_Chu_Aser2: TcxRadioButton;
    rg_Chu_Aser3: TcxRadioButton;
    cxLabel47: TcxLabel;
    Panel2: TPanel;
    rg_charge_Cser1: TcxRadioButton;
    rg_charge_Cser2: TcxRadioButton;
    rg_charge_Cser3: TcxRadioButton;
    cxCurrencyEdit6: TcxCurrencyEdit;
    cxLabel71: TcxLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    PnlMainA2: TPanel;
    Shape1: TShape;
    cxGroupBox1: TcxGroupBox;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Label4: TLabel;
    cxLabel72: TcxLabel;
    cxLabel73: TcxLabel;
    btnSearchA2: TcxButton;
    btnExcelA2: TcxButton;
    cbKeynumberA2: TcxComboBox;
    lblSosokNameA2: TcxLabel;
    cxLabel74: TcxLabel;
    btnDateA2: TcxButton;
    cxDtEndA2: TcxDateEdit;
    cxDtStartA2: TcxDateEdit;
    btnInsertA2: TcxButton;
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
    cxGongList: TcxGridBandedTableView;
    cxGongListColumn1: TcxGridBandedColumn;
    cxGongListColumn2: TcxGridBandedColumn;
    cxGongListColumn3: TcxGridBandedColumn;
    cxGongListColumn4: TcxGridBandedColumn;
    cxGongListColumn5: TcxGridBandedColumn;
    cxGongListColumn10: TcxGridBandedColumn;
    cxGongListColumn13: TcxGridBandedColumn;
    cxGongListColumn6: TcxGridBandedColumn;
    cxGongListColumn7: TcxGridBandedColumn;
    cxGongListColumn8: TcxGridBandedColumn;
    cxGongListColumn9: TcxGridBandedColumn;
    cxGongListColumn19: TcxGridBandedColumn;
    cxGongListColumn11: TcxGridBandedColumn;
    cxGongListColumn12: TcxGridBandedColumn;
    cxGongListColumn14: TcxGridBandedColumn;
    cxGongListColumn15: TcxGridBandedColumn;
    cxGongListColumn17: TcxGridBandedColumn;
    cxGongListColumn16: TcxGridBandedColumn;
    cxGongListColumn18: TcxGridBandedColumn;
    cxGridLevel1: TcxGridLevel;
    Pnl_WebA2: TPanel;
    cxGroupBox2: TcxGroupBox;
    Shape2: TShape;
    lbl_WebTitleA2: TcxLabel;
    wbA2: TWebBrowser;
    btnHelpCloseA2: TcxButton;
    pm_Date: TPopupMenu;
    miOneWeek: TMenuItem;
    miTwoWeek: TMenuItem;
    miOneMonth: TMenuItem;
    miTwoMonth: TMenuItem;
    cxHdNo1: TcxTextEdit;
    cxBrNo1: TcxTextEdit;
    PnlMainA3: TPanel;
    Shape7: TShape;
    cxGroupBox3: TcxGroupBox;
    Shape6: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Label6: TLabel;
    cxLabel75: TcxLabel;
    cxLabel76: TcxLabel;
    btnSearchA3: TcxButton;
    btnExcelA3: TcxButton;
    cbKeynumberA3: TcxComboBox;
    lblSosokNameA3: TcxLabel;
    cxLabel77: TcxLabel;
    btnDateA3: TcxButton;
    cxDtEndA3: TcxDateEdit;
    cxDtStartA3: TcxDateEdit;
    cxBrNo2: TcxTextEdit;
    cxHdNo2: TcxTextEdit;
    cxGridA3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
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
    cxPushList: TcxGridBandedTableView;
    cxGridBandedColumn1: TcxGridBandedColumn;
    cxGridBandedColumn2: TcxGridBandedColumn;
    cxGridBandedColumn3: TcxGridBandedColumn;
    cxGridBandedColumn4: TcxGridBandedColumn;
    cxGridBandedColumn5: TcxGridBandedColumn;
    cxGridBandedColumn6: TcxGridBandedColumn;
    cxPushListColumn1: TcxGridBandedColumn;
    cxPushListColumn2: TcxGridBandedColumn;
    cxGridBandedColumn7: TcxGridBandedColumn;
    cxGridBandedColumn8: TcxGridBandedColumn;
    cxGridBandedColumn9: TcxGridBandedColumn;
    cxGridBandedColumn10: TcxGridBandedColumn;
    cxPushListColumn3: TcxGridBandedColumn;
    cxPushListColumn4: TcxGridBandedColumn;
    cxPushListColumn5: TcxGridBandedColumn;
    cxGridLevel2: TcxGridLevel;
    Pnl_WebA3: TPanel;
    cxGroupBox4: TcxGroupBox;
    Shape10: TShape;
    lbl_WebTitleA3: TcxLabel;
    wbA3: TWebBrowser;
    btnHelpCloseA3: TcxButton;
    PnlMainA4: TPanel;
    Shape11: TShape;
    cxGroupBox5: TcxGroupBox;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Label8: TLabel;
    cxLabel78: TcxLabel;
    cxLabel79: TcxLabel;
    btnSearchA4: TcxButton;
    btnExcelA4: TcxButton;
    cbKeynumberA4: TcxComboBox;
    cxBrNo3: TcxTextEdit;
    cxHdNo3: TcxTextEdit;
    cbbA4: TcxTextEdit;
    lblSosokNameA4: TcxLabel;
    cxLabel80: TcxLabel;
    cxLabel81: TcxLabel;
    btnDateA4: TcxButton;
    cxDtEndA4: TcxDateEdit;
    cxDtStartA4: TcxDateEdit;
    cxGridA4: TcxGrid;
    cxViewNoticeList1: TcxGridDBTableView;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
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
    CID_SMS_HISTORY_List: TcxGridBandedTableView;
    cxGridBandedColumn11: TcxGridBandedColumn;
    cxGridBandedColumn12: TcxGridBandedColumn;
    cxGridBandedColumn13: TcxGridBandedColumn;
    cxnGridOrderSTviewColumn: TcxGridBandedColumn;
    cxGridBandedColumn14: TcxGridBandedColumn;
    cxGridBandedColumn15: TcxGridBandedColumn;
    cxGridBandedColumn16: TcxGridBandedColumn;
    cxGridBandedColumn17: TcxGridBandedColumn;
    cxGridLevel3: TcxGridLevel;
    PnlMainA5: TPanel;
    Shape16: TShape;
    cxGroupBox6: TcxGroupBox;
    Shape17: TShape;
    Shape18: TShape;
    Shape19: TShape;
    Shape20: TShape;
    Label9: TLabel;
    cxLabel85: TcxLabel;
    cxLabel82: TcxLabel;
    btnSearchA5: TcxButton;
    btnExcelA5: TcxButton;
    cbKeynumberA5: TcxComboBox;
    cxBrNo4: TcxTextEdit;
    cxHdNo4: TcxTextEdit;
    cbbA5: TcxTextEdit;
    lblSosokNameA5: TcxLabel;
    cxLabel83: TcxLabel;
    cxLabel84: TcxLabel;
    btnDateA5: TcxButton;
    cxDtEndA5: TcxDateEdit;
    cxDtStartA5: TcxDateEdit;
    cxGridA5: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
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
    cxGridDBColumn71: TcxGridDBColumn;
    cxGridDBColumn72: TcxGridDBColumn;
    CID_PUSH_HISTORY_List: TcxGridBandedTableView;
    cxGridBandedColumn18: TcxGridBandedColumn;
    cxGridBandedColumn19: TcxGridBandedColumn;
    cxGridBandedColumn20: TcxGridBandedColumn;
    cxGridBandedColumn27: TcxGridBandedColumn;
    cxGridBandedColumn21: TcxGridBandedColumn;
    cxGridBandedColumn25: TcxGridBandedColumn;
    cxGridBandedColumn28: TcxGridBandedColumn;
    cxGridBandedColumn22: TcxGridBandedColumn;
    cxGridBandedColumn23: TcxGridBandedColumn;
    cxGridBandedColumn24: TcxGridBandedColumn;
    cxGridBandedColumn26: TcxGridBandedColumn;
    cxGridBandedColumn29: TcxGridBandedColumn;
    cxGridLevel4: TcxGridLevel;
    PnlMainA6: TPanel;
    Shape21: TShape;
    cxGroupBox7: TcxGroupBox;
    Shape22: TShape;
    Shape23: TShape;
    Shape24: TShape;
    Shape25: TShape;
    cxLabel89: TcxLabel;
    cxLabel86: TcxLabel;
    btnSearchA6: TcxButton;
    btnExcelA6: TcxButton;
    cbKeynumberA6: TcxComboBox;
    cxBrNo5: TcxTextEdit;
    cxHdNo5: TcxTextEdit;
    cxSEYearA6: TcxSpinEdit;
    cxSEMonthA6: TcxSpinEdit;
    edtBranchSMSCash: TcxTextEdit;
    lblSosokNameA6: TcxLabel;
    cxLabel87: TcxLabel;
    cxLabel88: TcxLabel;
    cxGridA6: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn73: TcxGridDBColumn;
    cxGridDBColumn74: TcxGridDBColumn;
    cxGridDBColumn75: TcxGridDBColumn;
    cxGridDBColumn76: TcxGridDBColumn;
    cxGridDBColumn77: TcxGridDBColumn;
    cxGridDBColumn78: TcxGridDBColumn;
    cxGridDBColumn79: TcxGridDBColumn;
    cxGridDBColumn80: TcxGridDBColumn;
    cxGridDBColumn81: TcxGridDBColumn;
    cxGridDBColumn82: TcxGridDBColumn;
    cxGridDBColumn83: TcxGridDBColumn;
    cxGridDBColumn84: TcxGridDBColumn;
    cxGridDBColumn85: TcxGridDBColumn;
    cxGridDBColumn86: TcxGridDBColumn;
    cxGridDBColumn87: TcxGridDBColumn;
    cxGridDBColumn88: TcxGridDBColumn;
    cxGridDBColumn89: TcxGridDBColumn;
    cxGridDBColumn90: TcxGridDBColumn;
    CID_SMS_SENT_STAT_List: TcxGridBandedTableView;
    cxGridBandedColumn30: TcxGridBandedColumn;
    cxGridBandedColumn31: TcxGridBandedColumn;
    cxGridBandedColumn32: TcxGridBandedColumn;
    cxGridBandedColumn33: TcxGridBandedColumn;
    cxGridBandedColumn34: TcxGridBandedColumn;
    cxGridBandedColumn35: TcxGridBandedColumn;
    cxGridBandedColumn36: TcxGridBandedColumn;
    cxGridBandedColumn37: TcxGridBandedColumn;
    cxGridBandedColumn38: TcxGridBandedColumn;
    cxGridBandedColumn39: TcxGridBandedColumn;
    cxGridBandedColumn40: TcxGridBandedColumn;
    cxGridLevel5: TcxGridLevel;
    PnlMainA7: TPanel;
    Shape26: TShape;
    cxGroupBox8: TcxGroupBox;
    Shape27: TShape;
    Shape28: TShape;
    Shape29: TShape;
    Shape30: TShape;
    cxLabel93: TcxLabel;
    cxLabel90: TcxLabel;
    btnSearchA7: TcxButton;
    btnExcelA7: TcxButton;
    cbKeynumberA7: TcxComboBox;
    cxBrNo6: TcxTextEdit;
    cxHdNo6: TcxTextEdit;
    cxSEYearA7: TcxSpinEdit;
    cxSEMonthA7: TcxSpinEdit;
    edtBranchSMSCash2: TcxTextEdit;
    lblSosokNameA7: TcxLabel;
    cxLabel91: TcxLabel;
    cxLabel92: TcxLabel;
    cxGridA7: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn91: TcxGridDBColumn;
    cxGridDBColumn92: TcxGridDBColumn;
    cxGridDBColumn93: TcxGridDBColumn;
    cxGridDBColumn94: TcxGridDBColumn;
    cxGridDBColumn95: TcxGridDBColumn;
    cxGridDBColumn96: TcxGridDBColumn;
    cxGridDBColumn97: TcxGridDBColumn;
    cxGridDBColumn98: TcxGridDBColumn;
    cxGridDBColumn99: TcxGridDBColumn;
    cxGridDBColumn100: TcxGridDBColumn;
    cxGridDBColumn101: TcxGridDBColumn;
    cxGridDBColumn102: TcxGridDBColumn;
    cxGridDBColumn103: TcxGridDBColumn;
    cxGridDBColumn104: TcxGridDBColumn;
    cxGridDBColumn105: TcxGridDBColumn;
    cxGridDBColumn106: TcxGridDBColumn;
    cxGridDBColumn107: TcxGridDBColumn;
    cxGridDBColumn108: TcxGridDBColumn;
    CID_PUSH_SENT_STAT_List: TcxGridBandedTableView;
    cxGridBandedColumn41: TcxGridBandedColumn;
    cxGridBandedColumn42: TcxGridBandedColumn;
    cxGridBandedColumn43: TcxGridBandedColumn;
    cxGridBandedColumn44: TcxGridBandedColumn;
    cxGridBandedColumn45: TcxGridBandedColumn;
    cxGridBandedColumn46: TcxGridBandedColumn;
    cxGridBandedColumn47: TcxGridBandedColumn;
    cxGridBandedColumn48: TcxGridBandedColumn;
    cxGridBandedColumn49: TcxGridBandedColumn;
    cxGridBandedColumn50: TcxGridBandedColumn;
    cxGridBandedColumn51: TcxGridBandedColumn;
    cxGridBandedColumn52: TcxGridBandedColumn;
    cxGridBandedColumn53: TcxGridBandedColumn;
    cxGridBandedColumn54: TcxGridBandedColumn;
    cxGridBandedColumn55: TcxGridBandedColumn;
    cxGridBandedColumn56: TcxGridBandedColumn;
    cxGridBandedColumn57: TcxGridBandedColumn;
    cxGridBandedColumn58: TcxGridBandedColumn;
    cxGridBandedColumn59: TcxGridBandedColumn;
    cxGridLevel6: TcxGridLevel;
		cxCheckBox3: TcxCheckBox;
    Panel3: TPanel;
    cxCurrencyEdit7: TcxCurrencyEdit;
    cxLabel94: TcxLabel;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxCheckBox4: TcxCheckBox;
    cxCurrencyEdit8: TcxCurrencyEdit;
    cxLabel95: TcxLabel;
    Label7: TcxLabel;
    Label5: TcxLabel;
    btnGetList: TcxButton;
    Label1: TcxLabel;
    Label3: TcxLabel;
    lbl1: TcxLabel;
    lbl4: TcxLabel;
    cxLabel101: TcxLabel;
    Panel4: TPanel;
    rg_Chu_Bser1: TcxRadioButton;
    rg_Chu_Bser2: TcxRadioButton;
    rg_Chu_Bser3: TcxRadioButton;
    cxCurrencyEdit9: TcxCurrencyEdit;
    cxLabel97: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel63: TcxLabel;
    cxLabel68: TcxLabel;
    cxLabel70: TcxLabel;
    cxLabel98: TcxLabel;
    cxLabel99: TcxLabel;
    cxLabel102: TcxLabel;
    cxLabel103: TcxLabel;
    cxLabel67: TcxLabel;
    cxLabel100: TcxLabel;
    cxLabel69: TcxLabel;
    Label10: TcxLabel;
    Label2: TcxLabel;
    cxLabel104: TcxLabel;
    cxLabel105: TcxLabel;
    cxLabel106: TcxLabel;
    cxLabel107: TcxLabel;
    chkBannerUseYn: TcxCheckBox;
    LblImage1: TcxLabel;
    edtFile1: TcxTextEdit;
    BtnImageD: TcxButton;
    BtnImageDelD: TcxButton;
    edtLink1: TcxTextEdit;
    cxLabel109: TcxLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    cxLabel108: TcxLabel;
    pnlWebBanner: TPanel;
    WebBanner: TWebImage;
    cxLabel110: TcxLabel;
		procedure btn4Click(Sender: TObject);
		procedure btnSearchA1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rg_charge_ser6Click(Sender: TObject);
    procedure rg_charge_ser4Click(Sender: TObject);
    procedure btnModifyA1Click(Sender: TObject);
    procedure rg_charge_ser1Click(Sender: TObject);
    procedure cbKeynumber01Click(Sender: TObject);
    procedure rg_charge_ser8Click(Sender: TObject);
    procedure FlatButton1Click(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure btn6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure img1Click(Sender: TObject);
    procedure CE_CidChkClick(Sender: TObject);
    procedure NE_CidChkClick(Sender: TObject);
		procedure OF_CidChkClick(Sender: TObject);
    procedure rg_charge_ser11Click(Sender: TObject);
    procedure rg_charge_ser10Click(Sender: TObject);
    procedure OF_OneDaychkClick(Sender: TObject);
    procedure CE_OneDaychkClick(Sender: TObject);
    procedure NE_OneDaychkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure rg_Chu_ser1Click(Sender: TObject);
		procedure rg_charge_Aser1Click(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxCheckBox2Click(Sender: TObject);
    procedure rg_Chu_Aser1Click(Sender: TObject);
    procedure rg_charge_Cser1Click(Sender: TObject);
    procedure miOneWeekClick(Sender: TObject);
    procedure miTwoWeekClick(Sender: TObject);
    procedure miOneMonthClick(Sender: TObject);
    procedure miTwoMonthClick(Sender: TObject);
    procedure btnInsertA2Click(Sender: TObject);
    procedure btnExcelA2Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure btnSearchA2Click(Sender: TObject);
    procedure cxGongListColumn8PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGongListColumn9PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGongListStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure cxGongListColumn15PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGongListColumn19PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGongListCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnHelpCloseA2Click(Sender: TObject);
    procedure cxGroupBox2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbKeynumberA2PropertiesChange(Sender: TObject);
    procedure btnExcelA3Click(Sender: TObject);
    procedure btnSearchA3Click(Sender: TObject);
    procedure cbKeynumberA3PropertiesChange(Sender: TObject);
    procedure cxPushListCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxPushListStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure btnHelpCloseA3Click(Sender: TObject);
    procedure btnExcelA4Click(Sender: TObject);
    procedure btnSearchA4Click(Sender: TObject);
    procedure btnExcelA5Click(Sender: TObject);
    procedure btnSearchA5Click(Sender: TObject);
    procedure btnSearchA6Click(Sender: TObject);
    procedure btnExcelA6Click(Sender: TObject);
    procedure CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems2GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems3GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems4GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems5GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems6GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems7GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems8GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure btnSearchA7Click(Sender: TObject);
    procedure CID_PUSH_SENT_STAT_ListBands1HeaderClick(Sender: TObject);
    procedure btnExcelA7Click(Sender: TObject);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems5GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems6GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems2GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems3GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems4GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems7GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems8GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems9GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems10GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems11GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems12GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems13GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems14GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems15GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems16GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxCheckBox3Click(Sender: TObject);
    procedure cxRadioButton1Click(Sender: TObject);
    procedure btnGetListClick(Sender: TObject);
    procedure Edt_AppTitleKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rg_Chu_Bser1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnImageDClick(Sender: TObject);
    procedure BtnImageDelDClick(Sender: TObject);
  private
		{ Private declarations }
		iPUSHSum1, iPUSHSum2, iPUSHSum3, iPUSHSum4, iPUSHSum5, iPUSHSum6, iPUSHSum7, iPUSHSum8, iPUSHSum9, iPUSHSum10 : integer;
		iPUSHSum11, iPUSHSum12, iPUSHSum13, iPUSHSum14, iPUSHSum15, iPUSHCNTSum, IPUSHAMTSum  : integer;
		ismsSum1, ismsSum2, ismsSum3, ismsSum4, ismsSum5, ismsSum6, ismsSum7, ismsSum8, ismsSum9 : integer;
		TBrno : string;
		UseAPPKeyNumberCHK : boolean;
		procedure proc_init_AppSetup;
		procedure proc_init;
		procedure proc_AppPushSet;
		function getKeyNumberCustUseYn( sBrNo, sKeyNum : string ) : Boolean;
		procedure GetAPPBrTelList(ABrNo: string; var AList: TStringList);
		procedure proc_init_enable(AABLE : Boolean);
    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure proc_GongjiList;
    function proc_PushReservChk(sGongNo: String): String;
    procedure WBloadHtml(WebBrowser: TWebBrowser; HtmlCode: string);
    procedure proc_PushList(sGongNo: string);
    procedure proc_CID_SMS_SENT_HISTORY;
    procedure proc_CID_PUSH_SENT_HISTORY;
    procedure proc_CID_SMS_SENT_STAT;
    procedure proc_CID_PUSH_SENT_STAT;
    function AccUpLoadFile(sFN1, sFN2, sFN3, sFN4, sFN5, sFTPPath, sGubun: string): Boolean;
    procedure proc_save_image(sBaseName: AnsiString; sFileName: string);
	public
    { Public declarations }
		procedure proc_BrNameSet;
  end;

var
  Frm_APP: TFrm_APP;

implementation

{$R *.dfm}

uses Main, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_system, xe_Dm, xe_APP01, xe_JON51, xe_SMS01,
  xe_SearchWord, xe_Flash;

procedure TFrm_APP.btn4Click(Sender: TObject);
var
  CurIndex, i : Integer;
begin
	case TButton(Sender).Tag of
    1:
      begin
        CurIndex := lb_sel_map.ItemIndex;
				if CurIndex < 0 then
          Exit;

        lb_map.Items.Insert(lb_map.ItemIndex+1, lb_sel_map.Items.Strings[CurIndex]);
        lb_sel_map.Items.Delete(CurIndex);
        if lb_sel_map.Count >= CurIndex - 1 then
          lb_sel_map.ItemIndex := CurIndex;
      end;
    2:
      begin
				CurIndex := lb_map.ItemIndex;
        if CurIndex < 0 then
          Exit;
        lb_sel_map.Items.Insert(lb_sel_map.ItemIndex+1, lb_map.Items.Strings[CurIndex]);
        lb_map.Items.Delete(CurIndex);
        if CurIndex >= lb_map.Items.Count then
          lb_map.ItemIndex := lb_map.Items.Count - 1
        else
          lb_map.ItemIndex := CurIndex;
      end;
    3:
      begin
        i := 0;
        while i < lb_map.Items.Count do
        begin
          if lb_sel_map.Items.IndexOf(lb_map.Items.Strings[i]) < 0 then
          begin
            lb_sel_map.Items.Add(lb_map.Items.Strings[i]);
            lb_map.Items.Delete(i);
          end else Inc(i);
        end;
				lb_sel_map.ItemIndex := 0;
      end;
  end;
end;

function TFrm_APP.getKeyNumberCustUseYn( sBrNo, sKeyNum : string ) : Boolean;
var i : Integer;
		sTmp : TStringList;
begin
	sTmp := TStringList.Create;
	Result := False;
  try
		for i := 0 to scb_CustAPPUseYn.Count - 1 do
    begin
			GetTextSeperationEx('|', scb_CustAPPUseYn.Strings[i], sTmp);
			if ( sTmp[0] = sBrNo ) And ( sTmp[1] = sKeyNum ) then
			begin
				if sTmp[2] = 'y' then Result := True else
				if sTmp[2] = 'n' then Result := False;
				Break;
			end;
		end;
	finally
		sTmp.Free;
	end;
end;

procedure TFrm_APP.proc_BrNameSet;
var
  sName, sBrNo, sHdNo, sBrName: string;
	StrList: TStringList;
	iIdx : integer;
begin
	StrList := TStringList.Create;
  try
		if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
		begin
			GetAPPBrTelList(GT_SEL_BRNO.HDNO, StrList);
			cbKeynumber01.Properties.Items.Assign(StrList);
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := TBrno;
		end	else
		begin
			GetAPPBrTelList(GT_SEL_BRNO.BrNo, StrList);
			cbKeynumber01.Properties.Items.Assign(StrList);
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := GT_SEL_BRNO.BrNo;
    end;
	finally
		StrList.Free;
	end;

	sName := GetSosokInfo;

	cxHdNo.Text := sHdNo;
	cxBrNo.Text := sBrNo;
	cxHdNo1.Text := sHdNo;
	cxBrNo1.Text := sBrNo;
	cxHdNo2.Text := sHdNo;
	cxBrNo2.Text := sBrNo;
	cxHdNo3.Text := sHdNo;
	cxBrNo3.Text := sBrNo;
	cxHdNo4.Text := sHdNo;
	cxBrNo4.Text := sBrNo;
	cxHdNo5.Text := sHdNo;
	cxBrNo5.Text := sBrNo;
	cxHdNo6.Text := sHdNo;
	cxBrNo6.Text := sBrNo;

	if cbKeynumber01.Properties.Items.Count > 0 then
		UseAPPKeyNumberCHK := True
	else
	begin
		UseAPPKeyNumberCHK := False;
		cbKeynumber01.Properties.Items.Insert(0, '고객어플을 신청하셔야 해당 메뉴를 이용하실 수 있습니다.');
	end;

	cbKeynumberA2.Properties.Items.Assign(cbKeynumber01.Properties.Items);
	cbKeynumberA3.Properties.Items.Assign(cbKeynumber01.Properties.Items);
	cbKeynumberA4.Properties.Items.Assign(cbKeynumber01.Properties.Items);
	cbKeynumberA5.Properties.Items.Assign(cbKeynumber01.Properties.Items);
	cbKeynumberA6.Properties.Items.Assign(cbKeynumber01.Properties.Items);
	cbKeynumberA7.Properties.Items.Assign(cbKeynumber01.Properties.Items);

	if (cbKeynumber01.Properties.Items.IndexOf('고객어플을 신청하셔야 해당 메뉴를 이용하실 수 있습니다.') < 0) then
	begin
		cbKeynumber01.ItemIndex := 0;
		if GT_USERIF.LV = '60' then
		begin
			if GT_SEL_BRNO.GUBUN <> '1' then
			begin
				sHdNo := GT_SEL_BRNO.HDNO;
				if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
					sBrNo := scb_DsBranchCode.Strings[scb_KeyNumber.IndexOf(cbKeynumber01.Text)]
				else
					sBrNo := scb_DsBranchCode.Strings[cbKeynumber01.ItemIndex];

				iIdx := scb_BranchCode.IndexOf(sBrNo);
				if iIdx >= 0 then
					sBrName := scb_BranchName[iIdx]
				else
					sBrName := '';
				sName := '[' + sHdNo + '] - [' + sBrNo + ']' + sBrName;
			end else
			begin
				sHdNo := GT_SEL_BRNO.HDNO;
				sBrNo := GT_SEL_BRNO.BrNo;
				iIdx := scb_BranchCode.IndexOf(sBrNo);
				if iIdx >= 0 then
					sBrName := scb_BranchName[iIdx]
				else
					sBrName := '';
				sName := '[' + sHdNo + '] - [' + sBrNo + ']' + sBrName;
			end;
		end	else
		begin
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := GT_SEL_BRNO.BrNo;
			iIdx := scb_BranchCode.IndexOf(sBrNo);
			if iIdx >= 0 then
				sBrName := scb_BranchName[iIdx]
			else
				sBrName := '';
			sName := '[' + sHdNo + '] - [' + sBrNo + ']' + sBrName;
		end;
	end else
	begin
		cbKeynumber01.ItemIndex := 0;
		proc_init_enable(False);
	end;

  lblSosokNameA1.Caption := sName;
  lblSosokNameA2.Caption := sName;
  lblSosokNameA3.Caption := sName;
  lblSosokNameA4.Caption := sName;
  lblSosokNameA5.Caption := sName;
  lblSosokNameA6.Caption := sName;
  lblSosokNameA7.Caption := sName;

  cbKeynumber01.Tag := 1;
  cbKeynumberA2.ItemIndex := cbKeynumber01.ItemIndex;
  cbKeynumberA3.ItemIndex := cbKeynumber01.ItemIndex;
  cbKeynumberA4.ItemIndex := cbKeynumber01.ItemIndex;
  cbKeynumberA5.ItemIndex := cbKeynumber01.ItemIndex;
  cbKeynumberA6.ItemIndex := cbKeynumber01.ItemIndex;
  cbKeynumberA7.ItemIndex := cbKeynumber01.ItemIndex;
  cbKeynumber01.Tag := 0;

	cxGongList.DataController.SetRecordCount(0);
	cxPushList.DataController.SetRecordCount(0);
  CID_SMS_HISTORY_List.DataController.SetRecordCount(0);
  CID_PUSH_HISTORY_List.DataController.SetRecordCount(0);
  CID_SMS_SENT_STAT_List.DataController.SetRecordCount(0);
  CID_PUSH_SENT_STAT_List.DataController.SetRecordCount(0);
end;

procedure TFrm_APP.btnSearchA1Click(Sender: TObject);
begin
	if Trim(cxBrNo.Text) = '' then
  begin
    GMessagebox('지사를 선택하셔야 합니다.', CDMSI);
		proc_init_enable(False);
		Exit;
  end;

	if (cbKeynumber01.ItemIndex >= 0) and (UseAPPKeyNumberCHK) then proc_AppPushSet
	else
  begin
    GMessagebox('대표번호를 선택하셔야 합니다.', CDMSI);
		proc_init_enable(False);
	end;
end;

procedure TFrm_APP.btnSearchA2Click(Sender: TObject);
begin
	if Trim(cxBrNo1.Text) = '' then
  begin
    GMessagebox('지사를 선택하셔야 합니다.', CDMSI);
    Exit;
  end;

	if (cbKeynumberA2.ItemIndex >= 0) and (UseAPPKeyNumberCHK) then
	begin
		if getKeyNumberCustUseYn(cxBrNo1.Text, cbKeynumberA2.Text) then
			proc_GongjiList
	end else
	begin
		GMessagebox('대표번호를 선택하셔야 합니다.', CDMSI);
	end;
end;

procedure TFrm_APP.btnSearchA3Click(Sender: TObject);
begin
	if Trim(cxBrNo2.Text) = '' then
  begin
    GMessagebox('지사를 선택하셔야 합니다.', CDMSI);
    Exit;
  end;

	if (cbKeynumberA3.ItemIndex >= 0) and (UseAPPKeyNumberCHK) then
	begin
		if getKeyNumberCustUseYn(cxBrNo2.Text, cbKeynumberA3.Text) then
			proc_PushList('')
  end else
	begin
		GMessagebox('대표번호를 선택하셔야 합니다.', CDMSI);
	end;
end;

procedure TFrm_APP.btnSearchA4Click(Sender: TObject);
begin
	if Trim(cxBrNo3.Text) = '' then
	begin
		GMessagebox('지사를 선택하셔야 합니다.', CDMSI);
		Exit;
	end;

	if (cbKeynumberA4.ItemIndex >= 0) and (UseAPPKeyNumberCHK) then proc_CID_SMS_SENT_HISTORY
	else
	begin
		GMessagebox('대표번호를 선택하셔야 합니다.', CDMSI);
	end;
end;

procedure TFrm_APP.btnSearchA5Click(Sender: TObject);
begin
	if Trim(cxBrNo4.Text) = '' then
	begin
		GMessagebox('지사를 선택하셔야 합니다.', CDMSI);
		Exit;
	end;

	if (cbKeynumberA5.ItemIndex >= 0) and (UseAPPKeyNumberCHK) then proc_CID_PUSH_SENT_HISTORY
	else
	begin
		GMessagebox('대표번호를 선택하셔야 합니다.', CDMSI);
	end;
end;

procedure TFrm_APP.btnSearchA6Click(Sender: TObject);
begin
	if Trim(cxBrNo5.Text) = '' then
	begin
		GMessagebox('지사를 선택하셔야 합니다.', CDMSI);
		Exit;
	end;

	if (cbKeynumberA6.ItemIndex >= 0) and (UseAPPKeyNumberCHK) then proc_CID_SMS_SENT_STAT
	else
	begin
		GMessagebox('대표번호를 선택하셔야 합니다.', CDMSI);
	end;
end;

procedure TFrm_APP.btnSearchA7Click(Sender: TObject);
begin
	if Trim(cxBrNo6.Text) = '' then
	begin
		GMessagebox('지사를 선택하셔야 합니다.', CDMSI);
		Exit;
	end;

	if (cbKeynumberA7.ItemIndex >= 0) and (UseAPPKeyNumberCHK) then proc_CID_PUSH_SENT_STAT
	else
	begin
		GMessagebox('대표번호를 선택하셔야 합니다.', CDMSI);
	end;
end;

procedure TFrm_APP.proc_AppPushSet;
var
  XmlData, Param, ErrMsg, sBrNo, msg, sBrName : string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd: TStringList;
	i, j, k, ErrCode, iCnt, iRow : Integer;
  lsCard : TStringList;
  bCard : Boolean;
begin
	proc_init_AppSetup;

  try
    sBrNo := cxBrNo.Text;

		if sBrNo = '' then
    begin
			GMessagebox('앱/스마트 푸시설정은 지사를 선택하셔야 합니다.', CDMSI);
      Exit;
    end;

    if (GT_USERIF.LV = '10') and (not IsPassedManagementCu(sBrNo)) then
    begin
			msg := '[%s(%s)]  지사에서 고객관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
          + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
      sBrName := GetBrName(sBrNo);
      GMessagebox(Format(msg, [sBrNo, sBrName]), CDMSI);
			proc_init_AppSetup;
      Exit;
    end;

    if fGetChk_Search_HdBrNo('앱/스마트푸시설정') then Exit;

		PnlMainA1.Enabled := True;

		Param := cxBrNo.Text + '│' + cbKeynumber01.Text;

		if not RequestBase(GetSel05('GET_XE_APP_CONFIG', 'mng_custapp.GET_XE_APP_CONFIG', '10', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('앱/스마트 푸시설정 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Exit;
    end;

		xdom := ComsDomDocument.Create;
    try
			xdom.loadXML(XmlData);
      lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
		  if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
			begin
		  	proc_init_enable(True);
				lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
		  	ls_Rcrd := TStringList.Create;
        lsCard  := TStringList.Create;
        try
		  		iRow := 0;
          for I := 0 to lst_Result.length - 1 do
          begin
            // 0 지사코드, 1 지사명, 2 출금계좌, 3 은행명, 4 은행코드, 5 예금주, 6 본사정산금액, 7 지사정산금액, 8 설정금액, 9 잔액, 10 정산구분(0:정산안함/1:일일정산/2:월요일정산)
						GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
		  			if i = 0 then
		  			begin
		  				Edt_AppTitle.Text := ls_Rcrd[0];
							if StrToFloatDef(ls_Rcrd[1], 0) = 0 then
		  				begin
		  					cxCurrencyEdit2.Value := 0;
								rg_charge_ser1.Checked := True;
								cxLabel22.Caption := '';
							end else
							if ( StrToFloatDef(ls_Rcrd[1], 0) > 0 ) And ( StrToFloatDef(ls_Rcrd[1], 0) <= 1 ) then
							begin
								cxCurrencyEdit2.Value := StrToFloatDef(ls_Rcrd[1], 0) * 100;
								rg_charge_ser3.Checked := True;
								cxLabel22.Caption := '%';
							end else
							if ( StrToFloatDef(ls_Rcrd[1], 0) > 100 ) then
							begin
								cxCurrencyEdit2.Value := StrToIntDef(ls_Rcrd[1], 0);
								rg_charge_ser2.Checked := True;
								cxLabel22.Caption := '원';
							end;

							// 카드완료시
							if StrToFloatDef(ls_Rcrd[29], 0) = 0 then
							begin
								cxCurrencyEdit6.Value := 0;
								rg_charge_Cser1.Checked := True;
								cxLabel71.Caption := '';
  	  				end else
  	  				if ( StrToFloatDef(ls_Rcrd[29], 0) > 0 ) And ( StrToFloatDef(ls_Rcrd[29], 0) <= 1 ) then
  	  				begin
								cxCurrencyEdit6.Value := StrToFloatDef(ls_Rcrd[29], 0) * 100;
								rg_charge_Cser3.Checked := True;
								cxLabel71.Caption := '%';
							end else
							if ( StrToFloatDef(ls_Rcrd[29], 0) > 100 ) then
							begin
								cxCurrencyEdit6.Value := StrToIntDef(ls_Rcrd[29], 0);
								rg_charge_Cser2.Checked := True;
								cxLabel71.Caption := '원';
							end;

							if StrToFloatDef(ls_Rcrd[2], 0) = 0 then
							begin
								cxCheckBox1.Checked := False;
								Pnl_Mile.Enabled := False;

								cxCurrencyEdit4.Value := 0;
								rg_charge_Aser1.Checked := True;
								cxLabel23.Caption := '';
							end else
							if ( StrToFloatDef(ls_Rcrd[2], 0) > 0 ) And ( StrToFloatDef(ls_Rcrd[2], 0) <= 1 ) then
							begin
								cxCheckBox1.Checked := True;
								Pnl_Mile.Enabled := True;

								cxCurrencyEdit4.Value := StrToFloatDef(ls_Rcrd[2], 0) * 100;
								rg_charge_Aser3.Checked := True;
								cxLabel23.Caption := '%';
							end else
							if ( StrToFloatDef(ls_Rcrd[2], 0) > 100 ) then
							begin
								cxCheckBox1.Checked := True;
								Pnl_Mile.Enabled := True;

								cxCurrencyEdit4.Value := StrToIntDef(ls_Rcrd[2], 0);
								rg_charge_Aser2.Checked := True;
								cxLabel23.Caption := '원';
							end;

							if ls_Rcrd[3] = 'y' then
							begin
								Se_Key_Number1.Value := StrToIntDef(ls_Rcrd[4], 0);

								if StrToFloatDef(ls_Rcrd[5], 0) < 100 then
									cxCurrencyEdit1.Value := StrToFloatDef(ls_Rcrd[5], 0) * 100
								else
									cxCurrencyEdit1.Value := StrToFloatDef(ls_Rcrd[5], 0);
		  					rg_charge_ser4.Checked := True;
							end else
							if ls_Rcrd[3] = 'n' then
							begin
								Se_Key_Number1.Value := 30;
								cxCurrencyEdit1.Value := 0;
								rg_charge_ser5.Checked := True;
							end;

		  				if ls_Rcrd[6] = 'y' then
		  				begin
		  					lb_sel_map.Items.Clear;
		  					lb_map.Items.Clear;

								rg_charge_ser6.Checked := True;
								GetTextSeperationEx2(',', ls_Rcrd[7], lsCard);

		  					for j := 0 to LB_CardList.Items.Count - 1 do
		  					begin
		  						bCard := True;
		  						for k := 0 to lsCard.Count - 1 do
		  						begin
		  							if LB_CardList.Items.Strings[j] = lsCard[k] then
		  							begin
											lb_sel_map.Items.Add(LB_CardList.Items.Strings[j]);
		  								bCard := False;
		  							end;
		  						end;
		  						if bCard then lb_map.Items.Add(LB_CardList.Items.Strings[j]);
		  					end;
		  				end else
		  				if ls_Rcrd[6] = 'n' then
		  				begin
		  					rg_charge_ser7.Checked := True;
		  					lb_sel_map.Items.Clear;
		  				end;

		  				if ls_Rcrd[8] = '018' then Cb_AppChk1.Checked := True else
		  				if ls_Rcrd[8] = '' then Cb_AppChk1.Checked := False;
		  				if ls_Rcrd[9] = '18' then Cb_AppChk2.Checked := True else
		  				if ls_Rcrd[9] = '' then Cb_AppChk2.Checked := False;

		  				if ls_Rcrd[10] = 'y' then rg_charge_ser8.Checked := True else
		  				if ls_Rcrd[10] = 'n' then rg_charge_ser9.Checked := True;

		  				edt1.Text := Trim(ls_Rcrd[23]);
		  				edt2.Text := Trim(ls_Rcrd[24]);
		  				if ls_Rcrd[11] = '1' then
		  				begin
		  					rg_charge_ser10.Checked := True;
		  					lbl4.Visible := True;
		  					if edt2.Text  = '' then
		  						lbl4.Caption := '[ 설정된 콜마너 SMS 건당 과금금액이 없습니다. 문의 : 1688-1688]'
		  					else
		  						lbl4.Caption := '[ 콜마너 SMS 건당 과금금액은 [  '+ edt2.Text + ' ] 원 입니다.] 단, SMS캐시에서 차감됨';
		  				end	else
		  				if ls_Rcrd[11] = '2' then
		  				begin
		  					rg_charge_ser11.Checked := True;
		  					lbl4.Visible := True;
		  					if edt1.Text  = '' then
		  						lbl4.Caption := '[ 설정된 스마트 푸시 건당 과금금액이 없습니다. 문의 : 1688-1688]'
		  					else
		  						lbl4.Caption := '[ 스마트 푸시 건당 과금금액은 [  '+ edt1.Text + ' ] 원 입니다.] 단, SMS캐시에서 차감됨';
		  				end;

              if ls_Rcrd.Count > 25 then
              begin
  		  				if ls_Rcrd[26] = 'y' then cxChkAppChu.Checked := True
  		  				                     else cxChkAppChu.Checked := False;

								if StrToFloatDef(ls_Rcrd[27], 0) = 0 then
								begin
									cxCurrencyEdit3.Value := 0;
									rg_Chu_ser1.Checked := True;
									cxLabel46.Caption := '';
								end else
								if ( StrToFloatDef(ls_Rcrd[27], 0) > 0 ) And ( StrToFloatDef(ls_Rcrd[27], 0) <= 1 ) then
								begin
									cxCurrencyEdit3.Value := StrToFloatDef(ls_Rcrd[27], 0) * 100;
									rg_Chu_ser3.Checked := True;
									cxLabel46.Caption := '%';
								end else
								if ( StrToFloatDef(ls_Rcrd[27], 0) > 100 ) then
								begin
									cxCurrencyEdit3.Value := StrToIntDef(ls_Rcrd[27], 0);
									rg_Chu_ser2.Checked := True;
									cxLabel46.Caption := '원';
								end;

								if StrToFloatDef(ls_Rcrd[28], 0) = 0 then
								begin
									cxCheckBox2.Checked := False;
									Pnl_ChMile.Enabled := False;

									cxCurrencyEdit5.Value := 0;
									rg_Chu_Aser1.Checked := True;
									cxLabel53.Caption := '';
								end else
								if ( StrToFloatDef(ls_Rcrd[28], 0) > 0 ) And ( StrToFloatDef(ls_Rcrd[28], 0) <= 1 ) then
								begin
									cxCheckBox2.Checked := True;
									Pnl_ChMile.Enabled := True;

									cxCurrencyEdit5.Value := StrToFloatDef(ls_Rcrd[28], 0) * 100;
									rg_Chu_Aser3.Checked := True;
									cxLabel53.Caption := '%';
								end else
								if ( StrToFloatDef(ls_Rcrd[28], 0) > 100 ) then
								begin
									cxCheckBox2.Checked := True;
									Pnl_ChMile.Enabled := True;

									cxCurrencyEdit5.Value := StrToIntDef(ls_Rcrd[28], 0);
									rg_Chu_Aser2.Checked := True;
									cxLabel53.Caption := '원';
								end;

								//완료시 추천인 적립(A고객)
								if StrToFloatDef(ls_Rcrd[32], 0) = 0 then
								begin
									cxCurrencyEdit9.Value := 0;
									rg_Chu_Bser1.Checked := True;
									cxLabel97.Caption := '';
								end else
								if ( StrToFloatDef(ls_Rcrd[32], 0) > 0 ) And ( StrToFloatDef(ls_Rcrd[32], 0) <= 1 ) then
								begin
									cxCurrencyEdit9.Value := StrToFloatDef(ls_Rcrd[32], 0) * 100;
									rg_Chu_Bser3.Checked := True;
									cxLabel97.Caption := '%';
								end else
								if ( StrToFloatDef(ls_Rcrd[32], 0) > 100 ) then
								begin
									cxCurrencyEdit9.Value := StrToIntDef(ls_Rcrd[32], 0);
									rg_Chu_Bser2.Checked := True;
									cxLabel97.Caption := '원';
								end;

								if StrToFloatDef(ls_Rcrd[31], 0) = 0 then // 1회 최대사용금액 20170116 KHS
								begin
									cxCurrencyEdit8.Value := 0;
									cxCheckBox4.Checked := False;
								end else
								if StrToFloatDef(ls_Rcrd[31], 0) > 0 then
								begin
									cxCurrencyEdit8.Value := StrToIntDef(ls_Rcrd[31], 0);
									cxCheckBox4.Checked := True;
								end;
							end;

              if ls_Rcrd.Count > 33 then
              begin
                chkBannerUseYn.Checked := ls_Rcrd[33] = 'y';
              end;
              if ls_Rcrd.Count > 34 then
              begin
                edtLink1.Text := StringReplace(ls_Rcrd[34], 'http://', '', [rfReplaceAll]);
              end;
              if ls_Rcrd.Count > 35 then
              begin
                edtFile1.Text := ls_Rcrd[35];
//                WebBanner.WebPicture.LoadFromURL(Format(AP_BANNER_WEB_URL, [edtFile1.Text]));
              end;
		  			end;

		  			if Trim(ls_Rcrd[12]) = 'OF' then
		  			begin
		  				if ls_Rcrd[13] = 'y' then       //17 파라미터와 5차이
		  				begin
		  					OF_CidChk.Checked := True; //기능 제외(미개발) 2013.06.28 KHS
		  					OF_CidChkClick(self);
		  				end else
		  				if ls_Rcrd[13] = 'n' then
		  				begin
		  					OF_CidChk.Checked := False;
		  					OF_CidChkClick(self);
		  				end;
		  				OF_Edt1.Text := ls_Rcrd[14];
		  				OF_Edt2.Text := ls_Rcrd[15];
		  				if ls_Rcrd[16] = 'y' then
		  				begin
		  					OF_OneDaychk.Checked := True;
		  					OF_DAY.Text := ls_Rcrd[17] ;
		  				end else
		  				if ls_Rcrd[16] = 'n' then
		  				begin
		  					OF_ALLDaychk.Checked := True;
		  					OF_DAY.Text := ls_Rcrd[17] ;
		  				end;
		  				if Pos('W',ls_Rcrd[18]) > 0 then OF_WifiChk.Checked    := True
		  				                            else OF_WifiChk.Checked    := False;
		  				if Pos('A',ls_Rcrd[18]) > 0 then OF_AndroidChk.Checked := True
		  				                            else OF_AndroidChk.Checked := False;
		  				if Pos('I',ls_Rcrd[18]) > 0 then OF_IphoneChk.Checked  := True
		  				                            else OF_IphoneChk.Checked  := False;
		  				if Pos('E',ls_Rcrd[18]) > 0 then OF_EtcChk.Checked     := True
		  				                            else OF_EtcChk.Checked    := False;

		  				if Pos('0',ls_Rcrd[19]) > 0 then OF_CustChk1.Checked := True
		  				                            else OF_CustChk1.Checked := False;
		  				if Pos('1',ls_Rcrd[19]) > 0 then OF_CustChk2.Checked := True
		  				                            else OF_CustChk2.Checked := False;
		  				if Pos('3',ls_Rcrd[19]) > 0 then OF_CustChk3.Checked := True
		  				                            else OF_CustChk3.Checked := False;
		  				if Pos('4',ls_Rcrd[19]) > 0 then OF_CustChk4.Checked := True
		  				                            else OF_CustChk4.Checked := False;

		  				if Pos('N',ls_Rcrd[20]) > 0 then OF_CustLevChk1.Checked := True
		  				                            else OF_CustLevChk1.Checked := False;
		  				if Pos('0',ls_Rcrd[20]) > 0 then OF_CustLevChk2.Checked := True
		  				                            else OF_CustLevChk2.Checked := False;
		  				if Pos('1',ls_Rcrd[20]) > 0 then OF_CustLevChk3.Checked := True
		  				                            else OF_CustLevChk3.Checked := False;
		  				if Pos('2',ls_Rcrd[20]) > 0 then OF_CustLevChk4.Checked := True
		  				                            else OF_CustLevChk4.Checked := False;
		  				if Pos('3',ls_Rcrd[20]) > 0 then OF_CustLevChk5.Checked := True
		  				                            else OF_CustLevChk5.Checked := False;
		  				if Pos('4',ls_Rcrd[20]) > 0 then OF_CustLevChk6.Checked := True
		  				                            else OF_CustLevChk6.Checked := False;
		  				if Pos('5',ls_Rcrd[20]) > 0 then OF_CustLevChk7.Checked := True
		  				                            else OF_CustLevChk7.Checked := False;
		  				OF_Edt_Cnt.Text := ls_Rcrd[21];
		  				if ls_Rcrd[22] = 'y' then OF_CustChk5.Checked := True
		  				                     else OF_CustChk5.Checked := False;
		  				if ls_Rcrd[25] = 'y' then OF_Install_No_Send.Checked := True
		  				                     else OF_Install_No_Send.Checked := False;
		  			end else
		  			if Trim(ls_Rcrd[12]) = 'CE' then
		  			begin
		  				if ls_Rcrd[13] = 'y' then       //17 파라미터와 5차이
		  				begin
		  					CE_CidChk.Checked := True;
		  					CE_CidChkClick(self);
		  				end	else
		  				if ls_Rcrd[13] = 'n' then
		  				begin
		  					CE_CidChk.Checked := False;
		  					CE_CidChkClick(self);
		  				end;
		  				CE_Edt1.Text := ls_Rcrd[14];
		  				CE_Edt2.Text := ls_Rcrd[15];
		  				if ls_Rcrd[16] = 'y' then
		  				begin
		  					CE_OneDaychk.Checked := True;
		  					CE_DAY.Text := ls_Rcrd[17];
		  				end else
		  				if ls_Rcrd[16] = 'n' then
		  				begin
		  					CE_ALLDaychk.Checked := True;
		  					CE_DAY.Text := ls_Rcrd[17];
		  				end;
		  				if Pos('W',ls_Rcrd[18]) > 0 then CE_WifiChk.Checked    := True
		  				                            else CE_WifiChk.Checked    := False;
		  				if Pos('A',ls_Rcrd[18]) > 0 then CE_AndroidChk.Checked := True
		  				                            else CE_AndroidChk.Checked := False;
		  				if Pos('I',ls_Rcrd[18]) > 0 then CE_IphoneChk.Checked  := True
		  				                            else CE_IphoneChk.Checked  := False;
		  				if Pos('E',ls_Rcrd[18]) > 0 then CE_EtcChk.Checked     := True
		  				                            else CE_EtcChk.Checked     := False;

		  				if Pos('0',ls_Rcrd[19]) > 0 then CE_CustChk1.Checked := True
		  				                            else CE_CustChk1.Checked := False;
		  				if Pos('1',ls_Rcrd[19]) > 0 then CE_CustChk2.Checked := True
		  				                            else CE_CustChk2.Checked := False;
		  				if Pos('3',ls_Rcrd[19]) > 0 then CE_CustChk3.Checked := True
		  				                            else CE_CustChk3.Checked := False;
		  				if Pos('4',ls_Rcrd[19]) > 0 then CE_CustChk4.Checked := True
		  				                            else CE_CustChk4.Checked := False;

		  				if Pos('N',ls_Rcrd[20]) > 0 then CE_CustLevChk1.Checked := True
		  				                            else CE_CustLevChk1.Checked := False;
		  				if Pos('0',ls_Rcrd[20]) > 0 then CE_CustLevChk2.Checked := True
		  				                            else CE_CustLevChk2.Checked := False;
		  				if Pos('1',ls_Rcrd[20]) > 0 then CE_CustLevChk3.Checked := True
		  				                            else CE_CustLevChk3.Checked := False;
		  				if Pos('2',ls_Rcrd[20]) > 0 then CE_CustLevChk4.Checked := True
		  				                            else CE_CustLevChk4.Checked := False;
		  				if Pos('3',ls_Rcrd[20]) > 0 then CE_CustLevChk5.Checked := True
		  				                            else CE_CustLevChk5.Checked := False;
		  				if Pos('4',ls_Rcrd[20]) > 0 then CE_CustLevChk6.Checked := True
		  				                            else CE_CustLevChk6.Checked := False;
		  				if Pos('5',ls_Rcrd[20]) > 0 then CE_CustLevChk7.Checked := True
		  				                            else CE_CustLevChk7.Checked := False;
		  				CE_Edt_Cnt.Text := ls_Rcrd[21];
		  				if ls_Rcrd[22] = 'y' then CE_CustChk5.Checked := True
		  				                     else CE_CustChk5.Checked := False;
		  				if ls_Rcrd[25] = 'y' then CE_Install_No_Send.Checked := True
		  				                     else CE_Install_No_Send.Checked    := False;
		  			end else
		  			if Trim(ls_Rcrd[12]) = 'NE' then
		  			begin
		  				if ls_Rcrd[13] = 'y' then       //17 파라미터와 5차이
		  				begin
		  					NE_CidChk.Checked := True;
		  					NE_CidChkClick(self);
		  				end else
		  				if ls_Rcrd[13] = 'n' then
		  				begin
		  					NE_CidChk.Checked := False;
		  					NE_CidChkClick(self);
		  				end;
		  				NE_Edt1.Text := ls_Rcrd[14];
		  				NE_Edt2.Text := ls_Rcrd[15];
		  				if ls_Rcrd[16] = 'y' then
		  				begin
		  					NE_OneDaychk.Checked := True;
		  					NE_DAY.Text := ls_Rcrd[17];
		  				end else
		  				if ls_Rcrd[16] = 'n' then
		  				begin
		  					NE_ALLDaychk.Checked := True;
		  					NE_DAY.Text := ls_Rcrd[17];
		  				end;
		  				if Pos('W',ls_Rcrd[18]) > 0 then NE_WifiChk.Checked    := True
		  				                            else NE_WifiChk.Checked    := False;
		  				if Pos('A',ls_Rcrd[18]) > 0 then NE_AndroidChk.Checked := True
		  			                              else NE_AndroidChk.Checked := False;
		  				if Pos('I',ls_Rcrd[18]) > 0 then NE_IphoneChk.Checked  := True
		  				                            else NE_IphoneChk.Checked  := False;
		  				if Pos('E',ls_Rcrd[18]) > 0 then NE_EtcChk.Checked     := True
		  				                            else NE_EtcChk.Checked     := False;

		  				if Pos('0',ls_Rcrd[19]) > 0 then NE_CustChk1.Checked := True
		  				                            else NE_CustChk1.Checked := False;
		  				if Pos('1',ls_Rcrd[19]) > 0 then NE_CustChk2.Checked := True
		  				                            else NE_CustChk2.Checked := False;
		  				if Pos('3',ls_Rcrd[19]) > 0 then NE_CustChk3.Checked := True
		  				                            else NE_CustChk3.Checked := False;
		  				if Pos('4',ls_Rcrd[19]) > 0 then NE_CustChk4.Checked := True
		  				                            else NE_CustChk4.Checked := False;

		  				if Pos('N',ls_Rcrd[20]) > 0 then NE_CustLevChk1.Checked := True
		  				                            else NE_CustLevChk1.Checked := False;
		  				if Pos('0',ls_Rcrd[20]) > 0 then NE_CustLevChk2.Checked := True
		  				                            else NE_CustLevChk2.Checked := False;
		  				if Pos('1',ls_Rcrd[20]) > 0 then NE_CustLevChk3.Checked := True
		  				                            else NE_CustLevChk3.Checked := False;
		  				if Pos('2',ls_Rcrd[20]) > 0 then NE_CustLevChk4.Checked := True
		  				                            else NE_CustLevChk4.Checked := False;
		  				if Pos('3',ls_Rcrd[20]) > 0 then NE_CustLevChk5.Checked := True
		  				                            else NE_CustLevChk5.Checked := False;
		  				if Pos('4',ls_Rcrd[20]) > 0 then NE_CustLevChk6.Checked := True
		  				                            else NE_CustLevChk6.Checked := False;
		  				if Pos('5',ls_Rcrd[20]) > 0 then NE_CustLevChk7.Checked := True
		  				                            else NE_CustLevChk7.Checked := False;
		  				NE_Edt_Cnt.Text := ls_Rcrd[21];
		  				if ls_Rcrd[22] = 'y' then NE_CustChk5.Checked := True
		  				                     else NE_CustChk5.Checked := False;
		  				if ls_Rcrd[25] = 'y' then NE_Install_No_Send.Checked := True
		  				                     else NE_Install_No_Send.Checked    := False;
						end;
						//////////////////////최초 앱설치시 1회적립 20161128 KHS
						if StrToFloatDef(ls_Rcrd[30], 0) = 0 then
						begin
							cxCheckBox3.Checked := False;
							Panel3.Enabled := False;

							cxCurrencyEdit7.Value := 0;
							cxRadioButton1.Checked := True;
							cxLabel94.Caption := '';
						end else
						if ( StrToFloatDef(ls_Rcrd[30], 0) > 100 ) then
						begin
							cxCheckBox3.Checked := True;
							Panel3.Enabled := True;

							cxCurrencyEdit7.Value := StrToIntDef(ls_Rcrd[30], 0);
							cxRadioButton2.Checked := True;
							cxLabel94.Caption := '원';
						end;
					end;
        finally
          ls_Rcrd.Free;
          lsCard.Free;
        end;
      end else
      begin
        msg := '[%s(%s)] 지사 [%s] 대표번호는 고객 어플을 사용하지 않는 지사입니다. ';
        sBrName := GetBrName(cxBrNo.Text);
		  	GMessagebox(Format(msg, [cxBrNo.Text, sBrName, cbKeynumber01.Text]), CDMSI);
		  	proc_init_AppSetup;
		  	Exit;
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

procedure TFrm_APP.proc_init_AppSetup;
begin
	Edt_AppTitle.Clear;

	rg_charge_ser1.Checked := True;
	rg_charge_ser1Click(rg_charge_ser1);

	rg_charge_Cser1.Checked := True;
	rg_charge_Cser1Click(rg_charge_Cser1);

	cxCurrencyEdit2.Value := 0;

	cxCheckBox1.Checked := False;
	Pnl_Mile.Enabled := False;
	cxCurrencyEdit4.Value := 0;

	cxCheckBox3.Checked := False;
	Panel3.Enabled := False;
	cxCurrencyEdit7.Value := 0;

	cxCheckBox4.Checked := False;  //1일 최대사용금액 20170111 KHS
	cxCurrencyEdit8.Value := 0;

	rg_charge_ser5.Checked := True;
	rg_charge_ser4Click(rg_charge_ser5);
	rg_charge_ser7.Checked := True;
	rg_charge_ser6Click(rg_charge_ser7);
	rg_charge_ser9.Checked := True;
	rg_charge_ser8Click(rg_charge_ser9);

  cxChkAppChu.Checked := False;
  rg_Chu_ser1.Checked := True;
  rg_Chu_ser1Click(rg_Chu_ser1);
  cxCurrencyEdit3.Value := 0;
  cxCheckBox2.Checked := False;
  Pnl_ChMile.Enabled := False;
  cxCurrencyEdit5.Value := 0;
	rg_Chu_Bser1.Checked := True;
	rg_Chu_Bser1Click(rg_Chu_Bser1);
	cxCurrencyEdit9.Value := 0;

	lb_sel_map.Items.Clear;
	lb_map.Items := LB_CardList.items;
	rg_charge_ser11.Checked := True;
	Cb_AppChk1.Checked := False;
	Cb_AppChk2.Checked := False;
	Cb_CidChk4.Checked := False;

  chkBannerUseYn.Checked := False;
  edtFile1.Text := '';
	LblImage1.Hint := '';
  edtLink1.Text := '';
//  WebBanner.WebPicture := Nil;

	OF_CidChk.Checked := False;
	OF_Edt1.Clear;
	OF_Edt1.Hint := '';
	OF_Edt2.Text := 'http://';
	OF_Edt2.Hint := '';
	OF_OneDaychk.Checked := False;
	OF_WifiChk.Checked := True;
	OF_AndroidChk.Checked := True;
	OF_IphoneChk.Checked := True;
	OF_EtcChk.Checked := False;
	OF_CustChk1.Checked := True;
	OF_CustChk2.Checked := True;
	OF_CustChk3.Checked := True;
	OF_CustChk4.Checked := True;
	OF_CustChk5.Checked := False;
	OF_CustLevChk1.Checked := True;
	OF_CustLevChk2.Checked := False;
	OF_CustLevChk3.Checked := True;
	OF_CustLevChk4.Checked := True;
	OF_CustLevChk5.Checked := True;
	OF_CustLevChk6.Checked := True;
	OF_CustLevChk7.Checked := True;
	OF_Edt_Cnt.Text := '0';
	OF_Edt_Cnt.Hint := '';

	CE_CidChk.Checked := False;
	CE_Edt1.Clear;
	CE_Edt1.Hint := '';
	CE_Edt2.Text := 'http://';
	CE_Edt2.Hint := '';
	CE_OneDaychk.Checked := False;
	CE_WifiChk.Checked := True;
	CE_AndroidChk.Checked := True;
	CE_IphoneChk.Checked := True;
	CE_EtcChk.Checked := True;
	CE_CustChk1.Checked := True;
	CE_CustChk2.Checked := True;
	CE_CustChk3.Checked := True;
	CE_CustChk4.Checked := True;
	CE_CustChk5.Checked := False;
	CE_CustLevChk1.Checked := True;
	CE_CustLevChk2.Checked := False;
	CE_CustLevChk3.Checked := True;
	CE_CustLevChk4.Checked := True;
	CE_CustLevChk5.Checked := True;
	CE_CustLevChk6.Checked := True;
	CE_CustLevChk7.Checked := True;
	CE_Edt_Cnt.Text := '0';
	CE_Edt_Cnt.Hint := '';

	NE_CidChk.Checked := False;
	NE_Edt1.Clear;
	NE_Edt1.Hint := '';
	NE_Edt2.Text := 'http://';
	NE_Edt2.Hint := '';
	NE_OneDaychk.Checked := False;
	NE_WifiChk.Checked := True;
	NE_AndroidChk.Checked := True;
	NE_IphoneChk.Checked := True;
	NE_EtcChk.Checked := True;
	NE_CustChk1.Checked := True;
	NE_CustChk2.Checked := True;
	NE_CustChk3.Checked := True;
	NE_CustChk4.Checked := True;
	NE_CustChk5.Checked := False;
	NE_CustLevChk1.Checked := True;
	NE_CustLevChk2.Checked := False;
	NE_CustLevChk3.Checked := True;
	NE_CustLevChk4.Checked := True;
	NE_CustLevChk5.Checked := True;
	NE_CustLevChk6.Checked := True;
	NE_CustLevChk7.Checked := True;
	NE_Edt_Cnt.Text := '0';
	NE_Edt_Cnt.Hint := '';

	proc_init_enable(False);
	PnlMainA1.Enabled := False;

	lbl4.Caption := '';
	lbl4.Visible := False;
	edt1.Text := '';
	edt2.Text := '';
end;

procedure TFrm_APP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_APP.FormCreate(Sender: TObject);
begin
  if GT_USERIF.ID = 'sntest' then btnGetList.Visible := True;
	proc_init;
end;

procedure TFrm_APP.FormDestroy(Sender: TObject);
begin
  Frm_APP := Nil;
end;

procedure TFrm_APP.FormShow(Sender: TObject);
begin
  fSetFont(Frm_APP, GS_FONTNAME);
end;

procedure TFrm_APP.proc_init;
Var i : Integer;
begin
  cxPageControl1.ActivePageIndex := 0;
  cxPageControl1.Pages[0].TabVisible := TCK_USER_PER.APP_Setup = '1';
	cxPageControl1.Pages[1].TabVisible := TCK_USER_PER.APP_Notice = '1';
	cxPageControl1.Pages[2].TabVisible := TCK_USER_PER.APP_Push = '1';
	cxPageControl1.Pages[3].TabVisible := TCK_USER_PER.APP_SMSLIST = '1';
	cxPageControl1.Pages[4].TabVisible := TCK_USER_PER.APP_PushLIST = '1';
	cxPageControl1.Pages[5].TabVisible := TCK_USER_PER.APP_SMSSTT = '1';
	cxPageControl1.Pages[6].TabVisible := TCK_USER_PER.APP_PushSTT = '1';

  if (GB_365System) Or (GB_CallLine) then
  begin
    cxPageControl1.Pages[3].Caption := 'SMS발송내역';
    cxPageControl1.Pages[5].Caption := 'SMS발송일별통계';
  end;

	proc_BrNameSet;
  // --------------------------------------------------------------------------- A1
  cxLabel31.Caption := '추 천' + #13 + '마일리지';

	OF_CidChk.Checked := false;
	OF_CidChkClick(self);
	CE_CidChk.Checked := false;
	CE_CidChkClick(self);
	NE_CidChk.Checked := false;
	NE_CidChkClick(self);
//	btnSearchA1.Click;

  // --------------------------------------------------------------------------- A2
	cxDtStartA2.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 31;
	cxDtEndA2.Date := cxDtStartA2.Date + 31;

	cxGongList.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to cxGongList.ColumnCount - 1 do
	begin
		cxGongList.Columns[i].DataBinding.ValueType := 'String';
	end;

	cxGongList.OptionsView.NoDataToDisplayInfoText := '';

  // --------------------------------------------------------------------------- A3
	cxDtStartA3.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 31;
	cxDtEndA3.Date := cxDtStartA3.Date + 31;

	cxPushList.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to cxPushList.ColumnCount - 1 do
	begin
		cxPushList.Columns[i].DataBinding.ValueType := 'String';
	end;

	cxPushList.OptionsView.NoDataToDisplayInfoText := '';

  // --------------------------------------------------------------------------- A4
	cxDtStartA4.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 7;
	cxDtEndA4.Date := cxDtStartA4.Date + 7;

	CID_SMS_HISTORY_List.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to CID_SMS_HISTORY_List.ColumnCount - 1 do
	begin
		CID_SMS_HISTORY_List.Columns[i].DataBinding.ValueType := 'String';
	end;
	CID_SMS_HISTORY_List.OptionsView.NoDataToDisplayInfoText := '';

  // --------------------------------------------------------------------------- A5
	cxDtStartA5.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 7;
	cxDtEndA5.Date := cxDtStartA5.Date + 7;

	CID_PUSH_HISTORY_List.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to CID_PUSH_HISTORY_List.ColumnCount - 1 do
	begin
		CID_PUSH_HISTORY_List.Columns[i].DataBinding.ValueType := 'String';
	end;
	CID_PUSH_HISTORY_List.Columns[11].DataBinding.ValueType := 'Currency';

	CID_PUSH_HISTORY_List.OptionsView.NoDataToDisplayInfoText := '';

  // --------------------------------------------------------------------------- A6
	cxSEYearA6.Value := StrToIntDef(FormatDateTime('yyyy', Now), 1);
	cxSEYearA6.Properties.MaxValue := cxSEYearA6.Value;
	cxSEYearA6.Properties.MinValue := cxSEYearA6.Value - 1;
	cxSEMonthA6.Value := StrToIntDef(FormatDateTime('mm', Now), 1);

	CID_SMS_SENT_STAT_List.Columns[0].DataBinding.ValueType := 'Integer';
	CID_SMS_SENT_STAT_List.Columns[1].DataBinding.ValueType := 'String';
	for i := 2 to CID_SMS_SENT_STAT_List.ColumnCount - 1 do
	begin
		CID_SMS_SENT_STAT_List.Columns[i].DataBinding.ValueType := 'String';
	end;
	CID_SMS_SENT_STAT_List.OptionsView.NoDataToDisplayInfoText := '';

  // --------------------------------------------------------------------------- A7
	cxSEYearA7.Value := StrToIntDef(FormatDateTime('yyyy', Now), 1);
	cxSEYearA7.Properties.MaxValue := cxSEYearA7.Value;
	cxSEYearA7.Properties.MinValue := cxSEYearA7.Value - 1;
	cxSEMonthA7.Value := StrToIntDef(FormatDateTime('mm', Now), 1);

	CID_PUSH_SENT_STAT_List.Columns[0].DataBinding.ValueType := 'Integer';
	CID_PUSH_SENT_STAT_List.Columns[1].DataBinding.ValueType := 'String';
	for i := 2 to CID_PUSH_SENT_STAT_List.ColumnCount - 1 do
	begin
		CID_PUSH_SENT_STAT_List.Columns[i].DataBinding.ValueType := 'Currency';
	end;
	CID_PUSH_SENT_STAT_List.OptionsView.NoDataToDisplayInfoText := '';
end;

procedure TFrm_APP.rg_charge_ser6Click(Sender: TObject);
begin
	if rg_charge_ser6.Checked then Pnl_Card.Enabled := True else
	if rg_charge_ser7.Checked then Pnl_Card.Enabled := False;
end;

procedure TFrm_APP.rg_charge_ser4Click(Sender: TObject);
begin
	if rg_charge_ser4.Checked then Pnl_Charge.Enabled := True else
  if rg_charge_ser5.Checked then
	begin
    Pnl_Charge.Enabled := False;
    Se_Key_Number1.Value := 30;
    cxCurrencyEdit1.Value := 0;
  end;
end;

procedure TFrm_APP.cxButton1Click(Sender: TObject);
begin
  PnlHelp.Visible := False;
end;

procedure TFrm_APP.btnGetListClick(Sender: TObject);
begin
//  pGetComponentListAPP;
end;

procedure TFrm_APP.cxCheckBox1Click(Sender: TObject);
begin
	if cxCheckBox1.Checked then
		Pnl_Mile.Enabled := True
	else
	begin
		Pnl_Mile.Enabled := False;
		rg_charge_Aser1.Checked := True;
		rg_charge_Aser1Click(rg_charge_Aser1);
	end;
end;

procedure TFrm_APP.cxCheckBox2Click(Sender: TObject);
begin
  if cxCheckBox2.Checked then
    Pnl_ChMile.Enabled := True
  else
  begin
    Pnl_ChMile.Enabled := False;
    rg_Chu_Aser1.Checked := True;
    rg_Chu_Aser1Click(rg_Chu_Aser1);
  end;
end;

procedure TFrm_APP.cxCheckBox3Click(Sender: TObject);
begin
	if cxCheckBox3.Checked then
		Panel3.Enabled := True
	else
	begin
		Panel3.Enabled := False;
		cxRadioButton1.Checked := True;
		cxRadioButton1Click(cxRadioButton1);
	end;
end;

procedure TFrm_APP.cxGongListCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  sUrl : String;
  nRow, nCol : Integer;
begin
	nCol   := ACellViewInfo.item.Index;
  nRow   := Sender.DataController.FocusedRecordIndex;

  if nRow < 0 then Exit;

  if nCol = 3 then
  begin
    lbl_WebTitleA2.Caption := Trim(cxGongList.DataController.Values[nRow, 3]);
    if ( Trim(cxGongList.DataController.Values[nRow, 12]) <> '' ) and
       ( Trim(cxGongList.DataController.Values[nRow, 4]) = 'URL' ) then
    begin
      if Pos('http', cxGongList.DataController.Values[nRow, 12]) > 0 then
        sUrl := cxGongList.DataController.Values[nRow, 12]
      else
        sUrl := 'http://' + cxGongList.DataController.Values[nRow, 12];

      wbA2.Navigate(sUrl);
      Pnl_WebA2.Visible := True;
    end else
    if ( Trim(cxGongList.DataController.Values[nRow, nCol]) <> '' ) and
       ( Trim(cxGongList.DataController.Values[nRow, 4]) = '이미지' ) then
    begin
      sUrl := Trim(cxGongList.DataController.Values[nRow, 12]);

      WBloadHtml(wbA2, sUrl);
      Pnl_WebA2.Visible := True;
    end else
    begin
      sUrl := Trim(cxGongList.DataController.Values[nRow, 12]);

      WBloadHtml(wbA2, sUrl);
      Pnl_WebA2.Visible := True;
    end;
  end;
end;

procedure TFrm_APP.WBloadHtml(WebBrowser:TWebBrowser; HtmlCode: string);
var sl : TStringList;
    ms : TMemoryStream;
begin
  WebBrowser.Navigate('about:blank');
  while WebBrowser.ReadyState < READYSTATE_INTERACTIVE do
    Application.ProcessMessages;

  if Assigned(WebBrowser.Document) then
  begin
    sl := TStringList.Create;
    try
      ms := TMemoryStream.Create;
      try
        sl.Text := HTMLCode;
        sl.SaveToStream(ms);
        ms.seek(0,0);
        (WebBrowser.Document as IPersistStreamInit).Load(TStreamAdapter.Create(ms));
      finally
        ms.Free;
      end;
    finally
      sl.Free;
    end;
  end;
end;

procedure TFrm_APP.cxGongListColumn15PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
Var sGongjiNo, sMsg, sUrl : String;     // 서버실제위치파일명
    iRow, iGongjiNo : Integer;
begin
  iRow := cxGongList.DataController.FocusedRecordIndex;
  if iRow = -1 then Exit;

  iGongjiNo := 1; //cxGongList. GetColumnByFieldName('게시물번호').Index;
  sGongjiNo := cxGongList.DataController.Values[iRow, iGongjiNo];

  if cxGongList.DataController.Values[iRow, 11] = '게시' then
  begin
    if ( not Assigned(Frm_APP01) ) Or ( Frm_APP01 = Nil ) then Frm_APP01 := TFrm_APP01.Create(Self);

    if getKeyNumberCustUseYn( cxBrNo1.Text, cbKeynumberA2.Text ) then
    begin
      Frm_APP01.cxBrNo.Text   := cxBrNo1.Text;
      Frm_APP01.cxKeyNum.Text := cbKeynumberA2.Text;
      Frm_APP01.pnlTitle.Hint := 'U';
      Frm_APP01.pnlTitle.Caption := '  앱 게시물 수정 및 푸시 발송';
      Frm_APP01.pnlTitle.Color := $00CFBBFD;
      Frm_APP01.Btn_SaveOff.Caption := '수정후닫기';
      Frm_APP01.Btn_SaveNext.Caption := '수정후푸시발송';
      Frm_APP01.Btn_Init.Visible := False;
			Frm_APP01.Edt_Init;
      Frm_APP01.pnl_Init(1);

      if Trim(cxGongList.DataController.Values[iRow, 2]) = '일반공지'   then Frm_APP01.RB_GongA.Checked := True else
      if Trim(cxGongList.DataController.Values[iRow, 2]) = '고정공지'   then Frm_APP01.RB_GongB.Checked := True else
			if Trim(cxGongList.DataController.Values[iRow, 2]) = '이벤트'     then Frm_APP01.RB_GongD.Checked := True;// else
//      if Trim(cxGongList.DataController.Values[iRow, 2]) = '미팝업공지' then Frm_APP01.RB_GongC.Checked := True;

      Frm_APP01.Edt_Title.Text := Trim(cxGongList.DataController.Values[iRow, 3]);

			Frm_APP01.cxGbStep2.Hint := sGongjiNo;
      Frm_APP01.Pnl_Web.Visible := False;

      if Trim(cxGongList.DataController.Values[iRow, 06]) = '' then
        Frm_APP01.de_EndDate.Date := Now
      else
        Frm_APP01.de_EndDate.Date := StrToDate(Trim(cxGongList.DataController.Values[iRow, 06]));

      if Trim(cxGongList.DataController.Values[iRow, 14]) = '미팝업' then
        Frm_APP01.chk_Gongji_Unpop.Checked := True
      else
        Frm_APP01.chk_Gongji_Unpop.Checked := False;

      if ( Trim(cxGongList.DataController.Values[iRow, 5]) <> '' ) and
         ( Trim(cxGongList.DataController.Values[iRow, 4]) = '텍스트' ) then
      begin
        Frm_APP01.Rb_Txt.Checked := True;
        Frm_APP01.Pnl_Txt.Visible := True;
        Frm_APP01.Pnl_Img.Visible := False;

        Frm_APP01.M_Memo.Text := Trim(cxGongList.DataController.Values[iRow, 17]);
      end else
      if ( Trim(cxGongList.DataController.Values[iRow, 5]) <> '' ) and
         ( Trim(cxGongList.DataController.Values[iRow, 4]) = 'URL' ) then
      begin
        Frm_APP01.Rb_Img.Checked := True;
        Frm_APP01.Pnl_Txt.Visible := False;
        Frm_APP01.Pnl_Img.Visible := True;

        if Pos('http', cxGongList.DataController.Values[iRow, 18]) > 0 then
          sUrl := cxGongList.DataController.Values[iRow, 18]
        else
          sUrl := 'http://' + cxGongList.DataController.Values[iRow, 18];

        Frm_APP01.Edt_URL.Text := sUrl;
      end else
      if ( Trim(cxGongList.DataController.Values[iRow, 5]) <> '' ) and
         ( Trim(cxGongList.DataController.Values[iRow, 4]) = '이미지' ) then
      begin
        Frm_APP01.Rb_Img.Checked := True;
        Frm_APP01.Pnl_Txt.Visible := False;
        Frm_APP01.Pnl_Img.Visible := True;

        Frm_APP01.Pnl_Img.Hint := Trim(cxGongList.DataController.Values[iRow, 16]);  // 이미지명 201510201403039913

  			Frm_APP01.Pnl_Web.Left   := 87;
        Frm_APP01.Pnl_Web.Top    := 201;
        Frm_APP01.Pnl_Web.Height := 269;
        Frm_APP01.Pnl_Web.Width  := 248;
        Frm_APP01.Pnl_Web.Visible := True;

        if Pos('http', cxGongList.DataController.Values[iRow, 18]) > 0 then
          sUrl := cxGongList.DataController.Values[iRow, 18]
        else
          sUrl := 'http://' + cxGongList.DataController.Values[iRow, 18];

        Frm_APP01.Edt_URL.Text := sUrl;

        sUrl := Trim(cxGongList.DataController.Values[iRow, 12]);
        Frm_App01.WebBrowser1.Tag := 1;
        WBloadHtml(Frm_App01.WebBrowser1, sUrl);
      end;

      Frm_APP01.Show;
    end;
  end else
  begin
    sMsg := Format('[%s]번 게시물은 삭제된 게시물입니다.', [sGongjiNo]);
    ShowMessage(sMsg);
  end;
end;

procedure TFrm_APP.cxGongListColumn19PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
Var Param, XmlData, ErrMsg, sGongjiNo, sMsg : String;     // 서버실제위치파일명
    ErrCode : Integer;
    iRow, iGongjiNo : Integer;
begin
  iRow := cxGongList.DataController.FocusedRecordIndex;
  if iRow = -1 then Exit;

  iGongjiNo := 1; //cxGongList. GetColumnByFieldName('게시물번호').Index;
  sGongjiNo := cxGongList.DataController.Values[iRow, iGongjiNo];

  if cxGongList.DataController.Values[iRow, 11] = '게시' then
  begin
    if proc_PushReservChk(sGongjiNo) = 'y' then
    begin
      sMsg := Format('[%s]번 게시물 푸시 예약 작업이 있습니다. 푸시 예약 내역도 같이 삭제 됩니다.#13#10삭제하시겠습니까?', [sGongjiNo]);
    end else
    begin
      sMsg := Format('[%s]번 게시물을 삭제하시겠습니까?', [sGongjiNo]);
    end;

    if MessageDlg(sMsg, mtConfirmation,[mbYes,mbNo],0)=idyes then
    begin
      try
				Param := 'D' + '│' +  cxBrNo1.Text + '│' + Trim(cbKeynumberA2.Text) + '│' + sGongjiNo + '│' + '│'+ '│' + '│' + '│' + '│' ;
				if not RequestBase(GetCallable05('SET_APP_NOTICE', 'mng_custapp.set_app_notice', Param), XmlData, ErrCode, ErrMsg) then
        begin
          GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSI);
          Exit;
        end;
        btnSearchA2.Click;
      except
        ShowMessage('삭제 중 오류 발생');
      end;
    end;
  end;
end;

function TFrm_APP.proc_PushReservChk ( sGongNo : String ) : String;
var
  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, ErrCode : Integer;
begin
  Param := cxBrNo1.Text + '│' + cbKeynumberA2.Text + '│' + sGongNo;

  if not RequestBase(GetSel05('GET_APP_PUSH_REQ_YN', 'mng_custapp.get_app_push_req_yn', '100', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('게시물 푸시 예약 유무 조회  중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
    Exit;
  end;

  xdom := ComsDomDocument.Create;
  try
    xdom.loadXML(XmlData);
    lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
    if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      ls_Rcrd := TStringList.Create;
      try
        for I := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
          Result := ls_Rcrd[0];
        end;
      finally
        ls_Rcrd.Free;
      end;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_APP.cxGongListColumn8PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
Var sGongjiNo, sMsg, sUrl : String;     // 서버실제위치파일명
    iRow, iGongjiNo : Integer;
begin
  iRow := cxGongList.DataController.FocusedRecordIndex;
  if iRow = -1 then Exit;

  iGongjiNo := 1; //cxGongList. GetColumnByFieldName('게시물번호').Index;
  sGongjiNo := cxGongList.DataController.Values[iRow, iGongjiNo];

  if cxGongList.DataController.Values[iRow, 11] = '게시' then
  begin
    if ( not Assigned(Frm_APP01) ) Or ( Frm_APP01 = Nil ) then Frm_APP01 := TFrm_APP01.Create(Self);

    if getKeyNumberCustUseYn( cxBrNo1.Text, cbKeynumberA2.Text ) then
    begin
      Frm_APP01.cxBrNo.Text   := cxBrNo1.Text;
      Frm_APP01.cxKeyNum.Text := cbKeynumberA2.Text;
			Frm_APP01.Edt_Init;
      Frm_APP01.pnl_Init(2);
      Frm_APP01.pnlTitle.Hint := 'I';
      Frm_APP01.pnlTitle.Caption := '  앱 게시물 등록 및 푸시 발송';
      Frm_APP01.pnlTitle.Color := $00D9E6D2;
      Frm_APP01.Btn_SaveOff.Caption := '저장후닫기';
      Frm_APP01.Btn_SaveNext.Caption := '저장후푸시발송';
      Frm_APP01.Btn_Init.Visible := True;

      if Trim(cxGongList.DataController.Values[iRow, 2]) = '일반공지'   then Frm_APP01.RB_GongA.Checked := True else
      if Trim(cxGongList.DataController.Values[iRow, 2]) = '고정공지'   then Frm_APP01.RB_GongB.Checked := True else
			if Trim(cxGongList.DataController.Values[iRow, 2]) = '이벤트'     then Frm_APP01.RB_GongD.Checked := True;// else
//      if Trim(cxGongList.DataController.Values[iRow, 2]) = '미팝업공지' then Frm_APP01.RB_GongC.Checked := True;

      Frm_APP01.Edt_Title.Text := Trim(cxGongList.DataController.Values[iRow, 3]);

			Frm_APP01.cxGbStep2.Hint := sGongjiNo;

			Frm_APP01.Pnl_Web.Left   := 87;
      Frm_APP01.Pnl_Web.Top    := 201;
      Frm_APP01.Pnl_Web.Height := 269;
      Frm_APP01.Pnl_Web.Width  := 248;
      Frm_APP01.Pnl_Web.Visible := True;

      Frm_APP01.Pnl_Txt.Visible := False;
      Frm_APP01.Pnl_Img.Visible := False;

      if Trim(cxGongList.DataController.Values[iRow, 06]) = '' then
        Frm_APP01.de_EndDate.Date := Now
      else
        Frm_APP01.de_EndDate.Date := StrToDate(Trim(cxGongList.DataController.Values[iRow, 06]));

      if Trim(cxGongList.DataController.Values[iRow, 14]) = '미팝업' then
        Frm_APP01.chk_Gongji_Unpop.Checked := True
      else
        Frm_APP01.chk_Gongji_Unpop.Checked := False;

      if ( Trim(cxGongList.DataController.Values[iRow, 5]) <> '' ) and
         ( Trim(cxGongList.DataController.Values[iRow, 4]) = '텍스트' ) then
      begin
        Frm_APP01.Rb_Txt.Checked := True;
        sUrl := Trim(cxGongList.DataController.Values[iRow, 12]);

        WBloadHtml(frm_App01.WebBrowser1, sUrl);
      end else
      if ( Trim(cxGongList.DataController.Values[iRow, 5]) <> '' ) and
         ( Trim(cxGongList.DataController.Values[iRow, 4]) = 'URL' ) then
      begin
        Frm_APP01.Rb_Img.Checked := True;

        if Pos('http', cxGongList.DataController.Values[iRow, 5]) > 0 then
          sUrl := cxGongList.DataController.Values[iRow, 5]
        else
          sUrl := 'http://' + cxGongList.DataController.Values[iRow, 5];

        Frm_APP01.WebBrowser1.Navigate(sUrl);
      end else
      if ( Trim(cxGongList.DataController.Values[iRow, 5]) <> '' ) and
         ( Trim(cxGongList.DataController.Values[iRow, 4]) = '이미지' ) then
      begin
        Frm_APP01.Rb_Img.Checked := True;

        sUrl := Trim(cxGongList.DataController.Values[iRow, 12]);
        Frm_App01.WebBrowser1.Tag := 0;
        WBloadHtml(frm_App01.WebBrowser1, sUrl);
      end;
      Frm_APP01.Show;
    end;
  end else
  begin
    sMsg := Format('[%s]번 게시물은 삭제된 게시물입니다.', [sGongjiNo]);
    ShowMessage(sMsg);
  end;
end;

procedure TFrm_APP.cxGongListColumn9PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
Var sGongjiNo : String;     // 서버실제위치파일명
    iRow, iGongjiNo : Integer;
begin
  iRow := cxGongList.DataController.FocusedRecordIndex;
  if iRow = -1 then Exit;

  if TCK_USER_PER.APP_Push = '1' then
  begin
    if cxGongList.DataController.Values[iRow, 13] = 'y' then
    begin
      Frm_Main.procMenuCreateActive(813, '앱푸시관리');

      iGongjiNo := 1; //cxGongList. GetColumnByFieldName('게시물번호').Index;
      sGongjiNo := cxGongList.DataController.Values[iRow, iGongjiNo];
    end;
  end else
  begin
    ShowMessage('앱 푸시관리 권한이 없습니다.');
  end;
end;

procedure TFrm_APP.cxGongListStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if (ARecord.Selected) or (Sender.DataController.RecordCount = 0) then  Exit;

  try
    AStyle := frm_Main.cxStyle15;

    if AItem.Index = 3 then AStyle.Color := $00D6E9F8
                       else AStyle.Color := clWhite;

  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_APP.cxGroupBox2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Pnl_WebA2.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_APP.cxPageControl1Change(Sender: TObject);
Var iTag : Integer;
begin
  case cxPageControl1.ActivePageIndex of
   0 : begin
         proc_init_AppSetup;
         btnSearchA1.Click;;
       end;
  end;

  iTag := cxPageControl1.Pages[cxPageControl1.ActivePageIndex].Tag;
  if Assigned(Frm_JON51) then
      if TCK_USER_PER.BTM_MENUSCH = '1' then Frm_JON51.Menu_Use_Mark('ADD', iTag);
end;

procedure TFrm_APP.cxPushListCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  sUrl : String;
  nRow, nCol : Integer;
begin
  nCol   := ACellViewInfo.item.Index;
  nRow   := Sender.DataController.FocusedRecordIndex;

  if nRow < 0 then Exit;

  if nCol = 5 then
  begin
    lbl_WebTitleA3.Caption := Trim(cxPushList.DataController.Values[nRow, 12]);
    if ( Trim(cxPushList.DataController.Values[nRow, nCol]) <> '' ) and
       ( Trim(cxPushList.DataController.Values[nRow, 13]) = '2' ) then
    begin
      if Pos('http', Trim(cxPushList.DataController.Values[nRow, 14])) > 0 then
        sUrl := Trim(cxPushList.DataController.Values[nRow, 14])
      else
        sUrl := 'http://' + Trim(cxPushList.DataController.Values[nRow, 14]);

      wbA3.Navigate(sUrl);
      Pnl_WebA3.Visible := True;
    end else
    if ( Trim(cxPushList.DataController.Values[nRow, nCol]) <> '' ) and
       ( Trim(cxPushList.DataController.Values[nRow, 13]) = '1' ) then
    begin
      sUrl := Trim(cxPushList.DataController.Values[nRow, 14]);

      WBloadHtml(wbA3, sUrl);
      Pnl_WebA3.Visible := True;
    end else
    begin
      sUrl := Trim(cxPushList.DataController.Values[nRow, 14]);

      WBloadHtml(wbA3, sUrl);
      Pnl_WebA3.Visible := True;
    end;
  end;
end;

procedure TFrm_APP.cxPushListStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if (ARecord.Selected) or (Sender.DataController.RecordCount = 0) then  Exit;

  try
    AStyle := frm_Main.cxStyle15;

    if AItem.Index = 5 then AStyle.Color := $00D6E9F8
                       else AStyle.Color := clWhite;

  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_APP.cxRadioButton1Click(Sender: TObject);
begin
	if cxRadioButton1.Checked then
	begin
		cxLabel94.Caption := '';
		cxCurrencyEdit7.Value := 0;
	end else
	if cxRadioButton2.Checked then cxLabel94.Caption := '원';

	if (cxRadioButton2.Checked) and (cxCurrencyEdit7.Value < 101) and (cxCurrencyEdit7.Value <> 0) then
	begin
		GMessagebox('정액은 설정값을 100이하를 입력 할수 없습니다.', CDMSI);
		cxCurrencyEdit7.Value := 101;
	end;
end;

procedure TFrm_APP.btnModifyA1Click(Sender: TObject);
const
  ls_Param = '<param>ParamString</param>';
var
  sTemp : string;
 	i : Integer;

	asParam: array[1..100] of string;
  sfN1 ,              // 변환파일명
  sufN1,              // 업로드위치및파일명
  sefN1, sDirName, sFileName : String;     // 서버실제위치파일명
  ErrCode : Integer;

	XmlData, ErrMsg, sStmp, msg, sBrName: string;
begin
	if (cbKeynumber01.ItemIndex <= 0) and (not UseAPPKeyNumberCHK) then
	begin
		ShowMessage('대표번호를 선택하세요. ');
		Exit;
	end;
	asParam[1] := cxBrNo.Text;

	if not getKeyNumberCustUseYn(cxBrNo.Text, cbKeynumber01.Text) then
	begin
			msg := '[%s(%s)] 지사 [%s] 대표번호는 고객 어플을 사용하지 않는 지사입니다. ';
			sBrName := GetBrName(cxBrNo.Text);
			GMessagebox(Format(msg, [cxBrNo.Text, sBrName, cbKeynumber01.Text]), CDMSI);
		Exit;
	end;
	asParam[1] := cxBrNo.Text;

  if asParam[1] = '' then
  begin
		GMessagebox('앱/스마트 푸시설정은 지사를 선택하셔야 합니다.', CDMSI);
		Exit;
	end;

	asParam[2] := cbKeynumber01.Text;
	asParam[3] := Trim(Edt_AppTitle.Text);

	if asParam[3] = '' then
	begin
		GMessagebox('앱타이틀을 입력하십시오.', CDMSI);
		Edt_AppTitle.SetFocus;
		Exit;
	end;

	if (cxCheckBox3.checked) and (cxCurrencyEdit7.value < 101) then
	begin
		GMessagebox('최초앱설치시 1회적립 금액은 100원 이상이어야 합니다.', CDMSI);
		cxCurrencyEdit7.SetFocus;
		Exit;
	end;

	if (cxCheckBox4.checked) and (cxCurrencyEdit8.value < 1) then
	begin
		GMessagebox('1회 최대사용금액 금액은 0원 이상이어야 합니다.', CDMSI);
		cxCurrencyEdit8.SetFocus;
		Exit;
	end;

	if (rg_charge_ser3.Checked) and (cxCurrencyEdit2.Value > 100) then
	begin
		GMessagebox('[완료오더당 적립->현금완료시]' + #13#10 + '정률 설정값은 100을 초과할 수 없습니다.', CDMSI);
		cxCurrencyEdit2.SetFocus;
		Exit;
	end;
	if (rg_charge_ser2.Checked) and (cxCurrencyEdit2.Value < 101) then
	begin
		GMessagebox('[완료오더당 적립->현금완료시]' + #13#10 + '정액 설정값은 100이하를 입력할 수 없습니다.', CDMSI);
		cxCurrencyEdit2.SetFocus;
		Exit;
	end;

	if (rg_charge_Cser3.Checked) and (cxCurrencyEdit6.Value > 100) then
	begin
		GMessagebox('[완료오더당 적립->카드완료시]' + #13#10 + '정률 설정값은 100을 초과할 수 없습니다.', CDMSI);
		cxCurrencyEdit6.SetFocus;
		Exit;
	end;
	if (rg_charge_Cser2.Checked) and (cxCurrencyEdit6.Value < 101) then
	begin
		GMessagebox('[완료오더당 적립->카드완료시]' + #13#10 + '정액 설정값은 100이하를 입력할 수 없습니다.', CDMSI);
		cxCurrencyEdit6.SetFocus;
		Exit;
	end;

	if (rg_charge_Aser3.Checked) and (cxCurrencyEdit4.Value > 100) then
	begin
		GMessagebox('[1회완료시추가적립]' + #13#10 + '정률 설정값은 100을 초과할 수 없습니다.', CDMSI);
		cxCurrencyEdit4.SetFocus;
		Exit;
	end;
	if (rg_charge_Aser2.Checked) and (cxCurrencyEdit4.Value < 101) then
	begin
		GMessagebox('[1회완료시추가적립]' + #13#10 + '정액 설정값은 100이하를 입력할 수 없습니다.', CDMSI);
		cxCurrencyEdit4.SetFocus;
		Exit;
	end;

	if (cxRadioButton2.Checked) and (cxCurrencyEdit7.Value < 101) then
	begin
		GMessagebox('[최초앱설치시 1회적립]' + #13#10 + '정액 설정값은 100이하를 입력할 수 없습니다.', CDMSI);
		cxCurrencyEdit7.SetFocus;
		Exit;
	end;

	if (rg_Chu_Bser3.Checked) and (cxCurrencyEdit9.Value > 100) then
	begin
		GMessagebox('[완료오더당 A-추천한고객 적립]' + #13#10 + '정률 설정값은 100을 초과할 수 없습니다.', CDMSI);
		cxCurrencyEdit9.SetFocus;
		Exit;
	end;
	if (rg_Chu_Bser2.Checked) and (cxCurrencyEdit9.Value < 101) then
	begin
		GMessagebox('[완료오더당 A-추천한고객 적립]' + #13#10 + '정액 설정값은 100이하를 입력할 수 없습니다.', CDMSI);
		cxCurrencyEdit9.SetFocus;
		Exit;
	end;

	if (rg_Chu_ser3.Checked) and (cxCurrencyEdit3.Value > 100) then
	begin
		GMessagebox('[완료오더당 B-추천받은고객 적립]' + #13#10 + '정률 설정값은 100을 초과할 수 없습니다.', CDMSI);
		cxCurrencyEdit3.SetFocus;
		Exit;
	end;
	if (rg_Chu_ser2.Checked) and (cxCurrencyEdit3.Value < 101) then
	begin
		GMessagebox('[완료오더당 B-추천받은고객 적립]' + #13#10 + '정액 설정값은 100이하를 입력할 수 없습니다.', CDMSI);
		cxCurrencyEdit3.SetFocus;
		Exit;
	end;

	if (rg_Chu_Aser3.Checked) and (cxCurrencyEdit5.Value > 100) then
	begin
		GMessagebox('[1회 완료시 추가적립(A고객)]' + #13#10 + '정률 설정값은 100을 초과할 수 없습니다.', CDMSI);
		cxCurrencyEdit5.SetFocus;
		Exit;
	end;
	if (rg_Chu_Aser2.Checked) and (cxCurrencyEdit5.Value < 101) then
	begin
		GMessagebox('[1회 완료시 추가적립(A고객)]' + #13#10 + '정액 설정값은 100이하를 입력할 수 없습니다.', CDMSI);
		cxCurrencyEdit5.SetFocus;
		Exit;
	end;

	if rg_charge_ser1.Checked then
    asParam[4] := '0'
  else
  if rg_charge_ser3.Checked then
    asParam[4] := FloatToStr(cxCurrencyEdit2.Value/100)
  else
  if rg_charge_ser2.Checked then
    asParam[4] := StringReplace(cxCurrencyEdit2.Text, ',', '', [rfReplaceAll]);

	asParam[5] := StringReplace(cxCurrencyEdit4.Text, ',', '', [rfReplaceAll]);

  if rg_charge_ser4.Checked then
	begin
    asParam[6] := 'y';
    asParam[7] := StringReplace(Se_Key_Number1.Value, ',', '', [rfReplaceAll]);

    if StrToFloatDef(StringReplace(cxCurrencyEdit1.Text, ',', '', [rfReplaceAll]), 0) <= 100 then
      asParam[8] := FloatToStr(cxCurrencyEdit1.Value/100)
		else
			asParam[8] := StringReplace(cxCurrencyEdit1.Text, ',', '', [rfReplaceAll]);
  end else
  if rg_charge_ser5.Checked then
  begin
    asParam[6] := 'n';
    asParam[7] := '';
    asParam[8] := '';
  end;

  if rg_charge_ser6.Checked then
  begin
    asParam[9] := 'y';
    for i := 0 to lb_sel_map.Items.Count - 1 do
    begin
      if i = 0 then
        asParam[10] := lb_sel_map.Items.Strings[i]
      else
        asParam[10] := asParam[10] + ',' + lb_sel_map.Items.Strings[i];
    end;
  end else
  if rg_charge_ser7.Checked then
  begin
    asParam[9] := 'n';
    asParam[10] := '';
	end;

	if Cb_AppChk1.Checked then asParam[11] := '018'          //고객앱 접수 시 발송
												else asParam[11] := '';
	if Cb_AppChk2.Checked then asParam[12] := '18'          //상담원 접수 시 발송
												else asParam[12] := '';

	if rg_charge_ser8.Checked then        // CID 푸시 사용유무
	begin
		asParam[13] := 'y';
	end else
	if rg_charge_ser9.Checked then
	begin
		asParam[13] := 'n';
	end;
	if rg_charge_ser11.Checked then       // CID 푸시 서비스사 (1:콜마너, 2:콜게이트)
	begin
		asParam[14] := '2';
	end else
	if rg_charge_ser10.Checked then
	begin
		asParam[14] := '1';
	end;

  if rg_charge_Cser1.Checked then
    asParam[15] := '0'
  else
  if rg_charge_Cser3.Checked then
    asParam[15] := FloatToStr(cxCurrencyEdit6.Value/100)
  else
  if rg_charge_Cser2.Checked then
    asParam[15] := StringReplace(cxCurrencyEdit6.Text, ',', '', [rfReplaceAll]);

///////////////추가변경//////////////////////////////
	asParam[16] := StringReplace(cxCurrencyEdit7.Text, ',', '', [rfReplaceAll]); //최초 앱설치시 1회적립 20161128 KHS

	asParam[17] := '3';
	asParam[18] := '12'; //옵션 파라메터 수

	asParam[19] := 'OF';
	IF OF_CidChk.Checked then
	begin
		asParam[20] := 'y';

		asParam[21] := Trim(OF_Edt1.Text);
		if Trim(OF_Edt2.Text) = '' then asParam[22] := 'http://'
															 else asParam[22] := Trim(OF_Edt2.Text);
		IF OF_OneDaychk.Checked then
		begin
			asParam[23] := 'y';
			asParam[24] := OF_DAY.Text;
		end	else
		begin
			asParam[23] := 'n';
			asParam[24] := '';
		end;
		sStmp := '';
		if OF_WifiChk.Checked    then sStmp := sStmp + 'W';
		if OF_AndroidChk.Checked then sStmp := sStmp + 'A';
		if OF_IphoneChk.Checked  then sStmp := sStmp + 'I';
		if OF_EtcChk.Checked     then sStmp := sStmp + 'E';
		if (OF_CidChk.Checked) and (sStmp = '') then
		begin
			GMessagebox('[콜센터인입콜]단말 플래폼은 최소 1개 이상 선택되어야 합니다.', CDMSI);
			OF_AndroidChk.SetFocus;
			Exit;
		end;
		asParam[25] := sStmp;
		sStmp := '';
		if OF_CustChk1.Checked then sStmp := sStmp + '0';
		if OF_CustChk2.Checked then sStmp := sStmp + '1';
		if OF_CustChk3.Checked then sStmp := sStmp + '3';
		if OF_CustChk4.Checked then sStmp := sStmp + '4';
		if (OF_CidChk.Checked) and (sStmp = '') then
		begin
			GMessagebox('[콜센터인입콜]고객구분은 최소 1개 이상 선택되어야 합니다.', CDMSI);
			OF_CustChk1.SetFocus;
			Exit;
		end;
		asParam[26] := sStmp;
		sStmp := '';
		if OF_CustLevChk1.Checked then sStmp := sStmp + 'N';
		if OF_CustLevChk2.Checked then sStmp := sStmp + '0';
		if OF_CustLevChk3.Checked then sStmp := sStmp + '1';
		if OF_CustLevChk4.Checked then sStmp := sStmp + '2';
		if OF_CustLevChk5.Checked then sStmp := sStmp + '3';
		if OF_CustLevChk6.Checked then sStmp := sStmp + '4';
		if OF_CustLevChk7.Checked then sStmp := sStmp + '5';
		asParam[27] := sStmp;
		asParam[28] := OF_Edt_Cnt.Text;
		if OF_CustChk5.Checked then asParam[29] := 'y'
													 else asParam[29] := 'n';
		if OF_Install_No_Send.Checked then asParam[30] := 'y'
																	else asParam[30] := 'n';
	end else
	begin
		asParam[20] := 'n';

		asParam[21] := Trim(OF_Edt1.Text);
		if Trim(OF_Edt2.Text) = '' then asParam[22] := 'Http://'
															 else asParam[22] := Trim(OF_Edt2.Text);
		IF OF_OneDaychk.Checked then
		begin
			asParam[23] := 'y';
			asParam[24] := OF_DAY.Text;
		end else
		begin
			asParam[23] := 'n';
			asParam[24] := '';
		end;
		asParam[25] := 'WAIE';
		asParam[26] := '013';
		asParam[27] := 'N12345';
		asParam[28] := '0';
		asParam[29] := 'y';
		if OF_Install_No_Send.Checked then asParam[30] := 'y'
																	else asParam[30] := 'n';
	end;

	asParam[31] := 'CE';
	IF CE_CidChk.Checked then
	begin
		asParam[32] := 'y';

		asParam[33] := Trim(CE_Edt1.Text);
		if Trim(CE_Edt2.Text) = '' then asParam[34] := 'Http://'
															 else asParam[34] := Trim(CE_Edt2.Text);
		IF CE_OneDaychk.Checked then
		begin
			asParam[35] := 'y';
			asParam[36] := CE_DAY.Text;
		end	else
		begin
			asParam[35] := 'n';
			asParam[36] := '';
		end;
		sStmp := '';
		if CE_WifiChk.Checked    then sStmp := sStmp + 'W';
		if CE_AndroidChk.Checked then sStmp := sStmp + 'A';
		if CE_IphoneChk.Checked  then sStmp := sStmp + 'I';
		if CE_EtcChk.Checked     then sStmp := sStmp + 'E';
		if (CE_CidChk.Checked) and (sStmp = '') then
		begin
			GMessagebox('[통화고객종료시]단말 플래폼은 최소 1개 이상 선택되어야 합니다.', CDMSI);
			CE_AndroidChk.SetFocus;
			Exit;
		end;
		asParam[37] := sStmp;
		sStmp := '';
		if CE_CustChk1.Checked then sStmp := sStmp + '0';
		if CE_CustChk2.Checked then sStmp := sStmp + '1';
		if CE_CustChk3.Checked then sStmp := sStmp + '3';
		if CE_CustChk4.Checked then sStmp := sStmp + '4';
		if (CE_CidChk.Checked) and (sStmp = '') then
		begin
			GMessagebox('[통화고객종료시]고객구분은 최소 1개 이상 선택되어야 합니다.', CDMSI);
			CE_CustChk1.SetFocus;
			Exit;
		end;
		asParam[38] := sStmp;
		sStmp := '';
		if CE_CustLevChk1.Checked then sStmp := sStmp + 'N';
		if CE_CustLevChk2.Checked then sStmp := sStmp + '0';
		if CE_CustLevChk3.Checked then sStmp := sStmp + '1';
		if CE_CustLevChk4.Checked then sStmp := sStmp + '2';
		if CE_CustLevChk5.Checked then sStmp := sStmp + '3';
		if CE_CustLevChk6.Checked then sStmp := sStmp + '4';
		if CE_CustLevChk7.Checked then sStmp := sStmp + '5';
		asParam[39] := sStmp;
		asParam[40] := CE_Edt_Cnt.Text;
		if CE_CustChk5.Checked then asParam[41] := 'y'
													 else asParam[41] := 'n';
		if CE_Install_No_Send.Checked then asParam[42] := 'y'
																	else asParam[42] := 'n';
	end else
	begin
		asParam[32] := 'n';

		asParam[33] := Trim(CE_Edt1.Text);
		if Trim(CE_Edt2.Text) = '' then asParam[34] := 'Http://'
															 else asParam[34] := Trim(CE_Edt2.Text);
		IF CE_OneDaychk.Checked then
		begin
			asParam[35] := 'y';
			asParam[36] := CE_DAY.Text;
		end	else
		begin
			asParam[35] := 'n';
			asParam[36] := '';
		end;
		asParam[37] := 'WAIE';
		asParam[38] := '013';
		asParam[39] := 'N12345';
		asParam[40] := CE_Edt_Cnt.Text;
		asParam[41] := 'y';
		if CE_Install_No_Send.Checked then asParam[42] := 'y'
																	else asParam[42] := 'n';
	end;

	asParam[43] := 'NE';
	IF NE_CidChk.Checked then
	begin
		asParam[44] := 'y';
		asParam[45] := Trim(NE_Edt1.Text);
		if Trim(NE_Edt2.Text) = '' then asParam[46] := 'Http://'
															 else asParam[46] := Trim(NE_Edt2.Text);
		IF NE_OneDaychk.Checked then
		begin
			asParam[47] := 'y';
			asParam[48] := NE_DAY.Text;
		end	else
		begin
			asParam[47] := 'n';
			asParam[48] := '';
		end;
		sStmp := '';
		if NE_WifiChk.Checked    then sStmp := sStmp + 'W';
		if NE_AndroidChk.Checked then sStmp := sStmp + 'A';
		if NE_IphoneChk.Checked  then sStmp := sStmp + 'I';
		if NE_EtcChk.Checked     then sStmp := sStmp + 'E';
		if (NE_CidChk.Checked) and (sStmp = '') then
		begin
			GMessagebox('[미통화고객종료시]단말 플래폼은 최소 1개 이상 선택되어야 합니다.', CDMSI);
			NE_AndroidChk.SetFocus;
			Exit;
		end;
		asParam[49] := sStmp;
		sStmp := '';
		if NE_CustChk1.Checked then sStmp := sStmp + '0';
		if NE_CustChk2.Checked then sStmp := sStmp + '1';
		if NE_CustChk3.Checked then sStmp := sStmp + '3';
		if NE_CustChk4.Checked then sStmp := sStmp + '4';
		if (NE_CidChk.Checked) and (sStmp = '') then
		begin
			GMessagebox('[미통화고객종료시]고객구분은 최소 1개 이상 선택되어야 합니다.', CDMSI);
			NE_CustChk1.SetFocus;
			Exit;
		end;
		asParam[50] := sStmp;
		sStmp := '';
		if NE_CustLevChk1.Checked then sStmp := sStmp + 'N';
		if NE_CustLevChk2.Checked then sStmp := sStmp + '0';
		if NE_CustLevChk3.Checked then sStmp := sStmp + '1';
		if NE_CustLevChk4.Checked then sStmp := sStmp + '2';
		if NE_CustLevChk5.Checked then sStmp := sStmp + '3';
		if NE_CustLevChk6.Checked then sStmp := sStmp + '4';
		if NE_CustLevChk7.Checked then sStmp := sStmp + '5';
		asParam[51] := sStmp;
		asParam[52] := NE_Edt_Cnt.Text;
		if NE_CustChk5.Checked then asParam[53] := 'y'
													 else asParam[53] := 'n';
		if NE_Install_No_Send.Checked then asParam[54] := 'y'
																	else asParam[54] := 'n';
	end else
	begin
		asParam[44] := 'n';

		asParam[45] := Trim(NE_Edt1.Text);
		if Trim(NE_Edt2.Text) = '' then asParam[46] := 'Http://'
															 else asParam[46] := Trim(NE_Edt2.Text);
		IF NE_OneDaychk.Checked then
		begin
			asParam[47] := 'y';
			asParam[48] := NE_DAY.Text;
		end	else
		begin
			asParam[47] := 'n';
			asParam[48] := '';
		end;
		asParam[49] := 'WAIE';
		asParam[50] := '013';
		asParam[51] := 'N12345';
		asParam[52] := NE_Edt_Cnt.Text;
		asParam[53] := 'y';
		if NE_Install_No_Send.Checked then asParam[54] := 'y'
																	else asParam[54] := 'n';
	end;

	if cxChkAppChu.Checked then asParam[55] := 'y'
												 else asParam[55] := 'n';

	if rg_Chu_ser1.Checked then
		asParam[56] := '0'
	else
	if rg_Chu_ser3.Checked then
		asParam[56] := FloatToStr(cxCurrencyEdit3.Value/100)
	else
	if rg_Chu_ser2.Checked then
		asParam[56] := StringReplace(cxCurrencyEdit3.Text, ',', '', [rfReplaceAll]);

	asParam[57] := StringReplace(cxCurrencyEdit5.Text, ',', '', [rfReplaceAll]);

	if (cxCheckBox4.checked) then //1회 최대사용금액 20170116 KHS
		asParam[58] := StringReplace(cxCurrencyEdit8.Text, ',', '', [rfReplaceAll])
	else
		asParam[58] := '';

	if rg_Chu_Bser1.Checked then
		asParam[59] := '0'
	else
	if rg_Chu_Bser3.Checked then
		asParam[59] := FloatToStr(cxCurrencyEdit9.Value/100)
	else
	if rg_Chu_Bser2.Checked then
		asParam[59] := StringReplace(cxCurrencyEdit9.Text, ',', '', [rfReplaceAll]);

  if chkBannerUseYn.Checked then asParam[60] := 'y'
                            else asParam[60] := 'n';

  asParam[61] := 'http://' + edtLink1.Text;

  asParam[62] := '';
  if Trim(edtFile1.Text) <> '' then
  begin
    sfN1 := '';
    sufN1 := '';
    sefN1 := '';

    if LblImage1.Hint <> '' then
    begin
      sDirName  := FormatDateTime('YYYYMM', Now);
      sFileName := FormatDateTime('DDHHNNSS', Now);
      AP_FTP_PATH := '/' + sDirName +'/';

      sfN1  := sFileName;
      if UpperCase(Rightstr(LblImage1.Hint, 3)) = 'JPG' then
      begin
        sufN1 := WORKDRIVE + sfN1 + '.JPG';
        sefN1 := sDirName + sfN1;
      end else
      if UpperCase(Rightstr(LblImage1.Hint, 3)) = 'PNG' then
      begin
        sufN1 := WORKDRIVE + sfN1 + '.PNG';
        sefN1 := sDirName + sfN1 + '_PNG';
      end else
      if UpperCase(Rightstr(LblImage1.Hint, 3)) = 'GIF' then
      begin
        sufN1 := WORKDRIVE + sfN1 + '.GIF';
        sefN1 := sDirName + sfN1 + '_GIF';
      end;
      proc_save_image(LblImage1.Hint, sfN1);
      asParam[62] := sefN1;

      if Not AccUpLoadFile(sufN1, '', '', '', '', AP_FTP_PATH, '0') then
         ShowMessage('배너이미지파일 UpLoad 중 오류 발생');
    end else
      asParam[62] := Trim(edtFile1.Text);
  end;
///////////////추가변경//////////////////////////////

	sTemp := '';
	for i := 1 to 62 do
  begin
		if i = 1 then sTemp := asParam[1]
		else
		begin
			sTemp := sTemp + '│' + asParam[i];
    end;
  end;

//  ShowMessage(sTemp);
	if not RequestBase(GetCallable05('SET_XE_APP_CONFIG_V2', 'mng_custapp.SET_XE_APP_CONFIG_V2', En_Coding(sTemp)), XmlData, ErrCode, ErrMsg) then
	begin
		GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSI);
    Exit;
  end;
	GMessagebox('앱/스마트 푸시설정이 완료 되었습니다.', CDMSI);
	btnSearchA1.Click;
end;

procedure TFrm_APP.rg_charge_ser1Click(Sender: TObject);
begin
  if rg_charge_ser1.Checked then
	begin
		cxLabel22.Caption := '';
    cxCurrencyEdit2.Value := 0;
  end else
  if rg_charge_ser2.Checked then cxLabel22.Caption := '원' else
  if rg_charge_ser3.Checked then cxLabel22.Caption := '%' ;

	if (rg_charge_ser3.Checked) and (cxCurrencyEdit2.Value > 100) then
	begin
		GMessagebox('정률은 설정값을 100을 초과 할수 없습니다.', CDMSI);
		cxCurrencyEdit2.Value := 100;
	end;

	if (rg_charge_ser2.Checked) and (cxCurrencyEdit2.Value < 101) and (cxCurrencyEdit2.Value <> 0) then
	begin
		GMessagebox('정액은 설정값을 100이하를 입력 할수 없습니다.', CDMSI);
		cxCurrencyEdit2.Value := 101;
	end;
end;

procedure TFrm_APP.cbKeynumber01Click(Sender: TObject);
var
	sName, sBrName, sHdNo, sBrNo: string;
	iIdx: Integer;
begin
	if cbKeynumber01.Tag = 1 then Exit;
	if (not UseAPPKeyNumberCHK) then Exit;

	if GT_USERIF.LV = '60' then
	begin
		if GT_SEL_BRNO.GUBUN <> '1' then
		begin
			if TcxComboBox(Sender).Text = '전체' then
			begin
				sName := '[' + GT_SEL_BRNO.HDNO + '] 전체';
				sHdNo := GT_SEL_BRNO.HDNO;
				sBrNo := '';
			end else
			begin
				sHdNo := GT_SEL_BRNO.HDNO;
				if (TcxComboBox(Sender).Properties.Items.Count > 0) and (TcxComboBox(Sender).ItemIndex > -1) then
				begin
					if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
						sBrNo := scb_DsBranchCode.Strings[scb_KeyNumber.IndexOf(TcxComboBox(Sender).Text)]
					else
						sBrNo := scb_DsBranchCode.Strings[TcxComboBox(Sender).ItemIndex]
				end else
				begin
					if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
						sBrNo := scb_DsBranchCode.Strings[scb_KeyNumber.IndexOf(TcxComboBox(Sender).Text)]
					else
						sBrNo := scb_DsBranchCode.Strings[TcxComboBox(Sender).ItemIndex];
				end;
				iIdx := scb_BranchCode.IndexOf(sBrNo);
				if iIdx >= 0 then
					sBrName := scb_BranchName[iIdx]
				else
					sBrName := '';
				sName := '[' + sHdNo + '] - [' + sBrNo + ']' + sBrName;
			end;
		end else
    begin
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := GT_SEL_BRNO.BrNo;
      iIdx := scb_BranchCode.IndexOf(sBrNo);
      if iIdx >= 0 then
        sBrName := scb_BranchName[iIdx]
      else
        sBrName := '';
			sName := '[' + sHdNo + '] - [' + sBrNo + ']' + sBrName;
    end;
  end else
  begin
    sHdNo := GT_SEL_BRNO.HDNO;
    sBrNo := GT_SEL_BRNO.BrNo;
		iIdx := scb_BranchCode.IndexOf(sBrNo);
		if iIdx >= 0 then
			sBrName := scb_BranchName[iIdx]
		else
      sBrName := '';
    sName := '[' + sHdNo + '] - [' + sBrNo + ']' + sBrName;
  end;

	if cxPageControl1.ActivePageIndex = -1 then cxPageControl1.ActivePageIndex := 0;

  case cxPageControl1.ActivePageIndex of
		0:
			begin
				lblSosokNameA1.Caption := sName;
				cxHdNo.Text := sHdNo;
				cxBrNo.Text := sBrNo;
				cxHdNo1.Text := sHdNo;
				cxBrNo1.Text := sBrNo;
				cxHdNo2.Text := sHdNo;
				cxBrNo2.Text := sBrNo;
				cxHdNo3.Text := sHdNo;
				cxBrNo3.Text := sBrNo;
				cxHdNo4.Text := sHdNo;
				cxBrNo4.Text := sBrNo;
				cxHdNo5.Text := sHdNo;
				cxBrNo5.Text := sBrNo;
				cxHdNo6.Text := sHdNo;
				cxBrNo6.Text := sBrNo;
				if (cbKeynumber01.ItemIndex = 0) and (not UseAPPKeyNumberCHK) then proc_init_AppSetup
																																			else btnSearchA1.Click;
			end;
		1:
			begin
				lblSosokNameA2.Caption := sName;
				cxHdNo1.Text := sHdNo;
				cxBrNo1.Text := sBrNo;
				if (cbKeynumberA2.ItemIndex >= 0) and (UseAPPKeyNumberCHK) then btnSearchA2.Click;
			end;
		2:
			begin
				lblSosokNameA3.Caption := sName;
				cxHdNo2.Text := sHdNo;
				cxBrNo2.Text := sBrNo;
				if (cbKeynumberA3.ItemIndex >= 0) and (UseAPPKeyNumberCHK) then btnSearchA3.Click;
			end;
		3:
			begin
				lblSosokNameA4.Caption := sName;
				cxHdNo3.Text := sHdNo;
				cxBrNo3.Text := sBrNo;
				CID_SMS_HISTORY_List.DataController.SetRecordCount(0);
				if (cbKeynumberA4.ItemIndex >= 0) and (UseAPPKeyNumberCHK) then btnSearchA4.Click;
			end;
		4:
			begin
				lblSosokNameA5.Caption := sName;
				cxHdNo4.Text := sHdNo;
				cxBrNo4.Text := sBrNo;
				CID_PUSH_HISTORY_List.DataController.SetRecordCount(0);
				if (cbKeynumberA5.ItemIndex >= 0) and (UseAPPKeyNumberCHK) then btnSearchA5.Click;
			end;
		5:
			begin
				lblSosokNameA6.Caption := sName;
				cxHdNo5.Text := sHdNo;
				cxBrNo5.Text := sBrNo;
				CID_SMS_SENT_STAT_List.DataController.SetRecordCount(0);
				if (cbKeynumberA6.ItemIndex >= 0) and (UseAPPKeyNumberCHK) then btnSearchA6.Click;
			end;
		6:
			begin
				lblSosokNameA7.Caption := sName;
				cxHdNo6.Text := sHdNo;
				cxBrNo6.Text := sBrNo;
				CID_PUSH_SENT_STAT_List.DataController.SetRecordCount(0);
				if (cbKeynumberA7.ItemIndex >= 0) and (UseAPPKeyNumberCHK) then btnSearchA7.Click;
			end;
  end;
end;

procedure TFrm_APP.cbKeynumberA2PropertiesChange(Sender: TObject);
begin
	cxGongList.DataController.SetRecordCount(0);
end;

procedure TFrm_APP.cbKeynumberA3PropertiesChange(Sender: TObject);
begin
	cxPushList.DataController.SetRecordCount(0);
end;

procedure TFrm_APP.rg_charge_ser8Click(Sender: TObject);
begin
	if rg_charge_ser8.Checked then Pnl_Cid.Enabled := True else
  if rg_charge_ser9.Checked then Pnl_Cid.Enabled := False;
end;

procedure TFrm_APP.rg_Chu_Aser1Click(Sender: TObject);
begin
  if rg_Chu_Aser1.Checked then
	begin
		cxLabel53.Caption := '';
		cxCurrencyEdit5.Value := 0;
	end else
	if rg_Chu_Aser2.Checked then cxLabel53.Caption := '원' else
	if rg_Chu_Aser3.Checked then cxLabel53.Caption := '%' ;

	if (rg_Chu_Aser3.Checked) and (cxCurrencyEdit5.Value > 100) then
	begin
		GMessagebox('정률은 설정값을 100을 초과 할수 없습니다.', CDMSI);
		cxCurrencyEdit5.Value := 100;
	end;

	if (rg_Chu_Aser2.Checked) and (cxCurrencyEdit5.Value < 101) and (cxCurrencyEdit5.Value <> 0) then
	begin
		GMessagebox('정액은 설정값을 100이하를 입력 할수 없습니다.', CDMSI);
		cxCurrencyEdit5.Value := 101;
	end;
end;

procedure TFrm_APP.rg_Chu_Bser1Click(Sender: TObject);
begin
	if rg_Chu_Bser1.Checked then
	begin
		cxLabel97.Caption := '';
		cxCurrencyEdit9.Value := 0;
	end else
	if rg_Chu_Bser2.Checked then cxLabel97.Caption := '원' else
	if rg_Chu_Bser3.Checked then cxLabel97.Caption := '%' ;

	if (rg_Chu_Bser3.Checked) and (cxCurrencyEdit9.Value > 100) then
	begin
		GMessagebox('정률은 설정값을 100을 초과 할수 없습니다.', CDMSI);
		cxCurrencyEdit9.Value := 100;
	end;

	if (rg_Chu_Bser2.Checked) and (cxCurrencyEdit9.Value < 101) and (cxCurrencyEdit9.Value <> 0) then
	begin
		GMessagebox('정액은 설정값을 100이하를 입력 할수 없습니다.', CDMSI);
		cxCurrencyEdit9.Value := 101;
	end;
end;

procedure TFrm_APP.rg_Chu_ser1Click(Sender: TObject);
begin
  if rg_Chu_ser1.Checked then
	begin
		cxLabel46.Caption := '';
		cxCurrencyEdit3.Value := 0;
	end else
	if rg_Chu_ser2.Checked then cxLabel46.Caption := '원' else
	if rg_Chu_ser3.Checked then cxLabel46.Caption := '%' ;

	if (rg_Chu_ser3.Checked) and (cxCurrencyEdit3.Value > 100) then
	begin
		GMessagebox('정률은 설정값을 100을 초과 할수 없습니다.', CDMSI);
		cxCurrencyEdit3.Value := 100;
	end;

	if (rg_Chu_ser2.Checked) and (cxCurrencyEdit3.Value < 101) and (cxCurrencyEdit3.Value <> 0) then
	begin
		GMessagebox('정액은 설정값을 100이하를 입력 할수 없습니다.', CDMSI);
		cxCurrencyEdit3.Value := 101;
	end;
end;

procedure TFrm_APP.FlatButton1Click(Sender: TObject);
begin
  PnlHelp.Visible := False;
end;

procedure TFrm_APP.img2Click(Sender: TObject);
begin
	if PnlHelp.Visible then PnlHelp.Visible := False
	else
	begin
		PnlHelp.Top := 361;
		PnlHelp.Left := 625;
		PnlHelp.Visible := True;
	end;
end;

procedure TFrm_APP.miOneMonthClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetWMControl(StDt, EdDt, 2);
end;

procedure TFrm_APP.miOneWeekClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetWMControl(StDt, EdDt, 0);
end;

procedure TFrm_APP.miTwoMonthClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetWMControl(StDt, EdDt, 3);
end;

procedure TFrm_APP.miTwoWeekClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetWMControl(StDt, EdDt, 1);
end;

procedure TFrm_APP.cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) in [8, 13, 48..57, 17, 22] then
  else
    Key := #0;
end;

procedure TFrm_APP.Edt_AppTitleKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_APP.btn6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	pm_Date.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_APP.btnExcelA2Click(Sender: TObject);
begin
  if cxGongList.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.CMP_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[회사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '앱게시물관리.xls';
  Frm_Main.sgRpExcel := Format('고객어플>앱게시물관리]%s건', [GetMoneyStr(cxGongList.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA2;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_APP.btnExcelA3Click(Sender: TObject);
begin
  if cxPushList.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.CMP_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[회사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := 'SMS발송내역.xls';
  Frm_Main.sgRpExcel := Format('고객어플>앱푸시관리]%s건', [GetMoneyStr(cxPushList.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA3;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_APP.btnExcelA4Click(Sender: TObject);
begin
  if CID_SMS_HISTORY_List.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.CMP_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[회사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := 'SMS발송내역.xls';
  Frm_Main.sgRpExcel := Format('고객어플>SMS발송내역]%s건', [GetMoneyStr(CID_SMS_HISTORY_List.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA4;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_APP.btnExcelA5Click(Sender: TObject);
begin
  if CID_PUSH_HISTORY_List.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.CMP_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[회사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := 'PUSH발송내역.xls';
  Frm_Main.sgRpExcel := Format('고객어플>PUSH발송내역]%s건', [GetMoneyStr(CID_PUSH_HISTORY_List.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA5;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_APP.btnExcelA6Click(Sender: TObject);
begin
  if CID_SMS_SENT_STAT_List.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.CMP_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[회사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := 'SMS발송일별통계.xls';
  Frm_Main.sgRpExcel := Format('고객어플>SMS발송일별통계]%s건', [GetMoneyStr(CID_SMS_SENT_STAT_List.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA6;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_APP.btnExcelA7Click(Sender: TObject);
begin
  if CID_PUSH_SENT_STAT_List.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.CMP_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[회사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '스마트푸시발송일별통계.xls';
  Frm_Main.sgRpExcel := Format('고객어플>스마트푸시발송일별통계]%s건', [GetMoneyStr(CID_PUSH_SENT_STAT_List.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA7;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_APP.btnHelpCloseA2Click(Sender: TObject);
begin
  Pnl_WebA2.Visible := False;
end;

procedure TFrm_APP.btnHelpCloseA3Click(Sender: TObject);
begin
  Pnl_WebA3.Visible := False;
end;

procedure TFrm_APP.BtnImageDClick(Sender: TObject);
var
  f: file of Byte;
  size: Longint;
  sFileName: string;

	oJpg: TJpegImage;
	oPng: TPngImage;
	oBmp: TBitmap;
begin
	if OpenPictureDialog1.Execute then
	begin
		sFileName := OpenPictureDialog1.FileName;
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
		edtFile1.Text := sFileName;
		LblImage1.Hint := sFileName;

//		if UpperCase(Rightstr(sFileName, 3)) = 'PNG' then
//    begin
//    	oJpg := TJpegImage.Create;
//    	oBmp := TBitmap.Create;
//    	oPng := TPngImage.Create;
//      try
//   			oPng.LoadFromFile(sFileName);
//	  		oBmp.Assign(oPng);
//  			oJpg.Assign(oBmp);
//        WebBanner.WebPicture.LoadFrom (oJpg);
//      finally
//     		oJpg.Free;
//    		oBmp.Free;
//    		oPng.Free;
//      end;
//    end else
//    begin
//      WebBanner.WebPicture.LoadFromFile(sFileName);
//    end;
	end;
end;

procedure TFrm_APP.BtnImageDelDClick(Sender: TObject);
begin
  edtFile1.Clear;
  LblImage1.Hint := '';
//  WebBanner.WebPicture := Nil;
end;

procedure TFrm_APP.btnInsertA2Click(Sender: TObject);
var msg, sBrName : String;
begin
  if Trim(cxBrNo1.Text) = '' then
  begin
    GMessagebox('앱 게시물 등록은 지사를 선택하셔야 합니다.', CDMSI);
    Exit;
  end;

	if (cbKeynumberA2.ItemIndex = 0) and (not UseAPPKeyNumberCHK) then Exit;

  if getKeyNumberCustUseYn(cxBrNo1.Text, cbKeynumberA2.Text) then
  begin
    if ( not Assigned(Frm_APP01) ) Or ( Frm_APP01 = Nil ) then Frm_APP01 := TFrm_APP01.Create(Self);

    Frm_APP01.cxBrNo.Text   := cxBrNo1.Text;
    Frm_APP01.cxKeyNum.Text := cbKeynumberA2.Text;
    Frm_APP01.pnlTitle.Hint := 'I';
    Frm_APP01.pnlTitle.Caption := '  앱 게시물 등록 및 푸시 발송';
    Frm_APP01.pnlTitle.Color := $00D9E6D2;
    Frm_APP01.Btn_SaveOff.Caption := '저장후닫기';
    Frm_APP01.Btn_SaveNext.Caption := '저장후푸시발송';
    Frm_APP01.Btn_Init.Visible := True;
    Frm_App01.WebBrowser1.Tag := 0;
    Frm_APP01.Edt_Init;
    Frm_APP01.pnl_Init(1);
    Frm_APP01.Pnl_Web.Visible := False;
    Frm_APP01.Show;
  end else
  begin
    msg := '[%s(%s)] 지사 [%s] 대표번호는 고객 어플을 사용하지 않는 지사입니다. ';
    sBrName := GetBrName(cxBrNo1.Text);
		GMessagebox(Format(msg, [cxBrNo1.Text, sBrName, cbKeynumberA2.Text]), CDMSI);
  end;
end;

procedure TFrm_APP.img1Click(Sender: TObject);
begin
	if PnlHelp.Visible then PnlHelp.Visible := False
	else
	begin
		PnlHelp.Top := 379;
		PnlHelp.Left := 625;
		PnlHelp.Visible := True;
	end;
end;

procedure TFrm_APP.CE_CidChkClick(Sender: TObject);
begin
	if not CE_CidChk.Checked then
	begin
		CE_Edt1.Enabled := false;
		CE_Edt2.Enabled := false;
		CE_OneDaychk.Enabled := false;
		CE_Day.Enabled := false;
		CE_ALLDaychk.Enabled := false;
		CE_WifiChk.Enabled := false;
		CE_AndroidChk.Enabled := false;
		CE_IphoneChk.Enabled := false;
		CE_EtcChk.Enabled := false;
		CE_CustChk1.Enabled := false;
		CE_CustChk2.Enabled := false;
		CE_CustChk3.Enabled := false;
		CE_CustChk4.Enabled := false;
		CE_CustLevChk1.Enabled := false;
		CE_CustLevChk2.Enabled := false;
		CE_CustLevChk3.Enabled := false;
		CE_CustLevChk4.Enabled := false;
		CE_CustLevChk5.Enabled := false;
		CE_CustLevChk6.Enabled := false;
		CE_CustLevChk7.Enabled := false;
		CE_Edt_Cnt.Enabled := false;
		CE_CustChk5.Enabled := false;
		cxLabel64.Enabled := false;
		CE_Install_No_Send.Enabled := False;
	end else
	begin
		CE_Edt1.Enabled := True;
		CE_Edt2.Enabled := True;
		CE_OneDaychk.Enabled := True;
		CE_Day.Enabled := True;
		CE_ALLDaychk.Enabled := True;
		CE_WifiChk.Enabled := True;
		CE_AndroidChk.Enabled := True;
		CE_IphoneChk.Enabled := True;
		CE_EtcChk.Enabled := True;
		CE_CustChk1.Enabled := True;
		CE_CustChk2.Enabled := True;
		CE_CustChk3.Enabled := True;
		CE_CustChk4.Enabled := True;
		CE_CustLevChk1.Enabled := True;
		CE_CustLevChk2.Enabled := True;
		CE_CustLevChk3.Enabled := True;
		CE_CustLevChk4.Enabled := True;
		CE_CustLevChk5.Enabled := True;
		CE_CustLevChk6.Enabled := True;
		CE_CustLevChk7.Enabled := True;
		CE_Edt_Cnt.Enabled := True;
		CE_CustChk5.Enabled := True;
		cxLabel64.Enabled := True;
		CE_Install_No_Send.Enabled := True;
	end;
end;

procedure TFrm_APP.NE_CidChkClick(Sender: TObject);
begin
	if not NE_CidChk.Checked then
	begin
		NE_Edt1.Enabled := false;
		NE_Edt2.Enabled := false;
		NE_OneDaychk.Enabled := false;
		NE_Day.Enabled := false;
		NE_ALLDaychk.Enabled := false;
		NE_WifiChk.Enabled := false;
		NE_AndroidChk.Enabled := false;
		NE_IphoneChk.Enabled := false;
		NE_EtcChk.Enabled := false;
		NE_CustChk1.Enabled := false;
		NE_CustChk2.Enabled := false;
		NE_CustChk3.Enabled := false;
		NE_CustChk4.Enabled := false;
		NE_CustLevChk1.Enabled := false;
		NE_CustLevChk2.Enabled := false;
		NE_CustLevChk3.Enabled := false;
		NE_CustLevChk4.Enabled := false;
		NE_CustLevChk5.Enabled := false;
		NE_CustLevChk6.Enabled := false;
		NE_CustLevChk7.Enabled := false;
		NE_Edt_Cnt.Enabled := false;
		NE_CustChk5.Enabled := false;
		cxLabel66.Enabled := false;
		NE_Install_No_Send.Enabled := False;
	end else
	begin
		NE_Edt1.Enabled := True;
		NE_Edt2.Enabled := True;
		NE_OneDaychk.Enabled := True;
		NE_Day.Enabled := True;
		NE_ALLDaychk.Enabled := True;
		NE_WifiChk.Enabled := True;
		NE_AndroidChk.Enabled := True;
		NE_IphoneChk.Enabled := True;
		NE_EtcChk.Enabled := True;
		NE_CustChk1.Enabled := True;
		NE_CustChk2.Enabled := True;
		NE_CustChk3.Enabled := True;
		NE_CustChk4.Enabled := True;
		NE_CustLevChk1.Enabled := True;
		NE_CustLevChk2.Enabled := True;
		NE_CustLevChk3.Enabled := True;
		NE_CustLevChk4.Enabled := True;
		NE_CustLevChk5.Enabled := True;
		NE_CustLevChk6.Enabled := True;
		NE_CustLevChk7.Enabled := True;
		NE_Edt_Cnt.Enabled := True;
		NE_CustChk5.Enabled := True;
		cxLabel66.Enabled := True;
		NE_Install_No_Send.Enabled := True;
	end;
end;

procedure TFrm_APP.OF_CidChkClick(Sender: TObject);
begin
	if not OF_CidChk.Checked then
	begin
		OF_Edt1.Enabled := false;
		OF_Edt2.Enabled := false;
		OF_OneDaychk.Enabled := false;
		OF_Day.Enabled := false;
		OF_ALLDaychk.Enabled := false;
		OF_WifiChk.Enabled := false;
		OF_AndroidChk.Enabled := false;
		OF_IphoneChk.Enabled := false;
		OF_EtcChk.Enabled := false;
		OF_CustChk1.Enabled := false;
		OF_CustChk2.Enabled := false;
		OF_CustChk3.Enabled := false;
		OF_CustChk4.Enabled := false;
		OF_CustLevChk1.Enabled := false;
		OF_CustLevChk2.Enabled := false;
		OF_CustLevChk3.Enabled := false;
		OF_CustLevChk4.Enabled := false;
		OF_CustLevChk5.Enabled := false;
		OF_CustLevChk6.Enabled := false;
		OF_CustLevChk7.Enabled := false;
		OF_Edt_Cnt.Enabled := false;
		OF_CustChk5.Enabled := false;
		cxLabel61.Enabled := false;
		OF_Install_No_Send.Enabled := False; 
	end else
	begin
		OF_Edt1.Enabled := True;
		OF_Edt2.Enabled := True;
		OF_OneDaychk.Enabled := True;
		OF_Day.Enabled := True;
		OF_ALLDaychk.Enabled := True;
		OF_WifiChk.Enabled := True;
		OF_AndroidChk.Enabled := True;
		OF_IphoneChk.Enabled := True;
		OF_EtcChk.Enabled := True;
		OF_CustChk1.Enabled := True;
		OF_CustChk2.Enabled := True;
		OF_CustChk3.Enabled := True;
		OF_CustChk4.Enabled := True;
		OF_CustLevChk1.Enabled := True;
		OF_CustLevChk2.Enabled := True;
		OF_CustLevChk3.Enabled := True;
		OF_CustLevChk4.Enabled := True;
		OF_CustLevChk5.Enabled := True;
		OF_CustLevChk6.Enabled := True;
		OF_CustLevChk7.Enabled := True;
		OF_Edt_Cnt.Enabled := True;
		OF_CustChk5.Enabled := True;
		cxLabel61.Enabled := True;
		OF_Install_No_Send.Enabled := True;
	end;
end;

procedure TFrm_APP.GetAPPBrTelList(ABrNo: string; var AList: TStringList);
var
	I: Integer;
	sTmp : TStringList;
begin
	Try
		TBrno := '';
		sTmp := TStringList.Create;
		if scb_HeadCode.IndexOf(ABrNo) = -1 then             //지사선택
		begin
			for I := 0 to scb_CustAPPUseYn.Count - 1 do
			begin
				GetTextSeperationEx('|', scb_CustAPPUseYn.Strings[i], sTmp);
				if sTmp[2] = 'y' then
				begin
					if sTmp[0] = ABrNo then
					begin
						if Trim(sTmp[1]) <> '' then
						begin
							AList.Add(sTmp[1]);
							if TBrno = '' then TBrno := sTmp[0];
						end;
					end;
				end;
			end;
		end	else
		begin
			if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			begin
				for I := 0 to scb_CustAPPUseYn.Count - 1 do
				begin
					GetTextSeperationEx('|', scb_CustAPPUseYn.Strings[i], sTmp);
					if sTmp[2] = 'y' then
					begin
						if sTmp[3] = ABrNo then
						begin
							if Trim(sTmp[1]) <> '' then
							begin
								AList.Add(sTmp[1]);
								if TBrno = '' then TBrno := sTmp[0];
							end;
						end;
					end;
				end;
			end	else
			begin
				for I := 0 to scb_CustAPPUseYn.Count - 1 do
				begin
					GetTextSeperationEx('|', scb_CustAPPUseYn.Strings[i], sTmp);
					if sTmp[2] = 'y' then
					begin
						if Trim(sTmp[1]) <> '' then
						begin
							AList.Add(sTmp[1]);
							if TBrno = '' then TBrno := sTmp[0];
						end;
					end;
				end;
			end;
		end;
	finally
		sTmp.Free;
	end;
end;

procedure TFrm_APP.proc_init_enable(AABLE: Boolean);
begin
	btnSearchA1.Enabled := AABLE;
	btnModifyA1.Enabled := AABLE;

	Edt_AppTitle.Enabled := AABLE;
	rg_charge_ser1.Enabled := AABLE;
	rg_charge_ser2.Enabled := AABLE;
	rg_charge_ser3.Enabled := AABLE;
	cxCurrencyEdit2.Enabled := AABLE;

	rg_charge_Cser1.Enabled := AABLE;
	rg_charge_Cser2.Enabled := AABLE;
	rg_charge_Cser3.Enabled := AABLE;
	cxCurrencyEdit6.Enabled := AABLE;

	cxCheckBox1.Enabled := AABLE;
	rg_charge_Aser1.Enabled := AABLE;
	rg_charge_Aser2.Enabled := AABLE;
	rg_charge_Aser3.Enabled := AABLE;
	cxCurrencyEdit4.Enabled := AABLE;

	cxCheckBox3.Enabled := AABLE;
	cxRadioButton1.Enabled := AABLE;
	cxRadioButton2.Enabled := AABLE;
	cxCurrencyEdit7.Enabled := AABLE;

	cxCheckBox4.Enabled := AABLE;  //1일 최대사용금액 20170111 KHS
	cxCurrencyEdit8.Enabled := AABLE;

	cxChkAppChu.Enabled := AABLE;
	rg_Chu_ser1.Enabled := AABLE;
  rg_Chu_ser2.Enabled := AABLE;
  rg_Chu_ser3.Enabled := AABLE;
	cxCurrencyEdit3.Enabled := AABLE;
	cxCheckBox2.Enabled := AABLE;
  rg_Chu_Aser1.Enabled := AABLE;
  rg_Chu_Aser2.Enabled := AABLE;
  rg_Chu_Aser3.Enabled := AABLE;
	cxCurrencyEdit5.Enabled := AABLE;
	rg_Chu_Bser1.Enabled := AABLE;
	rg_Chu_Bser2.Enabled := AABLE;
	rg_Chu_Bser3.Enabled := AABLE;
	cxCurrencyEdit9.Enabled := AABLE;

	rg_charge_ser4.Enabled := AABLE;
	rg_charge_ser6.Enabled := AABLE;
	Se_Key_Number1.Enabled := AABLE;
	cxCurrencyEdit1.Enabled := AABLE;
	rg_charge_ser6.Enabled := AABLE;
	rg_charge_ser7.Enabled := AABLE;
	lb_sel_map.Enabled := AABLE;
	btn3.Enabled := AABLE;
	btn5.Enabled := AABLE;
	btn4.Enabled := AABLE;
	lb_map.Enabled := AABLE;
	Cb_AppChk1.Enabled := AABLE;
	Cb_AppChk2.Enabled := AABLE;
	rg_charge_ser8.Enabled := AABLE;
	rg_charge_ser9.Enabled := AABLE;
	rg_charge_ser11.Enabled := AABLE;
	rg_charge_ser10.Enabled := AABLE;

	OF_CidChk.Enabled := AABLE;
	OF_Edt1.Enabled := AABLE;
	OF_Edt2.Enabled := AABLE;
	OF_OneDaychk.Enabled := AABLE;
	OF_Day.Enabled := AABLE;
	OF_ALLDaychk.Enabled := AABLE;
	OF_WifiChk.Enabled := AABLE;
	OF_AndroidChk.Enabled := AABLE;
	OF_IphoneChk.Enabled := AABLE;
	OF_EtcChk.Enabled := AABLE;
	OF_CustChk1.Enabled := AABLE;
	OF_CustChk2.Enabled := AABLE;
	OF_CustChk3.Enabled := AABLE;
	OF_CustChk4.Enabled := AABLE;
	OF_CustLevChk1.Enabled := AABLE;
	OF_CustLevChk2.Enabled := AABLE;
	OF_CustLevChk3.Enabled := AABLE;
	OF_CustLevChk4.Enabled := AABLE;
	OF_CustLevChk5.Enabled := AABLE;
	OF_CustLevChk6.Enabled := AABLE;
	OF_CustLevChk7.Enabled := AABLE;
	OF_Edt_Cnt.Enabled := AABLE;
	cxLabel64.Enabled := AABLE;
	OF_CustChk5.Enabled := AABLE;
	OF_Install_No_Send.Enabled := AABLE;
	
	CE_CidChk.Enabled := AABLE;
	CE_Edt1.Enabled := AABLE;
	CE_Edt2.Enabled := AABLE;
	CE_OneDaychk.Enabled := AABLE;
	CE_Day.Enabled := AABLE;
	CE_ALLDaychk.Enabled := AABLE;
	CE_WifiChk.Enabled := AABLE;
	CE_AndroidChk.Enabled := AABLE;
	CE_IphoneChk.Enabled := AABLE;
	CE_EtcChk.Enabled := AABLE;
	CE_CustChk1.Enabled := AABLE;
	CE_CustChk2.Enabled := AABLE;
	CE_CustChk3.Enabled := AABLE;
	CE_CustChk4.Enabled := AABLE;
	CE_CustLevChk1.Enabled := AABLE;
	CE_CustLevChk2.Enabled := AABLE;
	CE_CustLevChk3.Enabled := AABLE;
	CE_CustLevChk4.Enabled := AABLE;
	CE_CustLevChk5.Enabled := AABLE;
	CE_CustLevChk6.Enabled := AABLE;
	CE_CustLevChk7.Enabled := AABLE;
	CE_Edt_Cnt.Enabled := AABLE;
	cxLabel64.Enabled := AABLE;
	CE_CustChk5.Enabled := AABLE;
	CE_Install_No_Send.Enabled := AABLE;

	NE_CidChk.Enabled := AABLE;
	NE_Edt1.Enabled := AABLE;
	NE_Edt2.Enabled := AABLE;
	NE_OneDaychk.Enabled := AABLE;
	NE_Day.Enabled := AABLE;
	NE_ALLDaychk.Enabled := AABLE;
	NE_WifiChk.Enabled := AABLE;
	NE_AndroidChk.Enabled := AABLE;
	NE_IphoneChk.Enabled := AABLE;
	NE_EtcChk.Enabled := AABLE;
	NE_CustChk1.Enabled := AABLE;
	NE_CustChk2.Enabled := AABLE;
	NE_CustChk3.Enabled := AABLE;
	NE_CustChk4.Enabled := AABLE;
	NE_CustLevChk1.Enabled := AABLE;
	NE_CustLevChk2.Enabled := AABLE;
	NE_CustLevChk3.Enabled := AABLE;
	NE_CustLevChk4.Enabled := AABLE;
	NE_CustLevChk5.Enabled := AABLE;
	NE_CustLevChk6.Enabled := AABLE;
	NE_CustLevChk7.Enabled := AABLE;
	NE_Edt_Cnt.Enabled := AABLE;
	cxLabel66.Enabled := AABLE;
	NE_CustChk5.Enabled := AABLE;
	NE_Install_No_Send.Enabled := AABLE;
end;

procedure TFrm_APP.rg_charge_ser11Click(Sender: TObject);
begin
	lbl4.Visible := True;
	if rg_charge_ser11.Checked then
	begin
		if edt1.Text  = '' then
			lbl4.Caption := '[ 설정된 스마트 푸시 건당 과금금액이 없습니다. 문의 : 1688-1688]'
		else
			lbl4.Caption := '[ 스마트 푸시 건당 과금금액은 [  '+ edt1.Text + ' ] 원 입니다.]';
	end;
end;

procedure TFrm_APP.rg_charge_Aser1Click(Sender: TObject);
begin
	if rg_charge_Aser1.Checked then
	begin
		cxLabel23.Caption := '';
		cxCurrencyEdit4.Value := 0;
	end else
	if rg_charge_Aser2.Checked then cxLabel23.Caption := '원' else
	if rg_charge_Aser3.Checked then cxLabel23.Caption := '%' ;
	
	if (rg_charge_Aser3.Checked) and (cxCurrencyEdit4.Value > 100) then
	begin
		GMessagebox('정률은 설정값을 100을 초과 할수 없습니다.', CDMSI);
		cxCurrencyEdit4.Value := 100;
	end;

	if (rg_charge_Aser2.Checked) and (cxCurrencyEdit4.Value < 101) and (cxCurrencyEdit4.Value <> 0) then
	begin
		GMessagebox('정액은 설정값을 100이하를 입력 할수 없습니다.', CDMSI);
		cxCurrencyEdit4.Value := 101;
	end;
end;

procedure TFrm_APP.rg_charge_Cser1Click(Sender: TObject);
begin
  if rg_charge_Cser1.Checked then
	begin
		cxLabel71.Caption := '';
    cxCurrencyEdit6.Value := 0;
  end else
  if rg_charge_Cser2.Checked then cxLabel71.Caption := '원' else
  if rg_charge_Cser3.Checked then cxLabel71.Caption := '%' ;

	if (rg_charge_Cser3.Checked) and (cxCurrencyEdit6.Value > 100) then
	begin
		GMessagebox('정률은 설정값을 100을 초과 할수 없습니다.', CDMSI);
		cxCurrencyEdit6.Value := 100;
	end;

	if (rg_charge_Cser2.Checked) and (cxCurrencyEdit6.Value < 101) and (cxCurrencyEdit6.Value <> 0) then
	begin
		GMessagebox('정액은 설정값을 100이하를 입력 할수 없습니다.', CDMSI);
		cxCurrencyEdit6.Value := 101;
	end;
end;

procedure TFrm_APP.rg_charge_ser10Click(Sender: TObject);
begin
	lbl4.Visible := True;
	if rg_charge_ser10.Checked then
	begin
		if edt2.Text  = '' then
			lbl4.Caption := '[ 설정된 콜마너 SMS 건당 과금금액이 없습니다. 문의 : 1688-1688]'
		else
			lbl4.Caption := '[ 콜마너 SMS 건당 과금금액은 [  '+ edt2.Text + ' ] 원 입니다.]';
	end;
end;

procedure TFrm_APP.OF_OneDaychkClick(Sender: TObject);
begin
	if OF_OneDaychk.Checked then OF_DAY.Enabled := True
	                        else OF_DAY.Enabled := False;
end;

procedure TFrm_APP.CE_OneDaychkClick(Sender: TObject);
begin
	if CE_OneDaychk.Checked then CE_DAY.Enabled := True
	                        else CE_DAY.Enabled := False;
end;

procedure TFrm_APP.CID_PUSH_SENT_STAT_ListBands1HeaderClick(Sender: TObject);
var
	i: Integer;
	sTemp: string;
begin
	try
		for i := 0 to CID_PUSH_SENT_STAT_List.ColumnCount - 1 do
		begin
			if i <> 0 then
			begin
				CID_PUSH_SENT_STAT_List.Columns[i].SortIndex := -1;
				CID_PUSH_SENT_STAT_List.Columns[i].SortOrder := soNone;
      end;
    end;
		if (CID_PUSH_SENT_STAT_List.Columns[0].SortOrder = soNone) or
			(CID_PUSH_SENT_STAT_List.Columns[0].SortOrder =
      soDescending) then
			CID_PUSH_SENT_STAT_List.Columns[0].SortOrder := soAscending
    else
			if CID_PUSH_SENT_STAT_List.Columns[0].SortOrder = soAscending then
			CID_PUSH_SENT_STAT_List.Columns[0].SortOrder := soDescending;
		CID_PUSH_SENT_STAT_List.Columns[0].SortIndex := 0;
		CID_PUSH_SENT_STAT_List.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
			sTemp := 'Tfrm_APP.CID_PUSH_SENT_STAT_ListHeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_APP.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := IntToStr(iPUSHSum1);
end;

procedure TFrm_APP.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems10GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := IntToStr(iPUSHSum9);
end;

procedure TFrm_APP.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems11GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := IntToStr(iPUSHSum14);
end;

procedure TFrm_APP.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems12GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := IntToStr(iPUSHSum5);
end;

procedure TFrm_APP.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems13GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := IntToStr(iPUSHSum10);
end;

procedure TFrm_APP.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems14GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := IntToStr(iPUSHSum15);
end;

procedure TFrm_APP.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems15GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := IntToStr(iPUSHCNTSum);
end;

procedure TFrm_APP.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems16GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := IntToStr(IPUSHAMTSum);
end;

procedure TFrm_APP.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := IntToStr(iPUSHSum2);
end;

procedure TFrm_APP.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems2GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := IntToStr(iPUSHSum7);
end;

procedure TFrm_APP.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems3GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := IntToStr(iPUSHSum12);
end;

procedure TFrm_APP.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems4GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := IntToStr(iPUSHSum3);
end;

procedure TFrm_APP.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems5GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := IntToStr(iPUSHSum6);
end;

procedure TFrm_APP.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems6GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := IntToStr(iPUSHSum11);
end;

procedure TFrm_APP.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems7GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := IntToStr(iPUSHSum8);
end;

procedure TFrm_APP.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems8GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := IntToStr(iPUSHSum13);
end;

procedure TFrm_APP.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems9GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := IntToStr(iPUSHSum4);
end;

procedure TFrm_APP.CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := IntToStr(ismsSum1);
end;

procedure TFrm_APP.CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := IntToStr(ismsSum4);
end;

procedure TFrm_APP.CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems2GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := IntToStr(ismsSum7);
end;

procedure TFrm_APP.CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems3GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := IntToStr(ismsSum2);
end;

procedure TFrm_APP.CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems4GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := IntToStr(ismsSum5);
end;

procedure TFrm_APP.CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems5GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := IntToStr(ismsSum8);
end;

procedure TFrm_APP.CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems6GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := IntToStr(ismsSum3);
end;

procedure TFrm_APP.CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems7GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := IntToStr(ismsSum6);
end;

procedure TFrm_APP.CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems8GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := IntToStr(ismsSum9);
end;

procedure TFrm_APP.NE_OneDaychkClick(Sender: TObject);
begin
	if NE_OneDaychk.Checked then NE_DAY.Enabled := True
	                        else NE_DAY.Enabled := False;
end;

function TFrm_APP.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

  Case cxPageControl1.ActivePageIndex of
  1 : begin
        AStDt := cxDtStartA2;
      	AEdDt := cxDtEndA2;
      end;
  2 : begin
        AStDt := cxDtStartA3;
      	AEdDt := cxDtEndA3;
      end;
  3 : begin
        AStDt := cxDtStartA4;
        AEdDt := cxDtEndA4;
      end;
  4 : begin
        AStDt := cxDtStartA5;
      	AEdDt := cxDtEndA5;
      end;
  end;
end;

procedure TFrm_APP.proc_GongjiList;
var
  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	I, ErrCode, iCnt, iRow : Integer;
	j : integer;
begin
  if Trim(cxBrNo1.Text) = '' then
  begin
    GMessagebox('앱 게시물 조회는 지사를 선택하셔야 합니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('앱게시물관리') then Exit;

  Param := cxBrNo1.Text + '│' + cbKeynumberA2.Text + '│' + FormatDateTime('YYYYMMDD', cxDtStartA2.Date) + '│' + FormatDateTime('YYYYMMDD', cxDtEndA2.Date);

	try
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel05('GET_APP_NOTICE_LIST', 'mng_custapp.get_app_notice_list', '1000', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('게시물 리스트 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
				FreeAndNil(slList);
				Exit;
			end;

			xdom := ComsDomDocument.Create;
			try
				iCnt := 1;
				Frm_Flash.cxPBar1.Properties.Max := slList.Count;
				Frm_Flash.cxPBar1.Position := 0;
				cxGongList.DataController.SetRecordCount(0);
				cxGongList.BeginUpdate;
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
								// 0 게시물번호, 1 구분 [0:일반공지, 1:고정공지, 2:이벤트 3:미팝업공지], 2 타입(0.텍스트, 1.이미지,  2.URL), 3 제목, 4 내용, 5 등록자이름, 6 등록일시, 7 관련푸시발송여부, 8 게시여부(yn), 9 게시종료일(YYYYMMDD), 10 팝업여부(yn) 11 이미지파일명, 12 Text , 13 URL
								GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);

								iCnt := cxGongList.DataController.AppendRecord;
								cxGongList.DataController.Values[iCnt, 00] := iRow + 1;
								cxGongList.DataController.Values[iCnt, 01] := ls_Rcrd[0];
								if ls_Rcrd[1] = '0' then cxGongList.DataController.Values[iCnt, 02] := '일반공지' else
								if ls_Rcrd[1] = '1' then cxGongList.DataController.Values[iCnt, 02] := '고정공지' else
								if ls_Rcrd[1] = '2' then cxGongList.DataController.Values[iCnt, 02] := '이벤트'   ;//else
			//          if ls_Rcrd[1] = '3' then cxGongList.DataController.Values[iCnt, 02] := '미팝업공지';
								cxGongList.DataController.Values[iCnt, 03] := ls_Rcrd[3];

								if ls_Rcrd[2] = '0' then
								begin
									cxGongList.DataController.Values[iCnt, 04] := '텍스트';
									cxGongList.DataController.Values[iCnt, 05] := En_Coding(ReplaceAll(ls_Rcrd[4], '<Br>', #10#13));
									cxGongList.DataController.Values[iCnt, 12] := ls_Rcrd[4];
								end else
								if ls_Rcrd[2] = '1' then
								begin
									cxGongList.DataController.Values[iCnt, 04] := '이미지';
									cxGongList.DataController.Values[iCnt, 05] := '이미지보기';
									cxGongList.DataController.Values[iCnt, 12] := ls_Rcrd[4];
								end else
								if ls_Rcrd[2] = '2' then
								begin
									cxGongList.DataController.Values[iCnt, 04] := 'URL';
									cxGongList.DataController.Values[iCnt, 05] := ls_Rcrd[4];
									cxGongList.DataController.Values[iCnt, 12] := ls_Rcrd[4];
								end;

								if ( Trim(ls_Rcrd[9]) = 'null' ) Or ( Trim(ls_Rcrd[9]) = '' ) then
									cxGongList.DataController.Values[iCnt, 06] := ''
								else
									cxGongList.DataController.Values[iCnt, 06] := Copy(ls_Rcrd[9], 1, 10);

								cxGongList.DataController.Values[iCnt, 07] := ls_Rcrd[5];
								cxGongList.DataController.Values[iCnt, 08] := ls_Rcrd[6];

								if ls_Rcrd[7] = 'y' then
								begin
									cxGongList.DataController.Values[iCnt,10] := '상세내역';
								end else
								begin
									cxGongList.DataController.Values[iCnt, 10] := '내역없음';
								end;

								if ls_Rcrd[8] = 'y' then
								begin
									cxGongList.DataController.Values[iCnt, 11] := '삭제';
								end else
								begin
									cxGongList.DataController.Values[iCnt, 11] := '게시';
								end;

								cxGongList.DataController.Values[iCnt, 13] := ls_Rcrd[10];
								if ls_Rcrd[10] = 'y' then cxGongList.DataController.Values[iCnt, 14] := '미팝업'
																  	 else cxGongList.DataController.Values[iCnt, 14] := '팝업';

			//          cxGongList.DataController.Values[iCnt, 15] := '수정';
								if ls_Rcrd.Count > 11 then
								begin
									cxGongList.DataController.Values[iCnt, 16] := ls_Rcrd[11];    // ImageFile
									cxGongList.DataController.Values[iCnt, 17] := ReplaceAll(ls_Rcrd[12], '¶', #13#10);    // Text
									cxGongList.DataController.Values[iCnt, 18] := ls_Rcrd[13];    // URL
								end;
								Inc(iRow);
							end;
						finally
							ls_Rcrd.Free;
						end;
					end;
				end;
			finally
				xdom := Nil;
				cxGongList.EndUpdate;
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

procedure TFrm_APP.proc_PushList( sGongNo : string);
var
  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
  I, ErrCode, iCnt, iRow : Integer;
	j : integer;
begin
  if Trim(cxBrNo2.Text) = '' then
  begin
    GMessagebox('앱 푸시 조회는 지사를 선택하셔야 합니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('앱푸시관리') then Exit;

  if sGongNo = '' then
		Param := cxBrNo2.Text + '│' + cbKeynumberA3.Text + '│' + FormatDateTime('YYYYMMDD', cxDtStartA3.Date) + '│' + FormatDateTime('YYYYMMDD', cxDtEndA3.Date) + '│'
  else
    Param := cxBrNo2.Text + '│' + cbKeynumberA3.Text + '│' + FormatDateTime('YYYYMMDD', cxDtStartA3.Date) + '│' + FormatDateTime('YYYYMMDD', cxDtEndA3.Date) + '│' + sGongNo;

	try
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel05('GET_APP_NOTICE_PUSH_LIST', 'mng_custapp.get_app_notice_push_list', '1000', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('푸시 리스트 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
				FreeAndNil(slList);
				Exit;
			end;

			xdom := ComsDomDocument.Create;
			try
				iCnt := 1;
				Frm_Flash.cxPBar1.Properties.Max := slList.Count;
				Frm_Flash.cxPBar1.Position := 0;
				cxPushList.DataController.SetRecordCount(0);
				cxPushList.BeginUpdate;
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
								// 0 게시물번호, 1 푸시일련번호, 2 상태(0:발송대기, 1:발송중, 2:완료, 4:취소, R:예약), 3 제목(푸시알림 메세지), 4 전송시간, 5 발송건수, 6 성공건수, 7 실패건수, 8 등록자이름, 9 등록일시, 10 게시물Type, 11 게시물제목, 12 게시물내용
								GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);

								iCnt := cxPushList.DataController.AppendRecord;
								cxPushList.DataController.Values[iCnt, 00] := iRow + 1;
								cxPushList.DataController.Values[iCnt, 01] := ls_Rcrd[0];
								cxPushList.DataController.Values[iCnt, 02] := ls_Rcrd[1];
								if ls_Rcrd[2] = '0' then cxPushList.DataController.Values[iCnt, 03] := '발송대기' else
								if ls_Rcrd[2] = '1' then cxPushList.DataController.Values[iCnt, 03] := '발송중'   else
								if ls_Rcrd[2] = '2' then cxPushList.DataController.Values[iCnt, 03] := '완료'     else
								if ls_Rcrd[2] = '4' then cxPushList.DataController.Values[iCnt, 03] := '취소'     else
								if ls_Rcrd[2] = 'R' then cxPushList.DataController.Values[iCnt, 03] := '예약';
								if ls_Rcrd[4] = 'null' then
									cxPushList.DataController.Values[iCnt, 04] := ''
								else
									cxPushList.DataController.Values[iCnt, 04] := ls_Rcrd[4];
								cxPushList.DataController.Values[iCnt, 05] := ls_Rcrd[3];
								cxPushList.DataController.Values[iCnt, 06] := ls_Rcrd[8];
								cxPushList.DataController.Values[iCnt, 07] := ls_Rcrd[9];
								cxPushList.DataController.Values[iCnt, 08] := ls_Rcrd[5];
								cxPushList.DataController.Values[iCnt, 09] := ls_Rcrd[6];
								cxPushList.DataController.Values[iCnt, 10] := ls_Rcrd[7];

								cxPushList.DataController.Values[iCnt, 12] := ls_Rcrd[11];
								cxPushList.DataController.Values[iCnt, 13] := ls_Rcrd[10];
								cxPushList.DataController.Values[iCnt, 14] := ls_Rcrd[12];
								Inc(iRow);
							end;
						finally
							ls_Rcrd.Free;
						end;
						
					end;
				end;
			finally
				cxPushList.EndUpdate;
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

procedure TFrm_APP.proc_CID_SMS_SENT_HISTORY;
var
  XmlData, Param, ErrMsg, sBrNo, msg, sBrName : string;
	xdom: msDomDocument;
	lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd, slList: TStringList;
	i, j, ErrCode, iRow : Integer;
begin
	try
    sBrNo := cxBrNo3.Text;

    if sBrNo = '' then
    begin
			GMessagebox('지사를 선택하셔야 합니다.', CDMSI);
			Exit;
    end;

    if (GT_USERIF.LV = '10') and (not IsPassedManagementCu(sBrNo)) then
    begin
      msg := '[%s(%s)]  지사에서 고객관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
          + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
      sBrName := GetBrName(sBrNo);
			GMessagebox(Format(msg, [sBrNo, sBrName]), CDMSI);
			Exit;
    end;

    if fGetChk_Search_HdBrNo('콜마너SMS발송내역') then Exit;

		Param := cbKeynumberA4.Text + '│' + Trim(Param_Filtering(cbbA4.Text)) + '│'
					 + FormatDateTime('YYYYMMDD', cxDtStartA4.Date) + '│' + FormatDateTime('YYYYMMDD', cxDtEndA4.Date);

		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel05('CID_SMS_SENT_HISTORY', 'mng_custapp.CID_SMS_SENT_HISTORY', '2', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('CID콜마너 SMS 발송내역 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
				FreeAndNil(slList);
				Exit;
			end;

			xdom := ComsDomDocument.Create;
			try
				Frm_Flash.cxPBar1.Properties.Max := slList.Count;
				Frm_Flash.cxPBar1.Position := 0;
				CID_SMS_HISTORY_List.DataController.SetRecordCount(0);
				CID_SMS_HISTORY_List.BeginUpdate;
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
							for I := 0 to lst_Result.length - 1 do
							begin
								// 0 지사코드, 1 지사명, 2 출금계좌, 3 은행명, 4 은행코드, 5 예금주, 6 본사정산금액, 7 지사정산금액, 8 설정금액, 9 잔액, 10 정산구분(0:정산안함/1:일일정산/2:월요일정산)
								GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
								iRow := CID_SMS_HISTORY_List.DataController.AppendRecord;
								// 1 Record 추가

								CID_SMS_HISTORY_List.DataController.Values[iRow, 0] := iRow + 1;
								CID_SMS_HISTORY_List.DataController.Values[iRow, 1] := ls_Rcrd[0];
								CID_SMS_HISTORY_List.DataController.Values[iRow, 2] := ls_Rcrd[1];
								CID_SMS_HISTORY_List.DataController.Values[iRow, 3] := ls_Rcrd[2];
								CID_SMS_HISTORY_List.DataController.Values[iRow, 4] := ls_Rcrd[3];
								CID_SMS_HISTORY_List.DataController.Values[iRow, 5] := ls_Rcrd[4];
								CID_SMS_HISTORY_List.DataController.Values[iRow, 6] := ls_Rcrd[5];
								CID_SMS_HISTORY_List.DataController.Values[iRow, 7] := ls_Rcrd[6];
							end;
						finally
							ls_Rcrd.Free;
						end;
					end;
				end;
			finally
				xdom := Nil;
				CID_SMS_HISTORY_List.EndUpdate;
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

procedure TFrm_APP.proc_CID_PUSH_SENT_HISTORY;
var
  XmlData, Param, ErrMsg, sBrNo, msg, sBrName : string;
	xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	i, ErrCode, iCnt, iRow : Integer;
	j : integer;
begin

	sBrNo := cxBrNo4.Text;

	if sBrNo = '' then
	begin
		GMessagebox('지사를 선택하셔야 합니다.', CDMSI);
		Exit;
	end;

	if (GT_USERIF.LV = '10') and (not IsPassedManagementCu(sBrNo)) then
	begin
		msg := '[%s(%s)]  지사에서 고객관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
				+ #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
		sBrName := GetBrName(sBrNo);
		GMessagebox(Format(msg, [sBrNo, sBrName]), CDMSI);
		Exit;
	end;

	if fGetChk_Search_HdBrNo('스마트PUSH발송내역') then Exit;

	Param := cbKeynumberA5.Text + '│' + Trim(Param_Filtering(cbbA5.Text)) + '│'
				 + FormatDateTime('YYYYMMDD', cxDtStartA5.Date) + '│' + FormatDateTime('YYYYMMDD', cxDtEndA5.Date);
	try
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel05('CID_PUSH_HISTORY_List', 'mng_custapp.CID_PUSH_SENT_HISTORY', '1000', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('CID콜마너 PUSH 발송내역 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
				FreeAndNil(slList);
				Exit;
			end;

			xdom := ComsDomDocument.Create;
			try
				iCnt := 1;
				Frm_Flash.cxPBar1.Properties.Max := slList.Count;
				Frm_Flash.cxPBar1.Position := 0;
				CID_PUSH_HISTORY_List.DataController.SetRecordCount(0);
				CID_PUSH_HISTORY_List.BeginUpdate;
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
								// 0 지사코드, 1 지사명, 2 출금계좌, 3 은행명, 4 은행코드, 5 예금주, 6 본사정산금액, 7 지사정산금액, 8 설정금액, 9 잔액, 10 정산구분(0:정산안함/1:일일정산/2:월요일정산)
								GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
								iRow := CID_PUSH_HISTORY_List.DataController.AppendRecord;
								// 1 Record 추가

								CID_PUSH_HISTORY_List.DataController.Values[iRow, 0] := iRow + 1;
								CID_PUSH_HISTORY_List.DataController.Values[iRow, 1] := ls_Rcrd[0];
								CID_PUSH_HISTORY_List.DataController.Values[iRow, 2] := ls_Rcrd[1];
								CID_PUSH_HISTORY_List.DataController.Values[iRow, 3] := ls_Rcrd[2];
								CID_PUSH_HISTORY_List.DataController.Values[iRow, 4] := ls_Rcrd[3];
								CID_PUSH_HISTORY_List.DataController.Values[iRow, 5] := ls_Rcrd[4];
								CID_PUSH_HISTORY_List.DataController.Values[iRow, 6] := ls_Rcrd[5];
								CID_PUSH_HISTORY_List.DataController.Values[iRow, 7] := ls_Rcrd[6];
								CID_PUSH_HISTORY_List.DataController.Values[iRow, 8] := ls_Rcrd[7];
								CID_PUSH_HISTORY_List.DataController.Values[iRow, 9] := ls_Rcrd[8];
								CID_PUSH_HISTORY_List.DataController.Values[iRow,10] := ls_Rcrd[9];
								CID_PUSH_HISTORY_List.DataController.Values[iRow,11] := ls_Rcrd[10];
							end;
						finally
							ls_Rcrd.Free;
						end;
					end;
				end;
			finally
				xdom := Nil;
				CID_PUSH_HISTORY_List.EndUpdate;
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

procedure TFrm_APP.proc_CID_SMS_SENT_STAT;
var
	XmlData, Param, ErrMsg, sBrNo, msg, sBrName, sDate, sMonth : string;
	xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	i, j, ErrCode, iCnt, iRow : Integer;
	Cash, Account: string;
begin

	try
    sBrNo := cxBrNo5.Text;

    if sBrNo = '' then
    begin
			GMessagebox('지사를 선택하셔야 합니다.', CDMSI);
			Exit;
		end;

		if (GT_USERIF.LV = '10') and (not IsPassedManagementCu(sBrNo)) then
    begin
      msg := '[%s(%s)]  지사에서 고객관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
          + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
      sBrName := GetBrName(sBrNo);
			GMessagebox(Format(msg, [sBrNo, sBrName]), CDMSI);
			Exit;
    end;

    if fGetChk_Search_HdBrNo('콜마너SMS발송일별통계') then Exit;

		if cxSEYearA6.Text = '' then
			cxSEYearA6.Text := FormatDateTime('yyyy', Now);
		if cxSEMonthA6.Text = '' then
			cxSEMonthA6.Text := Copy(FormatDateTime('yyyymm', Now), 5, 2);
		sMonth := '';
		if StrToIntDef(cxSEMonthA6.Text, 0) < 10 then sMonth := '0' + cxSEMonthA6.Text
		else
			sMonth := cxSEMonthA6.Text;
		Param := cbKeynumberA6.Text + '│' + cxSEYearA6.Text + sMonth;//FormatDateTime('YYYYMM', de_T6Date.Date);

		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel05('CID_SMS_SENT_STAT', 'mng_custapp.CID_SMS_SENT_STAT', '1000', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('SMS발송 일별통계 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
				FreeAndNil(slList);
				Exit;
			end;


			xdom := ComsDomDocument.Create;
			try
				iCnt := 1;
				Frm_Flash.cxPBar1.Properties.Max := slList.Count;
				Frm_Flash.cxPBar1.Position := 0;
				CID_SMS_SENT_STAT_List.DataController.SetRecordCount(0);
				CID_SMS_SENT_STAT_List.BeginUpdate;
				ismsSum1 := 0; ismsSum2 := 0; ismsSum3 := 0; ismsSum4 := 0; ismsSum5 := 0; ismsSum6 := 0; ismsSum7 := 0; ismsSum8 := 0; ismsSum9 := 0;
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
								// 0 지사코드, 1 지사명, 2 출금계좌, 3 은행명, 4 은행코드, 5 예금주, 6 본사정산금액, 7 지사정산금액, 8 설정금액, 9 잔액, 10 정산구분(0:정산안함/1:일일정산/2:월요일정산)
								GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);

								if ls_Rcrd[0] <> sDate then
									iRow := CID_SMS_SENT_STAT_List.DataController.AppendRecord;
								// 1 Record 추가

								CID_SMS_SENT_STAT_List.DataController.Values[iRow, 0] := iRow + 1;
								CID_SMS_SENT_STAT_List.DataController.Values[iRow, 1] := ls_Rcrd[0];
								sDate := ls_Rcrd[0];
								if ls_Rcrd[1] = '오퍼링' then
								begin
									CID_SMS_SENT_STAT_List.DataController.Values[iRow, 2]  := ls_Rcrd[2];
									ismsSum1 := ismsSum1 + StrToIntDef(ls_Rcrd[2], 0);
									CID_SMS_SENT_STAT_List.DataController.Values[iRow, 5]  := ls_Rcrd[3];
									ismsSum2 := ismsSum2 + StrToIntDef(ls_Rcrd[3], 0);
									CID_SMS_SENT_STAT_List.DataController.Values[iRow, 8]  := ls_Rcrd[4];
									ismsSum3 := ismsSum3 + StrToIntDef(ls_Rcrd[4], 0);
								end	else
								if ls_Rcrd[1] = '통화종료' then
								begin
									CID_SMS_SENT_STAT_List.DataController.Values[iRow, 3]  := ls_Rcrd[2];
									ismsSum4 := ismsSum4 + StrToIntDef(ls_Rcrd[2], 0);
									CID_SMS_SENT_STAT_List.DataController.Values[iRow, 6]  := ls_Rcrd[3];
									ismsSum5 := ismsSum5 + StrToIntDef(ls_Rcrd[3], 0);
									CID_SMS_SENT_STAT_List.DataController.Values[iRow, 9]  := ls_Rcrd[4];
									ismsSum6 := ismsSum6 + StrToIntDef(ls_Rcrd[4], 0);
								end	else
								if ls_Rcrd[1] = '미통화' then
								begin
									CID_SMS_SENT_STAT_List.DataController.Values[iRow, 4]  := ls_Rcrd[2];
									ismsSum7 := ismsSum7 + StrToIntDef(ls_Rcrd[2], 0);
									CID_SMS_SENT_STAT_List.DataController.Values[iRow, 7]  := ls_Rcrd[3];
									ismsSum8 := ismsSum8 + StrToIntDef(ls_Rcrd[3], 0);
									CID_SMS_SENT_STAT_List.DataController.Values[iRow, 10] := ls_Rcrd[4];
									ismsSum9 := ismsSum9 + StrToIntDef(ls_Rcrd[4], 0);
								end;
							end;
						finally
							ls_Rcrd.Free;
						end;
					end;
				end;
			finally
				xdom := Nil;
				CID_SMS_SENT_STAT_List.EndUpdate;
				for i := 0 to CID_SMS_SENT_STAT_List.DataController.RowCount - 1 do
				begin
					if CID_SMS_SENT_STAT_List.DataController.Values[i, 2] < 0 then
						 CID_SMS_SENT_STAT_List.DataController.Values[i, 2] := 0;
					if CID_SMS_SENT_STAT_List.DataController.Values[i, 3] < 0 then
						 CID_SMS_SENT_STAT_List.DataController.Values[i, 3] := 0;
					if CID_SMS_SENT_STAT_List.DataController.Values[i, 4] < 0 then
						 CID_SMS_SENT_STAT_List.DataController.Values[i, 4] := 0;
					if CID_SMS_SENT_STAT_List.DataController.Values[i, 5] < 0 then
						 CID_SMS_SENT_STAT_List.DataController.Values[i, 5] := 0;
					if CID_SMS_SENT_STAT_List.DataController.Values[i, 6] < 0 then
						 CID_SMS_SENT_STAT_List.DataController.Values[i, 6] := 0;
					if CID_SMS_SENT_STAT_List.DataController.Values[i, 7] < 0 then
						 CID_SMS_SENT_STAT_List.DataController.Values[i, 7] := 0;
					if CID_SMS_SENT_STAT_List.DataController.Values[i, 8] < 0 then
						 CID_SMS_SENT_STAT_List.DataController.Values[i, 8] := 0;
					if CID_SMS_SENT_STAT_List.DataController.Values[i, 9] < 0 then
						 CID_SMS_SENT_STAT_List.DataController.Values[i, 9] := 0;
					if CID_SMS_SENT_STAT_List.DataController.Values[i, 10] < 0 then
						 CID_SMS_SENT_STAT_List.DataController.Values[i, 10] := 0;
				end;
			end;
			/////////////////////////지사 SMS 잔액/////////////////////////////////////////////////////
			if ( Not Assigned(Frm_SMS01) ) Or ( Frm_SMS01 = Nil ) then Frm_SMS01 := TFrm_SMS01.Create(Nil);
			try
				if not Frm_SMS01.RequestBranchSMSInfo(cxBrNo5.text, Cash, Account) then	Exit;
				edtBranchSMSCash.Text := FormatFloat('#,##0.#', StrToFloatDef(Cash, 0));
			finally
				Frm_SMS01.Free;
			end;
			/////////////////////////지사 SMS 잔액/////////////////////////////////////////////////////
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

procedure TFrm_APP.proc_CID_PUSH_SENT_STAT;
var
	XmlData, Param, ErrMsg, sBrNo, msg, sBrName, sDate, sMonth : string;
	xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	i, j, ErrCode, iCnt, iRow : Integer;
	Cash, Account : string;
begin
	try
		sBrNo := cxBrNo6.Text;
		sDate := '';
    if sBrNo = '' then
    begin
			GMessagebox('지사를 선택하셔야 합니다.', CDMSI);
			Exit;
		end;

		if (GT_USERIF.LV = '10') and (not IsPassedManagementCu(sBrNo)) then
		begin
      msg := '[%s(%s)]  지사에서 고객관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
          + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
      sBrName := GetBrName(sBrNo);
			GMessagebox(Format(msg, [sBrNo, sBrName]), CDMSI);
			Exit;
		end;

    if fGetChk_Search_HdBrNo('스마트PUSH발송일별통계') then Exit;

		if cxSEYearA7.Text = '' then
			cxSEYearA7.Text := FormatDateTime('yyyy', Now);
		if cxSEMonthA7.Text = '' then
			cxSEMonthA7.Text := Copy(FormatDateTime('yyyymm', Now), 5, 2);
		sMonth := '';
		if strtoint(cxSEMonthA7.Text) < 10 then  sMonth := '0' + cxSEMonthA7.Text
		else
			sMonth := cxSEMonthA7.Text;

		Param := cbKeynumberA7.Text + '│' + cxSEYearA7.Text + sMonth;//FormatDateTime('YYYYMM', de_T7Date.Date);

		slList := TStringList.Create;
		if not RequestBasePaging(GetSel05('CID_PUSH_SENT_STAT', 'mng_custapp.CID_PUSH_SENT_STAT', '1000', Param), slList, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('스마트푸시발송 일별통계 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			FreeAndNil(slList);
			Exit;
		end;

		xdom := ComsDomDocument.Create;
		try
			iCnt := 1;
			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			CID_PUSH_SENT_STAT_List.DataController.SetRecordCount(0);
			CID_PUSH_SENT_STAT_List.BeginUpdate;
			iPUSHSum1 := 0; iPUSHSum2 := 0; iPUSHSum3 := 0; iPUSHSum4 := 0; iPUSHSum5 := 0; iPUSHSum6 := 0; iPUSHSum7 := 0; iPUSHSum8 := 0; iPUSHSum9 := 0;
			iPUSHSum10 := 0; iPUSHSum11 := 0; iPUSHSum12 := 0; iPUSHSum13 := 0; iPUSHSum14 := 0; iPUSHSum15 := 0; iPUSHCNTSum := 0; IPUSHAMTSum := 0;
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
							// 0 지사코드, 1 지사명, 2 출금계좌, 3 은행명, 4 은행코드, 5 예금주, 6 본사정산금액, 7 지사정산금액, 8 설정금액, 9 잔액, 10 정산구분(0:정산안함/1:일일정산/2:월요일정산)
							GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
							if ls_Rcrd[0] <> sDate then
								iRow := CID_PUSH_SENT_STAT_List.DataController.AppendRecord;
							// 1 Record 추가

							CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 0] := iRow + 1;
							CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 1] := ls_Rcrd[0];
							sDate := ls_Rcrd[0];
							if ls_Rcrd[1] = '오퍼링' then
							begin
								CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 2]  := ls_Rcrd[2];
								iPUSHSum1 := iPUSHSum1 + StrToIntDef(ls_Rcrd[2], 0);
								CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 5]  := ls_Rcrd[3];
								iPUSHSum2 := iPUSHSum2 + StrToIntDef(ls_Rcrd[3], 0);
								CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 8]  := ls_Rcrd[4];
								iPUSHSum3 := iPUSHSum3 + StrToIntDef(ls_Rcrd[4], 0);
								CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 11] := ls_Rcrd[5];
								iPUSHSum4 := iPUSHSum4 + StrToIntDef(ls_Rcrd[5], 0);
								CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 14] := ls_Rcrd[6];
								iPUSHSum5 := iPUSHSum5 + StrToIntDef(ls_Rcrd[6], 0);

								iPUSHCNTSum := iPUSHCNTSum +  + StrToIntDef(ls_Rcrd[7], 0);
								IPUSHAMTSum := IPUSHAMTSum +  + StrToIntDef(ls_Rcrd[8], 0);
							end else
							if ls_Rcrd[1] = '통화종료' then
							begin
								CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 3]  := ls_Rcrd[2];
								iPUSHSum6 := iPUSHSum6 + StrToIntDef(ls_Rcrd[2], 0);
								CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 6]  := ls_Rcrd[3];
								iPUSHSum7 := iPUSHSum7 + StrToIntDef(ls_Rcrd[3], 0);
								CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 9]  := ls_Rcrd[4];
								iPUSHSum8 := iPUSHSum8 + StrToIntDef(ls_Rcrd[4], 0);
								CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 12] := ls_Rcrd[5];
								iPUSHSum9 := iPUSHSum9 + StrToIntDef(ls_Rcrd[5], 0);
								CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 15] := ls_Rcrd[6];
								iPUSHSum10 := iPUSHSum10 + StrToIntDef(ls_Rcrd[6], 0);
								iPUSHCNTSum := iPUSHCNTSum +  + StrToIntDef(ls_Rcrd[7], 0);
								IPUSHAMTSum := IPUSHAMTSum +  + StrToIntDef(ls_Rcrd[8], 0);
							end else
							if ls_Rcrd[1] = '미통화' then
							begin
								CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 4]  := ls_Rcrd[2];
								iPUSHSum11 := iPUSHSum11 + StrToIntDef(ls_Rcrd[2], 0);
								CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 7]  := ls_Rcrd[3];
								iPUSHSum12 := iPUSHSum12 + StrToIntDef(ls_Rcrd[3], 0);
								CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 10] := ls_Rcrd[4];
								iPUSHSum13 := iPUSHSum13 + StrToIntDef(ls_Rcrd[4], 0);
								CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 13] := ls_Rcrd[5];
								iPUSHSum14 := iPUSHSum14 + StrToIntDef(ls_Rcrd[5], 0);
								CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 16] := ls_Rcrd[6];
								iPUSHSum15 := iPUSHSum15 + StrToIntDef(ls_Rcrd[6], 0);
								iPUSHCNTSum := iPUSHCNTSum +  + StrToIntDef(ls_Rcrd[7], 0);
								IPUSHAMTSum := IPUSHAMTSum +  + StrToIntDef(ls_Rcrd[8], 0);
							end;
						CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 17] := IntToStr(iPUSHCNTSum);
						CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 18] := IntToStr(IPUSHAMTSum);
						end;
					finally
						ls_Rcrd.Free;
					end;
				end;
			end;
		finally
			xdom := Nil;
			CID_PUSH_SENT_STAT_List.EndUpdate;
			for i := 0 to CID_PUSH_SENT_STAT_List.DataController.RowCount - 1 do
			begin
				if CID_PUSH_SENT_STAT_List.DataController.Values[i, 2] < 0 then
					 CID_PUSH_SENT_STAT_List.DataController.Values[i, 2] := 0;
				if CID_PUSH_SENT_STAT_List.DataController.Values[i, 3] < 0 then
					 CID_PUSH_SENT_STAT_List.DataController.Values[i, 3] := 0;
				if CID_PUSH_SENT_STAT_List.DataController.Values[i, 4] < 0 then
					 CID_PUSH_SENT_STAT_List.DataController.Values[i, 4] := 0;
				if CID_PUSH_SENT_STAT_List.DataController.Values[i, 5] < 0 then
					 CID_PUSH_SENT_STAT_List.DataController.Values[i, 5] := 0;
				if CID_PUSH_SENT_STAT_List.DataController.Values[i, 6] < 0 then
					 CID_PUSH_SENT_STAT_List.DataController.Values[i, 6] := 0;
				if CID_PUSH_SENT_STAT_List.DataController.Values[i, 7] < 0 then
					 CID_PUSH_SENT_STAT_List.DataController.Values[i, 7] := 0;
				if CID_PUSH_SENT_STAT_List.DataController.Values[i, 8] < 0 then
					 CID_PUSH_SENT_STAT_List.DataController.Values[i, 8] := 0;
				if CID_PUSH_SENT_STAT_List.DataController.Values[i, 9] < 0 then
					 CID_PUSH_SENT_STAT_List.DataController.Values[i, 9] := 0;
				if CID_PUSH_SENT_STAT_List.DataController.Values[i, 10] < 0 then
					 CID_PUSH_SENT_STAT_List.DataController.Values[i, 10] := 0;
				if CID_PUSH_SENT_STAT_List.DataController.Values[i, 11] < 0 then
					 CID_PUSH_SENT_STAT_List.DataController.Values[i, 11] := 0;
				if CID_PUSH_SENT_STAT_List.DataController.Values[i, 12] < 0 then
					 CID_PUSH_SENT_STAT_List.DataController.Values[i, 12] := 0;
				if CID_PUSH_SENT_STAT_List.DataController.Values[i, 13] < 0 then
					 CID_PUSH_SENT_STAT_List.DataController.Values[i, 13] := 0;
				if CID_PUSH_SENT_STAT_List.DataController.Values[i, 14] < 0 then
					 CID_PUSH_SENT_STAT_List.DataController.Values[i, 14] := 0;
				if CID_PUSH_SENT_STAT_List.DataController.Values[i, 15] < 0 then
					 CID_PUSH_SENT_STAT_List.DataController.Values[i, 15] := 0;
				if CID_PUSH_SENT_STAT_List.DataController.Values[i, 16] < 0 then
					 CID_PUSH_SENT_STAT_List.DataController.Values[i, 16] := 0;
				if CID_PUSH_SENT_STAT_List.DataController.Values[i, 17] < 0 then
					 CID_PUSH_SENT_STAT_List.DataController.Values[i, 17] := 0;
				if CID_PUSH_SENT_STAT_List.DataController.Values[i, 18] < 0 then
					 CID_PUSH_SENT_STAT_List.DataController.Values[i, 18] := 0;
			end;
			Frm_Flash.hide;    
			Screen.Cursor := crDefault;
			FreeAndNil(slList);
		end;
		/////////////////////////지사 SMS 잔액/////////////////////////////////////////////////////
		if ( Not Assigned(Frm_SMS01) ) Or ( Frm_SMS01 = Nil ) then Frm_SMS01 := TFrm_SMS01.Create(Nil);
		try
			if not Frm_SMS01.RequestBranchSMSInfo(cxBrNo6.text, Cash, Account) then	Exit;
			edtBranchSMSCash2.Text := FormatFloat('#,##0.#', StrToFloatDef(Cash, 0));
		finally
			Frm_SMS01.Free;
		end;
		/////////////////////////지사 SMS 잔액/////////////////////////////////////////////////////
	except
    on e: exception do
    begin
			Assert(False, E.Message);
    end;
  end;
end;

function TFrm_APP.AccUpLoadFile(sFN1, sFN2, sFN3, sFN4, sFN5, sFTPPath, sGubun: string): Boolean;
	function FindDirectory(idTmp:TIdFTP; TargetMake : string) : boolean;
  var
    i : Integer;
    tempString : TStringList;
  begin
    tempString := TStringList.Create;
		tempString.Clear;

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
		iErrorCnt := 0;
		Try
			IdFTPUP_Tmp.Passive := True;
			try
				IdFTPUP_Tmp.Username := AP_FTP_USER;
				IdFTPUP_Tmp.Password := AP_FTP_PW;
				IdFTPUP_Tmp.Host := GT_CDMS_WKPIC_URL;    //'61.77.191.112'
				IdFTPUP_Tmp.Port := AP_FTP_PORT;
				IdFTPUP_Tmp.ReadTimeout := 3000;

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
					if sGubun = '0' then
					begin
						FTPMakedir(IdFTPUP_Tmp, '/banner/'+FormatDateTime('YYYYMM', Now));
						sFTPPath := '/banner'+sFTPPath;
					end	else
					begin
						FTPMakedir(IdFTPUP_Tmp, FormatDateTime('YYYYMM', Now));
					end;
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
		end;
		// ------------------------------------------------------------------------
	except on E: Exception do
		begin
      GMessagebox('업로드 서버에 접근할 수 없습니다.', CDMSE);
      Assert(False, E.Message);
      Result := False;
    end;
  end;
end;

procedure TFrm_APP.proc_save_image(sBaseName : AnsiString; sFileName: string);
var
	oJpg: TJpegImage;
	oPng: TPngImage;
  ogif: TGIFImage;
begin
	if not DirectoryExists(WORKDRIVE) then ForceDirectories(WORKDRIVE);

	// 파일크기변환
  if UpperCase(Rightstr(sBaseName, 3)) = 'JPG' then
  begin
  	if FileExists(WORKDRIVE + sFileName + '.jpg' ) then DeleteFile(WORKDRIVE + sFileName + '.jpg' );
    oJpg := TJpegImage.Create;
    try
      oJpg.LoadFromFile(sBaseName);
      oJpg.SaveToFile(WORKDRIVE + sFileName + '.jpg');
    finally
      FreeAndNil(oJpg);
    end;
  end else
  if UpperCase(Rightstr(sBaseName, 3)) = 'PNG' then
  begin
  	if FileExists(WORKDRIVE + sFileName + '.png' ) then DeleteFile(WORKDRIVE + sFileName + '.png' );
    oPng := TPngImage.Create;
    try
      oPng.LoadFromFile(sBaseName);
      oPng.SaveToFile(WORKDRIVE + sFileName + '.png');
    finally
      oPng.Free;
    end;
  end else
  if UpperCase(Rightstr(sBaseName, 3)) = 'GIF' then
  begin
  	if FileExists(WORKDRIVE + sFileName + '.gif' ) then DeleteFile(WORKDRIVE + sFileName + '.gif' );
    ogif := TGifImage.Create;
    try
      ogif.LoadFromFile(sBaseName);
      ogif.SaveToFile(WORKDRIVE + sFileName + '.gif');
    finally
      ogif.Free;
    end;
  end;
end;

end.

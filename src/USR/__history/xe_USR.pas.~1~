unit xe_USR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  MSXML2_TLB, dxCore, System.StrUtils, system.Math,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxLabel, cxCheckBox, Vcl.Menus, cxClasses,
  cxSplitter, cxGridBandedTableView, Vcl.StdCtrls, cxButtons, cxMaskEdit,
  cxDropDownEdit, cxGroupBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.ExtCtrls,
  cxTextEdit, dxSkinsCore, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxPC, cxRadioGroup, Vcl.ComCtrls, cxDateUtils, cxCalendar,
  cxCurrencyEdit, cxGridDBBandedTableView, cxMemo, dxSkinOffice2010Blue,
  dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver, cxProgressBar;

type
  TFrm_USR = class(TForm)
    Panel3: TPanel;
    cxGrid1: TcxGrid;
    cxgPer1: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    Panel4: TPanel;
    cxGrid2: TcxGrid;
    lblSosokNameA2: TcxLabel;
    cxcbPerGrad: TcxComboBox;
    cxcbPerType: TcxComboBox;
    cxedPerSearch: TcxTextEdit;
    btnSearchA2: TcxButton;
    cxgPer1Column1: TcxGridDBColumn;
    cxgPer1Column2: TcxGridDBColumn;
    cxgPer1Column3: TcxGridDBColumn;
    cxgPer1Column4: TcxGridDBColumn;
    cxgPer1Column5: TcxGridDBColumn;
    cxgPer1Column6: TcxGridDBColumn;
    btnSearch3A2: TcxButton;
    btnSearch1A2: TcxButton;
    btnSearch2A2: TcxButton;
    cxBrNo: TcxTextEdit;
    cxHdNo: TcxTextEdit;
    cxLabel26: TcxLabel;
    cxGrid2Level1: TcxGridLevel;
    cxgMemberPer: TcxGridBandedTableView;
    cxgMemberPerColumn1: TcxGridBandedColumn;
    cxgMemberPerColumn2: TcxGridBandedColumn;
    cxgMemberPerColumn3: TcxGridBandedColumn;
    cxgMemberPerColumn4: TcxGridBandedColumn;
    cxGrid6: TcxGrid;
    cxGrid6Level1: TcxGridLevel;
    cxGMenuLevel: TcxGridBandedTableView;
    cxGMenuLevelColumn1: TcxGridBandedColumn;
    cxGMenuLevelColumn2: TcxGridBandedColumn;
    cxGMenuLevelColumn3: TcxGridBandedColumn;
    cxGMenuLevelColumn10: TcxGridBandedColumn;
    cxGMenuLevelColumn11: TcxGridBandedColumn;
    cxGMenuLevelColumn12: TcxGridBandedColumn;
    cxGMenuLevelColumn13: TcxGridBandedColumn;
    cxGMenuLevelColumn14: TcxGridBandedColumn;
    cxGMenuLevelColumn15: TcxGridBandedColumn;
    cxGMenuLevelColumn17: TcxGridBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxgMemberPerColumn11: TcxGridBandedColumn;
    cxgMemberPerColumn12: TcxGridBandedColumn;
    cxgMemberPerColumn5: TcxGridBandedColumn;
    cxGMenuLevelColumn4: TcxGridBandedColumn;
    cxStyle5: TcxStyle;
    cxcb_PerUserStatus: TcxComboBox;
    cxgPer1Column7: TcxGridDBColumn;
    PnlMainA2: TPanel;
    cxSplitter3: TcxSplitter;
    cxGroupBox1: TcxGroupBox;
    cxLabel54: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    Shape4: TShape;
    grpMain: TcxGroupBox;
    Shape5: TShape;
    btnExcelA2: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    cxTabSheet8: TcxTabSheet;
    cxTabSheet9: TcxTabSheet;
    cxTabSheet10: TcxTabSheet;
    PnlMainA1: TPanel;
    Shape6: TShape;
    cxGroupBox3: TcxGroupBox;
    cxbDelete: TcxButton;
    cxbDelete2: TcxButton;
    cxbModify: TcxButton;
    btnSearchA1: TcxButton;
    btnExcelA1: TcxButton;
    cxbInsert: TcxButton;
    cxcb_UserStatus: TcxComboBox;
    cxcbMngSearch: TcxComboBox;
    cxcbSearchGrad: TcxComboBox;
    cxedSearchId: TcxTextEdit;
    cxedSelId: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    lblSosokNameA1: TcxLabel;
    Panel1: TPanel;
    Shape10: TShape;
    cxrbSearchAll: TcxRadioButton;
    cxrbSearchUse: TcxRadioButton;
    cxrbSearchNotUse: TcxRadioButton;
    cxGridBrOrder: TcxGrid;
    cxMngUserList: TcxGridDBTableView;
		cxMngUserListColumn1: TcxGridDBColumn;
    cxMngUserListColumn2: TcxGridDBColumn;
    cxMngUserListColumn3: TcxGridDBColumn;
    cxMngUserListColumn4: TcxGridDBColumn;
    cxMngUserListColumn5: TcxGridDBColumn;
    cxMngUserListColumn6: TcxGridDBColumn;
    cxMngUserListColumn7: TcxGridDBColumn;
    cxMngUserListColumn8: TcxGridDBColumn;
    cxMngUserListColumn13: TcxGridDBColumn;
    cxMngUserListColumn9: TcxGridDBColumn;
    cxMngUserListColumn20: TcxGridDBColumn;
    cxMngUserListColumn10: TcxGridDBColumn;
    cxMngUserListColumn11: TcxGridDBColumn;
    cxMngUserListColumn12: TcxGridDBColumn;
    cxMngUserListColumn15: TcxGridDBColumn;
    cxMngUserListColumn17: TcxGridDBColumn;
    cxMngUserListColumn22: TcxGridDBColumn;
    cxMngUserListColumn18: TcxGridDBColumn;
    cxMngUserListColumn21: TcxGridDBColumn;
    cxMngUserListColumn19: TcxGridDBColumn;
    cxMngUserListColumn14: TcxGridDBColumn;
    cxMngUserListColumn16: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    PnlMainA3: TPanel;
    Shape11: TShape;
    cxGroupBox4: TcxGroupBox;
    lblSosokNameA3: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    btnDateA3: TcxButton;
    btnSearchA3: TcxButton;
    btnExcelA3: TcxButton;
    cxedAuthId: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxDtEndA3: TcxDateEdit;
    cxDtStartA3: TcxDateEdit;
    cxGridA3: TcxGrid;
    cxgAuthority: TcxGridDBTableView;
    cxgAuthorityColumn1: TcxGridDBColumn;
    cxgAuthorityColumn2: TcxGridDBColumn;
    cxgAuthorityColumn3: TcxGridDBColumn;
    cxgAuthorityColumn5: TcxGridDBColumn;
    cxgAuthorityColumn4: TcxGridDBColumn;
    cxgAuthorityColumn6: TcxGridDBColumn;
    cxgAuthorityColumn8: TcxGridDBColumn;
    cxgAuthorityColumn7: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    pop_Date: TPopupMenu;
    MiToday: TMenuItem;
    MiYesterday: TMenuItem;
    MiOneWeek: TMenuItem;
    MiOneMonth: TMenuItem;
    MiStartMonth: TMenuItem;
    PnlMainA4: TPanel;
    Shape15: TShape;
    cxGroupBox5: TcxGroupBox;
    Shape21: TShape;
    lblSosokNameA4: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    btnSearchA4: TcxButton;
    btnExcelA4: TcxButton;
    edtAuthUserID: TcxTextEdit;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cbbAuthUserStatus: TcxComboBox;
    cxcb_AuthUserStatus: TcxComboBox;
    cbbAuthUserAddDay: TcxComboBox;
    btnAuthUserAdd: TcxButton;
    btnAuthUserClose: TcxButton;
    btnAuthUserDel: TcxButton;
    chkSelectAllUserA4: TcxCheckBox;
    cxTextEdit1: TcxTextEdit;
    cbbAuthUserSearch: TcxComboBox;
    btnDateA4: TcxButton;
    cxLabel15: TcxLabel;
    cxDtEndA4: TcxDateEdit;
    cxDtStartA4: TcxDateEdit;
    cxRB1A4: TcxRadioButton;
    cxRB2A4: TcxRadioButton;
    cxGridAuthUser: TcxGrid;
    cxViewAuthUser: TcxGridDBTableView;
    cxViewAuthUserColumn1: TcxGridDBColumn;
    cxViewAuthUserColumn2: TcxGridDBColumn;
    cxViewAuthUserColumn14: TcxGridDBColumn;
    cxViewAuthUserColumn3: TcxGridDBColumn;
    cxViewAuthUserColumn4: TcxGridDBColumn;
    cxViewAuthUserColumn5: TcxGridDBColumn;
    cxViewAuthUserColumn7: TcxGridDBColumn;
    cxViewAuthUserColumn8: TcxGridDBColumn;
    cxViewAuthUserColumn9: TcxGridDBColumn;
    cxViewAuthUserColumn10: TcxGridDBColumn;
    cxViewAuthUserColumn11: TcxGridDBColumn;
    cxViewAuthUserColumn12: TcxGridDBColumn;
    cxViewAuthUserColumn13: TcxGridDBColumn;
    cxLevelAuthUser: TcxGridLevel;
    pnl_ChangeStatus: TPanel;
    cxGroupBox6: TcxGroupBox;
    btnCloseA4: TcxButton;
    btnModifyA4: TcxButton;
    rdo_status1: TcxRadioButton;
    rdo_status2: TcxRadioButton;
    rdo_status3: TcxRadioButton;
    rdo_status4: TcxRadioButton;
    rdo_status5: TcxRadioButton;
    PmStatusA4: TPopupMenu;
    NStatus: TMenuItem;
    PnlMainA5: TPanel;
    Shape22: TShape;
    cxGroupBox7: TcxGroupBox;
    Shape27: TShape;
    lblSosokNameA5: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    btnSearchA5: TcxButton;
    btnExcelA5: TcxButton;
    edtAuthPCIP: TcxTextEdit;
    cxLabel19: TcxLabel;
    cbbAuthPCStatus: TcxComboBox;
    cbbAuthPCAddDay: TcxComboBox;
    chkSelectAllPCA5: TcxCheckBox;
    btnAuthPCAdd: TcxButton;
    btnAuthPCClose: TcxButton;
    btnAuthPCDel: TcxButton;
    btnAuthPCSetID: TcxButton;
    btnAuthPCSetPC: TcxButton;
    cxLabel20: TcxLabel;
    cbbAuthPCSearch: TcxComboBox;
    btnDateA5: TcxButton;
    cxLabel21: TcxLabel;
    cxDtEndA5: TcxDateEdit;
    cxDtStartA5: TcxDateEdit;
    cxRB1A5: TcxRadioButton;
    cxRB2A5: TcxRadioButton;
    cxGridAuthPC: TcxGrid;
    cxViewAuthPC: TcxGridDBTableView;
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
    cxViewAuthPCColumn1: TcxGridDBColumn;
    cxViewAuthPCColumn2: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxViewAuthPCColumn3: TcxGridDBColumn;
    cxViewAuthPCColumn4: TcxGridDBColumn;
    cxLevelAuthPC: TcxGridLevel;
    PnlMainA6: TPanel;
    Shape28: TShape;
    cxGroupBox8: TcxGroupBox;
    lblSosokNameA6: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    btnDateA6: TcxButton;
    btnSearchA6: TcxButton;
    btnExcelA6: TcxButton;
    cxedExcelId: TcxTextEdit;
    cxLabel25: TcxLabel;
    cxDtEndA6: TcxDateEdit;
    cxDtStartA6: TcxDateEdit;
    cxGridA6: TcxGrid;
    cxgExcelDown: TcxGridDBTableView;
    cxgExcelDownColumn1: TcxGridDBColumn;
    cxgExcelDownColumn2: TcxGridDBColumn;
    cxgExcelDownColumn3: TcxGridDBColumn;
    cxgExcelDownColumn4: TcxGridDBColumn;
    cxgExcelDownColumn6: TcxGridDBColumn;
    cxgExcelDownColumn7: TcxGridDBColumn;
    cxgExcelDownColumn8: TcxGridDBColumn;
    cxgExcelDownColumn9: TcxGridDBColumn;
    cxgExcelDownColumn5: TcxGridDBColumn;
    cxgExcelDownColumn10: TcxGridDBColumn;
    cxgExcelDownColumn11: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    PnlMainA7: TPanel;
    Shape32: TShape;
    cxGridA7: TcxGrid;
    cxgUserStat: TcxGridDBTableView;
    cxgUserStatColumn1: TcxGridDBColumn;
    cxgUserStatColumn2: TcxGridDBColumn;
    cxgUserStatColumn3: TcxGridDBColumn;
    cxgUserStatColumn4: TcxGridDBColumn;
    cxgUserStatColumn11: TcxGridDBColumn;
    cxgUserStatColumn5: TcxGridDBColumn;
    cxgUserStatColumn6: TcxGridDBColumn;
    cxgUserStatColumn7: TcxGridDBColumn;
    cxgUserStatColumn8: TcxGridDBColumn;
    cxgUserStatColumn9: TcxGridDBColumn;
    cxgUserStatColumn10: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    cxGroupBox9: TcxGroupBox;
    lblSosokNameA7: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    btnDateA7: TcxButton;
    btnSearchA7: TcxButton;
    btnExcelA7: TcxButton;
    cxedUserStatId: TcxTextEdit;
    cxLabel31: TcxLabel;
    cxDtEndA7: TcxDateEdit;
    cxDtStartA7: TcxDateEdit;
    PnlMainA9: TPanel;
    Shape38: TShape;
    cxGroupBox10: TcxGroupBox;
    lblSosokNameA9: TcxLabel;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    btnDateA9: TcxButton;
    btnSearchA9: TcxButton;
    btnExcelA9: TcxButton;
    edUserLogID: TcxTextEdit;
    cxLabel35: TcxLabel;
    cxDtEndA9: TcxDateEdit;
    cxDtStartA9: TcxDateEdit;
    cxLabel36: TcxLabel;
    cxLabel37: TcxLabel;
    cxLabel38: TcxLabel;
    cxGridA9: TcxGrid;
    cxgUserLog: TcxGridDBTableView;
    cxgUserLogColumn1: TcxGridDBColumn;
    cxgUserLogColumn2: TcxGridDBColumn;
    cxgUserLogColumn3: TcxGridDBColumn;
    cxGridA9Level1: TcxGridLevel;
    PnlMainA8: TPanel;
    Shape43: TShape;
    cxGroupBox11: TcxGroupBox;
    lblSosokNameA8: TcxLabel;
    cxLabel39: TcxLabel;
    edtTimeETime: TcxTextEdit;
    edtTimeSTime: TcxTextEdit;
    lbl1: TcxLabel;
    lbl2: TcxLabel;
    Panel2: TPanel;
    Shape49: TShape;
    rdoUserSTTTime_Date: TcxRadioButton;
    rdoUserSTTTime: TcxRadioButton;
    btnDateA8: TcxButton;
    btnSearchA8: TcxButton;
    btnExcelA8: TcxButton;
    cbbA8: TcxComboBox;
    cxDtEndA8: TcxDateEdit;
    cxDtStartA8: TcxDateEdit;
    cxedHourId: TcxTextEdit;
    cxLabel40: TcxLabel;
    cxLabel42: TcxLabel;
    cxLabel43: TcxLabel;
    cxLabel44: TcxLabel;
    cxGrid2A8: TcxGrid;
    cxgUserHourStt: TcxGridDBBandedTableView;
    cxgUserHourSttColumn1: TcxGridDBBandedColumn;
    cxgUserHourSttColumn2: TcxGridDBBandedColumn;
    cxgUserHourSttColumn3: TcxGridDBBandedColumn;
    cxgUserHourSttColumn4: TcxGridDBBandedColumn;
    cxgUserHourSttColumn5: TcxGridDBBandedColumn;
    cxgUserHourSttColumn6: TcxGridDBBandedColumn;
    cxgUserHourSttColumn7: TcxGridDBBandedColumn;
    cxgUserHourSttColumn8: TcxGridDBBandedColumn;
    cxgUserHourSttColumn9: TcxGridDBBandedColumn;
    cxgUserHourSttColumn10: TcxGridDBBandedColumn;
    cxgUserHourSttColumn11: TcxGridDBBandedColumn;
    cxgUserHourSttColumn12: TcxGridDBBandedColumn;
    cxgUserHourSttColumn13: TcxGridDBBandedColumn;
    cxgUserHourSttColumn14: TcxGridDBBandedColumn;
    cxgUserHourSttColumn15: TcxGridDBBandedColumn;
    cxgUserHourSttColumn16: TcxGridDBBandedColumn;
    cxgUserHourSttColumn17: TcxGridDBBandedColumn;
    cxgUserHourSttColumn18: TcxGridDBBandedColumn;
    cxgUserHourSttColumn19: TcxGridDBBandedColumn;
    cxgUserHourSttColumn20: TcxGridDBBandedColumn;
    cxgUserHourSttColumn21: TcxGridDBBandedColumn;
    cxgUserHourSttColumn22: TcxGridDBBandedColumn;
    cxgUserHourSttColumn23: TcxGridDBBandedColumn;
    cxgUserHourSttColumn24: TcxGridDBBandedColumn;
    cxgUserHourSttColumn25: TcxGridDBBandedColumn;
    cxgUserHourSttColumn26: TcxGridDBBandedColumn;
    cxgUserHourSttColumn27: TcxGridDBBandedColumn;
    cxgUserHourSttColumn28: TcxGridDBBandedColumn;
    cxgUserHourSttColumn29: TcxGridDBBandedColumn;
    cxgUserHourSttColumn30: TcxGridDBBandedColumn;
    cxgUserHourSttColumn31: TcxGridDBBandedColumn;
    cxgUserHourSttColumn32: TcxGridDBBandedColumn;
    cxgUserHourSttColumn33: TcxGridDBBandedColumn;
    cxgUserHourSttColumn34: TcxGridDBBandedColumn;
    cxgUserHourSttColumn35: TcxGridDBBandedColumn;
    cxgUserHourSttColumn36: TcxGridDBBandedColumn;
    cxgUserHourSttColumn37: TcxGridDBBandedColumn;
    cxgUserHourSttColumn38: TcxGridDBBandedColumn;
    cxgUserHourSttColumn39: TcxGridDBBandedColumn;
    cxgUserHourSttColumn40: TcxGridDBBandedColumn;
    cxgUserHourSttColumn41: TcxGridDBBandedColumn;
    cxgUserHourSttColumn42: TcxGridDBBandedColumn;
    cxgUserHourSttColumn43: TcxGridDBBandedColumn;
    cxgUserHourSttColumn44: TcxGridDBBandedColumn;
    cxgUserHourSttColumn45: TcxGridDBBandedColumn;
    cxgUserHourSttColumn46: TcxGridDBBandedColumn;
    cxgUserHourSttColumn47: TcxGridDBBandedColumn;
    cxgUserHourSttColumn48: TcxGridDBBandedColumn;
    cxgUserHourSttColumn49: TcxGridDBBandedColumn;
    cxgUserHourSttColumn50: TcxGridDBBandedColumn;
    cxgUserHourSttColumn51: TcxGridDBBandedColumn;
    cxgUserHourSttColumn52: TcxGridDBBandedColumn;
    cxgUserHourSttColumn53: TcxGridDBBandedColumn;
    cxgUserHourSttColumn54: TcxGridDBBandedColumn;
    cxgUserHourSttColumn55: TcxGridDBBandedColumn;
    cxgUserHourSttColumn56: TcxGridDBBandedColumn;
    cxgUserHourSttColumn57: TcxGridDBBandedColumn;
    cxgUserHourSttColumn58: TcxGridDBBandedColumn;
    cxgUserHourSttColumn59: TcxGridDBBandedColumn;
    cxgUserHourSttColumn60: TcxGridDBBandedColumn;
    cxgUserHourSttColumn61: TcxGridDBBandedColumn;
    cxgUserHourSttColumn62: TcxGridDBBandedColumn;
    cxgUserHourSttColumn63: TcxGridDBBandedColumn;
    cxgUserHourSttColumn64: TcxGridDBBandedColumn;
    cxgUserHourSttColumn65: TcxGridDBBandedColumn;
    cxgUserHourSttColumn66: TcxGridDBBandedColumn;
    cxgUserHourSttColumn67: TcxGridDBBandedColumn;
    cxgUserHourSttColumn68: TcxGridDBBandedColumn;
    cxgUserHourSttColumn69: TcxGridDBBandedColumn;
    cxgUserHourSttColumn70: TcxGridDBBandedColumn;
    cxgUserHourSttColumn71: TcxGridDBBandedColumn;
    cxgUserHourSttColumn72: TcxGridDBBandedColumn;
    cxgUserHourSttColumn73: TcxGridDBBandedColumn;
    cxgUserHourSttColumn74: TcxGridDBBandedColumn;
    cxgUserHourSttColumn75: TcxGridDBBandedColumn;
    cxgUserHourSttColumn76: TcxGridDBBandedColumn;
    cxgUserHourSttColumn77: TcxGridDBBandedColumn;
    cxgUserHourSttColumn78: TcxGridDBBandedColumn;
    cxgUserHourSttColumn79: TcxGridDBBandedColumn;
    cxgUserHourSttColumn80: TcxGridDBBandedColumn;
    cxgUserHourSttColumn81: TcxGridDBBandedColumn;
    cxgUserHourSttColumn82: TcxGridDBBandedColumn;
    cxgUserHourSttColumn83: TcxGridDBBandedColumn;
    cxgUserHourSttColumn84: TcxGridDBBandedColumn;
    cxgUserHourSttColumn85: TcxGridDBBandedColumn;
    cxgUserHourSttColumn86: TcxGridDBBandedColumn;
    cxgUserHourSttColumn87: TcxGridDBBandedColumn;
    cxgUserHourSttColumn88: TcxGridDBBandedColumn;
    cxgUserHourSttColumn89: TcxGridDBBandedColumn;
    cxgUserHourSttColumn90: TcxGridDBBandedColumn;
    cxgUserHourSttColumn91: TcxGridDBBandedColumn;
    cxgUserHourSttColumn92: TcxGridDBBandedColumn;
    cxgUserHourSttColumn93: TcxGridDBBandedColumn;
    cxgUserHourSttColumn94: TcxGridDBBandedColumn;
    cxgUserHourSttColumn95: TcxGridDBBandedColumn;
    cxgUserHourSttColumn96: TcxGridDBBandedColumn;
    cxgUserHourSttColumn97: TcxGridDBBandedColumn;
    cxgUserHourSttColumn98: TcxGridDBBandedColumn;
    cxgUserHourSttColumn99: TcxGridDBBandedColumn;
    cxgUserHourSttColumn100: TcxGridDBBandedColumn;
    cxgUserHourSttColumn101: TcxGridDBBandedColumn;
    cxgUserHourSttColumn102: TcxGridDBBandedColumn;
    cxgUserHourSttColumn103: TcxGridDBBandedColumn;
    cxgUserHourSttColumn104: TcxGridDBBandedColumn;
    cxgUserHourSttColumn105: TcxGridDBBandedColumn;
    cxgUserHourSttColumn106: TcxGridDBBandedColumn;
    cxgUserHourSttColumn107: TcxGridDBBandedColumn;
    cxgUserHourSttColumn108: TcxGridDBBandedColumn;
    cxgUserHourSttColumn109: TcxGridDBBandedColumn;
    cxgUserHourSttColumn110: TcxGridDBBandedColumn;
    cxgUserHourSttColumn111: TcxGridDBBandedColumn;
    cxgUserHourSttColumn112: TcxGridDBBandedColumn;
    cxgUserHourSttColumn113: TcxGridDBBandedColumn;
    cxgUserHourSttColumn114: TcxGridDBBandedColumn;
    cxgUserHourSttColumn115: TcxGridDBBandedColumn;
    cxgUserHourSttColumn116: TcxGridDBBandedColumn;
    cxgUserHourSttColumn117: TcxGridDBBandedColumn;
    cxgUserHourSttColumn118: TcxGridDBBandedColumn;
    cxgUserHourSttColumn119: TcxGridDBBandedColumn;
    cxgUserHourSttColumn120: TcxGridDBBandedColumn;
    cxgUserHourSttColumn121: TcxGridDBBandedColumn;
    cxgUserHourSttColumn122: TcxGridDBBandedColumn;
    cxgUserHourSttColumn123: TcxGridDBBandedColumn;
    cxgUserHourSttColumn124: TcxGridDBBandedColumn;
    cxgUserHourSttColumn125: TcxGridDBBandedColumn;
    cxgUserHourSttColumn126: TcxGridDBBandedColumn;
    cxgUserHourSttColumn127: TcxGridDBBandedColumn;
    cxgUserHourSttColumn128: TcxGridDBBandedColumn;
    cxgUserHourSttColumn129: TcxGridDBBandedColumn;
    cxgUserHourSttColumn130: TcxGridDBBandedColumn;
    cxgUserHourSttColumn131: TcxGridDBBandedColumn;
    cxgUserHourSttColumn132: TcxGridDBBandedColumn;
    cxgUserHourSttColumn133: TcxGridDBBandedColumn;
    cxgUserHourSttColumn134: TcxGridDBBandedColumn;
    cxgUserHourSttColumn135: TcxGridDBBandedColumn;
    cxgUserHourSttColumn136: TcxGridDBBandedColumn;
    cxgUserHourSttColumn137: TcxGridDBBandedColumn;
    cxgUserHourSttColumn138: TcxGridDBBandedColumn;
    cxgUserHourSttColumn139: TcxGridDBBandedColumn;
    cxgUserHourSttColumn140: TcxGridDBBandedColumn;
    cxgUserHourSttColumn141: TcxGridDBBandedColumn;
    cxgUserHourSttColumn142: TcxGridDBBandedColumn;
    cxgUserHourSttColumn143: TcxGridDBBandedColumn;
    cxgUserHourSttColumn144: TcxGridDBBandedColumn;
    cxgUserHourSttColumn145: TcxGridDBBandedColumn;
    cxgUserHourSttColumn146: TcxGridDBBandedColumn;
    cxgUserHourSttColumn147: TcxGridDBBandedColumn;
    cxgUserHourSttColumn148: TcxGridDBBandedColumn;
    cxgUserHourSttColumn149: TcxGridDBBandedColumn;
    cxgUserHourSttColumn150: TcxGridDBBandedColumn;
    cxgUserHourSttColumn151: TcxGridDBBandedColumn;
    cxgUserHourSttColumn152: TcxGridDBBandedColumn;
    cxgUserHourSttColumn153: TcxGridDBBandedColumn;
    cxgUserHourSttColumn154: TcxGridDBBandedColumn;
    cxgUserHourSttColumn155: TcxGridDBBandedColumn;
    cxGrid2A8Level1: TcxGridLevel;
    cxGrid3A8: TcxGrid;
    cxgUserStt_Date: TcxGridDBTableView;
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
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridLevel7: TcxGridLevel;
    cxGrid4A8: TcxGrid;
    cxgUserHourStt_Date: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn156: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGridDBBandedColumn14: TcxGridDBBandedColumn;
    cxGridDBBandedColumn15: TcxGridDBBandedColumn;
    cxGridDBBandedColumn16: TcxGridDBBandedColumn;
    cxGridDBBandedColumn17: TcxGridDBBandedColumn;
    cxGridDBBandedColumn18: TcxGridDBBandedColumn;
    cxGridDBBandedColumn19: TcxGridDBBandedColumn;
    cxGridDBBandedColumn20: TcxGridDBBandedColumn;
    cxGridDBBandedColumn21: TcxGridDBBandedColumn;
    cxGridDBBandedColumn22: TcxGridDBBandedColumn;
    cxGridDBBandedColumn23: TcxGridDBBandedColumn;
    cxGridDBBandedColumn24: TcxGridDBBandedColumn;
    cxGridDBBandedColumn25: TcxGridDBBandedColumn;
    cxGridDBBandedColumn26: TcxGridDBBandedColumn;
    cxGridDBBandedColumn27: TcxGridDBBandedColumn;
    cxGridDBBandedColumn28: TcxGridDBBandedColumn;
    cxGridDBBandedColumn29: TcxGridDBBandedColumn;
    cxGridDBBandedColumn30: TcxGridDBBandedColumn;
    cxGridDBBandedColumn31: TcxGridDBBandedColumn;
    cxGridDBBandedColumn32: TcxGridDBBandedColumn;
    cxGridDBBandedColumn33: TcxGridDBBandedColumn;
    cxGridDBBandedColumn34: TcxGridDBBandedColumn;
    cxGridDBBandedColumn35: TcxGridDBBandedColumn;
    cxGridDBBandedColumn36: TcxGridDBBandedColumn;
    cxGridDBBandedColumn37: TcxGridDBBandedColumn;
    cxGridDBBandedColumn38: TcxGridDBBandedColumn;
    cxGridDBBandedColumn39: TcxGridDBBandedColumn;
    cxGridDBBandedColumn40: TcxGridDBBandedColumn;
    cxGridDBBandedColumn41: TcxGridDBBandedColumn;
    cxGridDBBandedColumn42: TcxGridDBBandedColumn;
    cxGridDBBandedColumn43: TcxGridDBBandedColumn;
    cxGridDBBandedColumn44: TcxGridDBBandedColumn;
    cxGridDBBandedColumn45: TcxGridDBBandedColumn;
    cxGridDBBandedColumn46: TcxGridDBBandedColumn;
    cxGridDBBandedColumn47: TcxGridDBBandedColumn;
    cxGridDBBandedColumn48: TcxGridDBBandedColumn;
    cxGridDBBandedColumn49: TcxGridDBBandedColumn;
    cxGridDBBandedColumn50: TcxGridDBBandedColumn;
    cxGridDBBandedColumn51: TcxGridDBBandedColumn;
    cxGridDBBandedColumn52: TcxGridDBBandedColumn;
    cxGridDBBandedColumn53: TcxGridDBBandedColumn;
    cxGridDBBandedColumn54: TcxGridDBBandedColumn;
    cxGridDBBandedColumn55: TcxGridDBBandedColumn;
    cxGridDBBandedColumn56: TcxGridDBBandedColumn;
    cxGridDBBandedColumn57: TcxGridDBBandedColumn;
    cxGridDBBandedColumn58: TcxGridDBBandedColumn;
    cxGridDBBandedColumn59: TcxGridDBBandedColumn;
    cxGridDBBandedColumn60: TcxGridDBBandedColumn;
    cxGridDBBandedColumn61: TcxGridDBBandedColumn;
    cxGridDBBandedColumn62: TcxGridDBBandedColumn;
    cxGridDBBandedColumn63: TcxGridDBBandedColumn;
    cxGridDBBandedColumn64: TcxGridDBBandedColumn;
    cxGridDBBandedColumn65: TcxGridDBBandedColumn;
    cxGridDBBandedColumn66: TcxGridDBBandedColumn;
    cxGridDBBandedColumn67: TcxGridDBBandedColumn;
    cxGridDBBandedColumn68: TcxGridDBBandedColumn;
    cxGridDBBandedColumn69: TcxGridDBBandedColumn;
    cxGridDBBandedColumn70: TcxGridDBBandedColumn;
    cxGridDBBandedColumn71: TcxGridDBBandedColumn;
    cxGridDBBandedColumn72: TcxGridDBBandedColumn;
    cxGridDBBandedColumn73: TcxGridDBBandedColumn;
    cxGridDBBandedColumn74: TcxGridDBBandedColumn;
    cxGridDBBandedColumn75: TcxGridDBBandedColumn;
    cxGridDBBandedColumn76: TcxGridDBBandedColumn;
    cxGridDBBandedColumn77: TcxGridDBBandedColumn;
    cxGridDBBandedColumn78: TcxGridDBBandedColumn;
    cxGridDBBandedColumn79: TcxGridDBBandedColumn;
    cxGridDBBandedColumn80: TcxGridDBBandedColumn;
    cxGridDBBandedColumn81: TcxGridDBBandedColumn;
    cxGridDBBandedColumn82: TcxGridDBBandedColumn;
    cxGridDBBandedColumn83: TcxGridDBBandedColumn;
    cxGridDBBandedColumn84: TcxGridDBBandedColumn;
    cxGridDBBandedColumn85: TcxGridDBBandedColumn;
    cxGridDBBandedColumn86: TcxGridDBBandedColumn;
    cxGridDBBandedColumn87: TcxGridDBBandedColumn;
    cxGridDBBandedColumn88: TcxGridDBBandedColumn;
    cxGridDBBandedColumn89: TcxGridDBBandedColumn;
    cxGridDBBandedColumn90: TcxGridDBBandedColumn;
    cxGridDBBandedColumn91: TcxGridDBBandedColumn;
    cxGridDBBandedColumn92: TcxGridDBBandedColumn;
    cxGridDBBandedColumn93: TcxGridDBBandedColumn;
    cxGridDBBandedColumn94: TcxGridDBBandedColumn;
    cxGridDBBandedColumn95: TcxGridDBBandedColumn;
    cxGridDBBandedColumn96: TcxGridDBBandedColumn;
    cxGridDBBandedColumn97: TcxGridDBBandedColumn;
    cxGridDBBandedColumn98: TcxGridDBBandedColumn;
    cxGridDBBandedColumn99: TcxGridDBBandedColumn;
    cxGridDBBandedColumn100: TcxGridDBBandedColumn;
    cxGridDBBandedColumn101: TcxGridDBBandedColumn;
    cxGridDBBandedColumn102: TcxGridDBBandedColumn;
    cxGridDBBandedColumn103: TcxGridDBBandedColumn;
    cxGridDBBandedColumn104: TcxGridDBBandedColumn;
    cxGridDBBandedColumn105: TcxGridDBBandedColumn;
    cxGridDBBandedColumn106: TcxGridDBBandedColumn;
    cxGridDBBandedColumn107: TcxGridDBBandedColumn;
    cxGridDBBandedColumn108: TcxGridDBBandedColumn;
    cxGridDBBandedColumn109: TcxGridDBBandedColumn;
    cxGridDBBandedColumn110: TcxGridDBBandedColumn;
    cxGridDBBandedColumn111: TcxGridDBBandedColumn;
    cxGridDBBandedColumn112: TcxGridDBBandedColumn;
    cxGridDBBandedColumn113: TcxGridDBBandedColumn;
    cxGridDBBandedColumn114: TcxGridDBBandedColumn;
    cxGridDBBandedColumn115: TcxGridDBBandedColumn;
    cxGridDBBandedColumn116: TcxGridDBBandedColumn;
    cxGridDBBandedColumn117: TcxGridDBBandedColumn;
    cxGridDBBandedColumn118: TcxGridDBBandedColumn;
    cxGridDBBandedColumn119: TcxGridDBBandedColumn;
    cxGridDBBandedColumn120: TcxGridDBBandedColumn;
    cxGridDBBandedColumn121: TcxGridDBBandedColumn;
    cxGridDBBandedColumn122: TcxGridDBBandedColumn;
    cxGridDBBandedColumn123: TcxGridDBBandedColumn;
    cxGridDBBandedColumn124: TcxGridDBBandedColumn;
    cxGridDBBandedColumn125: TcxGridDBBandedColumn;
    cxGridDBBandedColumn126: TcxGridDBBandedColumn;
    cxGridDBBandedColumn127: TcxGridDBBandedColumn;
    cxGridDBBandedColumn128: TcxGridDBBandedColumn;
    cxGridDBBandedColumn129: TcxGridDBBandedColumn;
    cxGridDBBandedColumn130: TcxGridDBBandedColumn;
    cxGridDBBandedColumn131: TcxGridDBBandedColumn;
    cxGridDBBandedColumn132: TcxGridDBBandedColumn;
    cxGridDBBandedColumn133: TcxGridDBBandedColumn;
    cxGridDBBandedColumn134: TcxGridDBBandedColumn;
    cxGridDBBandedColumn135: TcxGridDBBandedColumn;
    cxGridDBBandedColumn136: TcxGridDBBandedColumn;
    cxGridDBBandedColumn137: TcxGridDBBandedColumn;
    cxGridDBBandedColumn138: TcxGridDBBandedColumn;
    cxGridDBBandedColumn139: TcxGridDBBandedColumn;
    cxGridDBBandedColumn140: TcxGridDBBandedColumn;
    cxGridDBBandedColumn141: TcxGridDBBandedColumn;
    cxGridDBBandedColumn142: TcxGridDBBandedColumn;
    cxGridDBBandedColumn143: TcxGridDBBandedColumn;
    cxGridDBBandedColumn144: TcxGridDBBandedColumn;
    cxGridDBBandedColumn145: TcxGridDBBandedColumn;
    cxGridDBBandedColumn146: TcxGridDBBandedColumn;
    cxGridDBBandedColumn147: TcxGridDBBandedColumn;
    cxGridDBBandedColumn148: TcxGridDBBandedColumn;
    cxGridDBBandedColumn149: TcxGridDBBandedColumn;
    cxGridDBBandedColumn150: TcxGridDBBandedColumn;
    cxGridDBBandedColumn151: TcxGridDBBandedColumn;
    cxGridDBBandedColumn152: TcxGridDBBandedColumn;
    cxGridDBBandedColumn153: TcxGridDBBandedColumn;
    cxGridDBBandedColumn154: TcxGridDBBandedColumn;
    cxGridDBBandedColumn155: TcxGridDBBandedColumn;
    cxGridLevel8: TcxGridLevel;
    cxGrid1A8: TcxGrid;
    cxgUserStt: TcxGridDBTableView;
    cxgUserSttColumn19: TcxGridDBColumn;
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
    cxgUserSttColumn1: TcxGridDBColumn;
    cxgUserSttColumn2: TcxGridDBColumn;
    cxgUserSttColumn3: TcxGridDBColumn;
    cxgUserSttColumn4: TcxGridDBColumn;
    cxgUserSttColumn5: TcxGridDBColumn;
    cxgUserSttColumn6: TcxGridDBColumn;
    cxgUserSttColumn7: TcxGridDBColumn;
    cxgUserSttColumn8: TcxGridDBColumn;
    cxgUserSttColumn9: TcxGridDBColumn;
    cxgUserSttColumn10: TcxGridDBColumn;
    cxgUserSttColumn11: TcxGridDBColumn;
    cxgUserSttColumn12: TcxGridDBColumn;
    cxgUserSttColumn13: TcxGridDBColumn;
    cxgUserSttColumn14: TcxGridDBColumn;
    cxgUserSttColumn15: TcxGridDBColumn;
    cxgUserSttColumn16: TcxGridDBColumn;
    cxgUserSttColumn17: TcxGridDBColumn;
    cxgUserSttColumn18: TcxGridDBColumn;
    cxgUserSttColumn20: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    PnlMainB1: TPanel;
    PnlLeft: TPanel;
    Shape51: TShape;
    cxGridB1: TcxGrid;
    cxGridB1View: TcxGridDBTableView;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridDBColumn55: TcxGridDBColumn;
    cxGridDBColumn56: TcxGridDBColumn;
    cxGridDBColumn57: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    cxGroupBox12: TcxGroupBox;
    cxLabel46: TcxLabel;
    btnSearchB1: TcxButton;
    cxcbPerTypeB1: TcxComboBox;
    lblSosokNameB1: TcxLabel;
    cxedPerSearchB1: TcxTextEdit;
    Panel5: TPanel;
    Shape54: TShape;
    cxGridLB1: TcxGrid;
    cxGridLB1View: TcxGridDBTableView;
    cxGridDBColumnGridDBTableViewColumn2: TcxGridDBColumn;
    cxGridDBColumnGridDBTableViewColumn3: TcxGridDBColumn;
    Notice_ListColumnGridDBTableViewColumn3: TcxGridDBColumn;
    Notice_ListColumnGridDBTableViewColumn2: TcxGridDBColumn;
    Notice_ListColumnGridDBTableViewColumn1: TcxGridDBColumn;
    cxGridLevel10: TcxGridLevel;
    cxGroupBox13: TcxGroupBox;
    btnSearch3B1: TcxButton;
    btnSearch1B1: TcxButton;
    btnSearch2B1: TcxButton;
    cxCheckBox1: TcxCheckBox;
    cxLabel47: TcxLabel;
    cxSplitter1: TcxSplitter;
    pnl_Mulit_perSend: TPanel;
    cxGroupBox14: TcxGroupBox;
    btn_MuiltList_PerSet: TcxButton;
    cxGridMB1: TcxGrid;
    cxGrid_Mulit_ManagerList: TcxGridDBTableView;
    cxGridDBColumn58: TcxGridDBColumn;
    cxGridDBColumn59: TcxGridDBColumn;
    cxGridDBColumn60: TcxGridDBColumn;
    cxGridDBColumn61: TcxGridDBColumn;
    cxGridLevel11: TcxGridLevel;
    memo_PerResult: TcxMemo;
    btn_pnl_Mulit_Close: TcxButton;
    btnGetList: TcxButton;
		cxMngUserListColumn23: TcxGridDBColumn;
    btnSearch4B1: TcxButton;
    pop_Family: TPopupMenu;
    mni: TMenuItem;
    ScrollBox1: TScrollBox;
    Shape57: TShape;
    Shape58: TShape;
    Shape59: TShape;
    Shape55: TShape;
    Shape60: TShape;
    Shape61: TShape;
    Shape62: TShape;
    Shape63: TShape;
    Shape64: TShape;
    Shape65: TShape;
    Shape66: TShape;
    Shape67: TShape;
    Shape68: TShape;
    Shape69: TShape;
    Shape56: TShape;
    Shape70: TShape;
    Shape71: TShape;
    chk_AllPer: TcxCheckBox;
    cxLabel48: TcxLabel;
    chk_ExcelDown: TcxCheckBox;
    chk_ExcelDown_Part: TcxCheckBox;
    chk_Per_JON01_6: TcxCheckBox;
    chk_Per_JON01_8: TcxCheckBox;
    chk_Per_JON01_9: TcxCheckBox;
    chk_Excel_1: TcxCheckBox;
    chk_Excel_2: TcxCheckBox;
    chk_Excel_3: TcxCheckBox;
    chk_Excel_JON: TcxCheckBox;
    chk_Excel_WOR: TcxCheckBox;
    chk_Excel_CUT: TcxCheckBox;
    chk_Excel_SMS: TcxCheckBox;
    chk_Excel_SET: TcxCheckBox;
    chk_Excel_USR: TcxCheckBox;
    chk_Excel_STT: TcxCheckBox;
    chk_Excel_ACC: TcxCheckBox;
    chk_Per_MSN_1: TcxCheckBox;
    chk_Per_MSN: TcxCheckBox;
    chk_Per_MSN_2: TcxCheckBox;
    chk_Per_MSN_3: TcxCheckBox;
    chk_Per_MSN_4: TcxCheckBox;
    chk_Per_WOR_1: TcxCheckBox;
    chk_Per_WOR: TcxCheckBox;
    chk_Per_WOR_2: TcxCheckBox;
    chk_Per_WOR_3: TcxCheckBox;
    chk_Per_WOR_4: TcxCheckBox;
    cxCheckBox15: TcxCheckBox;
    chk_Per_Bot_1: TcxCheckBox;
    chk_Per_Bot_2: TcxCheckBox;
    chk_Per_Bot_3: TcxCheckBox;
    chk_Per_Bot_7: TcxCheckBox;
    chk_Per_Bot_6: TcxCheckBox;
    chk_Per_Bot_5: TcxCheckBox;
    chk_Per_Bot_4: TcxCheckBox;
    chk_Per_JON01_CUST_1: TcxCheckBox;
    chk_Per_JON01_CUST: TcxCheckBox;
    chk_Per_JON01_CUST_2: TcxCheckBox;
    chk_Per_Left: TcxCheckBox;
    chk_Per_Left_1: TcxCheckBox;
    chk_Per_Left_2: TcxCheckBox;
    chk_Per_Left_3: TcxCheckBox;
    chk_Per_Left_6: TcxCheckBox;
    chk_Per_Left_5: TcxCheckBox;
    chk_Per_Left_4: TcxCheckBox;
    chk_Per_JON01: TcxCheckBox;
    chk_Per_JON01_1: TcxCheckBox;
    chk_Per_JON01_2: TcxCheckBox;
    chk_Per_JON01_3: TcxCheckBox;
    chk_Per_JON01_5: TcxCheckBox;
    chk_Per_JON01_7: TcxCheckBox;
    chk_Per_JON01_4: TcxCheckBox;
    chk_Per_JON01_10: TcxCheckBox;
    chk_Per_JON01_11: TcxCheckBox;
    cxCheckBox42: TcxCheckBox;
    chk_Per_JON01_13: TcxCheckBox;
    chk_Per_JON01_14: TcxCheckBox;
    edt_Per_JON01_14: TcxCurrencyEdit;
    chk_Per_JON01_15: TcxCheckBox;
    chk_Per_JON01_16: TcxCheckBox;
    chk_Per_JON01_17: TcxCheckBox;
    chk_Per_JON01_18: TcxCheckBox;
    chk_Per_JON01_19: TcxCheckBox;
    chk_Per_JON01_20: TcxCheckBox;
    chk_Per_JON01_21: TcxCheckBox;
    chk_Per_JON01_22: TcxCheckBox;
    chk_Per_JON01_23: TcxCheckBox;
    chk_Per_JON01_24: TcxCheckBox;
    chk_Per_JON01_25: TcxCheckBox;
    chk_Per_JON01_26: TcxCheckBox;
    Shape72: TShape;
    Shape73: TShape;
    chk_Per_WOR2: TcxCheckBox;
    chk_Per_WOR2_1: TcxCheckBox;
    chk_Per_WOR2_2: TcxCheckBox;
    chk_Per_WOR2_3: TcxCheckBox;
    chk_Per_WOR2_6: TcxCheckBox;
    chk_Per_WOR2_5: TcxCheckBox;
    chk_Per_WOR2_4: TcxCheckBox;
    chk_Per_WOR2_7: TcxCheckBox;
    chk_Per_WOR2_8: TcxCheckBox;
    chk_Per_WOR2_9: TcxCheckBox;
    chk_Per_WOR2_10: TcxCheckBox;
    chk_Per_WOR2_11: TcxCheckBox;
    chk_Per_WOR2_12: TcxCheckBox;
    chk_Per_WOR2_13: TcxCheckBox;
    chk_Per_WOR2_14: TcxCheckBox;
    chk_Per_WOR2_15: TcxCheckBox;
    Shape75: TShape;
    Shape76: TShape;
    chk_Per_CUST: TcxCheckBox;
    chk_Per_CUST_1: TcxCheckBox;
    chk_Per_CUST_2: TcxCheckBox;
    chk_Per_CUST_3: TcxCheckBox;
    chk_Per_CUST_7: TcxCheckBox;
    chk_Per_CUST_8: TcxCheckBox;
    chk_Per_CUST_6: TcxCheckBox;
    chk_Per_CUST_5: TcxCheckBox;
    chk_Per_CUST_4: TcxCheckBox;
    chk_Per_WOR2_16: TcxCheckBox;
    chk_Per_CUST_9: TcxCheckBox;
    chk_Per_CUST_10: TcxCheckBox;
    chk_Per_CUST_11: TcxCheckBox;
    chk_Per_CUST_15: TcxCheckBox;
    chk_Per_CUST_14: TcxCheckBox;
    chk_Per_CUST_13: TcxCheckBox;
    chk_Per_CUST_12: TcxCheckBox;
    Shape77: TShape;
    Shape78: TShape;
    chk_Per_ACC: TcxCheckBox;
    chk_Per_ACC_1: TcxCheckBox;
    chk_Per_ACC_2: TcxCheckBox;
    chk_Per_ACC_3: TcxCheckBox;
    chk_Per_ACC_6: TcxCheckBox;
    chk_Per_ACC_5: TcxCheckBox;
    chk_Per_ACC_4: TcxCheckBox;
    chk_Per_ACC_9: TcxCheckBox;
    chk_Per_ACC_10: TcxCheckBox;
    chk_Per_ACC_11: TcxCheckBox;
    chk_Per_ACC_12: TcxCheckBox;
    chk_Per_ACC_13: TcxCheckBox;
    chk_Per_ACC_14: TcxCheckBox;
    chk_Per_ACC_15: TcxCheckBox;
    chk_Per_ACC_16: TcxCheckBox;
    chk_Per_ACC_17: TcxCheckBox;
    chk_Per_ACC_18: TcxCheckBox;
    chk_Per_ACC_19: TcxCheckBox;
    chk_Per_ACC_20: TcxCheckBox;
    Shape79: TShape;
    Shape80: TShape;
    chk_Per_SMS: TcxCheckBox;
    chk_Per_SMS_1: TcxCheckBox;
    chk_Per_SMS_2: TcxCheckBox;
    chk_Per_SMS_3: TcxCheckBox;
    chk_Per_SMS_7: TcxCheckBox;
    chk_Per_SMS_6: TcxCheckBox;
    chk_Per_SMS_5: TcxCheckBox;
    chk_Per_SMS_4: TcxCheckBox;
    chk_Per_ACC_7: TcxCheckBox;
    chk_Per_ACC_8: TcxCheckBox;
    Shape81: TShape;
    Shape82: TShape;
    cxCheckBox118: TcxCheckBox;
    cxCheckBox119: TcxCheckBox;
    cxCheckBox120: TcxCheckBox;
    cxCheckBox122: TcxCheckBox;
    cxCheckBox123: TcxCheckBox;
    cxCheckBox124: TcxCheckBox;
    cxCheckBox125: TcxCheckBox;
    cxCheckBox126: TcxCheckBox;
    cxCheckBox127: TcxCheckBox;
    cxCheckBox128: TcxCheckBox;
    cxCheckBox129: TcxCheckBox;
    cxCheckBox130: TcxCheckBox;
    cxCheckBox131: TcxCheckBox;
    cxCheckBox137: TcxCheckBox;
    cxCheckBox138: TcxCheckBox;
    Shape83: TShape;
    Shape84: TShape;
    cxCheckBox121: TcxCheckBox;
    cxCheckBox132: TcxCheckBox;
    cxCheckBox133: TcxCheckBox;
    cxCheckBox134: TcxCheckBox;
    cxCheckBox135: TcxCheckBox;
    cxCheckBox136: TcxCheckBox;
    cxCheckBox139: TcxCheckBox;
    cxCheckBox140: TcxCheckBox;
    cxCheckBox141: TcxCheckBox;
    cxCheckBox142: TcxCheckBox;
    cxCheckBox143: TcxCheckBox;
    cxCheckBox144: TcxCheckBox;
    cxCheckBox145: TcxCheckBox;
    cxCheckBox146: TcxCheckBox;
    cxCheckBox147: TcxCheckBox;
    cxCheckBox148: TcxCheckBox;
    Shape85: TShape;
    Shape86: TShape;
    cxCheckBox149: TcxCheckBox;
    cxCheckBox150: TcxCheckBox;
    cxCheckBox151: TcxCheckBox;
    cxCheckBox152: TcxCheckBox;
    cxCheckBox153: TcxCheckBox;
    cxCheckBox155: TcxCheckBox;
    cxCheckBox156: TcxCheckBox;
    cxCheckBox157: TcxCheckBox;
    cxCheckBox161: TcxCheckBox;
    cxCheckBox162: TcxCheckBox;
    cxCheckBox164: TcxCheckBox;
    Shape87: TShape;
    Shape88: TShape;
    Shape89: TShape;
    Shape90: TShape;
    cxCheckBox154: TcxCheckBox;
    cxCheckBox158: TcxCheckBox;
    cxCheckBox159: TcxCheckBox;
    cxCheckBox160: TcxCheckBox;
    Shape91: TShape;
    Shape92: TShape;
    cxCheckBox163: TcxCheckBox;
    cxCheckBox165: TcxCheckBox;
    cxCheckBox166: TcxCheckBox;
    cxCheckBox167: TcxCheckBox;
    cxCheckBox168: TcxCheckBox;
    cxCheckBox169: TcxCheckBox;
    cxCheckBox170: TcxCheckBox;
    Shape93: TShape;
    Shape94: TShape;
    cxCheckBox171: TcxCheckBox;
    cxCheckBox172: TcxCheckBox;
    Shape95: TShape;
    Shape96: TShape;
    cxCheckBox175: TcxCheckBox;
    cxCheckBox176: TcxCheckBox;
    cxCheckBox177: TcxCheckBox;
    cxCheckBox178: TcxCheckBox;
    cxCheckBox179: TcxCheckBox;
    cxCheckBox180: TcxCheckBox;
    cxCheckBox181: TcxCheckBox;
    rbPerAll: TcxRadioButton;
    rbPerNotAll: TcxRadioButton;
    rbPerL10: TcxRadioButton;
    rbPerL40: TcxRadioButton;
    cxLabel49: TcxLabel;
    rbMy1Per: TcxRadioButton;
    rbMy2Per: TcxRadioButton;
    btnMyPer1Save: TcxButton;
    btnMyPer2Save: TcxButton;
    cxLabel50: TcxLabel;
    rbPerClear: TcxRadioButton;
    chkWkPer: TcxCheckBox;
    cxStyleSEL: TcxStyle;
    grpPer: TcxGroupBox;
    PBar1: TcxProgressBar;
    btnOk: TcxButton;
    lblPer: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel41: TcxLabel;
    pnl1: TPanel;
    Shape50: TShape;
    cxrbHourTotal: TcxRadioButton;
    cxrbDetail: TcxRadioButton;
    Panel6: TPanel;
    Shape1: TShape;
    rbAccept: TcxRadioButton;
    rbCalling: TcxRadioButton;
    cxLabel32: TcxLabel;
    cxLabel45: TcxLabel;
    cxLabel51: TcxLabel;
    cxLabel52: TcxLabel;
    cxLabel53: TcxLabel;
    Panel7: TPanel;
    rdoUserSTT: TcxRadioButton;
    rdoUserSTT_Date: TcxRadioButton;
    Shape37: TShape;
    Panel8: TPanel;
    Shape2: TShape;
    rbCallSTT: TcxRadioButton;
    rbCIDSTT: TcxRadioButton;
    cxgUserStatColumn12: TcxGridDBColumn;
    cxgUserStatColumn13: TcxGridDBColumn;
    cxgUserStatColumn14: TcxGridDBColumn;
    cxgUserStatColumn15: TcxGridDBColumn;
    cxLabel55: TcxLabel;
    edtMenu: TcxTextEdit;
    btnSch: TcxButton;
    btnPre: TcxButton;
    btnNext: TcxButton;
    cxgMemberPerColumn6: TcxGridBandedColumn;
    procedure cxedPerSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSearchA2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxgPer1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxgMemberPerColumn2GetCellHint(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean;
      var AHintTextRect: TRect);
    procedure cxgMemberPerColumn4PropertiesEditValueChanged(
      Sender: TObject);
    procedure btnSearch3A2Click(Sender: TObject);
    procedure btnSearch1A2Click(Sender: TObject);
		procedure btnSearch2A2Click(Sender: TObject);
    procedure onlyNumericKeyPress(Sender: TObject; var Key: Char);
    procedure cxcbPerGradPropertiesChange(Sender: TObject);
    procedure cxgMemberPerCanFocusRecord(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure cxgMemberPerEditValueChanged(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
    procedure FormDestroy(Sender: TObject);
    procedure cxgPer1StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure cxgPer1DataControllerSortingChanged(Sender: TObject);
    procedure cxgPer1ColumnHeaderClick(Sender: TcxGridTableView; AColumn: TcxGridColumn);
    procedure btnExcelA2Click(Sender: TObject);
    procedure btnSearchA1Click(Sender: TObject);
    procedure cxbDelete2Click(Sender: TObject);
    procedure cxedSearchIdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
		procedure cxMngUserListCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxMngUserListStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure cxbModifyClick(Sender: TObject);
    procedure cxbInsertClick(Sender: TObject);
    procedure btnExcelA1Click(Sender: TObject);
    procedure cxbDeleteClick(Sender: TObject);
    procedure MiTodayClick(Sender: TObject);
    procedure MiYesterdayClick(Sender: TObject);
    procedure MiOneWeekClick(Sender: TObject);
    procedure MiOneMonthClick(Sender: TObject);
    procedure MiStartMonthClick(Sender: TObject);
    procedure cxedAuthIdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSearchA3Click(Sender: TObject);
    procedure btnExcelA3Click(Sender: TObject);
    procedure btnCloseA4Click(Sender: TObject);
    procedure btnModifyA4Click(Sender: TObject);
    procedure btnAuthUserAddClick(Sender: TObject);
    procedure btnAuthUserCloseClick(Sender: TObject);
    procedure btnAuthUserDelClick(Sender: TObject);
    procedure btnSearchA4Click(Sender: TObject);
    procedure cbbAuthUserAddDayKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure chkSelectAllUserA4Click(Sender: TObject);
    procedure btnExcelA4Click(Sender: TObject);
    procedure cxRB1A4Click(Sender: TObject);
    procedure cxViewAuthUserCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxViewAuthUserStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure NStatusClick(Sender: TObject);
    procedure btnAuthPCAddClick(Sender: TObject);
    procedure btnAuthPCCloseClick(Sender: TObject);
    procedure btnAuthPCDelClick(Sender: TObject);
    procedure btnSearchA5Click(Sender: TObject);
    procedure btnAuthPCSetIDClick(Sender: TObject);
    procedure btnAuthPCSetPCClick(Sender: TObject);
    procedure cbbAuthPCAddDayKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure chkSelectAllPCA5Click(Sender: TObject);
    procedure btnExcelA5Click(Sender: TObject);
    procedure cxGridDBColumn1GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure cxRB1A5Click(Sender: TObject);
    procedure cxViewAuthPCStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxedExcelIdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSearchA6Click(Sender: TObject);
    procedure btnExcelA6Click(Sender: TObject);
    procedure cxedUserStatIdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSearchA7Click(Sender: TObject);
    procedure btnExcelA7Click(Sender: TObject);
    procedure rdoUserSTTClick(Sender: TObject);
    procedure edUserLogIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSearchA9Click(Sender: TObject);
    procedure btnExcelA9Click(Sender: TObject);
    procedure rdoUserSTTTimeClick(Sender: TObject);
    procedure btnSearchA8Click(Sender: TObject);
    procedure btnExcelA8Click(Sender: TObject);
    procedure cxgUserHourSttCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxgUserSttCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxrbHourTotalClick(Sender: TObject);
    procedure pop_FamilyPopup(Sender: TObject);
    procedure mniClick(Sender: TObject);
		procedure btn_MuiltList_PerSetClick(Sender: TObject);
    procedure btn_pnl_Mulit_CloseClick(Sender: TObject);
    procedure btnSearch1B1Click(Sender: TObject);
    procedure cxGridB1ViewCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid_Mulit_ManagerListCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGroupBox14MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Notice_ListColumnGridDBTableViewColumn3PropertiesEditValueChanged(
      Sender: TObject);
    procedure btnSearch3B1Click(Sender: TObject);
    procedure btnSearch2B1Click(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure btnSearchB1Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure cxDtStartA3KeyPress(Sender: TObject; var Key: Char);
    procedure btnGetListClick(Sender: TObject);
    procedure cxedSearchIdKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
		procedure cxMngUserListColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxMngUserListDataControllerSortingChanged(Sender: TObject);
    procedure cxgMemberPerCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxgMemberPerCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);
		procedure btnSearch4B1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbPerAllClick(Sender: TObject);
    procedure chkWkPerClick(Sender: TObject);
    procedure btnMyPer1SaveClick(Sender: TObject);
    procedure btnSearch2A2GetDrawParams(Sender: TcxCustomButton; AState: TcxButtonState; var AColor: TColor; AFont: TFont);
    procedure cxgPer1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure btnOkClick(Sender: TObject);
    procedure btnSchClick(Sender: TObject);
    procedure cxgMemberPerStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure edtMenuKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxgMemberPerCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnNextClick(Sender: TObject);
    procedure btnPreClick(Sender: TObject);
  private
    { Private declarations }
    AIndex : Integer;
		Search_Gubun : integer;
		AFocusStr : String;  //권한설정시 포커스 유지용 20181206 KHS
    gsJONLMT : String;   //권한접수현황제한건수
    slMenuSch : TStringList;
    MenuIdx : Integer;

		// 사용자 신규, 수정 창 열기( iRow : 0 보다 클경우는 수정, -1 : 사용자 추가)
    procedure proc_Permission_Search;
    // 메뉴별 권한 목록
    procedure proc_Menu_Permission;
    // 사용자별 권한 목록
		procedure proc_Menu_Search;
    // 기본권한 목록
    procedure proc_User_Permission;
    // 2011.01.03 접수현황건수제한 컬럼에 선택ID별 세팅
    function Set_JONTIT(MemID:String):string;
    procedure proc_Manage_Search;
    procedure proc_Manage_Select(iRow: Integer);
    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure proc_Authority_Search;
    function DeleteAuthManage(AType, AHdNo, ABrNo, AMemID, APCSeq, AReqID: string): Boolean;
    function ExcuteAuthManage(AKey, AMode, AType, AHdNo, ABrNo, AMemID, AIPAddr, APCSeq, ASTCD, AAddDay, AReqID, ASTATUS, AGUBUN, AFromDay, AToDay: string): Boolean;
    function ExpireAuthManage(AType, AHdNo, ABrNo, AMemID, APCSeq, AAddDay, AReqID: string): Boolean;
    function ResponseAuthManage(AXmlData: string): Boolean;
    function SelectAuthManage(AType, AHdNo, ABrNo, AMemID, AIPAddr, ASTCD, ASTATUS, AGUBUN, AFromDay, AToDay: string): Boolean;
    function UpdateAuthManage(AType, AHdNo, ABrNo, APCSeq, AReqID: string): Boolean;
		procedure proc_ExcelDown_Search;
    procedure proc_UserStat_Search;
    procedure proc_RecieveSl(slList: TStringList);
    procedure proc_UserHourSearch;
    procedure SearchUserTime(const ASTime, AETime: Integer);
    procedure ResetUserTimeGrid(const ASTime, AETime, AGubun: Integer);
    procedure RequestUserTimeGrid(const ASTime, AETime, AGubun: Integer);
		procedure proc_FamilyPermission;
		procedure proc_HD_Menu_Search;
		procedure proc_SET_MEMBER_JONLMT(AUserID, AJonLmt : string);
		procedure proc_Manager_Permission_Search;
	public
    { Public declarations }
    // 폼 초기화
    procedure proc_init;
    // 전문 응답 처리
		procedure proc_recieve(ls_rxxml: Widestring);
    procedure proc_BrNameSet;
	end;

var
  Frm_USR: TFrm_USR;
  iCol_JONMAX: integer=-1;
  iRow_JONMAX: integer=-1;
  st_JONMAX: string;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Msg, xe_xml, xe_Lib,
  xe_packet, xe_USR10, xe_Query, xe_Flash, xe_JON51, xe_SearchWord;

procedure TFrm_USR.proc_init;
var
  i, iSel : Integer;
begin
  //---------------------------------------------------------------------------- A1
	cxMngUserList.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to cxMngUserList.ColumnCount - 1 do
  begin
    cxMngUserList.Columns[i].DataBinding.ValueType := 'String';
  end;

  // --------------------------------------------------------------------------- A2
  // 사용자 권한 사용자 리스트 초기화
	cxgPer1.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to cxgPer1.ColumnCount - 1 do
	begin
		cxgPer1.Columns[i].DataBinding.ValueType := 'String';
  end;

  if GS_EnvFile.ReadString('USER_PER', 'MyPer1' , '') = '' then rbMy1Per.Enabled := False
                                                           else rbMy1Per.Enabled := True;

  if GS_EnvFile.ReadString('USER_PER', 'MyPer2' , '') = '' then rbMy2Per.Enabled := False
                                                           else rbMy2Per.Enabled := True;

  // --------------------------------------------------------------------------- A3
  // 사용자 인증현황 인증 리스트
  for i := 0 to cxgAuthority.ColumnCount - 1 do
	begin
		cxgAuthority.Columns[i].DataBinding.ValueType := 'String';
	end;

  cxedAuthId.Text := '';
  SetDateControl(cxDtStartA3, cxDtEndA3, tdToday);

  // --------------------------------------------------------------------------- A4
  // 인증관리(사용자) 리스트
	for I := 0 to cxViewAuthUser.ColumnCount - 1 do
    cxViewAuthUser.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
	cxViewAuthUser.Columns[10].DataBinding.ValueType := 'Integer';

  edtAuthUserID.Text := '';
  SetDateControl(cxDtStartA4, cxDtEndA4, tdTwoWeek);

  iSel := GS_EnvFile.ReadInteger('USR', 'IDSEARCH', 0);
  if iSel = 0 then
  begin
    cxRB1A4.Checked := True;
    cxRB1A4Click(cxRB1A4);
  end else
  if iSel = 1 then
  begin
    cxRB2A4.Checked := True;
    cxRB1A4Click(cxRB2A4);
  end;

  // --------------------------------------------------------------------------- A5
	// 인증관리(PC) 리스트
  for I := 0 to cxViewAuthPC.ColumnCount - 1 do
    cxViewAuthPC.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
	cxViewAuthPC.Columns[9].DataBinding.ValueType := 'Integer';

  edtAuthPCIP.Text := '';
  SetDateControl(cxDtStartA5, cxDtEndA5, tdTwoWeek);

  iSel := GS_EnvFile.ReadInteger('USR', 'PCSEARCH', 0);
  if iSel = 0 then
  begin
    cxRB1A5.Checked := True;
    cxRB1A5Click(cxRB1A5);
  end else
  if iSel = 1 then
  begin
    cxRB2A5.Checked := True;
    cxRB1A5Click(cxRB2A5);
  end;

  // --------------------------------------------------------------------------- A6
  // 사용자 엑셀다운 엑셀다운 리스트
  for i := 0 to cxgExcelDown.ColumnCount - 1 do
  begin
    cxgExcelDown.Columns[i].DataBinding.ValueType := 'String';
  end;

  cxedExcelId.Text := '';
  SetDateControl(cxDtStartA6, cxDtEndA6, tdToday);

  // --------------------------------------------------------------------------- A7
  // 사용자 콜통계 콜통계 리스트
	for i := 0 to cxgUserStat.ColumnCount - 1 do
	begin
		cxgUserStat.Columns[i].DataBinding.ValueType := 'String';
	end;
	cxgUserStat.Columns[5].DataBinding.ValueType := 'Integer';
	cxgUserStat.Columns[6].DataBinding.ValueType := 'Integer';
	cxgUserStat.Columns[7].DataBinding.ValueType := 'Integer';
	cxgUserStat.Columns[8].DataBinding.ValueType := 'Integer';
	cxgUserStat.Columns[9].DataBinding.ValueType := 'Integer';
	cxgUserStat.Columns[10].DataBinding.ValueType := 'Integer';

  cxedUserStatId.Text := '';
	SetDateControl(cxDtStartA7, cxDtEndA7, tdToday);

  // --------------------------------------------------------------------------- A8
	if TCK_USER_PER.USR_HourCall_N_ADMIN = '1' then //관리자 제외 권한시	 20140520 KHS
	begin
		cbbA8.Properties.Items.Clear;
		cbbA8.Properties.Items.add('상담원');
		cbbA8.ItemIndex := 0;
	end;

	// 사용자 콜통계 콜통계 리스트
	cxgUserHourStt.BeginUpdate;
	for i := 0 to cxgUserHourStt.ColumnCount - 1 do
	begin
		cxgUserHourStt.Columns[i].DataBinding.ValueType := 'Integer';
	end;
	cxgUserHourStt.Columns[1].DataBinding.ValueType := 'String';
	cxgUserHourStt.Columns[2].DataBinding.ValueType := 'String';
	cxgUserHourStt.Columns[3].DataBinding.ValueType := 'String';
	cxgUserHourStt.Columns[4].DataBinding.ValueType := 'String';
	cxgUserHourStt.EndUpdate;

  // 사용자 콜통계 콜통계 리스트
  cxgUserStt.BeginUpdate;
  for i := 0 to cxgUserStt.ColumnCount - 1 do
  begin
    cxgUserStt.Columns[i].DataBinding.ValueType := 'Integer';
  end;
  cxgUserStt.Columns[1].DataBinding.ValueType := 'String';
	cxgUserStt.Columns[2].DataBinding.ValueType := 'String';
  cxgUserStt.Columns[3].DataBinding.ValueType := 'String';
  cxgUserStt.Columns[4].DataBinding.ValueType := 'String';
  cxgUserStt.EndUpdate;

	//사용자별 시간통계(통합-일자별) 20130828 KHS
	cxgUserHourStt_Date.BeginUpdate;
	for i := 0 to cxgUserHourStt_Date.ColumnCount - 1 do
	begin
		cxgUserHourStt_Date.Columns[i].DataBinding.ValueType := 'Integer';
	end;
	cxgUserHourStt_Date.Columns[1].DataBinding.ValueType := 'String';
	cxgUserHourStt_Date.Columns[2].DataBinding.ValueType := 'String';
	cxgUserHourStt_Date.Columns[3].DataBinding.ValueType := 'String';
	cxgUserHourStt_Date.Columns[4].DataBinding.ValueType := 'String';
	cxgUserHourStt_Date.Columns[5].DataBinding.ValueType := 'String';
	cxgUserHourStt_Date.EndUpdate;

	//사용자별 시간통계(상세-일자별) 20130828 KHS
	cxgUserStt_Date.BeginUpdate;
	for i := 0 to cxgUserStt_Date.ColumnCount - 1 do
	begin
		cxgUserStt_Date.Columns[i].DataBinding.ValueType := 'Integer';
	end;
	cxgUserStt_Date.Columns[1].DataBinding.ValueType := 'String';
	cxgUserStt_Date.Columns[2].DataBinding.ValueType := 'String';
	cxgUserStt_Date.Columns[3].DataBinding.ValueType := 'String';
	cxgUserStt_Date.Columns[4].DataBinding.ValueType := 'String';
	cxgUserStt_Date.Columns[5].DataBinding.ValueType := 'String';
	cxgUserStt_Date.EndUpdate;

  cxedHourId.Text := '';
	cxGrid1A8.Align := alClient;
	cxGrid1A8.Visible := True;
	cxGrid2A8.Align := alClient;
	cxGrid2A8.Visible := False;
	cxrbHourTotal.Checked := True;
	cxrbHourTotalClick(cxrbHourTotal);

	cxGrid3A8.Align := alClient;
	cxGrid3A8.Visible := False;
	cxGrid4A8.Align := alClient;
	cxGrid4A8.Visible := False;
	rdoUserSTTTime.Checked := True;
	rdoUserSTTTimeClick(rdoUserSTTTime);

	SetDateControl(cxDtStartA8, cxDtEndA8, tdToday);

  // --------------------------------------------------------------------------- A9
	//사용자 근태현황 리스트
  for i := 0 to cxgUserLog.ColumnCount - 1 do
  begin
    cxgUserLog.Columns[i].DataBinding.ValueType := 'String';
  end;

  edUserLogID.Text := '';
  SetDateControl(cxDtStartA9, cxDtEndA9, tdToday);

  // --------------------------------------------------------------------------- B1
  // 패밀리관리자 리스트 초기화
  cxGridB1View.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to cxGridB1View.ColumnCount - 1 do
  begin
    cxGridB1View.Columns[i].DataBinding.ValueType := 'String';
  end;

  for i := 0 to cxGridLB1View.ColumnCount - 1 do
  begin
    cxGridLB1View.Columns[i].DataBinding.ValueType := 'String';
  end;

	// 패밀리관리자 다중선택리스트 초기화
	for i := 0 to cxGrid_Mulit_ManagerList.ColumnCount - 1 do
	begin
		cxGrid_Mulit_ManagerList.Columns[i].DataBinding.ValueType := 'String';
	end;

  if FileExists(DBDIRECTORY + 'FPermission.tmp') then
  begin
    DeleteFile(DBDIRECTORY + 'FPermission.tmp');
  end;

  btnSearch2B1.Enabled := False;
  btnSearch2B1.Tag := 1;

  proc_BrNameSet;
end;

procedure TFrm_USR.proc_recieve(ls_rxxml: Widestring);
var
  xdom: msDomDocument;
	ls_ClientKey, ls_Msg_Err, sMsg, sTemp, sBrNo, sPerMMCode: string;
	lst_Result: IXMLDomNodeList;
  ls_Rcrd, slIdList : TStringList;
	i, j, iHp, iRegDate, iSNum, iTel, iRow, iIndate, iBrNo, iCompany, iHwKey, iAuthSt, iTryCount,
	iReqTime, iRspTime, iId, iTerm, iCust, iWk, iEnd, iCancel, iAsk, iSum, iTotalSum, iHour, iSum2, isumorg, iCnt: Integer;
	CusCNT, DrvCNT, FinCNT, CanCNT, AskCNT, TotCNT : integer;
	ls_Handle: HWND;
	HasAddExcelPer: Boolean;
	HWKey: string;
	sUser : string;
	//2009-05-15  작성자 : 임창기 (사용자근태현황 메뉴)
	usrID, sDate, stDate, edDate, sTerm : String;
	//2010.12.07 (실명인증일)
	iCertDate: Integer;
	//2011.01.03 접수건수타이틀
	stJonTit: string;
begin
	try
  	xdom := ComsDomDocument.Create;
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
		  				cxMngUserList.BeginUpdate;
		  				cxMngUserList.DataController.SetRecordCount(0);
		  				iHp := cxMngUserList.GetColumnByFieldName('핸드폰번호').Index;
		  				iRegDate := cxMngUserList.GetColumnByFieldName('입사일').Index;
		  				iCertDate := cxMngUserList.GetColumnByFieldName('인증일').Index;

		  				iSNum := cxMngUserList.GetColumnByFieldName('주민등록번호').Index;
		  				iTel := cxMngUserList.GetColumnByFieldName('연락처').Index;
		  				isumorg := cxMngUserList.GetColumnByFieldName('주민원본').Index;

		  				if (0 < GetXmlRecordCount(ls_rxxml)) then
		  				begin
		  					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
		  					ls_Rcrd := TStringList.Create;
		  					try
		  						for i := 0 to lst_Result.length - 1 do
		  						begin
		  							GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
		  							sBrNo := ls_Rcrd[0];
		  							if sBrNo <> '' then
		  							begin
		  								iBrNo := scb_BranchCode.IndexOf(sBrNo);
		  								if iBrNo >= 0 then
		  									sBrNo := scb_BranchName.Strings[iBrNo];
		  							end;
		  							ls_Rcrd.Insert(0, sBrNo);
		  							ls_Rcrd.Insert(0, IntToStr(i + 1));
										iRow := cxMngUserList.DataController.AppendRecord;
		  							cxMngUserList.DataController.Values[iRow, 0] := ls_Rcrd[0];
		  							cxMngUserList.DataController.Values[iRow, 1] := ls_Rcrd[1];
		  							cxMngUserList.DataController.Values[iRow, 2] := ls_Rcrd[2];
		  							cxMngUserList.DataController.Values[iRow, 3] := ls_Rcrd[3];
		  							cxMngUserList.DataController.Values[iRow, 4] := ls_Rcrd[4];
		  							cxMngUserList.DataController.Values[iRow, 5] := ls_Rcrd[5];
		  							cxMngUserList.DataController.Values[iRow, 6] := ls_Rcrd[6];
		  							cxMngUserList.DataController.Values[iRow, 7] := ls_Rcrd[7];
		  							cxMngUserList.DataController.Values[iRow, 8] := ls_Rcrd[8];
		  							cxMngUserList.DataController.Values[iRow, 9] := ls_Rcrd[9];
		  							cxMngUserList.DataController.Values[iRow, 10] := ls_Rcrd[10];
		  							cxMngUserList.DataController.Values[iRow, 11] := ls_Rcrd[11];
		  							cxMngUserList.DataController.Values[iRow, 12] := ls_Rcrd[12];
		  							cxMngUserList.DataController.Values[iRow, 13] := ls_Rcrd[13];
		  							cxMngUserList.DataController.Values[iRow, 14] := ls_Rcrd[14];
		  							cxMngUserList.DataController.Values[iRow, 15] := ls_Rcrd[15];
		  							cxMngUserList.DataController.Values[iRow, 16] := ls_Rcrd[16];
		  							cxMngUserList.DataController.Values[iRow, 17] := ls_Rcrd[17];

		  							cxMngUserList.DataController.Values[iRow, iHp] := strtocall(cxMngUserList.DataController.Values[iRow, iHp]);
		  							cxMngUserList.DataController.Values[iRow, iTel] := strtocall(cxMngUserList.DataController.Values[iRow, iTel]);
		  							sTemp := cxMngUserList.DataController.Values[iRow, iRegDate];
		  							if sTemp <> '' then
		  								sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2);
		  							cxMngUserList.DataController.Values[iRow, iRegDate] := sTemp;
		  							sTemp := cxMngUserList.DataController.Values[iRow, iSNum];
		  							if (sTemp <> '') and (Pos('-',sTemp)<1) then
		  								sTemp := Copy(sTemp, 1, 6) + '-' + Copy(sTemp, 7, 7);

		  							cxMngUserList.DataController.Values[iRow, iSNum] := sTemp;

		  							// 2011.01.11 주민번호원본
		  							cxMngUserList.DataController.Values[iRow, isumorg] := sTemp;
		  							sTemp := cxMngUserList.DataController.Values[iRow, iCertDate];
		  							if (sTemp <> '') and (Length(sTemp)=8) then
		  								sTemp := trim(Copy(sTemp, 1, 4)) + '-' + (Copy(sTemp, 5, 2)) + '-' + (Copy(sTemp, 7, 2));
		  							if (sTemp<>'Y') then
		  							begin
		  								sTemp:='N';
		  							end;
		  							cxMngUserList.DataController.Values[iRow, iCertDate] := sTemp;

		  							// 2011.01.11
										if HmasYN=False then
		  							begin
											if (string(cxMngUserList.DataController.Values[iRow, iCertDate])<>'N') and (Length(string(cxMngUserList.DataController.Values[iRow, isumorg]))=14) then
		  								begin
		  									cxMngUserList.DataController.Values[iRow, iSNum]:=Copy(cxMngUserList.DataController.Values[iRow, iSNum],1,7)+'*******';
		  								end;
		  							end;
		  						end;
		  					finally
		  						ls_Rcrd.Free;
		  					end;
		  				end;
		  				cxMngUserList.EndUpdate;
		  			end;
		  		4:
		  			begin
		  				ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
		  				sMsg := GetXmlErrorMsg(ls_rxxml);
		  				if ('0000' = ls_Msg_Err) and ('1' = sMsg) then
		  				begin
		  					GMessagebox('직원을 정지 하였습니다.', CDMSI);
		  					if cxrbSearchUse.Checked then
		  					begin
		  						iId := cxMngUserList.GetColumnByFieldName('아이디').Index;
		  						iRow := cxMngUserList.DataController.FindRecordIndexByText(0, iId, cxedSelId.Text, True, True, True);
		  						if iRow >= 0 then
		  							cxMngUserList.DataController.DeleteRecord(iRow);
		  					end	else
		  					if cxrbSearchAll.Checked then
		  					begin
		  						iId := cxMngUserList.GetColumnByFieldName('아이디').Index;
		  						iRow :=
		  							cxMngUserList.DataController.FindRecordIndexByText(0, iId, cxedSelId.Text, True, True, True);
		  						if iRow >= 0 then
		  							cxMngUserList.DataController.Values[iRow, 9] := '정지';
		  					end;
		  				end;
		  			end;
		  		5:
		  			begin
		  				cxgAuthority.BeginUpdate;
		  				try
		  					cxgAuthority.DataController.SetRecordCount(0);
		  					iCompany  := cxgAuthority.GetColumnByFieldName('회사명').Index;
		  					iID       := cxgAuthority.GetColumnByFieldName('요청ID').Index;
		  					iHwKey    := cxgAuthority.GetColumnByFieldName('PC고유번호').Index;
		  					iAuthSt   := cxgAuthority.GetColumnByFieldName('인증상태').Index;
		  					iTryCount := cxgAuthority.GetColumnByFieldName('인증시도횟수').Index;
		  					iReqTime  := cxgAuthority.GetColumnByFieldName('인증요청시간').Index;
		  					iRspTime  := cxgAuthority.GetColumnByFieldName('인증완료시간').Index;
		  					iTel      := cxgAuthority.GetColumnByFieldName('수신번호').Index;

		  					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Response/Data');

		  					for I := 0 to lst_Result.length - 1 do
		  					begin
		  						iRow := cxgAuthority.DataController.AppendRecord;
		  						with cxgAuthority.DataController, lst_Result.item[i].attributes do
		  						begin
		  							Values[iRow, iCompany]   := Format('%s / %s', [getNamedItem('HD_NM').text, getNamedItem('BR_NM').text]);
		  							Values[iRow, iId]        := getNamedItem('MEM_ID').text;
		  							Values[iRow, iHwKey]     := GetHwKey(
		  																					getNamedItem('MAC_ADDR').text,
		  																					getNamedItem('HDD_SN').text,
		  																					getNamedItem('CPU_SN').text,
		  																					getNamedItem('MB_SN').text,
		  																					True
		  																				);
		  							Values[iRow, iAuthSt]    := getNamedItem('AUTH_ST').text;
		  							Values[iRow, iTryCount]  := IfThen(StrToIntDef(getNamedItem('TRY_COUNT').text, 0) = 0, '0', getNamedItem('TRY_COUNT').text);
		  							Values[iRow, iReqTime]   := GetStrToLongDateTimeStr(getNamedItem('AUTH_REQ_DTM').text);
		  							Values[iRow, iRspTime]   := GetStrToLongDateTimeStr(getNamedItem('AUTH_SUCC_DTM').text);
		  							Values[iRow, iTel]       := strtocall(getNamedItem('PHONE_NUM').text);
		  						end;
		  					end;
		  				finally
		  					cxgAuthority.EndUpdate;
		  				end;
		  			end;
		  		6:
		  			begin
		  				cxgExcelDown.BeginUpdate;
		  				cxgExcelDown.DataController.SetRecordCount(0);
		  				if (0 < GetXmlRecordCount(ls_rxxml)) then
		  				begin
		  					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
		  					ls_Rcrd := TStringList.Create;
		  					try
		  						for i := 0 to lst_Result.length - 1 do
		  						begin
		  							GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
		  							iRow := cxgExcelDown.DataController.AppendRecord;
		  							sTemp := ls_Rcrd[0];
		  							if sTemp <> '' then
		  								sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2) + ' '
		  										   + Copy(sTemp, 9, 2) + ':' + Copy(sTemp, 11, 2) + ':' + Copy(sTemp, 13, 2);
		  							cxgExcelDown.DataController.Values[iRow, 0] := sTemp;
		  							cxgExcelDown.DataController.Values[iRow, 1] := ls_Rcrd[1];
		  							cxgExcelDown.DataController.Values[iRow, 2] := ls_Rcrd[2];
		  							cxgExcelDown.DataController.Values[iRow, 3] := ls_Rcrd[3];
		  							cxgExcelDown.DataController.Values[iRow, 4] := ls_Rcrd[4];
		  							cxgExcelDown.DataController.Values[iRow, 5] := ls_Rcrd[5];
		  							cxgExcelDown.DataController.Values[iRow, 6] := GetHwKey(ls_Rcrd[6], ls_Rcrd[7], '', '', True);
		  							cxgExcelDown.DataController.Values[iRow, 7] := ls_Rcrd[8];
		  							cxgExcelDown.DataController.Values[iRow, 8] := ls_Rcrd[9];
		  							cxgExcelDown.DataController.Values[iRow, 9] := ls_Rcrd[10];
		  							cxgExcelDown.DataController.Values[iRow, 10] := ls_Rcrd[11];
		  						end;
		  					finally
		  						ls_Rcrd.Free;
		  					end;
		  				end;
		  				cxgExcelDown.EndUpdate;
		  			end;
		  		7:
		  			begin
		  				cxgUserStat.BeginUpdate;
		  				cxgUserStat.DataController.SetRecordCount(0);
		  				if (0 < GetXmlRecordCount(ls_rxxml)) then
		  				begin
		  					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
		  					ls_Rcrd := TStringList.Create;
		  					try
		  						if Search_Gubun In [0, 2] then
		  						begin
		  							for i := 0 to lst_Result.length - 1 do
		  							begin
		  								GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
		  								iRow := cxgUserStat.DataController.AppendRecord;

		  								for j := 0 to cxgUserStat.ColumnCount - 1 do
		  								begin
                        if j > 10 then Break; // 나머지는 안보여줘도 됨
                        
                        if j < ls_Rcrd.Count then
                        begin
  		  									if (UpperCase(cxgUserStat.Columns[j].DataBinding.ValueType) <> 'STRING') And
                             (StrToFloatDef(ls_Rcrd[j], -100) = -100)	then ls_Rcrd[j] := '0';

                          if j = 14 then ls_Rcrd[j] := MinutesToHourEx(StrToIntDef(ls_Rcrd[j], 0));
    		  								cxgUserStat.DataController.Values[iRow, j] := ls_Rcrd[j];
                        end;
		  								end;
		  							end;
		  						end	else
		  						if Search_Gubun In [1, 3] then
		  						begin
		  							CusCNT := 0;
		  							DrvCNT := 0;
		  							FinCNT := 0;
		  							CanCNT := 0;
		  							AskCNT := 0;
		  							TotCNT := 0;
		  							sUser := '';
		  							for i := 0 to lst_Result.length - 1 do
		  							begin
		  								GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
		  								if (ls_Rcrd[2] <> sUser) and (sUser <> '') then
		  								begin
		  									iRow := cxgUserStat.DataController.AppendRecord;
		  									cxgUserStat.DataController.Values[iRow,  0] := '';
		  									cxgUserStat.DataController.Values[iRow,  1] := '';
		  									cxgUserStat.DataController.Values[iRow,  2] := '';
		  									cxgUserStat.DataController.Values[iRow,  3] := '';
		  									cxgUserStat.DataController.Values[iRow,  4] := '합    계';
		  									cxgUserStat.DataController.Values[iRow,  5] := FormatFloat('#,##0', CusCNT);
		  									cxgUserStat.DataController.Values[iRow,  6] := FormatFloat('#,##0', DrvCNT);
		  									cxgUserStat.DataController.Values[iRow,  7] := FormatFloat('#,##0', FinCNT);
		  									cxgUserStat.DataController.Values[iRow,  8] := FormatFloat('#,##0', CanCNT);
		  									cxgUserStat.DataController.Values[iRow,  9] := FormatFloat('#,##0', AskCNT);
		  									cxgUserStat.DataController.Values[iRow, 10] := FormatFloat('#,##0', TotCNT);
		  									CusCNT := 0;
		  									DrvCNT := 0;
		  									FinCNT := 0;
		  									CanCNT := 0;
		  									AskCNT := 0;
		  									TotCNT := 0;
		  									sUser := '';
		  								end;
		  								iRow := cxgUserStat.DataController.AppendRecord;
		  								// 1 Record 추가
		  								for j := 0 to cxgUserStat.ColumnCount - 1 do
		  								begin
                        if j < ls_Rcrd.Count then
                        begin
                          if (UpperCase(cxgUserStat.Columns[j].DataBinding.ValueType) <> 'STRING') and
                             (StrToFloatDef(ls_Rcrd[j], -100) = -100) then
                          begin
                            ls_Rcrd[j] := '0';
                          end	else
                          begin
                            case j of
                              5 : CusCNT := CusCNT + strtoint(ls_Rcrd[5]);
                              6 : DrvCNT := DrvCNT + strtoint(ls_Rcrd[6]);
                              7 : FinCNT := FinCNT + strtoint(ls_Rcrd[7]);
                              8 : CanCNT := CanCNT + strtoint(ls_Rcrd[8]);
                              9 : AskCNT := AskCNT + strtoint(ls_Rcrd[9]);
                              10: TotCNT := TotCNT + strtoint(ls_Rcrd[10]);
                            end;
                          end;
                          if Search_Gubun = 1 then
                            if j = 4 then ls_Rcrd[j] := copy(ls_Rcrd[j],1,4) + '-' + copy(ls_Rcrd[j],5,2) + '-' + copy(ls_Rcrd[j],7,2);

                          if j = 14 then ls_Rcrd[j] := MinutesToHourEx(StrToIntDef(ls_Rcrd[j], 0));
                          cxgUserStat.DataController.Values[iRow, j] := ls_Rcrd[j];
                        end;
		  								end;
		  								sUser := ls_Rcrd[2];
		  							end;

		  							if (sUser <> '') then
		  							begin
		  								iRow := cxgUserStat.DataController.AppendRecord;
		  								cxgUserStat.DataController.Values[iRow,  0] := '';
		  								cxgUserStat.DataController.Values[iRow,  1] := '';
		  								cxgUserStat.DataController.Values[iRow,  2] := '';
		  								cxgUserStat.DataController.Values[iRow,  3] := '';
		  								cxgUserStat.DataController.Values[iRow,  4] := '합    계';
		  								cxgUserStat.DataController.Values[iRow,  5] := FormatFloat('#,##0', CusCNT);
		  								cxgUserStat.DataController.Values[iRow,  6] := FormatFloat('#,##0', DrvCNT);
		  								cxgUserStat.DataController.Values[iRow,  7] := FormatFloat('#,##0', FinCNT);
		  								cxgUserStat.DataController.Values[iRow,  8] := FormatFloat('#,##0', CanCNT);
		  								cxgUserStat.DataController.Values[iRow,  9] := FormatFloat('#,##0', AskCNT);
		  								cxgUserStat.DataController.Values[iRow, 10] := FormatFloat('#,##0', TotCNT);
		  							end;
		  						end;
		  					finally
		  						ls_Rcrd.Free;
		  					end;
		  				end;
							if cxgUserStat.DataController.RecordCount < 1 then 
							begin
								GMessagebox('검색된 내용이 없습니다.', CDMSI);
							end;
		  				cxgUserStat.EndUpdate;

							for j := 0 to cxgUserStat.ColumnCount - 1 do
							begin
                if cxgUserStat.Columns[j].SortOrder <> soNone then
                  cxgUserStat.Columns[j].SortOrder := soNone;
              end;
		  			end;
		  		8:
		  			begin
		  				iCnt := 0;
		  				cxgPer1.BeginUpdate;
		  				cxgPer1.DataController.SetRecordCount(0);
		  				if (0 < GetXmlRecordCount(ls_rxxml)) then
		  				begin
		  					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
		  					ls_Rcrd := TStringList.Create;
		  					try
		  						for i := 0 to lst_Result.length - 1 do
		  						begin
		  							GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
		  							sBrNo := ls_Rcrd[0];

		  							if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB   패밀리지사일때
		  							begin
		  								if not Check_ALLHD(GT_SEL_BRNO.HDNO) then      //전체지사권한이 없을때
		  								begin
		  									if scb_FamilyBrCode.IndexOf(sBrNo) = -1 then   //권한있는 지사일경우만 그리드표기
		  									else
		  									begin
		  										if sBrNo <> '' then
		  										begin
		  											iBrNo := scb_BranchCode.IndexOf(sBrNo);
		  											if iBrNo >= 0 then
		  												sBrNo := scb_BranchName.Strings[iBrNo];
		  										end;
		  										ls_Rcrd[0] := sBrNo;
		  										ls_Rcrd.Insert(0, IntToStr(iCnt + 1));
		  										iRow := cxgPer1.DataController.AppendRecord;
		  										// 1 Record 추가
		  										for j := 0 to cxgPer1.ColumnCount - 1 do
		  										begin
		  											if (UpperCase(cxgPer1.Columns[j].DataBinding.ValueType) <> 'STRING') and (StrToFloatDef(ls_Rcrd[j], -100) = -100) then
		  												ls_Rcrd[j] := '0';
		  											cxgPer1.DataController.Values[iRow, j] := ls_Rcrd[j];
		  											// 지사명
		  										end;
		  										inc(iCnt);
		  									end;
		  								end else
		  								begin
		  									if sBrNo <> '' then
		  									begin
		  										iBrNo := scb_BranchCode.IndexOf(sBrNo);
		  										if iBrNo >= 0 then
		  											sBrNo := scb_BranchName.Strings[iBrNo];
		  									end;
		  									ls_Rcrd[0] := sBrNo;
		  									ls_Rcrd.Insert(0, IntToStr(i + 1));
		  									iRow := cxgPer1.DataController.AppendRecord;
		  									// 1 Record 추가
		  									for j := 0 to cxgPer1.ColumnCount - 1 do
		  									begin
		  										if (UpperCase(cxgPer1.Columns[j].DataBinding.ValueType) <> 'STRING') and (StrToFloatDef(ls_Rcrd[j], -100) = -100) then
		  											ls_Rcrd[j] := '0';
		  										cxgPer1.DataController.Values[iRow, j] := ls_Rcrd[j];
		  										// 지사명
		  									end;
		  								end;
		  							end else
		  							begin
		  								if sBrNo <> '' then
		  								begin
		  									iBrNo := scb_BranchCode.IndexOf(sBrNo);
		  									if iBrNo >= 0 then
		  										sBrNo := scb_BranchName.Strings[iBrNo];
		  								end;
		  								ls_Rcrd[0] := sBrNo;
		  								ls_Rcrd.Insert(0, IntToStr(i + 1));
		  								iRow := cxgPer1.DataController.AppendRecord;
		  								// 1 Record 추가
		  								for j := 0 to cxgPer1.ColumnCount - 1 do
		  								begin
		  									if (UpperCase(cxgPer1.Columns[j].DataBinding.ValueType) <> 'STRING') and (StrToFloatDef(ls_Rcrd[j], -100) = -100) then
		  										ls_Rcrd[j] := '0';
		  									cxgPer1.DataController.Values[iRow, j] := ls_Rcrd[j];
		  									// 지사명
		  								end;
		  							end;
		  						end;
		  					finally
		  						ls_Rcrd.Free;
		  					end;
		  				end;
		  				cxgPer1.EndUpdate;
		  			end;
		  		9:
		  			begin
		  				HasAddExcelPer := False;
							cxGMenuLevel.BeginUpdate;
							ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
		  				sMsg := GetXmlErrorMsg(ls_rxxml);
		  				if '0000' = ls_Msg_Err then
		  				begin
		  					if (0 < GetXmlRecordCount(ls_rxxml)) then
		  					begin
		  						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
		  						ls_Rcrd := TStringList.Create;
		  						try
										for i := 0 to lst_Result.length - 1 do
										begin
											GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
											if (ls_Rcrd[4] = 'WOR02') and (ls_Rcrd[10] = '5') then   //대전연합만 기사 주민번호 열람 권한 보여줌
											begin                                                    //다른 지역은 기사주민번호 열람 제한 없음
												if ( (GT_USERIF.ShareNo = 'G49') And (GS_PRJ_AREA = 'O') ) Or
													 ( (GT_USERIF.ShareNo = 'G39') And (GS_PRJ_AREA = 'O') ) Or
													 ( (GT_USERIF.ShareNo = 'G08') And (GS_PRJ_AREA = 'O') ) Or
													 ( (GT_USERIF.ShareNo = 'G15') And (GS_PRJ_AREA = 'O') ) Or
													 ( (GT_USERIF.ShareNo = 'G41') And (GS_PRJ_AREA = 'O') ) Or
													 ( (GT_USERIF.ShareNo = 'G54') And (GS_PRJ_AREA = 'O') ) Or
													 ( (GT_USERIF.ShareNo = 'G26') And (GS_PRJ_AREA = 'O') ) Or ( GT_USERIF.BR = 'B100' ) then
												else
													continue;
											end;
											iRow := cxGMenuLevel.DataController.AppendRecord;
		  								// 1 Record 추가
		  								for j := 0 to cxGMenuLevel.ColumnCount - 1 do
		  								begin
												if (J = 8) and (Trim(ls_Rcrd[J]) = '') then
		  										ls_Rcrd[8] := ls_Rcrd[7];
		  									cxGMenuLevel.DataController.Values[iRow, j] := ls_Rcrd[j]; // 지사명
		  								end;

		  								// 엑셀 다운로드 허용, (고객번호 숨김) 추가
											if not HasAddExcelPer and (ls_Rcrd[3] = 'COM') then
		  								begin
		  									// 엑셀다운로드 허용
		  									iRow := cxGMenuLevel.DataController.AppendRecord;
		  									// 1 Record 추가
		  									for j := 0 to cxGMenuLevel.ColumnCount - 1 do
		  									begin
		  										case j of
                            2  : cxGMenuLevel.DataController.Values[iRow, j] := '엑셀다운로드허용';
                            4  : cxGMenuLevel.DataController.Values[iRow, j] := 'COM00';
                            8  : cxGMenuLevel.DataController.Values[iRow, j] := '엑셀다운로드허용(고객번호표시)';
                            10 : cxGMenuLevel.DataController.Values[iRow, j] := 1;
		  										else
		  											cxGMenuLevel.DataController.Values[iRow, j] := ls_Rcrd[j]; // 지사명
		  										end;
		  									end;

		  									// 엑셀다운로드 허용(고객번호 숨김)
		  									iRow := cxGMenuLevel.DataController.AppendRecord;
		  									// 1 Record 추가
		  									for j := 0 to cxGMenuLevel.ColumnCount - 1 do
		  									begin
		  										case j of
		  										2:  cxGMenuLevel.DataController.Values[iRow, j] := '엑셀다운로드허용(고객번호숨김)';
		  										4:  cxGMenuLevel.DataController.Values[iRow, j] := 'COM00';
		  										8:  cxGMenuLevel.DataController.Values[iRow, j] := '엑셀다운로드허용(고객번호숨김)';
		  										10: cxGMenuLevel.DataController.Values[iRow, j] := 2;
		  										else
		  											cxGMenuLevel.DataController.Values[iRow, j] := ls_Rcrd[j]; // 지사명
		  										end;
		  									end;
		  									HasAddExcelPer := True;
		  								end;
		  							end;
		  						finally
		  							ls_Rcrd.Free;
		  						end;
		  					end;
		  					cxGMenuLevel.Columns[0].SortOrder := soAscending;
		  					cxGMenuLevel.EndUpdate;
		  					proc_Permission_Search;
		  				end else
		  				begin
		  					GMessagebox(ls_Msg_Err, CDMSE);
		  				end;
		  			end;
		  		10:
		  			begin
		  				cxgMemberPer.BeginUpdate;
		  				if (0 < GetXmlRecordCount(ls_rxxml)) then
		  				begin
		  					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
		  					ls_Rcrd := TStringList.Create;
		  					try
		  						for i := 0 to lst_Result.length - 1 do
		  						begin
		  							GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
										sPerMMCode := ls_Rcrd[0] + ls_Rcrd[2];
		  							if Copy(sPerMMCode, 6, 1) = '0' then
		  								sPerMMCode := Copy(sPerMMCode, 1, 5);
										iRow := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, sPerMMCode, False, True, True);
		  							if iRow >= 0 then
		  							begin
		  								if (Length(sPerMMCode) = 5) and (ls_Rcrd[1] = '1') then
		  									cxgMemberPer.DataController.Values[iRow, 3] := '1'
		  								else if (Length(sPerMMCode) > 5) and (ls_Rcrd[3] = '1') then
		  									cxgMemberPer.DataController.Values[iRow, 3] := '1';
		  							end;
		  						end;
		  					finally
									ls_Rcrd.Free;
								end;
							end;
							cxgMemberPer.EndUpdate;

							iRow := cxgMemberPer.DataController.FindRecordIndexByText(0,4,AFocusStr,False,True,True);
							cxgMemberPer.DataController.FocusedRecordIndex := iRow;
						end;
		  		11:
		  			begin
		  				GMessagebox('권한을 변경하였습니다.', CDMSI);
		  			end;
		  		12:
		  			begin
		  				if rdoUserSTTTime.Checked then
		  				begin
		  					cxgUserHourStt.BeginUpdate;
		  					cxgUserStt.BeginUpdate;
		  					slIdList := TStringList.Create;
		  					slIdList.Clear;
		  					if (0 < GetXmlRecordCount(ls_rxxml)) then
		  					begin
		  						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
		  						ls_Rcrd := TStringList.Create;
		  						try
		  							for i := 0 to lst_Result.length - 1 do
		  							begin
		  								GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
		  								iRow := slIdList.IndexOf(ls_Rcrd[2]);
		  								if iRow = -1 then
		  								begin
		  									slIdList.Add(ls_Rcrd[2]);
		  									iRow := cxgUserHourStt.DataController.AppendRecord;
		  									// 1 Record 추가
		  									cxgUserHourStt.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
		  									cxgUserHourStt.DataController.Values[iRow, 1] := ls_Rcrd[0];
		  									cxgUserHourStt.DataController.Values[iRow, 2] := ls_Rcrd[1];
		  									cxgUserHourStt.DataController.Values[iRow, 3] := ls_Rcrd[2];
		  									cxgUserHourStt.DataController.Values[iRow, 4] := ls_Rcrd[3];

		  									cxgUserHourStt.DataController.Values[iRow, 149] := '0';
		  									cxgUserHourStt.DataController.Values[iRow, 150] := '0';
		  									cxgUserHourStt.DataController.Values[iRow, 151] := '0';
		  									cxgUserHourStt.DataController.Values[iRow, 152] := '0';
		  									cxgUserHourStt.DataController.Values[iRow, 153] := '0';
		  									cxgUserHourStt.DataController.Values[iRow, 154] := '0';

		  									iRow := cxgUserStt.DataController.AppendRecord;
		  									// 1 Record 추가
		  									cxgUserStt.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
		  									cxgUserStt.DataController.Values[iRow, 1] := ls_Rcrd[0];
		  									cxgUserStt.DataController.Values[iRow, 2] := ls_Rcrd[1];
		  									cxgUserStt.DataController.Values[iRow, 3] := ls_Rcrd[2];
		  									cxgUserStt.DataController.Values[iRow, 4] := ls_Rcrd[3];
		  									cxgUserStt.DataController.Values[iRow, 29] := '0';
		  								end;
		  								if StrToIntDef(ls_Rcrd[5], -1) = -1 then ls_Rcrd[5] := '0';
		  								if StrToIntDef(ls_Rcrd[6], -1) = -1 then ls_Rcrd[6] := '0';
		  								if StrToIntDef(ls_Rcrd[7], -1) = -1 then ls_Rcrd[7] := '0';
		  								if StrToIntDef(ls_Rcrd[8], -1) = -1 then ls_Rcrd[8] := '0';
		  								if StrToIntDef(ls_Rcrd[9], -1) = -1 then ls_Rcrd[9] := '0';
		  								if StrToIntDef(ls_Rcrd[10], -1) = -1 then ls_Rcrd[10] := '0';

		  								iHour := StrToIntDef(ls_Rcrd[4], 0);
		  								case iHour of
		  									9..23:
		  										begin
		  											cxgUserStt.DataController.Values[iRow, iHour - 4] := ls_Rcrd[10];
		  											iSum2 := StrToIntDef(cxgUserStt.DataController.Values[iRow, 29], 0);
		  											iSum2 := iSum2 + StrToIntDef(ls_Rcrd[10], 0);
		  											cxgUserStt.DataController.Values[iRow, 29] := IntToStr(iSum2);
		  											iTerm := (iHour * 6) - 50;
		  										end;
		  									0..8:
		  										begin
		  											cxgUserStt.DataController.Values[iRow, iHour + 20] := ls_Rcrd[10];
		  											iSum2 := StrToIntDef(cxgUserStt.DataController.Values[iRow, 29], 0);
		  											iSum2 := iSum2 + StrToIntDef(ls_Rcrd[10], 0);
		  											cxgUserStt.DataController.Values[iRow, 29] := IntToStr(iSum2);
		  											iTerm := (iHour * 6) + 94;
		  										end;
		  								end;
		  								iCust := iTerm + 1;
		  								iWk := iTerm + 2;
		  								iEnd := iTerm + 3;
		  								iCancel := iTerm + 4;
		  								iAsk := iTerm + 5;
		  								iSum := iTerm + 6;
		  								cxgUserHourStt.DataController.Values[iRow, iCust] := ls_Rcrd[5];
		  								cxgUserHourStt.DataController.Values[iRow, iWk] := ls_Rcrd[6];
		  								cxgUserHourStt.DataController.Values[iRow, iEnd] := ls_Rcrd[7];
		  								cxgUserHourStt.DataController.Values[iRow, iCancel] := ls_Rcrd[8];
		  								cxgUserHourStt.DataController.Values[iRow, iAsk] := ls_Rcrd[9];
		  								cxgUserHourStt.DataController.Values[iRow, iSum] := ls_Rcrd[10];

		  								iSum2 := StrToIntDef(cxgUserHourStt.DataController.Values[iRow, 149], 0);
		  								iSum2 := iSum2 + StrToIntDef(ls_Rcrd[5], 0);
		  								cxgUserHourStt.DataController.Values[iRow, 149] := IntToStr(iSum2);

		  								iSum2 := StrToIntDef(cxgUserHourStt.DataController.Values[iRow, 150], 0);
		  								iSum2 := iSum2 + StrToIntDef(ls_Rcrd[6], 0);
		  								cxgUserHourStt.DataController.Values[iRow, 150] := IntToStr(iSum2);

		  								iSum2 := StrToIntDef(cxgUserHourStt.DataController.Values[iRow, 151], 0);
		  								iSum2 := iSum2 + StrToIntDef(ls_Rcrd[7], 0);
		  								cxgUserHourStt.DataController.Values[iRow, 151] := IntToStr(iSum2);

		  								iSum2 := StrToIntDef(cxgUserHourStt.DataController.Values[iRow, 152], 0);
		  								iSum2 := iSum2 + StrToIntDef(ls_Rcrd[8], 0);
		  								cxgUserHourStt.DataController.Values[iRow, 152] := IntToStr(iSum2);

		  								iSum2 := StrToIntDef(cxgUserHourStt.DataController.Values[iRow, 153], 0);
		  								iSum2 := iSum2 + StrToIntDef(ls_Rcrd[9], 0);
		  								cxgUserHourStt.DataController.Values[iRow, 153] := IntToStr(iSum2);

		  								iSum2 := StrToIntDef(cxgUserHourStt.DataController.Values[iRow, 154], 0);
		  								iSum2 := iSum2 + StrToIntDef(ls_Rcrd[10], 0);
		  								cxgUserHourStt.DataController.Values[iRow, 154] := IntToStr(iSum2);
		  							end;
		  						finally
		  							ls_Rcrd.Free;
		  						end;
		  					end;
								if cxgUserHourStt.DataController.RecordCount < 1 then 
								begin
									GMessagebox('검색된 내용이 없습니다.', CDMSI);
								end;
		  					FreeAndNil(slIdList);
		  					cxgUserStt.EndUpdate;
		  					cxgUserHourStt.EndUpdate;
		  				end else
		  				if rdoUserSTTTime_Date.Checked then
		  				begin
		  					cxgUserHourStt_Date.DataController.SetRecordCount(0);
		  					cxgUserStt_Date.DataController.SetRecordCount(0);
		  					cxgUserHourStt_Date.BeginUpdate;
		  					cxgUserStt_Date.BeginUpdate;
		  					slIdList := TStringList.Create;
		  					slIdList.Clear;
		  					if (0 < GetXmlRecordCount(ls_rxxml)) then
		  					begin
		  						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
		  						ls_Rcrd := TStringList.Create;
		  						try
		  							for i := 0 to lst_Result.length - 1 do
		  							begin
		  								GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
		  //                ls_Rcrd := GetTextSeperation('│', lst_Result.item[i].attributes.getNamedItem('Value').Text);
		  								iRow := slIdList.IndexOf(ls_Rcrd[2]+ls_Rcrd[4]);
		  								if iRow = -1 then
		  								begin
		  									slIdList.Add(ls_Rcrd[2]+ls_Rcrd[4]);
		  									iRow := cxgUserHourStt_Date.DataController.AppendRecord;
		  									cxgUserHourStt_Date.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
		  									cxgUserHourStt_Date.DataController.Values[iRow, 1] := ls_Rcrd[0];
		  									cxgUserHourStt_Date.DataController.Values[iRow, 2] := ls_Rcrd[1];
		  									cxgUserHourStt_Date.DataController.Values[iRow, 3] := ls_Rcrd[2];
		  									cxgUserHourStt_Date.DataController.Values[iRow, 4] := ls_Rcrd[3];
		  									cxgUserHourStt_Date.DataController.Values[iRow, 5] := ls_Rcrd[4];

		  									cxgUserHourStt_Date.DataController.Values[iRow, 150] := '0';
		  									cxgUserHourStt_Date.DataController.Values[iRow, 151] := '0';
		  									cxgUserHourStt_Date.DataController.Values[iRow, 152] := '0';
		  									cxgUserHourStt_Date.DataController.Values[iRow, 153] := '0';
		  									cxgUserHourStt_Date.DataController.Values[iRow, 154] := '0';
		  									cxgUserHourStt_Date.DataController.Values[iRow, 155] := '0';

		  									iRow := cxgUserStt_Date.DataController.AppendRecord;
		  									cxgUserStt_Date.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
		  									cxgUserStt_Date.DataController.Values[iRow, 1] := ls_Rcrd[0];
		  									cxgUserStt_Date.DataController.Values[iRow, 2] := ls_Rcrd[1];
		  									cxgUserStt_Date.DataController.Values[iRow, 3] := ls_Rcrd[2];
		  									cxgUserStt_Date.DataController.Values[iRow, 4] := ls_Rcrd[3];
		  									cxgUserStt_Date.DataController.Values[iRow, 5] := ls_Rcrd[4];
		  									cxgUserStt_Date.DataController.Values[iRow, 30] := '0';
		  								end;
		  								if StrToIntDef(ls_Rcrd[6] , -1) = -1 then ls_Rcrd[5] := '0';
		  								if StrToIntDef(ls_Rcrd[7] , -1) = -1 then ls_Rcrd[6] := '0';
		  								if StrToIntDef(ls_Rcrd[8] , -1) = -1 then ls_Rcrd[7] := '0';
		  								if StrToIntDef(ls_Rcrd[9] , -1) = -1 then ls_Rcrd[8] := '0';
		  								if StrToIntDef(ls_Rcrd[10], -1) = -1 then ls_Rcrd[9] := '0';
		  								if StrToIntDef(ls_Rcrd[11], -1) = -1 then	ls_Rcrd[10] := '0';

		  								iHour := StrToIntDef(ls_Rcrd[5], 0);
		  								case iHour of
		  									9..23:
		  										begin
		  											cxgUserStt_Date.DataController.Values[iRow, iHour - 3] := ls_Rcrd[11];
		  											iSum2 := StrToIntDef(cxgUserStt_Date.DataController.Values[iRow, 30], 0);
		  											iSum2 := iSum2 + StrToIntDef(ls_Rcrd[11], 0);
		  											cxgUserStt_Date.DataController.Values[iRow, 30] := IntToStr(iSum2);
		  											iTerm := (iHour * 6) - 49;
		  										end;
		  									0..8:
		  										begin
		  											cxgUserStt_Date.DataController.Values[iRow, iHour + 21] := ls_Rcrd[11];
		  											iSum2 := StrToIntDef(cxgUserStt_Date.DataController.Values[iRow, 30], 0);
		  											iSum2 := iSum2 + StrToIntDef(ls_Rcrd[11], 0);
		  											cxgUserStt_Date.DataController.Values[iRow, 30] := IntToStr(iSum2);
		  											iTerm := (iHour * 6) + 95;
		  										end;
		  								end;
		  								iCust := iTerm + 1;
		  								iWk := iTerm + 2;
		  								iEnd := iTerm + 3;
		  								iCancel := iTerm + 4;
		  								iAsk := iTerm + 5;
		  								iSum := iTerm + 6;
		  								cxgUserHourStt_Date.DataController.Values[iRow, iCust] := ls_Rcrd[6];
		  								cxgUserHourStt_Date.DataController.Values[iRow, iWk] := ls_Rcrd[7];
		  								cxgUserHourStt_Date.DataController.Values[iRow, iEnd] := ls_Rcrd[8];
		  								cxgUserHourStt_Date.DataController.Values[iRow, iCancel] := ls_Rcrd[9];
		  								cxgUserHourStt_Date.DataController.Values[iRow, iAsk] := ls_Rcrd[10];
		  								cxgUserHourStt_Date.DataController.Values[iRow, iSum] := ls_Rcrd[11];

		  								iSum2 := StrToIntDef(cxgUserHourStt_Date.DataController.Values[iRow, 150], 0);
		  								iSum2 := iSum2 + StrToIntDef(ls_Rcrd[6], 0);
		  								cxgUserHourStt_Date.DataController.Values[iRow, 150] := IntToStr(iSum2);

		  								iSum2 := StrToIntDef(cxgUserHourStt_Date.DataController.Values[iRow, 151], 0);
		  								iSum2 := iSum2 + StrToIntDef(ls_Rcrd[7], 0);
		  								cxgUserHourStt_Date.DataController.Values[iRow, 151] := IntToStr(iSum2);

		  								iSum2 := StrToIntDef(cxgUserHourStt_Date.DataController.Values[iRow, 152], 0);
		  								iSum2 := iSum2 + StrToIntDef(ls_Rcrd[8], 0);
		  								cxgUserHourStt_Date.DataController.Values[iRow, 152] := IntToStr(iSum2);

		  								iSum2 := StrToIntDef(cxgUserHourStt_Date.DataController.Values[iRow, 153], 0);
		  								iSum2 := iSum2 + StrToIntDef(ls_Rcrd[9], 0);
		  								cxgUserHourStt_Date.DataController.Values[iRow, 153] := IntToStr(iSum2);

		  								iSum2 := StrToIntDef(cxgUserHourStt_Date.DataController.Values[iRow, 154], 0);
		  								iSum2 := iSum2 + StrToIntDef(ls_Rcrd[10], 0);
		  								cxgUserHourStt_Date.DataController.Values[iRow, 154] := IntToStr(iSum2);

		  								iSum2 := StrToIntDef(cxgUserHourStt_Date.DataController.Values[iRow, 155], 0);
		  								iSum2 := iSum2 + StrToIntDef(ls_Rcrd[11], 0);
		  								cxgUserHourStt_Date.DataController.Values[iRow, 155] := IntToStr(iSum2);
		  							end;
		  						finally
		  							ls_Rcrd.Free;
		  						end;
		  					end;
								if cxgUserStt_Date.DataController.RecordCount < 1 then 
								begin
									GMessagebox('검색된 내용이 없습니다.', CDMSI);
								end;
		  					FreeAndNil(slIdList);
		  					cxgUserStt_Date.EndUpdate;
		  					cxgUserHourStt_Date.EndUpdate;
		  				end;
		  			end;
		  		13:
		  			begin
		  				ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
		  				sMsg := GetXmlErrorMsg(ls_rxxml);
		  				if ('0000' = ls_Msg_Err) and ('1' = sMsg) then
		  				begin
		  					GMessagebox('직원을 삭제 하였습니다.', CDMSI);
		  					iId := cxMngUserList.GetColumnByFieldName('아이디').Index;
		  					iRow := cxMngUserList.DataController.FindRecordIndexByText(0, iId, cxedSelId.Text, True, True, True);
		  					if iRow >= 0 then
		  						cxMngUserList.DataController.DeleteRecord(iRow);
		  				end;
		  			end;
		  	end;
		  end;
    finally
      xdom := Nil;
    end;
	except
  end;
end;

procedure TFrm_USR.proc_RecieveSl(slList: TStringList);
var
  xdom: msDomDocument;
	ls_ClientKey, ls_Msg_Err : string;
	lst_Result: IXMLDomNodeList;
  ls_Rcrd, slIdList: TStringList;
	i, j, iRow, iCnt: Integer;
	DrvCNT, FinCNT, CanCNT, AskCNT, TotCNT : integer;
	ls_Handle: HWND;
	HasAddExcelPer: Boolean;
  ls_rxxml: WideString;
	HWKey: string;
	sUser : string;
	//2009-05-15  작성자 : 임창기 (사용자근태현황 메뉴)
	usrID, sDate, stDate, edDate, sTerm : String;
	//2010.12.07 (실명인증일)
	iCertDate: Integer;
	//2011.01.03 접수건수타이틀
	stJonTit: string;
begin
  try
  	xdom := ComsDomDocument.Create;
    try
      ls_rxxml := slList[0];
      if not xdom.loadXML(ls_rxxml) then Exit;

		  ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
		  if ('0000' = ls_MSG_Err) then
		  begin
		  	ls_ClientKey := GetXmlClientKey(ls_rxxml);
		  	ls_ClientKey := Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5);
		  	case StrToIntDef(ls_ClientKey, 1) of
		  		//2009-05-15  작성자 : 임창기 (사용자 근태현황조회)
		  		14:
		  			begin
		  				cxgUserLog.BeginUpdate;
		  				cxgUserLog.DataController.SetRecordCount(0);

              iCnt := 0;
              Frm_Flash.cxPBar1.Properties.Max := slList.Count;
              Frm_Flash.cxPBar1.Position := 0;

		  				slIdList := TStringList.Create;
 		  				slIdList.Clear;
              for j := 0 to slList.Count - 1 do
              begin
                Frm_Flash.cxPBar1.Position := j + 1;
                Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
                Application.ProcessMessages;
                ls_rxxml := slList.Strings[j];
                if not xdom.loadXML(ls_rxxml) then
                begin
                  continue;
                end;

  		  				if (0 < GetXmlRecordCount(ls_rxxml)) then
  		  				begin
  		  					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
  		  					ls_Rcrd := TStringList.Create;
  		  					try
  		  						for i := 0 to lst_Result.length - 1 do
  		  						begin
  		  							GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
  		  							iRow := slIdList.IndexOf(ls_Rcrd[1]);

  		  							sDate := ls_Rcrd[0];
  		  							sDate := copy(sDate,1,4) + '-' + copy(sDate,5,2) + '-' + copy(sDate,7,2);

  		  							if iRow = -1 then
  		  							begin
  		  								slIdList.Add(ls_Rcrd[1]);
  		  								iRow := cxgUserLog.DataController.AppendRecord;

  		  								cxgUserLog.DataController.Values[iRow, 0] := ls_Rcrd[1];
  		  								if ls_Rcrd[2] = '60' then
  		  									cxgUserLog.DataController.Values[iRow, 1] := '본사관리자'
  		  								else if ls_Rcrd[2] = '40' then
  		  									cxgUserLog.DataController.Values[iRow, 1] := '지사관리자'
  		  								else if ls_Rcrd[2] = '10' then
  		  									cxgUserLog.DataController.Values[iRow, 1] := '상담원';

  		  								cxgUserLog.DataController.Values[iRow, 2] := ls_Rcrd[3];
  		  							end;

  		  							stDate := ls_Rcrd[4];
  		  							edDate := ls_Rcrd[5];
  		  							sTerm := '';
//  		  							if stDate <> '' then
//  		  								stDate := copy(stDate,1,10) + ' ' + copy(stDate,11,8);
//  		  							if edDate <> '' then
//  		  								edDate := copy(edDate,1,10) + ' ' + copy(edDate,11,8);
  		  							if (stDate <> '') and (edDate <> '') then
  		  								sTerm := FormatDateTime('hh:mm',StrToDateTime(edDate) - StrToDateTime(stDate));
  		  							if stDate <> '' then
  		  								stDate := copy(stDate,12,5);
  		  							if edDate <> '' then
  		  								edDate := copy(edDate,12,5);

  		  							stDate := Rpad(stDate,5,' ');
  		  							edDate := Rpad(edDate,5,' ');
  		  							sTerm := Rpad(sTerm,5,' ');

  		  							cxgUserLog.DataController.Values[iRow,cxgUserLog.GetColumnByFieldName(sDate).Index] := stDate + ' / ' + edDate + ' ( ' + sTerm + ' )';
  		  						end;
  		  					finally
  		  						ls_Rcrd.Free;
  		  					end;
  		  				end;
              end;
							if cxgUserLog.DataController.RecordCount < 1 then 
							begin
								GMessagebox('검색된 내용이 없습니다.', CDMSI);
							end;
		  				cxgUserLog.EndUpdate;
              slIdList.Free;
		  			end;
		  	end;
		  end;
    finally
      xdom := Nil;
    end;
	except
  end;
end;

procedure TFrm_USR.proc_SET_MEMBER_JONLMT(AUserID, AJonLmt: string);
var XmlData, Param, ErrMsg : string;
	ErrCode : Integer;
begin
	Try
		Param := Trim(AUserID) + '│' + Trim(AJonLmt); 
		if not RequestBase(GetCallable06('SET_MEMBER_JON_LMT', 'MNG.SET_MEMBER_JON_LMT', param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('접수현황 조화건수 제한 등록오류', [ErrCode, ErrMsg]), CDMSI);
			Exit;
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_USR.cxedAuthIdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Ord(Key) = VK_RETURN then
    btnSearchA3Click(btnSearchA3);
end;

procedure TFrm_USR.cxedExcelIdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Ord(Key) = VK_RETURN then
    btnSearchA6Click(btnSearchA6);
end;

procedure TFrm_USR.cxedPerSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Ord(key) = VK_RETURN then
    btnSearchA2Click(btnSearchA2);
end;

procedure TFrm_USR.cxedSearchIdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Ord(Key) = VK_RETURN then
    btnSearchA1Click(btnSearchA1);
end;

procedure TFrm_USR.cxedSearchIdKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_USR.cxedUserStatIdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Ord(Key) = VK_RETURN then
    btnSearchA7Click(btnSearchA7);
end;

procedure TFrm_USR.btnSearchA1Click(Sender: TObject);
begin
	cxMngUserList.DataController.SetRecordCount(0);
	proc_Manage_Search;
end;

procedure TFrm_USR.btnSearchA2Click(Sender: TObject);
begin
	cxgPer1.DataController.SetRecordCount(0);
  cxgMemberPer.DataController.SetRecordCount(0);
	AFocusStr := '';
	proc_Permission_Search;
end;

procedure TFrm_USR.btnSearchA3Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	cxgAuthority.DataController.SetRecordCount(0);
  proc_Authority_Search;
end;

procedure TFrm_USR.btnSearchA4Click(Sender: TObject);
var
	AuthStCd, UserStCd, sFromDate, sEndDate : string;
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end; 

	if fGetChk_Search_HdBrNo('인증관리(직원)') then Exit;

	if GT_USERIF.LV = '60' then
  begin
    if GT_SEL_BRNO.GUBUN <> '1' then
		begin
      cxHdNo.Text := GT_SEL_BRNO.HDNO;
      cxBrNo.Text := '';
    end else
    if GT_SEL_BRNO.GUBUN = '1' then
    begin
      cxHdNo.Text := GT_SEL_BRNO.HDNO;
      cxBrNo.Text := GT_SEL_BRNO.BrNo;
    end;
  end else
  begin
    cxHdNo.Text := GT_SEL_BRNO.HDNO;
    cxBrNo.Text := GT_SEL_BRNO.BrNo;
	end;
	AuthStCd := inttostr(cbbAuthUserStatus.ItemIndex);

	if cxcb_AuthUserStatus.ItemIndex = 0 then	UserStCd := ''  else
  if cxcb_AuthUserStatus.ItemIndex = 5 then	UserStCd := '9'
                                       else	UserStCd := inttostr(cxcb_AuthUserStatus.ItemIndex);

	if (edtAuthUserID.Text <> '') and (Length(edtAuthUserID.Text) < 2) then
	begin
		ShowMessage('성명/ID는 2자 이상 입력하여야 합니다.');
		Exit;
	end;

  if cxRB1A4.Checked then
  begin
    sFromDate := '';
    sEndDate  := '';
  end else
  if cxRB2A4.Checked then
  begin
    sFromDate := FormatDateTime('yyyymmdd', cxDtStartA4.Date); // + '090000';
    sEndDate  := FormatDateTime('yyyymmdd', cxDtEndA4.Date); // + '090000';
  end;

	cxViewAuthUser.DataController.SetRecordCount(0);
	SelectAuthManage('0', cxHdNo.Text, cxBrNo.Text, Param_Filtering(edtAuthUserID.Text), '', AuthStCd, UserStCd, inttostr(cbbAuthUserSearch.ItemIndex), sFromDate, sEndDate);
end;

procedure TFrm_USR.btnSearchA5Click(Sender: TObject);
var
	AuthStCd, UserStCd, sFromDate, sEndDate : string;
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;   

  if fGetChk_Search_HdBrNo('인증관리(PC)') then Exit;

	if GT_USERIF.LV = '60' then
  begin
    if GT_SEL_BRNO.GUBUN <> '1' then
    begin
      cxHdNo.Text := GT_SEL_BRNO.HDNO;
      cxBrNo.Text := '';
    end else
    if GT_SEL_BRNO.GUBUN = '1' then
		begin
      cxHdNo.Text := GT_SEL_BRNO.HDNO;
      cxBrNo.Text := GT_SEL_BRNO.BrNo;
    end;
  end else
  begin
    cxHdNo.Text := GT_SEL_BRNO.HDNO;
    cxBrNo.Text := GT_SEL_BRNO.BrNo;
  end;
  if cbbAuthPCStatus.Text = '정상' then
    AuthStCd := '1'
  else if cbbAuthPCStatus.Text = '인증만료' then
    AuthStCd := '2'
  else
    AuthStCd := '0';

	UserStCd := '';

  if cxRB1A5.Checked then
  begin
    sFromDate := '';
    sEndDate  := '';
  end else
  if cxRB2A5.Checked then
  begin
    sFromDate := FormatDateTime('yyyymmdd', cxDtStartA5.Date); // + '090000';
    sEndDate  := FormatDateTime('yyyymmdd', cxDtEndA5.Date); // + '090000';
  end;

  cxViewAuthPC.DataController.SetRecordCount(0);
	SelectAuthManage('1', cxHdNo.Text, cxBrNo.Text, Param_Filtering(edtAuthPCIP.Text),  '', AuthStCd, UserStCd, inttostr(cbbAuthPCSearch.ItemIndex), sFromDate, sEndDate);
end;

procedure TFrm_USR.btnSearchA6Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	cxgExcelDown.DataController.SetRecordCount(0);
  proc_ExcelDown_Search;
end;

procedure TFrm_USR.btnSearchA7Click(Sender: TObject);
begin
{	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;   }
	proc_UserStat_Search;
end;

procedure TFrm_USR.btnSearchA8Click(Sender: TObject);
var
  STime, ETime: Integer;
begin
	STime := StrToIntDef(edtTimeSTime.Text, -1);
  ETime := StrToIntDef(edtTimeETime.Text, -1);

  if (STime < 0) or (STime > 23) then
	begin
    GMessagebox('시간대(시작)를 0시~23시 사이로 입력해 주세요.', CDMSI);
    edtTimeSTime.Clear;
    edtTimeSTime.SetFocus;
    Exit;
  end;

  if (ETime < 0) or (ETime > 23) then
  begin
    GMessagebox('시간대(종료)를 0시~23시 사이로 입력해 주세요.', CDMSI);
    edtTimeETime.Clear;
    edtTimeETime.SetFocus;
    Exit;
  end;

  if (STime <> ETime) and
     (
     ((STime > ETime) and (STime < 9)) or
     ((STime > ETime) and (ETime > 8)) or
     ((STime < ETime) and (STime < 9) and (ETime >= 9))
      ) then
  begin
    GMessagebox('09시 ~ 08시 시간으로 검색해 주세요.', CDMSI);
    Exit;
  end;

	SearchUserTime(STime, ETime);

	Exit;

	cxgUserHourStt.DataController.SetRecordCount(0);
	cxgUserStt.DataController.SetRecordCount(0);
	proc_UserHourSearch;
end;

procedure TFrm_USR.SearchUserTime(const ASTime, AETime: Integer);
begin
	// View Clear
	if rdoUserSTTTime.Checked then
	begin
		ResetUserTimeGrid(ASTime, AETime, 1);
		Application.ProcessMessages;

		// Search data
		RequestUserTimeGrid(ASTime, AETime, 1);
	end	else
  if rdoUserSTTTime_Date.Checked then
	begin
		if Trim(cxedHourId.Text) = '' then
		begin
			GMessagebox('[일자별직원별시간통계보기] 조회시에는' + #13#10 + '검색ID는 필수입니다.', CDMSI);
			cxedHourId.SetFocus;
			Exit;
		end;
		ResetUserTimeGrid(ASTime, AETime, 2);
		Application.ProcessMessages;

		// Search data
		RequestUserTimeGrid(ASTime, AETime, 2);
	end;
end;

procedure TFrm_USR.ResetUserTimeGrid(const ASTime, AETime, AGubun: Integer);
const
  FIXED_INFO_COL = 5; // No., 본사명, 지사명, 아이디, 성명
  FIXED_DATE_COL = 6; // No., 본사명, 지사명, 아이디, 성명, 일자
var
  I, SIndex, EIndex: Integer;
  IsVisColArr: array[0..23] of Boolean; // 09 ~ 08[24시간]
begin
	// 09시 ~ 08시의 배열 인덱스 변환
  // 9시 = [0], 10시 = [1] ... 23시[14], 0시[15] ... 8시[23]
  SIndex := IfThen(ASTime < 9, ASTime + (24 - 9), ASTime - 9);
  EIndex := IfThen(AETime < 9, AETime + (24 - 9), AETime - 9);

  ZeroMemory(@IsVisColArr, Length(IsVisColArr));

	for I := SIndex to EIndex do
    IsVisColArr[I] := True;

	cxgUserHourStt_Date.DataController.SetRecordCount(0);
	cxgUserStt_Date.DataController.SetRecordCount(0);
	if AGubun = 1 then
	begin
		// 통합 그리드 초기화
		cxgUserStt.DataController.SetRecordCount(0);
		// 시간대 컬럼만 처리
		for I := FIXED_INFO_COL to (FIXED_INFO_COL - 1 + 24) do
		begin
			cxgUserStt.Columns[I].Visible := IsVisColArr[I - FIXED_INFO_COL];
		end;

		// 상세 그리드 초기화
		cxgUserHourStt.DataController.SetRecordCount(0);
		// 시간대 컬럼부터 처리
		cxgUserHourStt.BeginUpdate;
		try
			for I := FIXED_INFO_COL to cxgUserHourStt.Bands.Count - 1 do
			begin
				// BandLevel이 0이고 시간대인 밴드만 처리
				if (cxgUserHourStt.Bands[I].BandLevelIndex = 0) and
					(cxgUserHourStt.Bands[I].Position.ColIndex in [0 + FIXED_INFO_COL..23 + FIXED_INFO_COL]) then
				begin
					cxgUserHourStt.Bands[I].Visible := IsVisColArr[cxgUserHourStt.Bands[I].Position.ColIndex -
						FIXED_INFO_COL];
				end;
			end;
		finally
			cxgUserHourStt.EndUpdate;
		end;
	end else
  if AGubun = 2 then
	begin
		// 통합 그리드 초기화
		cxgUserStt_Date.DataController.SetRecordCount(0);
		// 시간대 컬럼만 처리
		for I := FIXED_DATE_COL to (FIXED_DATE_COL - 1 + 24) do
		begin
			cxgUserStt_Date.Columns[I].Visible := IsVisColArr[I - FIXED_DATE_COL];
		end;

		// 상세 그리드 초기화
		cxgUserHourStt_Date.DataController.SetRecordCount(0);
		// 시간대 컬럼부터 처리
		cxgUserHourStt_Date.BeginUpdate;
		try
			for I := FIXED_DATE_COL to cxgUserHourStt_Date.Bands.Count - 1 do
			begin
				// BandLevel이 0이고 시간대인 밴드만 처리
				if (cxgUserHourStt_Date.Bands[I].BandLevelIndex = 0) and
					(cxgUserHourStt_Date.Bands[I].Position.ColIndex in [0 + FIXED_DATE_COL..23 + FIXED_DATE_COL]) then
				begin
					cxgUserHourStt_Date.Bands[I].Visible := IsVisColArr[cxgUserHourStt_Date.Bands[I].Position.ColIndex - FIXED_DATE_COL];
				end;
			end;
		finally
			cxgUserHourStt_Date.EndUpdate;
		end;
	end;
end;

procedure TFrm_USR.RequestUserTimeGrid(const ASTime, AETime, AGubun: Integer);
var
  sWhere, sWhere1 : string;
	ls_TxQry, ls_TxLoad, sFromDate, sEndDate, sQueryTemp: string; // XML File Load
  slReceive: TStringList;
  rv_str, ls_rxxml: string;
  ErrCode: integer;
begin
  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

  sWhere  := '';
  sWhere1 := '';
  if rbAccept.Checked then  // 접수건 기준
	begin
		if GT_USERIF.LV = '60' then
    begin
      if GT_SEL_BRNO.GUBUN <> '1' then
      begin
        sWhere := Format(' WHERE BR_NO IN (SELECT BR_NO FROM CDMS_BRANCH WHERE HD_NO = ''%s'' AND USE_YN = ''y'')', [GT_SEL_BRNO.HDNO]);
        cxHdNo.Text := GT_SEL_BRNO.HDNO;
        cxBrNo.Text := '';
			end	else
      if GT_SEL_BRNO.GUBUN = '1' then
      begin
        sWhere := Format(' WHERE HD_NO = ''%s'' AND BR_NO = ''%s'' ', [GT_SEL_BRNO.HDNO, GT_SEL_BRNO.BrNo]);
				cxHdNo.Text := GT_SEL_BRNO.HDNO;
				cxBrNo.Text := GT_SEL_BRNO.BrNo;
      end;
    end else
    begin
      sWhere := Format(' WHERE HD_NO = ''%s'' AND BR_NO = ''%s'' ', [GT_SEL_BRNO.HDNO, GT_SEL_BRNO.BrNo]);
      cxHdNo.Text := GT_SEL_BRNO.HDNO;
      cxBrNo.Text := GT_SEL_BRNO.BrNo;
    end;

		if Trim(cxedHourId.Text) <> '' then
      sWhere := sWhere + ' AND MEM_ID LIKE ''%' + Trim(Param_Filtering(cxedHourId.Text)) + '%'' ';

		if cxDtStartA8.Enabled then
    begin
      sFromDate := FormatDateTime('yyyymmdd', cxDtStartA8.Date);
      sEndDate := FormatDateTime('yyyymmdd', cxDtEndA8.Date - 1);
			sWhere := sWhere + Format(' AND IN_DATE BETWEEN ''%s'' AND ''%S'' ', [sFromDate, sEndDate]);
		end;

		if ASTime <= AETime then
			sWhere := sWhere + Format(' AND IN_TIME BETWEEN ''%s'' AND ''%s'' ', [LPAD(IntToStr(ASTime), '0', 2), LPAD(IntToStr(AETime), '0', 2)])
		else
			sWhere := sWhere + Format(' AND IN_TIME NOT BETWEEN ''%s'' AND ''%s'' ', [LPAD(IntToStr(AETime + 1), '0', 2), LPAD(IntToStr(ASTime - 1), '0', 2)]);

		if TCK_USER_PER.USR_HourCall_N_ADMIN = '1' then	//관리자 제외 권한시	 20140520 KHS
		begin
			sWhere := sWhere + ' AND MEM_ID IN (SELECT MEM_ID FROM CDMS_MEMBER WHERE MEM_LEVEL = ''10'') '
		end	else
		begin
			if cbbA8.ItemIndex = 1 then
				sWhere := sWhere + ' AND MEM_ID IN (SELECT MEM_ID FROM CDMS_MEMBER WHERE MEM_LEVEL = ''10'') '
			else
			if cbbA8.ItemIndex = 2 then
				sWhere := sWhere + ' AND MEM_ID IN (SELECT MEM_ID FROM CDMS_MEMBER WHERE MEM_LEVEL = ''40'') '
			else
			if cbbA8.ItemIndex = 3 then
				sWhere := sWhere + ' AND MEM_ID IN (SELECT MEM_ID FROM CDMS_MEMBER WHERE MEM_LEVEL = ''60'') ';
		end;

		ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
		if AGubun = 1 then
		begin
      fGet_BlowFish_Query(GSQ_USER_HOUR_STAT_LIST, sQueryTemp);
			ls_TxQry := Format(sQueryTemp, [sWhere]);
		end else
		if AGubun = 2 then
		begin
      fGet_BlowFish_Query(GSQ_USER_HOUR_STAT_LIST1, sQueryTemp);
			ls_TxQry := Format(sQueryTemp, [sWhere]);
		end;
  end else
  if rbCalling.Checked then  // 콜링건 기준
  begin
		if GT_USERIF.LV = '60' then
    begin
      if GT_SEL_BRNO.GUBUN <> '1' then
      begin
        sWhere  := Format(' WHERE CC_NO IN (SELECT BR_NO FROM CDMS_BRANCH WHERE HD_NO = ''%s'' AND CALLCENTER_YN = ''y'')', [GT_SEL_BRNO.HDNO]);
        sWhere1 := Format(' WHERE CC_NO IN (SELECT BR_NO FROM CDMS_BRANCH WHERE HD_NO = ''%s'' AND CALLCENTER_YN = ''y'')', [GT_SEL_BRNO.HDNO]);
        cxHdNo.Text := GT_SEL_BRNO.HDNO;
        cxBrNo.Text := '';
			end	else
      if GT_SEL_BRNO.GUBUN = '1' then
      begin
        sWhere  := Format(' WHERE CC_NO = ''%s'' ', [GT_SEL_BRNO.BrNo]);
        sWhere1 := Format(' WHERE CC_NO = ''%s'' ', [GT_SEL_BRNO.BrNo]);
				cxHdNo.Text := GT_SEL_BRNO.HDNO;
				cxBrNo.Text := GT_SEL_BRNO.BrNo;
      end;
    end else
    begin
      sWhere  := Format(' WHERE CC_NO = ''%s'' ', [GT_SEL_BRNO.BrNo]);
      sWhere1 := Format(' WHERE CC_NO = ''%s'' ', [GT_SEL_BRNO.BrNo]);
      cxHdNo.Text := GT_SEL_BRNO.HDNO;
      cxBrNo.Text := GT_SEL_BRNO.BrNo;
    end;

		if Trim(cxedHourId.Text) <> '' then
    begin
      sWhere  := sWhere  + ' AND IN_ID LIKE ''%' + Trim(Param_Filtering(cxedHourId.Text)) + '%'' ';
      sWhere1 := sWhere1 + ' AND PXE_MEM_ID LIKE ''%' + Trim(Param_Filtering(cxedHourId.Text)) + '%'' ';
    end;

		if cxDtStartA8.Enabled then
    begin
      sFromDate := FormatDateTime('yyyymmdd', cxDtStartA8.Date);
      sEndDate  := FormatDateTime('yyyymmdd', cxDtEndA8.Date);
			sWhere  := sWhere  + Format(' AND IN_DATE BETWEEN ''%s'' AND ''%S'' ', [sFromDate, sEndDate]);
			sWhere1 := sWhere1 + Format(' AND TO_CHAR(IN_DATE, ''YYYYMMDDHH24'') BETWEEN ''%s'' AND ''%S'' ',
                                 [sFromDate + LPAD(IntToStr(ASTime), '0', 2),
                                  sEndDate  + LPAD(IntToStr(AETime), '0', 2)]);
		end;

		if ASTime <= AETime then
    begin
			sWhere  := sWhere  + Format(' AND IN_TIME BETWEEN ''%s0000'' AND ''%s5959'' ', [LPAD(IntToStr(ASTime),'0', 2), LPAD(IntToStr(AETime), '0', 2)]);
			sWhere1 := sWhere1 + Format(' AND TO_CHAR(IN_DATE, ''HH24MISS'') BETWEEN ''%s0000'' AND ''%s5959'' ', [LPAD(IntToStr(ASTime),'0', 2), LPAD(IntToStr(AETime), '0', 2)]);
		end else
    begin
			sWhere  := sWhere  + Format(' AND IN_TIME NOT BETWEEN ''%s0000'' AND ''%s5959'' ', [LPAD(IntToStr(AETime + 1),'0', 2), LPAD(IntToStr(ASTime - 1), '0', 2)]);
			sWhere1 := sWhere1 + Format(' AND TO_CHAR(IN_DATE, ''HH24MISS'') NOT BETWEEN ''%s0000'' AND ''%s5959'' ', [LPAD(IntToStr(AETime + 1),'0', 2), LPAD(IntToStr(ASTime - 1), '0', 2)]);
    end;

		if TCK_USER_PER.USR_HourCall_N_ADMIN = '1' then	//관리자 제외 권한시	 20140520 KHS
		begin
			sWhere  := sWhere  + ' AND IN_ID IN (SELECT MEM_ID FROM CDMS_MEMBER WHERE MEM_LEVEL = ''10'') ';
			sWhere1 := sWhere1 + ' AND PXE_MEM_ID IN (SELECT MEM_ID FROM CDMS_MEMBER WHERE MEM_LEVEL = ''10'') ';
		end	else
		begin
			if cbbA8.ItemIndex = 1 then
      begin
				sWhere  := sWhere  + ' AND IN_ID IN (SELECT MEM_ID FROM CDMS_MEMBER WHERE MEM_LEVEL = ''10'') ';
				sWhere1 := sWhere1 + ' AND PXE_MEM_ID IN (SELECT MEM_ID FROM CDMS_MEMBER WHERE MEM_LEVEL = ''10'') ';
			end else
			if cbbA8.ItemIndex = 2 then
      begin
				sWhere  := sWhere  + ' AND IN_ID IN (SELECT MEM_ID FROM CDMS_MEMBER WHERE MEM_LEVEL = ''40'') ';
				sWhere1 := sWhere1 + ' AND PXE_MEM_ID IN (SELECT MEM_ID FROM CDMS_MEMBER WHERE MEM_LEVEL = ''40'') ';
			end else
			if cbbA8.ItemIndex = 3 then
      begin
				sWhere  := sWhere  + ' AND IN_ID IN (SELECT MEM_ID FROM CDMS_MEMBER WHERE MEM_LEVEL = ''60'') ';
				sWhere1 := sWhere1 + ' AND PXE_MEM_ID IN (SELECT MEM_ID FROM CDMS_MEMBER WHERE MEM_LEVEL = ''60'') ';
      end;
		end;

    sWhere1 := sWhere1 + ' AND CALL_STATUS in (''IE'',''IL'') AND PXE_MEM_ID IS NOT NULL ';

		ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
		if AGubun = 1 then
		begin
      fGet_BlowFish_Query(GSQ_USER_HOUR_CALL_LIST, sQueryTemp);
			ls_TxQry := Format(sQueryTemp, [sWhere, sWhere1]);
  	end else
		if AGubun = 2 then
		begin
      fGet_BlowFish_Query(GSQ_USER_HOUR_CALL_LIST1, sQueryTemp);
			ls_TxQry := Format(sQueryTemp, [sWhere, sWhere1]);
		end;
  end;

  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', self.Caption + '12', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', En_Coding(ls_TxQry), [rfReplaceAll]);

  screen.Cursor := crHourGlass;
  btnSearchA8.Enabled := False;
  slReceive := TStringList.Create;
  try
    frm_Main.proc_SocketWork(False);
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
    btnSearchA8.Enabled := True;
    screen.Cursor := crDefault;
    FreeAndNil(slReceive);
    frm_Main.proc_SocketWork(True);
  end;
end;

procedure TFrm_USR.btnSearchA9Click(Sender: TObject);
var sDate : TDate;
    i, ErrCode : Integer;
    ls_TxQry, ls_TxLoad, sWhere, sHdNo, sBrNo, stDate, edDate, brList, sQueryTemp : string;
    slReceive : TStringList;
		addQuery : string;
begin
{	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;        }
	if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

  if (cxDtEndA9.Date - cxDtStartA9.Date) >= 32 then
  begin
    GMessagebox('최대 검색기간은 한달입니다.', CDMSI);
    cxDtEndA9.Date := cxDtStartA9.Date + 31;
    Exit;
  end;
  sDate := cxDtStartA9.Date;

  if fGetChk_Search_HdBrNo('직원근태현황') then Exit;

  Screen.Cursor := crHourGlass;
  cxgUserlog.ClearItems;
  cxgUserLog.CreateColumn;
  cxgUserLog.Columns[0].Caption := '직원ID';
  cxgUserLog.CreateColumn;
  cxgUserLog.Columns[1].Caption := '권한';
  cxgUserLog.CreateColumn;
  cxgUserLog.Columns[2].Caption := '이름';

  for i := 0 to cxguserLog.ColumnCount - 1 do
  begin
    cxgUserLog.Columns[i].DataBinding.FieldName := cxgUserLog.Columns[i].Caption;
    cxgUserLog.Columns[i].DataBinding.ValueType := 'String';

    //컬럼정렬
    cxgUserLog.Columns[i].PropertiesClass := TcxTextEditProperties;
    TcxTextEditProperties(cxgUserLog.Columns[i].Properties).Alignment.Horz := taCenter;
    TcxTextEditProperties(cxgUserLog.Columns[i].Properties).Alignment.Vert := taVCenter;

    cxgUserLog.Columns[i].Options.CellMerging := False;
    cxgUserLog.Columns[i].Options.Editing := False;
    cxgUserLog.Columns[i].Options.Filtering := False;
    cxgUserLog.Columns[i].Options.FilteringFilteredItemsList := False;
    cxgUserLog.Columns[i].Options.FilteringMRUItemsList := False;
    cxgUserLog.Columns[i].Options.FilteringPopup := False;
    cxgUserLog.Columns[i].Options.FilteringPopupMultiSelect := False;
    cxgUserLog.Columns[i].Options.Focusing := False;
    cxgUserLog.Columns[i].Options.GroupFooters := False;
    cxgUserLog.Columns[i].Options.Grouping := False;
    cxgUserLog.Columns[i].Options.HorzSizing := True;
    cxgUserLog.Columns[i].Options.IgnoreTimeForFiltering := False;
    cxgUserLog.Columns[i].Options.IncSearch := False;
    cxgUserLog.Columns[i].Options.Moving := True;
    cxgUserLog.Columns[i].Options.ShowCaption := True;
    cxgUserLog.Columns[i].Options.Sorting := True;
    cxgUserLog.Columns[i].Width := 110;
  end;

  //검색된 날짜별 컬럼 생성
  while sDate <= cxDtEndA9.Date do begin
    cxgUserLog.CreateColumn;
    cxgUserLog.Columns[cxgUserLog.ColumnCount-1].Caption := FormatDateTime('yyyy-mm-dd', sDate);
    cxgUserLog.Columns[cxgUserLog.ColumnCount-1].DataBinding.FieldName := cxgUserLog.Columns[cxgUserLog.ColumnCount-1].Caption;
    cxgUserLog.Columns[cxgUserLog.ColumnCount-1].DataBinding.ValueType := 'String';

    //컬럼정렬
    cxgUserLog.Columns[cxgUserLog.ColumnCount-1].PropertiesClass := TcxTextEditProperties;
    TcxTextEditProperties(cxgUserLog.Columns[cxgUserLog.ColumnCount-1].Properties).Alignment.Horz := taCenter;
    TcxTextEditProperties(cxgUserLog.Columns[cxgUserLog.ColumnCount-1].Properties).Alignment.Vert := taVCenter;

    cxgUserLog.Columns[cxgUserLog.ColumnCount-1].Options.CellMerging := False;
    cxgUserLog.Columns[cxgUserLog.ColumnCount-1].Options.Editing := False;
    cxgUserLog.Columns[cxgUserLog.ColumnCount-1].Options.Filtering := False;
    cxgUserLog.Columns[cxgUserLog.ColumnCount-1].Options.FilteringFilteredItemsList := False;
    cxgUserLog.Columns[cxgUserLog.ColumnCount-1].Options.FilteringMRUItemsList := False;
    cxgUserLog.Columns[cxgUserLog.ColumnCount-1].Options.FilteringPopup := False;
    cxgUserLog.Columns[cxgUserLog.ColumnCount-1].Options.FilteringPopupMultiSelect := False;
    cxgUserLog.Columns[cxgUserLog.ColumnCount-1].Options.Focusing := False;
    cxgUserLog.Columns[cxgUserLog.ColumnCount-1].Options.GroupFooters := False;
    cxgUserLog.Columns[cxgUserLog.ColumnCount-1].Options.Grouping := False;
    cxgUserLog.Columns[cxgUserLog.ColumnCount-1].Options.HorzSizing := True;
    cxgUserLog.Columns[cxgUserLog.ColumnCount-1].Options.IgnoreTimeForFiltering := False;
    cxgUserLog.Columns[cxgUserLog.ColumnCount-1].Options.IncSearch := False;
    cxgUserLog.Columns[cxgUserLog.ColumnCount-1].Options.Moving := True;
    cxgUserLog.Columns[cxgUserLog.ColumnCount-1].Options.ShowCaption := True;
    cxgUserLog.Columns[cxgUserLog.ColumnCount-1].Options.Sorting := True;
    cxgUserLog.Columns[cxgUserLog.ColumnCount-1].Width := 130;
    sDate := sDate + 1;
  end;

  for i := 0 to cxguserLog.ColumnCount - 1 do
  begin
    //컬럼헤더 정렬
    cxgUserLog.Columns[i].HeaderAlignmentHorz := taCenter;
    cxgUserLog.Columns[i].HeaderAlignmentVert := vaCenter;
  end;

  cxgUserLog.OptionsView.HeaderHeight := 22;
  cxgUserLog.OptionsView.DataRowHeight := 20;

  //사용자 ID 정렬
  cxgUserLog.Columns[0].PropertiesClass := TcxTextEditProperties;
  TcxTextEditProperties(cxgUserLog.Columns[0].Properties).Alignment.Horz := taLeftJustify;
  TcxTextEditProperties(cxgUserLog.Columns[0].Properties).Alignment.Vert := taVCenter;

  //사용자 이름 정렬
  cxgUserLog.Columns[2].PropertiesClass := TcxTextEditProperties;
  TcxTextEditProperties(cxgUserLog.Columns[2].Properties).Alignment.Horz := taLeftJustify;
  TcxTextEditProperties(cxgUserLog.Columns[2].Properties).Alignment.Vert := taVCenter;

  //조건문 작성 ==================================================================================
  if GT_USERIF.LV = '60' then
  begin
    if GT_SEL_BRNO.GUBUN <> '1' then
    begin
      sHdNo := GT_SEL_BRNO.HDNO;
			if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
			begin
				for i := 0 to scb_FamilyBrCode.Count -1 do
				begin
					if i = 0 then sBrNo := '''' + scb_FamilyBrCode[i] + '''' else
					sBrNo := sBrNo + ', ' + '''' + scb_FamilyBrCode[i] + '''';
				end;
			end else
			begin
				sBrNo := '';
			end;
    end else
    if GT_SEL_BRNO.GUBUN = '1' then
    begin
      sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := '''' + GT_SEL_BRNO.BrNo + '''';
    end;
  end else
  begin
    sHdNo := GT_USERIF.HD;
		sBrNo := '''' + GT_USERIF.BR + '''';
  end;

	if sBrNo <> '' then
		brList := sBrNo
//		brList := '''' + sBrNo + ''''
	else if sBrNo = '' then
		brList := 'SELECT BR_NO FROM CDMS_BRANCH WHERE HD_NO=''' + sHdNo + ''' ';

  stDate := formatDateTime('yyyymmdd',cxDtStartA9.Date);
  edDate := formatDateTime('yyyymmdd',cxDtEndA9.Date);

  sWhere := '';
  if edUserLogID.Text <> '' then
    sWhere := format('AND A.MEM_ID LIKE ''%s%s%s'' ',['%',Param_Filtering(edUserLogID.Text),'%']);

  //조건문 작성 ==================================================================================
  ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
	addQuery := '';
  fGet_BlowFish_Query(GSQ_USER_LOG, sQueryTemp);

	if TCK_USER_PER.USR_LoginCheck_N_ADMIN = '1' then
	begin
		sWhere := sWhere + ' AND MEM_ID IN (SELECT MEM_ID FROM CDMS_MEMBER WHERE MEM_LEVEL = ''10'') ';
		ls_TxQry := Format(sQueryTemp, [ addQuery , brList, stDate, edDate, sWhere])
	end
	else
		ls_TxQry := Format(sQueryTemp, [addQuery, brList, stDate, edDate, sWhere]);

  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'USRLG00014', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '500', [rfReplaceAll]);

  slReceive := TStringList.Create;
  try
    frm_Main.proc_SocketWork(False);
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
    begin
      Application.ProcessMessages;
      proc_RecieveSl(slReceive);
    end;
  finally
    btnSearchA9.Enabled := True;
    Screen.Cursor := crDefault;
    FreeAndNil(slReceive);
    frm_Main.proc_SocketWork(True);
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_USR.btnSearchB1Click(Sender: TObject);
begin
  proc_FamilyPermission;
end;

procedure TFrm_USR.btn_MuiltList_PerSetClick(Sender: TObject);
var
	Param, XmlData, ErrMsg: string;
	ErrCode: Integer;
	i, j, iLevel, iCnt : integer;
	sLevel, sHd_no, sTemp : string;
	sl_Role1, sl_Role2 : TStringList;
begin
	Try
		Screen.Cursor := crHourGlass;
		btn_MuiltList_PerSet.Enabled := False;

		sl_Role1 := TStringList.Create;
		sl_Role1.LoadFromFile(DBDIRECTORY + 'FPermissionHD.tmp');
		sl_Role2 := TStringList.Create;
		sl_Role2.LoadFromFile(DBDIRECTORY + 'FPermissionBR.tmp');
		memo_PerResult.clear;
		memo_PerResult.Lines.Add('====일괄적용시작 대상 : ' + IntToStr(cxGrid_Mulit_ManagerList.DataController.RecordCount) + '명');
		for i  := 0 to cxGrid_Mulit_ManagerList.DataController.RecordCount - 1 do
		begin
			iLevel := cxGrid_Mulit_ManagerList.GetColumnByFieldName('아이디').Index;
			sLevel := cxGrid_Mulit_ManagerList.DataController.Values[i, iLevel];
			Param := sLevel;
			memo_PerResult.Lines.Add('아이디 : ' + sLevel + '시작');
			sTemp := '';
			iCnt := 0;
			For j := 0 to sl_Role1.Count - 1 do
			begin
				sHd_no := sl_Role1[j];
				if (sHd_no <> sTemp) then
				begin
					Param := Param + '│' + sHd_no + ';';
					if sl_Role2[j] <> '' then
						Param := Param + sl_Role2[j]
					else
						iCnt := 1;
				end	else
        if sHd_no = sTemp then
				begin
					if sl_Role2[j] <> '' then
					begin
						if iCnt = 1 then
							Param := Param + sl_Role2[j]
						else
							Param := Param + ',' + sl_Role2[j];
						iCnt := 0;
					end;
				end;
				sTemp := sHd_no;
			end;
			Param := Param + '│';
			if not RequestBase(GetCallable05('SET_FAMILY_PERMISSION_BRANCH', 'CAS.SET_FAMILY_PERMISSION_BRANCH', Param), XmlData, ErrCode, ErrMsg) then
			begin
				memo_PerResult.Lines.Add('아이디 : ' + sLevel + '오류');
				GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSI);
				Screen.Cursor := crDefault;
				btn_MuiltList_PerSet.Enabled := True;
				Exit;
			end;
			memo_PerResult.Lines.Add('아이디 : ' + sLevel + '완료');
		end;
		memo_PerResult.Lines.Add('====일괄적용완료 대상 : ' + IntToStr(cxGrid_Mulit_ManagerList.DataController.RecordCount) + '명');
		GMessagebox('권한을 저장 하였습니다.', CDMSI);
		Screen.Cursor := crDefault;
		btn_MuiltList_PerSet.Enabled := True;
		FreeAndNil(sl_Role2);
		FreeAndNil(sl_Role1);
	except
		GMessagebox('권한일괄 적용 중 에러발생', CDMSI);
		Screen.Cursor := crDefault;
	end;
end;

procedure TFrm_USR.btn_pnl_Mulit_CloseClick(Sender: TObject);
begin
	pnl_Mulit_perSend.Visible := False;
	if btnSearch2B1.tag = 0 then btnSearch2B1.Enabled := True	else
  if btnSearch2B1.tag = 1 then btnSearch2B1.Enabled := False;
	btnSearch3B1.Enabled := True;
end;

procedure TFrm_USR.proc_ExcelDown_Search;
var
  sWhere: string;
	ls_TxQry, ls_TxLoad, sFromDate, sEndDate, sQueryTemp, sBrNo : string; // XML File Load
  slReceive: TStringList;
  rv_str, ls_rxxml: string;
	ErrCode, i: integer;
begin
  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('엑셀다운현황') then Exit;

  sWhere := '';
  if cxgExcelDown.DataController.RecordCount = 0 then
  begin
    if GT_USERIF.LV = '60' then
    begin
      if GT_SEL_BRNO.GUBUN <> '1' then
      begin
				if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
				begin
					for i := 0 to scb_FamilyBrCode.Count -1 do
					begin
						if i = 0 then sBrNo := '''' + scb_FamilyBrCode[i] + '''' else
						sBrNo := sBrNo + ', ' + '''' + scb_FamilyBrCode[i] + '''';
					end;
										
					sWhere := ' WHERE BR_NO IN (' + sBrNo + ') ';
				end else
				sWhere :=
					Format(' WHERE BR_NO IN (SELECT BR_NO FROM CDMS_BRANCH WHERE HD_NO = ''%s'' AND USE_YN = ''y'')', [GT_SEL_BRNO.HDNO]);

				cxHdNo.Text := GT_SEL_BRNO.HDNO;
        cxBrNo.Text := '';
      end else
      if GT_SEL_BRNO.GUBUN = '1' then
      begin
        sWhere := Format(' WHERE BR_NO = ''%s'' ', [GT_SEL_BRNO.BrNo]);
        cxHdNo.Text := GT_SEL_BRNO.HDNO;
        cxBrNo.Text := GT_SEL_BRNO.BrNo;
      end;
    end else
    begin
      sWhere := Format(' WHERE BR_NO = ''%s'' ', [GT_SEL_BRNO.BrNo]);
      cxHdNo.Text := GT_SEL_BRNO.HDNO;
      cxBrNo.Text := GT_SEL_BRNO.BrNo;
    end;

    if Trim(cxedExcelId.Text) <> '' then
      sWhere := sWhere + ' AND MEM_ID LIKE ''%' + Trim(Param_Filtering(cxedExcelId.Text)) + '%'' ';

    if cxDtStartA6.Enabled then
    begin
      sFromDate := FormatDateTime('yyyymmdd', cxDtStartA6.Date) + '090000';
      sEndDate := FormatDateTime('yyyymmdd', cxDtEndA6.Date) + '090000';
      sWhere := sWhere + Format(' AND SEND_TIME BETWEEN TO_DATE(''%s'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''%S'',''YYYYMMDDHH24MISS'') ', [sFromDate, sEndDate]);
    end;

		sWhere := sWhere + '  AND REMOTE_IP NOT LIKE ''61.105.116.%'' ' //콜마너 사내 IP 제거
										 + '  AND REMOTE_IP NOT LIKE ''112.217.110.11%'' ' //콜마너 사내 IP 제거
										 + '  AND REMOTE_IP NOT LIKE ''203.251.202.%'' '; //콜마너 사내 IP 제거

    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_USER_EXCELDOWN_LIST, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sWhere]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', self.Caption + '6', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    btnSearchA6.Enabled := False;
    screen.Cursor := crHourGlass;
    slReceive := TStringList.Create;
    try
      frm_Main.proc_SocketWork(False);
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
      btnSearchA6.Enabled := True;
      Screen.Cursor := crDefault;
      FreeAndNil(slReceive);
      frm_Main.proc_SocketWork(True);
    end;
  end;
end;

procedure TFrm_USR.pop_FamilyPopup(Sender: TObject);
begin
	if btnSearch2B1.Tag = 1 then
	begin
		ShowMessage('권한복사를 먼저 하십시오');
		exit;
	end;
end;

procedure TFrm_USR.proc_Authority_Search;
var
  ls_TxLoad, sFromDate, sEndDate: string; // XML File Load
  slReceive: TStringList;
  rv_str, ls_rxxml: string;
  ErrCode: integer;
begin
  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('인증현황') then Exit;

  if cxgAuthority.DataController.RecordCount = 0 then
  begin
    if GT_USERIF.LV = '60' then
    begin
      if GT_SEL_BRNO.GUBUN <> '1' then
      begin
        cxHdNo.Text := GT_SEL_BRNO.HDNO;
        cxBrNo.Text := '';
      end else
      if GT_SEL_BRNO.GUBUN = '1' then
      begin
        cxHdNo.Text := GT_SEL_BRNO.HDNO;
        cxBrNo.Text := GT_SEL_BRNO.BrNo;
      end;
    end else
    begin
      cxHdNo.Text := GT_SEL_BRNO.HDNO;
      cxBrNo.Text := GT_SEL_BRNO.BrNo;
    end;

    if cxDtStartA3.Enabled then
    begin
      sFromDate := FormatDateTime('yyyymmdd', cxDtStartA3.Date);
      sEndDate := FormatDateTime('yyyymmdd', cxDtEndA3.Date);
    end;

    ls_TxLoad := GTx_UnitXmlLoad('C058N1.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', self.Caption + '5', [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'HdNoString',     cxHdNo.Text, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'BrNoString',     cxBrNo.Text, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'FromDateString', sFromDate, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ToDateString',   sEndDate, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'MemIDString',    Trim(Param_Filtering(cxedAuthId.Text)), [rfReplaceAll]);

    Screen.Cursor := crHourGlass;
    btnSearchA3.Enabled := False;
    slReceive := TStringList.Create;
    try
      frm_Main.proc_SocketWork(False);
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
      Screen.Cursor := crDefault;
      btnSearchA3.Enabled := True;
      FreeAndNil(slReceive);
      frm_Main.proc_SocketWork(True);
    end;
  end;
end;

procedure TFrm_USR.proc_Permission_Search;
var
	XmlData, Param, ErrMsg: string;
	xdom: msDomDocument;
	lst_Count, lst_Result: IXMLDomNodeList;
	sBrNo: string;
	ls_Rcrd: TStringList;
	ErrCode, i, j, iCnt, iBrNo, iRow: integer;
begin
	if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('직원권한설정') then Exit;

	case cxcbPerGrad.ItemIndex of
		0: Param := 'A' + '00' + '│';
		1: Param := 'A' + '60' + '│';
		2: Param := 'A' + '40' + '│';
		3: Param := 'A' + '10' + '│';
	end;

	if ( GT_USERIF.LV = '60' ) and ( GT_SEL_BRNO.GUBUN = '0' ) then
		Param := Param + GT_SEL_BRNO.HDNO + '│' + '' + '│'
	else
		Param := Param + GT_SEL_BRNO.HDNO + '│' + GT_SEL_BRNO.BrNo + '│';

	if cxedPerSearch.Text <> '' then
	begin
		case cxcbPerType.ItemIndex of
			0: Param := Param + 'MEM_ID' + '│'  ;
			1: Param := Param + 'MEM_NAME' + '│'  ;
		end;
		Param := Param + Param_Filtering(cxedPerSearch.Text) + '│'  ;
	end else
	begin
		Param := Param + '│' + '│';
	end;

  Param := Param + 'y' + '│';

	if cxcb_PerUserStatus.ItemIndex = 0 then
		Param := Param + '│'
	else if cxcb_PerUserStatus.ItemIndex = 5 then
		Param := Param + '9'
	else
		Param := Param + inttostr(cxcb_PerUserStatus.ItemIndex);

	if not RequestBase(GetSel05('LIST_MEMBER', 'MNG_MEMBER.LIST_MEMBER', '1000', Param), XmlData, ErrCode, ErrMsg) then
	begin
		GMessagebox(Format('조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
		Exit;
	end;

	xdom := ComsDomDocument.Create;
  try
	  xdom.loadXML(XmlData);

	  lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');

	  if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
	  begin
	  	iCnt := 0;
	  	cxgPer1.BeginUpdate;
	  	cxgPer1.DataController.SetRecordCount(0);
	  	if (0 < GetXmlRecordCount(XmlData)) then
	  	begin
	  		lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
	  		ls_Rcrd := TStringList.Create;
	  		try
	  			for i := 0 to lst_Result.length - 1 do
	  			begin
	  				GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
//                  ls_Rcrd := GetTextSeperation('│', lst_Result.item[i].attributes.getNamedItem('Value').Text);
	  				sBrNo := ls_Rcrd[0];

	  				if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB   패밀리지사일때
	  				begin
	  					if not Check_ALLHD(GT_SEL_BRNO.HDNO) then      //전체지사권한이 없을때
	  					begin
	  						if scb_FamilyBrCode.IndexOf(sBrNo) = -1 then   //권한있는 지사일경우만 그리드표기
	  						else
	  						begin
	  							if sBrNo <> '' then
	  							begin
	  								iBrNo := scb_BranchCode.IndexOf(sBrNo);
	  								if iBrNo >= 0 then
	  									sBrNo := scb_BranchName.Strings[iBrNo];
	  							end;
	  							ls_Rcrd[0] := sBrNo;
	  							ls_Rcrd.Insert(0, IntToStr(iCnt + 1));
	  							iRow := cxgPer1.DataController.AppendRecord;
	  							// 1 Record 추가
	  							for j := 0 to cxgPer1.ColumnCount - 1 do
	  							begin
	  								if (UpperCase(cxgPer1.Columns[j].DataBinding.ValueType) <> 'STRING') and (StrToFloatDef(ls_Rcrd[j], -100) = -100) then
	  									ls_Rcrd[j] := '0';
	  								cxgPer1.DataController.Values[iRow, j] := ls_Rcrd[j];
	  								// 지사명
	  							end;
	  							inc(iCnt);
	  						end;
	  					end	else
	  					begin
	  						if sBrNo <> '' then
	  						begin
	  							iBrNo := scb_BranchCode.IndexOf(sBrNo);
	  							if iBrNo >= 0 then
	  								sBrNo := scb_BranchName.Strings[iBrNo];
	  						end;
	  						ls_Rcrd[0] := sBrNo;
	  						ls_Rcrd.Insert(0, IntToStr(i + 1));
	  						iRow := cxgPer1.DataController.AppendRecord;
	  						// 1 Record 추가
	  						for j := 0 to cxgPer1.ColumnCount - 1 do
	  						begin
	  							if (UpperCase(cxgPer1.Columns[j].DataBinding.ValueType) <> 'STRING') and (StrToFloatDef(ls_Rcrd[j], -100) = -100) then ls_Rcrd[j] := '0';
	  							cxgPer1.DataController.Values[iRow, j] := ls_Rcrd[j];
	  							// 지사명
	  						end;
	  					end;
	  				end else
	  				begin
	  					if sBrNo <> '' then
	  					begin
	  						iBrNo := scb_BranchCode.IndexOf(sBrNo);
	  						if iBrNo >= 0 then
	  							sBrNo := scb_BranchName.Strings[iBrNo];
	  					end;
	  					ls_Rcrd[0] := sBrNo;
	  					ls_Rcrd.Insert(0, IntToStr(i + 1));
	  					iRow := cxgPer1.DataController.AppendRecord;
	  					// 1 Record 추가
	  					for j := 0 to cxgPer1.ColumnCount - 1 do
	  					begin
	  						if (UpperCase(cxgPer1.Columns[j].DataBinding.ValueType) <> 'STRING') and (StrToFloatDef(ls_Rcrd[j], -100) = -100) then
	  							ls_Rcrd[j] := '0';
	  						cxgPer1.DataController.Values[iRow, j] := ls_Rcrd[j];
	  						// 지사명
	  					end;
	  				end;
	  			end;
	  		finally
	  			ls_Rcrd.Free;
	  		end;
	  	end;
	  	cxgPer1.EndUpdate;
	  end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_USR.proc_BrNameSet;
begin
  lblSosokNameA1.Caption := GetSosokInfo;
  lblSosokNameA2.Caption := GetSosokInfo;
  lblSosokNameA3.Caption := GetSosokInfo;
  lblSosokNameA4.Caption := GetSosokInfo;
  lblSosokNameA5.Caption := GetSosokInfo;
  lblSosokNameA6.Caption := GetSosokInfo;
  lblSosokNameA7.Caption := GetSosokInfo;
  lblSosokNameA8.Caption := GetSosokInfo;
  lblSosokNameA9.Caption := GetSosokInfo;
  lblSosokNameB1.Caption := GetSosokInfo;
end;

procedure TFrm_USR.proc_Menu_Permission;
var
  XmlData, Param, ErrMsg : string;
  ErrCode : Integer;
begin
  try
    Frm_Main.proc_SocketWork(False);
    Param := '';
    if not RequestBase(GetSel05(self.Caption + '9', 'MNG_MEMBER.LIST_MENU_PERMISSION', '1000', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('권한 데이터 로드 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;
    if XmlData <> '' then
    begin
      Application.ProcessMessages;
      proc_recieve(XmlData);
    end;
  finally
		Frm_Flash.Hide;
    Frm_Main.proc_SocketWork(True);
  end;
end;

procedure TFrm_USR.proc_Menu_Search;
var
  iLevel, iRow, i, iMainNum: Integer;
  sLevel, sMenuLevel, sDetailLevel, sMainCode: string;
	stJonTit, sTmp: string;
begin
	iRow := cxgPer1.DataController.FocusedRecordIndex;
  if iRow = -1 then
		Exit;
	iLevel := cxgPer1.GetColumnByFieldName('그룹').Index;
  sLevel := cxgPer1.DataController.Values[iRow, iLevel];

  if sLevel = '상담원' then
		sLevel := '3'
  else
		if sLevel = '지사관리자' then
    sLevel := '5'
	else
		if sLevel = '본사관리자' then
		sLevel := '7'
	else
		if sLevel = '패밀리관리자' then
		sLevel := '7';

	cxgMemberPer.DataController.SetRecordCount(0);
	cxgMemberPer.BeginUpdate;
	sMainCode := '';
	iMainNum := 0;

	Try
		for i := 0 to cxGMenuLevel.DataController.RecordCount - 1 do
		begin
			if cxGMenuLevel.DataController.Values[i, 4] + cxGMenuLevel.DataController.Values[i, 10] = 'WOR025' then
			begin
				if ( (GT_USERIF.ShareNo = 'G49') And (GS_PRJ_AREA = 'O') ) Or
					 ( (GT_USERIF.ShareNo = 'G39') And (GS_PRJ_AREA = 'O') ) Or
					 ( (GT_USERIF.ShareNo = 'G08') And (GS_PRJ_AREA = 'O') ) Or
					 ( (GT_USERIF.ShareNo = 'G15') And (GS_PRJ_AREA = 'O') ) Or
					 ( (GT_USERIF.ShareNo = 'G41') And (GS_PRJ_AREA = 'O') ) Or
					 ( (GT_USERIF.ShareNo = 'G54') And (GS_PRJ_AREA = 'O') ) Or
					 ( (GT_USERIF.ShareNo = 'G26') And (GS_PRJ_AREA = 'O') ) Or ( GT_USERIF.BR = 'B100' ) then
				else
					continue;
			end;
			sMenuLevel    := cxGMenuLevel.DataController.Values[i, 5];
			sDetailLevel  := cxGMenuLevel.DataController.Values[i, 6];
			if (StrToInt(sLevel) >= StrToIntDef(sMenuLevel, 1)) and
				 (StrToInt(sLevel) >= StrToIntDef(sDetailLevel, 1)) then
			begin
				sTmp := cxGMenuLevel.DataController.Values[i, 4] + cxGMenuLevel.DataController.Values[i, 10];

				//경남 A2228 본사관리자, 상담원 엑셀다운권한 막음. 정회귀팀장요청 20190323KHS
				if (GS_PRJ_AREA = 'O') and ( GT_UserIF.HD = 'A2228') then
				begin
					if (sTmp = 'COM001') or (sTmp = 'COM002') or (sTmp = 'COM011') or (sTmp = 'JON014') then Continue;
				end;

				iRow := cxgMemberPer.DataController.AppendRecord;
				sMainCode := cxGMenuLevel.DataController.Values[i, 9];
				if StrToInt(sMainCode) > 3 then
					sMainCode := IntToStr(StrToInt(sMainCode) - 1);
				cxgMemberPer.DataController.Values[iRow, 0] := '[' + LPAD(sMainCode, '0', 2) + '] ' + cxGMenuLevel.DataController.Values[i, 0];
				cxgMemberPer.DataController.Values[iRow, 1] := cxGMenuLevel.DataController.Values[i, 1];
				cxgMemberPer.DataController.Values[iRow, 2] := cxGMenuLevel.DataController.Values[i, 2];        //세부기능
				cxgMemberPer.DataController.Values[iRow, 3] := '0';
				cxgMemberPer.DataController.Values[iRow, 4] := cxGMenuLevel.DataController.Values[i, 7];        //세부힌트
				cxgMemberPer.DataController.Values[iRow, 5] := cxGMenuLevel.DataController.Values[i, 8];
				cxgMemberPer.DataController.Values[iRow, 6] := cxGMenuLevel.DataController.Values[i, 4] + cxGMenuLevel.DataController.Values[i, 10];
        cxgMemberPer.DataController.Values[iRow, 7] := '';
				// 2011.01.03 접수건수 컬럼 동적변경위한 원문자와 위치정보
				if Pos('접수현황조회건수제한',string(cxgMemberPer.DataController.Values[iRow, 2]))>0 then
				begin
					iCol_JONMAX:=2;
					iRow_JONMAX:=iRow;
					st_JONMAX := cxgMemberPer.DataController.Values[iRow, 2] + '[선택시제한입력]';
					stJonTit := StringReplace(cxgPer1.Datacontroller.Values[cxgPer1.Datacontroller.GetFocusedRecordIndex,3],'[M]','',[rfreplaceall]);
					stJonTit := Set_JONTIT(stJonTit);
					cxgMemberPer.DataController.Values[iRow, 5]:=stJonTit;
				end;
			end;
		end;
		cxgMemberPer.EndUpdate;
		cxgMemberPer.ViewData.Expand(True);
  Finally

	End;
end;

procedure TFrm_USR.proc_Manager_Permission_Search;
var
  XmlData, Param, ErrMsg, sLevel: string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, ErrCode, iCnt, iRow, iLevel, iIndex: Integer;
begin
	proc_HD_Menu_Search;
  iRow := cxGridB1View.DataController.FocusedRecordIndex;
  if iRow = -1 then
    Exit;
  iLevel := cxGridB1View.GetColumnByFieldName('아이디').Index;
	sLevel := cxGridB1View.DataController.Values[iRow, iLevel];
	Param := sLevel;
	Screen.Cursor := crHourGlass;
	if not RequestBase(GetSel05('GET_FAMILY_PERMISSION_BRANCH', 'CAS.GET_FAMILY_PERMISSION_BRANCH', '1000', Param), XmlData, ErrCode, ErrMsg) then
  begin
		GMessagebox(Format('패밀리관리자 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
		Screen.Cursor := crDefault;
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
				cxGridLB1View.BeginUpdate;
				iCnt := 0;
				for I := 0 to lst_Result.length - 1 do
				begin
					GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
					iIndex := cxGridLB1View.DataController.FindRecordIndexByText(0,4,ls_Rcrd[1],True,True,True);
					if iIndex >= 0 then
						cxGridLB1View.DataController.Values[iIndex, 2] := True
					else
						cxGridLB1View.DataController.Values[iIndex, 2] := False;
				end;
			finally
				cxGridLB1View.EndUpdate;
				ls_Rcrd.Free;
      end;
    end;
  finally
		xdom := Nil;
		Screen.Cursor := crDefault;
		Frm_Flash.Hide;
  end;
end;

procedure TFrm_USR.proc_Manage_Search;
var
	ls_rxxml, Param, ErrMsg: string;
  XmlData : TStringList;
	xdom: msDomDocument;
	lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd: TStringList;
	I, j, ErrCode, iCnt, iRow, iBrNo, iHp, iTel, iRegDate, iSNum, isumorg, iCertDate : Integer;
	sBrNo, sTemp : string;
begin
	if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
	begin
		GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
		Exit;
	end;

  if fGetChk_Search_HdBrNo('직원관리') then Exit;

	case cxcbSearchGrad.ItemIndex of
		0: Param := 'A' + '00' + '│';
		1: Param := 'A' + '60' + '│';
		2: Param := 'A' + '40' + '│';
		3: Param := 'A' + '10' + '│';
	end;

	if ( GT_USERIF.LV = '60' ) and ( GT_SEL_BRNO.GUBUN = '0' ) then
		Param := Param + GT_SEL_BRNO.HDNO + '│' + '' + '│'
	else
		Param := Param + GT_SEL_BRNO.HDNO + '│' + GT_SEL_BRNO.BrNo + '│';

	if cxedSearchId.Text <> '' then
	begin
		case cxcbMngSearch.ItemIndex of
			0: Param := Param + 'MEM_ID' + '│'  ;
			1: Param := Param + 'MEM_NAME' + '│'  ;
			2: Param := Param + 'MEM_HP' + '│'  ;
			3: Param := Param + 'MEM_SNUM' + '│'  ;
		end;
		Param := Param + Param_Filtering(cxedSearchId.Text) + '│'  ;
	end else
	begin
		Param := Param + '│' + '│';
	end;

  if cxrbSearchUse.Checked then
    Param := Param + 'y' + '│'
  else
	if cxrbSearchNotUse.Checked then
		Param := Param + 'n' + '│'
	else
		Param := Param + '│';

	if cxcb_UserStatus.ItemIndex = 0 then
		Param := Param + '│'
	else if cxcb_UserStatus.ItemIndex = 5 then
		Param := Param + '9'
	else
		Param := Param + inttostr(cxcb_UserStatus.ItemIndex);

 	cxMngUserList.DataController.SetRecordCount(0);
  XmlData := TStringList.Create;
	if not RequestBasePaging(GetSel05('GET_MEMBER_DETAIL_LIST', 'MNG_MEMBER.LIST_MEMBER_DETAIL', '1000', Param), XmlData, ErrCode, ErrMsg) then
	begin
		GMessagebox(Format('직원 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
		Exit;
	end;

	xdom := ComsDomDocument.Create;
  try
    cxMngUserList.BeginUpdate;
    iHp := cxMngUserList.GetColumnByFieldName('핸드폰번호').Index;
    iRegDate := cxMngUserList.GetColumnByFieldName('입사일').Index;
    iCertDate := cxMngUserList.GetColumnByFieldName('인증일').Index;

    iSNum := cxMngUserList.GetColumnByFieldName('주민등록번호').Index;
    iTel := cxMngUserList.GetColumnByFieldName('연락처').Index;

    isumorg := cxMngUserList.GetColumnByFieldName('주민원본').Index;
 		iCnt := 0;
    for j := 0 to XmlData.Count - 1 do
    begin
      frm_Main.sbar_Message.Panels[4].Text := IntToStr(j + 1) + '/' + IntToStr(XmlData.Count);
      Application.ProcessMessages;
      ls_rxxml := XmlData.Strings[j];

      if not xdom.loadXML(ls_rxxml) then Exit;

	    lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');

	    if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
	    begin
        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
        ls_Rcrd := TStringList.Create;
        try
	    		iRow := 0;
	    		for I := 0 to lst_Result.length - 1 do
	    		begin
	    			GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
	    			sBrNo := ls_Rcrd[0];

	    			if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB   패밀리지사일때
	    			begin
	    				if not Check_ALLHD(GT_SEL_BRNO.HDNO) then      //전체지사권한이 없을때
							begin
	    					if scb_FamilyBrCode.IndexOf(sBrNo) = -1 then   //권한있는 지사일경우만 그리드표기
	    					else
	    					begin
	    						if sBrNo <> '' then
	    						begin
	    							iBrNo := scb_BranchCode.IndexOf(sBrNo);
	    							if iBrNo >= 0 then
	    								sBrNo := scb_BranchName.Strings[iBrNo]
	    							else
	    								sBrNo := '';
	    						end;
	    						ls_Rcrd.Insert(0, sBrNo);
	    						ls_Rcrd.Insert(0, IntToStr(iCnt + 1));
	    						iRow := cxMngUserList.DataController.AppendRecord;
	    						// 1 Record 추가

	    						cxMngUserList.DataController.Values[iRow, 0] := ls_Rcrd[0];
	    						cxMngUserList.DataController.Values[iRow, 1] := ls_Rcrd[1];
	    						cxMngUserList.DataController.Values[iRow, 2] := ls_Rcrd[2];
	    						cxMngUserList.DataController.Values[iRow, 3] := ls_Rcrd[3];
	    						cxMngUserList.DataController.Values[iRow, 4] := ls_Rcrd[4];
	    						cxMngUserList.DataController.Values[iRow, 5] := ls_Rcrd[5];
	    						cxMngUserList.DataController.Values[iRow, 6] := ls_Rcrd[6];
	    						cxMngUserList.DataController.Values[iRow, 7] := ls_Rcrd[7];
	    						cxMngUserList.DataController.Values[iRow, 8] := ls_Rcrd[8];
	    						if ls_Rcrd[9] = '1' then
	    							cxMngUserList.DataController.Values[iRow, 9] := '교육중'     //근무상태
	    						else
	    						if ls_Rcrd[9] = '2' then
	    							cxMngUserList.DataController.Values[iRow, 9] := '근무중'     //근무상태
	    						else
	    						if ls_Rcrd[9] = '3' then
	    							cxMngUserList.DataController.Values[iRow, 9] := '휴가중'     //근무상태
	    						else
	    						if ls_Rcrd[9] = '4' then
	    							cxMngUserList.DataController.Values[iRow, 9] := '일시정지'     //근무상태
	    						else
	    						if ls_Rcrd[9] = '9' then
	    							cxMngUserList.DataController.Values[iRow, 9] := '퇴사';     //근무상태

	    						cxMngUserList.DataController.Values[iRow, 10] := ls_Rcrd[21]; //등록자
	    						cxMngUserList.DataController.Values[iRow, 11] := ls_Rcrd[10]; //등록일자
	    						cxMngUserList.DataController.Values[iRow, 12] := ls_Rcrd[11]; //본사코드
	    						cxMngUserList.DataController.Values[iRow, 13] := ls_Rcrd[12]; //패쓰워드
	    						cxMngUserList.DataController.Values[iRow, 14] := ls_Rcrd[13]; //주소
	    						cxMngUserList.DataController.Values[iRow, 15] := ls_Rcrd[14]; //메모
	    						cxMngUserList.DataController.Values[iRow, 16] := ls_Rcrd[20]; //메모2
	    						cxMngUserList.DataController.Values[iRow, 17] := ls_Rcrd[15]; //입사일
	    						cxMngUserList.DataController.Values[iRow, 18] := ls_Rcrd[19]; //퇴사일
	    						cxMngUserList.DataController.Values[iRow, 19] := ls_Rcrd[16]; //인증일
	    						cxMngUserList.DataController.Values[iRow, isumorg] := ls_Rcrd[17]; //주민원본
	    						if ls_Rcrd[18] = 'y' then
	    						begin
	    							cxMngUserList.DataController.Values[iRow, 21] := '사용';
	    						end else
	    						begin
	    							cxMngUserList.DataController.Values[iRow, 21] := '미사용';
	    						end;

									if ls_Rcrd[22] = 'y' then //관리자앱 휴대폰인증 사용여부
									begin
										cxMngUserList.DataController.Values[iRow, 22] := '사용';
									end	else
									begin
										cxMngUserList.DataController.Values[iRow, 22] := '미사용';
									end;

									cxMngUserList.DataController.Values[iRow, iHp] := strtocall(cxMngUserList.DataController.Values[iRow, iHp]);
	    						cxMngUserList.DataController.Values[iRow, iTel] := strtocall(cxMngUserList.DataController.Values[iRow, iTel]);
	    						sTemp := cxMngUserList.DataController.Values[iRow, iRegDate];
	    						if sTemp <> '' then
	    							sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2);
	    						cxMngUserList.DataController.Values[iRow, iRegDate] := sTemp;

									sTemp := cxMngUserList.DataController.Values[iRow, iSNum];
									if Length(sTemp) <> 6 then
									begin
										if (sTemp <> '') and (Pos('-',sTemp)<1) then
											sTemp := Copy(sTemp, 1, 6) + '-' + '*******';
									end;
									cxMngUserList.DataController.Values[iRow, iSNum] := sTemp;

									sTemp := cxMngUserList.DataController.Values[iRow, iCertDate];
	    						if (sTemp <> '') and (Length(sTemp)=8) then
	    							sTemp := trim(Copy(sTemp, 1, 4)) + '-' + (Copy(sTemp, 5, 2)) + '-' + (Copy(sTemp, 7, 2));
	    						if (sTemp<>'Y') then
	    						begin
	    							sTemp:='N';
	    						end;
	    						cxMngUserList.DataController.Values[iRow, iCertDate] := sTemp;

	    						// 2011.01.11
	    						if HmasYN=False then
	    						begin
	    							if (string(cxMngUserList.DataController.Values[iRow, iCertDate])<>'N') and (Length(string(cxMngUserList.DataController.Values[iRow, isumorg]))=14) then
	    							begin
	    								cxMngUserList.DataController.Values[iRow, iSNum]:=Copy(cxMngUserList.DataController.Values[iRow, iSNum],1,7)+'*******';
	    							end;
	    						end;
	    						inc(iCnt);
	    					end;
	    				end else
	    				begin
	    					if sBrNo <> '' then
	    					begin
	    						iBrNo := scb_BranchCode.IndexOf(sBrNo);
	    						if iBrNo >= 0 then
	    							sBrNo := scb_BranchName.Strings[iBrNo];
	    					end;
	    					ls_Rcrd.Insert(0, sBrNo);
	    					ls_Rcrd.Insert(0, IntToStr(iCnt + 1));
	    					iRow := cxMngUserList.DataController.AppendRecord;
	    					// 1 Record 추가

	    					cxMngUserList.DataController.Values[iRow, 0] := ls_Rcrd[0];
	    					cxMngUserList.DataController.Values[iRow, 1] := ls_Rcrd[1];
	    					cxMngUserList.DataController.Values[iRow, 2] := ls_Rcrd[2];
	    					cxMngUserList.DataController.Values[iRow, 3] := ls_Rcrd[3];
	    					cxMngUserList.DataController.Values[iRow, 4] := ls_Rcrd[4];
	    					cxMngUserList.DataController.Values[iRow, 5] := ls_Rcrd[5];
	    					cxMngUserList.DataController.Values[iRow, 6] := ls_Rcrd[6];
	    					cxMngUserList.DataController.Values[iRow, 7] := ls_Rcrd[7];
	    					cxMngUserList.DataController.Values[iRow, 8] := ls_Rcrd[8];
	    					if ls_Rcrd[9] = '1' then
	    						cxMngUserList.DataController.Values[iRow, 9] := '교육중'     //근무상태
	    					else
	    					if ls_Rcrd[9] = '2' then
	    						cxMngUserList.DataController.Values[iRow, 9] := '근무중'     //근무상태
	    					else
	    					if ls_Rcrd[9] = '3' then
	    						cxMngUserList.DataController.Values[iRow, 9] := '휴가중'     //근무상태
	    					else
	    					if ls_Rcrd[9] = '4' then
	    						cxMngUserList.DataController.Values[iRow, 9] := '일시정지'     //근무상태
	    					else
	    					if ls_Rcrd[9] = '9' then
	    						cxMngUserList.DataController.Values[iRow, 9] := '퇴사';     //근무상태

								cxMngUserList.DataController.Values[iRow, 10] := ls_Rcrd[21]; //등록자
								cxMngUserList.DataController.Values[iRow, 11] := ls_Rcrd[10]; //등록일자
								cxMngUserList.DataController.Values[iRow, 12] := ls_Rcrd[11]; //본사코드
								cxMngUserList.DataController.Values[iRow, 13] := ls_Rcrd[12]; //패쓰워드
								cxMngUserList.DataController.Values[iRow, 14] := ls_Rcrd[13]; //주소
								cxMngUserList.DataController.Values[iRow, 15] := ls_Rcrd[14]; //메모
								cxMngUserList.DataController.Values[iRow, 16] := ls_Rcrd[20]; //메모2
								cxMngUserList.DataController.Values[iRow, 17] := ls_Rcrd[15]; //입사일
								cxMngUserList.DataController.Values[iRow, 18] := ls_Rcrd[19]; //퇴사일
								cxMngUserList.DataController.Values[iRow, 19] := ls_Rcrd[16]; //인증일
								cxMngUserList.DataController.Values[iRow, isumorg] := ls_Rcrd[17]; //주민원본

								if ls_Rcrd[18] = 'y' then  //관리자앱 사용여부
								begin
									cxMngUserList.DataController.Values[iRow, 21] := '사용';
								end	else
								begin
									cxMngUserList.DataController.Values[iRow, 21] := '미사용';
								end;

								if ls_Rcrd[22] = 'y' then //관리자앱 휴대폰인증 사용여부
								begin
									cxMngUserList.DataController.Values[iRow, 22] := '사용';
								end	else
								begin
									cxMngUserList.DataController.Values[iRow, 22] := '미사용';
								end;

								cxMngUserList.DataController.Values[iRow, iHp] := strtocall(cxMngUserList.DataController.Values[iRow, iHp]);
	    					cxMngUserList.DataController.Values[iRow, iTel] := strtocall(cxMngUserList.DataController.Values[iRow, iTel]);
								sTemp := cxMngUserList.DataController.Values[iRow, iRegDate];
	    					if sTemp <> '' then
	    						sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2);
	    					cxMngUserList.DataController.Values[iRow, iRegDate] := sTemp;

								sTemp := cxMngUserList.DataController.Values[iRow, iSNum];
								if Length(sTemp) <> 6 then
								begin
									if (sTemp <> '') and (Pos('-',sTemp)<1) then
										sTemp := Copy(sTemp, 1, 6) + '-' + '*******';
								end;
								cxMngUserList.DataController.Values[iRow, iSNum] := sTemp;

								sTemp := cxMngUserList.DataController.Values[iRow, iCertDate];
	    					if (sTemp <> '') and (Length(sTemp)=8) then
	    						sTemp := trim(Copy(sTemp, 1, 4)) + '-' + (Copy(sTemp, 5, 2)) + '-' + (Copy(sTemp, 7, 2));
	    					if (sTemp<>'Y') then
	    					begin
									sTemp:='N';
	    					end;
	    					cxMngUserList.DataController.Values[iRow, iCertDate] := sTemp;

	    					// 2011.01.11
								if HmasYN = False then
	    					begin
									if (string(cxMngUserList.DataController.Values[iRow, iCertDate])<>'N') and (Length(string(cxMngUserList.DataController.Values[iRow, isumorg]))=14) then
	    						begin
										cxMngUserList.DataController.Values[iRow, iSNum]:=Copy(cxMngUserList.DataController.Values[iRow, iSNum],1,7)+'*******';
	    						end;
	    					end;
    						inc(iCnt);
	    				end;
	    			end else
	    			begin
	    				if sBrNo <> '' then
	    				begin
	    					iBrNo := scb_BranchCode.IndexOf(sBrNo);
	    					if iBrNo >= 0 then
	    						sBrNo := scb_BranchName.Strings[iBrNo];
	    				end;
	    				ls_Rcrd.Insert(0, sBrNo);
	    				ls_Rcrd.Insert(0, IntToStr(iCnt + 1));
	    				iRow := cxMngUserList.DataController.AppendRecord;
	    				cxMngUserList.DataController.Values[iRow, 0] := ls_Rcrd[0];
	    				cxMngUserList.DataController.Values[iRow, 1] := ls_Rcrd[1];
	    				cxMngUserList.DataController.Values[iRow, 2] := ls_Rcrd[2];
	    				cxMngUserList.DataController.Values[iRow, 3] := ls_Rcrd[3];
	    				cxMngUserList.DataController.Values[iRow, 4] := ls_Rcrd[4];
	    				cxMngUserList.DataController.Values[iRow, 5] := ls_Rcrd[5];
	    				cxMngUserList.DataController.Values[iRow, 6] := ls_Rcrd[6];
	    				cxMngUserList.DataController.Values[iRow, 7] := ls_Rcrd[7];
	    				cxMngUserList.DataController.Values[iRow, 8] := ls_Rcrd[8];
	    				if ls_Rcrd[9] = '1' then
	    					cxMngUserList.DataController.Values[iRow, 9] := '교육중'     //근무상태
	    				else
	    				if ls_Rcrd[9] = '2' then
	    					cxMngUserList.DataController.Values[iRow, 9] := '근무중'     //근무상태
	    				else
	    				if ls_Rcrd[9] = '3' then
	    					cxMngUserList.DataController.Values[iRow, 9] := '휴가중'     //근무상태
	    				else
	    				if ls_Rcrd[9] = '4' then
	    					cxMngUserList.DataController.Values[iRow, 9] := '일시정지'     //근무상태
	    				else
	    				if ls_Rcrd[9] = '9' then
	    					cxMngUserList.DataController.Values[iRow, 9] := '퇴사';     //근무상태
	    				cxMngUserList.DataController.Values[iRow, 10] := ls_Rcrd[21]; //등록자
	    				cxMngUserList.DataController.Values[iRow, 11] := ls_Rcrd[10]; //등록일자
	    				cxMngUserList.DataController.Values[iRow, 12] := ls_Rcrd[11]; //본사코드
	    				cxMngUserList.DataController.Values[iRow, 13] := ls_Rcrd[12]; //패쓰워드
	    				cxMngUserList.DataController.Values[iRow, 14] := ls_Rcrd[13]; //주소
	    				cxMngUserList.DataController.Values[iRow, 15] := ls_Rcrd[14]; //메모
	    				cxMngUserList.DataController.Values[iRow, 16] := ls_Rcrd[20]; //메모2
	    				cxMngUserList.DataController.Values[iRow, 17] := ls_Rcrd[15]; //입사일
	    				cxMngUserList.DataController.Values[iRow, 18] := ls_Rcrd[19]; //퇴사일
	    				cxMngUserList.DataController.Values[iRow, 19] := ls_Rcrd[16]; //인증일
							cxMngUserList.DataController.Values[iRow, isumorg] := ls_Rcrd[17]; //주민원본

	    				if ls_Rcrd[18] = 'y' then
	    				begin
	    					cxMngUserList.DataController.Values[iRow, 21] := '사용';
	    				end	else
	    				begin
	    					cxMngUserList.DataController.Values[iRow, 21] := '미사용';
	    				end;

							if ls_Rcrd[22] = 'y' then //관리자앱 휴대폰인증 사용여부
							begin
								cxMngUserList.DataController.Values[iRow, 22] := '사용';
							end	else
							begin
								cxMngUserList.DataController.Values[iRow, 22] := '미사용';
							end;

							cxMngUserList.DataController.Values[iRow, iHp] := strtocall(cxMngUserList.DataController.Values[iRow, iHp]);
	    				cxMngUserList.DataController.Values[iRow, iTel] := strtocall(cxMngUserList.DataController.Values[iRow, iTel]);
	    				sTemp := cxMngUserList.DataController.Values[iRow, iRegDate];
	    				if sTemp <> '' then
	    					sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2);
	    				cxMngUserList.DataController.Values[iRow, iRegDate] := sTemp;

							sTemp := cxMngUserList.DataController.Values[iRow, iSNum];
							if Length(sTemp) <> 6 then
							begin
								if (sTemp <> '') and (Pos('-',sTemp)<1) then
									sTemp := Copy(sTemp, 1, 6) + '-' + '*******';
							end;
							cxMngUserList.DataController.Values[iRow, iSNum] := sTemp;

	    				sTemp := cxMngUserList.DataController.Values[iRow, iCertDate];
	    				if (sTemp <> '') and (Length(sTemp)=8) then
	    					sTemp := trim(Copy(sTemp, 1, 4)) + '-' + (Copy(sTemp, 5, 2)) + '-' + (Copy(sTemp, 7, 2));

	    				if (sTemp<>'Y') then
	    				begin
	    					sTemp:='N';
	    				end;
	    				cxMngUserList.DataController.Values[iRow, iCertDate] := sTemp;

	    				// 2011.01.11
	    				if HmasYN=False then
	    				begin
	    					if (string(cxMngUserList.DataController.Values[iRow, iCertDate])<>'N') and (Length(string(cxMngUserList.DataController.Values[iRow, isumorg]))=14) then
	    					begin
	    						cxMngUserList.DataController.Values[iRow, iSNum]:=Copy(cxMngUserList.DataController.Values[iRow, iSNum],1,7)+'*******';
	    					end;
	    				end;
  						inc(iCnt);
	    			end;
	    		end;
        finally
          ls_Rcrd.Free;
        end;
      end;
    end;
  finally
    xdom := Nil;
  	cxMngUserList.EndUpdate;
    XmlData.Free;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_USR.proc_Manage_Select(iRow: Integer);
var
  sTemp, sHp1, sHp2, sBrNo: string;
  iBrNo: Integer;
begin
	if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사의 직원만 관리 가능합니다.', CDMSI);
    Exit;
  end;

	try
    if ( Not Assigned(Frm_USR10) ) Or ( Frm_USR10 = NIl ) then Frm_USR10 := TFrm_USR10.Create(Nil);

		with Frm_USR10 do
    begin
      cboBranch.Properties.Items.Clear;
			if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
				cboBranch.Properties.Items.Assign(scb_FamilyBranch)
			else
				cboBranch.Properties.Items.Assign(scb_Branch);

			if iRow >= 0 then
      begin
        // 수정
        // 2011.03.21 (cbobranch->cxcbgrad)
        //  sTemp := cxMngUserList.DataController.Values[iRow, cxMngUserList.GetColumnByFieldName('사용자그룹').Index];
        //  cxcbGrad.ItemIndex := cxcbGrad.Properties.Items.IndexOf(sTemp);
        cxedId.Text := cxMngUserList.DataController.Values[iRow, cxMngUserList.GetColumnByFieldName('아이디').Index];
				cxedId.Text := StringReplace(cxedId.Text, '[M]', '', [rfReplaceAll]);
        cxedPW.Text := cxMngUserList.DataController.Values[iRow, cxMngUserList.GetColumnByFieldName('패스워드').Index];
        cxedName.Text := cxMngUserList.DataController.Values[iRow, cxMngUserList.GetColumnByFieldName('직원명').Index];
				sTemp := cxMngUserList.DataController.Values[iRow, cxMngUserList.GetColumnByFieldName('근무상태').Index];

				if sTemp = '교육중' then
					cxcbUserStatus.ItemIndex := 0
				else
				if sTemp = '근무중' then
					cxcbUserStatus.ItemIndex := 1
				else
				if sTemp = '휴가중' then
					cxcbUserStatus.ItemIndex := 2
				else
				if sTemp = '일시정지' then
					cxcbUserStatus.ItemIndex := 3
				else
				if sTemp = '퇴사' then
					cxcbUserStatus.ItemIndex := 4
				else
					cxcbUserStatus.ItemIndex := 0;

				sTemp := cxMngUserList.DataController.Values[iRow, cxMngUserList.GetColumnByFieldName('핸드폰번호').Index];
				sTemp := StringReplace(sTemp, '-', '', [rfReplaceAll]);
        if Length(sTemp) > 3 then
        begin
          sHp1 := Copy(sTemp, 1, 3);
          cxcbPhone.ItemIndex := cxcbPhone.Properties.Items.IndexOf(sHp1);
          sHp2 := Copy(sTemp, 4, Length(sTemp));
          cxedPhone.Text := strtocall(sHp2);
        end else
        begin
          cxcbPhone.ItemIndex := 0;
          cxedPhone.Text := '';
        end;
        cxedTel.Text := cxMngUserList.DataController.Values[iRow, cxMngUserList.GetColumnByFieldName('연락처').Index];
        sTemp := cxMngUserList.DataController.Values[iRow, cxMngUserList.GetColumnByFieldName('입사일').Index];
        if (sTemp <> '') then
          cxdtInDate.Date := StrToDateDef(sTemp, Now);

        sTemp := cxMngUserList.DataController.Values[iRow, cxMngUserList.GetColumnByFieldName('퇴사일').Index];
        if (sTemp <> '') then
          cxdtOutDate.Date := StrToDateDef(sTemp, Now)
        else
          cxdtOutDate.Text := '2999-12-30';

        cxmmAddr.Text := cxMngUserList.DataController.Values[iRow, cxMngUserList.GetColumnByFieldName('주소').Index];
        cxmmMemo1.Text := cxMngUserList.DataController.Values[iRow, cxMngUserList.GetColumnByFieldName('메모1').Index];

        if pos('[본인인증성공]', cxmmMemo1.Text) > 0 then
        begin
          btnNCert.Tag := 99;
          cxmmMemo1.Text := StringReplace(cxmmMemo1.Text, '[본인인증성공]', '', [rfReplaceAll]);
        end;

        cxmmMemo2.Text := cxMngUserList.DataController.Values[iRow, cxMngUserList.GetColumnByFieldName('메모2').Index];
        cxbModify.Caption := '수정';
        PnlTitle.Caption := '   직원 수정';
        cboBranch.Properties.Items.Clear;
        if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
          cboBranch.Properties.Items.Assign(scb_FamilyBranch)
        else
          cboBranch.Properties.Items.Assign(scb_Branch);

        sBrNo := cxMngUserList.DataController.Values[iRow, cxMngUserList.GetColumnByFieldName('지사코드').Index];
        frm_USR10.cxBrNo.Text := sBrNo;
        frm_USR10.cxHdNo.Text := frm_Main.func_search_hdNo(sBrNo);

        if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
          iBrNo := scb_FamilyBrCode.IndexOf(sBrNo)
        else
          iBrNo := scb_BranchCode.IndexOf(sBrNo);

        cboBranch.ItemIndex := iBrNo;

        // 2011.03.21 이벤트호출오류수정
        sTemp := cxMngUserList.DataController.Values[iRow, cxMngUserList.GetColumnByFieldName('직원그룹').Index];
				if sTemp = '패밀리관리자' then sTemp := '본사관리자';
        cxcbGrad.ItemIndex := cxcbGrad.Properties.Items.IndexOf(sTemp);
				
        cboBranch.Enabled := False;
				cxedId.Enabled := False;
        cxcbGrad.Enabled := False;
        cxButton3.Enabled := False;
        OutputDebugString(PChar('<'+string(cxMngUserList.DataController.Values[iRow, cxMngUserList.GetColumnByFieldName('인증일').Index]+'>')));
        if copy(string(cxMngUserList.DataController.Values[iRow, cxMngUserList.GetColumnByFieldName('인증일').Index]),1,1)='N' then
        begin
          btnNCert.Enabled:=true;
          tmYn:=false;
        end else
        begin
          btnNCert.Enabled:=False;
          tmYn:=true;
        end;
        tmName:=cxMngUserList.DataController.Values[iRow, cxMngUserList.GetColumnByFieldName('직원명').Index];
        tmNo:=stringreplace( cxMngUserList.DataController.Values[iRow, cxMngUserList.GetColumnByFieldName('주민등록번호').Index],'-','',[rfreplaceall]);
        tmSnumOrg:=stringreplace(string(cxMngUserList.DataController.Values[iRow, cxMngUserList.GetColumnByFieldName('주민원본').Index]),'-','',[rfReplaceAll]);
				tmNo1 := Copy(tmSnumOrg, 1,6);
				tmNo2 := Copy(tmSnumOrg, 7,7);
				cxedNo1.Text := tmNo1;
				cxedNo2.Text := tmNo2;

        // 2010.12.30 본사관리자 마스터는 행드폰번호 수정불가
        if (cxMngUserList.DataController.Values[iRow, cxMngUserList.GetColumnByFieldName('직원그룹').Index]='본사관리자') and (pos('[M]',cxMngUserList.DataController.Values[iRow, cxMngUserList.GetColumnByFieldName('아이디').Index])>0) then
        begin
          cxcbPhone.Enabled:=false;
          cxedPhone.Enabled:=false;
        end else
        begin
          cxcbPhone.Enabled:=true;
          cxedPhone.Enabled:=true;
        end;

//				if (pos('[M]',cxMngUserList.DataController.Values[iRow, cxMngUserList.GetColumnByFieldName('아이디').Index])>0) then
				//패밀리관리자도 관리자앱 사용 가능하게 함 2020.01.30KHS 신성현차장님 요청
				if (pos('[M]',cxMngUserList.DataController.Values[iRow, cxMngUserList.GetColumnByFieldName('아이디').Index])>0) or
					 (pos('패밀리관리자',cxMngUserList.DataController.Values[iRow, cxMngUserList.GetColumnByFieldName('직원그룹').Index])>0) then
				begin
					rb_AdminAPP_Use_Y.Enabled := True;
					rb_AdminAPP_Use_N.Enabled := True;
					sTemp := cxMngUserList.DataController.Values[iRow, cxMngUserList.GetColumnByFieldName('관리자앱').Index];
					if sTemp = '사용' then
					begin
						rb_AdminAPP_Use_Y.Checked := True;
						rb_AdminAPP_Use_N.Checked := False;
					end else
					begin
						rb_AdminAPP_Use_Y.Checked := False;
						rb_AdminAPP_Use_N.Checked := True;
					end;

//					rb_AdminAPP_PhoneAuth_Use_Y.Enabled := True;
//					rb_AdminAPP_PhoneAuth_Use_N.Enabled := True;
					sTemp := cxMngUserList.DataController.Values[iRow, cxMngUserList.GetColumnByFieldName('단말기추가').Index];
					if sTemp = '사용' then
					begin
						rb_AdminAPP_ADD_Use_Y.Checked := True;
						rb_AdminAPP_ADD_Use_N.Checked := False;
					end else
					begin
						rb_AdminAPP_ADD_Use_Y.Checked := False;
						rb_AdminAPP_ADD_Use_N.Checked := True;
					end;  
				end else
				begin
					rb_AdminAPP_Use_Y.Checked := False;
					rb_AdminAPP_Use_N.Checked := True;
					rb_AdminAPP_Use_Y.Enabled := False;
					rb_AdminAPP_Use_N.Enabled := False;
					rb_AdminAPP_ADD_Use_Y.Enabled := False;
					rb_AdminAPP_ADD_Use_N.Enabled := False;
					rb_AdminAPP_ADD_Use_Y.Checked := False;
					rb_AdminAPP_ADD_Use_N.Checked := False;
				end;
			end else
      begin
      // 추가
        cxcbGrad.ItemIndex := -1;
				cxedId.Text := '';
        cxedPW.Text := '';
        cxedName.Text := '';
				cxcbPhone.ItemIndex := 0;
        cxedPhone.Text := '';
        cxedTel.Text := '';
        cxedNo1.Text := '';
        cxedNo2.Text := '';
        cxdtInDate.Date := Now;
        cxdtOutDate.Text := '2999-12-30';
				cxmmAddr.Text := '';
        cxmmMemo1.Text := '';
        cxmmMemo2.Text := '';
        cxbModify.Caption := '저장';
      //  btnNCert.Enabled:=true;
				tmYn:=false;
        tmName:='';
        tmNo:='';
				tmSnumOrg:='';

				PnlTitle.Caption := '   직원 신규등록';

				rb_AdminAPP_Use_Y.Checked := False;
				rb_AdminAPP_Use_N.Checked := True;
				rb_AdminAPP_Use_Y.Enabled := False;
				rb_AdminAPP_Use_N.Enabled := False;
				rb_AdminAPP_ADD_Use_Y.Enabled := False;
				rb_AdminAPP_ADD_Use_N.Enabled := False;
				rb_AdminAPP_ADD_Use_Y.Checked := False;
				rb_AdminAPP_ADD_Use_N.Checked := False;
				cxcbUserStatus.ItemIndex := 0;

        if GT_SEL_BRNO.GUBUN <> '1' then
        begin
          sBrNo := GT_SEL_BRNO.BrNo;
          frm_USR10.cxBrNo.Text := sBrNo;
          frm_USR10.cxHdNo.Text := frm_Main.func_search_hdNo(sBrNo);

          if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
            iBrNo := scb_FamilyBrCode.IndexOf(sBrNo)
          else
						iBrNo := scb_BranchCode.IndexOf(sBrNo);
					cboBranch.ItemIndex := iBrNo;
					cboBranch.Enabled := True;
        end else
        begin
          sBrNo := GT_SEL_BRNO.BrNo;
          frm_USR10.cxBrNo.Text := sBrNo;
          frm_USR10.cxHdNo.Text := frm_Main.func_search_hdNo(sBrNo);
          if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
            iBrNo := scb_FamilyBrCode.IndexOf(sBrNo)
          else
            iBrNo := scb_BranchCode.IndexOf(sBrNo);
          cboBranch.ItemIndex := iBrNo;
          frm_USR10.cxHdNo.Text := frm_Main.func_search_hdNo(sBrNo);
          cboBranch.Enabled := False;
        end;
				cxedId.Enabled := True;
        cxcbGrad.Enabled := True;
        cxButton3.Enabled := True;
      end;
    end;
    Frm_USR10.Show;
  except
  end;
end;

// 2011.01.03 접수현황건수제한 컬럼에 선택ID별 세팅
function TFrm_USR.Set_JONTIT(MemID:String): string;
var
  tmSt: string;
begin
  tmSt:='';
  try
    gsJONLMT := IntToStr(GetJONLMT(MemID));
    tmSt := gsJONLMT;
    if Trim(tmSt) <> '' then
      tmSt:='(Max : '+tmSt+')';
    result:= st_JONMAX + tmSt;
  finally
  end;
end;

procedure TFrm_USR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(slMenuSch);
  Action := caFree;
end;

procedure TFrm_USR.FormCreate(Sender: TObject);
begin
  if GT_USERIF.ID = 'sntest' then btnGetList.Visible := True;

  slMenuSch := TStringList.Create;

  proc_init;

  // --------------------------------------------------------------------------- A1
  if TCK_USER_PER.USR_MngModify = '1' then
  begin
    cxbInsert.Enabled := True;
    cxbModify.Enabled := True;
    cxbDelete.Enabled := True;
    cxbDelete2.Enabled := True;
  end else
  begin
    cxbInsert.Enabled := False;
    cxbModify.Enabled := False;
    cxbDelete.Enabled := False;
    cxbDelete2.Enabled := False;
  end;

  // --------------------------------------------------------------------------- A2
  if TCK_USER_PER.USR_PerModify = '1' then
  begin
    btnSearch3A2.Enabled := True;
    btnSearch1A2.Enabled := True;
  end else
  begin
    btnSearch3A2.Enabled := False;
    btnSearch1A2.Enabled := False;
  end;

  cxPageControl1.ActivePageIndex := 0;
  cxPageControl1.Pages[0].TabVisible := (TCK_USER_PER.USR_Manage = '1') or (TCK_USER_PER.USR_MngModify = '1');      // 901.직원관리
  cxPageControl1.Pages[1].TabVisible := (TCK_USER_PER.USR_Permission = '1') or (TCK_USER_PER.USR_PerModify = '1');  // 902.권한설정
  cxPageControl1.Pages[2].TabVisible := (TCK_USER_PER.USR_AuthStat = '1');                                          // 903.인증현황
  cxPageControl1.Pages[3].TabVisible := (TCK_USER_PER.USR_UserAuthSel = '1');                                       // 904.인증관리(사용자)
  cxPageControl1.Pages[4].TabVisible := (TCK_USER_PER.USR_PCAuthSel = '1');                                         // 905.인증관리(PC)
  cxPageControl1.Pages[5].TabVisible := (TCK_USER_PER.USR_ExcelDownList = '1');                                     // 906.엑셀다운현황
  cxPageControl1.Pages[6].TabVisible := (TCK_USER_PER.USR_UserCall = '1');                                          // 907.직원별콜현황
  cxPageControl1.Pages[7].TabVisible := (TCK_USER_PER.USR_HourCall = '1');                                          // 908.직원별시간통계
  cxPageControl1.Pages[8].TabVisible := (TCK_USER_PER.USR_LoginCheck = '1');                                        // 909.직원근태현황
  cxPageControl1.Pages[9].TabVisible := (GT_USERIF.Family = 'y') and (GT_USERIF.Master = 'y');                      // 910.패밀리관리자설정

	proc_Menu_Permission;
end;

procedure TFrm_USR.FormDestroy(Sender: TObject);
begin
  Frm_USR := Nil;
end;

procedure TFrm_USR.FormShow(Sender: TObject);
Var i : Integer;
begin
  fSetFont(Frm_USR, GS_FONTNAME);
  for i := 0 to pred(cxStyleRepository1.Count) do
  begin
    TcxStyle(cxStyleRepository1.Items[i]).Font.Name := GS_FONTNAME;
  end;
end;

procedure TFrm_USR.MiOneMonthClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_USR.MiOneWeekClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_USR.MiStartMonthClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure TFrm_USR.MiTodayClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

procedure TFrm_USR.MiYesterdayClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_USR.mniClick(Sender: TObject);
var iRow, i, iIdx : integer;
begin
	Try
		if not pnl_Mulit_perSend.Visible then
		begin
			pnl_Mulit_perSend.Visible := True;
			memo_PerResult.Clear;
			cxGrid_Mulit_ManagerList.DataController.SetRecordCount(0);
			if btnSearch2B1.tag = 0 then
			begin
				btnSearch2B1.Enabled := False;
				btnSearch3B1.Enabled := False;
			end;
		end;

		try
			cxGrid_Mulit_ManagerList.BeginUpdate;
			for I := 0 to cxGridB1View.DataController.RecordCount - 1 do
			begin
				if (cxGridB1View.ViewData.Records[i].Selected) then
				begin
					iIdx := cxGrid_Mulit_ManagerList.DataController.FindRecordIndexByText(0,0,cxGridB1View.ViewData.Rows[i].Values[1],True,True,True);
					if iIdx < 0 then
					begin
						iRow := cxGrid_Mulit_ManagerList.DataController.AppendRecord;
						cxGrid_Mulit_ManagerList.DataController.Values[iRow, 0] := cxGridB1View.ViewData.Rows[i].Values[1];
						cxGrid_Mulit_ManagerList.DataController.Values[iRow, 1] := cxGridB1View.ViewData.Rows[i].Values[2];
						cxGrid_Mulit_ManagerList.DataController.Values[iRow, 2] := cxGridB1View.ViewData.Rows[i].Values[3];
						cxGrid_Mulit_ManagerList.DataController.Values[iRow, 3] := cxGridB1View.ViewData.Rows[i].Values[4];
					end;
				end;
			end;
		finally
			cxGrid_Mulit_ManagerList.EndUpdate;
		end;
	except
  	ShowMessage('패밀리관리자 일괄설정 오류발생');
	end;
end;

procedure TFrm_USR.proc_FamilyPermission;
var
  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd, slList: TStringList;
	I, ErrCode, iCnt, iRow, j : Integer;
begin
  if (GT_USERIF.Family <> 'y') and (GT_USERIF.Master <> 'y') then
  begin
    GMessagebox('패밀리마스터만 조회할 수 있습니다.', CDMSI);
    Exit;
  end;

  Param := '60' + '│';

	if cxedPerSearchB1.Text <> '' then
	begin
		case cxcbPerTypeB1.ItemIndex of
			0: Param := Param + '0' + '│'  ;
			1: Param := Param + '1' + '│'  ;
		end;
		Param := Param + Param_Filtering(cxedPerSearchB1.Text);
	end else
	begin
		Param := Param + '│' + '│';
	end;

	try
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel05('GET_MEMBER_LIST', 'CAS.GET_MEMBER_LIST', '100', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('패밀리관리자 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
				FreeAndNil(slList);
				Exit;
			end;

			xdom := ComsDomDocument.Create;
			try
				iCnt := 1;
				Frm_Flash.cxPBar1.Properties.Max := slList.Count;
				Frm_Flash.cxPBar1.Position := 0;
				cxGridB1View.DataController.SetRecordCount(0);
				cxGridB1View.BeginUpdate;
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
								GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
								if Pos('[M]', ls_Rcrd[4]) = 0 then
								begin
									iRow := cxGridB1View.DataController.AppendRecord;
									cxGridB1View.DataController.Values[iRow, 0] := iRow;
									cxGridB1View.DataController.Values[iRow, 1] := ls_Rcrd[4];
									cxGridB1View.DataController.Values[iRow, 2] := ls_Rcrd[3];
									cxGridB1View.DataController.Values[iRow, 3] := ls_Rcrd[0];
									cxGridB1View.DataController.Values[iRow, 4] := ls_Rcrd[1];
								end;
							end;
						finally
							ls_Rcrd.Free;
						end;
					end;
				end;
			finally
				xdom := Nil;
				cxGridB1View.EndUpdate;
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
			Frm_Flash.hide; 
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_USR.Notice_ListColumnGridDBTableViewColumn3PropertiesEditValueChanged(Sender: TObject);
var
	Row, i: Integer;
	sHd_Cd : string;
begin
	Row := cxGridLB1View.DataController.FocusedRecordIndex;

  IF cxGridLB1View.DataController.Values[Row, 2] = True then
	begin
		cxGridLB1View.DataController.Values[Row, 2] := False;
  end else
  begin
    cxGridLB1View.DataController.Values[Row, 2] := True;
	end;

	if cxGridLB1View.DataController.Values[Row, 3] = '본사전체' then
	begin
		sHd_Cd  := cxGridLB1View.DataController.Values[Row, 1];
    try
      cxGridLB1View.BeginUpdate;
      for i := Row to cxGridLB1View.DataController.RecordCount - 1 do
      begin
        if Pos(sHd_Cd, cxGridLB1View.DataController.Values[i, 1]) > 0 then
          cxGridLB1View.DataController.Values[i, 2] := cxGridLB1View.DataController.Values[Row, 2]
        else
          Break;
      end;
    finally
      cxGridLB1View.EndUpdate;
    end;
	end;
end;

procedure TFrm_USR.NStatusClick(Sender: TObject);
var iRow, iStatus, iId : integer;
	sID, sStatus : string;
begin
	iRow := cxViewAuthUser.DataController.FocusedRecordIndex;
	if iRow < 0 then Exit;

	iId := cxViewAuthUser.GetColumnByFieldName('인증ID').Index;
	sId := cxViewAuthUser.DataController.Values[iRow, iId];
	iStatus := cxViewAuthUser.GetColumnByFieldName('근무상태').Index;
	sStatus := cxViewAuthUser.DataController.Values[iRow, iStatus];
	cxedSelId.Text := sId;

	if sStatus = '교육중'   then rdo_status1.Checked := True else
	if sStatus = '근무중'   then rdo_status2.Checked := True else
	if sStatus = '휴가중'   then rdo_status3.Checked := True else
	if sStatus = '일시정지' then rdo_status4.Checked := True else
	if sStatus = '퇴사'     then rdo_status5.Checked := True;
	pnl_ChangeStatus.Visible := True;
end;

function TFrm_USR.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
  Result := True;
  case cxPageControl1.ActivePageIndex of
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
    5 : begin
          AStDt := cxDtStartA6;
          AEdDt := cxDtEndA6;
        end;
    6 : begin
          AStDt := cxDtStartA7;
          AEdDt := cxDtEndA7;
        end;
    7 : begin
          AStDt := cxDtStartA8;
          AEdDt := cxDtEndA8;
        end;
    8 : begin
          AStDt := cxDtStartA9;
          AEdDt := cxDtEndA9;
        end;
  end;
end;

procedure TFrm_USR.proc_User_Permission;
var
  iRow, iId: Integer;
  ls_TxQry, ls_TxLoad, sId, sQueryTemp : string; // XML File Load
  slReceive: TStringList;
  rv_str, ls_rxxml: string;
  ErrCode: integer;
begin
  iId := cxgPer1.GetColumnByFieldName('아이디').Index;
  iRow := cxgPer1.DataController.FocusedRecordIndex;
  if iRow = -1 then Exit;
  sId := cxgPer1.DataController.Values[iRow, iId];
  sId := StringReplace(sId, '[M]', '', [rfReplaceAll]);

  ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
  fGet_BlowFish_Query(GSQ_USER_MENU_PER2, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, [sId, sId, sId]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', self.Caption + '10', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

  slReceive := TStringList.Create;
  try
    frm_Main.proc_SocketWork(False);
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
    frm_Main.proc_SocketWork(True);
  end;
end;

procedure TFrm_USR.rbPerAllClick(Sender: TObject);
var
  i, j : Integer;
  sMenuCode, sID, sGrade: string;
  IsMasterUser, IsHdMasterUser, IsSetAuthEdit: Boolean;
  sl_MyPer : TStringList;
begin
  if cxgMemberPer.DataController.RecordCount = 0 then Exit;

  cxgMemberPer.DataController.BeginUpdate;
  for i := 0 to cxgMemberPer.DataController.RecordCount - 1 do
  begin
    sMenuCode := cxgMemberPer.DataController.Values[i, 6];
    cxgMemberPer.DataController.Values[i, 3] := '0';
  end;
  cxgMemberPer.DataController.EndUpdate;

	if rbPerAll.Checked then
  begin
    sId     := cxgPer1.DataController.Values[cxgPer1.DataController.FocusedRecordIndex, 3];
    sGrade  := cxgPer1.DataController.Values[cxgPer1.DataController.FocusedRecordIndex, 2];

    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then
    begin
      IsMasterUser    := (sGrade = '패밀리관리자');
      IsHdMasterUser  := IsMasterUser and (Pos('[M]', sID) > 0);

      IsSetAuthEdit := False;
      if IsHdMasterUser then
        IsSetAuthEdit := True
      else
      if IsMasterUser then
        IsSetAuthEdit := (Application.MessageBox(
                            PChar('전체선택 시 [직원권한수정] 권한은 제외됩니다.' + #13#10#13#10
                              + ' 해당 직원은 ''패밀리관리자-마스터'' 입니다.' + #13#10
                              + ' 해당 직원에게 [직원권한수정] 권한을 부여하겠습니까?')
                            , '권한설정', MB_YESNO + MB_ICONQUESTION) = IDYES);
    end else
    begin
      IsMasterUser    := (sGrade = '본사관리자');
      IsHdMasterUser  := IsMasterUser and (Pos('[M]', sID) > 0);

      IsSetAuthEdit := False;
      if IsHdMasterUser then
        IsSetAuthEdit := True
      else
      if IsMasterUser then
        IsSetAuthEdit := (Application.MessageBox(
                            PChar('전체선택 시 [직원권한수정] 권한은 제외됩니다.' + #13#10#13#10
                              + ' 해당 직원은 ''본사관리자-마스터'' 입니다.' + #13#10
                              + ' 해당 직원에게 [직원권한수정] 권한을 부여하겠습니까?')
                            , '권한설정', MB_YESNO + MB_ICONQUESTION) = IDYES);
    end;

    cxgMemberPer.DataController.BeginUpdate;
    for i := 0 to cxgMemberPer.DataController.RecordCount - 1 do
    begin
      sMenuCode := cxgMemberPer.DataController.Values[i, 6];

      if (sMenuCode = 'COM010' ) Or //공통권한전체허용
         (sMenuCode = 'COM002' ) Or //엑셀다운로드허용(고객번호숨김)
         (sMenuCode = 'COM014' ) Or //메신저[본사소속사용자공유]
         (sMenuCode = 'COM0112') Or //메신저[상담원간메신저제한]
         ((sMenuCode = 'USR022') and (not IsSetAuthEdit)) Or
         ((sMenuCode = 'USR072') and (not IsSetAuthEdit)) Or
         ((sMenuCode = 'USR082') and (not IsSetAuthEdit)) Or
         (sMenuCode = 'JON010' ) Or  //접수권한전체허용
         (sMenuCode = 'JON0122') Or  //접수창법인정보를수정할수없음
         (sMenuCode = 'JON013' ) Or  //자사콜고객번호당일오픈후익일숨김
         (sMenuCode = 'JON0111') Or  //콜보기고객번호마지막2자리마킹
         (sMenuCode = 'JON0112') Or  //콜보기고객번호마지막2자리마킹(익일오더수정창전체번호오픈)
         (sMenuCode = 'JON0123') Or  //콜보기고객번호중간2자리(익일오더수정창전체번호오픈)
         (sMenuCode = 'JON0113') Or  //강제배차권한제한
         (sMenuCode = 'JON0114') Or  //문자배차권한제한
         (sMenuCode = 'JON0115') Or  //요금저장권한제한
         (sMenuCode = 'JON0116') Or  //접수현황조회건수제한(Max : 500)
         (sMenuCode = 'JON0119') Or  //기간검색불가
         (sMenuCode = 'WOR024' ) Or  //기사조회방법및결과를제한한다.
         (sMenuCode = 'USR052' ) Or  //사용자별콜현황(관리자제외)
         (sMenuCode = 'USR062' ) Or  //사용자별시간통계(관리자제외)
         (sMenuCode = 'USR092' ) then  //사용자별근태현황(관리자제외)
        cxgMemberPer.DataController.Values[i, 3] := '0'
      else
        cxgMemberPer.DataController.Values[i, 3] := '1';
    end;
    cxgMemberPer.DataController.EndUpdate;
  end else
	if rbPerNotAll.Checked then
  begin
    cxgMemberPer.DataController.BeginUpdate;
    for i := 0 to cxgMemberPer.DataController.RecordCount - 1 do
    begin
      sMenuCode := cxgMemberPer.DataController.Values[i, 6];

      if (sMenuCode = 'COM002' ) Or  //엑셀다운로드허용(고객번호숨김)
         (sMenuCode = 'COM014' ) Or  //메신저[본사소속사용자공유]
         (sMenuCode = 'COM0112') Or  //메신저[상담원간메신저제한]
         (sMenuCode = 'JON0122') Or  //접수창법인정보를수정할수없음
         (sMenuCode = 'JON013' ) Or  //자사콜고객번호당일오픈후익일숨김
         (sMenuCode = 'JON0111') Or  //콜보기고객번호마지막2자리마킹
         (sMenuCode = 'JON0112') Or  //콜보기고객번호마지막2자리마킹(익일오더수정창전체번호오픈)
         (sMenuCode = 'JON0123') Or  //콜보기고객번호중간2자리(익일오더수정창전체번호오픈)
         (sMenuCode = 'JON0113') Or  //강제배차권한제한
         (sMenuCode = 'JON0114') Or  //문자배차권한제한
         (sMenuCode = 'JON0115') Or  //요금저장권한제한
         (sMenuCode = 'JON0116') Or  //접수현황조회건수제한(Max : 500)
         (sMenuCode = 'JON0119') Or  //기간검색불가
         (sMenuCode = 'WOR024' ) Or  //기사조회방법및결과를제한한다.
         (sMenuCode = 'USR052' ) Or  //사용자별콜현황(관리자제외)
         (sMenuCode = 'USR062' ) Or  //사용자별시간통계(관리자제외)
         (sMenuCode = 'USR092' ) then  //사용자별근태현황(관리자제외)
        cxgMemberPer.DataController.Values[i, 3] := '1'
      else
        cxgMemberPer.DataController.Values[i, 3] := '0';
    end;
    cxgMemberPer.DataController.EndUpdate;
  end else
	if rbPerL10.Checked then
  begin
    cxgMemberPer.DataController.BeginUpdate;
    for i := 0 to cxgMemberPer.DataController.RecordCount - 1 do
    begin
      sMenuCode := cxgMemberPer.DataController.Values[i, 6];

      if (sMenuCode = 'COM014' ) Or  //메신저[본사소속사용자공유]
         (sMenuCode = 'COM016' ) Or  //[기사관리]금액표시
         (sMenuCode = 'COM0130') Or  //통화관리화면권한
         (sMenuCode = 'COM0134') Or  //통화종료/전화종료건수보기권한
         (sMenuCode = 'COM0131') Or  //부재중전화관리화면권한
         (sMenuCode = 'COM0135') Or  //상담원단순공유권한(콜마너XE2)
         (sMenuCode = 'COM0136') Or  //상담원요금문의에대한답변권한(콜마너XE2)
         (sMenuCode = 'LFT01'  ) Or  //지사현황및이관받은지사리스트를본다.
         (sMenuCode = 'LFT02'  ) Or  //당일접속기사리스트를확인한다.
         (sMenuCode = 'LFT03'  ) Or  //지사의콜통계현황을조회한다.
         (sMenuCode = 'LFT04'  ) Or  //공유된콜리스트를확인한다.
         (sMenuCode = 'JON011' ) Or  //접수하기권한
         (sMenuCode = 'JON0122') Or  //접수창법인정보를수정할수없음
         (sMenuCode = 'JON012' ) Or  //자사콜+이관지사콜고객번호오픈
         (sMenuCode = 'JON014' ) Or  //접수현황엑셀다운로드
         (sMenuCode = 'JON015' ) Or  //콜카운트보기권한
         (sMenuCode = 'JON016' ) Or  //마우스오른쪽버튼메뉴권한
         (sMenuCode = 'JON017' ) Or  //SMS(팝업)전송권한
         (sMenuCode = 'JON018' ) Or  //하단메뉴캐시보기권한
         (sMenuCode = 'JON019' ) Or  //기사에송금권한
         (sMenuCode = 'JON0110') Or  //접수창에서고객삭제
         (sMenuCode = 'JON0114') Or  //문자배차권한제한
         (sMenuCode = 'JON0115') Or  //요금저장권한제한
         (sMenuCode = 'JON0117') Or  //접수창고객등급변경권한허용
         (sMenuCode = 'JON0118') Or  //접수현황고객전화수신거부등록권한허용
         (sMenuCode = 'JON0120') Or  //접수창고객합치기권한
         (sMenuCode = 'JON0121') Or  //간단(심플)메모수정권한
         (sMenuCode = 'JON0124') Or  //리콜(배차지연콜)즉시수행
         (sMenuCode = 'JON02'  ) Or  //당일수신받은전화번호목록을확인한다.
         (sMenuCode = 'JON03'  ) Or  //공지사항,업무게시판,자료실등등의정보를확인한다.
         (sMenuCode = 'WOR021' ) Or  //기사조회만가능
         (sMenuCode = 'WOR06'  ) Or  //기사의배차현황을볼수있다.
         (sMenuCode = 'SMS01'  ) Or  //단일SMS를발송한다.
         (sMenuCode = 'SET05'  ) Or  //CID설정정보를관리한다.
         (sMenuCode = 'ETC03'  ) Or  //관제지도를열람할수있다.
         (sMenuCode = 'HEL01'  ) then  //원격요청
        cxgMemberPer.DataController.Values[i, 3] := '1'
      else
        cxgMemberPer.DataController.Values[i, 3] := '0';
    end;
    cxgMemberPer.DataController.EndUpdate;
  end else
	if rbPerL40.Checked then
  begin
    cxgMemberPer.DataController.BeginUpdate;
    for i := 0 to cxgMemberPer.DataController.RecordCount - 1 do
    begin
      sMenuCode := cxgMemberPer.DataController.Values[i, 6];

      if (sMenuCode = 'COM010' ) Or //공통권한전체허용
         (sMenuCode = 'COM002' ) Or //엑셀다운로드허용(고객번호숨김)
         (sMenuCode = 'COM014' ) Or //메신저[본사소속사용자공유]
         (sMenuCode = 'COM0112') Or //메신저[상담원간메신저제한]
         (sMenuCode = 'COM0130') Or  //통화관리화면권한
         (sMenuCode = 'COM0134') Or  //통화종료/전화종료건수보기권한
         (sMenuCode = 'COM0131') Or  //부재중전화관리화면권한
         (sMenuCode = 'COM0132') Or  //메인하단메뉴>부정취소콜관리화면권한
         (sMenuCode = 'COM0135') Or  //상담원단순공유권한(콜마너XE2)
         (sMenuCode = 'COM0136') Or  //상담원요금문의에대한답변권한(콜마너XE2)
         (sMenuCode = 'LFT02'  ) Or  //당일접속기사리스트를확인한다.
         (sMenuCode = 'LFT05'  ) Or  //연합사리스트조회권한
         (Pos('USR', sMenuCode) > 0 ) Or // 직원관리메뉴
         (sMenuCode = 'JON02'  ) Or  //CID내역보기
         (sMenuCode = 'JON05'  ) Or  //로컬위치데이터저장
         (sMenuCode = 'JON010' ) Or  //접수권한전체허용
         (sMenuCode = 'JON0122') Or  //접수창법인정보를수정할수없음
         (sMenuCode = 'JON013' ) Or  //자사콜고객번호당일오픈후익일숨김
         (sMenuCode = 'JON0111') Or  //콜보기고객번호마지막2자리마킹
         (sMenuCode = 'JON0112') Or  //콜보기고객번호마지막2자리마킹(익일오더수정창전체번호오픈)
         (sMenuCode = 'JON0123') Or  //콜보기고객번호중간2자리(익일오더수정창전체번호오픈)
         (sMenuCode = 'JON0113') Or  //강제배차권한제한
         (sMenuCode = 'JON0114') Or  //문자배차권한제한
         (sMenuCode = 'JON0115') Or  //요금저장권한제한
         (sMenuCode = 'JON0116') Or  //접수현황조회건수제한(Max : 500)
         (sMenuCode = 'JON0119') Or  //기간검색불가
         (sMenuCode = 'WOR024' ) Or  //기사조회방법및결과를제한한다.
         (sMenuCode = 'CMP011' ) then  //본사수정
        cxgMemberPer.DataController.Values[i, 3] := '0'
      else
        cxgMemberPer.DataController.Values[i, 3] := '1';
    end;
    cxgMemberPer.DataController.EndUpdate;
  end else
  if ( rbMy1Per.Checked ) Or ( rbMy2Per.Checked ) then
  begin
    sl_MyPer := TStringList.Create;
    sl_MyPer.Delimiter     := '|';
    if rbMy1Per.Checked then sl_MyPer.DelimitedText := GS_EnvFile.ReadString('USER_PER', 'MyPer1' , '') else
    if rbMy2Per.Checked then sl_MyPer.DelimitedText := GS_EnvFile.ReadString('USER_PER', 'MyPer2' , '');
    cxgMemberPer.DataController.BeginUpdate;
    try
      for i := 0 to cxgMemberPer.DataController.RecordCount - 1 do
      begin
				if Pos('접수현황조회건수제한', cxgMemberPer.DataController.Values[i, 2]) > 0 then
				begin
          cxgMemberPer.DataController.Values[i, 5] := st_JONMAX + '(Max : '+sl_MyPer.Strings[0]+')';;
				end;

        sMenuCode := cxgMemberPer.DataController.Values[i, 6];
        for j := 1 to sl_MyPer.Count - 1 do
        begin
          if sMenuCode = sl_MyPer.Strings[j] then
          begin
            cxgMemberPer.DataController.Values[i, 3] := '1';
            Continue;
          end;
        end;
      end;
    finally
      cxgMemberPer.DataController.EndUpdate;
      FreeAndNil(sl_MyPer);
    end;
  end;
end;

procedure TFrm_USR.rdoUserSTTClick(Sender: TObject);
begin
  if rdoUserSTT.Checked then
  begin
    if rbCallSTT.Checked then	Search_Gubun := 0 else
    if rbCIDSTT.Checked  then Search_Gubun := 2;
    cxgUserStat.Columns[4].Visible := False;
	  cxgUserStat.DataController.SetRecordCount(0);
  end else
  if rdoUserSTT_Date.Checked then
  begin
    if rbCallSTT.Checked then	Search_Gubun := 1 else
    if rbCIDSTT.Checked  then Search_Gubun := 3;
  	cxgUserStat.Columns[4].Visible := True;
  end;

  if rbCallSTT.Checked then
  begin
    cxgUserStat.Columns[07].Visible := True;
    cxgUserStat.Columns[08].Visible := True;
    cxgUserStat.Columns[09].Visible := True;

    cxgUserStat.Columns[11].Visible := False;
    cxgUserStat.Columns[12].Visible := False;
    cxgUserStat.Columns[13].Visible := False;
    cxgUserStat.Columns[14].Visible := False;
  end else
  if rbCIDSTT.Checked then
  begin
    cxgUserStat.Columns[07].Visible := False;
    cxgUserStat.Columns[08].Visible := False;
    cxgUserStat.Columns[09].Visible := False;

    cxgUserStat.Columns[11].Visible := True;
    cxgUserStat.Columns[12].Visible := True;
    cxgUserStat.Columns[13].Visible := True;
    cxgUserStat.Columns[14].Visible := True;
  end;

	cxgUserStat.DataController.SetRecordCount(0);
end;

procedure TFrm_USR.rdoUserSTTTimeClick(Sender: TObject);
begin
	if TcxRadioButton(Sender).Tag = 0 then
	begin
		if cxrbHourTotal.Checked then
		begin
			cxGrid1A8.Visible := True;
			cxGrid2A8.Visible := False;
			cxGrid3A8.Visible := False;
			cxGrid4A8.Visible := False;
		end else
		if cxrbDetail.Checked then
		begin
			cxGrid1A8.Visible := False;
			cxGrid2A8.Visible := True;
			cxGrid3A8.Visible := False;
			cxGrid4A8.Visible := False;
		end;
	end else
	begin
		if cxrbHourTotal.Checked then
		begin
			cxGrid1A8.Visible := False;
			cxGrid2A8.Visible := False;
			cxGrid3A8.Visible := True;
			cxGrid4A8.Visible := False;
		end else
		if cxrbDetail.Checked then
		begin
			cxGrid1A8.Visible := False;
			cxGrid2A8.Visible := False;
			cxGrid3A8.Visible := False;
			cxGrid4A8.Visible := True;
		end;
	end;
end;

procedure TFrm_USR.proc_UserHourSearch;
var
  sWhere: string;
  ls_TxQry, ls_TxLoad, sFromDate, sEndDate: string; // XML File Load
  slReceive: TStringList;
	rv_str, ls_rxxml, sQueryTemp, sBrNo : string;
	ErrCode, i: integer;
begin
  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
	begin
		GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('직원별시간통계') then Exit;

  sWhere := '';
  if cxgUserStt.DataController.RecordCount = 0 then
  begin
    if GT_USERIF.LV = '60' then
    begin
      if GT_SEL_BRNO.GUBUN <> '1' then
      begin
				if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
				begin
					for i := 0 to scb_FamilyBrCode.Count -1 do
					begin
						if i = 0 then sBrNo := '''' + scb_FamilyBrCode[i] + '''' else
						sBrNo := sBrNo + ', ' + '''' + scb_FamilyBrCode[i] + '''';
					end;

					sWhere := ' WHERE BR_NO IN (' + sBrNo + ') ';
				end else
					sWhere := Format(' WHERE BR_NO IN (SELECT BR_NO FROM CDMS_BRANCH WHERE HD_NO = ''%s'' AND USE_YN = ''y'')', [GT_SEL_BRNO.HDNO]);
        cxHdNo.Text := GT_SEL_BRNO.HDNO;
        cxBrNo.Text := '';
      end else
      if GT_SEL_BRNO.GUBUN = '1' then
      begin
        sWhere := Format(' WHERE HD_NO = ''%s'' AND BR_NO = ''%s'' ',
          [GT_SEL_BRNO.HDNO, GT_SEL_BRNO.BrNo]);
        cxHdNo.Text := GT_SEL_BRNO.HDNO;
        cxBrNo.Text := GT_SEL_BRNO.BrNo;
      end;
    end else
    begin
      sWhere := Format(' WHERE HD_NO = ''%s'' AND BR_NO = ''%s'' ',
        [GT_SEL_BRNO.HDNO, GT_SEL_BRNO.BrNo]);
      cxHdNo.Text := GT_SEL_BRNO.HDNO;
      cxBrNo.Text := GT_SEL_BRNO.BrNo;
    end;

    if Trim(cxedHourId.Text) <> '' then
      sWhere := sWhere + ' AND MEM_ID LIKE ''%' + Trim(Param_Filtering(cxedHourId.Text)) + '%'' ';

    if cxDtStartA8.Enabled then
    begin
      sFromDate := FormatDateTime('yyyymmdd', cxDtStartA8.Date);
      sEndDate := FormatDateTime('yyyymmdd', cxDtEndA8.Date - 1);
      sWhere := sWhere +
        Format(' AND IN_DATE BETWEEN TO_DATE(''%s'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''%S'',''YYYYMMDDHH24MISS'') ', [sFromDate, sEndDate]);
    end;

    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_USER_HOUR_STAT_LIST, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sWhere]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', self.Caption + '12', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    screen.Cursor := crHourGlass;
    btnSearchA8.Enabled := False;
    slReceive := TStringList.Create;
    try
      frm_Main.proc_SocketWork(False);
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
      btnSearchA8.Enabled := True;
      screen.Cursor := crDefault;
      FreeAndNil(slReceive);
      frm_Main.proc_SocketWork(True);
      Frm_Flash.Hide;
    end;
  end;
end;

procedure TFrm_USR.cxgPer1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnSch.Caption := '검색';
	proc_Menu_Search;
  proc_User_Permission;

  rbPerClear.Checked := False;
  rbPerAll.Checked := False;
  rbPerNotAll.Checked := False;
  rbPerL10.Checked := False;
  rbPerL40.Checked := False;
  rbMy1Per.Checked := False;
  rbMy2Per.Checked := False;

  cxGrid1.SetFocus;
end;

procedure TFrm_USR.cxgPer1ColumnHeaderClick(Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_USR.cxgPer1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  try
    if (AViewInfo.Focused) Or (AViewInfo.Selected) then
    begin
      ACanvas.Font.Color := clWhite;
      ACanvas.Brush.Color := $00FF9933;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_USR.cxgPer1DataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxgPer1, AIndex, GS_SortNoChange);
end;

procedure TFrm_USR.cxgPer1StylesGetContentStyle( Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  var AStyle: TcxStyle);
var
  iRow, iStCd: Integer;
begin
  if (ARecord.Selected) or (Sender.DataController.RecordCount = 0) then	Exit;

  AStyle := cxStyle2;
  iRow := cxgPer1.DataController.GetRowInfo(ARecord.Index).RecordIndex;
  iStCd := cxgPer1.GetColumnByFieldName('아이디').Index;
  if cxgPer1.DataController.Values[iRow, iStCd] = null then Exit;
  if Pos('[M]', cxgPer1.DataController.Values[iRow, iStCd]) > 0 then
    AStyle.Color := $00D1E7E9
  else
    AStyle.Color := clWhite;
end;

procedure TFrm_USR.cxGridB1ViewCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  XmlData, Param, ErrMsg, sLevel: string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, ErrCode, iCnt, iRow, iLevel, iIndex: Integer;
begin
	proc_HD_Menu_Search;
  iRow := cxGridB1View.DataController.FocusedRecordIndex;
  if iRow = -1 then Exit;
  iLevel := cxGridB1View.GetColumnByFieldName('아이디').Index;
  sLevel := cxGridB1View.DataController.Values[iRow, iLevel];
  Param := sLevel;
	Screen.Cursor := crHourGlass;
  if not RequestBase(GetSel05('GET_FAMILY_PERMISSION_BRANCH', 'CAS.GET_FAMILY_PERMISSION_BRANCH', '10000', Param), XmlData, ErrCode, ErrMsg) then
  begin
		GMessagebox(Format('패밀리관리자 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
		Screen.Cursor := crDefault;
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
        iCnt := 0;
        cxGridLB1View.BeginUpdate;
        for I := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
          iIndex := cxGridLB1View.DataController.FindRecordIndexByText(0,4,ls_Rcrd[1],True,True,True);
          if iIndex >= 0 then
            cxGridLB1View.DataController.Values[iIndex, 2] := True
          else
            cxGridLB1View.DataController.Values[iIndex, 2] := False;
        end;
      finally
        cxGridLB1View.EndUpdate;
        ls_Rcrd.Free;
      end;
    end;
  finally
		xdom := Nil;
		Screen.Cursor := crDefault;
		Frm_Flash.Hide;
  end;
end;

procedure TFrm_USR.cxGridDBColumn1GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
var
  iMembers: Integer;
  Members: string;
begin
  iMembers  := cxViewAuthPC.GetColumnByFieldName('Members').Index;
  Members   := cxViewAuthPC.ViewData.Records[ACellViewInfo.GridRecord.index].Values[iMembers];
	AHintText := Members;
  AIsHintMultiLine := True;
end;

procedure TFrm_USR.cxGrid_Mulit_ManagerListCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var iRow : integer;
begin
	iRow := cxGrid_Mulit_ManagerList.DataController.FocusedRecordIndex;
	cxGrid_Mulit_ManagerList.DataController.DeleteRecord(iRow);
end;

procedure TFrm_USR.cxGroupBox14MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
	PostMessage(pnl_Mulit_perSend.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_USR.cxgUserHourSttCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var iRow : integer;
	sID : string;
begin
	iRow := cxgUserHourStt.DataController.FocusedRecordIndex;
	sID := cxgUserHourStt.DataController.Values[iRow, 3];
	cxedHourId.Text := sID;
	rdoUserSTTTime_Date.Checked := True;
	btnSearchA8.Click;
end;

procedure TFrm_USR.proc_HD_Menu_Search;
var i, iCnt, iFirst : Integer;
	b_hd, b_br : string;
begin
	cxGridLB1View.DataController.SetRecordCount(0);
  cxGridLB1View.BeginUpdate;
	i := 0; iFirst := 0;
  b_hd := ''; b_br := '';
  while true do
	begin
		if GSL_HD_LIST[i, 0] = '' then break;
		if (b_hd = GSL_HD_LIST[i, 21]) and (b_br = GSL_HD_LIST[i, 0]) then
		begin
			if iFirst > 1 then
			begin
				inc(i);
				Continue;
			end;
		end;

		if b_hd <> GSL_HD_LIST[i, 21] then
		begin
			iFirst := 0;
		end;

		iCnt := cxGridLB1View.DataController.AppendRecord;
		cxGridLB1View.DataController.Values[iCnt, 0] := GSL_HD_LIST[i, 21];
		cxGridLB1View.DataController.Values[iCnt, 1] := GSL_HD_LIST[i, 5];
		cxGridLB1View.DataController.Values[iCnt, 2] := False;

		b_hd := GSL_HD_LIST[i, 21];
		b_br := GSL_HD_LIST[i, 0];

		if iFirst = 0 then
		begin
			cxGridLB1View.DataController.Values[iCnt, 3] := '본사전체';
			cxGridLB1View.DataController.Values[iCnt, 4] := '';
		end	else
		begin
			cxGridLB1View.DataController.Values[iCnt, 3] := GSL_HD_LIST[i, 1];
			cxGridLB1View.DataController.Values[iCnt, 4] := GSL_HD_LIST[i, 0];
			inc(i);
		end;
		inc(iFirst);
	end;
  cxGridLB1View.EndUpdate;
end;

procedure TFrm_USR.cxgUserSttCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var iRow : integer;
	sID : string;
begin
	iRow := cxgUserStt.DataController.FocusedRecordIndex;
	sID := cxgUserStt.DataController.Values[iRow, 3];
	cxedHourId.Text := sID;
	rdoUserSTTTime_Date.Checked := True;
	btnSearchA8.Click;
end;

procedure TFrm_USR.cxMngUserListCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iRow: Integer;
begin
	iRow := cxMngUserList.DataController.FocusedRecordIndex;
  if TCK_USER_PER.USR_MngModify = '1' then
  begin
    if iRow < 0 then
      exit;
		proc_Manage_Select(iRow);
  end;
end;

procedure TFrm_USR.cxMngUserListColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_USR.cxMngUserListDataControllerSortingChanged(Sender: TObject);
begin
	gfSetIndexNo(cxMngUserList, AIndex, GS_SortNoChange);
end;

procedure TFrm_USR.cxMngUserListStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  var AStyle: TcxStyle);
var
  iRow, iStCd: Integer;
  sId: string;
begin
  if (ARecord.Selected) or (Sender.DataController.RecordCount = 0) then
    exit;
  AStyle := cxStyle1;
  iRow := cxMngUserList.DataController.GetRowInfo(ARecord.Index).RecordIndex;
  iStCd := cxMngUserList.GetColumnByFieldName('아이디').Index;
  if cxMngUserList.DataController.Values[iRow, iStCd] = null then
    exit;
  sId := cxMngUserList.DataController.Values[iRow, iStCd];
  if Pos('[M]', sId) > 0 then
    AStyle.Color := $00FFEEDD
  else
    AStyle.Color := clWhite;
end;

procedure TFrm_USR.cxPageControl1Change(Sender: TObject);
Var iTag : Integer;
begin
  Case cxPageControl1.ActivePageIndex of
    9 : proc_FamilyPermission;
  End;

  iTag := cxPageControl1.Pages[cxPageControl1.ActivePageIndex].Tag;
  if Assigned(Frm_JON51) then
      if TCK_USER_PER.BTM_MENUSCH = '1' then Frm_JON51.Menu_Use_Mark('ADD', iTag);
end;

procedure TFrm_USR.cxRB1A4Click(Sender: TObject);
begin
  GS_EnvFile.WriteString('USR', 'IDSEARCH', IntToStr(TcxRadioButton(Sender).Tag));

  if cxRB1A4.Checked then
  begin
    cxDtStartA4.Enabled := False;
    cxDtEndA4.Enabled := False;
    btnDateA4.Enabled := False;
  end else
  if cxRB2A4.Checked then
  begin
    cxDtStartA4.Enabled := True;
    cxDtEndA4.Enabled := True;
    btnDateA4.Enabled := True;
  end;
end;

procedure TFrm_USR.cxRB1A5Click(Sender: TObject);
begin
  GS_EnvFile.WriteString('USR', 'PCSEARCH', IntToStr(TcxRadioButton(Sender).Tag));

  if cxRB1A5.Checked then
  begin
    cxDtStartA5.Enabled := False;
    cxDtEndA5.Enabled := False;
    btnDateA5.Enabled := False;
  end else
  if cxRB2A5.Checked then
  begin
    cxDtStartA5.Enabled := True;
    cxDtEndA5.Enabled := True;
    btnDateA5.Enabled := True;
  end;
end;

procedure TFrm_USR.cxrbHourTotalClick(Sender: TObject);
begin
	if TcxRadioButton(Sender).Tag = 0 then
	begin
		if rdoUserSTTTime.Checked then
		begin
			cxGrid1A8.Visible := True;
			cxGrid2A8.Visible := False;
			cxGrid3A8.Visible := False;
			cxGrid4A8.Visible := False;
		end else
		if rdoUserSTTTime_Date.Checked then
		begin
			cxGrid1A8.Visible := False;
			cxGrid2A8.Visible := False;
			cxGrid3A8.Visible := True;
			cxGrid4A8.Visible := False;
		end;
	end else
	begin
		if rdoUserSTTTime.Checked then
		begin
			cxGrid1A8.Visible := False;
			cxGrid2A8.Visible := True;
			cxGrid3A8.Visible := False;
			cxGrid4A8.Visible := False;
		end else
		if rdoUserSTTTime_Date.Checked then
		begin
			cxGrid1A8.Visible := False;
			cxGrid2A8.Visible := False;
			cxGrid3A8.Visible := False;
			cxGrid4A8.Visible := True;
		end;
	end;
end;

procedure TFrm_USR.cxViewAuthPCStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  iRow, iStCd: Integer;
  AView: TcxGridDBTableView;
begin
  AView := Sender as TcxGridDBTableView;
  if (ARecord.Selected) or (Sender.DataController.RecordCount = 0) then Exit;
  try
    iRow  := AView.DataController.GetRowInfo(ARecord.Index).RecordIndex;
    iStCd := AView.GetColumnByFieldName('남은일자').Index;
    if AView.DataController.Values[iRow, iStCd] = null then Exit;

    AStyle := cxStyle5;
    if Pos('-', AView.DataController.Values[iRow, iStCd]) > 0 then
			AStyle.TextColor := clRed
    else
      AStyle.TextColor := clBlack;
	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_USR.cxViewAuthUserCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
	NStatus.Click;
end;

procedure TFrm_USR.cxViewAuthUserStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  iRow, iStCd: Integer;
  AView: TcxGridDBTableView;
begin
  AView := Sender as TcxGridDBTableView;
  if (ARecord.Selected) or (Sender.DataController.RecordCount = 0) then Exit;
  try
    iRow  := AView.DataController.GetRowInfo(ARecord.Index).RecordIndex;
    iStCd := AView.GetColumnByFieldName('남은일자').Index;
    if AView.DataController.Values[iRow, iStCd] = null then Exit;

    AStyle := cxStyle5;
    if Pos('-', AView.DataController.Values[iRow, iStCd]) > 0 then
			AStyle.TextColor := clRed
    else
      AStyle.TextColor := clBlack;
	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_USR.cxgMemberPerColumn2GetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
	var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
begin
  if cxgMemberPer.DataController.Values[ARecord.RecordIndex, 4] <> '' then
    AHintText := cxgMemberPer.DataController.Values[ARecord.RecordIndex, 4];
end;

procedure TFrm_USR.cxgMemberPerColumn4PropertiesEditValueChanged(
  Sender: TObject);
var
  iRow, i: Integer;
  sMenuCode: string;
begin
	iRow := cxgMemberPer.DataController.FocusedRecordIndex;
  if iRow = -1 then Exit;
  sMenuCode := cxgMemberPer.DataController.Values[iRow, 6];
	// 6번째 자리가 '0' 은 그 메뉴에 전체권한을 줘야함
	if Copy(sMenuCode, 6, 1) = '0' then
		sMenuCode := Copy(sMenuCode, 1, 5);

	if Length(sMenuCode) = 5 then
  begin
    for i := iRow to cxgMemberPer.DataController.RecordCount - 1 do
    begin
      if sMenuCode = 'COM01' then   // COM00때문에 분리
      begin
        if ( Pos(sMenuCode, cxgMemberPer.DataController.Values[i, 6]) > 0 ) Or
           ( Pos('COM001' , cxgMemberPer.DataController.Values[i, 6]) > 0 ) then
          cxgMemberPer.DataController.Values[i, 3] := cxgMemberPer.DataController.Values[iRow, 3]
		  	else
        if ( Pos('COM002' , cxgMemberPer.DataController.Values[i, 6]) > 0 ) then
          cxgMemberPer.DataController.Values[i, 3] := '0'
        else
			  	Break;
      end else
      begin
        if Pos(sMenuCode, cxgMemberPer.DataController.Values[i, 6]) > 0 then
          cxgMemberPer.DataController.Values[i, 3] := cxgMemberPer.DataController.Values[iRow, 3]
		  	else
			  	Break;
      end;
		end;

    if (sMenuCode = 'COM01') then
    begin
			i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM014', True, True, True);
			cxgMemberPer.DataController.Values[i, 3] := '0';

			i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM0112', True, True, True);
			cxgMemberPer.DataController.Values[i, 3] := '0';
		end else
    if (sMenuCode = 'JON01') then
    begin
      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'JON0122', True, True, True); //접수창법인정보를수정할수없음
			cxgMemberPer.DataController.Values[i, 3] := '0';
      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'JON013', True, True, True);  //자사콜고객번호당일오픈후익일숨김
			cxgMemberPer.DataController.Values[i, 3] := '0';
      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'JON0111', True, True, True); //콜보기고객번호마지막2자리마킹
			cxgMemberPer.DataController.Values[i, 3] := '0';
      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'JON0112', True, True, True); //콜보기고객번호마지막2자리마킹(익일오더수정창전체번호오픈)
			cxgMemberPer.DataController.Values[i, 3] := '0';
      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'JON0123', True, True, True); //콜보기고객번호중간2자리(익일오더수정창전체번호오픈)
			cxgMemberPer.DataController.Values[i, 3] := '0';
      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'JON0113', True, True, True); //강제배차권한제한
			cxgMemberPer.DataController.Values[i, 3] := '0';
      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'JON0114', True, True, True); //문자배차권한제한
			cxgMemberPer.DataController.Values[i, 3] := '0';
      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'JON0115', True, True, True); //요금저장권한제한
			cxgMemberPer.DataController.Values[i, 3] := '0';
      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'JON0116', True, True, True); //접수현황조회건수제한(Max : 500)
			cxgMemberPer.DataController.Values[i, 3] := '0';
      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'JON0119', True, True, True); //기간검색불가
			cxgMemberPer.DataController.Values[i, 3] := '0';
    end;
  end else
  begin
    // 하드코딩해야할 항목들(ex : 메신져 허용범위(COM01 2(전체), 3(지역), 4(본사)), 엑셀다운로드 권한, 고객전화번호 오픈범위(JON01 2(자사콜오픈), 3(당일오픈)..)
    if (sMenuCode = 'COM012') and (cxgMemberPer.DataController.Values[iRow, 3] = '1') then
    begin
      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM014', True, True, True);
      cxgMemberPer.DataController.Values[i, 3] := '0';
    end else
    if (sMenuCode = 'COM014') and (cxgMemberPer.DataController.Values[iRow, 3] = '1') then
    begin
      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM012', True, True, True);
      cxgMemberPer.DataController.Values[i, 3] := '0';
    end else
    // 엑셀다운로드 허용, 엑셀다운로드(고객번호 숨김) 허용 둘중 하나만 선택
    if ((sMenuCode = 'COM001') or (sMenuCode = 'COM002')) and (cxgMemberPer.DataController.Values[iRow, 3] = '1') then
    begin
      if sMenuCode = 'COM001' then
        i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM002', True, True, True)
//      else if sMenuCode = 'COM002' then
      else
        i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM001', True, True, True);

      cxgMemberPer.DataController.Values[i, 3] := '0';

      // 고객엑셀, 접수엑셀 모두 해제 시 알림 메시지 표시
      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM0110', True, True, True);
      if cxgMemberPer.DataController.Values[I, 3] = '1' then Exit;

      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'JON014', True, True, True);
      if cxgMemberPer.DataController.Values[I, 3] = '1' then Exit;

      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM0122', True, True, True);
      if cxgMemberPer.DataController.Values[I, 3] = '1' then Exit;

      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM0124', True, True, True);
      if cxgMemberPer.DataController.Values[I, 3] = '1' then Exit;

      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM0125', True, True, True);
      if cxgMemberPer.DataController.Values[I, 3] = '1' then Exit;

      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM0126', True, True, True);
      if cxgMemberPer.DataController.Values[I, 3] = '1' then Exit;

      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM0127', True, True, True);
      if cxgMemberPer.DataController.Values[I, 3] = '1' then Exit;

      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM0128', True, True, True);
      if cxgMemberPer.DataController.Values[I, 3] = '1' then Exit;

      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM0129', True, True, True);
      if cxgMemberPer.DataController.Values[I, 3] = '1' then Exit;

      GMessagebox('''고객창에서엑셀다운로드'', ''접수현황엑셀다운로드'', ''엑셀다운로드[기사메뉴]'', ''엑셀다운로드[정산메뉴]'', ' +  #13#10
        + '''엑셀다운로드[SMS메뉴]'', ''엑셀다운로드[직원메뉴]'', ''엑셀다운로드[회사메뉴]'', ''엑셀다운로드[통계메뉴]'', ' + #13#10
        + '''엑셀다운로드[설정메뉴]'' 가 모두 권한해제 되어있습니다.' + #13#10
        + '해당 권한을 체크하여야 실제 엑셀 다운로드가 가능합니다.', CDMSI);
    end
    // 엑셀다운로드, 고객번호 숨김 모두 해제 시 고객엑셀(COM0110), 접수엑셀 체크 해제(JON014)
    else if ((sMenuCode = 'COM001') or (sMenuCode = 'COM002')) and (cxgMemberPer.DataController.Values[iRow, 3] = '0') then
    begin
      if sMenuCode = 'COM001' then
        i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM002', True, True, True)
      else if sMenuCode = 'COM002' then
        i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM001', True, True, True);

      if cxgMemberPer.DataController.Values[i, 3] = '0' then
      begin
        if MessageDlg('엑셀모든권한을 해제하시겠습니까?', mtConfirmation,[mbYes,mbNo],0)=idno then Exit;

        // 고객엑셀 해제
        i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM0110', True, True, True);
        cxgMemberPer.DataController.Values[i, 3] := '0';
        // 접수엑셀 해제
        i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'JON014', True, True, True);
        cxgMemberPer.DataController.Values[i, 3] := '0';
        // 엑셀[기사메뉴] 해제
        i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM0122', True, True, True);
        cxgMemberPer.DataController.Values[i, 3] := '0';
        // 엑셀[정산메뉴] 해제
        i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM0124', True, True, True);
        cxgMemberPer.DataController.Values[i, 3] := '0';
        // 엑셀[SMS메뉴] 해제
        i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM0125', True, True, True);
        cxgMemberPer.DataController.Values[i, 3] := '0';
        // 엑셀[사용자메뉴] 해제
        i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM0126', True, True, True);
        cxgMemberPer.DataController.Values[i, 3] := '0';
        // 엑셀[회사메뉴] 해제
        i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM0127', True, True, True);
        cxgMemberPer.DataController.Values[i, 3] := '0';
        // 엑셀[통계메뉴] 해제
        i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM0128', True, True, True);
        cxgMemberPer.DataController.Values[i, 3] := '0';
        // 엑셀[설정메뉴] 해제
        i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM0129', True, True, True);
        cxgMemberPer.DataController.Values[i, 3] := '0';
      end;
    end else
    if (sMenuCode = 'JON012') and (cxgMemberPer.DataController.Values[iRow, 3] = '1') then
    begin
      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'JON013', True, True, True);
      cxgMemberPer.DataController.Values[i, 3] := '0';
    end else
    if (sMenuCode = 'JON013') and (cxgMemberPer.DataController.Values[iRow, 3] = '1') then
    begin
      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'JON012', True, True, True);
      cxgMemberPer.DataController.Values[i, 3] := '0';
    end else
    if (sMenuCode = 'USR072') and (cxgMemberPer.DataController.Values[iRow, 3] = '1') then
    begin
      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'USR071', True, True, True);
      cxgMemberPer.DataController.Values[i, 3] := '1';
    end else
    if (sMenuCode = 'USR082') and (cxgMemberPer.DataController.Values[iRow, 3] = '1') then
    begin
      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'USR081', True, True, True);
      cxgMemberPer.DataController.Values[i, 3] := '1';
    end else
    if (sMenuCode = 'JON0111') and (cxgMemberPer.DataController.Values[iRow, 3] = '1') then
    begin
      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'JON0112', True, True, True);
      cxgMemberPer.DataController.Values[i, 3] := '0';
      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'JON0123', True, True, True);
      cxgMemberPer.DataController.Values[i, 3] := '0';
    end else
    if (sMenuCode = 'JON0112') and (cxgMemberPer.DataController.Values[iRow, 3] = '1') then
    begin
      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'JON0111', True, True, True);
      cxgMemberPer.DataController.Values[i, 3] := '0';
    end else
    if (sMenuCode = 'JON0123') and (cxgMemberPer.DataController.Values[iRow, 3] = '1') then
    begin
      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'JON0111', True, True, True);
      cxgMemberPer.DataController.Values[i, 3] := '0';
    end else
    if ( (sMenuCode = 'COM0122') and (cxgMemberPer.DataController.Values[iRow, 3] = '1') ) or
       ( (sMenuCode = 'COM0124') and (cxgMemberPer.DataController.Values[iRow, 3] = '1') ) or
       ( (sMenuCode = 'COM0125') and (cxgMemberPer.DataController.Values[iRow, 3] = '1') ) or
       ( (sMenuCode = 'COM0126') and (cxgMemberPer.DataController.Values[iRow, 3] = '1') ) or
       ( (sMenuCode = 'COM0127') and (cxgMemberPer.DataController.Values[iRow, 3] = '1') ) or
       ( (sMenuCode = 'COM0128') and (cxgMemberPer.DataController.Values[iRow, 3] = '1') ) or
       ( (sMenuCode = 'COM0129') and (cxgMemberPer.DataController.Values[iRow, 3] = '1') ) then
    begin
      // 고객엑셀, 접수엑셀 모두 해제 시 알림 메시지 표시
      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM001', True, True, True);
      if cxgMemberPer.DataController.Values[I, 3] = '1' then Exit;

      i := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM002', True, True, True);
      if cxgMemberPer.DataController.Values[I, 3] = '1' then Exit;

      cxgMemberPer.DataController.Values[i, 3] := '1';
    end;
  end;
end;

procedure TFrm_USR.cxgMemberPerCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  try
    if (AViewInfo.Focused) And (( AViewInfo.Item.Index = 2 ) Or (AViewInfo.Item.Index = 5)) then
    begin
      ACanvas.Font.Color := clWhite;
      ACanvas.Brush.Color := $00FF9933;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_USR.cxgMemberPerCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
{	if (Pos('] 회사', Trim(AViewInfo.GridRecord.Values[0])) > 0) or
		 (Pos('] 통계', Trim(AViewInfo.GridRecord.Values[0])) > 0) or
		 (Pos('] 설정', Trim(AViewInfo.GridRecord.Values[0])) > 0) then
}		ACanvas.FillRect(AViewInfo.Bounds, clSkyBlue);

	ACanvas.DrawTexT(AViewInfo.Text, AViewInfo.TextBounds, 0, True);
end;

procedure TFrm_USR.btnAuthPCAddClick(Sender: TObject);
var
  I, iPCSeq, iComputerName, Cnt, FailedCnt: Integer;
  Msg, PcSeq, AddDay, FailedDesc: string;
  ComputerName: string;
begin
	if cxViewAuthPC.DataController.GetSelectedCount < 1 then
	begin
    GMessagebox('[인증연장] PC를 한 건 이상 선택하세요.', CDMSI);
    Exit;
  end;

  Cnt     := cxViewAuthPC.DataController.GetSelectedCount;
	AddDay  := cbbAuthPCAddDay.Text;

  Msg := Format('[%d]개의 PC의 인증기간을 [%s] 연장하시겠습니까?'#13#10 +
          '(금일 기준으로 위의 기간이 연장됩니다.)', [Cnt, AddDay]);
  if Application.MessageBox(PChar(Msg), CDMSI, MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;

  AddDay      := Copy(AddDay, 1, Pos('일', AddDay)-1);
  try
    iPCSeq        := cxViewAuthPC.GetColumnByFieldName('PCSeq').Index;
    iComputerName := cxViewAuthPC.GetColumnByFieldName('컴퓨터명').Index;

    FailedDesc := '';
    FailedCnt := 0;
    for I := 0 to cxViewAuthPC.ViewData.RecordCount - 1 do
    begin
      if not cxViewAuthPC.ViewData.Rows[I].Selected then Continue;

      PcSeq         := cxViewAuthPC.ViewData.Rows[I].Values[iPCSeq];
      ComputerName  := cxViewAuthPC.DataController.Values[I, iComputerName];

			if not ExpireAuthManage('1', cxHdNo.Text, cxBrNo.Text, '', PcSeq, AddDay, GT_USERIF.ID) then
      begin
        Inc(FailedCnt);
        if FailedCnt mod 5 = 1 then
          FailedDesc := FailedDesc + #13#10 + ComputerName
        else
          FailedDesc := FailedDesc + ' / ' + ComputerName;
      end;
    end;

    if FailedCnt > 0 then
    begin
      GMessagebox(Format('인증 완료되었습니다.'#13#10'(실패건수: %d)'#13#10'%s', [FailedCnt, FailedDesc]), CDMSI);
    end else
    begin
      GMessagebox(Format('인증 완료되었습니다.', []), CDMSI);
    end;
    btnSearchA5.Click;
  except on E: Exception do
    ShowMessage(Format('PC인증연장 중 오류가 발생했습니다.'+#13#10+'(Error: %s)', [E.Message]));
  end;
end;

procedure TFrm_USR.btnAuthPCCloseClick(Sender: TObject);
var
	I, iPCSeq, iComputerName, istat, Cnt, FailedCnt: Integer;
  Msg, PcSeq, AddDay, FailedDesc: string;
  ComputerName: string;
begin
	if cxViewAuthPC.DataController.GetSelectedCount < 1 then
	begin
		GMessagebox('[인증만료] PC를 한 건 이상 선택하세요.', CDMSI);
    Exit;
  end;

  Cnt     := cxViewAuthPC.DataController.GetSelectedCount;
	AddDay  := cbbAuthPCAddDay.Text;

	Msg := Format('[%d]개의 PC의 인증기간을 만료하시겠습니까?'#13#10 +
					'(금일 기준으로 위의 기간이 만료됩니다.)', [Cnt]);
  if Application.MessageBox(PChar(Msg), CDMSI, MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;

	AddDay      := '-1';
	try
		iPCSeq        := cxViewAuthPC.GetColumnByFieldName('PCSeq').Index;
		iComputerName := cxViewAuthPC.GetColumnByFieldName('컴퓨터명').Index;
		istat         := cxViewAuthPC.GetColumnByFieldName('인증상태').Index;

    FailedDesc := '';
    FailedCnt := 0;
    for I := 0 to cxViewAuthPC.ViewData.RecordCount - 1 do
    begin
			if not cxViewAuthPC.ViewData.Rows[I].Selected then Continue;
			if cxViewAuthPC.DataController.Values[i, istat] <> '정상' then Continue;

			PcSeq         := cxViewAuthPC.ViewData.Rows[I].Values[iPCSeq];
			ComputerName  := cxViewAuthPC.DataController.Values[I, iComputerName];

			if not ExpireAuthManage('1', cxHdNo.Text, cxBrNo.Text, '', PcSeq, AddDay, GT_USERIF.ID) then
			begin
				Inc(FailedCnt);
        if FailedCnt mod 5 = 1 then
          FailedDesc := FailedDesc + #13#10 + ComputerName
        else
          FailedDesc := FailedDesc + ' / ' + ComputerName;
      end;
    end;

    if FailedCnt > 0 then
    begin
			GMessagebox(Format('인증만료처리를 진행하였습니다.'#13#10'(실패건수: %d)'#13#10'%s', [FailedCnt, FailedDesc]), CDMSI);
		end	else
    begin
			GMessagebox(Format('인증만료가 완료되었습니다.', []), CDMSI);
    end;
		btnSearchA5.Click;
	except on E: Exception do
		ShowMessage(Format('PC인증만료 중 오류가 발생했습니다.'+#13#10+'(Error: %s)', [E.Message]));
	end;
end;

procedure TFrm_USR.btnAuthPCDelClick(Sender: TObject);
var
	I, iPCSeq, Cnt, iComputerName, FailedCnt: Integer;
  PcSeq: string;
  ComputerName, Msg, FailedDesc: string;
begin
	if cxViewAuthPC.DataController.GetSelectedCount < 1 then
  begin
    GMessagebox('[인증삭제] PC를 한 건 이상 선택하세요.', CDMSI);
    Exit;
  end;

  Cnt := cxViewAuthPC.DataController.GetSelectedCount;
  Msg := Format('[%d]건의 PC의 인증내역을 삭제하시겠습니까?'#13#10 +
          '(해당 PC를 삭제하시면 PC인증으로 로그인을 하는 상담원의 로그인이 되지 않을 수 있습니다.)', [Cnt]);
  if Application.MessageBox(PChar(Msg), CDMSI, MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;

  try
    iPCSeq        := cxViewAuthPC.GetColumnByFieldName('PCSeq').Index;
    iComputerName := cxViewAuthPC.GetColumnByFieldName('컴퓨터명').Index;

    FailedDesc := '';
    FailedCnt := 0;
    for I := 0 to cxViewAuthPC.ViewData.RecordCount - 1 do
    begin
      if not cxViewAuthPC.ViewData.Rows[I].Selected then Continue;

      PcSeq         := cxViewAuthPC.ViewData.Rows[I].Values[iPCSeq];
      ComputerName  := cxViewAuthPC.DataController.Values[I, iComputerName];

      if not DeleteAuthManage('1', cxHdNo.Text, cxBrNo.Text, '', PcSeq, GT_USERIF.ID) then
      begin
        Inc(FailedCnt);
        if FailedCnt mod 5 = 1 then
          FailedDesc := FailedDesc + #13#10 + Format('%s', [ComputerName])
        else
          FailedDesc := FailedDesc + ' / ' + Format('%s', [ComputerName]);
      end;
    end;

    if FailedCnt > 0 then
    begin
      GMessagebox(Format('PC인증 삭제하였습니다.'#13#10'(실패건수: %d)'#13#10'%s', [FailedCnt, FailedDesc]), CDMSI);
    end else
    begin
      GMessagebox(Format('PC인증 삭제하였습니다.', []), CDMSI);
    end;

    btnSearchA5.Click;
  except on E: Exception do
    ShowMessage(Format('PC인증삭제 중 오류가 발생했습니다.'+#13#10+'(Error: %s)', [E.Message]));
  end;
end;

procedure TFrm_USR.btnAuthPCSetIDClick(Sender: TObject);
var
  I, iPCSeq, iComputerName, Cnt, FailedCnt: Integer;
  PcSeq, Msg, FailedDesc: string;
  ComputerName: string;
begin
	if cxViewAuthPC.DataController.GetSelectedCount < 1 then
  begin
    GMessagebox('[PC인증] PC를 한 건 이상 선택하세요.', CDMSI);
    Exit;
  end;

  Cnt := cxViewAuthPC.DataController.GetSelectedCount;
  Msg := Format('[%d]건을 ID인증으로 변경하시겠습니까?', [Cnt]);
  if Application.MessageBox(PChar(Msg), CDMSI, MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;

  try
    iPCSeq        := cxViewAuthPC.GetColumnByFieldName('PCSeq').Index;
    iComputerName := cxViewAuthPC.GetColumnByFieldName('컴퓨터명').Index;

    FailedDesc := '';
    FailedCnt := 0;
    for I := 0 to cxViewAuthPC.ViewData.RecordCount - 1 do
    begin
      if not cxViewAuthPC.ViewData.Rows[I].Selected then Continue;

      PcSeq         := cxViewAuthPC.ViewData.Rows[I].Values[iPCSeq];
      ComputerName  := cxViewAuthPC.DataController.Values[I, iComputerName];

			if not UpdateAuthManage('0', cxHdNo.Text, cxBrNo.Text, PcSeq, GT_USERIF.ID) then
			begin
        Inc(FailedCnt);
        if FailedCnt mod 5 = 1 then
          FailedDesc := FailedDesc + #13#10 + Format('%s', [ComputerName])
        else
          FailedDesc := FailedDesc + ' / ' + Format('%s', [ComputerName]);
      end;
    end;

    if FailedCnt > 0 then
    begin
      GMessagebox(Format('ID인증으로 변경하였습니다.'#13#10'(실패건수: %d)'#13#10'%s', [FailedCnt, FailedDesc]), CDMSI);
    end else
    begin
      GMessagebox(Format('ID인증으로 변경하였습니다.', []), CDMSI);
    end;

    btnSearchA5.Click;
  except on E: Exception do
    ShowMessage(Format('ID인증 변경 중 오류가 발생했습니다.'+#13#10+'(Error: %s)', [E.Message]));
  end;
end;

procedure TFrm_USR.btnAuthPCSetPCClick(Sender: TObject);
var
  I, iPCSeq, iComputerName, Cnt, FailedCnt: Integer;
  PcSeq, Msg, FailedDesc: string;
  ComputerName: string;
begin
	if cxViewAuthPC.DataController.GetSelectedCount < 1 then
  begin
    GMessagebox('[PC인증] PC를 한 건 이상 선택하세요.', CDMSW);
    Exit;
  end;

  Cnt := cxViewAuthPC.DataController.GetSelectedCount;

  Msg := Format('[%d]건을 PC인증으로 변경하시겠습니까?', [Cnt]);
  if Application.MessageBox(PChar(Msg), CDMSI, MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;

  try
    iPCSeq        := cxViewAuthPC.GetColumnByFieldName('PCSeq').Index;
    iComputerName := cxViewAuthPC.GetColumnByFieldName('컴퓨터명').Index;

    FailedDesc := '';
    FailedCnt := 0;
    for I := 0 to cxViewAuthPC.ViewData.RecordCount - 1 do
    begin
      if not cxViewAuthPC.ViewData.Rows[I].Selected then Continue;

      PcSeq         := cxViewAuthPC.ViewData.Rows[I].Values[iPCSeq];
      ComputerName  := cxViewAuthPC.DataController.Values[I, iComputerName];

			if not UpdateAuthManage('1', cxHdNo.Text, cxBrNo.Text, PcSeq, GT_USERIF.ID) then
      begin
				Inc(FailedCnt);
        if FailedCnt mod 5 = 1 then
          FailedDesc := FailedDesc + #13#10 + Format('%s', [ComputerName])
        else
          FailedDesc := FailedDesc + ' / ' + Format('%s', [ComputerName]);
      end;
    end;

    if FailedCnt > 0 then
    begin
      GMessagebox(Format('PC인증으로 변경하였습니다.'#13#10'(실패건수: %d)'#13#10'%s', [FailedCnt, FailedDesc]), CDMSI);
    end else
    begin
      GMessagebox(Format('PC인증으로 변경하였습니다.', []), CDMSI);
    end;

    btnSearchA5.Click;
  except on E: Exception do
    ShowMessage(Format('PC인증 변경 중 오류가 발생했습니다.'+#13#10+'(Error: %s)', [E.Message]));
  end;
end;

procedure TFrm_USR.btnAuthUserAddClick(Sender: TObject);
var
  I, iMemID, iPCSeq, iComputerName, Cnt, FailedCnt: Integer;
  Msg, MemID, PcSeq, ComputerName, AddDay, FailedDesc: string;
begin
	if cxViewAuthUser.DataController.GetSelectedCount < 1 then
  begin
    GMessagebox('[인증연장] 직원을 한 건 이상 선택하세요.', CDMSI);
    Exit;
  end;

  Cnt     := cxViewAuthUser.DataController.GetSelectedCount;
	AddDay  := cbbAuthUserAddDay.Text;

  Msg := Format('[%d]명 직원의 인증기간을 [%s] 연장하시겠습니까?'#13#10 +
					'(금일 기준으로 위의 기간이 연장됩니다.)', [Cnt, AddDay]);
  if Application.MessageBox(PChar(Msg), CDMSI, MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;

  AddDay := Copy(AddDay, 1, Pos('일', AddDay)-1);
  try
    iPCSeq        := cxViewAuthUser.GetColumnByFieldName('PCSeq').Index;
		iMemID        := cxViewAuthUser.GetColumnByFieldName('인증ID').Index;
		iComputerName := cxViewAuthUser.GetColumnByFieldName('컴퓨터명').Index;

		FailedDesc := '';
    FailedCnt := 0;
    for I := 0 to cxViewAuthUser.ViewData.RecordCount - 1 do
    begin
      if not cxViewAuthUser.ViewData.Rows[I].Selected then Continue;

      PcSeq         := cxViewAuthUser.ViewData.Rows[I].Values[iPCSeq];
      MemID         := cxViewAuthUser.ViewData.Rows[I].Values[iMemID];
      ComputerName  := cxViewAuthUser.DataController.Values[I, iComputerName];

			if not ExpireAuthManage('0', cxHdNo.Text, cxBrNo.Text, MemID, PcSeq, AddDay, GT_USERIF.ID) then
      begin
				Inc(FailedCnt);
        if FailedCnt mod 5 = 1 then
          FailedDesc := FailedDesc + #13#10 + Format('%s(%s)', [MemID, ComputerName])
        else
					FailedDesc := FailedDesc + ' / ' + Format('%s(%s)', [MemID, ComputerName]);
      end;
    end;

    if FailedCnt > 0 then
    begin
      GMessagebox(Format('직원 인증하였습니다.'#13#10'(실패건수: %d)'#13#10'%s', [FailedCnt, FailedDesc]), CDMSI);
    end else
    begin
      GMessagebox(Format('직원 인증하였습니다.', []), CDMSI);
    end;

    btnSearchA4.Click;
  except on E: Exception do
    ShowMessage(Format('직원인증연장 중 오류가 발생했습니다.'+#13#10+'(Error: %s)', [E.Message]));
  end;
end;

procedure TFrm_USR.btnAuthUserCloseClick(Sender: TObject);
var
	I, iMemID, iPCSeq, iComputerName, istat, Cnt, FailedCnt: Integer;
  Msg, MemID, PcSeq, ComputerName, AddDay, FailedDesc: string;
begin
	if cxViewAuthUser.DataController.GetSelectedCount < 1 then
  begin
		GMessagebox('[인증만료] 직원을 한 건 이상 선택하세요.', CDMSI);
    Exit;
  end;

  Cnt     := cxViewAuthUser.DataController.GetSelectedCount;
	AddDay  := cbbAuthUserAddDay.Text;

	Msg := Format('[%d]명 직원의 인증기간을 만료하시겠습니까?'#13#10 +
					'(금일 기준으로 위의 기간이 만료됩니다.)', [Cnt]);
  if Application.MessageBox(PChar(Msg), CDMSI, MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;


	AddDay := '-1';
	try
		iPCSeq        := cxViewAuthUser.GetColumnByFieldName('PCSeq').Index;
		iMemID        := cxViewAuthUser.GetColumnByFieldName('인증ID').Index;
		iComputerName := cxViewAuthUser.GetColumnByFieldName('컴퓨터명').Index;
		istat         := cxViewAuthUser.GetColumnByFieldName('인증상태').Index;

		FailedDesc := '';
		FailedCnt := 0;
		for I := 0 to cxViewAuthUser.ViewData.RecordCount - 1 do
		begin
			if not cxViewAuthUser.ViewData.Rows[I].Selected then Continue;
			if cxViewAuthUser.DataController.Values[i, istat] <> '정상' then Continue;

			PcSeq         := cxViewAuthUser.ViewData.Rows[I].Values[iPCSeq];
      MemID         := cxViewAuthUser.ViewData.Rows[I].Values[iMemID];
      ComputerName  := cxViewAuthUser.DataController.Values[I, iComputerName];

			if not ExpireAuthManage('0', cxHdNo.Text, cxBrNo.Text, MemID, PcSeq, AddDay, GT_USERIF.ID) then
      begin
        Inc(FailedCnt);
        if FailedCnt mod 5 = 1 then
          FailedDesc := FailedDesc + #13#10 + Format('%s(%s)', [MemID, ComputerName])
        else
					FailedDesc := FailedDesc + ' / ' + Format('%s(%s)', [MemID, ComputerName]);
      end;
    end;

    if FailedCnt > 0 then
		begin
			GMessagebox(Format('직원 인증이 만료되었습니다.'#13#10'(실패건수: %d)'#13#10'%s', [FailedCnt, FailedDesc]), CDMSI);
		end	else
		begin
			GMessagebox(Format('직원 인증이 만료되었습니다.', []), CDMSI);
    end;

    btnSearchA4.Click;
  except on E: Exception do
		ShowMessage(Format('직원인증만료 중 오류가 발생했습니다.'+#13#10+'(Error: %s)', [E.Message]));
  end;
end;

procedure TFrm_USR.btnAuthUserDelClick(Sender: TObject);
var
  I, iPCSeq, iMemID, iComputerName, Cnt, FailedCnt: Integer;
  PcSeq, MemID, Msg, FailedDesc, ComputerName: string;
begin
  if cxViewAuthUser.DataController.GetSelectedCount < 1 then
  begin
    GMessagebox('[인증삭제] 직원을 한 명씩 선택하세요.', CDMSI);
    Exit;
  end;

  Cnt := cxViewAuthUser.DataController.GetSelectedCount;

  Msg := Format('[%d]명 직원의 인증내역을 삭제하시겠습니까?', [Cnt]);
  if Application.MessageBox(PChar(Msg), CDMSI, MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;

  try
    iPCSeq        := cxViewAuthUser.GetColumnByFieldName('PCSeq').Index;
    iMemID        := cxViewAuthUser.GetColumnByFieldName('인증ID').Index;
    iComputerName := cxViewAuthUser.GetColumnByFieldName('컴퓨터명').Index;

    FailedDesc := '';
    FailedCnt := 0;
    for I := 0 to cxViewAuthUser.ViewData.RecordCount - 1 do
    begin
      if not cxViewAuthUser.ViewData.Rows[I].Selected then Continue;

      PcSeq         := cxViewAuthUser.ViewData.Rows[I].Values[iPCSeq];
      MemID         := cxViewAuthUser.ViewData.Rows[I].Values[iMemID];
      ComputerName  := cxViewAuthUser.DataController.Values[I, iComputerName];

      if not DeleteAuthManage('0', cxHdNo.Text, cxBrNo.Text, MemID, PcSeq, GT_USERIF.ID) then
      begin
        Inc(FailedCnt);
        if FailedCnt mod 5 = 1 then
          FailedDesc := FailedDesc + #13#10 + Format('%s(%s)', [MemID, ComputerName])
        else
          FailedDesc := FailedDesc + ' / ' + Format('%s(%s)', [MemID, ComputerName]);
      end;
    end;

    if FailedCnt > 0 then
    begin
      GMessagebox(Format('직원 인증 삭제하였습니다.'#13#10'(실패건수: %d)'#13#10'%s', [FailedCnt, FailedDesc]), CDMSI);
    end else
    begin
      GMessagebox(Format('직원 인증 삭제하였습니다.', []), CDMSI);
    end;

    btnSearchA4.Click;
  except on E: Exception do
    ShowMessage(Format('직원인증삭제 중 오류가 발생했습니다.'+#13#10+'(Error: %s)', [E.Message]));
  end;
end;

procedure TFrm_USR.btnCloseA4Click(Sender: TObject);
begin
	pnl_ChangeStatus.Visible := False;
end;

procedure TFrm_USR.btnExcelA1Click(Sender: TObject);
begin
  if cxMngUserList.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.USR_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[직원메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '직원관리.xls';
  Frm_Main.sgRpExcel := Format('직원>직원관리]%s건', [GetMoneyStr(cxMngUserList.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridBrOrder;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_USR.btnExcelA2Click(Sender: TObject);
Var iUserNm : Integer;
begin
  if cxgMemberPer.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.USR_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[직원메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  try
    iUserNm  := cxgPer1.GetColumnByFieldName('아이디').Index;

    Frm_Main.sgExcel := '권한설정_' + cxgPer1.DataController.Values[cxgPer1.DataController.FocusedRecordIndex, iUserNm] + '.xls';
    Frm_Main.sgExcel := StringReplace(Frm_Main.sgExcel,'[','(',[rfreplaceall]);
    Frm_Main.sgExcel := StringReplace(Frm_Main.sgExcel,']',')',[rfreplaceall]);
    Frm_Main.sgRpExcel := Format('직원>권한설정]ID-%s', [cxgPer1.DataController.Values[cxgPer1.DataController.FocusedRecordIndex, iUserNm]]);
    Frm_Main.cxGridExcel := cxGrid2;
    Frm_Main.bgExcelOPT := False;
    Frm_Main.proc_excel(0);
  except
  end;
end;

procedure TFrm_USR.btnExcelA3Click(Sender: TObject);
begin
  if cxgAuthority.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.USR_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[직원메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '인증현황.xls';
  Frm_Main.sgRpExcel := Format('직원>인증현황]%s건', [GetMoneyStr(cxgAuthority.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA3;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_USR.btnExcelA4Click(Sender: TObject);
begin
  if cxViewAuthUser.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.USR_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[직원메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '인증관리(직원).xls';
  Frm_Main.sgRpExcel := Format('직원>인증관리(직원)]%s건', [GetMoneyStr(cxViewAuthUser.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridAuthUser;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_USR.btnExcelA5Click(Sender: TObject);
begin
  if cxViewAuthPC.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.USR_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[직원메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '인증관리(PC).xls';
  Frm_Main.sgRpExcel := Format('직원>인증관리(PC)]%s건', [GetMoneyStr(cxViewAuthPC.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridAuthPc;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_USR.btnExcelA6Click(Sender: TObject);
begin
  if cxgExcelDown.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.USR_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[직원메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '엑셀다운현황.xls';
  Frm_Main.sgRpExcel := Format('직원>엑셀다운현황]%s건', [GetMoneyStr(cxgExcelDown.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA6;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_USR.btnExcelA7Click(Sender: TObject);
begin
  if cxgUserStat.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.USR_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[직원메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '직원별통계.xls';
	if rdoUserSTT.Checked then
		Frm_Main.sgRpExcel := Format('직원>직원별통계]%s건', [GetMoneyStr(cxgUserStat.DataController.RecordCount)])
	else
		Frm_Main.sgRpExcel := Format('직원>직원별통계(날짜별)]%s건', [GetMoneyStr(cxgUserStat.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA7;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_USR.btnExcelA8Click(Sender: TObject);
begin
	if rdoUserSTTTime.Checked then
	begin
		if cxrbHourTotal.Checked then
		begin
			if cxgUserStt.DataController.RecordCount = 0 then
			begin
				GMessagebox('자료가 없습니다.', CDMSI);
				Exit;
			end;
		end else
		begin
			if cxgUserHourStt.DataController.RecordCount = 0 then
			begin
				GMessagebox('자료가 없습니다.', CDMSI);
				exit;
			end;
		end;
	end else
	if rdoUserSTTTime_Date.Checked then
	begin
		if cxrbHourTotal.Checked then
		begin
			if cxgUserStt_Date.DataController.RecordCount = 0 then
			begin
				GMessagebox('자료가 없습니다.', CDMSI);
				Exit;
			end;
		end else
		begin
			if cxgUserHourStt_Date.DataController.RecordCount = 0 then
			begin
				GMessagebox('자료가 없습니다.', CDMSI);
				exit;
			end;
		end;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.USR_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[직원메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

	if rdoUserSTTTime.Checked then
	begin
		if cxrbHourTotal.Checked then
    begin
      Frm_Main.sgExcel   := '직원별시간통계(통합).xls';
   	  Frm_Main.sgRpExcel := Format('직원>직원별시간통계(통합)]%s건', [GetMoneyStr(cxgUserStt.DataController.RecordCount)]);
      Frm_Main.cxGridExcel := cxGrid1A8;
		end else
    begin
      Frm_Main.sgExcel   := '직원별시간통계(상세).xls';
		  Frm_Main.sgRpExcel := Format('직원>직원별시간통계(상세)]%s건', [GetMoneyStr(cxgUserHourStt.DataController.RecordCount)]);
      Frm_Main.cxGridExcel := cxGrid2A8;
    end;
	end else
	begin
		if cxrbHourTotal.Checked then
    begin
      Frm_Main.sgExcel   := '일자별직원별시간통계(통합).xls';
      Frm_Main.sgRpExcel := Format('직원>직원별시간통계(통합)-일자별]%s건', [GetMoneyStr(cxgUserStt_Date.DataController.RecordCount)]);
      Frm_Main.cxGridExcel := cxGrid3A8;
		end else
    begin
      Frm_Main.sgExcel   := '일자별직원별시간통계(상세).xls';
		  Frm_Main.sgRpExcel := Format('직원>직원별시간통계(상세)-일자별]%s건', [GetMoneyStr(cxgUserHourStt_Date.DataController.RecordCount)]);
      Frm_Main.cxGridExcel := cxGrid4A8;
    end;
	end;

  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_USR.btnExcelA9Click(Sender: TObject);
begin
  if cxgUserLog.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.USR_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[직원메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '직원근태현황.xls';
  Frm_Main.sgRpExcel := Format('직원>직원근태현황]%s건', [GetMoneyStr(cxgUserLog.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA9;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_USR.btnModifyA4Click(Sender: TObject);
var
	iRow, ErrCode: Integer;
	sId, XmlData, Param, ErrMsg: string;
begin
	if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
	begin
		GMessagebox('상담원 권한은 소속 지사의 직원만 관리 가능합니다.', CDMSI);
		Exit;
	end;

	iRow := cxViewAuthUser.DataController.FocusedRecordIndex;
	if iRow < 0 then Exit;
	sId := cxedSelId.Text;
	if GMessagebox('아이디 [' + sId + ']의 상태를 변경 하겠습니까?', CDMSQ) = idok then
	begin
		Param := Param + '│' + '│'  ;
		Param := Param + sId + '│'  ;
		if rdo_status1.Checked then Param := Param + '1' else
    if rdo_status2.Checked then Param := Param + '2' else
    if rdo_status3.Checked then	Param := Param + '3' else
    if rdo_status4.Checked then	Param := Param + '4' else
    if rdo_status5.Checked then	Param := Param + '9';

		if not RequestBase(GetCallable05('SET_MEMBER_STATUS', 'MNG_MEMBER.SET_MEMBER_STATUS', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('상태변경 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Exit;
		end;

		GMessagebox('상태변경 완료', CDMSI);
		btnCloseA4.Click;
		btnSearchA4.Click;
	end;
end;

procedure TFrm_USR.btnMyPer1SaveClick(Sender: TObject);
Var i : Integer;
    sMenuCode, sJonCnt : String;
begin
  if cxgMemberPer.DataController.RecordCount = 0 then Exit;

  sMenuCode := gsJONLMT + '|';
  for i := 0 to cxgMemberPer.DataController.RecordCount - 1 do
  begin
    if cxgMemberPer.DataController.Values[i, 3] = '1' then
      sMenuCode := sMenuCode + '|' + cxgMemberPer.DataController.Values[i, 6];
  end;

  if TcxButton(Sender).Tag = 0 then
  begin
    GS_EnvFile.WriteString('USER_PER', 'MyPer1' , Trim(sMenuCode));
    rbMy1Per.Enabled := True;
  end else
  if TcxButton(Sender).Tag = 1 then
  begin
    GS_EnvFile.WriteString('USER_PER', 'MyPer2' , Trim(sMenuCode));
    rbMy2Per.Enabled := True;
  end;

  GMessagebox('저장되었습니다', CDMSI);
end;

procedure TFrm_USR.btnNextClick(Sender: TObject);
begin
  try
    if MenuIdx <= slMenuSch.Count-2 then
    begin
      Inc(MenuIdx);
      cxgMemberPer.Controller.FocusedColumnIndex := 3;
      cxgMemberPer.ViewData.Records[StrToInt(slMenuSch[MenuIdx])].Selected := True;
      cxgMemberPer.DataController.FocusedRecordIndex := StrToInt(slMenuSch[MenuIdx]);
    end;
  except
  end;
end;

procedure TFrm_USR.btnOkClick(Sender: TObject);
begin
  grpPer.Visible := False;
end;

procedure TFrm_USR.btnPreClick(Sender: TObject);
begin
  try
    if MenuIdx > 0 then
    begin
      Dec(MenuIdx);
      cxgMemberPer.Controller.FocusedColumnIndex := 3;
      cxgMemberPer.ViewData.Records[StrToInt(slMenuSch[MenuIdx])].Selected := True;
      cxgMemberPer.DataController.FocusedRecordIndex := StrToInt(slMenuSch[MenuIdx]);
    end;
  except
  end;
end;

procedure TFrm_USR.btnSearch3A2Click(Sender: TObject);
var
  ls_TxLoad, sNode, stDefID, sLevel, sMenuDetailCode, sGroupCode, sMenuCode, sDetailCode: string;
  xdom: msDomDocument;
	lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  i, iRow, iCnt, iSucc, iErr, j : Integer;
  slReceive: TStringList;
  rv_str, ls_rxxml, ls_MSG_Err : string;
  ErrCode: integer;
begin
	// 사용자 권한 저장
	if cxgPer1.DataController.FocusedRecordIndex = -1 then Exit;


  for i := 0 to cxgPer1.Controller.SelectedRowCount - 1 do
  begin
    iRow := cxgPer1.Controller.SelectedRows[i].RecordIndex;

    sLevel := cxgPer1.DataController.Values[iRow, 2];
    if GT_USERIF.LV = '40' then
    begin
      if (sLevel = '본사관리자') or (sLevel = '패밀리관리자') then
      begin
        GMessagebox('지사관리자는 본사관리자 및 패밀리관리자 권한을 수정할 수 없습니다.', CDMSE);
        Exit;
      end;
    end else
    if GT_USERIF.LV = '10' then
    begin
      if (sLevel = '본사관리자') or (sLevel = '지사관리자') or (sLevel = '패밀리관리자') then
      begin
        GMessagebox('상담원은 관리자 권한을 수정할 수 없습니다.', CDMSE);
        Exit;
      end;
    end;
  end;

 	grpPer.Left := (Self.Width - grpPer.Width) div 2;
  grpPer.Top  := ((Self.Height - grpPer.Height) div 2) - 30;
  grpPer.BringToFront;
  lblPer.Visible := False;
  grpPer.Visible := True;
  PBar1.Position := 0;

  iSucc := 0;
  iErr  := 0;
  xdom := ComsDomDocument.Create;
  PBar1.Properties.Max := cxgPer1.Controller.SelectedRowCount;
  try
    for j := 0 to cxgPer1.Controller.SelectedRowCount - 1 do
    begin
      PBar1.Position := j+1;
      iRow := cxgPer1.Controller.SelectedRows[j].RecordIndex;

      stDefID := StringReplace(cxgPer1.Datacontroller.Values[iRow, 3],'[M]','',[rfreplaceall]);
      proc_SET_MEMBER_JONLMT(stDefID, gsJONLMT);

      ls_rxxml := GTx_UnitXmlLoad('C035N1.XML');

      if (not xdom.loadXML(ls_rxxml)) then
      begin
        Screen.Cursor := crDefault;
        ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
        grpPer.Visible := False;
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
      lst_Node.item[0].attributes.getNamedItem('Value').Text := Self.Caption + '11';
      sNode := '/cdms/Service/Permissions';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_Node.item[0].attributes.getNamedItem('action').Text := 'UPDATE';
      iCnt := 0;
      for i := 0 to cxgMemberPer.DataController.RecordCount - 1 do
      begin
        if cxgMemberPer.DataController.Values[i, 3] = '1' then
        begin
          sMenuDetailCode := cxgMemberPer.DataController.Values[i, 6];
          if Copy(sMenuDetailCode, 1, 5) = 'COM00' then Continue;

          if Copy(sMenuDetailCode, 6, 1) = '0' then
            sMenuDetailCode := Copy(sMenuDetailCode, 1, 5);
          sGroupCode := Copy(sMenuDetailCode, 1, 3);
          sMenuCode := Copy(sMenuDetailCode, 1, 5);
          sDetailCode := Copy(sMenuDetailCode, 6, 2);
          if sDetailCode = '' then
            sDetailCode := '0';
          if iCnt > 0 then
          begin
            sNode := '/cdms/Service/Permissions/Permission';
            lst_Node := xdom.documentElement.selectNodes(sNode);
            lst_clon := lst_node.item[0].cloneNode(True);
            sNode := '/cdms/Service/Permissions';
            lst_Node := xdom.documentElement.selectNodes(sNode);
            lst_Node.item[0].appendChild(lst_clon);
          end;
          lst_Node.item[0].childNodes.item[iCnt].attributes.getNamedItem('GroupCode').Text  := sGroupCode;
          lst_Node.item[0].childNodes.item[iCnt].attributes.getNamedItem('MenuCode').Text   := sMenuCode;
          lst_Node.item[0].childNodes.item[iCnt].attributes.getNamedItem('CRUDX').Text      := '1';
          lst_Node.item[0].childNodes.item[iCnt].attributes.getNamedItem('DetailCode').Text := sDetailCode;
          lst_Node.item[0].childNodes.item[iCnt].attributes.getNamedItem('DetailPer').Text  := '1';

          Inc(iCnt);
        end;
      end;

      if cxgPer1.DataController.GetSelectedCount = 1 then
      begin
        sNode := '/cdms/Service/Members/Member';
        lst_Node := xdom.documentElement.selectNodes(sNode);
        lst_Node.item[0].attributes.getNamedItem('MemId').Text := stDefID;

        // [hjf] 09.02.05 엑셀다운로드 허용 정보 추가
        lst_Node.item[0].attributes.getNamedItem('ExcelUse').Text := 'n';

        // 전체허용(y);
        iRow := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM001', True, True, True);
        if cxgMemberPer.DataController.GetValue(iRow, 3) = '1' then
          lst_Node.item[0].attributes.getNamedItem('ExcelUse').Text := 'y';

        // 고객정보 감춤(m);
        iRow := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM002', True, True, True);
        if cxgMemberPer.DataController.GetValue(iRow, 3) = '1' then
          lst_Node.item[0].attributes.getNamedItem('ExcelUse').Text := 'm';
      end else
      if cxgPer1.DataController.GetSelectedCount > 1 then
      begin
        sNode := '/cdms/Service/Members';
        lst_Node := xdom.documentElement.selectNodes(sNode);
        iCnt := 0;
        for i := 0 to cxgPer1.DataController.RecordCount - 1 do
        begin
          if cxgPer1.ViewData.Records[i].Selected then  // ok
          begin
            if iCnt > 0 then
            begin
              sNode := '/cdms/Service/Members/Member';
              lst_Node := xdom.documentElement.selectNodes(sNode);
              lst_clon := lst_node.item[0].cloneNode(True);
              sNode := '/cdms/Service/Members';
              lst_Node := xdom.documentElement.selectNodes(sNode);
              lst_Node.item[0].appendChild(lst_clon);
            end;
            lst_Node.item[0].childNodes.item[iCnt].attributes.getNamedItem('MemId').Text := stDefID;

            // [hjf] 09.02.05 엑셀다운로드 허용 정보 추가
            lst_Node.item[0].childNodes.item[iCnt].attributes.getNamedItem('ExcelUse').Text := 'n';

            // 전체허용(y);
            iRow := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM001', True, True, True);
            if cxgMemberPer.DataController.GetValue(iRow, 3) = '1' then
              lst_Node.item[0].childNodes.item[iCnt].attributes.getNamedItem('ExcelUse').Text := 'y';

            // 고객정보 감춤(m);
            iRow := cxgMemberPer.DataController.FindRecordIndexByText(0, 6, 'COM002', True, True, True);
            if cxgMemberPer.DataController.GetValue(iRow, 3) = '1' then
              lst_Node.item[0].childNodes.item[iCnt].attributes.getNamedItem('ExcelUse').Text := 'm';

            Inc(iCnt);
          end;
        end;
      end;
      ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;

      slReceive := TStringList.Create;
      try
        frm_Main.proc_SocketWork(False);
        if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
        begin
          rv_str := slReceive[0];
          if rv_str <> '' then
          begin
            try
              ls_rxxml := rv_str;
              Application.ProcessMessages;
              if not xdom.loadXML(ls_rxxml) then Exit;
              ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
              if ('0000' = ls_MSG_Err) then
              begin
                Inc(iSucc);
              end else
              begin
                Inc(iErr);
              end;
            except
              Inc(iErr);
            end;
          end;
        end;
      finally
        FreeAndNil(slReceive);
        frm_Main.proc_SocketWork(True);
      end;
    end;
    lblPer.Visible := True;
    lblPer.Caption := Format('권한 저장 완료 ( 성공 : %d명, 실패 : %d명 )', [iSucc, iErr]);
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_USR.btnSearch3B1Click(Sender: TObject);
var
  Param, XmlData, ErrMsg: string;
  ErrCode: Integer;
	i, iHCol, iBCol, iRow, iLevel, iCnt : integer;
  sLevel, sHd_no, sTemp : string;
begin
  iRow := cxGridB1View.DataController.FocusedRecordIndex;
	if iRow = -1 then Exit;
	iLevel := cxGridB1View.GetColumnByFieldName('아이디').Index;
  sLevel := cxGridB1View.DataController.Values[iRow, iLevel];
  Param := sLevel;
  iHCol := cxGridLB1View.GetColumnByFieldName('본사코드').Index;
  iBCol := cxGridLB1View.GetColumnByFieldName('지사코드').Index;
	sTemp := '';
	iCnt := 0;
  for i  := 0 to cxGridLB1View.DataController.RecordCount - 1 do
  begin
		if cxGridLB1View.DataController.Values[i, 2] = True then
		begin
			sHd_no := cxGridLB1View.DataController.Values[i, iHCol];
			if (sHd_no <> sTemp) then
			begin
				Param := Param + '│' + sHd_no + ';';
				if cxGridLB1View.DataController.Values[i, iBCol] <> '' then
					Param := Param + cxGridLB1View.DataController.Values[i, iBCol]
				else
					iCnt := 1;
			end else
      if sHd_no = sTemp then
			begin
				if iCnt = 1 then
					Param := Param + cxGridLB1View.DataController.Values[i, iBCol]
				else
					Param := Param + ',' + cxGridLB1View.DataController.Values[i, iBCol];
				iCnt := 0;
			end;
			sTemp := sHd_no;
		end;
  end;
  Param := Param + '│';
  if not RequestBase(GetCallable05('SET_FAMILY_PERMISSION_BRANCH', 'CAS.SET_FAMILY_PERMISSION_BRANCH', Param), XmlData, ErrCode, ErrMsg) then
  begin
		GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSI);
		Exit;
	end;
  GMessagebox('권한을 저장 하였습니다.', CDMSI);
end;

procedure TFrm_USR.btnSearch4B1Click(Sender: TObject);
begin
	proc_Manager_Permission_Search;
end;

procedure TFrm_USR.btnSchClick(Sender: TObject);
Var i : Integer;
begin
  if cxgMemberPer.DataController.RecordCount = 0 then Exit;

  slMenuSch.Clear;
  MenuIdx := 0;
  try
    cxgMemberPer.BeginUpdate;
    for i := 0 to cxgMemberPer.DataController.RecordCount - 1 do
    begin
      if ( Pos(edtMenu.Text, cxgMemberPer.DataController.Values[i, 1]) > 0 ) Or
         ( Pos(edtMenu.Text, cxgMemberPer.DataController.Values[i, 2]) > 0 ) Or
         ( Pos(edtMenu.Text, cxgMemberPer.DataController.Values[i, 4]) > 0 ) then
      begin
        cxgMemberPer.DataController.Values[i, 7] := 'O';
        slMenuSch.Add(IntToStr(i));
      end else
      begin
        cxgMemberPer.DataController.Values[i, 7] := '';
      end;
    end;
  finally
    cxgMemberPer.EndUpdate;
  end;
  cxGrid2.SetFocus;
  cxgMemberPer.DataController.FocusedRowIndex := 0;
  cxgMemberPer.Controller.FocusedRow.Selected := True;
  cxgMemberPer.Controller.FocusedColumnIndex := 3;

  if slMenuSch.Count > 0 then
  begin
    btnSch.Caption := Format('검색(%d)', [slMenuSch.Count]);
    if slMenuSch.Count = 1 then
    begin
      btnPre .Enabled := False;
      btnNext.Enabled := False;
    end else
    begin
      btnPre .Enabled := True;
      btnNext.Enabled := True;
    end;

    cxgMemberPer.ViewData.Records[StrToInt(slMenuSch[MenuIdx])].Selected := True;
    cxgMemberPer.DataController.FocusedRecordIndex := StrToInt(slMenuSch[MenuIdx]);
  end else
  begin
    btnSch.Caption := '검색';
    GMessagebox('검색 결과가 없습니다.', CDMSE);
  end;
end;

procedure TFrm_USR.btnSearch1A2Click(Sender: TObject);
var
  iRow, i, iLevel: Integer;
  sMenuDetailCode, sLevel : string;
  sl_Role: TStringList;
	stDefCnt: Integer;
	stDefID: string;
begin
	try
    iRow := cxgPer1.DataController.FocusedRecordIndex;
    if iRow = -1 then Exit;
    iLevel := cxgPer1.GetColumnByFieldName('그룹').Index;
    sLevel := cxgPer1.DataController.Values[iRow, iLevel];

    sl_Role := TStringList.Create;
		sl_Role.Add(sLevel); //0번 권한그룹

		stDefID := StringReplace(cxgPer1.Datacontroller.Values[iRow, 3],'[M]','',[rfreplaceall]);
		stDefCnt := GetJONLMT(stDefID);
		sl_Role.Add(IntToStr(stDefCnt)); //1번 접수현황 카운트 20191016 KHS

		for i := 0 to cxgMemberPer.DataController.RecordCount - 1 do
    begin
			if cxgMemberPer.DataController.Values[i, 3] = '1' then
      begin
        sMenuDetailCode := cxgMemberPer.DataController.Values[i, 6];
				sl_Role.Add(sMenuDetailCode);
			end;
		end;
    sl_Role.SaveToFile(DBDIRECTORY + 'Permission.tmp');

    btnSearch2A2.Caption := Format('%s[%s-%s] 권한적용', [stDefID, cxgPer1.Datacontroller.Values[iRow, 4], cxgPer1.Datacontroller.Values[iRow, 2]]);
    btnSearch2A2.Enabled := True;
    GMessagebox('권한을 복사 하였습니다.', CDMSI);
  except
    GMessagebox('권한 복사가 실패하였습니다.', CDMSI);
  end;
  FreeAndNil(sl_Role);
end;

procedure TFrm_USR.btnSearch1B1Click(Sender: TObject);
var
  i : Integer;
	sMenuHDCode, sMenuBRCode, sLevel: string;
	sl_Role, sl_Role1, sl_Role2 : TStringList;
begin
	try
		sl_Role  := TStringList.Create;
		sl_Role1 := TStringList.Create;
		sl_Role2 := TStringList.Create;
		sl_Role.Add(sLevel);
		for i := 0 to cxGridLB1View.DataController.RecordCount - 1 do
		begin
			if cxGridLB1View.DataController.Values[i, 2] = True then
			begin
				sMenuHDCode := cxGridLB1View.DataController.Values[i, 1];
				sMenuBRCode := cxGridLB1View.DataController.Values[i, 4];
				sl_Role.Add(sMenuBRCode);
				sl_Role1.Add(sMenuHDCode);
				sl_Role2.Add(sMenuBRCode);
			end;
		end;
		sl_Role.SaveToFile(DBDIRECTORY + 'FPermission.tmp');
		sl_Role1.SaveToFile(DBDIRECTORY + 'FPermissionHD.tmp');
		sl_Role2.SaveToFile(DBDIRECTORY + 'FPermissionBR.tmp');
		GMessagebox('권한을 복사 하였습니다.', CDMSI);
		btnSearch2B1.Enabled := True;
		btnSearch2B1.Tag := 0;
	except
    GMessagebox('권한 복사가 실패하였습니다.', CDMSI);
  end;
	FreeAndNil(sl_Role);
	FreeAndNil(sl_Role1);
	FreeAndNil(sl_Role2);
end;

procedure TFrm_USR.btnSearch2A2Click(Sender: TObject);
var
  iRow, i, iLevel: Integer;
	sMenuDetailCode, sLevel, stDefID: string;
  sl_Role: TStringList;
begin
	try
    if cxgPer1.DataController.FocusedRecordIndex = -1 then Exit;

    if not FileExists(DBDIRECTORY + 'Permission.tmp') then
    begin
      GMessagebox('복사할 권한이 없습니다.' + #13#10 +
        '먼저 권한복사를 하세요', CDMSI);
      Exit;
    end;
    iRow := cxgPer1.DataController.FocusedRecordIndex;
    iLevel := cxgPer1.GetColumnByFieldName('그룹').Index;
    sLevel := cxgPer1.DataController.Values[iRow, iLevel];

    sl_Role := TStringList.Create;
    sl_Role.LoadFromFile(DBDIRECTORY + 'Permission.tmp');
		if sl_Role[0] <> sLevel then
		begin
			GMessagebox('직원 그룹(본사관리자, 지사관리자, 상담원)이 다릅니다.' +
				#13#10 + '같은 그룹끼리만 복사할 수 있습니다.', CDMSI);
			FreeAndNil(sl_Role);
			Exit;
		end;

		stDefID := StringReplace(cxgPer1.Datacontroller.Values[cxgPer1.Datacontroller.GetFocusedRecordIndex,3],'[M]','',[rfreplaceall]);
		proc_SET_MEMBER_JONLMT(stDefID, sl_Role[1]); //1번 ID + '│' + 접수현황 카운트 20191016 KHS

		for i := 0 to cxgMemberPer.DataController.RecordCount - 1 do
		begin
      sMenuDetailCode := cxgMemberPer.DataController.Values[i, 6];
			iRow := sl_Role.IndexOf(sMenuDetailCode);
      if iRow >= 0 then
        cxgMemberPer.DataController.Values[i, 3] := '1'
      else
        cxgMemberPer.DataController.Values[i, 3] := '0';
    end;
    FreeAndNil(sl_Role);
    GMessagebox('권한을 적용 하였습니다.' + #13#10 +
      '권한 저장을 클릭하세요!', CDMSI);
  except
    GMessagebox('권한을 적용 실패 하였습니다!', CDMSI);
  end;
end;

procedure TFrm_USR.btnSearch2A2GetDrawParams(Sender: TcxCustomButton; AState: TcxButtonState; var AColor: TColor; AFont: TFont);
begin
  if btnSearch2A2.Enabled then
  begin
    btnSearch2A2.Left  := 426;
    btnSearch2A2.Width := 260;

    btnSearch1A2.Left  := btnSearch2A2.Left - btnSearch1A2.Width - 2;

    AFont.Color := clYellow;
    AFont.Style := [fsBold];
  end;
end;

procedure TFrm_USR.btnSearch2B1Click(Sender: TObject);
var
  iRow, i : Integer;
  sMenuDetailCode : string;
  sl_Role: TStringList;
begin
  try
    if cxGridB1View.DataController.FocusedRecordIndex = -1 then Exit;
    if not FileExists(DBDIRECTORY + 'FPermission.tmp') then
    begin
      GMessagebox('복사할 권한이 없습니다.' + #13#10 +
                  '먼저 권한복사를 하세요', CDMSI);
      Exit;
    end;

    sl_Role := TStringList.Create;
    try
      sl_Role.LoadFromFile(DBDIRECTORY + 'FPermission.tmp');
      cxGridLB1View.BeginUpdate;
      for i := 0 to cxGridLB1View.DataController.RecordCount - 1 do
      begin
        sMenuDetailCode := cxGridLB1View.DataController.Values[i, 4];
        iRow := sl_Role.IndexOf(sMenuDetailCode);
        if iRow >= 0 then
          cxGridLB1View.DataController.Values[i, 2] := True
        else
          cxGridLB1View.DataController.Values[i, 2] := False;
      end;
    finally
      FreeAndNil(sl_Role);
      cxGridLB1View.EndUpdate;
    end;
    GMessagebox('권한을 적용 하였습니다.' + #13#10 +
                '권한 저장을 클릭하세요!', CDMSI);
  except
    GMessagebox('권한을 적용 실패 하였습니다!', CDMSI);
  end;
end;

procedure TFrm_USR.cbbAuthPCAddDayKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Ord(Key) = VK_RETURN then
    btnSearchA5Click(btnSearchA5);
end;

procedure TFrm_USR.cbbAuthUserAddDayKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Ord(Key) = VK_RETURN then
    btnSearchA4Click(btnSearchA4);
end;

procedure TFrm_USR.chkSelectAllPCA5Click(Sender: TObject);
begin
  if TcxCheckBox(Sender).Checked then
    cxViewAuthPC.DataController.SelectAll
  else
    cxViewAuthPC.DataController.ClearSelection;
end;

procedure TFrm_USR.chkSelectAllUserA4Click(Sender: TObject);
begin
  if TcxCheckBox(Sender).Checked then
    cxViewAuthUser.DataController.SelectAll
  else
    cxViewAuthUser.DataController.ClearSelection;
end;

procedure TFrm_USR.onlyNumericKeyPress(Sender: TObject; var Key: Char);
begin
  if key in ['0'..'9', #13, #8] then
  else
    key := #0;
end;

procedure TFrm_USR.cxbDelete2Click(Sender: TObject);
var
	iRow, iId, ErrCode, iBR: Integer;
  sId, sBR: string;
	XmlData, Param, ErrMsg: string;
begin
	if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사의 직원만 관리 가능합니다.', CDMSI);
    Exit;
  end;

  iRow := cxMngUserList.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;
  iId := cxMngUserList.GetColumnByFieldName('아이디').Index;
  sId := cxMngUserList.DataController.Values[iRow, iId];
	iBR := cxMngUserList.GetColumnByFieldName('지사코드').Index;
	sBR := cxMngUserList.DataController.Values[iRow, iBR];
	sId := StringReplace(sId, '[M]', '', [rfReplaceAll]);
	cxedSelId.Text := sId;
	if GMessagebox('아이디 [' + sId + ']를 삭제 하겠습니까?', CDMSQ) = idok then
  begin
		Param := Param + GT_SEL_BRNO.HDNO + '│' + sBR + '│';
		Param := Param + sId ;

		if not RequestBase(GetCallable05('SET_MEMBER_STATUS', 'MNG_MEMBER.SET_MEMBER_DELETE', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('직원 삭제 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Exit;
		end;

		GMessagebox('직원 삭제 완료', CDMSI);
		btnSearchA1.Click;
	end;
end;

procedure TFrm_USR.cxbDeleteClick(Sender: TObject);
var
	iRow, iId, iBR, ErrCode: Integer;
	sId, sBR: string;
	XmlData, Param, ErrMsg: string;
begin
	if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
	begin
		GMessagebox('상담원 권한은 소속 지사의 직원만 관리 가능합니다.', CDMSI);
		Exit;
	end;

  iRow := cxMngUserList.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;
	iId := cxMngUserList.GetColumnByFieldName('아이디').Index;
	sId := cxMngUserList.DataController.Values[iRow, iId];
	iBR := cxMngUserList.GetColumnByFieldName('지사코드').Index;
	sBR := cxMngUserList.DataController.Values[iRow, iBR];
	cxedSelId.Text := sId;
	if GMessagebox('아이디 [' + sId + ']를 일시정지 하겠습니까?', CDMSQ) = idok then
	begin
		Param := Param + GT_SEL_BRNO.HDNO + '│' + sBR + '│';
		Param := Param + sId + '│'  ;
		Param := Param + '4';
		if not RequestBase(GetCallable05('SET_MEMBER_STATUS', 'MNG_MEMBER.SET_MEMBER_STATUS', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('일시정지 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Exit;
		end;

		GMessagebox('일시정지 완료', CDMSI);
		btnSearchA1.Click;
	end;
end;

procedure TFrm_USR.cxbInsertClick(Sender: TObject);
begin
	proc_Manage_Select(-1);
end;

procedure TFrm_USR.cxbModifyClick(Sender: TObject);
var
  iRow, iId: Integer;
  sId: string;
begin
	iRow := cxMngUserList.DataController.FocusedRecordIndex;
	if iRow < 0 then Exit;
  iId := cxMngUserList.GetColumnByFieldName('아이디').Index;
	sId := cxMngUserList.DataController.Values[iRow, iId];
	cxedSelId.Text := sId;
	proc_Manage_Select(iRow);
end;

procedure TFrm_USR.btnGetListClick(Sender: TObject);
begin
  pGetComponentListUSR;
end;

procedure TFrm_USR.cxcbPerGradPropertiesChange(Sender: TObject);
begin
  if GT_USERIF.LV = '40' then
  begin
		if cxcbPerGrad.ItemIndex = 1 then
    begin
      GMessagebox('지사관리자는 본사관리자를 조회할 수 없습니다.', CDMSE);
      cxcbPerGrad.ItemIndex := 0;
      Exit;
    end;
  end else
  if GT_USERIF.LV = '10' then
	begin
		if cxcbPerGrad.ItemIndex in [1, 2] then
		begin
			GMessagebox('상담원은 관리자를 조회할 수 없습니다.', CDMSE);
			cxcbPerGrad.ItemIndex := 0;
			Exit;
    end;
  end;
end;

procedure TFrm_USR.cxCheckBox1Click(Sender: TObject);
var i : Integer;
begin
  if cxCheckBox1.Checked then
  begin
    try
      cxGridLB1View.BeginUpdate;
      for i := 0 to cxGridLB1View.DataController.RecordCount - 1 do
      begin
        cxGridLB1View.DataController.Values[i, 2] := True;
      end;
    finally
      cxGridLB1View.EndUpdate;
    end;
  end else
  begin
    try
      cxGridLB1View.BeginUpdate;
      for i := 0 to cxGridLB1View.DataController.RecordCount - 1 do
      begin
        cxGridLB1View.DataController.Values[i, 2] := False;
      end;
    finally
      cxGridLB1View.EndUpdate;
    end;
  end;
end;

procedure TFrm_USR.chkWkPerClick(Sender: TObject);
Var i : Integer;
    sMenuCode, sChk : String;
begin
	if chkWkPer.Checked then sChk := '1'
                      else sChk := '0';

  try
    cxgMemberPer.DataController.BeginUpdate;
    for i := 0 to cxgMemberPer.DataController.RecordCount - 1 do
    begin
      sMenuCode := cxgMemberPer.DataController.Values[i, 6];

      if (sMenuCode = 'COM015' ) Or  //기사충전권한
         (sMenuCode = 'COM016' ) Or  //[기사관리]금액표시
         (sMenuCode = 'COM017' ) Or  //[기사관리]일비차감설정
         (sMenuCode = 'COM018' ) Or  //기사상태를변경한다.
         (Pos('WOR', sMenuCode) > 0 ) Or // 기사관리메뉴
         (sMenuCode = 'ETC03'  ) Or  //관제지도를열람할수있다.
         (sMenuCode = 'HEL01'  ) then  //원격요청
        cxgMemberPer.DataController.Values[i, 3] := sChk;
    end;
    cxgMemberPer.DataController.EndUpdate;
  except
  end;
end;

procedure TFrm_USR.cxDtStartA3KeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8, #22] then      //Ctrl+v = #22 or #$16
	else
		key := #0;
end;

procedure TFrm_USR.cxgMemberPerCanFocusRecord(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  var AAllow: Boolean);
begin
	if (ARecord.DisplayTexts[6]='JON0116') and
			not ((GT_USERIF.LV='60') and (GT_USERIF.Master='y')) and
			not ((GT_USERIF.ID = 'KD_김주원') OR (GT_USERIF.ID = 'KD_김주원kds') OR (GT_USERIF.ID = 'KD_김동순'))then
	begin
    GMessagebox('접수현황조회건수제한은 본사관리자 마스터만 변경이 가능합니다.',CDMSE);
		AAllow:=false;
  // 2011.04.21
  end else
  if (ARecord.DisplayTexts[6]='SET06') and not((GT_USERIF.LV='60')) then
	begin
		GMessagebox('CID대표번호DNIS관리 권한부여는 본사관리자만 변경이 가능합니다.',CDMSE);
		AAllow:=false;
	end;
end;

procedure TFrm_USR.cxgMemberPerCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var iRow : Integer;
begin
	iRow := cxgMemberPer.DataController.FocusedRecordIndex;
	if iRow < 0 then exit;

//	AFocusStr := cxgMemberPer.DataController.Values[iRow, 2];
	AFocusStr := cxgMemberPer.DataController.Values[iRow, 4];
end;

procedure TFrm_USR.cxgMemberPerEditValueChanged(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
var
	tmCnt: integer;
  stJonTit: string;
	stDefCnt: Integer;
	stDefID: string;
begin
  // 접수현황조회건수 설정 및 표시
  // 2010.12.31
  try
    if ((string(AItem.EditValue)='1') and (cxgMemberPer.DataController.GetFocusedRecordIndex=iRow_JONMAX) and (AItem.index=3)) then
    begin
			stDefID := StringReplace(cxgPer1.Datacontroller.Values[cxgPer1.Datacontroller.GetFocusedRecordIndex,3],'[M]','',[rfreplaceall]);
			stDefCnt := GetJONLMT(stDefID);

      gsJONLMT := InputBox('접수현수건수조정','아이디 '+ stDefID +'의 접수현황제한건수',IntToStr(stDefCnt));
			tmCnt := StrToIntDef(gsJONLMT, stDefCnt);

      if (tmCnt<=0) then
			begin
				GMessagebox('접수현황건수는 1이상을 입력하셔야 합니다.',cdmse);
				Exit;
      end else
      begin
        cxgMemberPer.BeginUpdate;
        cxgMemberPer.DataController.Values[iRow_JONMAX, 5] := st_JONMAX + '(Max : '+gsJONLMT+')';;
        cxgMemberPer.EndUpdate;
      end;
    end;
  finally
  end;
end;

procedure TFrm_USR.cxgMemberPerStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  var AStyle: TcxStyle);
var iRow : Integer;
begin
  if (ARecord.Selected) or (Sender.DataController.RecordCount = 0) then  Exit;
  if Not Assigned(AItem) then Exit;

	iRow := Sender.DataController.GetRowInfo(ARecord.Index).RecordIndex;
  try
    if ( Sender.DataController.Values[iRow, 7] = 'O' ) And ( AItem.Index = 5 ) then
       AStyle := cxStyleSEL;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function TFrm_USR.SelectAuthManage(AType, AHdNo, ABrNo, AMemID, AIPAddr,
	ASTCD, ASTATUS, AGUBUN, AFromDay, AToDay : string): Boolean;
begin
	Result := ExcuteAuthManage('AuthMngSel' + AType, 'SELECT', AType, AHdNo, ABrNo, AMemID, AIPAddr, '', ASTCD, '', '', ASTATUS, AGUBUN, AFromDay, AToDay);
end;

function TFrm_USR.ExpireAuthManage(AType, AHdNo, ABrNo, AMemID, APCSeq, AAddDay,
	AReqID: string): Boolean;
begin
	Result := ExcuteAuthManage('AuthMngExp' + AType, 'EXPIRE', AType, AHdNo, ABrNo, AMemID, '', APCSeq, '', AAddDay, AReqID, '', '', '', '');
end;

function TFrm_USR.DeleteAuthManage(AType, AHdNo, ABrNo, AMemID, APCSeq, AReqID : string): Boolean;
begin
	Result := ExcuteAuthManage('AuthMngDel' + AType, 'DELETE', AType, AHdNo, ABrNo, AMemID, '', APCSeq, '', '', AReqID, '', '', '', '');
end;

procedure TFrm_USR.edtMenuKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Ord(key) = VK_RETURN then btnSch.Click;
end;

procedure TFrm_USR.edUserLogIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Ord(Key) = VK_RETURN then
    btnSearchA9Click(btnSearchA9);
end;

function TFrm_USR.UpdateAuthManage(AType, AHdNo, ABrNo, APCSeq, AReqID: string): Boolean;
begin
	Result := ExcuteAuthManage('AuthMngUpd', 'UPDATE', AType, AHdNo, ABrNo, '', '', APCSeq, '', '', AReqID, '', '', '', '');
end;

function TFrm_USR.ExcuteAuthManage(AKey, AMode, AType, AHdNo, ABrNo,
	AMemID, AIPAddr, APCSeq, ASTCD, AAddDay, AReqID, ASTATUS, AGUBUN, AFromDay, AToDay : string): Boolean;
var
  ls_TxLoad : string; // XML File Load
	slReceive: TStringList;
  rv_str, ls_rxxml: string;
  ErrCode: integer;
begin
	Result := False;

	if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
	begin
		GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
	end;

	ls_TxLoad := GTx_UnitXmlLoad('C059N1.XML');
	ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString',     En_Coding(GT_USERIF.ID), [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',  VERSIONINFO            , [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',  AKey                   , [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'ModeString',       AMode                  , [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'AuthTypeString',   AType                  , [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'HdNoString',       AHdNo                  , [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'BrNoString',       ABrNo                  , [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'MemIDString',      AMemID                 , [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'GUBUNString',      AGUBUN                 , [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'SEARCH_STRString', AMemID                 , [rfReplaceAll]);// LOCAL_IP
	ls_TxLoad := StringReplace(ls_TxLoad, 'PCSeqString',      APCSeq                 , [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'AuthStCdString',   ASTCD                  , [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'AddAuthDayString', AAddDay                , [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'ReqIDString',      AReqID                 , [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'STATUSString',     ASTATUS                , [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'FROMDAYString',    AFromDay               , [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'TODAYString',      AToDay                 , [rfReplaceAll]);

  Screen.Cursor := crHourGlass;
	slReceive := TStringList.Create;
	try
		frm_Main.proc_SocketWork(False);
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 60000) then
    begin
      rv_str := slReceive[0];
      if rv_str <> '' then
      begin
        ls_rxxml := rv_str;
        Application.ProcessMessages;
				Result := ResponseAuthManage(ls_rxxml);
			end;
    end;
  finally
    Screen.Cursor := crDefault;
    FreeAndNil(slReceive);
    frm_Main.proc_SocketWork(True);
  end;
end;

function TFrm_USR.ResponseAuthManage(AXmlData: string): Boolean;
var
  xdom: msDomDocument;
  lst_Result, lst_Member: IXMLDomNodeList;
  I, J, Row: Integer;
	ClientKey, ErrCode, Members, sBrNo, sSTATUS: string;
  iCompany, iMemID, iGWIP, iLocalIP, iCompName, iAuthType, iAuthSt, iFirstDt, iLastDt, iExpireDt, iExpireDay,
	iIDCount, iReqID, iTel, iPCSeq, iMembers, iBrNM, iSTATUS: Integer;
begin
	Result := False;
  try
    xdom := ComsDomDocument.Create;
    try
      if not xdom.loadXML(AXmlData) then Exit;

      ClientKey := GetXmlClientKey(AXmlData);
      ErrCode   := GetXmlErrorCode(AXmlData);

      if ErrCode <> '0000' then
      begin
{
        if (ClientKey = 'AuthMngSel0') or (ClientKey = 'AuthMngSel0') then
          GMessagebox('검색 중 오류가 발생하였습니다. 다시 조회 바랍니다.', CDMSE)
        else if (ClientKey = 'AuthMngExp0') or (ClientKey = 'AuthMngExp1') then
          GMessagebox('인증연장 중 오류가 발생하였습니다. 다시 시도 바랍니다.', CDMSE)
        else if (ClientKey = 'AuthMngDel0') or (ClientKey = 'AuthMngDel1') then
          GMessagebox('인증삭제 중 오류가 발생하였습니다. 다시 시도 바랍니다.', CDMSE)
        else if ClientKey = 'AuthMngUpd' then
          GMessagebox('인증방식 변경 중 오류가 발생하였습니다. 다시 시도 바랍니다.', CDMSE)
        else
          GMessagebox(GetXmlErrorMsg(AXmlData), CDMSE);
}
        Exit;
      end;

      // ID 인증
      if ClientKey = 'AuthMngSel0' then
      begin
        cxViewAuthUser.BeginUpdate;
		  	try
          iCompany    := cxViewAuthUser.GetColumnByFieldName('회사명').Index;
          iMemID      := cxViewAuthUser.GetColumnByFieldName('인증ID').Index;
		  		iSTATUS      := cxViewAuthUser.GetColumnByFieldName('근무상태').Index;
		  		iGWIP       := cxViewAuthUser.GetColumnByFieldName('Gateway IP').Index;
          iLocalIP    := cxViewAuthUser.GetColumnByFieldName('컴퓨터IP').Index;
          iCompName   := cxViewAuthUser.GetColumnByFieldName('컴퓨터명').Index;
//          iAuthType   := cxViewAuthUser.GetColumnByFieldName('인증방식').Index;
		  		iAuthSt     := cxViewAuthUser.GetColumnByFieldName('인증상태').Index;
          iFirstDt    := cxViewAuthUser.GetColumnByFieldName('최초인증일시').Index;
          iLastDt     := cxViewAuthUser.GetColumnByFieldName('마지막인증일시').Index;
          iExpireDt   := cxViewAuthUser.GetColumnByFieldName('인증만료일시').Index;
		  		iExpireDay  := cxViewAuthUser.GetColumnByFieldName('남은일자').Index;
          iTel        := cxViewAuthUser.GetColumnByFieldName('인증휴대폰').Index;
          iPCSeq      := cxViewAuthUser.GetColumnByFieldName('PCSeq').Index;

          lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Response/Data');

          for I := 0 to lst_Result.length - 1 do
          begin
		  			with cxViewAuthUser.DataController, lst_Result.item[i].attributes do
		  			begin
		  				if getNamedItem('BR_NM').text <> '' then
		  				begin
		  					iBrNM := scb_BranchName.IndexOf(getNamedItem('BR_NM').text);
		  					if iBrNM >= 0 then
		  						sBrNo := scb_BranchCode.Strings[iBrNM]
		  					else
		  						sBrNo := '';
		  				end;
		  				if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB   패밀리지사일때
		  				begin
		  					if not Check_ALLHD(GT_SEL_BRNO.HDNO) then      //전체지사권한이 없을때
		  					begin
		  						if scb_FamilyBrCode.IndexOf(sBrNo) = -1 then   //권한있는 지사일경우만 그리드표기
		  						else
		  						begin
		  							Row := cxViewAuthUser.DataController.AppendRecord;
		  							Values[Row, iCompany]   := Format('%s / %s', [getNamedItem('HD_NM').text, getNamedItem('BR_NM').text]);
		  							Values[Row, iMemId]     := getNamedItem('MEM_ID').text;
		  							Values[Row, iGWIP]      := getNamedItem('REMOTE_IP').text;
		  							Values[Row, iLocalIP]   := getNamedItem('LOCAL_IP').text;
		  							Values[Row, iCompName]  := getNamedItem('COMPUTER_NAME').text;
		  	//            Values[Row, iAuthType]  := getNamedItem('AUTH_TYPE_STR').text;
		  							Values[Row, iAuthSt]    := getNamedItem('AUTH_ST_STR').text;
		  	//            Values[Row, iFirstDt]   := GetStrToShortDateTimeStr(getNamedItem('FIRST_AUTH_DTM').text);
		  	//            Values[Row, iLastDt]    := GetStrToShortDateTimeStr(getNamedItem('LAST_AUTH_DTM').text);
		  	//            Values[Row, iExpireDt]  := GetStrToShortDateTimeStr(getNamedItem('EXPIRE_DTM').text);
		  							// 2010.12.31 연도표시추가
		  							Values[Row, iFirstDt]   := GetStrToLongDateTimeStr(getNamedItem('FIRST_AUTH_DTM').text);
		  							Values[Row, iLastDt]    := GetStrToLongDateTimeStr(getNamedItem('LAST_AUTH_DTM').text);
		  							Values[Row, iExpireDt]  := GetStrToLongDateTimeStr(getNamedItem('EXPIRE_DTM').text);
		  							Values[Row, iExpireDay] := getNamedItem('EXPIRE_DAY').text;
		  							Values[Row, iTel]       := strtocall(getNamedItem('PHONE_NUM').text);
		  							Values[Row, iPCSeq]     := getNamedItem('PC_SEQ').text;

		  							if getNamedItem('WORK_STATUS').text = '1' then Values[Row, iSTATUS] := '교육중'	else
		  							if getNamedItem('WORK_STATUS').text = '2' then Values[Row, iSTATUS] := '근무중'	else
		  							if getNamedItem('WORK_STATUS').text = '3' then Values[Row, iSTATUS] := '휴가중'	else
		  							if getNamedItem('WORK_STATUS').text = '4' then Values[Row, iSTATUS] := '일시정지' else
		  							if getNamedItem('WORK_STATUS').text = '9' then Values[Row, iSTATUS] := '퇴사'
                                          		  							else Values[Row, iSTATUS] := '';
		  						end;
		  					end	else
		  					begin
		  						Row := cxViewAuthUser.DataController.AppendRecord;
		  						Values[Row, iCompany]   := Format('%s / %s', [getNamedItem('HD_NM').text, getNamedItem('BR_NM').text]);
		  						Values[Row, iMemId]     := getNamedItem('MEM_ID').text;
		  						Values[Row, iGWIP]      := getNamedItem('REMOTE_IP').text;
		  						Values[Row, iLocalIP]   := getNamedItem('LOCAL_IP').text;
		  						Values[Row, iCompName]  := getNamedItem('COMPUTER_NAME').text;
		  //            Values[Row, iAuthType]  := getNamedItem('AUTH_TYPE_STR').text;
		  						Values[Row, iAuthSt]    := getNamedItem('AUTH_ST_STR').text;
		  //            Values[Row, iFirstDt]   := GetStrToShortDateTimeStr(getNamedItem('FIRST_AUTH_DTM').text);
		  //            Values[Row, iLastDt]    := GetStrToShortDateTimeStr(getNamedItem('LAST_AUTH_DTM').text);
		  //            Values[Row, iExpireDt]  := GetStrToShortDateTimeStr(getNamedItem('EXPIRE_DTM').text);
		  						// 2010.12.31 연도표시추가
		  						Values[Row, iFirstDt]   := GetStrToLongDateTimeStr(getNamedItem('FIRST_AUTH_DTM').text);
		  						Values[Row, iLastDt]    := GetStrToLongDateTimeStr(getNamedItem('LAST_AUTH_DTM').text);
		  						Values[Row, iExpireDt]  := GetStrToLongDateTimeStr(getNamedItem('EXPIRE_DTM').text);
		  						Values[Row, iExpireDay] := getNamedItem('EXPIRE_DAY').text;
		  						Values[Row, iTel]       := strtocall(getNamedItem('PHONE_NUM').text);
		  						Values[Row, iPCSeq]     := getNamedItem('PC_SEQ').text;
		  						if getNamedItem('WORK_STATUS').text = '1' then Values[Row, iSTATUS] := '교육중'	else
		  						if getNamedItem('WORK_STATUS').text = '2' then Values[Row, iSTATUS] := '근무중'	else
		  						if getNamedItem('WORK_STATUS').text = '3' then Values[Row, iSTATUS] := '휴가중'	else
		  						if getNamedItem('WORK_STATUS').text = '4' then Values[Row, iSTATUS] := '일시정지'	else
		  						if getNamedItem('WORK_STATUS').text = '9' then Values[Row, iSTATUS] := '퇴사'
                                          		  						else Values[Row, iSTATUS] := '';
		  					end;
		  				end	else
		  				begin
		  					Row := cxViewAuthUser.DataController.AppendRecord;
		  					Values[Row, iCompany]   := Format('%s / %s', [getNamedItem('HD_NM').text, getNamedItem('BR_NM').text]);
		  					Values[Row, iMemId]     := getNamedItem('MEM_ID').text;
		  					Values[Row, iGWIP]      := getNamedItem('REMOTE_IP').text;
		  					Values[Row, iLocalIP]   := getNamedItem('LOCAL_IP').text;
		  					Values[Row, iCompName]  := getNamedItem('COMPUTER_NAME').text;
	//              Values[Row, iAuthType]  := getNamedItem('AUTH_TYPE_STR').text;
		  					Values[Row, iAuthSt]    := getNamedItem('AUTH_ST_STR').text;
	//              Values[Row, iFirstDt]   := GetStrToShortDateTimeStr(getNamedItem('FIRST_AUTH_DTM').text);
	//              Values[Row, iLastDt]    := GetStrToShortDateTimeStr(getNamedItem('LAST_AUTH_DTM').text);
	//              Values[Row, iExpireDt]  := GetStrToShortDateTimeStr(getNamedItem('EXPIRE_DTM').text);
		  					// 2010.12.31 연도표시추가
		  					Values[Row, iFirstDt]   := GetStrToLongDateTimeStr(getNamedItem('FIRST_AUTH_DTM').text);
		  					Values[Row, iLastDt]    := GetStrToLongDateTimeStr(getNamedItem('LAST_AUTH_DTM').text);
		  					Values[Row, iExpireDt]  := GetStrToLongDateTimeStr(getNamedItem('EXPIRE_DTM').text);
		  					Values[Row, iExpireDay] := getNamedItem('EXPIRE_DAY').text;
		  					Values[Row, iTel]       := strtocall(getNamedItem('PHONE_NUM').text);
		  					Values[Row, iPCSeq]     := getNamedItem('PC_SEQ').text;
		  					if getNamedItem('WORK_STATUS').text = '1' then Values[Row, iSTATUS] := '교육중'	else
		  					if getNamedItem('WORK_STATUS').text = '2' then Values[Row, iSTATUS] := '근무중'	else
		  					if getNamedItem('WORK_STATUS').text = '3' then Values[Row, iSTATUS] := '휴가중'	else
		  					if getNamedItem('WORK_STATUS').text = '4' then Values[Row, iSTATUS] := '일시정지'	else
		  					if getNamedItem('WORK_STATUS').text = '9' then Values[Row, iSTATUS] := '퇴사'
                                           		  					else Values[Row, iSTATUS] := '';
		  				end;
		  			end;
          end;
          Result := True;
        finally
          cxViewAuthUser.EndUpdate;
        end;
      end else
      // PC 인증
      if ClientKey = 'AuthMngSel1' then
      begin
        cxViewAuthPC.BeginUpdate;
        try
          iCompany    := cxViewAuthPC.GetColumnByFieldName('회사명').Index;
          iGWIP       := cxViewAuthPC.GetColumnByFieldName('Gateway IP').Index;
          iLocalIP    := cxViewAuthPC.GetColumnByFieldName('컴퓨터IP').Index;
          iCompName   := cxViewAuthPC.GetColumnByFieldName('컴퓨터명').Index;
          iAuthType   := cxViewAuthPC.GetColumnByFieldName('인증방식').Index;
          iAuthSt     := cxViewAuthPC.GetColumnByFieldName('인증상태').Index;
          iFirstDt    := cxViewAuthPC.GetColumnByFieldName('최초인증일시').Index;
          iLastDt     := cxViewAuthPC.GetColumnByFieldName('마지막인증일시').Index;
          iExpireDt   := cxViewAuthPC.GetColumnByFieldName('인증만료일시').Index;
          iExpireDay  := cxViewAuthPC.GetColumnByFieldName('남은일자').Index;
          iIDCount    := cxViewAuthPC.GetColumnByFieldName('인증ID수').Index;
          iReqID      := cxViewAuthPC.GetColumnByFieldName('인증처리자').Index;
          iTel        := cxViewAuthPC.GetColumnByFieldName('인증휴대폰').Index;
          iPCSeq      := cxViewAuthPC.GetColumnByFieldName('PCSeq').Index;
          iMembers    := cxViewAuthPC.GetColumnByFieldName('Members').Index;
          lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Response/Data');
          for I := 0 to lst_Result.length - 1 do
          begin
		  			with cxViewAuthPC.DataController, lst_Result.item[i].attributes do
            begin
		  				if getNamedItem('BR_NM').text <> '' then
		  				begin
		  					iBrNM := scb_BranchName.IndexOf(getNamedItem('BR_NM').text);
		  					if iBrNM >= 0 then
		  						sBrNo := scb_BranchCode.Strings[iBrNM]
		  					else
		  						sBrNo := '';
		  				end;
		  				if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB   패밀리지사일때
		  				begin
		  					if not Check_ALLHD(GT_SEL_BRNO.HDNO) then      //전체지사권한이 없을때
		  					begin
		  						if scb_FamilyBrCode.IndexOf(sBrNo) = -1 then   //권한있는 지사일경우만 그리드표기
		  						else
		  						begin
		  							Row := cxViewAuthPC.DataController.AppendRecord;
		  							Values[Row, iCompany]   := Format('%s / %s', [getNamedItem('HD_NM').text, getNamedItem('BR_NM').text]);
		  							Values[Row, iGWIP]      := getNamedItem('REMOTE_IP').text;
		  							Values[Row, iLocalIP]   := getNamedItem('LOCAL_IP').text;
		  							Values[Row, iCompName]  := getNamedItem('COMPUTER_NAME').text;
		  							Values[Row, iAuthType]  := getNamedItem('AUTH_TYPE_STR').text;
		  							Values[Row, iAuthSt]    := getNamedItem('AUTH_ST_STR').text;
		  						//  Values[Row, iFirstDt]   := GetStrToShortDateTimeStr(getNamedItem('FIRST_AUTH_DTM').text);
		  						//  Values[Row, iLastDt]    := GetStrToShortDateTimeStr(getNamedItem('LAST_AUTH_DTM').text);
		  						//  Values[Row, iExpireDt]  := GetStrToShortDateTimeStr(getNamedItem('EXPIRE_DTM').text);

		  							// 2010.12.31 연도표시추가
		  							Values[Row, iFirstDt]   := GetStrToLongDateTimeStr(getNamedItem('FIRST_AUTH_DTM').text);
		  							Values[Row, iLastDt]    := GetStrToLongDateTimeStr(getNamedItem('LAST_AUTH_DTM').text);
		  							Values[Row, iExpireDt]  := GetStrToLongDateTimeStr(getNamedItem('EXPIRE_DTM').text);

		  							Values[Row, iExpireDay] := getNamedItem('EXPIRE_DAY').text;
		  							Values[Row, iIDCount]   := getNamedItem('MEM_COUNT').text;
		  							Values[Row, iReqID]     := getNamedItem('MEM_ID').text;
		  							Values[Row, iTel]       := strtocall(getNamedItem('PHONE_NUM').text);
		  							Values[ROw, iPCSeq]     := getNamedItem('PC_SEQ').text;

		  							Members := '';
		  							sSTATUS := '';
		  							lst_Member := lst_Result.item[i].childNodes;
		  							for J := 0 to lst_Member.length - 1 do
		  							begin
		  								if lst_Member.item[J].attributes.getNamedItem('WORK_STATUS').text = '1' then sSTATUS := '교육중' else
		  								if lst_Member.item[J].attributes.getNamedItem('WORK_STATUS').text = '2' then sSTATUS := '근무중' eLSE
		  								if lst_Member.item[J].attributes.getNamedItem('WORK_STATUS').text = '3' then sSTATUS := '휴가중' ELSE
		  								if lst_Member.item[J].attributes.getNamedItem('WORK_STATUS').text = '4' then sSTATUS := '일시정지' ELSE
		  								if lst_Member.item[J].attributes.getNamedItem('WORK_STATUS').text = '9' then sSTATUS := '퇴사'
                                                                               								else sSTATUS := '';

		  								if StrToIntDef(lst_Member.item[J].attributes.getNamedItem('EXPIRE_DAY').text, -1) < 0 then sSTATUS := sSTATUS + ' 인증만료';
		  								if Members <> '' then
		  									Members := Members + #13#10;
		  								with lst_Member.item[J].attributes do
		  									Members := Members + Format('ID: %s / %s',
		  										[
		  												getNamedItem('ID').text, sSTATUS
		  										]);
		  							end;
		  							Values[ROw, iMembers]     := Members;
		  						end;
		  					end	else
		  					begin
		  						Row := cxViewAuthPC.DataController.AppendRecord;
		  						Values[Row, iCompany]   := Format('%s / %s', [getNamedItem('HD_NM').text, getNamedItem('BR_NM').text]);
		  						Values[Row, iGWIP]      := getNamedItem('REMOTE_IP').text;
		  						Values[Row, iLocalIP]   := getNamedItem('LOCAL_IP').text;
		  						Values[Row, iCompName]  := getNamedItem('COMPUTER_NAME').text;
		  						Values[Row, iAuthType]  := getNamedItem('AUTH_TYPE_STR').text;
		  						Values[Row, iAuthSt]    := getNamedItem('AUTH_ST_STR').text;
		  					//  Values[Row, iFirstDt]   := GetStrToShortDateTimeStr(getNamedItem('FIRST_AUTH_DTM').text);
		  					//  Values[Row, iLastDt]    := GetStrToShortDateTimeStr(getNamedItem('LAST_AUTH_DTM').text);
		  					//  Values[Row, iExpireDt]  := GetStrToShortDateTimeStr(getNamedItem('EXPIRE_DTM').text);

		  						// 2010.12.31 연도표시추가
		  						Values[Row, iFirstDt]   := GetStrToLongDateTimeStr(getNamedItem('FIRST_AUTH_DTM').text);
		  						Values[Row, iLastDt]    := GetStrToLongDateTimeStr(getNamedItem('LAST_AUTH_DTM').text);
		  						Values[Row, iExpireDt]  := GetStrToLongDateTimeStr(getNamedItem('EXPIRE_DTM').text);

		  						Values[Row, iExpireDay] := getNamedItem('EXPIRE_DAY').text;
		  						Values[Row, iIDCount]   := getNamedItem('MEM_COUNT').text;
		  						Values[Row, iReqID]     := getNamedItem('MEM_ID').text;
		  						Values[Row, iTel]       := strtocall(getNamedItem('PHONE_NUM').text);
		  						Values[ROw, iPCSeq]     := getNamedItem('PC_SEQ').text;

		  						Members := '';
		  						sSTATUS := '';
		  						lst_Member := lst_Result.item[i].childNodes;
		  						for J := 0 to lst_Member.length - 1 do
		  						begin
		  							if lst_Member.item[J].attributes.getNamedItem('WORK_STATUS').text = '1' then sSTATUS := '교육중' else
		  							if lst_Member.item[J].attributes.getNamedItem('WORK_STATUS').text = '2' then sSTATUS := '근무중' else
		  							if lst_Member.item[J].attributes.getNamedItem('WORK_STATUS').text = '3' then sSTATUS := '휴가중' else
		  							if lst_Member.item[J].attributes.getNamedItem('WORK_STATUS').text = '4' then sSTATUS := '일시정지' else
		  							if lst_Member.item[J].attributes.getNamedItem('WORK_STATUS').text = '9' then sSTATUS := '퇴사'
                                                                        		  							else sSTATUS := '';

		  							if StrToIntDef(lst_Member.item[J].attributes.getNamedItem('EXPIRE_DAY').text, -1) < 0 then sSTATUS := sSTATUS + ' 인증만료';
		  							if Members <> '' then
		  								Members := Members + #13#10;
		  							with lst_Member.item[J].attributes do
		  								Members := Members + Format('ID: %s / %s', [getNamedItem('ID').text, sSTATUS]);
		  						end;
		  						Values[ROw, iMembers]     := Members;
		  					end;
		  				end	else
		  				begin
		  					Row := cxViewAuthPC.DataController.AppendRecord;
		  					Values[Row, iCompany]   := Format('%s / %s', [getNamedItem('HD_NM').text, getNamedItem('BR_NM').text]);
		  					Values[Row, iGWIP]      := getNamedItem('REMOTE_IP').text;
		  					Values[Row, iLocalIP]   := getNamedItem('LOCAL_IP').text;
		  					Values[Row, iCompName]  := getNamedItem('COMPUTER_NAME').text;
		  					Values[Row, iAuthType]  := getNamedItem('AUTH_TYPE_STR').text;
		  					Values[Row, iAuthSt]    := getNamedItem('AUTH_ST_STR').text;
		  				//  Values[Row, iFirstDt]   := GetStrToShortDateTimeStr(getNamedItem('FIRST_AUTH_DTM').text);
		  				//  Values[Row, iLastDt]    := GetStrToShortDateTimeStr(getNamedItem('LAST_AUTH_DTM').text);
		  				//  Values[Row, iExpireDt]  := GetStrToShortDateTimeStr(getNamedItem('EXPIRE_DTM').text);

		  					// 2010.12.31 연도표시추가
		  					Values[Row, iFirstDt]   := GetStrToLongDateTimeStr(getNamedItem('FIRST_AUTH_DTM').text);
		  					Values[Row, iLastDt]    := GetStrToLongDateTimeStr(getNamedItem('LAST_AUTH_DTM').text);
		  					Values[Row, iExpireDt]  := GetStrToLongDateTimeStr(getNamedItem('EXPIRE_DTM').text);

		  					Values[Row, iExpireDay] := getNamedItem('EXPIRE_DAY').text;
		  					Values[Row, iIDCount]   := getNamedItem('MEM_COUNT').text;
		  					Values[Row, iReqID]     := getNamedItem('MEM_ID').text;
		  					Values[Row, iTel]       := strtocall(getNamedItem('PHONE_NUM').text);
		  					Values[ROw, iPCSeq]     := getNamedItem('PC_SEQ').text;

		  					Members := '';
		  					sSTATUS := '';
		  					lst_Member := lst_Result.item[i].childNodes;
		  					for J := 0 to lst_Member.length - 1 do
		  					begin
		  						if lst_Member.item[J].attributes.getNamedItem('WORK_STATUS').text = '1' then sSTATUS := '교육중' ELSE
		  						if lst_Member.item[J].attributes.getNamedItem('WORK_STATUS').text = '2' then sSTATUS := '근무중' ELSE
		  						if lst_Member.item[J].attributes.getNamedItem('WORK_STATUS').text = '3' then sSTATUS := '휴가중' ELSE
		  						if lst_Member.item[J].attributes.getNamedItem('WORK_STATUS').text = '4' then sSTATUS := '일시정지' ELSE
		  						if lst_Member.item[J].attributes.getNamedItem('WORK_STATUS').text = '9' then sSTATUS := '퇴사'
                                                                         		  						else sSTATUS := '';

//	  							if strtoint(lst_Member.item[J].attributes.getNamedItem('EXPIRE_DAY').text) < 0 then sSTATUS := sSTATUS + ' 인증만료';
		  						if StrToIntDef(lst_Member.item[J].attributes.getNamedItem('EXPIRE_DAY').text, -1) < 0 then sSTATUS := sSTATUS + ' 인증만료';
		  						if Members <> '' then
		  							Members := Members + #13#10;
		  						with lst_Member.item[J].attributes do
		  							Members := Members + Format('ID: %s / %s', [getNamedItem('ID').text, sSTATUS]);
		  					end;
		  					Values[ROw, iMembers]     := Members;
		  				end;
		  			end;
          end;;
          Result := True;
        finally
          cxViewAuthPC.EndUpdate;
        end;
      end else
      begin
        Result := True;
      end;
    finally
      xdom := Nil;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_USR.proc_UserStat_Search;
var
  sWhere: string;
	ls_TxQry, ls_TxLoad, sFromDate, sEndDate, sQueryTemp, sBrNo : string; // XML File Load
  slReceive: TStringList;
  rv_str, ls_rxxml: string;
	ErrCode, i: integer;
begin
  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('직원별콜현황') then Exit;

  sWhere := '';
  if GT_USERIF.LV = '60' then
  begin
    if GT_SEL_BRNO.GUBUN <> '1' then
    begin
      if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
      begin
        for i := 0 to scb_FamilyBrCode.Count -1 do
        begin
          if i = 0 then sBrNo := '''' + scb_FamilyBrCode[i] + '''' else
          sBrNo := sBrNo + ', ' + '''' + scb_FamilyBrCode[i] + '''';
        end;
        if Search_Gubun In [0, 1] then
          sWhere := ' WHERE BR_NO IN (' + sBrNo + ') ' else
        if Search_Gubun In [2, 3] then
          sWhere := ' WHERE CC_NO IN (' + sBrNo + ') ';
      end else
      if Search_Gubun In [0, 1] then
        sWhere := Format(' WHERE BR_NO IN (SELECT BR_NO FROM CDMS_BRANCH WHERE HD_NO = ''%s'' AND USE_YN = ''y'')', [GT_SEL_BRNO.HDNO]) else
      if Search_Gubun In [2, 3] then
        sWhere := Format(' WHERE CC_NO IN (SELECT BR_NO FROM CDMS_BRANCH WHERE HD_NO = ''%s'' AND USE_YN = ''y'')', [GT_SEL_BRNO.HDNO]) else

      cxHdNo.Text := GT_SEL_BRNO.HDNO;
      cxBrNo.Text := '';
    end else
    if GT_SEL_BRNO.GUBUN = '1' then
    begin
      if Search_Gubun In [0, 1] then
        sWhere := Format(' WHERE HD_NO = ''%s'' AND BR_NO = ''%s'' ', [GT_SEL_BRNO.HDNO, GT_SEL_BRNO.BrNo]) else
      if Search_Gubun In [2, 3] then
        sWhere := Format(' WHERE HD_NO = ''%s'' AND CC_NO = ''%s'' ', [GT_SEL_BRNO.HDNO, GT_SEL_BRNO.BrNo]);
      cxHdNo.Text := GT_SEL_BRNO.HDNO;
      cxBrNo.Text := GT_SEL_BRNO.BrNo;
    end;
  end else
  begin
    if Search_Gubun In [0, 1] then
      sWhere := Format(' WHERE HD_NO = ''%s'' AND BR_NO = ''%s'' ', [GT_SEL_BRNO.HDNO, GT_SEL_BRNO.BrNo]) else
    if Search_Gubun In [2, 3] then
      sWhere := Format(' WHERE HD_NO = ''%s'' AND CC_NO = ''%s'' ', [GT_SEL_BRNO.HDNO, GT_SEL_BRNO.BrNo]);
    cxHdNo.Text := GT_SEL_BRNO.HDNO;
    cxBrNo.Text := GT_SEL_BRNO.BrNo;
  end;

  if Trim(cxedUserStatId.Text) <> '' then
    sWhere := sWhere + ' AND MEM_ID LIKE ''%' + Trim(Param_Filtering(cxedUserStatId.Text)) + '%'' ';

  if cxDtStartA7.Enabled then
  begin
    if Search_Gubun In [0, 1] then
    begin
      sFromDate := FormatDateTime('yyyymmdd', cxDtStartA7.Date);
      sEndDate  := FormatDateTime('yyyymmdd', cxDtEndA7.Date - 1);
      sWhere := sWhere + Format(' AND IN_DATE BETWEEN TO_DATE(''%s'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''%S'',''YYYYMMDDHH24MISS'') ', [sFromDate, sEndDate])
    end else
    if Search_Gubun In [2, 3] then
    begin
      sFromDate := FormatDateTime('yyyy-mm-dd', cxDtStartA7.Date);
      sEndDate  := FormatDateTime('yyyy-mm-dd', cxDtEndA7.Date - 1);
      sWhere := sWhere + Format(' AND BUSINESS_DAY BETWEEN ''%s'' AND ''%S'' ', [sFromDate, sEndDate]);
    end;
  end;

  if TCK_USER_PER.USR_UserCall_N_ADMIN = '1' then //관리자 제외 권한시	 20140520 KHS
  begin
    sWhere := sWhere + ' AND MEM_ID IN (SELECT MEM_ID FROM CDMS_MEMBER WHERE MEM_LEVEL = ''10'') '
  end;

  ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
  if Search_Gubun = 0 then fGet_BlowFish_Query(GSQ_USER_STAT_LIST     , sQueryTemp) else
  if Search_Gubun = 1 then fGet_BlowFish_Query(GSQ_USER_STAT_DATE_LIST, sQueryTemp) else
  if Search_Gubun = 2 then fGet_BlowFish_Query(GSQ_USER_CALL_LIST     , sQueryTemp) else
  if Search_Gubun = 3 then fGet_BlowFish_Query(GSQ_USER_CALL_DATE_LIST, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, [sWhere]);

  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', self.Caption + '7', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

  screen.Cursor := crHourGlass;
  btnSearchA7.Enabled := False;
  slReceive := TStringList.Create;
  try
    frm_Main.proc_SocketWork(False);
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
    btnSearchA7.Enabled := True;
    screen.Cursor := crDefault;
    FreeAndNil(slReceive);
    frm_Main.proc_SocketWork(True);
    Frm_Flash.Hide;
  end;

end;

end.

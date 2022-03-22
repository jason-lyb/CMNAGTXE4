unit xe_SET;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IniFiles, cxPCdxBarPopupMenu, cxGraphics, cxControls, MSXML2_TLB,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, xe_GNL,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCalc,
  cxTextEdit, cxLabel, cxContainer, Vcl.Menus, Vcl.StdCtrls, cxRadioGroup,
  cxCheckBox, cxCurrencyEdit, cxListBox, cxMaskEdit, cxDropDownEdit, cxButtons,
  cxGroupBox, Vcl.Samples.Gauges, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.ExtCtrls, cxPC, dxBarBuiltInMenu, dxSkinsCore, dxSkinscxPCPainter,
  cxSpinEdit, Vcl.Grids, Vcl.ValEdit, cxMemo,
  dxDateRanges, cxCustomListBox, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver, cxTL, cxTLdxBarBuiltInMenu,
  cxInplaceContainer, cxSplitter, dxScrollbarAnnotations;

type
  TFrm_SET = class(TForm)
    ColorDialog1: TColorDialog;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    cxPageControl2: TcxPageControl;
    cxTabSheet6: TcxTabSheet;
    cxLabel49: TcxLabel;
    cb_chart_stcity: TcxComboBox;
    cb_chart_stward: TcxComboBox;
    cxGrid1: TcxGrid;
    asg_chart_st: TcxGridDBTableView;
    cxGridDBColumnBGridBebinList_chart_stColumn1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxLabel122: TcxLabel;
    cxLabel50: TcxLabel;
    cxLabel52: TcxLabel;
    cb_chart_edcity: TcxComboBox;
    cb_chart_edward: TcxComboBox;
    cxGrid2: TcxGrid;
    asg_chart_ed: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxLabel51: TcxLabel;
    cxLabel53: TcxLabel;
    cxButton18: TcxButton;
    cxButton19: TcxButton;
    cxButton20: TcxButton;
    RbCheckBox2: TcxCheckBox;
    ed_chart_value: TcxCurrencyEdit;
    ed_chart_modify: TcxCurrencyEdit;
    Panel1: TPanel;
    cxButton21: TcxButton;
    cxButton22: TcxButton;
    cxButton23: TcxButton;
    cxButton24: TcxButton;
    cxButton25: TcxButton;
    cxButton26: TcxButton;
    cxGrid3: TcxGrid;
    asg_Chart_charge: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    asg_Chart_chargeColumn1: TcxGridDBColumn;
    asg_Chart_chargeColumn2: TcxGridDBColumn;
    asg_Chart_chargeColumn3: TcxGridDBColumn;
    asg_Chart_chargeColumn4: TcxGridDBColumn;
    asg_Chart_chargeColumn5: TcxGridDBColumn;
    asg_Chart_chargeColumn6: TcxGridDBColumn;
    asg_Chart_chargeColumn7: TcxGridDBColumn;
    asg_Chart_chargeColumn8: TcxGridDBColumn;
    asg_Chart_chargeColumn9: TcxGridDBColumn;
    asg_Chart_chargeColumn10: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    Panel8: TPanel;
    cxProgressBar1: TGauge;
    cbChartName: TcxComboBox;
    ed_Charge_NewNm: TcxTextEdit;
    cxButton7: TcxButton;
    lbChartCd: TcxListBox;
    cxLabel116: TcxLabel;
    cxLabel56: TcxLabel;
    cxTabSheet7: TcxTabSheet;
    Panel2: TPanel;
    cxButton27: TcxButton;
    cxButton28: TcxButton;
    cxButton29: TcxButton;
    cxButton30: TcxButton;
    cxButton31: TcxButton;
    cxButton32: TcxButton;
    cxGrid6: TcxGrid;
    asg_mod_dis: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    asg_mod_disColumn1: TcxGridDBColumn;
    asg_mod_disColumn2: TcxGridDBColumn;
    asg_mod_disColumn3: TcxGridDBColumn;
    asg_mod_disColumn4: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    Panel9: TPanel;
    cxProgressBar2: TGauge;
    Panel3: TPanel;
    cxLabel61: TcxLabel;
    cb_dis_stcity: TcxComboBox;
    cb_dis_stward: TcxComboBox;
    cxGrid4: TcxGrid;
    asg_dis_st: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxLabel54: TcxLabel;
    cxLabel62: TcxLabel;
    cxLabel64: TcxLabel;
    cb_dis_edcity: TcxComboBox;
    cb_dis_edward: TcxComboBox;
    cxGrid5: TcxGrid;
    asg_dis_ed: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    cxLabel63: TcxLabel;
    cxLabel65: TcxLabel;
    ed_lowvalue: TcxCurrencyEdit;
    cxButton33: TcxButton;
    ed_dis_gerterm: TcxCurrencyEdit;
    ed_dis_gervalue: TcxCurrencyEdit;
    ed_dis_overterm: TcxCurrencyEdit;
    ed_dis_overvalue: TcxCurrencyEdit;
    rchk_dis_same: TcxCheckBox;
    cxLabel57: TcxLabel;
    cxLabel68: TcxLabel;
    cxLabel69: TcxLabel;
    cxLabel70: TcxLabel;
    cxLabel71: TcxLabel;
    cbDisName: TcxComboBox;
    ed_Dis_NewNm: TcxTextEdit;
    cxButton41: TcxButton;
    lbDisCd: TcxListBox;
    cxTabSheet8: TcxTabSheet;
    Panel4: TPanel;
    cxLabel74: TcxLabel;
    cb_term_stcity: TcxComboBox;
    cb_term_stward: TcxComboBox;
    cxGrid7: TcxGrid;
    asg_term_st: TcxGridDBTableView;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridLevel7: TcxGridLevel;
    cxLabel66: TcxLabel;
    cxLabel75: TcxLabel;
    cxLabel77: TcxLabel;
    cb_term_edcity: TcxComboBox;
    cb_term_edward: TcxComboBox;
    cxGrid8: TcxGrid;
    asg_term_ed: TcxGridDBTableView;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
    cxLabel76: TcxLabel;
    cxLabel78: TcxLabel;
    ed_bvalue: TcxCurrencyEdit;
    rb_gervalue_save: TcxButton;
    rchk_same_term: TcxCheckBox;
    cxLabel81: TcxLabel;
    cb_term_type2: TcxComboBox;
    rb_term_type_mod: TcxButton;
    cb_term_type3: TcxComboBox;
    cxLabel72: TcxLabel;
    cxLabel80: TcxLabel;
    cxLabel82: TcxLabel;
    Panel5: TPanel;
    cxButton35: TcxButton;
    cxButton36: TcxButton;
    cxButton37: TcxButton;
    cxButton38: TcxButton;
    cxButton39: TcxButton;
    cxButton40: TcxButton;
    cxGrid9: TcxGrid;
    asg_term_modify: TcxGridDBTableView;
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
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    Panel10: TPanel;
    cxProgressBar3: TGauge;
    cbTermName: TcxComboBox;
    ed_Term_NewNm: TcxTextEdit;
    cxButton43: TcxButton;
    lbTermCd: TcxListBox;
    lbTermTypeCd: TcxListBox;
    cxTabSheet12: TcxTabSheet;
    cbFirstName: TcxComboBox;
    cxButton45: TcxButton;
    lbFirstCd: TcxListBox;
    cxLabel111: TcxLabel;
    cb_First_stcity: TcxComboBox;
    cb_First_stward: TcxComboBox;
    cxGrid14: TcxGrid;
    asg_First_st: TcxGridDBTableView;
    cxGridDBColumn65: TcxGridDBColumn;
    cxGridLevel14: TcxGridLevel;
    cxLabel79: TcxLabel;
    cxLabel112: TcxLabel;
    cxLabel114: TcxLabel;
    cb_First_edcity: TcxComboBox;
    cb_First_edward: TcxComboBox;
    cxGrid15: TcxGrid;
    asg_First_ed: TcxGridDBTableView;
    cxGridDBColumn66: TcxGridDBColumn;
    cxGridLevel15: TcxGridLevel;
    cxLabel113: TcxLabel;
    cxLabel115: TcxLabel;
    cxButton48: TcxButton;
    cxButton49: TcxButton;
    cxButton50: TcxButton;
    rchk_same_first: TcxCheckBox;
    cxLabel120: TcxLabel;
    ed_First_value: TcxCurrencyEdit;
    ed_First_modify: TcxCurrencyEdit;
    Panel7: TPanel;
    cxButton51: TcxButton;
    cxButton52: TcxButton;
    cxButton53: TcxButton;
    cxButton54: TcxButton;
    cxButton55: TcxButton;
    cxButton56: TcxButton;
    cxGrid16: TcxGrid;
    asg_First_charge: TcxGridDBTableView;
    cxGridDBColumn67: TcxGridDBColumn;
    cxGridDBColumn68: TcxGridDBColumn;
    cxGridDBColumn69: TcxGridDBColumn;
    cxGridDBColumn70: TcxGridDBColumn;
    cxGridDBColumn71: TcxGridDBColumn;
    cxGridDBColumn72: TcxGridDBColumn;
    cxGridDBColumn73: TcxGridDBColumn;
    cxGridDBColumn74: TcxGridDBColumn;
    cxGridDBColumn75: TcxGridDBColumn;
    cxGridDBColumn76: TcxGridDBColumn;
    cxGridDBColumn77: TcxGridDBColumn;
    cxGridLevel16: TcxGridLevel;
    Panel11: TPanel;
    cxProgressBar4: TGauge;
    ed_First_NewNm: TcxTextEdit;
    pnl_ReName: TPanel;
    Gauge1: TGauge;
    cxLabel123: TcxLabel;
    cxLabel124: TcxLabel;
    ed_charge_NewName: TcxTextEdit;
    cxButton57: TcxButton;
    cxButton58: TcxButton;
    cxLabel58: TcxLabel;
    pnl_Option: TPanel;
    cxButton34: TcxButton;
    cxButton42: TcxButton;
    Rb_Save: TcxRadioButton;
    Rb_View: TcxRadioButton;
    Gauge2: TGauge;
    Label5: TLabel;
    Label6: TLabel;
    Shape3: TShape;
    Lbl_sFile: TLabel;
    Lbl_sExe: TLabel;
    Label7: TLabel;
    dlgOpen: TOpenDialog;
    appTabSheet1: TcxTabSheet;
    pnl3: TPanel;
    cbFirstDetailName: TcxComboBox;
    ed_First_Detail_NewNm: TcxTextEdit;
    btn7: TcxButton;
    lbFirstDetailCd: TcxListBox;
    pnl4: TPanel;
    cxLabel182: TcxLabel;
    cb_First_Detail_stcity: TcxComboBox;
    cb_First_Detail_stward: TcxComboBox;
    cxGrid23: TcxGrid;
    asg_First_Detail_St: TcxGridDBTableView;
    cxGridDBColumn78: TcxGridDBColumn;
    cxGridLevel18: TcxGridLevel;
    cxLabel183: TcxLabel;
    cxLabel184: TcxLabel;
    cxLabel185: TcxLabel;
    cb_First_Detail_edcity: TcxComboBox;
    cb_First_Detail_edward: TcxComboBox;
    cxGrid24: TcxGrid;
    asg_First_Detail_Ed: TcxGridDBTableView;
    cxGridDBColumn79: TcxGridDBColumn;
    cxGridLevel23: TcxGridLevel;
    cxLabel186: TcxLabel;
    cxLabel187: TcxLabel;
    btn8: TcxButton;
    btn9: TcxButton;
    btn10: TcxButton;
    rchk_same_first_Detail: TcxCheckBox;
    cxLabel189: TcxLabel;
    ed_First_Detail_value: TcxCurrencyEdit;
    ed_First_Detail_modify: TcxCurrencyEdit;
    Panel14: TPanel;
    cxButton17: TcxButton;
    cxButton61: TcxButton;
    cxButton62: TcxButton;
    cxButton63: TcxButton;
    cxButton64: TcxButton;
    cxButton65: TcxButton;
    cxGrid25: TcxGrid;
    asg_First_Detail_charge: TcxGridDBTableView;
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
    cxGridLevel24: TcxGridLevel;
    Panel15: TPanel;
    cxProgressBar5: TGauge;
    cxGridDBColumn91: TcxGridDBColumn;
    cxGridDBColumn92: TcxGridDBColumn;
    PnlMainA3: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxLabel218: TcxLabel;
    cxLabel1: TcxLabel;
    Shape6: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape7: TShape;
    cxGroupBox5: TcxGroupBox;
    cxGroupBox6: TcxGroupBox;
    cxGroupBox7: TcxGroupBox;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    cxGroupBox8: TcxGroupBox;
    Shape11: TShape;
    Shape12: TShape;
    cxGroupBox9: TcxGroupBox;
    Shape15: TShape;
    Shape16: TShape;
    cxGroupBox11: TcxGroupBox;
    cxGroupBox10: TcxGroupBox;
    Shape17: TShape;
    cxGroupBox12: TcxGroupBox;
    Shape18: TShape;
    cxGroupBox13: TcxGroupBox;
    cxGroupBox14: TcxGroupBox;
    cxGroupBox15: TcxGroupBox;
    Shape21: TShape;
    Shape22: TShape;
    cxGroupBox16: TcxGroupBox;
    cxGroupBox17: TcxGroupBox;
    cxGroupBox18: TcxGroupBox;
    Shape23: TShape;
    Shape24: TShape;
    cxGroupBox19: TcxGroupBox;
    cxGroupBox20: TcxGroupBox;
    Shape25: TShape;
    cxGroupBox21: TcxGroupBox;
    Shape26: TShape;
    Shape29: TShape;
    Shape30: TShape;
    Shape31: TShape;
    Shape32: TShape;
    cxGroupBox22: TcxGroupBox;
    cxGroupBox23: TcxGroupBox;
    cxGroupBox24: TcxGroupBox;
    Shape33: TShape;
    Shape34: TShape;
    Shape37: TShape;
    Shape38: TShape;
    Shape39: TShape;
    Shape40: TShape;
    cxGroupBox25: TcxGroupBox;
    cxGroupBox26: TcxGroupBox;
    cxGroupBox27: TcxGroupBox;
    Shape41: TShape;
    Shape42: TShape;
    Shape43: TShape;
    Shape44: TShape;
    cxLabel10: TcxLabel;
    lblSosokNameA3: TcxLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    PnlMainA4: TPanel;
    Shape46: TShape;
    Shape47: TShape;
    cxPageControl3: TcxPageControl;
    cxTabSheet9: TcxTabSheet;
    cxGrid11: TcxGrid;
    cxGrid_Chart: TcxGridDBTableView;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridLevel11: TcxGridLevel;
    cxTabSheet10: TcxTabSheet;
    cxGrid12: TcxGrid;
    cxGrid_Dis: TcxGridDBTableView;
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
    cxGridLevel12: TcxGridLevel;
    cxTabSheet11: TcxTabSheet;
    cxGrid13: TcxGrid;
    cxGrid_Term: TcxGridDBTableView;
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
    cxGridLevel13: TcxGridLevel;
    lbchargenm: TcxListBox;
    lbchargenmcd: TcxListBox;
    Panel6: TPanel;
    Shape48: TShape;
    Shape49: TShape;
    cxGrid10: TcxGrid;
    asg_Br_Charge: TcxGridDBTableView;
    asg_Br_ChargeColumn1: TcxGridDBColumn;
    asg_Br_ChargeColumn2: TcxGridDBColumn;
    asg_Br_ChargeColumn3: TcxGridDBColumn;
    asg_Br_ChargeColumn4: TcxGridDBColumn;
    asg_Br_ChargeColumn5: TcxGridDBColumn;
    asg_Br_ChargeColumn18: TcxGridDBColumn;
    asg_Br_ChargeColumn19: TcxGridDBColumn;
    asg_Br_ChargeColumn6: TcxGridDBColumn;
    asg_Br_ChargeColumn7: TcxGridDBColumn;
    asg_Br_ChargeColumn8: TcxGridDBColumn;
    asg_Br_ChargeColumn15: TcxGridDBColumn;
    asg_Br_ChargeColumn16: TcxGridDBColumn;
    asg_Br_ChargeColumn17: TcxGridDBColumn;
    asg_Br_ChargeColumn9: TcxGridDBColumn;
    asg_Br_ChargeColumn10: TcxGridDBColumn;
    asg_Br_ChargeColumn11: TcxGridDBColumn;
    asg_Br_ChargeColumn20: TcxGridDBColumn;
    asg_Br_ChargeColumn12: TcxGridDBColumn;
    asg_Br_ChargeColumn13: TcxGridDBColumn;
    asg_Br_ChargeColumn14: TcxGridDBColumn;
    cxGridLevel10: TcxGridLevel;
    cxGroupBox28: TcxGroupBox;
    btnFirstCd: TcxButton;
    cb_Charge_Gubun: TcxComboBox;
    cb_charge_name: TcxComboBox;
    cb_Charge_First: TcxComboBox;
    cb_Charge_PassG: TcxComboBox;
    cb_Charge_Pass: TcxComboBox;
    cb_Charge_FirstD: TcxComboBox;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    ed_br_Name: TcxTextEdit;
    ed_KeyNumber: TcxTextEdit;
    ed_passvalue: TcxCurrencyEdit;
    rb_first_charge: TcxButton;
    cxGroupBox29: TcxGroupBox;
    RbRadioButton5: TcxRadioButton;
    RbRadioButton6: TcxRadioButton;
    cb_Charge_Gubun2: TcxComboBox;
    cb_charge_name2: TcxComboBox;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    br_no: TcxTextEdit;
    ed_charge_cd: TcxTextEdit;
    ed_charge_row: TcxTextEdit;
    cxGroupBox30: TcxGroupBox;
    cxLabel13: TcxLabel;
    lblSosokNameA4: TcxLabel;
    cxButton1: TcxButton;
    ed_charge_cd2: TcxTextEdit;
    vlChargeGroup: TValueListEditor;
    cxGroupBox31: TcxGroupBox;
    cbb1: TcxComboBox;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    edt_EdHour: TcxSpinEdit;
    edt_EdMin: TcxSpinEdit;
    edt_StHour: TcxSpinEdit;
    edt_StMin: TcxSpinEdit;
    lbChargeCd2: TcxListBox;
    lbChargeCd: TcxListBox;
    lbchargenmcd2: TcxListBox;
    lbchargenm2: TcxListBox;
    vlChargeGroup2: TValueListEditor;
    PnlMainA5: TPanel;
    Shape51: TShape;
    Shape52: TShape;
    cxLabel30: TcxLabel;
    cxBPageControl3: TcxPageControl;
    cxTabSheet13: TcxTabSheet;
    cxGrid17: TcxGrid;
    cxGrid_BChart: TcxGridDBTableView;
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
    cxGridLevel17: TcxGridLevel;
    cxTabSheet14: TcxTabSheet;
    cxGrid18: TcxGrid;
    cxGrid_BDis: TcxGridDBTableView;
    cxGridDBColumn103: TcxGridDBColumn;
    cxGridDBColumn104: TcxGridDBColumn;
    cxGridDBColumn105: TcxGridDBColumn;
    cxGridDBColumn106: TcxGridDBColumn;
    cxGridDBColumn107: TcxGridDBColumn;
    cxGridDBColumn108: TcxGridDBColumn;
    cxGridDBColumn109: TcxGridDBColumn;
    cxGridDBColumn110: TcxGridDBColumn;
    cxGridDBColumn111: TcxGridDBColumn;
    cxGridDBColumn112: TcxGridDBColumn;
    cxGridDBColumn113: TcxGridDBColumn;
    cxGridDBColumn114: TcxGridDBColumn;
    cxGridDBColumn115: TcxGridDBColumn;
    cxGridDBColumn116: TcxGridDBColumn;
    cxGridLevel19: TcxGridLevel;
    cxTabSheet15: TcxTabSheet;
    cxGrid19: TcxGrid;
    cxGrid_BTerm: TcxGridDBTableView;
    cxGridDBColumn117: TcxGridDBColumn;
    cxGridDBColumn118: TcxGridDBColumn;
    cxGridDBColumn119: TcxGridDBColumn;
    cxGridDBColumn120: TcxGridDBColumn;
    cxGridDBColumn121: TcxGridDBColumn;
    cxGridDBColumn122: TcxGridDBColumn;
    cxGridDBColumn123: TcxGridDBColumn;
    cxGridDBColumn124: TcxGridDBColumn;
    cxGridDBColumn125: TcxGridDBColumn;
    cxGridDBColumn126: TcxGridDBColumn;
    cxGridDBColumn127: TcxGridDBColumn;
    cxGridDBColumn128: TcxGridDBColumn;
    cxGridLevel20: TcxGridLevel;
    cxListBox1: TcxListBox;
    cxListBox2: TcxListBox;
    cxListBox3: TcxListBox;
    Panel12: TPanel;
    Shape53: TShape;
    Shape54: TShape;
    cxGrid20: TcxGrid;
    asg_BBr_Charge: TcxGridDBTableView;
    asg_BBr_ChargeColumn1: TcxGridDBColumn;
    asg_BBr_ChargeColumn2: TcxGridDBColumn;
    asg_BBr_ChargeColumn3: TcxGridDBColumn;
    asg_BBr_ChargeColumn4: TcxGridDBColumn;
    asg_BBr_ChargeColumn5: TcxGridDBColumn;
    asg_BBr_ChargeColumn6: TcxGridDBColumn;
    asg_BBr_ChargeColumn7: TcxGridDBColumn;
    asg_BBr_ChargeColumn8: TcxGridDBColumn;
    asg_BBr_ChargeColumn9: TcxGridDBColumn;
    asg_BBr_ChargeColumn10: TcxGridDBColumn;
    asg_BBr_ChargeColumn11: TcxGridDBColumn;
    asg_BBr_ChargeColumn12: TcxGridDBColumn;
    asg_BBr_ChargeColumn13: TcxGridDBColumn;
    asg_BBr_ChargeColumn14: TcxGridDBColumn;
    asg_BBr_ChargeColumn15: TcxGridDBColumn;
    asg_BBr_ChargeColumn16: TcxGridDBColumn;
    asg_BBr_ChargeColumn17: TcxGridDBColumn;
    asg_BBr_ChargeColumn18: TcxGridDBColumn;
    asg_BBr_ChargeColumn19: TcxGridDBColumn;
    cxGridLevel21: TcxGridLevel;
    cxGroupBox32: TcxGroupBox;
    btnBFirstCd: TcxButton;
    cb_BCharge_Gubun: TcxComboBox;
    cb_Bcharge_name: TcxComboBox;
    BComboBox1: TcxComboBox;
    BComboBox2: TcxComboBox;
    BComboBox3: TcxComboBox;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    cxLabel35: TcxLabel;
    cxLabel36: TcxLabel;
    cxLabel37: TcxLabel;
    cxBLabel94: TcxLabel;
    ed_Bbr_Name: TcxTextEdit;
    ed_BKeyNumber: TcxTextEdit;
    ed_Bpassvalue: TcxCurrencyEdit;
    rb_Bfirst_charge: TcxButton;
    cxGroupBox33: TcxGroupBox;
    RbBRadioButton5: TcxRadioButton;
    RbBRadioButton6: TcxRadioButton;
    cxLabel38: TcxLabel;
    ed_Bbg_Name: TcxTextEdit;
    Cbr_no: TcxTextEdit;
    ed_Bcharge_cd: TcxTextEdit;
    ed_Bcharge_row: TcxTextEdit;
    cxGroupBox34: TcxGroupBox;
    lblSosokNameA5: TcxLabel;
    BtnSearch: TcxButton;
    lbBChargeCd: TcxListBox;
    lbBchargenm: TcxListBox;
    lbBchargenmcd: TcxListBox;
    Cb_Code: TcxTextEdit;
    vlBChargeGroup: TValueListEditor;
    cxGroupBox35: TcxGroupBox;
    cbBb1: TcxComboBox;
    cxLabel39: TcxLabel;
    cxLabel40: TcxLabel;
    cxLabel41: TcxLabel;
    cxLabel42: TcxLabel;
    cxLabel43: TcxLabel;
    cxLabel44: TcxLabel;
    edt_BEdHour: TcxSpinEdit;
    edt_BEdMin: TcxSpinEdit;
    edt_BStHour: TcxSpinEdit;
    edt_BStMin: TcxSpinEdit;
    PnlMainA6: TPanel;
    Shape56: TShape;
    Shape57: TShape;
    cxGroupBox36: TcxGroupBox;
    lblSosokNameA6: TcxLabel;
    cxGroupBox37: TcxGroupBox;
    cxGrid21: TcxGrid;
    cxViewPrem: TcxGridDBTableView;
    asgView1Column1: TcxGridDBColumn;
    asgView1Column2: TcxGridDBColumn;
    asgView1Column3: TcxGridDBColumn;
    cxLevel1: TcxGridLevel;
    cxGroupBox38: TcxGroupBox;
    btnPIns: TcxButton;
    btnPUpd: TcxButton;
    cbb2: TcxComboBox;
    cxLabel47: TcxLabel;
    cxLabel48: TcxLabel;
    edtInpcbb2: TcxTextEdit;
    cxGroupBox39: TcxGroupBox;
    btnPDDel: TcxButton;
    btnPDIns: TcxButton;
    btnPDUpd: TcxButton;
    cxLabel55: TcxLabel;
    cxLabel59: TcxLabel;
    cxLabel60: TcxLabel;
    cxLabel67: TcxLabel;
    edtEdRange: TcxTextEdit;
    edtReRange: TcxTextEdit;
    edtStRange: TcxTextEdit;
    cxGroupBox40: TcxGroupBox;
    cxLabel73: TcxLabel;
    PnlMainA7: TPanel;
    Shape63: TShape;
    Shape64: TShape;
    cxGroupBox41: TcxGroupBox;
    lblSosokNameA7: TcxLabel;
    btn1: TcxButton;
    cxGrid22: TcxGrid;
    cxView1: TcxGridDBTableView;
    asg1: TcxGridDBColumn;
    asg2: TcxGridDBColumn;
    asgView1Column4: TcxGridDBColumn;
    asgView1Column10: TcxGridDBColumn;
    asgView1Column5: TcxGridDBColumn;
    asgView1Column6: TcxGridDBColumn;
    asgView1Column7: TcxGridDBColumn;
    asgView1Column8: TcxGridDBColumn;
    asgView1Column9: TcxGridDBColumn;
    cxLevel2: TcxGridLevel;
    Panel13: TPanel;
    cxGroupBox42: TcxGroupBox;
    Shape72: TShape;
    btn2: TcxButton;
    cxLabel95: TcxLabel;
    cxLabel96: TcxLabel;
    cxLabel97: TcxLabel;
    cxLabel98: TcxLabel;
    cxLabel99: TcxLabel;
    cxLabel100: TcxLabel;
    cxLabel155: TcxLabel;
    cxLabel156: TcxLabel;
    edt1: TcxTextEdit;
    edt2: TcxTextEdit;
    edt3: TcxTextEdit;
    edt4: TcxTextEdit;
    edt5: TcxTextEdit;
    mmoDESC: TcxMemo;
    mmoDNIS: TcxMemo;
    btnCIDXESet: TcxButton;
    cxLabel84: TcxLabel;
    edtCallCenterGubun: TcxTextEdit;
    pnlCIDXESet: TPanel;
    Shape75: TShape;
    cxGroupBox43: TcxGroupBox;
    cxLabel85: TcxLabel;
    cxLabel86: TcxLabel;
    cxLabel87: TcxLabel;
    cxLabel88: TcxLabel;
    edtCIDXE1ID: TcxTextEdit;
    edtCIDXE1PW: TcxTextEdit;
    edtCIDXE1ServerNAME: TcxTextEdit;
    edtCIDXE1MEMO: TcxMemo;
    btnCIDXE1IDCheck: TcxButton;
    cxLabel89: TcxLabel;
    edtCIDXE1PW_COMF: TcxTextEdit;
    edtCIDXE1: TcxTextEdit;
    btnCIDXE1SAVE: TcxButton;
    cxGroupBox44: TcxGroupBox;
    cxLabel90: TcxLabel;
    cxLabel91: TcxLabel;
    cxLabel92: TcxLabel;
    cxLabel93: TcxLabel;
    edtCIDXE2ID: TcxTextEdit;
    edtCIDXE2PW: TcxTextEdit;
    edtCIDXE2ServerNAME: TcxTextEdit;
    edtCIDXE2MEMO: TcxMemo;
    btnCIDXE2IDCheck: TcxButton;
    cxLabel94: TcxLabel;
    edtCIDXE2PW_COMF: TcxTextEdit;
    edtCIDXE2: TcxTextEdit;
    btnCIDXE2SAVE: TcxButton;
    cxButton2: TcxButton;
    pm_Type: TPopupMenu;
    N1: TMenuItem;
    pnl_AddType: TPanel;
    cxGroupBox45: TcxGroupBox;
    Gauge3: TGauge;
    Label4: TLabel;
    Label8: TLabel;
    Shape86: TShape;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cb_term_type4: TcxComboBox;
    btnGetList: TcxButton;
    btnExcelA10: TcxButton;
    btnCIDXE1Del: TcxButton;
    btnCIDXE2Del: TcxButton;
    cxTabSheet16: TcxTabSheet;
    Panel16: TPanel;
    Panel17: TPanel;
    tlEAddrSet: TcxTreeList;
    tlSAddr: TcxTreeList;
    cxTreeListColumn1: TcxTreeListColumn;
    cxTreeListColumn2: TcxTreeListColumn;
    cxTreeListColumn3: TcxTreeListColumn;
    cxTreeListColumn4: TcxTreeListColumn;
    btnPeak: TcxButton;
    btnType: TcxButton;
    btnPolygon: TcxButton;
    cxLabel102: TcxLabel;
    cboBranch: TcxComboBox;
    Shape45: TShape;
    chkAll: TcxCheckBox;
    chkDefault: TcxCheckBox;
    chkType1: TcxCheckBox;
    chkType2: TcxCheckBox;
    chkType3: TcxCheckBox;
    chkType4: TcxCheckBox;
    cbdistTypeName: TcxComboBox;
    btnTypeSave: TcxButton;
    edtdistTypeValue: TcxCurrencyEdit;
    cxLabel101: TcxLabel;
    btnAmtSave: TcxButton;
    chkRound: TcxCheckBox;
    btnDelete: TcxButton;
    Shape87: TShape;
    cxSplitter1: TcxSplitter;
    Tree_ListColumn1: TcxTreeListColumn;
    Tree_ListColumn2: TcxTreeListColumn;
    Tree_ListColumn3: TcxTreeListColumn;
    Tree_ListColumn4: TcxTreeListColumn;
    Tree_ListColumn5: TcxTreeListColumn;
    Tree_ListColumn6: TcxTreeListColumn;
    Tree_ListColumn7: TcxTreeListColumn;
    Tree_ListColumn8: TcxTreeListColumn;
    Tree_ListColumn9: TcxTreeListColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleType1: TcxStyle;
    cxStyleType2: TcxStyle;
    cxStyleType3: TcxStyle;
    cxStyleType4: TcxStyle;
    cxStyleDefault: TcxStyle;
    tlSAddrColumn5: TcxTreeListColumn;
    tlSAddrColumn6: TcxTreeListColumn;
    tlSAddrColumn7: TcxTreeListColumn;
    tlEAddrSetColumn10: TcxTreeListColumn;
    tlEAddrSetColumn11: TcxTreeListColumn;
    tlEAddrSetColumn12: TcxTreeListColumn;
    grpDistNewYn: TcxGroupBox;
    rbDistNewY: TcxRadioButton;
    rbDistNewN: TcxRadioButton;
    asg_Br_ChargeColumn22: TcxGridDBColumn;
    cxLabel29: TcxLabel;
    cxLabel45: TcxLabel;
    cxLabel46: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel103: TcxLabel;
    cxLabel104: TcxLabel;
    cxLabel83: TcxLabel;
    cxLabel105: TcxLabel;
    btnCopy: TcxButton;
    procedure RbButton32Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbChartNameClick(Sender: TObject);
    procedure cxButton18Click(Sender: TObject);
    procedure cxButton19Click(Sender: TObject);
    procedure asg_Chart_chargeColumn7PropertiesChange(Sender: TObject);
    procedure cxButton20Click(Sender: TObject);
    procedure cxButton21Click(Sender: TObject);
    procedure asg_chart_edSelectionChanged(Sender: TcxCustomGridTableView);
    procedure asg_chart_stSelectionChanged(Sender: TcxCustomGridTableView);
    procedure cb_chart_stcityClick(Sender: TObject);
    procedure cb_chart_edcityClick(Sender: TObject);
    procedure cb_chart_stwardClick(Sender: TObject);
    procedure cb_chart_edwardClick(Sender: TObject);
    procedure cb_dis_stcityClick(Sender: TObject);
    procedure cb_dis_edcityClick(Sender: TObject);
    procedure cb_dis_stwardClick(Sender: TObject);
    procedure cb_dis_edwardClick(Sender: TObject);
    procedure cb_term_stcityClick(Sender: TObject);
    procedure cb_term_stwardClick(Sender: TObject);
    procedure cb_term_edcityClick(Sender: TObject);
    procedure cb_term_edwardClick(Sender: TObject);
    procedure cxButton23Click(Sender: TObject);
    procedure cxButton24Click(Sender: TObject);
    procedure cxButton25Click(Sender: TObject);
    procedure cxButton26Click(Sender: TObject);
    procedure cxButton57Click(Sender: TObject);
    procedure cxButton58Click(Sender: TObject);
    procedure cxButton27Click(Sender: TObject);
    procedure cbDisNameClick(Sender: TObject);
    procedure cxButton31Click(Sender: TObject);
    procedure cxButton33Click(Sender: TObject);
    procedure cxButton28Click(Sender: TObject);
    procedure cxButton29Click(Sender: TObject);
    procedure cxButton30Click(Sender: TObject);
    procedure cxButton41Click(Sender: TObject);
    procedure cb_First_stcityClick(Sender: TObject);
    procedure asg_dis_stSelectionChanged(Sender: TcxCustomGridTableView);
    procedure asg_dis_edSelectionChanged(Sender: TcxCustomGridTableView);
    procedure cbTermNameClick(Sender: TObject);
    procedure cxButton39Click(Sender: TObject);
    procedure asg_term_stSelectionChanged(Sender: TcxCustomGridTableView);
    procedure asg_term_edSelectionChanged(Sender: TcxCustomGridTableView);
    procedure cxButton43Click(Sender: TObject);
    procedure rb_gervalue_saveClick(Sender: TObject);
    procedure cxButton35Click(Sender: TObject);
    procedure cxButton36Click(Sender: TObject);
    procedure cxButton37Click(Sender: TObject);
    procedure cxButton38Click(Sender: TObject);
    procedure cb_First_edcityClick(Sender: TObject);
    procedure cb_First_stwardClick(Sender: TObject);
    procedure cb_First_edwardClick(Sender: TObject);
    procedure asg_First_stSelectionChanged(Sender: TcxCustomGridTableView);
    procedure asg_First_edSelectionChanged(Sender: TcxCustomGridTableView);
    procedure cxButton48Click(Sender: TObject);
    procedure cbFirstNameClick(Sender: TObject);
    procedure cxButton55Click(Sender: TObject);
    procedure cxButton45Click(Sender: TObject);
    procedure cxButton49Click(Sender: TObject);
    procedure cxButton50Click(Sender: TObject);
    procedure cxButton51Click(Sender: TObject);
    procedure cxButton52Click(Sender: TObject);
    procedure cxButton53Click(Sender: TObject);
    procedure cxButton54Click(Sender: TObject);
    procedure rb_first_chargeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton42Click(Sender: TObject);
    procedure cxButton34Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure cbFirstDetailNameClick(Sender: TObject);
    procedure cxButton64Click(Sender: TObject);
    procedure cb_First_Detail_stwardClickClick(Sender: TObject);
    procedure cb_First_Detail_stcityClick(Sender: TObject);
    procedure cb_First_Detail_edcityClick(Sender: TObject);
    procedure cb_First_Detail_edwardClick(Sender: TObject);
    procedure cb_First_Detail_stwardClick(Sender: TObject);
    procedure asg_First_Detail_StSelectionChanged(
      Sender: TcxCustomGridTableView);
    procedure asg_First_Detail_EdSelectionChanged(
      Sender: TcxCustomGridTableView);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure cxButton17Click(Sender: TObject);
    procedure cxButton62Click(Sender: TObject);
    procedure cxButton63Click(Sender: TObject);
    procedure cxButton65Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxGroupBox2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxGroupBox3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxButton22Click(Sender: TObject);
    procedure cxButton61Click(Sender: TObject);
    procedure rb_term_type_modClick(Sender: TObject);
    procedure asg_Br_ChargeCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cb_Charge_Gubun2Click(Sender: TObject);
    procedure cb_Charge_GubunClick(Sender: TObject);
    procedure btnFirstCdClick(Sender: TObject);
    procedure cb_charge_name2Click(Sender: TObject);
    procedure cb_charge_nameClick(Sender: TObject);
    procedure RbRadioButton5Click(Sender: TObject);
    procedure cbb1PropertiesChange(Sender: TObject);
    procedure cb_Charge_FirstClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cb_Charge_FirstDClick(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure RbBRadioButton5Click(Sender: TObject);
    procedure asg_BBr_ChargeCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure rb_Bfirst_chargeClick(Sender: TObject);
    procedure btnBFirstCdClick(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure cbBb1PropertiesChange(Sender: TObject);
    procedure cb_BCharge_GubunClick(Sender: TObject);
    procedure cb_Bcharge_nameClick(Sender: TObject);
    procedure btnPDDelClick(Sender: TObject);
    procedure btnPDInsClick(Sender: TObject);
    procedure btnPDUpdClick(Sender: TObject);
    procedure btnPInsClick(Sender: TObject);
    procedure btnPUpdClick(Sender: TObject);
    procedure cbb2PropertiesChange(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btnCIDXE1IDCheckClick(Sender: TObject);
    procedure btnCIDXE1SAVEClick(Sender: TObject);
    procedure btnCIDXESetClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxGroupBox43MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure edtCIDXE1IDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCIDXE1IDKeyPress(Sender: TObject; var Key: Char);
    procedure edtCIDXE1PWKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCIDXE1PWKeyPress(Sender: TObject; var Key: Char);
    procedure edtCIDXE1PW_COMFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCIDXE1ServerNAMEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCIDXE2IDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCIDXE2IDKeyPress(Sender: TObject; var Key: Char);
    procedure edtCIDXE2PWKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCIDXE2PWKeyPress(Sender: TObject; var Key: Char);
    procedure edtCIDXE2PW_COMFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCIDXE2ServerNAMEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mmoDNISExit(Sender: TObject);
    procedure mmoDNISKeyPress(Sender: TObject; var Key: Char);
    procedure N1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure btnGetListClick(Sender: TObject);
    procedure btnExcelA10Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnTypeClick(Sender: TObject);
    procedure btnPeakClick(Sender: TObject);
    procedure tlSAddrCustomDrawDataCell(Sender: TcxCustomTreeList; ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
    procedure cboBranchPropertiesChange(Sender: TObject);
    procedure chkType1PropertiesChange(Sender: TObject);
    procedure chkType2PropertiesChange(Sender: TObject);
    procedure chkType3PropertiesChange(Sender: TObject);
    procedure chkType4PropertiesChange(Sender: TObject);
    procedure chkDefaultPropertiesChange(Sender: TObject);
    procedure chkAllClick(Sender: TObject);
    procedure btnTypeSaveClick(Sender: TObject);
    procedure btnAmtSaveClick(Sender: TObject);
    procedure tlSAddrFocusedNodeChanged(Sender: TcxCustomTreeList; APrevFocusedNode, AFocusedNode: TcxTreeListNode);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnPolygonClick(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);

  private
		{ Private declarations }
		bChartChargeModify, bFirstChargeModify, bFirstDetailChargeModify, bAreaChange, bStopFlag: Boolean;

    slFile: TStringList;
 		FBrNoList : TStringList;
    FDistTypeNo : TStringList;
		pwCHK1, pwCHK2 : integer;

    procedure proc_dong(cb1, cb2: TcxComboBox; sGrid: TcxGridDBTableView);
    procedure city_ward(city, ward: TcxComboBox; sGrid: TcxGridDBTableView);
    function func_Search_Where(sSubType: string; cb_stCity, cb_stWard,
      cb_edCity, cb_edWard: TcxComboBox; sg_stDong, sg_edDong:
      TcxGridDBTableView): string;
    function func_ChargeName(sName: string): Boolean;
    function func_Select_Area(cb_stCity, cb_stWard, cb_edCity, cb_edWard:
      TcxComboBox; sg_stDong, sg_edDong: TcxGridDBTableView; AChkRound: TcxCheckBox): TStringList;
    function func_Max_Sn(sGubun, sCode: string): string;
    procedure proc_bubinlist;
    procedure proc_recieve(ls_rxxml: widestring);
    procedure SetComboList(iNo: Integer);
    procedure proc_OraQuery;
    function proc_DNIS_Duplicate(sDNIS: string): Integer;
    procedure pSAddrList;
    procedure pEAddrSetList;
    procedure SetBranch;
    procedure pSetDistanceNew(AGubun, AValue: String);
    procedure pDelDistanceNew;
    procedure pGetDistanceNew( ACity, AWard, ADong : String );
    procedure pSetDistanceLog(sBrNo : String; ADistLog : TDistLog );
	public
		{ Public declarations }
		gnMouseKeyDown, gnClickedRow: Integer;
		gbControlKeyDown, gbMouseKeyDrag: Boolean;
		procedure proc_init;
		procedure proc_ChargeModify;
    procedure proc_PRChargeSet;
    procedure proc_GBChargeSet;
    procedure proc_ChargeSet;
    procedure pSelect_DistTypeM;

		function func_search_sno(sGubun: string): string;
		// 요금 편집, 설정에서 작업 처리 프로시저( iType : 0(전체), 1(부분) )
		//  SELCHARGENM    : 요금 편집에서 요금제명 가져오기
		//  SELECTCHARGE   : 대표번호별 요금 설정에서 요금제명 가져오기
		//  SELECTBGCHARGE : 법인별별 요금 설정에서 요금제명 가져오기   20120601 LYB추가
		//  CHARTSELECT    : 요금표요금 가져오기   DISSELECT : 거리요금제 가져오기 ..
		//  CHARTNEWINSERT : 새로운 요금표 요금제 만들기
		//  CHARTDELETE    : 요금제 삭제(0 : 요금제 삭제, 1 : 선택 Record 삭제
		procedure proc_Query(sJob: string; iType: Integer = 0);
    procedure proc_BrNameSet;
	end;

var
  Frm_SET: TFrm_SET;

  Pos_Prem: integer;
  Ridx_PGrid: integer;
  tm_Premtit: string;
  Prem_Max: integer;

implementation

{$R *.dfm}

uses Main, xe_Flash, xe_Func, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg,
  xe_packet, xe_Query, xe_Structure, xe_system, xe_xml, xe_SET06, xe_Dm,
  xe_charge, xe_SET07, xe_JON51, xe_SearchWord, xe_SET01, xe_SET02, xe_SET03, xe_SET04;


procedure TFrm_SET.RbBRadioButton5Click(Sender: TObject);
begin
  cxGroupBox3.Tag := TcxRadioButton(Sender).Tag;
  if cxGroupBox3.Tag = 0 then
  begin
    BComboBox2.Visible := False;
    ed_Bpassvalue.Visible := True;
    cxBLabel94.Visible := True;
    BComboBox3.ItemIndex := -1;
    BComboBox3.Enabled := False;
  end else
  begin
    if BComboBox2.Properties.Items.Count > 1 then
      BComboBox2.ItemIndex := 1
    else
      BComboBox2.ItemIndex := 0;
    BComboBox2.Visible := True;
    ed_Bpassvalue.Visible := False;
    cxBLabel94.Visible := False;
    BComboBox3.ItemIndex := 0;
    BComboBox3.Enabled := True;
  end;
end;

procedure TFrm_SET.RbButton32Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_SET.RbRadioButton5Click(Sender: TObject);
begin
  cxGroupBox3.Tag := TcxRadioButton(Sender).Tag;
  if cxGroupBox3.Tag = 0 then
  begin
    cb_Charge_PassG.Visible := False;
    ed_passvalue.Visible := True;
    cxLabel22.Visible := True;
    cb_Charge_Pass.ItemIndex := -1;
    cb_Charge_Pass.Enabled := False;
  end else
  begin
    if cb_Charge_PassG.Properties.Items.Count > 1 then
      cb_Charge_PassG.ItemIndex := 1
    else
      cb_Charge_PassG.ItemIndex := 0;
    cb_Charge_PassG.Visible := True;
    ed_passvalue.Visible := False;
    cxLabel22.Visible := False;
    cb_Charge_Pass.ItemIndex := 0;
    cb_Charge_Pass.Enabled := True;
  end;
end;

procedure TFrm_SET.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FBrNoList);
  FreeAndNil(FDistTypeNo);

  if Assigned(Frm_SET06) then Frm_SET06.Close;
  Action := caFree;
end;

procedure TFrm_SET.proc_ChargeModify;
begin
  if (GS_EXEC_GUBUN = 0) and (CHARGE_GUBUN = 'P') then
  begin
    GMessagebox('선행 프로그램 때문에 작업을 할 수 없습니다.', CDMSE);
    Exit;
  end;

  ed_Charge_NewNm.Text := '';
  ed_Dis_NewNm.Text := '';
  ed_Term_NewNm.Text := '';
  ed_First_NewNm.Text := '';

  RbCheckBox2.Checked := True;
  ed_chart_value.Text := '';
  ed_chart_modify.Text := '';
  cxProgressBar1.Progress := 0;
  rchk_dis_same.Checked := True;
  ed_lowvalue.Text := '';
  ed_dis_gerterm.Text := '';
  ed_dis_gervalue.Text := '';
  ed_dis_overterm.Text := '';
  ed_dis_overvalue.Text := '';
  cxProgressBar2.Progress := 0;
  rchk_same_term.Checked := True;
  ed_bvalue.Text := '';
	cb_term_type2.ItemIndex := 0;
	cb_term_type3.ItemIndex := 0;
	cb_term_type4.ItemIndex := 0;
	cxProgressBar3.Progress := 0;

  ed_First_value.Text := '';
  ed_First_modify.Text := '';

  rchk_same_first.Checked := True;
  cxProgressBar4.Progress := 0;

  proc_Query('SELCHARGENM');
end;

procedure TFrm_SET.proc_BrNameSet;
begin
  lblSosokNameA3.Caption := GetSosokInfo;
  lblSosokNameA4.Caption := GetSosokInfo;
  lblSosokNameA5.Caption := GetSosokInfo;
  lblSosokNameA6.Caption := GetSosokInfo;
  lblSosokNameA7.Caption := GetSosokInfo;

  if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) then // mySQL 사용시에만 권한
    SetBranch;
end;

procedure TFrm_SET.proc_PRChargeSet;
begin
  if (GS_EXEC_GUBUN = 0) and (CHARGE_GUBUN = 'P') then
  begin
    GMessagebox('선행 프로그램 때문에 작업을 할 수 없습니다.', CDMSE);
    Exit;
  end;

	SetComboList(0);

  proc_Query('SELECTPR');
	cbb2.ItemIndex := cbb2.Properties.Items.IndexOf('사용안함');
end;

procedure TFrm_SET.SetComboList( iNo : Integer );
Var i : Integer;
begin
  cbb2.Properties.Items.Clear;
  For i := 0 to Length(Prem_Rec) - 1 do
  begin
    if Prem_Rec[i].tit <> '' then
      cbb2.Properties.Items.Add(Prem_Rec[i].tit);
  end;

  cbb2.Properties.Items.Insert(0, '사용안함');

  for i := 0 to Length(Prem_Rec) - 1 do
    if Prem_Rec[i].nseq = iNo then
      cbb2.Properties.Items.IndexOf(Prem_Rec[i].tit);
end;

procedure TFrm_SET.tlSAddrCustomDrawDataCell(Sender: TcxCustomTreeList; ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
  var ADone: Boolean);
begin
  try
    if (AViewInfo.Focused) Or (AViewInfo.Selected) then
    begin
      Sender.Canvas.Font.Color := clWhite;
      Sender.Canvas.Brush.Color := $00FF9933;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_SET.tlSAddrFocusedNodeChanged(Sender: TcxCustomTreeList; APrevFocusedNode, AFocusedNode: TcxTreeListNode);
begin
  pGetDistanceNew(AFocusedNode.Values[4], AFocusedNode.Values[5], AFocusedNode.Values[6]);
end;

procedure TFrm_SET.proc_init;
var
  i: Integer;
  sTemp, sPath: string;
  iOldEnvfile: TIniFile;
  bFileLoad: Boolean;
begin
 cxPageControl1.ActivePageIndex := 0;

  bFileLoad := False;
  slFile := TStringList.Create;
  if FileExists('C:\CDMS\cdms_env.ini') then
  begin
    bFileLoad := True;
    sPath := 'C:\CDMS\cdms_env.ini';
  end else
  if FileExists('C:\CDMSCN\cdms_env.ini') then
  begin
    bFileLoad := True;
    sPath := 'C:\CDMSCN\cdms_env.ini';
  end;
  iOldEnvfile := TIniFile.Create(sPath);

  FBrNoList := TStringList.Create;
  FDistTypeNo := TStringList.Create;

  cb_chart_stcity.Properties.Items.Clear;
  sTemp := GS_EnvFile.ReadString('MOUSE_OVER', 'WK_HINT', '');
  sTemp := '1';
  if (sTemp <> '') then
  begin
    GS_EnvFile.ReadSection('LocalMap', cb_chart_stcity.Properties.Items);
  end else
  if (bFileLoad) then
  begin
    iOldEnvfile.ReadSection('LocalMap', cb_chart_stcity.Properties.Items);
  end;

  if cb_chart_stcity.Properties.Items.Count = 0 then
  begin
    case StrToIntDef(GT_USERIF.SA, 0) of
      0: begin
           cb_chart_stcity.Properties.Items.Add('서울');
           cb_chart_stcity.Properties.Items.Add('경기');
           cb_chart_stcity.Properties.Items.Add('인천');
           cb_chart_stcity.Properties.Items.Add('대전');
           cb_chart_stcity.Properties.Items.Add('충남');
           cb_chart_stcity.Properties.Items.Add('충북');
           cb_chart_stcity.Properties.Items.Add('강원');
           cb_chart_stcity.Properties.Items.Add('대구');
           cb_chart_stcity.Properties.Items.Add('경북');
           cb_chart_stcity.Properties.Items.Add('부산');
           cb_chart_stcity.Properties.Items.Add('울산');
           cb_chart_stcity.Properties.Items.Add('경남');
           cb_chart_stcity.Properties.Items.Add('전북');
           cb_chart_stcity.Properties.Items.Add('광주');
           cb_chart_stcity.Properties.Items.Add('전남');
           cb_chart_stcity.Properties.Items.Add('제주');
        end;
      1:
        begin
          cb_chart_stcity.Properties.Items.Add('서울');
          cb_chart_stcity.Properties.Items.Add('경기');
          cb_chart_stcity.Properties.Items.Add('인천');
        end;
      2:
        begin
          cb_chart_stcity.Properties.Items.Add('대전');
          cb_chart_stcity.Properties.Items.Add('충남');
          cb_chart_stcity.Properties.Items.Add('충북');
        end;
      4: cb_chart_stcity.Properties.Items.Add('강원');
      5:
        begin
          cb_chart_stcity.Properties.Items.Add('대구');
          cb_chart_stcity.Properties.Items.Add('경북');
        end;
      6:
        begin
          cb_chart_stcity.Properties.Items.Add('부산');
          cb_chart_stcity.Properties.Items.Add('울산');
          cb_chart_stcity.Properties.Items.Add('경남');
        end;
      8:
        begin
          cb_chart_stcity.Properties.Items.Add('광주');
          cb_chart_stcity.Properties.Items.Add('전남');
          cb_chart_stcity.Properties.Items.Add('전북');
        end;
      9: cb_chart_stcity.Properties.Items.Add('제주');
    end;
    GS_EnvFile.EraseSection('LocalMap');
    for i := 0 to cb_chart_stcity.Properties.Items.Count - 1 do
      GS_EnvFile.WriteString('LocalMap', cb_chart_stcity.Properties.Items.Strings[i], InttoStr(i));
  end;
{
  // [hjf-1014] 타지역
  I := cb_chart_stcity.Properties.Items.IndexOf('타지역');
  if I >= 0 then
    cb_chart_stcity.Properties.Items.Delete(I);
}
  cb_chart_edcity.Properties.Items.Clear;
  cb_chart_edcity.Properties.Items.AddStrings(cb_chart_stcity.Properties.Items);
  cb_dis_stcity.Properties.Items.Clear;
  cb_dis_stcity.Properties.Items.AddStrings(cb_chart_stcity.Properties.Items);
  cb_dis_edcity.Properties.Items.Clear;
  cb_dis_edcity.Properties.Items.AddStrings(cb_chart_stcity.Properties.Items);
  cb_term_stcity.Properties.Items.Clear;
  cb_term_stcity.Properties.Items.AddStrings(cb_chart_stcity.Properties.Items);
  cb_term_edcity.Properties.Items.Clear;
  cb_term_edcity.Properties.Items.AddStrings(cb_chart_stcity.Properties.Items);
	cb_First_stcity.Properties.Items.Clear;
	cb_First_stcity.Properties.Items.AddStrings(cb_chart_stcity.Properties.Items);
	cb_First_edcity.Properties.Items.Clear;
	cb_First_edcity.Properties.Items.AddStrings(cb_chart_stcity.Properties.Items);
	cb_First_Detail_stcity.Properties.Items.Clear;
	cb_First_Detail_stcity.Properties.Items.AddStrings(cb_chart_stcity.Properties.Items);
	cb_First_Detail_edcity.Properties.Items.Clear;
	cb_First_Detail_edcity.Properties.Items.AddStrings(cb_chart_stcity.Properties.Items);

  asg_chart_st.Columns[0].DataBinding.ValueType := 'String';
  asg_chart_ed.Columns[0].DataBinding.ValueType := 'String';
  asg_dis_st.Columns[0].DataBinding.ValueType := 'String';
  asg_dis_ed.Columns[0].DataBinding.ValueType := 'String';
  asg_term_st.Columns[0].DataBinding.ValueType := 'String';
  asg_term_ed.Columns[0].DataBinding.ValueType := 'String';
  asg_First_st.Columns[0].DataBinding.ValueType := 'String';
	asg_First_ed.Columns[0].DataBinding.ValueType := 'String';
	asg_First_Detail_st.Columns[0].DataBinding.ValueType := 'String';
	asg_First_Detail_ed.Columns[0].DataBinding.ValueType := 'String';

  asg_Chart_charge.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to asg_Chart_charge.ColumnCount - 1 do
		asg_Chart_charge.Columns[i].DataBinding.ValueType := 'String';
  asg_Chart_charge.DataController.SetRecordCount(0);

  asg_mod_dis.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to asg_mod_dis.ColumnCount - 1 do
    asg_mod_dis.Columns[i].DataBinding.ValueType := 'String';
  asg_mod_dis.DataController.SetRecordCount(0);

  asg_term_modify.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to asg_term_modify.ColumnCount - 1 do
    asg_term_modify.Columns[i].DataBinding.ValueType := 'String';
  asg_term_modify.DataController.SetRecordCount(0);

	asg_First_charge.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to asg_First_charge.ColumnCount - 1 do
		asg_First_charge.Columns[i].DataBinding.ValueType := 'String';
	asg_First_charge.DataController.SetRecordCount(0);

	asg_First_Detail_charge.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to asg_First_Detail_charge.ColumnCount - 1 do
		asg_First_Detail_charge.Columns[i].DataBinding.ValueType := 'String';
	asg_First_Detail_charge.DataController.SetRecordCount(0);

  cxPageControl2.ActivePageIndex := 0;

  bAreaChange := True;
  cb_chart_stcity.ItemIndex := -1;
  cb_chart_edcity.ItemIndex := -1;
  cb_dis_stcity.ItemIndex := -1;
  cb_dis_edcity.ItemIndex := -1;
  cb_term_stcity.ItemIndex := -1;
	cb_term_edcity.ItemIndex := -1;
	cb_first_edcity.ItemIndex := -1;
	cb_First_edcity.ItemIndex := -1;
	cb_first_Detail_edcity.ItemIndex := -1;
	cb_First_Detail_edcity.ItemIndex := -1;
	bAreaChange := False;

  proc_ChargeModify;

  // --------------------------------------------------------------------------- A4
	asg_Br_Charge.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to asg_Br_Charge.ColumnCount - 1 do
    asg_Br_Charge.Columns[i].DataBinding.ValueType := 'String';
  asg_Br_Charge.DataController.SetRecordCount(0);

  cxGrid_Chart.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to cxGrid_Chart.ColumnCount - 1 do
    cxGrid_Chart.Columns[i].DataBinding.ValueType := 'String';
  cxGrid_Chart.DataController.SetRecordCount(0);

  cxGrid_Dis.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to cxGrid_Dis.ColumnCount - 1 do
    cxGrid_Dis.Columns[i].DataBinding.ValueType := 'String';
  cxGrid_Dis.DataController.SetRecordCount(0);

  cxGrid_Term.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to cxGrid_Term.ColumnCount - 1 do
    cxGrid_Term.Columns[i].DataBinding.ValueType := 'String';
  cxGrid_Term.DataController.SetRecordCount(0);

  // --------------------------------------------------------------------------- A5
  asg_BBr_Charge.Columns[0].DataBinding.ValueType := 'Integer';    // 20120601  LYB추가
  for i := 1 to asg_BBr_Charge.ColumnCount - 1 do
    asg_BBr_Charge.Columns[i].DataBinding.ValueType := 'String';
  asg_BBr_Charge.DataController.SetRecordCount(0);

	cxGrid_BChart.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to cxGrid_BChart.ColumnCount - 1 do
    cxGrid_BChart.Columns[i].DataBinding.ValueType := 'String';
  cxGrid_BChart.DataController.SetRecordCount(0);

  cxGrid_BDis.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to cxGrid_BDis.ColumnCount - 1 do
    cxGrid_BDis.Columns[i].DataBinding.ValueType := 'String';
  cxGrid_BDis.DataController.SetRecordCount(0);

	cxGrid_BTerm.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to cxGrid_BTerm.ColumnCount - 1 do
		cxGrid_BTerm.Columns[i].DataBinding.ValueType := 'String';
	cxGrid_BTerm.DataController.SetRecordCount(0);

  // --------------------------------------------------------------------------- A7
  btnCIDXESet.Caption := 'CIDXE서버 로그인계정 설정' + #13 +
                         '(본사마트터 권한만 가능)';

  btnCIDXE1SAVE.Caption := 'CIDXE1번' + #13 +
                           '서버저장';

  btnCIDXE2SAVE.Caption := 'CIDXE2번' + #13 +
                           '서버저장';

  edt1.Text := '';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';
  edtCallCenterGubun.Text := '';
  mmoDNIS.Clear;
  mmoDESC.Clear;

  cxView1.DataController.SetRecordCount(0);
	cxView1.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to cxView1.ColumnCount - 1 do
		cxView1.Columns[i].DataBinding.ValueType := 'String';

  if GT_USERIF.CIDTEL_PER then btnCIDXESet.Enabled := True;

  proc_BrNameSet;

	cxPageControl1.Pages[0].TabVisible := (TCK_USER_PER.SET_Charge = '1');    //설정 : 요금제편집
	cxPageControl1.Pages[1].TabVisible := (TCK_USER_PER.SET_ChargeSet = '1'); //요금제설정[대표번호]
	cxPageControl1.Pages[2].TabVisible := (TCK_USER_PER.SET_ChargeSet = '1'); //요금제설정[법인]
	cxPageControl1.Pages[3].TabVisible := (TCK_USER_PER.SET_ChargeSet = '1'); //심야할증요금
	cxPageControl1.Pages[4].TabVisible := (TCK_USER_PER.SET_CIDDNIS = '1');   //CID대표번호DNIS관리

  cxPageControl2.Pages[5].TabVisible := ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O'));
  grpDistNewYn.Visible := ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O'));
  asg_Br_ChargeColumn22.Visible := ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O'));

  if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) then // mySQL 사용시에만 권한
  begin
    for i := 0 to tlSAddr.ColumnCount - 1 do
      tlSAddr.Columns[i].DataBinding.ValueType := 'String';
    tlSAddr.Root.TreeList.Clear;

    for i := 0 to tlEAddrSet.ColumnCount - 1 do
      tlEAddrSet.Columns[i].DataBinding.ValueType := 'String';
    tlEAddrSet.Root.TreeList.Clear;

    pSAddrList;
    pEAddrSetList;

    tlEAddrSet.Bands[2].Styles.Content := cxStyleDefault;
  end;
end;

procedure TFrm_SET.city_ward(city, ward: TcxComboBox;
  sGrid: TcxGridDBTableView);
var
  i, iRow, k: Integer;
  sl_City: TStringList;
begin
  try
    ward.Properties.Items.Clear;
    Ward.Properties.Items.Add('전체');
    sl_City := TStringList.Create;
    sl_city.Clear;
    sl_city.Assign(GT_MAPOrigi.slCity);
    //--------------------------------------------------------------------------------------------------
    //  특정 지역일경우 우선순위 때문에 위치가 섞여있는 경우가 있어서 3번까지 조회함
    //--------------------------------------------------------------------------------------------------
    if city.ItemIndex > 0 then
    begin
      for k := 0 to 2 do
      begin
        i := sl_City.IndexOf(city.Text);
        if i > 1 then
        begin
          if (city.Text <> sl_city.Strings[i - 1]) and (city.Text = sl_city.Strings[i]) and (city.Text <> sl_city.Strings[i + 1]) then
          begin
            sl_City.Delete(i);
            sl_City.Insert(i, ' ');
          end;
        end;
      end;
    end;
    // 20080616.
    sGrid.BeginUpdate;
    sGrid.DataController.SetRecordCount(0);
    iRow := sGrid.DataController.AppendRecord;
    sGrid.DataController.Values[iRow, 0] := '전체';
    for i := sl_City.IndexOf(city.Text) to GT_MAPOrigi.slCity.Count - 1 do
    begin
      if i = -1 then
        Break;
      if i > 1 then
      begin
        if (City.Text <> GT_MAPOrigi.slCity[i]) and (City.Text <> GT_MAPOrigi.slCity[i + 1]) then
          break;
      end;
      if (city.Text = sl_city.Strings[i]) and (ward.Properties.Items.IndexOf(GT_MAPOrigi.slWard[i]) < 0) and (GT_MAPOrigi.slWard[i] <> '' )then
      begin
        ward.Properties.Items.Add(GT_MAPOrigi.slWard[i]);
        iRow := sGrid.DataController.AppendRecord;
        sGrid.DataController.Values[iRow, 0] := GT_MAPOrigi.slWard[i];
      end;
    end;
    sGrid.EndUpdate;
    bAreaChange := True;
    ward.ItemIndex := 0;
    bAreaChange := False;
  finally
    freeandnil(sl_city);
  end;
end;

procedure TFrm_SET.proc_dong(cb1, cb2: TcxComboBox;
  sGrid: TcxGridDBTableView);
var
  i, iRow, iIndex: Integer;
  slList: TStringList;
begin
  if cb2.Text <> '' then
  begin
    if cb2.Text <> '전체' then
    begin
      slList := TStringList.Create;
      slList.Clear;
      sGrid.BeginUpdate;
      sGrid.DataController.SetRecordCount(0);
      irow := sGrid.DataController.AppendRecord;
      sGrid.DataController.Values[iRow, 0] := '전체';
      // 20080616.
			for i := GT_MAPOrigi.slCity.IndexOf(cb1.Text) to GT_MAPOrigi.slCity.Count - 1 do
      begin
        iIndex := slList.IndexOf(GT_MAPOrigi.slStre_RI[i]);

				if (cb1.Text = GT_MAPOrigi.slCity[i]) and (cb2.Text = GT_MAPOrigi.slWard[i]) and (iIndex < 0) and (GT_MAPOrigi.slStre_RI[i] <> '') then
				begin
          iRow := sGrid.DataController.AppendRecord;
          sGrid.DataController.Values[iRow, 0] := GT_MAPOrigi.slStre_RI[i];
          slList.Add(GT_MAPOrigi.slStre_RI[i]);
        end;
      end;
      sGrid.EndUpdate;
      FreeAndNil(slList);
    end
    else
      city_ward(cb1, cb2, sGrid);
  end;
end;

procedure TFrm_SET.proc_Query(sJob: string; iType: Integer = 0);

  procedure pFileSave( sValue : AnsiString; sFileName : String );
  Var log_file: file of byte;
  begin
    try
      FileMode := fmOpenWrite;
      AssignFile(log_file, sFileName);
      if FileExists(Lbl_sFile.Caption) then Reset(log_file)
                                       else Rewrite(log_file);
      Seek(log_file, filesize(log_file));
      BlockWrite(log_file, PAnsiChar(sValue)^, Length(sValue));
      CloseFile(log_file);
    except

    end;
  end;

var
  sQuery, sWhere, sTable, sSelect, sChargeCd, sChargeName, sSubType, sSNo,
		sKeyNumber, sCbCode, sPassCd, sPassNm, sPassValue, sFirstCd, sFirstNm, sDate, sNewDistYn : string;
	sSt1, sSt2, sSt3, sSt4, sEd1, sEd2, sEd3, sEd4, sValue, sLowValue, sGerTerm, sGerValue,
		sOverTerm, sOverValue, sSubCd,  sPassView: string;
  sLine, sTemp : AnsiString;
	sChargeCd2, sChargeName2, sSubType2 : string;
	i, iRow, iSn, iStatus, iCdNo, iSubRow, ii, iTmp: Integer;
  sPridx: integer;
  sPrstr, sSttime, sEdtime: string;
	// 할증요금디테일 임시변수
  Eq_yn:Boolean;

  j: integer;
  slFile: TStringList;


  TextFile, ColList: TStringList;
	sqlTXT, sSNo2 : string;
begin
	{      0 : sGubun := 'CC';
         1 : sGubun := 'CD';
         2 : sGubun := 'CT';
         3 : sGubun := 'CF';
         4 : sGubun := 'CS';
         5 : sGubun := 'CA';
  }
  try
		if sJob = 'SELCHARGENM' then
		begin
			cbChartName.Properties.Items.Clear;
      lbChartCd.Items.Clear;
      cbDisName.Properties.Items.Clear;
			lbDisCd.Items.Clear;
			cbTermName.Properties.Items.Clear;
      lbTermCd.Items.Clear;
      lbTermTypeCd.Items.Clear;
			cb_term_type2.Properties.Items.Clear;
			cb_term_type3.Properties.Items.Clear;
			cb_term_type4.Properties.Items.Clear;
			cbFirstName.Properties.Items.Clear;
			cbFirstDetailName.Properties.Items.Clear;
			lbFirstCd.Items.Clear;
			lbFirstDetailCd.Items.Clear;
			if CHARGE_GUBUN = 'P' then
			begin
				sQuery := 'SELECT CG_CD, CG_NM  FROM CHARGE_GROUP ORDER BY CG_CD ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.OPEN;
				
				while not dmCharge.FDQuery_SQLite.eof do
				begin
					sChargeCd := dmCharge.FDQuery_SQLite.Fields[0].AsString;
					sChargeName := dmCharge.FDQuery_SQLite.Fields[1].AsString;
          sSubType := Copy(sChargeCd, 1, 2);
          if (sSubType = 'CC') or (sSubType = 'CA') then
					begin
						cbChartName.Properties.Items.Add(sChargeName);
            lbChartCd.Items.Add(sChargeCd);
          end else
          if (sSubType = 'CD') then
					begin
						cbDisName.Properties.Items.Add(sChargeName);
						lbDisCd.Items.Add(sChargeCd);
          end else
          if (sSubType = 'CT') then
          begin
            cbTermName.Properties.Items.Add(sChargeName);
            lbTermCd.Items.Add(sChargeCd);
          end else
          if (sSubType = 'CS') then
          begin
						cb_term_type2.Properties.Items.Add(sChargeName);
						cb_term_type3.Properties.Items.Add(sChargeName);
						cb_term_type4.Properties.Items.Add(sChargeName);
						lbTermTypeCd.Items.Add(sChargeCd);
					end else
          if (sSubType = 'CF') then
					begin
						cbFirstName.Properties.Items.Add(sChargeName);
						lbFirstCd.Items.Add(sChargeCd);
					end else
          if (sSubType = 'CP') then
					begin
						cbFirstDetailName.Properties.Items.Add(sChargeName);
						lbFirstDetailCd.Items.Add(sChargeCd);
					end;
					dmCharge.FDQuery_SQLite.Next;
        end;
      end else
      if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
      begin
        sQuery := 'SELECT CG_CD, CG_NM FROM CDMS_GROUP ORDER BY CG_CD ';
        dmCharge.proc_mysql_init;
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
				dmCharge.FDQuery1.Open;
        while not dmCharge.FDQuery1.eof do
        begin
          sChargeCd := dmCharge.FDQuery1.Fields[0].AsString;
					sChargeName := dmCharge.FDQuery1.Fields[1].AsString;
          sSubType := Copy(sChargeCd, 1, 2);
          if (sSubType = 'CC') or (sSubType = 'CA') then
          begin
						cbChartName.Properties.Items.Add(sChargeName);
            lbChartCd.Items.Add(sChargeCd);
          end else
          if (sSubType = 'CD') then
          begin
            cbDisName.Properties.Items.Add(sChargeName);
            lbDisCd.Items.Add(sChargeCd);
          end else
          if (sSubType = 'CT') then
          begin
            cbTermName.Properties.Items.Add(sChargeName);
            lbTermCd.Items.Add(sChargeCd);
          end else
          if (sSubType = 'CS') then
          begin
						cb_term_type2.Properties.Items.Add(sChargeName);
            cb_term_type3.Properties.Items.Add(sChargeName);
						cb_term_type4.Properties.Items.Add(sChargeName);
						lbTermTypeCd.Items.Add(sChargeCd);
					end else
          if (sSubType = 'CF') then
					begin
						cbFirstName.Properties.Items.Add(sChargeName);
						lbFirstCd.Items.Add(sChargeCd);
					end	else
          if (sSubType = 'CP') then
					begin
						cbFirstDetailName.Properties.Items.Add(sChargeName);
						lbFirstDetailCd.Items.Add(sChargeCd);
					end;
          dmCharge.FDQuery1.Next;
        end;
      end;
    end else
		if sJob = 'SELECTCHARGE' then
    begin
      if iType = 0 then
      begin
        cb_charge_name.Properties.Items.Clear;
        lbChargeCd.Items.Clear;
    		cb_charge_name2.Properties.Items.Clear;
      	lbChargeCd2.Items.Clear;

        lbchargenm.Items.Clear;
        lbchargenmcd.Items.Clear;
        vlChargeGroup.Strings.Clear;

				lbchargenm2.Items.Clear;
				lbchargenmcd2.Items.Clear;
				vlChargeGroup2.Strings.Clear;

				cb_Charge_First.Properties.Items.Clear;
        cb_Charge_PassG.Properties.Items.Clear;
				cb_Charge_FirstD.Properties.Items.Clear;
				cb_Charge_First.Properties.Items.Add('사용안함');
				cb_Charge_PassG.Properties.Items.Add('사용안함');
				cb_Charge_FirstD.Properties.Items.Add('사용안함');
			end;

      if CHARGE_GUBUN = 'P' then
      begin
				cb_Charge_First.ItemIndex := 0;;
        cb_Charge_PassG.ItemIndex := 0;
				cb_Charge_FirstD.ItemIndex := 0;
        swhere := '';
				if iType = 1 then
				begin
					cb_charge_name.Properties.Items.Clear;
					lbChargeCd.Items.Clear;
					if cb_Charge_Gubun.ItemIndex = 0 then
						sWhere := 'WHERE CG_GUBUN IN (''CC'', ''CA'') '
					else
					if cb_Charge_Gubun.ItemIndex = 1 then
						sWhere := 'WHERE CG_GUBUN = ''CD'' '
					else
					if cb_Charge_Gubun.ItemIndex = 2 then
						sWhere := 'WHERE CG_GUBUN = ''CT'' '
					else
					if cb_Charge_Gubun.ItemIndex = 3 then
						sWhere := 'WHERE CG_GUBUN = ''SM'' ';
					sQuery := 'SELECT CG_CD, CG_NM  FROM CHARGE_GROUP %s ORDER BY CG_CD ';
					sQuery := Format(sQuery, [sWhere]);
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.OPEN;

					cb_charge_name.Properties.Items.Add('사용안함');
  				lbchargenm.Items.Add('사용안함');
					lbchargenmcd.Items.Add('00000');
					lbChargeCd.Items.Add('00000');
					while not dmCharge.FDQuery_SQLite.eof do
					begin
						sChargeCd := dmCharge.FDQuery_SQLite.Fields[0].AsString;
						sChargeName := dmCharge.FDQuery_SQLite.Fields[1].AsString;
						sSubType := Copy(sChargeCd, 1, 2);
						lbchargenm.Items.Add(sChargeName);
						lbchargenmcd.Items.Add(sChargeCd);
						case cb_Charge_Gubun.ItemIndex of
							0:begin
									if (sSubType = 'CC') or (sSubType = 'CA') then
									begin
										cb_charge_name.Properties.Items.Add(sChargeName);
										lbChargeCd.Items.Add(sChargeCd);
									end;
								end;
							1:begin
									if (sSubType = 'CD') then
									begin
										cb_charge_name.Properties.Items.Add(sChargeName);
										lbChargeCd.Items.Add(sChargeCd);
									end;
								end;
							2:begin
									if (sSubType = 'CT') then
									begin
										cb_charge_name.Properties.Items.Add(sChargeName);
										lbChargeCd.Items.Add(sChargeCd);
									end;
								end;
							3:begin
									if (sSubType = 'SM') then
									begin
										cb_charge_name.Properties.Items.Add(sChargeName);
										lbChargeCd.Items.Add(sChargeCd);
									end;
								end;
						end;
						dmCharge.FDQuery_SQLite.Next;
					end;
				end else
				if iType = 2 then
				begin
					cb_charge_name2.Properties.Items.Clear;
					lbChargeCd2.Items.Clear;
					if cb_Charge_Gubun2.ItemIndex = 0 then
						sWhere := 'WHERE CG_GUBUN IN (''CC'', ''CA'') '
					else if cb_Charge_Gubun2.ItemIndex = 1 then
						sWhere := 'WHERE CG_GUBUN = ''CD'' '
					else if cb_Charge_Gubun2.ItemIndex = 2 then
						sWhere := 'WHERE CG_GUBUN = ''CT'' '
					else if cb_Charge_Gubun2.ItemIndex = 2 then
						sWhere := 'WHERE CG_GUBUN = ''SM'' ';

					sQuery := 'SELECT CG_CD, CG_NM  FROM CHARGE_GROUP %s ORDER BY CG_CD ';
					sQuery := Format(sQuery, [sWhere]);
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.OPEN;

					cb_charge_name2.Properties.Items.Add('사용안함');
  				lbchargenm2.Items.Add('사용안함');
  				lbchargenmcd2.Items.Add('00000');
					lbChargeCd2.Items.Add('00000');
					while not dmCharge.FDQuery_SQLite.eof do
					begin
						sChargeCd2 := dmCharge.FDQuery_SQLite.Fields[0].AsString;
						sChargeName2 := dmCharge.FDQuery_SQLite.Fields[1].AsString;
						sSubType2 := Copy(sChargeCd2, 1, 2);
						lbchargenm2.Items.Add(sChargeName2);
						lbchargenmcd2.Items.Add(sChargeCd2);
						case cb_Charge_Gubun2.ItemIndex of
							0:begin
									if (sSubType2 = 'CC') or (sSubType2 = 'CA') then
									begin
										cb_charge_name2.Properties.Items.Add(sChargeName2);
										lbChargeCd2.Items.Add(sChargeCd2);
									end;
								end;
							1:begin
									if (sSubType2 = 'CD') then
									begin
										cb_charge_name2.Properties.Items.Add(sChargeName2);
										lbChargeCd2.Items.Add(sChargeCd2);
									end;
								end;
							2:begin
									if (sSubType2 = 'CT') then
									begin
										cb_charge_name2.Properties.Items.Add(sChargeName2);
										lbChargeCd2.Items.Add(sChargeCd2);
									end;
								end;
							3:begin
									if (sSubType2 = 'SM') then
									begin
										cb_charge_name2.Properties.Items.Add(sChargeName2);
										lbChargeCd2.Items.Add(sChargeCd2);
									end;
								end;
						end;
						dmCharge.FDQuery_SQLite.Next;
					end;
				end	else
				begin
					cb_charge_name.Properties.Items.Clear;
					lbChargeCd.Items.Clear;
					cb_charge_name2.Properties.Items.Clear;
					lbChargeCd2.Items.Clear;

					sQuery := 'SELECT CG_CD, CG_NM  FROM CHARGE_GROUP %s ORDER BY CG_CD ';
					sQuery := Format(sQuery, [sWhere]);
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.OPEN;

					cb_charge_name.Properties.Items.Add('사용안함');
  				lbchargenm.Items.Add('사용안함');
  				lbchargenmcd.Items.Add('00000');
					lbChargeCd.Items.Add('00000');
					vlChargeGroup.Strings.Add('00000' + '=' + '사용안함');

					cb_charge_name2.Properties.Items.Add('사용안함');
  				lbchargenm2.Items.Add('사용안함');
  				lbchargenmcd2.Items.Add('00000');
					lbChargeCd2.Items.Add('00000');
					vlChargeGroup2.Strings.Add('00000' + '=' + '사용안함');

					while not dmCharge.FDQuery_SQLite.eof do
					begin
						sChargeCd := dmCharge.FDQuery_SQLite.Fields[0].AsString;
						sChargeName := dmCharge.FDQuery_SQLite.Fields[1].AsString;
						sSubType := Copy(sChargeCd, 1, 2);
						sChargeCd2 := dmCharge.FDQuery_SQLite.Fields[0].AsString;
						sChargeName2 := dmCharge.FDQuery_SQLite.Fields[1].AsString;
						sSubType2 := Copy(sChargeCd, 1, 2);
						lbchargenm.Items.Add(sChargeName);
						lbchargenmcd.Items.Add(sChargeCd);
						lbchargenm2.Items.Add(sChargeName2);
						lbchargenmcd2.Items.Add(sChargeCd2);
						if iType = 0 then
						begin
							sChargeCd := dmCharge.FDQuery_SQLite.Fields[0].AsString;
							sChargeName := dmCharge.FDQuery_SQLite.Fields[1].AsString;
							vlChargeGroup.Strings.Add(sChargeCd + '=' + sChargeName);
							sChargeCd2 := dmCharge.FDQuery_SQLite.Fields[0].AsString;
							sChargeName2 := dmCharge.FDQuery_SQLite.Fields[1].AsString;
							vlChargeGroup2.Strings.Add(sChargeCd2 + '=' + sChargeName2);
							if (sSubType = 'CS') then
							begin
								cb_Charge_PassG.Properties.Items.Add(sChargeName);
							end else
							if (sSubType = 'CF') then
							begin
								cb_Charge_First.Properties.Items.Add(sChargeName);
							end	else
							if (sSubType = 'CP') then
							begin
								cb_Charge_FirstD.Properties.Items.Add(sChargeName);
							end;
						end;
						case cb_Charge_Gubun.ItemIndex of
							0:begin
									if (sSubType = 'CC') or (sSubType = 'CA') then
									begin
										cb_charge_name.Properties.Items.Add(sChargeName);
										lbChargeCd.Items.Add(sChargeCd);
									end;
								end;
							1:begin
									if (sSubType = 'CD') then
									begin
										cb_charge_name.Properties.Items.Add(sChargeName);
										lbChargeCd.Items.Add(sChargeCd);
									end;
								end;
							2:begin
									if (sSubType2 = 'CT') then
									begin
										cb_charge_name2.Properties.Items.Add(sChargeName2);
										lbChargeCd2.Items.Add(sChargeCd2);
									end;
								end;
							3:begin
									if (sSubType2 = 'SM') then
									begin
										cb_charge_name2.Properties.Items.Add(sChargeName2);
										lbChargeCd2.Items.Add(sChargeCd2);
									end;
								end;
						end;
						case cb_Charge_Gubun2.ItemIndex of
							0:begin
									if (sSubType2 = 'CC') or (sSubType2 = 'CA') then
									begin
										cb_charge_name2.Properties.Items.Add(sChargeName2);
										lbChargeCd2.Items.Add(sChargeCd);
									end;
								end;
							1:begin
									if (sSubType2 = 'CD') then
									begin
										cb_charge_name2.Properties.Items.Add(sChargeName2);
										lbChargeCd2.Items.Add(sChargeCd2);
									end;
								end;
							2:begin
									if (sSubType2 = 'CT') then
									begin
										cb_charge_name2.Properties.Items.Add(sChargeName2);
										lbChargeCd2.Items.Add(sChargeCd2);
									end;
								end;
							3:begin
									if (sSubType2 = 'SM') then
									begin
										cb_charge_name2.Properties.Items.Add(sChargeName2);
										lbChargeCd2.Items.Add(sChargeCd2);
									end;
								end;
						end;
						dmCharge.FDQuery_SQLite.Next;
					end;
					cb_charge_name.ItemIndex := 0;
					cb_charge_name2.ItemIndex := 0;
					cb_Charge_First.ItemIndex := 0;
					cb_Charge_FirstD.ItemIndex := 0;
					cb_Charge_PassG.ItemIndex := 0;
					cb_Charge_Pass.ItemIndex := -1;
				end;
				if iType = 0 then
				begin
					// test,test2필드때메 인덱스 쭉쭉 밀림(그필드는 적용하면 안되는거임)
					sQuery := 'SELECT CT_NO, CT_BR_NO, CT_KEY_NUM, CT_GUBUN, CT_CD, CT_GUBUN2, CT_CD2, IN_DATE, CT_PASSVALUE, CT_FIRST_CD, CT_PASS_GUBUN, CT_PASS_CD, CT_PASS_VIEW, PREM_NSEQ, PREM_STTIME, PREM_EDTIME FROM CDMS_CHARGE_TYPE';
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.OPEN;
					asg_Br_Charge.BeginUpdate;
					while not dmCharge.FDQuery_SQLite.eof do
					begin
						sKeyNumber := dmCharge.FDQuery_SQLite.Fields[2].AsString;
						sChargeCd  := dmCharge.FDQuery_SQLite.Fields[4].AsString;
						sChargeCd2 := dmCharge.FDQuery_SQLite.Fields[6].AsString;
						sDate := dmCharge.FDQuery_SQLite.Fields[7].AsString;
						sPassValue := dmCharge.FDQuery_SQLite.Fields[8].AsString;
						sFirstCd   := dmCharge.FDQuery_SQLite.Fields[9].AsString;
						sPassCd    := dmCharge.FDQuery_SQLite.Fields[11].AsString;
						sSubType := Copy(sChargeCd, 1, 2);
						sSubType2 := Copy(sChargeCd2, 1, 2);
						sPridx := strtointdef(dmCharge.FDQuery_SQLite.Fieldbyname('PREM_NSEQ').AsString,0);
						sPrstr := IndexOfPrSeq(sPridx);
						sSttime := dmCharge.FDQuery_SQLite.Fieldbyname('PREM_STTIME').AsString;
						sEdtime := dmCharge.FDQuery_SQLite.Fieldbyname('PREM_EDTIME').AsString;

						iRow := asg_Br_Charge.DataController.FindRecordIndexByText(0, 2, strtocall(sKeyNumber), True, False, True);
						if iRow >= 0 then
						begin
							sChargeName := vlChargeGroup.Values[sChargeCd];
							sChargeName2 := vlChargeGroup2.Values[sChargeCd2];

							if Trim(sChargeName) <> '' then
							begin
								asg_Br_Charge.DataController.Values[iRow, 11] := sPrstr;
								asg_Br_Charge.DataController.Values[iRow, 12] := sSttime;
								asg_Br_Charge.DataController.Values[iRow, 13] := sEdtime;
								if sPrstr='' then
								begin
									asg_Br_Charge.DataController.Values[iRow, 12] := '';
									asg_Br_Charge.DataController.Values[iRow, 13] := '';
								end;
								OutputDebugString(PChar('요금제'+sPrstr));

								if (sSubType = 'CC') or (sSubType = 'CA') then
									asg_Br_Charge.DataController.Values[iRow, 3] := '요금표'
								else if sSubType = 'CD' then
									asg_Br_Charge.DataController.Values[iRow, 3] := '거리요금'
								else if sSubType = 'CT' then
									asg_Br_Charge.DataController.Values[iRow, 3] := '구간요금'
								else if sSubType = 'SM' then
									asg_Br_Charge.DataController.Values[iRow, 3] := '스마트요금';
								asg_Br_Charge.DataController.Values[iRow, 4] := sChargeName;

								if (sSubType2 = 'CC') or (sSubType2 = 'CA') then
									asg_Br_Charge.DataController.Values[iRow, 5] := '요금표'
								else if sSubType2 = 'CD' then
									asg_Br_Charge.DataController.Values[iRow, 5] := '거리요금'
								else if sSubType2 = 'CT' then
									asg_Br_Charge.DataController.Values[iRow, 5] := '구간요금'
								else if sSubType2 = 'SM' then
									asg_Br_Charge.DataController.Values[iRow, 5] := '스마트요금';
								asg_Br_Charge.DataController.Values[iRow, 6] := sChargeName2;

								// 2011.02.09
								asg_Br_Charge.DataController.Values[iRow, 18] := sFirstCd;
								if sFirstCd <> '' then
								begin
									sFirstNm := vlChargeGroup.Values[sFirstCd];
									asg_Br_Charge.DataController.Values[iRow, 7] := sFirstNm;
								end
								else
									asg_Br_Charge.DataController.Values[iRow, 7] := '사용안함';

  							asg_Br_Charge.DataController.Values[iRow, 8] := '';

								if StrToIntDef(dmCharge.FDQuery_SQLite.Fields[11].AsString, 0) = 0 then
								begin
									asg_Br_Charge.DataController.Values[iRow,  9] := FormatFloat('#,##0', StrToFloatDef(dmCharge.FDQuery_SQLite.Fields[8].AsString, 0.0));
									asg_Br_Charge.DataController.Values[iRow, 10] := '';
									// 2011.02.09(변경+3)
									asg_Br_Charge.DataController.Values[iRow, 19] := '';
									asg_Br_Charge.DataController.Values[iRow, 20] := '';
								end else
								begin
									if sPassCd <> '' then
									begin
										sPassNm := vlChargeGroup.Values[sPassCd];
										asg_Br_Charge.DataController.Values[iRow, 9] := sPassNm;
									end
									else
										asg_Br_Charge.DataController.Values[iRow, 9] := '사용안함';
									// 2011.02.09 (8부터 +3)
									asg_Br_Charge.DataController.Values[iRow, 20] := IntToStr(StrToIntDef(dmCharge.FDQuery_SQLite.Fields[12].AsString, 0));
									asg_Br_Charge.DataController.Values[iRow, 10] := cb_Charge_Pass.Properties.Items.Strings[StrToIntDef(dmCharge.FDQuery_SQLite.Fields[12].AsString, 0)];
									asg_Br_Charge.DataController.Values[iRow, 19] := dmCharge.FDQuery_SQLite.Fields[11].AsString;
								end;
								// 2011.02.09 (8부터 +3)
								asg_Br_Charge.DataController.Values[iRow, 14] := dmCharge.FDQuery_SQLite.Fields[7].AsString;
								asg_Br_Charge.DataController.Values[iRow, 16] := dmCharge.FDQuery_SQLite.Fields[4].AsString;
								asg_Br_Charge.DataController.Values[iRow, 17] := dmCharge.FDQuery_SQLite.Fields[6].AsString;
							end;
						end;
						dmCharge.FDQuery_SQLite.next;
					end;
					asg_Br_Charge.EndUpdate;
				end;
      end else
      if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
			begin
				swhere := '';
				if iType = 1 then
				begin
					cb_charge_name.Properties.Items.Clear;
					lbChargeCd.Items.Clear;
					if cb_Charge_Gubun.ItemIndex = 0 then
						sWhere := 'WHERE CG_GUBUN IN (''CC'', ''CA'') '
					else if cb_Charge_Gubun.ItemIndex = 1 then
						sWhere := 'WHERE CG_GUBUN = ''CD'' '
					else if cb_Charge_Gubun.ItemIndex = 2 then
						sWhere := 'WHERE CG_GUBUN = ''CT'' '
					else if cb_Charge_Gubun.ItemIndex = 3 then
						sWhere := 'WHERE CG_GUBUN = ''SM'' ';

					sQuery := 'SELECT CG_CD, CG_NM  FROM CDMS_GROUP %s ORDER BY CG_CD ';
					sQuery := Format(sQuery, [sWhere]);
					dmCharge.proc_mysql_init;
					dmCharge.FDQuery1.Close;
					dmCharge.FDQuery1.SQL.Text := sQuery;
					dmCharge.FDQuery1.Open;

					cb_charge_name.Properties.Items.Add('사용안함');
  				lbchargenm.Items.Add('사용안함');
  				lbchargenmcd.Items.Add('00000');
					lbChargeCd.Items.Add('00000');

					while not dmCharge.FDQuery1.eof do
					begin
						sChargeCd := dmCharge.FDQuery1.Fields[0].AsString;
						sChargeName := dmCharge.FDQuery1.Fields[1].AsString;
						sSubType := Copy(sChargeCd, 1, 2);
						lbchargenm.Items.Add(sChargeName);
						lbchargenmcd.Items.Add(sChargeCd);
						case cb_Charge_Gubun.ItemIndex of
							0:begin
									if (sSubType = 'CC') or (sSubType = 'CA') then
									begin
										cb_charge_name.Properties.Items.Add(sChargeName);
										lbChargeCd.Items.Add(sChargeCd);
									end;
								end;
							1:begin
									if (sSubType = 'CD') then
									begin
										cb_charge_name.Properties.Items.Add(sChargeName);
										lbChargeCd.Items.Add(sChargeCd);
									end;
								end;
							2:begin
									if (sSubType = 'CT') then
									begin
										cb_charge_name.Properties.Items.Add(sChargeName);
										lbChargeCd.Items.Add(sChargeCd);
									end;
								end;
							3:begin
									if (sSubType = 'SM') then
									begin
										cb_charge_name.Properties.Items.Add(sChargeName);
										lbChargeCd.Items.Add(sChargeCd);
									end;
								end;
						end;
						dmCharge.FDQuery1.Next;
					end;
				end else
				if iType = 2 then
				begin
					cb_charge_name2.Properties.Items.Clear;
					lbChargeCd2.Items.Clear;
					if cb_Charge_Gubun2.ItemIndex = 0 then
						sWhere := 'WHERE CG_GUBUN IN (''CC'', ''CA'') '
					else if cb_Charge_Gubun2.ItemIndex = 1 then
						sWhere := 'WHERE CG_GUBUN = ''CD'' '
					else if cb_Charge_Gubun2.ItemIndex = 2 then
						sWhere := 'WHERE CG_GUBUN = ''CT'' '
					else if cb_Charge_Gubun2.ItemIndex = 3 then
						sWhere := 'WHERE CG_GUBUN = ''SM'' ';

					sQuery := 'SELECT CG_CD, CG_NM  FROM CDMS_GROUP %s ORDER BY CG_CD ';
					sQuery := Format(sQuery, [sWhere]);
					dmCharge.proc_mysql_init;
					dmCharge.FDQuery1.Close;
					dmCharge.FDQuery1.SQL.Text := sQuery;
					dmCharge.FDQuery1.Open;

					cb_charge_name2.Properties.Items.Add('사용안함');
  				lbchargenm2.Items.Add('사용안함');
  				lbchargenmcd2.Items.Add('00000');
					lbChargeCd2.Items.Add('00000');

					while not dmCharge.FDQuery1.eof do
					begin
						sChargeCd2 := dmCharge.FDQuery1.Fields[0].AsString;
						sChargeName2 := dmCharge.FDQuery1.Fields[1].AsString;
						sSubType2 := Copy(sChargeCd2, 1, 2);
						lbchargenm2.Items.Add(sChargeName2);
						lbchargenmcd2.Items.Add(sChargeCd2);
						case cb_Charge_Gubun2.ItemIndex of
							0:begin
									if (sSubType2 = 'CC') or (sSubType2 = 'CA') then
									begin
										cb_charge_name2.Properties.Items.Add(sChargeName2);
										lbChargeCd2.Items.Add(sChargeCd2);
									end;
								end;
							1:begin
									if (sSubType2 = 'CD') then
									begin
										cb_charge_name2.Properties.Items.Add(sChargeName2);
										lbChargeCd2.Items.Add(sChargeCd2);
									end;
								end;
							2:begin
									if (sSubType2 = 'CT') then
									begin
										cb_charge_name2.Properties.Items.Add(sChargeName2);
										lbChargeCd2.Items.Add(sChargeCd2);
									end;
								end;
							3:begin
									if (sSubType2 = 'SM') then
									begin
										cb_charge_name2.Properties.Items.Add(sChargeName2);
										lbChargeCd2.Items.Add(sChargeCd2);
									end;
								end;
						end;
						dmCharge.FDQuery1.Next;
					end;
				end	else
				begin
					cb_charge_name.Properties.Items.Clear;
					lbChargeCd.Items.Clear;
					cb_charge_name2.Properties.Items.Clear;
					lbChargeCd2.Items.Clear;

					sQuery := 'SELECT CG_CD, CG_NM  FROM CDMS_GROUP %s ORDER BY CG_CD ';
					sQuery := Format(sQuery, [sWhere]);
					dmCharge.proc_mysql_init;
					dmCharge.FDQuery1.Close;
					dmCharge.FDQuery1.SQL.Text := sQuery;
					dmCharge.FDQuery1.Open;

					cb_charge_name.Properties.Items.Add('사용안함');
  				lbchargenm.Items.Add('사용안함');
  				lbchargenmcd.Items.Add('00000');
					lbChargeCd.Items.Add('00000');
					vlChargeGroup.Strings.Add('00000' + '=' + '사용안함');

					cb_charge_name2.Properties.Items.Add('사용안함');
  				lbchargenm2.Items.Add('사용안함');
  				lbchargenmcd2.Items.Add('00000');
					lbChargeCd2.Items.Add('00000');
					vlChargeGroup2.Strings.Add('00000' + '=' + '사용안함');
					while not dmCharge.FDQuery1.eof do
					begin
						sChargeCd := dmCharge.FDQuery1.Fields[0].AsString;
						sChargeName := dmCharge.FDQuery1.Fields[1].AsString;
						sSubType := Copy(sChargeCd, 1, 2);
						sChargeCd2 := dmCharge.FDQuery1.Fields[0].AsString;
						sChargeName2 := dmCharge.FDQuery1.Fields[1].AsString;
						sSubType2 := Copy(sChargeCd, 1, 2);
						lbchargenm.Items.Add(sChargeName);
						lbchargenmcd.Items.Add(sChargeCd);
						lbchargenm2.Items.Add(sChargeName2);
						lbchargenmcd2.Items.Add(sChargeCd2);
						if iType = 0 then
						begin
							sChargeCd := dmCharge.FDQuery1.Fields[0].AsString;
							sChargeName := dmCharge.FDQuery1.Fields[1].AsString;
							vlChargeGroup.Strings.Add(sChargeCd + '=' + sChargeName);
							sChargeCd2 := dmCharge.FDQuery1.Fields[0].AsString;
							sChargeName2 := dmCharge.FDQuery1.Fields[1].AsString;
							vlChargeGroup2.Strings.Add(sChargeCd2 + '=' + sChargeName2);
							if (sSubType = 'CS') then
							begin
								cb_Charge_PassG.Properties.Items.Add(sChargeName);
							end else
  						if (sSubType = 'CF') then
							begin
								cb_Charge_First.Properties.Items.Add(sChargeName);
							end	else
							if (sSubType = 'CP') then
							begin
								cb_Charge_FirstD.Properties.Items.Add(sChargeName);
							end;
						end;
						case cb_Charge_Gubun.ItemIndex of
							0:begin
									if (sSubType = 'CC') or (sSubType = 'CA') then
									begin
										cb_charge_name.Properties.Items.Add(sChargeName);
										lbChargeCd.Items.Add(sChargeCd);
									end;
								end;
							1:begin
									if (sSubType = 'CD') then
									begin
										cb_charge_name.Properties.Items.Add(sChargeName);
										lbChargeCd.Items.Add(sChargeCd);
									end;
								end;
							2:begin
									if (sSubType = 'CT') then
									begin
										cb_charge_name.Properties.Items.Add(sChargeName);
										lbChargeCd.Items.Add(sChargeCd);
									end;
								end;
							3:begin
									if (sSubType = 'SM') then
									begin
										cb_charge_name.Properties.Items.Add(sChargeName);
										lbChargeCd.Items.Add(sChargeCd);
									end;
								end;
						end;
						case cb_Charge_Gubun2.ItemIndex of
							0:begin
									if (sSubType2 = 'CC') or (sSubType2 = 'CA') then
									begin
										cb_charge_name2.Properties.Items.Add(sChargeName2);
										lbChargeCd2.Items.Add(sChargeCd);
									end;
								end;
							1:begin
									if (sSubType2 = 'CD') then
									begin
										cb_charge_name2.Properties.Items.Add(sChargeName2);
										lbChargeCd2.Items.Add(sChargeCd2);
									end;
								end;
							2:begin
									if (sSubType2 = 'CT') then
									begin
										cb_charge_name2.Properties.Items.Add(sChargeName2);
										lbChargeCd2.Items.Add(sChargeCd2);
									end;
								end;
							3:begin
									if (sSubType2 = 'SM') then
									begin
										cb_charge_name2.Properties.Items.Add(sChargeName2);
										lbChargeCd2.Items.Add(sChargeCd2);
									end;
								end;
						end;
						dmCharge.FDQuery1.Next;
					end;
					cb_charge_name.ItemIndex := 0;
					cb_charge_name2.ItemIndex := 0;
					cb_Charge_First.ItemIndex := 0;
					cb_Charge_FirstD.ItemIndex := 0;
					cb_Charge_PassG.ItemIndex := 0;
					cb_Charge_Pass.ItemIndex := -1;
				end;

				if iType = 0 then
        begin
          sQuery := 'SELECT CT_NO, CT_BR_NO, CT_KEY_NUM, CT_GUBUN, CT_CD, CT_GUBUN2, CT_CD2, IN_DATE, CT_PASSVALUE, CT_FIRST_CD, CT_PASS_GUBUN, CT_PASS_CD, CT_PASS_VIEW, PREM_NSEQ, PREM_STTIME, PREM_EDTIME, CT_NEWDIST_YN FROM CDMS_TYPE';
          dmCharge.proc_mysql_init;
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.Open;

          asg_Br_Charge.BeginUpdate;
          while not dmCharge.FDQuery1.eof do
          begin
            sKeyNumber := dmCharge.FDQuery1.Fields[2].AsString;
						sChargeCd := dmCharge.FDQuery1.Fields[4].AsString;
						sChargeCd2 := dmCharge.FDQuery1.Fields[6].AsString;
						sDate := dmCharge.FDQuery1.Fields[7].AsString;
						sPassValue := dmCharge.FDQuery1.Fields[8].AsString;
						sFirstCd := dmCharge.FDQuery1.Fields[9].AsString;
						sPassCd := dmCharge.FDQuery1.Fields[11].AsString;
						sSubType := Copy(sChargeCd, 1, 2);
						sSubType2 := Copy(sChargeCd2, 1, 2);
						sPridx := strtointdef(dmCharge.FDQuery1.Fields[13].Asstring,0);
            sPrstr := IndexOfPrSeq(sPridx);
						sSttime := dmCharge.FDQuery1.Fields[14].Asstring;
						sEdtime := dmCharge.FDQuery1.Fields[15].Asstring;
            if dmCharge.FDQuery1.Fields[16].Asstring = 'y' then sNewDistYn := '사용' else
            if dmCharge.FDQuery1.Fields[16].Asstring = 'n' then sNewDistYn := '사용안함';

            iRow := asg_Br_Charge.DataController.FindRecordIndexByText(0, 2, strtocall(sKeyNumber), True, False, True);
            if iRow >= 0 then
            begin
							sChargeName := vlChargeGroup.Values[sChargeCd];
							sChargeName2 := vlChargeGroup2.Values[sChargeCd2];
							if Trim(sChargeName) <> '' then
              begin
								//2011.02.14
								asg_Br_Charge.DataController.Values[iRow, 11] := sPrstr;
								asg_Br_Charge.DataController.Values[iRow, 12] := sSttime;
								asg_Br_Charge.DataController.Values[iRow, 13] := sEdtime;
								if sPrstr = '' then
								begin
									asg_Br_Charge.DataController.Values[iRow, 12] := '';
									asg_Br_Charge.DataController.Values[iRow, 13] := '';
                end;
                if (sSubType = 'CC') or (sSubType = 'CA') then
                  asg_Br_Charge.DataController.Values[iRow, 3] := '요금표'
                else if sSubType = 'CD' then
                  asg_Br_Charge.DataController.Values[iRow, 3] := '거리요금'
                else if sSubType = 'CT' then
                  asg_Br_Charge.DataController.Values[iRow, 3] := '구간요금'
                else if sSubType = 'SM' then
                  asg_Br_Charge.DataController.Values[iRow, 3] := '스마트요금';
								asg_Br_Charge.DataController.Values[iRow, 4] := sChargeName;

								if (sSubType2 = 'CC') or (sSubType = 'CA') then
									asg_Br_Charge.DataController.Values[iRow, 5] := '요금표'
								else if sSubType2 = 'CD' then
									asg_Br_Charge.DataController.Values[iRow, 5] := '거리요금'
								else if sSubType2 = 'CT' then
									asg_Br_Charge.DataController.Values[iRow, 5] := '구간요금'
                else if sSubType2 = 'SM' then
                  asg_Br_Charge.DataController.Values[iRow, 5] := '스마트요금';
								asg_Br_Charge.DataController.Values[iRow, 6] := sChargeName2;
								// 2011.02.09 (8부터 +3)
								asg_Br_Charge.DataController.Values[iRow, 18] := sFirstCd;
                if sFirstCd <> '' then
                begin
                  sFirstNm := vlChargeGroup.Values[sFirstCd];
									asg_Br_Charge.DataController.Values[iRow, 7] := sFirstNm;
                end else
									asg_Br_Charge.DataController.Values[iRow, 7] := '사용안함';

									asg_Br_Charge.DataController.Values[iRow, 8] := sNewDistYn;

								if StrToIntDef(dmCharge.FDQuery1.Fields[10].AsString, 0) = 0 then
                begin
									asg_Br_Charge.DataController.Values[iRow,  9] := FormatFloat('#,##0', StrToFloatDef(dmCharge.FDQuery1.Fields[8].AsString, 0.0));
									asg_Br_Charge.DataController.Values[iRow, 10] := '';
                  // 2011.02.09 (8부터 +3)
									asg_Br_Charge.DataController.Values[iRow, 19] := '';
									asg_Br_Charge.DataController.Values[iRow, 20] := '';
                end else
                begin
                  if sPassCd <> '' then
                  begin
                    sPassNm := vlChargeGroup.Values[sPassCd];
										asg_Br_Charge.DataController.Values[iRow, 9] := sPassNm;
                  end
                  else
										asg_Br_Charge.DataController.Values[iRow, 9] := '사용안함';
                  // 2011.02.09 (8부터 +3)
									asg_Br_Charge.DataController.Values[iRow, 20] := IntToStr(StrToIntDef(dmCharge.FDQuery1.Fields[12].AsString, 0));
									asg_Br_Charge.DataController.Values[iRow, 10] := cb_Charge_Pass.Properties.Items.Strings[StrToIntDef(dmCharge.FDQuery1.Fields[12].AsString, 0)];
									asg_Br_Charge.DataController.Values[iRow, 19] := dmCharge.FDQuery1.Fields[11].AsString;
                end;
								asg_Br_Charge.DataController.Values[iRow, 14] := dmCharge.FDQuery1.Fields[7].AsString;
								asg_Br_Charge.DataController.Values[iRow, 16] := dmCharge.FDQuery1.Fields[4].AsString;
								asg_Br_Charge.DataController.Values[iRow, 17] := dmCharge.FDQuery1.Fields[6].AsString;
							end;
            end;
						dmCharge.FDQuery1.next;
          end;
					asg_Br_Charge.EndUpdate;
        end;
      end;
     { cb_charge_name.ItemIndex := 0;
			ComboBox1.ItemIndex := 0;
			cxComboBox2.ItemIndex := 0;
			ComboBox2.ItemIndex := 0;
			ComboBox3.ItemIndex := -1;   }

      //2011.02.14 심야요금 시간설정
      cbb1.Properties.OnChange(Self);
    end else
    if sJob = 'SELECTCHARGETYPE' then
    begin
      sChargeCd := ed_charge_cd.Text;
      if sChargeCd = '' then Exit;

      sSubType := Copy(ed_charge_cd.Text, 1, 2);
      if sSubType = 'CA' then sSubType := 'FC' else
      if sSubType = 'CD' then sSubType := 'DC' else
      if sSubType = 'CT' then sSubType := 'TC';

			sQuery := 'SELECT ' + sSubType + '_STCITY, ' + sSubType + '_STWARD, ' +
        sSubType + '_STDONG, ' + sSubType + '_EDCITY, ' + sSubType + '_EDWARD, ' +
				sSubType + '_EDDONG %s '
				+ 'FROM %s WHERE ' + sSubType + '_CD = ''%s'' AND ' + sSubType +
				'_NO > 1 ORDER BY 1,2,3,4,5,6 ';
      if (sSubType = 'CC') or (sSubType = 'FC') then
      begin
				cxPageControl3.ActivePageIndex := 0;
				sSelect := ', ' + sSubType + '_VALUE ';
				if CHARGE_GUBUN = 'P' then
        begin
					if sSubType = 'FC' then
						sTable := 'CDMS_FIRST_CHARGE'
          else
						sTable := 'CDMS_CHART_CHARGE';
          sQuery := Format(sQuery, [sSelect, sTable, sChargeCd]);
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.OPEN;
					
          cxGrid_Chart.BeginUpdate;
					cxGrid_Chart.DataController.SetRecordCount(0);
					while not dmCharge.FDQuery_SQLite.eof do
					begin
						iRow := cxGrid_Chart.DataController.AppendRecord;
						cxGrid_Chart.DataController.Values[iRow, 0] := IntToStr(iRow +
							1);
						for i := 0 to dmCharge.FDQuery_SQLite.FieldCount - 1 do
						begin
							cxGrid_Chart.DataController.Values[iRow, i + 1] := dmCharge.FDQuery_SQLite.Fields[i].AsString;
						end;
						cxGrid_Chart.DataController.Values[iRow, 7] := FormatFloat('#,##0',
																													 StrToFloatDef(cxGrid_Chart.DataController.Values[iRow, 7],	0.0));
						dmCharge.FDQuery_SQLite.Next;
					end;
					cxGrid_Chart.EndUpdate;
        end else
        if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
        begin
          if sSubType = 'FC' then
            sTable := 'CDMS_FIRST'
          else
            sTable := 'CDMS_CHART';
          sQuery := Format(sQuery, [sSelect, sTable, sChargeCd]);
          dmCharge.proc_mysql_init;
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
					dmCharge.FDQuery1.Open;
          cxGrid_Chart.BeginUpdate;
          cxGrid_Chart.DataController.SetRecordCount(0);
          if not dmCharge.FDQuery1.IsEmpty then
          begin
            while not dmCharge.FDQuery1.eof do
            begin
              iRow := cxGrid_Chart.DataController.AppendRecord;
              cxGrid_Chart.DataController.Values[iRow, 0] := IntToStr(iRow +
                1);
							for i := 0 to dmCharge.FDQuery1.FieldCount - 1 do
                cxGrid_Chart.DataController.Values[iRow, i + 1] :=
                  dmCharge.FDQuery1.Fields[i].AsString;
              cxGrid_Chart.DataController.Values[iRow, 7] :=
                FormatFloat('#,##0',
                StrToFloatDef(cxGrid_Chart.DataController.Values[iRow, 7],
                0.0));
              dmCharge.FDQuery1.Next;
            end;
          end;
          cxGrid_Chart.EndUpdate;
				end;
      end else
      if (sSubType = 'DC') then
      begin
        cxPageControl3.ActivePageIndex := 1;
        sSelect := ', ' + sSubType + '_LOWVALUE, ' + sSubType + '_GERTERM, ' +
          sSubType + '_GERVALUE, ' + sSubType + '_OVERTERM, ' + sSubType +
          '_OVERVALUE ';
        if CHARGE_GUBUN = 'P' then
        begin
          sTable := 'CDMS_DIS_CHARGE';
          sQuery := Format(sQuery, [sSelect, sTable, sChargeCd]);
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.OPEN;
					
          cxGrid_Dis.BeginUpdate;
          cxGrid_Dis.DataController.SetRecordCount(0);
					while not dmCharge.FDQuery_SQLite.eof do
					begin
						iRow := cxGrid_Dis.DataController.AppendRecord;
						cxGrid_Dis.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
						for i := 0 to dmCharge.FDQuery_SQLite.FieldCount - 1 do
						begin
							cxGrid_Dis.DataController.Values[iRow, i + 1] := dmCharge.FDQuery_SQLite.Fields[i].AsString;
						end;
						cxGrid_Dis.DataController.Values[iRow, 7] := StrToMoney(cxGrid_Dis.DataController.Values[iRow, 7]);
						cxGrid_Dis.DataController.Values[iRow, 8] := StrToMoney(cxGrid_Dis.DataController.Values[iRow, 8]);
						cxGrid_Dis.DataController.Values[iRow, 9] := StrToMoney(cxGrid_Dis.DataController.Values[iRow, 9]);
						cxGrid_Dis.DataController.Values[iRow, 10] := StrToMoney(cxGrid_Dis.DataController.Values[iRow, 10]);
						cxGrid_Dis.DataController.Values[iRow, 11] := StrToMoney(cxGrid_Dis.DataController.Values[iRow, 11]);
						dmCharge.FDQuery_SQLite.Next;
					end;
					cxGrid_Dis.EndUpdate;
        end else
        if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
        begin
          sTable := 'CDMS_DISTANCE';
          sQuery := Format(sQuery, [sSelect, sTable, sChargeCd]);
          dmCharge.proc_mysql_init;
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.Open;
          cxGrid_Dis.BeginUpdate;
          cxGrid_Dis.DataController.SetRecordCount(0);
          if not dmCharge.FDQuery1.IsEmpty then
          begin
            while not dmCharge.FDQuery1.eof do
            begin
              iRow := cxGrid_Dis.DataController.AppendRecord;
              cxGrid_Dis.DataController.Values[iRow, 0] := IntToStr(iRow +
                1);
              for i := 0 to dmCharge.FDQuery1.FieldCount - 1 do
                cxGrid_Dis.DataController.Values[iRow, i + 1] :=
                  dmCharge.FDQuery1.Fields[i].AsString;
              cxGrid_Dis.DataController.Values[iRow, 7] := StrToMoney(cxGrid_Dis.DataController.Values[iRow, 7]);
              cxGrid_Dis.DataController.Values[iRow, 8] := StrToMoney(cxGrid_Dis.DataController.Values[iRow, 8]);
              cxGrid_Dis.DataController.Values[iRow, 9] := StrToMoney(cxGrid_Dis.DataController.Values[iRow, 9]);
              cxGrid_Dis.DataController.Values[iRow, 10] := StrToMoney(cxGrid_Dis.DataController.Values[iRow, 10]);
              cxGrid_Dis.DataController.Values[iRow, 11] := StrToMoney(cxGrid_Dis.DataController.Values[iRow, 11]);
              dmCharge.FDQuery1.Next;
            end;
          end;
          cxGrid_Dis.EndUpdate;
        end;
      end else
      if (sSubType = 'TC') then
      begin
        cxPageControl3.ActivePageIndex := 2;
        sSelect := ', ' + sSubType + '_BV, ' + sSubType + '_SUB_CD, ' + sSubType
          + '_PASS_CD ';
        if CHARGE_GUBUN = 'P' then
        begin
          sTable := 'CDMS_TERM_CHARGE';
          sQuery := Format(sQuery, [sSelect, sTable, sChargeCd]);
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.OPEN;
					
          cxGrid_Term.BeginUpdate;
          cxGrid_Term.DataController.SetRecordCount(0);
					while not dmCharge.FDQuery_SQLite.eof do
					begin
						iRow := cxGrid_Term.DataController.AppendRecord;
						cxGrid_Term.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
						for i := 0 to dmCharge.FDQuery_SQLite.FieldCount - 1 do
							cxGrid_Term.DataController.Values[iRow, i + 1] := dmCharge.FDQuery_SQLite.Fields[i].AsString;
						cxGrid_Term.DataController.Values[iRow, 7] := FormatFloat('#,##0', StrToFloatDef(cxGrid_Term.DataController.Values[iRow, 7], 0.0));
						if cxGrid_Term.DataController.Values[iRow, 8] <> '' then
						begin
							sChargeName := vlChargeGroup.Values[cxGrid_Term.DataController.Values[iRow, 8]];
							cxGrid_Term.DataController.Values[iRow, 8] := sChargeName;
						end;
						if cxGrid_Term.DataController.Values[iRow, 9] <> '' then
						begin
							sChargeName := vlChargeGroup.Values[cxGrid_Term.DataController.Values[iRow, 9]];
							cxGrid_Term.DataController.Values[iRow, 9] := sChargeName;
						end;
						dmCharge.FDQuery_SQLite.Next;
					end;
          cxGrid_Term.EndUpdate;
        end else
        if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
        begin
          sTable := 'CDMS_TERM';
          sQuery := Format(sQuery, [sSelect, sTable, sChargeCd]);
          dmCharge.proc_mysql_init;
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.Open;
          cxGrid_Term.BeginUpdate;
          cxGrid_Term.DataController.SetRecordCount(0);
          if not dmCharge.FDQuery1.IsEmpty then
          begin
            while not dmCharge.FDQuery1.eof do
            begin
              iRow := cxGrid_Term.DataController.AppendRecord;
              cxGrid_Term.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
              for i := 0 to dmCharge.FDQuery1.FieldCount - 1 do
                cxGrid_Term.DataController.Values[iRow, i + 1] := dmCharge.FDQuery1.Fields[i].AsString;
              cxGrid_Term.DataController.Values[iRow, 7] := FormatFloat('#,##0', StrToFloatDef(cxGrid_Term.DataController.Values[iRow, 7], 0.0));
              if cxGrid_Term.DataController.Values[iRow, 8] <> '' then
              begin
                sChargeName := vlChargeGroup.Values[cxGrid_Term.DataController.Values[iRow, 8]];
                cxGrid_Term.DataController.Values[iRow, 8] := sChargeName;
              end;
              if cxGrid_Term.DataController.Values[iRow, 9] <> '' then
              begin
                sChargeName := vlChargeGroup.Values[cxGrid_Term.DataController.Values[iRow, 9]];
                cxGrid_Term.DataController.Values[iRow, 9] := sChargeName;
              end;
              dmCharge.FDQuery1.Next;
            end;
          end;
          cxGrid_Term.EndUpdate;
        end;
      end;
    end else
    if sJob = 'CHARTSELECT' then
    begin
      if cbChartName.ItemIndex = -1 then Exit;

      if bChartChargeModify then
      begin
        if GMessagebox('수정된 자료가 있습니다.' + #13#10 + '저장하시겠습니까?'
          + #13#10 + '취소하시면 수정내역은 저장되지 않습니다.', CDMSQ) = idok then
        begin
          cxButton25Click(cxButton25);
        end;
      end;
      if cb_chart_stcity.ItemIndex = -1 then cb_chart_stcity.ItemIndex := 0;
      if cb_chart_edcity.ItemIndex = -1 then cb_chart_edcity.ItemIndex := 0;
      asg_Chart_charge.DataController.SetRecordCount(0);
      bChartChargeModify := False;

      if iType = 2 then Gauge2.Progress := 0
                   else cxProgressBar1.Progress := 0;

      sChargeCd := lbChartCd.Items[cbChartName.ItemIndex];
      sSubType := Copy(sChargeCd, 1, 2);
      if CHARGE_GUBUN = 'P' then
      begin
        sWhere := '';
        if sSubType = 'CC' then
        begin
          if iType = 0 then
            sWhere := func_Search_Where('CC', cb_chart_stcity,
              cb_chart_stward, cb_chart_edcity, cb_chart_edward, asg_chart_st,
              asg_chart_ed);
          sQuery := 'SELECT CC_STCITY, CC_STWARD, CC_STDONG, CC_EDCITY, CC_EDWARD, CC_EDDONG, CC_VALUE,'''',''S'' '
                  + '  FROM CDMS_CHART_CHARGE WHERE CC_CD = ''%s'' %s ORDER BY 1,2,3,4,5,6 ';
        end else
        if sSubType = 'CA' then
        begin
          if iType = 0 then
            sWhere := func_Search_Where('FC', cb_chart_stcity,
              cb_chart_stward, cb_chart_edcity, cb_chart_edward, asg_chart_st,
              asg_chart_ed);
          sQuery := 'SELECT FC_STCITY, FC_STWARD, FC_STDONG, FC_EDCITY, FC_EDWARD, FC_EDDONG, FC_VALUE,'''',''S'' '
                  + '  FROM CDMS_FIRST_CHARGE WHERE FC_CD = ''%s'' AND FC_NO > 1 %s ORDER BY 1,2,3,4,5,6          ';
        end;
        sQuery := Format(sQuery, [sChargeCd, sWhere]);
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.OPEN;
					
				if not dmCharge.FDQuery_SQLite.IsEmpty then
				begin
					cxProgressBar1.MaxValue := dmCharge.FDQuery_SQLite.RecordCount - 1;
					asg_Chart_charge.BeginUpdate;
					while not dmCharge.FDQuery_SQLite.eof do
					begin
						iRow := asg_Chart_charge.DataController.AppendRecord;
						asg_Chart_charge.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
						for i := 0 to dmCharge.FDQuery_SQLite.FieldCount - 1 do
						begin
							asg_Chart_charge.DataController.Values[iRow, i + 1] := dmCharge.FDQuery_SQLite.Fields[i].AsString;
						end;

						asg_Chart_charge.DataController.Values[iRow, 7] := FormatFloat('#,##0',  StrToFloatDef(asg_Chart_charge.DataController.Values[iRow, 7], 0.0));
						asg_Chart_charge.DataController.Values[iRow, 8] := asg_Chart_charge.DataController.Values[iRow, 1] +
																															 asg_Chart_charge.DataController.Values[iRow, 2] +
																															 asg_Chart_charge.DataController.Values[iRow, 3] +
																															 asg_Chart_charge.DataController.Values[iRow, 4] +
																															 asg_Chart_charge.DataController.Values[iRow, 5] +
																															 asg_Chart_charge.DataController.Values[iRow, 6];
						cxProgressBar1.Progress := iRow + 1;
						dmCharge.FDQuery_SQLite.Next;
					end;
					cxProgressBar1.Progress := 0;
					asg_Chart_charge.EndUpdate;
				end;
			end else
      if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
      begin
        sWhere := '';
        if sSubType = 'CC' then
        begin
          if iType = 0 then
            sWhere := func_Search_Where('CC', cb_chart_stcity,
              cb_chart_stward, cb_chart_edcity, cb_chart_edward, asg_chart_st,
              asg_chart_ed);
          sQuery := 'SELECT CC_STCITY, CC_STWARD, CC_STDONG, CC_EDCITY, CC_EDWARD, CC_EDDONG, CC_VALUE '
                  + '  FROM CDMS_CHART WHERE CC_CD = ''%s'' %s ORDER BY 1,2,3,4,5,6 ';
        end else
        if sSubType = 'CA' then
        begin
          if iType = 0 then
            sWhere := func_Search_Where('FC', cb_chart_stcity,
              cb_chart_stward, cb_chart_edcity, cb_chart_edward, asg_chart_st,
              asg_chart_ed);
          sQuery := 'SELECT FC_STCITY, FC_STWARD, FC_STDONG, FC_EDCITY, FC_EDWARD, FC_EDDONG, FC_VALUE '
                  + '  FROM CDMS_FIRST WHERE FC_CD = ''%s'' AND FC_NO > 1 %s ORDER BY 1,2,3,4,5,6 ';
        end;
        sQuery := Format(sQuery, [sChargeCd, sWhere]);
        dmCharge.proc_mysql_init;
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.Open;
        if not dmCharge.FDQuery1.IsEmpty then
        begin
          if iType = 2 then // 파일로 저장  20120719 LYB
          begin
            try
              slFile := TStringList.Create;
              slFile.Clear;
              Gauge2.MaxValue := cxGroupBox2.Tag;
              Gauge2.Progress := 0;
              i := 0;
              while not dmCharge.FDQuery1.eof do
              begin
                sTemp := IntToStr(i + 1);
                for j := 0 to dmCharge.FDQuery1.FieldCount - 1 do
                begin
                  sTemp := sTemp + ',' + StringReplace(dmCharge.FDQuery1.Fields[j].AsString, ',', '', [rfReplaceAll]);
                end;
                slFile.Add(sTemp);
                Gauge2.Progress := i;
                Application.ProcessMessages;
                dmCharge.FDQuery1.Next;
                if Not bStopFlag then Break;
                Inc(i);

                if i Mod 100000 = 0 then
                begin
                  pFileSave(AnsiString(slFile.Text), Lbl_sFile.Caption);
                  slFile.Clear;
                end;
              end;
              pFileSave(AnsiString(slFile.Text), Lbl_sFile.Caption);

              Gauge2.Progress := 0;
              FreeAndNil(slFile);
              pnl_Option.Visible := False;
              GMessagebox(Format('요금파일 [%s 건] 저장 완료했습니다.', [FormatFloat('#,', i)]), CDMSI);
            except
              FreeAndNil(slFile);
              screen.Cursor := crDefault;
              GMessagebox('알수 없는 일이 발생하여 데이타를 파일로 변환하는데 실패 하였습니다!!!', CDMSE);
              Exit;
            end;
          end else
          begin
            cxProgressBar1.MaxValue := dmCharge.FDQuery1.RecordCount - 1;
						asg_Chart_charge.BeginUpdate;
            while not dmCharge.FDQuery1.eof do
            begin
              iRow := asg_Chart_charge.DataController.AppendRecord;
              asg_Chart_charge.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
              for i := 0 to dmCharge.FDQuery1.FieldCount - 1 do
                asg_Chart_charge.DataController.Values[iRow, i + 1] := dmCharge.FDQuery1.Fields[i].AsString;

              asg_Chart_charge.DataController.Values[iRow, 7] := FormatFloat('#,##0', StrToFloatDef(asg_Chart_charge.DataController.Values[iRow, 7], 0.0));
              asg_Chart_charge.DataController.Values[iRow, 8] := asg_Chart_charge.DataController.Values[iRow, 1] +
                                                                 asg_Chart_charge.DataController.Values[iRow, 2] +
                                                                 asg_Chart_charge.DataController.Values[iRow, 3] +
                                                                 asg_Chart_charge.DataController.Values[iRow, 4] +
                                                                 asg_Chart_charge.DataController.Values[iRow, 5] +
                                                                 asg_Chart_charge.DataController.Values[iRow, 6];
              asg_Chart_charge.DataController.Values[iRow, 9] := 'S';

              cxProgressBar1.Progress := iRow + 1;
              Application.ProcessMessages;
              dmCharge.FDQuery1.Next;
            end;
            cxProgressBar1.Progress := 0;
            asg_Chart_charge.EndUpdate;            
          end;
        end;
      end;
    end else
    if sJob = 'DISSELECT' then
    begin
      if cbDisName.ItemIndex = -1 then Exit;
      if cb_dis_stcity.ItemIndex = -1 then
        cb_dis_stcity.ItemIndex := 0;
      if cb_dis_edcity.ItemIndex = -1 then
        cb_dis_edcity.ItemIndex := 0;
      asg_mod_dis.DataController.SetRecordCount(0);
      cxProgressBar2.Progress := 0;
      sChargeCd := lbDisCd.Items[cbDisName.ItemIndex];
      sSubType := Copy(sChargeCd, 1, 2);
      sWhere := '';
      if iType = 0 then
        sWhere := func_Search_Where('DC', cb_dis_stcity, cb_dis_stward,
          cb_dis_edcity, cb_dis_edward, asg_dis_st, asg_dis_ed);
      if CHARGE_GUBUN = 'P' then
      begin
        sQuery := 'SELECT DC_STCITY, DC_STWARD, DC_STDONG, DC_EDCITY, DC_EDWARD, DC_EDDONG, DC_LOWVALUE, DC_GERTERM, DC_GERVALUE, DC_OVERTERM, DC_OVERVALUE,'''',''S'' '
          + 'FROM CDMS_DIS_CHARGE WHERE DC_CD = ''%s'' %s ORDER BY 1,2,3,4,5,6 ';
        sQuery := Format(sQuery, [sChargeCd, sWhere]);
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.OPEN;
				if not dmCharge.FDQuery_SQLite.Eof then
				begin
					cxProgressBar2.MaxValue := dmCharge.FDQuery_SQLite.RecordCount - 1;
					asg_mod_dis.BeginUpdate;
					while not dmCharge.FDQuery_SQLite.eof do
          begin
            iRow := asg_mod_dis.DataController.AppendRecord;
            asg_mod_dis.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
						for i := 0 to dmCharge.FDQuery_SQLite.FieldCount - 1 do
						begin
							asg_mod_dis.DataController.Values[iRow, i + 1] :=	dmCharge.FDQuery_SQLite.Fields[i].AsString;
						end;
            asg_mod_dis.DataController.Values[iRow, 7] :=
              FormatFloat('#,##0',
              StrToFloatDef(asg_mod_dis.DataController.Values[iRow, 7], 0.0));
            asg_mod_dis.DataController.Values[iRow, 8] :=
              FormatFloat('#,##0',
              StrToFloatDef(asg_mod_dis.DataController.Values[iRow, 8], 0.0));
            asg_mod_dis.DataController.Values[iRow, 9] :=
              FormatFloat('#,##0',
              StrToFloatDef(asg_mod_dis.DataController.Values[iRow, 9], 0.0));
            asg_mod_dis.DataController.Values[iRow, 10] :=
              FormatFloat('#,##0',
              StrToFloatDef(asg_mod_dis.DataController.Values[iRow, 10], 0.0));
            asg_mod_dis.DataController.Values[iRow, 11] :=
              FormatFloat('#,##0',
              StrToFloatDef(asg_mod_dis.DataController.Values[iRow, 11], 0.0));
            asg_mod_dis.DataController.Values[iRow, 12] :=
              asg_mod_dis.DataController.Values[iRow, 1]
              + asg_mod_dis.DataController.Values[iRow, 2]
              + asg_mod_dis.DataController.Values[iRow, 3]
              + asg_mod_dis.DataController.Values[iRow, 4]
              + asg_mod_dis.DataController.Values[iRow, 5]
              + asg_mod_dis.DataController.Values[iRow, 6];
            cxProgressBar2.Progress := iRow + 1;
						dmCharge.FDQuery_SQLite.Next;
          end;
          cxProgressBar2.Progress := 0;
          asg_mod_dis.EndUpdate;
        end;
      end else
      if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
      begin
        sQuery := 'SELECT DC_STCITY, DC_STWARD, DC_STDONG, DC_EDCITY, DC_EDWARD, DC_EDDONG, DC_LOWVALUE, DC_GERTERM, DC_GERVALUE, DC_OVERTERM, DC_OVERVALUE,'''',''S'' '
                + '  FROM CDMS_DISTANCE WHERE DC_CD = ''%s'' %s ORDER BY 1,2,3,4,5,6 ';
        sQuery := Format(sQuery, [sChargeCd, sWhere]);
        dmCharge.proc_mysql_init;
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.Open;
        if not dmCharge.FDQuery1.IsEmpty then
        begin
          cxProgressBar2.MaxValue := dmCharge.FDQuery1.RecordCount - 1;
          asg_mod_dis.BeginUpdate;
          while not dmCharge.FDQuery1.eof do
          begin
            iRow := asg_mod_dis.DataController.AppendRecord;
            asg_mod_dis.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
            for i := 0 to dmCharge.FDQuery1.FieldCount - 1 do
              asg_mod_dis.DataController.Values[iRow, i + 1] := dmCharge.FDQuery1.Fields[i].AsString;

            asg_mod_dis.DataController.Values[iRow, 07] := FormatFloat('#,##0', StrToFloatDef(asg_mod_dis.DataController.Values[iRow, 7], 0.0));
            asg_mod_dis.DataController.Values[iRow, 08] := FormatFloat('#,##0', StrToFloatDef(asg_mod_dis.DataController.Values[iRow, 8], 0.0));
            asg_mod_dis.DataController.Values[iRow, 09] := FormatFloat('#,##0', StrToFloatDef(asg_mod_dis.DataController.Values[iRow, 9], 0.0));
            asg_mod_dis.DataController.Values[iRow, 10] := FormatFloat('#,##0', StrToFloatDef(asg_mod_dis.DataController.Values[iRow, 10], 0.0));
            asg_mod_dis.DataController.Values[iRow, 11] := FormatFloat('#,##0', StrToFloatDef(asg_mod_dis.DataController.Values[iRow, 11], 0.0));
            asg_mod_dis.DataController.Values[iRow, 12] := asg_mod_dis.DataController.Values[iRow, 1] +
                                                           asg_mod_dis.DataController.Values[iRow, 2] +
                                                           asg_mod_dis.DataController.Values[iRow, 3] +
                                                           asg_mod_dis.DataController.Values[iRow, 4] +
                                                           asg_mod_dis.DataController.Values[iRow, 5] +
                                                           asg_mod_dis.DataController.Values[iRow, 6];
            cxProgressBar2.Progress := iRow + 1;
            dmCharge.FDQuery1.Next;
          end;
          cxProgressBar2.Progress := 0;
          asg_mod_dis.EndUpdate;
        end;
      end;
    end else
    if sJob = 'TERMSELECT' then
    begin
      if cbTermName.ItemIndex = -1 then Exit;
//      if bChargeModify then
//      begin
//        if GMessagebox('수정된 자료가 있습니다.' + #13#10 + '저장하시겠습니까?'
//          + #13#10 + '취소하시면 수정내역은 저장되지 않습니다.', CDMSQ) = idok then
//        begin
//          cxButton39Click(cxButton39);
//        end;
//      end;
      if cb_Term_stcity.ItemIndex = -1 then
        cb_Term_stcity.ItemIndex := 0;
      if cb_Term_edcity.ItemIndex = -1 then
        cb_Term_edcity.ItemIndex := 0;
      asg_term_modify.DataController.SetRecordCount(0);
      cxProgressBar3.Progress := 0;
      sChargeCd := lbTermCd.Items[cbTermName.ItemIndex];
      sSubType := Copy(sChargeCd, 1, 2);
      sWhere := '';
      if iType = 0 then
        sWhere := func_Search_Where('TC', cb_Term_stcity, cb_Term_stward,
          cb_Term_edcity, cb_Term_edward, asg_Term_st, asg_Term_ed);
      if CHARGE_GUBUN = 'P' then
      begin
        sQuery := 'SELECT TC_STCITY, TC_STWARD, TC_STDONG, TC_EDCITY, TC_EDWARD, TC_EDDONG, TC_BV, TC_SUB_CD, TC_PASS_CD,'''',''S'' '
                + '  FROM CDMS_TERM_CHARGE WHERE TC_CD = ''%s'' %s ORDER BY 1,2,3,4,5,6 ';
        sQuery := Format(sQuery, [sChargeCd, sWhere]);
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.OPEN;
				if not dmCharge.FDQuery_SQLite.EOF then
        begin
					cxProgressBar3.MaxValue := dmCharge.FDQuery_SQLite.RecordCount - 1;
          asg_term_modify.BeginUpdate;
					while not dmCharge.FDQuery_SQLite.eof do
          begin
            iRow := asg_term_modify.DataController.AppendRecord;
            asg_term_modify.DataController.Values[iRow, 0] := IntToStr(iRow +
              1);
						for i := 0 to dmCharge.FDQuery_SQLite.FieldCount - 1 do
						begin
							asg_term_modify.DataController.Values[iRow, i + 1] :=	dmCharge.FDQuery_SQLite.Fields[i].AsString;
						end;
						asg_term_modify.DataController.Values[iRow, 7] := FormatFloat('#,##0',
																															StrToFloatDef(asg_term_modify.DataController.Values[iRow, 7], 0.0));
						sTemp := asg_term_modify.DataController.Values[iRow, 8];
            iCdNo := lbTermTypeCd.Items.IndexOf(sTemp);
            if iCdNo = -1 then
              asg_term_modify.DataController.Values[iRow, 8] := ''
            else
            begin
              sTemp := cb_term_type2.Properties.Items[iCdNo];
              asg_term_modify.DataController.Values[iRow, 8] := sTemp;
            end;
            sTemp := asg_term_modify.DataController.Values[iRow, 9];
            iCdNo := lbTermTypeCd.Items.IndexOf(sTemp);
            if iCdNo = -1 then
              asg_term_modify.DataController.Values[iRow, 9] := ''
            else
            begin
              sTemp := cb_term_type2.Properties.Items[iCdNo];
              asg_term_modify.DataController.Values[iRow, 9] := sTemp;
            end;
            asg_term_modify.DataController.Values[iRow, 10] :=
              asg_term_modify.DataController.Values[iRow, 1]
              + asg_term_modify.DataController.Values[iRow, 2]
              + asg_term_modify.DataController.Values[iRow, 3]
              + asg_term_modify.DataController.Values[iRow, 4]
              + asg_term_modify.DataController.Values[iRow, 5]
              + asg_term_modify.DataController.Values[iRow, 6];
            cxProgressBar3.Progress := iRow + 1;
						dmCharge.FDQuery_SQLite.Next;
          end;
          cxProgressBar3.Progress := 0;
          asg_term_modify.EndUpdate;
        end;
      end else
      if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
      begin
        sQuery := 'SELECT TC_STCITY, TC_STWARD, TC_STDONG, TC_EDCITY, TC_EDWARD, TC_EDDONG, TC_BV, TC_SUB_CD, TC_PASS_CD,'''',''S'''
                + '  FROM CDMS_TERM WHERE TC_CD = ''%s'' %s ORDER BY 1,2,3,4,5,6 ';

        sQuery := Format(sQuery, [sChargeCd, sWhere]);
        dmCharge.proc_mysql_init;
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.Open;
        if not dmCharge.FDQuery1.IsEmpty then
        begin
          cxProgressBar3.MaxValue := dmCharge.FDQuery1.RecordCount - 1;
          asg_term_modify.BeginUpdate;
          while not dmCharge.FDQuery1.eof do
          begin
            iRow := asg_term_modify.DataController.AppendRecord;
            asg_term_modify.DataController.Values[iRow, 0] := IntToStr(iRow +
              1);
            for i := 0 to dmCharge.FDQuery1.FieldCount - 1 do
              asg_term_modify.DataController.Values[iRow, i + 1] :=
                dmCharge.FDQuery1.Fields[i].AsString;
            asg_term_modify.DataController.Values[iRow, 7] :=
              FormatFloat('#,##0',
              StrToFloatDef(asg_term_modify.DataController.Values[iRow, 7],
              0.0));
            sTemp := asg_term_modify.DataController.Values[iRow, 8];
            iCdNo := lbTermTypeCd.Items.IndexOf(sTemp);
            if iCdNo = -1 then
              asg_term_modify.DataController.Values[iRow, 8] := ''
            else
            begin
              sTemp := cb_term_type2.Properties.Items[iCdNo];
              asg_term_modify.DataController.Values[iRow, 8] := sTemp;
            end;
            sTemp := asg_term_modify.DataController.Values[iRow, 9];
            iCdNo := lbTermTypeCd.Items.IndexOf(sTemp);
            if iCdNo = -1 then
              asg_term_modify.DataController.Values[iRow, 9] := ''
            else
            begin
              sTemp := cb_term_type2.Properties.Items[iCdNo];
              asg_term_modify.DataController.Values[iRow, 9] := sTemp;
            end;
            asg_term_modify.DataController.Values[iRow, 10] :=
              asg_term_modify.DataController.Values[iRow, 1]
              + asg_term_modify.DataController.Values[iRow, 2]
              + asg_term_modify.DataController.Values[iRow, 3]
              + asg_term_modify.DataController.Values[iRow, 4]
              + asg_term_modify.DataController.Values[iRow, 5]
              + asg_term_modify.DataController.Values[iRow, 6];
            cxProgressBar3.Progress := iRow + 1;
            dmCharge.FDQuery1.Next;
          end;
          cxProgressBar3.Progress := 0;
          asg_term_modify.EndUpdate;
        end;
      end;
		end else
   	if sJob = 'FIRSTSELECT' then
		begin
      if cbFirstName.ItemIndex = -1 then Exit;
      if bFirstChargeModify then
      begin
        if GMessagebox('수정된 자료가 있습니다.' + #13#10 + '저장하시겠습니까?'
          + #13#10 + '취소하시면 수정내역은 저장되지 않습니다.', CDMSQ) = idok then
        begin
          cxButton55Click(cxButton55);
        end;
      end;
			if cb_first_stcity.ItemIndex = -1 then cb_first_stcity.ItemIndex := 0;
      if cb_first_edcity.ItemIndex = -1 then cb_first_edcity.ItemIndex := 0;
      asg_First_charge.DataController.SetRecordCount(0);
      bFirstChargeModify := False;

      if iType = 2 then Gauge2.Progress := 0
                   else cxProgressBar4.Progress := 0;

			sChargeCd := lbFirstCd.Items[cbFirstName.ItemIndex];
      sSubType := Copy(sChargeCd, 1, 2);
      sWhere := '';
      if iType = 0 then
				sWhere := func_Search_Where('FC', cb_first_stcity, cb_first_stward,
          cb_first_edcity, cb_first_edward, asg_first_st, asg_first_ed);
      if CHARGE_GUBUN = 'P' then
      begin
        sQuery := 'SELECT FC_STCITY, FC_STWARD, FC_STDONG, FC_EDCITY, FC_EDWARD, FC_EDDONG, FC_VALUE,'''',''S'',FC_NO '
                + '  FROM CDMS_FIRST_CHARGE WHERE FC_CD = ''%s'' AND FC_NO > 1 %s ORDER BY 1,2,3,4,5,6 ';
        sQuery := Format(sQuery, [sChargeCd, sWhere]);
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.OPEN;
				if not dmCharge.FDQuery_SQLite.EOF then
        begin
					cxProgressBar4.MaxValue := dmCharge.FDQuery_SQLite.RecordCount - 1;
          asg_First_charge.BeginUpdate;
					while not dmCharge.FDQuery_SQLite.eof do
          begin
            iRow := asg_First_charge.DataController.AppendRecord;
						asg_First_charge.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
						for i := 0 to dmCharge.FDQuery_SQLite.FieldCount - 1 do
						begin
							asg_First_charge.DataController.Values[iRow, i + 1] := dmCharge.FDQuery_SQLite.Fields[i].AsString;
						end;
						asg_First_charge.DataController.Values[iRow, 7] := FormatFloat('#,##0',
																															 StrToFloatDef(asg_First_charge.DataController.Values[iRow, 7],	0.0));
						asg_First_charge.DataController.Values[iRow, 8] :=
								asg_First_charge.DataController.Values[iRow, 1]
              + asg_First_charge.DataController.Values[iRow, 2]
              + asg_First_charge.DataController.Values[iRow, 3]
              + asg_First_charge.DataController.Values[iRow, 4]
              + asg_First_charge.DataController.Values[iRow, 5]
              + asg_First_charge.DataController.Values[iRow, 6];
            cxProgressBar4.Progress := iRow + 1;
            Application.ProcessMessages;
						dmCharge.FDQuery_SQLite.Next;
          end;
          cxProgressBar4.Progress := 0;
          asg_First_charge.EndUpdate;
        end;
      end else
      if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
      begin
        sQuery := 'SELECT FC_STCITY, FC_STWARD, FC_STDONG, FC_EDCITY, FC_EDWARD, FC_EDDONG, FC_VALUE '
                + '  FROM CDMS_FIRST WHERE FC_CD = ''%s'' AND FC_NO > 1 %s ORDER BY 1,2,3,4,5,6 ';
        sQuery := Format(sQuery, [sChargeCd, sWhere]);
        dmCharge.proc_mysql_init;
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.Open;
        if not dmCharge.FDQuery1.IsEmpty then
        begin
          if iType = 2 then // 파일로 저장  20120719 LYB
          begin
            try
              slFile := TStringList.Create;
              slFile.Clear;
              Gauge2.MaxValue := cxGroupBox2.Tag;
              Gauge2.Progress := 0;
              i := 0;
              while not dmCharge.FDQuery1.eof do
              begin
                sTemp := IntToStr(i + 1);
                for j := 0 to dmCharge.FDQuery1.FieldCount - 1 do
                begin
                  sTemp := sTemp + ',' + StringReplace(dmCharge.FDQuery1.Fields[j].AsString, ',', '', [rfReplaceAll]);
                end;
                slFile.Add(sTemp);
                Gauge2.Progress := i;
                Application.ProcessMessages;
                dmCharge.FDQuery1.Next;
                if Not bStopFlag then Break;
                Inc(i);
                if i Mod 100000 = 0 then
                begin
                  pFileSave(AnsiString(slFile.Text), Lbl_sFile.Caption);
                  slFile.Clear;
                end;
              end;
              pFileSave(AnsiString(slFile.Text), Lbl_sFile.Caption);

              Gauge2.Progress := 0;
              FreeAndNil(slFile);
              pnl_Option.Visible := False;
              GMessagebox(Format('요금파일 [%s 건] 저장 완료했습니다.', [FormatFloat('#,', i)]), CDMSI);
            except
              FreeAndNil(slFile);
              screen.Cursor := crDefault;
              GMessagebox('알수 없는 일이 발생하여 데이타를 파일로 변환하는데 실패 하였습니다!!!', CDMSE);
              Exit;
            end;
          end else
          begin
            cxProgressBar4.MaxValue := dmCharge.FDQuery1.RecordCount - 1;
            asg_First_charge.BeginUpdate;
            while not dmCharge.FDQuery1.eof do
            begin
              iRow := asg_First_charge.DataController.AppendRecord;
              asg_First_charge.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
              for i := 0 to dmCharge.FDQuery1.FieldCount - 1 do
                asg_First_charge.DataController.Values[iRow, i + 1] := dmCharge.FDQuery1.Fields[i].AsString;

              asg_First_charge.DataController.Values[iRow, 7] := FormatFloat('#,##0', StrToFloatDef(asg_First_charge.DataController.Values[iRow, 7],  0.0));
              asg_First_charge.DataController.Values[iRow, 8] := asg_First_charge.DataController.Values[iRow, 1] +
                                                                 asg_First_charge.DataController.Values[iRow, 2] +
                                                                 asg_First_charge.DataController.Values[iRow, 3] +
                                                                 asg_First_charge.DataController.Values[iRow, 4] +
                                                                 asg_First_charge.DataController.Values[iRow, 5] +
                                                                 asg_First_charge.DataController.Values[iRow, 6];
              asg_First_charge.DataController.Values[iRow, 9] := 'S';
              cxProgressBar4.Progress := iRow + 1;
              Application.ProcessMessages;
              dmCharge.FDQuery1.Next;
            end;
            cxProgressBar4.Progress := 0;
            asg_First_charge.EndUpdate;
          end;  
        end;
      end;
		end	else
		if sJob = 'FIRSTDETAILSELECT' then
		begin
			if cbFirstDetailName.ItemIndex = -1 then Exit;
			if bFirstDetailChargeModify then
      begin
        if GMessagebox('수정된 자료가 있습니다.' + #13#10 + '저장하시겠습니까?'
          + #13#10 + '취소하시면 수정내역은 저장되지 않습니다.', CDMSQ) = idok then
				begin
					cxButton64Click(cxButton64);
        end;
      end;
			if cb_first_Detail_stcity.ItemIndex = -1 then cb_first_Detail_stcity.ItemIndex := 0;
			if cb_first_Detail_edcity.ItemIndex = -1 then cb_first_Detail_edcity.ItemIndex := 0;
			asg_First_Detail_charge.DataController.SetRecordCount(0);
			bFirstDetailChargeModify := False;

			if iType = 2 then Gauge2.Progress := 0
									 else cxProgressBar5.Progress := 0;

			sChargeCd := lbFirstDetailCd.Items[cbFirstDetailName.ItemIndex];
			sSubType := Copy(sChargeCd, 1, 2);
      sWhere := '';
      if iType = 0 then
				sWhere := func_Search_Where('FP', cb_first_Detail_stcity, cb_first_Detail_stward,
					cb_first_Detail_edcity, cb_first_Detail_edward, asg_first_Detail_st, asg_first_Detail_ed);
      if CHARGE_GUBUN = 'P' then
			begin
				sQuery := 'SELECT FP_STCITY, FP_STWARD, FP_STDONG, FP_STPOI, FP_EDCITY, FP_EDWARD, FP_EDDONG, FP_EDPOI, FP_VALUE,'''',''S'',FP_NO '
								+ '  FROM CDMS_FIRST_DETAIL_CHARGE WHERE FP_CD = ''%s'' AND FP_NO > 1 %s ORDER BY 1,2,3,4,5,6,7,8 ';
				sQuery := Format(sQuery, [sChargeCd, sWhere]);
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.OPEN;
				if not dmCharge.FDQuery_SQLite.EOF then
        begin
					cxProgressBar4.MaxValue := dmCharge.FDQuery_SQLite.RecordCount - 1;
					asg_First_Detail_charge.BeginUpdate;
					while not dmCharge.FDQuery_SQLite.eof do
					begin
						iRow := asg_First_Detail_charge.DataController.AppendRecord;
						asg_First_Detail_charge.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
						for i := 0 to dmCharge.FDQuery_SQLite.FieldCount - 1 do
						begin
							asg_First_Detail_charge.DataController.Values[iRow, i + 1] := dmCharge.FDQuery_SQLite.Fields[i].AsString;
						end;
						asg_First_Detail_charge.DataController.Values[iRow, 9] := 
							FormatFloat('#,##0', StrToFloatDef(asg_First_Detail_charge.DataController.Values[iRow, 9], 0.0));
						asg_First_Detail_charge.DataController.Values[iRow, 10] :=
								asg_First_Detail_charge.DataController.Values[iRow, 1]
							+ asg_First_Detail_charge.DataController.Values[iRow, 2]
							+ asg_First_Detail_charge.DataController.Values[iRow, 3]
							+ asg_First_Detail_charge.DataController.Values[iRow, 4]
							+ asg_First_Detail_charge.DataController.Values[iRow, 5]
							+ asg_First_Detail_charge.DataController.Values[iRow, 6]
							+ asg_First_Detail_charge.DataController.Values[iRow, 7]
							+ asg_First_Detail_charge.DataController.Values[iRow, 8];
						cxProgressBar5.Progress := iRow + 1;
						Application.ProcessMessages;
						dmCharge.FDQuery_SQLite.Next;
          end;
					cxProgressBar5.Progress := 0;
					asg_First_Detail_charge.EndUpdate;
        end;
      end else
      if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
      begin
				sQuery := 'SELECT FP_STCITY, FP_STWARD, FP_STDONG, FP_STPOI, FP_EDCITY, FP_EDWARD, FP_EDDONG, FP_EDPOI, FP_VALUE '
								+ '  FROM CDMS_FIRST_DETAIL WHERE FP_CD = ''%s'' AND FP_NO > 1 %s ORDER BY 1,2,3,4,5,6,7,8 ';
        sQuery := Format(sQuery, [sChargeCd, sWhere]);
        dmCharge.proc_mysql_init;
				dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.Open;
        if not dmCharge.FDQuery1.IsEmpty then
        begin
          if iType = 2 then // 파일로 저장  20120719 LYB
          begin
            try
              slFile := TStringList.Create;
              slFile.Clear;
              Gauge2.MaxValue := cxGroupBox2.Tag;
              Gauge2.Progress := 0;
              i := 0;
              while not dmCharge.FDQuery1.eof do
              begin
                sTemp := IntToStr(i + 1);
                for j := 0 to dmCharge.FDQuery1.FieldCount - 1 do
                begin
                  sTemp := sTemp + ',' + StringReplace(dmCharge.FDQuery1.Fields[j].AsString, ',', '', [rfReplaceAll]);
								end;
                slFile.Add(sTemp);
                Gauge2.Progress := i;
                Application.ProcessMessages;
                dmCharge.FDQuery1.Next;
                if Not bStopFlag then Break;
                Inc(i);
                if i Mod 100000 = 0 then
                begin
                  pFileSave(AnsiString(slFile.Text), Lbl_sFile.Caption);
                  slFile.Clear;
                end;
              end;
              pFileSave(AnsiString(slFile.Text), Lbl_sFile.Caption);

              Gauge2.Progress := 0;
              FreeAndNil(slFile);
              pnl_Option.Visible := False;
              GMessagebox(Format('요금파일 [%s 건] 저장 완료했습니다.', [FormatFloat('#,', i)]), CDMSI);
            except
              FreeAndNil(slFile);
              screen.Cursor := crDefault;
              GMessagebox('알수 없는 일이 발생하여 데이타를 파일로 변환하는데 실패 하였습니다!!!', CDMSE);
              Exit;
            end;
          end else
					begin
						cxProgressBar5.MaxValue := dmCharge.FDQuery1.RecordCount - 1;
						asg_First_Detail_charge.BeginUpdate;
            while not dmCharge.FDQuery1.eof do
            begin
							iRow := asg_First_Detail_charge.DataController.AppendRecord;
							asg_First_Detail_charge.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
							for i := 0 to dmCharge.FDQuery1.FieldCount - 1 do
								asg_First_Detail_charge.DataController.Values[iRow, i + 1] := dmCharge.FDQuery1.Fields[i].AsString;

							asg_First_Detail_charge.DataController.Values[iRow, 9] := FormatFloat('#,##0', StrToFloatDef(asg_First_Detail_charge.DataController.Values[iRow, 9],  0.0));
							asg_First_Detail_charge.DataController.Values[iRow,10] := asg_First_Detail_charge.DataController.Values[iRow, 1] +
																																				asg_First_Detail_charge.DataController.Values[iRow, 2] +
																																				asg_First_Detail_charge.DataController.Values[iRow, 3] +
																																				asg_First_Detail_charge.DataController.Values[iRow, 4] +
																																				asg_First_Detail_charge.DataController.Values[iRow, 5] +
																																				asg_First_Detail_charge.DataController.Values[iRow, 6] +
																																				asg_First_Detail_charge.DataController.Values[iRow, 7] +
																																				asg_First_Detail_charge.DataController.Values[iRow, 8];
							asg_First_Detail_charge.DataController.Values[iRow,11] := 'S';
							cxProgressBar5.Progress := iRow + 1;
							Application.ProcessMessages;
							dmCharge.FDQuery1.Next;
						end;
						cxProgressBar5.Progress := 0;
						asg_First_Detail_charge.EndUpdate;
          end;  
        end;
      end;
		end else
    if sJob = 'CHARTNEWINSERT' then
    begin
    	if Not func_EucKr_Check(ed_Charge_NewNm, 0) then Exit;

			if iType = 0 then sChargeName := ed_Charge_NewNm.Text else
      if iType = 1 then sChargeName := ed_charge_NewName.Text;
			if not func_ChargeName(sChargeName) then
      begin
        GMessagebox('같은 이름이 존재합니다.' + #13#10 +
          '다른이름으로 저장하세요', cdmsE);
        Exit;
      end;
			sSno := func_search_sno('CA');
      iSn := StrToIntDef(copy(sSno, 3, 3), 1);
      if CHARGE_GUBUN = 'P' then
      begin
        sQuery := 'INSERT INTO CHARGE_GROUP (CG_NO, CG_GUBUN, CG_CD, CG_NM, CG_GERVALUE) '
          + 'VALUES (' + IntToStr(iSn) + ',''CA'',''' + sSno + ''',''' +
          Trim(sChargeName) + ''',0) ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.ExecSQL;
				
				sQuery := 'INSERT INTO CDMS_FIRST_CHARGE VALUES(1,''' + sSno + ''',0 '
					+ ','''','''','''','''','''','''') ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.ExecSQL;
			end else
			if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
      begin
        sQuery := 'INSERT INTO CDMS_GROUP (CG_NO, CG_GUBUN, CG_CD, CG_NM, CG_GERVALUE) '
          + 'VALUES (' + IntToStr(iSn) + ',''CA'',''' + sSno + ''',''' +
          Trim(sChargeName) + ''',0) ';
        dmCharge.proc_mysql_init('update');
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.ExecSQL;
//        sQuery := 'INSERT INTO CDMS_FIRST VALUES(1,''' + sSno + ''',0 '
//          + ','''','''','''','''','''','''') ';
//        dmCharge.proc_mysql_init;
//        dmCharge.FDQuery1.Close;
//        dmCharge.FDQuery1.SQL.Text := sQuery;
//        dmCharge.FDQuery1.ExecSQL;
      end;
			proc_Query('SELCHARGENM');
      if iType = 1 then
        bAreaChange := True
      else
        bAreaChange := False;
			iTmp := cbChartName.Properties.Items.IndexOf(sChargeName);
			if iTmp < 0 then cbChartName.ItemIndex := -1 else
			cbChartName.ItemIndex := iTmp;

			bAreaChange := False;
      if iType = 1 then
        proc_Query('CHARTINSERT', 1);
		end else
  	if sJob = 'FIRSTNEWINSERT' then
		begin
    	if Not func_EucKr_Check(ed_First_NewNm, 0) then Exit;

			if iType = 0 then sChargeName := ed_First_NewNm.Text else
      if iType = 1 then sChargeName := ed_charge_NewName.Text;
      if not func_ChargeName(sChargeName) then
      begin
        GMessagebox('같은 이름이 존재합니다.' + #13#10 +
          '다른이름으로 저장하세요', cdmsE);
        Exit;
      end;
      sSno := func_search_sno('CF');
      iSn := StrToIntDef(copy(sSno, 3, 3), 1);
      if CHARGE_GUBUN = 'P' then
      begin
        sQuery := 'INSERT INTO CHARGE_GROUP (CG_NO, CG_GUBUN, CG_CD, CG_NM, CG_GERVALUE) '
                + 'VALUES (' + IntToStr(iSn) + ',''CF'',''' + sSno + ''',''' +
					Trim(sChargeName) + ''',0) ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.ExecSQL;

				sQuery := 'INSERT INTO CDMS_FIRST_CHARGE VALUES(1,''' + sSno + ''',0 '
								+ ','''','''','''','''','''','''') ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.ExecSQL;
			end else
      if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
      begin
        sQuery := 'INSERT INTO CDMS_GROUP (CG_NO, CG_GUBUN, CG_CD, CG_NM, CG_GERVALUE) '
								+ 'VALUES (' + IntToStr(iSn) + ',''CF'',''' + sSno + ''',''' +
          Trim(sChargeName) + ''',0) ';
        dmCharge.proc_mysql_init('update');
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.ExecSQL;
        // MAX값 자동증가로 인해 불필요함   LYB  20120717
//        sQuery := 'INSERT INTO CDMS_FIRST VALUES(1,''' + sSno + ''',0 '
//                + ','''','''','''','''','''','''') ';
//        dmCharge.proc_mysql_init;
//        dmCharge.FDQuery1.Close;
//        dmCharge.FDQuery1.SQL.Text := sQuery;
//        dmCharge.FDQuery1.ExecSQL;
      end;
      proc_Query('SELCHARGENM');
      if iType = 1 then
				bAreaChange := True
      else
        bAreaChange := False;
			cbFirstName.ItemIndex := cbFirstName.Properties.Items.IndexOf(sChargeName);
      bAreaChange := False;
			if iType = 1 then
				proc_Query('FIRSTINSERT', 1);
		end else
  	if sJob = 'FIRSTDETAILNEWINSERT' then
		begin
    	if Not func_EucKr_Check(ed_First_Detail_NewNm, 0) then Exit;

			if iType = 0 then sChargeName := ed_First_Detail_NewNm.Text else
      if iType = 1 then	sChargeName := ed_charge_NewName.Text;
			if not func_ChargeName(sChargeName) then
			begin
        GMessagebox('같은 이름이 존재합니다.' + #13#10 +
          '다른이름으로 저장하세요', cdmsE);
				Exit;
			end;
			sSno := func_search_sno('CP');
      iSn := StrToIntDef(copy(sSno, 3, 3), 1);
      if CHARGE_GUBUN = 'P' then
      begin
        sQuery := 'INSERT INTO CHARGE_GROUP (CG_NO, CG_GUBUN, CG_CD, CG_NM, CG_GERVALUE) '
								+ 'VALUES (' + IntToStr(iSn) + ',''CP'',''' + sSno + ''',''' +
          Trim(sChargeName) + ''',0) ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.ExecSQL;

				sQuery := 'INSERT INTO CDMS_FIRST_DETAIL_CHARGE VALUES(1,''' + sSno + ''',0 '
								+ ','''','''','''','''','''','''','''','''') ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.ExecSQL;
			end else
      if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
      begin
        sQuery := 'INSERT INTO CDMS_GROUP (CG_NO, CG_GUBUN, CG_CD, CG_NM, CG_GERVALUE) '
								+ 'VALUES (' + IntToStr(iSn) + ',''CP'',''' + sSno + ''',''' +
          Trim(sChargeName) + ''',0) ';
        dmCharge.proc_mysql_init('update');
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.ExecSQL;
        // MAX값 자동증가로 인해 불필요함   LYB  20120717
//        sQuery := 'INSERT INTO CDMS_FIRST VALUES(1,''' + sSno + ''',0 '
//                + ','''','''','''','''','''','''') ';
//        dmCharge.proc_mysql_init;
//        dmCharge.FDQuery1.Close;
//        dmCharge.FDQuery1.SQL.Text := sQuery;
//        dmCharge.FDQuery1.ExecSQL;
      end;
			proc_Query('SELCHARGENM');
      if iType = 1 then
        bAreaChange := True
      else
				bAreaChange := False;
			cbFirstDetailName.ItemIndex := cbFirstDetailName.Properties.Items.IndexOf(sChargeName);
      bAreaChange := False;
      if iType = 1 then
				proc_Query('FIRSTDETAILINSERT', 1);
		end else
    if sJob = 'DISNEWINSERT' then
    begin
    	if Not func_EucKr_Check(ed_Dis_NewNm, 0) then Exit;

			if iType = 0 then sChargeName := ed_Dis_NewNm.Text else
      if iType = 1 then sChargeName := ed_charge_NewName.Text;
      if not func_ChargeName(sChargeName) then
      begin
        GMessagebox('같은 이름이 존재합니다.' + #13#10 +
          '다른이름으로 저장하세요', cdmsE);
        Exit;
      end;
      sSno := func_search_sno('CD');
      iSn := StrToIntDef(copy(sSno, 3, 3), 1);
      if CHARGE_GUBUN = 'P' then
      begin
        sQuery := 'INSERT INTO CHARGE_GROUP (CG_NO, CG_GUBUN, CG_CD, CG_NM, CG_GERVALUE) '
          + 'VALUES (' + IntToStr(iSn) + ',''CD'',''' + sSno + ''',''' +
          Trim(sChargeName) + ''',0) ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.ExecSQL;

        sQuery := 'INSERT INTO CDMS_DIS_CHARGE VALUES(1,''' + sSno +
          ''',0,0,0,0,0 '
          + ','''','''','''','''','''','''') ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.ExecSQL;
      end else
      if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
      begin
        sQuery := 'INSERT INTO CDMS_GROUP (CG_NO, CG_GUBUN, CG_CD, CG_NM, CG_GERVALUE) '
          + 'VALUES (' + IntToStr(iSn) + ',''CD'',''' + sSno + ''',''' +
          Trim(sChargeName) + ''',0) ';
        dmCharge.proc_mysql_init('update');
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.ExecSQL;
{
        sQuery := 'INSERT INTO CDMS_DISTANCE VALUES(1,''' + sSno +
          ''',0,0,0,0,0 '
          + ','''','''','''','''','''','''') ';
        dmCharge.proc_mysql_init;
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.ExecSQL;
}        
      end;
      proc_Query('SELCHARGENM');
      if iType = 1 then
        bAreaChange := True
      else
        bAreaChange := False;
      cbDisName.ItemIndex := cbDisName.Properties.Items.IndexOf(sChargeName);
      bAreaChange := False;
      if iType = 1 then
        proc_Query('DISINSERT', 1);
    end else
    if sJob = 'TERMNEWINSERT' then
    begin
    	if Not func_EucKr_Check(ed_Term_NewNm, 0) then Exit;

			if iType = 0 then sChargeName := ed_Term_NewNm.Text else
      if iType = 1 then sChargeName := ed_charge_NewName.Text;
      if not func_ChargeName(sChargeName) then
      begin
        GMessagebox('같은 이름이 존재합니다.' + #13#10 +
          '다른이름으로 저장하세요', cdmsE);
        Exit;
      end;
      sSno := func_search_sno('CT');
      iSn := StrToIntDef(copy(sSno, 3, 3), 1);
      if CHARGE_GUBUN = 'P' then
      begin
        sQuery := 'INSERT INTO CHARGE_GROUP (CG_NO, CG_GUBUN, CG_CD, CG_NM, CG_GERVALUE) '
          + 'VALUES (' + IntToStr(iSn) + ',''CT'',''' + sSno + ''',''' +
          Trim(sChargeName) + ''',0) ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.ExecSQL;
			end else
      if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
      begin
        sQuery := 'INSERT INTO CDMS_GROUP (CG_NO, CG_GUBUN, CG_CD, CG_NM, CG_GERVALUE) '
          + 'VALUES (' + IntToStr(iSn) + ',''CT'',''' + sSno + ''',''' +
          Trim(sChargeName) + ''',0) ';
        dmCharge.proc_mysql_init('update');
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.ExecSQL;
			end;
			proc_Query('SELCHARGENM');
      if iType = 1 then
        bAreaChange := True
      else
        bAreaChange := False;
      cbTermName.ItemIndex := cbTermName.Properties.Items.IndexOf(sChargeName);
      bAreaChange := False;
      if iType = 1 then
        proc_Query('TERMINSERT', 1);
    end else
    if sJob = 'CHARTDELETE' then
    begin
      if cbChartName.ItemIndex = -1 then Exit;
      sChargeCd := lbChartCd.Items[cbChartName.ItemIndex];
      sSubType := Copy(sChargeCd, 1, 2);
      if sSubType = 'CA' then sSubType := 'FC';
      if iType = 1 then
      begin
        if asg_Chart_charge.DataController.GetSelectedCount = 1 then
        begin
          iRow := asg_Chart_charge.DataController.FocusedRecordIndex;
          if iRow < 0 then Exit;
          
          sSt1 := asg_Chart_charge.DataController.Values[iRow, 1];
          sSt2 := asg_Chart_charge.DataController.Values[iRow, 2];
          sSt3 := asg_Chart_charge.DataController.Values[iRow, 3];
          sEd1 := asg_Chart_charge.DataController.Values[iRow, 4];
          sEd2 := asg_Chart_charge.DataController.Values[iRow, 5];
          sEd3 := asg_Chart_charge.DataController.Values[iRow, 6];
          sQuery := 'DELETE FROM %s WHERE ' + sSubType + '_CD = ''%s'' AND ' +
            sSubType + '_STCITY = ''' + sSt1 + ''' AND ' + sSubType +
            '_STWARD = ''' + sSt2 + ''' AND ' + sSubType + '_STDONG = ''' + sSt3
            + ''' '
            + ' AND ' + sSubType + '_EDCITY = ''' + sEd1 + ''' AND ' +
            sSubType + '_EDWARD = ''' + sEd2 + ''' AND ' + sSubType +
            '_EDDONG = ''' + sEd3 + ''' ';
          if CHARGE_GUBUN = 'P' then
          begin
            if sSubType = 'CC' then
              sQuery := Format(sQuery, ['CDMS_CHART_CHARGE', sChargeCd])
            else
            if sSubType = 'FC' then
              sQuery := Format(sQuery, ['CDMS_FIRST_CHARGE', sChargeCd]);
						dmCharge.proc_SQLite_init;
						dmCharge.FDQuery_SQLite.Close;
						dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
						dmCharge.FDQuery_SQLite.ExecSQL;
					end else
          if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
          begin
            if sSubType = 'CC' then
              sQuery := Format(sQuery, ['CDMS_CHART', sChargeCd])
            else
              if sSubType = 'FC' then
              sQuery := Format(sQuery, ['CDMS_FIRST', sChargeCd]);
            dmCharge.proc_mysql_init('update');
            dmCharge.FDQuery1.Close;
            dmCharge.FDQuery1.SQL.Text := sQuery;
            dmCharge.FDQuery1.ExecSQL;
          end;
          asg_Chart_charge.DataController.DeleteRecord(iRow);
        end else
        if (asg_Chart_charge.DataController.GetSelectedCount > 1)
          and (asg_Chart_charge.DataController.GetSelectedCount <>
          asg_Chart_charge.DataController.RecordCount) then
        begin
          i := asg_Chart_charge.DataController.RecordCount - 1;
          while i >= 0 do
          begin
            if asg_Chart_charge.ViewData.Records[i].Selected then // ok
            begin
              sSt1 := asg_Chart_charge.ViewData.Records[I].Values[1];
              sSt2 := asg_Chart_charge.ViewData.Records[I].Values[2];
              sSt3 := asg_Chart_charge.ViewData.Records[I].Values[3];
              sEd1 := asg_Chart_charge.ViewData.Records[I].Values[4];
              sEd2 := asg_Chart_charge.ViewData.Records[I].Values[5];
              sEd3 := asg_Chart_charge.ViewData.Records[I].Values[6];
              sQuery := 'DELETE FROM %s WHERE ' + sSubType +
                '_CD = ''%s'' AND ' + sSubType + '_STCITY = ''' + sSt1 +
                ''' AND ' + sSubType + '_STWARD = ''' + sSt2 + ''' AND ' +
                sSubType + '_STDONG = ''' + sSt3 + ''' '
                + ' AND ' + sSubType + '_EDCITY = ''' + sEd1 + ''' AND ' +
                sSubType + '_EDWARD = ''' + sEd2 + ''' AND ' + sSubType +
                '_EDDONG = ''' + sEd3 + ''' ';
              if CHARGE_GUBUN = 'P' then
              begin
                if sSubType = 'CC' then
                  sQuery := Format(sQuery, ['CDMS_CHART_CHARGE',
                    sChargeCd])
                else
                if sSubType = 'FC' then
                  sQuery := Format(sQuery, ['CDMS_FIRST_CHARGE',
                    sChargeCd]);
								dmCharge.proc_SQLite_init;
								dmCharge.FDQuery_SQLite.Close;
								dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
								dmCharge.FDQuery_SQLite.ExecSQL;
							end else
              if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
              begin
                if sSubType = 'CC' then
                  sQuery := Format(sQuery, ['CDMS_CHART', sChargeCd])
                else
                  if sSubType = 'FC' then
                  sQuery := Format(sQuery, ['CDMS_FIRST', sChargeCd]);
                dmCharge.proc_mysql_init('update');
                dmCharge.FDQuery1.Close;
                dmCharge.FDQuery1.SQL.Text := sQuery;
                dmCharge.FDQuery1.ExecSQL;
              end;
              asg_Chart_charge.ViewData.Records[i].Selected := False;
              asg_Chart_charge.DataController.DeleteRecord(i);
            end
            else
              Dec(i);
          end
        end else
        begin
          for i := 0 to asg_Chart_charge.DataController.RecordCount - 1 do
          begin
            sSt1 := asg_Chart_charge.DataController.Values[i, 1];
            sSt2 := asg_Chart_charge.DataController.Values[i, 2];
            sSt3 := asg_Chart_charge.DataController.Values[i, 3];
            sEd1 := asg_Chart_charge.DataController.Values[i, 4];
            sEd2 := asg_Chart_charge.DataController.Values[i, 5];
            sEd3 := asg_Chart_charge.DataController.Values[i, 6];
            sQuery := 'DELETE FROM %s WHERE ' + sSubType + '_CD = ''%s'' AND '
              + sSubType + '_STCITY = ''' + sSt1 + ''' AND ' + sSubType +
              '_STWARD = ''' + sSt2 + ''' AND ' + sSubType + '_STDONG = ''' +
              sSt3 + ''' '
              + ' AND ' + sSubType + '_EDCITY = ''' + sEd1 + ''' AND ' +
              sSubType + '_EDWARD = ''' + sEd2 + ''' AND ' + sSubType +
              '_EDDONG = ''' + sEd3 + ''' ';
            if CHARGE_GUBUN = 'P' then
            begin
              if sSubType = 'CC' then
                sQuery := Format(sQuery, ['CDMS_CHART_CHARGE', sChargeCd])
              else
                if sSubType = 'FC' then
                sQuery := Format(sQuery, ['CDMS_FIRST_CHARGE', sChargeCd]);
							dmCharge.proc_SQLite_init;
							dmCharge.FDQuery_SQLite.Close;
							dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
							dmCharge.FDQuery_SQLite.ExecSQL;
						end else
            if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
            begin
              if sSubType = 'CC' then
                sQuery := Format(sQuery, ['CDMS_CHART', sChargeCd])
              else
                if sSubType = 'FC' then
                sQuery := Format(sQuery, ['CDMS_FIRST', sChargeCd]);
              dmCharge.proc_mysql_init('update');
              dmCharge.FDQuery1.Close;
              dmCharge.FDQuery1.SQL.Text := sQuery;
              dmCharge.FDQuery1.ExecSQL;
            end;
            asg_Chart_charge.DataController.SetRecordCount(0);
          end;
        end;
        GMessagebox('선택셀이 삭제되었습니다.', CDMSI);
      end else
      if iType = 0 then
      begin
        if CHARGE_GUBUN = 'P' then
        begin
          if sSubType = 'FC' then
            sQuery := 'DELETE FROM CDMS_FIRST_CHARGE WHERE FC_CD = ''' + sChargeCd + ''' '
          else
            if sSubType = 'CC' then
            sQuery := 'DELETE FROM CDMS_CHART_CHARGE WHERE CC_CD = ''' + sChargeCd + ''' ';
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.ExecSQL;

					sQuery := 'DELETE FROM CHARGE_GROUP WHERE CG_CD = ''' + sChargeCd +
						''' ';
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.ExecSQL;
        end else
        if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
        begin
          if sSubType = 'FC' then
            sQuery := 'DELETE FROM CDMS_FIRST WHERE FC_CD = ''' + sChargeCd +
              ''' '
          else
            if sSubType = 'CC' then
            sQuery := 'DELETE FROM CDMS_CHART WHERE CC_CD = ''' + sChargeCd +
              ''' ';
          dmCharge.proc_mysql_init('update');
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.ExecSQL;
          sQuery := 'DELETE FROM CDMS_GROUP WHERE CG_CD = ''' + sChargeCd +
						''' ';
					dmCharge.proc_mysql_init('update');
					dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.ExecSQL;
        end;
        GMessagebox('선택하신 요금제가 삭제되었습니다.', CDMSI);
        proc_Query('SELCHARGENM');
      end;
		end else
		if sJob = 'FIRSTDELETE' then
    begin
      if cbFirstName.ItemIndex = -1 then
        Exit;
			sChargeCd := lbFirstCd.Items[cbFirstName.ItemIndex];
      sSubType := 'FC';
      if iType = 1 then
      begin
        if asg_First_charge.DataController.GetSelectedCount = 1 then
        begin
          iRow := asg_First_charge.DataController.FocusedRecordIndex;
          if iRow < 0 then Exit;

          sSt1 := asg_First_charge.DataController.Values[iRow, 1];
          sSt2 := asg_First_charge.DataController.Values[iRow, 2];
          sSt3 := asg_First_charge.DataController.Values[iRow, 3];
          sEd1 := asg_First_charge.DataController.Values[iRow, 4];
          sEd2 := asg_First_charge.DataController.Values[iRow, 5];
          sEd3 := asg_First_charge.DataController.Values[iRow, 6];
          sQuery := 'DELETE FROM %s WHERE ' + sSubType + '_CD = ''%s'' AND ' +
            sSubType + '_STCITY = ''' + sSt1 + ''' AND ' + sSubType +
            '_STWARD = ''' + sSt2 + ''' AND ' + sSubType + '_STDONG = ''' + sSt3
            + ''' '
            + ' AND ' + sSubType + '_EDCITY = ''' + sEd1 + ''' AND ' +
            sSubType + '_EDWARD = ''' + sEd2 + ''' AND ' + sSubType +
            '_EDDONG = ''' + sEd3 + ''' ';
          if CHARGE_GUBUN = 'P' then
          begin
            sQuery := Format(sQuery, ['CDMS_FIRST_CHARGE', sChargeCd]);
						dmCharge.proc_SQLite_init;
						dmCharge.FDQuery_SQLite.Close;
						dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
						dmCharge.FDQuery_SQLite.ExecSQL;
					end else
          if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
          begin
            sQuery := Format(sQuery, ['CDMS_FIRST', sChargeCd]);
            dmCharge.proc_mysql_init('update');
            dmCharge.FDQuery1.Close;
            dmCharge.FDQuery1.SQL.Text := sQuery;
            dmCharge.FDQuery1.ExecSQL;
          end;
          asg_First_charge.DataController.DeleteRecord(iRow);
        end else
        if (asg_First_charge.DataController.GetSelectedCount > 1)
          and (asg_First_charge.DataController.GetSelectedCount <>
          asg_First_charge.DataController.RecordCount) then
        begin
          i := asg_First_charge.DataController.RecordCount - 1;
          while i >= 0 do
          begin
            if asg_First_charge.ViewData.Records[i].Selected then // ok
            begin
              sSt1 := asg_First_charge.ViewData.Records[I].Values[1];
              sSt2 := asg_First_charge.ViewData.Records[I].Values[2];
              sSt3 := asg_First_charge.ViewData.Records[I].Values[3];
              sEd1 := asg_First_charge.ViewData.Records[I].Values[4];
              sEd2 := asg_First_charge.ViewData.Records[I].Values[5];
              sEd3 := asg_First_charge.ViewData.Records[I].Values[6];
              sQuery := 'DELETE FROM %s WHERE ' + sSubType + '_CD = ''%s'' AND ' + sSubType + '_STCITY = ''' + sSt1 +
                ''' AND ' + sSubType + '_STWARD = ''' + sSt2 + ''' AND ' + sSubType + '_STDONG = ''' + sSt3 + ''' '
                + ' AND ' + sSubType + '_EDCITY = ''' + sEd1 + ''' AND ' + sSubType + '_EDWARD = ''' + sEd2 + ''' AND '
                + sSubType + '_EDDONG = ''' + sEd3 + ''' ';
              if CHARGE_GUBUN = 'P' then
              begin
                sQuery := Format(sQuery, ['CDMS_FIRST_CHARGE', sChargeCd]);
								dmCharge.proc_SQLite_init;
								dmCharge.FDQuery_SQLite.Close;
								dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
								dmCharge.FDQuery_SQLite.ExecSQL;
							end else
              if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
              begin
                sQuery := Format(sQuery, ['CDMS_FIRST', sChargeCd]);
                dmCharge.proc_mysql_init('update');
                dmCharge.FDQuery1.Close;
                dmCharge.FDQuery1.SQL.Text := sQuery;
                dmCharge.FDQuery1.ExecSQL;
              end;
              asg_First_charge.ViewData.Records[i].Selected := False;
              asg_First_charge.DataController.DeleteRecord(i);
            end else
              Dec(i);
          end;
        end else
        begin
          for i := 0 to asg_First_charge.DataController.RecordCount - 1 do
          begin
            sSt1 := asg_First_charge.DataController.Values[i, 1];
            sSt2 := asg_First_charge.DataController.Values[i, 2];
            sSt3 := asg_First_charge.DataController.Values[i, 3];
            sEd1 := asg_First_charge.DataController.Values[i, 4];
            sEd2 := asg_First_charge.DataController.Values[i, 5];
            sEd3 := asg_First_charge.DataController.Values[i, 6];
            sQuery := 'DELETE FROM %s WHERE ' + sSubType + '_CD = ''%s'' AND '
              + sSubType + '_STCITY = ''' + sSt1 + ''' AND ' + sSubType +
              '_STWARD = ''' + sSt2 + ''' AND ' + sSubType + '_STDONG = ''' +
              sSt3 + ''' '
              + ' AND ' + sSubType + '_EDCITY = ''' + sEd1 + ''' AND ' +
              sSubType + '_EDWARD = ''' + sEd2 + ''' AND ' + sSubType +
              '_EDDONG = ''' + sEd3 + ''' ';
            if CHARGE_GUBUN = 'P' then
            begin
              sQuery := Format(sQuery, ['CDMS_FIRST_CHARGE', sChargeCd]);
							dmCharge.proc_SQLite_init;
							dmCharge.FDQuery_SQLite.Close;
							dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
							dmCharge.FDQuery_SQLite.ExecSQL;
						end else
            if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
            begin
              sQuery := Format(sQuery, ['CDMS_FIRST', sChargeCd]);
              dmCharge.proc_mysql_init('update');
              dmCharge.FDQuery1.Close;
              dmCharge.FDQuery1.SQL.Text := sQuery;
              dmCharge.FDQuery1.ExecSQL;
            end;
          end;
          asg_First_charge.DataController.SetRecordCount(0);
        end;
        GMessagebox('선택셀이 삭제되었습니다.', CDMSI);
      end else
      if iType = 0 then
      begin
        if CHARGE_GUBUN = 'P' then
        begin
					sQuery := 'DELETE FROM CDMS_FIRST_CHARGE WHERE FC_CD = ''' + sChargeCd + ''' ';
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.ExecSQL;
					
					sQuery := 'DELETE FROM CHARGE_GROUP WHERE CG_CD = ''' + sChargeCd + ''' ';
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.ExecSQL;
				end else
        if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
        begin
          sQuery := 'DELETE FROM CDMS_FIRST WHERE FC_CD = ''' + sChargeCd +
            ''' ';
          dmCharge.proc_mysql_init('update');
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.ExecSQL;
          sQuery := 'DELETE FROM CDMS_GROUP WHERE CG_CD = ''' + sChargeCd +
            ''' ';
          dmCharge.proc_mysql_init('update');
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.ExecSQL;
        end;
        GMessagebox('선택하신 요금제가 삭제되었습니다.', CDMSI);
				proc_Query('SELCHARGENM');
			end;
		end else
		if sJob = 'FIRSTDETAILDELETE' then
		begin
			if cbFirstDetailName.ItemIndex = -1 then Exit;
			sChargeCd := lbFirstDetailCd.Items[cbFirstDetailName.ItemIndex];
			sSubType := 'FP';
      if iType = 1 then
      begin
				if asg_First_Detail_charge.DataController.GetSelectedCount = 1 then
        begin
					iRow := asg_First_Detail_charge.DataController.FocusedRecordIndex;
          if iRow < 0 then Exit;
					sSt1 := asg_First_Detail_charge.DataController.Values[iRow, 1];
					sSt2 := asg_First_Detail_charge.DataController.Values[iRow, 2];
					sSt3 := asg_First_Detail_charge.DataController.Values[iRow, 3];
					sSt4 := asg_First_Detail_charge.DataController.Values[iRow, 4];
					sEd1 := asg_First_Detail_charge.DataController.Values[iRow, 5];
					sEd2 := asg_First_Detail_charge.DataController.Values[iRow, 6];
					sEd3 := asg_First_Detail_charge.DataController.Values[iRow, 7];
					sEd4 := asg_First_Detail_charge.DataController.Values[iRow, 8];
					sQuery := 'DELETE FROM %s WHERE FP_CD = ''%s'' AND FP_STCITY = ''' + sSt1 + ''' AND FP_STWARD = ''' + sSt2 + ''' '
									+ 'AND FP_STDONG = ''' + sSt3 + ''' AND FP_STPOI = ''' + sSt4 + ''' AND FP_EDCITY = ''' + sEd1 + ''' '
									+ 'AND FP_EDWARD = ''' + sEd2 + ''' AND FP_EDDONG = ''' + sEd3 + ''' and FP_EDPOI = ''' + sEd4 + ''' ';
					if CHARGE_GUBUN = 'P' then
					begin
						sQuery := Format(sQuery, ['CDMS_FIRST_DETAIL_CHARGE', sChargeCd]);
						dmCharge.proc_SQLite_init;
						dmCharge.FDQuery_SQLite.Close;
						dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
						dmCharge.FDQuery_SQLite.ExecSQL;
					end else
          if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
          begin
						sQuery := Format(sQuery, ['CDMS_FIRST_DETAIL', sChargeCd]);
            dmCharge.proc_mysql_init('update');
            dmCharge.FDQuery1.Close;
            dmCharge.FDQuery1.SQL.Text := sQuery;
            dmCharge.FDQuery1.ExecSQL;
          end;
					asg_First_Detail_charge.DataController.DeleteRecord(iRow);
        end else
   			if (asg_First_Detail_charge.DataController.GetSelectedCount > 1)
					and (asg_First_Detail_charge.DataController.GetSelectedCount <>	asg_First_Detail_charge.DataController.RecordCount) then
        begin
					i := asg_First_Detail_charge.DataController.RecordCount - 1;
					while i >= 0 do
          begin
						if asg_First_Detail_charge.ViewData.Records[i].Selected then // ok
            begin
							sSt1 := asg_First_Detail_charge.ViewData.Records[I].Values[1];
							sSt2 := asg_First_Detail_charge.ViewData.Records[I].Values[2];
							sSt3 := asg_First_Detail_charge.ViewData.Records[I].Values[3];
							sSt4 := asg_First_Detail_charge.ViewData.Records[I].Values[4];
							sEd1 := asg_First_Detail_charge.ViewData.Records[I].Values[5];
							sEd2 := asg_First_Detail_charge.ViewData.Records[I].Values[6];
							sEd3 := asg_First_Detail_charge.ViewData.Records[I].Values[7];
							sEd4 := asg_First_Detail_charge.ViewData.Records[I].Values[8];
							sQuery := 'DELETE FROM %s WHERE FP_CD = ''%s'' AND FP_STCITY = ''' + sSt1 + ''' AND FP_STWARD = ''' + sSt2 + ''' '
											+ 'AND FP_STDONG = ''' + sSt3 + ''' AND FP_STPOI = ''' + sSt4 + ''' AND FP_EDCITY = ''' + sEd1 + ''' '
											+ 'AND FP_EDWARD = ''' + sEd2 + ''' AND FP_EDDONG = ''' + sEd3 + ''' AND FP_EDPOI = ''' + sEd4 + ''' ';
              if CHARGE_GUBUN = 'P' then
              begin
								sQuery := Format(sQuery, ['CDMS_FIRST_DETAIL_CHARGE', sChargeCd]);
								dmCharge.proc_SQLite_init;
								dmCharge.FDQuery_SQLite.Close;
								dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
								dmCharge.FDQuery_SQLite.ExecSQL;
							end	else
							if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
							begin
								sQuery := Format(sQuery, ['CDMS_FIRST_DETAIL', sChargeCd]);
                dmCharge.proc_mysql_init('update');
                dmCharge.FDQuery1.Close;
                dmCharge.FDQuery1.SQL.Text := sQuery;
                dmCharge.FDQuery1.ExecSQL;
              end;
							asg_First_Detail_charge.ViewData.Records[i].Selected := False;
							asg_First_Detail_charge.DataController.DeleteRecord(i);
						end
            else
              Dec(i);
          end;
        end else
        begin
					for i := 0 to asg_First_Detail_charge.DataController.RecordCount - 1 do
					begin
						sSt1 := asg_First_Detail_charge.DataController.Values[i, 1];
						sSt2 := asg_First_Detail_charge.DataController.Values[i, 2];
						sSt3 := asg_First_Detail_charge.DataController.Values[i, 3];
						sSt4 := asg_First_Detail_charge.DataController.Values[i, 4];
						sEd1 := asg_First_Detail_charge.DataController.Values[i, 5];
						sEd2 := asg_First_Detail_charge.DataController.Values[i, 6];
						sEd3 := asg_First_Detail_charge.DataController.Values[i, 7];
						sEd4 := asg_First_Detail_charge.DataController.Values[i, 8];
						sQuery := 'DELETE FROM %s WHERE FP_CD = ''%s'' AND FP_STCITY = ''' + sSt1 + ''' AND FP_STWARD = ''' + sSt2 + ''' '
										+ 'AND FP_STDONG = ''' + sSt3 + ''' AND FP_STPOI = ''' + sSt4 + ''' AND FP_EDCITY = ''' + sEd1 + ''' '
										+ 'AND FP_EDWARD = ''' + sEd2 + ''' AND FP_EDDONG = ''' + sEd3 + ''' and FP_EDPOI = ''' + sEd4 + ''' ';
						if CHARGE_GUBUN = 'P' then
            begin
							sQuery := Format(sQuery, ['CDMS_FIRST_DETAIL_CHARGE', sChargeCd]);
							dmCharge.proc_SQLite_init;
							dmCharge.FDQuery_SQLite.Close;
							dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
							dmCharge.FDQuery_SQLite.ExecSQL;
						end else
            if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
            begin
							sQuery := Format(sQuery, ['CDMS_FIRST_DETAIL', sChargeCd]);
              dmCharge.proc_mysql_init('update');
              dmCharge.FDQuery1.Close;
              dmCharge.FDQuery1.SQL.Text := sQuery;
              dmCharge.FDQuery1.ExecSQL;
            end;
          end;
					asg_First_Detail_charge.DataController.SetRecordCount(0);
        end;
        GMessagebox('선택셀이 삭제되었습니다.', CDMSI);
      end else
      if iType = 0 then
      begin
				if CHARGE_GUBUN = 'P' then
				begin
					sQuery := 'DELETE FROM CDMS_FIRST_DETAIL_CHARGE WHERE FP_CD = ''' + sChargeCd + ''' ';
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.ExecSQL;
					
					sQuery := 'DELETE FROM CHARGE_GROUP WHERE CG_CD = ''' + sChargeCd + ''' ';
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.ExecSQL;
				end else
				if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
				begin
					sQuery := 'DELETE FROM CDMS_FIRST_DETAIL WHERE FP_CD = ''' + sChargeCd + ''' ';
					dmCharge.proc_mysql_init('update');
					dmCharge.FDQuery1.Close;
					dmCharge.FDQuery1.SQL.Text := sQuery;
					dmCharge.FDQuery1.ExecSQL;
					sQuery := 'DELETE FROM CDMS_GROUP WHERE CG_CD = ''' + sChargeCd + ''' ';
          dmCharge.proc_mysql_init('update');
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.ExecSQL;
        end;
        GMessagebox('선택하신 요금제가 삭제되었습니다.', CDMSI);
        proc_Query('SELCHARGENM');
      end;
		end else
    if sJob = 'DISDELETE' then
    begin
      if cbDisName.ItemIndex = -1 then
        Exit;
      sChargeCd := lbDisCd.Items[cbDisName.ItemIndex];
      sSubType := 'DC';
      if iType = 1 then
      begin
        if asg_mod_dis.DataController.GetSelectedCount = 1 then
        begin
          iRow := asg_mod_dis.DataController.FocusedRecordIndex;
          if iRow < 0 then Exit;
          sSt1 := asg_mod_dis.DataController.Values[iRow, 1];
          sSt2 := asg_mod_dis.DataController.Values[iRow, 2];
          sSt3 := asg_mod_dis.DataController.Values[iRow, 3];
          sEd1 := asg_mod_dis.DataController.Values[iRow, 4];
          sEd2 := asg_mod_dis.DataController.Values[iRow, 5];
          sEd3 := asg_mod_dis.DataController.Values[iRow, 6];
          sQuery := 'DELETE FROM %s WHERE ' + sSubType + '_CD = ''%s'' AND ' +
            sSubType + '_STCITY = ''' + sSt1 + ''' AND ' + sSubType +
            '_STWARD = ''' + sSt2 + ''' AND ' + sSubType + '_STDONG = ''' + sSt3
            + ''' '
            + ' AND ' + sSubType + '_EDCITY = ''' + sEd1 + ''' AND ' +
            sSubType + '_EDWARD = ''' + sEd2 + ''' AND ' + sSubType +
            '_EDDONG = ''' + sEd3 + ''' ';
          if CHARGE_GUBUN = 'P' then
          begin
            sQuery := Format(sQuery, ['CDMS_DIS_CHARGE', sChargeCd]);
						dmCharge.proc_SQLite_init;
						dmCharge.FDQuery_SQLite.Close;
						dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
						dmCharge.FDQuery_SQLite.ExecSQL;
					end else
          if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
          begin
            sQuery := Format(sQuery, ['CDMS_DISTANCE', sChargeCd]);
            dmCharge.proc_mysql_init('update');
            dmCharge.FDQuery1.Close;
            dmCharge.FDQuery1.SQL.Text := sQuery;
            dmCharge.FDQuery1.ExecSQL;
          end;
          asg_mod_dis.DataController.DeleteRecord(iRow);
        end else
        if (asg_mod_dis.DataController.GetSelectedCount > 1)
          and (asg_mod_dis.DataController.GetSelectedCount <>
          asg_mod_dis.DataController.RecordCount) then
        begin
          i := asg_mod_dis.DataController.RecordCount - 1;
          while i >= 0 do
          begin
            if asg_mod_dis.ViewData.Records[i].Selected then  // ok
            begin
              sSt1 := asg_mod_dis.ViewData.Records[I].Values[1];
              sSt2 := asg_mod_dis.ViewData.Records[I].Values[2];
              sSt3 := asg_mod_dis.ViewData.Records[I].Values[3];
              sEd1 := asg_mod_dis.ViewData.Records[I].Values[4];
              sEd2 := asg_mod_dis.ViewData.Records[I].Values[5];
              sEd3 := asg_mod_dis.ViewData.Records[I].Values[6];
              sQuery := 'DELETE FROM %s WHERE ' + sSubType +
                '_CD = ''%s'' AND ' + sSubType + '_STCITY = ''' + sSt1 +
                ''' AND ' + sSubType + '_STWARD = ''' + sSt2 + ''' AND ' +
                sSubType + '_STDONG = ''' + sSt3 + ''' '
                + ' AND ' + sSubType + '_EDCITY = ''' + sEd1 + ''' AND ' +
                sSubType + '_EDWARD = ''' + sEd2 + ''' AND ' + sSubType +
                '_EDDONG = ''' + sEd3 + ''' ';
              if CHARGE_GUBUN = 'P' then
              begin
                sQuery := Format(sQuery, ['CDMS_DIS_CHARGE', sChargeCd]);
								dmCharge.proc_SQLite_init;
								dmCharge.FDQuery_SQLite.Close;
								dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
								dmCharge.FDQuery_SQLite.ExecSQL;
							end else
              if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
              begin
                sQuery := Format(sQuery, ['CDMS_DISTANCE', sChargeCd]);
                dmCharge.proc_mysql_init('update');
                dmCharge.FDQuery1.Close;
                dmCharge.FDQuery1.SQL.Text := sQuery;
                dmCharge.FDQuery1.ExecSQL;
              end;
              asg_mod_dis.ViewData.Records[i].Selected := False;
              asg_mod_dis.DataController.DeleteRecord(i);
            end
            else
              Dec(i);
          end;
        end else
        begin
          for i := 0 to asg_mod_dis.DataController.RecordCount - 1 do
          begin
            sSt1 := asg_mod_dis.DataController.Values[i, 1];
            sSt2 := asg_mod_dis.DataController.Values[i, 2];
            sSt3 := asg_mod_dis.DataController.Values[i, 3];
            sEd1 := asg_mod_dis.DataController.Values[i, 4];
            sEd2 := asg_mod_dis.DataController.Values[i, 5];
            sEd3 := asg_mod_dis.DataController.Values[i, 6];
            sQuery := 'DELETE FROM %s WHERE ' + sSubType + '_CD = ''%s'' AND '
              + sSubType + '_STCITY = ''' + sSt1 + ''' AND ' + sSubType +
              '_STWARD = ''' + sSt2 + ''' AND ' + sSubType + '_STDONG = ''' +
              sSt3 + ''' '
              + ' AND ' + sSubType + '_EDCITY = ''' + sEd1 + ''' AND ' +
              sSubType + '_EDWARD = ''' + sEd2 + ''' AND ' + sSubType +
              '_EDDONG = ''' + sEd3 + ''' ';
            if CHARGE_GUBUN = 'P' then
            begin
              sQuery := Format(sQuery, ['CDMS_DIS_CHARGE', sChargeCd]);
							dmCharge.proc_SQLite_init;
							dmCharge.FDQuery_SQLite.Close;
							dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
							dmCharge.FDQuery_SQLite.ExecSQL;
						end else
            if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
            begin
              sQuery := Format(sQuery, ['CDMS_DISTANCE', sChargeCd]);
              dmCharge.proc_mysql_init('update');
              dmCharge.FDQuery1.Close;
              dmCharge.FDQuery1.SQL.Text := sQuery;
              dmCharge.FDQuery1.ExecSQL;
            end;
          end;
          asg_mod_dis.DataController.SetRecordCount(0);
        end;
        GMessagebox('선택한 셀이 삭제되었습니다.', CDMSI);
      end else
      if iType = 0 then
      begin
        if CHARGE_GUBUN = 'P' then
        begin
          sQuery := 'DELETE FROM CDMS_DIS_CHARGE WHERE DC_CD = ''' + sChargeCd
            + ''' ';
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.ExecSQL;

					sQuery := 'DELETE FROM CHARGE_GROUP WHERE CG_CD = ''' + sChargeCd +
						''' ';
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.ExecSQL;
				end else
        if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
        begin
          sQuery := 'DELETE FROM CDMS_DISTANCE WHERE DC_CD = ''' + sChargeCd +
            ''' ';
          dmCharge.proc_mysql_init('update');
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.ExecSQL;
          sQuery := 'DELETE FROM CDMS_GROUP WHERE CG_CD = ''' + sChargeCd +
            ''' ';
          dmCharge.proc_mysql_init('update');
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.ExecSQL;
        end;
        GMessagebox('선택하신 요금제가 삭제되었습니다.', CDMSI);
        proc_Query('SELCHARGENM');
      end;
		end else
		if sJob = 'TERMDELETE' then
    begin
      if cbTermName.ItemIndex = -1 then
        Exit;
			sChargeCd := lbTermCd.Items[cbTermName.ItemIndex];
      sSubType := 'TC';
			if iType = 1 then
      begin
        if asg_term_modify.DataController.GetSelectedCount = 1 then
        begin
					iRow := asg_term_modify.DataController.FocusedRecordIndex;
          if iRow < 0 then Exit;
          sSt1 := asg_term_modify.DataController.Values[iRow, 1];
          sSt2 := asg_term_modify.DataController.Values[iRow, 2];
          sSt3 := asg_term_modify.DataController.Values[iRow, 3];
          sEd1 := asg_term_modify.DataController.Values[iRow, 4];
          sEd2 := asg_term_modify.DataController.Values[iRow, 5];
          sEd3 := asg_term_modify.DataController.Values[iRow, 6];
					sQuery := 'DELETE FROM %s WHERE ' + sSubType + '_CD = ''%s'' AND ' +
						sSubType + '_STCITY = ''' + sSt1 + ''' AND ' + sSubType +
						'_STWARD = ''' + sSt2 + ''' AND ' + sSubType + '_STDONG = ''' + sSt3
            + ''' '
            + ' AND ' + sSubType + '_EDCITY = ''' + sEd1 + ''' AND ' +
            sSubType + '_EDWARD = ''' + sEd2 + ''' AND ' + sSubType +
            '_EDDONG = ''' + sEd3 + ''' ';
          if CHARGE_GUBUN = 'P' then
          begin
            sQuery := Format(sQuery, ['CDMS_TERM_CHARGE', sChargeCd]);
						dmCharge.proc_SQLite_init;
						dmCharge.FDQuery_SQLite.Close;
						dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
						dmCharge.FDQuery_SQLite.ExecSQL;
					end else
          if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
          begin
            sQuery := Format(sQuery, ['CDMS_TERM', sChargeCd]);
            dmCharge.proc_mysql_init('update');
            dmCharge.FDQuery1.Close;
            dmCharge.FDQuery1.SQL.Text := sQuery;
            dmCharge.FDQuery1.ExecSQL;
          end;
          asg_term_modify.DataController.DeleteRecord(iRow);
        end else
        if (asg_term_modify.DataController.GetSelectedCount > 1)
          and (asg_term_modify.DataController.GetSelectedCount <>
          asg_term_modify.DataController.RecordCount) then
        begin
          i := asg_term_modify.DataController.RecordCount - 1;
          while i >= 0 do
          begin
            if asg_term_modify.ViewData.Records[i].Selected then  // ok
            begin
              sSt1 := asg_term_modify.ViewData.Records[I].Values[1];
              sSt2 := asg_term_modify.ViewData.Records[I].Values[2];
              sSt3 := asg_term_modify.ViewData.Records[I].Values[3];
              sEd1 := asg_term_modify.ViewData.Records[I].Values[4];
              sEd2 := asg_term_modify.ViewData.Records[I].Values[5];
              sEd3 := asg_term_modify.ViewData.Records[I].Values[6];
              sQuery := 'DELETE FROM %s WHERE ' + sSubType +
                '_CD = ''%s'' AND ' + sSubType + '_STCITY = ''' + sSt1 +
                ''' AND ' + sSubType + '_STWARD = ''' + sSt2 + ''' AND ' +
                sSubType + '_STDONG = ''' + sSt3 + ''' '
                + ' AND ' + sSubType + '_EDCITY = ''' + sEd1 + ''' AND ' +
                sSubType + '_EDWARD = ''' + sEd2 + ''' AND ' + sSubType +
                '_EDDONG = ''' + sEd3 + ''' ';
              if CHARGE_GUBUN = 'P' then
              begin
                sQuery := Format(sQuery, ['CDMS_TERM_CHARGE', sChargeCd]);
								dmCharge.proc_SQLite_init;
								dmCharge.FDQuery_SQLite.Close;
								dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
								dmCharge.FDQuery_SQLite.ExecSQL;
							end else
              if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
              begin
                sQuery := Format(sQuery, ['CDMS_TERM', sChargeCd]);
                dmCharge.proc_mysql_init('update');
                dmCharge.FDQuery1.Close;
                dmCharge.FDQuery1.SQL.Text := sQuery;
                dmCharge.FDQuery1.ExecSQL;
              end;
              asg_term_modify.ViewData.Records[i].Selected := False;
              asg_term_modify.DataController.DeleteRecord(i);
            end
            else
              Dec(i);
          end;
        end else
        begin
          for i := 0 to asg_term_modify.DataController.RecordCount - 1 do
          begin
            sSt1 := asg_term_modify.DataController.Values[i, 1];
            sSt2 := asg_term_modify.DataController.Values[i, 2];
            sSt3 := asg_term_modify.DataController.Values[i, 3];
            sEd1 := asg_term_modify.DataController.Values[i, 4];
            sEd2 := asg_term_modify.DataController.Values[i, 5];
            sEd3 := asg_term_modify.DataController.Values[i, 6];
            sQuery := 'DELETE FROM %s WHERE ' + sSubType + '_CD = ''%s'' AND '
              + sSubType + '_STCITY = ''' + sSt1 + ''' AND ' + sSubType +
              '_STWARD = ''' + sSt2 + ''' AND ' + sSubType + '_STDONG = ''' +
              sSt3 + ''' '
              + ' AND ' + sSubType + '_EDCITY = ''' + sEd1 + ''' AND ' +
              sSubType + '_EDWARD = ''' + sEd2 + ''' AND ' + sSubType +
              '_EDDONG = ''' + sEd3 + ''' ';
            if CHARGE_GUBUN = 'P' then
            begin
              sQuery := Format(sQuery, ['CDMS_TERM_CHARGE', sChargeCd]);
							dmCharge.proc_SQLite_init;
							dmCharge.FDQuery_SQLite.Close;
							dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
							dmCharge.FDQuery_SQLite.ExecSQL;
						end else
            if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
            begin
              sQuery := Format(sQuery, ['CDMS_TERM', sChargeCd]);
              dmCharge.proc_mysql_init('update');
              dmCharge.FDQuery1.Close;
              dmCharge.FDQuery1.SQL.Text := sQuery;
              dmCharge.FDQuery1.ExecSQL;
            end;
          end;
          asg_term_modify.DataController.SetRecordCount(0);
        end;
        GMessagebox('선택셀이 삭제되었습니다.', CDMSI);
      end else
      if iType = 0 then
      begin
        if CHARGE_GUBUN = 'P' then
        begin
          sQuery := 'DELETE FROM CDMS_TERM_CHARGE WHERE TC_CD = ''' + sChargeCd
            + ''' ';
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.ExecSQL;

					sQuery := 'DELETE FROM CHARGE_GROUP WHERE CG_CD = ''' + sChargeCd +
						''' ';
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.ExecSQL;
        end else
        if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
        begin
          sQuery := 'DELETE FROM CDMS_TERM WHERE TC_CD = ''' + sChargeCd +
            ''' ';
          dmCharge.proc_mysql_init('update');
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.ExecSQL;
          sQuery := 'DELETE FROM CDMS_GROUP WHERE CG_CD = ''' + sChargeCd +
            ''' ';
          dmCharge.proc_mysql_init('update');
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.ExecSQL;
        end;
				GMessagebox('선택하신 요금제가 삭제되었습니다.', CDMSI);
				proc_Query('SELCHARGENM');
      end;
		end else
		if sJob = 'TERMUPDATE' then
		begin
      if cbTermName.ItemIndex = -1 then
        Exit;
			sChargeCd := lbTermCd.Items[cbTermName.ItemIndex];
			sSubType := 'TC';
			if iType = 1 then
      begin
				if asg_term_modify.DataController.GetSelectedCount = 1 then
				begin
          iRow := asg_term_modify.DataController.FocusedRecordIndex;
          if iRow < 0 then Exit;
          sSt1 := asg_term_modify.DataController.Values[iRow, 1];
          sSt2 := asg_term_modify.DataController.Values[iRow, 2];
          sSt3 := asg_term_modify.DataController.Values[iRow, 3];
          sEd1 := asg_term_modify.DataController.Values[iRow, 4];
          sEd2 := asg_term_modify.DataController.Values[iRow, 5];
          sEd3 := asg_term_modify.DataController.Values[iRow, 6];
					sQuery := 'Update %s Set ' + sSubType + '_SUB_CD = ''%s'', ' + sSubType + '_PASS_CD  = ''%s'' WHERE ' + 
						sSubType + '_CD = ''%s'' AND ' +
						sSubType + '_STCITY = ''' + sSt1 + ''' AND ' + sSubType +
						'_STWARD = ''' + sSt2 + ''' AND ' + sSubType + '_STDONG = ''' + sSt3
						+ ''' '
						+ ' AND ' + sSubType + '_EDCITY = ''' + sEd1 + ''' AND ' +
						sSubType + '_EDWARD = ''' + sEd2 + ''' AND ' + sSubType +
						'_EDDONG = ''' + sEd3 + ''' ';



					if cxRadioButton1.checked then 
					begin
						sSubCd := lbTermTypeCd.Items[cb_term_type4.itemIndex];
						sPassCd := '';
					end else
					begin
						sSubCd := '';
						sPassCd := lbTermTypeCd.Items[cb_term_type4.itemIndex];
					end;
					if CHARGE_GUBUN = 'P' then
          begin
						sQuery := Format(sQuery, ['CDMS_TERM_CHARGE', sSubCd, sPassCd, sChargeCd]);
						dmCharge.proc_SQLite_init;
						dmCharge.FDQuery_SQLite.Close;
						dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
						dmCharge.FDQuery_SQLite.ExecSQL;
					end else
          if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
          begin
						sQuery := Format(sQuery, ['CDMS_TERM', sSubCd, sPassCd, sChargeCd]);
						dmCharge.proc_mysql_init('update');
            dmCharge.FDQuery1.Close;
						dmCharge.FDQuery1.SQL.Text := sQuery;
            dmCharge.FDQuery1.ExecSQL;
          end;
				end else
        if (asg_term_modify.DataController.GetSelectedCount > 1)
					and (asg_term_modify.DataController.GetSelectedCount <>
					asg_term_modify.DataController.RecordCount) then
        begin
					Gauge3.MaxValue := asg_term_modify.DataController.GetSelectedCount - 1;
					i := asg_term_modify.DataController.RecordCount - 1;
					ii := 0;
					while i >= 0 do
          begin
            if asg_term_modify.ViewData.Records[i].Selected then  // ok
            begin
              sSt1 := asg_term_modify.ViewData.Records[I].Values[1];
              sSt2 := asg_term_modify.ViewData.Records[I].Values[2];
              sSt3 := asg_term_modify.ViewData.Records[I].Values[3];
              sEd1 := asg_term_modify.ViewData.Records[I].Values[4];
              sEd2 := asg_term_modify.ViewData.Records[I].Values[5];
              sEd3 := asg_term_modify.ViewData.Records[I].Values[6];
							sQuery := 'Update %s Set ' + sSubType + '_SUB_CD = ''%s'', ' + sSubType + '_PASS_CD  = ''%s'' WHERE ' + 
								sSubType + '_CD = ''%s'' AND ' +
								sSubType + '_STCITY = ''' + sSt1 + ''' AND ' + sSubType +
								'_STWARD = ''' + sSt2 + ''' AND ' + sSubType + '_STDONG = ''' + sSt3
								+ ''' '
								+ ' AND ' + sSubType + '_EDCITY = ''' + sEd1 + ''' AND ' +
								sSubType + '_EDWARD = ''' + sEd2 + ''' AND ' + sSubType +
								'_EDDONG = ''' + sEd3 + ''' ';

							if cxRadioButton1.checked then 
							begin
								sSubCd := lbTermTypeCd.Items[cb_term_type4.itemIndex];
								sPassCd := '';
							end else
							begin
								sSubCd := '';
								sPassCd := lbTermTypeCd.Items[cb_term_type4.itemIndex];
							end;

							if CHARGE_GUBUN = 'P' then
              begin
								sQuery := Format(sQuery, ['CDMS_TERM_CHARGE', sSubCd, sPassCd, sChargeCd]);
								dmCharge.proc_SQLite_init;
								dmCharge.FDQuery_SQLite.Close;
								dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
								dmCharge.FDQuery_SQLite.ExecSQL;
							end else
              if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
              begin
								sQuery := Format(sQuery, ['CDMS_TERM', sSubCd, sPassCd, sChargeCd]);
								dmCharge.proc_mysql_init('update');
								dmCharge.FDQuery1.Close;
                dmCharge.FDQuery1.SQL.Text := sQuery;
                dmCharge.FDQuery1.ExecSQL;
							end;
							asg_term_modify.ViewData.Records[i].Selected := False;
							inc(ii);
						end
            else
							Dec(i);
							
						Gauge3.Progress := ii;

						Application.ProcessMessages;
					end;
        end else
        begin
					Gauge3.MaxValue := asg_term_modify.DataController.GetSelectedCount - 1;
					for i := 0 to asg_term_modify.DataController.RecordCount - 1 do
          begin
            sSt1 := asg_term_modify.DataController.Values[i, 1];
            sSt2 := asg_term_modify.DataController.Values[i, 2];
            sSt3 := asg_term_modify.DataController.Values[i, 3];
            sEd1 := asg_term_modify.DataController.Values[i, 4];
            sEd2 := asg_term_modify.DataController.Values[i, 5];
            sEd3 := asg_term_modify.DataController.Values[i, 6];
						sQuery := 'Update %s Set ' + sSubType + '_SUB_CD = ''%s'', ' + sSubType + '_PASS_CD  = ''%s'' WHERE ' + 
							sSubType + '_CD = ''%s'' AND ' +
							sSubType + '_STCITY = ''' + sSt1 + ''' AND ' + sSubType +
							'_STWARD = ''' + sSt2 + ''' AND ' + sSubType + '_STDONG = ''' + sSt3
							+ ''' '
							+ ' AND ' + sSubType + '_EDCITY = ''' + sEd1 + ''' AND ' +
							sSubType + '_EDWARD = ''' + sEd2 + ''' AND ' + sSubType +
							'_EDDONG = ''' + sEd3 + ''' ';
							
						if cxRadioButton1.checked then 
						begin
							sSubCd := lbTermTypeCd.Items[cb_term_type4.itemIndex];
							sPassCd := '';
						end else
						begin
							sSubCd := '';
							sPassCd := lbTermTypeCd.Items[cb_term_type4.itemIndex];
						end;

						if CHARGE_GUBUN = 'P' then
						begin
							sQuery := Format(sQuery, ['CDMS_TERM_CHARGE', sSubCd, sPassCd, sChargeCd]);
							dmCharge.proc_SQLite_init;
							dmCharge.FDQuery_SQLite.Close;
							dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
							dmCharge.FDQuery_SQLite.ExecSQL;
						end else
						if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
						begin
							sQuery := Format(sQuery, ['CDMS_TERM', sSubCd, sPassCd, sChargeCd]);
							dmCharge.proc_mysql_init('update');
							dmCharge.FDQuery1.Close;
							dmCharge.FDQuery1.SQL.Text := sQuery;
							dmCharge.FDQuery1.ExecSQL;
						end;
					end;
					asg_term_modify.DataController.SetRecordCount(0);

					Gauge3.Progress := i;

					Application.ProcessMessages;
				end;

				Gauge3.Progress := 0;
				
				proc_Query('TERMSELECT');
				GMessagebox('선택셀에 적용되었습니다.', CDMSI);
				pnl_AddType.visible := False;
				
      end else
      if iType = 0 then
      begin
        if CHARGE_GUBUN = 'P' then
        begin
          sQuery := 'DELETE FROM CDMS_TERM_CHARGE WHERE TC_CD = ''' + sChargeCd
            + ''' ';
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.ExecSQL;

					sQuery := 'DELETE FROM CHARGE_GROUP WHERE CG_CD = ''' + sChargeCd +
						''' ';
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.ExecSQL;
        end else
        if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
        begin
          sQuery := 'DELETE FROM CDMS_TERM WHERE TC_CD = ''' + sChargeCd +
            ''' ';
          dmCharge.proc_mysql_init('update');
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.ExecSQL;
          sQuery := 'DELETE FROM CDMS_GROUP WHERE CG_CD = ''' + sChargeCd +
            ''' ';
          dmCharge.proc_mysql_init('update');
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.ExecSQL;
        end;
        GMessagebox('선택하신 요금제가 삭제되었습니다.', CDMSI);
				proc_Query('SELCHARGENM');
      end;
		end else
		if sJob = 'CHARTINSERT' then
    begin
      sChargeCd := lbChartCd.Items[cbChartName.ItemIndex];
      sSubType := Copy(sChargeCd, 1, 2);
      if sSubType = 'CA' then
        sSubType := 'FC';
      iStatus := asg_Chart_charge.GetColumnByFieldName('상태').Index;

      if iType = 0 then cxProgressBar1.MaxValue := asg_Chart_charge.DataController.RecordCount - 1  else
			if iType = 1 then Gauge1.MaxValue := asg_Chart_charge.DataController.RecordCount - 1;

      sSNo := func_Max_Sn(sSubType, sChargeCd);
			if CHARGE_GUBUN = 'P' then
      begin
				dmCharge.FDTable_SQLite.Active := False;
				if sSubType = 'CC' then
					dmCharge.FDTable_SQLite.TableName := 'CDMS_CHART_CHARGE'
        else
					dmCharge.FDTable_SQLite.TableName := 'CDMS_FIRST_CHARGE';
				dmCharge.FDTable_SQLite.Active := True;
      end else
      if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
      begin
//        dmCharge.ZTable1.Active := False;
//        if sSubType = 'CC' then
//          dmCharge.ZTable1.TableName := 'CDMS_CHART'
//        else
//          dmCharge.ZTable1.TableName := 'CDMS_FIRST';
//        dmCharge.ZTable1.Active := True;
        if sSubType = 'CC' then sTable := 'CDMS_CHART'
                           else sTable := 'CDMS_FIRST';
      end;

      if iType = 2 then
      begin
        try
          TextFile := TStringList.Create;
          TextFile.LoadFromFile(Lbl_sFile.Caption);
          ColList := TStringList.Create;

          Gauge2.Progress := 0;
          Gauge2.MaxValue := TextFile.count - 1;

          Application.ProcessMessages;
          try
            for I := 1 to TextFile.count - 1 do
            begin
              ColList.CommaText := StringReplace(TextFile[i], ',', '', [rfReplaceAll]);

              sSt1 := ColList[1];
              sSt2 := ColList[2];
              sSt3 := ColList[3];
              sEd1 := ColList[4];
              sEd2 := ColList[5];
              sEd3 := ColList[6];
              sValue := StringReplace(ColList[7], ',', '', [rfReplaceAll]);
              sQuery := '';

              sQuery := 'DELETE FROM %s WHERE ' + sSubType + '_CD = ''%s'' AND '
                + sSubType + '_STCITY = ''' + sSt1 + ''' AND ' + sSubType +
                '_STWARD = ''' + sSt2 + ''' AND ' + sSubType + '_STDONG = ''' +
                sSt3 + ''' '
                + ' AND ' + sSubType + '_EDCITY = ''' + sEd1 + ''' AND ' +
                sSubType + '_EDWARD = ''' + sEd2 + ''' AND ' + sSubType +
                '_EDDONG = ''' + sEd3 + ''' ';

              if sSubType = 'CC' then
                sQuery := Format(sQuery, ['CDMS_CHART', sChargeCd])
              else
                if sSubType = 'FC' then
                sQuery := Format(sQuery, ['CDMS_FIRST', sChargeCd]);

              dmCharge.proc_mysql_init('update');
              dmCharge.FDQuery1.Close;
              dmCharge.FDQuery1.SQL.Text := sQuery;
              dmCharge.FDQuery1.ExecSQL;

              sQuery := 'INSERT INTO ' + sTable + ' (' + sSubType + '_CD,' + sSubType + '_VALUE,' +
                       sSubType + '_STCITY,' + sSubType + '_STWARD,' + sSubType + '_STDONG,' +
                       sSubType + '_EDCITY,' + sSubType + '_EDWARD,' + sSubType + '_EDDONG) VALUES '
                     + '(''' + sChargeCd + ''',' + IntToStr(StrToIntDef(sValue, 0)) + ',''' +
                       sSt1 + ''',''' + sSt2 + ''',''' + sSt3 + ''',''' +
                       sEd1 + ''',''' + sEd2 + ''',''' + sEd3 + ''')';
              dmCharge.proc_mysql_init('update');
              dmCharge.FDQuery1.Close;
              dmCharge.FDQuery1.SQL.Text := sQuery;
              dmCharge.FDQuery1.ExecSQL;

              if Not bStopFlag then Break;

              Gauge2.Progress := i;
              Application.ProcessMessages;
            end;
            Gauge2.Progress := 0;
						GMessagebox(Format('요금파일 [%s 건] 저장 완료했습니다.', [FormatFloat('#,', i)]), CDMSI);
          finally
            FreeAndNil(TextFile);
            FreeAndNil(ColList);
          end;
        except
          on err: exception do
          begin
            ShowMessage('요금표 파일을 저장하는 도중 오류가 발생했습니다. 파일을 확인하세요.');
          end;
        end;
      end else
      begin
        for i := 0 to asg_Chart_charge.DataController.RecordCount - 1 do
        begin
          // 다른이름 저장일경우 모두 Insert;
          if (iType = 1) or (asg_Chart_charge.DataController.Values[i, iStatus] =
            'I') or (asg_Chart_charge.DataController.Values[i, iStatus] = 'U') then
          begin
            //            Application.ProcessMessages;
            sSNo := IntToStr(StrToInt(sSno) + 1);
            sSt1 := asg_Chart_charge.DataController.Values[i, 1];
            sSt2 := asg_Chart_charge.DataController.Values[i, 2];
            sSt3 := asg_Chart_charge.DataController.Values[i, 3];
            sEd1 := asg_Chart_charge.DataController.Values[i, 4];
            sEd2 := asg_Chart_charge.DataController.Values[i, 5];
            sEd3 := asg_Chart_charge.DataController.Values[i, 6];
            sValue := StringReplace(asg_Chart_charge.DataController.Values[i, 7],
              ',', '', [rfReplaceAll]);
            sQuery := '';
            if (iType = 0) and (asg_Chart_charge.DataController.Values[i, iStatus] = 'U') then
              sQuery := 'DELETE FROM %s WHERE ' + sSubType + '_CD = ''%s'' AND '
                + sSubType + '_STCITY = ''' + sSt1 + ''' AND ' + sSubType +
                '_STWARD = ''' + sSt2 + ''' AND ' + sSubType + '_STDONG = ''' +
                sSt3 + ''' '
                + ' AND ' + sSubType + '_EDCITY = ''' + sEd1 + ''' AND ' +
                sSubType + '_EDWARD = ''' + sEd2 + ''' AND ' + sSubType +
                '_EDDONG = ''' + sEd3 + ''' ';
            if CHARGE_GUBUN = 'P' then
            begin
              if sQuery <> '' then
              begin
								if sSubType = 'CC' then
                  sQuery := Format(sQuery, ['CDMS_CHART_CHARGE', sChargeCd])
								else
                  if sSubType = 'FC' then
                  sQuery := Format(sQuery, ['CDMS_FIRST_CHARGE', sChargeCd]);
								dmCharge.proc_SQLite_init;
								dmCharge.FDQuery_SQLite.Close;
								dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
								dmCharge.FDQuery_SQLite.ExecSQL;
							end;
							dmCharge.FDTable_SQLite.Append;
							dmCharge.FDTable_SQLite.FieldByName(sSubType + '_CD'    ).AsString := sChargeCd;
							dmCharge.FDTable_SQLite.FieldByName(sSubType + '_NO'    ).AsInteger := StrToInt(sSNo);
							dmCharge.FDTable_SQLite.FieldByName(sSubType + '_STCITY').AsString := sSt1;
							dmCharge.FDTable_SQLite.FieldByName(sSubType + '_STWARD').AsString := sSt2;
							dmCharge.FDTable_SQLite.FieldByName(sSubType + '_STDONG').AsString := sSt3;
							dmCharge.FDTable_SQLite.FieldByName(sSubType + '_EDCITY').AsString := sEd1;
							dmCharge.FDTable_SQLite.FieldByName(sSubType + '_EDWARD').AsString := sEd2;
							dmCharge.FDTable_SQLite.FieldByName(sSubType + '_EDDONG').AsString := sEd3;
							dmCharge.FDTable_SQLite.FieldByName(sSubType + '_VALUE').AsInteger := StrToIntDef(sValue, 0);
							dmCharge.FDTable_SQLite.Append;
            end else
            if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
            begin
              if sQuery <> '' then
              begin
                if sSubType = 'CC' then
                  sQuery := Format(sQuery, ['CDMS_CHART', sChargeCd])
                else
                  if sSubType = 'FC' then
                  sQuery := Format(sQuery, ['CDMS_FIRST', sChargeCd]);
                dmCharge.proc_mysql_init('update');
                dmCharge.FDQuery1.Close;
                dmCharge.FDQuery1.SQL.Text := sQuery;
                dmCharge.FDQuery1.ExecSQL;
              end;
              sQuery := 'INSERT INTO ' + sTable + ' (' + sSubType + '_CD,' + sSubType + '_VALUE,' +
                       sSubType + '_STCITY,' + sSubType + '_STWARD,' + sSubType + '_STDONG,' +
                       sSubType + '_EDCITY,' + sSubType + '_EDWARD,' + sSubType + '_EDDONG) VALUES '
                     + '(''' + sChargeCd + ''',' + IntToStr(StrToIntDef(sValue, 0)) + ',''' +
                       sSt1 + ''',''' + sSt2 + ''',''' + sSt3 + ''',''' +
                       sEd1 + ''',''' + sEd2 + ''',''' + sEd3 + ''')';
              dmCharge.proc_mysql_init('update');
              dmCharge.FDQuery1.Close;
              dmCharge.FDQuery1.SQL.Text := sQuery;
              dmCharge.FDQuery1.ExecSQL;

  //            dmCharge.ZTable1.Append;
  //            dmCharge.ZTable1.FieldByName(sSubType + '_CD'    ).AsString := sChargeCd;
  //            dmCharge.ZTable1.FieldByName(sSubType + '_NO'    ).AsInteger := StrToInt(sSNo);
  //            dmCharge.ZTable1.FieldByName(sSubType + '_STCITY').AsString := sSt1;
  //            dmCharge.ZTable1.FieldByName(sSubType + '_STWARD').AsString := sSt2;
  //            dmCharge.ZTable1.FieldByName(sSubType + '_STDONG').AsString := sSt3;
  //            dmCharge.ZTable1.FieldByName(sSubType + '_EDCITY').AsString := sEd1;
  //            dmCharge.ZTable1.FieldByName(sSubType + '_EDWARD').AsString := sEd2;
  //            dmCharge.ZTable1.FieldByName(sSubType + '_EDDONG').AsString := sEd3;
  //            dmCharge.ZTable1.FieldByName(sSubType + '_VALUE').AsInteger := StrToIntDef(sValue, 0);
  //            dmCharge.ZTable1.Append;
            end;
          end;

          if iType = 0 then cxProgressBar1.Progress := i  else
          if iType = 1 then Gauge1.Progress := i;

          Application.ProcessMessages;
        end;
        if CHARGE_GUBUN = 'P' then
					dmCharge.FDTable_SQLite.Active := False;

        if iType = 0 then cxProgressBar1.Progress := 0  else
				if iType = 1 then Gauge1.Progress := 0;

        bChartChargeModify := False;
        GMessagebox(cbChartName.Text + ' 요금제를 저장하였습니다.', CDMSI);
      end;
		end else
		if sJob = 'FIRSTINSERT' then
		begin
			sChargeCd := lbFirstCd.Items[cbFirstName.ItemIndex];
      sSubType := 'FC';
      iStatus := asg_First_charge.GetColumnByFieldName('상태').Index;

      if iType = 0 then cxProgressBar4.MaxValue := asg_First_charge.DataController.RecordCount - 1 else
      if iType = 1 then Gauge1.MaxValue := asg_First_charge.DataController.RecordCount - 1;

      sSNo := func_Max_Sn(sSubType, sChargeCd);
			if CHARGE_GUBUN = 'P' then
      begin
				dmCharge.FDTable_SQLite.Active := False;
				dmCharge.FDTable_SQLite.TableName := 'CDMS_FIRST_CHARGE';
				dmCharge.FDTable_SQLite.Active := True;
      end else
      if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
      begin
//        dmCharge.ZTable1.Active := False;
//        dmCharge.ZTable1.TableName := 'CDMS_FIRST';
//        dmCharge.ZTable1.Active := True;
      end;

			if iType = 2 then
			begin
        try
          TextFile := TStringList.Create;
					TextFile.LoadFromFile(Lbl_sFile.Caption);
          ColList := TStringList.Create;

					Gauge2.Progress := 0;
					Gauge2.MaxValue := TextFile.count - 1;

					Application.ProcessMessages;
					try
						for I := 1 to TextFile.count - 1 do
						begin
							ColList.CommaText := StringReplace(TextFile[i], ',', '', [rfReplaceAll]);

              sSt1 := ColList[1];
							sSt2 := ColList[2];
							sSt3 := ColList[3];
              sEd1 := ColList[4];
							sEd2 := ColList[5];
              sEd3 := ColList[6];
              sValue := StringReplace(ColList[7], ',', '', [rfReplaceAll]);
              sQuery := '';

              sQuery := 'DELETE FROM %s WHERE ' + sSubType + '_CD = ''%s'' AND '
                + sSubType + '_STCITY = ''' + sSt1 + ''' AND ' + sSubType +
                '_STWARD = ''' + sSt2 + ''' AND ' + sSubType + '_STDONG = ''' +
                sSt3 + ''' '
                + ' AND ' + sSubType + '_EDCITY = ''' + sEd1 + ''' AND ' +
                sSubType + '_EDWARD = ''' + sEd2 + ''' AND ' + sSubType +
                '_EDDONG = ''' + sEd3 + ''' ';

              sQuery := Format(sQuery, ['CDMS_FIRST', sChargeCd]);

              dmCharge.proc_mysql_init('update');
              dmCharge.FDQuery1.Close;
              dmCharge.FDQuery1.SQL.Text := sQuery;
              dmCharge.FDQuery1.ExecSQL;

              sQuery := 'INSERT INTO CDMS_FIRST (' + sSubType + '_CD,' + sSubType + '_VALUE,' +
                       sSubType + '_STCITY,' + sSubType + '_STWARD,' + sSubType + '_STDONG,' +
                       sSubType + '_EDCITY,' + sSubType + '_EDWARD,' + sSubType + '_EDDONG) VALUES '
										 + '(''' + sChargeCd + ''',' + IntToStr(StrToIntDef(sValue, 0)) + ',''' +
                       sSt1 + ''',''' + sSt2 + ''',''' + sSt3 + ''',''' +
                       sEd1 + ''',''' + sEd2 + ''',''' + sEd3 + ''')';
              dmCharge.proc_mysql_init('update');
              dmCharge.FDQuery1.Close;
              dmCharge.FDQuery1.SQL.Text := sQuery;
              dmCharge.FDQuery1.ExecSQL;

              if Not bStopFlag then Break;

              Gauge2.Progress := i;
              Application.ProcessMessages;
            end;
            Gauge2.Progress := 0;
            GMessagebox(Format('요금파일 [%s 건] 저장 완료했습니다.', [FormatFloat('#,', i)]), CDMSI);
          finally
            FreeAndNil(TextFile);
            FreeAndNil(ColList);
          end;
        except
          on err: exception do
          begin
            ShowMessage('요금표 파일을 저장하는 도중 오류가 발생했습니다. 파일을 확인하세요.');
          end;
        end;
      end else
      begin
        for i := 0 to asg_First_charge.DataController.RecordCount - 1 do
        begin
          // 다른이름 저장일경우 모두 Insert;
          if (iType = 1) or (asg_First_charge.DataController.Values[i, iStatus] =
            'I') or (asg_First_charge.DataController.Values[i, iStatus] = 'U') then
          begin
            //            Application.ProcessMessages;
            sSNo := IntToStr(StrToInt(sSno) + 1);
            sSt1 := asg_First_charge.DataController.Values[i, 1];
            sSt2 := asg_First_charge.DataController.Values[i, 2];
            sSt3 := asg_First_charge.DataController.Values[i, 3];
            sEd1 := asg_First_charge.DataController.Values[i, 4];
            sEd2 := asg_First_charge.DataController.Values[i, 5];
            sEd3 := asg_First_charge.DataController.Values[i, 6];
            sValue := StringReplace(asg_First_charge.DataController.Values[i, 7],
              ',', '', [rfReplaceAll]);

            sQuery := '';

//            if (iType = 0) and (asg_First_charge.DataController.Values[i, iStatus] = 'U') then

              sQuery := 'DELETE FROM %s WHERE ' + sSubType + '_CD = ''%s'' AND '
                + sSubType + '_STCITY = ''' + sSt1 + ''' AND ' + sSubType +
                '_STWARD = ''' + sSt2 + ''' AND ' + sSubType + '_STDONG = ''' +
                sSt3 + ''' '
                + ' AND ' + sSubType + '_EDCITY = ''' + sEd1 + ''' AND ' +
                sSubType + '_EDWARD = ''' + sEd2 + ''' AND ' + sSubType +
                '_EDDONG = ''' + sEd3 + ''' ';


            if CHARGE_GUBUN = 'P' then
            begin
              if sQuery <> '' then
              begin
                sQuery := Format(sQuery, ['CDMS_FIRST_CHARGE', sChargeCd]);
								dmCharge.proc_SQLite_init;
								dmCharge.FDQuery_SQLite.Close;
								dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
								dmCharge.FDQuery_SQLite.ExecSQL;
							end;

							dmCharge.FDTable_SQLite.Append;
							dmCharge.FDTable_SQLite.FieldByName(sSubType + '_CD'    ).AsString := sChargeCd;
							dmCharge.FDTable_SQLite.FieldByName(sSubType + '_NO'    ).AsInteger := StrToInt(sSNo);
							dmCharge.FDTable_SQLite.FieldByName(sSubType + '_STCITY').AsString := sSt1;
							dmCharge.FDTable_SQLite.FieldByName(sSubType + '_STWARD').AsString := sSt2;
							dmCharge.FDTable_SQLite.FieldByName(sSubType + '_STDONG').AsString := sSt3;
							dmCharge.FDTable_SQLite.FieldByName(sSubType + '_EDCITY').AsString := sEd1;
							dmCharge.FDTable_SQLite.FieldByName(sSubType + '_EDWARD').AsString := sEd2;
							dmCharge.FDTable_SQLite.FieldByName(sSubType + '_EDDONG').AsString := sEd3;
							dmCharge.FDTable_SQLite.FieldByName(sSubType + '_VALUE').AsInteger := StrToIntDef(sValue, 0);
							dmCharge.FDTable_SQLite.Append;
            end else
						if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
            begin
              if sQuery <> '' then
              begin
                sQuery := Format(sQuery, ['CDMS_FIRST', sChargeCd]);
                dmCharge.proc_mysql_init('update');
                dmCharge.FDQuery1.Close;
                dmCharge.FDQuery1.SQL.Text := sQuery;
                dmCharge.FDQuery1.ExecSQL;
              end;
              sQuery := 'INSERT INTO CDMS_FIRST (' + sSubType + '_CD,' + sSubType + '_VALUE,' +
                       sSubType + '_STCITY,' + sSubType + '_STWARD,' + sSubType + '_STDONG,' +
                       sSubType + '_EDCITY,' + sSubType + '_EDWARD,' + sSubType + '_EDDONG) VALUES '
										 + '(''' + sChargeCd + ''',' + IntToStr(StrToIntDef(sValue, 0)) + ',''' +
                       sSt1 + ''',''' + sSt2 + ''',''' + sSt3 + ''',''' +
                       sEd1 + ''',''' + sEd2 + ''',''' + sEd3 + ''')';
              dmCharge.proc_mysql_init('update');
              dmCharge.FDQuery1.Close;
              dmCharge.FDQuery1.SQL.Text := sQuery;
              dmCharge.FDQuery1.ExecSQL;
            end;
          end;

          if iType = 0 then cxProgressBar4.Progress := i  else
          if iType = 1 then Gauge1.Progress := i;

          Application.ProcessMessages;
        end;
        if CHARGE_GUBUN = 'P' then
					dmCharge.FDTable_SQLite.Active := False;

        if iType = 0 then cxProgressBar4.Progress := 0  else
				if iType = 1 then Gauge1.Progress := 0;

        bChartChargeModify := False;
        GMessagebox(cbChartName.Text + ' 요금제를 저장하였습니다.', CDMSI);
      end;
		end	else
		if sJob = 'FIRSTDETAILINSERT' then
		begin
			sChargeCd := lbFirstDetailCd.Items[cbFirstDetailName.ItemIndex];
			sSubType := 'FP';
			iStatus := asg_First_Detail_charge.GetColumnByFieldName('상태').Index;

			if iType = 0 then cxProgressBar5.MaxValue := asg_First_Detail_charge.DataController.RecordCount - 1 else
			if iType = 1 then Gauge1.MaxValue := asg_First_Detail_charge.DataController.RecordCount - 1;

      sSNo := func_Max_Sn(sSubType, sChargeCd);
			if CHARGE_GUBUN = 'P' then
			begin
				dmCharge.FDTable_SQLite.Active := False;
				dmCharge.FDTable_SQLite.TableName := 'CDMS_FIRST_DETAIL_CHARGE';
				dmCharge.FDTable_SQLite.Active := True;
			end	else
      if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
      begin
//        dmCharge.ZTable1.Active := False;
//        dmCharge.ZTable1.TableName := 'CDMS_FIRST';
//        dmCharge.ZTable1.Active := True;
			end;

      if iType = 2 then
      begin
        try
          TextFile := TStringList.Create;
					TextFile.LoadFromFile(Lbl_sFile.Caption);
					ColList := TStringList.Create;

          Gauge2.Progress := 0;
					Gauge2.MaxValue := TextFile.count - 1;

          Application.ProcessMessages;
					try
            for I := 1 to TextFile.count - 1 do
						begin
							ColList.CommaText := StringReplace(TextFile[i], ',', '', [rfReplaceAll]);

							sSt1 := ColList[1];
							sSt2 := ColList[2];
							sSt3 := ColList[3];
							sSt4 := ColList[4];
							sEd1 := ColList[5];
							sEd2 := ColList[6];
							sEd3 := ColList[7];
							sEd4 := ColList[8];
							sValue := StringReplace(ColList[9], ',', '', [rfReplaceAll]);
							sQuery := '';

							sQuery := 'DELETE FROM %s WHERE FP_CD = ''%s'' '
											+ 'AND FP_STCITY = ''' + sSt1 + ''' AND FP_STWARD = ''' + sSt2 + ''' '
											+ 'AND FP_STDONG = ''' + sSt3 + ''' AND FP_STPOI  = ''' + sSt4 + ''' '
											+ 'AND FP_EDCITY = ''' + sEd1 + ''' AND FP_EDWARD = ''' + sEd2 + ''' '
											+ 'AND FP_EDDONG = ''' + sEd3 + ''' AND FP_EDPOI  = ''' + sEd3 + ''' ';

							sQuery := Format(sQuery, ['CDMS_FIRST_DETAIL', sChargeCd]);

              dmCharge.proc_mysql_init('update');
              dmCharge.FDQuery1.Close;
              dmCharge.FDQuery1.SQL.Text := sQuery;
              dmCharge.FDQuery1.ExecSQL;

							sQuery := 'INSERT INTO CDMS_FIRST_DETAIL (FP_CD, FP_VALUE, FP_STCITY, FP_STWARD, FP_STDONG, FP_STPOI, FP_EDCITY, '
											+ 'FP_EDWARD, FP_EDDONG, FP_STPOI) VALUES '
											+ '(''' + sChargeCd + ''',' + IntToStr(StrToIntDef(sValue, 0)) + ',''' +
											 sSt1 + ''',''' + sSt2 + ''',''' + sSt3 + ''',''' + sSt4 + ''',''' +
											 sEd1 + ''',''' + sEd2 + ''',''' + sEd3 + ''',''' + sEd4 + ''')';
							dmCharge.proc_mysql_init('update');
							dmCharge.FDQuery1.Close;
              dmCharge.FDQuery1.SQL.Text := sQuery;
              dmCharge.FDQuery1.ExecSQL;

              if Not bStopFlag then Break;

              Gauge2.Progress := i;
              Application.ProcessMessages;
            end;
            Gauge2.Progress := 0;
            GMessagebox(Format('요금파일 [%s 건] 저장 완료했습니다.', [FormatFloat('#,', i)]), CDMSI);
          finally
            FreeAndNil(TextFile);
						FreeAndNil(ColList);
          end;
				except
          on err: exception do
          begin
            ShowMessage('요금표 파일을 저장하는 도중 오류가 발생했습니다. 파일을 확인하세요.');
          end;
        end;
      end else
			begin
				for i := 0 to asg_First_Detail_charge.DataController.RecordCount - 1 do
        begin
          // 다른이름 저장일경우 모두 Insert;
					if (iType = 1) or (asg_First_Detail_charge.DataController.Values[i, iStatus] = 'I') or
														(asg_First_Detail_charge.DataController.Values[i, iStatus] = 'U') then
          begin
            sSNo := IntToStr(StrToInt(sSno) + 1);
						sSt1 := asg_First_Detail_charge.DataController.Values[i, 1];
						sSt2 := asg_First_Detail_charge.DataController.Values[i, 2];
						sSt3 := asg_First_Detail_charge.DataController.Values[i, 3];
						sSt4 := asg_First_Detail_charge.DataController.Values[i, 4];
						sEd1 := asg_First_Detail_charge.DataController.Values[i, 5];
						sEd2 := asg_First_Detail_charge.DataController.Values[i, 6];
						sEd3 := asg_First_Detail_charge.DataController.Values[i, 7];
						sEd4 := asg_First_Detail_charge.DataController.Values[i, 8];
						sValue := StringReplace(asg_First_Detail_charge.DataController.Values[i, 9], ',', '', [rfReplaceAll]);

            sQuery := '';
						if (iType = 0) and (asg_First_Detail_charge.DataController.Values[i, iStatus] = 'U') then
						begin
							sQuery := 'DELETE FROM %s WHERE FP_CD = ''%s'' '
											+ 'AND FP_STCITY = ''' + sSt1 + ''' AND FP_STWARD = ''' + sSt2 + ''' '
											+ 'AND FP_STDONG = ''' + sSt3 + ''' AND FP_STPOI  = ''' + sSt4 + ''' '
											+ 'AND FP_EDCITY = ''' + sEd1 + ''' AND FP_EDWARD = ''' + sEd2 + ''' '
											+ 'AND FP_EDDONG = ''' + sEd3 + ''' AND FP_EDPOI  = ''' + sEd3 + ''' ';
						end;

						if CHARGE_GUBUN = 'P' then
						begin
              if sQuery <> '' then
							begin
								sQuery := Format(sQuery, ['CDMS_FIRST_DETAIL_CHARGE', sChargeCd]);
								dmCharge.proc_SQLite_init;
								dmCharge.FDQuery_SQLite.Close;
								dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
								dmCharge.FDQuery_SQLite.ExecSQL;
							end;

							dmCharge.FDTable_SQLite.Append;
							dmCharge.FDTable_SQLite.FieldByName('FP_CD').AsString     := sChargeCd;
							dmCharge.FDTable_SQLite.FieldByName('FP_NO').AsInteger    := StrToInt(sSNo);
							dmCharge.FDTable_SQLite.FieldByName('FP_STCITY').AsString := sSt1;
							dmCharge.FDTable_SQLite.FieldByName('FP_STWARD').AsString := sSt2;
							dmCharge.FDTable_SQLite.FieldByName('FP_STDONG').AsString := sSt3;
							dmCharge.FDTable_SQLite.FieldByName('FP_STPOI').AsString  := sSt4;
							dmCharge.FDTable_SQLite.FieldByName('FP_EDCITY').AsString := sEd1;
							dmCharge.FDTable_SQLite.FieldByName('FP_EDWARD').AsString := sEd2;
							dmCharge.FDTable_SQLite.FieldByName('FP_EDDONG').AsString := sEd3;
							dmCharge.FDTable_SQLite.FieldByName('FP_EDPOI').AsString  := sEd4;
							dmCharge.FDTable_SQLite.FieldByName('FP_VALUE').AsInteger := StrToIntDef(sValue, 0);
							dmCharge.FDTable_SQLite.Append;
            end else
            if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
            begin
              if sQuery <> '' then
              begin
								sQuery := Format(sQuery, ['CDMS_FIRST_DETAIL', sChargeCd]);
                dmCharge.proc_mysql_init('update');
                dmCharge.FDQuery1.Close;
                dmCharge.FDQuery1.SQL.Text := sQuery;
                dmCharge.FDQuery1.ExecSQL;
              end;

							sQuery := 'INSERT INTO CDMS_FIRST_DETAIL (FP_CD, FP_VALUE, FP_STCITY, FP_STWARD, FP_STDONG, FP_STPOI, '
											+ 'FP_EDCITY, FP_EDWARD, FP_EDDONG, FP_EDPOI) VALUES '
										 + '(''' + sChargeCd + ''',' + IntToStr(StrToIntDef(sValue, 0)) + ',''' +
											 sSt1 + ''',''' + sSt2 + ''',''' + sSt3 + ''',''' + sSt4 + ''',''' +
											 sEd1 + ''',''' + sEd2 + ''',''' + sEd3 + ''',''' + sEd4 + ''')';
							dmCharge.proc_mysql_init('update');
              dmCharge.FDQuery1.Close;
							dmCharge.FDQuery1.SQL.Text := sQuery;
							dmCharge.FDQuery1.ExecSQL;

						end;
          end;
					if iType = 0 then cxProgressBar5.Progress := i else
          if iType = 1 then Gauge1.Progress := i;

          Application.ProcessMessages;
        end;

				if iType = 0 then cxProgressBar5.Progress := 0 else
        if iType = 1 then Gauge1.Progress := 0;

				bFirstDetailChargeModify := False;
				GMessagebox(cbFirstName.Text + ' 요금제를 저장하였습니다.', CDMSI)
      end;  
    end else
    if sJob = 'DISINSERT' then
    begin
      sChargeCd := lbDisCd.Items[cbDisName.ItemIndex];
      sSubType := 'DC';
      iStatus := asg_mod_dis.GetColumnByFieldName('상태').Index;

      if iType = 0 then cxProgressBar2.MaxValue := asg_mod_dis.DataController.RecordCount - 1 else
      if iType = 1 then Gauge1.MaxValue := asg_mod_dis.DataController.RecordCount - 1;

      sSNo := func_Max_Sn(sSubType, sChargeCd);
      if CHARGE_GUBUN = 'P' then
      begin
				dmCharge.FDTable_SQLite.Active := False;
				dmCharge.FDTable_SQLite.TableName := 'CDMS_DIS_CHARGE';
				dmCharge.FDTable_SQLite.Active := True;
      end else
      if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
      begin
//        dmCharge.ZTable1.Active := False;
//        dmCharge.ZTable1.TableName := 'CDMS_DISTANCE';
//        dmCharge.ZTable1.Active := True;
        sTable := 'CDMS_DISTANCE';
      end;
      for i := 0 to asg_mod_dis.DataController.RecordCount - 1 do
      begin
        // 다른이름 저장일경우 모두 Insert;
        if (iType = 1) or (asg_mod_dis.DataController.Values[i, iStatus] = 'I')
          or (asg_mod_dis.DataController.Values[i, iStatus] = 'U') then
        begin
          sSNo := IntToStr(StrToInt(sSno) + 1);
          sSt1 := asg_mod_dis.DataController.Values[i, 1];
          sSt2 := asg_mod_dis.DataController.Values[i, 2];
          sSt3 := asg_mod_dis.DataController.Values[i, 3];
          sEd1 := asg_mod_dis.DataController.Values[i, 4];
          sEd2 := asg_mod_dis.DataController.Values[i, 5];
          sEd3 := asg_mod_dis.DataController.Values[i, 6];
          sLowValue := StringReplace(asg_mod_dis.DataController.Values[i, 7], ',', '', [rfReplaceAll]);
          sGerTerm := StringReplace(asg_mod_dis.DataController.Values[i, 8], ',', '', [rfReplaceAll]);
          sGerValue := StringReplace(asg_mod_dis.DataController.Values[i, 9], ',', '', [rfReplaceAll]);
          sOverTerm := StringReplace(asg_mod_dis.DataController.Values[i, 10], ',', '', [rfReplaceAll]);
          sOverValue := StringReplace(asg_mod_dis.DataController.Values[i, 11], ',', '', [rfReplaceAll]);

          sQuery := '';
          if (iType = 0) and (asg_mod_dis.DataController.Values[i, iStatus] = 'U') then
            sQuery := 'DELETE FROM %s WHERE ' + sSubType + '_CD = ''%s'' AND ' + sSubType + '_STCITY = '''
              + sSt1 + ''' AND ' + sSubType + '_STWARD = ''' + sSt2 + ''' AND ' + sSubType + '_STDONG = ''' +
              sSt3 + ''' ' + ' AND ' + sSubType + '_EDCITY = ''' + sEd1 + ''' AND ' + sSubType + '_EDWARD = '''
              + sEd2 + ''' AND ' + sSubType + '_EDDONG = ''' + sEd3 + ''' ';

          if CHARGE_GUBUN = 'P' then
          begin
            if sQuery <> '' then
            begin
              sQuery := Format(sQuery, ['CDMS_DIS_CHARGE', sChargeCd]);
							dmCharge.proc_SQLite_init;
							dmCharge.FDQuery_SQLite.Close;
							dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
							dmCharge.FDQuery_SQLite.ExecSQL;
						end;

						dmCharge.FDTable_SQLite.Append;
						dmCharge.FDTable_SQLite.FieldByName(sSubType + '_CD').AsString := sChargeCd;
						dmCharge.FDTable_SQLite.FieldByName(sSubType + '_NO').AsInteger := StrToInt(sSNo);
						dmCharge.FDTable_SQLite.FieldByName(sSubType + '_STCITY').AsString := sSt1;
						dmCharge.FDTable_SQLite.FieldByName(sSubType + '_STWARD').AsString := sSt2;
						dmCharge.FDTable_SQLite.FieldByName(sSubType + '_STDONG').AsString := sSt3;
						dmCharge.FDTable_SQLite.FieldByName(sSubType + '_EDCITY').AsString := sEd1;
						dmCharge.FDTable_SQLite.FieldByName(sSubType + '_EDWARD').AsString := sEd2;
						dmCharge.FDTable_SQLite.FieldByName(sSubType + '_EDDONG').AsString := sEd3;
						dmCharge.FDTable_SQLite.FieldByName(sSubType + '_LOWVALUE').AsInteger := StrToIntDef(sLowValue, 0);
						dmCharge.FDTable_SQLite.FieldByName(sSubType + '_GERTERM').AsInteger := StrToIntDef(sGerTerm, 0);
						dmCharge.FDTable_SQLite.FieldByName(sSubType + '_GERVALUE').AsInteger := StrToIntDef(sGerValue, 0);
						dmCharge.FDTable_SQLite.FieldByName(sSubType + '_OVERTERM').AsInteger := StrToIntDef(sOverTerm, 0);
						dmCharge.FDTable_SQLite.FieldByName(sSubType + '_OVERVALUE').AsInteger := StrToIntDef(sOverValue, 0);
						dmCharge.FDTable_SQLite.Append;
          end else
          if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
          begin
            if sQuery <> '' then
            begin
              sQuery := Format(sQuery, ['CDMS_DISTANCE', sChargeCd]);
              dmCharge.proc_mysql_init('update');
              dmCharge.FDQuery1.Close;
              dmCharge.FDQuery1.SQL.Text := sQuery;
              dmCharge.FDQuery1.ExecSQL;
            end;

            sQuery := 'INSERT INTO ' + sTable + ' (' + sSubType + '_CD,' + sSubType + '_LOWVALUE '
              + ',' + sSubType + '_GERTERM,' + sSubType + '_GERVALUE,' +
              sSubType + '_OVERTERM,' + sSubType + '_OVERVALUE '
              + ',' + sSubType + '_STCITY,' + sSubType + '_STWARD,' + sSubType +
              '_STDONG,' + sSubType + '_EDCITY,' + sSubType + '_EDWARD,' +
              sSubType + '_EDDONG) '
              + ' VALUES '
              + '(''' + sChargeCd + ''',' + IntToStr(StrToIntdef(sLowValue, 0)) + ',' + IntToStr(StrToIntdef(sGerTerm, 0)) + ',' +
              IntToStr(StrToIntdef(sGerValue, 0)) + ' '
              + ',' + IntToStr(StrToIntdef(sOverTerm, 0)) + ',' + IntToStr(StrToIntdef(sOverValue, 0)) + ','''
              + sSt1 + ''',''' + sSt2 + ''',''' + sSt3 + ''' '
              + ',''' + sEd1 + ''',''' + sEd2 + ''',''' + sEd3 + ''')';
            dmCharge.proc_mysql_init('update');
            dmCharge.FDQuery1.Close;
            dmCharge.FDQuery1.SQL.Text := sQuery;
            dmCharge.FDQuery1.ExecSQL;

//            dmCharge.ZTable1.Append;
//            dmCharge.ZTable1.FieldByName(sSubType + '_CD').AsString := sChargeCd;
//            dmCharge.ZTable1.FieldByName(sSubType + '_NO').AsInteger := StrToInt(sSNo);
//            dmCharge.ZTable1.FieldByName(sSubType + '_STCITY').AsString := sSt1;
//            dmCharge.ZTable1.FieldByName(sSubType + '_STWARD').AsString := sSt2;
//            dmCharge.ZTable1.FieldByName(sSubType + '_STDONG').AsString := sSt3;
//            dmCharge.ZTable1.FieldByName(sSubType + '_EDCITY').AsString := sEd1;
//            dmCharge.ZTable1.FieldByName(sSubType + '_EDWARD').AsString := sEd2;
//            dmCharge.ZTable1.FieldByName(sSubType + '_EDDONG').AsString := sEd3;
//            dmCharge.ZTable1.FieldByName(sSubType + '_LOWVALUE').AsInteger := StrToIntdef(sLowValue, 0);
//            dmCharge.ZTable1.FieldByName(sSubType + '_GERTERM').AsInteger := StrToIntdef(sGerTerm, 0);
//            dmCharge.ZTable1.FieldByName(sSubType + '_GERVALUE').AsInteger := StrToIntdef(sGerValue, 0);
//            dmCharge.ZTable1.FieldByName(sSubType + '_OVERTERM').AsInteger := StrToIntdef(sOverTerm, 0);
//            dmCharge.ZTable1.FieldByName(sSubType + '_OVERVALUE').AsInteger := StrToIntdef(sOverValue, 0);
//            dmCharge.ZTable1.Append;
          end;
        end;
        if iType = 0 then cxProgressBar2.Progress := i else
        if iType = 1 then Gauge1.Progress := i;

        Application.ProcessMessages;
      end;

      if iType = 0 then cxProgressBar2.Progress := 0 else
      if iType = 1 then Gauge1.Progress := 0;

//      bChargeModify := False;
      GMessagebox(cbDisName.Text + ' 요금제를 저장하였습니다.', CDMSI);
    end else
    if sJob = 'TERMINSERT' then
    begin
      sChargeCd := lbTermCd.Items[cbTermName.ItemIndex];
      sSubType := 'TC';
			iStatus := asg_term_modify.GetColumnByFieldName('상태').Index;
			
			if asg_term_modify.DataController.RecordCount <= 0 then exit;
			
			if iType = 0 then cxProgressBar3.MaxValue := asg_term_modify.DataController.RecordCount - 1 else
			if iType = 1 then Gauge1.MaxValue := asg_term_modify.DataController.RecordCount - 1;

      sSNo := func_Max_Sn(sSubType, sChargeCd);
      if CHARGE_GUBUN = 'P' then
			begin
				dmCharge.FDTable_SQLite.Active := False;
				dmCharge.FDTable_SQLite.TableName := 'CDMS_TERM_CHARGE';
				dmCharge.FDTable_SQLite.Active := True;
      end else
      if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
      begin
//        dmCharge.ZTable1.Active := False;
//        dmCharge.ZTable1.TableName := 'CDMS_TERM';
//        dmCharge.ZTable1.Active := True;

        sTable := 'CDMS_TERM';
      end;
      for i := 0 to asg_term_modify.DataController.RecordCount - 1 do
      begin
        // 다른이름 저장일경우 모두 Insert;
        if (iType = 1) or (asg_term_modify.DataController.Values[i, iStatus] =
          'I') or (asg_term_modify.DataController.Values[i, iStatus] = 'U') then
        begin
          sSNo := IntToStr(StrToInt(sSno) + 1);
          sSt1 := asg_term_modify.DataController.Values[i, 1];
          sSt2 := asg_term_modify.DataController.Values[i, 2];
          sSt3 := asg_term_modify.DataController.Values[i, 3];
          sEd1 := asg_term_modify.DataController.Values[i, 4];
          sEd2 := asg_term_modify.DataController.Values[i, 5];
          sEd3 := asg_term_modify.DataController.Values[i, 6];
          sValue := StringReplace(asg_term_modify.DataController.Values[i, 7], ',', '', [rfReplaceAll]);
					sTemp := asg_term_modify.DataController.Values[i, 8];
					iCdNo := cb_term_type2.Properties.Items.IndexOf(sTemp);
					if iCdNo >= 0 then
						sSubCd := lbTermTypeCd.Items[iCdNo]
					else
						sSubCd := '';
					sTemp := asg_term_modify.DataController.Values[i, 9];
					iCdNo := cb_term_type2.Properties.Items.IndexOf(sTemp);
					if iCdNo >= 0 then
						sPassCd := lbTermTypeCd.Items[iCdNo]
					else
						sPassCd := '';

          sQuery := '';
          if (iType = 0) and (asg_term_modify.DataController.Values[i,
            iStatus] = 'U') then
            sQuery := 'DELETE FROM %s WHERE ' + sSubType + '_CD = ''%s'' AND '
              + sSubType + '_STCITY = ''' + sSt1 + ''' AND ' + sSubType +
              '_STWARD = ''' + sSt2 + ''' AND ' + sSubType + '_STDONG = ''' +
              sSt3 + ''' '
              + ' AND ' + sSubType + '_EDCITY = ''' + sEd1 + ''' AND ' +
              sSubType + '_EDWARD = ''' + sEd2 + ''' AND ' + sSubType +
              '_EDDONG = ''' + sEd3 + ''' ';
          if CHARGE_GUBUN = 'P' then
          begin
            if sQuery <> '' then
            begin
              sQuery := Format(sQuery, ['CDMS_TERM_CHARGE', sChargeCd]);
							dmCharge.proc_SQLite_init;
							dmCharge.FDQuery_SQLite.Close;
							dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
							dmCharge.FDQuery_SQLite.ExecSQL;
						end;

						dmCharge.FDTable_SQLite.Append;
						dmCharge.FDTable_SQLite.FieldByName(sSubType + '_CD').AsString := sChargeCd;
						dmCharge.FDTable_SQLite.FieldByName(sSubType + '_NO').AsInteger := StrToInt(sSNo);
						dmCharge.FDTable_SQLite.FieldByName(sSubType + '_STCITY').AsString := sSt1;
						dmCharge.FDTable_SQLite.FieldByName(sSubType + '_STWARD').AsString := sSt2;
						dmCharge.FDTable_SQLite.FieldByName(sSubType + '_STDONG').AsString := sSt3;
						dmCharge.FDTable_SQLite.FieldByName(sSubType + '_EDCITY').AsString := sEd1;
						dmCharge.FDTable_SQLite.FieldByName(sSubType + '_EDWARD').AsString := sEd2;
						dmCharge.FDTable_SQLite.FieldByName(sSubType + '_EDDONG').AsString := sEd3;
						dmCharge.FDTable_SQLite.FieldByName(sSubType + '_VALUE').AsInteger := 0;
						dmCharge.FDTable_SQLite.FieldByName(sSubType + '_SUB_CD').AsString := sSubCd;
						dmCharge.FDTable_SQLite.FieldByName(sSubType + '_BV').AsInteger := StrToIntdef(sValue, 0);
						dmCharge.FDTable_SQLite.FieldByName(sSubType + '_PASS_CD').AsString := sPassCd;
						dmCharge.FDTable_SQLite.Append;
          end else
          if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
          begin
            if sQuery <> '' then
            begin
              sQuery := Format(sQuery, ['CDMS_TERM', sChargeCd]);
              dmCharge.proc_mysql_init('update');
              dmCharge.FDQuery1.Close;
              dmCharge.FDQuery1.SQL.Text := sQuery;
              dmCharge.FDQuery1.ExecSQL;
            end;

            sQuery := 'INSERT INTO ' + sTable + ' (' + sSubType + '_CD,' + sSubType + '_VALUE ' + ',' +
							sSubType + '_SUB_CD,' + sSubType + '_BV,' + sSubType + '_PASS_CD '  + ',' +
							sSubType + '_STCITY,' + sSubType + '_STWARD,' + sSubType + '_STDONG,' +
							sSubType + '_EDCITY,' + sSubType + '_EDWARD,' + sSubType + '_EDDONG) '
              + ' VALUES '
							+ '(''' + sChargeCd + ''',0,''' + sSubCd + ''',' + IntToStr(StrToIntdef(sValue, 0)) + ' ' + ',''' + sPassCd + ''',''' +
                sSt1 + ''',''' + sSt2 + ''',''' + sSt3 + ''' ' + ',''' +
                sEd1 + ''',''' + sEd2 + ''',''' + sEd3 + ''')';
            dmCharge.proc_mysql_init('update');
            dmCharge.FDQuery1.Close;
            dmCharge.FDQuery1.SQL.Text := sQuery;
            dmCharge.FDQuery1.ExecSQL;

//            dmCharge.ZTable1.Append;
//            dmCharge.ZTable1.FieldByName(sSubType + '_CD').AsString := sChargeCd;
//            dmCharge.ZTable1.FieldByName(sSubType + '_NO').AsInteger := StrToInt(sSNo);
//            dmCharge.ZTable1.FieldByName(sSubType + '_STCITY').AsString := sSt1;
//            dmCharge.ZTable1.FieldByName(sSubType + '_STWARD').AsString := sSt2;
//            dmCharge.ZTable1.FieldByName(sSubType + '_STDONG').AsString := sSt3;
//            dmCharge.ZTable1.FieldByName(sSubType + '_EDCITY').AsString := sEd1;
//            dmCharge.ZTable1.FieldByName(sSubType + '_EDWARD').AsString := sEd2;
//            dmCharge.ZTable1.FieldByName(sSubType + '_EDDONG').AsString := sEd3;
//            dmCharge.ZTable1.FieldByName(sSubType + '_VALUE').AsInteger := 0;
//            dmCharge.ZTable1.FieldByName(sSubType + '_SUB_CD').AsString := sSubCd;
//            dmCharge.ZTable1.FieldByName(sSubType + '_BV').AsInteger := StrToIntdef(sValue, 0);
//            dmCharge.ZTable1.FieldByName(sSubType + '_PASS_CD').AsString := sPaaCd;
//            dmCharge.ZTable1.Append;
          end;
        end;
				if iType = 0 then cxProgressBar3.Progress := i else
				if iType = 1 then Gauge1.Progress := i;

				Application.ProcessMessages;
			end;

			if iType = 0 then cxProgressBar3.Progress := 0 else
      if iType = 1 then Gauge1.Progress := 0;

//      bChargeModify := False;
      GMessagebox(cbTermName.Text + ' 요금제를 저장하였습니다.', CDMSI);
      // 요금설정에서 요금제 조회
    end else
    if sJob = 'SAVECHARGETYPE' then
    begin
      sPridx := IndexOfPrtit(stringreplace(cbb1.text,'사용안함','',[rfreplaceall]));
      if sPridx = -1 then sPrIdx := 0;
			if sPrIdx = 0 then
      begin
        sStTime:='';
        sEdTime:='';
      end else
      begin
				sStTime:=edt_StHour.Text+':'+edt_StMin.Text;
        sEdTime:=edt_EdHour.Text+':'+edt_EdMin.Text;
      end;

			sKeyNumber := StringReplace(ed_KeyNumber.Text, '-', '', [rfReplaceAll]);

			iRow := lbchargenm.Items.IndexOf(cb_charge_name.Text);
      sSno := lbchargenmcd.Items.Strings[iRow];

			if cb_Charge_First.ItemIndex > 0 then
			begin
				iSubRow := lbchargenm.Items.IndexOf(cb_Charge_First.Text);
				sFirstCd := lbchargenmcd.Items.Strings[iSubRow];
			end else
			if cb_Charge_FirstD.ItemIndex > 0 then
			begin
				iSubRow := lbchargenm.Items.IndexOf(cb_Charge_FirstD.Text);
				sFirstCd := lbchargenmcd.Items.Strings[iSubRow];
			end else
			begin
        sFirstCd := '';
      end;

      if cxGroupBox3.Tag = 0 then
      begin
        sValue := intToStr(StrToIntDef(StringReplace(ed_passvalue.Text, ',', '', [rfReplaceAll]), 0));
        sPassCd := '';
        sPassView := '';
      end else
      begin
        sValue := '0';
        if cb_Charge_PassG.ItemIndex > 0 then
        begin
          isubRow := lbchargenm.Items.IndexOf(cb_Charge_PassG.Text);
          sPassCd := lbchargenmcd.Items.Strings[iSubRow];
        end else
					sPassCd := '';

        sPassView := IntToStr(cb_Charge_Pass.ItemIndex);
      end;

      if CHARGE_GUBUN = 'P' then
			begin
				iRow := lbchargenm.Items.IndexOf(cb_charge_name.Text);
				sSno := lbchargenmcd.Items.Strings[iRow];
				iRow := lbchargenm2.Items.IndexOf(cb_charge_name2.Text);
				sSno2 := lbchargenmcd2.Items.Strings[iRow];

				sQuery := 'DELETE FROM CDMS_CHARGE_TYPE WHERE CT_KEY_NUM = ''' + sKeyNumber + ''' ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.ExecSQL;

				sQuery := 'INSERT INTO CDMS_CHARGE_TYPE(CT_NO, CT_BR_NO, CT_KEY_NUM, CT_GUBUN, CT_CD, IN_DATE, CT_PASSVALUE, '
																			+ '                             CT_FIRST_CD,CT_PASS_GUBUN,CT_PASS_CD,CT_PASS_VIEW,PREM_NSEQ,PREM_STTIME,'
																			+ '                             PREM_EDTIME, CT_GUBUN2, CT_CD2) VALUES (1,''' + br_no.Text
																			+ ''',''' + sKeyNumber + ''',''' + copy(sSno, 1, 2) + ''',''' + sSno
																			+ ''',''' + formatdatetime('yyyy-mm-dd', now) + ''', ' + sValue +	', ''' + sFirstCd
																			+ ''',''' + IntToStr(cxGroupBox3.Tag) + ''',''' +	sPassCd + ''',''' + sPassView + ''',''' + inttostr(sPrIdx)
																			+ ''',''' + sStTime + ''',''' + sEdTime + ''',''' + copy(sSno2, 1, 2) + ''',''' + sSno2 + ''')';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.ExecSQL;

				iRow := asg_Br_Charge.DataController.FindRecordIndexByText(0, 2, strtocall(sKeyNumber), True, False, True);
				asg_Br_Charge.BeginUpdate;
				asg_Br_Charge.DataController.Values[iRow, 3] := cb_Charge_Gubun.Text;
				asg_Br_Charge.DataController.Values[iRow, 4] := cb_charge_name.Text;
				asg_Br_Charge.DataController.Values[iRow, 5] := cb_Charge_Gubun2.Text;
				asg_Br_Charge.DataController.Values[iRow, 6] := cb_charge_name2.Text;

				if Copy(sFirstCd,1,2) = 'CF' then
					asg_Br_Charge.DataController.Values[iRow, 7] := cb_Charge_First.Text
				else
				if Copy(sFirstCd,1,2) = 'CP' then
					asg_Br_Charge.DataController.Values[iRow, 7] := cb_Charge_FirstD.Text
				else
					asg_Br_Charge.DataController.Values[iRow, 7] := cb_Charge_First.Text;

  			asg_Br_Charge.DataController.Values[iRow, 8] := '';

				// 2011.02.14
				asg_Br_Charge.DataController.Values[iRow, 11] := IndexOfPrSeq(sPridx);
				asg_Br_Charge.DataController.Values[iRow, 12] := sStTime;
				asg_Br_Charge.DataController.Values[iRow, 13] := sEdTime;

				if cxGroupBox3.Tag = 0 then
				begin
					asg_Br_Charge.DataController.Values[iRow,  9] := ed_passvalue.Text;
					asg_Br_Charge.DataController.Values[iRow, 10] := '';
					// 2011.02.09 (8부터 +3)
					asg_Br_Charge.DataController.Values[iRow, 19] := '';
					asg_Br_Charge.DataController.Values[iRow, 20] := '';
				end else
				begin
					asg_Br_Charge.DataController.Values[iRow,  9] := cb_Charge_PassG.Text;
					asg_Br_Charge.DataController.Values[iRow, 10] := cb_Charge_Pass.Text;
					asg_Br_Charge.DataController.Values[iRow, 19] := sPassCd;
					asg_Br_Charge.DataController.Values[iRow, 20] := sPassView;
				end;
				asg_Br_Charge.DataController.Values[iRow, 14] := formatdatetime('yyyy-mm-dd', now);
				asg_Br_Charge.DataController.Values[iRow, 16] := sSno;
				asg_Br_Charge.DataController.Values[iRow, 17] := sSno2;
				asg_Br_Charge.DataController.Values[iRow, 18] := sFirstCd;

				asg_Br_Charge.EndUpdate;
				GMessagebox(ed_br_Name.Text + '(' + ed_KeyNumber.Text + ') ' + cb_charge_name.text + '/' + cb_charge_name2.text + ' 요금제가 저장되었습니다.', cdmsi);
			end else
      if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
      begin
				iRow := lbchargenm.Items.IndexOf(cb_charge_name.Text);
				sSno := lbchargenmcd.Items.Strings[iRow];
				iRow := lbchargenm2.Items.IndexOf(cb_charge_name2.Text);
				sSno2 := lbchargenmcd2.Items.Strings[iRow];

        if rbDistNewN.Checked then sNewDistYn := 'n' else
        if rbDistNewY.Checked then sNewDistYn := 'y';

				dmCharge.proc_mysql_init('update');
				dmCharge.FDQuery1.Close;
				dmCharge.FDQuery1.SQL.Text := 'DELETE FROM CDMS_TYPE WHERE CT_KEY_NUM = ''' + sKeyNumber + ''' ';
        dmCharge.FDQuery1.ExecSQL;

        dmCharge.proc_mysql_init('update');
        dmCharge.FDQuery1.Close;
				sqlTXT := 'INSERT INTO CDMS_TYPE(CT_NO, CT_BR_NO, CT_KEY_NUM, CT_GUBUN, CT_CD, CT_GUBUN2, CT_CD2, IN_DATE, CT_PASSVALUE, CT_FIRST_CD, '
								+ '                      CT_PASS_GUBUN, CT_PASS_CD, CT_PASS_VIEW, PREM_NSEQ, PREM_STTIME, PREM_EDTIME, CT_NEWDIST_YN) '
                + Format(' VALUES (1, ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ' +
                                  ' ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'') ',
                                  [br_no.Text, sKeyNumber, Copy(sSno, 1, 2), sSno, Copy(sSno2, 1, 2), sSno2, FormatDatetime('yyyy-mm-dd', now), sValue, sFirstCd
                                 , IntToStr(cxGroupBox3.Tag), sPassCd, sPassView, IntToStr(sPrIdx), sStTime, sEdTime, sNewDistYn]);
				dmCharge.FDQuery1.SQL.Text := sqlTXT;
				dmCharge.FDQuery1.ExecSQL;

				iRow := asg_Br_Charge.DataController.FindRecordIndexByText(0, 2, strtocall(sKeyNumber), True, False, True);
				asg_Br_Charge.BeginUpdate;
				asg_Br_Charge.DataController.Values[iRow, 3] := cb_Charge_Gubun.Text;
				asg_Br_Charge.DataController.Values[iRow, 4] := cb_charge_name.Text;
				asg_Br_Charge.DataController.Values[iRow, 5] := cb_Charge_Gubun2.Text;
				asg_Br_Charge.DataController.Values[iRow, 6] := cb_charge_name2.Text;

				if Copy(sFirstCd,1,2) = 'CF' then
					asg_Br_Charge.DataController.Values[iRow, 7] := cb_Charge_First.Text
				else
				if Copy(sFirstCd,1,2) = 'CP' then
					asg_Br_Charge.DataController.Values[iRow, 7] := cb_Charge_FirstD.Text
				else
					asg_Br_Charge.DataController.Values[iRow, 7] := cb_Charge_First.Text;

        if rbDistNewY.Checked then asg_Br_Charge.DataController.Values[iRow, 8] := '사용' else
        if rbDistNewN.Checked then asg_Br_Charge.DataController.Values[iRow, 8] := '사용안함';

				// 2011.02.14
				asg_Br_Charge.DataController.Values[iRow, 11] := IndexOfPrSeq(sPridx);
				asg_Br_Charge.DataController.Values[iRow, 12] := sStTime;
				asg_Br_Charge.DataController.Values[iRow, 13] := sEdTime;

				if cxGroupBox3.Tag = 0 then
				begin
					asg_Br_Charge.DataController.Values[iRow,  9] := ed_passvalue.Text;
					asg_Br_Charge.DataController.Values[iRow, 10] := '';
					// 2011.02.09 (8부터 +3)
					asg_Br_Charge.DataController.Values[iRow, 19] := '';
					asg_Br_Charge.DataController.Values[iRow, 20] := '';
				end else
				begin
					asg_Br_Charge.DataController.Values[iRow,  9] := cb_Charge_PassG.Text;
   				asg_Br_Charge.DataController.Values[iRow, 10] := cb_Charge_Pass.Text;
  		    asg_Br_Charge.DataController.Values[iRow, 19] := sPassCd;
			    asg_Br_Charge.DataController.Values[iRow, 20] := sPassView;
				end;
				// 2011.02.09 (8부터 +3)
				asg_Br_Charge.DataController.Values[iRow, 14] := formatdatetime('yyyy-mm-dd', now);
				asg_Br_Charge.DataController.Values[iRow, 16] := sSno;
				asg_Br_Charge.DataController.Values[iRow, 17] := sSno2;
				asg_Br_Charge.DataController.Values[iRow, 18] := sFirstCd;
				asg_Br_Charge.EndUpdate;
				GMessagebox(ed_br_Name.Text + '(' + ed_KeyNumber.Text + ') ' + cb_charge_name.text + '/' + cb_charge_name2.text + ' 요금제가 저장되었습니다.', cdmsi);
			end;
    end else
    if sJob = 'SELECTBGCHARGETYPE' then
    begin
      sChargeCd := ed_Bcharge_cd.Text;
      if sChargeCd = '' then Exit;

      sSubType := Copy(ed_Bcharge_cd.Text, 1, 2);
      if sSubType = 'CA' then sSubType := 'FC' else
      if sSubType = 'CD' then sSubType := 'DC' else
      if sSubType = 'CT' then sSubType := 'TC';

      sQuery := 'SELECT ' + sSubType + '_STCITY, ' + sSubType + '_STWARD, ' +
        sSubType + '_STDONG, ' + sSubType + '_EDCITY, ' + sSubType + '_EDWARD, ' +
        sSubType + '_EDDONG %s '
        + 'FROM %s WHERE ' + sSubType + '_CD = ''%s'' AND ' + sSubType +
        '_NO > 1 ORDER BY 1,2,3,4,5,6 ';
      if (sSubType = 'CC') or (sSubType = 'FC') then
      begin
        cxBPageControl3.ActivePageIndex := 0;
        sSelect := ', ' + sSubType + '_VALUE ';
        if CHARGE_GUBUN = 'P' then
        begin
          if sSubType = 'FC' then
            sTable := 'CDMS_FIRST_CHARGE'
          else
            sTable := 'CDMS_CHART_CHARGE';
          sQuery := Format(sQuery, [sSelect, sTable, sChargeCd]);
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.OPEN;
					
          cxGrid_BChart.BeginUpdate;
          cxGrid_BChart.DataController.SetRecordCount(0);
					while not dmCharge.FDQuery_SQLite.eof do
					begin
						iRow := cxGrid_BChart.DataController.AppendRecord;
						cxGrid_BChart.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
						for i := 0 to dmCharge.FDQuery_SQLite.FieldCount - 1 do
						begin
							cxGrid_BChart.DataController.Values[iRow, i + 1] := dmCharge.FDQuery_SQLite.Fields[i].AsString;
						end;
						cxGrid_BChart.DataController.Values[iRow, 7] :=
							FormatFloat('#,##0',
							StrToFloatDef(cxGrid_BChart.DataController.Values[iRow, 7],
							0.0));
						dmCharge.FDQuery_SQLite.Next;
					end;
					cxGrid_BChart.EndUpdate;
				end else
        if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
        begin
          if sSubType = 'FC' then
            sTable := 'CDMS_FIRST'
          else
            sTable := 'CDMS_CHART';
          sQuery := Format(sQuery, [sSelect, sTable, sChargeCd]);
          dmCharge.proc_mysql_init;
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.Open;
          cxGrid_BChart.BeginUpdate;
          cxGrid_BChart.DataController.SetRecordCount(0);
          if not dmCharge.FDQuery1.IsEmpty then
          begin
            while not dmCharge.FDQuery1.eof do
            begin
              iRow := cxGrid_BChart.DataController.AppendRecord;
              cxGrid_BChart.DataController.Values[iRow, 0] := IntToStr(iRow +
                1);
              for i := 0 to dmCharge.FDQuery1.FieldCount - 1 do
                cxGrid_BChart.DataController.Values[iRow, i + 1] :=
                  dmCharge.FDQuery1.Fields[i].AsString;
              cxGrid_BChart.DataController.Values[iRow, 7] :=
                FormatFloat('#,##0',
                StrToFloatDef(cxGrid_BChart.DataController.Values[iRow, 7],
                0.0));
              dmCharge.FDQuery1.Next;
            end;
          end;
          cxGrid_BChart.EndUpdate;
        end;
      end else
      if (sSubType = 'DC') then
      begin
        cxBPageControl3.ActivePageIndex := 1;
        sSelect := ', ' + sSubType + '_LOWVALUE, ' + sSubType + '_GERTERM, ' +
          sSubType + '_GERVALUE, ' + sSubType + '_OVERTERM, ' + sSubType +
          '_OVERVALUE ';
        if CHARGE_GUBUN = 'P' then
        begin
          sTable := 'CDMS_DIS_CHARGE';
          sQuery := Format(sQuery, [sSelect, sTable, sChargeCd]);
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.OPEN;
          cxGrid_BDis.BeginUpdate;
          cxGrid_BDis.DataController.SetRecordCount(0);
					while not dmCharge.FDQuery_SQLite.eof do
					begin
						iRow := cxGrid_BDis.DataController.AppendRecord;
						cxGrid_BDis.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
						for i := 0 to dmCharge.FDQuery_SQLite.FieldCount - 1 do
						begin
							cxGrid_BDis.DataController.Values[iRow, i + 1] :=	dmCharge.FDQuery_SQLite.Fields[i].AsString;
						end;
						cxGrid_BDis.DataController.Values[iRow, 7] := StrToMoney(cxGrid_BDis.DataController.Values[iRow, 7]);
						cxGrid_BDis.DataController.Values[iRow, 8] := StrToMoney(cxGrid_BDis.DataController.Values[iRow, 8]);
						cxGrid_BDis.DataController.Values[iRow, 9] := StrToMoney(cxGrid_BDis.DataController.Values[iRow, 9]);
						cxGrid_BDis.DataController.Values[iRow, 10] := StrToMoney(cxGrid_BDis.DataController.Values[iRow, 10]);
						cxGrid_BDis.DataController.Values[iRow, 11] := StrToMoney(cxGrid_BDis.DataController.Values[iRow, 11]);
						dmCharge.FDQuery_SQLite.Next;
					end;
					cxGrid_BDis.EndUpdate;
        end else
        if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
        begin
          sTable := 'CDMS_DISTANCE';
          sQuery := Format(sQuery, [sSelect, sTable, sChargeCd]);
          dmCharge.proc_mysql_init;
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.Open;
          cxGrid_BDis.BeginUpdate;
          cxGrid_BDis.DataController.SetRecordCount(0);
          if not dmCharge.FDQuery1.IsEmpty then
          begin
            while not dmCharge.FDQuery1.eof do
            begin
              iRow := cxGrid_BDis.DataController.AppendRecord;
              cxGrid_BDis.DataController.Values[iRow, 0] := IntToStr(iRow +
                1);
              for i := 0 to dmCharge.FDQuery1.FieldCount - 1 do
                cxGrid_BDis.DataController.Values[iRow, i + 1] :=
                  dmCharge.FDQuery1.Fields[i].AsString;
              cxGrid_BDis.DataController.Values[iRow, 7] := StrToMoney(cxGrid_BDis.DataController.Values[iRow, 7]);
              cxGrid_BDis.DataController.Values[iRow, 8] := StrToMoney(cxGrid_BDis.DataController.Values[iRow, 8]);
              cxGrid_BDis.DataController.Values[iRow, 9] := StrToMoney(cxGrid_BDis.DataController.Values[iRow, 9]);
              cxGrid_BDis.DataController.Values[iRow, 10] := StrToMoney(cxGrid_BDis.DataController.Values[iRow, 10]);
              cxGrid_BDis.DataController.Values[iRow, 11] := StrToMoney(cxGrid_BDis.DataController.Values[iRow, 11]);
              dmCharge.FDQuery1.Next;
            end;
          end;
          cxGrid_BDis.EndUpdate;
        end;
      end else
      if (sSubType = 'TC') then
      begin
        cxBPageControl3.ActivePageIndex := 2;
        sSelect := ', ' + sSubType + '_BV, ' + sSubType + '_SUB_CD, ' + sSubType
          + '_PASS_CD ';
        if CHARGE_GUBUN = 'P' then
        begin
          sTable := 'CDMS_TERM_CHARGE';
          sQuery := Format(sQuery, [sSelect, sTable, sChargeCd]);
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.OPEN;
          cxGrid_BTerm.BeginUpdate;
          cxGrid_BTerm.DataController.SetRecordCount(0);
					while not dmCharge.FDQuery_SQLite.eof do
					begin
						iRow := cxGrid_BTerm.DataController.AppendRecord;
						cxGrid_BTerm.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
						for i := 0 to dmCharge.FDQuery_SQLite.FieldCount - 1 do
							cxGrid_BTerm.DataController.Values[iRow, i + 1] := dmCharge.FDQuery_SQLite.Fields[i].AsString;
						cxGrid_BTerm.DataController.Values[iRow, 7] := FormatFloat('#,##0', StrToFloatDef(cxGrid_BTerm.DataController.Values[iRow, 7], 0.0));
						if cxGrid_BTerm.DataController.Values[iRow, 8] <> '' then
						begin
							sChargeName := vlBChargeGroup.Values[cxGrid_BTerm.DataController.Values[iRow, 8]];
							cxGrid_BTerm.DataController.Values[iRow, 8] := sChargeName;
						end;
						if cxGrid_BTerm.DataController.Values[iRow, 9] <> '' then
						begin
							sChargeName := vlBChargeGroup.Values[cxGrid_BTerm.DataController.Values[iRow, 9]];
							cxGrid_BTerm.DataController.Values[iRow, 9] := sChargeName;
						end;
						dmCharge.FDQuery_SQLite.Next;
					end;
					cxGrid_BTerm.EndUpdate;
        end else
        if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
        begin
          sTable := 'CDMS_TERM';
          sQuery := Format(sQuery, [sSelect, sTable, sChargeCd]);
          dmCharge.proc_mysql_init;
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.Open;
          cxGrid_BTerm.BeginUpdate;
          cxGrid_BTerm.DataController.SetRecordCount(0);
          if not dmCharge.FDQuery1.IsEmpty then
          begin
            while not dmCharge.FDQuery1.eof do
            begin
              iRow := cxGrid_BTerm.DataController.AppendRecord;
              cxGrid_BTerm.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
              for i := 0 to dmCharge.FDQuery1.FieldCount - 1 do
                cxGrid_BTerm.DataController.Values[iRow, i + 1] := dmCharge.FDQuery1.Fields[i].AsString;
              cxGrid_BTerm.DataController.Values[iRow, 7] := FormatFloat('#,##0', StrToFloatDef(cxGrid_BTerm.DataController.Values[iRow, 7], 0.0));
              if cxGrid_BTerm.DataController.Values[iRow, 8] <> '' then
              begin
                sChargeName := vlBChargeGroup.Values[cxGrid_BTerm.DataController.Values[iRow, 8]];
                cxGrid_BTerm.DataController.Values[iRow, 8] := sChargeName;
              end;
              if cxGrid_BTerm.DataController.Values[iRow, 9] <> '' then
              begin
                sChargeName := vlBChargeGroup.Values[cxGrid_BTerm.DataController.Values[iRow, 9]];
                cxGrid_BTerm.DataController.Values[iRow, 9] := sChargeName;
              end;
              dmCharge.FDQuery1.Next;
            end;
          end;
          cxGrid_BTerm.EndUpdate;
        end;
      end;
    end else
    if sJob = 'SAVEBGCHARGETYPE' then
    begin
      sPridx:=IndexOfPrtit(stringreplace(cbBb1.text,'사용안함','',[rfreplaceall]));
      if sPridx=-1 then sPrIdx:=0;
      if sPrIdx=0 then
      begin
        sStTime:='';
        sEdTime:='';
      end else
      begin
        sStTime:=edt_BStHour.Text+':'+edt_BStMin.Text;
        sEdTime:=edt_BEdHour.Text+':'+edt_BEdMin.Text;
      end;

      sKeyNumber := Trim(StringReplace(ed_BKeyNumber.Text, '-', '', [rfReplaceAll]));
      sCbCode := Cb_Code.Text;
      iRow := lbBchargenm.Items.IndexOf(cb_Bcharge_name.Text);
      sSno := lbBchargenmcd.Items.Strings[iRow];
      if BComboBox1.ItemIndex > 0 then
      begin
        iSubRow := lbBchargenm.Items.IndexOf(BComboBox1.Text);
        sFirstCd := lbBchargenmcd.Items.Strings[iSubRow];
      end else
      begin
        sFirstCd := '';
      end;

      if cxGroupBox3.Tag = 0 then
      begin
        sValue := intToStr(StrToIntDef(StringReplace(ed_Bpassvalue.Text, ',', '', [rfReplaceAll]), 0));
        sPassCd := '';
        sPassView := '';
      end else
      begin
        sValue := '0';
        if BComboBox2.ItemIndex > 0 then
        begin
          isubRow := lbBchargenm.Items.IndexOf(BComboBox2.Text);
          sPassCd := lbBchargenmcd.Items.Strings[iSubRow];
        end else
          sPassCd := '';

        sPassView := IntToStr(BComboBox3.ItemIndex);
      end;
      if CHARGE_GUBUN = 'P' then
			begin
				sQuery := 'DELETE FROM CDMS_BGROUP_CHARGE_TYPE WHERE CT_KEY_NUM = ''' + sKeyNumber + ''' AND CT_CB_CODE = ''' + sCbCode + ''' ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.ExecSQL;

				sQuery := 'INSERT INTO CDMS_BGROUP_CHARGE_TYPE(CT_NO,CT_BR_NO,CT_KEY_NUM,CT_CB_CODE,CT_GUBUN,CT_CD,IN_DATE,CT_PASSVALUE,CT_FIRST_CD,CT_PASS_GUBUN,CT_PASS_CD,CT_PASS_VIEW,PREM_NSEQ,PREM_STTIME,PREM_EDTIME) VALUES (1,''' +
          Cbr_no.Text + ''',''' + sKeyNumber + ''',''' + sCbCode  + ''',''' + copy(sSno, 1, 2) + ''','''
					+ sSno + ''' ' + ', ''' + formatdatetime('yyyy-mm-dd', now) + ''', ' + sValue +
          ', ''' + sFirstCd + ''',''' + IntToStr(cxGroupBox3.Tag) + ''',''' +
					sPassCd + ''',''' + sPassView + ''',''' + inttostr(sPrIdx)+ ''','''+sStTime+''','''+sEdTime+''')';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.ExecSQL;
      end else
      if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
      begin
        dmCharge.proc_mysql_init('update');
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := 'DELETE FROM CDMS_BGROUP_TYPE WHERE CT_KEY_NUM = ''' + sKeyNumber + ''' AND CT_CB_CODE = ''' + sCbCode + ''' ';
				dmCharge.FDQuery1.ExecSQL;

        dmCharge.proc_mysql_init('update');
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := 'INSERT INTO CDMS_BGROUP_TYPE(CT_NO,CT_BR_NO,CT_KEY_NUM,CT_CB_CODE,CT_GUBUN,CT_CD,IN_DATE,CT_PASSVALUE,CT_FIRST_CD,CT_PASS_GUBUN,CT_PASS_CD,CT_PASS_VIEW,PREM_NSEQ,PREM_STTIME,PREM_EDTIME) VALUES (1,''' +
          Cbr_no.Text + ''',''' + sKeyNumber  + ''',''' + sCbCode
          + ''',''' + copy(sSno, 1, 2) + ''',''' + sSno + ''' ' + ', ''' + formatdatetime('yyyy-mm-dd', now)
          + ''', ' + sValue + ', ''' + sFirstCd + ''',''' + IntToStr(cxGroupBox3.Tag) + ''',''' +
          sPassCd + ''',''' + sPassView + ''',''' + inttostr(sPrIdx)+ ''','''+sStTime+''','''+sEdTime+''')';

        dmCharge.FDQuery1.ExecSQL;
      end;
      iRow := asg_BBr_Charge.DataController.FindRecordIndexByText(0, 18, sCbCode, False, False, True);
      asg_BBr_Charge.BeginUpdate;
      asg_BBr_Charge.DataController.Values[iRow, 4] := cb_BCharge_Gubun.Text;
      asg_BBr_Charge.DataController.Values[iRow, 5] := cb_Bcharge_name.Text;
      asg_BBr_Charge.DataController.Values[iRow, 6] := BComboBox1.Text;

      // 2011.02.14
      asg_BBr_Charge.DataController.Values[iRow, 9] := IndexOfPrSeq(sPridx);
      asg_BBr_Charge.DataController.Values[iRow, 10] := sStTime;
      asg_BBr_Charge.DataController.Values[iRow, 11] := sEdTime;

      if cxGroupBox3.Tag = 0 then
      begin
        asg_BBr_Charge.DataController.Values[iRow, 7] := ed_Bpassvalue.Text;
        asg_BBr_Charge.DataController.Values[iRow, 8] := '';
        // 2011.02.09 (8부터 +3)
        asg_BBr_Charge.DataController.Values[iRow, 16] := '';
        asg_BBr_Charge.DataController.Values[iRow, 17] := '';
      end else
      begin
        asg_BBr_Charge.DataController.Values[iRow, 7] := BComboBox2.Text;
        asg_BBr_Charge.DataController.Values[iRow, 8] := BComboBox3.Text;
        asg_BBr_Charge.DataController.Values[iRow, 16] := sPassCd;
        asg_BBr_Charge.DataController.Values[iRow, 17] := sPassView;
      end;
      // 2011.02.09 (8부터 +3)
      asg_BBr_Charge.DataController.Values[iRow, 12] := formatdatetime('yyyy-mm-dd', now);
      asg_BBr_Charge.DataController.Values[iRow, 14] := sSno;
      asg_BBr_Charge.DataController.Values[iRow, 15] := sFirstCd;
      asg_BBr_Charge.EndUpdate;
      GMessagebox(ed_Bbr_Name.Text + '(' + ed_BKeyNumber.Text + ') [' + ed_Bbg_Name.Text + ']' + cb_Bcharge_name.text + ' 요금제가 저장되었습니다.', cdmsi);
    end	else
    if sJob = 'SELECTBGCHARGE' then
    begin
      cb_Bcharge_name.Properties.Items.Clear;
      lbBChargeCd.Items.Clear;
      if iType = 0 then
      begin
        lbBchargenm.Items.Clear;
        lbBchargenmcd.Items.Clear;
        vlBChargeGroup.Strings.Clear;
				BComboBox1.Properties.Items.Clear;
        BComboBox2.Properties.Items.Clear;
        BComboBox1.Properties.Items.Add('사용안함');
        BComboBox2.Properties.Items.Add('사용안함');
      end;

      if CHARGE_GUBUN = 'P' then
      begin
        swhere := '';
        if iType = 1 then
        begin
          if cb_BCharge_Gubun.ItemIndex = 0 then
            sWhere := 'WHERE CG_GUBUN IN (''CC'', ''CA'') '
          else
            if cb_BCharge_Gubun.ItemIndex = 1 then
            sWhere := 'WHERE CG_GUBUN = ''CD'' '
          else
            if cb_BCharge_Gubun.ItemIndex = 2 then
            sWhere := 'WHERE CG_GUBUN = ''CT'' ';
        end;
        sQuery := 'SELECT CG_CD, CG_NM  FROM CHARGE_GROUP %s ORDER BY CG_CD ';
        sQuery := Format(sQuery, [sWhere]);
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.OPEN;
				while not dmCharge.FDQuery_SQLite.Eof do
        begin
					sChargeCd   := dmCharge.FDQuery_SQLite.Fields[0].AsString;
					sChargeName := dmCharge.FDQuery_SQLite.Fields[1].AsString;
          sSubType := Copy(sChargeCd, 1, 2);
          if iType = 0 then
          begin
            lbBchargenm.Items.Add(sChargeName);
            lbBchargenmcd.Items.Add(sChargeCd);
						vlBChargeGroup.Strings.Add(sChargeCd + '=' + sChargeName);
            if (sSubType = 'CS') then
            begin
              BComboBox2.Properties.Items.Add(sChargeName);
            end else
            if (sSubType = 'CF') then
            begin
              BComboBox1.Properties.Items.Add(sChargeName);
            end;
          end;
          if cb_BCharge_Gubun.ItemIndex = 0 then
          begin
            if (sSubType = 'CC') or (sSubType = 'CA') then
            begin
              cb_Bcharge_name.Properties.Items.Add(sChargeName);
              lbBChargeCd.Items.Add(sChargeCd);
            end;
          end else
          if cb_BCharge_Gubun.ItemIndex = 1 then
          begin
            if (sSubType = 'CD') then
            begin
              cb_Bcharge_name.Properties.Items.Add(sChargeName);
              lbBChargeCd.Items.Add(sChargeCd);
            end;
          end else
					if cb_BCharge_Gubun.ItemIndex = 2 then
          begin
            if (sSubType = 'CT') then
            begin
              cb_Bcharge_name.Properties.Items.Add(sChargeName);
              lbBChargeCd.Items.Add(sChargeCd);
            end;
          end;
					dmCharge.FDQuery_SQLite.Next;
        end;

        if iType = 0 then
        begin
          // test,test2필드때메 인덱스 쭉쭉 밀림(그필드는 적용하면 안되는거임)
          sQuery := 'SELECT * FROM CDMS_BGROUP_CHARGE_TYPE';
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.OPEN;
					asg_BBr_Charge.BeginUpdate;
					while not dmCharge.FDQuery_SQLite.eof do
          begin
						sKeyNumber := dmCharge.FDQuery_SQLite.Fields[2].AsString;
						sCbCode    := dmCharge.FDQuery_SQLite.Fields[3].AsString;
						sChargeCd  := dmCharge.FDQuery_SQLite.Fields[5].AsString;
						sDate      := dmCharge.FDQuery_SQLite.Fields[6].AsString;
						sPassValue := dmCharge.FDQuery_SQLite.Fields[7].AsString;
						sFirstCd   := dmCharge.FDQuery_SQLite.Fields[8].AsString;
						sPassCd    := dmCharge.FDQuery_SQLite.Fields[10].AsString;
						sSubType   := Copy(sChargeCd, 1, 2);
						sPridx := strtointdef(dmCharge.FDQuery_SQLite.Fieldbyname('PREM_NSEQ').AsString,0);

						sPrstr := IndexOfPrSeq(sPridx);
						sSttime := dmCharge.FDQuery_SQLite.Fieldbyname('PREM_STTIME').AsString;
						sEdtime := dmCharge.FDQuery_SQLite.Fieldbyname('PREM_EDTIME').AsString;

            iRow := asg_BBr_Charge.DataController.FindRecordIndexByText(0, 18, sCbCode, True, False, True);
            if iRow >= 0 then
            begin
							sChargeName := vlBChargeGroup.Values[sChargeCd];
              if Trim(sChargeName) <> '' then
              begin
                asg_BBr_Charge.DataController.Values[iRow, 9] := sPrstr;
                asg_BBr_Charge.DataController.Values[iRow, 10] := sSttime;
                asg_BBr_Charge.DataController.Values[iRow, 11] := sEdtime;
                if sPrstr='' then
                begin
                  asg_BBr_Charge.DataController.Values[iRow, 10] := '';
                  asg_BBr_Charge.DataController.Values[iRow, 11] := '';
                end;
                OutputDebugString(PChar('요금제'+sPrstr));

                if (sSubType = 'CC') or (sSubType = 'CA') then
                  asg_BBr_Charge.DataController.Values[iRow, 4] := '요금표'
                else if sSubType = 'CD' then
                  asg_BBr_Charge.DataController.Values[iRow, 4] := '거리요금'
                else if sSubType = 'CT' then
                  asg_BBr_Charge.DataController.Values[iRow, 4] := '구간요금';
                asg_BBr_Charge.DataController.Values[iRow, 5] := sChargeName;

                // 2011.02.09
                asg_BBr_Charge.DataController.Values[iRow, 15] := sFirstCd;
                if sFirstCd <> '' then
                begin
                  sFirstNm := vlBChargeGroup.Values[sFirstCd];
                  asg_BBr_Charge.DataController.Values[iRow, 6] := sFirstNm;
                end else
                  asg_BBr_Charge.DataController.Values[iRow, 6] := '사용안함';

								if StrToIntDef(dmCharge.FDQuery_SQLite.Fields[9].AsString, 0) = 0 then
                begin
									asg_BBr_Charge.DataController.Values[iRow, 7] := FormatFloat('#,##0', StrToFloatDef(dmCharge.FDQuery_SQLite.Fields[7].AsString, 0.0));
                  asg_BBr_Charge.DataController.Values[iRow, 8] := '';
                  // 2011.02.09(변경+3)
									asg_BBr_Charge.DataController.Values[iRow, 16] := '';
                  asg_BBr_Charge.DataController.Values[iRow, 17] := '';
                end else
                begin
                  if sPassCd <> '' then
                  begin
                    sPassNm := vlBChargeGroup.Values[sPassCd];
                    asg_BBr_Charge.DataController.Values[iRow, 7] := sPassNm;
                  end
                  else
                    asg_BBr_Charge.DataController.Values[iRow, 7] := '사용안함';
                  // 2011.02.09 (8부터 +3)
									asg_BBr_Charge.DataController.Values[iRow,  8] := BComboBox3.Properties.Items.Strings[StrToIntDef(dmCharge.FDQuery_SQLite.Fields[11].AsString, 0)];
									asg_BBr_Charge.DataController.Values[iRow, 17] := IntToStr(StrToIntDef(dmCharge.FDQuery_SQLite.Fields[11].AsString, 0));
									asg_BBr_Charge.DataController.Values[iRow, 16] := dmCharge.FDQuery_SQLite.Fields[10].AsString;
                end;
                // 2011.02.09 (8부터 +3)
								asg_BBr_Charge.DataController.Values[iRow, 12] := dmCharge.FDQuery_SQLite.Fields[6].AsString;
								asg_BBr_Charge.DataController.Values[iRow, 14] := dmCharge.FDQuery_SQLite.Fields[5].AsString;
							end;
            end;
						dmCharge.FDQuery_SQLite.next;
          end;
          asg_BBr_Charge.EndUpdate;
        end;
      end else
      if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
      begin
        swhere := '';
        if iType = 1 then
        begin
          if cb_BCharge_Gubun.ItemIndex = 0 then
            sWhere := 'WHERE CG_GUBUN IN (''CC'', ''CA'') '
          else if cb_BCharge_Gubun.ItemIndex = 1 then
            sWhere := 'WHERE CG_GUBUN = ''CD'' '
          else if cb_BCharge_Gubun.ItemIndex = 2 then
            sWhere := 'WHERE CG_GUBUN = ''CT'' ';
        end;
        sQuery := 'SELECT CG_CD, CG_NM  FROM CDMS_GROUP %s ORDER BY CG_CD ';
        sQuery := Format(sQuery, [sWhere]);
        dmCharge.proc_mysql_init;
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.Open;
        while not dmCharge.FDQuery1.eof do
        begin
          sChargeCd := dmCharge.FDQuery1.Fields[0].AsString;
          sChargeName := dmCharge.FDQuery1.Fields[1].AsString;
          sSubType := Copy(sChargeCd, 1, 2);
          lbBchargenm.Items.Add(sChargeName);
          lbBchargenmcd.Items.Add(sChargeCd);
          if iType = 0 then
          begin
            sChargeCd := dmCharge.FDQuery1.Fields[0].AsString;
            sChargeName := dmCharge.FDQuery1.Fields[1].AsString;
            vlBChargeGroup.Strings.Add(sChargeCd + '=' + sChargeName);
            if (sSubType = 'CS') then
            begin
              BComboBox2.Properties.Items.Add(sChargeName);
            end else
            if (sSubType = 'CF') then
            begin
              BComboBox1.Properties.Items.Add(sChargeName);
            end;
          end;
          if cb_BCharge_Gubun.ItemIndex = 0 then
          begin
            if (sSubType = 'CC') or (sSubType = 'CA') then
            begin
              cb_Bcharge_name.Properties.Items.Add(sChargeName);
              lbBChargeCd.Items.Add(sChargeCd);
            end;
          end else
          if cb_BCharge_Gubun.ItemIndex = 1 then
          begin
            if (sSubType = 'CD') then
            begin
              cb_Bcharge_name.Properties.Items.Add(sChargeName);
              lbBChargeCd.Items.Add(sChargeCd);
            end;
          end else
          if cb_BCharge_Gubun.ItemIndex = 2 then
          begin
            if (sSubType = 'CT') then
            begin
              cb_Bcharge_name.Properties.Items.Add(sChargeName);
              lbBChargeCd.Items.Add(sChargeCd);
            end;
          end;
          dmCharge.FDQuery1.Next;
        end;

        if iType = 0 then
        begin
          sQuery := 'SELECT * FROM CDMS_BGROUP_TYPE';
          dmCharge.proc_mysql_init;
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.Open;

          asg_BBr_Charge.BeginUpdate;
          while not dmCharge.FDQuery1.eof do
          begin
            sKeyNumber := dmCharge.FDQuery1.Fields[2].AsString;
            sCbCode    := dmCharge.FDQuery1.Fields[3].AsString;
            sChargeCd := dmCharge.FDQuery1.Fields[5].AsString;
            sDate := dmCharge.FDQuery1.Fields[6].AsString;
            sPassValue := dmCharge.FDQuery1.Fields[7].AsString;
            sFirstCd := dmCharge.FDQuery1.Fields[8].AsString;
            sPassCd := dmCharge.FDQuery1.Fields[10].AsString;
            sSubType := Copy(sChargeCd, 1, 2);
            sPridx := strtointdef(dmCharge.FDQuery1.Fields[12].Asstring,0);
            sPrstr := IndexOfPrSeq(sPridx);
            sSttime := dmCharge.FDQuery1.Fields[13].Asstring;
            sEdtime := dmCharge.FDQuery1.Fields[14].Asstring;

            iRow := asg_BBr_Charge.DataController.FindRecordIndexByText(0, 18, sCbCode, True, False, True);
            if iRow >= 0 then
            begin
              sChargeName := vlBChargeGroup.Values[sChargeCd];
              if Trim(sChargeName) <> '' then
              begin
                //2011.02.14
                asg_BBr_Charge.DataController.Values[iRow, 9] := sPrstr;
                asg_BBr_Charge.DataController.Values[iRow, 10] := sSttime;
                asg_BBr_Charge.DataController.Values[iRow, 11] := sEdtime;
                if sPrstr='' then
                begin
                  asg_BBr_Charge.DataController.Values[iRow, 10] := '';
                  asg_BBr_Charge.DataController.Values[iRow, 11] := '';
                end;
                if (sSubType = 'CC') or (sSubType = 'CA') then
                  asg_BBr_Charge.DataController.Values[iRow, 4] := '요금표'
                else if sSubType = 'CD' then
                  asg_BBr_Charge.DataController.Values[iRow, 4] := '거리요금'
                else if sSubType = 'CT' then
                  asg_BBr_Charge.DataController.Values[iRow, 4] := '구간요금';
                asg_BBr_Charge.DataController.Values[iRow, 5] := sChargeName;
                // 2011.02.09 (8부터 +3)
                asg_BBr_Charge.DataController.Values[iRow, 15] := sFirstCd;
                if sFirstCd <> '' then
                begin
                  sFirstNm := vlBChargeGroup.Values[sFirstCd];
                  asg_BBr_Charge.DataController.Values[iRow, 6] := sFirstNm;
                end else
                  asg_BBr_Charge.DataController.Values[iRow, 6] := '사용안함';

                if StrToIntDef(dmCharge.FDQuery1.Fields[9].AsString, 0) = 0 then
                begin
                  asg_BBr_Charge.DataController.Values[iRow, 7] := FormatFloat('#,##0', StrToFloatDef(dmCharge.FDQuery1.Fields[7].AsString, 0.0));
                  asg_BBr_Charge.DataController.Values[iRow, 8] := '';
                  // 2011.02.09 (8부터 +3)
                  asg_BBr_Charge.DataController.Values[iRow, 16] := '';
                  asg_BBr_Charge.DataController.Values[iRow, 17] := '';
                end else
                begin
                  if sPassCd <> '' then
                  begin
                    sPassNm := vlBChargeGroup.Values[sPassCd];
                    asg_BBr_Charge.DataController.Values[iRow, 7] := sPassNm;
                  end else
                    asg_BBr_Charge.DataController.Values[iRow, 7] := '사용안함';
                  // 2011.02.09 (8부터 +3)
                  asg_BBr_Charge.DataController.Values[iRow, 17] := IntToStr(StrToIntDef(dmCharge.FDQuery1.Fields[11].AsString, 0));
                  asg_BBr_Charge.DataController.Values[iRow, 8] := BComboBox3.Properties.Items.Strings[StrToIntDef(dmCharge.FDQuery1.Fields[11].AsString, 0)];
                  asg_BBr_Charge.DataController.Values[iRow, 16] := dmCharge.FDQuery1.Fields[10].AsString;
                end;
                asg_BBr_Charge.DataController.Values[iRow, 12] := dmCharge.FDQuery1.Fields[6].AsString;
                asg_BBr_Charge.DataController.Values[iRow, 14] := dmCharge.FDQuery1.Fields[5].AsString;
              end;
            end;
            dmCharge.FDQuery1.next;
          end;
          asg_BBr_Charge.EndUpdate;
        end;
      end;
      cb_Bcharge_name.ItemIndex := 0;
      BComboBox1.ItemIndex := 0;
      BComboBox2.ItemIndex := 0;
      BComboBox3.ItemIndex := -1;

      //2011.02.14 심야요금 시간설정
      cbBb1.Properties.OnChange(Self);
    end else
    if sJob = 'SELECTPR' then
    begin
      if Length(Prem_Rec) <= 0 then Exit;

			if cbb2.ItemIndex < 0 then Pos_Prem := -1
			else Pos_Prem := Prem_Rec[cbb2.ItemIndex].nseq;

      cxviewPrem.BeginUpdate;
      cxviewPrem.DataController.SetRecordCount(0);
      cxviewPrem.EndUpdate;
      try
        if Pos_Prem=-1 then
        begin
          Exit;
        end;
        for i := 0 to cxviewPrem.ColumnCount - 1 do
          cxviewPrem.Columns[i].DataBinding.ValueType := 'String';

        if CHARGE_GUBUN = 'P' then
        begin
          sQuery := 'SELECT ST_AMT,ED_AMT,RESULT_AMT FROM CDMS_PREM_DETAIL WHERE nseq = ' + inttostr(POS_PREM) + ' ORDER BY ST_AMT,ED_AMT,RESULT_AMT';
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.OPEN;
					
					if dmCharge.FDQuery_SQLite.RecordCount > 0 then
					begin
						dmCharge.FDQuery_SQLite.FindFirst;
						for i:=0 to dmCharge.FDQuery_SQLite.RecordCount-1 do
            begin
              cxviewPrem.BeginUpdate;
              iRow := cxviewPrem.DataController.AppendRecord;

							cxviewPrem.DataController.Values[iRow,0]:=formatfloat('#,##0',strtointdef(dmCharge.FDQuery_SQLite.Fields[0].AsString,0));
							cxviewPrem.DataController.Values[iRow,1]:=formatfloat('#,##0',strtointdef(dmCharge.FDQuery_SQLite.Fields[1].AsString,0));
							cxviewPrem.DataController.Values[iRow,2]:=formatfloat('#,##0',strtointdef(dmCharge.FDQuery_SQLite.Fields[2].AsString,0));

              cxviewPrem.EndUpdate;
							dmCharge.FDQuery_SQLite.FindNext;
							outputdebugstring(pchar(dmCharge.FDQuery_SQLite.Fields[0].AsString + ','
																		+ dmCharge.FDQuery_SQLite.Fields[1].AsString + ','
																		+ dmCharge.FDQuery_SQLite.Fields[2].AsString));
            end;
          end;
        end else
        if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
        begin
          sQuery := 'select ST_AMT,ED_AMT,RESULT_AMT from CDMS_SVPREM_DETAIL WHERE nseq = ' + inttostr(POS_PREM) + ' ORDER BY ST_AMT,ED_AMT,RESULT_AMT';
          dmCharge.proc_mysql_init;
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.OPEN;
          dmCharge.FDQuery1.FindFirst;
          if dmCharge.FDQuery1.RecordCount>0 then
          begin
            for i:=0 to dmCharge.FDQuery1.RecordCount-1 do
            begin
              cxviewPrem.BeginUpdate;
              iRow := cxviewPrem.DataController.AppendRecord;
              cxviewPrem.DataController.Values[iRow,0]:=formatfloat('#,##0',strtointdef(dmCharge.FDQuery1.Fields[0].asstring,0));
              cxviewPrem.DataController.Values[iRow,1]:=formatfloat('#,##0',strtointdef(dmCharge.FDQuery1.Fields[1].asstring,0));
              cxviewPrem.DataController.Values[iRow,2]:=formatfloat('#,##0',strtointdef(dmCharge.FDQuery1.Fields[2].asstring,0));
              dmCharge.FDQuery1.FindNext;
              cxviewPrem.EndUpdate;
            end;
          end;
        end;
      finally
        edtstrange.Text:='0';
        edtedrange.Text:='0';
        edtrerange.Text:='0';
        Ridx_PGrid := -1;
      end;
    end else
    // 2011.02.14
    if sJob = 'SELECTPR' then
    begin
      Pos_Prem := Prem_Rec[cbb2.ItemIndex].nseq;
      cxviewPrem.BeginUpdate;
      cxviewPrem.DataController.SetRecordCount(0);
      cxviewPrem.EndUpdate;
      try
        if Pos_Prem=-1 then
        begin
          Exit;
        end;
        for i := 0 to cxviewPrem.ColumnCount - 1 do
          cxviewPrem.Columns[i].DataBinding.ValueType := 'String';

        if CHARGE_GUBUN = 'P' then
        begin
          sQuery := 'SELECT ST_AMT,ED_AMT,RESULT_AMT FROM CDMS_PREM_DETAIL WHERE nseq = ' + inttostr(POS_PREM) + ' ORDER BY ST_AMT,ED_AMT,RESULT_AMT';
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.OPEN;
					if dmCharge.FDQuery_SQLite.RecordCount > 0 then
          begin
						dmCharge.FDQuery_SQLite.FindFirst;
						for i:=0 to dmCharge.FDQuery_SQLite.RecordCount-1 do
            begin
              cxviewPrem.BeginUpdate;
							iRow := cxviewPrem.DataController.AppendRecord;

							cxviewPrem.DataController.Values[iRow,0]:=formatfloat('#,##0',strtointdef(dmCharge.FDQuery_SQLite.Fields[0].AsString, 0));
							cxviewPrem.DataController.Values[iRow,1]:=formatfloat('#,##0',strtointdef(dmCharge.FDQuery_SQLite.Fields[1].AsString, 0));
							cxviewPrem.DataController.Values[iRow,2]:=formatfloat('#,##0',strtointdef(dmCharge.FDQuery_SQLite.Fields[2].AsString, 0));

              cxviewPrem.EndUpdate;
							dmCharge.FDQuery_SQLite.Findnext;
						end;
          end;
        end else
        if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
        begin
          sQuery := 'select ST_AMT,ED_AMT,RESULT_AMT from CDMS_SVPREM_DETAIL WHERE nseq = ' + inttostr(POS_PREM) + ' ORDER BY ST_AMT,ED_AMT,RESULT_AMT';
          dmCharge.proc_mysql_init;
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.OPEN;
          dmCharge.FDQuery1.FindFirst;
          if dmCharge.FDQuery1.RecordCount>0 then
          begin
            for i:=0 to dmCharge.FDQuery1.RecordCount-1 do
            begin
              cxviewPrem.BeginUpdate;
              iRow := cxviewPrem.DataController.AppendRecord;
              cxviewPrem.DataController.Values[iRow,0]:=formatfloat('#,##0',strtointdef(dmCharge.FDQuery1.Fields[0].asstring,0));
              cxviewPrem.DataController.Values[iRow,1]:=formatfloat('#,##0',strtointdef(dmCharge.FDQuery1.Fields[1].asstring,0));
              cxviewPrem.DataController.Values[iRow,2]:=formatfloat('#,##0',strtointdef(dmCharge.FDQuery1.Fields[2].asstring,0));
              dmCharge.FDQuery1.FindNext;
              cxviewPrem.EndUpdate;
            end;
          end;
        end;
      finally
        edtstrange.Text:='0';
        edtedrange.Text:='0';
        edtrerange.Text:='0';
        Ridx_PGrid := -1;
      end;
    end else
    if sJob = 'SAVPREMMAST' then
    begin
      Prem_max:=Get_PremMax+1;
      if CHARGE_GUBUN = 'P' then
      begin
        sQuery := 'SELECT * FROM CDMS_PREM_MAST WHERE nseq <> ' + inttostr(POS_PREM) + ' and CP_TIT = ''' + trim(edtinpcbb2.text) + '''' ;
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.OPEN;
				if dmCharge.FDQuery_SQLite.RecordCount > 0 then
        begin
          gmessagebox('중복된 할증요금제명이 존재합니다.',cdmsE);
        end else
        begin
          // 수정시(POS_PREM<>-1) update, 기타 insert
          if (POS_PREM<>-1) then
          begin
            sQuery := 'UPDATE CDMS_PREM_MAST SET CP_TIT = '''+ trim(edtinpcbb2.Text) + ''' where nseq = ' + inttostr(POS_PREM);
						dmCharge.proc_SQLite_init;
						dmCharge.FDQuery_SQLite.Close;
						dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
						dmCharge.FDQuery_SQLite.ExecSQL;
					end else
          begin
            sQuery := 'INSERT INTO CDMS_PREM_MAST(nseq,CP_TIT,use_yn) values('+inttostr(Prem_max)+','''+trim(edtinpcbb2.Text)+''',''Y'')';
						dmCharge.proc_SQLite_init;
						dmCharge.FDQuery_SQLite.Close;
						dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
						dmCharge.FDQuery_SQLite.ExecSQL;
          end;
        end;
      end else
      if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
      begin
        sQuery := 'select * from CDMS_SVPREM_MAST WHERE nseq <> ' + inttostr(POS_PREM) + ' and CP_TIT = ''' + trim(edtinpcbb2.text) + '''' ;
        dmCharge.proc_mysql_init;
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.OPEN;
        if dmcharge.FDQuery1.RecordCount>0 then
        begin
          gmessagebox('중복된 할증요금제명이 존재합니다.',cdmsE);
        end else
        begin
          // 수정시(POS_PREM<>-1) update, 기타 insert
          if (POS_PREM<>-1) then
          begin
            sQuery := 'UPDATE CDMS_SVPREM_MAST SET CP_TIT = '''+ trim(edtinpcbb2.Text) + ''' where nseq = ' + inttostr(POS_PREM);
            dmCharge.proc_mysql_init('update');
            dmCharge.FDQuery1.Close;
            dmCharge.FDQuery1.SQL.Text := sQuery;
            dmCharge.FDQuery1.ExecSQL;
          end else
          begin
            sQuery := 'INSERT INTO CDMS_SVPREM_MAST(nseq,CP_TIT,use_yn) values('+inttostr(Prem_max)+','''+trim(edtinpcbb2.Text)+''',''Y'')';
            dmCharge.proc_mysql_init('update');
            dmCharge.FDQuery1.Close;
            dmCharge.FDQuery1.SQL.Text := sQuery;
            dmCharge.FDQuery1.ExecSQL;
          end;
        end;
      end;
      Set_PremRec;
      SetComboList(0);

      if (tm_Premtit<>'사용안함') and (tm_Premtit<>'') then
      begin
        cbb2.ItemIndex:=cbb2.Properties.Items.IndexOf(tm_Premtit);
      end;

      proc_query('SELECTPR');
    end else
    // 2011.02.14 심야할증표 요금 디테일 저장시 현재선택인덱스를 확인
    if sJob = 'DELPREMDET' then
    begin
      Pos_Prem := Prem_Rec[cbb2.ItemIndex].nseq;
      if Pos_Prem<1 then
      begin
        GmessageBox('설정가능한 심야요금제가 아니므로 심야요금제명을 확인하십시오.',cdmsE);
        Exit;
      end else if Ridx_PGrid = -1 then
      begin
        GmessageBox('할증요금 범위를 선택후 삭제가능합니다.',cdmsE);
        Exit;
      end;
      try
        if CHARGE_GUBUN = 'P' then
        begin
          sQuery := 'DELETE FROM CDMS_PREM_DETAIL where nseq = ' + inttostr(POS_PREM) + ' and ST_AMT = ' + stringreplace(string(cxViewPrem.DataController.Values[Ridx_PGrid,0]),',','',[rfreplaceall]) + ' AND ED_AMT = ' + stringreplace(string(cxViewPrem.DataController.Values[Ridx_PGrid,1]),',','',[rfreplaceall]) + ' and RESULT_AMT = ' + stringreplace(string(cxViewPrem.DataController.Values[Ridx_PGrid,2]),',','',[rfreplaceall]);
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.ExecSQL;

        end else
        if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
        begin
          sQuery := 'DELETE FROM CDMS_SVPREM_DETAIL where nseq = ' + inttostr(POS_PREM) + ' and ST_AMT = ' + stringreplace(string(cxViewPrem.DataController.Values[Ridx_PGrid,0]),',','',[rfreplaceall]) + ' AND ED_AMT = ' + stringreplace(string(cxViewPrem.DataController.Values[Ridx_PGrid,1]),',','',[rfreplaceall]) + ' and RESULT_AMT = ' + stringreplace(string(cxViewPrem.DataController.Values[Ridx_PGrid,2]),',','',[rfreplaceall]);
          dmCharge.proc_mysql_init('update');
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
					dmCharge.FDQuery1.ExecSQL;
        end;
      finally
        proc_query('SELECTPR');
      end;
    end else
    // 2011.02.14 심야할증표 요금 디테일 추가
    if sJob = 'INSPREMDET' then
    begin
      Pos_Prem := Prem_Rec[cbb2.ItemIndex].nseq;
      if Pos_Prem<1 then
      begin
        GmessageBox('설정가능한 심야요금제가 아니므로 심야요금제명을 확인하십시오.',cdmsE);
        Exit;
      end else
      if (edtStRange.text='0') and (edtEdRange.text='0') then
      begin
        GmessageBox('0원부터 0원까지는 설정등록이 불가합니다.',cdmsE);
        Exit;
      end else
      if strtointdef(stringreplace(edtStRange.Text,',','',[rfreplaceall]),0)>strtointdef(stringreplace(edtEdRange.Text,',','',[rfreplaceall]),0) then
      begin
        GmessageBox('종료요금범위가 시작요금범위보다 크거나 같아야 합니다.',cdmsE);
        Exit;
      end else
      begin
        eq_yn:=false;
        if cxViewPrem.DataController.RecordCount>0 then
        begin
          for i:=0 to cxViewPrem.DataController.RecordCount-1 do
          begin
            if (eq_yn=false) and
               (strtointdef(stringreplace(edtStRange.Text,',','',[rfreplaceall]),0)>=strtointdef(stringreplace(string(cxViewPrem.DataController.Values[i,0]),',','',[rfreplaceall]),0)) and
               (strtointdef(stringreplace(edtStRange.Text,',','',[rfreplaceall]),0)<=strtointdef(stringreplace(string(cxViewPrem.DataController.Values[i,1]),',','',[rfreplaceall]),0)) then Eq_yn:=true;
            if (eq_yn=false) and
               (strtointdef(stringreplace(edtEdRange.Text,',','',[rfreplaceall]),0)>=strtointdef(stringreplace(string(cxViewPrem.DataController.Values[i,0]),',','',[rfreplaceall]),0)) and
               (strtointdef(stringreplace(edtEdRange.Text,',','',[rfreplaceall]),0)<=strtointdef(stringreplace(string(cxViewPrem.DataController.Values[i,1]),',','',[rfreplaceall]),0)) then Eq_yn:=true;
          end;
        end;
        if eq_yn=true then
        begin
          GmessageBox('교차되는 범위의 설정등록은 불가합니다.',cdmsE);
          Exit;
        end;
      end;

      try
        if CHARGE_GUBUN = 'P' then
        begin
          sQuery := 'INSERT INTO CDMS_PREM_DETAIL(nseq,ST_AMT,ED_AMT,RESULT_AMT) VALUES (' + inttostr(POS_PREM) + ',' + inttostr(strtointdef(stringreplace(edtStRange.text,',','',[rfreplaceall]),0)) + ',' + inttostr(strtointdef(stringreplace(edtEDRange.text,',','',[rfreplaceall]),0)) + ',' + inttostr(strtointdef(stringreplace(edtReRange.text,',','',[rfreplaceall]),0)) + ')';
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.ExecSQL;
        end else
        if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
        begin
          sQuery := 'INSERT INTO CDMS_SVPREM_DETAIL(nseq,ST_AMT,ED_AMT,RESULT_AMT) VALUES (' + inttostr(POS_PREM) + ',' + inttostr(strtointdef(stringreplace(edtStRange.text,',','',[rfreplaceall]),0)) + ',' + inttostr(strtointdef(stringreplace(edtEDRange.text,',','',[rfreplaceall]),0)) + ',' + inttostr(strtointdef(stringreplace(edtReRange.text,',','',[rfreplaceall]),0)) + ')';
          dmCharge.proc_mysql_init('update');
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.ExecSQL;
        end;
      finally
        proc_query('SELECTPR');
      end;
    end
      // 2011.02.14 심야할증표 요금 디테일 수정
    else if sJob = 'UPDPREMDET' then
    begin
      Pos_Prem := Prem_Rec[cbb2.ItemIndex].nseq;
      if Pos_Prem<1 then
      begin
        GmessageBox('설정가능한 심야요금제가 아니므로 심야요금제명을 확인하십시오.',cdmsE);
        Exit;
      end else
      if Ridx_PGrid = -1 then
      begin
        GmessageBox('할증요금 범위를 선택후 수정가능합니다.',cdmsE);
        Exit;
      end else
      if (edtStRange.text='0') and (edtEdRange.text='0') then
      begin
        GmessageBox('0원부터 0원까지는 설정등록이 불가합니다.',cdmsE);
        Exit;
      end else
      if strtointdef(stringreplace(edtStRange.Text,',','',[rfreplaceall]),0)>strtointdef(stringreplace(edtEdRange.Text,',','',[rfreplaceall]),0) then
      begin
        GmessageBox('종료요금범위가 시작요금범위보다 크거나 같아야 합니다.',cdmsE);
        Exit;
      end else
      begin
        eq_yn:=false;
        if cxViewPrem.DataController.RecordCount>0 then
        begin
          for i:=0 to cxViewPrem.DataController.RecordCount-1 do
          begin
            if (eq_yn=false) and
               (i<>Ridx_Pgrid) and
               (strtointdef(stringreplace(edtStRange.Text,',','',[rfreplaceall]),0)>=strtointdef(stringreplace(string(cxViewPrem.DataController.Values[i,0]),',','',[rfreplaceall]),0)) and
               (strtointdef(stringreplace(edtStRange.Text,',','',[rfreplaceall]),0)<=strtointdef(stringreplace(string(cxViewPrem.DataController.Values[i,1]),',','',[rfreplaceall]),0)) then Eq_yn:=true;
            if (eq_yn=false) and
               (i<>Ridx_Pgrid) and
               (strtointdef(stringreplace(edtEdRange.Text,',','',[rfreplaceall]),0)>=strtointdef(stringreplace(string(cxViewPrem.DataController.Values[i,0]),',','',[rfreplaceall]),0)) and
               (strtointdef(stringreplace(edtEdRange.Text,',','',[rfreplaceall]),0)<=strtointdef(stringreplace(string(cxViewPrem.DataController.Values[i,1]),',','',[rfreplaceall]),0)) then Eq_yn:=true;
          end;
        end;
        if eq_yn=true then
        begin
          GmessageBox('교차되는 범위의 설정등록은 불가합니다.',cdmsE);
          Exit;
        end;
      end;

      try
        if CHARGE_GUBUN = 'P' then
        begin
          sQuery := 'DELETE FROM CDMS_PREM_DETAIL where nseq = ' + inttostr(POS_PREM) + ' and ST_AMT = ' + stringreplace(string(cxViewPrem.DataController.Values[Ridx_PGrid,0]),',','',[rfreplaceall]) + ' AND ED_AMT = ' + stringreplace(string(cxViewPrem.DataController.Values[Ridx_PGrid,1]),',','',[rfreplaceall]) + ' and RESULT_AMT = ' + stringreplace(string(cxViewPrem.DataController.Values[Ridx_PGrid,2]),',','',[rfreplaceall]);
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.ExecSQL;

          sQuery := 'INSERT INTO CDMS_PREM_DETAIL(nseq,ST_AMT,ED_AMT,RESULT_AMT) VALUES (' + inttostr(POS_PREM) + ',' + inttostr(strtointdef(stringreplace(edtStRange.text,',','',[rfreplaceall]),0)) + ',' + inttostr(strtointdef(stringreplace(edtEDRange.text,',','',[rfreplaceall]),0)) + ',' + inttostr(strtointdef(stringreplace(edtReRange.text,',','',[rfreplaceall]),0)) + ')';
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.ExecSQL;
        end else
        if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
        begin
          sQuery := 'DELETE FROM CDMS_SVPREM_DETAIL where nseq = ' + inttostr(POS_PREM) + ' and ST_AMT = ' + stringreplace(string(cxViewPrem.DataController.Values[Ridx_PGrid,0]),',','',[rfreplaceall]) + ' AND ED_AMT = ' + stringreplace(string(cxViewPrem.DataController.Values[Ridx_PGrid,1]),',','',[rfreplaceall]) + ' and RESULT_AMT = ' + stringreplace(string(cxViewPrem.DataController.Values[Ridx_PGrid,2]),',','',[rfreplaceall]);
          dmCharge.proc_mysql_init('update');
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.ExecSQL;

          sQuery := 'INSERT INTO CDMS_SVPREM_DETAIL(nseq,ST_AMT,ED_AMT,RESULT_AMT) VALUES (' + inttostr(POS_PREM) + ',' + inttostr(strtointdef(stringreplace(edtStRange.text,',','',[rfreplaceall]),0)) + ',' + inttostr(strtointdef(stringreplace(edtEDRange.text,',','',[rfreplaceall]),0)) + ',' + inttostr(strtointdef(stringreplace(edtReRange.text,',','',[rfreplaceall]),0)) + ')';
          dmCharge.proc_mysql_init('update');
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.ExecSQL;
        end;
      finally
        proc_query('SELECTPR');
      end;
    end;
  except on E: Exception do
    GMessagebox(Format('데이터 처리 중 오류가 발생했습니다.'#13#10'%s', [E.Message]), CDMSE);
  end;
end;

function TFrm_SET.func_search_sno(sGubun: string): string;
var iMax: string;
begin
	result := '';
	try
		if CHARGE_GUBUN = 'P' then
		begin
			dmCharge.proc_SQLite_init;
			dmCharge.FDQuery_SQLite.Close;
			dmCharge.FDQuery_SQLite.SQL.Text := 'SELECT MAX(SUBSTR(CG_CD, 3, 3)) SMAX FROM CHARGE_GROUP WHERE CG_GUBUN = ''' + sGubun + ''' AND CG_CD <> ''CF999'' ';
			dmCharge.FDQuery_SQLite.open;
			if dmCharge.FDQuery_SQLite.IsEmpty then
				iMax := '1'
			else
				iMax := IntToStr(StrToIntDef(dmCharge.FDQuery_SQLite.Fields[0].AsString, 0) + 1);
			result := sGubun + LPAD(imax, '0', 3);
		end else
    if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
    begin
			with dmCharge.FDQuery1 do
      begin
				dmCharge.proc_mysql_init;
        Close;
				SQL.Text := 'SELECT MAX(SUBSTR(CG_CD,3,3)) SMAX FROM CDMS_GROUP WHERE CG_GUBUN = ''' + sGubun + ''' AND CG_CD <> ''CF999'' ';
        open;
				if IsEmpty then
          iMax := '1'
        else
          iMax := IntToStr(StrToIntDef(Fields[0].AsString, 0) + 1);
        result := sGubun + LPAD(imax, '0', 3);
      end;
    end;
  except on E: Exception do
    GMessagebox(Format('데이터 처리 중 오류가 발생했습니다.'#13#10'%s', [E.Message]), CDMSE);
  end;
end;

procedure TFrm_SET.cbb1PropertiesChange(Sender: TObject);
begin
  if (cbb1.text='') or (cbb1.Text='사용안함') then
  begin
    edt_StHour.Visible:=false;
    edt_StMin.Visible:=false;
    edt_EdHour.Visible:=false;
    edt_EdMin.Visible:=false;
    cxLabel25.Visible:=false;
    cxLabel26.Visible:=false;
    cxLabel27.Visible:=false;
    cxLabel23.Visible:=false;
  end else
  begin
    edt_StHour.Visible:=true;
    edt_StMin.Visible:=true;
    edt_EdHour.Visible:=true;
    edt_EdMin.Visible:=true;
    cxLabel25.Visible:=true;
    cxLabel26.Visible:=true;
    cxLabel27.Visible:=true;
    cxLabel23.Visible:=true;
  end;
end;

procedure TFrm_SET.cbb2PropertiesChange(Sender: TObject);
begin
  edtInpcbb2.Text := cbb2.Text;
  if edtInpcbb2.Text='사용안함' then edtInpcbb2.Text:='';
  proc_Query('SELECTPR');
end;

procedure TFrm_SET.cbBb1PropertiesChange(Sender: TObject);
begin
  if (cbBb1.text='') or (cbBb1.Text='사용안함') then
  begin
    edt_BStHour.Visible:=false;
    edt_BStMin.Visible:=false;
    edt_BEdHour.Visible:=false;
    edt_BEdMin.Visible:=false;
    cxLabel39.Visible:=false;
    cxLabel41.Visible:=false;
    cxLabel42.Visible:=false;
    cxLabel43.Visible:=false;
  end else
  begin
    edt_BStHour.Visible:=true;
    edt_BStMin.Visible:=true;
    edt_BEdHour.Visible:=true;
    edt_BEdMin.Visible:=true;
    cxLabel39.Visible:=true;
    cxLabel41.Visible:=true;
    cxLabel42.Visible:=true;
    cxLabel43.Visible:=true;
  end;
end;

procedure TFrm_SET.cbChartNameClick(Sender: TObject);
begin
  if not bAreaChange then
  begin
    proc_Query('CHARTSELECT');
  end;
end;

function TFrm_SET.func_Search_Where(sSubType: string; cb_stCity, cb_stWard,
  cb_edCity,
  cb_edWard: TcxComboBox; sg_stDong,
  sg_edDong: TcxGridDBTableView): string;
var
  sWhere, sWhere2, sWhere3, sWhere4, sSt1, sSt2, sSt3, sEd1, sEd2, sEd3: string;
  i: Integer;
begin
  sSt1 := '';
  sSt2 := '';
  sSt3 := '';
  sEd1 := '';
  sEd2 := '';
  sEd3 := '';
  sWhere := '';
  bAreaChange := True;
  if cb_stWard.ItemIndex = -1 then
    cb_stWard.ItemIndex := 0;
  if cb_edWard.ItemIndex = -1 then
    cb_edWard.ItemIndex := 0;

  if sg_stDong.DataController.GetSelectedCount = 0 then
  begin
    sg_stDong.DataController.SelectRows(0, 0);
  end;

  if sg_edDong.DataController.GetSelectedCount = 0 then
  begin
    sg_edDong.DataController.SelectRows(0, 0);
  end;
  bAreaChange := False;
  if ((sg_stDong.ViewData.Records[0].Selected) and
    (sg_stDong.DataController.GetSelectedCount > 1))
    or ((not sg_stDong.ViewData.Records[0].Selected) and
    (sg_stDong.DataController.GetSelectedCount > 0)) then
  begin
    sSt1 := '''' + cb_stCity.Text + ''' ';
    sWhere := ' AND (((' + sSubType + '_STCITY = ' + sSt1 + ') ';
    if (cb_stWard.ItemIndex = 0) then
    begin
      for i := 1 to sg_stDong.DataController.RecordCount - 1 do
      begin
        if sg_stDong.ViewData.Records[i].Selected then  // ok
        begin
          if sSt2 = '' then
            sSt2 := ' (''' + sg_stDong.ViewData.Records[I].Values[0] + ''' '
          else
            sSt2 := sSt2 + ', ''' + sg_stDong.ViewData.Records[I].Values[0] + ''' ';
        end;
      end;
      sWhere := sWhere + ' AND (' + sSubType + '_STWARD IN ' + sSt2 + ')) ';
    end else
    begin
      sSt2 := '''' + cb_stWard.Text + ''' ';
      sWhere := sWhere + ' AND (' + sSubType + '_STWARD = ' + sSt2 + ') ';
      for i := 1 to sg_stDong.DataController.RecordCount - 1 do
      begin
        if sg_stDong.ViewData.Records[i].Selected then  // ok
        begin
          if sSt3 = '' then
            sSt3 := ' (''' + sg_stDong.ViewData.Records[I].Values[0] + ''' '
          else
            sSt3 := sSt3 + ', ''' + sg_stDong.ViewData.Records[I].Values[0] + ''' ';
        end;
      end;
      sWhere := sWhere + ' AND (' + sSubType + '_STDONG IN ' + sSt3 + ')) ';
    end;
  end else
  begin
    if (cb_stWard.ItemIndex = 0) and ((sg_stDong.ViewData.Records[0].Selected)
      and (sg_stDong.DataController.GetSelectedCount = 1)) then
      sSt1 := cb_stCity.Text
    else
      if (cb_stWard.ItemIndex = 0) and ((not
      sg_stDong.ViewData.Records[0].Selected) and
      (sg_stDong.DataController.GetSelectedCount = 1)) then
    begin
      sSt1 := cb_stCity.Text;
      sSt2 := sg_stDong.DataController.Values[sg_stDong.DataController.FocusedRecordIndex, 0];
    end else
    if (cb_stWard.ItemIndex > 0) and
      ((sg_stDong.ViewData.Records[0].Selected) and
      (sg_stDong.DataController.GetSelectedCount = 1)) then
    begin
      sSt1 := cb_stCity.Text;
      sSt2 := cb_stWard.Text;
    end else
    if (cb_stWard.ItemIndex > 0) and ((not
      sg_stDong.ViewData.Records[0].Selected) and
      (sg_stDong.DataController.GetSelectedCount = 1)) then
    begin
      sSt1 := cb_stCity.Text;
      sSt2 := cb_stWard.Text;
      sSt3 :=
        sg_stDong.DataController.Values[sg_stDong.DataController.FocusedRecordIndex, 0];
    end;
    if sSt1 <> '' then
      sWhere := 'AND (((' + sSubType + '_STCITY = ''' + sSt1 + ''') ';
    if sSt2 <> '' then
      sWhere := sWhere + 'AND (' + sSubType + '_STWARD = ''' + sSt2 + ''') ';
    if sSt3 <> '' then
      sWhere := sWhere + 'AND (' + sSubType + '_STDONG = ''' + sSt3 + ''') ';
  end;
  sWhere2 := '';
  sSt1 := '';
  sSt2 := '';
  sSt3 := '';
  if ((sg_stDong.ViewData.Records[0].Selected) and
    (sg_stDong.DataController.GetSelectedCount > 1))
    or ((not sg_stDong.ViewData.Records[0].Selected) and
    (sg_stDong.DataController.GetSelectedCount > 0)) then
  begin
    sSt1 := '''' + cb_stCity.Text + ''' ';
    sWhere2 := ' OR ((' + sSubType + '_EDCITY = ' + sSt1 + ') ';
    if (cb_stWard.ItemIndex = 0) then
    begin
      for i := 1 to sg_stDong.DataController.RecordCount - 1 do
      begin
        if sg_stDong.ViewData.Records[i].Selected then  // ok
        begin
          if sSt2 = '' then
            sSt2 := ' (''' + sg_stDong.ViewData.Records[I].Values[0] + ''' '
          else
            sSt2 := sSt2 + ', ''' + sg_stDong.ViewData.Records[I].Values[0] + ''' ';
        end;
      end;
      sWhere2 := sWhere2 + ' AND (' + sSubType + '_EDWARD IN ' + sSt2 + ')) ';
    end else
    begin
      sSt2 := '''' + cb_stWard.Text + ''' ';
      sWhere2 := sWhere2 + ' AND (' + sSubType + '_EDWARD = ' + sSt2 + ') ';
      for i := 1 to sg_stDong.DataController.RecordCount - 1 do
      begin
        if sg_stDong.ViewData.Records[i].Selected then  // ok
        begin
          if sSt3 = '' then
            sSt3 := ' (''' + sg_stDong.ViewData.Records[I].Values[0] + ''' '
          else
            sSt3 := sSt3 + ', ''' + sg_stDong.ViewData.Records[I].Values[0] + ''' ';
        end;
      end;
      sWhere2 := sWhere2 + ' AND (' + sSubType + '_EDDONG IN ' + sSt3 + ')) ';
    end;
  end else
  begin
    if (cb_stWard.ItemIndex = 0) and ((sg_stDong.ViewData.Records[0].Selected)
      and (sg_stDong.DataController.GetSelectedCount = 1)) then
      sSt1 := cb_stCity.Text
    else
      if (cb_stWard.ItemIndex = 0) and ((not
      sg_stDong.ViewData.Records[0].Selected) and
      (sg_stDong.DataController.GetSelectedCount = 1)) then
    begin
      sSt1 := cb_stCity.Text;
      sSt2 :=
        sg_stDong.DataController.Values[sg_stDong.DataController.FocusedRecordIndex, 0];
    end else
    if (cb_stWard.ItemIndex > 0) and
      ((sg_stDong.ViewData.Records[0].Selected) and
      (sg_stDong.DataController.GetSelectedCount = 1)) then
    begin
      sSt1 := cb_stCity.Text;
      sSt2 := cb_stWard.Text
    end else
    if (cb_stWard.ItemIndex > 0) and ((not
      sg_stDong.ViewData.Records[0].Selected) and
      (sg_stDong.DataController.GetSelectedCount = 1)) then
    begin
      sSt1 := cb_stCity.Text;
      sSt2 := cb_stWard.Text;
      sSt3 :=
        sg_stDong.DataController.Values[sg_stDong.DataController.FocusedRecordIndex, 0];
    end;
    if sSt1 <> '' then
      sWhere2 := 'OR ((' + sSubType + '_EDCITY = ''' + sSt1 + ''') ';
    if sSt2 <> '' then
      sWhere2 := sWhere2 + 'AND (' + sSubType + '_EDWARD = ''' + sSt2 + ''') ';
    if sSt3 <> '' then
      sWhere2 := sWhere2 + 'AND (' + sSubType + '_EDDONG = ''' + sSt3 + ''') ';
  end;

  sSt1 := '';
  sSt2 := '';
  sSt3 := '';
  sWhere3 := '';
  if ((sg_edDong.ViewData.Records[0].Selected) and
    (sg_edDong.DataController.GetSelectedCount > 1))
    or ((not sg_edDong.ViewData.Records[0].Selected) and
    (sg_edDong.DataController.GetSelectedCount > 0)) then
  begin
    sSt1 := '''' + cb_edCity.Text + ''' ';
    sWhere3 := ' AND (' + sSubType + '_EDCITY = ' + sSt1 + ') ';
    if (cb_edWard.ItemIndex = 0) then
    begin
      for i := 1 to sg_edDong.DataController.RecordCount - 1 do
      begin
        if sg_edDong.ViewData.Records[i].Selected then  // ok
        begin
          if sSt2 = '' then
            sSt2 := ' (''' + sg_edDong.ViewData.Records[I].Values[0] + ''' '
          else
            sSt2 := sSt2 + ', ''' + sg_edDong.ViewData.Records[I].Values[0] + ''' ';
        end;
      end;
      sWhere3 := sWhere3 + ' AND (' + sSubType + '_EDWARD IN ' + sSt2 + ')) ';
    end else
    begin
      sSt2 := '''' + cb_edWard.Text + ''' ';
      sWhere3 := sWhere3 + ' AND (' + sSubType + '_EDWARD = ' + sSt2 + ') ';
      for i := 1 to sg_edDong.DataController.RecordCount - 1 do
      begin
        if sg_edDong.ViewData.Records[i].Selected then  // ok
        begin
          if sSt3 = '' then
            sSt3 := ' (''' + sg_edDong.ViewData.Records[I].Values[0] + ''' '
          else
            sSt3 := sSt3 + ', ''' + sg_edDong.ViewData.Records[I].Values[0] + ''' ';
        end;
      end;
      sWhere3 := sWhere3 + ' AND (' + sSubType + '_EDDONG IN ' + sSt3 + ')) ';
    end;
  end else
  begin
    if (cb_edWard.ItemIndex = 0) and (sg_edDong.ViewData.Records[0].Selected)
      and (sg_edDong.DataController.GetSelectedCount = 1) then
      sSt1 := cb_edCity.Text
    else
    if (cb_edWard.ItemIndex = 0) and (not
      sg_stDong.ViewData.Records[0].Selected) and
      (sg_stDong.DataController.GetSelectedCount = 1) then
    begin
      sSt1 := cb_edCity.Text;
      sSt2 := sg_edDong.DataController.Values[sg_edDong.DataController.FocusedRecordIndex, 0];
    end else
    if (cb_edWard.ItemIndex > 0) and
      (sg_edDong.ViewData.Records[0].Selected) and
      (sg_edDong.DataController.GetSelectedCount = 1) then
    begin
      sSt1 := cb_edCity.Text;
      sSt2 := cb_edWard.Text
    end else
    if (cb_edWard.ItemIndex > 0) and ((not
      sg_edDong.ViewData.Records[0].Selected) and
      (sg_edDong.DataController.GetSelectedCount = 1)) then
    begin
      sSt1 := cb_edCity.Text;
      sSt2 := cb_edCity.Text;
      sSt3 := sg_edDong.DataController.Values[sg_edDong.DataController.FocusedRecordIndex, 0];
    end;
    if sSt1 <> '' then
      sWhere3 := 'AND (' + sSubType + '_EDCITY = ''' + sSt1 + ''') ';
    if sSt2 <> '' then
      sWhere3 := sWhere3 + 'AND (' + sSubType + '_EDWARD = ''' + sSt2 + ''') ';
    if sSt3 <> '' then
      sWhere3 := sWhere3 + 'AND (' + sSubType + '_EDDONG = ''' + sSt3 + ''') ';
  end;

  sWhere3 := sWhere3 + ') ';

  sSt1 := '';
  sSt2 := '';
  sSt3 := '';
  sWhere4 := '';
  if ((sg_edDong.ViewData.Records[0].Selected) and
    (sg_edDong.DataController.GetSelectedCount > 1))
    or ((not sg_edDong.ViewData.Records[0].Selected) and
    (sg_edDong.DataController.GetSelectedCount > 0)) then
  begin
    sSt1 := '''' + cb_edCity.Text + ''' ';
    sWhere4 := ' AND (' + sSubType + '_STCITY = ' + sSt1 + ') ';
    if (cb_edWard.ItemIndex = 0) then
    begin
      for i := 1 to sg_edDong.DataController.RecordCount - 1 do
      begin
        if sg_edDong.ViewData.Records[i].Selected then  // ok
        begin
          if sSt2 = '' then
            sSt2 := ' (''' + sg_edDong.ViewData.Records[I].Values[0] + ''' '
          else
            sSt2 := sSt2 + ', ''' + sg_edDong.ViewData.Records[I].Values[0] + ''' ';
        end;
      end;
      sWhere4 := sWhere4 + ' AND (' + sSubType + '_STWARD IN ' + sSt2 +  ')) ';
    end else
    begin
      sSt2 := '''' + cb_edWard.Text + ''' ';
      sWhere4 := sWhere4 + ' AND (' + sSubType + '_STWARD = ' + sSt2 + ') ';
      for i := 1 to sg_edDong.DataController.RecordCount - 1 do
      begin
        if sg_edDong.ViewData.Records[i].Selected then  // ok
        begin
          if sSt3 = '' then
            sSt3 := ' (''' + sg_edDong.ViewData.Records[I].Values[0] + ''' '
          else
            sSt3 := sSt3 + ', ''' + sg_edDong.ViewData.Records[I].Values[0] + ''' ';
        end;
      end;
      sWhere4 := sWhere4 + ' AND (' + sSubType + '_STDONG IN ' + sSt3 + ')) ';
    end;
  end else
  begin
    if (cb_edWard.ItemIndex = 0) and (sg_edDong.ViewData.Records[0].Selected)
      and (sg_edDong.DataController.GetSelectedCount = 1) then
      sSt1 := cb_edCity.Text
    else
      if (cb_edWard.ItemIndex = 0) and (not
      sg_stDong.ViewData.Records[0].Selected) and
      (sg_stDong.DataController.GetSelectedCount = 1) then
    begin
      sSt1 := cb_edCity.Text;
      sSt2 := sg_edDong.DataController.Values[sg_edDong.DataController.FocusedRecordIndex, 0];
    end else
    if (cb_edWard.ItemIndex > 0) and
      (sg_edDong.ViewData.Records[0].Selected) and
      (sg_edDong.DataController.GetSelectedCount = 1) then
    begin
      sSt1 := cb_edCity.Text;
      sSt2 := cb_edWard.Text
    end else
    if (cb_edWard.ItemIndex > 0) and ((not
      sg_edDong.ViewData.Records[0].Selected) and
      (sg_edDong.DataController.GetSelectedCount = 1)) then
    begin
      sSt1 := cb_edCity.Text;
      sSt2 := cb_edCity.Text;
      sSt3 := sg_edDong.DataController.Values[sg_edDong.DataController.FocusedRecordIndex, 0];
    end;
    if sSt1 <> '' then
      sWhere4 := 'AND (' + sSubType + '_STCITY = ''' + sSt1 + ''') ';
    if sSt2 <> '' then
      sWhere4 := sWhere4 + 'AND (' + sSubType + '_STWARD = ''' + sSt2 + ''') ';
    if sSt3 <> '' then
      sWhere4 := sWhere4 + 'AND (' + sSubType + '_STDONG = ''' + sSt3 + ''') ';
  end;
  sWhere4 := sWhere4 + ')) ';
  Result := sWhere + sWhere3 + sWhere2 + sWhere4;
end;

procedure TFrm_SET.cxButton18Click(Sender: TObject);
Var sQuery, sChargeCd, sSubType : String;
begin
  if cbChartName.ItemIndex = -1 then
  begin
    GMessagebox('요금제를 먼저 선택하세요.', CDMSE);
    Exit;
  end;
  
  // 자료가 70만건 이상이면 별도 옵션 처리  LYB  20120719
  if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
  begin
    sChargeCd := lbChartCd.Items[cbChartName.ItemIndex];
    sSubType := Copy(sChargeCd, 1, 2);

    if sSubType = 'CC' then
    begin
      sQuery := 'SELECT COUNT(*) FROM CDMS_CHART WHERE CC_CD = ''%s'' ';
    end else
    if sSubType = 'CA' then
    begin
      sQuery := 'SELECT COUNT(*) FROM CDMS_FIRST WHERE FC_CD = ''%s'' ';
    end;
    sQuery := Format(sQuery, [sChargeCd]);
    dmCharge.proc_mysql_init;
    dmCharge.FDQuery1.Close;
    dmCharge.FDQuery1.SQL.Text := sQuery;
    dmCharge.FDQuery1.Open;

    if not dmCharge.FDQuery1.IsEmpty then
    begin
      if dmCharge.FDQuery1.Fields[0].AsInteger > 700000 then
      begin
        pnl_Option.Left := (Frm_Main.Width - pnl_Option.Width) div 2;
        pnl_Option.top := (Frm_Main.Height - pnl_Option.Height) div 2;
        Gauge2.Progress := 0;
        cxGroupBox2.Caption := '   70만건 이상 옵션 : ' + FormatFloat('#,', dmCharge.FDQuery1.Fields[0].AsInteger) + ' 건';
        cxGroupBox2.Tag := dmCharge.FDQuery1.Fields[0].AsInteger;  // 건수저장
        Rb_Save.Caption := '파일저장';
        Rb_Save.Checked := True;        
				Rb_Save.Hint := 'F';        
        pnl_Option.Visible := True;
        pnl_Option.Hint := 'C';
        pnl_Option.BringToFront;
      end else
      begin
        proc_Query('CHARTSELECT', 1);
      end;
    end;
  end else
  begin
    proc_Query('CHARTSELECT', 1);
  end;
end;

function TFrm_SET.func_ChargeName(sName: string): Boolean;
begin
	Result := True;
  try
    if CHARGE_GUBUN = 'P' then
    begin
			dmCharge.proc_SQLite_init;
			dmCharge.FDQuery_SQLite.Close;
			dmCharge.FDQuery_SQLite.SQL.Text := 'SELECT * FROM CHARGE_GROUP WHERE CG_NM = ''' + sName + ''' ';
			dmCharge.FDQuery_SQLite.open;
			if not dmCharge.FDQuery_SQLite.IsEmpty then
				Result := False;
		end else
    if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
		begin
      with dmCharge.FDQuery1 do
      begin
        dmCharge.proc_mysql_init;
        Close;
        SQL.Text := 'SELECT * FROM CDMS_GROUP WHERE CG_NM = ''' + sName + ''' ';
        open;
				if not IsEmpty then
          Result := False;
      end;
    end;
  except
    Result := False;
  end;
end;

procedure TFrm_SET.cxButton19Click(Sender: TObject);
var
  area, sArea1, sArea2, sArea3, dArea1, dArea2, dArea3, fc_cd, sSubType, sQuery, sTable: string;
  iMax, iRow, i, iArea: Integer;
  sList, slArea, slAreaDetail: TStringList;
begin
	iMax := 0;
  try
    if cbChartName.Text = '' then
    begin
      GMessagebox('요금제를 먼저 선택하세요', cdmsE);
      Exit;
    end;

    fc_cd := lbChartCd.Items.Strings[cbChartName.itemIndex];

    if (fc_cd = 'CC001') or (fc_cd = 'CC002') or (fc_cd = 'CC003') then
    begin
      GMessagebox('표준요금표는 수정할수 없습니다.', CDMSE);
      Exit;
    end;

    if ed_chart_value.Value < 1 then
    begin
      GMessagebox('[요금입력]의 요금을 확인해 주세요.', CDMSE);
      ed_chart_value.SetFocus;
      Exit;
    end;

    sList := TStringList.Create;
    sList.Clear;

    slArea := TStringList.Create;
    slAreaDetail := TStringList.Create;

    iArea := asg_Chart_charge.GetColumnByFieldName('지역').Index;

    slArea.Assign(func_Select_Area(cb_chart_stcity, cb_chart_stward,
      cb_chart_edcity, cb_chart_edward, asg_chart_st, asg_chart_ed, RbCheckBox2));

    if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then sTable := 'CDMS_FIRST' else
    if CHARGE_GUBUN = 'P' then sTable := 'CDMS_FIRST_CHARGE';

    sSubType := Copy(fc_cd, 1, 2);

    cxProgressBar1.Progress := 0;
    cxProgressBar1.MaxValue := slArea.Count - 1;

    asg_Chart_charge.BeginUpdate;
    for i := 0 to slArea.Count - 1 do
    begin
      cxProgressBar1.Progress := cxProgressBar1.Progress + 1;
      Application.ProcessMessages;

      slAreaDetail.CommaText := slArea[i];
      sArea1 := slAreaDetail[0];
      sArea2 := slAreaDetail[1];
      sArea3 := slAreaDetail[2];
      dArea1 := slAreaDetail[3];
      dArea2 := slAreaDetail[4];
      dArea3 := slAreaDetail[5];
      area := sArea1 + sArea2 + sArea3 + dArea1 + dArea2 + dArea3;
      iRow := asg_Chart_charge.DataController.FindRecordIndexByText(0, iArea, Area, True, False, True);
      //수정 2008.07.13
      if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
      begin
        if sSubType = 'CC' then sTable := 'CDMS_CHART' else
        if sSubType = 'CA' then
        begin
          sSubType := 'FC';
          sTable := 'CDMS_FIRST';
        end;
				sQuery := 'SELECT * FROM ' + sTable + ' WHERE ' + sSubType + '_CD = '''
          + fc_cd + ''' '
          + 'AND ' + sSubType + '_STCITY = ''' + sArea1 + ''' AND ' +
          sSubType + '_STWARD = ''' + sArea2 + ''' AND ' + sSubType +
          '_STDONG = ''' + sArea3 + ''' '
          + 'AND ' + sSubType + '_EDCITY = ''' + dArea1 + ''' AND ' +
          sSubType + '_EDWARD = ''' + dArea2 + ''' AND ' + sSubType +
          '_EDDONG = ''' + dArea3 + ''' ';
        dmCharge.proc_mysql_init;
        dmCharge.FDQuery1.Close;
				dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.open;

        if not dmCharge.FDQuery1.IsEmpty then
        begin
					sQuery := 'DELETE FROM ' + sTable + ' WHERE ' + sSubType +
            '_CD = ''' + fc_cd + ''' '
            + 'AND ' + sSubType + '_STCITY = ''' + sArea1 + ''' AND ' +
            sSubType + '_STWARD = ''' + sArea2 + ''' AND ' + sSubType +
            '_STDONG = ''' + sArea3 + ''' '
            + 'AND ' + sSubType + '_EDCITY = ''' + dArea1 + ''' AND ' +
            sSubType + '_EDWARD = ''' + dArea2 + ''' AND ' + sSubType +
            '_EDDONG = ''' + dArea3 + ''' ';
          dmCharge.proc_mysql_init('update');
          dmCharge.FDQuery1.Close;
					dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.ExecSQL;
        end;
//        dmCharge.proc_mysql_init;
//        dmCharge.FDQuery1.Close;
//        dmCharge.FDQuery1.SQL.Text := 'SELECT MAX(' + sSubType + '_NO) FROM ' +
//          sTable + ' WHERE ' + sSubType + '_CD = ''' + fc_cd + ''' ';
//        dmCharge.FDQuery1.open;
//        iMax := StrtoIntDef(dmCharge.FDQuery1.fields[0].AsString, 0) + 1;

        sQuery := 'INSERT INTO ' + sTable + ' (' + sSubType + '_CD,' + sSubType + '_VALUE,' +
                 sSubType + '_STCITY,' + sSubType + '_STWARD,' + sSubType + '_STDONG,' +
                 sSubType + '_EDCITY,' + sSubType + '_EDWARD,' + sSubType + '_EDDONG) VALUES '
               + '(''' + fc_cd + ''',' + ed_chart_value.Text + ',''' +
                 sArea1 + ''',''' + sArea2 + ''',''' + sArea3 + ''',''' +
                 dArea1 + ''',''' + dArea2 + ''',''' + dArea3 + ''')';
        dmCharge.proc_mysql_init('update');
        dmCharge.FDQuery1.Close;
				dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.ExecSQL;
      end else
      if CHARGE_GUBUN = 'P' then
      begin
        if sSubType = 'CC' then
          sTable := 'CDMS_CHART_CHARGE'
        else
        if sSubType = 'CA' then
        begin
          sSubType := 'FC';
          sTable := 'CDMS_FIRST_CHARGE';
        end;
				sQuery := 'SELECT * FROM ' + sTable + ' WHERE ' + sSubType + '_CD = '''
          + fc_cd + ''' '
          + 'AND ' + sSubType + '_STCITY = ''' + sArea1 + ''' AND ' +
          sSubType + '_STWARD = ''' + sArea2 + ''' AND ' + sSubType +
          '_STDONG = ''' + sArea3 + ''' '
          + 'AND ' + sSubType + '_EDCITY = ''' + dArea1 + ''' AND ' +
					sSubType + '_EDWARD = ''' + dArea2 + ''' AND ' + sSubType +
          '_EDDONG = ''' + dArea3 + ''' ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.OPEN;

				if not dmCharge.FDQuery_SQLite.Eof then
				begin
          sQuery := 'DELETE FROM ' + sTable + ' WHERE ' + sSubType +
            '_CD = ''' + fc_cd + ''' '
            + 'AND ' + sSubType + '_STCITY = ''' + sArea1 + ''' AND ' +
            sSubType + '_STWARD = ''' + sArea2 + ''' AND ' + sSubType +
            '_STDONG = ''' + sArea3 + ''' '
            + 'AND ' + sSubType + '_EDCITY = ''' + dArea1 + ''' AND ' +
            sSubType + '_EDWARD = ''' + dArea2 + ''' AND ' + sSubType +
            '_EDDONG = ''' + dArea3 + ''' ';
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.ExecSQL;
				end;
				sQuery := 'SELECT MAX(' + sSubType + '_NO) FROM ' + sTable + ' WHERE ' + sSubType + '_CD = ''' + fc_cd + ''' ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.OPEN;
					
				iMax := StrtoIntDef(dmCharge.FDQuery_SQLite.fields[0].AsString, 0) + 1;

				sQuery := 'SELECT * FROM ' + sTable + ' WHERE ' + sSubType + '_CD = ''' + fc_cd + ''' and ' + sSubType + '_NO = ' + IntToStr(iMax);
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.OPEN;
				
				if dmCharge.FDQuery_SQLite.Eof then
				begin
				sQuery := 'INSERT INTO ' + sTable + ' (' + sSubType + '_NO,' + sSubType
					+ '_CD,' + sSubType + '_VALUE,' + sSubType + '_STCITY,' + sSubType +
					'_STWARD,'
          + ' ' + sSubType + '_STDONG,' + sSubType + '_EDCITY,' + sSubType +
          '_EDWARD,' + sSubType + '_EDDONG) VALUES '
					+ '(' + IntToStr(iMax) + ',''' + fc_cd + ''',' +
          ed_chart_value.Text + ',''' + sArea1 + ''',''' + sArea2 + ''','''
          + sArea3 + ''' '
          + ',''' + dArea1 + ''',''' + dArea2 + ''',''' + dArea3 + ''')';
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.ExecSQL;
        end;
      end;
      if iRow = -1 then
        iRow := asg_Chart_charge.DataController.AppendRecord;
      asg_Chart_charge.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
      asg_Chart_charge.DataController.Values[iRow, 1] := sArea1;
      asg_Chart_charge.DataController.Values[iRow, 2] := sArea2;
      asg_Chart_charge.DataController.Values[iRow, 3] := sArea3;
      asg_Chart_charge.DataController.Values[iRow, 4] := dArea1;
      asg_Chart_charge.DataController.Values[iRow, 5] := dArea2;
      asg_Chart_charge.DataController.Values[iRow, 6] := dArea3;
      asg_Chart_charge.DataController.Values[iRow, 7] := FormatFloat('#,##0',
        StrToFloatDef(StringReplace(Trim(ed_chart_value.Text), ',', '', [rfReplaceAll]), 0.0));
      asg_Chart_charge.DataController.Values[iRow, 8] := Area;
      asg_Chart_charge.DataController.Values[iRow, 9] := 'S';
      asg_Chart_charge.DataController.Values[iRow, 10] := IntToStr(iMax);
    end;
    asg_Chart_charge.EndUpdate;
    cxProgressBar1.Progress := 0;
    bFirstChargeModify := False;
    GMessagebox('저장하였습니다', CDMSI);
  except
    bFirstChargeModify := False;
    GMessagebox('실패하였습니다', CDMSE);
  end;
end;

procedure TFrm_SET.cxButton1Click(Sender: TObject);
begin
  proc_Query('SELECTCHARGE');
end;

function TFrm_SET.func_Select_Area(cb_stCity, cb_stWard, cb_edCity,
  cb_edWard: TcxComboBox; sg_stDong,
  sg_edDong: TcxGridDBTableView; AChkRound: TcxCheckBox): TStringList;
var
  i, j: Integer;
  slStList, slEdList: TStringList;
begin
  try
    slStList := TStringList.Create;
    slEdList := TStringList.Create;
    Result := TStringList.Create;
    Result.Duplicates := dupIgnore;
    //출발지
    if (cb_stWard.ItemIndex = 0) and (sg_stDong.ViewData.Records[0].Selected)
      and (sg_stDong.DataController.GetSelectedCount = 1) then
    begin
      slStList.Text := cb_stCity.Text + ',,';
    end else
    if (cb_stWard.ItemIndex = 0) and (not
      sg_stDong.ViewData.Records[0].Selected) and
      (sg_stDong.DataController.GetSelectedCount = 1) then
    begin
      slStList.Text := cb_stCity.Text + ',' +
        sg_stDong.DataController.Values[sg_stDong.DataController.FocusedRecordIndex, 0] + ',';
    end else
    if (cb_stWard.ItemIndex = 0) and
      (sg_stDong.DataController.GetSelectedCount > 1) then
    begin
      for i := 1 to sg_stDong.DataController.RecordCount - 1 do
      begin
        if sg_stDong.ViewData.Records[i].Selected then  // ok
        begin
          slStList.Add(cb_stCity.Text + ',' + sg_stDong.ViewData.Records[I].Values[0] + ',');
        end;
      end;
    end else
    if (cb_stWard.ItemIndex > 0) and
      (sg_stDong.ViewData.Records[0].Selected) and
      (sg_stDong.DataController.GetSelectedCount = 1) then
    begin
      slStList.Text := cb_stCity.Text + ',' + cb_stWard.Text + ',';
    end else
    if (cb_stWard.ItemIndex > 0) and (not
      sg_stDong.ViewData.Records[0].Selected) and
      (sg_stDong.DataController.GetSelectedCount = 1) then
    begin
      slStList.Text := cb_stCity.Text + ',' + cb_stWard.Text + ',' +
        sg_stDong.DataController.Values[sg_stDong.DataController.FocusedRecordIndex, 0];
    end else
    if (cb_stWard.ItemIndex > 0) and
      (sg_stDong.DataController.GetSelectedCount > 1) then
    begin
      for i := 1 to sg_stDong.DataController.RecordCount - 1 do
      begin
        if sg_stDong.ViewData.Records[i].Selected then  // ok
        begin
          slStList.Add(cb_stCity.Text + ',' + cb_stWard.Text + ',' + sg_stDong.ViewData.Records[I].Values[0]);
        end;
      end;
    end;

    //도착지
    if (cb_edWard.ItemIndex = 0) and (sg_edDong.ViewData.Records[0].Selected)
      and (sg_edDong.DataController.GetSelectedCount = 1) then
    begin
      slEdList.Text := cb_edCity.Text + ',,';
    end else
    if (cb_edWard.ItemIndex = 0) and (not
      sg_edDong.ViewData.Records[0].Selected) and
      (sg_edDong.DataController.GetSelectedCount = 1) then
    begin
      slEdList.Text := cb_edCity.Text + ',' +
        sg_edDong.DataController.Values[sg_edDong.DataController.FocusedRecordIndex, 0] + ',';
    end else
    if (cb_edWard.ItemIndex = 0) and
      (sg_edDong.DataController.GetSelectedCount > 1) then
    begin
      for i := 1 to sg_edDong.DataController.RecordCount - 1 do
      begin
        if sg_edDong.ViewData.Records[i].Selected then  // ok
        begin
          slEdList.Add(cb_edCity.Text + ',' + sg_edDong.ViewData.Records[I].Values[0] + ',');
        end;
      end;
    end else
    if (cb_edWard.ItemIndex > 0) and
      (sg_edDong.ViewData.Records[0].Selected) and
      (sg_edDong.DataController.GetSelectedCount = 1) then
    begin
      slEdList.Text := cb_edCity.Text + ',' + cb_edWard.Text + ',';
    end else
    if (cb_edWard.ItemIndex > 0) and (not
      sg_edDong.ViewData.Records[0].Selected) and
      (sg_edDong.DataController.GetSelectedCount = 1) then
    begin
      slEdList.Text := cb_edCity.Text + ',' + cb_edWard.Text + ',' +
        sg_edDong.DataController.Values[sg_edDong.DataController.FocusedRecordIndex, 0];
    end else
    if (cb_edWard.ItemIndex > 0) and
      (sg_edDong.DataController.GetSelectedCount > 1) then
    begin
      for i := 1 to sg_edDong.DataController.RecordCount - 1 do
      begin
        if sg_edDong.ViewData.Records[i].Selected then  // ok
        begin
          slEdList.Add(cb_edCity.Text + ',' + cb_edWard.Text + ',' + sg_edDong.ViewData.Records[I].Values[0]);
        end;
      end;
    end;

    for i := 0 to slStList.Count - 1 do
    begin
      for j := 0 to slEdList.Count - 1 do
      begin
        Result.Add(slStList[i] + ',' + slEdList[j]);
      end;
    end;

    if AChkRound.Checked then
    begin
      for i := 0 to slEdList.Count - 1 do
      begin
        for j := 0 to slStList.Count - 1 do
        begin
          if Result.IndexOf(slEdList[i] + ',' + slStList[j]) = -1 then
            Result.Add(slEdList[i] + ',' + slStList[j]);
        end;
      end;
    end;

  finally
    FreeAndNil(slStList);
    FreeAndNil(slEdList);
  end;
end;

procedure TFrm_SET.mmoDNISExit(Sender: TObject);
var
  Arow: integer;
  function chk_dnis(Str1:string):Boolean;
  var
    StrLst1: TStringList;
    chk_ok1: Boolean;
    nk1: integer;
  begin
    strlst1:=TStringList.Create;
    StrLst1.Clear;
    try
      try
        chk_ok1:=true;

        GetTextSeperationEx(',', Str1, StrLst1);
        if StrLst1.count>0 then
        begin
          for nk1:=0 to StrLst1.Count-1 do
          begin
            if chk_ok1=True then
              if (Length(StrLst1.Strings[nk1]) < 1) and (Length(StrLst1.Strings[nk1]) > 5) then chk_ok1:=false;
          end;
        end;
        result:=chk_ok1;
      except
        result:=false;
      end;
    finally
      StrLst1.Free;
    end;
  end;
begin
//  if cxView1.DataController.recordcount<1 then
//    exit;
  Arow := cxview1.DataController.FocusedRecordIndex;
  if Arow < 0 then
    Exit;
  if (mmoDNIS.text<>'') then
  begin
    if chk_dnis(mmoDNIS.text)=False then
    begin
      GMessagebox('DNIS입력규칙에 어긋납니다'+#13#10+'입력규칙을 다시 확인하시기 바랍니다',CDMSE);

    //  mmoDNIS.Text:='';

      mmoDNIS.Text:=cxView1.DataController.Values[arow,7];
      mmoDNIS.SetFocus;
      mmoDNIS.SelStart:=0;
      mmoDNIS.SelLength:=Length(mmoDNIS.Text);
    end;
  end;
end;

procedure TFrm_SET.mmoDNISKeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key>='0') and (Key<='9')) or (Key=',') or (ord(Key)=8) then
  begin

  end else
  begin
    key:=#0;
  end;
end;

procedure TFrm_SET.N1Click(Sender: TObject);
begin
	pnl_AddType.visible := True;
end;

procedure TFrm_SET.asg_BBr_ChargeCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  sCode, sFirstCd, sFirstNm, sSubCode, sChargeNm: string;
	iIndex, Arow, iTmp: Integer;
  tmp_StHour,tmp_StMin,tmp_EdHour,tmp_EdMin: integer;
begin
  iIndex := 0;

  Arow := asg_BBr_Charge.DataController.FocusedRecordIndex;
  if Arow < 0 then Exit;

  ed_Bbr_Name.Text := asg_BBr_Charge.DataController.Values[ARow, 1];
  ed_BKeyNumber.Text := asg_BBr_Charge.DataController.Values[ARow, 2];
  ed_Bbg_Name.Text := asg_BBr_Charge.DataController.Values[ARow, 3];
  // 2011.02.09 (8부터 +3)
  Cbr_no.Text := asg_BBr_Charge.DataController.Values[ARow, 13];
  Cb_Code.Text := asg_BBr_Charge.DataController.Values[ARow, 18];

  // 구분설정
  sCode := asg_BBr_Charge.DataController.Values[Arow, 14];
  sSubCode := Copy(sCode, 1, 2);
  if (sSubCode = 'CC') or (sSubCode = 'CA') then
    iIndex := 0
  else if sSubCode = 'CD' then
    iIndex := 1
  else if sSubCode = 'CT' then
    iIndex := 2;
  ed_Bcharge_cd.Text := sCode;
  cb_BCharge_Gubun.ItemIndex := iIndex;

  sChargeNm := vlBChargeGroup.Values[sCode];
	iTmp := cb_Bcharge_name.Properties.Items.IndexOf(sChargeNm);
	if iTmp < 0 then cb_Bcharge_name.ItemIndex := -1 else cb_Bcharge_name.ItemIndex := iTmp;

	// 2011.02.09 (8부터 +3)
  sFirstCd := asg_BBr_Charge.DataController.Values[ARow, 15];
  if sFirstCd <> '' then
  begin
    sFirstNm := vlBChargeGroup.Values[sFirstCd];
		BComboBox1.ItemIndex := BComboBox1.Properties.Items.IndexOf(sFirstNm)
  end else
    BComboBox1.ItemIndex := 0;

  // 2011.02.09 (8부터 +3)
  if asg_BBr_Charge.DataController.Values[Arow, 17] = '' then
  begin
    RbBRadioButton5.Checked := True;
    RbBRadioButton5Click(RbBRadioButton5);
    ed_Bpassvalue.Text := asg_BBr_Charge.DataController.Values[Arow, 7];
  end else
  begin
    RbBRadioButton6.Checked := True;
    RbBRadioButton5Click(RbBRadioButton6);
    // 2011.02.09 (8부터 +3)
    sCode := asg_BBr_Charge.DataController.Values[Arow, 16];
    if sCode <> '' then
    begin
      sChargeNm := vlBChargeGroup.Values[sCode];
      BComboBox2.ItemIndex := BComboBox2.Properties.Items.IndexOf(sChargeNm);
    end else
    begin
      BComboBox2.ItemIndex := 0;
    end;
    BComboBox3.ItemIndex := StrToIntDef(asg_BBr_Charge.DataController.Values[Arow, 17], 0);
  end;
  cbBb1.ItemIndex:=cbBb1.Properties.Items.IndexOf(asg_BBr_Charge.DataController.Values[Arow, 9]);
  if cbBb1.itemindex=-1 then cbBb1.ItemIndex:=0;

  OutputDebugString(PChar('요금종류:'+string(asg_BBr_Charge.DataController.Values[Arow, 9])));

  tmp_StHour:=StrToIntDef(Copy(asg_BBr_Charge.DataController.Values[Arow, 10],1,2),0);
  tmp_StMin :=StrToIntDef(Copy(asg_BBr_Charge.DataController.Values[Arow, 10],4,2),0);
  tmp_EdHour:=StrToIntDef(Copy(asg_BBr_Charge.DataController.Values[Arow, 11],1,2),0);
  tmp_EdMin :=StrToIntDef(Copy(asg_BBr_Charge.DataController.Values[Arow, 11],4,2),0);
  edt_BStHour.Text:=FormatFloat('00',tmp_StHour);
  edt_BStMin.Text:=FormatFloat('00',tmp_StMin);
  edt_BEdHour.Text:=FormatFloat('00',tmp_EdHour);
  edt_BEdMin.Text:=FormatFloat('00',tmp_EdMin);
end;

procedure TFrm_SET.asg_Br_ChargeCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
	sCode, sFirstCd, sFirstNm, sSubCode, sChargeNm: string;
  iIndex, Arow: Integer;
	tmp_StHour,tmp_StMin,tmp_EdHour,tmp_EdMin: integer;
	sCode2, sSubCode2, sChargeNm2: string;
begin
	iIndex := 0;

	Arow := asg_Br_Charge.DataController.FocusedRecordIndex;
  if Arow < 0 then Exit;

  ed_br_Name.Text := asg_Br_Charge.DataController.Values[ARow, 1];
	ed_KeyNumber.Text := asg_Br_Charge.DataController.Values[ARow, 2];
  // 2011.02.09 (8부터 +3)

	if CHARGE_GUBUN = 'P' then
	begin
		br_no.Text := asg_Br_Charge.DataController.Values[ARow, 15];
		// 구분설정
		sCode := asg_Br_Charge.DataController.Values[Arow, 16];
		sSubCode := Copy(sCode, 1, 2);
		if (sSubCode = 'CC') or (sSubCode = 'CA') then
			iIndex := 0
		else if sSubCode = 'CD' then
			iIndex := 1
		else if sSubCode = 'CT' then
			iIndex := 2
		else if sSubCode = 'SM' then
			iIndex := 3;
		ed_charge_cd.Text := sCode;
		cb_Charge_Gubun.ItemIndex := iIndex;
    cb_Charge_GubunClick(cb_Charge_Gubun);

		sChargeNm := vlChargeGroup.Values[sCode];
		cb_charge_name.ItemIndex := cb_charge_name.Properties.Items.IndexOf(sChargeNm);

		// 구분설정2
		sCode2 := asg_Br_Charge.DataController.Values[Arow, 17];
		sSubCode2 := Copy(sCode2, 1, 2);
		if (sSubCode2 = 'CC') or (sSubCode2 = 'CA') then
			iIndex := 0
		else if sSubCode2 = 'CD' then
			iIndex := 1
		else if sSubCode2 = 'CT' then
			iIndex := 2
		else if sSubCode2 = 'SM' then
			iIndex := 3;
		ed_charge_cd2.Text := sCode2;
		cb_Charge_Gubun2.ItemIndex := iIndex;
    cb_Charge_Gubun2Click(cb_Charge_Gubun2);

		sChargeNm2 := vlChargeGroup2.Values[sCode2];
		cb_charge_name2.ItemIndex := cb_charge_name2.Properties.Items.IndexOf(sChargeNm2);

    // 2011.02.09 (8부터 +3)
    sFirstCd := asg_Br_Charge.DataController.Values[ARow, 18];
  	if sFirstCd <> '' then
  	begin
  		sFirstNm := vlChargeGroup.Values[sFirstCd];
  		if Copy(sFirstCd,1,2) = 'CF' then
  			cb_Charge_First.ItemIndex := cb_Charge_First.Properties.Items.IndexOf(sFirstNm)
  		else
  		if Copy(sFirstCd,1,2) = 'CP' then
  			cb_Charge_FirstD.ItemIndex := cb_Charge_FirstD.Properties.Items.IndexOf(sFirstNm)
  		else
  			cb_Charge_First.ItemIndex := cb_Charge_First.Properties.Items.IndexOf(sFirstNm)
  	end	else
  	begin
  		cb_Charge_First.ItemIndex := 0;
  		cb_Charge_FirstD.ItemIndex := 0;
  	end;

		// 2011.02.09 (8부터 +3)
		if asg_Br_Charge.DataController.Values[Arow, 19] = '' then
		begin
			RbRadioButton5.Checked := True;
			RbRadioButton5Click(RbRadioButton5);
			ed_passvalue.Text := asg_Br_Charge.DataController.Values[Arow, 9];
		end else
		begin
			RbRadioButton6.Checked := True;
			RbRadioButton5Click(RbRadioButton6);
			// 2011.02.09 (8부터 +3)
			sCode := asg_Br_Charge.DataController.Values[Arow, 20];
			if sCode <> '' then
			begin
				sChargeNm := vlChargeGroup.Values[sCode];
 				cb_Charge_PassG.ItemIndex := cb_Charge_PassG.Properties.Items.IndexOf(sChargeNm)
			end else
      begin
 				cb_Charge_PassG.ItemIndex := 0
			end;
			cb_Charge_Pass.ItemIndex := StrToIntDef(asg_Br_Charge.DataController.Values[Arow, 20], 0);
		end;

		cbb1.ItemIndex:=cbb1.Properties.Items.IndexOf(asg_Br_Charge.DataController.Values[Arow, 11]);
		if cbb1.itemindex=-1 then cbb1.ItemIndex:=0;

		tmp_StHour := StrToIntDef(Copy(asg_Br_Charge.DataController.Values[Arow, 12],1,2),0);
		tmp_StMin  := StrToIntDef(Copy(asg_Br_Charge.DataController.Values[Arow, 12],4,2),0);
		tmp_EdHour := StrToIntDef(Copy(asg_Br_Charge.DataController.Values[Arow, 13],1,2),0);
		tmp_EdMin  := StrToIntDef(Copy(asg_Br_Charge.DataController.Values[Arow, 13],4,2),0);
		edt_StHour.Text := FormatFloat('00',tmp_StHour);
		edt_StMin.Text  := FormatFloat('00',tmp_StMin);
		edt_EdHour.Text := FormatFloat('00',tmp_EdHour);
		edt_EdMin.Text  := FormatFloat('00',tmp_EdMin);
	end	else
	if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
	begin
		br_no.Text := asg_Br_Charge.DataController.Values[ARow, 15];
		// 구분설정
		sCode := asg_Br_Charge.DataController.Values[Arow, 16];
		sSubCode := Copy(sCode, 1, 2);
		if (sSubCode = 'CC') or (sSubCode = 'CA') then
			iIndex := 0
		else if sSubCode = 'CD' then
			iIndex := 1
		else if sSubCode = 'CT' then
			iIndex := 2
		else if sSubCode = 'SM' then
			iIndex := 3;
		ed_charge_cd.Text := sCode;
		cb_Charge_Gubun.ItemIndex := iIndex;

		sChargeNm := vlChargeGroup.Values[sCode];
		cb_charge_name.ItemIndex := cb_charge_name.Properties.Items.IndexOf(sChargeNm);

		// 구분설정2
		sCode2 := asg_Br_Charge.DataController.Values[Arow, 17];
		sSubCode2 := Copy(sCode2, 1, 2);
		if (sSubCode2 = 'CC') or (sSubCode2 = 'CA') then
			iIndex := 0
		else if sSubCode2 = 'CD' then
			iIndex := 1
		else if sSubCode2 = 'CT' then
			iIndex := 2
		else if sSubCode2 = 'SM' then
			iIndex := 3;
		ed_charge_cd2.Text := sCode2;
		cb_Charge_Gubun2.ItemIndex := iIndex;

		sChargeNm2 := vlChargeGroup2.Values[sCode2];
		cb_charge_name2.ItemIndex := cb_charge_name2.Properties.Items.IndexOf(sChargeNm2);

    // 2011.02.09 (8부터 +3)
    sFirstCd := asg_Br_Charge.DataController.Values[ARow, 18];
  	if sFirstCd <> '' then
  	begin
  		sFirstNm := vlChargeGroup.Values[sFirstCd];
  		if Copy(sFirstCd,1,2) = 'CF' then
  			cb_Charge_First.ItemIndex := cb_Charge_First.Properties.Items.IndexOf(sFirstNm)
  		else
  		if Copy(sFirstCd,1,2) = 'CP' then
  			cb_Charge_FirstD.ItemIndex := cb_Charge_FirstD.Properties.Items.IndexOf(sFirstNm)
  		else
  			cb_Charge_First.ItemIndex := cb_Charge_First.Properties.Items.IndexOf(sFirstNm)
  	end	else
  	begin
  		cb_Charge_First.ItemIndex := 0;
  		cb_Charge_FirstD.ItemIndex := 0;
  	end;

		// 2011.02.09 (8부터 +3)
		if asg_Br_Charge.DataController.Values[Arow, 19] = '' then
		begin
			RbRadioButton5.Checked := True;
			RbRadioButton5Click(RbRadioButton5);
			ed_passvalue.Text := asg_Br_Charge.DataController.Values[Arow, 9];
		end	else
		begin
			RbRadioButton6.Checked := True;
			RbRadioButton5Click(RbRadioButton6);
			// 2011.02.09 (8부터 +3)
			sCode := asg_Br_Charge.DataController.Values[Arow, 19];
			if sCode <> '' then
			begin
				sChargeNm := vlChargeGroup.Values[sCode];
        if Copy(sCode,1,2) = 'CP' then
  				cb_Charge_PassG.ItemIndex := cb_Charge_PassG.Properties.Items.IndexOf(sChargeNm)
        else
  				cb_Charge_First.ItemIndex := cb_Charge_First.Properties.Items.IndexOf(sChargeNm);
			end else
			begin
        if Copy(sCode,1,2) = 'CP' then
  				cb_Charge_PassG.ItemIndex := 0
        else
  				cb_Charge_First.ItemIndex := 0;
			end;
			cb_Charge_Pass.ItemIndex := StrToIntDef(asg_Br_Charge.DataController.Values[Arow, 20], 0);
		end;
		cbb1.ItemIndex:=cbb1.Properties.Items.IndexOf(asg_Br_Charge.DataController.Values[Arow, 11]);
		if cbb1.itemindex=-1 then cbb1.ItemIndex:=0;

		tmp_StHour := StrToIntDef(Copy(asg_Br_Charge.DataController.Values[Arow, 12],1,2),0);
		tmp_StMin  := StrToIntDef(Copy(asg_Br_Charge.DataController.Values[Arow, 12],4,2),0);
		tmp_EdHour := StrToIntDef(Copy(asg_Br_Charge.DataController.Values[Arow, 13],1,2),0);
		tmp_EdMin  := StrToIntDef(Copy(asg_Br_Charge.DataController.Values[Arow, 13],4,2),0);
		edt_StHour.Text := FormatFloat('00',tmp_StHour);
		edt_StMin.Text  := FormatFloat('00',tmp_StMin);
		edt_EdHour.Text := FormatFloat('00',tmp_EdHour);
		edt_EdMin.Text  := FormatFloat('00',tmp_EdMin);

    if asg_Br_Charge.DataController.Values[Arow, 8] = '사용' then rbDistNewY.Checked := True
                                                             else rbDistNewN.Checked := True;
  end;
end;

procedure TFrm_SET.asg_Chart_chargeColumn7PropertiesChange(
  Sender: TObject);
begin
  asg_Chart_charge.DataController.Values[asg_Chart_charge.DataController.FocusedRecordIndex, 9] := 'U';
  bChartChargeModify := True;
end;

procedure TFrm_SET.cxButton20Click(Sender: TObject);
var
  i: Integer;
  fc_cd: string;
begin
  fc_cd := lbChartCd.Items[cbChartName.ItemIndex];
  if (fc_cd = 'CC001') or (fc_cd = 'CC002') or (fc_cd = 'CC003') then
  begin
    GMessagebox('표준요금표는 수정할수 없습니다.', CDMSE);
    Exit;
  end;

  if ed_chart_modify.Value < 1 then
  begin
    GMessagebox('[선택요금수정]의 요금을 확인해 주세요.', CDMSE);
    ed_chart_modify.SetFocus;
    Exit;
  end;

  if (Trim(ed_chart_modify.Text) <> '') and
    (StrToIntDef(Trim(ed_chart_modify.Text), -1000) <> -1000) then
  begin
    asg_Chart_charge.BeginUpdate;
    if asg_Chart_charge.DataController.GetSelectedCount = 1 then
    begin
      i := asg_Chart_charge.DataController.FocusedRecordIndex;
      asg_Chart_charge.DataController.Values[i, 7] := Trim(ed_chart_modify.Text);
      asg_Chart_charge.DataController.Values[i, 9] := 'U';
    end else
    begin
      for i := 0 to asg_Chart_charge.DataController.RecordCount - 1 do
      begin
        if asg_Chart_charge.ViewData.Records[i].Selected then // ok
        begin
          asg_Chart_charge.ViewData.Records[I].Values[7] := Trim(ed_chart_modify.Text);
          asg_Chart_charge.ViewData.Records[I].Values[9] := 'U';
        end;
      end;
    end;
    asg_Chart_charge.EndUpdate;
    bChartChargeModify := True;
  end;
end;

procedure TFrm_SET.cxButton21Click(Sender: TObject);
var
  sExe, sFile: string;
  TextFile : TStringList;
begin
  if cbChartName.ItemIndex = -1 then
  begin
    GMessagebox('요금제를 먼저 선택하세요.', CDMSI);
    Exit;
  end;

  if OpenDialog1.Execute then
  begin
		sFile := OpenDialog1.FileName;
    sExe := UpperCase(ExtractFileExt(sFile));

    // 자료가 70만건 이상이면 별도 옵션 처리  LYB  20120719
    if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
    begin
      if (sExe = '.XLS') or (sExe = '.XLSX') then
      begin
        func_ExcelTocxGrid(sFile, asg_Chart_charge, cxProgressBar1);
      end else
      if (sExe = '.TXT') or (sExe = '.CSV') then
      begin
        try
          TextFile := TStringList.Create;
          TextFile.LoadFromFile(sFile);

          if TextFile.Count > 700000 then
          begin
            pnl_Option.Left := (Frm_Main.Width - pnl_Option.Width) div 2;
            pnl_Option.top := (Frm_Main.Height - pnl_Option.Height) div 2;
            Gauge2.Progress := 0;
            cxGroupBox2.Caption := '   70만건 이상 옵션 : ' + FormatFloat('#,', TextFile.Count) + ' 건';
            cxGroupBox2.Tag := TextFile.Count;  // 건수저장
            Rb_Save.Caption := 'DB 저장 ['+ cbChartName.Text + ']';
            Rb_Save.Checked := True;            
						Rb_Save.Hint := 'D';
            pnl_Option.Visible := True;
            pnl_Option.Hint := 'C';
						Lbl_sFile.Caption := sFile;
            Lbl_sExe.Caption := sExe;
            pnl_Option.BringToFront;
          end else
          begin
            func_TxtTocxGrid(sFile, asg_Chart_charge, cxProgressBar1);
          end;
        finally
          FreeAndNil(TextFile);
        end;
      end;
    end else
    begin
      if (sExe = '.XLS') or (sExe = '.XLSX') then
        func_ExcelTocxGrid(sFile, asg_Chart_charge, cxProgressBar1)
      else if (sExe = '.TXT') or (sExe = '.CSV') then
        func_TxtTocxGrid(sFile, asg_Chart_charge, cxProgressBar1);
    end;
  end;
end;

procedure TFrm_SET.cxButton22Click(Sender: TObject);
begin
  if asg_Chart_charge.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.SET_ExcelDown <> '1') then
	begin
		ShowMessage('[엑셀다운로드[설정메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

  Frm_Main.sgExcel := '요금표.xls';
  Frm_Main.sgRpExcel := Format('요금제편집>요금표]%s건', [GetMoneyStr(asg_Chart_charge.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGrid3;
  Frm_Main.cxGridDBViewExcel := asg_Chart_charge;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(3);
end;

procedure TFrm_SET.asg_chart_edSelectionChanged(
  Sender: TcxCustomGridTableView);
begin
  if not bAreaChange then
  begin
    proc_Query('CHARTSELECT');
  end;
end;

procedure TFrm_SET.asg_chart_stSelectionChanged(
  Sender: TcxCustomGridTableView);
begin
  if not bAreaChange then
  begin
    proc_Query('CHARTSELECT');
  end;
end;

procedure TFrm_SET.cb_chart_stcityClick(Sender: TObject);
begin
  if not bAreaChange then
  begin
    city_ward(cb_chart_stcity, cb_chart_stward, asg_chart_st);
    proc_Query('CHARTSELECT');
  end;
end;

procedure TFrm_SET.cb_BCharge_GubunClick(Sender: TObject);
begin
  if not bAreaChange then
  begin
    ed_Bcharge_cd.Text := '';
    proc_Query('SELECTBGCHARGE', 1);
    cxBPageControl3.ActivePageIndex := cb_BCharge_Gubun.ItemIndex;
  end;
end;

procedure TFrm_SET.cb_Bcharge_nameClick(Sender: TObject);
begin
	if cb_Bcharge_name.itemindex > -1 then ed_Bcharge_cd.Text := lbBChargeCd.Items.Strings[cb_Bcharge_name.itemindex];
end;

procedure TFrm_SET.cb_Charge_FirstClick(Sender: TObject);
begin
	if cb_Charge_First.ItemIndex > 0 then
	begin
		cb_Charge_FirstD.ItemIndex := 0;
	end;
end;

procedure TFrm_SET.cb_Charge_FirstDClick(Sender: TObject);
begin
	if cb_Charge_FirstD.ItemIndex > 0 then
	begin
		cb_Charge_First.ItemIndex := 0;
	end;
end;

procedure TFrm_SET.cb_Charge_Gubun2Click(Sender: TObject);
begin
	if not bAreaChange then
	begin
		ed_charge_cd2.Text := '';
		proc_Query('SELECTCHARGE', 2);
		cxPageControl3.ActivePageIndex := cb_Charge_Gubun2.ItemIndex;
	end;
end;

procedure TFrm_SET.cb_Charge_GubunClick(Sender: TObject);
begin
  if not bAreaChange then
  begin
    ed_charge_cd.Text := '';
    proc_Query('SELECTCHARGE', 1);
    cxPageControl3.ActivePageIndex := cb_Charge_Gubun.ItemIndex;
  end;
end;

procedure TFrm_SET.cb_charge_name2Click(Sender: TObject);
begin
	if cb_charge_name2.itemindex > -1 then ed_charge_cd2.Text := lbChargeCd2.Items.Strings[cb_charge_name2.itemindex];
end;

procedure TFrm_SET.cb_charge_nameClick(Sender: TObject);
begin
	if cb_charge_name.itemindex > -1 then ed_charge_cd.Text := lbChargeCd.Items.Strings[cb_charge_name.itemindex];
end;

procedure TFrm_SET.cb_chart_edcityClick(Sender: TObject);
begin
  if not bAreaChange then
  begin
    city_ward(cb_chart_edcity, cb_chart_edward, asg_chart_ed);
    proc_Query('CHARTSELECT');
  end;
end;

procedure TFrm_SET.cb_chart_stwardClick(Sender: TObject);
begin
  if not bAreaChange then
  begin
    proc_dong(cb_chart_stcity, cb_chart_stward, asg_chart_st);
    proc_Query('CHARTSELECT');
  end;
end;

procedure TFrm_SET.cb_chart_edwardClick(Sender: TObject);
begin
  if not bAreaChange then
  begin
    proc_dong(cb_chart_edcity, cb_chart_edward, asg_chart_ed);
    proc_Query('CHARTSELECT');
  end;
end;

procedure TFrm_SET.cb_dis_stcityClick(Sender: TObject);
begin
  if not bAreaChange then
  begin
    city_ward(cb_dis_stcity, cb_dis_stward, asg_dis_st);
    proc_Query('DISSELECT');
  end;
end;

procedure TFrm_SET.cb_dis_edcityClick(Sender: TObject);
begin
  if not bAreaChange then
  begin
    city_ward(cb_dis_edcity, cb_dis_edward, asg_dis_ed);
    proc_Query('DISSELECT');
  end;
end;

procedure TFrm_SET.cb_dis_stwardClick(Sender: TObject);
begin
  if not bAreaChange then
  begin
    proc_dong(cb_dis_stcity, cb_dis_stward, asg_dis_st);
    proc_Query('DISSELECT');
  end;
end;

procedure TFrm_SET.cb_dis_edwardClick(Sender: TObject);
begin
  if not bAreaChange then
  begin
    proc_dong(cb_dis_edcity, cb_dis_edward, asg_dis_ed);
    proc_Query('DISSELECT');
  end;
end;

procedure TFrm_SET.cb_term_stcityClick(Sender: TObject);
begin
  if not bAreaChange then
  begin
    city_ward(cb_term_stcity, cb_term_stward, asg_term_st);
    proc_Query('TERMSELECT');
  end;
end;

procedure TFrm_SET.cb_term_stwardClick(Sender: TObject);
begin
  if not bAreaChange then
  begin
    proc_dong(cb_term_stcity, cb_term_stward, asg_term_st);
    proc_Query('TERMSELECT');
  end;
end;

procedure TFrm_SET.chkAllClick(Sender: TObject);
begin
  chkDefault.Checked := chkAll.Checked;
  chkType1  .Checked := chkAll.Checked;
  chkType2  .Checked := chkAll.Checked;
  chkType3  .Checked := chkAll.Checked;
  chkType4  .Checked := chkAll.Checked;
end;

procedure TFrm_SET.chkDefaultPropertiesChange(Sender: TObject);
begin
  if chkDefault.Checked then tlEAddrSet.Bands[2].Styles.Content := cxStyleDefault
                        else tlEAddrSet.Bands[2].Styles.Content := nil;
end;

procedure TFrm_SET.chkType1PropertiesChange(Sender: TObject);
begin
  if chkType1.Checked then tlEAddrSet.Bands[3].Styles.Content := cxStyleType1
                      else tlEAddrSet.Bands[3].Styles.Content := nil;
end;

procedure TFrm_SET.chkType2PropertiesChange(Sender: TObject);
begin
  if chkType2.Checked then tlEAddrSet.Bands[4].Styles.Content := cxStyleType2
                      else tlEAddrSet.Bands[4].Styles.Content := nil;
end;

procedure TFrm_SET.chkType3PropertiesChange(Sender: TObject);
begin
  if chkType3.Checked then tlEAddrSet.Bands[5].Styles.Content := cxStyleType3
                      else tlEAddrSet.Bands[5].Styles.Content := nil;
end;

procedure TFrm_SET.chkType4PropertiesChange(Sender: TObject);
begin
  if chkType4.Checked then tlEAddrSet.Bands[6].Styles.Content := cxStyleType4
                      else tlEAddrSet.Bands[6].Styles.Content := nil;
end;

procedure TFrm_SET.cb_term_edcityClick(Sender: TObject);
begin
  if not bAreaChange then
  begin
    city_ward(cb_term_edcity, cb_term_edward, asg_term_ed);
    proc_Query('TERMSELECT');
  end;
end;

procedure TFrm_SET.cb_term_edwardClick(Sender: TObject);
begin
  if not bAreaChange then
  begin
		proc_dong(cb_term_edcity, cb_term_edward, asg_term_ed);
    proc_Query('TERMSELECT');
  end;
end;

procedure TFrm_SET.cxButton23Click(Sender: TObject);
var
  fc_cd: string;
begin
	if cbChartName.ItemIndex = -1 then Exit;
  
  fc_cd := lbChartCd.Items[cbChartName.ItemIndex];
  if (fc_cd = 'CC001') or (fc_cd = 'CC002') or (fc_cd = 'CC003') then
  begin
    GMessagebox('표준요금표는 수정할수 없습니다.', CDMSI);
    Exit;
  end;
	if GMessagebox('선택한 요금을 삭제하시겠습니까?' + #10#13 + '삭제된 내용은 복구되지 않습니다', CDMSQ) = idok then
	  proc_Query('CHARTDELETE', 1);
end;

procedure TFrm_SET.cxButton24Click(Sender: TObject);
var
  fc_cd: string;
begin
  if cbChartName.ItemIndex = -1 then
  begin
    GMessagebox('요금제를 먼저 선택하세요.', CDMSI);
    Exit;
  end;

  fc_cd := lbChartCd.Items[cbChartName.ItemIndex];
  if (fc_cd = 'CC001') or (fc_cd = 'CC002') or (fc_cd = 'CC003') then
  begin
    GMessagebox('표준요금표는 삭제할수 없습니다.', CDMSI);
    Exit;
  end;
  if GMessagebox(cbChartName.Text + '요금제를 삭제하시겠습니까?' + CRLF +
                 '삭제한 요금제 전체 데이터는 복구 불가능 합니다.', CDMSQ) = idok then
    proc_Query('CHARTDELETE', 0);

  asg_Chart_charge.DataController.SetRecordCount(0);
end;

procedure TFrm_SET.cxButton25Click(Sender: TObject);
var
  fc_cd: string;
begin
  if cbChartName.ItemIndex = -1 then
  begin
    GMessagebox('요금제를 먼저 선택하세요.', CDMSI);
    Exit;
  end;

  fc_cd := lbChartCd.Items[cbChartName.ItemIndex];
  if (fc_cd = 'CC001') or (fc_cd = 'CC002') or (fc_cd = 'CC003') then
  begin
    GMessagebox('표준요금표는 수정할수 없습니다.', CDMSI);
    Exit;
  end;

  proc_Query('CHARTINSERT');
end;

function TFrm_SET.func_Max_Sn(sGubun, sCode: string): string;
var
  sQuery: string;
begin
  Result := '1';
  sQuery := 'select max(' + sGubun + '_NO) SN FROM %s WHERE ' + sGubun +
    '_CD = ''' + sCode + ''' ';

  if sGubun = 'CC' then sQuery := Format(sQuery, ['CDMS_CHART_CHARGE']) else
  if sGubun = 'DC' then sQuery := Format(sQuery, ['CDMS_DIS_CHARGE'])  else
  if sGubun = 'FC' then sQuery := Format(sQuery, ['CDMS_FIRST_CHARGE']) else
  if sGubun = 'FP' then sQuery := Format(sQuery, ['CDMS_FIRST_DETAIL_CHARGE']) else
  if sGubun = 'TC' then sQuery := Format(sQuery, ['CDMS_TERM_CHARGE']);

  if CHARGE_GUBUN = 'P' then
  begin
		dmCharge.proc_SQLite_init;
		dmCharge.FDQuery_SQLite.Close;
		dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
		dmCharge.FDQuery_SQLite.OPEN;
		if dmCharge.FDQuery_SQLite.EOF then
      Result := '1'
    else
			Result := IntToStr(StrToIntDef(dmCharge.FDQuery_SQLite.Fields[0].AsString, 0) + 1);
  end else
  if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
  begin
    if sGubun = 'DC' then
      sQuery := StringReplace(sQuery, '_CHARGE', 'TANCE', [rfReplaceAll])
    else
      sQuery := StringReplace(sQuery, '_CHARGE', '', [rfReplaceAll]);
    dmCharge.proc_mysql_init;
    dmCharge.FDQuery1.Close;
    dmCharge.FDQuery1.SQL.Text := sQuery;
    dmCharge.FDQuery1.Open;
    if dmCharge.FDQuery1.IsEmpty then
      Result := '1'
    else
      Result := IntToStr(StrToIntDef(dmCharge.FDQuery1.Fields[0].AsString, 0) + 1);
  end;
end;

procedure TFrm_SET.cxButton26Click(Sender: TObject);
begin
	ed_charge_NewName.Text := '';
	pnl_ReName.Left := (Frm_Main.Width - pnl_ReName.Width) div 2;
	pnl_ReName.top := (Frm_Main.Height - pnl_ReName.Height) div 2;
	Gauge1.Progress := 0;
	pnl_ReName.Visible := True;
	pnl_ReName.BringToFront;
	ed_charge_NewName.SetFocus;
end;

procedure TFrm_SET.cxButton57Click(Sender: TObject);
begin
	if ed_charge_NewName.Text = '' then
  begin
    GMessagebox('요금제명을 입력해주세요.', CDMSI);
    ed_charge_NewName.SetFocus;
    Exit;
  end;

	case cxPageControl2.ActivePageIndex of
		0: proc_Query('CHARTNEWINSERT', 1);
		1: proc_Query('DISNEWINSERT'  , 1);
		2: proc_Query('TERMNEWINSERT' , 1);
		3: proc_Query('FIRSTNEWINSERT', 1);
		4: proc_Query('FIRSTDETAILNEWINSERT', 1);
	end;
	pnl_ReName.Visible := False;
end;

procedure TFrm_SET.cxButton58Click(Sender: TObject);
begin
  pnl_ReName.Visible := False;
end;

procedure TFrm_SET.btnPeakClick(Sender: TObject);
begin
  if Not Assigned(Frm_SET02) Or ( Frm_SET02 = Nil ) then Frm_SET02 := TFrm_SET02.Create(Self);
  Frm_SET02.lblSosokName.Caption := cboBranch.Text;
  Frm_SET02.FBrNo := FBrNoList[cboBranch.ItemIndex];
  Frm_SET02.Show;
end;

procedure TFrm_SET.btnGetListClick(Sender: TObject);
begin
  pGetComponentListSET;
end;

procedure TFrm_SET.cxButton27Click(Sender: TObject);
var
  sFile, sExe: string;
begin
  if cbDisName.ItemIndex = -1 then
  begin
    GMessagebox('요금제를 먼저 선택하세요.', CDMSI);
    Exit;
  end;

  if OpenDialog1.Execute then
  begin
    sFile := OpenDialog1.FileName;
    sExe := UpperCase(ExtractFileExt(sFile));
    if (sExe = '.XLS') or (sExe = '.XLSX') then
      func_ExcelTocxGrid(sFile, asg_mod_dis, cxProgressBar2)
    else if (sExe = '.TXT') or (sExe = '.CSV') then
      func_TxtTocxGrid(sFile, asg_mod_dis, cxProgressBar2);
  end;
end;

procedure TFrm_SET.cbDisNameClick(Sender: TObject);
begin
  if not bAreaChange then
  begin
    proc_Query('DISSELECT');
  end;
end;

procedure TFrm_SET.cxButton31Click(Sender: TObject);
begin
  if cbDisName.ItemIndex = -1 then
  begin
    GMessagebox('요금제를 먼저 선택하세요.', CDMSI);
    Exit;
  end;

  proc_Query('DISINSERT');
end;

procedure TFrm_SET.cxButton33Click(Sender: TObject);
var
	area, sArea1, sArea2, sArea3, dArea1, dArea2, dArea3, fc_cd, sSubType, sQuery, sTable: string;
  iRow, i, iLowValue, iGerTerm, iGerValue, iOverTerm, iOverValue, iMax, iArea: Integer;
  sList, slArea, slAreaDetail: TStringList;
begin
  try
    if cbDisName.Text = '' then
    begin
      GMessagebox('요금제를 먼저 선택하세요', cdmsi);
      Exit;
    end;

    if ed_lowvalue.Value < 1 then
    begin
      GMessagebox('[최저요금]을 확인해 주세요.', CDMSI);
      ed_lowvalue.SetFocus;
      Exit;
    end;

    if ed_dis_gerterm.Value < 1 then
    begin
      GMessagebox('[기본거리]를 확인해 주세요.', CDMSI);
      ed_dis_gerterm.SetFocus;
      Exit;
    end;

    if ed_dis_gervalue.Value < 1 then
    begin
      GMessagebox('[기본요금]을 확인해 주세요.', CDMSI);
      ed_dis_gervalue.SetFocus;
      Exit;
    end;

    if ed_dis_overterm.Value < 1 then
    begin
      GMessagebox('[추가거리]를 확인해 주세요.', CDMSI);
      ed_dis_overterm.SetFocus;
      Exit;
    end;

    if ed_dis_overvalue.Value < 1 then
    begin
      GMessagebox('[추가요금]을 확인해 주세요.', CDMSI);
      ed_dis_overvalue.SetFocus;
      Exit;
    end;

    sList := TStringList.Create;
    sList.Clear;

    slArea := TStringList.Create;
    slAreaDetail := TStringList.Create;
    iArea := asg_mod_dis.GetColumnByFieldName('지역').Index;
    slArea.Assign(func_Select_Area(cb_dis_stcity, cb_dis_stward,
      cb_dis_edcity, cb_dis_edward, asg_dis_st, asg_dis_ed, rchk_dis_same));

    if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then sTable := 'CDMS_DISTANCE' else
    if CHARGE_GUBUN = 'P' then sTable := 'CDMS_DIS_CHARGE';

    iLowValue := StrToIntDef(StringReplace(Trim(ed_lowvalue.Text), ',', '', [rfReplaceAll]), 0);
    iGerTerm := StrToIntDef(StringReplace(Trim(ed_dis_gerterm.Text), ',', '', [rfReplaceAll]), 0);
    iGerValue := StrToIntDef(StringReplace(Trim(ed_dis_gervalue.Text), ',', '', [rfReplaceAll]), 0);
    iOverTerm := StrToIntDef(StringReplace(Trim(ed_dis_overterm.Text), ',', '', [rfReplaceAll]), 0);
    iOverValue := StrToIntDef(StringReplace(Trim(ed_dis_overvalue.Text), ',', '', [rfReplaceAll]), 0);

    fc_cd := lbDisCd.Items.Strings[cbDisName.itemIndex];
    sSubType := 'DC';

    cxProgressBar2.Progress := 0;
    cxProgressBar2.MaxValue := slArea.Count - 1;

    asg_mod_dis.BeginUpdate;
    for i := 0 to slArea.Count - 1 do
    begin
      cxProgressBar2.Progress := cxProgressBar2.Progress + 1;
      Application.ProcessMessages;

      slAreaDetail.CommaText := slArea[i];
      sArea1 := slAreaDetail[0];
      sArea2 := slAreaDetail[1];
      sArea3 := slAreaDetail[2];
      dArea1 := slAreaDetail[3];
      dArea2 := slAreaDetail[4];
      dArea3 := slAreaDetail[5];
      area := sArea1 + sArea2 + sArea3 + dArea1 + dArea2 + dArea3;
      iRow := asg_mod_dis.DataController.FindRecordIndexByText(0, iArea,
        Area, True, False, True);
      //수정 2008.07.13
      if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
      begin
        sQuery := 'SELECT * FROM ' + sTable + ' WHERE ' + sSubType + '_CD = '''
          + fc_cd + ''' '
          + 'AND ' + sSubType + '_STCITY = ''' + sArea1 + ''' AND ' +
          sSubType + '_STWARD = ''' + sArea2 + ''' AND ' + sSubType +
          '_STDONG = ''' + sArea3 + ''' '
          + 'AND ' + sSubType + '_EDCITY = ''' + dArea1 + ''' AND ' +
          sSubType + '_EDWARD = ''' + dArea2 + ''' AND ' + sSubType +
          '_EDDONG = ''' + dArea3 + ''' ';
        dmCharge.proc_mysql_init;
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.open;

        if not dmCharge.FDQuery1.IsEmpty then
        begin
          sQuery := 'DELETE FROM ' + sTable + ' WHERE ' + sSubType +
            '_CD = ''' + fc_cd + ''' '
            + 'AND ' + sSubType + '_STCITY = ''' + sArea1 + ''' AND ' +
            sSubType + '_STWARD = ''' + sArea2 + ''' AND ' + sSubType +
            '_STDONG = ''' + sArea3 + ''' '
            + 'AND ' + sSubType + '_EDCITY = ''' + dArea1 + ''' AND ' +
            sSubType + '_EDWARD = ''' + dArea2 + ''' AND ' + sSubType +
            '_EDDONG = ''' + dArea3 + ''' ';
          dmCharge.proc_mysql_init('update');
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.ExecSQL;
        end;
//        dmCharge.proc_mysql_init;
//        dmCharge.FDQuery1.Close;
//        dmCharge.FDQuery1.SQL.Text := 'SELECT MAX(' + sSubType + '_NO) FROM ' +
//          sTable + ' WHERE ' + sSubType + '_CD = ''' + fc_cd + ''' ';
//        dmCharge.FDQuery1.open;
//        iMax := StrtoIntDef(dmCharge.FDQuery1.fields[0].AsString, 0) + 1;

        sQuery := 'INSERT INTO ' + sTable + ' (' + sSubType + '_CD,' + sSubType + '_LOWVALUE '
          + ',' + sSubType + '_GERTERM,' + sSubType + '_GERVALUE,' +
          sSubType + '_OVERTERM,' + sSubType + '_OVERVALUE '
          + ',' + sSubType + '_STCITY,' + sSubType + '_STWARD,' + sSubType +
          '_STDONG,' + sSubType + '_EDCITY,' + sSubType + '_EDWARD,' +
          sSubType + '_EDDONG) '
          + ' VALUES '
          + '(''' + fc_cd + ''',' + IntToStr(iLowValue) + ',' + IntToStr(iGerTerm) + ',' +
          IntToStr(iGerValue) + ' '
          + ',' + IntToStr(iOverTerm) + ',' + IntToStr(iOverValue) + ','''
          + sArea1 + ''',''' + sArea2 + ''',''' + sArea3 + ''' '
          + ',''' + dArea1 + ''',''' + dArea2 + ''',''' + dArea3 + ''')';
        dmCharge.proc_mysql_init('update');
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.ExecSQL;
      end else
      if CHARGE_GUBUN = 'P' then
      begin
        sQuery := 'SELECT * FROM ' + sTable + ' WHERE ' + sSubType + '_CD = '''
          + fc_cd + ''' '
          + 'AND ' + sSubType + '_STCITY = ''' + sArea1 + ''' AND ' +
          sSubType + '_STWARD = ''' + sArea2 + ''' AND ' + sSubType +
          '_STDONG = ''' + sArea3 + ''' '
          + 'AND ' + sSubType + '_EDCITY = ''' + dArea1 + ''' AND ' +
          sSubType + '_EDWARD = ''' + dArea2 + ''' AND ' + sSubType +
          '_EDDONG = ''' + dArea3 + ''' ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.OPEN;
				if not dmCharge.FDQuery_SQLite.EOF then
				begin
          sQuery := 'DELETE FROM ' + sTable + ' WHERE ' + sSubType +
            '_CD = ''' + fc_cd + ''' '
            + 'AND ' + sSubType + '_STCITY = ''' + sArea1 + ''' AND ' +
						sSubType + '_STWARD = ''' + sArea2 + ''' AND ' + sSubType +
            '_STDONG = ''' + sArea3 + ''' '
            + 'AND ' + sSubType + '_EDCITY = ''' + dArea1 + ''' AND ' +
            sSubType + '_EDWARD = ''' + dArea2 + ''' AND ' + sSubType +
            '_EDDONG = ''' + dArea3 + ''' ';
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.ExecSQL;
        end;
				sQuery := 'SELECT MAX(' + sSubType + '_NO) FROM ' + sTable + ' WHERE ' + sSubType + '_CD = ''' + fc_cd + ''' ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.OPEN;
				iMax := StrtoIntDef(dmCharge.FDQuery_SQLite.Fields[0].AsString, 0) + 1;
				sQuery := 'INSERT INTO ' + sTable + ' (' + sSubType + '_NO,' + sSubType
					+ '_CD,' + sSubType + '_LOWVALUE '
          + ',' + sSubType + '_GERTERM,' + sSubType + '_GERVALUE,' +
          sSubType + '_OVERTERM,' + sSubType + '_OVERVALUE '
          + ',' + sSubType + '_STCITY,' + sSubType + '_STWARD,' + sSubType +
          '_STDONG,' + sSubType + '_EDCITY,' + sSubType + '_EDWARD,' +
          sSubType + '_EDDONG) '
          + ' VALUES '
          + '(' + IntToStr(iMax) + ',''' + fc_cd + ''',' +
          IntToStr(iLowValue) + ',' + IntToStr(iGerTerm) + ',' +
          IntToStr(iGerValue) + ' '
          + ',' + IntToStr(iOverTerm) + ',' + IntToStr(iOverValue) + ','''
          + sArea1 + ''',''' + sArea2 + ''',''' + sArea3 + ''' '
          + ',''' + dArea1 + ''',''' + dArea2 + ''',''' + dArea3 + ''')';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.ExecSQL;
			end;
      if iRow = -1 then
        iRow := asg_mod_dis.DataController.AppendRecord;
      asg_mod_dis.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
      asg_mod_dis.DataController.Values[iRow, 1] := sArea1;
      asg_mod_dis.DataController.Values[iRow, 2] := sArea2;
      asg_mod_dis.DataController.Values[iRow, 3] := sArea3;
      asg_mod_dis.DataController.Values[iRow, 4] := dArea1;
      asg_mod_dis.DataController.Values[iRow, 5] := dArea2;
      asg_mod_dis.DataController.Values[iRow, 6] := dArea3;
      asg_mod_dis.DataController.Values[iRow, 7] := FormatFloat('#,##0', StrToFloatDef(IntToStr(iLowValue), 0.0));
      asg_mod_dis.DataController.Values[iRow, 8] := FormatFloat('#,##0', StrToFloatDef(IntToStr(iGerTerm), 0.0));
      asg_mod_dis.DataController.Values[iRow, 9] := FormatFloat('#,##0', StrToFloatDef(IntToStr(iGerValue), 0.0));
      asg_mod_dis.DataController.Values[iRow, 10] := FormatFloat('#,##0', StrToFloatDef(IntToStr(iOverTerm), 0.0));
      asg_mod_dis.DataController.Values[iRow, 11] := FormatFloat('#,##0', StrToFloatDef(IntToStr(iOverValue), 0.0));
      asg_mod_dis.DataController.Values[iRow, 12] := Area;
      asg_mod_dis.DataController.Values[iRow, 13] := 'S';
    end;
    asg_mod_dis.EndUpdate;
    cxProgressBar2.Progress := 0;
    GMessagebox('저장하였습니다', CDMSI);
  except
    GMessagebox('실패하였습니다', CDMSI);
  end;
end;

procedure TFrm_SET.cxButton28Click(Sender: TObject);
begin
  if asg_mod_dis.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.SET_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[설정메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

  Frm_Main.sgExcel := '거리요금표.xls';
  Frm_Main.sgRpExcel := Format('요금제편집>거리]%s건', [GetMoneyStr(asg_mod_dis.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGrid6;
  Frm_Main.cxGridDBViewExcel := asg_mod_dis;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(4);
end;

procedure TFrm_SET.cxButton29Click(Sender: TObject);
begin
	if cbDisName.ItemIndex = -1 then  Exit;
	if GMessagebox('선택한 요금을 삭제하시겠습니까?' + #10#13 + '삭제된 내용은 복구되지 않습니다', CDMSQ) = idok then
	  proc_Query('DISDELETE', 1);
end;

procedure TFrm_SET.cxButton2Click(Sender: TObject);
begin
	pnlCIDXESet.Visible := False;
end;

procedure TFrm_SET.cxButton30Click(Sender: TObject);
begin
  if cbDisName.ItemIndex = -1 then
  begin
    GMessagebox('요금제를 먼저 선택하세요.', CDMSI);
    Exit;
  end;
  
  if GMessagebox(cbDisName.Text + '요금제를 삭제하시겠습니까?' + CRLF +
                 '삭제한 요금제 전체 데이터는 복구 불가능 합니다.', CDMSQ) = idok then
    proc_Query('DISDELETE', 0);

  asg_mod_dis.DataController.SetRecordCount(0);
end;

procedure TFrm_SET.cxButton41Click(Sender: TObject);
begin
  proc_Query('DISNEWINSERT');
end;

procedure TFrm_SET.cb_First_stcityClick(Sender: TObject);
begin
	if not bAreaChange then
	begin
		city_ward(cb_first_stcity, cb_First_stward, asg_First_st);
		proc_Query('FIRSTSELECT');
	end;
end;

procedure TFrm_SET.asg_dis_stSelectionChanged(
  Sender: TcxCustomGridTableView);
begin
  if not bAreaChange then
  begin
    proc_Query('DISSELECT');
  end;
end;

procedure TFrm_SET.asg_dis_edSelectionChanged(
  Sender: TcxCustomGridTableView);
begin
  if not bAreaChange then
  begin
    proc_Query('DISSELECT');
  end;
end;

procedure TFrm_SET.cbTermNameClick(Sender: TObject);
begin
	if not bAreaChange then
  begin
		proc_Query('TERMSELECT');
	end;
end;

procedure TFrm_SET.cxButton39Click(Sender: TObject);
begin
  if cbTermName.ItemIndex = -1 then
  begin
    GMessagebox('요금제를 먼저 선택하세요.', CDMSI);
    Exit;
  end;

  proc_Query('TERMINSERT');
end;

procedure TFrm_SET.cxButton3Click(Sender: TObject);
begin
	if cb_term_type4.ItemIndex = -1 then Exit;
	if GMessagebox('선택한 요금에  구간타입을 일괄 적용하시겠습니까??' , CDMSQ) = idok then
		proc_Query('TERMUPDATE', 1);
end;

procedure TFrm_SET.asg_term_stSelectionChanged(
  Sender: TcxCustomGridTableView);
begin
  if not bAreaChange then
  begin
    proc_Query('TERMSELECT');
  end;
end;

procedure TFrm_SET.asg_term_edSelectionChanged(
  Sender: TcxCustomGridTableView);
begin
  if not bAreaChange then
  begin
    proc_Query('TERMSELECT');
  end;
end;

procedure TFrm_SET.cxButton43Click(Sender: TObject);
begin
  proc_Query('TERMNEWINSERT');
end;

procedure TFrm_SET.rb_gervalue_saveClick(Sender: TObject);
var
  area, sArea1, sArea2, sArea3, dArea1, dArea2, dArea3, fc_cd, sSubType, sQuery, sTable, sSubCd, sPassCd: string;
  iRow, i, iValue, iMax, iArea: Integer;
  sList, slArea, slAreaDetail: TStringList;
begin
  try
    if cbTermName.Text = '' then
    begin
      GMessagebox('요금제를 먼저 선택하세요', cdmsi);
      Exit;
    end;

    if ed_bvalue.Value < 0 then
    begin
      GMessagebox('[기본요금]을 확인하세요.', CDMSI);
      ed_bvalue.SetFocus;
      Exit;
    end;

    sList := TStringList.Create;
    sList.Clear;

    slArea := TStringList.Create;
    slAreaDetail := TStringList.Create;

    iArea := asg_term_modify.GetColumnByFieldName('지역').Index;
    slArea.Assign(func_Select_Area(cb_term_stcity, cb_term_stward,
      cb_term_edcity, cb_term_edward, asg_term_st, asg_term_ed, rchk_same_term));

    if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then sTable := 'CDMS_TERM' else
    if CHARGE_GUBUN = 'P' then sTable := 'CDMS_TERM_CHARGE';

    if cb_term_type2.ItemIndex > -1 then
      sSubCd := lbTermTypeCd.Items.Strings[cb_term_type2.ItemIndex];
    if cb_term_type3.ItemIndex > -1 then
      sPassCd := lbTermTypeCd.Items.Strings[cb_term_type3.ItemIndex];
    iValue := StrToIntDef(StringReplace(Trim(ed_bvalue.Text), ',', '', [rfReplaceAll]), 0);

    fc_cd := lbTermCd.Items.Strings[cbTermName.itemIndex];
    sSubType := 'TC';

    cxProgressBar3.Progress := 0;
		cxProgressBar3.MaxValue := slArea.Count - 1;

    asg_term_modify.BeginUpdate;
    for i := 0 to slArea.Count - 1 do
    begin
      cxProgressBar3.Progress := cxProgressBar3.Progress + 1;
      Application.ProcessMessages;

      slAreaDetail.CommaText := slArea[i];
      sArea1 := slAreaDetail[0];
      sArea2 := slAreaDetail[1];
      sArea3 := slAreaDetail[2];
      dArea1 := slAreaDetail[3];
      dArea2 := slAreaDetail[4];
      dArea3 := slAreaDetail[5];
      area := sArea1 + sArea2 + sArea3 + dArea1 + dArea2 + dArea3;
      iRow := asg_term_modify.DataController.FindRecordIndexByText(0, iArea,
        Area, True, False, True);
      //수정 2008.07.13
      if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
      begin
        sQuery := 'SELECT * FROM ' + sTable + ' WHERE ' + sSubType + '_CD = ''' + fc_cd + ''' '
          + 'AND ' + sSubType + '_STCITY = ''' + sArea1 + ''' AND ' +
          sSubType + '_STWARD = ''' + sArea2 + ''' AND ' + sSubType +
          '_STDONG = ''' + sArea3 + ''' '
          + 'AND ' + sSubType + '_EDCITY = ''' + dArea1 + ''' AND ' +
          sSubType + '_EDWARD = ''' + dArea2 + ''' AND ' + sSubType +
          '_EDDONG = ''' + dArea3 + ''' ';
        dmCharge.proc_mysql_init;
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.open;

        if not dmCharge.FDQuery1.IsEmpty then
        begin
          sQuery := 'DELETE FROM ' + sTable + ' WHERE ' + sSubType +
            '_CD = ''' + fc_cd + ''' '
            + 'AND ' + sSubType + '_STCITY = ''' + sArea1 + ''' AND ' +
            sSubType + '_STWARD = ''' + sArea2 + ''' AND ' + sSubType +
            '_STDONG = ''' + sArea3 + ''' '
            + 'AND ' + sSubType + '_EDCITY = ''' + dArea1 + ''' AND ' +
            sSubType + '_EDWARD = ''' + dArea2 + ''' AND ' + sSubType +
            '_EDDONG = ''' + dArea3 + ''' ';
          dmCharge.proc_mysql_init('update');
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.ExecSQL;
        end;
//        dmCharge.proc_mysql_init;
//        dmCharge.FDQuery1.Close;
//        dmCharge.FDQuery1.SQL.Text := 'SELECT MAX(' + sSubType + '_NO) FROM ' +
//          sTable + ' WHERE ' + sSubType + '_CD = ''' + fc_cd + ''' ';
//        dmCharge.FDQuery1.open;
//        iMax := StrtoIntDef(dmCharge.FDQuery1.fields[0].AsString, 0) + 1;

        sQuery := 'INSERT INTO ' + sTable + ' (' + sSubType + '_CD,' + sSubType + '_VALUE ' + ',' +
          sSubType + '_SUB_CD,' + sSubType + '_BV,' + sSubType + '_PASS_CD '  + ',' +
          sSubType + '_STCITY,' + sSubType + '_STWARD,' + sSubType + '_STDONG,' +
          sSubType + '_EDCITY,' + sSubType + '_EDWARD,' + sSubType + '_EDDONG) '
          + ' VALUES '
          + '(''' + fc_cd + ''',0,''' + sSubCd + ''',' + IntToStr(iValue) + ' ' + ',''' + sPassCd + ''',''' +
            sArea1 + ''',''' + sArea2 + ''',''' + sArea3 + ''' ' + ',''' +
            dArea1 + ''',''' + dArea2 + ''',''' + dArea3 + ''')';
        dmCharge.proc_mysql_init('update');
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.ExecSQL;
      end else
      if CHARGE_GUBUN = 'P' then
      begin
        sQuery := 'SELECT * FROM ' + sTable + ' WHERE ' + sSubType + '_CD = '''
          + fc_cd + ''' '
          + 'AND ' + sSubType + '_STCITY = ''' + sArea1 + ''' AND ' +
          sSubType + '_STWARD = ''' + sArea2 + ''' AND ' + sSubType +
          '_STDONG = ''' + sArea3 + ''' '
          + 'AND ' + sSubType + '_EDCITY = ''' + dArea1 + ''' AND ' +
          sSubType + '_EDWARD = ''' + dArea2 + ''' AND ' + sSubType +
					'_EDDONG = ''' + dArea3 + ''' ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.OPEN;

				if not dmCharge.FDQuery_SQLite.EOF then
        begin
					sQuery := 'DELETE FROM ' + sTable + ' WHERE ' + sSubType + '_CD = ''' + fc_cd + ''' '
            + 'AND ' + sSubType + '_STCITY = ''' + sArea1 + ''' AND ' +
            sSubType + '_STWARD = ''' + sArea2 + ''' AND ' + sSubType +
            '_STDONG = ''' + sArea3 + ''' '
            + 'AND ' + sSubType + '_EDCITY = ''' + dArea1 + ''' AND ' +
            sSubType + '_EDWARD = ''' + dArea2 + ''' AND ' + sSubType +
            '_EDDONG = ''' + dArea3 + ''' ';
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.ExecSQL;
        end;
				sQuery := 'SELECT MAX(' + sSubType + '_NO) FROM ' +	sTable + ' WHERE ' + sSubType + '_CD = ''' + fc_cd + ''' ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.OPEN;
				iMax := StrtoIntDef(dmCharge.FDQuery_SQLite.fields[0].AsString, 0) + 1;
				sQuery := 'INSERT INTO ' + sTable + ' (' + sSubType + '_NO,' + sSubType
          + '_CD,' + sSubType + '_VALUE '
          + ',' + sSubType + '_SUB_CD,' + sSubType + '_BV,' + sSubType +
          '_PASS_CD '
          + ',' + sSubType + '_STCITY,' + sSubType + '_STWARD,' + sSubType +
          '_STDONG,' + sSubType + '_EDCITY,' + sSubType + '_EDWARD,' +
          sSubType + '_EDDONG) '
          + ' VALUES '
          + '(' + IntToStr(iMax) + ',''' + fc_cd + ''',0,''' + sSubCd +
          ''',''' + IntToStr(iValue) + ''' '
          + ',''' + sPassCd + ''',''' + sArea1 + ''',''' + sArea2 + ''','''
          + sArea3 + ''' '
          + ',''' + dArea1 + ''',''' + dArea2 + ''',''' + dArea3 + ''')';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.ExecSQL;
			end;
      if iRow = -1 then
        iRow := asg_term_modify.DataController.AppendRecord;
      asg_term_modify.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
      asg_term_modify.DataController.Values[iRow, 1] := sArea1;
      asg_term_modify.DataController.Values[iRow, 2] := sArea2;
      asg_term_modify.DataController.Values[iRow, 3] := sArea3;
      asg_term_modify.DataController.Values[iRow, 4] := dArea1;
      asg_term_modify.DataController.Values[iRow, 5] := dArea2;
      asg_term_modify.DataController.Values[iRow, 6] := dArea3;
      asg_term_modify.DataController.Values[iRow, 7] := FormatFloat('#,##0', StrToFloatDef(IntToStr(iValue), 0.0));
			asg_term_modify.DataController.Values[iRow, 8] := cb_term_type2.Text;
      asg_term_modify.DataController.Values[iRow, 9] := cb_term_type3.Text;
      asg_term_modify.DataController.Values[iRow, 10] := Area;
      asg_term_modify.DataController.Values[iRow, 11] := 'S';
    end;
    asg_term_modify.EndUpdate;
    cxProgressBar3.Progress := 0;
//    bChargeModify := False;
    GMessagebox('저장하였습니다', CDMSI);
  except
//    bChargeModify := False;
    GMessagebox('실패하였습니다', CDMSI);
  end;
end;

procedure TFrm_SET.rb_term_type_modClick(Sender: TObject);
begin
 if ( Not Assigned(Frm_SET07) ) Or ( Frm_SET07 = NIl ) then Frm_SET07 := TFrm_SET07.Create(Nil);
 Frm_SET07.Show;
end;

procedure TFrm_SET.cxButton35Click(Sender: TObject);
var
  sFile, sExe: string;
begin
  if cbTermName.ItemIndex = -1 then
  begin
    GMessagebox('요금제를 먼저 선택하세요.', CDMSI);
    Exit;
  end;

  if OpenDialog1.Execute then
  begin
    sFile := OpenDialog1.FileName;
    sExe := UpperCase(ExtractFileExt(sFile));
    if (sExe = '.XLS') or (sExe = '.XLSX') then
      func_ExcelTocxGrid(sFile, asg_term_modify, cxProgressBar3)
    else
    if (sExe = '.TXT') or (sExe = '.CSV') then
      func_TxtTocxGrid(sFile, asg_term_modify, cxProgressBar3);
  end;
end;

procedure TFrm_SET.cxButton36Click(Sender: TObject);
begin
	if asg_term_modify.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.SET_ExcelDown <> '1') then
	begin
		ShowMessage('[엑셀다운로드[설정메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

  Frm_Main.sgExcel := '구간요금표.xls';
  Frm_Main.sgRpExcel := Format('요금제편집>구간]%s건', [GetMoneyStr(asg_term_modify.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGrid9;
  Frm_Main.cxGridDBViewExcel := asg_term_modify;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(5);
end;

procedure TFrm_SET.cxButton37Click(Sender: TObject);
begin
	if cbTermName.ItemIndex = -1 then Exit;
	if GMessagebox('선택한 요금을 삭제하시겠습니까?' + #10#13 + '삭제된 내용은 복구되지 않습니다', CDMSQ) = idok then
		proc_Query('TERMDELETE', 1);
end;

procedure TFrm_SET.cxButton38Click(Sender: TObject);
begin
  if cbTermName.ItemIndex = -1 then
	begin
    GMessagebox('요금제를 먼저 선택하세요.', CDMSI);
    Exit;
  end;
  
  if GMessagebox(cbTERMName.Text + '요금제를 삭제하시겠습니까?' + CRLF +
                 '삭제한 요금제 전체 데이터는 복구 불가능 합니다.', CDMSQ) = idok then
		proc_Query('TERMDELETE', 0);

  asg_term_modify.DataController.SetRecordCount(0);
end;

procedure TFrm_SET.cb_First_edcityClick(Sender: TObject);
begin
	if not bAreaChange then
	begin
		city_ward(cb_First_edcity, cb_First_edward, asg_First_ed);
		proc_Query('FIRSTSELECT');
	end;
end;

procedure TFrm_SET.cb_First_stwardClick(Sender: TObject);
begin
	if not bAreaChange then
	begin
		proc_dong(cb_first_stcity, cb_first_stward, asg_first_st);
		proc_Query('FIRSTSELECT');
	end;
end;

procedure TFrm_SET.cb_First_edwardClick(Sender: TObject);
begin
	if not bAreaChange then
	begin
		proc_dong(cb_first_edcity, cb_first_edward, asg_first_ed);
		proc_Query('FIRSTSELECT');
	end;
end;

procedure TFrm_SET.asg_First_stSelectionChanged(
  Sender: TcxCustomGridTableView);
begin
	if not bAreaChange then
	begin
		proc_Query('FIRSTSELECT');
	end;
end;

procedure TFrm_SET.asg_First_edSelectionChanged(
  Sender: TcxCustomGridTableView);
begin
	if not bAreaChange then
	begin
		proc_Query('FIRSTSELECT');
	end;
end;

procedure TFrm_SET.cxButton48Click(Sender: TObject);
Var sQuery, sChargeCd : String;
begin
	if cbFirstName.ItemIndex = -1 then
  begin
    GMessagebox('요금제를 먼저 선택하세요.', CDMSI);
    Exit;
  end;
  
  // 자료가 70만건 이상이면 별도 옵션 처리  LYB  20120719
  if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
  begin
    sChargeCd := lbFirstCd.Items[cbFirstName.ItemIndex];
    sQuery := 'SELECT COUNT(*) FROM CDMS_FIRST WHERE FC_CD = ''%s'' ';
    sQuery := Format(sQuery, [sChargeCd]);
    dmCharge.proc_mysql_init;
    dmCharge.FDQuery1.Close;
    dmCharge.FDQuery1.SQL.Text := sQuery;
    dmCharge.FDQuery1.Open;

    if not dmCharge.FDQuery1.IsEmpty then
    begin
      if dmCharge.FDQuery1.Fields[0].AsInteger > 700000 then
      begin
        pnl_Option.Left := (Frm_Main.Width - pnl_Option.Width) div 2;
        pnl_Option.top := (Frm_Main.Height - pnl_Option.Height) div 2;
        Gauge2.Progress := 0;
        cxGroupBox2.Caption := '   70만건 이상 옵션 : ' + FormatFloat('#,', dmCharge.FDQuery1.Fields[0].AsInteger) + ' 건';
        cxGroupBox2.Tag := dmCharge.FDQuery1.Fields[0].AsInteger;  // 건수저장
				Rb_Save.Checked := True;
				Rb_Save.Caption := '파일저장';
				Rb_Save.Hint := 'F';
        pnl_Option.Visible := True;
        pnl_Option.Hint := 'F';
        pnl_Option.BringToFront;
      end else
      begin
        proc_Query('FIRSTSELECT', 1);
      end;
    end;
  end else
  begin
    proc_Query('FIRSTSELECT', 1);
  end;
end;

procedure TFrm_SET.cbFirstNameClick(Sender: TObject);
begin
	if not bAreaChange then
	begin
		proc_Query('FIRSTSELECT');
	end;
end;

procedure TFrm_SET.cboBranchPropertiesChange(Sender: TObject);
Var j : Integer;
begin
  pSelect_DistTypeM;

  try
    tlEAddrSet.BeginUpdate;
    for j := 0 to tlEAddrSet.AbsoluteCount  - 1 do
    begin
      tlEAddrSet.AbsoluteItems[j].Values[4] := '';
      tlEAddrSet.AbsoluteItems[j].Values[5] := '';
      tlEAddrSet.AbsoluteItems[j].Values[6] := '';
      tlEAddrSet.AbsoluteItems[j].Values[7] := '';
      tlEAddrSet.AbsoluteItems[j].Values[8] := '';
    end;
  finally
    tlEAddrSet.EndUpdate;
    if tlEAddrSet.AbsoluteCount > 1 then
      tlsAddr.FocusedNode := tlsAddr.Items[0];
  end;

  if Assigned(Frm_SET01) then
	begin
    Frm_SET01.FHdNo := GT_SEL_BRNO.HdNo;
    Frm_SET01.FHdNm := '[' + GT_SEL_BRNO.HdNO + '] 전체';
    Frm_SET01.FBrNo := FBrNoList[cboBranch.ItemIndex];
    Frm_SET01.FBrNm := cboBranch.Text;
    Frm_SET01.proc_init;
  end;

  if Assigned(Frm_SET02) then
	begin
		Frm_SET02.lblSosokName.Caption := cboBranch.Text;
    Frm_SET02.FBrNo := FBrNoList[cboBranch.ItemIndex];
    Frm_SET02.pSelectData;
  end;

  if Assigned(Frm_SET03) then
	begin
		Frm_SET03.lblSosokName.Caption := cboBranch.Text;
    Frm_SET03.FHdNo := GT_SEL_BRNO.HdNo;
    Frm_SET03.FBrNo := FBrNoList[cboBranch.ItemIndex];
    Frm_SET03.btnSearch.Click;
  end;
end;

procedure TFrm_SET.cxButton55Click(Sender: TObject);
begin
	if cbFirstName.ItemIndex = -1 then
	begin
		GMessagebox('요금제를 먼저 선택하세요.', CDMSI);
		Exit;
	end;

	proc_Query('FIRSTINSERT');
end;

procedure TFrm_SET.cxButton45Click(Sender: TObject);
begin
	proc_Query('FIRSTNEWINSERT');
end;

procedure TFrm_SET.cxButton49Click(Sender: TObject);
var
	area, sArea1, sArea2, sArea3, dArea1, dArea2, dArea3, fc_cd, sSubType, sQuery,
		sTable: string;
	iRow, i, iMax, iArea: Integer;
	sList, slArea, slAreaDetail: TStringList;
begin
	try
    if cbFirstName.Text = '' then
    begin
      GMessagebox('요금제를 먼저 선택하세요', cdmsi);
      Exit;
    end;

    if ed_First_value.Value < 1 then
    begin
      GMessagebox('[요금입력]의 요금을 확인해 주세요.', CDMSI);
      ed_First_value.SetFocus;
      Exit;
    end;

    sList := TStringList.Create;
    sList.Clear;

    slArea := TStringList.Create;
    slAreaDetail := TStringList.Create;

    iArea := asg_First_charge.GetColumnByFieldName('지역').Index;

		slArea.Assign(func_Select_Area(cb_first_stcity, cb_first_stward,
      cb_first_edcity, cb_first_edward, asg_first_st, asg_first_ed, rchk_same_first));

    if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then sTable := 'CDMS_FIRST' else
    if CHARGE_GUBUN = 'P' then sTable := 'CDMS_FIRST_CHARGE';

		fc_cd := lbFirstCd.Items.Strings[cbFirstName.itemIndex];
		sSubType := 'FC';
    cxProgressBar4.Progress := 0;
    cxProgressBar4.MaxValue := slArea.Count - 1;

    asg_First_charge.BeginUpdate;    
    for i := 0 to slArea.Count - 1 do
    begin
      cxProgressBar4.Progress := cxProgressBar4.Progress + 1;
      Application.ProcessMessages;

      slAreaDetail.CommaText := slArea[i];
      sArea1 := slAreaDetail[0];
      sArea2 := slAreaDetail[1];
      sArea3 := slAreaDetail[2];
      dArea1 := slAreaDetail[3];
      dArea2 := slAreaDetail[4];
      dArea3 := slAreaDetail[5];
      area := sArea1 + sArea2 + sArea3 + dArea1 + dArea2 + dArea3;
      iRow := asg_First_charge.DataController.FindRecordIndexByText(0, iArea, Area, True, False, True);
      //수정 2008.07.13
      if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
      begin
        sQuery := 'SELECT FC_CD FROM ' + sTable + ' WHERE ' + sSubType + '_CD = '''
          + fc_cd + ''' '
          + 'AND ' + sSubType + '_STCITY = ''' + sArea1 + ''' AND ' +
          sSubType + '_STWARD = ''' + sArea2 + ''' AND ' + sSubType +
          '_STDONG = ''' + sArea3 + ''' '
          + 'AND ' + sSubType + '_EDCITY = ''' + dArea1 + ''' AND ' +
          sSubType + '_EDWARD = ''' + dArea2 + ''' AND ' + sSubType +
          '_EDDONG = ''' + dArea3 + ''' ';
        dmCharge.proc_mysql_init;
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.open;

        if not dmCharge.FDQuery1.IsEmpty then
        begin
          sQuery := 'DELETE FROM ' + sTable + ' WHERE ' + sSubType +
            '_CD = ''' + fc_cd + ''' '
            + 'AND ' + sSubType + '_STCITY = ''' + sArea1 + ''' AND ' +
            sSubType + '_STWARD = ''' + sArea2 + ''' AND ' + sSubType +
            '_STDONG = ''' + sArea3 + ''' '
            + 'AND ' + sSubType + '_EDCITY = ''' + dArea1 + ''' AND ' +
            sSubType + '_EDWARD = ''' + dArea2 + ''' AND ' + sSubType +
            '_EDDONG = ''' + dArea3 + ''' ';
          dmCharge.proc_mysql_init('update');
          dmCharge.FDQuery1.Close;
          dmCharge.FDQuery1.SQL.Text := sQuery;
          dmCharge.FDQuery1.ExecSQL;

				end;
				sQuery := 'INSERT INTO ' + sTable + ' (' + sSubType + '_CD,' + sSubType + '_VALUE,' +
							sSubType + '_STCITY,' + sSubType +  '_STWARD,' + ' ' + sSubType + '_STDONG,' +
							sSubType + '_EDCITY,' + sSubType +  '_EDWARD,' + sSubType + '_EDDONG) VALUES '
						+ '(''' + fc_cd + ''',' + ed_First_value.Text + ',''' +
						 sArea1 + ''',''' + sArea2 + ''',''' + sArea3 + ''' ' + ',''' +
						 dArea1 + ''',''' + dArea2 + ''',''' + dArea3 + ''')';

				dmCharge.proc_mysql_init('update');
				dmCharge.FDQuery1.Close;
				dmCharge.FDQuery1.SQL.Text := sQuery;
				dmCharge.FDQuery1.ExecSQL;
			end else
      if CHARGE_GUBUN = 'P' then
      begin
				sQuery := 'SELECT * FROM ' + sTable + ' WHERE ' + sSubType + '_CD = '''
          + fc_cd + ''' '
          + 'AND ' + sSubType + '_STCITY = ''' + sArea1 + ''' AND ' +
          sSubType + '_STWARD = ''' + sArea2 + ''' AND ' + sSubType +
          '_STDONG = ''' + sArea3 + ''' '
          + 'AND ' + sSubType + '_EDCITY = ''' + dArea1 + ''' AND ' +
          sSubType + '_EDWARD = ''' + dArea2 + ''' AND ' + sSubType +
					'_EDDONG = ''' + dArea3 + ''' ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.OPEN;

				if not dmCharge.FDQuery_SQLite.EOF then
        begin
          sQuery := 'DELETE FROM ' + sTable + ' WHERE ' + sSubType +
            '_CD = ''' + fc_cd + ''' '
            + 'AND ' + sSubType + '_STCITY = ''' + sArea1 + ''' AND ' +
            sSubType + '_STWARD = ''' + sArea2 + ''' AND ' + sSubType +
            '_STDONG = ''' + sArea3 + ''' '
            + 'AND ' + sSubType + '_EDCITY = ''' + dArea1 + ''' AND ' +
            sSubType + '_EDWARD = ''' + dArea2 + ''' AND ' + sSubType +
            '_EDDONG = ''' + dArea3 + ''' ';
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.ExecSQL;
				end;
				sQuery := 'SELECT MAX(' + sSubType + '_NO) FROM ' +
          sTable + ' WHERE ' + sSubType + '_CD = ''' + fc_cd + ''' ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.OPEN;
				iMax := StrtoIntDef(dmCharge.FDQuery_SQLite.fields[0].AsString, 0) + 1;
				sQuery := 'INSERT INTO ' + sTable + ' (' + sSubType + '_NO,' + sSubType
          + '_CD,' + sSubType + '_VALUE,' + sSubType + '_STCITY,' + sSubType +
          '_STWARD,'
          + ' ' + sSubType + '_STDONG,' + sSubType + '_EDCITY,' + sSubType +
          '_EDWARD,' + sSubType + '_EDDONG) VALUES '
          + '(' + IntToStr(iMax) + ',''' + fc_cd + ''',' +
          ed_First_value.Text + ',''' + sArea1 + ''',''' + sArea2 + ''','''
          + sArea3 + ''' '
          + ',''' + dArea1 + ''',''' + dArea2 + ''',''' + dArea3 + ''')';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.ExecSQL;
			end;
			if iRow = -1 then
        iRow := asg_First_charge.DataController.AppendRecord;
      asg_First_charge.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
      asg_First_charge.DataController.Values[iRow, 1] := sArea1;
      asg_First_charge.DataController.Values[iRow, 2] := sArea2;
      asg_First_charge.DataController.Values[iRow, 3] := sArea3;
      asg_First_charge.DataController.Values[iRow, 4] := dArea1;
      asg_First_charge.DataController.Values[iRow, 5] := dArea2;
      asg_First_charge.DataController.Values[iRow, 6] := dArea3;
      asg_First_charge.DataController.Values[iRow, 7] := FormatFloat('#,##0',
        StrToFloatDef(StringReplace(Trim(ed_First_value.Text), ',', '',
        [rfReplaceAll]), 0.0));
      asg_First_charge.DataController.Values[iRow, 8] := Area;
      asg_First_charge.DataController.Values[iRow, 9] := 'S';
    end;
    asg_First_charge.EndUpdate;
    cxProgressBar4.Progress := 0;
    bFirstChargeModify := False;
    GMessagebox('저장하였습니다', CDMSI);
  except
    bFirstChargeModify := False;
    GMessagebox('실패하였습니다', CDMSI);
  end;
end;

procedure TFrm_SET.cxButton4Click(Sender: TObject);
begin
	pnl_AddType.visible := False;
end;

procedure TFrm_SET.cxButton50Click(Sender: TObject);
var
  i: Integer;
begin
	if ed_First_modify.Value < 1 then
  begin
    GMessagebox('[선택요금수정]의 요금을 확인해 주세요.', CDMSI);
    ed_First_modify.SetFocus;
    Exit;
  end;

  if (Trim(ed_First_modify.Text) <> '') and
    (StrToIntDef(Trim(ed_First_modify.Text), -1000) <> -1000) then
  begin
    asg_First_charge.BeginUpdate;
    if asg_First_charge.DataController.GetSelectedCount = 1 then
    begin
      i := asg_First_charge.DataController.FocusedRecordIndex;
      asg_First_charge.DataController.Values[i, 7] := Trim(ed_First_modify.Text);
      asg_First_charge.DataController.Values[i, 9] := 'U';
    end else
    begin
      cxProgressBar4.Progress := 0;
      cxProgressBar4.MaxValue := asg_First_charge.DataController.RecordCount - 1;
      for i := 0 to asg_First_charge.DataController.RecordCount - 1 do
      begin
        if asg_First_charge.ViewData.Records[i].Selected then // ok
        begin
          asg_First_charge.ViewData.Records[I].Values[7] := Trim(ed_First_modify.Text);
          asg_First_charge.ViewData.Records[I].Values[9] := 'U';
        end;
        cxProgressBar4.Progress := i;
        Application.ProcessMessages;        
      end;
    end;
    asg_First_charge.EndUpdate;
    bFirstChargeModify := True;
  end;
end;

procedure TFrm_SET.cxButton51Click(Sender: TObject);
var
  sExe, sFile: string;
  TextFile : TStringList;
begin
	if cbFirstName.ItemIndex = -1 then
  begin
    GMessagebox('요금제를 먼저 선택하세요.', CDMSI);
    Exit;
  end;

  if OpenDialog1.Execute then
  begin
    sFile := OpenDialog1.FileName;
    sExe := UpperCase(ExtractFileExt(sFile));

    // 자료가 70만건 이상이면 별도 옵션 처리  LYB  20120719
    if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
    begin
      if (sExe = '.XLS') or (sExe = '.XLSX') then
      begin
        func_ExcelTocxGrid(sFile, asg_First_charge, cxProgressBar4)
      end else
      if (sExe = '.TXT') or (sExe = '.CSV') then
      begin
        try
          TextFile := TStringList.Create;
          TextFile.LoadFromFile(sFile);

          if TextFile.Count > 700000 then
          begin
            pnl_Option.Left := (Frm_Main.Width - pnl_Option.Width) div 2;
            pnl_Option.top := (Frm_Main.Height - pnl_Option.Height) div 2;
            Gauge2.Progress := 0;
            cxGroupBox2.Caption := '   70만건 이상 옵션 : ' + FormatFloat('#,', TextFile.Count) + ' 건';
            cxGroupBox2.Tag := TextFile.Count;  // 건수저장
            Rb_Save.Caption := 'DB 저장 ['+ cbFirstName.Text + ']';
            Rb_Save.Checked := True;            
						Rb_Save.Hint := 'D';
            pnl_Option.Visible := True;
            pnl_Option.Hint := 'F';
						Lbl_sFile.Caption := sFile;
            Lbl_sExe.Caption := sExe;
            pnl_Option.BringToFront;
          end else
          begin
            func_ExcelTocxGrid(sFile, asg_First_charge, cxProgressBar4)
          end;
        finally
          FreeAndNil(TextFile);
        end;
      end;
    end else
    begin
      if (sExe = '.XLS') or (sExe = '.XLSX') then
        func_ExcelTocxGrid(sFile, asg_First_charge, cxProgressBar4)
      else
        if (sExe = '.TXT') or (sExe = '.CSV') then
        func_TxtTocxGrid(sFile, asg_First_charge, cxProgressBar4);
    end;
  end;
end;

procedure TFrm_SET.cxButton52Click(Sender: TObject);
begin
  if asg_First_charge.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.SET_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[설정메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

  Frm_Main.sgExcel := '우선구간요금표.xls';
  Frm_Main.sgRpExcel := Format('요금제편집>우선구간요금]%s건', [GetMoneyStr(asg_First_charge.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGrid16;
  Frm_Main.cxGridDBViewExcel := asg_First_charge;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(6);
end;

procedure TFrm_SET.cxButton53Click(Sender: TObject);
begin
	if cbFirstName.ItemIndex = -1 then Exit;
	if GMessagebox('선택한셀 요금을 삭제하시겠습니까?' + #10#13 + '삭제된 내용은 복구되지 않습니다', CDMSQ) = idok then
		proc_Query('FIRSTDELETE', 1);
end;

procedure TFrm_SET.cxButton54Click(Sender: TObject);
begin
	if cbFirstName.ItemIndex = -1 then
	begin
		GMessagebox('요금제를 먼저 선택하세요.', CDMSI);
		Exit;
	end;

	if GMessagebox(cbFirstName.Text + '요금제를 삭제하시겠습니까?' + CRLF +
                 '삭제한 요금제 전체 데이터는 복구 불가능 합니다.', CDMSQ) = idok then
		proc_Query('FIRSTDELETE');

	asg_First_charge.DataController.SetRecordCount(0);
end;

procedure TFrm_SET.rb_Bfirst_chargeClick(Sender: TObject);
begin
  proc_Query('SELECTBGCHARGETYPE', 1);
end;

procedure TFrm_SET.rb_first_chargeClick(Sender: TObject);
begin
  proc_Query('SELECTCHARGETYPE', 1);
end;

procedure TFrm_SET.FormCreate(Sender: TObject);
begin
  if GT_USERIF.ID = 'sntest' then btnGetList.Visible := True;
  proc_init;
end;

procedure TFrm_SET.FormDestroy(Sender: TObject);
begin
  Frm_SET := Nil;
end;

procedure TFrm_SET.FormShow(Sender: TObject);
begin
  fSetFont(Frm_SET, GS_FONTNAME);
end;

procedure TFrm_SET.cxButton42Click(Sender: TObject);
begin
  bStopFlag := False;
  pnl_Option.Visible := False;
end;

procedure TFrm_SET.cxButton34Click(Sender: TObject);
Var fc_cd : String;
begin
	try
		cxButton34.Enabled := False;
    bStopFlag := True;
		cxButton42.Caption := '중 지';
		if Rb_Save.Checked then
    begin
			if pnl_Option.Hint = 'C' then
      begin
				if Rb_Save.Hint = 'F' then
				begin
          if SaveDialog1.Execute then
					begin
						Lbl_sFile.Caption := SaveDialog1.FileName;
						proc_Query('CHARTSELECT', 2)
          end;
				end else
				if Rb_Save.Hint = 'D' then
        begin
          fc_cd := lbChartCd.Items[cbChartName.ItemIndex];
					if (fc_cd = 'CC001') or (fc_cd = 'CC002') or (fc_cd = 'CC003') then
          begin
            GMessagebox('표준요금표는 수정할수 없습니다.', CDMSI);
            Exit;
          end;
          proc_Query('CHARTINSERT', 2);
        end;
      end else
			if pnl_Option.Hint = 'F' then
			begin
				if Rb_Save.Hint = 'F' then
				begin
					if SaveDialog1.Execute then
					begin
						Lbl_sFile.Caption := SaveDialog1.FileName;
						proc_Query('FIRSTSELECT', 2)
					end;
				end else
				if Rb_Save.Hint = 'D' then
				begin
					proc_Query('FIRSTINSERT', 2);
				end;
			end;
			if pnl_Option.Hint = 'FP' then
			begin
				if Rb_Save.Hint = 'F' then
				begin
					if SaveDialog1.Execute then
					begin
						Lbl_sFile.Caption := SaveDialog1.FileName;
						proc_Query('FIRSTDETAILSELECT', 2)
					end;
				end else
				if Rb_Save.Hint = 'D' then
				begin
					proc_Query('FIRSTDETAILINSERT', 2);
				end;
			end;
			pnl_Option.Visible := False;
    end else
    if Rb_View.Checked then
    begin
      pnl_Option.Visible := False;
			if pnl_Option.Hint = 'C' then 
      begin
				if Rb_Save.Hint = 'F' then proc_Query('CHARTSELECT', 1) else
        if Rb_Save.Hint = 'D' then func_TxtTocxGrid(Lbl_sFile.Caption, asg_Chart_charge, cxProgressBar1);
			end else
			if pnl_Option.Hint = 'F' then
			begin
				if Rb_Save.Hint = 'F' then proc_Query('FIRSTSELECT', 1) else
				if Rb_Save.Hint = 'D' then func_ExcelTocxGrid(Lbl_sFile.Caption, asg_First_charge, cxProgressBar4);
			end else
			if pnl_Option.Hint = 'FP' then
			begin
				if Rb_Save.Hint = 'F' then proc_Query('FIRSTDETAILSELECT', 1) else
				if Rb_Save.Hint = 'D' then func_ExcelTocxGrid(Lbl_sFile.Caption, asg_First_Detail_charge, cxProgressBar5);
			end;
		end;
  finally
		cxButton34.Enabled := True;
    bStopFlag := False;
    cxButton42.Caption := '취 소';    
  end;
end;

procedure TFrm_SET.btn7Click(Sender: TObject);
begin
	proc_Query('FIRSTDETAILNEWINSERT');
end;

procedure TFrm_SET.cbFirstDetailNameClick(Sender: TObject);
begin
	if not bAreaChange then
	begin
		proc_Query('FIRSTDETAILSELECT');
	end;
end;

procedure TFrm_SET.cxButton64Click(Sender: TObject);
begin
	if cbFirstDetailName.ItemIndex = -1 then
	begin
		GMessagebox('요금제를 먼저 선택하세요.', CDMSI);
		Exit;
	end;

	proc_Query('FIRSTDETAILINSERT');
end;

procedure TFrm_SET.cb_First_Detail_stwardClickClick(Sender: TObject);
begin
	if not bAreaChange then
	begin
		proc_dong(cb_first_Detail_stcity, cb_first_Detail_stward, asg_first_Detail_st);
		proc_Query('FIRSTDETAILSELECT');
	end;
end;

procedure TFrm_SET.cb_First_Detail_stcityClick(Sender: TObject);
begin
	if not bAreaChange then
	begin
		city_ward(cb_first_Detail_stcity, cb_First_Detail_stward, asg_First_Detail_st);
		proc_Query('FIRSTDETAILSELECT');
	end;
end;

procedure TFrm_SET.cb_First_Detail_edcityClick(Sender: TObject);
begin
	if not bAreaChange then
	begin
		city_ward(cb_First_Detail_edcity, cb_First_Detail_edward, asg_First_Detail_ed);
		proc_Query('FIRSTDETAILSELECT');
	end;
end;

procedure TFrm_SET.cb_First_Detail_edwardClick(Sender: TObject);
begin
	if not bAreaChange then
	begin
		proc_dong(cb_first_Detail_edcity, cb_first_Detail_edward, asg_first_Detail_ed);
		proc_Query('FIRSTDETAILSELECT');
	end;
end;

procedure TFrm_SET.cb_First_Detail_stwardClick(Sender: TObject);
begin
	if not bAreaChange then
	begin
		proc_dong(cb_first_Detail_stcity, cb_first_Detail_stward, asg_first_Detail_st);
		proc_Query('FIRSTDETAILSELECT');
	end;
end;

procedure TFrm_SET.asg_First_Detail_StSelectionChanged(
  Sender: TcxCustomGridTableView);
begin
	if not bAreaChange then
	begin
		proc_Query('FIRSTDETAILSELECT');
	end;
end;

procedure TFrm_SET.asg_First_Detail_EdSelectionChanged(
  Sender: TcxCustomGridTableView);
begin
	if not bAreaChange then
	begin
		proc_Query('FIRSTDETAILSELECT');
	end;
end;

procedure TFrm_SET.btn8Click(Sender: TObject);
Var sQuery, sChargeCd : String;
begin
if cbFirstDetailName.ItemIndex = -1 then
	begin
		GMessagebox('요금제를 먼저 선택하세요.', CDMSI);
    Exit;
  end;
  
  // 자료가 70만건 이상이면 별도 옵션 처리  LYB  20120719
  if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
	begin                                
		sChargeCd := lbFirstDetailCd.Items[cbFirstDetailName.ItemIndex];
		sQuery := 'SELECT COUNT(*) FROM CDMS_FIRST_DETAIL WHERE FP_CD = ''%s'' ';
		sQuery := Format(sQuery, [sChargeCd]);
		dmCharge.proc_mysql_init;
		dmCharge.FDQuery1.Close;
		dmCharge.FDQuery1.SQL.Text := sQuery;
		dmCharge.FDQuery1.Open;

    if not dmCharge.FDQuery1.IsEmpty then
    begin
      if dmCharge.FDQuery1.Fields[0].AsInteger > 700000 then
      begin
        pnl_Option.Left := (Frm_Main.Width - pnl_Option.Width) div 2;
        pnl_Option.top := (Frm_Main.Height - pnl_Option.Height) div 2;
        Gauge2.Progress := 0;
        cxGroupBox2.Caption := '   70만건 이상 옵션 : ' + FormatFloat('#,', dmCharge.FDQuery1.Fields[0].AsInteger) + ' 건';
        cxGroupBox2.Tag := dmCharge.FDQuery1.Fields[0].AsInteger;
        Rb_Save.Checked := True;
        Rb_Save.Caption := '파일저장';
				Rb_Save.Hint := 'F';
        pnl_Option.Visible := True;
        pnl_Option.Hint := 'F';
        pnl_Option.BringToFront;
      end else
      begin
				proc_Query('FIRSTDETAILSELECT', 1);
      end;
    end;
  end else
  begin
		proc_Query('FIRSTDETAILSELECT', 1);
  end;
end;

procedure TFrm_SET.btn9Click(Sender: TObject);
var
	area, sArea1, sArea2, sArea3, sArea4, dArea1, dArea2, dArea3, dArea4, fP_cd, sSubType, sQuery,
		sTable: string;
	iRow, i, iMax, iArea: Integer;
	sList, slArea, slAreaDetail: TStringList;
begin
	try
		if cbFirstDetailName.Text = '' then
    begin
      GMessagebox('요금제를 먼저 선택하세요', cdmsi);
      Exit;
    end;

		if ed_First_Detail_value.Value < 1 then
		begin
			GMessagebox('[요금입력]의 요금을 확인해 주세요.', CDMSI);
      ed_First_value.SetFocus;
      Exit;
    end;

		sList := TStringList.Create;
    sList.Clear;

    slArea := TStringList.Create;
    slAreaDetail := TStringList.Create;

		iArea := asg_First_Detail_charge.GetColumnByFieldName('지역').Index;

		slArea.Assign(func_Select_Area(cb_first_Detail_stcity, cb_first_Detail_stward,
			cb_first_Detail_edcity, cb_first_Detail_edward, asg_first_Detail_st, asg_first_Detail_ed, rchk_same_first_Detail));

		if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then sTable := 'CDMS_FIRST_DETAIL' else
		if CHARGE_GUBUN = 'P' then sTable := 'CDMS_FIRST_DETAIL_CHARGE';

		fP_cd := lbFirstDetailCd.Items.Strings[cbFirstDetailName.itemIndex];
		sSubType := 'FP';
		cxProgressBar5.Progress := 0;
		cxProgressBar5.MaxValue := slArea.Count - 1;

		asg_First_Detail_charge.BeginUpdate;    
    for i := 0 to slArea.Count - 1 do
		begin
			cxProgressBar5.Progress := cxProgressBar4.Progress + 1;
      Application.ProcessMessages;

			slAreaDetail.CommaText := slArea[i];
      sArea1 := slAreaDetail[0];
      sArea2 := slAreaDetail[1];
			sArea3 := slAreaDetail[2];
			sArea4 := '';
			dArea1 := slAreaDetail[3];
			dArea2 := slAreaDetail[4];
			dArea3 := slAreaDetail[5];
			dArea4 := '';
			area := sArea1 + sArea2 + sArea3 + sArea4 + dArea1 + dArea2 + dArea3 + dArea4;
			iRow := asg_First_Detail_charge.DataController.FindRecordIndexByText(0, iArea, Area, True, False, True);
			//수정 2008.07.13
      if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
      begin
				sQuery := 'SELECT FP_CD FROM ' + sTable + ' WHERE FP_CD = '''	+ fP_cd + ''' '
					+ 'AND FP_STCITY = ''' + sArea1 + ''' AND FP_STWARD = ''' + sArea2 + ''' '
					+ 'AND FP_STDONG = ''' + sArea3 + ''' AND FP_STPOI  = ''' + sArea4 + ''' '
					+ 'AND FP_EDCITY = ''' + dArea1 + ''' AND FP_EDWARD = ''' + dArea2 + ''' '
					+ 'AND FP_EDDONG = ''' + dArea3 + ''' AND FP_EDPOI  = ''' + dArea4 + ''' ';
				dmCharge.proc_mysql_init;
        dmCharge.FDQuery1.Close;
				dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.open;


				if not dmCharge.FDQuery1.IsEmpty then
				begin
					sQuery := 'DELETE FROM ' + sTable + ' WHERE FP_CD = ''' + fP_cd + ''' '
						+ 'AND FP_STCITY = ''' + sArea1 + ''' AND FP_STWARD = ''' + sArea2 + ''' AND FP_STDONG = ''' + sArea3 + '''  AND FP_STPOI = ''' + sArea4 + ''' '
						+ 'AND FP_EDCITY = ''' + dArea1 + ''' AND FP_EDWARD = ''' + dArea2 + ''' AND FP_EDDONG = ''' + dArea3 + '''  AND FP_EDPOI = ''' + dArea4 + ''' ';
					dmCharge.proc_mysql_init('update');
					dmCharge.FDQuery1.Close;
					dmCharge.FDQuery1.SQL.Text := sQuery;
					dmCharge.FDQuery1.ExecSQL;
				end;

				sQuery := 'INSERT INTO ' + sTable + ' (FP_CD, FP_VALUE, FP_STCITY, FP_STWARD, FP_STDONG, FP_STPOI, ' 
							+ 'FP_EDCITY, FP_EDWARD, FP_EDDONG, FP_EDPOI) VALUES (''' + fP_cd + ''',' + ed_First_Detail_value.Text + ',''' +
						 sArea1 + ''',''' + sArea2 + ''',''' + sArea3 + ''',''' + sArea4 + ''',''' + dArea1 + ''',''' + dArea2 + ''',''' + dArea3 + ''',''' + dArea4 + ''')';
				dmCharge.proc_mysql_init('update');
				dmCharge.FDQuery1.Close;
				dmCharge.FDQuery1.SQL.Text := sQuery;
				dmCharge.FDQuery1.ExecSQL;
			end else
			if CHARGE_GUBUN = 'P' then
			begin
				sQuery := 'SELECT * FROM ' + sTable + ' WHERE FP_CD = ''' + fP_cd + ''' '
							+ 'AND FP_STCITY = ''' + sArea1 + ''' AND FP_STWARD = ''' + sArea2 + ''' AND FP_STDONG = ''' + sArea3 + ''' AND FP_STPOI = ''' + sArea4 + ''' '
							+ 'AND FP_EDCITY = ''' + dArea1 + ''' AND FP_EDWARD = ''' + dArea2 + ''' AND FP_EDDONG = ''' + dArea3 + ''' AND FP_EDPOI = ''' + dArea4 + ''' ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.OPEN;

				if not dmCharge.FDQuery_SQLite.EOF then
				begin
					sQuery := 'DELETE FROM ' + sTable + ' WHERE FP_CD = ''' + fP_cd + ''' '
						+ 'AND FP_STCITY = ''' + sArea1 + ''' AND FP_STWARD = ''' + sArea2 + ''' AND FP_STDONG = ''' + sArea3 + '''  AND FP_STPOI = ''' + sArea4 + ''' '
						+ 'AND FP_EDCITY = ''' + dArea1 + ''' AND FP_EDWARD = ''' + dArea2 + ''' AND FP_EDDONG = ''' + dArea3 + '''  AND FP_EDPOI = ''' + dArea4 + ''' ';
					dmCharge.proc_SQLite_init;
					dmCharge.FDQuery_SQLite.Close;
					dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
					dmCharge.FDQuery_SQLite.ExecSQL;
				end;
				sQuery := 'SELECT MAX(FP_NO) FROM ' +	sTable + ' WHERE FP_CD = ''' + fP_cd + ''' ';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.OPEN;
				iMax := StrtoIntDef(dmCharge.FDQuery_SQLite.fields[0].AsString, 0) + 1;
				sQuery := 'INSERT INTO ' + sTable + ' (FP_NO, FP_CD, FP_VALUE, FP_STCITY, FP_STWARD, FP_STDONG, FP_SEPOI, '
							+ 'FP_EDCITY, FP_EDWARD, FP_EDDONG, FP_EDPOI) VALUES '
					+ '(' + IntToStr(iMax) + ',''' + fP_cd + ''',' +  ed_First_Detail_value.Text + ',''' + sArea1 + ''',''' + sArea2 + ''','''
					+ sArea3 + ''',''' + sArea4 + ''',''' + dArea1 + ''',''' + dArea2 + ''',''' + dArea3 + ''',''' + dArea4 + ''')';
				dmCharge.proc_SQLite_init;
				dmCharge.FDQuery_SQLite.Close;
				dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
				dmCharge.FDQuery_SQLite.ExecSQL;
			end;
			if iRow = -1 then
				iRow := asg_First_Detail_charge.DataController.AppendRecord;
			asg_First_Detail_charge.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
			asg_First_Detail_charge.DataController.Values[iRow, 1] := sArea1;
			asg_First_Detail_charge.DataController.Values[iRow, 2] := sArea2;
			asg_First_Detail_charge.DataController.Values[iRow, 3] := sArea3;
			asg_First_Detail_charge.DataController.Values[iRow, 4] := sArea4;
			asg_First_Detail_charge.DataController.Values[iRow, 5] := dArea1;
			asg_First_Detail_charge.DataController.Values[iRow, 6] := dArea2;
			asg_First_Detail_charge.DataController.Values[iRow, 7] := dArea3;
			asg_First_Detail_charge.DataController.Values[iRow, 8] := dArea4;
			asg_First_Detail_charge.DataController.Values[iRow, 9] := FormatFloat('#,##0', StrToFloatDef(StringReplace(Trim(ed_First_Detail_value.Text), ',', '', [rfReplaceAll]), 0.0));
			asg_First_Detail_charge.DataController.Values[iRow, 10] := Area;
			asg_First_Detail_charge.DataController.Values[iRow, 11] := 'S';
		end;
		asg_First_Detail_charge.EndUpdate;
		cxProgressBar5.Progress := 0;
		bFirstDetailChargeModify := False;
		GMessagebox('저장하였습니다', CDMSI);
	except
		bFirstDetailChargeModify := False;
		GMessagebox('실패하였습니다', CDMSI);
	end;
end;

procedure TFrm_SET.btnAmtSaveClick(Sender: TObject);
begin
  if edtdistTypeValue.Value = 0 then Exit;
  pSetDistanceNew('2', FloatToStr(edtdistTypeValue.Value));
end;

procedure TFrm_SET.btnBFirstCdClick(Sender: TObject);
begin
  if ed_Bbg_Name.Text = '' then
  begin
    GMessageBox('좌측 목록의 법인명을 선택해 주세요.', CDMSI);
    Exit;
  end;

  if cb_Bcharge_name.ItemIndex = -1 then
  begin
    GMessageBox('요금제를 선택해 주세요.', CDMSI);
    Exit;
  end;

  if RbBRadioButton5.Checked then
  begin
    if StrToIntDef(RemoveComma(ed_Bpassvalue.Text), -1) < 0 then
    begin
      GMessagebox('경유요금(건당요금)을 입력해주세요.', CDMSI);
      RbBRadioButton5Click(RbBRadioButton5);
      ed_Bpassvalue.SetFocus;
      Exit;
    end;
  end;

	proc_Query('SAVEBGCHARGETYPE', 1);
end;

procedure TFrm_SET.btnCIDXE1IDCheckClick(Sender: TObject);
var
  ls_TxLoad, ls_Msg_Err: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  lst_Result: IXMLDomNodeList;
	xdom: msDomDocument;
	slReceive: TStringList;
	ErrCode, iCnt: integer;
begin
	if TcxButton(sender).Tag = 0 then
	begin
		if (length(widestring(edtCIDXE1ID.Text)) > 12) or (length(widestring(edtCIDXE1ID.Text)) < 4) then
		begin
			ShowMessage('아이디는 4자이상 12이하입니다.');
			exit;
		end;
	end else
	begin
		if (length(widestring(edtCIDXE2ID.Text)) > 12) or (length(widestring(edtCIDXE2ID.Text)) < 4) then
		begin
			ShowMessage('아이디는 4자이상 12이하입니다.');
			exit;
		end;
	end;

	try
		ls_TxLoad := GTx_UnitXmlLoad('CIDXE01.XML');
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CIDXE01_KEY', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'actionStr', 'IDCHECK', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'cntStr', '', [rfReplaceAll]);
		if TcxButton(sender).Tag = 0 then
			ls_TxLoad := StringReplace(ls_TxLoad, 'strID', Trim(edtCIDXE1ID.Text), [rfReplaceAll])
		else
			ls_TxLoad := StringReplace(ls_TxLoad, 'strID', Trim(edtCIDXE2ID.Text), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'strPW', '', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'strHDNO', '', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'strBRNO', '', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'strCCNO', '', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'strCIDNM', '', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'strCIDMEMO', '', [rfReplaceAll]);

		try
			slRcvList := TStringList.Create;
			try
				if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 30000) then
				begin
					rv_str := slRcvList[0];
					if rv_str <> '' then
					begin
						ls_rxxml := rv_str;
						xdom := ComsDomDocument.Create;
            try
						  xdom.loadXML(ls_rxxml);
						  ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
						  if ('0000' <> ls_MSG_Err) then
						  begin
						  	GMessagebox(ls_Msg_Err, CDMSI);
						  	exit;
						  end;
						  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/CidXe');

						  iCnt := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Count').Text,0) ;
						  if iCnt > 0 then
						  begin
						  	ShowMessage('이미 사용중인 ID입니다.');
						  	if TcxButton(sender).Tag = 0 then
						  		edtCIDXE1ID.SetFocus
						  	else
						  		edtCIDXE2ID.SetFocus;
						  end
						  else
						  begin
						  	ShowMessage('사용가능한 ID입니다.');
						  	if TcxButton(sender).Tag = 0 then
						  	begin
						  		edtCIDXE1PW.SetFocus;
						  		btnCIDXE1IDCheck.Enabled := False;
						  	end
						  	else
						  	begin
						  		edtCIDXE2PW.SetFocus;
						  		btnCIDXE2IDCheck.Enabled := False;
						  	end;
						  end;
            finally
              xdom := Nil;
            end;
					end;
				end;
			except
			end;
		finally
			Screen.Cursor := crDefault;
      FreeAndNil(slReceive);
    end;
	except
  end;
end;

procedure TFrm_SET.btnCIDXE1SAVEClick(Sender: TObject);
var
  ls_TxLoad, ls_Msg_Err: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  XmlData, Param, ErrMsg: string;
  lst_Result: IXMLDomNodeList;
	xdom: msDomDocument;
	slReceive: TStringList;
	ErrCode, iCnt: integer;
	sMsg : string;
	bTmp : boolean;
begin
	try
		if TcxButton(sender).Tag = 0 then
		begin
			if btnCIDXE1IDCheck.Enabled then
			begin
				ShowMessage('아이디 중복체크를 하세요');
				exit;
			end;

			if (length(widestring(edtCIDXE1ID.Text)) > 12) Or (length(widestring(edtCIDXE1ID.Text)) < 4) then
			begin
				ShowMessage('아이디는 4자이상 12이하입니다.');
				exit;
			end;
			if (pwCHK1 = 1) and (edtCIDXE1PW.Text <> edtCIDXE1PW_COMF.Text) then
			begin
				ShowMessage('비밀번호가 서로 틀립니다.');
				exit;
			end;
			if (length(edtCIDXE1PW.Text) > 12) Or (length(edtCIDXE1PW.Text) < 4) then
			begin
				ShowMessage('비밀번호는 4자이상 12이하입니다.');
				exit;
			end;
			if (length(edtCIDXE1ServerNAME.Text) > 120) then
			begin
				ShowMessage('서버명은 60자 미만입니다.');
				exit;
			end;
			if (length(edtCIDXE1ServerNAME.Text) > 300) then
			begin
				ShowMessage('서버메모은 150자 미만입니다.');
				exit;
			end;
		end else
		if TcxButton(sender).Tag = 1 then
		begin
			if btnCIDXE2IDCheck.Enabled then
			begin
				ShowMessage('아이디 중복체크를 하세요');
				exit;
			end;

			if (length(widestring(edtCIDXE2ID.Text)) > 12) Or (length(widestring(edtCIDXE2ID.Text)) < 4) then
			begin
				ShowMessage('아이디는 4자이상 12이하입니다.');
				exit;
			end;
			if (pwCHK2 = 1) and (edtCIDXE2PW.Text <> edtCIDXE2PW_COMF.Text) then
			begin
				ShowMessage('비밀번호가 서로 틀립니다.');
				exit;
			end;
			if (length(edtCIDXE2PW.Text) > 12) Or (length(edtCIDXE2PW.Text) < 4) then
			begin
				ShowMessage('비밀번호는 4자이상 12이하입니다.');
				exit;
			end;
			if (length(edtCIDXE2ServerNAME.Text) > 120) then
			begin
				ShowMessage('서버명은 60자 미만입니다.');
				exit;
			end;
			if (length(edtCIDXE2ServerNAME.Text) > 300) then
			begin
				ShowMessage('서버메모은 150자 미만입니다.');
				exit;
			end;
		end else
		if (TcxButton(sender).Tag = 2) or (TcxButton(sender).Tag = 3) then
		begin
			bTmp := False;
			sMsg := '';
			if (TcxButton(sender).Tag = 2) then
				sMsg := 'ID : ' + edtCIDXE1ID.Text + ' 삭제하시겠습니까?'
			else if (TcxButton(sender).Tag = 3) then
				sMsg := 'ID : ' + edtCIDXE2ID.Text + ' 삭제하시겠습니까?';

			if Application.MessageBox(PChar(sMsg), '[CDMS]', MB_YESNO +	MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then
			begin
				exit;
			end;
			bTmp := True;
		end;

		if TcxButton(sender).Tag = 0 then
		begin
    	if Not func_EucKr_Check(edtCIDXE1ServerNAME, 0) then Exit;
    	if Not func_EucKr_Check(edtCIDXE1MEMO, 0) then Exit;
		end	else
		begin
			if Not func_EucKr_Check(edtCIDXE2ServerNAME, 0) then Exit;
    	if Not func_EucKr_Check(edtCIDXE2MEMO, 0) then Exit;
		end;

		ls_TxLoad := GTx_UnitXmlLoad('CIDXE01.XML');
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CIDXE01_KEY', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'cntStr', '', [rfReplaceAll]);
		if (TcxButton(sender).Tag = 0) or (TcxButton(sender).Tag = 2) then
		begin
			if TcxButton(sender).Tag = 0 then
			begin
				if edtCIDXE1.Text = '' then
					ls_TxLoad := StringReplace(ls_TxLoad, 'actionStr', 'INSERT', [rfReplaceAll])
				else
					ls_TxLoad := StringReplace(ls_TxLoad, 'actionStr', 'UPDATE', [rfReplaceAll]);
			end else
			if TcxButton(sender).Tag = 2 then
				ls_TxLoad := StringReplace(ls_TxLoad, 'actionStr', 'DELETE', [rfReplaceAll]);
				
			ls_TxLoad := StringReplace(ls_TxLoad, 'strID', Trim(edtCIDXE1ID.Text), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'strPW', Trim(edtCIDXE1PW.Text), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'strHDNO', GT_SEL_BRNO.HDNO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'strBRNO', GT_SEL_BRNO.BrNo, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'strCCNO', GT_USERIF.CT, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'strCIDNM', Trim(edtCIDXE1ServerNAME.Text), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'strCIDMEMO', Trim(edtCIDXE1MEMO.Text), [rfReplaceAll]);
		end else
		if (TcxButton(sender).Tag = 1) or (TcxButton(sender).Tag = 3) then
		begin
			if TcxButton(sender).Tag = 1 then
			begin
				if edtCIDXE2.Text = '' then
					ls_TxLoad := StringReplace(ls_TxLoad, 'actionStr', 'INSERT', [rfReplaceAll])
				else
					ls_TxLoad := StringReplace(ls_TxLoad, 'actionStr', 'UPDATE', [rfReplaceAll]);
			end else
			if TcxButton(sender).Tag = 3 then
				ls_TxLoad := StringReplace(ls_TxLoad, 'actionStr', 'DELETE', [rfReplaceAll]);

			ls_TxLoad := StringReplace(ls_TxLoad, 'strID', Trim(edtCIDXE2ID.Text), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'strPW', Trim(edtCIDXE2PW.Text), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'strHDNO', GT_SEL_BRNO.HDNO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'strBRNO', GT_SEL_BRNO.BrNo, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'strCCNO', GT_USERIF.CT, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'strCIDNM', Trim(edtCIDXE2ServerNAME.Text), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'strCIDMEMO', Trim(edtCIDXE2MEMO.Text), [rfReplaceAll]);
		end;

		try
			slRcvList := TStringList.Create;
			try
				if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 10) then
				begin
					rv_str := slRcvList[0];
					if rv_str <> '' then
					begin
						ls_rxxml := rv_str;
						xdom := ComsDomDocument.Create;
            try
							xdom.loadXML(ls_rxxml);

						  ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
						  if ('0000' <> ls_MSG_Err) then
						  begin
						  	GMessagebox(ls_Msg_Err, CDMSI);
								exit;
						  end;
						  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/CidXe');

							iCnt := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Count').Text,0) ;
							if iCnt > 0 then
						  begin
								ShowMessage('저장되었습니다.');
								if TcxButton(sender).Tag = 0 then edtCIDXE1ID.Enabled := False
								else edtCIDXE2ID.Enabled := False;
							end else
							if bTmp then
							begin
								ShowMessage('삭제되었습니다.');

								if (TcxButton(sender).Tag = 2) then
								begin
									edtCIDXE1ID.Text := '';
									edtCIDXE1PW.Text := '';
									edtCIDXE1PW_COMF.Text := '';
									edtCIDXE1PW_COMF.Visible := False;
									cxLabel5.Visible := False;
									Shape17.Visible := False;
									edtCIDXE1ServerNAME.Text := '';
									edtCIDXE1MEMO.Lines.Clear;
									edtCIDXE1.Text := '';
									btnCIDXE1IDCheck.Enabled := True;
									btnCIDXE1Del.Enabled := False;
								end else
								if (TcxButton(sender).Tag = 3) then
								begin
									edtCIDXE2ID.Text := '';
									edtCIDXE2PW.Text := '';
									edtCIDXE2PW_COMF.Text := '';
									edtCIDXE2PW_COMF.Visible := False;
									cxLabel10.Visible := False;
									Shape22.Visible := False;
									edtCIDXE2ServerNAME.Text := '';
									edtCIDXE2MEMO.Lines.Clear;
									edtCIDXE2.Text := '';
									btnCIDXE2IDCheck.Enabled := True;
									btnCIDXE2Del.Enabled := False;
								end;
							end;
								
							
            finally
              xdom := Nil;
            end;
					end;
				end;
			except
			end;
		finally
			Screen.Cursor := crDefault;
      FreeAndNil(slReceive);
    end;
	except
  end;
end;

procedure TFrm_SET.btnCIDXESetClick(Sender: TObject);
var
  ls_TxLoad, ls_Msg_Err: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  lst_Result: IXMLDomNodeList;
	xdom: msDomDocument;
	slReceive: TStringList;
	ErrCode, iCnt, i: integer;
begin
	edtCIDXE1ID.Text := '';
	edtCIDXE1PW.Text := '';
	edtCIDXE1PW_COMF.Text := '';
	edtCIDXE1PW_COMF.Visible := False;
	cxLabel5.Visible := False;
	Shape17.Visible := False;
	edtCIDXE1ServerNAME.Text := '';
	edtCIDXE1MEMO.Lines.Clear;
	edtCIDXE1.Text := '';
	btnCIDXE1IDCheck.Enabled := True;
	btnCIDXE1Del.Enabled := False;

	edtCIDXE2ID.Text := '';
	edtCIDXE2PW.Text := '';
	edtCIDXE2PW_COMF.Text := '';
	edtCIDXE2PW_COMF.Visible := False;
	cxLabel10.Visible := False;
	Shape22.Visible := False;
	edtCIDXE2ServerNAME.Text := '';
	edtCIDXE2MEMO.Lines.Clear;
	edtCIDXE2.Text := '';
	btnCIDXE2IDCheck.Enabled := True;
	btnCIDXE2Del.Enabled := False;

  pnlCIDXESet.Left := (Self.Width - pnlCIDXESet.Width) div 2;
	pnlCIDXESet.top := ((Self.Height - pnlCIDXESet.Height) div 2) - 50;
	pnlCIDXESet.Visible := True;
	pwCHK1 := 0;
	pwCHK2 := 0;
	try
		ls_TxLoad := GTx_UnitXmlLoad('CIDXE01.XML');
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CIDXE01_KEY', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'cntStr', '', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'actionStr', 'SELECT', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'strHDNO', GT_SEL_BRNO.HDNO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'strBRNO', GT_SEL_BRNO.BrNo, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'strCCNO', GT_USERIF.CT, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'strID', '', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'strPW', '', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'strCIDNM', '', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'strCIDMEMO', '', [rfReplaceAll]);

		try
			slRcvList := TStringList.Create;
			try
				if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 30000) then
				begin
					rv_str := slRcvList[0];
					if rv_str <> '' then
					begin
						ls_rxxml := rv_str;
						xdom := ComsDomDocument.Create;
            try
						  xdom.loadXML(ls_rxxml);
						  ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
						  if ('0000' <> ls_MSG_Err) then
						  begin
						  	GMessagebox(ls_Msg_Err, CDMSI);
						  	exit;
						  end;
						  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/CidXe');

						  iCnt := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Count').Text,0) ;
						  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/CidXe/Cid');

						  for i := 0 to iCnt - 1 do
						  begin
						  	if i = 0 then
						  	begin
						  		edtCIDXE1ID.Text := lst_Result.item[i].attributes.getNamedItem('cids_id').Text;
									edtCIDXE1.Text := edtCIDXE1ID.Text;
									edtCIDXE1PW.Text := lst_Result.item[i].attributes.getNamedItem('cids_pwd').Text;
						  		edtCIDXE1ServerNAME.Text := lst_Result.item[i].attributes.getNamedItem('cids_name').Text;
									edtCIDXE1MEMO.Text := lst_Result.item[i].attributes.getNamedItem('cids_memo').Text;
						  		btnCIDXE1IDCheck.Enabled := False;
									edtCIDXE1ID.Enabled := False;
									btnCIDXE1Del.Enabled := True;
								end else
								begin
									edtCIDXE2ID.Text := lst_Result.item[i].attributes.getNamedItem('cids_id').Text;
									edtCIDXE2.Text := edtCIDXE2ID.Text;
									edtCIDXE2PW.Text := lst_Result.item[i].attributes.getNamedItem('cids_pwd').Text;
									edtCIDXE2ServerNAME.Text := lst_Result.item[i].attributes.getNamedItem('cids_name').Text;
									edtCIDXE2MEMO.Text := lst_Result.item[i].attributes.getNamedItem('cids_memo').Text;
									btnCIDXE2IDCheck.Enabled := False;
									edtCIDXE2ID.Enabled := False;
									btnCIDXE2Del.Enabled := True;
								end;
							end;
						finally
              xdom := Nil;
            end;
					end;
				end;
			except
			end;
		finally
			Screen.Cursor := crDefault;
      FreeAndNil(slReceive);
    end;
	except
  end;
end;

procedure TFrm_SET.btnCopyClick(Sender: TObject);
begin
  if Not Assigned(Frm_SET04) Or ( Frm_SET04 = Nil ) then Frm_SET04 := TFrm_SET04.Create(Self);
  Frm_SET04.Show;
end;

procedure TFrm_SET.btnDeleteClick(Sender: TObject);
begin
  pDelDistanceNew;
end;

procedure TFrm_SET.btnExcelA10Click(Sender: TObject);
begin
	if cxView1.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.SET_ExcelDown <> '1') then
	begin
		ShowMessage('[엑셀다운로드[설정메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	Frm_Main.sgExcel := '설정-CID대표번호DNIS관리.xls';
	Frm_Main.sgRpExcel := Format('설정>CID대표번호DNIS관리]%s건', [GetMoneyStr(cxView1.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := cxGrid22;
	Frm_Main.cxGridDBViewExcel := cxView1;
	Frm_Main.proc_excel(0);
end;

procedure TFrm_SET.btnFirstCdClick(Sender: TObject);
begin
	if ed_KeyNumber.Text = '' then
  begin
    GMessageBox('좌측 목록의 대표번호를 선택해 주세요.', CDMSI);
    Exit;
  end;

  if cb_charge_name.ItemIndex = -1 then
  begin
    GMessageBox('요금제1를 선택해 주세요.', CDMSI);
    Exit;
  end;

  if cb_charge_name2.ItemIndex = -1 then
  begin
    GMessageBox('요금제2를 선택해 주세요.', CDMSI);
    Exit;
  end;

  if RbRadioButton5.Checked then
  begin
    if StrToIntDef(RemoveComma(ed_passvalue.Text), -1) < 0 then
    begin
      GMessagebox('경유요금(건당요금)을 입력해주세요.', CDMSI);
      RbRadioButton5Click(RbRadioButton5);
      ed_passvalue.SetFocus;
      Exit;
    end;
  end;

  {
  if (edt_StHour.text+edt_StMin.text)>(edt_EdHour.text+edt_EdMin.text) then
  begin
    GMessagebox('할증시작시간은 할증종료시간보다 작거나 같아야 합니다.',cdmsi);
    Exit;

  end;
  }

	proc_Query('SAVECHARGETYPE', 1);
end;

procedure TFrm_SET.btnPDDelClick(Sender: TObject);
begin
  proc_Query('DELPREMDET');
end;

procedure TFrm_SET.btnPDInsClick(Sender: TObject);
begin
  proc_Query('INSPREMDET');
end;

procedure TFrm_SET.btnPDUpdClick(Sender: TObject);
begin
  proc_Query('UPDPREMDET');
end;

procedure TFrm_SET.btnPInsClick(Sender: TObject);
begin
  if not((cbb2.itemindex<>0) or (edtInpcbb2.text<>'')) then
  begin
    GMessagebox('사용되지 않는 요금제('''')는 설정할 수 없습니다.',CDMSI);
  end else
  begin
    Pos_Prem := -1;
    tm_Premtit := edtInpcbb2.Text;
    proc_Query('SAVPREMMAST');
  end;
end;

procedure TFrm_SET.btnPolygonClick(Sender: TObject);
begin
  if Not Assigned(Frm_SET03) Or ( Frm_SET03 = Nil ) then Frm_SET03 := TFrm_SET03.Create(Self);
  Frm_SET03.lblSosokName.Caption := cboBranch.Text;
  Frm_SET03.FHdNo := GT_SEL_BRNO.HdNo;
  Frm_SET03.FBrNo := FBrNoList[cboBranch.ItemIndex];
  Frm_SET03.Show;
end;

procedure TFrm_SET.btnPUpdClick(Sender: TObject);
begin
  if Length(Prem_rec)<=1 then
  begin
    GMessagebox('현재 저장된 심야할증요금이 없으므로, 최초저장시 추가하십시오.',CDMSI);
  end else if not((cbb2.itemindex<>0) or (edtInpcbb2.text<>'')) then
  begin
    GMessagebox('사용되지 않는 요금제('''')는 설정할 수 없습니다.',CDMSI);
  end else
  begin
    Pos_Prem := Prem_Rec[cbb2.ItemIndex].nseq;
    tm_Premtit:=edtInpcbb2.Text;
    if tm_Premtit='' then
      tm_Premtit:='사용안함';
    proc_Query('SAVPREMMAST');
  end;
end;

procedure TFrm_SET.BtnSearchClick(Sender: TObject);
begin
  proc_GBChargeSet;
end;

procedure TFrm_SET.btn10Click(Sender: TObject);
var
  i: Integer;
begin
	if ed_First_Detail_modify.Value < 1 then
  begin
    GMessagebox('[선택요금수정]의 요금을 확인해 주세요.', CDMSI);
		ed_First_Detail_modify.SetFocus;
    Exit;
  end;

	if (Trim(ed_First_Detail_modify.Text) <> '') and
		(StrToIntDef(Trim(ed_First_Detail_modify.Text), -1000) <> -1000) then
  begin
		asg_First_Detail_charge.BeginUpdate;
		if asg_First_Detail_charge.DataController.GetSelectedCount = 1 then
    begin
			i := asg_First_Detail_charge.DataController.FocusedRecordIndex;
			asg_First_Detail_charge.DataController.Values[i, 9] := Trim(ed_First_Detail_modify.Text);
			asg_First_Detail_charge.DataController.Values[i, 11] := 'U';
    end else
		begin
			cxProgressBar5.Progress := 0;
			cxProgressBar5.MaxValue := asg_First_Detail_charge.DataController.RecordCount - 1;
			for i := 0 to asg_First_Detail_charge.DataController.RecordCount - 1 do
      begin
				if asg_First_Detail_charge.ViewData.Records[i].Selected then // ok
				begin
					asg_First_Detail_charge.ViewData.Records[I].Values[9] := Trim(ed_First_Detail_modify.Text);
					asg_First_Detail_charge.ViewData.Records[I].Values[11] := 'U';
				end;
				cxProgressBar5.Progress := i;
				Application.ProcessMessages;        
      end;
    end;
		asg_First_Detail_charge.EndUpdate;
		bFirstDetailChargeModify := True;
  end;
end;

procedure TFrm_SET.btn1Click(Sender: TObject);
begin
  proc_OraQuery;
end;

procedure TFrm_SET.btn2Click(Sender: TObject);
var
  ErrCode: integer;
  XmlData, Param, ErrMsg: string;
  Arow, iRow : integer;
begin

  // DNIS 중복 검사 한다. 2011.05.17 CDS.
  iRow := proc_DNIS_Duplicate(Trim(mmoDNIS.Text));
  if iRow > -1 then begin
    GMessagebox('중복되는 DNIS 가 있습니다.' + #13#10 + '리스트에서 [' + IntToStr(iRow + 1) + ']행을 확인 바랍니다.',CDMSI);
    Exit;
  end;

 	if Not func_EucKr_Check(mmoDNIS, 0) then Exit;
 	if Not func_EucKr_Check(mmoDESC, 0) then Exit;

  Arow := cxview1.DataController.FocusedRecordIndex;
  if Arow < 0 then Exit;

  try
    if copy(edtCallCenterGubun.Text,1,1) = '1' then
      param := '1' + '│' + edt3.Text + '│' + edt4.Text + '│' + edt5.Text + '│' + Trim(mmoDNIS.Text) + '│' + Trim(mmoDESC.text)
    else if copy(edtCallCenterGubun.Text,1,1) = '2' then
      param := '2' + '│' + edt3.Text + '│' + edt4.Text + '│' + edt5.Text + '│' + Trim(mmoDNIS.Text) + '│' + Trim(mmoDESC.text);


//		if not RequestBase(GetCallable05('SETCIDCONFIG', 'CAS.SET_CID_CONFIG', Param), XmlData, ErrCode, ErrMsg) then
		if not RequestBase(GetCallable05('SET_DNIS_CONFIG', 'MNG_CC.SET_DNIS_CONFIG', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('CID저장중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Exit;
    end;
    cxView1.DataController.BeginUpdate;
    cxView1.DataController.Values[Arow,7]:=Trim(mmoDNIS.Text);
    cxView1.DataController.Values[Arow,8]:=Trim(mmoDESC.Text);
    cxView1.DataController.EndUpdate;
    GMessagebox('CID저장을 완료했습니다.',CDMSI);

  except
    GMessagebox('CID저장중 오류가 발생했습니다.',CDMSI);
  end;
end;

procedure TFrm_SET.cxButton17Click(Sender: TObject);
var
  sExe, sFile: string;
  TextFile : TStringList;
begin
	if cbFirstDetailName.ItemIndex = -1 then
  begin
    GMessagebox('요금제를 먼저 선택하세요.', CDMSI);
		Exit;
  end;

	if OpenDialog1.Execute then
  begin
		sFile := OpenDialog1.FileName;
    sExe := UpperCase(ExtractFileExt(sFile));

    // 자료가 70만건 이상이면 별도 옵션 처리  LYB  20120719
		if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
    begin
      if (sExe = '.XLS') or (sExe = '.XLSX') then
      begin
				func_ExcelTocxGrid(sFile, asg_First_Detail_charge, cxProgressBar5)
      end else
      if (sExe = '.TXT') or (sExe = '.CSV') then
			begin
        try
          TextFile := TStringList.Create;
          TextFile.LoadFromFile(sFile);

          if TextFile.Count > 700000 then
          begin
            pnl_Option.Left := (Frm_Main.Width - pnl_Option.Width) div 2;
						pnl_Option.top  := (Frm_Main.Height - pnl_Option.Height) div 2;
						Gauge2.Progress := 0;
						cxGroupBox2.Caption := '   70만건 이상 옵션 : ' + FormatFloat('#,', TextFile.Count) + ' 건';
            cxGroupBox2.Tag := TextFile.Count;
						Rb_Save.Caption := 'DB 저장 ['+ cbFirstDetailName.Text + ']';
						Rb_Save.Checked := True;            
						Rb_Save.Hint := 'D';
						pnl_Option.Visible := True;
						pnl_Option.Hint := 'FP';
						Lbl_sFile.Caption := sFile;
            Lbl_sExe.Caption := sExe;
            pnl_Option.BringToFront;
          end else
          begin
						func_ExcelTocxGrid(sFile, asg_First_Detail_charge, cxProgressBar5)
          end;
        finally
          FreeAndNil(TextFile);
        end;
      end;
    end else
    begin
      if (sExe = '.XLS') or (sExe = '.XLSX') then
				func_ExcelTocxGrid(sFile, asg_First_Detail_charge, cxProgressBar5)
      else
        if (sExe = '.TXT') or (sExe = '.CSV') then
				func_TxtTocxGrid(sFile, asg_First_Detail_charge, cxProgressBar5);
    end;
  end;
end;

procedure TFrm_SET.cxButton61Click(Sender: TObject);
begin
  if asg_First_Detail_charge.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.SET_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[설정메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

  Frm_Main.sgExcel := '우선세부구간요금표.xls';
  Frm_Main.sgRpExcel := Format('요금제편집>우선세부구간요금]%s건', [GetMoneyStr(asg_First_Detail_charge.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGrid25;
  Frm_Main.cxGridDBViewExcel := asg_First_Detail_charge;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(7);
end;

procedure TFrm_SET.cxButton62Click(Sender: TObject);
begin
	if cbFirstDetailName.ItemIndex = -1 then Exit;
	if GMessagebox('선택한 요금을 삭제하시겠습니까?' + #10#13 + '삭제된 내용은 복구되지 않습니다', CDMSQ) = idok then
		proc_Query('FIRSTDETAILDELETE', 1);
end;

procedure TFrm_SET.cxButton63Click(Sender: TObject);
begin
	if cbFirstDetailName.ItemIndex = -1 then
	begin
		GMessagebox('요금제를 먼저 선택하세요.', CDMSI);
		Exit;
	end;

	if GMessagebox(cbFirstDetailName.Text + '요금제를 삭제하시겠습니까?' + CRLF +
                 '삭제한 요금제 전체 데이터는 복구 불가능 합니다.', CDMSQ) = idok then
		proc_Query('FIRSTDETAILDELETE');

	asg_First_Detail_charge.DataController.SetRecordCount(0);
end;

procedure TFrm_SET.cxButton65Click(Sender: TObject);
begin
	ed_First_Detail_NewNm.Text := '';
	pnl_ReName.Left := (Frm_Main.Width - pnl_ReName.Width) div 2;
	pnl_ReName.top := (Frm_Main.Height - pnl_ReName.Height) div 2;
	Gauge1.Progress := 0;
	pnl_ReName.Visible := True;
	pnl_ReName.BringToFront;
	ed_charge_NewName.SetFocus;
end;

procedure TFrm_SET.cxButton7Click(Sender: TObject);
begin
  proc_Query('CHARTNEWINSERT');
end;

procedure TFrm_SET.btnTypeClick(Sender: TObject);
begin
  if Not Assigned(Frm_SET01) Or ( Frm_SET01 = Nil ) then Frm_SET01 := TFrm_SET01.Create(Self);
  Frm_SET01.FHdNo := GT_SEL_BRNO.HdNo;
  Frm_SET01.FHdNm := '[' + GT_SEL_BRNO.HdNO + '] 전체';
  Frm_SET01.FBrNo := FBrNoList[cboBranch.ItemIndex];
  Frm_SET01.FBrNm := cboBranch.Text;
  Frm_SET01.Show;
end;

procedure TFrm_SET.btnTypeSaveClick(Sender: TObject);
begin
  pSetDistanceNew('1', cbdistTypeName.Text);
end;

procedure TFrm_SET.pSetDistanceNew(AGubun, AValue : String );
Var i, j : Integer;
    sCity, sWard, sDong, eCity, eWard, eDong, sBrNo, sType0, sType1, sType2, sType3, sType4, sQry, sValue : String;
    slSaveAddr, ls_Rcrd : TStringList;
    ADistLog : TDistLog;
begin
  if (Not chkDefault.Checked) And (Not chkType1.Checked) And (Not chkType2.Checked) And (Not chkType3.Checked) And (Not chkType4.Checked) then
  begin
    GMessagebox('입력할 항목을 선택하세요.', CDMSE);
    Exit;
  end;

  if AGubun = '1' then sValue := FDistTypeNo[cbDistTypeName.Properties.Items.IndexOf(AValue)] else
  if AGubun = '2' then sValue := AValue;

  slSaveAddr := TStringList.Create;
  ls_Rcrd := TStringList.Create;
  slSaveAddr.Clear;
  tlEAddrSet.BeginUpdate;
  try
    try
      for i := 0 to tlSAddr.AbsoluteCount  - 1 do
      begin
        if tlSAddr.AbsoluteItems[i].Selected then
        begin
          sCity := tlSAddr.AbsoluteItems[i].Values[4];
          sWard := tlSAddr.AbsoluteItems[i].Values[5];
          sDong := tlSAddr.AbsoluteItems[i].Values[6];
//          if (sCity<>'') And (sWard='') And (sDong='') then
//          begin
//            GMessagebox('출발지 시도 지역에는 요금제를 입력할수 업습니다.', CDMSE);
//            Exit;
//          end;

          for j := 0 to tlEAddrSet.AbsoluteCount  - 1 do
          begin
            if tlEAddrSet.AbsoluteItems[j].Selected then
            begin
              eCity := tlEAddrSet.AbsoluteItems[j].Values[9];
              eWard := tlEAddrSet.AbsoluteItems[j].Values[10];
              eDong := tlEAddrSet.AbsoluteItems[j].Values[11];
//              if (eCity<>'') And (eWard='') And (eDong='') then
//              begin
//                GMessagebox('도착지 시도 지역에는 요금제를 입력할수 업습니다.', CDMSE);
//                Exit;
//              end;
              slSaveAddr.Add(sCity+'^'+sWard+'^'+sDong+'^'+eCity+'^'+eWard+'^'+eDong);
              if chkRound.Checked then
                slSaveAddr.Add(eCity+'^'+eWard+'^'+eDong+'^'+sCity+'^'+sWard+'^'+sDong);

              if chkDefault.Checked then tlEAddrSet.AbsoluteItems[j].Values[4] := AValue;
              if chkType1.Checked   then tlEAddrSet.AbsoluteItems[j].Values[5] := AValue;
              if chkType2.Checked   then tlEAddrSet.AbsoluteItems[j].Values[6] := AValue;
              if chkType3.Checked   then tlEAddrSet.AbsoluteItems[j].Values[7] := AValue;
              if chkType4.Checked   then tlEAddrSet.AbsoluteItems[j].Values[8] := AValue;
            end;
          end;
        end;
      end;

      if slSaveAddr.Count = 0 then Exit;
      
      sBrNo := FBrNoList[cboBranch.ItemIndex];
  		if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.StartTransaction else
	 		if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.StartTransaction;
      for i := 0 to slSaveAddr.Count - 1 do
      begin
        GetTextSeperationEx2('^', slSaveAddr.Strings[i], ls_Rcrd);
        sCity := ls_Rcrd[0];
        sWard := ls_Rcrd[1];
        sDong := ls_Rcrd[2];

        eCity := ls_Rcrd[3];
        eWard := ls_Rcrd[4];
        eDong := ls_Rcrd[5];

        if chkDefault.Checked then sType0 := sValue else sType0 := '';
        if chkType1.Checked   then sType1 := sValue else sType1 := '';
        if chkType2.Checked   then sType2 := sValue else sType2 := '';
        if chkType3.Checked   then sType3 := sValue else sType3 := '';
        if chkType4.Checked   then sType4 := sValue else sType4 := '';

        with dmCharge.FDQuery1 do
        begin
          dmCharge.proc_mysql_init;
          Close;
          SQL.Text := Format('SELECT BR_NO FROM CDMS_DIST_NEW WHERE BR_NO = ''%s'' AND DN_STCITY = ''%s'' AND DN_STWARD = ''%s'' AND DN_STDONG = ''%s'' ' +
                             ' AND DN_EDCITY = ''%s'' AND DN_EDWARD = ''%s'' AND DN_EDDONG = ''%s'' ', [sBrNo, sCity, sWard, sDong, eCity, eWard, eDong]);
          Open;
          if not IsEmpty then
          begin
            dmCharge.proc_mysql_init('update');
            Close;
            sQry := 'UPDATE CDMS_DIST_NEW SET ';
            if chkDefault.Checked then sQry := sQry + Format(' DN_DEFAULT = ''%s'', ', [sType0]);
            if chkType1.Checked   then sQry := sQry + Format(' DN_TYPE1 = ''%s'', '  , [sType1]);
            if chkType2.Checked   then sQry := sQry + Format(' DN_TYPE2 = ''%s'', '  , [sType2]);
            if chkType3.Checked   then sQry := sQry + Format(' DN_TYPE3 = ''%s'', '  , [sType3]);
            if chkType4.Checked   then sQry := sQry + Format(' DN_TYPE4 = ''%s'', '  , [sType4]);
            sQry := sQry + Format(   ' UP_ID = ''%s'', UP_DATE = now() ' +
                               ' WHERE BR_NO = ''%s'' AND DN_STCITY = ''%s'' AND DN_STWARD = ''%s'' AND DN_STDONG = ''%s'' ' +
                                 ' AND DN_EDCITY = ''%s'' AND DN_EDWARD = ''%s'' AND DN_EDDONG = ''%s'' ',
                              [GT_USERIF.ID, sBrNo, sCity, sWard, sDong, eCity, eWard, eDong]);
            SQL.Text := sQry;
            ExecSql;
          end else
          begin
            dmCharge.proc_mysql_init('update');
            Close;
            SQL.Text := Format('INSERT INTO CDMS_DIST_NEW ( BR_NO, DN_STCITY, DN_STWARD, DN_STDONG ' +
                                   ' , DN_EDCITY, DN_EDWARD, DN_EDDONG ' +
                                   ' , DN_DEFAULT, DN_TYPE1, DN_TYPE2, DN_TYPE3, DN_TYPE4 ' +
                                   ' , IN_ID, IN_DATE ) ' +
                               ' VALUES ( ''%s'', ''%s'', ''%s'', ''%s'', ' +
                                        ' ''%s'', ''%s'', ''%s'', ' +
                                        ' ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ' +
                                        ' ''%s'', now()) ',
                              [sBrNo, sCity, sWard, sDong, eCity, eWard, eDong, sType0, sType1, sType2, sType3, sType4, GT_USERIF.ID]);
            ExecSql;
          end;
        end;
      end;
  		if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.Commit else
	 		if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.Commit;
      GMessagebox('저장되었습니다.', CDMSI);
    except on E: Exception do
      begin
    		if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.Rollback else
  	 		if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.Rollback;
        GMessagebox(Format('데이터 저장 중 오류가 발생했습니다.'#13#10'%s', [E.Message]), CDMSE);
      end;
    end;
  finally
    tlEAddrSet.EndUpdate;
    FreeAndNil(slSaveAddr);
    FreeAndNil(ls_Rcrd);
  end;
end;

procedure TFrm_SET.pSetDistanceLog(sBrNo : String; ADistLog : TDistLog );
begin
  try
    with dmCharge.FDQuery1 do
    begin
      dmCharge.proc_mysql_init('update');
      Close;
      SQL.Text := Format('INSERT INTO CDMS_DIST_LOG ( BR_NO, DL_MEMO, DL_SADDR, DL_EADDR ' +
                             ' , DL_DEFAULT_B, DL_DEFAULT_A, DL_TYPE1_B, DL_TYPE1_A ' +
                             ' , DL_TYPE2_B, DL_TYPE2_A, DL_TYPE3_B, DL_TYPE3_A, DL_TYPE4_B, DL_TYPE4_A ' +
                             ' , IN_ID, IN_DATE ) ' +
                         ' VALUES ( ''%s'', ''%s'', ''%s'', ''%s'', ' +
                                  ' ''%s'', ''%s'', ''%s'', ''%s'', ' +
                                  ' ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ' +
                                  ' ''%s'', now()) ',
                        [sBrNo, ADistLog.Memo, ADistLog.sAddr, ADistLog.eAddr,
                         ADistLog.Default_B, ADistLog.Default_A, ADistLog.Type1_B, ADistLog.Type1_A,
                         ADistLog.Type2_B, ADistLog.Type2_A, ADistLog.Type3_B, ADistLog.Type3_A, ADistLog.Type4_B, ADistLog.Type4_A,
                         GT_USERIF.ID]);
      ExecSql;
    end;
  except
  end;
end;

procedure TFrm_SET.pDelDistanceNew;
Var i, j : Integer;
    sCity, sWard, sDong, eCity, eWard, eDong, sBrNo, sType0, sType1, sType2, sType3, sType4, sQry, sValue : String;
    slSaveAddr, ls_Rcrd : TStringList;
begin
  if (Not chkDefault.Checked) And (Not chkType1.Checked) And (Not chkType2.Checked) And (Not chkType3.Checked) And (Not chkType4.Checked) then
  begin
    GMessagebox('삭제할 항목을 선택하세요.', CDMSE);
    Exit;
  end;

  slSaveAddr := TStringList.Create;
  ls_Rcrd := TStringList.Create;
  slSaveAddr.Clear;
  try
    try
      for i := 0 to tlSAddr.AbsoluteCount  - 1 do
      begin
        if tlSAddr.AbsoluteItems[i].Selected then
        begin
          sCity := tlSAddr.AbsoluteItems[i].Values[4];
          sWard := tlSAddr.AbsoluteItems[i].Values[5];
          sDong := tlSAddr.AbsoluteItems[i].Values[6];

          for j := 0 to tlEAddrSet.AbsoluteCount  - 1 do
          begin
            if tlEAddrSet.AbsoluteItems[j].Selected then
            begin
              eCity := tlEAddrSet.AbsoluteItems[j].Values[9];
              eWard := tlEAddrSet.AbsoluteItems[j].Values[10];
              eDong := tlEAddrSet.AbsoluteItems[j].Values[11];

              slSaveAddr.Add(sCity+'^'+sWard+'^'+sDong+'^'+eCity+'^'+eWard+'^'+eDong);
              if chkRound.Checked then
                slSaveAddr.Add(eCity+'^'+eWard+'^'+eDong+'^'+sCity+'^'+sWard+'^'+sDong);

              if chkDefault.Checked then tlEAddrSet.AbsoluteItems[j].Values[4] := '';
              if chkType1.Checked   then tlEAddrSet.AbsoluteItems[j].Values[5] := '';
              if chkType2.Checked   then tlEAddrSet.AbsoluteItems[j].Values[6] := '';
              if chkType3.Checked   then tlEAddrSet.AbsoluteItems[j].Values[7] := '';
              if chkType4.Checked   then tlEAddrSet.AbsoluteItems[j].Values[8] := '';
            end;
          end;
        end;
      end;

      sBrNo := FBrNoList[cboBranch.ItemIndex];
  		if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.StartTransaction else
	 		if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.StartTransaction;
      for i := 0 to slSaveAddr.Count - 1 do
      begin
        GetTextSeperationEx2('^', slSaveAddr.Strings[i], ls_Rcrd);
        sCity := ls_Rcrd[0];
        sWard := ls_Rcrd[1];
        sDong := ls_Rcrd[2];

        eCity := ls_Rcrd[3];
        eWard := ls_Rcrd[4];
        eDong := ls_Rcrd[5];

        if chkDefault.Checked then sType0 := '';
        if chkType1.Checked   then sType1 := '';
        if chkType2.Checked   then sType2 := '';
        if chkType3.Checked   then sType3 := '';
        if chkType4.Checked   then sType4 := '';

        with dmCharge.FDQuery1 do
        begin
          dmCharge.proc_mysql_init('update');
          Close;
          sQry := 'UPDATE CDMS_DIST_NEW SET ';
          if chkDefault.Checked then sQry := sQry + Format(' DN_DEFAULT = ''%s'', ', [sType0]);
          if chkType1.Checked   then sQry := sQry + Format(' DN_TYPE1 = ''%s'', '  , [sType1]);
          if chkType2.Checked   then sQry := sQry + Format(' DN_TYPE2 = ''%s'', '  , [sType2]);
          if chkType3.Checked   then sQry := sQry + Format(' DN_TYPE3 = ''%s'', '  , [sType3]);
          if chkType4.Checked   then sQry := sQry + Format(' DN_TYPE4 = ''%s'', '  , [sType4]);
          sQry := sQry + Format(   ' UP_ID = ''%s'', UP_DATE = now() ' +
                             ' WHERE BR_NO = ''%s'' AND DN_STCITY = ''%s'' AND DN_STWARD = ''%s'' AND DN_STDONG = ''%s'' ' +
                               ' AND DN_EDCITY = ''%s'' AND DN_EDWARD = ''%s'' AND DN_EDDONG = ''%s'' ',
                            [GT_USERIF.ID, sBrNo, sCity, sWard, sDong, eCity, eWard, eDong]);
          SQL.Text := sQry;
          ExecSql;
        end;
      end;
  		if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.Commit else
	 		if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.Commit;
      GMessagebox('삭제되었습니다.', CDMSI);
    except on E: Exception do
      begin
    		if CHARGE_GUBUN = 'O' then dmCharge.FDC_OnLine_41.Rollback else
	   		if CHARGE_GUBUN = 'S' then dmCharge.FDConnection1.Rollback;
        GMessagebox(Format('데이터 삭제 중 오류가 발생했습니다.'#13#10'%s', [E.Message]), CDMSE);
      end;
    end;
  finally
    FreeAndNil(slSaveAddr);
    FreeAndNil(ls_Rcrd);
  end;
end;

procedure TFrm_SET.pGetDistanceNew( ACity, AWard, ADong : String );
Var i : Integer;
    eCity, eWard, eDong, sBrNo : String;
begin
  if cboBranch.ItemIndex < 0 then Exit;
//  if (AWard = '') And (ADong = '') then Exit;

  // Clear;
  tlEAddrSet.BeginUpdate;
  try
    for i := 0 to tlEAddrSet.AbsoluteCount  - 1 do
    begin
      tlEAddrSet.AbsoluteItems[i].Values[4] := '';
      tlEAddrSet.AbsoluteItems[i].Values[5] := '';
      tlEAddrSet.AbsoluteItems[i].Values[6] := '';
      tlEAddrSet.AbsoluteItems[i].Values[7] := '';
      tlEAddrSet.AbsoluteItems[i].Values[8] := '';
    end;
  finally
    tlEAddrSet.EndUpdate;
  end;

  sBrNo := FBrNoList[cboBranch.ItemIndex];
  try
    with dmCharge.FDQuery1 do
    begin
      dmCharge.proc_mysql_init;
      Close;
      SQL.Text := Format('SELECT DN_EDCITY, DN_EDWARD, DN_EDDONG, ' +
                              ' CASE WHEN LEFT(DN_DEFAULT, 1) <> ''D'' THEN DN_DEFAULT ELSE ( SELECT TYPE_NAME FROM CDMS_DIST_TYPE_M WHERE HD_NO = ''%s'' AND (BR_NO = DN.BR_NO OR BR_NO = ''00000'') AND TYPE_NO = DN_DEFAULT) END DN_DEFAULT, '+
                              ' CASE WHEN LEFT(DN_TYPE1, 1) <> ''D'' THEN DN_TYPE1 ELSE ( SELECT TYPE_NAME FROM CDMS_DIST_TYPE_M WHERE HD_NO = ''%s'' AND (BR_NO = DN.BR_NO OR BR_NO = ''00000'') AND TYPE_NO = DN_TYPE1) END DN_TYPE1, '+
                              ' CASE WHEN LEFT(DN_TYPE2, 1) <> ''D'' THEN DN_TYPE2 ELSE ( SELECT TYPE_NAME FROM CDMS_DIST_TYPE_M WHERE HD_NO = ''%s'' AND (BR_NO = DN.BR_NO OR BR_NO = ''00000'') AND TYPE_NO = DN_TYPE2) END DN_TYPE2, '+
                              ' CASE WHEN LEFT(DN_TYPE3, 1) <> ''D'' THEN DN_TYPE3 ELSE ( SELECT TYPE_NAME FROM CDMS_DIST_TYPE_M WHERE HD_NO = ''%s'' AND (BR_NO = DN.BR_NO OR BR_NO = ''00000'') AND TYPE_NO = DN_TYPE3) END DN_TYPE3, '+
                              ' CASE WHEN LEFT(DN_TYPE4, 1) <> ''D'' THEN DN_TYPE4 ELSE ( SELECT TYPE_NAME FROM CDMS_DIST_TYPE_M WHERE HD_NO = ''%s'' AND (BR_NO = DN.BR_NO OR BR_NO = ''00000'') AND TYPE_NO = DN_TYPE4) END DN_TYPE4  '+
                          ' FROM CDMS_DIST_NEW DN ' +
                         ' WHERE BR_NO = ''%s'' AND DN_STCITY = ''%s'' AND DN_STWARD = ''%s'' AND DN_STDONG = ''%s'' ' +
                         ' ORDER BY DN_EDCITY, DN_EDWARD, DN_EDDONG ', [GT_SEL_BRNO.HdNo, GT_SEL_BRNO.HdNo, GT_SEL_BRNO.HdNo, GT_SEL_BRNO.HdNo, GT_SEL_BRNO.HdNo, sBrNo, ACity, AWard, ADong]);
      Open;
      if not IsEmpty then
      begin
        tlEAddrSet.BeginUpdate;
        try
          while not eof do
          begin
            eCity := Fields[0].AsString;
            eWard := Fields[1].AsString;
            eDong := Fields[2].AsString;

            for i := 0 to tlEAddrSet.AbsoluteCount  - 1 do
            begin
              if ( eCity = tlEAddrSet.AbsoluteItems[i].Values[9] ) And
                 ( eWard = tlEAddrSet.AbsoluteItems[i].Values[10] ) And
                 ( eDong = tlEAddrSet.AbsoluteItems[i].Values[11] ) then
              begin
                tlEAddrSet.AbsoluteItems[i].Values[4] := Fields[3].AsString;
                tlEAddrSet.AbsoluteItems[i].Values[5] := Fields[4].AsString;
                tlEAddrSet.AbsoluteItems[i].Values[6] := Fields[5].AsString;
                tlEAddrSet.AbsoluteItems[i].Values[7] := Fields[6].AsString;
                tlEAddrSet.AbsoluteItems[i].Values[8] := Fields[7].AsString;
                Break;
              end;
            end;
            Next;
          end;
        finally
          tlEAddrSet.EndUpdate;
        end;
      end;
    end;
  except on E: Exception do
    begin
      GMessagebox(Format('데이터 조회 중 오류가 발생했습니다.'#13#10'%s', [E.Message]), CDMSE);
    end;
  end;
end;

procedure TFrm_SET.cxGroupBox2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ReleaseCapture;
  PostMessage(pnl_Option.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SET.cxGroupBox3MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(pnl_ReName.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SET.cxGroupBox43MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(pnlCIDXESet.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SET.cxPageControl1Change(Sender: TObject);
Var iTag : Integer;
begin
  iTag := cxPageControl1.Pages[cxPageControl1.ActivePageIndex].Tag;

  if Assigned(Frm_JON51) then
      if TCK_USER_PER.BTM_MENUSCH = '1' then Frm_JON51.Menu_Use_Mark('ADD', iTag);

	case cxPageControl1.ActivePageIndex of
    0: proc_ChargeModify;
    1: proc_ChargeSet;
    2: proc_GBChargeSet;     //20120601 LYB추가
    3: proc_PRChargeSet;
    4: proc_OraQuery;
  end;
end;
procedure TFrm_SET.cxView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  Arow: Integer;
begin
  Arow := cxview1.DataController.FocusedRecordIndex;
  if Arow < 0 then Exit;

  edt1.Text := cxview1.DataController.Values[ARow, 1];
  edt2.Text := cxview1.DataController.Values[ARow, 2];
  edtCallCenterGubun.Text := cxview1.DataController.Values[ARow, 3];
  edt3.Text := cxview1.DataController.Values[ARow, 4];
  edt4.Text := cxview1.DataController.Values[ARow, 5];
  edt5.Text := cxview1.DataController.Values[ARow, 6];

  mmoDNIS.Text:= cxview1.DataController.Values[ARow, 7];
  mmoDESC.Text:= cxview1.DataController.Values[ARow, 8];
  if cxview1.DataController.Values[ARow, 3] = '2 콜센터' then
    mmoDESC.Enabled := False
  else
    mmoDESC.Enabled := True;
end;

procedure TFrm_SET.edtCIDXE1IDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then edtCIDXE1PW.SetFocus;
end;

procedure TFrm_SET.edtCIDXE1IDKeyPress(Sender: TObject; var Key: Char);
begin
	if not btnCIDXE1IDCheck.Enabled then btnCIDXE1IDCheck.Enabled := True;
end;

procedure TFrm_SET.edtCIDXE1PWKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then
	begin
		if edtCIDXE1PW_COMF.Visible then
			edtCIDXE1PW_COMF.SetFocus
		else
			edtCIDXE1ServerNAME.SetFocus;
	end;
end;

procedure TFrm_SET.edtCIDXE1PWKeyPress(Sender: TObject; var Key: Char);
begin
	if not edtCIDXE1PW_COMF.Visible then
	begin
		edtCIDXE1PW_COMF.Visible := True;
  	cxLabel5.Visible := True;
    Shape17.Visible := True;
		pwCHK1 := 1;
	end;
end;

procedure TFrm_SET.edtCIDXE1PW_COMFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then edtCIDXE1ServerNAME.SetFocus;
end;

procedure TFrm_SET.edtCIDXE1ServerNAMEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then edtCIDXE1MEMO.SetFocus;
end;

procedure TFrm_SET.edtCIDXE2IDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then edtCIDXE2PW.SetFocus;
end;

procedure TFrm_SET.edtCIDXE2IDKeyPress(Sender: TObject; var Key: Char);
begin
	if not btnCIDXE2IDCheck.Enabled then btnCIDXE2IDCheck.Enabled := True;
end;

procedure TFrm_SET.edtCIDXE2PWKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then
	begin
		if edtCIDXE2PW_COMF.Visible then
			edtCIDXE2PW_COMF.SetFocus
		else
			edtCIDXE2ServerNAME.SetFocus;
	end;
end;

procedure TFrm_SET.edtCIDXE2PWKeyPress(Sender: TObject; var Key: Char);
begin
	if not edtCIDXE2PW_COMF.Visible then
	begin
		edtCIDXE2PW_COMF.Visible := True;
  	cxLabel10.Visible := True;
    Shape22.Visible := True;
		pwCHK2 := 1;
	end;
end;

procedure TFrm_SET.edtCIDXE2PW_COMFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then edtCIDXE2ServerNAME.SetFocus;
end;

procedure TFrm_SET.edtCIDXE2ServerNAMEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then edtCIDXE2MEMO.SetFocus;
end;

// DNIS 를 중복 검사 한다. 2011.05.17
function TFrm_SET.proc_DNIS_Duplicate(sDNIS : string) : Integer;
var
  iRow, i, j, Arow : integer;
  Str, sNO : string;
  lsDnis, lsCmp : TStringList;
begin
  Result := -1;
  iRow   := -1;

  lsDnis := TStringList.Create;
  lsCmp  := TStringList.Create;

  lsDnis.Clear;
  lsDnis.Delimiter     := ',';
  lsDnis.DelimitedText := sDNIS;

  Arow := cxview1.DataController.FocusedRecordIndex;
  if Arow < 0 then Exit;

  sNO := cxview1.DataController.Values[Arow, 0];
  str := '';

  try
    for i := 0 to cxview1.DataController.RecordCount - 1 do
    begin
      // 현재 선택된 행은 비교하지 않음.
      //if sNO <> cxview1.ViewData.Records[i].Values[0] then begin
      //   cxview1.ViewData.Records[i].Values[0]  -->  이구문은 사용하면 안됨.(그리드 정렬로 인해 행이 바뀌면 엉뚱한 값을 읽어옴)
      if sNO <> cxview1.DataController.Values[i, 0] then
      begin
        //str  := cxview1.ViewData.Records[i].Values[6];  // DNIS 정보 읽기.
        str  := cxview1.DataController.Values[i, 7];

        lsCmp.Clear;
        lsCmp.Delimiter     := ',';
        lsCmp.DelimitedText := str;
        for j := 0 to lsDnis.Count - 1 do
        begin
          if lsCmp.IndexOf(Trim(lsDnis[j])) >= 0   then
          begin
            iRow := i;
            Break;
          end;
        end;
        if iRow > -1 then Break;
      end;
    end;

  finally
    FreeAndNil(lsDnis);
    FreeAndNil(lsCmp);
  end;

  Result := iRow;
end;

procedure TFrm_SET.proc_GBChargeSet;
begin
  if (GS_EXEC_GUBUN = 0) and (CHARGE_GUBUN = 'P') then
  begin
    GMessagebox('선행 프로그램 때문에 작업을 할 수 없습니다.', CDMSI);
    Exit;
  end;

  cb_BCharge_Gubun.ItemIndex := 0;
  asg_BBr_Charge.DataController.SetRecordCount(0);
  cxGrid_BTerm.DataController.SetRecordCount(0);
  cxGrid_BDis.DataController.SetRecordCount(0);
  cxGrid_BChart.DataController.SetRecordCount(0);
  ed_Bpassvalue.Text := '';
  RbBRadioButton5Click(RbBRadioButton5);

  if ((GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then//(GT_USERIF.LV = '60') or
  begin
    GMessagebox('법인업체 요금설정은 지사를 선택하셔야 합니다.', CDMSI);
    Exit;
  end else
  begin
    if GT_SEL_BRNO.GUBUN <> '1' then
    begin
      GMessagebox('법인업체 요금설정은 지사를 선택하셔야 합니다.', CDMSI);
      Exit;
    end else
  end;

  if lblSosokNameA5.Caption = '' then Exit;

  proc_bubinlist;
  proc_Query('SELECTBGCHARGE');
end;

// 20120601 LYB
procedure TFrm_SET.proc_bubinlist;
var
  ls_TxLoad: WideString;
  rv_str, sQueryTemp : string;
  ls_AndCon1: string;

  slReceive: TStringList;
  ErrCode: Integer;
begin
  try
    //법인명 가져오기
    if GT_SEL_BRNO.GUBUN = '1' then
    begin
      ls_AndCon1 := Format(' WHERE BR_NO = ''%s'' ', [GT_SEL_BRNO.BrNo]);
    end
    else
    begin
      if GT_USERIF.LV = '60' then
      begin
        if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
          ls_AndCon1 := Format(' WHERE BR_NO in (select br_no from cdms_branch where hd_no = ''%s'')', [GT_SEL_BRNO.HDNO])
        else
					ls_AndCon1 := Format(' WHERE BR_NO in (select br_no from cdms_branch where hd_no = ''%s'')', [GT_USERIF.HD]);
      end
      else if GT_USERIF.LV = '40' then
        ls_AndCon1 := Format(' WHERE BR_NO = ''%s'' ', [GT_USERIF.BR])
      ;
    end;

    fGet_BlowFish_Query(GSQ_BUBIN_LIST, sQueryTemp);
    ls_TxLoad := GetSel01('Main' + 'LISTBUBIN', Format(sQueryTemp, [ls_AndCon1]));
    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        proc_recieve(rv_str);
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except
    on e: exception do
    begin
      ls_TxLoad := 'frm_SET[proc_bubinlist]:' + e.Message;
      Assert(False, E.Message);
      ShowMessage(ls_TxLoad);
    end;
  end;
end;
procedure TFrm_SET.proc_recieve(ls_rxxml: widestring);
var
  xdom: msDomDocument;
  ls_ClientKey, ls_Msg_Err : string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd : TStringList;
  i, j, iRow: Integer;
begin
  try
  	xdom := ComsDomDocument.Create;
    try
      if not xdom.loadXML(ls_rxxml) then
      begin
        Exit;
      end;

      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_ClientKey := GetXmlClientKey(ls_rxxml);
        ls_ClientKey := Copy(ls_ClientKey, 5, Length(ls_ClientKey) - 4);
        if ls_ClientKey = 'LISTBUBIN' then
        begin
          lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
          if lst_Result.length > 0 then
          begin
            ls_Rcrd := TStringList.Create;
            try
              asg_BBr_Charge.BeginUpdate;
              j := 1;
              for i := 0 to lst_Result.length - 1 do
              begin
                GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                if ls_Rcrd.Count <= 1 then Continue;
                if Length(ls_Rcrd[2]) <> 5 then Continue;

                iRow := asg_BBr_Charge.DataController.AppendRecord;

                asg_BBr_Charge.DataController.Values[iRow, 0] := IntToStr(j);
                asg_BBr_Charge.DataController.Values[iRow, 1] := lblSosokNameA5.Caption;
                asg_BBr_Charge.DataController.Values[iRow, 2] := Rpad(ls_Rcrd[1], 15, ' ');
                asg_BBr_Charge.DataController.Values[iRow, 3] := ls_Rcrd[3];
                asg_BBr_Charge.DataController.Values[iRow, 4] := '요금표';
                asg_BBr_Charge.DataController.Values[iRow, 5] := '요금표_표준';
                asg_BBr_Charge.DataController.Values[iRow, 6] := '';
                asg_BBr_Charge.DataController.Values[iRow, 7] := '';
                asg_BBr_Charge.DataController.Values[iRow, 8] := '';

                // 2011.02.09 할증컬럼변경(0-7 유지, 할증컬럼 8-10, 8-13 는 +3)
                asg_BBr_Charge.DataController.Values[iRow, 9] := '';
                asg_BBr_Charge.DataController.Values[iRow, 10] := '';
                asg_BBr_Charge.DataController.Values[iRow, 11] := '';

                asg_BBr_Charge.DataController.Values[iRow, 12] := '';
                asg_BBr_Charge.DataController.Values[iRow, 13] := Rpad(ls_Rcrd[0], 5, ' ');
                asg_BBr_Charge.DataController.Values[iRow, 14] := 'CC001';
                asg_BBr_Charge.DataController.Values[iRow, 15] := '';
                asg_BBr_Charge.DataController.Values[iRow, 16] := '';
                asg_BBr_Charge.DataController.Values[iRow, 17] := '';
                asg_BBr_Charge.DataController.Values[iRow, 18] := Rpad(ls_Rcrd[2], 5, ' ');
                Inc(j);
              end;
              asg_BBr_Charge.EndUpdate;
            finally
              ls_Rcrd.Free;
            end;
          end;
		  	end;
		  	Screen.Cursor := crDefault;
		  end else
      begin
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
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

procedure TFrm_SET.proc_ChargeSet;
var
  i, iRow: Integer;
begin
  if (GS_EXEC_GUBUN = 0) and (CHARGE_GUBUN = 'P') then
  begin
    GMessagebox('선행 프로그램 때문에 작업을 할 수 없습니다.', CDMSI);
    Exit;
  end;

  cb_Charge_Gubun.ItemIndex := 0;
  asg_Br_Charge.DataController.SetRecordCount(0);
  cxGrid_Term.DataController.SetRecordCount(0);
  cxGrid_Dis.DataController.SetRecordCount(0);
  cxGrid_Chart.DataController.SetRecordCount(0);
  ed_passvalue.Text := '';

  i := 0;
  asg_Br_Charge.BeginUpdate;
  while i <= scb_KeyNumber.Count - 1 do
  begin
    if GSL_HD_LIST[i, 0] = '' then
      break;

    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    begin
      if GSL_HD_LIST[i, 5] <> GT_SEL_BRNO.HDNO then
      begin
        Inc(I);
        Continue;
      end;
    end;

    if Trim(GSL_HD_LIST[i, 2]) = '' then
    begin
      Inc(I);
      Continue;
    end;
    iRow := asg_Br_Charge.DataController.AppendRecord;

		asg_Br_Charge.DataController.Values[iRow, 0] := IntToStr(i + 1);
    asg_Br_Charge.DataController.Values[iRow, 1] := GSL_HD_LIST[i, 1];
    asg_Br_Charge.DataController.Values[iRow, 2] := strtocall(GSL_HD_LIST[i, 2]);
    asg_Br_Charge.DataController.Values[iRow, 3] := '요금표';
		asg_Br_Charge.DataController.Values[iRow, 4] := '요금표_표준';
		asg_Br_Charge.DataController.Values[iRow, 5] := '요금표';
		asg_Br_Charge.DataController.Values[iRow, 6] := '요금표_표준';
		asg_Br_Charge.DataController.Values[iRow, 7] := '';
		asg_Br_Charge.DataController.Values[iRow, 8] := '';
		asg_Br_Charge.DataController.Values[iRow, 9] := '';
		asg_Br_Charge.DataController.Values[iRow, 10] := '';

    // 2011.02.09 할증컬럼변경(0-7 유지, 할증컬럼 8-10, 8-13 는 +3)
		asg_Br_Charge.DataController.Values[iRow, 11] := '';
		asg_Br_Charge.DataController.Values[iRow, 12] := '';
		asg_Br_Charge.DataController.Values[iRow, 13] := '';

		asg_Br_Charge.DataController.Values[iRow, 14] := '';
		asg_Br_Charge.DataController.Values[iRow, 15] := GSL_HD_LIST[i, 0];
		asg_Br_Charge.DataController.Values[iRow, 16] := 'CC001';
		asg_Br_Charge.DataController.Values[iRow, 17] := 'CC001';
		asg_Br_Charge.DataController.Values[iRow, 18] := '';
		asg_Br_Charge.DataController.Values[iRow, 19] := '';
		asg_Br_Charge.DataController.Values[iRow, 20] := '';
    inc(i);
  end;
  asg_Br_Charge.EndUpdate;
  proc_Query('SELECTCHARGE');
end;

// 2011.04.21
// CID대표번호 설정권한
procedure TFrm_SET.proc_OraQuery;
var
	StrList, slList: TStringList;
  ErrCode: integer;

  XmlData, Param, ErrMsg: string;
	j: Integer;
  tmpCnt: integer;
  tmpCntStr: string;
  k: Integer;
  tmpStr: string;
  ArrSt: array of string;
  iRow: integer;
begin
  Param:='';

  edt1.Text := '';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';
  edtCallCenterGubun.Text := '';

  mmoDNIS.Clear;
  mmoDESC.Clear;

  // 2011.04.21 대표번호권한(로그인이후 체크)
  if GT_USERIF.CIDTEL_PER=false then
  begin
    GMessagebox('CID대표번호DNIS관리 권한이 없습니다.' + #13#10 + '설정권한은 본사관리자 마스터만이 가능합니다.', CDMSI);
    Exit;
  end;
	btnCIDXESet.Enabled := True;
	try
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel05('LIST_DNIS_CONFIG', 'MNG_CC.LIST_DNIS_CONFIG', '1000', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('CID대표번호 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
				Screen.Cursor := crDefault;
				FreeAndNil(slList);
				Exit;
			end;

			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
      Frm_Flash.cxPBar1.Position := 0;
			cxView1.DataController.SetRecordCount(0);
			cxView1.BeginUpdate;
			for j := 0 to slList.Count - 1 do
			begin
        Frm_Flash.cxPBar1.Position := j + 1;
        Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
				Application.ProcessMessages;
        xmlData := slList.Strings[j];

        if Pos('<Data Count="',xmlData)>0 then
        begin
          tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
          if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
          tmpCnt:=StrToIntDef(tmpCntStr,0);
        end;

				StrList := TStringList.Create;
				try
					if Pos('<Data Count="',xmlData)>0 then
					begin
						tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
						if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
						tmpCnt:=StrToIntDef(tmpCntStr,0);
					end;
					if tmpCnt<1 then exit;

					SetLength(ArrSt,tmpCnt);
					tmpStr:=xmlData;
					tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
					tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
					tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);

					if Pos('<Result Value=',XmlData)>0 then
						tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);

					if tmpCnt>0 then
					begin
						for k:=0 to tmpCnt-1 do
						begin
							ArrSt[k]:=tmpStr;
							if Pos('/>',tmpStr)>0 then
							begin
								ArrSt[k]:=Copy(tmpStr,1,Pos('/>',tmpStr)-1);
								if Pos('<Result Value=',ArrSt[k]) > 0 then
									ArrSt[k] := Copy(ArrSt[k],Pos('<Result Value=',ArrSt[k])+14,Length(ArrSt[k])-Pos('<Result Value=',ArrSt[k])+14+1);
								if Pos('/>',ArrSt[k]) > 0 then
									ArrSt[k] := Copy(ArrSt[k],1,Pos('/>',ArrSt[k])-1);
								ArrSt[k]:=StringReplace(ArrSt[k],'"','',[rfReplaceAll]);

								tmpStr:=Copy(tmpStr,Pos('/>',tmpStr)+2,Length(tmpStr)-Pos('/>',tmpStr)+2+1);
								StrList.Clear;
								GetTextSeperationEx('│', ArrSt[k], StrList);

								iRow := cxview1.DataController.AppendRecord;
								OutputDebugString(pchar(IntToStr(iRow)+','+inttostr(strlist.count)));
								SetGridData(cxview1, iRow, 0, IntToStr(iRow+1));
								SetGridData(cxview1, iRow, 1, StrList.Strings[1]);
								SetGridData(cxview1, iRow, 2, StrList.Strings[2]);
								if StrList.Strings[0] = '1' then
									SetGridData(cxview1, iRow, 3, '1 콜센터')
								else if StrList.Strings[0] = '2' then
									SetGridData(cxview1, iRow, 3, '2 콜센터');
								SetGridData(cxview1, iRow, 4, StrList.Strings[3]);
								SetGridData(cxview1, iRow, 5, StrList.Strings[4]);
								SetGridData(cxview1, iRow, 6, StrList.Strings[5]);
								SetGridData(cxview1, iRow, 7, StrList.Strings[6]);
								SetGridData(cxview1, iRow, 8, StrList.Strings[7]);
							end;
						end;
					end;
				finally
					StrList.Free;
					Screen.Cursor := crDefault;
				end;
			end;
		finally
			cxView1.endupdate;
			Frm_Flash.hide;
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
		end;
	except
		on E: Exception do
		begin
			Frm_Flash.hide;
			Screen.Cursor := crDefault;
			FreeAndNil(slList);
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_SET.pSAddrList;
var i, j, k : integer;
	sCity, sWard, sWard1, sDong : String;
  slCity : TStringList;
	aNode, bNode, cNode, dNode : TcxTreeListNode;
	LeftTreePtr : PTreeSAddr;
begin
	SetDebugeWrite('TFrm_SET.pSAddrList');
	Try
		tlSAddr.Root.TreeList.Clear;
		tlSAddr.Root.CheckGroupType := ncgCheckGroup;

    slCity := TStringList.Create;
		tlSAddr.BeginUpdate;
    try
      slCity.Delimiter     := ',';
      slCity.DelimitedText := GS_SEARCH_POI_ALL;
      slCity.Sorted := True;
      for i := 0 to slCity.Count -1 do
      begin
        sCity := slCity[i];
        if sCity = '세종' then Continue;  // 세종은 충남 세정으로 편입

        New(LeftTreePtr);
        LeftTreePtr^.City  := sCity;
        LeftTreePtr^.Ward  := '';
        LeftTreePtr^.Ward1 := '';
        LeftTreePtr^.Dong  := '';

        aNode := tlSAddr.Add(nil, LeftTreePtr);
        aNode.Texts[0] := sCity;
        aNode.Texts[4] := sCity;
        aNode.Texts[5] := '';
        aNode.Texts[6] := '';

        sWard := '';
        sWard1 := '';
        for j := 0 to GT_MAPOrigi.slWard.Count - 1 do
        begin
          if sWard = GT_MAPOrigi.slWard[j] then Continue;
          if sCity = GT_MAPOrigi.slCity[j] then
          begin
            if Pos(sWard, GT_MAPOrigi.slWard[j]) > 0 then
            begin
              if sWard1 = GT_MAPOrigi.slWard[j] then Continue;
              sWard1 := GT_MAPOrigi.slWard[j];

              New(LeftTreePtr);
              LeftTreePtr^.City  := sCity;
              LeftTreePtr^.Ward  := sWard;
              LeftTreePtr^.Ward1 := sWard1;
              LeftTreePtr^.Dong  := '';

              cNode := tlSAddr.AddChild(bNode, LeftTreePtr);
              cNode.Texts[0] := sWard1;

              cNode.Texts[4] := sCity;
              cNode.Texts[5] := sWard1;
              cNode.Texts[6] := '';

              sDong := '';
              for k := 0 to GT_MAPOrigi.slStre.Count - 1 do
              begin
                if sDong = GT_MAPOrigi.slStre[k] then Continue;
                if (sCity = GT_MAPOrigi.slCity[k]) And (sWard1 = GT_MAPOrigi.slWard[k]) then
                begin
                  sDong := GT_MAPOrigi.slStre[k];
                  New(LeftTreePtr);
                  LeftTreePtr^.City  := sCity;
                  LeftTreePtr^.Ward  := sWard;
                  LeftTreePtr^.Ward1 := sWard1;
                  LeftTreePtr^.Dong  := sDong;

                  dNode := tlSAddr.AddChild(cNode, LeftTreePtr);
                  dNode.Texts[0] := sWard1;
                  dNode.Texts[3] := sDong;

                  dNode.Texts[4] := sCity;
                  dNode.Texts[5] := sWard1;
                  dNode.Texts[6] := sDong;
                end;
              end;
            end else
            begin
              sWard := GT_MAPOrigi.slWard[j];

              New(LeftTreePtr);
              LeftTreePtr^.City  := sCity;
              LeftTreePtr^.Ward  := sWard;
              LeftTreePtr^.Ward1 := '';
              LeftTreePtr^.Dong  := '';

              bNode := tlSAddr.AddChild(aNode, LeftTreePtr);
              bNode.Texts[0] := sWard;
              bNode.Texts[4] := sCity;
              bNode.Texts[5] := sWard;
              bNode.Texts[6] := '';

              sDong := '';
              for k := 0 to GT_MAPOrigi.slStre.Count - 1 do
              begin
                if sDong = GT_MAPOrigi.slStre[k] then Continue;
                if (sCity = GT_MAPOrigi.slCity[k]) And (sWard = GT_MAPOrigi.slWard[k]) then
                begin
                  sDong := GT_MAPOrigi.slStre[k];
                  New(LeftTreePtr);
                  LeftTreePtr^.City  := sCity;
                  LeftTreePtr^.Ward  := sWard;
                  LeftTreePtr^.Ward1 := '';
                  LeftTreePtr^.Dong  := sDong;

                  cNode := tlSAddr.AddChild(bNode, LeftTreePtr);
                  cNode.Texts[0] := sWard;
                  cNode.Texts[3] := sDong;

                  cNode.Texts[4] := sCity;
                  cNode.Texts[5] := sWard;
                  cNode.Texts[6] := sDong;
                end;
              end;
            end;
          end;
        end;
      end;
    finally
  		tlSAddr.EndUpdate;
      FreeAndNil(slCity);
    end;
	Except
    on e: exception do
    begin
			Assert(False, 'pSAddrList Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_SET.pEAddrSetList;
var i, j, k : integer;
	sCity, sWard, sWard1, sDong : String;
  slCity : TStringList;
	aNode, bNode, cNode, dNode : TcxTreeListNode;
	LeftTreePtr : PTreeSAddr;
begin
	SetDebugeWrite('TFrm_SET.pEAddrSetList');
	Try
		tlEAddrSet.Root.TreeList.Clear;
		tlEAddrSet.Root.CheckGroupType := ncgCheckGroup;

    slCity := TStringList.Create;
		tlEAddrSet.BeginUpdate;
    try
      slCity.Delimiter     := ',';
      slCity.DelimitedText := GS_SEARCH_POI_ALL;
      slCity.Sorted := True;
      for i := 0 to slCity.Count -1 do
      begin
        sCity := slCity[i];
        if sCity = '세종' then Continue;  // 세종은 충남 세정으로 편입

        New(LeftTreePtr);
        LeftTreePtr^.City  := sCity;
        LeftTreePtr^.Ward  := '';
        LeftTreePtr^.Ward1 := '';
        LeftTreePtr^.Dong  := '';

        aNode := tlEAddrSet.Add(nil, LeftTreePtr);
        aNode.Texts[0] := sCity;
        aNode.Texts[9] := sCity;
        aNode.Texts[10] := '';
        aNode.Texts[11] := '';

        sWard := '';
        sWard1 := '';
        for j := 0 to GT_MAPOrigi.slWard.Count - 1 do
        begin
          if sWard = GT_MAPOrigi.slWard[j] then Continue;
          if sCity = GT_MAPOrigi.slCity[j] then
          begin
            if Pos(sWard, GT_MAPOrigi.slWard[j]) > 0 then
            begin
              if sWard1 = GT_MAPOrigi.slWard[j] then Continue;
              sWard1 := GT_MAPOrigi.slWard[j];

              New(LeftTreePtr);
              LeftTreePtr^.City  := sCity;
              LeftTreePtr^.Ward  := sWard;
              LeftTreePtr^.Ward1 := sWard1;
              LeftTreePtr^.Dong  := '';

              cNode := tlEAddrSet.AddChild(bNode, LeftTreePtr);
              cNode.Texts[0] := sWard1;

              cNode.Texts[ 9] := sCity;
              cNode.Texts[10] := sWard1;
              cNode.Texts[11] := '';

              sDong := '';
              for k := 0 to GT_MAPOrigi.slStre.Count - 1 do
              begin
                if sDong = GT_MAPOrigi.slStre[k] then Continue;
                if (sCity = GT_MAPOrigi.slCity[k]) And (sWard1 = GT_MAPOrigi.slWard[k]) then
                begin
                  sDong := GT_MAPOrigi.slStre[k];
                  New(LeftTreePtr);
                  LeftTreePtr^.City  := sCity;
                  LeftTreePtr^.Ward  := sWard;
                  LeftTreePtr^.Ward1 := sWard1;
                  LeftTreePtr^.Dong  := sDong;

                  dNode := tlEAddrSet.AddChild(cNode, LeftTreePtr);
                  dNode.Texts[0] := sWard1;
                  dNode.Texts[3] := sDong;

                  dNode.Texts[ 9] := sCity;
                  dNode.Texts[10] := sWard1;
                  dNode.Texts[11] := sDong;
                end;
              end;
            end else
            begin
              sWard  := GT_MAPOrigi.slWard[j];

              New(LeftTreePtr);
              LeftTreePtr^.City  := sCity;
              LeftTreePtr^.Ward  := sWard;
              LeftTreePtr^.Ward1 := '';
              LeftTreePtr^.Dong  := '';

              bNode := tlEAddrSet.AddChild(aNode, LeftTreePtr);
              bNode.Texts[0] := sWard;

              bNode.Texts[ 9] := sCity;
              bNode.Texts[10] := sWard;
              bNode.Texts[11] := '';

              sDong := '';
              for k := 0 to GT_MAPOrigi.slStre.Count - 1 do
              begin
                if sDong = GT_MAPOrigi.slStre[k] then Continue;
                if (sCity = GT_MAPOrigi.slCity[k]) And (sWard = GT_MAPOrigi.slWard[k]) then
                begin
                  sDong := GT_MAPOrigi.slStre[k];
                  New(LeftTreePtr);
                  LeftTreePtr^.City  := sCity;
                  LeftTreePtr^.Ward  := sWard;
                  LeftTreePtr^.Ward1 := '';
                  LeftTreePtr^.Dong  := sDong;

                  cNode := tlEAddrSet.AddChild(bNode, LeftTreePtr);
                  cNode.Texts[0] := sWard;
                  cNode.Texts[3] := sDong;

                  cNode.Texts[ 9] := sCity;
                  cNode.Texts[10] := sWard;
                  cNode.Texts[11] := sDong;
                end;
              end;
            end;
          end;
        end;
      end;
    finally
  		tlEAddrSet.EndUpdate;
      FreeAndNil(slCity);
    end;
	Except
    on e: exception do
    begin
			Assert(False, 'pEAddrSetList Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_SET.SetBranch;
Var HdCd, HdCd_Old: string;
    i : Integer;
begin
  try
    cboBranch.Properties.Items.Clear;
    FBrNoList.Clear;
    if GT_USERIF.LV = '10' then   // 상담원
    begin
      for I := 0 to scb_BranchName.Count - 1 do
      begin
         //지사 표시 시 지사코드, 지사명표기
         cboBranch.Properties.Items.Add('('+scb_BranchCode[I]+')' + scb_BranchName[I]);
				 FBrNoList.Add(scb_BranchCode[I]);
      end;
    end else
    begin
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      begin
        for I := 0 to scb_FamilyBrName.Count - 1 do
        begin
           HdCd := frm_Main.func_search_hdNo(scb_FamilyBrCode[I]);
           if HdCd <> HdCd_Old then
           begin
  //					 RequestDataHeadInfo(HdCd);
             HdCd_Old := HdCd;
           end;
           //지사 표시 시 지사코드, 지사명표기
           cboBranch.Properties.Items.Add('('+scb_FamilyBrCode[I]+')' + scb_FamilyBrName[I]);
  				 FBrNoList.Add(scb_FamilyBrCode[I]);
        end;
      end else
      begin
        for I := 0 to scb_BranchName.Count - 1 do
        begin
           HdCd :='';
           HdCd := frm_Main.func_search_hdNo(scb_BranchCode[I]);
           if HdCd <> HdCd_Old then
           begin
  //           RequestDataHeadInfo(HdCd);
             HdCd_Old := HdCd;
           end;
           //지사 표시 시 지사코드, 지사명표기
           cboBranch.Properties.Items.Add('('+scb_BranchCode[I]+')' + scb_BranchName[I]);
  				 FBrNoList.Add(scb_BranchCode[I]);
        end;
      end;
    end;
    cboBranch.ItemIndex := 0;
  except
    on e: exception do
    begin
			Assert(False, 'SetBranch Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_SET.pSelect_DistTypeM;
Var sBrNo : String;
begin
  if cboBranch.ItemIndex < 0 then Exit;

  try
    sBrNo := FBrNoList[cboBranch.ItemIndex];
    cbdistTypeName.Properties.Items.Clear;
    FDistTypeNo.Clear;
    with dmCharge.FDQuery1 do
    begin
      dmCharge.proc_mysql_init;
      Close;
      SQL.Text := Format('SELECT TYPE_NO, TYPE_NAME FROM CDMS_DIST_TYPE_M WHERE HD_NO = ''%s'' AND (BR_NO = ''%s'' OR BR_NO = ''00000'') ORDER BY TYPE_NAME', [GT_SEL_BRNO.HdNo, sBrNo]);
      Open;
      while not Eof do
      begin
        cbdistTypeName.Properties.Items.Add(Fields[1].AsString);
        FDistTypeNo.Add(Fields[0].AsString);
        Next;
      end;
    end;
    cbdistTypeName.ItemIndex := 0;
  except on E: Exception do
    begin
      GMessagebox(Format('타입 조회 중 오류발생[오류: %s]', [E.Message]), CDMSE);
    end;
  end;
end;

end.

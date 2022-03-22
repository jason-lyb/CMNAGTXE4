unit xe_CMP;

interface

uses
	Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, dxCore,
  Dialogs, xe_CMP01, IniFiles, MSXML2_TLB, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles,
	cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxLabel, IdGlobal,
  cxCurrencyEdit, DB, cxDBData, cxGridDBTableView, cxListBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxClasses,
	cxControls, cxGridCustomView, cxGrid, StdCtrls, cxRadioGroup,
	cxDropDownEdit, cxCalendar, cxTextEdit, cxButtons, cxCheckBox,
  cxMaskEdit, cxContainer, cxPC,  cxGridExportLink, ShellAPI,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
	DateUtils, ExtCtrls, StrUtils, cxGroupBox, cxMemo, Buttons,
  cxSpinEdit, cxButtonEdit, cxSplitter, AdvScrollBox, cxTimeEdit,
	cxColorComboBox, Grids, BaseGrid, AdvGrid, ComObj, GradientLabel,
  cxPCdxBarPopupMenu, cxLookAndFeels, cxNavigator, AdvObj, cxScrollBox,
  Vcl.Imaging.jpeg, dxBarBuiltInMenu, dxSkinsCore,
  dxSkinscxPCPainter, AdvUtil, cxImage, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
	// �������� �ӽ����� ����ü
  THeadInfoTmp = record
		Name, Code, Owner, Phone, Phone2, MPhone, MPhone2, ID, SNum, attend_hp, excel_hp : string;
    Use, TypeV: Boolean;
    Symbol, ShareOrder, VirAccount: string;
		Share: Integer;
    Memo: string;
    Period: Integer;
    Bank, BankNum, BankName: string;
    // 2011.01.12 �߰�(�����ּ�)
    Zipcode,Addr1,Addr2: string;
		auto_baechaMin, hd_jumin_no : string;//auto_baecha_reinvoke_time="�ٰŸ������ �����ð� - �д���(����
  end;

type
	TSMSInfoRec = record
		MsgNo: Integer;
		chkSelect: TcxCheckBox;
		mmoSms: TcxMemo;
		lblSMS: TLabel;
		edtReturn: TcxTextEdit;
		chkReturn: TcxCheckBox;
    cbReturn : TcxComBoBox;
		edtOption1,
		edtOption2: TcxCustomTextEdit;
		edtTime: TcxCustomTextEdit;
	end;

  TSMSDataRec = record
    MsgNo: Integer;
    Use, From, Sendtime, Option1, Option2,
		Msg: string
  end;

  TFrm_CMP = class(TForm)
    IdTCPClient1: TIdTCPClient;
    pnlSMSMain: TPanel;
    cxPageControl2: TcxPageControl;
    cxtbsht1: TcxTabSheet;
    cxtbsht2: TcxTabSheet;
		pmBranch: TPopupMenu;
    mniN1: TMenuItem;
    mniN2: TMenuItem;
    mniN3: TMenuItem;
    mniN4: TMenuItem;
    dlgSave: TSaveDialog;
    cxtbsht3: TcxTabSheet;
    Panel2: TPanel;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    lblSosokNameA3: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    chkSMSBlockTomorrow: TcxCheckBox;
    chkSMSBlockReal: TcxCheckBox;
    cxGroupBox2: TcxGroupBox;
    btnNoRecvSearch: TcxButton;
    cxButton1: TcxButton;
    cxGroupBox8: TcxGroupBox;
    pnl7: TPanel;
    lblSMS210: TLabel;
    chkSMS210: TcxCheckBox;
    mmoSMS210: TcxMemo;
    btn31: TcxButton;
    btn32: TcxButton;
    btn33: TcxButton;
    btn34: TcxButton;
    cxLabel11: TcxLabel;
    edtSMSR210: TcxTextEdit;
    chkSMSR210: TcxCheckBox;
    cxGroupBox6: TcxGroupBox;
    rb2101: TRadioButton;
    rbrb2102: TRadioButton;
    rbrb2103: TRadioButton;
    pnl5: TPanel;
    img14: TImage;
    lblSMS220: TLabel;
    chkSMS220: TcxCheckBox;
    mmoSMS220: TcxMemo;
    cxLabel12: TcxLabel;
    edtSMSR220: TcxTextEdit;
    chkSMSR220: TcxCheckBox;
    cxGroupBox9: TcxGroupBox;
    Panel3: TPanel;
    Label10: TLabel;
		chkSMS200: TcxCheckBox;
    cxGrid: TcxGrid;
    cxGridBandedTableView1: TcxGridBandedTableView;
    cxView: TcxGridTableView;
    cxViewColumn1: TcxGridColumn;
    cxViewColumn2: TcxGridColumn;
    cxViewColumn3: TcxGridColumn;
		cxViewColumn4: TcxGridColumn;
    cxViewColumn5: TcxGridColumn;
    cxViewColumn6: TcxGridColumn;
    cxLevel: TcxGridLevel;
    btnSMSGrid1: TcxButton;
    btnSMSGrid2: TcxButton;
    btnSMSGrid4: TcxButton;
    btnSMSGrid3: TcxButton;
    cxGroupBox3: TcxGroupBox;
    rb2001: TRadioButton;
    rb2002: TRadioButton;
    rb2003: TRadioButton;
    chkSMSR200: TcxCheckBox;
		edtSMSR200: TcxTextEdit;
    Panel4: TPanel;
    edtSMST300: TcxComboBox;
    cxStyleCustLevel: TcxStyleRepository;
    stlCustLevelColor: TcxStyle;
    cxPageControl3: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    Panel6: TPanel;
    Image3: TImage;
    lblSMS311: TLabel;
    cxButton14: TcxButton;
    cxButton15: TcxButton;
    cxButton16: TcxButton;
    cxLabel17: TcxLabel;
    chkSMS311: TcxCheckBox;
    mmoSMS311: TcxMemo;
    cxButton17: TcxButton;
    cxLabel18: TcxLabel;
    edtSMSR311: TcxTextEdit;
    chkSMSR311: TcxCheckBox;
    edtSMSO1311: TcxTextEdit;
    Panel7: TPanel;
    Image4: TImage;
    lblSMS312: TLabel;
    cxButton18: TcxButton;
    cxButton19: TcxButton;
    cxButton20: TcxButton;
    cxLabel19: TcxLabel;
    chkSMS312: TcxCheckBox;
    mmoSMS312: TcxMemo;
    cxButton21: TcxButton;
    cxLabel20: TcxLabel;
    edtSMSR312: TcxTextEdit;
    chkSMSR312: TcxCheckBox;
    pnl1: TPanel;
    img5: TImage;
    lblSMS313: TLabel;
    btn1: TcxButton;
    btn2: TcxButton;
    btn7: TcxButton;
    lbl6: TcxLabel;
    chkSMS313: TcxCheckBox;
    mmoSMS313: TcxMemo;
    btn8: TcxButton;
    lbl11: TcxLabel;
    edtSMSR313: TcxTextEdit;
    chkSMSR313: TcxCheckBox;
    Panel5: TPanel;
    Image2: TImage;
    lblSMS310: TLabel;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    cxLabel13: TcxLabel;
    chkSMS310: TcxCheckBox;
    mmoSMS310: TcxMemo;
    cxButton13: TcxButton;
    cxLabel16: TcxLabel;
    edtSMSR310: TcxTextEdit;
    chkSMSR310: TcxCheckBox;
    edtSMSO1310: TcxTextEdit;
    cbbSmsDuplOption: TcxComboBox;
    Image6: TImage;
		mmoSMS315: TcxMemo;
    lblSMS315: TLabel;
    edtSMSO1312: TcxTextEdit;
    edtSMSO2312: TcxSpinEdit;
    lblSMS316: TLabel;
    mmoSMS316: TcxMemo;
    Image7: TImage;
    edtSMSO1313: TcxTextEdit;
    edtSMSO2313: TcxSpinEdit;
    mmoSMS317: TcxMemo;
    Image8: TImage;
    lblSMS317: TLabel;
    Image9: TImage;
    mmoSMS318: TcxMemo;
    lblSMS318: TLabel;
    pnl60: TPanel;
    img11: TImage;
    lblSMS321: TLabel;
    lbl78: TcxLabel;
    chkSMS321: TcxCheckBox;
    mmoSMS321: TcxMemo;
    cxLabel14: TcxLabel;
    edtSMSR321: TcxTextEdit;
    chkSMSR321: TcxCheckBox;
    pnl10: TPanel;
    img4: TImage;
    lblSMS322: TLabel;
    lbl21: TcxLabel;
    chkSMS322: TcxCheckBox;
    mmoSMS322: TcxMemo;
    cxLabel15: TcxLabel;
    edtSMSR322: TcxTextEdit;
    chkSMSR322: TcxCheckBox;
    Panel8: TPanel;
    Image5: TImage;
    lblSMS330: TLabel;
    cxLabel21: TcxLabel;
    chkSMS330: TcxCheckBox;
    mmoSMS330: TcxMemo;
    cxLabel22: TcxLabel;
    edtSMSR330: TcxTextEdit;
    chkSMSR330: TcxCheckBox;
    cxButton22: TcxButton;
    cxButton23: TcxButton;
    cxButton24: TcxButton;
    cxButton25: TcxButton;
    cxGroupBox7: TcxGroupBox;
    edtSMSO2330: TcxSpinEdit;
    edtSMSO1330: TcxSpinEdit;
    edtSMST330: TcxComboBox;
    Panel9: TPanel;
    Image10: TImage;
    lblSMS411: TLabel;
    Image11: TImage;
    lblSMS415: TLabel;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxLabel23: TcxLabel;
    chkSMS411: TcxCheckBox;
    mmoSMS411: TcxMemo;
    cxButton26: TcxButton;
    cxLabel24: TcxLabel;
		edtSMSR411: TcxTextEdit;
    chkSMSR411: TcxCheckBox;
    edtSMSO1411: TcxTextEdit;
    mmoSMS415: TcxMemo;
    Panel10: TPanel;
    Image12: TImage;
    lblSMS412: TLabel;
    Image13: TImage;
    lblSMS416: TLabel;
    cxButton27: TcxButton;
    cxButton28: TcxButton;
    cxButton29: TcxButton;
    cxLabel25: TcxLabel;
    chkSMS412: TcxCheckBox;
    mmoSMS412: TcxMemo;
    cxButton30: TcxButton;
    cxLabel26: TcxLabel;
    edtSMSR412: TcxTextEdit;
    chkSMSR412: TcxCheckBox;
    edtSMSO1412: TcxTextEdit;
    edtSMSO2412: TcxSpinEdit;
    mmoSMS416: TcxMemo;
    Panel11: TPanel;
    Image14: TImage;
    lblSMS413: TLabel;
    Image15: TImage;
    lblSMS417: TLabel;
    cxButton31: TcxButton;
    cxButton32: TcxButton;
    cxButton33: TcxButton;
    cxLabel27: TcxLabel;
    chkSMS413: TcxCheckBox;
    mmoSMS413: TcxMemo;
    cxButton34: TcxButton;
    cxLabel28: TcxLabel;
    edtSMSR413: TcxTextEdit;
    chkSMSR413: TcxCheckBox;
    edtSMSO1413: TcxTextEdit;
    edtSMSO2413: TcxSpinEdit;
    mmoSMS417: TcxMemo;
		Panel12: TPanel;
    Image16: TImage;
    lblSMS410: TLabel;
    Image17: TImage;
    lblSMS418: TLabel;
    cxButton35: TcxButton;
    cxButton36: TcxButton;
    cxButton37: TcxButton;
    cxLabel29: TcxLabel;
    chkSMS410: TcxCheckBox;
    mmoSMS410: TcxMemo;
    cxButton38: TcxButton;
    cxLabel30: TcxLabel;
    edtSMSR410: TcxTextEdit;
    chkSMSR410: TcxCheckBox;
    edtSMSO1410: TcxTextEdit;
    mmoSMS418: TcxMemo;
    Panel13: TPanel;
    Image18: TImage;
    lblSMS422: TLabel;
    cxLabel31: TcxLabel;
    chkSMS422: TcxCheckBox;
    mmoSMS422: TcxMemo;
		cxLabel32: TcxLabel;
    edtSMSR422: TcxTextEdit;
    chkSMSR422: TcxCheckBox;
    Panel14: TPanel;
    Image19: TImage;
    lblSMS421: TLabel;
    cxLabel33: TcxLabel;
    chkSMS421: TcxCheckBox;
    mmoSMS421: TcxMemo;
    cxLabel34: TcxLabel;
    edtSMSR421: TcxTextEdit;
    chkSMSR421: TcxCheckBox;
    Panel15: TPanel;
    Image20: TImage;
    lblSMS511: TLabel;
    Image21: TImage;
    lblSMS515: TLabel;
    cxButton39: TcxButton;
    cxButton40: TcxButton;
    cxButton41: TcxButton;
    cxLabel35: TcxLabel;
    chkSMS511: TcxCheckBox;
    mmoSMS511: TcxMemo;
    cxButton42: TcxButton;
    cxLabel36: TcxLabel;
    edtSMSR511: TcxTextEdit;
    chkSMSR511: TcxCheckBox;
    edtSMSO1511: TcxTextEdit;
    mmoSMS515: TcxMemo;
    Panel16: TPanel;
    Image22: TImage;
    lblSMS512: TLabel;
    Image23: TImage;
    lblSMS516: TLabel;
    cxButton43: TcxButton;
    cxButton44: TcxButton;
    cxButton45: TcxButton;
    cxLabel37: TcxLabel;
    chkSMS512: TcxCheckBox;
    mmoSMS512: TcxMemo;
    cxButton46: TcxButton;
    cxLabel38: TcxLabel;
		edtSMSR512: TcxTextEdit;
    chkSMSR512: TcxCheckBox;
    edtSMSO1512: TcxTextEdit;
    edtSMSO2512: TcxSpinEdit;
    mmoSMS516: TcxMemo;
    Panel17: TPanel;
    Image24: TImage;
    lblSMS513: TLabel;
    Image25: TImage;
    lblSMS517: TLabel;
    cxButton47: TcxButton;
    cxButton48: TcxButton;
    cxButton49: TcxButton;
    cxLabel39: TcxLabel;
    chkSMS513: TcxCheckBox;
    mmoSMS513: TcxMemo;
    cxButton50: TcxButton;
    cxLabel40: TcxLabel;
    edtSMSR513: TcxTextEdit;
    chkSMSR513: TcxCheckBox;
    edtSMSO1513: TcxTextEdit;
    edtSMSO2513: TcxSpinEdit;
    mmoSMS517: TcxMemo;
    Panel18: TPanel;
    Image26: TImage;
    lblSMS510: TLabel;
    Image27: TImage;
    lblSMS518: TLabel;
    cxButton51: TcxButton;
    cxButton52: TcxButton;
    cxButton53: TcxButton;
    cxLabel41: TcxLabel;
    chkSMS510: TcxCheckBox;
    mmoSMS510: TcxMemo;
    cxButton54: TcxButton;
    cxLabel42: TcxLabel;
    edtSMSR510: TcxTextEdit;
    chkSMSR510: TcxCheckBox;
    edtSMSO1510: TcxTextEdit;
    mmoSMS518: TcxMemo;
    Panel19: TPanel;
    Image28: TImage;
    lblSMS522: TLabel;
    cxLabel43: TcxLabel;
    chkSMS522: TcxCheckBox;
    mmoSMS522: TcxMemo;
    cxLabel44: TcxLabel;
    edtSMSR522: TcxTextEdit;
    chkSMSR522: TcxCheckBox;
    Panel20: TPanel;
    Image29: TImage;
    lblSMS521: TLabel;
    cxLabel45: TcxLabel;
    chkSMS521: TcxCheckBox;
    mmoSMS521: TcxMemo;
    cxLabel46: TcxLabel;
		edtSMSR521: TcxTextEdit;
    chkSMSR521: TcxCheckBox;
    Panel21: TPanel;
    Image30: TImage;
    lblSMS611: TLabel;
    Image31: TImage;
    lblSMS615: TLabel;
    cxButton55: TcxButton;
    cxButton56: TcxButton;
    cxButton57: TcxButton;
    cxLabel47: TcxLabel;
    chkSMS611: TcxCheckBox;
    mmoSMS611: TcxMemo;
    cxButton58: TcxButton;
    cxLabel48: TcxLabel;
    edtSMSR611: TcxTextEdit;
    chkSMSR611: TcxCheckBox;
    edtSMSO1611: TcxTextEdit;
    mmoSMS615: TcxMemo;
    Panel22: TPanel;
    Image32: TImage;
    lblSMS612: TLabel;
    Image33: TImage;
    lblSMS616: TLabel;
    cxButton59: TcxButton;
    cxButton60: TcxButton;
    cxButton61: TcxButton;
    cxLabel49: TcxLabel;
    mmoSMS612: TcxMemo;
    cxButton62: TcxButton;
    cxLabel50: TcxLabel;
    edtSMSR612: TcxTextEdit;
    chkSMSR612: TcxCheckBox;
    edtSMSO1612: TcxTextEdit;
    edtSMSO2612: TcxSpinEdit;
    mmoSMS616: TcxMemo;
    Panel23: TPanel;
    Image34: TImage;
    lblSMS613: TLabel;
    Image35: TImage;
    lblSMS617: TLabel;
    cxButton63: TcxButton;
    cxButton64: TcxButton;
    cxButton65: TcxButton;
    cxLabel51: TcxLabel;
    chkSMS613: TcxCheckBox;
    mmoSMS613: TcxMemo;
    cxButton66: TcxButton;
    cxLabel52: TcxLabel;
    edtSMSR613: TcxTextEdit;
    chkSMSR613: TcxCheckBox;
    edtSMSO1613: TcxTextEdit;
    edtSMSO2613: TcxSpinEdit;
    mmoSMS617: TcxMemo;
    Panel24: TPanel;
    Image36: TImage;
    lblSMS610: TLabel;
    Image37: TImage;
    lblSMS618: TLabel;
    cxButton67: TcxButton;
    cxButton68: TcxButton;
    cxButton69: TcxButton;
    cxLabel53: TcxLabel;
    chkSMS610: TcxCheckBox;
    mmoSMS610: TcxMemo;
    cxButton70: TcxButton;
    cxLabel54: TcxLabel;
    edtSMSR610: TcxTextEdit;
    chkSMSR610: TcxCheckBox;
    edtSMSO1610: TcxTextEdit;
    mmoSMS618: TcxMemo;
    Panel25: TPanel;
    Image38: TImage;
    lblSMS622: TLabel;
    cxLabel55: TcxLabel;
    chkSMS622: TcxCheckBox;
		mmoSMS622: TcxMemo;
    cxLabel56: TcxLabel;
    edtSMSR622: TcxTextEdit;
    chkSMSR622: TcxCheckBox;
    Panel26: TPanel;
    Image39: TImage;
    lblSMS621: TLabel;
    cxLabel57: TcxLabel;
    chkSMS621: TcxCheckBox;
    mmoSMS621: TcxMemo;
    cxLabel58: TcxLabel;
    edtSMSR621: TcxTextEdit;
    chkSMSR621: TcxCheckBox;
		chkSMSPUB390: TcxCheckBox;
    lblSMS325: TLabel;
    mmoSMS325: TcxMemo;
    Image40: TImage;
    Image41: TImage;
    mmoSMS326: TcxMemo;
    lblSMS326: TLabel;
    Image42: TImage;
    mmoSMS425: TcxMemo;
    lblSMS425: TLabel;
    Image43: TImage;
    mmoSMS525: TcxMemo;
    lblSMS525: TLabel;
    Image44: TImage;
    mmoSMS625: TcxMemo;
    lblSMS625: TLabel;
    Image45: TImage;
    mmoSMS426: TcxMemo;
    lblSMS426: TLabel;
    Image46: TImage;
    mmoSMS526: TcxMemo;
    lblSMS526: TLabel;
    Image47: TImage;
    mmoSMS626: TcxMemo;
    lblSMS626: TLabel;
    chkSMS612: TcxCheckBox;
    pnl125: TPanel;
    img13: TImage;
		lblSMS110: TLabel;
    btn3: TcxButton;
    btn4: TcxButton;
    btn5: TcxButton;
    btn6: TcxButton;
    btn9: TcxButton;
    mmoSMS110: TcxMemo;
    edtSMSR110: TcxTextEdit;
    chkSMSR110: TcxCheckBox;
    cxGroupBox4: TcxGroupBox;
		rb1101: TRadioButton;
    rb1102: TRadioButton;
		rb1103: TRadioButton;
    img1: TImage;
		lblSMS114: TLabel;
    mmoSMS114: TcxMemo;
		pnl8: TPanel;
    img2: TImage;
    lblSMS121: TLabel;
		chkSMS121: TcxCheckBox;
		mmoSMS121: TcxMemo;
		edtSMSR121: TcxTextEdit;
    chkSMSR121: TcxCheckBox;
		edtSMSR114: TcxTextEdit;
    chkSMSR114: TcxCheckBox;
    pnl2: TPanel;
    img3: TImage;
    lblSMS122: TLabel;
    mmoSMS122: TcxMemo;
    chkSMS122: TcxCheckBox;
    edtSMSR122: TcxTextEdit;
    chkSMSR122: TcxCheckBox;
    pnl4: TPanel;
    img6: TImage;
    lblSMS123: TLabel;
    chkSMS123: TcxCheckBox;
    mmoSMS123: TcxMemo;
    edtSMSR123: TcxTextEdit;
    chkSMSR123: TcxCheckBox;
    pnl57: TPanel;
    img8: TImage;
    lblSMS124: TLabel;
    mmoSMS124: TcxMemo;
    cxLabel9: TcxLabel;
    edtSMSR124: TcxTextEdit;
    chkSMSR124: TcxCheckBox;
    pnl58: TPanel;
    img9: TImage;
    lblSMS125: TLabel;
    chkSMS125: TcxCheckBox;
    mmoSMS125: TcxMemo;
    cxLabel8: TcxLabel;
    edtSMSR125: TcxTextEdit;
    chkSMSR125: TcxCheckBox;
    pnl6: TPanel;
    img15: TImage;
    lblSMS126: TLabel;
    chkSMS126: TcxCheckBox;
    mmoSMS126: TcxMemo;
    cxLabel62: TcxLabel;
    edtSMSR126: TcxTextEdit;
    chkSMSR126: TcxCheckBox;
    pnl9: TPanel;
    img7: TImage;
    lblSMS130: TLabel;
    mmoSMS130: TcxMemo;
    chkSMS130: TcxCheckBox;
    cxLabel64: TcxLabel;
    edtSMSR130: TcxTextEdit;
    chkSMSR130: TcxCheckBox;
    btn16: TcxButton;
    btn17: TcxButton;
    btn20: TcxButton;
    edtSMSO1130: TcxSpinEdit;
    pnl3: TPanel;
    img10: TImage;
    lblSMS127: TLabel;
    btnAll1: TcxButton;
    btnAll2: TcxButton;
    btnAll3: TcxButton;
    btnAll4: TcxButton;
    cxLabelcxlbl2: TcxLabel;
    edtSMSR127: TcxTextEdit;
    chkSMSR127: TcxCheckBox;
    mmoSMS127: TcxMemo;
    chkSMS127: TcxCheckBox;
    btnAll5: TcxButton;
    cxLabelcxlbl1: TcxLabel;
    edtSMSR128: TcxTextEdit;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    cxCheckBox5: TcxCheckBox;
    cxCheckBox6: TcxCheckBox;
    cxCheckBox7: TcxCheckBox;
    pop_up1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    cxGroupBox5: TcxGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    cxButton3: TcxButton;
    btn18: TcxButton;
    cxButton4: TcxButton;
    cxButton71: TcxButton;
    btn13: TcxButton;
    cxButton73: TcxButton;
    btn12: TcxButton;
    btn14: TcxButton;
    cxGroupBox10: TcxGroupBox;
		RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
		cxButton74: TcxButton;
    cxButton72: TcxButton;
    btnClose2: TcxButton;
    btnClose1: TcxButton;
    btn19: TcxButton;
    btn15: TcxButton;
    btn23: TcxButton;
    cxButton75: TcxButton;
    pnl11: TPanel;
    img12: TImage;
    lblSMS115: TLabel;
    chkSMS115: TcxCheckBox;
    mmoSMS115: TcxMemo;
    cxLabel66: TcxLabel;
    edtSMSR115: TcxTextEdit;
    chkSMSR115: TcxCheckBox;
    btn11: TcxButton;
    btn21: TcxButton;
    btn22: TcxButton;
    btn24: TcxButton;
    btn25: TcxButton;
    cxtbsht4: TcxTabSheet;
    sbPanel2: TAdvScrollBox;
    cxGroupBox11: TcxGroupBox;
    Panel27: TPanel;
    Label3: TLabel;
    chkSMS700: TcxCheckBox;
    cxGrid1: TcxGrid;
    cxGridBandedTableView2: TcxGridBandedTableView;
    cxGridCustSMSList: TcxGridTableView;
    cxGridColumn1: TcxGridColumn;
		cxGridColumn3: TcxGridColumn;
    cxGridColumn4: TcxGridColumn;
    cxGridColumn5: TcxGridColumn;
    cxGridColumn6: TcxGridColumn;
    cxGridLevel1: TcxGridLevel;
    btnSMSRankGrid1: TcxButton;
    btnSMSRankGrid2: TcxButton;
    btnSMSRankGrid4: TcxButton;
    btnSMSRankGrid3: TcxButton;
    cxGroupBox12: TcxGroupBox;
    chkSMSR700: TcxCheckBox;
    edtSMSR700: TcxTextEdit;
    btnSMSRankGrid5: TcxButton;
    pnl12: TPanel;
    pnl13: TPanel;
    cxGrid2: TcxGrid;
    cxGridBandedTableView3: TcxGridBandedTableView;
		cxGridCustRankList: TcxGridTableView;
    cxGridColumn7: TcxGridColumn;
    cxGridColumn8: TcxGridColumn;
    cxGridColumn9: TcxGridColumn;
    cxGridColumn10: TcxGridColumn;
    cxGridLevel2: TcxGridLevel;
    pnl14: TPanel;
    lbl63: TLabel;
    btnDtlKeyPhoneTop: TcxButton;
    btn27: TcxButton;
    btn29: TcxButton;
    btn28: TcxButton;
    cxLabel68: TcxLabel;
    edtCustRankName: TcxTextEdit;
    sedtCustRankTo: TcxSpinEdit;
    lbl33: TLabel;
    sedtCustRankFrom: TcxSpinEdit;
    cbbCustRankCode: TcxComboBox;
    cxLabel69: TcxLabel;
    btnCustRankClose: TcxButton;
    btnCustRankAdd: TcxButton;
    pnlCustRankName: TPanel;
    cxLabel70: TcxLabel;
    cbbCustCNTmonth: TcxComboBox;
    btn26: TcxButton;
    cxLabel71: TcxLabel;
    cbbCustRankName: TcxComboBox;
    img17: TImage;
    lblSMS700: TLabel;
    img18: TImage;
    lblSMS701: TLabel;
    mmoSMS700: TcxMemo;
    mmoSMS701: TcxMemo;
    btn35: TcxButton;
    btn30: TcxButton;
    lbl34: TLabel;
    lbl64: TLabel;
    lbl69: TLabel;
    btn36: TcxButton;
    btn37: TcxButton;
    btn38: TcxButton;
    btn39: TcxButton;
    btn40: TcxButton;
		btn41: TcxButton;
    btn42: TcxButton;
		btn43: TcxButton;
    btn44: TcxButton;
    btn45: TcxButton;
    btn46: TcxButton;
		btn47: TcxButton;
    btn48: TcxButton;
    btn49: TcxButton;
    btn50: TcxButton;
    btn51: TcxButton;
    btn52: TcxButton;
    btn53: TcxButton;
    btn54: TcxButton;
    btn55: TcxButton;
    btn56: TcxButton;
    btn57: TcxButton;
    btn58: TcxButton;
    PnlMainA3: TPanel;
    sbPanel1: TcxScrollBox;
    cxGroupBox13: TcxGroupBox;
    CheckBox1: TcxCheckBox;
    Shape3: TShape;
    Shape4: TShape;
    chkSMS110: TcxCheckBox;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    chkSMS124: TcxCheckBox;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    grpSMSRank: TcxGroupBox;
    cxGroupBox15: TcxGroupBox;
    Shape17: TShape;
    Shape18: TShape;
    Shape19: TShape;
    lbl70: TcxLabel;
    btn59: TcxButton;
    cxLabel2: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel59: TcxLabel;
    cxLabel60: TcxLabel;
    cxLabel61: TcxLabel;
    cxLabel73: TcxLabel;
    cxLabel74: TcxLabel;
    cxLabel75: TcxLabel;
    BtnSearchA3: TcxButton;
    Panel1: TPanel;
    Image1: TImage;
    lblSMS116: TLabel;
    Shape20: TShape;
    cxButton2: TcxButton;
    cxButton76: TcxButton;
    cxButton77: TcxButton;
    cxButton78: TcxButton;
    cxButton79: TcxButton;
    mmoSMS116: TcxMemo;
    cxLabel76: TcxLabel;
    edtSMSR116: TcxTextEdit;
    chkSMSR116: TcxCheckBox;
    cxGroupBox16: TcxGroupBox;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    cxButton80: TcxButton;
    cxButton81: TcxButton;
    chkSMS116: TcxCheckBox;
    cxButton82: TcxButton;
    cxScrollBox1: TcxScrollBox;
    cxPageControl4: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet9: TcxTabSheet;
    cxLabel77: TcxLabel;
    Panel28: TPanel;
    Label4: TLabel;
    Image48: TImage;
    lblSMS702: TLabel;
    Image49: TImage;
    lblSMS703: TLabel;
    Shape21: TShape;
    chkSMS702: TcxCheckBox;
    cxGrid3: TcxGrid;
    cxGridBandedTableView4: TcxGridBandedTableView;
    cxGridCustMileSMSList: TcxGridTableView;
    cxGridColumn2: TcxGridColumn;
    cxGridColumn11: TcxGridColumn;
    cxGridColumn12: TcxGridColumn;
    cxGridColumn13: TcxGridColumn;
    cxGridColumn14: TcxGridColumn;
    cxGridLevel3: TcxGridLevel;
    btnSMSRankMile1: TcxButton;
    btnSMSRankMile2: TcxButton;
    btnSMSRankMile4: TcxButton;
    btnSMSRankMile3: TcxButton;
    cxGroupBox17: TcxGroupBox;
    chkSMSR702: TcxCheckBox;
    edtSMSR702: TcxTextEdit;
    btnSMSRankMile5: TcxButton;
    cxButton88: TcxButton;
    cxLabel78: TcxLabel;
    cbbCustRankMileName: TcxComboBox;
    mmoSMS702: TcxMemo;
    mmoSMS703: TcxMemo;
    cxButton89: TcxButton;
    cxButton90: TcxButton;
    cxLabel79: TcxLabel;
    cxLabel80: TcxLabel;
    Shape22: TShape;
    chkWkname_Hidden: TcxCheckBox;
    cxLabel81: TcxLabel;
    cxLabel82: TcxLabel;
    edtSMST700: TcxComboBox;
    cxGroupBox14: TcxGroupBox;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    cbSMSR110: TcxComboBox;
    cbSMSR114: TcxComboBox;
    cbSMSR121: TcxComboBox;
    cbSMSR122: TcxComboBox;
    cbSMSR123: TcxComboBox;
    cbSMSR124: TcxComboBox;
    cbSMSR125: TcxComboBox;
    cbSMSR126: TcxComboBox;
    cbSMSR130: TcxComboBox;
    cbSMSR127: TcxComboBox;
    cbSMSR115: TcxComboBox;
    cbSMSR116: TcxComboBox;
    cbSMSR210: TcxComboBox;
    cbSMSR220: TcxComboBox;
    cbSMSR200: TcxComboBox;
    cbSMSR311: TcxComboBox;
    cbSMSR312: TcxComboBox;
    cbSMSR313: TcxComboBox;
    cbSMSR310: TcxComboBox;
    cbSMSR321: TcxComboBox;
    cbSMSR322: TcxComboBox;
    cbSMSR700: TcxComboBox;
    cbSMSR702: TcxComboBox;
    cbSMSR411: TcxComboBox;
    cbSMSR412: TcxComboBox;
    cbSMSR413: TcxComboBox;
    cbSMSR410: TcxComboBox;
    cbSMSR421: TcxComboBox;
    cbSMSR422: TcxComboBox;
    cbSMSR511: TcxComboBox;
    cbSMSR512: TcxComboBox;
    cbSMSR513: TcxComboBox;
    cbSMSR510: TcxComboBox;
    cbSMSR521: TcxComboBox;
    cbSMSR522: TcxComboBox;
    cbSMSR611: TcxComboBox;
    cbSMSR612: TcxComboBox;
    cbSMSR613: TcxComboBox;
    cbSMSR610: TcxComboBox;
    cbSMSR621: TcxComboBox;
    cbSMSR622: TcxComboBox;
    cbSMSR330: TcxComboBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet10: TcxTabSheet;
    cxTabSheet11: TcxTabSheet;
    cxTabSheet12: TcxTabSheet;
    cxTabSheet13: TcxTabSheet;
    cxTabSheet14: TcxTabSheet;
    PnlMainA1: TPanel;
    cxGroupBox18: TcxGroupBox;
    cxLabel83: TcxLabel;
    edtHeadAddr1: TcxTextEdit;
    edtHeadAddr2: TcxTextEdit;
    edtHeadCode: TcxTextEdit;
    edtHeadID: TcxTextEdit;
    edtHeadName: TcxTextEdit;
    edtHeadOwnerName: TcxTextEdit;
    edtHeadOwnerPhone: TcxTextEdit;
    edtHeadOwnerPhone2: TcxTextEdit;
    edtHeadSNum: TcxTextEdit;
    edtHeadZipCode: TcxTextEdit;
    lbl14: TcxLabel;
    lbl15: TcxLabel;
    lbl19: TcxLabel;
    lbl20: TcxLabel;
    lbl27: TcxLabel;
    lbl5: TcxLabel;
    lbl8: TcxLabel;
    cxLabel84: TcxLabel;
    edtHeadOwnerJumin1: TcxTextEdit;
    btnSoNumCheck: TcxButton;
    edtHeadOwnerJumin2: TcxTextEdit;
    cxLabel85: TcxLabel;
    cxLabel86: TcxLabel;
    edtHeadMasterPhone: TcxTextEdit;
    edtHeadMasterPhone2: TcxTextEdit;
    cxLabel87: TcxLabel;
    cxGroupBox19: TcxGroupBox;
    Shape44: TShape;
    Shape45: TShape;
    edtHeadShareOrder: TcxTextEdit;
    edtHeadSymbol: TcxTextEdit;
    edtHeadVirAccount: TcxTextEdit;
    lbl30: TcxLabel;
    lbl36: TcxLabel;
    lbl37: TcxLabel;
    lbl39: TcxLabel;
    lbl40: TcxLabel;
    lbl42: TcxLabel;
    lbl43: TcxLabel;
    lbl45: TcxLabel;
    lbl46: TcxLabel;
    lbl48: TcxLabel;
    lbl49: TcxLabel;
    lbl51: TcxLabel;
    pnl92: TPanel;
    rbHeadUseY: TcxRadioButton;
    rbHeadUseN: TcxRadioButton;
    pnl93: TPanel;
    rbHeadShare0: TcxRadioButton;
    rbHeadShare1: TcxRadioButton;
    rbHeadShare2: TcxRadioButton;
    rbHeadShare3: TcxRadioButton;
    rbHeadShare4: TcxRadioButton;
    pnl94: TPanel;
    rbHeadTypeV: TcxRadioButton;
    rbHeadTypeH: TcxRadioButton;
    Cb_RecvSms: TcxCheckBox;
    Cb_RecvSmsExc: TcxCheckBox;
    cxLabel88: TcxLabel;
    lbl_RecvSmsExc: TcxTextEdit;
    lbl_RecvSmsNo: TcxTextEdit;
    lbl52: TcxLabel;
    lbl54: TcxLabel;
    mmoHeadMemo: TcxMemo;
    cxLabel89: TcxLabel;
    cxLabel90: TcxLabel;
    cxLabel91: TcxLabel;
    cxGroupBox20: TcxGroupBox;
    edtHeadBank: TcxTextEdit;
    edtHeadBankName: TcxTextEdit;
    edtHeadBankNum: TcxTextEdit;
    lbl2: TcxLabel;
    lbl4: TcxLabel;
    lbl55: TcxLabel;
    lbl57: TcxLabel;
    lbl58: TcxLabel;
    lbl60: TcxLabel;
    lbl62: TcxLabel;
    pnl95: TPanel;
    rbHeadPeriodM: TcxRadioButton;
    rbHeadPeriodW: TcxRadioButton;
    rbHeadPeriodD: TcxRadioButton;
    btnHeadCancel: TcxButton;
    btnHeadEdit: TcxButton;
    pnlHeadSymbol: TPanel;
    cxGridSymbol: TcxGrid;
    cxViewSymbol: TcxGridDBTableView;
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
    cxColViewDayDownColumn11: TcxGridDBColumn;
    cxColViewDayDownColumn12: TcxGridDBColumn;
    cxColViewDayDownColumn13: TcxGridDBColumn;
    cxColViewDayDownColumn14: TcxGridDBColumn;
    cxColViewDayDownColumn15: TcxGridDBColumn;
    cxColViewDayDownColumn16: TcxGridDBColumn;
    cxColViewDayDownColumn17: TcxGridDBColumn;
    cxColViewDayDownColumn18: TcxGridDBColumn;
    cxColViewDayDownColumn19: TcxGridDBColumn;
    cxColViewDayDownColumn20: TcxGridDBColumn;
    cxColViewDayDownColumn21: TcxGridDBColumn;
    cxColViewDayDownColumn22: TcxGridDBColumn;
    cxColViewDayDownColumn23: TcxGridDBColumn;
    cxColViewDayDownColumn24: TcxGridDBColumn;
    cxColViewDayDownColumn25: TcxGridDBColumn;
    cxColViewDayDownColumn26: TcxGridDBColumn;
    cxColViewDayDownColumn27: TcxGridDBColumn;
    cxLevelSymbol: TcxGridLevel;
    pnl97: TPanel;
    btnSymbolPanelNotUse: TcxButton;
    btnHeadSymbolPanelClose: TcxButton;
    PnlMainA2: TPanel;
    Shape59: TShape;
    cxGroupBox21: TcxGroupBox;
    cxLabel93: TcxLabel;
    lblSosokNameA2: TcxLabel;
    cxLabel94: TcxLabel;
    cbbBranchSearchType: TcxComboBox;
    cbbBranchSearchValue: TcxComboBox;
    btnBranchAdd: TcxButton;
    btnBranchExcel: TcxButton;
    btnBranchModify: TcxButton;
    btnBranchSearch: TcxButton;
    cxGridBranch: TcxGrid;
    cxViewBranch: TcxGridDBTableView;
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
    cxLevelBranch: TcxGridLevel;
    PnlMainA4: TPanel;
    Shape62: TShape;
    AdvStrnGrd1: TAdvStringGrid;
    cxGroupBox22: TcxGroupBox;
    lblSosokNameA4: TcxLabel;
    cxLabel96: TcxLabel;
    btn10: TcxButton;
    cxButton83: TcxButton;
    btnTcxButton19MapHelp: TcxButton;
    BtnSearchA4: TcxButton;
    cbbA4: TcxTextEdit;
    pnlHelpA4: TPanel;
    cxGroupBox23: TcxGroupBox;
    cxLabel97: TcxLabel;
    btnClose: TcxButton;
    AdvStrnGrdChk1: TAdvStringGrid;
    PnlMainA5: TPanel;
    Shape65: TShape;
    Shape66: TShape;
    cxGroupBox24: TcxGroupBox;
    img23: TImage;
    lblSMS140: TLabel;
    img22: TImage;
    lblSMS141: TLabel;
    imgSMMS: TImage;
    imgDMMS: TImage;
    cxLabel98: TcxLabel;
    edtSMSR140: TcxTextEdit;
    chkSMSR140: TcxCheckBox;
    btn68: TcxButton;
    btn69: TcxButton;
    btn70: TcxButton;
    btn71: TcxButton;
    cxLabel99: TcxLabel;
    edtSMSR141: TcxTextEdit;
    chkSMSR141: TcxCheckBox;
    btn72: TcxButton;
    btn73: TcxButton;
    btn74: TcxButton;
    btn75: TcxButton;
    mmoSMS140: TcxMemo;
    mmoSMS141: TcxMemo;
    cxLabel100: TcxLabel;
    cxLabel101: TcxLabel;
    cxGroupBox25: TcxGroupBox;
    cxRBDS: TcxRadioButton;
    cxRBDJ: TcxRadioButton;
    cxRBDM: TcxRadioButton;
    LblDSMS: TcxLabel;
    cxGroupBox26: TcxGroupBox;
    cxRBSS: TcxRadioButton;
    cxRBSJ: TcxRadioButton;
    cxRBSM: TcxRadioButton;
    LblSSMS: TcxLabel;
    BtnImageD: TcxButton;
    BtnImageDelD: TcxButton;
    BtnImageDelS: TcxButton;
    BtnImageS: TcxButton;
    cxLabel102: TcxLabel;
    cbKeynumber01: TcxComboBox;
    cbKeynumber02: TcxComboBox;
    cxGroupBox27: TcxGroupBox;
    lblSosokNameA5: TcxLabel;
    BtnSearchA5: TcxButton;
    cxGroupBox28: TcxGroupBox;
    lb_OShotID: TcxTextEdit;
    lb_OShotPW: TcxTextEdit;
    cxLabel104: TcxLabel;
    cxLabel105: TcxLabel;
    btn_OShotSummit: TcxButton;
    btn76: TcxButton;
    chk_OShotSend: TcxCheckBox;
    cxGrpOShot: TcxGroupBox;
    cxLblSCash: TcxLabel;
    cxLblLCash: TcxLabel;
    cxLblMCash: TcxLabel;
    cxLblCash: TcxLabel;
    cxLabel106: TcxLabel;
    cxLabel107: TcxLabel;
    cxLabel108: TcxLabel;
    cxLabel109: TcxLabel;
    btn_wRef1: TcxButton;
    cxGroupBox29: TcxGroupBox;
    cxLabel110: TcxLabel;
    OpenDialogImg: TOpenDialog;
    cxGroupBox30: TcxGroupBox;
    Panel30: TPanel;
    chkSMS131: TcxCheckBox;
    Shape72: TShape;
    lblSMS131: TLabel;
    mmoSMS131: TcxMemo;
    cxButton84: TcxButton;
    cxButton85: TcxButton;
    cxButton86: TcxButton;
    cxButton87: TcxButton;
    cxButton91: TcxButton;
    cxButton92: TcxButton;
    cxLabel112: TcxLabel;
    edtSMSR131: TcxTextEdit;
    cbSMSR131: TcxComboBox;
    chkSMSR131: TcxCheckBox;
    Panel31: TPanel;
    Shape73: TShape;
    lblSMS132: TLabel;
    chkSMS132: TcxCheckBox;
    mmoSMS132: TcxMemo;
    cxButton93: TcxButton;
    cxButton94: TcxButton;
    cxButton95: TcxButton;
    cxButton96: TcxButton;
    cxButton97: TcxButton;
    cxLabel113: TcxLabel;
    edtSMSR132: TcxTextEdit;
    cbSMSR132: TcxComboBox;
    chkSMSR132: TcxCheckBox;
    Panel32: TPanel;
    Shape74: TShape;
    lblSMS133: TLabel;
    chkSMS133: TcxCheckBox;
    mmoSMS133: TcxMemo;
    cxButton99: TcxButton;
    cxButton100: TcxButton;
    cxButton101: TcxButton;
    cxButton102: TcxButton;
    cxButton103: TcxButton;
    cxLabel114: TcxLabel;
    edtSMSR133: TcxTextEdit;
    cbSMSR133: TcxComboBox;
    chkSMSR133: TcxCheckBox;
    cxLabel115: TcxLabel;
    cxGroupBox31: TcxGroupBox;
    cxLabel120: TcxLabel;
    cxLabel121: TcxLabel;
    Panel33: TPanel;
    cxRadioButton1: TcxRadioButton;
		cxRadioButton3: TcxRadioButton;
		cxButton98: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
		cxButton104: TcxButton;
		cxButton105: TcxButton;
    cxButton106: TcxButton;
    Panel35: TPanel;
    Panel34: TPanel;
    Image53: TImage;
    lblSMS117: TLabel;
    Shape76: TShape;
    edtSMSR117: TcxTextEdit;
    mmoSMS117: TcxMemo;
    cxLabel116: TcxLabel;
    chkSMSR117: TcxCheckBox;
    cxButton109: TcxButton;
    cxButton110: TcxButton;
    cxButton111: TcxButton;
    cxButton112: TcxButton;
    cxButton113: TcxButton;
    cxButton114: TcxButton;
    chkSMS117: TcxCheckBox;
    cbSMSR117: TcxComboBox;
    cxButton107: TcxButton;
    cxGroupBox32: TcxGroupBox;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    cxImage1: TcxImage;
    cxLabel117: TcxLabel;
    pnlHint: TPanel;
    cxLabel118: TcxLabel;
    cxLabel119: TcxLabel;
    cxLabel122: TcxLabel;
    cxLabel123: TcxLabel;
    lbl23: TcxLabel;
    lbl24: TcxLabel;
    lbl72: TcxLabel;
    lbl31: TcxLabel;
    Label1: TcxLabel;
    Label9: TcxLabel;
    Label25: TcxLabel;
    Label27: TcxLabel;
    Label29: TcxLabel;
    Label33: TcxLabel;
    lbl79: TcxLabel;
    Label2: TcxLabel;
    Label15: TcxLabel;
    Label28: TcxLabel;
    Label16: TcxLabel;
    Label34: TcxLabel;
    Label36: TcxLabel;
    Label40: TcxLabel;
    Label43: TcxLabel;
    Label49: TcxLabel;
    Label31: TcxLabel;
    Label41: TcxLabel;
    Label46: TcxLabel;
    Label47: TcxLabel;
    Label55: TcxLabel;
    Label56: TcxLabel;
    Label58: TcxLabel;
    Label62: TcxLabel;
    Label65: TcxLabel;
    Label71: TcxLabel;
    Label37: TcxLabel;
    Label51: TcxLabel;
    Label50: TcxLabel;
    Label53: TcxLabel;
    Label77: TcxLabel;
    Label78: TcxLabel;
    Label80: TcxLabel;
    Label84: TcxLabel;
    Label87: TcxLabel;
    Label93: TcxLabel;
    Label42: TcxLabel;
    Label54: TcxLabel;
    Label52: TcxLabel;
    Label57: TcxLabel;
    Label18: TcxLabel;
    Label21: TcxLabel;
    Label17: TcxLabel;
    Label19: TcxLabel;
    Label20: TcxLabel;
    btnGetList: TcxButton;
    cxButton108: TcxButton;
    cxButton115: TcxButton;
    lbl13: TcxLabel;
    lbl32: TcxLabel;
    Label45: TcxLabel;
    Label39: TcxLabel;
    Label5: TcxLabel;
    lbl12: TcxLabel;
    Label61: TcxLabel;
    Label67: TcxLabel;
    Label83: TcxLabel;
    Label89: TcxLabel;
    Panel36: TPanel;
    Image54: TImage;
    lblSMS327: TLabel;
    Image55: TImage;
    lblSMS328: TLabel;
    Image56: TImage;
    lblSMS329: TLabel;
    cxLabel128: TcxLabel;
    chkSMS327: TcxCheckBox;
    mmoSMS327: TcxMemo;
    cxLabel129: TcxLabel;
    edtSMSR327: TcxTextEdit;
    chkSMSR327: TcxCheckBox;
    mmoSMS328: TcxMemo;
    cbSMSR327: TcxComboBox;
    cxButton116: TcxButton;
    cxButton117: TcxButton;
    cxButton118: TcxButton;
    cxButton119: TcxButton;
    cxButton120: TcxButton;
    cxLabel130: TcxLabel;
    edtSMSO1327: TcxSpinEdit;
    chkSMS328: TcxCheckBox;
    edtSMSO1328: TcxSpinEdit;
    mmoSMS329: TcxMemo;
    chkSMS329: TcxCheckBox;
    edtSMSO1329: TcxSpinEdit;
    Panel37: TPanel;
    Image57: TImage;
    lblSMS427: TLabel;
    Image58: TImage;
    lblSMS428: TLabel;
    Image59: TImage;
    lblSMS429: TLabel;
    cxLabel131: TcxLabel;
    chkSMS427: TcxCheckBox;
    mmoSMS427: TcxMemo;
    cxLabel132: TcxLabel;
    edtSMSR427: TcxTextEdit;
    chkSMSR427: TcxCheckBox;
    mmoSMS428: TcxMemo;
    cbSMSR427: TcxComboBox;
    cxButton121: TcxButton;
    cxButton122: TcxButton;
    cxButton123: TcxButton;
    cxButton124: TcxButton;
    cxButton125: TcxButton;
    cxLabel133: TcxLabel;
    edtSMSO1427: TcxSpinEdit;
    chkSMS428: TcxCheckBox;
    edtSMSO1428: TcxSpinEdit;
    mmoSMS429: TcxMemo;
    chkSMS429: TcxCheckBox;
    edtSMSO1429: TcxSpinEdit;
    Panel38: TPanel;
    Image60: TImage;
    lblSMS527: TLabel;
    Image61: TImage;
    lblSMS528: TLabel;
    Image62: TImage;
    lblSMS529: TLabel;
    cxLabel134: TcxLabel;
    chkSMS527: TcxCheckBox;
    mmoSMS527: TcxMemo;
    cxLabel135: TcxLabel;
    edtSMSR527: TcxTextEdit;
    chkSMSR527: TcxCheckBox;
    mmoSMS528: TcxMemo;
    cbSMSR527: TcxComboBox;
    cxButton126: TcxButton;
    cxButton127: TcxButton;
    cxButton128: TcxButton;
    cxButton129: TcxButton;
    cxButton130: TcxButton;
    cxLabel136: TcxLabel;
    edtSMSO1527: TcxSpinEdit;
    chkSMS528: TcxCheckBox;
    edtSMSO1528: TcxSpinEdit;
    mmoSMS529: TcxMemo;
    chkSMS529: TcxCheckBox;
    edtSMSO1529: TcxSpinEdit;
    Panel39: TPanel;
    Image63: TImage;
    lblSMS627: TLabel;
    Image64: TImage;
    lblSMS628: TLabel;
    Image65: TImage;
    lblSMS629: TLabel;
    cxLabel137: TcxLabel;
    chkSMS627: TcxCheckBox;
    mmoSMS627: TcxMemo;
    cxLabel138: TcxLabel;
    edtSMSR627: TcxTextEdit;
    chkSMSR627: TcxCheckBox;
    mmoSMS628: TcxMemo;
    cbSMSR627: TcxComboBox;
    cxButton131: TcxButton;
    cxButton132: TcxButton;
    cxButton133: TcxButton;
    cxButton134: TcxButton;
    cxButton135: TcxButton;
    cxLabel139: TcxLabel;
    edtSMSO1627: TcxSpinEdit;
    chkSMS628: TcxCheckBox;
    edtSMSO1628: TcxSpinEdit;
    mmoSMS629: TcxMemo;
    chkSMS629: TcxCheckBox;
    edtSMSO1629: TcxSpinEdit;
    Label8: TcxLabel;
    Label11: TcxLabel;
    Label13: TcxLabel;
    Label12: TcxLabel;
    Label14: TcxLabel;
    Label23: TcxLabel;
    Label22: TcxLabel;
    Label24: TcxLabel;
    Label59: TcxLabel;
    Label35: TcxLabel;
    Label63: TcxLabel;
    Label68: TcxLabel;
    Panel40: TPanel;
    cxScrollBox2: TcxScrollBox;
    cxLabel124: TcxLabel;
    cxLabel125: TcxLabel;
    cxLabel126: TcxLabel;
    cxLabel127: TcxLabel;
    cxButton136: TcxButton;
    cxButton137: TcxButton;
    cxButton140: TcxButton;
    img16: TImage;
    Image50: TImage;
    cxButton141: TcxButton;
    Image51: TImage;
    cxButton142: TcxButton;
    Image52: TImage;
    cxButton143: TcxButton;
    cxButton144: TcxButton;
    cxButton145: TcxButton;
    cxButton146: TcxButton;
    cxButton147: TcxButton;
    cxButton151: TcxButton;
    cxButton153: TcxButton;
    cxButton148: TcxButton;
    cxButton149: TcxButton;
    cxButton150: TcxButton;
    cxButton152: TcxButton;
    cxButton159: TcxButton;
    cxButton154: TcxButton;
    cxButton155: TcxButton;
    cxButton156: TcxButton;
    cxButton157: TcxButton;
    cxButton164: TcxButton;
    cxButton158: TcxButton;
    cxButton160: TcxButton;
    cxButton161: TcxButton;
    cxButton162: TcxButton;
    btnSMSRankMile6: TcxButton;
    btnSMSRankGrid6: TcxButton;
    cxButton138: TcxButton;
    cxButton139: TcxButton;
    N4: TMenuItem;
    mniCyberBankSMS: TMenuItem;
    cxLabel63: TcxLabel;
    cxLabel65: TcxLabel;
    cxLabel67: TcxLabel;
    cxLabel72: TcxLabel;
    cxLabel111: TcxLabel;
    cxLabel140: TcxLabel;
    cxLabel141: TcxLabel;
    cxLabel142: TcxLabel;
    cxLabel143: TcxLabel;
    cxLabel144: TcxLabel;
    cxLabel145: TcxLabel;
    cxLabel146: TcxLabel;
    cxLabel147: TcxLabel;
    cxLabel148: TcxLabel;
    cxLabel149: TcxLabel;
    cxLabel150: TcxLabel;
    cxLabel151: TcxLabel;
    cxLabel152: TcxLabel;
    cxLabel153: TcxLabel;
    cxLabel154: TcxLabel;
    cxLabel155: TcxLabel;
    cxLabel156: TcxLabel;
    cxLabel157: TcxLabel;
    cxLabel158: TcxLabel;
    cxLabel159: TcxLabel;
    cxLabel160: TcxLabel;
    cxLabel161: TcxLabel;
    cxLabel162: TcxLabel;
    cxLabel163: TcxLabel;
    cxLabel164: TcxLabel;
    cxLabel165: TcxLabel;
    cxLabel166: TcxLabel;
    cxLabel167: TcxLabel;
    cxLabel168: TcxLabel;
    cxLabel169: TcxLabel;
    cxLabel92: TcxLabel;
    cmb_auto_baechaMin: TcxComboBox;
    cxLabel170: TcxLabel;
    Shape51: TShape;
    cxLabel171: TcxLabel;
    cxLabel95: TcxLabel;
    cxLabel103: TcxLabel;
    N5: TMenuItem;
    N6: TMenuItem;
    cxViewBranchColumn1: TcxGridDBColumn;
    cxViewBranchColumn2: TcxGridDBColumn;
    cxViewBranchColumn3: TcxGridDBColumn;
    cxViewBranchColumn4: TcxGridDBColumn;
    cxViewBranchColumn5: TcxGridDBColumn;
    cxViewBranchColumn6: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
		procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoAddWord(Sender: TObject);
    procedure cxViewColumn4PropertiesNewLookupDisplayText(Sender: TObject;
      const AText: TCaption);
    procedure mmoSMSKeyPress(Sender: TObject; var Key: Char);
    procedure mmoSMSKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chkSMSRClick(Sender: TObject);
    procedure rbSMSReturnClick(Sender: TObject);
    procedure btnNoRecvSearchClick(Sender: TObject);
    procedure btnSMSGridClick(Sender: TObject);
    procedure edtSMSO1312PropertiesEditValueChanged(Sender: TObject);
    procedure chkSMS312Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure chkSMS200Click(Sender: TObject);
    procedure chkSMS210Click(Sender: TObject);
    procedure chkSMS220Click(Sender: TObject);
    procedure edtSMSRKeyPress(Sender: TObject; var Key: Char);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure chkSMS313Click(Sender: TObject);
    procedure edtSMSO2313PropertiesEditValueChanged(Sender: TObject);
    procedure edtSMSO1313PropertiesEditValueChanged(Sender: TObject);
    procedure mmoSMS311Click(Sender: TObject);
    procedure mmoSMS315Click(Sender: TObject);
    procedure mmoSMS312Click(Sender: TObject);
    procedure mmoSMS316Click(Sender: TObject);
    procedure mmoSMS313Click(Sender: TObject);
    procedure mmoSMS317Click(Sender: TObject);
    procedure mmoSMS310Click(Sender: TObject);
    procedure mmoSMS318Click(Sender: TObject);
    procedure mmoSMS411Click(Sender: TObject);
    procedure mmoSMS415Click(Sender: TObject);
    procedure mmoSMS412Click(Sender: TObject);
    procedure mmoSMS416Click(Sender: TObject);
    procedure mmoSMS413Click(Sender: TObject);
		procedure mmoSMS417Click(Sender: TObject);
    procedure mmoSMS410Click(Sender: TObject);
    procedure mmoSMS418Click(Sender: TObject);
    procedure mmoSMS511Click(Sender: TObject);
    procedure mmoSMS515Click(Sender: TObject);
    procedure mmoSMS512Click(Sender: TObject);
    procedure mmoSMS516Click(Sender: TObject);
    procedure mmoSMS513Click(Sender: TObject);
    procedure mmoSMS517Click(Sender: TObject);
    procedure mmoSMS510Click(Sender: TObject);
    procedure mmoSMS518Click(Sender: TObject);
    procedure mmoSMS611Click(Sender: TObject);
    procedure mmoSMS615Click(Sender: TObject);
    procedure mmoSMS612Click(Sender: TObject);
    procedure mmoSMS616Click(Sender: TObject);
    procedure mmoSMS613Click(Sender: TObject);
    procedure mmoSMS617Click(Sender: TObject);
    procedure mmoSMS610Click(Sender: TObject);
    procedure mmoSMS618Click(Sender: TObject);
    procedure chkSMS310Click(Sender: TObject);
    procedure chkSMS410Click(Sender: TObject);
    procedure chkSMS510Click(Sender: TObject);
    procedure chkSMS610Click(Sender: TObject);
    procedure chkSMS412Click(Sender: TObject);
    procedure chkSMS512Click(Sender: TObject);
    procedure chkSMS612Click(Sender: TObject);
    procedure chkSMS413Click(Sender: TObject);
    procedure chkSMS513Click(Sender: TObject);
    procedure chkSMS613Click(Sender: TObject);
		procedure mmoSMS110Click(Sender: TObject);
		procedure mmoSMS114Click(Sender: TObject);
    procedure pop_up1Popup(Sender: TObject);
    procedure btnSMSRankGrid1Click(Sender: TObject);
    procedure btn26Click(Sender: TObject);
    procedure btnDtlKeyPhoneTopClick(Sender: TObject);
    procedure btnCustRankCloseClick(Sender: TObject);
    procedure btnCustRankAddClick(Sender: TObject);
    procedure btn27Click(Sender: TObject);
    procedure cxGridCustRankListCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn28Click(Sender: TObject);
		procedure mmoSMS700Click(Sender: TObject);
    procedure mmoSMS701Click(Sender: TObject);
    procedure btnSMSRankGrid5Click(Sender: TObject);
    procedure btn35Click(Sender: TObject);
    procedure chkSMS700Click(Sender: TObject);
    procedure chkSMS311Click(Sender: TObject);
    procedure btn29Click(Sender: TObject);
    procedure btn30Click(Sender: TObject);
		procedure cbbCustRankNamePropertiesChange(Sender: TObject);
    procedure cxGridCustSMSListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
		procedure lbl67MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure grpSMSRankMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BtnSearchA3Click(Sender: TObject);
    procedure mmoSMS116Click(Sender: TObject);
    procedure mmoSMS702Click(Sender: TObject);
    procedure mmoSMS703Click(Sender: TObject);
    procedure cxButton88Click(Sender: TObject);
    procedure cxButton89Click(Sender: TObject);
    procedure cxButton90Click(Sender: TObject);
    procedure cbbCustRankMileNamePropertiesChange(Sender: TObject);
    procedure cxGridCustMileSMSListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure edtHeadOwnerJumin1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtHeadOwnerJumin1KeyPress(Sender: TObject; var Key: Char);
    procedure edtHeadSymbolClick(Sender: TObject);
    procedure edtHeadSymbolKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxViewSymbolCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnHeadSymbolPanelCloseClick(Sender: TObject);
    procedure btnSoNumCheckClick(Sender: TObject);
    procedure btnSymbolPanelNotUseClick(Sender: TObject);
    procedure btnHeadCancelClick(Sender: TObject);
    procedure btnHeadEditClick(Sender: TObject);
    procedure Cb_RecvSmsExcClick(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure cbbBranchSearchTypePropertiesChange(Sender: TObject);
    procedure btnBranchSearchClick(Sender: TObject);
    procedure cxViewBranchCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnBranchAddClick(Sender: TObject);
    procedure btnBranchExcelClick(Sender: TObject);
    procedure btnBranchModifyClick(Sender: TObject);
    procedure cbbA4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnCloseClick(Sender: TObject);
    procedure btnTcxButton19MapHelpClick(Sender: TObject);
    procedure BtnSearchA4Click(Sender: TObject);
    procedure AdvStrnGrd1CellChanging(Sender: TObject; OldRow, OldCol, NewRow,
      NewCol: Integer; var Allow: Boolean);
    procedure AdvStrnGrd1CheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    procedure AdvStrnGrd1ClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure AdvStrnGrd1GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure AdvStrnGrd1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure mniN2Click(Sender: TObject);
    procedure mniN3Click(Sender: TObject);
    procedure mniN4Click(Sender: TObject);
    procedure BtnImageDelDClick(Sender: TObject);
    procedure BtnImageDelSClick(Sender: TObject);
    procedure BtnImageSClick(Sender: TObject);
    procedure BtnSearchA5Click(Sender: TObject);
    procedure btn68Click(Sender: TObject);
    procedure btn72Click(Sender: TObject);
    procedure btn76Click(Sender: TObject);
    procedure btn_OShotSummitClick(Sender: TObject);
    procedure btn_wRef1Click(Sender: TObject);
    procedure chkSMSR140Click(Sender: TObject);
    procedure chkSMSR141Click(Sender: TObject);
    procedure BtnImageDClick(Sender: TObject);
    procedure cxLabel111Click(Sender: TObject);
    procedure cxRBDJClick(Sender: TObject);
    procedure cxRBSJClick(Sender: TObject);
    procedure edtSMSR140KeyPress(Sender: TObject; var Key: Char);
    procedure lb_OShotIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mmoSMS140Click(Sender: TObject);
    procedure mmoSMS140KeyPress(Sender: TObject; var Key: Char);
    procedure mmoSMS140PropertiesChange(Sender: TObject);
    procedure mmoSMS141Click(Sender: TObject);
    procedure mmoSMS141PropertiesChange(Sender: TObject);
    procedure Cb_RecvSmsClick(Sender: TObject);
    procedure mmoSMS117Click(Sender: TObject);
    procedure edtHeadSNumKeyPress(Sender: TObject; var Key: Char);
    procedure cbbBranchSearchValueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxImage1MouseLeave(Sender: TObject);
    procedure cxImage1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnGetListClick(Sender: TObject);
    procedure mmoSMS140KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtHeadOwnerNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mmoSMS117Exit(Sender: TObject);
    procedure mmoSMS327Click(Sender: TObject);
    procedure chkSMS327Click(Sender: TObject);
    procedure mmoSMS427Click(Sender: TObject);
    procedure mmoSMS527Click(Sender: TObject);
    procedure mmoSMS627Click(Sender: TObject);
    procedure cxViewBranchDataControllerSortingChanged(Sender: TObject);
    procedure cxViewBranchColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure mniCyberBankSMSClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtSMSO2412PropertiesEditValueChanged(Sender: TObject);
    procedure edtSMSO2413PropertiesEditValueChanged(Sender: TObject);
    procedure edtSMSO2513PropertiesEditValueChanged(Sender: TObject);
    procedure edtSMSO2613PropertiesEditValueChanged(Sender: TObject);
    procedure edtSMSO2512PropertiesEditValueChanged(Sender: TObject);
    procedure edtSMSO2612PropertiesEditValueChanged(Sender: TObject);
    procedure edtSMSO1413PropertiesEditValueChanged(Sender: TObject);
    procedure edtSMSO1513PropertiesEditValueChanged(Sender: TObject);
    procedure edtSMSO1613PropertiesEditValueChanged(Sender: TObject);
    procedure N6Click(Sender: TObject);
	private
    { Private declarations }
    FHeadInfo: THeadInfoTmp;
		FBankCodeList: TStringList;
    FBankNameList: TStringList;

 		jCheck: Boolean;

		SMSCtrls: array[0..143] of TSMSInfoRec;
		SMSDatas: array[0..143] of TSMSDataRec; // SMS ������ �����ϱ� ���� ����

		Comm_List : TStringList; //�������� �����ϱ� 2013.03.08 khs
		sBefore, sAfter : string; //cellChanging���� ������ 1��
		bValidate : Boolean;
		FRow, FCol : integer;

    m_ImgBff140, m_ImgBff141 : array [0..307199] of AnsiChar; // �̹����� ���� ����, �ִ� 300k
    m_ImgSize140, m_ImgSize141 : Integer;

		AIndex : integer;
		gCurProperties : TcxCurrencyEditProperties;
	
		
		procedure proc_init; // �ʱ�ȭ
		procedure proc_reset_sms;

    procedure RequestData(AData: string);
		procedure RequestDataSmsList; // SMS���� - SMS���� ��û

    procedure UpdateDataSms;

    procedure ResponseDataBase(ADataStr: WideString);     // ó�� �����͸� �����ϴ� �Լ�
		procedure ResponseDataSmsList(AXmlStr: WideString);   // SMS���� - SMS���� ����
		procedure ResultDataSms(AXmlStr: WideString);         // SMS���� - SMS ���� ���� ���

    // SMS ��Ʈ���� �Է� üũ
    function CheckSmsData: Boolean;
    function CheckSmsDataEdit(ARec: TSMSInfoRec): Boolean;
    function CheckSmsDataGrid(ARec: TSMSInfoRec): Boolean;

    // SMS ��Ʈ�� ���� ���
    function GetSmsData(ARec: TSMSInfoRec): string;
		function GetSMSDataEdit(ARec: TSMSInfoRec): TSMSDataRec;
		function GetSMSDataGrid(ARec: TSMSInfoRec; iType : integer): TSMSDataRec;
    function GetSMSDataOption(ARec: TSMSInfoRec): TSMSDataRec;  // Option�� �ִ� �޸�

    // SMS ��Ʈ�ѿ� ���� ǥ��
		procedure DisplaySms(AMsgNo: Integer; AUse, AFrom, ASendtime, AOption1, AOption2, AMessage: string; AMessage2: string = '');
		procedure DisplaySmsEdit(ARec: TSMSInfoRec; AMsgNo: Integer; AUse, AFrom, AMessage: string; AMessage2: string = '');
		procedure DisplaySmsOption(ARec: TSMSInfoRec; AMsgNo: Integer; AUse, AFrom, ASendtime, AOption1, AOption2, AMessage: string; AMessage2: string = '');
		procedure DisplaySmsGrid(ARec: TSMSInfoRec; AMsgNo: Integer; AUse, AFrom, ASendtime, AOption1, AMessage: string; AMessage2: string = '');

		function GetComponent(ABase: string; ATag: Integer): TComponent; overload;
    function GetComponent(AName: string): TComponent; overload;
    function GetSMSMemo(ATag: Integer): TcxMemo;
    function GetSMSLabel(ATag: Integer): TLabel;
    function GetReturnCheckBox(ATag: Integer): TcxCheckBox;
    function GetSMSEdit(ATag: Integer): TcxTextEdit;
    function GetSMSCheckedRadio(ATag: Integer): TRadioButton;
    procedure SetSMSCheckedRadio(ATag: Integer; AValue: string);
    function GetReturnNum(ATag: Integer): string;
    procedure MemoText(ATag: Integer; AValue: string); overload;
    procedure MemoText(AMemo: TcxMemo; AValue: string); overload;

    procedure proc_Get_CustRankList;
    procedure proc_Get_CustRankMileList;
		procedure ChageCustRankList(ACustRankName: string);
    procedure ChageCustRankMileList(ACustRankName: string);
    function GetSMSCB(ATag: Integer): TcxComBoBox;
    procedure DisplayHeadInfo(AInfo: THeadInfoTmp);
    procedure RequestDataBankCode;
    procedure RequestDataHead;
    procedure RequestDataSymbol;
    procedure ResponseDataBankCode(AXmlStr: WideString);
    procedure ResponseDataHead(AXmlStr: WideString);
    procedure ResponseDataSymbol(AXmlStr: WideString);
    procedure ResultDataHead(AXmlStr: WideString);
    procedure UpdateDataHead;
		procedure ResponseDataBranchList(AXmlStr: WideString);
    function GetBranchSearchText: string;
    procedure RefreshBranchList(Sender: TObject);
    procedure ShowBranchWindow(ABrNo: string);
    function gfExcelChar(Key: Integer): String;
    function Grid_Excel(Comp: TAdvStringGrid; sTitle, sSubject: String;
      ACol: array of Integer; HideView, bFixedCol, bAlCenter: Boolean): Boolean;
    procedure CopyStringGrid;
    procedure proc_GridSet;
    procedure RequestDataBranchList_Comm;
    procedure proc_initA5;
    procedure MemoTextA5(ATag: Integer; AValue: string); overload;
    procedure MemoTextA5(ATag: Integer; AMemo: TcxMemo; AValue: string); overload;
    function fGetMMSImage(sGubun: String): Boolean;
    function fSetMMSImage(sGubun: String): Boolean;
    procedure pGetLoadBuffer(sFileName, sGubun: String);
    procedure Cash_ReFlash;
    procedure RequestDataOShotSet;
	public
		{ Public declarations }
		sCustRankCodeList, sCustRankNameList : TStringList;
		sCustRankMileCodeList, sCustRankMIleNameList : TStringList;
    procedure proc_BrNameSet;
    procedure proc_init_head;
    procedure proc_init_branch;
    procedure RequestDataBranchList;
	end;

var
  Frm_CMP: TFrm_CMP;

implementation

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_Lib, xe_Flash, xe_JON057, xe_AllShot, xe_SearchWord,
  xe_SMS01, xe_CMP02;


const
  SMSItemText = '<Item kind="%d" use="%s" from="%s" send_time="%s" Option1="%s" Option2="%s"><msg1>%s</msg1><msg2>%s</msg2></Item>';

{$R *.dfm}

procedure TFrm_CMP.FormCreate(Sender: TObject);
begin
	SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);

  // --------------------------------------------------------------------------- A1
	FBankCodeList := TStringList.Create;
	FBankNameList := TStringList.Create;

	gCurProperties := TcxCurrencyEditProperties.Create(Nil);
	
  if GT_USERIF.ID = 'sntest' then btnGetList.Visible := True;

  proc_Init;
	proc_init_head;

  // --------------------------------------------------------------------------- A2
	btnBranchAdd.Enabled    := (TCK_USER_PER.CMP_BrchModify = '1');
	btnBranchModify.Enabled := (TCK_USER_PER.CMP_BrchModify = '1');

	if IsDaeJeonShare(GS_PRJ_AREA = 'O', GT_USERIF.ShareNo) then
		cxViewBranch.Columns[9].Visible := False
	 else
		cxViewBranch.Columns[9].Visible := True;

  // --------------------------------------------------------------------------- A3
	Comm_List := TStringList.Create;
  cxPageControl2.ActivePageIndex := 0;

  cxPageControl1.ActivePageIndex := 0;
	cxPageControl1.Pages[0].TabVisible := (GT_USERIF.LV = '60') and (TCK_USER_PER.CMP_Head = '1');                 // 801.�������
  cxPageControl1.Pages[1].TabVisible := (TCK_USER_PER.CMP_Branch = '1') or (TCK_USER_PER.CMP_BrchModify = '1');  // 802.�������
  cxPageControl1.Pages[2].TabVisible := (TCK_USER_PER.CMP_SMSSet = '1');                                         // 803.SMS�߼�
  cxPageControl1.Pages[3].TabVisible := (Free_Commission = 'y') and (TCK_USER_PER.CMP_FreeSet = '1');            // 804.���������� ����
  cxPageControl1.Pages[4].TabVisible := False;  // (GT_USERIF.LV = '60');                                        // 805.������ ���� �޴� ���� 20201020. CDS

  // --------------------------------------------------------------------------- A4
	proc_GridSet;

  // --------------------------------------------------------------------------- A5
  proc_initA5;


  proc_BrNameSet;
end;

procedure TFrm_CMP.FormDestroy(Sender: TObject);
begin
  Frm_CMP := Nil;
end;

procedure TFrm_CMP.FormShow(Sender: TObject);
Var i : Integer;
begin
  fSetFont(Frm_CMP, GS_FONTNAME);
  for i := 0 to pred(cxStyleCustLevel.Count) do
  begin
    TcxStyle(cxStyleCustLevel.Items[i]).Font.Name := GS_FONTNAME;
  end;
end;

procedure TFrm_CMP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Comm_List.Free;
	sCustRankCodeList.Free;
	sCustRankNameList.Free;

	sCustRankMileCodeList.Free;
	sCustRankMileNameList.Free;

	Action := Cafree;
end;

procedure TFrm_CMP.proc_initA5;
begin
  btn_wRef1.Visible := False;
  cxGrpOShot.Visible := False;

  lb_OShotID.Clear;
  lb_OShotPW.Clear;
  btn_OShotSummit.Enabled := True;

  chk_OShotSend.Checked := False;

  cxRBDS.Checked := True;
  LblDSMS.Caption := '�ܹ�';
  cxRBDJClick(cxRBDS);

  cxRBSS.Checked := True;
  cxRBSJClick(cxRBSS);
  LblSSMS.Caption := '�ܹ�';

  m_ImgSize140 := 0;
  m_ImgSize141 := 0;

  mmoSMS140.Clear;
  mmoSMS141.Clear;

  lblSMS140.Caption := '0 Byte';
  lblSMS141.Caption := '0 Byte';

  chkSMSR140.Checked := False;
  chkSMSR141.Checked := False;

  edtSMSR140.Clear;
  edtSMSR140.Enabled := False;
  edtSMSR141.Clear;
  edtSMSR141.Enabled := False;
end;

procedure TFrm_CMP.proc_init_branch;
var
  I: Integer;
begin
  try
    if GT_USERIF.LV = '60' then
    begin
      cbbBranchSearchType.ItemIndex := 0;
      cbbBranchSearchValue.Properties.DropDownListStyle := lsEditList;
      cbbBranchSearchValue.Text := '';
    end else
    // ���� �α��� �� ���� �˻������� ����� �˻��ϹǷ� �ٸ� �˻����� ����
    begin
      btnBranchAdd.Enabled          := False;
      cbbBranchSearchType.Enabled   := False;
      cbbBranchSearchValue.Enabled  := False;
    end;

		for I := 0 to cxViewBranch.ColumnCount - 1 do
		begin
      case I of
				0:
					cxViewBranch.Columns[I].DataBinding.ValueTypeClass := TcxIntegerValueType;
				5, 6:
					begin
						cxViewBranch.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
						cxViewBranch.Columns[I].Properties := Frm_Main.gCurProperties;

					end;
			else
				cxViewBranch.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
      end;
		end;
  Except
  end;
end;

procedure TFrm_CMP.proc_BrNameSet;
var
  StrList: TStringList;
  i : Integer;
begin
  lblSosokNameA2.Caption := GetSosokInfo;
  lblSosokNameA3.Caption := GetSosokInfo;
  lblSosokNameA4.Caption := GetSosokInfo;

  cxCheckBox2.Checked := False;
  cxCheckBox3.Checked := False;
  cxCheckBox4.Checked := False;
  cxCheckBox5.Checked := False;
  cxCheckBox6.Checked := False;
  cxCheckBox7.Checked := False;
	edtSMSR128.Text := '';

	StrList := TStringList.Create;
  try
    if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
    begin
      GetBrTelList(GT_SEL_BRNO.HDNO, StrList);
      cbSMSR110.Properties.Items.Assign(StrList);
    end else
    begin
			GetBrTelList(GT_SEL_BRNO.BrNo, StrList);
			cbSMSR110.Properties.Items.Assign(StrList);
    end;
	finally
		StrList.Free;
  end;
  if cbSMSR110.Properties.Items.Count >= 1 then
    cbSMSR110.Properties.Items.Insert(0, '��ȣ����');
  cbSMSR110.ItemIndex := 0;

  cbKeynumber01.Properties.Items := cbSMSR110.Properties.Items;
  cbKeynumber02.Properties.Items := cbSMSR110.Properties.Items;

  cbKeynumber01.ItemIndex := 0;
  cbKeynumber02.ItemIndex := 0;

  try
    // ��ǥ��ȣ �ϰ� ����
    for i := 0 to ComponentCount - 1 do
    begin
      if Components[i] is TcxComBoBox then
      begin
        if (Components[i] as TcxComBoBox).Tag = 110 then Continue;
        if (Components[i] as TcxComBoBox).TextHint = '��ǥ��ȣ' then
        begin
          (Components[i] as TcxComBoBox).Properties.Items := cbSMSR110.Properties.Items;
          (Components[i] as TcxComBoBox).ItemIndex := 0;
        end;
      end;
    end;
  except

  end;
end;

{*==============================================================================
 �ʱ�ȭ
==============================================================================*}

procedure TFrm_CMP.proc_init;
Var i : Integer;
begin
  SetDebugeWrite('Frm_CMP.proc_Init');
  //---------------------------------------------------------------------------- A1
  try
    for I := 0 to cxViewSymbol.ColumnCount - 1 do
	  	cxViewSymbol.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;

  	RequestDataSymbol;

  	cmb_auto_baechaMin.ItemIndex := 0;
  except
  end;

  //---------------------------------------------------------------------------- A2
	proc_init_branch;

  //---------------------------------------------------------------------------- A3
	cxButton71.Visible := True;
	cxButton72.Visible := True;

	sCustRankCodeList := TStringList.Create;
	sCustRankNameList := TStringList.Create;

	sCustRankMileCodeList := TStringList.Create;
	sCustRankMIleNameList := TStringList.Create;
end;

{*==============================================================================
 �ʱ�ȭ
==============================================================================*}
procedure TFrm_CMP.proc_init_head;
begin
  SetDebugeWrite('Frm_CMPA1.proc_init_head');
	try
		RequestDataBankCode;
		RequestDataHead;
	except
  end;
end;

procedure TFrm_CMP.RequestDataSymbol;
var
  ls_TxQry, ls_TxLoad, sQueryTemp : string;
begin
  SetDebugeWrite('Frm_CMPA1.RequestDataSymbol');
  try
    // 2011.01.12 �����ּ� �߰�
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_HEAD_SYMBOLS, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, []);
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'SYMB0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

		RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_CMP.RequestDataBankCode;
var
  ls_TxQry, ls_TxLoad, sQueryTemp: string;
begin
  SetDebugeWrite('Frm_CMPA1.RequestDataBankCode');
  try
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_COMMON_CODE, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, ['BK']);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BKCD0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_CMP.RequestDataHead;
var
  ls_TxLoad: string;
begin
  SetDebugeWrite('Frm_CMPA1.RequestDataHead');
  try
    if fGetChk_Search_HdBrNo('�������(�⺻����)') then Exit;

    ls_TxLoad := GTx_UnitXmlLoad('C044N1.xml');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'HEAD0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'SELECT/UPDATE', 'SELECT', [rfReplaceAll]);
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      ls_TxLoad := StringReplace(ls_TxLoad, 'HeadsHdNo', GT_SEL_BRNO.HDNO, [rfReplaceAll])
    else
      ls_TxLoad := StringReplace(ls_TxLoad, 'HeadsHdNo', GT_USERIF.HD, [rfReplaceAll]);
    // 2011-09-23 ���� ������ ������ȣ �߰�.  xml ���� ������� �ڵ忡 �߰� ��.
		ls_TxLoad := StringReplace(ls_TxLoad, '��ǥ����ó', '" mem_hp2="" mem_attend_hp="" mem_excel_hp="' , [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'mem_hp2=""', 'autobaecha_reinvoke_time="�ٰŸ�������ð�" mem_hp2=""' , [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'mem_hp2=""', 'hd_jumin_no="" mem_hp2=""' , [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'mem_hp2=""', 'mem_master_hp="" mem_master_hp2="" mem_hp2=""' , [rfReplaceAll]);

    RequestData(ls_TxLoad);
  except
  end;
end;

{*==============================================================================
 ������ �����
==============================================================================*}

procedure TFrm_CMP.UpdateDataHead;
var
  ls_TxLoad: string;
	sMin : string;
	sTemp : string;
  stSno1, stSno2: string;
begin
  SetDebugeWrite('Frm_CMPA1.UpdateDataHead');

	stSno1 := StringReplace(edtHeadOwnerJumin1.Text, '-', '', [rfReplaceAll]);
	stSno2 := StringReplace(edtHeadOwnerJumin2.Text, '-', '', [rfReplaceAll]);
	stemp := stSno1 + stSno2;
	if (Length(sTemp) = 13) then
  begin
    if Length(stemp) = 13 then
		begin
			jCheck := func_SoNumCheck(sTemp);
			if jCheck then
			begin
				// �����Ǹ� �ܱ��� �űԵ�� �Ұ��� �ϵ��� ����. 2011.08.01
				if (GS_PRJ_AREA = 'S') and (LeftStr(stSno2, 1) <> '1') and (LeftStr(stSno2, 1) <> '2') then
				begin
					GMessagebox('����� �Ұ���(�ӽð��� ��2�ܱ���, �ܱ���,, ���) �ֹι�ȣ�� �Է��Ͽ����ϴ�.', CDMSE);
   				Exit;
				end;
			end else
      begin
        GMessagebox('�ֹε�� ��ȣ�� �߸� �Է��Ͽ����ϴ�.', CDMSE);
				Exit;
      end;
		end;
	end else
  begin
    GMessagebox('�ֹε�� ��ȣ�� �߸� �Է��Ͽ����ϴ�.', CDMSE);
		Exit;
	end;

  // 2015.02.03  ���������� ������� ���� ���� ó��
	if btnSoNumCheck.Enabled then
	begin
    GMessagebox('���������� �Ϸ���� �ʾҽ��ϴ�.',cdmse);
		Exit;
	end;

  if fGetChk_Search_HdBrNo('�������(��������)') then Exit;

	if Not func_EucKr_Check(edtHeadOwnerName, 0) then Exit;
	if Not func_EucKr_Check(edtHeadSNum, 0) then Exit;

  try
    ls_TxLoad := GTx_UnitXmlLoad('C044N1.xml');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'HEAD0002', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'SELECT/UPDATE', 'UPDATE', [rfReplaceAll]);
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      ls_TxLoad := StringReplace(ls_TxLoad, 'HeadsHdNo', GT_SEL_BRNO.HDNO, [rfReplaceAll])
    else
      ls_TxLoad := StringReplace(ls_TxLoad, 'HeadsHdNo', GT_USERIF.HD, [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, '�����ڵ�', edtHeadCode.Text, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, '�����', edtHeadName.Text, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, '����ڹ�ȣ', edtHeadSNum.Text, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, '�����ȣ', edtHeadSymbol.Text, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, '��ǥ�ڸ�', edtHeadOwnerName.Text, [rfReplaceAll]);


		// 20120821 ���� ������ ��ٹ��� ���� ��ǥ��ȣ  �߰�.  xml ���� ������� �ڵ忡 �߰� ��.
		if cmb_auto_baechaMin.ItemIndex = 0 then sMin := '0' else
    if cmb_auto_baechaMin.ItemIndex > 0 then sMin := inttostr(cmb_auto_baechaMin.ItemIndex);

		ls_TxLoad := StringReplace(ls_TxLoad, '��ǥ����ó', edtHeadOwnerPhone.Text + '" autobaecha_reinvoke_time="' + sMin + '" mem_attend_hp="' + lbl_RecvSmsNo.Text + '" mem_excel_hp="' + lbl_RecvSmsExc.Text , [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'address2="���ּ�"', 'hd_jumin_no="�ֹι�ȣ" address2="���ּ�"' , [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, '�ֹι�ȣ', StringReplace(edtHeadOwnerJumin1.Text + edtHeadOwnerJumin2.Text, '-', '', [rfReplaceAll]), [rfReplaceAll]);

    RequestData(ls_TxLoad);
  except
  end;
end;

{*==============================================================================
 ������ ���ź�
==============================================================================*}
procedure TFrm_CMP.ResponseDataBase(ADataStr: WideString);
var
  xdom: msDomDocument;
  XmlData: WideString;
  ErrorCode, ClientKey: string;
begin
  SetDebugeWrite('Frm_CMPA1.ResponseDataBase');

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

        if ClientKey = 'SYMB0001' then ResponseDataSymbol(XmlData) else
        if ClientKey = 'BKCD0001' then ResponseDataBankCode(XmlData) else
        if ClientKey = 'HEAD0001' then ResponseDataHead(XmlData) else
        if ClientKey = 'HEAD0002' then ResultDataHead(XmlData) else
        if ClientKey = 'BRCH0001' then ResponseDataBranchList(XmlData) else
				if ClientKey = 'SMSL0001' then ResponseDataSmsList(XmlData) else    // ���� SMS ������ ��ȸ.
        if ClientKey = 'SMSL0002' then ResultDataSms(XmlData)
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

procedure TFrm_CMP.ResponseDataSymbol(AXmlStr: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I, J, RowCnt, Cnt, ColCount: Integer;
begin
  SetDebugeWrite('Frm_CMPA1.ResponseDataSymbol');

  xdom := ComsDomDocument.Create;
  try
	  if not xdom.loadXML(AXmlStr) then Exit;

    lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
    ColCount := cxViewSymbol.ColumnCount;
    Cnt := GetXmlRecordCount(AXmlStr);
    RowCnt := ((Cnt - 1) div ColCount) + 1;
    cxViewSymbol.BeginUpdate;
    for I := 0 to RowCnt - 1 do
    begin
      cxViewSymbol.DataController.AppendRecord;
      for J := 0 to cxViewSymbol.ColumnCount - 1 do
      begin
        if (I * ColCount + J) >= Cnt then
          Break;
        cxViewSymbol.DataController.Values[I, J] := lst_Result[I * ColCount + J].attributes.getNamedItem('Value').text;
      end;
    end;
  finally
    cxViewSymbol.EndUpdate;
    xdom := Nil;
  end;
end;

procedure TFrm_CMP.ResponseDataBankCode(AXmlStr: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I: Integer;
begin
  SetDebugeWrite('Frm_CMPA1.ResponseDataBankCode');

  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then
      Exit;

    if (0 < GetXmlRecordCount(AXmlStr)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

      FBankCodeList.Clear;
      FBankNameList.Clear;
	  	ls_Rcrd := TStringList.Create;
      try
        for I := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
	  			FBankNameList.Add(ls_Rcrd[0]);
	  			FBankCodeList.Add(ls_Rcrd[1]);
        end;
      finally
        ls_Rcrd.Free;
      end;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_CMP.ResponseDataHead(AXmlStr: WideString);
var
  xdom: msDomDocument;
  ResultList: IXMLDomNodeList;
  sTemp: string;
begin
  SetDebugeWrite('Frm_CMPA1.ResponseDataHead');

  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then
      Exit;

    ResultList := xdom.documentElement.selectNodes('/cdms/Service/Heads/Head');

    if ResultList.length > 0 then
    begin
      with ResultList[0].attributes do
      begin
        // ����⺻����
        FHeadInfo.Name := getNamedItem('name').text;
        FHeadInfo.Code := getNamedItem('no').text;
        FHeadInfo.Owner   := getNamedItem('mem_name').text;
        FHeadInfo.Phone   := getnamedItem('mem_hp').text;
        FHeadInfo.Phone2  := getnamedItem('mem_hp2').text;   // 2011-09-21   add.  ��������
        FHeadInfo.MPhone   := getnamedItem('mem_master_hp').text;
        FHeadInfo.MPhone2  := getnamedItem('mem_master_hp2').text;   // 2011-09-21   add.  ��������

        FHeadInfo.attend_hp := getnamedItem('mem_attend_hp').text;
        FHeadInfo.excel_hp := getnamedItem('mem_excel_hp').text;
        // ������̵� �ƴѰ�� ���̵� ���߱�
        sTemp := getNamedItem('mem_id').text;
	  		if GT_USERIF.ID <> sTemp then
          sTemp := Rpad(Copy(sTemp, 1, 1), System.Length(sTemp), '*');
        FHeadInfo.ID := sTemp;
	  		FHeadInfo.SNum := getNamedItem('company_no').text;

        // ���缳������
        FHeadInfo.Use := (UpperCase(getNamedItem('use').text) = 'Y');
        FHeadInfo.TypeV := (getNamedItem('hierarchy').text = '3');
        FHeadInfo.Symbol := getNamedItem('symbol').Text;
        FHeadInfo.ShareOrder := getNamedItem('union_name').Text;
        sTemp := getNamedItem('bank').Text;
        if FBankNameList.IndexOf(sTemp) < 0 then
          FHeadInfo.VirAccount := ''
	  		else
	  			FHeadInfo.VirAccount := FBankCodeList[FBankNameList.IndexOf(sTemp)];

        FHeadInfo.Share := StrToIntDef(getNamedItem('share_level').text, 0);
        FHeadInfo.Memo := getNamedItem('Memo').text;

	  		// ����ĳ������
        FHeadInfo.Period := StrToIntDef(getNamedItem('settle_cycle').text, 0);
        FHeadInfo.Bank := getNamedItem('settle_bank').text;
        FHeadInfo.BankNum := getNamedItem('settle_account').text;
        FHeadInfo.BankName := getNamedItem('settle_depositor').text;

        if GT_USERIF.ID = edtHeadID.Text then
        begin
          edtHeadOwnerName.Enabled := True;
          edtHeadOwnerPhone.Enabled  := False;
          edtHeadOwnerPhone2.Enabled := False;

          edtHeadMasterPhone.Enabled  := False;
          edtHeadMasterPhone2.Enabled := False;
        end;
        // 2011.01.12 �߰�(�����ּ�)
        FHeadInfo.Zipcode := getnameditem('zipcode').text;
        FHeadInfo.Addr1 := getnameditem('address1').text;
        FHeadInfo.Addr2 := getnameditem('address2').text;

	  		//2014.03.20 ����� �ð� �߰� KHS
	  		FHeadInfo.auto_baechaMin := getnameditem('autobaecha_reinvoke_time').text;
	  		FHeadInfo.hd_jumin_no := getnameditem('hd_jumin_no').text;
	  		if FHeadInfo.hd_jumin_no = '' then btnSoNumCheck.Enabled := True;
      end;
      DisplayHeadInfo(FHeadInfo);
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_CMP.ResultDataHead(AXmlStr: WideString);
begin
  GMessagebox('���������� �����Ǿ����ϴ�.', CDMSI);
  pnlHeadSymbol.Visible := False;
  RequestDataHead; // �ٽ�ǥ��
end;


procedure TFrm_CMP.DisplayHeadInfo(AInfo: THeadInfoTmp);
begin
  SetDebugeWrite('Frm_CMP.DisplayHeadInfo');

  // ����⺻����
  edtHeadName.Text := AInfo.Name;
  edtHeadCode.Text := AInfo.Code;
  edtHeadOwnerName.Text := AInfo.Owner;
  edtHeadOwnerPhone.Text  := AInfo.Phone;
  edtHeadOwnerPhone2.Text := AInfo.Phone2;
  edtHeadMasterPhone.Text  := AInfo.MPhone;
  edtHeadMasterPhone2.Text := AInfo.MPhone2;

  if Trim(AInfo.attend_hp) <> '' then
  begin
    Cb_RecvSms.Checked := True;
    lbl_RecvSmsNo.Text := AInfo.attend_hp;
  end else
  begin
    Cb_RecvSms.Checked := False;
    lbl_RecvSmsNo.Text := '';
  end;

  if Trim(AInfo.excel_hp) <> '' then
  begin
    Cb_RecvSmsExc.Checked := True;
    lbl_RecvSmsExc.Text := AInfo.excel_hp;
  end else
  begin
    Cb_RecvSmsExc.Checked := False;
    lbl_RecvSmsExc.Text := '';
  end;

  edtHeadID.Text := AInfo.ID;
  edtHeadSNum.Text := AInfo.SNum;

  // ���缳������
  rbHeadUseY.Checked := AInfo.Use;
  rbHeadUseN.Checked := not AInfo.Use;
  rbHeadTypeV.Checked := AInfo.TypeV;
  rbHeadTypeH.Checked := not AInfo.TypeV;
  edtHeadSymbol.Text := AInfo.Symbol;
  edtHeadShareOrder.Text := AInfo.ShareOrder;
  edtHeadVirAccount.Text := AInfo.VirAccount;
	case AInfo.Share of
    0: rbHeadShare0.Checked := True;
    1: rbHeadShare1.Checked := True;
    2: rbHeadShare2.Checked := True;
    3: rbHeadShare3.Checked := True;
    4: rbHeadShare4.Checked := True;
  end;

  mmoHeadMemo.Clear;
  mmoHeadMemo.Text := AInfo.Memo;

  // ����,ĳ������
  case AInfo.Period of
    1: rbHeadPeriodM.Checked := True;
    2: rbHeadPeriodW.Checked := True;
    3: rbHeadPeriodD.Checked := True;
  end;
  edtHeadBank.Text := AInfo.Bank;
  edtHeadBankNum.Text := AInfo.BankNum;
  edtHeadBankName.Text := AInfo.BankName;

  // �����ּ������߰� 2011.01.12
	edtHeadZipCode.Text := AInfo.Zipcode;
  edtHeadAddr1.Text := AInfo.Addr1;
  edtHeadAddr2.Text := AInfo.Addr2;

	if Ainfo.auto_baechaMin = '0' then cmb_auto_baechaMin.ItemIndex := 0 else
	if strtointDef(Ainfo.auto_baechaMin, 0) > 0 then cmb_auto_baechaMin.ItemIndex := strtointDef(Ainfo.auto_baechaMin,0);

	if AInfo.hd_jumin_no <> '' then
	begin
		edtHeadOwnerJumin1.Text := Trim(Copy(AInfo.hd_jumin_no, 1, 6)) ;
		edtHeadOwnerJumin2.Text := Trim(Copy(AInfo.hd_jumin_no, 7, length(AInfo.hd_jumin_no)));
    btnSoNumCheck.Enabled := False;
	end	else
	begin
		edtHeadOwnerJumin1.Text := '';
		edtHeadOwnerJumin2.Text := '';
    btnSoNumCheck.Enabled := True;
	end;
end;

procedure TFrm_CMP.proc_reset_sms;
type
	TCustRec = record
		CustType: string;
		MsgNo: Integer;
	end;
	TCustRankRec = record
		CustSMSType: string;
		MsgNo: Integer;
	end;
const
	SMSNo: array[0..143] of Integer = (
		110, 114, 115, 116, 117, 121, 122, 123, 124, 125, 126, 127, 130,
    131, 132, 133, 210, 220,
		200, 250, 260, 251, 261, 252, 262, 253, 263, 254,
		264, 255, 265, 256, 266, 257, 267, 258, 268, 259,        //10.��������� ���� ��Ҵ� ���ڼ�������(��������û) 20161123 KHS
		269,
		310, 311, 312, 313, 315, 316, 317, 318, 321, 322,
		325, 326, 330,
		327, 328, 329,//�Ҹ긶�ϸ��� �����к� ������SMS
		410, 411, 412, 413, 415, 416, 417, 418, 421, 422,
		425, 426,
		427, 428, 429,//�Ҹ긶�ϸ��� �����к� ������SMS
		510, 511, 512, 513, 515, 516, 517, 518, 521, 522,
		525, 526,
		527, 528, 529,//�Ҹ긶�ϸ��� �����к� ������SMS
		610, 611, 612, 613, 615, 616, 617, 618, 621, 622,
		625, 626,
		627, 628, 629,//�Ҹ긶�ϸ��� �����к� ������SMS
		700, 701,
		710, 720, 711, 721, 712, 722, 713, 723, 714, 724,
		715, 725, 716, 726, 717, 727, 718, 728, 719, 729,
		702, 703,
		730, 740, 731, 741, 732, 742, 733, 743, 734, 744,
		735, 745, 736, 746, 737, 747, 738, 748, 739, 749
	);

	ReasonList: array[0..9] of string = (
      '0.��ȭ�ȵ�'
    , '1.���ܴ�'
    , '2.�����'
    , '3.������'
    , '4.Ÿ���̰�'
    , '5.Ÿ���̿�'
		, '6.������'
    , '7.�����Ǽ�'
    , '8.��Ÿ'
    , '9.��������'
  );
	CustList: array[0..1] of TCustRec = (
			(CustType: '������'; MsgNo: 250)
		, (CustType: '��翡��'; MsgNo: 260)
	);
var
  I, J, Idx: Integer;
begin
	cxView.DataController.SetRecordCount(0);

	for I := Low(ReasonList) to High(ReasonList) do
	begin
		for J := Low(CustList) to High(CustList) do
		begin
			Idx := cxView.DataController.AppendRecord;
			cxView.DataController.SetValue(Idx, 0, ReasonList[I]);
			cxView.DataController.SetValue(Idx, 1, False);
			cxView.DataController.SetValue(Idx, 2, CustList[J].CustType);
			cxView.DataController.SetValue(Idx, 3, '');
			cxView.DataController.SetValue(Idx, 4, 0);
			cxView.DataController.SetValue(Idx, 5, CustList[J].MsgNo+I);
		end;
	end;

	cxGridCustSMSList.DataController.SetRecordCount(0);
	cxGridCustMileSMSList.DataController.SetRecordCount(0);

	for I := 0 to Length(SMSNo) - 1 do
  begin
		SMSCtrls[I].MsgNo := SMSNo[I];
	
		if SMSCtrls[I].MsgNo = 114 then
			SMSCtrls[I].chkSelect := TcxCheckBox(GetComponent('chkSMS', 110))
		else
			SMSCtrls[I].chkSelect := TcxCheckBox(GetComponent('chkSMS', SMSNo[I]));
		SMSCtrls[I].mmoSms    := TcxMemo(GetComponent('mmoSMS', SMSNo[I]));
		SMSCtrls[I].lblSMS    := TLabel(GetComponent('lblSMS', SMSNo[I]));
		// ������� ������(�׸���)
		if (SMSNo[I] >= 250) and (SMSNo[I] <= 269) then
		begin
			SMSCtrls[I].edtReturn := edtSMSR200;
			SMSCtrls[I].chkReturn := chkSMSR200;
			SMSCtrls[I].cbReturn  := cbSMSR200;
		end else
		if (SMSNo[I] >= 710) and (SMSNo[I] <= 729) then
		begin
			SMSCtrls[I].edtReturn := edtSMSR700;
			SMSCtrls[I].chkReturn := chkSMSR700;
			SMSCtrls[I].cbReturn  := cbSMSR700;
			SMSCtrls[I].chkSelect := chkSMS700;
			SMSCtrls[I].edtTime   := edtSMST700;
		end else
		if (SMSNo[I] >= 730) and (SMSNo[I] <= 749) then
		begin
			SMSCtrls[I].edtReturn := edtSMSR702;
			SMSCtrls[I].chkReturn := chkSMSR702;
			SMSCtrls[I].cbReturn  := cbSMSR702;
			SMSCtrls[I].chkSelect := chkSMS702;
			SMSCtrls[I].edtTime   := edtSMST700;
		end else
		begin
			if (SMSCtrls[I].MsgNo = 327) or (SMSCtrls[I].MsgNo = 328) or (SMSCtrls[I].MsgNo = 329) then   //������ SMS ���� �Ҹ꿹�� ���ϸ��� ���� ��
			begin
				SMSCtrls[I].edtReturn := TcxTextEdit(GetComponent('edtSMSR', 327));   //1ȸ
				SMSCtrls[I].chkReturn := TcxCheckBox(GetComponent('chkSMSR', 327));   //2ȸ
				SMSCtrls[I].cbReturn  := TcxComboBox(GetComponent('cbSMSR' , 327));   //3ȸ
			end else
			if (SMSCtrls[I].MsgNo = 427) or (SMSCtrls[I].MsgNo = 428) or (SMSCtrls[I].MsgNo = 429) then   //������ SMS ���� �Ҹ꿹�� ���ϸ��� ���� ��
			begin
				SMSCtrls[I].edtReturn := TcxTextEdit(GetComponent('edtSMSR', 427));   //1ȸ
				SMSCtrls[I].chkReturn := TcxCheckBox(GetComponent('chkSMSR', 427));   //2ȸ
				SMSCtrls[I].cbReturn  := TcxComboBox(GetComponent('cbSMSR' , 427));   //3ȸ
			end else
			if (SMSCtrls[I].MsgNo = 527) or (SMSCtrls[I].MsgNo = 528) or (SMSCtrls[I].MsgNo = 529) then   //������ SMS ���� �Ҹ꿹�� ���ϸ��� ���� ��
			begin
				SMSCtrls[I].edtReturn := TcxTextEdit(GetComponent('edtSMSR', 527));   //1ȸ
				SMSCtrls[I].chkReturn := TcxCheckBox(GetComponent('chkSMSR', 527));   //2ȸ
				SMSCtrls[I].cbReturn  := TcxComboBox(GetComponent('cbSMSR' , 527));   //3ȸ
			end else
			if (SMSCtrls[I].MsgNo = 627) or (SMSCtrls[I].MsgNo = 628) or (SMSCtrls[I].MsgNo = 629) then   //������ SMS �ҷ� �Ҹ꿹�� ���ϸ��� ���� ��
			begin
				SMSCtrls[I].edtReturn := TcxTextEdit(GetComponent('edtSMSR', 627));   //1ȸ
				SMSCtrls[I].chkReturn := TcxCheckBox(GetComponent('chkSMSR', 627));   //2ȸ
				SMSCtrls[I].cbReturn  := TcxComboBox(GetComponent('cbSMSR' , 627));   //3ȸ
			end else
			begin
				SMSCtrls[I].edtReturn := TcxTextEdit(GetComponent('edtSMSR', SMSNo[I]));
				SMSCtrls[I].chkReturn := TcxCheckBox(GetComponent('chkSMSR', SMSNo[I]));
				SMSCtrls[I].cbReturn  := TcxComboBox(GetComponent('cbSMSR' , SMSNo[I]));
			end;
		end;

		SMSCtrls[I].edtOption1 := TcxCustomTextEdit(GetComponent('edtSMSO1', SMSNo[I]));
		SMSCtrls[I].edtOption2 := TcxCustomTextEdit(GetComponent('edtSMSO2', SMSNo[I]));
		if ((SMSNo[I] >= 310) and (SMSNo[I] <= 313)) or (SMSNo[I] = 323) or ((SMSNo[I] >= 321) and (SMSNo[I] <= 322)) Or
       ((SMSNo[I] >= 410) and (SMSNo[I] <= 413)) or ((SMSNo[I] >= 421) and (SMSNo[I] <= 422)) Or
       ((SMSNo[I] >= 510) and (SMSNo[I] <= 513)) or ((SMSNo[I] >= 521) and (SMSNo[I] <= 522)) or
       ((SMSNo[I] >= 610) and (SMSNo[I] <= 613)) Or ((SMSNo[I] >= 621) and (SMSNo[I] <= 622)) or
			 ((SMSNo[I] >= 327) and (SMSNo[I] <= 329)) Or ((SMSNo[I] >= 427) and (SMSNo[I] <= 429)) or //�Ҹ꿹�����ϸ���
			 ((SMSNo[I] >= 527) and (SMSNo[I] <= 529)) Or ((SMSNo[I] >= 627) and (SMSNo[I] <= 629)) then //�Ҹ꿹�����ϸ���
    begin
			SMSCtrls[I].edtTime := edtSMST300;
    end else
      SMSCtrls[I].edtTime := TcxCustomTextEdit(GetComponent('edtSMST', SMSNo[I]));
  end;

  for I := 0 to Length(SMSCtrls) - 1 do
  begin
    if Assigned(SMSCtrls[I].chkSelect) then
      SMSCtrls[I].chkSelect.Checked := False;

    if Assigned(SMSCtrls[I].mmoSms) then
      SMSCtrls[I].mmoSms.Clear;
      
    if Assigned(SMSCtrls[I].chkReturn) then
		begin
			SMSCtrls[I].chkReturn.Checked := False;
      chkSMSRClick(SMSCtrls[I].chkReturn);
    end;
    
    if Assigned(SMSCtrls[I].lblSMS) then
      SMSCtrls[I].lblSMS.Caption := '0 Byte';
  end;
  rb1101.Checked := True;
  rb2101.Checked := True;
  rb2001.Checked := True;

  Panel7.Tag := 99;
	edtSMSO1130.Value := 20;

  edtSMSO1310.Text := '2';
  edtSMSO1312.Text := '2';
  edtSMSO2312.Value := 3;
  edtSMSO1313.Text := '2';
  edtSMSO2313.Value := 7;

	edtSMSO1327.Value := 1;
	edtSMSO1328.Value := 15;
	edtSMSO1329.Value := 30;
	edtSMSO1427.Value := 1;
	edtSMSO1428.Value := 15;
	edtSMSO1429.Value := 30;
	edtSMSO1527.Value := 1;
	edtSMSO1528.Value := 15;
	edtSMSO1529.Value := 30;

  edtSMST330.ItemIndex := 0;
  edtSMSO1330.Value := 3;
  edtSMSO2330.Value := 3;

  edtSMSO2312.Enabled := False;
  edtSMSO2313.Enabled := False;

  //-----------------
  edtSMSO1410.Text := '2';
  edtSMSO1412.Text := '2';
  edtSMSO2412.Value := 3;
  edtSMSO1413.Text := '2';
  edtSMSO2413.Value := 7;
  edtSMSO2412.Enabled := False;
  edtSMSO2413.Enabled := False;
  //-----------------
  edtSMSO1510.Text := '2';
  edtSMSO1512.Text := '2';
  edtSMSO2512.Value := 3;
  edtSMSO1513.Text := '2';
  edtSMSO2513.Value := 7;
  edtSMSO2512.Enabled := False;
  edtSMSO2513.Enabled := False;
  //-----------------
	edtSMSO1610.Text := '2';
	edtSMSO1612.Text := '2';
  edtSMSO2612.Value := 3;
	edtSMSO1613.Text := '2';
  edtSMSO2613.Value := 7;
	edtSMSO2612.Enabled := False;
  edtSMSO2613.Enabled := False;
  Panel7.Tag := 0;
end;

{*==============================================================================
 ������ ��û��
==============================================================================*}

procedure TFrm_CMP.RequestData(AData: string);
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
    Frm_Flash.Hide;
    Screen.Cursor := crDefault;
		StrList.Free
  end;
end;

procedure TFrm_CMP.RequestDataSmsList;
var
  ls_TxLoad, msg: string;
begin
  proc_reset_sms;

  if GT_SEL_BRNO.GUBUN <> '1' then
  begin
    GMessagebox(PChar('SMS ������ [���� ��� ���缱�� �޴�����] ���縦 �����ϼž� �մϴ�.'), CDMSE);
    Exit;
  end;

  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementEtc(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  ���翡�� ȸ����� �������� �̰�(�ݼ��� ����)�� ���� ���� �ʾҽ��ϴ�.'
        + #13#10'(�ش� ��������ڿ��� �������� �̰�[ȸ��>�������>�󼼼���]�� ��û�ٶ��ϴ�.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSE);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('�ڵ�SMS����') then Exit;

	proc_Get_CustRankList;
	proc_Get_CustRankMileList;

  try
    ls_TxLoad := GTx_UnitXmlLoad('C045N3.xml');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'SMSL0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ActionStr', 'SELECT', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'BranchStr', GT_SEL_BRNO.BrNo, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'realStr', '', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'tomorrowStr', '', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ItemStr', '', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'fin_duplicate_yn="finDupYnStr"', 'fin_duplicate_yn="finDupYnStr" wk_name_hidden_yn ="hiddenstr"' , [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'finDupYnStr', '', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'hiddenstr', '', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ellipsis_tomorrow', '', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'dupYnStr', '', [rfReplaceAll]);

		RequestData(ls_TxLoad);
	except
  end;
end;

{*==============================================================================
 ������ �����
==============================================================================*}
procedure TFrm_CMP.UpdateDataSms;
var
	I: Integer;
  ls_TxLoad, msg: string;
  realStr, tomoStr, ItemStr, hiddenstr : string;
  IsDuplFin, IsDuplEtc, IsEllipsisTomorrow: Boolean;
	fls : TStringList;
	sResult, sTmp, sTmp2, sTmp3, sCaption : String;  
	iTmp, iRow : integer;
	TmpMemo : TcxMemo;
	TmpcxCheckBox : TcxCheckBox;
	bGrid : Boolean;
begin
	if GT_SEL_BRNO.GUBUN <> '1' then
  begin
		GMessagebox(PChar('SMS ������ ���縦 �����ϼž� �մϴ�.'), CDMSE);
    Exit;
  end;

  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementEtc(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  ���翡�� ȸ����� �������� �̰�(�ݼ��� ����)�� ���� ���� �ʾҽ��ϴ�.'
        + #13#10'(�ش� ��������ڿ��� �������� �̰�[ȸ��>�������>�󼼼���]�� ��û�ٶ��ϴ�.)';
		GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSE);
    Exit;
  end;

  if not CheckSmsData then
		Exit;

	try
		Screen.Cursor := crHourGlass;

		realStr := IfThen(chkSMSBlockReal.Checked, 'y', 'n');
    tomoStr := IfThen(chkSMSBlockTomorrow.Checked, 'y', 'n');
		hiddenstr := IfThen(chkWkname_Hidden.Checked, 'y', 'n');
		ItemStr := '';
		for I := 0 to Length(SMSCtrls) - 1 do
		begin
			case SMSCtrls[I].MsgNo of
				315..318, 415..418, 515..518, 615..618, 325,326, 425,426, 525,526, 625,626, 700, 701, 720..729, 702, 703, 740..749 :
					begin
						// �����к� �޽����� ������ kind ��ȣ���� ó����.
						
          end;
        else
					begin
						sResult := func_EucKr_CheckSMS(GetSmsData(SMSCtrls[I]));
						if sResult <> '' then
						begin
							sTmp := '';
							sTmp2 := '';
							sTmp3 := '';
							bGrid := False;
							if SMSCtrls[I].MsgNo in [114..117, 110,121..127, 130] then
							begin 
								TmpcxCheckBox := TcxCheckBox(FindComponent('chkSMS' + IntToStr(SMSCtrls[I].MsgNo)));
								sCaption := TmpcxCheckBox.Caption;

								cxPageControl2.ActivePageIndex := 0;
								sTmp := '�ǽð�SMS1';

								GMessagebox(Format('         [%s] <<< ���ڿ���' + #13#10 + #13#10 + '�� ���ڴ� �ùٸ� ǥ�Ⱑ �ƴմϴ�. '  + #13#10
									+ '��Ȯ�� �Է��Ͽ� �ֽʽÿ�. ' + #13#10 + #13#10
									+ '�����׸�%s : %s-%s %s', [sResult, sTmp3, sTmp, sTmp2, sCaption]), CDMSE);
							end else
							if (SMSCtrls[I].MsgNo in [210, 220, 131..133]) then
							begin 
								TmpcxCheckBox := TcxCheckBox(FindComponent('chkSMS' + IntToStr(SMSCtrls[I].MsgNo)));
								sCaption := TmpcxCheckBox.Caption;

								cxPageControl2.ActivePageIndex := 1;
								sTmp := '�ǽð�SMS2';

								GMessagebox(Format('         [%s] <<< ���ڿ���' + #13#10 + #13#10 + '�� ���ڴ� �ùٸ� ǥ�Ⱑ �ƴմϴ�. '  + #13#10
									+ '��Ȯ�� �Է��Ͽ� �ֽʽÿ�.' + #13#10 + #13#10
									+ '�����׸�%s : %s-%s %s', [sResult, sTmp3, sTmp, sTmp2, sCaption]), CDMSE);
							end else
							if (SMSCtrls[I].MsgNo = 250) or (SMSCtrls[I].MsgNo = 251) or (SMSCtrls[I].MsgNo = 252) or
								 (SMSCtrls[I].MsgNo = 253) or (SMSCtrls[I].MsgNo = 254) or (SMSCtrls[I].MsgNo = 255) or
								 (SMSCtrls[I].MsgNo = 256) or (SMSCtrls[I].MsgNo = 257) or (SMSCtrls[I].MsgNo = 257) or
								 (SMSCtrls[I].MsgNo = 258) or (SMSCtrls[I].MsgNo = 259) or (SMSCtrls[I].MsgNo = 260) or
								 (SMSCtrls[I].MsgNo = 261) or (SMSCtrls[I].MsgNo = 262) or (SMSCtrls[I].MsgNo = 263) or
								 (SMSCtrls[I].MsgNo = 264) or (SMSCtrls[I].MsgNo = 265) or (SMSCtrls[I].MsgNo = 267) or
								 (SMSCtrls[I].MsgNo = 268) or (SMSCtrls[I].MsgNo = 269) then//10.��������� ���� ��Ҵ� ���ڼ�������(��������û) 20161123 KHS
							begin 
								sCaption := '������� ������ ����';
								cxPageControl2.ActivePageIndex := 1;

								iRow := cxView.DataController.FindRecordIndexByText(0, 5, IntToStr(SMSCtrls[I].MsgNo), True, False, True);
								if iRow > -1 then
								begin
									sTmp3 := '(' + cxView.DataController.Values[iRow, 0] + '-' + cxView.DataController.Values[iRow, 2] + ')';
								end;	
								sTmp := '�ǽð�SMS2';

								GMessagebox(Format('         [%s] <<< ���ڿ���' + #13#10 + #13#10 + '�� ���ڴ� �ùٸ� ǥ�Ⱑ �ƴմϴ�. '  + #13#10
									+ '��Ȯ�� �Է��Ͽ� �ֽʽÿ�.' + #13#10 + #13#10
									+ '�����׸�%s : %s-%s %s', [sResult, sTmp3, sTmp, sTmp2, sCaption]), CDMSE);

								if iRow > -1 then
								begin
									cxGrid.SetFocus;
									cxView.DataController.FocusedRecordIndex := iRow;
								end;	
								bGrid := True;
							end else
//							if SMSCtrls[I].MsgNo in [311, 315, 312, 316, 313, 317, 310, 318, 321, 325, 322, 326] then
							if (SMSCtrls[I].MsgNo = 311) or (SMSCtrls[I].MsgNo = 312) or
								 (SMSCtrls[I].MsgNo = 313) or (SMSCtrls[I].MsgNo = 310) or
								 (SMSCtrls[I].MsgNo = 321) or (SMSCtrls[I].MsgNo = 322) then
							begin 
								TmpcxCheckBox := TcxCheckBox(FindComponent('chkSMS' + IntToStr(SMSCtrls[I].MsgNo)));
								sCaption := '(' + TmpcxCheckBox.Caption + ')';

								cxPageControl2.ActivePageIndex := 2;
								sTmp := '������SMS';
								cxPageControl3.ActivePageIndex := 0;
								sTmp2 := '���ΰ� ������SMS';

								GMessagebox(Format('         [%s] <<< ���ڿ���' + #13#10 + #13#10 + '�� ���ڴ� �ùٸ� ǥ�Ⱑ �ƴմϴ�. '  + #13#10
									+ '��Ȯ�� �Է��Ͽ� �ֽʽÿ�.' + #13#10 + #13#10
									+ '�����׸�%s : %s-%s', [sResult, sCaption, sTmp, sTmp2 ]), CDMSE);

							end else
//							if SMSCtrls[I].MsgNo in [411, 415, 412, 416, 413, 417, 410, 418, 421, 425, 422, 426] then
							if (SMSCtrls[I].MsgNo = 411) or (SMSCtrls[I].MsgNo = 412) or
								 (SMSCtrls[I].MsgNo = 413) or (SMSCtrls[I].MsgNo = 410) or
								 (SMSCtrls[I].MsgNo = 421) or (SMSCtrls[I].MsgNo = 422) then
							begin 
								TmpcxCheckBox := TcxCheckBox(FindComponent('chkSMS' + IntToStr(SMSCtrls[I].MsgNo)));
								sCaption := '(' + TmpcxCheckBox.Caption + ')';

								cxPageControl2.ActivePageIndex := 2;
								sTmp := '������SMS';
								cxPageControl3.ActivePageIndex := 1;
								sTmp2 := '-���Ұ� ������SMS'; 

								GMessagebox(Format('         [%s] <<< ���ڿ���' + #13#10 + #13#10 + '�� ���ڴ� �ùٸ� ǥ�Ⱑ �ƴմϴ�. '  + #13#10
									+ '��Ȯ�� �Է��Ͽ� �ֽʽÿ�.' + #13#10 + #13#10
									+ '�����׸�%s : %s-%s', [sResult, sCaption, sTmp, sTmp2 ]), CDMSE);

							end else
							if (SMSCtrls[I].MsgNo = 511) or (SMSCtrls[I].MsgNo = 512) or
								 (SMSCtrls[I].MsgNo = 513) or (SMSCtrls[I].MsgNo = 510) or
								 (SMSCtrls[I].MsgNo = 521) or (SMSCtrls[I].MsgNo = 522) then
							begin 
								TmpcxCheckBox := TcxCheckBox(FindComponent('chkSMS' + IntToStr(SMSCtrls[I].MsgNo)));
								sCaption := '(' + TmpcxCheckBox.Caption + ')';

								cxPageControl2.ActivePageIndex := 2;
								sTmp := '������SMS';
								cxPageControl3.ActivePageIndex := 2;
								sTmp2 := '���ΰ� ������SMS'; 

								GMessagebox(Format('         [%s] <<< ���ڿ���' + #13#10 + #13#10 + '�� ���ڴ� �ùٸ� ǥ�Ⱑ �ƴմϴ�. '  + #13#10
									+ '��Ȯ�� �Է��Ͽ� �ֽʽÿ�.' + #13#10 + #13#10
									+ '�����׸�%s : %s-%s', [sResult, sCaption, sTmp, sTmp2 ]), CDMSE);

							end else
							if (SMSCtrls[I].MsgNo = 611) or (SMSCtrls[I].MsgNo = 612) or
								 (SMSCtrls[I].MsgNo = 613) or (SMSCtrls[I].MsgNo = 610) or
								 (SMSCtrls[I].MsgNo = 621) or (SMSCtrls[I].MsgNo = 622) then
							begin 
								TmpcxCheckBox := TcxCheckBox(FindComponent('chkSMS' + IntToStr(SMSCtrls[I].MsgNo)));
								sCaption := '(' + TmpcxCheckBox.Caption + ')';

								cxPageControl2.ActivePageIndex := 2;
								sTmp := '������SMS';
								cxPageControl3.ActivePageIndex := 3;
								sTmp2 := '�ҷ��� ������SMS'; 

								GMessagebox(Format('         [%s] <<< ���ڿ���' + #13#10 + #13#10 + '�� ���ڴ� �ùٸ� ǥ�Ⱑ �ƴմϴ�. '  + #13#10
									+ '��Ȯ�� �Է��Ͽ� �ֽʽÿ�.' + #13#10 + #13#10
									+ '�����׸�%s : %s-%s', [sResult, sCaption, sTmp, sTmp2 ]), CDMSE);

							end else
							if SMSCtrls[I].MsgNo = 330 then
							begin 
								TmpcxCheckBox := TcxCheckBox(FindComponent('chkSMS' + IntToStr(SMSCtrls[I].MsgNo)));
								sCaption := '(' + TmpcxCheckBox.Caption + ')';

								cxPageControl2.ActivePageIndex := 2;
								sTmp := '������SMS';
								cxPageControl3.ActivePageIndex := 4;
								sTmp2 := '��翡�� ������SMS'; 

								GMessagebox(Format('         [%s] <<< ���ڿ���' + #13#10 + #13#10 + '�� ���ڴ� �ùٸ� ǥ�Ⱑ �ƴմϴ�. '  + #13#10
									+ '��Ȯ�� �Է��Ͽ� �ֽʽÿ�.' + #13#10 + #13#10
									+ '�����׸�%s : %s-%s', [sResult, sCaption, sTmp, sTmp2 ]), CDMSE);

							end else
							if (SMSCtrls[I].MsgNo >= 710) and (SMSCtrls[I].MsgNo <= 729) then
							begin
								sCaption := '';
								cxPageControl2.ActivePageIndex := 3;
								sTmp := '������SMS-���ΰ���޺�';
								cxPageControl4.ActivePageIndex := 0;
								sTmp2 := '�̿�Ƚ�������ڼ���'; 

								iRow := cxGridCustSMSList.DataController.FindRecordIndexByText(0, 4, IntToStr(SMSCtrls[I].MsgNo), True, False, True);
								if iRow > -1 then
								begin
									sTmp3 := '(' + cxGridCustSMSList.DataController.Values[iRow, 0] + ')';
								end;	

								GMessagebox(Format('         [%s] <<< ���ڿ���' + #13#10 + #13#10 + '�� ���ڴ� �ùٸ� ǥ�Ⱑ �ƴմϴ�. '  + #13#10
									+ '��Ȯ�� �Է��Ͽ� �ֽʽÿ�.' + #13#10 + #13#10
									+ '�����׸�%s : %s-%s %s', [sResult, sTmp3, sTmp, sTmp2, sCaption]), CDMSE);

								if iRow > -1 then
								begin
									cxGrid1.SetFocus;
									cxGridCustSMSList.DataController.FocusedRecordIndex := iRow;
								end;	

								bGrid := True;
							end else
							if (SMSCtrls[I].MsgNo + 10 >= 710) and (SMSCtrls[I].MsgNo + 10 <= 729) then
							begin
								sCaption := '';
								cxPageControl2.ActivePageIndex := 3;
								sTmp := '������SMS-���ΰ���޺�';
								cxPageControl4.ActivePageIndex := 0;
								sTmp2 := '�̿�Ƚ�������ڼ���'; 

								iRow := cxGridCustSMSList.DataController.FindRecordIndexByText(0, 4, IntToStr(SMSCtrls[I].MsgNo + 10), True, False, True);
								if iRow > -1 then
								begin
									sTmp3 := '(' + cxGridCustSMSList.DataController.Values[iRow, 0] + ')';
								end;	

								GMessagebox(Format('         [%s] <<< ���ڿ���' + #13#10 + #13#10 + '�� ���ڴ� �ùٸ� ǥ�Ⱑ �ƴմϴ�. '  + #13#10
									+ '��Ȯ�� �Է��Ͽ� �ֽʽÿ�.' + #13#10 + #13#10
									+ '�����׸�%s : %s-%s %s', [sResult, sTmp3, sTmp, sTmp2, sCaption]), CDMSE);

								if iRow > -1 then
								begin
									cxGrid1.SetFocus;
									cxGridCustSMSList.DataController.FocusedRecordIndex := iRow;
								end;	

								bGrid := True;
							end else
							if (SMSCtrls[I].MsgNo >= 730) and (SMSCtrls[I].MsgNo <= 749) then
							begin
								sCaption := '';
								cxPageControl2.ActivePageIndex := 3;
								cxPageControl4.ActivePageIndex := 1;
								sTmp := '������SMS-���ΰ���޺�';
								sTmp2 := '���ϸ��������ڼ���'; 

								iRow := cxGridCustMileSMSList.DataController.FindRecordIndexByText(0, 4, IntToStr(SMSCtrls[I].MsgNo), True, False, True);
								if iRow > -1 then
								begin
									sTmp3 := '(' + cxGridCustMileSMSList.DataController.Values[iRow, 0] + ')';
								end;	
								
								GMessagebox(Format('         [%s] <<< ���ڿ���' + #13#10 + #13#10 + '�� ���ڴ� �ùٸ� ǥ�Ⱑ �ƴմϴ�. '  + #13#10
									+ '��Ȯ�� �Է��Ͽ� �ֽʽÿ�.' + #13#10 + #13#10
									+ '�����׸�%s : %s-%s %s', [sResult, sTmp3, sTmp, sTmp2, sCaption]), CDMSE);

								if iRow > -1 then
								begin
									cxGrid3.SetFocus;
									cxGridCustMileSMSList.DataController.FocusedRecordIndex := iRow;
								end;	
								bGrid := True;
							end;


							if not bGrid then //�׸��尡 �ƴ� �޸����� ��츸 
							begin
								TmpMemo := TcxMemo(FindComponent('mmoSMS' + IntToStr(SMSCtrls[I].MsgNo)));
								iTmp := Pos(sResult, TmpMemo.Text);
								TmpMemo.SelStart := iTmp-1;	
								TmpMemo.SelLength := 1;	
								TmpMemo.SetFocus;
							end;
							
							Screen.Cursor := crDefault;
							Exit;
						end;   

						ItemStr := ItemStr + GetSmsData(SMSCtrls[I]);
					end;
			end;
    end;

		Screen.Cursor := crDefault;
		
    IsDuplFin := cbbSmsDuplOption.ItemIndex in [0, 1];
    IsDuplEtc := cbbSmsDuplOption.ItemIndex in [0, 2];

		IsEllipsisTomorrow := chkSMSPUB390.Checked;   // ���� 80byte �ʰ��� �߸��� ���κ� ".." ó�� --> [y, n]

		ls_TxLoad := GTx_UnitXmlLoad('C045N3.xml');
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'SMSL0002', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ActionStr', 'UPDATE', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'BranchStr', GT_SEL_BRNO.BrNo, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'realStr', realStr, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'tomorrowStr', tomoStr, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'fin_duplicate_yn="finDupYnStr"', 'fin_duplicate_yn="finDupYnStr" wk_name_hidden_yn ="hiddenstr"' , [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'hiddenstr', hiddenstr, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'finDupYnStr', IfThen(IsDuplFin, 'y', 'n'), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'dupYnStr', IfThen(IsDuplEtc, 'y', 'n'), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ellipsis_tomorrow', IfThen(IsEllipsisTomorrow, 'y', 'n'), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ItemStr', ItemStr, [rfReplaceAll]);

		{// ��û���� Ȯ��.  2011.07.21
    fls := TStringList.Create;
    fls.Text := ls_TxLoad;
    fls.SaveToFile('d:\xml_sms_send_20110728.xml');
    FreeAndNil(fls);  }
		RequestData(ls_TxLoad);
		Screen.Cursor := crDefault;
	except on E: Exception do
		begin
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
	end;
end;

{*==============================================================================
 ������ ���ź�
==============================================================================*}
procedure TFrm_CMP.ResponseDataSmsList(AXmlStr: WideString);
var
  I: Integer;
  xdom: msDomDocument;
	ResultList: IXMLDomNodeList;
  MsgNo: Integer;
	SMSUse, SMSFrom, SendTime, Option1, Option2, SmsMsg, SmsMsg2: string;
	IsDuplFin, IsDuplEtc, IsEllipsisTomorrow : Boolean;
  //fle : TStringList;
begin
	xdom := ComsDomDocument.Create;
	if not xdom.loadXML(AXmlStr) then begin
    xdom := Nil;
    Exit;
	end;
  try
    //fle := TStringList.Create;
    //fle.Text := AXmlStr;
    //fle.SaveToFile('d:\xml_recive_20110719.txt');

		ResultList := xdom.documentElement.selectNodes('/cdms/Service/Response');

    if ResultList.length >0 then
    begin
			chkSMSBlockReal.Checked := (ResultList[0].attributes.getNamedItem('sms_block_real').text = 'y');
			chkSMSBlockTomorrow.Checked := (ResultList[0].attributes.getNamedItem('sms_block_tomorrow').text = 'y');
			chkWkname_Hidden.Checked := (ResultList[0].attributes.getNamedItem('wk_name_hidden_yn').text = 'y');
      IsDuplFin := (ResultList[0].attributes.getNamedItem('fin_duplicate_yn').text = 'y');
      IsDuplEtc := (ResultList[0].attributes.getNamedItem('duplicate_yn').text = 'y');
      IsEllipsisTomorrow := (ResultList[0].attributes.getNamedItem('sms_ellipsis_tomorrow_yn').text = 'y');   // 2011.07.19

      if IsDuplFin and IsDuplEtc then
        cbbSmsDuplOption.ItemIndex := 0
      else if IsDuplFin and not IsDuplEtc then
        cbbSmsDuplOption.ItemIndex := 1
      else if not IsDuplFin and IsDuplEtc then
        cbbSmsDuplOption.ItemIndex := 2
			else if not IsDuplFin and not IsDuplEtc then
				cbbSmsDuplOption.ItemIndex := 3
      ;

			if IsEllipsisTomorrow then       // ���� 80byte �ʰ��� �߸��� ���κ� ".." ó�� --> y, n
				chkSMSPUB390.Checked := True;

    end;

    ResultList := xdom.documentElement.selectNodes('/cdms/Service/Response/Item');
		proc_Get_CustRankList;     //�̿�Ƚ���� ����� �ҷ�����
		proc_Get_CustRankMileList; //���ϸ����� ����� �ҷ�����
		for I := 0 to ResultList.length - 1 do
    begin
			MsgNo     := StrToIntDef(ResultList[I].attributes.getNamedItem('kind').text, -1);
      if MsgNo <= 0 then
        Continue;
      SMSUse    := LowerCase(ResultList[I].attributes.getNamedItem('use').text);
      SmsFrom   := ResultList[I].attributes.getNamedItem('from').text;
			if SMSFrom = '' then
				SMSFrom := '0';
			SendTime  := ResultList[I].attributes.getNamedItem('send_time').text;
			Option1   := ResultList[I].attributes.getNamedItem('Option1').text;
      Option2   := ResultList[I].attributes.getNamedItem('Option2').text;
      //SmsMsg    := ResultList[I].text;

			// �㳯 ������ SMS �б�. 2011.07.19
			SmsMsg    := ResultList[I].selectNodes('msg1').item[0].text;
      SmsMsg2   := ResultList[I].selectNodes('msg2').item[0].text;

      if MsgNo = 127 then
      begin
				edtSMSR128.Text := Option1;
				if Copy(Option2,1,1) = '1' then cxCheckBox2.Checked := True
        else if Copy(Option2,1,1) = '0' then cxCheckBox2.Checked := False
				else cxCheckBox2.Checked := False;

        if Copy(Option2,2,1) = '1' then cxCheckBox3.Checked := True
        else if Copy(Option2,2,1) = '0' then cxCheckBox3.Checked := False
        else cxCheckBox3.Checked := False;

				if Copy(Option2,3,1) = '1' then cxCheckBox4.Checked := True
        else if Copy(Option2,3,1) = '0' then cxCheckBox4.Checked := False
        else cxCheckBox4.Checked := False;

        if Copy(Option2,4,1) = '1' then cxCheckBox5.Checked := True
        else if Copy(Option2,4,1) = '0' then cxCheckBox5.Checked := False
        else cxCheckBox5.Checked := False;

        if Copy(Option2,5,1) = '1' then cxCheckBox6.Checked := True
        else if Copy(Option2,5,1) = '0' then cxCheckBox6.Checked := False
        else cxCheckBox6.Checked := False;

        if Copy(Option2,6,1) = '1' then cxCheckBox7.Checked := True
        else if Copy(Option2,6,1) = '0' then cxCheckBox7.Checked := False
				else cxCheckBox7.Checked := False;
      end;

      Panel7.Tag := 99;
			if (MsgNo <> 140) and (MsgNo <> 141) then
  			DisplaySms(MsgNo, SMSUse, SMSFrom, SendTime, Option1, Option2, SmsMsg, SmsMsg2);

      Panel7.Tag := 0;
		end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_CMP.ResultDataSms(AXmlStr: WideString);
begin
  GMessagebox('���� �Ǿ����ϴ�.', CDMSI);
end;

procedure TFrm_CMP.DisplaySms(AMsgNo: Integer; AUse, AFrom, ASendtime, AOption1, AOption2, AMessage: string; AMessage2: string = '');
var
  I: Integer;
	SMSRec: TSMSInfoRec;
begin
	for I := 0 to Length(SMSCtrls) - 1 do
  begin
		if SMSCtrls[I].MsgNo = AMsgNo then
    begin
			SMSRec := SMSCtrls[I];
      Break;
    end;
  end;

	if not Assigned(SMSRec.mmoSms) then
	begin
		DisplaySmsGrid(SMSRec, AMsgNo, AUse, AFrom, ASendtime, AOption1, AMessage, AMessage2)
	end	else
  if Assigned(SMSRec.edtOption1) or Assigned(SMSRec.edtOption2) or Assigned(SMSRec.edtTime) then
		DisplaySmsOption(SMSRec, AMsgNo, AUse, AFrom, ASendtime, AOption1, AOption2, AMessage, AMessage2)
	else
		DisplaySmsEdit(SMSRec, AMsgNo, AUse, AFrom, AMessage, AMessage2);
end;

procedure TFrm_CMP.DisplaySmsEdit(ARec: TSMSInfoRec; AMsgNo: Integer; AUse, AFrom, AMessage: string; AMessage2: string = '');
var
  chr: Char;
  i : Integer;
begin

	case ARec.MsgNo of
		315..318, 415..418, 515..518, 615..618, 325,326, 425,426, 525,526, 625,626, 700, 701, 720..729, 702, 703, 740..749 :
			begin
				ARec.mmoSms.Text := AMessage;
			end;
    else
			begin
//				if ARec.MsgNo <> 114 then
				ARec.chkSelect.Checked := (AUse = 'y');
				ARec.mmoSms.Text := AMessage;
				chr := Char(0);
				mmoSMSKeyPress(ARec.mmoSms, chr);
        ARec.edtReturn.Visible := True;
        ARec.cbReturn.Visible := False;
				if AFrom = '0' then
        begin
					ARec.edtReturn.Text := '������ǥ��ȣ';
				end
        else if AFrom = '1' then
        begin
          ARec.edtReturn.Text := '��Ȳ�ǹ�ȣ';
        end
        else if AFrom = '2' then
        begin
					ARec.edtReturn.Text := '����ڵ�����ȣ';
        end
				else if AFrom = '3' then
        begin
          ARec.edtReturn.Text := '����ȣ';
        end
        else
        begin
          ARec.edtReturn.Visible := False;
          ARec.chkReturn.Checked := True;
          ARec.cbReturn.Visible := True;
          ARec.cbReturn.ItemIndex := ARec.cbReturn.Properties.Items.IndexOf(AFrom);
          if ARec.cbReturn.ItemIndex < 0 then ARec.cbReturn.ItemIndex := 0;
        end;

        if Assigned(ARec.edtReturn) then
          SetSMSCheckedRadio(ARec.edtReturn.Tag, ARec.edtReturn.Text);

        // �������� ���� ���� ���� ������.  2011.07.19
        if Length(Trim(AMessage2)) > 0 then
        begin
          // ������SMS ������ 2�ܰ� ���ӹ��� ã��.
          if RightStr(IntToStr(AMsgNo), 2) = '10' then
          begin
            for i := 0 to Length(SMSCtrls) - 1 do
            begin
              if (SMSCtrls[i].MsgNo = (ARec.MsgNo + 8)) then
              begin
                SMSCtrls[i].mmoSms.Text := AMessage2;
                Break;
              end;
            end;
          end else
          begin
            for i := 0 to Length(SMSCtrls) - 1 do
            begin
              if (SMSCtrls[i].MsgNo = (ARec.MsgNo + 4)) then
              begin
                SMSCtrls[i].mmoSms.Text := AMessage2;
                Break;
              end;
            end;
          end;
  				chr := Char(0);
	  			mmoSMSKeyPress(SMSCtrls[i].mmoSms, chr);
        end;
      end;
  end;
end;

procedure TFrm_CMP.DisplaySmsGrid(ARec: TSMSInfoRec; AMsgNo: Integer; AUse, AFrom, ASendtime, AOption1, AMessage: string; AMessage2: string = '');
var
	Row, iRow: Integer;
begin
  if AMessage2 = 'Paste' then
  begin
  	if ( (AMsgNo >= 720) and (AMsgNo <= 729) ) Or
       ( (AMsgNo >= 740) and (AMsgNo <= 749) ) then
  	begin
  		Row := cxGridCustSMSList.DataController.FindRecordIndexByText(0, 4, IntToStr(AMsgNo), True, False, True);
  		if Row > -1 then
  		begin
  			AMessage := RemoveAll(AMessage, #13);
  			AMessage := RemoveAll(AMessage, #10);
  			cxGridCustSMSList.DataController.Values[Row, 2] := AMessage;
  			cxGridCustSMSList.DataController.Values[Row, 3] := Length(AnsiString(AMessage));
  		end else
    end;
  end else
	if ( (AMsgNo >= 250) and (AMsgNo <= 269) ) Or (AMsgNo = 200)  then
	begin
		if AFrom = '0' then
    begin
			ARec.edtReturn.Text := '������ǥ��ȣ';
		end
    else if AFrom = '1' then
    begin
      ARec.edtReturn.Text := '��Ȳ�ǹ�ȣ';
    end
    else if AFrom = '2' then
    begin
			ARec.edtReturn.Text := '����ڵ�����ȣ';
    end
		else if AFrom = '3' then
    begin
      ARec.edtReturn.Text := '����ȣ';
    end
    else
    begin
      ARec.edtReturn.Visible := False;
      ARec.chkReturn.Checked := True;
      ARec.cbReturn.Visible := True;
      ARec.cbReturn.ItemIndex := ARec.cbReturn.Properties.Items.IndexOf(AFrom);
      if ARec.cbReturn.ItemIndex < 0 then ARec.cbReturn.ItemIndex := 0;
    end;

		Row := cxView.DataController.FindRecordIndexByText(0, 5, IntToStr(AMsgNo), True, False, True);
		if Row > -1 then
		begin
			cxView.DataController.Values[Row, 1] := (AUse = 'y');
			AMessage := RemoveAll(AMessage, #13);
			AMessage := RemoveAll(AMessage, #10);
			cxView.DataController.Values[Row, 3] := AMessage;
			cxView.DataController.Values[Row, 4] := Length(AnsiString(AMessage));
		end	else
		begin
			if Assigned(ARec.chkSelect) then
				ARec.chkSelect.Checked := (AUse = 'y');

			if Assigned(ARec.edtReturn) then
				SetSMSCheckedRadio(ARec.edtReturn.Tag, ARec.edtReturn.Text);
		end;
	end else
	if (AMsgNo >= 710) and (AMsgNo <= 719) then
	begin
    case StrToIntDef(ASendtime, -1) of
      13 : edtSMST700.Text := '����1��';
      14 : edtSMST700.Text := '����2��';
      16 : edtSMST700.Text := '����4��';
      18 : edtSMST700.Text := '����6��';
      19 : edtSMST700.Text := '����7��';
      else
        edtSMST700.ItemIndex := 0;
    end;

		if AFrom = '0' then
    begin
			ARec.edtReturn.Text := '������ǥ��ȣ';
		end
    else if AFrom = '1' then
    begin
      ARec.edtReturn.Text := '��Ȳ�ǹ�ȣ';
    end
    else if AFrom = '2' then
    begin
			ARec.edtReturn.Text := '����ڵ�����ȣ';
    end
		else if AFrom = '3' then
    begin
      ARec.edtReturn.Text := '����ȣ';
    end
    else
    begin
      ARec.edtReturn.Visible := False;
      ARec.chkReturn.Checked := True;
      ARec.cbReturn.Visible := True;
      ARec.cbReturn.ItemIndex := ARec.cbReturn.Properties.Items.IndexOf(AFrom);
      if ARec.cbReturn.ItemIndex < 0 then ARec.cbReturn.ItemIndex := 0;
    end;

		chkSMS700.Checked := (AUse = 'y');
		Row := cxGridCustSMSList.DataController.FindRecordIndexByText(0, 4, IntToStr(AMsgNo), True, False, True);
		if Row > -1 then
		begin
			AMessage := RemoveAll(AMessage, #13);
			AMessage := RemoveAll(AMessage, #10);
			cxGridCustSMSList.DataController.Values[Row, 2] := AMessage;
			cxGridCustSMSList.DataController.Values[Row, 3] := Length(AnsiString(AMessage));
		end else
		begin
			if AOption1 <> '' then
			begin
				iRow := cxGridCustSMSList.DataController.AppendRecord;
				cxGridCustSMSList.DataController.Values[iRow, 0] := sCustRankNameList.Strings[StrToInt(AOption1)];
				cxGridCustSMSList.DataController.Values[iRow, 1] := 'ù��°';
				cxGridCustSMSList.DataController.Values[iRow, 2] := AMessage;
				cxGridCustSMSList.DataController.Values[iRow, 3] := Length(AnsiString(AMessage));
				if iRow = 0 then
					cxGridCustSMSList.DataController.Values[iRow, 4] := inttostr(710 + iRow)
				else
					cxGridCustSMSList.DataController.Values[iRow, 4] := inttostr(710 + (iRow div 2));

				iRow := cxGridCustSMSList.DataController.AppendRecord;
				cxGridCustSMSList.DataController.Values[iRow, 0] := sCustRankNameList.Strings[StrToInt(AOption1)];
				cxGridCustSMSList.DataController.Values[iRow, 1] := '�ι�°';
				cxGridCustSMSList.DataController.Values[iRow, 2] := AMessage2;
				cxGridCustSMSList.DataController.Values[iRow, 3] := Length(AnsiString(AMessage2));
				if iRow = 1 then
					cxGridCustSMSList.DataController.Values[iRow, 4] := inttostr(720 + iRow - 1)
				else
					cxGridCustSMSList.DataController.Values[iRow, 4] := inttostr(720 + (iRow div 2));
			end;
		end;
	end else
	if (AMsgNo >= 730) and (AMsgNo <= 739) then
	begin
    case StrToIntDef(ASendtime, -1) of
      13 : edtSMST700.Text := '����1��';
      14 : edtSMST700.Text := '����2��';
      16 : edtSMST700.Text := '����4��';
      18 : edtSMST700.Text := '����6��';
      19 : edtSMST700.Text := '����7��';
      else
        edtSMST700.ItemIndex := 0;
    end;

		if AFrom = '0' then
    begin
			ARec.edtReturn.Text := '������ǥ��ȣ';
		end
    else if AFrom = '1' then
    begin
      ARec.edtReturn.Text := '��Ȳ�ǹ�ȣ';
    end
    else if AFrom = '2' then
    begin
			ARec.edtReturn.Text := '����ڵ�����ȣ';
    end
		else if AFrom = '3' then
    begin
      ARec.edtReturn.Text := '����ȣ';
    end
    else
    begin
      ARec.edtReturn.Visible := False;
      ARec.chkReturn.Checked := True;
      ARec.cbReturn.Visible := True;
      ARec.cbReturn.ItemIndex := ARec.cbReturn.Properties.Items.IndexOf(AFrom);
      if ARec.cbReturn.ItemIndex < 0 then ARec.cbReturn.ItemIndex := 0;
    end;

		chkSMS702.Checked := (AUse = 'y');
		Row := cxGridCustMileSMSList.DataController.FindRecordIndexByText(0, 4, IntToStr(AMsgNo), True, False, True);
		if Row > -1 then
		begin
			AMessage := RemoveAll(AMessage, #13);
			AMessage := RemoveAll(AMessage, #10);
			cxGridCustMileSMSList.DataController.Values[Row, 2] := AMessage;
			cxGridCustMileSMSList.DataController.Values[Row, 3] := Length(AnsiString(AMessage));
		end else
		begin
			if AOption1 <> '' then
			begin
				iRow := cxGridCustMileSMSList.DataController.AppendRecord;
				cxGridCustMileSMSList.DataController.Values[iRow, 0] := sCustRankMileNameList.Strings[StrToInt(AOption1)];
				cxGridCustMileSMSList.DataController.Values[iRow, 1] := 'ù��°';
				cxGridCustMileSMSList.DataController.Values[iRow, 2] := AMessage;
				cxGridCustMileSMSList.DataController.Values[iRow, 3] := Length(AnsiString(AMessage));
				if iRow = 0 then
					cxGridCustMileSMSList.DataController.Values[iRow, 4] := inttostr(730 + iRow)
				else
					cxGridCustMileSMSList.DataController.Values[iRow, 4] := inttostr(730 + (iRow div 2));

				iRow := cxGridCustMileSMSList.DataController.AppendRecord;
				cxGridCustMileSMSList.DataController.Values[iRow, 0] := sCustRankMileNameList.Strings[StrToInt(AOption1)];
				cxGridCustMileSMSList.DataController.Values[iRow, 1] := '�ι�°';
				cxGridCustMileSMSList.DataController.Values[iRow, 2] := AMessage2;
				cxGridCustMileSMSList.DataController.Values[iRow, 3] := Length(AnsiString(AMessage2));
				if iRow = 1 then
					cxGridCustMileSMSList.DataController.Values[iRow, 4] := inttostr(740 + iRow - 1)
				else
					cxGridCustMileSMSList.DataController.Values[iRow, 4] := inttostr(740 + (iRow div 2));
			end;
		end;
	end;
end;

procedure TFrm_CMP.DisplaySmsOption(ARec: TSMSInfoRec; AMsgNo: Integer; AUse, AFrom, ASendtime,
  AOption1, AOption2, AMessage: string; AMessage2: string = '');
var
  chr: Char;
  i : Integer;
begin
  ARec.chkSelect.Tag := 1;
  ARec.chkSelect.Checked := (AUse = 'y');
  ARec.chkSelect.Tag := 0;
  ARec.mmoSms.Text := AMessage;
  chr := Char(0);
  mmoSMSKeyPress(ARec.mmoSms, chr);

  ARec.edtReturn.Visible := True;
  ARec.cbReturn.Visible := False;
  if AFrom = '0' then
  begin
    ARec.edtReturn.Text := '������ǥ��ȣ';
  end
  else if AFrom = '1' then
  begin
    ARec.edtReturn.Text := '��Ȳ�ǹ�ȣ';
  end
  else if AFrom = '2' then
  begin
    ARec.edtReturn.Text := '����ڵ�����ȣ';
  end
  else if AFrom = '3' then
  begin
    ARec.edtReturn.Text := '����ȣ';
	end
  else
  begin
    ARec.edtReturn.Visible := False;
    ARec.chkReturn.Checked := True;
    ARec.cbReturn.Visible := True;
    ARec.cbReturn.ItemIndex := ARec.cbReturn.Properties.Items.IndexOf(AFrom);
    if ARec.cbReturn.ItemIndex < 0 then ARec.cbReturn.ItemIndex := 0;
  end;

  case AMsgNo of
	130, 310, 410, 510, 610,
	327, 328, 329, 427, 428, 429, 527, 528, 529, 627, 628, 629: //�Ҹ긶�ϸ���
			ARec.edtOption1.Text := AOption1;
	311, 411, 511, 611:
			ARec.edtOption1.Text := '1';//AOption1;
  312, 412, 512, 612:
    begin
      ARec.edtOption1.Text := '2';//AOption1;
      ARec.edtOption2.Text := AOption2;
    end;
  313, 413, 513, 613:
    begin
			ARec.edtOption1.Text := AOption1;
      ARec.edtOption2.Text := AOption2;
    end;
  330:
    begin
      ARec.edtOption1.Text := AOption1;
      ARec.edtOption2.Text := AOption2;
    end;
  end;

  case AMsgNo of
  310..313, 410..413, 510..513, 610..613, 321,322, 421,422, 521,522, 621,622 :
    begin
      case StrToIntDef(ASendtime, -1) of
        13 : ARec.edtTime.Text := '����1��';
        14 : ARec.edtTime.Text := '����2��';
        16 : ARec.edtTime.Text := '����4��';
        18 : ARec.edtTime.Text := '����6��';
        19 : ARec.edtTime.Text := '����7��';
        else
          TcxCombobox(ARec.edtTime).ItemIndex := 0;
      end;
      // �������� ���� ���� ���� ������.  2011.07.19
      if Length(Trim(AMessage2)) > 0 then
      begin
        // ������SMS ������ 2�ܰ� ���ӹ��� ã��.
        if RightStr(IntToStr(AMsgNo), 2) = '10' then
        begin
          for i := 0 to Length(SMSCtrls) - 1 do
          begin
            if (SMSCtrls[i].MsgNo = (ARec.MsgNo + 8)) then
            begin
              SMSCtrls[i].mmoSms.Text := AMessage2;
							Break;
            end;
          end;
        end else
        begin
          for i := 0 to Length(SMSCtrls) - 1 do
          begin
            if (SMSCtrls[i].MsgNo = (ARec.MsgNo + 4)) then
            begin
              SMSCtrls[i].mmoSms.Text := AMessage2;
              Break;
            end;
          end;
        end;
        chr := Char(0);
        mmoSMSKeyPress(SMSCtrls[i].mmoSms, chr);
      end;
    end;
  330:
    begin
      case StrToIntDef(ASendtime, -1) of
        13 : ARec.edtTime.Text := '����1��';
        14 : ARec.edtTime.Text := '����2��';
        16 : ARec.edtTime.Text := '����4��';
        18 : ARec.edtTime.Text := '����6��';
        19 : ARec.edtTime.Text := '����7��';
        else
          TcxCombobox(ARec.edtTime).ItemIndex := 0;
      end;
    end;
  end;

  if Assigned(ARec.edtReturn) then
    SetSMSCheckedRadio(ARec.edtReturn.Tag, ARec.edtReturn.Text);
end;

procedure TFrm_CMP.MemoText(AMemo: TcxMemo; AValue: string);
var
  s, s1: widestring;
	ALabel : TLabel;
	iTmp : integer;
begin
	if AMemo.SelStart > 0 then
	begin
		if (AMemo.Tag in [110, 114]) and (AValue = '%�����ġ%') and (Pos('%��URL%',AMemo.Text) > 0) then
		begin
			AMemo.Text := StringReplace(AMemo.Text, '%��URL%', '%�����ġ%', [rfReplaceAll]);
		end
		else
		if (AMemo.Tag in [110, 114]) and (AValue = '%��URL%') and (Pos('%�����ġ%',AMemo.Text) > 0) then
		begin
			AMemo.Text := StringReplace(AMemo.Text, '%�����ġ%', '%��URL%', [rfReplaceAll]);
		end
		else
		if (AMemo.Tag in [117, 110, 114]) and (AValue = '%��URL%') and (Pos(AValue,AMemo.Text) > 0) then
		begin
			AMemo.Text := StringReplace(AMemo.Text, '%��URL%', '%��URL%', [rfReplaceAll]);
		end
{		else
		if (AMemo.Tag in [117, 110, 114]) and (AValue = '%��URL%') then
		begin
			s := AMemo.Text;
			s := Copy(s, 1, AMemo.SelStart);
			s1 := StringReplace(AMemo.Text, s, '', [rfReplaceAll]);
			AMemo.Text := s + ' ' + AValue + ' ' + s1;
		end  }
		else
		begin
			s := AMemo.Text;
			s := Copy(s, 1, AMemo.SelStart);
			s1 := StringReplace(AMemo.Text, s, '', [rfReplaceAll]);
			AMemo.Text := s + AValue + s1;
		end;
	end else   // �� �� ��
	begin
		if (AMemo.Tag in [110, 114]) and (AValue = '%�����ġ%') and (Pos('%��URL%',AMemo.Text) > 0) then
		begin
			AMemo.Text := StringReplace(AMemo.Text, '%��URL%', '%�����ġ%', [rfReplaceAll]);
		end
		else
		if (AMemo.Tag in [110, 114]) and (AValue = '%��URL%') and (Pos('%�����ġ%',AMemo.Text) > 0) then
		begin
			AMemo.Text := StringReplace(AMemo.Text, '%�����ġ%', '%��URL%', [rfReplaceAll]);
		end
		else
		if (AMemo.Tag in [117, 110, 114]) and (AValue = '%��URL%') and (Pos(AValue,AMemo.Text) > 0) then
		begin
			AMemo.Text := StringReplace(AMemo.Text, '%��URL%', '%��URL%', [rfReplaceAll]);
		end
{		else
		if (AMemo.Tag in [117, 110, 114]) and (AValue = '%��URL%') then
		begin
			s := AMemo.Text;
			s := Copy(s, 1, AMemo.SelStart);
			s1 := StringReplace(AMemo.Text, s, '', [rfReplaceAll]);
			AMemo.Text := s + AValue + ' ' + s1;
		end  }
		else
			AMemo.Text := AValue + AMemo.Text;
	end;
	if Length(AnsiString(AMemo.Text)) > 90 then
		AMemo.Text := Trim(Copy(AnsiString(AMemo.Text), 1, 90));


  ALabel := GetSMSLabel(AMemo.Tag);
  if Assigned(ALabel) then
	begin
		iTmp := GetSmsMemoLength(AnsiString(AMemo.Text));
		if Pos('%�����ġ%', AMemo.text) > 0 then iTmp := iTmp + 11 ;
		if Pos('%��URL%', AMemo.text) > 0 then iTmp := iTmp + 6 ;
		ALabel.Caption := IntToStr(iTmp) + ' Byte';
	end;

	AMemo.SelStart := length(AMemo.Text);
	AMemo.SetFocus;
end;

procedure TFrm_CMP.MemoText(ATag: Integer; AValue: string);
var
  Memo: TcxMemo;
begin
  Memo := GetSMSMemo(ATag);
  if Assigned(Memo) then
		MemoText(Memo, AValue);
end;

function TFrm_CMP.GetComponent(ABase: string; ATag: Integer): TComponent;
begin
  Result := GetComponent(Format('%s%d', [ABase, ATag]));
end;

function TFrm_CMP.GetComponent(AName: string): TComponent;
var
  I: Integer;
begin
  Result := nil;

  for I := 0 to ComponentCount - 1 do
  begin
    if Components[I].Name = AName then
    begin
      Result := Components[I];
      Exit;
    end;
  end;
end;

function TFrm_CMP.GetSMSCheckedRadio(ATag: Integer): TRadioButton;
var
  I: Integer;
begin
  Result := nil;

  for I := 0 to ComponentCount - 1 do
    if (Components[I] is TRadioButton) and (TRadioButton(Components[I]).Tag = ATag)
      and (TRadioButton(Components[I]).Checked) then
    begin
      Result := TRadioButton(Components[I]);
      Break;
    end;
end;

procedure TFrm_CMP.SetSMSCheckedRadio(ATag: Integer; AValue: string);
var
  I: Integer;
begin
  for I := 0 to ComponentCount - 1 do
    if (Components[I] is TRadioButton) and (TRadioButton(Components[I]).Tag = ATag)
      and (TRadioButton(Components[I]).Caption = AValue) then
    begin
      TRadioButton(Components[I]).Checked := True;
      Break;
    end;
end;

function TFrm_CMP.GetSMSEdit(ATag: Integer): TcxTextEdit;
var
  I: Integer;
begin
  Result := nil;

  for I := 0 to Length(SMSCtrls) - 1 do
    if SMSCtrls[I].MsgNo = ATag then
    begin
      Result := SMSctrls[I].edtReturn;
      Exit;
    end;
end;

function TFrm_CMP.GetSMSCB(ATag: Integer): TcxComBoBox;
var
  I: Integer;
begin
  Result := nil;

  for I := 0 to Length(SMSCtrls) - 1 do
    if SMSCtrls[I].MsgNo = ATag then
    begin
      Result := SMSctrls[I].cbReturn;
      Exit;
    end;
end;

function TFrm_CMP.GetSMSLabel(ATag: Integer): TLabel;
var
  I: Integer;
begin
  Result := nil;

  for I := 0 to Length(SMSCtrls) - 1 do
    if SMSCtrls[I].MsgNo = ATag then
    begin
      Result := SMSctrls[I].lblSMS;
      Exit;
    end;
end;

function TFrm_CMP.GetSMSMemo(ATag: Integer): TcxMemo;
var
  I: Integer;
begin
  Result := nil;

  for I := 0 to Length(SMSCtrls) - 1 do
    if SMSCtrls[I].MsgNo = ATag then
    begin
      Result := SMSctrls[I].mmoSms;
      Exit;
    end;
end;

function TFrm_CMP.GetReturnNum(ATag: Integer): string;
var
  ARadio: TRadioButton;
begin
  if ATag = 125 then
    Result := '����ȣ'
  else
    Result := '������ǥ��ȣ';
  ARadio := GetSMSCheckedRadio(ATag);
	if Assigned(ARadio) then
    Result := ARadio.Caption;
end;

function TFrm_CMP.GetReturnCheckBox(ATag: Integer): TcxCheckBox;
var
  I: Integer;
begin
  Result := nil;

  for I := 0 to Length(SMSCtrls) - 1 do
    if SMSCtrls[I].MsgNo = ATag then
    begin
      Result := SMSctrls[I].chkReturn;
      Exit;
    end;
end;

procedure TFrm_CMP.mmoAddWord(Sender: TObject);
begin
	MemoText(TcxButton(Sender).Tag, Format('%%%s%%', [TcxButton(Sender).Hint]));
end;

procedure TFrm_CMP.cxViewBranchCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  ABrNo: string;
begin
  ABrNo := cxViewBranch.ViewData.Records[ACellViewInfo.GridRecord.Index].Values[2];

  if TCK_USER_PER.CMP_BrchModify = '1' then
		ShowBranchWindow(ABrNo);
end;

procedure TFrm_CMP.cxViewBranchColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	AIndex := AColumn.Index;
end;

procedure TFrm_CMP.cxViewBranchDataControllerSortingChanged(Sender: TObject);
begin
	gfSetIndexNo(cxViewBranch, AIndex, GS_SortNoChange);
end;

procedure TFrm_CMP.cxViewColumn4PropertiesNewLookupDisplayText(
  Sender: TObject; const AText: TCaption);
var
	Idx: Integer;
begin
	Idx := cxView.DataController.FocusedRecordIndex;
	cxView.DataController.SetValue(Idx, 4, Length(AText));
end;

procedure TFrm_CMP.cxViewSymbolCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  edtHeadSymbol.Text := cxViewSymbol.DataController.GetValue(cxViewSymbol.DataController.FocusedRecordIndex, ACellViewInfo.Item.Index);
end;

procedure TFrm_CMP.mmoSMSKeyPress(Sender: TObject; var Key: Char);
var
  Len: Integer;
  AMemo: TcxMemo;
	ALabel: TLabel;
	iTmp : integer;
begin
	if Ord(Key) = VK_BACK then Exit;

  try
    AMemo := TcxMemo(Sender);
    ALabel := GetSMSLabel(AMemo.Tag);
    if not Assigned(ALabel) then Exit;

		iTmp := 0;
		if Pos('%�����ġ%', AMemo.text) > 0 then iTmp := 11 ;
		if Pos('%��URL%', AMemo.text) > 0 then iTmp := 6 ;

		Len := GetSmsMemoLength(AnsiString(AMemo.Text)) + iTmp;
		ALabel.Caption := IntToStr(Len) + ' Byte';

		
    if Key = #3 then Exit;

		if Len >= 90 then
		begin
			Key := #0;
  		Exit;
    end;
  except
    on e : Exception do
    begin
			GMessagebox('SMS KeyPress Events Err: ' + e.Message , CDMSE);
    end;
  end;
end;

procedure TFrm_CMP.mmoSMSKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
	Len: Integer;
  Str: string;
  AMemo: TcxMemo;
	ALabel: TLabel;
	iTmp: Integer;
begin
	TcxMemo(sender).Text := Enc_Control(TcxMemo(sender).Text);
  AMemo := TcxMemo(Sender);
  ALabel := GetSMSLabel(AMemo.Tag);

  Str := AMemo.Text;
	iTmp := 0;
	if Pos('%�����ġ%', Str) > 0 then iTmp := 11 ;
	if Pos('%��URL%', Str) > 0 then iTmp := 6 ;
	Len := GetSmsMemoLength(AnsiString(Str)) + iTmp;

  if Str = '' then
		AMemo.Properties.MaxLength := 90
  else
		AMemo.Properties.MaxLength := 90 + GetSeperatorCount(Str, #13#10);

  ALabel.Caption := IntToStr(Len) + ' Byte';
end;

procedure TFrm_CMP.mniCyberBankSMSClick(Sender: TObject);
var sCyBankCD1, sCyBankCD2, sCyBankAC1, sCyBankAC2, sBrNo, sBrNm, sFrTel, sToTel, ls_MSG_Err, sTmp : string;
	ls_TxLoad, rv_str, sMsg, sMsg1, sMsg2: string;
	ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  slReceive: TStringList;
	ErrCode, iRow, iTmp: integer;
begin
	Try
		iRow := cxViewBranch.DataController.FocusedRecordIndex;
		iTmp := cxViewBranch.GetColumnByFieldName('�����ڵ�').Index;
		sBrNo := cxViewBranch.DataController.Values[iRow, iTmp];
		iTmp := cxViewBranch.GetColumnByFieldName('�����').Index;
		sBrNm := cxViewBranch.DataController.Values[iRow, iTmp];

		iTmp := cxViewBranch.GetColumnByFieldName('��Ȳ�ǹ�ȣ').Index;
		sFrTel := CallToStr(cxViewBranch.DataController.Values[iRow, iTmp]);

		ls_TxLoad := GTx_UnitXmlLoad('C047N2.xml');
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BRIF000S', [rfReplaceAll]);

		ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_ACTION', 'SELECT', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_�����ڵ�', sBrNo, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_TYPE', '', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'Memo="VAL_Memo"', 'Memo="VAL_Memo" br_jumin_no="VAL_JUMIN"', [rfReplaceAll]);

		Screen.Cursor := crHourGlass;

		slReceive := TStringList.Create;
    try
      frm_Main.proc_SocketWork(False);
			if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 30000) then
      begin
				rv_str := slReceive[0];
        if rv_str <> '' then
        begin
					ls_rxxml := rv_str;
          Application.ProcessMessages;
          xdom := ComsDomDocument.Create;

					if (not xdom.loadXML(ls_rxxml)) then
					begin
						Screen.Cursor := crDefault;
						ShowMessage('���� Error�Դϴ�. �ٽ���ȸ�Ͽ��ֽʽÿ�.');
						Exit;
					end;

					sMsg := ''; sMsg1 := ''; sMsg2 := '';  sToTel := '';
					ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
					if ('0000' = ls_MSG_Err) then
					begin
						sMsg := format('������:%s', [sBrNm]);

						lst_Node := xdom.documentElement.selectNodes('/cdms/Service/Branch/Setting');

						sTmp := lst_Node.item[0].attributes.getNamedItem('cybank2').Text;
						if sTmp <> '' then
						begin
							sCyBankCD2 := FBankCodeList[FBankNameList.IndexOf(sTmp)];
							sCyBankAC2 := lst_Node.item[0].attributes.getNamedItem('cybank_account2').Text;
							if sCyBankAC2 <> '' then
							begin
								sMsg1 := format('�������1:%s %s', [sCyBankCD2, sCyBankAC2]);
							end;
						end;

						sTmp := lst_Node.item[0].attributes.getNamedItem('cybank').Text;
						if sTmp <> '' then
						begin
							sCyBankCD1 := FBankCodeList[FBankNameList.IndexOf(sTmp)];
							sCyBankAC1 := lst_Node.item[0].attributes.getNamedItem('cybank_account').Text;
							if sCyBankAC1 <> '' then
							begin
								sMsg2 := format('�������2:%s %s', [sCyBankCD1, sCyBankAC1]);
							end;
						end;

						if sMsg1 <> '' then
						begin
							sMsg := sMsg + ' ' + sMsg1;
							if sMsg2 <> '' then sMsg := sMsg + ' ' + sMsg2;
						end else
						if sMsg2 <> '' then
						begin
							sMsg := sMsg + ' ' + sMsg2;
						end;

						lst_Node := xdom.documentElement.selectNodes('/cdms/Service/Branch/Base');
						sToTel := lst_Node.item[0].attributes.getNamedItem('mobile').text;
					end;
				end;
			end;
		finally
			frm_Main.proc_SocketWork(True);
      FreeAndNil(slReceive);
      Screen.Cursor := crDefault;
			Frm_Flash.Hide;
    end;

		if Not Assigned(Frm_SMS01) then Frm_SMS01 := TFrm_SMS01.Create(Nil);
		Frm_SMS01.pSMS01Dock.bUnDock := False;
		Frm_SMS01.pSMS01Dock.HdNo    := GT_SEL_BRNO.HDNO;
		Frm_SMS01.pSMS01Dock.BrNo    := GT_SEL_BRNO.BrNo;
		Frm_SMS01.pSMS01Dock.BrName  := sBrNm;
		Frm_SMS01.pSMS01Dock.Gubun   := GT_SEL_BRNO.Gubun;

		Frm_SMS01.mm_message.Text := '';

		Frm_SMS01.ls_sms.Items.Clear;
		Frm_SMS01.ls_sms.Items.add(CallToStr(sToTel));
		Frm_SMS01.sMemo := '[���簡����¹�������]';
		Frm_SMS01.sConfSlip := '';
		Frm_SMS01.sWkSabun := '';
		Frm_SMS01.PageControl1.ActivePageIndex := 2;
		Frm_SMS01.Show;
		Frm_SMS01.mm_message.Text := sMsg;
		Frm_SMS01.ed_send.Text := sFrTel;
	Finally
	End;
end;

procedure TFrm_CMP.mniN2Click(Sender: TObject);
begin
  btnBranchModify.Click;
end;

procedure TFrm_CMP.mniN3Click(Sender: TObject);
begin
  btnBranchAdd.Click;
end;

procedure TFrm_CMP.mniN4Click(Sender: TObject);
begin
  btnBranchExcel.Click;
end;

procedure TFrm_CMP.N6Click(Sender: TObject);
var i, iBrNm, iBrNo, iRow : integer;
  bTmp : Boolean;
  slBrNm, slBrNo : TStringlist;
  sMBrNo, sMBrNm, sBrNm, sBrNo : string;
begin
  Try
    iRow := cxViewBranch.DataController.FocusedRecordIndex;
    if iRow < 0 then exit;
    
    iBrNo := cxViewBranch.GetColumnByFieldName('�����ڵ�').Index;
    iBrNm := cxViewBranch.GetColumnByFieldName('�����').Index;

    sMBrNo := cxViewBranch.DataController.Values[iRow, iBrNo];
    sMBrNm := cxViewBranch.DataController.Values[iRow, iBrNm];
    slBrNm := TStringlist.Create; slBrNo := TStringlist.Create;
    Try
      for i := 0 to cxViewBranch.DataController.RecordCount - 1 do
      begin
        sBrNo := cxViewBranch.ViewData.Records[I].Values[iBrNo];
        if sMBrNo = sBrNo then Continue;
        
        sBrNm := cxViewBranch.ViewData.Records[I].Values[iBrNm];
        slBrNo.Add(sBrNo);
        slBrNm.Add(sBrNm);
      end;

      if slBrNo.Count > 0 then
      begin
        if Not Assigned(Frm_CMP02) Or ( Frm_CMP02 = Nil ) then
        begin
          Frm_CMP02 := TFrm_CMP02.Create(nil);
        end;
        frm_CMP02.proc_Init;
        frm_CMP02.gslBrNo.Assign(slBrNo);
        frm_CMP02.gslBrNm.Assign(slBrNm);
        if frm_CMP02.func_SetGrid(sMBrNo, sMBrNm) then
        begin
          frm_CMP02.gsBrNo := sMBrNo;
          Frm_CMP02.ShowModal;
        end else Frm_CMP02.Close;
      end;
    Finally
      slBrNo.Free;
      slBrNm.Free;
    End;

  except
    on e: exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CMP.chkSMSR140Click(Sender: TObject);
begin
  if chkSMSR140.Checked then
  begin
    cbKeynumber01.Visible := True;
  end else
  begin
    cbKeynumber01.Visible := False;
    edtSMSR140.Text := '������ǥ��ȣ';
    edtSMSR140.Enabled := False;
  end;
end;

procedure TFrm_CMP.chkSMSR141Click(Sender: TObject);
begin
  if chkSMSR141.Checked then
  begin
    cbKeynumber02.Visible := True;
  end else
  begin
    cbKeynumber02.Visible := False;
    edtSMSR141.Text := '������ǥ��ȣ';
    edtSMSR141.Enabled := False;
  end;
end;

procedure TFrm_CMP.chkSMSRClick(Sender: TObject);
var
  ACheck: TcxCheckBox;
  AEdit: TcxTextEdit;
  ACb : TcxComboBox;
begin
	ACheck := TcxCheckBox(Sender);
  AEdit := GetSMSEdit(ACheck.Tag);
  ACB := GetSMSCB(ACheck.Tag);

  if not Assigned(AEdit) then Exit;
  if not Assigned(ACB) then Exit;

  if AEdit.Enabled and ACheck.Checked then
  begin
    if cxPageControl2.ActivePageIndex = ((ACheck.Tag div 100) - 1) then
  end else
  begin
    ACB.Visible := ACheck.Checked;
    if ACB.Visible then
    begin
      AEdit.Visible := False;
    end else
    begin
      AEdit.Visible := True;
      AEdit.Text := GetReturnNum(ACheck.Tag);
    end;
  end;
end;

procedure TFrm_CMP.rbSMSReturnClick(Sender: TObject);
var
  ARadio: TRadioButton;
  ACheck: TcxCheckBox;
  AEdit: TcxTextEdit;
begin
	ARadio := TRadioButton(Sender);
  ACheck := GetReturnCheckBox(ARadio.Tag);
  AEdit := GetSMSEdit(ACheck.Tag);
  if not Assigned(AEdit) then
		Exit;

	if not ACheck.Checked then
		AEdit.Text := TRadioButton(Sender).Caption;
end;

function TFrm_CMP.GetSmsData(ARec: TSMSInfoRec): string;
var
	Data, Date2: TSMSDataRec;
  i : integer;
  sMsg2, Op1Str, Op2Str : string;
begin

	if not Assigned(ARec.mmoSms) then
		Data := GetSMSDataGrid(ARec, 0)
	else if Assigned(ARec.edtOption1) or Assigned(ARec.edtOption2) or Assigned(ARec.edtTime) then
		Data := GetSMSDataOption(ARec)
  else
		Data := GetSMSDataEdit(ARec);

  sMsg2 := '';
  // ������SMS ������ 2�ܰ� ���ӹ��� ã��.
	case ARec.MsgNo of
		310..313, 410..413, 510..513, 610..613, 321,322, 421,422, 521,522, 621,622 :
			begin
				if (RightStr(IntToStr(ARec.MsgNo), 2) = '10') then
        begin
					for i := 0 to Length(SMSCtrls) - 1 do
          begin
						if (SMSCtrls[i].MsgNo = (ARec.MsgNo + 8)) then   //������ SMS �� 310, 410, 510, 610���� �ι�°���ڿ��� ���� 8
						begin
							sMsg2 := SMSCtrls[i].mmoSms.Text;
							Break;
						end;
					end;
        end else
        begin
          for i := 0 to Length(SMSCtrls) - 1 do
          begin
						if (SMSCtrls[i].MsgNo = (ARec.MsgNo + 4)) then   //������ SMS �� ������  �ι�°���ڿ��� ���� 4
            begin
							sMsg2 := SMSCtrls[i].mmoSms.Text;
              Break;
						end;
          end;
				end;
      end;
     127:
      begin
        Op1Str := edtSMSR128.Text;
        IF cxCheckBox2.Checked THEN Op2Str := Op2Str + '1'
        else Op2Str := Op2Str + '0';
        IF cxCheckBox3.Checked THEN Op2Str := Op2Str + '1'
        else Op2Str := Op2Str + '0';
        IF cxCheckBox4.Checked THEN Op2Str := Op2Str + '1'
        else Op2Str := Op2Str + '0';
        IF cxCheckBox5.Checked THEN Op2Str := Op2Str + '1'
        else Op2Str := Op2Str + '0';
        IF cxCheckBox6.Checked THEN Op2Str := Op2Str + '1'
        else Op2Str := Op2Str + '0';
        IF cxCheckBox7.Checked THEN Op2Str := Op2Str + '1'
				else Op2Str := Op2Str + '0';

        Data.Option1 := Op1Str;
        Data.Option2 := Op2Str;
			end;
		 710..719:
		 begin
				Date2 := GetSMSDataGrid(ARec, 1);
				sMsg2 := Date2.Msg;
		 end;
		 730..739:
		 begin
				Date2 := GetSMSDataGrid(ARec, 1);
				sMsg2 := Date2.Msg;
		 end;
		 327..329, 427..429, 527..529, 627..629:
		 begin
				Date2 := GetSMSDataGrid(ARec, 1);
				sMsg2 := Date2.Msg;
		 end;
  end;
	if (ARec.MsgNo <> 700) and (ARec.MsgNo <> 701) and (ARec.MsgNo <> 702) and (ARec.MsgNo <> 703) then
		Result := Format(SMSItemText,
										[
											Data.MsgNo,
											Data.Use,
											Data.From,
											Data.Sendtime,
											Data.Option1,
											Data.Option2,
											En_Coding(Data.Msg),
											En_Coding(sMsg2)
										]);
end;

function TFrm_CMP.GetSMSDataEdit(ARec: TSMSInfoRec): TSMSDataRec;
{
  <Item kind="%d" use="%s" from="%s" send_time="%s" Option1="%s" Option2="%s">%s</Item>
}
var
  useStr, fromStr, msgStr, Op1Str, Op2Str: string;
begin

  useStr := '';
  fromStr:= '';
  msgStr := '';
  Op1Str := '';
  Op2Str := '';
  case ARec.MsgNo of
		315..318, 415..418, 515..518, 615..618, 325,326, 425,426, 525,526, 625,626, 700,701, 720..729, 702, 703, 740..749 :
      begin
				msgStr := ARec.mmoSms.Text;
      end;
  else
      begin
        useStr := IfThen(ARec.chkSelect.Checked, 'y', 'n');
        if ARec.chkReturn.Checked then
          fromStr := ARec.cbReturn.Text
        else if ARec.edtReturn.Text = '������ǥ��ȣ' then
          fromStr := '0'
        else if ARec.edtReturn.Text = '��Ȳ�ǹ�ȣ' then
          fromStr := '1'
        else if ARec.edtReturn.Text = '����ڵ�����ȣ' then
          fromStr := '2'
        else if ARec.edtReturn.Text = '����ȣ' then
          fromStr := '3';
        msgStr := ARec.mmoSms.Text;
      end;
  end;

  Result.MsgNo    := ARec.MsgNo;
  Result.Use      := useStr;
  Result.From     := fromStr;
  Result.Sendtime := '';
  Result.Option1  := Op1Str;
  Result.Option2  := Op2Str;
  Result.Msg      := msgStr;
end;

function TFrm_CMP.GetSMSDataGrid(ARec: TSMSInfoRec; iType : integer): TSMSDataRec;
{
  <Item kind="%d" use="%s" from="%s" send_time="%s" Option1="%s" Option2="%s">%s</Item>
}
var
  Row: Integer;
	useStr, fromStr, msgStr, sLevel, timeStr : string;
begin
	if iType = 0 then
	begin
		if ( (ARec.MsgNo >= 250) and (ARec.MsgNo <= 269) ) or (ARec.MsgNo = 200) then
		begin
			Row := cxView.DataController.FindRecordIndexByText(0, 5, IntToStr(ARec.MsgNo), True, False, True);
			if Row > -1 then
			begin
				useStr := IfThen(Boolean(cxView.DataController.Values[Row, 1]), 'y', 'n');
				if cxView.DataController.Values[Row, 3] <> null then
					msgStr := cxView.DataController.Values[Row, 3];
			end
			else
			begin
				useStr := IfThen(ARec.chkSelect.Checked, 'y', 'n');
				msgStr := '';
			end;
			sLevel := '';
			if ARec.chkReturn.Checked then
				fromStr := ARec.cbReturn.Text
			else if ARec.edtReturn.Text = '������ǥ��ȣ' then
				fromStr := '0'
			else if ARec.edtReturn.Text = '��Ȳ�ǹ�ȣ' then
				fromStr := '1'
			else if ARec.edtReturn.Text = '����ڵ�����ȣ' then
				fromStr := '2'
			else if ARec.edtReturn.Text = '����ȣ' then
				fromStr := '3';
		end	else
		if (ARec.MsgNo >= 710) and (ARec.MsgNo <= 729) then
		begin
			Row := cxGridCustSMSList.DataController.FindRecordIndexByText(0, 4, IntToStr(ARec.MsgNo), True, False, True);
			if Row > -1 then
			begin
				useStr := IfThen(ARec.chkSelect.Checked, 'y', 'n');
				if cxGridCustSMSList.DataController.Values[Row, 2] <> null then
					msgStr := cxGridCustSMSList.DataController.Values[Row, 2];
			end else
			begin
				useStr := IfThen(ARec.chkSelect.Checked, 'y', 'n');
				msgStr := '';
			end;
			if cxGridCustSMSList.DataController.Values[Row, 0] <> null then
			begin
				sLevel := inttostr(sCustRankNameList.IndexOf(cxGridCustSMSList.DataController.Values[Row, 0]));
        if ARec.chkReturn.Checked then
          fromStr := ARec.cbReturn.Text
				else if ARec.edtReturn.Text = '������ǥ��ȣ' then
					fromStr := '0';
			end
			else sLevel := '';
		end	else
		if (ARec.MsgNo >= 730) and (ARec.MsgNo <= 749) then
		begin
			Row := cxGridCustMileSMSList.DataController.FindRecordIndexByText(0, 4, IntToStr(ARec.MsgNo), True, False, True);
			if Row > -1 then
			begin
				useStr := IfThen(ARec.chkSelect.Checked, 'y', 'n');
				if cxGridCustMileSMSList.DataController.Values[Row, 2] <> null then
					msgStr := cxGridCustMileSMSList.DataController.Values[Row, 2];
			end else
			begin
				useStr := IfThen(ARec.chkSelect.Checked, 'y', 'n');
				msgStr := '';
			end;
			if cxGridCustMileSMSList.DataController.Values[Row, 0] <> null then
			begin
				sLevel := inttostr(sCustRankMileNameList.IndexOf(cxGridCustMileSMSList.DataController.Values[Row, 0]));
        if ARec.chkReturn.Checked then
          fromStr := ARec.cbReturn.Text
				else if ARec.edtReturn.Text = '������ǥ��ȣ' then
					fromStr := '0';
			end
			else sLevel := '';
		end;
	end else
  if iType = 1 then
	begin
		if (ARec.MsgNo + 10 >= 710) and (ARec.MsgNo + 10 <= 729) then
		begin
			Row := cxGridCustSMSList.DataController.FindRecordIndexByText(0, 4, IntToStr(ARec.MsgNo + 10), True, False, True);
			if Row > -1 then
			begin
				useStr := IfThen(ARec.chkSelect.Checked, 'y', 'n');
				if cxGridCustSMSList.DataController.Values[Row, 2] <> null then
					msgStr := cxGridCustSMSList.DataController.Values[Row, 2];
			end else
			begin
				useStr := IfThen(ARec.chkSelect.Checked, 'y', 'n');
				msgStr := '';
			end;
			sLevel := '';
			if ARec.chkReturn.Checked then
				fromStr := ARec.cbReturn.Text
			else if ARec.edtReturn.Text = '������ǥ��ȣ' then
				fromStr := '0';
		end else
		if (ARec.MsgNo + 10 >= 730) and (ARec.MsgNo + 10 <= 749) then
		begin
			Row := cxGridCustMileSMSList.DataController.FindRecordIndexByText(0, 4, IntToStr(ARec.MsgNo + 10), True, False, True);
			if Row > -1 then
			begin
				useStr := IfThen(ARec.chkSelect.Checked, 'y', 'n');
				if cxGridCustMileSMSList.DataController.Values[Row, 2] <> null then
					msgStr := cxGridCustMileSMSList.DataController.Values[Row, 2];
			end else
			begin
				useStr := IfThen(ARec.chkSelect.Checked, 'y', 'n');
				msgStr := '';
			end;
			sLevel := '';
			if ARec.chkReturn.Checked then
				fromStr := ARec.cbReturn.Text
			else if ARec.edtReturn.Text = '������ǥ��ȣ' then
				fromStr := '0';
		end;
	end;

  case ARec.MsgNo of
  710..719, 730..739 :
    begin
      if edtSMST700.Text = '����1��' then timeStr := '13' else
      if edtSMST700.Text = '����2��' then timeStr := '14' else
      if edtSMST700.Text = '����4��' then timeStr := '16' else
      if edtSMST700.Text = '����6��' then timeStr := '18' else
      if edtSMST700.Text = '����7��' then timeStr := '19';
    end;
  end;

	Result.MsgNo := ARec.MsgNo;
  Result.Use := useStr;
  Result.From := fromStr;
  Result.Sendtime := timeStr;
	Result.Option1 := sLevel;
	Result.Option2 := '';
	Result.Msg := msgStr;
end;

function TFrm_CMP.GetSMSDataOption(ARec: TSMSInfoRec): TSMSDataRec;
{
  <Item kind="%d" use="%s" from="%s" send_time="%s" Option1="%s" Option2="%s">%s</Item>
}
var
  useStr, fromStr, timeStr, Op1Str, Op2Str, msgStr, msgStr2: string;
begin
  useStr := IfThen(ARec.chkSelect.Checked, 'y', 'n');
  if ARec.chkReturn.Checked then
    fromStr := ARec.cbReturn.Text
  else if ARec.edtReturn.Text = '������ǥ��ȣ' then
    fromStr := '0'
  else if ARec.edtReturn.Text = '��Ȳ�ǹ�ȣ' then
    fromStr := '1'
  else if ARec.edtReturn.Text = '����ڵ�����ȣ' then
    fromStr := '2'
  else if ARec.edtReturn.Text = '����ȣ' then
    fromStr := '3';
  timeStr := '';
  Op1Str := '';
  Op2Str := '';

  case ARec.MsgNo of
	130, 310, 311, 410, 411, 510, 511, 610, 611,
	327, 328, 329, 427, 428, 429, 527, 528, 529, 627, 628, 629: //�Ҹ긶�ϸ���
    begin
      Op1Str := ARec.edtOption1.Text;
    end;
  312, 313, 412, 413, 512, 513, 612, 613:
    begin
      Op1Str := ARec.edtOption1.Text;
      Op2Str := ARec.edtOption2.Text;
    end;
  330:
    begin
      Op1Str := ARec.edtOption1.Text;
      Op2Str := ARec.edtOption2.Text;
    end;
  end;

  case ARec.MsgNo of
  310..313, 321, 322, 410..413, 421, 422, 510..513, 521, 522, 610..613, 621, 622, 330,
	327, 328, 329, 427, 428, 429, 527, 528, 529, 627, 628, 629: //�Ҹ긶�ϸ���
    begin
      if ARec.edtTime.Text = '����1��' then timeStr := '13' else
      if ARec.edtTime.Text = '����2��' then timeStr := '14' else
      if ARec.edtTime.Text = '����4��' then timeStr := '16' else
      if ARec.edtTime.Text = '����6��' then timeStr := '18' else
      if ARec.edtTime.Text = '����7��' then timeStr := '19';
		end;
  end;

  msgStr := ARec.mmoSms.Text;

  Result.MsgNo := ARec.MsgNo;
  Result.Use := useStr;
  Result.From := fromStr;
  Result.Sendtime := timeStr;
  Result.Option1 := Op1Str;
  Result.Option2 := Op2Str;
  Result.Msg := msgStr;
{
  Result := Format(SMSItemText,
    [
      ARec.MsgNo,
      useStr,
      fromStr,
      timeStr,
      Op1Str,
      Op2Str,
      msgStr
    ]);
}
end;

procedure TFrm_CMP.btnNoRecvSearchClick(Sender: TObject);
begin
	UpdateDataSms;
end;

procedure TFrm_CMP.BtnSearchA3Click(Sender: TObject);
begin
	RequestDataSmsList;
end;

procedure TFrm_CMP.BtnSearchA4Click(Sender: TObject);
begin
	bValidate := True;
	FRow := 0;
	FCol := 0;
	Comm_List.Clear;
	proc_GridSet;
	RequestDataBranchList_Comm;
  CopyStringGrid;
end;

procedure TFrm_CMP.BtnSearchA5Click(Sender: TObject);
begin
  RequestDataOShotSet;
end;

procedure TFrm_CMP.btnSMSGridClick(Sender: TObject);
var
	Idx: Integer;
begin
	Idx := cxView.DataController.FocusedRecordIndex;
	cxView.DataController.Values[Idx, 3] := cxView.DataController.Values[Idx, 3] + Format('%%%s%%', [TcxButton(Sender).Hint]);
end;

procedure TFrm_CMP.edtHeadOwnerJumin1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	btnSoNumCheck.Enabled := True;
end;

procedure TFrm_CMP.edtHeadOwnerJumin1KeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else
		key := #0;
end;

procedure TFrm_CMP.edtHeadOwnerNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_CMP.edtHeadSNumKeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8, #22] then      //Ctrl+v = #22 or #$16
	else
		key := #0;
end;

procedure TFrm_CMP.edtHeadSymbolClick(Sender: TObject);
begin
  pnlHeadSymbol.Visible := not pnlHeadSymbol.Visible;
  pnlHeadSymbol.Top := lbl40.Top + lbl40.Height;
  pnlHeadSymbol.Left := lbl40.Left;
end;

procedure TFrm_CMP.edtHeadSymbolKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);	
	if fCheckMaxLength(edtHeadSymbol, 2) then Key := 0;
end;

procedure TFrm_CMP.edtSMSO1312PropertiesEditValueChanged(Sender: TObject);
begin
  if Panel7.Tag = 99 then Exit;

  if chkSMS312.Checked then
    edtSMSO1313.Text := IntToStr(TcxSpinEdit(Sender).Value + 1)
  else
		edtSMSO1313.Text := '2';

  if chkSMS313.Checked then
  begin
    if chkSMS312.Checked then
      edtSMSO1310.Text := IntToStr(edtSMSO2313.Value + 1)
    else
      edtSMSO1310.Text := '2';
  end else
  begin
    if chkSMS312.Checked then
      edtSMSO1310.Text := IntToStr(TcxSpinEdit(Sender).Value + 1)
    else
      edtSMSO1310.Text := '2';
  end;
end;

procedure TFrm_CMP.edtSMSO2313PropertiesEditValueChanged(Sender: TObject);
begin
  if Panel7.Tag = 99 then Exit;

  if chkSMS313.Checked then
    edtSMSO1310.Text := IntToStr(TcxSpinEdit(Sender).Value + 1)
  else
  if chkSMS312.Checked then
    edtSMSO1310.Text := IntToStr(edtSMSO2312.Value + 1)
  else
    edtSMSO1310.Text := '2';
end;

procedure TFrm_CMP.edtSMSO2412PropertiesEditValueChanged(Sender: TObject);
begin
  if Panel7.Tag = 99 then Exit;

  if chkSMS412.Checked then
    edtSMSO1413.Text := IntToStr(TcxSpinEdit(Sender).Value + 1)
  else
		edtSMSO1413.Text := '2';

  if chkSMS413.Checked then
  begin
    if chkSMS412.Checked then
      edtSMSO1410.Text := IntToStr(edtSMSO2413.Value + 1)
    else
      edtSMSO1410.Text := '2';
  end else
  begin
    if chkSMS412.Checked then
      edtSMSO1410.Text := IntToStr(TcxSpinEdit(Sender).Value + 1)
    else
      edtSMSO1410.Text := '2';
  end;
end;

procedure TFrm_CMP.edtSMSO2413PropertiesEditValueChanged(Sender: TObject);
begin
  if Panel7.Tag = 99 then Exit;

  if chkSMS413.Checked then
    edtSMSO1410.Text := IntToStr(TcxSpinEdit(Sender).Value + 1)
  else
  if chkSMS412.Checked then
    edtSMSO1410.Text := IntToStr(edtSMSO2412.Value + 1)
  else
    edtSMSO1410.Text := '2';
end;

procedure TFrm_CMP.edtSMSO2512PropertiesEditValueChanged(Sender: TObject);
begin
  if Panel7.Tag = 99 then Exit;

  if chkSMS512.Checked then
    edtSMSO1513.Text := IntToStr(TcxSpinEdit(Sender).Value + 1)
  else
		edtSMSO1513.Text := '2';

  if chkSMS513.Checked then
  begin
    if chkSMS512.Checked then
      edtSMSO1510.Text := IntToStr(edtSMSO2513.Value + 1)
    else
      edtSMSO1510.Text := '2';
  end else
  begin
    if chkSMS512.Checked then
      edtSMSO1510.Text := IntToStr(TcxSpinEdit(Sender).Value + 1)
    else
      edtSMSO1510.Text := '2';
  end;
end;

procedure TFrm_CMP.edtSMSO2513PropertiesEditValueChanged(Sender: TObject);
begin
  if Panel7.Tag = 99 then Exit;

  if chkSMS513.Checked then
    edtSMSO1510.Text := IntToStr(TcxSpinEdit(Sender).Value + 1)
  else
  if chkSMS512.Checked then
    edtSMSO1510.Text := IntToStr(edtSMSO2512.Value + 1)
  else
    edtSMSO1510.Text := '2';
end;

procedure TFrm_CMP.edtSMSO2612PropertiesEditValueChanged(Sender: TObject);
begin
  if Panel7.Tag = 99 then Exit;

  if chkSMS612.Checked then
    edtSMSO1613.Text := IntToStr(TcxSpinEdit(Sender).Value + 1)
  else
		edtSMSO1613.Text := '2';

  if chkSMS613.Checked then
  begin
    if chkSMS612.Checked then
      edtSMSO1610.Text := IntToStr(edtSMSO2613.Value + 1)
    else
      edtSMSO1610.Text := '2';
  end else
  begin
    if chkSMS612.Checked then
      edtSMSO1610.Text := IntToStr(TcxSpinEdit(Sender).Value + 1)
    else
      edtSMSO1610.Text := '2';
  end;
end;

procedure TFrm_CMP.edtSMSO2613PropertiesEditValueChanged(Sender: TObject);
begin
  if Panel7.Tag = 99 then Exit;

  if chkSMS613.Checked then
    edtSMSO1610.Text := IntToStr(TcxSpinEdit(Sender).Value + 1)
  else
  if chkSMS612.Checked then
    edtSMSO1610.Text := IntToStr(edtSMSO2612.Value + 1)
  else
    edtSMSO1610.Text := '2';
end;

procedure TFrm_CMP.edtSMSO1313PropertiesEditValueChanged(Sender: TObject);
begin
  if Panel7.Tag = 99 then Exit;

  if StrToIntDef(TcxTextEdit(Sender).Text, 0) >= edtSMSO2313.Value then
    edtSMSO2313.Value := StrToIntDef(TcxTextEdit(Sender).Text, 0)+ 1;

  if StrToIntDef(TcxTextEdit(Sender).Text, 0) > 0 then
    edtSMSO2313.Properties.MinValue := StrToIntDef(TcxTextEdit(Sender).Text, 0);
end;

procedure TFrm_CMP.edtSMSO1413PropertiesEditValueChanged(Sender: TObject);
begin
  if Panel7.Tag = 99 then Exit;

  if StrToIntDef(TcxTextEdit(Sender).Text, 0) >= edtSMSO2413.Value then
    edtSMSO2413.Value := StrToIntDef(TcxTextEdit(Sender).Text, 0)+ 1;

  if StrToIntDef(TcxTextEdit(Sender).Text, 0) > 0 then
    edtSMSO2413.Properties.MinValue := StrToIntDef(TcxTextEdit(Sender).Text, 0);
end;

procedure TFrm_CMP.edtSMSO1513PropertiesEditValueChanged(Sender: TObject);
begin
  if Panel7.Tag = 99 then Exit;

  if StrToIntDef(TcxTextEdit(Sender).Text, 0) >= edtSMSO2513.Value then
    edtSMSO2513.Value := StrToIntDef(TcxTextEdit(Sender).Text, 0)+ 1;

  if StrToIntDef(TcxTextEdit(Sender).Text, 0) > 0 then
    edtSMSO2513.Properties.MinValue := StrToIntDef(TcxTextEdit(Sender).Text, 0);
end;

procedure TFrm_CMP.edtSMSO1613PropertiesEditValueChanged(Sender: TObject);
begin
  if Panel7.Tag = 99 then Exit;

  if StrToIntDef(TcxTextEdit(Sender).Text, 0) >= edtSMSO2613.Value then
    edtSMSO2613.Value := StrToIntDef(TcxTextEdit(Sender).Text, 0)+ 1;

  if StrToIntDef(TcxTextEdit(Sender).Text, 0) > 0 then
    edtSMSO2613.Properties.MinValue := StrToIntDef(TcxTextEdit(Sender).Text, 0);
end;

procedure TFrm_CMP.chkSMS312Click(Sender: TObject);
begin
  if TcxCheckBox(Sender).Tag = 1 then Exit;

	if TcxCheckBox(Sender).Checked then
  begin
    edtSMSO1313.Text := IntToStr(edtSMSO2312.Value + 1);
    edtSMSO2312.Enabled := True;

		chkSMS700.Checked := False;
	end else
  begin
    edtSMSO2312.Enabled := False;
    edtSMSO1313.Text := '2';
  end;

  if chkSMS313.Checked then
  begin
		edtSMSO1310.Text := IntToStr(edtSMSO2313.Value + 1);
		chkSMS700.Checked := False;
  end else
  begin
    if TcxCheckBox(Sender).Checked then edtSMSO1310.Text := IntToStr(edtSMSO2312.Value + 1)
                                   else edtSMSO1310.Text := '2';
  end;
end;

procedure TFrm_CMP.chkSMS313Click(Sender: TObject);
begin
  if TcxCheckBox(Sender).Tag = 1 then Exit;

  if TcxCheckBox(Sender).Checked then
  begin
    edtSMSO1310.Text := IntToStr(edtSMSO2313.Value + 1);
    edtSMSO2313.Enabled := True;
		chkSMS700.Checked := False;
	end else
  begin
    edtSMSO2313.Enabled := False;

    if chkSMS312.Checked then edtSMSO1310.Text := IntToStr(edtSMSO2312.Value + 1)
                         else edtSMSO1310.Text := '2';
  end;
end;

procedure TFrm_CMP.chkSMS327Click(Sender: TObject);
begin
	if TcxCheckBox(Sender).tag = 327 then
	begin
		edtSMSO1327.Enabled := TcxCheckBox(Sender).checked;
	end else
	if TcxCheckBox(Sender).tag = 328 then
	begin
		edtSMSO1328.Enabled := TcxCheckBox(Sender).checked;
	end else
	if TcxCheckBox(Sender).tag = 329 then
	begin
		edtSMSO1329.Enabled := TcxCheckBox(Sender).checked;
	end else
	if TcxCheckBox(Sender).tag = 427 then
	begin
		edtSMSO1427.Enabled := TcxCheckBox(Sender).checked;
	end else
	if TcxCheckBox(Sender).tag = 428 then
	begin
		edtSMSO1428.Enabled := TcxCheckBox(Sender).checked;
	end else
	if TcxCheckBox(Sender).tag = 429 then
	begin
		edtSMSO1429.Enabled := TcxCheckBox(Sender).checked;
	end else
	if TcxCheckBox(Sender).tag = 527 then
	begin
		edtSMSO1527.Enabled := TcxCheckBox(Sender).checked;
	end else
	if TcxCheckBox(Sender).tag = 528 then
	begin
		edtSMSO1528.Enabled := TcxCheckBox(Sender).checked;
	end else
	if TcxCheckBox(Sender).tag = 529 then
	begin
		edtSMSO1529.Enabled := TcxCheckBox(Sender).checked;
	end else
	if TcxCheckBox(Sender).tag = 627 then
	begin
		edtSMSO1627.Enabled := TcxCheckBox(Sender).checked;
	end else
	if TcxCheckBox(Sender).tag = 628 then
	begin
		edtSMSO1628.Enabled := TcxCheckBox(Sender).checked;
	end else
	if TcxCheckBox(Sender).tag = 629 then
	begin
		edtSMSO1629.Enabled := TcxCheckBox(Sender).checked;
	end;
end;

procedure TFrm_CMP.btnGetListClick(Sender: TObject);
begin
//  pGetComponentListCMP;
end;

procedure TFrm_CMP.cxButton1Click(Sender: TObject);
var
  Msg: string;
begin
	Msg := '���� �ۼ� ���̴� ������ ��ҵǰ� ���� ����� ������ �ٽ� �ҷ��ɴϴ�.'#13#10
        + '(����� ������ �ٽ� �ҷ��ñ��?)';

  if GMessagebox(Msg, CDMSQ) = IDOK then
  begin
		RequestDataSmsList;
  end;
end;

function TFrm_CMP.CheckSmsData: Boolean;
var
  I: Integer;
begin
	for I := 0 to Length(SMSCtrls) - 1 do
  begin
    case SMSCtrls[I].MsgNo of
			114, 315..318, 415..418, 515..518, 615..618, 325,326, 425,426, 525,526, 625,626, 700, 701, 720..729, 702, 703, 740..749 :
				begin
          // �׳� SKIP~ �ؾ� ��.  2011.07.19
        end;
      else
        begin
					if Assigned(SMSCtrls[I].mmoSms) then
						Result := CheckSmsDataEdit(SMSCtrls[I])
          else
						Result := CheckSmsDataGrid(SMSCtrls[I]);

          if not Result then
            Exit;
        end;
    end;
  end;

  Result := True;
end;

function TFrm_CMP.CheckSmsDataEdit(ARec: TSMSInfoRec): Boolean;
begin
  Result := False;
  if (ARec.chkSelect.Checked) and (Trim(ARec.mmoSms.Text) = '') then
  begin
    try
      if ( ARec.MsgNo div 100 ) = 1 then cxPageControl2.ActivePageIndex := 0 else
      if ( ARec.MsgNo div 100 ) = 2 then cxPageControl2.ActivePageIndex := 1 else
      if ( ARec.MsgNo div 100 ) In [3, 4, 5, 6] then
      begin
        cxPageControl2.ActivePageIndex := 2;
        if ( ARec.MsgNo div 100 ) = 3 then
        begin
          if ARec.MsgNo = 330 then cxPageControl3.ActivePageIndex := 4
                              else cxPageControl3.ActivePageIndex := 0;
        end else
        if ( ARec.MsgNo div 100 ) = 4 then cxPageControl3.ActivePageIndex := 1 else
        if ( ARec.MsgNo div 100 ) = 5 then cxPageControl3.ActivePageIndex := 2 else
        if ( ARec.MsgNo div 100 ) = 6 then cxPageControl3.ActivePageIndex := 3;
      end else
      if ( ARec.MsgNo div 100 ) = 7 then
      begin
        cxPageControl2.ActivePageIndex := 3;
        if (ARec.MsgNo = 700) Or (ARec.MsgNo = 701) then cxPageControl4.ActivePageIndex := 0 else
        if (ARec.MsgNo = 702) Or (ARec.MsgNo = 703) then cxPageControl4.ActivePageIndex := 1;
      end;
    except;

    end;
    GMessagebox(Format('[%s] SMS ������ �Է��� �ּ���.', [ARec.chkSelect.Caption]), CDMSE);
    if ARec.mmoSms.CanFocus then ARec.mmoSms.SetFocus;
    Exit;
  end;

  if (ARec.chkReturn.Checked) and ( ARec.cbReturn.ItemIndex = 0 ) then
  begin
    try
      if ( ARec.MsgNo div 100 ) = 1 then cxPageControl2.ActivePageIndex := 0 else
      if ( ARec.MsgNo div 100 ) = 2 then cxPageControl2.ActivePageIndex := 1 else
      if ( ARec.MsgNo div 100 ) In [3, 4, 5, 6] then
      begin
        cxPageControl2.ActivePageIndex := 2;
        if ( ARec.MsgNo div 100 ) = 3 then
        begin
          if ARec.MsgNo = 330 then cxPageControl3.ActivePageIndex := 4
                              else cxPageControl3.ActivePageIndex := 0;
        end else
        if ( ARec.MsgNo div 100 ) = 4 then cxPageControl3.ActivePageIndex := 1 else
        if ( ARec.MsgNo div 100 ) = 5 then cxPageControl3.ActivePageIndex := 2 else
        if ( ARec.MsgNo div 100 ) = 6 then cxPageControl3.ActivePageIndex := 3;
      end else
      if ( ARec.MsgNo div 100 ) = 7 then
      begin
        cxPageControl2.ActivePageIndex := 3;
        if (ARec.MsgNo = 700) Or (ARec.MsgNo = 701) then cxPageControl4.ActivePageIndex := 0 else
        if (ARec.MsgNo = 702) Or (ARec.MsgNo = 703) then cxPageControl4.ActivePageIndex := 1;
      end;
    except;

    end;

    GMessagebox(Format('[%s]�� ȸ�Ź�ȣ�� �������ּ���.', [ARec.chkSelect.Caption]), CDMSE);
    if ARec.cbReturn.CanFocus then ARec.cbReturn.SetFocus;
    Exit;
  end;

  if ARec.MsgNo = 330 then
  begin
    if edtSMSO1330.Value < edtSMSO2330.Value then
    begin
      GMessagebox('�߼����� ��Ȯ�� �Է��� �ּ���.(�����׸��� ������ �Դϴ�.)', CDMSE);
      Exit;
    end;
  end;
  Result := True;
end;

function TFrm_CMP.CheckSmsDataGrid(ARec: TSMSInfoRec): Boolean;
var
  Row: Integer;
  Use: Boolean;
  Msg: string;
  TypeStr: string;
begin
  Result := False;
	if (ARec.MsgNo >= 250) and (ARec.MsgNo <= 269) then
	begin
		Row := cxView.DataController.FindRecordIndexByText(0, 5, IntToStr(ARec.MsgNo), True, False, True);
		if Row > -1 then
		begin
			Use := cxView.DataController.Values[Row, 1];
			Msg := '';
			if cxView.DataController.Values[Row, 3] <> null then
				Msg := cxView.DataController.Values[Row, 3];
			if Use and (Trim(Msg) = '') then
			begin
				TypeStr := Format('%s(%s)', [cxView.DataController.Values[Row, 0], cxView.DataController.Values[Row, 2]]);
				cxPageControl2.ActivePageIndex := 1;
				GMessagebox(Format('[%s] SMS ������ �Է��� �ּ���.', [TypeStr]), CDMSE);
				Exit;
			end;
		end;
    if (ARec.chkReturn.Checked) and ( ARec.cbReturn.ItemIndex = 0 ) then
    begin
      try
        cxPageControl2.ActivePageIndex := 1;
      except;
      end;

			GMessagebox(Format('[%s]�� ȸ�Ź�ȣ�� �������ּ���.', [ARec.chkSelect.Caption]), CDMSE);
      if ARec.cbReturn.CanFocus then ARec.cbReturn.SetFocus;
      Exit;
    end;
	end	else
	if (ARec.MsgNo >= 710) and (ARec.MsgNo <= 729) then
	begin
		Row := cxGridCustSMSList.DataController.FindRecordIndexByText(0, 4, IntToStr(ARec.MsgNo), True, False, True);
		if Row > -1 then
		begin
			Use := True;
			Msg := '';
			if cxView.DataController.Values[Row, 2] <> null then
				Msg := cxView.DataController.Values[Row, 2];
			if Use and (Trim(Msg) = '') then
			begin
				TypeStr := Format('%s(%s)', [cxView.DataController.Values[Row, 0], cxView.DataController.Values[Row, 2]]);
				cxPageControl2.ActivePageIndex := 3;
				GMessagebox(Format('[%s] SMS ������ �Է��� �ּ���.', [TypeStr]), CDMSE);
				Exit;
			end;
		end;

    if (ARec.chkReturn.Checked) and ( ARec.cbReturn.ItemIndex = 0 ) then
    begin
      try
        cxPageControl2.ActivePageIndex := 3;
        cxPageControl4.ActivePageIndex := 0;
      except;
      end;

      GMessagebox(Format('[%s]�� ȸ�Ź�ȣ�� �������ּ���.', [ARec.chkSelect.Caption]), CDMSE);
      if ARec.cbReturn.CanFocus then ARec.cbReturn.SetFocus;
      Exit;
    end;
	end	else
	if (ARec.MsgNo >= 730) and (ARec.MsgNo <= 749) then
	begin
		Row := cxGridCustMileSMSList.DataController.FindRecordIndexByText(0, 4, IntToStr(ARec.MsgNo), True, False, True);
		if Row > -1 then
		begin
			Use := True;
			Msg := '';
			if cxView.DataController.Values[Row, 2] <> null then
				Msg := cxView.DataController.Values[Row, 2];
			if Use and (Trim(Msg) = '') then
			begin
				TypeStr := Format('%s(%s)', [cxView.DataController.Values[Row, 0], cxView.DataController.Values[Row, 2]]);
				cxPageControl2.ActivePageIndex := 3;
				GMessagebox(Format('[%s] SMS ������ �Է��� �ּ���.', [TypeStr]), CDMSE);
				Exit;
			end;
		end;
    if (ARec.chkReturn.Checked) and ( ARec.cbReturn.ItemIndex = 0 ) then
    begin
      try
        cxPageControl2.ActivePageIndex := 3;
        cxPageControl4.ActivePageIndex := 1;
      except;
      end;

      GMessagebox(Format('[%s]�� ȸ�Ź�ȣ�� �������ּ���.', [ARec.chkSelect.Caption]), CDMSE);
      if ARec.cbReturn.CanFocus then ARec.cbReturn.SetFocus;
      Exit;
    end;
	end;
	Result := True;
end;

procedure TFrm_CMP.chkSMS200Click(Sender: TObject);
begin
	if TcxCheckBox(Sender).Checked then
	begin
		chkSMS210.Checked := False;
		chkSMS220.Checked := False;
	end;
end;

procedure TFrm_CMP.chkSMS210Click(Sender: TObject);
begin
  if TcxCheckBox(Sender).Checked then
  begin
    chkSMS200.Checked := False;
  end;
end;

procedure TFrm_CMP.chkSMS220Click(Sender: TObject);
begin
    chkSMS200.Checked := False;
end;

procedure TFrm_CMP.edtSMSR140KeyPress(Sender: TObject; var Key: Char);
begin
	// ��ȭ��ȣ�̱� ������ ���ڸ� �Է� �޴´�.  [(Key = #3) : Ctrl+C, (Key = #22) : Ctrl+V]
	if ((Key >= #48) and (Key <= #57)) or (Key = #8) or (Key = #3) or (Key = #22) then
	else
	begin
		Key := #0;
	end;
end;

procedure TFrm_CMP.edtSMSRKeyPress(Sender: TObject; var Key: Char);
begin
	// ��ȭ��ȣ�̱� ������ ���ڸ� �Է� �޴´�.  [(Key = #3) : Ctrl+C, (Key = #22) : Ctrl+V]
	if ((Key >= #48) and (Key <= #57)) or (Key = #8) or (Key = #3) or (Key = #22) then
	else
	begin
		Key := #0;
	end;
end;

procedure TFrm_CMP.cxButton5Click(Sender: TObject);
var
  I: Integer;
  Msg: string;
begin
	for I := 0 to Length(SMSCtrls) - 1 do
	begin
		if not Assigned(SMSCtrls[I].mmoSms) then
			SMSDatas[I] := GetSMSDataGrid(SMSCtrls[I], 0)
    else
    if Assigned(SMSCtrls[I].edtOption1) or
       Assigned(SMSCtrls[I].edtOption2) or
       Assigned(SMSCtrls[I].edtTime   ) then
			SMSDatas[I] := GetSMSDataOption(SMSCtrls[I])
    else
			SMSDatas[I] := GetSMSDataEdit(SMSCtrls[I]);
	end;

  Msg :=  '���� ������ [�ڵ�SMS����] ������ �޸𸮿� �����߽��ϴ�.' + #13#10
        + '�� ����޺� ���ڼ����� ���翡�� ���ܵ˴ϴ�.' + #13#10
        + '������ ����� �����Ͻð�, [���� �ٿ��ֱ�] ��ư�� Ŭ���Ͻ� ��' + #13#10
        + '[��������] ��ư�� Ŭ���ϼž� SMS���� ������ ����˴ϴ�.';

	GMessagebox(Msg, CDMSE);
end;

procedure TFrm_CMP.cxButton6Click(Sender: TObject);
var
  I: Integer;
  Msg: string;
begin
//  SMSDatas.
	for I := 0 to Length(SMSDatas) - 1 do
  begin
    if ( ( SMSDatas[I].MsgNo >= 700 ) And ( SMSDatas[I].MsgNo <= 749 ) ) then
    begin
      //  ����޺� ���ڼ��� - �̿�Ƚ����/���ϸ����� �κ��� ����ޱ��� ���縦 �Ҽ� �����Ƿ� �н�
    end else
    begin
      DisplaySms(SMSDatas[I].MsgNo, SMSDatas[I].Use, SMSDatas[I].From, SMSDatas[I].Sendtime,
                 SMSDatas[I].Option1, SMSDatas[I].Option2, SMSDatas[I].Msg);
    end;
  end;

  Msg := '���������� �ٿ��־����ϴ�.' + #13#10
        + '�ش� ���翡 �°� �޽����� �����Ͻð� ' + #13#10
        + '[��������] ��ư�� Ŭ���ϼž� SMS���� ������ ����˴ϴ�.';

  GMessagebox(Msg, CDMSE);
end;

procedure TFrm_CMP.cxButton88Click(Sender: TObject);
begin
	if pnl12.Visible then pnl12.Visible := False
	else
	begin
    grpSMSRank.Tag := 702;
    grpSMSRank.Caption := '  ���ϸ��� �� ����� ����';
    Pnl14.Visible := False;
    cxLabel69.Caption := '���ϸ���';
    cxGridColumn9.Caption := '���ϸ���(from)';
    cxGridColumn10.Caption := '���ϸ���(to)';

		pnl12.Visible := True;
		proc_Get_CustRankMileList;
	end;
end;

procedure TFrm_CMP.cxButton89Click(Sender: TObject);
var i, iRow, fRow : integer;
begin
	if cbbCustRankMileName.ItemIndex = - 1 then
	begin
		GMessagebox('������� �������� �ʾҽ��ϴ�.', CDMSE);
		Exit;
	end;
	fRow := cxGridCustMileSMSList.DataController.FindRecordIndexByText(0, 0, cbbCustRankMIleName.Text, True, False, True);
	if fRow > -1 then
	begin
		cxGridCustMileSMSList.DataController.Values[fRow, 2] := mmoSMS702.Text;
		cxGridCustMileSMSList.DataController.Values[fRow, 3] := lblSMS702.Caption;
		cxGridCustMileSMSList.DataController.Values[fRow+1, 2] := mmoSMS703.Text;
		cxGridCustMileSMSList.DataController.Values[fRow+1, 3] := lblSMS703.Caption;
	end
	else
	begin
		cxGridCustMileSMSList.BeginUpdate;
		for i := 0 to 1 do
		begin
			iRow := cxGridCustMileSMSList.DataController.AppendRecord;
			cxGridCustMileSMSList.DataController.Values[iRow, 0] := cbbCustRankMileName.Text;
			if i = 0 then
			begin
				cxGridCustMileSMSList.DataController.Values[iRow, 1] := 'ù��°';
				cxGridCustMileSMSList.DataController.Values[iRow, 2] := mmoSMS702.Text;
				cxGridCustMileSMSList.DataController.Values[iRow, 3] := lblSMS702.Caption;
				if iRow = 0 then
					cxGridCustMileSMSList.DataController.Values[iRow, 4] := inttostr(730 + iRow)
				else
					cxGridCustMileSMSList.DataController.Values[iRow, 4] := inttostr(730 + (iRow div 2));
			end else
			begin
				cxGridCustMileSMSList.DataController.Values[iRow, 1] := '�ι�°';
				cxGridCustMileSMSList.DataController.Values[iRow, 2] := mmoSMS703.Text;
				cxGridCustMileSMSList.DataController.Values[iRow, 3] := lblSMS703.Caption;
				if iRow = 1 then
					cxGridCustMileSMSList.DataController.Values[iRow, 4] := inttostr(740 + iRow - 1)
				else
					cxGridCustMileSMSList.DataController.Values[iRow, 4] := inttostr(740 + (iRow div 2));
			end;
		end;
		cxGridCustMileSMSList.EndUpdate;
	end;
end;

procedure TFrm_CMP.cxButton90Click(Sender: TObject);
var iRow, fRow, i : integer;
 sCustName : string;
begin
	iRow := cxGridCustMIleSMSList.DataController.FocusedRecordIndex;
	sCustName := cxGridCustMIleSMSList.DataController.Values[iRow, 0];
	for i := 0 to cxGridCustMIleSMSList.DataController.RecordCount - 1 do
	begin
		fRow := cxGridCustMIleSMSList.DataController.FindRecordIndexByText(0, 0, sCustName, True, False, True);
		if fRow > - 1 then
			cxGridCustMIleSMSList.DataController.DeleteRecord(fRow);
	end;
//	GMessagebox('�ش� ���� ������ �����Ǿ����ϴ�.', CDMSI);
end;

procedure TFrm_CMP.mmoSMS311Click(Sender: TObject);
begin
	// �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

  cxButton14.Tag := 311;
  cxButton15.Tag := 311;
  cxButton17.Tag := 311;
  cxButton16.Tag := 311;
	btn43.Tag := 311;
	cxButton144.Tag := 311;
end;

procedure TFrm_CMP.mmoSMS315Click(Sender: TObject);
begin
	// �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

	cxButton14.Tag := 315;
	cxButton15.Tag := 315;
	cxButton17.Tag := 315;
	cxButton16.Tag := 315;
	btn43.Tag := 315;
	cxButton144.Tag := 315;
end;

procedure TFrm_CMP.mmoSMS312Click(Sender: TObject);
begin
	// �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

  cxButton18.Tag := 312;
  cxButton19.Tag := 312;
  cxButton20.Tag := 312;
	cxButton21.Tag := 312;
	btn44.Tag := 312;
	cxButton145.Tag := 312;
end;

procedure TFrm_CMP.mmoSMS316Click(Sender: TObject);
begin
  // �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

  cxButton18.Tag := 316;
  cxButton19.Tag := 316;
  cxButton20.Tag := 316;
	cxButton21.Tag := 316;
	btn44.Tag := 316;
	cxButton145.Tag := 316;
end;

procedure TFrm_CMP.mmoSMS313Click(Sender: TObject);
begin
	// �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

  btn1.Tag := 313;
	btn2.Tag := 313;
  btn7.Tag := 313;
	btn8.Tag := 313;
	btn45.Tag := 313;
	cxButton146.Tag := 313;
end;

procedure TFrm_CMP.mmoSMS317Click(Sender: TObject);
begin
  // �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

  btn1.Tag := 317;
  btn2.Tag := 317;
  btn7.Tag := 317;
	btn8.Tag := 317;
	btn45.Tag := 317;
	cxButton146.Tag := 317;
end;

procedure TFrm_CMP.mmoSMS310Click(Sender: TObject);
begin
	// �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

  cxButton10.Tag := 310;
  cxButton11.Tag := 310;
  cxButton12.Tag := 310;
	cxButton13.Tag := 310;
	btn46.Tag := 310;
	cxButton147.Tag := 310;
end;

procedure TFrm_CMP.mmoSMS318Click(Sender: TObject);
begin
	// �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

	cxButton10.Tag := 318;
	cxButton11.Tag := 318;
	cxButton12.Tag := 318;
	cxButton13.Tag := 318;
	btn46.Tag := 318;
	cxButton147.Tag := 318;
end;

procedure TFrm_CMP.mmoSMS327Click(Sender: TObject);
begin
	cxButton116.Tag := TcxMemo(Sender).Tag;
	cxButton119.Tag := TcxMemo(Sender).Tag;
	cxButton118.Tag := TcxMemo(Sender).Tag;
	cxButton120.Tag := TcxMemo(Sender).Tag;
	cxButton117.Tag := TcxMemo(Sender).Tag;
	cxButton151.Tag := TcxMemo(Sender).Tag;
	cxButton152.Tag := TcxMemo(Sender).Tag;
end;

procedure TFrm_CMP.mmoSMS411Click(Sender: TObject);
begin
	// �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

  cxButton7.Tag := 411;
  cxButton8.Tag := 411;
  cxButton9.Tag := 411;
	cxButton26.Tag := 411;
	btn47.Tag := 411;
	cxButton153.Tag := 411;
end;

procedure TFrm_CMP.mmoSMS415Click(Sender: TObject);
begin
  // �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

  cxButton7.Tag := 415;
  cxButton8.Tag := 415;
  cxButton9.Tag := 415;
	cxButton26.Tag := 415;
	btn47.Tag := 415;
	cxButton153.Tag := 415;
end;

procedure TFrm_CMP.mmoSMS412Click(Sender: TObject);
begin
	// �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

  cxButton27.Tag := 412;
  cxButton28.Tag := 412;
  cxButton29.Tag := 412;
	cxButton30.Tag := 412;
	btn48.Tag := 412;
  cxButton148.Tag := 412;
end;

procedure TFrm_CMP.mmoSMS416Click(Sender: TObject);
begin
	// �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

	cxButton27.Tag := 416;
	cxButton28.Tag := 416;
	cxButton29.Tag := 416;
	cxButton30.Tag := 416;
	btn48.Tag := 416;
  cxButton148.Tag := 416;
end;

procedure TFrm_CMP.mmoSMS413Click(Sender: TObject);
begin
	// �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

  cxButton31.Tag := 413;
  cxButton32.Tag := 413;
  cxButton33.Tag := 413;
	cxButton34.Tag := 413;
	btn49.Tag := 413;
  cxButton149.Tag := 413;
end;

procedure TFrm_CMP.mmoSMS417Click(Sender: TObject);
begin
  // �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

  cxButton31.Tag := 417;
  cxButton32.Tag := 417;
  cxButton33.Tag := 417;
	cxButton34.Tag := 417;
	btn49.Tag := 417;
  cxButton149.Tag := 417;
end;

procedure TFrm_CMP.mmoSMS410Click(Sender: TObject);
begin
	// �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

  cxButton35.Tag := 410;
  cxButton36.Tag := 410;
  cxButton37.Tag := 410;
	cxButton38.Tag := 410;
	cxButton38.Tag := 410;
	btn50.Tag := 410;
  cxButton150.Tag := 410;
end;

procedure TFrm_CMP.mmoSMS418Click(Sender: TObject);
begin
  // �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

  cxButton35.Tag := 418;
  cxButton36.Tag := 418;
  cxButton37.Tag := 418;
	cxButton38.Tag := 418;
	btn50.Tag := 418;
  cxButton150.Tag := 418;
end;

procedure TFrm_CMP.mmoSMS427Click(Sender: TObject);
begin
	cxButton121.Tag := TcxMemo(Sender).Tag;
	cxButton122.Tag := TcxMemo(Sender).Tag;
	cxButton123.Tag := TcxMemo(Sender).Tag;
	cxButton124.Tag := TcxMemo(Sender).Tag;
	cxButton125.Tag := TcxMemo(Sender).Tag;
	cxButton152.Tag := TcxMemo(Sender).Tag;
end;

procedure TFrm_CMP.mmoSMS511Click(Sender: TObject);
begin
	// �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

  cxButton39.Tag := 511;
  cxButton40.Tag := 511;
  cxButton41.Tag := 511;
	cxButton42.Tag := 511;
	btn51.Tag := 511;
  cxButton159.Tag := 511;
end;

procedure TFrm_CMP.mmoSMS515Click(Sender: TObject);
begin
  // �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

  cxButton39.Tag := 515;
  cxButton40.Tag := 515;
  cxButton41.Tag := 515;
	cxButton42.Tag := 515;
	btn51.Tag := 515;
  cxButton159.Tag := 515;
end;

procedure TFrm_CMP.mmoSMS512Click(Sender: TObject);
begin
	// �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

  cxButton43.Tag := 512;
  cxButton44.Tag := 512;
	cxButton45.Tag := 512;
	cxButton46.Tag := 512;
	btn52.Tag := 512;
  cxButton154.Tag := 512;
end;

procedure TFrm_CMP.mmoSMS516Click(Sender: TObject);
begin
  // �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

  cxButton43.Tag := 516;
  cxButton44.Tag := 516;
  cxButton45.Tag := 516;
	cxButton46.Tag := 516;
	btn52.Tag := 516;
  cxButton154.Tag := 516;
end;

procedure TFrm_CMP.mmoSMS513Click(Sender: TObject);
begin
	// �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

	cxButton47.Tag := 513;
  cxButton48.Tag := 513;
	cxButton49.Tag := 513;
	cxButton50.Tag := 513;
	btn53.Tag := 513;
	cxButton155.Tag := 513;
end;

procedure TFrm_CMP.mmoSMS517Click(Sender: TObject);
begin
  // �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

  cxButton47.Tag := 517;
  cxButton48.Tag := 517;
  cxButton49.Tag := 517;
	cxButton50.Tag := 517;
	btn53.Tag := 517;
	cxButton155.Tag := 517;
end;

procedure TFrm_CMP.mmoSMS510Click(Sender: TObject);
begin
	// �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

  cxButton51.Tag := 510;
  cxButton52.Tag := 510;
  cxButton53.Tag := 510;
	cxButton54.Tag := 510;
	btn54.Tag := 510;
	cxButton156.Tag := 510;
end;

procedure TFrm_CMP.mmoSMS518Click(Sender: TObject);
begin
  // �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

  cxButton51.Tag := 518;
  cxButton52.Tag := 518;
  cxButton53.Tag := 518;
	cxButton54.Tag := 518;
	btn54.Tag := 518;
	cxButton156.Tag := 518;
end;

procedure TFrm_CMP.mmoSMS527Click(Sender: TObject);
begin
	cxButton126.Tag := TcxMemo(Sender).Tag;
	cxButton127.Tag := TcxMemo(Sender).Tag;
	cxButton128.Tag := TcxMemo(Sender).Tag;
	cxButton129.Tag := TcxMemo(Sender).Tag;
	cxButton130.Tag := TcxMemo(Sender).Tag;
	cxButton157.Tag := TcxMemo(Sender).Tag;
end;

procedure TFrm_CMP.mmoSMS611Click(Sender: TObject);
begin
	// �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

  cxButton55.Tag := 611;
  cxButton56.Tag := 611;
  cxButton57.Tag := 611;
	cxButton58.Tag := 611;
	btn55.Tag := 611;
	cxButton164.Tag := 611;
end;

procedure TFrm_CMP.mmoSMS615Click(Sender: TObject);
begin
  // �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

	cxButton55.Tag := 615;
  cxButton56.Tag := 615;
  cxButton57.Tag := 615;
	cxButton58.Tag := 615;
	btn55.Tag := 615;
	cxButton164.Tag := 615;
end;

procedure TFrm_CMP.mmoSMS612Click(Sender: TObject);
begin
  // �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

  cxButton59.Tag := 612;
  cxButton60.Tag := 612;
  cxButton61.Tag := 612;
	cxButton62.Tag := 612;
	btn56.Tag := 612;
  cxButton158.Tag := 612;
end;

procedure TFrm_CMP.mmoSMS616Click(Sender: TObject);
begin
  // �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

  cxButton59.Tag := 616;
  cxButton60.Tag := 616;
  cxButton61.Tag := 616;
	cxButton62.Tag := 616;
	btn56.Tag := 616;
  cxButton158.Tag := 616;
end;

procedure TFrm_CMP.mmoSMS613Click(Sender: TObject);
begin
  // �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

  cxButton63.Tag := 613;
  cxButton64.Tag := 613;
  cxButton65.Tag := 613;
	cxButton66.Tag := 613;
	btn57.Tag := 613;
  cxButton160.Tag := 613;
end;

procedure TFrm_CMP.mmoSMS617Click(Sender: TObject);
begin
  // �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

  cxButton63.Tag := 617;
  cxButton64.Tag := 617;
  cxButton65.Tag := 617;
	cxButton66.Tag := 617;
	btn57.Tag := 617;
  cxButton160.Tag := 617;
end;

procedure TFrm_CMP.mmoSMS610Click(Sender: TObject);
begin
  // �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

  cxButton67.Tag := 610;
  cxButton68.Tag := 610;
  cxButton69.Tag := 610;
	cxButton70.Tag := 610;
	btn58.Tag := 610;
  cxButton161.Tag := 610;
end;

procedure TFrm_CMP.mmoSMS618Click(Sender: TObject);
begin
  // �����, ������, ���, ���ϸ���  ��ư�� tag ���� �ٲ۴�.[�Է� �ؽ�Ʈ�ڽ� ���� ��]

	cxButton67.Tag := 618;
  cxButton68.Tag := 618;
  cxButton69.Tag := 618;
	cxButton70.Tag := 618;
	btn58.Tag := 618;
  cxButton161.Tag := 618;
end;

procedure TFrm_CMP.mmoSMS627Click(Sender: TObject);
begin
	cxButton131.Tag := TcxMemo(Sender).Tag;
	cxButton132.Tag := TcxMemo(Sender).Tag;
	cxButton133.Tag := TcxMemo(Sender).Tag;
	cxButton134.Tag := TcxMemo(Sender).Tag;
	cxButton135.Tag := TcxMemo(Sender).Tag;
	cxButton162.Tag := TcxMemo(Sender).Tag;
end;

procedure TFrm_CMP.chkSMS310Click(Sender: TObject);
begin
  if TcxCheckBox(Sender).Checked then
  begin
    edtSMSO1310.Enabled := True;
		chkSMS700.Checked := False;
	end else
  begin
    edtSMSO1310.Enabled := False;
  end;

end;

procedure TFrm_CMP.chkSMS410Click(Sender: TObject);
begin
  if TcxCheckBox(Sender).Checked then
  begin
    edtSMSO1410.Enabled := True;
  end else
  begin
    edtSMSO1410.Enabled := False;
  end;
end;

procedure TFrm_CMP.chkSMS510Click(Sender: TObject);
begin
  if TcxCheckBox(Sender).Checked then
  begin
    edtSMSO1510.Enabled := True;
  end else
  begin
    edtSMSO1510.Enabled := False;
  end;
end;

procedure TFrm_CMP.chkSMS610Click(Sender: TObject);
begin
  if TcxCheckBox(Sender).Checked then
  begin
    edtSMSO1610.Enabled := True;
  end else
  begin
    edtSMSO1610.Enabled := False;
  end;
end;

procedure TFrm_CMP.chkSMS412Click(Sender: TObject);
begin
  if TcxCheckBox(Sender).Tag = 1 then Exit;

  if TcxCheckBox(Sender).Checked then
  begin
    edtSMSO1413.Text := IntToStr(edtSMSO2412.Value + 1);
    edtSMSO2412.Enabled := True;
  end else
  begin
    edtSMSO2412.Enabled := False;
    edtSMSO1413.Text := '2';
  end;

  if chkSMS413.Checked then
  begin
    edtSMSO1410.Text := IntToStr(edtSMSO2413.Value + 1)
  end else
  begin
    if TcxCheckBox(Sender).Checked then
      edtSMSO1410.Text := IntToStr(edtSMSO2412.Value + 1)
    else
      edtSMSO1410.Text := '2';
  end;
end;

procedure TFrm_CMP.chkSMS512Click(Sender: TObject);
begin
  if TcxCheckBox(Sender).Tag = 1 then Exit;

  if TcxCheckBox(Sender).Checked then
  begin
    edtSMSO1513.Text := IntToStr(edtSMSO2512.Value + 1);
    edtSMSO2512.Enabled := True;
  end else
  begin
    edtSMSO2512.Enabled := False;
    edtSMSO1513.Text := '2';
  end;

  if chkSMS513.Checked then
  begin
    edtSMSO1510.Text := IntToStr(edtSMSO2513.Value + 1)
  end else
  begin
    if TcxCheckBox(Sender).Checked then
      edtSMSO1510.Text := IntToStr(edtSMSO2512.Value + 1)
    else
      edtSMSO1510.Text := '2';
  end;
end;

procedure TFrm_CMP.chkSMS612Click(Sender: TObject);
begin
  if TcxCheckBox(Sender).Tag = 1 then Exit;

  if TcxCheckBox(Sender).Checked then
  begin
		edtSMSO1613.Text := IntToStr(edtSMSO2612.Value + 1);
    edtSMSO2612.Enabled := True;
  end else
  begin
    edtSMSO2612.Enabled := False;
    edtSMSO1613.Text := '2';
  end;

  if chkSMS613.Checked then
  begin
    edtSMSO1610.Text := IntToStr(edtSMSO2613.Value + 1)
  end else
  begin
    if TcxCheckBox(Sender).Checked then
      edtSMSO1610.Text := IntToStr(edtSMSO2612.Value + 1)
    else
      edtSMSO1610.Text := '2';
  end;
end;

procedure TFrm_CMP.chkSMS413Click(Sender: TObject);
begin
  if TcxCheckBox(Sender).Tag = 1 then Exit;

  if TcxCheckBox(Sender).Checked then
  begin
    edtSMSO1410.Text := IntToStr(edtSMSO2413.Value + 1);
    edtSMSO2413.Enabled := True;
  end else
  begin
    edtSMSO2413.Enabled := False;

    if chkSMS412.Checked then
      edtSMSO1410.Text := IntToStr(edtSMSO2412.Value + 1)
    else
      edtSMSO1410.Text := '2';
  end;
end;

procedure TFrm_CMP.chkSMS513Click(Sender: TObject);
begin
  if TcxCheckBox(Sender).Tag = 1 then Exit;

  if TcxCheckBox(Sender).Checked then
  begin
    edtSMSO1510.Text := IntToStr(edtSMSO2513.Value + 1);
    edtSMSO2513.Enabled := True;
  end else
  begin
    edtSMSO2513.Enabled := False;

    if chkSMS512.Checked then
      edtSMSO1510.Text := IntToStr(edtSMSO2512.Value + 1)
    else
      edtSMSO1510.Text := '2';
  end;
end;

procedure TFrm_CMP.chkSMS613Click(Sender: TObject);
begin
  if TcxCheckBox(Sender).Tag = 1 then Exit;

  if TcxCheckBox(Sender).Checked then
  begin
    edtSMSO1610.Text := IntToStr(edtSMSO2613.Value + 1);
    edtSMSO2613.Enabled := True;
  end else
  begin
    edtSMSO2613.Enabled := False;

    if chkSMS612.Checked then
			edtSMSO1610.Text := IntToStr(edtSMSO2612.Value + 1)
    else
      edtSMSO1610.Text := '2';
  end;
end;

procedure TFrm_CMP.mmoSMS110Click(Sender: TObject);
begin
	btn3.Tag := 110;
	btn4.Tag := 110;
	btn5.Tag := 110;
	btn6.Tag := 110;
	btn9.Tag := 110;
	cxButton98.Tag := 110;
	cxButton104.Tag := 110;
	cxButton105.Tag := 110;
	cxButton137.Tag := 110;
	btn41.Tag := 110;
	btn42.Tag := 110;
	btn59.Tag := 110;
	rb1101.Tag := 110;
	rb1102.Tag := 110;
	rb1103.Tag := 110;
end;

procedure TFrm_CMP.mmoSMS114Click(Sender: TObject);
begin
	btn3.Tag := 114;
	btn4.Tag := 114;
	btn5.Tag := 114;
	btn6.Tag := 114;
	btn9.Tag := 114;
	cxButton98.Tag := 114;
	cxButton104.Tag := 114;
	cxButton105.Tag := 114;
	cxButton137.Tag := 114;
	btn41.Tag := 114;
	btn42.Tag := 114;
	btn59.Tag := 114;
	rb1101.Tag := 114;
	rb1102.Tag := 114;
	rb1103.Tag := 114;
end;

procedure TFrm_CMP.mmoSMS116Click(Sender: TObject);
begin
	cxButton80.Tag := 116;
	cxButton81.Tag := 116;
	cxButton79.Tag := 116;
	cxButton82.Tag := 116;
	cxButton2 .Tag := 116;
	cxButton77.Tag := 116;
	cxButton76.Tag := 116;
	cxButton78.Tag := 116;
	RadioButton5.Tag := 116;
	RadioButton6.Tag := 116;
	RadioButton7.Tag := 116;
	cxButton106.Tag := 116;
	cxButton139.Tag := 116;

end;

procedure TFrm_CMP.mmoSMS117Click(Sender: TObject);
begin
	cxButton113.Tag := 117;
	cxButton114.Tag := 117;
	cxButton111.Tag := 117;
	cxButton112.Tag := 117;
	cxButton110.Tag := 117;
	cxButton109.Tag := 117;
	cxButton107.Tag := 117;
	cxButton136.Tag := 117;
end;

procedure TFrm_CMP.mmoSMS117Exit(Sender: TObject);
var AMemo : TcxMemo;
	AValue, sTmp : string;
	iPos : integer;
begin
	AMemo := TcxMemo(Sender);

	AValue := '%��URL%';
	iPos := Pos(AValue, AMemo.Text);
	if (iPos > 0) and (Length(AValue) < Length(AMemo.Text)) then
	begin
		if iPos = 1 then
		begin
			if Copy(AMemo.Text, Length(AValue) + 1, 1) <> ' ' then
			begin
				AMemo.Text := StringReplace(AMemo.Text, AValue, AValue+#32, [rfReplaceAll]);
//				sTmp := StringReplace(AMemo.Text, AValue, '%��URL% ', [rfReplaceAll]);
//				AMemo.clear;
//				AMemo.Lines.Add(Trim(sTmp));
			end;
		end
		else
		begin
			sTmp := Copy(AMemo.Text, iPos + Length(AValue), 1);
			if (sTmp <> '') and (sTmp <> ' ') then
			begin
				AMemo.Text := StringReplace(AMemo.Text, AValue, AValue+#32, [rfReplaceAll]);
{				sTmp := StringReplace(AMemo.Text, AValue, '%��URL% ', [rfReplaceAll]);
				AMemo.clear;
				AMemo.Lines.Add(Trim(sTmp));}
			end;
			sTmp := Copy(AMemo.Text, iPos - 1, 1);
			if (sTmp <> '') and (sTmp <> ' ') then
			begin
				AMemo.Text := StringReplace(AMemo.Text, AValue, #32+AValue, [rfReplaceAll]);
{				sTmp := StringReplace(AMemo.Text, AValue, ' %��URL%', [rfReplaceAll]);
				AMemo.clear;
				AMemo.Lines.Add(Trim(sTmp)); }
			end;
		end;
	end;
	AValue := '%�����ġ%';
//	sTmp := AValue + ' ';
	iPos := Pos(AValue, AMemo.Text);
	if (iPos > 0) and (Length(AValue) < Length(AMemo.Text)) then
	begin
		if iPos = 1 then
		begin
			if Copy(AMemo.Text, Length(AValue) + 1, 1) <> ' ' then
			begin
				AMemo.Text := StringReplace(AMemo.Text, AValue, AValue+#32, [rfReplaceAll]);
{				sTmp := StringReplace(AMemo.Text, AValue, '%�����ġ% ', [rfReplaceAll]);
				AMemo.clear;
				AMemo.Lines.Add(Trim(sTmp)); }
			end;
		end
		else
		begin
			sTmp := Copy(AMemo.Text, iPos + Length(AValue), 1);
			if (sTmp <> '') and (sTmp <> ' ') then
			begin
				AMemo.Text := StringReplace(AMemo.Text, AValue, AValue+#32, [rfReplaceAll]);
{				sTmp := StringReplace(AMemo.Text, AValue, '%�����ġ% ', [rfReplaceAll]);
				AMemo.clear;
				AMemo.Lines.Add(Trim(sTmp));   }
			end;
			if Copy(AMemo.Text, iPos - 1, 1) <> ' ' then
			begin
				AMemo.Text := StringReplace(AMemo.Text, AValue, #32+AValue, [rfReplaceAll]);
{				sTmp := StringReplace(AMemo.Text, AValue, ' %�����ġ%', [rfReplaceAll]);
				AMemo.clear;
				AMemo.Lines.Add(Trim(sTmp));}
			end;
		end;
	end;
end;

procedure TFrm_CMP.mmoSMS140Click(Sender: TObject);
begin
	btn68.Tag := 140;
	btn69.Tag := 140;
	btn70.Tag := 140;
	btn71.Tag := 140;
end;

procedure TFrm_CMP.mmoSMS140KeyPress(Sender: TObject; var Key: Char);
var
  Len: Integer;
  AMemo: TcxMemo;
begin
  try
    AMemo := TcxMemo(Sender);
		Len := GetSmsMemoLength(AnsiString(AMemo.Text));

		if Key = #3 then Exit;

		if ( gOShotStat ) then
    begin
      if Len >= 2000 then
      begin
  			Key := #0;
    		Exit;
      end;
    end else
    begin
      if Len >= 90 then
      begin
  			Key := #0;
	  		Exit;
      end;
    end;
  except
    on e : Exception do
    begin
      GMessagebox('SMS KeyPress Events Err: ' + e.Message , CDMSE);
    end;
  end;
end;

procedure TFrm_CMP.mmoSMS140KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxMemo(sender).Text := Enc_Control(TcxMemo(sender).Text);
end;

procedure TFrm_CMP.mmoSMS140PropertiesChange(Sender: TObject);
var
  Len: Integer;
  Str: string;
  AMemo: TcxMemo;
begin
  AMemo := TcxMemo(Sender);

  Str := AMemo.Text;
  Len := GetSmsMemoLength(AnsiString(Str));

  lblSMS140.Caption := IntToStr(Len) + ' Byte';

  if m_ImgSize140 <> 0 then
  begin
    cxRBDM.Checked := True;
    LblDSMS.Caption := 'MMS';
    if Len > 2000 then
    begin
      GMessagebox('1�ǹ����� �ִ� ���ڹ����� �Ѿ����ϴ�.', CDMSE);
      mmoSMS140.Text := Copy(AnsiString(mmoSMS140.Text), 1, 2000);
    end;
  end else
  begin
  	if Len <= 90 then
    begin
      cxRBDS.Checked := True;
      LblDSMS.Caption := '�ܹ�';
    end else
  	if ( Len > 90 ) And ( Len <= 2000 ) then
  	begin
      cxRBDJ.Checked := True;
      LblDSMS.Caption := '�幮';
    end else
    if Len > 2000 then
    begin
      GMessagebox('1�ǹ����� �ִ� ���ڹ����� �Ѿ����ϴ�.', CDMSE);
      mmoSMS140.Text := Copy(AnsiString(mmoSMS140.Text), 1, 2000);
      cxRBDJ.Checked := True;
      LblDSMS.Caption := '�幮';
    end;
  end;
end;

procedure TFrm_CMP.mmoSMS141Click(Sender: TObject);
begin
	btn72.Tag := 141;
	btn73.Tag := 141;
	btn74.Tag := 141;
	btn75.Tag := 141;
end;

procedure TFrm_CMP.mmoSMS141PropertiesChange(Sender: TObject);
var
  Len: Integer;
  Str: string;
  AMemo: TcxMemo;
begin
  AMemo := TcxMemo(Sender);

  Str := AMemo.Text;
  Len := GetSmsMemoLength(AnsiString(Str));

  lblSMS141.Caption := IntToStr(Len) + ' Byte';

  if m_ImgSize141 <> 0 then
  begin
    cxRBSM.Checked := True;
    LblSSMS.Caption := 'MMS';
    if Len > 2000 then
    begin
      GMessagebox('1�ǹ����� �ִ� ���ڹ����� �Ѿ����ϴ�.', CDMSE);
      mmoSMS141.Text := Copy(AnsiString(mmoSMS141.Text), 1, 2000);
    end;
  end else
  begin
  	if Len <= 90 then
    begin
      cxRBSS.Checked := True;
      LblSSMS.Caption := '�ܹ�';
    end else
  	if ( Len > 90 ) And ( Len <= 2000 ) then
  	begin
      cxRBSJ.Checked := True;
      LblSSMS.Caption := '�幮';
    end else
    if Len > 2000 then
    begin
      GMessagebox('1�ǹ����� �ִ� ���ڹ����� �Ѿ����ϴ�.', CDMSE);
      mmoSMS141.Text := Copy(AnsiString(mmoSMS141.Text), 1, 2000);
      cxRBSJ.Checked := True;
      LblSSMS.Caption := '�幮';
    end;
  end;
end;

procedure TFrm_CMP.pop_up1Popup(Sender: TObject);
begin
	if Comm_List.count < 1 then
	begin
		N1.Enabled := False;
		N3.Enabled := False;
	end
	else
	begin
		N1.Enabled := True;
		N3.Enabled := True;
	end;
end;

procedure TFrm_CMP.btnSMSRankGrid1Click(Sender: TObject);
begin
	MemoText(TcxButton(Sender).Tag, Format('%%%s%%', [TcxButton(Sender).Hint]));
end;

procedure TFrm_CMP.AdvStrnGrd1CellChanging(Sender: TObject; OldRow, OldCol,
  NewRow, NewCol: Integer; var Allow: Boolean);
begin
	sBefore := AdvStrnGrd1.cells[OldCol, OldRow];//������Ŀ��
	sAfter  := AdvStrnGrd1.cells[NewCol, NewRow];//�̵��� ��
end;

procedure TFrm_CMP.AdvStrnGrd1CheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
var chkBoolean : boolean;
begin
	if (ARow <> 0) and (ARow <> 1) and (ACol = 0) then
	begin
		AdvStrnGrd1.GetCheckBoxState(0,ARow,chkBoolean);

		if chkBoolean then
			AdvStrnGrd1.Cells[3,ARow] := '�����'
		else if not chkBoolean then
			AdvStrnGrd1.Cells[3,ARow] := '������';
	end;
	AdvStrnGrd1.Refresh;
end;

procedure TFrm_CMP.AdvStrnGrd1ClickCell(Sender: TObject; ARow, ACol: Integer);
var i : integer;
	chkBoolean : Boolean;
begin
	if (AdvStrnGrd1.Row in [0,1]) and (AdvStrnGrd1.Col = 0) then
	begin
		AdvStrnGrd1.GetCheckBoxState(0,2,chkBoolean);

		for i := 2 to AdvStrnGrd1.RowCount - 1 do
		begin
			AdvStrnGrd1.SetCheckBoxState(0,i, not chkBoolean);
      if chkBoolean then AdvStrnGrd1.Cells[3, i] := '������'
                    else AdvStrnGrd1.Cells[3, i] := '�����';
		end;
		AdvStrnGrd1.Refresh;
	end;
end;

procedure TFrm_CMP.AdvStrnGrd1GetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
	if ARow In [0, 1] then
  begin
    VAlign := vtaCenter;
    HAlign := tacenter;
  end;

	if ACol In [0,1,3,4, 5..16, 17, 18] then HAlign := tacenter;
end;

procedure TFrm_CMP.AdvStrnGrd1GetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
	if AdvStrnGrd1.cells[3,ARow] = '������' then ABrush.Color := $00E1DFDF else
	if AdvStrnGrd1.cells[3,ARow] = '�����'   then ABrush.Color := clWindow;
end;

procedure TFrm_CMP.btn26Click(Sender: TObject);
begin
	if pnl12.Visible then pnl12.Visible := False
	else
	begin
    grpSMSRank.Tag := 700;
    grpSMSRank.Caption := '  �̿�Ƚ�� �� ����� ����';
    Pnl14.Visible := True;
    cxLabel69.Caption := '�̿�Ƚ��';
    cxGridColumn9.Caption := '�̿�Ƚ��(from)';
    cxGridColumn10.Caption := '�̿�Ƚ��(to)';
		pnl12.Visible := True;
		proc_Get_CustRankList;
	end;
end;

procedure TFrm_CMP.btnDtlKeyPhoneTopClick(Sender: TObject);
var i, iMaxCnt : integer;
begin
	if pnlCustRankName.Visible then pnlCustRankName.Visible := False
	else
	begin
		pnlCustRankName.Visible := True;
		btnCustRankAdd.Caption := '�߰�';
//		cbbCustRankCode.ItemIndex := 0;
		iMaxCnt := 0;
		for i := 0 to cxGridCustRankList.DataController.RecordCount - 1 do
		begin
			if iMaxCnt <= strtoint(cxGridCustRankList.DataController.Values[i, 3]) then
				iMaxCnt := strtoint(cxGridCustRankList.DataController.Values[i, 3]);
		end;
		sedtCustRankFrom.Text := IntToStr(iMaxCnt + 1);
		sedtCustRankTo.Text := IntToStr(iMaxCnt + 2);
	end;
end;

procedure TFrm_CMP.btnHeadCancelClick(Sender: TObject);
Var sMsg : String;
begin
  if GS_NICE_CHK then
  begin
    sMsg := '�������� �� ����/���� ���� ����Ͻðڽ��ϱ�?';
    if Application.MessageBox(PChar(sMsg), '', MB_YESNO + MB_ICONINFORMATION) = IDNO then Exit;
  end;
  GS_NICE_CHK := False;
  DisplayHeadInfo(FHeadInfo);
end;

procedure TFrm_CMP.btnHeadEditClick(Sender: TObject);
begin
  UpdateDataHead;
  GS_NICE_CHK := False;
end;

procedure TFrm_CMP.btnHeadSymbolPanelCloseClick(Sender: TObject);
begin
  pnlHeadSymbol.Visible := False;
end;

procedure TFrm_CMP.BtnImageDClick(Sender: TObject);
var
  FH1 ,iCount : Integer;
begin
  if btn_OShotSummit.Enabled then
  begin
    MessageDlg('OShot ������ MMS ��� �����մϴ�.', mtWarning, [mbOK], 0);
    Exit;
  end;
  If OpenDialogImg.Execute then
  Begin
    FH1 :=  FileOpen(OpenDialogImg.Filename, fmShareDenyWrite);
    m_ImgSize140 := FileSeek(FH1,0,2);
    If m_ImgSize140 > 200000 then
    Begin
      MessageDlg('�̹������� ũ��� 200kbyte�� ���� �� �����ϴ�.', mtWarning, [mbOK], 0);
      m_ImgSize140 := 0;
      Exit ;
    End;
    FileSeek(FH1,0,0);
    if FH1 <> -1 then
    begin
      iCount := FileRead(FH1,m_ImgBff140, Sizeof(m_ImgBff140));
      FileClose(FH1);
    end;
    imgDMMS.Picture.LoadFromFile(OpenDialogImg.FileName);
    cxRBDM.Checked := True;
    LblDSMS.Caption := 'MMS';
    cxRBDJClick(cxRBDM);
  End;
end;

procedure TFrm_CMP.pGetLoadBuffer(sFileName, sGubun : String );
var
  FH1 ,iCount : Integer;
begin
  if sGubun = '140' then
  begin
    FH1 :=  FileOpen(sFileName, fmShareDenyWrite);
    m_ImgSize140 := FileSeek(FH1,0,2);
    If m_ImgSize140 > 200000 then
    Begin
      MessageDlg('�̹������� ũ��� 200kbyte�� ���� �� �����ϴ�.', mtWarning, [mbOK], 0);
      m_ImgSize140 := 0;
      Exit ;
    End;
    FileSeek(FH1,0,0);
    if FH1 <> -1 then
    begin
      iCount := FileRead(FH1,m_ImgBff140, Sizeof(m_ImgBff140));
      FileClose(FH1);
    end;
  end else
  if sGubun = '141' then
  begin
    FH1 :=  FileOpen(sFileName, fmShareDenyWrite);
    m_ImgSize141 := FileSeek(FH1,0,2);
    If m_ImgSize141 > 200000 then
    Begin
      MessageDlg('�̹������� ũ��� 200kbyte�� ���� �� �����ϴ�.', mtWarning, [mbOK], 0);
      m_ImgSize141 := 0;
      Exit ;
    End;
    FileSeek(FH1,0,0);
    if FH1 <> -1 then
    begin
      iCount := FileRead(FH1,m_ImgBff141, Sizeof(m_ImgBff141));
      FileClose(FH1);
    end;
  end;
end;

procedure TFrm_CMP.BtnImageDelDClick(Sender: TObject);
var
  Len: Integer;
begin
  m_ImgSize140 := 0;
  ImgDMMS.Picture := Nil;

  Len := GetSmsMemoLength(AnsiString(mmoSMS140.Text));
	if Len <= 90 then
  begin
    cxRBDS.Checked := True;
    LblDSMS.Caption := '�ܹ�';
  end else
	if ( Len > 90 ) And ( Len <= 2000 ) then
	begin
    cxRBDJ.Checked := True;
    LblDSMS.Caption := '�幮';
  end;
  cxRBDJClick(cxRBDM);
end;

procedure TFrm_CMP.BtnImageDelSClick(Sender: TObject);
var
  Len: Integer;
begin
  m_ImgSize141 := 0;
  ImgSMMS.Picture := Nil;

  Len := GetSmsMemoLength(AnsiString(mmoSMS141.Text));
	if Len <= 90 then
  begin
    cxRBSS.Checked := True;
    LblSSMS.Caption := '�ܹ�';
  end else
	if ( Len > 90 ) And ( Len <= 2000 ) then
	begin
    cxRBSJ.Checked := True;
    LblSSMS.Caption := '�幮';
  end;
  cxRBSJClick(cxRBSM);
end;

procedure TFrm_CMP.BtnImageSClick(Sender: TObject);
var
  FH1 ,iCount : Integer;
begin
  if btn_OShotSummit.Enabled then
  begin
    MessageDlg('OShot ������ MMS ��� �����մϴ�.', mtWarning, [mbOK], 0);
    Exit;
  end;
  If OpenDialogImg.Execute then
  Begin
    FH1 :=  FileOpen(OpenDialogImg.Filename, fmShareDenyWrite);
    m_ImgSize141 := FileSeek(FH1,0,2);
    If m_ImgSize141 > 200000 then
    Begin
      MessageDlg('�̹������� ũ��� 200kbyte�� ���� �� �����ϴ�.', mtWarning, [mbOK], 0);
      m_ImgSize141 := 0;
      Exit ;
    End;
    FileSeek(FH1,0,0);
    if FH1 <> -1 then
    begin
      iCount := FileRead(FH1,m_ImgBff141, Sizeof(m_ImgBff141));
      FileClose(FH1);
    end;
    imgSMMS.Picture.LoadFromFile(OpenDialogImg.FileName);
    cxRBSM.Checked := True;
    LblSSMS.Caption := 'MMS';
    cxRBSJClick(cxRBSM);
  End;
end;

procedure TFrm_CMP.btnCustRankCloseClick(Sender: TObject);
begin
//	cbbCustRankCode.ItemIndex := -1;
	edtCustRankName.Text := '';
	sedtCustRankFrom.Text := '0';
	sedtCustRankTo.Text := '0';
	pnlCustRankName.Visible := False;
end;

procedure TFrm_CMP.btnCloseClick(Sender: TObject);
begin
  pnlHelpA4.Visible := False;
end;

procedure TFrm_CMP.btnCustRankAddClick(Sender: TObject);
var iRow, i, fCnt, tCnt : integer;
    sTitle : String;
begin
  if grpSMSRank.Tag = 700 then sTitle := '�̿�Ƚ��' else
  if grpSMSRank.Tag = 702 then sTitle := '���ϸ���';

	if cxGridCustRankList.DataController.RecordCount >= 10 then
	begin
		GMessagebox('����� ��� �ʰ��Դϴ�.' + #13#10 + '������� 10�������� ��� �����մϴ�..', CDMSE);
		edtCustRankName.SetFocus;
		exit;
	end;

	for i := 0 to cxGridCustRankList.DataController.RecordCount - 1 do
	begin
		if cxGridCustRankList.DataController.Values[i, 1] = Trim(edtCustRankName.Text) then
		begin
			GMessagebox('������ ����ϸ��� �����մϴ�.' + #13#10 + '�ٸ��̸��� �Է��ϼ���.', CDMSE);
			edtCustRankName.SetFocus;
			exit;
		end;


		fCnt := strtoint(cxGridCustRankList.DataController.Values[i, 2]);
		tCnt := strtoint(cxGridCustRankList.DataController.Values[i, 3]);
		if (strtoint(sedtCustRankFrom.text) >= fCnt) and
			 (strtoint(sedtCustRankFrom.text) <= tCnt) then
		begin
			GMessagebox('�Է��Ͻ� ' + sTitle + '�� �̵̹�ϵ� �������� �ֽ��ϴ�.' + #13#10 + '�ٽ� �Է��ϼ���.', CDMSE);
			sedtCustRankFrom.SetFocus;
			exit;
		end;
		if (strtoint(sedtCustRankTo.text) >= fCnt) and
			 (strtoint(sedtCustRankTo.text) <= tCnt) then
		begin
			GMessagebox('�Է��Ͻ� ' + sTitle + '�� �̵̹�ϵ� �������� �ֽ��ϴ�.' + #13#10 + '�ٽ� �Է��ϼ���.', CDMSE);
			sedtCustRankTo.SetFocus;
			exit;
		end;
		if (strtoint(sedtCustRankFrom.text) >= fCnt) and
			 (strtoint(sedtCustRankTo.text)   <= fCnt) then
		begin
			GMessagebox('�Է��Ͻ� ' + sTitle + '�� �̵̹�ϵ� �������� �ֽ��ϴ�.' + #13#10 + '�ٽ� �Է��ϼ���.', CDMSE);
			sedtCustRankFrom.SetFocus;
			exit;
		end;
		if (strtoint(sedtCustRankFrom.text) <= tCnt) and
			 (strtoint(sedtCustRankTo.text)   >= tCnt) then
		begin
			GMessagebox('�Է��Ͻ� ' + sTitle + '�� �̵̹�ϵ� �������� �ֽ��ϴ�.' + #13#10 + '�ٽ� �Է��ϼ���.', CDMSE);
			sedtCustRankFrom.SetFocus;
			exit;
		end;
		if (strtoint(sedtCustRankFrom.text) > strtoint(sedtCustRankTo.text)) or
			 (sedtCustRankFrom.text = '') or (sedtCustRankTo.text = '') then
		begin
			GMessagebox(sTitle + ' ������ �߸� �����Ǿ����ϴ�.' + #13#10 + '�ٽ� �Է��ϼ���.', CDMSE);
			sedtCustRankFrom.SetFocus;
			exit;
		end;
	end;
	if edtCustRankName.Text  = '' then
	begin
		GMessagebox('����ϸ��� �����ϴ�.', CDMSE);
		edtCustRankName.SetFocus;
		exit;
	end;
	if (sedtCustRankFrom.Text  = '') or (strtoint(sedtCustRankFrom.text) < 0) then
	begin
		GMessagebox(sTitle + '(from) �Է¿����Դϴ�.', CDMSE);
		sedtCustRankFrom.SetFocus;
		exit;
	end;
	if (sedtCustRankTo.Text  = '') or (strtoint(sedtCustRankTo.text) < 0) or (strtoint(sedtCustRankFrom.text) > strtoint(sedtCustRankTo.text))then
	begin
		GMessagebox(sTitle + '(to) �Է¿����Դϴ�.', CDMSE);
		sedtCustRankTo.SetFocus;
		exit;
	end;
	cxGridCustRankList.BeginUpdate;

	iRow := cxGridCustRankList.DataController.AppendRecord;
	cxGridCustRankList.DataController.Values[iRow, 0] := iRow;//cbbCustRankCode.Text;
	cxGridCustRankList.DataController.Values[iRow, 1] := edtCustRankName.Text;
	cxGridCustRankList.DataController.Values[iRow, 2] := sedtCustRankFrom.Text;
	cxGridCustRankList.DataController.Values[iRow, 3] := sedtCustRankTo.Text;
	cxGridCustRankList.EndUpdate;

//	cbbCustRankCode.ItemIndex := cbbCustRankCode.ItemIndex + 1;
	edtCustRankName.Text := '';
	sedtCustRankFrom.Text := IntToStr(StrToInt(sedtCustRankTo.Text) + 1);
	sedtCustRankTo.Text   := IntToStr(StrToInt(sedtCustRankTo.Text) + 2);
	edtCustRankName.SetFocus;
end;

procedure TFrm_CMP.btn27Click(Sender: TObject);
var
	XmlData, Param, ParamLoop, ErrMsg : string;
	i, iRowCNT, ErrCode : integer;
begin
  if grpSMSRank.Tag = 700 then
  begin
  	Try
  		iRowCNT := cxGridCustRankList.DataController.RecordCount;
  		Param := '';
  		ParamLoop := '';
  		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
  			Param := Param +  GT_SEL_BRNO.HDNO
  		else
  			Param := Param +  GT_USERIF.HD;
  		Param := Param + '��' + GT_SEL_BRNO.BrNo;
  		Param := Param + '��' + '';//��������� ''�� ǥ��
  		Param := Param + '��' + inttostr(iRowCNT);
  		Param := Param + '��' + '4';

  		for i := 0 to cxGridCustRankList.DataController.RecordCount -1 do
  		begin
  			ParamLoop := ParamLoop + '��' + cxGridCustRankList.DataController.Values[i, 0];
  			ParamLoop := ParamLoop + '��' + cxGridCustRankList.DataController.Values[i, 1];
  			ParamLoop := ParamLoop + '��' + cxGridCustRankList.DataController.Values[i, 2];
  			ParamLoop := ParamLoop + '��' + cxGridCustRankList.DataController.Values[i, 3];
  		end;
  		Param := Param + ParamLoop;
  		if not RequestBase(GetCallable05('SET_CUST_LEVEL', 'MNG_BRANCH.SET_CUST_LEVEL', Param), XmlData, ErrCode, ErrMsg) then
  		begin
  			GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
  			Exit;
  		end;
  		sCustRankCodeList.Clear;
  		sCustRankNameList.Clear;
  		for i := 0 to cxGridCustRankList.DataController.RecordCount -1 do
  		begin
  			sCustRankCodeList.add(cxGridCustRankList.DataController.Values[i, 0]);
  			sCustRankNameList.add(cxGridCustRankList.DataController.Values[i, 1]);
  		end;
  		cbbCustRankName.Clear;
  		cbbCustRankName.Properties.Items.Assign(sCustRankNameList);
  		ShowMessage('���纰 ������� ����Ǿ����ϴ�.');
  	Except
  	end;
  end else
  if grpSMSRank.Tag = 702 then
  begin
  	Try
  		iRowCNT := cxGridCustRankList.DataController.RecordCount;
  		Param := '';
  		ParamLoop := '';
  		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
  			Param := Param +  GT_SEL_BRNO.HDNO
  		else
  			Param := Param +  GT_USERIF.HD;
  		Param := Param + '��' + GT_SEL_BRNO.BrNo;
  		Param := Param + '��' + '';//��������� ''�� ǥ��
  		Param := Param + '��' + inttostr(iRowCNT);
  		Param := Param + '��' + '4';

  		for i := 0 to cxGridCustRankList.DataController.RecordCount -1 do
  		begin
  			ParamLoop := ParamLoop + '��' + cxGridCustRankList.DataController.Values[i, 0];
  			ParamLoop := ParamLoop + '��' + cxGridCustRankList.DataController.Values[i, 1];
  			ParamLoop := ParamLoop + '��' + cxGridCustRankList.DataController.Values[i, 2];
  			ParamLoop := ParamLoop + '��' + cxGridCustRankList.DataController.Values[i, 3];
  		end;
  		Param := Param + ParamLoop;
  		if not RequestBase(GetCallable05('SET_CUST_MILEAGE_LEVEL', 'MNG_BRANCH.SET_CUST_MILEAGE_LEVEL', Param), XmlData, ErrCode, ErrMsg) then
  		begin
  			GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
  			Exit;
  		end;
  		sCustRankMileCodeList.Clear;
  		sCustRankMIleNameList.Clear;
  		for i := 0 to cxGridCustRankList.DataController.RecordCount -1 do
  		begin
  			sCustRankMileCodeList.add(cxGridCustRankList.DataController.Values[i, 0]);
  			sCustRankMileNameList.add(cxGridCustRankList.DataController.Values[i, 1]);
  		end;
  		cbbCustRankMileName.Clear;
  		cbbCustRankMileName.Properties.Items.Assign(sCustRankMIleNameList);
  		ShowMessage('���纰 ������� ����Ǿ����ϴ�.');
  	Except
  	end;
  end;
end;

procedure TFrm_CMP.cxGridCustMileSMSListCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
Var iRow : Integer;
begin
	iRow := cxGridCustMileSMSList.DataController.FocusedRecordIndex;
	cbbCustRankMileName.ItemIndex := sCustRankMileNameList.IndexOf(cxGridCustMileSMSList.DataController.Values[iRow, 0]);
end;

procedure TFrm_CMP.cxGridCustRankListCellDblClick(
	Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
	AShift: TShiftState; var AHandled: Boolean);
var iRow : integer;
begin
	iRow := cxGridCustRankList.DataController.FocusedRecordIndex;
	btnCustRankAdd.Caption := '����';
	edtCustRankName.text := cxGridCustRankList.DataController.Values[iRow, 1];
	sedtCustRankFrom.text := cxGridCustRankList.DataController.Values[iRow, 2];
	sedtCustRankTo.text := cxGridCustRankList.DataController.Values[iRow, 3];
end;

procedure TFrm_CMP.btn28Click(Sender: TObject);
begin
	pnl12.Visible := False;
end;

procedure TFrm_CMP.mmoSMS700Click(Sender: TObject);
begin
	btnSMSRankGrid1.Tag := 700;
	btnSMSRankGrid2.Tag := 700;
	btnSMSRankGrid3.Tag := 700;
	btnSMSRankGrid4.Tag := 700;
	btnSMSRankGrid5.Tag := 700;
  btnSMSRankGrid6.Tag := 700;
end;

procedure TFrm_CMP.mmoSMS701Click(Sender: TObject);
begin
	btnSMSRankGrid1.Tag := 701;
	btnSMSRankGrid2.Tag := 701;
	btnSMSRankGrid3.Tag := 701;
	btnSMSRankGrid4.Tag := 701;
	btnSMSRankGrid5.Tag := 701;
  btnSMSRankGrid6.Tag := 701;
end;

procedure TFrm_CMP.mmoSMS702Click(Sender: TObject);
begin
	btnSMSRankMile1.Tag := 702;
	btnSMSRankMile2.Tag := 702;
	btnSMSRankMile3.Tag := 702;
	btnSMSRankMile4.Tag := 702;
	btnSMSRankMile5.Tag := 702;
	btnSMSRankMile6.Tag := 702;
end;

procedure TFrm_CMP.mmoSMS703Click(Sender: TObject);
begin
	btnSMSRankMile1.Tag := 703;
	btnSMSRankMile2.Tag := 703;
	btnSMSRankMile3.Tag := 703;
	btnSMSRankMile4.Tag := 703;
	btnSMSRankMile5.Tag := 703;
	btnSMSRankMile6.Tag := 703;
end;

procedure TFrm_CMP.proc_Get_CustRankList;
var
	XmlData, Param, ErrMsg : string;
	xdom: msDomDocument;
	lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd : TStringList;
	i, ErrCode, iRow : Integer;
begin
 	cxGridCustRankList.DataController.SetRecordCount(0);
	try
		Param := '';
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			Param := Param +  GT_SEL_BRNO.HDNO
		else
			Param := Param +  GT_USERIF.HD;
		Param := Param + '��' + GT_SEL_BRNO.BrNo;

		if not RequestBase(GetSel05('LIST_CUST_LEVEL', 'MNG_BRANCH.LIST_CUST_LEVEL', '20', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('���纰 �������ȸ ����'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Exit;
		end;

		xdom := ComsDomDocument.Create;
		xdom.loadXML(XmlData);
    try
		  lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');

		  if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
		  begin
		  	lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
		  	ls_Rcrd := TStringList.Create;
		  	cxGridCustRankList.BeginUpdate;
		  	try
		  		sCustRankCodeList.Clear;
		  		sCustRankNameList.Clear;
		  		for I := 0 to lst_Result.length - 1 do
		  		begin
		  			GetTextSeperationEx2('��', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
		  			iRow := cxGridCustRankList.DataController.AppendRecord;
		  			cxGridCustRankList.DataController.Values[iRow, 0] := ls_Rcrd[3];
		  			cxGridCustRankList.DataController.Values[iRow, 1] := ls_Rcrd[4];
		  			cxGridCustRankList.DataController.Values[iRow, 2] := ls_Rcrd[5];
		  			cxGridCustRankList.DataController.Values[iRow, 3] := ls_Rcrd[6];
		  			sCustRankCodeList.add(cxGridCustRankList.DataController.Values[i, 0]);
		  			sCustRankNameList.add(cxGridCustRankList.DataController.Values[i, 1]);
		  		end;
		  		cbbCustRankName.Clear;
		  		cbbCustRankName.Properties.Items.Assign(sCustRankNameList);
		  		lbl70.Caption := ls_Rcrd[2];
//	  			cbbCustCNTmonth.ItemIndex := cbbCustCNTmonth.Properties.Items.IndexOf(ls_Rcrd[2]);
		  	finally
		  		cxGridCustRankList.EndUpdate;
		  		ls_Rcrd.Free;
		  	end;
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

procedure TFrm_CMP.proc_Get_CustRankMileList;
var
	XmlData, Param, ErrMsg : string;
	xdom: msDomDocument;
	lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd, ls_Rcrd2: TStringList;
	i, ErrCode, iRow : Integer;
begin
  cxGridCustRankList.DataController.SetRecordCount(0);
	try
		Param := '';
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			Param := Param +  GT_SEL_BRNO.HDNO
		else
			Param := Param +  GT_USERIF.HD;
		Param := Param + '��' + GT_SEL_BRNO.BrNo;

		if not RequestBase(GetSel05('LIST_CUST_MILEAGE_LEVEL', 'MNG_BRANCH.LIST_CUST_MILEAGE_LEVEL', '20', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('���纰 �������ȸ ����'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
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
		  	cxGridCustRankList.BeginUpdate;
		  	try
		  		sCustRankMileCodeList.Clear;
		  		sCustRankMIleNameList.Clear;
		  		for I := 0 to lst_Result.length - 1 do
		  		begin
		  			GetTextSeperationEx2('��', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
		  			iRow := cxGridCustRankList.DataController.AppendRecord;
		  			cxGridCustRankList.DataController.Values[iRow, 0] := ls_Rcrd[3];
		  			cxGridCustRankList.DataController.Values[iRow, 1] := ls_Rcrd[4];
		  			cxGridCustRankList.DataController.Values[iRow, 2] := ls_Rcrd[5];
		  			cxGridCustRankList.DataController.Values[iRow, 3] := ls_Rcrd[6];
		  			sCustRankMileCodeList.add(cxGridCustRankList.DataController.Values[i, 0]);
		  			sCustRankMileNameList.add(cxGridCustRankList.DataController.Values[i, 1]);
		  		end;
		  		cbbCustRankMileName.Clear;
		  		cbbCustRankMileName.Properties.Items.Assign(sCustRankMIleNameList);
//-	  			lbl70.Caption := ls_Rcrd[2];
		  	finally
		  		cxGridCustRankList.EndUpdate;
		  		ls_Rcrd.Free;
		  	end;
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

procedure TFrm_CMP.btnSMSRankGrid5Click(Sender: TObject);
begin
	MemoText(TcxButton(Sender).Tag, Format('%%%s%%', [TcxButton(Sender).Hint]))
end;

procedure TFrm_CMP.btnSoNumCheckClick(Sender: TObject);
Var sMsg, slBrNo : String;
begin
  sMsg := '�������� ���� �̿��(�������нÿ���) 60���� �̿�ᰡ �߻��մϴ�.' + #13 +
          '(����ĳ������ ����)' + #13 +
          '�������� ���񽺸� �̿��Ͻðڽ��ϱ�?' + #13#13 +
          '�� ���������Ŀ��� �������� "����" ��ư�� �� �����ž� ����ó���˴ϴ�.';

  if Application.MessageBox(PChar(sMsg), '', MB_YESNO + MB_ICONINFORMATION) = IDNO then Exit;

    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      slBrNo := GT_SEL_BRNO.BrNo
    else
      slBrNo := GT_USERIF.BR;

  if fGetBrCash(slBrNo) < 60 then
  begin
    ShowMessage('���� ĳ�� �ܾ��� �����Ͽ� ���� ���� ���񽺸� �̿��� �� �����ϴ�');
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
      edtHeadOwnerName.Text := GS_NICE_Name;
      edtHeadOwnerJumin1.Text := Copy(GS_NICE_Birth, 3, 6);

{      ShowMessage('���� : ' + GS_NICE_Name + #13#10 +
                  '������� : ' + GS_NICE_Birth + #13#10 +
                  '���� : ' + GS_NICE_Sex + #13#10 +
                  '�������� ����');}

      ShowMessage('NICE������ �������� ����' + #13#10 +
                  '���� �� ������ ���ּ���');

      btnSoNumCheck.Enabled := False;
    end else
    begin
      if GS_NICE_Err <> '' then
        ShowMessage('NICE������ �������� ���� : ' + GS_NICE_Err);
    end;
  end;
end;

procedure TFrm_CMP.btnSymbolPanelNotUseClick(Sender: TObject);
begin
  edtHeadSymbol.Text := '';
end;

procedure TFrm_CMP.btnTcxButton19MapHelpClick(Sender: TObject);
begin
	if  pnlHelpA4.Visible = True then pnlHelpA4.Visible := False
  else
  begin
    pnlHelpA4.Left := (Width  - pnlHelpA4.Width ) div 2;
		pnlHelpA4.top  := (Height - pnlHelpA4.Height) div 2;
    pnlHelpA4.Visible := True;
    pnlHelpA4.BringToFront;
  end;
end;

procedure TFrm_CMP.btn_OShotSummitClick(Sender: TObject);
begin
	if GT_SEL_BRNO.GUBUN <> '1' then
	begin
		GMessagebox(PChar('���� ������ [���� ��� ���缱�� �޴�����] ���縦 �����ϼž� �մϴ�.'), CDMSE);
		Exit;
	end;

  gOShotStat := fn_Re_LoginOK(lb_OShotID.Text, lb_OShotPW.Text);
	if gOShotStat then
  begin
    Cash_ReFlash;
    btn_wRef1.Visible := True;
    cxGrpOShot.Visible := True;
    btn_OShotSummit.Enabled := False;
  end else
  begin
    btn_wRef1.Visible := False;
    cxGrpOShot.Visible := False;
	  btn_OShotSummit.Enabled := True;
  end;
end;

procedure TFrm_CMP.btn_wRef1Click(Sender: TObject);
begin
  fn_Re_LoginOK(lb_OShotID.Text, lb_OShotPW.Text);
end;

procedure TFrm_CMP.btn35Click(Sender: TObject);
var i, iRow, fRow : integer;
begin
	if cbbCustRankName.ItemIndex = - 1 then
	begin
		GMessagebox('������� �������� �ʾҽ��ϴ�.', CDMSE);
		Exit;
	end;
	fRow := cxGridCustSMSList.DataController.FindRecordIndexByText(0, 0, cbbCustRankName.Text, True, False, True);
	if fRow > -1 then
	begin
		cxGridCustSMSList.DataController.Values[fRow, 2] := mmoSMS700.Text;
		cxGridCustSMSList.DataController.Values[fRow, 3] := lblSMS700.Caption;
		cxGridCustSMSList.DataController.Values[fRow+1, 2] := mmoSMS701.Text;
		cxGridCustSMSList.DataController.Values[fRow+1, 3] := lblSMS701.Caption;
	end
	else
	begin
		cxGridCustSMSList.BeginUpdate;
		for i := 0 to 1 do
		begin
			iRow := cxGridCustSMSList.DataController.AppendRecord;
			cxGridCustSMSList.DataController.Values[iRow, 0] := cbbCustRankName.Text;
			if i = 0 then
			begin
				cxGridCustSMSList.DataController.Values[iRow, 1] := 'ù��°';
				cxGridCustSMSList.DataController.Values[iRow, 2] := mmoSMS700.Text;
				cxGridCustSMSList.DataController.Values[iRow, 3] := lblSMS700.Caption;
				if iRow = 0 then
					cxGridCustSMSList.DataController.Values[iRow, 4] := inttostr(710 + iRow)
				else
					cxGridCustSMSList.DataController.Values[iRow, 4] := inttostr(710 + (iRow div 2));
			end else
			begin
				cxGridCustSMSList.DataController.Values[iRow, 1] := '�ι�°';
				cxGridCustSMSList.DataController.Values[iRow, 2] := mmoSMS701.Text;
				cxGridCustSMSList.DataController.Values[iRow, 3] := lblSMS701.Caption;
				if iRow = 1 then
					cxGridCustSMSList.DataController.Values[iRow, 4] := inttostr(720 + iRow - 1)
				else
					cxGridCustSMSList.DataController.Values[iRow, 4] := inttostr(720 + (iRow div 2));
			end;
		end;
		cxGridCustSMSList.EndUpdate;
	end;
end;

procedure TFrm_CMP.btn68Click(Sender: TObject);
begin
	MemoTextA5(140, Format('%%%s%%', [TcxButton(Sender).Hint]));
end;

procedure TFrm_CMP.btn72Click(Sender: TObject);
begin
	MemoTextA5(141, Format('%%%s%%', [TcxButton(Sender).Hint]));
end;

procedure TFrm_CMP.btn76Click(Sender: TObject);
var
  ls_TxLoad: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml, ls_Msg_Err: string;
  ErrCode: integer;
	xdom : msDomDocument;

  m_strFileNm140, m_strFileNm141 : AnsiString;
  sResult, sError : String;
begin
	if GT_SEL_BRNO.GUBUN <> '1' then
	begin
		GMessagebox(PChar('������ ������ [���� ��� ���缱�� �޴�����] ���縦 �����ϼž� �մϴ�.'), CDMSE);
		Exit;
	end;

	if ( btn_OShotSummit.Enabled ) And ( Trim(lb_OShotID.Text) <> '' ) And ( Trim(lb_OShotPW.Text) <> '' ) then
	begin
		GMessagebox('OShot������ ���� �����Ͽ� �ֽʽÿ�.', CDMSE);
		Exit;
	end;

  if (chkSMSR140.Checked) and (cbKeynumber01.ItemIndex = 0) then
  begin
    GMessagebox('ȸ�Ź�ȣ�� �������� üũ�� �ݵ�� �����ؾ� �մϴ�.', CDMSE);
    cbKeynumber01.SetFocus;
    Exit;
  end;

  if (chkSMSR141.Checked) and (cbKeynumber02.ItemIndex = 0) then
  begin
    GMessagebox('ȸ�Ź�ȣ�� �������� üũ�� �ݵ�� �����ؾ� �մϴ�.', CDMSE);
    cbKeynumber02.SetFocus;
    Exit;
  end;

  m_strFileNm140 := '';
  m_strFileNm141 := '';

  if cxRBDM.Checked then
  begin
    Move(m_ImgBff140[0], m_ImageBuffer[0], m_ImgSize140);
    m_Imagesize := m_ImgSize140;
    sResult := Trans_XML('   ', ComImageSend, DM.IdTCPCtOShotMMS);
    sError := Trim(Copy(sResult, 21, 5));
    If sError = '00000' Then
    begin
      m_strFileNm140 := Trim(Copy(sResult, 77, 128));
      imgDMMS.Hint := m_strFileNm140;
    end else
    begin
  		GMessagebox('OShot������ MMS�̹��� ���� ����' + #10#13 + '�ٽ� �õ��� �ֽʽÿ�', CDMSE);
	  	Exit;
    end;

    if Not fSetMMSImage('140') then Exit;
  end;

  if cxRBSM.Checked then
  begin
    Move(m_ImgBff141[0], m_ImageBuffer[0], m_ImgSize141);
    m_Imagesize := m_ImgSize141;
    sResult := Trans_XML('   ', ComImageSend, DM.IdTCPCtOShotMMS);
    sError := Trim(Copy(sResult, 21, 5));
    If sError = '00000' Then
    begin
      m_strFileNm141 := Trim(Copy(sResult, 77, 128));
      imgSMMS.Hint := m_strFileNm141;
    end else
    begin
  		GMessagebox('OShot������ MMS�̹��� ���� ����' + #10#13 + '�ٽ� �õ��� �ֽʽÿ�', CDMSE);
	  	Exit;
    end;
    if Not fSetMMSImage('141') then Exit;
  end;

	if Not func_EucKr_Check(mmoSMS140, 1) then Exit;
	if Not func_EucKr_Check(mmoSMS141, 1) then Exit;

	try
		ls_TxLoad := GTx_UnitXmlLoad('JON03032_02.XML');
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString',        GT_USERIF.ID,   [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',     VERSIONINFO,    [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',     'JON03032_02',     [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'FTypeString',         En_Coding('FullUpdate'), [rfReplaceAll]);

		ls_TxLoad := StringReplace(ls_TxLoad, 'CuTelString',         '', [rfReplaceAll]); // ����ȣ   (������ ���Ƿ� ����ȣ�Է�)
		ls_TxLoad := StringReplace(ls_TxLoad, 'KeyNumberString',     '', [rfReplaceAll]); // ��ǥ��ȣ   (������ ���Ƿ� ����/��ǥ��ȣ ����)
		ls_TxLoad := StringReplace(ls_TxLoad, 'HdNoString',          En_Coding(GT_SEL_BRNO.HDNO), [rfReplaceAll]); // �����ڵ�   (������ ���Ƿ� ����/��ǥ��ȣ ����)
		ls_TxLoad := StringReplace(ls_TxLoad, 'BrNoString',          En_Coding(GT_SEL_BRNO.BRNO), [rfReplaceAll]); // �����ڵ�   (������ ���Ƿ� ����/��ǥ��ȣ ����)
		if chk_OShotSend.Checked then
			ls_TxLoad := StringReplace(ls_TxLoad, 'SendTypeString',      En_Coding('Oshot'),     [rfReplaceAll])  // �������θ� ���ڹ߼�
		else
			ls_TxLoad := StringReplace(ls_TxLoad, 'SendTypeString',      En_Coding('Callmaner'),     [rfReplaceAll]);  // �ܹ��� �ݸ���
		ls_TxLoad := StringReplace(ls_TxLoad, 'OshotIdString',       En_Coding(Trim(lb_OShotID.Text)), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'OshotPwdString',      En_Coding(Trim(lb_OShotPW.Text)), [rfReplaceAll]);

		ls_TxLoad := StringReplace(ls_TxLoad, 'SmsTypeString1',      '140', [rfReplaceAll]);
		if chkSMSR140.Checked then
			ls_TxLoad := StringReplace(ls_TxLoad, 'FromNumString1',      En_Coding(Trim(cbKeynumber01.Text)), [rfReplaceAll])
		else
			ls_TxLoad := StringReplace(ls_TxLoad, 'FromNumString1',      En_Coding(Trim('0')), [rfReplaceAll]);

		ls_TxLoad := StringReplace(ls_TxLoad, 'FilenamesString1',    En_Coding(m_strFileNm140), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'MSGSting1',           En_Coding(mmoSMS140.Text), [rfReplaceAll]);

		ls_TxLoad := StringReplace(ls_TxLoad, 'SmsTypeString2',      '141', [rfReplaceAll]);
		if chkSMSR141.Checked then
			ls_TxLoad := StringReplace(ls_TxLoad, 'FromNumString2',      En_Coding(Trim(cbKeynumber02.Text)), [rfReplaceAll])
		else
			ls_TxLoad := StringReplace(ls_TxLoad, 'FromNumString2',      En_Coding(Trim('0')), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'FilenamesString2',      En_Coding(m_strFileNm141), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'MSGSting2',             En_Coding(mmoSMS141.Text), [rfReplaceAll]);

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
							GMessagebox('���� �Ϸ�', CDMSI);
						end else
						begin
							GMessagebox('������ ���� ���� �� ������ �߻� �Ͽ����ϴ�.' + #10#13 + ls_Msg_Err, CDMSE);
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

function TFrm_CMP.fSetMMSImage( sGubun : String ) : Boolean;
var
  ls_TxLoad: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml, ls_Msg_Err: string;
  ErrCode: integer;
	xdom : msDomDocument;

  sBase64Img : AnsiString;
  tBase64Img : TIdBytes;
begin
  Result := False;
	try
		ls_TxLoad := GTx_UnitXmlLoad('COM00020.XML');
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString',        GT_USERIF.ID,   [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',     VERSIONINFO,    [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',     'COM00020',     [rfReplaceAll]);

		ls_TxLoad := StringReplace(ls_TxLoad, 'TypeString',          En_Coding('Update'), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'BrNoString',          En_Coding(GT_SEL_BRNO.BRNO), [rfReplaceAll]); // �����ڵ�   (������ ���Ƿ� ����/��ǥ��ȣ ����)

		if sGubun = '140' then
    begin
      if not DirectoryExists(OSHOTDRIVE) then ForceDirectories(OSHOTDRIVE);
      SaveBytesToFile(RawToBytes(m_ImgBff140, m_ImgSize140),  OSHOTDRIVE+imgDMMS.Hint);
      sBase64Img := Base64EncodeBytes(RawToBytes(m_ImgBff140, m_ImgSize140));

  		ls_TxLoad := StringReplace(ls_TxLoad, 'FilenameString',    En_Coding(imgDMMS.Hint), [rfReplaceAll]);
  		ls_TxLoad := StringReplace(ls_TxLoad, 'BASE64String'  ,    En_Coding(sBase64Img), [rfReplaceAll]);
    end else
		if sGubun = '141' then
    begin
      if not DirectoryExists(OSHOTDRIVE) then ForceDirectories(OSHOTDRIVE);
      sBase64Img := Base64EncodeBytes(RawToBytes(m_ImgBff141, m_ImgSize141));
      tBase64Img := Base64DecodeBytes(sBase64Img);
      SaveBytesToFile(tBase64Img,  OSHOTDRIVE+imgSMMS.Hint);

  		ls_TxLoad := StringReplace(ls_TxLoad, 'FilenameString',    En_Coding(imgSMMS.Hint), [rfReplaceAll]);
  		ls_TxLoad := StringReplace(ls_TxLoad, 'BASE64String'  ,    En_Coding(sBase64Img), [rfReplaceAll]);
    end;

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
							GMessagebox('������ MMS�̹��� ���� �� ������ �߻� �Ͽ����ϴ�.' + #10#13 + ls_Msg_Err, CDMSE);
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

function TFrm_CMP.fGetMMSImage( sGubun : String ) : Boolean;
var
  ls_TxLoad: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml, ls_Msg_Err: string;
  ErrCode: integer;
	xdom : msDomDocument;
	lst_Result: IXMLDomNodeList;

  sBase64Img : String;
  bBase64Img : TIdBytes;

  STmp : TStringList;
begin
  Result := False;
	try
		ls_TxLoad := GTx_UnitXmlLoad('COM00020.XML');
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString',        GT_USERIF.ID,   [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',     VERSIONINFO,    [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',     'COM00020',     [rfReplaceAll]);

		ls_TxLoad := StringReplace(ls_TxLoad, 'TypeString',          En_Coding('Select'), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'BrNoString',          En_Coding(GT_SEL_BRNO.BRNO), [rfReplaceAll]); // �����ڵ�   (������ ���Ƿ� ����/��ǥ��ȣ ����)

		if sGubun = '140' then
    begin
  		ls_TxLoad := StringReplace(ls_TxLoad, 'FilenameString',    En_Coding(imgDMMS.Hint), [rfReplaceAll]);
    end else
		if sGubun = '141' then
    begin
  		ls_TxLoad := StringReplace(ls_TxLoad, 'FilenameString',    En_Coding(imgSMMS.Hint), [rfReplaceAll]);
    end;

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
              STmp := TStringList.Create;
              try
  							lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data');
                // TSTringList�� �־���� #13#10�� �߻��ؼ� Chr(13)+Chr(10) ġȯ..�Ϲ� ������ �ȵǾ �̷��� ó��
    						STmp.Text := lst_Result.item[0].Text;
                sBase64Img := StringReplace(STmp.Text, Chr(13)+Chr(10), '', [rfReplaceAll]);
                if Trim(sBase64Img) <> '' then
                begin
                  bBase64Img := Base64DecodeBytes(sBase64Img);
                  if not DirectoryExists(OSHOTDRIVE) then ForceDirectories(OSHOTDRIVE);

                  if sGubun = '140' then
                  begin
                    SaveBytesToFile(bBase64Img,  OSHOTDRIVE+imgDMMS.Hint);
                    pGetLoadBuffer(OSHOTDRIVE+imgDMMS.Hint, '140');
                  end else
                  if sGubun = '141' then
                  begin
                    SaveBytesToFile(bBase64Img,  OSHOTDRIVE+imgSMMS.Hint);
                    pGetLoadBuffer(OSHOTDRIVE+imgSMMS.Hint, '141');
                  end;
                end;
              finally
                STmp.Free;
              end;
              Result := True;
						end else
						begin
							GMessagebox('������ MMS�̹��� ��ȸ �� ������ �߻� �Ͽ����ϴ�.' + #10#13 + ls_Msg_Err, CDMSE);
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

procedure TFrm_CMP.MemoTextA5(ATag: Integer; AValue: string);
var
  Memo: TcxMemo;
begin
  if ATag = 140 then Memo := mmoSMS140 else
  if ATag = 141 then Memo := mmoSMS141;

  if Assigned(Memo) then
		MemoTextA5(ATag, Memo, AValue);
end;

procedure TFrm_CMP.MemoTextA5(ATag: Integer; AMemo: TcxMemo; AValue: string);
var
  s, s1: widestring;
  ALabel : TLabel;
begin
  if AMemo.SelStart > 0 then
  begin
    s := AMemo.Text;
    s := Copy(s, 1, AMemo.SelStart);
    s1 := StringReplace(AMemo.Text, s, '', [rfReplaceAll]);
    AMemo.Text := s + AValue + s1;
  end else
  begin
    AMemo.Text := AValue + AMemo.Text;
	end;
	if Length(AnsiString(AMemo.Text)) > 1200 then
		AMemo.Text := Trim(Copy(AnsiString(AMemo.Text), 1, 1200));

  if ATag = 140 then ALabel := lblSMS140 else
  if ATag = 141 then ALabel := lblSMS141;
  if Assigned(ALabel) then
  begin
		ALabel.Caption := IntToStr(GetSmsMemoLength(AnsiString(AMemo.Text))) + ' Byte';
  end;

	AMemo.SelStart := length(AMemo.Text);
  AMemo.SetFocus;
end;

procedure TFrm_CMP.btnBranchAddClick(Sender: TObject);
begin
	if GS_PRJ_AREA = 'S' then
		GMessagebox('����߱��� �ݸ��ʷ� ��û�Ͻñ� �ٶ��ϴ�.'+#13#10+'(������ : 1688-6618)',CDMSE)  //20140103 ������ ������� ����
	else
		ShowBranchWindow('');
end;

procedure TFrm_CMP.btnBranchExcelClick(Sender: TObject);
begin
	if AdvStrnGrd1.RowCount = 0 then
  begin
		GMessagebox('�ڷᰡ �����ϴ�.', CDMSI);
    Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
	end;

	if (TCK_USER_PER.CMP_ExcelDown <> '1') then
	begin
    ShowMessage('[�����ٿ�ε�[ȸ��޴�]] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
	end;

	if cxViewBranch.DataController.RecordCount = 0 then
	begin
		GMessagebox('�ڷᰡ �����ϴ�.', CDMSI);
    Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
	end;

	if (TCK_USER_PER.CMP_ExcelDown <> '1') then
	begin
    ShowMessage('[�����ٿ�ε�[ȸ��޴�]] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
	end;

  Frm_Main.sgExcel := 'ȸ��-�������.xls';
  Frm_Main.sgRpExcel := Format('ȸ��>�������]%s��', [GetMoneyStr(cxViewBranch.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridBranch;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

function TFrm_CMP.Grid_Excel(Comp: TAdvStringGrid; sTitle, sSubject: String;
  ACol: array of Integer; HideView, bFixedCol,
  bAlCenter: Boolean): Boolean;
var
  Excel : OleVariant;
  My_Excel : Variant;
  i, j, k, nExl, nDelCnt, iMarChk : Integer;
  sExChar, bWord : String;
  iCols   : Integer;
const
	xlLeft = -4131;    xlRight = -4152;    xlTop = -4160;        xlBottom = -4107;
	xlThin = 0.5;        xlNone  = 0;        xlCenter = -4108;     xlDash = $FFFFEFED;
begin

  try
    iCols := 0;
    nDelCnt := 0;
    nExl := 0;

    if HideView then k := 0
                else k := 1;


    if iCols = 0 then iCols := Comp.ColCount;
    //���� END................................


    Screen.Cursor := crHourGlass;
    try
			My_Excel := CreateOLEObject('Excel.Application');
    except
      Screen.Cursor := crDefault;
			Exit;
    end;

    My_Excel.Application.SheetsInNewWorkbook := 1; // ������ ������ sheet ������ �ʱ�ġ ����
    My_Excel.Application.StandardFont        := '����ü'; // ������ ǥ�� ��Ʈ
    My_Excel.Application.StandardFontSize    := 9; // ���� ǥ�� ��Ʈ�� ũ��

    My_Excel.WorkBooks.Add;

    Excel := VarArrayCreate([1, Comp.RowCount + 2, 1, iCols], varVariant);

    with Comp do
    begin
      //FixedRow Merge Cell.............
      if FixedRows > 1 then
      begin
        for i := 0 to iCols - 1 do
        begin
          if ColWidths[i] >= k then
          begin

            for j := 0 to FixedRows - 2 do
            begin
              if Cells[i, j] = Cells[i + 1, j] then
              begin
								My_Excel.Range[gfExcelChar(nExl + 1) + IntToStr(j + 3) + ':' + gfExcelChar(nExl + 2) + IntToStr(j + 3)].Merge();
              end;
						end;

            for j := 0 to FixedRows - 2 do
            begin
              if Cells[i, j] = Cells[i, j + 1] then
              begin
                My_Excel.Range[gfExcelChar(nExl + 1) + IntToStr(j + 3) + ':' + gfExcelChar(nExl + 1) + IntToStr(j + 4)].Merge();
              end;
            end;

            Inc(nExl);
          end;
        end;
      end;
      //FixedRow Merge Cell.............

      //FixedCol Merge Cell.............
      if bFixedCol then
      begin
        if FixedCols > 1 then
        begin
          for i := 0 to RowCount - 1 do
          begin

            for j := 0 to FixedCols - 2 do
            begin
              if Cells[j, i] = Cells[j + 1, i] then
              begin
                My_Excel.Range[gfExcelChar(j + 1) + IntToStr(i + 3) + ':' + gfExcelChar(j + 2) + IntToStr(i + 3)].Merge();
              end;
            end;

            for j := 0 to FixedCols - 2 do
            begin
              if Cells[j, i] = Cells[j, i + 1] then
              begin
                My_Excel.Range[gfExcelChar(j + 1) + IntToStr(i + 3) + ':' + gfExcelChar(j + 1) + IntToStr(i + 4)].Merge();
              end;
            end;

          end;
        end;
      end;
      //FixedCol Merge Cell.............

      // Delete Count
      for i := 0 to iCols - 1 do
      begin
        if ColWidths[i] < k then nDelCnt := nDelCnt + 1;
      end;

      nExl := 0;
      bWord := '';
      for i := 0 to RowCount - 1 do
      begin
        iMarChk:=0;
        for j := 0 to iCols - 1 do
        begin
          if ColWidths[j] >= k then
          begin
            if i < FixedRows then
               Excel[i + 3, nExl + 1] := StringReplace(Cells[j, i], #13, #10, [rfReplaceAll])
            else
            begin
							if (j = 1) then
							begin
								if (bWord <> Cells[j, i]) then
								begin
									if j = ACol[j] then Excel[i + 3, nExl + 1] := '''' + Cells[j, i]
																 else Excel[i + 3, nExl + 1] := Cells[j, i];
								end
								else
								begin
									iMarChk := 1;
								end;
              end  else
              begin
                if iMarChk <> 1 then
                begin
                  if j = ACol[j] then Excel[i + 3, nExl + 1] := '''' + Cells[j, i]
                                 else Excel[i + 3, nExl + 1] := Cells[j, i];
                end
                else if iMarChk = 1 then
                begin
                  if j in [4..16] then
                  begin
                    if j = ACol[j] then Excel[i + 3, nExl + 1] := '''' + Cells[j, i]
                                   else Excel[i + 3, nExl + 1] := Cells[j, i];
                  end;
                end;
              end;

              if (j = 1) then bWord := Cells[j, i];
            end;
            Inc(nExl);
          end;
        end;
        nExl := 0;
      end;

      My_Excel.Range[My_Excel.Cells[1, 1], My_Excel.Cells[RowCount + 2, iCols]].Value := Excel;

      My_Excel.Cells[1, 1].Value := sTitle;
      My_Excel.Range['A1:' + gfExcelChar(iCols - nDelCnt) + '1'].Merge();
      My_Excel.Cells[2, 1].Value := sSubject + '  �� �� �� : ' + FormatDateTime('YYYY-MM-DD HH:NN:SS', Now);
      My_Excel.Range['A2:' + gfExcelChar(iCols - nDelCnt) + '2'].Merge();
      My_Excel.Range['A1:A1'].Font.Name := '�ü�ü';
      My_Excel.Range['A1:A1'].Font.Size := 14;
      My_Excel.Range['A1:A1'].HorizontalAlignment := xlCenter;
      My_Excel.Range['A2:A2'].HorizontalAlignment := xlCenter;

      sExChar := 'A3:' + gfExcelChar(iCols - nDelCnt) + IntToStr(FixedRows + 2);
      My_Excel.Range[sExChar].HorizontalAlignment := xlCenter;
      My_Excel.Range[sExChar].interior.Color := RGB(192, 192, 192);
      My_Excel.Range[sExChar].Borders[xlTop   ].Weight := xlThin;
      My_Excel.Range[sExChar].Borders[xlBottom].Weight := xlThin;
      My_Excel.Range[sExChar].Borders[xlRight ].Weight := xlThin;
      My_Excel.Range[sExChar].Borders[xlLeft  ].Weight := xlThin;

      if FixedCols <> 0 Then
      begin
        if bFixedCol then
        begin
          sExChar := 'A3:' + gfExcelChar(FixedCols) + IntToStr(RowCount + 2);
          if bAlCenter then
            My_Excel.Range[sExChar].HorizontalAlignment := xlCenter;
          My_Excel.Range[sExChar].interior.Color := RGB(192, 192, 192);
          My_Excel.Range[sExChar].Borders[xlTop   ].Weight := xlThin;
					My_Excel.Range[sExChar].Borders[xlBottom].Weight := xlThin;
          My_Excel.Range[sExChar].Borders[xlRight ].Weight := xlThin;
          My_Excel.Range[sExChar].Borders[xlLeft  ].Weight := xlThin;
        end;
      end;

      // ������� �䱸�� ���� ������ ����.
      // My_Excel.Range['A3:' + gfExcelChar(iCols - nDelCnt) + IntToStr(RowCount + 2)].Borders.LineStyle := xlDash;

      My_Excel.Columns.AutoFit;
      My_Excel.Visible := true;
      Screen.Cursor := crDefault;
      My_Excel := caFree;
    end;
     Result := True;
   except
     Result := False;
   end;
end;

function TFrm_CMP.gfExcelChar(Key: Integer): String;
var
  d, m: Integer;
begin
  if Key > 230 then Exit;

  d := (Key - 1) div 26;
  m := ((Key - 1) mod 26) + 1;

  if Key < 27 then
    Result := Char(Key + 64)
  else
    Result := Char(d + 64) + Char(m + 64);
end;

procedure TFrm_CMP.RequestDataBranchList_Comm;
var
	XmlData, Param, ErrMsg : string;
	xdom: msDomDocument;
	lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd, ls_Rcrd2: TStringList;
	i, j, k, ErrCode, iIdx, iRow : Integer;
begin
{	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('�ش纻�翡 ���� ��ü ������ �����ϴ�.' + #13#10 + '���縦 �����Ͽ� �ֽʽÿ�.', CDMSI);
		exit;
	end; }

  if fGetChk_Search_HdBrNo('������������') then Exit;

	try
		Param := '';
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			Param := Param +  GT_SEL_BRNO.HDNO
		else
			Param := Param +  GT_USERIF.HD;
		Param := Param + '��' + Param_Filtering(cbbA4.Text);

		if not RequestBase(GetSel05('INFO_BRANCH_BCMS', 'MNG_BRANCH.INFO_BRANCH_BCMS', '1000', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('���纰 ���������� ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
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
		  	ls_Rcrd2 := TStringList.Create;
		  	try
		  		iRow := 2;
		  		iIdx := -1;
		  		for I := 0 to lst_Result.length - 1 do
		  		begin
		  			GetTextSeperationEx2('��', StringReplace(lst_Result.item[I].attributes.getNamedItem('Value').Text, '~', '', [rfReplaceAll]), ls_Rcrd);
		  			for j := 0 to 1 do
		  			begin
		  				AdvStrnGrd1.RowCount := iRow + 1;
		  				if iRow mod 2 = 0 then
		  				begin
		  					AdvStrnGrd1.AddCheckBox(0,iRow,False, False);
		  					AdvStrnGrd1.Cells[1, iRow] := ls_Rcrd[0];
		  					AdvStrnGrd1.Cells[2, iRow] := ls_Rcrd[1];

		  					if ls_Rcrd[2] = 'y' then
		  					begin
		  						AdvStrnGrd1.Cells[3, iRow] := '�����';
		  						AdvStrnGrd1.SetCheckBoxState(0, iRow, True);
		  					end	else
		  					begin
		  						AdvStrnGrd1.Cells[3, iRow] := '������';
		  						AdvStrnGrd1.SetCheckBoxState(0, iRow, False);
		  					end;
		  					AdvStrnGrd1.Cells[4, iRow] := '����';
		  					if ls_Rcrd[3] <> '' then  //���Ϻ���ũ
		  					begin
		  						GetTextSeperationEx2(',', ls_Rcrd[3], ls_Rcrd2);
		  						for k := 0 to 5 do
		  						begin
		  							if k <= ls_Rcrd2.count -1 then
		  								AdvStrnGrd1.Cells[5 + k, iRow] := ls_Rcrd2[k]
		  							else
		  								AdvStrnGrd1.Cells[5 + k, iRow] := '';
		  						end;
		  					end
		  					else
		  						AdvStrnGrd1.Cells[5, iRow] := ls_Rcrd[3];

		  					if ls_Rcrd[4] <> '' then    //������ũ
		  					begin
		  						GetTextSeperationEx2(',', ls_Rcrd[4], ls_Rcrd2);
		  						for k := 0 to 5 do
		  						begin
		  							if k <= ls_Rcrd2.count -1 then
		  								AdvStrnGrd1.Cells[11 + k, iRow] := ls_Rcrd2[k]
		  							else
		  								AdvStrnGrd1.Cells[11 + k, iRow] := '';
		  						end;
		  					end
		  					else
		  						AdvStrnGrd1.Cells[11, iRow] := ls_Rcrd[4];

		  					AdvStrnGrd1.Cells[17, iRow] := ls_Rcrd[7];
		  					AdvStrnGrd1.Cells[18, iRow] := ls_Rcrd[8];

		  					AdvStrnGrd1.MergeCells(0, iRow, 1, 2);
		  					AdvStrnGrd1.MergeCells(1, iRow, 1, 2);
		  					AdvStrnGrd1.MergeCells(2, iRow, 1, 2);
		  					AdvStrnGrd1.MergeCells(3, iRow, 1, 2);
		  					AdvStrnGrd1.MergeCells(17, iRow, 1, 2);
		  					AdvStrnGrd1.MergeCells(18, iRow, 1, 2);
		  				end	else
		  				begin
		  					AdvStrnGrd1.Cells[4, iRow] := '��,��(������)';
		  					if ls_Rcrd[5] <> '' then  //���Ϻ���ũ
		  					begin
		  						GetTextSeperationEx2(',', ls_Rcrd[5], ls_Rcrd2);
		  						for k := 0 to 5 do
		  						begin
		  							if k <= ls_Rcrd2.count -1 then
		  								AdvStrnGrd1.Cells[5 + k, iRow] := ls_Rcrd2[k]
		  							else
		  								AdvStrnGrd1.Cells[5 + k, iRow] := '';
		  						end;
		  					end
		  					else
		  						AdvStrnGrd1.Cells[5, iRow] := ls_Rcrd[5];

		  					if ls_Rcrd[6] <> '' then    //������ũ
		  					begin
		  						GetTextSeperationEx2(',', ls_Rcrd[6], ls_Rcrd2);
		  						for k := 0 to 5 do
		  						begin
		  							if k <= ls_Rcrd2.count -1 then
		  								AdvStrnGrd1.Cells[11 + k, iRow] := ls_Rcrd2[k]
		  							else
		  								AdvStrnGrd1.Cells[11 + k, iRow] := '';
		  						end;
		  					end
		  					else
		  						AdvStrnGrd1.Cells[11, iRow] := ls_Rcrd[6];
		  				end;
		  				inc(iRow);
		  			end;
		  		end;
		  	finally
          ls_Rcrd2.Free;
		  		ls_Rcrd.Free;
		  	end;
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

procedure TFrm_CMP.CopyStringGrid;
Var i, j : Integer;
begin
  AdvStrnGrdChk1.Clear;
  AdvStrnGrdChk1.RowCount := AdvStrnGrd1.RowCount;
  AdvStrnGrdChk1.ColCount := AdvStrnGrd1.ColCount;

  for i := 0 to AdvStrnGrd1.ColCount - 1 do
  begin
    for j := 0 to AdvStrnGrd1.RowCount - 1 do
    begin
      AdvStrnGrdChk1.Cells[i, j] := AdvStrnGrd1.Cells[i, j];
    end;
  end;
end;

procedure TFrm_CMP.proc_GridSet;
begin
	//����Col, ����Row, ������ col����, ������ row����
	AdvStrnGrd1.Clear;
	AdvStrnGrd1.FixedRows := 2;
	AdvStrnGrd1.FixedCols := 0;
	AdvStrnGrd1.RowCount := 3;
	AdvStrnGrd1.ColCount := 20;

	AdvStrnGrd1.Cells[0,0] := '����';     //y, x
	AdvStrnGrd1.MergeCells(0,0,1,2);
	AdvStrnGrd1.Cells[1,0] := '�����ڵ�';
	AdvStrnGrd1.MergeCells(1,0,1,2);
	AdvStrnGrd1.Cells[2,0] := '�����';
	AdvStrnGrd1.MergeCells(2,0,1,2);
	AdvStrnGrd1.Cells[3,0] := '�������';
	AdvStrnGrd1.MergeCells(3,0,1,2);
	AdvStrnGrd1.Cells[4,0] := '�ð��з�';
	AdvStrnGrd1.MergeCells(4,0,1,2);

	AdvStrnGrd1.Cells[5,0] := '��/��ũŸ��(01:30 ~ 22:00)';
	AdvStrnGrd1.MergeCells(5,0,6,1);
	AdvStrnGrd1.Cells[5,1] := '����';
	AdvStrnGrd1.Cells[6,1] := '1�а��';
	AdvStrnGrd1.Cells[7,1] := '2�а��';
	AdvStrnGrd1.Cells[8,1] := '3�а��';
	AdvStrnGrd1.Cells[9,1] := '4�а��';
	AdvStrnGrd1.Cells[10,1] := '5�а��';

	AdvStrnGrd1.Cells[11,0] := '��ũŸ��(22:00 ~ 01:30)';
	AdvStrnGrd1.MergeCells(11,0,6,1);
	AdvStrnGrd1.Cells[11,1] := '����';
	AdvStrnGrd1.Cells[12,1] := '1�а��';
	AdvStrnGrd1.Cells[13,1] := '2�а��';
	AdvStrnGrd1.Cells[14,1] := '3�а��';
	AdvStrnGrd1.Cells[15,1] := '4�а��';
	AdvStrnGrd1.Cells[16,1] := '5�а��';

	AdvStrnGrd1.Cells[17,0] := '������̵�';
	AdvStrnGrd1.MergeCells(17,0,1,2);
	AdvStrnGrd1.Cells[18,0] := '�����Ͻ�';
	AdvStrnGrd1.MergeCells(18,0,1,2);
	AdvStrnGrd1.Cells[19,0] := '���濩��';     //y, x
	AdvStrnGrd1.MergeCells(19,0,1,2);

	AdvStrnGrd1.ColWidths[00] := 030;
	AdvStrnGrd1.ColWidths[01] := 060;
	AdvStrnGrd1.ColWidths[02] := 200;
	AdvStrnGrd1.ColWidths[03] := 060;
	AdvStrnGrd1.ColWidths[04] := 080;
	AdvStrnGrd1.ColWidths[05] := 050;
	AdvStrnGrd1.ColWidths[06] := 050;
	AdvStrnGrd1.ColWidths[07] := 050;
	AdvStrnGrd1.ColWidths[08] := 050;
	AdvStrnGrd1.ColWidths[09] := 050;
	AdvStrnGrd1.ColWidths[10] := 050;
	AdvStrnGrd1.ColWidths[11] := 050;
	AdvStrnGrd1.ColWidths[12] := 050;
	AdvStrnGrd1.ColWidths[13] := 050;
	AdvStrnGrd1.ColWidths[14] := 050;
	AdvStrnGrd1.ColWidths[15] := 050;
	AdvStrnGrd1.ColWidths[16] := 050;
	AdvStrnGrd1.ColWidths[17] := 080;
	AdvStrnGrd1.ColWidths[18] := 160;
	AdvStrnGrd1.ColWidths[19] := 000;
end;

procedure TFrm_CMP.btnBranchModifyClick(Sender: TObject);
var
  ABrNo: string;
begin
  if cxViewBranch.DataController.GetSelectedCount = 0 then
  begin
    GMessagebox('���縦 ������ �ּ���.', CDMSE);
    exit;
  end;
  ABrNo := cxViewBranch.ViewData.Records[cxViewBranch.DataController.GetFocusedRowIndex].Values[2];
  ShowBranchWindow(ABrNo);
end;

procedure TFrm_CMP.ShowBranchWindow(ABrNo: string);
var sTemp : string;
begin
	if ( Not Assigned(Frm_CMP01) ) Or ( Frm_CMP01 = NIl ) then Frm_CMP01 := TFrm_CMP01.Create(Nil);

	Frm_CMP01.cxViewKeyPhone.Columns[6].Visible := gs_CallBellUse;

	Frm_CMP01.SetBranchNo(ABrNo);
  Frm_CMP01.OnRefreshEvent := RefreshBranchList;

  // 2011.04.08 ������Է� ���� �ű��Է½ÿ��� ����
  if trim(ABrNo)='' then
    Frm_CMP01.edtBaseBrName.Enabled:=true
  else
  begin
    // �����Ǹ� ����� ���� ����.
		if GS_PRJ_AREA = 'S' then begin
			Frm_CMP01.edtBaseBrName.Enabled:=false;

			Frm_CMP01.btn1.Visible := True;
			sTemp := copy(GetPlusCallYN(ABrNo),3,1);
			if sTemp = 'y' then
				Frm_CMP01.btn1.Enabled := True
			else
				Frm_CMP01.btn1.Enabled := False;
		end;
	end;
	if (GS_PRJ_AREA = 'S') or (GT_KAKAOUse) then
	begin
		Frm_CMP01.pnl_KaKaoInsure.visible := True;
		Frm_CMP01.Height := 805;
	end else
	begin
		Frm_CMP01.pnl_KaKaoInsure.visible := False;
		Frm_CMP01.Height := 744;
	end;
	Frm_CMP01.Show;
end;

procedure TFrm_CMP.RefreshBranchList(Sender: TObject);
begin
  if Assigned(Frm_CMP01) then
  begin
    if Frm_CMP01.DataChanged then	RequestDataBranchList;
  end;
end;

procedure TFrm_CMP.btnBranchSearchClick(Sender: TObject);
begin
	RequestDataBranchList;
end;

procedure TFrm_CMP.chkSMS700Click(Sender: TObject);
begin
	if TcxCheckBox(Sender).Checked then
	begin
		chkSMS310.Checked := False;
		chkSMS311.Checked := False;
		chkSMS312.Checked := False;
		chkSMS313.Checked := False;
	end;
end;

procedure TFrm_CMP.chkSMS311Click(Sender: TObject);
begin
	if TcxCheckBox(Sender).Checked then
	begin
		chkSMS700.Checked := False;
	end;
end;

procedure TFrm_CMP.btn29Click(Sender: TObject);
var iRow : integer;
begin
	iRow := cxGridCustRankList.DataController.FocusedRecordIndex;
	cxGridCustRankList.DataController.DeleteRecord(iRow);
	GMessagebox('������� �����Ǿ����ϴ�.'+#13#10+'��ü������ ������ �ݿ��˴ϴ�.', CDMSE);
end;

procedure TFrm_CMP.btn30Click(Sender: TObject);
var iRow, fRow, i : integer;
 sCustName : string;
begin
	iRow := cxGridCustSMSList.DataController.FocusedRecordIndex;
	sCustName := cxGridCustSMSList.DataController.Values[iRow, 0];
	for i := 0 to cxGridCustSMSList.DataController.RecordCount - 1 do
	begin
		fRow := cxGridCustSMSList.DataController.FindRecordIndexByText(0, 0, sCustName, True, False, True);
		if fRow > - 1 then
			cxGridCustSMSList.DataController.DeleteRecord(fRow);
	end;
//	GMessagebox('�ش� ���� ������ �����Ǿ����ϴ�.', CDMSI);
end;

procedure TFrm_CMP.cbbA4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then
		BtnSearchA4Click(nil);
end;

procedure TFrm_CMP.cbbBranchSearchTypePropertiesChange(Sender: TObject);
begin
	{
    0: ��ü
    1: �����ڵ�
		2: �����
    3: ��ǥ��ȣ
    4: �����������
    5: ��ġ���
  }
  cbbBranchSearchValue.Enabled := True;
  cbbBranchSearchValue.Properties.Items.Clear;
  case cbbBranchSearchType.ItemIndex of
    0:
      begin
        cbbBranchSearchValue.Clear;
        cbbBranchSearchValue.Enabled := False;
				cbbBranchSearchValue.Properties.DropDownListStyle := lsEditList;
      end;
		1..3:
			begin
				cbbBranchSearchValue.Text := '';
				cbbBranchSearchValue.Properties.DropDownListStyle := lsEditList;
      end;
    4:
      begin
        cbbBranchSearchValue.Properties.Items.CommaText := '0��,1��,2��,3��,4��';
        cbbBranchSearchValue.Properties.DropDownListStyle := lsFixedList;
      end;
    5:
      begin
        cbbBranchSearchValue.Properties.Items.CommaText := '�����,������';
        cbbBranchSearchValue.Properties.DropDownListStyle := lsFixedList;
      end;
  end;

  if cbbBranchSearchValue.Enabled then
  begin
    cbbBranchSearchValue.ItemIndex := 0;
    cbbBranchSearchValue.SetFocus;
  end;
end;

procedure TFrm_CMP.cbbBranchSearchValueKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then btnBranchSearch.Click;
end;

procedure TFrm_CMP.cbbCustRankMileNamePropertiesChange(Sender: TObject);
begin
	ChageCustRankMileList(TcxComboBox(Sender).Text);
end;

procedure TFrm_CMP.cbbCustRankNamePropertiesChange(Sender: TObject);
begin
	ChageCustRankList(TcxComboBox(Sender).Text);
end;

procedure TFrm_CMP.Cb_RecvSmsClick(Sender: TObject);
begin
  // 20120720 LYB �߰�
	if Cb_RecvSms.Checked then
  begin
		lbl_RecvSmsNo.Enabled := True;
//    if (lbl_RecvSmsNo.Enabled) Or (lbl_RecvSmsNo.Visible) then lbl_RecvSmsNo.SetFocus;
	end else
  begin
    lbl_RecvSmsNo.Text := '';
    lbl_RecvSmsNo.Enabled := False;
	end;
end;

procedure TFrm_CMP.Cb_RecvSmsExcClick(Sender: TObject);
begin
  // 20120720 LYB �߰�
	if Cb_RecvSmsExc.Checked then
  begin
		lbl_RecvSmsExc.Enabled := True;
//    if (lbl_RecvSmsExc.Enabled) Or (lbl_RecvSmsExc.Visible) then lbl_RecvSmsExc.SetFocus;
	end else
  begin
    lbl_RecvSmsExc.Text := '';
    lbl_RecvSmsExc.Enabled := False;
	end;
end;

procedure TFrm_CMP.ChageCustRankList(ACustRankName: string);
var iRow : integer;
begin
	iRow := cxGridCustSMSList.DataController.FindRecordIndexByText(0, 0, ACustRankName, True, False, True);
	if iRow > -1 then
	begin
		if iRow mod 2 = 0 then
		begin
			mmoSMS700.Text := cxGridCustSMSList.DataController.Values[iRow, 2];
			mmoSMS701.Text := cxGridCustSMSList.DataController.Values[iRow + 1, 2];
		end	else
		begin
			mmoSMS700.Text := cxGridCustSMSList.DataController.Values[iRow - 1, 2];
			mmoSMS701.Text := cxGridCustSMSList.DataController.Values[iRow, 2];
		end;
	end else
	begin
		mmoSMS700.Text := '';
		mmoSMS701.Text := '';
	end;
end;

procedure TFrm_CMP.ChageCustRankMileList(ACustRankName: string);
var iRow : integer;
begin
	iRow := cxGridCustMileSMSList.DataController.FindRecordIndexByText(0, 0, ACustRanKName, True, False, True);
	if iRow > -1 then
	begin
		if iRow mod 2 = 0 then
		begin
			mmoSMS702.Text := cxGridCustMileSMSList.DataController.Values[iRow, 2];
			mmoSMS703.Text := cxGridCustMileSMSList.DataController.Values[iRow + 1, 2];
		end	else
		begin
			mmoSMS702.Text := cxGridCustMileSMSList.DataController.Values[iRow - 1, 2];
			mmoSMS703.Text := cxGridCustMileSMSList.DataController.Values[iRow, 2];
		end;
	end else
	begin
		mmoSMS702.Text := '';
		mmoSMS703.Text := '';
	end;
end;

procedure TFrm_CMP.cxGridCustSMSListCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var iRow : integer;
begin
	iRow := cxGridCustSMSList.DataController.FocusedRecordIndex;
	cbbCustRankName.ItemIndex := sCustRankNameList.IndexOf(cxGridCustSMSList.DataController.Values[iRow, 0]);
end;

procedure TFrm_CMP.cxImage1MouseLeave(Sender: TObject);
begin
	PnlHint.Visible := False;
end;

procedure TFrm_CMP.cxImage1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
	PnlHint.Left := 4;
	PnlHint.Top := 29;
	PnlHint.Visible := True;
end;

procedure TFrm_CMP.cxLabel111Click(Sender: TObject);
var   IE: Variant;
begin
  try
    IE := CreateOleObject('InternetExplorer.Application');
    IE.Left := 0;
    IE.Top := 0;
    IE.Width := Screen.Width;
    IE.Height := Screen.Height;
    IE.Navigate('http://www.oshot.co.kr/');
    IE.Visible := True;
  except
  end;
end;

procedure TFrm_CMP.cxPageControl1Change(Sender: TObject);
begin
	case cxPageControl1.ActivePageIndex of
    0: begin
				 if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB  .
				 begin
					 RequestDataHead;
				 end;
       end;
    1:
      begin
        proc_init_branch;
				RequestDataBranchList;
			end;
		2:
			begin
				BtnSearchA3Click(BtnSearchA3);
			end;
		4:
      begin
        BtnSearchA5.Click;
      end;
	end;
end;

procedure TFrm_CMP.cxRBDJClick(Sender: TObject);
begin
  if cxRBDM.Checked then
  begin
    mmoSMS140.Top := 179;
    mmoSMS140.Height := 55;
  end else
  begin
    mmoSMS140.Top := 79;
    mmoSMS140.Height := 155;
  end;
end;

procedure TFrm_CMP.cxRBSJClick(Sender: TObject);
begin
  if cxRBSM.Checked then
  begin
    mmoSMS141.Top := 179;
    mmoSMS141.Height := 55;
  end else
  begin
    mmoSMS141.Top := 79;
    mmoSMS141.Height := 155;
  end;
end;

procedure TFrm_CMP.RequestDataBranchList;
var
	ls_TxLoad: string;
begin
{	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('�ش纻�翡 ���� ��ü ������ �����ϴ�.' + #13#10 + '���縦 �����Ͽ� �ֽʽÿ�.', CDMSI);
		exit;
	end; }

  if fGetChk_Search_HdBrNo('�������') then Exit;

	try
		ls_TxLoad := GTx_UnitXmlLoad('C046N1.xml');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BRCH0001', [rfReplaceAll]);

		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			ls_TxLoad := StringReplace(ls_TxLoad, '�����ڵ�', GT_SEL_BRNO.HDNO, [rfReplaceAll])
		else
			ls_TxLoad := StringReplace(ls_TxLoad, '�����ڵ�', GT_USERIF.HD, [rfReplaceAll]);

		// ����α��� �� ���� �˻�
    if GT_USERIF.LV = '60' then
    begin
			{ �����ڵ�(1),�����(2),��ǥ��ȣ(3),���系�����������(4),��ġ���(5) }
      ls_TxLoad := StringReplace(ls_TxLoad, '�˻�����', IntToStr(cbbBranchSearchType.ItemIndex), [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, '�˻�����', GetBranchSearchText, [rfReplaceAll]);
    end
    // ���� �α��� �� �����ڵ�� �˻�
    else
    begin
			ls_TxLoad := StringReplace(ls_TxLoad, '�˻�����', '1', [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '�˻�����', GT_SEL_BRNO.BrNo, [rfReplaceAll]);
		end;
		ls_TxLoad := StringReplace(ls_TxLoad, 'key_number="��ǥ��ȣ"', 'key_number="��ǥ��ȣ" account="�������"', [rfReplaceAll]);
		RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_CMP.ResponseDataBranchList(AXmlStr: WideString);
var
	I, iCnt, iSortIndex : Integer;
  xdom: msDomDocument;
  ResultList: IXMLDomNodeList;
	Use, sAddr : string;
begin
	xdom := ComsDomDocument.Create;
  if not xdom.loadXML(AXmlStr) then
    Exit;
	gCurProperties.DisplayFormat := ',0;-,0';
	gCurProperties.Alignment.Horz := taRightJustify;
	if TCK_USER_PER.CMP_BrchCachView = '1' then
	begin
		gCurProperties.EchoMode := eemNormal;
	end else
	begin
		gCurProperties.EchoMode := eemPassword;
	end;
	cxViewBranch.Columns[5].Properties := gCurProperties;    //����ĳ��
	cxViewBranch.Columns[6].Properties := gCurProperties;    //SMSĳ��

	ResultList := xdom.documentElement.selectNodes('/cdms/Service/Branches/Branch');

	cxViewBranch.DataController.SetRecordCount(0);
 	iSortIndex := cxViewBranch.GetColumnByFieldName('�����').Index;
	cxViewBranch.BeginUpdate;
	iCnt := 0;
	try
		for I := 0 to ResultList.length - 1 do
    begin
			if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB   �йи������϶�
			begin
				if not Check_ALLHD(GT_SEL_BRNO.HDNO) then      //��ü��������� ������
				begin
					if scb_FamilyBrCode.IndexOf(ResultList[I].attributes.getNamedItem('no').text) = -1 then   //�����ִ� �����ϰ�츸 �׸���ǥ��
					else
					begin
						cxViewBranch.DataController.AppendRecord;
						cxViewBranch.DataController.SetValue(iCnt, 0, iCnt + 1);
						cxViewBranch.DataController.SetValue(iCnt, 1, ResultList[I].attributes.getNamedItem('name').text);
						cxViewBranch.DataController.SetValue(iCnt, 2, ResultList[I].attributes.getNamedItem('no').text);
						cxViewBranch.DataController.SetValue(iCnt, 3, strtocall(ResultList[I].attributes.getNamedItem('phone').text));
						cxViewBranch.DataController.SetValue(iCnt, 4, strtocall(ResultList[I].attributes.getNamedItem('key_number').text));
						cxViewBranch.DataController.SetValue(iCnt, 5, StrToFloatDef(ResultList[I].attributes.getNamedItem('cash').text, 0.0));
						cxViewBranch.DataController.SetValue(iCnt, 6, StrToFloatDef(ResultList[I].attributes.getNamedItem('sms_deposit').text, 0.0));
						Use := IfThen(UpperCase(ResultList[I].attributes.getNamedItem('use').text) = 'Y', '�����', '������');
						cxViewBranch.DataController.SetValue(iCnt, 7, Use);

  					cxViewBranch.DataController.SetValue(iCnt, 8, ResultList[I].attributes.getNamedItem('br_snum').text);       // ����ڹ�ȣ
  					cxViewBranch.DataController.SetValue(iCnt, 9, ResultList[I].attributes.getNamedItem('br_ceo').text);        // ��ǥ�ڸ�
  					cxViewBranch.DataController.SetValue(iCnt, 10, Copy(ResultList[I].attributes.getNamedItem('br_jumin_no').text, 1, 6) + '-' +
                                                           Copy(ResultList[I].attributes.getNamedItem('br_jumin_no').text, 7, 7) );   // �ֹι�ȣ
  					cxViewBranch.DataController.SetValue(iCnt, 11, ResultList[I].attributes.getNamedItem('br_biz_name').text);   // ������
  					cxViewBranch.DataController.SetValue(iCnt, 12, ResultList[I].attributes.getNamedItem('br_biz_tel').text);    // ��ȭ��ȣ

            if Trim(ResultList[I].attributes.getNamedItem('zipcode').text) = '' then
              sAddr := ResultList[I].attributes.getNamedItem('addr1').text + ' ' +
                       ResultList[I].attributes.getNamedItem('addr2').text
            else
              sAddr := '( ' + ResultList[I].attributes.getNamedItem('zipcode').text + ' ) ' +
                             ResultList[I].attributes.getNamedItem('addr1').text + ' ' +
                             ResultList[I].attributes.getNamedItem('addr2').text;

  					cxViewBranch.DataController.SetValue(iCnt, 13, sAddr);     // �ּ�

						cxViewBranch.DataController.SetValue(iCnt, 14, LeftStr(ResultList[I].attributes.getNamedItem('in_date').text, 19));

						if IsDaeJeonShare(GS_PRJ_AREA = 'O', GT_USERIF.ShareNo) then
							cxViewBranch.DataController.SetValue(iCnt, 15, '')
						else
						begin
							if TCK_USER_PER.CMP_BrchACCNumber = '1' then
							begin
								cxViewBranch.DataController.SetValue(iCnt, 15, ResultList[I].attributes.getNamedItem('account').text);
							end	else
							begin
								if ResultList[I].attributes.getNamedItem('account').text <> '' then
									cxViewBranch.DataController.SetValue(iCnt, 15, '*******************')
								else
									cxViewBranch.DataController.SetValue(iCnt, 15, ResultList[I].attributes.getNamedItem('account').text);
							end;
						end;

						inc(iCnt);
					end;
				end else
				begin
					cxViewBranch.DataController.AppendRecord;
					cxViewBranch.DataController.SetValue(I, 0, I + 1);
					cxViewBranch.DataController.SetValue(I, 1, ResultList[I].attributes.getNamedItem('name').text);
					cxViewBranch.DataController.SetValue(I, 2, ResultList[I].attributes.getNamedItem('no').text);
					cxViewBranch.DataController.SetValue(I, 3, strtocall(ResultList[I].attributes.getNamedItem('phone').text));
					cxViewBranch.DataController.SetValue(I, 4, strtocall(ResultList[I].attributes.getNamedItem('key_number').text));
					cxViewBranch.DataController.SetValue(I, 5, StrToFloatDef(ResultList[I].attributes.getNamedItem('cash').text, 0.0));
					cxViewBranch.DataController.SetValue(I, 6, StrToFloatDef(ResultList[I].attributes.getNamedItem('sms_deposit').text, 0.0));
					Use := IfThen(UpperCase(ResultList[I].attributes.getNamedItem('use').text) = 'Y', '�����', '������');
					cxViewBranch.DataController.SetValue(I, 7, Use);

          cxViewBranch.DataController.SetValue(I, 8, ResultList[I].attributes.getNamedItem('br_snum').text);    // ����ڹ�ȣ
          cxViewBranch.DataController.SetValue(I, 9, ResultList[I].attributes.getNamedItem('br_ceo').text);        // ��ǥ�ڸ�
          cxViewBranch.DataController.SetValue(I, 10, Copy(ResultList[I].attributes.getNamedItem('br_jumin_no').text, 1, 6) + '-' +
                                                      Copy(ResultList[I].attributes.getNamedItem('br_jumin_no').text, 7, 7) );   // �ֹι�ȣ
          cxViewBranch.DataController.SetValue(I, 11, ResultList[I].attributes.getNamedItem('br_biz_name').text);   // ������
          cxViewBranch.DataController.SetValue(I, 12, ResultList[I].attributes.getNamedItem('br_biz_tel').text);    // ��ȭ��ȣ

          if Trim(ResultList[I].attributes.getNamedItem('zipcode').text) = '' then
            sAddr := ResultList[I].attributes.getNamedItem('addr1').text + ' ' +
                     ResultList[I].attributes.getNamedItem('addr2').text
          else
            sAddr := '( ' + ResultList[I].attributes.getNamedItem('zipcode').text + ' ) ' +
                           ResultList[I].attributes.getNamedItem('addr1').text + ' ' +
                           ResultList[I].attributes.getNamedItem('addr2').text;

          cxViewBranch.DataController.SetValue(I, 13, sAddr);     // �ּ�

					cxViewBranch.DataController.SetValue(I, 14, LeftStr(ResultList[I].attributes.getNamedItem('in_date').text, 19));
					if IsDaeJeonShare(GS_PRJ_AREA = 'O', GT_USERIF.ShareNo) then
						cxViewBranch.DataController.SetValue(I, 15, '')
					else
					begin
						if TCK_USER_PER.CMP_BrchACCNumber = '1' then
						begin
							cxViewBranch.DataController.SetValue(I, 15, ResultList[I].attributes.getNamedItem('account').text)
						end else
						begin
							if ResultList[I].attributes.getNamedItem('account').text <> '' then
								cxViewBranch.DataController.SetValue(I, 15, '*******************')
							else
								cxViewBranch.DataController.SetValue(I, 15, ResultList[I].attributes.getNamedItem('account').text);
						end;
					end;
				end;
			end else
			begin
				cxViewBranch.DataController.AppendRecord;
				cxViewBranch.DataController.SetValue(I, 0, I + 1);
				cxViewBranch.DataController.SetValue(I, 1, ResultList[I].attributes.getNamedItem('name').text);
				cxViewBranch.DataController.SetValue(I, 2, ResultList[I].attributes.getNamedItem('no').text);
				cxViewBranch.DataController.SetValue(I, 3, strtocall(ResultList[I].attributes.getNamedItem('phone').text));
				cxViewBranch.DataController.SetValue(I, 4, strtocall(ResultList[I].attributes.getNamedItem('key_number').text));
				cxViewBranch.DataController.SetValue(I, 5, StrToFloatDef(ResultList[I].attributes.getNamedItem('cash').text, 0.0));
				cxViewBranch.DataController.SetValue(I, 6, StrToFloatDef(ResultList[I].attributes.getNamedItem('sms_deposit').text, 0.0));
				Use := IfThen(UpperCase(ResultList[I].attributes.getNamedItem('use').text) = 'Y', '�����', '������');
				cxViewBranch.DataController.SetValue(I, 7, Use);

        cxViewBranch.DataController.SetValue(I, 8, ResultList[I].attributes.getNamedItem('br_snum').text);    // ����ڹ�ȣ
        cxViewBranch.DataController.SetValue(I, 9, ResultList[I].attributes.getNamedItem('br_ceo').text);        // ��ǥ�ڸ�
        cxViewBranch.DataController.SetValue(I, 10, Copy(ResultList[I].attributes.getNamedItem('br_jumin_no').text, 1, 6) + '-' +
                                                    Copy(ResultList[I].attributes.getNamedItem('br_jumin_no').text, 7, 7) );   // �ֹι�ȣ
        cxViewBranch.DataController.SetValue(I, 11, ResultList[I].attributes.getNamedItem('br_biz_name').text);   // ������
        cxViewBranch.DataController.SetValue(I, 12, ResultList[I].attributes.getNamedItem('br_biz_tel').text);    // ��ȭ��ȣ

        if Trim(ResultList[I].attributes.getNamedItem('zipcode').text) = '' then
          sAddr := ResultList[I].attributes.getNamedItem('addr1').text + ' ' +
                   ResultList[I].attributes.getNamedItem('addr2').text
        else
          sAddr := '( ' + ResultList[I].attributes.getNamedItem('zipcode').text + ' ) ' +
                         ResultList[I].attributes.getNamedItem('addr1').text + ' ' +
                         ResultList[I].attributes.getNamedItem('addr2').text;

        cxViewBranch.DataController.SetValue(I, 13, sAddr);     // �ּ�

				cxViewBranch.DataController.SetValue(I, 14, LeftStr(ResultList[I].attributes.getNamedItem('in_date').text, 19));

				if IsDaeJeonShare(GS_PRJ_AREA = 'O', GT_USERIF.ShareNo) then
					cxViewBranch.DataController.SetValue(I, 15, '')
				else
				begin
					if TCK_USER_PER.CMP_BrchACCNumber = '1' then
					begin
						cxViewBranch.DataController.SetValue(I, 15, ResultList[I].attributes.getNamedItem('account').text)
					end	else
					begin
						if ResultList[I].attributes.getNamedItem('account').text <> '' then
							cxViewBranch.DataController.SetValue(I, 15, '*******************')
						else
							cxViewBranch.DataController.SetValue(I, 15, ResultList[I].attributes.getNamedItem('account').text);
					end;
				end;
			end;
		end;
  finally
    cxViewBranch.EndUpdate;
  	cxViewBranch.Columns[iSortIndex].SortOrder := soAscending;
		cxViewBranch.Columns[iSortIndex].SortIndex := 0;
  	gfSetIndexNo(cxViewBranch, iSortIndex, GS_SortNoChange);
    xdom := Nil;
  end;
end;

function TFrm_CMP.GetBranchSearchText: string;
begin
  Result := '';

  case cbbBranchSearchType.ItemIndex of
    0..3:
      Result := cbbBranchSearchValue.Text;
    4:
      Result := Copy(cbbBranchSearchValue.Text, 1, 1);
    5:
      Result := IfThen(cbbBranchSearchValue.ItemIndex = 0, 'y', 'n');
  end;
end;

procedure TFrm_CMP.grpSMSRankMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(pnl12.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_CMP.lbl67MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
	ReleaseCapture;
	PostMessage(pnlCustRankName.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_CMP.lb_OShotIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	btn_OShotSummit.Enabled := True;
end;

procedure TFrm_CMP.RequestDataOShotSet;
label
  Retry;
var
	xdom: msDomDocument;
	lst_Result: IXMLDomNodeList;
	ls_Rcrd: TStringList;
	iRCnt, i, ErrCode : Integer;
	sTemp, ls_Msg_Err, rv_str, ls_rxxml: string;
	ls_TxLoad: string;
  slRcvList: TStringList;
begin
  proc_initA5;

	if GT_SEL_BRNO.GUBUN <> '1' then
	begin
		GMessagebox(PChar('������ ������ [���� ��� ���缱�� �޴�����] ���縦 �����ϼž� �մϴ�.'), CDMSE);
		Exit;
	end;

	if ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
	begin
		if Not fGetCheck_BlowFish_HdBrNo( GT_SEL_BRNO.HDNO, GT_SEL_BRNO.BrNo ) then
		begin
			GMessagebox('��ȸ ������ ���� ����.���� �Դϴ�.', CDMSE);
			Assert(False, '[�����ڵ庯��]RequestDataSmsList : fGetCheck_BlowFish_HdBrNo : ' + GT_SEL_BRNO.HDNO + GT_SEL_BRNO.BrNo + ' - ' + GS_BlowFish_HdBrNo);
			Exit;
		end;
	end;

	try
		ls_TxLoad := GTx_UnitXmlLoad('JON03030_02.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString',        GT_USERIF.ID,   [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',     VERSIONINFO,    [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',     'JON03030_02',     [rfReplaceAll]);

		ls_TxLoad := StringReplace(ls_TxLoad, 'CuTelString',         '', [rfReplaceAll]); // ����ȣ   (������ ���Ƿ� ����ȣ�Է�)
		ls_TxLoad := StringReplace(ls_TxLoad, 'KeyNumberString',     '', [rfReplaceAll]); // ��ǥ��ȣ   (������ ���Ƿ� ����/��ǥ��ȣ ����)
		ls_TxLoad := StringReplace(ls_TxLoad, 'HdNoString',          En_Coding(GT_SEL_BRNO.HdNo), [rfReplaceAll]); // �����ڵ�   (������ ���Ƿ� ����/��ǥ��ȣ ����)
		ls_TxLoad := StringReplace(ls_TxLoad, 'BrNoString',          En_Coding(GT_SEL_BRNO.BrNo), [rfReplaceAll]); // �����ڵ�   (������ ���Ƿ� ����/��ǥ��ȣ ����)

Retry:
    Screen.Cursor := crHourGlass;
		slRcvList := TStringList.Create;
    try
			if dm.SendSockAccept(ls_TxLoad, slRcvList, ErrCode, False) then
      begin
				rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
					ls_rxxml := rv_str;
					Application.ProcessMessages;
					xdom := ComsDomDocument.Create;
					try
						if not xdom.loadXML(ls_rxxml) then Exit;

						ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
						if ('0000' = ls_Msg_Err) then
						begin
							lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/SmsInfo');
							iRCnt := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Count').Text, 0);
							gOShotSend := False;
							if lst_Result.item[0].attributes.getNamedItem('Type').Text = Trim('Oshot') then
							begin
								chk_OShotSend.checked := True;//�߼۸�
								gOShotSend := True;
							end;

							gOShotUserId   := lst_Result.item[0].attributes.getNamedItem('OshotId').Text;     //����ID
							gOShotUserPass := lst_Result.item[0].attributes.getNamedItem('OshotPwd').Text;   //����PW

							lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/SmsInfo/Sms');
							if iRcnt > 0 then
							begin
								try
									for i := 0 to iRcnt - 1  do
									begin
										if lst_Result.item[i].attributes.getNamedItem('SmsType').Text = '140' then
										begin
											if lst_Result.item[i].attributes.getNamedItem('FromNum').Text = '0' then
                         edtSMSR140.Text := '������ǥ��ȣ'
											else
                      begin
                        chkSMSR140.Checked := True;
                        cbKeynumber01.ItemIndex := cbKeynumber01.Properties.Items.IndexOf(lst_Result.item[i].attributes.getNamedItem('FromNum').Text);
                      end;
											mmoSMS140.Text := lst_Result.item[i].Text;
											lblSMS140.Caption := IntToStr(GetSmsMemoLength(AnsiString(mmoSMS140.Text))) + ' Byte';

                      ls_Rcrd := TStringList.Create;
                      try
                        GetTextSeperationEx('|', lst_Result.item[i].attributes.getNamedItem('Filenames').Text, ls_Rcrd);
                        ImgDMMS.Hint := ls_Rcrd[0];

                        if Trim(ImgDMMS.Hint) <> '' then
                        begin
                          if FileExists(OSHOTDRIVE+imgDMMS.Hint) then
                          begin
                            pGetLoadBuffer(OSHOTDRIVE+imgDMMS.Hint, '140');
                            imgDMMS.Picture.LoadFromFile(OSHOTDRIVE+imgDMMS.Hint);
                            cxRBDM.Checked := True;
                            LblDSMS.Caption := 'MMS';
                            cxRBDJClick(cxRBDM);
                          end else
                          begin
                            fGetMMSImage('140');
                            if FileExists(OSHOTDRIVE+imgDMMS.Hint) then
                            begin
                              pGetLoadBuffer(OSHOTDRIVE+imgDMMS.Hint, '140');
                              imgDMMS.Picture.LoadFromFile(OSHOTDRIVE+imgDMMS.Hint);
                              cxRBDM.Checked := True;
                              LblDSMS.Caption := 'MMS';
                              cxRBDJClick(cxRBDM);
                            end
                          end;
                        end;
                      finally
                        ls_Rcrd.Free;
                      end;
										end else
										if lst_Result.item[i].attributes.getNamedItem('SmsType').Text = '141' then
										begin
											if lst_Result.item[i].attributes.getNamedItem('FromNum').Text = '0' then
                         edtSMSR141.Text := '������ǥ��ȣ'
											else
                      begin
                        chkSMSR141.Checked := True;
                        cbKeynumber02.ItemIndex := cbKeynumber02.Properties.Items.IndexOf(lst_Result.item[i].attributes.getNamedItem('FromNum').Text);
                      end;
											mmoSMS141.Text := lst_Result.item[i].Text;
											lblSMS141.Caption := IntToStr(GetSmsMemoLength(AnsiString(mmoSMS141.Text))) + ' Byte';

                      ls_Rcrd := TStringList.Create;
                      try
                        GetTextSeperationEx('|', lst_Result.item[i].attributes.getNamedItem('Filenames').Text, ls_Rcrd);
                        ImgSMMS.Hint := ls_Rcrd[0];

                        if Trim(ImgSMMS.Hint) <> '' then
                        begin
                          if FileExists(OSHOTDRIVE+imgSMMS.Hint) then
                          begin
                            pGetLoadBuffer(OSHOTDRIVE+imgSMMS.Hint, '141');
                            imgSMMS.Picture.LoadFromFile(OSHOTDRIVE+imgSMMS.Hint);
                            cxRBSM.Checked := True;
                            LblSSMS.Caption := 'MMS';
                            cxRBSJClick(cxRBSM);
                          end else
                          begin
                            fGetMMSImage('141');
                            if FileExists(OSHOTDRIVE+imgSMMS.Hint) then
                            begin
                              pGetLoadBuffer(OSHOTDRIVE+imgSMMS.Hint, '141');
                              imgSMMS.Picture.LoadFromFile(OSHOTDRIVE+imgSMMS.Hint);
                              cxRBSM.Checked := True;
                              LblSSMS.Caption := 'MMS';
                              cxRBSJClick(cxRBSM);
                            end
                          end;
                        end;
                      finally
                        ls_Rcrd.Free;
                      end;
										end;
									end;
								except on e: exception do
									begin
										sTemp := 'JON01[Proc_AutoCallInsert] Error :' + e.Message;
										Log(sTemp, LOGDATAPATHFILE);
										Assert(False, sTemp);
									end;
								end;
							end;
						end else
						begin
							// �޽��� ���� : ��ϵ��� ���� ��ǥ��ȣ �Դϴ�.
							GMessagebox(MSG421, CDMSE);
						end;
					finally
						xdom := nil;
					end;
				end;
			end;
		finally
			FreeAndNil(slRcvList);
			Screen.Cursor := crDefault;
		end;

		if gOShotUserId <> '' then
		begin
			btn_OShotSummit.Enabled := False;
			lb_OShotID.Text := gOShotUserId;
			lb_OShotPW.Text := gOShotUserPass;

      gOShotStat := fn_Re_LoginOK(gOShotUserId, gOShotUserPass);

    	if gOShotStat then
      begin
        Cash_ReFlash;
        btn_wRef1.Visible := True;
        cxGrpOShot.Visible := True;
        btn_OShotSummit.Enabled := False;
      end else
      begin
        btn_wRef1.Visible := False;
        cxGrpOShot.Visible := False;
    	  btn_OShotSummit.Enabled := True;
      end;
		end;

	except
		on e: exception do
		begin
			ShowMessage('[������ ����ȣ�� ��ȸ] ���� ó��:' + e.Message);
		end;
	end;
end;

procedure TFrm_CMP.Cash_ReFlash;
begin
  If gOShotCharge = '' Then gOShotCharge := '0';
  If UserKind = '1' Then
  begin
     cxLblCash.Caption := FormatFloat('#,##0', StrToFloat(gOShotCharge)) + '��';
  end Else
  If UserKind ='2' Then
  begin
     cxLblCash.Caption := '�ĺ���';
  end;
  cxLblSCash.Caption := UserDan + '��/�Ǵ�';
  cxLblLCash.Caption := UserDanLong + '��/�Ǵ�';
  cxLblMCash.Caption := UserDanMMS + '��/�Ǵ�';
  cxGrpOShot.Visible := True;
end;

end.


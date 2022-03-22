unit xe_JON07;

interface

uses
	Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, xe_GNL,
  Dialogs, IniFiles, clipbrd, cxGraphics, cxControls, cxLookAndFeels, System.Math,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxImageComboBox,
  cxCurrencyEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.ExtCtrls, cxContainer, cxLabel, dxSkinsCore,
	dxSkinscxPCPainter, cxTextEdit, cxMaskEdit, MSXML2_TLB, 
	cxDropDownEdit, dxGDIPlusClasses, cxImage, cxMemo, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, 
	dxSkinMetropolisDark, dxSkinOffice2007Silver, cxTL, cxTLdxBarBuiltInMenu, cxInplaceContainer, cxSplitter, cxButtonEdit, cxEditRepositoryItems,
  cxCheckBox, dxScrollbarAnnotations;
type
{===================================================================
 # ���ջ� ����
====================================================================}
	TSTG_HISRec = record
		List00,
		List01,
		List02,
		List03,
		List04,
		List05,
		List06,
		List07,
		List08,
    List09,
    List10,
    List11,
    List12,
    List13,
    List14,
    List15,
    List16,
    List17,
    List18,
		List19 : string;
    LIstNo : Integer;
	end;

type
  TcxGridSiteAccess = class (TcxGridSite);
  TcxControlScrollBarsAccess = class (TcxControlWindowedScrollBars);

type
  TFrm_JON07 = class(TForm)
		Panel1: TPanel;
    cxGrid: TcxGrid;
		stg_His_View: TcxGridDBTableView;
    stg_His_ViewColumn1: TcxGridDBColumn;
    stg_His_ViewColumn2: TcxGridDBColumn;
    stg_His_ViewColumn3: TcxGridDBColumn;
    stg_His_ViewColumn4: TcxGridDBColumn;
    stg_His_ViewColumn5: TcxGridDBColumn;
    stg_His_ViewColumn6: TcxGridDBColumn;
    stg_His_ViewColumn7: TcxGridDBColumn;
    stg_His_ViewColumn8: TcxGridDBColumn;
    stg_His_ViewColumn9: TcxGridDBColumn;
    stg_His_ViewColumn10: TcxGridDBColumn;
    stg_His_ViewColumn11: TcxGridDBColumn;
    stg_His_ViewColumn12: TcxGridDBColumn;
    stg_His_ViewColumn13: TcxGridDBColumn;
    stg_His_ViewColumn14: TcxGridDBColumn;
    cxWkConnect: TcxGridLevel;
    popConfHis: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
		stg_His_ViewColumn15: TcxGridDBColumn;
    stg_His_ViewColumn16: TcxGridDBColumn;
    N3: TMenuItem;
    btnBeacha: TcxButton;
    N4: TMenuItem;
    mn_wk_tell: TMenuItem;
    mn_SMS1: TMenuItem;
    mn_wk_HP: TMenuItem;
    mn_SMS2: TMenuItem;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    cxLblActive: TLabel;
    mn_WkBlock: TMenuItem;
    N5: TMenuItem;
    stg_His_ViewColumn17: TcxGridDBColumn;
    stg_His_ViewColumn18: TcxGridDBColumn;
		stg_His_ViewColumn19: TcxGridDBColumn;
		N6: TMenuItem;
    N_Kakao: TMenuItem;
    pnl_KakaoBlock: TPanel;
    pnl_KakaoBlock1: TPanel;
    Panel4: TPanel;
    Shape27: TShape;
    cxLabel1: TcxLabel;
    cb_Block: TcxComboBox;
    cxButton5: TcxButton;
    Shape1: TShape;
    cxLabel2: TcxLabel;
    lb_KakaoSabun: TcxLabel;
    btn_KakaoBlock: TcxButton;
    meo_Reason: TcxMemo;
    lb_BlockResult: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    btnBeachaReload: TcxButton;
    stg_His_ViewColumn20: TcxGridDBColumn;
    mn_BuBlock: TMenuItem;
    stg_His_ViewColumn21: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    stg_His_D: TcxGridDBTableView;
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
    cxGridLevel1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    pnlBottom: TPanel;
    cxLabel3: TcxLabel;
    btnDClose: TcxButton;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1ButtonItemText: TcxEditRepositoryButtonItem;
    cxEditRepository1ButtonItemGlyph: TcxEditRepositoryButtonItem;
    chkType1: TcxCheckBox;
    stg_His_ViewColumn22: TcxGridDBColumn;
    stg_His_DColumn1: TcxGridDBColumn;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
		procedure stg_His_ViewCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
		procedure N2Click(Sender: TObject);
		procedure FormCreate(Sender: TObject);
    procedure btnBeachaClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
		procedure FormShow(Sender: TObject);
    procedure mn_wk_tellClick(Sender: TObject);
    procedure mn_SMS1Click(Sender: TObject);
    procedure mn_wk_HPClick(Sender: TObject);
    procedure mn_SMS2Click(Sender: TObject);
    procedure popConfHisPopup(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
		procedure stg_His_ViewStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure mn_WkBlockClick(Sender: TObject);
		procedure N5Click(Sender: TObject);
    procedure pnl_KakaoBlock1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N_KakaoClick(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure btn_KakaoBlockClick(Sender: TObject);
    procedure btnBeachaReloadClick(Sender: TObject);
    procedure stg_His_ViewColumnPosChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
		procedure stg_His_ViewColumnSizeChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure tl_His_ViewFocusedColumnChanged(Sender: TcxCustomTreeList; APrevFocusedColumn, AFocusedColumn: TcxTreeListColumn);
    procedure tl_His_ViewFocusedNodeChanged(Sender: TcxCustomTreeList; APrevFocusedNode, AFocusedNode: TcxTreeListNode);
    procedure btnDCloseClick(Sender: TObject);
    procedure stg_His_ViewColumn11GetProperties(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure cxEditRepository1ButtonItemGlyphPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure chkType1Click(Sender: TObject);
    procedure chkType1PropertiesChange(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    gs_CellValue: string;
		FStCd: string;
    FBrNo: string;
    FAccTime: string;
    FMainKeyNum: string;
    FWkName: string;
		FAccDateTime: string;
		FCuGubun: string;
		FCuseq: string;
		FBubin: string;

    gSelGridName : String;
		procedure proc_Cell_Read;
		procedure proc_Cell_Save;
		procedure proc_Cell_Clear;
    procedure HScrollHandler(Sender: TObject; ScrollCode: TScrollCode; var ScrollPos: Integer);
		function func_GetCounsel(AID:string):string;
	public
		{ Public declarations }
		Jon03Tag : Integer;
		pJON07Dock : TUNDOCKMNG;
		bTaSaCall : Boolean;
		gStCd: string;  //��ù��� Ȯ�ο����� �߰��� ��������

 		STG_HIS : array of TSTG_HISRec;
    gStCnt : Integer;
    gGroupIndex : TStringList;

		property StCd: string read FStCd write FStCd;
		property BrNo: string read FBrNo write FBrNo;
		property AccTime: string read FAccTime write FAccTime;
		property MainKeyNum: string read FMainKeyNum write FMainKeyNum;
		property WkName: string read FWkName write FWkName;
		property AccDateTime: string read FAccDateTime write FAccDateTime;
		property CuGubun: string read FCuGubun write FCuGubun;
		property Cuseq: string read FCuseq write FCuseq;
		property Bubin: string read FBubin write FBubin;
		procedure Proc_init;
		procedure Proc_BeachaBtnClear;

    const
			COLUUMNLIST : array[0..21] of TSortList = (
        (cName : 'ó���Ͻ�'    ;  cWid : 098 ),
				(cName : '����'        ;  cWid : 066 ),
				(cName : 'ó����'      ;  cWid : 064 ),
        (cName : '�Ҽ�'        ;  cWid : 084 ),
        (cName : '��Ȳ��'      ;  cWid : 090 ),
        (cName : '�����'    ;  cWid : 068 ),
        (cName : '����'      ;  cWid : 064 ),
        (cName : '�ܸ���'      ;  cWid : 099 ),
        (cName : '�޴���'      ;  cWid : 098 ),
				(cName : '��һ���'    ;  cWid : 065 ),
        (cName : '��������'    ;  cWid : 093 ),
        (cName : '�����'      ;  cWid : 064 ),
        (cName : '������'      ;  cWid : 064 ),
        (cName : '���'        ;  cWid : 054 ),
        (cName : '�����ü���';  cWid : 064 ),
        (cName : '��������ڵ�';  cWid : 064 ),
        (cName : '��纻���ڵ�';  cWid : 064 ),
        (cName : '��������'    ;  cWid : 064 ),
        (cName : 'OdbWkSabun'  ;  cWid : 064 ),
        (cName : 'OdbEtc'      ;  cWid : 064 ),
				(cName : 'Group'       ;  cWid : 030 ),
				(cName : 'ó����ID'    ;  cWid : 064 )
			);
	end;

var
  Frm_JON07: TFrm_JON07;

  sWK_HP1, sWK_HP2 : string;         // ��� �ܸ���, �޴��� ��ȣ
  sCent_Tel : string;                // �ݼ��� ��Ȳ�� ��ȭ��ȣ

implementation

{$R *.dfm}

uses Main,  xe_Func, xe_Msg, xe_Lib, xe_xml, xe_Dm, xe_SMS01, xe_gnl2, xe_gnl3,
	xe_WOR17, xe_CUT014, xe_JON10, xe_Packet, xe_JON01Share, xe_Flash;

procedure TFrm_JON07.btnBeachaReloadClick(Sender: TObject);
begin
	N3.Enabled := True;
	btnBeacha.Enabled := True;
	btnBeachaReload.Visible := False;

	if ((GS_PRJ_AREA = 'S') and (GT_USERIF.CT = 'J610')) or (GT_USERIF.BR = 'B100')  then  //��ù�����ư Ȱ��ȭ���
	begin
		Assert(False, 'JON07 ��ù�����ư Ȱ��ȭ�� : ����[StCd-' + FStCd + ', gStCd-' + gStCd 
								+ '], ���α׷��ð� [' + StartDateTime('yyyymmdd') 
								+ '], �����ð�[' + AccTime 
								+ '], ������ȣ[' + GT_OrderInfo[Self.Tag].Slip + ']');			
	end;
end;

procedure TFrm_JON07.btnCloseClick(Sender: TObject);
begin
  Hide;
  try
    if Assigned(Frm_Main.Frm_JON03[Jon03Tag]) then
    begin
     if Frm_Main.Frm_JON03[Jon03Tag].Grd2.CanFocus then
			 Frm_Main.Frm_JON03[Jon03Tag].Grd2.SetFocus
     else
     if Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.CanFocus then
			 Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.SetFocus;
    end;
  except

  end;
end;

procedure TFrm_JON07.btnDCloseClick(Sender: TObject);
begin
  pnlBottom.Visible := False;
end;

procedure TFrm_JON07.btn_KakaoBlockClick(Sender: TObject);
var	XmlData, ErrMsg, param : string;
		ErrCode : Integer;
begin
	SetDebugeWrite('Frm_JON07.btn_KakaoBlockClick');

  Param := '0';
  Param := Param + '��' + IntToStr(cb_Block.Itemindex);
  case cb_Block.Itemindex of
    0:
    begin
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
        Param := Param + '��' + GT_SEL_BRNO.HDNO   //����
      else
        Param := Param + '��' + GT_USERIF.HD;
    end;
    1: Param := Param + '��' + GT_SEL_BRNO.BrNo;   //����
    2: Param := Param + '��' + GT_USERIF.CT;       //�ݼ���
  end;
  Param := Param + '��' + lb_KakaoSabun.Caption;            //���
  Param := Param + '��' + '';            //�ܸ����ȣ
  Param := Param + '��' + meo_ReaSon.Text;                  //���ܻ���
  Param := Param + '��' + lb_KakaoSabun.Hint;               //īī��������� ������ �˱����� �߰� 20191218 KHS ���漮���� Ȯ��

  if not RequestBase(GetCallable06('SET_BLOCK_KD', 'MNG.SET_BLOCK_KD', param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('īī����� �������ܽ� ������ �߻��Ͽ����ϴ�.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    lb_BlockResult.Caption := Format('ó����� : [%d]%s', [ErrCode, ErrMsg]);
    exit;
  end;

  lb_BlockResult.Caption := Format('ó����� : %s ���ܿϷ�', [lb_KakaoSabun.Caption]);

  GMessagebox(Format('īī�����(%s) ���ܿϷ�', [lb_KakaoSabun.Caption]), CDMSI);
  pnl_KakaoBlock.Visible := False;
end;

procedure TFrm_JON07.chkType1Click(Sender: TObject);
begin
  if chkType1.Tag = -1 then Exit;
  GB_JON07_OPT1 := TcxCheckBox(Sender).Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'GB_JON07_OPT1', GB_JON07_OPT1);

  Frm_Main.Frm_JON03[GI_JON03_LastFromIdx].N12.Click;
  if GB_JON07_OPT1 then stg_His_ViewColumn11.Options.ShowEditButtons := isebAlways
                   else stg_His_ViewColumn11.Options.ShowEditButtons := isebNever;
end;

procedure TFrm_JON07.chkType1PropertiesChange(Sender: TObject);
begin
	if chkType1.Checked then chkType1.Caption := '�ݺ����� ���ຸ��' else chkType1.Caption := '�ݺ����� ���ĺ���';
end;

procedure TFrm_JON07.cxButton5Click(Sender: TObject);
begin
	pnl_KakaoBlock.Visible := False;
end;

procedure TFrm_JON07.cxEditRepository1ButtonItemGlyphPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
Var i, iAdd, iRow, iGroup : Integer;
  	iTitle : array[0..20] of integer;
begin
  iRow := stg_His_View.DataController.FocusedRecordIndex;
  if iRow = -1 then Exit;

  try
    iGroup := stg_His_View.GetColumnByFieldName('Group').Index;

		for i := 0 to Length(COLUUMNLIST) - 1 do
			iTitle[i] := stg_His_View.GetColumnByFieldName(COLUUMNLIST[i].CName).Index;

    stg_His_D.DataController.SetRecordCount(0);
    stg_His_D.beginUpdate;
    try
      for i := 0 to gStCnt - 1  do
      begin
        if STG_HIS[i].ListNo = stg_His_View.DataController.Values[iRow, iGroup] then
        begin
          iAdd := stg_His_D.DataController.AppendRecord;

          stg_His_D.DataController.Values[iAdd, iTitle[00]] := STG_HIS[i].List00;
          stg_His_D.DataController.Values[iAdd, iTitle[01]] := STG_HIS[i].List01;
          stg_His_D.DataController.Values[iAdd, iTitle[02]] := STG_HIS[i].List02;
          stg_His_D.DataController.Values[iAdd, iTitle[03]] := STG_HIS[i].List03;
          stg_His_D.DataController.Values[iAdd, iTitle[04]] := STG_HIS[i].List04;
          stg_His_D.DataController.Values[iAdd, iTitle[05]] := STG_HIS[i].List05;
          stg_His_D.DataController.Values[iAdd, iTitle[06]] := STG_HIS[i].List06;
          stg_His_D.DataController.Values[iAdd, iTitle[07]] := STG_HIS[i].List07;
          stg_His_D.DataController.Values[iAdd, iTitle[08]] := STG_HIS[i].List08;
          stg_His_D.DataController.Values[iAdd, iTitle[09]] := STG_HIS[i].List09;
          stg_His_D.DataController.Values[iAdd, iTitle[10]] := STG_HIS[i].List10;
          stg_His_D.DataController.Values[iAdd, iTitle[11]] := STG_HIS[i].List11;
          stg_His_D.DataController.Values[iAdd, iTitle[12]] := STG_HIS[i].List12;
          stg_His_D.DataController.Values[iAdd, iTitle[13]] := STG_HIS[i].List13;
          stg_His_D.DataController.Values[iAdd, iTitle[14]] := STG_HIS[i].List14;
          stg_His_D.DataController.Values[iAdd, iTitle[15]] := STG_HIS[i].List15;
          stg_His_D.DataController.Values[iAdd, iTitle[16]] := STG_HIS[i].List16;
          stg_His_D.DataController.Values[iAdd, iTitle[17]] := STG_HIS[i].List17;
          stg_His_D.DataController.Values[iAdd, iTitle[18]] := STG_HIS[i].List18;
          stg_His_D.DataController.Values[iAdd, iTitle[19]] := STG_HIS[i].List19;
        end;
      end;
    finally
      stg_His_D.EndUpdate;
    end;

    if stg_His_D.DataController.RecordCount > 0 then pnlBottom.Visible := True
                                                else pnlBottom.Visible := False;
  except
    on e: exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON07.FormActivate(Sender: TObject);
begin
	cxLblActive.Color := GS_ActiveColor;
	cxLblActive.Visible := True;
end;

procedure TFrm_JON07.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
  ln_env: TIniFile;
  sTemp: string;
begin
  frm_JON07.Hint := '';
{  try
    ln_env := TIniFile.Create(ENVPATHFILE);
    ln_env.EraseSection('ConfHis');
    for i := 0 to stg_His_View.ColumnCount - 1 do
    begin
      sTemp := stg_His_View.Columns[i].DataBinding.FieldName;
      ln_Env.WriteString('ConfHis', IntToStr(i), sTemp);
    end;
    FreeAndNil(ln_env);
  except

	end;   }
  Action := caFree;
end;

procedure TFrm_JON07.N1Click(Sender: TObject);
begin
  Clipboard.settextbuf(Pchar(StringReplace(gs_CellValue, '-', '', [rfReplaceAll])));
end;

procedure TFrm_JON07.stg_His_ViewCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var sTime, sOrderST, sUpdate, sStart, sEnd, sCharge, sSlip, sReceID, sReceNM, sWkSabun : string;//ó���Ͻ�, ��������, ��������, ��, ��, ���
	iRow, iNum1, iNum2, iNum3, iwkSabun, iReceipter, iCol: Integer;
	sKey, sId, sNm, sMsg, sTmp : string;	
	i, iGroup, k, iAdd : Integer;
	iTitle : array[0..20] of integer;
	AView: TcxGridDBTableView;
begin
  gSelGridName := Sender.Name;
  if gSelGridName = 'stg_His_View' then AView := stg_His_View else
  if gSelGridName = 'stg_His_D'    then AView := stg_His_D;
  iRow := AView.DataController.FocusedRecordIndex;
  if iRow >= 0 then
  begin
    gs_CellValue := ACellViewInfo.Text;

    iNum1 := AView.GetColumnByFieldName('��Ȳ��').Index;
		iNum2 := AView.GetColumnByFieldName('�ܸ���').Index;
		iNum3 := AView.GetColumnByFieldName('�޴���').Index;

    sCent_Tel := AView.DataController.Values[iRow, iNum1];
    sWK_HP1   := AView.DataController.Values[iRow, iNum2];
    sWK_HP2   := AView.DataController.Values[iRow, iNum3];

    if AButton = TMouseButton(mbLeft) then
    begin
			iwkSabun := AView.GetColumnByFieldName('�����').Index;
			iReceipter := stg_His_View.GetColumnByFieldName('ó����').Index;
			if ( ACellViewInfo.item.Index = iwkSabun ) then
			begin
				if Trim(AView.DataController.Values[iRow, iwkSabun]) = '' then Exit;
				if Trim(AView.DataController.Values[iRow, iwkSabun]) = '���NO' then Exit;
				if (Copy(Trim(AView.DataController.Values[iRow, iwkSabun]),1,2) = 'K-') and
					 ((GS_PRJ_AREA = 'S') or (GT_KAKAOUse)) then Exit;

				try
          if Not Assigned(Frm_WOR17) then Frm_WOR17 := TFrm_WOR17.Create(Nil);
          Frm_WOR17.Jon03Tag := Jon03Tag;
					Frm_WOR17.sWkSabun := AView.DataController.Values[iRow, iwkSabun];
					Frm_WOR17.proc_init;
					Frm_WOR17.sConfSlip := self.hint;
          Frm_WOR17.cb_WKmove_Option.ItemIndex := 0;
          Frm_WOR17.chk_Search_Route.Tag := 1;
					Frm_WOR17.Proc_WKMoveHis_Sreach(AView.DataController.Values[iRow, iwkSabun], False);
          Frm_WOR17.chk_WKHIS_AllSearch.Checked := False;
          Frm_WOR17.chk_WKHIS_AllSearchClick(Frm_WOR17.chk_WKHIS_AllSearch);
          Frm_WOR17.Show;
        except
          on e: exception do
          begin
            Assert(False, E.Message);
          end;
        end;
			end else
			// ������ Ŭ���� ���� ���� �����ڿ��� �ڵ�ä��, ������ ����, �޽��� ����, ä�û�� ��
			if ( ACellViewInfo.item.Index = iReceipter ) and (dm.gbConnectedMessager) and (not GS_MNG1501NoUse) then     //ó���� - ����    
			begin
				iCol := stg_His_View.GetColumnByFieldName('ó����ID').Index;
				sReceID := stg_His_View.DataController.Values[iRow, iCol];
				iCol := stg_His_View.GetColumnByFieldName('�����').Index;
				sWkSabun := stg_His_View.DataController.Values[iRow, iCol];

				sTmp := func_GetCounsel(sReceID);
				if (sReceID <> '') and (sReceID <> sWkSabun) and (sReceID <> 'system') and (sTmp <> '') then
				begin
					//ó���Ͻ�, ��������, ��������, ��, ��, 
					iCol     := stg_His_View.GetColumnByFieldName('ó���Ͻ�').Index;
					sTime    := stg_His_View.DataController.Values[iRow, iCol];
					iCol     := stg_His_View.GetColumnByFieldName('����').Index;
					sOrderST := stg_His_View.DataController.Values[iRow, iCol];
					iCol     := stg_His_View.GetColumnByFieldName('��������').Index;
					sUpdate  := stg_His_View.DataController.Values[iRow, iCol];
					iCol     := stg_His_View.GetColumnByFieldName('�����').Index;
					sStart   := stg_His_View.DataController.Values[iRow, iCol];
					iCol     := stg_His_View.GetColumnByFieldName('������').Index;
					sEnd     := stg_His_View.DataController.Values[iRow, iCol];
					iCol     := stg_His_View.GetColumnByFieldName('���').Index;
					sCharge  := stg_His_View.DataController.Values[iRow, iCol];
					sSlip    := GT_OrderInfo[Self.Tag].Slip;
					iCol     := stg_His_View.GetColumnByFieldName('ó����').Index;
					sReceNM  := stg_His_View.DataController.Values[iRow, iCol];
					
					sKey := GT_USERIF.ID + '_' + FormatDateTime('ddhhmmss', Now);
					sId := GT_USERIF.ID + AnsiChar(1) + sReceID;
					sNm := GT_USERIF.NM + AnsiChar(1) + sReceNM;
					sMsg := Format(CRLF + '[<a href="SLIP,%s,%s">������ȣ[%s]</a>]%s, %s[%s-%s]', [sSlip, FAccTime, sSlip, sTime, sUpdate, sStart, sEnd]);

					if Application.MessageBox(
							PChar('['+sReceNM+']������ ä���� ���� �Ͻðڽ��ϱ�?'), 'ä��', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
					begin
						p1501SetChat(0, '1501', sKey, sId, sNm, sMsg, '', '', '', '', False);
					end;
				end;
			end;
      if Sender.Name = 'stg_His_D' then Exit;
			iwkSabun := stg_His_View.GetColumnByFieldName('��������').Index;
      iGroup := stg_His_View.GetColumnByFieldName('Group').Index;
			if ( ACellViewInfo.item.Index = iwkSabun ) And ( GB_JON07_OPT1 ) then
      begin
  			for i := 0 to Length(COLUUMNLIST) - 1 do
					iTitle[i] := stg_His_View.GetColumnByFieldName(COLUUMNLIST[i].CName).Index;

      	stg_His_D.DataController.SetRecordCount(0);
       	stg_His_D.beginUpdate;
        try
          for i := 0 to gStCnt do
          begin
            if STG_HIS[i].ListNo = stg_His_View.DataController.Values[iRow, iGroup] then
						begin
              iAdd := stg_His_D.DataController.AppendRecord;

              stg_His_D.DataController.Values[iAdd, iTitle[00]] := STG_HIS[i].List00;
              stg_His_D.DataController.Values[iAdd, iTitle[01]] := STG_HIS[i].List01;
              stg_His_D.DataController.Values[iAdd, iTitle[02]] := STG_HIS[i].List02;
              stg_His_D.DataController.Values[iAdd, iTitle[03]] := STG_HIS[i].List03;
              stg_His_D.DataController.Values[iAdd, iTitle[04]] := STG_HIS[i].List04;
              stg_His_D.DataController.Values[iAdd, iTitle[05]] := STG_HIS[i].List05;
              stg_His_D.DataController.Values[iAdd, iTitle[06]] := STG_HIS[i].List06;
              stg_His_D.DataController.Values[iAdd, iTitle[07]] := STG_HIS[i].List07;
              stg_His_D.DataController.Values[iAdd, iTitle[08]] := STG_HIS[i].List08;
              stg_His_D.DataController.Values[iAdd, iTitle[09]] := STG_HIS[i].List09;
              stg_His_D.DataController.Values[iAdd, iTitle[10]] := STG_HIS[i].List10;
              stg_His_D.DataController.Values[iAdd, iTitle[11]] := STG_HIS[i].List11;
              stg_His_D.DataController.Values[iAdd, iTitle[12]] := STG_HIS[i].List12;
              stg_His_D.DataController.Values[iAdd, iTitle[13]] := STG_HIS[i].List13;
              stg_His_D.DataController.Values[iAdd, iTitle[14]] := STG_HIS[i].List14;
              stg_His_D.DataController.Values[iAdd, iTitle[15]] := STG_HIS[i].List15;
              stg_His_D.DataController.Values[iAdd, iTitle[16]] := STG_HIS[i].List16;
              stg_His_D.DataController.Values[iAdd, iTitle[17]] := STG_HIS[i].List17;
              stg_His_D.DataController.Values[iAdd, iTitle[18]] := STG_HIS[i].List18;
              stg_His_D.DataController.Values[iAdd, iTitle[19]] := STG_HIS[i].List19;
            end;
          end;
        finally
         	stg_His_D.EndUpdate;
        end;

        if stg_His_D.DataController.RecordCount > 0 then pnlBottom.Visible := True
                                                    else pnlBottom.Visible := False;
      end;
    end;
  end;
end;

procedure TFrm_JON07.stg_His_ViewColumn11GetProperties(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
var
  i, iIndex : Integer;
  Value: Variant;
  Buttons: TcxEditButtons;
  ButtonEnabled : Boolean;
begin
//  if Not GB_JON07_OPT1 then Exit;

  iIndex := stg_His_View.GetColumnByFieldName('Group').Index;
  Value := ARecord.Values[iIndex];

  if gGroupIndex.IndexOf(VarToStr(Value)) >= 0 then
    AProperties := cxEditRepository1ButtonItemGlyph.Properties
  else
    AProperties := cxEditRepository1ButtonItemText.Properties;
end;

procedure TFrm_JON07.stg_His_ViewColumnPosChanged(Sender: TcxGridTableView;
	AColumn: TcxGridColumn);
begin
	proc_Cell_Save;
end;

procedure TFrm_JON07.stg_His_ViewColumnSizeChanged(Sender: TcxGridTableView;
	AColumn: TcxGridColumn);
begin
	proc_Cell_Save;
end;

procedure TFrm_JON07.stg_His_ViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  iRow, iStCd: Integer;
  AView: TcxGridDBTableView;
begin
  if (ARecord.Selected) or (Sender.DataController.RecordCount = 0) then Exit;
  AStyle := frm_Main.cxStyle15;

  if Sender.Name = 'stg_His_View' then AView := stg_His_View else
  if Sender.Name = 'stg_His_D'    then AView := stg_His_D;

  iRow := AView.DataController.GetRowInfo(ARecord.Index).RecordIndex;
	iStCd := AView.GetColumnByFieldName('����').Index;
  if AView.DataController.Values[iRow, iStCd] = null then Exit;

  AStyle.TextColor := clBlack;
  case Copy(AView.DataController.Values[iRow, iStCd], 1, 1)[1] of
    '0': AStyle.Color := Frm_Main.Frm_JON03[Jon03Tag].lb_Common0.Color;
    '1', 'B', 'D' : AStyle.Color := Frm_Main.Frm_JON03[Jon03Tag].lb_Common1.Color;
    '2': AStyle.Color := Frm_Main.Frm_JON03[Jon03Tag].lb_Common2.Color;
    '3': AStyle.Color := Frm_Main.Frm_JON03[Jon03Tag].lb_Common3.Color;
    '4': AStyle.Color := Frm_Main.Frm_JON03[Jon03Tag].lb_Common4.Color;
    '5': AStyle.Color := Frm_Main.Frm_JON03[Jon03Tag].lb_Common5.Color;
    '7': AStyle.Color := Frm_Main.Frm_JON03[Jon03Tag].lb_Common7.Color;
    '8': AStyle.Color := Frm_Main.Frm_JON03[Jon03Tag].lb_Common8.Color;
  else
    if GB_DARKMODE then
    begin
      AStyle.Color := $00333333;
      AStyle.TextColor := clWhite;
    end else AStyle.Color := clWhite;
  end;
  AStyle.Font.Size := 9;
end;

procedure TFrm_JON07.tl_His_ViewFocusedColumnChanged(Sender: TcxCustomTreeList; APrevFocusedColumn, AFocusedColumn: TcxTreeListColumn);
var
  iRow, iNum1, iNum2, iNum3, iwkSabun: Integer;
begin
//    if AButton = TMouseButton(mbLeft) then
    begin
			iwkSabun := 5; //�����;
			if ( AFocusedColumn.ItemIndex = iwkSabun ) then
			begin

				if Trim(AFocusedColumn.Value) = '' then Exit;
				if Trim(AFocusedColumn.Value) = '���NO' then Exit;
				if (Copy(Trim(AFocusedColumn.Value),1,2) = 'K-') and
					 ((GS_PRJ_AREA = 'S') or (GT_KAKAOUse)) then Exit;

				try
          if Not Assigned(Frm_WOR17) then Frm_WOR17 := TFrm_WOR17.Create(Nil);
          Frm_WOR17.Jon03Tag := Jon03Tag;
					Frm_WOR17.sWkSabun := AFocusedColumn.Value;
					Frm_WOR17.proc_init;
					Frm_WOR17.sConfSlip := self.hint;
          Frm_WOR17.cb_WKmove_Option.ItemIndex := 0;
          Frm_WOR17.chk_Search_Route.Tag := 1;
					Frm_WOR17.Proc_WKMoveHis_Sreach(AFocusedColumn.Value, False);
          Frm_WOR17.chk_WKHIS_AllSearch.Checked := False;
          Frm_WOR17.chk_WKHIS_AllSearchClick(Frm_WOR17.chk_WKHIS_AllSearch);
          Frm_WOR17.Show;
        except
          on e: exception do
          begin
            Assert(False, E.Message);
          end;
        end;
      end;
    end;
end;

procedure TFrm_JON07.tl_His_ViewFocusedNodeChanged(Sender: TcxCustomTreeList; APrevFocusedNode, AFocusedNode: TcxTreeListNode);
var
  iRow, iNum1, iNum2, iNum3, iwkSabun: Integer;
begin
  iRow := AFocusedNode.AbsoluteIndex;
  if iRow >= 0 then
  begin
//    gs_CellValue := AFocusedNode. Text;

    iNum1 := 4; //��Ȳ��
		iNum2 := 7; //�ܸ���
		iNum3 := 8; //�޴���

    sCent_Tel := AFocusedNode.Texts[iNum1];
    sWK_HP1   := AFocusedNode.Texts[iNum2];
    sWK_HP2   := AFocusedNode.Texts[iNum3];
  end;
end;

procedure TFrm_JON07.N2Click(Sender: TObject);
begin
	proc_Cell_Clear;
end;

procedure TFrm_JON07.FormCreate(Sender: TObject);
var
  Save: LongInt;
begin
	if BorderStyle = bsNone then Exit;
  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);

  //====================================================
  // �� Ÿ��Ʋ ����..
  Save := GetWindowLong(Handle,  GWL_STYLE);
  if (Save and ws_Caption) = ws_Caption then
  begin
    case BorderStyle of
      bsSizeable:
				SetWindowLong(Handle, GWL_STYLE, Save and (not (WS_CAPTION)) or WS_BORDER);
    end;
    Height := Height - getSystemMetrics(SM_CYCAPTION);
    Self.Refresh;
  end;

//  fSetFont(Frm_JON07, GS_FONTNAME);

  gGroupIndex := TStringList.Create;
  chkType1.Tag := -1;
  try
    chkType1.Checked := GB_JON07_OPT1;
  finally
    chkType1.Tag := 0;
  end;

	Proc_init;
end;

procedure TFrm_JON07.Proc_BeachaBtnClear;
var sAccTime, sAccDate : string;
	dDate : TDateTime;
begin

	N3.Enabled := True;
	btnBeacha.Enabled := True;

	sAccDate := StringReplace(AccTime, '-', '', [rfReplaceAll]);
	sAccDate := StringReplace(sAccDate, '/', '', [rfReplaceAll]);
	sAccDate := StringReplace(sAccDate, ' ', '', [rfReplaceAll]);
	sAccDate := StringReplace(sAccDate, ':', '', [rfReplaceAll]);
	sAccTime := Copy(sAccDate, 9, 2);   //'09'�� üũ
	sAccDate := Copy(sAccDate, 1, 8);

	if sAccTime < '09' then
	begin
		dDate := StrToDate(GetStrToDateTimeGStr(sAccDate, 4));
		sAccDate := FormatDateTime('yyyymmdd', dDate - 1);
	end;

	if StartDateTime('yyyymmdd') <> sAccDate then
	begin
		N3.Enabled := False;
		btnBeacha.Enabled := False;
		Exit;
	end;

	if Trim(FStCd) <> '' then
	begin
		if FStCd[1] in ['1', '2', '3', '4', 'B'] then
		begin
			N3.Enabled := False;
			btnBeacha.Enabled := False;
			Exit;
		end;
	end;
end;

procedure TFrm_JON07.proc_Cell_Clear;
var
	i, j : Integer;
	ln_env: TIniFile;
  Column: TcxGridDBColumn;
begin
	try
		ln_env := TIniFile.Create(ENVPATHFILE);
		ln_env.EraseSection('ConfJON07His');
		ln_env.EraseSection('ConfJON07HisSize');
		stg_His_View.DataController.BeginUpdate;
		try
			for i := 0 to Length(COLUUMNLIST) - 1 do
			begin
				Column := stg_His_View.GetColumnByFieldName(COLUUMNLIST[i].CName);
				Column.Index := i;
				Column.Width := COLUUMNLIST[i].CWid;
			end;
		finally
			stg_His_View.DataController.EndUpdate;
			FreeAndNil(ln_env);
    end;

		stg_His_D.DataController.BeginUpdate;
		try
			for i := 0 to Length(COLUUMNLIST) - 1 do
			begin
				Column := stg_His_D.GetColumnByFieldName(COLUUMNLIST[i].CName);
				Column.Index := i;
				Column.Width := COLUUMNLIST[i].CWid;
			end;
		finally
			stg_His_D.DataController.EndUpdate;
    end;
  except
    on e: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON07.proc_Cell_Read;
var
	i, j, iRow, ciWid : Integer;
  ln_env: TIniFile;
	ShowList, WidthList: TStringList;
	Column: TcxGridDBColumn;
	sTmp : string;
begin
	ln_Env := TIniFile.Create(ENVPATHFILE);
  ShowList := TStringList.Create;
	WidthList := TStringList.Create;

  try
		ln_env.ReadSectionValues('ConfJON07His', ShowList);
		ln_env.ReadSectionValues('ConfJON07HisSize', WidthList);

    if (ShowList.Count > 0) and (ShowList.Count = WidthList.Count) then
    begin
      for I := 0 to ShowList.Count - 1 do
      begin
				for j := 0 to Length(COLUUMNLIST) - 1 do
				begin
					sTmp := ShowList.Values[IntToStr(i)];
					if sTmp  = '��������' then sTmp := 'ó���Ͻ�';
					if (COLUUMNLIST[j].CName = sTmp ) then
					begin
						ciWid := COLUUMNLIST[j].CWid;
						Break;
          end;
        end;

				Column := stg_His_View.GetColumnByFieldName(ShowList.Values[IntToStr(I)]);
        if Assigned(Column) then
        begin
					Column.Index := I;
					Column.Width := StrToIntDef(WidthList.Values[IntToStr(I)], ciWid);
				end;

				Column := stg_His_D.GetColumnByFieldName(ShowList.Values[IntToStr(I)]);
        if Assigned(Column) then
        begin
					Column.Index := I;
					Column.Width := StrToIntDef(WidthList.Values[IntToStr(I)], ciWid);
				end;
      end;
		end else
		begin
			proc_Cell_Clear;
		end;
	finally
		FreeAndNil(ShowList);
		FreeAndNil(WidthList);
    FreeAndNil(ln_env);
  end;
end;

procedure TFrm_JON07.proc_Cell_Save;
var
  i, iWidth, iRow, j : Integer;
	ln_env: TIniFile;
	sTmp: string;
begin
	try
		// ���ӱ�� �׸��� �÷��̵� ������ ����.
		ln_env := TIniFile.Create(ENVPATHFILE);
		try
			ln_env.EraseSection('ConfJON07His');
			ln_env.EraseSection('ConfJON07HisSize');
			for i := 0 to stg_His_View.ColumnCount - 1 do
			begin
				sTmp := stg_His_View.Columns[i].DataBinding.FieldName;
				ln_env.WriteString('ConfJON07His', IntToStr(i), sTmp);
				ln_env.WriteInteger('ConfJON07HisSize', IntToStr(i), stg_His_View.Columns[i].Width);
			end;

      stg_His_D.BeginUpdate;
      try
        for i := 0 to stg_His_D.ColumnCount - 1 do
        begin
          sTmp := GS_EnvFile.ReadString('ConfJON07His', IntToStr(i), '');
          iWidth := StrToIntDef(GS_EnvFile.ReadString('ConfJON07HisSize', IntToStr(i), '0'), 0);

          for j := 0 to Length(COLUUMNLIST) - 1 do
          begin
            if COLUUMNLIST[j].CName = sTmp then Break;

            if j = Length(COLUUMNLIST) - 1 then
            begin
              sTmp := '';
              iWidth := 64;
            end;
          end;

          if sTmp <> '' then
          begin
            iRow := stg_His_D.GetColumnByFieldName(sTmp).Index;
            if iRow = -1 then iRow := i;
          end
          else
            iRow := i;

          stg_His_D.Columns[iRow].Index := i;
          stg_His_D.Columns[i].Width := IfThen(iWidth = 0, COLUUMNLIST[i].cWid, iWidth);
        end;
      finally
        stg_His_D.EndUpdate;
        SetDebugeWrite('cxGVeOrderDestList.EndUpdate');
      end;
    finally
			FreeAndNil(ln_env);
		end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON07.Proc_init;
var	ln_env: TIniFile;
	i, iRow: Integer;
	sTemp: string;
begin
	for i := 0 to stg_His_View.ColumnCount - 1 do
	begin
		stg_His_View.Columns[i].DataBinding.ValueType := 'String';
	end;
	stg_His_View.Columns[13].DataBinding.ValueType := 'Currency';
	stg_His_View.Columns[20].DataBinding.ValueType := 'Currency';
	stg_His_View.DataController.SetRecordCount(0);

	for i := 0 to stg_His_D.ColumnCount - 1 do
	begin
		stg_His_D.Columns[i].DataBinding.ValueType := 'String';
	end;
	stg_His_D.Columns[13].DataBinding.ValueType := 'Currency';
	stg_His_D.Columns[20].DataBinding.ValueType := 'Currency';
	stg_His_D.DataController.SetRecordCount(0);

  pnlBottom.Visible := False;

//  TcxControlScrollBarsAccess(TcxGridSiteAccess(stg_His_View.Site).MainScrollBars).HScrollBar.OnScroll := HScrollHandler;
//  TcxControlScrollBarsAccess(TcxGridSiteAccess(stg_His_D.Site).MainScrollBars).HScrollBar.OnScroll := HScrollHandler;

	try

		// �÷����� ����
{		ln_Env := TIniFile.Create(ENVPATHFILE);
		for i := 0 to stg_His_View.ColumnCount - 1 do
		begin
			sTemp := ln_Env.ReadString('ConfHis', IntToStr(i), '');
			if sTemp = '��������' then sTemp := 'ó���Ͻ�';
			if sTemp <> '' then
			begin
				iRow := stg_His_View.GetColumnByFieldName(sTemp).Index;
				if iRow = -1 then
					iRow := i;
			end
			else
				iRow := i;
			stg_His_View.Columns[iRow].Index := i;
		end;
		FreeAndNil(ln_Env);}
		proc_Cell_Read;
		cb_Block.Properties.Items.Clear;
		cb_Block.Properties.Items.add('����������� ����') ;
		cb_Block.Properties.Items.add('����������� ����') ;
		if GT_USERIF.LV = '10' then 
			cb_Block.Properties.Items.add('�ݼ��ͱ������� ����') ;
		gStCd := '';
	except
		FreeAndNil(ln_Env);
	end;
end;

procedure TFrm_JON07.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON07.FormDestroy(Sender: TObject);
begin
  FreeAndNil(gGroupIndex);
  Frm_JON07 := Nil;
end;

procedure TFrm_JON07.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then btnClose.Click;
end;

procedure TFrm_JON07.btnBeachaClick(Sender: TObject);
var
  ls_MSG_Err: string;
	iRow, iWKBrNum, iWkBrNo, iWkCSabun, iOdbWkSabun: Integer;
	ConfSlip, sWKBrNum, WkBrNo, sWkCSabun, sOdbWkSabun: string;
  ls_TxLoad, rv_str: string;
  slReceive: TStringList;
  ErrCode: Integer;
  AView: TcxGridDBTableView;
begin
  if gSelGridName = 'stg_His_View' then AView := stg_His_View else
  if gSelGridName = 'stg_His_D'    then AView := stg_His_D;

	iRow := AView.DataController.FocusedRecordIndex;
  if iRow = -1 then
  begin
    GMessagebox('������ ������ �������ּ���.', CDMSE);
    Exit;
	end;

	iWKBrNum  := AView.GetColumnByFieldName('�����ü���').Index;
	iWkBrNo := AView.GetColumnByFieldName('��������ڵ�').Index;
	iWkCSabun := AView.GetColumnByFieldName('�����').Index;
	iOdbWkSabun := AView.GetColumnByFieldName('OdbWkSabun').Index;

	ConfSlip := Self.Hint;
	sWKBrNum := AView.DataController.Values[iRow, iWKBrNum];
	WkBrNo := AView.DataController.Values[iRow, iWkBrNo];
	sWkCSabun := AView.DataController.Values[iRow, iWkCSabun];
	sOdbWkSabun := AView.DataController.Values[iRow, iOdbWkSabun];
	try
		if ConfSlip = '' then
    begin
      GMessagebox('���������� ���������ϼ���', CDMSE);
      Exit;
    end else
    begin
      if FStCd = '' then
        ShowMessage('�����ڵ尡 �����ϴ�.')
      else
			if sWKBrNum = '' then
        ShowMessage('������� �����ϴ�.')
      // [hjF-091022] �������� ���ռ��� ����
      else
      if not IsUseOfficeBaecha(FBrNo) then
      begin
        ShowMessage('���ջ� �������� ���� ���������� ���ѵǾ����ϴ�.');
        Exit;
      end else
      begin
        //����������
				ls_TxLoad := GTx_UnitXmlLoad('C006.XML');
        ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString',     GT_USERIF.ID, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',  VERSIONINFO, [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',  Self.Caption + 'CANC14', [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString',   En_Coding(ConfSlip), [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString',    En_Coding(GT_USERIF.ID), [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'WkSabunString',    En_Coding(sWKBrNum), [rfReplaceAll]);   // ��ü���
				ls_TxLoad := StringReplace(ls_TxLoad, 'ConfWkSbString',En_Coding(sWkCSabun), [rfReplaceAll]);   // �����
				ls_TxLoad := StringReplace(ls_TxLoad, 'OdbWkSbString', En_Coding(sOdbWkSabun), [rfReplaceAll]);   // ODB�����
				ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString',  En_Coding(FStCd), [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString',      '5', [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'BaechaSMSString',  '', [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'BranchCode',       WkBrNo, [rfReplaceAll]);

				slReceive := TStringList.Create;
				try
          if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
          begin
            rv_str := slReceive[0];

            ls_MSG_Err := GetXmlErrorCode(rv_str);
            if ('0000' = ls_MSG_Err) then
            begin
              GMessagebox('��� �����Ǿ����ϴ�.', CDMSI);
              Frm_Main.Frm_JON03[Jon03Tag].proc_Acc_Search(1, ConfSlip, 'JON07-1', True);
//              Self.Hint := '';
              frm_Main.proc_SlipHis(ConfSlip, FAccTime, Jon03Tag, True);
            end else
            begin
              GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
            end;
          end;
        finally
          FreeAndNil(slReceive);
        end;
      end;
    end;
  except
    on e: exception do
    begin
    end;
  end;
end;

procedure TFrm_JON07.N3Click(Sender: TObject);
begin
	btnBeacha.Click;
end;

procedure TFrm_JON07.N5Click(Sender: TObject);
var
	iRow, i, iIndex: integer;
	sTemp: string;
	sCustTel, sHdNo: string;
	iWkSAbun, iWkName, iWkBrNo, iWkHDNo, iCharge : integer;
	sWkSAbun, sWkName, sWkBrNo, sWkHDNo, sCharge : string;
  AView: TcxGridDBTableView;
begin
  if gSelGridName = 'stg_His_View' then AView := stg_His_View else
  if gSelGridName = 'stg_His_D'    then AView := stg_His_D;
	SetDebugeWrite('Frm_JON07.N5Click');

	try
		if ( Not Assigned(Frm_JON10) ) Or ( Frm_JON10 = NIl ) then Frm_JON10 := TFrm_JON10.Create(Nil);
		Frm_JON10.Jon03Tag := Self.Tag;
		Frm_JON10.pJON10Dock.bUnDock := pJON07Dock.bUnDock;
		Frm_JON10.pJON10Dock.HdNo    := pJON07Dock.HdNo;
		Frm_JON10.pJON10Dock.BrNo    := pJON07Dock.BrNo;
		Frm_JON10.pJON10Dock.BrName  := pJON07Dock.BrName;
		Frm_JON10.pJON10Dock.Gubun   := pJON07Dock.Gubun;
		Frm_JON10.pJON10Dock.Idx     := pJON07Dock.Idx;

		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    begin
			Frm_JON10.cb_Branch.Properties.Items.Clear;
			if mLEFT_SectionIndex = 0 then
			begin
				sHdNo := '';
				for i := 0 to scb_BranchCode.Count - 1 do 
				begin
					sHdNo := frm_Main.func_search_hdNo(scb_BranchCode[I]);
					frm_JON10.cb_Branch.Properties.Items.Add('(' + sHdNo + ',' + scb_BranchCode[i] + ')' + scb_BranchName[i]);
				end;
				iIndex := scb_BranchCode.IndexOf(GT_OrderInfo[Self.Tag].BrNo);
			end else
			begin
				sHdNo := '';
				for i := 0 to scb_FamilyBrCode.Count - 1 do
				begin
					sHdNo := frm_Main.func_search_hdNo(scb_FamilyBrCode[I]);
					frm_JON10.cb_Branch.Properties.Items.Add('(' + sHdNo + ',' + scb_FamilyBrCode[i] + ')' + scb_FamilyBrName[i]);
				end;
				iIndex := scb_FamilyBrCode.IndexOf(GT_OrderInfo[Self.Tag].BrNo);
			end;
			Frm_JON10.cb_Branch.ItemIndex := iIndex;
		end else
    begin
			sHdNo := '';
			Frm_JON10.cb_Branch.Properties.Items.Clear;
			for i := 0 to scb_BranchCode.Count - 1 do
			begin
				sHdNo := frm_Main.func_search_hdNo(scb_BranchCode[I]);
				Frm_JON10.cb_Branch.Properties.Items.Add('(' + sHdNo + ',' + scb_BranchCode[i] + ')' + scb_BranchName[i]);
			end;
			iIndex := scb_BranchCode.IndexOf(FBrNo);
			Frm_JON10.cb_Branch.ItemIndex := iIndex;
    end;

		iRow := AView.DataController.FocusedRecordIndex;
		iWkSabun := AView.GetColumnByFieldName('�����').Index;
		iWkName := AView.GetColumnByFieldName('����').Index;
		iWkBrNo := AView.GetColumnByFieldName('��������ڵ�').Index;
		iWkHDNo := AView.GetColumnByFieldName('��纻���ڵ�').Index;
		iCharge := AView.GetColumnByFieldName('���').Index;
		
		sWkSabun := AView.DataController.Values[iRow, iWkSabun];
		sWkName := AView.DataController.Values[iRow, iWkName];
		sWkBrNo := AView.DataController.Values[iRow, iWkBrNo];
		sWkHDNo := AView.DataController.Values[iRow, iWkHDNo];
		sCharge := AView.DataController.Values[iRow, iCharge];

		Frm_JON10.edt2.Text := FBrNo;
		Frm_JON10.edtWkName.Text := sWkName;
		Frm_JON10.edtWkSabun.Text := sWkSabun;

		Frm_JON10.edtConfSlip.Text  := self.Hint;

{		sCustTel := FCustTel;
		if ((TCK_USER_PER.JON_CustMaking2 = '1') or (TCK_USER_PER.JON_Cust2Modify = '1') Or (TCK_USER_PER.JON_CustM2Modify = '1'))  then
		begin
			sCustTel := FCustTel;
		end;
		if FCustTel22 <> '' then
			sCustTel := FCustTel;     }

		Frm_JON10.edtPhoneNo.Text   := StringReplace(sCustTel, '-', '', [rfReplaceAll]);

		Frm_JON10.Edit1.Text := sWkHDNo;
		Frm_JON10.Edit10.Text := sWkBrNo;
		Frm_JON10.Edit4.Text := StringReplace(sCharge, ',', '', [rfReplaceAll]);
		Frm_JON10.Edit14.Text := StringReplace(sCharge, ',', '', [rfReplaceAll]);
		Frm_JON10.Edit13.Text := func_search_hdNo(FBrNo);
		Frm_JON10.Edit15.Text := Self.Hint;
		Frm_JON10.edtHdnOrderDate.Text := FAccTime;
    Frm_JON10.RbCheckBox1.Checked := False;
    Frm_JON10.Show;
//		N5.Enabled := False;
	except
		on E: Exception do
		begin
			N5.Enabled := True;
			Assert(False, E.Message);
			sTemp := 'Jon07[N5Click]Error : ' + e.Message;
			GMessagebox(PChar(sTemp), CDMSE);
		end;
	end;     
end;

procedure TFrm_JON07.N_KakaoClick(Sender: TObject);
var iRow, iWkCSabun, iOdbWkSabun, iOdbEtc : integer;
	sWkCSabun, sOdbWkSabun, sOdbEtc : string; 
  AView: TcxGridDBTableView;
begin
  if gSelGridName = 'stg_His_View' then AView := stg_His_View else
  if gSelGridName = 'stg_His_D'    then AView := stg_His_D;

	SetDebugeWrite('Frm_JON07.N_KakaoClick');

	try
		if pnl_KakaoBlock.Visible then pnl_KakaoBlock.Visible := False else pnl_KakaoBlock.Visible := True;
		pnl_KakaoBlock.Left := 330;
		pnl_KakaoBlock.Top :=	30;

		lb_KakaoSabun.Caption := '';
		lb_KakaoSabun.Hint := '';
		meo_Reason.Clear;
		cb_Block.ItemIndex := 0;
		lb_BlockResult.Caption := '���ܰ�� : ';


		iRow := AView.DataController.FocusedRecordIndex;
		iWkCSabun := AView.GetColumnByFieldName('�����').Index;
		iOdbWkSabun := AView.GetColumnByFieldName('OdbWkSabun').Index;
		iOdbEtc := AView.GetColumnByFieldName('OdbEtc').Index;

		sWkCSabun := AView.DataController.Values[iRow, iWkCSabun];
		sOdbWkSabun := AView.DataController.Values[iRow, iOdbWkSabun];
		sOdbEtc     := AView.DataController.Values[iRow, iOdbEtc];
		
		lb_KakaoSabun.Caption := sWkCSabun;
		lb_KakaoSabun.Hint := '';
		lb_KakaoSabun.Hint := sOdbEtc;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;     
end;

procedure TFrm_JON07.pnl_KakaoBlock1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(pnl_KakaoBlock.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON07.FormShow(Sender: TObject);
begin
	fSetFont(Frm_JON07, GS_FONTNAME, True);
	fSetSkin(Frm_JON07, True);
  if GB_JON07_OPT1 then stg_His_ViewColumn11.Options.ShowEditButtons := isebAlways
                   else stg_His_ViewColumn11.Options.ShowEditButtons := isebNever;
end;

function TFrm_JON07.func_GetCounsel(AID: string): string;
var
	ls_rxxml, Param, ErrMsg: string;
	XmlData : TStringList;
	xdom: msDomDocument;
	lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd: TStringList;
	I, j, ErrCode, iCnt, iRow, iBrNo, iHp, iTel, iRegDate, iSNum, isumorg, iCertDate : Integer;
	sBrNo, sTemp : string;
begin
	Try
		Result := '';
		Param := 'A' + '00' + '��';
		Param := Param + GT_SEL_BRNO.HDNO + '��' + '' + '��';
		Param := Param + 'MEM_ID' + '��'  ;
		Param := Param + Param_Filtering(AID) + '��'  ;
		Param := Param + 'y'+'��'+'��';
    //'A00��A1531����MEM_ID��kd-�ڼ�����y����'
		XmlData := TStringList.Create;
		if not RequestBasePaging(GetSel05('GET_MEMBER_DETAIL_LIST', 'MNG_MEMBER.LIST_MEMBER_DETAIL', '1', Param), XmlData, ErrCode, ErrMsg) then
		begin
//			GMessagebox(Format('���� ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Frm_Flash.hide;
			Exit;
		end;

		xdom := ComsDomDocument.Create;
		try
			iCnt := 0;
			for j := 0 to XmlData.Count - 1 do
			begin
				frm_Main.sbar_Message.Panels[4].Text := IntToStr(j + 1) + '/' + IntToStr(XmlData.Count);
				Application.ProcessMessages;
				ls_rxxml := XmlData.Strings[j];

				if not xdom.loadXML(ls_rxxml) then 
				begin
					Frm_Flash.hide;
					Exit;
				end;

				lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');

				if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
				begin
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					ls_Rcrd := TStringList.Create;
					try
						iRow := 0;
						for I := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							Result := ls_Rcrd[2];
						end;
					finally
						ls_Rcrd.Free;
					end;
				end;
			end;
		finally
			xdom := Nil;
			XmlData.Free;
			Frm_Flash.hide;
		end;
	except

  End;
end;

procedure TFrm_JON07.mn_wk_tellClick(Sender: TObject);
var
  sCustTel : string;
begin
	sCustTel := StringReplace(sWK_HP1, '-', '', [rfReplaceAll]);

	Frm_Main.pCallingCID(sCustTel, GT_POSS_KEYNUM);
end;

procedure TFrm_JON07.mn_wk_HPClick(Sender: TObject);
var
	sCustTel : string;
begin
	sCustTel := StringReplace(sWK_HP2, '-', '', [rfReplaceAll]);
  Frm_Main.pCallingCID(sCustTel, GT_POSS_KEYNUM);
end;

procedure TFrm_JON07.mn_SMS1Click(Sender: TObject);
var sCustTel, sKeyNum : string;
begin
  // SMS ���� ���� 2011.07.13
  // �� ��ȭ��ȣ�� ���� �����ϱ�.
	sWK_HP1 := StringReplace(CallToStr(sWK_HP1), '-', '', [rfReplaceAll]);

  if pos('*', sWK_HP1) > 0 then
  begin
    GMessagebox('����(SMS) ������ ������ �����ϴ�.', CDMSE);
    exit;
  end;
  if Length(Trim(sWK_HP1)) < 8 then
  begin
    GMessagebox('��ȭ��ȣ�� Ȯ�� �ϼ���!', CDMSE);
    exit;
  end;

  try
    sKeyNum := FMainKeyNum;
    sCustTel := sWK_HP1;
    if StrToIntDef(copy(sCustTel, 1, 2), 0) <> 1 then
    begin
      GMessagebox('��� ��ȭ��ȣ�� �ڵ����� �ƴմϴ�.' + #13#10 + '���ڸ޼����� ������ �����ϴ�.', CDMSE);
      exit;
    end;

    try
      if Not Assigned(Frm_SMS01) then Frm_SMS01 := TFrm_SMS01.Create(Nil);
      Frm_SMS01.mm_message.Text := '';
      SKeyNum := StringReplace(sKeyNum, '-', '', [rfReplaceAll]);
      Frm_SMS01.ed_send.Text := sKeyNum;
      Frm_SMS01.ls_sms.Items.Clear;
      Frm_SMS01.ls_sms.Items.Add(sCustTel);
      Frm_SMS01.Proc_Init;
			Frm_SMS01.sSendKind := '';
			Frm_SMS01.rdo_SMS.visible := False;
			Frm_SMS01.rdo_PUSH.visible := False;
			Frm_SMS01.PageControl1.ActivePageIndex := 2;
			Frm_SMS01.Show;
    finally

    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;

  // ������ �ش�â ����.
  btnCloseClick(Sender);
end;

procedure TFrm_JON07.mn_SMS2Click(Sender: TObject);
var sCustTel, sKeyNum : string;
begin
  // SMS ���� ���� 2011.07.13
  // �� ��ȭ��ȣ�� ���� �����ϱ�.
  sWK_HP2 := StringReplace(sWK_HP2, '-', '', [rfReplaceAll]);

  if pos('*', sWK_HP2) > 0 then
  begin
    GMessagebox('����(SMS) ������ ������ �����ϴ�.', CDMSE);
    exit;
  end;
  if Length(Trim(sWK_HP2)) < 8 then
  begin
    GMessagebox('��ȭ��ȣ�� Ȯ�� �ϼ���!', CDMSE);
    exit;
  end;

  try
    sKeyNum := FMainKeyNum;
    sCustTel := sWK_HP2;

    if StrToIntDef(copy(sCustTel, 1, 2), 0) <> 1 then
    begin
      GMessagebox('��� ��ȭ��ȣ�� �ڵ����� �ƴմϴ�.' + #13#10 + '���ڸ޼����� ������ �����ϴ�.', CDMSE);
      exit;
    end;

    if Not Assigned(Frm_SMS01) then Frm_SMS01 := TFrm_SMS01.Create(Nil);
    Frm_SMS01.mm_message.Text := '';
    SKeyNum := StringReplace(sKeyNum, '-', '', [rfReplaceAll]);
    Frm_SMS01.ed_send.Text := sKeyNum;
    Frm_SMS01.ls_sms.Items.Clear;
    Frm_SMS01.ls_sms.Items.Add(sCustTel);
    Frm_SMS01.Proc_Init;
    Frm_SMS01.sSendKind := '';
    Frm_SMS01.rdo_SMS.visible := False;
    Frm_SMS01.rdo_PUSH.visible := False;
    Frm_SMS01.PageControl1.ActivePageIndex := 2;
    Frm_SMS01.Show;
  except on E: Exception do
    Assert(False, E.Message);
  end;
  // ������ �ش�â ����.
  btnCloseClick(Sender);
end;

procedure TFrm_JON07.mn_WkBlockClick(Sender: TObject);
var
	iRow, iTmp : integer;
	sWkSabun, sKDSabun, sKDName: string;
  AView: TcxGridDBTableView;
begin
  if gSelGridName = 'stg_His_View' then AView := stg_His_View else
  if gSelGridName = 'stg_His_D'    then AView := stg_His_D;

	if Not Assigned(Frm_CUT014) Or (Frm_CUT014 = Nil) then Frm_CUT014 := TFrm_CUT014.Create(Nil);

	iRow := AView.DataController.FocusedRecordIndex;

	iTmp := AView.GetColumnByFieldName('�����').Index;
	sWkSabun := AView.DataController.Values[iRow, iTmp];
	iTmp := AView.GetColumnByFieldName('OdbWkSabun').Index;
	sKDSabun := AView.DataController.Values[iRow, iTmp];

	Frm_CUT014.proc_Init;
	
  if TPopupMenu(Sender).Tag = 0 then
	begin
		Frm_CUT014.ACbCuGb := '0';
  	Frm_CUT014.ACuseq  := FCuSeq;          //���ڵ�
	end else
	if TPopupMenu(Sender).Tag = 1 then
	begin
		Frm_CUT014.ACbCuGb := '2';
  	Frm_CUT014.ACuseq  := FBubin;          //�����ڵ�
	end;

  Frm_CUT014.AWkSabun:= sWkSabun;
	Frm_CUT014.AMemo   := '';
	Frm_CUT014.AKDSabun:= sKDSabun;

	if sKDSabun = '' then
	begin
		iTmp := AView.GetColumnByFieldName('����').Index;
		Frm_CUT014.edtWkSabun.text := AView.DataController.Values[iRow, iTmp];
		Frm_CUT014.img_Kakao.Visible := False;
	end else
	begin
		iTmp := AView.GetColumnByFieldName('OdbEtc').Index;
		sKDName := AView.DataController.Values[iRow, iTmp];
		Frm_CUT014.AKDName := sKDName;
		Frm_CUT014.edtWkSabun.text := sKDName;
		Frm_CUT014.img_Kakao.Visible := True;
	end;
	Frm_CUT014.proc_BlockWKSearch('JON07', 1);
	Frm_CUT014.Show;
end;

procedure TFrm_JON07.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
	Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON07.popConfHisPopup(Sender: TObject);
var iRow, iWkSabun, iWkName, iTmp : integer;
	sWkSabun : string;
  AView: TcxGridDBTableView;
begin
	// ��ȭ�ɱ� OCX ��ġ Ȯ�� ��
  if GT_OCX <> '' then
  begin
    mn_wk_tell.Caption  := '��翡�� ��ȭ�ɱ�(�ܸ���)';
    mn_wk_tell.Enabled  := True;
    mn_wk_HP.Enabled    := True;
	end else
	begin
    mn_wk_tell.Caption  := '��翡�� ��ȭ�ɱ�(�ܸ���)-CTI��������(���Ұ�)';
		mn_wk_tell.Enabled  := False;
    mn_wk_HP.Enabled    := False;
  end;
  mn_WkBlock.Visible := False;
  mn_BuBlock.Visible := False;

  if gSelGridName = 'stg_His_View' then AView := stg_His_View else
  if gSelGridName = 'stg_His_D'    then AView := stg_His_D;

  iRow := AView.DataController.FocusedRecordIndex;
  if iRow < 0 then exit;

	iWkSabun := AView.GetColumnByFieldName('�����').Index;
	sWkSabun := AView.DataController.Values[iRow, iWkSabun];

	if Trim(sWkSabun) <> '' then
  begin
    mn_WkBlock.Visible := True;
    if ( FCuGubun = '����' ) And ( FBubin <> '' ) then mn_BuBlock.Visible := True;
  end;

	if FCuGubun = '' then
  begin
    mn_WkBlock.Visible := False; //������Ȳ���� ��� ���̷��� �ƴ� ��� ��Ȱ��ȭ ó��
    mn_BuBlock.Visible := False;
  end;

	iTmp := AView.GetColumnByFieldName('ó����').Index;
	iWkName := AView.GetColumnByFieldName('����').Index;

	N5.visible := False;
	if bTaSaCall then
	begin
		if (AView.DataController.Values[iRow, iTmp] <> '' ) and
			 (AView.DataController.Values[iRow, iTmp] = stg_His_View.DataController.Values[iRow, iWkName]) then
		begin
			N5.visible := True;
		end;
  end;

	N5.enabled := True;
	N6.Visible := False;
	N_Kakao.Visible := False;
	if (Copy(sWkSabun, 1, 2) = 'K-') and ((GS_PRJ_AREA = 'S') or (GT_KAKAOUse)) then
	begin
		if StringReplace(sWkSabun, 'K-', '', [rfReplaceAll]) = '' then exit; //����� ������ ����
		
		N6.Visible := True;
		N_Kakao.Visible := True;
		N5.enabled := False ;
	end;
end;

procedure TFrm_JON07.HScrollHandler(Sender: TObject; ScrollCode: TScrollCode; var ScrollPos: Integer);
begin
  stg_His_View.Controller.Scroll(sbHorizontal, scTrack, ScrollPos);
  stg_His_D.Controller.Scroll(sbHorizontal, scTrack, ScrollPos);
end;

procedure TFrm_JON07.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(pnl_KakaoBlock.Handle, WM_SYSCOMMAND, $F012, 0);
end;

end.


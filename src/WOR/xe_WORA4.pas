unit xe_WORA4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, System.Math, System.StrUtils,
  Dialogs, cxPC, cxControls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  IniFiles, MSXML2_TLB, ShellAPI, cxPCdxBarPopupMenu, cxLookAndFeels,
  cxLookAndFeelPainters, cxData, cxDataStorage, cxEdit, cxNavigator, cxLabel,
  cxCurrencyEdit, cxContainer, Vcl.Menus, Data.DB, cxDBData, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxClasses, Vcl.StdCtrls, cxRadioGroup, cxDropDownEdit,
  cxCalendar, cxMaskEdit, cxTextEdit, cxGridDBTableView, cxButtons, cxGroupBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridCustomView, cxGrid, Vcl.ExtCtrls, cxListBox, cxGridDBBandedTableView,
  cxSplitter, dxSkinsCore, dxSkinDevExpressStyle, dxSkinscxPCPainter;

type
  TFrm_WORA4 = class(TForm)
    cxStyleRepositoryWorker: TcxStyleRepository;
    cxStyleNormal: TcxStyle;
    cxStyleSelected: TcxStyle;
    cxStyleSysLock: TcxStyle;
    cxStyleSysLockSel: TcxStyle;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle4: TcxStyle;
    PnlMain: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxLabel54: TcxLabel;
    lblSosokNameA4: TcxLabel;
    Shape1: TShape;
    Shape3: TShape;
    pmWkMenuA4: TPopupMenu;
    N29: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem35: TMenuItem;
    MenuItem36: TMenuItem;
    MenuItem37: TMenuItem;
    MenuItem38: TMenuItem;
    cxLabel45: TcxLabel;
    btnSearchA4: TcxButton;
    Panel12: TPanel;
    cxGridA41: TcxGrid;
    cxgOther: TcxGridDBTableView;
    cxgOtherColumn12: TcxGridDBColumn;
    cxgOtherColumn1: TcxGridDBColumn;
    cxgOtherColumn3: TcxGridDBColumn;
    cxgOtherColumn4: TcxGridDBColumn;
    cxgOtherColumn5: TcxGridDBColumn;
    cxgOtherColumn6: TcxGridDBColumn;
    cxgOtherColumn7: TcxGridDBColumn;
    cxgOtherColumn13: TcxGridDBColumn;
    cxgOtherColumn8: TcxGridDBColumn;
    cxgOtherColumn9: TcxGridDBColumn;
    cxgOtherColumn11: TcxGridDBColumn;
    cxgOtherColumn10: TcxGridDBColumn;
    cxgOtherColumn2: TcxGridDBColumn;
    cxgOtherColumn14: TcxGridDBColumn;
    cxGridA41Level1: TcxGridLevel;
    cxbShareCallAcc: TcxButton;
    cxbShareCallDel: TcxButton;
    edtShareOtherSearch: TcxTextEdit;
    btnShareOtherSearch: TcxButton;
    cbbShareOtherSearch: TcxComboBox;
    lbl2: TcxLabel;
    cxSplitter3: TcxSplitter;
    Panel10: TPanel;
    cxGridA42: TcxGrid;
    cxgOwner: TcxGridDBTableView;
    cxgOwnerColumn10: TcxGridDBColumn;
    cxgOwnerColumn1: TcxGridDBColumn;
    cxgOwnerColumn2: TcxGridDBColumn;
    cxgOwnerColumn3: TcxGridDBColumn;
    cxgOwnerColumn4: TcxGridDBColumn;
    cxgOwnerColumn5: TcxGridDBColumn;
    cxgOwnerColumn6: TcxGridDBColumn;
    cxgOwnerColumn12: TcxGridDBColumn;
    cxgOwnerColumn7: TcxGridDBColumn;
    cxgOwnerColumn8: TcxGridDBColumn;
    cxgOwnerColumn9: TcxGridDBColumn;
    cxgOwnerColumn11: TcxGridDBColumn;
    cxgOwnerColumn13: TcxGridDBColumn;
    cxGridA42Level1: TcxGridLevel;
    cbbShareOwnerSearch: TcxComboBox;
    edtShareOwnerSearch: TcxTextEdit;
    btnShareOwnerSearch: TcxButton;
    cxGroupBox2: TcxGroupBox;
    Shape2: TShape;
    Shape4: TShape;
    Shape5: TShape;
    cxGroupBox3: TcxGroupBox;
    cxLabel1: TcxLabel;
    Shape6: TShape;
    pmExcelA4: TPopupMenu;
    MenuItem16: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N29Click(Sender: TObject);
    procedure pmWkMenuA4Popup(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSearchA4Click(Sender: TObject);
    procedure btnShareOtherSearchClick(Sender: TObject);
    procedure cxbShareCallAccClick(Sender: TObject);
    procedure cxbShareCallDelClick(Sender: TObject);
    procedure btnShareOwnerSearchClick(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure cxgOtherColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxgOtherDataControllerSortingChanged(Sender: TObject);
    procedure cxgOwnerColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxgOwnerDataControllerSortingChanged(Sender: TObject);
    procedure cbbShareOtherSearchPropertiesChange(Sender: TObject);
    procedure cbbShareOwnerSearchPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    FShareBlockXml: TStringList;
    FShareBlockXml2: TStringList;

    AIndex : Integer;

    function func_Search_Phone(sWkSabun: string): string;
    procedure proc_Wk_Tel(sWkPhone: string);
    procedure DispShareBlockList(AView: TcxGridDBTableView; AList: TStringList; AKeyWord: string = ''; ASearchValue: string = '');

    procedure proc_FamilyBrChange;
    procedure proc_DelBlock;
    procedure proc_NotShare;
    procedure RequestSharedBlock(AMyBranch: Boolean);
  public
    { Public declarations }
    FExcelDownBlock: string;

    procedure proc_init;
    function func_BrTelSearch(sBrNo: string): string;
  end;

var
  Frm_WORA4: TFrm_WORA4;

implementation

{$R *.dfm}

uses xe_GNL, xe_xml, xe_Func, xe_Dm, xe_Msg, Main, xe_gnl3, xe_Query, xe_gnl2,
  xe_Lib, xe_WOR01, xe_COM02, xe_SMS01, xe_WOR09;


procedure TFrm_WORA4.proc_init;
var
  i, iRow: Integer;
  sTabCap: string;
begin
  try
    cxgOwner.Columns[0].DataBinding.ValueType := 'Integer';
    for i := 1 to cxgOwner.ColumnCount - 1 do
      cxgOwner.Columns[i].DataBinding.ValueType := 'String';

    cxgOther.Columns[0].DataBinding.ValueType := 'Integer';
    for i := 1 to cxgOther.ColumnCount - 1 do
      cxgOther.Columns[i].DataBinding.ValueType := 'String';
  except
  end;

  lblSosokNameA4.Caption := GetSosokInfo;
end;

procedure TFrm_WORA4.FormCreate(Sender: TObject);
var
  iCash, iCyCash: Integer;
begin
  proc_init;

  FShareBlockXml := TStringList.Create;
  FShareBlockXml2 := TStringList.Create;

  cxbShareCallAcc.Visible := (TCK_USER_PER.WOR_ShareBaechaSet = '1');       // 공유콜배차제한설정체크
  cxbShareCallDel.Visible := (TCK_USER_PER.WOR_ShareBaechaSet = '1');       // 공유콜배차제한설정체크

  N29.Visible := (TCK_USER_PER.WOR_MngModify = '1');
end;

procedure TFrm_WORA4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FShareBlockXml.Free;
  FShareBlockXml2.Free;
  Action := caFree;
end;

procedure TFrm_WORA4.N29Click(Sender: TObject);
var
  iWkSabun, iRow, iBrNo: Integer;
  sWkSabun, sBrNo, sWkPhone, sKeyNum: string;
begin
	sWkPhone := '';

  iWkSabun := cxgOwner.GetColumnByFieldName('기사사번').Index;
  iBrNo := cxgOwner.GetColumnByFieldName('지사코드').Index;
  iRow := cxgOwner.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;
  sWkSabun := cxgOwner.DataController.Values[iRow, iWkSabun];
  sBrNo := cxgOwner.DataController.Values[iRow, iBrNo];

  case TMenuItem(Sender).Tag of
    0:
      begin
        if Not Assigned(Frm_WOR01) Or (Frm_WOR01 = Nil) then Frm_WOR01 := TFrm_WOR01.Create(Nil);
        if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
          proc_FamilyBrChange;

        if GS_PRJ_AREA = 'O' then
        begin
					frm_WOR01.proc_wk_Search(sWkSabun);
         	frm_WOR01.Show;
        end else
        begin
         	Frm_WOR01.proc_init;
        	Frm_WOR01.gWOR19Mode := 'UPDATE';
          Frm_WOR01.Show;
          Frm_WOR01.proc_wk_Search(sWkSabun);
        end;
      end;
    1:
      begin
        if ( Not Assigned(Frm_COM02) ) Or ( Frm_COM02 = NIl ) then Frm_COM02 := TFrm_COM02.Create(Nil);
        Frm_COM02.proc_wk_Search(sWkSabun);
        Frm_COM02.Show;
      end;
    2:
      begin
        sWkPhone := func_Search_Phone(sWkSabun);
        if sWkPhone = '' then
          exit;
        proc_Wk_Tel(sWkPhone);
      end;
    3:
      begin
        if Length(sWkSabun) = 13 then
        begin
          GMessagebox('주민번호 차단 기사는 SMS문자 전송 기능을 사용할수 없습니다.', CDMSI);
          Exit;
        end;

        sWkPhone := func_Search_Phone(sWkSabun);
        if sWkPhone = '' then Exit;
        sKeyNum := func_BrTelSearch(sBrNo);
        if ( Not Assigned(Frm_SMS01) ) Or ( Frm_SMS01 = NIl ) then Frm_SMS01 := TFrm_SMS01.Create(Nil);
        Frm_SMS01.mm_message.Text := '';
        Frm_SMS01.ed_send.Text := sKeyNum;
        Frm_SMS01.ls_sms.Items.Clear;
        Frm_SMS01.ls_sms.Items.Add(sWkPhone);
        Frm_SMS01.Proc_Init;
        Frm_SMS01.Show;
      end;
    4:
      begin
        if cxgOwner.DataController.RecordCount = 0 then
        begin
          GMessagebox('자료가 없습니다.', CDMSI);
          exit;
        end;

        if GT_USERIF.Excel_Use = 'n' then
        begin
          GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
          Exit;
        end;

      	if TCK_USER_PER.WOR_ExcelDown <> '1' then
      	begin
          ShowMessage('[엑셀다운로드[기사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
          Exit;
        end;

				Frm_Main.sgExcel := '타회사에서 차단한 당사 기사 현황.xls';
        Frm_Main.sgRpExcel := Format('기사>공유콜배차제한>타사차단]%s건/%s', [GetMoneyStr(cxgOwner.DataController.RecordCount), FExcelDownBlock]);
        Frm_Main.cxGridExcel := cxGridA42;
        Frm_Main.proc_excel(0);
      end;
  end;
end;

function TFrm_WORA4.func_Search_Phone(sWkSabun: string): string;
var
  ls_TxLoad, sNode, rv_str: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_Result: IXMLDomNodeList;
  ls_Msg_Err, sWkHp, sWkPhone: string;
  ls_Rcrd: TStringList;
  slReceive: TStringList;
  ErrCode: integer;
begin
  Result := '';
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
    lst_Node.item[0].attributes.getNamedItem('Value').Text := 'WOR0013';

    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Key').Text := 'WKSEARCH03';

    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Seq').Text := '1';
    lst_Node.item[0].attributes.getNamedItem('Value').Text := sWkSabun;

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
          if not xdom.loadXML(ls_rxxml) then
          begin
            Screen.Cursor := crDefault;
            ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
            exit;
          end;
          ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
          if ('0000' = ls_MSG_Err) then
          begin
            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
            ls_Rcrd := TStringList.Create;
            try
              GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
              sWkHp := ls_Rcrd[0];
              sWkPhone := ls_Rcrd[1];
              if (Copy(sWkPhone, 1, 2) = '01') and (Length(sWkPhone) in [10, 11]) then
                Result := sWkPhone
              else
                Result := sWkHp;
            finally
              ls_Rcrd.Free;
            end;
          end else
          begin
            Screen.Cursor := crDefault;
            GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
          end;
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_WORA4.pmWkMenuA4Popup(Sender: TObject);
begin
  if GT_OCX <> '' then
    MenuItem35.Visible := True
  else
    MenuItem35.Visible := False;
end;

procedure TFrm_WORA4.proc_Wk_Tel(sWkPhone: string);
var
	sCustTel : string;
begin
	sCustTel := StringReplace(sWkPhone, '-', '', [rfReplaceAll]);
  Log('공유콜배차 기사전화걸기 ' + sCustTel, LOGDATAPATHFILE);
  Frm_Main.pCallingCID(sCustTel, GT_POSS_KEYNUM);
end;

function TFrm_WORA4.func_BrTelSearch(sBrNo: string): string;
var
  i: Integer;
  sTmp: string;
begin
  Result := '';
  try
    for i := 0 to GT_BR_KN_CNT do
    begin
      if GSL_HD_LIST[i, 0] = sBrNo then
      begin
        Result := GSL_HD_LIST[i, 7];
        break;
      end;
    end;
  except
    on e: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WORA4.btnShareOtherSearchClick(Sender: TObject);
begin
  DispShareBlockList(cxgOther, FShareBlockXml, cbbShareOtherSearch.Text, edtShareOtherSearch.Text);
end;

procedure TFrm_WORA4.btnShareOwnerSearchClick(Sender: TObject);
begin
  DispShareBlockList(cxgOwner, FShareBlockXml2, cbbShareOwnerSearch.Text, edtShareOwnerSearch.Text);
end;

procedure TFrm_WORA4.cbbShareOtherSearchPropertiesChange(Sender: TObject);
begin
  edtShareOtherSearch.Enabled := (TcxComboBox(Sender).Text <> '전체');
end;

procedure TFrm_WORA4.cbbShareOwnerSearchPropertiesChange(Sender: TObject);
begin
  edtShareOwnerSearch.Enabled := (TcxComboBox(Sender).Text <> '전체');
end;

procedure TFrm_WORA4.cxbShareCallAccClick(Sender: TObject);
begin
  if ( Not Assigned(Frm_WOR09) ) Or ( Frm_WOR09 = NIl ) then Frm_WOR09 := TFrm_WOR09.Create(Nil);
  Frm_WOR09.proc_init;
  Frm_WOR09.Show;
end;

procedure TFrm_WORA4.cxbShareCallDelClick(Sender: TObject);
begin
  proc_DelBlock;
end;

procedure TFrm_WORA4.proc_DelBlock;
var
  i, iWkSabun, iBrNo, iBlockType: Integer;
  ls_TxLoad, rv_str, ls_MSG_Err, sWkSabun, sBrNo, sBlockType: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  sLIst, sListErr, slReceive: TStringList;
  ErrCode: integer;
begin
  if cxgOther.DataController.GetSelectedCount = 0 then Exit;
  if cxgOther.DataController.RecordCount = 0 then Exit;

  if Application.MessageBox('선택한 기사 공유콜 배차 제한 차단 해제하시겠습니까?', 'CDMS', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then Exit;

  Screen.Cursor := crHourGlass;
  cxbShareCallDel.Enabled := False;
  try
    iWkSabun := cxgOther.GetColumnByFieldName('기사사번').Index;
    iBrNo := cxgOther.GetColumnByFieldName('지사코드').Index;
    iBlockType := cxgOther.GetColumnByFieldName('차단코드').Index;

    sLIst := TStringList.Create;
    sListErr := TStringList.Create;

    for i := 0 to cxgOther.DataController.RecordCount - 1 do
    begin
      if cxgOther.ViewData.Records[i].Selected then // ok
      begin
        sWkSabun  := cxgOther.ViewData.Records[I].Values[iWkSabun];
        sBrNo     := cxgOther.ViewData.Records[I].Values[iBrNo];
        sBlockType:= cxgOther.ViewData.Records[I].Values[iBlockType];

        ls_TxLoad := GTx_UnitXmlLoad('C065N1.XML');
        ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WOR092', [rfReplaceAll]);

        ls_TxLoad := StringReplace(ls_TxLoad, 'modeStr', 'DELETE', [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'hdNoStr', '', [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'brNoStr', sBrNo, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'selTypeStr', '', [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'typeStr', sBlockType, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'wkSabunStr', sWkSabun, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'memoStr', '', [rfReplaceAll]);

        slReceive := TStringList.Create;
        try
          if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
          begin
            rv_str := slReceive[0];
            if rv_str <> '' then
            begin
              ls_rxxml := rv_str;
              Application.ProcessMessages;
              try
                xdom := ComsDomDocument.Create;
                try
                  if not xdom.loadXML(ls_rxxml) then
                  begin
                    GMessagebox('실패하였습니다.', CDMSI);
                    Screen.Cursor := crDefault;
                    cxbShareCallDel.Enabled := True;
                    Exit;
                  end;

                  ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
                  if ('0000' = ls_MSG_Err) then
                  begin
                    sLIst.Add(sWkSabun);
                  end else
                  begin
                    sListErr.Add(sWkSabun);
                    Screen.Cursor := crDefault;
                    GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
                  end;
                finally
                  xdom := Nil;
                end;
              except
                sListErr.Add(sWkSabun);
                Screen.Cursor := crDefault;
                GMessagebox('실패하였습니다.', CDMSI);
                cxbShareCallDel.Enabled := True;
              end;
            end;
          end;
        finally
          FreeAndNil(slReceive);
        end;
      end;
    end;

    if sListErr.Count > 0 then
      GMessagebox('삭제하지 못한 사번이 있습니다.'
        + #13#10 + '실패 기사수 : ' + IntToStr(sListErr.Count)
        + #13#10 + sListErr.Text, CDMSI)
    else
      GMessagebox('차단해제 하였습니다.'
        + #13#10 + '성공 기사수 : ' + IntToStr(sList.Count)
        + #13#10 + sList.Text, CDMSI);

  finally
    Screen.Cursor := crDefault;
    FreeAndNil(sList);
    FreeAndNil(sListErr);
    cxbShareCallDel.Enabled := True;
  end;

  btnSearchA4Click(btnSearchA4);
end;

procedure TFrm_WORA4.btnSearchA4Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	cxgOwner.DataController.SetRecordCount(0);
  cxgOther.DataController.SetRecordCount(0);

  cbbShareOtherSearch.ItemIndex := 0;
  cbbShareOwnerSearch.ItemIndex := 0;
  edtShareOtherSearch.Clear;
  edtShareOwnerSearch.Clear;

  proc_NotShare;
end;

procedure TFrm_WORA4.cxgOtherColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	AIndex := AColumn.Index;
end;

procedure TFrm_WORA4.cxgOtherDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxgOther, AIndex, GS_SortNoChange);
end;

procedure TFrm_WORA4.cxgOwnerColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	AIndex := AColumn.Index;
end;

procedure TFrm_WORA4.cxgOwnerDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxgOwner, AIndex, GS_SortNoChange);
end;

procedure TFrm_WORA4.proc_NotShare;
begin
  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

   if fGetChk_Search_HdBrNo('공유콜배차제한') then Exit;

  //////////////////////////////////////////////////////////////////////////////
  // 기사>배차제한>당사]1000건/콜센터(통합)
  FExcelDownBlock := Format('%s',
    [
        GetSelBrInfo
    ]);
  //////////////////////////////////////////////////////////////////////////////

  RequestSharedBlock(True);
  RequestSharedBlock(False);
end;

procedure TFrm_WORA4.RequestSharedBlock(AMyBranch: Boolean);
var
  ls_TxLoad, sHdNo, sBrNo, SelType: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
  if GT_USERIF.LV = '60' then
  begin
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sHdNo := GT_SEL_BRNO.HDNO
    else
      sHdNo := GT_USERIF.HD;
    sBrNo := IfThen(GT_SEL_BRNO.GUBUN = '0', '', GT_SEL_BRNO.BrNo);
  end else
  if GT_USERIF.LV = '40' then
  begin
    sHdNo := GT_USERIF.HD;
    sBrNo := GT_USERIF.BR;
  end else
  begin
    sHdNo := GT_USERIF.HD;
    sBrNo := GT_USERIF.BR;
  end;

  SelType := IfThen(AMyBranch, '0', '1');

  ls_TxLoad := GTx_UnitXmlLoad('C065N1.XML');
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WOR092', [rfReplaceAll]);

  ls_TxLoad := StringReplace(ls_TxLoad, 'modeStr', 'SELECT', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'hdNoStr', sHdNo, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'brNoStr', sBrNo, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'selTypeStr', SelType, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'typeStr', '', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'wkSabunStr', '', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'memoStr', '', [rfReplaceAll]);

  slReceive := TStringList.Create;
  try
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
    begin
      if AMyBranch then
      begin
        FShareBlockXml.Clear;
        FShareBlockXml.AddStrings(slReceive);
//        FShareBlockXml := slReceive;
        DispShareBlockList(cxgOther, FShareBlockXml);
      end else
      begin
        FShareBlockXml2.Clear;
        FShareBlockXml2.AddStrings(slReceive);
        DispShareBlockList(cxgOwner, FShareBlockXml2);
      end;
    end;
  finally
    FreeAndNil(slReceive);
  end;
end;

procedure TFrm_WORA4.DispShareBlockList(AView: TcxGridDBTableView; AList: TStringList;
  AKeyWord, ASearchValue: string);
var
  I, J, ARow: Integer;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  AXml, ls_MSG_Err: string;
  BlockType, BrName, BrNo, TypeName, WkSabun, WkSabun2, WkName, WkHP, WkBrName, InID, Memo, InDate, sLimitData: string;
begin
  xdom := ComsDomDocument.Create;
  try
    if not Assigned(AList) then
    begin
      GMessagebox('결과데이터가 없습니다.', CDMSE);
      Exit;
    end;

    AView.BeginUpdate;
    try
      AView.DataController.SetRecordCount(0);
      for I := 0 to AList.Count - 1 do
      begin
        AXml := AList[I];

        if not xdom.loadXML(AXml) then
          Continue;

        ls_MSG_Err := GetXmlErrorCode(AXml);
        if ('0000' = ls_MSG_Err) then
        begin
          //GMessagebox('차단등록하였습니다.', CDMSI);
        end
        else
        begin
          GMessagebox(ls_MSG_Err, CDMSE);
          Continue;
        end;

        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Response/Data');

        for J := 0 to lst_Result.length - 1 do
        begin
          BlockType   := lst_Result.item[J].attributes.getNamedItem('Type').text;
          BrName      := lst_Result.item[J].attributes.getNamedItem('BrName').text;
          BrNo        := lst_Result.item[J].attributes.getNamedItem('BrNo').text;
          TypeName    := lst_Result.item[J].attributes.getNamedItem('TypeName').text;
          WkSabun     := lst_Result.item[J].attributes.getNamedItem('WkSabun').text;
          WkSabun2    := lst_Result.item[J].attributes.getNamedItem('WkSabun2').text;
          WkName      := lst_Result.item[J].attributes.getNamedItem('WkName').text;
          WkHP        := lst_Result.item[J].attributes.getNamedItem('WkHp').text;
          WkBrName    := lst_Result.item[J].attributes.getNamedItem('WkBrName').text;
          InID        := lst_Result.item[J].attributes.getNamedItem('InId').text;
          Memo        := lst_Result.item[J].attributes.getNamedItem('Memo').text;
          InDate      := lst_Result.item[J].attributes.getNamedItem('InDate').text;
          sLimitData  := lst_Result.item[J].attributes.getNamedItem('LimitDate').text;

          if (AKeyWord = '기사명') and (Length(Trim(ASearchValue)) > 0) and (Pos(ASearchValue , WkName) = 0) then
            Continue;

          if (AKeyWord = '단말기번호') and (Length(Trim(ASearchValue)) > 0) and (Pos(ASearchValue, RemovePhone(WkHP)) = 0) then
            Continue;

          ARow := AView.DataController.AppendRecord;
          // 1 Record 추가
          AView.DataController.Values[ARow, 0] := IntToStr(ARow + 1);
          AView.DataController.Values[ARow, 1] := BrName;
          AView.DataController.Values[ARow, 2] := WkSabun;
          AView.DataController.Values[ARow, 3] := WkSabun2;
          AView.DataController.Values[ARow, 4] := WkName;
          AView.DataController.Values[ARow, 5] := strtocall(WkHP);
          AView.DataController.Values[ARow, 6] := WkBrName;
          AView.DataController.Values[ARow, 7] := TypeName;
          AView.DataController.Values[ARow, 8] := Memo;
          AView.DataController.Values[ARow, 9] := InID;
          AView.DataController.Values[ARow, 10] := InDate;
          AView.DataController.Values[ARow, 11] := BrNo;
          if AView.ColumnCount > 13 then // 본인지사(차단해제를 위한 차단코드)
          begin
            AView.DataController.Values[ARow, 12] := BlockType;
            AView.DataController.Values[ARow, 13] := sLimitData;
          end
          else AView.DataController.Values[ARow, 12] := sLimitData;
        end;
      end;
    finally
      AView.EndUpdate;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_WORA4.FormDestroy(Sender: TObject);
begin
  Frm_WORA4 := Nil;
end;

procedure TFrm_WORA4.MenuItem16Click(Sender: TObject);
begin
	if cxgOther.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	if TCK_USER_PER.WOR_ExcelDown <> '1' then
	begin
    ShowMessage('[엑셀다운로드[기사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

	Frm_Main.sgExcel := '당사에 차단된 타회사기사.xls';
	Frm_Main.sgRpExcel := Format('기사>공유콜배차제한>당사차단]%s건/%s', [GetMoneyStr(cxgOther.DataController.RecordCount), FExcelDownBlock]);
  Frm_Main.cxGridExcel := cxGridA41;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_WORA4.proc_FamilyBrChange;
var
  i : Integer;
  HdCd, HdCd_Old : String;
begin
	try
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
				 frm_WOR01.RequestDataHeadInfo(HdCd);
				 HdCd_Old := HdCd;
			 end;
			 frm_WOR01.cboBranch.Properties.Items.Add('(' + HdCd + ',' + scb_FamilyBrCode[I] +')' + scb_FamilyBrName[I] + '/' + frm_WOR01.Gs_HdNm );
			 frm_WOR01.FBrNoList.Add(scb_FamilyBrCode[I]);
			 frm_WOR01.FTakList.Add(scb_FamilyTaksong[I]);
		end;
	except
	end;
end;

end.


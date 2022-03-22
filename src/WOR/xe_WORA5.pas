unit xe_WORA5;

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
  dxSkinsCore, dxSkinDevExpressStyle, dxSkinscxPCPainter;

type
  TFrm_WORA5 = class(TForm)
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
    btnSearchA5: TcxButton;
    cxLabel54: TcxLabel;
    lblSosokNameA5: TcxLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape5: TShape;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    Shape3: TShape;
    edtBklName: TcxTextEdit;
    edtBklPhone: TcxTextEdit;
    edtBklSsn: TcxTextEdit;
    Shape4: TShape;
    cxLabel1: TcxLabel;
    btnBklHistory: TcxButton;
    cxGridA5: TcxGrid;
    cxViewBlockList: TcxGridDBTableView;
    cxColViewKeyColumn1: TcxGridDBColumn;
    cxColViewKeyColumn2: TcxGridDBColumn;
    cxColViewKeyColumn3: TcxGridDBColumn;
    cxColViewKeyColumn4: TcxGridDBColumn;
    cxColViewKeyColumn5: TcxGridDBColumn;
    cxColViewKeyColumn6: TcxGridDBColumn;
    cxColViewKeyColumn7: TcxGridDBColumn;
    cxColViewKeyColumn8: TcxGridDBColumn;
    cxColViewKeyColumn9: TcxGridDBColumn;
    cxColViewKeyColumn10: TcxGridDBColumn;
    cxColViewKeyColumn11: TcxGridDBColumn;
    cxColViewBlockListColumn1: TcxGridDBColumn;
    cxColViewBlockListColumn2: TcxGridDBColumn;
    cxLevelBlackList: TcxGridLevel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnSearchA5Click(Sender: TObject);
    procedure cxViewBlockListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnBklHistoryClick(Sender: TObject);
  private
    { Private declarations }
    procedure DisplayBlackList(AXmlData: string);
    procedure ShowBlacklistHistory(APhone, ASsn: string);
  public
    { Public declarations }
    procedure proc_init;
    // 전문 응답 처리
    procedure proc_recieve(slList: TStringList);
  end;

var
  Frm_WORA5: TFrm_WORA5;

implementation

{$R *.dfm}

uses xe_GNL, xe_xml, xe_Func, xe_Dm, xe_Msg, Main, xe_gnl3, xe_Query, xe_gnl2,
  xe_Lib, xe_WOR07;


procedure TFrm_WORA5.proc_init;
var
  i : Integer;
begin
  for i := 0 to cxViewBlockList.ColumnCount - 1 do
    cxViewBlockList.Columns[i].DataBinding.ValueTypeClass := TcxStringValueType;

  lblSosokNameA5.Caption := GetSosokInfo;
end;

procedure TFrm_WORA5.proc_recieve(slList: TStringList);
var
  xdom: msDomDocument;
  ls_ClientKey, ls_Msg_Err : string;
	ls_rxxml: WideString;
begin
  try
    xdom := ComsDomDocument.Create;
    Screen.Cursor := crHourGlass;
    try
      ls_rxxml := slList[0];
      if not xdom.loadXML(ls_rxxml) then
      begin
        btnSearchA5.Enabled := True;
        Screen.Cursor := crDefault;
        Exit;
      end;

      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_ClientKey := GetXmlClientKey(ls_rxxml);
        if ls_ClientKey = 'BLACKLIST' then
        begin
          DisplayBlackList(ls_rxxml);
        end
      end else
      begin
        btnSearchA5.Enabled := True;
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
      end;
    finally
      btnSearchA5.Enabled := True;
      Screen.Cursor := crDefault;
      xdom := Nil;
    end;
  except
    btnSearchA5.Enabled := True;
  end;
end;

procedure TFrm_WORA5.DisplayBlackList(AXmlData: string);
var
  I, J, ARow: Integer;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
begin
  cxViewBlockList.DataController.SetRecordCount(0);

  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlData) then
      Exit;

    if (0 < GetXmlRecordCount(AXmlData)) then
    begin
      cxViewBlockList.DataController.BeginUpdate;
      try
        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
        ls_Rcrd := TStringList.Create;
        try
          for I := 0 to lst_Result.length - 1 do
          begin
            GetTextSeperationEx('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
            if ls_Rcrd.Count = 12 then
            begin
              ARow := cxViewBlockList.DataController.AppendRecord;

              for J := 0 to ls_Rcrd.Count - 1 do
              begin
                case J of
                  3, 4:
                    if Length(ls_Rcrd[J]) > 10 then
                      cxViewBlockList.DataController.Values[ARow, J] := Copy(ls_Rcrd[J], 1, 10)
                    else
                      cxViewBlockList.DataController.Values[ARow, J] := ls_Rcrd[J];
                  6, 7:
                    cxViewBlockList.DataController.Values[ARow, J] := strtocall(ls_Rcrd[J]);
                  8:
                    begin
                      cxViewBlockList.DataController.Values[ARow, J] := StrToSsn(ls_Rcrd[J], True); // 주민등록번호 마킹
                      cxViewBlockList.DataController.Values[ARow, 12] := StrToSsn(ls_Rcrd[J]);      // 주민등록번호
                    end;
                  9:
                    cxViewBlockList.DataController.Values[ARow, J] := RemoveAll(ReplaceAll(ls_Rcrd[J], #10, ' '), #13);
                else
                  cxViewBlockList.DataController.Values[ARow, J] := ls_Rcrd[J];
                end;
              end;
            end;
          end;
        finally
          ls_Rcrd.Free;
        end;
        cxViewBlockList.Columns[4].SortOrder := soDescending;
      finally
        cxViewBlockList.DataController.EndUpdate;
      end;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_WORA5.FormCreate(Sender: TObject);
begin
  proc_init;
end;

procedure TFrm_WORA5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_WORA5.btnBklHistoryClick(Sender: TObject);
var
  ARow: Integer;
  APhone, ASsn: string;
begin
  ARow := cxViewBlockList.DataController.FocusedRecordIndex;

  if ARow < 0 then
    Exit;

  APhone  := cxViewBlockList.DataController.Values[ARow, cxViewBlockList.GetColumnByFieldName('휴대폰번호').Index];
  ASsn    := cxViewBlockList.DataController.Values[ARow, cxViewBlockList.GetColumnByFieldName('주민등록번호').Index];

  ShowBlacklistHistory(APhone, ASsn);
end;

procedure TFrm_WORA5.btnSearchA5Click(Sender: TObject);
var
  Name, Phone, Ssn: string;
  ls_TxLoad, ls_TxQry, WhereQuery, sQueryTemp: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;

   if fGetChk_Search_HdBrNo('블랙리스트') then Exit;

	Screen.Cursor := crHourGlass;
  try
    Name  := Param_Filtering(edtBklName.Text);
    Phone := Param_Filtering(edtBklPhone.Text);
    Ssn   := Param_Filtering(edtBklSsn.Text);

    if (Name <> '') and (Length(Name) < 2) then
    begin
      GMessagebox('기사명 검색은 2자 이상부터 가능합니다.', CDMSI);
      Exit;
    end;

    WhereQuery := '';
    if Name <> '' then
      WhereQuery := WhereQuery + ' AND names LIKE ''%' + Name + '%''';
    if Phone <> '' then
      WhereQuery := WhereQuery + ' AND ((wk_hp = ''' + Phone + ''') OR (wk_phone = ''' + Phone + '''))';
    if Ssn <> '' then
      WhereQuery := WhereQuery + ' AND wk_snum = ''' + Ssn + '''';

    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');

    fGet_BlowFish_Query(GSQ_WK_BLACKLIST, sQueryTemp);
    ls_TxQry := sQueryTemp + WhereQuery;

    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BLACKLIST', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        Application.ProcessMessages;
        proc_recieve(slReceive);
      end;
    except
      GMessagebox('기사 패널티 초기화실패되었습니다.',CDMSI);
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_WORA5.FormDestroy(Sender: TObject);
begin
  Frm_WORA5 := Nil;
end;

procedure TFrm_WORA5.cxViewBlockListCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  ARow: Integer;
  APhone, ASsn: string;
begin
  ARow := ACellViewInfo.GridRecord.RecordIndex;

  if ARow < 0 then
    Exit;

  APhone  := cxViewBlockList.DataController.Values[ARow, cxViewBlockList.GetColumnByFieldName('휴대폰번호').Index];
  ASsn    := cxViewBlockList.DataController.Values[ARow, cxViewBlockList.GetColumnByFieldName('주민등록번호').Index];

  ShowBlacklistHistory(APhone, ASsn);
end;

procedure TFrm_WORA5.ShowBlacklistHistory(APhone, ASsn: string);
begin
  if ( Not Assigned(Frm_WOR07) ) Or ( Frm_WOR07 = Nil ) then Frm_WOR07 := TFrm_WOR07.Create(Nil);
  Frm_WOR07.Show;
  Frm_WOR07.proc_blacklist(APhone, ASsn);
end;

end.

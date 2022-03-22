unit xe_CMP02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxLabel, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  cxGroupBox, cxMaskEdit, cxDropDownEdit, cxCheckBox, cxGridBandedTableView,
  AdvProgressBar, cxMemo, dxSkinsCore, dxSkinMetropolisDark, MSXML2_TLB,
  dxSkinOffice2007Silver, dxSkinOffice2010Silver, dxSkinSharp;

type
  Tfrm_CMP02 = class(TForm)
    pnl_Main: TcxGroupBox;
    Pnl_Title: TPanel;
    BtnClose: TcxButton;
    pnl_Top: TcxGroupBox;
    pnl_Grid: TcxGroupBox;
    lbl3: TcxLabel;
    lblSelBranch: TcxLabel;
    lbl15: TcxLabel;
    edtBaseSsn: TcxTextEdit;
    cxLabel6: TcxLabel;
    edtBaseOwnerJumin: TcxTextEdit;
    edtBaseOwnerJumin1: TcxTextEdit;
    cxLabel7: TcxLabel;
    edtBaseOwner: TcxTextEdit;
    lbl14: TcxLabel;
    lbl17: TcxLabel;
    edtBaseZipCode: TcxTextEdit;
    edtBaseAddr: TcxTextEdit;
    edtBaseAddrDetail: TcxTextEdit;
    lbl12: TcxLabel;
    lbl18: TcxLabel;
    edtBasePhone: TcxTextEdit;
    cxGridA8: TcxGrid;
    cxBrInfoCopy: TcxGridBandedTableView;
    cxBrInfoCopyColumn1: TcxGridBandedColumn;
    cxBrInfoCopyColumn2: TcxGridBandedColumn;
    cxBrInfoCopyColumn4: TcxGridBandedColumn;
    cxBrInfoCopyColumn5: TcxGridBandedColumn;
    cxGridLevel1: TcxGridLevel;
    Gauge1: TAdvProgressBar;
    mmo_ProgressMsg: TcxMemo;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    edt_biz_Name: TcxTextEdit;
    btnBrInfoCopy: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Pnl_TitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BtnCloseClick(Sender: TObject);
    procedure cxBrInfoCopyBands2HeaderClick(Sender: TObject);
    procedure btnBrInfoCopyClick(Sender: TObject);
  private
    { Private declarations }
    function func_SetBranchNo(ABrNo: string):Boolean;
    function FieldNullCheck(Sender: TObject; AFieldName: string): Boolean;
    function func_SetBrInfoUpdate(AFBrNo, ATBrNo, ATBrNm : string) : Boolean;
  public
    { Public declarations }
    gsBrNo : string;
    gslBrNm, gslBrNo : TStringlist;
    procedure proc_Init;
    function func_SetGrid(ABrNo, ABrNm : string) : Boolean;
  end;

var
  frm_CMP02: Tfrm_CMP02;

implementation

{$R *.dfm}
uses xe_xml, xe_Func, xe_gnl, xe_dm, xe_msg, xe_packet;

procedure Tfrm_CMP02.btnBrInfoCopyClick(Sender: TObject);
var i, iRow, iTCnt, iCnt : integer;
  sBrNo, sBrNm, sMsg : string;
begin
  Try
    iTCnt := 0;
    for i := 0 to cxBrInfoCopy.DataController.RecordCount-1 do
    begin
      if cxBrInfoCopy.DataController.Values[i, 2] = '1' then
      begin
        inc(iTCnt);
      end;
    end;
		sMsg := Format('선택하신 %d개 지사의 정보를 일괄변경  하시겠습니까?', [iTCnt]);

    if iTCnt > 0 then 
    begin
      if Application.MessageBox(PChar(sMsg), '[지사정보]', MB_YESNO +	MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
      begin
        Gauge1.Max := cxBrInfoCopy.DataController.RecordCount-1;
        Gauge1.Position := 0;
        iRow := 0; iCnt := 0; 
        mmo_ProgressMsg.Lines.Clear;
        for i := 0 to cxBrInfoCopy.DataController.RecordCount-1 do
        begin
          Inc(iRow);
          Gauge1.Position := iRow;
          if cxBrInfoCopy.DataController.Values[i, 2] = '1' then
          begin
            sBrNo := cxBrInfoCopy.DataController.Values[i, 3];
            sBrNm := cxBrInfoCopy.DataController.Values[i, 1];
            if sBrNo <> '' then
            begin
              if func_SetBrInfoUpdate(gsBrNo, sBrNo, sBrNm) then
              begin
                mmo_ProgressMsg.Lines.Add(Format('[성공]%s(%s)', [sBrNm, sBrNo]));
                inc(iCnt);
              end else
              begin
              end;
            end;
          end;
        end;
        if iTCnt > 0 then 
        begin
          mmo_ProgressMsg.Lines.Add('==========================');  
          mmo_ProgressMsg.Lines.Add(Format('%d건 중 %d성공', [iTCnt, iCnt]));  
        end;
      end;
    end;
  Except

  End;
end;

procedure Tfrm_CMP02.BtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_CMP02.cxBrInfoCopyBands2HeaderClick(Sender: TObject);
var sChk : string;
  i: Integer;
begin
  cxBrInfoCopy.BeginUpdate;
  for i := 0 to cxBrInfoCopy.DataController.RecordCount - 1 do
  begin
    if (i = 0) then
    begin
      if cxBrInfoCopy.DataController.Values[0, 2] = '1' then sChk := '0' else sChk := '1';
    end;
     
    cxBrInfoCopy.DataController.Values[i, 2] := sChk;
  end;
  cxBrInfoCopy.EndUpdate;
end;

function Tfrm_CMP02.FieldNullCheck(Sender: TObject;
  AFieldName: string): Boolean;
begin
  Result := False;
  if Assigned(Sender) then
  begin
    if (TEdit(Sender).Enabled) and (TEdit(Sender).Text = '') then
    begin
      GMessageBox(AFieldName + '은(는) 필수항목입니다' +CRLF + CRLF
                + lblSelBranch.Caption + ' 지사 상세정보를 다시 확인하세요', CDMSE);
      Exit;
    end;
  end;

  Result := True;
end;

procedure Tfrm_CMP02.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrm_CMP02.FormCreate(Sender: TObject);
var
  Save: Integer;
begin
  //====================================================
  // 폼 타이틀 제거..
  Save := GetWindowLong(Handle, gwl_Style);
  if (Save and ws_Caption) = ws_Caption then
  begin
    case BorderStyle of
      bsSingle, bsSizeable:
        SetWindowLong(Handle, gwl_Style, Save and (not (ws_Caption)) or
          ws_border);
    end;
    Height := Height - getSystemMetrics(sm_cyCaption);
    Refresh;
  end;
  gslBrNm := TStringlist.Create; gslBrNo := TStringlist.Create;
end;

procedure Tfrm_CMP02.FormDestroy(Sender: TObject);
begin
  frm_CMP02 := Nil;
end;

procedure Tfrm_CMP02.Pnl_TitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

function Tfrm_CMP02.func_SetBranchNo(ABrNo: string):Boolean;
var
  ls_TxLoad, ReceiveStr: string;
  StrList: TStringList;
  ErrCode, i: integer;
  xdom: msDomDocument;
  XmlData: WideString;
  ErrorCode, sTmp: string;

  ResultList: IXMLDomNodeList;
  slTmp : TStringList;
  
begin
  Result := False;
  try
		ls_TxLoad := GTx_UnitXmlLoad('C047N2.xml');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BRIF000S', [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_ACTION', 'SELECT', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_지사코드', ABrNo, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_TYPE', '', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'Memo="VAL_Memo"', 'Memo="VAL_Memo" br_jumin_no="VAL_JUMIN"', [rfReplaceAll]);

    StrList := TStringList.Create;
    Screen.Cursor := crHandPoint;
    try
      if dm.SendSock(ls_TxLoad, StrList, ErrCode, False) then
      begin
        ReceiveStr := StrList[0];

        if trim(ReceiveStr) <> '' then
        begin
          Application.ProcessMessages;

          xdom := ComsDomDocument.Create;
          Screen.Cursor := crHourGlass;
          try
            XmlData := ReceiveStr;
            if not xdom.loadXML(XmlData) then
              Exit;

            ErrorCode := GetXmlErrorCode(XmlData);
            if ('0000' = ErrorCode) then
            begin
              ResultList := xdom.documentElement.selectNodes('/cdms/Service/Branch/Base');

              if ResultList.length > 0 then
              begin
                sTmp := ResultList[0].attributes.getNamedItem('name').text;

                lblSelBranch.Caption := Format('[%s] %s', [ABrNo, sTmp]);
                sTmp := ResultList[0].attributes.getnamedItem('br_biz_name').text;
                if sTmp = 'VAL_br_biz_name' then
                  edt_biz_Name.Text := '' else edt_biz_Name.Text := sTmp;

                edtBaseOwner.Text := ResultList[0].attributes.getNamedItem('ceo').text;
                if not FieldNullCheck(edtBaseOwner, '대표자명') then
                  Exit;

                edtBaseSsn.Text := ResultList[0].attributes.getNamedItem('company_no').text;
                if edtBaseSsn.Text <> '0000000000' then
                begin
                  if not FieldNullCheck(edtBaseSsn, '사업자번호') then Exit;
                  if not FieldNullCheck(edt_biz_Name, '사업장명') then Exit;
                end;

                edtBasePhone.Text := ResultList[0].attributes.getnamedItem('br_biz_tel').text;
                if not FieldNullCheck(edtBasePhone, '사업장전화번호') then
                  Exit;
                sTmp := ResultList[0].attributes.getnamedItem('br_biz_tel').text;
                slTmp := TStringList.Create;
                Try
                  GetTextSeperationEx('-', sTmp, slTmp);
                  if slTmp.Count < 3 then
                  begin
                    GMessageBox('사업장 번호는 지역변호-국번-4자리로 구성되어야 합니다.' +CRLF + CRLF
                              + lblSelBranch.Caption + ' 지사 상세정보를 다시 확인하세요', CDMSE);
                    Exit;
                  end;
                Finally
                  slTmp.Free;
                End;
                sTmp := ResultList[0].attributes.getNamedItem('br_jumin_no').text;
                edtBaseOwnerJumin.Text  := Copy(sTmp, 1, 6);
                if not FieldNullCheck(edtBaseOwnerJumin, '주민번호앞자리') then
                  Exit;
                edtBaseOwnerJumin1.Text := Copy(sTmp, 7, 7);
                if not FieldNullCheck(edtBaseOwnerJumin1, '주민번호뒷자리') then
                  Exit;

                edtBaseZipCode.Text := ResultList[0].attributes.getNamedItem('zipcode').text;
                if not FieldNullCheck(edtBaseZipCode, '우편번호') then
                  Exit;
                edtBaseAddr.Text := ResultList[0].attributes.getNamedItem('address1').text;
                if not FieldNullCheck(edtBaseAddr, '도로명주소') then
                  Exit;
                edtBaseAddrDetail.Text := ResultList[0].attributes.getNamedItem('address2').text;

                Result := True;
              end;                               
              
            end else
            begin
              GMessagebox(MSG012 + CRLF + ErrorCode, CDMSE);
            end;
          finally
            Screen.Cursor := crDefault;
            xdom := Nil;
          end;
        end;
      end;
    finally
      StrList.Free;
      Screen.Cursor := crDefault;
    end;
  except
  end;
end;

function Tfrm_CMP02.func_SetBrInfoUpdate(AFBrNo, ATBrNo, ATBrNm: string): Boolean;
var
	XmlData, Param, ErrMsg : string;
	ErrCode : Integer;
begin
	SetDebugeWrite('Tfrm_AIC11.func_ScenarioDelete');
	try
		Result := False;
		Param := AFBrNo;
		Param := Param + '│' + ATBrNo;

		if not RequestBase(GetCallable06('SET_BRANCH_INFO_UPDATE', 'MNG_BRANCH.SET_BRANCH_INFO_UPDATE', param), XmlData, ErrCode, ErrMsg) then
//		if not RequestBase(GetCallable05('SET_BRANCH_INFO_UPDATE', 'MNG_BRANCH.SET_BRANCH_INFO_UPDATE', Param), XmlData, ErrCode, ErrMsg) then
		begin
			mmo_ProgressMsg.Lines.Add(Format('[실패]%s(%s)', [ATBrNm, ATBrNo]));
//			mmo_ProgressMsg.Lines.Add(Format('[실패]%s(%s) 지사 일괄적용실패'#13#10'[%d]%s', [ATBrNm, ATBrNo, ErrCode, ErrMsg]));
      exit;
      
		end;
		Result := True;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_CMP02.proc_Init;
var I: Integer;
begin
  for i := 0 to cxBrInfoCopy.ColumnCount - 1 do
  begin
    if i in [0] then
      cxBrInfoCopy.Columns[i].DataBinding.ValueType := 'Integer' 
    else
      cxBrInfoCopy.Columns[i].DataBinding.ValueType := 'String';
  end;
  cxBrInfoCopy.DataController.SetRecordCount(0);
  edtBaseOwner.text := '';
  edtBaseSsn.text := '';
  edtBasePhone.text := '';
  edtBaseOwnerJumin.text := '';
  edtBaseOwnerJumin1.text := '';
  edtBaseZipCode.text := '';
  edtBaseAddr.text := '';
  edtBaseAddrDetail.text := '';
  gsBrNo := '';
  gslBrNm.Clear; gslBrNo.Clear;
end;

function Tfrm_CMP02.func_SetGrid(ABrNo, ABrNm: string) : Boolean;
var i, iRow : integer;
  bTmp : Boolean;
begin

  try
    Result := func_SetBranchNo(ABrNo);

    if not Result then
    begin
      exit;
    end;
    
    cxBrInfoCopy.DataController.SetRecordCount(0);
    cxBrInfoCopy.BeginUpdate;
    For i := 0 to gslBrNo.Count -1 do
    begin
      iRow := cxBrInfoCopy.DataController.AppendRecord;

      cxBrInfoCopy.DataController.Values[iRow, 0] := i+1;
      cxBrInfoCopy.DataController.Values[iRow, 1] := gslBrNm[i];
      cxBrInfoCopy.DataController.Values[iRow, 2] := '0';
      cxBrInfoCopy.DataController.Values[iRow, 3] := gslBrNo[i];
      
    end;
    cxBrInfoCopy.EndUpdate;
  except

  end;
end;

end.

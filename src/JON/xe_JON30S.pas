unit xe_JON30S;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdHTTP, IniFiles, MSXML2_TLB,
  dxSkinsCore, dxSkinscxPCPainter, dxBarBuiltInMenu,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxLabel, Vcl.StdCtrls, cxMemo, cxRadioGroup,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxTextEdit, cxButtons, dxGDIPlusClasses,
  Vcl.ExtCtrls, cxCheckBox, cxGroupBox, cxPC, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  TFrm_JON30S = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Search_SETCHK1: TcxCheckBox;
    Search_SETCHK2: TcxCheckBox;
    Search_SETCHK2_3: TcxCheckBox;
    Search_SETCHK2_4: TcxCheckBox;
    btnClose4: TcxButton;
    btnClose2: TcxButton;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    Search_SETCHK8: TcxCheckBox;
    cxLabel12: TcxLabel;
    Search_SETCHK9: TcxCheckBox;
    Search_SETCHK10: TcxCheckBox;
    Search_SETCHK11: TcxCheckBox;
    Search_SETCHK12: TcxCheckBox;
    Search_SETCHK13: TcxCheckBox;
    Search_SETCHK16: TcxCheckBox;
    Search_SETCHK17: TcxCheckBox;
    Search_SETCHK4_1: TcxCheckBox;
    Search_SETCHK6: TcxCheckBox;
    Search_SETCHK15: TcxCheckBox;
    Search_SETCHK3: TcxCheckBox;
    Search_SETCHK14: TcxCheckBox;
    Search_SETCHK2_1: TcxCheckBox;
    Search_SETCHK2_2: TcxCheckBox;
    Search_SETCHK1_2: TcxCheckBox;
    Search_SETCHK19: TcxCheckBox;
    Search_SETCHK18: TcxCheckBox;
    Search_SETCHK1_3: TcxCheckBox;
    Search_SETCHK21: TcxCheckBox;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxGroupBox2: TcxGroupBox;
    Shape10: TShape;
    cxGrid1: TcxGrid;
    cxViewPOICNm: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    BtnPoiSch: TcxButton;
    BtnPoiA: TcxButton;
    BtnPoiSchC: TcxButton;
    cbPOICngYn: TcxCheckBox;
    cxButton1: TcxButton;
    cxGrpPOIBase: TcxGroupBox;
    Label4: TLabel;
    cxGrid2: TcxGrid;
    cxViewPOIBaseCNm: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    gbPOIMng: TcxGroupBox;
    Shape12: TShape;
    Shape13: TShape;
    EdPOINm: TcxTextEdit;
    EdPOICNm: TcxTextEdit;
    BtnPOIU: TcxButton;
    BtnPOID: TcxButton;
    BtnPOIE: TcxButton;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    Panel1: TPanel;
    cxGroupBox3: TcxGroupBox;
    Panel2: TPanel;
    cxGroupBox4: TcxGroupBox;
    Shape9: TShape;
    Shape11: TShape;
    cxGroupBox5: TcxGroupBox;
    Shape14: TShape;
    cxGroupBox6: TcxGroupBox;
    Shape15: TShape;
    cxGroupBox7: TcxGroupBox;
    Shape17: TShape;
    cxGroupBox9: TcxGroupBox;
    pnlTitle: TPanel;
    cxLblActive: TLabel;
    BtnClose: TcxButton;
    Shape18: TShape;
    chkUseMiniMap: TcxCheckBox;
    cxBtnSetA: TcxButton;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    Shape16: TShape;
    Shape24: TShape;
    btnGetList: TcxButton;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Shape28: TShape;
    cbAuto: TcxCheckBox;
    Search_SETCHK22: TcxCheckBox;
    cxgrpNew: TcxGroupBox;
    cxGrid3: TcxGrid;
    cxViewNaverAPI: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    Shape19: TShape;
    Shape20: TShape;
    Shape21: TShape;
    BtnApiNSch: TcxButton;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    EdNSNID: TcxTextEdit;
    RBNSA: TcxRadioButton;
    RBNSN: TcxRadioButton;
    RBNSY: TcxRadioButton;
    BtnApiNA: TcxButton;
    PnlNaverAPINMng: TcxGroupBox;
    Shape22: TShape;
    Shape23: TShape;
    Shape25: TShape;
    Shape26: TShape;
    Shape27: TShape;
    EdNNId: TcxTextEdit;
    EdNNPw: TcxTextEdit;
    cxMemo2: TcxMemo;
    RBNY: TcxRadioButton;
    RBNN: TcxRadioButton;
    BtnApiNU: TcxButton;
    BtnApiND: TcxButton;
    cxButton8: TcxButton;
    BtnApiNTest: TcxButton;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxgrpOld: TcxGroupBox;
    BtnApiA: TcxButton;
    cxGridNaverAPI: TcxGrid;
    cxViewDaumAPI: TcxGridDBTableView;
    cxViewDaumAPIColumn1: TcxGridDBColumn;
    cxViewDaumAPIColumn3: TcxGridDBColumn;
    cxViewDaumAPIColumn2: TcxGridDBColumn;
    cxViewDaumAPIColumn4: TcxGridDBColumn;
    cxViewDaumAPIColumn5: TcxGridDBColumn;
    cxViewDaumAPIColumn6: TcxGridDBColumn;
    cxViewDaumAPIColumn7: TcxGridDBColumn;
    cxViewDaumAPIColumn8: TcxGridDBColumn;
    cxViewDaumAPIColumn9: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxGroupBox10: TcxGroupBox;
    Shape1: TShape;
    Shape2: TShape;
    Shape35: TShape;
    BtnApiSch: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    EdNSKey: TcxTextEdit;
    RBSA: TcxRadioButton;
    RBSN: TcxRadioButton;
    RBSY: TcxRadioButton;
    PnlNaverAPIMng: TcxGroupBox;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    EdNId: TcxTextEdit;
    EdNNm: TcxTextEdit;
    EdNKey: TcxTextEdit;
    cxMemo1: TcxMemo;
    RBY: TcxRadioButton;
    RBN: TcxRadioButton;
    BtnApiU: TcxButton;
    BtnApiD: TcxButton;
    cxButton77: TcxButton;
    BtnApiTest: TcxButton;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    Panel3: TPanel;
    chk_NAPIKey: TcxCheckBox;
    chk_DAPIKey: TcxCheckBox;
    Search_SETCHK14_1: TcxCheckBox;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Search_SETCHK4: TcxCheckBox;
    Search_SETCHK4_2: TcxCheckBox;
    rbSelN: TcxRadioButton;
    rbSelD: TcxRadioButton;
    rbSelA: TcxRadioButton;
    Search_SETCHK23: TcxCheckBox;
    procedure btnClose4Click(Sender: TObject);
    procedure Search_SETCHK2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnPoiAClick(Sender: TObject);
    procedure BtnPOIDClick(Sender: TObject);
    procedure BtnPOIEClick(Sender: TObject);
    procedure BtnPOIUClick(Sender: TObject);
    procedure cbPOICngYnClick(Sender: TObject);
    procedure BtnApiAClick(Sender: TObject);
    procedure btnClose2Click(Sender: TObject);
    procedure BtnPoiSchCClick(Sender: TObject);
    procedure BtnApiDClick(Sender: TObject);
    procedure BtnApiUClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Search_SETCHK1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton77Click(Sender: TObject);
    procedure cxViewDaumAPICellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxViewPOICNmCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure BtnPoiSchClick(Sender: TObject);
    procedure BtnApiSchClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure chkUseMiniMapClick(Sender: TObject);
    procedure cxBtnSetAClick(Sender: TObject);
    procedure BtnApiTestClick(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure BtnApiNAClick(Sender: TObject);
    procedure BtnApiNUClick(Sender: TObject);
    procedure BtnApiNDClick(Sender: TObject);
    procedure BtnApiNTestClick(Sender: TObject);
    procedure cxViewNaverAPICellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure EdNKeyPropertiesChange(Sender: TObject);
    procedure EdNNIdPropertiesChange(Sender: TObject);
    procedure Search_SETCHK1_3Click(Sender: TObject);
    procedure Search_SETCHK1_2Click(Sender: TObject);
    procedure btnGetListClick(Sender: TObject);
    procedure chk_DAPIKeyPropertiesChange(Sender: TObject);
    procedure Search_SETCHK14PropertiesChange(Sender: TObject);
    procedure Search_SETCHK14_1PropertiesChange(Sender: TObject);
    procedure Search_SETCHK4Click(Sender: TObject);
    procedure Search_SETCHK23PropertiesChange(Sender: TObject);
  private
    procedure proc_Get_POIChNmList;
    procedure Edt_Init_DaumAPI;
    procedure proc_Get_DaumAPIKeyList;
    procedure Edt_Init_NaverAPIN;
    function fGetAPIKeyCheck( sApiKey : String ) : Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_JON30S: TFrm_JON30S;

implementation

{$R *.dfm}

uses xe_GNL, xe_JON30, xe_Func, xe_Msg, xe_packet, xe_SETA1, xe_SearchWord,
  xe_gnl2, xe_xml;

  //Decode
function UrlDecode(const svar: AnsiString): AnsiString;
  function HexToChar(const hx: AnsiString): char;
    const
    HEX_TABLE = '0123456789ABCDEF';
    LAT_TABLE = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    var
    cnt,
    digit,
    ascii: byte;
  begin
    ascii := 0;
    for cnt := 1 to 2 do
    begin
      digit := (pos(hx[cnt], HEX_TABLE) - 1);
      if cnt = 1 then
        ascii := ascii + (digit * 16)
      else
        ascii := ascii + digit;
    end;
    result := chr(ascii);
  end;

  var
  i, len: longword;
  c: Ansichar;
begin
  result:= '';
  i:= 1;
  len:= length(svar);
  while i <= len do
  begin
    c:= svar[i];
    if c = '%' then
    begin
      if (i + 2) <= len then
      begin
        inc(i);
        result := result + HexToChar(copy(svar, i, 2));
        i:= i + 2;
      end
      else
      begin
        i:= len;
      end;
    end else
    begin
      if c = '+' then
        result := result + ' '
      else
        result:= result + c;
      inc(i);
    end;
  end;
end;

procedure TFrm_JON30S.BtnApiAClick(Sender: TObject);
begin
  try
    Edt_Init_DaumAPI;

    PnlNaverAPIMng.Left := (cxgrpOld.Width - PnlNaverAPIMng.Width) div 2;
    PnlNaverAPIMng.top := (cxgrpOld.Height - PnlNaverAPIMng.Height) div 2;
    PnlNaverAPIMng.Visible := True;
    EdNId.SetFocus;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30S.EdNKeyPropertiesChange(Sender: TObject);
begin
  BtnApiTest.Enabled := True;
end;

procedure TFrm_JON30S.EdNNIdPropertiesChange(Sender: TObject);
begin
  BtnApiNTest.Enabled := True;
end;

procedure TFrm_JON30S.Edt_Init_DaumAPI;
begin
  SetDebugeWrite('Frm_JON30S.Edt_Init_DaumAPI');
  EdNId.Hint := '';
  EdNId.Clear;
  EdNNm.Clear;
  EdNKey.Clear;

  cxMemo1.Clear;
  RBY.Checked := True;

  BtnApiTest.Enabled := True;

  PnlNaverAPIMng.Caption := ' 등록';
  BtnApiU.Caption := '저 장';
end;

procedure TFrm_JON30S.Edt_Init_NaverAPIN;
begin
  SetDebugeWrite('Frm_JON30S.Edt_Init_NaverAPIN');
  EdNNId.Hint := '';
  EdNNId.Clear;
  EdNNPw.Clear;

  cxMemo2.Clear;
  RBNY.Checked := True;

  BtnApiNTest.Enabled := True;

  PnlNaverAPINMng.Caption := ' 등록';
  BtnApiNU.Caption := '저 장';
end;

procedure TFrm_JON30S.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON30S.proc_Get_DaumAPIKeyList;
var
	XmlData, Param, ErrMsg : string;
	xdom: msDomDocument;
	lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd : TStringList;
	i, ErrCode, iRow, iCnt : Integer;
begin
  SetDebugeWrite('Frm_JON30S.proc_Get_DaumAPIKeyList');
  cxViewDaumAPI.DataController.SetRecordCount(0);
	try
		Param := '';
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			Param := Param +  GT_SEL_BRNO.HDNO
		else
			Param := Param +  GT_USERIF.HD;

    if RBSA.Checked then Param := Param + '│' + '0' else
    if RBSY.Checked then Param := Param + '│' + '1' else
    if RBSN.Checked then Param := Param + '│' + '2';

    Param := Param + '│' + Trim(EdNSKey.Text);

		if not RequestBase(GetSel05('LIST_NAVER', 'MNG_NAVER.LIST_NAVER', '1000', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('API 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
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
		  	cxViewDaumAPI.BeginUpdate;
		  	try
          iCnt := 0;
          GS_DAUM_APIKey.Clear;
		  		for I := 0 to lst_Result.length - 1 do
		  		begin
		  			GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
            if Copy(ls_Rcrd[0], 1, 1) = '^' then
            begin
		  			  iRow := cxViewDaumAPI.DataController.AppendRecord;
		  			  cxViewDaumAPI.DataController.Values[iRow, 0] := IntToStr(iCnt+1);
		  			  cxViewDaumAPI.DataController.Values[iRow, 1] := ls_Rcrd[3];       // 검색 아이디
		  			  cxViewDaumAPI.DataController.Values[iRow, 2] := Copy(ls_Rcrd[0], 2, Length(ls_Rcrd[0])-1);       // API Key
		  			  cxViewDaumAPI.DataController.Values[iRow, 3] := ls_Rcrd[4];       // 검색 아이디명
		  			  cxViewDaumAPI.DataController.Values[iRow, 4] := ls_Rcrd[5];       // 메모
              if ls_Rcrd[6] = '1' then                                           // 사용 여부
              begin
  	  			  	cxViewDaumAPI.DataController.Values[iRow, 5] := '사용';
                GS_DAUM_APIKey.Add(Copy(ls_Rcrd[0], 2, Length(ls_Rcrd[0])-1));
              end else
              if ls_Rcrd[6] = '2' then
              begin
								cxViewDaumAPI.DataController.Values[iRow, 5] := '사용안함';
              end;
		  			  cxViewDaumAPI.DataController.Values[iRow, 6] := ls_Rcrd[1];       // 본사 코드
		  			  cxViewDaumAPI.DataController.Values[iRow, 7] := ls_Rcrd[2];       // 지사 코드
		  			  cxViewDaumAPI.DataController.Values[iRow, 8] := ls_Rcrd[8];       // SEQ
              Inc(iCnt);
            end;
		  		end;
		  	finally
		  		cxViewDaumAPI.EndUpdate;
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


function TFrm_JON30S.fGetAPIKeyCheck( sApiKey : String ) : Boolean;
var
	XmlData, Param, ErrMsg : string;
	xdom: msDomDocument;
	lst_Count : IXMLDomNodeList;
	ErrCode : Integer;
begin
  SetDebugeWrite('Frm_JON30S.fGetAPIKeyCheck');
	Result := False;
	try
		Param := '';
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			Param := Param +  GT_SEL_BRNO.HDNO
		else
			Param := Param +  GT_USERIF.HD;

    Param := Param + '│' + '0';
    Param := Param + '│' + sApiKey;

		if not RequestBase(GetSel05('LIST_NAVER', 'MNG_NAVER.LIST_NAVER', '1000', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('API 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Exit;
		end;

		xdom := ComsDomDocument.Create;
		xdom.loadXML(XmlData);
    try
		  lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');

		  if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
		  begin
  			GMessagebox('이미 등록된 API KEY 입니다.', CDMSE);
	  		Result := True;
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

procedure TFrm_JON30S.BtnApiDClick(Sender: TObject);
Var Param, XmlData, ErrMsg, sSEQ : String;
    ErrCode : Integer;
begin
  SetDebugeWrite('Frm_JON30S.BtnApiDClick');
  if GMessagebox('삭제하시겠습니까?', CDMSQ) <> idok then Exit;

  sSEQ := Trim(EdNId.Hint);
  Param := '';

  try
    Param := sSEQ;

    if not RequestBase(GetCallable05('SET_NAVER_DELETE', 'MNG_NAVER.SET_NAVER_DELETE', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;
    GMessagebox('삭제되었습니다.', CDMSI);

    proc_Get_DaumAPIKeyList;

    PnlNaverAPIMng.Visible := False;
  except
    ShowMessage('삭제 중 오류 발생');
  end;
end;

procedure TFrm_JON30S.BtnApiNAClick(Sender: TObject);
begin
  try
    Edt_Init_NaverAPIN;

    PnlNaverAPINMng.Left := (cxgrpOld.Width - PnlNaverAPINMng.Width) div 2;
    PnlNaverAPINMng.top := (cxgrpOld.Height - PnlNaverAPINMng.Height) div 2;
    PnlNaverAPINMng.Visible := True;
    EdNNId.SetFocus;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30S.BtnApiNDClick(Sender: TObject);
Var Param, XmlData, ErrMsg, sSEQ : String;
    ErrCode : Integer;
begin
  SetDebugeWrite('Frm_JON30S.BtnApiNDClick');
  if GMessagebox('삭제하시겠습니까?', CDMSQ) <> idok then Exit;

  sSEQ := Trim(EdNNId.Hint);
  Param := '';

  try
    Param := sSEQ;

    if not RequestBase(GetCallable05('SET_NAVER_DELETE', 'MNG_NAVER.SET_NAVER_DELETE', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;
    GMessagebox('삭제되었습니다.', CDMSI);

    PnlNaverAPINMng.Visible := False;
  except
    ShowMessage('삭제 중 오류 발생');
  end;
end;

procedure TFrm_JON30S.BtnApiNTestClick(Sender: TObject);
Var sHttp, wURL : String;
    IdHttpAPI : TIdHttp;
begin
  SetDebugeWrite('Frm_JON30S.BtnApiTestClick');
  try
    if Trim(EdNNID.Text) = '' then
    begin
      GMessagebox('아이디를 입력하세요', CDMSE);
      EdNNID.SetFocus;
      Exit;
    end;

    if Trim(EdNNPW.Text) = '' then
    begin
      GMessagebox('패스워드를 입력하세요', CDMSE);
      EdNNPW.SetFocus;
      Exit;
    end;

    try
      IdHttpAPI := TIdHttp.Create(nil);
      try
        sHttp := 'https://openapi.naver.com/v1/search/local.xml?query=' + UrlEncode(UTF8Encode(trim('수서역'))) + '&start=1&display=30&sort=random';
		    IdHttpAPI.ReadTimeout := 5 * 1000;
  		  IdHttpAPI.ConnectTimeout := 5 * 1000;
        IdHttpAPI.Request.CustomHeaders.Values['X-Naver-Client-Id'] := Trim(EdNNID.Text);
        IdHttpAPI.Request.CustomHeaders.Values['X-Naver-Client-Secret'] := Trim(EdNNPW.Text);
		    wURL := IdHttpAPI.Get(sHttp);
      except
        wURL := '';
      end;
    finally
      IdHttpAPI.Free;
    end;

    if wURL = '' then
    begin
      GMessagebox('등록되지 않은 키입니다', CDMSE);
      Exit;
    end else
    begin
      if fGetAPIKeyCheck(Trim(EdNNID.Text) + ',' + Trim(EdNNPW.Text)) then Exit;

      GMessagebox('사용 가능 한 키입니다', CDMSI);
      BtnApiNTest.Enabled := False;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30S.BtnApiNUClick(Sender: TObject);
Var Param, XmlData, ErrMsg, sSEQ : String;
    ErrCode : Integer;
begin
  SetDebugeWrite('Frm_JON30S.BtnApiUClick');
  if Trim(EdNNID.Text) = '' then
  begin
    GMessagebox('아이디를 입력하십시오.', CDMSE);
    EdNNID.SetFocus;
    Exit;
  end;

  if Trim(EdNNPw.Text) = '' then
  begin
    GMessagebox('패스워드를 입력하십시오.', CDMSE);
    EdNNPw.SetFocus;
    Exit;
  end;

  if BtnApiNTest.Enabled then
  begin
    GMessagebox('API 정상 확인 버튼을 클릭하십시오.', CDMSE);
    EdNNID.SetFocus;
    Exit;
  end;

  sSEQ := Trim(EdNNID.Hint);
  Param := '';

  try
    if sSEQ = '' then Param := '0'            // 저장타입 (0: 추가, 1: 수정)
                 else Param := '1';

    Param := Param + '│*' + Trim(EdNNID.Text) + ',' + Trim(EdNNPW.Text);

    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 본사코드, 지사코드
      Param := Param + '│' + GT_SEL_BRNO.HDNO + '│' + GT_SEL_BRNO.BRNO
    else
      Param := Param + '│' + GT_USERIF.HD + '│' + GT_USERIF.BR;

    Param := Param + '│' +  '│' + '│' + Trim(cxMemo2.Text);

    if RBNY.Checked then Param := Param + '│' + '1' else
    if RBNN.Checked then Param := Param + '│' + '2';

    Param := Param + '│' + sSEQ;

    if not RequestBase(GetCallable05('SET_NAVER', 'MNG_NAVER.SET_NAVER', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;
    GMessagebox('저장되었습니다.', CDMSI);

    PnlNaverAPINMng.Visible := False;
  except
    GMessagebox('저장 중 오류 발생', CDMSE);
  end;
end;

procedure TFrm_JON30S.BtnApiSchClick(Sender: TObject);
begin
  proc_Get_DaumAPIKeyList;
end;

procedure TFrm_JON30S.btnClose2Click(Sender: TObject);
var bSaveFlag : Boolean;
	msg : string;
begin
	bSaveFlag := False;
	if Search_SETCHK1.checked 		 <> GS_SEARCH_POTAL 									 then bSaveFlag := True;
	if Search_SETCHK1_2.checked 	 <> GS_SEARCH_POTAL_2ResultOver 			 then bSaveFlag := True;
	if Search_SETCHK1_3.checked    <> GS_SEARCH_POTAL_SPACEKEY 					 then bSaveFlag := True;
	if GS_SEARCH_POTAL_2ResultOver <>	Frm_JON30.btn_Potal_Search.Visible then bSaveFlag := True;
	if Search_SETCHK2.checked 		 <> GS_SEARCH_AUTO_COMPLETE 					 then bSaveFlag := True;
	if Search_SETCHK2_1.checked 	 <> GS_SEARCH_AUTO_DONGNAME_ADD 			 then bSaveFlag := True;
	if Search_SETCHK2_2.checked 	 <> GS_SEARCH_AUTO_DETILEPOI 					 then bSaveFlag := True;
	if Search_SETCHK2_3.checked 	 <> GS_SEARCH_AUTO_MAINPOI 						 then bSaveFlag := True;
	if Search_SETCHK2_4.checked 	 <> GS_SEARCH_AUTO_NOTUSE 						 then bSaveFlag := True;
	if Search_SETCHK3.checked      <> GS_SEARCH_DONGNAME 								 then bSaveFlag := True;
	if Search_SETCHK4.checked      <> GS_SEARCH_NEAR_WK 								 then bSaveFlag := True;
	if Search_SETCHK4_2.checked    <> GS_SEARCH_NEAR_WK3SEC 						 then bSaveFlag := True;
	if Search_SETCHK4_1.checked    <> GS_SEARCH_MAP_NEAR_WK 		 				 then bSaveFlag := True;
	if Search_SETCHK6.checked      <> GS_SEARCH_ENDNOSEARCH              then bSaveFlag := True;
	if Search_SETCHK8.Checked      <> GS_SEARCH_POTAL_FIRST              then bSaveFlag := True;
	if Search_SETCHK9.checked      <> GS_SEARCH_NEAR_WK_CAPTION 				 then bSaveFlag := True;
	if Search_SETCHK10.checked     <> GS_SEARCH_NEAR_WKKIND 						 then bSaveFlag := True;
	if Search_SETCHK11.checked     <> GS_SEARCH_NO_POI 									 then bSaveFlag := True;
	if Search_SETCHK12.checked     <> GS_SEARCH_NO_LOCALPOI 						 then bSaveFlag := True;
	if Search_SETCHK13.checked     <> GS_SEARCH_NO_RI 								   then bSaveFlag := True;
	if Search_SETCHK14.checked     <> GS_SEARCH_DEST_DONGSINAME 				 then bSaveFlag := True;
	if Search_SETCHK14_1.checked   <> GS_SEARCH_DEST_DONGNAME_G33 			 then bSaveFlag := True;
	if Search_SETCHK15.checked     <> GS_SEARCH_DEST_NOPOI_FALSE 				 then bSaveFlag := True;
	if Search_SETCHK16.checked     <> GS_SEARCH_POISVR_SPOIUSE           then bSaveFlag := True;
	if Search_SETCHK17.checked     <> GS_SEARCH_POISVR_SGSTUSE           then bSaveFlag := True;
	if Search_SETCHK18.checked     <> GS_SEARCH_POISVR_SGSTERR           then bSaveFlag := True;
	if Search_SETCHK19.checked     <> GS_SEARCH_POISVR_LOCALDP           then bSaveFlag := True;
	if Search_SETCHK21.checked     <> GS_SEARCH_POISVR_DONGV             then bSaveFlag := True;
	if Search_SETCHK22.checked     <> GS_SEARCH_WISE_NAVER_COMPARE       then bSaveFlag := True;
	if Search_SETCHK23.checked     <> GS_SEARCH_CALLMANER_POIUSE         then bSaveFlag := True;
  if cbAuto.Checked              <> GB_PORTAL_AutoChk                  then bSaveFlag := True;

  if ( GS_PORTAL_SEL = 'N' ) And ( rbSelD.Checked ) then bSAveFlag := True;
  if ( GS_PORTAL_SEL = 'D' ) And ( rbSelN.Checked ) then bSAveFlag := True;

	if bSaveFlag then
	begin
		msg := '검색설정 중 변경된 내용이 있습니다.' + #13#10 + '저장하시겠습니까?';

		if Application.MessageBox(PChar(msg), CDMSI,
					MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
		begin
			btnClose4.Click;
			
		end;
		Close;
	end else Close;
	
end;

procedure TFrm_JON30S.btnClose4Click(Sender: TObject);
var bChgCheck1 : Boolean;
	sTmp1, sTmp2 : string;
begin
	try
    if Search_SETCHK1.checked then
    begin
      GS_SEARCH_POTAL := True;
    end else
    begin
      GS_SEARCH_POTAL := False;
    end;

    if Search_SETCHK1_2.checked then GS_SEARCH_POTAL_2ResultOver := True
                                else GS_SEARCH_POTAL_2ResultOver := False;

    if Search_SETCHK1_3.checked then GS_SEARCH_POTAL_SPACEKEY := True
                                else GS_SEARCH_POTAL_SPACEKEY := False;

    if GS_SEARCH_POTAL_2ResultOver then	Frm_JON30.btn_Potal_Search.Visible := True
                                   else Frm_JON30.btn_Potal_Search.Visible := False;

    if Search_SETCHK2.checked then
			GS_SEARCH_AUTO_COMPLETE := True
    else
    begin
			GS_SEARCH_AUTO_COMPLETE := False;
      GS_SEARCH_AUTO_DONGNAME_ADD := False;
      Search_SETCHK2_1.Enabled := False;
      GS_SEARCH_AUTO_DETILEPOI := False;
      Search_SETCHK2_2.Enabled := False;
      GS_SEARCH_AUTO_MAINPOI := False;
      Search_SETCHK2_3.Enabled := False;
      GS_SEARCH_AUTO_NOTUSE := False;
      Search_SETCHK2_4.Enabled := False;
    end;

    if Search_SETCHK2_1.checked then GS_SEARCH_AUTO_DONGNAME_ADD := True
                                else GS_SEARCH_AUTO_DONGNAME_ADD := False;

    if Search_SETCHK2_2.checked then GS_SEARCH_AUTO_DETILEPOI := True
                                else GS_SEARCH_AUTO_DETILEPOI := False;

    if Search_SETCHK2_3.checked then GS_SEARCH_AUTO_MAINPOI := True
                                else GS_SEARCH_AUTO_MAINPOI := False;

    if Search_SETCHK2_4.checked then GS_SEARCH_AUTO_NOTUSE := True
                                else GS_SEARCH_AUTO_NOTUSE := False;

    if Search_SETCHK3.checked then GS_SEARCH_DONGNAME := True
                              else GS_SEARCH_DONGNAME := False;

    if Search_SETCHK4.checked then GS_SEARCH_NEAR_WK := True
                              else GS_SEARCH_NEAR_WK := False;

    if Search_SETCHK4_1.checked then GS_SEARCH_MAP_NEAR_WK := True
                                else GS_SEARCH_MAP_NEAR_WK := False;

		if Search_SETCHK4_2.checked then GS_SEARCH_NEAR_WK3SEC := True     // 인근기사검색 3초 지연검색
																else GS_SEARCH_NEAR_WK3SEC := False;

    if Search_SETCHK6.checked then GS_SEARCH_ENDNOSEARCH := True
															else GS_SEARCH_ENDNOSEARCH := False;

    if Search_SETCHK8.Checked then GS_SEARCH_POTAL_FIRST := True
                              else GS_SEARCH_POTAL_FIRST := False;

    if Search_SETCHK9.checked then GS_SEARCH_NEAR_WK_CAPTION := True
                              else GS_SEARCH_NEAR_WK_CAPTION := False;

    if Search_SETCHK10.checked then GS_SEARCH_NEAR_WKKIND := True
                               else GS_SEARCH_NEAR_WKKIND := False;

    if Search_SETCHK11.checked then GS_SEARCH_NO_POI := True
                               else	GS_SEARCH_NO_POI := False;

    if Search_SETCHK12.checked then GS_SEARCH_NO_LOCALPOI := True                 //  20130704  LYB   LOCALPOI 사용유무추가
															 else	GS_SEARCH_NO_LOCALPOI := False;

		if Search_SETCHK13.checked then GS_SEARCH_NO_RI := True                       //  20130802  LYB   '리'정보 미표시
                               else	GS_SEARCH_NO_RI := False;

		if Search_SETCHK14.checked then GS_SEARCH_DEST_DONGSINAME := True             //  20131022  KHS    도착지 동/시우선검색
															 else	GS_SEARCH_DEST_DONGSINAME := False;

		if Search_SETCHK14_1.checked then GS_SEARCH_DEST_DONGNAME_G33 := True         //  도착지동명 완전일치시 검색 경남연합만 사용(정회귀팀장 요청)
																 else	GS_SEARCH_DEST_DONGNAME_G33 := False;

    if Search_SETCHK15.checked then GS_SEARCH_DEST_NOPOI_FALSE := True            //  20131031  KHS    도착지 POI미검색시 접수/대기안됨
                               else	GS_SEARCH_DEST_NOPOI_FALSE := False;

    if Search_SETCHK16.checked then GS_SEARCH_POISVR_SPOIUSE := True              //  20140306  LYB    검색서버 -SPOI 사용여부
                               else	GS_SEARCH_POISVR_SPOIUSE := False;

    if Search_SETCHK17.checked then GS_SEARCH_POISVR_SGSTUSE := True              //  20140306  LYB    검색서버 자동완성 사용여부
                               else	GS_SEARCH_POISVR_SGSTUSE := False;

    if Search_SETCHK18.checked then GS_SEARCH_POISVR_SGSTERR := True              //  20140306  LYB    검색서버 오타보정 사용여부
                               else	GS_SEARCH_POISVR_SGSTERR := False;

    if Search_SETCHK19.checked then GS_SEARCH_POISVR_LOCALDP := True              //  20150328  LYB    검색서버사용시 로컬POI결과와 서버POI결과 함께보기
                               else	GS_SEARCH_POISVR_LOCALDP := False;

		if Search_SETCHK23.checked then GS_SEARCH_CALLMANER_POIUSE := True           // 콜마너자체 POI 사용안함.
															 else	GS_SEARCH_CALLMANER_POIUSE := False;

		bChgCheck1 := GS_SEARCH_WISE_NAVER_COMPARE;    //병합옵션관련 변경내용 체크
		if Search_SETCHK22.checked then GS_SEARCH_WISE_NAVER_COMPARE := True          //  20171025 KHS //검색서버+네이버 검색결과 True : wise, False : Naver;
															 else	GS_SEARCH_WISE_NAVER_COMPARE := False;

		sTmp1 := ''; sTmp2 := '';
		if GS_SEARCH_WISE_NAVER_COMPARE then
		begin
			Frm_JON30.AdvStringGrid3.visible := False;
			Frm_JON30.AdvStringGrid6.visible := False;
			Frm_JON30.AdvStringGrid9.visible := False;

			Frm_JON30.rbPOI2.Checked := True;
		end	else
		begin
			Frm_JON30.AdvStringGrid3.visible := True;
			Frm_JON30.AdvStringGrid6.visible := True;
			Frm_JON30.AdvStringGrid9.visible := True;

			Frm_JON30.rbPOI1.Checked := True;
		end;

		if (bChgCheck1 <> GS_SEARCH_WISE_NAVER_COMPARE) then
		begin
			Frm_JON30.sPreSearchWord := '';
			gmap_forword := '';
			gKWComp := '';
			Frm_JON30.tmThread.Interval := 90;
			Frm_JON30.tmThread.Enabled := True;
		end;

    if Search_SETCHK21.checked then GS_SEARCH_POISVR_DONGV := True                //  20160425  LYB    주소에 연계동 표시 여부
                               else	GS_SEARCH_POISVR_DONGV := False;

    if RbSelN.Tag = 1 then Exit;
		if rbSelN.Checked then Frm_JON30.pSelect_Portal('N') else
		if rbSelD.Checked then Frm_JON30.pSelect_Portal('D') else
		if rbSelA.Checked then Frm_JON30.pSelect_Portal('A');

    if cbAuto.Checked then GB_PORTAL_AutoChk := True
                      else GB_PORTAL_AutoChk := False;

    GS_EnvFile.WriteBool('SearchSet', 'SEARCH_POTAL'             , GS_SEARCH_POTAL);
    GS_EnvFile.WriteBool('SearchSet', 'SEARCH_POTAL_POI_2ResultOver', GS_SEARCH_POTAL_2ResultOver);
    GS_EnvFile.WriteBool('SearchSet', 'GS_SEARCH_POTAL_SPACEKEY' , GS_SEARCH_POTAL_SPACEKEY);
		GS_EnvFile.WriteBool('SearchSet', 'SEARCH_AUTO_COMPLETE'     , GS_SEARCH_AUTO_COMPLETE);
    GS_EnvFile.WriteBool('SearchSet', 'SEARCH_AUTO_DONGNAME_ADD' , GS_SEARCH_AUTO_DONGNAME_ADD);
    GS_EnvFile.WriteBool('SearchSet', 'SEARCH_AUTO_DETILEPOI'    , GS_SEARCH_AUTO_DETILEPOI);
    GS_EnvFile.WriteBool('SearchSet', 'SEARCH_AUTO_MAINPOI'      , GS_SEARCH_AUTO_MAINPOI);
    GS_EnvFile.WriteBool('SearchSet', 'SEARCH_AUTO_NOTUSE'       , GS_SEARCH_AUTO_NOTUSE);
    GS_EnvFile.WriteBool('SearchSet', 'SEARCH_DONGNAME'          , GS_SEARCH_DONGNAME);
    GS_EnvFile.WriteBool('SearchSet', 'SEARCH_NEAR_WK'           , GS_SEARCH_NEAR_WK);
		GS_EnvFile.WriteBool('SearchSet', 'SEARCH_NEAR_WK3SEC'       , GS_SEARCH_NEAR_WK3SEC); // 인근기사검색 3초 지연검색
    GS_EnvFile.WriteBool('SearchSet', 'SEARCH_MAP_NEAR_WK'       , GS_SEARCH_MAP_NEAR_WK);
    GS_EnvFile.WriteBool('SearchSet', 'SEARCH_ENDNOSEARCH'       , GS_SEARCH_ENDNOSEARCH);
    GS_EnvFile.WriteBool('SearchSet', 'SEARCH_POTAL_FIRST'       , GS_SEARCH_POTAL_FIRST);
    GS_EnvFile.WriteBool('SearchSet', 'SEARCH_NEAR_WK_CAPTION'   , GS_SEARCH_NEAR_WK_CAPTION);
    GS_EnvFile.WriteBool('SearchSet', 'SEARCH_NEAR_WKKIND'       , GS_SEARCH_NEAR_WKKIND);
    GS_EnvFile.WriteBool('SearchSet', 'GS_SEARCH_NO_POI'         , GS_SEARCH_NO_POI);
    GS_EnvFile.WriteBool('SearchSet', 'GS_SEARCH_NO_LOCALPOI'    , GS_SEARCH_NO_LOCALPOI);
    GS_EnvFile.WriteBool('SearchSet', 'GS_SEARCH_NO_RI'          , GS_SEARCH_NO_RI);
		GS_EnvFile.WriteBool('SearchSet', 'SEARCH_DEST_DONGSINAME'   , GS_SEARCH_DEST_DONGSINAME);
		GS_EnvFile.WriteBool('SearchSet', 'SEARCH_DEST_DONGNAME_G33' , GS_SEARCH_DEST_DONGNAME_G33);
		GS_EnvFile.WriteBool('SearchSet', 'SEARCH_DEST_NOPOI_FALSE'  , GS_SEARCH_DEST_NOPOI_FALSE);
    GS_EnvFile.WriteBool('SearchSet', 'GS_SEARCH_POISVR_SPOIUSE' , GS_SEARCH_POISVR_SPOIUSE);
    GS_EnvFile.WriteBool('SearchSet', 'GS_SEARCH_POISVR_SGSTUSE' , GS_SEARCH_POISVR_SGSTUSE);
    GS_EnvFile.WriteBool('SearchSet', 'GS_SEARCH_POISVR_SGSTERR' , GS_SEARCH_POISVR_SGSTERR);
    GS_EnvFile.WriteBool('SearchSet', 'GS_SEARCH_POISVR_LOCALDP' , GS_SEARCH_POISVR_LOCALDP);
		GS_EnvFile.WriteBool('SearchSet', 'GS_SEARCH_WISE_NAVER_COMPARE' , GS_SEARCH_WISE_NAVER_COMPARE);
    GS_EnvFile.WriteBool('SearchSet', 'GS_SEARCH_POISVR_CTRLV'   , GS_SEARCH_POISVR_CTRLV);
    GS_EnvFile.WriteBool('SearchSet', 'GS_SEARCH_POISVR_DONGV'   , GS_SEARCH_POISVR_DONGV);
		GS_EnvFile.WriteBool('SearchSet', 'GS_SEARCH_CALLMANER_POIUSE'   , GS_SEARCH_CALLMANER_POIUSE);

    Close;
  except on e: exception do
    begin
      Log('btnClose4Click Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'btnClose4Click Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30S.BtnCloseClick(Sender: TObject);
begin
	btnClose2.Click;
end;

procedure TFrm_JON30S.btnGetListClick(Sender: TObject);
begin
  pGetComponentListJON30S;
end;

procedure TFrm_JON30S.BtnPoiAClick(Sender: TObject);
begin
  try
    if GT_USERIF.LV = '10' then
    begin
      GMessagebox('추가권한이 없습니다.', CDMSE);
      Exit;
    end;

    EdPOINm.Hint := '';
    EdPOINm.Clear;
    EdPOICNm.Clear;
    gbPOIMng.Caption := ' 등록';
    BtnPOIU.Caption := '저 장';

    gbPOIMng.Left := (cxGroupBox2.Width - gbPOIMng.Width) div 2;
    gbPOIMng.top := (cxGroupBox2.Height - gbPOIMng.Height) div 2;
    gbPOIMng.Visible := True;
    EdPOINm.SetFocus;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30S.BtnPOIDClick(Sender: TObject);
Var Param, XmlData, ErrMsg, sSEQ : String;
    ErrCode : Integer;
begin
  SetDebugeWrite('Frm_JON30.BtnPOIDClick');
  if GMessagebox('삭제하시겠습니까?', CDMSQ) <> idok then Exit;

  sSEQ := Trim(EdPOINm.Hint);
  Param := 'DELETE';
  try
    Param := Param + '│' + GT_USERIF.BR;
    Param := Param + '│' + Trim(EdPOINm.Text)+ '│' + Trim(EdPOICNm.Text)+ '│' + sSEQ;

    if not RequestBase(GetCallable05('SET_POI_NAME', 'MNG_ORDER.SET_POI_NAME', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;
    GMessagebox('삭제되었습니다.', CDMSI);
    proc_Get_POIChNmList;
    gbPOIMng.Visible := False;
  except
    ShowMessage('삭제 중 오류 발생');
  end;
end;

procedure TFrm_JON30S.BtnPOIEClick(Sender: TObject);
begin
  gbPOIMng.Visible := False;
end;

procedure TFrm_JON30S.BtnPoiSchCClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_JON30S.BtnPoiSchClick(Sender: TObject);
begin
  proc_Get_POIChNmList;
end;

procedure TFrm_JON30S.BtnPOIUClick(Sender: TObject);
Var Param, XmlData, ErrMsg, sSEQ : String;
    idx, ErrCode : Integer;
begin
  SetDebugeWrite('Frm_JON30.BtnApiUClick');
  if Trim(EdPOINm.Text) = '' then
  begin
    GMessagebox('POI명을 입력하십시오.', CDMSE);
    EdPOINm.SetFocus;
    Exit;
  end;

  if Trim(EdPOICNm.Text) = '' then
  begin
    GMessagebox('POI치환명을 입력하십시오.', CDMSE);
    EdPOICNm.SetFocus;
    Exit;
  end;

  sSEQ := Trim(EdPOINm.Hint);

  if sSEQ = '' then
  begin
    idx := cxViewPOICNm.DataController.FindRecordIndexByText(0, 1, Trim(EdPOINm.Text), True, True, True);
    if idx >= 0 then
    begin
      GMessagebox('저장된 POI명입니다.', CDMSE);
      Exit;
    end;
  end;

  Param := '';

  try
    if sSEQ = '' then Param := 'INSERT'            // 저장타입 (0: 추가, 1: 수정)
                 else Param := 'UPDATE';

    Param := Param + '│' + GT_USERIF.BR;
    Param := Param + '│' + Trim(EdPOINm.Text)+ '│' + Trim(EdPOICNm.Text)+ '│' + sSEQ;

    if not RequestBase(GetCallable05('SET_POI_NAME', 'MNG_ORDER.SET_POI_NAME', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;
    GMessagebox('저장되었습니다.', CDMSI);
    proc_Get_POIChNmList;
    gbPOIMng.Visible := False;
  except
    GMessagebox('저장 중 오류 발생', CDMSE);
  end;
end;

procedure TFrm_JON30S.cbPOICngYnClick(Sender: TObject);
Var Param, XmlData, ErrMsg : String;
    ErrCode : Integer;
begin
  if cbPOICngYn.Tag <> 0 then Exit;

  SetDebugeWrite('Frm_JON30.cbPOICngYnClick');

  if GT_USERIF.LV = '10' then
  begin
    GMessagebox('수정권한이 없습니다.', CDMSE);
    Exit;
  end;

  try
    Param := GT_USERIF.BR;
    if cbPOICngYn.Checked then Param := Param + '│y'
                          else Param := Param + '│n';

    if not RequestBase(GetCallable05('SET_POI_NAME_YN', 'MNG_ORDER.SET_POI_NAME_YN', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;
    GMessagebox('수정되었습니다.', CDMSI);
    proc_Get_POIChNmList;
  except
    ShowMessage('수정 중 오류 발생');
  end;
end;

procedure TFrm_JON30S.chkUseMiniMapClick(Sender: TObject);
begin
	try
    GS_MAP_AREA_AUTOSHOW := TcxCheckBox(Sender).Checked;
		GS_EnvFile.WriteBool('AcceptMap', 'AreaAutoShow', GS_MAP_AREA_AUTOSHOW);

    Frm_JON30.chkUseMiniMap.Checked := GS_MAP_AREA_AUTOSHOW;
    Frm_JON30.chkUseMiniMapClick(Frm_JON30.chkUseMiniMap);

    if chkUseMiniMap.Checked then
    begin
			Search_SETCHK4.Enabled := True;
			Search_SETCHK4_1.Enabled := True;
			Search_SETCHK4_2.Enabled := Search_SETCHK4.checked;     // 인근기사검색 3초 지연검색
      Search_SETCHK9.Enabled := True;
			Search_SETCHK10.Enabled := True;
		end else
    begin
			Search_SETCHK4.Enabled := False;
			Search_SETCHK4.Checked := False;

			Search_SETCHK4_1.Enabled := False;
			Search_SETCHK4_1.Checked := False;
			Search_SETCHK4_2.Enabled := False;
			Search_SETCHK4_2.Checked := False;

			Search_SETCHK9.Enabled := False;
			Search_SETCHK9.Checked := False;

			Search_SETCHK10.Enabled := False;
			Search_SETCHK10.Checked := False;
    end;
  except on E: Exception do
		Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30S.chk_DAPIKeyPropertiesChange(Sender: TObject);
begin
	GS_DAPIKeyUSE := chk_DAPIKey.Checked;
	GS_EnvFile.WriteBool('SearchSet', 'SEARCH_DAPIKeyUSE', GS_DAPIKeyUSE);

  Frm_JON30.chkUseAPIKey.Checked := GS_DAPIKeyUSE;
end;

procedure TFrm_JON30S.cxBtnSetAClick(Sender: TObject);
begin
	if ( Not Assigned(Frm_SETA1) ) Or ( Frm_SETA1 = Nil ) then Frm_SETA1 := TFrm_SETA1.Create(Nil);
	Frm_SETA1.Show;
	Frm_SETA1.SetTreeSelItem(213);
end;

procedure TFrm_JON30S.cxButton1Click(Sender: TObject);
  procedure pSetBaseCNm( ANo, AName, ARName : String );
  Var iRow : Integer;
  begin
  	iRow := cxViewPOIBaseCNm.DataController.AppendRecord;
  	cxViewPOIBaseCNm.DataController.Values[iRow, 0] := ANo;
  	cxViewPOIBaseCNm.DataController.Values[iRow, 1] := AName;
		cxViewPOIBaseCNm.DataController.Values[iRow, 2] := ARName;
  end;
begin
  cxGrpPOIBase.Visible := True;
  cxGrpPOIBase.Top := 105;
  cxGrpPOIBase.Left := 9;

  cxViewPOIBaseCNm.DataController.SetRecordCount(0);

  cxViewPOIBaseCNm.BeginUpdate;
  pSetBaseCNm('1' , '아파트'  , '@');
  pSetBaseCNm('2' , '삼거리'  , '3');
  pSetBaseCNm('3' , '사거리'  , '4');
  pSetBaseCNm('4' , '호텔'    , 'H');
  pSetBaseCNm('5' , '주차장'  , 'P');
  pSetBaseCNm('6' , '빌딩'    , 'B');
  pSetBaseCNm('7' , '나이트'  , 'N');

  pSetBaseCNm('8' , '1번출구' , '1출');
  pSetBaseCNm('9' , '2번출구' , '2출');
  pSetBaseCNm('10', '3번출구' , '3출');
  pSetBaseCNm('11', '4번출구' , '4출');
  pSetBaseCNm('12', '5번출구' , '5출');
  pSetBaseCNm('13', '6번출구' , '6출');
  pSetBaseCNm('14', '7번출구' , '7출');
  pSetBaseCNm('15', '8번출구' , '8출');
  pSetBaseCNm('16', '9번출구' , '9출');
  pSetBaseCNm('17', '10번출구', '10출');
  pSetBaseCNm('18', '11번출구', '11출');
  pSetBaseCNm('19', '12번출구', '12출');

  cxViewPOIBaseCNm.EndUpdate;
end;

procedure TFrm_JON30S.cxButton2Click(Sender: TObject);
Var Param, XmlData, ErrMsg : String;
    i, idx, ErrCode : Integer;
begin
  SetDebugeWrite('Frm_JON30S.BtnApiUClick');
  try
    for i := 0 to cxViewPOIBaseCNm.DataController.RecordCount - 1 do
    begin
      idx := cxViewPOICNm.DataController.FindRecordIndexByText(0, 1, Trim(cxViewPOIBaseCNm.DataController.Values[i, 01]), True, True, True);
      if idx >= 0 then Continue;

      Param := 'INSERT';            // 저장타입 (0: 추가, 1: 수정)
      Param := Param + '│' + GT_USERIF.BR;
      Param := Param + '│' + Trim(cxViewPOIBaseCNm.DataController.Values[i, 01])+ '│' +
                             Trim(cxViewPOIBaseCNm.DataController.Values[i, 02])+ '│';
      if not RequestBase(GetCallable05('SET_POI_NAME', 'MNG_ORDER.SET_POI_NAME', Param), XmlData, ErrCode, ErrMsg) then
      begin
        GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
        Exit;
      end;
    end;
    GMessagebox('저장되었습니다.', CDMSI);
    proc_Get_POIChNmList;
    cxGrpPOIBase.Visible := False;
  except
    GMessagebox('저장 중 오류 발생', CDMSE);
  end;
end;

procedure TFrm_JON30S.cxButton3Click(Sender: TObject);
begin
  cxGrpPOIBase.Visible := False;
end;

procedure TFrm_JON30S.cxButton77Click(Sender: TObject);
begin
  PnlNaverAPIMng.Visible := False;
end;

procedure TFrm_JON30S.cxButton8Click(Sender: TObject);
begin
  PnlNaverAPINMng.Visible := False;
end;

procedure TFrm_JON30S.cxViewDaumAPICellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
Var iRow : Integer;
begin
  SetDebugeWrite('Frm_JON30S.cxViewNaverAPICellDblClick');
  if cxViewDaumAPI.DataController.RecordCount = 0 then  Exit;

  iRow := cxViewDaumAPI.DataController.FocusedRecordIndex;

  Edt_Init_DaumAPI;

  EdNId.Text   := cxViewDaumAPI.DataController.Values[iRow, 01];
  EdNNm.Text   := cxViewDaumAPI.DataController.Values[iRow, 03];
  EdNKey.Text  := cxViewDaumAPI.DataController.Values[iRow, 02];
  cxMemo1.Text := cxViewDaumAPI.DataController.Values[iRow, 04];
  if cxViewDaumAPI.DataController.Values[iRow, 05] = '사용' then RBY.Checked := True
                                                             else RBN.Checked := True;
  EdNId.Hint := cxViewDaumAPI.DataController.Values[iRow, 08];

  BtnApiTest.Enabled := False;
  PnlNaverAPIMng.Caption := ' 수정';
  BtnApiU.Caption := '수 정';

  PnlNaverAPIMng.Left := (cxgrpOld.Width - PnlNaverAPIMng.Width) div 2;
  PnlNaverAPIMng.top := (cxgrpOld.Height - PnlNaverAPIMng.Height) div 2;
  PnlNaverAPIMng.Visible := True;
end;

procedure TFrm_JON30S.cxViewNaverAPICellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
Var iRow : Integer;
begin
  SetDebugeWrite('Frm_JON30S.cxViewNaverAPICellDblClick');
  if cxViewNaverAPI.DataController.RecordCount = 0 then  Exit;

  iRow := cxViewNaverAPI.DataController.FocusedRecordIndex;

  Edt_Init_DaumAPI;

  EdNNId.Text   := cxViewNaverAPI.DataController.Values[iRow, 02];
  EdNNPw.Text   := cxViewNaverAPI.DataController.Values[iRow, 03];
//  EdNKey.Text  := cxViewNaverAPINew.DataController.Values[iRow, 01];
  cxMemo2.Text := cxViewNaverAPI.DataController.Values[iRow, 04];
  if cxViewNaverAPI.DataController.Values[iRow, 05] = '사용' then RBNY.Checked := True
                                                             else RBNN.Checked := True;
  EdNNId.Hint := cxViewNaverAPI.DataController.Values[iRow, 08];

  BtnApiNTest.Enabled := False;
  PnlNaverAPINMng.Caption := ' 수정';
  BtnApiNU.Caption := '수 정';

  PnlNaverAPINMng.Left := (cxgrpNew.Width - PnlNaverAPINMng.Width) div 2;
  PnlNaverAPINMng.top := (cxgrpNew.Height - PnlNaverAPINMng.Height) div 2;
  PnlNaverAPINMng.Visible := True;
end;

procedure TFrm_JON30S.cxViewPOICNmCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
Var iRow : Integer;
begin
  SetDebugeWrite('Frm_JON30S.cxViewPOICNmCellDblClick');
  if GT_USERIF.LV = '10' then
  begin
    GMessagebox('수정권한이 없습니다.', CDMSE);
    Exit;
  end;

  if cxViewPOICNm.DataController.RecordCount = 0 then  Exit;

  iRow := cxViewPOICNm.DataController.FocusedRecordIndex;

  EdPOINm.Text  := cxViewPOICNm.DataController.Values[iRow, 01];
  EdPOICNm.Text := cxViewPOICNm.DataController.Values[iRow, 02];
  EdPOINm.Hint  := cxViewPOICNm.DataController.Values[iRow, 03];

  gbPOIMng.Caption := ' 수정';
  BtnPOIU.Caption := '수 정';

  gbPOIMng.Left := (cxGroupBox2.Width - gbPOIMng.Width) div 2;
  gbPOIMng.top := (cxGroupBox2.Height - gbPOIMng.Height) div 2;
  gbPOIMng.Visible := True;
end;

procedure TFrm_JON30S.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON30S.FormClose(Sender: TObject; var Action: TCloseAction);
var
  EnvFile: TIniFile;
begin
  EnvFile := TIniFile.Create(ENVPATHFILE);
  try
    EnvFile.WriteInteger('WinPos', 'JON30SLeft', Self.Left);
    EnvFile.WriteInteger('WinPos', 'JON30STop' , Self.Top );
  finally
    EnvFile.Free;
  end;
  Action := caFree;
end;

procedure TFrm_JON30S.FormCreate(Sender: TObject);
var i : integer;
    Save: LongInt; // 폼타이틀 제거용.
    EnvFile: TIniFile;
begin
	try
    //====================================================
    // 폼 타이틀 제거..
    Save := GetWindowLong(Handle,  GWL_STYLE);
    if (Save and ws_Caption) = ws_Caption then
    begin
      case BorderStyle of
        bsSingle, bsSizeable:
          SetWindowLong(Handle, GWL_STYLE, Save and (not (WS_CAPTION)) or WS_BORDER);
      end;
      Height := Height - getSystemMetrics(SM_CYCAPTION);
      Self.Refresh;
    end;
  except
    on e: exception do
    begin
      Log('CreateObj Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'CreateObj Error :' + E.Message);
    end;
  end;

  if GT_USERIF.ID = 'sntest' then btnGetList.Visible := True;

  cxBtnSetA.Caption := '검색서버지역설정' + #13#10 + '(바로가기)';

  EnvFile := TIniFile.Create(ENVPATHFILE);
  try
    Self.Left  := EnvFile.ReadInteger('WinPos', 'JON30SLeft', 0);
    Self.Top   := EnvFile.ReadInteger('WinPos', 'JON30STop', 0);

    if Self.Left < 0 then Self.Left := 0;
    if Self.Top < 0 then Self.Top := 0;
  finally
    EnvFile.Free;
  end;

	try
  	for i := 0 to cxViewDaumAPI.ColumnCount - 1 do
  	begin
  		cxViewDaumAPI.Columns[i].DataBinding.ValueType := 'String';
  	end;

  	for i := 0 to cxViewNaverAPI.ColumnCount - 1 do
  	begin
  		cxViewNaverAPI.Columns[i].DataBinding.ValueType := 'String';
  	end;

  	for i := 0 to cxViewPOICNm.ColumnCount - 1 do
  	begin
  		cxViewPOICNm.Columns[i].DataBinding.ValueType := 'String';
  	end;

  	for i := 0 to cxViewPOIBaseCNm.ColumnCount - 1 do
  	begin
  		cxViewPOIBaseCNm.Columns[i].DataBinding.ValueType := 'String';
  	end;

    cxPageControl1.ActivePageIndex := 0;

		chkUseMiniMap.Checked := GS_MAP_AREA_AUTOSHOW;
    chkUseMiniMapClick(chkUseMiniMap);

  	Search_SETCHK1.Checked := GS_SEARCH_POTAL;
  	Search_SETCHK1_2.Checked := GS_SEARCH_POTAL_2ResultOver;
  	Search_SETCHK1_3.Checked := GS_SEARCH_POTAL_SPACEKEY;

    Search_SETCHK1Click(Search_SETCHK1);

		Search_SETCHK2.Checked := GS_SEARCH_AUTO_COMPLETE;
    Search_SETCHK2Click(Search_SETCHK2);

    Search_SETCHK2_1.Checked := GS_SEARCH_AUTO_DONGNAME_ADD;
    Search_SETCHK2_4.Checked := GS_SEARCH_AUTO_NOTUSE;
    Search_SETCHK2_2.Checked := GS_SEARCH_AUTO_DETILEPOI;
  	Search_SETCHK2_3.Checked := GS_SEARCH_AUTO_MAINPOI;
    Search_SETCHK3.Checked := GS_SEARCH_DONGNAME;
		Search_SETCHK4.Checked := GS_SEARCH_NEAR_WK;
		Search_SETCHK4_1.Checked := GS_SEARCH_MAP_NEAR_WK;
		Search_SETCHK4_2.checked := GS_SEARCH_NEAR_WK3SEC;     // 인근기사검색 3초 지연검색
		Search_SETCHK4_2.enabled := Search_SETCHK4.checked;

  	Search_SETCHK6.Checked := GS_SEARCH_ENDNOSEARCH;
  	Search_SETCHK8.Checked := GS_SEARCH_POTAL_FIRST;
  	Search_SETCHK9.Checked := GS_SEARCH_NEAR_WK_CAPTION;
  	Search_SETCHK10.checked := GS_SEARCH_NEAR_WKKIND;
  	Search_SETCHK11.checked := GS_SEARCH_NO_POI;
  	Search_SETCHK12.checked := GS_SEARCH_NO_LOCALPOI;      //  20130704  LYB   LOCALPOI 사용유무추가
  	Search_SETCHK13.checked := GS_SEARCH_NO_RI;
		Search_SETCHK14.checked := GS_SEARCH_DEST_DONGSINAME;
		Search_SETCHK14_1.checked := GS_SEARCH_DEST_DONGNAME_G33;
  	Search_SETCHK15.checked := GS_SEARCH_DEST_NOPOI_FALSE;
  	Search_SETCHK16.checked := GS_SEARCH_POISVR_SPOIUSE;
  	Search_SETCHK17.checked := GS_SEARCH_POISVR_SGSTUSE;
  	Search_SETCHK18.checked := GS_SEARCH_POISVR_SGSTERR;
  	Search_SETCHK19.checked := GS_SEARCH_POISVR_LOCALDP;
   	Search_SETCHK21.checked := GS_SEARCH_POISVR_DONGV;
		Search_SETCHK22.checked := GS_SEARCH_WISE_NAVER_COMPARE;
		Search_SETCHK23.checked := GS_SEARCH_CALLMANER_POIUSE;
	except
    on e: exception do
    begin
      Log('FormCreate Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'FormCreate Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30S.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON30S.FormDestroy(Sender: TObject);
begin
  Frm_JON30S := Nil;
end;

procedure TFrm_JON30S.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON30S, GS_FONTNAME);
  fSetSkin(Frm_JON30S);

	if ( GS_FormSSYN = 'y' ) And ( GS_FormSSET = 'y') then chkUseMiniMap.Enabled := False
                                                    else chkUseMiniMap.Enabled := True;

  rbSelN.Tag := 1;
  if GS_PORTAL_SEL = 'N' then rbSelN.Checked := True else
	if GS_PORTAL_SEL = 'D' then rbSelD.Checked := True else
	if GS_PORTAL_SEL = 'A' then rbSelA.Checked := True;
	rbSelN.Tag := 0;

  if GB_PORTAL_AutoChk then cbAuto.Checked := True
                       else cbAuto.Checked := False;

	if GT_USERIF.LV = '60' then
  begin
		cxPageControl1.Pages[0].TabVisible := True;
		if GS_NAVER_APIUse = 'y' then
		begin
			cxPageControl1.Pages[1].TabVisible := True;
			chk_DAPIKey.Checked := GS_DAPIKeyUSE;

      // 서울,경기,인천 지역은 다음POI검색시 기준위치와 상관없으므로 API키 사용안함으로 검색 2021.08.10
      // API키 사용안함일 경우 검색이 잘됨(주소및상호)
      if (slstLocalMapOrder[0] = '서울') Or (slstLocalMapOrder[0] = '경기') Or (slstLocalMapOrder[0] = '인천') then
      begin
        GS_DAPIKeyUSE := False;
        chk_DAPIKey.Enabled := GS_DAPIKeyUSE;
        chk_DAPIKey.Checked := GS_DAPIKeyUSE;
      end else
        chk_DAPIKey.Enabled := True;
		end else
		begin
			cxPageControl1.Pages[1].TabVisible := False;
			chk_DAPIKey.Checked := False;
		end;

		cxTabSheet1.TabVisible := True;
		if GS_NAVER_APIUse = 'y' then
			cxTabSheet2.TabVisible := True
		else
			cxTabSheet2.TabVisible := False;
	end else
	begin
		cxPageControl1.Pages[0].TabVisible := True;
    cxPageControl1.Pages[1].TabVisible := False;

		cxTabSheet1.TabVisible := True;
		cxTabSheet2.TabVisible := False;
	end;

	if ((GS_PRJ_AREA = 'O') and (GT_USERIF.ShareNo = 'G33')) or (GT_USERIF.BR = 'B100') then
	begin
		Search_SETCHK14_1.visible := True;
	end	else
	begin
		GS_SEARCH_DEST_DONGNAME_G33 := False;
		Search_SETCHK14_1.visible := False;
	end;

	proc_Get_POIChNmList;
end;

procedure TFrm_JON30S.Search_SETCHK14PropertiesChange(Sender: TObject);
begin
	if Search_SETCHK14.Checked then Search_SETCHK14_1.checked := False;
end;

procedure TFrm_JON30S.Search_SETCHK14_1PropertiesChange(Sender: TObject);
begin
	if Search_SETCHK14_1.Checked then Search_SETCHK14.checked := False;
end;

procedure TFrm_JON30S.Search_SETCHK1Click(Sender: TObject);
begin
  if Search_SETCHK1.Checked then
  begin
    Search_SETCHK1_2.Enabled := True;
    Search_SETCHK1_3.Enabled := True;
    Search_SETCHK8.Enabled := True;
		Search_SETCHK11.Enabled := True;

		rbSelN.Enabled := True;
    rbSelD.Enabled := True;
		rbSelA.Enabled := True;

    cbAuto.Enabled := True;
  end else
  begin
    Search_SETCHK1_2.Enabled := False;
    Search_SETCHK1_2.Checked := False;

    Search_SETCHK1_3.Enabled := False;
    Search_SETCHK1_3.Checked := False;

    Search_SETCHK8.Enabled := False;
    Search_SETCHK8.Checked := False;

    Search_SETCHK11.Enabled := False;
    Search_SETCHK11.Checked := False;

    rbSelN.Enabled := False;
    rbSelD.Enabled := False;
		rbSelA.Enabled := False;

		cbAuto.Enabled := False;
	end;
end;

procedure TFrm_JON30S.Search_SETCHK1_2Click(Sender: TObject);
begin
	if Search_SETCHK1_2.checked then Search_SETCHK1_3.checked := False;
end;

procedure TFrm_JON30S.Search_SETCHK1_3Click(Sender: TObject);
begin
	if Search_SETCHK1_3.checked then Search_SETCHK1_2.checked := False;  
end;

procedure TFrm_JON30S.Search_SETCHK23PropertiesChange(Sender: TObject);
begin
	if Search_SETCHK23.checked then
	begin
//		Search_SETCHK19.checked := False; //곻통POI 와 사용자POI 병합 체크 False
		Search_SETCHK12.checked := False; //사용자POI 검색 안함 체크 False;
  end;
end;

procedure TFrm_JON30S.Search_SETCHK2Click(Sender: TObject);
begin
  if Search_SETCHK2.Checked then
  begin
    Search_SETCHK2_1.Enabled := True;
		Search_SETCHK2_2.Enabled := True;
		Search_SETCHK2_3.Enabled := True;
		Search_SETCHK2_4.Enabled := True;
  end else
  begin
    Search_SETCHK2_1.Enabled := False;
    Search_SETCHK2_1.Checked := False;
    Search_SETCHK2_2.Enabled := False;
    Search_SETCHK2_2.Checked := False;
    Search_SETCHK2_3.Enabled := False;
    Search_SETCHK2_3.Checked := False;
    Search_SETCHK2_4.Enabled := False;
		Search_SETCHK2_4.Checked := False;
  end;
end;

procedure TFrm_JON30S.Search_SETCHK4Click(Sender: TObject);
begin
	Search_SETCHK4_2.enabled := Search_SETCHK4.checked;
	if not Search_SETCHK4.checked then Search_SETCHK4_2.checked := False;
end;

procedure TFrm_JON30S.proc_Get_POIChNmList;
var
	XmlData, Param, ErrMsg : string;
	xdom: msDomDocument;
	lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd : TStringList;
	i, ErrCode, iRow : Integer;
begin
  SetDebugeWrite('Frm_JON30S.proc_Get_POIChNmList');
  cxViewPOICNm.DataController.SetRecordCount(0);
	try
		Param := '';
   	Param := Param +  GT_USERIF.BR;

		if not RequestBase(GetSel05('GET_POI_NAME_SEARCH', 'MNG_ORDER.GET_POI_NAME_SEARCH', '1000', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('검색 POI 치환 리스트 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Exit;
		end;

		xdom := ComsDomDocument.Create;
		xdom.loadXML(XmlData);
    try
		  lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');

		  if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
		  begin
		  	lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

        GS_POIAName.Clear;
        GS_POIRName.Clear;
		  	ls_Rcrd := TStringList.Create;
		  	cxViewPOICNm.BeginUpdate;
		  	try
		  		for I := 0 to lst_Result.length - 1 do
		  		begin
		  			GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
		  			iRow := cxViewPOICNm.DataController.AppendRecord;
		  			cxViewPOICNm.DataController.Values[iRow, 0] := IntToStr(i+1);
		  			cxViewPOICNm.DataController.Values[iRow, 1] := ls_Rcrd[1];
		  			cxViewPOICNm.DataController.Values[iRow, 2] := ls_Rcrd[2];
		  			cxViewPOICNm.DataController.Values[iRow, 3] := ls_Rcrd[0];

            cbPOICngYn.Tag := 10;
            if ls_Rcrd[3] = 'y' then
            begin
              cbPOICngYn.Checked := True;
              GS_POIAName.Add(ls_Rcrd[1]);
              GS_POIRName.Add(ls_Rcrd[2]);
            end else
            if ls_Rcrd[3] = 'n' then
            begin
               cbPOICngYn.Checked := False;
            end;
            cbPOICngYn.Tag := 0;
		  		end;
		  	finally
		  		cxViewPOICNm.EndUpdate;
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

procedure TFrm_JON30S.BtnApiTestClick(Sender: TObject);
Var IdHTTPDaumAPI : TIdHTTP;
    sApiKey, sHttp, wURL : String;
begin
  SetDebugeWrite('Frm_JON30S.BtnApiTestClick');
  try
    if Trim(EdNKey.Text) = '' then
    begin
      GMessagebox('검색 API Key를 입력하세요', CDMSE);
      EdNKey.SetFocus;
      Exit;
    end;

    sApiKey := Trim(EdNKey.Text);

    wURL := '';
    sHttp := 'https://dapi.kakao.com/v2/local/search/keyword.json?y=37.514322572335935&x=127.06283102249932&query='+UrlEncode(UTF8Encode(trim('이마트')));

    try
      IdHTTPDaumAPI := TIdHttp.Create(nil);
      IdHTTPDaumAPI.ConnectTimeout := 3 * 1000;
      IdHTTPDaumAPI.ReadTimeout := 3 * 1000;
      IdHTTPDaumAPI.Request.CustomHeaders.Values['Authorization'] := 'KakaoAK ' + sApiKey; // 인증형식 ' KakaoAK ' + APIKey

      try
        wURL := IdHTTPDaumAPI.Get(sHttp);
      except on E: Exception do
        begin
          wURL := '';
          GMessagebox('등록되지 않은 키입니다', CDMSE);
          Exit;
        end;
      end;
    finally
      IdHTTPDaumAPI.Free;
    end;

    if Pos('documents', wURL) > 0 then
    begin
      if fGetAPIKeyCheck(Trim(EdNKey.Text)) then Exit;

      GMessagebox('사용 가능 한 키입니다', CDMSE);
      BtnApiTest.Enabled := False;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30S.BtnApiUClick(Sender: TObject);
Var Param, XmlData, ErrMsg, sSEQ : String;
    ErrCode : Integer;
begin
  SetDebugeWrite('Frm_JON30S.BtnApiUClick');
  if Trim(EdNKey.Text) = '' then
  begin
    GMessagebox('검색 API Key를 입력하십시오.', CDMSE);
    EdNKey.SetFocus;
    Exit;
  end;

  if BtnApiTest.Enabled then
  begin
    GMessagebox('API키 확인 버튼을 클릭하십시오.', CDMSE);
    EdNKey.SetFocus;
    Exit;
  end;

  sSEQ := Trim(EdNId.Hint);
  Param := '';

  try
    if sSEQ = '' then Param := '0'            // 저장타입 (0: 추가, 1: 수정)
                 else Param := '1';

    Param := Param + '│^' + Trim(EdNKey.Text);

    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 본사코드, 지사코드
      Param := Param + '│' + GT_SEL_BRNO.HDNO + '│' + GT_SEL_BRNO.BRNO
    else
      Param := Param + '│' + GT_USERIF.HD + '│' + GT_USERIF.BR;

    Param := Param + '│' + Trim(EdNId.Text)+ '│' + Trim(EdNNm.Text)+ '│' + Trim(cxMemo1.Text);

    if RBY.Checked then Param := Param + '│' + '1' else
    if RBN.Checked then Param := Param + '│' + '2';

    Param := Param + '│' + sSEQ;

    if not RequestBase(GetCallable05('SET_NAVER', 'MNG_NAVER.SET_NAVER', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;
    GMessagebox('저장되었습니다.', CDMSI);

    proc_Get_DAUMAPIKeyList;

    PnlNaverAPIMng.Visible := False;
  except
    GMessagebox('저장 중 오류 발생', CDMSE);
  end;
end;

end.

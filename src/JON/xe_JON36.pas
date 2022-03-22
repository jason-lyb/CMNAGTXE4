unit xe_JON36;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, MSHTML, System.JSON, MSXML2_TLB,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2010Silver, dxSkinSharp, cxLabel, cxTextEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.OleCtrls, SHDocVw, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, dxSkinMetropolisDark,
  dxSkinOffice2007Silver;

type
  TFrm_JON36 = class(TForm)
    edtEmail: TcxTextEdit;
    cxLabel1: TcxLabel;
    btnSendMail: TcxButton;
    btnClose: TcxButton;
    WebBrowser1: TWebBrowser;
    procedure WebBrowser1DocumentComplete(ASender: TObject; const pDisp: IDispatch; const URL: OleVariant);
    procedure btnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSendMailClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function IsValidEmail(const Value: string): boolean;
    function pGetEMail(sCuSeq: String): String;
    { Private declarations }
  public
    { Public declarations }
    FTid, FEmail, FTAmt, FCuSeq : String;
  end;

var
  Frm_JON36: TFrm_JON36;

implementation

{$R *.dfm}

uses xe_Func, xe_Msg, xe_xml, xe_Query, xe_GNL, xe_Dm;

procedure TFrm_JON36.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_JON36.btnSendMailClick(Sender: TObject);
Var sUrl : String;
begin
  if Not IsValidEmail(edtEmail.Text) then
  begin
		GMessagebox('이메일 형식을 확인하세요.', CDMSE);
		edtEmail.SetFocus;
		Exit;
  end;

//  FTid := 'CMNP00000m01162008311510490857';
  sUrl := Format('https://npg.nicepay.co.kr/issue/IssueLoader.do?TID=%s&type=0', [FTid]);
  WebBrowser1.Silent;
  WebBrowser1.Navigate(sUrl);
end;

procedure TFrm_JON36.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_JON36.FormCreate(Sender: TObject);
var Save: LongInt; // 폼타이틀 제거용.
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
  end;

  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);
end;

procedure TFrm_JON36.FormDestroy(Sender: TObject);
begin
  Frm_JON36 := Nil;
end;

procedure TFrm_JON36.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON36, GS_FONTNAME);
  fSetSkin(Frm_JON36);
  edtEmail.Text := pGetEMail(FCuSeq);
end;

procedure TFrm_JON36.WebBrowser1DocumentComplete(ASender: TObject; const pDisp: IDispatch; const URL: OleVariant);
var
  el, el1, el2 : IHTMLElement;

  idHttp : TIdHTTP;
  LHandler: TIdSSLIOHandlerSocketOpenSSL;

  Param1, Param2, Param3, Param4, Param5, Param6, Param7, Param8, Param9, Param10,
  Param11, Param12, Param13, Param14, Param15, Param16, Param17, Param18, Param19, Param20,
  Param21 : String;

  Requesthash, RequestBody: TStream;
  sUrl, sSource, sResult, sHash : String;
  jObj : TJSONObject;
begin
  if WebBrowser1.Application = pDisp then
  begin
    if Text <> 'Level2' then
    begin
      el := (WebBrowser1.Document as IHTMLDocument3).getElementById('ordNm');
      if Assigned(el) then
           el.setAttribute('value', '대리운전', 0);

      el1 := (WebBrowser1.Document as IHTMLDocument3).getElementById('appAmt');
      if Assigned(el1) then
           el1.setAttribute('value', FTAmt, 0);

      if (Assigned(el)) And (Assigned(el1)) then
      begin
        Text := 'Level2';
        ExecuteJavaScript(WebBrowser1,'showCardIssue();')
      end;
    end else
    begin
      Text := 'Level3';

      el2 := (WebBrowser1.Document as IHTMLDocument3).getElementById('email_addr');
      if Assigned(el2) then
      begin
        Param1  := ExecuteJavaScriptGetNameValue(WebBrowser1, 'TID');
        Param2  := ExecuteJavaScriptGetNameValue(WebBrowser1, 'ord_nm');
        Param3  := ExecuteJavaScriptGetNameValue(WebBrowser1, 'app_dt');
        Param4  := ExecuteJavaScriptGetNameValue(WebBrowser1, 'app_tm');
        Param5  := ExecuteJavaScriptGetNameValue(WebBrowser1, 'goods_nm');
        Param6  := ExecuteJavaScriptGetNameValue(WebBrowser1, 'goods_amt');
        Param7  := ExecuteJavaScriptGetNameValue(WebBrowser1, 'co_nm');
        Param8  := ExecuteJavaScriptGetNameValue(WebBrowser1, 'tel_no');
        Param9  := ExecuteJavaScriptGetNameValue(WebBrowser1, 'app_no');
        Param10 := ExecuteJavaScriptGetNameValue(WebBrowser1, 'instmnt_mon');
        Param11 := ExecuteJavaScriptGetNameValue(WebBrowser1, 'moid');
        Param12 := ExecuteJavaScriptGetNameValue(WebBrowser1, 'mailk');
        Param13 := ExecuteJavaScriptGetNameValue(WebBrowser1, 'bank_nm');
        Param14 := ExecuteJavaScriptGetNameValue(WebBrowser1, 'accnt_no');
        Param15 := ExecuteJavaScriptGetNameValue(WebBrowser1, 'vacct_no');
        Param16 := ExecuteJavaScriptGetNameValue(WebBrowser1, 'cp_no');
        Param17 := ExecuteJavaScriptGetNameValue(WebBrowser1, 'fn_nm');
        Param18 := ExecuteJavaScriptGetNameValue(WebBrowser1, 'cc_dt');
        Param19 := ExecuteJavaScriptGetNameValue(WebBrowser1, 'cc_tm');
        Param20 := ExecuteJavaScriptGetNameValue(WebBrowser1, 'mid_url');
        Param21 := ExecuteJavaScriptGetNameValue(WebBrowser1, 'svc_nm');

        idHttp := TIdHTTP.Create(Nil);
        LHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
        try

          idHttp.ConnectTimeout := 3 * 1000;
          idHttp.ReadTimeout := 3 * 1000;
          idHttp.HandleRedirects := True;
          idHttp.Request.Charset := 'utf-8';
          idHttp.Request.ContentType := 'application/json';
          idHttp.IOHandler := LHandler;

          // hash값 추가됨 2021.12.03 LYB
          sUrl := 'https://npg.nicepay.co.kr/issue/createHashVal.do';
          sSource := 'currency_type=KRW&p_ord_val=&org_p_val=' +
                     '&hashVal=' +
                     '&email_addr=' + Trim(edtEmail.Text) +
                     '&selState=0&TID='+ Param1 +
                     '&ord_nm=' + UrlEncode(UTF8Encode(Param2)) +
                     '&app_dt='+Param3+
                     '&app_tm='+Param4+
                     '&goods_nm='+ UrlEncode(UTF8Encode(Param5)) +
                     '&goods_amt='+Param6+
                     '&co_nm=' + UrlEncode(UTF8Encode(Param7)) +
                     '&tel_no='+Param8+
                     '&app_no='+Param9+
                     '&instmnt_mon='+Param10+
                     '&moid='+Param11+
                     '&mailk='+Param12+
                     '&bank_nm='+Param13+
                     '&accnt_no='+Param14+
                     '&vacct_no='+Param15+
                     '&cp_no='+Param16+
                     '&fn_nm='+Param17+
                     '&cc_dt='+Param18+
                     '&cc_tm='+Param19+
                     '&mid_url='+Param20+
                     '&svc_nm=' + UrlEncode(UTF8Encode(Param21));
          Requesthash := TStringStream.Create(sSource, TEncoding.UTF8);
          sResult := idHttp.Post(sUrl, Requesthash);

          jObj := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(sResult), 0) as TJSONObject;
          sHash := jObj.Get('hashVal').JsonValue.Value;

          sUrl := 'https://npg.nicepay.co.kr/issue/sendMailIssue.do';
          sSource := 'currency_type=KRW&p_ord_val=&org_p_val=' +
                     '&hashVal=' + sHash +
                     '&email_addr=' + Trim(edtEmail.Text) +
                     '&selState=0&TID='+ Param1 +
                     '&ord_nm=' + UrlEncode(UTF8Encode(Param2)) +
                     '&app_dt='+Param3+
                     '&app_tm='+Param4+
                     '&goods_nm='+ UrlEncode(UTF8Encode(Param5)) +
                     '&goods_amt='+Param6+
                     '&co_nm=' + UrlEncode(UTF8Encode(Param7)) +
                     '&tel_no='+Param8+
                     '&app_no='+Param9+
                     '&instmnt_mon='+Param10+
                     '&moid='+Param11+
                     '&mailk='+Param12+
                     '&bank_nm='+Param13+
                     '&accnt_no='+Param14+
                     '&vacct_no='+Param15+
                     '&cp_no='+Param16+
                     '&fn_nm='+Param17+
                     '&cc_dt='+Param18+
                     '&cc_tm='+Param19+
                     '&mid_url='+Param20+
                     '&svc_nm=' + UrlEncode(UTF8Encode(Param21));

          RequestBody := TStringStream.Create(sSource, TEncoding.UTF8);
          sResult := idHttp.Post(sUrl, RequestBody);

          jObj := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(sResult), 0) as TJSONObject;

          Param1 := jObj.Get('code').JsonValue.Value;
          Param2 := jObj.Get('msg').JsonValue.Value;

          if Param1 = '00' then
          begin
            ShowMessage('메일 전송 완료');
            Close;
          end else
          begin
            ShowMessage('메일 전송 중 오류 발생.');
          end;
        finally
          LHandler.Free;
          idHttp.Free;
        end;
      end;
    end;
  end;
end;

function TFrm_JON36.IsValidEmail(const Value: string): boolean;
  function CheckAllowed(const s: string): boolean;
  var
    i: integer;
  begin
    Result := false;
    for i := 1 to Length(s) do
    begin
      // illegal char in s -> no valid address
      if not (s[i] in ['a'..'z', 'A'..'Z', '0'..'9', '_', '-', '.']) then
        Exit;
    end;
    Result := true;
  end;
var
  i: integer;
  namePart, serverPart: string;
begin // of IsValidEmail
  Result := false;
  i := Pos('@', Value);
  if (i = 0) or (pos('..', Value) > 0) then Exit;
  namePart := Copy(Value, 1, i - 1);
  serverPart := Copy(Value, i + 1, Length(Value));
  if (Length(namePart) = 0) // @ or name missing
  or ((Length(serverPart) < 4)) {// name or server missing or } then
    Exit; // too short
  i := Pos('.', serverPart);
  // must have dot and at least 3 places from end
  if (i < 2) or (i > (Length(serverPart) - 2)) then Exit;
  Result := CheckAllowed(namePart) and CheckAllowed(serverPart);
end;

function TFrm_JON36.pGetEMail( sCuSeq : String) : String;
var
	ls_TxLoad, ls_TxQry, ls_Msg_Err, sQueryTemp, ls_rxxml, sAlert : string;
  slReceive: TStringList;
  ErrCode: integer;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  bCheck : Boolean;
begin
  bCheck := False;

  ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
  fGet_BlowFish_Query(GSQ_CUSTOMER_EMAIL, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, [sCuSeq]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'GETEMAIL', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

  slReceive := TStringList.Create;
  try
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
    begin
      ls_rxxml := slReceive[0];
      if ls_rxxml <> '' then
      begin
        xdom := ComsDomDocument.Create;
        try
          if not xdom.loadXML(ls_rxxml) then Exit;
          ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
          if ('0000' = ls_MSG_Err) then
          begin
            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
            ls_Rcrd := TStringList.Create;
            try
              Result := Trim(lst_Result.item[0].attributes.getNamedItem('Value').Text)
            finally
              ls_Rcrd.Free;
            end;
          end;
        finally
          xdom := Nil;
        end;
      end;
    end;
  finally
    FreeAndNil(slReceive);
  end;
end;

end.

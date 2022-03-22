unit xe_JON01WNThread;

interface

uses
  Windows, System.Classes, System.SysUtils, System.SyncObjs, ActiveX, Vcl.Dialogs, Forms, IdHTTP, IdSSLOpenSSL;

type
  TJON01WNThread = class(TThread)
  private
    FiTag : Integer;
    FiIdx : Integer;
    FsWord : String;
    FsUrl : String;
    FsRandom : String;

    _CS_WiseNut_GetPOI: TCriticalSection; // 임계영역 설정.
    _CS_WiseNut_GetSUG: TCriticalSection; // 임계영역 설정.
    _CS_Naver_GetAPI: TCriticalSection; // 임계영역 설정.
    _CS_Naver_GetPOI: TCriticalSection; // 임계영역 설정.
    _CS_Daum_GetPOI: TCriticalSection; // 임계영역 설정.
		_CS_Naver_GetSUG: TCriticalSection; // 임계영역 설정.

    procedure proc_WiseNut_GetPOI;
    procedure proc_WiseNut_GetSuggest;
    procedure proc_WiseNut_SetResponse;
//		procedure proc_Naver_GetPOI( vRandom : String );
		procedure proc_Naver_GetPOI_v5( vRandom : String );
		procedure proc_Daum_GetPOI( vRandom : String );
    procedure proc_DaumAPI_GetPOI( vRandom : String );
    procedure proc_DaumAPIAddr_GetPOI( vRandom : String );
    procedure proc_NaverAPINew_GetPOI( vRandom: String );
		procedure proc_Naver_GetSuggest( vRandom : String );
		{ Private declarations }
	public
		constructor Create(piTag, piIdx : integer; psURL, psWord, psRandom : String);
		destructor Destroy; override;
	protected
		procedure Execute; override;
  end;


implementation

{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure xe_JON01SPThread.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end;

    or

    Synchronize(
      procedure
      begin
        Form1.Caption := 'Updated in thread via an anonymous method'
      end
      )
    );

  where an anonymous method is passed.

  Similarly, the developer can call the Queue method with similar parameters as
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.

}

uses xe_GNL, xe_Func, Main, xe_Dm, xe_JON30, xe_JON31, xe_JON56, xe_AdminMap;

{ xe_JON01WNThread }

constructor TJON01WNThread.Create(piTag, piIdx : integer; psURL, psWord, psRandom : String);
begin
  _CS_WiseNut_GetPOI := TCriticalSection.Create; // 임계영역 설정.
  _CS_WiseNut_GetSUG := TCriticalSection.Create; // 임계영역 설정.
  _CS_Naver_GetAPI := TCriticalSection.Create; // 임계영역 설정.
  _CS_Naver_GetPOI := TCriticalSection.Create; // 임계영역 설정.
  _CS_Daum_GetPOI := TCriticalSection.Create; // 임계영역 설정.
	_CS_Naver_GetSUG := TCriticalSection.Create; // 임계영역 설정.

  FiTag := piTag;
  FiIdx := piIdx;
  FsUrl := psUrl;
  FsWord := psWord;
  FsRandom := psRandom;
  CoInitialize(nil);
  inherited Create;
end;

procedure TJON01WNThread.Execute;
begin
	if FiIdx = 0  then proc_WiseNut_GetPOI else            // POI검색
  if FiIdx = 1  then proc_WiseNut_GetSuggest else        // Suggest검색
  if FiIdx = 2  then proc_WiseNut_SetResponse else       // 성공쿼리 전달
  if FiIdx = 3  then proc_Daum_GetPOI(FsRandom) else    // 다음 검색
  if FiIdx = 4  then proc_DaumAPI_GetPOI(FsRandom) else     // 다음API 지역검색
  if FiIdx = 10 then proc_DaumAPIAddr_GetPOI(FsRandom) else // 다음API 주소검색
  if FiIdx = 5  then proc_WiseNut_GetPOI else            // JON56에서 POI검색 요청
	if FiIdx = 6  then proc_WiseNut_GetPOI else                // 접수창 일반전화번호 POI검색
	if FiIdx = 8  then proc_WiseNut_GetPOI else                // 상담지도(출발지 보기)
	if FiIdx = 9  then proc_WiseNut_GetPOI else                // 관제지도
	if FiIdx = 7  then proc_NaverAPINew_GetPOI(FsRandom) else  // 네이버API 검색
//	if FiIdx = 12 then proc_Naver_GetPOI(FsRandom) else        // 네이버 검색
	if FiIdx = 14 then proc_Naver_GetPOI_v5(FsRandom) else        // 네이버v5 검색
	if FiIdx = 15 then proc_Naver_GetPOI_v5(FsRandom) else        // 네이버v5 검색
	if FiIdx = 11 then proc_Naver_GetSuggest(FsRandom) else    // Suggest검색
	if FiIdx = 13 then proc_NaverAPINew_GetPOI(FsRandom) ;     // 네이버API cloud 검색
	Self.Terminate;
  { Place thread code here }
end;

procedure TJON01WNThread.proc_WiseNut_GetPOI;
Var  wURLBf, wURL : String;
     Stream: TStringStream;
     sTmp : TStringList;
     IdHTTPWiseNut : TIdHttp;
begin
  try
    SetDebugeWrite('WiseNut : ' + FsUrl);
    _CS_WiseNut_GetPOI.Acquire;
    wURL := '';
    IdHTTPWiseNut := TIdHttp.Create(nil);
    sTmp := TStringList.Create;
    Stream := TStringStream.Create;
    try
		  IdHTTPWiseNut.ConnectTimeout := 5 * 1000;
		  IdHTTPWiseNut.ReadTimeout := 5 * 1000;
      try
  		  IdHTTPWiseNut.Get(FsUrl, Stream);
        SetString(wURLBf, PAnsiChar(Stream.Memory), Stream.Size);
        sTmp.Text := wURLBf;  // Base64일경우 $13$10 제거 처리
        wURLBf := StringReplace(sTmp.Text, Chr(13)+Chr(10), '', [rfReplaceAll]);
        wURL := XORString(wURLBf);
      except on E: Exception do
        begin
          wURL := '';
          if ( Pos('Connect timed out', E.Message) > 0 ) Or
             ( Pos('Read timed out', E.Message) > 0 ) Or
             ( Pos('Socket Error', E.Message) > 0) then
          begin
            Inc(GI_PoiServerErr);
          end;
					SetDebugeWrite('POI Get Error : ' + FsUrl + ' - ' + e.Message);
					GS_DebugError := 'POI Get Error : ' + FsUrl + ' - ' + e.Message;
        end;
      end;
    finally
      sTmp.Free;
      Stream.Free;
      IdHTTPWiseNut.Free;
      _CS_WiseNut_GetPOI.Release;
    end;
    if Trim(wURL) = '' then Exit;
    GS_WiseNutPOIResult := wURL;
    GS_WiseNutPOIWord := FsWord;
    GI_PoiServerErr := 0;

    SetDebugeWrite('WiseNut B : ' + Trim(GS_WiseNutPOIResult));

    if FiIdx = 0 then
    begin
      if Frm_JON30.Showing then
        Frm_JON30.TT3_1.Enabled := True;
    end else
		if FiIdx = 5 then
			Frm_JON56.TT3_1.Enabled := True
		else
		if FiIdx = 8 then
			Frm_JON31.TT3_1.Enabled := True
		else
		if FiIdx = 9 then
			Frm_AdminMap.TT3_1.Enabled := True
		else
		if FiIdx = 6 then
		begin
      if Frm_Main.Frm_JON01N[FiTag].Showing then
	  	Frm_Main.Frm_JON01N[FiTag].TT3_1.Enabled := True;
    end;

  except
    on E: Exception do
    begin
      SetDebugeWrite('proc_WiseNut_GetPOI Error :'+E.Message);
      GS_DebugError := 'proc_WiseNut_GetPOI Error :'+E.Message;
    end;
  end;
end;

procedure TJON01WNThread.proc_WiseNut_GetSuggest;
Var IdHTTPSuggest : TIdHttp;
    wURL : String;
begin
  try
    SetDebugeWrite('Suggest : ' + FsUrl);
    _CS_WiseNut_GetSUG.Acquire;
    try
      wURL := '';
      IdHTTPSuggest := TIdHttp.Create(nil);
		  IdHTTPSuggest.ConnectTimeout := 5 * 1000;
		  IdHTTPSuggest.ReadTimeout := 5 * 1000;
      try
    	  wURL := IdHTTPSuggest.Get(FsUrl);
      except on E: Exception do
        begin
          wURL := '';
          SetDebugeWrite('Suggest Get Error : ' + e.Message);
          GS_DebugError := 'Suggest Get Error : ' + FsUrl + ' - ' + e.Message;
        end;
      end;
    finally
      IdHTTPSuggest.Free;
      _CS_WiseNut_GetSUG.Release;
    end;
    if Trim(wURL) = '' then Exit;
    GS_WiseNutSGTResult := wURL;
    SetDebugeWrite('Suggest B : ' + Trim(GS_WiseNutSGTResult));
//    if Frm_Main.Frm_JON01N[FiTag].Showing then
//      Frm_Main.Frm_JON01N[FiTag].TT4_1.Enabled := True;
  except
    on e: exception do
    begin
      SetDebugeWrite('proc_WiseNut_GetSuggest Error:' + e.message);
      GS_DebugError := 'proc_WiseNut_GetSuggest Error:' + e.message;
    end;
  end;
end;

procedure TJON01WNThread.proc_WiseNut_SetResponse;
Var IdHTTPResponse : TIdHttp;
begin
  try
    SetDebugeWrite('Response : ' + FsUrl);
    try
      IdHTTPResponse := TIdHttp.Create(nil);
		  IdHTTPResponse.ConnectTimeout := 5 * 1000;
		  IdHTTPResponse.ReadTimeout := 5 * 1000;
      try
    	  IdHTTPResponse.Get(FsUrl);
      except on E: Exception do
        begin
					SetDebugeWrite('Response Set Error : ' + e.Message);
          GS_DebugError := 'Response Set Error : ' + FsUrl + ' - ' + e.Message;
        end;
      end;
    finally
      IdHTTPResponse.Free;
    end;
  except
    on e: exception do
    begin
			SetDebugeWrite('proc_WiseNut_SetResponse Error:' + e.message);
      GS_DebugError := 'proc_WiseNut_SetResponse Error:' + e.message;
    end;
  end;
end;

//procedure TJON01WNThread.proc_Naver_GetPOI( vRandom : String );
//Var IdHTTPNaver : TIdHttp;
//    LHandler: TIdSSLIOHandlerSocketOpenSSL;
//    wURL : String;
//begin
//	try
//    SetDebugeWrite('Naver : LastRandom - ' + Frm_JON30.sRanDom +', ActiveRandom - ' + vRandom + ', - ' + FsUrl);
//    _CS_Naver_GetPOI.Acquire;
//    IdHTTPNaver := TIdHttp.Create(nil);
//    try
//      LHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
//      try
//        wURL := '';
//        IdHTTPNaver.ConnectTimeout := 5 * 1000;
//        IdHTTPNaver.ReadTimeout := 5 * 1000;
//        IdHTTPNaver.HandleRedirects := True;
//				IdHTTPNaver.Request.Charset := 'utf-8';
//        IdHTTPNaver.Request.ContentType := 'application/x-www-form-urlencoded';
//        IdHTTPNaver.Request.CustomHeaders.Add('Cookie'+IdHTTPNaver.Request.RawHeaders.NameValueSeparator+gNaverCookie);
//        try
//          IdHTTPNaver.IOHandler := LHandler;
//					wURL := IdHTTPNaver.Get(FsUrl);
//        except on E: Exception do
//          begin
//            wURL := '';
//						gNaverCookie := '';
//						Inc(gNaverV4ErrorCnt);
//						SetDebugeWrite('Naver Get Error : ' + e.Message);
//						GS_DebugError := 'Naver B Error : ' + FsUrl + ' - ' + e.Message;
//          end;
//        end;
//      finally
//        LHandler.Free;
//      end;
//    finally
//      IdHTTPNaver.Free;
//      _CS_Naver_GetPOI.Release;
//    end;
//
//		if Trim(wURL) = '' then Exit;
//		GS_NaverPOIResult := wURL;
//		GS_NaverPOIRadom := vRandom;
//		GS_NaverPOIWord  := 'Naver';
//    SetDebugeWrite('Naver B : ActiveRandom - ' + vRandom + ', - ' + Trim(GS_NaverPOIResult));
//    if Frm_JON30.Showing then
//      Frm_JON30.TT2_1.Enabled := True;
//  except
//    on e: exception do
//    begin
//      SetDebugeWrite('proc_Naver_GetPOI Error:' + e.message);
//      gNaverCookie := '';
//      GS_DebugError := 'proc_Naver_GetPOI Error:' + e.message;
//    end;
//  end;
//end;

procedure TJON01WNThread.proc_Naver_GetPOI_v5( vRandom : String );
Var IdHTTPNaver : TIdHttp;
    Stream: TStringStream;
    LHandler: TIdSSLIOHandlerSocketOpenSSL;
    wURL : String;
begin
	try
    SetDebugeWrite('Naver : LastRandom - ' + Frm_JON30.sRanDom +', ActiveRandom - ' + vRandom + ', - ' + FsUrl);
    _CS_Naver_GetPOI.Acquire;
    IdHTTPNaver := TIdHttp.Create(nil);
    Stream  := TStringStream.Create();
    try
      LHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
      try
        wURL := '';
        IdHTTPNaver.ConnectTimeout := 5 * 1000;
        IdHTTPNaver.ReadTimeout := 5 * 1000;
        IdHTTPNaver.HandleRedirects := True;
        IdHTTPNaver.Request.Charset := 'utf-8';
        IdHTTPNaver.Request.ContentType := 'application/x-www-form-urlencoded';
//        IdHTTPNaver.Request.CustomHeaders.Add('Cookie'+IdHTTPNaver.Request.RawHeaders.NameValueSeparator+gNaverCookie);
        try
          IdHTTPNaver.IOHandler := LHandler;

          IdHTTPNaver.Get(FsUrl, Stream, []);
          Stream.Position := 0;
          wURL := TEncoding.UTF8.GetString(Stream.Bytes, 0, Stream.Size);

				except on E: Exception do
          begin
            wURL := '';
						gNaverCookie := '';
						if FiIdx = 14 then
						begin
							Inc(gNaverV5ErrorCnt);
							SetDebugeWrite('Naver V5 B instantSearch Error : ' + e.Message);
							GS_DebugError := 'Naver V5 B instantSearch Error : ' + FsUrl + ' - ' + e.Message;
						end	else
						if FiIdx = 15 then  //확장버튼검색
						begin
							SetDebugeWrite('Naver V5 B Search Error : ' + e.Message);
							GS_DebugError := 'Naver V5 B Search Error : ' + FsUrl + ' - ' + e.Message;
						end;
						
					end;
        end;
			finally
        LHandler.Free;
      end;
		finally
      Stream.Free;
      IdHTTPNaver.Free;
			_CS_Naver_GetPOI.Release;
    end;

		if Trim(wURL) = '' then Exit;
		GS_NaverPOIResult := wURL;
		GS_NaverPOIRadom := vRandom;
    if FiIdx = 14 then
  		GS_NaverPOIWord  := 'NaverV5'
    else if FiIdx = 15 then
  		GS_NaverPOIWord  := 'NaverV5_New';
		SetDebugeWrite('Naver B : ActiveRandom - ' + vRandom + ', - ' + Trim(GS_NaverPOIResult));
    if Frm_JON30.Showing then
      Frm_JON30.TT2_1.Enabled := True;
  except
    on e: exception do
    begin
      SetDebugeWrite('proc_Naver_GetPOI Error:' + e.message);
      gNaverCookie := '';
      GS_DebugError := 'proc_Naver_GetPOI Error:' + e.message;
    end;
  end;
end;

procedure TJON01WNThread.proc_Naver_GetSuggest( vRandom : String );
Var IdHTTPNaver : TIdHttp;
    LHandler: TIdSSLIOHandlerSocketOpenSSL;
		wURL : String;
begin
	try
		SetDebugeWrite('Naver : LastRandom - ' + Frm_JON30.sRanDom +', ActiveRandom - ' + vRandom + ', - ' + FsUrl);
		_CS_Naver_GetSUG.Acquire;
  	IdHTTPNaver := TIdHttp.Create(nil);
    try
      LHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
      try
        wURL := '';

        IdHTTPNaver.ConnectTimeout := 5 * 1000;
        IdHTTPNaver.ReadTimeout := 5 * 1000;
        IdHTTPNaver.HandleRedirects := True;
        try
          IdHTTPNaver.IOHandler:=LHandler;
//          IdHTTPNaver.Get('https://v4.map.naver.com');
          wURL := IdHTTPNaver.Get(FsUrl);
        except on E: Exception do
          begin
            wURL := '';
            SetDebugeWrite('Naver Get Error : ' + e.Message);
            GS_DebugError := 'Naver Get Error : ' + FsUrl + ' - ' + e.Message;
          end;
        end;
      finally
        LHandler.Free;
      end;
    finally
      IdHTTPNaver.Free;
      _CS_Naver_GetSUG.Release;
    end;

		if Trim(wURL) = '' then Exit;
		GS_NaverSGTResult := wURL;

		SetDebugeWrite('Suggest N : ' + Trim(GS_NaverSGTResult));

//    if Frm_Main.Frm_JON01N[FiTag].Showing then
//      Frm_Main.Frm_JON01N[FiTag].TT5_1.Enabled := True;
	except
		on e: exception do
		begin
			SetDebugeWrite('proc_Naver_GetPOI Error:' + e.message);
			GS_DebugError := 'proc_Naver_GetPOI Error:' + e.message;
		end;
	end;
end;

procedure TJON01WNThread.proc_Daum_GetPOI( vRandom : String );
Var IdHTTPDaum : TIdHttp;
    wURL : String;
    Stream: TStringStream;
    LHandler: TIdSSLIOHandlerSocketOpenSSL;
begin
  try
    SetDebugeWrite('Daum : LastRandom - ' + Frm_JON30.sRanDom +', ActiveRandom - ' + vRandom + ', - ' + FsUrl);
    _CS_Daum_GetPOI.Acquire;
    IdHTTPDaum := TIdHttp.Create(nil);
    Stream  := TStringStream.Create();
    try
      wURL := '';
{      IdHTTPDaum := TIdHttp.Create(nil);
		  IdHTTPDaum.ConnectTimeout := 3 * 1000;
		  IdHTTPDaum.ReadTimeout := 3 * 1000;
      IdHTTPDaum.HandleRedirects := True;
      IdHTTPDaum.Request.CustomHeaders.Values['Referer'] := 'http://map.daum.net/';     }

      LHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
      try
        IdHTTPDaum.ConnectTimeout := 3 * 1000;
        IdHTTPDaum.ReadTimeout := 3 * 1000;
        IdHTTPDaum.HandleRedirects := True;
        IdHTTPDaum.Request.Charset := 'utf-8';
        IdHTTPDaum.Request.ContentType := 'application/x-www-form-urlencoded';
        IdHTTPDaum.Request.CustomHeaders.Values['Referer'] := 'https://map.kakao.com/';  

        try
          wURL := IdHTTPDaum.Get(FsUrl);

          IdHTTPDaum.IOHandler := LHandler;

          IdHTTPDaum.Get(FsUrl, Stream, []);
          Stream.Position := 0;
          wURL := TEncoding.UTF8.GetString(Stream.Bytes, 0, Stream.Size);
        except on E: Exception do
          begin
            wURL := '';
            SetDebugeWrite('Daum Get Error : ' + e.Message);
            GS_DebugError := 'Daum Get Error : ' + FsUrl + ' - ' + e.Message;
          end;
        end;
      finally
				LHandler.Free;
      end;
    finally
      Stream.Free;
      IdHTTPDaum.Free;
      _CS_Daum_GetPOI.Release;
    end;

    if Trim(wURL) = '' then Exit;
    GS_NaverPOIResult := wURL;
    GS_NaverPOIRadom := vRandom;
    GS_NaverPOIWord  := 'Daum';
    SetDebugeWrite('Daum B : ActiveRandom - ' + vRandom + ', - ' + Trim(GS_NaverPOIResult));
    if Frm_JON30.Showing then
      Frm_JON30.TT2_1.Enabled := True;
  except
    on e: exception do
		begin
			SetDebugeWrite('proc_Daum_GetPOI Error:' + e.message);
      GS_DebugError := 'proc_Daum_GetPOI Error:' + e.message;
    end;
  end;
end;

procedure TJON01WNThread.proc_DaumAPI_GetPOI( vRandom : String );
Var IdHTTPDaumAPI : TIdHttp;
    wURL : String;
begin
  try
    SetDebugeWrite('DaumAPI : LastRandom - ' + Frm_JON30.sNRanDom +', ActiveRandom - ' + vRandom + ', - ' + FsUrl);
    _CS_Daum_GetPOI.Acquire;
    try
      GB_DParser := False;
      wURL := '';
      IdHTTPDaumAPI := TIdHttp.Create(nil);
		  IdHTTPDaumAPI.ConnectTimeout := 3 * 1000;
		  IdHTTPDaumAPI.ReadTimeout := 3 * 1000;
      IdHTTPDaumAPI.Request.CustomHeaders.Values['Authorization'] := 'KakaoAK ' + FsWord; // 인증형식 ' KakaoAK ' + APIKey
      try
    	  wURL := IdHTTPDaumAPI.Get(FsUrl);
      except on E: Exception do
        begin
          wURL := '';
          SetDebugeWrite('DaumAPI Get Error : ' + e.Message);
          GS_DebugError := 'DaumAPI Get Error : ' + FsUrl + ' - ' + e.Message;
        end;
      end;
    finally
      IdHTTPDaumAPI.Free;
      _CS_Daum_GetPOI.Release;
    end;
    if Trim(wURL) = '' then Exit;

    if GI_ALL_Sch >= 0 then
      GS_DaumPOIResult := wURL
    else
      GS_NaverPOIResult := wURL;

    GS_NaverPOIRadom := vRandom;
    GS_NaverPOIWord  := 'DaumAPI';
    GS_NaverAPIKey   := FsWord;
    SetDebugeWrite('DaumAPI B : ActiveRandom - ' + vRandom + ', - ' + Trim(wURL));
    if Frm_JON30.Showing then
    begin
      if GI_ALL_Sch >= 0 then
      begin
//        Inc(GI_APIALL_Sch);
        Frm_JON30.TT2_D.Enabled := True
      end else
        Frm_JON30.TT2_1.Enabled := True;
    end;
  except
    on e: exception do
    begin
      if GI_ALL_Sch >= 0 then
//        Inc(GI_APIALL_Sch);
      SetDebugeWrite('proc_DaumAPI_GetPOI Error:' + e.message);
      GS_DebugError := 'proc_DaumAPI_GetPOI Error:' + e.message;
    end;
  end;
end;

procedure TJON01WNThread.proc_DaumAPIAddr_GetPOI( vRandom : String );
Var IdHTTPDaumAPI : TIdHttp;
    wURL : String;
begin
  try
    SetDebugeWrite('DaumAPIAddr : LastRandom - ' + Frm_JON30.sNRanDom +', ActiveRandom - ' + vRandom + ', - ' + FsUrl);
    _CS_Daum_GetPOI.Acquire;
    try
      GB_DParser := False;
      wURL := '';
      IdHTTPDaumAPI := TIdHttp.Create(nil);
		  IdHTTPDaumAPI.ConnectTimeout := 3 * 1000;
		  IdHTTPDaumAPI.ReadTimeout := 3 * 1000;
      IdHTTPDaumAPI.Request.CustomHeaders.Values['Authorization'] := 'KakaoAK ' + FsWord; // 인증형식 ' KakaoAK ' + APIKey
      try
    	  wURL := IdHTTPDaumAPI.Get(FsUrl);
      except on E: Exception do
        begin
          wURL := '';
          SetDebugeWrite('DaumAPIAddr Get Error : ' + e.Message);
          GS_DebugError := 'DaumAPIAddr Get Error : ' + FsUrl + ' - ' + e.Message;
        end;
      end;
    finally
      IdHTTPDaumAPI.Free;
      _CS_Daum_GetPOI.Release;
    end;
    if Trim(wURL) = '' then Exit;

    if GI_ALL_Sch >= 0 then
      GS_DaumPOIResult := wURL
    else
      GS_NaverPOIResult := wURL;

    GS_NaverPOIRadom := vRandom;
    GS_NaverPOIWord  := 'DaumAPIAddr';
    GS_NaverAPIKey   := FsWord;
    SetDebugeWrite('DaumAPIAddr B : ActiveRandom - ' + vRandom + ', - ' + Trim(wURL));
    if Frm_JON30.Showing then
    begin
      if GI_ALL_Sch >= 0 then
      begin
//        Inc(GI_APIALL_Sch);
        Frm_JON30.TT2_D.Enabled := True
      end else
        Frm_JON30.TT2_1.Enabled := True;
    end;
  except
    on e: exception do
    begin
//      if GI_APIALL_Sch >= 0 then
//        Inc(GI_APIALL_Sch);
      SetDebugeWrite('proc_DaumAPIAddr_GetPOI Error:' + e.message);
      GS_DebugError := 'proc_DaumAPIAddr_GetPOI Error:' + e.message;
    end;
  end;
end;

procedure TJON01WNThread.proc_NaverAPINew_GetPOI( vRandom : String );
Var IdHTTPNaverAPI : TIdHttp;
    sId, sPw : String;
		wURL : String;
		Stream : TBytesStream;
begin
	try
		SetDebugeWrite('NaverAPINew : LastRandom - ' + Frm_JON30.sNRanDom +', ActiveRandom - ' + vRandom + ', - ' + FsUrl);

    sId := Copy(FsWord, 1, Pos(',', FsWord) - 1);
    sPw := Copy(FsWord, Pos(',', FsWord) + 1, Length(FsWord) - Pos(',', FsWord));

    _CS_Naver_GetAPI.Acquire;
    try
      GB_NParser := False;
      wURL := '';
			Stream := TBytesStream.Create;

			IdHTTPNaverAPI := TIdHttp.Create(nil);
		  IdHTTPNaverAPI.ConnectTimeout := 5 * 1000;
		  IdHTTPNaverAPI.ReadTimeout := 5 * 1000;
//			IdHTTPNaverAPI.Request.CustomHeaders.Values['X-Naver-Client-Id'] := sId;
//			IdHTTPNaverAPI.Request.CustomHeaders.Values['X-Naver-Client-Secret'] := sPw;
			IdHTTPNaverAPI.Request.CustomHeaders.Values['X-NCP-APIGW-API-KEY-ID'] := sId;
			IdHTTPNaverAPI.Request.CustomHeaders.Values['X-NCP-APIGW-API-KEY'] := sPw;
			try
				IdHTTPNaverAPI.Get(FsUrl, Stream);
				wURL := TEncoding.UTF8.GetString(Stream.Bytes , 0, Stream.Size);
			except on E: Exception do
				begin
					wURL := '';
          GB_NParser := True;
					SetDebugeWrite('NaverAPINew Get Error : ' + e.Message);
          GS_DebugError := 'NaverAPINew Get Error : ' + FsUrl + ' - ' + e.Message;
				end;
      end;
    finally
			IdHTTPNaverAPI.Free;
			FreeAndNil(Stream);
			_CS_Naver_GetAPI.Release;
    end;
    if Trim(wURL) = '' then Exit;
		GS_NaverPOIResult := wURL;
		GS_NaverPOIRadom := vRandom;
		if FiIdx = 7 then
			GS_NaverPOIWord  := 'NaverAPI' else
		if FiIdx = 13 then
			GS_NaverPOIWord  := 'NaverAPI_cloud';
		GS_NaverAPIKey   := sId;
		SetDebugeWrite('NaverAPINew B : ActiveRandom - ' + vRandom + ', - ' + Trim(GS_NaverPOIResult));
		if Frm_JON30.Showing then
    begin
			if GI_ALL_Sch >= 0 then  //
      begin
//        Inc(GI_APIALL_Sch);
				Frm_JON30.TT2_N.Enabled := True
      end else
        Frm_JON30.TT2_1.Enabled := True;
    end;
  except
    on e: exception do
		begin
//      if GI_APIALL_Sch >= 0 then
///        Inc(GI_APIALL_Sch);
			SetDebugeWrite('proc_NaverAPINew_GetPOI Error:' + e.message);
      GS_DebugError := 'proc_NaverAPINew_GetPOI Error:' + e.message;
		end;
  end;
end;

destructor TJON01WNThread.Destroy;
begin
  _CS_WiseNut_GetPOI.Free;
  _CS_WiseNut_GetSUG.Free;
  _CS_Naver_GetAPI.Free;
  _CS_Naver_GetPOI.Free;
  _CS_Daum_GetPOI.Free;
  _CS_Naver_GetSUG.Free;

  CoUninitialize;
  inherited;
end;

end.


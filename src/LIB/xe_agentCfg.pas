unit xe_agentCfg;

interface

uses
  Windows, SysUtils, Classes, Vcl.Graphics, xe_structure, Vcl.Forms, Vcl.Controls, MSXML2_TLB, IniFiles;

var
  GB_JON_WAITFARE_USE : String;  //  대기요금설정 D.기본, L.로컬, S.서버
  GS_WaitFareList : TStringList;   // 대기요금설정
  GS_WaitFareDefault : TStringList;   // 대기요금기본값

  procedure Proc_Recieve(ls_rxxml: String);
  procedure pDefLoadWaitFare;                            // 대기요금기본값조회
  procedure pLocLoadWaitFare;                            // 대기요금로컬값조회
  procedure pSvrLoadWaitFare( sCallCenter : String );    // 대기요금서버값조회
  procedure pLocSaveWaitFare;                            // 대기요금로컬값저장
  procedure pSvrSaveWaitFare;                            // 대기요금서버값저장
  procedure pSaveCidInfo(iCuCnt, iWkCnt : Integer; sBizDate : String );    // CID콜 카운트 저장

implementation

uses xe_GNL, xe_packet, xe_Msg, xe_Func, xe_xml;


// 대기요금기본값조회
procedure pDefLoadWaitFare;
begin
  try
    GS_WaitFareDefault.Clear;
    GS_WaitFareDefault.Add('1' + '=' + '1│00:30│5000│system/system');
    GS_WaitFareDefault.Add('2' + '=' + '1│01:00│10000│system/system');
    GS_WaitFareDefault.Add('3' + '=' + '1│01:30│15000│system/system');
    GS_WaitFareDefault.Add('4' + '=' + '1│02:00│20000│system/system');
    GS_WaitFareDefault.Add('5' + '=' + '1│05:00│25000│system/system');
    GS_WaitFareDefault.Add('6' + '=' + '1│10:00│100000│system/system');
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

// 대기요금로컬값조회
procedure pLocLoadWaitFare;
var
  I: Integer;
  FList: TStringList;
  ln_Env : TIniFile;
begin
  try
    GS_WaitFareList.Clear;

    ln_Env := TIniFile.Create(ENVPATHFILE);
    FList := TStringList.Create;
    try
      ln_Env.ReadSection('WaitFare', FList);
      for I := 0 to FList.Count - 1 do
        GS_WaitFareList.Add(FList[I] + '=' + ln_Env.ReadString('WaitFare', FList[I], ''));
    finally
      FList.Free;
    	FreeAndNil(ln_Env);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

// 대기요금로컬값저장
procedure pLocSaveWaitFare;
var
  I: Integer;
  ln_Env : TIniFile;
begin
  try
    ln_Env := TIniFile.Create(ENVPATHFILE);
    try
      ln_Env.EraseSection('WaitFare');
      for i := 0 to GS_WaitFareList.Count - 1 do
        ln_Env.WriteString('WaitFare', IntToStr(i+1), GS_WaitFareList.ValueFromIndex[i]);
    finally
    	FreeAndNil(ln_Env);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

// 대기요금서버값조회
procedure pSvrLoadWaitFare( sCallCenter : String );
var
	XmlData, Param, ErrMsg : string;
	slList : TStringList;
  ls_rxxml, ls_Msg_Err : string;
  ErrCode: integer;
begin
	SetDebugeWrite('xe_agentCfg.pLoadWaitFare');
  if sCallCenter = '' then Exit;

  Param := sCallCenter;
  try
    Screen.Cursor := crHourGlass;
    slList := TStringList.Create;
    try
      if not RequestBasePaging(GetSel06('WAITFARE_L', 'MNG_AGENT_CFG.GET_WAIT_FARE_LIST', '100', Param), slList, ErrCode, ErrMsg) then
      begin
        GMessagebox(Format('대기요금조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
        Screen.Cursor := crDefault;
        Exit;
      end;

      ls_rxxml := slList[0];
      if ls_rxxml <> '' then
      begin
        Application.ProcessMessages;
        proc_recieve(ls_rxxml);
      end;
    finally
      FreeAndNil(slList);
      Screen.Cursor := crDefault;
    end;
  except
    on e: exception do
    begin
      Screen.Cursor := crDefault;
      Assert(False, E.Message);
    end;
  end;
end;

// 대기요금서버값저장
procedure pSvrSaveWaitFare;
var	XmlData, ErrMsg, param, pSet, sMin : string;
		ErrCode : Integer;
    ls_Rcrd : TStringList;
    i : Integer;
begin
	SetDebugeWrite('Frm_JON07.btn_KakaoBlockClick');
  // 본사코드│지사코드│콜센터코드│사용유무│설정값개수│설정값

  Param := '';
  Param := GT_USERIF.HD;
  Param := Param + '│' + GT_USERIF.BR;
  Param := Param + '│' + GT_USERIF.CT;
  Param := Param + '│' + 'y';
  Param := Param + '│' + IntToStr(GS_WaitFareList.Count);

  ls_Rcrd := TStringList.Create;
  try
    for i := 0 to GS_WaitFareList.Count - 1 do
    begin
      if Trim(GS_WaitFareList.ValueFromIndex[i]) = '' then Continue;
      GetTextSeperationEx2('│', GS_WaitFareList.ValueFromIndex[i], ls_Rcrd);

      if ls_Rcrd[0] = '0' then sMin := ls_Rcrd[1] else
      if ls_Rcrd[0] = '1' then sMin := ConvertTimeToMinutes(ls_Rcrd[1]);

      if i = 0 then pSet := ls_Rcrd[0] + '^' + ls_Rcrd[1] + '^' + ls_Rcrd[2] + '^' + sMin
               else pSet := pSet + '^' + ls_Rcrd[0] + '^' + ls_Rcrd[1] + '^' + ls_Rcrd[2] + '^' + sMin;
    end;
  finally
    FreeAndNil(ls_Rcrd);
  end;

  Param := Param + '│' + pSet;

  if not RequestBase(GetCallable06('WAITFARE_I', 'MNG_AGENT_CFG.SET_INSERT_WAIT_FARE', param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('대기요금 저장시 오류가 발생하였습니다.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

  pSvrLoadWaitFare(GT_USERIF.CT);
end;

procedure Proc_Recieve(ls_rxxml: String);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_ClientKey, ls_Msg_Err, sTmp, sTmp2: string;
  ls_Rcrd : TStringList;
  i : Integer;
begin
  SetDebugeWrite('xe_agentCfg.Proc_Recieve');

  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ls_rxxml) then Exit;
    ls_ClientKey := GetXmlClientKey(ls_rxxml);

    try
      if ls_ClientKey = 'WAITFARE_L' then
      begin
        ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
        if ('0000' = ls_Msg_Err) then
        begin
          if (0 < GetXmlRecordCount(ls_rxxml)) then
          begin
            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
            if lst_Result = Nil then Exit;
            ls_Rcrd := TStringList.Create;
            try
              GS_WaitFareList.Clear;
              for i := 0 to lst_Result.length - 1 do
  						begin
                GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').text, ls_Rcrd);

                GS_WaitFareList.Add(IntToStr(i+1) + '=' + ls_Rcrd[0] + '│' + ls_Rcrd[1] + '│' + ls_Rcrd[2] + '│' + ls_Rcrd[3]);
              end;
            finally
              FreeAndNil(ls_Rcrd);
            end;
          end;
        end else
        begin
          GMessagebox(ls_Msg_Err, CDMSE);
        end;
      end;
    except
      on e: exception do
      begin
        Assert(False, E.Message);
      end;
    end;
  finally
    xdom := nil;
  end;
end;

procedure pSaveCidInfo(iCuCnt, iWkCnt : Integer; sBizDate : String );
var
	XmlData, Param, ErrMsg : string;
	slList : TStringList;
  ls_rxxml, ls_Msg_Err : string;
  ErrCode: integer;
begin
	SetDebugeWrite('xe_agentCfg.pSaveCidInfo');

  try
    // 본사코드│콜센터코드│영업일자(09시기준)│고객착신건│기사착신건│총합계│퇴근시간│로컬IP│볼륨번호│최초로그인일시
    Param := '';
    Param := GT_USERIF.HD;
    Param := Param + '│' + GT_USERIF.CT;
    Param := Param + '│' + sBizDate;
    Param := Param + '│' + IntToStr(iCuCnt);
    Param := Param + '│' + IntToStr(iWkCnt);
    Param := Param + '│' + IntToStr(iCuCnt+iWkCnt);
    Param := Param + '│' + FormatDateTime('yyyy-mm-dd hh:mm:ss', Now);
    Param := Param + '│' + GT_USERIF.IP;
    Param := Param + '│' + GT_USERIF.VN;
    Param := Param + '│' + GT_USERIF.LoginTime;

    if not RequestBase(GetCallable06('SET_CID_IFNO', 'MNG_AGENT_CFG.SET_CID_IFNO', param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('CID내역 저장시 오류가 발생하였습니다.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;
  except
    on e: exception do
    begin
      Screen.Cursor := crDefault;
      Assert(False, E.Message);
    end;
  end;
end;

end.

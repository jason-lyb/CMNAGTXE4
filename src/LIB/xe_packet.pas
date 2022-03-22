unit xe_packet;

interface

uses
  Classes, SysUtils, MSXML2_TLB, System.Math, System.StrUtils;

function RequestBase_ErrorResult(AQuery: string; var AData: string;
  var AErrCode: Integer; var AErrMsg: string;
  ATimeOut: Integer = 15000): Boolean;
function RequestBase(AQuery: string; var AData: string; var AErrCode: Integer;
  var AErrMsg: string; ATimeOut: Integer = 15000): Boolean; overload;
function RequestBasePaging(AQuery: string; var AData: TStringList;
  var AErrCode: Integer; var AErrMsg: string;
  ATimeOut: Integer = 15000): Boolean;
function RequestBase(AQuery: string; var AErrCode: Integer; var AErrMsg: string;
  ATimeOut: Integer = 15000): Boolean; overload;
function GetXml(const AXml, AKey: string): string;

function GetSel01(const AKey, AQuery: string): string;
function GetSel04(const AKey, AQueryKey, AForward, ABackward: string;
  const AParams: array of string; APaging: Integer = -1): string;
function GetSel05(const AKey, AQuery, APaging, AParam: string): string;
function GetSel06(const AKey, AQuery, APaging, AParam: string): string;

function GetCallable05(const AKey, ACall, AParam: string): string;
function GetCallable06(const AKey, ACall, AParam: string): string;

function GetC001Login(const AKey, AMacAddr, AHddSN, AHddSN2, AMBSN, ACPUSN, ACompName,
  ALockCode, AVer, AClientVer, AMode: string): string;
function GetC001Logout(const AKey: string): string;
function GetC025WkCash(const AKey, AHdNo, ABrNo, AWkSabun, AMemo: string;
  ACash: Integer): string;

implementation

uses xe_Dm, xe_Msg, xe_Xml, xe_gnl, xe_Func;

function RequestBase_ErrorResult(AQuery: string; var AData: string;
  var AErrCode: Integer; var AErrMsg: string; ATimeOut: Integer): Boolean;
var
  xdom: msDomDocument;
  StrList: TStringList;
begin
  Result := False;

  StrList := TStringList.Create;
  try
    if dm.SendSock(AQuery, StrList, AErrCode, False, ATimeOut) then
    begin
      AData := StrList[0];
      xdom := ComsDomDocument.Create;
      try
        if not xdom.loadXML(AData) then
        begin
          AErrCode := -1;
          AErrMsg := ERR_INVALID_XMLFORMAT;
          Exit;
        end;

        AErrCode := GetXmlErrorCodeNum(AData);
        AErrMsg := GetXmlErrorMsg(AData);

        Result := True;
      finally
        xdom := Nil;
      end;
    end;
  finally
    StrList.Free
  end;
end;

function RequestBase(AQuery: string; var AData: string; var AErrCode: Integer;
  var AErrMsg: string; ATimeOut: Integer): Boolean;
var
  xdom: msDomDocument;
  StrList: TStringList;
begin
  Result := False;

  StrList := TStringList.Create;
  try
    if dm.SendSock(AQuery, StrList, AErrCode, False, ATimeOut) then
    begin
      AData := StrList[0];
      xdom := ComsDomDocument.Create;
      try
        if not xdom.loadXML(AData) then
        begin
          AErrCode := -1;
          AErrMsg := ERR_INVALID_XMLFORMAT;
          Exit;
        end;

        AErrCode := GetXmlErrorCodeNum(AData);
        AErrMsg := GetXmlErrorMsg(AData);
        if AErrCode <> 0 then
        begin
          AData := '';
          Exit;
        end;

        Result := True;
      finally
        xdom := Nil;
      end;
    end;
  finally
    StrList.Free
  end;
end;

function RequestBasePaging(AQuery: string; var AData: TStringList;
  var AErrCode: Integer; var AErrMsg: string; ATimeOut: Integer): Boolean;
var
  xdom: msDomDocument;
begin
  Result := False;
  try
    if dm.SendSock(AQuery, AData, AErrCode, False, ATimeOut) then
    begin
      xdom := ComsDomDocument.Create;
      try
        if not xdom.loadXML(AData[0]) then
        begin
          AErrCode := -1;
          AErrMsg := ERR_INVALID_XMLFORMAT;
          Exit;
        end;

        AErrCode := GetXmlErrorCodeNum(AData[0]);
        AErrMsg := GetXmlErrorMsg(AData[0]);
        if AErrCode <> 0 then
        begin
          Exit;
        end;
        Result := True;
      finally
        xdom := Nil;
      end;
    end;
  finally
  end;
end;

function RequestBase(AQuery: string; var AErrCode: Integer; var AErrMsg: string;
  ATimeOut: Integer): Boolean;
var
  xdom: msDomDocument;
  StrList: TStringList;
  Data: string;
begin
  Result := False;

  StrList := TStringList.Create;
  try
    if dm.SendSock(AQuery, StrList, AErrCode, False, ATimeOut) then
    begin
      Data := StrList[0];
      xdom := ComsDomDocument.Create;
      try
        if not xdom.loadXML(Data) then
        begin
          AErrCode := -1;
          AErrMsg := ERR_INVALID_XMLFORMAT;
          Exit;
        end;

        AErrCode := GetXmlErrorCodeNum(Data);
        AErrMsg := GetXmlErrorMsg(Data);
        if AErrCode <> 0 then
        begin
          Exit;
        end;

        Result := True;
      finally
        xdom := Nil;
      end;
    end;
  finally
    StrList.Free
  end;
end;

function GetXml(const AXml, AKey: string): string;
begin
  Result := GTx_UnitXmlLoad(AXml + '.xml');
  Result := StringReplace(Result, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  Result := StringReplace(Result, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  Result := StringReplace(Result, 'ClientKeyString', AKey, [rfReplaceAll]);
end;

function GetSel01(const AKey, AQuery: string): string;
begin
  Result := GetXml('SEL01', AKey);

  Result := StringReplace(Result, 'QueryString', AQuery, [rfReplaceAll]);
end;

function GetSel04(const AKey, AQueryKey, AForward, ABackward: string;
  const AParams: array of string; APaging: Integer): string;
var
  I: Integer;
  xdom: msDomDocument;
  Node, ParamNode: IXMLDOMNodeList;
begin
  Result := '';

  try
    xdom := ComsDomDocument.Create;
    try
      if (not xdom.loadXML(GetXml('SEL04', AKey))) then
      begin
        Exit;
      end;

      Node := xdom.documentElement.selectNodes('/cdms/Service/Data/Query');
      Node.item[0].attributes.getNamedItem('Key').Text := AQueryKey;
      Node.item[0].attributes.getNamedItem('Forward').Text := AForward;
      Node.item[0].attributes.getNamedItem('Backward').Text := ABackward;
      Node.item[0].attributes.getNamedItem('Paging').Text :=
        IfThen(APaging = -1, '', IntToStr(APaging));
      ParamNode := xdom.documentElement.selectNodes
        ('/cdms/Service/Data/Query/Param');
      // 전문에 1개 있고 총 5개가 있어야 함(4개 추가)
      for I := 1 to Length(AParams) - 1 do
      begin
        Node.item[0].appendChild(ParamNode.item[0].cloneNode(True));
      end;

      ParamNode := xdom.documentElement.selectNodes
        ('/cdms/Service/Data/Query/Param');
      for I := 0 to Length(AParams) - 1 do
      begin
        ParamNode.item[I].attributes.getNamedItem('Seq').Text := IntToStr(I + 1);
        ParamNode.item[I].attributes.getNamedItem('Value').Text := AParams[I];
      end;

      Result := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 +
        xdom.documentElement.xml;
    finally
      xdom := Nil;
    end;
  except
    on E: Exception do
      Assert(False, E.Message);
  end;
end;

function GetSel05(const AKey, AQuery, APaging, AParam: string): string;
begin
  Result := GetXml('SEL05', AKey);

  Result := StringReplace(Result, 'QueryKeyString', AQuery, [rfReplaceAll]);
  Result := StringReplace(Result, 'QueryPagingString', APaging, [rfReplaceAll]);
  Result := StringReplace(Result, 'ParamString', AParam, [rfReplaceAll]);
  Result := StringReplace(Result, 'ParamString', AParam, [rfReplaceAll]);
end;

function GetSel06(const AKey, AQuery, APaging, AParam: string): string;
begin
  Result := GetXml('SEL06', AKey);

  Result := StringReplace(Result, 'QueryKeyString', AQuery, [rfReplaceAll]);
  Result := StringReplace(Result, 'QueryPagingString', APaging, [rfReplaceAll]);
  Result := StringReplace(Result, 'ParamString', AParam, [rfReplaceAll]);
  Result := StringReplace(Result, 'ParamString', AParam, [rfReplaceAll]);
end;

function GetCallable05(const AKey, ACall, AParam: string): string;
begin
  Result := GetXml('CALLABLE05', AKey);

  Result := StringReplace(Result, 'CallString', ACall, [rfReplaceAll]);
  Result := StringReplace(Result, 'ParamString', AParam, [rfReplaceAll]);
end;

function GetCallable06(const AKey, ACall, AParam: string): string;
begin
  Result := GetXml('CALLABLE06', AKey);

  Result := StringReplace(Result, 'CallString', ACall, [rfReplaceAll]);
  Result := StringReplace(Result, 'ParamString', AParam, [rfReplaceAll]);
end;

function GetC001Login(const AKey, AMacAddr, AHddSN, AHddSN2, AMBSN, ACPUSN, ACompName,
  ALockCode, AVer, AClientVer, AMode: string): string;
begin
  Result := GetXml('C001N2', AKey);

  Result := StringReplace(Result, 'UserIDValue', En_Coding(GT_USERIF.ID),  [rfReplaceAll]);
	Result := StringReplace(Result, 'UserPWValue', En_Coding(GT_USERIF.HashPW),  [rfReplaceAll]);
  Result := StringReplace(Result, 'LocalIPString', GT_USERIF.IP,           [rfReplaceAll]);

  Result := StringReplace(Result, 'MacAddressString', RemoveAll(AMacAddr, '-'),   [rfReplaceAll]);
  Result := StringReplace(Result, 'HDDSNString', RemoveAll(AHddSN, '-'),     [rfReplaceAll]);
  Result := StringReplace(Result, 'HDDSN2String', RemoveAll(AHddSN2, '-'),     [rfReplaceAll]);
  Result := StringReplace(Result, 'MBSNString', AMBSN, [rfReplaceAll]);
  Result := StringReplace(Result, 'CPUSNString', ACPUSN, [rfReplaceAll]);
  Result := StringReplace(Result, 'CompNameString', ACompName, [rfReplaceAll]);
  Result := StringReplace(Result, 'LockCodeString', ALockCode, [rfReplaceAll]);
	Result := StringReplace(Result, 'VersionString', AVer, [rfReplaceAll]);         //<-서버 버전체크
  Result := StringReplace(Result, 'ClientVeriString', AClientVer, [rfReplaceAll]);

  Result := StringReplace(Result, 'Flag="FlagString"',   'Flag="FlagString" LoginMode="LoginModeString"', [rfReplaceAll]);

  Result := StringReplace(Result, 'FlagString', '1', [rfReplaceAll]);
  Result := StringReplace(Result, 'LoginModeString', AMode, [rfReplaceAll]);
end;

function GetC001Logout(const AKey: string): string;
begin
  Result := GetXml('C001N2', AKey);

	Result := StringReplace(Result, 'UserIDValue', GT_USERIF.ID, [rfReplaceAll]);
	Result := StringReplace(Result, 'UserPWValue', GT_USERIF.HashPW, [rfReplaceAll]);
  Result := StringReplace(Result, 'LocalIPString', GT_USERIF.IP, [rfReplaceAll]);
  Result := StringReplace(Result, 'FlagString', '0', [rfReplaceAll]);
end;

function GetC025WkCash(const AKey, AHdNo, ABrNo, AWkSabun, AMemo: string;
  ACash: Integer): string;
begin
  Result := GetXml('C025', AKey);

  Result := StringReplace(Result, 'HdNoString', AHdNo, [rfReplaceAll]);
  Result := StringReplace(Result, 'BrNoString', ABrNo, [rfReplaceAll]);
  Result := StringReplace(Result, 'WkSabunString', AWkSabun, [rfReplaceAll]);
  Result := StringReplace(Result, 'CashString', IntToStr(ACash),
    [rfReplaceAll]);
  Result := StringReplace(Result, 'MemoString', AMemo, [rfReplaceAll]);
end;

end.

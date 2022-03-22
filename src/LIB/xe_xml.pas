unit xe_xml;

interface

uses
  sysutils, Classes, Vcl.Dialogs, StrUtils, MSXML2_TLB;

function GetXmlClientKey(ss_Xml: WideString): string;
function GetXmlErrorCodeNum(ss_Xml: WideString): Integer;
function GetXmlErrorMsg(ss_Xml: WideString): string;
function GTx_UnitXmlLoad(sXmlNum: WideString): WideString;
function GetXmlErrorCode(ss_Xml: WideString): string;
function GetXmlRecordCount(ss_Xml: WideString): Integer; overload;
function GetXmlRecordCount(AXmlDom: msDOMDocument): Integer; overload;
function GetXmlHasMore(ss_Xml: WideString): string;
function GetXmlServiceID(ss_Xml: WideString): string;
function GetXmlResult(ss_Xml: WideString): string;

implementation

uses xe_Func, xe_gnl;

function GetXmlErrorCodeNum(ss_Xml: WideString): Integer;
var
  xdom: msDOMDocument;
  lst_Node: IXMLDomNodeList;
  sResult: string;
begin
  Result := -1;

  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ss_Xml) then
    begin
      Log('GetXmlErrorCode loadXML Error', LOGDATAPATHFILE);
      Exit;
    end;

    lst_Node := xdom.documentElement.selectNodes('/cdms/Service/Error');
    sResult := lst_Node.item[0].attributes.getNamedItem('Code').Text;
    Result := StrToIntDef(sResult, -1);
  finally
    xdom := Nil;
  end;
end;

function GetXmlErrorMsg(ss_Xml: WideString): string;
var
  xdom: msDOMDocument;
  lst_Node: IXMLDomNodeList;
begin
  Result := '';
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ss_Xml) then
    begin
      Log('GetXmlErrorCode loadXML Error', LOGDATAPATHFILE);
      Exit;
    end;

    lst_Node := xdom.documentElement.selectNodes('/cdms/Service/Error');
    Result := lst_Node.item[0].attributes.getNamedItem('Message').Text;
  finally
    xdom := Nil;
  end;
end;

function GTx_UnitXmlLoad(sXmlNum: WideString): WideString;
var
  i: Integer;
begin
  Result := '';

  i := -1;
  if Assigned(LXML_DATA.slXmlName) then
    i := LXML_DATA.slXmlName.IndexOf(sXmlNum);
  if i > -1 then
    Result := LXML_DATA.slXmlData[i]
  else
    Result := '';
end;

function GetXmlErrorCode(ss_Xml: WideString): string;
var
  xdom: msDOMDocument;
  lst_Node: IXMLDomNodeList;
begin
  Result := '';

  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ss_Xml) then
    begin
      Exit;
    end;

    lst_Node := xdom.documentElement.selectNodes('/cdms/Service/Error');
    Result := lst_Node.item[0].attributes.getNamedItem('Code').Text;
    if Result <> '0000' then
      Result := Result + ' : ' + lst_Node.item[0].attributes.getNamedItem('Message').Text;
  finally
    xdom := Nil;
  end;
end;

function GetXmlClientKey(ss_Xml: WideString): string;
var
  xdom: msDOMDocument;
  lst_Node: IXMLDomNodeList;
begin
  Result := '';
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ss_Xml) then
    begin
      Log('GetXmlClientKey loadXML Error', LOGDATAPATHFILE);
      Exit;
    end;

    lst_Node := xdom.documentElement.selectNodes('/cdms/header/ClientKey');
    Result := lst_Node.item[0].attributes.getNamedItem('Value').Text;
  finally
    xdom := Nil;
  end;
end;

function GetXmlHasMore(ss_Xml: WideString): string;
var
  xdom: msDOMDocument;
  lst_Node: IXMLDomNodeList;
begin
  Result := '';
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ss_Xml) then
    begin
      Log('GetXmlClientKey loadXML Error', LOGDATAPATHFILE);
      Exit;
    end;

    lst_Node := xdom.documentElement.selectNodes('/cdms/Service/Data');
    Result := lst_Node.item[0].attributes.getNamedItem('HasMore').Text;
  finally
    xdom := Nil;
  end;
end;

function GetXmlRecordCount(ss_Xml: WideString): Integer;
var
  xdom: msDOMDocument;
begin
  Result := 0;
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ss_Xml) then
    begin
      Log('GetXmlRecordCount loadXML Error', LOGDATAPATHFILE);
      Exit;
    end;

    Result := GetXmlRecordCount(xdom);
  finally
    xdom := Nil;
  end;
end;

function GetXmlRecordCount(AXmlDom: msDOMDocument): Integer;
var
  lst_Data: IXMLDomNodeList;
begin
  lst_Data := AXmlDom.documentElement.selectNodes('/cdms/Service/Data');
  Result := StrToIntDef(lst_Data.item[0].attributes.getNamedItem('Count').Text, 0)
end;

function GetXmlResult(ss_Xml: WideString): string;
var
  xdom: msDOMDocument;
  lst_Node: IXMLDomNodeList;
begin
  Result := '';
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ss_Xml) then
    begin
      Log('GetXmlErrorCode loadXML Error', LOGDATAPATHFILE);
      Exit;
    end;

    lst_Node := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
    Result := lst_Node.item[0].attributes.getNamedItem('Value').Text;
  finally
    xdom := Nil;
  end;
end;

function GetXmlServiceID(ss_Xml: WideString): string;
var
  xdom: msDOMDocument;
  lst_Data: IXMLDomNodeList;
begin
  Result := '';
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ss_Xml) then
    begin
      Log('GetXmlServiceID loadXML Error', LOGDATAPATHFILE);
      Exit;
    end;

    lst_Data := xdom.documentElement.selectNodes('/cdms/Service');
    Result := lst_Data.item[0].attributes.getNamedItem('ID').Text;
  finally
    xdom := Nil;
  end;
end;

end.

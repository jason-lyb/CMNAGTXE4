unit xe_XmlProtocal;

interface

uses
  Classes, SysUtils, xe_gnl ;

procedure gfnc_XML_LOCAL_MAKE();
procedure gfnc_XML_LOCAL_MAKE1();
procedure gfnc_XML_LOCAL_MAKE2();

implementation

// ================================================================= 2011-10-16
//  XML���� Protocal Unit ���
//  [�ű��߰��п� ���ؼ��� mx.mx ������ ������� �ʰ� ����unit�� ����Ѵ�.]
procedure gfnc_XML_LOCAL_MAKE();
var
	sTmp : WideString;
begin
	LXML_DATA.slXmlName := TStringList.Create; // Xml ������ ����.
  LXML_DATA.slXmlData := TStringList.Create; // Xml ���� ������ ����.

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><CallManner version="1.0"><Session user="useridstring" remote="������" rqst="��û�ð�" resp=""/><Resp code="" msg="Mac Address"/>'
        + '<Biz id="10001" version="1.0"><Branches title="�������" action="SELECT" cnt="�Ǽ�" branch="�˻������ڵ�" head="�˻������ڵ�" type="�����ڵ�(1),�����(2),��ǥ��ȣ(3),���系�����������(4),��ġ���(5),�ݼ�Ÿ�(6,"y")" value="type �� �ڵ�">'
        + '<Branch use="��뿩��" head="�����ڵ�" head_name="�����" no="�����ڵ�" name="�����" area_code="�����ڵ�" master_id="Master_ID" password="��й�ȣ" company_no="����ڹ�ȣ" ceo="��ǥ�ڸ�" mobile="�ڵ�����ȣ" phone="��Ȳ����ȭ��ȣ"'
        + ' fax="�ѽ���ȣ" zipcode="�����ȣ" address1="�����ȣ�ּ�" address2="���ּ�" cybank="������������ڵ�" cybank_account="������¹�ȣ" cash="����ĳ��" callcenter="�ݼ��������ڵ�" callrouting="��ǥ��ȣ����ü���" management_fee="���α׷�����/��"'
        + ' program_value="������/��" cybank_yn="��纰������»�뿩��" insurance_yn="������������" pn_worker="����������г�Ƽ" pn_center="������������г�Ƽ" program_fee_type="�����������ҹ��" cms_method="����������" cms_type="��������������"'
        + ' cms_value="�����������갪" share_level="���系�����������" lbs_yn="��ġ��ݻ�뿩��(y/n)" match_yn="��Ī������뿩��(y/n)" vm_touch="��Ŭ���������" cancel_yn="���ܸ��������ҿ���" order_view="��������Ʈǥ���׸�" max_area="���������ִ�Ÿ�(km)"'
        + ' order_block_price="�����������ܿ��" sms_deposit="SMSĳ��" sms_price_ad="����SMS�ܰ�" sms_price_real="�Ϲ�SMS�ܰ�" sms_delay="SMS�߼������ð�" in_date="�����">�޸�</Branch></Branches><Codes title="�ڵ����" action="SELECT" cnt="" system="�ý����ڵ�" detail="�����ڵ�">'
        + ' </Codes><Codes title="�ڵ����" action="SELECT" cnt="" system="�ý����ڵ�" detail="�����ڵ�"></Codes><Fees title="������ǥ" action="SELECT" cnt="" head="�����ڵ�" branch="�����ڵ�" method="" type="" value=""></Fees><BranchTel action="SELECT" branch="�����ڵ�" >'
        + ' <Item phone="��ǥ��ȣ" order_type="��������" base_charge="�⺻���" sido="����� ��/��" gugun="����� ��/��/��" /></BranchTel><MapCity action="SELECT"></MapCity><Member title="�����" action="SELECT" userid="����� ID" cnt=""><Item userid="" name="" password="" />'
        + ' </Member></Biz></CallManner>';
	LXML_DATA.slXmlName.Add('Branch.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><CallManner version="1.0"><Session user="goodwith" remote="" rqst="" resp=""/><Resp code="" msg=""/><Biz id="10001" version="1.0">'
        + ' <BranchConfig title="���� Config" action="SELECT" branch="�����ڵ�" code="Config ����"></BranchConfig></Biz></CallManner>';
	LXML_DATA.slXmlName.Add('BranchConfig.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <Header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</Header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C001" Name="">	<Error Code="" Message="" />'
        + ' <Data> <User ID="UserIDValue" Pass="UserPWValue" LocalIP="LocalIPString" MacAddress="MacAddressString" Flag="FlagString" /> </Data> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C001.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <Header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</Header>'
        +	' <Service VersionNum="CallServer 1.0" ID="C001N1" Name=""> <Error Code="" Message="" />'
        + ' <Data> <User ID="UserIDValue" Pass="UserPWValue" LocalIP="LocalIPString" MacAddress="MacAddressString" Serial="SerialString" Flag="FlagString" />	</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C001N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <Header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</Header>'
        + ' <Service VersionNum="CallServer 1.0" ID="C001N2" Name="">	<Error Code="" Message="" />'
        + ' <Data> <User ID="UserIDValue" Pass="UserPWValue" LocalIP="LocalIPString" MacAddress="MacAddressString" Serial="SerialString" Flag="FlagString" HDDSN="HDDSNString" HDDSN2="HDDSN2String" MBSN="MBSNString"'
        + ' CPUSN="CPUSNString" Name="CompNameString" LockCode="LockCodeString" Version="VersionString" ClientVersion="ClientVeriString"	/> </Data> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C001N2.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</header>'
        + ' <Service VersionNum="CallServer 1.0" ID="C002" Name="AcceptList">	<Error Code="" Message="" /> <Data>'
        + '	<User Level="LevelString" CallCenter="CallCenterString" HdNo="HdNoString" BrNo="BrNoString" RouteMS="RouteMSString" />'
        + ' <Accept Status="StatusCode" LastUpdate="LastUpdateString" BrNo="BrNoStString" />'
        + ' <Search Option="OptionString" Keyword="KeywordString" FromCity="FromCityString" FromWard="FromWardString" FromDate="FromDateString" ToDate="ToDateString" MyCall="MyCallString" /> </Data> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C002.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</header>'
        + ' <Service VersionNum="CallServer 1.0" ID="C002N1" Name="AcceptList">	<Error Code="" Message="" />'
        + ' <Data> <User Level="LevelString" CallCenter="CallCenterString" HdNo="HdNoString" BrNo="BrNoString" RouteMS="RouteMSString" />'
        + '	<Accept Status="StatusCode" LastUpdate="LastUpdateString" BrNo="BrNoStString" />'
        + '	<Search Option="OptionString" Keyword="KeywordString" FromCity="FromCityString" FromWard="FromWardString" FromDate="FromDateString"'
        + ' ToDate="ToDateString" MyCall="MyCallString" OwnerCall="OwnerCallString" ManualBaecha="ManualBaechaString" Detail="DetailString"/>	</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C002N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C003" Name="AcceptRegister"> <Error Code="" Message="" />'
        + ' <Data> <Accept Status="StatusString" CustTel="CustTelString" InSabun="InSabunString" CallCenter="CallCenterString" MaddBrch="MaddBrchString" KeyNumber="KeyNumberString"'
        + ' ConfMemo="ConfMemoString" ConfBrch="ConfBrchString" ConfBar="ConfBarString" ConfPretime="ConfPretimeString" GroupNo="GroupNoString" CustName="CustNameString"'
        + ' CarInfo="CarInfoString" BrTelYn="BrTelYnString" WkSabun="WkSabunString" SMS="SMSString" CustTel2="CustTel2String" CID="CIDString" BGroup="BGroupString" BName="BNameString"'
        + ' BName2="BName2String" CuSeq="CuSeqString" BaechaSMS="BaechaSMSString" /> <DepartInfo Count="AddressCountString"> DepartInfoString	</DepartInfo>	<DestInfo Count="AddressCountString">'
        + ' DestInfoString</DestInfo>	<ViaInfo Count="ViaInfoCountString"> ViaInfoString </ViaInfo> </Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C003.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C003N1" Name="AcceptRegister"> <Error Code="" Message="" /> <Data> <Accept Status="StatusString" CustTel="CustTelString"'
        + ' InSabun="InSabunString" CallCenter="CallCenterString" MaddBrch="MaddBrchString" KeyNumber="KeyNumberString" ConfMemo="ConfMemoString" ConfBrch="ConfBrchString"'
        + ' ConfBar="ConfBarString" ConfPretime="ConfPretimeString" GroupNo="GroupNoString" CustName="CustNameString" CarInfo="CarInfoString" BrTelYn="BrTelYnString" WkSabun="WkSabunString"'
        + ' SMS="SMSString" CustTel2="CustTel2String" CID="CIDString" BGroup="BGroupString" BName="BNameString" BName2="BName2String" CuSeq="CuSeqString" BaechaSMS="BaechaSMSString"'
        + ' LevelCD="LevelCdString" ConfInfo2="ConfInfo2String" ViaCharge="ViaChargeViaString" WaitTime="WTimeWTString" WaitCharge="WChargeWCString" AddCharge="AChargeACString"/>'
        + ' <DepartInfo Count="AddressCountString"> DepartInfoString </DepartInfo> <DestInfo Count="AddressCountString"> DestInfoString </DestInfo> <ViaInfo Count="ViaInfoCountString">ViaInfoString</ViaInfo> </Data> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C003N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C003N2" Name="AcceptRegister"> <Error Code="" Message="" /> <Data> <Accept Status="StatusString" CustTel="CustTelString"'
        + ' InSabun="InSabunString" CallCenter="CallCenterString" MaddBrch="MaddBrchString" KeyNumber="KeyNumberString" ConfMemo="ConfMemoString" ConfBrch="ConfBrchString"'
        + ' ConfBar="ConfBarString" ConfPretime="ConfPretimeString" GroupNo="GroupNoString" CustName="CustNameString" CarInfo="CarInfoString" BrTelYn="BrTelYnString" WkSabun="WkSabunString"'
        + ' SMS="SMSString" CustTel2="CustTel2String" CID="CIDString" BGroup="BGroupString" BName="BNameString" BName2="BName2String" CuSeq="CuSeqString" BaechaSMS="BaechaSMSString"'
        + ' LevelCD="LevelCdString" ConfInfo2="ConfInfo2String" ViaCharge="ViaChargeViaString" WaitTime="WTimeWTString" WaitCharge="WChargeWCString" AddCharge="AChargeACString"'
        + ' Option="OptionString" PostTime="PostTimeString" PostCharge="PostChargeString" CidLogSeq="CidLogSeqString" DNIS="DNISString" PlusYn="PlusYnString" DriverCharge="DriverChargeString"/>'
        + ' <DepartInfo Count="AddressCountString"> DepartInfoString </DepartInfo> <DestInfo Count="AddressCountString"> DestInfoString </DestInfo> <ViaInfo Count="ViaInfoCountString"> ViaInfoString </ViaInfo> </Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C003N2.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C004" Name="AcceptModify"> <Error Code="" Message="" /> <Data> <Accept ConfSlip="ConfSlipString" InSabun="InSabunString"'
        + ' Charge="ChargeString" ConfStatus="ConfStatusString" Mode="ModeString" CustTel="CustTelString" CustName="CustNameString" CarInfo="CarInfoString" Memo="ConfMemoString"'
        + ' CustTel2="CustTel2String" PayGubun="PayGubunString" MCharge="MChargeString" URLReq="URLReqString" BGroup="BGroupString" BName="BNameString" BName2="BName2String"'
        + ' CuSeq="CuSeqString" ConfBar="ConfBarString" KeyNumber="KeyNumberString" BrNo="BrNoString" ConfPretime="ConfPretimeString" />'
        + ' <Depart Area1="stArea1String" Area2="stArea2String" Area3="stArea3String" Area4="stArea4String" Area5="stArea5String" ConfInfo="ConfInfoString" MapX="stMapXString"'
        + ' MapY="stMapYString" /> <Dest Area1="edArea1String" Area2="edArea2String" Area3="edArea3String" Area4="edArea4String" Area5="edArea5String" MapX="edMapXString"'
        + ' MapY="edMapYString" />			<ViaInfo Count="ViaInfoCountString"> ViaInfoString </ViaInfo>	</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C004.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C004N1" Name="AcceptModify">		<Error Code="" Message="" /> <Data>	<Accept ConfSlip="ConfSlipString" InSabun="InSabunString"'
        + ' Charge="ChargeString" ConfStatus="ConfStatusString" Mode="ModeString" CustTel="CustTelString" CustName="CustNameString" CarInfo="CarInfoString" Memo="ConfMemoString"'
        + ' CustTel2="CustTel2String" PayGubun="PayGubunString" MCharge="MChargeString" URLReq="URLReqString" BGroup="BGroupString" BName="BNameString" BName2="BName2String"'
        + ' CuSeq="CuSeqString" ConfBar="ConfBarString" KeyNumber="KeyNumberString" BrNo="BrNoString" ConfPretime="ConfPretimeString" ConfInfo2="ConfInfo2String"'
        + ' ViaCharge="ViaChargeViaString" WaitTime="WTimeWTString" WaitCharge="WChargeWCString" AddCharge="AChargeACString"/> <Depart Area1="stArea1String" Area2="stArea2String"'
        + ' Area3="stArea3String" Area4="stArea4String" Area5="stArea5String" ConfInfo="ConfInfoString" MapX="stMapXString" MapY="stMapYString" />'
        + '	<Dest Area1="edArea1String" Area2="edArea2String" Area3="edArea3String" Area4="edArea4String" Area5="edArea5String" MapX="edMapXString" MapY="edMapYString" />'
        + '	<ViaInfo Count="ViaInfoCountString"> ViaInfoString </ViaInfo>	</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C004N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C004N2" Name="AcceptModify"> <Error Code="" Message="" /> <Data> <Accept ConfSlip="ConfSlipString" InSabun="InSabunString"'
        + ' Charge="ChargeString" ConfStatus="ConfStatusString" Mode="ModeString" CustTel="CustTelString" CustName="CustNameString" CarInfo="CarInfoString" Memo="ConfMemoString"'
        + ' CustTel2="CustTel2String" PayGubun="PayGubunString" MCharge="MChargeString" URLReq="URLReqString" BGroup="BGroupString" BName="BNameString" BName2="BName2String"'
        + ' CuSeq="CuSeqString" ConfBar="ConfBarString" KeyNumber="KeyNumberString" BrNo="BrNoString" ConfPretime="ConfPretimeString" ConfInfo2="ConfInfo2String"'
        + ' ViaCharge="ViaChargeViaString" WaitTime="WTimeWTString" WaitCharge="WChargeWCString" AddCharge="AChargeACString" BrTelYn="BrTelYnString" SMS="SMSString"/>'
        + ' <Depart Area1="stArea1String" Area2="stArea2String" Area3="stArea3String" Area4="stArea4String" Area5="stArea5String" ConfInfo="ConfInfoString" MapX="stMapXString"'
        + ' MapY="stMapYString" /> <Dest Area1="edArea1String" Area2="edArea2String" Area3="edArea3String" Area4="edArea4String" Area5="edArea5String" MapX="edMapXString"'
        + ' MapY="edMapYString" /> <ViaInfo Count="ViaInfoCountString"> ViaInfoString	</ViaInfo> </Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C004N2.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C004N3" Name="AcceptModify"> <Error Code="" Message="" /> <Data>	<Accept ConfSlip="ConfSlipString" InSabun="InSabunString"'
				+ ' Charge="ChargeString" ConfStatus="ConfStatusString" Mode="ModeString" CustTel="CustTelString" CustName="CustNameString" CarInfo="CarInfoString" Memo="ConfMemoString"'
        + ' CustTel2="CustTel2String" PayGubun="PayGubunString" MCharge="MChargeString" URLReq="URLReqString" BGroup="BGroupString" BName="BNameString" BName2="BName2String"'
        + ' CuSeq="CuSeqString" ConfBar="ConfBarString" KeyNumber="KeyNumberString" BrNo="BrNoString" ConfPretime="ConfPretimeString" ConfInfo2="ConfInfo2String"'
        + ' ViaCharge="ViaChargeViaString" WaitTime="WTimeWTString" WaitCharge="WChargeWCString" AddCharge="AChargeACString" BrTelYn="BrTelYnString" SMS="SMSString"'
        + ' Option="OptionString" ChangeStatus="ChangeStatusString" PostTime="PostTimeString" PostCharge="PostChargeString" PlusYn="PlusYnString" DriverCharge="DriverChargeString" />'
        + '	<Depart Area1="stArea1String" Area2="stArea2String" Area3="stArea3String" Area4="stArea4String" Area5="stArea5String" ConfInfo="ConfInfoString" MapX="stMapXString"'
				+ ' MapY="stMapYString" /> <Dest Area1="edArea1String" Area2="edArea2String" Area3="edArea3String" Area4="edArea4String" Area5="edArea5String" MapX="edMapXString"'
        + ' MapY="edMapYString" /> <ViaInfo Count="ViaInfoCountString">	ViaInfoString	</ViaInfo> </Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C004N3.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C005" Name="AcceptCancel">	<Error Code="" Message="" /> <Data> <Accept ConfSlip="ConfSlipString" InSabun="InSabunString"'
        + ' Reason="ReasonString" CurStatus="CurStatusString" SMS="SMSString" PenalTime="PenalTimeString" PenalCharge="PenalChargeString" Gubun="GubunString" SMSCust="SMSCustString"'
        + ' CancelCode="CancelCD" />	</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C005.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
				+ '	<Service VersionNum="CallServer 1.0" ID="C006" Name="ManualMatch"> <Error Code="" Message="" /> <Data> <Match ConfSlip="ConfSlipString" InSabun="InSabunString"'
				+ ' WkSabun="WkSabunString" ConfWkSabun="ConfWkSbString" OdbWkSabun="OdbWkSbString" CurStatus="CurStatusString" Gubun="GubunString" BaechaSMS="BaechaSMSString"'
				+ ' BrNo="BranchCode" /> </Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C006.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms><header><UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C007" Name="AcceptHold">	<Error Code="" Message="" /> <Data>	<Accept ConfSlip="ConfSlipString" CurStatus="CurStatusString"'
        + ' InSabun="InSabunString" GubunCode="GubunCodeString" /> </Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C007.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C008" Name="ReAccept">	<Error Code="" Message="" /> <Data>	<Accept ConfSlip="ConfSlipString" InSabun="InSabunString"'
        + ' CurStatus="CurStatusString" BaechaYn="BaechaYnString" /> </Data> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C008.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C009" Name="Lock">	<Error Code="" Message="" /> <Data> <Accept ConfSlip="ConfSlipString" CurStatus="ConfStatusString"'
        + ' InSabun="InSabunString" GubunCode="GubunCodeString" /> </Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C009.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C010" Name="AcceptComplete">	<Error Code="" Message="" /> <Data>	<Accept ConfSlip="ConfSlipString" InSabun="InSabunString"'
        + ' CurStatus="CurStatusString" ConfCharge="ConfChargeString" /> </Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C010.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C011" Name="Authentication">	<Error Code="" Message="" /> <Data>	<Auth ID="IDString" Gubun="GubunString"'
        + ' MacAddress="MacAddressString" Code="CodeString"/>	</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C011.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C011N1" Name="Authentication">	<Error Code="" Message="" /> <Data> <Auth	ID="IDString"	Gubun="GubunString"	MacAddress="MacAddressString"'
        + '	Code="CodeString"	LocalIP="LocalIPString"	HDDSN="HDDSNString"	 HDDSN2="HDDSN2String" MBSN="MBSNString"	CPUSN="CPUSNString"	Name="CompNameString"	UserHP="UserHPString"/> </Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C011N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header> <UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C012" Name="DriverStatus">	<Error Code="" Message="" /> <Data>	<Driver InSabun="InSabunString" WkSabun="WkSabunString"'
        + ' WkStatus="WkStatusString" Memo="MemoString" /> </Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C012.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C012N1" Name="DriverStatus">	<Error Code="" Message="" /> <Data>	<Driver InSabun="InSabunString" WkSabun="WkSabunString"'
        + ' WkStatus="WkStatusString" Memo="MemoString" WkAttend="WkAttendString"/>	</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C012N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C013" Name="CustInfo">	<Error Code="" Message="" /> <Data>	<Accept KeyNumber="KeyNumberString" CustTel="CustTelString"'
        + ' CallCenter="CallCenterString" District="DistrictString" CID="CIDString" /> </Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C013.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        +	' <Service VersionNum="CallServer 1.0" ID="C013N1" Name="CustInfo"> <Error Code="" Message="" /> <Data>	<Accept KeyNumber="KeyNumberString" CustTel="CustTelString"'
        + ' CallCenter="CallCenterString" District="DistrictString" CID="CIDString" BRNO="BrNoString" /> </Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C013N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C013N2" Name="CustInfo">	<Error Code="" Message="" /> <Data>	<Accept KeyNumber="KeyNumberString" CustTel="CustTelString"'
        + ' CallCenter="CallCenterString" District="DistrictString" CID="CIDString" BRNO="BrNoString" /> </Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C013N2.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C013N3" Name="CustInfo">	<Error Code="" Message="" /> <Data> <Accept KeyNumber="KeyNumberString" CustTel="CustTelString"'
        + ' CID="CIDString" BRNO="BrNoString" DNIS="DNISString"/>	</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C013N3.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C014" Name="ShareInfo"> <Error Code="" Message="" />	<Data>	<UserInfo HdNo="HdNoString" BrNo="BrNoString" />	</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C014.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header> <UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
				+ '	<Service VersionNum="CallServer 1.0" ID="C015" Name="AcceptDetail">	<Error Code="" Message="" /> <Data>	<Accept Gubun="GubunString" Param="ParamString" Param2="Param2String"'
				+	' VPhone="VPhoneString" Conf_slip="Conf_slipString"/> </Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C015.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header> <UserID Value="UserIDStr2" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C016" Name="MASSMessage"> <Error Code="" Message="" />	<Data> <Common UserID="UserIDString" BrNo="BrNoString"'
        + ' KeyNumber="KeyNumberString" CallBack="CallBackString" Message="MessageString" RsvTime="RsvTimeString" TotalPage="TotalPageString" CurPage="CurPageString"'
        + ' TransID="TransIDString" TotalCount="TotalCountString" /> <ToNumber Count="CountString" Value="ValueString" />	</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C016.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header>'
        + ' <Service VersionNum="CallServer 1.0" ID="C017" Name="ExcelAuth"><Error Code="" Message="" /><Data><UserInfo HdNo="HdNoString" BrNo="BrNoString" MacAddress="MacAddressString"'
        + ' Excel="ExcelString" AuthYN = "AuthYNString" HDDSN="HDDSNString" LocalIP="LocalIPString" CompName="CompNameString" LoginDate="LoginDateString"/></Data></Service></cdms>';
	LXML_DATA.slXmlName.Add('C017.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        +	' <Service VersionNum="CallServer 1.0" ID="C018" Name="WorkerAttend">	<Error Code="" Message="" /> <Data>	<UserInfo Level="LevelString" HdNo="HdNoString" BrNo="BrNoString"'
        + ' CallCenter="CallCenterString" /> </Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C018.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C019" Name="WorkerOrder"> <Error Code="" Message="" />	<Data> <WorkerInfo BrNo="BrNoString" />	</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C019.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C020" Name="AcceptShare"> <Error Code="" Message="" />	<Data> <Accept ConfSlip="ConfSlipString" InSabun="InSabunString" CurStatus="CurStatusString" />	</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C020.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <Header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</Header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C021" Name="PrizeApply">	<Error Code="" Message="" /> <Data>	<Customer CustTel="CustTelString" Prize="PrizeString"'
        + ' PrizeMlg="PrizeMlgString" InSabun="InSabunString" CuSeq="CuSeqString" /> </Data> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C021.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <Header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</Header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C021N1" Name="PrizeApply">	<Error Code="" Message="" /> <Data>	<Customer CustTel="CustTelString" Prize="PrizeString"'
        + '	PrizeMlg="PrizeMlgString" InSabun="InSabunString"	CuSeq="CuSeqString"	UserMemo="UserMemoString"/>	</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C021N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <Header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</Header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C022" Name="CashInOut"> <Error Code="" Message="" />	<Data> <Charge InSabun= "InSabunString" Type="TypeString" Cash="CashString"'
        + ' Memo="MemoString" /> <WorkerInfo Count="CountString">	WkSabunString	</WorkerInfo>	</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C022.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <Header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</Header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C022N1" Name="CashInOut"> <Error Code="" Message="" />	<Data> <Charge InSabun= "InSabunString" Type="TypeString" Cash="CashString"'
        + ' Memo="MemoString" /> <WorkerInfo Count="CountString">	WkSabunString	</WorkerInfo>	</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C022N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <Header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</Header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C023" Name="WkCashList">	<Error Code="" Message="" /> <Data>	<Search BrNo= "BrNoString" WkStatus="WkStatusString"'
        + ' CmsGrp="CmsGrpString" Keyword="KeywordString" FromDate="FromDateString" ToDate="ToDateString" Type ="TypeString" />	</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C023.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="" />	<ClientVer Value="" /> <ClientKey Value="" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C023N1" Name="WkCashList">	<Error Code="" Message="" /> <Data>	<Search BrNo="" WkStatus="" CmsGrp="" Keyword="" FromDate="" ToDate="" Type="" HdNo="" />		</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C023N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <Header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</Header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C024" Name="WkCashDetail">	<Error Code="" Message="" /> <Data>	<Search BrNo= "BrNoString" WkSabun="WkSabunString" FromDate="FromDateString" ToDate="ToDateString" />	</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C024.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C025" Name="WkCashCharge">	<Error Code="" Message="" /> <Data>	<Worker HdNo="HdNoString" BrNo="BrNoString" WkSabun="WkSabunString" Cash="CashString" Memo="MemoString" /> </Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C025.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C026" Name="MobilePay"> <Error Code="" Message="" />	<Data> <Worker ConfSlip="ConfSlipString" CustTel="CustTelString" Gubun="GubunString" />	</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C026.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C027" Name="Pickup">	<Error Code="" Message="" /> <Pickups action="actionString" WkSabun="WkSabunString" HdNo="HdNoString"'
        + ' Sequence="SequenceString" Status="StatusString" StartSi="StartSiString" StartGu="StartGuString" StartDong="StartDongString" StartDetail="StartDetailString"'
        + ' DestSi="DestSiString" DestGu="DestGuString" DestDong="DestDongString" DestDetail="DestDetailString" FromDate="FromDateString" ToDate="ToDateString" Count="CountString"'
        + ' BrName="BrNameString" WkPhone="WkPhoneString" >	<Pickup Sequence="" RegSabun="" RegSabun2="" PickupSabun="" Status="" StartSi="" StartGu="" StartDong="" StartDetail=""'
        + ' DestSi="" DestGu="" DestDong="" DestDetail="" InDate="" PickupTm="" PastTm="" Symbol="" WkPhone="" BrName=""  PickupSabun2="" PickupPhone="" RegBrNo="" PickupBrNo="" /> </Pickups>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C027.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C027N1" Name="Pickup">	<Error Code="" Message="" /> <Data action="actionString" WkSabunOption="WkSabunOptStr" WkSabun="WkSabunString"'
        + ' HdNo="HdNoString" Sequence="SequenceString" Status="StatusString" StartSi="StartSiString" StartGu="StartGuString" StartDong="StartDongString" StartDetail="StartDetailString"'
        + ' DestSi="DestSiString" DestGu="DestGuString" DestDong="DestDongString" DestDetail="DestDetailString" FromDate="FromDateString" ToDate="ToDateString" Count="CountString"'
        + ' BrName="BrNameString" WkPhone="WkPhoneString" CurPage="" HasMore="" StartMapX="StartMapXString" StartMapY="StartMapYString" DestMapX="DestMapXString" DestMapY="DestMapYString">'
        + ' <Pickup Sequence="" RegSabun="" RegSabun2="" PickupSabun="" Status="" StartSi="" StartGu="" StartDong="" StartDetail="" DestSi="" DestGu="" DestDong="" DestDetail="" InDate=""'
        + ' PickupTm="" PastTm="" Symbol="" WkPhone="" BrName=""  PickupSabun2="" PickupPhone="" RegBrNo="" PickupBrNo="" PickupBrName="" StartMapX="" StartMapY="" DestMapX="" DestMapY="" /> </Data> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C027N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C028" Name="WalkyTalky">	<Error Code="" Message="" /> <WalkyTalky action="actionString" BrWkSabun="BrWkSabunString" BrNo="BrNoString"'
        + ' BrNo2="BrNo2String" WkSabun="">	<Result WkArea="" LastCharge="" LastDArea="" LastTime="" Attend="" Time="" WkSabun="" WkName="" WkStatus="" TotalCharge="" FinishCount=""'
				+ ' WalkyTalky="" PenaltyTime=""/> </WalkyTalky> <Fail WkSabun=""/>	</Service></cdms>';  
	LXML_DATA.slXmlName.Add('C028.XML'); // XmlFileName Code                                        
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData                                                   

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header> <UserID Value="" /> <ClientVer Value="" /> <ClientKey Value="ClientKeyString" />	</header>'
				+ '	<Service VersionNum="CallServer 1.0" ID="C029" Name="Reserve"> <Error Code="" Message="" />	<Reserves action="SELECT/DETAIL/INSERT/UPDATE/CANCEL" WkSabun="" FromDate="" ToDate="" Cnt=""'
				+ ' BrNo="" RsvMemo="" ChargeType="" ChargeYn="y" >	<Reserve InsureDate="" AgeFrom="" AgeTo="" Sequence="" RsvDate="" InId="" BrNo="" ToBrNo="" WkStatus="" RsvMemo="" ChargeType="" Charge="" WkCount="" Memo="" InDate="" '
				+ ' StartDate="" Type="" Term="" EndDate="" AttendCnt="" WorkDates="" ChargeYn="y" CommissionType="" SmsYn="" FromNum1="" FromNum2="" FromNum3="">	<Detail WkSabun="" WkName="" WkStatus="" '
				+ ' WkCash="" WkCyCash="" WkSabun2="" ></Detail> </Reserve>	</Reserves>	</Service> </cdms>';
	LXML_DATA.slXmlName.Add('C029.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="" />	<ClientVer Value="" /> <ClientKey Value="" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C030" Name="CustomerMileage"> <Error Code="" Message="" />	<Mileages action="" FromDate="" ToDate="" HdNo="" BrNo="" KeyNumber="" Name="" Type=""'
        + ' MlgType="" CuTel="" AuthYN="" Mileage="" PrizeCnt="" Cnt="" CurPage="" HasMore=""> <Mileage Value=""> </Mileage> </Mileages> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C030.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C031" Name="DrivingList"> <Error Code="" Message="" />	<DrivingLists action="SELECT" WkSabun="WkSabunString" FromDate="FromDateString" ToDate="ToDateString" Cnt="">'
        + '	<Order Status="" KeyNumber="" BrNo="" BrName="" CustTel="" StartArea="" EndArea="" Charge="" Commission="" WkHp="" BrTel="" AcceptCenter="" InDate="" CbName="" CbDept="" ConfInfo="" PayMethod="" />	</DrivingLists>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C031.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData
end;

procedure gfnc_XML_LOCAL_MAKE1();
Var sTmp : String;
begin
  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C031N1" Name="DrivingList"> <Error Code="" Message="" />	<DrivingLists action="SELECT" WkSabun="WkSabunString" FromDate="FromDateString" ToDate="ToDateString" ConfStatus ="ConfStatusString" Cnt="">'
        + '	<Order CustTel="" Status="" Baecha="" Finish="" StartArea="" EndArea="" Charge="" KeyNumber="" BrName="" CustName="" CustType="" PayMethod=""   ConfInfo="" InId="" CbName="" CbDept="" ConfSlip="" InDate="" AcceptCenter="" BrNo="" />'
        + '	</DrivingLists>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C031N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C032N1" Name="AcceptRegister">	<Error Code="" Message="" /> <Data>	<Accept ConfMemo="ConfMemoString" ConfBar="ConfBarString" CustName="CustNameString"'
        + ' CarInfo="CarInfoString" SMS="SMSString" BGroup="BGroupString" CuSeq="CuSeqString" LevelCD="LevelCdString" CustTel="CustTelString" BrTelYN="BrTelYNString"/>	</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C032N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C032N2" Name="AcceptRegister">	<Error Code="" Message="" /> <Data>	<Accept ConfSlip="ConfSlipString" CuMemo="CuMemoString" ConfMemo="ConfMemoString" ConfBar="ConfBarString"'
        + ' CustName="CustNameString" CarInfo="CarInfoString" SMS="SMSString" BGroup="BGroupString" CuSeq="CuSeqString" LevelCD="LevelCdString" CustTel="CustTelString" BrTelYN="BrTelYNString"/>	</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C032N2.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C033N1" Name="CustInfo">	<Error Code="" Message="" /> <Data>	<Accept ConfSlip="ConfSlipString" TodayGubun="TodayGubunString"/>	</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C033N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C033N2" Name="CustInfo">	<Error Code="" Message="" /> <Data>	<Accept ConfSlip="ConfSlipString" TodayGubun="TodayGubunString"/>	</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C033N2.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="" />	<ClientVer Value="" /> <ClientKey Value="" />	</header>'
				+ '	<Service VersionNum="CallServer 1.0" ID="C034N1" Name="CustSearch">	<Error Code="" Message="" /> <Customers action="SELECT" CuSeq="" HdNo="" BrNo="" KeyNumber="">'
				+ ' <Customer AiOutOption="" MemoDisplayYn="" CarType="" CuAppBlock="" CuOrderOption="" CmpNm="" CuType="" CuLevelCd="" CbCode="" CmpNo="" CuEndCnt="" CuCancelCnt="" InDate="" CuLastEnd="" CuMileage="" '
				+ ' CuPrizeCnt="" CuInfo="" CuPdaInfo="" CuArea5="" CuArea="" CuArea2="" CuArea3="" CuArea4="" CuMapX="" CuMapY="" CuEdArea5="" CuEdArea="" CuEdArea2="" CuEdArea3="" CuEdArea4="" CuEdMapX="" CuEdMapY="" '
				+ ' CBNo="" CuOutBound="" SelMileSendYn=""  LimitUseYN="" LimiDefaultCnt="" LimiDefaultCharge="" CBLimitCnt="" CBLimitCharge="" CBUseCnt="" CBUseCharge="" CbPositionName="" > </Customer>'
				+ ' <TelNums CuTel="" CuSmsYN=""></TelNums> </Customers>	</Service> </cdms>';
	LXML_DATA.slXmlName.Add('C034N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C035N1" Name="AcceptRegister">	<Error Code="" Message="" /> <Permissions action=""> <Permission GroupCode="" MenuCode="" CRUDX="" DetailCode="" DetailPer=""/>'
        + '	</Permissions> <Members> <Member MemId="" ExcelUse=""/>	</Members> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C035N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header>'
        + ' <Service VersionNum="CallServer 1.0" ID="C036N1" Name="TelMap"> <Error Code="" Message="" /> <Accept Type="TypeGubunString" DDD="DDDString" Tel="TellNumberString">'
        + ' <Map City="" Ward="" Dong="" Detail="" Tel="" X="" Y=""/>  </Accept> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C036N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header>'
        + ' <Service VersionNum="CallServer 1.0" ID="C037N1" Name="CustInfo"> <Error Code="" Message="" /> <Data> <Accept ConfSlip="ConfSlipString" CustSeq="CustSeqString" /> </Data> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C037N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C038N1" Name="AcceptRegister">	<Error Code="" Message="" /> <Worker action="" WK_SABUN="" HD_NO="" BR_NO="" WK_NAME="" BR_WK_NUM="" WK_SNUM="" WK_SEX=""'
        + ' ADDR1="" ADDR2="" ZIPCODE="" WK_HP="" WK_PDA_MODEL="" WK_PHONE="" WK_TEL="" WK_INS_CORPER="" WK_INS_NUM="" INSURANCE_EXPIRATION="" WK_DRV_LIC="" WK_SHOT_MEMO="" WK_MEMO="" WK_REG_DATE=""'
        + ' WK_BASIC_SIDO="" WK_EXTERNAL_ORDER="" CMS_CODE="" FREE_CNT="" PICTURE_YN=""	/>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C038N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C038N2" Name="AcceptRegister">	<Error Code="" Message="" /> <Worker action="" WK_SABUN="" HD_NO="" BR_NO="" WK_REAL_NAME="" WK_NAME="" BR_WK_NUM=""'
        + ' WK_SNUM="" WK_SEX="" ADDR1="" ADDR2="" ZIPCODE="" WK_HP="" WK_PDA_MODEL="" WK_PHONE="" WK_TEL="" WK_INS_CORPER="" WK_INS_NUM="" INSURANCE_EXPIRATION="" WK_DRV_LIC=""'
        + ' WK_SHOT_MEMO="" WK_MEMO="" WK_REG_DATE="" WK_BASIC_SIDO="" WK_EXTERNAL_ORDER="" CMS_CODE="" FREE_CNT="" PICTURE_YN="" LIC_ST_CD=""/> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C038N2.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C038N3" Name="AcceptRegister">	<Error Code="" Message="" />	<Worker action=""	WK_SABUN="" HD_NO="" BR_NO="" WK_REAL_NAME="" WK_NAME="" BR_WK_NUM=""'
        + ' WK_SNUM="" WK_SEX="" ADDR1="" ADDR2="" ZIPCODE="" WK_HP="" WK_PDA_MODEL="" WK_PHONE="" WK_TEL="" WK_INS_CORPER="" WK_INS_NUM="" INSURANCE_EXPIRATION="" WK_DRV_LIC=""	WK_SHOT_MEMO="" WK_MEMO=""'
        + ' WK_REG_DATE="" WK_BASIC_SIDO="" WK_EXTERNAL_ORDER="" CMS_CODE="" FREE_CNT="" PICTURE_YN="" LIC_ST_CD=""	MIN_FINISH_YN="" />	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C038N3.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
				+ '	<Service VersionNum="CallServer 1.0" ID="C038N4" Name="AcceptRegister">	<Error Code="" Message="" /> '
				+ ' <Worker WK_CONS_SHARE_YN="" INSURANCE_ST_DATE="" CONSIGNMENT_ST_DATE="" CONSIGNMENT_EXPIRATION="" CONSIGNMENT_CORPER="" GNR_SUB_YN="" CALL_INS_NUM="" '
				+ ' action="" WK_SABUN="" HD_NO="" BR_NO="" TO_BR_NO="" WORK_STICK_YN="" WORK_CONSIGNMENT_YN="" MCASH_SCHEDULE_SEQ=""'
        + ' WORK_CONSIGNMENT_AGREE_YN="" WK_DRV_LIC_DATE="" ORDER_SHARE_NO="" SHUTTLE_REG_STATUS="" SHUTTLE_PAY_TYPE="" SHUTTLE_TID="" AUTO_STATUS_DATE="" SEL_WK_SABUN="" WK_REAL_NAME="" WK_NAME="" BR_WK_NUM="" '
        + ' WK_SNUM="" WK_SEX="" ADDR1="" ADDR2="" ZIPCODE="" WK_HP="" WK_MOCK="" WK_PDA_MODEL="" WK_PHONE="" WK_TEL="" WK_INS_CORPER="" WK_INS_NUM="" INSURANCE_EXPIRATION="" WK_DRV_LIC="" WK_SHOT_MEMO="" '
				+ ' WK_MEMO="" WK_REG_DATE="" WK_BASIC_SIDO="" WK_EXTERNAL_ORDER="" CMS_CODE="" FREE_CNT="" PICTURE_YN="" LIC_ST_CD=""	MIN_FINISH_YN="" LIC_TYPE="" DRIVE_DISTANCE_TYPE=""	'
				+ ' WK_INS_GUBUN="" WK_INS_STATUS="" WK_CONINS_NUM="" CONSIGNMENT_EXP_YN="" WK_INS_CONS_GUBUN="" SPOT_CARD_YN="" WORK_START_DATE=""/> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C038N4.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="" />	<ClientVer Value="" /> <ClientKey Value="" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C039" Name="Telecom"> <Error Code="" Message="" />	<Telecom Sabun="" Mock=""/>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C039.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="ä���ּ���" />	<ClientVer Value="" /> <ClientKey Value="" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C040" Name="BCCard">	<Error Code="" Message="" /> <BCCard>	<Search CustTel="������ä���ּ���" CardNo="�������� ä����"	CardType="1:����� 2:��� �������� ä����"'
        + '	CustName="����.�������� ä����"> <Pay Seq="" InDate="yyyymmddhh24miss" BrName="" Charge="" InID="" ConfSlip=""/> </Search> </BCCard> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C040.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="ä���ּ���" />	<ClientVer Value="" /> <ClientKey Value="" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C041" Name="BCCard">	<Error Code="" Message="" /> <BCCard>	<Pay CardType="1:����� 2:��� ä���ּ���" CardNo="ä���ּ���" CustTel="ä���ּ���"'
        + '	KeyNumber="ä���ּ���" BrNo="ä���ּ���" Charge="ä���ּ���" InsuYn="y/n ���谡�Կ��� ä���ּ���"	Snum="�ֹε�Ϲ�ȣ.���谡�� y�϶��� ä����" />	</BCCard>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C041.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="ä���ּ���" />	<ClientVer Value="" /> <ClientKey Value="" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C042" Name="BCCard">	<Error Code="" Message="" /> <BCCard>	<Cancel Seq="ä���ּ���" CardType="0:��� 1:����� ä���ּ���" CardNo="ä���ּ���"	CustTel="ä���ּ���"/> </BCCard>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C042.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C044N1" Name="Head">	<Error Code="" Message="" /> <Heads action="SELECT/UPDATE" HdNo="HeadsHdNo"> <Head use="��뿩��" union="�����ڵ�" union_name="���ո�"'
        + '	no="�����ڵ�" name="�����" company_no="����ڹ�ȣ" symbol="�����ȣ" hierarchy="��������:����(3),����(7)" share_level="��������" bank="����������������ڵ�"	settle_cycle="����_�ֱ�(1:1��, 2:1����, 3:��)"'
        + '	settle_bank="����_����" settle_account="����_���¹�ȣ" settle_depositor="����_������" mem_id="��ǥ���̵�" mem_name="��ǥ�ڸ�" mem_hp="��ǥ����ó" Memo="�޸�"	zipcode="�����ȣ" address1="�ּ�1"	address2="���ּ�"> </Head> </Heads>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C044N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header> <UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C045N1" Name="SMSMessage">	<Error Code="" Message="" /> <SMSMessage title="SMS�޽�������" action="SELECT/UPDATE" branch="�˻�����" cnt="">'
        + ' <Item	kind="SMS����" use="��뿩��"	from="ȸ�Ź�ȣ">�޼�������</Item>	</SMSMessage>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C045N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C045N2" Name="SMSMessage">	<Error Code="" Message="" /> <Request action="ActionStr" branch="BranchStr" sms_block_real="realStr" sms_block_tomorrow="tomorrowStr">'
        + '	ItemStr	</Request>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C045N2.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C045N3" Name="ȸ��_�ڵ�SMS����">	<Error Code="" Message="" /> <Request action="ActionStr" branch="BranchStr" sms_block_real="realStr"'
        + ' sms_block_tomorrow="tomorrowStr" fin_duplicate_yn="finDupYnStr" duplicate_yn="dupYnStr" sms_ellipsis_tomorrow_yn="ellipsis_tomorrow">	ItemStr	</Request>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C045N3.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C046N1" Name="Branch">	<Error Code="" Message="" /> <Branches action="SELECT" head="�����ڵ�" type="�˻�����" value="�˻�����">'
				+ '	<Branch use="��뿩��" no="�����ڵ�" name="�����" phone="��Ȳ����ȭ��ȣ"	cash="����ĳ��" sms_deposit="SMSĳ��" in_date="�����"'
				+ ' real_incoming_tel="�����Ź�ȣ" key_number="��ǥ��ȣ" br_ceo="��ǥ�ڸ�" br_jumin_no="�ֹι�ȣ"	br_snum="����ڹ�ȣ" br_biz_name="����ڸ�" '
				+ ' br_biz_tel="����� ��ȭ��ȣ"	zipcode="�����ȣ"	addr1="�ּ�1"	addr2="�ּ�2"> </Branch> </Branches> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C046N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C047N1" Name="Branch">	<Error Code="" Message="" /> <Branch action="KEY_ACTION" branch="KEY_�����ڵ�" type="KEY_TYPE">'
				+ '	<Base head_no="VAL_head_no"	head_name="VAL_head_name"	no="VAL_no"	use="VAL_use"	name="VAL_name"	area_code="VAL_area_code"	master_id="VAL_master_id"	master_pw="VAL_master_pw"'
        + '	company_no="VAL_company_no"	ceo="VAL_ceo"	mobile="VAL_mobile"	phone="VAL_phone"	fax="VAL_fax"	zipcode="VAL_zipcode"	address1="VAL_address1"	address2="VAL_address2"	Memo="VAL_Memo"/>'
        + '	<Setting cybank="VAL_cybank_code"	cybank_account="VAL_cybank_account"	cash="VAL_cash"	callcenter="VAL_callcenter"	callrouting="VAL_callrouting"	management_fee="VAL_management_fee"'
        + '	program_value="VAL_program_value"	cybank_yn="VAL_cybank_yn"	insurance_yn="VAL_insurance_yn"	pn_worker="VAL_pn_worker"	pn_center="VAL_pn_center"	program_fee_type="VAL_program_fee_type"'
        + ' cms_method="VAL_cms_method" cms_type="VAL_cms_type"	cms_value="VAL_cms_value"	vphone_yn="VAL_vphone_yn"	vphone_wkview="VAL_vphone_wkview" cybank2="VAL_cybank_code2" cybank_account2="VAL_cybank_account2"/>'
				+' <WkSetting	km_ins_fee_free_yn="VAL_km_ins_fee_free_yn" share_level="VAL_share_level"	lbs_yn="VAL_lbs_yn"	match_yn="VAL_match_yn"	vm_touch="VAL_vm_touch"	cancel_yn="VAL_cancel_yn"	order_view="VAL_order_view"	max_area="VAL_max_area"'
				+ '	order_block_price="VAL_order_block"	sms_deposit="VAL_sms_deposit"	sms_price_ad="VAL_sms_price_ad"	sms_price_real="VAL_sms_price_real"	sms_delay="VAL_sms_delay"/>	</Branch>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C047N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C047N2" Name="Branch">	<Error Code="" Message="" />	<Branch action="KEY_ACTION" branch="KEY_�����ڵ�" type="KEY_TYPE">'
				+ '	<Base	br_emp_no="" br_biz_name="VAL_br_biz_name" br_biz_tel="VAL_br_biz_tel" br_biz_sales_no="VAL_br_biz_sales_no" head_no="VAL_head_no"	head_name="VAL_head_name"	no="VAL_no"	use="VAL_use"	name="VAL_name"	'
        + ' area_code="VAL_area_code"	master_id="VAL_master_id" master_pw="VAL_master_pw"'
				+ '	company_no="VAL_company_no"	ceo="VAL_ceo"	mobile="VAL_mobile"	phone="VAL_phone"	fax="VAL_fax"	zipcode="VAL_zipcode"	address1="VAL_address1"	address2="VAL_address2" Memo="VAL_Memo"	kidi_biz_name="VAL_kidi_biz_name" kidi_biz_num="VAL_kidi_biz_num" />'
        + '	<Setting kd_share_yn="VAL_kd_share_yn" cybank="" cybank_account="" cash="VAL_cash" callcenter="VAL_callcenter" callcenter2="VAL_call2center" callrouting="VAL_callrouting" management_fee="VAL_management_fee" program_value="VAL_program_value"'
        + '	cybank_yn="VAL_cybank_yn"	insurance_yn="VAL_insurance_yn"	pn_worker="VAL_pn_worker"	pn_center="VAL_pn_center"	program_fee_type="VAL_program_fee_type"	cms_method="VAL_cms_method"'
        + '	cms_type="VAL_cms_type"	cms_value="VAL_cms_value"	vphone_yn="VAL_vphone_yn"	vphone_wkview="VAL_vphone_wkview"	cybank2="" cybank_account2=""	main_phone="VAL_main_phone"'
				+ '	cuinfo_dayopen="VAL_cuinfo_dayopen"	cuinfo_safe_time="VAL_cuinfo_safe_time"	cybank_sms=""	cybank_sms_account=""	route_mgr_wk="VAL_route_mgr_wk"	route_mgr_cu="VAL_route_mgr_cu"'
				+ '	route_mgr_etc="VAL_route_mgr_etc"/>	<WkSetting auto_ins_fee_free_delay="VAL_auto_ins_fee_free_delay" is_insurance_fee_free="VAL_is_insurance_fee_free" share_level="VAL_share_level" lbs_yn="VAL_lbs_yn"'
        + '	match_yn="VAL_match_yn"	vm_touch="VAL_vm_touch"	cancel_yn="VAL_cancel_yn"'
        + '	order_view="VAL_order_view"	max_area="VAL_max_area"	order_block_price="VAL_order_block"	sms_deposit="VAL_sms_deposit"	sms_price_ad="VAL_sms_price_ad"	sms_price_real="VAL_sms_price_real"'
				+ '	sms_delay="VAL_sms_delay"	cardemail_yn="VAL_cardemail_yn"	bc_view_cc_name="VAL_bc_view_cc_name"'
				+ ' support_charge_use_yn="VAL_support_charge_use_yn" support_charge1="VAL_support_charge1" support_charge2="VAL_support_charge2" support_charge3="VAL_support_charge3"/> </Branch> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C047N2.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C048N1" Name="BranchConfig">	<Error Code="" Message="" /> <BranchConfig title="�ݴ����" action="SELECT" branch="KEY_�����ڵ�" code="KEY_����" cnt="">'
        + '	<Item config="�׸��" title="����" branch="�Ա������ڵ�" branch_name="�Ա������" price="�ݾ�" />	</BranchConfig>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C048N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
				+ '	<Service VersionNum="CallServer 1.0" ID="C049N1" Name="BranchTel"> <Error Code="" Message="" />	<BranchTel action="KEY_ACTION" branch="KEY_�����ڵ�" phone="KEY_��ǥ��ȣ"	sido="KEY_����ýõ�"'
				+ '	gugun="KEY_����ñ���" cnt=""> <Item phone="VAL_��ǥ��ȣ" order_type="VAL_����Ÿ��" base_charge="VAL_�ݱ⺻���"'
				+ ' sido="VAL_����ýõ�" gugun="VAL_����ñ���" real_incoming_tel="�����Ź�ȣ">VAL_�޼���</Item></BranchTel>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C049N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C050N1" Name="Fees">	<Error Code="" Message="" /> <Fees title="��������" action="KEY_ACTION" head="KEY_�����ڵ�" branch="KEY_�����ڵ�"  cnt="">'
        + ' <Item code="�������ڵ�" name="������׷��" prepay="����/�ĳ�(s/h)" type="�����" value="��갪" />	</Fees>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C050N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C051N1" Name="MapCity"> <Error Code="" Message="" />	<MapCity title="��ǥ��ȣ����_�ּ�" action="SELECT" cnt=""> <Items sido="�õ�" cnt="">'
        + '	<Item gugun="����" /> </Items> </MapCity>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C051N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C052N1" Name="Recept">	<Error Code="" Message="" /> <Recept title="�Ա�ǥ����" action="KEY_ACTION" head="KEY_�����ڵ�" branch="KEY_�����ڵ�" cnt="">'
        + ' <Items code="�Ա�ǥ�ڵ�" name="�Ա�ǥ��" cnt=""> <Item price="������1" charge="������1" /> </Items>	</Recept>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C052N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C053N1" Name="CallCenter">	<Error Code="" Message="" /> <CallCenter title="�ݼ���" action="SELECT" cnt="">	<Item name="�����" no="�����ڵ�"> </Item> </CallCenter>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C053N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C055" Name="CardPay"> <Error Code="" Message="" />	<CardPay action="ActionString"> <Data ConfSlip="ConfSlipString" Status=""/>	</CardPay> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C055.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header> <UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C056N1" Name="Cashback">	<Error Code="" Message="" /> <Cashback action="ActionString" CuSeq="CuSeqString" CBNo="CBNoString"></Cashback> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C056N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="" ID="C057" Name="CardLog"> <Error Code="" Message="" />	<CardPay action="SELECT" ConfSlip="ConfSlipString" cnt=""> <Data Status="" InDate="" InID="" InName="" Msg=""/>	</CardPay> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C057.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C058N1" Name="������Ȳ">	<Error Code="" Message="" /> <Request> <Data  HD_NO="HdNoString" BR_NO="BrNoString" FROM_DATE="FromDateString" TO_DATE="ToDateString" MEM_ID="MemIDString" />	</Request> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C058N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C059N1" Name="��������">	<Error Code="" Message="" /> <Request> <Data Mode="ModeString" AUTH_TYPE="AuthTypeString" HD_NO="HdNoString"'
        + ' BR_NO="BrNoString" MEM_ID="MemIDString" GUBUN="GUBUNString" SEARCH_STR="SEARCH_STRString" PC_SEQ="PCSeqString" AUTH_ST_CD="AuthStCdString" ADD_AUTH_DAY="AddAuthDayString" REQ_ID="ReqIDString" WORK_STATUS="STATUSString" FROM_DAY="FROMDAYString" '
        + ' TO_DAY="TODAYString" />	</Request> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C059N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C061N1" Name="�����˻�">	<Error Code="" Message="" /> <Request> <Data Mode="modeStr" CITY="cityStr" WARD="wardStr" STREET="streetStr" NO="noStr" /> </Request>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C061N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C062N1" Name="��ȣ�˻�">	<Error Code="" Message="" /> <Request> <Data  Mode="modeStr" NAME="nameStr" CITY="cityStr" WARD="wardStr"'
        + ' STREET="streetStr" ST_X="stXStr" ST_Y="stYStr" ED_X="edXStr" ED_Y="edYStr" />	</Request> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C062N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C063N1" Name="�αٱ�纸��">	<Error Code="" Message="" /> <Request> <Data  Mode="modeStr" ATTEND="attendStr" DISTANCE="distanceStr" MAP_X="mapXStr" MAP_Y="mapYStr" />	</Request> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C063N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C064N1" Name="�������˻�">	<Error Code="" Message="" /> <Request> <Data CITY="cityStr" WARD="wardStr" />	</Request> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C064N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C065N1" Name="SharedCallBlock"> <Error Code="" Message="" /> <Request>	<Data Mode="modeStr" HdNo="hdNoStr" BrNo="brNoStr"'
        + ' SelType="selTypeStr" Type="typeStr" WkSabun="wkSabunStr" Memo="memoStr" /> </Request>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C065N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + ' <Service VersionNum="CallServer 1.0" ID="C066N1" Name="CardDown">	<Error Code="" Message="" /> <CardPay action="actionStr">	<Data CuTel="CuTelStr" KeyNumber="KeyNumberStr" /> </CardPay></Service></cdms>';
	LXML_DATA.slXmlName.Add('C066N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C067N1" Name="MobileCoupon">	<Error Code="" Message="" /> <Request> <Data  mode="INSERT" CuSeq="CuSeqStr" Charge="ChargeStr" HP="HPStr" />	</Request> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C067N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C068N1" Name="CancelList">	<Error Code="" Message="" /> <Request> <Data action="SELECT" WkSabun="WkSabunStr" FromDate="FromDateStr" ToDate="ToDateStr" /> </Request>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C068N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="CALLABLE" Name="CALLABLE">	<Error Code="" Message="" /> <Data>	<Call Value="CallString" Count="CountString"> ParamString	</Call> </Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('CALLABLE.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="CALLABLE05" Name="CALLABLE">	<Error Code="" Message="" /> <Data>	<Call Value="CallString">	<Param Value="ParamString"/> </Call> <Result Value=""/>	</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('CALLABLE05.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="CALLABLE06" Name="CALLABLE">	<Error Code="" Message="" /> <Data>	<Call Value="CallString">	<Param Value="ParamString"/> </Call> <Result Value=""/>	</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('CALLABLE06.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header> <UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="CALLABLE2" Name="CALLABLE"> <Error Code="" Message="" />	<Data> <Call Value="CallString" Count="CountString"> ParamString </Call> </Data> </Service></cdms>';
	LXML_DATA.slXmlName.Add('CALLABLE2.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header> <UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="CID03" Name="CIDUpdate">	<Error Code="" Message="" /> <Data>	<CID PCID="PCIDString" PhoneNum="PhoneNumString" KeyNum="KeyNumString" />	</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('CID03.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="CNS01" Name="AcceptCounselor">	<Error Code="CodeString" Message="MessageString" />	<Data> <Accept KeyNumber="" CallNumber="" /></Data></Service></cdms>';
	LXML_DATA.slXmlName.Add('CNS01.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><CallManner version="1.0"> <Session user="useridstring" remote="������" rqst="��û�ð�" resp=""/><Resp code="" msg="Mac Address"/>'
        + ' <Biz id="10001" version="1.0"><Codes title="�ڵ����" action="SELECT" system="�ý����ڵ�" detail="�����ڵ�"></Codes></Biz></CallManner>';
	LXML_DATA.slXmlName.Add('Codes.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><CallManner version="1.0"><Session user="useridstring" remote="������" rqst="��û�ð�" resp=""/><Resp code="" msg="Mac Address"/>'
        + ' <Biz id="10001" version="1.0"><Heads title="�������" action="SELECT" cnt="" head="�˻������ڵ�" union=""></Heads>'
        + ' <Branches title="�������" action="Branches SELECT|INSERT|UPDATE|DELETE" cnt="" branch="" head="Head Code"></Branches><Mileage title="���ϸ���" action="Mileage SELECT" branch="�˻�����" cnt="">'
        + ' </Mileage><SMSMessage title="SMS�޽�������" action="SELECT" branch="�˻�����" cnt=""></SMSMessage></Biz></CallManner>';
	LXML_DATA.slXmlName.Add('Mieage.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><CallManner version="1.0"><Session user="useridstring" remote="������" rqst="��û�ð�" resp=""/><Resp code="" msg="Mac Address"/>'
        + ' <Biz id="10001" version="1.0"><Penalty title="����������Ƽ" action="SELECT"></Penalty></Biz></CallManner>';
	LXML_DATA.slXmlName.Add('Penalty.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header> <UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="QUERY" Name="Update"> <Error Code="" Message="" />	<Data> <Query Value="QueryString" /> </Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('QUERY.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <Header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</Header>'
        + '	<Service VersionNum="CallServer 1.0" ID="SEL01" Name=""> <Error Code="" Message="" />	<Data> <Query Value="QueryString" /> </Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('SEL01.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="SEL02" Name=""> <Error Code="" Message="" />	<Data> <Query Value="QueryString" Paging="PagingString" /> </Data> </Service></cdms>';
	LXML_DATA.slXmlName.Add('SEL02.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="SEL04" Name="Select"> <Error Code="" Message="" />	<Data> <Query Key="" Forward="" Backward="" Paging=""> <Param Seq="" Value=""/> </Query> </Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('SEL04.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="SEL05" Name="Select"> <Error Code="" Message="" />	<Data> <Query Key="QueryKeyString" Paging="QueryPagingString"> <Param Value="ParamString"/>	</Query> </Data> </Service></cdms>';
	LXML_DATA.slXmlName.Add('SEL05.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="SEL06" Name="Select"> <Error Code="" Message="" />	<Data> <Query Key="QueryKeyString" Paging="QueryPagingString"> <Param Value="ParamString"/>	</Query> </Data> </Service></cdms>';
	LXML_DATA.slXmlName.Add('SEL06.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="SMS01" Name="SendSMS">	<Error Code="" Message="" /> <Data>	<SMS Receiver="ReceiverString" Sender="SenderString" Message="MessageString" Reservation="ReservationString" />	</Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('SMS01.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData
end;

procedure gfnc_XML_LOCAL_MAKE2();
Var sTmp : String;
begin
	// ��, ��� ���� �߼� ���� SMS02.XML 2012.10.30 KHS
  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
        + '<Service VersionNum="CallServer 1.0" ID="SMS02" Name="SendSMS"> <Error Code="" Message="" /> '
        + '<Data> <SMS  Receiver="ReceiverString" Sender="SenderString" Reservation="ReservationString" Memo="MemoString" ConfSlip="ConfSlipString" '
        + '                 WkSabun="WkSabunString" >MessageString</SMS></Data></Service></cdms> ';
  LXML_DATA.slXmlName.Add('SMS02.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><CallManner version="1.0"><Session user="useridstring" remote="������" rqst="��û�ð�" resp=""/><Resp code="" msg="Mac Address"/>'
        + ' <Biz id="10001" version="1.0"><Member title="�����" action="SELECT" userid="���̵�" head="�����ڵ�" branch="�����ڵ�" level="����ڱ׷�" type="�˻�����:���̵�(1),�̸�(2),�������(3)" value="type �� ��">'
        + ' <Item head="�����ڵ�" branch="�����ڵ�" userid="���̵�" name="�̸�" password="��й�ȣ" use="��뿩��" level="����ڱ׷�" phone="����ó" mobile="�ڵ���" social_no="�ֹι�ȣ" zipcode="�����ȣ"'
        + ' address1="�����ȣ�ּ�" address2="���ּ�" in_date="�����" reg_date="�Ի���" >�޸�</Item></Member><MemberRole title="����ڱ���" action="SELECT|UPDATE" userid="����� ID" type="1:�ݺ�����Ѹ�" value="�ݺ�����Ѹ�">'
        + ' <Item menu_id="�޴�_ID" role="����" /></MemberRole></Biz></CallManner>';
	LXML_DATA.slXmlName.Add('UserControl.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><CallManner version="1.0"><Session user="goodwith" remote="" rqst="" resp=""/><Resp code="" msg=""/>'
        + ' <Biz id="10001" version="1.0"><Workers title="������" action="SELECT|INSERT|UPDATE|DELETE" cnt="��ȸ�Ǽ�" union="�����ڵ�" head="�����ڵ�" branch="�����ڵ�" worker="���" type="������(1),�����(2),���踸����(3)"'
        + ' value="type �� �ڵ�" search="���|������|�̸�" terminal="�ڵ���|�ܸ����ȣ"><Workerunion="����"head="����"branch="����"sabun="������"no="���"status="������"name="�̸�"sex="����(m,w)"social_no="�ֹι�ȣ"'
        + ' email="�̸���"mobile="�ڵ���"phone="����ó"zipcode="�����ȣ"address1="�����ȣ�ּ�"address2="���ּ�"license="�������ȣ"in_date="�Ի���"out_date="�����"telecom="�����(SKT,KTF,LGT)"terminal_no="�ܸ����ȣ"'
        + ' terminal_type="�޴���(h),PDA(p),WAP(w)"terminal_model="��"bank="�����������"account="������¹�ȣ"insurance_company="�����"insurance_no="���谡�Թ�ȣ"insurance_expired="���踸����"working="��/��� ����"'
        + ' area_code="�����������"area="����������"penalty="�г�Ƽ�ð�"public_cash="����ĳ��"personal_cash="��üĳ��"order_view="����������:�ڻ����(0), Ÿ���������(1)"cms_code="��������׷�"cms_method="�������ᱸ��"'
        + ' cms_type="����������"cms_value="�������ᰪ"short_memo="���ܸ޸�"stop_memo="��Ÿ��������"RET="INSERT/UPDATE/DELETE �� Worker�� ó�� �Ǽ�"MSG="INSERT/UPDATE/DELETE �� ó�� ��� �޽���"><Memo>��� �޸�</Memo>'
        + ' </Worker></Workers><Heads title="�������" action="SELECT" head="�����ڵ�" union="�����ڵ�"><Headuse="��뿩��"union="�����ڵ�"union_name="���ո�"no="�����ڵ�"name="�����"company_no="����ڹ�ȣ"symbol="�����ȣ"'
        + ' hierarchy="��������:����(3),����(7)"share_level="��������"bank="����������������ڵ�"settle_cycle="����_�ֱ�(1:1��, 2:1����, 3:��)"settle_bank="����_����"settle_account="����_���¹�ȣ"settle_depositor="����_������"'
        + ' mem_id="��ǥ���̵�"mem_name="��ǥ�ڸ�"mem_hp="��ǥ����ó"><Memo>���� �޸�</Memo></Head></Heads><!--�����������ҹ��(program_fee_type)- 1:�Ϻ� 2:10�ϱ��� 3:1�ޱ��� 5:����ϱ���-�ĺ� 6:�Ϸ��������-�Ϸ����'
        + ' 7:�Ϸ��������-����볳)��������Ʈǥ���׸�(order_view)- 6�ڸ�(�����ȣ,�����,���������,������,���,����������)��ǥ��ȣ����ü���(callrouting)- '':������, M:������ȣ�ݼ��ͺ���, S:�����ݼ��Ϳ�Ŭ���������(vm_touch)'
        + ' - 1:����ġ, 2:����ġ���ܸ��������Ұ��ɿ���(cancel_yn)- y:����, n:�Ұ��� m:���ð���--><Branches title="�������" action="SELECT" branch="�����ڵ�" head="�����ڵ�" type="�����ڵ�(1),�����(2),��ǥ��ȣ(3)'
        + ' ,���系�����������(4),��ġ���(5),�ݼ�Ÿ�(6,"y")" value="type �� �ڵ�"><Branch use="��뿩��" head="�����ڵ�" head_name="�����" no="�����ڵ�" name="�����" area_code="�����ڵ�" master_id="Master_ID"'
        + ' password="��й�ȣ" company_no="����ڹ�ȣ" ceo="��ǥ�ڸ�" mobile="�ڵ�����ȣ" phone="��Ȳ����ȭ��ȣ" fax="�ѽ���ȣ" zipcode="�����ȣ" address1="�����ȣ�ּ�" address2="���ּ�" cybank="������������ڵ�"'
        + ' cybank_account="������¹�ȣ" cash="����ĳ��" callcenter="�ݼ��������ڵ�" callrouting="��ǥ��ȣ����ü���" management_fee="���α׷�����/��" program_value="������/��" cybank_yn="��纰������»�뿩��"'
        + ' insurance_yn="������������" pn_worker="����������г�Ƽ" pn_center="������������г�Ƽ" program_fee_type="�����������ҹ��" cms_method="����������" cms_type="��������������" cms_value="�����������갪"'
        + ' share_level="���系�����������" lbs_yn="��ġ��ݻ�뿩��(y/n)" match_yn="��Ī������뿩��(y/n)" vm_touch="��Ŭ���������" cancel_yn="���ܸ��������Ұ��ɿ���" order_view="��������Ʈǥ���׸�" max_area="���������ִ�Ÿ�(km)"'
        + ' order_block_price="�����������ܿ��" sms_deposit="SMSĳ��" sms_price_ad="����SMS�ܰ�" sms_price_real="�Ϲ�SMS�ܰ�" sms_delay="SMS�߼������ð�" in_date="�����">�޸�</Branch></Branches><!--��� ������method : (1)����絿��'
        + ' ,(2)��纰������׷�type : (1)1������, (2)�Ա�ǥ, (3)����, (4)����, (5)�ְ�����, (6)�ֱ���-5, (7)�ֱ���-15, (8)�ֱ���-10, (9)�ְ�����-Ÿ������ ������value : �ݾ� or �Ա�ǥ�ڵ�|������׷��ڵ�--><Fees title="������ǥ"'
        + ' action="SELECT" head="�����ڵ�" branch="�����ڵ�" method="" type="" value=""><!-- ��� ��� ����(�Ա�ǥ ����) --><Items code="�Ա�ǥ�ڵ�" name="�Ա�ǥ��"><Item price="������(�̻�)" charge="������(100 ���ϴ� ����%)" />'
        + ' </Items><!-- ��纰������ �׷� ��� --><Item code="������׷��ڵ�" name="������׷��" prepay="��(s)/�ĳ�(h)" type="�����" value="��갪" /></Fees><!-- �Ա�ǥ �� ��Ͻ� �ߺ��� price �� ������ �ȵ� -->'
        + ' <Fees title="�Ա�ǥ ���" action="INSERT" head="�����ڵ�" branch="�����ڵ�" method="1"><Item name="�Ա�ǥ��" /><Item code="�Ա�ǥ�ڵ�" price="������" charge="������" /></Fees><Fees title="�Ա�ǥ ����" action="UPDATE"'
        + ' head="�����ڵ�" branch="�����ڵ�" method="1"><Item code="�Ա�ǥ�ڵ�" name="�Ա�ǥ��" /><Item code="�Ա�ǥ�ڵ�" price="������" charge="������" /></Fees><Fees title="�Ա�ǥ ����" action="DELETE" head="�����ڵ�" branch="�����ڵ�"'
        + ' method="1"><Item code="�Ա�ǥ�ڵ�" /><Item code="�Ա�ǥ�ڵ�" price="������" /></Fees><Fees title="������׷� ���" action="INSERT" head="�����ڵ�" branch="�����ڵ�" method="2"><Item name="������׷��" prepay="��(s)/�ĳ�(h)"'
        + ' type="�����" value="��갪" /></Fees><Fees title="������׷� ����" action="UPDATE" head="�����ڵ�" branch="�����ڵ�" method="2"><Item code="������׷��ڵ�" name="������׷��" prepay="��(s)/�ĳ�(h)" type="�����" value="��갪" />'
        + ' </Fees><Fees title="������׷� ����" action="DELETE" head="�����ڵ�" branch="�����ڵ�" method="2"><Item code="������׷��ڵ�" /></Fees><BlackWorkers title="�ҷ���縮��Ʈ" action="SELECT" terminal_no="�ܸ����ȣ" social_no="�ֹι�ȣ">'
        + ' <Worker terminal_no="�ܸ����ȣ" social_no="�ֹι�ȣ" date="��Ͻð�" branch="��������" phone="������翬��ó"><Memo>�ҷ����</Memo></Worker></BlackWorkers><BlockLists title="���ܸ���Ʈ" action="SELECT"'
        + ' type="��������(1:�������, 4:��������)" target="���"><Item type="��������(1:�������, 2:��������, 3:���簣����, 4:���簣����,5:����������)"source_union="������ü����" target_union="���ܴ����"source_union_name="������ü���ո�"'
        + ' target_union_name="���ܴ���ո�"source_hd="������ü����" target_hd="���ܴ�󺻻�"source_hd_name="������ü�����" target_hd_name="���ܴ�󺻻��"source_br="������ü����" target_br="���ܴ������"source_br_name="������ü�����"'
        + ' target_br_name="���ܴ�󺻻��"target_wk="���ܴ����"target_wk_name="���ܴ�����"terminal_no="��������ܸ����ȣ"date="��Ͻð�" to_date="��ȿ�ð�"><Memo>���ܻ���</Memo></Item></BlockLists><Symbols title="�����ȣ"'
        + ' action="SELECT"><Item symbol="��ȣ"/></Symbols><Mileage title="���ϸ���" action="SELECT" branch="�����ڵ�"><Item kind="������(0:�Ϲ�,1:����,3:����,4:�ҷ�)" type="���ϸ���Ÿ��(0:����,1:����,2:����)" value="���ϸ�����"'
        + ' point="��ǰ�������ϸ�����" prize="��ǰ��" /></Mileage><!--�޽�������(Item.kind)01:������ ������02:�������� ���系 ������ ��翡��03:�������� ���系 Ÿ���� ������ ��翡��04:�������� Ÿ����(������) ������ ��翡��'
        + ' 05:��ҽ� ��翡��06:���˽� ��翡��07:���������� ��翡��08:���ڹ����� ��翡��09:���ϸ��� ����--><SMSMessage title="SMS�޽�������" action="SELECT" branch="�����ڵ�"><Item kind="�޽�������" use="��뿩��">SMS �޽��� ����</Item>'
        + ' </SMSMessage><Penalty title="����������Ƽ" action="SELECT"><Items code="���Ƽ�ڵ�" name="���Ƽ��"><Item cnt="Ƚ��" time="�г�Ƽ�ð�(��)" charge="����" /></Items></Penalty><!-- BranchTel.branch, Item.phone �ʼ� -->'
        + ' <BranchTel title="��ǥ��ȣ ����" action="SELECT|INSERT|UPDATE" branch="�����ڵ�" ><Item phone="��ǥ��ȣ" order_type="��������" base_charge="�⺻���" sido="����� ��/��" gugun="����� ��/��/��" /></BranchTel>'
        + ' <BranchTel action="DELETE" branch="�����ڵ�"><Item phone="��ǥ��ȣ" /></BranchTel><MapCity title="����� ��/��, ��/��/��" action="SELECT"><Items sido="��/��"><Item gugun="��/��/��" /></Items></MapCity>'
        + ' <Statistics title="���" action="SELECT" head="�����ڵ�" branch="�����ڵ�" type="������(WK_STATUS)"><Item code="�ڵ�" cnt="�Ǽ�"/></Statistics><!--cdms_syscode.SY_CD ��WS: ������	WA: ��ٻ���	SA: ���������ڵ�LV: ���ѷ���'
        + '	VL: �������	ST: ��������CT: ���ұ���	AS: ��������	WP: �������ƮWT: ���ĳ��Ÿ��	BT: ����ĳ��Ÿ��	MT: ���ϸ���Ÿ��BH: �����	BK: �����ڵ�	IN: �����PM: �ܸ����	CL: Ŭ���̾�Ʈ	VM: VM��������--><Codes title="�ڵ����"'
        + ' action="SELECT" system="�ý����ڵ�" detail="�����ڵ�"><Code dt_cd="�����ڵ�" dt_nm="���θ�" value="���ΰ�" ></Code></Codes><ZipCode title="�����ȣ�˻�" action="SELECT" dong="����"><Item zipcode="�����ȣ" address="�ּ�"/>'
        + ' </ZipCode><!-- BranchConfig.code : Config ����(CA: �ݴ����)Config ���п� ���� Item ������ �޶��� �� ����.--><BranchConfig title="���� Config" action="SELECT" branch="�����ڵ�" code="Config ����"><!-- CA:�ݴ���� -->'
        + ' <Item config="�׸��" title="����" branch="�Ա������ڵ�" branch_name="�Ա������" price="�ݾ�" /></BranchConfig><!--����ڱ׷�Codes.system="LV" ���� : ���� ����("10"), ���������("40"), ���������("60") �� ���-->'
        + ' <Member title="�����" action="SELECT|INSERT|UPDATE|DELETE" userid="���̵�" head="�����ڵ�" branch="�����ڵ�" level="����ڱ׷�" type="�˻�����:���̵�(1),�̸�(2),�������(3)" value="type �� ��"><Item use="��뿩��"'
        + ' level="����ڱ׷�" head="�����ڵ�" branch="�����ڵ�" userid="���̵�" name="�̸�" password="��й�ȣ" phone="����ó" mobile="�ڵ���" social_no="�ֹι�ȣ" zipcode="�����ȣ" address1="�����ȣ�ּ�" address2="���ּ�"'
        + ' in_date="�����" >�޸�</Item></Member><!--MemberRole.type = "1" ? �ڻ��ݰ���ȣ������Ѹ� : ������ ����MemberRole.value = �ڻ��ݰ���ȣ������Ѹ� : 37(����), 35(���Ͽ��� �� ���ϼ���), 30(����)-->'
        + ' <MemberRole title="����ڱ���" action="SELECT|UPDATE" userid="����� ID" type="1:�ڻ��ݰ���ȣ������Ѹ�" value="�ڻ��ݰ���ȣ������Ѹ�:"><Item menu_id="�޴�_ID" role="����" /></MemberRole>'
        + ' <!-- branch�� �Է����� ������ ��ü ���縦 ��ȸ�Ѵ�. --><Calculation 	title="����" action="SELECT" cnt="��ȸ�Ǽ�"	head="�����ڵ�" 	branch="�˻��������ڵ�"	from_date="������" 	to_date="������">'
        + ' <Item 	branch="�����ڵ�"	br_name="�����"	comm="��������(����ĳ��)"	order="���ֺ�"	recv="���ֺ�(-)"	solution="�ַ�ǻ���"	insu="�����"	cancel="��ҹ���(����ĳ��)"	callcenter="�ݴ���"'
        + ' pay_in="�����Ա�"	pay_out="�ݸ�������"	move="����ĳ���̵�"	sms_charge="SMSĳ�����"	other="��Ÿ"	total="�հ�"	cash="����ĳ��" /></Calculation></Biz></CallManner>';
	LXML_DATA.slXmlName.Add('Work.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><CallManner version="1.0"><Session user="useridstring" remote="������" rqst="��û�ð�" resp=""/><Resp code="" msg="Mac Address"/><Biz id="10001" version="1.0">'
        + ' <Workers title="������" action="Workers SELECT|INSERT|UPDATE|DELETE" cnt="Workers cnt" union="" head="Workers Head Code" branch="Workers Branch Code" type="Workers type" value="Workers value" worker="Workers Worker"'
        + ' search="Workers Search" terminal="Workers terminal"><Worker union="����" head="����" branch="�����ڵ�" sabun="���1" no="���2" status="������" name="�̸�" sex="����" social_no="�ֹι�ȣ" email="�̸���" mobile="�ڵ���"'
        + ' phone="����ó" zipcode="�����ȣ" address1="�ּ�" address2="��" license="�������ȣ" in_date="�Ի���" out_date="�����" telecom="�����" terminal_no="�ܸ����ȣ" terminal_type="�޴���/PDA" terminal_model="��" bank="�����������"'
        + ' account="���¹�ȣ" insurance_company="�����" insurance_no="���谡�Թ�ȣ" insurance_expired="���踸����" working="��/���" area_code="�������" area="��������" penalty="�г�Ƽ�ð�" public_cash="����ĳ��" personal_cash="��üĳ��"'
        + ' order_view="����������" cms_code="��������׷�" cms_method="�������ᱸ��" cms_type="����������" cms_value="�������ᰪ" short_memo="���ܸ޸�" stop_memo="��Ÿ����" ><Memo>�� ������?</Memo></Worker></Workers>'
        + ' <Heads title="�������" action="Heads SELECT|INSERT|UPDATE|DELETE" cnt="" head="Heads Head" union=""><head use="��뿩��" union="�����ڵ�" no="�����ڵ�" name="�����" company_no="����ڹ�ȣ" symbol="�����ȣ"'
        + ' hierarchy="��������:����(3),����(7)" share_level="��������" bank="����������������ڵ�" settle_cycle="����_�ֱ�(1:1��, 2:1����, 3:��)" settle_bank="����_����" settle_account="����_���¹�ȣ" settle_depositor="����_������"'
        + ' mem_id="��ǥ���̵�" mem_name="��ǥ�ڸ�" mem_hp="��ǥ����ó" ><Memo>���� �޸�</Memo></head></Heads><Branches title="�������" action="Branches SELECT|INSERT|UPDATE|DELETE" cnt="" branch="" head="Head Code"></Branches>'
        + ' <Codes title="�ڵ����" action="CodesWS SELECT|INSERT|UPDATE|DELETE" cnt="" system="WS" detail=""></Codes><Codes title="�ڵ����" action="CodesWA SELECT|INSERT|UPDATE|DELETE" cnt="" system="WA" detail=""></Codes>'
        + ' <Codes title="�ڵ����" action="CodesSA SELECT|INSERT|UPDATE|DELETE" cnt="" system="SA" detail=""></Codes><Codes title="�ڵ����" action="CodesBH SELECT|INSERT|UPDATE|DELETE" cnt="" system="BH" detail=""></Codes>'
        + ' <Codes title="�ڵ����" action="CodesBK SELECT|INSERT|UPDATE|DELETE" cnt="" system="BK" detail=""></Codes><Codes title="�ڵ����" action="CodesPM SELECT|INSERT|UPDATE|DELETE" cnt="" system="PM" detail=""></Codes>'
        + ' <Fees title="������ǥ" action="Fees SELECT" head="Fees HeadCode" cnt="" branch="Fees branch" method="" type="" value=""></Fees><BlackWorkers title="�ҷ���縮��Ʈ" action="SELECT" terminal_no="BlackWorkers terminal_no"'
        + ' social_no="BlackWorkers social_no" cnt=""></BlackWorkers><BlockLists title="���ܸ���Ʈ" action="SELECT" type="��������(1:�������, 4:��������)" target="���" cnt=""><Item type="��������(1:�������, 2:��������, 3:���簣����'
        + ' , 4:���簣����,5:����������)" source_union="������ü����" target_union="���ܴ����" source_union_name="������ü���ո�" target_union_name="���ܴ���ո�" source_hd="������ü����" target_hd="���ܴ�󺻻�"'
        + ' source_hd_name="������ü�����" target_hd_name="���ܴ�󺻻��" source_br="������ü����" target_br="���ܴ������" source_br_name="������ü�����" target_br_name="���ܴ�󺻻��" target_wk="���ܴ����"'
        + ' target_wk_name="���ܴ�����" terminal_no="��������ܸ����ȣ" date="��Ͻð�" to_date="��ȿ�ð�"> <Memo>���ܻ��</Memo> </Item></BlockLists><Statistics title="���" action="SELECT" terminal_no="BlackWorkers terminal_no"'
        + ' social_no="BlackWorkers social_no" cnt=""></BlackWorkers><BlockLists title="���ܸ���Ʈ" action="SELECT" type="��������(1:�������, 4:��������)" target="���" cnt=""><Item type="��������(1:�������, 2:��������, 3:���簣����, 4:���簣����,5:����������)"'
        + ' source_union="������ü����" target_union="���ܴ����" source_union_name="������ü���ո�" target_union_name="���ܴ���ո�" source_hd="������ü����" target_hd="���ܴ�󺻻�" source_hd_name="������ü�����" target_hd_name="���ܴ�󺻻��"'
        + ' source_br="������ü����" target_br="���ܴ������" source_br_name="������ü�����" target_br_name="���ܴ�󺻻��" target_wk="���ܴ����" target_wk_name="���ܴ�����" terminal_no="��������ܸ����ȣ" date="��Ͻð�" to_date="��ȿ�ð�">'
        + ' <Memo>���ܻ��</Memo> </Item></BlockLists><Statistics title="���" action="SELECT" head="Statistics head" branch="Statistics branch" type="WK_STATUS"></Statistics></Biz></CallManner>';
	LXML_DATA.slXmlName.Add('Worker.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><CallManner version="1.0"><Session user="useridstring" remote="" rqst="" resp=""/><Resp code="" msg=""/><Biz id="10001" version="1.0">'
        + ' <Workers title="������" action="Workers SELECT|INSERT|UPDATE|DELETE" cnt="Workers cnt" union="" head="Workers Head Code" branch="Workers Branch Code" status="Workers Status" worker="Workers Worker" search="Workers Search" terminal="Workers terminal">'
        + ' <Worker union="����" head="����" branch="����" no="���1" sabun="���2" status="������" name="�̸�" sex="����" social_no="�ֹι�ȣ" email="�̸���" mobile="�ڵ���" phone="����ó" zipcode="�����ȣ" address1="�ּ�" address2="��" license="�������ȣ"'
        + ' bank="�����������" account="���¹�ȣ" in_date="�Ի���" out_date="�����" telecom="�����" terminal_no="�ܸ����ȣ" terminal_type="�޴���/PDA" terminal_model="��" insurance_company="�����" insurance_no="���谡�Թ�ȣ" insurance_expired="���踸����"'
        + ' working="��/���" area="��������" fee_type="����������" penalty="�г�Ƽ�ð�" public_cash="����ĳ��" personal_cash="��üĳ��" stop_memo="��Ÿ����" ><Memo>�� ������?</Memo></Worker></Workers><!--cdms_syscode.SY_CD ��WS: ������	WA: ��ٻ���'
        + '	SA: ���������ڵ�LV: ���ѷ���	VL: �������	ST: ��������CT: ���ұ���	AS: ��������	WP: �������ƮWT: ���ĳ��Ÿ��	BT: ����ĳ��Ÿ��	MT: ���ϸ���Ÿ��BH: �����	BK: �����ڵ�	IN: �����PM: �ܸ����	CL: Ŭ���̾�Ʈ	VM: VM��������-->'
        + ' <Heads title="�������" action="Heads SELECT|INSERT|UPDATE|DELETE" cnt="" head="Heads Head" union=""></Heads><Codes title="�ڵ����" action="CodesWS SELECT|INSERT|UPDATE|DELETE" cnt="" system="WS" detail=""></Codes>'
        + ' <Codes title="�ڵ����" action="CodesWA SELECT|INSERT|UPDATE|DELETE" cnt="" system="WA" detail=""></Codes>'
        + ' <Codes title="�ڵ����" action="CodesSA SELECT|INSERT|UPDATE|DELETE" cnt="" system="SA" detail=""></Codes>'
        + ' <Codes title="�ڵ����" action="CodesBH SELECT|INSERT|UPDATE|DELETE" cnt="" system="BH" detail=""></Codes>'
        + ' <Codes title="�ڵ����" action="CodesBK SELECT|INSERT|UPDATE|DELETE" cnt="" system="BK" detail=""></Codes>'
        + ' <Codes title="�ڵ����" action="CodesPM SELECT|INSERT|UPDATE|DELETE" cnt="" system="PM" detail=""></Codes></Biz></CallManner>';
	LXML_DATA.slXmlName.Add('Worker_old.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><CallManner version="1.0"><Session user="goodwith" remote="" rqst="" resp=""/><Resp code="" msg=""/><Biz id="10001" version="1.0">'
        + ' <ZipCode title="�����ȣ�˻�" action="SELECT" cnt="" dong="�˻� ����"></ZipCode></Biz></CallManner>';
	LXML_DATA.slXmlName.Add('ZipCode.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// ������û ����.  2011-10-16.
	sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="CallServer 1.0" ID="C501" Name="CardPay"> <!-- request --> <CardPay> <Data  BrNo="�����ڵ�" BrTel="��ǥ��ȣ" CuSeq="���Ϸù�ȣ" '
				+ 'CuTel="����ȭ��ȣ"  PaySite="ī���������Ʈ����"  PaySeq="�����Ϸù�ȣ"  CardNo="ī���ȣ"  ExpiryYY="��ȿ�Ⱓ(��)"  ExpiryMM="��ȿ�Ⱓ(��)"  Quota="�ҺαⰣ(01~12)"  GoodMoney="�����ݾ�" /> '
				+ '</CardPay> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('C501.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// ������û ����.  2020-05-15 KHS
	sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="CallServer 1.0" ID="C501N1" Name="CardPay"> <!-- request --> <CardPay> <Data  BrNo="�����ڵ�" BrTel="��ǥ��ȣ" CuSeq="���Ϸù�ȣ" '
				+ 'CuTel="����ȭ��ȣ"  PaySite="ī���������Ʈ����"  PaySeq="�����Ϸù�ȣ"  CardNo="ī���ȣ"  ExpiryYY="��ȿ�Ⱓ(��)"  ExpiryMM="��ȿ�Ⱓ(��)"  Quota="�ҺαⰣ(01~12)"  '
				+ 'GoodMoney="�����ݾ�" BillSeq="strBillSeq" AgreeYn="strAgreeYn"/> </CardPay> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('C501N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// ������û��� ����.  2011-10-16.
	sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="CallServer 1.0" ID="C502" Name="CardCancel"> <CardPay> <Data  PaySeq="�����Ϸù�ȣ"  TranNo="�ŷ���ȣ"  Reason="��һ���" /> </CardPay> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('C502.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// ���ݿ�������û ����.  2013-01-14. khs
	sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="CallServer 1.0" ID="C503" Name="CashPay"> <!-- request --> <CashPay> <Data  BrNo="�����ڵ�" BrTel="��ǥ��ȣ" CuSeq="���Ϸù�ȣ" '
				+ 'CuTel="����ȭ��ȣ" TrCode="����뵵"  IdInfo="�ź�Ȯ��ID"  AmtTot="�ŷ��ݾ�����" Confslip="������ȣ" PaySeq="������ȣ" /> </CashPay> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('C503.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// ���ݿ�������� ����.  2013-01-14. khs
	sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="CallServer 1.0" ID="C504" Name="CashMod"> <!-- request --> <CashPay> <Data  PaySeq="�����Ϸù�ȣ" ModReason="��һ���"  /> </CashPay> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('C504.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// ��Ű ���� ����.  2020-06-15. khs
	sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="CallServer 1.0" ID="C505" Name="CashPay"> <Error Code="" Message="" /> <!-- request -->	'
				+ '<Bill><Data	BrNo="strBrNo"	BillSeq="strBillSeq" /> </Bill> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('C505.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// ���������������û ����.  2013-06-07. lyb
	sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="CallServer 1.0" ID="C701" Name="CouponCert"><!-- request --> <CouponCert> <Data CuSeq="���Ϸù�ȣ" CouponNum="������ȣ" ConfSlip="������ȣ" /> '
				+ '</CouponCert> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('C701.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// ������������ο�û ����.  2013-06-07. lyb
	sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="CallServer 1.0" ID="C702" Name="CouponUse"> <!-- request --> <CouponUse> <Data CouponSeq="������û��ȣ" CouponApprAmt="���������ݾ�" '
				+ 'MileageApprAmt="���ϸ��������ݾ�" CashApprAmt="���ݰ����ݾ�" /> </CouponUse> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('C702.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// ���������������� ����.  2013-06-07. lyb
	sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="CallServer 1.0" ID="C703" Name="CouponCancel"> <!-- request --> <CouponCancel> <Data CouponSeq="������û��ȣ" CancelReason="��һ���" /> '
				+ '</CouponCancel> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('C703.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
        + '<Service VersionNum="CallServer 1.0" ID="C013N4" Name="CustInfo"> <Error Code="" Message="" /> <Data> '
        + '<Accept KeyNumber="KeyNumberString" CustTel="CustTelString" CID="CIDString" BRNO="BrNoString" DNIS="DNISString"/> </Data> </Service> </cdms>';
  LXML_DATA.slXmlName.Add('C013N4.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>  <UserID Value="UserIDString" />  <ClientVer Value="ClientVerString" />  <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="CallServer 1.0" ID="C037N4" Name="CustInfo"> <Error Code="" Message="" /> <Data> '
				+ '<Accept ConfSlip="ConfSlipString" CustSeq="CustSeqString" TodayYn="TodayYnString"/> </Data> </Service></cdms>'; // XmlFileName Code
	LXML_DATA.slXmlName.Add('C037N4.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="CallServer 1.0" ID="C033N4" Name="CustInfo"> <Error Code="" Message="" /> <Data> '
        + '<Accept ConfSlip="ConfSlipString" TodayGubun="TodayGubunString" /> </Data> </Service> </cdms>';
  LXML_DATA.slXmlName.Add('C033N4.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	//�αٱ�� �˻� C063N2   2012.11.15 KHS
	sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="CallServer 1.0" ID="C063N2" Name="�αٱ��˻�"> <Error Code="" Message="" /> '
				+ '<Request> <Data  Mode="modeStr" ATTEND="attendStr" STATE="stateStr" PASS_TIME="attendTimeStr" DISTANCE="distanceStr" '
        + '                 KEYKIND="keykindstr" KEYWORD="keywordstr" MAP_X="mapXStr" MAP_Y="mapYStr" BR_TYPE="BR_Typestr"/> </Request> </Service></cdms> ';
	LXML_DATA.slXmlName.Add('C063N2.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// ��, ��� ���� �߼� ���� SMS02.XML 2012.10.30 KHS
  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
        + '<Service VersionNum="CallServer 1.0" ID="SMS02" Name="SendSMS"> <Error Code="" Message="" /> '
        + '<Data> <SMS  Receiver="ReceiverString" Sender="SenderString" Reservation="ReservationString" Memo="MemoString" ConfSlip="ConfSlipString" '
        + '                 WkSabun="WkSabunString" >MessageString</SMS></Data></Service></cdms> ';
  LXML_DATA.slXmlName.Add('SMS02.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  // ��� ���� ��û ���� 20121111 LYB
	sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="CallServer 1.0" ID="C601" Name="PayOut"> <Error Code="" Message="" /> '
				+ '<PayOut RowCount="���ڵ��"> C601VALUE </PayOut> </Service></cdms> ';
	LXML_DATA.slXmlName.Add('C601.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	//�αٱ�� �˻� C063N2   2012.11.15 KHS
	sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="CallServer 1.0" ID="C069" Name="���ӱ��˻�"> <Error Code="" Message="" /> '
				+ '<Request> <Data  WK_HEAD="WK_HEADstr" WK_STATUS="WK_STATUSstr" WK_CONN="WK_CONNStr" WK_SEARCH="WK_SEARCHStr" WK_WORD="WK_WORDStr" /> </Request> </Service></cdms> ';
	LXML_DATA.slXmlName.Add('C069.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header>  <UserID Value="UserIDString" />  <ClientVer Value="" />  <ClientKey Value="ClientKeyString" /> '
        + '</header> <Service VersionNum="CallServer 1.0" ID="SYSDATETIME" Name="sysdate">  <Data ClientDatetime=""/> </Service></cdms>';
	LXML_DATA.slXmlName.Add('SYSDATETIME.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> '
        + '<ClientKey Value="ClientKeyString" /> </header> <Service VersionNum="CallServer 1.0" ID="JON06050" Name="����������"> <Error Code="" Message="" /> '
        + '<Request> <Data ConfSlip="ConfSlipString"/> </Request> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('JON06050.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // ������ ���� ���� �ڷ� ��û ����

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> '
        + '<ClientKey Value="ClientKeyString" /> </header> <Service VersionNum="CallServer 1.0" ID="JON06060" Name="�����������ȸ"> <Error Code="" Message="" /> '
        + '<Request> <Data SearchOption="SearchOptionString" DayGubun="DayGubunString" SearchHdNo="SearchHdNoString" SearchBrNo="SearchBrNoString"/> </Request> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('JON06060.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // ��������� �ڷ� ��û ����

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> '
        + '<ClientKey Value="ClientKeyString" /> </header> <Service VersionNum="CallServer 1.0" ID="JON06062" Name="���������Ȯ��"> <Error Code="" Message="" /> '
        + '<Request> <Data ConfSlip="ConfSlipString" Gubun="GubunString"/> </Request> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('JON06062.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // ������ҿ��� ���� ���� ��û ����

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> '
        + '<ClientKey Value="ClientKeyString" /> </header> <Service VersionNum="CallServer 1.0" ID="WOR00010" Name="����̵��α���ȸ"> <Error Code="" Message="" /> '
        + '<Request> <Data WkSabun="WkSabunString" DayGubun="DayGubunString" WkBeachaTime="WKBeachaTimeString" EndWkBeachaTime="EndWkBeachaTimeString" ConfSlip="ConfSlipString" SearchGubun="SearchGubunString"/> </Request> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('WOR00010.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // ����̵��α� ��û ����


{   CidsYn   ="CID������ ���� ������ â���� ���� (y,n)"
    CidsAuto  ="CID�����κ��� �����Ǿ� ���� ������û�� (1)"
    CidsInline  ="������ȣ  (CID�������� �����Ѱ�)"
    CidsDnis  ="DNIS��ȣ  (CID�������� �����Ѱ�)"
    CidsKeyNumber ="��ǥ��ȣ  (CID�������� �����Ѱ�)"
    CidsCidNum  ="����ȣ  (CID�������� �����Ѱ�)"
    CidsCidKey  ="����ȣ������Ű��  (CID�������� �����Ѱ�)"
    ManTel   ="����ȣ   (������ ���Ƿ� ����ȣ�Է�)"
    ManKeyNumber ="��ǥ��ȣ   (������ ���Ƿ� ����/��ǥ��ȣ ����)"
    ManBrNo   ="�����ڵ�   (������ ���Ƿ� ����/��ǥ��ȣ ����)"/
}

  sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
        + '<Service VersionNum="CallServer 1.0" ID="JON01010" Name="CustInfo"> <Error Code="" Message="" /> <Data> '
        + '<Accept CidsYn = "CidsYnString", CidsAuto = "CidsAutoString", CidsInline = "CidsInlineString", CidsDnis = "CidsDnisString", CidsKeyNumber = "CidsKeyNumberString" '
        + 'CidsCidNum = "CidsCidNumString", CidsCidKey  = "CidsCidKeyString", ManTel = "ManTelString", ManKeyNumber = "ManKeyNumberString", ManBrNo = "ManBrNoString"/> </Data> </Service> </cdms>';
  LXML_DATA.slXmlName.Add('JON01010.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  //  CidsYn   ="CID������ ���� ������ â���� ���� (y,n)"
  //  CidsVersion		="CID�����������ݹ��� (0:������, 1:CIDXE����)"
  //  CidsAuto  ="CID�����κ��� �����Ǿ� ���� ������û�� (1)"
  //  CidsInline  ="������ȣ  (CID�������� �����Ѱ�)"
  //  CidsDnis  ="DNIS��ȣ  (CID�������� �����Ѱ�)"
  //  CidsKeyNumber ="��ǥ��ȣ  (CID�������� �����Ѱ�)"
  //  CidsCidNum  ="����ȣ  (CID�������� �����Ѱ�)"
  //  CidsCidKey  ="����ȣ������Ű��  (CID�������� �����Ѱ�)"
  //  ManTel   ="����ȣ   (������ ���Ƿ� ����ȣ�Է�)"
  //  ManKeyNumber ="��ǥ��ȣ   (������ ���Ƿ� ����/��ǥ��ȣ ����)"
  //  ManBrNo   ="�����ڵ�   (������ ���Ƿ� ����/��ǥ��ȣ ����)"/>

  sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
        + '<Service VersionNum="CallServer 1.0" ID="JON03010" Name="CustInfo"> <Error Code="" Message="" /> '
        + '<Data><Accept  CidsYn="CidsYnString" CidsVersion="CidsVersionString" CidsAuto="CidsAutoString" CidsInline="CidsInlineString" CidsDnis="CidsDnisString" CidsKeyNumber="CidsKeyNumberString" '
        +               ' CidsCidNum="CidsCidNumString" CidsCidKey="CidsCidKeyString" CidsBrNo="CidsBrNoString" ManTel="ManTelString" ManKeyNumber="ManKeyNumberString" ManBrNo="ManBrNoString"/> </Data> </Service> </cdms>';
  LXML_DATA.slXmlName.Add('JON03010.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  // ������ ���� �� ���� ���� ����
  sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
        + '<Service VersionNum="CallServer 1.0" ID="JON03032" Name="AutoCallSMSSave"> <Error Code="" Message="" /> '
        + '<Data action="actionString" CuSeq="CuSeqString" CuTel="CuTelString" KeyNumber ="KeyNumberString" HdNo="HdNoString" BrNo="BrNoString" OutBound="OutBoundString" Type="TypeString" > <Msg1>Msg1String</Msg1> <Msg2>Msg2String</Msg2> </Data> </Service></cdms>';
  LXML_DATA.slXmlName.Add('JON03032.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  // ������ MMS �̹��� ���� �� ��ȸ (COM00020)
  sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
        + '<Service VersionNum="1" ID="COM00020" Name="AutoCallMMSImageSave"> <Error Code="" Message="" /> '
        + '<Data Type="TypeString" BrNo="BrNoString" Filename="FilenameString" Empty1="" Empty2="" ><![CDATA[BASE64String]]></Data> </Service></cdms>';
  LXML_DATA.slXmlName.Add('COM00020.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  // ������ �� ��ȸ ���� (JON03030_02)
  sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
        + '<Service VersionNum="2" ID="JON03030_02" Name="AutoCallInfo"> <Error Code="" Message="" /> '
        + '<Data CuTel="CuTelString" KeyNumber="KeyNumberString" HdNo="HdNoString" BrNo="BrNoString" /></Service></cdms>';
  LXML_DATA.slXmlName.Add('JON03030_02.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// ���������� ���� ���� (JON03031_02)
	sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="2" ID="JON03031_02" Name="AutoCallSMSSave"> <Error Code="" Message="" /> '
				+ '<Data CuSeq="CuSeqString" CuTel="CuTelString" KeyNumber="KeyNumberString" HdNo="HdNoString" BrNo="BrNoString" OutBound="OutBoundString" >'
				+ '<SmsInfo Type="SendTypeString"> '
				+ '<Sms SmsType="SmsTypeString1" FromNum="FromNumString1" Filenames="FilenamesString1">MSGSting1</Sms> '
				+ '<Sms SmsType="SmsTypeString2" FromNum="FromNumString2" Filenames="FilenamesString2">MSGSting2</Sms> '
				+ '</SmsInfo></Data> </Service></cdms>';
	LXML_DATA.slXmlName.Add('JON03031_02.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// ��������ȸ ���� ���� New (JON03032_02)
	sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="2" ID="JON03032_02" Name="������ ���ڼ�������"><Error Code="" Message="" />'
				+ '<Data Type="FTypeString" KeyNumber="KeyNumberString" HdNo="HdNoString" BrNo="BrNoString" Empty1="" Empty2=""> '
				+ '<SmsInfo Count="0" Type="SendTypeString" OshotId="OshotIdString" OshotPwd="OshotPwdString"> '
				+ '<Sms SmsType="SmsTypeString1" FromNum="FromNumString1" Filenames="FilenamesString1">MSGSting1</Sms> '
				+ '<Sms SmsType="SmsTypeString2" FromNum="FromNumString2" Filenames="FilenamesString2">MSGSting2</Sms> '
				+ '</SmsInfo></Data> </Service></cdms>';
	LXML_DATA.slXmlName.Add('JON03032_02.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  // ���� ���� ����
  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</header>'
				+ '	<Service VersionNum="3" ID="JON03080" Name="AcceptRegister"> <Error Code="" Message="" /> <Data> <Accept KmInsFeeFreeYn="KmInsFeeFreeYnString" AiOutOption="AiOutString" CashSaveYn="CashSaveYnString" MlgSaveYn="MlgSaveYnString" CarType="CarTypeString"'
				+ ' ViewLevel="ViewLevelString" WkFromAge="WkFromAgeString" WkToAge="WkToAgeString" Status="StatusString" CustTel="CustTelString" CallingBrNo="CallingBrNoString" CallingKeyNumber="CallingKeyNumberString" '
				+ ' InSabun="InSabunString" CallCenter="CallCenterString" MaddBrch="MaddBrchString" KeyNumber="KeyNumberString" ConfMemo="ConfMemoString" ConfBrch="ConfBrchString"'
        + ' ConfBar="ConfBarString" ConfPretime="ConfPretimeString" ConfPreRealTime="ConfPreRealTimeString" GroupNo="GroupNoString" CustName="CustNameString" CarInfo="CarInfoString" CuCallingOption="CuCallingOptionString" BrTelYn="BrTelYnString" '
				+ ' CuBrTelYN="CuTelYnString" WkSabun="WkSabunString" SMS="SMSString" CustTel2="CustTel2String" CID="CIDString" BGroup="BGroupString" BName="BNameString" BName2="BName2String" CuSeq="CuSeqString" BaechaSMS="BaechaSMSString"'
				+ ' LevelCD="LevelCdString" ConfInfo2="ConfInfo2String" ConfInfo3="ConfInfo3String" ViaCharge="ViaChargeViaString" WaitTime="WTimeWTString" WaitCharge="WChargeWCString" AddCharge="AChargeACString" CbMemo="CbMemoString" CustDisplayMemo="CustDisplayMemoString"'
				+ ' SupportCharge="SupportChargeString" OtherCharge="OtherChargeString" Option="OptionString" DriverOption="DriverString" AutoBaechaYn="y" PostTime="PostTimeString" PostCharge="PostChargeString" WkCharge="WkChargeString" '
				+ ' CidLogSeq="CidLogSeqString" DNIS="DNISString" '
//				+ ' PlusYn="PlusYnString" PostChargeSmsYN="PostChargeSmsYNString" DriverCharge="DriverChargeString" AppCode="AppCodeString" ConfBcmsIn=""'
				+ ' PlusYn="PlusYnString" ConsShareYn="ConsShareYnString" PostChargeSmsYN="PostChargeSmsYNString" AppCode="AppCodeString" ConfBcmsIn="" CallBellStatus="CallBellStatusString"'
				+ ' ConfPreStatus="ConfPreStatus1String" ConfOptions="ConfOptionsString" CuMemo="CuMemoString"> CidInfoString </Accept>'
				+ ' <DepartInfo Count="AddressCountString"> DepartInfoString </DepartInfo> <DestInfo Count="AddressCountString"> DestInfoString </DestInfo> <ViaInfo Count="ViaInfoCountString"> ViaInfoString </ViaInfo> </Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('JON03080.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// ���� ���� ����
	sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</header>'
				+ '	<Service VersionNum="4" ID="JON03081" Name="AcceptModify"> <Error Code="" Message="" /> <Data>	<Accept KmInsFeeFreeYn="KmInsFeeFreeYnString" AiOutOption="AiOutString" CashSaveYn="CashSaveYnString" MlgSaveYn="MlgSaveYnString" CarType="CarTypeString"'
				+ ' ViewLevel="ViewLevelString" WkFromAge="WkFromAgeString" WkToAge="WkToAgeString" ConfSlip="ConfSlipString" InSabun="InSabunString"'
				+ ' Charge="SLIPChargeString" CbCharge="CbChargeString" CardCharge="CardChargeString" MileCharge="MileChargeString"'
        + ' ConfStatus="ConfStatusString" Mode="ModeString" CustTel="CustTelString" CustName="CustNameString" CarInfo="CarInfoString" Memo="ConfMemoString"'
				+ ' CustTel2="CustTel2String" PayGubun="PayGubunString" TranNo="TranNoString" MCharge="MChargeString" URLReq="URLReqString" BGroup="BGroupString" BName="BNameString" BName2="BName2String"'
				+ ' CuSeq="CuSeqString" ConfBar="ConfBarString" KeyNumber="KeyNumberString" BrNo="BrNoString" ConfPretime="ConfPretimeString" ConfPreRealTime="ConfPreRealTimeString"  LevelCD="LevelCdString" ConfInfo2="ConfInfo2String" ConfInfo3="ConfInfo3String"'
				+ ' ViaCharge="ViaChargeViaString" WaitTime="WTimeWTString" WaitCharge="WChargeWCString" AddCharge="AChargeACString" CbMemo="CbMemoString" CustDisplayMemo="CustDisplayMemoString" SupportCharge="SupportChargeString" OtherCharge="OtherChargeString" '
				+ ' CuCallingOption="CuCallingOptionString" BrTelYn="BrTelYnString" CuBrTelYN="CuTelYnString" SMS="SMSString"'
				+ ' Option="OptionString" ChangeStatus="ChangeStatusString" PostTime="PostTimeString" PostCharge="PostChargeString"  WkCharge="WkChargeString" PlusYn="PlusYnString" ConsShareYn="ConsShareYnString" PostChargeSmsYN="PostChargeSmsYNString"'
				+ ' Call2YN = "Call2YNString" EstTime="EstTimeString" EstDist="EstDistString" DriverCharge="DriverChargeString" CallBellStatus="CallBellStatusString" CallBellMemId="CallBellMemIdString"'
				+ '	DriverOption="DriverOptionString" ConfPreStatus="ConfPreStatus1String" ConfOptions="ConfOptionsString" CuMemo="CuMemoString"/> <Depart Area1="stArea1String" Area2="stArea2String" Area3="stArea3String" Area4="stArea4String" Area5="stArea5String" '
        + ' ConfInfo="ConfInfoString" MapX="stMapXString" MapY="stMapYString" WaitTime="WaitTimeString" ChargeType="ChargeTypeString" AreaOpt="stAreaSOPTString" AreaDebug="stAreaSDebugString" AreaUp="AreaUPS" AreaSetType="stAreaSetTypeString" '
        + ' AreaKeyword="stAreaKeywordString" AreaId="stAreaIdString" /> <Dest Area1="edArea1String" Area2="edArea2String" Area3="edArea3String" Area4="edArea4String" Area5="edArea5String" MapX="edMapXString"'
				+ ' MapY="edMapYString" AreaOpt="edAreaEOPTString" AreaDebug="edAreaEDebugString" AreaUp="AreaUPE" AreaSetType="edAreaSetTypeString" AreaKeyword="edAreaKeywordString" AreaId="edAreaIdString"/> '
        + ' <ViaInfo Count="ViaInfoCountString">	ViaInfoString	</ViaInfo> </Data>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('JON03081.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  // ���� �����̾��� �Ϲ��ݷ� ��ȯ
  sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
        + '<Service VersionNum="1" ID="JON03082" Name="CallChange"> <Error Code="" Message="" /> <Data ConfSlip="ConfSlipString" /> </Service> </cdms>';
  LXML_DATA.slXmlName.Add('JON03082.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
        + '<Service VersionNum="1" ID="JON03060" Name="RcYogm"> <Error Code="" Message="" /> <Data> '
        + '<Option nowOrderWorker="strNowOrderWorker" db="strDB" debug="strDebug" nowWeather="strNowWeather"/> '
        + '<Search type="strType" departure="strDeparture" arrive="strArrive"/> </Data> </Service> </cdms>';
  LXML_DATA.slXmlName.Add('JON03060.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
        + '<Service VersionNum="1" ID="JON03060N2" Name="SmartPrice"> <Error Code="" Message="" /> <Data> '
        + '<Option nowOrderWorker="strNowOrderWorker" nowWeather="strNowWeather"/> '
        + '<Search type="strType" departure="strDeparture" arrive="strArrive" testDateTime="strtestDateTime"/> </Data> </Service> </cdms>';
  LXML_DATA.slXmlName.Add('JON03060N2.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
        + '<Service VersionNum="1" ID="JON06010" Name="��ȭ����"> <Error Code="" Message="" /> <Request> '
        + '<Data SearchGubun="strSearchGubun" SearchKeyword="strSearchKeyword" CallStatus="strCallStatus" SearchDate="strSearchDate" LastUpdate="strLastUpdate"/></Request> </Service> </cdms>';
  LXML_DATA.slXmlName.Add('JON06010.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
        + '<Service VersionNum="1" ID="JON06011" Name="��ȭ���º���"> <Error Code="" Message="" /> <Request> '
        + '<Data CallKey="stCallKey" Status="strStatus" /></Request> </Service> </cdms>';
  LXML_DATA.slXmlName.Add('JON06011.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
        + '<Service VersionNum="1" ID="JON06020" Name="UnansweredCall"> <Error Code="" Message="" /> <Request> '
        + '<Data SearchDNIS="strSearchDNIS" SearchGubun="strSearchGubun" SearchText="strSearchText" '
        + '      FromDate="strFromDate"	ToDate="strToDate"/></Request> </Service> </cdms>';
  LXML_DATA.slXmlName.Add('JON06020.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	//lbs��ġ��û �������� 
	sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="1" ID="JON03100" Name="RequestLbs"> <Error Code="" Message="" />'
				+ '<Req BrNo="strBrNo" Cid="strCid"/></Service> </cdms>';
//				+ '<Req BrNo="strBrNo" Cid="strCid"/></Req><Res Type="" A1="" A2="" A3="" A4="" Poi="" Lat="" Lon=""/> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('JON03100.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// SMS="�� sms ���Űź� ���� (y,n)" CuSeq="��seq" CustTel="����ȭ��ȣ"
  sTmp := '<?xml version="1.0" encoding="EUC-KR"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> '
        + '<ClientKey Value="ClientKeyString" /> </header> <Service VersionNum="CallServer 1.0" ID="JON03020" Name="SMS�ź�"> <Error Code="" Message="" /> '
        + '<Request> <Data SMS="SMSString" CuSeq="CuSeqString" CustTel="CustTelString" /> </Request> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('JON03020.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // SMS�ź� ��û ����

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="1" ID="WOR00020" Name="����������">	<Error Code="" Message="" /> <Request><Data WkSabun="WkSabunStr">ItemStr</Data></Request></Service></cdms>';
	LXML_DATA.slXmlName.Add('WOR00020.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="1" ID="COM00030" Name="��������INI����/��ȸ">	<Error Code="" Message="" /> <Request><Data HdNo="HdNoStr" type="typeStr" UpdateOption="UpdateOptionStr"><![CDATA[fileString]]></Data></Request></Service></cdms>';
	LXML_DATA.slXmlName.Add('COM00030.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
				+ '	<Service VersionNum="CallServer 1.0" ID="C045N3" Name="ȸ��_�ڵ�SMS����">	<Error Code="" Message="" /> <Request action="ActionStr" branch="BranchStr" sms_block_real="realStr"'
        + ' sms_block_tomorrow="tomorrowStr" fin_duplicate_yn="finDupYnStr" duplicate_yn="dupYnStr" sms_ellipsis_tomorrow_yn="ellipsis_tomorrow">	ItemStr	</Request>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C045N3.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" /><ClientKey Value="ClientKeyString" /></header>   '
				+ '	<Service VersionNum="CallServer 1.0" ID="CIDXE01" Name="CidXe"><Error Code="" Message="" /><CidXe action="actionStr" Count="cntStr"> '
				+ '	<Cid 	cids_id="strID" cids_pwd="strPW" hd_no="strHDNO" br_no="strBRNO" cc_no="strCCNO" cids_name="strCIDNM" cids_memo="strCIDMEMO" />	</CidXe> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('CIDXE01.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header>	<UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /><ClientKey Value="ClientKeyString" /></header>   '
  	    + ' <Service VersionNum="CallServer 1.0" ID="STAT01" Name="�ű��������"><Error Code="" Message="" />'
        + ' <Request>	<Data HdNo="strHdNo" BrNo="strBrNo"	FromDate="strFromDate" ToDate="strToDate"/>	</Request>	</Service></cdms> ';
	LXML_DATA.slXmlName.Add('STAT01.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms><header><UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" /><ClientKey Value="ClientKeyString" /> </header>    '
        + '	<Service VersionNum="CallServer 1.0" ID="STAT02" Name="�ð��뺰���">	<Error Code="" Message="" />'
        + ' <Request>	<Data HdNo="strHdNo" BrNo="strBrNo"	FromDate="strFromDate" ToDate="strToDate"/>	</Request>	</Service></cdms> ';
	LXML_DATA.slXmlName.Add('STAT02.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms><header><UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" /><ClientKey Value="ClientKeyString" /> </header>    '
        + '	<Service VersionNum="CallServer 1.0" ID="STAT03" Name="�����ݼ����">	<Error Code="" Message="" />'
        + ' <Request>	<Data HdNo="strHdNo" BrNo="strBrNo"	FromDate="strFromDate" ToDate="strToDate"/>	</Request>	</Service></cdms> ';
	LXML_DATA.slXmlName.Add('STAT03.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms><header><UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" /><ClientKey Value="ClientKeyString" /> </header>    '
        + '	<Service VersionNum="CallServer 1.0" ID="STAT04" Name="�ű�����������">	<Error Code="" Message="" />'
        + ' <Request>	<Data HdNo="strHdNo" BrNo="strBrNo"	FromDate="strFromDate" ToDate="strToDate"/>	</Request>	</Service></cdms> ';
	LXML_DATA.slXmlName.Add('STAT04.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	//������ ����  COM00010   2014.11.23 KHS
	sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms><header><UserID Value="" /><ClientVer Value="" /><ClientKey Value="ClientKeyString" /></header> '
				+ '<Service VersionNum="CallServer 1.0" ID="COM00010N2" Name="��� �� �����ݰ���"><Error Code="" Message="" /><Request> '
				+ '<Data AutoSearch="strAutoSearch" LastUpdate="strLastUpdate" /> '
				+ '<Worker SearchYn="strSearchYn" ATTEND="strATTEND" STATE="strSTATE" BR_TYPE="strBR_TYPE" ' //(0:��ü, 1:�ڻ�, 2:Ÿ��)" '
				+ ' PASS_TIME="strPASS_TIME" KEYKIND="strKEYKIND" KEYWORD="strKEYWORD" DISTANCE="strDISTANCE" MAP_X="strMAP_X" MAP_Y="strMAP_Y" /> '
				+ '<Call SearchYn="strCallSearchYn" /></Request></Service></cdms> ';
	LXML_DATA.slXmlName.Add('COM00010N2.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	//POI�߰�����  JON03090   2014.12.5 KHS
	sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms><header><UserID Value="UserIDString" /><ClientVer Value="ClientVerString" /> '
        + '<ClientKey Value="ClientKeyString" /></header><Service VersionNum="5" ID="JON03090" Name="PoiReceipt"><Error Code="" Message="" /> '
        + '<Data><Accept HdNo="strHdNo" BrNo="strBrNo" PoiGubun="strPoiGubun" BArea1="strBArea1" BArea2="strBArea2" BArea3="strBArea3" '
        + 'HArea1="strHArea1" HArea2="strHArea2" HArea3="strHArea3" Poi="strPoiName" Memo="strMemo" MapX="strMapX" MapY="strMapY" '
        + 'PoiId="strPOIID" PoiType="strPoiType" PoiOpt="strPoiOpt"/></Data></Service></cdms> ';
	LXML_DATA.slXmlName.Add('JON03090.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	//���ο�����  ACC12010   2015.1.10 KHS
  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="ACC12010" Name="SMSMessage">	<Error Code="" Message="" /> <Request> <Data Month="strMonth" '
				+ '  Payment="strPayment"	Bill="strBill" HdNo="strHdNo"	BrNo="strBrNo" KeyNumber="strKeyNumber"	CorpName="strCorpName"/> '
        + '</Request></Service></cdms>';
	LXML_DATA.slXmlName.Add('ACC12010.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	//���ο������ϰ� �Ǵ� ����ó��  ACC12020   2015.1.10 KHS
  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="ACC12020" Name="SMSMessage">	<Error Code="" Message="" /> <Request> <Data CbCode="strCbCode" '
				+ '  HdNo="strHdNo"	BrNo="strBrNo" Month="strMonth"	PaymentYn="strPaymentYn" BillYn="strBillYn"	FinishCnt="strFinishCnt" FinishCharge="strFinishCharge" OrderCnt="strOrderCnt"/></Request></Service></cdms>';
	LXML_DATA.slXmlName.Add('ACC12020.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	//��ü����ȸ  ACC12030   2015.1.10 KHS
  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="ACC12030" Name="SMSMessage">	<Error Code="" Message="" /> <Request> '
        + ' <Data CbCode="strCbCode" Month="strMonth" HdNo="strHdNo" BrNo="strBrNo"/></Request></Service></cdms>';
	LXML_DATA.slXmlName.Add('ACC12030.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// �۱ݰ��� �������� Ȯ��  2016.04.28 LYB
  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <Header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</Header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C600" Name="PayOut">	<Error Code="" Message="" />'
        + ' <Data HdNo="strHdNo" BrNo="strBrNo" BankCd="strBankCd" Account="strAccount" Cash="strCash" /> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C600.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// ���ǹ��� ���� ��� ��ȸ  2021.08.24 KHS
	sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <Header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</Header>'
				+ '	<Service VersionNum="CallServer 1.0" ID="KM00010" Name="�����������ȸ">	<Error Code="" Message="" />'
				+ ' <Request> <Data KdDriverId="strKdDriverId" KdDriverName="strKdDriverName" KdDriverPhone="strKdDriverPhone" ServiceType="strServiceType" '
				+ '       Lat="strLat" Lng="strLng" LicenseType="strLicenseType" GearType="strGearType" Dist="strDist" Per="strPer" /> </Request></Service></cdms>';
	LXML_DATA.slXmlName.Add('KM00010.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData
	
	// ���ǹ���  2021.08.24 KHS
	sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <Header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</Header>'
				+ '	<Service VersionNum="5" ID="KM00020" Name="force_accept">	<Error Code="" Message="" />'
				+ ' <Request> <Data KdDriverId="strKdDriverId" ConfSlip="strConfSlip"/> </Request> </Service></cdms>';
	LXML_DATA.slXmlName.Add('KM00020.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// īī��T AI���ǥ  2021.09.08 KHS
	sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <Header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</Header>'
				+ '	<Service VersionNum="5" ID="KM00030" Name="��ο� ���� ��� ��ȸ">	<Error Code="" Message="" />'
				+ ' <Request> <Data Dep="strDep" Arr="strArr" Via="strVia" ScheduledAt="strScheduledAt"/> </Request> </Service></cdms>';
	LXML_DATA.slXmlName.Add('KM00030.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// īī����� ������ȸ  2021.09.13 KHS
	sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <Header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</Header>'
				+ '	<Service VersionNum="5" ID="KM00040" Name="���� ��� ��ȸ">	<Error Code="" Message="" />'
				+ ' <Request> <Data KdDriverId="strKdDriverId" HdNo="strHdNo" BrNo="strBrNo"/> </Request> </Service></cdms>';
	LXML_DATA.slXmlName.Add('KM00040.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// īī����� ���� ���� ��ȸ  2021.09.13 KHS
	sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <Header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</Header>'
				+ '	<Service VersionNum="5" ID="KM00050" Name="��� ���� ���� ��ȸ">	<Error Code="" Message="" />'
				+ ' <Request> <Data KdDriverId="strKdDriverId" HdNo="strHdNo" BrNo="strBrNo" Page="strPage" Per="strPer"/> </Request> </Service></cdms>';
	LXML_DATA.slXmlName.Add('KM00050.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData
end;

end.

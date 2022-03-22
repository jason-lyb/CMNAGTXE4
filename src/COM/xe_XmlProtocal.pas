unit xe_XmlProtocal;

interface

uses
  Classes, SysUtils, xe_gnl ;

procedure gfnc_XML_LOCAL_MAKE();
procedure gfnc_XML_LOCAL_MAKE1();
procedure gfnc_XML_LOCAL_MAKE2();

implementation

// ================================================================= 2011-10-16
//  XML전문 Protocal Unit 사용
//  [신규추가분에 대해서는 mx.mx 파일을 사용하지 않고 전문unit을 사용한다.]
procedure gfnc_XML_LOCAL_MAKE();
var
	sTmp : WideString;
begin
	LXML_DATA.slXmlName := TStringList.Create; // Xml 전문명 저장.
  LXML_DATA.slXmlData := TStringList.Create; // Xml 전문 데이터 저장.

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><CallManner version="1.0"><Session user="useridstring" remote="아이피" rqst="요청시간" resp=""/><Resp code="" msg="Mac Address"/>'
        + '<Biz id="10001" version="1.0"><Branches title="지사관리" action="SELECT" cnt="건수" branch="검색지사코드" head="검색본사코드" type="지사코드(1),지사명(2),대표번호(3),본사내지사공유차수(4),위치기반(5),콜센타운영(6,"y")" value="type 별 코드">'
        + '<Branch use="사용여부" head="본사코드" head_name="본사명" no="지사코드" name="지사명" area_code="지역코드" master_id="Master_ID" password="비밀번호" company_no="사업자번호" ceo="대표자명" mobile="핸드폰번호" phone="상황실전화번호"'
        + ' fax="팩스번호" zipcode="우편번호" address1="우편번호주소" address2="상세주소" cybank="가상계좌은행코드" cybank_account="가상계좌번호" cash="지사캐쉬" callcenter="콜센터지사코드" callrouting="대표번호라우팅설정" management_fee="프로그램사용료/월"'
        + ' program_value="기사사용료/월" cybank_yn="기사별가상계좌사용여부" insurance_yn="보험료대형여부" pn_worker="기사배차취소패널티" pn_center="상담원배차취소패널티" program_fee_type="기사수수료지불방식" cms_method="기사수수료방식" cms_type="기사수수료정산방식"'
        + ' cms_value="기사수수료정산값" share_level="본사내지사공유차수" lbs_yn="위치기반사용여부(y/n)" match_yn="매칭배차사용여부(y/n)" vm_touch="원클릭배차방식" cancel_yn="기사단말기배차취소여부" order_view="오더리스트표시항목" max_area="오더보기최대거리(km)"'
        + ' order_block_price="오더보기차단요금" sms_deposit="SMS캐쉬" sms_price_ad="광고SMS단가" sms_price_real="일반SMS단가" sms_delay="SMS발송지연시간" in_date="등록일">메모</Branch></Branches><Codes title="코드관리" action="SELECT" cnt="" system="시스템코드" detail="세부코드">'
        + ' </Codes><Codes title="코드관리" action="SELECT" cnt="" system="시스템코드" detail="세부코드"></Codes><Fees title="수수료표" action="SELECT" cnt="" head="본사코드" branch="지사코드" method="" type="" value=""></Fees><BranchTel action="SELECT" branch="지사코드" >'
        + ' <Item phone="대표번호" order_type="오더성격" base_charge="기본요금" sido="라우팅 시/도" gugun="라우팅 시/구/군" /></BranchTel><MapCity action="SELECT"></MapCity><Member title="사용자" action="SELECT" userid="사용자 ID" cnt=""><Item userid="" name="" password="" />'
        + ' </Member></Biz></CallManner>';
	LXML_DATA.slXmlName.Add('Branch.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><CallManner version="1.0"><Session user="goodwith" remote="" rqst="" resp=""/><Resp code="" msg=""/><Biz id="10001" version="1.0">'
        + ' <BranchConfig title="지사 Config" action="SELECT" branch="지사코드" code="Config 구분"></BranchConfig></Biz></CallManner>';
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

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="채워주세요" />	<ClientVer Value="" /> <ClientKey Value="" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C040" Name="BCCard">	<Error Code="" Message="" /> <BCCard>	<Search CustTel="보낼때채워주세요" CardNo="서버에서 채워줌"	CardType="1:무기명 2:기명 서버에서 채워줌"'
        + '	CustName="고객명.서버에서 채워줌"> <Pay Seq="" InDate="yyyymmddhh24miss" BrName="" Charge="" InID="" ConfSlip=""/> </Search> </BCCard> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C040.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="채워주세요" />	<ClientVer Value="" /> <ClientKey Value="" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C041" Name="BCCard">	<Error Code="" Message="" /> <BCCard>	<Pay CardType="1:무기명 2:기명 채워주세요" CardNo="채워주세요" CustTel="채워주세요"'
        + '	KeyNumber="채워주세요" BrNo="채워주세요" Charge="채워주세요" InsuYn="y/n 보험가입여부 채워주세요"	Snum="주민등록번호.보험가입 y일때만 채우면됨" />	</BCCard>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C041.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="채워주세요" />	<ClientVer Value="" /> <ClientKey Value="" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C042" Name="BCCard">	<Error Code="" Message="" /> <BCCard>	<Cancel Seq="채워주세요" CardType="0:기명 1:무기명 채워주세요" CardNo="채워주세요"	CustTel="채워주세요"/> </BCCard>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C042.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C044N1" Name="Head">	<Error Code="" Message="" /> <Heads action="SELECT/UPDATE" HdNo="HeadsHdNo"> <Head use="사용여부" union="연합코드" union_name="연합명"'
        + '	no="본사코드" name="본사명" company_no="사업자번호" symbol="본사기호" hierarchy="조직구조:수직(3),수평(7)" share_level="공유차수" bank="가상계좌지정은행코드"	settle_cycle="정산_주기(1:1일, 2:1주일, 3:월)"'
        + '	settle_bank="정산_은행" settle_account="정산_계좌번호" settle_depositor="정산_예금주" mem_id="대표아이디" mem_name="대표자명" mem_hp="대표연락처" Memo="메모"	zipcode="우편번호" address1="주소1"	address2="상세주소"> </Head> </Heads>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C044N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header> <UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C045N1" Name="SMSMessage">	<Error Code="" Message="" /> <SMSMessage title="SMS메시지설정" action="SELECT/UPDATE" branch="검색지사" cnt="">'
        + ' <Item	kind="SMS구분" use="사용여부"	from="회신번호">메세지내용</Item>	</SMSMessage>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C045N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C045N2" Name="SMSMessage">	<Error Code="" Message="" /> <Request action="ActionStr" branch="BranchStr" sms_block_real="realStr" sms_block_tomorrow="tomorrowStr">'
        + '	ItemStr	</Request>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C045N2.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C045N3" Name="회사_자동SMS설정">	<Error Code="" Message="" /> <Request action="ActionStr" branch="BranchStr" sms_block_real="realStr"'
        + ' sms_block_tomorrow="tomorrowStr" fin_duplicate_yn="finDupYnStr" duplicate_yn="dupYnStr" sms_ellipsis_tomorrow_yn="ellipsis_tomorrow">	ItemStr	</Request>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C045N3.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C046N1" Name="Branch">	<Error Code="" Message="" /> <Branches action="SELECT" head="본사코드" type="검색조건" value="검색내용">'
				+ '	<Branch use="사용여부" no="지사코드" name="지사명" phone="상황실전화번호"	cash="지사캐쉬" sms_deposit="SMS캐쉬" in_date="등록일"'
				+ ' real_incoming_tel="실착신번호" key_number="대표번호" br_ceo="대표자명" br_jumin_no="주민번호"	br_snum="사업자번호" br_biz_name="사업자명" '
				+ ' br_biz_tel="사업자 전화번호"	zipcode="우편번호"	addr1="주소1"	addr2="주소2"> </Branch> </Branches> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C046N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C047N1" Name="Branch">	<Error Code="" Message="" /> <Branch action="KEY_ACTION" branch="KEY_지사코드" type="KEY_TYPE">'
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
        + '	<Service VersionNum="CallServer 1.0" ID="C047N2" Name="Branch">	<Error Code="" Message="" />	<Branch action="KEY_ACTION" branch="KEY_지사코드" type="KEY_TYPE">'
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
        + '	<Service VersionNum="CallServer 1.0" ID="C048N1" Name="BranchConfig">	<Error Code="" Message="" /> <BranchConfig title="콜대행비" action="SELECT" branch="KEY_지사코드" code="KEY_구분" cnt="">'
        + '	<Item config="항목명" title="내용" branch="입금지사코드" branch_name="입금지사명" price="금액" />	</BranchConfig>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C048N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
				+ '	<Service VersionNum="CallServer 1.0" ID="C049N1" Name="BranchTel"> <Error Code="" Message="" />	<BranchTel action="KEY_ACTION" branch="KEY_지사코드" phone="KEY_대표번호"	sido="KEY_라우팅시도"'
				+ '	gugun="KEY_라우팅군구" cnt=""> <Item phone="VAL_대표번호" order_type="VAL_오더타입" base_charge="VAL_콜기본요금"'
				+ ' sido="VAL_라우팅시도" gugun="VAL_라우팅군구" real_incoming_tel="실착신번호">VAL_메세지</Item></BranchTel>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C049N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C050N1" Name="Fees">	<Error Code="" Message="" /> <Fees title="기사수수료" action="KEY_ACTION" head="KEY_본사코드" branch="KEY_지사코드"  cnt="">'
        + ' <Item code="수수료코드" name="수수료그룹명" prepay="선납/후납(s/h)" type="계산방법" value="계산값" />	</Fees>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C050N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C051N1" Name="MapCity"> <Error Code="" Message="" />	<MapCity title="대표번호관리_주소" action="SELECT" cnt=""> <Items sido="시도" cnt="">'
        + '	<Item gugun="구군" /> </Items> </MapCity>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C051N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C052N1" Name="Recept">	<Error Code="" Message="" /> <Recept title="입금표관리" action="KEY_ACTION" head="KEY_본사코드" branch="KEY_지사코드" cnt="">'
        + ' <Items code="입금표코드" name="입금표명" cnt=""> <Item price="운행요금1" charge="수수료1" /> </Items>	</Recept>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C052N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C053N1" Name="CallCenter">	<Error Code="" Message="" /> <CallCenter title="콜센터" action="SELECT" cnt="">	<Item name="지사명" no="지사코드"> </Item> </CallCenter>	</Service></cdms>';
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
        + '	<Service VersionNum="CallServer 1.0" ID="C058N1" Name="인증현황">	<Error Code="" Message="" /> <Request> <Data  HD_NO="HdNoString" BR_NO="BrNoString" FROM_DATE="FromDateString" TO_DATE="ToDateString" MEM_ID="MemIDString" />	</Request> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C058N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C059N1" Name="인증관리">	<Error Code="" Message="" /> <Request> <Data Mode="ModeString" AUTH_TYPE="AuthTypeString" HD_NO="HdNoString"'
        + ' BR_NO="BrNoString" MEM_ID="MemIDString" GUBUN="GUBUNString" SEARCH_STR="SEARCH_STRString" PC_SEQ="PCSeqString" AUTH_ST_CD="AuthStCdString" ADD_AUTH_DAY="AddAuthDayString" REQ_ID="ReqIDString" WORK_STATUS="STATUSString" FROM_DAY="FROMDAYString" '
        + ' TO_DAY="TODAYString" />	</Request> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C059N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C061N1" Name="번지검색">	<Error Code="" Message="" /> <Request> <Data Mode="modeStr" CITY="cityStr" WARD="wardStr" STREET="streetStr" NO="noStr" /> </Request>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C061N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C062N1" Name="상호검색">	<Error Code="" Message="" /> <Request> <Data  Mode="modeStr" NAME="nameStr" CITY="cityStr" WARD="wardStr"'
        + ' STREET="streetStr" ST_X="stXStr" ST_Y="stYStr" ED_X="edXStr" ED_Y="edYStr" />	</Request> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C062N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C063N1" Name="인근기사보기">	<Error Code="" Message="" /> <Request> <Data  Mode="modeStr" ATTEND="attendStr" DISTANCE="distanceStr" MAP_X="mapXStr" MAP_Y="mapYStr" />	</Request> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C063N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C064N1" Name="행정동검색">	<Error Code="" Message="" /> <Request> <Data CITY="cityStr" WARD="wardStr" />	</Request> </Service></cdms>';
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

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><CallManner version="1.0"> <Session user="useridstring" remote="아이피" rqst="요청시간" resp=""/><Resp code="" msg="Mac Address"/>'
        + ' <Biz id="10001" version="1.0"><Codes title="코드관리" action="SELECT" system="시스템코드" detail="세부코드"></Codes></Biz></CallManner>';
	LXML_DATA.slXmlName.Add('Codes.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><CallManner version="1.0"><Session user="useridstring" remote="아이피" rqst="요청시간" resp=""/><Resp code="" msg="Mac Address"/>'
        + ' <Biz id="10001" version="1.0"><Heads title="본사관리" action="SELECT" cnt="" head="검색본사코드" union=""></Heads>'
        + ' <Branches title="지사관리" action="Branches SELECT|INSERT|UPDATE|DELETE" cnt="" branch="" head="Head Code"></Branches><Mileage title="마일리지" action="Mileage SELECT" branch="검색지사" cnt="">'
        + ' </Mileage><SMSMessage title="SMS메시지설정" action="SELECT" branch="검색지사" cnt=""></SMSMessage></Biz></CallManner>';
	LXML_DATA.slXmlName.Add('Mieage.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><CallManner version="1.0"><Session user="useridstring" remote="아이피" rqst="요청시간" resp=""/><Resp code="" msg="Mac Address"/>'
        + ' <Biz id="10001" version="1.0"><Penalty title="배차취소페널티" action="SELECT"></Penalty></Biz></CallManner>';
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
	// 고객, 기사 문자 발송 수정 SMS02.XML 2012.10.30 KHS
  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
        + '<Service VersionNum="CallServer 1.0" ID="SMS02" Name="SendSMS"> <Error Code="" Message="" /> '
        + '<Data> <SMS  Receiver="ReceiverString" Sender="SenderString" Reservation="ReservationString" Memo="MemoString" ConfSlip="ConfSlipString" '
        + '                 WkSabun="WkSabunString" >MessageString</SMS></Data></Service></cdms> ';
  LXML_DATA.slXmlName.Add('SMS02.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><CallManner version="1.0"><Session user="useridstring" remote="아이피" rqst="요청시간" resp=""/><Resp code="" msg="Mac Address"/>'
        + ' <Biz id="10001" version="1.0"><Member title="사용자" action="SELECT" userid="아이디" head="본사코드" branch="지사코드" level="사용자그룹" type="검색조건:아이디(1),이름(2),사용유무(3)" value="type 별 값">'
        + ' <Item head="본사코드" branch="지사코드" userid="아이디" name="이름" password="비밀번호" use="사용여부" level="사용자그룹" phone="연락처" mobile="핸드폰" social_no="주민번호" zipcode="우편번호"'
        + ' address1="우편번호주소" address2="상세주소" in_date="등록일" reg_date="입사일" >메모</Item></Member><MemberRole title="사용자권한" action="SELECT|UPDATE" userid="사용자 ID" type="1:콜보기권한만" value="콜보기권한만">'
        + ' <Item menu_id="메뉴_ID" role="권한" /></MemberRole></Biz></CallManner>';
	LXML_DATA.slXmlName.Add('UserControl.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><CallManner version="1.0"><Session user="goodwith" remote="" rqst="" resp=""/><Resp code="" msg=""/>'
        + ' <Biz id="10001" version="1.0"><Workers title="기사관리" action="SELECT|INSERT|UPDATE|DELETE" cnt="조회건수" union="연합코드" head="본사코드" branch="지사코드" worker="사번" type="기사상태(1),출퇴근(2),보험만료일(3)"'
        + ' value="type 별 코드" search="사번|지사사번|이름" terminal="핸드폰|단말기번호"><Workerunion="연합"head="본사"branch="지사"sabun="지사사번"no="사번"status="기사상태"name="이름"sex="성별(m,w)"social_no="주민번호"'
        + ' email="이메일"mobile="핸드폰"phone="연락처"zipcode="우편번호"address1="우편번호주소"address2="상세주소"license="기사면허번호"in_date="입사일"out_date="퇴사일"telecom="이통사(SKT,KTF,LGT)"terminal_no="단말기번호"'
        + ' terminal_type="휴대폰(h),PDA(p),WAP(w)"terminal_model="모델"bank="가상계좌은행"account="가상계좌번호"insurance_company="보험사"insurance_no="보험가입번호"insurance_expired="보험만료일"working="출/퇴근 구분"'
        + ' area_code="지사운행지역"area="기사운행지역"penalty="패널티시간"public_cash="공용캐쉬"personal_cash="자체캐쉬"order_view="기사오더보기:자사오더(0), 타사오더포함(1)"cms_code="기사수수료그룹"cms_method="기사수수료구분"'
        + ' cms_type="기사수수료방식"cms_value="기사수수료값"short_memo="간단메모"stop_memo="기타정지사유"RET="INSERT/UPDATE/DELETE 시 Worker별 처리 건수"MSG="INSERT/UPDATE/DELETE 시 처리 결과 메시지"><Memo>기사 메모</Memo>'
        + ' </Worker></Workers><Heads title="본사관리" action="SELECT" head="본사코드" union="연합코드"><Headuse="사용여부"union="연합코드"union_name="연합명"no="본사코드"name="본사명"company_no="사업자번호"symbol="본사기호"'
        + ' hierarchy="조직구조:수직(3),수평(7)"share_level="공유차수"bank="가상계좌지정은행코드"settle_cycle="정산_주기(1:1일, 2:1주일, 3:월)"settle_bank="정산_은행"settle_account="정산_계좌번호"settle_depositor="정산_예금주"'
        + ' mem_id="대표아이디"mem_name="대표자명"mem_hp="대표연락처"><Memo>본사 메모</Memo></Head></Heads><!--기사수수료지불방식(program_fee_type)- 1:일별 2:10일기준 3:1달기준 5:출근일기준-후불 6:완료오더기준-하루단위'
        + ' 7:완료오더기준-지사대납)오더리스트표시항목(order_view)- 6자리(본사기호,출발지,출발지세부,도착지,요금,도착지세부)대표번호라우팅설정(callrouting)- '':사용안함, M:전국번호콜센터본사, S:지방콜센터원클릭배차방식(vm_touch)'
        + ' - 1:원터치, 2:투터치기사단말기배차취소가능여부(cancel_yn)- y:가능, n:불가능 m:선택가능--><Branches title="지사관리" action="SELECT" branch="지사코드" head="본사코드" type="지사코드(1),지사명(2),대표번호(3)'
        + ' ,본사내지사공유차수(4),위치기반(5),콜센타운영(6,"y")" value="type 별 코드"><Branch use="사용여부" head="본사코드" head_name="본사명" no="지사코드" name="지사명" area_code="지역코드" master_id="Master_ID"'
        + ' password="비밀번호" company_no="사업자번호" ceo="대표자명" mobile="핸드폰번호" phone="상황실전화번호" fax="팩스번호" zipcode="우편번호" address1="우편번호주소" address2="상세주소" cybank="가상계좌은행코드"'
        + ' cybank_account="가상계좌번호" cash="지사캐쉬" callcenter="콜센터지사코드" callrouting="대표번호라우팅설정" management_fee="내로그램사용료/월" program_value="기사사용료/월" cybank_yn="기사별가상계좌사용여부"'
        + ' insurance_yn="보험료대형여부" pn_worker="기사배차취소패널티" pn_center="상담원배차취소패널티" program_fee_type="기사수수료지불방식" cms_method="기사수수료방식" cms_type="기사수수료정산방식" cms_value="기사수수료정산값"'
        + ' share_level="본사내지사공유차수" lbs_yn="위치기반사용여부(y/n)" match_yn="매칭배차사용여부(y/n)" vm_touch="원클릭배차방식" cancel_yn="기사단말기배차취소가능여부" order_view="오더리스트표시항목" max_area="오더보기최대거리(km)"'
        + ' order_block_price="오더보기차단요금" sms_deposit="SMS캐쉬" sms_price_ad="광고SMS단가" sms_price_real="일반SMS단가" sms_delay="SMS발송지연시간" in_date="등록일">메모</Branch></Branches><!--기사 수수료method : (1)모든기사동일'
        + ' ,(2)기사별수수료그룹type : (1)1일정액, (2)입금표, (3)정액, (4)정률, (5)주간정액, (6)주급플-5, (7)주급플-15, (8)주급플-10, (9)주간정액-타사콜제 사용안함value : 금액 or 입금표코드|수수료그룹코드--><Fees title="수수료표"'
        + ' action="SELECT" head="본사코드" branch="지사코드" method="" type="" value=""><!-- 모든 기사 동일(입금표 사용시) --><Items code="입금표코드" name="입금표명"><Item price="운행요금(이상)" charge="수수료(100 이하는 정률%)" />'
        + ' </Items><!-- 기사별수수료 그룹 사용 --><Item code="수수료그룹코드" name="수수료그룹명" prepay="선(s)/후납(h)" type="계산방법" value="계산값" /></Fees><!-- 입금표 상세 등록시 중복된 price 값 있으면 안됨 -->'
        + ' <Fees title="입금표 등록" action="INSERT" head="본사코드" branch="지사코드" method="1"><Item name="입금표명" /><Item code="입금표코드" price="운행요금" charge="수수료" /></Fees><Fees title="입금표 수정" action="UPDATE"'
        + ' head="본사코드" branch="지사코드" method="1"><Item code="입금표코드" name="입금표명" /><Item code="입금표코드" price="운행요금" charge="수수료" /></Fees><Fees title="입금표 삭제" action="DELETE" head="본사코드" branch="지사코드"'
        + ' method="1"><Item code="입금표코드" /><Item code="입금표코드" price="운행요금" /></Fees><Fees title="수수료그룹 등록" action="INSERT" head="본사코드" branch="지사코드" method="2"><Item name="수수료그룹명" prepay="선(s)/후납(h)"'
        + ' type="계산방법" value="계산값" /></Fees><Fees title="수수료그룹 수정" action="UPDATE" head="본사코드" branch="지사코드" method="2"><Item code="수수료그룹코드" name="수수료그룹명" prepay="선(s)/후납(h)" type="계산방법" value="계산값" />'
        + ' </Fees><Fees title="수수료그룹 삭제" action="DELETE" head="본사코드" branch="지사코드" method="2"><Item code="수수료그룹코드" /></Fees><BlackWorkers title="불량기사리스트" action="SELECT" terminal_no="단말기번호" social_no="주민번호">'
        + ' <Worker terminal_no="단말기번호" social_no="주민번호" date="등록시간" branch="등록지사명" phone="등록지사연락처"><Memo>불량기사</Memo></Worker></BlackWorkers><BlockLists title="차단리스트" action="SELECT"'
        + ' type="차단종류(1:기사차단, 4:본사차단)" target="대상"><Item type="차단종류(1:기사차단, 2:지사차단, 3:지사간차단, 4:본사간차단,5:본사기사차단)"source_union="차단주체연합" target_union="차단대상연합"source_union_name="차단주체엽합명"'
        + ' target_union_name="차단대상연합명"source_hd="차단주체본사" target_hd="차단대상본사"source_hd_name="차단주체본사명" target_hd_name="차단대상본사명"source_br="차단주체지사" target_br="차단대상지사"source_br_name="차단주체본사명"'
        + ' target_br_name="차단대상본사명"target_wk="차단대상기사"target_wk_name="차단대상기사명"terminal_no="차당대상기사단말기번호"date="등록시간" to_date="유효시간"><Memo>차단사유</Memo></Item></BlockLists><Symbols title="본사기호"'
        + ' action="SELECT"><Item symbol="기호"/></Symbols><Mileage title="마일리지" action="SELECT" branch="지사코드"><Item kind="고객구분(0:일반,1:업소,3:법인,4:불량)" type="마일리지타입(0:없음,1:정액,2:정률)" value="마일리지값"'
        + ' point="경품제공마일리지값" prize="경품명" /></Mileage><!--메시지구분(Item.kind)01:배차시 고객에게02:지사콜의 지사내 배차시 기사에게03:지사콜의 본사내 타지사 배차시 기사에게04:지사콜의 타본사(공유콜) 배차시 기사에게'
        + ' 05:취소시 기사에게06:독촉시 기사에게07:강제배차시 기사에게08:문자배차시 기사에게09:마일리지 내역--><SMSMessage title="SMS메시지설정" action="SELECT" branch="지사코드"><Item kind="메시지구분" use="사용여부">SMS 메시지 내용</Item>'
        + ' </SMSMessage><Penalty title="배차취소페널티" action="SELECT"><Items code="페널티코드" name="페널티명"><Item cnt="횟수" time="패널티시간(초)" charge="벌금" /></Items></Penalty><!-- BranchTel.branch, Item.phone 필수 -->'
        + ' <BranchTel title="대표번호 관리" action="SELECT|INSERT|UPDATE" branch="지사코드" ><Item phone="대표번호" order_type="오더성격" base_charge="기본요금" sido="라우팅 시/도" gugun="라우팅 시/구/군" /></BranchTel>'
        + ' <BranchTel action="DELETE" branch="지사코드"><Item phone="대표번호" /></BranchTel><MapCity title="라우팅 시/도, 시/구/군" action="SELECT"><Items sido="시/도"><Item gugun="시/구/군" /></Items></MapCity>'
        + ' <Statistics title="통계" action="SELECT" head="본사코드" branch="지사코드" type="기사상태(WK_STATUS)"><Item code="코드" cnt="건수"/></Statistics><!--cdms_syscode.SY_CD 값WS: 기사상태	WA: 출근상태	SA: 서비스지역코드LV: 권한레벨'
        + '	VL: 보기권한	ST: 오더공유CT: 업소구분	AS: 접수상태	WP: 기사포인트WT: 기사캐쉬타입	BT: 지사캐쉬타입	MT: 마일리지타입BH: 보험사	BK: 은행코드	IN: 보험료PM: 단말기모델	CL: 클라이언트	VM: VM버젼정보--><Codes title="코드관리"'
        + ' action="SELECT" system="시스템코드" detail="세부코드"><Code dt_cd="세부코드" dt_nm="세부명" value="세부값" ></Code></Codes><ZipCode title="우편번호검색" action="SELECT" dong="동명"><Item zipcode="우편번호" address="주소"/>'
        + ' </ZipCode><!-- BranchConfig.code : Config 구분(CA: 콜대행비)Config 구분에 따라 Item 내용이 달라질 수 있음.--><BranchConfig title="지사 Config" action="SELECT" branch="지사코드" code="Config 구분"><!-- CA:콜대행비 -->'
        + ' <Item config="항목명" title="내용" branch="입금지사코드" branch_name="입금지사명" price="금액" /></BranchConfig><!--사용자그룹Codes.system="LV" 참조 : 현재 상담원("10"), 지사관리자("40"), 본사관리자("60") 만 사용-->'
        + ' <Member title="사용자" action="SELECT|INSERT|UPDATE|DELETE" userid="아이디" head="본사코드" branch="지사코드" level="사용자그룹" type="검색조건:아이디(1),이름(2),사용유무(3)" value="type 별 값"><Item use="사용여부"'
        + ' level="사용자그룹" head="본사코드" branch="지사코드" userid="아이디" name="이름" password="비밀번호" phone="연락처" mobile="핸드폰" social_no="주민번호" zipcode="우편번호" address1="우편번호주소" address2="상세주소"'
        + ' in_date="등록일" >메모</Item></Member><!--MemberRole.type = "1" ? 자사콜고객번호보기권한만 : 나머지 권한MemberRole.value = 자사콜고객번호보기권한만 : 37(열람), 35(당일열람 후 익일숨김), 30(숨김)-->'
        + ' <MemberRole title="사용자권한" action="SELECT|UPDATE" userid="사용자 ID" type="1:자사콜고객번호보기권한만" value="자사콜고객번호보기권한만:"><Item menu_id="메뉴_ID" role="권한" /></MemberRole>'
        + ' <!-- branch를 입력하지 않으면 전체 지사를 조회한다. --><Calculation 	title="정산" action="SELECT" cnt="조회건수"	head="본사코드" 	branch="검색할지사코드"	from_date="시작일" 	to_date="종료일">'
        + ' <Item 	branch="지사코드"	br_name="지사명"	comm="기사수수료(공용캐쉬)"	order="발주비"	recv="수주비(-)"	solution="솔루션사용료"	insu="보험료"	cancel="취소벌금(공용캐쉬)"	callcenter="콜대행"'
        + ' pay_in="지사입금"	pay_out="콜마너정산"	move="지사캐쉬이동"	sms_charge="SMS캐쉬출금"	other="기타"	total="합계"	cash="지사캐쉬" /></Calculation></Biz></CallManner>';
	LXML_DATA.slXmlName.Add('Work.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><CallManner version="1.0"><Session user="useridstring" remote="아이피" rqst="요청시간" resp=""/><Resp code="" msg="Mac Address"/><Biz id="10001" version="1.0">'
        + ' <Workers title="기사관리" action="Workers SELECT|INSERT|UPDATE|DELETE" cnt="Workers cnt" union="" head="Workers Head Code" branch="Workers Branch Code" type="Workers type" value="Workers value" worker="Workers Worker"'
        + ' search="Workers Search" terminal="Workers terminal"><Worker union="연합" head="본사" branch="지사코드" sabun="사번1" no="사번2" status="기사상태" name="이름" sex="성별" social_no="주민번호" email="이메일" mobile="핸드폰"'
        + ' phone="연락처" zipcode="우편번호" address1="주소" address2="상세" license="기사면허번호" in_date="입사일" out_date="퇴사일" telecom="이통사" terminal_no="단말기번호" terminal_type="휴대폰/PDA" terminal_model="모델" bank="가상계좌은행"'
        + ' account="계좌번호" insurance_company="보험사" insurance_no="보험가입번호" insurance_expired="보험만료일" working="출/퇴근" area_code="지사운행" area="운행지역" penalty="패널티시간" public_cash="공용캐쉬" personal_cash="자체캐쉬"'
        + ' order_view="기사오더보기" cms_code="기사수수료그룹" cms_method="기사수수료구분" cms_type="기사수수료방식" cms_value="기사수수료값" short_memo="간단메모" stop_memo="기타정지" ><Memo>넌 누구냐?</Memo></Worker></Workers>'
        + ' <Heads title="본사관리" action="Heads SELECT|INSERT|UPDATE|DELETE" cnt="" head="Heads Head" union=""><head use="사용여부" union="연합코드" no="본사코드" name="본사명" company_no="사업자번호" symbol="본사기호"'
        + ' hierarchy="조직구조:수직(3),수평(7)" share_level="공유차수" bank="가상계좌지정은행코드" settle_cycle="정산_주기(1:1일, 2:1주일, 3:월)" settle_bank="정산_은행" settle_account="정산_계좌번호" settle_depositor="정산_예금주"'
        + ' mem_id="대표아이디" mem_name="대표자명" mem_hp="대표연락처" ><Memo>본사 메모</Memo></head></Heads><Branches title="지사관리" action="Branches SELECT|INSERT|UPDATE|DELETE" cnt="" branch="" head="Head Code"></Branches>'
        + ' <Codes title="코드관리" action="CodesWS SELECT|INSERT|UPDATE|DELETE" cnt="" system="WS" detail=""></Codes><Codes title="코드관리" action="CodesWA SELECT|INSERT|UPDATE|DELETE" cnt="" system="WA" detail=""></Codes>'
        + ' <Codes title="코드관리" action="CodesSA SELECT|INSERT|UPDATE|DELETE" cnt="" system="SA" detail=""></Codes><Codes title="코드관리" action="CodesBH SELECT|INSERT|UPDATE|DELETE" cnt="" system="BH" detail=""></Codes>'
        + ' <Codes title="코드관리" action="CodesBK SELECT|INSERT|UPDATE|DELETE" cnt="" system="BK" detail=""></Codes><Codes title="코드관리" action="CodesPM SELECT|INSERT|UPDATE|DELETE" cnt="" system="PM" detail=""></Codes>'
        + ' <Fees title="수수료표" action="Fees SELECT" head="Fees HeadCode" cnt="" branch="Fees branch" method="" type="" value=""></Fees><BlackWorkers title="불량기사리스트" action="SELECT" terminal_no="BlackWorkers terminal_no"'
        + ' social_no="BlackWorkers social_no" cnt=""></BlackWorkers><BlockLists title="차단리스트" action="SELECT" type="차단종류(1:기사차단, 4:본사차단)" target="대상" cnt=""><Item type="차단종류(1:기사차단, 2:지사차단, 3:지사간차단'
        + ' , 4:본사간차단,5:본사기사차단)" source_union="차단주체연합" target_union="차단대상연합" source_union_name="차단주체엽합명" target_union_name="차단대상연합명" source_hd="차단주체본사" target_hd="차단대상본사"'
        + ' source_hd_name="차단주체본사명" target_hd_name="차단대상본사명" source_br="차단주체지사" target_br="차단대상지사" source_br_name="차단주체본사명" target_br_name="차단대상본사명" target_wk="차단대상기사"'
        + ' target_wk_name="차단대상기사명" terminal_no="차당대상기사단말기번호" date="등록시간" to_date="유효시간"> <Memo>차단사요</Memo> </Item></BlockLists><Statistics title="통계" action="SELECT" terminal_no="BlackWorkers terminal_no"'
        + ' social_no="BlackWorkers social_no" cnt=""></BlackWorkers><BlockLists title="차단리스트" action="SELECT" type="차단종류(1:기사차단, 4:본사차단)" target="대상" cnt=""><Item type="차단종류(1:기사차단, 2:지사차단, 3:지사간차단, 4:본사간차단,5:본사기사차단)"'
        + ' source_union="차단주체연합" target_union="차단대상연합" source_union_name="차단주체엽합명" target_union_name="차단대상연합명" source_hd="차단주체본사" target_hd="차단대상본사" source_hd_name="차단주체본사명" target_hd_name="차단대상본사명"'
        + ' source_br="차단주체지사" target_br="차단대상지사" source_br_name="차단주체본사명" target_br_name="차단대상본사명" target_wk="차단대상기사" target_wk_name="차단대상기사명" terminal_no="차당대상기사단말기번호" date="등록시간" to_date="유효시간">'
        + ' <Memo>차단사요</Memo> </Item></BlockLists><Statistics title="통계" action="SELECT" head="Statistics head" branch="Statistics branch" type="WK_STATUS"></Statistics></Biz></CallManner>';
	LXML_DATA.slXmlName.Add('Worker.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><CallManner version="1.0"><Session user="useridstring" remote="" rqst="" resp=""/><Resp code="" msg=""/><Biz id="10001" version="1.0">'
        + ' <Workers title="기사관리" action="Workers SELECT|INSERT|UPDATE|DELETE" cnt="Workers cnt" union="" head="Workers Head Code" branch="Workers Branch Code" status="Workers Status" worker="Workers Worker" search="Workers Search" terminal="Workers terminal">'
        + ' <Worker union="연합" head="본사" branch="지사" no="사번1" sabun="사번2" status="기사상태" name="이름" sex="성별" social_no="주민번호" email="이메일" mobile="핸드폰" phone="연락처" zipcode="우편번호" address1="주소" address2="상세" license="기사면허번호"'
        + ' bank="가상계좌은행" account="계좌번호" in_date="입사일" out_date="퇴사일" telecom="이통사" terminal_no="단말기번호" terminal_type="휴대폰/PDA" terminal_model="모델" insurance_company="보험사" insurance_no="보험가입번호" insurance_expired="보험만료일"'
        + ' working="출/퇴근" area="운행지역" fee_type="기사수수료방식" penalty="패널티시간" public_cash="공용캐쉬" personal_cash="자체캐쉬" stop_memo="기타정지" ><Memo>넌 누구냐?</Memo></Worker></Workers><!--cdms_syscode.SY_CD 값WS: 기사상태	WA: 출근상태'
        + '	SA: 서비스지역코드LV: 권한레벨	VL: 보기권한	ST: 오더공유CT: 업소구분	AS: 접수상태	WP: 기사포인트WT: 기사캐쉬타입	BT: 지사캐쉬타입	MT: 마일리지타입BH: 보험사	BK: 은행코드	IN: 보험료PM: 단말기모델	CL: 클라이언트	VM: VM버젼정보-->'
        + ' <Heads title="본사관리" action="Heads SELECT|INSERT|UPDATE|DELETE" cnt="" head="Heads Head" union=""></Heads><Codes title="코드관리" action="CodesWS SELECT|INSERT|UPDATE|DELETE" cnt="" system="WS" detail=""></Codes>'
        + ' <Codes title="코드관리" action="CodesWA SELECT|INSERT|UPDATE|DELETE" cnt="" system="WA" detail=""></Codes>'
        + ' <Codes title="코드관리" action="CodesSA SELECT|INSERT|UPDATE|DELETE" cnt="" system="SA" detail=""></Codes>'
        + ' <Codes title="코드관리" action="CodesBH SELECT|INSERT|UPDATE|DELETE" cnt="" system="BH" detail=""></Codes>'
        + ' <Codes title="코드관리" action="CodesBK SELECT|INSERT|UPDATE|DELETE" cnt="" system="BK" detail=""></Codes>'
        + ' <Codes title="코드관리" action="CodesPM SELECT|INSERT|UPDATE|DELETE" cnt="" system="PM" detail=""></Codes></Biz></CallManner>';
	LXML_DATA.slXmlName.Add('Worker_old.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><CallManner version="1.0"><Session user="goodwith" remote="" rqst="" resp=""/><Resp code="" msg=""/><Biz id="10001" version="1.0">'
        + ' <ZipCode title="우편번호검색" action="SELECT" cnt="" dong="검색 동명"></ZipCode></Biz></CallManner>';
	LXML_DATA.slXmlName.Add('ZipCode.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// 결제요청 전문.  2011-10-16.
	sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="CallServer 1.0" ID="C501" Name="CardPay"> <!-- request --> <CardPay> <Data  BrNo="지사코드" BrTel="대표번호" CuSeq="고객일련번호" '
				+ 'CuTel="고객전화번호"  PaySite="카드결제사이트구분"  PaySeq="결제일련번호"  CardNo="카드번호"  ExpiryYY="유효기간(년)"  ExpiryMM="유효기간(월)"  Quota="할부기간(01~12)"  GoodMoney="결제금액" /> '
				+ '</CardPay> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('C501.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// 결제요청 전문.  2020-05-15 KHS
	sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="CallServer 1.0" ID="C501N1" Name="CardPay"> <!-- request --> <CardPay> <Data  BrNo="지사코드" BrTel="대표번호" CuSeq="고객일련번호" '
				+ 'CuTel="고객전화번호"  PaySite="카드결제사이트구분"  PaySeq="결제일련번호"  CardNo="카드번호"  ExpiryYY="유효기간(년)"  ExpiryMM="유효기간(월)"  Quota="할부기간(01~12)"  '
				+ 'GoodMoney="결제금액" BillSeq="strBillSeq" AgreeYn="strAgreeYn"/> </CardPay> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('C501N1.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// 결제요청취소 전문.  2011-10-16.
	sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="CallServer 1.0" ID="C502" Name="CardCancel"> <CardPay> <Data  PaySeq="결제일련번호"  TranNo="거래번호"  Reason="취소사유" /> </CardPay> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('C502.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// 현금영수증요청 전문.  2013-01-14. khs
	sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="CallServer 1.0" ID="C503" Name="CashPay"> <!-- request --> <CashPay> <Data  BrNo="지사코드" BrTel="대표번호" CuSeq="고객일련번호" '
				+ 'CuTel="고객전화번호" TrCode="발행용도"  IdInfo="신분확인ID"  AmtTot="거래금액총합" Confslip="접수번호" PaySeq="결제번호" /> </CashPay> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('C503.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// 현금영수증취소 전문.  2013-01-14. khs
	sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="CallServer 1.0" ID="C504" Name="CashMod"> <!-- request --> <CashPay> <Data  PaySeq="결제일련번호" ModReason="취소사유"  /> </CashPay> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('C504.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// 빌키 삭제 전문.  2020-06-15. khs
	sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="CallServer 1.0" ID="C505" Name="CashPay"> <Error Code="" Message="" /> <!-- request -->	'
				+ '<Bill><Data	BrNo="strBrNo"	BillSeq="strBillSeq" /> </Bill> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('C505.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// 모바일쿠폰인증요청 전문.  2013-06-07. lyb
	sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="CallServer 1.0" ID="C701" Name="CouponCert"><!-- request --> <CouponCert> <Data CuSeq="고객일련번호" CouponNum="쿠폰번호" ConfSlip="접수번호" /> '
				+ '</CouponCert> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('C701.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// 모바일쿠폰승인요청 전문.  2013-06-07. lyb
	sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="CallServer 1.0" ID="C702" Name="CouponUse"> <!-- request --> <CouponUse> <Data CouponSeq="쿠폰요청번호" CouponApprAmt="쿠폰결제금액" '
				+ 'MileageApprAmt="마일리지결제금액" CashApprAmt="현금결제금액" /> </CouponUse> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('C702.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// 모바일쿠폰승인취소 전문.  2013-06-07. lyb
	sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="CallServer 1.0" ID="C703" Name="CouponCancel"> <!-- request --> <CouponCancel> <Data CouponSeq="쿠폰요청번호" CancelReason="취소사유" /> '
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

	//인근기사 검색 C063N2   2012.11.15 KHS
	sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="CallServer 1.0" ID="C063N2" Name="인근기사검색"> <Error Code="" Message="" /> '
				+ '<Request> <Data  Mode="modeStr" ATTEND="attendStr" STATE="stateStr" PASS_TIME="attendTimeStr" DISTANCE="distanceStr" '
        + '                 KEYKIND="keykindstr" KEYWORD="keywordstr" MAP_X="mapXStr" MAP_Y="mapYStr" BR_TYPE="BR_Typestr"/> </Request> </Service></cdms> ';
	LXML_DATA.slXmlName.Add('C063N2.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// 고객, 기사 문자 발송 수정 SMS02.XML 2012.10.30 KHS
  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
        + '<Service VersionNum="CallServer 1.0" ID="SMS02" Name="SendSMS"> <Error Code="" Message="" /> '
        + '<Data> <SMS  Receiver="ReceiverString" Sender="SenderString" Reservation="ReservationString" Memo="MemoString" ConfSlip="ConfSlipString" '
        + '                 WkSabun="WkSabunString" >MessageString</SMS></Data></Service></cdms> ';
  LXML_DATA.slXmlName.Add('SMS02.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  // 출금 정산 요청 전문 20121111 LYB
	sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="CallServer 1.0" ID="C601" Name="PayOut"> <Error Code="" Message="" /> '
				+ '<PayOut RowCount="레코드수"> C601VALUE </PayOut> </Service></cdms> ';
	LXML_DATA.slXmlName.Add('C601.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	//인근기사 검색 C063N2   2012.11.15 KHS
	sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="CallServer 1.0" ID="C069" Name="접속기사검색"> <Error Code="" Message="" /> '
				+ '<Request> <Data  WK_HEAD="WK_HEADstr" WK_STATUS="WK_STATUSstr" WK_CONN="WK_CONNStr" WK_SEARCH="WK_SEARCHStr" WK_WORD="WK_WORDStr" /> </Request> </Service></cdms> ';
	LXML_DATA.slXmlName.Add('C069.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header>  <UserID Value="UserIDString" />  <ClientVer Value="" />  <ClientKey Value="ClientKeyString" /> '
        + '</header> <Service VersionNum="CallServer 1.0" ID="SYSDATETIME" Name="sysdate">  <Data ClientDatetime=""/> </Service></cdms>';
	LXML_DATA.slXmlName.Add('SYSDATETIME.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> '
        + '<ClientKey Value="ClientKeyString" /> </header> <Service VersionNum="CallServer 1.0" ID="JON06050" Name="콜지도보기"> <Error Code="" Message="" /> '
        + '<Request> <Data ConfSlip="ConfSlipString"/> </Request> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('JON06050.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // 콜지도 보기 위한 자료 요청 전문

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> '
        + '<ClientKey Value="ClientKeyString" /> </header> <Service VersionNum="CallServer 1.0" ID="JON06060" Name="부정취소콜조회"> <Error Code="" Message="" /> '
        + '<Request> <Data SearchOption="SearchOptionString" DayGubun="DayGubunString" SearchHdNo="SearchHdNoString" SearchBrNo="SearchBrNoString"/> </Request> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('JON06060.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // 부정취소콜 자료 요청 전문

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> '
        + '<ClientKey Value="ClientKeyString" /> </header> <Service VersionNum="CallServer 1.0" ID="JON06062" Name="부정취소콜확인"> <Error Code="" Message="" /> '
        + '<Request> <Data ConfSlip="ConfSlipString" Gubun="GubunString"/> </Request> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('JON06062.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // 부정취소오더 구분 변경 요청 전문

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> '
        + '<ClientKey Value="ClientKeyString" /> </header> <Service VersionNum="CallServer 1.0" ID="WOR00010" Name="기사이동로그조회"> <Error Code="" Message="" /> '
        + '<Request> <Data WkSabun="WkSabunString" DayGubun="DayGubunString" WkBeachaTime="WKBeachaTimeString" EndWkBeachaTime="EndWkBeachaTimeString" ConfSlip="ConfSlipString" SearchGubun="SearchGubunString"/> </Request> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('WOR00010.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // 기사이동로그 요청 전문


{   CidsYn   ="CID서버로 부터 생성된 창인지 여부 (y,n)"
    CidsAuto  ="CID서버로부터 생성되어 최초 전문요청시 (1)"
    CidsInline  ="내선번호  (CID서버에서 수신한값)"
    CidsDnis  ="DNIS번호  (CID서버에서 수신한값)"
    CidsKeyNumber ="대표번호  (CID서버에서 수신한값)"
    CidsCidNum  ="고객번호  (CID서버에서 수신한값)"
    CidsCidKey  ="고객번호별고유키값  (CID서버에서 수신한값)"
    ManTel   ="고객번호   (상담원의 임의로 고객번호입력)"
    ManKeyNumber ="대표번호   (상담원이 임의로 지사/대표번호 선택)"
    ManBrNo   ="지사코드   (상담원이 임의로 지사/대표번호 선택)"/
}

  sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
        + '<Service VersionNum="CallServer 1.0" ID="JON01010" Name="CustInfo"> <Error Code="" Message="" /> <Data> '
        + '<Accept CidsYn = "CidsYnString", CidsAuto = "CidsAutoString", CidsInline = "CidsInlineString", CidsDnis = "CidsDnisString", CidsKeyNumber = "CidsKeyNumberString" '
        + 'CidsCidNum = "CidsCidNumString", CidsCidKey  = "CidsCidKeyString", ManTel = "ManTelString", ManKeyNumber = "ManKeyNumberString", ManBrNo = "ManBrNoString"/> </Data> </Service> </cdms>';
  LXML_DATA.slXmlName.Add('JON01010.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  //  CidsYn   ="CID서버로 부터 생성된 창인지 여부 (y,n)"
  //  CidsVersion		="CID서버프로토콜버전 (0:구버전, 1:CIDXE버전)"
  //  CidsAuto  ="CID서버로부터 생성되어 최초 전문요청시 (1)"
  //  CidsInline  ="내선번호  (CID서버에서 수신한값)"
  //  CidsDnis  ="DNIS번호  (CID서버에서 수신한값)"
  //  CidsKeyNumber ="대표번호  (CID서버에서 수신한값)"
  //  CidsCidNum  ="고객번호  (CID서버에서 수신한값)"
  //  CidsCidKey  ="고객번호별고유키값  (CID서버에서 수신한값)"
  //  ManTel   ="고객번호   (상담원의 임의로 고객번호입력)"
  //  ManKeyNumber ="대표번호   (상담원이 임의로 지사/대표번호 선택)"
  //  ManBrNo   ="지사코드   (상담원이 임의로 지사/대표번호 선택)"/>

  sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
        + '<Service VersionNum="CallServer 1.0" ID="JON03010" Name="CustInfo"> <Error Code="" Message="" /> '
        + '<Data><Accept  CidsYn="CidsYnString" CidsVersion="CidsVersionString" CidsAuto="CidsAutoString" CidsInline="CidsInlineString" CidsDnis="CidsDnisString" CidsKeyNumber="CidsKeyNumberString" '
        +               ' CidsCidNum="CidsCidNumString" CidsCidKey="CidsCidKeyString" CidsBrNo="CidsBrNoString" ManTel="ManTelString" ManKeyNumber="ManKeyNumberString" ManBrNo="ManBrNoString"/> </Data> </Service> </cdms>';
  LXML_DATA.slXmlName.Add('JON03010.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  // 오토콜 저장 및 문자 저장 전문
  sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
        + '<Service VersionNum="CallServer 1.0" ID="JON03032" Name="AutoCallSMSSave"> <Error Code="" Message="" /> '
        + '<Data action="actionString" CuSeq="CuSeqString" CuTel="CuTelString" KeyNumber ="KeyNumberString" HdNo="HdNoString" BrNo="BrNoString" OutBound="OutBoundString" Type="TypeString" > <Msg1>Msg1String</Msg1> <Msg2>Msg2String</Msg2> </Data> </Service></cdms>';
  LXML_DATA.slXmlName.Add('JON03032.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  // 오토콜 MMS 이미지 저장 및 조회 (COM00020)
  sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
        + '<Service VersionNum="1" ID="COM00020" Name="AutoCallMMSImageSave"> <Error Code="" Message="" /> '
        + '<Data Type="TypeString" BrNo="BrNoString" Filename="FilenameString" Empty1="" Empty2="" ><![CDATA[BASE64String]]></Data> </Service></cdms>';
  LXML_DATA.slXmlName.Add('COM00020.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  // 오토콜 고객 조회 전문 (JON03030_02)
  sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
        + '<Service VersionNum="2" ID="JON03030_02" Name="AutoCallInfo"> <Error Code="" Message="" /> '
        + '<Data CuTel="CuTelString" KeyNumber="KeyNumberString" HdNo="HdNoString" BrNo="BrNoString" /></Service></cdms>';
  LXML_DATA.slXmlName.Add('JON03030_02.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// 오토콜저장 전문 변경 (JON03031_02)
	sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="2" ID="JON03031_02" Name="AutoCallSMSSave"> <Error Code="" Message="" /> '
				+ '<Data CuSeq="CuSeqString" CuTel="CuTelString" KeyNumber="KeyNumberString" HdNo="HdNoString" BrNo="BrNoString" OutBound="OutBoundString" >'
				+ '<SmsInfo Type="SendTypeString"> '
				+ '<Sms SmsType="SmsTypeString1" FromNum="FromNumString1" Filenames="FilenamesString1">MSGSting1</Sms> '
				+ '<Sms SmsType="SmsTypeString2" FromNum="FromNumString2" Filenames="FilenamesString2">MSGSting2</Sms> '
				+ '</SmsInfo></Data> </Service></cdms>';
	LXML_DATA.slXmlName.Add('JON03031_02.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// 오토콜조회 전문 변경 New (JON03032_02)
	sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="2" ID="JON03032_02" Name="오토콜 문자설정저장"><Error Code="" Message="" />'
				+ '<Data Type="FTypeString" KeyNumber="KeyNumberString" HdNo="HdNoString" BrNo="BrNoString" Empty1="" Empty2=""> '
				+ '<SmsInfo Count="0" Type="SendTypeString" OshotId="OshotIdString" OshotPwd="OshotPwdString"> '
				+ '<Sms SmsType="SmsTypeString1" FromNum="FromNumString1" Filenames="FilenamesString1">MSGSting1</Sms> '
				+ '<Sms SmsType="SmsTypeString2" FromNum="FromNumString2" Filenames="FilenamesString2">MSGSting2</Sms> '
				+ '</SmsInfo></Data> </Service></cdms>';
	LXML_DATA.slXmlName.Add('JON03032_02.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  // 오더 접수 전문
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

	// 오더 수정 전문
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

  // 법인 프리미엄콜 일반콜로 전환
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
        + '<Service VersionNum="1" ID="JON06010" Name="통화관리"> <Error Code="" Message="" /> <Request> '
        + '<Data SearchGubun="strSearchGubun" SearchKeyword="strSearchKeyword" CallStatus="strCallStatus" SearchDate="strSearchDate" LastUpdate="strLastUpdate"/></Request> </Service> </cdms>';
  LXML_DATA.slXmlName.Add('JON06010.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
        + '<Service VersionNum="1" ID="JON06011" Name="통화상태변경"> <Error Code="" Message="" /> <Request> '
        + '<Data CallKey="stCallKey" Status="strStatus" /></Request> </Service> </cdms>';
  LXML_DATA.slXmlName.Add('JON06011.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
        + '<Service VersionNum="1" ID="JON06020" Name="UnansweredCall"> <Error Code="" Message="" /> <Request> '
        + '<Data SearchDNIS="strSearchDNIS" SearchGubun="strSearchGubun" SearchText="strSearchText" '
        + '      FromDate="strFromDate"	ToDate="strToDate"/></Request> </Service> </cdms>';
  LXML_DATA.slXmlName.Add('JON06020.XML'); // XmlFileName Code
  LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	//lbs위치요청 전문정의 
	sTmp := '<?xml version="1.0" encoding="euc-kr"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" /> </header> '
				+ '<Service VersionNum="1" ID="JON03100" Name="RequestLbs"> <Error Code="" Message="" />'
				+ '<Req BrNo="strBrNo" Cid="strCid"/></Service> </cdms>';
//				+ '<Req BrNo="strBrNo" Cid="strCid"/></Req><Res Type="" A1="" A2="" A3="" A4="" Poi="" Lat="" Lon=""/> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('JON03100.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// SMS="고객 sms 수신거부 상태 (y,n)" CuSeq="고객seq" CustTel="고객전화번호"
  sTmp := '<?xml version="1.0" encoding="EUC-KR"?> <cdms> <header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> '
        + '<ClientKey Value="ClientKeyString" /> </header> <Service VersionNum="CallServer 1.0" ID="JON03020" Name="SMS거부"> <Error Code="" Message="" /> '
        + '<Request> <Data SMS="SMSString" CuSeq="CuSeqString" CustTel="CustTelString" /> </Request> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('JON03020.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // SMS거부 요청 전문

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="1" ID="WOR00020" Name="기사사진저장">	<Error Code="" Message="" /> <Request><Data WkSabun="WkSabunStr">ItemStr</Data></Request></Service></cdms>';
	LXML_DATA.slXmlName.Add('WOR00020.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="1" ID="COM00030" Name="상담원설정INI저장/조회">	<Error Code="" Message="" /> <Request><Data HdNo="HdNoStr" type="typeStr" UpdateOption="UpdateOptionStr"><![CDATA[fileString]]></Data></Request></Service></cdms>';
	LXML_DATA.slXmlName.Add('COM00030.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
				+ '	<Service VersionNum="CallServer 1.0" ID="C045N3" Name="회사_자동SMS설정">	<Error Code="" Message="" /> <Request action="ActionStr" branch="BranchStr" sms_block_real="realStr"'
        + ' sms_block_tomorrow="tomorrowStr" fin_duplicate_yn="finDupYnStr" duplicate_yn="dupYnStr" sms_ellipsis_tomorrow_yn="ellipsis_tomorrow">	ItemStr	</Request>	</Service></cdms>';
	LXML_DATA.slXmlName.Add('C045N3.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" /><ClientKey Value="ClientKeyString" /></header>   '
				+ '	<Service VersionNum="CallServer 1.0" ID="CIDXE01" Name="CidXe"><Error Code="" Message="" /><CidXe action="actionStr" Count="cntStr"> '
				+ '	<Cid 	cids_id="strID" cids_pwd="strPW" hd_no="strHDNO" br_no="strBRNO" cc_no="strCCNO" cids_name="strCIDNM" cids_memo="strCIDMEMO" />	</CidXe> </Service> </cdms>';
	LXML_DATA.slXmlName.Add('CIDXE01.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <header>	<UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /><ClientKey Value="ClientKeyString" /></header>   '
  	    + ' <Service VersionNum="CallServer 1.0" ID="STAT01" Name="신규통계고객등록"><Error Code="" Message="" />'
        + ' <Request>	<Data HdNo="strHdNo" BrNo="strBrNo"	FromDate="strFromDate" ToDate="strToDate"/>	</Request>	</Service></cdms> ';
	LXML_DATA.slXmlName.Add('STAT01.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms><header><UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" /><ClientKey Value="ClientKeyString" /> </header>    '
        + '	<Service VersionNum="CallServer 1.0" ID="STAT02" Name="시간대별통계">	<Error Code="" Message="" />'
        + ' <Request>	<Data HdNo="strHdNo" BrNo="strBrNo"	FromDate="strFromDate" ToDate="strToDate"/>	</Request>	</Service></cdms> ';
	LXML_DATA.slXmlName.Add('STAT02.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms><header><UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" /><ClientKey Value="ClientKeyString" /> </header>    '
        + '	<Service VersionNum="CallServer 1.0" ID="STAT03" Name="일일콜수통계">	<Error Code="" Message="" />'
        + ' <Request>	<Data HdNo="strHdNo" BrNo="strBrNo"	FromDate="strFromDate" ToDate="strToDate"/>	</Request>	</Service></cdms> ';
	LXML_DATA.slXmlName.Add('STAT03.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms><header><UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" /><ClientKey Value="ClientKeyString" /> </header>    '
        + '	<Service VersionNum="CallServer 1.0" ID="STAT04" Name="신규통계오더접수">	<Error Code="" Message="" />'
        + ' <Request>	<Data HdNo="strHdNo" BrNo="strBrNo"	FromDate="strFromDate" ToDate="strToDate"/>	</Request>	</Service></cdms> ';
	LXML_DATA.slXmlName.Add('STAT04.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	//공유콜 관제  COM00010   2014.11.23 KHS
	sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms><header><UserID Value="" /><ClientVer Value="" /><ClientKey Value="ClientKeyString" /></header> '
				+ '<Service VersionNum="CallServer 1.0" ID="COM00010N2" Name="기사 및 공유콜관제"><Error Code="" Message="" /><Request> '
				+ '<Data AutoSearch="strAutoSearch" LastUpdate="strLastUpdate" /> '
				+ '<Worker SearchYn="strSearchYn" ATTEND="strATTEND" STATE="strSTATE" BR_TYPE="strBR_TYPE" ' //(0:전체, 1:자사, 2:타사)" '
				+ ' PASS_TIME="strPASS_TIME" KEYKIND="strKEYKIND" KEYWORD="strKEYWORD" DISTANCE="strDISTANCE" MAP_X="strMAP_X" MAP_Y="strMAP_Y" /> '
				+ '<Call SearchYn="strCallSearchYn" /></Request></Service></cdms> ';
	LXML_DATA.slXmlName.Add('COM00010N2.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	//POI추가제거  JON03090   2014.12.5 KHS
	sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms><header><UserID Value="UserIDString" /><ClientVer Value="ClientVerString" /> '
        + '<ClientKey Value="ClientKeyString" /></header><Service VersionNum="5" ID="JON03090" Name="PoiReceipt"><Error Code="" Message="" /> '
        + '<Data><Accept HdNo="strHdNo" BrNo="strBrNo" PoiGubun="strPoiGubun" BArea1="strBArea1" BArea2="strBArea2" BArea3="strBArea3" '
        + 'HArea1="strHArea1" HArea2="strHArea2" HArea3="strHArea3" Poi="strPoiName" Memo="strMemo" MapX="strMapX" MapY="strMapY" '
        + 'PoiId="strPOIID" PoiType="strPoiType" PoiOpt="strPoiOpt"/></Data></Service></cdms> ';
	LXML_DATA.slXmlName.Add('JON03090.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	//법인월정산  ACC12010   2015.1.10 KHS
  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="ACC12010" Name="SMSMessage">	<Error Code="" Message="" /> <Request> <Data Month="strMonth" '
				+ '  Payment="strPayment"	Bill="strBill" HdNo="strHdNo"	BrNo="strBrNo" KeyNumber="strKeyNumber"	CorpName="strCorpName"/> '
        + '</Request></Service></cdms>';
	LXML_DATA.slXmlName.Add('ACC12010.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	//법인월정산일괄 또는 단일처리  ACC12020   2015.1.10 KHS
  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="ACC12020" Name="SMSMessage">	<Error Code="" Message="" /> <Request> <Data CbCode="strCbCode" '
				+ '  HdNo="strHdNo"	BrNo="strBrNo" Month="strMonth"	PaymentYn="strPaymentYn" BillYn="strBillYn"	FinishCnt="strFinishCnt" FinishCharge="strFinishCharge" OrderCnt="strOrderCnt"/></Request></Service></cdms>';
	LXML_DATA.slXmlName.Add('ACC12020.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	//업체상세조회  ACC12030   2015.1.10 KHS
  sTmp := '<?xml version="1.0" encoding="euc-kr"?><cdms> <header>	<UserID Value="UserIDString" />	<ClientVer Value="ClientVerString" />	<ClientKey Value="ClientKeyString" />	</header>'
        + '	<Service VersionNum="CallServer 1.0" ID="ACC12030" Name="SMSMessage">	<Error Code="" Message="" /> <Request> '
        + ' <Data CbCode="strCbCode" Month="strMonth" HdNo="strHdNo" BrNo="strBrNo"/></Request></Service></cdms>';
	LXML_DATA.slXmlName.Add('ACC12030.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// 송금계좌 정상유무 확인  2016.04.28 LYB
  sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <Header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</Header>'
        + '	<Service VersionNum="CallServer 1.0" ID="C600" Name="PayOut">	<Error Code="" Message="" />'
        + ' <Data HdNo="strHdNo" BrNo="strBrNo" BankCd="strBankCd" Account="strAccount" Cash="strCash" /> </Service></cdms>';
	LXML_DATA.slXmlName.Add('C600.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// 동의배정 가능 기사 조회  2021.08.24 KHS
	sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <Header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</Header>'
				+ '	<Service VersionNum="CallServer 1.0" ID="KM00010" Name="기사배정목록조회">	<Error Code="" Message="" />'
				+ ' <Request> <Data KdDriverId="strKdDriverId" KdDriverName="strKdDriverName" KdDriverPhone="strKdDriverPhone" ServiceType="strServiceType" '
				+ '       Lat="strLat" Lng="strLng" LicenseType="strLicenseType" GearType="strGearType" Dist="strDist" Per="strPer" /> </Request></Service></cdms>';
	LXML_DATA.slXmlName.Add('KM00010.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData
	
	// 동의배정  2021.08.24 KHS
	sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <Header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</Header>'
				+ '	<Service VersionNum="5" ID="KM00020" Name="force_accept">	<Error Code="" Message="" />'
				+ ' <Request> <Data KdDriverId="strKdDriverId" ConfSlip="strConfSlip"/> </Request> </Service></cdms>';
	LXML_DATA.slXmlName.Add('KM00020.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// 카카오T AI요금표  2021.09.08 KHS
	sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <Header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</Header>'
				+ '	<Service VersionNum="5" ID="KM00030" Name="경로에 따른 요금 조회">	<Error Code="" Message="" />'
				+ ' <Request> <Data Dep="strDep" Arr="strArr" Via="strVia" ScheduledAt="strScheduledAt"/> </Request> </Service></cdms>';
	LXML_DATA.slXmlName.Add('KM00030.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// 카카오기사 정보조회  2021.09.13 KHS
	sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <Header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</Header>'
				+ '	<Service VersionNum="5" ID="KM00040" Name="단일 기사 조회">	<Error Code="" Message="" />'
				+ ' <Request> <Data KdDriverId="strKdDriverId" HdNo="strHdNo" BrNo="strBrNo"/> </Request> </Service></cdms>';
	LXML_DATA.slXmlName.Add('KM00040.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData

	// 카카오기사 운행 내역 조회  2021.09.13 KHS
	sTmp := '<?xml version="1.0" encoding="EUC-KR"?><cdms> <Header> <UserID Value="UserIDString" /> <ClientVer Value="ClientVerString" /> <ClientKey Value="ClientKeyString" />	</Header>'
				+ '	<Service VersionNum="5" ID="KM00050" Name="기사 운행 내역 조회">	<Error Code="" Message="" />'
				+ ' <Request> <Data KdDriverId="strKdDriverId" HdNo="strHdNo" BrNo="strBrNo" Page="strPage" Per="strPer"/> </Request> </Service></cdms>';
	LXML_DATA.slXmlName.Add('KM00050.XML'); // XmlFileName Code
	LXML_DATA.slXmlData.Add(sTmp);   // XmlFileData
end;

end.

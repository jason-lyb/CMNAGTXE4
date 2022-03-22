unit xe_SearchWord;

interface

uses
  sysutils, Classes, Vcl.Dialogs, cxPC, cxGroupBox, cxCheckBox,
  cxRadioGroup, cxLabel, cxGridDBTableView, cxGridBandedTableView, cxDropDownEdit,
  Vcl.StdCtrls, xe_gnl, Vcl.Graphics, cxButtons;

  function GetParentNameCheck(AName : String; AControl: TComponent): Boolean;
  procedure pGetComponentListWOR;
  procedure pGetComponentListBTN;
  procedure pGetComponentListCUT;
  procedure pGetComponentListSET;
  procedure pGetComponentListSMS;
  procedure pGetComponentListUSR;
  procedure pGetComponentListJON30S;
  function pGetComponentListSave( vCom : TComponent ) : String;
  function fSetEncode( sValue : String ) : String;
  procedure pSetLoadMenuAll;
  procedure pGetMenuCodeToName( vCode : Integer; Var vMnuA, vMenu : String );
  procedure pFormComponentFontColor( AType : Integer );
  procedure pSetFormComponentFontColorChange(Var vCom : TComponent);
  procedure pGetFormComponentFontColorChange(Var vCom : TComponent);
  function fGetPermission( iTag : Integer ) : Boolean;

Var
  SchAllMenu : array of TSearchMenu;

implementation

uses xe_Func, xe_WOR, xe_BTN, xe_SET, xe_CUT,
  xe_SMS, xe_JON30S, xe_gnl2, Main;


function fSetEncode( sValue : String ) : String;
begin
  sValue := StringReplace(sValue, ' ', '', [rfReplaceAll]);
  sValue := StringReplace(sValue, #13, '', [rfReplaceAll]);
  sValue := StringReplace(sValue, #10, '', [rfReplaceAll]);
  Result := sValue;
end;

function GetParentNameCheck(AName : String; AControl: TComponent): Boolean;
var
  LOwner: TComponent;
  isOK : Boolean;
  sName : String;
begin
  isOk := False;

  if (AControl is TcxTabSheet) then
  begin
    sName := (AControl as TcxTabSheet).Name;
    if UpperCase(sName) = UpperCase(AName) then isOk := True;
  end;

  LOwner := AControl.GetParentComponent;
  while Not isOk do
  begin
    if LOwner = nil then Break;
    if (LOwner is TcxTabSheet) then
    begin
      sName := (LOwner as TcxTabSheet).Name;
      if UpperCase(sName) = UpperCase(AName) then isOk := True;
    end;
    LOwner := LOwner.GetParentComponent;
  end;
  Result := isOk;
end;

procedure pGetComponentListWOR;
var i : Integer;
    sField, sMenu : String;
    sTmp : TStringList;
begin
  try
    sTmp  := TStringList.Create;
    for i := 0 to Frm_WOR.ComponentCount - 1 do
    begin
      if GetParentNameCheck('cxTabSheet1', Frm_WOR.Components[i]) = True then sMenu := '302' else   // 기사캐쉬관리
      if GetParentNameCheck('cxTabSheet3', Frm_WOR.Components[i]) = True then sMenu := '303' else   // 기사배차현황
      if GetParentNameCheck('cxTabSheet4', Frm_WOR.Components[i]) = True then sMenu := '304' else   // 공유콜배차제한
      if GetParentNameCheck('cxTabSheet5', Frm_WOR.Components[i]) = True then sMenu := '305' else   // 블랙리스트
      if GetParentNameCheck('cxTabSheet6', Frm_WOR.Components[i]) = True then sMenu := '306' else   // 심야배차제한현황
      if GetParentNameCheck('cxTabSheet7', Frm_WOR.Components[i]) = True then sMenu := '307' else   // 기사출근표
      begin
        Continue;
      end;

      sField := pGetComponentListSave(Frm_WOR.Components[i]);
      if Trim(sField) <> '' then
        sTmp.Add(sMenu + '|' + sField );
    end;
    sTmp.SaveToFile('C:\wor.txt');
  finally
    sTmp.Free;
  end;
end;

procedure pGetComponentListBTN;
var i : Integer;
    sField, sMenu : String;
    sTmp : TStringList;
begin
  try
    sTmp  := TStringList.Create;
    for i := 0 to Frm_BTN.ComponentCount - 1 do
    begin
      if GetParentNameCheck('cxTabSheet2', Frm_BTN.Components[i]) = True then sMenu := '1602' else   // 영업사원관리
      if GetParentNameCheck('cxTabSheet3', Frm_BTN.Components[i]) = True then sMenu := '1603' else   // 업소관리
      if GetParentNameCheck('cxTabSheet4', Frm_BTN.Components[i]) = True then sMenu := '1604' else   // 지사정산
      if GetParentNameCheck('cxTabSheet5', Frm_BTN.Components[i]) = True then sMenu := '1605' else   // 영업사원정산
      if GetParentNameCheck('cxTabSheet6', Frm_BTN.Components[i]) = True then sMenu := '1606' else   // 업소정산
      begin
        Continue;
      end;

      sField := pGetComponentListSave(Frm_BTN.Components[i]);
      if Trim(sField) <> '' then
        sTmp.Add(sMenu + '|' + sField );
    end;
    sTmp.SaveToFile('C:\btn.txt');
  finally
    sTmp.Free;
  end;
end;

procedure pGetComponentListCUT;
var i : Integer;
    sField, sMenu : String;
    sTmp : TStringList;
begin
  try
    sTmp  := TStringList.Create;
    for i := 0 to Frm_CUT.ComponentCount - 1 do
    begin
//      if GetParentNameCheck('cxTabSheet1' , Frm_CUT.Components[i]) = True then sMenu := '401' else    // 고객관리
//      if GetParentNameCheck('cxTabSheet2' , Frm_CUT.Components[i]) = True then sMenu := '402' else    // 일반검색
//      if GetParentNameCheck('cxTabSheet3' , Frm_CUT.Components[i]) = True then sMenu := '403' else    // 고급검색
//      if GetParentNameCheck('cxTabSheet4' , Frm_CUT.Components[i]) = True then sMenu := '404' else    // 상세검색
//      if GetParentNameCheck('cxTabSheet5' , Frm_CUT.Components[i]) = True then sMenu := '405' else    // 안심번호관리
//      if GetParentNameCheck('cxTabSheet6' , Frm_CUT.Components[i]) = True then sMenu := '406' else    // 휴면고객
      if GetParentNameCheck('cxTabSheet7' , Frm_CUT.Components[i]) = True then sMenu := '407' else    // 고객등급설정
      if GetParentNameCheck('cxTabSheet8' , Frm_CUT.Components[i]) = True then sMenu := '408' else    // 마일리지설정
//      if GetParentNameCheck('cxTabSheet9' , Frm_CUT.Components[i]) = True then sMenu := '409' else    // 마일리지현황(고객별)
//      if GetParentNameCheck('cxTabSheet10', Frm_CUT.Components[i]) = True then sMenu := '410' else    // 마일리지상세(적립+지급)
//      if GetParentNameCheck('cxTabSheet11', Frm_CUT.Components[i]) = True then sMenu := '411' else    // OK캐쉬백적립현황

//      if GetParentNameCheck('cxTabSheet12', Frm_CUT.Components[i]) = True then sMenu := '501' else    // 법인관리
//      if GetParentNameCheck('cxTabSheet13', Frm_CUT.Components[i]) = True then sMenu := '502' else    // 법인이용내역
//      if GetParentNameCheck('cxTabSheet14', Frm_CUT.Components[i]) = True then sMenu := '503' else    // 법인일일정산
//      if GetParentNameCheck('cxTabSheet15', Frm_CUT.Components[i]) = True then sMenu := '504' else    // 법인인증
//      if GetParentNameCheck('cxTabSheet16', Frm_CUT.Components[i]) = True then sMenu := '505' else    // 기사원천징수현황
//      if GetParentNameCheck('cxTabSheet17', Frm_CUT.Components[i]) = True then sMenu := '506' else    // 법인월정산
      begin
        Continue;
      end;

      sField := pGetComponentListSave(Frm_CUT.Components[i]);
      if Trim(sField) <> '' then
        sTmp.Add(sMenu + '|' + sField );
    end;
    sTmp.SaveToFile('C:\cut.txt');
  finally
    sTmp.Free;
  end;
end;

procedure pGetComponentListJON30S;
var i : Integer;
    sField, sMenu : String;
    sTmp : TStringList;
begin
  try
    sTmp  := TStringList.Create;
    for i := 0 to Frm_JON30S.ComponentCount - 1 do
    begin
      if GetParentNameCheck('cxTabSheet1', Frm_JON30S.Components[i]) = True then sMenu := '3001' else   // POI검색설정-검색설정
      if GetParentNameCheck('cxTabSheet2', Frm_JON30S.Components[i]) = True then sMenu := '3002' else   // POI검색설정-검색APIKey관리
      if GetParentNameCheck('cxTabSheet3', Frm_JON30S.Components[i]) = True then sMenu := '3003' else   // POI검색설정-검색POI치환관리
      begin
        Continue;
      end;

      sField := pGetComponentListSave(Frm_JON30S.Components[i]);
      if Trim(sField) <> '' then
        sTmp.Add(sMenu + '|' + sField );
    end;
    sTmp.SaveToFile('C:\jon30s.txt');
  finally
    sTmp.Free;
  end;
end;

procedure pGetComponentListSET;
var i : Integer;
    sField, sMenu : String;
    sTmp : TStringList;
begin
  try
    sTmp  := TStringList.Create;
    for i := 0 to Frm_SET.ComponentCount - 1 do
    begin
      if GetParentNameCheck('cxTabSheet1', Frm_SET.Components[i]) = True then sMenu := '1403' else   // 요금제편집
      if GetParentNameCheck('cxTabSheet2', Frm_SET.Components[i]) = True then sMenu := '1404' else   // 요금제설정[대표번호]
      if GetParentNameCheck('cxTabSheet3', Frm_SET.Components[i]) = True then sMenu := '1405' else   // 요금제설정[법인]
      if GetParentNameCheck('cxTabSheet4', Frm_SET.Components[i]) = True then sMenu := '1406' else   // 심야할증요금
      if GetParentNameCheck('cxTabSheet5', Frm_SET.Components[i]) = True then sMenu := '1407' else   // CID대표번호DNIS관리
      begin
        Continue;
      end;

      sField := pGetComponentListSave(Frm_SET.Components[i]);
      if Trim(sField) <> '' then
        sTmp.Add(sMenu + '|' + sField );
    end;
    sTmp.SaveToFile('C:\set.txt');
  finally
    sTmp.Free;
  end;
end;

procedure pGetComponentListSMS;
var i : Integer;
    sField, sMenu : String;
    sTmp : TStringList;
begin
  try
    sTmp  := TStringList.Create;
    for i := 0 to Frm_SMS.ComponentCount - 1 do
    begin
      if GetParentNameCheck('cxTabSheet1', Frm_SMS.Components[i]) = True then sMenu := '1001' else   // SMS발송
      if GetParentNameCheck('cxTabSheet2', Frm_SMS.Components[i]) = True then sMenu := '1002' else   // 대량파일SMS발송
      if GetParentNameCheck('cxTabSheet3', Frm_SMS.Components[i]) = True then sMenu := '1003' else   // 조회결과(상세)
      if GetParentNameCheck('cxTabSheet4', Frm_SMS.Components[i]) = True then sMenu := '1004' else   // 조회결과(일별)
      if GetParentNameCheck('cxTabSheet5', Frm_SMS.Components[i]) = True then sMenu := '1005' else   // 수신거부관리
      begin
        Continue;
      end;

      sField := pGetComponentListSave(Frm_SMS.Components[i]);
      if Trim(sField) <> '' then
        sTmp.Add(sMenu + '|' + sField );
    end;
    sTmp.SaveToFile('C:\sms.txt');
  finally
    sTmp.Free;
  end;
end;

procedure pGetComponentListUSR;
var i, j : Integer;
    sField, sMenu : String;
    sTmp : TStringList;
begin
//  try
//    sTmp  := TStringList.Create;
//    for i := 0 to Frm_USR.ComponentCount - 1 do
//    begin
//      if GetParentNameCheck('cxTabSheet1' , Frm_USR.Components[i]) = True then sMenu := '901' else    // 직원관리
//      if GetParentNameCheck('cxTabSheet2' , Frm_USR.Components[i]) = True then sMenu := '902' else    // 권한설정
//      if GetParentNameCheck('cxTabSheet3' , Frm_USR.Components[i]) = True then sMenu := '903' else    // 인증현황
//      if GetParentNameCheck('cxTabSheet4' , Frm_USR.Components[i]) = True then sMenu := '904' else    // 인증관리(직원)
//      if GetParentNameCheck('cxTabSheet5' , Frm_USR.Components[i]) = True then sMenu := '905' else    // 인증관리(PC)
//      if GetParentNameCheck('cxTabSheet6' , Frm_USR.Components[i]) = True then sMenu := '906' else    // 엑셀다운현황
//      if GetParentNameCheck('cxTabSheet7' , Frm_USR.Components[i]) = True then sMenu := '907' else    // 직원별콜현황
//      if GetParentNameCheck('cxTabSheet8' , Frm_USR.Components[i]) = True then sMenu := '908' else    // 직원별시간통계
//      if GetParentNameCheck('cxTabSheet9' , Frm_USR.Components[i]) = True then sMenu := '909' else    // 직원근태현황
//      if GetParentNameCheck('cxTabSheet10', Frm_USR.Components[i]) = True then sMenu := '910' else    // 패밀리관리자설정
//      begin
//        Continue;
//      end;
//
//      sField := pGetComponentListSave(Frm_USR.Components[i]);
//      if Trim(sField) <> '' then
//        sTmp.Add(sMenu + '|' + sField );
//    end;
//    sTmp.SaveToFile('C:\usr.txt');
//  finally
//    sTmp.Free;
//  end;
end;

function pGetComponentListSave( vCom : TComponent ) : String;
var j : Integer;
    sField, sMenu, sName : String;
begin
  try
    sField := '';
    if vCom is TLabel then
    begin
      if ( vCom as TLabel ).Visible then
      begin
        sField := ( vCom as TLabel ).Caption;
        sField := fSetEncode(sField);
        sName := ( vCom as TLabel ).Name;
      end;
    end else
    if vCom is TcxLabel then
    begin
      if ( vCom as TcxLabel ).Visible then
      begin
        sField := ( vCom as TcxLabel ).Caption;
        sField := fSetEncode(sField);
        sName := ( vCom as TcxLabel ).Name;
      end;
    end else
    if vCom is TcxCheckBox then
    begin
//      if ( vCom as TcxCheckBox ).Visible then
      begin
        sField := ( vCom as TcxCheckBox ).Caption;
        sField := fSetEncode(sField);
        sName := ( vCom as TcxCheckBox ).Name;
      end;
    end else
    if vCom is TcxRadioButton then
    begin
//      if ( vCom as TcxRadioButton ).Visible then
      begin
        sField := ( vCom as TcxRadioButton ).Caption;
        sField := fSetEncode(sField);
        sName := ( vCom as TcxRadioButton ).Name;
      end;
    end else
    if vCom is TcxGroupBox then
    begin
//      if ( vCom as TcxGroupBox ).Visible then
      begin
        sField := ( vCom as TcxGroupBox ).Caption;
        sField := fSetEncode(sField);
        sName := ( vCom as TcxGroupBox ).Name;
      end;
    end else
    if vCom is TcxTabSheet then
    begin
//      if ( vCom as TcxTabSheet ).Visible then
      begin
        sField := ( vCom as TcxTabSheet ).Caption;
        sField := fSetEncode(sField);
        sName := ( vCom as TcxTabSheet ).Name;
      end;
    end else
    if vCom is TcxGridBandedTableView then
    begin
      for j := 0 to ( vCom as TcxGridBandedTableView ).ColumnCount - 1 do
      begin
        if j = 0 then
          sField := ( vCom as TcxGridBandedTableView ).Bands[j].Caption
        else
          sField := sField + ';' + ( vCom as TcxGridBandedTableView ).Bands[j].Caption
      end;
      sField := fSetEncode(sField);
      sName := ( vCom as TcxGridBandedTableView ).Name;
    end else
    if vCom is TcxGridDBTableView then
    begin
      for j := 0 to ( vCom as TcxGridDBTableView ).ColumnCount - 1 do
      begin
        if j = 0 then
          sField := ( vCom as TcxGridDBTableView ).Columns[j].Caption
        else
          sField := sField + ';' + ( vCom as TcxGridDBTableView ).Columns[j].Caption
      end;
      sField := fSetEncode(sField);
      sName := ( vCom as TcxGridDBTableView ).Name;
    end else
    if vCom is TcxComboBox then
    begin
      if ( vCom as TcxComboBox ).Visible then
      begin
        for j := 0 to ( vCom as TcxComboBox ).Properties.Items.Count - 1 do
        begin
          if j = 0 then
            sField := ( vCom as TcxComboBox ).Properties.Items[j]
          else
            sField := sField + ';' + ( vCom as TcxComboBox ).Properties.Items[j];
        end;
        sField := fSetEncode(sField);
        sName := ( vCom as TcxComboBox ).Name;
      end;
    end;

    if Length(sField) > 1 then
      sField := sName + '|' + sField
    else
      sField := '';

    Result := sField;
  except
//    Result := sName + '|' + 'Error';
    Result := '';
  end;
end;

procedure pSetLoadMenuAll;
Var slFile, slData : TStringList;
    i : Integer;
    FDecFile : AnsiString;
begin
  try
    slFile := TStringList.Create;

	  if (FileExists(DBDIRECTORY + 'mnsch.dat') = True) then
	  begin
	  	try
				locLoadFile_Decrypt(DBDIRECTORY + 'mnsch.dat', FDecFile);
  			slFile.Text := FDecFile;

        SetLength(SchAllMenu, slFile.Count);
        slData := TStringList.Create;
	  		for i := 0 to slFile.Count - 1 do
        begin
          try
	  				GetTextSeperationEx('|', slFile[i], slData);
            SchAllMenu[i].Code := StrToIntDef(slData.Strings[0], 0);
            SchAllMenu[i].Menu := slData.Strings[1];
            SchAllMenu[i].Text := slData.Strings[2];
          finally

          end;
        end;
      finally
        FreeAndNil(slData);
      end;
    end;
  finally
    FreeAndNil(slFile);
  end;
end;

procedure pGetMenuCodeToName( vCode : Integer; Var vMnuA, vMenu : String );
begin
  if vCode = 301 then begin vMnuA := '기사관리'; vMenu := '기사현황관리';     end;
  if vCode = 302 then begin vMnuA := '기사관리'; vMenu := '기사캐쉬관리';     end;
  if vCode = 303 then begin vMnuA := '기사관리'; vMenu := '기사배차현황';     end;
  if vCode = 304 then begin vMnuA := '기사관리'; vMenu := '공유콜배차제한';   end;
  if vCode = 305 then begin vMnuA := '기사관리'; vMenu := '블랙리스트';       end;
  if vCode = 306 then begin vMnuA := '기사관리'; vMenu := '심야배차제한현황'; end;
  if vCode = 307 then begin vMnuA := '기사관리'; vMenu := '기사출근표';       end;
  if vCode = 310 then begin vMnuA := '기사관리'; vMenu := '기사픽업';         end;
  if vCode = 311 then begin vMnuA := '기사관리'; vMenu := '기사공지';         end;

  if vCode = 1001 then begin vMnuA := '광고관리'; vMenu := 'SMS발송';          end;
  if vCode = 1002 then begin vMnuA := '광고관리'; vMenu := '대량파일SMS발송';  end;
  if vCode = 1003 then begin vMnuA := '광고관리'; vMenu := '조회결과(상세)';   end;
  if vCode = 1004 then begin vMnuA := '광고관리'; vMenu := '조회결과(일별)';   end;
  if vCode = 1005 then begin vMnuA := '광고관리'; vMenu := '수신거부관리';     end;

  if vCode = 401 then begin vMnuA := '고객관리'; vMenu := '고객관리';         end;
  if vCode = 402 then begin vMnuA := '고객관리'; vMenu := '일반검색';         end;
  if vCode = 403 then begin vMnuA := '고객관리'; vMenu := '고급검색';         end;
  if vCode = 404 then begin vMnuA := '고객관리'; vMenu := '상세검색';         end;
  if vCode = 405 then begin vMnuA := '고객관리'; vMenu := '안심번호관리';     end;
  if vCode = 406 then begin vMnuA := '고객관리'; vMenu := '휴먼고객';         end;
  if vCode = 407 then begin vMnuA := '고객관리'; vMenu := '고객등급관리';     end;
  if vCode = 408 then begin vMnuA := '고객관리'; vMenu := '마일리지설정';     end;
  if vCode = 409 then begin vMnuA := '고객관리'; vMenu := '마일리지현황(고객별)';    end;
  if vCode = 410 then begin vMnuA := '고객관리'; vMenu := '마일리지상세(적립+지급)'; end;
  if vCode = 411 then begin vMnuA := '고객관리'; vMenu := 'OK캐쉬백적립현황'; end;

  if vCode = 501 then begin vMnuA := '법인관리'; vMenu := '법인관리';         end;
  if vCode = 502 then begin vMnuA := '법인관리'; vMenu := '법인이용내역';     end;
  if vCode = 503 then begin vMnuA := '법인관리'; vMenu := '법인일일정산';     end;
  if vCode = 504 then begin vMnuA := '법인관리'; vMenu := '법인인증';         end;
  if vCode = 505 then begin vMnuA := '법인관리'; vMenu := '기사원천징수현황'; end;

//    AdvGridMenu.Cells[04, 00] := '200';  AdvGridMenu.Cells[05, 00] := '접   수';

  if vCode = 801  then begin vMnuA := '회사관리'; vMenu := '본사관리';         end;
  if vCode = 802  then begin vMnuA := '회사관리'; vMenu := '지사관리';         end;
  if vCode = 8021 then begin vMnuA := '회사관리'; vMenu := '지사관리-지사정보-지사기본정보'; end;
  if vCode = 8022 then begin vMnuA := '회사관리'; vMenu := '지사관리-지사정보-지사상세정보'; end;
  if vCode = 8023 then begin vMnuA := '회사관리'; vMenu := '지사관리-지사정보-오더요금정보'; end;

  if vCode = 803  then begin vMnuA := '회사관리'; vMenu := '자동SMS설정';      end;
  if vCode = 8031 then begin vMnuA := '회사관리'; vMenu := '자동SMS설정-실시간SMS1'; end;
  if vCode = 8032 then begin vMnuA := '회사관리'; vMenu := '자동SMS설정-실시간SMS2'; end;
  if vCode = 8033 then begin vMnuA := '회사관리'; vMenu := '자동SMS설정-다음날SMS';  end;
  if vCode = 80331 then begin vMnuA := '회사관리'; vMenu := '자동SMS설정-다음날SMS-개인고객다음날SMS';  end;
  if vCode = 80332 then begin vMnuA := '회사관리'; vMenu := '자동SMS설정-다음날SMS-업소고객다음날SMS';  end;
  if vCode = 80333 then begin vMnuA := '회사관리'; vMenu := '자동SMS설정-다음날SMS-법인고객다음날SMS';  end;
  if vCode = 80334 then begin vMnuA := '회사관리'; vMenu := '자동SMS설정-다음날SMS-불량고객다음날SMS';  end;
  if vCode = 80335 then begin vMnuA := '회사관리'; vMenu := '자동SMS설정-다음날SMS-기사에게다음날SMS';  end;
  if vCode = 8034 then begin vMnuA := '회사관리'; vMenu := '자동SMS설정-이용횟수에 따른 고객등급';  end;

  if vCode = 804 then begin vMnuA := '회사관리'; vMenu := '자율수수료제';     end;
  if vCode = 805 then begin vMnuA := '회사관리'; vMenu := '오토콜설정';       end;
  if vCode = 806 then begin vMnuA := '회사관리'; vMenu := '대표번호증명원관리'; end;

//    AdvGridMenu.Cells[08, 00] := '1100'; AdvGridMenu.Cells[09, 00] := '관   제';

  if vCode = 901 then begin vMnuA := '직원관리'; vMenu := '직원관리';         end;
  if vCode = 902 then begin vMnuA := '직원관리'; vMenu := '권한설정';         end;
  if vCode = 903 then begin vMnuA := '직원관리'; vMenu := '인증현황';         end;
  if vCode = 904 then begin vMnuA := '직원관리'; vMenu := '인증관리(사용자)'; end;
  if vCode = 905 then begin vMnuA := '직원관리'; vMenu := '인증관리(PC)';     end;
  if vCode = 906 then begin vMnuA := '직원관리'; vMenu := '엑셀다운현황';     end;
  if vCode = 907 then begin vMnuA := '직원관리'; vMenu := '직원별콜현황';     end;
  if vCode = 908 then begin vMnuA := '직원관리'; vMenu := '직원별시간통계';   end;
  if vCode = 909 then begin vMnuA := '직원관리'; vMenu := '직원근태현황';     end;
  if vCode = 910 then begin vMnuA := '직원관리'; vMenu := '패밀리관리자설정'; end;

//    AdvGridMenu.Cells[12, 00] := '1200'; AdvGridMenu.Cells[13, 00] := '원   격';

  if vCode = 601 then begin vMnuA := '정산관리'; vMenu := '지사캐쉬내역';     end;
  if vCode = 602 then begin vMnuA := '정산관리'; vMenu := '통장식로그';       end;
  if vCode = 603 then begin vMnuA := '정산관리'; vMenu := '오더정산';         end;
  if vCode = 604 then begin vMnuA := '정산관리'; vMenu := '지사충전내역';     end;
  if vCode = 605 then begin vMnuA := '정산관리'; vMenu := '기사충전내역';     end;
  if vCode = 606 then begin vMnuA := '정산관리'; vMenu := '기사사용료';       end;
  if vCode = 607 then begin vMnuA := '정산관리'; vMenu := '공유콜정산';       end;
  if vCode = 608 then begin vMnuA := '정산관리'; vMenu := '캐쉬이동';         end;
  if vCode = 609 then begin vMnuA := '정산관리'; vMenu := 'SMS캐쉬충전';      end;
  if vCode = 610 then begin vMnuA := '정산관리'; vMenu := '수익금리스트';     end;
  if vCode = 611 then begin vMnuA := '정산관리'; vMenu := '수익금계산';       end;
  if vCode = 612 then begin vMnuA := '정산관리'; vMenu := '콜운행정산';       end;
  if vCode = 613 then begin vMnuA := '정산관리'; vMenu := '기사수수료현황';   end;
  if vCode = 614 then begin vMnuA := '정산관리'; vMenu := '콜대행수수료';     end;
  if vCode = 615 then begin vMnuA := '정산관리'; vMenu := '쿠폰승인현황';     end;
  if vCode = 616 then begin vMnuA := '정산관리'; vMenu := '쿠폰사용현황';     end;
  if vCode = 617 then begin vMnuA := '정산관리'; vMenu := '카드결제현황';     end;
  if vCode = 618 then begin vMnuA := '정산관리'; vMenu := '출금요청';         end;

//  AdvGridMenu.Cells[16, 00] := '1300'; AdvGridMenu.Cells[17, 00] := 'S  M  S';

  if vCode = 1401 then begin vMnuA := '설정관리'; vMenu := '설정';                 end;
  if vCode = 1403 then begin vMnuA := '설정관리'; vMenu := '요금제편집';           end;
  if vCode = 1404 then begin vMnuA := '설정관리'; vMenu := '요금제설정[대표번호]'; end;
  if vCode = 1405 then begin vMnuA := '설정관리'; vMenu := '요금제설정[법인]';     end;
  if vCode = 1406 then begin vMnuA := '설정관리'; vMenu := '심야할증요금';         end;
  if vCode = 1407 then begin vMnuA := '설정관리'; vMenu := 'CID내역';              end;
  if vCode = 1408 then begin vMnuA := '설정관리'; vMenu := 'CID대표번호DNIS관리';  end;
  if vCode = 1409 then begin vMnuA := '설정관리'; vMenu := '메신저';               end;
  if vCode = 1414 then begin vMnuA := '설정관리'; vMenu := 'CID설정';              end;

  if vCode = 811 then begin vMnuA := '앱관리'; vMenu := '앱/스마트푸시설정';      end;
  if vCode = 812 then begin vMnuA := '앱관리'; vMenu := '앱게시물관리';           end;
  if vCode = 813 then begin vMnuA := '앱관리'; vMenu := '앱푸시관리';             end;
  if vCode = 814 then begin vMnuA := '앱관리'; vMenu := '콜마너SMS발송내역';      end;
  if vCode = 815 then begin vMnuA := '앱관리'; vMenu := '스마트PUSH발송내역';     end;
  if vCode = 816 then begin vMnuA := '앱관리'; vMenu := '콜마너SMS발송일별통계';  end;
  if vCode = 817 then begin vMnuA := '앱관리'; vMenu := '스마트PUSH발송일별통계'; end;

  if vCode = 701 then begin vMnuA := '통계관리'; vMenu := '대표번호별통계';   end;
  if vCode = 702 then begin vMnuA := '통계관리'; vMenu := '기사별통계';       end;
  if vCode = 703 then begin vMnuA := '통계관리'; vMenu := '고객별통계';       end;
  if vCode = 704 then begin vMnuA := '통계관리'; vMenu := '자사통계';         end;
  if vCode = 705 then begin vMnuA := '통계관리'; vMenu := '공유콜통계';       end;
  if vCode = 706 then begin vMnuA := '통계관리'; vMenu := '지역콜통계';       end;
  if vCode = 707 then begin vMnuA := '통계관리'; vMenu := '신규고객통계';     end;
  if vCode = 708 then begin vMnuA := '통계관리'; vMenu := '시간대별고객통계'; end;
  if vCode = 709 then begin vMnuA := '통계관리'; vMenu := '일일콜수통계';     end;
  if vCode = 710 then begin vMnuA := '통계관리'; vMenu := '신규콜수통계';     end;
  if vCode = 711 then begin vMnuA := '통계관리'; vMenu := '취소콜통계';       end;
  if vCode = 712 then begin vMnuA := '통계관리'; vMenu := '시간대별출/도지역통계'; end;
  if vCode = 713 then begin vMnuA := '통계관리'; vMenu := '오더요금별통계';        end;
  if vCode = 714 then begin vMnuA := '통계관리'; vMenu := '월별통계-과거내역비교'; end;

  if vCode = 1602 then begin vMnuA := '콜벨관리'; vMenu := '영업사원관리';      end;
  if vCode = 1603 then begin vMnuA := '콜벨관리'; vMenu := '업소관리';          end;
  if vCode = 1604 then begin vMnuA := '콜벨관리'; vMenu := '지사정산';          end;
  if vCode = 1605 then begin vMnuA := '콜벨관리'; vMenu := '영업사원정산';      end;
  if vCode = 1606 then begin vMnuA := '콜벨관리'; vMenu := '업소정산';          end;

  if vCode = 3001 then begin vMnuA := 'POI검색설정'; vMenu := '검색설정';        end;
  if vCode = 3002 then begin vMnuA := 'POI검색설정'; vMenu := '검색APIKey관리';  end;
  if vCode = 3003 then begin vMnuA := 'POI검색설정'; vMenu := '검색POI치환관리'; end;
end;

function fGetPermission( iTag : Integer ) : Boolean;
begin
  Result := False;
  try
    if iTag = 407 then // 고객등급설정   Frm_CUT
    begin
      if Frm_Main.Menu407.Visible then Result := True;
    end else
    if iTag = 408 then // 마일리지설정   Frm_CUT
    begin
      if Frm_Main.Menu408.Visible then Result := True;
    end else
    if iTag = 811 then // 앱/스마트푸시설정   Frm_APP
    begin
      if Frm_Main.Menu811.Visible then Result := True;
    end else
    if iTag = 801 then // 본사관리         Frm_CMP
    begin
      if Frm_Main.Menu801.Visible then Result := True;
    end else
    if ( iTag = 8021 ) Or ( iTag = 8022 ) Or ( iTag = 8023 ) then // 지사관리         Frm_CMP
    begin
      if Frm_Main.Menu802.Visible then Result := True;
    end else
    if iTag = 805 then // 오토콜설정       Frm_CMP
    begin
      if Frm_Main.Menu805.Visible then Result := True;
    end else
    if ( iTag = 803 ) Or ( iTag = 8031 ) Or ( iTag = 8032 ) Or ( iTag = 8033 ) Or
       ( iTag = 80331 ) Or ( iTag = 80332 ) Or ( iTag = 80333 ) Or ( iTag = 80334 ) Or ( iTag = 80335 ) Or
       ( iTag = 8034 ) then // 자동SMS설정     Frm_CMP
    begin
      if Frm_Main.Menu803.Visible then Result := True;
    end else
    if iTag = 1602 then
    begin
      if Frm_Main.Menu1602.Visible then Result := True;
    end else
    if iTag = 1603 then
    begin
      if Frm_Main.Menu1603.Visible then Result := True;
    end else
    if iTag = 1604 then
    begin
      if Frm_Main.Menu1604.Visible then Result := True;
    end else
    if iTag = 1605 then
    begin
      if Frm_Main.Menu1605.Visible then Result := True;
    end else
    if iTag = 1606 then
    begin
      if Frm_Main.Menu1606.Visible then Result := True;
    end else
    if ( iTag = 3001 ) Or ( iTag = 3002 ) Or ( iTag = 3003 ) then // POI검색 설정    Frm_JON30S
    begin
      Result := True;
    end else
    if ( iTag = 1403 ) Or ( iTag = 1404 ) Or ( iTag = 1405 ) Or
       ( iTag = 1406 ) Or ( iTag = 1407 ) then
    begin
      Result := True;
    end;
  except
    Result := False;
  end;


//    TCK_USER_PER.JON_MainView = '1'   //  '메   인';
//    Frm_Main.Menu301.Visible     //  '기사현황관리';
//    Frm_Main.Menu302.Visible     //  '기사캐쉬관리';
//    Frm_Main.Menu303.Visible     //  '기사배차현황';
//    Frm_Main.Menu304.Visible     //  '공유콜배차제한';
//    Frm_Main.Menu305.Visible     //  '블랙리스트';
//    Frm_Main.Menu306.Visible     //  '심야배차제한현황';
//    Frm_Main.Menu307.Visible     //  '기사출근표';
//    Frm_Main.Menu310.Visible     //  '기사픽업';
//    Frm_Main.Menu311.Visible     //  '기사공지';
//
//    Frm_Main.Menu1001.Visible     //   'SMS발송';
//    Frm_Main.Menu1002.Visible     //   '대량파일SMS발송';
//    Frm_Main.Menu1003.Visible     //   '조회결과(상세)';
//    Frm_Main.Menu1004.Visible     //   '조회결과(일별)';
//    Frm_Main.Menu1005.Visible     //   '수신거부관리';
//
//    Frm_Main.btnMainMenu1.Enabled //   '접   수';
//
//    Frm_Main.Menu401.Visible       //   '고객관리';
//    Frm_Main.Menu402.Visible       //   '일반검색';
//    Frm_Main.Menu403.Visible       //   '고급검색';
//    Frm_Main.Menu404.Visible       //   '상세검색';
//    Frm_Main.Menu405.Visible       //   '안심번호관리';
//    Frm_Main.Menu406.Visible       //   '휴먼고객';
//    Frm_Main.Menu407.Visible       //   '고객등급관리';
//    Frm_Main.Menu408.Visible       //   '마일리지설정';
//    Frm_Main.Menu409.Visible       //   '마일리지현황(고객별)';
//    Frm_Main.Menu410.Visible       //   '마일리지상셰(적립+지급)';
//    Frm_Main.Menu411.Visible       //   'OK캐쉬백적립현황';
//
//    Frm_Main.Menu801.Visible       //   '본사관리';
//    Frm_Main.Menu802.Visible       //   '지사관리';
//    Frm_Main.Menu806.Visible       //   '대표번호증명원관리';
//    Frm_Main.Menu803.Visible       //   '자동SMS설정';
//    Frm_Main.Menu805.Visible       //   '오토콜설정';
//    Frm_Main.Menu804.Visible       //   '자율수수료제';
//
//    Frm_Main.Menu1100.Visible      //    '관   제';
//
//    Frm_Main.Menu501.Visible       //   '법인관리';
//    Frm_Main.Menu502.Visible       //   '법인이용내역';
//    Frm_Main.Menu503.Visible       //   '법인일일정산';
//    Frm_Main.Menu504.Visible       //   '법인인증';
//    Frm_Main.Menu505.Visible       //   '기사원천징수현황';
//
//    Frm_Main.Menu901.Visible       //   '직원관리';
//    Frm_Main.Menu902.Visible       //   '권한설정';
//    Frm_Main.Menu903.Visible       //   '인증현황';
//    Frm_Main.Menu904.Visible       //   '인증관리(사용자)';
//    Frm_Main.Menu905.Visible       //   '인증관리(PC)';
//    Frm_Main.Menu906.Visible       //   '엑셀다운현황';
//    Frm_Main.Menu907.Visible       //   '직원별콜현황';
//    Frm_Main.Menu908.Visible       //   '직원별시간통계';
//    Frm_Main.Menu909.Visible       //   '직원근태현황';
//    Frm_Main.Menu910.Visible       //   '패밀리관리자설정';
//
//    Frm_Main.Menu1200.Visible     //   '원   격';
//
//    Frm_Main.Menu601.Visible      //   '지사캐쉬내역';
//    Frm_Main.Menu602.Visible      //   '통장식로그';
//    Frm_Main.Menu603.Visible      //   '오더정산';
//    Frm_Main.Menu604.Visible      //   '지사충전내역';
//    Frm_Main.Menu605.Visible      //   '기사충전내역';
//    Frm_Main.Menu606.Visible      //   '기사사용료';
//    Frm_Main.Menu607.Visible      //   '공유콜정산';
//    Frm_Main.Menu608.Visible      //   '캐쉬이동';
//    Frm_Main.Menu609.Visible      //   'SMS캐쉬충전';
//    Frm_Main.Menu610.Visible      //   '수익금리스트';
//    Frm_Main.Menu611.Visible      //   '수익금계산';
//    Frm_Main.Menu612.Visible      //   '콜운행정산';
//    Frm_Main.Menu613.Visible      //   '기사수수료현황';
//    Frm_Main.Menu614.Visible      //   '콜대행수수료';
//    Frm_Main.Menu615.Visible      //   '쿠폰승인현황';
//    Frm_Main.Menu616.Visible      //   '쿠폰사용현황';
//    Frm_Main.Menu617.Visible      //   '카드결제현황';
//    Frm_Main.Menu618.Visible      //   '출금요청';
//
//    Frm_Main.Menu1300.Enabled     //   'S  M  S';
//
//    AdvGridMenu.Cells[18, 03] := '1';                //   '일반설정';
//    AdvGridMenu.Cells[18, 04] := '1';                //   '요금제편집';
//    AdvGridMenu.Cells[18, 05] := '1';                //   '요금제설정[대표번호]';
//    AdvGridMenu.Cells[18, 06] := '1';                //   '요금제설정[법인]';
//    AdvGridMenu.Cells[18, 07] := '1';                //   '심야할증요금';
//    AdvGridMenu.Cells[18, 08] := '1';                //   'CID대표번호DNIS관리';
//    AdvGridMenu.Cells[18, 09] := '1';                //   'CID설정';
//    AdvGridMenu.Cells[18, 10] := '1';                //   'CID내역';
//    AdvGridMenu.Cells[18, 11] := '1';                //   '메신저'
//
//    AdvGridMenu.Cells[18, 14] := '1';                //   '핸드폰(PDA)다운로드방법';
//    AdvGridMenu.Cells[18, 15] := '1';                //   '사용자메뉴얼';
//    AdvGridMenu.Cells[18, 16] := '1';                //   '사용법요약';
//    AdvGridMenu.Cells[18, 17] := '1';                //   '콜마너홈페이지';
//
//    Frm_Main.Menu811.Visible      //   '앱/스마트푸시설정';
//    Frm_Main.Menu812.Visible      //   '앱게시물관리';
//    Frm_Main.Menu813.Visible      //   '앱푸시관리';
//    Frm_Main.Menu814.Visible      //   '콜마너SMS발송내역';
//    Frm_Main.Menu815.Visible      //   '스마트PUSH발송내역';
//    Frm_Main.Menu816.Visible      //   '콜마너SMS발송일별통계';
//    Frm_Main.Menu817.Visible      //   '스마트PUSH발송일별통계';
//
//    Frm_Main.Menu701.Visible      //  '대표번호별통계';
//    Frm_Main.Menu702.Visible      //  '기사별통계';
//    if ( Frm_Main.Menu701.Visible ) Or ( Frm_Main.Menu702.Visible ) then
//    begin
//      AdvGridMenu.Cells[22, 12] := '1';                //  '고객별통계';
//      AdvGridMenu.Cells[22, 13] := '1';                //  '자사통계';
//      AdvGridMenu.Cells[22, 14] := '1';                //  '공유콜통계';
//      AdvGridMenu.Cells[22, 15] := '1';                //  '지역콜통계';
//      AdvGridMenu.Cells[22, 16] := '1';                //  '신규고객통계';
//      AdvGridMenu.Cells[22, 17] := '1';                //  '시간대별고객통계';
//      AdvGridMenu.Cells[22, 18] := '1';                //  '일일콜수통계';
//      AdvGridMenu.Cells[22, 19] := '1';                //  '신규콜수통계';
//    end else
//    begin
//      AdvGridMenu.Cells[22, 12] := '0';                //  '고객별통계';
//      AdvGridMenu.Cells[22, 13] := '0';                //  '자사통계';
//      AdvGridMenu.Cells[22, 14] := '0';                //  '공유콜통계';
//      AdvGridMenu.Cells[22, 15] := '0';                //  '지역콜통계';
//      AdvGridMenu.Cells[22, 16] := '0';                //  '신규고객통계';
//      AdvGridMenu.Cells[22, 17] := '0';                //  '시간대별고객통계';
//      AdvGridMenu.Cells[22, 18] := '0';                //  '일자별고객통계';
//      AdvGridMenu.Cells[22, 19] := '0';                //  '신규콜수통계';
//    end;
//    Frm_Main.Menu711.Visible               //  '취소콜통계';
end;

procedure pFormComponentFontColor( AType : Integer );
Var vlCom : TComponent;
begin
  try
    Case GS_DefaultColor.Tag of
      407, 408 :
        begin
          if Assigned(Frm_CUT) then
          begin
            vlCom := Frm_CUT.FindComponent(GS_DefaultColor.ID);
            if Assigned(vlCom) then
            begin
              if AType = 0 then pSetFormComponentFontColorChange(vlCom) else
              if AType = 1 then pGetFormComponentFontColorChange(vlCom);
            end;
          end;
        end;
      3001, 3002, 3003 :
        begin
          if Assigned(Frm_JON30S) then
          begin
            vlCom := Frm_JON30S.FindComponent(GS_DefaultColor.ID);
            if Assigned(vlCom) then
            begin
              if AType = 0 then pSetFormComponentFontColorChange(vlCom) else
              if AType = 1 then pGetFormComponentFontColorChange(vlCom);
            end;
          end;
        end;
      1403, 1404, 1405, 1406, 1407 :
        begin
          if Assigned(Frm_SET) then
          begin
            vlCom := Frm_SET.FindComponent(GS_DefaultColor.ID);
            if Assigned(vlCom) then
            begin
              if AType = 0 then pSetFormComponentFontColorChange(vlCom) else
              if AType = 1 then pGetFormComponentFontColorChange(vlCom);
            end;
          end;
        end;
    End;
  except

  end;
end;

procedure pGetFormComponentFontColorChange(Var vCom : TComponent);
begin
  try
    if vCom is TLabel then
    begin
       GS_DefaultColor.DColor := ( vCom as TLabel ).Font.Color;
      ( vCom as TLabel ).Font.Color := clRed;
    end else
    if vCom is TcxButton then
    begin
       GS_DefaultColor.DColor := ( vCom as TcxButton ).Font.Color;
      ( vCom as TcxButton ).Font.Color := clRed;
    end else
    if vCom is TcxLabel then
    begin
      GS_DefaultColor.DColor := ( vCom as TcxLabel ).Style.TextColor;
      ( vCom as TcxLabel ).Style.TextColor := clRed;
    end else
    if vCom is TcxCheckBox then
    begin
      GS_DefaultColor.DColor := ( vCom as TcxCheckBox ).Style.TextColor;
      ( vCom as TcxCheckBox ).Style.TextColor := clRed;
    end else
    if vCom is TcxRadioButton then
    begin
      GS_DefaultColor.DColor := ( vCom as TcxRadioButton ).Font.Color;
      ( vCom as TcxRadioButton ).Font.Color := clRed;
    end else
    if vCom is TcxGroupBox then
    begin
      GS_DefaultColor.DColor := ( vCom as TcxGroupBox ).Style.TextColor;
      ( vCom as TcxGroupBox ).Style.TextColor := clRed;
//    end else
//    if vCom is TcxTabSheet then
//    begin
//      ( vCom as TcxTabSheet ).Font.Color := clRed;
//    end else
//    if vCom is TcxGridBandedTableView then
//    begin
//      for j := 0 to ( vCom as TcxGridBandedTableView ).ColumnCount - 1 do
//      begin
//        if j = 0 then
//          sField := ( vCom as TcxGridBandedTableView ).Bands[j].Caption
//        else
//          sField := sField + ';' + ( vCom as TcxGridBandedTableView ).Bands[j].Caption
//      end;
//      sField := fSetEncode(sField);
//      sName := ( vCom as TcxGridBandedTableView ).Name;
//    end else
//    if vCom is TcxGridDBTableView then
//    begin
//      for j := 0 to ( vCom as TcxGridDBTableView ).ColumnCount - 1 do
//      begin
//        if j = 0 then
//          sField := ( vCom as TcxGridDBTableView ).Columns[j].Caption
//        else
//          sField := sField + ';' + ( vCom as TcxGridDBTableView ).Columns[j].Caption
//      end;
//      sField := fSetEncode(sField);
//      sName := ( vCom as TcxGridDBTableView ).Name;
//    end else
//    if vCom is TcxComboBox then
//    begin
//      for j := 0 to ( vCom as TcxComboBox ).Properties.Items.Count - 1 do
//      begin
//        if j = 0 then
//          sField := ( vCom as TcxComboBox ).Properties.Items[j]
//        else
//          sField := sField + ';' + ( vCom as TcxComboBox ).Properties.Items[j];
//      end;
//      sField := fSetEncode(sField);
//      sName := ( vCom as TcxComboBox ).Name;
    end;
  except

  end;
end;

procedure pSetFormComponentFontColorChange(Var vCom : TComponent);
begin
  try
    // 검색된 폼의 자료 색상을 기존으로 돌려놓는다.
    if vCom is TLabel then
    begin
      ( vCom as TLabel ).Font.Color := GS_DefaultColor.DColor;
    end else
    if vCom is TcxLabel then
    begin
      ( vCom as TcxLabel ).Style.TextColor := GS_DefaultColor.DColor;
    end else
    if vCom is TcxButton then
    begin
      ( vCom as TcxButton ).Font.Color := GS_DefaultColor.DColor;
    end else
    if vCom is TcxCheckBox then
    begin
      ( vCom as TcxCheckBox ).Style.TextColor := GS_DefaultColor.DColor;
    end else
    if vCom is TcxRadioButton then
    begin
      ( vCom as TcxRadioButton ).Font.Color := GS_DefaultColor.DColor;
    end else
    if vCom is TcxGroupBox then
    begin
      ( vCom as TcxGroupBox ).Style.TextColor := GS_DefaultColor.DColor;
//    end else
//    if vCom is TcxTabSheet then
//    begin
//      GS_DefaultColor.DColor := ( vCom as TcxTabSheet ).Font.Color;
//    end else
//    if vCom is TcxGridBandedTableView then
//    begin
//      for j := 0 to ( vCom as TcxGridBandedTableView ).ColumnCount - 1 do
//      begin
//        if j = 0 then
//          sField := ( vCom as TcxGridBandedTableView ).Bands[j].Caption
//        else
//          sField := sField + ';' + ( vCom as TcxGridBandedTableView ).Bands[j].Caption
//      end;
//      sField := fSetEncode(sField);
//      sName := ( vCom as TcxGridBandedTableView ).Name;
//    end else
//    if vCom is TcxGridDBTableView then
//    begin
//      for j := 0 to ( vCom as TcxGridDBTableView ).ColumnCount - 1 do
//      begin
//        if j = 0 then
//          sField := ( vCom as TcxGridDBTableView ).Columns[j].Caption
//        else
//          sField := sField + ';' + ( vCom as TcxGridDBTableView ).Columns[j].Caption
//      end;
//      sField := fSetEncode(sField);
//      sName := ( vCom as TcxGridDBTableView ).Name;
//    end else
//    if vCom is TcxComboBox then
//    begin
//      for j := 0 to ( vCom as TcxComboBox ).Properties.Items.Count - 1 do
//      begin
//        if j = 0 then
//          sField := ( vCom as TcxComboBox ).Properties.Items[j]
//        else
//          sField := sField + ';' + ( vCom as TcxComboBox ).Properties.Items[j];
//      end;
//      sField := fSetEncode(sField);
//      sName := ( vCom as TcxComboBox ).Name;
    end;
  except

  end;
end;

end.

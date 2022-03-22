unit xe_Lib;

interface

uses
  Classes, SysUtils, cxCalendar, ComCtrls, Graphics, StdCtrls, xe_structure, IniFiles;

type
  TTermDate = (tdToday, tdYesterday, tdTwoday, tdOneWeek, tdTwoWeek, tdOneMonth, tdStartMonth, tdTwoMonth );

  // 사용자 출도착지 설정
procedure LoadUserBigo;
procedure SaveUserBigo;

  // 사용자 적요 설정
procedure LoadUserBigo1;
procedure SaveUserBigo1;
procedure LoadUserShortMenu;

// 사용자 간편걸기
procedure LoadUserFavoriteNumber;
procedure SaveUserFavoriteNumber;

// 사용자 취소사유
procedure LoadUserCancelEtc;
procedure SaveUserCancelEtc;

// 선택지사 정보
function GetSelBrInfo: string;
function GetSosokInfo: string;

// 데이트 컨트롤 선택
procedure SetDateControl(AStDt, AEdDt: TcxDateEdit; ATerm: TTermDate);
procedure SetWMControl(AStDt, AEdDt: TcxDateEdit; iTerm: Integer);

// 이관지사 고객보호(이관한 지사에서 고객정보 익일감춤-[회사][지사관리])
function IsCustInfoDayOpen(ABrNo, ADate: string): Boolean;
function GetCustInfoSafeMin(ABrNo: string): Integer;
function IsUseOfficeBaecha(ABrNo: string): Boolean;
function GetPlusCallYN(ABrNo: string): string; // 플러스콜 사용 [체크옵션,지사,본사,연합] 조회
function GetTakAllyYN(ABrNo: string): string; // 탁송연합콜  사용 [체크옵션,지사,본사,연합] 조회
function GetAIOouBoundYN(ABrNo: string): Boolean; // AI 아웃바운드  사용 
function GetAIOBKeyNumberYN(AKeyNumber: string): Boolean; // AI 아웃바운드 대표번호 사용
function GetCouponYN(ABrNo: string): string; // 자체발행쿠폰사용여부
function GetBranchYN(AList : TStringList; ABrNo: string): string; // 범용함수 : 구조체에 해당 지사의 값이 있는지 
// KCP 카드 결제 지사 사용여부 체크. 2011-10-19.
function IsCardUseBranch_KCP(ABrNo: string): string;
function GetCardType(ABrNo: string): string;
function IsUseKeyNumber(AKeyNum: string): Boolean;
function IsCardUseBranch(ABrNo: string): Boolean;
function IsUseChangeMainKeynum(ABrNo: string): Boolean;

procedure GetCustGroup(AKeyNum: string; Var ACustGroup : TCustGroup);
function GetCustLevelName(AKeyNum: string; ALevelSeq: string; Var ACustGroup : TCustGroup): string;
function GetBubinInfo(ABrNo, ABubinCD: string): string;
procedure ParseOKCB(AValue: string; AItem1, AItem2, AItem3, AItem4: TEdit);

function IsPassedManagementCu(ABrNo: string): Boolean;
function GetBrName(ABrNo: string): string;
function IsPassedManagementWk(ABrNo: string): Boolean;

function IsUseOrderToAsk(ABrNo: string): Boolean;
function GetCustLevelColor(AKeyNum: string; ALevelSeq: string): TColor;
function GetBrOfficeTel(ABrNo: string): string;

procedure GetBrTelList(ABrNo: string; var AList: TStringList);
function IsPassedManagementEtc(ABrNo: string): Boolean;

function GetBrNoFromKeyNum(AKeyNum: string): string;

function GetHwKey(const AMac, AHDD, ACPU, AMainboard: string;
  AMarking: Boolean = False): string;

function func_KeyNumAuthCheck(AKeyNum: string): Boolean;

implementation

uses
  xe_gnl, xe_func, DateUtils, xe_gnl3, xe_gnl2;

// 출도착지 상용구
procedure LoadUserBigo;
var
  I: Integer;
  FList: TStringList;
  ln_Env : TIniFile;
begin
  try
    GS_UserBigoList.Clear;

    ln_Env := TIniFile.Create(ENVPATHFILE);
    FList := TStringList.Create;
    try
      ln_Env.ReadSection('UserBigo', FList);

      for I := 0 to FList.Count - 1 do
        GS_UserBigoList.Add(FList[I] + '=' + ln_Env.ReadString('UserBigo', FList[I], ''));
    finally
      FList.Free;
    	FreeAndNil(ln_Env);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

// 출도착지 상용구
procedure SaveUserBigo;
var
  I: Integer;
  ln_Env : TIniFile;
begin
  try
    ln_Env := TIniFile.Create(ENVPATHFILE);
    try
      ln_Env.EraseSection('UserBigo');
      for I := 0 to GS_UserBigoList.Count - 1 do
        ln_Env.WriteString('UserBigo', GS_UserBigoList.Names[I], GS_UserBigoList.ValueFromIndex[I]);
    finally
    	FreeAndNil(ln_Env);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

// 적요 상용구
procedure LoadUserBigo1;
var
  I: Integer;
  FList: TStringList;
  ln_Env : TIniFile;
begin
  try
    GS_UserBigoList1.Clear;

    ln_Env := TIniFile.Create(ENVPATHFILE);
    FList := TStringList.Create;
    try
      ln_Env.ReadSection('UserBigo1', FList);

      for I := 0 to FList.Count - 1 do
        GS_UserBigoList1.Add(FList[I] + '=' + ln_Env.ReadString('UserBigo1', FList[I], ''));
    finally
      FList.Free;
    	FreeAndNil(ln_Env);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

// 적요 상용구
procedure SaveUserBigo1;
var
  I: Integer;
  ln_Env : TIniFile;
begin
  try
    ln_Env := TIniFile.Create(ENVPATHFILE);
    try
      ln_Env.EraseSection('UserBigo1');
      for I := 0 to GS_UserBigoList1.Count - 1 do
        ln_Env.WriteString('UserBigo1', GS_UserBigoList1.Names[I], GS_UserBigoList1.ValueFromIndex[I]);
    finally
    	FreeAndNil(ln_Env);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure LoadUserShortMenu;
var
  i, j : Integer;
  FList: TStringList;
  ln_Env : TIniFile;
begin
  try
    GS_UserShortMenu.Clear;

    ln_Env := TIniFile.Create(ENVPATHFILE);
    FList := TStringList.Create;
    try
      ln_Env.ReadSection('UserShortMenu', FList);

      if FList.Count = 0 then
      begin
        GS_UserShortMenu.Add('마일리지=1');
        GS_UserShortMenu.Add('요금문의=1');
        GS_UserShortMenu.Add('카드결제=1');
        GS_UserShortMenu.Add('출발지도=1');
        GS_UserShortMenu.Add('도착지도=1');
        GS_UserShortMenu.Add('경로보기=1');
        GS_UserShortMenu.Add('출/로드뷰=1');
        GS_UserShortMenu.Add('도/로드뷰=1');
      end else
      begin
        for i := 0 to FList.Count - 1 do
        begin
          GS_UserShortMenu.Add(FList[i] + '=' + ln_Env.ReadString('UserShortMenu', FList[i], '1'));
        end;
      end;
    finally
      FList.Free;
    	FreeAndNil(ln_Env);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure SetDateControl(AStDt, AEdDt: TcxDateEdit; ATerm: TTermDate);
begin
  try
    case ATerm of
      tdToday:
        begin
          AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
          AEdDt.Date := AStDt.Date + 1;
        end;
      tdYesterday:
        begin
          AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
          AEdDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)))
        end;
      tdOneWeek:
        begin
          AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 7;
          AEdDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)))
        end;
      tdTwoWeek:
        begin
          AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 14;
          AEdDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)))
        end;
      tdOneMonth:
        begin
          AStDt.Date := IncMonth(StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))), -1);
          AEdDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
        end;
      tdStartMonth:
        begin
          AStDt.Date := StartOfTheMonth(now);
          AEdDt.Date := EndOfTheMonth(now);
        end;
      tdTwoMonth:
        begin
          AStDt.Date := IncMonth(StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))), -2);
          AEdDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
        end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure SetWMControl(AStDt, AEdDt: TcxDateEdit; iTerm: Integer);
begin
  try
    case iTerm of
      0:
        begin
        	AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 7;
        	AEdDt.Date := AStDt.Date + 7;
        end;
      1:
        begin
        	AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 14;
         	AEdDt.Date := AStDt.Date + 14;
        end;
      2:
        begin
	        AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 31;
        	AEdDt.Date := AStDt.Date + 31;
        end;
      3:
        begin
	        AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 62;
        	AEdDt.Date := AStDt.Date + 62;
        end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

// 이관지사 고객보호(이관한 지사에서 고객정보 익일감춤-[회사][지사관리])
function IsCustInfoDayOpen(ABrNo, ADate: string): Boolean;
var
  Idx: Integer;
  StartDtm: string;
begin
  try
    Result := True;

    StartDtm := StartDateTime;

    ADate := RemoveDatetimeSeparator(ADate);

    if ADate > StartDtm then
    begin
      Result := False;
      Exit;
    end;

    Idx := scb_DsBranchCode.IndexOf(ABrNo);
    if Idx < 0 then
      Exit;
    {
      if scb_HeadCode[Idx] = GT_USERIF.HD then
      begin
      Result := False;
      Exit;
      end;
    }
    Idx := scb_BranchCode.IndexOf(ABrNo);
    if Idx < 0 then
      Exit;

    Result := scb_CRCustInfoDayOpen[Idx] <> 'n';
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetCustInfoSafeMin(ABrNo: string): Integer;
var
  Idx: Integer;
begin
  try
    Result := 0;

    Idx := scb_DsBranchCode.IndexOf(ABrNo);
    if Idx < 0 then
      Exit;

    if scb_HeadCode[Idx] = GT_USERIF.HD then
      Exit;

    Idx := scb_BranchCode.IndexOf(ABrNo);
    if Idx < 0 then
      Exit;

    if scb_CRCustInfoDayOpen[Idx] = 'n' then
      Exit;

    Result := StrToIntDef(scb_CRCustInfoSafeMin[Idx], 0);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function IsUseOfficeBaecha(ABrNo: string): Boolean;
var
  Idx: Integer;
begin
  try
    Result := False;

    Idx := scb_BranchCode.IndexOf(ABrNo);
    if Idx < 0 then
      Exit;

		Result := (scb_OfficeBaecha[Idx] = 'y');
	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

// 플러스콜 사용 [체크옵션,지사,본사,연합] 조회
function GetPlusCallYN(ABrNo: string): string;
var
	Idx: Integer;
begin
	try
		Idx := scb_BranchCode.IndexOf(ABrNo);
		if Idx < 0 then
			Exit;

		Result := scb_PlusCallUse[Idx];
	except on E: Exception do
		begin
			Assert(False, E.Message);
			Result := '';
		end;
	end;
end;
// 탁송연합콜 사용 [체크옵션,지사,본사,연합] 조회
function GetTakAllyYN(ABrNo: string): string;
var
	Idx: Integer;
begin
	try
		Idx := scb_BranchCode.IndexOf(ABrNo);
		if Idx < 0 then
			Exit;

		Result := scb_TakAllyUse[Idx];
	except on E: Exception do
		begin
			Assert(False, E.Message);
			Result := '';
		end;
	end;
end;

function GetAIOouBoundYN(ABrNo: string): Boolean; // AI 아웃바운드  사용 
var
	Idx: Integer;
begin
	try
		Result := false;
		Idx := scb_BranchCode.IndexOf(ABrNo);
		if Idx < 0 then Exit;

		Result := (scb_AIOutBoundUse[Idx] = 'y');
	except on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

function GetAIOBKeyNumberYN(AKeyNumber: string): Boolean; // AI 아웃바운드 대표번호 사용 
var
	Idx: Integer;
begin
	try
		Result := false;
//		Idx := scb_BranchCode.IndexOf(ABrNo);
		Idx := scb_KeyNumber.IndexOf(CallToStr(AKeyNumber));
		if Idx < 0 then
			Exit;

		Result := (scb_AIOBKeyNumberUse[Idx] = 'y');
	except on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

function GetCouponYN(ABrNo: string): String; // 자체발행쿠폰사용여부
var
	Idx: Integer;
begin
	try
		Result := '';
		Idx := scb_BranchCode.IndexOf(ABrNo);
		if Idx < 0 then
			Exit;

		Result := scb_CouponYN[Idx];
	except on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

function GetBranchYN(AList : TStringList; ABrNo: string): string;
var
	Idx: Integer;
begin
	try
		Result := '';
		Idx := scb_BranchCode.IndexOf(ABrNo);
		if Idx < 0 then
			Exit;

		Result := AList[Idx];
	except on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

// KCP 카드 결제 지사 사용여부 체크. 2011-10-19.
function IsCardUseBranch_KCP(ABrNo: string): string;
begin
  try
    Result := GetCardType(ABrNo);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetCardType(ABrNo: string): string;
var
  Idx: Integer;
begin
  try
    Result := '';

    Idx := scb_BranchCode.IndexOf(ABrNo);
    if Idx < 0 then
      Exit;

    Result := scb_BrCardAgentCD[Idx];
  except on E: Exception do
    begin
      Assert(False, E.Message);
      Result := '';
    end;
  end;
end;

function IsUseKeyNumber(AKeyNum: string): Boolean;
var
  I: Integer;
begin
  try
    Result := False;

    for I := 0 to scb_KeyNumber.Count - 1 do
    begin
      if scb_KeyNumber[I] = AKeyNum then
      begin
        Result := True;
        Exit;
      end;
    end;
  except on E: Exception do
    begin
      Assert(False, E.Message);
      Result := False;
    end;
  end;
end;

function IsCardUseBranch(ABrNo: string): Boolean;
begin
  try
    Result := GetCardType(ABrNo) <> '';
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure GetCustGroup(AKeyNum: string; Var ACustGroup : TCustGroup);
var
  I : Integer;
begin
  try
    for I := 0 to scb_KeyNumber.Count - 1 do
    begin
      if scb_KeyNumber[I] = AKeyNum then
      begin
        if i <= ( scb_CustLevelSeq.Count-1 ) then
           CustGetGroup(scb_CustLevelSeq[I], ACustGroup);
        Exit;
      end;
    end;
  except on E: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

function GetCustLevelName(AKeyNum: string; ALevelSeq: string; Var ACustGroup : TCustGroup): string;
var
  I: Integer;
begin
  try
    Result := '';

    for I := 0 to Length(ACustGroup.LevelInfo) - 1 do
    begin
      if ACustGroup.LevelInfo[I].LevelSeq = ALevelSeq then
      begin
        Result := ACustGroup.LevelInfo[I].LevelName;
        Exit;
      end;
    end;
  except on E: Exception do
    begin
      Assert(False, E.Message);
      Result := '';
    end;
  end;
end;

function GetBubinInfo(ABrNo, ABubinCD: string): string;
var
  Idx: Integer;
begin
  try
    Result := '';
    if ABubinCD = '' then Exit;

    Idx := GT_BUBIN_INFO.cbcode.IndexOf(ABubinCD + ',' + ABrNo);
    if Idx > -1 then
      Result := Trim(GT_BUBIN_INFO.cbCorpNm.Strings[Idx]) + ' / ' + Trim(GT_BUBIN_INFO.cbDeptNm.Strings[Idx]);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure ParseOKCB(AValue: string; AItem1, AItem2, AItem3, AItem4: TEdit);
begin
  try
    if Length(AValue) = 16 then
    begin
      AItem1.Text := copy(AValue, 1, 4);
      AItem2.Text := copy(AValue, 5, 4);
      AItem3.Text := copy(AValue, 9, 4);
      AItem4.Text := copy(AValue, 13, 4);
    end
    else
    begin
      AItem1.Text := '';
      AItem2.Text := '';
      AItem3.Text := '';
      AItem4.Text := '';
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

// 취소사유 상용구
procedure LoadUserCancelEtc;
var
  I: Integer;
  FList: TStringList;
  ln_Env : TIniFile;
begin
  try
    GS_UserCancelEtc.Clear;

    ln_Env := TIniFile.Create(ENVPATHFILE);
    FList := TStringList.Create;
    try
      ln_Env.ReadSection('UserCancelEtc', FList);

      for I := 0 to FList.Count - 1 do
        GS_UserCancelEtc.Add(FList[I] + '=' + ln_Env.ReadString('UserCancelEtc', FList[I], ''));
    finally
    	FreeAndNil(ln_Env);
      FList.Free;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

// 취소사유 상용구
procedure SaveUserCancelEtc;
var
  I: Integer;
  ln_Env : TIniFile;
begin
  try
    ln_Env := TIniFile.Create(ENVPATHFILE);
    try
      ln_Env.EraseSection('UserCancelEtc');
      for I := 0 to GS_UserCancelEtc.Count - 1 do
        ln_Env.WriteString('UserCancelEtc', GS_UserCancelEtc.Names[I], GS_UserCancelEtc.ValueFromIndex[I]);
    finally
    	FreeAndNil(ln_Env);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function IsPassedManagementCu(ABrNo: string): Boolean;
var
  Idx: Integer;
begin
  try
    Result := False;

    Idx := scb_DsBranchCode.IndexOf(ABrNo);
    if Idx < 0 then
      Exit;

    if scb_HeadCode[Idx] = GT_USERIF.HD then
    begin
      Result := True;
      Exit;
    end;

    Idx := scb_BranchCode.IndexOf(ABrNo);
    if Idx < 0 then
      Exit;

    if scb_CRRouteMgr[Idx][2] = 'n' then
      Exit;

    Result := True;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetBrName(ABrNo: string): string;
var
  Idx: Integer;
begin
  try
    Result := '';

    Idx := scb_BranchCode.IndexOf(ABrNo);
    if Idx < 0 then
      Exit;

    Result := scb_BranchName[Idx];
  except on E: Exception do
    begin
      Assert(False, E.Message);
      Result := '';
    end;
  end;
end;

function IsUseOrderToAsk(ABrNo: string): Boolean;
var
  Idx: Integer;
begin
  try
    Result := False;

    Idx := scb_BranchCode.IndexOf(ABrNo);
    if Idx < 0 then
      Exit;

    Result := (scb_OrderToAsk[Idx] = 'y');
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetCustLevelColor(AKeyNum: string; ALevelSeq: string) : TColor;
var
  I: Integer;
  CustGroup: TCustGroup;
begin
  try
    Result := clDefault;

    GetCustGroup(RemoveAll(AKeyNum, '-'), CustGroup);

    for I := 0 to Length(CustGroup.LevelInfo) - 1 do
    begin
      if CustGroup.LevelInfo[I].LevelSeq = ALevelSeq then
      begin
        Result := CustGroup.LevelInfo[I].Color;
        Exit;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

// 간편번호 불러오기
procedure LoadUserFavoriteNumber;
var
  I: Integer;
  FList: TStringList;
  ln_Env : TIniFile;
begin
  try
    GS_UserFavoriteNumber.Clear;

    FList := TStringList.Create;
    ln_Env := TIniFile.Create(ENVPATHFILE);
    try
      ln_Env.ReadSection('UserFavoriteNumber', FList);

      for I := 0 to FList.Count - 1 do
        GS_UserFavoriteNumber.Add(FList[I] + '=' + ln_Env.ReadString('UserFavoriteNumber', FList[I], ''));
    finally
    	FreeAndNil(ln_Env);
      FList.Free;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

// 간편번호 저장
procedure SaveUserFavoriteNumber;
var
  I: Integer;
  ln_Env : TIniFile;
begin
  try
    ln_Env := TIniFile.Create(ENVPATHFILE);
    try
      ln_Env.EraseSection('UserFavoriteNumber');
      for I := 0 to GS_UserFavoriteNumber.Count - 1 do
        ln_Env.WriteString('UserFavoriteNumber', GS_UserFavoriteNumber.Names[I], GS_UserFavoriteNumber.ValueFromIndex[I]);
    finally
    	FreeAndNil(ln_Env);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function IsPassedManagementWk(ABrNo: string): Boolean;
var
  Idx: Integer;
begin
  try
    Result := False;

    Idx := scb_DsBranchCode.IndexOf(ABrNo);
    if Idx < 0 then
      Exit;

    if scb_HeadCode[Idx] = GT_USERIF.HD then
    begin
      Result := True;
      Exit;
    end;

    Idx := scb_BranchCode.IndexOf(ABrNo);
    if Idx < 0 then
      Exit;

    if scb_CRRouteMgr[Idx][1] = 'n' then
      Exit;

    Result := True;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetSelBrInfo: string;
begin
  try
    if GT_SEL_BRNO.GUBUN = '1' then
      Result := Format('%s(%s-%s)', [GT_SEL_BRNO.BrName, GT_SEL_BRNO.HdNO, GT_SEL_BRNO.BrNo])
    else
      Result := '콜센터(통합)';
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetSosokInfo: string;
var
  Idx: Integer;
begin
  try
    if GT_USERIF.LV = '60' then
    begin
      if GT_SEL_BRNO.GUBUN <> '1' then
        Result := '[' + GT_SEL_BRNO.HdNO + '] 전체'
      else
        Result := '[' + GT_SEL_BRNO.HdNO + '] - [' + GT_SEL_BRNO.BrNo + ']' +
          GT_SEL_BRNO.BrName;
    end else
    if GT_USERIF.LV = '10' then
    begin
      if GT_SEL_BRNO.GUBUN <> '1' then
        Result := '콜센터(통합)'
      else
        Result := '[' + GT_SEL_BRNO.HdNO + '] - [' + GT_SEL_BRNO.BrNo + ']' +
          GT_SEL_BRNO.BrName;
    end else
    if GT_USERIF.LV = '40' then
    begin
      Idx := scb_BranchCode.IndexOf(GT_USERIF.BR);
      Result := '';
      if Idx >= 0 then
        Result := scb_BranchName.Strings[Idx];
      Result := '[' + GT_USERIF.HD + '] - [' + GT_USERIF.BR + ']' + Result;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetBrOfficeTel(ABrNo: string): string;
var
  I: Integer;
begin
  try
    Result := '';

    I := 0;
    // 0지사코드, 1지사명, 2대표번호, 3기본요금, 4콜센터코드, 5본사코드, 6멘트, 7상황실번호
    while True do
    begin
      if GSL_HD_LIST[I, 0] = '' then
        break;
      if ABrNo = GSL_HD_LIST[I, 0] then
      begin
        Result := GSL_HD_LIST[I, 7];
        break;
      end;
      Inc(I);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure GetBrTelList(ABrNo: string; var AList: TStringList);
var
  I: Integer;
begin
  try
    if scb_HeadCode.IndexOf(ABrNo) = -1 then
    begin
      for I := 0 to scb_DsBranchCode.Count - 1 do
      begin
        if scb_DsBranchCode[I] = ABrNo then
        begin
          if Trim(scb_KeyNumber[I]) <> '' then
            AList.Add(scb_KeyNumber[I]);
        end;
      end;
    end else
    begin
      if (GT_USERIF.Family = 'y') And (GT_USERIF.LV = '60') then // 20120629 LYB
      begin
        for I := 0 to scb_DsBranchCode.Count - 1 do
        begin
          if scb_HeadCode[I] = ABrNo then
          begin
            if Trim(scb_KeyNumber[I]) <> '' then
              AList.Add(scb_KeyNumber[I]);
          end;
        end;
      end else
      begin
        for i := 0 to scb_KeyNumber.Count - 1 do
        begin
          if Trim(scb_KeyNumber[I]) <> '' then
            AList.Add(scb_KeyNumber[I]);
        end;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function IsPassedManagementEtc(ABrNo: string): Boolean;
var
  Idx: Integer;
begin
  try
    Result := False;

    Idx := scb_DsBranchCode.IndexOf(ABrNo);
    if Idx < 0 then
      Exit;

    if scb_HeadCode[Idx] = GT_USERIF.HD then
    begin
      Result := True;
      Exit;
    end;

    Idx := scb_BranchCode.IndexOf(ABrNo);
    if Idx < 0 then
      Exit;

    if scb_CRRouteMgr[Idx][3] = 'n' then
      Exit;

    Result := True;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function IsUseChangeMainKeynum(ABrNo: string): Boolean;
var
  Idx: Integer;
begin
  try
    Result := False;

    Idx := scb_BranchCode.IndexOf(ABrNo);
    if Idx < 0 then
      Exit;

    Result := (scb_Change_Keynum_yn[Idx] = 'y');
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetBrNoFromKeyNum(AKeyNum: string): string;
var
  I: Integer;
begin
  try
    Result := '';

    for I := 0 to scb_KeyNumber.Count - 1 do
    begin
      if scb_KeyNumber[I] = AKeyNum then
      begin
        Result := scb_BranchCode[I];
        Exit;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function GetHwKey(const AMac, AHDD, ACPU, AMainboard: string;
  AMarking: Boolean): string;
var
  I: Integer;
begin
	try
		Result := Format('%s%s%s%s', [Trim(AMac), Trim(AHDD), Trim(ACPU),
			Trim(AMainboard)]);

		if AMarking then
			// 6자리마킹 + 6자리표시 + 6자리마킹 반복
			for I := 1 to Length(Result) do
				if ((I - 1) div 6) mod 2 = 0 then
					Result[I] := '*';
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

function func_KeyNumAuthCheck(AKeyNum: string): Boolean;
var i : integer;
	sTmp : string;
begin
	Try	
		Result := False;

		i := scb_KeyNumber.IndexOf(AKeyNum);
		if i < 0 then	exit;

		sTmp := scb_KeyNumberAuth[i];
		if sTmp = 'y' then
		begin
			Result := True;
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	End;
end;



end.

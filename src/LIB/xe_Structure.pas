unit xe_structure;

interface

uses
  Graphics, System.SysUtils;

type
{===================================================================
 # 공통 부분
====================================================================}
  TAreaRec = record
    Info,
    City,
    Ward,
    Street,
    Detail,
    X,
    Y: string; 
  end;

{===================================================================
 # 연합사 구조
====================================================================}
  TGroupInfoRec = record
    Share,
    Head,
    BrNo,
    BrName,
    KeyNum,
    LBS,
    BrTel,
    ShareLv,
    Area,
    Addr1,
    Addr2: string;
    WkCnt: Integer;
  end;

{===================================================================
 # 고객정보
====================================================================}
  TCustType = (ctNormal = 0, ctShop = 1, ctShopPost = 2, ctBubin = 3, ctBad = 4); // 일반, 업소, 업소후불, 법인, 불량

  TCustInfo = record
    CuSeq: string;
    Name: string;
    CustType: TCustType;
    LevelCD: string;
    BubinCD: string;
    IsBrTelUse: Boolean;
    CustTel: array of string;
    SmsYN: array of Boolean;
    SSN: string;
    OKCashBack: string;
    FinishCnt: Integer;
    CancelCnt: Integer;
    LastDate: string;
    Mileage: Integer;
    MileUseCount: Integer;
    Memo: string;
    WkMemo: string;
    StartArea: TAreaRec;
    EndArea: TAreaRec;
  end;

{===================================================================
 # 사용자 고객등급(아따 귀찮다 대충하자)
====================================================================}
  TMileType = (mtPayment, mtRate);

  TCustLevelInfoRec = record
    GrpName : String;
    OrderBy: Integer;
    Name: string;
    MileType: TMileType;
    Mileage: Integer;
    Color: TColor;
    FinCnt: Integer;
    CancelRate: Integer;
    AutoUp: Boolean;
    Default: Boolean;
    OneYear : Boolean;
  end;

  TCustLevel = record
    LevelSeq,
    LevelName: string;
    Color: TColor;
  end;

  TCustGroup = record
    GroupName: string;
    LevelInfo: array of TCustLevel;
    Default: TCustLevel;
  end;

  TCustGroupList = record
    GroupSeq : String;
    GroupName : string;
    LevelSeq : string;
    LevelName : string;
    Color: TColor;
    Default : Boolean;
  end;


  procedure CustAddGroup(AGroupSeq, AGroupName, ALevelSeq, ALevelName: string; AColor: TColor; AIsDefault: Boolean; Idx : Integer);
  procedure CustGetGroup(AGroupSeq: string; Var ACustGroup : TCustGroup);


implementation

{ TCustGroupList }

uses xe_gnl;

procedure CustAddGroup(AGroupSeq, AGroupName, ALevelSeq, ALevelName: string;
  AColor: TColor; AIsDefault: Boolean; Idx : Integer);
begin
  try
    scb_CustGroupInfo[Idx].GroupSeq := AGroupSeq;
    scb_CustGroupInfo[Idx].GroupName := AGroupName;
    scb_CustGroupInfo[Idx].LevelSeq := ALevelSeq;
    scb_CustGroupInfo[Idx].LevelName := ALevelName;
    scb_CustGroupInfo[Idx].Color := AColor;
    scb_CustGroupInfo[Idx].Default := AIsDefault;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure CustGetGroup(AGroupSeq: string; Var ACustGroup : TCustGroup);
Var i : Integer;
begin
  try
    SetLength(ACustGroup.LevelInfo, 0);
    for i := 0 to Length(scb_CustGroupInfo) - 1 do
    begin
      if scb_CustGroupInfo[i].GroupSeq = AGroupSeq then
      begin
        ACustGroup.GroupName := scb_CustGroupInfo[i].GroupName;
        SetLength(ACustGroup.LevelInfo, Length(ACustGroup.LevelInfo) + 1);

        ACustGroup.LevelInfo[Length(ACustGroup.LevelInfo) - 1].LevelSeq := scb_CustGroupInfo[i].LevelSeq;
        ACustGroup.LevelInfo[Length(ACustGroup.LevelInfo) - 1].LevelName := scb_CustGroupInfo[i].LevelName;
        ACustGroup.LevelInfo[Length(ACustGroup.LevelInfo) - 1].Color := scb_CustGroupInfo[i].Color;

        if scb_CustGroupInfo[i].Default then
        begin
          ACustGroup.Default.LevelSeq  := scb_CustGroupInfo[i].LevelSeq;
          ACustGroup.Default.LevelName := scb_CustGroupInfo[i].LevelName;
          ACustGroup.Default.Color     := scb_CustGroupInfo[i].Color;
        end;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

end.

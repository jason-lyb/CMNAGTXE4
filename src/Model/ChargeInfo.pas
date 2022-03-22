unit ChargeInfo;

interface

uses
  Classes, SysUtils;


const
	CHARGE_TYPE_FIRST     	 = 'CF';
	CHARGE_TYPE_FIRST_DETAIL = 'CP';
	CHARGE_TYPE_TABLE     	 = 'CA';
	CHARGE_TYPE_DISTANCE  	 = 'CD';
	CHARGE_TYPE_TERM      	 = 'CT';

type
  TAreaRec = record
		Si, Gu, Dong, POI, X, Y: string;
  end;

	TCharge = class(TObject)
	private
		FEdArea: TAreaRec;
    FStArea: TAreaRec;
    FCode: string;
    FNo: Integer;
	protected
		constructor Create(ACode: string; ANo: Integer; AStSi, AStGu, AStDong, AStPOI, AStX, AStY, AEdSi, AEdGu, AEdDong, AEdPOI, AEdX, AEdY: string); virtual;
		function GetChargeType: string; virtual; abstract;
	public
		property Code: string read FCode write FCode;
		property No: Integer read FNo write FNo;

		property StArea: TAreaRec read FStArea write FStArea;
		property EdArea: TAreaRec read FEdArea write FEdArea;

		function GetAreaType: string;
		function GetStAreaMin: string;
		function GetEdAreaMin: string;
		function GetStX: string;
		function GetStY: string;
		function GetEdX: string;
		function GetEdY: string;
	end;

	TFirstCharge = class(TCharge)
	private
		FPay: Integer;
		function GetChargeType: string; override;
	public
		constructor Create(ACode: string; ANo: Integer; APay: Integer; AStSi, AStGu, AStDong, AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI: string); overload;

		property Code;
		property Pay: Integer read FPay write FPay;
		property StArea;
		property EdArea;
	end;

	TFirstDetailCharge = class(TCharge)
	private
		FPay: Integer;
		function GetChargeType: string; override;
	public
		constructor Create(ACode: string; ANo: Integer; APay: Integer; AStSi, AStGu, AStDong, AStPOI, AStX, AStY, AEdSi, AEdGu, AEdDong, AEdPOI, AEdX, AEdY: string); overload;

		property Code;
		property Pay: Integer read FPay write FPay;
		property StArea;
		property EdArea;
	end;

	TTableCharge = class(TCharge)
  private
    FPay: Integer;
		function GetChargeType: string; override;
  public
		constructor Create(ACode: string; ANo, APay: Integer; AStSi, AStGu, AStDong, AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI: string); overload;

    property Code;
    property Pay: Integer read FPay write FPay;
    property StArea;
    property EdArea;
  end;

  TDistCharge = class(TCharge)
  private
    FLowPay: Integer;
    FBaseDist: Integer;
    FAddPay: Integer;
    FAddDist: Integer;
    FBasePay: Integer;
		function GetChargeType: string; override;
  public
		constructor Create(ACode: string; ANo, ALowPay, ABaseDist, ABasePay, AAddDist, AAddPay: Integer; AStSi, AStGu, AStDong, AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI: string); overload;

    property Code;
    property LowPay: Integer read FLowPay write FLowPay;
    property BaseDist: Integer read FBaseDist write FBaseDist;
    property BasePay: Integer read FBasePay write FBasePay;
    property AddDist: Integer read FAddDist write FAddDist;
    property AddPay: Integer read FAddPay write FAddPay;
    property StArea;
    property EdArea;
  end;

  TTermCharge = class(TCharge)
  private
    FBasePay: Integer;
    FSubCD: string;
    FPassCD: string;
    function GetChargeType: string; override;
	public
		constructor Create(ACode: string; ANo, ABasePay: Integer; ASubCD, APassCD, AStSi, AStGu, AStDong, AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI: string); overload;

    property Code;
    property BasePay: Integer read FBasePay write FBasePay;
    property SubCD: string read FSubCD write FSubCD;
    property PassCD: string read FPassCD write FPassCD;
    property StArea;
    property EdArea;
  end;

	TChargeList = class(TStringList)
  private
		function IsExistArea(ACode: string; ANo: Integer; AStSi, AStGu, AStDong, AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI: string): Boolean;
	public
		constructor Create;
    function Charge(ACode: string): TCharge;
    procedure Clear; override;

    procedure AddCharge(ACharge: TCharge);
		procedure AddFirst(ACode: string; ANo, APay: Integer; AStSi, AStGu, AStDong, AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI: string);
		procedure AddFirstDetail(ACode: string; ANo, APay: Integer; AStSi, AStGu, AStDong, AStPOI, AStX, AStY, AEdSi, AEdGu, AEdDong, AEdPOI, AEdX, AEdY: string);
		procedure AddTable(ACode: string; ANo, APay: Integer; AStSi, AStGu, AStDong, AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI: string);
		procedure AddDist(ACode: string; ANo, ALowPay, ABaseDist, ABasePay, AAddDist, AAddPay: Integer; AStSi, AStGu, AStDong, AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI: string);
		procedure AddTerm(ACode: string; ANo, ABasePay: Integer; ASubCD, APassCD, AStSi, AStGu, AStDong, AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI: string);
  end;

  TSubCharge = class
  private
    FValue: string;
    FCode: string;
  public
    constructor Create(ACode, AValue: string);

    property Code: string read FCode write FCode;
    property Value: string read FValue write FValue;
  end;

  TSubCharges = class(TStringList)
  public
    procedure AddSub(ACode, AValue: string);
    procedure Clear; override;

    function IndexOfCode(ACode: string): Integer;
    function GetName(ACode: string): string;
    function GetCode(AName: string): string;
  end;


implementation

{ TCharge }

constructor TCharge.Create(ACode: string; ANo: Integer; AStSi, AStGu,
	AStDong, AStPOI, AStX, AStY, AEdSi, AEdGu, AEdDong, AEdPOI, AEdX, AEdY: string);
begin
	FCode := ACode;
  FNo := ANo;

	FStArea.Si := AStSi;
	FStArea.Gu := AStGu;
	FStArea.Dong := AStDong;
	FStArea.POI := AStPOI;
	FStArea.X := AStX;
	FStArea.Y := AStY;
	FEdArea.Si := AEdSi;
	FEdArea.Gu := AEdGu;
	FEdArea.Dong := AEdDong;
	FEdArea.POI := AEdPOI;
	FEdArea.X := AEdX;
	FEdArea.Y := AEdY;
end;

function TCharge.GetAreaType: string;
begin
	if StArea.POI <> '' then
		Result := 'D'
	else if StArea.Dong <> '' then
		Result := '동'
	else if StArea.Gu <> '' then
		Result := '구'
	else if StArea.Si <> '' then
		Result := '시'
	;
	Result := Result + '→';
	if EdArea.POI <> '' then
		Result := Result + 'D'
	else if EdArea.Dong <> '' then
		Result := Result + '동'
	else if EdArea.Gu <> '' then
		Result := Result + '구'
	else if EdArea.Si <> '' then
		Result := Result + '시'
	;
end;

function TCharge.GetEdAreaMin: string;
begin
	if EdArea.POI <> '' then
		Result := EdArea.Dong + '/' + EdArea.POI
	else if EdArea.Dong <> '' then
		Result := EdArea.Dong
	else if EdArea.Gu <> '' then
    Result := EdArea.Gu
	else if EdArea.Si <> '' then
		Result := EdArea.Si
	;
end;

function TCharge.GetEdX: string;
begin
	Result := EdArea.X;
end;

function TCharge.GetEdY: string;
begin
	Result := EdArea.Y;
end;

function TCharge.GetStAreaMin: string;
begin
	if StArea.POI <> '' then
	begin
		Result := StArea.Dong + '/' + StArea.POI
	end
	else if StArea.Dong <> '' then
		Result := StArea.Dong
	else if StArea.Gu <> '' then
		Result := StArea.Gu
	else if StArea.Si <> '' then
		Result := StArea.Si
	;
end;

function TCharge.GetStX: string;
begin
	Result := StArea.X;
end;

function TCharge.GetStY: string;
begin
	Result := StArea.Y;
end;

{ TFirstCharge }

constructor TFirstCharge.Create(ACode: string; ANo, APay: Integer; AStSi, AStGu,
	AStDong, AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI: string);
begin
	FPay := APay;

	inherited Create(ACode, ANo, AStSi, AStGu, AStDong, AStPOI, '', '', AEdSi, AEdGu, AEdDong, AEdPOI, '', '');
end;

function TFirstCharge.GetChargeType: string;
begin
	Result := CHARGE_TYPE_FIRST;
end;

{ TTableCharge }

constructor TTableCharge.Create(ACode: string; ANo, APay: Integer; AStSi, AStGu,
	AStDong, AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI: string);
begin
	FPay := APay;

	inherited Create(ACode, ANo, AStSi, AStGu, AStDong, AStPOI, '', '', AEdSi, AEdGu, AEdDong, AEdPOI, '', '');
end;

function TTableCharge.GetChargeType: string;
begin
  Result := CHARGE_TYPE_TABLE;
end;

{ TDistCharge }

constructor TDistCharge.Create(ACode: string; ANo, ALowPay, ABaseDist, ABasePay, AAddDist, AAddPay: Integer;
	AStSi, AStGu, AStDong, AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI: string);
begin
  FLowPay   := ALowPay;
  FBaseDist := ABaseDist;
  FBasePay  := ABasePay;
  FAddDist  := AAddDist;
  FAddPay   := AAddPay;

	inherited Create(ACode, ANo, AStSi, AStGu, AStDong, AStPOI, '', '', AEdSi, AEdGu, AEdDong, AEdPOI, '', '');
end;

function TDistCharge.GetChargeType: string;
begin
  Result := CHARGE_TYPE_DISTANCE;
end;

{ TTermCharge }

constructor TTermCharge.Create(ACode: string; ANo, ABasePay: Integer; ASubCD,
	APassCD, AStSi, AStGu, AStDong, AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI: string);
begin
  FBasePay := ABasePay;
  FSubCD := ASubCD;
  FPassCD := APassCD;

	inherited Create(ACode, ANo, AStSi, AStGu, AStDong, AStPOI, '', '', AEdSi, AEdGu, AEdDong, AEdPOI, '', '');
end;

function TTermCharge.GetChargeType: string;
begin
	Result := CHARGE_TYPE_TERM;
end;

{ TChargeList }

procedure TChargeList.AddCharge(ACharge: TCharge);
begin
  AddObject(ACharge.Code, ACharge);
end;

procedure TChargeList.AddDist(ACode: string; ANo, ALowPay, ABaseDist, ABasePay,
	AAddDist, AAddPay: Integer; AStSi, AStGu, AStDong,AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI: string);
begin
	if IsExistArea(ACode, ANo, AStSi, AStGu, AStDong,AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI) then
    Exit;

	AddObject(ACode+'-'+IntToStr(ANo), TDistCharge.Create(ACode, ANo, ALowPay, ABaseDist, ABasePay, AAddDist, AAddPay,AStSi, AStGu, AStDong, AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI));
end;

procedure TChargeList.AddFirst(ACode: string; ANo, APay: Integer; AStSi, AStGu,
	AStDong, AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI: string);
begin
	if IsExistArea(ACode, ANo, AStSi, AStGu, AStDong, AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI) then
		Exit;

	AddObject(ACode+'-'+IntToStr(ANo), TFirstCharge.Create(ACode, ANo, APay, AStSi, AStGu, AStDong, AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI));
end;

procedure TChargeList.AddFirstDetail(ACode: string; ANo, APay: Integer;
	AStSi, AStGu, AStDong, AStPOI, AStX, AStY, AEdSi, AEdGu, AEdDong, AEdPOI, AEdX, AEdY: string);
begin
	if IsExistArea(ACode, ANo, AStSi, AStGu, AStDong, AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI) then
		Exit;

	AddObject(ACode+'-'+IntToStr(ANo), TFirstDetailCharge.Create(ACode, ANo, APay, AStSi, AStGu, AStDong, AStPOI, AStX, AStY, AEdSi, AEdGu, AEdDong, AEdPOI, AEdX, AEdY));
end;                                 

procedure TChargeList.AddTable(ACode: string; ANo, APay: Integer; AStSi, AStGu,
	AStDong, AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI: string);
begin
	if IsExistArea(ACode, ANo, AStSi, AStGu, AStDong, AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI) then
    Exit;

	AddObject(ACode+'-'+IntToStr(ANo), TTableCharge.Create(ACode, ANo, APay, AStSi, AStGu, AStDong, AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI));
end;

procedure TChargeList.AddTerm(ACode: string; ANo, ABasePay: Integer; ASubCD,
	APassCD, AStSi, AStGu, AStDong, AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI: string);
begin
	if IsExistArea(ACode, ANo, AStSi, AStGu, AStDong, AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI) then
    Exit;

	AddObject(ACode+'-'+IntToStr(ANo), TTermCharge.Create(ACode, ANo, ABasePay, ASubCD, APassCD, AStSi, AStGu, AStDong, AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI));
end;

function TChargeList.Charge(ACode: string): TCharge;
var
  Index: Integer;
begin
  Result := nil;
  if Find(ACode, Index) then
    Result := TCharge(Objects[Index]);
end;

procedure TChargeList.Clear;
var
  I: Integer;
begin
  for I := Count - 1 downto 0 do
    Objects[I].Free;

  inherited;
end;

constructor TChargeList.Create;
begin
  inherited;

  Duplicates := dupIgnore;
  Sorted := False;
end;

function TChargeList.IsExistArea(ACode: string; ANo: Integer; AStSi, AStGu, AStDong, AStPOI, AEdSi, AEdGu, AEdDong, AEdPOI: string): Boolean;
var
  I: Integer;
  Charge: TCharge;
begin
  Result := True;

  if (ANo > 0) and (IndexOf(ACode+'-'+IntToStr(ANo)) > -1) then
    Exit;
      
  for I := 0 to Count - 1 do
  begin
    Charge := TCharge(Objects[I]);
		if (Charge.StArea.Si = AStSi) and (Charge.StArea.Gu = AStGu) and (Charge.StArea.Dong = AStDong) and (Charge.StArea.POI = AStPOI)
			and (Charge.EdArea.Si = AEdSi) and (Charge.EdArea.Gu = AEdGu) and (Charge.EdArea.Dong = AEdDong)  and (Charge.EdArea.POI = AEdPOI) then
			Exit;
  end;

  Result := False;
end;

{ TSubCharges }

procedure TSubCharges.AddSub(ACode, AValue: string);
begin
  AddObject(AValue, TSubCharge.Create(ACode, AValue));
end;

procedure TSubCharges.Clear;
var
  I: Integer;
begin
  for I := Count - 1 downto 0 do
    Objects[I].Free;

  inherited;
end;

function TSubCharges.GetCode(AName: string): string;
var
  I: Integer;
begin
  Result := '';
  for I := 0 to Count - 1 do
  begin
    if Strings[I] = AName then
    begin
      Result := TSubCharge(Objects[I]).Code;
      Exit;
    end;
  end;
end;

function TSubCharges.GetName(ACode: string): string;
var
  Idx: Integer;
begin
  Result := '';
  Idx := IndexOfCode(ACode);
  if Idx > -1 then
    Result := Strings[Idx];
end;

function TSubCharges.IndexOfCode(ACode: string): Integer;
var
  I: Integer;
begin
  Result := -1;

  for I := 0 to Count - 1 do
  begin
    if TSubCharge(Objects[I]).Code = ACode then
    begin
      Result := I;
      Exit;
    end;
  end;
end;

{ TSubCharge }

constructor TSubCharge.Create(ACode, AValue: string);
begin
  FCode := ACode;
  FValue := AValue;
end;

{ TFirstDetailCharge }

constructor TFirstDetailCharge.Create(ACode: string; ANo, APay: Integer;
	AStSi, AStGu, AStDong, AStPOI, AStX, AStY, AEdSi, AEdGu, AEdDong, AEdPOI, AEdX, AEdY: string);
begin
	FPay := APay;

	inherited Create(ACode, ANo, AStSi, AStGu, AStDong, AStPOI, AStX, AStY, AEdSi, AEdGu, AEdDong, AEdPOI, AEdX, AEdY);
end;

function TFirstDetailCharge.GetChargeType: string;
begin
	Result := CHARGE_TYPE_FIRST_DETAIL;
end;

end.

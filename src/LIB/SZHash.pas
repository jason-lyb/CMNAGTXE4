unit SZHash;

/////////////////////////////
// Version 1.1.0
////////////////////////////

{

 The contents of this file are subject to the Mozilla Public License
 Version 1.1 (the "License"); you may not use this file except in compliance
 with the License. You may obtain a copy of the License at http://www.mozilla.org/MPL/

 Software distributed under the License is distributed on an "AS IS" basis,
 WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for the
 specific language governing rights and limitations under the License.

 The original code is SZHash, released 16. Jun, 2005.

 The initial developer of the original code is
 Sasa Zeman (public@szutils.net, www.szutils.net)

 Copyright(C) 2005 Sasa Zeman. All Rights Reserved.
}

{--------------------------------------------------------------------

Hash class which work with strings.

- Variable lenght of Hash table
- Several Hash formula included
- Additional number stored with hashed string
- Additional pointer stored with hashed string


Revision History:

Version 1.1.0, 09. Jul 2005
  - Hashing speed improvements
  - Hashing formulas improvements
  - Prime numbers calculation for Hash Table size

Version 1.0.0, 16. Jun 2005
  - Initial version


  Author   : Sasa Zeman
  E-mail   : public@szutils.net or sasaz72@mail.ru
  Web site : www.szutils.net
}


// If you want to add CRC32 algorithm as hash, please download
// SZCRC32 unit from my site and enable next line:
//{$DEFINE SZCRC32}

interface

uses Classes, Windows {$IFDEF SZCRC32}, SZCRC32 {$ENDIF SZCRC32}, SysUtils;

type

  PSZHashData = ^TSZHashData;

  TSZHashData = record
    Int: integer;
    Ptr: Pointer;
    S: string;
  end;

  TSZSubList=class
  Private
    SearchCount: integer;
    Sublist:TList;
  Public
    constructor Create;
    destructor Destroy; override;

    function Add(Num: integer; const s: string): Boolean; overload;
    function Add(Ptr: Pointer; const s: string): Boolean; overload;
    function Add(Num: integer; Ptr: Pointer; const s: string): Boolean; overload;
    function Delete(p: PSZHashData): Boolean;
    function Search (const s: string): PSZHashData;
    function Sort: Boolean;
    function Count: integer;
  end;

  TSZHash=class
  Private
    FHashType: integer;
    HashTable: array of TSZSubList;
    HashSize: integer;

    procedure HashInit(Size, HashType: integer);

    //My modified Hash formula
    function SZHashValue(const s: string): integer;
    // Standard Hash
    function StandardHashValue(const s: AnsiString): integer;
    // Rotating hash
    function RotatingHashValue(const s: string): integer;
    // ELF Hash formula
    function ELFHashValue(const S: string): Integer;

    {$IFDEF SZCRC32}
    // if uses CRC32 unit
    function CRCHashValue (const s: string): integer;
    {$ENDIF SZCRC32}

  Public

    SearchCount: integer;

    constructor Create(HashSize: integer=4194303; HashType: Integer=3);
    destructor Destroy; override;

    function HashValue (const s: AnsiString): integer;

    function Add(Num: integer; const s: string): Boolean; overload;
    function Add(Ptr: pointer; const s: string): Boolean; overload;
    function Add(Num: integer; Ptr: pointer; const s: string): Boolean; overload;
    function Delete(const s: string): Boolean;
    function Search (const s: string): PSZHashData;
    function Sort: Boolean;
    function Count(index: integer=-1): integer;
    function Size: integer;
    function HashType: integer;
    function OccupatedCount: integer;
    function Stdev: double;

  end;

implementation

uses Math;

{ TSZSubList }

function SZIsPrime(Number : Cardinal) : Boolean;
var
  I, J : Cardinal;
begin
  if Number < 4 then
    Result := Number > 1
  else begin
    Result := False;

    I:= (Number mod 6);
    if (I=1) or (I=5) then
    begin
      J := round(sqrt(Number));
      I := 5;
      while I <= J do
      begin
        if (Number mod I = 0) then
           Exit;

        if (Number <> J) and
           (Number mod (I+2) = 0) then
           Exit;

        inc(I,6);
      end;
      Result := True;
    end;
  end;
end;

function SZNearestPrime(Number : Cardinal) : Cardinal;
var
  I : Cardinal;
begin

  if SZIsPrime(Number) then
  begin
    result:=Number;
    exit
  end;

  if Number = 4  then
  begin
    result:=5;
    exit
  end;

  I:= ((Number+1) div 6) * 6 - 1;

  repeat

    if SZIsPrime(I+2) then
    begin
      inc(I,2);
      break;
    end;

    if SZIsPrime(I) then
       break;

    inc(I,6);

  until false;

  Result := I;
end;


constructor TSZSubList.Create;
begin
  Sublist:= TList.Create
end;

destructor TSZSubList.Destroy;
var
  i,len: integer;
  p: PSZHashData;
begin
//Destroy

  len:=Sublist.Count-1;
  for i:=0 to len do
  begin
    p:=PSZHashData(Sublist[i]);
    p.Int:=0;
    p.Ptr:=nil;
    SetLength(p.s,0);
  end;

  inherited;
end;

function TSZSubList.Add(Num: integer; const s: string): Boolean;
var
  p: PSZHashData;
begin
  //Add

  result:=false;
  p:= Search(s);

  if p<>nil then exit;

  try
    New(p);
    p.Int:=Num;
    p.Ptr:=nil;
    p.s:=s;

    Sublist.Add(p);
    Result:=True
  finally
  end;
end;

function TSZSubList.Add(Ptr: Pointer; const s: string): Boolean;
var
  p: PSZHashData;
begin
  //Add

  result:=false;
  p:= Search(s);

  if p<>nil then exit;

  try
    New(p);
    p.Int:=0;
    p.Ptr:=ptr;
    p.s:=s;

    Sublist.Add(p);
    Result:=True
  finally

  end;
end;

function TSZSubList.Add(Num: integer; Ptr: pointer; const s: string): Boolean;
var
  p: PSZHashData;
begin
  //Add

  result:=false;
  p:= Search(s);

  if p<>nil then exit;

  try
    New(p);
    p.Int:=Num;
    p.Ptr:=Ptr;
    p.s:=s;

    Sublist.Add(p);
    Result:=True
  finally end;
end;

function TSZSubList.Delete(p: PSZHashData): Boolean;
begin
//Delete

  Result:=true;
  Sublist.Delete(Sublist.IndexOf(p));
  Dispose(p);

end;

function TSZSubList.Search(const s: string): PSZHashData;
var
  i,len: integer;
  p: PSZHashData;
begin
//Search

  result:=nil;

  SearchCount:=1;

  len:=Sublist.Count-1;
  for i:=0 to len do
  begin
    p:=PSZHashData(Sublist[i]);

    inc(SearchCount);

    if s = p.s then
    begin
      Result:=p;
      break
    end;
  end;

  inherited;

end;

function TSZSubList.Sort: Boolean;
begin
// Sort
  Result:= false
end;

function TSZSubList.Count: integer;
begin
  result:=Sublist.Count;
end;

///////////////////////////

{ TSZHash }

procedure TSZHash.HashInit(Size, HashType: integer);
var
  i: integer;
begin
  HashSize:=Size;

  SetLength(HashTable, HashSize);

  for i:=0 to HashSize-1 do
    HashTable[i]:=TSZSubList.Create;

  FHashType:=HashType

end;

constructor TSZHash.Create(HashSize: integer=4194303; HashType: integer=3);
begin
  // Create hash

  // Find nearest prime number to given
  HashInit(SZNearestPrime(HashSize), HashType);
end;

destructor TSZHash.Destroy;
var
  i: integer;
begin

  for i:=0 to HashSize-1 do
    HashTable[i].Free;

  SetLength(HashTable,HashSize);

  inherited;
end;

function TSZHash.Add(Num: integer; const s: string): Boolean;
var
  i: integer;
  p: PSZHashData;
begin
  result:=false;

  i:= HashValue(s);
  p:= HashTable[i].Search(s);

  SearchCount:=HashTable[i].SearchCount;

  if p=nil then
    Result:=HashTable[i].Add(Num, s)
end;

function TSZHash.Add(Ptr: pointer; const s: string): Boolean;
var
  i: integer;
  p: PSZHashData;
begin
  result:=false;

  i:= HashValue(s);
  p:= HashTable[i].Search(s);

  if p=nil then
    Result:=HashTable[i].Add(Ptr, s)
end;

function TSZHash.Add(Num: integer; Ptr: pointer; const s: string): Boolean;
var
  i: integer;
  p: PSZHashData;
begin
  result:=false;

  i:= HashValue(s);
  p:= HashTable[i].Search(s);

  if p=nil then
    Result:=HashTable[i].Add(Num,Ptr, s)
end;

function TSZHash.Delete(const s: string): Boolean;
var
  i: integer;
  p: PSZHashData;
begin
  result:=false;

  i:= HashValue(s);
  p:= HashTable[i].Search(s);

  if p<>nil then
    Result:=HashTable[i].Delete(p)
end;

function TSZHash.Count(index: integer=-1): integer;
var
  i: integer;
begin
  Result:=0;

  if index>-1 then Result:=HashTable[index].Count
  else

  for i:=0 to HashSize-1 do
    Result:=Result + HashTable[i].Count
end;

function TSZHash.SZHashValue(const s: string): integer;

// I adapted hash formula a bit
// In generally, they give a more stabile distribution in hash table
// on chengeabe Hash size.
var
  i,len: integer;
  hash: DWORD;
  P: PByte;
begin
  len:=length(s);

  hash:=0;

  P:=@s[1];
  for i:=1 to len do
  begin
    hash := (hash * 43) xor DWORD(P^);
    inc(P);
  end;

  Result:=hash mod DWORD(HashSize)
end;

function TSZHash.StandardHashValue(const s: AnsiString): integer;
// Standard Hash
// A bit modified Standard formula for speed
var
  i,len: integer;
  hash: DWORD;
  P: PByte;
begin
  len:=length(s);
  hash := 0;

  P:=@s[1];
  for i:=1 to len do
  begin
    // Standard formula
    // hash := (31 * hash +  DWORD(P^)) ;
    // Bit modified for speed
    hash := ((hash shl 5) - hash) xor  DWORD(P^);

    inc(P)
  end;

  Result:=hash mod DWORD(HashSize)
end;

function TSZHash.RotatingHashValue(const s: string): integer;
// Rotating hash
// Standard rotating formula

var
  i,len: integer;
  hash: DWORD;
  P: PByte;
begin
  len:=length(s);
  hash := 0;

  P:=@s[1];
  for i:=1 to len do
  begin
    hash := (hash shl 5) xor (hash shr 27) xor DWORD(P^);
    inc(P)
  end;

  Result:=hash mod DWORD(HashSize)
end;

function TSZHash.ELFHashValue(const S: string): Integer;
// ELF Hash formula
var
  len: integer;
  hash, i, x: DWORD;
  P: PByte;
begin
  Hash := 0;
  len:=Length(S);
  P:=@s[1];

  for i := 1 to len  do
  begin
    Hash := (Hash shl 4) + (P^);
    x := Hash and $F0000000;
    if (x <> 0) then
      Hash := Hash xor (x shr 24);
      
    Hash := Hash and (not x);

    inc(P)
  end;

  Result:= Hash mod DWORD(HashSize)
end;


{$IFDEF SZCRC32}

// If uses CRC32 unit
function TSZHash.CRCHashValue(const S: string): Integer;
// CRC32 hash formula
var
  CRC32: DWORD;
begin
  CRC32 := SZCRC32Full(@S[1], length(S));

  Result:= DWORD(CRC32) mod DWORD(HashSize)
end;

{$ENDIF SZCRC32}


function TSZHash.HashValue(const s: AnsiString): integer;
// Determinate whish Hash formula to call  
begin
  try
    case FHashType of
      //My Formula
      1: Result:=SZHashValue(s);

      // Rotating hash
      2: Result:=RotatingHashValue(s);

      //Standard
      3: Result:=StandardHashValue(s);

      // ELF Hash formula
      4: Result:=ELFHashValue(s);

      {$IFDEF SZCRC32}
      // If uses SZCRC32 unit
      // CRC32 formula
      5: Result:=CRCHashValue(s);
      {$ENDIF SZCRC32}

      else begin

        // The first version is predefined then

        FHashType := 1;
        Result:=SZHashValue(s);
      end
    end;

  except
    on E: Exception do
    begin
      FHashType := 3;
      Result:=SZHashValue(s);
    end;
  end;
end;

function TSZHash.Search(const s: string): PSZHashData;
begin
  Result:=HashTable[HashValue(s)].Search(s)
end;

function TSZHash.Sort: Boolean;
begin
  result:=false
end;

function TSZHash.Size: integer;
begin
  Result:=HashSize
end;

function TSZHash.HashType: integer;
begin
  Result:=FHashType
end;

function TSZHash.OccupatedCount: integer;
var
  i,len: integer;
begin
  Result:=0;
  len:=Size-1;
  for i:=0 to len do
  if Count(i)>0 then
    inc(Result);
end;

function TSZHash.Stdev: double;
var
  data: array of double;

  i,j,total: integer;
begin
  total:= OccupatedCount;

  SetLength(data,total);

  j:=0;
  for i:=0 to Size-1 do
  if Count(i)>0 then
  begin
    data[j]:=Count(i);
    inc(j);
  end;

  if length(data)>0 then
    Result:=PopnStdDev(data)
  else
    Result:=0;

  SetLength(data,0);
end;

end.

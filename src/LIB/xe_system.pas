unit xe_system;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes,
	System.Win.Registry, Vcl.Controls, Vcl.Dialogs, System.Math;

type
  SystemInfoRecord = record
    VolumeName, // 디스크 볼륨명
    VolumeSerial, // 디스크 시리얼번호
    FileSystemName, // 파일구조
    Drives: shortstring; // 디스크명들
    ProcessorType: String; // CPU 타입(MMX나 P-II는 안됨)
    Version, // 원도우 버전
    Plattform: AnsiString; // 원도우 종류
    PlattId: DWORD; // 현 플랫폼 ID
    ComputerName, // 컴퓨터 이름
    FPU, // FPU 유무
    UserName, // 사용자 이름
    CompanyName, // 회사이름
    CDSerial: String; // 원도우 시디 시리얼번호
    TotalPhys, // 총 메모리
    AvailPhys, // 이용할 수 있는 메모리
    TotalVirtual, // 총 가상메모리
    AvailVirtual, // 이용할 수 있는 가상메모리
    MemoryLoad: DWORD; // 메모리 적재율
    BiosDate, // 마더보더의 바이오스 날짜
    BiosName, // 마더보더의 바이오스 이름
    BiosVer, // 마더보더의 바이오스 버전
    BusType, // 버스타입
    CPU, // 바이오스에 나타난 CPU종류
    MachineType: String; // 바이오스에 나타난 컴종류
		UUID: String; // System UUID
	end;
type
  TRegistryHelper = class helper for TRegistry
  public
		function ReadMultiSz(const name: string; var Strings: TStrings): boolean;
		function WriteMultiSz(const name: string; const value: TStrings): boolean;
	end;

var
  SysInfoRec: SystemInfoRecord;

function GetAllSystemInfo: SystemInfoRecord; stdcall;
function GetIEVersion: string;

implementation

uses xe_func, xe_gnl, uSMBIOS;

var
  OSVerInfo: TOSVersionInfo;

function GetRegStr(Key, St: string): string;
begin
  with TRegistry.Create do
    try
      RootKey := HKEY_LOCAL_MACHINE;
      if OpenKey(Key, False) then
        result := ReadString(St);

    finally
      Free;

    end;
end;

procedure GetComputerName;
var
  Computer: array [0 .. MAX_COMPUTERNAME_LENGTH] of Char;
  CSize: DWORD;
begin
  CSize := MAX_COMPUTERNAME_LENGTH + 1;
  try
    if Winapi.Windows.GetComputerName(Computer, CSize) then
      SysInfoRec.ComputerName := Computer;
  finally
    // Log(Format('GetComputerName - Computer [%s]', [Computer]), LOGDATADIRECTORY + 'log.txt');
  end;
end;

procedure GetVolumeInfo;
var
  lpRootPathName: PChar;
  lpVolumeNameBuffer: PChar;

  nVolumeNameSize: DWORD;
  lpVolumeSerialNumber: DWORD;

  lpMaximumComponentLength: DWORD;
  lpFileSystemFlags: DWORD;

  lpFileSystemNameBuffer: PChar;
  nFileSystemNameSize: DWORD;
begin
  GetMem(lpVolumeNameBuffer, MAX_PATH + 1);
  GetMem(lpFileSystemNameBuffer, MAX_PATH + 1);
  try
    try
      nVolumeNameSize := MAX_PATH + 1;
      nFileSystemNameSize := MAX_PATH + 1;
      lpRootPathName := PChar('C:\');
      if Winapi.Windows.GetVolumeInformation(lpRootPathName, lpVolumeNameBuffer,
        nVolumeNameSize, @lpVolumeSerialNumber, lpMaximumComponentLength,
        lpFileSystemFlags, lpFileSystemNameBuffer, nFileSystemNameSize) then
      begin
        with SysInfoRec do
        begin
          VolumeName := lpVolumeNameBuffer;
          VolumeSerial := IntToHex(HiWord(lpVolumeSerialNumber), 4) + '-' +
            IntToHex(LoWord(lpVolumeSerialNumber), 4);

          FileSystemName := lpFileSystemNameBuffer;
        end;
      end
      else
      begin
        ShowMessage('Not founc HDD Serail number.');
      end;
    except
      on E: Exception do
        ShowMessage(E.Message);
    end;
  finally
    FreeMem(lpVolumeNameBuffer);
    FreeMem(lpFileSystemNameBuffer);
  end;
end;

procedure GetOSVersionInfo;
  function Plat(Pl: DWORD): string;
  begin
    case Pl of
      VER_PLATFORM_WIN32s:
        result := 'Windows 3.1';
      VER_PLATFORM_WIN32_WINDOWS:
        result := 'Windows 95';
      VER_PLATFORM_WIN32_NT:
        result := 'Windows NT';
    else
      result := '???';

    end;
  end;

begin
  with OSVerInfo, SysInfoRec do
  begin
    dwOSVersionInfoSize := SizeOf(OSVerInfo);
    if GetVersionEx(OSVerInfo) then;
    Version := Format('%d.%d (%d.%s)', [dwMajorVersion, dwMinorVersion,
      (dwBuildNumber and $FFFF), szCSDVersion]);
    Plattform := Plat(dwPlatformId);
    PlattId := dwPlatformId;
  end;
end;

procedure GetDriveNames;
var
  D1: set of 0 .. 25;
  D2: integer;
begin
  DWORD(D1) := Winapi.Windows.GetLogicalDrives;
  with SysInfoRec do
  begin
    Drives := '';
    for D2 := 0 to 25 do
      if D2 in D1 then
        Drives := Drives + Chr(D2 + Ord('A')) + ': ';
  end;
end;

procedure GetSystemInfo;
var
  LocalSI: TSystemInfo;
const
  PROCESSOR_INTEL_386 = 386;
  PROCESSOR_INTEL_486 = 486;
  PROCESSOR_INTEL_PENTIUM = 586;
  PROCESSOR_MIPS_R4000 = 4000;
  PROCESSOR_ALPHA_21064 = 21064;
begin
  Winapi.Windows.GetSystemInfo(LocalSI);
  with LocalSI, SysInfoRec do
  begin
    case dwProcessorType of
      PROCESSOR_INTEL_386:
        ProcessorType := ' 386';
      PROCESSOR_INTEL_486:
        ProcessorType := ' 486';
      PROCESSOR_INTEL_PENTIUM:
        ProcessorType := ' Pentium';
      PROCESSOR_MIPS_R4000:
        ProcessorType := ' MIPS';
      PROCESSOR_ALPHA_21064:
        ProcessorType := ' ALPHA';
    end;
  end;
end;

procedure MemoryInfo;
var
  MemStatus: TMemoryStatus;
begin
  MemStatus.dwLength := SizeOf(MemStatus);
  GlobalMemoryStatus(MemStatus);
  with SysInfoRec do
  begin
    TotalPhys := MemStatus.dwTotalPhys div 1024;
    AvailPhys := MemStatus.dwAvailPhys div 1024;

    TotalVirtual := MemStatus.dwTotalVirtual div 1024;
    AvailVirtual := MemStatus.dwAvailVirtual div 1024;

    MemoryLoad := MemStatus.dwMemoryLoad;
  end;
end;

procedure GetRegisterInfo;
const
  FPPKey = '\hardware\DESCRIPTION\System\FloatingPointProcessor';
var
  CurVerKey: PChar;
begin
  with SysInfoRec do
  begin
    case PlattId of
      VER_PLATFORM_WIN32_WINDOWS:
        CurVerKey := '\SOFTWARE\Microsoft\Windows\CurrentVersion';

      VER_PLATFORM_WIN32_NT:
        CurVerKey := '\SOFTWARE\Microsoft\Windows NT\CurrentVersion';

    else
      CurVerKey := nil;
    end;
    with TRegistry.Create do
      try
        RootKey := HKEY_LOCAL_MACHINE;
        if OpenKey(FPPKey, False) then
          FPU := 'Yes'
        else
          FPU := 'No';
      finally
        Free;
      end;
    UserName := GetRegStr(CurVerKey, 'RegisteredOwner');
    CompanyName := GetRegStr(CurVerKey, 'RegisteredOrganization');
    if PlattId = VER_PLATFORM_WIN32_WINDOWS then
      CDSerial := GetRegStr(CurVerKey, 'ProductID');
  end;
end;

procedure GetBiosInfo;
begin
  with SysInfoRec do
  begin
    BiosDate := GetRegStr('Enum\Root\*PNP0C01\0000', 'BIOSDate');
    BiosName := GetRegStr('Enum\Root\*PNP0C01\0000', 'BIOSName');

    BiosVer := GetRegStr('Enum\Root\*PNP0C01\0000', 'BIOSVersion');
    BusType := GetRegStr('Enum\Root\*PNP0C01\0000', 'BusType');

    CPU := GetRegStr('Enum\Root\*PNP0C01\0000', 'CPU');
    MachineType := GetRegStr('Enum\Root\*PNP0C01\0000', 'MachineType');
  end;
end;

function GetUUID : Ansistring;
Var
	SMBios : TSMBios;
	LSystem : TSystemInformation;
 {$IFNDEF LINUX}
	UUID : Array [0 .. 31] of AnsiChar;
 {$ENDIF}
begin
	SMBios := TSMBios.Create;
	try
		//SMBios.LoadFromFile('/home/rruz/PAServer/scratch-dir/RRUZ-Linux Ubuntu/SMBiosTables/SMBIOS.dat', true);
		LSystem := SMBios.SysInfo;
		{$IFNDEF LINUX}
		BinToHex(@LSystem.RAWSystemInformation.UUID, UUID, SizeOf(LSystem.RAWSystemInformation.UUID));
		{$ENDIF}
	finally
		SMBios.Free;
	end;
	SysInfoRec.UUID := UUID;
	Result := UUID;
end;

function GetAllSystemInfo: SystemInfoRecord; stdcall;
var sTmp : string;
begin
  GetOSVersionInfo;
  GetDriveNames;
  GetSystemInfo;
	GetVolumeInfo;
  GetComputerName;
  MemoryInfo;
	GetRegisterInfo;
	GetBiosInfo;
	Try
		sTmp := GetUUID;
	except
	End;
	result := SysInfoRec;
end;

function GetIEVersion: string;
begin
  with TRegistry.Create do
  try
    RootKey := HKEY_LOCAL_MACHINE;
    OpenKeyReadOnly('Software\Microsoft\Internet Explorer');
    try
      Result := ReadString('svcVersion');
      if Result.IsEmpty then Result := ReadString('Version');
      if Result.IsEmpty then raise Exception.Create('');

//      Result := '8.0.7601.17514';
      GS_IE_VER := StrToIntDef(Copy(Result, 1, POS('.', Result)-1), 99);
      if GS_IE_VER < 9 then GS_SEARCH_NAVER_MAP := False;
    except
      Result := '0';
      GS_IE_VER := 99;
    end;
    CloseKey;
  finally
    Free;
  end;
end;

{ TRegistryHelper }

function TRegistryHelper.ReadMultiSz(const name: string;
  var Strings: TStrings): boolean;
var
  iSizeInByte: integer;
  Buffer: array of WChar;
  iWCharsInBuffer: integer;
  z: integer;
  sString: string;
begin
  iSizeInByte := GetDataSize(name);
  if iSizeInByte > 0 then begin
    SetLength(Buffer, Floor(iSizeInByte / sizeof(WChar)));
    iWCharsInBuffer := Floor(ReadBinaryData(name, Buffer[0],
			iSizeInByte) / sizeof(WChar));
		sString := '';
    for z := 0 to iWCharsInBuffer do begin
      if Buffer[z] <> #0 then begin
        sString := sString + Buffer[z];
      end else begin
        if sString <> '' then begin
          Strings.Append(sString);
          sString := '';
        end;
      end;
    end;
    result := true;
  end else begin
    result := false;
  end;
end;

function TRegistryHelper.WriteMultiSz(const name: string;
  const value: TStrings): boolean;
var
  sContent: string;
  x: integer;
begin
  sContent := '';
  for x := 0 to pred(value.Count) do begin
    sContent := sContent + value.Strings[x] + #0;
  end;
  sContent := sContent + #0;
  result := RegSetValueEx(CurrentKey, pchar(name), 0, REG_MULTI_SZ,
    pointer(sContent), Length(sContent)*sizeof(Char)) = 0;
end;

end.

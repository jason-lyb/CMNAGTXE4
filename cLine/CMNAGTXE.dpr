program CMNAGTXE;

uses
  Vcl.Forms,
  Vcl.Dialogs,
  System.UiTypes,
  SysUtils,
  IniFiles,
  Windows,
  ShellAPI,
  xe_Login in 'xe_Login.pas' {Frm_Login},
  xe_CidSvrSel in '..\src\COM\xe_CidSvrSel.pas' {Frm_CidSvrSel},
  xe_GNL in '..\src\LIB\xe_GNL.pas',
  xe_Func in '..\src\LIB\xe_Func.pas',
  xe_Msg in '..\src\LIB\xe_Msg.pas',
  xe_runbackup in '..\src\COM\xe_runbackup.pas' {frm_runbackup},
  xe_system in '..\src\LIB\xe_system.pas',
  xe_Lib in '..\src\LIB\xe_Lib.pas',
  xe_packet in '..\src\LIB\xe_packet.pas',
  xe_SearchWord in '..\src\LIB\xe_SearchWord.pas',
  xe_Dm in '..\src\LIB\xe_Dm.pas' {dm: TDataModule},
  xe_VerCheck in '..\src\COM\xe_VerCheck.pas' {frm_VerCheck},
  xe_SETA1 in '..\src\SET\xe_SETA1.pas' {Frm_SETA1},
  Main in '..\src\Main.pas' {Frm_Main},
  xe_Query in '..\src\LIB\xe_Query.pas',
  xe_Structure in '..\src\LIB\xe_Structure.pas',
  xe_Notice in '..\src\LIB\xe_Notice.pas' {Frm_Notice},
  xe_gnl2 in '..\src\LIB\xe_gnl2.pas',
  xe_AllShot in '..\src\LIB\xe_AllShot.pas',
  xe_charge in '..\src\LIB\xe_charge.pas' {dmCharge: TDataModule},
  ChargeInfo in '..\src\Model\ChargeInfo.pas',
  xe_JON012 in '..\src\JON\xe_JON012.pas' {Frm_JON012},
  xe_Jon015 in '..\src\JON\xe_Jon015.pas' {Frm_JON015},
  xe_JON018 in '..\src\JON\xe_JON018.pas' {Frm_JON018},
  xe_JON30 in '..\src\JON\xe_JON30.pas' {Frm_JON30},
  xe_JON31 in '..\src\JON\xe_JON31.pas' {Frm_JON31},
  xe_JON34B in '..\src\JON\xe_JON34B.pas' {Frm_JON34B},
  SZHash in '..\src\LIB\SZHash.pas',
  xe_WOR09 in '..\src\WOR\xe_WOR09.pas' {Frm_WOR09},
  xe_WOR14 in '..\src\WOR\xe_WOR14.pas' {Frm_WOR14},
  xe_WOR16 in '..\src\WOR\xe_WOR16.pas' {frm_WOR16},
  xe_WOR17 in '..\src\WOR\xe_WOR17.pas' {Frm_WOR17},
  xe_SMS01 in '..\src\SMS\xe_SMS01.pas' {Frm_SMS01},
  uLkJSON in '..\src\LIB\uLkJSON.pas',
  FastStringFuncs in '..\src\LIB\FastStringFuncs.pas',
  FastStrings in '..\src\LIB\FastStrings.pas',
  xe_COM50 in '..\src\COM\xe_COM50.pas' {Frm_COM50},
  xe_CUT012 in '..\src\CUT\xe_CUT012.pas' {Frm_CUT012},
  xe_XmlProtocal in '..\src\COM\xe_XmlProtocal.pas',
  xe_CUT011 in '..\src\CUT\xe_CUT011.pas' {Frm_CUT011},
  xe_Jon03 in '..\src\JON\xe_Jon03.pas' {Frm_JON03},
  xe_JON32 in '..\src\JON\xe_JON32.pas' {Frm_JON32},
  xe_SMS06 in '..\src\SMS\xe_SMS06.pas' {Frm_SMS06},
  xe_WOR11 in '..\src\WOR\xe_WOR11.pas' {Frm_WOR11},
  xe_JON10 in '..\src\JON\xe_JON10.pas' {Frm_JON10},
  xe_JON07 in '..\src\JON\xe_JON07.pas' {Frm_JON07},
  xe_JON09 in '..\src\JON\xe_JON09.pas' {Frm_JON09},
  xe_COM01 in '..\src\COM\xe_COM01.pas' {Frm_COM01},
  xe_AdminMap in '..\src\COM\xe_AdminMap.pas' {Frm_AdminMap},
  xe_JON52 in '..\src\JON\xe_JON52.pas' {Frm_JON52},
  xe_JON15 in '..\src\JON\xe_JON15.pas' {Frm_JON15},
  xe_JON16 in '..\src\JON\xe_JON16.pas' {Frm_JON16},
  xe_JON25 in '..\src\JON\xe_JON25.pas' {Frm_JON25},
  xe_CallPass in '..\src\LIB\xe_CallPass.pas',
  xe_JON02 in '..\src\JON\xe_JON02.pas' {Frm_JON02},
  xe_HEL in '..\src\HEL\xe_HEL.pas' {Frm_HEL},
  xe_COM02 in '..\src\COM\xe_COM02.pas' {Frm_COM02},
  xe_WORA1 in '..\src\WOR\xe_WORA1.pas' {Frm_WORA1},
  xe_WOR07 in '..\src\WOR\xe_WOR07.pas' {Frm_WOR07},
  xe_WOR13 in '..\src\WOR\xe_WOR13.pas' {Frm_WOR13},
  xe_WOR12 in '..\src\WOR\xe_WOR12.pas' {Frm_WOR12},
  xe_ImportFile in '..\src\COM\xe_ImportFile.pas' {Frm_ImportFile},
  xe_WOR08 in '..\src\WOR\xe_WOR08.pas' {Frm_WOR08},
  xe_WOR05 in '..\src\WOR\xe_WOR05.pas' {Frm_WOR05},
  xe_WOR01 in '..\src\WOR\xe_WOR01.pas' {Frm_WOR01},
  xe_WOR02 in '..\src\WOR\xe_WOR02.pas' {Frm_WOR02},
  xe_WOR04 in '..\src\WOR\xe_WOR04.pas' {Frm_WOR04},
  xe_WOR03 in '..\src\WOR\xe_WOR03.pas' {Frm_WOR03},
  xe_WORA8 in '..\src\WOR\xe_WORA8.pas' {Frm_WORA8},
  xe_CUT09 in '..\src\CUT\xe_CUT09.pas' {Frm_CUT09},
  xe_CUT019 in '..\src\CUT\xe_CUT019.pas' {Frm_CUT019},
  xe_CUT013 in '..\src\CUT\xe_CUT013.pas' {Frm_CUT013},
  xe_WOR18 in '..\src\WOR\xe_WOR18.pas' {Frm_WOR18},
  xe_SET06 in '..\src\SET\xe_SET06.pas' {Frm_SET06},
  xe_JON23 in '..\src\JON\xe_JON23.pas' {Frm_JON23},
  xe_JON24 in '..\src\JON\xe_JON24.pas' {Frm_JON24},
  xe_CUT02 in '..\src\CUT\xe_CUT02.pas' {Frm_CUT02},
  xe_CUT03 in '..\src\CUT\xe_CUT03.pas' {Frm_CUT03},
  xe_Flash in '..\src\COM\xe_Flash.pas' {Frm_Flash},
  xe_Html in '..\src\LIB\xe_Html.pas',
  xe_CUT07 in '..\src\CUT\xe_CUT07.pas' {Frm_CUT07},
  xe_WOR10 in '..\src\WOR\xe_WOR10.pas' {Frm_WOR10},
  xe_JON51 in '..\src\JON\xe_JON51.pas' {Frm_JON51},
  xe_AdminMap02 in '..\src\COM\xe_AdminMap02.pas' {Frm_AdminMap02},
  Magnetic in '..\src\LIB\Magnetic.pas',
  xe_SMS07 in '..\src\SMS\xe_SMS07.pas' {Frm_SMS07},
  xe_JON33 in '..\src\JON\xe_JON33.pas' {Frm_JON33},
  xe_JON019 in '..\src\JON\xe_JON019.pas' {Frm_JON019},
  xe_JON53 in '..\src\JON\xe_JON53.pas' {Frm_JON53},
  CidLib in '..\src\LIB\CidLib.pas',
  xe_JON35 in '..\src\JON\xe_JON35.pas' {Frm_JON35},
  xe_SMS05 in '..\src\SMS\xe_SMS05.pas' {Frm_SMS05},
  xe_JON54 in '..\src\JON\xe_JON54.pas' {Frm_JON54},
  xe_JON55 in '..\src\JON\xe_JON55.pas' {Frm_JON55},
  xe_SET07 in '..\src\SET\xe_SET07.pas' {Frm_SET07},
  xe_JON01Share in '..\src\JON\xe_JON01Share.pas',
  uFireWall in '..\src\LIB\uFireWall.pas',
  xe_JON01SPThread in '..\src\LIB\xe_JON01SPThread.pas',
  xe_JON56 in '..\src\JON\xe_JON56.pas' {Frm_JON56},
  xe_JON011 in '..\src\JON\xe_JON011.pas' {Frm_JON011},
  xe_JON017 in '..\src\JON\xe_JON017.pas' {Frm_JON017},
  xe_gnl3 in '..\src\LIB\xe_gnl3.pas',
  xe_CUT014 in '..\src\CUT\xe_CUT014.pas' {Frm_CUT014},
  xe_COM11 in '..\src\COM\xe_COM11.pas' {Frm_COM11},
  xe_ImageV in '..\src\LIB\xe_ImageV.pas' {Frm_ImageV},
  xe_WOR in '..\src\WOR\xe_WOR.pas' {Frm_WOR},
  xe_SMS in '..\src\SMS\xe_SMS.pas' {Frm_SMS},
  xe_SET in '..\src\SET\xe_SET.pas' {Frm_SET},
  xe_CUT1 in '..\src\CUT\xe_CUT1.pas' {Frm_CUT1},
  xe_JON057 in '..\src\JON\xe_JON057.pas' {Frm_JON057},
  xe_JON58 in '..\src\JON\xe_JON58.pas' {Frm_JON58},
  xe_JON30S in '..\src\JON\xe_JON30S.pas' {Frm_JON30S},
  xe_WOR19 in '..\src\WOR\xe_WOR19.pas' {Frm_WOR19},
  xe_AdminMap01 in '..\src\COM\xe_AdminMap01.pas' {Frm_AdminMap01},
  xe_JON59 in '..\src\JON\xe_JON59.pas' {frm_JON59},
  xe_UpdateBox in '..\src\COM\xe_UpdateBox.pas' {Frm_UpdateBox},
  xe_xml in '..\src\LIB\xe_xml.pas',
  xe_JON016 in '..\src\JON\xe_JON016.pas' {Frm_JON016},
  xe_COM40 in '..\src\COM\xe_COM40.pas' {Frm_COM40},
  xe_CUT in '..\src\CUT\xe_CUT.pas' {Frm_CUT},
  xe_MessageBox in '..\src\COM\xe_MessageBox.pas' {frm_MessageBox},
  uEucKrCode in '..\src\LIB\uEucKrCode.pas',
  uSMBIOS in '..\src\LIB\uSMBIOS.pas',
  xe_SET08 in '..\src\SET\xe_SET08.pas' {Frm_SET08},
  xe_ShuttleMap in '..\src\COM\xe_ShuttleMap.pas' {frm_ShuttleMap},
  xe_WOR20 in '..\src\WOR\xe_WOR20.pas' {Frm_WOR20},
  CidXeLib in '..\src\LIB\CidXeLib.pas',
  xe_Naver in '..\src\JON\xe_Naver.pas' {Frm_Naver},
  CidSi415Lib in '..\src\LIB\CidSi415Lib.pas',
  xe_JON08 in '..\src\JON\xe_JON08.pas' {Frm_JON08},
  xe_JON60 in '..\src\JON\xe_JON60.pas' {frm_JON60},
  xe_JON60LBSThread in '..\src\LIB\xe_JON60LBSThread.pas' {$R *.res},
  xe_JON01WNThread in '..\src\LIB\xe_JON01WNThread.pas' {$R *.res},
  xe_Media_1 in '..\src\COM\xe_Media_1.pas' {frm_Media_1},
  xe_Media_2 in '..\src\COM\xe_Media_2.pas' {frm_Media_2},
  xe_ShuttleMap_New in '..\src\COM\xe_ShuttleMap_New.pas' {frm_ShuttleMap_New},
  xe_WOR21 in '..\src\WOR\xe_WOR21.pas' {Frm_WOR21},
  xe_JON03PLAYThread in '..\src\LIB\xe_JON03PLAYThread.pas',
  xe_WOR22 in '..\src\WOR\xe_WOR22.pas' {Frm_WOR22},
  xe_WOR23 in '..\src\WOR\xe_WOR23.pas' {frm_WOR23},
  xe_JON61 in '..\src\JON\xe_JON61.pas' {frm_JON61},
  xe_WOR24 in '..\src\WOR\xe_WOR24.pas' {frm_WOR24},
  xe_JON62 in '..\src\JON\xe_JON62.pas' {Frm_JON62},
  xe_Jon03_01 in '..\src\JON\xe_Jon03_01.pas' {Frm_JON03_01},
  xe_JON01N in '..\src\JON\xe_JON01N.pas' {Frm_JON01N},
  xe_AIC10 in '..\src\AIC\xe_AIC10.pas' {frm_AIC10},
  xe_BTN in '..\src\BTN\xe_BTN.pas' {Frm_BTN},
  xe_BTN01 in '..\src\BTN\xe_BTN01.pas' {frm_BTN01},
  xe_BTN02 in '..\src\BTN\xe_BTN02.pas' {frm_BTN02},
  xe_BTN03 in '..\src\BTN\xe_BTN03.pas' {frm_BTN03},
  xe_CMP011 in '..\src\CMP\xe_CMP011.pas' {Frm_CMP011},
  xe_JON01_01 in '..\src\JON\xe_JON01_01.pas' {Frm_JON01_01},
  xe_STT_Shuttle in '..\src\STT\xe_STT_Shuttle.pas' {Frm_STT_Shuttle},
  xe_PBX in '..\src\PBX\xe_PBX.pas' {frm_PBX},
  xe_PBX01 in '..\src\PBX\xe_PBX01.pas' {frm_PBX01},
  xe_PBX02 in '..\src\PBX\xe_PBX02.pas' {frm_PBX02},
  xe_PBX05 in '..\src\PBX\xe_PBX05.pas' {frm_PBX05},
  xe_PBX06 in '..\src\PBX\xe_PBX06.pas' {frm_PBX06},
  xe_PBX08 in '..\src\PBX\xe_PBX08.pas' {frm_PBX08},
  xe_USR in '..\src\USR\xe_USR.pas' {Frm_USR},
  xe_USR10 in '..\src\USR\xe_USR10.pas' {Frm_USR10},
  xe_STT in '..\src\STT\xe_STT.pas' {Frm_STT},
  xe_STT01 in '..\src\STT\xe_STT01.pas' {Frm_STT01},
  xe_ACC in '..\src\ACC\xe_ACC.pas' {Frm_ACC},
  xe_ACC01 in '..\src\ACC\xe_ACC01.pas' {Frm_ACC01},
  xe_ACC1 in '..\src\ACC\xe_ACC1.pas' {Frm_ACC1},
  xe_ACC02 in '..\src\ACC\xe_ACC02.pas' {Frm_ACC02},
  xe_ACC03 in '..\src\ACC\xe_ACC03.pas' {Frm_ACC03},
  xe_ACC04 in '..\src\ACC\xe_ACC04.pas' {Frm_ACC04},
  xe_ACC05 in '..\src\ACC\xe_ACC05.pas' {Frm_ACC05},
  xe_ACC06 in '..\src\ACC\xe_ACC06.pas' {Frm_ACC06},
  xe_ACC07 in '..\src\ACC\xe_ACC07.pas' {Frm_ACC07},
  xe_ACC10 in '..\src\ACC\xe_ACC10.pas' {Frm_ACC10},
  xe_AIC01 in '..\src\AIC\xe_AIC01.pas' {frm_AIC01},
  xe_AIC02 in '..\src\AIC\xe_AIC02.pas' {frm_AIC02},
  xe_AIC09 in '..\src\AIC\xe_AIC09.pas' {frm_AIC09},
  xe_AIC11 in '..\src\AIC\xe_AIC11.pas' {frm_AIC11},
  xe_AIC12 in '..\src\AIC\xe_AIC12.pas' {frm_AIC12},
  xe_AIC13 in '..\src\AIC\xe_AIC13.pas' {frm_AIC13},
  xe_AIC21 in '..\src\AIC\xe_AIC21.pas' {frm_AIC21},
  xe_APP in '..\src\APP\xe_APP.pas' {Frm_APP},
  xe_APP01 in '..\src\APP\xe_APP01.pas' {Frm_APP01},
  xe_CMP in '..\src\CMP\xe_CMP.pas' {Frm_CMP},
  xe_CMP01 in '..\src\CMP\xe_CMP01.pas' {Frm_CMP01},
  xe_CMP012 in '..\src\CMP\xe_CMP012.pas' {Frm_CMP012},
  xe_CMP013 in '..\src\CMP\xe_CMP013.pas' {Frm_CMP013},
  xe_CMP014 in '..\src\CMP\xe_CMP014.pas' {Frm_CMP014},
  xe_CMP015 in '..\src\CMP\xe_CMP015.pas' {Frm_CMP015},
  xe_CMP016 in '..\src\CMP\xe_CMP016.pas' {Frm_CMP016},
  xe_CMP017 in '..\src\CMP\xe_CMP017.pas' {Frm_CMP017},
  xe_JON63 in '..\src\JON\xe_JON63.pas' {Frm_JON63},
  xe_JON34 in '..\src\JON\xe_JON34.pas' {Frm_JON34},
  xe_JON36 in '..\src\JON\xe_JON36.pas' {Frm_JON36},
  xe_progress in '..\src\LIB\xe_progress.pas' {Frm_progress},
  xe_COM12 in '..\src\COM\xe_COM12.pas' {Frm_COM12},
  xe_JON00 in '..\src\JON\xe_JON00.pas' {Frm_JON00},
  xe_COM60 in '..\src\COM\xe_COM60.pas' {frm_COM60},
  xe_agentCfg in '..\src\LIB\xe_agentCfg.pas',
  xe_JON013 in '..\src\JON\xe_JON013.pas' {Frm_JON013},
  xe_JON17 in '..\src\JON\xe_JON17.pas' {frm_JON17},
  xe_SET01 in '..\src\SET\xe_SET01.pas' {Frm_SET01},
  xe_SET02 in '..\src\SET\xe_SET02.pas' {Frm_SET02},
  xe_SET03 in '..\src\SET\xe_SET03.pas' {Frm_SET03},
  xe_SET04 in '..\src\SET\xe_SET04.pas' {Frm_SET04},
  xe_JON021 in '..\src\JON\xe_JON021.pas' {frm_JON021},
  xe_JON05 in '..\src\JON\xe_JON05.pas' {Frm_JON05},
  xe_JON05_1 in '..\src\JON\xe_JON05_1.pas' {Frm_JON05_1},
  xe_RoadAddr in '..\src\COM\xe_RoadAddr.pas' {frm_RoadAddr},
  xe_CMP02 in '..\src\CMP\xe_CMP02.pas' {frm_CMP02};

{$R *.res}

var
  sExeFileName: string;
  hMutex, hMutex2, hMutex2009 : THandle;
  seFile: TIniFile;
begin
  gs_SysPath := SystemFolderRead + '\';

  GS_APPNAME := '콜라인';
  GB_CallLine := True;
  // 프로그램 실행시 System 경로 저장 변수.
  Application.Title := GS_APPNAME;
//  Application.MainFormOnTaskbar := True;   // TaskBar 숨김
  sExeFileName := EXtractFileName(Application.ExeName); //

  // --------------------------------------------------------------------------
  // 기본 디렉토리 경로 지정.
  EXECDIRECTORY := ExtractFilePath(Application.ExeName);
	WORKDRIVE := EXECDIRECTORY + 'WkImages\';
	OSHOTDRIVE := EXECDIRECTORY + 'MMSImages\';
	SOUNDDIRECTORY := EXECDIRECTORY + 'Sound\'; // 2013.04.20 khs
  WINTEMPDIRECTORY := 'C:\Windows\Temp\';

  // --------------------------------------------------------------------------
  // IMAGEDIRECTORY := EXECDIRECTORY + 'IMAGES\';     // 임시 미사용으로 주석만 처리함. 20080812.
  HELPDIRECTORY := EXECDIRECTORY + 'HELP\';
	LOGDATADIRECTORY := EXECDIRECTORY + 'LOG\';
  LOGDATAPATHFILE := LOGDATADIRECTORY + GetDateTime('yyyy-mm-dd') + '.log';
  NEWLOGDATAPATHFILE := LOGDATADIRECTORY + FormatDateTime('yyyy-mm-dd_hhmm', Now) + '.log';
  CallInsertFILE := LOGDATADIRECTORY + 'Insert.log';
  CallDeleteFILE := LOGDATADIRECTORY + 'Delete.log';
  CallUpdateFILE := LOGDATADIRECTORY + 'Update.log';
  CIDLOGPATHFILE := LOGDATADIRECTORY + 'CIDLOGXEA.log';
  CIDLOGPATHFILE1 := LOGDATADIRECTORY + 'CIDLOGORGXEA.log';
  STANDFUNCPATHFILE := EXECDIRECTORY + 'stdfc.dll';
  XMLDIRECTORY := EXECDIRECTORY + 'XMLDOC\';
  ENVPATHFILE := EXECDIRECTORY + ENVFILENAME;
  DBDIRECTORY := EXECDIRECTORY + 'DATABASE\';
  DRVCHARGEPATH := EXECDIRECTORY + 'DATABASE\' + DRIVERCHARGE;
	WKDATAPATHFILE  := LOGDATADIRECTORY + 'wkLog.wk';
	LOGIPCCSDATAPATHFILE := LOGDATADIRECTORY + 'IPCCS_' + GetDateTime('yyyy-mm-dd') + '.log';
  HEARTLOGPATHFILE := LOGDATADIRECTORY + 'HB_' + GetDateTime('yyyy-mm-dd') + '.log';
	
  // --------------------------------------------------------------------------

  try
    seFile := TIniFile.Create(ENVPATHFILE);
    GS_FONTNAME := seFile.ReadString('GER', 'FONT_NAME', '굴림');

    GB_FIRSTMODE := Not seFile.ValueExists('GER', 'DARK_MODE');
    GB_DARKMODE := seFile.ReadBool('GER', 'DARK_MODE', False);
  finally
    FreeAndNil(seFile);
  end;

  //BDE다중연결을 위하여 설치경로의 DLL은 사용안함 2018.01.16 KHS
  if FileExists(EXECDIRECTORY+'idapi32.dll') then
    DeleteFile(PChar(EXECDIRECTORY+'idapi32.dll'));

  // 프로그램 듀얼 메인 여부 읽기.  2011.06.17 add.
  try
    seFile := TIniFile.Create(ENVPATHFILE);
    GT_PRG_DUAL_MAIN := StrTointDef(seFile.ReadString('GER', 'PRG_DUAL_MAIN', '0'), 0);
    if GT_PRG_DUAL_MAIN = 0 then
    begin
      // [MAIN] 프로그램 실행여부 판단한다.
      hMutex := OpenMutex(MUTEX_ALL_ACCESS, FALSE, 'CMNAGTXE');
    end else
    begin
      // [SUB] 프로그램 실행여부 판단한다.
      hMutex := OpenMutex(MUTEX_ALL_ACCESS, FALSE, 'CMNAGTXESUB');
    end;
  finally
    FreeAndNil(seFile);
  end;

//  Log('1. GT_PRG_DUAL_MAIN : ' + IntToStr(GT_PRG_DUAL_MAIN) + ' Mutex : ' + IntToStr(hMutex), LOGDATAPATHFILE);

  try
    if hMutex <> 0 then
    begin
      GS_EXEC_GUBUN := 0; // 신버전 사용 불가.
    end else
    begin
      GS_EXEC_GUBUN := 1; // 신버전 사용 가능.

      if GT_PRG_DUAL_MAIN = 0 then
      begin
        // 프로그램 실행여부 판단한다.
        hMutex2 := CreateMutex(nil, FALSE, 'CMNAGTXE'); // 중복 실행 방지.
      end else
      begin
        // 프로그램 실행여부 판단한다.
        hMutex2 := CreateMutex(nil, FALSE, 'CMNAGTXESUB'); // 중복 실행 방지.
      end;

      if (hMutex2 < 1) then
      begin
        MessageDlg('콜마너 XE 프로그램 초기화(Mutex) 에러! 프로그램 사용 가능하나 중복실행은 불가함!', mtInformation, [mbYes], 0);
      end;
    end;
  finally
  end;

//  Log('2. GT_PRG_DUAL_MAIN : ' + IntToStr(GT_PRG_DUAL_MAIN) + ' GS_EXEC_GUBUN : ' + IntToStr(GS_EXEC_GUBUN), LOGDATAPATHFILE);

  // 구버전 실행 여부에 따라 기능 제한.  2014.04.25 add.
  try
    if GT_PRG_DUAL_MAIN = 0 then
    begin
      // [MAIN] 프로그램 실행여부 판단한다.
      hMutex2009 := OpenMutex(MUTEX_ALL_ACCESS, FALSE, 'CMNAGTMN2009');
    end else
    begin
      // [SUB] 프로그램 실행여부 판단한다.
      hMutex2009 := OpenMutex(MUTEX_ALL_ACCESS, FALSE, 'CMNAGT2009SUB');
    end;

    if (hMutex2009 <> 0) then
    begin
      MessageDlg(PChar('콜마너 구버전 프로그램 실행중으로 인해 콜마너 XE 프로그램 사용 가능하나 CID 및 요금 조회 불가함!'), mtInformation, [mbYes], 0);
      GT_PRG_DUAL_MAIN := 2;
    end;

		fGetNaverAddress_cloud('', ''); // https 처음 실행시 로딩시간 2초 걸리는거 먼저 처리
  finally
		FreeAndNil(seFile);
  end;

//  Log('3. GT_PRG_DUAL_MAIN : ' + IntToStr(GT_PRG_DUAL_MAIN) + ' GS_EXEC_GUBUN : ' + IntToStr(GS_EXEC_GUBUN), LOGDATAPATHFILE);

	// 방화벽 목록에 등록을 한다.
	if Not AddExceptionToFirewall('CMNAGTXE', EXECDIRECTORY + sExeFileName) then
			SetFireWall(EXECDIRECTORY + sExeFileName, 'CMNAGTXE', True);

//  if FileExists(gs_SysPath + 'SmartSRX.dll') then
//    WinExec(PAnsiChar(AnsiString('regsvr32 ' + gs_SysPath + 'SmartSRX.dll')), SW_HIDE);

  try
    Application.Initialize;
    Application.CreateForm(Tdm, dm);
  Application.CreateForm(TdmCharge, dmCharge);
  Application.CreateForm(TFrm_Main, Frm_Main);
  //      Application.CreateForm(TFrm_JON01N, Frm_Main.Frm_JON01N[0]);
//    Application.CreateForm(TFrm_JON01N, Frm_Main.Frm_JON01N[1]);
//    Application.CreateForm(TFrm_JON01N, Frm_Main.Frm_JON01N[2]);
  except
    on E: Exception do
    begin
      OutputDebugString(PChar(E.Message));
      if FileExists(ParamStr(0) + 'regins.bat') then
        WinExec(PAnsiChar(AnsiString(ParamStr(0) + 'regins.bat')), SW_HIDE);
    end;
  end;

  try
    Application.Run;
  except
    on E: Exception do
      OutputDebugString(PChar(E.Message));
  end;

end.


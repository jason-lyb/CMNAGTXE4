unit xe_progress;

interface

uses
  Windows, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, cxControls, cxContainer, cxEdit,
  Vcl.ExtCtrls, cxProgressBar, Vcl.StdCtrls, cxButtons, dxGDIPlusClasses, Vcl.Controls, System.Classes,
  //-------------
  Messages, SysUtils, Forms, Dialogs, IniFiles, Xe_func, MSXML2_TLB, DCPmd5, DCPblowfish, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark,
  dxSkinOffice2007Silver;

type
  //==================================================
  TEncryptType = (etBlowfish = 100);
  {#############################################################################################################################}
  {  최종사용 구조체 선언 End.                                                                                                  }
  {#############################################################################################################################}

  TFrm_progress = class(TForm)
    pnl_Client: TPanel;
    tmr_Initialization: TTimer;
    Label1: TLabel;
    btn_Close: TcxButton;
    lblDesc: TLabel;
    tmr_List: TTimer;
    tmr_progress: TTimer;
    ImgXE4: TImage;
    pbProgress: TcxProgressBar;
    img365S: TImage;
    imgcLine: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tmr_InitializationTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tmr_progressTimer(Sender: TObject);
    procedure tmr_ListTimer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    gs_Mode_Bef, gs_Mode_Aft, gs_Time: integer; // 요청중인 모드
    procedure Proc_KeyNumber_List_Insert(ss_XML: WideString);
    procedure Proc_LoginData_List(ss_Gubun: Integer);
    procedure Proc_CrBrData_List;
    procedure Proc_CrBrData_Insert(ss_XML: WideString);
    procedure Proc_WibroLog;
    procedure Proc_Ending(ss_Gubun: Boolean);
    procedure proc_recieve(ss_XML: WideString);
    procedure proc_Global_Config;
		procedure Proc_Area_Driver_Charge(fileVersion: string);
		procedure Proc_BEANCH_ORDER_COLOR(fileVersion: string);
		procedure Proc_Area_ChargeList;
    procedure proc_Get_POIChNmList;
  public
    { Public declarations }
    GS_GUBUN: Integer;

    // 출,도착지 지역정보 기본세팅 작업. CDS.
		procedure MAP_DataSortAndIns(bDefault: Boolean);
		procedure MapDataSttRec_Offset_Create_Final_decode;

    function  locDecrypt(const APath: string; var AData: string): Boolean;
    function  locBlowFishDecrypt(AKey: string; outData: PAnsiChar; ALength: Integer): string;

		procedure locLoadFile_Decrypt(const APath: string; var OData : Ansistring);
    procedure Proc_Process; // 지역데이터 로드
    procedure proc_CXELogUpload;
  end;

var
  Frm_progress: TFrm_progress;

implementation

{$R *.dfm}

uses xe_GNL, xe_Dm, xe_gnl2, xe_Msg, Main, FastStringFuncs, xe_Login, xe_gnl3,
     xe_packet, xe_xml, xe_Query, xe_Jon03, xe_CidSvrSel, xe_Lib,
  xe_charge, xe_AllShot, xe_JON52, uEucKrCode;

procedure TFrm_progress.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_progress.Proc_Process;
type
  Tfunc = function(ss_Gucun: AnsiString): PAnsiChar; stdcall;
var
  i, li_cnt, city_cnt, city_num: Integer;
  lh_Handel: HWND;
  Myfunc: Tfunc;
  ls_PathFile: string;
  sl_City, sl_ger_city : TStringList;
  Map_ini: TInifile;
begin
  SetDebugeWrite('Frm_progress.Proc_Process');

  Screen.Cursor := crHourGlass;
  try
    try
      Map_ini := TIniFile.Create(ENVPATHFILE);
      sl_City := TStringList.Create;
      sl_City.Clear;
      sl_ger_city := TStringList.Create;
      sl_ger_city.Clear;
      sl_ger_city.Add('서울');
      sl_ger_city.Add('경기');
      sl_ger_city.Add('인천');
      sl_ger_city.Add('대전');
      sl_ger_city.Add('충남');
      sl_ger_city.Add('충북');
      sl_ger_city.Add('강원');
      sl_ger_city.Add('대구');
      sl_ger_city.Add('경북');
      sl_ger_city.Add('부산');
      sl_ger_city.Add('울산');
      sl_ger_city.Add('경남');
      sl_ger_city.Add('전북');
      sl_ger_city.Add('광주');
      sl_ger_city.Add('전남');
      sl_ger_city.Add('제주');

      Map_ini.ReadSection('LocalMap', sl_City);
      if sl_City.Count = 0 then
      begin
        case StrToIntDef(GT_USERIF.SA, 0) of
          0:
            begin
              sl_City.Add('서울');
              sl_City.Add('경기');
              sl_City.Add('인천');
              sl_City.Add('대전');
              sl_City.Add('충남');
              sl_City.Add('충북');
              sl_City.Add('강원');
              sl_City.Add('대구');
              sl_City.Add('경북');
              sl_City.Add('부산');
              sl_City.Add('울산');
              sl_City.Add('경남');
              sl_City.Add('전북');
              sl_City.Add('광주');
              sl_City.Add('전남');
              sl_City.Add('제주');
            end;
          1:
            begin
              sl_City.Add('서울');
              sl_City.Add('경기');
              sl_City.Add('인천');
            end;
          2:
            begin
              sl_City.Add('대전');
              sl_City.Add('충남');
              sl_City.Add('충북');
            end;
          4:
            begin
              sl_City.Add('강원');
            end;
          5:
            begin
              sl_City.Add('대구');
              sl_City.Add('경북');
            end;
          6:
            begin
              sl_City.Add('부산');
              sl_City.Add('울산');
              sl_City.Add('경남');
            end;
          8:
            begin
              sl_City.Add('전북');
              sl_City.Add('광주');
              sl_City.Add('전남');
            end;
          9:
            begin
              sl_City.Add('제주');
            end;
        end;
      end;

      // 로컬에 설정된 MAP 순서 정보를 읽어서 저장한다.[출,도착지 지역정보 검색시 이용]
      slstLocalMapOrder.Assign(sl_city);

      // 프로그램 듀얼 메인.
      if (GT_PRG_DUAL_MAIN = 0) then
      begin
        // Map Dll 파일의 버전을 확인 한다.
        if (gb_MapSet = False) then
        begin //파일존재여부검색
          gb_MapSet := True;
        end;
      end else
      begin
        // 프로그램 듀얼 서브.
        // Map Dll 파일의 버전을 확인 한다.
        if (gb_MapSet = False) then
        begin //파일존재여부검색
          gb_MapSet := True;
        end;
      end;

      // 환경설정 화면에서 지역설정 버튼 클릭하면[gb_MapSet = True] 설정파일 체크 안함.  CDS.
      if (gb_MapSet) then
      begin
        lh_Handel := INVALID_HANDLE_VALUE;

        if Area_CenterName = '' then
        begin
          if sl_city.Strings[0] = '서울' then
          begin
            Main_map_Lat := '037335972';
            Main_map_Lon := '126584124';
          end else
          if sl_city.Strings[0] = '경기' then
          begin
            Main_map_Lat := '037162868';
            Main_map_Lon := '127003384';
          end else
          if sl_city.Strings[0] = '인천' then
          begin
            Main_map_Lat := '037272237';
            Main_map_Lon := '126421859';
          end else
          if sl_city.Strings[0] = '대전' then
          begin
            Main_map_Lat := '036210018';
            Main_map_Lon := '127230373';
          end else
          if sl_city.Strings[0] = '충남' then
          begin
            Main_map_Lat := '036193569';
            Main_map_Lon := '127251542';
          end else
          if sl_city.Strings[0] = '충북' then
          begin
            Main_map_Lat := '036380724';
            Main_map_Lon := '127292926';
          end else
          if sl_city.Strings[0] = '강원' then
          begin
            Main_map_Lat := '037530746';
            Main_map_Lon := '127434701';
          end else
          if sl_city.Strings[0] = '대구' then
          begin
            Main_map_Lat := '035521727';
            Main_map_Lon := '128360617';
          end else
          if sl_city.Strings[0] = '경북' then
          begin
            Main_map_Lat := '035533286';
            Main_map_Lon := '128360266';
          end else
          if sl_city.Strings[0] = '부산' then
          begin
            Main_map_Lat := '035104877';
            Main_map_Lon := '129042951';
          end else
          if sl_city.Strings[0] = '울산' then
          begin
            Main_map_Lat := '035321845';
            Main_map_Lon := '129184088';
          end else
          if sl_city.Strings[0] = '경남' then
          begin
            Main_map_Lat := '035141584';
            Main_map_Lon := '128413074';
          end else
          if sl_city.Strings[0] = '전북' then
          begin
            Main_map_Lat := '035491354';
            Main_map_Lon := '127063413';
          end else
          if sl_city.Strings[0] = '광주' then
          begin
            Main_map_Lat := '035093673';
            Main_map_Lon := '126510563';
          end else
          if sl_city.Strings[0] = '전남' then
          begin
            Main_map_Lat := '034485794';
            Main_map_Lon := '126274619';
          end else
          if sl_city.Strings[0] = '제주' then
          begin
            Main_map_Lat := '033292072';
            Main_map_Lon := '126295422';
          end else
          begin
            Main_map_Lat := '037335972';
            Main_map_Lon := '126584124';
          end;
        end;
        if (Area_CenterLat = '') or (Length(Area_CenterLat) < 9) or (Area_CenterLon = '') or (Length(Area_CenterLon) < 9) then
        begin
          Area_CenterLat := Main_map_Lat;
          Area_CenterLon := Main_map_Lon;
        end;

        /////////////////////////////////////////신규맵데이터///////////////////////////////////////
        MapDataSttRec_Offset_Create_Final_decode;
        /////////////////////////////////////////신규맵데이터///////////////////////////////////////

        /////////////////////////////////////////시도, 시군구, 읍면//동 배열입력 2012.05.15 KHS///////////////////////////////////////
        i := 0;
				while Not Eof(mAdd) do      // 20130614  LYB
        begin
          // DataFile Search.
          try
            Seek( mAdd, i );
            Read( mAdd, madr );
          except
            on e : exception do
            begin
              if i < 6500 then
              begin
                ShowMessage('지역데이터 설정 중 에러가 발생 하였습니다.(madr)' + #13#10 + e.Message);
                break;
              end
              else
                break;    // 에러 발생시 brack;
            end;
          end;

          if (Trim(madr.sA_City) <> '') then
          begin
            GT_MAPOrigi.slCity.Add(madr.sA_City);
            GT_MAPOrigi.slWard.Add(madr.sA_Ward + madr.sA_Ward2);
            GT_MAPOrigi.slStre.Add(madr.sA_Street);
            GT_MAPOrigi.slStre_RI.Add(madr.sA_Street + madr.sA_Stree2);
          end;
          inc(i);
        end;

        //---------------------------------------------------------------------- 구주소자료 Loding

        i := 0;
				while Not Eof(mOAdd) do
        begin
          try
            Seek( mOAdd, i );
            Read( mOAdd, madr );
          except
            on e : exception do
            begin
              if i < 500 then
              begin
                break;
              end
              else
                break;    // 에러 발생시 brack;
            end;
          end;

          if (Trim(madr.sA_City) <> '') then
          begin
            GT_MAPOld.slCity.Add(madr.sA_City);
            GT_MAPOld.slWard.Add(madr.sA_Ward + madr.sA_Ward2);
            GT_MAPOld.slStre.Add(madr.sA_Street);
            GT_MAPOld.slStre_RI.Add(madr.sA_Street + madr.sA_Stree2);
          end;
          inc(i);
        end;
        /////////////////////////////////////////시도, 시군구, 읍면//동 배열입력 2012.05.15 KHS///////////////////////////////////////

        ///////////////////////////////////////////////맵데이터 입력/////////////////////
        Label1.Caption := '( 0 / ' + IntToStr(sl_city.Count) + ' )';
        for city_cnt := 0 to sl_city.Count - 1 do
        begin
          Label1.Caption := Format('( %d / %d )', [city_cnt + 1, sl_City.Count]);
          Application.ProcessMessages;
          city_num := sl_ger_city.IndexOf(sl_city.Strings[city_cnt]) + 1;
          ls_PathFile := EXECDIRECTORY + 'dt\' + 'area' + IntToStr(city_num) + '.dll';
          if FileExists(ls_PathFile) then
          begin
            lh_Handel := LoadLibrary(PChar(ls_PathFile));
            if lh_Handel < 32 then
              Exit;
          end
          else
            continue;

         @Myfunc := GetprocAddress(lh_Handel, 'LoadData');
          if (@Myfunc = nil) then
          begin
            GMessagebox(MSG424 + CRLF + MSG425, CDMSE);
            Exit;
          end;

          li_cnt := StrToIntDef(StrPas(Myfunc('COUNT')), 0);
          FreeLibrary(lh_Handel);
        end;
      end else
      begin
        Label1.Caption := '[지역정보 초기화 중입니다.]';
      end;
    finally
      sl_City.Free;
      sl_ger_city.Free;
      FreeAndNil(Map_ini);
    end;
  except on E: Exception do
    ShowMessage(Format('지역정보 초기화 중 오류 발생[오류:%s]', [E.Message]));
  end;

  try
    Screen.Cursor := crHourGlass;
    pbProgress.Visible := False;
    Label1.Caption := '지역 정보 최적화 작업 중 입니다.';
    Application.ProcessMessages;

    // 환경설정 화면에서 지역설정 버튼 클릭하면[gb_MapSet = True] 설정파일 체크 안함.  CDS.
    if (GT_PRG_DUAL_MAIN = 0) and (gb_MapSet = False) and (FileExists(gs_SysPath + 'm4d6.y') = True) then
    begin //파일존재여부검색
      // [설정파일 있음]출,도착지 지역정보 정렬 및 기본세팅 작업. CDS.
      MAP_DataSortAndIns(True);
    end else
    if (GT_PRG_DUAL_MAIN = 1) and (gb_MapSet = False) and (FileExists(gs_SysPath + 'na46.n') = True) then
    begin //파일존재여부검색
      // [설정파일 있음]출,도착지 지역정보 정렬 및 기본세팅 작업. CDS.
      MAP_DataSortAndIns(True);
    end else
    begin
      // [설정파일 없음]출,도착지 지역정보 정렬 및 기본세팅 작업. CDS.
      MAP_DataSortAndIns(False);
      gb_MapSet := False; // 변수 초기화.
    end;
  except on E: Exception do
     Log(Format('지역정보 최적화 작업중 오류 발생[오류:%s]', [E.Message]), LOGDATADIRECTORY + 'log.txt');
  end;

  try
    if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
    begin
      Label1.Caption := 'MySQL 요금제 속도 개선 작업 중입니다';
      Application.ProcessMessages;
      SVRAUTOINCREMENT_CREATE;  //20120717 LYB 추가
    end;

    Screen.Cursor := crDefault;
  except on E: Exception do
     Log(Format('MySQL 요금제 속도 개선 작업 중 오류 발생[오류:%s]', [E.Message]), LOGDATADIRECTORY + 'log.txt');
  end;

//  if GS_Gubun = 10 then
//    tmr_List.Enabled := True
//  else
//    Close;
end;

// 출,도착지 지역정보 기본세팅 작업. CDS.
procedure TFrm_progress.MAP_DataSortAndIns(bDefault: Boolean);
var
  slTmp, slTmp2, saveString : TStringList;
	i, sCnt, rCnt, pCnt, iCnt : Integer;
	sQuery, sDate, sString : string;
  Param, ErrMsg: string;
  ErrCode: Integer;
begin
	Label1.Caption := '지역 정보 최적화 작업 중 입니다.';
	
	if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
	begin
		Case GS_LOCALDATA_USE of
			0:
			begin
				proc_CServer_LOCALtoList; //전체사용
			end;
			1:
			begin
				proc_LocalTOLocallist; //로컬데이터를 메모리에 올린다.
			end;
			2:
			begin
				proc_CServerTOLocallist; //MySQL데이터를 메모리에 올린다.
			end;
		end;
	end else
  if (CHARGE_GUBUN = 'P') then
	begin
		proc_LocalTOLocallist; //로컬데이터를 메모리에 올린다.
	end;

  try
	    slTmp2 := TStringList.Create;
	    slTmp := TStringList.Create;

	    // 사용자 직접 입력 정보 저장  [LOCAL_MAP_NEW.DAT] 파일은 없을 수도 있음.
	    if (FileExists(DBDIRECTORY + 'LOCAL_MAP_NEW.DAT') = True) then
	    begin //파일존재여부검색
	    	try
	    		try
	    			slTmp2.LoadFromFile(DBDIRECTORY + 'LOCAL_MAP_NEW.DAT');
	    			// data insert [사용자 직접 입력 정보 저장]   // 사용자 직접 입력 정보 저장
	    			saveString  := TStringList.Create;
	    			//배열갯수,순서 맞추기
	    			for i := 0 to slTmp2.Count - 1 do
            begin
              try
	    					GetTextSeperationEx('|', slTmp2[i], slTmp);
	    					//if copy(slTmp2[i],length(slTmp2[i]) - 3, 4 ) <> '|999' then
	    					//begin
	    					// 서울|중구|을지로|을지로입구|037335724|126585066
	    					// 서울|중구|을지로|을지로입구|인근POI|037335724|126585066|구분자
	    					//'서울|중구|태평로1가|서울특별시청||037335979|126584219|999'
	    		      //        slTmp := GetTextSeperation('|', slTmp2[i]);
	    					if (slTmp[0] <> '') and (slTmp[1] <> '') and (slTmp[2] <> '') then
	    					begin
	    						///////////// LocalData 배열내용 정리//////////////2012.07.30 KHS
	    						if slTmp.Count > 5 then
	    						begin
	    							if slTmp.Count = 6 then
	    							begin
	    								if copy(slTmp[5],1,2) = '12' then
	    								begin
	    									sString := slTmp[0] + '|' + slTmp[1] + '|' + slTmp[2] + '|' + slTmp[3] + '|' + '|' + slTmp[4] + '|' + slTmp[5] + '|' + slTmp[6];
	    								end;
	    							end
	    							else if slTmp.Count = 7 then
	    							begin
	    								if copy(slTmp[6],1,2) = '12' then
	    								begin
	    									sString := slTmp[0] + '|' + slTmp[1] + '|' + slTmp[2] + '|' + slTmp[3] + '|' + slTmp[4] + '|' + slTmp[5] + '|' + slTmp[6] + '|' + '999' ;
	    								end
	    							end
	    							else if slTmp.Count = 8 then
	    							begin
	    								sString := slTmp2[i];
	    							end;
	    							saveString.add(sString);
	    						end;
	    						///////////// LocalData 배열내용 정리//////////////2012.07.30 KHS
	    					end;
              except
              end;
            end;
	    			saveString.SaveToFile(DBDIRECTORY + 'LOCAL_MAP_NEW.DAT');
	    			slTmp2.Clear;
	    			slTmp.Clear;
            saveString.Clear;
          finally
            saveString.Free;
          end;

          if (CHARGE_GUBUN = 'L') then
  				begin
            slTmp2.LoadFromFile(DBDIRECTORY + 'LOCAL_MAP_NEW.DAT');
  	    		for i := 0 to slTmp2.Count - 1 do
  	    		begin
  	    			GetTextSeperationEx('|', slTmp2[i], slTmp);

  	    			// 로컬POI 자료 <> '999'가 아니면 로컬 동기화 처리
  	    			// 로컬POI자료를 서버 - 로컬 POI 자동 동기화하면 안된다고 함 - 영업팀에서 직접 처리 한다고 함  20130523 LYB 수정  - 정회귀팀장
  	    			// ------------------------------------------------
  	    			// ------------------------------------------------

  	    			GT_MAPLocal.slCity.Add(slTmp[0]);
  	    			GT_MAPLocal.slWard.Add(slTmp[1]);
  	    			GT_MAPLocal.slStre.Add(slTmp[2]);
  	    			GT_MAPLocal.slSSub.Add(slTmp[3]);
  	    			if Copy(slTmp[4],1,2) = '03' then
  	    			begin
  	    				GT_MAPLocal.slSPOI.Add('');
  	    				GT_MAPLocal.slMapX.Add(slTmp[4]);
  	    				GT_MAPLocal.slMapY.Add(slTmp[5]);
  	    			end else
  	    			begin
  	    				GT_MAPLocal.slSPOI.Add(slTmp[4]);
  	    				GT_MAPLocal.slMapX.Add(slTmp[5]);
  	    				GT_MAPLocal.slMapY.Add(slTmp[6]);
  	    			end;
  	    		end;
          end;
	    	finally
	    		slTmp2.Clear; // 초기화..
	    		slTmp.Clear;
	    	end;
      end;

      // mySQL 서버 POI를 콜마너 DB로 저장하는 구간
	    if ( (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') ) And ( Not GB_365System ) then
	    begin
//	    	proc_CServerTOLocallist;

	    	sQuery := 'select Count(*) pCnt from CDMS_LOCAL_POI where Sync <> ''U'' ';
	    	dmCharge.proc_mysql_init;
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
	    	dmCharge.FDQuery1.OPEN;

        pCnt := dmCharge.FDQuery1.Fields[0].AsInteger;
        if pCnt > 100 then
        begin
	    		for i := 0 to (pCnt div 100) do
	    		begin
	    			sQuery := 'UPDATE CDMS_LOCAL_POI SET Sync = ''' + IntToStr(i) +''' where (Sync <> ''U'') and (Sync = '''') limit 100';
            dmCharge.proc_mysql_init('update');
	    			dmCharge.FDQuery2.Close;
	    			dmCharge.FDQuery2.SQL.Text := sQuery;
	    			dmCharge.FDQuery2.ExecSQL;
          end;

	    		for i := 0 to (pCnt div 100) do
          begin
            sQuery := 'select * from CDMS_LOCAL_POI where Sync = ''' + IntToStr(i) + ''' ';
            dmCharge.proc_mysql_init;
            dmCharge.FDQuery1.Close;
            dmCharge.FDQuery1.SQL.Text := sQuery;
            dmCharge.FDQuery1.OPEN;
            rCnt := 0;
            Param := '';
	    			while not dmCharge.FDQuery1.Eof do
	    			begin
	    				if rCnt = 100 then break;
	    				Param := Param + dmCharge.FDQuery1.Fields[0].AsString + '│' + dmCharge.FDQuery1.Fields[1].AsString + '│' + dmCharge.FDQuery1.Fields[2].AsString + '│'
	    											 + dmCharge.FDQuery1.Fields[3].AsString + '│' + dmCharge.FDQuery1.Fields[4].AsString + '│' + dmCharge.FDQuery1.Fields[5].AsString + '│'
	    											 + dmCharge.FDQuery1.Fields[6].AsString + '│' + dmCharge.FDQuery1.Fields[7].AsString + '│' + dmCharge.FDQuery1.Fields[8].AsString + '│'
	    											 + dmCharge.FDQuery1.Fields[9].AsString + '│' + '0' + '│';
	    				inc(rCnt);

	    				dmCharge.FDQuery1.Next;
	    			end;
	    			if rCnt = 0 then Exit;
	    			Param := GT_USERIF.CT + '│' + '11'  + '│' +  IntToStr(rCnt) + '│' + Param;
	    			try
	    				if RequestBase(GetCallable05('SET_USER_LOCAL_MAP', 'CAS.SET_USER_LOCAL_MAP', En_Coding(Param)), ErrCode, ErrMsg) then
              begin
                if errcode = 0 then
                begin
                  sQuery := 'UPDATE CDMS_LOCAL_POI SET Sync = ''U'' WHERE Sync = ''' + IntToStr(i) +''' ';

	    						dmCharge.proc_mysql_init('update');
	    						dmCharge.FDQuery2.Close;
                  dmCharge.FDQuery2.SQL.Text := sQuery;
                  dmCharge.FDQuery2.ExecSQL;
                end;
              end;
            except
            end;
	    		end;
	    	end else
	    	if (pCnt > 0 ) and (pCnt < 101) then
        begin
          try
            sQuery := 'select * from CDMS_LOCAL_POI where Sync <> ''U'' ';
            dmCharge.proc_mysql_init;
            dmCharge.FDQuery1.Close;
            dmCharge.FDQuery1.SQL.Text := sQuery;
            dmCharge.FDQuery1.OPEN;
            rCnt := 0;
            Param := '';
            while not dmCharge.FDQuery1.Eof do
            begin
              Param := Param + dmCharge.FDQuery1.Fields[0].AsString + '│' + dmCharge.FDQuery1.Fields[1].AsString + '│' + dmCharge.FDQuery1.Fields[2].AsString + '│'
                             + dmCharge.FDQuery1.Fields[3].AsString + '│' + dmCharge.FDQuery1.Fields[4].AsString + '│' + dmCharge.FDQuery1.Fields[5].AsString + '│'
                             + dmCharge.FDQuery1.Fields[6].AsString + '│' + dmCharge.FDQuery1.Fields[7].AsString + '│' + dmCharge.FDQuery1.Fields[8].AsString + '│'
	    											 + dmCharge.FDQuery1.Fields[9].AsString + '│' + '0' + '│';
	    				inc(rCnt);
              dmCharge.FDQuery1.Next;
            end;
            if rCnt = 0 then Exit;
	    			Param := GT_USERIF.CT + '│' + '11'  + '│' +  IntToStr(rCnt) + '│' + Param;
            try
	    				if RequestBase(GetCallable05('SET_USER_LOCAL_MAP', 'CAS.SET_USER_LOCAL_MAP', En_Coding(Param)), ErrCode, ErrMsg) then
	    				begin
                if errcode = 0 then
                begin
	    						sQuery := 'UPDATE CDMS_LOCAL_POI SET Sync = ''U'' ';

                  dmCharge.proc_mysql_init('update');
                  dmCharge.FDQuery2.Close;
                  dmCharge.FDQuery2.SQL.Text := sQuery;
                  dmCharge.FDQuery2.ExecSQL;
                end;
              end;
            except
            end;
          except
          end;
        end;
	    end	else //로컬파일내용 업로드'1'
      if ( Not GB_365System ) then
	    begin
	    	// 사용자 직접 입력 정보 저장  [LOCAL_MAP_NEW.DAT] 파일은 없을 수도 있음.
	    	sDate := frm_main.func_sysdate;
	    	saveString  := TStringList.Create;
	    	if (FileExists(DBDIRECTORY + 'LOCAL_MAP_NEW.DAT') = True) then
	    	begin //파일존재여부검색
	    		try
	    			slTmp2.LoadFromFile(DBDIRECTORY + 'LOCAL_MAP_NEW.DAT');
	    			pCnt := slTmp2.Count;
	    			rCnt := 0;
	    			sCnt := 0;
	    			iCnt := 0;
	    			Param := '';
	    			if pCnt > 100 then
	    			begin
	    				while sCnt < slTmp2.Count -1 do
	    				begin
	    					GetTextSeperationEx('|', slTmp2[sCnt], slTmp);
	    					if (Trim(slTmp[0]) <> '') and (Trim(slTmp[1]) <> '') and (Trim(slTmp[2]) <> '') and
	    						 (Trim(slTmp[3]) <> '') and (Trim(slTmp[5]) <> '') and  (Trim(slTmp[6]) <> '') and (copy(slTmp[7],1,1) <> 'U') then
	    					begin
	    						Param := Param + slTmp[0] + '│' + slTmp[1] + '│' + slTmp[2] + '│' + slTmp[3] + '│' + slTmp[4] + '│' + slTmp[5] + '│' + slTmp[6] + '│'
	    													 + GT_USERIF.ID + '│' + GT_USERIF.NM + '│' + sDate + '│' + '1' + '│';
	    						inc(rCnt);
	    					end;

	    					inc(sCnt);
	    					if rCnt > 100 then
	    					begin
	    						Param := GT_USERIF.CT + '│' + '11'  + '│' +  IntToStr(rCnt) + '│' + Param;
	    						try
	    							if RequestBase(GetCallable05('SET_USER_LOCAL_MAP', 'CAS.SET_USER_LOCAL_MAP', En_Coding(Param)), ErrCode, ErrMsg) then
	    							begin
	    								if errcode = 0 then
	    								begin
	    								end;
	    							end;
	    						except
	    							//saveString.Free;
	    						end;
	    						rCnt := 0;
	    						inc(iCnt);
	    						Param := '';
	    					end;
	    				end;
	    				if (Param <> '') and (rCnt > 0) then
	    				begin
	    					Param := GT_USERIF.CT + '│' + '11'  + '│' +  IntToStr(rCnt) + '│' + Param;
	    					try
	    						if RequestBase(GetCallable05('SET_USER_LOCAL_MAP', 'CAS.SET_USER_LOCAL_MAP', En_Coding(Param)), ErrCode, ErrMsg) then
	    						begin
	    							if errcode = 0 then
	    							begin
	    							end;
	    						end;
	    					except
	    						//saveString.Free;
	    					end;
	    				end;
	    				slTmp2.clear;
	    				slTmp2.LoadFromFile(DBDIRECTORY + 'LOCAL_MAP_NEW.DAT');
	    				for i := 0 to slTmp2.Count -1 do
	    				begin
	    					//if (slTmp[0] <> '') and (slTmp[1] <> '') and (slTmp[2] <> '') and (slTmp[7] <> 'U') then
	    					saveString.add(StringReplace(slTmp2[i], '|999', '|U', [rfReplaceAll]))	;
	    				end;
	    				saveString.SaveToFile(DBDIRECTORY + 'LOCAL_MAP_NEW.DAT');
	    			end	else
            if (pCnt > 0 ) and (pCnt < 101) then
	    			begin
	    				for i := 0 to slTmp2.Count -1 do
	    				begin
	    					GetTextSeperationEx('|', slTmp2[i], slTmp);
	    					if (Trim(slTmp[0]) <> '') and (Trim(slTmp[1]) <> '') and (Trim(slTmp[2]) <> '') and
	    						 (Trim(slTmp[3]) <> '') and (Trim(slTmp[5]) <> '') and  (Trim(slTmp[6]) <> '') and (copy(slTmp[7],1,1) <> 'U') then
	    					begin
	    						Param := Param + slTmp[0] + '│' + slTmp[1] + '│' + slTmp[2] + '│' + slTmp[3] + '│' + slTmp[4] + '│' + slTmp[5] + '│' + slTmp[6] + '│'
	    													 + GT_USERIF.ID + '│' + GT_USERIF.NM + '│' + sDate + '│' + '1' + '│';
	    						inc(rCnt);
	    					end;
	    				end;
	    				if rCnt > 0 then
	    				begin
	    					Param := GT_USERIF.CT + '│' + '11'  + '│' +  IntToStr(rCnt) + '│' + Param;
	    					try
	    						if RequestBase(GetCallable05('SET_USER_LOCAL_MAP', 'CAS.SET_USER_LOCAL_MAP', En_Coding(Param)), ErrCode, ErrMsg) then
	    						begin
	    							if errcode = 0 then
	    							begin
	    								slTmp2.clear;
	    								slTmp2.LoadFromFile(DBDIRECTORY + 'LOCAL_MAP_NEW.DAT');
	    								for i := 0 to slTmp2.Count -1 do
	    								begin
	    									//if (slTmp[0] <> '') and (slTmp[1] <> '') and (slTmp[2] <> '') and (slTmp[7] <> 'U') then
	    									saveString.add(StringReplace(slTmp2[i], '|999', '|U', [rfReplaceAll]))	;
	    								end;
	    								saveString.SaveToFile(DBDIRECTORY + 'LOCAL_MAP_NEW.DAT');
	    							end;
	    						end;
	    					except
	    						saveString.Free;
	    					end;
	    				end;
	    			end;
	    		except
	    		end;
	    	end;
	    	saveString.Free;
	    end;
	    slTmp.Free;
      slTmp2.Free;
  except
    on e: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
  //////////////////서버올리기 끝////////////////////

  // =====================================================
  if bDefault = True then
  begin
    // 프로그램 듀얼 메인.
    try
      if (GT_PRG_DUAL_MAIN = 0) then
      begin
        // 기존 설정된 파일이 있으며, 그 파일에서 MAP 데이터를 읽어온다.
        // blowfish + md5 복호 처리. 2011.06.28
        if FileExists(gs_SysPath + 'm1d3.x') then
        begin
          GT_MAPOrigi.slCity.Text := Fnc_FileDecrypt_org(gs_SysPath + 'm4d1.x');
          GT_MAPOrigi.slWard.Text := Fnc_FileDecrypt_org(gs_SysPath + 'm4d2.x');
          GT_MAPOrigi.slStre.Text := Fnc_FileDecrypt_org(gs_SysPath + 'm4d3.x');
          GT_MAPOrigi.slSSub.Text := Fnc_FileDecrypt_org(gs_SysPath + 'm4d4.x');
          GT_MAPOrigi.slMapX.Text := Fnc_FileDecrypt_org(gs_SysPath + 'm4d5.x');
          GT_MAPOrigi.slMapY.Text := Fnc_FileDecrypt_org(gs_SysPath + 'm4d6.x');
          Application.ProcessMessages;
        end else
        if FileExists(gs_SysPath + 'm1d3.y') then
        begin
          //--------------------------------------------------
          GT_MAPOrigi.slCity.LoadFromFile(gs_SysPath + 'm4d1.y');
          GT_MAPOrigi.slWard.LoadFromFile(gs_SysPath + 'm4d2.y');
          GT_MAPOrigi.slStre.LoadFromFile(gs_SysPath + 'm4d3.y');
          GT_MAPOrigi.slSSub.LoadFromFile(gs_SysPath + 'm4d4.y');
          GT_MAPOrigi.slMapX.LoadFromFile(gs_SysPath + 'm4d5.y');
          GT_MAPOrigi.slMapY.LoadFromFile(gs_SysPath + 'm4d6.y');
          Application.ProcessMessages;
        end;

        if FileExists(gs_SysPath + 'm1d3.y') then
        begin
          try
            DeleteFile(gs_SysPath + 'm1d1.y');
            DeleteFile(gs_SysPath + 'm1d2.y');
            DeleteFile(gs_SysPath + 'm1d3.y');
            DeleteFile(gs_SysPath + 'm1d4.y');
            DeleteFile(gs_SysPath + 'm1d5.y');
            DeleteFile(gs_SysPath + 'm1d6.y');

            DeleteFile(gs_SysPath + 'm2d1.y');
            DeleteFile(gs_SysPath + 'm2d2.y');
            DeleteFile(gs_SysPath + 'm2d3.y');
            DeleteFile(gs_SysPath + 'm2d4.y');
            DeleteFile(gs_SysPath + 'm2d5.y');
            DeleteFile(gs_SysPath + 'm2d6.y');

            DeleteFile(gs_SysPath + 'm3d1.y');
            DeleteFile(gs_SysPath + 'm3d2.y');
            DeleteFile(gs_SysPath + 'm3d3.y');
            DeleteFile(gs_SysPath + 'm3d4.y');
            DeleteFile(gs_SysPath + 'm3d5.y');
            DeleteFile(gs_SysPath + 'm3d6.y');

            DeleteFile(gs_SysPath + 'm4d1.y');
            DeleteFile(gs_SysPath + 'm4d2.y');
            DeleteFile(gs_SysPath + 'm4d3.y');
            DeleteFile(gs_SysPath + 'm4d4.y');
            DeleteFile(gs_SysPath + 'm4d5.y');
            DeleteFile(gs_SysPath + 'm4d6.y');
          except
          end;
        end;
      end else
      // 프로그램 듀얼 서브.
      begin
        // 기존 설정된 파일이 있으며, 그 파일에서 MAP 데이터를 읽어온다.
        // blowfish + md5 복호 처리. 2011.06.28
        if FileExists(gs_SysPath + 'na13.a') then
        begin
          GT_MAPOrigi.slCity.Text := Fnc_FileDecrypt_org(gs_SysPath + 'na41.a');
          GT_MAPOrigi.slWard.Text := Fnc_FileDecrypt_org(gs_SysPath + 'na42.a');
          GT_MAPOrigi.slStre.Text := Fnc_FileDecrypt_org(gs_SysPath + 'na43.a');
          GT_MAPOrigi.slSSub.Text := Fnc_FileDecrypt_org(gs_SysPath + 'na44.a');
          GT_MAPOrigi.slMapX.Text := Fnc_FileDecrypt_org(gs_SysPath + 'na45.a');
          GT_MAPOrigi.slMapY.Text := Fnc_FileDecrypt_org(gs_SysPath + 'na46.a');
          Application.ProcessMessages;
        end;

        if FileExists(gs_SysPath + 'na13.n') then
        begin
          try
            DeleteFile(gs_SysPath + 'na11.n');
            DeleteFile(gs_SysPath + 'na12.n');
            DeleteFile(gs_SysPath + 'na13.n');
            DeleteFile(gs_SysPath + 'na14.n');
            DeleteFile(gs_SysPath + 'na15.n');
            DeleteFile(gs_SysPath + 'na16.n');

            DeleteFile(gs_SysPath + 'na21.n');
            DeleteFile(gs_SysPath + 'na22.n');
            DeleteFile(gs_SysPath + 'na23.n');
            DeleteFile(gs_SysPath + 'na24.n');
            DeleteFile(gs_SysPath + 'na25.n');
            DeleteFile(gs_SysPath + 'na26.n');

            DeleteFile(gs_SysPath + 'na31.n');
            DeleteFile(gs_SysPath + 'na32.n');
            DeleteFile(gs_SysPath + 'na33.n');
            DeleteFile(gs_SysPath + 'na34.n');
            DeleteFile(gs_SysPath + 'na35.n');
            DeleteFile(gs_SysPath + 'na36.n');

            DeleteFile(gs_SysPath + 'na41.n');
            DeleteFile(gs_SysPath + 'na42.n');
            DeleteFile(gs_SysPath + 'na43.n');
            DeleteFile(gs_SysPath + 'na44.n');
            DeleteFile(gs_SysPath + 'na45.n');
            DeleteFile(gs_SysPath + 'na46.n');
          except
          end;
        end;
      end;

      Label1.Caption := '';

      Exit; // Map 데이터 모두 Load 끝났으므로 프로세스 종료.
    except on E: Exception do
      Log(Format('GT_PRG_DUAL_MAIN True Check중 오류 발생[오류:%s]', [E.Message]), LOGDATADIRECTORY + 'log.txt');
    end;
  end else
  begin
    DoubleBuffered := True; // 지역정보 정렬
    slstMapTemp1.Sorted := True; // 동 정보 기준으로
    slstMapTemp2.Sorted := True; // 세부지명 정보 기준으로
    slstMapTemp3.Sorted := True; // 세부지명 없는 동 정보 기준으로
  end;

  // data insert [구 정보]                    // 세부지명 포함된 동 기준 정렬 정보 저장
  // =====================================================

  // 새로 설정된 MAP 데이터를 저장한다.(시스템 폴더에 감춰서 저장한다.)
  if bDefault = False then
  begin
    // 프로그램 듀얼 메인.
    try
      if (GT_PRG_DUAL_MAIN = 0) then
      begin
        Fnc_FileEncrypt_org(GT_MAPOrigi.slCity.Text, gs_SysPath + 'm4d1.x');
        Fnc_FileEncrypt_org(GT_MAPOrigi.slWard.Text, gs_SysPath + 'm4d2.x');
        Fnc_FileEncrypt_org(GT_MAPOrigi.slStre.Text, gs_SysPath + 'm4d3.x');
        Fnc_FileEncrypt_org(GT_MAPOrigi.slSSub.Text, gs_SysPath + 'm4d4.x');
        Fnc_FileEncrypt_org(GT_MAPOrigi.slMapX.Text, gs_SysPath + 'm4d5.x');
        Fnc_FileEncrypt_org(GT_MAPOrigi.slMapY.Text, gs_SysPath + 'm4d6.x');
        Application.ProcessMessages;

        if FileExists(gs_SysPath + 'm1d3.y') then
        begin
          try
            DeleteFile(gs_SysPath + 'm1d1.y');
            DeleteFile(gs_SysPath + 'm1d2.y');
            DeleteFile(gs_SysPath + 'm1d3.y');
            DeleteFile(gs_SysPath + 'm1d4.y');
            DeleteFile(gs_SysPath + 'm1d5.y');
            DeleteFile(gs_SysPath + 'm1d6.y');

            DeleteFile(gs_SysPath + 'm2d1.y');
            DeleteFile(gs_SysPath + 'm2d2.y');
            DeleteFile(gs_SysPath + 'm2d3.y');
            DeleteFile(gs_SysPath + 'm2d4.y');
            DeleteFile(gs_SysPath + 'm2d5.y');
            DeleteFile(gs_SysPath + 'm2d6.y');

            DeleteFile(gs_SysPath + 'm3d1.y');
            DeleteFile(gs_SysPath + 'm3d2.y');
            DeleteFile(gs_SysPath + 'm3d3.y');
            DeleteFile(gs_SysPath + 'm3d4.y');
            DeleteFile(gs_SysPath + 'm3d5.y');
            DeleteFile(gs_SysPath + 'm3d6.y');

            DeleteFile(gs_SysPath + 'm4d1.y');
            DeleteFile(gs_SysPath + 'm4d2.y');
            DeleteFile(gs_SysPath + 'm4d3.y');
            DeleteFile(gs_SysPath + 'm4d4.y');
            DeleteFile(gs_SysPath + 'm4d5.y');
            DeleteFile(gs_SysPath + 'm4d6.y');
          except
          end;
        end;
      end else
      // 프로그램 듀얼 서브.
      begin
        Fnc_FileEncrypt_org(GT_MAPOrigi.slCity.Text, gs_SysPath + 'na41.a');
        Fnc_FileEncrypt_org(GT_MAPOrigi.slWard.Text, gs_SysPath + 'na42.a');
        Fnc_FileEncrypt_org(GT_MAPOrigi.slStre.Text, gs_SysPath + 'na43.a');
        Fnc_FileEncrypt_org(GT_MAPOrigi.slSSub.Text, gs_SysPath + 'na44.a');
        Fnc_FileEncrypt_org(GT_MAPOrigi.slMapX.Text, gs_SysPath + 'na45.a');
        Fnc_FileEncrypt_org(GT_MAPOrigi.slMapY.Text, gs_SysPath + 'na46.a');
        Application.ProcessMessages;

        if FileExists(gs_SysPath + 'ns13.n') then
        begin
          try
            DeleteFile(gs_SysPath + 'na11.n');
            DeleteFile(gs_SysPath + 'na12.n');
            DeleteFile(gs_SysPath + 'na13.n');
            DeleteFile(gs_SysPath + 'na14.n');
            DeleteFile(gs_SysPath + 'na15.n');
            DeleteFile(gs_SysPath + 'na16.n');

            DeleteFile(gs_SysPath + 'na21.n');
            DeleteFile(gs_SysPath + 'na22.n');
            DeleteFile(gs_SysPath + 'na23.n');
            DeleteFile(gs_SysPath + 'na24.n');
            DeleteFile(gs_SysPath + 'na25.n');
            DeleteFile(gs_SysPath + 'na26.n');

            DeleteFile(gs_SysPath + 'na31.n');
            DeleteFile(gs_SysPath + 'na32.n');
            DeleteFile(gs_SysPath + 'na33.n');
            DeleteFile(gs_SysPath + 'na34.n');
            DeleteFile(gs_SysPath + 'na35.n');
            DeleteFile(gs_SysPath + 'na36.n');

            DeleteFile(gs_SysPath + 'na41.n');
            DeleteFile(gs_SysPath + 'na42.n');
            DeleteFile(gs_SysPath + 'na43.n');
            DeleteFile(gs_SysPath + 'na44.n');
            DeleteFile(gs_SysPath + 'na45.n');
            DeleteFile(gs_SysPath + 'na46.n');
          except
          end;
        end;
      end;
    except on E: Exception do
       Log(Format('GT_PRG_DUAL_MAIN False Check중 오류 발생[오류:%s]', [E.Message]), LOGDATADIRECTORY + 'log.txt');
    end;
  end;

  Label1.Caption := '';
end;

procedure TFrm_progress.tmr_InitializationTimer(Sender: TObject);
begin
  SetDebugeWrite('Frm_progress.tmr_InitializationTimer');
  // 폼 배열 변수를 초기화 한다.  CDS.
  tmr_Initialization.Enabled := False;

  pbProgress.Visible := True;
  Label1.Visible := True;

  if GS_Gubun = 10 then
  begin
    pbProgress.Properties.Max := 100;
    pbProgress.Position := 0;
    Label1.Caption := '접수 환경 [1] 설정 중입니다.';
  end;

	if (GT_USERIF.ID <> '') and (GS_EXEC_GUBUN = 1) and (GT_PRG_DUAL_MAIN = 0) then
    proc_CXELogUpload;

	if GS_Gubun = 10 then       //Proc_Process 안에서 위치변경  요금서버사용여부를 GLOBAL_Config에서 받기때문
		tmr_List.Enabled := True
  else
  begin
    Proc_Process;
    Close;
  end;
end;

procedure TFrm_progress.tmr_ListTimer(Sender: TObject);
begin
  tmr_List.Enabled := False;
  // 상담원의 속한 콜센터의 대표번호 리스트
  Proc_CrBrData_List;
  Proc_CustGroup;
  proc_Get_POIChNmList; // POI검색 치환
  proc_Global_Config; // 전역변수 설정값 셋팅 2010-10-30
  Proc_WibroLog;

	Proc_LoginData_List(gs_Mode_Bef);

  tmr_progress.Enabled := True;
end;

procedure TFrm_progress.tmr_progressTimer(Sender: TObject);
begin
  tmr_progress.Enabled := False;

  pbProgress.Position := pbProgress.Position + 1;

  // 진행값과 요청값이 틀리고, 전동시 3초경과시 다시 요청한다
  if (gs_Mode_Bef <> gs_Mode_Aft) and ((gs_Time + 4) = pbProgress.Position) then
  begin
		Proc_LoginData_List(gs_Mode_Bef);
    gs_Time := Trunc(pbProgress.Position);
  end;

  if pbProgress.Position = 100 then
  begin
    pbProgress.Position := 0;
    gs_Time := 0;
  end;
end;

procedure TFrm_progress.FormShow(Sender: TObject);
Var i : Integer;
begin
  SetDebugeWrite('progress.FormShow');

  fSetFont(Frm_progress, GS_FONTNAME);
  fSetSkin(Frm_progress);

  // -----------------------------------------------------------------------------------------------------------------
  // 초기화
  lblDesc.Caption := '';
  pbProgress.Visible := False;
  Label1.Caption := '';
  // -----------------------------------------------------------------------------------------------------------------

  lblDesc.Caption := GS_APPNAME + ' 환경 설정중...';

{	ln_Env := TIniFile.Create(ENVPATHFILE);
	try
    GB_DEBUG_USE := ln_Env.ReadBool('COUNSEL', 'GB_DEBUG_USE', False);
	finally
		FreeAndNil(ln_Env);
	end;}

	Try
		HashEucKr_1.Clear;

		for i := 0 to Length(EUCCode1) - 1 do
		begin
			HashEucKr_1.add(EUCCode1[i]);
		end;
		for i := 0 to Length(EUCCode2) - 1 do
		begin
			HashEucKr_1.add(EUCCode2[i]);
		end;
		for i := 0 to Length(EUCCode3) - 1 do
		begin
			HashEucKr_1.add(EUCCode3[i]);
		end;
	except
	End;


  // 환경 설정에서 상담지역 설정시에는 실행 되지 않음
  if GS_Gubun = 10 then
  begin
    // 출,도착지 초기화 처리   CDS.
    GTMap_Initial('CREATE');

    try
      EXECDIRECTORY := ExtractFilePath(Application.ExeName);
      FileMode := fmOpenRead;

      if FileExists(EXECDIRECTORY + 'allarea_AAdr_F.dat') = True then
      begin
        AssignFile(mAdd, EXECDIRECTORY + 'allarea_AAdr_F.dat');
        ReSet(mAdd);
      end else
      begin
        Assert(False, 'Not found allarea_AAdr_F.dat file.');
  			ShowMessage('프로그램 실행에 아주 중요한 파일이 없습니다. 프로그램 업데이트를 실행한 후 이용 하세요!');
        Exit;
      end;

      if FileExists(EXECDIRECTORY + 'allarea_OAAdr_F.dat') = True then   // 구주소(주소체크만을 위해 사용)  2017.06.29  LYB
      begin
        AssignFile(mOAdd, EXECDIRECTORY + 'allarea_OAAdr_F.dat');
        ReSet(mOAdd);
      end;
    except
      on e: exception do
      begin
        Assert(False, E.Message);
				ShowMessage('frmMain[AdvTOOLBARBUTTONCLick]:' + e.Message);
      end;
    end;
  end;

  tmr_Initialization.Enabled := True;
end;

procedure TFrm_progress.FormCreate(Sender: TObject);
begin
  SetDebugeWrite('progress.FormCreate');
  try
    gs_Mode_Bef := 1100;
    gs_Mode_Aft := 0;
    gs_Time := 0;

    //지역 수수료 StringList
    Area_Charge_List := TStringList.Create;
    GT_BRANCHCOUNT.BRCODE := TStringList.Create;
    GT_BRANCHCOUNT.BRTCNT := TStringList.Create;
    GT_BRANCHCOUNT.BRSCNT := TStringList.Create;

    // blowfish + md5 암호 컴포넌트 직접 코드 선언. 2011.06.28
    DCP_blowfish1 := TDCP_blowfish.Create(nil);
    DCP_md51 := TDCP_MD5.Create(nil);
  except on e: exception do
    begin
      Assert(False, E.Message);
      ShowMessage('progress.FormCreate:' + e.Message);
    end;
  end;
end;

procedure TFrm_progress.FormDestroy(Sender: TObject);
begin
  Frm_progress := Nil;
end;

// 맵데이터 구조체 HashTable 생성.     // [6차]
procedure TFrm_progress.MapDataSttRec_Offset_Create_Final_decode;
type
  Tfunc = function(ss_Gucun: AnsiString): PAnsiChar; stdcall;
var
  i, j, iFK_1, k, iAssig_idx : integer;
  iP1 : integer;
  slTmp, sChildTmp, slMapData, slCngData  : TStringlist;
  sWord, sComStr : string;

  pdt : PPKData;
  sOffset, sFlag, sPoiID : string;

  pACity : PADDRCITY;
  pAWard : PADDRWARD;
  pAStee : PADDRSTEE;
  pASte2 : PADDRSTE2;

  lh_Handel: HWND;
  Myfunc: Tfunc;

  sEncy, sHash, sPos : String;
  FOrgFile : String;
  FDecFile : AnsiString;
  FCNGFile : AnsiString;
  bPoiDel, bPoiIns : Boolean;
  slTmp1, slTmp2 : TStringlist;
begin
  SetDebugeWrite('Frm_progress.MapDataSttRec_Offset_Create_Final_decode 0');

  Application.ProcessMessages;

  try
    //===========================================
    //  주소 데이터 로딩..
    //===========================================

    slTmp := TStringList.Create;
    slTmp1 := TStringList.Create;
    slTmp2 := TStringList.Create;

    if (GT_USERIF.HD = 'A1531') or (GT_USERIF.HD = 'A100') then
    begin
      if FileExists(DBDIRECTORY + 'SECTORAREA_E.txt') = False then
      begin
  			ShowMessage('추가요금 제외 파일이 없습니다.');
      end else
      begin
        slCngData  := TStringList.Create;
        slCngData.Clear;
        try
          locLoadFile_Decrypt(DBDIRECTORY + 'SECTORAREA_E.txt', FCNGFile);
          slCngData.Text := FCNGFile;
        Except
          slCngData.Text := '';
        end;

        SetLength(FAREAROUND_XY, slCngData.Count);
        for i := 0 to Length(FAREAROUND_XY) -1 do
        begin
          FAREAROUND_XY[i].LonArr := TStringList.Create;
          FAREAROUND_XY[i].LatArr := TStringList.Create;
        end;

        for i := 0 to slCngData.Count -1 do
        begin
          sWord := slCngData[i];
          slTmp.Delimiter     := '/';
          slTmp.DelimitedText := sWord;
          for j := 0 to slTmp.Count - 1 do
          begin
            if j = 0 then FAREAROUND_XY[i].GUBUN  := Trim(slTmp[j]) else
            if j = 1 then FAREAROUND_XY[i].DONG   := Trim(slTmp[j]) else
            if j = 2 then FAREAROUND_XY[i].ArrCnt := StrToInt(Trim(slTmp[j])) else
            if j > 2 then
            begin
              slTmp1.Delimiter     := '!';
              slTmp1.DelimitedText := Trim(slTmp[j]);
              for k := 0 to slTmp1.Count -1 do
              begin
                slTmp2.Delimiter     := ',';
                slTmp2.DelimitedText := slTmp1[k];
                if Trim(slTmp2[0]) <> '' then
                begin
                  FAREAROUND_XY[i].LatArr.Add(Trim(slTmp2[0]));
                  FAREAROUND_XY[i].LonArr.Add(Trim(slTmp2[1]));
                end;
              end;

            end;
          end;
        end;
      end;
    end;
    SetDebugeWrite('Frm_progress.MapDataSttRec_Offset_Create_Final_decode 4');

    slMapData := TStringList.Create;

    // 도로명주소 파일 복호화.
    locLoadFile_Decrypt(ExtractFilePath(Application.ExeName) + 'allarea_Road.txt', FDecFile);
    HashRoad.Text := FDecFile;

    // 주소 인덱스 파일 복호화.
    locLoadFile_Decrypt(ExtractFilePath(Application.ExeName) + 'allarea_AAdr.txt', FDecFile);
    slMapData.Text := FDecFile;

    HashCity.Clear;
    HashWard.Clear;
    HashWar2.Clear;
    HashStee.Clear;
    HashSte2.Clear;

    sChildTmp := TStringList.Create;

    iAssig_idx := 1;
    for i := 0 to slMapData.Count -1 do
    begin
      sWord := slMapData[i];
      sEncy := sWord;

      if Length(sEncy) > 3 then
      begin
        if StringMatches(sEncy,'-----') then
        begin
          if iAssig_idx = 1 then
          begin
            iFK_1 := i;
          end else
          if iAssig_idx = 2 then
          begin
            iFK_1 := i - iFK_1;
          end else
          if iAssig_idx = 3 then
          begin
            iFK_1 := i - iFK_1;
          end else
          if iAssig_idx = 4 then
          begin
            iFK_1 := i - iFK_1;
          end;

          iAssig_idx := iAssig_idx + 1;
        end else
        begin
          if iAssig_idx = 1 then
          begin  // 16개지역 광역시도 메모리저장.
            // 강원/0001/01///
            sWord := sEncy;
            slTmp.Delimiter     := '/';
            slTmp.DelimitedText := sWord;

            pACity := New( PADDRCITY );
            pACity.sOffset  := Trim(slTmp[1]);
            pACity.sCity    := Trim(slTmp[0]);

            HashCity.AddObject( Trim(slTmp[0]), TObject(pACity) );
          end else
          if iAssig_idx = 2 then
          begin
            // 강서구^1498/08/340//|1785/09/383//
            iP1  := Pos  ('^', sEncy);
            sWord       := Copy(sEncy, 1, (iP1-1));                    // 강서
            sOffset     := Copy(sEncy, iP1+1, length(sEncy));   // 1498/08/340//|1785/09/383//

            slTmp.Delimiter     := '|';
            slTmp.DelimitedText := sOffset;

            pAWard := New( PADDRWARD );
            SetLength( pAWard.sOffset,      slTmp.Count );

            for j := 0 to slTmp.Count-1 do
            begin                    // 1498/08/340//   0525/02/100/102/
              sChildTmp.Delimiter     := '/';
              sChildTmp.DelimitedText := slTmp[j];

              pAWard.sOffset[j]    := sChildTmp[0];   // Offset
            end;
            HashWard.AddObject( sWord, TObject(pAWard) );
          end else
          if iAssig_idx = 3 then
          begin
            // 오정구^1498/08/340//|1785/09/383//
            iP1  := Pos  ('^',  sEncy);
            sWord       := Copy(sEncy, 1, (iP1-1));                    // 오정구
            sOffset     := Copy(sEncy, iP1+1, length(sEncy));   // 1498/08/340//|1785/09/383//

            slTmp.Delimiter     := '|';
            slTmp.DelimitedText := sOffset;

            pAWard := New( PADDRWARD );
            SetLength( pAWard.sOffset,      slTmp.Count );

            for j := 0 to slTmp.Count-1 do
            begin                    // 1498/08/340//   0525/02/100/102/
              sChildTmp.Delimiter     := '/';
              sChildTmp.DelimitedText := slTmp[j];

              pAWard.sOffset[j]    := sChildTmp[0];   // Offset
            end;
            HashWar2.AddObject( sWord, TObject(pAWard) );
          end else
          if iAssig_idx = 4 then
          begin
            // 가곡^0043/01/004//0160/가곡면|3260/16/621//6390/가곡면
            iP1         := Pos('^', sEncy);
            sWord       := Copy(sEncy, 1, (iP1-1));                    // 가좌
            sOffset     := Copy(sEncy, iP1+1, length(sEncy));   // 1498/08/340//|1785/09/383//

            slTmp.Delimiter     := '|';
            slTmp.DelimitedText := sOffset;

            pAStee := New( PADDRSTEE );
            SetLength( pAStee.sOffset,      slTmp.Count );
            SetLength( pAStee.sStreet,      slTmp.Count );

            for j := 0 to slTmp.Count-1 do
            begin                    // 1498/08/340//   0525/02/100/102/4041
              sChildTmp.Delimiter     := '/';
              sChildTmp.DelimitedText := slTmp[j];

              pAStee.sOffset[j]    := sChildTmp[0];   // Offset
              pAStee.sStreet[j]    := sChildTmp[1];
            end;
            HashStee.AddObject( sWord, TObject(pAStee) );
          end else
          if iAssig_idx = 5 then  // 20130614 LYB 리정보
          begin
            // 가곡^0043/01/004//0160/가곡면|3260/16/621//6390/가곡면
            iP1         := Pos('^', sEncy);
            sWord       := Copy(sEncy, 1, (iP1-1));                    // 가좌
            sOffset     := Copy(sEncy, iP1+1, length(sEncy));   // 1498/08/340//|1785/09/383//

            slTmp.Delimiter     := '|';
            slTmp.DelimitedText := sOffset;

            pASte2 := New( PADDRSTE2 );
            SetLength( pASte2.sOffset,      slTmp.Count );
            SetLength( pASte2.sStree2,      slTmp.Count );

            for j := 0 to slTmp.Count-1 do
            begin                    // 1498/08/340//   0525/02/100/102/4041
              sChildTmp.Delimiter     := '/';
              sChildTmp.DelimitedText := slTmp[j];

              pASte2.sOffset[j]    := sChildTmp[0];   // Offset
              pASte2.sStree2[j]    := sChildTmp[1];
            end;
            HashSte2.AddObject( sWord, TObject(pASte2) );
          end;
        end;
      end;
    end;
    SetDebugeWrite('Frm_progress.MapDataSttRec_Offset_Create_Final_decode 5');
    HashCity.IndexOf('');
    HashWard.IndexOf('');
    HashWar2.IndexOf('');
    HashStee.IndexOf('');
    HashSte2.IndexOf('');

    if iAssig_idx = 5 then begin
      iFK_1 := i - iFK_1;
    end;
    //=====================================================================================

    slMapData.Clear;
//    sleep(200);
    SetDebugeWrite('Frm_progress.MapDataSttRec_Offset_Create_Final_decode 7');
  finally
    slMapData.Free;
    slCngData.Free;
    slTmp.Free;
    slTmp1.Free;
    slTmp2.Free;
    sChildTmp.Free;
    SetDebugeWrite('Frm_progress.MapDataSttRec_Offset_Create_Final_decode 8');
  end;
end;

function TFrm_progress.locBlowFishDecrypt(AKey: string; outData: PAnsiChar; ALength: Integer): string;
var
  pReturn: array of AnsiChar;
begin
  Init(PAnsiChar(AKey), Length(AKey));
  Result := '';

  SetLength(pReturn, ALength);
  ZeroMemory(pReturn, ALength);

  Decrypt(outData, ALength, @pReturn[0]);

  Result := Trim(string(pReturn));
end;

function TFrm_progress.locDecrypt(const APath: string;
  var AData: string): Boolean;
var
  P: PAnsiChar;
  FS: TFileStream;
  Len: Integer;
  Enc, DataLen: DWORD;
begin
  Result := False;

  FS := TFileStream.Create(APath, fmOpenRead or fmShareDenyWrite);
  try
    FS.ReadBuffer(PDWORD(Enc), SizeOf(DWORD));

    case TEncryptType(Enc) of
    etBlowfish:
      begin
        FS.ReadBuffer(PDWORD(DataLen), SizeOf(DWORD));
        Len := (DataLen - 1 div 8 + 1) * 8;
        GetMem(P, Len);
        try
          FS.Read(P^, Len);
          AData := locBlowFishDecrypt(CC_ENCRYPT, P, Len);
          AData := Copy(AData, 1, DataLen);
        finally
          FreeMem(P);
        end;
      end;
    else
    end;
  finally
    FS.Free;
  end;
end;

procedure TFrm_progress.locLoadFile_Decrypt(const APath: string;  var OData: Ansistring);
var
  FS : TFileStream;
  sData : AnsiString;
begin
  // TFileStream
  FS  := TFileStream.Create(APath, fmOpenRead);
  try
    SetString(sData, nil, FS.Size - FS.Position);
    FS.Read(Pointer(sData)^, FS.Size - FS.Position);

    SetString(OData, nil, Length(sData));
    OData := Decrypt_Fast(sData, 36);  // 암호처리.
  finally
    FreeAndNil(FS);
  end;
end;

procedure TFrm_progress.Proc_LoginData_List(ss_Gubun: Integer);
var
  ErrCode: integer;
  XmlData, Param, ErrMsg: string;
begin
  try
    //지사순서가져오기
    if GS_BRLISTVIEWMODE then Param := '2'
                         else Param := '1';

  	if not RequestBase(GetSel06('LIST' + IntToStr(ss_Gubun), 'COM.GET_TREE_LIST', '10000', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('지사순서 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;

  	proc_recieve(XmlData);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_progress.Proc_KeyNumber_List_Insert(ss_XML: WideString);
var
	i, iCnt, iA, iDx: Integer;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;

  ls_MSG_Err: string;
  ls_RV_Cnt: Integer;
	sHDNO, sBRNO, fHDNO, fBRNO, fHDCNT : string;
//	A1770_HD_LIST: array [0 .. 5000, 0 .. 50] of string;
	A1770_HD_LIST: Array of Array of String;
begin
	SetLength(A1770_HD_LIST, 50001);
	for i := 0 to length(A1770_HD_LIST)-1 do
	begin
		SetLength(A1770_HD_LIST[i], 52); // y축의 메열을 할당
	end;
	Screen.Cursor := crHourGlass;

 	xdom := ComsDomDocument.Create;
  if not xdom.loadXML(ss_XML) then Exit;

	try
    ls_MSG_Err := GetXmlErrorCode(ss_XML);
    if ('0000' = ls_MSG_Err) then
    begin
      ls_RV_Cnt := GetXmlRecordCount(ss_XML);
      if (0 < ls_RV_Cnt) then
      begin
        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

        FillChar(GSL_HD_LIST, SizeOf(GSL_HD_LIST), #0);
        GT_BR_KN_CNT := lst_Result.length - 1;
        iCnt := 1;
        ls_Rcrd := TStringList.Create;
        try
  //				if ((GT_USERIF.ID = 'a1215') or (GT_USERIF.ID = 'as3974') or (GT_USERIF.ID = 'hong8228')) and
          if (GS_PRJ_AREA = 'O') and (GT_USERIF.HD = 'A1770') and (GT_USERIF.LV = '60') then
          begin
            iA := 0; // Tmp배열의 진행값
            iDx := 0;
  					for i := 0 to lst_Result.length - 1 do
	  				begin
		  				GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
              sHDNO := ls_Rcrd[5];
              sBRNO := ls_Rcrd[0];
              if sHDNO = fHDNO then
              begin
                if sBRNO <> fBRNO then
                begin
                  inc(iCnt);
                end;
                if (lst_Result.length - 1) = i then
                begin
                  GT_BRANCHCOUNT.BRCODE.add(sHDNO);
                  GT_BRANCHCOUNT.BRTCNT.add(ls_Rcrd[24]);
                  GT_BRANCHCOUNT.BRSCNT.add(inttostr(iCnt));
                end;
              end else
              begin
                if fHDNO <> '' then
                begin
                  GT_BRANCHCOUNT.BRCODE.add(fHDNO);
                  GT_BRANCHCOUNT.BRTCNT.add(fHDCNT);
                  GT_BRANCHCOUNT.BRSCNT.add(inttostr(iCnt));
                  iCnt := 1;
                end;
                if (lst_Result.length - 1) = i then
                begin
                  GT_BRANCHCOUNT.BRCODE.add(sHDNO);
                  GT_BRANCHCOUNT.BRTCNT.add(ls_Rcrd[24]);
                  GT_BRANCHCOUNT.BRSCNT.add(inttostr(iCnt));
                end;
              end;

              fHDCNT := ls_Rcrd[24];
              fHDNO := ls_Rcrd[5];
              fBRNO := ls_Rcrd[0];

              if (ls_Rcrd[5] = 'A1748') or (ls_Rcrd[5] = 'A1780') then
              begin
								A1770_HD_LIST[iA, 0] := ls_Rcrd[0]; // 지사코드
                A1770_HD_LIST[iA, 1] := ls_Rcrd[1]; // 지사명
                A1770_HD_LIST[iA, 2] := ls_Rcrd[2]; // 대표번호
                A1770_HD_LIST[iA, 3] := ls_Rcrd[3]; // 요금기본료
                A1770_HD_LIST[iA, 4] := ls_Rcrd[4]; // 콜센터코드
                A1770_HD_LIST[iA, 5] := ls_Rcrd[5]; // 본사코드
                A1770_HD_LIST[iA, 6] := ls_Rcrd[7]; // 안내멘트
                A1770_HD_LIST[iA, 7] := ls_Rcrd[8]; // 상황실번호
                A1770_HD_LIST[iA, 8] := '1'; // ls_Rcrd[9]; // 기사수(퇴직, 삭제제외)
                A1770_HD_LIST[iA, 9] := ls_Rcrd[9]; // 모바일쿠폰 사용여부
                A1770_HD_LIST[iA, 10] := ls_Rcrd[10]; // 강제배차 사용여부(연합설정)
                A1770_HD_LIST[iA, 11] := ls_Rcrd[11]; // 카드종류코드('01' 베스텍컴, '02' KSNET, '' 미사용)
                A1770_HD_LIST[iA, 12] := ls_Rcrd[12]; // 이관콜센터에 고객정보(이용횟수, 고객명, 적요) 익일숨김
                A1770_HD_LIST[iA, 13] := ls_Rcrd[13]; // 이관콜센터에 ~분이후 고객번호 숨김
                A1770_HD_LIST[iA, 14] := ls_Rcrd[14]; // 이관콜센터 상담원에 관리권한 부여(string[3] wk||cu||etc 'y/n')
                A1770_HD_LIST[iA, 15] := ls_Rcrd[15];  // 고객등급 그룹
                A1770_HD_LIST[iA, 16] := ls_Rcrd[16];  // 취소상태 오더를 문의로 변경(연합설정)
                A1770_HD_LIST[iA, 17] := ls_Rcrd[17];  // y(접수창 사용)y(지사)y(본사)y(연합)y(가능여부확인) 플러스콜 사용여부[지사,본사,연합] --> 예) 사용:'yyy' or 미사용:'nyy' (n 1개라도 있으면 미사용)
                A1770_HD_LIST[iA, 18] := ls_Rcrd[18];  // 대표지사여부
                A1770_HD_LIST[iA, 19] := ls_Rcrd[19];  // 탁송여부
                A1770_HD_LIST[iA, 20] := ls_Rcrd[20];  // 지사내 기사 수
                A1770_HD_LIST[iA, 21] := ls_Rcrd[21];  // 본사명
                A1770_HD_LIST[iA, 22] := ls_Rcrd[22];  // 패밀리 본사 여부 'y=패밀리본사'
                A1770_HD_LIST[iA, 23] := ls_Rcrd[23];  // 연합설정-대표번호변경
                A1770_HD_LIST[iA, 24] := ls_Rcrd[24];  // 설정 본사의 지사 수'
                A1770_HD_LIST[iA, 25] := ls_Rcrd[25];  // 고객어플 사용 유무  20130225 LYB 추가
                A1770_HD_LIST[iA, 26] := ls_Rcrd[26];  // 콜센터2 추가 20150805KHS
                A1770_HD_LIST[iA, 27] := ls_Rcrd[27];  // 콜벨사용본사 콜벨사용여부는 사용=y, 미사용 = '' or n
                A1770_HD_LIST[IA, 28] := ls_Rcrd[28];  // CMNIPCC 사용여부
                A1770_HD_LIST[IA, 29] := ls_Rcrd[29];  // CMNIPCC 업체코드
                A1770_HD_LIST[IA, 30] := ls_Rcrd[30];  // LBS 사용여부
                A1770_HD_LIST[IA, 31] := ls_Rcrd[31];  // AI 사용여부
                A1770_HD_LIST[IA, 32] := ls_Rcrd[32];  // #4 사용여부(셔틀 유닉드라이브 A5433 유닉드라이브 S316 )
                A1770_HD_LIST[IA, 33] := ls_Rcrd[33];  // 마일리지 사용액 마일리지 적립

                A1770_HD_LIST[IA, 34] := '';
                if ls_Rcrd.count > 34 then A1770_HD_LIST[IA, 34] := ls_Rcrd[34];  // 현금 사용액 마일리지 적립

                A1770_HD_LIST[IA, 35] := '';
                if ls_Rcrd.count > 35 then A1770_HD_LIST[IA, 35] := ls_Rcrd[35];  // 탁송연합콜

                A1770_HD_LIST[IA, 36] := '';
                if ls_Rcrd.count > 36 then A1770_HD_LIST[IA, 36] := ls_Rcrd[36];  // AI 아웃바운드 사용여부 (y/n)

                A1770_HD_LIST[IA, 37] := '';
                if ls_Rcrd.count > 37 then A1770_HD_LIST[IA, 37] := ls_Rcrd[37];  // AI 아웃바운드 대표번호별 사용여부 (y/n) 20190717 KHS

                A1770_HD_LIST[IA, 38] := '';
                if ls_Rcrd.count > 38 then A1770_HD_LIST[IA, 38] := ls_Rcrd[38];  // BR_TEL_AUTH_YN 대표번호 증명서 보유여부 (y보유/n미보유) 20191010 KHS

                A1770_HD_LIST[IA, 39] := '';
                A1770_HD_LIST[IA, 40] := '';
                A1770_HD_LIST[IA, 41] := '';
                if ls_Rcrd.count > 39 then
                begin
                  A1770_HD_LIST[IA, 39] := ls_Rcrd[39];  // 자율수수료 사용여부
                  A1770_HD_LIST[IA, 40] := ls_Rcrd[40];  // 자율 수수료 (ex ~30,25,20)
                  A1770_HD_LIST[IA, 41] := ls_Rcrd[41];  // 자율 수수료 설정 가능여부y->설정메뉴오픈
                end;

                A1770_HD_LIST[IA, 42] := '';
                if ls_Rcrd.count > 42 then A1770_HD_LIST[IA, 42] := ls_Rcrd[42];  // 자체발행쿠폰사용여부

                A1770_HD_LIST[IA, 43] := '';
                if ls_Rcrd.count > 43 then A1770_HD_LIST[IA, 43] := ls_Rcrd[43];  // 복합결제 설정 여부 y/n  20201104 LYB

                A1770_HD_LIST[IA, 44] := '';
                A1770_HD_LIST[IA, 45] := '';
                A1770_HD_LIST[IA, 46] := '';
                A1770_HD_LIST[IA, 47] := '';
                if ls_Rcrd.count > 44 then
                begin
                  A1770_HD_LIST[IA, 44] := ls_Rcrd[44];  // 대표번호별 지역정보 시도
                  A1770_HD_LIST[IA, 45] := ls_Rcrd[45];  // 대표번호별 지역정보 시군구
                  A1770_HD_LIST[IA, 46] := ls_Rcrd[46];  // 대표번호별 지역정보 읍면동
									A1770_HD_LIST[IA, 47] := ls_Rcrd[47];  // 연합코드
                end;

								if ls_Rcrd.count > 48 then
								begin
									A1770_HD_LIST[IA, 48] := ls_Rcrd[48];  // 일반콜 전환 가능 여부 20210705 KHS
								end;
								if ls_Rcrd.count > 49 then
								begin
									A1770_HD_LIST[IA, 49] := ls_Rcrd[49];  // 지원금 사용여부 20210708 KHS
								end;
								if ls_Rcrd.count > 50 then
								begin
									A1770_HD_LIST[IA, 50] := ls_Rcrd[50];  // 지원금액 20210708 KHS
								end;
								if ls_Rcrd.count > 51 then
								begin
									A1770_HD_LIST[IA, 51] := ls_Rcrd[51];  // 건당보험료무료 자동적용사용여부 20210906 KM진행사항 KHS
								end;  
								
								Inc(iA);
              end else
              begin
              // [지사, 지사명, 대표번호, 기본료, 콜센터]
                GSL_HD_LIST[iDx, 0]  := ls_Rcrd[0]; // 지사코드
                GSL_HD_LIST[iDx, 1]  := ls_Rcrd[1]; // 지사명
                GSL_HD_LIST[iDx, 2]  := ls_Rcrd[2]; // 대표번호
                GSL_HD_LIST[iDx, 3]  := ls_Rcrd[3]; // 요금기본료
                GSL_HD_LIST[iDx, 4]  := ls_Rcrd[4]; // 콜센터
                GSL_HD_LIST[iDx, 5]  := ls_Rcrd[5]; // 본사코드
                GSL_HD_LIST[iDx, 6]  := ls_Rcrd[7]; // 안내멘트
                GSL_HD_LIST[iDx, 7]  := ls_Rcrd[8]; // 상황실번호
                GSL_HD_LIST[iDx, 8]  := '1'; // ls_Rcrd[9]; // 기사수(퇴직, 삭제제외)
                GSL_HD_LIST[iDx, 9]  := ls_Rcrd[9]; // 모바일쿠폰 사용여부
                GSL_HD_LIST[iDx, 10] := ls_Rcrd[10]; // 강제배차 사용여부(연합설정)
                GSL_HD_LIST[iDx, 11] := ls_Rcrd[11]; // 카드종류코드('01' 베스텍컴, '02' KSNET, '' 미사용)
                GSL_HD_LIST[iDx, 12] := ls_Rcrd[12]; // 이관콜센터에 고객정보(이용횟수, 고객명, 적요) 익일숨김
                GSL_HD_LIST[iDx, 13] := ls_Rcrd[13]; // 이관콜센터에 ~분이후 고객번호 숨김
                GSL_HD_LIST[iDx, 14] := ls_Rcrd[14]; // 이관콜센터 상담원에 관리권한 부여(string[3] wk||cu||etc 'y/n')
                GSL_HD_LIST[iDx, 15] := ls_Rcrd[15];  // 고객등급 그룹
                GSL_HD_LIST[iDx, 16] := ls_Rcrd[16];  // 취소상태 오더를 문의로 변경(연합설정)
                GSL_HD_LIST[iDx, 17] := ls_Rcrd[17];  // y(접수창 사용)y(지사)y(본사)y(연합)y(가능여부확인) 플러스콜 사용여부[지사,본사,연합] --> 예) 사용:'yyy' or 미사용:'nyy' (n 1개라도 있으면 미사용)
                GSL_HD_LIST[iDx, 18] := ls_Rcrd[18];  // 대표지사여부
                GSL_HD_LIST[iDx, 19] := ls_Rcrd[19];  // 탁송여부
                GSL_HD_LIST[iDx, 20] := ls_Rcrd[20];  // 지사내 기사 수
                GSL_HD_LIST[iDx, 21] := ls_Rcrd[21];  // 본사명
                GSL_HD_LIST[iDx, 22] := ls_Rcrd[22];  // 패밀리 본사 여부 'y=패밀리본사'
                GSL_HD_LIST[iDx, 23] := ls_Rcrd[23];  // 연합설정-대표번호변경
                GSL_HD_LIST[iDx, 24] := ls_Rcrd[24];  // 설정 본사의 지사 수'
                GSL_HD_LIST[iDx, 25] := ls_Rcrd[25];  // 고객어플 사용 유무  20130225 LYB 추가
                GSL_HD_LIST[iDx, 26] := ls_Rcrd[26];  // 콜센터2 추가 20150805KHS
                GSL_HD_LIST[iDx, 27] := ls_Rcrd[27];  // 콜벨사용본사 콜벨사용여부는 사용=y, 미사용 = '' or n
                GSL_HD_LIST[iDx, 28] := ls_Rcrd[28];  // CMNIPCC 사용여부
                GSL_HD_LIST[iDx, 29] := ls_Rcrd[29];  // CMNIPCC 업체코드
                GSL_HD_LIST[iDx, 30] := ls_Rcrd[30];  // LBS 사용여부
                GSL_HD_LIST[iDx, 31] := ls_Rcrd[31];  // AI 사용여부
                GSL_HD_LIST[iDx, 32] := '';
                GSL_HD_LIST[iDx, 32] := ls_Rcrd[32];  // #4 사용여부(셔틀 유닉드라이브 A5433 유닉드라이브 S316 )
                GSL_HD_LIST[iDx, 33] := ls_Rcrd[33];  // 마일리지 사용액 마일리지 적립

                GSL_HD_LIST[iDx, 34] := '';
                if ls_Rcrd.count > 34 then GSL_HD_LIST[iDx, 34] := ls_Rcrd[34];  // 현금 사용액 마일리지 적립

                GSL_HD_LIST[iDx, 35] := '';
                if ls_Rcrd.count > 35 then GSL_HD_LIST[iDx, 35] := ls_Rcrd[35];  // 탁송연합콜

                GSL_HD_LIST[iDx, 36] := '';
                if ls_Rcrd.count > 36 then GSL_HD_LIST[iDx, 36] := ls_Rcrd[36];  // AI 아웃바운드 사용여부 (y/n)

                GSL_HD_LIST[iDx, 37] := '';
                if ls_Rcrd.count > 37 then GSL_HD_LIST[iDx, 37] := ls_Rcrd[37];  // AI 아웃바운드 대표번호별 사용여부 (y/n) 20190717 KHS

                GSL_HD_LIST[iDx, 38] := '';
                if ls_Rcrd.count > 38 then GSL_HD_LIST[iDx, 38] := ls_Rcrd[38];  // BR_TEL_AUTH_YN 대표번호 증명서 보유여부 (y보유/n미보유) 20191010 KHS

                GSL_HD_LIST[iDx, 39] := '';
                GSL_HD_LIST[iDx, 40] := '';
                GSL_HD_LIST[iDx, 41] := '';
                if ls_Rcrd.count > 39 then
                begin
                  GSL_HD_LIST[iDx, 39] := ls_Rcrd[39];  // 자율수수료 사용여부
                  GSL_HD_LIST[iDx, 40] := ls_Rcrd[40];  // 자율 수수료 (ex ~30,25,20)
                  GSL_HD_LIST[iDx, 41] := ls_Rcrd[41];  // 자율 수수료 설정 가능여부y->설정메뉴오픈
                end;

                GSL_HD_LIST[iDx, 42] := '';
                if ls_Rcrd.count > 42 then GSL_HD_LIST[iDx, 42] := ls_Rcrd[42];  // 자체발행쿠폰사용여부

                GSL_HD_LIST[iDx, 43] := '';
                if ls_Rcrd.count > 43 then GSL_HD_LIST[iDx, 43] := ls_Rcrd[43];  // 복합결제 설정 여부 y/n  20201104 LYB

                GSL_HD_LIST[iDx, 44] := '';
                GSL_HD_LIST[iDx, 45] := '';
                GSL_HD_LIST[iDx, 46] := '';
                GSL_HD_LIST[iDx, 47] := '';
                if ls_Rcrd.count > 44 then
                begin
                  GSL_HD_LIST[iDx, 44] := ls_Rcrd[44];  // 대표번호별 지역정보 시도
                  GSL_HD_LIST[iDx, 45] := ls_Rcrd[45];  // 대표번호별 지역정보 시군구
                  GSL_HD_LIST[iDx, 46] := ls_Rcrd[46];  // 대표번호별 지역정보 읍면동
									GSL_HD_LIST[iDx, 47] := ls_Rcrd[47];  // 연합코드
                end;

								if ls_Rcrd.count > 48 then
								begin
									GSL_HD_LIST[iDx, 48] := ls_Rcrd[48];  // 일반콜 전환 가능 여부 20210705 KHS
								end;
								if ls_Rcrd.count > 49 then
								begin
									GSL_HD_LIST[iDx, 49] := ls_Rcrd[49];  // 지원금 사용여부 20210708 KHS
								end;
								if ls_Rcrd.count > 50 then
								begin
									GSL_HD_LIST[iDx, 50] := ls_Rcrd[50];  // 지원금액 20210708 KHS
								end;
								if ls_Rcrd.count > 51 then
								begin
									GSL_HD_LIST[iDx, 51] := ls_Rcrd[51];  // 건당보험료무료 자동적용사용여부 20210906 KM진행사항 KHS
								end;
								
								Inc(iDx);
							end;
            end;
            iA := 0;
						while A1770_HD_LIST[iA, 0] <> '' do
            begin
              GSL_HD_LIST[iDx, 0]  := A1770_HD_LIST[iA, 0] ;
              GSL_HD_LIST[iDx, 1]  := A1770_HD_LIST[iA, 1] ;
              GSL_HD_LIST[iDx, 2]  := A1770_HD_LIST[iA, 2] ;
              GSL_HD_LIST[iDx, 3]  := A1770_HD_LIST[iA, 3] ;
              GSL_HD_LIST[iDx, 4]  := A1770_HD_LIST[iA, 4] ;
              GSL_HD_LIST[iDx, 5]  := A1770_HD_LIST[iA, 5] ;
              GSL_HD_LIST[iDx, 6]  := A1770_HD_LIST[iA, 6] ;
              GSL_HD_LIST[iDx, 7]  := A1770_HD_LIST[iA, 7] ;
              GSL_HD_LIST[iDx, 8]  := A1770_HD_LIST[iA, 8] ;
              GSL_HD_LIST[iDx, 9]  := A1770_HD_LIST[iA, 9] ;
              GSL_HD_LIST[iDx, 10] := A1770_HD_LIST[iA, 10];
              GSL_HD_LIST[iDx, 11] := A1770_HD_LIST[iA, 11];
              GSL_HD_LIST[iDx, 12] := A1770_HD_LIST[iA, 12];
              GSL_HD_LIST[iDx, 13] := A1770_HD_LIST[iA, 13];
              GSL_HD_LIST[iDx, 14] := A1770_HD_LIST[iA, 14];
              GSL_HD_LIST[iDx, 15] := A1770_HD_LIST[iA, 15];
              GSL_HD_LIST[iDx, 16] := A1770_HD_LIST[iA, 16];
              GSL_HD_LIST[iDx, 17] := A1770_HD_LIST[iA, 17];
              GSL_HD_LIST[iDx, 18] := A1770_HD_LIST[iA, 18];
              GSL_HD_LIST[iDx, 19] := A1770_HD_LIST[iA, 19];
              GSL_HD_LIST[iDx, 20] := A1770_HD_LIST[iA, 20];
              GSL_HD_LIST[iDx, 21] := A1770_HD_LIST[iA, 21];
              GSL_HD_LIST[iDx, 22] := A1770_HD_LIST[iA, 22];
              GSL_HD_LIST[iDx, 23] := A1770_HD_LIST[iA, 23];
              GSL_HD_LIST[iDx, 24] := A1770_HD_LIST[iA, 24];
              GSL_HD_LIST[iDx, 25] := A1770_HD_LIST[iA, 25];
              GSL_HD_LIST[iDx, 26] := A1770_HD_LIST[iA, 26];
              GSL_HD_LIST[iDx, 27] := A1770_HD_LIST[iA, 27];
              GSL_HD_LIST[iDx, 28] := A1770_HD_LIST[iA, 28];  // CMNIPCC 사용여부
              GSL_HD_LIST[iDx, 29] := A1770_HD_LIST[iA, 29];  // CMNIPCC 업체코드
              GSL_HD_LIST[iDx, 30] := A1770_HD_LIST[iA, 30];  // LBS 사용여부
              GSL_HD_LIST[iDx, 31] := A1770_HD_LIST[iA, 31];  // AI 사용여부
              GSL_HD_LIST[iDx, 32] := A1770_HD_LIST[iA, 32];  // #4 사용여부(셔틀 유닉드라이브 A5433 유닉드라이브 S316 )
              GSL_HD_LIST[iDx, 33] := A1770_HD_LIST[iA, 33];  // 마일리지 사용액 마일리지 적립
              GSL_HD_LIST[iDx, 34] := A1770_HD_LIST[iA, 34];  // 현금 사용액 마일리지 적립
              GSL_HD_LIST[iDx, 35] := A1770_HD_LIST[iA, 35];  // 탁송연합콜
              GSL_HD_LIST[iDx, 36] := A1770_HD_LIST[iA, 36];  // AI 아웃바운드 사용여부 (y/n)
              GSL_HD_LIST[iDx, 37] := A1770_HD_LIST[iA, 37];  // AI 아웃바운드 대표번호별 사용여부 (y/n) 20190717 KHS
              GSL_HD_LIST[iDx, 38] := A1770_HD_LIST[iA, 38];  // BR_TEL_AUTH_YN 대표번호 증명서 보유여부 (y보유/n미보유) 20191010 KHS
              GSL_HD_LIST[iDx, 39] := A1770_HD_LIST[iA, 39];  // 자율수수료 사용여부
              GSL_HD_LIST[iDx, 40] := A1770_HD_LIST[iA, 40];  // 자율 수수료 (ex ~30,25,20)
              GSL_HD_LIST[iDx, 41] := A1770_HD_LIST[iA, 41];  // 자율 수수료 설정 가능여부y->설정메뉴오픈
              GSL_HD_LIST[iDx, 42] := A1770_HD_LIST[iA, 42];  // 자체발행쿠폰사용여부
              GSL_HD_LIST[iDx, 43] := A1770_HD_LIST[iA, 43];  // 복합결제 설정 여부 y/n  20201104 LYB
              GSL_HD_LIST[iDx, 44] := A1770_HD_LIST[iA, 44];  // 대표번호별 지역정보 시도
              GSL_HD_LIST[iDx, 45] := A1770_HD_LIST[iA, 45];  // 대표번호별 지역정보 시군구
              GSL_HD_LIST[iDx, 46] := A1770_HD_LIST[iA, 46];  // 대표번호별 지역정보 읍면동
							GSL_HD_LIST[iDx, 47] := A1770_HD_LIST[iA, 47];  // 연합코드
							GSL_HD_LIST[iDx, 48] := A1770_HD_LIST[iA, 48];  // 일반콜 전환 가능 여부 20210705 KHS
							GSL_HD_LIST[iDx, 49] := A1770_HD_LIST[iA, 49];  // 지원금 사용여부 20210708 KHS
							GSL_HD_LIST[iDx, 50] := A1770_HD_LIST[iA, 50];  // 지원금액 20210708 KHS
							GSL_HD_LIST[iDx, 51] := A1770_HD_LIST[iA, 51];  // 건당보험료무료 자동적용사용여부 20210906 KM진행사항 KHS

              inc(iDx);
							inc(iA);
            end;
          end else
          begin
				  	for i := 0 to lst_Result.length - 1 do
  					begin
	  					GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

              sHDNO := ls_Rcrd[5];
              sBRNO := ls_Rcrd[0];
              if sHDNO = fHDNO then
              begin
                if sBRNO <> fBRNO then
                begin
                  inc(iCnt);
                end;
                if (lst_Result.length - 1) = i then
                begin
                  GT_BRANCHCOUNT.BRCODE.add(sHDNO);
                  GT_BRANCHCOUNT.BRTCNT.add(ls_Rcrd[24]);
                  GT_BRANCHCOUNT.BRSCNT.add(inttostr(iCnt));
                end;
              end else
              begin
                if fHDNO <> '' then
                begin
                  GT_BRANCHCOUNT.BRCODE.add(fHDNO);
                  GT_BRANCHCOUNT.BRTCNT.add(fHDCNT);
                  GT_BRANCHCOUNT.BRSCNT.add(inttostr(iCnt));
                  iCnt := 1;
                end;
                if (lst_Result.length - 1) = i then
                begin
                  GT_BRANCHCOUNT.BRCODE.add(sHDNO);
                  GT_BRANCHCOUNT.BRTCNT.add(ls_Rcrd[24]);
                  GT_BRANCHCOUNT.BRSCNT.add(inttostr(iCnt));
                end;
              end;

              // [지사, 지사명, 대표번호, 기본료, 콜센터]
              GSL_HD_LIST[i, 0] := ls_Rcrd[0]; // 지사코드
              GSL_HD_LIST[i, 1] := ls_Rcrd[1]; // 지사명
              GSL_HD_LIST[i, 2] := ls_Rcrd[2]; // 대표번호
              GSL_HD_LIST[i, 3] := ls_Rcrd[3]; // 요금기본료
              GSL_HD_LIST[i, 4] := ls_Rcrd[4]; // 콜센터
              GSL_HD_LIST[i, 5] := ls_Rcrd[5]; // 본사코드
              GSL_HD_LIST[i, 6] := ls_Rcrd[7]; // 안내멘트
              GSL_HD_LIST[i, 7] := ls_Rcrd[8]; // 상황실번호
              GSL_HD_LIST[i, 8] := '1'; // ls_Rcrd[9]; // 기사수(퇴직, 삭제제외)
              GSL_HD_LIST[i, 9] := ls_Rcrd[9]; // 모바일쿠폰 사용여부
              GSL_HD_LIST[I, 10] := ls_Rcrd[10]; // 강제배차 사용여부(연합설정)
              GSL_HD_LIST[I, 11] := ls_Rcrd[11]; // 카드종류코드('01' 베스텍컴, '02' KSNET, '' 미사용)
              GSL_HD_LIST[I, 12] := ls_Rcrd[12]; // 이관콜센터에 고객정보(이용횟수, 고객명, 적요) 익일숨김
              GSL_HD_LIST[I, 13] := ls_Rcrd[13]; // 이관콜센터에 ~분이후 고객번호 숨김
              GSL_HD_LIST[I, 14] := ls_Rcrd[14]; // 이관콜센터 상담원에 관리권한 부여(string[3] wk||cu||etc 'y/n')
              GSL_HD_LIST[I, 15] := ls_Rcrd[15];  // 고객등급 그룹
              GSL_HD_LIST[I, 16] := ls_Rcrd[16];  // 취소상태 오더를 문의로 변경(연합설정)
              GSL_HD_LIST[I, 17] := ls_Rcrd[17];  // y(접수창 사용)y(지사)y(본사)y(연합)y(가능여부확인) 플러스콜 사용여부[지사,본사,연합] --> 예) 사용:'yyy' or 미사용:'nyy' (n 1개라도 있으면 미사용)
              GSL_HD_LIST[I, 18] := ls_Rcrd[18];  // 대표지사여부
              GSL_HD_LIST[I, 19] := ls_Rcrd[19];  // 탁송여부
              GSL_HD_LIST[I, 20] := ls_Rcrd[20];  // 지사내 기사 수
              GSL_HD_LIST[I, 21] := ls_Rcrd[21];  // 본사명
              GSL_HD_LIST[I, 22] := ls_Rcrd[22];  // 패밀리 본사 여부 'y=패밀리본사'
              GSL_HD_LIST[I, 23] := ls_Rcrd[23];  // 연합설정-대표번호변경
              GSL_HD_LIST[I, 24] := ls_Rcrd[24];  // 설정 본사의 지사 수'
              GSL_HD_LIST[I, 25] := ls_Rcrd[25];  // 고객어플 사용 유무  20130225 LYB 추가
              GSL_HD_LIST[I, 26] := ls_Rcrd[26];  // 콜센터2 추가 20150805KHS

              GSL_HD_LIST[I, 27] := ls_Rcrd[27];  // 콜벨사용본사 콜벨사용여부는 사용=y, 미사용 = '' or n
              GSL_HD_LIST[I, 28] := ls_Rcrd[28];  // CMNIPCC 사용여부
              GSL_HD_LIST[I, 29] := ls_Rcrd[29];  // CMNIPCC 업체코드
              GSL_HD_LIST[I, 30] := ls_Rcrd[30];  // LBS 사용여부
              GSL_HD_LIST[I, 31] := ls_Rcrd[31];  // AI 사용여부
              GSL_HD_LIST[I, 32] := ls_Rcrd[32];  // #4 사용여부(셔틀 유닉드라이브 A5433 유닉드라이브 S316 )
              GSL_HD_LIST[I, 33] := ls_Rcrd[33];  // 마일리지 사용액 마일리지 적립

              GSL_HD_LIST[I, 34] := '';
              if ls_Rcrd.count > 34 then GSL_HD_LIST[I, 34] := ls_Rcrd[34];  // 현금 사용액 마일리지 적립

              GSL_HD_LIST[I, 35] := '';
              if ls_Rcrd.count > 35 then GSL_HD_LIST[I, 35] := ls_Rcrd[35];  // 탁송연합콜 접수창체크옵션(y,n,'',f) + 지사탁송연합콜사용여부 (y,n)+ 본사탁송연합콜사용여부(y,n) + 연합탁송연합콜사용여부(y,n)
                                                    // 5번째는 탁송연합 기사 가입가능여부
              GSL_HD_LIST[I, 36] := '';
              if ls_Rcrd.count > 36 then GSL_HD_LIST[I, 36] := ls_Rcrd[36];  // AIPBX_OUT_USE_YN : AI 아웃바운드 지사사용여부 (y/n) 20190707 KHS

              GSL_HD_LIST[I, 37] := '';
              if ls_Rcrd.count > 37 then GSL_HD_LIST[I, 37] := ls_Rcrd[37];  // AIPBX_OUT_USE_YN : AI 아웃바운드 대표번호별 사용여부 (y/n) 20190717 KHS

              GSL_HD_LIST[I, 38] := '';
              if ls_Rcrd.count > 38 then GSL_HD_LIST[I, 38] := ls_Rcrd[38];  // BR_TEL_AUTH_YN 대표번호 증명서 보유여부 (y보유/n미보유) 20191010 KHS

              GSL_HD_LIST[I, 39] := '';
              GSL_HD_LIST[I, 40] := '';
              GSL_HD_LIST[I, 41] := '';
              if ls_Rcrd.count > 39 then
              begin
                GSL_HD_LIST[I, 39] := ls_Rcrd[39];  // 자율수수료 사용여부( y:사용가능, n:사용불가, Y:기본으로사용(변경가능), F: 강제 사용(변경 불가) )
                GSL_HD_LIST[I, 40] := ls_Rcrd[40];  // 자율 수수료 (ex 30,30,30,25,25,20'  ','<= 1분간격{접수,1분경과,2분경과,3분경과,4분경과,5분경과}
                GSL_HD_LIST[I, 41] := ls_Rcrd[41];  // 자율 수수료 설정 가능여부y->설정메뉴오픈
              end;

              GSL_HD_LIST[I, 42] := '';
              if ls_Rcrd.count > 42 then GSL_HD_LIST[I, 42] := ls_Rcrd[42];  // 자체발행쿠폰사용여부

              GSL_HD_LIST[I, 43] := '';
							if ls_Rcrd.count > 43 then GSL_HD_LIST[I, 43] := ls_Rcrd[43];  // 복합결제 설정 여부 y/n  20201104 LYB

              GSL_HD_LIST[I, 44] := '';
              GSL_HD_LIST[I, 45] := '';
							GSL_HD_LIST[I, 46] := '';
              GSL_HD_LIST[I, 47] := '';
              if ls_Rcrd.count > 44 then
              begin
                GSL_HD_LIST[I, 44] := ls_Rcrd[44];  // 대표번호별 지역정보 시도
                GSL_HD_LIST[I, 45] := ls_Rcrd[45];  // 대표번호별 지역정보 시군구
                GSL_HD_LIST[I, 46] := ls_Rcrd[46];  // 대표번호별 지역정보 읍면동
								GSL_HD_LIST[I, 47] := ls_Rcrd[47];  // 연합코드
							end;

							if ls_Rcrd.count > 48 then
							begin
								GSL_HD_LIST[I, 48] := ls_Rcrd[48];  // 일반콜 전환 가능 여부 20210705 KHS  [제휴콜전환][노쇼완료]
							end;
							
							if ls_Rcrd.count > 49 then
							begin
								GSL_HD_LIST[I, 49] := ls_Rcrd[49];  // 지원금 사용여부 20210708 KHS
							end;
							if ls_Rcrd.count > 50 then
							begin
								GSL_HD_LIST[I, 50] := ls_Rcrd[50];  // 지원금액 20210708 KHS
							end;
							if ls_Rcrd.count > 51 then
							begin
								GSL_HD_LIST[I, 51] := ls_Rcrd[51];  // 건당보험료무료 자동적용사용여부 20210906 KM진행사항 KHS
							end;

							fHDCNT := ls_Rcrd[24];
              fHDNO := ls_Rcrd[5];
              fBRNO := ls_Rcrd[0];
            end;
          end;
        finally
          ls_Rcrd.Free;
        end;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    xDom := Nil;
  end;
end;

procedure TFrm_progress.Proc_Ending(ss_Gubun: Boolean);
begin
  if not ss_Gubun then GMessagebox(MSG428 + CRLF + '재 실행바람니다', CDMSE);
  Frm_Login.ModalResult := mrOk;
  Close;
end;

procedure TFrm_progress.proc_recieve(ss_XML: WideString);
var
  ls_ClientKey: string;
begin
  ls_ClientKey := GetXmlClientKey(ss_XML);

  case StrToIntDef(Copy(ls_ClientKey, 5, 4), 0) of
    1100:
      begin
        Proc_KeyNumber_List_Insert(ss_XML); // 대표번호조회
        gs_Mode_Bef := gs_Mode_Aft;

        Frm_Main.proc_bubinlist_insert;
        Proc_Ending(True);
      end;
    3000:
      begin
        Proc_CrBrData_Insert(ss_XML);
      end;
  end;
end;

procedure TFrm_progress.Proc_CrBrData_List;
var
  ls_TxLoad: string; // XML File Load
  ls_TxQry, rv_str, sQueryTemp: string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
begin
  //지사순서가져오기
  ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
  fGet_BlowFish_Query(GSQ_CR_BRNOLIST, sQueryTemp);
  ls_TxQry := sQueryTemp;

  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'LIST3000', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

  slReceive := TStringList.Create;
  try
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
    begin
      rv_str := slReceive[0];
      if trim(rv_str) <> '' then
      begin
        ls_rxxml := rv_str;
        proc_recieve(ls_rxxml);
      end;
    end;
  finally
    FreeAndNil(slReceive);
  end;
end;

procedure TFrm_progress.proc_CXELogUpload;
Var vFileNm1, vFileNm2 : String;
begin
  try
    vFileNm1 := 'CXELog_' + GT_USERIF.BR + FormatDateTime('_YYYYMMDDHHNNSS_1', Now) + '.log';
    vFileNm2 := 'CXELog_' + GT_USERIF.BR + FormatDateTime('_YYYYMMDDHHNNSS_2', Now) + '.log';

    if FileExists(WINTEMPDIRECTORY + 'CXELogBak.log')  then RenameFile(WINTEMPDIRECTORY + 'CXELogBak.log' , WINTEMPDIRECTORY + vFileNm1 ); // 파일명변경
    if FileExists(WINTEMPDIRECTORY + 'CXELog1Bak.log') then RenameFile(WINTEMPDIRECTORY + 'CXELog1Bak.log', WINTEMPDIRECTORY + vFileNm2 ); // 파일명변경

  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_progress.Proc_CrBrData_Insert(ss_XML: WideString);
var
  i: Integer;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;

  ls_MSG_Err: string;
  ls_RV_Cnt: Integer;
begin
  Screen.Cursor := crHourGlass;
  xdom := ComsDomDocument.Create;
  if not xdom.loadXML(ss_XML) then Exit;

  ls_MSG_Err := GetXmlErrorCode(ss_XML);
  if ('0000' = ls_MSG_Err) then
  begin
    ls_RV_Cnt := GetXmlRecordCount(ss_XML); // 조회건수
    if (0 < ls_RV_Cnt) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

      ls_Rcrd := TStringList.Create;
      try
        for i := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
          scb_CrBrCode.Add(ls_Rcrd[0]);
        end;
      finally
        ls_Rcrd.Free;
      end;
    end;
  end else
  begin
    GMessagebox(MSG422, CDMSE);
  end;
  Screen.Cursor := crDefault;
end;

procedure TFrm_progress.Proc_WibroLog;
var
  Param, ErrMsg: string;
  ErrCode: Integer;
begin
	Param := GT_USERIF.ID + '│' + GT_USERIF.MC + '│' + En_Coding(GetMacAddressListStr);

  if not RequestBase(GetCallable05('WibroLog', 'client_log.wibro_log', Param), ErrCode, ErrMsg) then
  begin
    Exit;
  end;
end;

procedure TFrm_progress.proc_Get_POIChNmList;
var
	XmlData, Param, ErrMsg : string;
	xdom: msDomDocument;
	lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd : TStringList;
	i, ErrCode : Integer;
begin
  SetDebugeWrite('pro.proc_Get_POIChNmList');
	try
		Param := GT_USERIF.BR;

		if not RequestBase(GetSel05('GET_POI_NAME_SEARCH', 'MNG_ORDER.GET_POI_NAME_SEARCH', '10000', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('검색 POI 치환 리스트 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Exit;
		end;

		xdom := ComsDomDocument.Create;
		xdom.loadXML(XmlData);
    try
		  lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');

		  if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
		  begin
		  	lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

        GS_POIAName.Clear;
        GS_POIRName.Clear;
		  	ls_Rcrd := TStringList.Create;
		  	try
		  		for i := 0 to lst_Result.length - 1 do
		  		begin
		  			GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
            if ls_Rcrd[3] = 'y' then
            begin
              GS_POIAName.Add(ls_Rcrd[1]);
              GS_POIRName.Add(ls_Rcrd[2]);
            end;
		  		end;
		  	finally
		  		ls_Rcrd.Free;
		  	end;
		  end;
    finally
      xdom := Nil;
    end;
	except
		on e: exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_progress.proc_Global_Config;
var
  XmlData, Param, ErrMsg, sMsg : string;
  ls_Rcrd, lsTmp, slTmp : TStringList;
  ErrCode, i : Integer;
  fileVersion, sSvrList, sSvrIp, sSVRCONFIG_UPDATE, sOpt, sUser : string;
  ln_Env : TIniFile;
begin
	Param := '';

  if not RequestBase(GetCallable05('GLOBALCONFIG', 'cas.get_global_config', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('지역 수수료 설정값 로드 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    GT_USERIF.UseCallPass := False;
    ShareMsnYN := 'n';
    Exit;
  end;
  ls_Rcrd := TStringList.Create;
  lsTmp := TStringList.Create;
  try
    GetTextSeperationEx('│', GetXmlResult(XmlData), ls_Rcrd);

    // 콜패스 사용유무 설정
    if Length(ls_Rcrd[0]) > 0 then
      GT_USERIF.UseCallPass := True
    else
      GT_USERIF.UseCallPass := False;

    //메신저 사용유무 설정
    ShareMsnYN := ls_Rcrd[1];
    //지역 수수료 사용유무 설정
    Area_Charge_YN := ls_Rcrd[2];
    //지역 수수료그룹 번호
    Area_ChargeGrp_No := ls_Rcrd[3];
    //지역 수수료버전
    Area_Charge_Version := ls_Rcrd[4];
    //수수료 편집기능 사용여부
		Area_Edit_Charge_YN := ls_Rcrd[5];

		//콜센터 지영명 좌표등록 2012.03.09 KHS
		Area_CenterName := ls_Rcrd[6];  //콜센터위치
		if ls_Rcrd[7] <> '0' then  //설정지역 좌표가 없을경우 대표지역 중심좌표로 대체  Main_map_Lat
			Area_CenterLat  := ls_Rcrd[7];  //Lat
		if ls_Rcrd[8] <> '0' then
			Area_CenterLon  := ls_Rcrd[8];  //Lon
		GONGuCALLYN     := ls_Rcrd[9];  //공유콜현황 지역별 조회 가능여부
		gCidAutoUseYN   := ls_Rcrd[10];  //CID 자동 찾기 사용 유무   20121220 LYB

		ORDER_COLOR_Version := ls_Rcrd[11];  // 접수색상버전

    GT_USERIF.Jon_Lmt := StrToIntDef(ls_Rcrd[12], 0);  // 오더접수제한건수
    GT_JON_MAX := GT_USERIF.Jon_Lmt;
    GT_USERIF.MultiWorkerCnt  := StrToIntDef(ls_Rcrd[13], 0);  // 다중기사등록개수

		SHUTTLE_USE := ls_Rcrd[14]; //셔틀사용 유무(연합설정)


    try
      GS_SERVERCIDIPLIST := ls_Rcrd[15];  // CID 서버 목록
//      GS_SERVERCIDIPLIST := 'sntest┌이영범과장┌127.0.0.1─sntest┌노원서버┌192.168.2.52─sntest┌수서서버┌192.168.2.53';
    except
      GS_SERVERCIDIPLIST := '';
    end;

    // CID 서버 목록 셋팅
    if Trim(GS_SERVERCIDIPLIST) <> '' then
    begin
      ln_Env := TIniFile.Create(ENVPATHFILE);
      try
        // sntest┌이영범과장┌127.0.0.1─sntest1┌노원서버┌192.168.2.54
    		sSvrList := ln_Env.ReadString('CID_COMM', 'CID_SELSVRLIST', '');
        sSvrIp   := ln_Env.ReadString('CID_COMM', 'CID_SELSVRIP', '');

//        if ( ( Pos(sSvrIp, GS_SERVERCIDIPLIST) = 0 )  Or ( Trim(sSvrIP) = '' ) ) then
        begin
    			SetServerCidList(Trim(GS_SERVERCIDIPLIST), lsTmp);
          Frm_Main.CbCidSvrIP.Properties.Items.Clear;
          for i := 0 to lsTmp.Count - 1 do
          begin
            Frm_Main.CbCidSvrIP.Properties.Items.Add(lsTmp[i]);
          end;

          if lsTmp.Count = 1 then
          begin
            sSvrIp := Copy(lsTmp[0], Pos('[', lsTmp[0])+1, Length(lsTmp[0])-2);
            sSvrIP := ReplaceAll(sSvrIP, ']', '');
            ln_Env.WriteString('CID_COMM', 'CID_SELSVRIP', sSvrIp);
            Frm_Main.CbCidSvrIP.ItemIndex := 0;
          end else
          begin
            Frm_CidSvrSel := TFrm_CidSvrSel.Create(Nil);
            Frm_CidSvrSel.CbCidSvrIP.Properties.Items := Frm_Main.CbCidSvrIP.Properties.Items;
            try
              Frm_CidSvrSel.ShowModal;
            finally
              Frm_CidSvrSel.Free;
            end;
          end;
        end;
			finally
				FreeAndNil(ln_Env);
			end;
    end else
    begin
  		SetServerCidList(Trim(sSvrList), lsTmp);
      Frm_Main.CbCidSvrIP.Properties.Items.Clear;
      Frm_Main.CbCidSvrIP.Tag := 0;
      for i := 0 to lsTmp.Count - 1 do
      begin
        Frm_Main.CbCidSvrIP.Properties.Items.Add(lsTmp[i]);
        if Pos(sSvrIp, lsTmp[i]) > 0 then
        begin
          Frm_Main.CbCidSvrIP.Tag := i;
          Frm_Main.CbCidSvrIP.Hint := sSvrIP;
        end;
      end;
      Frm_Main.CbCidSvrIP.ItemIndex := Frm_Main.CbCidSvrIP.Tag;
    end;

		if ls_Rcrd[17] = 'y' then	GS_NAVER_APIUse := 'y'
												 else GS_NAVER_APIUse := 'n';

		if ls_Rcrd[18] = 'y' then	GS_CALLMU_Use := 'y'
												 else GS_CALLMU_Use := 'n';

		if ls_Rcrd.Count > 19 then gOShotUserId := ls_Rcrd[19];
		if ls_Rcrd.Count > 20 then gOShotUserPass := ls_Rcrd[20];
		if ls_Rcrd.Count > 23 then GS_CALL2_Use := ls_Rcrd[21];
		if ls_Rcrd.Count > 22 then SHUTTLE_BrNo := ls_Rcrd[22]; //셔틀지사(연합설정) 20180314 KHS
		if ls_Rcrd.Count > 23 then //카카오이용유무 지방권만 해당됨. 20190328 KHS
		begin
			if ls_Rcrd[23] = 'y' then	GT_KAKAOUse := True
													 else GT_KAKAOUse := False;
		end;

		if ls_Rcrd.Count > 24 then //Online MySQL 사용정보 20200730 KHS
		begin
//  		ls_Rcrd[24] := 'y,203.251.202.18,61.77.191.104,22306,B100_chargedb,b100charge,a6618**';
			if (Copy(ls_Rcrd[24], 1, 1) = 'y') Or (GB_365System) then
			begin
        if GB_365System then    // 원주365버전은 무조건 동일한 온라인요금서버로 접속
        begin
          CHARGE_Online_USE := 'y';
          CHARGE_Online_IP1 := '203.251.202.18';
          CHARGE_Online_IP2 := '61.77.191.104';
          CHARGE_Online_PORT   := '22306';
          CHARGE_Online_DBNAME := 'A283_chargedb';
          CHARGE_Online_ID  := 'a283charge';
          CHARGE_Online_PW  := 'a6618**';
        end else
        begin
  				lsTmp.Clear;
	  			GetTextSeperationEx(',', ls_Rcrd[24], lsTmp);   // y,203.251.202.18,61.77.191.104,22306,B100_chargedb,b100charge,a6618**
          try
            CHARGE_Online_USE := lsTmp[0];
            CHARGE_Online_IP1 := lsTmp[1];
            CHARGE_Online_IP2 := lsTmp[2];
            CHARGE_Online_PORT   := lsTmp[3];
            CHARGE_Online_DBNAME := lsTmp[4];
            CHARGE_Online_ID  := lsTmp[5];
            CHARGE_Online_PW  := lsTmp[6];
          except
          end;
        end;

				if CHARGE_Online_USE = 'y' then
				begin
					CHARGE_Online_SetIP := CHARGE_Online_IP2;

					dmCharge.FDC_OnLine_41.Connected := False;
					dmCharge.FDC_OnLine_41.Params.Clear;
					dmCharge.FDC_OnLine_41.Params.Add('DriverID=MySQL');
					dmCharge.FDC_OnLine_41.Params.Add('CharacterSet=utf8');
					dmCharge.FDC_OnLine_41.Params.Add('Database='  + CHARGE_Online_DBNAME);
					dmCharge.FDC_OnLine_41.Params.Add('Password='  + CHARGE_Online_PW);
					dmCharge.FDC_OnLine_41.Params.Add('User_name=' + CHARGE_Online_ID);
					dmCharge.FDC_OnLine_41.Params.Add('PORT='      + CHARGE_Online_PORT);
					dmCharge.FDC_OnLine_41.Params.Add('Server='    + CHARGE_Online_IP1);

					dmCharge.FDC_OnLine_117.Connected := False;
					dmCharge.FDC_OnLine_117.Params.Clear;
					dmCharge.FDC_OnLine_117.Params.Add('DriverID=MySQL');
					dmCharge.FDC_OnLine_117.Params.Add('CharacterSet=utf8');
					dmCharge.FDC_OnLine_117.Params.Add('Database='  + CHARGE_Online_DBNAME);
					dmCharge.FDC_OnLine_117.Params.Add('Password='  + CHARGE_Online_PW);
					dmCharge.FDC_OnLine_117.Params.Add('User_name=' + CHARGE_Online_ID);
					dmCharge.FDC_OnLine_117.Params.Add('PORT='      + CHARGE_Online_PORT);
					dmCharge.FDC_OnLine_117.Params.Add('Server='    + CHARGE_Online_IP2);
				end;
			end	else
			begin
				CHARGE_Online_USE := Copy(ls_Rcrd[24], 1, 1);
				if CHARGE_GUBUN = 'O' then
				begin
          ln_Env := TIniFile.Create(ENVPATHFILE);
          try
            ln_Env.WriteString('CHARGE', 'CH_GUBUN', 'P');
          finally
            FreeAndNil(ln_Env);
          end;
					CHARGE_GUBUN := 'P';
				end;
			end;
		end;

    if ls_Rcrd.Count > 25 then //카드(후불) 가맹점코드와 관련없이 해당연합설정 . 20210225 KHS
    begin
      if ls_Rcrd[25] = 'y' then GT_SPOT_CARD_CFG_YN := True
                           else GT_SPOT_CARD_CFG_YN := False;
    end;

		if ls_Rcrd.Count > 26 then //일반콜 전환 가능 여부 20210630 KHS  //사용안함 gettreelist로 이동 
    begin
      if ls_Rcrd[26] = 'y' then GT_SERVICE_TYPE_CHANGE := True
													 else GT_SERVICE_TYPE_CHANGE := False;
    end;

		if ls_Rcrd.Count > 28 then //본사설정파일 업데이트 일자
    begin
      try
        slTmp := TStringList.Create;
        GetTextSeperationEx2(',', ls_Rcrd[28], slTmp);
        if slTmp.Count >= 1 then GS_SVRCONFIG_UPDATE := slTmp[0];
        if slTmp.Count >= 2 then sOpt  := slTmp[1];
        if slTmp.Count >= 3 then sUser := slTmp[2];
      finally
        FreeAndNil(slTmp);
      end;
//      GS_SVRCONFIG_UPDATE := Copy(ls_Rcrd[28], 1, Length(ls_Rcrd[28]) -2 );
//      sOpt := Rightstr(ls_Rcrd[28], 1);

			ln_Env := TIniFile.Create(ENVPATHFILE);
			try
				sSVRCONFIG_UPDATE := ln_Env.ReadString('GER', 'SVRCONFIG_UPDATE', '')
			finally
				FreeAndNil(ln_Env);
			end;

      if ( GS_SVRCONFIG_UPDATE <> '' ) And (GS_SVRCONFIG_UPDATE <> sSVRCONFIG_UPDATE) And Not (FileExists('C:\sqnmsg.crc')) then
//      if ( GS_SVRCONFIG_UPDATE <> '' ) And (GS_SVRCONFIG_UPDATE <> sSVRCONFIG_UPDATE) then
      begin
        if sOpt = '0' then
        begin
          if Trim(sUser) <> '' then
            sMsg := '본사설정파일이' + CRLF +
                    Format('[작성자 : %s]', [sUser]) + CRLF +
                    Format('[작성일자 : %s]', [GetStrToDateTimeGStr(GS_SVRCONFIG_UPDATE, 3)]) + CRLF +
                    '업데이트 되었습니다.' + CRLF +
                    '설정파일을 업데이트 하시겠습니까?'
          else
            sMsg := '본사설정파일이 업데이트 되었습니다.' + #13#10 +
                    '설정파일을 업데이트 하시겠습니까?';
          if Application.MessageBox(PChar(sMsg), PChar(GS_APPNAME), MB_YESNO +	MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
          begin
            try
              slTmp := TStringList.Create;
              Frm_Main.fSetIniFile('2', GT_USERIF.HD, sOpt, slTmp, False);
            finally
              FreeAndNil(slTmp);
            end;
          end;
        end else
        begin
          try
            slTmp := TStringList.Create;
            Frm_Main.fSetIniFile('2', GT_USERIF.HD, sOpt, slTmp, False);
          finally
            FreeAndNil(slTmp);
          end;
        end;
      end;
    end;

		Proc_Process;   // 위치변경

//    GS_CALL2_Use := 'n';

		////////////////////////////////공유콜 시도 2012.04.30////////////////////////////////////////////////////////////////////////
    if GONGuCALLYN  = 'y' then
		begin
      Frm_Main.cbbSido.Visible := True;
      Frm_Main.cbbGugun.Visible := True;
      Frm_Main.cbbSido.Clear;
      Frm_Main.cbbSido.Properties.BeginUpdate;
      try
        Frm_Main.cbbSido.Properties.Items.CommaText := '전체,서울,경기,인천,대전,충남,충북,강원,대구,경북,부산,울산,경남,전북,광주,전남,제주';
        if GB_365System then Frm_Main.cbbSido.ItemIndex := 7
                        else Frm_Main.cbbSido.ItemIndex := 0;
      finally
        Frm_Main.cbbSido.Properties.EndUpdate;
      end;
    end else
    begin
      Frm_Main.cbbSido.Visible := False;
			Frm_Main.cbbGugun.Visible := False;
    end;
    ////////////////////////////////공유콜 시도 2012.04.30////////////////////////////////////////////////////////////////////////

		if Area_Charge_YN = 'y' then
		begin
			//tckenv.ini 파일에 있는 수수료 버전값 읽어오기
			ln_Env := TIniFile.Create(ENVPATHFILE);
			try
				fileVersion := ln_Env.ReadString('Cache', 'AreaDriverCharge.Version', '');
			finally
				FreeAndNil(ln_Env);
			end;

			//지역 수수료 버전셋팅 및 수수료 데이타 요청.
			Proc_Area_Driver_Charge(fileVersion);
		end;

		if gCidAutoUseYN = 'n' then
    begin
      //tckenv.ini 파일에 있는 수수료 버전값 읽어오기
      ln_Env := TIniFile.Create(ENVPATHFILE);
      try
				ln_Env.WriteString('CID_COMM', 'CIDSERVERIPFIND', 'N');
				GT_CIDINFO.Auto_Search := 'N';
      finally
        FreeAndNil(ln_Env);
      end;
		end;

		if ORDER_COLOR_Version <> '0' then
		begin
			//tckenv.ini 파일에 있는 오더컬러 버전값 읽어오기
			ln_Env := TIniFile.Create(ENVPATHFILE);
			try
				fileVersion := ln_Env.ReadString('Cache', 'ORDER_COLOR.Version', '');
			finally
				FreeAndNil(ln_Env);
			end;

			//지역 수수료 버전셋팅 및 수수료 데이타 요청.
			Proc_BEANCH_ORDER_COLOR(fileVersion);
		end;
	finally
    FreeAndNil(ls_Rcrd);
    FreeAndNil(lsTmp);
  end;
end;

procedure TFrm_progress.Proc_Area_Driver_Charge(fileVersion: string);
var
	ln_Env: TIniFile;
begin
	ln_Env := TIniFile.Create(ENVPATHFILE);
	try
		if fileVersion = '' then
		begin
			ln_Env.WriteString('Cache', 'AreaDriverCharge.Version', Area_Charge_Version);
			Proc_Area_ChargeList;
		end else
		begin
			if StrToIntDef(fileVersion, 0) <> StrToIntDef(Area_Charge_Version, 0) then
			begin
				ln_Env.WriteString('Cache', 'AreaDriverCharge.Version', Area_Charge_Version);
				Proc_Area_ChargeList;
			end else
			begin
				if FileExists(DRVCHARGEPATH) then
				begin
					Area_Charge_List.LoadFromFile(DRVCHARGEPATH);
					if Area_Charge_List.Count < 1 then
						Proc_Area_ChargeList;
				end else
				begin
					Proc_Area_ChargeList;
				end;
			end;
		end;
	finally
		FreeAndNil(ln_Env);
	end;
end;

procedure TFrm_progress.Proc_Area_ChargeList;
var
  ChargeFile: TextFile;
  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, J, ErrCode: Integer;
begin
	// 수수료 파일이 있는지 여부확인
	if FileExists(DRVCHARGEPATH) then
  begin
    // 파일이 있을경우
    try
      DeleteFile(DRVCHARGEPATH);
      AssignFile(ChargeFile, DRVCHARGEPATH);
      Rewrite(ChargeFile);
    except
			GMessagebox('지역 수수료 설정값 로드중 오류발생', CDMSE);
      CloseFile(ChargeFile);
      Exit;
    end;
  end else
  begin
    // 파일이 없을경우
		try
			AssignFile(ChargeFile, DRVCHARGEPATH);
      Rewrite(ChargeFile);
    except
      GMessagebox('지역 수수료 설정파일 생성중 오류발생', CDMSE);
      CloseFile(ChargeFile);
      Exit;
    end;
  end;

	Param := Area_ChargeGrp_No;
  // 2011.01.27 문제의건 확인(어째서 100개뿐인가)
	if not RequestBase(GetSel05('DRVCHARGE', 'cas.get_area_driver_charge_list', '10000', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('고객데이터 로드 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

  //서버로부터 응답받은 데이터를 확인해본다..
  xdom := ComsDomDocument.Create;
  xdom.loadXML(XmlData);

  lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
  if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text, 0) > 0 then
  begin
    J := StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0);
    if Area_Charge_List.Count > 0 then
      Area_Charge_List.Clear;

    ls_Rcrd := TStringList.Create;
    try
      for I := 0 to J - 1 do
      begin
        if lst_Result.item[i].attributes.getNamedItem('Value').Text = '' then
          Continue;
        GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

				Area_Charge_List.Append(ls_Rcrd[0]+ls_Rcrd[1]+ls_Rcrd[2]+'│'+ls_Rcrd[3]);
        Writeln(ChargeFile, ls_Rcrd[0]+ls_Rcrd[1]+ls_Rcrd[2]+'│'+ls_Rcrd[3]);
      end;
    finally
      ls_Rcrd.Free;
      CloseFile(ChargeFile);
    end;
  end;
end;

procedure TFrm_progress.Proc_BEANCH_ORDER_COLOR(fileVersion: string);
var
	ln_Env: TIniFile;
begin
	ln_Env := TIniFile.Create(ENVPATHFILE);
	try
		if fileVersion = '' then
		begin
			ln_Env.WriteString('Cache', 'ORDER_COLOR.Version', ORDER_COLOR_Version);
			Proc_BRANCH_COLORList;
		end else
		begin
			if StrToIntDef(fileVersion, 0) <> StrToIntDef(ORDER_COLOR_Version, 0) then
			begin
				ln_Env.WriteString('Cache', 'ORDER_COLOR.Version', ORDER_COLOR_Version);
				Proc_BRANCH_COLORList;
			end else
			begin
				Proc_BRANCH_COLORList;
			end;
		end;
	finally
		FreeAndNil(ln_Env);
	end;
end;

end.

unit xe_JON01SPThread;

interface

uses
  Windows, System.Classes, System.SysUtils, System.Math, ActiveX, Vcl.Dialogs, xe_gnl3, SmartSRXLib_TLB;

type
  TJON01SPThread = class(TThread)
  private
    FiTag   : Integer;
    FiIndex : Integer;
		gViaArrayLon, gViaArrayLat : Array [0..6] of integer;
		giTotalTime: Integer;
		gdDistance : Double;
		
		procedure proc_Realdis_alculation(Var FRealKmPtr : TRealKmRecord);
    procedure proc_Complete;
		function proc_dis_Real_Via(AFromLon, AFromLat, AToLon, AToLat: Integer): Real;
    procedure procViaKm;
     // 경유지 포함 실거리 계산과 직선 거리 상이시 직선 거리 표시
    function func_Compare_dis_Sel(DKm, SKm : Double; Var Distance : Double) : Boolean;
		{ Private declarations }
	public
		constructor Create(piTag, piIndex : integer);
    destructor Destroy; override;
  protected
    procedure Execute; override;
  end;

implementation

{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure xe_JON01SPThread.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end;

    or

    Synchronize(
      procedure
      begin
        Form1.Caption := 'Updated in thread via an anonymous method'
      end
      )
    );

  where an anonymous method is passed.

  Similarly, the developer can call the Queue method with similar parameters as
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.

}

uses xe_GNL, xe_Func, Main, xe_Dm, FastStringFuncs;

{ xe_JON01SPThread }

constructor TJON01SPThread.Create(piTag, piIndex: integer);
begin
  FiTag := piTag;
  FiIndex := piIndex;
  CoInitialize(nil);
  inherited Create;
end;

procedure TJON01SPThread.Execute;
begin
  try
		if FiIndex = 1 then proc_Realdis_alculation(RealKmPtr_th1[FiTag]);
    if FiIndex = 2 then proc_Realdis_alculation(RealKmPtr_th2[FiTag]);
    if FiIndex = 3 then proc_Realdis_alculation(RealKmPtr_th3[FiTag]);
    if FiIndex = 4 then proc_Realdis_alculation(RealKmPtr_th4[FiTag]);

    Self.Terminate;
  except
  end;
  { Place thread code here }
end;

procedure TJON01SPThread.proc_Realdis_alculation(Var FRealKmPtr : TRealKmRecord);
Var StartLon, StartLat, EndLon, EndLat, ViaLon, ViaLat, i, iErr, iIndex, iTag, iCnt : Integer;
		aHour, aMin, aSec, aTotalTime : Integer;
		aDistance, aTmp : Double;
		sy, sx, sTmp, sOver, sSRIP : string;
		bVia : Boolean;

		tmpST, startTick  : DWord;
		tmpDT, delta      : DWord;
begin
	bVia := False;
  if GB_DEBUG_USE then tmpST := GetTickCount;

	if (FiIndex = 4) or (GT_USERIF.HD = 'A100')then
    startTick := GetTickCount;

  try
    case FiIndex of
    2 : begin
          RealKmPtr_th1[FiTag].UseYn    := False;
          RealKmPtr_th1[FiTag].CaActive := False;
        end;
    3 : begin
          RealKmPtr_th1[FiTag].UseYn    := False;
          RealKmPtr_th1[FiTag].CaActive := False;
          RealKmPtr_th2[FiTag].UseYn    := False;
          RealKmPtr_th2[FiTag].CaActive := False;
        end;
		4 : begin
          RealKmPtr_th1[FiTag].UseYn    := False;
          RealKmPtr_th1[FiTag].CaActive := False;
          RealKmPtr_th2[FiTag].UseYn    := False;
          RealKmPtr_th2[FiTag].CaActive := False;
          RealKmPtr_th3[FiTag].UseYn    := False;
          RealKmPtr_th3[FiTag].CaActive := False;
        end;
    end;

    try
			sSRIP := GS_SmartServerIP;

			if (GT_USERIF.ID = 'sntest') then
				Frm_Main.Frm_JON01N[FRealKmPtr.Tag].edt_RPIP.Text := GS_SmartServerIP;

			for i := 0 to 6 do
			begin
				gViaArrayLon[i] := 0;
				gViaArrayLat[i] := 0;
			end;
			iCnt := 0;
			if ( FRealKmPtr.StartXVal <> '' ) And ( FRealKmPtr.StartYVal <>  '') then
      begin
				Frm_Main.Frm_JON52[JON03_MAX_CNT].WGS84ToBessel(FRealKmPtr.StartYVal, FRealKmPtr.StartXVal, StartLon, StartLat);
				RouteMan.SetOrgLonLat(StartLon, StartLat);
				gViaArrayLon[iCnt] := StartLon; gViaArrayLat[iCnt] := StartLat;  //출발지 위치

			end;

      SetDebugeWrite('1. SmartSR Start Bessel : ' + IntToStr(FiIndex) + '-' + IntToStr(StartLon) + ',' + IntToStr(StartLat));

			RouteMan.ClearNode();
			//경유지 계산방식 변경. 기존 : (출->경->도) - (출->도) = 경유거리, 변경 : ((출->경) + (경->도) - (출->도) = 경유거리)  20210817 KHS 팀장님지시

			for i := 0 to 4 do
			begin
				if ( FRealKmPtr.ViaXVal[i] <> '' ) And ( FRealKmPtr.ViaYVal[i] <> '' ) then
				begin
					try
						inc(iCnt);
						bVia := True;
						SetDebugeWrite('1. SmartSR Via  : ' + IntToStr(FiIndex) + '-' + Copy(FRealKmPtr.ViaYVal[i], 1, 10) + ',' + Copy(FRealKmPtr.ViaXVal[i], 1, 10));
						Frm_Main.Frm_JON52[JON03_MAX_CNT].WGS84ToBessel(FRealKmPtr.ViaYVal[i], FRealKmPtr.ViaXVal[i], ViaLon, ViaLat);
						gViaArrayLon[iCnt] := ViaLon; gViaArrayLat[iCnt] := ViaLat;

						if not Frm_Main.Frm_JON01N[FRealKmPtr.Tag].gbViaError then
							RouteMan.AddNode(ViaLon, ViaLat);  //// 경유지는 필요하면 추가하세요.
					Except

					end;
				end;
			end;   

			if ( FRealKmPtr.EndXVal <> '' ) And ( FRealKmPtr.EndYVal <> '' ) then
      begin
				Frm_Main.Frm_JON52[JON03_MAX_CNT].WGS84ToBessel(FRealKmPtr.EndYVal, FRealKmPtr.EndXVal, EndLon, EndLat);
				RouteMan.SetDstLonLat(EndLon, EndLat);

				inc(iCnt);
				gViaArrayLon[iCnt] := EndLon; gViaArrayLat[iCnt] := EndLat;  //출발지 위치
			end;

			////// 양방향 탐색을 위해서는 아래의 옵션을 추가해 주세요. //////
      RouteMan.SetOrgDirectionToBoth();
      RouteMan.SetViaDirectionToBoth();
      RouteMan.SetDstDirectionToBoth();

      ////// Toll비
      RouteMan.SetTollFareType(1);

			////// 탐색 옵션 1.최적      2.최단
      ///              1.일반도로  2.고속도로
			///              1.무료      2.유로
      if GT_DISTANCE_SVR = 1 then
      begin
        if Frm_Main.Frm_JON01N[FRealKmPtr.Tag].fDirKm < 70 then
          RouteMan.Remote_SetRPCType(2, 1, 2)  // 최단, 일반도로, 유로
        else
          RouteMan.Remote_SetRPCType(2, 2, 2);  // 최단, 고속도로, 유로
      end else
      begin
				RouteMan.Remote_SetRPCType(GT_DISTANCE_ROUTETYPE, GT_DISTANCE_ROADTYPE, GT_DISTANCE_TOLLTYPE);
//        RouteMan.Remote_SetRPCType(2, 1, 2);  // 최단, 일반, 유료
      end;

      SetDebugeWrite('1. SmartSR Start : ' + IntToStr(FiIndex) + '-' + FRealKmPtr.StartAreaName + ',' + FRealKmPtr.StartXVal + ',' + FRealKmPtr.StartYVal);

			FRealKmPtr.info := RouteMan.SearchRoute3;
			
			if (FRealKmPtr.info <> nil) then
			begin
        try
          iErr := FRealKmPtr.info.GetResult;

          if iErr <= 0 then
          begin
            SetDebugeWrite('1. SmartSR Error1 : ' + IntToStr(FiIndex) + '-' + IntToStr(SR1ErrCnt) + '-' + IntToStr(SR2ErrCnt));

            if GS_SmartServerIP = SearchRoute1[0].IP then Inc(SR1ErrCnt)
                                                     else Inc(SR2ErrCnt);

            if ( Pos('검색', Frm_Main.Frm_JON01N[FRealKmPtr.Tag].curKm.Text) > 0 ) And
               ( FiIndex > 3 ) And
               ( Frm_Main.Frm_JON01N[FRealKmPtr.Tag].tmrThRealDis.Tag = 0 ) then
              Frm_Main.Frm_JON01N[FRealKmPtr.Tag].curKm.Text := '';

						if Not Frm_Main.Frm_JON01N[FRealKmPtr.Tag].giKmComplet then
              FRealKmPtr.CaActive := True
						else
              FRealKmPtr.CaActive := False;
            FRealKmPtr.UseYn := False;

						//경유포함 경탐시 에러일 경우 새로운 경탐방식을 위해 gbViaError := True; 
						if bVia then Frm_Main.Frm_JON01N[FRealKmPtr.Tag].gbViaError := True;
						Exit;
					end;
        Except
					 SetDebugeWrite('1. SmartSR Error2 : ' + IntToStr(FiIndex) + '-' + IntToStr(SR1ErrCnt) + '-' + IntToStr(SR2ErrCnt));

          if GS_SmartServerIP = SearchRoute1[0].IP then Inc(SR1ErrCnt)
                                                   else Inc(SR2ErrCnt);

					if ( Pos('검색', Frm_Main.Frm_JON01N[FRealKmPtr.Tag].curKm.Text) > 0 ) And
             ( Frm_Main.Frm_JON01N[FRealKmPtr.Tag].tmrThRealDis.Tag = 0 ) then
						Frm_Main.Frm_JON01N[FRealKmPtr.Tag].curKm.Text := '';

          if Not Frm_Main.Frm_JON01N[FRealKmPtr.Tag].giKmComplet then
            FRealKmPtr.CaActive := True
          else
            FRealKmPtr.CaActive := False;

          FRealKmPtr.UseYn := False;

          Exit;
        end;
				if GS_SmartServerIP = SearchRoute1[0].IP then SR1ErrCnt := 0
                                                 else SR2ErrCnt := 0;

        if Not Frm_Main.Frm_JON01N[FRealKmPtr.Tag].giKmComplet then
        begin
          aTmp := FRealKmPtr.info.GetTotalDistance;
          aTmp := Roundto(aTmp / 1000,-1);
          SetDebugeWrite('2. Lbl_Distance : ' + FloatToStr(aTmp));

					giTotalTime := FRealKmPtr.info.GetTotalTime;
					aTotalTime := FRealKmPtr.info.GetTotalTime;
					aHour := aTotalTime div 3600;
					aMin  := (aTotalTime - (aHour * 3600)) div 60;
					aSec  := (aTotalTime - (aHour * 3600) - (aMin * 60));
					if aHour > 0 then
						SetDebugeWrite('2. Lbl_TotalTime : ' + IntToStr(aTotalTime) + ' - 시간:' + IntToStr(aHour) + '시간' + IntToStr(aMin) + '분' + IntToStr(aSec) + '초')
          else
						SetDebugeWrite('2. Lbl_TotalTime : ' + IntToStr(aTotalTime) + ' - 시간:' + IntToStr(aMin) + '분' + IntToStr(aSec) + '초');

          // 직선거리와 경로탐색거리 비교하여 1.5배 이상 나오면 3번까지 재 검색하도 그렇게 나오면 그냥 그 좌표 사용
					if ( Not func_Compare_dis_Sel(Frm_Main.Frm_JON01N[FRealKmPtr.Tag].fDirKm, aTmp, aDistance) ) And
						 (FiIndex < 3 ) then
					begin
            FRealKmPtr.UseYn := False;
            if Not Frm_Main.Frm_JON01N[FRealKmPtr.Tag].giKmComplet then
              FRealKmPtr.CaActive := True
            else
              FRealKmPtr.CaActive := False;

            Exit;
          end else
					if ( Not func_Compare_dis_Sel(Frm_Main.Frm_JON01N[FRealKmPtr.Tag].fDirKm, aTmp, aDistance) ) And
             (FiIndex >= 3 ) then
          begin
            // 직선거리와 경로탐색거리 비교하여 1.5배 이상 나오면 3번까지 재 검색해서도 그렇게 나오면 배수계산해서 처리  LYB 2015.09.15
						// 관련로직 사용안함. 팀장님 지시(시흥정왕동오이도빨강등대 - 인천송도국제도시베르디움더퍼스트@) 1577. 20210923 KHS
//						if ( Frm_Main.Frm_JON01N[FRealKmPtr.Tag].fDirKm * 2.5 ) < aDistance then
//            begin
//							aDistance := Frm_Main.Frm_JON01N[FRealKmPtr.Tag].fDirKm;
//						end;
					end;
					gdDistance := aDistance;
					
          FRealKmPtr.UseYn := True;
          proc_Complete;
          Frm_Main.Frm_JON01N[FRealKmPtr.Tag].giKmComplet := True;

          if Frm_Main.Frm_JON01N[FRealKmPtr.Tag].tmrThRealDis.Tag = 0 then
					begin
						Frm_Main.Frm_JON01N[FRealKmPtr.Tag].fCruKm := aDistance; 
						Frm_Main.Frm_JON01N[FRealKmPtr.Tag].fTotalTime := 0;//aTotalTime; 20211122 KHS 정경석차장 요청;
            if GB_DEBUG_USE then tmpDT := GetTickCount - tmpST;
            SetDebugeWrite('2. Lbl_Distance.Caption: ' + Format('경탐)%s 직선)%s', [FloatToStr(Frm_Main.Frm_JON01N[FRealKmPtr.Tag].fCruKm) + 'Km', FloatToStr(Frm_Main.Frm_JON01N[FRealKmPtr.Tag].fChgKm) + 'Km ' + Format(' Over = %3f', [tmpDT/1000])]));

						if bVia then
            begin
							Frm_Main.Frm_JON01N[FiTag].giViaKmComplet := True;
							procViaKm;
						end else
						begin
              Frm_Main.Frm_JON01N[FRealKmPtr.Tag].tmrCharge.Enabled := True;
						end;
						Frm_Main.Frm_JON01N[FRealKmPtr.Tag].gbViaError := False;

            if FiIndex = 4 then
            begin
              delta := GetTickCount - startTick;
              if Delta > 6000 then
							begin
                sOver := 'SmartSRX 15 Minute Over : Start ' + FRealKmPtr.StartAreaName + ',' + FRealKmPtr.StartXVal + ',' + FRealKmPtr.StartYVal +
                                              ' - End ' + FRealKmPtr.EndAreaName + ',' + FRealKmPtr.EndXVal + ',' + FRealKmPtr.EndYVal + Format(' Over = %d', [Trunc(delta/1000)]);
                SetDebugeWrite(sOver);
                GS_DebugError := sOver;
              end;
            end;
          end;
        end else
        begin
          proc_Complete;
          SetDebugeWrite('무시 Lbl_Distance.Caption: ' + Format('경탐)%s 직선)%s', [FloatToStr(Frm_Main.Frm_JON01N[FRealKmPtr.Tag].fCruKm) + 'Km', FloatToStr(Frm_Main.Frm_JON01N[FRealKmPtr.Tag].fChgKm) + 'Km']));
        end;
      end;
    finally
			SetDebugeWrite('2. SmartSR End Bessel : ' + IntToStr(EndLon) + ',' + IntToStr(EndLat));
      SetDebugeWrite('2. SmartSR End : ' + IntToStr(FiIndex) + '-' + FRealKmPtr.EndAreaName + ',' + FRealKmPtr.EndXVal + ',' + FRealKmPtr.EndYVal + ' - 거리 : ' + FloatToStr(aDistance));
		end;
  Except
    if ( Pos('검색', Frm_Main.Frm_JON01N[FRealKmPtr.Tag].curKm.Text) > 0 ) And
       ( Frm_Main.Frm_JON01N[FRealKmPtr.Tag].tmrThRealDis.Tag = 0 ) then
        Frm_Main.Frm_JON01N[FRealKmPtr.Tag].curKm.Text := '';

    FRealKmPtr.CaActive := False;
    FRealKmPtr.UseYn := False;
  end;
end;

function TJON01SPThread.func_Compare_dis_Sel(DKm, SKm : Double; Var Distance : Double) : Boolean;
Var rCharge : Double;
begin
  SetDebugeWrite('TJON01SPThread.func_Compare_dis_Sel');
  // 경로탐색거리가 5Km 미만일 경우 그냥 경로탐색 거리 사용
  // 직선거리 10Km미만일 경우 경로탐색거리가 직선거리 대비 2.5배수보다 클 경우 재검색
  // 직선거리 10Km이상일 경우 경로탐색거리가 직선거리 대비 1.7배수보다 클 경우 재검색
  // 그 이외의 경우에는 경로 탐색거리 사용
  Result := True;

  if DKm < 10 then rCharge := 2.5
              else rCharge := 1.7;

  try
    if DKm  = 0 then Distance := SKm else
    if SKm <= 5 then Distance := SKm else
    if ( DKm * rCharge ) < SKm then
    begin
      Distance := SKm;
      Result := False;

      SetDebugeWrite('1. Compare : ' + FloatToStr(DKm * rCharge) + '-' + FloatToStr(SKm));
    end else Distance := SKm;
  Except
    Distance := SKm;
  end;
end;

procedure TJON01SPThread.procViaKm;
Var i, iws_Lon, iws_Lat, iwe_Lon, iwe_Lat : Integer;
    bUse : Boolean;
    RealKmPtr : TRealKmRecord;
begin
	SetDebugeWrite('TJON01SPThread.procViaKm');
  try
    bUse := False;

    if RealKmPtr_th1[FiTag].UseYn then begin RealKmPtr := RealKmPtr_th1[FiTag];  bUse := True;  end;
		if RealKmPtr_th2[FiTag].UseYn then begin RealKmPtr := RealKmPtr_th2[FiTag];  bUse := True;  end;
    if RealKmPtr_th3[FiTag].UseYn then begin RealKmPtr := RealKmPtr_th3[FiTag];  bUse := True;  end;
    if RealKmPtr_th4[FiTag].UseYn then begin RealKmPtr := RealKmPtr_th4[FiTag];  bUse := True;  end;

    if Not bUse then Exit;

    Frm_Main.Frm_JON52[JON03_MAX_CNT].WGS84ToBessel(RealKmPtr.StartYVal, RealKmPtr.StartXVal, iws_Lon, iws_Lat);
    Frm_Main.Frm_JON52[JON03_MAX_CNT].WGS84ToBessel(RealKmPtr.EndYVal  , RealKmPtr.EndXVal, iwe_Lon, iwe_Lat);

		Frm_Main.Frm_JON01N[FiTag].fViaKm := proc_dis_Real_Via(iws_Lon, iws_Lat, iwe_Lon, iwe_Lat);
    Frm_Main.Frm_JON01N[FiTag].bViaKm := True;
		Frm_Main.Frm_JON01N[FiTag].giViaKmComplet := False;
		Frm_Main.Frm_JON01N[FiTag].tmrCharge.Enabled := True;
	except on E: Exception do
    GS_DebugError := 'TJON01SPThread.procViaKm : ' + E.Message;
  end;
end;

function TJON01SPThread.proc_dis_Real_Via( AFromLon, AFromLat, AToLon, AToLat : Integer ) : Real;
Var
	SRPort, iErr, iCnt, i, iTmp, iTmpSum : integer;
	iHour, iMin, iSec : Integer;
	dTmp, dTmpSum : Double;
	SRIp : string;
	info : IXRouteInfo3;
begin
	SetDebugeWrite('TJON01SPThread.proc_dis_Real_Via');
  if Not Assigned(SmartSR) then
    SmartSR := TSmartSRXCtrl.Create(nil);
  try
    try
			RouteMan := nil;

      if RouteMan = nil then
        RouteMan := SmartSR.GetRouteMan();

      GetSearchRouteIpPort(SRIp, SRPort);

//      SRIp := '211.219.153.75';

      if RouteMan.Open(SRIp, SRPort) then
        RouteMan.Clear()
      else
			begin
				if SRPort = 1095 then SRPort := 1096 else
        if SRPort = 1096 then SRPort := 1095;

        if RouteMan.Open(SRIp, SRPort) then
          RouteMan.Clear()
        else
        begin
					ShowMessage('경로탐색 서버에 연결할수 없습니다.');
          Exit;
        end;
      end;

      ////// 양방향 탐색을 위해서는 아래의 옵션을 추가해 주세요. //////
      RouteMan.SetOrgDirectionToBoth();
      RouteMan.SetViaDirectionToBoth();
      RouteMan.SetDstDirectionToBoth();

      ////// Toll비
      RouteMan.SetTollFareType(1);

      ////// 탐색 옵션
      ////// 탐색 옵션 1.장거리최적 - 2.장거리최단
      ///              1.일반도로  2.고속도로
      ///              1.무료      2.유로
      if GT_DISTANCE_SVR = 1 then
      begin
        if Frm_Main.Frm_JON01N[FiTag].fDirKm < 70 then
          RouteMan.Remote_SetRPCType(2, 1, 2)  // 최단, 일반도로, 유로
        else
					RouteMan.Remote_SetRPCType(2, 2, 2);  // 최단, 고속도로, 유로
			end else
			begin
				RouteMan.Remote_SetRPCType(GT_DISTANCE_ROUTETYPE, GT_DISTANCE_ROADTYPE, GT_DISTANCE_TOLLTYPE);
//        RouteMan.Remote_SetRPCType(2, 1, 2);
			end;
			if Frm_Main.Frm_JON01N[FiTag].gbViaError then
			begin
				dTmpSum := 0;
				for I := 0 to Length(gViaArrayLon) -1 do
				begin
					if (gViaArrayLon[i] > 0) and (gViaArrayLon[i+1] > 0) and (i < Length(gViaArrayLon) -1) then
					begin
						RouteMan.SetOrgLonLat(gViaArrayLon[i], gViaArrayLat[i]);
						RouteMan.SetDstLonLat(gViaArrayLon[i+1], gViaArrayLat[i+1]);
					
						info := RouteMan.SearchRoute3;
						if (info <> nil) then
						begin
							try
								iErr := info.GetResult;

								if iErr <= 0 then
								begin
									if GS_SmartServerIP = SearchRoute1[0].IP then Inc(SR1ErrCnt)
																													 else Inc(SR2ErrCnt);
									Exit;
								end;
							Except

							end;

							if GS_SmartServerIP = SearchRoute1[0].IP then SR1ErrCnt := 0
																											 else SR2ErrCnt := 0;

							dTmp := info.GetTotalDistance;

							dTmpSum := dTmpSum + dTmp; //출->경 + 경->도 거리 합산

							iTmp := info.GetTotalTime;
							iTmpSum := iTmpSum + iTmp; //출->경 + 경->도 시간 합산
						end;
					end else Break;
				end;
				Frm_Main.Frm_JON01N[FiTag].fStEdKm := gdDistance;         //출-도 거리

				dTmpSum := Roundto(dTmpSum / 1000,-1);
				Frm_Main.Frm_JON01N[FiTag].fCruKm := dTmpSum; 
				Result := Ceil(dTmpSum - gdDistance);   //  정수로 표현 처리 요청 문지현대리 20150128

				iHour := iTmpSum div 3600;
				iMin  := (iTmpSum - (iHour * 3600)) div 60;
				iSec  := (iTmpSum - (iHour * 3600) - (iMin * 60));
				Frm_Main.Frm_JON01N[FiTag].fTotalTime := 0;//iTmpSum; 20211122 KHS 정경석차장 요청;;
			end else
			begin
				SetDebugeWrite('4. SmartSR Start Bessel : ' + IntToStr(AFromLon) + ',' + IntToStr(AFromLat));
				RouteMan.SetOrgLonLat(AFromLon, AFromLat);
				RouteMan.SetDstLonLat(AToLon, AToLat);
				SetDebugeWrite('4. SmartSR End Bessel : ' + IntToStr(AToLon) + ',' + IntToStr(AToLat) + ' -  IP : ' + SRIp + ' Port : ' + IntToStr(SRPort));

				info := RouteMan.SearchRoute3;
				if (info <> nil) then
				begin
					try
						iErr := info.GetResult;

						if iErr <= 0 then
						begin
							if GS_SmartServerIP = SearchRoute1[0].IP then Inc(SR1ErrCnt)
																											 else Inc(SR2ErrCnt);
							Exit;
						end;
					Except

					end;

					if GS_SmartServerIP = SearchRoute1[0].IP then SR1ErrCnt := 0
																									 else SR2ErrCnt := 0;

					dTmp := info.GetTotalDistance;
					dTmp := Roundto(dTmp / 1000,-1);

					Frm_Main.Frm_JON01N[FiTag].fStEdKm := dTmp;
					Result := Ceil(Frm_Main.Frm_JON01N[FiTag].fCruKm - dTmp);   //  정수로 표현 처리 요청 문지현대리 20150128
				end;  
			end;
			Frm_Main.Frm_JON01N[FiTag].gbViaError := False;

		Except
      on e: exception do
      begin
        GS_DebugError := 'proc_dis_Real_Via Error:' + e.message;
				ShowMessage('proc_dis_Real_Via Error:' + e.message);
      end;
    end;
  finally
		SetDebugeWrite('4. SmartSR Via Distance : ' + FloatToStr(dTmp));
  end;
end;

procedure TJON01SPThread.proc_Complete;
begin
  try
    RealKmPtr_th1[FiTag].CaActive := False;
    RealKmPtr_th2[FiTag].CaActive := False;
    RealKmPtr_th3[FiTag].CaActive := False;
    RealKmPtr_th4[FiTag].CaActive := False;
  except
  end;
end;

destructor TJON01SPThread.Destroy;
begin
  CoUninitialize;
  inherited;
end;

end.

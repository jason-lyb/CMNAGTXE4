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
     // ������ ���� �ǰŸ� ���� ���� �Ÿ� ���̽� ���� �Ÿ� ǥ��
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
				gViaArrayLon[iCnt] := StartLon; gViaArrayLat[iCnt] := StartLat;  //����� ��ġ

			end;

      SetDebugeWrite('1. SmartSR Start Bessel : ' + IntToStr(FiIndex) + '-' + IntToStr(StartLon) + ',' + IntToStr(StartLat));

			RouteMan.ClearNode();
			//������ ����� ����. ���� : (��->��->��) - (��->��) = �����Ÿ�, ���� : ((��->��) + (��->��) - (��->��) = �����Ÿ�)  20210817 KHS ���������

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
							RouteMan.AddNode(ViaLon, ViaLat);  //// �������� �ʿ��ϸ� �߰��ϼ���.
					Except

					end;
				end;
			end;   

			if ( FRealKmPtr.EndXVal <> '' ) And ( FRealKmPtr.EndYVal <> '' ) then
      begin
				Frm_Main.Frm_JON52[JON03_MAX_CNT].WGS84ToBessel(FRealKmPtr.EndYVal, FRealKmPtr.EndXVal, EndLon, EndLat);
				RouteMan.SetDstLonLat(EndLon, EndLat);

				inc(iCnt);
				gViaArrayLon[iCnt] := EndLon; gViaArrayLat[iCnt] := EndLat;  //����� ��ġ
			end;

			////// ����� Ž���� ���ؼ��� �Ʒ��� �ɼ��� �߰��� �ּ���. //////
      RouteMan.SetOrgDirectionToBoth();
      RouteMan.SetViaDirectionToBoth();
      RouteMan.SetDstDirectionToBoth();

      ////// Toll��
      RouteMan.SetTollFareType(1);

			////// Ž�� �ɼ� 1.����      2.�ִ�
      ///              1.�Ϲݵ���  2.��ӵ���
			///              1.����      2.����
      if GT_DISTANCE_SVR = 1 then
      begin
        if Frm_Main.Frm_JON01N[FRealKmPtr.Tag].fDirKm < 70 then
          RouteMan.Remote_SetRPCType(2, 1, 2)  // �ִ�, �Ϲݵ���, ����
        else
          RouteMan.Remote_SetRPCType(2, 2, 2);  // �ִ�, ��ӵ���, ����
      end else
      begin
				RouteMan.Remote_SetRPCType(GT_DISTANCE_ROUTETYPE, GT_DISTANCE_ROADTYPE, GT_DISTANCE_TOLLTYPE);
//        RouteMan.Remote_SetRPCType(2, 1, 2);  // �ִ�, �Ϲ�, ����
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

            if ( Pos('�˻�', Frm_Main.Frm_JON01N[FRealKmPtr.Tag].curKm.Text) > 0 ) And
               ( FiIndex > 3 ) And
               ( Frm_Main.Frm_JON01N[FRealKmPtr.Tag].tmrThRealDis.Tag = 0 ) then
              Frm_Main.Frm_JON01N[FRealKmPtr.Tag].curKm.Text := '';

						if Not Frm_Main.Frm_JON01N[FRealKmPtr.Tag].giKmComplet then
              FRealKmPtr.CaActive := True
						else
              FRealKmPtr.CaActive := False;
            FRealKmPtr.UseYn := False;

						//�������� ��Ž�� ������ ��� ���ο� ��Ž����� ���� gbViaError := True; 
						if bVia then Frm_Main.Frm_JON01N[FRealKmPtr.Tag].gbViaError := True;
						Exit;
					end;
        Except
					 SetDebugeWrite('1. SmartSR Error2 : ' + IntToStr(FiIndex) + '-' + IntToStr(SR1ErrCnt) + '-' + IntToStr(SR2ErrCnt));

          if GS_SmartServerIP = SearchRoute1[0].IP then Inc(SR1ErrCnt)
                                                   else Inc(SR2ErrCnt);

					if ( Pos('�˻�', Frm_Main.Frm_JON01N[FRealKmPtr.Tag].curKm.Text) > 0 ) And
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
						SetDebugeWrite('2. Lbl_TotalTime : ' + IntToStr(aTotalTime) + ' - �ð�:' + IntToStr(aHour) + '�ð�' + IntToStr(aMin) + '��' + IntToStr(aSec) + '��')
          else
						SetDebugeWrite('2. Lbl_TotalTime : ' + IntToStr(aTotalTime) + ' - �ð�:' + IntToStr(aMin) + '��' + IntToStr(aSec) + '��');

          // �����Ÿ��� ���Ž���Ÿ� ���Ͽ� 1.5�� �̻� ������ 3������ �� �˻��ϵ� �׷��� ������ �׳� �� ��ǥ ���
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
            // �����Ÿ��� ���Ž���Ÿ� ���Ͽ� 1.5�� �̻� ������ 3������ �� �˻��ؼ��� �׷��� ������ �������ؼ� ó��  LYB 2015.09.15
						// ���÷��� ������. ����� ����(�������յ����̵�������� - ��õ�۵��������ú��������۽�Ʈ@) 1577. 20210923 KHS
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
						Frm_Main.Frm_JON01N[FRealKmPtr.Tag].fTotalTime := 0;//aTotalTime; 20211122 KHS ���漮���� ��û;
            if GB_DEBUG_USE then tmpDT := GetTickCount - tmpST;
            SetDebugeWrite('2. Lbl_Distance.Caption: ' + Format('��Ž)%s ����)%s', [FloatToStr(Frm_Main.Frm_JON01N[FRealKmPtr.Tag].fCruKm) + 'Km', FloatToStr(Frm_Main.Frm_JON01N[FRealKmPtr.Tag].fChgKm) + 'Km ' + Format(' Over = %3f', [tmpDT/1000])]));

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
          SetDebugeWrite('���� Lbl_Distance.Caption: ' + Format('��Ž)%s ����)%s', [FloatToStr(Frm_Main.Frm_JON01N[FRealKmPtr.Tag].fCruKm) + 'Km', FloatToStr(Frm_Main.Frm_JON01N[FRealKmPtr.Tag].fChgKm) + 'Km']));
        end;
      end;
    finally
			SetDebugeWrite('2. SmartSR End Bessel : ' + IntToStr(EndLon) + ',' + IntToStr(EndLat));
      SetDebugeWrite('2. SmartSR End : ' + IntToStr(FiIndex) + '-' + FRealKmPtr.EndAreaName + ',' + FRealKmPtr.EndXVal + ',' + FRealKmPtr.EndYVal + ' - �Ÿ� : ' + FloatToStr(aDistance));
		end;
  Except
    if ( Pos('�˻�', Frm_Main.Frm_JON01N[FRealKmPtr.Tag].curKm.Text) > 0 ) And
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
  // ���Ž���Ÿ��� 5Km �̸��� ��� �׳� ���Ž�� �Ÿ� ���
  // �����Ÿ� 10Km�̸��� ��� ���Ž���Ÿ��� �����Ÿ� ��� 2.5������� Ŭ ��� ��˻�
  // �����Ÿ� 10Km�̻��� ��� ���Ž���Ÿ��� �����Ÿ� ��� 1.7������� Ŭ ��� ��˻�
  // �� �̿��� ��쿡�� ��� Ž���Ÿ� ���
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
					ShowMessage('���Ž�� ������ �����Ҽ� �����ϴ�.');
          Exit;
        end;
      end;

      ////// ����� Ž���� ���ؼ��� �Ʒ��� �ɼ��� �߰��� �ּ���. //////
      RouteMan.SetOrgDirectionToBoth();
      RouteMan.SetViaDirectionToBoth();
      RouteMan.SetDstDirectionToBoth();

      ////// Toll��
      RouteMan.SetTollFareType(1);

      ////// Ž�� �ɼ�
      ////// Ž�� �ɼ� 1.��Ÿ����� - 2.��Ÿ��ִ�
      ///              1.�Ϲݵ���  2.��ӵ���
      ///              1.����      2.����
      if GT_DISTANCE_SVR = 1 then
      begin
        if Frm_Main.Frm_JON01N[FiTag].fDirKm < 70 then
          RouteMan.Remote_SetRPCType(2, 1, 2)  // �ִ�, �Ϲݵ���, ����
        else
					RouteMan.Remote_SetRPCType(2, 2, 2);  // �ִ�, ��ӵ���, ����
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

							dTmpSum := dTmpSum + dTmp; //��->�� + ��->�� �Ÿ� �ջ�

							iTmp := info.GetTotalTime;
							iTmpSum := iTmpSum + iTmp; //��->�� + ��->�� �ð� �ջ�
						end;
					end else Break;
				end;
				Frm_Main.Frm_JON01N[FiTag].fStEdKm := gdDistance;         //��-�� �Ÿ�

				dTmpSum := Roundto(dTmpSum / 1000,-1);
				Frm_Main.Frm_JON01N[FiTag].fCruKm := dTmpSum; 
				Result := Ceil(dTmpSum - gdDistance);   //  ������ ǥ�� ó�� ��û �������븮 20150128

				iHour := iTmpSum div 3600;
				iMin  := (iTmpSum - (iHour * 3600)) div 60;
				iSec  := (iTmpSum - (iHour * 3600) - (iMin * 60));
				Frm_Main.Frm_JON01N[FiTag].fTotalTime := 0;//iTmpSum; 20211122 KHS ���漮���� ��û;;
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
					Result := Ceil(Frm_Main.Frm_JON01N[FiTag].fCruKm - dTmp);   //  ������ ǥ�� ó�� ��û �������븮 20150128
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

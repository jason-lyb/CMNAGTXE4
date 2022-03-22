unit xe_JON01Size;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, xe_JON01;


	procedure procFrmSizeChange( sGubun : String; Frm_JON01 : TFrm_JON01 );

Var iJON01Tag : Integer;

implementation

uses xe_GNL, xe_gnl2, Main;


procedure procFrmSizeChange( sGubun : String; Frm_JON01 : TFrm_JON01 );
Var i, iRight, iLeft : Integer;
    iScreenWidth : Integer;
begin
	SetDebugeWrite('JON01Size.procFrmSizeChange Start');
	if sGubun = 'N' then     //정상
  begin
    with Frm_Main.Frm_JON01[iJON01Tag] do
		begin
      iRight := Frm_Main.Frm_JON01[iJON01Tag].Left + Frm_Main.Frm_JON01[iJON01Tag].Width;

      Constraints.MinWidth := 614;
      Width := 614;

      if GS_JON01_TAB = 1 then
        Left := 0
      else
        Left := iRight - Width;

      pnlRShare.Width := 602;
      pnlShare.Width := 587;
      lblTS1.Top := 17;
      lblTS1.Left := 16;
      lblCShareRJ.Top := 17;
      lblCShareRJ.Left := 112;

      // -- 지사정보 및 전화 ---------------------------------------------------
      GBTop1.Height := 35;

      cxLblBar1.Top := 26;
      cxLblBar1.Width := 586;

      cxLblBar3.Top := 0;
      cxLblBar3.Width := 586;

      // 과거
      cxButton1.Top := 2;
      cxButton1.Left := 4;
      cxButton1.Width := 31;
      cxButton1.Height := 22;

      // 고객전화번호1
      cxtCuTel.Top := 2;
      cxtCuTel.Left := 37;
      if GT_OCX <> '' then cxtCuTel.Width := 108
                      else cxtCuTel.Width := 132;
      cxtCuTel.Height := 22;

//      cxLCuTelFlg.Top := 7;
//      cxLCuTelFlg.Left := 40;

      cxImage1.Top := 3;
      if GT_OCX <> '' then cxImage1.Left := 133
                      else cxImage1.Left := 156;

      // 고객검색창
      cxGBSearch.Left := 7;
      cxGBSearch.Top := 67;
      cxGBSearch.Width := 587;

      // 전화버튼1
      BtnCall.Top := 2;
      BtnCall.Left := 146;
      BtnCall.Width := 22;
      BtnCall.Height := 22;

      // 고객전화번호2
      cxtCuTel2.Top := 2;
      cxtCuTel2.Left := 169;
      if GT_OCX <> '' then
      begin
        cxtCuTel2.Width := 84;
        BtnCall.Visible := True;
        BtnCall2.Visible := True;
      end else
      begin
        BtnCall.Visible := False;
        BtnCall2.Visible := False;
        cxtCuTel2.Width := 106;
      end;

      cxtCuTel2.Height := 22;

//      cxLCuTel2Flg.Top := 7;
//      cxLCuTel2Flg.Left := 177;

      // 전화버튼2
      BtnCall2.Top := 2;
      BtnCall2.Left := 253;
      BtnCall2.Width := 22;
      BtnCall2.Height := 22;

      // 전화번호오픈
      cbTelView.Top := 1;
      cbTelView.Left := 275;
      cbTelView.Width := 58;
      cbTelView.Height := 24;

      pSetCuTelLabel(cbTelView.ItemIndex);

      // 지사정보
      cboBrOnly.Top := 1;
      cboBrOnly.Left := 332;
      cboBrOnly.Width := 49;
      cboBrOnly.Height := 24;

      cxTxtBrNameCaption.Top := cboBrOnly.Top; // 수정시에 지사명, 대표번호 크게 보여줌.
      cxTxtBrNameCaption.Left := cboBrOnly.Left;
      cxTxtBrNameCaption.Width := 289;

      // 지사+대표번호
      cboBranch.Top := 1;
      cboBranch.Left := 380;
      cboBranch.Width := 171;
      cboBranch.Height := 24;

      // 검색
      cxTSearchMainTel.Top := 1;
      cxTSearchMainTel.Left := 550;
      cxTSearchMainTel.Width := 41;
      cxTSearchMainTel.Height := 24;

//      cxLSearchMainTelFlg.Top := 7;
//      cxLSearchMainTelFlg.Left := 530;

      lst_BRList.Left := 277;
      lst_BRList.Top := 59;

      shaPrcMsg.left := 59;
      shaPrcMsg.Top := 114;

      pnlNewCustYN.Left := 4;    // 신규 멘트
      pnlNewCustYN.Top := 30;
      pnlNewCustYN.Width := 589;

      pnlBrNoMent.Left := 4;     // 지사별 멘트를 보여준다.
      pnlBrNoMent.Top := 56;
      pnlBrNoMent.Width := 589;

    	// DNIS 정보 추가. 2011.05.17 CDS.
    	shrDNIS_DSP.Left := 0;
    	shrDNIS_DSP.Top  := 65;
      shrDNIS_DSP.Width := 352;

      pnlBubin.Top := 148;
      pnlBubin.Left := 5;

      PnlKTPOIYN.Left := 298;
			PnlKTPOIYN.Top  := 215;

			//------------------------------------------------------------------------

      // -- 고객 메모 ----------------------------------------------------------
			GBTop2.Height := 147;
			cxLblOrderUpInfo.Caption := mmoCbMemo.Hint;   // 임시로 저장해서 사용

      // 오더수정시에 오더배차 및 상태에 관련 정보를 보여준다.
			if PnlModifyTitle.Height = 17 then pnlOrderInfoView.Top := PnlModifyTitle.Top + PnlModifyTitle.Height//90
                                    else pnlOrderInfoView.Top := PnlModifyTitle.Top + PnlModifyTitle.Height;//103;

			// 오더수정시에 오더배차 및 상태에 관련 정보를 보여준다.
			PnlModifyTitle.Left := 319;//312;
			PnlModifyTitle.Top := GBTop2.Top - ( PnlModifyTitle.Height - 3 );
			PnlModifyTitle.Width := 284; 
//			BtnLClose1.Top := 0;
			pnlClose.Top := PnlModifyTitle.Top ;
//			Frm_JON01.BtnLClose1.Left := PnlModifyTitle.Left - BtnLClose1.Width;
			pnlClose.Left := PnlModifyTitle.Left - pnlClose.Width;

			pnlOrderInfoView.Left := 315;

			cxLblOrderUpInfo.Hint := '수정시 마우스 올리면 좀더 많은 정보를 볼수 있음.';

			edtCuName.Top := 3;
			edtCuName.Left := 0;
			edtCuName.Width := 228;
			edtCuName.Height := 23;
			edtCuName.Visible := True;
			
			BtnCustAdd.Top := 3;
			BtnCustAdd.Left := 233;
			BtnCustAdd.Width := 35;
			BtnCustAdd.Height := 24;
			BtnCustAdd.Visible := True;
			
			cxBtnHoTrans.Top := 3;
			cxBtnHoTrans.Left := 269;
			cxBtnHoTrans.Width := 35;
			cxBtnHoTrans.Height := 24;
			cxBtnHoTrans.Visible := True;
			
			cboCuLevel.Top := 29;
			cboCuLevel.Left := 0;
			cboCuLevel.Width := 99;
			cboCuLevel.Height := 22;
			cboCuLevel.Visible := True;
			
			ChkCuSmsNo.Top := 31;
			ChkCuSmsNo.Left := 97;
			ChkCuSmsNo.Width := 73;
			ChkCuSmsNo.Height := 19;
			ChkCuSmsNo.Visible := True;
			
			cxBtnSpSave.Top := 29;
			cxBtnSpSave.Left := 171;
			cxBtnSpSave.Width := 33;
			cxBtnSpSave.Height := 22;
			cxBtnSpSave.Visible := True;
			
			cxBtnCuUpdate.Top := 29;
			cxBtnCuUpdate.Left := 205;
			cxBtnCuUpdate.Width := 33;
			cxBtnCuUpdate.Height := 22;
			cxBtnCuUpdate.Visible := True;
			
			cxBtnCuNew.Top := 29;
			cxBtnCuNew.Left := 238;
			cxBtnCuNew.Width := 33;
			cxBtnCuNew.Height := 22;
			cxBtnCuNew.Visible := True;
			
			cxBtnCuDel.Top := 29;
			cxBtnCuDel.Left := 271;
			cxBtnCuDel.Width := 33;
			cxBtnCuDel.Height := 22;
			cxBtnCuDel.Visible := True;
			
			CbCuGb.Top := 53;
			CbCuGb.Left := 0;
			CbCuGb.Width := 64;
			CbCuGb.Height := 22;
			CbCuGb.Visible := True;
			
			cxtCuBubin.Top := 53;
			cxtCuBubin.Left := 65;
			cxtCuBubin.Width := 202;
			cxtCuBubin.Height := 22;
			cxtCuBubin.Visible := True;
			
			btnBubinSch.Top := 53;
			btnBubinSch.Left := 269;
			btnBubinSch.Width := 35;
			btnBubinSch.Height := 22;
			btnBubinSch.Visible := True;
			
			pnlMileage.Top := 76;
			pnlMileage.Left := 0;
			pnlMileage.Width := 192;
			pnlMileage.Height := 37;
			pnlMileage.Visible := True;
			
			cxLblCuLevel.Top := 75;
			cxLblCuLevel.Left := 192;
			cxLblCuLevel.Width := 75;
			cxLblCuLevel.Height := 17;
			cxLblCuLevel.Visible := True;
			
			cb_CarType.Top := 92;
			cb_CarType.Left := 192;
			cb_CarType.Width := 75;
			cb_CarType.Height := 22;
			cb_CarType.Visible := True;
			
{			btnMileList.Top := 75;
			btnMileList.Left := 269;
			btnMileList.Width := 35;
			btnMileList.Height := 39;
			btnMileList.Visible := True;        }

			PnlOCC.Top := 115;
			PnlOCC.Left := 0;
			PnlOCC.Width := 266;
			PnlOCC.Height := 27;
			PnlOCC.Visible := True;
			
			btnCustAppinfo.Top := 125;
			btnCustAppinfo.Left := 269;
			btnCustAppinfo.Width := 35;
			btnCustAppinfo.Height := 17;
			btnCustAppinfo.Visible := True;			

			// 고객메모
			meoCuCCMemo.Top := 2;
			meoCuCCMemo.Left := 309;
			meoCuCCMemo.Width := 283;
			meoCuCCMemo.Height := 56;
			meoCuCCMemo.Visible := True;

			cxLCuCCMemoFlg.Caption := '상담메모 ( 내부메모 )';
			cxLCuCCMemoFlg.Visible := (meoCuCCMemo.Text = ''); // 기사메모 입력 잔상.

			BtnViewMemo.Top := meoCuCCMemo.Top + 1;
			BtnViewMemo.Left := meoCuCCMemo.Left + meoCuCCMemo.Width - BtnViewMemo.Width -2;
			BtnViewMemo.Visible := True;
//-      meoCuCCMemo.Height := 58;       사이즈 조절시 자동 계산

			if Trim(mmoCbMemo.Text) <> '' then
			begin
				meoCuCCMemo.Width := 142;

        // 법인메모
				mmoCbMemo.Top := 2;
				mmoCbMemo.Left := meoCuCCMemo.Left + meoCuCCMemo.Width;
				mmoCbMemo.Width := meoCuCCMemo.Width;
     		mmoCbMemo.Visible := True;
			end;

			// 기사메모
			meoCuWorMemo.Top := 59;
			meoCuWorMemo.Left := 309;
			meoCuWorMemo.Width := 283;
			meoCuWorMemo.Visible := True;
			cxLCuWorMemoFlg.Caption := '기사메모 ( 배차시 기사에게 보임 )';
			cxLCuWorMemoFlg.Visible := (meoCuWorMemo.Text = '');
			chkViewLevel.Top := meoCuWorMemo.Top + 1;
			chkViewLevel.Left := meoCuWorMemo.Left + meoCuWorMemo.Width - chkViewLevel.Width -2; 
			chkViewLevel.Visible := True;
//-      meoCuWorMemo.Height := 50;

			//심플메모
      edt_CardMemo.Top := meoCuWorMemo.Top + meoCuWorMemo.Height + 2;
			edt_CardMemo.Left := 309;
			edt_CardMemo.Width := 283;
			edt_CardMemo.height := 29;
			edt_CardMemo.Visible := True;

			cxLCuCCMemoFlg1.Visible := (edt_CardMemo.Text = ''); // 기사메모 입력 잔상.
			cxLCuCCMemoFlg1.Top := edt_CardMemo.Top + 3;
			cxLCuCCMemoFlg1.Left := edt_CardMemo.Left + 5;
			cxLCuCCMemoFlg1.Caption := '심플메모';
			cxLCuCCMemoFlg1.Visible := True;

			BtnSimMemo.Top := (edt_CardMemo.Top + edt_CardMemo.Height ) - ( BtnSimMemo.Height + 2 );
			BtnSimMemo.Left := (edt_CardMemo.Left + edt_CardMemo.Width ) - ( BtnSimMemo.Width + 2 );
			BtnSimMemo.Visible := False;
			//------------------------------------------------------------------------

      // -- 출발지 -------------------------------------------------------------
			GBTop3.Height := 63;

      // 출발지 잠김
      BtnStLock.Top := 6;
      BtnStLock.Left := 2;
      BtnStLock.Width := 24;
			BtnStLock.Height := 24;
			BtnStLock.Visible := True;

			//LBS
			btn_LBS.Top := 6;
			btn_LBS.Left := 522;
			btn_LBS.Width := 42;
			btn_LBS.Height := 24;
			if (GT_OCX = 'SSIT') or (GT_OCX = 'SI415') then	
				btn_LBS.Visible := True else btn_LBS.Visible := False; 

			// 출발지명
			meoStartArea.Top := 5;
			meoStartArea.Left := 28;
			if not btn_LBS.Visible then meoStartArea.Width := 490 + btn_LBS.Width else meoStartArea.Width := 490;
			meoStartArea.Height := 26;
			meoStartArea.Visible := True;
			cxLStartAreaFlag.Top := 7;
			cxLStartAreaFlag.Left := 45;
			cxLStartAreaFlag.Visible := (meoStartArea.Text = ''); // 출발지 입력 잔상.

			btn_LBS.left := 522;
			btn_LBS.Top := 7;

			// 출발지 설정
			btnSBigo1.Top := 6;
			btnSBigo1.Left := 565;
			btnSBigo1.Width := 24;
			btnSBigo1.Height := 24;
			btnSBigo1.Visible := True;

      // 출발지 좌표
			GBStartXYView.Top := 6;
      GBStartXYView.Left := 326;
      GBStartXYView.Width := 235;
      GBStartXYView.Height := 24;

      // 출발지 주소
      lblStartAreaName.Top := 31;
      lblStartAreaName.Left := 1;
      lblStartAreaName.Width := 190;
			lblStartAreaName.Height := 22;
			lblStartAreaName.Visible := True;

      // 출발지 상세지명
      cxtStartAreaDetail.Top := 31;
      cxtStartAreaDetail.Left := 191;
      cxtStartAreaDetail.Width := 126; //152
			cxtStartAreaDetail.Height := 22;
			cxtStartAreaDetail.Visible := True;

      // 출발지 저장
      btnStartLocalSave.Top := 32;
			btnStartLocalSave.Left := 318;//322;//347;
      btnStartLocalSave.Width := 22;
      btnStartLocalSave.Height := 21;

			if GS_PRJ_AREA = 'S' then
			begin
				cb_06.Visible := True;

				cb_00.Left := 347;//373;
				cb_06.Left := 372;//373;
				cb_01.Left := 403;//398;
				cb_02.Left := 428;//423;
				cb_03.Left := 453;//448;
				cb_04.Left := 478;//473;
				cb_05.Left := 503;//498;
				BtnViaAdd.Left := 528;//529;

				//탁확 면허종류 선택 위치
				if cb_06.Left + 3 > 377 then pnlWkLicType.Left := 377 else pnlWkLicType.Left := cb_06.Left + 3;
				pnlWkLicType.Top  := GBTop3.Top + cb_06.Top + cb_06.height + 3;
//				pnlWkLicType.Left := 375;
//				pnlWkLicType.Top :=   276;
				pnlWkLicType.Height := 27;
				pnlWkLicType.width := 217;
			end
			else
			begin
				cb_06.Left := 372;//373;
				cb_06.Visible := False;

				cb_00.Left := cb_06.Left + cb_06.Width - cb_00.Width;//373;
				cb_01.Left := 403;//398;
				cb_02.Left := 428;//423;
				cb_03.Left := 453;//448;
				cb_04.Left := 478;//473;
				cb_05.Left := 503;//498;
				BtnViaAdd.Left := 528;//529;
			end;

			//탁송연합콜
			btnTakAlly.Top := 32;
			btnTakAlly.Left := 343;
			btnTakAlly.Width := 28;
			btnTakAlly.Height := 22;

			// 탁송
			cb_00.Top := 32;
			cb_00.Width := 24;
			cb_00.Height := 21;

			// 탁확
			cb_06.Top := 32;
			cb_06.Width := 30;
			cb_06.Height := 21;

			// 정장
			cb_01.Top := 32;
			cb_01.Left := 403;//398;
			cb_01.Width := 24;
			cb_01.Height := 21;

			// 경유
			cb_02.Top := 32;
			cb_02.Width := 24;
			cb_02.Height := 21;

			// 적요
			cb_03.Top := 32;
			cb_03.Width := 24;
			cb_03.Height := 21;

      // 스틱
      cb_04.Top := 32;
			cb_04.Width := 24;
      cb_04.Height := 21;

      // 사용자정의
      cb_05.Top := 32;
			cb_05.Width := 24;
      cb_05.Height := 21;

      // 경유지
			BtnViaAdd.Top := 32;
			BtnViaAdd.Width := 62;
      BtnViaAdd.Height := 22;
			//------------------------------------------------------------------------

      // -- 경유지 -------------------------------------------------------------
      cxLblBar2.Width := 583;

      // 경유지명
      meoViaArea1.Top := 4;
			meoViaArea1.Left := 26;
			meoViaArea1.Width := 200;
      meoViaArea1.Height := 20;

      // 경유지 주소명
      cxViaAreaName1.Top := 3;
			cxViaAreaName1.Left := 224;
			cxViaAreaName1.Width := 326;
      cxViaAreaName1.Height := 22;

      // 삭제
      BtnViaMinus1.Top := 5;
      BtnViaMinus1.Left := 554;
      BtnViaMinus1.Width := 33;
      BtnViaMinus1.Height := 20;

    	for i := 2 to 5 do
    	begin
    		meoViaArea[i].Left := meoViaArea1.left;
    		meoViaArea[i].Height := meoViaArea1.Height;
    		meoViaArea[i].Width := meoViaArea1.Width;

    		cxViaAreaName[i].Left := cxViaAreaName1.Left;
    		cxViaAreaName[i].Height := cxViaAreaName1.Height;
    		cxViaAreaName[i].Width := cxViaAreaName1.Width;

    		BtnViaMinus[i].Left := BtnViaMinus1.Left;
    		BtnViaMinus[i].Height := BtnViaMinus1.Height;
    		BtnViaMinus[i].Width := BtnViaMinus1.Width;
			end;
			pnl_ViaMent.Left := 4;
			pnl_ViaMent.Width := 587;
			//------------------------------------------------------------------------

      // -- 도착지 -------------------------------------------------------------

      // 도착지 잠김
      BtnEdLock.Top := 6;
      BtnEdLock.Left := 6;
      BtnEdLock.Width := 24;
			BtnEdLock.Height := 24;
			BtnEdLock.Visible := True;

      // 도착지명
      meoEndArea.Top := 5;
      meoEndArea.Left := 32;
      meoEndArea.Width := 532;
			meoEndArea.Height := 26;
			meoEndArea.Visible := True;

			cxLEndAreaFlag.Top := 7;
			cxLEndAreaFlag.Left := 45;
			cxLEndAreaFlag.Visible := (meoEndArea.Text = ''); // 출발지 입력 잔상.

      // 도착지 설정
      btnEpop.Top := 6;
      btnEpop.Left := 565;
      btnEpop.Width := 24;
			btnEpop.Height := 22;
			btnEpop.Visible := True;

      // 도착지 좌표
      GBEndXYView.Top := 6;
      GBEndXYView.Left := 326;
      GBEndXYView.Width := 235;
			GBEndXYView.Height := 24;

			// 도착지 주소
      cxReEndArea.Top := 31;
      cxReEndArea.Left := 5;
			cxReEndArea.Width := 480;//504;
			cxReEndArea.Height := 22;
			cxReEndArea.Visible := True;

			//도착지 상세지명 편집창 경남에이스(G33)만 사용
			pnl_EndDetail_Update.Left := 5;
			pnl_EndDetail_Update.Top := 28;
			pnl_EndDetail_Update.Height := 28;
			pnl_EndDetail_Update.Width := 480;

			// 도착지저장
			btnEndLocalSave.Top := 31;
			btnEndLocalSave.Left := 487;
			btnEndLocalSave.Width := 24;
			btnEndLocalSave.Height := 22;
			btnEndLocalSave.Visible := True;
			
			
			// 거리계산
			btnDCalc.Top := 31;
			btnDCalc.Left := 513;
			btnDCalc.Width := 24;
			btnDCalc.Height := 22;
			btnDCalc.Visible := True;

      // 도착지 지도
      btnViewMap.Top := 31;
			btnViewMap.Left := 539;
      btnViewMap.Width := 24;
			btnViewMap.Height := 22;
			btnViewMap.Visible := True;

      // 경로보기
      BtnSR.Top := 31;
      BtnSR.Left := 565;
      BtnSR.Width := 24;
			BtnSR.Height := 22;
			BtnSR.Visible := True;
			//------------------------------------------------------------------------

			// -- 요금/거리/수수료 등등  ---------------------------------------------
			if IsBubuinUse then
      begin
        Pnl_BubinV.Visible := True;

//        GB4.Height := 211;          // LYB 중요 *** 법인메뉴/요금 관련 컨테이너 높이를 고정으로 입력
				GB3.Height := 62;
				GBTop5.Height := 200;

				if GS_FormType = 'Normal' then
          pSetFormScroll(1, 650);
				CbCuGb.Tag := 1;
      end else
      begin
        Pnl_BubinV.Visible := False;

//        GB4.Height := 211 - 25;     // LYB 중요 *** 요금관련높이에서 법인메뉴 높이를 마이너스 숫자 고정입력
				GB3.Height := 62;
				GBTop5.Height := 200 - 25;

				if GS_FormType = 'Normal' then
          pSetFormScroll(1, 650 - 25);

        CbCuGb.Tag := 0;
      end;

      // 스마트요금표
      BtnSmartRate.Top := 8;
      BtnSmartRate.Left := 27;
      BtnSmartRate.Width := 21;
			BtnSmartRate.Height := 20;
			BtnSmartRate.Visible := True;

      // 스마트요금표 백그라운드
      cxLabel13.Top := 7;
      cxLabel13.Left := 48;
      cxLabel13.Width := 247;
			cxLabel13.Height := 22;
			cxLabel13.Visible := True;

      // 요금표 스마트
      cxLblSmartRate.Top := 11;
      cxLblSmartRate.Left := 48;
      cxLblSmartRate.Width := 95;
			cxLblSmartRate.Height := 16;
			cxLblSmartRate.Visible := True;

      // 요금표 1위
      cxLblRate1.Top := 11;
      cxLblRate1.Left := 142;
      cxLblRate1.Width := 76;
      cxLblRate1.Height := 16;
      cxLblRate1.Visible := True;

      // 요금표 2위
      cxLblRate2.Top := 11;
			cxLblRate2.Left := 216;
      cxLblRate2.Width := 79;
      cxLblRate2.Height := 16;
      cxLblRate2.Visible := True;

      // 미지정
      chkNoSet.Top := 7;
      chkNoSet.Left := 295;
      chkNoSet.Width := 39;
			chkNoSet.Height := 22;
			chkNoSet.Visible := True;

			// 거리\
      chkRangeRate.Top := 7;
      chkRangeRate.Left := 335;
      chkRangeRate.Width := 27;
			chkRangeRate.Height := 22;
			chkRangeRate.Visible := True;

      // 수수료없음-콜무
      BtnOptionCallMu.Top := 7;
			BtnOptionCallMu.Left := 363;
      BtnOptionCallMu.Width := 28;//62;
			BtnOptionCallMu.Height := 22;
			BtnOptionCallMu.Visible := True;

      // 남자
      BtnOptionSexM.Top := 7;
      BtnOptionSexM.Left := 392;//405;//459;
      BtnOptionSexM.Width := 18;
			BtnOptionSexM.Height := 22;
			BtnOptionSexM.Visible := True;

      // 여자
      BtnOptionSexF.Top := 7;
      BtnOptionSexF.Left := 409;//429;//484;
      BtnOptionSexF.Width := 18;
			BtnOptionSexF.Height := 22;
			BtnOptionSexF.Visible := True;

      //기사나이
      BtnWkAge.Top := 7;
      BtnWkAge.Left := 428;
      BtnWkAge.Width := 27;
      BtnWkAge.Height := 22;
			pnlWkAge.Left := BtnOptionCallMu.Left;

			//지원금
      BtnWKJAmt.Top := 7;
      BtnWKJAmt.Left := 456;
      BtnWKJAmt.Width := 38;
			BtnWKJAmt.Height := 22;
			BtnWKJAmt.Visible := True;

      // 법인콜
      BtnPlusYN.Top := 7;
      BtnPlusYN.Left := 495;
      BtnPlusYN.Width := 27;
			BtnPlusYN.Height := 22;
			BtnPlusYN.Visible := True;

      // 상황실
			BtnCenterMng.Top := 7;
			BtnCenterMng.Left := 523;
			BtnCenterMng.Width := 38;
			BtnCenterMng.Height := 22;
			BtnCenterMng.Visible := True;

      // 요금저장
      btn_ChargeSave.Top := 7;
      btn_ChargeSave.Left := 6;
      btn_ChargeSave.Width := 21;
			btn_ChargeSave.Height := 22;
			btn_ChargeSave.Visible := True;

      // 요금문의
      BtnQRate.Top := 31;
      BtnQRate.Left := 5;
      BtnQRate.Width := 22;
			BtnQRate.Height := 22;
			BtnQRate.Visible := True;

      // 요금
      curRate.Top := 30;
      curRate.Left := 27;
      curRate.Width := 84;
			curRate.Height := 24;
			curRate.Visible := True;

      // 요금잠금
      BtnRaLock.Top := 31;
      BtnRaLock.Left := 111;
      BtnRaLock.Width := 23;
			BtnRaLock.Height := 22;
			BtnRaLock.Visible := True;

      // 거리
      curKm.Top := 30;
      curKm.Left := 134;
			curKm.Width := 65;
			curKm.Height := 24;
			curKm.Visible := True;

			// 수수료
			cxDriverCharge.Top := 30;
			cxDriverCharge.Left := 198;
			cxDriverCharge.Width := 73;
			cxDriverCharge.Height := 24;
			cxDriverCharge.Visible := True;
			LbDriverCharge.Top := 33;
			LbDriverCharge.Left := 201;
			LbDriverCharge.Visible := True;

			// 캐시사용적립
			btnCashSave.Top := 54;
			btnCashSave.Left := 259;
			btnCashSave.Width := 51;
			btnCashSave.Height := 24;

			// 마일사용적립
			btnMileSave.Top := 54;
			btnMileSave.Left := 312;
			btnMileSave.Width := 51;
			btnMileSave.Height := 24;

			// 결재구분
			cbbPayMethod.Top := 30;
			cbbPayMethod.Left := 270;
			cbbPayMethod.Width := 84;
			cbbPayMethod.Height := 24;
			cbbPayMethod.Visible := True;

			// 결재시간
      cbbPostTime.Top := 30;
			cbbPostTime.Left := 353;
			cbbPostTime.Width := 111;
			cbbPostTime.Height := 24;
			cbbPostTime.Visible := True;

      // 기사입금수수료
			edtPostPay.Top := 30;
			edtPostPay.Left := 463;
			edtPostPay.Width := 74;
			edtPostPay.Height := 24;
			edtPostPay.Visible := True;
			LblPostPay.Top := 34;
			LblPostPay.Left := 464;
			LblPostPay.Visible := True;

      // 현금/쿠폰/카드결재
      cbCardSanction.Top := 32;
			cbCardSanction.Left := 537;
			cbCardSanction.Width := 53;
			cbCardSanction.Height := 20;
			cbCardSanction.Visible := True;

      // 법인 백그라운드  ------------------------------------------------------
      Pnl_BubinV.Top := 56;
      Pnl_BubinV.Left := -2;
      Pnl_BubinV.Width := 595;
      Pnl_BubinV.Height := 24;

      // 경유요금
      cxCurPathRate.Top := 1;
      cxCurPathRate.Left := 8;
			cxCurPathRate.Width := 108;
      cxCurPathRate.Height := 21;
			cxCurPathRate.Visible := True;
			lblCurPathRate.Top := 4;
			lblCurPathRate.Left := 10;
			lblCurPathRate.Visible := True;

      // 대기시간
      cxTmWaitTime.Top := 1;
      cxTmWaitTime.Left := 116;
      cxTmWaitTime.Width := 54;
			cxTmWaitTime.Height := 21;
			cxTmWaitTime.Visible := True;

      // 대기시간종류
      cxBtnWaitTmRate.Top := 2;
      cxBtnWaitTmRate.Left := 171;
      cxBtnWaitTmRate.Width := 27;
			cxBtnWaitTmRate.Height := 18;
			cxBtnWaitTmRate.Visible := True;

      // 대기시간율
      cxCurWaitTmRate.Top := 1;
      cxCurWaitTmRate.Left := 199;
      cxCurWaitTmRate.Width := 48;
			cxCurWaitTmRate.Height := 21;
			cxCurWaitTmRate.Visible := True;

      // 보정금액
      cxCurRevisionRate.Top := 1;
      cxCurRevisionRate.Left := 248;
      cxCurRevisionRate.Width := 111;
			cxCurRevisionRate.Height := 21;
			cxCurRevisionRate.Visible := True;
			lblCurRevisionRate.Top := 4;
			lblCurRevisionRate.Left := 256;
			lblCurRevisionRate.Visible := True;

      // 법인메모
      cxTBubinMemo.Top := 1;
      cxTBubinMemo.Left := 361;
      cxTBubinMemo.Width := 232;
      cxTBubinMemo.Height := 21;
      cxLBubinMemoFlag.Top := 4;
			cxLBubinMemoFlag.Left := 371;
			cxLBubinMemoFlag.Visible := True;
			//------------------------------------------------------------------------

      gbRQAList.Left := 3;
      gbRQAList.Top := 56;
      gbRQAList.Width := 584;

			pnl_charge.Top := 58;
      pnl_charge.Width := 585;

      PnlWkJi.Left := edtPostPay.Left + 1;
			PnlWkJi.Top := edtPostPay.Top + edtPostPay.Height;

      if FPlusDongCHK = 2 then pnl_Charge.height := 36
                          else pnl_Charge.height := 21;

      SetPosLblDistance;
      //------------------------------------------------------------------------

      // ---- Suggest 위치 조절 ------------------------------------------------
			if PnlSuggest.Visible then
      begin
        if lcsActiveEdit = 'meoStartArea' then
        begin
          PnlSuggest.Left := 34;
          PnlSuggest.Top  := GBTop3.Top + 32 + 23;
        end else
        if lcsActiveEdit = 'meoEndArea' then
        begin
          PnlSuggest.Left := 34;
          PnlSuggest.Top  := GBTop5.Top + 32 + 23;
        end else
			  if lcsActiveEdit = 'meoViaArea' then
        begin
          PnlSuggest.Left := 34;
          PnlSuggest.Top  := ( GbViaArea.Top + 26 ) + ((ViaNowTag - 1) * 22);
        end;
      end;
      //------------------------------------------------------------------------

      // -- PnlWorkMemo --------------------------------------------------------
      cxlblState.Properties.Alignment.Horz := taCenter;
      cxlblState.Visible := True;

      meoBigo.Left := 4;
      meoBigo.Width := 521;
//			meoBigo.Top := 82;
			meoBigo.Height := 37;
			meoBigo.Visible := True;
//			LbmeoBigo.Top := meoBigo.Top + 5;
			LbmeoBigo.Left := meoBigo.Left + 5;
			LbmeoBigo.Visible := (meoBigo.Text = ''); // 적요1 입력 잔상.

      meoBigo2.Left := 4;
      meoBigo2.Width := 521;
//			meoBigo2.Top := 121;
			meoBigo2.Height := 35;
			meoBigo2.Visible := True;
//			LbmeoBigo2.Top := meoBigo2.Top + 5;
			LbmeoBigo2.Left := meoBigo2.Left + 5;
			LbmeoBigo2.Visible := (meoBigo2.Text = ''); // 적요2 입력 잔상.

			meoBigo3.Left := 4;
			meoBigo3.Width := 521;
//			meoBigo3.Top := 159;
			meoBigo3.Height := 35;
			meoBigo3.Visible := True;
//			LbmeoBigo3.Top := meoBigo3.Top + 5;
			LbmeoBigo3.Left := meoBigo3.Left + 5;
			LbmeoBigo3.Visible := (meoBigo3.Text = ''); // 적요3 입력 잔상.

      if GT_USERIF.HD = 'A1531' then
        LbmeoBigo3.Caption := '적요③ ( 기사에게 안보임 ) ▶ 결재정보 기재'
      else
        LbmeoBigo3.Caption := '적요③ ( 기사에게 안보임 ) - 다음날 일마감후 자동 삭제됨';

			btnAddBigo.Left := 528;
			btnAddBigo.Width := 28;
//			btnAddBigo.Top := 82;
			btnAddBigo.Height := 90;//112;
			btnAddBigo.Font.Size := 9;
			btnAddBigo.Visible := True;

			BtnResvView.Left := 559;
			BtnResvView.Width := 28;
//      BtnResvView.Top := 82;
			BtnResvView.Height := btnAddBigo.Height;
			BtnResvView.Caption := '예' + #13#10 + #13#10 + '약';
			BtnResvView.Visible := True;


			if IsBubuinUse then
			begin
				meoBigo.Top := 82;
        LbmeoBigo.Top := meoBigo.Top + 5;
        meoBigo2.Top := 121;
        LbmeoBigo2.Top := meoBigo2.Top + 5;
        meoBigo3.Top := 159;
        LbmeoBigo3.Top := meoBigo3.Top + 5;
				btnAddBigo.Top := 82 + 22;
        BtnResvView.Top := btnAddBigo.Top;
      end else
      begin
				meoBigo.Top := 82 - 25;
        LbmeoBigo.Top := ( meoBigo.Top + 5 );
        meoBigo2.Top := 121 - 25;
        LbmeoBigo2.Top := ( meoBigo2.Top + 5 );
        meoBigo3.Top := 159 - 25 ;
        LbmeoBigo3.Top := ( meoBigo3.Top + 5 );
				btnAddBigo.Top := 82 + 22 - 25;
				BtnResvView.Top := btnAddBigo.Top;
			end;
			chk_AIReCall.Top := meoBigo.Top;
			chk_AIReCall.Left := btnAddBigo.Left;
			chk_AIReCall.Visible := True;

			cxGbReserv.Left := 1;
    	if GBTop5.Height < meoBigo.Top + cxGbReserv.Height then
    		cxGbReserv.Top  := GBTop5.Height - cxGbReserv.Height
    	else
    		cxGbReserv.Top  := meoBigo.Top;
			cxGbReserv.Width := 557;

      BtnResJ.Left := 275;
			BtnResJ.Top := 19;
      BtnResJ.Width := 41;
      BtnResJ.Height := 22;

      BtnResD.Left := 318;
      BtnResD.Top := 19;
      BtnResD.Width := 41;
			BtnResD.Height := 22;

      BtnResv.Left := 383;
      BtnResv.Top := 18;
      BtnResv.Width := 55;
      BtnResv.Height := 25;
      BtnResv.Caption := '예약하기';

      BtnResvCsl.Left := 439;
      BtnResvCsl.Top := 18;
      BtnResvCsl.Width := 55;
      BtnResvCsl.Height := 25;
      BtnResvCsl.Caption := '예약취소';

      BtnResvClose.Left := 495;
      BtnResvClose.Top := 18;
      BtnResvClose.Width := 55;
			BtnResvClose.Height := 25;
			BtnResvClose.Caption := '닫  기';
      //------------------------------------------------------------------------

      // --  PnlBtm ------------------------------------------------------------
      btnCmdJoin.Left := 3;
			btnCmdJoin.Width := 115;
			btnCmdJoin.Height := 30;
			btnCmdJoin.Visible := True;
			btnCmdJoinCopy.Left := 3;
			btnCmdJoinCopy.Width := 115;
			btnCmdJoinCopy.Height := 24;
			btnCmdJoinCopy.Font.Size := 9;
			btnCmdJoinCopy.Visible := True;

      btnCmdWait.Left := 121;
			btnCmdWait.Width := 115;
			btnCmdWait.Height := 30;
			btnCmdWait.Visible := True;
			btnCmdWaitCopy.Left := 121;
			btnCmdWaitCopy.Width := 115;
			btnCmdWaitCopy.Font.Size := 9;
			btnCmdWaitCopy.Height := 24;
			btnCmdWaitCopy.Visible := True;

      btnCmdQuestion.Left := 239;
			btnCmdQuestion.Width := 115;
			btnCmdQuestion.Height := 30;
			btnCmdQuestion.Visible := True;
			btnCmdMultiCall.Left := 239;
			btnCmdMultiCall.Width := 115;
			btnCmdMultiCall.Height := 24;
			btnCmdMultiCall.Visible := True;

      btnCmdUpdSave.Left := btnCmdQuestion.Left;
      btnCmdUpdSave.Top  := btnCmdQuestion.Top;
			btnCmdUpdSave.Width := 115;
			btnCmdUpdSave.Height := 55;

      btnCmdNoSMS.Left := 357;
			btnCmdNoSMS.Width := 115;
			btnCmdNoSMS.Height := 30;
			btnCmdNoSMS.Visible := True;
			btnPickupInsert.Left := 357;
			btnPickupInsert.Width := 115;
			btnPickupInsert.Height := 24;
			btnPickupInsert.Visible := True;

			btnCmdExit.Left := 475;
			btnCmdExit.Width := 115;
			btnCmdExit.Height := 56;
			btnCmdExit.Visible := True;

			if GS_FormType = 'Normal' then
			begin	
				GB3.Top := 294;
				GBTop5.Top := 357;
				PnlBottom.Top := 570;
        PnlBottom.Height := 70;
{			GB3.Align := alNone;
			GBTop5.Align := alNone;
			PnlBottom.Align := alNone;

			PnlBottom.Align := alBottom;   //2 | 2
			GBTop5.Align := alBottom;      //3 | 3
			GB3.Align := alBottom;         //1 | 1  }
			end;
			//------------------------------------------------------------------------
{			pnl_AppMsg.Left := 6;
			pnl_AppMsg.Top  := 285;
			pnl_AppMsg.Height := 286;
			pnl_AppMsg.width := 600;
			btn_Update.Left := (pnl_Title.Width Div 2) - (btn_Update.Width Div 2);//btn_Update.Left := 144;
			btn_Join.Left := 200 + btn_Update.Left;  }
		end;
  end else
	if sGubun = 'Y' then            //미니체크
  begin
    with Frm_Main.Frm_JON01[iJON01Tag] do
    begin
			iRight := Frm_Main.Frm_JON01[iJON01Tag].Left + Frm_Main.Frm_JON01[iJON01Tag].Width;
      iRight := Left + Width;

      Constraints.MinWidth := 415;
      Width := 415;

      if GS_JON01_TAB = 0 then
      begin
        try
          if Screen.MonitorCount = 1 then iScreenWidth := Screen.Width
                                     else iScreenWidth := Screen.Monitors[Monitor.MonitorNum].Width;
        except
          iScreenWidth := Screen.Width;
        end;

  			if iScreenWidth > ( Frm_Main.Frm_JON01[iJON01Tag].Left + Frm_Main.Frm_JON01[iJON01Tag].Width )  then
  				iLeft := iRight - Frm_Main.Frm_JON01[iJON01Tag].Width
  			else
  				iLeft := iScreenWidth - Frm_Main.Frm_JON01[iJON01Tag].Width;
      end else
      if GS_JON01_TAB = 1 then Left := 0;

      pnlRShare.Width := 404;
      pnlShare.Width := 387;

      lblTS1.Top := 9;
      lblTS1.Left := 16;
      lblCShareRJ.Top := 30;
      lblCShareRJ.Left := 29;

      // -- 지사정보 및 전화 ---------------------------------------------------
      GBTop1.Height := 53;

      cxLblBar1.Top := 47;
      cxLblBar1.Width := 389;

      cxLblBar3.Top := 0;
      cxLblBar3.Width := 389;

      // 과거
      cxButton1.Top := 24;
      cxButton1.Left := 4;
      cxButton1.Width := 31;
      cxButton1.Height := 22;
			cxButton1.Visible := True;
			// 고객전화번호1
      cxtCuTel.Top := 24;
      cxtCuTel.Left := 35;
      if GT_OCX <> '' then cxtCuTel.Width := 130
                      else cxtCuTel.Width := 152;
			cxtCuTel.Height := 22;
			cxtCuTel.Visible := True;
//      cxLCuTelFlg.Top := 28;
//      cxLCuTelFlg.Left := 40;

			cxImage1.Top := 25;
      if GT_OCX <> '' then cxImage1.Left := 151
                      else cxImage1.Left := 174;
			cxImage1.Visible := True;
			// 고객검색창
			cxGBSearch.Left := 6;
			cxGBSearch.Top := 82;
			cxGBSearch.Width := 393;

			// 전화버튼1
      BtnCall.Top := 24;
      BtnCall.Left := 165;
      BtnCall.Width := 22;
			BtnCall.Height := 22;
			BtnCall.Visible := True;

      // 고객전화번호2
      cxtCuTel2.Top := 24;
      cxtCuTel2.Left := 187;
      if GT_OCX <> '' then
      begin
        cxtCuTel2.Width := 130;
        BtnCall.Visible := True;
        BtnCall2.Visible := True;
      end else
      begin
        cxtCuTel2.Width := 152;
        BtnCall.Visible := False;
        BtnCall2.Visible := False;
      end;
      cxtCuTel2.Height := 22;

//      cxLCuTel2Flg.Top := 28;
//      cxLCuTel2Flg.Left := 221;

      // 전화버튼2
      BtnCall2.Top := 24;
      BtnCall2.Left := 317;
      BtnCall2.Width := 21;
      BtnCall2.Height := 22;

      // 전화번호오픈
      cbTelView.Top := 24;
      cbTelView.Left := 338;
      cbTelView.Width := 58;
      cbTelView.Height := 22;

      pSetCuTelLabel(cbTelView.ItemIndex);

      // 지사정보
      cboBrOnly.Top := 0;
      cboBrOnly.Left := 3;
      cboBrOnly.Width := 93;
      cboBrOnly.Height := 24;

      cxTxtBrNameCaption.Top := cboBrOnly.Top; // 수정시에 지사명, 대표번호 크게 보여줌.
      cxTxtBrNameCaption.Left := cboBrOnly.Left;
      cxTxtBrNameCaption.Width := 394;

      // 지사+대표번호
      cboBranch.Top := 0;
      cboBranch.Left := 96;
      cboBranch.Width := 209;
      cboBranch.Height := 24;

      // 검색
      cxTSearchMainTel.Top := 0;
      cxTSearchMainTel.Left := 305;
      cxTSearchMainTel.Width := 91;
      cxTSearchMainTel.Height := 24;

//      cxLSearchMainTelFlg.Top := 5;
//      cxLSearchMainTelFlg.Left := 312;

      lst_BRList.Left := 82;
      lst_BRList.Top := 55;

      shaPrcMsg.left := 59;
      shaPrcMsg.Top := 114;

      pnlNewCustYN.Left := 4;    // 신규 멘트를 보여준다.
      pnlNewCustYN.Top := 30;
      pnlNewCustYN.Width := 391;

      pnlBrNoMent.Left := 4;     // 지사별 멘트를 보여준다.
      pnlBrNoMent.Top := 56;
      pnlBrNoMent.Width := 391;

    	// DNIS 정보 추가. 2011.05.17 CDS.
    	shrDNIS_DSP.Left := 0;
    	shrDNIS_DSP.Top  := 65;
      shrDNIS_DSP.Width := 352;

      pnlBubin.Top := 168;
      pnlBubin.Left := 5;

      PnlKTPOIYN.Left := 038;
			PnlKTPOIYN.Top  := 215;

			// 오더수정시에 오더배차 및 상태에 관련 정보를 보여준다.
			PnlModifyTitle.Left := 319;
			PnlModifyTitle.Top := GBTop2.Top - 12;//0;
//			BtnLClose1.Top := 0;
			pnlClose.Top := PnlModifyTitle.Top ;
//			BtnLClose1.Left := PnlModifyTitle.Left - BtnLClose1.Width;
			pnlClose.Left := PnlModifyTitle.Left - pnlClose.Width;
//			PnlModifyTitle.Height := 17;
			PnlModifyTitle.Width := 92;
			if PnlModifyTitle.Height = 17 then pnlOrderInfoView.Top := PnlModifyTitle.Top + PnlModifyTitle.Height//90
																		else pnlOrderInfoView.Top := PnlModifyTitle.Top + PnlModifyTitle.Height;//103;   

			//------------------------------------------------------------------------
			GBTop2.Height := 147;

			edtCuName.Top := 3;
			edtCuName.Left := 0;
			edtCuName.Width := 228;
			edtCuName.Height := 23;
			edtCuName.Visible := True;
			
			BtnCustAdd.Top := 3;
			BtnCustAdd.Left := 233;
			BtnCustAdd.Width := 35;
			BtnCustAdd.Height := 24;
			BtnCustAdd.Visible := True;
			
			cxBtnHoTrans.Top := 3;
			cxBtnHoTrans.Left := 269;
			cxBtnHoTrans.Width := 35;
			cxBtnHoTrans.Height := 24;
			cxBtnHoTrans.Visible := True;
			
			cboCuLevel.Top := 29;
			cboCuLevel.Left := 0;
			cboCuLevel.Width := 99;
			cboCuLevel.Height := 22;
			cboCuLevel.Visible := True;
			
			ChkCuSmsNo.Top := 31;
			ChkCuSmsNo.Left := 97;
			ChkCuSmsNo.Width := 73;
			ChkCuSmsNo.Height := 19;
			ChkCuSmsNo.Visible := True;
			
			cxBtnSpSave.Top := 29;
			cxBtnSpSave.Left := 171;
			cxBtnSpSave.Width := 33;
			cxBtnSpSave.Height := 22;
			cxBtnSpSave.Visible := True;
			
			cxBtnCuUpdate.Top := 29;
			cxBtnCuUpdate.Left := 205;
			cxBtnCuUpdate.Width := 33;
			cxBtnCuUpdate.Height := 22;
			cxBtnCuUpdate.Visible := True;
			
			cxBtnCuNew.Top := 29;
			cxBtnCuNew.Left := 238;
			cxBtnCuNew.Width := 33;
			cxBtnCuNew.Height := 22;
			cxBtnCuNew.Visible := True;
			
			cxBtnCuDel.Top := 29;
			cxBtnCuDel.Left := 271;
			cxBtnCuDel.Width := 33;
			cxBtnCuDel.Height := 22;
			cxBtnCuDel.Visible := True;
			
			CbCuGb.Top := 53;
			CbCuGb.Left := 0;
			CbCuGb.Width := 64;
			CbCuGb.Height := 22;
			CbCuGb.Visible := True;
			
			cxtCuBubin.Top := 53;
			cxtCuBubin.Left := 65;
			cxtCuBubin.Width := 202;
			cxtCuBubin.Height := 22;
			cxtCuBubin.Visible := True;
			
			btnBubinSch.Top := 53;
			btnBubinSch.Left := 269;
			btnBubinSch.Width := 35;
			btnBubinSch.Height := 22;
			btnBubinSch.Visible := True;
			
			pnlMileage.Top := 76;
			pnlMileage.Left := 0;
			pnlMileage.Width := 192;
			pnlMileage.Height := 37;
			pnlMileage.Visible := True;
			
			cxLblCuLevel.Top := 75;
			cxLblCuLevel.Left := 192;
			cxLblCuLevel.Width := 75;
			cxLblCuLevel.Height := 17;
			cxLblCuLevel.Visible := True;
			
			cb_CarType.Top := 92;
			cb_CarType.Left := 192;
			cb_CarType.Width := 75;
			cb_CarType.Height := 22;
			cb_CarType.Visible := True;
			
{			btnMileList.Top := 75;
			btnMileList.Left := 269;
			btnMileList.Width := 35;
			btnMileList.Height := 39;
			btnMileList.Visible := True;    }

			PnlOCC.Top := 115;
			PnlOCC.Left := 0;
			PnlOCC.Width := 266;
			PnlOCC.Height := 27;
			PnlOCC.Visible := True;
			
			btnCustAppinfo.Top := 125;
			btnCustAppinfo.Left := 269;
			btnCustAppinfo.Width := 35;
			btnCustAppinfo.Height := 17;
			btnCustAppinfo.Visible := True;
			{
			// -- 고객 정보 -------------------------------------------------------------
			edtCuName.Visible := True;
			edtCuName.Top := 4;
			edtCuName.Left := 3;
			edtCuName.Height := 23;
			edtCuName.Width := 228;
			edtCuName.Visible := True;

			BtnCustAdd.Visible := True;
			BtnCustAdd.Top := 3;
			BtnCustAdd.Left := 231;
			BtnCustAdd.Height := 24;
			BtnCustAdd.Width := 35;
			BtnCustAdd.Visible := True;

			cxBtnHoTrans.Visible := True;
			cxBtnHoTrans.Top := 3;
			cxBtnHoTrans.Left := 267;
			cxBtnHoTrans.Height := 24;
			cxBtnHoTrans.Width := 35;
			cxBtnHoTrans.Visible := True;
			///////////////////////////1번줄/////////////////////////
			cboCuLevel.Visible := True;
			cboCuLevel.Top := 29;
			cboCuLevel.Left := 3;
			cboCuLevel.Height := 22;
			cboCuLevel.Width := 96;
			cboCuLevel.Visible := True;

			ChkCuSmsNo.Visible := True;
			ChkCuSmsNo.Top := 31;
			ChkCuSmsNo.Left := 96;
			ChkCuSmsNo.Height := 21;
			ChkCuSmsNo.Width := 75;
			ChkCuSmsNo.Visible := True;

			cxBtnSpSave.Visible := True;
			cxBtnSpSave.Top := 29;
			cxBtnSpSave.Left := 169;
			cxBtnSpSave.Height := 22;
			cxBtnSpSave.Width := 33;
			cxBtnSpSave.Visible := True;

			cxBtnCuUpdate.Visible := True;
			cxBtnCuUpdate.Top := 29;
			cxBtnCuUpdate.Left := 203;
			cxBtnCuUpdate.Height := 22;
			cxBtnCuUpdate.Width := 33;
			cxBtnCuUpdate.Visible := True;

			cxBtnCuNew.Visible := True;
			cxBtnCuNew.Top := 29;
			cxBtnCuNew.Left := 236;
			cxBtnCuNew.Height := 22;
			cxBtnCuNew.Width := 33;
			cxBtnCuNew.Visible := True;

			cxBtnCuDel.Visible := True;
			cxBtnCuDel.Top := 29;
			cxBtnCuDel.Left := 269;
			cxBtnCuDel.Height := 22;
			cxBtnCuDel.Width := 33;
			cxBtnCuDel.Visible := True;
			///////////////////////////2번줄/////////////////////////

			CbCuGb.Visible := True;
			CbCuGb.Top := 53;
			CbCuGb.Left := 3;
			CbCuGb.Height := 22;
			CbCuGb.Width := 61;
			CbCuGb.Visible := True;

			cxtCuBubin.Visible := True;
			cxtCuBubin.Top := 53;
			cxtCuBubin.Left := 65;
			cxtCuBubin.Height := 22;
			cxtCuBubin.Width := 202;
			cxtCuBubin.Visible := True;

			btnBubinSch.Visible := True;
			btnBubinSch.Top := 53;
			btnBubinSch.Left := 269;
			btnBubinSch.Height := 22;
			btnBubinSch.Width := 35;
			btnBubinSch.Visible := True;
			///////////////////////////3번줄/////////////////////////

			pnlMileage.Visible := True;
			pnlMileage.Top := 79;
			pnlMileage.Left := 3;
			pnlMileage.Height := 28;
			pnlMileage.Width := 195;
			pnlMileage.Visible := True;

			cxLblCuLevel.Visible := True;
			cxLblCuLevel.Top := 79;
			cxLblCuLevel.Left := 199;
			cxLblCuLevel.Height := 28;
			cxLblCuLevel.Width := 69;
			cxLblCuLevel.Visible := True;

			btnMileOut.Visible := True;
			btnMileOut.Top := 79;
			btnMileOut.Left := 269;
			btnMileOut.Height := 28;
			btnMileOut.Width := 35;
			btnMileOut.Visible := True;
			///////////////////////////4번줄/////////////////////////

			PnlOCC.Visible := True;
			PnlOCC.Top := 111;
			PnlOCC.Left := 3;
			PnlOCC.Height := 28;
			PnlOCC.Width := 265;
			PnlOCC.Visible := True;

			btnCustAppinfo.Visible := True;
			btnCustAppinfo.Top := 111;
			btnCustAppinfo.Left := 269;
			btnCustAppinfo.Height := 28;
			btnCustAppinfo.Width := 33;
			btnCustAppinfo.Visible := True;
			///////////////////////////5번줄/////////////////////////
}
			// -- 고객 메모 -------------------------------------------------------------
			cxLblOrderUpInfo.Caption := meoCuCCMemo.Hint;   // 임시로 저장해서 사용

      // 오더수정시에 오더배차 및 상태에 관련 정보를 보여준다.
			pnlOrderInfoView.Top := PnlModifyTitle.Top + PnlModifyTitle.Height;//103;
			pnlOrderInfoView.Left := 118;

//      Panel3.Width := 82;

			// 고객메모
			meoCuCCMemo.Visible := True;
			meoCuCCMemo.Top := 3;
			meoCuCCMemo.Left := 306;
			meoCuCCMemo.Width := 92;
			meoCuCCMemo.Visible := True;
			
			cxLCuCCMemoFlg.Visible := (meoCuCCMemo.Text = '');
			cxLCuCCMemoFlg.Top := meoCuCCMemo.Top + 3;
			cxLCuCCMemoFlg.Left := meoCuCCMemo.Left + 5;
			cxLCuCCMemoFlg.Caption := '상담메모';

			BtnViewMemo.Top := meoCuCCMemo.Top + 1;
			BtnViewMemo.Left := meoCuCCMemo.Left + meoCuCCMemo.Width - BtnViewMemo.Width -2; 
			BtnViewMemo.Visible := True;
//-      meoCuCCMemo.Height := 58;       사이즈 조절시 자동 계산

			if Trim(mmoCbMemo.Text) <> '' then
			begin
				meoCuCCMemo.Width := 38;

				// 법인메모
				mmoCbMemo.Top := meoCuCCMemo.Top;
				mmoCbMemo.Left := meoCuCCMemo.Left;
				mmoCbMemo.Width := 38;
//-        mmoCbMemo.Height := 58;
				mmoCbMemo.Visible := True;
			end;

			// 기사메모
//-      meoCuWorMemo.Top := 60;
			meoCuWorMemo.Visible := True;
			meoCuWorMemo.Top := meoCuCCMemo.Top + meoCuCCMemo.Height + 1;
			meoCuWorMemo.Left := 306;
			meoCuWorMemo.Width := 92;
			meoCuWorMemo.Visible := True;

			cxLCuWorMemoFlg.Visible := (meoCuWorMemo.Text = '');
			cxLCuWorMemoFlg.Top := meoCuWorMemo.Top + 3;
			cxLCuWorMemoFlg.Left := meoCuWorMemo.Left + 5;
			cxLCuWorMemoFlg.Caption := '기사메모';

			chkViewLevel.Top := meoCuWorMemo.Top + 1;
			chkViewLevel.Left := meoCuWorMemo.Left + meoCuWorMemo.Width - chkViewLevel.Width -2;
//-      meoCuWorMemo.Height := 50;
			//심플메모
			edt_CardMemo.Visible := True;
			edt_CardMemo.Top := meoCuWorMemo.Top + meoCuWorMemo.Height + 1;
			edt_CardMemo.Left := 306;
			edt_CardMemo.Width := 92;
			edt_CardMemo.Visible := True;

			cxLCuCCMemoFlg1.Visible := (edt_CardMemo.Text = '');
			cxLCuCCMemoFlg1.Top := edt_CardMemo.Top + 3;
			cxLCuCCMemoFlg1.Left := edt_CardMemo.Left + 5;
			cxLCuCCMemoFlg1.Caption := '심플메모';

			BtnSimMemo.Top := edt_CardMemo.Top + 1;
			BtnSimMemo.Left := edt_CardMemo.Left + edt_CardMemo.Width - BtnSimMemo.Width -2; 
			//------------------------------------------------------------------------

      // -- 출발지 -------------------------------------------------------------
      GBTop3.Height := 83;

      // 출발지 잠김
      BtnStLock.Top := 4;
      BtnStLock.Left := 369;
      BtnStLock.Width := 24;
			BtnStLock.Height := 24;
			BtnStLock.Visible := True;

			// 출발지명
			meoStartArea.Top := 5;
			meoStartArea.Left := 2;
			meoStartArea.Width := 294;//300;
			meoStartArea.Height := 46;
			meoStartArea.Visible := True;
			cxLStartAreaFlag.Top := 18;
			cxLStartAreaFlag.Left := 17;
			cxLStartAreaFlag.Visible := (meoStartArea.Text = ''); // 출발지 입력 잔상.

			//LBS
			btn_LBS.Top := meoStartArea.Top + meoStartArea.Height - btn_LBS.Height - 1 ;
			btn_LBS.left := meoStartArea.Left + meoStartArea.Width - btn_LBS.Width - 1;
			if (GT_OCX = 'SSIT') or (GT_OCX = 'SI415') then	
				btn_LBS.Visible := True else btn_LBS.Visible := False; 

			// 출발지 설정
			btnSBigo1.Top := 29;
      btnSBigo1.Left := 369;
      btnSBigo1.Width := 24;
			btnSBigo1.Height := 24;
			btnSBigo1.Visible := True;

			// 출발지 좌표
			GBStartXYView.Top := 26;
      GBStartXYView.Left := 69;
      GBStartXYView.Width := 235;
			GBStartXYView.Height := 24;

      // 출발지 주소
      lblStartAreaName.Top := 52;
			lblStartAreaName.Left := 2;
			lblStartAreaName.Width := 164;//176;
      lblStartAreaName.Height := 22;

      // 출발지 상세지명
      cxtStartAreaDetail.Top := 52;
			cxtStartAreaDetail.Left := 167;//181;
			cxtStartAreaDetail.Width := 112;//124;
			cxtStartAreaDetail.Height := 22;

      // 출발지 저장
      btnStartLocalSave.Top := 53;
			btnStartLocalSave.Left := 280;//306;
			btnStartLocalSave.Width := 24;
			btnStartLocalSave.Height := 21;

			if GS_PRJ_AREA = 'S' then
			begin
				cb_06.Visible := True;

				cb_06.Left := 306;//373;
				cb_06.Top := 53;//373;
				cb_06.Height := 22;
				cb_06.Width := 26;

				pnlWkLicType.Left := 183 - pnlWkLicType.Width;
				pnlWkLicType.Top  := 319;
				pnlWkLicType.Height := 27;
				pnlWkLicType.width := 217;
			end
			else
			begin
				cb_06.Left := 306;//373;
				cb_06.Visible := False;
			end;

			//탁송연합콜
			btnTakAlly.Top := 6;
			btnTakAlly.Left := 295;
			btnTakAlly.Width := 30;
			btnTakAlly.Height := 19;

			// 탁송
			cb_00.Top := 6;
			cb_00.Left := 306;
      cb_00.Width := 19;
			cb_00.Height := 19;

      // 정장
      cb_01.Top := 6;
      cb_01.Left := 327;
      cb_01.Width := 19;
      cb_01.Height := 19;
			cb_01.Visible := True;

      // 경유
      cb_02.Top := 6;
      cb_02.Left := 348;
      cb_02.Width := 19;
      cb_02.Height := 19;
			cb_02.Visible := True;

      // 적요
      cb_03.Top := 28;
			cb_03.Left := 306;
      cb_03.Width := 19;
			cb_03.Height := 19;
			cb_03.Visible := True;

      // 스틱
      cb_04.Top := 28;
      cb_04.Left := 327;
      cb_04.Width := 19;
      cb_04.Height := 19;
			cb_04.Visible := True;

      // 사용자정의
      cb_05.Top := 28;
      cb_05.Left := 348;
      cb_05.Width := 19;
      cb_05.Height := 19;

      // 경유지
      BtnViaAdd.Top := 53;
			BtnViaAdd.Left := 334;//332;
			BtnViaAdd.Width := 62;
			BtnViaAdd.Height := 22;
			BtnViaAdd.Visible := True;
			//------------------------------------------------------------------------


      // -- 경유지 -------------------------------------------------------------

      cxLblBar2.Width := 389;

      // 경유지명
      meoViaArea1.Top := 4;
			meoViaArea1.Left := 26;
      meoViaArea1.Width := 150;
			meoViaArea1.Height := 20;

      // 경유지 주소명
      cxViaAreaName1.Top := 3;
			cxViaAreaName1.Left := meoViaArea1.Left + meoViaArea1.Width + 1;//156;
			cxViaAreaName1.Width := 185;//205;
			cxViaAreaName1.Height := 22;

      // 삭제
      BtnViaMinus1.Top := 5;
      BtnViaMinus1.Left := 361;
      BtnViaMinus1.Width := 33;
      BtnViaMinus1.Height := 20;

    	for i := 2 to 5 do
    	begin
    		meoViaArea[i].Left := meoViaArea1.left;
    		meoViaArea[i].Height := meoViaArea1.Height;
    		meoViaArea[i].Width := meoViaArea1.Width;

    		cxViaAreaName[i].Left := cxViaAreaName1.Left;
    		cxViaAreaName[i].Height := cxViaAreaName1.Height;
    		cxViaAreaName[i].Width := cxViaAreaName1.Width;

    		BtnViaMinus[i].Left := BtnViaMinus1.Left;
    		BtnViaMinus[i].Height := BtnViaMinus1.Height;
				BtnViaMinus[i].Width := BtnViaMinus1.Width;
    	end;
			pnl_ViaMent.Left := BtnViaLock1.Left;
			pnl_ViaMent.Width := BtnViaLock1.Width + meoViaArea1.Width + cxViaAreaName1.Width + BtnViaMinus1.Width + 5;

      //------------------------------------------------------------------------

      // -- 도착지 -------------------------------------------------------------

      // 도착지 잠김
      BtnEdLock.Top := 7;
      BtnEdLock.Left := 369;
      BtnEdLock.Width := 24;
			BtnEdLock.Height := 21;
			BtnEdLock.Visible := True;

      // 도착지명
      meoEndArea.Top := 5;
      meoEndArea.Left := 5;
      meoEndArea.Width := 363;
			meoEndArea.Height := 46;
			meoEndArea.Visible := True;
			cxLEndAreaFlag.Top := 21;
      cxLEndAreaFlag.Left := 17;

      // 도착지 설정
      btnEpop.Top := 29;
      btnEpop.Left := 369;
      btnEpop.Width := 24;
			btnEpop.Height := 21;
			btnEpop.Visible := True;

			// 도착지 좌표
      GBEndXYView.Top := 26;
      GBEndXYView.Left := 132;
      GBEndXYView.Width := 235;
			GBEndXYView.Height := 24;

      // 도착지 주소
			cxReEndArea.Top := 50;
			cxReEndArea.Left := 5;
			cxReEndArea.Width := 283;//309;
			cxReEndArea.Height := 22;
			cxReEndArea.Visible := True;

			//도착지 상세지명 편집창 경남에이스(G33)만 사용
			pnl_EndDetail_Update.Top := 52;
			pnl_EndDetail_Update.Left := 5;
			pnl_EndDetail_Update.Height := 28;
			pnl_EndDetail_Update.Width := 390;

			// 도착지저장
			btnEndLocalSave.Top := 52;
			btnEndLocalSave.Left := 290;
			btnEndLocalSave.Width := 24;
			btnEndLocalSave.Height := 22;
			btnEndLocalSave.Visible := True;

			// 거리계산
			btnDCalc.Top := 52;
			btnDCalc.Left := 316;
			btnDCalc.Width := 24;
      btnDCalc.Height := 22;
			btnDCalc.Visible := True;

      // 도착지 지도
      btnViewMap.Top := 52;
			btnViewMap.Left := 342;
      btnViewMap.Width := 24;
			btnViewMap.Height := 22;
			btnViewMap.Visible := True;

      // 경로보기
      BtnSR.Top := 52;
      BtnSR.Left := 368;
      BtnSR.Width := 24;
			BtnSR.Height := 22;
			BtnSR.Visible := True;
			//------------------------------------------------------------------------

      // -- 요금/거리/수수료 등등  ---------------------------------------------
      if IsBubuinUse then
      begin
        Pnl_BubinV.Visible := True;

        pSetFormScroll(1, 724);

				GB3.Height := 79;
				GBTop5.Height := 221;// 315;

				CbCuGb.Tag := 1;
			end else
			begin
				Pnl_BubinV.Visible := False;

        pSetFormScroll(1, 724 - 25);

				GB3.Height := 79;
				GBTop5.Height := 221 - 25;

        CbCuGb.Tag := 0;
      end;

      // 요금문의
      BtnQRate.Top := 29;
      BtnQRate.Left := 5;
      BtnQRate.Width := 23;
			BtnQRate.Height := 22;
			BtnQRate.Visible := True;

      // 스마트요금표
      BtnSmartRate.Top := 29;
      BtnSmartRate.Left := 29;
      BtnSmartRate.Width := 23;
			BtnSmartRate.Height := 20;
			BtnSmartRate.Visible := True;

      // 스마트요금표 백그라운드
			cxLabel13.Top := 28;
      cxLabel13.Left := 52;
      cxLabel13.Width := 261;
			cxLabel13.Height := 22;
			cxLabel13.Visible := True;

      // 요금표 스마트
      cxLblSmartRate.Top := 32;
      cxLblSmartRate.Left := 52;
      cxLblSmartRate.Width := 96;
			cxLblSmartRate.Height := 16;
			cxLblSmartRate.Visible := True;

      // 요금표 1위
      cxLblRate1.Top := 32;
      cxLblRate1.Left := 149;
      cxLblRate1.Width := 77;
			cxLblRate1.Height := 16;
			cxLblRate1.Visible := True;
//-      cxLblRate1.Visible := False;

      // 요금표 2위
      cxLblRate2.Top := 32;
      cxLblRate2.Left := 227;
      cxLblRate2.Width := 81;
			cxLblRate2.Height := 16;
			cxLblRate2.Visible := True;
//-      cxLblRate2.Visible := False;

      // 미지정
      chkNoSet.Top := 2;
      chkNoSet.Left := 28;
			chkNoSet.Width := 39;//42;
			chkNoSet.Height := 22;
			chkNoSet.Visible := True;

      // 거리\
      chkRangeRate.Top := 2;
			chkRangeRate.Left := 68;//71;
			chkRangeRate.Width := 27;//30;
			chkRangeRate.Height := 22;
			chkRangeRate.Visible := True;

      // 수수료없음-콜무
      BtnOptionCallMu.Top := 2;
			BtnOptionCallMu.Left := 96;//102;
			BtnOptionCallMu.Width := 28;//70;
			BtnOptionCallMu.Height := 22;
			BtnOptionCallMu.Visible := True;

			// 남자
      BtnOptionSexM.Top := 2;
			BtnOptionSexM.Left := 125;//132;
			BtnOptionSexM.Width := 18;
			BtnOptionSexM.Height := 22;
			BtnOptionSexM.Visible := True;

      // 여자
      BtnOptionSexF.Top := 2;
			BtnOptionSexF.Left := 143;//157;
			BtnOptionSexF.Width := 18;
			BtnOptionSexF.Height := 22;
			BtnOptionSexF.Visible := True;

      //기사나이
      BtnWkAge.Top := 2;
			BtnWkAge.Left := 162;//182;
			BtnWkAge.Width := 27;//30;
			BtnWkAge.Height := 22;
			BtnWkAge.Visible := True;
			pnlWkAge.Left := BtnWkAge.Left;

      //지원금
      BtnWKJAmt.Top := 2;
			BtnWKJAmt.Left := 190;//214;
			BtnWKJAmt.Width := 38;//41;
			BtnWKJAmt.Height := 22;
			BtnWKJAmt.Visible := True;

			// 법인콜
      BtnPlusYN.Top := 2;
			BtnPlusYN.Left := 230;//257;
			BtnPlusYN.Width := 29;
			BtnPlusYN.Height := 22;
			BtnPlusYN.Visible := True;

      // 상황실
      BtnCenterMng.Top := 2;
			BtnCenterMng.Left := 260;//298;
			BtnCenterMng.Width := 40;//39;
			BtnCenterMng.Height := 22;
			BtnCenterMng.Visible := True;

			// 요금저장
			btn_ChargeSave.Top := 2;
      btn_ChargeSave.Left := 6;
      btn_ChargeSave.Width := 21;
			btn_ChargeSave.Height := 22;
			btn_ChargeSave.Visible := True;

      // 요금
      curRate.Top := 51;
      curRate.Left := 5;
      curRate.Width := 82;
			curRate.Height := 24;
			curRate.Visible := True;

			// 요금잠금
			BtnRaLock.Top := 51;
			BtnRaLock.Left := 87;
			BtnRaLock.Width := 23;
			BtnRaLock.Height := 22;

      // 거리
      curKm.Top := 51;
      curKm.Left := 110;
      curKm.Width := 59;
			curKm.Height := 24;
			curKm.Visible := True;

      // 수수료
      cxDriverCharge.Top := 51;
      cxDriverCharge.Left := 169;
      cxDriverCharge.Width := 56;
      cxDriverCharge.Height := 24;
      LbDriverCharge.Top := 54;
			LbDriverCharge.Left := 172;
			LbDriverCharge.Visible := True;

      // 결재구분
			cbbPayMethod.Top := 51;
			cbbPayMethod.Left := 224;
      cbbPayMethod.Width := 84;
			cbbPayMethod.Height := 24;
			cbbPayMethod.Visible := True;


			// 캐시사용적립
			btnCashSave.Top := 24;
			btnCashSave.Left := 200;
			btnCashSave.Width := 50;
			btnCashSave.Height := 24;

			// 마일사용적립
			btnMileSave.Top := 24;
			btnMileSave.Left := 252;
			btnMileSave.Width := 50;
			btnMileSave.Height := 24;

			// 결재시간
      cbbPostTime.Top := 51;
      cbbPostTime.Left := 307;
      cbbPostTime.Width := 86;
			cbbPostTime.Height := 24;
			cbbPostTime.Visible := True;

      // 기사입금수수료
      edtPostPay.Top := 27;
      edtPostPay.Left := 312;
      edtPostPay.Width := 81;
			edtPostPay.Height := 23;
			edtPostPay.Visible := True;
			LblPostPay.Top := 31;
			LblPostPay.Left := 315;
			LblPostPay.Visible := True;

      // 현금/쿠폰/카드결재
      cbCardSanction.Top := 3;
			cbCardSanction.Left := 340;
      cbCardSanction.Width := 53;
			cbCardSanction.Height := 20;
			cbCardSanction.Visible := True;

      // 법인 백그라운드  ------------------------------------------------------
      Pnl_BubinV.Top := 75;
      Pnl_BubinV.Left := -2;
      Pnl_BubinV.Width := 399;
			Pnl_BubinV.Height := 24;
//			Pnl_BubinV.Visible := True;

      // 경유요금
      cxCurPathRate.Top := 1;
      cxCurPathRate.Left := 8;
      cxCurPathRate.Width := 79;
			cxCurPathRate.Height := 21;
			cxCurPathRate.Visible := True;
			lblCurPathRate.Top := 4;
			lblCurPathRate.Left := 10;
			lblCurPathRate.Visible := True;

      // 대기시간
      cxTmWaitTime.Top := 1;
      cxTmWaitTime.Left := 87;
      cxTmWaitTime.Width := 54;
			cxTmWaitTime.Height := 21;
			cxTmWaitTime.Visible := True;

      // 대기시간종류
      cxBtnWaitTmRate.Top := 2;
      cxBtnWaitTmRate.Left := 142;
      cxBtnWaitTmRate.Width := 27;
			cxBtnWaitTmRate.Height := 18;
			cxBtnWaitTmRate.Visible := True;

      // 대기시간율
      cxCurWaitTmRate.Top := 1;
      cxCurWaitTmRate.Left := 170;
      cxCurWaitTmRate.Width := 48;
			cxCurWaitTmRate.Height := 21;
			cxCurWaitTmRate.Visible := True;

      // 보정금액
      cxCurRevisionRate.Top := 1;
      cxCurRevisionRate.Left := 218;
      cxCurRevisionRate.Width := 86;
      cxCurRevisionRate.Height := 21;
			lblCurRevisionRate.Top := 4;
			lblCurRevisionRate.Left := 226;
			lblCurRevisionRate.Visible := True;

      // 법인메모
      cxTBubinMemo.Top := 1;
      cxTBubinMemo.Left := 304;
      cxTBubinMemo.Width := 91;
      cxTBubinMemo.Height := 21;
      cxLBubinMemoFlag.Top := 4;
			cxLBubinMemoFlag.Left := 308;
			cxLBubinMemoFlag.Visible := True;
			//------------------------------------------------------------------------

			pnl_charge.Top := 99;
      pnl_charge.Width := 387;
			pnl_charge.Height := 37;

      gbRQAList.Left := 6;
      gbRQAList.Top := 99;
      gbRQAList.Width := 390;

			SetPosLblDistance;

      PnlWkJi.Left := edtPostPay.Left - 28;
			PnlWkJi.Top := edtPostPay.Top + edtPostPay.Height + 25;
			//------------------------------------------------------------------------

      // -- PnlWorkMemo --------------------------------------------------------
      cxlblState.Properties.Alignment.Horz := taLeftJustify;
      cxlblState.Visible := False;  // 공간부족으로 표시 안함.

//      PnlWorkMemo.Height := 125;
      meoBigo.Left := 4;
			meoBigo.Width := 338;//358;
//			meoBigo.Top := 99+4;
			meoBigo.Height := 37;
			meoBigo.Visible := True;
//			LbmeoBigo.Top := meoBigo.Top + 3;
			LbmeoBigo.Left := meoBigo.Left + 3;
			LbmeoBigo.Visible :=(meoBigo.Text = ''); // 적요1 입력 잔상.

      meoBigo2.Left := 4;
			meoBigo2.Width := meoBigo.Width;//358;
//			meoBigo2.Top := 99+42;
			meoBigo2.Height := 37;
			meoBigo2.Visible := True;
//			LbmeoBigo2.Top := meoBigo2.Top + 3;
			LbmeoBigo2.Left := meoBigo2.Left + 3;
			LbmeoBigo2.Visible := (meoBigo2.Text = ''); // 적요2 입력 잔상.

			meoBigo3.Left := 4;
			meoBigo3.Width := meoBigo.Width;
//			meoBigo3.Top := 99+80;
			meoBigo3.Height := 37;
			meoBigo3.Visible := True;
  		LbmeoBigo3.Left := 11;
//			LbmeoBigo3.Top  := 99+84;
			LbmeoBigo3.Visible := (meoBigo3.Text = ''); // 적요3 입력 잔상.

      if GT_USERIF.HD = 'A1531' then
        LbmeoBigo3.Caption := '적요③ ( 기사에게 안보임 )' + #13#10 + '  ▶ 결재정보 기재'
      else
        LbmeoBigo3.Caption := '적요③ ( 기사에게 안보임 )' + #13#10 + '  - 다음날 일마감후 자동 삭제됨';

			btnAddBigo.Left := 343;//363;
			btnAddBigo.Width := 48;//28;
//			btnAddBigo.Top := 99+4;
			btnAddBigo.Height := 55 -11;
			btnAddBigo.Font.Size := 8;
			btnAddBigo.Visible := True;

			BtnResvView.Left := btnAddBigo.Left;//363;
			BtnResvView.Width := btnAddBigo.Width;//28;
//			BtnResvView.Top := 99+61;
			BtnResvView.Height := 55 - 11;
			BtnResvView.Caption := '예' + #13#10 + '약';
			BtnResvView.Visible := True;

			if IsBubuinUse then
      begin
				meoBigo.Top := 102;
        LbmeoBigo.Top := meoBigo.Top + 5;
        meoBigo2.Top := 140;
        LbmeoBigo2.Top := meoBigo2.Top + 5;
				meoBigo3.Top := 179;
        LbmeoBigo3.Top := meoBigo3.Top + 5;
				btnAddBigo.Top := meoBigo.Top + 22;
				BtnResvView.Top := btnAddBigo.Top + btnAddBigo.Height + 2;
      end else
      begin
        meoBigo.Top := 102 - 25;
        LbmeoBigo.Top := ( meoBigo.Top + 5 );
        meoBigo2.Top := 140 - 25;
        LbmeoBigo2.Top := ( meoBigo2.Top + 5 );
        meoBigo3.Top := 179 - 25 ;
				LbmeoBigo3.Top := ( meoBigo3.Top + 5 );
				btnAddBigo.Top := meoBigo.Top + 22;
        BtnResvView.Top := btnAddBigo.Top + btnAddBigo.Height + 2;
      end;

			chk_AIReCall.Top := meoBigo.Top;
			chk_AIReCall.Left := btnAddBigo.Left;
			chk_AIReCall.Visible := True;

			cxGbReserv.Left := 1;
    	if GBTop5.Height < meoBigo.Top + cxGbReserv.Height then
    		cxGbReserv.Top  := GBTop5.Height - cxGbReserv.Height
    	else
    		cxGbReserv.Top  := meoBigo.Top;
			cxGbReserv.Width := 391;

      BtnResJ.Left := 260;
      BtnResJ.Top := 16;
      BtnResJ.Width := 30;
			BtnResJ.Height := 22;
			BtnResJ.Visible := True;

      BtnResD.Left := 260;
      BtnResD.Top := 39;
      BtnResD.Width := 30;
			BtnResD.Height := 22;
			BtnResD.Visible := True;

      BtnResv.Left := 293;
      BtnResv.Top := 18;
      BtnResv.Width := 30;
      BtnResv.Height := 41;
			BtnResv.Caption := '예약' + #13#10 + '하기';
			BtnResv.Visible := True;

      BtnResvCsl.Left := 324;
      BtnResvCsl.Top := 18;
      BtnResvCsl.Width := 30;
      BtnResvCsl.Height := 41;
			BtnResvCsl.Caption := '예약' + #13#10 + '취소';
			BtnResvCsl.Visible := True;

      BtnResvClose.Left := 355;
      BtnResvClose.Top := 18;
      BtnResvClose.Width := 30;
      BtnResvClose.Height := 41;
			BtnResvClose.Caption := '닫' + #13#10 + '기';
			BtnResvClose.Visible := True;
			//------------------------------------------------------------------------

      // ---- Suggest 위치 조절 ------------------------------------------------
      if PnlSuggest.Visible then
      begin
				if lcsActiveEdit = 'meoStartArea' then
        begin
          PnlSuggest.Left := 7;
          PnlSuggest.Top  := GBTop3.Top + 52 + 23;
        end else
        if lcsActiveEdit = 'meoEndArea' then
        begin
          PnlSuggest.Left := 7;
          PnlSuggest.Top  := GBTop5.Top + 57 + 23;
        end else
			  if lcsActiveEdit = 'meoViaArea' then
        begin
          PnlSuggest.Left := 7;
          PnlSuggest.Top  := ( GbViaArea.Top + 26 ) + ((ViaNowTag - 1) * 22);
        end;
      end;
      //------------------------------------------------------------------------

      // --  PnlBtm ------------------------------------------------------------
			btnCmdJoin.Left := 3;
			btnCmdJoin.Width := 75;
			btnCmdJoin.Height := 30;
			btnCmdJoin.Visible := True;
			btnCmdJoinCopy.Left := 3;
			btnCmdJoinCopy.Width := 75;
			btnCmdJoinCopy.Font.Size := 8;
			btnCmdJoinCopy.Visible := True;
			btnCmdJoinCopy.Height := 24;

			btnCmdWait.Left := 81;
			btnCmdWait.Width := 75;
			btnCmdWait.Visible := True;
			btnCmdWait.Height := 30;
			btnCmdWaitCopy.Left := 81;
			btnCmdWaitCopy.Width := 75;
			btnCmdWaitCopy.Font.Size := 8;
			btnCmdWaitCopy.Visible := True;
			btnCmdWaitCopy.Height := 24;

      btnCmdQuestion.Left := 159;
			btnCmdQuestion.Width := 75;
			btnCmdQuestion.Visible := True;
			btnCmdQuestion.Height := 30;
			btnCmdMultiCall.Left := 159;
			btnCmdMultiCall.Width := 75;
			btnCmdMultiCall.Visible := True;
			btnCmdMultiCall.Height := 24;

      btnCmdUpdSave.Left := btnCmdQuestion.Left;
			btnCmdUpdSave.Top  := btnCmdQuestion.Top;
			btnCmdUpdSave.Width := 75;
			btnCmdUpdSave.Height := 55;

			btnCmdNoSMS.Left := 237;
			btnCmdNoSMS.Width := 75;
			btnCmdNoSMS.Visible := True;
			btnCmdNoSMS.Height := 30;
			btnPickupInsert.Left := 237;
			btnPickupInsert.Width := 75;
			btnPickupInsert.Visible := True;
			btnPickupInsert.Height := 24;

      btnCmdExit.Left := 315;
			btnCmdExit.Width := 75;
			btnCmdExit.Visible := True;
			btnCmdExit.Height := 56;
			//------------------------------------------------------------------------

			////미니창 판넬 위치 고정을 위하여 추가 20160828 KHS
			GB3.Top := 334; //334    //368
			GBTop5.Top := 413; //413
			PnlBottom.Top := 644;  //644   570
      PnlBottom.Height := 70;
			GB3.Align := alNone;
			GBTop5.Align := alNone;
			PnlBottom.Align := alNone;
			PnlBottom.Align := alBottom;
			GBTop5.Align := alBottom;
			GB3.Align := alBottom;   
			/////////////////////////////////////////////////////

{			pnl_AppMsg.Left := 6;
			pnl_AppMsg.Top  := 340;
			pnl_AppMsg.Height := 303;
			pnl_AppMsg.width := 405;
			btn_Update.Left := (pnl_Title.Width Div 2) - (btn_Update.Width Div 2);//btn_Update.Left := 44;
			btn_Join.Left := 200 + btn_Update.Left;  }
		end;
	end;

  with Frm_JON01 do
  begin
    BtnClose.Left := PnlTitle.Width - ( BtnClose.Width + 3 );
    BtnNew.Left := BtnClose.Left - ( BtnNew.Width + 2);
    BtnFix.Left := BtnNew.Left - ( BtnFix.Width + 2);
    ChkMini.Left := BtnFix.Left - ( ChkMini.Width + 2);
    ChkGroup.Left := ChkMini.Left - ( ChkGroup.Width + 2);
  end;
  SetDebugeWrite('JON01Size.procFrmSizeChange End');
end;

end.

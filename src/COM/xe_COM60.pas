unit xe_COM60;

interface

uses
	Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2007Silver, dxSkinOffice2010Silver, dxSkinSharp, Vcl.Menus,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, cxLabel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridChartView, System.StrUtils, cxClasses,
	cxGridCustomView, cxGrid, Vcl.ExtCtrls, cxTextEdit, cxMaskEdit, MSXML2_TLB, cxProgressBar,
	cxDropDownEdit, Vcl.StdCtrls, cxButtons, cxGroupBox, system.Math, cxMemo,
  dxScrollbarAnnotations;

type
  Tfrm_COM60 = class(TForm)
		pnl_Hot3Day: TcxGroupBox;
		pnl_Hot3DayTitle: TcxGroupBox;
    Label3: TLabel;
    btn_Hot2Day: TcxButton;
    btn_Hot3DayClose: TcxButton;
    btn_Survey: TcxButton;
    cbKindA8: TcxComboBox;
    btn_Hot2DayChart: TcxButton;
    pnl_Hot3Chart_Time: TPanel;
    cxGridA8C1: TcxGrid;
    cxGridA8C1ChartView1: TcxGridChartView;
    cxGridA8C1ChartView1Series1: TcxGridChartSeries;
    cxGridA8C1Level1: TcxGridLevel;
    cxGridA8C2: TcxGrid;
    cxGridA8C2ChartALL: TcxGridChartView;
    cxGridA8C2ChartSeries1: TcxGridChartSeries;
    cxGridLevel20: TcxGridLevel;
    cxGroupBox13: TcxGroupBox;
    cxLabel32: TcxLabel;
    lb_PeakTimeBox: TcxLabel;
    lb_PeakTimeCaption: TcxLabel;
    pnl_Hot3Chart_Day: TPanel;
    cxGridA8T1: TcxGrid;
    cxGridA8D1ChartView1: TcxGridChartView;
    cxGridChartSeries5: TcxGridChartSeries;
    cxGridLevel22: TcxGridLevel;
    cxGroupBox12: TcxGroupBox;
		cxLabel26: TcxLabel;
    lb_PeakDayCaption: TcxLabel;
    lb_PeakDayBox: TcxLabel;
    cxGrid16: TcxGrid;
    cxGrid_OrderDayList: TcxGridDBTableView;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridLevel24: TcxGridLevel;
    cxGroupBox10: TcxGroupBox;
    lb_PeakTime1: TcxLabel;
    lb_PeakDay1: TcxLabel;
    cxGridA8: TcxGrid;
    cxGrid_OrderTimeList: TcxGridDBTableView;
    cxGrid_OrderTimeListColumn1: TcxGridDBColumn;
    cxGrid_OrderTimeListColumn2: TcxGridDBColumn;
    cxGridLevel21: TcxGridLevel;
    tm_Flash: TTimer;
    cxSTTStyle: TcxStyleRepository;
    cxSTT_Field1: TcxStyle;
    cxSTT_Field2: TcxStyle;
    cxSTT_Field3: TcxStyle;
    cxSTT_Field4: TcxStyle;
    cxSTT_Field5: TcxStyle;
    cxSTT_Field6: TcxStyle;
    cxSTT_Field7: TcxStyle;
    cxSTT_Field8: TcxStyle;
    cxSTT_Field9: TcxStyle;
    cxSTT_Field10: TcxStyle;
    cxSTT_Field11: TcxStyle;
    cxSTT_Field12: TcxStyle;
    empty1: TcxStyle;
    empty2: TcxStyle;
    empty3: TcxStyle;
    empty4: TcxStyle;
    empty5: TcxStyle;
    cxSTTChart: TcxStyle;
    cxStyleBasic: TcxStyle;
    cxSTTChartGridLine: TcxStyle;
    cxStyleSmartPeek2: TcxStyle;
		cxStyleSmartPeek3: TcxStyle;
    cxStyleSaturday: TcxStyle;
    cxStyleSunDay: TcxStyle;
    cxStyleGridBG: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    lb_PeakTime3: TcxLabel;
    lb_PeakTime2: TcxLabel;
    lb_PeakDay2: TcxLabel;
    lb_PeakDay3: TcxLabel;
    pnl_Survey: TPanel;
    pnl_Survey_Title: TPanel;
    btn_Survey_NO: TcxButton;
    btn_Survey_YES: TcxButton;
    mmo_Survey: TcxMemo;
    lb_Survey_ETC: TcxLabel;
    btn_Survey_Close: TcxButton;
    lb_Survey: TcxLabel;
    lb_EtcInfo: TcxLabel;
    cxLabel2: TcxLabel;
    pnl_TimeChartLeft: TcxGroupBox;
    lb_9: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    pnl_DayChartLeft: TcxGroupBox;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    lb_TimeCaption: TcxLabel;
		cxLabel19: TcxLabel;
    edt_STPoi: TcxTextEdit;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxLabel20: TcxLabel;
    cxButton1: TcxButton;
    pnl_ReOPEN: TPanel;
    Panel2: TPanel;
    cxLabel21: TcxLabel;
    btn_ReOpenNo: TcxButton;
    btn_ReOpenYes: TcxButton;
    cxLabel24: TcxLabel;
    btn_More: TcxButton;
    pnl_More: TPanel;
    Panel3: TPanel;
    btn_MoreSave: TcxButton;
    btn_MoreClose: TcxButton;
    mme_More: TcxMemo;
    cxLabel1: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel25: TcxLabel;
    lb_SearchInfo: TcxLabel;
    btn_Hot2DayCC: TcxButton;
    lb_SearchTitle: TLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    procedure btn_Hot2DayClick(Sender: TObject);
		procedure tm_FlashTimer(Sender: TObject);
		procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pnl_Hot3DayTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_Hot3DayCloseClick(Sender: TObject);
    procedure btn_Hot2DayChartClick(Sender: TObject);
		procedure btn_SurveyClick(Sender: TObject);
    procedure btn_Survey_NOClick(Sender: TObject);
		procedure btn_Survey_YESClick(Sender: TObject);
    procedure btn_Survey_CloseClick(Sender: TObject);
    procedure cxLabel19DblClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
		procedure btn_ReOpenYesClick(Sender: TObject);
    procedure btn_ReOpenNoClick(Sender: TObject);
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
		procedure btn_MoreClick(Sender: TObject);
		procedure btn_MoreSaveClick(Sender: TObject);
		procedure btn_MoreCloseClick(Sender: TObject);
  private
		{ Private declarations }
		iFCall_T : Integer;  iCCall_T : Integer; iTCall_T : Integer;
		gStandard_Time : string; //조회기준시간
		giDay : Integer; //요일
		giDx : integer; //바쁜시간
		gbTimeChartVisible, gbDayChartVisible : Boolean; //차트 콜수가 0이면 보여주지 않음
		gError : Boolean; //조회 에러일 경우 종료시 의견 확인 제외
		glTime, glTimeLeft, glTimeOffSet : TStringList;
		procedure RequestDataOrderTimeDayList(AGUBUN : Integer);
		procedure RequestDataOrderTimeDayList1;
		function func_lap_timeSS(In_Time: string): string; //현재시간
    procedure Proc_Init;
	public
		{ Public declarations }
		procedure proc_SEL01(AGUBUN, APARAM : string);
	end;

var
  frm_COM60: Tfrm_COM60;

implementation

{$R *.dfm}

uses xe_Dm, xe_Func, xe_GNL, xe_Msg, xe_packet,
	xe_Query, xe_xml, xe_Flash;

procedure Tfrm_COM60.btn_Hot2DayChartClick(Sender: TObject);
var
	I : Integer;
	AStyle : TcxStyle;
begin
	Try
		case cbKindA8.ItemIndex of
			0:
			begin
				//Left : 275(17시 기준) 간격 30.4
				//width 152(5시간)
				if gbTimeChartVisible then
				begin
					pnl_TimeChartLeft.Visible := True;
					if giDx > 3 then
					begin
						lb_PeakTimeBox.Visible := True;
						lb_PeakTimeCaption.Visible := lb_PeakTimeBox.Visible;
          end;
{				end else
				begin
					lb_PeakTime1.Caption := '★ 가장 바쁜시간을 알려드립니다.';
					lb_PeakTime2.visible := False;
					lb_PeakTime3.visible := False;  }
				end;
				lb_TimeCaption.Visible := True;
				cxGridA8C1.Visible := False;
				cxGridA8C2.Visible := True;
				cxGridA8C2ChartALL.BeginUpdate();
				try
					cxGridA8C2ChartALL.DataController.RecordCount := cxGrid_OrderTimeList.DataController.RecordCount;;
					 for I := 0 to cxGrid_OrderTimeList.DataController.RecordCount-1 do
					 begin
						 cxGridA8C2ChartALL.Categories.Values[I] := cxGrid_OrderTimeList.ViewData.Records[i].Values[0];
						 cxGridA8C2ChartSeries1.Values[I] := cxGrid_OrderTimeList.ViewData.Records[i].Values[1];
					 end;
				finally
					cxGridA8C2ChartALL.EndUpdate();
				end;
			end;
		end;

		cxGridA8T1.Visible := True;
		//일, 토는 표기 안함

		if gbDayChartVisible then
		begin
			pnl_DayChartLeft.Visible := True;
			if giDay in [1, 7] then 
			begin
				lb_PeakDayBox.visible := False;
				lb_PeakDayCaption.visible := False;
			end else
			begin
				lb_PeakDayBox.Visible := True;
				lb_PeakDayCaption.Visible := True;
			end;
{		end else
		begin
			lb_PeakDay1.Caption := '★ 일주일의 요일별 추이를 알려드립니다';
			lb_PeakDay2.visible := False;
			lb_PeakDay3.visible := False;      }
		end;                                 
		cxGridA8D1ChartView1.BeginUpdate();
		try
			cxGridA8D1ChartView1.DataController.RecordCount := cxGrid_OrderDayList.DataController.RecordCount;;
			for I := 0 to cxGrid_OrderDayList.DataController.RecordCount-1 do
			begin
				cxGridA8D1ChartView1.Categories.Values[I] := cxGrid_OrderDayList.ViewData.Records[i].Values[0];
				cxGridChartSeries5.Values[I] := cxGrid_OrderDayList.ViewData.Records[i].Values[1];
			end;
		finally
			cxGridA8D1ChartView1.EndUpdate();
		end;
	
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure Tfrm_COM60.btn_Hot2DayClick(Sender: TObject);
var iTag : integer;
begin
{	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		Exit;
	end;}
	//0 : 콜센터 기준, 1: 콜마너전체
	lb_PeakDay1.Caption  := '★ 일주일의 요일별 추이를 알려드립니다';
	lb_PeakDay2.Visible := False;
	lb_PeakDay3.Visible := False;
	lb_PeakTime1.Caption := '★ 가장 바쁜시간을 알려드립니다.';
	lb_PeakTime2.Visible := False;
	lb_PeakTime3.Visible := False;

	iTag := TcxButton(Sender).Tag;
	pnl_DayChartLeft.Top := 49;
	pnl_DayChartLeft.Left := 23;
	pnl_TimeChartLeft.Top := 73;
	pnl_TimeChartLeft.Left := 3;
	
	pnl_TimeChartLeft.Visible := False;
	pnl_DayChartLeft.Visible := False;
	lb_TimeCaption.Visible := False;

	lb_PeakTimeBox.Visible := False;
	lb_PeakTimeCaption.Visible := lb_PeakTimeBox.Visible;
	lb_PeakDayBox.Visible := False;
	lb_PeakDayCaption.Visible := lb_PeakDayBox.Visible;
	gbTimeChartVisible := False;
	gbDayChartVisible := False;


	if iTag = 0 then
	begin
		btn_Hot2DayCC.Tag := 1;
		btn_Hot2DayCC.Caption := '콜마너통합정보-보기';
		lb_SearchTitle.Caption := '(나의 콜센터 접수통계)';
		lb_SearchInfo.Caption := '※ 나의 콜센터 접수통계 정보입니다. ';
	end else
	if iTag = 1 then
	begin
		btn_Hot2DayCC.Tag := 0;
		btn_Hot2DayCC.Caption := '나의콜센터접수통계-보기';
		lb_SearchTitle.Caption := '';
		lb_SearchInfo.Caption := '※ 해당 정보는 콜마너 통합 정보 입니다. ';
	end;

	iFCall_T := 0;  iCCall_T := 0; iTCall_T := 0; giDay := 0;
	cxGridA8C2ChartALL.DataController.SetRecordCount(0);
	cxGridA8C1ChartView1.DataController.SetRecordCount(0);
	cxGridA8D1ChartView1.DataController.SetRecordCount(0);
	RequestDataOrderTimeDayList(iTag);

end;

procedure Tfrm_COM60.btn_SurveyClick(Sender: TObject);
var sMsg, sMsg2 : string;

begin
	Try		
		pnl_Survey.Left := (self.width Div 2) - (pnl_Survey.width Div 2);
		pnl_Survey.Top  := (self.Height Div 2) - (pnl_Survey.Height Div 2); 
		pnl_Survey.Height := 150;
		pnl_Survey.width  := 385;

		btn_Survey_NO.Left := 70;
		btn_Survey_NO.Top  := 68;
		btn_Survey_YES.Left := 220;
		btn_Survey_YES.Top  := btn_Survey_NO.Top;
		lb_EtcInfo.Left := 12;
		lb_EtcInfo.Top  := 130;
		btn_Survey_Close.Visible := False;
		
		lb_Survey_ETC.Visible := False;
		mmo_Survey.Visible := False;
		btn_Survey_NO.Visible := True;
		btn_Survey_NO.Tag := 0;
		btn_Survey_YES.Visible := True;
		btn_Survey_YES.Tag := 0;

		lb_Survey.Caption := '해당정보가 도움이 되셨나요?';

		btn_Survey.Enabled := False;
		btn_Hot2Day.Enabled := False;
		btn_Hot3DayClose.Enabled := False;
		btn_Hot2DayCC.Enabled := False;
		btn_More.Enabled := False;
		pnl_Survey.Visible := True;
{		
		sMsg := '해당정보가 도움이 되셨나요?' +#13#10+#13#10 ;
		sMsg2:= '[NO]를 선택하시면 로그인시 팝업되지 않습니다'+#13#10
					+ '*설정>공통설정>기타설정[콜센터 운영 도움 정보]';
					
		if Application.MessageBox(PChar(sMsg+sMsg2), '[설문]', MB_YESNO +	MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
		begin
			gbVote1 := True;
			sMsg := '로그인 시 요일별 새로운 정보를 보시겠습니까? ' +#13#10+#13#10;
			if Application.MessageBox(PChar(sMsg+sMsg2), '[설문]', MB_YESNO +	MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
			begin
				gbVote1 := True;
				pnl_Survey.Visible := False;
				pnl_Survey.Visible := True;
				lb_Survey.Caption := '로그인 시 요일별 새로운 정보를 보시겠습니까?';
			end else
		end else
		begin
			gbVote1 := False; gbVote2 := False;
			lb_Survey_ETC.Visible := True;
			mmo_Survey.Visible := True;
			btn_Survey_Close.Visible := True;
			btn_Survey_NO.Visible := False;
			btn_Survey_YES.Visible := False;
			mmo_Survey.Lines.Clear;
			pnl_Survey.Height := 260;
		end;   }
	except
	
  End;
end;

procedure Tfrm_COM60.btn_Survey_CloseClick(Sender: TObject);
var  sTmp : String;
begin
	Try
		sTmp := 'SURVEY1' + '│' + '콜센터운영도움';
		sTmp := sTmp + '│' + '해당정보가 도움이 되셨나요' + '│' + 'n';
		sTmp := sTmp + '│' + '불편사항' + '│' + mmo_Survey.Text;
		sTmp := sTmp + '│' + '' + '│' + '' + '│' + '' + '│' + ''; //Vote2
		sTmp := sTmp + '│' + '' + '│' + '' + '│' + '' + '│' + ''; //Vote3
		sTmp := sTmp + '│' + '' + '│' + '' + '│' + '' + '│' + ''; //Vote4
		sTmp := sTmp + '│' + '' + '│' + '' + '│' + '' + '│' + ''; //Vote5
		proc_SEL01('SURVEY1', sTmp);
		gCOM60Agree := False;//동의일 경우 종료시 설문안띄움

		//종료버튼을 통한 설문팝업이면 설문이후 종료
		pnl_Survey.Visible := False;
		//버튼 초기화
		btn_Survey.Enabled := True;
		btn_Hot2Day.Enabled := True;
		btn_Hot3DayClose.Enabled := True;
		btn_Hot2DayCC.Enabled := True;
		if btn_More.Tag <> 99 then btn_More.Enabled := True;
		GB_COM60SURVEY := True;
		if btn_Hot3DayClose.Tag = 1 then close;
	Except

  End;
end;

procedure Tfrm_COM60.btn_Survey_NOClick(Sender: TObject);
var sTmp : string;
begin
	Try
		if btn_Survey_NO.Tag = 0 then
		begin
			btn_Survey_Close.Left := 142;
			btn_Survey_Close.Top  := 165;
			lb_EtcInfo.Top  := 230;

			lb_Survey_ETC.Visible := True;
			mmo_Survey.Visible := True;
			btn_Survey_Close.Visible := True;
			btn_Survey_NO.Visible := False;
			btn_Survey_YES.Visible := False;
			lb_Survey_ETC. Caption := '불편사항';
			mmo_Survey.SetFocus;
			mmo_Survey.Lines.Clear;
			pnl_Survey.Height := 260;

		end else
		if btn_Survey_NO.Tag = 1 then
		begin
			sTmp := 'SURVEY1' + '│' + '콜센터운영도움';
			sTmp := sTmp + '│' + '해당정보가 도움이 되셨나요' + '│' + 'y';
			sTmp := sTmp + '│' + '' + '│' + '';                       //Vote1
			sTmp := sTmp + '│' + '로그인 시 요일별 새로운 정보를 보시겠습니까?';
			sTmp := sTmp + '│' + 'n' + '│' + '사용자의견' + '│' + mmo_Survey.Text; //Vote2
			sTmp := sTmp + '│' + '' + '│' + '' + '│' + '' + '│' + ''; //Vote3
			sTmp := sTmp + '│' + '' + '│' + '' + '│' + '' + '│' + ''; //Vote4
			sTmp := sTmp + '│' + '' + '│' + '' + '│' + '' + '│' + ''; //Vote5

			gCOM60Agree := False;//동의일 경우 종료시 설문안띄움
			
			proc_SEL01('SURVEY1', sTmp);
			pnl_Survey.Visible := False;
			//버튼 초기화
			btn_Survey.Enabled := True;
			btn_Hot2Day.Enabled := True;
			btn_Hot3DayClose.Enabled := True;
			btn_Hot2DayCC.Enabled := True;
			if btn_More.Tag <> 99 then btn_More.Enabled := True;
			GB_COM60SURVEY := True;
			//종료버튼을 통한 설문팝업이면 설문이후 종료
			if btn_Hot3DayClose.Tag = 1 then close;
		end;
	Except

	End;
end;

procedure Tfrm_COM60.btn_Survey_YESClick(Sender: TObject);
var sTmp : string;
begin
	Try
		if btn_Survey_YES.Tag = 0 then
		begin
			btn_Survey_NO.Left := 70;
			btn_Survey_NO.Top  := 165;
			btn_Survey_YES.Left := 220;
			btn_Survey_YES.Top  := btn_Survey_NO.Top;
			lb_EtcInfo.Left := 12;
			lb_EtcInfo.Top  := 230;

			pnl_Survey.Visible := False;
			pnl_Survey.Visible := True;
			lb_Survey.Caption := '로그인 시 요일별 새로운 정보를 보시겠습니까?';
			btn_Survey_YES.Tag := 1;
			btn_Survey_NO.Tag := 1;

			lb_Survey_ETC.Left := 12;
			lb_Survey_ETC.Top  := 57;
			mmo_Survey.Left := 12;
			mmo_Survey.Top  := 76;
			lb_Survey_ETC.Visible := True;
			mmo_Survey.Visible := True;
			pnl_Survey.Height := 260;
			lb_Survey_ETC. Caption := '사용자 의견';
			mmo_Survey.SetFocus;
			mmo_Survey.Lines.Clear;
		end else
		if btn_Survey_YES.Tag = 1 then
		begin
//			btn_Survey_YES.Tag := 0;

			sTmp := 'SURVEY1' + '│' + '콜센터운영도움';
			sTmp := sTmp + '│' + '해당정보가 도움이 되셨나요';
			sTmp := sTmp + '│' + 'y' + '│' + '' + '│' + '';                       //Vote1
			sTmp := sTmp + '│' + '로그인 시 요일별 새로운 정보를 보시겠습니까?';
			sTmp := sTmp + '│' + 'y' + '│' + '사용자의견' + '│' + mmo_Survey.Text; //Vote2
			sTmp := sTmp + '│' + '' + '│' + '' + '│' + '' + '│' + ''; //Vote3
			sTmp := sTmp + '│' + '' + '│' + '' + '│' + '' + '│' + ''; //Vote4
			sTmp := sTmp + '│' + '' + '│' + '' + '│' + '' + '│' + ''; //Vote5

			proc_SEL01('SURVEY1', sTmp);

			gCOM60Agree := True;
			pnl_Survey.Visible := False;
			//버튼 초기화
			btn_Survey.Enabled := True;
			btn_Hot2Day.Enabled := True;
			btn_Hot3DayClose.Enabled := True;
			btn_Hot2DayCC.Enabled := True;
			if btn_More.Tag <> 99 then btn_More.Enabled := True;
			GB_COM60SURVEY := True;
			//종료버튼을 통한 설문팝업이면 설문이후 종료
			if btn_Hot3DayClose.Tag = 1 then close;
			
		end;
	Except
	
  End;
end;

procedure Tfrm_COM60.cxButton1Click(Sender: TObject);
begin
	lb_PeakTimeBox.Left := StrToIntDef(cxTextEdit1.Text, 0);
end;

procedure Tfrm_COM60.btn_ReOpenNoClick(Sender: TObject);
begin
	pnl_ReOPEN.visible := False;
	btn_Hot2Day.Click;

end;

procedure Tfrm_COM60.btn_MoreCloseClick(Sender: TObject);
begin
	pnl_More.visible := False;
	btn_Survey.Enabled := True;
	btn_Hot3DayClose.Enabled := True;
	btn_Hot2DayCC.Enabled := True;
	btn_More.Enabled := True;
end;

procedure Tfrm_COM60.cxLabel19DblClick(Sender: TObject);
begin
close;
end;

procedure Tfrm_COM60.cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then cxButton1.Click;

end;

procedure Tfrm_COM60.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	glTime      .Free;
	glTimeLeft  .Free;
	glTimeOffSet.Free;

	Action := caFree;
end;

procedure Tfrm_COM60.FormCreate(Sender: TObject);
var i : integer;
	Save: LongInt; // 폼타이틀 제거용.
begin
	//====================================================
	// 폼 타이틀 제거..
	Save := GetWindowLong(Handle, gwl_Style);
	if (Save and ws_Caption) = ws_Caption then
	begin
		case BorderStyle of
			bsSingle, bsSizeable:
				SetWindowLong(Handle, gwl_Style, Save and (not (ws_Caption)) or
					ws_border);
		end;
		Height := Height - getSystemMetrics(sm_cyCaption);
		Refresh;
	end;
	glTime       := TStringList.Create;
	glTimeLeft   := TStringList.Create;
	glTimeOffSet := TStringList.Create;
	for i := 0 to 23 do
	begin
//09, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 01, 02, 03, 04, 05, 06, 07, 08
		if (i <= 3)               then glTime.Add(IntToStr(i+9)) else
		if (i >= 4) and (i <= 15) then glTime.Add(IntToStr(i-3)) else
		if (i >= 16)              then glTime.Add(IntToStr(i-15)); 
		
		case i of
			 0 : begin glTimeLeft.Add('79' ); glTimeOffSet.Add('0'); end;  
			 1 : begin glTimeLeft.Add('108'); glTimeOffSet.Add('29'); end;  
			 2 : begin glTimeLeft.Add('138'); glTimeOffSet.Add('30'); end;  
			 3 : begin glTimeLeft.Add('166'); glTimeOffSet.Add('28'); end;  
			 4 : begin glTimeLeft.Add('195'); glTimeOffSet.Add('29'); end;  
			 5 : begin glTimeLeft.Add('224'); glTimeOffSet.Add('29'); end;  
			 6 : begin glTimeLeft.Add('252'); glTimeOffSet.Add('28'); end;  
			 7 : begin glTimeLeft.Add('280'); glTimeOffSet.Add('28'); end;  
			 8 : begin glTimeLeft.Add('310'); glTimeOffSet.Add('30'); end;  
			 9 : begin glTimeLeft.Add('338'); glTimeOffSet.Add('28'); end;  
			10 : begin glTimeLeft.Add('368'); glTimeOffSet.Add('30'); end;  
			11 : begin glTimeLeft.Add('397'); glTimeOffSet.Add('29'); end;  
			12 : begin glTimeLeft.Add('425'); glTimeOffSet.Add('28'); end;  
			13 : begin glTimeLeft.Add('454'); glTimeOffSet.Add('29'); end;  
			14 : begin glTimeLeft.Add('482'); glTimeOffSet.Add('29'); end;  
			15 : begin glTimeLeft.Add('512'); glTimeOffSet.Add('30'); end;  
			16 : begin glTimeLeft.Add('540'); glTimeOffSet.Add('28'); end;  
			17 : begin glTimeLeft.Add('568'); glTimeOffSet.Add('28'); end;  
			18 : begin glTimeLeft.Add('598'); glTimeOffSet.Add('30'); end;  
			19 : begin glTimeLeft.Add('626'); glTimeOffSet.Add('28'); end;  
			20 : begin glTimeLeft.Add('654'); glTimeOffSet.Add('28'); end;  
			21 : begin glTimeLeft.Add('682'); glTimeOffSet.Add('28'); end;  
			22 : begin glTimeLeft.Add('710'); glTimeOffSet.Add('28'); end;  
			23 : begin glTimeLeft.Add('738'); glTimeOffSet.Add('28'); end;  
		end;
		
	end;
//9	  10	11	12	13	14	15	16	17	18	19	20	21	22	23	24	1	  2	  3	  4	  5	  6	  7	  8
//79	108	138	166	195	224	252	280	310	338	368	397	425	453	482	512	540	568	598	626	654	682	710	738
//0	  29	30	28	29	29	28	28	30	28	30	29	28	28	29	30	28	28	30	28	28	28	28	28

	proc_init;
end;

procedure Tfrm_COM60.FormDestroy(Sender: TObject);
begin
	Frm_COM60 := nil;
end;

procedure Tfrm_COM60.FormShow(Sender: TObject);
begin
//	fSetFont(Frm_COM60, GS_FONTNAME);
//	fSetSkin(Frm_COM60);
	pnl_Survey.Height := 150;
	pnl_Survey.width  := 385;
	pnl_Survey.Visible := False;

end;

function Tfrm_COM60.func_lap_timeSS(In_Time: string): string;
var
	startTime, endTime: TDateTime;
	sDate: string;
begin
	Result:= '';
	try
		sDate := In_Time;

		if sDate = '' then
      Exit;

		sDate := GetStrToLongDateTimeStr(sDate);
		startTime := StrToDateTime(sDate);

		sDate := GetStrToLongDateTimeStr(gStandard_Time);
		endTime := StrToDateTime(sDate);

		sDate := FormatDateTime('hhmmss', startTime - endTime);

		if (StrToIntDef(copy(sDate, 1, 4), 100) >= 20) then
    begin
      Exit;
    end else
    begin
			if (StrToIntDef(copy(sDate, 3, 2), 0) = 0) then
        sDate := IntToStr(StrToIntDef(copy(sDate, 5, 2), 0)) + '초'
      else
        sDate := IntToStr(StrToIntDef(copy(sDate, 3, 2), 0)) + '분' +
								 IntToStr(StrToIntDef(copy(sDate, 5, 2), 0)) + '초';

			Result := sDate;
    end;
	except on E: Exception do
    Assert(False, E.Message); 
  end;                                        
end;

procedure Tfrm_COM60.btn_Hot3DayCloseClick(Sender: TObject);
begin
	if not gError then
	begin

		btn_Hot3DayClose.Tag := 1;
		//동의일 경우 종료시 설문안띄움
		if gCOM60Agree then close else
		begin
			//설정에서 팝업한게 아니면 설문 진행
			if not GB_COM60SURVEY then btn_Survey.Click else close;
		end;
	end else close;
end;

procedure Tfrm_COM60.btn_MoreClick(Sender: TObject);
begin
	if btn_More.Tag = 99 then exit; //의견을 입력함
	pnl_More.Left := (self.width  Div 2) - (pnl_More.width  Div 2);
	pnl_More.Top  := (self.Height Div 2) - (pnl_More.Height Div 2); 
	pnl_More.visible := True;
	btn_Survey.Enabled := False;
	btn_More.Enabled := False;
	btn_Hot3DayClose.Enabled := False;
	btn_Hot2DayCC.Enabled := False;
	mme_More.Lines.Clear;
	mme_More.SetFocus;
end;

procedure Tfrm_COM60.btn_MoreSaveClick(Sender: TObject);
var sTmp : string;
begin
	Try
		if Trim(mme_More.Text) = '' then 
		begin
			GMessagebox('내용을 입력해 주세요', CDMSI);
			mme_More.setFocus;
			exit;
    end;

		sTmp := 'SURVEY2' + '│' + '더보기';
		sTmp := sTmp + '│' + '' + '│' + '' + '│' + '' + '│' + ''; //Vote1
		sTmp := sTmp + '│' + '' + '│' + '' + '│' + '' + '│' + ''; //Vote2
		sTmp := sTmp + '│' + '다른 통계를 더 보고 싶으신가요?';
		sTmp := sTmp + '│' + 'y' + '│' + '사용자입력' + '│' + mme_More.Text;  //Vote3
		sTmp := sTmp + '│' + '' + '│' + '' + '│' + '' + '│' + ''; //Vote4
		sTmp := sTmp + '│' + '' + '│' + '' + '│' + '' + '│' + ''; //Vote5

		proc_SEL01('SURVEY2', sTmp);

		pnl_More.visible := False;
		btn_Hot3DayClose.Enabled := True;
		btn_Hot2DayCC.Enabled := True;
		btn_Survey.Enabled := True;
		btn_More.Tag := 99; //의견을 입력함
		//저장하면 비활성화
//		btn_More.Enabled := True;
	except

	End;
end;

procedure Tfrm_COM60.btn_ReOpenYesClick(Sender: TObject);
var sTmp : string;
begin
	Try
		sTmp := 'SURVEY1' + '│' + '콜센터운영도움';
		sTmp := sTmp + '│' + '기타>콜센터운영도움정보';
		sTmp := sTmp + '│' + 'y' + '│' + '' + '│' + '';           //Vote1
		sTmp := sTmp + '│' + '콜센터 운영 도움 정보를 로그인시 계속 보시겠습니까?';
		sTmp := sTmp + '│' + 'y' + '│' + '사용자의견' + '│' + ''; //Vote2
		sTmp := sTmp + '│' + '' + '│' + '' + '│' + '' + '│' + ''; //Vote3
		sTmp := sTmp + '│' + '' + '│' + '' + '│' + '' + '│' + ''; //Vote4
		sTmp := sTmp + '│' + '' + '│' + '' + '│' + '' + '│' + ''; //Vote5

		proc_SEL01('SURVEY1', sTmp);

		gCOM60Agree := True;
		pnl_ReOPEN.visible := False;
		btn_Hot2Day.Click;
	except

	End;
end;

procedure Tfrm_COM60.pnl_Hot3DayTitleMouseDown(Sender: TObject;
	Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	try
		ReleaseCapture;
		PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure Tfrm_COM60.Proc_Init;
var i : integer;
begin
	try
		for i := 0 to cxGrid_OrderTimeList.ColumnCount - 1 do
		begin
			cxGrid_OrderTimeList.Columns[i].DataBinding.ValueType := 'String';
		 {	case I of
				1..3:
					begin
						cxGrid_OrderTimeList.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
					end;
			else  
				cxGrid_OrderTimeList.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
			end; }
		end;
		for i := 0 to cxGrid_OrderDayList.ColumnCount - 1 do
		begin
			cxGrid_OrderDayList.Columns[i].DataBinding.ValueType := 'String';
		end; 
	except
	end;

end;

procedure Tfrm_COM60.proc_SEL01(AGUBUN, APARAM: string);
var ls_rxxml : string;
	ls_TxLoad, rv_str, Param, XmlData, ls_MSG_Err, ErrMsg, sTmp, ls_TxQry: string;
	slReceive, slTmp: TStringList;
	xdom: msDomDocument;
	lst_Result: IXMLDomNodeList;
	ls_Rcrd: TStringList;
	ErrCode, iRow, i, iTmp: integer;
	sl_CPCnt, ls_Tmp : TStringList;
begin
	Try
		slTmp := TStringList.Create;
		Try
			GetTextSeperationEx2('│', APARAM, slTmp);
			if (AGUBUN = 'SURVEY1') or (AGUBUN = 'SURVEY2') then  
			begin
				sTmp := 'INSERT INTO CDMS_EXT_SURVEY (SV_SEQ, HD_NO, BR_NO, CC_NO, MEM_ID, SURVEY_NM, SURVEY_SUB '
							+ '                           , VOTE1_TITLE, VOTE1, VOTE1_QUST, VOTE1_REPLY '
							+ '                           , VOTE2_TITLE, VOTE2, VOTE2_QUST, VOTE2_REPLY '
							+ '                           , VOTE3_TITLE, VOTE3, VOTE3_QUST, VOTE3_REPLY '
							+ '                           , VOTE4_TITLE, VOTE4, VOTE4_QUST, VOTE4_REPLY '
							+ '                           , VOTE5_TITLE, VOTE5, VOTE5_QUST, VOTE5_REPLY) VALUES '
							+ '                           (SV_SEQ.NEXTVAL, ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'' '
							+ '                           , ''%s'', ''%s'', ''%s'', ''%s'' '
							+ '                           , ''%s'', ''%s'', ''%s'', ''%s'' '
							+ '                           , ''%s'', ''%s'', ''%s'', ''%s'' '
							+ '                           , ''%s'', ''%s'', ''%s'', ''%s'' '
							+ '                           , ''%s'', ''%s'', ''%s'', ''%s'') ';
				ls_TxQry := Format(sTmp, [GT_USERIF.HD, GT_USERIF.BR, GT_USERIF.CT, GT_USERIF.ID, slTmp[0], slTmp[1]
																, slTmp[2], slTmp[3], slTmp[4], slTmp[5]
																, slTmp[6], slTmp[7], slTmp[8], slTmp[9]
																, slTmp[10], slTmp[11], slTmp[12], slTmp[13]
																, slTmp[14], slTmp[15], slTmp[16], slTmp[17]
																, slTmp[18], slTmp[19], slTmp[20], slTmp[21]
																]);  

			end else
      if AGUBUN = 'SURVEY1_SEL' then  //로그인시 정보 확인
			begin
				sTmp := 'SELECT * FORM CDMS_EXT_SURVEY WHERE MEM_ID = ''%s'' AND ROWNUM = 1 ORDER BY sv_SEQ desc ';
				ls_TxQry := Format(sTmp, [GT_USERIF.ID]);     
			end;

			ls_TxLoad := GTx_UnitXmlLoad('QUERY.XML');
			ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'SURVEY01', [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', En_Coding(ls_TxQry), [rfReplaceAll]);   

			slReceive := TStringList.Create;
			try
				if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
				begin
					rv_str := slReceive[0];
					if rv_str <> '' then
					begin
						ls_rxxml := rv_str;
						Application.ProcessMessages;
						try
							xdom := ComsDomDocument.Create;
							if not xdom.loadXML(ls_rxxml) then Exit;
							ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
							if ('0000' = ls_MSG_Err) then
							begin
							end	else 
							begin
							end;	

							xdom := Nil;
						except
						end;
					end;
				end;
			finally
				FreeAndNil(slReceive);
			end;
		FINALLY	
			slTmp.Free;
		end;
	
	except
		on E: Exception do
		begin
			SetDebugeWrite_CID('proc_SEL01 error[' + AGUBUN+ ', ' + APARAM +']');
			Assert(False, 'proc_SEL01 Error : ' + e.Message);
		end;
	end;
end;

procedure Tfrm_COM60.RequestDataOrderTimeDayList(AGUBUN : Integer);
	procedure _PushTag(AStatus: string; var Value: string);
	begin
		if Value <> '' then
			Value := Value + ',';

		Value := Value + AStatus;
	end;
var
	ErrCode: integer;
	sParam, ErrMsg, XmlData, ls_Msg_Err, sTmp, tmpStr, sDate, sTimeF, sTimeM, sTimeT, sValue : string;
	xdom: msDomDocument;
	lst_Result: IXMLDomNodeList;
	ls_Rcrd, slList, slTime, slDay, slTmp, slDay2, slDay3 : TStringList;
	iRow, i, j, jj, iLeft, iWidth, iIdx, iTmp, iFTmp, iDayCnt, iMax, iGap, iBox, iOffset, iW, iDofW, iSt, iEt, iSd, iLen   : integer;
	dTime : TDateTime;
	strHdNo, strBrNo : string;
	dTmp : Double;
	iArrDay, iArrCnt, iArrPeakTime, iArrPeakTimePer : Array[0..6] of String;
	iArrTime, iArrTimeCnt : Array[0..23] of string;
begin
	SetDebugeWrite('TFrm_Main.RequestDataOrderTimeDayList');

	if fGetChk_Search_HdBrNo('대표번호별 통계') then Exit;

	cxGrid_OrderTimeList.DataController.SetRecordCount(0);
	cxGrid_OrderDayList.DataController.SetRecordCount(0);

	try
		//////////////////////////////////////////////////////////////////////////////////
		//  접수 전문
		//////////////////////////////////////////////////////////////////////////////////
		cxGrid_OrderTimeList.DataController.SetRecordCount(0);
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			strHdNo := GT_SEL_BRNO.HDNO
		else
			strHdNo := GT_USERIF.HD;
		strHdNo := '';																																									 
 {		if (GT_USERIF.lv = '60') then
		begin
			if GT_SEL_BRNO.GUBUN = '1' then
				strBrNo := GT_SEL_BRNO.BrNo
			else
				strBrNo := '';
		end
		else
			strBrNo := GT_USERIF.BR;  }
		//scb_BranchCode

{		for i := 0 to scb_BranchCode.Count - 1 do
		begin
			_PushTag(scb_BranchCode[i], strBrNo );
		end;     }
		sTmp := StartDateTime('yyyy-mm-dd hh:nn:ss');
		dTime := StrToDateTime(sTmp);
		if AGUBUN = 0 then strBrNo := GT_USERIF.CT else
		if AGUBUN = 1 then strBrNo := '';

		sParam := strHdNo;
		sParam := sParam + '│' + strBrNo;

		sParam := sParam + '│' + FormatDateTime('YYYYMMDD', dTime-7);
		sParam := sParam + '│' + FormatDateTime('YYYYMMDD', dTime);
		
		Screen.Cursor := crHourGlass;
		//'A759│R134│20210227│20210329'
		btn_More.Enabled := False;
		btn_Survey.Enabled := False;
		btn_Hot2Day.Enabled := False;
		btn_Hot3DayClose.Enabled := False;
		btn_Hot2DayCC.Enabled := False;
		slList := TStringList.Create;
		gStandard_Time := FormatDateTime('hhmmss', Now);
		gStandard_Time := copy(gStandard_Time,1,2) + ':' + copy(gStandard_Time,3,2) + ':' + copy(gStandard_Time,5,2);

		tm_Flash.Enabled := True;
		gError := False;
		if not RequestBasePaging(GetSel06('GET_PEAK_OF_DAY_LIST', 'STAT_A01.GET_PEAK_OF_DAY_LIST', '100', sParam), slList, ErrCode, ErrMsg, 600000) then
		begin
			tm_Flash.Enabled := False;
			GMessagebox(Format('콜센터 운영도움 정보 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Screen.Cursor := crDefault;
			slList.Free;
			if btn_More.Tag <> 99 then btn_More.Enabled := True;
			btn_Survey.Enabled := True;
			btn_Hot2Day.Enabled := True;
			btn_Hot3DayClose.Enabled := True;
			btn_Hot2DayCC.Enabled := True;
			Frm_Flash.hide;
			gError := True; //종료 시 설문을 제외를 위한 Flag
			Exit;
		end;
		tm_Flash.Enabled := False;
//		Frm_Flash.cxPBar1.Properties.Max := slList.Count;
//		Frm_Flash.cxPBar1.Position := 0;
		cxGrid_OrderDayList.DataController.SetRecordCount(0);
		cxGrid_OrderTimeList.DataController.SetRecordCount(0);
		for j := 0 to slList.Count - 1 do
		begin
//			Frm_Flash.cxPBar1.Position := j + 1;
//			Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
			Application.ProcessMessages;
			xmlData := slList.Strings[j];

			xdom := ComsDomDocument.Create;
			try
				if not xdom.loadXML(XmlData) then
				begin
          if btn_More.Tag <> 99 then btn_More.Enabled := True;
					btn_Survey.Enabled := True;
					btn_Hot2Day.Enabled := True;
					btn_Hot3DayClose.Enabled := True;
					btn_Hot2DayCC.Enabled := True;
					slList.Free;
					Frm_Flash.hide;
					Screen.Cursor := crDefault;
					Exit;
				end;

				ls_MSG_Err := GetXmlErrorCode(XmlData);
				if ('0000' = ls_MSG_Err) then
				begin
					if (0 < GetXmlRecordCount(XmlData)) then
					begin
						ls_Rcrd := TStringList.Create;
						slTime := TStringList.Create;
						slDay := TStringList.Create;
						slTmp := TStringList.Create;
						try
							lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
							for i := 0 to lst_Result.length - 1 do
							begin

								GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

								if ls_Rcrd[0] = 'time' then slTime.Add(lst_Result.item[i].attributes.getNamedItem('Value').Text) else
								if ls_Rcrd[0] = 'day'  then slDay .Add(lst_Result.item[i].attributes.getNamedItem('Value').Text);
							end;
							iMax := 0; iGap := 0;
							ls_Rcrd.Clear;
							for i := 0 to slTime.Count-1 do
							begin
								GetTextSeperationEx2('│', slTime[i], ls_Rcrd);
								sValue := ls_Rcrd[2];
								iArrTime[i] := ls_Rcrd[1];
								iArrTimeCnt[i] := sValue;
								slTmp.Add(sValue);

								if iMax < StrToIntDef(sValue, 0) then
									iMax := StrToIntDef(sValue, 0);
							end;

							//가장 콜수 많은 시간 선정
							iTmp := 0; iFTmp := 0; giDx := 0;
							for i := 0 to slTmp.Count -1 do
							begin
								iTmp := StrToIntDef(slTmp[i], 0);
								if iTmp > iFTmp then 
								begin
									iFTmp := iTmp;
									giDx := i;
								end;	
							end; 
							//가장 콜수 많은 시간 선정

							//차트고정을 위해 조회경과의 자리수를 인위적으로 맞춤 기준('119294')6자리
							iLen := length('119294');
							iTmp := iLen - Length(slTmp[giDx]);// 기준자리에서 맥스자리수의 차
							if iTmp <> 0 then
							begin
								if iTmp > 0 then 
								begin
									sTmp := '';
									for i := 1 to iTmp do
									begin
										sTmp := sTmp + '0';
									end;

									for i := 0 to slTmp.Count-1 do
									begin
										slTmp[i] := slTmp[i] + sTmp;
									end;
									iMax := sTrToInt((IntToStr(iMax) + sTmp));
								end else
								if iTmp < 0 then 	
								begin
									iTmp := Length(slTmp[giDx]) - iLen;
									for i := 0 to slTmp.Count-1 do
									begin
										slTmp[i] := copy(slTmp[i], 1, Length(slTmp[i]) - iTmp);
									end;
									iMax := sTrToInt(copy(IntToStr(iMax), 1, Length(IntToStr(iMax)) - iTmp));
								end;
							end;
							//차트고정을 위해 조회경과의 자리수를 인위적으로 맞춤 기준('119294')6자리     
								
							cxGrid_OrderTimeList.DataController.BeginUpdate;
							for i := 0 to slTmp.Count-1 do
							begin
								iRow := cxGrid_OrderTimeList.DataController.AppendRecord;
								cxGrid_OrderTimeList.DataController.Values[iRow, 0] := iArrTime[i];
								cxGrid_OrderTimeList.DataController.Values[iRow, 1] := strToMoney(slTmp[i]);
							end;
							cxGrid_OrderTimeList.EndUpdate;
							//[soWriteBOM,soTrailingLineBreak,soUseLocale], (('1029', nil), ('789', nil), ('790', nil), ('882', nil), ('8032', nil), ('4469', nil), ('2923', nil), ('3766', nil), ('4445', nil), ('6655', nil), ('15625', nil), ('36557', nil), ('82181', nil), ('123730', nil), ('23365', nil), ('0', nil), ('7181', nil), ('4300', nil), ('2401', nil), ('1231', nil), ('954', nil), ('766', nil), ('637', nil), ('339', nil), ('', nil), ('', nil), ('', nil), ('', nil)), 24, 28, False, dupIgnore, False, (nil,nil), (nil,nil), False, False)
							if iMax > 0 then gbTimeChartVisible := True;
							if gbTimeChartVisible then
							begin                  
{								iTmp := 0; iFTmp := 0; giDx := 0;
								for i := 0 to slTmp.Count -1 do
								begin
									iTmp := StrToIntDef(slTmp[i], 0);
									if iTmp > iFTmp then 
									begin
										iFTmp := iTmp;
										giDx := i;
									end;	//('4107'), ('3210'), ('3548'), ('4111'), ('54884'), ('12626'), ('13000'), ('15466'), ('18584'), ('27924'), ('64112'), ('143446'), ('328037'), ('542574'), ('99041'), ('0'), ('33198'), ('19563'), ('10293'), ('5103'), ('4035'), ('3056', nil), ('2448', nil), ('1536', nil)
								end; 

							//차트고정을 위해 조회경과의 자리수를 인위적으로 맞춤 기준('119294')6자리
								iLen := length('119294');
								iTmp := iLen - Length(slTmp[giDx]);// 기준자리에서 맥스자리수의 차
								if iTmp <> 0 then
								begin
									if iTmp > 0 then 
									begin
										sTmp := '';
										for i := 1 to iTmp do
										begin
											sTmp := sTmp + '0';
										end;

										for i := 0 to slTmp.Count-1 do
										begin
											slTmp[i] := slTmp[i] + sTmp;
										end;
										iMax := sTrToInt((IntToStr(iMax) + sTmp));
									end else
									if iTmp < 0 then 	
									begin
										iTmp := Length(slTmp[giDx]) - iLen;
										for i := 0 to slTmp.Count-1 do
										begin
											slTmp[i] := copy(slTmp[i], 1, Length(slTmp[i]) - iTmp);
										end;
										iMax := sTrToInt(copy(IntToStr(iMax), 1, Length(IntToStr(iMax)) - iTmp));
									end;
								end;
								//차트고정을 위해 조회경과의 자리수를 인위적으로 맞춤 기준('119294')6자리     }
								
								
								/////기준시간 앞뒤 3시간의 콜수  0123456
								iArrPeakTime[0] := slTmp[giDx-3]; iArrPeakTime[1] := slTmp[giDx-2]; iArrPeakTime[2] := slTmp[giDx-1];
								iArrPeakTime[3] := slTmp[giDx];
								iArrPeakTime[4] := slTmp[giDx+1]; iArrPeakTime[5] := slTmp[giDx+2]; iArrPeakTime[6] := slTmp[giDx+3];
								iSt := 4; iEt := 3; //배열3번째가 기준위치
								for i := 0 to length(iArrPeakTime) -1 do
								begin
									iTmp := Round(StrToFloatDef(iArrPeakTime[i], 0) / StrToFloatDef(iArrPeakTime[3], 0) * 100);
									iArrPeakTimePer[i] := IntToStr(iTmp);
									if i = 3 then Continue;
									
									if iTmp > 20 then
									begin
										if i < 3 then 
										begin
											if iSt = 4 then iSt := 3-i;//기준(3)으로 부터  몇번째 시작
										end else
										if i > 3 then 
										begin
											iEt := i;//박스 종료 시간 기억
										end;
									end;
								end;
								////기준시간 앞뒤 3시간의 콜수  
								///  13(22시) left : 453
								///  20 -20 -21 -22 -23 -24 -01  
								///  368-397-425-453-482-512-540
								///  29 -28 -28 --0--29 -30 -28
//9	  10	11	12	13	14	15	16	17	18	19	20	21	22	23	24	1	  2	  3	  4	  5	  6	  7	  8
//79	108	138	166	195	224	252	280	310	338	368	397	425	454	482	512	540	568	598	626	654	682	710	738
//0	  29	30	28	29	29	28	28	30	28	30	29	28	29	29	30	28	28	30	28	28	28	28	28
								if iSt = 4 then iSt := 0;								
								if (iSt < 2) and (iEt < 3) then iSt := iSt + 1;  //시작지점이 기준과 1시간 차이면 1시간 더 넓게 표기
                                                                 //기준이후 3시간이 모두 20% 이상이면 넓게 표기 안함
								iEt := iEt-3;
								if (iEt < 2) and (iSt+iEt < 4) then iEt := iEt + 1;
								iGap := 0; iBox := 0; iOffset := 0; iW := 0;
								iOffset :=Round(688 / 23 * giDx);
								iW := Round(688 / 23 * 5);
								//피크표기가 좌측에 붙는걸 방지하기위해
								if (iMax >= 10   )   and (iMax < 100)      then begin iGap := 5 ; iBox := 6;  iOffset := Round((682 / 23) * giDx); iW := Round((682 / 23) * 5);end else  //3
								if (iMax >= 100  )   and (iMax < 1000)     then begin iGap := 10; iBox := 12; iOffset := Round((676 / 23) * giDx); iW := Round((676 / 23) * 5);end else  //3+3
								if (iMax >= 1000 )   and (iMax < 10000)    then begin iGap := 15; iBox := 18; iOffset := Round((670 / 23) * giDx); iW := Round((670 / 23) * 5);end else  //3+3+3
								if (iMax >= 10000)   and (iMax < 100000)   then begin iGap := 20; iBox := 24; iOffset := Round((664 / 23) * giDx); iW := Round((664 / 23) * 5);end else 
								if (iMax >= 100000)  and (iMax < 1000000)  then 
								begin 
//									iGap := 46; iBox := 32; 
//									iOffset := Round((662 / 23) * giDx)+17; 
//									iW := 2+Round((658 / 23) * 5);

//	glTime       := TStringList.Create;
//	glTimeLeft   := TStringList.Create;
//	glTimeOffSet := TStringList.Create;

//									glTime[giDx]; //기준시간 - 20%시작위치
									iGap := 46;
									pnl_TimeChartLeft.width := 25;
									pnl_TimeChartLeft.width := pnl_TimeChartLeft.width + iGap;

									iLeft := StrToInt(glTimeLeft[giDx-iSt]) - (StrToInt(glTimeOffSet[giDx-iSt]) Div 2);
									iWidth := StrToInt(glTimeLeft[giDx+iEt]) - StrToInt(glTimeLeft[giDx-iSt])
													+ StrToInt(glTimeOffSet[giDx+iEt]) ;

									lb_PeakTimeBox.width := iWidth;
									lb_PeakTimeBox.Left := iLeft;
									lb_PeakTimeBox.Top := 67;
									lb_PeakTimeCaption.Left := lb_PeakTimeBox.Left;
									lb_PeakTimeCaption.Top := lb_PeakTimeBox.Top - lb_PeakTimeCaption.Height -1;
									lb_PeakTimeCaption.width := lb_PeakTimeBox.width;
									//64 + 318 = 391 - 73
//									iTmp := iOffset - (lb_PeakTimeBox.width Div 2);   
//									lb_PeakTimeBox.Left := lb_PeakTimeBox.Left + iTmp; //13 = 382
//									lb_PeakTimeCaption.Left := lb_PeakTimeBox.Left;
								end else
								if (iMax >= 1000000) and (iMax < 10000000) then 
								begin 
									iGap := 48; 
									iGap := 46;
									pnl_TimeChartLeft.width := 25;
									pnl_TimeChartLeft.width := pnl_TimeChartLeft.width + iGap;

									iLeft := StrToInt(glTimeLeft[giDx-iSt]) - (StrToInt(glTimeOffSet[giDx-iSt]) Div 2);
									iWidth := StrToInt(glTimeLeft[giDx+iEt]) - StrToInt(glTimeLeft[giDx-iSt])
													+ StrToInt(glTimeOffSet[giDx+iEt]) ;

									lb_PeakTimeBox.width := iWidth;
									lb_PeakTimeBox.Left := iLeft;
									lb_PeakTimeBox.Top := 67;
									lb_PeakTimeCaption.Left := lb_PeakTimeBox.Left;
									lb_PeakTimeCaption.Top := lb_PeakTimeBox.Top - lb_PeakTimeCaption.Height -1;
									lb_PeakTimeCaption.width := lb_PeakTimeBox.width;
								end;
{
								pnl_TimeChartLeft.width := 25;
								pnl_TimeChartLeft.width := pnl_TimeChartLeft.width + iGap;
								//Left : 33 Top : 71 (09시 기준)275(17시 기준) 간격 30.4
								//width 152(5시간)
								//09, 10, 11, 12, 13, 14, 15, 16, 17(8), 18, 19, 20, 21, 22, 23, 24, 01, 02, 03, 04, 05, 06, 07, 08
								lb_PeakTimeBox.width := iW+1;
								lb_PeakTimeBox.Left := 33 + iBox-1;
								lb_PeakTimeBox.Top := 67;
								lb_PeakTimeCaption.Left := lb_PeakTimeBox.Left;
								lb_PeakTimeCaption.Top := lb_PeakTimeBox.Top - lb_PeakTimeCaption.Height -1;
								//64 + 318 = 391 - 73
								iTmp := iOffset - (lb_PeakTimeBox.width Div 2);   
								lb_PeakTimeBox.Left := lb_PeakTimeBox.Left + iTmp; //13 = 382
								lb_PeakTimeCaption.Left := lb_PeakTimeBox.Left;
}
								sTimeF := ''; sTimeT := ''; sTimeM := '시부터'; 
//09, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 01, 02, 03, 04, 05, 06, 07, 08
								
								if (giDx-iSt >=  0) and (giDx-iSt <=  2) then sTimeF := '오전' else
								if (giDx-iSt >=  3) and (giDx-iSt <=  8) then sTimeF := '오후' else
								if (giDx-iSt >=  9) and (giDx-iSt <= 11) then sTimeF := '저녁' else
								if (giDx-iSt >= 12) and (giDx-iSt <= 15) then sTimeF := '밤'   else
								if (giDx-iSt >= 16) and (giDx-iSt <= 20) then sTimeF := '새벽' else
								if (giDx-iSt >= 21) and (giDx-iSt <= 23) then sTimeF := '아침' ;
								
								if (giDx+iEt >=  0) and (giDx+iEt <=  2) then sTimeT := '오전' else
								if (giDx+iEt >=  3) and (giDx+iEt <=  8) then sTimeT := '오후' else
								if (giDx+iEt >=  9) and (giDx+iEt <= 11) then sTimeT := '저녁' else
								if (giDx+iEt >= 12) and (giDx+iEt <= 15) then sTimeT := '밤'   else
								if (giDx+iEt >= 16) and (giDx+iEt <= 20) then sTimeT := '새벽' else
								if (giDx+iEt >= 21) and (giDx+iEt <= 23) then sTimeT := '아침' ;
								
								sTmp := sTimeF + glTime[giDx-iSt] + sTimeM + ' ' + sTimeT + glTime[giDx+iEt] + '시까지';	
{								case giDx of
									0: sTmp := '오전9시';
									1: sTmp := '오전10시';
									2: sTmp := '오전9시부터 오후1시까지';
									3: sTmp := '오전10시부터 오후2시까지';
									4: sTmp := '오전11시부터 오후3시까지';
									5: sTmp := '오후12시부터 오후4시까지';
									6: sTmp := '오후1시부터 오후5시까지';
									7: sTmp := '오후2시부터 저녁6시까지';
									8: sTmp := '오후3시부터 저녁7시까지';
									9: sTmp := '오후4시부터 저녁8시까지';
								 10: sTmp := '오후5시부터 밤9시까지';
								 11: sTmp := '저녁6시부터 밤10시까지';
								 12: sTmp := '저녁7시부터 밤11시까지';
								 13: sTmp := '저녁8시부터 밤12시까지';
								 14: sTmp := '밤9시부터 새벽1시까지';
								 15: sTmp := '밤10시부터 새벽2시까지';
								 16: sTmp := '밤11시부터 새벽3시까지';
								 17: sTmp := '밤12시부터 새벽4시까지';
								 18: sTmp := '새벽1시부터 새벽5시까지';
								 19: sTmp := '새벽2시부터 아침6시까지';
								 20: sTmp := '새벽3시부터 아침7시까지';
								 21: sTmp := '새벽4시부터 아침8시까지';
								 22: sTmp := '아침7시';
								 23: sTmp := '아침8시';  
								end;    }
								lb_PeakTime1.Caption := '★ 오늘 가장 바쁜시간은 ';
								lb_PeakTime2.Caption := sTmp;
								lb_PeakTime2.visible := True;	
								lb_PeakTime2.Top     := lb_PeakTime1.Top;	
								lb_PeakTime2.Left    := lb_PeakTime1.Left + lb_PeakTime1.Width + 2;
								lb_PeakTime3.Caption := ' 입니다';
								lb_PeakTime3.visible := True;		
								lb_PeakTime3.Top     := lb_PeakTime2.Top;	
								lb_PeakTime3.Left    := lb_PeakTime2.Left + lb_PeakTime2.Width + 2;
							end;
							
							ls_Rcrd.Clear; slTmp.Clear;
							iMax := 0;
							slDay2 := TStringList.Create;
							slDay3 := TStringList.Create;
							iArrDay[0] := '일'; iArrDay[1] := '월'; iArrDay[2] := '화'; iArrDay[3] := '수';
							iArrDay[4] := '목'; iArrDay[5] := '금'; iArrDay[6] := '토'; 

							for i := 0 to slDay.Count-1 do
							begin
								GetTextSeperationEx2('│', slDay[i], ls_Rcrd);

								for jj := 0 to Length(iArrDay)-1 do
								begin
									if ls_Rcrd[1] = iArrDay[jj] then iArrCnt[jj] := ls_Rcrd[2] ;
								end;
							end;

							cxGrid_OrderDayList.DataController.BeginUpdate;
							for i := 0 to Length(iArrDay)-1 do
							begin

								iRow := cxGrid_OrderDayList.DataController.AppendRecord;
								cxGrid_OrderDayList.DataController.Values[iRow, 0] := iArrDay[i];
								cxGrid_OrderDayList.DataController.Values[iRow, 1] := strToMoney(iArrCnt[i]);

								slTmp.Add(iArrCnt[i]);
								if iMax < StrToIntDef(iArrCnt[i], 0) then
									iMax := StrToIntDef(iArrCnt[i], 0);
							end;
							cxGrid_OrderDayList.EndUpdate;
						 
							//Left : 60 Top : 71 (09시 기준)275(17시 기준) 간격 30.4
							//width 152(5시간)
							//1:일, 2:월, 3화, 4수, 5목, 6금, 7토
							lb_PeakDayBox.Left := 61;
							lb_PeakDayBox.width := 50;
							iGap := 5;
							lb_PeakDayCaption.width := lb_PeakDayBox.width;
							giDay := DayOfWeek(dTime);

							if iMax > 0 then gbDayChartVisible := True;
							if gbDayChartVisible then
							begin
								if (iMax < 10)                        then
								begin
									case giDay of
										1: iBox := 3;  
										2: iBox := 120;
										3: iBox := 236;  
										4: iBox := 350;  
										5: iBox := 465;  
										6: iBox := 579;  
									end;
									iGap := 0;
								end;
								if (iMax > 9   )  and (iMax < 100)    then 
								begin 
									case giDay of
										1: iBox := 3;  
										2: iBox := 116;
										3: iBox := 230;  
										4: iBox := 345;  
										5: iBox := 457;  
										6: iBox := 571;  
									end;
									iGap := 5;
								end else  
								if (iMax > 99  )  and (iMax < 1000)   then 
								begin 
									case giDay of
										1: iBox := 4;  
										2: iBox := 116;
										3: iBox := 230;  
										4: iBox := 342;  
										5: iBox := 453;  
										6: iBox := 567;  
									end;
									iGap := 10; 
								end else 
								if (iMax > 999 )  and (iMax < 9000)  then 
								begin 
									case giDay of
										1: iBox := 5;  
										2: iBox := 116;
										3: iBox := 229;  
										4: iBox := 340;  
										5: iBox := 450;  
										6: iBox := 562;  
									end;
									iGap := 15; 
								end else  
								if (iMax > 8999)  and (iMax < 90000) then  //좌측 차트표에는 최대수보다 큰 단계의 수치를 표현하므로 한단계 여유있게 설정
								begin 
									case giDay of
										1: iBox := 6;  
										2: iBox := 116;
										3: iBox := 227;  
										4: iBox := 337;  
										5: iBox := 447;  
										6: iBox := 559;  
									end;
									iGap := 20; 
								end else 
								if (iMax > 89999)                     then 
								begin 
									case giDay of
										1: iBox := 7; 
										2: iBox := 116;
										3: iBox := 227;  
										4: iBox := 335;  
										5: iBox := 444;  
										6: iBox := 555;  
									end;
									iGap := 25;
								end;

								iTmp := ((giDay-1)*113) - 24;
								pnl_DayChartLeft.width := 25;
								pnl_DayChartLeft.width := pnl_DayChartLeft.width + iGap;
								lb_PeakDayCaption.width := lb_PeakDayBox.width;
								//9 : 56, 168, 284, 398, 513, 627 //99 : 
								lb_PeakDayBox.Left := pnl_DayChartLeft.Left + pnl_DayChartLeft.width + iBox - 25; 
								lb_PeakDayBox.Top := 45;
								lb_PeakDayCaption.Left := lb_PeakDayBox.Left;
								lb_PeakDayCaption.Top := lb_PeakDayBox.Top + lb_PeakDayBox.Height +1;

								//Day 1:일, 2:월, 3화, 4수, 5목, 6금, 7토
								//Arr 0:일, 1:월, 2화, 3수, 4목, 5금, 6토
								iDayCnt := 1; iFTmp := 0;
								iTmp := StrToIntDef(slTmp[giDay-1], 0);
								for i := 0 to slTmp.Count -1 do
								begin
									iFTmp := StrToIntDef(slTmp[i], 0);
									if iFTmp > iTmp then 
									begin
										iFTmp := iTmp;
										inc(iDayCnt); 
									end;
								end;
								sTmp := '';
//								iDayCnt := StrToIntDef(cxTextEdit2.text, 0); //디버깅용
								case iDayCnt of
									1: sTmp := '1주일중에 최고로(No.1) 바쁜날';  
									2: sTmp := '1주일중에 2번째로 바쁜날';
									3: sTmp := '1주일중에 3번째로 바쁜날';  
									4,5: sTmp := '집중이 필요한 날';  
//									5: sTmp := '1주일중에 5순위로 신경써야할 날';  
									6,7: sTmp := '신경써야할 날';  
//									7: sTmp := '1주일중에 7순위로 신경써야할 날';
								end;
								if giDay = 1 then sTmp := '일요일' else 
								if giDay = 7 then sTmp := '토요일'; 
								lb_PeakDay1.Caption := '★ 오늘은 ';
								lb_PeakDay2.Caption := sTmp;//'1주일중에 ' + IntToStr(iDayCnt) +'째로 바쁜날' ;
								lb_PeakDay2.visible := True;	
								lb_PeakDay2.Top     := lb_PeakDay1.Top;	
								lb_PeakDay2.Left    := lb_PeakDay1.Left + lb_PeakDay1.Width + 2;
								lb_PeakDay3.Caption := ' 입니다';
								lb_PeakDay3.visible := True;		
								lb_PeakDay3.Top     := lb_PeakDay2.Top;	
								lb_PeakDay3.Left    := lb_PeakDay2.Left + lb_PeakDay2.Width + 2;
							end;


						Finally
							ls_Rcrd.Free;
							slTime.Free;
							slDay.Free;
							slTmp.Free;
						End;
					end;
				end else
				begin
				end;
							
			finally
				Screen.Cursor := crDefault;
				Frm_Flash.hide;
				if btn_More.Tag <> 99 then btn_More.Enabled := True;
				btn_Survey.Enabled := True;
				btn_Hot2Day.Enabled := True;
				btn_Hot3DayClose.Enabled := True;
				btn_Hot2DayCC.Enabled := True;
				slList.Free;
				xdom := Nil;
				btn_Hot2DayChart.Click;
//				btn_Hot2Day.Tag := 99;
			end;
		
		end;
	except
		on e: Exception do
		begin
			ls_Rcrd.Free;
			Frm_Flash.hide;
			if btn_More.Tag <> 99 then btn_More.Enabled := True;
			btn_Survey.Enabled := True;
			btn_Hot2Day.Enabled := True;
			btn_Hot3DayClose.Enabled := True;
			btn_Hot2DayCC.Enabled := True;
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_COM60.RequestDataOrderTimeDayList1;
	procedure _PushTag(AStatus: string; var Value: string);
	begin
		if Value <> '' then
			Value := Value + ',';

		Value := Value + AStatus;
	end;
var
	ErrCode: integer;
	sParam, ErrMsg, XmlData, ls_Msg_Err, sTmp, tmpStr, sDate : string;
	xdom: msDomDocument;
	lst_Result: IXMLDomNodeList;
//	ls_Rcrd, slList, slTime, slDay, slTmp : TStringList;
	iRow, i, j, jj, k, iIdx, iTmp, iFTmp, iDayCnt, iMax, iGap, iBox  : integer;
	iOffset, iW : integer;
	dTime : TDateTime;
	strHdNo, strBrNo : string;
	iArray, iArray2 : Array[0..23] of string;
begin
	SetDebugeWrite('TFrm_Main.RequestDataOrderTimeDayList');

	if fGetChk_Search_HdBrNo('대표번호별 통계') then Exit;

	cxGrid_OrderTimeList.DataController.SetRecordCount(0);
	cxGrid_OrderDayList.DataController.SetRecordCount(0);
	iArray[0] := '09'; iArray[1] := '10';	iArray[2] := '11';	iArray[3] := '12';
	iArray[4] := '13'; iArray[5] := '14';	iArray[6] := '15';	iArray[7] := '16';
	iArray[8] := '17'; iArray[9] := '18';	iArray[10] := '19';	iArray[11] := '20';
	iArray[12] := '21';	iArray[13] := '22';	iArray[14] := '23';	iArray[15] := '24';
	iArray[16] := '01';	iArray[17] := '02';	iArray[18] := '03';	iArray[19] := '04';
	iArray[20] := '05'; iArray[21] := '06'; iArray[22] := '07';	iArray[23] := '08';

	iArray2[0] := '4107'; iArray2[1] := '3210';	iArray2[2] := '3548';	iArray2[3] := '4111';
	iArray2[4] := '54884'; iArray2[5] := '12626';	iArray2[6] := '13000';	iArray2[7] := '15466';
	iArray2[8] := '18584'; iArray2[9] := '27924';	iArray2[10] := '64112';	iArray2[11] := '143446';
	iArray2[12] := '328037';	iArray2[13] := '542574';	iArray2[14] := '99041';	iArray2[15] := '33198';
	iArray2[16] := '19563';	iArray2[17] := '10293';	iArray2[18] := '0';	iArray2[19] := '5103';
	iArray2[20] := '4035'; iArray2[21] := '3056'; iArray2[22] := '2448';	iArray2[23] := '1536';

	try
		cxGrid_OrderTimeList.BeginUpdate;
		for i := 0 to 23 do
		begin

			iRow := cxGrid_OrderTimeList.DataController.AppendRecord;
			cxGrid_OrderTimeList.DataController.Values[iRow, 0] := iArray[i];
			cxGrid_OrderTimeList.DataController.Values[iRow, 1] := strToMoney(iArray2[i]);//}strToMoney(ls_Rcrd[2]);

			if iMax < StrToIntDef(iArray2[i], 0) then
				iMax := StrToIntDef(iArray2[i], 0);
		end;
		cxGrid_OrderTimeList.EndUpdate;
//		iMax := StrToIntDef(edt_STPoi.text, 0);
							iTmp := StrToIntDef(cxTextEdit1.Text, 0);
		giDx := StrToIntDef(cxTextEdit2.text, 0);    
		gbTimeChartVisible := True;                
		iGap := 0; iBox := 0; iOffset := 0; iW := 0; 
		iOffset :=Round(688 / 23 * giDx);
		iW := Round(688 / 23 * 5);
		//79, 741 dis :662    28.7826
		//79, 
		if (iMax >= 10   )   and (iMax < 100)      then begin iGap := 5 ; iBox := 6;  iOffset := Round((682 / 23) * giDx)-25; iW := Round((682 / 23) * 5);end else  //3
		if (iMax >= 100  )   and (iMax < 1000)     then begin iGap := 10; iBox := 12; iOffset := Round((676 / 23) * giDx)-25; iW := Round((676 / 23) * 5);end else  //3+3
		if (iMax >= 1000 )   and (iMax < 10000)    then begin iGap := 15; iBox := 18; iOffset := Round((670 / 23) * giDx)-25; iW := Round((670 / 23) * 5);end else  //3+3+3
		if (iMax >= 10000)   and (iMax < 100000)   then begin iGap := 20; iBox := 24; iOffset := Round((664 / 23) * giDx)-25; iW := Round((664 / 23) * 5);end else 
		if (iMax >= 100000)  and (iMax < 1000000)  then begin iGap := 46; iBox := 32; iOffset := Round((662 / 23) * giDx)-25; iW := 2+Round((658 / 23) * 5);end else
		if (iMax >= 1000000) and (iMax < 10000000) then begin iGap := 51; iBox := 36; iOffset := Round((652 / 23) * giDx)-25; iW := 1+Round((652 / 23) * 5);end;
		pnl_TimeChartLeft.width := 25;
		pnl_TimeChartLeft.width := pnl_TimeChartLeft.width + iGap;
		iTmp := 0; iFTmp := 0;
		iTmp := StrToIntDef(cxTextEdit1.Text, 0);
		//09, 10, 11, 12, 13, 14, 15, 16, 17(8), 18, 19, 20, 21, 22, 23, 24, 01, 02, 03, 04, 05, 06, 07, 08
		lb_PeakTimeBox.width := iW;//StrToIntDef(FloatToStr(iOffset), 0) * 5;
		lb_PeakTimeBox.Left := 33 + iBox;
		lb_PeakTimeBox.Top := 67;
		lb_PeakTimeCaption.Left := lb_PeakTimeBox.Left;
		lb_PeakTimeCaption.Top := lb_PeakTimeBox.Top - lb_PeakTimeCaption.Height -1;
		iTmp := iOffset - (lb_PeakTimeBox.width Div 2);
		lb_PeakTimeBox.Left := lb_PeakTimeBox.Left + iTmp;
		lb_PeakTimeCaption.Left := lb_PeakTimeBox.Left;
    //367 - 382
		case giDx of
			0: sTmp := '오전9시';
			1: sTmp := '오전10시';
			2: sTmp := '오전9시부터 오후1시까지';
			3: sTmp := '오전10시부터 오후2시까지';
			4: sTmp := '오전11시부터 오후3시까지';
			5: sTmp := '오후12시부터 오후4시까지';
			6: sTmp := '오후1시부터 오후5시까지';
			7: sTmp := '오후2시부터 저녁6시까지';
			8: sTmp := '오후3시부터 저녁7시까지';
			9: sTmp := '오후4시부터 저녁8시까지';
		 10: sTmp := '오후5시부터 밤9시까지';
		 11: sTmp := '저녁6시부터 밤10시까지';
		 12: sTmp := '저녁7시부터 밤11시까지';
		 13: sTmp := '저녁8시부터 밤12시까지';
		 14: sTmp := '밤9시부터 새벽1시까지';
		 15: sTmp := '밤10시부터 새벽2시까지';
		 16: sTmp := '밤11시부터 새벽3시까지';
		 17: sTmp := '밤12시부터 새벽4시까지';
		 18: sTmp := '새벽1시부터 새벽5시까지';
		 19: sTmp := '새벽2시부터 아침6시까지';
		 20: sTmp := '새벽3시부터 아침7시까지';
		 21: sTmp := '새벽4시부터 아침8시까지';
		 22: sTmp := '아침7시';
		 23: sTmp := '아침8시';  
		end;
		lb_PeakTime1.Caption := '★ 오늘 가장 바쁜시간은 ';
		lb_PeakTime2.Caption := sTmp;
		lb_PeakTime2.visible := True;	
		lb_PeakTime2.Top     := lb_PeakTime1.Top;	
		lb_PeakTime2.Left    := lb_PeakTime1.Left + lb_PeakTime1.Width + 2;
		lb_PeakTime3.Caption := ' 입니다';
		lb_PeakTime3.visible := True;		
		lb_PeakTime3.Top     := lb_PeakTime2.Top;	
		lb_PeakTime3.Left    := lb_PeakTime2.Left + lb_PeakTime2.Width + 2;
		cxGrid_OrderDayList.DataController.BeginUpdate;
	iArray[0] := '일'; iArray[1] := '월';	iArray[2] := '화';	iArray[3] := '수';
	iArray[4] := '목'; iArray[5] := '금';	iArray[6] := '토';	iArray[7] := '';
	iArray[8] := ''; iArray[9] := '';	iArray[10] := '';	iArray[11] := '';
	iArray[12] := '';	iArray[13] := '';	iArray[14] := '';	iArray[15] := '';
	iArray[16] := '';	iArray[17] := '';	iArray[18] := '';	iArray[19] := '';
	iArray[20] := ''; iArray[21] := ''; iArray[22] := '';	iArray[23] := '';

		for i := 0 to 6 do
		begin
			iRow := cxGrid_OrderDayList.DataController.AppendRecord;
			cxGrid_OrderDayList.DataController.Values[iRow, 0] := iArray[i];
			cxGrid_OrderDayList.DataController.Values[iRow, 1] := strToMoney(edt_STPoi.text);
		end;     
		cxGrid_OrderDayList.EndUpdate;
						 
		//Left : 60 Top : 71 (09시 기준)275(17시 기준) 간격 30.4
		//width 152(5시간)
		//1:일, 2:월, 3화, 4수, 5목, 6금, 7토
		lb_PeakDayBox.Left := 61;
		lb_PeakDayBox.width := 50;
		iGap := 5;
		sTmp := StartDateTime('yyyy-mm-dd hh:nn:ss');
		dTime := StrToDateTime(sTmp);
		giDay := DayOfWeek(dTime);
		giDay := StrToIntDef(cxTextEdit2.text, 0);

		if (iMax < 10)                        then
		begin
			case giDay of
				1: iBox := 3;  
				2: iBox := 120;
				3: iBox := 236;  
				4: iBox := 350;  
				5: iBox := 465;  
				6: iBox := 579;  
			end;
			iGap := 0;
		end;
		if (iMax > 9   )  and (iMax < 100)    then 
		begin 
			case giDay of
				1: iBox := 3;  
				2: iBox := 116;
				3: iBox := 230;  
				4: iBox := 345;  
				5: iBox := 457;  
				6: iBox := 571;  
			end;
			iGap := 10;
		end else  
		if (iMax > 99  )  and (iMax < 1000)   then 
		begin 
			case giDay of
				1: iBox := 4;  
				2: iBox := 116;
				3: iBox := 230;  
				4: iBox := 342;  
				5: iBox := 453;  
				6: iBox := 567;  
			end;
			iGap := 15; 
		end else 
		if (iMax > 999 )  and (iMax < 10000)  then 
		begin 
			case giDay of
				1: iBox := 5;  
				2: iBox := 116;
				3: iBox := 229;  
				4: iBox := 340;  
				5: iBox := 450;  
				6: iBox := 562;  
			end;
			iGap := 20; 
		end else  
		if (iMax > 9999)  and (iMax < 100000) then 
		begin 
			case giDay of
				1: iBox := 6;  
				2: iBox := 116;
				3: iBox := 227;  
				4: iBox := 337;  
				5: iBox := 447;  
				6: iBox := 559;  
			end;
			iGap := 25; 
		end else 
		if (iMax > 99999)                     then 
		begin 
			case giDay of
				1: iBox := 7; 
				2: iBox := 116;
				3: iBox := 227;  
				4: iBox := 335;  
				5: iBox := 444;  
				6: iBox := 555;  
			end;
			iGap := 30;
		end;
		pnl_DayChartLeft.width := 25;
//		iGap := StrToIntDef(cxTextEdit1.Text, 0);
		pnl_DayChartLeft.width := pnl_DayChartLeft.width + iGap;
		lb_PeakDayCaption.width := lb_PeakDayBox.width;
		//9 : 56, 168, 284, 398, 513, 627 //99 : 
		lb_PeakDayBox.Left := pnl_DayChartLeft.Left + pnl_DayChartLeft.width + iBox - 25; 

		lb_PeakDayBox.Top := 45;
		lb_PeakDayCaption.Left := lb_PeakDayBox.Left;
		lb_PeakDayCaption.Top := lb_PeakDayBox.Top + lb_PeakDayBox.Height +1;     

		iDayCnt := 1;
		sTmp := '';
		case iDayCnt of
			1: sTmp := '1주일중에 최고로(No.1) 바쁜날';  
			2: sTmp := '1주일중에 2번째로 바쁜날';
			3: sTmp := '1주일중에 3번째로 바쁜날';  
			4: sTmp := '1주일중에 4순위로 집중이 필요한 날';  
			5: sTmp := '1주일중에 5순위로 신경써야할 날';  
			6: sTmp := '1주일중에 6순위로 신경써야할 날';  
			7: sTmp := '1주일중에 7순위로 신경써야할 날';
		end;
		if giDay = 1 then sTmp := '일요일' else 
		if giDay = 7 then sTmp := '토요일'; 
		lb_PeakDay1.Caption := '★ 오늘은 ';
		lb_PeakDay2.Caption := sTmp;//'1주일중에 ' + IntToStr(iDayCnt) +'째로 바쁜날' ;
		lb_PeakDay2.visible := True;	
		lb_PeakDay2.Top     := lb_PeakDay1.Top;	
		lb_PeakDay2.Left    := lb_PeakDay1.Left + lb_PeakDay1.Width + 2;
		lb_PeakDay3.Caption := ' 입니다';
		lb_PeakDay3.visible := True;		
		lb_PeakDay3.Top     := lb_PeakDay2.Top;	
		lb_PeakDay3.Left    := lb_PeakDay2.Left + lb_PeakDay2.Width + 2;

				btn_Hot2DayChart.Click;
//				btn_Hot2Day.Tag := 99;
	except
		on e: Exception do
		begin
			Frm_Flash.hide;
			if btn_More.Tag <> 99 then btn_More.Enabled := True;
			btn_Survey.Enabled := True;
			btn_Hot2Day.Enabled := True;
			btn_Hot3DayClose.Enabled := True;
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_COM60.tm_FlashTimer(Sender: TObject);
var sNTime, sTime : string;
begin
	if (not Frm_Flash.Visible) then
	begin
		Frm_Flash.Show;
		Sleep(10);
		Frm_Flash.BringToFront;
	end;
	Frm_Flash.cxPBar1.Properties.Max := -100;
	Frm_Flash.cxPBar1.Properties.Min := -100;
	Frm_Flash.cxPBar1.Properties.Marquee := True;
	Frm_Flash.cxPBar1.Properties.ShowTextStyle := cxtsText;

	Frm_Flash.lb_SearchTimeDescription.visible := True;

	sNTime := FormatDateTime('hhmmss', Now);
	sTime := copy(sNTime,1,2) + ':' + copy(sNTime,3,2) + ':' + copy(sNTime,5,2);

	Frm_Flash.lb_SearchTime.caption := func_lap_timeSS(sTime);
	Frm_Flash.lb_SearchTime.visible := True;
end;

end.

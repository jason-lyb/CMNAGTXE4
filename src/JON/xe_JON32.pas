unit xe_JON32;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, xe_GNL,
	Dialogs, ExtCtrls, cxGraphics, cxLookAndFeels, System.StrUtils, MSXML2_TLB,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxStyles, cxCustomData, IniFiles,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxLabel, cxImageComboBox, cxCurrencyEdit, cxContainer, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxGroupBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxMemo,
  cxRichEdit, Vcl.Imaging.jpeg, cxImage, WebImage, dxSkinsCore,
  dxSkinscxPCPainter, dxGDIPlusClasses, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  TFrm_JON32 = class(TForm)
    PnlLeft: TPanel;
    Panel3: TPanel;
    cxbtn_wksms: TcxButton;
		cxbtn_baecha_cancellog: TcxButton;
    cxbtn_wk_move: TcxButton;
    cxbtn_wk_penalty: TcxButton;
		cxbtn_baecha_limit: TcxButton;
    Panel4: TPanel;
    Panel5: TPanel;
    cxButton1: TcxButton;
    de_stDate: TcxDateEdit;
    de_edDate: TcxDateEdit;
    cxgrid_today: TcxGrid;
    cxToday_GridList: TcxGridDBTableView;
    cxTodayLGrid: TcxGridLevel;
    cxToday_GridListColumn1: TcxGridDBColumn;
    cxToday_GridListColumn2: TcxGridDBColumn;
    cxToday_GridListColumn3: TcxGridDBColumn;
    cxToday_GridListColumn4: TcxGridDBColumn;
    cxToday_GridListColumn5: TcxGridDBColumn;
    cxToday_GridListColumn6: TcxGridDBColumn;
    cxToday_GridListColumn7: TcxGridDBColumn;
    cxOrderGrid: TcxGrid;
    cxOrder_Stat: TcxGridDBTableView;
    cxOrder_Level: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    pnlTitle: TPanel;
    cxButton2: TcxButton;
    cxGroupBox3: TcxGroupBox;
    Memo_WorkerInfo: TcxRichEdit;
    Shape1: TShape;
    cxLabel2: TcxLabel;
    PnlClient: TPanel;
    Shape2: TShape;
    PnlWorkImg: TPanel;
    BtnLClose1: TcxButton;
    cxLblWkNm: TcxLabel;
    cxiWkImg: TWebImage;
    cxLblActive: TLabel;
    BtnWCall1: TcxButton;
    BtnWCall2: TcxButton;
    btn_wkModify: TcxButton;
    btn_KDCall: TcxButton;
    lb_KDWorker: TLabel;
    lb_penalty: TcxLabel;
    lb_plus: TcxLabel;
    lb_wkname_title: TcxLabel;
    lbTitle: TListBox;
    popGrid: TPopupMenu;
    N2: TMenuItem;
    img_KDDrive: TImage;
    cxGrid_KMDrive: TcxGrid;
    cxGridKMDrive: TcxGridDBTableView;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridDBColumn55: TcxGridDBColumn;
    cxGridDBColumn56: TcxGridDBColumn;
    cxGridDBColumn57: TcxGridDBColumn;
    cxGridDBColumn58: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxGridKMDriveColumn2: TcxGridDBColumn;
    cxGridKMDriveColumn3: TcxGridDBColumn;
    cxGridKMDriveColumn4: TcxGridDBColumn;
    cxGridKMDriveColumn5: TcxGridDBColumn;
    cxGridKMDriveColumn6: TcxGridDBColumn;
    cxGridKMDriveColumn7: TcxGridDBColumn;
    cxGridKMDriveColumn8: TcxGridDBColumn;
    cxGridKMDriveColumn9: TcxGridDBColumn;
    lbTitleKD: TListBox;
    cxGridKMDriveColumn1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
		procedure cxbtn_wksmsClick(Sender: TObject);
    procedure cxbtn_baecha_limitClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxbtn_wk_penaltyClick(Sender: TObject);
		procedure cxbtn_baecha_cancellogClick(Sender: TObject);
    procedure cxbtn_wk_moveClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BtnLClose1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure cxiWkImgDownLoadError(Sender: TObject; err: string);
    procedure BtnWCall1Click(Sender: TObject);
    procedure BtnWCall2Click(Sender: TObject);
    procedure btn_wkModifyClick(Sender: TObject);
		procedure btn_KDCallClick(Sender: TObject);
		procedure cxToday_GridListColumnPosChanged(Sender: TcxGridTableView;
			AColumn: TcxGridColumn);
		procedure cxToday_GridListColumnSizeChanged(Sender: TcxGridTableView;
			AColumn: TcxGridColumn);
		procedure N2Click(Sender: TObject);
    procedure cxGridKMDriveColumnPosChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGridKMDriveColumnSizeChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
	private
		{ Private declarations }
		igJ32Top, igJ32Left : Integer;
		procedure Proc_WorkerDaily_Statistic(Row1, Row2: Integer);
		procedure proc_wk_modify;
		procedure proc_Cell_Read;
		procedure proc_Cell_Save;
		procedure proc_Cell_Clear;
		procedure proc_Cell_Read_KD;
		procedure proc_Cell_Save_KD;
		procedure proc_Cell_Clear_KD;
	public
		Proc_Flag : integer;
		sWk_sabun32, sWk_BrNo, sWkName, sKeyNumber : string;
		gsHdNo, gsBrNo, gsKMWkSabun : string;
		Jon03Tag : Integer;
		sSlip : string;

		pJON32Dock : TUNDOCKMNG;
		procedure Proc_Initialization;
		procedure Proc_WorkerInfo;
		procedure Proc_WorkerOrderToday;
		procedure pShow;
		procedure proc_AllRun;
		{ Public declarations }
  end;

var
  Frm_JON32: TFrm_JON32;

implementation


{$R *.dfm}

uses xe_WOR09, xe_WOR14, xe_WOR16, xe_WOR17, xe_Func, xe_packet, xe_Msg, xe_JON30,
	Main, xe_Lib, xe_WOR01, xe_gnl3, xe_SMS06, xe_Flash, xe_gnl2, xe_xml, xe_Dm;

 const
	 JON32SL : array[0..6] of TSortList = (
		 (cName : 'No'    ;  cWid : 032 ),
		 (cName : '상태'  ;  cWid : 053 ),
		 (cName : '발주사';  cWid : 111 ),
		 (cName : '출발지';  cWid : 157 ),
		 (cName : '도착지';  cWid : 124 ),
		 (cName : '시간'  ;  cWid : 118 ),
		 (cName : '요금'  ;  cWid : 068 )
	 );
	 JON32KDSL : array[0..22] of TSortList = (
		 (cName : 'No'    ;  cWid : 032 ),
		 (cName : '파트너 콜 아이디'  ;  cWid : 109 ),
		 (cName : '파트너 유저 아이디';  cWid : 109 ),
		 (cName : '발주사'  ;  cWid : 064 ),
		 (cName : '발주사명';  cWid : 100 ),
		 (cName : '접수시간';  cWid : 083 ),
		 (cName : '배차시간';  cWid : 083 ),
		 (cName : '완료시간';  cWid : 083 ),
		 (cName : '출발지'  ;  cWid : 064 ),
		 (cName : 'ArrLat'  ;  cWid : 064 ),
		 (cName : 'ArrLng'  ;  cWid : 064 ),
		 (cName : '도착지'  ;  cWid : 064 ),
		 (cName : 'DepLat'  ;  cWid : 064 ),
		 (cName : 'DepLng'  ;  cWid : 064 ),
		 (cName : '요금구분';  cWid : 064 ),
		 (cName : '호출요금';  cWid : 053 ),
		 (cName : '결제요금';  cWid : 053 ),
		 (cName : '수수료'  ;  cWid : 053 ),
		 (cName : '지원금'  ;  cWid : 053 ),
		 (cName : '원천세'  ;  cWid : 053 ),
		 (cName : '운전유형';  cWid : 064 ),
		 (cName : '면허타입';  cWid : 064 ),
		 (cName : '발주사연락처';  cWid : 100 )
	 );
	 
procedure TFrm_JON32.Proc_Initialization;
var i : integer;
begin
	for i := 0 to cxToday_GridList.ColumnCount - 1 do
		cxToday_GridList.Columns[i].DataBinding.ValueType := 'String';
	cxToday_GridList.Columns[0].DataBinding.ValueType := 'Integer';

	for i := 0 to cxGridKMDrive.ColumnCount - 1 do
	begin                                                          		
		case i of
			15..19 : cxGridKMDrive.Columns[i].DataBinding.ValueType := 'Currency';
		else
			cxGridKMDrive.Columns[i].DataBinding.ValueType := 'String';      
		end;                                                         		
	end;
	cxGridKMDrive.Columns[0].DataBinding.ValueType := 'Integer';     

	if (sWk_sabun32 = 'M00001') and ((GS_PRJ_AREA = 'S') or (GT_KAKAOUse)) then //KD드라이브
	begin
		cxGroupBox1.Caption := '  운행 리스트';
		cxGrid_KMDrive.Visible := True;
		cxgrid_today.Visible := False;
		proc_Cell_Read_KD;
		
		pnlTitle.Color := $00A6FFFF;
		pnlTitle.Font.Color := clBlack;

    lb_wkname_title.Style.TextColor := clBlack;

		img_KDDrive.visible := True;
		img_KDDrive.Top := 2;
		img_KDDrive.Left := 2;
		cxbtn_wksms.Left := 2 + img_KDDrive.Left + img_KDDrive.Width;//167;

		btn_KDCall.Visible := True;
		btn_KDCall.Top := 3;
		btn_KDCall.Left := cxbtn_wksms.Left + cxbtn_wksms.Width + 2;;

		lb_KDWorker.Visible := True;
		lb_KDWorker.Left := btn_KDCall.Left + btn_KDCall.Width + 2;

		btn_wkModify.visible := False;
//		cxbtn_wksms.visible := False;
		cxbtn_baecha_cancellog.visible := False;
		cxbtn_wk_move.visible := False;
		cxbtn_wk_penalty.visible := False;
		cxbtn_baecha_limit.visible := False;

		BtnWCall1.visible := False;
		BtnWCall2.visible := False;
		de_stDate.Enabled := False;
		de_edDate.Enabled := False;
		cxButton1.Enabled := False;
		Memo_WorkerInfo.Text := Format('공유여부 : %s ' + #13#10 +
																	 '기사명 : %s ' + #13#10 +
																	 '단말기 : %s ' + #13#10 +
																	 '보험사 : %s ' + #13#10 +
																	 '보험정보 : %s ',
																	 ['', sWkName, '', '', '']);


		lb_penalty.visible := False;
		lb_plus.visible := False;
	end else
	begin
		cxGroupBox1.Caption := '  당일 운행 리스트';
		cxGrid_KMDrive.Visible := False;
		cxgrid_today.Visible := True;
		proc_Cell_Read;
		if GB_DARKMODE then	pnlTitle.Color := $006A6A6A
                   else pnlTitle.Color := $00BFBFBF;
		img_KDDrive.visible := False;
		lb_KDWorker.Visible := False;
		btn_KDCall.Visible := False;

		cxbtn_wksms.Left := 146;

		btn_wkModify.visible := True;
		cxbtn_baecha_cancellog.visible := True;
		cxbtn_wksms.visible := True;
		cxbtn_wk_move.visible := True;
		cxbtn_wk_penalty.visible := True;
		cxbtn_baecha_limit.visible := True;

		BtnWCall1.visible := True;
		BtnWCall2.visible := True;
		de_stDate.Enabled := True;
		de_edDate.Enabled := True;
		cxButton1.Enabled := True;

		if (GS_PRJ_AREA = 'O') then
			Memo_WorkerInfo.Text := Format('본사명 : %s ' + #13#10 +
																		 '지사명 : %s ' + #13#10 +
																		 '상황실 : %s ' + #13#10 +
																		 '기사명 : %s ' + #13#10 +
																		 '단말기 : %s ' + #13#10 +
																		 '핸드폰 : %s ' + #13#10 +
																		 '우선배차 : %s ' + #13#10 +
																		 '입사일 : %s ' + #13#10 +
																		 '나이 : %s ' + #13#10 +
																		 '성별 : %s ' + #13#10 +
																		 '수수료그룹 : %s ' + #13#10 +
																		 '잔액 : %s ' + #13#10 +
																		 '건수제한 : %s (건)' + #13#10 +
																		 '완료시간 : %s (분)' + #13#10 +
																		 '보험정보 : %s ' + #13#10 +
																		 '보험만료 : %s ' + #13#10 +
																		 '폰정보 : %s ' + #13#10 +
																		 '면허상태 : %s ' + #13#10 +
																		 '업무상태 : %s ' + #13#10 +
																		 '기사등급 : %s ' + #13#10 +
																		 '당일완료콜수 : %s (건)' + #13#10 +
																		 '당일취소콜수 : %s (건)' + #13#10 +
																		 '배차취소율 : %s ' + #13#10 +
																		 '플러스점수 : %s (점)' + #13#10 +
																		 '패널티점수 : %s (점)' + #13#10 +
																		 '스틱/탁송 : %s ' + #13#10 +
																		 '복장상태 : %s ' + #13#10 +
																		 '셔틀등록상태 : %s ' + #13#10 +
																		 '셔틀과금타입 : %s ' + #13#10 +
																		 '태그번호 : %s ' + #13#10 +
																		 '보험구분 : %s ',
																		 ['', sWkName, '', '', '', '', '', '', '', '', ' (%)', '', '', '', '', '', '', '', '', '', '', '', ' (%)', '', '', '', '', '', '', '', ''])
		else																	 
			Memo_WorkerInfo.Text := Format('본사명 : %s ' + #13#10 +
																		 '지사명 : %s ' + #13#10 +
																		 '상황실 : %s ' + #13#10 +
																		 '기사명 : %s ' + #13#10 +
																		 '단말기 : %s ' + #13#10 +
																		 '핸드폰 : %s ' + #13#10 +
																		 '입사일 : %s ' + #13#10 +
																		 '우선배차 : %s ' + #13#10 +
																		 '나이 : %s ' + #13#10 +
																		 '성별 : %s ' + #13#10 +
																		 '수수료그룹 : %s ' + #13#10 +
																		 '잔액 : %s ' + #13#10 +
																		 '건수제한 : %s (건)' + #13#10 +
																		 '완료시간 : %s (분)' + #13#10 +
																		 '보험정보 : %s ' + #13#10 +
																		 '보험만료 : %s ' + #13#10 +
																		 '폰정보 : %s ' + #13#10 +
																		 '면허상태 : %s ' + #13#10 +
																		 '업무상태 : %s ' + #13#10 +
																		 '기사등급 : %s ' + #13#10 +
																		 '당일완료콜수 : %s (건)' + #13#10 +
																		 '당일취소콜수 : %s (건)' + #13#10 +
																		 '배차취소율 : %s ' + #13#10 +
																		 '플러스점수 : %s (점)' + #13#10 +
																		 '패널티점수 : %s (점)' + #13#10 +
																		 '스틱/탁송 : %s ' + #13#10 +
																		 '복장상태 : %s ' + #13#10 +
																		 '셔틀등록상태 : %s ' + #13#10 +
																		 '셔틀과금타입 : %s ' + #13#10 +
																		 '태그번호 : %s ',
																		 ['', sWkName, '', '', '', '', '', '', '', '', ' (%)', '', '', '', '', '', '', '', '', '', '', '', ' (%)', '', '', '', '', '', '', '']);


		lb_penalty.visible := True;
		lb_plus.visible := True;
		lb_penalty.Caption := '패널티 점수 : ';
		lb_plus.Caption := '플러스 점수 : ';
	end;	

	//기사 상세정보 라벨 셋팅...
	lb_wkname_title.Caption := sWkName;

	Memo_WorkerInfo.Lines.Clear;

  cxLblWkNm.Caption := '';

	BtnWCall1.Description := '';
  BtnWCall2.Description := '';
	btn_KDCall.Description := '';

	PnlWorkImg.Left := ( PnlWorkImg.Width * -1 );
	BtnLClose1.Left := PnlWorkImg.Left + (PnlWorkImg.Width);

  cxiWkImg.WebPicture := Nil;

  //기사 업무 현황 날짜 셋팅
  de_stDate.Date := StrToDate(Date8to10(StartDateTime('yyyymmdd')))-7;
	de_edDate.Date := de_stDate.Date + 7;
  //기사 업무 현황 리스트 초기화
  cxOrder_Stat.ClearItems;


  if cxgrid_today.CanFocus then cxgrid_today.SetFocus;
end;

procedure TFrm_JON32.Proc_WorkerInfo;
var
	ls_TxLoad, ls_MSG_Err, tmpCntStr : string;
	slRcvList: TStringList;
	j, tmpCnt, iRow, iTmp : Integer;
	slTmp : TStringList;
	XmlData, Param, ErrMsg: string;
	xdom: msDomDocument;
	lst_Result: IXMLDomNodeList;
	ls_Rcrd: TStringList;
	I, ErrCode: Integer;
	sData, sType, sTmp, sWkNm : string;
begin
	Try
		if (sWk_sabun32 = 'M00001') and (GT_Kakao_Worker) then
		begin
			PnlWorkImg.Left := cxgrid_today.Left;
			BtnLClose1.Left := PnlWorkImg.Left + (PnlWorkImg.Width);

			ls_TxLoad := GTx_UnitXmlLoad('KM00040.XML');
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'KM00040');
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'strKdDriverId', Trim(gsKMWkSabun));
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'strHdNo', Trim(gsHdNo));
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBrNo', Trim(gsBrNo));

			slRcvList := TStringList.Create;
			try
				if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 180000) then
				begin
					if slRcvList.Count > 0 then
					begin
						Frm_Flash.cxPBar1.Properties.Max := slRcvList.Count;
						Frm_Flash.cxPBar1.Position := 0;

						for j := 0 to slRcvList.Count - 1 do
						begin
							Frm_Flash.cxPBar1.Position := j + 1;
							Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slRcvList.Count);
							Application.ProcessMessages;
							xmlData := slRcvList.Strings[j];

							xdom := ComsDomDocument.Create;

							if not xdom.loadXML(XmlData) then Exit;

							ls_MSG_Err := GetXmlErrorCode(XmlData);
							if ('0000' = ls_MSG_Err) then
							begin
								lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Response/Data');

								Memo_WorkerInfo.Lines.Clear;
//								Memo_WorkerInfo.Lines.Add(sTmp);      //공유여부
								sTmp := lst_Result.item[i].attributes.getNamedItem('Id').Text;
								Memo_WorkerInfo.Lines.Add('기사ID : ' + sTmp);
								sWkNm := lst_Result.item[i].attributes.getNamedItem('Name').Text;
								Memo_WorkerInfo.Lines.Add('기사명 : ' + sWkNm);
								lb_wkname_title.Caption := sWkNm;
								sTmp := lst_Result.item[i].attributes.getNamedItem('Phone').Text;
								Memo_WorkerInfo.Lines.Add('단말기 : ' + sTmp);
								btn_KDCall.Description := sTmp;
								sTmp := lst_Result.item[i].attributes.getNamedItem('Birthday').Text;
								Memo_WorkerInfo.Lines.Add('생년월일 : ' + sTmp);
								
								sTmp := lst_Result.item[i].attributes.getNamedItem('ProfileImage').Text;
								Try cxiWkImg.WebPicture.LoadFromURL(sTmp); except End;

								sTmp := lst_Result.item[i].attributes.getNamedItem('WorkStatus').Text;   //working: 출근중, driving: 운행중, working_but_unreceivable: 콜카드 수신 중지, leaving: 퇴근"
								if sTmp = 'working' then sTmp := '출근중' else
								if sTmp = 'driving' then sTmp := '운행중' else
								if sTmp = 'working_but_unreceivable' then sTmp := '콜카드수신중지' else
								if sTmp = 'leaving' then sTmp := '퇴근'   else sTmp := '';
								Memo_WorkerInfo.Lines.Add('현재상태 : ' + sTmp);

								sTmp := lst_Result.item[i].attributes.getNamedItem('Status').Text;     //Status ="activated: 활성화, suspended: 계정정지, deactivated_i: 탈퇴대기, deactivated: 탈퇴"
								if sTmp = 'activated'     then sTmp := '활성화'   else
								if sTmp = 'suspended'     then sTmp := '계정정지' else
								if sTmp = 'deactivated_i' then sTmp := '탈퇴대기' else
								if sTmp = 'deactivated'   then sTmp := '탈퇴'     else sTmp := '';
								Memo_WorkerInfo.Lines.Add('가입상태 : ' + sTmp);
								
//								sTmp := lst_Result.item[i].attributes.getNamedItem('Address').Text;
//								Memo_WorkerInfo.Lines.Add('자택주소 : ' + sTmp);
								sTmp := lst_Result.item[i].attributes.getNamedItem('GearType').Text;    //"수동/자동 : manual, auto"	
								if sTmp = 'manual' then sTmp := '수동' else
								if sTmp = 'auto'   then sTmp := '자동' else sTmp := '';
								Memo_WorkerInfo.Lines.Add('자동/수동 : ' + sTmp);
								sTmp := lst_Result.item[i].attributes.getNamedItem('AvailableWorkModes').Text; //"regular: 일반 기사 모드, vip_driver: 프리미엄 기사 모드	"
								if Pos('regular', sTmp) > 0 then sType := '일반기사';
								if Pos('vip_driver', sTmp) > 0 then 
								begin
									if sType = '' then sType := '프리미엄기사' else sType := sType + ',프리미엄기사';
								end else sType := '';
								Memo_WorkerInfo.Lines.Add('기사구분 : ' + sType);

								sTmp := lst_Result.item[i].attributes.getNamedItem('Subcontracts').Text; //도급 계약 타입 angel_normal,angel_vip 원천징수대상기사"
								if Pos('angel_normal', sTmp) > 0 then sType := '도급일반';
								if Pos('angel_vip', sTmp) > 0 then 
								begin
									if sType = '' then sType := '도급VIP' else sType := sType + ',도급VIP';
								end else sTmp := '';
								Memo_WorkerInfo.Lines.Add('도급계약 : ' + sType);

								sTmp := lst_Result.item[i].attributes.getNamedItem('License').Text;    //"운전면허  : 2종보통 c2_regular, 1종보통 c1_regular, 1종대형 c1_large"
								if sTmp = 'c2_regular' then sTmp := '2종보통' else
								if sTmp = 'c1_regular' then sTmp := '1종보통' else 
								if sTmp = 'c1_large'   then sTmp := '1종대형' else sTmp := '';
								Memo_WorkerInfo.Lines.Add('면허종류 : ' + sTmp);

								sTmp := lst_Result.item[i].attributes.getNamedItem('Insurances').Text;
								Memo_WorkerInfo.Lines.Add('보험정보 : ' + CRLF + sTmp);
								sTmp := lst_Result.item[i].attributes.getNamedItem('ExtraInfo').Text;
								Memo_WorkerInfo.Lines.Add('운행/사고/벌금 : '); //운행건수:58.0,사고건수:1.0,벌금건수:1.0    
								slTmp := TStringList.Create;
								Try
									slTmp.Delimiter     := ',';
									slTmp.DelimitedText := sTmp;
									for i := 0 to slTmp.Count-1 do
									begin
										sTmp := slTmp[i];
										iTmp := Pos('.', sTmp);
										sTmp := ' - ' + Copy(sTmp, 1, iTmp-1);
										Memo_WorkerInfo.Lines.Add(sTmp);
                  end;
								Finally
									slTmp.Free;
								End;
								if sTmp = '' then sTmp := '운행/사고/벌금';
								Memo_WorkerInfo.SelStart := 0;
								Memo_WorkerInfo.SelLength := Pos(sTmp, Memo_WorkerInfo.Text) + 20;
								if GB_DARKMODE then Memo_WorkerInfo.SelAttributes.Color := clAqua
															 else Memo_WorkerInfo.SelAttributes.Color := clBlue;
								Memo_WorkerInfo.SelAttributes.Style := [fsBold];
								Memo_WorkerInfo.SelLength := 0;
							end else
							begin
//								GMessagebox(ls_Msg_Err, CDMSE);
							end;
						end;
					end;
				end;
			finally
				xdom := Nil;
			end;
		
		end else
		begin
			Param := sWk_sabun32 + '│' + sSlip;  
			if not RequestBase(GetSel05('GETPLUSINFO', 'worker.get_plus_info', '1', Param), XmlData, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('기사상세정보 로드 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				Exit;
			end;

			PnlWorkImg.Left := cxgrid_today.Left;
			BtnLClose1.Left := PnlWorkImg.Left + (PnlWorkImg.Width);

			cxiWkImg.WebPicture.LoadFromURL(proc_HttpGetWorkImageURL(Trim(Param), 'Person'));

			xdom := ComsDomDocument.Create;
			xdom.loadXML(XmlData);

			lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

			ls_Rcrd := TStringList.Create;
			try
				for I := 0 to lst_Result.length - 1 do
				begin
					if lst_Result.item[i].attributes.getNamedItem('Value').Text = '' then Continue;
					GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

					if (sWk_sabun32 = 'M00001') and ((GS_PRJ_AREA = 'S') or (GT_KAKAOUse)) then //KD드라이브
					begin
						sTmp := '';
						if ls_Rcrd[40] = 'y' then sTmp := '단순보험공유기사' else sTmp := '공유기사아님';

						Memo_WorkerInfo.Lines.Clear;
						Memo_WorkerInfo.Lines.Add(sTmp);
						Memo_WorkerInfo.Lines.Add('기사명 : ' + ls_Rcrd[41]);
						Memo_WorkerInfo.Lines.Add('단말기 : ' + ls_Rcrd[42]);
						Memo_WorkerInfo.Lines.Add('보험사 : ' + ls_Rcrd[43]);
						Memo_WorkerInfo.Lines.Add('증권번호 : ' + ls_Rcrd[44]);

						Memo_WorkerInfo.SelStart := 0;
						Memo_WorkerInfo.SelLength := Pos('증권번호', Memo_WorkerInfo.Text) + 20;
						if GB_DARKMODE then Memo_WorkerInfo.SelAttributes.Color := clAqua
													 else Memo_WorkerInfo.SelAttributes.Color := clBlue;
						Memo_WorkerInfo.SelAttributes.Style := [fsBold];

						btn_KDCall.Description := ls_Rcrd[42];
					end else
					begin
						lb_wkname_title.Caption := ls_Rcrd[4] + '/' + ls_Rcrd[17];
						lb_penalty.Caption := '패널티 점수 : ' + ls_Rcrd[19];
						lb_plus.Caption := '플러스 점수 : ' + ls_Rcrd[18];

						Memo_WorkerInfo.Lines.Clear;
						Memo_WorkerInfo.Lines.Add('본사명: ' + ls_Rcrd[0]);
						Memo_WorkerInfo.Lines.Add('지사명: ' + ls_Rcrd[1]);

						sType := 'Tel';
						sData := ls_Rcrd[2];
						Memo_WorkerInfo.Lines.Add(Format('상황실 : %s ',[Data_Parser(sData, sType)]));
						Memo_WorkerInfo.Lines.Add('기사명: ' + ls_Rcrd[4]);
						cxLblWkNm.Caption := ls_Rcrd[4];

		//				sTmp := '';
		//				if ls_Rcrd[40] = 'y' then sTmp := '단순보험공유기사' else sTmp := '공유기사아님';
		//				lb_KDWorker.Caption := '[' + sTmp + '] ' + ls_Rcrd[41] + ', ' + StrToCall(ls_Rcrd[42]) + ', ' + ls_Rcrd[43] + ', ' + ls_Rcrd[44];
		//				btn_KDCall.Description := ls_Rcrd[42];
						if ls_Rcrd.Count > 24 then
						begin
							if (GS_PRJ_AREA = 'O') and (GT_USERIF.HD <> ls_Rcrd[25]) and (GT_USERIF.WKVPhone = 'y') then
							begin
								sData := ls_Rcrd[26];
								BtnWCall1.Description := sData;
								sType := 'Tel';
								Memo_WorkerInfo.Lines.Add(Format('단말기 : %s ',[Data_Parser(sData,sType)]));
								sData := ls_Rcrd[27];
								BtnWCall2.Description := sData;
								GS_SMS_WKHP := sData;
								sType := 'Tel';
								Memo_WorkerInfo.Lines.Add(Format('핸드폰 : %s ',[Data_Parser(sData,sType)]));
							end else
							begin
								sData := ls_Rcrd[5];
								BtnWCall1.Description := sData;
								sType := 'Tel';
								Memo_WorkerInfo.Lines.Add(Format('단말기 : %s ',[Data_Parser(sData,sType)]));
								sData := ls_Rcrd[6];
								BtnWCall2.Description := sData;
								GS_SMS_WKHP := sData;
								sType := 'Tel';
								Memo_WorkerInfo.Lines.Add(Format('핸드폰 : %s ',[Data_Parser(sData,sType)]));
							end;
						end else
						begin
							sData := ls_Rcrd[5];
							BtnWCall1.Description := sData;
							sType := 'Tel';
							Memo_WorkerInfo.Lines.Add(Format('단말기 : %s ',[Data_Parser(sData,sType)]));
							sData := ls_Rcrd[6];
							BtnWCall2.Description := sData;
							GS_SMS_WKHP := sData;
							sType := 'Tel';
							Memo_WorkerInfo.Lines.Add(Format('핸드폰 : %s ',[Data_Parser(sData,sType)]));
						end;
						sTmp := '';
						if ls_Rcrd[45] = 'y' then sTmp := '적용';
						Memo_WorkerInfo.Lines.Add('우선배차: ' + sTmp);         //신성현차장님 요청 20190826 KHS
						sData := ls_Rcrd[7];
						sType := 'Date';
						Memo_WorkerInfo.Lines.Add('입사일: ' + Data_Parser(sData,sType));
						Memo_WorkerInfo.Lines.Add(Format('나이 : %s 세',[ls_Rcrd[28]]));
						Memo_WorkerInfo.Lines.Add(Format('성별 : %s ',[ls_Rcrd[29]]));
						Memo_WorkerInfo.Lines.Add('수수료그룹: ' + ls_Rcrd[8]);
						Memo_WorkerInfo.Lines.Add('잔액: ' + ls_Rcrd[9]);
						Memo_WorkerInfo.Lines.Add('건수제한: ' + ls_Rcrd[10]);
						Memo_WorkerInfo.Lines.Add('완료시간: ' + ls_Rcrd[11]);
						Memo_WorkerInfo.Lines.Add('보험정보: ' + ls_Rcrd[12] + ' ' + ls_Rcrd[13]);
						sData := ls_Rcrd[14];
						sType := 'Date';
						Memo_WorkerInfo.Lines.Add('보험만료: ' + Data_Parser(sData,sType));

						if ls_Rcrd[22] = 'y' then sTmp := '스틱가능' else
						if ls_Rcrd[22] = 'n' then sTmp := '스틱불가'
																 else sTmp := '';

						if ls_Rcrd[23] = 'y' then sTmp := sTmp + ' 탁송가능' else
						if ls_Rcrd[23] = 'n' then sTmp := sTmp + ' 탁송불가'
																 else sTmp := sTmp + '';

						Memo_WorkerInfo.Lines.Add(sTmp);

						if GS_PRJ_AREA = 'S' then
						begin
							sTmp := '';
							if ls_Rcrd[35] = 'y' then
							begin
								if ls_Rcrd[36] = 'y' then sTmp := '탁송확대기사'
								else sTmp := '탁송기사';
							end;
							Memo_WorkerInfo.Lines.Add('탁송종류: ' + sTmp);
							sTmp := '';
							if (ls_Rcrd[35] = 'y') or (ls_Rcrd[36] = 'y') then sTmp := ls_Rcrd[37];
							Memo_WorkerInfo.Lines.Add('탁송보험: ' + sTmp);

							sTmp := '';
							if ls_Rcrd[34] = '10' then sTmp := '1종대형' else
							if ls_Rcrd[34] = '11' then sTmp := '1종보통' else
							if ls_Rcrd[34] = '12' then sTmp := '1종소형' else
							if ls_Rcrd[34] = '13' then sTmp := '1종특수' else
							if ls_Rcrd[34] = '20' then sTmp := '2동보통' else
							if ls_Rcrd[34] = '21' then sTmp := '2종소형' else
							if ls_Rcrd[34] = '99' then sTmp := '기타'    else sTmp := ls_Rcrd[34];
							Memo_WorkerInfo.Lines.Add('면허종류: ' + sTmp);
						end;

						Memo_WorkerInfo.Lines.Add('면허상태: ' + ls_Rcrd[15]);
						Memo_WorkerInfo.Lines.Add('업무상태: ' + ls_Rcrd[16]);
						Memo_WorkerInfo.Lines.Add('기사등급: ' + ls_Rcrd[17]);
						Memo_WorkerInfo.Lines.Add('플러스점수: ' + ls_Rcrd[18]);
						Memo_WorkerInfo.Lines.Add('패널티점수: ' + ls_Rcrd[19]);
						Memo_WorkerInfo.Lines.Add('배차취소율: ' + ls_Rcrd[20]);
						Memo_WorkerInfo.Lines.Add('복장상태: ' + ls_Rcrd[21]);

						sWk_BrNo := ls_Rcrd[24];  // 기사 지사 코드

						if ls_Rcrd[31] = '0' then
							Memo_WorkerInfo.Lines.Add('셔틀등록상태 : 미가입')
						else if ls_Rcrd[31] = '1' then
							Memo_WorkerInfo.Lines.Add('셔틀등록상태 : 가입 ')
						else if ls_Rcrd[31] = '2' then
							Memo_WorkerInfo.Lines.Add('셔틀등록상태 : 미납')
						else
							Memo_WorkerInfo.Lines.Add('셔틀등록상태 : 미가입');

						if ls_Rcrd[32] = '0' then
							Memo_WorkerInfo.Lines.Add('셔틀과금타입 : 미설정')
						else if ls_Rcrd[32] = '1' then
							Memo_WorkerInfo.Lines.Add('셔틀과금타입 : 건당차감')
						else if ls_Rcrd[32] = '2' then
							Memo_WorkerInfo.Lines.Add('셔틀과금타입 : 일정액차감')
						else if ls_Rcrd[32] = '3' then
							Memo_WorkerInfo.Lines.Add('셔틀과금타입 : 월정액차감')
						else if ls_Rcrd[32] = '4' then
							Memo_WorkerInfo.Lines.Add('셔틀과금타입 : 월정액차감2')
						else
							Memo_WorkerInfo.Lines.Add('셔틀과금타입 : 미설정');
						Memo_WorkerInfo.Lines.Add(Format('태그번호 : %s ',[ls_Rcrd[30]]));

						if (GS_PRJ_AREA = 'O') then
						begin
							if GB_DARKMODE then Memo_WorkerInfo.SelAttributes.Color := clAqua
														 else Memo_WorkerInfo.SelAttributes.Color := clBlue;
							Memo_WorkerInfo.SelAttributes.Style := [fsBold];
							if (ls_Rcrd[33] = 'm') or (ls_Rcrd[33] = '') then
								Memo_WorkerInfo.Lines.Add(Format('보헙구분 : %s ',['월정액보험'])) else
							if ls_Rcrd[33] = 'c' then
								Memo_WorkerInfo.Lines.Add(Format('보헙구분 : %s ',['콜당보험']));
						end;

						Memo_WorkerInfo.SelStart := 0;
						Memo_WorkerInfo.SelLength := Pos('입사일', Memo_WorkerInfo.Text) - 8;
						if GB_DARKMODE then Memo_WorkerInfo.SelAttributes.Color := clAqua
													 else Memo_WorkerInfo.SelAttributes.Color := clBlue;
						Memo_WorkerInfo.SelAttributes.Style := [fsBold];
					end;
				end;
			finally
				ls_Rcrd.Free;
				xdom := Nil;
			end;
    end;
	except On e: Exception do
		begin
			Assert(False, E.Message);
		end;
	End;
end;

procedure TFrm_JON32.Proc_WorkerOrderToday;
var
	ls_TxLoad, ls_MSG_Err, tmpCntStr, sTmp : string;
	slRcvList: TStringList;
	j, tmpCnt, iRow, iTmp : Integer;

	XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
	ls_ClientKey :  string;
  lst_Result: IXMLDomNodeList;
	ls_Rcrd: TStringList;
	I, ErrCode : Integer;
	iTitle: array[0..6] of integer;
	iTitleKD: array[0..22] of integer;
begin
	Try
		if (sWk_sabun32 = 'M00001') and (GT_Kakao_Worker) then
		begin
			ls_TxLoad := GTx_UnitXmlLoad('KM00050.XML');
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'KM00050');
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'strKdDriverId', Trim(gsKMWkSabun));
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'strHdNo', Trim(gsHdNo));
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBrNo', Trim(gsBrNo));
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'strPage', '1');
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'strPer' , '100');
			

			slRcvList := TStringList.Create;
			try
				if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 180000) then
				begin
					if slRcvList.Count > 0 then
					begin
						Frm_Flash.cxPBar1.Properties.Max := slRcvList.Count;
						Frm_Flash.cxPBar1.Position := 0;

						cxGridKMDrive.DataController.SetRecordCount(0);
						for j := 0 to slRcvList.Count - 1 do
						begin
							Frm_Flash.cxPBar1.Position := j + 1;
							Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slRcvList.Count);
							Application.ProcessMessages;
							xmlData := slRcvList.Strings[j];

							xdom := ComsDomDocument.Create;

							if not xdom.loadXML(XmlData) then Exit;

							ls_MSG_Err := GetXmlErrorCode(XmlData);
							if ('0000' = ls_MSG_Err) then
							begin
								lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Response/DataInfo');
								tmpCnt := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Count').Text,0);

								if (0 < tmpCnt) then
								begin
									cxGridKMDrive.DataController.BeginUpdate;

									lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Response/DataInfo/Data');
									for i := 0 to lbTitleKD.Items.Count - 1 do
										iTitleKD[i] := cxGridKMDrive.GetColumnByFieldName(lbTitleKD.Items.Strings[i]).Index;
				
									for I := 0 to lst_Result.length - 1 do
									begin
										iRow := cxGridKMDrive.DataController.AppendRecord;
										cxGridKMDrive.DataController.Values[iRow, iTitleKD[0]] := I+1;

										sTmp := lst_Result.item[i].attributes.getNamedItem('PartnerCallId').Text;    //파트너 콜 아이디
										cxGridKMDrive.DataController.Values[iRow, iTitleKD[1]] := sTmp;
										sTmp := lst_Result.item[i].attributes.getNamedItem('PartnerUserId').Text;    //파트너 유저 아이디
										cxGridKMDrive.DataController.Values[iRow, iTitleKD[2]] := sTmp;
										sTmp := lst_Result.item[i].attributes.getNamedItem('SupplierId').Text;    //발주사
										cxGridKMDrive.DataController.Values[iRow, iTitleKD[3]] := sTmp;
										sTmp := lst_Result.item[i].attributes.getNamedItem('SupplierNm').Text;    //발주사명
										cxGridKMDrive.DataController.Values[iRow, iTitleKD[4]] := sTmp;

										sTmp := lst_Result.item[i].attributes.getNamedItem('CreatedAt').Text;    //접수시간
										sTmp := ReplaceAll(sTmp, 'T', '');
										cxGridKMDrive.DataController.Values[iRow, iTitleKD[5]] := copy(sTmp,1,10) + ' ' + copy(sTmp,11, 8);

										sTmp := lst_Result.item[i].attributes.getNamedItem('DispatchedAt').Text;    //배차시간
										sTmp := ReplaceAll(sTmp, 'T', '');
										cxGridKMDrive.DataController.Values[iRow, iTitleKD[6]] := copy(sTmp,1,10) + ' ' + copy(sTmp,11, 8);

										sTmp := lst_Result.item[i].attributes.getNamedItem('EndedAt').Text;         //완료시간
										sTmp := ReplaceAll(sTmp, 'T', '');
										cxGridKMDrive.DataController.Values[iRow, iTitleKD[7]] := copy(sTmp,1,10) + ' ' + copy(sTmp,11, 8);

										sTmp := lst_Result.item[i].attributes.getNamedItem('Arr').Text;       //출발지
										cxGridKMDrive.DataController.Values[iRow, iTitleKD[8]] := sTmp;
										sTmp := lst_Result.item[i].attributes.getNamedItem('ArrLat').Text;    //ArrLat
										cxGridKMDrive.DataController.Values[iRow, iTitleKD[9]] := sTmp;
										sTmp := lst_Result.item[i].attributes.getNamedItem('ArrLng').Text;    //ArrLng
										cxGridKMDrive.DataController.Values[iRow, iTitleKD[10]] := sTmp;
										sTmp := lst_Result.item[i].attributes.getNamedItem('Dep').Text;       //도착지
										cxGridKMDrive.DataController.Values[iRow, iTitleKD[11]] := sTmp;
										sTmp := lst_Result.item[i].attributes.getNamedItem('DepLat').Text;    //DepLat
										cxGridKMDrive.DataController.Values[iRow, iTitleKD[12]] := sTmp;
										sTmp := lst_Result.item[i].attributes.getNamedItem('DepLng').Text;    //DepLng
										cxGridKMDrive.DataController.Values[iRow, iTitleKD[13]] := sTmp;
										
										sTmp := lst_Result.item[i].attributes.getNamedItem('FareType').Text;    //요금구분
										if sTmp = 'fare' then sTmp := '운행요금' else
										if sTmp = 'fare' then sTmp := '취소/노쇼패널티요금' else sTmp := '';
										cxGridKMDrive.DataController.Values[iRow, iTitleKD[14]] := sTmp;

										sTmp := lst_Result.item[i].attributes.getNamedItem('InitialAmount').Text;        //호출요금
										cxGridKMDrive.DataController.Values[iRow, iTitleKD[15]] := StrToIntDef(sTmp, 0);
										sTmp := lst_Result.item[i].attributes.getNamedItem('PostCharge').Text;           //결제요금
										cxGridKMDrive.DataController.Values[iRow, iTitleKD[16]] := StrToIntDef(sTmp, 0);
										sTmp := lst_Result.item[i].attributes.getNamedItem('CommissionAmount').Text;     //수수료
										cxGridKMDrive.DataController.Values[iRow, iTitleKD[17]] := StrToIntDef(sTmp, 0);
										sTmp := lst_Result.item[i].attributes.getNamedItem('Payback').Text;              //지원금
										cxGridKMDrive.DataController.Values[iRow, iTitleKD[18]] := StrToIntDef(sTmp, 0);
										sTmp := lst_Result.item[i].attributes.getNamedItem('WithholdingTaxAmount').Text; //원천세
										cxGridKMDrive.DataController.Values[iRow, iTitleKD[19]] := StrToIntDef(sTmp, 0);

										sTmp := lst_Result.item[i].attributes.getNamedItem('GearType').Text;    //"수동/자동 : manual, auto"	
										if sTmp = 'manual' then sTmp := '수동' else
										if sTmp = 'auto'   then sTmp := '자동' else sTmp := '';
										cxGridKMDrive.DataController.Values[iRow, iTitleKD[20]] := sTmp;

										sTmp := lst_Result.item[i].attributes.getNamedItem('CarType').Text;    //"운전면허  : 2종보통 c2_regular, 1종보통 c1_regular, 1종대형 c1_large"
//										iTmp := Pos('.', sTmp);
//										sTmp := Copy(sTmp, 1, iTmp-1);
										if sTmp = '0' then sTmp := '2종보통' else
										if sTmp = '1' then sTmp := '1종보통' else 
										if sTmp = '2' then sTmp := '1종대형' else sTmp := '';
										cxGridKMDrive.DataController.Values[iRow, iTitleKD[21]] := sTmp;

										sTmp := lst_Result.item[i].attributes.getNamedItem('SupplierPhone').Text;    //발주사연락처
										cxGridKMDrive.DataController.Values[iRow, iTitleKD[22]] := StrToCall(sTmp);
									end;
									cxGridKMDrive.EndUpdate;
								end;
							end else
							begin
//								GMessagebox(ls_Msg_Err, CDMSE);
							end;
						end;
					end;
				end;  
			finally
				
				xdom := Nil;
			end;  
		end else
		begin
			Param := sWk_sabun32 + '│' + sSlip + '│' + '';

			cxToday_GridList.DataController.SetRecordCount(0);
	
			if not RequestBase(GetSel05('GETORDERTODAY', 'worker.get_order_today_list', '100', Param), XmlData, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('기사 당일 오더내역 로드 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				Exit;
			end;

			xdom := ComsDomDocument.Create;
			try
				if not xdom.loadXML(XmlData) then Exit;

				ls_MSG_Err := GetXmlErrorCode(XmlData);
				ls_ClientKey := GetXmlClientKey(XmlData);
				ls_ClientKey := Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5);
				if ('0000' = ls_MSG_Err) then
				begin
					cxToday_GridList.DataController.SetRecordCount(0);
					cxToday_GridList.DataController.BeginUpdate;

					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					ls_Rcrd := TStringList.Create;
					try
						for i := 0 to lbTitle.Items.Count - 1 do
							iTitle[i] := cxToday_GridList.GetColumnByFieldName(lbTitle.Items.Strings[i]).Index;
				
						for I := 0 to lst_Result.length - 1 do
						begin
							if lst_Result.item[i].attributes.getNamedItem('Value').Text = '' then
								Continue;
							GetTextSeperationEx('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
							iRow := cxToday_GridList.DataController.AppendRecord;
							cxToday_GridList.DataController.Values[iRow, iTitle[0]] := I+1;
							cxToday_GridList.DataController.Values[iRow, iTitle[1]] := ls_Rcrd[0];
							cxToday_GridList.DataController.Values[iRow, iTitle[2]] := ls_Rcrd[1];
							cxToday_GridList.DataController.Values[iRow, iTitle[3]] := ls_Rcrd[2];
							cxToday_GridList.DataController.Values[iRow, iTitle[4]] := ls_Rcrd[3];
							cxToday_GridList.DataController.Values[iRow, iTitle[5]] := copy(ls_Rcrd[4],1,10) + ' ' + copy(ls_Rcrd[4],11, 8);
							cxToday_GridList.DataController.Values[iRow, iTitle[6]] := ls_Rcrd[5];
						end;
					finally
						ls_Rcrd.Free;
					end;
				end;
			finally
				cxToday_GridList.DataController.EndUpdate;
				Frm_Flash.Hide;
				xdom := Nil;
			end;
		end;
	except

	End;
end;

procedure TFrm_JON32.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON32.FormClose(Sender: TObject; var Action: TCloseAction);
var
  EnvFile: TIniFile;
begin
  EnvFile := TIniFile.Create(ENVPATHFILE);
  try
    EnvFile.WriteInteger('WinPos', 'Jon32Left',   Self.Left);
    EnvFile.WriteInteger('WinPos', 'Jon32Top' ,   Self.Top);
  finally
    EnvFile.Free;
  end;

  Action := caFree;
end;

procedure TFrm_JON32.FormCreate(Sender: TObject);
var
  Save: LongInt;
  EnvFile: TIniFile;
  i : Integer;
begin
  try
    // 날짜형식이 'yy/mm/dd'일경우 오류 발생 가능성으로 인해 자체 Display 포맷 변경
    for i := 0 to ComponentCount - 1 do
    begin
      if Components[i] is TcxDateEdit then
      begin
        (Components[i] as TcxDateEdit).Properties.DisplayFormat := 'yyyy/mm/dd';
        (Components[i] as TcxDateEdit).Properties.EditFormat    := 'yyyy/mm/dd';
      end;
    end;
  except
  end;

  if GB_DARKMODE then
    Memo_WorkerInfo.Style.LookAndFeel.SkinName := 'MetropolisDark';

  if BorderStyle = bsNone then Exit;

  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);

  //====================================================
  // 폼 타이틀 제거..
  Save := GetWindowLong(Handle,  GWL_STYLE);
  if (Save and ws_Caption) = ws_Caption then
  begin
    case BorderStyle of
      bsSizeable:
        SetWindowLong(Handle, GWL_STYLE, Save and (not (WS_CAPTION)) or WS_BORDER);
    end;
    Height := Height - getSystemMetrics(SM_CYCAPTION);
    Self.Refresh;
  end;

  EnvFile := TIniFile.Create(ENVPATHFILE);
  try
    Self.Left  := EnvFile.ReadInteger('WinPos', 'Jon32Left', 0);
    Self.Top   := EnvFile.ReadInteger('WinPos', 'Jon32Top', 0);

    igJ32Top  := Self.Top;
    igJ32Left := Self.Left;

    if Self.Left < 0 then Self.Left := 0;
    if Self.Top < 0 then Self.Top := 0;
  finally
    EnvFile.Free;
  end;
end;

procedure TFrm_JON32.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON32.FormDestroy(Sender: TObject);
begin
  Frm_JON32 := Nil;
end;

procedure TFrm_JON32.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON32, GS_FONTNAME);
  fSetSkin(Frm_JON32);

//  if Not GB_DARKMODE then
//  begin
//    Memo_WorkerInfo.Style.AssignedValues := [3,4,7];  // 옵션수정금지   // skin을 다크모드로 해야 폰트가 하얀색으로 나옴. 원인 모름
//    Memo_WorkerInfo.Style.TextColor := clBlack;
//    Memo_WorkerInfo.StyleFocused.TextColor := clBlack;
//    Memo_WorkerInfo.Style.LookAndFeel.SkinName := sdxDefaultSkinName;
//  end;

	if igJ32Top < 0 then igJ32Top := 0;
	Self.Top := igJ32Top;
	if igJ32Left < 0 then igJ32Left := 0;
	Self.Left := igJ32Left;

  pShow;
end;

procedure TFrm_JON32.pShow;
begin
  cxbtn_baecha_limit.Visible := (TCK_USER_PER.WOR_ShareBaechaSet = '1');       // 304.공유콜배차제한
  btn_wkModify.Enabled := (TCK_USER_PER.WOR_MngModify = '1');

	// 기사 업무 현황 조회
	cxButton1.Click;
end;

procedure TFrm_JON32.Image1Click(Sender: TObject);
begin
  PnlWorkImg.Left := ( PnlWorkImg.Width * -1 );
  BtnLClose1.Left := PnlWorkImg.Left + (PnlWorkImg.Width);
end;

procedure TFrm_JON32.N2Click(Sender: TObject);
begin
	proc_Cell_Clear;
	proc_Cell_Clear_KD;
end;

procedure TFrm_JON32.cxbtn_wksmsClick(Sender: TObject);
var ls_Rcrd : TStringList;
begin
  SetDebugeWrite('Frm_JON32.cxbtn_wksmsClick');
	//기사 SMS 링크..
	if Proc_Flag = 1 then Frm_Main.Frm_JON03[Jon03Tag].pm_SMSClick(Sender)
  else
  begin
    try
      if Not Assigned(Frm_SMS06) then Frm_SMS06 := TFrm_SMS06.Create(Nil);
    	ls_Rcrd := TStringList.Create;
    	Try
				GetTextSeperationEx('│', Frm_JON30.proc_FindWKphone(sWk_sabun32), ls_Rcrd);
    		if ls_Rcrd[1] <> '' then Frm_SMS06.cxTextEdit1.Text := ls_Rcrd[1]
                            else Frm_SMS06.cxTextEdit1.Text := ls_Rcrd[0];
    		Frm_SMS06.cxTextEdit2.Text := ls_Rcrd[2];
    		Frm_SMS06.cxMemo1.Text := '';
    		Frm_SMS06.Show;
    	finally
    		ls_Rcrd.Free;
    	end;
    Except
    end;
  end;
end;

procedure TFrm_JON32.cxbtn_baecha_limitClick(Sender: TObject);
begin
	//배차제한 링크..
  if Not Assigned(Frm_WOR09) then Frm_WOR09 := TFrm_WOR09.Create(Nil);
  Frm_WOR09.pWOR09Dock.bUnDock := pJON32Dock.bUnDock;
  Frm_WOR09.pWOR09Dock.HdNo    := pJON32Dock.HdNo;
  Frm_WOR09.pWOR09Dock.BrNo    := pJON32Dock.BrNo;
  Frm_WOR09.pWOR09Dock.BrName  := pJON32Dock.BrName;
  Frm_WOR09.pWOR09Dock.Gubun   := pJON32Dock.Gubun;
  Frm_WOR09.pWOR09Dock.Idx     := pJON32Dock.Idx;

  frm_WOR09.proc_init;
	frm_WOR09.cxedWkSabun.Text := sWk_sabun32;
  frm_WOR09.proc_init2;
	frm_WOR09.Show;
end;

procedure TFrm_JON32.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON32.proc_AllRun;
begin
	//기사 상세 정보 표시
	//기사 상세 정보 조회프로시저
	Proc_Initialization;
	Proc_WorkerInfo;
	//기사 당일 오더내역 조회프로시저
	Proc_WorkerOrderToday;
end;

procedure TFrm_JON32.proc_Cell_Clear;
var
	i: Integer;
	ln_env: TIniFile;
	Column: TcxGridDBColumn;
begin
	try
		ln_env := TIniFile.Create(ENVPATHFILE);
		ln_env.EraseSection('ConfJON32');
		ln_env.EraseSection('ConfJON32Size');
		cxToday_GridList.DataController.BeginUpdate;
		try
			for i := 0 to Length(JON32SL) - 1 do
			begin
				Column := cxToday_GridList.GetColumnByFieldName(JON32SL[i].CName);
				Column.Index := i;
				Column.Width := JON32SL[i].CWid;
			end;

		finally
			cxToday_GridList.DataController.EndUpdate;
			FreeAndNil(ln_env);
		end;
	except
		on e: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_JON32.proc_Cell_Clear_KD;
var
	i: Integer;
	ln_env: TIniFile;
	Column: TcxGridDBColumn;
begin
	try
		ln_env := TIniFile.Create(ENVPATHFILE);
		ln_env.EraseSection('ConfJON32KD');
		ln_env.EraseSection('ConfJON32KDSize');
		cxGridKMDrive.DataController.BeginUpdate;
		try
			for i := 0 to Length(JON32KDSL) - 1 do
			begin
				Column := cxGridKMDrive.GetColumnByFieldName(JON32KDSL[i].CName);
				Column.Index := i;
				Column.Width := JON32KDSL[i].CWid;
			end;

		finally
			cxGridKMDrive.DataController.EndUpdate;
			FreeAndNil(ln_env);
		end;
	except
		on e: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_JON32.proc_Cell_Read;
var
	i, j, iRow, ciWid : Integer;
	ln_env: TIniFile;
	ShowList, WidthList: TStringList;
	Column: TcxGridDBColumn;
	sTmp : string;
begin
	ln_Env := TIniFile.Create(ENVPATHFILE);
	ShowList := TStringList.Create;
	WidthList := TStringList.Create;

	try
		ln_env.ReadSectionValues('ConfJON32', ShowList);
		ln_env.ReadSectionValues('ConfJON32Size', WidthList);

		if (ShowList.Count > 0) and (ShowList.Count = WidthList.Count) then
    begin
			for I := 0 to ShowList.Count - 1 do
      begin
				Column := cxToday_GridList.GetColumnByFieldName(ShowList.Values[IntToStr(I)]);

				for j := 0 to Length(JON32SL) - 1 do
				begin
					sTmp := ShowList.Values[IntToStr(i)];
					if (JON32SL[j].CName = sTmp ) then
					begin
						ciWid := JON32SL[j].CWid;
						Break;
          end;
        end;

				if Assigned(Column) then
        begin
					Column.Index := I;
					Column.Width := StrToIntDef(WidthList.Values[IntToStr(I)], ciWid);
				end;
      end;
		end else
		begin
			proc_Cell_Clear;
		end;
	finally
		FreeAndNil(ShowList);
		FreeAndNil(WidthList);
    FreeAndNil(ln_env);
  end;
end;

procedure TFrm_JON32.proc_Cell_Read_KD;
var
	i, j, iRow, ciWid : Integer;
	ln_env: TIniFile;
	ShowList, WidthList: TStringList;
	Column: TcxGridDBColumn;
	sTmp : string;
begin
	ln_Env := TIniFile.Create(ENVPATHFILE);
	ShowList := TStringList.Create;
	WidthList := TStringList.Create;

	try
		ln_env.ReadSectionValues('ConfJON32KD', ShowList);
		ln_env.ReadSectionValues('ConfJON32KDSize', WidthList);

		if (ShowList.Count > 0) and (ShowList.Count = WidthList.Count) then
    begin
			for I := 0 to ShowList.Count - 1 do
      begin
				Column := cxGridKMDrive.GetColumnByFieldName(ShowList.Values[IntToStr(I)]);

				for j := 0 to Length(JON32KDSL) - 1 do
				begin
					sTmp := ShowList.Values[IntToStr(i)];
					if (JON32KDSL[j].CName = sTmp ) then
					begin
						ciWid := JON32KDSL[j].CWid;
						Break;
          end;
        end;

				if Assigned(Column) then
        begin
					Column.Index := I;
					Column.Width := StrToIntDef(WidthList.Values[IntToStr(I)], ciWid);
				end;
      end;
		end else
		begin
			proc_Cell_Clear;
		end;
	finally
		FreeAndNil(ShowList);
		FreeAndNil(WidthList);
    FreeAndNil(ln_env);
  end;
end;

procedure TFrm_JON32.proc_Cell_Save;
var
	i: Integer;
	ln_envfile: TIniFile;
	sTmp: string;
begin
	try
		// 접속기사 그리드 컬럼이동 설정값 저장.
		ln_envfile := TIniFile.Create(ENVPATHFILE);
		try
			ln_envfile.EraseSection('ConfJON32');
			ln_envfile.EraseSection('ConfJON32Size');
			for i := 0 to cxToday_GridList.ColumnCount - 1 do
			begin
				sTmp := cxToday_GridList.Columns[i].DataBinding.FieldName;
				ln_envfile.WriteString('ConfJON32', IntToStr(i), sTmp);
				ln_envFile.WriteInteger('ConfJON32Size', IntToStr(i), cxToday_GridList.Columns[i].Width);
			end;
		finally
			FreeAndNil(ln_envfile);
		end;
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_JON32.proc_Cell_Save_KD;
var
	i: Integer;
	ln_envfile: TIniFile;
	sTmp: string;
begin
	try
		// 접속기사 그리드 컬럼이동 설정값 저장.
		ln_envfile := TIniFile.Create(ENVPATHFILE);
		try
			ln_envfile.EraseSection('ConfJON32KD');
			ln_envfile.EraseSection('ConfJON32KDSize');
			for i := 0 to cxGridKMDrive.ColumnCount - 1 do
			begin
				sTmp := cxGridKMDrive.Columns[i].DataBinding.FieldName;
				ln_envfile.WriteString('ConfJON32KD', IntToStr(i), sTmp);
				ln_envFile.WriteInteger('ConfJON32KDSize', IntToStr(i), cxGridKMDrive.Columns[i].Width);
			end;
		finally
			FreeAndNil(ln_envfile);
		end;
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_JON32.cxButton1Click(Sender: TObject);
var iCol, i, Row1, Row2 : integer;
  tmpDate : TDateTime;
begin
	if de_stDate.Date > de_edDate.Date then
	begin
		GMessagebox('시작일자가 더 큽니다.' + #13#10 + '조회일자를 다시 선택하십시오.', CDMSE);
		de_stDate.Date := StrToDate(Date8to10(StartDateTime('yyyymmdd')))-7;
		de_edDate.Date := de_stDate.Date + 7;
		Exit;
	end;
	{------------------------- 그리드 셋팅 시작 -------------------------}
  cxOrder_Stat.ClearItems;
  cxOrder_Stat.DataController.SetRecordCount(0);
  cxOrder_Stat.BeginUpdate;
  try
    cxOrder_Stat.CreateColumn.Caption := '일자';
    cxOrder_Stat.Columns[0].DataBinding.FieldName := '일자';
    cxOrder_Stat.Columns[0].DataBinding.ValueType := 'String';
    cxOrder_Stat.Columns[0].HeaderAlignmentHorz := taCenter;
    cxOrder_Stat.Columns[0].HeaderAlignmentVert := vaCenter;
    cxOrder_Stat.Columns[0].Width := 40;
    cxOrder_Stat.Columns[0].PropertiesClassName := 'Label';
    cxOrder_Stat.Columns[0].PropertiesClass := TcxLabelProperties;
    cxOrder_Stat.Columns[0].Properties.Alignment.Horz := taCenter;
    cxOrder_Stat.Columns[0].Properties.Alignment.Vert := taVCenter;

    tmpDate := de_stDate.Date-1;
    i := 0;
    while True do
    begin
      if (de_stDate.Date + i) > (de_edDate.Date) then Break;

      tmpDate := tmpDate+1;
      cxOrder_Stat.CreateColumn.Caption := RightStr(DateToStr(tmpDate), 5);
      cxOrder_Stat.Columns[i+1].DataBinding.FieldName := StringReplace(DateToStr(de_stDate.date+i),'-','',[rfReplaceAll]);
      cxOrder_Stat.Columns[i+1].DataBinding.ValueType := 'Integer';
      cxOrder_Stat.Columns[i+1].HeaderAlignmentHorz := taCenter;
      cxOrder_Stat.Columns[i+1].HeaderAlignmentVert := vaCenter;
      cxOrder_Stat.Columns[i+1].Width := 50;
      cxOrder_Stat.Columns[i+1].PropertiesClassName := 'CurrencyEdit';
  		cxOrder_Stat.Columns[i+1].PropertiesClass := TcxCurrencyEditProperties;
	  	(cxOrder_Stat.Columns[i+1].Properties as TcxCurrencyEditProperties).DisplayFormat := ',0;-,0';
  		cxOrder_Stat.Columns[i+1].Properties.Alignment.Horz := taRightJustify;
      cxOrder_Stat.Columns[i+1].Properties.Alignment.Vert := taVCenter;
      i := i + 1;
    end;

		cxOrder_Stat.CreateColumn.Caption := '합계';
		cxOrder_Stat.Columns[i+1].DataBinding.FieldName := '합계';
		cxOrder_Stat.Columns[i+1].DataBinding.ValueType := 'Integer';
		cxOrder_Stat.Columns[i+1].HeaderAlignmentHorz := taCenter;
		cxOrder_Stat.Columns[i+1].HeaderAlignmentVert := vaCenter;
		cxOrder_Stat.Columns[i+1].Width := 60;
		cxOrder_Stat.Columns[i+1].PropertiesClassName := 'CurrencyEdit';
		cxOrder_Stat.Columns[i+1].PropertiesClass := TcxCurrencyEditProperties;
		(cxOrder_Stat.Columns[i+1].Properties as TcxCurrencyEditProperties).DisplayFormat := ',0;-,0';
		cxOrder_Stat.Columns[i+1].Properties.Alignment.Horz := taRightJustify;
		cxOrder_Stat.Columns[i+1].Properties.Alignment.Vert := taVCenter;
	finally
    cxOrder_Stat.EndUpdate;
  end;

  cxOrder_Stat.BeginUpdate;
	try
		Row1 := cxOrder_Stat.DataController.AppendRecord;
		cxOrder_Stat.DataController.Values[Row1, 0] := '건수';

    Row2 := cxOrder_Stat.DataController.AppendRecord;
		cxOrder_Stat.DataController.Values[Row2, 0] := '금액';
  finally
    cxOrder_Stat.EndUpdate;
  end;
  {-------------------------- 그리드 셋팅 끝 --------------------------}
  {------------------------- 데이타 조회 시작 -------------------------}
	Proc_WorkerDaily_Statistic(Row1, Row2);
  {-------------------------- 데이타 조회 끝 --------------------------}
end;

procedure TFrm_JON32.cxButton2Click(Sender: TObject);
begin
  if Assigned(Frm_Main.Frm_JON03[Jon03Tag]) then
  begin
    if Frm_Main.JON03MNG[Jon03Tag].Use then
    begin
      if Frm_Main.Frm_JON03[Jon03Tag].Grd2.CanFocus then
        Frm_Main.Frm_JON03[Jon03Tag].Grd2.SetFocus
      else
      if Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.CanFocus then
        Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.SetFocus;
    end;
  end;
  Close;
end;

procedure TFrm_JON32.cxGridKMDriveColumnPosChanged(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	proc_Cell_Save_KD;
end;

procedure TFrm_JON32.cxGridKMDriveColumnSizeChanged(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	proc_Cell_Save_KD;
end;

procedure TFrm_JON32.cxiWkImgDownLoadError(Sender: TObject; err: string);
begin
  PnlWorkImg.Left := ( PnlWorkImg.Width * -1 );
  BtnLClose1.Left := PnlWorkImg.Left + (PnlWorkImg.Width);
end;

procedure TFrm_JON32.cxToday_GridListColumnPosChanged(Sender: TcxGridTableView;
	AColumn: TcxGridColumn);
begin
	proc_Cell_Save;
end;

procedure TFrm_JON32.cxToday_GridListColumnSizeChanged(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	proc_Cell_Save;
end;

procedure TFrm_JON32.Proc_WorkerDaily_Statistic(Row1, Row2: Integer);
var
  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
	lst_Count,lst_Result: IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
  I, ErrCode, iCol, iCol2, iSum, iSum2: Integer;
	iCnt, j : integer;
begin
	try
		iSum := 0;
		iSum2 := 0;

		Param := sWk_sabun32;
		Param := Param + '│' + StringReplace(de_stDate.Text,'-','',[rfReplaceAll]);
		Param := Param + '│' + StringReplace(de_edDate.Text,'-','',[rfReplaceAll]);

		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel05('GETORDERDAILY', 'worker.get_daily_order_statistic', '100', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('기사 업무 현황 로드 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				FreeAndNil(slList);
				Exit;
			end;

			xdom := ComsDomDocument.Create;
			try
				iCnt := 1;
				Frm_Flash.cxPBar1.Properties.Max := slList.Count;
				Frm_Flash.cxPBar1.Position := 0;
//				cxOrder_Stat.DataController.SetRecordCount(0);
				cxOrder_Stat.DataController.BeginUpdate;
				for j := 0 to slList.Count - 1 do
				begin
					Frm_Flash.cxPBar1.Position := j + 1;
					Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
					Application.ProcessMessages;
					xmlData := slList.Strings[j];

					xdom.loadXML(XmlData);
					lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
					if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
					begin
						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
						ls_Rcrd := TStringList.Create;
						try
							for I := 0 to lst_Result.length - 1 do
							begin
								GetTextSeperationEx('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
								iCol := cxOrder_Stat.GetColumnByFieldName(ls_Rcrd[0]).Index;
								if iCol <> -1 then
								begin
									if (ls_Rcrd[1] <> '0') and (ls_Rcrd[2] <> '0') then
									begin
										cxOrder_Stat.DataController.Values[Row1, iCol] := StrToIntDef(ls_Rcrd[1],0);
										cxOrder_Stat.DataController.Values[Row2, iCol] := StrToIntDef(ls_Rcrd[2],0);
										iSum := iSum + StrToIntDef(ls_Rcrd[1],0);
										iSum2 := iSum2 + StrToIntDef(ls_Rcrd[2],0);
									end;
								end;
							end;
						finally
							ls_Rcrd.Free;
						end;

						//기사 업무현황 통계작업
						iCol2 := cxOrder_Stat.GetColumnByFieldName('합계').Index;
						cxOrder_Stat.BeginUpdate;
						try
							cxOrder_Stat.DataController.Values[Row1, iCol2] := iSum;
							cxOrder_Stat.DataController.Values[Row2, iCol2] := iSum2;
						finally
							cxOrder_Stat.EndUpdate;
						end;
					end;
				end;
			finally
				cxOrder_Stat.DataController.EndUpdate;
				xdom := Nil;
			end;
		finally
			Frm_Flash.hide;
			FreeAndNil(slList);
		end;
	except
		on E: Exception do
		begin
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			Assert(False, 'Proc_WorkerDaily_Statistic Error :' + Param + '-' + E.Message);
		end;
	end;
end;

procedure TFrm_JON32.cxbtn_wk_penaltyClick(Sender: TObject);
begin
  try
    if Not Assigned(Frm_WOR14) then Frm_WOR14 := TFrm_WOR14.Create(Nil);
    Frm_WOR14.pWOR14Dock.bUnDock := pJON32Dock.bUnDock;
    Frm_WOR14.pWOR14Dock.HdNo    := pJON32Dock.HdNo;
    Frm_WOR14.pWOR14Dock.BrNo    := pJON32Dock.BrNo;
    Frm_WOR14.pWOR14Dock.BrName  := pJON32Dock.BrName;
    Frm_WOR14.pWOR14Dock.Gubun   := pJON32Dock.Gubun;
    Frm_WOR14.pWOR14Dock.Idx     := pJON32Dock.Idx;

    Frm_WOR14.sWkSabun := sWk_sabun32;
    Frm_WOR14.proc_init;
    Frm_WOR14.Show;
  Except
  end;
end;

procedure TFrm_JON32.BtnLClose1Click(Sender: TObject);
begin
	if PnlWorkImg.Left <> cxgrid_today.Left then
  begin
    PnlWorkImg.Left := cxgrid_today.Left;
  end else
  begin
    PnlWorkImg.Left := ( PnlWorkImg.Width * -1 );
  end;
  BtnLClose1.Left := PnlWorkImg.Left + (PnlWorkImg.Width);
end;

procedure TFrm_JON32.BtnWCall1Click(Sender: TObject);
Var KeyNum : String;
begin
	SetDebugeWrite('Frm_JON32.BtnWCall1Click');

	if (Proc_Flag = 1) or (Proc_Flag = 2) then
	begin
		if Trim(GT_POSS_KEYNUM) <> '' then
		begin
			KeyNum := GT_POSS_KEYNUM;
		end else begin  // 090422. CDs. 기사 상황실번호가 없을경우 선택오더의 대표번호로 전화걸기.
			KeyNum := StringReplace(sKeyNumber, '-', '', [rfReplaceAll]);
		end;

		if BtnWCall1.Description <> '' then
		begin
			SetDebugeWrite('기사정보1 기사전화걸기 ' + BtnWCall1.Description);
			Frm_Main.TelWorkerByBrSabun(BtnWCall1.Description, KeyNum);
		end else
			GMessagebox('단말기 번호가 없습니다.', CDMSE);
	end else
	begin
    if Trim(GT_POSS_KEYNUM) <> '' then
    begin
			KeyNum := StringReplace(GT_POSS_KEYNUM, '-', '', [rfReplaceAll]);
		end;

    if BtnWCall1.Description <> '' then
    begin
      SetDebugeWrite('기사정보1 기사전화걸기 ' + BtnWCall1.Description);
			Frm_Main.TelWorkerByBrSabun(BtnWCall1.Description, KeyNum);
    end else
      GMessagebox('단말기 번호가 없습니다.', CDMSE);
  end;
end;

procedure TFrm_JON32.BtnWCall2Click(Sender: TObject);
Var KeyNum : String;
begin
	SetDebugeWrite('Frm_JON32.BtnWCall2Click');

	if (Proc_Flag = 1) or (Proc_Flag = 2) then
	begin
		if Trim(GT_POSS_KEYNUM) <> '' then
		begin
			KeyNum := GT_POSS_KEYNUM;
		end else begin  // 090422. CDs. 기사 상황실번호가 없을경우 선택오더의 대표번호로 전화걸기.
			KeyNum := StringReplace(sKeyNumber, '-', '', [rfReplaceAll]);
		end;

		if BtnWCall2.Description <> '' then
		begin
			SetDebugeWrite('기사정보1 기사전화걸기 ' + BtnWCall2.Description);
			Frm_Main.TelWorkerByBrSabun(BtnWCall2.Description, KeyNum);
		end else
			GMessagebox('단말기 번호가 없습니다.', CDMSE);
	end else
	begin
    if Trim(GT_POSS_KEYNUM) <> '' then
    begin
      KeyNum := StringReplace(GT_POSS_KEYNUM, '-', '', [rfReplaceAll]);
    end;

    if BtnWCall2.Description <> '' then
    begin
      SetDebugeWrite('기사정보1 기사전화걸기 ' + BtnWCall2.Description);
			Frm_Main.TelWorkerByBrSabun(BtnWCall2.Description, KeyNum);
    end else
      GMessagebox('단말기 번호가 없습니다.', CDMSE);
  end;
end;

procedure TFrm_JON32.btn_KDCallClick(Sender: TObject);
var KeyNum : String;
begin
	SetDebugeWrite('Frm_JON32.btn_KDCallClick');

	if (Proc_Flag = 1) or (Proc_Flag = 2) then
	begin
		if Trim(GT_POSS_KEYNUM) <> '' then
		begin
			KeyNum := GT_POSS_KEYNUM;
		end else begin  // 090422. CDs. 기사 상황실번호가 없을경우 선택오더의 대표번호로 전화걸기.
			KeyNum := StringReplace(sKeyNumber, '-', '', [rfReplaceAll]);
		end;

		if btn_KDCall.Description <> '' then
		begin
			SetDebugeWrite('KM기사 기사전화걸기 ' + btn_KDCall.Description);
			Frm_Main.TelWorkerByBrSabun(btn_KDCall.Description, KeyNum);
		end else
			GMessagebox('단말기 번호가 없습니다.', CDMSE);
	end else
	begin
		if Trim(GT_POSS_KEYNUM) <> '' then
		begin
			KeyNum := StringReplace(GT_POSS_KEYNUM, '-', '', [rfReplaceAll]);
		end;

		if btn_KDCall.Description <> '' then
		begin
			if KeyNum = '' then exit;
			SetDebugeWrite('KM기사정보 기사전화걸기 ' + btn_KDCall.Description);
			Frm_Main.TelWorkerByBrSabun(btn_KDCall.Description, KeyNum);
    end else
			GMessagebox('단말기 번호가 없습니다.', CDMSE);
  end;
end;

procedure TFrm_JON32.btn_wkModifyClick(Sender: TObject);
begin
  proc_wk_modify;
end;

procedure TFrm_JON32.cxbtn_baecha_cancellogClick(Sender: TObject);
begin
  try
   if Not Assigned(Frm_WOR16) then Frm_WOR16 := TFrm_WOR16.Create(Nil);
   Frm_WOR16.sWkSabun := sWk_sabun32;
   Frm_WOR16.proc_init;
   Frm_WOR16.Show;
  Except
  end;
end;

procedure TFrm_JON32.cxbtn_wk_moveClick(Sender: TObject);
begin
  try
    if Not Assigned(Frm_WOR17) then Frm_WOR17 := TFrm_WOR17.Create(Nil);
    Frm_WOR17.pWOR17Dock.bUnDock := pJON32Dock.bUnDock;
    Frm_WOR17.pWOR17Dock.HdNo    := pJON32Dock.HdNo;
    Frm_WOR17.pWOR17Dock.BrNo    := pJON32Dock.BrNo;
    Frm_WOR17.pWOR17Dock.BrName  := pJON32Dock.BrName;
		Frm_WOR17.pWOR17Dock.Gubun   := pJON32Dock.Gubun;
    Frm_WOR17.pWOR17Dock.Idx     := pJON32Dock.Idx;

    Frm_WOR17.Jon03Tag := Jon03Tag;
    Frm_WOR17.sWkSabun := sWk_sabun32;
    Frm_WOR17.proc_init;
    Frm_WOR17.sConfSlip := '';
    Frm_WOR17.chk_WKHIS_AllSearch.Checked := True;
    Frm_WOR17.chk_WKHIS_AllSearchClick(Frm_WOR17.chk_WKHIS_AllSearch);
    Frm_WOR17.Show;
  Except
  end;
end;

procedure TFrm_JON32.proc_wk_modify;
var
  i : Integer;
  HdCd, HdCd_Old : String;
begin
  if ( (GT_USERIF.LV = '60') And (GT_USERIF.BR = sWk_BrNo) ) or ((GT_USERIF.LV = '10') and (IsPassedManagementWk(sWk_BrNo))) then
  begin
    if Not Assigned(Frm_WOR01) Or (Frm_WOR01 = Nil) then Frm_WOR01 := TFrm_WOR01.Create(Nil);

    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    begin
    	try
				Frm_WOR01.cboBranch.Tag := 99;
				Frm_WOR01.FBrNoList.Clear;
				Frm_WOR01.FTakList.Clear;
				Frm_WOR01.cboBranch.Properties.Items.Clear;
				HdCd_Old := '';

				for I := 0 to scb_FamilyBrName.Count - 1 do
				begin
					 HdCd :='';
					 HdCd := frm_Main.func_search_hdNo(scb_FamilyBrCode[I]);
					 if HdCd <> HdCd_Old then
					 begin
						 Frm_WOR01.RequestDataHeadInfo(HdCd);
						 HdCd_Old := HdCd;
					 end;
           if GB_WORSOSOK_VIEW then
  					 Frm_WOR01.cboBranch.Properties.Items.Add('(' + HdCd + ',' + scb_FamilyBrCode[I] +')' + scb_FamilyBrName[I] + '/' + frm_WOR01.Gs_HdNm )
           else
	  				 Frm_WOR01.cboBranch.Properties.Items.Add('(' + scb_FamilyBrCode[I] +')' + scb_FamilyBrName[I] );
					 Frm_WOR01.FBrNoList.Add(scb_FamilyBrCode[I]);
					 Frm_WOR01.FTakList.Add(scb_FamilyTaksong[I]);
					 Frm_WOR01.FShuttel4.Add(scb_FamilyShuttle4[I]);
				end;
				Frm_WOR01.cboBranch.Tag := 0;
			except
    	end;
    end;

		Frm_WOR01.gKey50 := False;
		Frm_WOR01.gWOR19Mode := 'UPDATE';
		if GS_PRJ_AREA = 'S' then
		begin
			Frm_WOR01.proc_init;
		end;
		Frm_WOR01.gUse_Cnt := 0;
		Frm_WOR01.Show;
		Frm_WOR01.proc_wk_Search(sWk_sabun32);
	end else
  begin
    GMessagebox('다른지사에 기사입니다.' + #13#10 + '수정할수 없습니다.', CDMSE);
  end;
end;

end.



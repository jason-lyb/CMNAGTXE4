unit xe_JON17;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinMetropolisDark,
	dxSkinOffice2007Silver, dxSkinOffice2010Silver, dxSkinSharp, Vcl.Menus, MSXML2_TLB,
	cxLabel, Vcl.StdCtrls, Vcl.ExtCtrls, cxButtons, xe_gnl, cxGroupBox;

type
  Tfrm_JON17 = class(TForm)
    pnl_main: TcxGroupBox;
    btn_LeftWorker: TcxButton;
    pnlTitle: TPanel;
    cxLblActive: TLabel;
		btnClose: TcxButton;
    btn_COM01: TcxButton;
		btn_Close: TcxButton;
		lb_PeakDay1: TcxLabel;
    lb_WkSabun: TcxLabel;
    lb_WkName: TcxLabel;
    lb_WkTel: TcxLabel;
    btn_Acept: TcxButton;
		procedure FormClose(Sender: TObject; var Action: TCloseAction);
		procedure FormDestroy(Sender: TObject);
		procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
			Shift: TShiftState; X, Y: Integer);
		procedure btn_CloseClick(Sender: TObject);
		procedure btn_LeftWorkerClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
		procedure btn_AceptClick(Sender: TObject);
    procedure btn_COM01Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
	private
		{ Private declarations }
		function proc_getCompallocation(sBrNo, sWkNo, sCuseq, sKeynumber: String;  Var sMsg : String): Boolean;
	public
		Jon03Tag : integer;
		pJON17Dock : TUNDOCKMNG;
		gsOrderBrNo : string; //접수창 강제배차시 배차제한 체크를 위한 지사코드
		blChkCuSMS : Boolean;  //배차시 문자발송용  COM01 -> JON17 -> JON01N
		procedure proc_Init;
		{ Public declarations }
	end;

var
	frm_JON17: Tfrm_JON17;

implementation

{$R *.dfm}

uses Main, xe_Func, xe_Msg, xe_COM01, xe_Packet, xe_XML;

procedure Tfrm_JON17.btn_LeftWorkerClick(Sender: TObject);
begin
	if Frm_Main.advTPTPna2.Tag <> 2 then
	begin
		Frm_Main.gsOrderBrNo := gsOrderBrNo;
		Frm_Main.advTPTPna2.Tag := 2;
//		Frm_Main.AdvTPTabTabLeftClick(Frm_Main.AdvTPTab, 1, Frm_Main.advTPTPna2);
		Frm_Main.AdvTPTab.RollOut(Frm_Main.advTPTPna2);
		Frm_Main.advTPTPna2.Locked := True;  
		Frm_Main.btn_KDWKSearch.Visible := False; 
		Frm_Main.pnl_KMWkList.Visible := False; 
	end;                                
end;


procedure Tfrm_JON17.btn_AceptClick(Sender: TObject);
var sMsg, sTmp, sCuSeq, sKeyNumber : string;
begin
	if trim(lb_WkSabun.Hint) = '' then
	begin
		GMessagebox('선택된 기사가 없습니다.', CDMSI);
		exit;		
	end else
	begin
		// 접수창의 "강제배차" 연동됨.[오더 접수시 바로 배차함.]
		sCuseq := Frm_Main.Frm_JON01N[self.Tag].lcsCu_seq;
		sKeyNumber := Frm_Main.Frm_JON01N[self.Tag].locKNum;    
		if proc_getCompallocation(gsOrderBrNo, En_Coding(lb_WkSabun.Hint), sCuseq, sKeyNumber, sMsg) then
		begin
			sMsg := sMsg + #13#10 + #13#10 + '접수배차를 진행 하시겠습니까?';
			if Application.MessageBox(PChar(sMsg), '접수창배차', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;
		end else
		begin
			if pos('[error]', sMsg) > 0 then 
			begin
				exit;
			end;
		end;

		Frm_Main.Frm_JON01N[self.Tag].gWkSabun := lb_WkSabun.Hint;
    Frm_Main.Frm_JON01N[self.Tag].gsWkSubun_Up := lb_WkSabun.Hint;
		Frm_Main.Frm_JON01N[self.Tag].chkCompulWor.Hint := lb_WkSabun.Hint;
		Frm_Main.Frm_JON01N[self.Tag].lb_CompulWor.Caption  := lb_WkName.Hint;
    Frm_Main.Frm_JON01N[self.Tag].lb_CompulWor2.Caption := lb_WkName.Hint;
    Frm_Main.Frm_JON01N[self.Tag].pSetButtonClick(Frm_Main.Frm_JON01N[self.Tag].btn_FindWk);


		if Frm_Main.Frm_JON01N[self.Tag].cbbPayMethod.Text = PAY_METHOD_POST_MILE then
		begin
			Frm_Main.Frm_JON01N[self.Tag].lb_CompulWor.Left := 397;
			Frm_Main.Frm_JON01N[self.Tag].lb_CompulWor.Top  := 22;
		end else
		begin
			Frm_Main.Frm_JON01N[self.Tag].lb_CompulWor.Left := 380;//352;
			Frm_Main.Frm_JON01N[self.Tag].lb_CompulWor.Top  := 1;
		end;
		Frm_Main.Frm_JON01N[self.Tag].lb_CompulWor.Visible := True;
		Frm_Main.Frm_JON01N[self.Tag].blChkCuSMS := blChkCuSMS;
		
		if (Assigned(Frm_COM01)) then
			if (Frm_COM01.Showing) then Frm_COM01.btn_Close.Click;

		Frm_Main.advTPTPna2.Tag := 0;
		Frm_Main.BtnAdvPnl2EClick(Frm_Main.BtnAdvPnl2E);
		
		Frm_Main.JON17MNG[self.Tag].CreateYN := False;
		Frm_Main.JON17MNG[self.Tag].USE := False;
		hide;
	end;
end;

procedure Tfrm_JON17.btn_CloseClick(Sender: TObject);
begin
	Frm_Main.advTPTPna2.Tag := 0;
	Frm_Main.BtnAdvPnl2EClick(Frm_Main.BtnAdvPnl2E);
	Frm_Main.Frm_JON01N[self.Tag].chkCompulWor.Hint := '';
	Frm_Main.Frm_JON01N[self.Tag].chkCompulWor.Style.Font.Style := [];
	Frm_Main.Frm_JON01N[self.Tag].chkCompulWor.Checked := False;
  Frm_Main.Frm_JON01N[self.Tag].btn_FindWK.Tag := 0;

	Frm_Main.JON17MNG[self.Tag].CreateYN := False;
	Frm_Main.JON17MNG[self.Tag].USE := False;
	hide;
end;

procedure Tfrm_JON17.btn_COM01Click(Sender: TObject);
begin
	Try
		if Not Assigned(Frm_COM01) then Frm_COM01 := TFrm_COM01.Create(Nil);
		Frm_COM01.pCOM01Dock.bUnDock := pJON17Dock.bUnDock;
		Frm_COM01.pCOM01Dock.HdNo    := pJON17Dock.HdNo;
		Frm_COM01.pCOM01Dock.BrNo    := pJON17Dock.BrNo;
		Frm_COM01.pCOM01Dock.BrName  := pJON17Dock.BrName;
		Frm_COM01.pCOM01Dock.Gubun   := pJON17Dock.Gubun;
		Frm_COM01.pCOM01Dock.Idx     := pJON17Dock.Idx;

		Frm_COM01.Jon03Tag := Self.Jon03Tag;
		Frm_COM01.Tag := 0;
		// 2 : 강제배차, 5 : 문자배차, 0 : 접수창 배차
//		Frm_COM01.gsOrderBrNo := gsOrderBrNo;
		Frm_COM01.ed_ConfSlip.Text := '';
		Frm_COM01.ed_st_cd.Text := '';
		Frm_COM01.gsOrderBrNo := Frm_Main.Frm_JON01N[self.Tag].locBRNO;
		Frm_COM01.gsOrderCuseq := Frm_Main.Frm_JON01N[self.Tag].lcsCu_seq;
		Frm_COM01.gsOrderMainKeyNum := Frm_Main.Frm_JON01N[self.Tag].locKNum;    // 2011.07.14 add.

		Frm_COM01.Show;
		Frm_COM01.btn_WkSearch.visible := False;
		Frm_COM01.btn_KDWkSearch.visible := False;
		Frm_COM01.btn_Beacha.Enabled := False;
	except

	End;                           
end;

procedure Tfrm_JON17.FormActivate(Sender: TObject);
begin
	GS_JON01_LASTACTIVE := Self.Tag;
end;

procedure Tfrm_JON17.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure Tfrm_JON17.FormCreate(Sender: TObject);
var
	Save: LongInt; // 폼타이틀 제거용.
	i : Integer;
begin
	//====================================================
  // 폼 타이틀 제거..
  Save := GetWindowLong(Handle, gwl_Style);
	if (Save and ws_Caption) = ws_Caption then
  begin
    case BorderStyle of
      bsSingle, bsSizeable:
				SetWindowLong(Handle, gwl_Style, Save and (not (ws_Caption)) or ws_border);
    end;
    Height := Height - getSystemMetrics(sm_cyCaption);
    Refresh;
	end;
	
	proc_init;
end;

procedure Tfrm_JON17.FormDestroy(Sender: TObject);
begin
	Frm_JON17 := Nil;
end;

procedure Tfrm_JON17.FormShow(Sender: TObject);
begin
	SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);
end;

procedure Tfrm_JON17.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
	PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

function Tfrm_JON17.proc_getCompallocation(sBrNo, sWkNo, sCuseq, sKeynumber: String;
  var sMsg: String): Boolean;
var XmlData, Param, ErrMsg: string;
	ErrCode: Integer;
	I: Integer;
	xdom: MSDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd: TStringList;
begin
	SetDebugeWrite('Tfrm_JON17.proc_getCompallocation');
	Result := False;
	try
		Param := sWkNo;
		Param := Param + '│' + sBrNo;
		Param := Param + '│' + sCuseq;
		sKeynumber := CallToStr(sKeynumber);
		Param := Param + '│' + sKeynumber;
		if not RequestBase(GetSel05('GET_WK_BLOCK_V2', 'MNG_WK.GET_WK_BLOCK_V2', '1000', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('배차제한 여부 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			sMsg := '[error]' + ErrMsg;
			Exit;
    end;
		//<Result Value="L18378│1"/><Result Value="7607251068418│7"/><Result Value="L18378│5"/>
		//차단종류(1:기사차단, 2:지사차단, 3:지사간차단, 4:본사간차단,5:본사기사차단,6:기사주민차단,
		//         7:기사주민본사차단,8:기사콜센터차단,9:콜센터주민차단)
		xdom := ComsDomDocument.Create;
		try
			xdom.loadXML(XmlData);
      if not xdom.loadXML(XmlData) then
			begin
				Screen.Cursor := crDefault;
        Exit;
      end;

      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
			if (0 < GetXmlRecordCount(XmlData)) then
			begin
				ls_Rcrd := TStringList.Create;
				try
					if lst_Result.length > 0 then
						sMsg := '해당기사는 총' + IntToStr(lst_Result.length) + '건의 차단정보가 있습니다';

					for I := 0 to lst_Result.length - 1 do
					begin
						GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
						if i = 0 then sMsg := sMsg + #13#10 + #13#10 
										 else sMsg := sMsg + #13#10;
						sMsg := sMsg + '차단일: ' + Trim(ls_Rcrd[2]) + ' ';
						if  Trim(ls_Rcrd[1]) <> '99' then
							sMsg := sMsg + '종료일: ' + Trim(ls_Rcrd[3]) + ' 0시 ';				 
					
						if Trim(ls_Rcrd[1]) = '1' then sMsg := sMsg + '기사차단' 				else
						if Trim(ls_Rcrd[1]) = '2' then sMsg := sMsg + '지사차단' 				else
						if Trim(ls_Rcrd[1]) = '3' then sMsg := sMsg + '지사간차단' 			else
						if Trim(ls_Rcrd[1]) = '4' then sMsg := sMsg + '본사간차단' 			else
						if Trim(ls_Rcrd[1]) = '5' then sMsg := sMsg + '본사기사차단' 		else
						if Trim(ls_Rcrd[1]) = '6' then sMsg := sMsg + '기사차단주민' 		else
						if Trim(ls_Rcrd[1]) = '7' then sMsg := sMsg + '본사기사차단주민' else
						if Trim(ls_Rcrd[1]) = '8' then sMsg := sMsg + '기사차단콜센터'   else
						if Trim(ls_Rcrd[1]) = '9' then sMsg := sMsg + '콜센터주민차단'   else
						if Trim(ls_Rcrd[1]) = '99'then sMsg := sMsg + '고객요청차단'
																			else sMsg := sMsg + ls_Rcrd[1];
					end;
					if Trim(sMsg) <> '' then Result := True;
					//차단기사 없으면 Result := False;
				finally
					 ls_Rcrd.Free;
				end;
			end;
		finally
      xdom := Nil;
    end;
  except on E: Exception do
    Assert(False, E.Message);
	end;
end;

procedure Tfrm_JON17.proc_Init;
begin
	btn_Acept.Enabled := False;
	lb_WkSabun.Caption := '기사사번 : ';
	lb_WkName .Caption := '기사이름 : ';
	lb_WkTel  .Caption := '기사번호 : ';
	lb_WkSabun.Hint := '';
	lb_WkName .Hint := '';
	lb_WkTel  .Hint := '';
	gsOrderBrNo := '';
	blChkCuSMS := False;
end;

end.

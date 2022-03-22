unit xe_JON60;

interface

uses
	Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
	Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, System.Math, MSXML2_TLB,
	cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, cxProgressBar,
	Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, Vcl.ExtCtrls, cxTextEdit, cxMemo, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark,
  dxSkinOffice2007Silver;

type
  Tfrm_JON60 = class(TForm)
		Panel4: TPanel;
    lb_Listen: TcxLabel;
    pnlTitle: TPanel;
		cxLblActive: TLabel;
    cxPBar1: TcxProgressBar;
    BtnClose: TcxButton;
    btn_LBSResult: TcxButton;
		TT1: TTimer;
    btn_ARS: TcxButton;
    mmo_Result: TcxMemo;
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
		procedure FormShow(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
		procedure btn_LBSResultClick(Sender: TObject);
		procedure TT1Timer(Sender: TObject);
		procedure btn_ARSClick(Sender: TObject);
	private
    { Private declarations }
  public
		{ Public declarations }
		gsBrNo, gsTel, gsResult : string;

		procedure proc_Init;
		procedure proc_progress(AGubun:integer);
	end;

var
  frm_JON60: Tfrm_JON60;

implementation

{$R *.dfm}

uses xe_JON60LBSThread, xe_Msg, xe_Func, xe_Lib, xe_gnl, Main, xe_Flash, xe_xml, xe_XmlProtocal,
		 xe_packet, xe_Dm, CidSi415Lib 
		 ;
{uses xe_Msg, xe_Func, xe_Lib, xe_packet, xe_Dm,
	xe_Query, xe_charge, xe_JON012, Main, uLkJSON, FastStrings, FastStringFuncs,
	xe_JON30, xe_gnl2, xe_COM40, xe_JON018, xe_JON34, xe_CUT012,
	xe_JON015, xe_JON31, xe_JON016, xe_CUT011, xe_WOR11, xe_JON019,
  xe_JON011, xe_JON01Size, xe_JON01SPThread, xe_JON56, xe_JON020,
	xe_AllShot, xe_JON01WNThread, xe_JON58, xe_JON30S, xe_JON00, xe_SETA1,
	xe_JON01Share, xe_WiseCheckBox, xe_JON60;   }

procedure Tfrm_JON60.BtnCloseClick(Sender: TObject);
begin
{	if gsResult <> '00' then     //LBS ARS�� ������ �ƴϸ� �ٽ� ��û�� �� �ְ� ��.
	begin
		if Frm_Main.JON01MNG[Self.Tag].FrmGubun = 2 then
		begin
			Frm_Main.Frm_JON01B[Self.Tag].btn_LBS.enabled := True;
		end else
		begin
			Frm_Main.Frm_JON01[Self.Tag].btn_LBS.enabled := True;
		end;	
	end;    }
	close;
end;

procedure Tfrm_JON60.btn_ARSClick(Sender: TObject);
var sTmp, sStr : string;
  iCnt : Integer;
  bSendOk : Boolean;
begin
	Try
		btn_ARS.Visible := False;
		if (GT_OCX = 'SI415') then
		begin
			if fSi415IPCCSendData(fSI_MakeHeader_Only('8110', '0', '')) then
			begin
				btn_ARS.Visible := False;
				lb_Listen.style.color := clYellow;
				mmo_Result.lines.clear;
				sTmp := '1. �� ARS û�����Դϴ�';
				mmo_Result.lines.Add(sTmp);
				lb_Listen.caption := sTmp;
				Frm_JON60.proc_progress(0);
			end;
		end else
		if (GT_OCX = 'SSIT') then
		begin
			// ������ ����
			if Not frm_main.bSSIO_CTI.Socket.Connected then
			begin
				iCnt := 0;
				while Not frm_main.bSSIOCTIConnected do
				begin
					frm_main.tmr_SSIO_check.Tag := 0;
					frm_main.tmr_SSIO_check.Interval := 10;
					frm_main.tmr_SSIO_check.Enabled := True;
					Application.ProcessMessages;
					Sleep(10);
					Inc(iCnt);
					if iCnt > 50 then
					begin
						 SetDebugeWrite('bSSIO_CTI Socket Active Error ');
						 Break;
					end;
				end;
			end;

			if frm_main.bSSIO_CTI.Socket.Connected then
			begin
				frm_main.gbCTI_Calling_Status := True;
				frm_main.gtCTI_Calling_Time   := Now;   // :: [����(�ð�) ����]

				// 2501. ��ȭ�ɱ� ��û ��Ŷ
				sStr := '#';
				sStr := sStr + '8110';                    // ��Ŷ ���� ��
				sStr := sStr + Rpad('5001'  ,   4, ' ');  // ����� ���� �ڵ� ( 5001 )
				sStr := sStr + Rpad(''      ,  20, ' ');  // ����� ��ü ��Ŷ ���� ��ȣ
				sStr := sStr + Rpad('00'    ,   2, ' ');  // �����
				sStr := sStr + Rpad(''      ,  15, ' ');  // ��ȭ�ɹ�ȣ    
				sStr := sStr + Rpad(''      ,  15, ' ');  // �߽Ź�ȣ
				sStr := sStr + Rpad(''      ,  15, ' ');  // ��ǥ��ȣ
				sStr := sStr + '$';

				frm_main.bSSIO_CTI.Socket.SendText(sStr);
				bSendOk := True;
				SetDebugeWrite('bSSIO_CTI Send: '+ sStr);

				btn_ARS.Visible := False;
				lb_Listen.style.color := clYellow;
				mmo_Result.lines.clear;
				sTmp := '1. �� ARS û�����Դϴ�';
				mmo_Result.lines.Add(sTmp);
				lb_Listen.caption := sTmp;
				Frm_JON60.proc_progress(0);
			end;
		end;
	except
		btn_ARS.Visible := True;	
  End;
end;

procedure Tfrm_JON60.btn_LBSResultClick(Sender: TObject);
var
  ls_TxLoad: string;
	JON60LBSWNTh : TJON60LBSThread;
	gsRanDom : AnsiString;
	sTmp : string;
begin
//	TT1.Enabled := True;
	Try
		sTmp := '3. ����ġ Ȯ���� ���Ͽ� ������Դϴ�.';
		mmo_Result.Lines.Insert(0,sTmp);
		
		lb_Listen.caption := sTmp;

		GS_LBSSearchResult := '';

		ls_TxLoad := GTx_UnitXmlLoad('JON03100.XML');
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString',    GT_USERIF.ID, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO,  [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'RequestLbs', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'strBrNo',         gsBrNo      , [rfReplaceAll]); // �����ڵ�(��������)
		ls_TxLoad := StringReplace(ls_TxLoad, 'strCid',          gsTel       , [rfReplaceAll]); // ������ó
	
		try
			gsRanDom := 'abcd' + IntToStr(RandomRange(10000, 20000));
//			sHttp := 'http://192.168.1.172/lbs_v1/find/' + sArea + '/' + sBrNo + '/' + sTel;

			try
				JON60LBSWNTh := TJON60LBSThread.Create(Self.Tag, 1, ls_TxLoad, gsRanDom);
				JON60LBSWNTh.FreeOnTerminate := False;
			except

			end;
		except on E: Exception do
			begin
				Log('proc_Wisenut_GetSuggest Error : ' + e.Message, LOGDATAPATHFILE);
			end;
		end;
	except

	End; 

end;

procedure Tfrm_JON60.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Action := caFree;
end;

procedure Tfrm_JON60.FormCreate(Sender: TObject);
var
	Save: LongInt; // ��Ÿ��Ʋ ���ſ�.
begin
	//====================================================
	// �� Ÿ��Ʋ ����..
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
	proc_Init;
end;

procedure Tfrm_JON60.FormDestroy(Sender: TObject);
begin
	frm_JON60 := Nil;
end;

procedure Tfrm_JON60.FormShow(Sender: TObject);
var sTmp : string;
begin
  fSetFont(Frm_JON60, GS_FONTNAME);
  fSetSkin(Frm_JON60);

	proc_progress(0);
	sTmp := '1. �� ARS û�����Դϴ�';
//	mmo_Result.lines.Add(sTmp);
	lb_Listen.caption := sTmp;
end;

procedure Tfrm_JON60.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_JON60.proc_Init;
begin
	gsBrNo := '';
	gsTel  := '';
	gsResult := '';
	btn_ARS.Visible := False;
	lb_Listen.style.color := clYellow;
	lb_Listen.caption :='';
	mmo_Result.lines.Clear;
end;

procedure Tfrm_JON60.proc_progress(AGubun: integer);
begin
	if AGubun = 0 then
	begin
		cxPBar1.Properties.Max := -100;
		cxPBar1.Properties.Min := -100;
		cxPBar1.Properties.Marquee := True;
		cxPBar1.Properties.ShowTextStyle := cxtsText;
	end else
	if AGubun = 1 then
	begin
		cxPBar1.Properties.Marquee := False;
		cxPBar1.Properties.ShowTextStyle := cxtsText;
		cxPBar1.Properties.Min := 0;
		cxPBar1.Position := 0;
		Application.ProcessMessages;
	end;

end;

procedure Tfrm_JON60.TT1Timer(Sender: TObject);
var
	ls_rxxml: WideString;
	xdom: msDomDocument;
	lst_Result: IXMLDomNodeList;
	ls_Msg_Err : string;
	sType, sA1, sA2, sA3, sA4, sPoi, sLat, sLon, sTmp, sTmp2, sLBSType : string;
begin
	SetDebugeWrite('Frm_JON01.TT1Timer');
	try
	 TT1.Enabled := False;
{	 GS_LBSSearchResult := '<?xml version="1.0" encoding="EUC-KR"?><cdms><header><UserID Value="sntest"/><ClientVer Value=""/><ClientKey Value=""/></header>'
											 + '<Service ID="JON03100" Name="RequestLbs" VersionNum="1"> <Error Code="0000" Message="Success"/>'
											 + '<Res A1="����" A2="���ı�" A3="������" A4="" Lat="37.495326" Lon="127.123644" Poi="����������1���ⱸ" Type="W"/>'
											 + '</Service></cdms>';  }
//'<?xml version="1.0" encoding="EUC-KR"?><cdms><header><UserID Value="sntest"/><ClientVer Value="5.06"/><ClientKey Value="RequestLbs"/></header>'
//'<Service ID="JON03100" Name="RequestLbs" VersionNum="1"><Error Code="0000" Message="Success"/><Res A1="����" A2="���ı�" A3="������" A4="" Lat="37.495571" 
//Lon="127.123135" Poi="����������1���ⱸ" Type="P"/></Service></cdms>'
											 
		ls_rxxml := GS_LBSSearchResult;
		Application.ProcessMessages;

		xdom := ComsDomDocument.Create;
		Try
			if not xdom.loadXML(ls_rxxml) then
			begin
				Screen.Cursor := crDefault;
				ShowMessage('���� Error�Դϴ�. �ٽ� ��ȸ�Ͽ� �ֽʽÿ�.');
				exit;
			end;
			ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
			if ('0000' = ls_MSG_Err) then
			begin
				lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Res');

				try
					sType := lst_Result.item[0].attributes.getNamedItem('Type').Text;
					sA1 := lst_Result.item[0].attributes.getNamedItem('A1').Text;
					sA2 := lst_Result.item[0].attributes.getNamedItem('A2').Text;
					sA3 := lst_Result.item[0].attributes.getNamedItem('A3').Text;
					sA4 := lst_Result.item[0].attributes.getNamedItem('A4').Text;
					sPoi := lst_Result.item[0].attributes.getNamedItem('Poi').Text;
					sTmp := getWGS84(FormatFloat('0.000000', StrToFloatDef(lst_Result.item[0].attributes.getNamedItem('Lat').Text, 0)));
					sLat := '0'+ sTmp;
					sTmp := getWGS84(FormatFloat('0.000000', StrToFloatDef(lst_Result.item[0].attributes.getNamedItem('Lon').Text, 0)));
					sLon := sTmp;
					sTmp2 := ''; sLBSType := '';
					if (sType = '') and (sA1 = '') then
					begin
						lb_Listen.style.color := $004444FF;
						sTmp := '4. ����ġ ��ȸ�� ���� �ʾҽ��ϴ�';
					end else
					begin
            Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := 'L' + sType;
            Frm_Main.Frm_JON01N[Self.Tag].lcsSta1 := sA1;
            Frm_Main.Frm_JON01N[Self.Tag].lcsSta2 := sA2;
            Frm_Main.Frm_JON01N[Self.Tag].lcsSta3 := sA3;
            Frm_Main.Frm_JON01N[Self.Tag].lcsSta4 := sA3 + ' ' + sA4;
            Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text := sA1 + ' ' + sA2 + ' ' + sA3;
            if sA4 = '' then sTmp := sPoi else sTmp := sA3 + ' ' + sA4;

            Frm_Main.Frm_JON01N[Self.Tag].cxtStartAreaDetail.Text := sTmp;
            if sType = 'C' then
            begin
              sTmp2 := '�ϰ�� ������ ������ġ�� '+#13#10
                     + '�ټ� ���̰� ���� ������ �˻��� ��ġ��'+#13#10
                     + '�´��� Ȯ�����ּ���';
              sLBSType := '��Ʈ��ũ���';
              Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text := '��'+sTmp;
            end else
            begin
              if sType = 'W' then	sLBSType := 'WiFi��ȣ���' else
              if sType = 'G' then	sLBSType := '������ȣ(GPS)���' else
              begin
                sLBSType := '��Ʈ��ũ���';
                sTmp2 := '�ϰ�� ������ ������ġ�� '+#13#10
                       + '�ټ� ���̰� ���� ������ �˻��� ��ġ��'+#13#10
                       + '�´��� Ȯ�����ּ���';
              end;

              Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text := sTmp;
            end;
            Frm_Main.Frm_JON01N[Self.Tag].cxtStartXval.Text := sLat;
            Frm_Main.Frm_JON01N[Self.Tag].cxtStartYval.Text := sLon;

            Frm_Main.Frm_JON01N[Self.Tag].func_StartAreaFunc(sTmp);
            Frm_Main.Frm_JON01N[Self.Tag].BtnStLock.Down := True;
            Frm_Main.Frm_JON01N[Self.Tag].BtnStLockClick(Frm_Main.Frm_JON01N[Self.Tag].BtnStLock);

            MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].cxtStartAreaDetail, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text), clRed, [fsBold]);
						sTmp := '4. ����ġ�� Ȯ�� �Ǿ����ϴ�' + #13+#10 + '   LBSŸ�� : ' + sLBSType;
					end;
				finally
					mmo_Result.Lines.Insert(0,sTmp);
					lb_Listen.caption := sTmp;
					btn_LBSResult.Enabled := False;
				end;
			end else
			begin
				lb_Listen.style.color := $004444FF;
				sTmp := '4. ����ġ ��ȸ�� �����Ͽ����ϴ�';
				mmo_Result.Lines.Insert(0,sTmp);
				lb_Listen.caption := sTmp;
				sleep(1000);
			end;
			proc_progress(1);
			if sType <> '' then 
				sTmp := '5. LBS Ȯ��â�� �����Ͻð� ������ �Ϸ� �Ͻʽÿ�.' + #13+#10 + '   [' + sLBSType + '] ' + sTmp2
			else
				sTmp := '5. LBS Ȯ��â�� �����Ͻð� ������ �Ϸ� �Ͻʽÿ�.';
			mmo_Result.Lines.Insert(0,sTmp +#13#10);
			lb_Listen.caption := sTmp;
		finally
			xdom := nil;
    end;
	except
    on e: exception do
		begin
      ShowMessage('[Proc_recieve]����ó��:' + e.Message);
    end;
	end;  
end;

end.

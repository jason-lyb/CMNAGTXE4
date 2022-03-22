unit xe_JON24;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, cxControls, cxContainer, cxEdit, Vcl.ExtCtrls, cxLabel, cxTextEdit,
  cxMemo, Vcl.StdCtrls, cxButtons, GradientLabel, dxSkinsCore, System.JSON, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark,
  dxSkinOffice2007Silver, Vcl.ComCtrls, dxCore, cxDateUtils, cxCheckBox,
  cxSpinEdit, cxTimeEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxSkinOffice2010Blue;

type
  TFrm_JON24 = class(TForm)
    GradientLabel1: TGradientLabel;
    cxbNewUser: TcxButton;
    cxbModify: TcxButton;
    cxmmMemo: TcxMemo;
    lblnKey: TcxLabel;
    lblUserId: TcxLabel;
    cxButton1: TcxButton;
    pnlTitle: TPanel;
    cxButton3: TcxButton;
    btnClose: TcxButton;
    cxLblActive: TLabel;
    lblwtm: TcxLabel;
    edt_Title: TcxTextEdit;
    dtpResvDate: TcxDateEdit;
    dtpResvTime: TcxTimeEdit;
    chk_Resv: TcxCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxbNewUserClick(Sender: TObject);
		procedure cxButton1Click(Sender: TObject);
		procedure cxbModifyClick(Sender: TObject);
		procedure cxmmMemoKeyPress(Sender: TObject; var Key: Char);
		procedure btnCloseClick(Sender: TObject);
		procedure pnlTitleMouseMove(Sender: TObject; Shift: TShiftState; X,
			Y: Integer);
		procedure FormDestroy(Sender: TObject);
		procedure FormShow(Sender: TObject);
		procedure FormActivate(Sender: TObject);
		procedure FormDeactivate(Sender: TObject);
		procedure edt_TitleKeyDown(Sender: TObject; var Key: Word;
			Shift: TShiftState);
		procedure chk_ResvPropertiesChange(Sender: TObject);
	private
		{ Private declarations }
		procedure proc_SendMsg(iType: Integer; sId, skey, swtm, sTitle, sMsg, sResv: string);
	public
		{ Public declarations }
		procedure proc_init;
	end;

var
  Frm_JON24: TFrm_JON24;

implementation

{$R *.dfm}

uses xe_xml, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Msg, Main;


procedure TFrm_JON24.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON24.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_JON24.FormCreate(Sender: TObject);
var
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
	proc_init;
end;

procedure TFrm_JON24.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON24.FormDestroy(Sender: TObject);
begin
  Frm_JON24 := Nil;
end;

procedure TFrm_JON24.FormShow(Sender: TObject);
begin
	edt_Title.SetFocus;
end;

procedure TFrm_JON24.pnlTitleMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON24.proc_init;
begin
	chk_Resv.Checked := False;
	chk_Resv.Hint := '';
	dtpResvDate.Enabled := chk_Resv.Checked;
	dtpResvTime.Enabled := chk_Resv.Checked;
	dtpResvDate.Text := FormatDateTime('YYYY-MM-DD', Now); // 예약일자
	dtpResvTime.Text := FormatDateTime('AM/PM hh:mm:ss', Now + ((1 / 24 / 60) * 10)); // 예약시간
	
	cxbModify.caption := '저장';
	edt_Title.Text := '';
	cxmmMemo.Text := '';
	lblnKey.Caption := '';
	lblUserId.Caption := GT_USERIF.ID;
	lblwtm.Caption := '';
end;

procedure TFrm_JON24.cxbNewUserClick(Sender: TObject);
begin
	proc_init;
end;

procedure TFrm_JON24.cxButton1Click(Sender: TObject);
var sTmp, sTitle, sResv: string;
begin
	if lblnKey.Caption = ''  then
	begin
		GMessagebox('공지 선택 후 삭제하여 주십시오.', CDMSE);
		exit;
	end;
	
	if (cxbModify.Caption = '수정') and (lblUserId.Caption = GT_USERIF.ID) then
	begin
    if GMessagebox('삭제하시겠습니까?', CDMSQ) = idOk then
    begin
			gBtnTag := 2;

			sTitle := Trim(edt_Title.Text);
			sTmp := StringReplace(cxmmMemo.Text, #13#10, '|', [rfReplaceAll]);
			sTmp := StringReplace(sTmp, '"', '¶', [rfReplaceAll]);
			sResv := dtpResvDate.Text + ' ' + dtpResvTime.Text;
			proc_SendMsg(2, GT_USERIF.ID, lblnKey.Caption, lblwtm.Caption, sTitle, sTmp, sResv);
    end;
	end else
	begin
		GMessagebox('등록한 사람만 삭제할 수 있습니다.', CDMSE);
	end;
end;

procedure TFrm_JON24.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_JON24.chk_ResvPropertiesChange(Sender: TObject);
begin
	dtpResvDate.Enabled := chk_Resv.Checked;
	dtpResvTime.Enabled := chk_Resv.Checked;
end;

procedure TFrm_JON24.cxbModifyClick(Sender: TObject);
var sTitle, sTmp, sResv, sNTime, sMsg: string;
begin
	if Not func_EucKr_Check(cxmmMemo, 0) then Exit;
//	dm.gbConnectedMessager := True;//디버깅을 위해서 추가
	if Trim(edt_Title.text) = '' then 
	begin
		GMessagebox('제목을 입력해 주세요', CDMSE);
		edt_Title.setFocus;
		Exit;
	end;
	if Trim(cxmmMemo.text) = '' then 
	begin
		GMessagebox('내용을 입력해 주세요', CDMSE);
		cxmmMemo.setFocus;
		Exit;
	end;

	if (FileExists('C:\sqnmsg.crc')) Or ( Not dm.gbConnectedMessager ) then 
	begin
		GMessagebox('메신저와 연결이 되지 않아서 작업을 처리할수 없습니다.' + #13#10 +
								'메신저를 다시 실행하세요', CDMSE);
		Exit;
	end;

	sTitle := Trim(edt_Title.text);

	cxbModify.Enabled := False;
																							 
	sTmp := StringReplace(cxmmMemo.Text, #13#10, '|', [rfReplaceAll]);
	sTmp := StringReplace(sTmp, '"', '¶', [rfReplaceAll]);

	sNTime := FormatDateTime('yyyy-mm-dd hh:mm:dd', now);
	if chk_Resv.checked then
	begin
		sResv := dtpResvDate.Text + ' ' + dtpResvTime.Text;

		if sResv <= sNTime then
		begin
			sMsg := '현재 이후 시간으로 예약시간을 설정해 주세요 .';
			GMessagebox(sMsg, CDMSI);
			cxbModify.Enabled := True;
			exit;
		end;
	end else sResv := '';
	
	if (cxbModify.Caption = '수정') and (lblUserId.Caption = GT_USERIF.ID) then
	begin
		proc_SendMsg(1, GT_USERIF.ID, lblnKey.Caption, lblwtm.Caption, sTitle, sTmp, sResv);
	end else
	if (cxbModify.Caption = '수정') and (lblUserId.Caption <> GT_USERIF.ID) then
	begin
		GMessagebox('등록한 사람만 수정할 수 있습니다.', CDMSE);
	end else
	if (cxbModify.Caption = '저장') then
  begin
		//592btye 입력시 에러 591byte OK
		proc_SendMsg(0, GT_USERIF.ID, FormatDateTime('yyyy-mm-dd hh:mm:ss', Now), '', sTitle, sTmp, sResv);
	end;
end;

procedure TFrm_JON24.proc_SendMsg(iType: Integer; sId, skey, swtm, sTitle, sMsg, sResv: string);
Var jsoRlt, headObj, subObj : TJSONObject;
    jso : TJSONObject;
		jsoAry : TJSONArray;
		Str, sSendId : String;
    slId : TStringList;
		i : Integer;
begin
	SetDebugeWrite('Frm_JON24.proc_SendMsg');
  // Make Json -----------------------------------------------------------------
	try
    jsoRlt := TJSONObject.Create;
    headObj := TJSONObject.Create;
    headObj.AddPair( TJSONPair.Create('seq', '%s'));
    headObj.AddPair( TJSONPair.Create('cmd', '501'));
    jsoRlt.AddPair( TJSONPair.Create('hdr', headObj));

    subObj := TJSONObject.Create;
    subObj.AddPair( TJSONPair.Create('type', 'c'));

    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sSendId := GT_SEL_BRNO.HDNO
    else
      sSendId := GT_USERIF.HD;

    slId := TStringList.Create;
    GetTextSeperationEx2(AnsiChar(1), sSendId, slId);

    jsoAry := TJSONArray.Create;
    for i := 0 to slId.Count - 1 do
    begin
      if Trim(slId.Strings[i]) <> '' then
      begin
        jso := TJSONObject.Create;
        jso.AddPair(TJsonPair.Create('rcd', slId.Strings[i]));
				jsoAry.AddElement(jso);
      end;
		end;
    subObj.AddPair( TJSONPair.Create('ls', jsoAry));

    subObj.AddPair( TJSONPair.Create('wid', GT_USERIF.ID));
    subObj.AddPair( TJSONPair.Create('wnm', GT_USERIF.NM));
    case iType of
			0 : begin
            subObj.AddPair( TJSONPair.Create('nkey', GT_USERIF.ID+FormatDateTime('yyyymmddhhmmss', now)));
            subObj.AddPair( TJSONPair.Create('wtp', 'c'));
          end;
			1 : begin
            subObj.AddPair( TJSONPair.Create('nkey', skey));
						subObj.AddPair( TJSONPair.Create('wtp', 'u'));
          end;
      2 : begin
            subObj.AddPair( TJSONPair.Create('nkey', skey));
            subObj.AddPair( TJSONPair.Create('wtp', 'd'));
					end;
    end;
		subObj.AddPair( TJSONPair.Create('wtm' , swtm));
		subObj.AddPair( TJSONPair.Create('tit', sTitle));
		subObj.AddPair( TJSONPair.Create('cont', sMsg));
		subObj.AddPair( TJSONPair.Create('resv', sResv));
		jsoRlt.AddPair( TJSONPair.Create('bdy' , subObj));

    Str := jsoRlt.ToString;
		SetDebugeWrite('Frm_JON24.proc_SendMsg : ' + Str );
  finally
    FreeAndNil(jsoRlt);
    FreeAndNil(slId);
  end;

	Dm.pSendCMessenger(True, Str);
end;

procedure TFrm_JON24.cxmmMemoKeyPress(Sender: TObject; var Key: Char);
begin
	if (key = '|') or (key = '¶') then key := #0;
end;

procedure TFrm_JON24.edt_TitleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then cxmmMemo.setfocus{ else
	if (Key = VK_TAB) then
		cxmmMemo.setfocus};
end;

end.











																																																																									1

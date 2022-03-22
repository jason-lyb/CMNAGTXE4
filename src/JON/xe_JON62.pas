unit xe_JON62;

interface

uses
	Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, xe_GNL,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel,
  cxGroupBox, cxMemo, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxCurrencyEdit,
  cxTextEdit, cxCheckBox, Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit,
  Vcl.ExtCtrls, dxSkinsCore, dxSkinscxPCPainter,
  cxSpinEdit, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_JON62 = class(TForm)
		Panel1: TPanel;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    PnlMain: TPanel;
    cxGroupBox2: TcxGroupBox;
    cxLblActive: TLabel;
    Edit13: TEdit;
    edt2: TEdit;
    edtHdnOrderDate: TEdit;
    Edit10: TEdit;
    Edit1: TEdit;
    Edit15: TEdit;
    cxLabel6: TcxLabel;
    cb_Branch: TcxComboBox;
    edtPhoneNo: TcxTextEdit;
    lbl12: TcxLabel;
    edtWkName: TcxTextEdit;
    edtWkSabun: TcxTextEdit;
    lbl4: TcxLabel;
    lbl5: TcxLabel;
    lbl1: TcxLabel;
    btn_ExpenseSave: TcxButton;
    Shape2: TShape;
    Panel5: TPanel;
    lbl11: TcxLabel;
    edtConfSlip: TcxTextEdit;
    Shape7: TShape;
    edt_AddCash: TcxSpinEdit;
    meo_Memo: TcxMemo;
    cxLabel1: TcxLabel;
		procedure btn_ExpenseSaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure edt_AddCashKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
		function func_BRNOSearch: string;

	public
		{ Public declarations }
		Jon03Tag : Integer;
		pJON62Dock : TUNDOCKMNG;
    procedure proc_init;
    // 출,도착지 초기화 처리 한다. CDS.

  end;

var
  Frm_JON62: TFrm_JON62;

implementation

{$R *.dfm}

uses xe_Lib, xe_packet, xe_Func, xe_Msg, xe_Xml, Main;

procedure TFrm_JON62.btn_ExpenseSaveClick(Sender: TObject);
var XmlData, Param, ErrMsg, sTmp, sBrNo, sConfSlip : string;
	ErrCode : Integer;
begin
	Try
		if Trim(edtConfSlip.Text) = '' then
		begin
			GMessagebox('접수번호가 없습니다.', CDMSE);
			edt_AddCash.SetFocus;
			Exit;
		end;
		
		if Trim(edtWkSabun.Text) = '' then
		begin
			GMessagebox('경비지급 대상 기사가 없습니다.', CDMSE);
			edt_AddCash.SetFocus;
			Exit;
		end;
		
		if edt_AddCash.Value < 100 then
		begin
			GMessagebox('경비지급액을 확인하세요', CDMSE);
			edt_AddCash.SetFocus;
			Exit;
		end;

    sConfSlip := Trim(edtConfSlip.Text);

		Param := Trim(Param_Filtering(edtConfSlip.text));             //접수번호 

		Param := Param + '│' + Trim(edtWkSabun.text);  //기사사번
		sTmp := StringReplace(edt_AddCash.text,',','',[rfReplaceAll]);
		Param := Param + '│' + Trim(Param_Filtering(sTmp));  //경비금액
		sBrNo := func_BRNOSearch;
		Param := Param + '│' + Trim(sBrNo);  //출금지사
		sTmp := En_Coding(Trim(meo_Memo.Text));
		sTmp := Param_Filtering(sTmp);
		Param := Param + '│' + sTmp;  //메모

		btn_ExpenseSave.Enabled := False;
		if not RequestBase(GetCallable06('SET_WK_EXPENSE', 'MNG.SET_WK_EXPENSE', param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('경비지급 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			btn_ExpenseSave.Enabled := True;
			Exit;
		end;
		GMessagebox('경비지급 완료', CDMSI);                   

		btn_ExpenseSave.Enabled := True;
		Frm_Main.Frm_JON03[Jon03Tag].proc_Acc_Search(1, sConfSlip, 'JON62-1');
		btnClose.Click;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_JON62.edt_AddCashKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then btn_ExpenseSave.Click;
end;

procedure TFrm_JON62.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

function TFrm_JON62.func_BRNOSearch: string;
var iTmp : integer;
begin
	iTmp := Pos('[', cb_Branch.Text);
	Result := Copy(cb_Branch.Text, iTmp + 1 , 4); 
end;

procedure TFrm_JON62.proc_init;
begin
	edt_AddCash.Value := 0;
end;

procedure TFrm_JON62.FormActivate(Sender: TObject);
begin
	cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON62.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TFrm_JON62.FormCreate(Sender: TObject);
var
	Save: Integer;
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

procedure TFrm_JON62.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON62.FormDestroy(Sender: TObject);
begin
  Frm_JON62 := Nil;
end;

procedure TFrm_JON62.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON62, GS_FONTNAME);
  fSetSkin(Frm_JON62);
  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);
end;

procedure TFrm_JON62.btnCloseClick(Sender: TObject);
begin
	if Assigned(Frm_Main.Frm_JON03[Jon03Tag]) then
	begin
	 if Frm_Main.Frm_JON03[Jon03Tag].Grd2.CanFocus then
		 Frm_Main.Frm_JON03[Jon03Tag].Grd2.SetFocus
	 else
	 if Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.CanFocus then
		 Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.SetFocus;
	end;

	Frm_Main.Frm_JON03[Jon03Tag].pm_Expense.Enabled := True;
  Close;
end;

end.

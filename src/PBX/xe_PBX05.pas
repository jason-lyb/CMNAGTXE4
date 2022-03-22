unit xe_PBX05;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinDevExpressStyle, Vcl.Menus, Vcl.StdCtrls, cxCheckBox, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel, Vcl.ExtCtrls,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
	Tfrm_PBX05 = class(TForm)
		Panel1: TPanel;
    PnlInBound: TPanel;
    Shape23: TShape;
		Shape31: TShape;
    Shape32: TShape;
    cxLabel20: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel31: TcxLabel;
		PnlTitle: TPanel;
    cxLblActive: TLabel;
    btnCancel: TcxButton;
    btnSave: TcxButton;
    cb_Gubun: TcxComboBox;
    cb_Name: TcxComboBox;
    cb_Use: TcxComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
		procedure btnSaveClick(Sender: TObject);
		procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cb_GubunPropertiesChange(Sender: TObject);
    procedure cb_NamePropertiesChange(Sender: TObject);
    procedure PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
	private
		{ Private declarations }
	public
		{ Public declarations }
		gIn_ID : string;
		procedure proc_Init;
		procedure proc_ResultMsg(AData, AResult : string);
	end;

var
  frm_PBX05: Tfrm_PBX05;

implementation

{$R *.dfm}

uses main, xe_Func, xe_GNL, CidSi415Lib, xe_PBX, xe_Msg;

procedure Tfrm_PBX05.btnCancelClick(Sender: TObject);
begin
	close;
end;

procedure Tfrm_PBX05.btnSaveClick(Sender: TObject);
var sParam, sStr, sTmp : string;
	iTmp : integer;
begin
	Try		
		sParam := '';
		sParam := 'IVR_SYS_MENT_TYPE';
{		case cb_Gubun.ItemIndex of
		0 : sTmp := 'MENT_HOLIDAY' 	 ;
		1 : sTmp := 'MENT_LUNCH' 		 ;
		2 : sTmp := 'MENT_NOTICE' 	 ;	
		4 : sTmp := 'MENT_OUT_WORK'  ;	
		5 : sTmp := 'MENT_SYSTEM_ERR';
		end;    }
		iTmp := frm_PBX.FSYSMente.slCodeName.IndexOf(cb_Gubun.Text);
		sTmp := frm_PBX.FSYSMente.slCodeID[iTmp];

		sParam := sParam + '│' + sTmp;
		sParam := sParam + '│' + cb_Name.Text;
		if cb_Use.ItemIndex = 0 then	sParam := sParam + '│' + 'N' else sParam := sParam + '│' + 'Y' ;
		sStr := fSI_6820_Send('6820', sParam);
	except

	End;
end;

procedure Tfrm_PBX05.cb_GubunPropertiesChange(Sender: TObject);
var i, iTmp : integer;
	sTmp : string;
begin
	if cb_Gubun.Tag = 99 then exit;
	cb_Name.Properties.Items.Clear;

	iTmp := frm_PBX.FMenteCombo.slCodeName.IndexOf(cb_Gubun.Text);
	sTmp := frm_PBX.FMenteCombo.slCodeID[iTmp];
{
	case cb_Gubun.ItemIndex of
	0 : sTmp := 'MENT_HOLIDAY' 	 ;
	1 : sTmp := 'MENT_LUNCH' 		 ;
	2 : sTmp := 'MENT_NOTICE' 	 ;	
	4 : sTmp := 'MENT_OUT_WORK'  ;	
	5 : sTmp := 'MENT_SYSTEM_ERR';
	end;
}
	for i:=0 to	frm_PBX.FMente.slCategory.Count -1 do
	begin
		if (frm_PBX.FMente.slCodeID[i] = sTmp) then
		begin
			cb_Name.Properties.Items.Add(frm_PBX.FMente.slFilename[i]);
		end;
	end;
	cb_Name.ItemIndex := 0;
end;

procedure Tfrm_PBX05.cb_NamePropertiesChange(Sender: TObject);
begin
	cb_Use.ItemIndex := 0; //변경 시 미사용으로 초기화
end;

procedure Tfrm_PBX05.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Action := caFree;
end;

procedure Tfrm_PBX05.FormCreate(Sender: TObject);
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

	proc_Init;
end;

procedure Tfrm_PBX05.FormDestroy(Sender: TObject);
begin
	Frm_PBX05 := Nil;
end;

procedure Tfrm_PBX05.PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_PBX05.proc_Init;
var i, iTmp : integer;
	sTmp : string;
begin
	cb_Gubun.Tag := 99;
	cb_Gubun.Properties.Items.Clear;
	for i:=0 to	frm_PBX.FSYSMente.slCategory.Count -1 do
	begin
		if frm_PBX.FSYSMente.slCategory[i] = 'IVR_SYS_MENT_TYPE' then
		begin
			iTmp := cb_Gubun.Properties.Items.IndexOf(frm_PBX.FSYSMente.slCodeName[i]);
			if iTmp < 0 then
				cb_Gubun.Properties.Items.Add(frm_PBX.FSYSMente.slCodeName[i]);
				
			sTmp := frm_PBX.FSYSMente.slCodeName[i];
		end;
	end;
	cb_Gubun.ItemIndex := -1;
	cb_Gubun.Tag := 98;
	cb_Name.Clear;
	cb_Use.ItemIndex   := 0;
end;

procedure Tfrm_PBX05.proc_ResultMsg(AData, AResult: string);
begin
	if (AResult = '00') or (AResult = '90') then
	begin
		GMessagebox('수정되었습니다.', CDMSI);
		frm_PBX.btn_8.click;
		btnCancel.click;
	end else
	begin
		GMessagebox(Format('수정 중 오류발생'#13#10'[에러코드]%s', [ AResult]), CDMSI);
	end;
end;

end.

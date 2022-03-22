unit xe_PBX06;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinDevExpressStyle, Vcl.Menus, Vcl.StdCtrls, cxCheckBox, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel, Vcl.ExtCtrls, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
	Tfrm_PBX06 = class(TForm)
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
    edt_Type: TcxTextEdit;
    edt_Gubun: TcxTextEdit;
    edt_Path: TcxTextEdit;
    btn_Path: TcxButton;
    cxLabel1: TcxLabel;
    OpenDialog1: TOpenDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
		procedure btnSaveClick(Sender: TObject);
		procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btn_PathClick(Sender: TObject);
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
  frm_PBX06: Tfrm_PBX06;

implementation

{$R *.dfm}

uses main, xe_Func, xe_GNL, CidSi415Lib, xe_PBX, xe_Msg;

procedure Tfrm_PBX06.btnCancelClick(Sender: TObject);
begin
	close;
end;

procedure Tfrm_PBX06.btnSaveClick(Sender: TObject);
var sParam, sStr : string;
begin
	Try		
		sParam := '';
		sParam := edt_Type.Hint;
		sParam := sParam + '│' + edt_Gubun.Hint;
		sParam := sParam + '│' + edt_Path.Text;

		sStr := fSI_6840_Send('6840', sParam);
	except
  End;
end;

procedure Tfrm_PBX06.btn_PathClick(Sender: TObject);
begin
	OpenDialog1.Filter := '멘트(*.Wav)|*.Wav';
	OpenDialog1.InitialDir := SOUNDDIRECTORY;
												
	if OpenDialog1.Execute then
	begin
		edt_Path.Text := OpenDialog1.Filename;
	end;
end;

procedure Tfrm_PBX06.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Action := caFree;
end;

procedure Tfrm_PBX06.FormCreate(Sender: TObject);
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

procedure Tfrm_PBX06.FormDestroy(Sender: TObject);
begin
	Frm_PBX06 := Nil;
end;

procedure Tfrm_PBX06.PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_PBX06.proc_Init;
begin
	edt_Type.Text := '';
	edt_Type.Hint := '';
	edt_Gubun.Text := '';
	edt_Gubun.Hint := '';
	edt_Path.Text := '';
end;

procedure Tfrm_PBX06.proc_ResultMsg(AData, AResult: string);
begin
	if (AResult = '00') or (AResult = '90') then
	begin
		GMessagebox('수정되었습니다.', CDMSI);
		frm_PBX.btn_8_1.click;
		btnCancel.click;
	end else
	begin
		GMessagebox(Format('수정 중 오류발생'#13#10'[에러코드]%s', [ AResult]), CDMSI);
	end;
end;

end.

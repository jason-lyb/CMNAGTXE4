unit xe_PBX02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinDevExpressStyle, Vcl.Menus, Vcl.StdCtrls, cxCheckBox, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel, Vcl.ExtCtrls,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
	Tfrm_PBX02 = class(TForm)
		Panel1: TPanel;
    PnlInBound: TPanel;
		PnlTitle: TPanel;
    cxLblActive: TLabel;
    btnCancel: TcxButton;
    btnSave: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
		procedure btnSaveClick(Sender: TObject);
		procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
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
  frm_PBX02: Tfrm_PBX02;

implementation

{$R *.dfm}

uses main, xe_Func, xe_GNL, CidSi415Lib, xe_PBX, xe_Msg;

procedure Tfrm_PBX02.btnCancelClick(Sender: TObject);
begin
	close;
end;

procedure Tfrm_PBX02.btnSaveClick(Sender: TObject);
var sParam : string;
begin
	Try		
		sParam := GT_Si415_INFO.ID;
		pSI_8010_Send('8010', sParam);
	except
	End;
end;

procedure Tfrm_PBX02.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Action := caFree;
end;

procedure Tfrm_PBX02.FormCreate(Sender: TObject);
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

procedure Tfrm_PBX02.FormDestroy(Sender: TObject);
begin
	Frm_PBX02 := Nil;
end;

procedure Tfrm_PBX02.PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_PBX02.proc_Init;
begin
end;

procedure Tfrm_PBX02.proc_ResultMsg(AData, AResult: string);
begin
	if (AResult = '00') or (AResult = '90') then
	begin
		GMessagebox('적용되었습니다.', CDMSI);
		btnCancel.click;
	end else
	begin
		GMessagebox(Format('적용 중 오류발생'#13#10'[에러코드]%s', [ AResult]), CDMSI);
	end;
end;

end.

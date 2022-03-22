unit xe_JON61;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  cxControls, cxContainer, cxEdit, cxLabel, cxTextEdit, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxButtonEdit, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  Tfrm_JON61 = class(TForm)
    pnlTitle: TPanel;
    cxLblActive: TLabel;
    btnClose: TcxButton;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxGrid1: TcxGrid;
    cxScenario_List: TcxGridDBTableView;
    Notice_ListColumn1: TcxGridDBColumn;
    Notice_ListColumn8: TcxGridDBColumn;
    Notice_ListColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxAIOBCALL_List: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    Notice_ListColumn3: TcxGridDBColumn;
    Notice_ListColumn4: TcxGridDBColumn;
    Notice_ListColumn5: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxScenario_ListColumn1: TcxGridDBColumn;
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
		procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxScenario_ListColumn1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
		{ Private declarations }
		function func_AIOBNowRun(ABrNo, AKeyNumber, ASlip, AScenarioCode : string):Boolean;  //배차지연콜 설정 등록
	public
		{ Public declarations }
		gBrNo, gKeyNumber, gSlip,	gScenarioCode: string;
		procedure proc_Init;
		function func_SetGrid(AScenario, ACallList : TStringList):Boolean;
	end;

var
  frm_JON61: Tfrm_JON61;

implementation

{$R *.dfm}
uses xe_Func, xe_gnl, xe_Msg, xe_packet;
 //, xe_Lib, , xe_Func, xe_Msg, xe_Xml ;

procedure Tfrm_JON61.btnCloseClick(Sender: TObject);
begin
	close;
end;

procedure Tfrm_JON61.cxScenario_ListColumn1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var iRow, iCol : Integer;
begin

	try
		iRow := cxScenario_List.DataController.FocusedRecordIndex;

		iCol := cxScenario_List.GetColumnByFieldName('시나리오코드 ').Index;
		gScenarioCode := cxScenario_List.DataController.Values[iRow, iCol];

		if func_AIOBNowRun(gBrNo, gKeyNumber, gSlip,	gScenarioCode) then
		begin
			GMessagebox('배차지연콜 즉시호출 하였습니다.', CDMSI);
			btnClose.Click;
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;      
end;

procedure Tfrm_JON61.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
	cxLblActive.Visible := True;
end;

procedure Tfrm_JON61.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Action := caFree;
end;

procedure Tfrm_JON61.FormCreate(Sender: TObject);
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

	
end;

procedure Tfrm_JON61.FormDeactivate(Sender: TObject);
begin
	cxLblActive.Visible := False;
end;

procedure Tfrm_JON61.FormDestroy(Sender: TObject);
begin
  Frm_JON61 := Nil;
end;

procedure Tfrm_JON61.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON61, GS_FONTNAME);
  fSetSkin(Frm_JON61);
end;

function Tfrm_JON61.func_AIOBNowRun(ABrNo, AKeyNumber, ASlip,
	AScenarioCode: string): Boolean;
var
	XmlData, Param, ErrMsg : string;
	ErrCode : Integer;
begin
	result := False;
	try
		Param := ABrNo + '│' + CallToStr(AKeyNumber) + '│' 
					 + ASlip + '│' + AScenarioCode;

		if not RequestBase(GetCallable06('SET_BD_SEND_CALL', 'AI_OB_MNG.SET_BD_SEND_CALL', param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('배차지연콜 즉시호출 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Exit;
		end;
		result := True; 

	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;      
end;

function Tfrm_JON61.func_SetGrid(AScenario, ACallList: TStringList): Boolean;
var i, iRow : integer;
	ls_Rcrd : TStringList;
begin
	Try
		Result := False;

		cxScenario_List.DataController.SetRecordCount(0);
		cxAIOBCALL_List.DataController.SetRecordCount(0);

		ls_Rcrd := TStringList.create;
		Try
			cxScenario_List.BeginUpdate;
			for i := 0 to AScenario.Count - 1 do
			begin
				GetTextSeperationEx2('│', AScenario[i], ls_Rcrd);
				Application.ProcessMessages;

				if ls_Rcrd[0] = '' then break;

				iRow := cxScenario_List.DataController.AppendRecord; // 1 Record 추가
				cxScenario_List.DataController.Values[iRow, 0] := IntToStr(iRow+1);
				cxScenario_List.DataController.Values[iRow, 1] := ls_Rcrd[0];            //시나리오코드 
				cxScenario_List.DataController.Values[iRow, 2] := ls_Rcrd[1];            //시나리오명 	

			end;
			cxScenario_List.EndUpdate;

			ls_Rcrd.Clear;

			cxAIOBCALL_List.BeginUpdate;
			for i := 0 to ACallList.Count - 1 do
			begin
				GetTextSeperationEx2('│', ACallList[i], ls_Rcrd);
				Application.ProcessMessages;

				if ls_Rcrd[0] = '' then Continue;
				
				iRow := cxAIOBCALL_List.DataController.AppendRecord; // 1 Record 추가
				cxAIOBCALL_List.DataController.Values[iRow, 0] := ls_Rcrd[0];            //통화시작시간 
				cxAIOBCALL_List.DataController.Values[iRow, 1] := ls_Rcrd[1];            //통화종료시간 	
				cxAIOBCALL_List.DataController.Values[iRow, 2] := ls_Rcrd[2];            //시나리오명  	
				cxAIOBCALL_List.DataController.Values[iRow, 3] := ls_Rcrd[3];            //OB실행결과 	
				cxAIOBCALL_List.DataController.Values[iRow, 4] := ls_Rcrd[4];            //차감캐시  	
			end;
			cxAIOBCALL_List.EndUpdate;

      Result := True;
		Finally
			FreeAndNil(ls_Rcrd);
    End;
		
	
	except
    on E: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure Tfrm_JON61.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_JON61.proc_Init;
var i : integer;
begin
	cxScenario_List.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to cxScenario_List.ColumnCount - 1 do
		cxScenario_List.Columns[i].DataBinding.ValueType := 'String';

	for i := 0 to cxAIOBCALL_List.ColumnCount - 1 do
		cxAIOBCALL_List.Columns[i].DataBinding.ValueType := 'String';
	cxAIOBCALL_List.Columns[4].DataBinding.ValueType := 'Currency';

	gBrNo := ''; gKeyNumber := ''; gSlip := ''; gScenarioCode := ''; 
end;

end.

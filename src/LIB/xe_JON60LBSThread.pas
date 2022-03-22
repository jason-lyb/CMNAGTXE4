unit xe_JON60LBSThread;

interface

uses
  Windows, System.Classes, System.SysUtils, System.SyncObjs, ActiveX, Vcl.Dialogs, Forms, IdHTTP;

type
	TJON60LBSThread = class(TThread)
	private
    FiTag : Integer;
    FiIdx : Integer;
		FsXML : String;
    FsRandom : String;

		_CS_LBS_AGREE: TCriticalSection; // 임계영역 설정.

		procedure proc_LBS_GetLocation;
    function LBSfunc_login : Boolean;

		{ Private declarations }
	public
		constructor Create(piTag, piIdx : integer; psXML, psRandom : String);
		destructor Destroy; override;
	protected
		procedure Execute; override;
  end;


implementation

uses xe_GNL, xe_Func, Main, xe_Dm, xe_JON60;

{ xe_JON60LBSThread }

constructor TJON60LBSThread.Create(piTag, piIdx : integer; psXML, psRandom : String);
begin
	_CS_LBS_AGREE := TCriticalSection.Create; // 임계영역 설정.

  FiTag := piTag;
  FiIdx := piIdx;
	FsXML := psXML;
	FsRandom := psRandom;
  CoInitialize(nil);
  inherited Create;
end;

procedure TJON60LBSThread.Execute;
begin
	proc_LBS_GetLocation;
	Self.Terminate;
  { Place thread code here }
end;

function TJON60LBSThread.LBSfunc_login: Boolean;
begin

end;

procedure TJON60LBSThread.proc_LBS_GetLocation;
var slRcvList: TStringList;
	ErrCode: integer;
	rv_str : string;
begin
	try
		_CS_LBS_AGREE.Acquire;

		slRcvList := TStringList.Create;
    try
			rv_str := ''; GS_LBSSearchResult := '';
			if dm.SendSockLBS(FsXML, slRcvList, ErrCode, False) then
      begin
				rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
					GS_LBSSearchResult := rv_str;
					Application.ProcessMessages;
				end;
			end;  // 20130701  LYB  네트워크 오류시 재 조회 하게끔 변수 처리
		finally
			FreeAndNil(slRcvList);
		end;
		dm.TCPClientLBS.Disconnect;
		if Frm_JON60.Showing then
			Frm_JON60.TT1.Enabled := True;
	except
		on E: Exception do
    begin
			Log('proc_LBS_GetLocation Error :'+E.Message, LOGDATAPATHFILE);
			GS_DebugError := 'proc_LBS_GetLocation Error :'+E.Message;
    end;
  end;
end;

destructor TJON60LBSThread.Destroy;
begin
	_CS_LBS_AGREE.Free;

	CoUninitialize;
  inherited;
end;

end.


unit xe_JON03PLAYThread;

interface

uses
	Windows, System.Classes, System.SysUtils, System.SyncObjs, ActiveX, Forms, MMSystem;

type
	TJON03PLAYThread = class(TThread)
	private
		_CS_PLAY_AGREE: TCriticalSection; // 임계영역 설정.

		{ Private declarations }
	public
		constructor Create;
		destructor Destroy; override;
	protected
		procedure Execute; override;
  end;


implementation

uses xe_GNL, xe_Func, Main, xe_Dm, xe_JON60;

{ xe_JON03PLAYThread }

constructor TJON03PLAYThread.Create;
begin
	_CS_PLAY_AGREE := TCriticalSection.Create; // 임계영역 설정.

	CoInitialize(nil);
  inherited Create;
end;

procedure TJON03PLAYThread.Execute;
var sFileName : string;
begin
	sFileName := gJONOrderBell.Path;//SOUNDDIRECTORY + 'Notice6.wav';
	sndPlaySound(PChar(sFileName), SND_FILENAME or SND_ASYNC or SND_NODEFAULT );
	Self.Terminate;
	{ Place thread code here }
end;



destructor TJON03PLAYThread.Destroy;
begin
	_CS_PLAY_AGREE.Free;

	CoUninitialize;
  inherited;
end;

end.


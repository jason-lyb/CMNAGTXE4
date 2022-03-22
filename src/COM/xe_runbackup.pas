unit xe_runbackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, dxGDIPlusClasses, Vcl.ExtCtrls, dxSkinsCore, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark,
  dxSkinOffice2007Silver;

type
  Tfrm_RunBackup = class(TForm)
    img_bg: TImage;
    cxButton1: TcxButton;
    btnRunBackup: TcxButton;
    procedure GradientLabel6MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure btnRunBackupClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure img_bgMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
  private
    { Private declarations }
    procedure DeleteMe;
  public
    { Public declarations }
  end;

var
  frm_RunBackup: Tfrm_RunBackup;

implementation

{$R *.dfm}

uses xe_GNL;

procedure Tfrm_RunBackup.GradientLabel6MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_RunBackup.btnRunBackupClick(Sender: TObject);
begin
  if not FileExists(ExtractFilePath(Application.ExeName) + XE_BACKUPFILE) then
  begin
    ShowMessage('���������� ���� ���� �� �� �����ϴ�.'#13#10'(���������� ���� ������Ʈ �� �ڵ� ���� �˴ϴ�.)');
    Exit;
  end;

  try
    Application.Terminate;
  finally
    DeleteMe;
  end;
end;

procedure Tfrm_RunBackup.DeleteMe;
var
  BatchFile: TextFile;
  BatchFileName: String;
  ProcessInfo: TProcessInformation;
  StartUpInfo: TStartupInfo;
begin
  // ���α׷��� ����� ���丮�� �ӽ� Batch ȭ�� ����
  BatchFileName := ExtractFilePath(Application.ExeName) + '$$336699.bat';

  AssignFile(BatchFile, BatchFileName);
  Rewrite(BatchFile);

  Writeln(BatchFile, ':TRY');
  Writeln(BatchFile, 'IF NOT EXIST "' + XE_BACKUPFILE + '"' + ' GOTO TRY');
  // �ٽ� ����
  Writeln(BatchFile, XE_BACKUPFILE);

  CloseFile(BatchFile);

  FillChar(StartUpInfo, SizeOf(StartUpInfo), $00);
  StartUpInfo.dwFlags := STARTF_USESHOWWINDOW;
  StartUpInfo.wShowWindow := SW_HIDE;

  If CreateProcess(nil, PChar(BatchFileName), nil, nil, False,
    IDLE_PRIORITY_CLASS, nil, nil, StartUpInfo, ProcessInfo) Then
  Begin
    CloseHandle(ProcessInfo.hThread);
    CloseHandle(ProcessInfo.hProcess);
  End;
end;

procedure Tfrm_RunBackup.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_RunBackup.img_bgMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

end.

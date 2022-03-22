unit xe_CallPass;

interface

uses
  Windows, Classes, SysUtils, Forms, Dialogs, Clipbrd, IniFiles, StdCtrls;

type
  tCB = record
    sMTel  : string;    // ��ǥ��ȣ
    sTel   : string;    // ����ȣ
    sSArea : string;    // �����
    sEArea : string;    // ������
    sRate  : string;    // ���
    sBigo  : string;    // ����
    sJTime : string;    // �����ð�
  end;

  tCFG = record
    sFromPrg  : string;      // ���� Prg.
    sToPrg    : string;      // ���� Prg.
    sMinute   : string;      // ���� ��.
    sBaseTime : string;      // ���� �ð�.
    sOrdState : string;      // ���н� �� ���� ���� ����.
    sCmOrdSt  : string;

    sltCallmanerMNum: TStringList;   // �ݸ��� ��ǥ��ȣ ����.
    sltEtcMainNum   : TStringList;   // Ÿ ���α׷��� ���� ��ǥ��ȣ ����.
    sltLogiMainNum  : TStringList;   // ���� ���� ��ǥ��ȣ ã�� �����ȣ ����.
    sltRowNum       : TStringList;   // ���� ��ǥ��ȣ�׸� ���ȣ
  end;

  TCallPassLogi = class
  private
    FMainHandle: THandle;
    FEdit: TEdit;
    FIniFile: TIniFile;

    FCallInfo: TCB;   // �� ������ ����
    FConfSet: TCFG;  // ȯ�漳���� ����

    // ������ ���α׷� ��Ͽ��� ĸ������ �Ѿ���� ���α׷��� �ڵ鰪�� ã�´�.
    // Ŭ�������� ������ �ٿ��ֱ� �Ѵ�.
    procedure ClipBdPaste;
    // Ŭ�������� ������ �ٿ��ֱ� �Ѵ�.
    procedure ClipBdPaste2;
    // Ŭ�������� ������ �ٿ��ֱ� �Ѵ�.
    procedure ClipBdPaste3;
    // ������ Ŭ�����忡 ���� �Ѵ�.
    procedure ClipBdCopy;
    // F12 Ű �̺�Ʈ�� ������.
    procedure SendPressF12;
    // ���� Ű �̺�Ʈ�� ������.
    procedure SendPressEnter;
    // Del Ű�� ������.(���� �����)
    procedure SendDeleteKey;
    // shift + End : ������.
    procedure SendBlockSet;
    // Home Ű�� ������.(�Ǿ����� �̵�)
    procedure SendHomeKey;
    // Ű���� �̺�Ʈ Ű�� ������.
    procedure SendKeys(VKey: Byte);
    // ���ʸ��콺 Ŭ��..
    procedure ProcMouseLeftClick(itX : Integer; itY : Integer);
    // ������ ���콺 Ŭ��..
    procedure ProcMouseRightClick(itX : Integer; itY : Integer);
    // ���� ���콺 ����Ŭ��..
    procedure ProcMouseLeftDoubleClick(itX : Integer; itY : Integer);
    //----------------------------------------------------------------------
    // Ÿ ���α׷��� ���н� ����.
    function ScrCallPassSu: Boolean;
    // Ÿ ���α׷��� ����â�� ������ �ֱ�..
    procedure ScrCPassExec(iMainX, iMainY : Integer; WinH : HWND);
    // Ÿ ���α׷��� ����â���� ���� �����ϱ�..
    procedure ScrBranchChoice(iMainX, iMainY : Integer);
    // Ÿ ���α׷��� ����â���� ��ȭ��ȣ�� ������ ��ȸ ��û�� ����� �޾Ҵ��� ���θ� üũ �Ѵ�.
    function ScrReqResult(iMainX, iMainY : Integer; WinH : HWND): Boolean;
  public
    constructor Create(AMainHandle: THandle; AEdit: TEdit; AIniFile: TIniFile);
    destructor Destroy; override;

    procedure LoadIni;
    procedure SaveIni;
    procedure SetOrderState(ASt: string);
    procedure SetCMOrderState(ASt: string);

    property CallInfo: tCB read FCallInfo write FCallInfo;
    property ConfSet: tCFG read FConfSet write FConfSet;

    function SendCallPass(AKeyNum, ATel, ASt, AEd, ARate, ABigo, AJTime: string): Boolean;
    function GetTargetKeyNum(ASourceKeyNum: string): string; 
  end;

  // ������ ���α׷� ��Ͽ��� ĸ������ �Ѿ���� ���α׷��� �ڵ鰪�� ã�´�.
  // Ŭ�������� ������ �ٿ��ֱ� �Ѵ�.
  procedure ClipBdPaste;
  // Ŭ�������� ������ �ٿ��ֱ� �Ѵ�.
  procedure ClipBdPaste2;
  // Ŭ�������� ������ �ٿ��ֱ� �Ѵ�.
  procedure ClipBdPaste3;
  // ������ Ŭ�����忡 ���� �Ѵ�.
  procedure ClipBdCopy;
  // F12 Ű �̺�Ʈ�� ������.
  procedure SendPressF12;
  // ���� Ű �̺�Ʈ�� ������.
  procedure SendPressEnter;
  // Del Ű�� ������.(���� �����)
  procedure SendDeleteKey;
  // shift + End : ������.
  procedure SendBlockSet;
  // Home Ű�� ������.(�Ǿ����� �̵�)
  procedure SendHomeKey;
  // Ű���� �̺�Ʈ Ű�� ������.
  procedure SendKeys(VKey: Byte);
  // ���ʸ��콺 Ŭ��..
  procedure ProcMouseLeftClick(itX : Integer; itY : Integer);
  // ������ ���콺 Ŭ��..
  procedure ProcMouseRightClick(itX : Integer; itY : Integer);
  // ���� ���콺 ����Ŭ��..
  procedure ProcMouseLeftDoubleClick(itX : Integer; itY : Integer);
  //----------------------------------------------------------------------

  function FindAllWindowHandle(sClsName,sCaption : string; bGB : boolean = False): integer;
  function FindAllWindowHandleExA(sClsName,sCaption : string; WHnext : HWND): integer;

implementation

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//  START : User Function/Procedure Area.
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// Ÿ ���α׷��� ���н� ����.
function TCallPassLogi.ScrCallPassSu: Boolean;
var
  WinH, WinH2 : HWND;
  iCnt: Integer;
  fRect : TRect;
  iMainX, iMainY : Integer;
begin
  Result := False;

  // ����â �ڵ鰪 ���ϱ�..
  //WinH := FindAllWindowHandle('quick2.0','Copyright 2003-2009', True);
  WinH := FindAllWindowHandle('quick2.0','��������Ʈ ����ƮD ��', True);

  if WinH > 0 then begin

    // ������ư ��ġ ã��
    getWindowRect(WinH, fRect);
    //iMainX := fRect.Left + 979;
    //iMainY := fRect.Top  + 157;
    iMainX := fRect.Left + 1050;
    iMainY := fRect.Top  + 116;
    ProcMouseLeftClick(iMainX, iMainY);
    Sleep(500);

    iCnt  := 0;
    WinH  := 0;
    WinH2 := 0;
    While ((iCnt < 100) and (WinH2 = 0)) do begin
      WinH := FindAllWindowHandleExA('#32770','', WinH);
      if WinH > 0 then begin
        Sleep(100);
        WinH2 := FindWindowExA(WinH,0,'Button','����â');
        if WinH2 < 1 then begin
          WinH2 := 0;
        end;
      end;
      iCnt := iCnt + 1;
    end;

    getWindowRect(WinH, fRect);
    iMainX := fRect.Left;
    iMainY := fRect.Top;


    //Showmessage(' iX: ' + Inttostr(iMainX) + ', iY: ' + IntToStr(iMainY));


    // Ÿ ���α׷� ����â���� ���� ����.
    ScrBranchChoice(iMainX, iMainY);

    // Ÿ ���α׷��� ����â�� ������ �ֱ�.
    ScrCPassExec(iMainX, iMainY, WinH);

    Result := True;
  end else begin
    ShowMessage('���� ���α׷� "�α���" �Ǿ����� �ʽ��ϴ�.');
  end;

end;

// Ÿ ���α׷��� ����â�� ������ �ֱ�.. / ��� �ϱ�..
procedure TCallPassLogi.ScrCPassExec(iMainX, iMainY : Integer; WinH : HWND);
var
  iBaseX, iBaseY: Integer;
begin

  iBaseX := iMainX;
  iBaseY := iMainY;

  //clipboard.Open;
  //clipboard.settextbuf(Pchar(FCallInfo.sTel));  // �ڵ�����ȣ
  //clipboard.Close;
  Clipboard.AsText := FCallInfo.sTel;

  // ����ȭ��ȣ �˾��޴� ��ġ�� ����.
  //iMainX := iMainX + 88;
  //iMainY := iMainY + 118;
  iMainX := iMainX + 99;
  iMainY := iMainY + 128;
  ProcMouseLeftClick(iMainX, iMainY);
  Sleep(100);
  ClipBdPaste2;
  Sleep(100);
  SendPressEnter;
  Sleep(300);
  //clipboard.Open;
  clipboard.Clear;
  //clipboard.Close;
  //======================================
  if ScrReqResult(iBaseX, iBaseY, WinH) = False then
  begin
    ShowMessage('���� ���α׷� ����â ���¿��� �߻��Ͽ����ϴ�.' + #13#10
              + '���� ����â�� �ݰ� �ݸ��ʿ��� �ٽ� ���н� ���ֽñ� �ٶ��ϴ�.');
    Exit;
  end;
  Sleep(100);
  //======================================

  //clipboard.Open;
  //clipboard.settextbuf(Pchar(FCallInfo.sSArea));  // �����
  //clipboard.Close;
  Clipboard.AsText := FCallInfo.sSArea;
  Application.ProcessMessages();
  //iMainY := iMainY + 113;
  iMainY := iMainY + 126;
  ProcMouseLeftDoubleClick(iMainX, iMainY);
  Sleep(100);
  SendDeleteKey;
  Sleep(100);
  ClipBdPaste2;
  Sleep(300);
  //======================================

  //clipboard.Open;
  //clipboard.settextbuf(Pchar(FCallInfo.sEArea));  // ������
  //clipboard.Close;
  Clipboard.AsText := FCallInfo.sEArea;
  Application.ProcessMessages();
  iMainX := iMainX;
  //iMainY := iMainY + 100;
  iMainY := iMainY + 109;
  ProcMouseLeftDoubleClick(iMainX, iMainY);
  Sleep(100);
  SendDeleteKey;
  Sleep(100);
  ClipBdPaste2;
  Sleep(300);
  //======================================

  //clipboard.Open;
  //clipboard.settextbuf(Pchar(FCallInfo.sRate));  // ���
  //clipboard.Close;
  Clipboard.AsText := FCallInfo.sRate;
  Application.ProcessMessages();
  //iMainX := iBaseX + 91;
  //iMainY := iMainY + 168;
  iMainX := iBaseX + 77;
  iMainY := iMainY + 85;
  ProcMouseLeftDoubleClick(iMainX, iMainY);
  Sleep(100);
  SendDeleteKey;
  Sleep(100);
  ClipBdPaste2;
  Sleep(100);
  //======================================

  //clipboard.Open;
  //clipboard.settextbuf(Pchar(FCallInfo.sBigo));  // ����
  //clipboard.Close;
  Clipboard.AsText := FCallInfo.sBigo;
  Application.ProcessMessages();
  //iMainX := iBaseX + 75;
  //iMainY := iMainY + 50;
  iMainX := iBaseX + 77;
  iMainY := iMainY + 117;
  ProcMouseLeftDoubleClick(iMainX, iMainY);
  Sleep(100);
  SendDeleteKey;
  Sleep(100);
  ClipBdPaste2;
  Sleep(100);
  //======================================

  if FConfSet.sOrdState = '���' then
  begin
    // ���(�����ϱ�)
    //iMainX := iBaseX + 71;
    //iMainY := iMainY + 110;
    iMainX := iBaseX + 71;
    iMainY := iMainY + 105;
    ProcMouseLeftClick(iMainX, iMainY);

  end else if FConfSet.sOrdState = '���' then
  begin
    // ���(�����·� �����ϱ�)
    //iMainX := iBaseX + 194;
    //iMainY := iMainY + 110;
    iMainX := iBaseX + 155;
    iMainY := iMainY + 105;
    ProcMouseLeftClick(iMainX, iMainY);

  end else if FConfSet.sOrdState = '����' then
  begin
    // ���(�����·� �����ϱ�)
    //iMainX := iBaseX + 174;
    //iMainY := iBaseY + 608;
    iMainX := iBaseX + 229;
    iMainY := iMainY + 105;
    ProcMouseLeftClick(iMainX, iMainY);

  end;

end;

// Ÿ ���α׷��� ����â���� ���� �����ϱ�..
procedure TCallPassLogi.ScrBranchChoice(iMainX, iMainY : Integer);
var
  iDx: Integer;
  iBaseX, iBaseY, iMRow: Integer;
  sMN : string;
begin
  iBaseX := iMainX;
  iBaseY := iMainY;

  Sleep(500); // ����â ���� ��� �ð�..

  // ���� ��ǥ��ȣ ã�� �����ȣ ã��.
  iDx := FConfSet.sltCallmanerMNum.IndexOf(FCallInfo.sMTel);
  if iDx > -1 then
  begin
    sMN   := FConfSet.sltLogiMainNum[iDx];
    iMRow := StrToIntDef(FConfSet.sltRowNum[iDx], 0);  // �߰�: ���缱�� ��
    if iMRow < 1 then iMRow := 1;

    //clipboard.Open;
    //clipboard.settextbuf(Pchar(sMN));  // ���� ��ǥ��ȣ ã�� ���� ��ȣ.
    //clipboard.Close;
    Clipboard.AsText := sMN;
    Application.ProcessMessages();

    //iMainX := iBaseX + 354;                 // (��) ��ǥ��ȣ ��ġ ����.
    //iMainY := iBaseY + 89;
    iMainX := iBaseX + 349;                   // (��) ��ǥ��ȣ ��ġ ����.   2011-10-06.
    iMainY := iBaseY + 91;
    Sleep(300);
    ProcMouseLeftDoubleClick(iMainX, iMainY);
    Sleep(100);
    //Application.ProcessMessages();
    SendDeleteKey;
    Sleep(100);
    ClipBdPaste2;
    Sleep(100);
    Application.ProcessMessages();
    //iMainX := iBaseX + 175;                 // (��) ���缱�� �޺��ڽ� ��ġ ����.
    //iMainY := iBaseY + 129;
    iMainX := iBaseX + 169;                   // (��) ���缱�� �޺��ڽ� ��ġ ����.
    iMainY := iBaseY + 134;
    if iMRow > 1 then
    begin
      iMainY := iMainY + ((iMRow - 1) * 18);  // (��) : 19  --> (��) : 18 �� �����.
    end;
    ProcMouseLeftClick(iMainX, iMainY);
    Sleep(100);
    //======================================
  end;
end;

// Ÿ ���α׷��� ����â���� ��ȭ��ȣ�� ������ ��ȸ ��û�� ����� �޾Ҵ��� ���θ� üũ �Ѵ�.
function TCallPassLogi.ScrReqResult(iMainX, iMainY : Integer; WinH : HWND): Boolean;
var
  iCnt : Integer;
  iBaseX, iBaseY : Integer;
  sPhoneNum : string;
begin
  Result := False;

  iBaseX := iMainX;
  iBaseY := iMainY;

  // �߰� �����ȭ��ȣ �ڽ� ��ġ ����.
  //iMainX := iBaseX + 58;
  //iMainY := iBaseY + 403;
  iMainX := iBaseX + 54;
  iMainY := iBaseY + 524;

  iCnt := 0;
  sPhoneNum := '';

  // ��ȭ��ȣ �ԷµǾ����� Ȯ�� �Ѵ�.[�ִ� 10�ʱ��� ��ٸ�]
  while ((Length(Trim(sPhoneNum)) < 3) and (iCnt < 8)) do
  begin
    SetForegroundWindow( WinH );              // Logi on top set.
    ProcMouseLeftClick(iMainX, iMainY);
    Sleep(100);
    SendHomeKey;
    Sleep(100);
    SendBlockSet;
    Sleep(200);
    ClipBdCopy;
    Sleep(300);
    Application.ProcessMessages();

    // �ڽ��� �� ����Ʈ �ڽ��� ����.
    // �����Һκ�.
    {SetForegroundWindow( FMainHandle );       // on top set.
    FEdit.SetFocus;
    Sleep(100);
    ClipBdPaste2;
    Sleep(100);

    // ---- ��ȭ��ȣ �б�..
    sPhoneNum := FEdit.Text;
    // ---- �����Һκ�..  }

    // ---- ��ȭ��ȣ �б�..
    try
      sPhoneNum := Clipboard.AsText;
    finally
    end;

    Application.ProcessMessages();
    sleep(100);
    Inc(iCnt);
  end;

  SetForegroundWindow( WinH );
  if Length(Trim(sPhoneNum)) > 1 then Result := True;
end;


//|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
// ������ ���α׷� ��Ͽ��� ĸ������ �Ѿ���� ���α׷��� �ڵ鰪�� ã�´�.
function FindAllWindowHandle(sClsName,sCaption : string; bGB : boolean = False): integer;
var WinHandle : HWND;
    ClassName: array[0..260] of char;
    TextBuf: array[0..32767] of Char;
begin
   WinHandle := GetWindow(GetDesktopWindow(), GW_CHILD);
   while WinHandle > 0 do
   begin
      FillChar(ClassName, sizeof(ClassName), #0);
      GetClassName(WinHandle, ClassName, sizeof(ClassName));
      GetWindowText(WinHandle,TextBuf,SizeOf(TextBuf));
      if (Pos(sClsName,ClassName)>0) and (Pos(sCaption,TextBuf)>0) then
      begin
         if bGB = True then begin
            ShowWindow(WinHandle, 4);
            SetForegroundWindow( WinHandle );
            Sleep(800);
            Application.ProcessMessages;
         end;
         Break;
      end;
      WinHandle := GetWindow(WinHandle, GW_HWNDNEXT);
   end;
   Result := WinHandle;
end;

// ������ ���α׷� ��Ͽ��� Ŭ���� �������� �Ѿ���� ���α׷��� �ڵ鰪�� ã�´�.
function FindAllWindowHandleExA(sClsName,sCaption : string; WHnext : HWND): integer;
var WinHandle : HWND;
    ClassName: array[0..260] of char;
    TextBuf: array[0..32767] of Char;
    sCa, sCa2 : string;
    bTF, bTF2 : Boolean;
begin
   bTF  := False;
   bTF2 := False;

   WinHandle := GetWindow(GetDesktopWindow(), GW_CHILD);
   while WinHandle > 0 do
   begin
      bTF2 := False;

      FillChar(ClassName, sizeof(ClassName), #0);
      GetClassName(WinHandle, ClassName, sizeof(ClassName));
      GetWindowText(WinHandle,TextBuf,SizeOf(TextBuf));

      if (WHnext <> 0) then
      begin
        if (WHnext = WinHandle) then
        begin
          bTF  := True;
          bTF2 := True;
        end else if (bTF = False) then begin
          bTF2 := True;
        end;
      end;

      sCa  := PChar(@ClassName);
      sCa2 := PChar(@TextBuf);

      if (bTF2 = False) then
      begin
        if (Pos(sClsName,sCa) > 0) then //and (Pos(sCaption,TextBuf)>0) then
        begin
          Break;
        end;
      end;

      if (bTF = True) then bTF2 := False;

      WinHandle := GetWindow(WinHandle, GW_HWNDNEXT);
   end;

   Result := WinHandle;
end;

// Ŭ�������� ������ �ٿ��ֱ� �Ѵ�.
procedure TCallPassLogi.ClipBdPaste();
begin
   keybd_event(VK_CONTROL, 0, 0, 0);
   keybd_event(ord('V'), 0, 0, 0);
   keybd_event(ord('V'), 0, KEYEVENTF_KEYUP, 0);
   keybd_event(VK_CONTROL, 0, KEYEVENTF_KEYUP, 0);
   Application.ProcessMessages();
end;

// Ŭ�������� ������ �ٿ��ֱ� �Ѵ�.(����ȸ)
procedure TCallPassLogi.ClipBdPaste2;
begin
  keybd_event( VK_CONTROL, VK_CONTROL, 0, 0 );
  keybd_event( Byte('V'), Byte('V'), 0, 0 );
  keybd_event( Byte('V'), Byte('V'), KEYEVENTF_KEYUP, 0 );
  keybd_event( VK_CONTROL, VK_CONTROL, KEYEVENTF_KEYUP, 0 );
  Application.ProcessMessages();
end;

// Ŭ�������� ������ �ٿ��ֱ� �Ѵ�.(shift + Insert : �ٿ��ֱ� ������.)
procedure TCallPassLogi.ClipBdPaste3();
begin
  keybd_event( VK_SHIFT, VK_SHIFT, 0, 0 );
  keybd_event( VK_INSERT, VK_INSERT, 0, 0 );
  keybd_event( VK_INSERT, VK_INSERT, KEYEVENTF_KEYUP, 0 );
  keybd_event( VK_SHIFT, VK_SHIFT, KEYEVENTF_KEYUP, 0 );
  Application.ProcessMessages();
end;

// Del Ű�� ������.(���� �����)
procedure TCallPassLogi.SendDeleteKey();
begin
  keybd_event( VK_DELETE, VK_DELETE, 0, 0 );
  keybd_event( VK_DELETE, VK_DELETE, KEYEVENTF_KEYUP, 0 );
  Application.ProcessMessages();
end;

// Home Ű�� ������.(�Ǿ����� �̵�)
procedure TCallPassLogi.SendHomeKey();
begin
  keybd_event( VK_HOME, VK_HOME, 0, 0 );
  keybd_event( VK_HOME, VK_HOME, KEYEVENTF_KEYUP, 0 );
end;

// Ű���� �̺�Ʈ Ű�� ������.
procedure TCallPassLogi.SendKeys(VKey: Byte);
begin
  keybd_event( VKey, VKey, 0, 0 );
  keybd_event( VKey, VKey, KEYEVENTF_KEYUP, 0 );
end;

// shift + End : ������.
procedure TCallPassLogi.SendBlockSet();
begin
  keybd_event( VK_SHIFT, VK_SHIFT, KEYEVENTF_EXTENDEDKEY, 0 );
  keybd_event( VK_END,   VK_END,   0, 0 );
  keybd_event( VK_END,   VK_END,   KEYEVENTF_KEYUP, 0 );
  keybd_event( VK_SHIFT, VK_SHIFT, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0 );
  keybd_event( VK_SHIFT, VK_SHIFT, KEYEVENTF_KEYUP, 0 );
end;

// ������ Ŭ�����忡 ���� �Ѵ�.
procedure TCallPassLogi.ClipBdCopy();
begin
  keybd_event( VK_CONTROL, VK_CONTROL, 0, 0 );
  keybd_event( Byte('C'), Byte('C'), 0, 0 );
  keybd_event( Byte('C'), Byte('C'), KEYEVENTF_KEYUP, 0 );
  keybd_event( VK_CONTROL, VK_CONTROL, KEYEVENTF_KEYUP, 0 );
end;

// F12 Ű �̺�Ʈ�� ������.
procedure TCallPassLogi.SendPressF12();
begin
   keybd_event(VK_F12, 0, 0, 0);
   Application.ProcessMessages();
end;

// ���� Ű �̺�Ʈ�� ������.
procedure TCallPassLogi.SendPressEnter();
begin
   keybd_event(VK_RETURN, 0, 0, 0);
   Application.ProcessMessages();
end;

// ������ ���콺 Ŭ��..
procedure TCallPassLogi.ProcMouseRightClick(itX : Integer; itY : Integer);
begin
   SetCursorPos(itX, itY);
   mouse_event(MOUSEEVENTF_RIGHTDOWN , 0, 0, 0, 0);
   mouse_event(MOUSEEVENTF_RIGHTUP , 0, 0, 0, 0);
end;

// ���� ���콺 Ŭ��..
procedure TCallPassLogi.ProcMouseLeftClick(itX : Integer; itY : Integer);
begin
   SetCursorPos(itX, itY);
   mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
   mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
end;

// ���� ���콺 ����Ŭ��..
procedure TCallPassLogi.ProcMouseLeftDoubleClick(itX : Integer; itY : Integer);
begin
   SetCursorPos(itX, itY);
   mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
   mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
   Sleep(100);
   mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
   mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
end;
//|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//  END : User Function/Procedure Area.
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



//  �������� ��� �� ���� ���ν���.    2013-11-05 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Ŭ�������� ������ �ٿ��ֱ� �Ѵ�.
procedure ClipBdPaste();
begin
   keybd_event(VK_CONTROL, 0, 0, 0);
   keybd_event(ord('V'), 0, 0, 0);
   keybd_event(ord('V'), 0, KEYEVENTF_KEYUP, 0);
   keybd_event(VK_CONTROL, 0, KEYEVENTF_KEYUP, 0);
   Application.ProcessMessages();
end;

// Ŭ�������� ������ �ٿ��ֱ� �Ѵ�.(����ȸ)
procedure ClipBdPaste2;
begin
  keybd_event( VK_CONTROL, VK_CONTROL, 0, 0 );
  keybd_event( Byte('V'), Byte('V'), 0, 0 );
  keybd_event( Byte('V'), Byte('V'), KEYEVENTF_KEYUP, 0 );
  keybd_event( VK_CONTROL, VK_CONTROL, KEYEVENTF_KEYUP, 0 );
  Application.ProcessMessages();
end;

// Ŭ�������� ������ �ٿ��ֱ� �Ѵ�.(shift + Insert : �ٿ��ֱ� ������.)
procedure ClipBdPaste3();
begin
  keybd_event( VK_SHIFT, VK_SHIFT, 0, 0 );
  keybd_event( VK_INSERT, VK_INSERT, 0, 0 );
  keybd_event( VK_INSERT, VK_INSERT, KEYEVENTF_KEYUP, 0 );
  keybd_event( VK_SHIFT, VK_SHIFT, KEYEVENTF_KEYUP, 0 );
  Application.ProcessMessages();
end;

// Del Ű�� ������.(���� �����)
procedure SendDeleteKey();
begin
  keybd_event( VK_DELETE, VK_DELETE, 0, 0 );
  keybd_event( VK_DELETE, VK_DELETE, KEYEVENTF_KEYUP, 0 );
  Application.ProcessMessages();
end;

// Home Ű�� ������.(�Ǿ����� �̵�)
procedure SendHomeKey();
begin
  keybd_event( VK_HOME, VK_HOME, 0, 0 );
  keybd_event( VK_HOME, VK_HOME, KEYEVENTF_KEYUP, 0 );
end;

// Ű���� �̺�Ʈ Ű�� ������.
procedure SendKeys(VKey: Byte);
begin
  keybd_event( VKey, VKey, 0, 0 );
  keybd_event( VKey, VKey, KEYEVENTF_KEYUP, 0 );
end;

// shift + End : ������.
procedure SendBlockSet();
begin
  keybd_event( VK_SHIFT, VK_SHIFT, KEYEVENTF_EXTENDEDKEY, 0 );
  keybd_event( VK_END,   VK_END,   0, 0 );
  keybd_event( VK_END,   VK_END,   KEYEVENTF_KEYUP, 0 );
  keybd_event( VK_SHIFT, VK_SHIFT, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0 );
  keybd_event( VK_SHIFT, VK_SHIFT, KEYEVENTF_KEYUP, 0 );
end;

// ������ Ŭ�����忡 ���� �Ѵ�.
procedure ClipBdCopy();
begin
  keybd_event( VK_CONTROL, VK_CONTROL, 0, 0 );
  keybd_event( Byte('C'), Byte('C'), 0, 0 );
  keybd_event( Byte('C'), Byte('C'), KEYEVENTF_KEYUP, 0 );
  keybd_event( VK_CONTROL, VK_CONTROL, KEYEVENTF_KEYUP, 0 );
end;

// F12 Ű �̺�Ʈ�� ������.
procedure SendPressF12();
begin
   keybd_event(VK_F12, 0, 0, 0);
   Application.ProcessMessages();
end;

// ���� Ű �̺�Ʈ�� ������.
procedure SendPressEnter();
begin
   keybd_event(VK_RETURN, 0, 0, 0);
   Application.ProcessMessages();
end;

// ������ ���콺 Ŭ��..
procedure ProcMouseRightClick(itX : Integer; itY : Integer);
begin
   SetCursorPos(itX, itY);
   mouse_event(MOUSEEVENTF_RIGHTDOWN , 0, 0, 0, 0);
   mouse_event(MOUSEEVENTF_RIGHTUP , 0, 0, 0, 0);
end;

// ���� ���콺 Ŭ��..
procedure ProcMouseLeftClick(itX : Integer; itY : Integer);
begin
   SetCursorPos(itX, itY);
   mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
   mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
end;

// ���� ���콺 ����Ŭ��..
procedure ProcMouseLeftDoubleClick(itX : Integer; itY : Integer);
begin
   SetCursorPos(itX, itY);
   mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
   mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
   Sleep(100);
   mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
   mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
end;
//|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||





{

procedure TfrmMain.FormShow(Sender: TObject);
begin

  // �� ����
  pCallInfo.sMTel  := '';
  pCallInfo.sTel   := '';
  pCallInfo.sSArea := '';
  pCallInfo.sEArea := '';
  pCallInfo.sRate  := '';
  pCallInfo.sBigo  := '';
  pCallInfo.sJTime := '';

  // ȯ�漳�� �о����.
  pConfSet.sFromPrg  := '�ݸ���';
  pConfSet.sToPrg    := '����';
  pConfSet.sMinute   := '3';
  pConfSet.sBaseTime := '09';
  pConfSet.sOrdState := '����';   // ���, ���, ����
  pConfSet.sltCallmanerMNum := TStringList.Create;
  pConfSet.sltEtcMainNum    := TStringList.Create;
  pConfSet.sltLogiMainNum   := TStringList.Create;

  // ��ǥ��ȣ �Է�
  pConfSet.sltCallmanerMNum.Add('15990094');  // �ݸ��� ��ǥ��ȣ
  pConfSet.sltEtcMainNum.Add('15990094');     // Ÿ���α׷� ��ǥ��ȣ
  pConfSet.sltLogiMainNum.Add('0094');        // ���� ��ǥ��ȣ ã�� �����ȣ

  pConfSet.sltCallmanerMNum.Add('15443838');  // �ݸ��� ��ǥ��ȣ
  pConfSet.sltEtcMainNum.Add('15443838');     // Ÿ���α׷� ��ǥ��ȣ
  pConfSet.sltLogiMainNum.Add('3838');        // ���� ��ǥ��ȣ ã�� �����ȣ


end;
}
{ TCallPassLogi }

constructor TCallPassLogi.Create(AMainHandle: THandle; AEdit: TEdit; AIniFile: TIniFile);
begin
  FConfSet.sltCallmanerMNum := TStringList.Create;
  FConfSet.sltEtcMainNum    := TStringList.Create;
  FConfSet.sltLogiMainNum   := TStringList.Create;
  FConfSet.sltRowNum        := TStringList.Create;

  FMainHandle := AMainHandle;
  FEdit       := AEdit;
  FIniFile    := AIniFile;

  LoadIni;
end;

destructor TCallPassLogi.Destroy;
begin
  FConfSet.sltCallmanerMNum.Free;
  FConfSet.sltEtcMainNum.Free;
  FConfSet.sltLogiMainNum.Free;
  FConfSet.sltRowNum.Free;

  inherited;
end;

procedure TCallPassLogi.LoadIni;
begin
  FConfSet.sltCallmanerMNum.CommaText := FIniFile.ReadString('L', 'Cm', '');
  FConfSet.sltLogiMainNum.CommaText   := FIniFile.ReadString('L', 'Ls',  '');
  FConfSet.sltEtcMainNum.CommaText    := FIniFile.ReadString('L', 'SC',  '');
  FConfSet.sltRowNum.CommaText        := FIniFile.ReadString('L', 'RN',  '');
  FConfSet.sOrdState                  := FIniFile.ReadString('L', 'Tp', '���');
  FConfSet.sCmOrdSt                   := FIniFile.ReadString('L', 'COS', '���');
end;

procedure TCallPassLogi.SaveIni;
begin
  FIniFile.WriteString('L', 'Cm', FConfSet.sltCallmanerMNum.CommaText);
  FIniFile.WriteString('L', 'Ls', FConfSet.sltLogiMainNum.CommaText);
  FIniFile.WriteString('L', 'SC', FConfSet.sltEtcMainNum.CommaText);
  FIniFile.WriteString('L', 'RN', FConfSet.sltRowNum.CommaText);
  FIniFile.WriteString('L', 'Tp', FConfSet.sOrdState);
  FIniFile.WriteString('L', 'COS', FConfSet.sCmOrdSt);
end;

procedure TCallPassLogi.SetOrderState(ASt: string);
begin
  FConfSet.sOrdState := ASt;
end;

function TCallPassLogi.SendCallPass(AKeyNum, ATel, ASt, AEd, ARate, ABigo,
  AJTime: string): Boolean;
begin
  //clipboard.Open;
  //clipboard.settextbuf(Pchar(ATel));  // ���� ��ǥ��ȣ ã�� ���� ��ȣ.
  //clipboard.Close;

  FCallInfo.sMTel  := Trim(AKeyNum);        // ��ǥ��ȣ
  FCallInfo.sTel   := Trim(ATel);           // ����
  FCallInfo.sSArea := Trim(ASt);            // �����
  FCallInfo.sEArea := Trim(AEd);            // ������
  FCallInfo.sRate  := Trim(ARate);          // ���
  FCallInfo.sBigo  := Trim(ABigo);          // ����
  FCallInfo.sJTime := Trim(AJTime);         // �����ð�(�̻��)

  Result := ScrCallPassSu;
end;

procedure TCallPassLogi.SetCMOrderState(ASt: string);
begin
  FConfSet.sCmOrdSt := ASt;
  SaveIni;
end;

function TCallPassLogi.GetTargetKeyNum(ASourceKeyNum: string): string;
var
  Idx: Integer;
begin
  Result := '';

  Idx := FConfSet.sltCallmanerMNum.IndexOf(ASourceKeyNum);
  if Idx > -1 then
    Result := FConfSet.sltEtcMainNum[Idx];
end;

end.



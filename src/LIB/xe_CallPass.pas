unit xe_CallPass;

interface

uses
  Windows, Classes, SysUtils, Forms, Dialogs, Clipbrd, IniFiles, StdCtrls;

type
  tCB = record
    sMTel  : string;    // 대표번호
    sTel   : string;    // 고객번호
    sSArea : string;    // 출발지
    sEArea : string;    // 도착지
    sRate  : string;    // 요금
    sBigo  : string;    // 적요
    sJTime : string;    // 접수시간
  end;

  tCFG = record
    sFromPrg  : string;      // 시작 Prg.
    sToPrg    : string;      // 종료 Prg.
    sMinute   : string;      // 기준 분.
    sBaseTime : string;      // 기준 시간.
    sOrdState : string;      // 콜패스 후 로지 오더 상태.
    sCmOrdSt  : string;

    sltCallmanerMNum: TStringList;   // 콜마너 대표번호 저장.
    sltEtcMainNum   : TStringList;   // 타 프로그램사 지사 대표번호 저장.
    sltLogiMainNum  : TStringList;   // 로지 지사 대표번호 찾기 단축번호 저장.
    sltRowNum       : TStringList;   // 로지 대표번호항목 행번호
  end;

  TCallPassLogi = class
  private
    FMainHandle: THandle;
    FEdit: TEdit;
    FIniFile: TIniFile;

    FCallInfo: TCB;   // 콜 정보값 저장
    FConfSet: TCFG;  // 환경설정값 저장

    // 윈도우 프로그램 목록에서 캡션으로 넘어오는 프로그램의 핸들값을 찾는다.
    // 클립보드의 내용을 붙여넣기 한다.
    procedure ClipBdPaste;
    // 클립보드의 내용을 붙여넣기 한다.
    procedure ClipBdPaste2;
    // 클립보드의 내용을 붙여넣기 한다.
    procedure ClipBdPaste3;
    // 내용을 클립보드에 복사 한다.
    procedure ClipBdCopy;
    // F12 키 이벤트를 날린다.
    procedure SendPressF12;
    // 엔터 키 이벤트를 날린다.
    procedure SendPressEnter;
    // Del 키를 날린다.(내용 지우기)
    procedure SendDeleteKey;
    // shift + End : 블럭설정.
    procedure SendBlockSet;
    // Home 키를 날린다.(맨앞으로 이동)
    procedure SendHomeKey;
    // 키보드 이벤트 키를 날린다.
    procedure SendKeys(VKey: Byte);
    // 왼쪽마우스 클릭..
    procedure ProcMouseLeftClick(itX : Integer; itY : Integer);
    // 오른쪽 마우스 클릭..
    procedure ProcMouseRightClick(itX : Integer; itY : Integer);
    // 왼쪽 마우스 더블클릭..
    procedure ProcMouseLeftDoubleClick(itX : Integer; itY : Integer);
    //----------------------------------------------------------------------
    // 타 프로그램에 콜패스 시작.
    function ScrCallPassSu: Boolean;
    // 타 프로그램의 접수창에 데이터 넣기..
    procedure ScrCPassExec(iMainX, iMainY : Integer; WinH : HWND);
    // 타 프로그램의 접수창에서 지사 선택하기..
    procedure ScrBranchChoice(iMainX, iMainY : Integer);
    // 타 프로그램의 접수창에서 전화번호로 고객정보 조회 요청후 결과를 받았는지 여부를 체크 한다.
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

  // 윈도우 프로그램 목록에서 캡션으로 넘어오는 프로그램의 핸들값을 찾는다.
  // 클립보드의 내용을 붙여넣기 한다.
  procedure ClipBdPaste;
  // 클립보드의 내용을 붙여넣기 한다.
  procedure ClipBdPaste2;
  // 클립보드의 내용을 붙여넣기 한다.
  procedure ClipBdPaste3;
  // 내용을 클립보드에 복사 한다.
  procedure ClipBdCopy;
  // F12 키 이벤트를 날린다.
  procedure SendPressF12;
  // 엔터 키 이벤트를 날린다.
  procedure SendPressEnter;
  // Del 키를 날린다.(내용 지우기)
  procedure SendDeleteKey;
  // shift + End : 블럭설정.
  procedure SendBlockSet;
  // Home 키를 날린다.(맨앞으로 이동)
  procedure SendHomeKey;
  // 키보드 이벤트 키를 날린다.
  procedure SendKeys(VKey: Byte);
  // 왼쪽마우스 클릭..
  procedure ProcMouseLeftClick(itX : Integer; itY : Integer);
  // 오른쪽 마우스 클릭..
  procedure ProcMouseRightClick(itX : Integer; itY : Integer);
  // 왼쪽 마우스 더블클릭..
  procedure ProcMouseLeftDoubleClick(itX : Integer; itY : Integer);
  //----------------------------------------------------------------------

  function FindAllWindowHandle(sClsName,sCaption : string; bGB : boolean = False): integer;
  function FindAllWindowHandleExA(sClsName,sCaption : string; WHnext : HWND): integer;

implementation

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//  START : User Function/Procedure Area.
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// 타 프로그램에 콜패스 시작.
function TCallPassLogi.ScrCallPassSu: Boolean;
var
  WinH, WinH2 : HWND;
  iCnt: Integer;
  fRect : TRect;
  iMainX, iMainY : Integer;
begin
  Result := False;

  // 메인창 핸들값 구하기..
  //WinH := FindAllWindowHandle('quick2.0','Copyright 2003-2009', True);
  WinH := FindAllWindowHandle('quick2.0','로지소프트 스마트D ⓥ', True);

  if WinH > 0 then begin

    // 접수버튼 위치 찾기
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
        WinH2 := FindWindowExA(WinH,0,'Button','넓은창');
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


    // 타 프로그램 접수창에서 지사 선택.
    ScrBranchChoice(iMainX, iMainY);

    // 타 프로그램의 접수창에 데이터 넣기.
    ScrCPassExec(iMainX, iMainY, WinH);

    Result := True;
  end else begin
    ShowMessage('로지 프로그램 "로그인" 되어있지 않습니다.');
  end;

end;

// 타 프로그램의 접수창에 데이터 넣기.. / 등록 하기..
procedure TCallPassLogi.ScrCPassExec(iMainX, iMainY : Integer; WinH : HWND);
var
  iBaseX, iBaseY: Integer;
begin

  iBaseX := iMainX;
  iBaseY := iMainY;

  //clipboard.Open;
  //clipboard.settextbuf(Pchar(FCallInfo.sTel));  // 핸드폰번호
  //clipboard.Close;
  Clipboard.AsText := FCallInfo.sTel;

  // 고객전화번호 팝업메뉴 위치값 설정.
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
    ShowMessage('로지 프로그램 접수창 오픈에러 발생하였습니다.' + #13#10
              + '로지 접수창을 닫고 콜마너에서 다시 콜패스 해주시기 바랍니다.');
    Exit;
  end;
  Sleep(100);
  //======================================

  //clipboard.Open;
  //clipboard.settextbuf(Pchar(FCallInfo.sSArea));  // 출발지
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
  //clipboard.settextbuf(Pchar(FCallInfo.sEArea));  // 도착지
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
  //clipboard.settextbuf(Pchar(FCallInfo.sRate));  // 요금
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
  //clipboard.settextbuf(Pchar(FCallInfo.sBigo));  // 적요
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

  if FConfSet.sOrdState = '등록' then
  begin
    // 등록(접수하기)
    //iMainX := iBaseX + 71;
    //iMainY := iMainY + 110;
    iMainX := iBaseX + 71;
    iMainY := iMainY + 105;
    ProcMouseLeftClick(iMainX, iMainY);

  end else if FConfSet.sOrdState = '대기' then
  begin
    // 대기(대기상태로 접수하기)
    //iMainX := iBaseX + 194;
    //iMainY := iMainY + 110;
    iMainX := iBaseX + 155;
    iMainY := iMainY + 105;
    ProcMouseLeftClick(iMainX, iMainY);

  end else if FConfSet.sOrdState = '문의' then
  begin
    // 대기(대기상태로 접수하기)
    //iMainX := iBaseX + 174;
    //iMainY := iBaseY + 608;
    iMainX := iBaseX + 229;
    iMainY := iMainY + 105;
    ProcMouseLeftClick(iMainX, iMainY);

  end;

end;

// 타 프로그램의 접수창에서 지사 선택하기..
procedure TCallPassLogi.ScrBranchChoice(iMainX, iMainY : Integer);
var
  iDx: Integer;
  iBaseX, iBaseY, iMRow: Integer;
  sMN : string;
begin
  iBaseX := iMainX;
  iBaseY := iMainY;

  Sleep(500); // 접수창 생성 대기 시간..

  // 로지 대표번호 찾기 단축번호 찾기.
  iDx := FConfSet.sltCallmanerMNum.IndexOf(FCallInfo.sMTel);
  if iDx > -1 then
  begin
    sMN   := FConfSet.sltLogiMainNum[iDx];
    iMRow := StrToIntDef(FConfSet.sltRowNum[iDx], 0);  // 추가: 지사선택 행
    if iMRow < 1 then iMRow := 1;

    //clipboard.Open;
    //clipboard.settextbuf(Pchar(sMN));  // 로지 대표번호 찾기 단축 번호.
    //clipboard.Close;
    Clipboard.AsText := sMN;
    Application.ProcessMessages();

    //iMainX := iBaseX + 354;                 // (구) 대표번호 위치 설정.
    //iMainY := iBaseY + 89;
    iMainX := iBaseX + 349;                   // (신) 대표번호 위치 설정.   2011-10-06.
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
    //iMainX := iBaseX + 175;                 // (구) 지사선택 콤보박스 위치 설정.
    //iMainY := iBaseY + 129;
    iMainX := iBaseX + 169;                   // (신) 지사선택 콤보박스 위치 설정.
    iMainY := iBaseY + 134;
    if iMRow > 1 then
    begin
      iMainY := iMainY + ((iMRow - 1) * 18);  // (구) : 19  --> (신) : 18 로 변경됨.
    end;
    ProcMouseLeftClick(iMainX, iMainY);
    Sleep(100);
    //======================================
  end;
end;

// 타 프로그램의 접수창에서 전화번호로 고객정보 조회 요청후 결과를 받았는지 여부를 체크 한다.
function TCallPassLogi.ScrReqResult(iMainX, iMainY : Integer; WinH : HWND): Boolean;
var
  iCnt : Integer;
  iBaseX, iBaseY : Integer;
  sPhoneNum : string;
begin
  Result := False;

  iBaseX := iMainX;
  iBaseY := iMainY;

  // 중간 결과전화번호 박스 위치 설정.
  //iMainX := iBaseX + 58;
  //iMainY := iBaseY + 403;
  iMainX := iBaseX + 54;
  iMainY := iBaseY + 524;

  iCnt := 0;
  sPhoneNum := '';

  // 전화번호 입력되었는지 확인 한다.[최대 10초까지 기다림]
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

    // 자신의 폼 에디트 박스에 복사.
    // 수정할부분.
    {SetForegroundWindow( FMainHandle );       // on top set.
    FEdit.SetFocus;
    Sleep(100);
    ClipBdPaste2;
    Sleep(100);

    // ---- 전화번호 읽기..
    sPhoneNum := FEdit.Text;
    // ---- 수정할부분..  }

    // ---- 전화번호 읽기..
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
// 윈도우 프로그램 목록에서 캡션으로 넘어오는 프로그램의 핸들값을 찾는다.
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

// 윈도우 프로그램 목록에서 클래스 네임으로 넘어오는 프로그램의 핸들값을 찾는다.
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

// 클립보드의 내용을 붙여넣기 한다.
procedure TCallPassLogi.ClipBdPaste();
begin
   keybd_event(VK_CONTROL, 0, 0, 0);
   keybd_event(ord('V'), 0, 0, 0);
   keybd_event(ord('V'), 0, KEYEVENTF_KEYUP, 0);
   keybd_event(VK_CONTROL, 0, KEYEVENTF_KEYUP, 0);
   Application.ProcessMessages();
end;

// 클립보드의 내용을 붙여넣기 한다.(최종회)
procedure TCallPassLogi.ClipBdPaste2;
begin
  keybd_event( VK_CONTROL, VK_CONTROL, 0, 0 );
  keybd_event( Byte('V'), Byte('V'), 0, 0 );
  keybd_event( Byte('V'), Byte('V'), KEYEVENTF_KEYUP, 0 );
  keybd_event( VK_CONTROL, VK_CONTROL, KEYEVENTF_KEYUP, 0 );
  Application.ProcessMessages();
end;

// 클립보드의 내용을 붙여넣기 한다.(shift + Insert : 붙여넣기 동작함.)
procedure TCallPassLogi.ClipBdPaste3();
begin
  keybd_event( VK_SHIFT, VK_SHIFT, 0, 0 );
  keybd_event( VK_INSERT, VK_INSERT, 0, 0 );
  keybd_event( VK_INSERT, VK_INSERT, KEYEVENTF_KEYUP, 0 );
  keybd_event( VK_SHIFT, VK_SHIFT, KEYEVENTF_KEYUP, 0 );
  Application.ProcessMessages();
end;

// Del 키를 날린다.(내용 지우기)
procedure TCallPassLogi.SendDeleteKey();
begin
  keybd_event( VK_DELETE, VK_DELETE, 0, 0 );
  keybd_event( VK_DELETE, VK_DELETE, KEYEVENTF_KEYUP, 0 );
  Application.ProcessMessages();
end;

// Home 키를 날린다.(맨앞으로 이동)
procedure TCallPassLogi.SendHomeKey();
begin
  keybd_event( VK_HOME, VK_HOME, 0, 0 );
  keybd_event( VK_HOME, VK_HOME, KEYEVENTF_KEYUP, 0 );
end;

// 키보드 이벤트 키를 날린다.
procedure TCallPassLogi.SendKeys(VKey: Byte);
begin
  keybd_event( VKey, VKey, 0, 0 );
  keybd_event( VKey, VKey, KEYEVENTF_KEYUP, 0 );
end;

// shift + End : 블럭설정.
procedure TCallPassLogi.SendBlockSet();
begin
  keybd_event( VK_SHIFT, VK_SHIFT, KEYEVENTF_EXTENDEDKEY, 0 );
  keybd_event( VK_END,   VK_END,   0, 0 );
  keybd_event( VK_END,   VK_END,   KEYEVENTF_KEYUP, 0 );
  keybd_event( VK_SHIFT, VK_SHIFT, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0 );
  keybd_event( VK_SHIFT, VK_SHIFT, KEYEVENTF_KEYUP, 0 );
end;

// 내용을 클립보드에 복사 한다.
procedure TCallPassLogi.ClipBdCopy();
begin
  keybd_event( VK_CONTROL, VK_CONTROL, 0, 0 );
  keybd_event( Byte('C'), Byte('C'), 0, 0 );
  keybd_event( Byte('C'), Byte('C'), KEYEVENTF_KEYUP, 0 );
  keybd_event( VK_CONTROL, VK_CONTROL, KEYEVENTF_KEYUP, 0 );
end;

// F12 키 이벤트를 날린다.
procedure TCallPassLogi.SendPressF12();
begin
   keybd_event(VK_F12, 0, 0, 0);
   Application.ProcessMessages();
end;

// 엔터 키 이벤트를 날린다.
procedure TCallPassLogi.SendPressEnter();
begin
   keybd_event(VK_RETURN, 0, 0, 0);
   Application.ProcessMessages();
end;

// 오른쪽 마우스 클릭..
procedure TCallPassLogi.ProcMouseRightClick(itX : Integer; itY : Integer);
begin
   SetCursorPos(itX, itY);
   mouse_event(MOUSEEVENTF_RIGHTDOWN , 0, 0, 0, 0);
   mouse_event(MOUSEEVENTF_RIGHTUP , 0, 0, 0, 0);
end;

// 왼쪽 마우스 클릭..
procedure TCallPassLogi.ProcMouseLeftClick(itX : Integer; itY : Integer);
begin
   SetCursorPos(itX, itY);
   mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
   mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
end;

// 왼쪽 마우스 더블클릭..
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



//  범용으로 사용 할 공통 프로시저.    2013-11-05 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// 클립보드의 내용을 붙여넣기 한다.
procedure ClipBdPaste();
begin
   keybd_event(VK_CONTROL, 0, 0, 0);
   keybd_event(ord('V'), 0, 0, 0);
   keybd_event(ord('V'), 0, KEYEVENTF_KEYUP, 0);
   keybd_event(VK_CONTROL, 0, KEYEVENTF_KEYUP, 0);
   Application.ProcessMessages();
end;

// 클립보드의 내용을 붙여넣기 한다.(최종회)
procedure ClipBdPaste2;
begin
  keybd_event( VK_CONTROL, VK_CONTROL, 0, 0 );
  keybd_event( Byte('V'), Byte('V'), 0, 0 );
  keybd_event( Byte('V'), Byte('V'), KEYEVENTF_KEYUP, 0 );
  keybd_event( VK_CONTROL, VK_CONTROL, KEYEVENTF_KEYUP, 0 );
  Application.ProcessMessages();
end;

// 클립보드의 내용을 붙여넣기 한다.(shift + Insert : 붙여넣기 동작함.)
procedure ClipBdPaste3();
begin
  keybd_event( VK_SHIFT, VK_SHIFT, 0, 0 );
  keybd_event( VK_INSERT, VK_INSERT, 0, 0 );
  keybd_event( VK_INSERT, VK_INSERT, KEYEVENTF_KEYUP, 0 );
  keybd_event( VK_SHIFT, VK_SHIFT, KEYEVENTF_KEYUP, 0 );
  Application.ProcessMessages();
end;

// Del 키를 날린다.(내용 지우기)
procedure SendDeleteKey();
begin
  keybd_event( VK_DELETE, VK_DELETE, 0, 0 );
  keybd_event( VK_DELETE, VK_DELETE, KEYEVENTF_KEYUP, 0 );
  Application.ProcessMessages();
end;

// Home 키를 날린다.(맨앞으로 이동)
procedure SendHomeKey();
begin
  keybd_event( VK_HOME, VK_HOME, 0, 0 );
  keybd_event( VK_HOME, VK_HOME, KEYEVENTF_KEYUP, 0 );
end;

// 키보드 이벤트 키를 날린다.
procedure SendKeys(VKey: Byte);
begin
  keybd_event( VKey, VKey, 0, 0 );
  keybd_event( VKey, VKey, KEYEVENTF_KEYUP, 0 );
end;

// shift + End : 블럭설정.
procedure SendBlockSet();
begin
  keybd_event( VK_SHIFT, VK_SHIFT, KEYEVENTF_EXTENDEDKEY, 0 );
  keybd_event( VK_END,   VK_END,   0, 0 );
  keybd_event( VK_END,   VK_END,   KEYEVENTF_KEYUP, 0 );
  keybd_event( VK_SHIFT, VK_SHIFT, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0 );
  keybd_event( VK_SHIFT, VK_SHIFT, KEYEVENTF_KEYUP, 0 );
end;

// 내용을 클립보드에 복사 한다.
procedure ClipBdCopy();
begin
  keybd_event( VK_CONTROL, VK_CONTROL, 0, 0 );
  keybd_event( Byte('C'), Byte('C'), 0, 0 );
  keybd_event( Byte('C'), Byte('C'), KEYEVENTF_KEYUP, 0 );
  keybd_event( VK_CONTROL, VK_CONTROL, KEYEVENTF_KEYUP, 0 );
end;

// F12 키 이벤트를 날린다.
procedure SendPressF12();
begin
   keybd_event(VK_F12, 0, 0, 0);
   Application.ProcessMessages();
end;

// 엔터 키 이벤트를 날린다.
procedure SendPressEnter();
begin
   keybd_event(VK_RETURN, 0, 0, 0);
   Application.ProcessMessages();
end;

// 오른쪽 마우스 클릭..
procedure ProcMouseRightClick(itX : Integer; itY : Integer);
begin
   SetCursorPos(itX, itY);
   mouse_event(MOUSEEVENTF_RIGHTDOWN , 0, 0, 0, 0);
   mouse_event(MOUSEEVENTF_RIGHTUP , 0, 0, 0, 0);
end;

// 왼쪽 마우스 클릭..
procedure ProcMouseLeftClick(itX : Integer; itY : Integer);
begin
   SetCursorPos(itX, itY);
   mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
   mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
end;

// 왼쪽 마우스 더블클릭..
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

  // 콜 정보
  pCallInfo.sMTel  := '';
  pCallInfo.sTel   := '';
  pCallInfo.sSArea := '';
  pCallInfo.sEArea := '';
  pCallInfo.sRate  := '';
  pCallInfo.sBigo  := '';
  pCallInfo.sJTime := '';

  // 환경설정 읽어오기.
  pConfSet.sFromPrg  := '콜마너';
  pConfSet.sToPrg    := '로지';
  pConfSet.sMinute   := '3';
  pConfSet.sBaseTime := '09';
  pConfSet.sOrdState := '문의';   // 등록, 대기, 문의
  pConfSet.sltCallmanerMNum := TStringList.Create;
  pConfSet.sltEtcMainNum    := TStringList.Create;
  pConfSet.sltLogiMainNum   := TStringList.Create;

  // 대표번호 입력
  pConfSet.sltCallmanerMNum.Add('15990094');  // 콜마너 대표번호
  pConfSet.sltEtcMainNum.Add('15990094');     // 타프로그램 대표번호
  pConfSet.sltLogiMainNum.Add('0094');        // 로지 대표번호 찾기 단축번호

  pConfSet.sltCallmanerMNum.Add('15443838');  // 콜마너 대표번호
  pConfSet.sltEtcMainNum.Add('15443838');     // 타프로그램 대표번호
  pConfSet.sltLogiMainNum.Add('3838');        // 로지 대표번호 찾기 단축번호


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
  FConfSet.sOrdState                  := FIniFile.ReadString('L', 'Tp', '등록');
  FConfSet.sCmOrdSt                   := FIniFile.ReadString('L', 'COS', '대기');
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
  //clipboard.settextbuf(Pchar(ATel));  // 로지 대표번호 찾기 단축 번호.
  //clipboard.Close;

  FCallInfo.sMTel  := Trim(AKeyNum);        // 대표번호
  FCallInfo.sTel   := Trim(ATel);           // 고객명
  FCallInfo.sSArea := Trim(ASt);            // 출발지
  FCallInfo.sEArea := Trim(AEd);            // 도착지
  FCallInfo.sRate  := Trim(ARate);          // 요금
  FCallInfo.sBigo  := Trim(ABigo);          // 적요
  FCallInfo.sJTime := Trim(AJTime);         // 접수시간(미사용)

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



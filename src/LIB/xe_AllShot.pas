unit xe_AllShot;

interface

uses
  Windows, Vcl.Dialogs, Vcl.Forms, System.SysUtils, IniFiles, Registry, Classes,
  Vcl.StdCtrls, System.AnsiStrings, IdFTP, iphlpapi, IpTypes, cxTextEdit, System.UiTypes,
  cxEdit, System.StrUtils, Vcl.Graphics, cxRichEdit, Vcl.ComCtrls, IdTCPClient,
  cxGridTableView, ShellAPI, cxGrid, cxGridExportLink, cxMemo, IdGlobal,
  TLHelp32, cxGridDBTableView, ComObj, Controls, Variants,
  cxGridBandedTableView, cxDropDownEdit, SHDocVw, MSHTML, Math,
  Gauges, TaskDialog;

Const
  Ver : AnsiString = 'SAM10 ';
  SVer : AnsiString = '30020';

  ComLogIn   = '1010 ';
  ComLogIn2  = '1096 ';
  ComReserve = '1020 ';
  ComResult  = '1030 ';
  ComFileSa  = '2010 ';
  ComFileRe  = '2011 ';
  ComFileYo  = '2020 ';
  ComFilegu  = '2021 ';
  ComSMSREQ  = '1090 ';   //SMS인증요청
  ComSMSREQ2  = '1092 ';  //SMS인증확인

  ComImageSend = '2030 '; // image Send
  ComMMSSend = '1024 '; // MMS Send

Var
  m_ImageBuffer : array [0..307199] of AnsiChar; // 이미지를 담을 버퍼, 최대 300k
  m_Imagesize : Integer;
  m_strFilename : AnsiString;

  ServerIP, ServerIP_MMS, gOShotUserID, gOShotUserPass, UserDan, UserDanLong, UserDanMMS, UserKind, gOShotCharge, Trans_Success, Trans_SuccessLong, Trans_SuccessMMS : AnsiString;
  gOShotStat, gOShotSend : Boolean;
  ServerPort : Integer;
  BRBody: TIdBytes;

  function Re_Login : String;
  function fn_Re_Login : Boolean ;
  function fn_Re_LoginOK( sId, sPw : AnsiString ) : Boolean ;
  function Return_Login(RecvText : string) : Boolean;
  function Re_Login_XML(sSendTxt, sGubun : AnsiString; Socket : TIdTCPClient) : string;
  function Trans_XML(sSendTxt, sGubun : AnsiString; Socket : TIdTCPClient) : string;

implementation

uses
  xe_gnl, xe_Msg, xe_packet, IdHTTP, xe_gnl2, xe_gnl3, xe_Func, xe_Dm;


function Re_Login : String;
var SendText, RecvText : AnsiString;
begin
   SendText := AnsiString(RPAD(gOShotUserID, 20, ' ') + RPAD(gOShotUserPass, 20, ' '));
   RecvText  := Re_Login_XML(SendText, ComLogIn, Dm.IdTCPCtOShotMMS);
   If RecvText = '' Then
   Begin
     If MessageDlg('[AllShot]서버와의 통신중 장애가 발생하였습니다.' + #13#10
              + '확인을 누르시면 다시 시도합니다.', mtWarning, [mbyes, mbno], 0) = mryes Then
     Begin
         Re_Login;
     End;
   End Else
   Begin
     Return_Login(RecvText);
   End;
End;

function fn_Re_Login : Boolean ;
var SendText, RecvText : string;
begin
  Result := False;
  SendText := AnsiString(RPAD(gOShotUserID, 20, ' ') + RPAD(gOShotUserPass, 20, ' '));
  RecvText  := Re_Login_XML(SendText, ComLogIn, Dm.IdTCPCtOShotMMS);
  If RecvText = '' Then
  Begin
    If MessageDlg('[AllShot]서버와의 통신중 장애가 발생하였습니다.' + #13#10
                + '확인을 누르시면 다시 시도합니다.', mtWarning, [mbyes, mbno], 0) = mryes Then
    Begin
      Re_Login;
    End;
  End Else
  Begin
     Return_Login(RecvText);
     Result := True;
  End;
End;

function fn_Re_LoginOK( sId, sPw : AnsiString ) : Boolean ;
var SendText, RecvText : string;
begin
  Result := False;
  SendText := AnsiString(RPAD(sId, 20, ' ') + RPAD(sPw, 20, ' '));
  RecvText  := Re_Login_XML(SendText, ComLogIn, Dm.IdTCPCtOShotMMS);
  If RecvText = '' Then
  Begin
    If MessageDlg('[AllShot]서버와의 통신중 장애가 발생하였습니다.' + #13#10
                + '확인을 누르시면 다시 시도합니다.', mtWarning, [mbyes, mbno], 0) = mryes Then
    Begin
      Re_Login;
    End;
  End Else
  Begin
     Result := Return_Login(RecvText);
  End;
End;

function Return_Login(RecvText : string) : Boolean;
var sError, sError_Msg, sBody : string;
begin
  Result := False;
  try
    sError := Trim(Copy(RecvText, 21, 5));
    sError_Msg := Trim(Copy(RecvText,26, 50));
    sBody := Trim(Copy(RecvText, Pos(#02, RecvText) + 1, Length(RecvText)));

    If sError = '11006' Then
    Begin
        ServerIP    := Copy(sError_Msg, 1, Pos(':', sError_Msg) - 1);
        ServerPort  := StrToInt(Copy(sError_Msg, Pos(':', sError_Msg) + 1, Length(sError_Msg)));
        Re_Login;
    End;

    If sError = '00000' Then
    Begin
        UserKind     := Trim(Copy(sBody, Pos(#02, sBody) + 1, 2));
        UserDan      := Trim(Copy(sBody, Pos(#02, sBody) + 3, 6));
        UserDanLong  := Trim(Copy(sBody, Pos(#02, sBody) + 8, 6));
        UserDanMMS   := Trim(Copy(sBody, Pos(#02, sBody) + 13, 7));
        gOShotCharge := Trim(Copy(sBody, Pos(#02, sBody) + 20, 8));
        Result := True;
    End Else
    Begin
      GMessagebox('[AllShot]' + Trim(sError_Msg), CDMSE);
    End;
  except
    Result := False;
  end;
end;

function Re_Login_XML(sSendTxt, sGubun : AnsiString; Socket : TIdTCPClient) : string;
var sResult, reseverMsg : AnsiString;
    function XML_Send(sSendTxt : AnsiString) : string;
    var TxXml, temp, ls_msg, rv_str : AnsiString;
        li_Pos_SOH, irvCount, nSize : integer;
        lBSendTxt : TBytes;
        lBRecvTxt : TIdBytes;
    begin
        Try
            Socket.Disconnect;
            If Not Socket.Connected Then
            Begin
              Socket.Disconnect;
              Socket.Connect;
            End;
            TxXml := Copy(sSendTxt, 1, Pos(#03, sSendTxt));
            TxXml := UTF8Encode(sSendTxt);
            lBSendTxt := TEncoding.ANSI.GetBytes(TxXml);
            Socket.IOHandler.Write(RawToBytes(lBSendTxt[0], Length(lBSendTxt)));
        Except
            On E : Exception Do
            Begin
                ls_msg := '서버접속 중 문제가 발생했습니다.' + #13#10 + E.Message;
                GMessagebox('[AllShot]' + ls_msg, CDMSW);
                Result := '';
                Exit;
            End;
        End;

        //수신하기
        Try
            irvCount := 0;
            While Pos(ETX, rv_str) <= 0 Do
            Begin
              If (irvCount > 100) And (rv_str = '') Then
              Begin
                  Result := '';
                  Exit;
              End;
              Socket.IOHandler.CheckForDataOnSource(80);
              nSize := Socket.IOHandler.InputBuffer.Size;
              SetLength(lBRecvTxt, nSize);
              Socket.IOHandler.ReadBytes(lBRecvTxt, nSize, False);
              Temp := TEncoding.ANSI.GetString(TBytes(lBRecvTxt));
              rv_str := rv_str + temp;
              temp := '';
              Sleep(10);
              inc(irvCount);
            End;

            If rv_str = '' Then
            Begin
              Result := '';
              Exit;
            End;

            li_Pos_SOH := 0;
            li_Pos_SOH := Pos(#1, rv_str);
            If li_Pos_SOH > 0 Then
               Result := rv_str
            Else
               Result := '';
        Except
            On E: Exception Do
            Begin
              ls_msg := '서버수신 중 문제가 발생했습니다' + #13#10 + E.Message;
              GMessagebox('[AllShot]' + ls_msg, CDMSW);
              Result :='';
              Exit;
            End
        End;
    end;
begin
    Result := '';
    If sSendTxt <> '' Then
    Begin
      reseverMsg := RPAD('Messenger', 50, ' ');
      sSendTxt := #1 + Ver + sGubun + AnsiString(RPAD(IntToStr(Length(sSendTxt)), 8, ' ')) + AnsiString(RPAD(' ', 5, ' ')) + AnsiString(RPAD(reseverMsg, 50, ' '))
               +  #2 + sSendTxt + #3;
      sResult := Xml_Send(sSendTxt)
    End;
    Result := sResult;
end;

function Trans_XML(sSendTxt, sGubun : AnsiString; Socket : TIdTCPClient) : string;
var sResult, reseverMsg, sDate, sSendTmp : AnsiString;
    TmpImg : Array of AnsiChar;
    TmpByte : TBytes;

  function XML_Send(sSendTxt, GB : AnsiString; Var btImage : TBytes) : string;
  var TxXml, temp, ls_msg, rv_str : AnsiString;
      li_Pos_SOH, irvCount, nSize, nStart : integer;
      lBSendTxt : TBytes;
      lBRecvTxt : TIdBytes;
  begin
    Try
      If (Trim(GB) = '1010') or (Trim(GB) = '1090') or (Trim(GB) = '1092') or (Trim(GB) = '1096') Then
      Begin
        Socket.Disconnect;
        If Not Socket.Connected Then
        Begin
          Socket.Connect;
        End;
      End;
      TxXml := Copy(sSendTxt, 1, Length(sSendTxt));
      TxXml := UTF8Encode(sSendTxt);
      lBSendTxt := TEncoding.ANSI.GetBytes(TxXml);

      if Trim(GB) = '2030' then  // 이미지를 바로 Btye 형식으로 보내야 하므로 이렇게 처리
      begin
        nStart := Length(lBSendTxt);
        SetLength(lBSendTxt, Length(lBSendTxt)+ Length(btImage));
        Move(btImage[0], lBSendTxt[nStart], Length(btImage));
      end;

      Socket.IOHandler.Write(RawToBytes(lBSendTxt[0], Length(lBSendTxt)));
     Except
      On E : Exception Do
      Begin
        ls_msg := '서버접속 중 문제가 발생했습니다.' + #13#10 + E.Message;
        GMessagebox('[AllShot]' + ls_msg, CDMSW);
        Result := '';
        Exit;
      End;
    End;

    //수신하기
    Try
      irvCount := 0;
      While Pos(ETX, rv_str) <= 0 Do
      Begin
        If (irvCount > 100) And (rv_str = '') Then Exit;
        Socket.IOHandler.CheckForDataOnSource(80);
        nSize := Socket.IOHandler.InputBuffer.Size;
        SetLength(lBRecvTxt, nSize);
        Socket.IOHandler.ReadBytes(lBRecvTxt, nSize, False);
        Temp := TEncoding.ANSI.GetString(TBytes(lBRecvTxt));
        rv_str := rv_str + Temp;
        Temp := '';
        Sleep(10);
        Inc(irvCount);
      End;

      If rv_str = '' Then
      Begin
        Result := '';
        Exit;
      End;

      li_Pos_SOH := 0;
      li_Pos_SOH := Pos(#1, rv_str);
      If li_Pos_SOH > 0 Then
         Result := rv_str
      Else
         Result := '';

    Except
      On E: Exception Do
      Begin
        ls_msg := '서버수신 중 문제가 발생했습니다' + #13#10 + E.Message;
        GMessagebox('[AllShot]' + ls_msg, CDMSW);
        Result :='';
        Exit;
      End
    End;
  end;
begin
  Result := '';

//--------------------------------------------------------------------------------
//    로그인시만 날짜요청(2008-02-22 -> 80222)
//    로그인시만 버전체크(2012-05-23 -> 30000) => 30000번 이상으로 체크, SVer로 수정 -> LYB
//--------------------------------------------------------------------------------
    sDate := AnsiRPAD(' ',5,' ');
    If sSendTxt <> '' Then
    Begin
        If Trim(sGubun) = '1010' Then
        begin
           reseverMsg := AnsiRPAD('Messenger', 50, ' ');
           sDate := SVer;
        end Else
        If Trim(sGubun) = '1020' Then
        begin
           reseverMsg := AnsiRPAD(GT_USERIF.MC, 50, ' ')
        end else
        if Trim(sGubun) = '1096' then   //로그인
        begin
           reseverMsg := AnsiRPAD('Messenger', 50, ' ');
           sDate := SVer;
        end
        Else
           reseverMsg := AnsiRPAD(' ', 50, ' ');

        if Trim(sGubun) = '2030' then
        begin
          SetLength(TmpImg, m_Imagesize+1);
          Move(m_ImageBuffer[0], TmpImg[0], m_Imagesize+1);
          TmpByte := TBytes(TmpImg);
          TmpByte[m_Imagesize] := Ord(#3);

          sSendTmp := #1 + Ver + sGubun + AnsiRPAD(IntToStr(m_Imagesize + 13 ), 8, ' ') + sDate + AnsiRPAD(reseverMsg, 50, ' ') +
                      #2 + AnsiRPAD(IntToStr(m_Imagesize), 10, ' ') + AnsiString('Jpg');
        end else
        if Trim(sGubun) = '1024' then
        begin
          sSendTmp := #1 + Ver + sGubun + AnsiRPAD(IntToStr(Length(sSendTxt)), 8, ' ') + sDate + AnsiRPAD(reseverMsg, 50, ' ') +
                      #2 + sSendTxt + #3;
        end Else
        begin
          sSendTmp := #1 + Ver + sGubun + AnsiRPAD(IntToStr(Length(sSendTxt)), 8, ' ') + sDate + AnsiRPAD(reseverMsg, 50, ' ') +
                      #2 + sSendTxt + #3;
        end;
        sResult := Xml_Send(sSendTmp, sGubun, TmpByte);
    End;
    Result := sResult;
end;

end.

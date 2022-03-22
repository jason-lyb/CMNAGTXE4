unit xe_RoadAddr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinMetropolisDark, dxSkinOffice2007Silver, dxSkinOffice2010Silver,
  dxSkinSharp, cxGroupBox, Vcl.Menus, cxButtons, Vcl.ExtCtrls, cxTextEdit,
  cxLabel, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, IdSSLOpenSSL, System.JSON, IdHTTP,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL;

type
  Tfrm_RoadAddr = class(TForm)
    pnl_Main: TcxGroupBox;
    Pnl_Title: TPanel;
    BtnClose: TcxButton;
    pnl_Bottom: TcxGroupBox;
    pnl_Top: TcxGroupBox;
    btn_Addr: TcxButton;
    edt_Addr: TcxTextEdit;
    cxLabel1: TcxLabel;
    pnl_Grid: TcxGroupBox;
    btnSetAddr: TcxButton;
    cxLabel2: TcxLabel;
    edt_RoadAddr2: TcxTextEdit;
    cxLabel4: TcxLabel;
    lb_RoadAddr1: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    cxGridKeyPhone: TcxGrid;
    cxGridRoadAddr: TcxGridDBTableView;
    cxColView1Column1: TcxGridDBColumn;
    cxColView1Column2: TcxGridDBColumn;
    cxColView1Column3: TcxGridDBColumn;
    cxLevelKeyPhone: TcxGridLevel;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    procedure edt_AddrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_AddrClick(Sender: TObject);
    procedure Pnl_TitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGridRoadAddrCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure btnSetAddrClick(Sender: TObject);
    procedure edt_RoadAddr2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure proc_RoadAddr(AAddr: string);
  public
    { Public declarations }
    procedure proc_init;
  end;

var
  frm_RoadAddr: Tfrm_RoadAddr;

implementation

uses uLkJSON, xe_func, xe_gnl, xe_Msg, xe_CMP01;
{$R *.dfm}

procedure Tfrm_RoadAddr.btnSetAddrClick(Sender: TObject);
begin
  if btnSetAddr.Hint = '' then
  begin
    GMessagebox('도로명주소가 정확하지 않습니다.' +CRLF+CRLF
                    + '다시 선택 해주세요', CDMSE);
    exit;    
  end;
  if lb_RoadAddr1.Caption = '' then
  begin
    GMessagebox('도로명주소가 정확하지 않습니다.' +CRLF+CRLF
                    + '다시 선택 해주세요', CDMSE);
    exit;    
  end;
  if Assigned(Frm_CMP01) and ( Frm_CMP01 <> Nil ) then
  begin
    Frm_CMP01.edtBaseZipCode.Text    := btnSetAddr.Hint;
    Frm_CMP01.edtBaseAddr.Text       := lb_RoadAddr1.Caption;
    Frm_CMP01.edtBaseAddrDetail.Text := edt_RoadAddr2.Text;

    BtnClose.Click;
  end;

end;

procedure Tfrm_RoadAddr.BtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_RoadAddr.btn_AddrClick(Sender: TObject);
begin
  proc_RoadAddr(edt_Addr.text);
end;

procedure Tfrm_RoadAddr.cxGridRoadAddrCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var iRow, iPos : integer;
  sTmp : string;
  slTmp : TStringList;
begin
  iRow := cxGridRoadAddr.DataController.FocusedRecordIndex;
  if iRow < 0 then exit;

  slTmp := TStringList.Create;
  Try
    sTmp := cxGridRoadAddr.DataController.Values[iRow, 1] ;
    iPos := Pos(CRLF, sTmp);
    if iPos > 0 then
    begin
      sTmp := Copy(sTmp, 1, iPos-1);
    
      lb_RoadAddr1.Caption := sTmp;
      btnSetAddr.Hint := cxGridRoadAddr.DataController.Values[iRow, 2] ;
      edt_RoadAddr2.Setfocus;
    end;
  Finally
    slTmp.Free;
  End;
end;

procedure Tfrm_RoadAddr.edt_AddrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_Return then btn_Addr.Click;

end;

procedure Tfrm_RoadAddr.edt_RoadAddr2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_Return then btnSetAddr.Click;      
end;

procedure Tfrm_RoadAddr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrm_RoadAddr.FormCreate(Sender: TObject);
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
end;

procedure Tfrm_RoadAddr.FormDestroy(Sender: TObject);
begin
  frm_RoadAddr := Nil;
end;

procedure Tfrm_RoadAddr.FormShow(Sender: TObject);
begin
  proc_init;
end;

procedure Tfrm_RoadAddr.Pnl_TitleMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_RoadAddr.proc_init;
var I: Integer;
begin
  for i := 0 to cxGridRoadAddr.ColumnCount - 1 do
  begin
    if i in [0] then
      cxGridRoadAddr.Columns[i].DataBinding.ValueType := 'Integer' 
    else
      cxGridRoadAddr.Columns[i].DataBinding.ValueType := 'String';
  end;
  cxGridRoadAddr.DataController.SetRecordCount(0);
  edt_addr.text := '';
  lb_RoadAddr1.Caption := '';
  edt_RoadAddr2.text := '';
  btnSetAddr.Hint := '';
  edt_addr.SetFocus;
end;

procedure Tfrm_RoadAddr.proc_RoadAddr(AAddr: string);
var
  bPass : Boolean;
  IdHTTP : TIdHttp;
  sHttp, wURL, sKey, sTmp : String;

	alat, alon : double;

  js : TlkJSONobject;
	ja, jb : TlkJSONlist;

  i, iRow, iCnt : Integer;
  str, sx, sy, swx, swy, sXX, sCate : string;
	sAddress : string;
	LHandler: TIdSSLIOHandlerSocketOpenSSL;
  Stream: TStringStream;
begin
	SetDebugeWrite('JON30.proc_PortalD_GetPOI');
  try
//https://www.juso.go.kr/addrlink/addrLinkApi.do?currentPage=1&countPerPage=10&keyword=%EB%82%A8%ED%98%84%EB%8F%991054-17
//&confmKey=U01TX0FVVEgyMDIxMTEwNDE0MjUxMzExMTg0MTE=

    sKey := 'U01TX0FVVEgyMDIxMTEwNDE0MjUxMzExMTg0MTE=';
    sHttp := Format('https://www.juso.go.kr/addrlink/addrLinkApi.do?currentPage=1&countPerPage=300&keyword=%s' 
                  + '&confmKey=%s&resultType=json ',
             [UrlEncode(UTF8Encode(trim(AAddr))), sKey]);

    IdHTTP := TIdHttp.Create(nil);
    Stream  := TStringStream.Create();
    try
      wURL := '';

      try
				IdSSLIOHandlerSocketOpenSSL1.sslOptions.VerifyMode := [];
				IdSSLIOHandlerSocketOpenSSL1.sslOptions.VerifyDepth := 0;
				IdSSLIOHandlerSocketOpenSSL1.sslOptions.SSLVersions := [sslvSSLv23,sslvTLSv1,sslvTLSv1_1,sslvTLSv1_2];
				IdSSLIOHandlerSocketOpenSSL1.sslOptions.Mode := sslmUnassigned;
				IdSSLIOHandlerSocketOpenSSL1.PassThrough := False;     // do TLS handshake upon connect
        try

          IdHTTP.IOHandler := IdSSLIOHandlerSocketOpenSSL1;
          wURL := IdHTTP.Get(sHttp);
        except on E: Exception do
          begin
            Assert(False, 'RoadAddr: Error - ' + Trim(wURL));
            wURL := '';
            Log('RoadAddr Error : ' + e.Message, LOGDATAPATHFILE);
          end;
        end;
      finally
				LHandler.Free;
      end;
    finally
      Stream.Free;
      IdHTTP.Free;
    end;

		if Trim(wURL) <> '' then
    begin

      js := TlkJSON.ParseText(wURL) as TlkJSONobject;
      try
        sTmp := js.Field['results'].Field['common'].Field['errorMessage'].Value;
        if sTmp <> '정상' then
        begin
   				GMessagebox('도로명주소 검색 시 오류가 발생하였습니다.' +CRLF+CRLF
                    + '[' + sTmp + ']', CDMSE);
        end;
        sTmp := js.Field['results'].Field['common'].Field['totalCount'].Value;
        if strToIntDef(sTmp, 0) > 0 then
        begin
          jb := js.Field['results'].Field['juso'] as TlkJSONlist;
          iRow := 0; iCnt := 1;
          cxGridRoadAddr.DataController.SetRecordCount(0);
          cxGridRoadAddr.BeginUpdate;
          for i := 0 to jb.Count - 1 do
          begin
          
            if jb.Child[i].Field['roadAddr'].Value <> '' then
            begin
              iRow := cxGridRoadAddr.DataController.AppendRecord;

              cxGridRoadAddr.DataController.Values[iRow, 0] := iCnt;
              sTmp := jb.Child[i].Field['roadAddr'].Value + CRLF + jb.Child[i].Field['jibunAddr'].Value;
              cxGridRoadAddr.DataController.Values[iRow, 1] := sTmp;
              sTmp := jb.Child[i].Field['zipNo'].Value;
              cxGridRoadAddr.DataController.Values[iRow, 2] := sTmp;
              inc(iCnt);
            end;
          end;
        end;
      finally
        cxGridRoadAddr.EndUpdate;
        js.Free;
      end;
    end;
	except on E: Exception do
    begin
      Assert(False, 'proc_Portal_GetPOID_GetPOI Error : ' + sAddress + ' / ' + E.Message);
    end;
  end;
end;

end.

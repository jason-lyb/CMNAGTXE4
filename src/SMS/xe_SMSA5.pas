unit xe_SMSA5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MSXML2_TLB, IniFiles, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, cxControls, cxContainer, cxEdit, cxTextEdit,
  Vcl.ExtCtrls, cxMemo, cxListBox, cxGroupBox, Vcl.ImgList, cxCheckBox,
  Vcl.StdCtrls, cxLabel, cxButtons, AdvProgressBar, dxSkinsCore,
  dxSkinDevExpressStyle, System.ImageList;

type
  TFrm_SMSA5 = class(TForm)
    dlgOpen: TOpenDialog;
    pnl6: TPanel;
    pnl7: TPanel;
    pnl8: TPanel;
    lbl16: TLabel;
    lblNoRecvCount: TLabel;
    lbl18: TcxLabel;
    lbl19: TcxLabel;
    btnAddNoRecv: TcxButton;
    btnNoRecvSearch: TcxButton;
    btnRegNoRecv: TcxButton;
    btnDelNoRecv: TcxButton;
    chkNotSms: TcxCheckBox;
    ilDown: TImageList;
    pnl_file_add: TPanel;
    pnl_WkList: TPanel;
    pnl_WkList_Condition: TPanel;
    lbl22: TLabel;
    btn3: TcxButton;
    btn4: TcxButton;
    pnl12: TPanel;
    lbl_excel_cnt: TLabel;
    pnl13: TPanel;
    btn5: TcxButton;
    btn6: TcxButton;
    pnlNoRecvMsg: TPanel;
    PnlMainA5: TPanel;
    cxGroupBox1: TcxGroupBox;
    lstNoRecvFileAdd: TcxListBox;
    mmo_file_path: TcxMemo;
    cxLabel3: TcxLabel;
    Shape2: TShape;
    cxLabel1: TcxLabel;
    Shape1: TShape;
    edtNoRecvSearch: TcxTextEdit;
    pnlSmsStatus: TPanel;
    grp5: TcxGroupBox;
    lbl21: TcxLabel;
    Label4: TcxLabel;
    pb1: TAdvProgressBar;
    lstNoRecvList: TcxListBox;
    mmoAddNoRecv: TcxMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnAddNoRecvClick(Sender: TObject);
    procedure chkNotSmsClick(Sender: TObject);
    procedure btnNoRecvSearchClick(Sender: TObject);
    procedure btnRegNoRecvClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure edtNoRecvSearchKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure cxGroupBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnDelNoRecvClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FNoRecvDispList: Boolean;
    FNoRecvList: TStringList;
    procedure DisplayPageNoRecv;
    procedure proc_init_norecv;
  public
    { Public declarations }
  end;

var
  Frm_SMSA5: TFrm_SMSA5;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_XmlProtocal, xe_xml, xe_Flash, xe_system;


procedure TFrm_SMSA5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(FNoRecvList) then FreeAndNil(FNoRecvList);

  Action := Cafree;
end;

procedure TFrm_SMSA5.FormCreate(Sender: TObject);
begin
  FNoRecvList := TStringList.Create;
  FNoRecvList.Duplicates := dupIgnore;
  FNoRecvList.Sorted := True;
end;

procedure TFrm_SMSA5.FormDestroy(Sender: TObject);
begin
  Frm_SMSA5 := Nil;
end;

procedure TFrm_SMSA5.FormShow(Sender: TObject);
begin
  DisplayPageNoRecv;
end;

procedure TFrm_SMSA5.DisplayPageNoRecv;
begin
  proc_init_norecv;
end;

procedure TFrm_SMSA5.proc_init_norecv;
var
  I: Integer;
  Msg: string;
begin
  if (FileExists(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT')) and (FNoRecvList.Count > 0) then
    Exit;

  //----------------------------------------------------------------------------------------------
  // PC에 저장된 수신거부자 저장
  //----------------------------------------------------------------------------------------------
  DoubleBuffered := True;

  // [hjf] SMS_NOT_ARGEE.DAT(구버젼 초기 수신거부파일타입)에 대한 로직 제거(김지호 대리 결정)
  if (FNoRecvList.Count = 0) and (FileExists(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT')) then
  begin
    pnlSmsStatus.Left := (frm_main.Width - pnlSmsStatus.Width) div 2;
    pnlSmsStatus.Top := ((frm_main.Height - pnlSmsStatus.Height) div 2) - Self.Top;
    pnlSmsStatus.Caption := '수신거부 리스트를 불러옵니다.';
    pnlSmsStatus.Visible := True;
    Application.ProcessMessages;
    FNoRecvList.LoadFromFile(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT');
  end;

  if pos('-', FNoRecvList.Text) > 0 then
  begin
    FNoRecvList.Text := StringReplace(FNoRecvList.Text, '-', '', [rfReplaceAll]);
    FNoRecvList.SaveToFile(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT');
  end;

  if FNoRecvList.Count > 10 * 10000 then
  begin
    Msg := '수신거부 목록이 많아 화면에 표시할 경우 오래걸릴 수 있습니다.'
            + #13#10'화면에 표시하시겠습니까?'
            + #13#10#13#10'(화면에 표시하지 않아도 수신거부회원 제거는 정상처리 됩니다.)';

    if Application.MessageBox(PChar(Msg), CDMSI, MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = ID_YES then
    begin
      FNoRecvDispList := True;

      pb1.Visible := True;
      pb1.Max := FNoRecvList.Count;
      lstNoRecvList.Items.BeginUpdate;
      try
        for I := 0 to FNoRecvList.Count - 1 do
        begin
          lstNoRecvList.Items.Add(FNoRecvList[I]);
          pb1.Position := I + 1;
        end;
      finally
        lstNoRecvList.Items.EndUpdate;
      end;
    end else
    begin
      FNoRecvDispList := False;
    end;
  end else
  begin
    FNoRecvDispList := True;

    lstNoRecvList.Items.Assign(FNoRecvList);
  end;

  mmoAddNoRecv.Text := '';

  pnlNoRecvMsg.Visible := not FNoRecvDispList;
  pnlNoRecvMsg.BringToFront;

  lblNoRecvCount.Caption := '총  ' + IntToStr(FNoRecvList.Count - 1) + '명';
  pnlSmsStatus.Visible := False;
  pb1.Visible := False;
end;

procedure TFrm_SMSA5.btnAddNoRecvClick(Sender: TObject);
begin
  if Trim(mmoAddNoRecv.Text) = '' then Exit;

  DoubleBuffered := True;
  Application.ProcessMessages;

  try

    mmoAddNoRecv.Text := StringReplace(mmoAddNoRecv.Text, '-', '', [rfReplaceAll]);
    mmoAddNoRecv.Text := StringReplace(mmoAddNoRecv.Text, ' ', '', [rfReplaceAll]);

    FNoRecvList.AddStrings(mmoAddNoRecv.Lines);

    if FNoRecvList.IndexOf('0100') = -1 then
    begin
      FNoRecvList.Add('0100');
      FNoRecvList.Add('0101');
      FNoRecvList.Add('0102');
      FNoRecvList.Add('0103');
      FNoRecvList.Add('0104');
      FNoRecvList.Add('0105');
      FNoRecvList.Add('0106');
      FNoRecvList.Add('0107');
      FNoRecvList.Add('0108');
      FNoRecvList.Add('0109');
      FNoRecvList.Add('0110');
      FNoRecvList.Add('0160');
      FNoRecvList.Add('0170');
      FNoRecvList.Add('0180');
      FNoRecvList.Add('0190');
      FNoRecvList.Add('0200');
    end;
    if FNoRecvList.IndexOf('0100') > 0 then
    begin
      while FNoRecvList.Strings[0] <> '0100' do
      begin
        FNoRecvList.Delete(0);
      end;
    end;
    Application.ProcessMessages;
  finally
  end;

  Application.ProcessMessages;
  if FNoRecvDispList then
    lstNoRecvList.Items.Assign(FNoRecvList);
  edtNoRecvSearch.Text := '';
  mmoAddNoRecv.Lines.Clear;

  // 수신거부 파일에 저장
  FNoRecvList.SaveToFile(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT');

  lblNoRecvCount.Caption := '총  ' + IntToStr(FNoRecvList.Count - 1) + '명';
end;

procedure TFrm_SMSA5.chkNotSmsClick(Sender: TObject);
var
  ln_envfile: TInifile;
begin
  ln_envfile := TIniFile.Create(ENVPATHFILE);
  try
    if TcxCheckBox(Sender).Checked then
    begin
      ln_envfile.WriteString('TRANS_SMS', 'CALLMANNER', '1');
      GT_CALLMANNER_NOTSMS := 1;
    end else
    begin
      ln_envfile.WriteString('TRANS_SMS', 'CALLMANNER', '0');
      GT_CALLMANNER_NOTSMS := 0;
    end;
  finally
    FreeAndNil(ln_envfile);
  end;
end;

procedure TFrm_SMSA5.btnNoRecvSearchClick(Sender: TObject);
var
  i: integer;
  s: string;
begin
  pnlNoRecvMsg.Visible := False;
  lstNoRecvList.Items.Clear;

  if not FNoRecvDispList and (Length(Trim(edtNoRecvSearch.Text)) < 4) then
  begin
    ShowMessage('검색하실 전화번호를 4자리 이상으로 입력해주세요.');
    Exit;  
  end;

  if Trim(edtNoRecvSearch.Text) <> '' then
  begin
    lstNoRecvList.Items.Clear;
    for i := 0 to FNoRecvList.Count - 1 do
    begin
      s := FNoRecvList.Strings[i];
      if Pos(edtNoRecvSearch.Text, s) > 0 then
        lstNoRecvList.Items.Add(s);
    end;
  end;

  if lstNoRecvList.Items.Count = 0 then
  begin
    if FNoRecvDispList then
      lstNoRecvList.Items.Assign(FNoRecvList)
    else
    begin
      ShowMessage('검색 결과가 없습니다.');
      pnlNoRecvMsg.Visible := True;
      pnlNoRecvMsg.BringToFront;
      Exit;
    end;
  end;

  lblNoRecvCount.Caption := '총  ' + IntToStr(FNoRecvList.Count) + '명';
end;

procedure TFrm_SMSA5.btnRegNoRecvClick(Sender: TObject);
begin
  mmo_file_path.Text := '';
  lbl_excel_cnt.Caption := '총   000 명';
  lstNoRecvFileAdd.Items.Clear;
  pnl_file_add.Left := (frm_main.Width - pnl_file_add.Width) div 2;
  pnl_file_add.top := ((frm_main.Height - pnl_file_add.Height) div 2) -
    Self.Top;
  pnl_file_add.Visible := True;
  pnl_file_add.BringToFront;
end;

procedure TFrm_SMSA5.btn3Click(Sender: TObject);
var
  sList: TstringList;
begin
  try
    sList := TStringList.Create;
    try
      sList.Sorted := True;
      sList.Duplicates := dupignore;
      dlgOpen.Filter := '텍스트파일|*.txt';
      if dlgOpen.Execute then
      begin
        Application.ProcessMessages;
        pnlSmsStatus.Left := (frm_main.Width - pnlSmsStatus.Width) div 2;
        pnlSmsStatus.Top := ((frm_main.Height - pnlSmsStatus.Height) div 2) - Self.Top;
        pnlSmsStatus.Caption := '파일을 불러옵니다.';
        pnlSmsStatus.Visible := True;
        Application.ProcessMessages;
        sList.LoadFromFile(dlgOpen.FileName);
        sList.Text := StringReplace(sList.Text, '-', '', [rfReplaceAll]);
        sList.Text := StringReplace(sList.Text, ' ', '', [rfReplaceAll]);
      end;

      mmo_file_path.Text := dlgOpen.FileName;
      lstNoRecvFileAdd.Items.Assign(sList);
      Application.ProcessMessages;
    finally
      FreeAndNil(sList);
    end;
    lbl_excel_cnt.Caption := '총 ' + IntToStr(lstNoRecvFileAdd.items.Count) + ' 명';
    pnlSmsStatus.Visible := False;
  except
  end;
end;

procedure TFrm_SMSA5.btn4Click(Sender: TObject);
begin
  if lstNoRecvFileAdd.SelCount = 0 then
    Exit;
  lstNoRecvFileAdd.DeleteSelected;
end;

procedure TFrm_SMSA5.btn6Click(Sender: TObject);
begin
  pnl_file_add.Visible := False;
end;

procedure TFrm_SMSA5.btn5Click(Sender: TObject);
begin
  if mmo_file_path.Text = '' then
  begin
    ShowMessage('파일을 먼저 선택해 주세요.');
    Exit;
  end;

  DoubleBuffered := True;

  pnlSmsStatus.Left := (frm_main.Width - pnlSmsStatus.Width) div 2;
  pnlSmsStatus.Top := ((frm_main.Height - pnlSmsStatus.Height) div 2) - Self.Top;
  pnlSmsStatus.Caption := '불러온 파일을 추가합니다.';
  pnlSmsStatus.Visible := True;
  try
    Application.ProcessMessages;

    try
      if FNoRecvList.IndexOf('0100') = -1 then
      begin
        FNoRecvList.Add('0100');
        FNoRecvList.Add('0101');
        FNoRecvList.Add('0102');
        FNoRecvList.Add('0103');
        FNoRecvList.Add('0104');
        FNoRecvList.Add('0105');
        FNoRecvList.Add('0106');
        FNoRecvList.Add('0107');
        FNoRecvList.Add('0108');
        FNoRecvList.Add('0109');
        FNoRecvList.Add('0110');
        FNoRecvList.Add('0160');
        FNoRecvList.Add('0170');
        FNoRecvList.Add('0180');
        FNoRecvList.Add('0190');
        FNoRecvList.Add('0200');
      end;
      
      if FNoRecvList.IndexOf('0100') > 0 then
      begin
        while FNoRecvList.Strings[0] <> '0100' do
        begin
          FNoRecvList.Delete(0);
        end;
      end;
      Application.ProcessMessages;
    finally
    end;
    Application.ProcessMessages;

    FNoRecvList.AddStrings(lstNoRecvFileAdd.Items);
    if FNoRecvDispList then
      lstNoRecvList.Items.Assign(FNoRecvList);

    edtNoRecvSearch.Text := '';

    FNoRecvList.SaveToFile(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT');

    lblNoRecvCount.Caption := '총  ' + IntToStr(FNoRecvList.Count - 1) + '명';
  finally
    pnlSmsStatus.Visible := False;
  end;
  pnl_file_add.Visible := False;
end;

procedure TFrm_SMSA5.btnDelNoRecvClick(Sender: TObject);
var
  I, Idx: Integer;
begin
  try
    if lstNoRecvList.SelCount = 0 then
      Exit;

    pnlSmsStatus.Left := (frm_main.Width - pnlSmsStatus.Width) div 2;
    pnlSmsStatus.Top := ((frm_main.Height - pnlSmsStatus.Height) div 2) - Self.Top;
    pnlSmsStatus.Caption := '선택 리스트를 삭제합니다.';

    for I := lstNoRecvList.Items.Count - 1 downto 0 do
    begin
      if lstNoRecvList.Selected[I] then
      begin
        Idx := FNoRecvList.IndexOf(lstNoRecvList.Items[I]);
        if Idx > -1 then
        begin
          FNoRecvList.Delete(Idx);
        end;
        lstNoRecvList.Items.Delete(I);
      end;
    end;

    FNoRecvList.SaveToFile(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT');
    lblNoRecvCount.Caption := '총  ' + IntToStr(FNoRecvList.Count - 1) + '명';
    pnlSmsStatus.Visible := False;
  except on E: Exception do
    GMessagebox(Format('수신거부 파일 삭제 시 오류가 발생했습니다.'#13#10'(오류: %s)', [E.Message]), CDMSE);
  end;
end;

procedure TFrm_SMSA5.edtNoRecvSearchKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    btnNoRecvSearch.Click;
end;

procedure TFrm_SMSA5.cxGroupBox1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(pnl_file_add.Handle, WM_SYSCOMMAND, $F012, 0);
end;

end.

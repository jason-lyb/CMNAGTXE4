unit xe_JON51;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, AdvObj, dxCore,
  BaseGrid, AdvGrid, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxLabel, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGroupBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, dxSkinsCore, dxSkinscxPCPainter, AdvUtil,
  cxCheckBox, cxSplitter, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp,
  dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_JON51 = class(TForm)
    PnlLeft: TPanel;
    cxLabel54: TcxLabel;
    Shape2: TShape;
    EdtSearch: TcxTextEdit;
    grpMenuS: TcxGroupBox;
    cxGridSch: TcxGrid;
    cxGridSchView: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    AdvGridMenu: TAdvStringGrid;
    BtnSearch: TcxButton;
    cxGridDBColumn3: TcxGridDBColumn;
    PnlMain: TPanel;
    cxGridDBColumn4: TcxGridDBColumn;
    cxBtnAllClose: TcxButton;
    BtncxPage8E: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvGridMenuGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure AdvGridMenuGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure AdvGridMenuClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure BtnSearchClick(Sender: TObject);
    procedure cxGridSchViewCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure EdtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridSchViewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxBtnAllCloseClick(Sender: TObject);
    procedure AdvGridMenuMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetGrantCheck;
    procedure Menu_Use_Mark(AGubun : string; ATag : integer);
  end;

var
  Frm_JON51: TFrm_JON51;

implementation

{$R *.dfm}

uses Main, xe_Msg, xe_Func, xe_SearchWord, xe_GNL;

procedure TFrm_JON51.AdvGridMenuClickCell(Sender: TObject; ARow, ACol: Integer);
Var iTag : Integer;
    sText : String;
begin
  try
    if Trim(AdvGridMenu.Cells[ACol+1, ARow]) = '' then Exit;
    if Trim(AdvGridMenu.Cells[ACol  , ARow]) = '' then Exit;

    if AdvGridMenu.Cells[ACol+1, ARow] <> '1' then
    begin
      ShowMessage('������ �����ϴ�.');
      Exit;
    end;

    iTag := StrToIntDef(AdvGridMenu.Cells[ACol-1, ARow], 0);
    if iTag = 0 then Exit;

    PnlLeft.Enabled := False;
    try
      sText := AdvGridMenu.Cells[ACol, ARow];
      case iTag of
        100, 200, 301 : Frm_Main.procMainMenuCreateActive(iTag);
      else
         Frm_Main.procMenuCreateActive(iTag, sText);
      end;
    finally
      PnlLeft.Enabled := True;
      Menu_Use_Mark('ADD', iTag);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON51.AdvGridMenuGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  if ARow = 0 then HAlign := taCenter;

  if (ACol = 01) And (ARow = 02) then HAlign := taCenter;
  if (ACol = 01) And (ARow = 13) then HAlign := taCenter;

  if (ACol = 05) And (ARow = 02) then HAlign := taCenter;
  if (ACol = 05) And (ARow = 15) then HAlign := taCenter;

  if (ACol = 09) And (ARow = 02) then HAlign := taCenter;
  if (ACol = 09) And (ARow = 09) then HAlign := taCenter;

  if (ACol = 13) And (ARow = 02) then HAlign := taCenter;

  if (ACol = 17) And (ARow = 02) then HAlign := taCenter;
  if (ACol = 17) And (ARow = 12) then HAlign := taCenter;

  if (ACol = 21) And (ARow = 09) then HAlign := taCenter;
end;

procedure TFrm_JON51.AdvGridMenuGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  try
    if ( Copy(AdvGridMenu.Cells[ACol-1, ARow], 1, 2) = '10' ) Or
       ( Copy(AdvGridMenu.Cells[ACol-1, ARow], 1, 2) = '20' ) Or
       ( Copy(AdvGridMenu.Cells[ACol-1, ARow], 1, 2) = '11' ) Or
       ( Copy(AdvGridMenu.Cells[ACol-1, ARow], 1, 2) = '12' ) Or
       ( Copy(AdvGridMenu.Cells[ACol-1, ARow], 1, 2) = '13' ) then ABrush.Color := $0065C1FF;

    if Copy(AdvGridMenu.Cells[ACol-1, ARow], 1, 1) = '3'  then ABrush.Color := $00FFFFCC;  //������
    if Copy(AdvGridMenu.Cells[ACol-1, ARow], 1, 1) = '7'  then ABrush.Color := $00CC99FF;  //������
    if Copy(AdvGridMenu.Cells[ACol-1, ARow], 1, 1) = '4'  then ABrush.Color := $0099CCFF;  //������
    if Copy(AdvGridMenu.Cells[ACol-1, ARow], 1, 1) = '8'  then ABrush.Color := $00FFAED6;  //ȸ�����, �۰���
    if Copy(AdvGridMenu.Cells[ACol-1, ARow], 1, 1) = '5'  then ABrush.Color := $00FFCC99;  //���ΰ���
    if Copy(AdvGridMenu.Cells[ACol-1, ARow], 1, 1) = '9'  then ABrush.Color := $00FFACFF;  //��������
    if Copy(AdvGridMenu.Cells[ACol-1, ARow], 1, 1) = '6'  then ABrush.Color := $0099FFFF;  //�������
    if Copy(AdvGridMenu.Cells[ACol-1, ARow], 1, 2) = '14' then ABrush.Color := $00EADEDD;  //��������,����
    if Copy(AdvGridMenu.Cells[ACol-1, ARow], 1, 2) = '10' then ABrush.Color := $0065C1FF;  //�������

    if Copy(AdvGridMenu.Cells[ACol+1, ARow], 1, 1) = '0'  then AFont.Color := clWhite;  //���Ѿ���
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON51.AdvGridMenuMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Frm_Main.iTmrBtmMenu := 0;
end;

procedure TFrm_JON51.BtnSearchClick(Sender: TObject);
Var i, iRow : Integer;
begin
  try
    cxGridSchView .DataController.SetRecordCount(0);
    if Trim(EdtSearch.Text) <> '' then
    begin
      cxGridSchView.BeginUpdate;

      for I := 0 to AdvGridMenu.RowCount - 1 do
      begin
        if Pos(Trim(EdtSearch.Text), AdvGridMenu.Cells[01, i]) > 0 then
        begin
          if ( AdvGridMenu.Cells[00, i] = '300' ) Or
             ( AdvGridMenu.Cells[00, i] = '1000' ) then Continue;

    			iRow := cxGridSchView.DataController.AppendRecord;
          cxGridSchView.DataController.Values[iRow, 0] := AdvGridMenu.Cells[00, i];
          if copy(AdvGridMenu.Cells[00, i],1,1) = '3' then
            cxGridSchView.DataController.Values[iRow, 1] := '������'
          else if copy(AdvGridMenu.Cells[00, i],1,2) = '10' then
            cxGridSchView.DataController.Values[iRow, 1] := '�������' ;
          cxGridSchView.DataController.Values[iRow, 2] := AdvGridMenu.Cells[01, i];
          cxGridSchView.DataController.Values[iRow, 3] := AdvGridMenu.Cells[02, i];
        end;
      end;

      for I := 0 to AdvGridMenu.RowCount - 1 do
      begin
        if Pos(Trim(EdtSearch.Text), AdvGridMenu.Cells[05, i]) > 0 then
        begin
          if ( AdvGridMenu.Cells[04, i] = '400' ) Or
             ( AdvGridMenu.Cells[04, i] = '800' ) then Continue;

    			iRow := cxGridSchView.DataController.AppendRecord;
          cxGridSchView.DataController.Values[iRow, 0] := AdvGridMenu.Cells[04, i];
          if copy(AdvGridMenu.Cells[04, i],1,1) = '4' then
            cxGridSchView.DataController.Values[iRow, 1] := '������'
          else if copy(AdvGridMenu.Cells[04, i],1,1) = '8' then
            cxGridSchView.DataController.Values[iRow, 1] := 'ȸ�����' ;
          cxGridSchView.DataController.Values[iRow, 2] := AdvGridMenu.Cells[05, i];
          cxGridSchView.DataController.Values[iRow, 3] := AdvGridMenu.Cells[06, i];
        end;
      end;

      for I := 0 to AdvGridMenu.RowCount - 1 do
      begin
        if Pos(Trim(EdtSearch.Text), AdvGridMenu.Cells[09, i]) > 0 then
        begin
          if ( AdvGridMenu.Cells[08, i] = '500' ) Or
             ( AdvGridMenu.Cells[08, i] = '900' ) then Continue;

    			iRow := cxGridSchView.DataController.AppendRecord;
          cxGridSchView.DataController.Values[iRow, 0] := AdvGridMenu.Cells[08, i];
          if copy(AdvGridMenu.Cells[08, i],1,1) = '5' then
            cxGridSchView.DataController.Values[iRow, 1] := '���ΰ���'
          else if copy(AdvGridMenu.Cells[08, i],1,1) = '9' then
            cxGridSchView.DataController.Values[iRow, 1] := '��������' ;
          cxGridSchView.DataController.Values[iRow, 2] := AdvGridMenu.Cells[09, i];
          cxGridSchView.DataController.Values[iRow, 3] := AdvGridMenu.Cells[10, i];
        end;
      end;

      for I := 0 to AdvGridMenu.RowCount - 1 do
      begin
        if Pos(Trim(EdtSearch.Text), AdvGridMenu.Cells[13, i]) > 0 then
        begin
          if ( AdvGridMenu.Cells[12, i] = '600' ) then Continue;

    			iRow := cxGridSchView.DataController.AppendRecord;
          cxGridSchView.DataController.Values[iRow, 0] := AdvGridMenu.Cells[12, i];
          cxGridSchView.DataController.Values[iRow, 1] := '�������';
          cxGridSchView.DataController.Values[iRow, 2] := AdvGridMenu.Cells[13, i];
          cxGridSchView.DataController.Values[iRow, 3] := AdvGridMenu.Cells[14, i];
        end;
      end;

      for I := 0 to AdvGridMenu.RowCount - 1 do
      begin
        if Pos(Trim(EdtSearch.Text), AdvGridMenu.Cells[17, i]) > 0 then
        begin
          if ( AdvGridMenu.Cells[16, i] = '1400' ) then Continue;

    			iRow := cxGridSchView.DataController.AppendRecord;
          cxGridSchView.DataController.Values[iRow, 0] := AdvGridMenu.Cells[16, i];
          if ( strtoint(AdvGridMenu.Cells[16, i]) < 1409 ) Or ( strtoint(AdvGridMenu.Cells[16, i]) = 1414 ) then
            cxGridSchView.DataController.Values[iRow, 1] := '��������'
          else
            cxGridSchView.DataController.Values[iRow, 1] := '����';
          cxGridSchView.DataController.Values[iRow, 2] := AdvGridMenu.Cells[17, i];
          cxGridSchView.DataController.Values[iRow, 3] := AdvGridMenu.Cells[18, i];
        end;
      end;

      for I := 0 to AdvGridMenu.RowCount - 1 do
      begin
        if Pos(Trim(EdtSearch.Text), AdvGridMenu.Cells[21, i]) > 0 then
        begin
          if ( AdvGridMenu.Cells[20, i] = '800'  ) Or
             ( AdvGridMenu.Cells[20, i] = '700' ) then Continue;

    			iRow := cxGridSchView.DataController.AppendRecord;
          cxGridSchView.DataController.Values[iRow, 0] := AdvGridMenu.Cells[20, i];
          if copy(AdvGridMenu.Cells[20, i],1,1) = '8' then
            cxGridSchView.DataController.Values[iRow, 1] := '�۰���'
          else if copy(AdvGridMenu.Cells[20, i],1,1) = '7' then
            cxGridSchView.DataController.Values[iRow, 1] := '������' ;
          cxGridSchView.DataController.Values[iRow, 2] := AdvGridMenu.Cells[21, i];
          cxGridSchView.DataController.Values[iRow, 3] := AdvGridMenu.Cells[22, i];
        end;
      end;

      cxGridSchView.EndUpdate;

      cxGridSchView.Columns[1].SortOrder := soAscending;
  		cxGridSchView.Columns[1].SortIndex := 0;
  //    cxGridSchView.Columns[2].SortOrder := soAscending;
  //		cxGridSchView.Columns[2].SortIndex := 0;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON51.cxBtnAllCloseClick(Sender: TObject);
var i : integer;
begin
  if Application.MessageBox('��ü �޴��� �����ðڽ��ϱ�?' + #13#10 + '( ����â ���� )', '[�޴��ݱ�]', MB_ICONQUESTION + MB_OKCANCEL) = IDCANCEL then Exit;

  try
    Screen.Cursor := crHourGlass;
    For i := 0 to JON_MAX_CNT - 1 do
    begin
      if Frm_Main.JON01MNG[i].Use then
      begin
        if Assigned(Frm_Main.Frm_JON01N[i]) then
        begin
          Frm_Main.Frm_JON01N[i].btnCmdExit.Description := 'T';
          Frm_Main.Frm_JON01N[i].btnCmdExit.Click;
        end;
      end;
    end;

    while frm_Main.cxPageControl1.PageCount > 1 do
    begin
      frm_Main.cxPageControl1.CloseTab(1);
    end;

    cxGridSchView.BeginUpdate;
    for i := 0 to cxGridSchView.DataController.RecordCount -1 do
    begin
      if pos('��', cxGridSchView.DataController.Values[i, 2]) > 0 then
        cxGridSchView.DataController.Values[i, 2] := StringReplace(cxGridSchView.DataController.Values[i, 2], '��', '', [rfReplaceAll]);
    end;
    cxGridSchView.EndUpdate;
  finally
    Screen.Cursor := crDefault;
  end;
  cxGridSchView .DataController.SetRecordCount(0);
  EdtSearch.Text := '';
  EdtSearch.SetFocus;
end;

procedure TFrm_JON51.cxGridSchViewCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
Var iRow, iTag : Integer;
    sText : String;
begin
  try
    iRow := cxGridSchView.DataController.FocusedRecordIndex;

    if cxGridSchView.DataController.Values[iRow, 3] <> '1' then
    begin
      ShowMessage('������ �����ϴ�.');
      Exit;
    end;

    iTag := StrToIntDef(cxGridSchView.DataController.Values[iRow, 0], 0);
    if iTag = 0 then Exit;

    PnlLeft.Enabled := False;
    try
      sText := cxGridSchView.DataController.Values[iRow, 2];
      case iTag of
        100, 200, 301 : Frm_Main.procMainMenuCreateActive(iTag);
      else
         Frm_Main.procMenuCreateActive(iTag, sText);
      end;
    finally
      PnlLeft.Enabled := True;
      Menu_Use_Mark('ADD', iTag);
      cxGridSchView.BeginUpdate;
      if pos('��', cxGridSchView.DataController.Values[iRow, 2]) < 1 then
        cxGridSchView.DataController.Values[iRow, 2] := '��' + cxGridSchView.DataController.Values[iRow, 2];
      cxGridSchView.EndUpdate;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON51.cxGridSchViewKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var iRow, iTag : Integer;
    sText : String;
begin
  try
    if key in [VK_RETURN] then
    begin
      iRow := cxGridSchView.DataController.FocusedRecordIndex;

      if cxGridSchView.DataController.Values[iRow, 3] <> '1' then
      begin
        ShowMessage('������ �����ϴ�.');
        Exit;
      end;

      iTag := StrToIntDef(cxGridSchView.DataController.Values[iRow, 0], 0);
      if iTag = 0 then Exit;

      PnlLeft.Enabled := False;
      try
        sText := cxGridSchView.DataController.Values[iRow, 2];
        case iTag of
          100, 200, 301, 1100, 1200, 1300 : Frm_Main.procMainMenuCreateActive(iTag);
        else
           frm_Main.procMenuCreateActive(iTag, sText);
        end;
      finally
        PnlLeft.Enabled := True;
        Menu_Use_Mark('ADD', iTag);
        cxGridSchView.BeginUpdate;
        if pos('��', cxGridSchView.DataController.Values[iRow, 2]) < 1 then
          cxGridSchView.DataController.Values[iRow, 2] := '��' + cxGridSchView.DataController.Values[iRow, 2];
        cxGridSchView.EndUpdate;
      end;
      cxGridSch.SetFocus;
    end else
    if key in [VK_ESCAPE] then EdtSearch.SetFocus
    else
    if key in [VK_UP] then
    begin
      if cxGridSchView.Controller.FocusedRecordIndex = 0 then
         EdtSearch.SetFocus;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON51.EdtSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then BtnSearch.Click;
end;

procedure TFrm_JON51.EdtSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key in [VK_DOWN] then
  begin
    cxGridSch.SetFocus;
  end else
    BtnSearch.Click;
end;

procedure TFrm_JON51.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_JON51.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to cxGridSchView.ColumnCount - 1 do
  begin
    cxGridSchView.Columns[i].DataBinding.ValueType := 'String';
  end;

  cxGridSchView .DataController.SetRecordCount(0);

  PnlMain.Top := 0;
  AdvGridMenu.Width := 970;
  PnlLeft.Width := 1236;
end;

procedure TFrm_JON51.FormDestroy(Sender: TObject);
begin
  Frm_JON51 := Nil;
end;

procedure TFrm_JON51.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON51, GS_FONTNAME);
end;

procedure TFrm_JON51.Menu_Use_Mark(AGubun : string; ATag : integer);
var j, k, iRow : integer;
begin
  try
    if (ATag = 310) or (ATag = 311)  or (ATag = 1401) or (ATag = 1402) or (ATag = 1408)
                    or (ATag = 1409) or (ATag = 1410) or (ATag = 1411) or (ATag = 1412)
                    or (ATag = 1413) or (ATag = 1414) then Exit;

    for j := 0 to 20 do
    begin
      case j of
      0,4,8,12,16,20:
        begin
          cxGridSchView.BeginUpdate;
          for k := 1 to 22 do
          begin
            if inttostr(ATag) = AdvGridMenu.Cells[j,k] then
            begin
              if AGubun = 'ADD' then
              begin
                if pos('��', AdvGridMenu.Cells[j+1,k]) < 1 then
                  AdvGridMenu.Cells[j+1,k] := '��' + AdvGridMenu.Cells[j+1,k];
                iRow := cxGridSchView.DataController.FindRecordIndexByText(0, 2, StringReplace(AdvGridMenu.Cells[j+1,k], '��', '', [rfReplaceAll]), True, False, True);
                if iRow > -1 then
                  cxGridSchView.DataController.Values[iRow, 2] := '��' + cxGridSchView.DataController.Values[iRow, 2];
              end else
              if AGubun = 'DEL' then
              begin
                if pos('��', AdvGridMenu.Cells[j+1,k]) > 0 then
                  AdvGridMenu.Cells[j+1,k] := StringReplace(AdvGridMenu.Cells[j+1,k], '��', '', [rfReplaceAll]);
                iRow := cxGridSchView.DataController.FindRecordIndexByText(0, 2, '��'+AdvGridMenu.Cells[j+1,k], True, False, True);
                if iRow > -1 then
                  cxGridSchView.DataController.Values[iRow, 2] := StringReplace(cxGridSchView.DataController.Values[iRow, 2], '��', '', [rfReplaceAll]);
              end;
              Break;
            end;
          end;
          cxGridSchView.EndUpdate;
        end;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON51.SetGrantCheck;
begin
  try
    AdvGridMenu.Clear;
    AdvGridMenu.RowCount := 23;
    AdvGridMenu.ColCount := 23;

    AdvGridMenu.ColWidths[00] := 000;    // Key
    AdvGridMenu.ColWidths[01] := 150;    // �޴���
    AdvGridMenu.ColWidths[02] := 000;    // ����
    AdvGridMenu.ColWidths[03] := 007;    // Space

    AdvGridMenu.ColWidths[04] := 000;    // Key
    AdvGridMenu.ColWidths[05] := 150;    // �޴���
    AdvGridMenu.ColWidths[06] := 000;    // ����
    AdvGridMenu.ColWidths[07] := 007;    // Space

    AdvGridMenu.ColWidths[08] := 000;    // Key
    AdvGridMenu.ColWidths[09] := 150;    // �޴���
    AdvGridMenu.ColWidths[10] := 000;    // ����
    AdvGridMenu.ColWidths[11] := 007;    // Space

    AdvGridMenu.ColWidths[12] := 000;    // Key
    AdvGridMenu.ColWidths[13] := 150;    // �޴���
    AdvGridMenu.ColWidths[14] := 000;    // ����
    AdvGridMenu.ColWidths[15] := 007;    // Space

    AdvGridMenu.ColWidths[16] := 000;    // Key
    AdvGridMenu.ColWidths[17] := 150;    // �޴���
    AdvGridMenu.ColWidths[18] := 000;    // ����
    AdvGridMenu.ColWidths[19] := 007;    // Space

    AdvGridMenu.ColWidths[20] := 000;    // Key
    AdvGridMenu.ColWidths[21] := 150;    // �޴���
    AdvGridMenu.ColWidths[22] := 000;    // ����

    AdvGridMenu.Cells[00, 00] := '100';  AdvGridMenu.Cells[01, 00] := '��   ��';
    AdvGridMenu.Cells[00, 01] := ''   ;  AdvGridMenu.Cells[01, 01] := '';
    AdvGridMenu.Cells[00, 02] := '300';  AdvGridMenu.Cells[01, 02] := '-----   ������   -----';
    AdvGridMenu.Cells[00, 03] := '301';  AdvGridMenu.Cells[01, 03] := '�����Ȳ����';
    AdvGridMenu.Cells[00, 04] := '302';  AdvGridMenu.Cells[01, 04] := '���ĳ������';
    AdvGridMenu.Cells[00, 05] := '303';  AdvGridMenu.Cells[01, 05] := '��������Ȳ';
    AdvGridMenu.Cells[00, 06] := '304';  AdvGridMenu.Cells[01, 06] := '�����ݹ�������';
    AdvGridMenu.Cells[00, 07] := '305';  AdvGridMenu.Cells[01, 07] := '������Ʈ';
    AdvGridMenu.Cells[00, 08] := '306';  AdvGridMenu.Cells[01, 08] := '�ɾ߹���������Ȳ';
    AdvGridMenu.Cells[00, 09] := '307';  AdvGridMenu.Cells[01, 09] := '������ǥ';
    AdvGridMenu.Cells[00, 10] := '309';  AdvGridMenu.Cells[01, 10] := '�������Ȳ';
    AdvGridMenu.Cells[00, 11] := '310';  AdvGridMenu.Cells[01, 11] := '����Ⱦ�';
    AdvGridMenu.Cells[00, 12] := '311';  AdvGridMenu.Cells[01, 12] := '������';
    AdvGridMenu.Cells[00, 13] := ''   ;  AdvGridMenu.Cells[01, 13] := '';
    AdvGridMenu.Cells[00, 14] := '1000'; AdvGridMenu.Cells[01, 14] := '-----   �������   -----';
    AdvGridMenu.Cells[00, 15] := '1001'; AdvGridMenu.Cells[01, 15] := 'SMS�߼�';
    AdvGridMenu.Cells[00, 16] := '1002'; AdvGridMenu.Cells[01, 16] := '�뷮����SMS�߼�';
    AdvGridMenu.Cells[00, 17] := '1003'; AdvGridMenu.Cells[01, 17] := '��ȸ���(��)';
    AdvGridMenu.Cells[00, 18] := '1004'; AdvGridMenu.Cells[01, 18] := '��ȸ���(�Ϻ�)';
    AdvGridMenu.Cells[00, 19] := '1005'; AdvGridMenu.Cells[01, 19] := '���Űźΰ���';
    AdvGridMenu.Cells[00, 20] := '';     AdvGridMenu.Cells[01, 20] := '';
    AdvGridMenu.Cells[00, 21] := '';     AdvGridMenu.Cells[01, 21] := '';
    AdvGridMenu.Cells[00, 22] := '';     AdvGridMenu.Cells[01, 22] := '';
    AdvGridMenu.MergeCells(01, 20, 1, 3);

    AdvGridMenu.MergeCells(03, 00, 1, 23);
    AdvGridMenu.Cells[04, 00] := '200';  AdvGridMenu.Cells[05, 00] := '��   ��';
    AdvGridMenu.Cells[04, 01] := ''   ;  AdvGridMenu.Cells[05, 01] := '';
    AdvGridMenu.Cells[04, 02] := '400';  AdvGridMenu.Cells[05, 02] := '-----   ������   -----';
    AdvGridMenu.Cells[04, 03] := '401';  AdvGridMenu.Cells[05, 03] := '������';
    AdvGridMenu.Cells[04, 04] := '402';  AdvGridMenu.Cells[05, 04] := '�Ϲݰ˻�';
    AdvGridMenu.Cells[04, 05] := '403';  AdvGridMenu.Cells[05, 05] := '��ް˻�';
    AdvGridMenu.Cells[04, 06] := '404';  AdvGridMenu.Cells[05, 06] := '�󼼰˻�';
    AdvGridMenu.Cells[04, 07] := '405';  AdvGridMenu.Cells[05, 07] := '�Ƚɹ�ȣ����';
    AdvGridMenu.Cells[04, 08] := '406';  AdvGridMenu.Cells[05, 08] := '�޸հ�';
    AdvGridMenu.Cells[04, 09] := '407';  AdvGridMenu.Cells[05, 09] := '����ް���';
    AdvGridMenu.Cells[04, 10] := '408';  AdvGridMenu.Cells[05, 10] := '���ϸ�������';
    AdvGridMenu.Cells[04, 11] := '409';  AdvGridMenu.Cells[05, 11] := '���ϸ�����Ȳ(����)';
    AdvGridMenu.Cells[04, 12] := '410';  AdvGridMenu.Cells[05, 12] := '���ϸ�����(����+����)';
    AdvGridMenu.Cells[04, 13] := '411';  AdvGridMenu.Cells[05, 13] := 'OKĳ����������Ȳ';
    AdvGridMenu.Cells[04, 14] := '';     AdvGridMenu.Cells[05, 14] := '';
    AdvGridMenu.Cells[04, 15] := '800';  AdvGridMenu.Cells[05, 15] := '-----   ȸ�����   -----';
    AdvGridMenu.Cells[04, 16] := '801';  AdvGridMenu.Cells[05, 16] := '�������';
    AdvGridMenu.Cells[04, 17] := '802';  AdvGridMenu.Cells[05, 17] := '�������';
    AdvGridMenu.Cells[04, 18] := '806';  AdvGridMenu.Cells[05, 18] := '��ǥ��ȣ���������';
    AdvGridMenu.Cells[04, 19] := '803';  AdvGridMenu.Cells[05, 19] := '�ڵ�SMS����';
    AdvGridMenu.Cells[04, 20] := '805';  AdvGridMenu.Cells[05, 20] := '�����ݼ���';
    AdvGridMenu.Cells[04, 21] := '804';  AdvGridMenu.Cells[05, 21] := '������������';
    AdvGridMenu.Cells[04, 22] := '';     AdvGridMenu.Cells[05, 22] := '';
//    AdvGridMenu.MergeCells(5, 20, 1, 3);

    AdvGridMenu.MergeCells(07, 00, 1, 23);
    AdvGridMenu.Cells[08, 00] := '1100'; AdvGridMenu.Cells[09, 00] := '��   ��';
    AdvGridMenu.Cells[08, 01] := ''   ;  AdvGridMenu.Cells[09, 01] := '';
    AdvGridMenu.Cells[08, 02] := '500';  AdvGridMenu.Cells[09, 02] := '-----   ���ΰ���   -----';
    AdvGridMenu.Cells[08, 03] := '501';  AdvGridMenu.Cells[09, 03] := '���ΰ���';
    AdvGridMenu.Cells[08, 04] := '502';  AdvGridMenu.Cells[09, 04] := '�����̿볻��';
    AdvGridMenu.Cells[08, 05] := '503';  AdvGridMenu.Cells[09, 05] := '������������';
    AdvGridMenu.Cells[08, 06] := '504';  AdvGridMenu.Cells[09, 06] := '��������';
    AdvGridMenu.Cells[08, 07] := '505';  AdvGridMenu.Cells[09, 07] := '����õ¡����Ȳ';
    AdvGridMenu.Cells[08, 08] := '506';  AdvGridMenu.Cells[09, 08] := '���ο�����';
    AdvGridMenu.Cells[08, 09] := '';     AdvGridMenu.Cells[09, 09] := '';
    AdvGridMenu.Cells[08, 10] := '900';  AdvGridMenu.Cells[09, 10] := '-----   ��������   -----';
    AdvGridMenu.Cells[08, 11] := '901';  AdvGridMenu.Cells[09, 11] := '��������';
    AdvGridMenu.Cells[08, 12] := '902';  AdvGridMenu.Cells[09, 12] := '���Ѽ���';
    AdvGridMenu.Cells[08, 13] := '903';  AdvGridMenu.Cells[09, 13] := '������Ȳ';
    AdvGridMenu.Cells[08, 14] := '904';  AdvGridMenu.Cells[09, 14] := '��������(�����)';
    AdvGridMenu.Cells[08, 15] := '905';  AdvGridMenu.Cells[09, 15] := '��������(PC)';
    AdvGridMenu.Cells[08, 16] := '906';  AdvGridMenu.Cells[09, 16] := '�����ٿ���Ȳ';
    AdvGridMenu.Cells[08, 17] := '907';  AdvGridMenu.Cells[09, 17] := '����������Ȳ';
    AdvGridMenu.Cells[08, 18] := '908';  AdvGridMenu.Cells[09, 18] := '�������ð����';
    AdvGridMenu.Cells[08, 19] := '909';  AdvGridMenu.Cells[09, 19] := '����������Ȳ';
    AdvGridMenu.Cells[08, 20] := '910';  AdvGridMenu.Cells[09, 20] := '�йи������ڼ���';
    AdvGridMenu.Cells[08, 21] := '';     AdvGridMenu.Cells[09, 21] := '';
    AdvGridMenu.Cells[08, 22] := '';     AdvGridMenu.Cells[09, 22] := '';
    AdvGridMenu.MergeCells(9, 21, 1, 2);

    AdvGridMenu.MergeCells(11, 00, 1, 23);
    AdvGridMenu.Cells[12, 00] := '1200'; AdvGridMenu.Cells[13, 00] := '��   ��';
    AdvGridMenu.Cells[12, 01] := ''   ;  AdvGridMenu.Cells[13, 01] := '';
    AdvGridMenu.Cells[12, 02] := '600';  AdvGridMenu.Cells[13, 02] := '-----   �������   -----';
    AdvGridMenu.Cells[12, 03] := '601';  AdvGridMenu.Cells[13, 03] := '����ĳ������';
    AdvGridMenu.Cells[12, 04] := '602';  AdvGridMenu.Cells[13, 04] := '����ķα�';
    AdvGridMenu.Cells[12, 05] := '603';  AdvGridMenu.Cells[13, 05] := '��������';
    AdvGridMenu.Cells[12, 06] := '604';  AdvGridMenu.Cells[13, 06] := '������������';
    AdvGridMenu.Cells[12, 07] := '605';  AdvGridMenu.Cells[13, 07] := '�����������';
    AdvGridMenu.Cells[12, 08] := '606';  AdvGridMenu.Cells[13, 08] := '������';
    AdvGridMenu.Cells[12, 09] := '607';  AdvGridMenu.Cells[13, 09] := '����������';
    AdvGridMenu.Cells[12, 10] := '608';  AdvGridMenu.Cells[13, 10] := 'ĳ���̵�';
    AdvGridMenu.Cells[12, 11] := '609';  AdvGridMenu.Cells[13, 11] := 'SMSĳ������';
    AdvGridMenu.Cells[12, 12] := '610';  AdvGridMenu.Cells[13, 12] := '���ͱݸ���Ʈ';
    AdvGridMenu.Cells[12, 13] := '611';  AdvGridMenu.Cells[13, 13] := '���ͱݰ��';
    AdvGridMenu.Cells[12, 14] := '612';  AdvGridMenu.Cells[13, 14] := '�ݿ�������';
    AdvGridMenu.Cells[12, 15] := '613';  AdvGridMenu.Cells[13, 15] := '����������Ȳ';
    AdvGridMenu.Cells[12, 16] := '614';  AdvGridMenu.Cells[13, 16] := '�ݴ��������';
    AdvGridMenu.Cells[12, 17] := '615';  AdvGridMenu.Cells[13, 17] := '����������Ȳ';
    AdvGridMenu.Cells[12, 18] := '616';  AdvGridMenu.Cells[13, 18] := '���������Ȳ';
    AdvGridMenu.Cells[12, 19] := '617';  AdvGridMenu.Cells[13, 19] := 'ī�������Ȳ';
    AdvGridMenu.Cells[12, 20] := '618';  AdvGridMenu.Cells[13, 20] := '��ݿ�û';
    AdvGridMenu.Cells[12, 21] := '';     AdvGridMenu.Cells[13, 21] := '';
    AdvGridMenu.Cells[12, 22] := '';     AdvGridMenu.Cells[13, 22] := '';
    AdvGridMenu.MergeCells(13, 21, 1, 2);

    AdvGridMenu.MergeCells(15, 00, 1, 23);
    AdvGridMenu.Cells[16, 00] := '1300'; AdvGridMenu.Cells[17, 00] := 'S  M  S';
    AdvGridMenu.Cells[16, 01] := ''   ;  AdvGridMenu.Cells[17, 01] := '';
    AdvGridMenu.Cells[16, 02] := '1400'; AdvGridMenu.Cells[17, 02] := '-----   ��������   -----';
    AdvGridMenu.Cells[16, 03] := '1401'; AdvGridMenu.Cells[17, 03] := '����';
  //  AdvGridMenu.Cells[16, 04] := '1402'; AdvGridMenu.Cells[17, 04] := '��������';
    AdvGridMenu.Cells[16, 04] := '1403'; AdvGridMenu.Cells[17, 04] := '���������';
    AdvGridMenu.Cells[16, 05] := '1404'; AdvGridMenu.Cells[17, 05] := '���������[��ǥ��ȣ]';
    AdvGridMenu.Cells[16, 06] := '1405'; AdvGridMenu.Cells[17, 06] := '���������[����]';
		AdvGridMenu.Cells[16, 07] := '1406'; AdvGridMenu.Cells[17, 07] := '�ɾ��������';
    AdvGridMenu.Cells[16, 08] := '1407'; AdvGridMenu.Cells[17, 08] := 'CID��ǥ��ȣDNIS����';
    AdvGridMenu.Cells[16, 09] := '1408'; AdvGridMenu.Cells[17, 09] := 'CID����';
    AdvGridMenu.Cells[16, 10] := '1414'; AdvGridMenu.Cells[17, 10] := 'CID����';
    AdvGridMenu.Cells[16, 11] := '1409'; AdvGridMenu.Cells[17, 11] := '�޽���';
    AdvGridMenu.Cells[16, 12] := '';     AdvGridMenu.Cells[17, 12] := '';
    AdvGridMenu.Cells[16, 13] := '1400'; AdvGridMenu.Cells[17, 13] := '-----   �� �� ��   -----';
    AdvGridMenu.Cells[16, 14] := '1413'; AdvGridMenu.Cells[17, 14] := '�ݸ���Ȩ������';
    AdvGridMenu.Cells[16, 15] := '';     AdvGridMenu.Cells[17, 15] := '';
    AdvGridMenu.Cells[16, 16] := '';     AdvGridMenu.Cells[17, 16] := '';
    AdvGridMenu.Cells[16, 17] := '';     AdvGridMenu.Cells[17, 17] := '';
    AdvGridMenu.Cells[16, 18] := '';     AdvGridMenu.Cells[17, 18] := '';
    AdvGridMenu.Cells[16, 19] := '';     AdvGridMenu.Cells[17, 19] := '';
    AdvGridMenu.Cells[16, 20] := '';     AdvGridMenu.Cells[17, 20] := '';
    AdvGridMenu.Cells[16, 21] := '';     AdvGridMenu.Cells[17, 21] := '';
    AdvGridMenu.Cells[16, 22] := '';     AdvGridMenu.Cells[17, 22] := '';
    AdvGridMenu.MergeCells(17, 15, 1, 8);

    AdvGridMenu.MergeCells(19, 00, 1, 23);
    AdvGridMenu.Cells[20, 00] := '800';  AdvGridMenu.Cells[21, 00] := '-----   �� �� ��   -----';
    AdvGridMenu.Cells[20, 01] := '811';  AdvGridMenu.Cells[21, 01] := '��/����ƮǪ�ü���';
    AdvGridMenu.Cells[20, 02] := '812';  AdvGridMenu.Cells[21, 02] := '�۰Խù�����';
    AdvGridMenu.Cells[20, 03] := '813';  AdvGridMenu.Cells[21, 03] := '��Ǫ�ð���';
    AdvGridMenu.Cells[20, 04] := '814';  AdvGridMenu.Cells[21, 04] := '�ݸ���SMS�߼۳���';
    AdvGridMenu.Cells[20, 05] := '815';  AdvGridMenu.Cells[21, 05] := '����ƮPUSH�߼۳���';
    AdvGridMenu.Cells[20, 06] := '816';  AdvGridMenu.Cells[21, 06] := '�ݸ���SMS�߼��Ϻ����';
    AdvGridMenu.Cells[20, 07] := '817';  AdvGridMenu.Cells[21, 07] := '����ƮPUSH�߼��Ϻ����';
    AdvGridMenu.Cells[20, 08] := '';     AdvGridMenu.Cells[21, 08] := '';

    AdvGridMenu.Cells[20, 09] := '700';  AdvGridMenu.Cells[21, 09] := '-----   ������   -----';
    AdvGridMenu.Cells[20, 10] := '701';  AdvGridMenu.Cells[21, 10] := '��ǥ��ȣ�����';
    AdvGridMenu.Cells[20, 11] := '702';  AdvGridMenu.Cells[21, 11] := '��纰���';
    AdvGridMenu.Cells[20, 12] := '703';  AdvGridMenu.Cells[21, 12] := '�������';
    AdvGridMenu.Cells[20, 13] := '704';  AdvGridMenu.Cells[21, 13] := '�ڻ����';
    AdvGridMenu.Cells[20, 14] := '705';  AdvGridMenu.Cells[21, 14] := '���������';
    AdvGridMenu.Cells[20, 15] := '706';  AdvGridMenu.Cells[21, 15] := '���������';
    AdvGridMenu.Cells[20, 16] := '707';  AdvGridMenu.Cells[21, 16] := '�ű԰����';
    AdvGridMenu.Cells[20, 17] := '708';  AdvGridMenu.Cells[21, 17] := '�ð��뺰�����';
    AdvGridMenu.Cells[20, 18] := '709';  AdvGridMenu.Cells[21, 18] := '�����ݼ����';
    AdvGridMenu.Cells[20, 19] := '710';  AdvGridMenu.Cells[21, 19] := '�ű��ݼ����';
    AdvGridMenu.Cells[20, 20] := '711';  AdvGridMenu.Cells[21, 20] := '��������';
    AdvGridMenu.Cells[20, 21] := '712';  AdvGridMenu.Cells[21, 21] := '�ð��뺰�⵵�������';
    AdvGridMenu.Cells[20, 22] := '713';  AdvGridMenu.Cells[21, 22] := '������ݺ����';

    if TCK_USER_PER.JON_MainView = '1' then AdvGridMenu.Cells[02, 00] := '1' else AdvGridMenu.Cells[02, 00] := '0';                //  '��   ��';
    AdvGridMenu.Cells[02, 01] := '';
    AdvGridMenu.Cells[02, 02] := '';
    if Frm_Main.Menu301.Visible then AdvGridMenu.Cells[02, 03] := '1' else AdvGridMenu.Cells[02, 03] := '0';                 //  '�����Ȳ����';
    if Frm_Main.Menu302.Visible then AdvGridMenu.Cells[02, 04] := '1' else AdvGridMenu.Cells[02, 04] := '0';                //  '���ĳ������';
    if Frm_Main.Menu303.Visible then AdvGridMenu.Cells[02, 05] := '1' else AdvGridMenu.Cells[02, 05] := '0';                //  '��������Ȳ';
    if Frm_Main.Menu304.Visible then AdvGridMenu.Cells[02, 06] := '1' else AdvGridMenu.Cells[02, 06] := '0';                //  '�����ݹ�������';
    if Frm_Main.Menu305.Visible then AdvGridMenu.Cells[02, 07] := '1' else AdvGridMenu.Cells[02, 07] := '0';                //  '������Ʈ';
    if Frm_Main.Menu306.Visible then AdvGridMenu.Cells[02, 08] := '1' else AdvGridMenu.Cells[02, 08] := '0';                //  '�ɾ߹���������Ȳ';
    if Frm_Main.Menu307.Visible then AdvGridMenu.Cells[02, 09] := '1' else AdvGridMenu.Cells[02, 09] := '0';                //  '������ǥ';
    if Frm_Main.Menu309.Visible then AdvGridMenu.Cells[02, 10] := '1' else AdvGridMenu.Cells[02, 10] := '0';                //  '�������Ȳ;
    if Frm_Main.Menu310.Visible then AdvGridMenu.Cells[02, 11] := '1' else AdvGridMenu.Cells[02, 11] := '0';                //  '����Ⱦ�';
    if Frm_Main.Menu311.Visible then AdvGridMenu.Cells[02, 12] := '1' else AdvGridMenu.Cells[02, 12] := '0';                //  '������';
    AdvGridMenu.Cells[02, 13] := '';
    AdvGridMenu.Cells[02, 14] := '';

    if Frm_Main.Menu1001.Visible then AdvGridMenu.Cells[02, 15] := '1' else AdvGridMenu.Cells[02, 15] := '0';                //   'SMS�߼�';
    if Frm_Main.Menu1002.Visible then AdvGridMenu.Cells[02, 16] := '1' else AdvGridMenu.Cells[02, 16] := '0';                //   '�뷮����SMS�߼�';
    if Frm_Main.Menu1003.Visible then AdvGridMenu.Cells[02, 17] := '1' else AdvGridMenu.Cells[02, 17] := '0';                //   '��ȸ���(��)';
    if Frm_Main.Menu1004.Visible then AdvGridMenu.Cells[02, 18] := '1' else AdvGridMenu.Cells[02, 18] := '0';                //   '��ȸ���(�Ϻ�)';
    if Frm_Main.Menu1005.Visible then AdvGridMenu.Cells[02, 19] := '1' else AdvGridMenu.Cells[02, 19] := '0';                //   '���Űźΰ���';

    AdvGridMenu.Cells[02, 20] := '0';
    AdvGridMenu.Cells[02, 21] := '0';
    AdvGridMenu.Cells[02, 22] := '0';

    if Frm_Main.btnMainMenu1.Enabled then AdvGridMenu.Cells[06, 00] := '1' else AdvGridMenu.Cells[06, 00] := '0';                //   '��   ��';
    AdvGridMenu.Cells[06, 01] := '';
    AdvGridMenu.Cells[06, 02] := '';
    if Frm_Main.Menu401.Visible then AdvGridMenu.Cells[06, 03] := '1' else AdvGridMenu.Cells[06, 03] := '0';                //   '������';
    if Frm_Main.Menu402.Visible then AdvGridMenu.Cells[06, 04] := '1' else AdvGridMenu.Cells[06, 04] := '0';                //   '�Ϲݰ˻�';
    if Frm_Main.Menu403.Visible then AdvGridMenu.Cells[06, 05] := '1' else AdvGridMenu.Cells[06, 05] := '0';                //   '��ް˻�';
    if Frm_Main.Menu404.Visible then AdvGridMenu.Cells[06, 06] := '1' else AdvGridMenu.Cells[06, 06] := '0';                //   '�󼼰˻�';
    if Frm_Main.Menu405.Visible then AdvGridMenu.Cells[06, 07] := '1' else AdvGridMenu.Cells[06, 07] := '0';                //   '�Ƚɹ�ȣ����';
    if Frm_Main.Menu406.Visible then AdvGridMenu.Cells[06, 08] := '1' else AdvGridMenu.Cells[06, 08] := '0';                //   '�޸հ�';
    if Frm_Main.Menu407.Visible then AdvGridMenu.Cells[06, 09] := '1' else AdvGridMenu.Cells[06, 09] := '0';                //   '����ް���';
    if Frm_Main.Menu408.Visible then AdvGridMenu.Cells[06, 10] := '1' else AdvGridMenu.Cells[06, 10] := '0';                //   '���ϸ�������';
    if Frm_Main.Menu409.Visible then AdvGridMenu.Cells[06, 11] := '1' else AdvGridMenu.Cells[06, 11] := '0';                //   '���ϸ�����Ȳ(����)';
    if Frm_Main.Menu410.Visible then AdvGridMenu.Cells[06, 12] := '1' else AdvGridMenu.Cells[06, 12] := '0';                //   '���ϸ������(����+����)';
    if Frm_Main.Menu411.Visible then AdvGridMenu.Cells[06, 13] := '1' else AdvGridMenu.Cells[06, 13] := '0';                //   'OKĳ����������Ȳ';
    AdvGridMenu.Cells[06, 14] := '';
    AdvGridMenu.Cells[06, 15] := '';
    if Frm_Main.Menu801.Visible then AdvGridMenu.Cells[06, 16] := '1' else AdvGridMenu.Cells[06, 16] := '0';                //   '�������';
    if Frm_Main.Menu802.Visible then AdvGridMenu.Cells[06, 17] := '1' else AdvGridMenu.Cells[06, 17] := '0';                //   '�������';
    if Frm_Main.Menu806.Visible then AdvGridMenu.Cells[06, 18] := '1' else AdvGridMenu.Cells[06, 18] := '0';                //   '��ǥ��ȣ���������';
    if Frm_Main.Menu803.Visible then AdvGridMenu.Cells[06, 19] := '1' else AdvGridMenu.Cells[06, 19] := '0';                //   '�ڵ�SMS����';
    if Frm_Main.Menu805.Visible then AdvGridMenu.Cells[06, 20] := '1' else AdvGridMenu.Cells[06, 20] := '0';                //   '�����ݼ���';
    if Frm_Main.Menu804.Visible then AdvGridMenu.Cells[06, 21] := '1' else AdvGridMenu.Cells[06, 21] := '0';                //   '������������';

    if Frm_Main.Menu1100.Visible then AdvGridMenu.Cells[10, 00] := '1' else AdvGridMenu.Cells[10, 00] := '0';              //    '��   ��';
    AdvGridMenu.Cells[10, 01] := '';
    AdvGridMenu.Cells[10, 02] := '';
    if Frm_Main.Menu501.Visible then AdvGridMenu.Cells[10, 03] := '1' else AdvGridMenu.Cells[10, 03] := '0';                //   '���ΰ���';
    if Frm_Main.Menu502.Visible then AdvGridMenu.Cells[10, 04] := '1' else AdvGridMenu.Cells[10, 04] := '0';                //   '�����̿볻��';
    if Frm_Main.Menu503.Visible then AdvGridMenu.Cells[10, 05] := '1' else AdvGridMenu.Cells[10, 05] := '0';                //   '������������';
    if Frm_Main.Menu504.Visible then AdvGridMenu.Cells[10, 06] := '1' else AdvGridMenu.Cells[10, 06] := '0';                //   '��������';
    if Frm_Main.Menu505.Visible then AdvGridMenu.Cells[10, 07] := '1' else AdvGridMenu.Cells[10, 07] := '0';                //   '����õ¡����Ȳ';
    if Frm_Main.Menu506.Visible then AdvGridMenu.Cells[10, 08] := '1' else AdvGridMenu.Cells[10, 08] := '0';                //   '���ο�����';
    AdvGridMenu.Cells[10, 09] := '';
    AdvGridMenu.Cells[10, 10] := '';
    if Frm_Main.Menu901.Visible then AdvGridMenu.Cells[10, 11] := '1' else AdvGridMenu.Cells[10, 11] := '0';                //   '��������';
    if Frm_Main.Menu902.Visible then AdvGridMenu.Cells[10, 12] := '1' else AdvGridMenu.Cells[10, 12] := '0';                //   '���Ѽ���';
    if Frm_Main.Menu903.Visible then AdvGridMenu.Cells[10, 13] := '1' else AdvGridMenu.Cells[10, 13] := '0';                //   '������Ȳ';
    if Frm_Main.Menu904.Visible then AdvGridMenu.Cells[10, 14] := '1' else AdvGridMenu.Cells[10, 14] := '0';                //   '��������(�����)';
    if Frm_Main.Menu905.Visible then AdvGridMenu.Cells[10, 15] := '1' else AdvGridMenu.Cells[10, 15] := '0';                //   '��������(PC)';
    if Frm_Main.Menu906.Visible then AdvGridMenu.Cells[10, 16] := '1' else AdvGridMenu.Cells[10, 16] := '0';                //   '�����ٿ���Ȳ';
    if Frm_Main.Menu907.Visible then AdvGridMenu.Cells[10, 17] := '1' else AdvGridMenu.Cells[10, 17] := '0';                //   '����������Ȳ';
    if Frm_Main.Menu908.Visible then AdvGridMenu.Cells[10, 18] := '1' else AdvGridMenu.Cells[10, 18] := '0';                //   '�������ð����';
    if Frm_Main.Menu909.Visible then AdvGridMenu.Cells[10, 19] := '1' else AdvGridMenu.Cells[10, 19] := '0';                //   '����������Ȳ';
    if Frm_Main.Menu910.Visible then AdvGridMenu.Cells[10, 20] := '1' else AdvGridMenu.Cells[10, 20] := '0';                //   '�йи������ڼ���';

    if Frm_Main.Menu1200.Visible then AdvGridMenu.Cells[14, 00] := '1' else AdvGridMenu.Cells[14, 00] := '0';                //   '��   ��';
    AdvGridMenu.Cells[14, 01] := '';
    AdvGridMenu.Cells[14, 02] := '';
    if Frm_Main.Menu601.Visible then AdvGridMenu.Cells[14, 03] := '1' else AdvGridMenu.Cells[14, 03] := '0';                //   '����ĳ������';
    if Frm_Main.Menu602.Visible then AdvGridMenu.Cells[14, 04] := '1' else AdvGridMenu.Cells[14, 04] := '0';                //   '����ķα�';
    if Frm_Main.Menu603.Visible then AdvGridMenu.Cells[14, 05] := '1' else AdvGridMenu.Cells[14, 05] := '0';                //   '��������';
    if Frm_Main.Menu604.Visible then AdvGridMenu.Cells[14, 06] := '1' else AdvGridMenu.Cells[14, 06] := '0';                //   '������������';
    if Frm_Main.Menu605.Visible then AdvGridMenu.Cells[14, 07] := '1' else AdvGridMenu.Cells[14, 07] := '0';                //   '�����������';
    if Frm_Main.Menu606.Visible then AdvGridMenu.Cells[14, 08] := '1' else AdvGridMenu.Cells[14, 08] := '0';                //   '������';
    if Frm_Main.Menu607.Visible then AdvGridMenu.Cells[14, 09] := '1' else AdvGridMenu.Cells[14, 09] := '0';                //   '����������';
    if Frm_Main.Menu608.Visible then AdvGridMenu.Cells[14, 10] := '1' else AdvGridMenu.Cells[14, 10] := '0';                //   'ĳ���̵�';
    if Frm_Main.Menu609.Visible then AdvGridMenu.Cells[14, 11] := '1' else AdvGridMenu.Cells[14, 11] := '0';                //   'SMSĳ������';
    if Frm_Main.Menu610.Visible then AdvGridMenu.Cells[14, 12] := '1' else AdvGridMenu.Cells[14, 12] := '0';                //   '���ͱݸ���Ʈ';
    if Frm_Main.Menu611.Visible then AdvGridMenu.Cells[14, 13] := '1' else AdvGridMenu.Cells[14, 13] := '0';                //   '���ͱݰ��';
    if Frm_Main.Menu612.Visible then AdvGridMenu.Cells[14, 14] := '1' else AdvGridMenu.Cells[14, 14] := '0';                //   '�ݿ�������';
    if Frm_Main.Menu613.Visible then AdvGridMenu.Cells[14, 15] := '1' else AdvGridMenu.Cells[14, 15] := '0';                //   '����������Ȳ';
    if Frm_Main.Menu614.Visible then AdvGridMenu.Cells[14, 16] := '1' else AdvGridMenu.Cells[14, 16] := '0';                //   '�ݴ��������';
    if Frm_Main.Menu615.Visible then AdvGridMenu.Cells[14, 17] := '1' else AdvGridMenu.Cells[14, 17] := '0';                //   '����������Ȳ';
    if Frm_Main.Menu616.Visible then AdvGridMenu.Cells[14, 18] := '1' else AdvGridMenu.Cells[14, 18] := '0';                //   '���������Ȳ';
    if Frm_Main.Menu617.Visible then AdvGridMenu.Cells[14, 19] := '1' else AdvGridMenu.Cells[14, 19] := '0';                //   'ī�������Ȳ';
    if Frm_Main.Menu618.Visible then AdvGridMenu.Cells[14, 20] := '1' else AdvGridMenu.Cells[14, 20] := '0';                //   '��ݿ�û';

    if Frm_Main.Menu1300.Enabled then AdvGridMenu.Cells[18, 00] := '1' else AdvGridMenu.Cells[18, 00] := '0';                //   'S  M  S';
    AdvGridMenu.Cells[18, 01] := '';
    AdvGridMenu.Cells[18, 02] := '';
    AdvGridMenu.Cells[18, 03] := '1';                //   '�Ϲݼ���';
    AdvGridMenu.Cells[18, 04] := '1';                //   '���������';
    AdvGridMenu.Cells[18, 05] := '1';                //   '���������[��ǥ��ȣ]';
    AdvGridMenu.Cells[18, 06] := '1';                //   '���������[����]';
    AdvGridMenu.Cells[18, 07] := '1';                //   '�ɾ��������';
    AdvGridMenu.Cells[18, 08] := '1';                //   'CID��ǥ��ȣDNIS����';
    AdvGridMenu.Cells[18, 09] := '1';                //   'CID����';
    AdvGridMenu.Cells[18, 10] := '1';                //   'CID����';
    AdvGridMenu.Cells[18, 11] := '1';                //   '�޽���'
    AdvGridMenu.Cells[18, 12] := '';
    AdvGridMenu.Cells[18, 13] := '';
    AdvGridMenu.Cells[18, 14] := '1';                //   '�ڵ���(PDA)�ٿ�ε���';
    AdvGridMenu.Cells[18, 15] := '1';                //   '����ڸ޴���';
    AdvGridMenu.Cells[18, 16] := '1';                //   '�������';
    AdvGridMenu.Cells[18, 17] := '1';                //   '�ݸ���Ȩ������';
    AdvGridMenu.Cells[18, 18] := '';
    AdvGridMenu.Cells[18, 19] := '';

    AdvGridMenu.Cells[22, 00] := '';
    if Frm_Main.Menu811.Visible then AdvGridMenu.Cells[22, 01] := '1' else AdvGridMenu.Cells[22, 01] := '0';                //   '��/����ƮǪ�ü���';
    if Frm_Main.Menu812.Visible then AdvGridMenu.Cells[22, 02] := '1' else AdvGridMenu.Cells[22, 02] := '0';                //   '�۰Խù�����';
    if Frm_Main.Menu813.Visible then AdvGridMenu.Cells[22, 03] := '1' else AdvGridMenu.Cells[22, 03] := '0';                //   '��Ǫ�ð���';
    if Frm_Main.Menu814.Visible then AdvGridMenu.Cells[22, 04] := '1' else AdvGridMenu.Cells[22, 04] := '0';                //   '�ݸ���SMS�߼۳���';
    if Frm_Main.Menu815.Visible then AdvGridMenu.Cells[22, 05] := '1' else AdvGridMenu.Cells[22, 05] := '0';                //   '����ƮPUSH�߼۳���';
    if Frm_Main.Menu816.Visible then AdvGridMenu.Cells[22, 06] := '1' else AdvGridMenu.Cells[22, 06] := '0';                //   '�ݸ���SMS�߼��Ϻ����';
    if Frm_Main.Menu817.Visible then AdvGridMenu.Cells[22, 07] := '1' else AdvGridMenu.Cells[22, 07] := '0';                //   '����ƮPUSH�߼��Ϻ����';
    AdvGridMenu.Cells[22, 08] := '';
    AdvGridMenu.Cells[22, 09] := '';

    // ---- ������ ������ �޴��� ǥ�� ���� -------------

    if TCK_USER_PER.JON_MainView <> '1' then AdvGridMenu.Cells[01, 00] := '';                //  '��   ��';

    if Not Frm_Main.Menu301.Visible then AdvGridMenu.Cells[01, 03] := '';                 //  '�����Ȳ����';
    if Not Frm_Main.Menu302.Visible then AdvGridMenu.Cells[01, 04] := '';                //  '���ĳ������';
    if Not Frm_Main.Menu303.Visible then AdvGridMenu.Cells[01, 05] := '';                //  '��������Ȳ';
    if Not Frm_Main.Menu304.Visible then AdvGridMenu.Cells[01, 06] := '';                //  '�����ݹ�������';
    if Not Frm_Main.Menu305.Visible then AdvGridMenu.Cells[01, 07] := '';                //  '������Ʈ';
    if Not Frm_Main.Menu306.Visible then AdvGridMenu.Cells[01, 08] := '';                //  '�ɾ߹���������Ȳ';
    if Not Frm_Main.Menu307.Visible then AdvGridMenu.Cells[01, 09] := '';                //  '������ǥ';
    if Not Frm_Main.Menu309.Visible then AdvGridMenu.Cells[01, 10] := '';                //  '�������Ȳ';
    if Not Frm_Main.Menu310.Visible then AdvGridMenu.Cells[01, 11] := '';                //  '����Ⱦ�';
    if Not Frm_Main.Menu311.Visible then AdvGridMenu.Cells[01, 12] := '';                //  '������';

    if Not Frm_Main.Menu1001.Visible then AdvGridMenu.Cells[1, 15] := '';                //   'SMS�߼�';
    if Not Frm_Main.Menu1002.Visible then AdvGridMenu.Cells[1, 16] := '';                //   '�뷮����SMS�߼�';
    if Not Frm_Main.Menu1003.Visible then AdvGridMenu.Cells[1, 17] := '';                //   '��ȸ���(��)';
    if Not Frm_Main.Menu1004.Visible then AdvGridMenu.Cells[1, 18] := '';                //   '��ȸ���(�Ϻ�)';
    if Not Frm_Main.Menu1005.Visible then AdvGridMenu.Cells[1, 19] := '';                //   '���Űźΰ���';

    if Not Frm_Main.btnMainMenu1.Enabled then AdvGridMenu.Cells[05, 00] := '';                //   '��   ��';

    if Not Frm_Main.Menu401.Visible then AdvGridMenu.Cells[05, 03] := '';                //   '������';
    if Not Frm_Main.Menu402.Visible then AdvGridMenu.Cells[05, 04] := '';                //   '�Ϲݰ˻�';
    if Not Frm_Main.Menu403.Visible then AdvGridMenu.Cells[05, 05] := '';                //   '��ް˻�';
    if Not Frm_Main.Menu404.Visible then AdvGridMenu.Cells[05, 06] := '';                //   '�󼼰˻�';
    if Not Frm_Main.Menu405.Visible then AdvGridMenu.Cells[05, 07] := '';                //   '�Ƚɹ�ȣ����';
    if Not Frm_Main.Menu406.Visible then AdvGridMenu.Cells[05, 08] := '';                //   '�޸հ�';
    if Not Frm_Main.Menu407.Visible then AdvGridMenu.Cells[05, 09] := '';                //   '����ް���';
    if Not Frm_Main.Menu408.Visible then AdvGridMenu.Cells[05, 10] := '';                //   '���ϸ�������';
    if Not Frm_Main.Menu409.Visible then AdvGridMenu.Cells[05, 11] := '';                //   '���ϸ�����Ȳ(����)';
    if Not Frm_Main.Menu410.Visible then AdvGridMenu.Cells[05, 12] := '';                //   '���ϸ������(����+����)';
    if Not Frm_Main.Menu411.Visible then AdvGridMenu.Cells[05, 13] := '';                //   'OKĳ����������Ȳ';

    if Not Frm_Main.Menu801.Visible then AdvGridMenu.Cells[05, 16] := '';                //   '�������';
    if Not Frm_Main.Menu802.Visible then AdvGridMenu.Cells[05, 17] := '';                //   '�������';
    if Not Frm_Main.Menu806.Visible then AdvGridMenu.Cells[05, 18] := '';                //   '��ǥ��ȣ���������';
    if Not Frm_Main.Menu803.Visible then AdvGridMenu.Cells[05, 19] := '';                //   '�ڵ�SMS����';
    if Not Frm_Main.Menu805.Visible then AdvGridMenu.Cells[05, 20] := '';                //   '�����ݼ���';
    if Not Frm_Main.Menu804.Visible then AdvGridMenu.Cells[05, 21] := '';                //   '������������';

    if Not Frm_Main.Menu1100.Visible then AdvGridMenu.Cells[09, 00] := '';              //    '��   ��';

    if Not Frm_Main.Menu501.Visible then AdvGridMenu.Cells[09, 03] := '';                //   '���ΰ���';
    if Not Frm_Main.Menu502.Visible then AdvGridMenu.Cells[09, 04] := '';                //   '�����̿볻��';
    if Not Frm_Main.Menu503.Visible then AdvGridMenu.Cells[09, 05] := '';                //   '������������';
    if Not Frm_Main.Menu504.Visible then AdvGridMenu.Cells[09, 06] := '';                //   '��������';
    if Not Frm_Main.Menu505.Visible then AdvGridMenu.Cells[09, 07] := '';                //   '����õ¡����Ȳ';
    if Not Frm_Main.Menu506.Visible then AdvGridMenu.Cells[09, 08] := '';                //   '���ο�����';

    if Not Frm_Main.Menu901.Visible then AdvGridMenu.Cells[09, 11] := '';                //   '��������';
    if Not Frm_Main.Menu902.Visible then AdvGridMenu.Cells[09, 12] := '';                //   '���Ѽ���';
    if Not Frm_Main.Menu903.Visible then AdvGridMenu.Cells[09, 13] := '';                //   '������Ȳ';
    if Not Frm_Main.Menu904.Visible then AdvGridMenu.Cells[09, 14] := '';                //   '��������(�����)';
    if Not Frm_Main.Menu905.Visible then AdvGridMenu.Cells[09, 15] := '';                //   '��������(PC)';
    if Not Frm_Main.Menu906.Visible then AdvGridMenu.Cells[09, 16] := '';                //   '�����ٿ���Ȳ';
    if Not Frm_Main.Menu907.Visible then AdvGridMenu.Cells[09, 17] := '';                //   '����������Ȳ';
    if Not Frm_Main.Menu908.Visible then AdvGridMenu.Cells[09, 18] := '';                //   '�������ð����';
    if Not Frm_Main.Menu909.Visible then AdvGridMenu.Cells[09, 19] := '';                //   '����������Ȳ';
    if Not Frm_Main.Menu910.Visible then AdvGridMenu.Cells[09, 20] := '';                //   '�йи������ڼ���';

    if Not Frm_Main.Menu1200.Visible then AdvGridMenu.Cells[13, 00] := '';               //   '��   ��';

    if Not Frm_Main.Menu601.Visible then AdvGridMenu.Cells[13, 03] := '';                //   '����ĳ������';
    if Not Frm_Main.Menu602.Visible then AdvGridMenu.Cells[13, 04] := '';                //   '����ķα�';
    if Not Frm_Main.Menu603.Visible then AdvGridMenu.Cells[13, 05] := '';                //   '��������';
    if Not Frm_Main.Menu604.Visible then AdvGridMenu.Cells[13, 06] := '';                //   '������������';
    if Not Frm_Main.Menu605.Visible then AdvGridMenu.Cells[13, 07] := '';                //   '�����������';
    if Not Frm_Main.Menu606.Visible then AdvGridMenu.Cells[13, 08] := '';                //   '������';
    if Not Frm_Main.Menu607.Visible then AdvGridMenu.Cells[13, 09] := '';                //   '����������';
    if Not Frm_Main.Menu608.Visible then AdvGridMenu.Cells[13, 10] := '';                //   'ĳ���̵�';
    if Not Frm_Main.Menu609.Visible then AdvGridMenu.Cells[13, 11] := '';                //   'SMSĳ������';
    if Not Frm_Main.Menu610.Visible then AdvGridMenu.Cells[13, 12] := '';                //   '���ͱݸ���Ʈ';
    if Not Frm_Main.Menu611.Visible then AdvGridMenu.Cells[13, 13] := '';                //   '���ͱݰ��';
    if Not Frm_Main.Menu612.Visible then AdvGridMenu.Cells[13, 14] := '';                //   '�ݿ�������';
    if Not Frm_Main.Menu613.Visible then AdvGridMenu.Cells[13, 15] := '';                //   '����������Ȳ';
    if Not Frm_Main.Menu614.Visible then AdvGridMenu.Cells[13, 16] := '';                //   '�ݴ��������';
    if Not Frm_Main.Menu615.Visible then AdvGridMenu.Cells[13, 17] := '';                //   '����������Ȳ';
    if Not Frm_Main.Menu616.Visible then AdvGridMenu.Cells[13, 18] := '';                //   '���������Ȳ';
    if Not Frm_Main.Menu617.Visible then AdvGridMenu.Cells[13, 19] := '';                //   'ī�������Ȳ';
    if Not Frm_Main.Menu618.Visible then AdvGridMenu.Cells[13, 20] := '';                //   '��ݿ�û';

    if Not Frm_Main.Menu1300.Enabled then AdvGridMenu.Cells[17, 00] := '';                //   'S  M  S';

    if Not Frm_Main.Menu811.Visible then AdvGridMenu.Cells[21, 01] := '';                //   '��/����ƮǪ�ü���';
    if Not Frm_Main.Menu812.Visible then AdvGridMenu.Cells[21, 02] := '';                //   '�۰Խù�����';
    if Not Frm_Main.Menu813.Visible then AdvGridMenu.Cells[21, 03] := '';                //   '��Ǫ�ð���';
    if Not Frm_Main.Menu814.Visible then AdvGridMenu.Cells[21, 04] := '';                //   '�ݸ���SMS�߼۳���';
    if Not Frm_Main.Menu815.Visible then AdvGridMenu.Cells[21, 05] := '';                //   '����ƮPUSH�߼۳���';
    if Not Frm_Main.Menu816.Visible then AdvGridMenu.Cells[21, 06] := '';                //   '�ݸ���SMS�߼��Ϻ����';
    if Not Frm_Main.Menu817.Visible then AdvGridMenu.Cells[21, 07] := '';                //   '����ƮPUSH�߼��Ϻ����';

    AdvGridMenu.Cells[01, 10] := '';
    AdvGridMenu.Cells[01, 11] := '';
    AdvGridMenu.Cells[01, 12] := '';
    AdvGridMenu.Cells[01, 13] := '';
    AdvGridMenu.Cells[01, 14] := '';
    AdvGridMenu.Cells[01, 15] := '';
    AdvGridMenu.Cells[01, 16] := '';
    AdvGridMenu.Cells[01, 17] := '';
    AdvGridMenu.Cells[01, 18] := '';
    AdvGridMenu.Cells[01, 19] := '';
    AdvGridMenu.Cells[01, 20] := '';
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

end.

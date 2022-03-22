unit xe_JON01_01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2010Silver, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, Data.DB,
  cxDBData, cxLabel, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxGroupBox, cxTextEdit, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_JON01_01 = class(TForm)
    pnlBubin: TcxGroupBox;
    cxtBubinSearchName: TcxTextEdit;
    cxGrdBubin: TcxGrid;
    cxBubinView: TcxGridDBTableView;
    cxGrdCol1: TcxGridDBColumn;
    cxGrdCol2: TcxGridDBColumn;
    cxGrdCol3: TcxGridDBColumn;
    cxGrdCol4: TcxGridDBColumn;
    cxGrdCol5: TcxGridDBColumn;
    cxGrdBubinLevel1: TcxGridLevel;
    cxBtnSelect: TcxButton;
    cxBtnChoice: TcxButton;
    cxBtnClose: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure cxBubinViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxBtnSelectClick(Sender: TObject);
    procedure cxBtnChoiceClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxtBubinSearchNameKeyPress(Sender: TObject; var Key: Char);
    procedure cxtBubinSearchNameKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxtBubinSearchNamePropertiesChange(Sender: TObject);
    procedure cxBtnCloseClick(Sender: TObject);
    procedure cxBubinViewKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    procedure Proc_BubinChoice;
    procedure Proc_BubinListSearch;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_JON01_01: TFrm_JON01_01;

implementation

{$R *.dfm}

uses Main, xe_GNL, xe_Func, xe_Msg;

procedure TFrm_JON01_01.cxBtnChoiceClick(Sender: TObject);
begin
  // ���� ���� ������ �����ش�.
  Proc_BubinChoice;
end;

procedure TFrm_JON01_01.cxBtnCloseClick(Sender: TObject);
begin
  Frm_Main.Frm_JON01N[Self.Tag].pnlBubin.Visible := False;
  Close;
end;

procedure TFrm_JON01_01.cxBtnSelectClick(Sender: TObject);
begin
  SetDebugeWrite('JON01B.btnBubinSchClick');
  try
    if TCK_USER_PER.JON_BUBININFO = '1' then
    begin
      GMessagebox('����â �������� ���� ������ �����ϴ�.', CDMSE);
      Exit;
    end;

    cxtBubinSearchName.Text := '';
    cxBubinView.DataController.SetRecordCount(0);
    cxtBubinSearchName.SetFocus;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON01_01.cxBubinViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  // ���� ���� ������ �����ش�.
  Proc_BubinChoice;
end;

procedure TFrm_JON01_01.cxBubinViewKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  try
    if cxBubinView.DataController.FocusedRecordIndex = -1 then Exit;
    if Key = VK_RETURN then
    begin
      Key := 0;
      // ���� ���� ������ �����ش�.
      Proc_BubinChoice;
    end else
    if Key = VK_UP then
    begin
      if cxGrdBubin.Tag = -1 then
      begin
        cxGrdBubin.Tag := 0;
        cxtBubinSearchName.SetFocus;
      end else
      if cxBubinView.DataController.FocusedRecordIndex = 0 then
        cxGrdBubin.Tag := -1
      else
        cxGrdBubin.Tag := 0;
    end else
    if Key = VK_DOWN then
    begin
      if cxGrdBubin.Tag = -2 then
      begin
        cxGrdBubin.Tag := 0;
        cxtBubinSearchName.SetFocus;
      end else
      if cxBubinView.DataController.FocusedRecordIndex = (cxBubinView.DataController.RecordCount - 1) then
        cxGrdBubin.Tag := -2
      else
        cxGrdBubin.Tag := 0;
    end;
  Except
    on e: exception do
    begin
      Log('cxBubinViewKeyUp Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'cxBubinViewKeyUp Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01_01.cxtBubinSearchNameKeyPress(Sender: TObject; var Key: Char);
begin
  SetDebugeWrite('JON01B.cxtBubinSearchNameKeyPress');
  if ord(key) = VK_RETURN then
  begin
    // ���������� ��ȸ�Ѵ�.
    Proc_BubinListSearch;
  end;
end;

procedure TFrm_JON01_01.cxtBubinSearchNameKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  SetDebugeWrite('JON01B.cxtBubinSearchNameKeyUp');
  // �˻� �׸���� ��Ŀ�� �̵�..
  if Key in [VK_DOWN, VK_UP] then
  begin
    cxGrdBubin.SetFocus;
  end
end;

procedure TFrm_JON01_01.cxtBubinSearchNamePropertiesChange(Sender: TObject);
begin
  // ���������� ��ȸ�Ѵ�.
  Proc_BubinListSearch;
end;

procedure TFrm_JON01_01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_JON01_01.FormCreate(Sender: TObject);
Var i : Integer;
begin
   cxBubinView.DataController.SetRecordCount(0);
   for i := 0 to cxBubinView.ColumnCount - 1 do
      cxBubinView.Columns[i].DataBinding.ValueType := 'String';
end;

procedure TFrm_JON01_01.FormDestroy(Sender: TObject);
begin
  Frm_JON01_01 := Nil;
end;

procedure TFrm_JON01_01.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON01_01, GS_FONTNAME);
  fSetSkin(Frm_JON01_01);
end;

// ���� ���� ������ �����ش�.
procedure TFrm_JON01_01.Proc_BubinChoice;
var
  iRow, iChoiceRow: Integer;
  sCbcode, sCbCd, sBubin: string;
begin
  try
    iChoiceRow := cxBubinView.DataController.FocusedRecordIndex;
    if iChoiceRow = -1 then Exit;

    if iChoiceRow > 0 then
    begin
      sCbcode := cxBubinView.DataController.Values[iChoiceRow, 4];
      sCbCd   := Copy(sCbcode, 1, Pos(',', sCbcode) - 1);
      sBubin  := Trim(cxBubinView.DataController.Values[iChoiceRow, 0]) + ' | ' +
                 Trim(cxBubinView.DataController.Values[iChoiceRow, 1]);
      Frm_Main.Frm_JON01N[Self.Tag].lblCuBubinName.Caption := '���ΰ� [ ' + Trim(sBubin) + ' ]';
      Frm_Main.Frm_JON01N[Self.Tag].cxtCuBubin.Text := sBubin;
      Frm_Main.Frm_JON01N[Self.Tag].cxtCuBubin.Hint := sCbCd;
      if (Pos('����', Self.Caption) = 0 ) then
      begin
        iRow := GT_BUBIN_INFO.cbcode.IndexOf(sCbcode);
        Frm_Main.Frm_JON01N[Self.Tag].PayMethod := PAY_METHOD_MONEY;
      end;
    end else
    begin
      Frm_Main.Frm_JON01N[Self.Tag].cxtCuBubin.Text := '';
      Frm_Main.Frm_JON01N[Self.Tag].cxtCuBubin.Hint := '';
      Frm_Main.Frm_JON01N[Self.Tag].payMethod := PAY_METHOD_MONEY;
      Frm_Main.Frm_JON01N[Self.Tag].lblCuBubinName.Caption := '';
    end;
    cxBubinView.DataController.SetRecordCount(0);
    Frm_Main.Frm_JON01N[Self.Tag].pCompareCustInfo;
    cxBtnClose.Click;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

// ���������� ��ȸ�Ѵ�.
procedure TFrm_JON01_01.Proc_BubinListSearch;
var
  i, iRow: Integer;
  sKeyNum, sShortNm, sShortDp, sFullName, sFullDp, sCbCode, sBrNo: string;
begin
  SetDebugeWrite('JON01B.Proc_BubinListSearch');
  try
    // ���õ� ������������ �����ڵ�.
    sBrNo := Frm_Main.Frm_JON01N[Self.Tag].Proc_BRNOSearch; //�����ڵ�
    // ���õ� ������������ ��ǥ��ȣ.
    sKeyNum := Frm_Main.Frm_JON01N[Self.Tag].Proc_MainKeyNumberSearch; //��ǥ��ȣ
    sKeyNum := StringReplace(sKeyNum, '-', '', [rfReplaceAll]);

    cxBubinView.BeginUpdate;

    cxBubinView.DataController.SetRecordCount(0);
    iRow := cxBubinView.DataController.AppendRecord;
    cxBubinView.DataController.Values[iRow, 0] := '����(�����������Է�)';
    // ���θ�
    cxBubinView.DataController.Values[iRow, 1] := '����'; // �μ���
    cxBubinView.DataController.Values[iRow, 2] := '����'; // ������θ�
    cxBubinView.DataController.Values[iRow, 3] := '����'; // ����μ���
    cxBubinView.DataController.Values[iRow, 4] := ''; // �����ڵ�
    for i := 0 to GT_BUBIN_INFO.cbEtc.Count - 1 do
    begin
      if GT_BUBIN_INFO.brNo_KeyNum.Strings[i] = Rpad(sBrNo, 5, ' ') + Rpad(sKeyNum, 15, ' ') then
      begin
        if (Trim(cxtBubinSearchName.Text) = '') or  (Pos(Trim(cxtBubinSearchName.Text),
          GT_BUBIN_INFO.cbEtc.Strings[i]) > 0) then
        begin
          sFullName := Trim(GT_BUBIN_INFO.cbCorpNm.Strings[i]);
          sFullDp   := Trim(GT_BUBIN_INFO.cbDeptNm.Strings[i]);
          sShortNm  := Trim(GT_BUBIN_INFO.cbSCorpNm.Strings[i]);
          sShortDp  := Trim(GT_BUBIN_INFO.cbSDeptNm.Strings[i]);
          sCbCode   := GT_BUBIN_INFO.cbcode.Strings[i];
          // �����ڵ� + , + �����ڵ�
					iRow := cxBubinView.DataController.AppendRecord;
          //Inc(iRow);
          cxBubinView.DataController.Values[iRow, 0] := sFullName;
          cxBubinView.DataController.Values[iRow, 1] := sFullDp;
          cxBubinView.DataController.Values[iRow, 2] := sShortNm;
          cxBubinView.DataController.Values[iRow, 3] := sShortDp;
          cxBubinView.DataController.Values[iRow, 4] := sCbCode;
        end;
      end;
    end;
    cxBubinView.EndUpdate;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

end.

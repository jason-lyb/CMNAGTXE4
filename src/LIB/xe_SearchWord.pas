unit xe_SearchWord;

interface

uses
  sysutils, Classes, Vcl.Dialogs, cxPC, cxGroupBox, cxCheckBox,
  cxRadioGroup, cxLabel, cxGridDBTableView, cxGridBandedTableView, cxDropDownEdit,
  Vcl.StdCtrls, xe_gnl, Vcl.Graphics, cxButtons;

  function GetParentNameCheck(AName : String; AControl: TComponent): Boolean;
  procedure pGetComponentListWOR;
  procedure pGetComponentListBTN;
  procedure pGetComponentListCUT;
  procedure pGetComponentListSET;
  procedure pGetComponentListSMS;
  procedure pGetComponentListUSR;
  procedure pGetComponentListJON30S;
  function pGetComponentListSave( vCom : TComponent ) : String;
  function fSetEncode( sValue : String ) : String;
  procedure pSetLoadMenuAll;
  procedure pGetMenuCodeToName( vCode : Integer; Var vMnuA, vMenu : String );
  procedure pFormComponentFontColor( AType : Integer );
  procedure pSetFormComponentFontColorChange(Var vCom : TComponent);
  procedure pGetFormComponentFontColorChange(Var vCom : TComponent);
  function fGetPermission( iTag : Integer ) : Boolean;

Var
  SchAllMenu : array of TSearchMenu;

implementation

uses xe_Func, xe_WOR, xe_BTN, xe_SET, xe_CUT,
  xe_SMS, xe_JON30S, xe_gnl2, Main;


function fSetEncode( sValue : String ) : String;
begin
  sValue := StringReplace(sValue, ' ', '', [rfReplaceAll]);
  sValue := StringReplace(sValue, #13, '', [rfReplaceAll]);
  sValue := StringReplace(sValue, #10, '', [rfReplaceAll]);
  Result := sValue;
end;

function GetParentNameCheck(AName : String; AControl: TComponent): Boolean;
var
  LOwner: TComponent;
  isOK : Boolean;
  sName : String;
begin
  isOk := False;

  if (AControl is TcxTabSheet) then
  begin
    sName := (AControl as TcxTabSheet).Name;
    if UpperCase(sName) = UpperCase(AName) then isOk := True;
  end;

  LOwner := AControl.GetParentComponent;
  while Not isOk do
  begin
    if LOwner = nil then Break;
    if (LOwner is TcxTabSheet) then
    begin
      sName := (LOwner as TcxTabSheet).Name;
      if UpperCase(sName) = UpperCase(AName) then isOk := True;
    end;
    LOwner := LOwner.GetParentComponent;
  end;
  Result := isOk;
end;

procedure pGetComponentListWOR;
var i : Integer;
    sField, sMenu : String;
    sTmp : TStringList;
begin
  try
    sTmp  := TStringList.Create;
    for i := 0 to Frm_WOR.ComponentCount - 1 do
    begin
      if GetParentNameCheck('cxTabSheet1', Frm_WOR.Components[i]) = True then sMenu := '302' else   // ���ĳ������
      if GetParentNameCheck('cxTabSheet3', Frm_WOR.Components[i]) = True then sMenu := '303' else   // ��������Ȳ
      if GetParentNameCheck('cxTabSheet4', Frm_WOR.Components[i]) = True then sMenu := '304' else   // �����ݹ�������
      if GetParentNameCheck('cxTabSheet5', Frm_WOR.Components[i]) = True then sMenu := '305' else   // ������Ʈ
      if GetParentNameCheck('cxTabSheet6', Frm_WOR.Components[i]) = True then sMenu := '306' else   // �ɾ߹���������Ȳ
      if GetParentNameCheck('cxTabSheet7', Frm_WOR.Components[i]) = True then sMenu := '307' else   // ������ǥ
      begin
        Continue;
      end;

      sField := pGetComponentListSave(Frm_WOR.Components[i]);
      if Trim(sField) <> '' then
        sTmp.Add(sMenu + '|' + sField );
    end;
    sTmp.SaveToFile('C:\wor.txt');
  finally
    sTmp.Free;
  end;
end;

procedure pGetComponentListBTN;
var i : Integer;
    sField, sMenu : String;
    sTmp : TStringList;
begin
  try
    sTmp  := TStringList.Create;
    for i := 0 to Frm_BTN.ComponentCount - 1 do
    begin
      if GetParentNameCheck('cxTabSheet2', Frm_BTN.Components[i]) = True then sMenu := '1602' else   // �����������
      if GetParentNameCheck('cxTabSheet3', Frm_BTN.Components[i]) = True then sMenu := '1603' else   // ���Ұ���
      if GetParentNameCheck('cxTabSheet4', Frm_BTN.Components[i]) = True then sMenu := '1604' else   // ��������
      if GetParentNameCheck('cxTabSheet5', Frm_BTN.Components[i]) = True then sMenu := '1605' else   // �����������
      if GetParentNameCheck('cxTabSheet6', Frm_BTN.Components[i]) = True then sMenu := '1606' else   // ��������
      begin
        Continue;
      end;

      sField := pGetComponentListSave(Frm_BTN.Components[i]);
      if Trim(sField) <> '' then
        sTmp.Add(sMenu + '|' + sField );
    end;
    sTmp.SaveToFile('C:\btn.txt');
  finally
    sTmp.Free;
  end;
end;

procedure pGetComponentListCUT;
var i : Integer;
    sField, sMenu : String;
    sTmp : TStringList;
begin
  try
    sTmp  := TStringList.Create;
    for i := 0 to Frm_CUT.ComponentCount - 1 do
    begin
//      if GetParentNameCheck('cxTabSheet1' , Frm_CUT.Components[i]) = True then sMenu := '401' else    // ������
//      if GetParentNameCheck('cxTabSheet2' , Frm_CUT.Components[i]) = True then sMenu := '402' else    // �Ϲݰ˻�
//      if GetParentNameCheck('cxTabSheet3' , Frm_CUT.Components[i]) = True then sMenu := '403' else    // ��ް˻�
//      if GetParentNameCheck('cxTabSheet4' , Frm_CUT.Components[i]) = True then sMenu := '404' else    // �󼼰˻�
//      if GetParentNameCheck('cxTabSheet5' , Frm_CUT.Components[i]) = True then sMenu := '405' else    // �Ƚɹ�ȣ����
//      if GetParentNameCheck('cxTabSheet6' , Frm_CUT.Components[i]) = True then sMenu := '406' else    // �޸��
      if GetParentNameCheck('cxTabSheet7' , Frm_CUT.Components[i]) = True then sMenu := '407' else    // ����޼���
      if GetParentNameCheck('cxTabSheet8' , Frm_CUT.Components[i]) = True then sMenu := '408' else    // ���ϸ�������
//      if GetParentNameCheck('cxTabSheet9' , Frm_CUT.Components[i]) = True then sMenu := '409' else    // ���ϸ�����Ȳ(����)
//      if GetParentNameCheck('cxTabSheet10', Frm_CUT.Components[i]) = True then sMenu := '410' else    // ���ϸ�����(����+����)
//      if GetParentNameCheck('cxTabSheet11', Frm_CUT.Components[i]) = True then sMenu := '411' else    // OKĳ����������Ȳ

//      if GetParentNameCheck('cxTabSheet12', Frm_CUT.Components[i]) = True then sMenu := '501' else    // ���ΰ���
//      if GetParentNameCheck('cxTabSheet13', Frm_CUT.Components[i]) = True then sMenu := '502' else    // �����̿볻��
//      if GetParentNameCheck('cxTabSheet14', Frm_CUT.Components[i]) = True then sMenu := '503' else    // ������������
//      if GetParentNameCheck('cxTabSheet15', Frm_CUT.Components[i]) = True then sMenu := '504' else    // ��������
//      if GetParentNameCheck('cxTabSheet16', Frm_CUT.Components[i]) = True then sMenu := '505' else    // ����õ¡����Ȳ
//      if GetParentNameCheck('cxTabSheet17', Frm_CUT.Components[i]) = True then sMenu := '506' else    // ���ο�����
      begin
        Continue;
      end;

      sField := pGetComponentListSave(Frm_CUT.Components[i]);
      if Trim(sField) <> '' then
        sTmp.Add(sMenu + '|' + sField );
    end;
    sTmp.SaveToFile('C:\cut.txt');
  finally
    sTmp.Free;
  end;
end;

procedure pGetComponentListJON30S;
var i : Integer;
    sField, sMenu : String;
    sTmp : TStringList;
begin
  try
    sTmp  := TStringList.Create;
    for i := 0 to Frm_JON30S.ComponentCount - 1 do
    begin
      if GetParentNameCheck('cxTabSheet1', Frm_JON30S.Components[i]) = True then sMenu := '3001' else   // POI�˻�����-�˻�����
      if GetParentNameCheck('cxTabSheet2', Frm_JON30S.Components[i]) = True then sMenu := '3002' else   // POI�˻�����-�˻�APIKey����
      if GetParentNameCheck('cxTabSheet3', Frm_JON30S.Components[i]) = True then sMenu := '3003' else   // POI�˻�����-�˻�POIġȯ����
      begin
        Continue;
      end;

      sField := pGetComponentListSave(Frm_JON30S.Components[i]);
      if Trim(sField) <> '' then
        sTmp.Add(sMenu + '|' + sField );
    end;
    sTmp.SaveToFile('C:\jon30s.txt');
  finally
    sTmp.Free;
  end;
end;

procedure pGetComponentListSET;
var i : Integer;
    sField, sMenu : String;
    sTmp : TStringList;
begin
  try
    sTmp  := TStringList.Create;
    for i := 0 to Frm_SET.ComponentCount - 1 do
    begin
      if GetParentNameCheck('cxTabSheet1', Frm_SET.Components[i]) = True then sMenu := '1403' else   // ���������
      if GetParentNameCheck('cxTabSheet2', Frm_SET.Components[i]) = True then sMenu := '1404' else   // ���������[��ǥ��ȣ]
      if GetParentNameCheck('cxTabSheet3', Frm_SET.Components[i]) = True then sMenu := '1405' else   // ���������[����]
      if GetParentNameCheck('cxTabSheet4', Frm_SET.Components[i]) = True then sMenu := '1406' else   // �ɾ��������
      if GetParentNameCheck('cxTabSheet5', Frm_SET.Components[i]) = True then sMenu := '1407' else   // CID��ǥ��ȣDNIS����
      begin
        Continue;
      end;

      sField := pGetComponentListSave(Frm_SET.Components[i]);
      if Trim(sField) <> '' then
        sTmp.Add(sMenu + '|' + sField );
    end;
    sTmp.SaveToFile('C:\set.txt');
  finally
    sTmp.Free;
  end;
end;

procedure pGetComponentListSMS;
var i : Integer;
    sField, sMenu : String;
    sTmp : TStringList;
begin
  try
    sTmp  := TStringList.Create;
    for i := 0 to Frm_SMS.ComponentCount - 1 do
    begin
      if GetParentNameCheck('cxTabSheet1', Frm_SMS.Components[i]) = True then sMenu := '1001' else   // SMS�߼�
      if GetParentNameCheck('cxTabSheet2', Frm_SMS.Components[i]) = True then sMenu := '1002' else   // �뷮����SMS�߼�
      if GetParentNameCheck('cxTabSheet3', Frm_SMS.Components[i]) = True then sMenu := '1003' else   // ��ȸ���(��)
      if GetParentNameCheck('cxTabSheet4', Frm_SMS.Components[i]) = True then sMenu := '1004' else   // ��ȸ���(�Ϻ�)
      if GetParentNameCheck('cxTabSheet5', Frm_SMS.Components[i]) = True then sMenu := '1005' else   // ���Űźΰ���
      begin
        Continue;
      end;

      sField := pGetComponentListSave(Frm_SMS.Components[i]);
      if Trim(sField) <> '' then
        sTmp.Add(sMenu + '|' + sField );
    end;
    sTmp.SaveToFile('C:\sms.txt');
  finally
    sTmp.Free;
  end;
end;

procedure pGetComponentListUSR;
var i, j : Integer;
    sField, sMenu : String;
    sTmp : TStringList;
begin
//  try
//    sTmp  := TStringList.Create;
//    for i := 0 to Frm_USR.ComponentCount - 1 do
//    begin
//      if GetParentNameCheck('cxTabSheet1' , Frm_USR.Components[i]) = True then sMenu := '901' else    // ��������
//      if GetParentNameCheck('cxTabSheet2' , Frm_USR.Components[i]) = True then sMenu := '902' else    // ���Ѽ���
//      if GetParentNameCheck('cxTabSheet3' , Frm_USR.Components[i]) = True then sMenu := '903' else    // ������Ȳ
//      if GetParentNameCheck('cxTabSheet4' , Frm_USR.Components[i]) = True then sMenu := '904' else    // ��������(����)
//      if GetParentNameCheck('cxTabSheet5' , Frm_USR.Components[i]) = True then sMenu := '905' else    // ��������(PC)
//      if GetParentNameCheck('cxTabSheet6' , Frm_USR.Components[i]) = True then sMenu := '906' else    // �����ٿ���Ȳ
//      if GetParentNameCheck('cxTabSheet7' , Frm_USR.Components[i]) = True then sMenu := '907' else    // ����������Ȳ
//      if GetParentNameCheck('cxTabSheet8' , Frm_USR.Components[i]) = True then sMenu := '908' else    // �������ð����
//      if GetParentNameCheck('cxTabSheet9' , Frm_USR.Components[i]) = True then sMenu := '909' else    // ����������Ȳ
//      if GetParentNameCheck('cxTabSheet10', Frm_USR.Components[i]) = True then sMenu := '910' else    // �йи������ڼ���
//      begin
//        Continue;
//      end;
//
//      sField := pGetComponentListSave(Frm_USR.Components[i]);
//      if Trim(sField) <> '' then
//        sTmp.Add(sMenu + '|' + sField );
//    end;
//    sTmp.SaveToFile('C:\usr.txt');
//  finally
//    sTmp.Free;
//  end;
end;

function pGetComponentListSave( vCom : TComponent ) : String;
var j : Integer;
    sField, sMenu, sName : String;
begin
  try
    sField := '';
    if vCom is TLabel then
    begin
      if ( vCom as TLabel ).Visible then
      begin
        sField := ( vCom as TLabel ).Caption;
        sField := fSetEncode(sField);
        sName := ( vCom as TLabel ).Name;
      end;
    end else
    if vCom is TcxLabel then
    begin
      if ( vCom as TcxLabel ).Visible then
      begin
        sField := ( vCom as TcxLabel ).Caption;
        sField := fSetEncode(sField);
        sName := ( vCom as TcxLabel ).Name;
      end;
    end else
    if vCom is TcxCheckBox then
    begin
//      if ( vCom as TcxCheckBox ).Visible then
      begin
        sField := ( vCom as TcxCheckBox ).Caption;
        sField := fSetEncode(sField);
        sName := ( vCom as TcxCheckBox ).Name;
      end;
    end else
    if vCom is TcxRadioButton then
    begin
//      if ( vCom as TcxRadioButton ).Visible then
      begin
        sField := ( vCom as TcxRadioButton ).Caption;
        sField := fSetEncode(sField);
        sName := ( vCom as TcxRadioButton ).Name;
      end;
    end else
    if vCom is TcxGroupBox then
    begin
//      if ( vCom as TcxGroupBox ).Visible then
      begin
        sField := ( vCom as TcxGroupBox ).Caption;
        sField := fSetEncode(sField);
        sName := ( vCom as TcxGroupBox ).Name;
      end;
    end else
    if vCom is TcxTabSheet then
    begin
//      if ( vCom as TcxTabSheet ).Visible then
      begin
        sField := ( vCom as TcxTabSheet ).Caption;
        sField := fSetEncode(sField);
        sName := ( vCom as TcxTabSheet ).Name;
      end;
    end else
    if vCom is TcxGridBandedTableView then
    begin
      for j := 0 to ( vCom as TcxGridBandedTableView ).ColumnCount - 1 do
      begin
        if j = 0 then
          sField := ( vCom as TcxGridBandedTableView ).Bands[j].Caption
        else
          sField := sField + ';' + ( vCom as TcxGridBandedTableView ).Bands[j].Caption
      end;
      sField := fSetEncode(sField);
      sName := ( vCom as TcxGridBandedTableView ).Name;
    end else
    if vCom is TcxGridDBTableView then
    begin
      for j := 0 to ( vCom as TcxGridDBTableView ).ColumnCount - 1 do
      begin
        if j = 0 then
          sField := ( vCom as TcxGridDBTableView ).Columns[j].Caption
        else
          sField := sField + ';' + ( vCom as TcxGridDBTableView ).Columns[j].Caption
      end;
      sField := fSetEncode(sField);
      sName := ( vCom as TcxGridDBTableView ).Name;
    end else
    if vCom is TcxComboBox then
    begin
      if ( vCom as TcxComboBox ).Visible then
      begin
        for j := 0 to ( vCom as TcxComboBox ).Properties.Items.Count - 1 do
        begin
          if j = 0 then
            sField := ( vCom as TcxComboBox ).Properties.Items[j]
          else
            sField := sField + ';' + ( vCom as TcxComboBox ).Properties.Items[j];
        end;
        sField := fSetEncode(sField);
        sName := ( vCom as TcxComboBox ).Name;
      end;
    end;

    if Length(sField) > 1 then
      sField := sName + '|' + sField
    else
      sField := '';

    Result := sField;
  except
//    Result := sName + '|' + 'Error';
    Result := '';
  end;
end;

procedure pSetLoadMenuAll;
Var slFile, slData : TStringList;
    i : Integer;
    FDecFile : AnsiString;
begin
  try
    slFile := TStringList.Create;

	  if (FileExists(DBDIRECTORY + 'mnsch.dat') = True) then
	  begin
	  	try
				locLoadFile_Decrypt(DBDIRECTORY + 'mnsch.dat', FDecFile);
  			slFile.Text := FDecFile;

        SetLength(SchAllMenu, slFile.Count);
        slData := TStringList.Create;
	  		for i := 0 to slFile.Count - 1 do
        begin
          try
	  				GetTextSeperationEx('|', slFile[i], slData);
            SchAllMenu[i].Code := StrToIntDef(slData.Strings[0], 0);
            SchAllMenu[i].Menu := slData.Strings[1];
            SchAllMenu[i].Text := slData.Strings[2];
          finally

          end;
        end;
      finally
        FreeAndNil(slData);
      end;
    end;
  finally
    FreeAndNil(slFile);
  end;
end;

procedure pGetMenuCodeToName( vCode : Integer; Var vMnuA, vMenu : String );
begin
  if vCode = 301 then begin vMnuA := '������'; vMenu := '�����Ȳ����';     end;
  if vCode = 302 then begin vMnuA := '������'; vMenu := '���ĳ������';     end;
  if vCode = 303 then begin vMnuA := '������'; vMenu := '��������Ȳ';     end;
  if vCode = 304 then begin vMnuA := '������'; vMenu := '�����ݹ�������';   end;
  if vCode = 305 then begin vMnuA := '������'; vMenu := '������Ʈ';       end;
  if vCode = 306 then begin vMnuA := '������'; vMenu := '�ɾ߹���������Ȳ'; end;
  if vCode = 307 then begin vMnuA := '������'; vMenu := '������ǥ';       end;
  if vCode = 310 then begin vMnuA := '������'; vMenu := '����Ⱦ�';         end;
  if vCode = 311 then begin vMnuA := '������'; vMenu := '������';         end;

  if vCode = 1001 then begin vMnuA := '�������'; vMenu := 'SMS�߼�';          end;
  if vCode = 1002 then begin vMnuA := '�������'; vMenu := '�뷮����SMS�߼�';  end;
  if vCode = 1003 then begin vMnuA := '�������'; vMenu := '��ȸ���(��)';   end;
  if vCode = 1004 then begin vMnuA := '�������'; vMenu := '��ȸ���(�Ϻ�)';   end;
  if vCode = 1005 then begin vMnuA := '�������'; vMenu := '���Űźΰ���';     end;

  if vCode = 401 then begin vMnuA := '������'; vMenu := '������';         end;
  if vCode = 402 then begin vMnuA := '������'; vMenu := '�Ϲݰ˻�';         end;
  if vCode = 403 then begin vMnuA := '������'; vMenu := '��ް˻�';         end;
  if vCode = 404 then begin vMnuA := '������'; vMenu := '�󼼰˻�';         end;
  if vCode = 405 then begin vMnuA := '������'; vMenu := '�Ƚɹ�ȣ����';     end;
  if vCode = 406 then begin vMnuA := '������'; vMenu := '�޸հ�';         end;
  if vCode = 407 then begin vMnuA := '������'; vMenu := '����ް���';     end;
  if vCode = 408 then begin vMnuA := '������'; vMenu := '���ϸ�������';     end;
  if vCode = 409 then begin vMnuA := '������'; vMenu := '���ϸ�����Ȳ(����)';    end;
  if vCode = 410 then begin vMnuA := '������'; vMenu := '���ϸ�����(����+����)'; end;
  if vCode = 411 then begin vMnuA := '������'; vMenu := 'OKĳ����������Ȳ'; end;

  if vCode = 501 then begin vMnuA := '���ΰ���'; vMenu := '���ΰ���';         end;
  if vCode = 502 then begin vMnuA := '���ΰ���'; vMenu := '�����̿볻��';     end;
  if vCode = 503 then begin vMnuA := '���ΰ���'; vMenu := '������������';     end;
  if vCode = 504 then begin vMnuA := '���ΰ���'; vMenu := '��������';         end;
  if vCode = 505 then begin vMnuA := '���ΰ���'; vMenu := '����õ¡����Ȳ'; end;

//    AdvGridMenu.Cells[04, 00] := '200';  AdvGridMenu.Cells[05, 00] := '��   ��';

  if vCode = 801  then begin vMnuA := 'ȸ�����'; vMenu := '�������';         end;
  if vCode = 802  then begin vMnuA := 'ȸ�����'; vMenu := '�������';         end;
  if vCode = 8021 then begin vMnuA := 'ȸ�����'; vMenu := '�������-��������-����⺻����'; end;
  if vCode = 8022 then begin vMnuA := 'ȸ�����'; vMenu := '�������-��������-���������'; end;
  if vCode = 8023 then begin vMnuA := 'ȸ�����'; vMenu := '�������-��������-�����������'; end;

  if vCode = 803  then begin vMnuA := 'ȸ�����'; vMenu := '�ڵ�SMS����';      end;
  if vCode = 8031 then begin vMnuA := 'ȸ�����'; vMenu := '�ڵ�SMS����-�ǽð�SMS1'; end;
  if vCode = 8032 then begin vMnuA := 'ȸ�����'; vMenu := '�ڵ�SMS����-�ǽð�SMS2'; end;
  if vCode = 8033 then begin vMnuA := 'ȸ�����'; vMenu := '�ڵ�SMS����-������SMS';  end;
  if vCode = 80331 then begin vMnuA := 'ȸ�����'; vMenu := '�ڵ�SMS����-������SMS-���ΰ�������SMS';  end;
  if vCode = 80332 then begin vMnuA := 'ȸ�����'; vMenu := '�ڵ�SMS����-������SMS-���Ұ�������SMS';  end;
  if vCode = 80333 then begin vMnuA := 'ȸ�����'; vMenu := '�ڵ�SMS����-������SMS-���ΰ�������SMS';  end;
  if vCode = 80334 then begin vMnuA := 'ȸ�����'; vMenu := '�ڵ�SMS����-������SMS-�ҷ���������SMS';  end;
  if vCode = 80335 then begin vMnuA := 'ȸ�����'; vMenu := '�ڵ�SMS����-������SMS-��翡�Դ�����SMS';  end;
  if vCode = 8034 then begin vMnuA := 'ȸ�����'; vMenu := '�ڵ�SMS����-�̿�Ƚ���� ���� �����';  end;

  if vCode = 804 then begin vMnuA := 'ȸ�����'; vMenu := '������������';     end;
  if vCode = 805 then begin vMnuA := 'ȸ�����'; vMenu := '�����ݼ���';       end;
  if vCode = 806 then begin vMnuA := 'ȸ�����'; vMenu := '��ǥ��ȣ���������'; end;

//    AdvGridMenu.Cells[08, 00] := '1100'; AdvGridMenu.Cells[09, 00] := '��   ��';

  if vCode = 901 then begin vMnuA := '��������'; vMenu := '��������';         end;
  if vCode = 902 then begin vMnuA := '��������'; vMenu := '���Ѽ���';         end;
  if vCode = 903 then begin vMnuA := '��������'; vMenu := '������Ȳ';         end;
  if vCode = 904 then begin vMnuA := '��������'; vMenu := '��������(�����)'; end;
  if vCode = 905 then begin vMnuA := '��������'; vMenu := '��������(PC)';     end;
  if vCode = 906 then begin vMnuA := '��������'; vMenu := '�����ٿ���Ȳ';     end;
  if vCode = 907 then begin vMnuA := '��������'; vMenu := '����������Ȳ';     end;
  if vCode = 908 then begin vMnuA := '��������'; vMenu := '�������ð����';   end;
  if vCode = 909 then begin vMnuA := '��������'; vMenu := '����������Ȳ';     end;
  if vCode = 910 then begin vMnuA := '��������'; vMenu := '�йи������ڼ���'; end;

//    AdvGridMenu.Cells[12, 00] := '1200'; AdvGridMenu.Cells[13, 00] := '��   ��';

  if vCode = 601 then begin vMnuA := '�������'; vMenu := '����ĳ������';     end;
  if vCode = 602 then begin vMnuA := '�������'; vMenu := '����ķα�';       end;
  if vCode = 603 then begin vMnuA := '�������'; vMenu := '��������';         end;
  if vCode = 604 then begin vMnuA := '�������'; vMenu := '������������';     end;
  if vCode = 605 then begin vMnuA := '�������'; vMenu := '�����������';     end;
  if vCode = 606 then begin vMnuA := '�������'; vMenu := '������';       end;
  if vCode = 607 then begin vMnuA := '�������'; vMenu := '����������';       end;
  if vCode = 608 then begin vMnuA := '�������'; vMenu := 'ĳ���̵�';         end;
  if vCode = 609 then begin vMnuA := '�������'; vMenu := 'SMSĳ������';      end;
  if vCode = 610 then begin vMnuA := '�������'; vMenu := '���ͱݸ���Ʈ';     end;
  if vCode = 611 then begin vMnuA := '�������'; vMenu := '���ͱݰ��';       end;
  if vCode = 612 then begin vMnuA := '�������'; vMenu := '�ݿ�������';       end;
  if vCode = 613 then begin vMnuA := '�������'; vMenu := '����������Ȳ';   end;
  if vCode = 614 then begin vMnuA := '�������'; vMenu := '�ݴ��������';     end;
  if vCode = 615 then begin vMnuA := '�������'; vMenu := '����������Ȳ';     end;
  if vCode = 616 then begin vMnuA := '�������'; vMenu := '���������Ȳ';     end;
  if vCode = 617 then begin vMnuA := '�������'; vMenu := 'ī�������Ȳ';     end;
  if vCode = 618 then begin vMnuA := '�������'; vMenu := '��ݿ�û';         end;

//  AdvGridMenu.Cells[16, 00] := '1300'; AdvGridMenu.Cells[17, 00] := 'S  M  S';

  if vCode = 1401 then begin vMnuA := '��������'; vMenu := '����';                 end;
  if vCode = 1403 then begin vMnuA := '��������'; vMenu := '���������';           end;
  if vCode = 1404 then begin vMnuA := '��������'; vMenu := '���������[��ǥ��ȣ]'; end;
  if vCode = 1405 then begin vMnuA := '��������'; vMenu := '���������[����]';     end;
  if vCode = 1406 then begin vMnuA := '��������'; vMenu := '�ɾ��������';         end;
  if vCode = 1407 then begin vMnuA := '��������'; vMenu := 'CID����';              end;
  if vCode = 1408 then begin vMnuA := '��������'; vMenu := 'CID��ǥ��ȣDNIS����';  end;
  if vCode = 1409 then begin vMnuA := '��������'; vMenu := '�޽���';               end;
  if vCode = 1414 then begin vMnuA := '��������'; vMenu := 'CID����';              end;

  if vCode = 811 then begin vMnuA := '�۰���'; vMenu := '��/����ƮǪ�ü���';      end;
  if vCode = 812 then begin vMnuA := '�۰���'; vMenu := '�۰Խù�����';           end;
  if vCode = 813 then begin vMnuA := '�۰���'; vMenu := '��Ǫ�ð���';             end;
  if vCode = 814 then begin vMnuA := '�۰���'; vMenu := '�ݸ���SMS�߼۳���';      end;
  if vCode = 815 then begin vMnuA := '�۰���'; vMenu := '����ƮPUSH�߼۳���';     end;
  if vCode = 816 then begin vMnuA := '�۰���'; vMenu := '�ݸ���SMS�߼��Ϻ����';  end;
  if vCode = 817 then begin vMnuA := '�۰���'; vMenu := '����ƮPUSH�߼��Ϻ����'; end;

  if vCode = 701 then begin vMnuA := '������'; vMenu := '��ǥ��ȣ�����';   end;
  if vCode = 702 then begin vMnuA := '������'; vMenu := '��纰���';       end;
  if vCode = 703 then begin vMnuA := '������'; vMenu := '�������';       end;
  if vCode = 704 then begin vMnuA := '������'; vMenu := '�ڻ����';         end;
  if vCode = 705 then begin vMnuA := '������'; vMenu := '���������';       end;
  if vCode = 706 then begin vMnuA := '������'; vMenu := '���������';       end;
  if vCode = 707 then begin vMnuA := '������'; vMenu := '�ű԰����';     end;
  if vCode = 708 then begin vMnuA := '������'; vMenu := '�ð��뺰�����'; end;
  if vCode = 709 then begin vMnuA := '������'; vMenu := '�����ݼ����';     end;
  if vCode = 710 then begin vMnuA := '������'; vMenu := '�ű��ݼ����';     end;
  if vCode = 711 then begin vMnuA := '������'; vMenu := '��������';       end;
  if vCode = 712 then begin vMnuA := '������'; vMenu := '�ð��뺰��/���������'; end;
  if vCode = 713 then begin vMnuA := '������'; vMenu := '������ݺ����';        end;
  if vCode = 714 then begin vMnuA := '������'; vMenu := '�������-���ų�����'; end;

  if vCode = 1602 then begin vMnuA := '�ݺ�����'; vMenu := '�����������';      end;
  if vCode = 1603 then begin vMnuA := '�ݺ�����'; vMenu := '���Ұ���';          end;
  if vCode = 1604 then begin vMnuA := '�ݺ�����'; vMenu := '��������';          end;
  if vCode = 1605 then begin vMnuA := '�ݺ�����'; vMenu := '�����������';      end;
  if vCode = 1606 then begin vMnuA := '�ݺ�����'; vMenu := '��������';          end;

  if vCode = 3001 then begin vMnuA := 'POI�˻�����'; vMenu := '�˻�����';        end;
  if vCode = 3002 then begin vMnuA := 'POI�˻�����'; vMenu := '�˻�APIKey����';  end;
  if vCode = 3003 then begin vMnuA := 'POI�˻�����'; vMenu := '�˻�POIġȯ����'; end;
end;

function fGetPermission( iTag : Integer ) : Boolean;
begin
  Result := False;
  try
    if iTag = 407 then // ����޼���   Frm_CUT
    begin
      if Frm_Main.Menu407.Visible then Result := True;
    end else
    if iTag = 408 then // ���ϸ�������   Frm_CUT
    begin
      if Frm_Main.Menu408.Visible then Result := True;
    end else
    if iTag = 811 then // ��/����ƮǪ�ü���   Frm_APP
    begin
      if Frm_Main.Menu811.Visible then Result := True;
    end else
    if iTag = 801 then // �������         Frm_CMP
    begin
      if Frm_Main.Menu801.Visible then Result := True;
    end else
    if ( iTag = 8021 ) Or ( iTag = 8022 ) Or ( iTag = 8023 ) then // �������         Frm_CMP
    begin
      if Frm_Main.Menu802.Visible then Result := True;
    end else
    if iTag = 805 then // �����ݼ���       Frm_CMP
    begin
      if Frm_Main.Menu805.Visible then Result := True;
    end else
    if ( iTag = 803 ) Or ( iTag = 8031 ) Or ( iTag = 8032 ) Or ( iTag = 8033 ) Or
       ( iTag = 80331 ) Or ( iTag = 80332 ) Or ( iTag = 80333 ) Or ( iTag = 80334 ) Or ( iTag = 80335 ) Or
       ( iTag = 8034 ) then // �ڵ�SMS����     Frm_CMP
    begin
      if Frm_Main.Menu803.Visible then Result := True;
    end else
    if iTag = 1602 then
    begin
      if Frm_Main.Menu1602.Visible then Result := True;
    end else
    if iTag = 1603 then
    begin
      if Frm_Main.Menu1603.Visible then Result := True;
    end else
    if iTag = 1604 then
    begin
      if Frm_Main.Menu1604.Visible then Result := True;
    end else
    if iTag = 1605 then
    begin
      if Frm_Main.Menu1605.Visible then Result := True;
    end else
    if iTag = 1606 then
    begin
      if Frm_Main.Menu1606.Visible then Result := True;
    end else
    if ( iTag = 3001 ) Or ( iTag = 3002 ) Or ( iTag = 3003 ) then // POI�˻� ����    Frm_JON30S
    begin
      Result := True;
    end else
    if ( iTag = 1403 ) Or ( iTag = 1404 ) Or ( iTag = 1405 ) Or
       ( iTag = 1406 ) Or ( iTag = 1407 ) then
    begin
      Result := True;
    end;
  except
    Result := False;
  end;


//    TCK_USER_PER.JON_MainView = '1'   //  '��   ��';
//    Frm_Main.Menu301.Visible     //  '�����Ȳ����';
//    Frm_Main.Menu302.Visible     //  '���ĳ������';
//    Frm_Main.Menu303.Visible     //  '��������Ȳ';
//    Frm_Main.Menu304.Visible     //  '�����ݹ�������';
//    Frm_Main.Menu305.Visible     //  '������Ʈ';
//    Frm_Main.Menu306.Visible     //  '�ɾ߹���������Ȳ';
//    Frm_Main.Menu307.Visible     //  '������ǥ';
//    Frm_Main.Menu310.Visible     //  '����Ⱦ�';
//    Frm_Main.Menu311.Visible     //  '������';
//
//    Frm_Main.Menu1001.Visible     //   'SMS�߼�';
//    Frm_Main.Menu1002.Visible     //   '�뷮����SMS�߼�';
//    Frm_Main.Menu1003.Visible     //   '��ȸ���(��)';
//    Frm_Main.Menu1004.Visible     //   '��ȸ���(�Ϻ�)';
//    Frm_Main.Menu1005.Visible     //   '���Űźΰ���';
//
//    Frm_Main.btnMainMenu1.Enabled //   '��   ��';
//
//    Frm_Main.Menu401.Visible       //   '������';
//    Frm_Main.Menu402.Visible       //   '�Ϲݰ˻�';
//    Frm_Main.Menu403.Visible       //   '��ް˻�';
//    Frm_Main.Menu404.Visible       //   '�󼼰˻�';
//    Frm_Main.Menu405.Visible       //   '�Ƚɹ�ȣ����';
//    Frm_Main.Menu406.Visible       //   '�޸հ�';
//    Frm_Main.Menu407.Visible       //   '����ް���';
//    Frm_Main.Menu408.Visible       //   '���ϸ�������';
//    Frm_Main.Menu409.Visible       //   '���ϸ�����Ȳ(����)';
//    Frm_Main.Menu410.Visible       //   '���ϸ������(����+����)';
//    Frm_Main.Menu411.Visible       //   'OKĳ����������Ȳ';
//
//    Frm_Main.Menu801.Visible       //   '�������';
//    Frm_Main.Menu802.Visible       //   '�������';
//    Frm_Main.Menu806.Visible       //   '��ǥ��ȣ���������';
//    Frm_Main.Menu803.Visible       //   '�ڵ�SMS����';
//    Frm_Main.Menu805.Visible       //   '�����ݼ���';
//    Frm_Main.Menu804.Visible       //   '������������';
//
//    Frm_Main.Menu1100.Visible      //    '��   ��';
//
//    Frm_Main.Menu501.Visible       //   '���ΰ���';
//    Frm_Main.Menu502.Visible       //   '�����̿볻��';
//    Frm_Main.Menu503.Visible       //   '������������';
//    Frm_Main.Menu504.Visible       //   '��������';
//    Frm_Main.Menu505.Visible       //   '����õ¡����Ȳ';
//
//    Frm_Main.Menu901.Visible       //   '��������';
//    Frm_Main.Menu902.Visible       //   '���Ѽ���';
//    Frm_Main.Menu903.Visible       //   '������Ȳ';
//    Frm_Main.Menu904.Visible       //   '��������(�����)';
//    Frm_Main.Menu905.Visible       //   '��������(PC)';
//    Frm_Main.Menu906.Visible       //   '�����ٿ���Ȳ';
//    Frm_Main.Menu907.Visible       //   '����������Ȳ';
//    Frm_Main.Menu908.Visible       //   '�������ð����';
//    Frm_Main.Menu909.Visible       //   '����������Ȳ';
//    Frm_Main.Menu910.Visible       //   '�йи������ڼ���';
//
//    Frm_Main.Menu1200.Visible     //   '��   ��';
//
//    Frm_Main.Menu601.Visible      //   '����ĳ������';
//    Frm_Main.Menu602.Visible      //   '����ķα�';
//    Frm_Main.Menu603.Visible      //   '��������';
//    Frm_Main.Menu604.Visible      //   '������������';
//    Frm_Main.Menu605.Visible      //   '�����������';
//    Frm_Main.Menu606.Visible      //   '������';
//    Frm_Main.Menu607.Visible      //   '����������';
//    Frm_Main.Menu608.Visible      //   'ĳ���̵�';
//    Frm_Main.Menu609.Visible      //   'SMSĳ������';
//    Frm_Main.Menu610.Visible      //   '���ͱݸ���Ʈ';
//    Frm_Main.Menu611.Visible      //   '���ͱݰ��';
//    Frm_Main.Menu612.Visible      //   '�ݿ�������';
//    Frm_Main.Menu613.Visible      //   '����������Ȳ';
//    Frm_Main.Menu614.Visible      //   '�ݴ��������';
//    Frm_Main.Menu615.Visible      //   '����������Ȳ';
//    Frm_Main.Menu616.Visible      //   '���������Ȳ';
//    Frm_Main.Menu617.Visible      //   'ī�������Ȳ';
//    Frm_Main.Menu618.Visible      //   '��ݿ�û';
//
//    Frm_Main.Menu1300.Enabled     //   'S  M  S';
//
//    AdvGridMenu.Cells[18, 03] := '1';                //   '�Ϲݼ���';
//    AdvGridMenu.Cells[18, 04] := '1';                //   '���������';
//    AdvGridMenu.Cells[18, 05] := '1';                //   '���������[��ǥ��ȣ]';
//    AdvGridMenu.Cells[18, 06] := '1';                //   '���������[����]';
//    AdvGridMenu.Cells[18, 07] := '1';                //   '�ɾ��������';
//    AdvGridMenu.Cells[18, 08] := '1';                //   'CID��ǥ��ȣDNIS����';
//    AdvGridMenu.Cells[18, 09] := '1';                //   'CID����';
//    AdvGridMenu.Cells[18, 10] := '1';                //   'CID����';
//    AdvGridMenu.Cells[18, 11] := '1';                //   '�޽���'
//
//    AdvGridMenu.Cells[18, 14] := '1';                //   '�ڵ���(PDA)�ٿ�ε���';
//    AdvGridMenu.Cells[18, 15] := '1';                //   '����ڸ޴���';
//    AdvGridMenu.Cells[18, 16] := '1';                //   '�������';
//    AdvGridMenu.Cells[18, 17] := '1';                //   '�ݸ���Ȩ������';
//
//    Frm_Main.Menu811.Visible      //   '��/����ƮǪ�ü���';
//    Frm_Main.Menu812.Visible      //   '�۰Խù�����';
//    Frm_Main.Menu813.Visible      //   '��Ǫ�ð���';
//    Frm_Main.Menu814.Visible      //   '�ݸ���SMS�߼۳���';
//    Frm_Main.Menu815.Visible      //   '����ƮPUSH�߼۳���';
//    Frm_Main.Menu816.Visible      //   '�ݸ���SMS�߼��Ϻ����';
//    Frm_Main.Menu817.Visible      //   '����ƮPUSH�߼��Ϻ����';
//
//    Frm_Main.Menu701.Visible      //  '��ǥ��ȣ�����';
//    Frm_Main.Menu702.Visible      //  '��纰���';
//    if ( Frm_Main.Menu701.Visible ) Or ( Frm_Main.Menu702.Visible ) then
//    begin
//      AdvGridMenu.Cells[22, 12] := '1';                //  '�������';
//      AdvGridMenu.Cells[22, 13] := '1';                //  '�ڻ����';
//      AdvGridMenu.Cells[22, 14] := '1';                //  '���������';
//      AdvGridMenu.Cells[22, 15] := '1';                //  '���������';
//      AdvGridMenu.Cells[22, 16] := '1';                //  '�ű԰����';
//      AdvGridMenu.Cells[22, 17] := '1';                //  '�ð��뺰�����';
//      AdvGridMenu.Cells[22, 18] := '1';                //  '�����ݼ����';
//      AdvGridMenu.Cells[22, 19] := '1';                //  '�ű��ݼ����';
//    end else
//    begin
//      AdvGridMenu.Cells[22, 12] := '0';                //  '�������';
//      AdvGridMenu.Cells[22, 13] := '0';                //  '�ڻ����';
//      AdvGridMenu.Cells[22, 14] := '0';                //  '���������';
//      AdvGridMenu.Cells[22, 15] := '0';                //  '���������';
//      AdvGridMenu.Cells[22, 16] := '0';                //  '�ű԰����';
//      AdvGridMenu.Cells[22, 17] := '0';                //  '�ð��뺰�����';
//      AdvGridMenu.Cells[22, 18] := '0';                //  '���ں������';
//      AdvGridMenu.Cells[22, 19] := '0';                //  '�ű��ݼ����';
//    end;
//    Frm_Main.Menu711.Visible               //  '��������';
end;

procedure pFormComponentFontColor( AType : Integer );
Var vlCom : TComponent;
begin
  try
    Case GS_DefaultColor.Tag of
      407, 408 :
        begin
          if Assigned(Frm_CUT) then
          begin
            vlCom := Frm_CUT.FindComponent(GS_DefaultColor.ID);
            if Assigned(vlCom) then
            begin
              if AType = 0 then pSetFormComponentFontColorChange(vlCom) else
              if AType = 1 then pGetFormComponentFontColorChange(vlCom);
            end;
          end;
        end;
      3001, 3002, 3003 :
        begin
          if Assigned(Frm_JON30S) then
          begin
            vlCom := Frm_JON30S.FindComponent(GS_DefaultColor.ID);
            if Assigned(vlCom) then
            begin
              if AType = 0 then pSetFormComponentFontColorChange(vlCom) else
              if AType = 1 then pGetFormComponentFontColorChange(vlCom);
            end;
          end;
        end;
      1403, 1404, 1405, 1406, 1407 :
        begin
          if Assigned(Frm_SET) then
          begin
            vlCom := Frm_SET.FindComponent(GS_DefaultColor.ID);
            if Assigned(vlCom) then
            begin
              if AType = 0 then pSetFormComponentFontColorChange(vlCom) else
              if AType = 1 then pGetFormComponentFontColorChange(vlCom);
            end;
          end;
        end;
    End;
  except

  end;
end;

procedure pGetFormComponentFontColorChange(Var vCom : TComponent);
begin
  try
    if vCom is TLabel then
    begin
       GS_DefaultColor.DColor := ( vCom as TLabel ).Font.Color;
      ( vCom as TLabel ).Font.Color := clRed;
    end else
    if vCom is TcxButton then
    begin
       GS_DefaultColor.DColor := ( vCom as TcxButton ).Font.Color;
      ( vCom as TcxButton ).Font.Color := clRed;
    end else
    if vCom is TcxLabel then
    begin
      GS_DefaultColor.DColor := ( vCom as TcxLabel ).Style.TextColor;
      ( vCom as TcxLabel ).Style.TextColor := clRed;
    end else
    if vCom is TcxCheckBox then
    begin
      GS_DefaultColor.DColor := ( vCom as TcxCheckBox ).Style.TextColor;
      ( vCom as TcxCheckBox ).Style.TextColor := clRed;
    end else
    if vCom is TcxRadioButton then
    begin
      GS_DefaultColor.DColor := ( vCom as TcxRadioButton ).Font.Color;
      ( vCom as TcxRadioButton ).Font.Color := clRed;
    end else
    if vCom is TcxGroupBox then
    begin
      GS_DefaultColor.DColor := ( vCom as TcxGroupBox ).Style.TextColor;
      ( vCom as TcxGroupBox ).Style.TextColor := clRed;
//    end else
//    if vCom is TcxTabSheet then
//    begin
//      ( vCom as TcxTabSheet ).Font.Color := clRed;
//    end else
//    if vCom is TcxGridBandedTableView then
//    begin
//      for j := 0 to ( vCom as TcxGridBandedTableView ).ColumnCount - 1 do
//      begin
//        if j = 0 then
//          sField := ( vCom as TcxGridBandedTableView ).Bands[j].Caption
//        else
//          sField := sField + ';' + ( vCom as TcxGridBandedTableView ).Bands[j].Caption
//      end;
//      sField := fSetEncode(sField);
//      sName := ( vCom as TcxGridBandedTableView ).Name;
//    end else
//    if vCom is TcxGridDBTableView then
//    begin
//      for j := 0 to ( vCom as TcxGridDBTableView ).ColumnCount - 1 do
//      begin
//        if j = 0 then
//          sField := ( vCom as TcxGridDBTableView ).Columns[j].Caption
//        else
//          sField := sField + ';' + ( vCom as TcxGridDBTableView ).Columns[j].Caption
//      end;
//      sField := fSetEncode(sField);
//      sName := ( vCom as TcxGridDBTableView ).Name;
//    end else
//    if vCom is TcxComboBox then
//    begin
//      for j := 0 to ( vCom as TcxComboBox ).Properties.Items.Count - 1 do
//      begin
//        if j = 0 then
//          sField := ( vCom as TcxComboBox ).Properties.Items[j]
//        else
//          sField := sField + ';' + ( vCom as TcxComboBox ).Properties.Items[j];
//      end;
//      sField := fSetEncode(sField);
//      sName := ( vCom as TcxComboBox ).Name;
    end;
  except

  end;
end;

procedure pSetFormComponentFontColorChange(Var vCom : TComponent);
begin
  try
    // �˻��� ���� �ڷ� ������ �������� �������´�.
    if vCom is TLabel then
    begin
      ( vCom as TLabel ).Font.Color := GS_DefaultColor.DColor;
    end else
    if vCom is TcxLabel then
    begin
      ( vCom as TcxLabel ).Style.TextColor := GS_DefaultColor.DColor;
    end else
    if vCom is TcxButton then
    begin
      ( vCom as TcxButton ).Font.Color := GS_DefaultColor.DColor;
    end else
    if vCom is TcxCheckBox then
    begin
      ( vCom as TcxCheckBox ).Style.TextColor := GS_DefaultColor.DColor;
    end else
    if vCom is TcxRadioButton then
    begin
      ( vCom as TcxRadioButton ).Font.Color := GS_DefaultColor.DColor;
    end else
    if vCom is TcxGroupBox then
    begin
      ( vCom as TcxGroupBox ).Style.TextColor := GS_DefaultColor.DColor;
//    end else
//    if vCom is TcxTabSheet then
//    begin
//      GS_DefaultColor.DColor := ( vCom as TcxTabSheet ).Font.Color;
//    end else
//    if vCom is TcxGridBandedTableView then
//    begin
//      for j := 0 to ( vCom as TcxGridBandedTableView ).ColumnCount - 1 do
//      begin
//        if j = 0 then
//          sField := ( vCom as TcxGridBandedTableView ).Bands[j].Caption
//        else
//          sField := sField + ';' + ( vCom as TcxGridBandedTableView ).Bands[j].Caption
//      end;
//      sField := fSetEncode(sField);
//      sName := ( vCom as TcxGridBandedTableView ).Name;
//    end else
//    if vCom is TcxGridDBTableView then
//    begin
//      for j := 0 to ( vCom as TcxGridDBTableView ).ColumnCount - 1 do
//      begin
//        if j = 0 then
//          sField := ( vCom as TcxGridDBTableView ).Columns[j].Caption
//        else
//          sField := sField + ';' + ( vCom as TcxGridDBTableView ).Columns[j].Caption
//      end;
//      sField := fSetEncode(sField);
//      sName := ( vCom as TcxGridDBTableView ).Name;
//    end else
//    if vCom is TcxComboBox then
//    begin
//      for j := 0 to ( vCom as TcxComboBox ).Properties.Items.Count - 1 do
//      begin
//        if j = 0 then
//          sField := ( vCom as TcxComboBox ).Properties.Items[j]
//        else
//          sField := sField + ';' + ( vCom as TcxComboBox ).Properties.Items[j];
//      end;
//      sField := fSetEncode(sField);
//      sName := ( vCom as TcxComboBox ).Name;
    end;
  except

  end;
end;

end.

object Frm_CidSvrSel: TFrm_CidSvrSel
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'SMS05'
  ClientHeight = 137
  ClientWidth = 264
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 264
    Height = 137
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object Shape10: TShape
      Left = 7
      Top = 39
      Width = 83
      Height = 23
      Pen.Color = 13353605
      Shape = stRoundRect
    end
    object Shape1: TShape
      Left = 7
      Top = 66
      Width = 83
      Height = 23
      Pen.Color = 13353605
      Shape = stRoundRect
    end
    object CbCidSvrIP: TcxComboBox
      Left = 81
      Top = 38
      AutoSize = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        '('#51452')'#53084#47560#45320
        #50689#50629#44288#47532
        #50868#50689#54016)
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.Color = 11796479
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Text = '('#51452')'#53084#47560#45320
      Height = 25
      Width = 170
    end
    object cxLabel17: TcxLabel
      Left = 17
      Top = 41
      Caption = 'CID'#49436#48260#47749
      ParentColor = False
      ParentFont = False
      Style.Color = clBtnFace
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = 16744448
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 47
      AnchorY = 51
    end
    object cxLabel1: TcxLabel
      Left = 8
      Top = 9
      Caption = #8251' CID '#49436#48260' '#49440#53469
      ParentColor = False
      ParentFont = False
      Style.Color = clBtnFace
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 55
      AnchorY = 19
    end
    object BtnSelect: TcxButton
      Left = 91
      Top = 99
      Width = 73
      Height = 24
      Cursor = crHandPoint
      Caption = #54869#51064
      Colors.Default = 16644080
      Colors.Normal = 16773362
      Colors.Hot = 16635384
      Colors.Pressed = 16644080
      Colors.Disabled = 7405299
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnClick = BtnSelectClick
    end
    object cxLabel2: TcxLabel
      Left = 21
      Top = 68
      Caption = #45236#49440#48264#54840
      ParentColor = False
      ParentFont = False
      Style.Color = clBtnFace
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = 16744448
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 47
      AnchorY = 78
    end
    object edNaesun: TcxTextEdit
      Left = 81
      Top = 65
      AutoSize = False
      Properties.ImeMode = imSHanguel
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.Color = 11796479
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      Height = 25
      Width = 64
    end
  end
end

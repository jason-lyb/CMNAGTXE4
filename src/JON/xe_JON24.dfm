object Frm_JON24: TFrm_JON24
  Left = 133
  Top = 216
  Caption = 'JON24'
  ClientHeight = 331
  ClientWidth = 587
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poOwnerFormCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object GradientLabel1: TGradientLabel
    Left = 0
    Top = 60
    Width = 587
    Height = 271
    Align = alClient
    AutoSize = False
    Color = 16753314
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = #44404#47548
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
    EllipsType = etNone
    GradientType = gtFullVertical
    GradientDirection = gdLeftToRight
    Indent = 0
    Orientation = goHorizontal
    TransparentText = False
    VAlignment = vaTop
    Version = '1.2.1.0'
    ExplicitTop = 22
    ExplicitWidth = 432
    ExplicitHeight = 178
  end
  object cxmmMemo: TcxMemo
    Left = 0
    Top = 60
    Align = alClient
    Lines.Strings = (
      'sMemo1'#50864#47536#45216#48120#12623#12596#50612#47548
      #48120#12623#12615#47084#48120#12623#12596#12615#47084
      #48124#50500#47084#48120#45229#47100#12596#12615#12601)
    ParentFont = False
    Properties.HideSelection = False
    Properties.ImeMode = imSHanguel
    Properties.MaxLength = 1000
    Properties.ScrollBars = ssVertical
    Properties.WantTabs = True
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = #47569#51008' '#44256#46357
    Style.Font.Style = []
    Style.HotTrack = True
    Style.LookAndFeel.NativeStyle = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.Color = 11796479
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 1
    OnKeyPress = cxmmMemoKeyPress
    Height = 271
    Width = 587
  end
  object lblnKey: TcxLabel
    Left = 321
    Top = 147
    AutoSize = False
    Caption = 'nkey'
    ParentColor = False
    ParentFont = False
    Style.BorderColor = 15076287
    Style.BorderStyle = ebsSingle
    Style.Color = 16764671
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = 33023
    Style.Font.Height = -12
    Style.Font.Name = #44404#47548
    Style.Font.Style = [fsBold]
    Style.TextColor = 13719147
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Visible = False
    Height = 21
    Width = 88
    AnchorX = 365
    AnchorY = 158
  end
  object lblUserId: TcxLabel
    Left = 321
    Top = 171
    AutoSize = False
    Caption = #46321#47197#51088
    ParentColor = False
    ParentFont = False
    Style.BorderColor = 15076287
    Style.BorderStyle = ebsSingle
    Style.Color = 16764671
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = 33023
    Style.Font.Height = -12
    Style.Font.Name = #44404#47548
    Style.Font.Style = [fsBold]
    Style.TextColor = 13719147
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Visible = False
    Height = 21
    Width = 88
    AnchorX = 365
    AnchorY = 182
  end
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 587
    Height = 34
    Cursor = crSizeAll
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '   '#44277#51648' '#44288#47532
    Color = 16761281
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 4
    OnMouseMove = pnlTitleMouseMove
    DesignSize = (
      587
      34)
    object cxLblActive: TLabel
      Left = 0
      Top = 0
      Width = 587
      Height = 5
      Align = alTop
      AutoSize = False
      Color = 33023
      ParentColor = False
      Transparent = False
      ExplicitTop = 8
    end
    object cxButton3: TcxButton
      Left = 1019
      Top = 2
      Width = 33
      Height = 22
      Cursor = crHandPoint
      Hint = #45803#44592
      Anchors = [akTop, akRight]
      Colors.Default = 16635384
      Colors.Normal = 16773362
      Colors.Hot = 16360076
      Colors.Pressed = 16644080
      Colors.Disabled = 4227327
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000151193B91C17
        C2F41B17C3F41C16C2F41A14BFF41914BFF41913BFF41A14BFF41A13BEF41A13
        BEF41B14C1F41812BDF41B14C1F4140F93B90000000019199BB92E2DFBFF2423
        EFFF0B06B6FF201DE5FF2B29FAFF2824F4FF2824F4FF2723F4FF2722F4FF2925
        FCFF130DCEFF0A05B0FF211AEFFF2921FBFF161498B92322D4FE272BEFFF1312
        B1FF6A67BFFF1B1AB0FF1F20E2FF2D2EF4FF282AEDFF2929EEFF2C2DF4FF0E0D
        CAFF3F3CB5FF9090CEFF1210B1FF2321EEFF1F1BD0FE2121C9F4100EBBFF918E
        D3FFFFFFFFFFADAAE0FF100FB2FF1C20E0FF3036F4FF2F35F4FF0D0DCEFF3835
        B8FFECECF8FFFFFFFFFF6A67C6FF0F0DC0FF201ECAF42428D0F41D24D7FF433D
        C3FFEBEAF8FFFFFFFFFFAFADE3FF1D1BB9FF1D24DEFF171CD7FF3934BEFFEEED
        F9FFFFFFFFFFACAAE4FF1F1BBDFF252CE7FF2221CDF4252AD1F4384FFAFF161E
        D4FF3A32C5FFEDEDF9FFFFFFFFFFD0CEF0FF201FC1FF1E1DC0FFE2E2F6FFFFFF
        FFFFB3B1E8FF1511BFFF232DE5FF3241F7FF2324CDF42228D2F4364FF3FF3950
        F3FF151DD8FF3E35CCFFDEDBF6FFFFFFFFFFCFCDF2FFCFCEF3FFFFFFFFFFD4D3
        F3FF2321C7FF202CE3FF3447F4FF3144F2FF2023D0F4454BD9F43B55F3FF334B
        EFFF3852F4FF1F2ADFFF211DCBFFCDCCF4FFFFFFFFFFFFFFFFFFCDCBF4FF2120
        CDFF2232E3FF354DF4FF2F44EEFF364DF2FF4247D7F46366DFF46E82F7FF556A
        F2FF4862F3FF2B3BE8FF221FD2FFCDCBF3FFFFFFFFFFFFFFFFFFCDCBF4FF201D
        D2FF242FE4FF445DF3FF5366F2FF6A7DF6FF6064DDF46064E1F47388F7FF788C
        F6FF6472F1FF514BE0FFD5D2F7FFFFFFFFFFDCDAF8FFDCDAF8FFFFFFFFFFDCDA
        F8FF655EE2FF575EEAFF7588F6FF6F83F6FF5D62DFF46166E3F47891F7FF6779
        F2FF5550E6FFCAC6F6FFFFFFFFFFE9E8FCFF5851E6FF5954E6FFE0DEFAFFFFFF
        FFFFF6F5FDFF6F69E9FF575FECFF748CF7FF5F64E2F4636AE4F46F82F3FF5E59
        EBFFC2BFF7FFFFFFFFFFF2F1FDFF6E66ECFF5D68EFFF6472F1FF5E57EBFFC5C1
        F8FFFFFFFFFFF1F0FDFF7670ECFF616BF1FF6268E4F4646CE6F45A5CEFFF928B
        F3FFFFFFFFFFF1F0FEFF6F68F0FF5B64EFFF7A92F6FF7A91F6FF6775F2FF5551
        EDFFC3BFF9FFFFFFFFFFAFA8F7FF5857F0FF6165E4F46B74F1FE7A91F6FF5A57
        F0FFAEA8F7FF7771F3FF5F68F2FF7D96F6FF798EF5FF788EF5FF7C94F6FF6D7F
        F4FF5F5BF0FF948CF5FF5956F1FF758BF6FF6972EFFE4E54B0B985A1F7FF7C94
        F6FF5B5BF3FF6975F5FF84A1F8FF8099F7FF7F98F7FF7F98F7FF7E97F6FF819C
        F6FF7588F5FF5C5FF3FF7990F5FF819DF7FF4C53AEB9000000005055B1B96970
        E9F4666CE9F46971E9F4676EE9F4676EE9F4666EE9F4666EE9F4676EE9F4666D
        E9F4676FE9F4676FE9F4676EE9F44E53B0B900000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = False
    end
    object btnClose: TcxButton
      Left = 552
      Top = 6
      Width = 33
      Height = 25
      Cursor = crHandPoint
      Hint = #45803#44592
      Anchors = [akTop, akRight]
      Colors.Default = 16635384
      Colors.Normal = 16773362
      Colors.Hot = 16360076
      Colors.Pressed = 16644080
      Colors.Disabled = 4227327
      LookAndFeel.SkinName = 'Sharp'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000151193B91C17
        C2F41B17C3F41C16C2F41A14BFF41914BFF41913BFF41A14BFF41A13BEF41A13
        BEF41B14C1F41812BDF41B14C1F4140F93B90000000019199BB92E2DFBFF2423
        EFFF0B06B6FF201DE5FF2B29FAFF2824F4FF2824F4FF2723F4FF2722F4FF2925
        FCFF130DCEFF0A05B0FF211AEFFF2921FBFF161498B92322D4FE272BEFFF1312
        B1FF6A67BFFF1B1AB0FF1F20E2FF2D2EF4FF282AEDFF2929EEFF2C2DF4FF0E0D
        CAFF3F3CB5FF9090CEFF1210B1FF2321EEFF1F1BD0FE2121C9F4100EBBFF918E
        D3FFFFFFFFFFADAAE0FF100FB2FF1C20E0FF3036F4FF2F35F4FF0D0DCEFF3835
        B8FFECECF8FFFFFFFFFF6A67C6FF0F0DC0FF201ECAF42428D0F41D24D7FF433D
        C3FFEBEAF8FFFFFFFFFFAFADE3FF1D1BB9FF1D24DEFF171CD7FF3934BEFFEEED
        F9FFFFFFFFFFACAAE4FF1F1BBDFF252CE7FF2221CDF4252AD1F4384FFAFF161E
        D4FF3A32C5FFEDEDF9FFFFFFFFFFD0CEF0FF201FC1FF1E1DC0FFE2E2F6FFFFFF
        FFFFB3B1E8FF1511BFFF232DE5FF3241F7FF2324CDF42228D2F4364FF3FF3950
        F3FF151DD8FF3E35CCFFDEDBF6FFFFFFFFFFCFCDF2FFCFCEF3FFFFFFFFFFD4D3
        F3FF2321C7FF202CE3FF3447F4FF3144F2FF2023D0F4454BD9F43B55F3FF334B
        EFFF3852F4FF1F2ADFFF211DCBFFCDCCF4FFFFFFFFFFFFFFFFFFCDCBF4FF2120
        CDFF2232E3FF354DF4FF2F44EEFF364DF2FF4247D7F46366DFF46E82F7FF556A
        F2FF4862F3FF2B3BE8FF221FD2FFCDCBF3FFFFFFFFFFFFFFFFFFCDCBF4FF201D
        D2FF242FE4FF445DF3FF5366F2FF6A7DF6FF6064DDF46064E1F47388F7FF788C
        F6FF6472F1FF514BE0FFD5D2F7FFFFFFFFFFDCDAF8FFDCDAF8FFFFFFFFFFDCDA
        F8FF655EE2FF575EEAFF7588F6FF6F83F6FF5D62DFF46166E3F47891F7FF6779
        F2FF5550E6FFCAC6F6FFFFFFFFFFE9E8FCFF5851E6FF5954E6FFE0DEFAFFFFFF
        FFFFF6F5FDFF6F69E9FF575FECFF748CF7FF5F64E2F4636AE4F46F82F3FF5E59
        EBFFC2BFF7FFFFFFFFFFF2F1FDFF6E66ECFF5D68EFFF6472F1FF5E57EBFFC5C1
        F8FFFFFFFFFFF1F0FDFF7670ECFF616BF1FF6268E4F4646CE6F45A5CEFFF928B
        F3FFFFFFFFFFF1F0FEFF6F68F0FF5B64EFFF7A92F6FF7A91F6FF6775F2FF5551
        EDFFC3BFF9FFFFFFFFFFAFA8F7FF5857F0FF6165E4F46B74F1FE7A91F6FF5A57
        F0FFAEA8F7FF7771F3FF5F68F2FF7D96F6FF798EF5FF788EF5FF7C94F6FF6D7F
        F4FF5F5BF0FF948CF5FF5956F1FF758BF6FF6972EFFE4E54B0B985A1F7FF7C94
        F6FF5B5BF3FF6975F5FF84A1F8FF8099F7FF7F98F7FF7F98F7FF7E97F6FF819C
        F6FF7588F5FF5C5FF3FF7990F5FF819DF7FF4C53AEB9000000005055B1B96970
        E9F4666CE9F46971E9F4676EE9F4676EE9F4666EE9F4666EE9F4676EE9F4666D
        E9F4676FE9F4676FE9F4676EE9F44E53B0B900000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = btnCloseClick
    end
    object cxbModify: TcxButton
      Left = 430
      Top = 6
      Width = 60
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #51200#51109
      Colors.Default = 16635384
      Colors.Normal = 16773362
      Colors.Hot = 16360076
      Colors.Pressed = 16644080
      Colors.Disabled = 4227327
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 2
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      OnClick = cxbModifyClick
    end
    object cxbNewUser: TcxButton
      Left = 369
      Top = 6
      Width = 60
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #52488#44592#54868
      Colors.Default = 16635384
      Colors.Normal = 16773362
      Colors.Hot = 16360076
      Colors.Pressed = 16644080
      Colors.Disabled = 4227327
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 3
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      OnClick = cxbNewUserClick
    end
    object cxButton1: TcxButton
      Left = 491
      Top = 6
      Width = 60
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #49325#51228
      Colors.Default = 16635384
      Colors.Normal = 16773362
      Colors.Hot = 16360076
      Colors.Pressed = 16644080
      Colors.Disabled = 4227327
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 4
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      OnClick = cxButton1Click
    end
    object dtpResvDate: TcxDateEdit
      Left = 212
      Top = 9
      TabStop = False
      AutoSize = False
      EditValue = 401768d
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = #44404#47548
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      Height = 21
      Width = 94
    end
    object dtpResvTime: TcxTimeEdit
      Left = 306
      Top = 9
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.TimeFormat = tfHourMin
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = #44404#47548
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      Height = 21
      Width = 63
    end
    object chk_Resv: TcxCheckBox
      Left = 141
      Top = 11
      TabStop = False
      Caption = #50696#50557#51068#49884
      ParentFont = False
      Properties.OnChange = chk_ResvPropertiesChange
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
    end
  end
  object lblwtm: TcxLabel
    Left = 321
    Top = 198
    AutoSize = False
    Caption = #44277#51648#51068#49884
    ParentColor = False
    ParentFont = False
    Style.BorderColor = 15076287
    Style.BorderStyle = ebsSingle
    Style.Color = 16764671
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = 33023
    Style.Font.Height = -12
    Style.Font.Name = #44404#47548
    Style.Font.Style = [fsBold]
    Style.TextColor = 13719147
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Visible = False
    Height = 21
    Width = 88
    AnchorX = 365
    AnchorY = 209
  end
  object edt_Title: TcxTextEdit
    Left = 0
    Top = 34
    Align = alTop
    AutoSize = False
    Properties.ImeMode = imSHanguel
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Sharp'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Sharp'
    StyleFocused.Color = 11796479
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Sharp'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Sharp'
    TabOrder = 0
    OnKeyDown = edt_TitleKeyDown
    Height = 26
    Width = 587
  end
end

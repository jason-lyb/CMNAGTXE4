object Frm_COM50: TFrm_COM50
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Frm_COM50'
  ClientHeight = 340
  ClientWidth = 360
  Color = clBtnFace
  Constraints.MinHeight = 230
  Constraints.MinWidth = 320
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesigned
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 12
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 360
    Height = 33
    Cursor = crSizeAll
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '  '#50836#44552' '#47928#51032' '#45813#48320
    Color = 12566463
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    OnMouseDown = pnlTitleMouseDown
    DesignSize = (
      360
      33)
    object cxLblActive: TLabel
      Left = 0
      Top = 0
      Width = 360
      Height = 5
      Align = alTop
      AutoSize = False
      Color = 33023
      ParentColor = False
      Transparent = False
      ExplicitWidth = 659
    end
    object btnClose: TcxButton
      Left = 324
      Top = 6
      Width = 30
      Height = 25
      Cursor = crHandPoint
      Hint = #45803#44592
      Anchors = [akTop, akRight]
      Colors.Default = 16635384
      Colors.Normal = 16773362
      Colors.Hot = 16360076
      Colors.Pressed = 16644080
      Colors.Disabled = 4227327
      LookAndFeel.NativeStyle = False
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
      TabOrder = 0
      TabStop = False
      OnClick = btnCloseClick
    end
  end
  object pnlRQPopup: TPanel
    Left = 0
    Top = 33
    Width = 360
    Height = 307
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    ExplicitHeight = 276
    object Shape1: TShape
      Left = 57
      Top = 102
      Width = 295
      Height = 35
      Pen.Color = 13353605
    end
    object cxLabel1: TcxLabel
      Left = 5
      Top = 101
      AutoSize = False
      Caption = #52636#48156#51648
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = -1
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 37
      Width = 54
      AnchorX = 32
      AnchorY = 120
    end
    object lblRQStart: TcxLabel
      Left = 60
      Top = 100
      Caption = #49688#49436#50669
      ParentColor = False
      ParentFont = False
      Style.Color = clBtnFace
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = -1
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 112
    end
    object lblRQStartAddr: TcxLabel
      Left = 60
      Top = 120
      Hint = 'Color'
      Caption = #52636#48156#51648
      ParentColor = False
      ParentFont = False
      Style.Color = clBtnFace
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = 4227072
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 130
    end
    object pnlVia: TPanel
      Left = 4
      Top = 138
      Width = 348
      Height = 25
      BevelOuter = bvNone
      TabOrder = 4
      object Shape3: TShape
        Left = 53
        Top = 1
        Width = 228
        Height = 22
        Pen.Color = 13353605
      end
      object cxLabel2: TcxLabel
        Left = 1
        Top = 0
        AutoSize = False
        Caption = #44221#50976#51648
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = -1
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 24
        Width = 54
        AnchorX = 28
        AnchorY = 12
      end
      object lblRQVia: TcxLabel
        Left = 56
        Top = 3
        Caption = #52636#48156#51648
        ParentColor = False
        ParentFont = False
        Style.Color = clBtnFace
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = -1
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 13
      end
      object lblVDistance: TcxLabel
        Left = 283
        Top = 0
        AutoSize = False
        Caption = #44144#47532
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = -1
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Height = 24
        Width = 65
        AnchorX = 348
        AnchorY = 12
      end
    end
    object pnlRQBtm: TPanel
      Left = 3
      Top = 163
      Width = 350
      Height = 132
      BevelOuter = bvNone
      TabOrder = 3
      DesignSize = (
        350
        132)
      object Shape6: TShape
        Left = 54
        Top = 0
        Width = 295
        Height = 35
        Pen.Color = 13353605
      end
      object Image1: TImage
        Left = 196
        Top = 40
        Width = 16
        Height = 17
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
          0000001008060000001FF3FF61000001DC4944415478DA6364C001E2B77D9A20
          20CA9E8F2CF6FCD987D655FEE235C8628CD834476CFED49A60C45DC4CECCC8F1
          8D09A8E4FF7F06D67F0C0C47EE7D7CB5EDE2A7C63359F2D3701A10BBF55349AF
          076FF7C9770C0C3FFE3230FCFECFC0F01D8859802AA5F91918D69F79FFE5EEE3
          1F0B77444BE560352078FDBB7BC5DE828AB73F30309CFD0051A0C7CBC0F0E1DB
          7F060E364686AF5F7F33DC7CFCF5FD5C574121AC06B8AE7CFDDD509E8FE3DAF3
          8FE7B6048A1983C4D2563CFCAF6F2BC7F0E31703C3A7CF7F185E7DFAF665BA0D
          3F2FCE304007A9AB1FFDD730956560027AE53DD00537EE7CF8B72A408C992803
          0C7B6EFE5F92A5C630EBEA2F063E2936862BC75EBC7CFEF07DFD8912AD99040D
          00699E9CA9C6D074F11FC347A0D227D73E313C9DB4478FE152C865BCD10806E6
          DBCD0C43954E8A5AA980B98F1F7C62B8DEB7CB8AE14CF87182E90004F8FA9EE7
          8AAB0A4D82F15FDE7EB7EF5391A433BA3A7C06240029504A7C0BC43C40BC0268
          C004A20D2016E035C0BCEEF423210345D99BC76FBFBEB7ED8234C3D5CCDF441B
          605D77FEA645B681DAEAD30C0C8FAEBF62603C78FAC5FF2D3E92441B603AF3FE
          FFA7ECE20CCF9E7E616078F69981E1F38B4F0C8BACF949F282E4C2CF8F9E3F7A
          25CBF0E9D753866E4D196C6A00F6A7C011391086490000000049454E44AE4260
          82}
        Transparent = True
      end
      object edtPMemo: TcxMemo
        Left = 57
        Top = 62
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        OnEnter = edtPMemoEnter
        OnExit = edtPMemoExit
        Height = 40
        Width = 292
      end
      object curPRate: TcxSpinEdit
        Left = 271
        Top = 37
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taBottomJustify
        Properties.AssignedValues.EditFormat = True
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = '#,##0'
        Properties.ImeMode = imSHanguel
        Properties.Increment = 1000.000000000000000000
        Properties.LargeIncrement = 10000.000000000000000000
        Properties.MaxValue = 700000.000000000000000000
        Properties.ValidateOnEnter = False
        Properties.OnChange = curPRatePropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Sharp'
        Style.TextColor = clBlue
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 0
        OnKeyDown = curPRateKeyDown
        Height = 24
        Width = 79
      end
      object cxLabel3: TcxLabel
        Left = 2
        Top = 62
        Hint = 'Color'
        AutoSize = False
        Caption = #50836#44552#49444#47749
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Color = clWhite
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
        Height = 40
        Width = 58
        AnchorX = 31
        AnchorY = 82
      end
      object cxLabel4: TcxLabel
        Left = 2
        Top = -1
        AutoSize = False
        Caption = #46020#52265#51648
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = -1
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 37
        Width = 54
        AnchorX = 29
        AnchorY = 18
      end
      object cxLabel5: TcxLabel
        Left = 93
        Top = 37
        AutoSize = False
        Caption = #47928#51032#50836#44552
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = -1
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 24
        Width = 55
        AnchorX = 121
        AnchorY = 49
      end
      object lblPRateA: TcxLabel
        Left = 216
        Top = 37
        Hint = 'Color'
        AutoSize = False
        Caption = #50836#44552#45813#48320
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 16744448
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 24
        Width = 58
        AnchorX = 245
        AnchorY = 49
      end
      object lblRQEnd: TcxLabel
        Left = 58
        Top = -1
        Caption = #49324#45817#50669
        ParentColor = False
        ParentFont = False
        Style.Color = clBtnFace
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = -1
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 11
      end
      object lblRQEndAddr: TcxLabel
        Left = 58
        Top = 18
        Hint = 'Color'
        Caption = #52636#48156#51648
        ParentColor = False
        ParentFont = False
        Style.Color = clBtnFace
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = clMaroon
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 28
      end
      object lblRQRate: TcxLabel
        Left = 145
        Top = 37
        AutoSize = False
        Caption = '999,999'
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = -1
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Height = 24
        Width = 52
        AnchorX = 197
        AnchorY = 49
      end
      object btnPRateAnswer: TcxButton
        Left = 2
        Top = 104
        Width = 246
        Height = 26
        Cursor = crHandPoint
        Anchors = [akBottom]
        Caption = #45813#48320#54616#44592
        Colors.Default = 16635384
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 9
        OnClick = btnPRateAnswerClick
      end
      object btnPRateClose: TcxButton
        Left = 250
        Top = 104
        Width = 98
        Height = 26
        Cursor = crHandPoint
        Anchors = [akBottom]
        Caption = #45803'  '#44592
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 11
        OnClick = btnPRateCloseClick
      end
      object LbmeoPBigo: TcxLabel
        Left = 61
        Top = 73
        Cursor = crIBeam
        AutoSize = False
        Caption = #50836#44552#49444#47749
        Style.TextColor = 10329501
        Transparent = True
        OnClick = LbmeoPBigoClick
        Height = 19
        Width = 279
      end
      object cxLabel9: TcxLabel
        Left = 2
        Top = 37
        AutoSize = False
        Caption = #44144#47532
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = -1
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 24
        Width = 46
        AnchorX = 25
        AnchorY = 49
      end
      object lblDistance: TcxLabel
        Left = 45
        Top = 37
        AutoSize = False
        Caption = #44144#47532
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = -1
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Height = 24
        Width = 46
        AnchorX = 91
        AnchorY = 49
      end
    end
    object lblRQNm: TcxLabel
      Left = 56
      Top = 5
      AutoSize = False
      Caption = #53084#47560#45320'(sntest)'
      ParentColor = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWhite
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 24
      Width = 143
      AnchorX = 128
      AnchorY = 17
    end
    object lblQTime: TcxLabel
      Left = 254
      Top = 5
      AutoSize = False
      Caption = '99:99:00'
      ParentColor = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWhite
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 24
      Width = 99
      AnchorX = 304
      AnchorY = 17
    end
    object cxLabel6: TcxLabel
      Left = 5
      Top = 5
      AutoSize = False
      Caption = #51656#47928#51088
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = -1
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 24
      Width = 54
      AnchorX = 32
      AnchorY = 17
    end
    object cxLabel7: TcxLabel
      Left = 200
      Top = 5
      AutoSize = False
      Caption = #47928#51032#49884#44036
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = -1
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 24
      Width = 57
      AnchorX = 229
      AnchorY = 17
    end
    object pnlAutoClose: TPanel
      Left = 16
      Top = 93
      Width = 327
      Height = 104
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 9
      Visible = False
      object cxLabel8: TcxLabel
        Left = 6
        Top = 29
        Caption = #50836#44552#47928#51032' '#50836#52397#54620' '#49345#45812#50896#51032' '#51217#49688#52285#51060' '#51333#47308#46104#50632#51004#48064#47196#13#10#13#10#50836#44552#47928#51032' '#45813#48320' '#52285' '#51088#46041' '#51333#47308#54633#45768#45796'.'
        Style.TextColor = 15921906
        Transparent = True
      end
    end
    object cxLabel10: TcxLabel
      Left = 5
      Top = 53
      AutoSize = False
      Caption = #48277#51064#47749
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = -1
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 24
      Width = 54
      AnchorX = 32
      AnchorY = 65
    end
    object lblRQCorpNm: TcxLabel
      Left = 56
      Top = 53
      AutoSize = False
      Caption = #53084#47560#45320'(sntest)'
      ParentColor = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWhite
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 24
      Width = 297
      AnchorX = 205
      AnchorY = 65
    end
    object cxLabel12: TcxLabel
      Left = 5
      Top = 77
      AutoSize = False
      Caption = #48512#49436#47749
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = -1
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 24
      Width = 54
      AnchorX = 32
      AnchorY = 89
    end
    object lblRQCorpDepNm: TcxLabel
      Left = 56
      Top = 77
      AutoSize = False
      Caption = #53084#47560#45320'(sntest)'
      ParentColor = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWhite
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 24
      Width = 297
      AnchorX = 205
      AnchorY = 89
    end
    object cxLabel11: TcxLabel
      Left = 5
      Top = 29
      AutoSize = False
      Caption = #51648#49324#47749
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = -1
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 24
      Width = 54
      AnchorX = 32
      AnchorY = 41
    end
    object lblRQbrKeynum: TcxLabel
      Left = 56
      Top = 29
      AutoSize = False
      Caption = #53084#47560#45320'(sntest)'
      ParentColor = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWhite
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 24
      Width = 297
      AnchorX = 205
      AnchorY = 41
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 2500
    OnTimer = Timer1Timer
    Left = 306
    Top = 197
  end
end

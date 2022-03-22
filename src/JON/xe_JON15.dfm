object Frm_JON15: TFrm_JON15
  Left = 383
  Top = 384
  BorderStyle = bsNone
  Caption = #52712#49548#54616#44592
  ClientHeight = 374
  ClientWidth = 534
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poMainFormCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pnl_Cancel: TPanel
    Left = 0
    Top = 0
    Width = 534
    Height = 374
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    object cxGroupBox2: TcxGroupBox
      Left = 0
      Top = 33
      Align = alClient
      TabOrder = 0
      Height = 337
      Width = 530
      object Bevel1: TBevel
        Left = 18
        Top = 189
        Width = 407
        Height = 3
        Style = bsRaised
      end
      object cb_CancelSMS: TcxCheckBox
        Left = 9
        Top = 168
        Caption = #52712#49548#49884' '#44592#49324#50640#44172' SMS '#48156#49569#54632
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.SkinName = 'Sharp'
        Style.TextColor = clBlue
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 0
        Transparent = True
        OnClick = cb_CancelSMSClick
      end
      object chkShortCut: TcxCheckBox
        Left = 422
        Top = 148
        Caption = #45800#52629#53412#49324#50857
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 1
        Transparent = True
        OnClick = chkShortCutClick
      end
      object cxGroupBox1: TcxGroupBox
        Left = 3
        Top = 4
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Height = 54
        Width = 524
        object cxLabel1: TcxLabel
          Left = 23
          Top = 9
          Caption = #44256#44061#48264#54840
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 25
          Top = 30
          Caption = #52636' '#48156' '#51648
          Transparent = True
        end
        object cxLabel3: TcxLabel
          Left = 265
          Top = 9
          Caption = #44256' '#44061' '#47749
          Transparent = True
        end
        object cxLabel4: TcxLabel
          Left = 265
          Top = 30
          Caption = #46020' '#52265' '#51648
          Transparent = True
        end
        object ed_cancel_area: TcxTextEdit
          Left = 90
          Top = 28
          TabStop = False
          Properties.ReadOnly = True
          TabOrder = 0
          Width = 141
        end
        object ed_cancel_area2: TcxTextEdit
          Left = 337
          Top = 28
          TabStop = False
          Properties.ReadOnly = True
          TabOrder = 1
          Width = 141
        end
        object ed_cancel_custname: TcxTextEdit
          Left = 337
          Top = 6
          TabStop = False
          Properties.ReadOnly = True
          TabOrder = 2
          Width = 141
        end
        object ed_cancel_custnum: TcxTextEdit
          Left = 90
          Top = 6
          TabStop = False
          Properties.ReadOnly = True
          TabOrder = 3
          Width = 141
        end
      end
      object RbButton16: TcxButton
        Left = 429
        Top = 232
        Width = 85
        Height = 25
        Cursor = crHandPoint
        Caption = #47700#49884#51648' '#49444#51221
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 8
        OnClick = RbButton16Click
      end
      object RbCheckBox1: TcxCheckBox
        Left = 217
        Top = 169
        Caption = #52712#49548#49884' '#44256#44061#50640#44172' '#49444#51221' SMS'#48156#49569
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 9
        Transparent = True
        OnClick = RbCheckBox1Click
      end
      object RbCheckBox4: TcxCheckBox
        Left = 13
        Top = 237
        Caption = #44592#49324#48512#51313#49884' '#44256#44032#50836#44552' '#50976#46020' '#44256#44061#47928#51088' '#51204#49569
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 10
        Transparent = True
        OnClick = RbCheckBox4Click
      end
      object RbCheckBox5: TcxCheckBox
        Left = 13
        Top = 283
        Caption = #44592#49324#48512#51313#49884' '#44256#44061#47928#51088' '#51204#49569
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 11
        Transparent = True
        OnClick = RbCheckBox5Click
      end
      object sb_Cancel_Can: TcxButton
        Left = 473
        Top = 169
        Width = 41
        Height = 55
        Cursor = crHandPoint
        Cancel = True
        Caption = #52712#49548
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 12
        OnClick = sb_Cancel_CanClick
      end
      object sb_Cancel_comm: TcxButton
        Left = 429
        Top = 169
        Width = 42
        Height = 55
        Cursor = crHandPoint
        Caption = #54869#51064
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 13
        OnClick = sb_Cancel_commClick
      end
      object rg_Cancelchoice: TcxGroupBox
        Left = 3
        Top = 61
        Caption = #52712#49548#49324#50976
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 14
        Height = 82
        Width = 524
        object rdo_Cancel0: TcxRadioButton
          Left = 2
          Top = 33
          Width = 84
          Height = 17
          Caption = '0.'#53685#54868#50504#46120
          Color = clBtnFace
          ParentColor = False
          TabOrder = 0
          OnClick = rdo_Cancel0Click
          LookAndFeel.SkinName = 'Sharp'
          ParentBackground = False
          Transparent = True
        end
        object rdo_Cancel1: TcxRadioButton
          Tag = 2
          Left = 86
          Top = 33
          Width = 84
          Height = 17
          Caption = '1.'#54620#51092' '#45908'!'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 1
          OnClick = rdo_Cancel0Click
          LookAndFeel.SkinName = 'Sharp'
          ParentBackground = False
          Transparent = True
        end
        object rdo_Cancel3: TcxRadioButton
          Tag = 6
          Left = 259
          Top = 33
          Width = 84
          Height = 17
          Caption = '3.'#44592#49324#48512#51313
          Color = clBtnFace
          ParentColor = False
          TabOrder = 2
          OnClick = rdo_Cancel0Click
          LookAndFeel.SkinName = 'Sharp'
          ParentBackground = False
          Transparent = True
        end
        object rdo_Cancel5: TcxRadioButton
          Tag = 10
          Left = 430
          Top = 33
          Width = 86
          Height = 17
          Caption = '5.'#53440#49324#51060#50857
          Color = clBtnFace
          ParentColor = False
          TabOrder = 3
          OnClick = rdo_Cancel0Click
          LookAndFeel.SkinName = 'Sharp'
          ParentBackground = False
          Transparent = True
        end
        object rdo_Cancel2: TcxRadioButton
          Tag = 4
          Left = 174
          Top = 33
          Width = 84
          Height = 17
          Caption = '2.'#44256#44061#52712#49548
          Color = clBtnFace
          ParentColor = False
          TabOrder = 4
          OnClick = rdo_Cancel0Click
          LookAndFeel.SkinName = 'Sharp'
          ParentBackground = False
          Transparent = True
        end
        object rdo_Cancel4: TcxRadioButton
          Tag = 8
          Left = 345
          Top = 33
          Width = 84
          Height = 17
          Caption = '4.'#53440#49324#51060#44288
          Color = clBtnFace
          ParentColor = False
          TabOrder = 5
          OnClick = rdo_Cancel0Click
          LookAndFeel.SkinName = 'Sharp'
          ParentBackground = False
          Transparent = True
        end
        object rdo_Cancel7: TcxRadioButton
          Tag = 3
          Left = 86
          Top = 56
          Width = 84
          Height = 17
          Caption = '7.'#51217#49688#49892#49688
          Color = clBtnFace
          ParentColor = False
          TabOrder = 6
          OnClick = rdo_Cancel0Click
          LookAndFeel.SkinName = 'Sharp'
          ParentBackground = False
          Transparent = True
        end
        object rdo_Cancel6: TcxRadioButton
          Tag = 1
          Left = 2
          Top = 56
          Width = 84
          Height = 17
          Caption = '6.'#44256#44061#50630#51020
          Color = clBtnFace
          ParentColor = False
          TabOrder = 7
          OnClick = rdo_Cancel0Click
          LookAndFeel.SkinName = 'Sharp'
          ParentBackground = False
          Transparent = True
        end
        object rdo_Cancel8: TcxRadioButton
          Tag = 5
          Left = 174
          Top = 56
          Width = 59
          Height = 17
          Caption = '8.'#44592#53440
          Color = clBtnFace
          ParentColor = False
          TabOrder = 8
          OnClick = rdo_Cancel0Click
          OnMouseDown = rdo_Cancel8MouseDown
          LookAndFeel.SkinName = 'Sharp'
          ParentBackground = False
          Transparent = True
        end
        object rdo_Cancel9: TcxRadioButton
          Tag = 7
          Left = 259
          Top = 56
          Width = 84
          Height = 17
          Caption = '9.'#50672#49845#50724#45908
          Color = clBtnFace
          ParentColor = False
          TabOrder = 9
          OnClick = rdo_Cancel0Click
          LookAndFeel.SkinName = 'Sharp'
          ParentBackground = False
          Transparent = True
        end
        object rdo_Cancel10: TcxRadioButton
          Tag = 9
          Left = 345
          Top = 56
          Width = 84
          Height = 17
          Caption = '10.'#49324#44256#51217#49688
          Color = clBtnFace
          ParentColor = False
          TabOrder = 10
          OnClick = rdo_Cancel0Click
          LookAndFeel.SkinName = 'Sharp'
          ParentBackground = False
          Transparent = True
        end
        object rdo_Cancel99: TcxRadioButton
          Tag = 9
          Left = 174
          Top = 12
          Width = 137
          Height = 20
          Hint = #53084#45817#48372#54744#49324#44256#51217#49688
          Caption = #53084#45817#48372#54744#49324#44256#51217#49688
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 11
          Visible = False
          OnClick = rdo_Cancel0Click
          LookAndFeel.SkinName = 'Sharp'
          ParentBackground = False
          Transparent = True
        end
      end
      object ed_WhyCancel: TcxTextEdit
        Left = 17
        Top = 146
        TabOrder = 3
        OnKeyPress = ed_WhyCancelKeyPress
        OnKeyUp = ed_WhyCancelKeyUp
        Width = 404
      end
      object Edit5: TcxTextEdit
        Left = 37
        Top = 259
        Properties.ReadOnly = True
        TabOrder = 4
        Width = 345
      end
      object Edit6: TcxTextEdit
        Left = 385
        Top = 259
        Properties.ReadOnly = True
        TabOrder = 5
        Width = 128
      end
      object Edit7: TcxTextEdit
        Left = 37
        Top = 304
        Properties.ReadOnly = True
        TabOrder = 6
        Width = 345
      end
      object Edit8: TcxTextEdit
        Left = 385
        Top = 304
        Properties.ReadOnly = True
        TabOrder = 7
        Width = 128
      end
      object Label45: TcxLabel
        Left = 8
        Top = 196
        Hint = 'Color'
        Caption = 
          #8251' '#52712#49548#53076#46300'(4,7,8,9) '#51068#46412#45716' '#44256#44061#52712#49548' '#47928#51088#44032' '#51088#46041#48156#49569#46104#51648' '#50506#49845#45768#45796'.'#13#10#8251' ['#54924#49324']-[SMS'#47700#49884#51648#49444#51221']'#50640' '#49444#51221 +
          #54620#44221#50864' '#52404#53356#50504#54644#46020' '#51088#46041#51004#47196' '#48156#49569#46121#45768#45796'.'
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.TextColor = 16744576
        Style.IsFontAssigned = True
        Transparent = True
      end
    end
    object pnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 530
      Height = 33
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   '#52712#49548#54616#44592
      Color = 12566463
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      OnMouseDown = pnlTitleMouseDown
      DesignSize = (
        530
        33)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 530
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
        ExplicitWidth = 511
      end
      object btnClose: TcxButton
        Left = 494
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
        TabOrder = 0
        TabStop = False
        OnClick = sb_Cancel_CanClick
      end
    end
  end
  object pnl_AccStatus: TPanel
    Left = 153
    Top = 99
    Width = 256
    Height = 102
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = 16444898
    TabOrder = 1
    Visible = False
    DesignSize = (
      252
      98)
    object cxGroupBox49: TcxGroupBox
      Left = 0
      Top = 0
      Align = alClient
      Caption = '   '#51089#50629#51652#54665
      ParentBackground = False
      ParentColor = False
      Style.BorderStyle = ebsNone
      Style.Color = clBtnFace
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnMouseMove = cxGroupBox49MouseMove
      Height = 98
      Width = 252
      object Shape176: TShape
        Left = 7
        Top = 25
        Width = 106
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape177: TShape
        Left = 124
        Top = 25
        Width = 106
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Gauge1: TAdvProgressBar
        Left = 7
        Top = 56
        Width = 235
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        Level0ColorTo = 14811105
        Level1ColorTo = 13303807
        Level2Color = 5483007
        Level2ColorTo = 11064319
        Level3ColorTo = 13290239
        Level1Perc = 70
        Level2Perc = 90
        Position = 0
        ShowBorder = True
        Version = '1.3.2.2'
      end
      object cxLabel167: TcxLabel
        Left = 13
        Top = 28
        Caption = #51204#52404#44148#49688
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 39
        AnchorY = 38
      end
      object cxLabel174: TcxLabel
        Left = 133
        Top = 28
        Caption = #50756#47308#44148#49688
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 159
        AnchorY = 38
      end
      object lb_ACnt: TcxLabel
        Left = 73
        Top = 24
        AutoSize = False
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.Color = 12189690
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 26
        Width = 49
        AnchorX = 98
        AnchorY = 37
      end
      object lb_FCnt: TcxLabel
        Left = 193
        Top = 24
        AutoSize = False
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.Color = 65408
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 26
        Width = 49
        AnchorX = 218
        AnchorY = 37
      end
    end
    object btn_AccStatusClose: TcxButton
      Left = 231
      Top = 1
      Width = 19
      Height = 20
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
      TabOrder = 1
      TabStop = False
      OnClick = btn_AccStatusCloseClick
    end
  end
  object pmEtc: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = pmEtcPopup
    Left = 460
    Top = 276
    object N2: TMenuItem
      Caption = '-'
    end
    object N1: TMenuItem
      Caption = #49444#51221
      OnClick = N1Click
    end
  end
end

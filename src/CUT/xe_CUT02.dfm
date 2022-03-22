object Frm_CUT02: TFrm_CUT02
  Left = 1062
  Top = 482
  BorderStyle = bsNone
  ClientHeight = 397
  ClientWidth = 439
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 439
    Height = 397
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = 'PnlMain'
    TabOrder = 0
    object PnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 435
      Height = 25
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   '#44256#44061#46321#44553' '#49444#51221
      Color = 12566463
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnMouseDown = PnlTitleMouseDown
      DesignSize = (
        435
        25)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 435
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
        ExplicitWidth = 417
      end
      object cxButton7: TcxButton
        Left = 400
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
        OnClick = cxButton7Click
      end
      object btnClear: TcxButton
        Left = 224
        Top = 2
        Width = 87
        Height = 22
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #51077#47141#46976' '#52488#44592#54868
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = btnClearClick
      end
      object btnEdit: TcxButton
        Left = 312
        Top = 2
        Width = 87
        Height = 22
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #51200#51109'/'#49688#51221
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = btnEditClick
      end
    end
    object cxGroupBox1: TcxGroupBox
      Left = 0
      Top = 28
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        435
        365)
      Height = 365
      Width = 435
      object lblMID: TLabel
        Left = 144
        Top = 118
        Width = 241
        Height = 12
        Caption = '(0~99) '#45458#51008' '#46321#44553#51012' '#45458#51008' '#49707#51088#47196' '#49444#51221#54616#49464#50836'.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
      end
      object lblMileUnit: TLabel
        Left = 216
        Top = 243
        Width = 12
        Height = 12
        Caption = #50896
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
      end
      object Shape1: TShape
        Left = 10
        Top = 114
        Width = 88
        Height = 21
        Pen.Color = clSilver
        Shape = stRoundRect
      end
      object Shape2: TShape
        Left = 10
        Top = 195
        Width = 88
        Height = 21
        Pen.Color = clSilver
        Shape = stRoundRect
      end
      object Shape3: TShape
        Left = 10
        Top = 218
        Width = 115
        Height = 41
        Pen.Color = clSilver
        Shape = stRoundRect
      end
      object Shape4: TShape
        Left = 120
        Top = 218
        Width = 146
        Height = 21
        Pen.Color = clSilver
      end
      object Shape5: TShape
        Left = 10
        Top = 261
        Width = 119
        Height = 21
        Pen.Color = clSilver
        Shape = stRoundRect
      end
      object Shape6: TShape
        Left = 10
        Top = 312
        Width = 119
        Height = 21
        Pen.Color = clSilver
        Shape = stRoundRect
      end
      object Shape7: TShape
        Left = 10
        Top = 335
        Width = 119
        Height = 21
        Pen.Color = clSilver
        Shape = stRoundRect
      end
      object btnSelColor: TcxButton
        Left = 216
        Top = 260
        Width = 69
        Height = 22
        Cursor = crHandPoint
        Caption = #49353#49345#49440#53469
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 0
        OnClick = btnSelColorClick
      end
      object chkDefault: TcxCheckBox
        Left = 10
        Top = 175
        Caption = #49888#44508#44256#44061#51012' '#54644#45817' '#46321#44553#51004#47196' '#46321#47197
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 1
        Transparent = True
      end
      object chkUseAutoUp: TcxCheckBox
        Left = 10
        Top = 291
        Caption = #51088#46041#49849#44553' '#49324#50857
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 2
        Transparent = True
        OnClick = chkUseAutoUpClick
      end
      object cxLabel1: TcxLabel
        Left = 20
        Top = 197
        Caption = #44256#44061#46321#44553#47749
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 52
        AnchorY = 205
      end
      object cxLabel2: TcxLabel
        Left = 14
        Top = 225
        Caption = #51060#50857' '#44148#45817' '#13#10#47560#51068#47532#51648' '#51201#47549#44552#50529
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 66
        AnchorY = 239
      end
      object cxLabel3: TcxLabel
        Left = 20
        Top = 264
        Caption = #51217#49688#52285' '#51201#50857#49353#49345
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 66
        AnchorY = 272
      end
      object cxLabel4: TcxLabel
        Left = 19
        Top = 315
        Caption = #51088#46041#49849#44553' '#50756#47308#44148
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 65
        AnchorY = 323
      end
      object cxLabel5: TcxLabel
        Left = 19
        Top = 338
        Caption = #51088#46041#49849#44553' '#52712#49548#50984
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 65
        AnchorY = 346
      end
      object cxLabel6: TcxLabel
        Left = 25
        Top = 117
        Caption = #46321#44553#48264#54840
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 51
        AnchorY = 125
      end
      object edtCancelRate: TcxCurrencyEdit
        Left = 118
        Top = 334
        AutoSize = False
        EditValue = 0
        Enabled = False
        Properties.Alignment.Horz = taRightJustify
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = ',0'
        Properties.MaxValue = 100.000000000000000000
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 9
        Height = 23
        Width = 57
      end
      object edtLevelMileage: TcxCurrencyEdit
        Left = 119
        Top = 239
        AutoSize = False
        EditValue = 0.000000000000000000
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 10
        Height = 21
        Width = 93
      end
      object edtLevelName: TcxTextEdit
        Left = 91
        Top = 194
        AutoSize = False
        Properties.MaxLength = 40
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 11
        OnKeyUp = edtGroupNameKeyUp
        Height = 23
        Width = 121
      end
      object edtOrderBy: TcxTextEdit
        Left = 90
        Top = 113
        AutoSize = False
        Properties.MaxLength = 2
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 12
        OnKeyPress = edtOrderByKeyPress
        Height = 23
        Width = 45
      end
      object edtSuccCnt: TcxCurrencyEdit
        Left = 118
        Top = 311
        AutoSize = False
        EditValue = 0
        Enabled = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0'
        Properties.MaxLength = 3
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 13
        Height = 23
        Width = 57
      end
      object lblLevelColor: TcxLabel
        Tag = 7
        Left = 117
        Top = 260
        AutoSize = False
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.Color = clWhite
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 23
        Width = 95
        AnchorX = 165
        AnchorY = 272
      end
      object rbMilePay: TcxRadioButton
        Left = 131
        Top = 220
        Width = 52
        Height = 17
        Caption = #51221#50529
        TabOrder = 15
        OnClick = rbMilePayClick
        LookAndFeel.SkinName = 'Sharp'
        Transparent = True
      end
      object rbMileRate: TcxRadioButton
        Left = 194
        Top = 220
        Width = 57
        Height = 17
        Caption = #51221#47456
        TabOrder = 16
        OnClick = rbMileRateClick
        LookAndFeel.SkinName = 'Sharp'
        Transparent = True
      end
      object cxGroupBox2: TcxGroupBox
        Left = 4
        Top = 4
        Anchors = [akLeft, akTop, akRight]
        Caption = #44536#47353' '#51221#48372
        TabOrder = 17
        DesignSize = (
          427
          97)
        Height = 101
        Width = 427
        object Shape8: TShape
          Left = 7
          Top = 20
          Width = 88
          Height = 21
          Pen.Color = clSilver
          Shape = stRoundRect
        end
        object Shape9: TShape
          Left = 7
          Top = 45
          Width = 88
          Height = 22
          Pen.Color = clSilver
          Shape = stRoundRect
        end
        object Shape10: TShape
          Left = 87
          Top = 45
          Width = 337
          Height = 22
          Pen.Color = clSilver
        end
        object btnGroupModify: TcxButton
          Left = 320
          Top = 19
          Width = 102
          Height = 22
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #44536#47353#51221#48372#48320#44221
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 0
          OnClick = btnGroupModifyClick
        end
        object cxLabel7: TcxLabel
          Left = 26
          Top = 22
          Caption = #44536' '#47353' '#47749
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 50
          AnchorY = 30
        end
        object edtGroupName: TcxTextEdit
          Left = 87
          Top = 19
          AutoSize = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          OnKeyUp = edtGroupNameKeyUp
          Height = 23
          Width = 227
        end
        object cxLabel8: TcxLabel
          Left = 11
          Top = 48
          Caption = #46321#44553#49688#51665#44592#54620
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 49
          AnchorY = 56
        end
        object cxChkOneYear: TcxCheckBox
          Left = 90
          Top = 47
          Caption = #52572#44540' 1'#45380' '#50976#51648'('#46321#44553#49328#51221#44592#54620#51060' 1'#45380' '#51060#45236#51032' '#50756#47308#44148#47564' '#51201#50857')'
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 1
          Transparent = True
          OnClick = chkUseAutoUpClick
        end
        object Label6: TcxLabel
          Left = 11
          Top = 73
          Caption = #8251' '#46321#44553#49688#51665#52376#47532' : '#47588#50900#52488#50640' '#51088#46041' '#49688#51665' '#52376#47532
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.SkinName = 'Office2010Silver'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
          StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
          StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
          Transparent = True
        end
      end
      object Label1: TcxLabel
        Left = 30
        Top = 139
        Caption = 
          #8251' '#51088#46041#49849#44553#51012' '#49324#50857#54624' '#44221#50864' '#45230#51008#46321#44553#50640#49436' '#45458#51008' '#46321#44553#51004#47196' '#49849#44553#46121#45768#45796'.'#13#10'('#50696'> VIP: 50, '#51452#50836': 40, '#45800#44264': 3' +
          '0, ..., '#48520#47049': 0)'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.LookAndFeel.SkinName = 'Office2010Silver'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
        StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
        StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
        Transparent = True
      end
      object Label2: TcxLabel
        Left = 216
        Top = 197
        Caption = #51217#49688#44256#44061#52285#50640' '#54364#49884#46104#45716' '#51228#47785
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.LookAndFeel.SkinName = 'Office2010Silver'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
        StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
        StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
        Transparent = True
      end
      object Label3: TcxLabel
        Left = 178
        Top = 315
        Caption = #51060#49345
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.LookAndFeel.SkinName = 'Office2010Silver'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
        StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
        StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
        Transparent = True
      end
      object Label4: TcxLabel
        Left = 178
        Top = 336
        Caption = '% '#51060#54616
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.LookAndFeel.SkinName = 'Office2010Silver'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
        StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
        StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
        Transparent = True
      end
      object Label5: TcxLabel
        Left = 230
        Top = 291
        Caption = 
          #8251' '#51088#46041#49849#44553#51008' '#50756#47308' '#44148#44284' '#52712#49548#50984#13#10'     '#47784#46160' '#47564#51313#54644#50556' '#49849#44553#46121#45768#45796'.'#13#10#8251' '#48520#47049' '#46321' '#49688#46041#51004#47196' '#44288#47532#54616#45716' '#13#10'     ' +
          #46321#44553#51008' '#52404#53356#54644#51228#13#10'     ('#51088#46041#49849#44553' '#48120#49324#50857') '#48148#46989#45768#45796'.'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.LookAndFeel.SkinName = 'Office2010Silver'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
        StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
        StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
        Transparent = True
      end
    end
  end
  object ColorDialog1: TColorDialog
    Left = 368
    Top = 194
  end
end

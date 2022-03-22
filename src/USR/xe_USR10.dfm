object Frm_USR10: TFrm_USR10
  Left = 1526
  Top = 371
  BorderStyle = bsNone
  Caption = 'USR10'
  ClientHeight = 484
  ClientWidth = 384
  Color = clBtnFace
  Constraints.MinHeight = 375
  Constraints.MinWidth = 384
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 384
    Height = 484
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    object pnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 380
      Height = 25
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   '#51649#50896' '#49888#44508#46321#47197
      Color = 12566463
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnMouseDown = pnlTitleMouseDown
      DesignSize = (
        380
        25)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 380
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
      end
      object btnClose: TcxButton
        Left = 353
        Top = 2
        Width = 24
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
        OnClick = btnCloseClick
      end
      object cxbModify: TcxButton
        Left = 265
        Top = 2
        Width = 86
        Height = 22
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
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = cxbModifyClick
      end
      object cxbNewUser: TcxButton
        Left = 177
        Top = 2
        Width = 86
        Height = 22
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #51077#47141#46976#52488#44592#54868
        Colors.Default = 16635384
        Colors.Normal = 16773362
        Colors.Hot = 16360076
        Colors.Pressed = 16644080
        Colors.Disabled = 4227327
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = cxbNewUserClick
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 25
      Width = 380
      Height = 455
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 1
      TabOrder = 1
      object cxGroupBox1: TcxGroupBox
        Left = 3
        Top = 5
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 441
        Width = 374
        object Shape1: TShape
          Left = 8
          Top = 8
          Width = 150
          Height = 23
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape2: TShape
          Left = 8
          Top = 33
          Width = 150
          Height = 23
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape3: TShape
          Left = 8
          Top = 83
          Width = 150
          Height = 23
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape4: TShape
          Left = 8
          Top = 58
          Width = 150
          Height = 23
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape5: TShape
          Left = 8
          Top = 208
          Width = 150
          Height = 23
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape6: TShape
          Left = 8
          Top = 158
          Width = 150
          Height = 23
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape7: TShape
          Left = 8
          Top = 133
          Width = 158
          Height = 23
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape8: TShape
          Left = 8
          Top = 108
          Width = 150
          Height = 23
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape9: TShape
          Left = 8
          Top = 308
          Width = 88
          Height = 37
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape10: TShape
          Left = 8
          Top = 283
          Width = 88
          Height = 23
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape11: TShape
          Left = 8
          Top = 258
          Width = 150
          Height = 23
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape12: TShape
          Left = 8
          Top = 233
          Width = 150
          Height = 23
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape13: TShape
          Left = 8
          Top = 386
          Width = 97
          Height = 52
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape15: TShape
          Left = 8
          Top = 347
          Width = 88
          Height = 37
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape16: TShape
          Left = 8
          Top = 183
          Width = 150
          Height = 23
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object btnNCert: TcxButton
          Left = 274
          Top = 108
          Width = 62
          Height = 48
          Cursor = crHandPoint
          Caption = #48376#51064#51064#51613
          Colors.Default = 16635384
          Colors.Normal = 16773362
          Colors.Hot = 16360076
          Colors.Pressed = 16644080
          Colors.Disabled = 4227327
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 0
          OnClick = btnNCertClick
        end
        object cboBranch: TcxComboBox
          Left = 88
          Top = 7
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 20
          Properties.ImeMode = imSAlpha
          Properties.ItemHeight = 16
          Properties.ReadOnly = False
          Properties.UseLeftAlignmentOnEditing = False
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          Style.TransparentBorder = True
          StyleDisabled.Color = 16773362
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.TextColor = clBtnShadow
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.TextColor = clBlack
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 1
          OnClick = cboBranchClick
          Height = 25
          Width = 282
        end
        object cxButton3: TcxButton
          Left = 208
          Top = 59
          Width = 62
          Height = 22
          Cursor = crHandPoint
          Caption = #51473#48373#52404#53356
          Colors.Default = 16635384
          Colors.Normal = 16773362
          Colors.Hot = 16360076
          Colors.Pressed = 16644080
          Colors.Disabled = 4227327
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 14
          OnClick = cxButton3Click
        end
        object cxcbGrad: TcxComboBox
          Left = 88
          Top = 32
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.ImeMode = imSAlpha
          Properties.Items.Strings = (
            #48376#49324#44288#47532#51088
            #51648#49324#44288#47532#51088
            #49345#45812#50896)
          Properties.OnChange = cxcbGradPropertiesChange
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 2
          Height = 25
          Width = 119
        end
        object cxcbPhone: TcxComboBox
          Left = 88
          Top = 232
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.ImeMode = imSAlpha
          Properties.Items.Strings = (
            '010'
            '011'
            '016'
            '017'
            '018'
            '019')
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 9
          Text = '010'
          Height = 25
          Width = 43
        end
        object cxcbUserStatus: TcxComboBox
          Left = 88
          Top = 207
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.ImeMode = imSAlpha
          Properties.Items.Strings = (
            #44368#50977#51473
            #44540#47924#51473
            #55092#44032#51473
            #51068#49884#51221#51648
            #53748#49324)
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 8
          Text = #44368#50977#51473
          Height = 25
          Width = 119
        end
        object cxedId: TcxTextEdit
          Left = 88
          Top = 57
          AutoSize = False
          Properties.ImeMode = imSAlpha
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          OnKeyUp = cxedIdKeyUp
          Height = 25
          Width = 119
        end
        object cxedName: TcxTextEdit
          Left = 88
          Top = 107
          AutoSize = False
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          OnKeyDown = cxedNameKeyDown
          OnKeyUp = cxedIdKeyUp
          Height = 25
          Width = 184
        end
        object cxedNo1: TcxTextEdit
          Left = 88
          Top = 132
          AutoSize = False
          Properties.MaxLength = 6
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Text = '999999'
          OnKeyDown = cxedNo1KeyDown
          OnKeyPress = cxedNo1KeyPress
          Height = 25
          Width = 49
        end
        object cxedPhone: TcxTextEdit
          Left = 133
          Top = 232
          AutoSize = False
          Properties.ImeMode = imSAlpha
          Properties.MaxLength = 9
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 10
          Text = '0000-0000'
          OnExit = cxedPhoneExit
          OnKeyPress = cxedPhoneKeyPress
          Height = 25
          Width = 74
        end
        object cxedPW: TcxTextEdit
          Left = 88
          Top = 82
          Hint = 
            #9758' '#49324#50857#51088' '#46321#47197'/'#49688#51221#49884' '#48708#48128#48264#54840' '#49373#49457' '#44508#52825#51008' '#45796#51020#51012' '#46384#46972#50556' '#54633#45768#45796'. '#13#10'  1) '#50500#51060#46356' '#50752' '#50516#54840#45716' '#49436#47196' '#45804#46972#50556' '#54632#13 +
            #10'  2) '#52572#49548' 6'#51088#47532' '#51060#49345' 12'#51088#47532' '#51060#54616' '#51060#50612#50556' '#54632#13#10'  3) '#48708#48128#48264#54840#45716' '#49707#51088' + '#50689#47928' + '#53945#49688#47928#51088' '#51312#54633#51004#47196' '#49373#49457 +
            ' '#46104#50612#50556' '#54632#13#10'  4) '#48708#48128#48264#54840' '#49688#51221' '#51068#44221#50864' '#51060#51204' '#48708#48128#48264#54840#50752' 3'#51088' '#51060#49345' '#45804#46972#50556' '#54632#13#10'  5) 4'#54924#50672#49549' '#46041#51068#47928#51088' '#49324#50857 +
            ' '#48520#44032' '#48143' '#51060#50612#51648#45716' '#47928#51088' 4'#54924#50672#49549' '#49324#50857' '#48520#44032' '#54632#13#10'  6) '#53412#48372#46300' '#51088#54032#50640#49436' '#50672#49549#46108' 4'#51088#51060#49345' '#49324#50857' '#48520#44032
          AutoSize = False
          ParentShowHint = False
          Properties.EchoMode = eemPassword
          Properties.PasswordChar = '*'
          ShowHint = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          OnKeyUp = cxedIdKeyUp
          Height = 25
          Width = 119
        end
        object cxedTel: TcxTextEdit
          Left = 88
          Top = 257
          AutoSize = False
          Properties.ImeMode = imSAlpha
          Properties.MaxLength = 13
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 11
          OnExit = cxedTelExit
          OnKeyPress = cxedPhoneKeyPress
          OnKeyUp = cxedIdKeyUp
          Height = 25
          Width = 119
        end
        object cxLabel1: TcxLabel
          Left = 30
          Top = 38
          Caption = #51649#50896#44536#47353
          ParentColor = False
          Style.TextColor = clRed
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 56
          AnchorY = 46
        end
        object cxLabel17: TcxLabel
          Left = 36
          Top = 12
          Caption = #49548'   '#49549
          ParentColor = False
          Style.TextColor = clRed
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 59
          AnchorY = 20
        end
        object cxLabel19: TcxLabel
          Left = 33
          Top = 62
          Caption = #50500' '#51060' '#46356
          ParentColor = False
          Style.TextColor = 13719147
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 59
          AnchorY = 70
        end
        object cxLabel20: TcxLabel
          Left = 30
          Top = 87
          Caption = #48708#48128#48264#54840
          ParentColor = False
          Style.TextColor = 13719147
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 56
          AnchorY = 95
        end
        object cxLabel21: TcxLabel
          Left = 33
          Top = 112
          Caption = #51649' '#50896' '#47749
          ParentColor = False
          Style.TextColor = 13719147
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 59
          AnchorY = 120
        end
        object cxLabel22: TcxLabel
          Left = 33
          Top = 161
          Caption = #51077' '#49324' '#51068
          ParentColor = False
          Style.TextColor = 13719147
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 59
          AnchorY = 169
        end
        object cxLabel23: TcxLabel
          Left = 30
          Top = 213
          Caption = #44540#47924#49345#53468
          ParentColor = False
          Style.TextColor = 13719147
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 56
          AnchorY = 221
        end
        object cxLabel24: TcxLabel
          Left = 18
          Top = 237
          Caption = #54648#46300#54256#48264#54840
          ParentColor = False
          Style.TextColor = 13719147
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 50
          AnchorY = 245
        end
        object cxLabel3: TcxLabel
          Left = 33
          Top = 261
          Caption = #50672' '#46973' '#52376
          ParentColor = False
          Style.TextColor = 13719147
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 59
          AnchorY = 269
        end
        object cxLabel4: TcxLabel
          Left = 30
          Top = 137
          Caption = #51452#48124#48264#54840
          ParentColor = False
          Style.TextColor = 13719147
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 56
          AnchorY = 145
        end
        object cxLabel5: TcxLabel
          Left = 208
          Top = 207
          Cursor = crHandPoint
          Caption = ' '#51221#51648#47484' '#52404#53356#54616#44256' '#13#10' '#51200#51109#51012' '#45572#47476#47732#13#10' '#49324#50857#51060' '#51221#51648#46121#45768#45796'.'
          ParentColor = False
          Style.BorderColor = 15076287
          Style.BorderStyle = ebsNone
          Style.Color = 12189690
          Style.TextColor = clBlue
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 227
        end
        object cxLabel7: TcxLabel
          Left = 38
          Top = 287
          Caption = #51452'   '#49548
          ParentColor = False
          Style.TextColor = 13719147
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 61
          AnchorY = 295
        end
        object cxLblStart: TcxLabel
          Left = 39
          Top = 320
          Caption = #47700' '#47784' 1'
          ParentColor = False
          Style.TextColor = 13719147
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 62
          AnchorY = 328
        end
        object cxmmAddr: TcxMemo
          Left = 88
          Top = 282
          Properties.AutoSelect = True
          Properties.ImeMode = imSHanguel
          Properties.MaxLength = 100
          Properties.WantReturns = False
          Style.BorderColor = 16360076
          Style.BorderStyle = ebsUltraFlat
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.HotTrack = True
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.TextColor = clBlack
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 12
          OnKeyUp = cxmmAddrKeyUp
          Height = 25
          Width = 282
        end
        object cxmmMemo1: TcxMemo
          Left = 88
          Top = 307
          Properties.AutoSelect = True
          Properties.ImeMode = imSHanguel
          Properties.MaxLength = 100
          Properties.WantReturns = False
          Style.BorderColor = 16360076
          Style.BorderStyle = ebsUltraFlat
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.HotTrack = True
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.TextColor = clBlack
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 13
          OnKeyUp = cxmmAddrKeyUp
          Height = 39
          Width = 282
        end
        object cxdtInDate: TcxDateEdit
          Left = 88
          Top = 157
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          ParentShowHint = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.DateButtons = [btnNow, btnToday]
          Properties.DateOnError = deToday
          Properties.ImeMode = imSAlpha
          Properties.InputKind = ikStandard
          Properties.SaveTime = False
          Properties.ShowTime = False
          ShowHint = True
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 28
          Height = 25
          Width = 119
        end
        object cxLabel2: TcxLabel
          Left = 30
          Top = 402
          Caption = #44288#47532#51088#50545
          ParentColor = False
          Style.TextColor = 13719147
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 56
          AnchorY = 410
        end
        object pnl92: TPanel
          Left = 89
          Top = 386
          Width = 280
          Height = 52
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 30
          object Shape14: TShape
            Left = 0
            Top = 0
            Width = 280
            Height = 52
            Align = alClient
            Pen.Color = 12566402
            ExplicitLeft = 1
            ExplicitWidth = 281
          end
          object rb_AdminAPP_Use_Y: TcxRadioButton
            Left = 4
            Top = 4
            Width = 46
            Height = 20
            Caption = #49324#50857
            Enabled = False
            TabOrder = 0
            OnClick = rb_AdminAPP_Use_NClick
            AutoSize = True
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            Transparent = True
          end
          object rb_AdminAPP_Use_N: TcxRadioButton
            Left = 56
            Top = 4
            Width = 58
            Height = 20
            Caption = #48120#49324#50857
            Enabled = False
            TabOrder = 1
            OnClick = rb_AdminAPP_Use_NClick
            AutoSize = True
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Sharp'
            Transparent = True
          end
          object cxLabel6: TcxLabel
            Left = 133
            Top = 7
            Caption = #50504#46300#47196#51060#46300'OS'#47564' '#51648#50896#54632'.'
            ParentColor = False
            Style.BorderColor = 15076287
            Style.BorderStyle = ebsNone
            Style.Color = 12189690
            Style.TextColor = clBlue
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 15
          end
          object cxLabel12: TcxLabel
            Left = 133
            Top = 30
            Caption = #45800#47568#44592#48320#44221
            ParentColor = False
            Style.TextColor = clBlue
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 165
            AnchorY = 38
          end
          object Panel2: TPanel
            Left = 5
            Top = 27
            Width = 117
            Height = 21
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 4
            object rb_AdminAPP_ADD_Use_Y: TcxRadioButton
              Left = 0
              Top = 2
              Width = 46
              Height = 20
              Caption = #49324#50857
              Enabled = False
              TabOrder = 0
              AutoSize = True
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              Transparent = True
            end
            object rb_AdminAPP_ADD_Use_N: TcxRadioButton
              Left = 52
              Top = 2
              Width = 58
              Height = 20
              Caption = #48120#49324#50857
              Checked = True
              Enabled = False
              TabOrder = 1
              TabStop = True
              AutoSize = True
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              Transparent = True
            end
          end
        end
        object cxLabel8: TcxLabel
          Left = 39
          Top = 358
          Caption = #47700' '#47784' 2'
          ParentColor = False
          Style.TextColor = 13719147
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 62
          AnchorY = 366
        end
        object cxmmMemo2: TcxMemo
          Left = 88
          Top = 346
          Properties.AutoSelect = True
          Properties.ImeMode = imSHanguel
          Properties.MaxLength = 100
          Properties.WantReturns = False
          Style.BorderColor = 16360076
          Style.BorderStyle = ebsUltraFlat
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.HotTrack = True
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.TextColor = clBlack
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 32
          OnKeyUp = cxmmAddrKeyUp
          Height = 39
          Width = 282
        end
        object cxLabel9: TcxLabel
          Left = 33
          Top = 186
          Caption = #53748' '#49324' '#51068
          ParentColor = False
          Style.TextColor = 13719147
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 59
          AnchorY = 194
        end
        object cxdtOutDate: TcxDateEdit
          Left = 88
          Top = 182
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          ParentShowHint = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.DateButtons = [btnNow, btnToday]
          Properties.DateOnError = deToday
          Properties.ImeMode = imSAlpha
          Properties.InputKind = ikStandard
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          ShowHint = True
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 34
          Height = 25
          Width = 119
        end
        object cxAge: TcxLabel
          Left = 206
          Top = 132
          AutoSize = False
          ParentColor = False
          ParentFont = False
          Style.Color = 16753314
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.TextColor = clWhite
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 24
          Width = 66
          AnchorX = 239
          AnchorY = 144
        end
        object cxedNo2: TcxTextEdit
          Left = 147
          Top = 132
          AutoSize = False
          Properties.EchoMode = eemPassword
          Properties.MaxLength = 7
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          Text = '9999999'
          OnKeyDown = cxedNo2KeyDown
          OnKeyPress = cxedNo1KeyPress
          Height = 25
          Width = 60
        end
        object cxLabel11: TcxLabel
          Left = 137
          Top = 135
          Caption = '-'
          ParentColor = False
          ParentFont = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 141
          AnchorY = 144
        end
      end
    end
  end
  object cxBrNo: TcxTextEdit
    Left = 617
    Top = 289
    Style.Color = 15456255
    TabOrder = 1
    Text = #51648#49324#53076#46300
    Visible = False
    Width = 60
  end
  object cxHdNo: TcxTextEdit
    Left = 617
    Top = 313
    Style.Color = 15456255
    TabOrder = 2
    Text = #48376#49324#53076#46300
    Visible = False
    Width = 60
  end
  object pnl7: TPanel
    Left = 213
    Top = 65
    Width = 25
    Height = 24
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 3
    object img2: TImage
      Left = 0
      Top = 0
      Width = 25
      Height = 24
      Cursor = crHandPoint
      Align = alClient
      AutoSize = True
      Center = True
      ParentShowHint = False
      Picture.Data = {
        055449636F6E0000010001001010000001002000680400001600000028000000
        1000000020000000010020000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000002D1F122B3A2918A10000006F00000010000000000000000000000000
        000000000000000000000000000000000000000000000000000000050000000C
        0000001CBE9266EA9F744BE00000006E00000014000000000000000000000000
        00000000000000000000000000000000000000060000001A0000003A0000005E
        987858C1DCB792FF907356DF000000940000004A0000001D0000000800000000
        0000000000000000000000000000000F00000044453526A47E644BD5987F67E6
        C6A989FFEAC49FFFBB9A77F5463625D1000000AD0000008F0000004E00000014
        00000000000000000000000D634D377EA68A6DF2C1A48AFFCFAF92FFDEBF9DFF
        F3CEAAFFFFE7C0FFE4C3A0FFC4A685FFAF8D6BF9513D28D3000000A300000060
        000000130000000495785A85B9A289FFDCC3A9FFFCDCBDFFFFEFCEFFE3B693FF
        9D3A11FFC87547FFFFDDB8FFFFDEBAFFE4C5A5FFC3A486FF74583BDF000000A2
        0000004EA686673BB8A590FFE3CDB7FFFFEACDFFFFE8CBFFFFF4D7FFD3A988FF
        490000FF701F00FFFFE1BCFFFFE8C7FFFFE3BFFFEDCDAFFFC2A587FF4B3A29CE
        0000009AC4A98DBFD9C7B5FFFFECD4FFFFEBD1FFFFE6CDFFFFE9CFFFFFEFD6FF
        DCB699FFF1D1B6FFFFEFD2FFFFE3C5FFFFE3C5FFFFE5C6FFE5CAADFFB29476F4
        000000BBCAB8A9FFF6E2D1FFFFF1DDFFFFEBD6FFFFEAD5FFFFEBD4FFFFFBE6FF
        CB8960FFE8BF9FFFFFFFE9FFFFE7CDFFFFE4CAFFFFE8CBFFFBE1C4FFD6BBA0FF
        33302CCACFC5B9FFFBECDDFFFFF3E3FFFFEEDEFFFFEEDCFFFFF1DFFFFFFFF8FF
        CEA082FFA54619FFFFEBCFFFFFF8E4FFFFE9D3FFFFEAD0FFFFE8CEFFDEC6B0FF
        6F675EDAD2C9BFFFFCF1E6FFFFF7EBFFFFF2E5FFFFF4E7FFFFF6E7FFFFF2DEFF
        FFFEEFFF88340FFFA73B0FFFEDD2B8FFFFF8E7FFFFEDD9FFFFF0DAFFDDC7B2FF
        605A54CCDDCFC2D6F4EFE9FFFFFFF6FFFFF7EDFFFFFFFFFFC5997FFF8D1D00FF
        EBD3BEFFAB7A5EFF640000FFBD886AFFFFFFF8FFFFF9E9FFFAF0E1FFD6C0ABFF
        1514146FE5D0BA56E3E2E0FFFFFEFCFFFFFFFBFFFFFFFFFFBD9885FF5C0000FF
        E2C5B2FF853E21FF570000FFD2B39DFFFFFFFFFFFFFFFDFFF0E5DAFF998673B9
        0000001D00000000E6D9CC9DEBEBECFFFFFFFFFFFFFFFFFFFFFFFFFFC59A84FF
        B9714DFF904E36FFC2A797FFFFFFFFFFFFFFFFFFF5F1EDFFCDBCABD900000021
        000000000000000000000000E7DDD386EFEDECFFFAFCFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F0ECFFCFC1B3B50000001300000000
        00000000000000000000000000000000EDDFCE26E9E3DD9AEEEAE6EBF5F5F6FF
        F6F9FAFFF8F9F9FFF3EEE9F2E5DDD5AEBEB2A541000000050000000000000000
        00000000FF0F0000F80F0000E0030000C00100008000000B00001C47000044B8
        00006EFA00007FFF000085FF000085FF000083FF000086FF80018CFFC00394FF
        E0079FFF}
      ShowHint = False
      OnClick = img2Click
      ExplicitTop = 1
    end
  end
  object grpHelp: TcxGroupBox
    Left = 421
    Top = 61
    Caption = '***** '#49324#50857#51088#44536#47353#51032' '#48512#50668#46108' '#47700#45684' '#44428#54620'******'
    TabOrder = 4
    Visible = False
    DesignSize = (
      356
      170)
    Height = 174
    Width = 356
    object cxButton1: TcxButton
      Left = 330
      Top = 13
      Width = 24
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
      OnClick = cxButton1Click
    end
    object cxLabel10: TcxLabel
      Left = 9
      Top = 22
      Caption = 
        '1. '#48376#49324#44288#47532#51088' '#13#10'    '#48512#50668#46108' '#47700#45684#44428#54620#51008' '#49548#49549#51648#49324#50640' '#49345#44288#50630#51060' '#48376#49324#50640' '#49549#54620' '#13#10'    '#47784#46304' '#51648#49324#50640' '#45824#54620' '#44428#54620#51012' '#44054 +
        #45716#45796'.'#13#10#13#10'2. '#51648#49324#44288#47532#51088#13#10'   '#48512#50668#46108' '#47700#45684#44428#54620#51008' '#49548#49549#51648#49324#50640' '#45824#54644#49436#47564' '#44428#54620#51012' '#44054#45716#45796'.'#13#10#13#10'3. '#49345#45812#50896' '#13#10'  ' +
        ' '#48512#50668#46108' '#47700#45684#44428#54620#51008' '#49548#49549#53084#49468#53552#50640' '#51060#44288#46108' '#47784#46304#51648#49324#46308#50640' '#13#10'   '#45824#54616#50668' '#44428#54620#51012' '#44054#45716#45796'.  '#45800', '#49345#45812#50896#51008' '#53945#51221' '#44288#47532#47700#45684#50640 +
        ' '#13#10'   '#45824#54616#50668' '#50896#52380#51201#51064' '#51217#44540#44428#54620#51060' '#50630#45796'.'
      Transparent = True
    end
  end
end

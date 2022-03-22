object Frm_WOR11: TFrm_WOR11
  Left = 0
  Top = 370
  BorderStyle = bsNone
  ClientHeight = 369
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
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
    Width = 416
    Height = 369
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    object pnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 412
      Height = 25
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   '#54589#50629' '#49688#51221
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
        412
        25)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 412
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
      end
      object btnClose: TcxButton
        Left = 376
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
        OnClick = btnCloseClick
      end
    end
    object btnCancel: TcxButton
      Left = 1
      Top = 338
      Width = 135
      Height = 25
      Cursor = crHandPoint
      Caption = #46321#47197#52712#49548
      Colors.Default = 16773362
      Colors.Normal = 16773362
      Colors.Pressed = 16644080
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnRegister: TcxButton
      Left = 139
      Top = 338
      Width = 134
      Height = 25
      Cursor = crHandPoint
      Caption = #51116#46321#47197
      Colors.Default = 16773362
      Colors.Normal = 16773362
      Colors.Pressed = 16644080
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 2
      OnClick = btnRegisterClick
    end
    object btnUpdate: TcxButton
      Left = 276
      Top = 338
      Width = 135
      Height = 25
      Cursor = crHandPoint
      Caption = #49688#51221
      Colors.Default = 16773362
      Colors.Normal = 16773362
      Colors.Pressed = 16644080
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Sharp'
      TabOrder = 3
      OnClick = btnUpdateClick
    end
    object cxGroupBox1: TcxGroupBox
      Left = 1
      Top = 27
      Style.BorderStyle = ebsFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Height = 116
      Width = 410
      object Shape1: TShape
        Left = 10
        Top = 6
        Width = 129
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape2: TShape
        Left = 10
        Top = 32
        Width = 129
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape3: TShape
        Left = 10
        Top = 84
        Width = 129
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape4: TShape
        Left = 10
        Top = 58
        Width = 129
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape5: TShape
        Left = 214
        Top = 6
        Width = 129
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape6: TShape
        Left = 214
        Top = 58
        Width = 129
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object edtInDate: TcxTextEdit
        Left = 91
        Top = 31
        TabStop = False
        AutoSize = False
        Enabled = False
        Properties.Alignment.Horz = taCenter
        Properties.CharCase = ecUpperCase
        Properties.ImeMode = imSAlpha
        Properties.MaxLength = 6
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 26
        Width = 311
      end
      object edtPickupDate: TcxTextEdit
        Left = 91
        Top = 83
        TabStop = False
        AutoSize = False
        Enabled = False
        Properties.Alignment.Horz = taCenter
        Properties.CharCase = ecUpperCase
        Properties.ImeMode = imSAlpha
        Properties.MaxLength = 6
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Height = 26
        Width = 311
      end
      object edtPickupNo: TcxTextEdit
        Left = 91
        Top = 5
        TabStop = False
        AutoSize = False
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Height = 26
        Width = 117
      end
      object edtPickupPhone: TcxTextEdit
        Left = 279
        Top = 57
        TabStop = False
        AutoSize = False
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Height = 26
        Width = 123
      end
      object edtPickupSabun: TcxTextEdit
        Left = 91
        Top = 57
        TabStop = False
        AutoSize = False
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        Height = 26
        Width = 117
      end
      object edtStatus: TcxTextEdit
        Left = 279
        Top = 5
        TabStop = False
        AutoSize = False
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Height = 26
        Width = 123
      end
      object lbl1: TcxLabel
        Left = 23
        Top = 36
        Caption = #46321' '#47197' '#49884' '#44036
        ParentColor = False
        Style.Color = 16744576
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 55
        AnchorY = 44
      end
      object lbl2: TcxLabel
        Left = 23
        Top = 10
        Caption = #54589' '#50629' '#48264' '#54840
        ParentColor = False
        Style.Color = 16744576
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 55
        AnchorY = 18
      end
      object lbl3: TcxLabel
        Left = 221
        Top = 10
        Caption = #49345'      '#53468
        ParentColor = False
        Style.Color = 16744576
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 247
        AnchorY = 18
      end
      object lbl4: TcxLabel
        Left = 11
        Top = 62
        Caption = #48176#52264#44592#49324#49324#48264
        ParentColor = False
        Style.Color = 16744576
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 49
        AnchorY = 70
      end
      object lbl5: TcxLabel
        Left = 221
        Top = 62
        Caption = #51204#54868#48264#54840
        ParentColor = False
        Style.Color = 16744576
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 247
        AnchorY = 70
      end
      object lbl6: TcxLabel
        Left = 23
        Top = 89
        Caption = #48176' '#52264' '#49884' '#44036
        ParentColor = False
        Style.Color = 16744576
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 55
        AnchorY = 97
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 1
      Top = 145
      Style.BorderStyle = ebsFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      TabOrder = 5
      Height = 92
      Width = 410
      object Shape9: TShape
        Left = 10
        Top = 60
        Width = 212
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object lbl9: TLabel
        Left = 200
        Top = 67
        Width = 6
        Height = 12
        Caption = '/'
      end
      object Shape7: TShape
        Left = 10
        Top = 8
        Width = 129
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape8: TShape
        Left = 10
        Top = 34
        Width = 129
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object edtBrName: TcxTextEdit
        Left = 91
        Top = 7
        TabStop = False
        AutoSize = False
        Enabled = False
        Properties.Alignment.Horz = taCenter
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 26
        Width = 311
      end
      object edtBrPhone: TcxTextEdit
        Left = 91
        Top = 33
        TabStop = False
        AutoSize = False
        Enabled = False
        Properties.Alignment.Horz = taCenter
        Properties.CharCase = ecUpperCase
        Properties.ImeMode = imSAlpha
        Properties.MaxLength = 6
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Height = 26
        Width = 311
      end
      object edtRegSabun: TcxTextEdit
        Left = 91
        Top = 59
        TabStop = False
        AutoSize = False
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Height = 26
        Width = 105
      end
      object edtRegSabun2: TcxTextEdit
        Left = 210
        Top = 59
        TabStop = False
        AutoSize = False
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Height = 26
        Width = 113
      end
      object lbl10: TcxLabel
        Left = 23
        Top = 65
        Caption = #46321' '#47197' '#44592' '#49324
        ParentColor = False
        Style.Color = 16744576
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 55
        AnchorY = 73
      end
      object lbl7: TcxLabel
        Left = 23
        Top = 38
        Caption = #51204' '#54868' '#48264' '#54840
        ParentColor = False
        Style.Color = 16744576
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 55
        AnchorY = 46
      end
      object lbl8: TcxLabel
        Left = 23
        Top = 12
        Caption = #51648'   '#49324'   '#47749
        ParentColor = False
        Style.Color = 16744576
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 55
        AnchorY = 20
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 1
      Top = 239
      Style.BorderStyle = ebsFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      TabOrder = 6
      Height = 96
      Width = 410
      object Shape10: TShape
        Left = 10
        Top = 7
        Width = 392
        Height = 38
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape11: TShape
        Left = 10
        Top = 48
        Width = 392
        Height = 38
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object meoEndAreaWOR11: TcxTextEdit
        Left = 81
        Top = 47
        TabStop = False
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnKeyUp = meoStartAreaWOR11KeyUp
        Width = 322
      end
      object meoStartAreaWOR11: TcxTextEdit
        Left = 81
        Top = 6
        TabStop = False
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 7
        OnKeyUp = meoStartAreaWOR11KeyUp
        Width = 322
      end
      object cxtSA1: TcxTextEdit
        Left = 195
        Top = 2
        TabStop = False
        Enabled = False
        TabOrder = 8
        Text = 'Area1'
        Visible = False
        Width = 37
      end
      object cxtSA2: TcxTextEdit
        Left = 231
        Top = 2
        TabStop = False
        Enabled = False
        TabOrder = 9
        Text = 'Area2'
        Visible = False
        Width = 37
      end
      object cxtSA3: TcxTextEdit
        Left = 267
        Top = 2
        TabStop = False
        Enabled = False
        TabOrder = 10
        Text = 'Area3'
        Visible = False
        Width = 37
      end
      object cxtStartAreaDetail: TcxTextEdit
        Left = 304
        Top = 2
        TabStop = False
        Enabled = False
        TabOrder = 11
        Text = 'Area4'
        Visible = False
        Width = 37
      end
      object cxtStartXval: TcxTextEdit
        Left = 340
        Top = 2
        TabStop = False
        Enabled = False
        TabOrder = 12
        Text = 'X'
        Visible = False
        Width = 21
      end
      object cxtStartYval: TcxTextEdit
        Left = 361
        Top = 2
        TabStop = False
        Enabled = False
        TabOrder = 13
        Text = 'Y'
        Visible = False
        Width = 21
      end
      object lbl11: TcxLabel
        Left = 15
        Top = 19
        Caption = #52636'   '#48156'   '#51648
        ParentColor = False
        Style.Color = 16744576
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 47
        AnchorY = 27
      end
      object lbl12: TcxLabel
        Left = 16
        Top = 59
        Caption = #46020'   '#52265'   '#51648
        ParentColor = False
        Style.Color = 16744576
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 48
        AnchorY = 67
      end
      object lblEndAreaName: TcxLabel
        Left = 81
        Top = 67
        AutoSize = False
        ParentFont = False
        Style.BorderColor = clOlive
        Style.BorderStyle = ebsSingle
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Height = 20
        Width = 322
        AnchorY = 77
      end
      object lblStartAreaName: TcxLabel
        Left = 81
        Top = 26
        AutoSize = False
        ParentFont = False
        Style.BorderColor = clOlive
        Style.BorderStyle = ebsSingle
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Height = 20
        Width = 322
        AnchorY = 36
      end
      object cxtEndYval: TcxTextEdit
        Left = 383
        Top = 62
        TabStop = False
        Enabled = False
        TabOrder = 6
        Text = 'Y'
        Visible = False
        Width = 29
      end
      object cxtEndXval: TcxTextEdit
        Left = 354
        Top = 62
        TabStop = False
        Enabled = False
        TabOrder = 5
        Text = 'X'
        Visible = False
        Width = 29
      end
      object cxtEndAreaDetail: TcxTextEdit
        Left = 305
        Top = 62
        TabStop = False
        Enabled = False
        TabOrder = 4
        Text = 'Area4'
        Visible = False
        Width = 49
      end
      object cxtEd3: TcxTextEdit
        Left = 275
        Top = 62
        TabStop = False
        Enabled = False
        TabOrder = 3
        Text = 'Area3'
        Visible = False
        Width = 37
      end
      object cxtEd2: TcxTextEdit
        Left = 232
        Top = 62
        TabStop = False
        Enabled = False
        TabOrder = 2
        Text = 'Area2'
        Visible = False
        Width = 37
      end
      object cxtEd1: TcxTextEdit
        Left = 196
        Top = 62
        TabStop = False
        Enabled = False
        TabOrder = 1
        Text = 'Area1'
        Visible = False
        Width = 37
      end
    end
  end
end

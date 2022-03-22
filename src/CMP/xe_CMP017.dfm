object Frm_CMP017: TFrm_CMP017
  Left = 483
  Top = 359
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Frm_CMP017'
  ClientHeight = 703
  ClientWidth = 858
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
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
    Width = 858
    Height = 703
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object Shape34: TShape
      Left = 0
      Top = 378
      Width = 854
      Height = 3
      Align = alTop
      Pen.Style = psClear
      ExplicitLeft = -9
      ExplicitTop = 391
    end
    object Shape35: TShape
      Left = 0
      Top = 345
      Width = 854
      Height = 3
      Align = alTop
      Pen.Style = psClear
      ExplicitLeft = -5
      ExplicitTop = 63
      ExplicitWidth = 600
    end
    object cxGroupBox1: TcxGroupBox
      Left = 0
      Top = 25
      Align = alTop
      Style.BorderStyle = ebsFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnMouseMove = cxGroupBox1MouseMove
      Height = 320
      Width = 854
      object Shape1: TShape
        Left = 28
        Top = 11
        Width = 135
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape2: TShape
        Left = 28
        Top = 39
        Width = 139
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape3: TShape
        Left = 28
        Top = 67
        Width = 135
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape4: TShape
        Left = 410
        Top = 39
        Width = 85
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape6: TShape
        Left = 410
        Top = 11
        Width = 85
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape7: TShape
        Left = 624
        Top = 11
        Width = 79
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape8: TShape
        Left = 690
        Top = 11
        Width = 148
        Height = 24
        Brush.Color = 15000804
        Pen.Color = clSilver
      end
      object Shape9: TShape
        Left = 624
        Top = 39
        Width = 79
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape10: TShape
        Left = 690
        Top = 39
        Width = 148
        Height = 24
        Brush.Color = 15000804
        Pen.Color = clSilver
      end
      object Shape11: TShape
        Left = 336
        Top = 67
        Width = 67
        Height = 24
        Pen.Color = clSilver
      end
      object Shape12: TShape
        Left = 28
        Top = 95
        Width = 278
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape13: TShape
        Left = 318
        Top = 95
        Width = 85
        Height = 24
        Pen.Color = clSilver
      end
      object Shape5: TShape
        Left = 410
        Top = 66
        Width = 77
        Height = 53
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object btnAdd: TcxButton
        Left = 666
        Top = 126
        Width = 80
        Height = 31
        Cursor = crHandPoint
        Caption = #49888#44508'('#52488#44592#54868')'
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 0
        OnClick = btnAddClick
      end
      object btnInsert: TcxButton
        Left = 749
        Top = 126
        Width = 80
        Height = 31
        Cursor = crHandPoint
        Caption = #51200#51109
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 1
        OnClick = btnInsertClick
      end
      object btnUpdate: TcxButton
        Left = 832
        Top = 96
        Width = 77
        Height = 31
        Cursor = crHandPoint
        Caption = #49688#51221
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        Enabled = False
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 2
        Visible = False
        OnClick = btnUpdateClick
      end
      object lbl2: TcxLabel
        Left = 79
        Top = 44
        Caption = #50836#52397#45824#54364#48264#54840
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 117
        AnchorY = 52
      end
      object lbl3: TcxLabel
        Left = 421
        Top = 44
        Caption = #52376#47532#49345#53468
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 447
        AnchorY = 52
      end
      object LblImage1: TcxLabel
        Left = 115
        Top = 71
        Caption = #49888#48516#51613
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 135
        AnchorY = 79
      end
      object lbl65: TcxLabel
        Left = 103
        Top = 16
        Caption = #51648#49324#49440#53469
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 129
        AnchorY = 24
      end
      object edtKeyNumber: TcxTextEdit
        Left = 155
        Top = 38
        AutoSize = False
        Properties.MaxLength = 13
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 7
        Height = 26
        Width = 249
      end
      object cbbprocess: TcxComboBox
        Left = 479
        Top = 38
        AutoSize = False
        Enabled = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #50836#52397
          #52376#47532#51473
          #50756#47308
          #48372#47448)
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
        Text = #50836#52397
        Height = 26
        Width = 138
      end
      object cboBrOnly: TcxComboBox
        Left = 155
        Top = 10
        TabStop = False
        AutoSize = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          #51648#49324#51221#48372)
        Properties.OnChange = cboBrOnlyPropertiesChange
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
        Text = #51648#49324#51221#48372
        TextHint = #51648#49324#51221#48372
        Height = 26
        Width = 174
      end
      object cxLabel1: TcxLabel
        Left = 421
        Top = 16
        Caption = #45824#54364#48264#54840
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 447
        AnchorY = 24
      end
      object cbKeynumber01: TcxComboBox
        Left = 479
        Top = 10
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #51204#52404)
        Properties.OnChange = cbKeynumber01PropertiesChange
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
        TabOrder = 11
        Text = #51204#52404
        Height = 26
        Width = 138
      end
      object cxLabel2: TcxLabel
        Left = 632
        Top = 16
        Caption = #49888#52397#51068#49884
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 658
        AnchorY = 24
      end
      object lblInDate: TcxLabel
        Left = 705
        Top = 16
        Caption = '2015-12-07 11:10:00'
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorY = 24
      end
      object cxLabel4: TcxLabel
        Left = 632
        Top = 44
        Caption = #52376#47532#51068#49884
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 658
        AnchorY = 52
      end
      object lblOutDate: TcxLabel
        Left = 705
        Top = 44
        Caption = '2015-12-07 11:10:00'
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorY = 52
      end
      object LblImage2: TcxLabel
        Left = 31
        Top = 99
        Caption = #53685#49888#49436#48708#49828#51060#50857#51613#47749#50896
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorY = 107
      end
      object BtnImage1: TcxButton
        Tag = 140
        Left = 357
        Top = 69
        Width = 22
        Height = 20
        Cursor = crHandPoint
        Hint = #51060#48120#51648#49440#53469
        Colors.Default = 16773362
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E00000000000000000000A0A0A0FFA0A0A0FFA0A0
          A0FFA0A0A0FFA0A0A0FFA0A0A0FFA1A1A1FFA7A7A7FFAEAEAEFFAFAFAFFFAAAA
          AAFFA3A3A3FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFDBDBDBFFDBDB
          DBFFDBDBDBFFDBDBDBFFDBDBDBFFDDDDDDFFCECECEFFD4D4D4FFE4E4E4FFE0E0
          E0FFDCDCDCFFDBDBDBFFDBDBDBFFDBDBDBFFA0A0A0FFA0A0A0FFE0E0E0FFE0E0
          E0FFE0E0E0FFE0E0E0FFE1E1E1FFE5E5E5FFDCDCDCFFDDDEDEFFE7E7E7FFE3E3
          E3FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFA0A0A0FFA0A0A0FFE5E5E5FFE5E5
          E5FFE5E5E5FFE6E6E6FFE9E9E9FFEDEDEDFFE4E4E4FFE0E0E0FFE8E8E8FFE6E6
          E6FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFA0A0A0FFA0A0A0FFEAEAEAFF0991
          18FF09A623FF0AAF26FF0BBD2BFF0CC42EFF0CBE2CFF0AB127FF09A723FF09A4
          22FF09A522FF0AAB25FF0A9E1BFFEBEBEBFFA0A0A0FFA0A0A0FFEFEFEFFF149A
          1DFF0EC834FF13D742FF14DC48FF1CEA5FFF19E654FF16E24BFF15E148FF15E1
          49FF17E34DFF1AE858FF19B323FFF0F0F0FFA0A0A0FFA0A0A0FFF3F3F3FF21A7
          22FF26F065FF2AF26EFF4DF28BFF62E48DFF38DE63FF19DA45FF19DA44FF21EC
          57FF25EF63FF2BF372FF35C12FFFF5F5F5FFA0A0A0FFA0A0A0FFF8F8F8FF30B8
          2BFF37F87BFF63F8A1FFC1EBB6FFD2D56EFFBEE09AFF8AF1B0FF55F485FF57F6
          8FFF64F8A4FF6BF9B0FFB7C25BFFF9F9F9FFA0A0A0FFA0A0A0FFF9F9F9FF54C2
          40FF8DFAD3FF9FECBDFFEAB40EFFECA700FFECA600FFDDBB35FFCADEA2FFD3E8
          BEFFD9ECC8FFD7EBC4FFE29813FFF8F8F8FFA0A0A0FFA0A0A0FFF9F9F9FF8DB6
          53FFC0CC4EFFE8A600FFE69C00FFE59900FFE69C00FFE9A900FFEEBC00FFF1C7
          00FFF0C400FFECB500FFE17200FFF8F8F8FFA0A0A0FFA0A0A0FFF9F9F9FFDF71
          00FFE49E00FFE09100FFDF8C00FFE09000FFE49D00FFE9B100FFBDDFB7FF48FF
          FFFFA9D5A2FFE39900FFD86000FFF8F8F8FFA0A0A0FFA0A0A0FFFAFAFAFFE28F
          4DFFE6AA4DFFE4A64DFFE5A84DFFE8B24DFFEDC24DFFF0CC4DFF7FFFFFFF7AFF
          FFFF75FFFFFFE5A74DFFDF894DFFFAFAFAFFA0A0A0FFA0A0A0FFFAFAFAFFE29D
          71FFE6B171FFE7B271FFE9B975FFEDC77BFFF0D280FFF0D17FFFCCE2CBFF94FF
          FFFFBBD9B9FFE6B071FFE29C71FFFAFAFAFFA0A0A0FFA0A0A0FFFAFAFAFFDF97
          71FFE3AB71FFE6B375FFEAC17AFFEECD7FFFEECD7FFFEAC17AFFE6B375FFE3AB
          71FFE2AA71FFE2AA71FFDF9771FFFAFAFAFFA0A0A0FFA0A0A0FFFAFAFAFFFAFA
          FAFFFAFAFAFFFBFBFBFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFFAFAFAFFFAFA
          FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFA0A0A0FFA0A0A0FFBDBDBDFFBDBD
          BDFFBEBEBEFFC2C2C2FFC4C4C4FFC4C4C4FFC2C2C2FFBEBEBEFFBDBDBDFFBDBD
          BDFFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFA0A0A0FF}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = BtnImage1Click
      end
      object BtnImageD1: TcxButton
        Tag = 140
        Left = 380
        Top = 69
        Width = 22
        Height = 20
        Cursor = crHandPoint
        Hint = #51060#48120#51648#49325#51228
        Colors.Default = 16773362
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E0000000000000000000000000000010112210202
          396D01011B3A0000000000000000000000000000000000000000000000000000
          000000000000000000010A08A4E602023D8300000000000008140B07B7F6110E
          FFFF0B09DDFF01011F5C00000000000000000000000000000000000000000000
          00000000000003024F9D110CFCFF02023585000000000504284D110FDFFF0E0C
          FCFF100EFFFF0A08AEF80000040C000000000000000000000000000000000000
          00000101112E0D0CDCFF0D0BD6FF0000102A00000000010119392524D7FF0F0E
          FBFF0E0EEFFF0F0FFAFF03034D91000000000000000000000000000000000000
          04090A08AEEF1313FFFF08068FE800000000000000000000000012128AD62627
          FFFF090AEEFF1214FAFF0F10DBFF010012230000000000000000000000000706
          7EB81416FFFF1112E5FF020231620000000000000000000000000000101F272B
          C6FF252CFEFF0D0EEEFF161CFEFF0B0CA6D900000000000000000908769F181D
          F9FF191EFEFF0A0AA9E900000000000000000000000000000000000000000100
          3756393FE0FF2531FAFF121CF6FF1B25F6FF060353710707617E1D26F7FF1E2B
          FFFF151BE2FF0201273E00000000000000000000000000000000000000000000
          000007056D954C57F6FF2839F8FF1B2DF7FF1F29EEFF2131F6FF2236F9FF1F2F
          F2FF08047A9C0000000000000000000000000000000000000000000000000000
          0000000000000C0B87AB5261F5FF293CF6FF253AF8FF263AF7FF2638F6FF100D
          B1D3000000000000000000000000000000000000000000000000000000000000
          0000000000000605667A2939F1FF2F45F8FF2338F6FF253EF8FF1F28EAFF0100
          1A1E000000000000000000000000000000000000000000000000000000000605
          3E441D26D8E7314CF9FF2B46F8FF253FF6FF4E69F9FF536EF9FF2341F6FF171D
          BECD01000C0D00000000000000000000000000000000000007071417ABB6314C
          F6FF3656F8FF2F4AF6FF304FF6FF516EF9FF393BEEFC555CF4FF6B8AFAFF385E
          F8FF1A25E5F10200292C0000000000000000000000001317AEB83B61F8FF3A5A
          F7FF3150F7FF3D5FF7FF637DFAFF2F31E5EE00001517020033373333E9F3778E
          FAFF6389FAFF2D45F5FF090A6D7300000000000000004755F8FF4F76F8FF3E61
          F8FF5679F8FF6279F9FF1713B5BD00000809000000000000000000000F100B06
          9098525AF8FF7F9CFAFF6B89FAFF2E38CFD704032E301B19AEB7697BF9FF6C82
          F9FF5055F6FF0803777E00000000000000000000000000000000000000000000
          0000000023250B069CA53031D3DC6B7EF8FF454AF1FA0403464B292ACDD62F31
          CAD2130EA2AB01000A0B00000000000000000000000000000000000000000000
          00000000000001001A1C070462681C1DACB614149EA7}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = BtnImageD1Click
      end
      object BtnImage2: TcxButton
        Tag = 140
        Left = 357
        Top = 97
        Width = 22
        Height = 20
        Cursor = crHandPoint
        Hint = #51060#48120#51648#49440#53469
        Colors.Default = 16773362
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E00000000000000000000A0A0A0FFA0A0A0FFA0A0
          A0FFA0A0A0FFA0A0A0FFA0A0A0FFA1A1A1FFA7A7A7FFAEAEAEFFAFAFAFFFAAAA
          AAFFA3A3A3FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFDBDBDBFFDBDB
          DBFFDBDBDBFFDBDBDBFFDBDBDBFFDDDDDDFFCECECEFFD4D4D4FFE4E4E4FFE0E0
          E0FFDCDCDCFFDBDBDBFFDBDBDBFFDBDBDBFFA0A0A0FFA0A0A0FFE0E0E0FFE0E0
          E0FFE0E0E0FFE0E0E0FFE1E1E1FFE5E5E5FFDCDCDCFFDDDEDEFFE7E7E7FFE3E3
          E3FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFA0A0A0FFA0A0A0FFE5E5E5FFE5E5
          E5FFE5E5E5FFE6E6E6FFE9E9E9FFEDEDEDFFE4E4E4FFE0E0E0FFE8E8E8FFE6E6
          E6FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFA0A0A0FFA0A0A0FFEAEAEAFF0991
          18FF09A623FF0AAF26FF0BBD2BFF0CC42EFF0CBE2CFF0AB127FF09A723FF09A4
          22FF09A522FF0AAB25FF0A9E1BFFEBEBEBFFA0A0A0FFA0A0A0FFEFEFEFFF149A
          1DFF0EC834FF13D742FF14DC48FF1CEA5FFF19E654FF16E24BFF15E148FF15E1
          49FF17E34DFF1AE858FF19B323FFF0F0F0FFA0A0A0FFA0A0A0FFF3F3F3FF21A7
          22FF26F065FF2AF26EFF4DF28BFF62E48DFF38DE63FF19DA45FF19DA44FF21EC
          57FF25EF63FF2BF372FF35C12FFFF5F5F5FFA0A0A0FFA0A0A0FFF8F8F8FF30B8
          2BFF37F87BFF63F8A1FFC1EBB6FFD2D56EFFBEE09AFF8AF1B0FF55F485FF57F6
          8FFF64F8A4FF6BF9B0FFB7C25BFFF9F9F9FFA0A0A0FFA0A0A0FFF9F9F9FF54C2
          40FF8DFAD3FF9FECBDFFEAB40EFFECA700FFECA600FFDDBB35FFCADEA2FFD3E8
          BEFFD9ECC8FFD7EBC4FFE29813FFF8F8F8FFA0A0A0FFA0A0A0FFF9F9F9FF8DB6
          53FFC0CC4EFFE8A600FFE69C00FFE59900FFE69C00FFE9A900FFEEBC00FFF1C7
          00FFF0C400FFECB500FFE17200FFF8F8F8FFA0A0A0FFA0A0A0FFF9F9F9FFDF71
          00FFE49E00FFE09100FFDF8C00FFE09000FFE49D00FFE9B100FFBDDFB7FF48FF
          FFFFA9D5A2FFE39900FFD86000FFF8F8F8FFA0A0A0FFA0A0A0FFFAFAFAFFE28F
          4DFFE6AA4DFFE4A64DFFE5A84DFFE8B24DFFEDC24DFFF0CC4DFF7FFFFFFF7AFF
          FFFF75FFFFFFE5A74DFFDF894DFFFAFAFAFFA0A0A0FFA0A0A0FFFAFAFAFFE29D
          71FFE6B171FFE7B271FFE9B975FFEDC77BFFF0D280FFF0D17FFFCCE2CBFF94FF
          FFFFBBD9B9FFE6B071FFE29C71FFFAFAFAFFA0A0A0FFA0A0A0FFFAFAFAFFDF97
          71FFE3AB71FFE6B375FFEAC17AFFEECD7FFFEECD7FFFEAC17AFFE6B375FFE3AB
          71FFE2AA71FFE2AA71FFDF9771FFFAFAFAFFA0A0A0FFA0A0A0FFFAFAFAFFFAFA
          FAFFFAFAFAFFFBFBFBFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFFAFAFAFFFAFA
          FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFA0A0A0FFA0A0A0FFBDBDBDFFBDBD
          BDFFBEBEBEFFC2C2C2FFC4C4C4FFC4C4C4FFC2C2C2FFBEBEBEFFBDBDBDFFBDBD
          BDFFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFA0A0A0FF}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = BtnImage2Click
      end
      object BtnImageD2: TcxButton
        Tag = 140
        Left = 380
        Top = 97
        Width = 22
        Height = 20
        Cursor = crHandPoint
        Hint = #51060#48120#51648#49325#51228
        Colors.Default = 16773362
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E0000000000000000000000000000010112210202
          396D01011B3A0000000000000000000000000000000000000000000000000000
          000000000000000000010A08A4E602023D8300000000000008140B07B7F6110E
          FFFF0B09DDFF01011F5C00000000000000000000000000000000000000000000
          00000000000003024F9D110CFCFF02023585000000000504284D110FDFFF0E0C
          FCFF100EFFFF0A08AEF80000040C000000000000000000000000000000000000
          00000101112E0D0CDCFF0D0BD6FF0000102A00000000010119392524D7FF0F0E
          FBFF0E0EEFFF0F0FFAFF03034D91000000000000000000000000000000000000
          04090A08AEEF1313FFFF08068FE800000000000000000000000012128AD62627
          FFFF090AEEFF1214FAFF0F10DBFF010012230000000000000000000000000706
          7EB81416FFFF1112E5FF020231620000000000000000000000000000101F272B
          C6FF252CFEFF0D0EEEFF161CFEFF0B0CA6D900000000000000000908769F181D
          F9FF191EFEFF0A0AA9E900000000000000000000000000000000000000000100
          3756393FE0FF2531FAFF121CF6FF1B25F6FF060353710707617E1D26F7FF1E2B
          FFFF151BE2FF0201273E00000000000000000000000000000000000000000000
          000007056D954C57F6FF2839F8FF1B2DF7FF1F29EEFF2131F6FF2236F9FF1F2F
          F2FF08047A9C0000000000000000000000000000000000000000000000000000
          0000000000000C0B87AB5261F5FF293CF6FF253AF8FF263AF7FF2638F6FF100D
          B1D3000000000000000000000000000000000000000000000000000000000000
          0000000000000605667A2939F1FF2F45F8FF2338F6FF253EF8FF1F28EAFF0100
          1A1E000000000000000000000000000000000000000000000000000000000605
          3E441D26D8E7314CF9FF2B46F8FF253FF6FF4E69F9FF536EF9FF2341F6FF171D
          BECD01000C0D00000000000000000000000000000000000007071417ABB6314C
          F6FF3656F8FF2F4AF6FF304FF6FF516EF9FF393BEEFC555CF4FF6B8AFAFF385E
          F8FF1A25E5F10200292C0000000000000000000000001317AEB83B61F8FF3A5A
          F7FF3150F7FF3D5FF7FF637DFAFF2F31E5EE00001517020033373333E9F3778E
          FAFF6389FAFF2D45F5FF090A6D7300000000000000004755F8FF4F76F8FF3E61
          F8FF5679F8FF6279F9FF1713B5BD00000809000000000000000000000F100B06
          9098525AF8FF7F9CFAFF6B89FAFF2E38CFD704032E301B19AEB7697BF9FF6C82
          F9FF5055F6FF0803777E00000000000000000000000000000000000000000000
          0000000023250B069CA53031D3DC6B7EF8FF454AF1FA0403464B292ACDD62F31
          CAD2130EA2AB01000A0B00000000000000000000000000000000000000000000
          00000000000001001A1C070462681C1DACB614149EA7}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = BtnImageD2Click
      end
      object edtFile1: TcxTextEdit
        Left = 155
        Top = 66
        AutoSize = False
        Properties.Alignment.Horz = taRightJustify
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 21
        Height = 26
        Width = 202
      end
      object edtFile2: TcxTextEdit
        Left = 155
        Top = 94
        AutoSize = False
        Properties.Alignment.Horz = taRightJustify
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 22
        Height = 26
        Width = 183
      end
      object cxLabel5: TcxLabel
        Left = 32
        Top = 124
        Caption = #8251' '#51312#54924' '#45236#50669' '#54637#47785' '#45908#48660' '#53364#47533' '#49884' '#49688#51221' '#44032#45733' '#54633#45768#45796'.'
        Transparent = True
      end
      object cxLabel6: TcxLabel
        Left = 32
        Top = 143
        Caption = #8251' '#52376#47532#49345#53468' "'#50836#52397'"'#44148#50640' '#45824#54644#49436#47564' '#49688#51221' '#44032#45733' '#54633#45768#45796'.'
        Transparent = True
      end
      object cxTSearchMainTel: TcxTextEdit
        Left = 329
        Top = 10
        TabStop = False
        AutoSize = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 25
        OnEnter = cxTSearchMainTelEnter
        OnExit = cxTSearchMainTelExit
        OnKeyDown = cxTSearchMainTelKeyDown
        OnKeyUp = cxTSearchMainTelKeyUp
        OnMouseDown = cxTSearchMainTelMouseDown
        Height = 26
        Width = 75
      end
      object lblCurPathRate: TcxLabel
        Left = 333
        Top = 16
        Cursor = crIBeam
        Caption = #51648#49324#44160#49353
        ParentColor = False
        ParentFont = False
        Style.Color = 16375788
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 10329501
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        OnClick = lblCurPathRateClick
        AnchorX = 359
        AnchorY = 24
      end
      object btnPDF2: TcxButton
        Tag = 140
        Left = 338
        Top = 97
        Width = 19
        Height = 20
        Cursor = crHandPoint
        Hint = #51060#48120#51648#49440#53469
        Colors.Default = 16773362
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E0000000000000000000000000000373FA3B84C57
          E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57
          E2FF4C57E2FF4C57E2FF4C57E2FF373FA3B800000000000000004C57E2FF4C57
          E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57
          E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF00000000000000004C57E2FF4C57
          E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57
          E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF00000000000000004C57E2FF4C57
          E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57
          E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF00000000000000004C57E2FF4C57
          E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57
          E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF00000000000000004C57E2FF4C57
          E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57
          E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF00000000000000004C57E2FF4C57
          E2FF4C57E2FF999FEFFF5862E4FF4C57E2FFDADDF9FFBEC2F4FF656EE6FFA4A9
          F0FF4D58E2FF4C57E2FF4C57E2FF4C57E2FF00000000000000004C57E2FF4C57
          E2FF4C57E2FFA6ABF1FFC8CBF6FF7C84EAFFBCC0F4FF757DE9FF969CEEFFDADD
          F9FF6771E6FF4C57E2FF4C57E2FF4C57E2FF00000000000000004C57E2FF4C57
          E2FF4C57E2FF9CA2EFFFC7CAF6FF7C84EAFFDADDF9FFBBBFF4FF626CE6FFD7D9
          F9FF747DE8FF4C57E2FF4C57E2FF4C57E2FF00000000000000004C57E2FF4C57
          E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57
          E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF00000000000000004C57E2FF4C57
          E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57
          E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF00000000000000004C57E2FF4C57
          E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4A55
          DFFF3C48CEFF3B47CCFF3B47CCFF3944C0EC00000000000000004C57E2FF4C57
          E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF3C48
          CEFF2936B5FF2936B5FF2C39B7FB0E102F3C00000000000000004C57E2FF4C57
          E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF3A46
          CBFF2936B5FF2C39B7FB0E102F3C0000000000000000000000004C57E2FF4C57
          E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF3A46
          CBFF2C39B7FB0E102F3C00000000000000000000000000000000373FA3B84C57
          E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF4C57E2FF3944
          C0EB0D102E3B00000000000000000000000000000000}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = btnPDF2Click
      end
      object cbbDtlCallCenterCode: TcxComboBox
        Tag = 1
        Left = 832
        Top = 133
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.ImeMode = imSAlpha
        Properties.ReadOnly = False
        Properties.OnChange = cbbDtlCallCenterCodePropertiesChange
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 28
        Visible = False
        Height = 26
        Width = 76
      end
      object cbbDtlCallCenterCode2: TcxComboBox
        Tag = 2
        Left = 832
        Top = 161
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.ImeMode = imSAlpha
        Properties.ReadOnly = False
        Properties.OnChange = cbbDtlCallCenterCode2PropertiesChange
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 29
        Visible = False
        Height = 26
        Width = 76
      end
      object lbl4: TcxLabel
        Left = 421
        Top = 86
        Caption = #50836#52397#49324#54637
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 447
        AnchorY = 94
      end
      object meoMemo: TcxMemo
        Left = 479
        Top = 65
        Lines.Strings = (
          '')
        Properties.ImeMode = imSHanguel
        Properties.MaxLength = 500
        Properties.ScrollBars = ssVertical
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 31
        Height = 55
        Width = 359
      end
      object cxGroupBox3: TcxGroupBox
        Left = 23
        Top = 165
        Caption = #52628#44032#50836#52397#54637#47785
        TabOrder = 32
        Height = 150
        Width = 822
        object Shape29: TShape
          Left = 5
          Top = 16
          Width = 139
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape30: TShape
          Left = 5
          Top = 43
          Width = 139
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape31: TShape
          Left = 5
          Top = 70
          Width = 139
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape32: TShape
          Left = 388
          Top = 42
          Width = 77
          Height = 98
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel20: TcxLabel
          Left = 56
          Top = 20
          Caption = #48320#44221#54624#51648#49324#47749
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 94
          AnchorY = 28
        end
        object edtChangeBRName: TcxTextEdit
          Left = 132
          Top = 15
          AutoSize = False
          Properties.ImeMode = imSHanguel
          Properties.MaxLength = 13
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          OnKeyDown = edtChangeBRNameKeyDown
          Height = 26
          Width = 164
        end
        object BtnAccCng: TcxButton
          Left = 253
          Top = 97
          Width = 127
          Height = 43
          Cursor = crHandPoint
          Caption = #51221#49328#53685#51109#48320#44221
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 7
          TabStop = False
          OnClick = BtnAccCngClick
        end
        object cbbDtlCallCenter: TcxComboBox
          Tag = 1
          Left = 211
          Top = 42
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.ImeMode = imSAlpha
          Properties.OnChange = cbbDtlCallCenterPropertiesChange
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 3
          Height = 26
          Width = 170
        end
        object cxLabel21: TcxLabel
          Left = 82
          Top = 48
          Caption = #53084#49468#53552' 1'
          Transparent = True
        end
        object cbbDtlCallCenter2: TcxComboBox
          Tag = 2
          Left = 211
          Top = 69
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.ImeMode = imSAlpha
          Properties.OnChange = cbbDtlCallCenter2PropertiesChange
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 5
          Height = 26
          Width = 170
        end
        object cxLabel22: TcxLabel
          Left = 82
          Top = 75
          Caption = #53084#49468#53552' 2'
          Transparent = True
        end
        object cxLabel23: TcxLabel
          Left = 401
          Top = 69
          Caption = #48320#44221#51648#49324
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 427
          AnchorY = 77
        end
        object cxMemo1: TcxMemo
          Left = 456
          Top = 41
          Lines.Strings = (
            #45824#54364#48264#54840' : '
            ''
            #45824#54364#48264#54840' '#44592#48376#50836#44552' : '
            ''
            'DNIS1 : '
            ''
            #53084#45824#54665' : ')
          Properties.ImeMode = imSHanguel
          Properties.MaxLength = 500
          Properties.ScrollBars = ssVertical
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Sharp'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Sharp'
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Sharp'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Sharp'
          TabOrder = 6
          Height = 100
          Width = 359
        end
        object cxLabel24: TcxLabel
          Left = 401
          Top = 92
          Caption = #50836#52397#49324#54637
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 427
          AnchorY = 100
        end
        object edtDtlCallCenterCode: TcxTextEdit
          Tag = 1
          Left = 132
          Top = 42
          TabStop = False
          AutoSize = False
          ParentFont = False
          Properties.ImeMode = imSHanguel
          Properties.OnChange = edtDtlCallCenterCodePropertiesChange
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          OnEnter = edtDtlCallCenterCodeEnter
          OnExit = edtDtlCallCenterCodeExit
          OnKeyDown = edtDtlCallCenterCodeKeyDown
          OnKeyUp = edtDtlCallCenterCodeKeyUp
          OnMouseDown = edtDtlCallCenterCodeMouseDown
          Height = 26
          Width = 80
        end
        object lbDtlCallCenterCode: TcxLabel
          Left = 134
          Top = 48
          Cursor = crIBeam
          Caption = #53084#49468#53552#44160#49353
          ParentColor = False
          ParentFont = False
          Style.Color = 16375788
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = 10329501
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          OnClick = lbDtlCallCenterCodeClick
          AnchorX = 166
          AnchorY = 56
        end
        object edtDtlCallCenterCode2: TcxTextEdit
          Tag = 2
          Left = 132
          Top = 69
          TabStop = False
          AutoSize = False
          ParentFont = False
          Properties.ImeMode = imSHanguel
          Properties.OnChange = edtDtlCallCenterCode2PropertiesChange
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          OnEnter = edtDtlCallCenterCode2Enter
          OnExit = edtDtlCallCenterCode2Exit
          OnKeyDown = edtDtlCallCenterCodeKeyDown
          OnKeyUp = edtDtlCallCenterCodeKeyUp
          OnMouseDown = edtDtlCallCenterCodeMouseDown
          Height = 26
          Width = 80
        end
        object lbDtlCallCenterCode2: TcxLabel
          Left = 134
          Top = 75
          Cursor = crIBeam
          Caption = #53084#49468#53552#44160#49353
          ParentColor = False
          ParentFont = False
          Style.Color = 16375788
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = 10329501
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          OnClick = lbDtlCallCenterCode2Click
          AnchorX = 166
          AnchorY = 83
        end
        object cxLabel26: TcxLabel
          Left = 305
          Top = 20
          Caption = #51648#49324#47749' '#49688#51221#49884' '#44845' '#54532#47196#44536#47016#51012' '#45796#49884' '#49892#54665#54616#49492#50556' '#48320#44221#46108' '#51648#49324#47749#51004#47196' '#48152#50689#46121#45768#45796'.'
          ParentColor = False
          Style.TextColor = clRed
          Style.TextStyle = [fsBold]
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 547
          AnchorY = 28
        end
      end
      object btnAddInfo: TAdvGlowButton
        Left = 410
        Top = 126
        Width = 88
        Height = 31
        Caption = #52628#44032#50836#52397' '#50676#44592
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ImageIndex = 4
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 33
        OnClick = btnAddInfoClick
        Appearance.BorderColorHot = 16761412
        Appearance.BorderColorDown = 16761412
        Appearance.BorderColorChecked = 43754
        Appearance.ColorChecked = 7592191
        Appearance.ColorCheckedTo = 7592191
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 15243853
        Appearance.ColorDownTo = 15243853
        Appearance.ColorHot = 7716789
        Appearance.ColorHotTo = 7716789
        Appearance.ColorMirrorHot = 7716789
        Appearance.ColorMirrorHotTo = 7716789
        Appearance.ColorMirrorDown = 15243853
        Appearance.ColorMirrorDownTo = 15243853
        Appearance.ColorMirrorChecked = 7592191
        Appearance.ColorMirrorCheckedTo = 7592191
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Layout = blGlyphTop
        Style = bsCheck
      end
    end
    object PnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 854
      Height = 25
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  '#45824#54364#48264#54840' '#53685#49888#49436#48708#49828' '#51060#50857#51613#47749#50896' '#46321#47197' '#44288#47532
      Color = 12566463
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      OnMouseDown = PnlTitleMouseDown
      DesignSize = (
        854
        25)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 854
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
        ExplicitWidth = 578
      end
      object btnClose: TcxButton
        Left = 822
        Top = 2
        Width = 30
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
    object cxGrid: TcxGrid
      Left = 0
      Top = 381
      Width = 854
      Height = 318
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      LookAndFeel.NativeStyle = False
      object cxView1: TcxGridDBTableView
        OnMouseMove = cxGroupBox1MouseMove
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Enabled = False
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Enabled = False
        Navigator.Buttons.Filter.Visible = False
        DataController.DataModeController.SmartRefresh = True
        DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.MRUItemsList = False
        Filtering.ColumnMRUItemsList = False
        Filtering.ColumnMRUItemsListCount = 0
        OptionsBehavior.CellHints = True
        OptionsBehavior.CopyCaptionsToClipboard = False
        OptionsBehavior.CopyPreviewToClipboard = False
        OptionsBehavior.ExpandMasterRowOnDblClick = False
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnMoving = False
        OptionsSelection.InvertSelect = False
        OptionsView.FocusRect = False
        OptionsView.NoDataToDisplayInfoText = '  '
        OptionsView.ShowEditButtons = gsebAlways
        OptionsView.DataRowHeight = 22
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.GridLineColor = clSilver
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 23
        Styles.Selection = Frm_Main.cxStyle11
        object cxView1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'No.'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 39
        end
        object cxView1Column2: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 54
        end
        object cxView1Column3: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 134
        end
        object cxView1Column4: TcxGridDBColumn
          DataBinding.FieldName = #45824#54364#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 98
        end
        object cxView1Column5: TcxGridDBColumn
          DataBinding.FieldName = #50836#52397#45824#54364#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 78
        end
        object cxView1Column6: TcxGridDBColumn
          DataBinding.FieldName = #49888#48516#51613
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Buttons = <
            item
              Caption = #48372#44592
              Default = True
              Kind = bkText
            end>
          Properties.ViewStyle = vsButtonsAutoWidth
          Properties.OnButtonClick = cxView1Column6PropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Options.ShowEditButtons = isebAlways
          Width = 60
        end
        object cxView1Column7: TcxGridDBColumn
          DataBinding.FieldName = #51613#47749#50896
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Buttons = <
            item
              Caption = #48372#44592
              Default = True
              Kind = bkText
            end>
          Properties.ViewStyle = vsButtonsAutoWidth
          Properties.OnButtonClick = cxView1Column7PropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Options.ShowEditButtons = isebAlways
          Width = 60
        end
        object cxView1Column8: TcxGridDBColumn
          DataBinding.FieldName = #52376#47532#49345#53468
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 54
        end
        object cxView1Column9: TcxGridDBColumn
          DataBinding.FieldName = #49888#52397#51068#49884
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 120
        end
        object cxView1Column10: TcxGridDBColumn
          DataBinding.FieldName = #52376#47532#51068#49884
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 120
        end
        object cxView1Column11: TcxGridDBColumn
          DataBinding.FieldName = #50836#52397#49324#54637
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 200
        end
        object cxView1Column12: TcxGridDBColumn
          DataBinding.FieldName = #49888#48516#51613'URL'
          Visible = False
        end
        object cxView1Column13: TcxGridDBColumn
          DataBinding.FieldName = #51613#47749#50896'URL'
          Visible = False
        end
        object cxView1Column14: TcxGridDBColumn
          DataBinding.FieldName = 'SEQ'
          Visible = False
        end
        object cxView1Column15: TcxGridDBColumn
          DataBinding.FieldName = 'File1'
          Visible = False
        end
        object cxView1Column16: TcxGridDBColumn
          DataBinding.FieldName = 'File2'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderGlyphAlignmentHorz = taCenter
        end
        object cxView1Column17: TcxGridDBColumn
          DataBinding.FieldName = #53084#49468#53552'1'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxView1Column18: TcxGridDBColumn
          DataBinding.FieldName = #53084#49468#53552'2'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
        end
      end
      object cxLevel: TcxGridLevel
        GridView = cxView1
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 0
      Top = 348
      Align = alTop
      TabOrder = 3
      OnMouseMove = cxGroupBox1MouseMove
      Height = 30
      Width = 854
      object Shape15: TShape
        Left = 532
        Top = 3
        Width = 85
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape14: TShape
        Left = 271
        Top = 3
        Width = 86
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape16: TShape
        Left = 5
        Top = 3
        Width = 86
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object cxLabel7: TcxLabel
        Left = 287
        Top = 8
        Caption = #51648#49324#49440#53469
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 313
        AnchorY = 16
      end
      object cboBrOnlyS: TcxComboBox
        Left = 349
        Top = 2
        TabStop = False
        AutoSize = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          #51648#49324#51221#48372)
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 1
        Text = #51648#49324#51221#48372
        TextHint = #51648#49324#51221#48372
        Height = 26
        Width = 180
      end
      object cxButton3: TcxButton
        Left = 749
        Top = 3
        Width = 77
        Height = 24
        Cursor = crHandPoint
        Caption = #51312#54924
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 2
        OnClick = cxButton3Click
      end
      object cxLabel3: TcxLabel
        Left = 543
        Top = 8
        Caption = #52376#47532#49345#53468
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 569
        AnchorY = 16
      end
      object cbbprocessS: TcxComboBox
        Left = 601
        Top = 2
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #51204#52404
          #50836#52397
          #52376#47532#51473
          #50756#47308
          #48372#47448)
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 4
        Text = #51204#52404
        Height = 26
        Width = 103
      end
      object cxLabel8: TcxLabel
        Left = 19
        Top = 7
        Caption = #48376#49324#49440#53469
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 45
        AnchorY = 15
      end
      object cboHdOnlyS: TcxComboBox
        Left = 82
        Top = 2
        TabStop = False
        AutoSize = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          #48376#49324#51221#48372)
        Properties.OnChange = cboHdOnlySPropertiesChange
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 6
        Text = #48376#49324#51221#48372
        TextHint = #51648#49324#51221#48372
        Height = 26
        Width = 186
      end
    end
    object lst_BRList: TcxListBox
      Left = -227
      Top = 41
      Width = 249
      Height = 122
      ImeName = 'Microsoft Office IME 2007'
      ItemHeight = 12
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleFocused.Color = 11796479
      TabOrder = 4
      Visible = False
      OnDblClick = lst_BRListDblClick
      OnExit = lst_BRListExit
      OnKeyDown = lst_BRListKeyDown
    end
    object lst_BRCodeList: TcxListBox
      Left = 832
      Top = 217
      Width = 249
      Height = 122
      ImeName = 'Microsoft Office IME 2007'
      ItemHeight = 12
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleFocused.Color = 11796479
      TabOrder = 5
      Visible = False
      OnDblClick = lst_BRCodeListDblClick
      OnExit = lst_BRCodeListExit
      OnKeyDown = lst_BRCodeListKeyDown
    end
  end
  object Pnl_Acc: TPanel
    Left = 172
    Top = 375
    Width = 473
    Height = 320
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = 16444898
    TabOrder = 1
    Visible = False
    object cxGroupBox4: TcxGroupBox
      Left = 0
      Top = 0
      Align = alClient
      Caption = '   '#52636#44552' '#44228#51340' '#48320#44221' '#50836#52397
      ParentBackground = False
      ParentColor = False
      Style.BorderStyle = ebsFlat
      Style.Color = clBtnFace
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnMouseDown = cxGroupBox4MouseDown
      DesignSize = (
        469
        312)
      Height = 316
      Width = 469
      object Image1: TImage
        Left = 220
        Top = 60
        Width = 37
        Height = 36
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000024
          000000240806000000E1009898000000017352474200AECE1CE9000000046741
          4D410000B18F0BFC610500000587494441545847ED977B4C95651CC75D73CDB9
          6ACDA52BE79A815CA670B8645ACEE946EA1C999695397553A76961A95CF292DC
          174E304BF3925CC4BB665B39FFD039F14622E48103828A1744312D50B94888E7
          C0E17DBF7D7F87F7C1573825B30DD7C677FBECEC3DE7F73EDFEFEF791E9EF7A5
          47B7BAD5ADFFA33C16660D2481C6E5D31343F8913CCF65A710146BBD6889B626
          193F3D1D314CA85752217C36968161B45129C57581B1F9EB8C9FBB5E6D813697
          BB0265543CC0A4F44B0D43136D07FC57587B1B655DA7B640A9D75C81765735E1
          A71A27A6EF2D7732D46586EA6394768D18688A5772317C336EB802EDBCDD8CFD
          F7813D352D98F973857CE764285FA3BC731AB22CAF376FEAFF2478859F08F35C
          740C02CD9179C7897D0DC0DEBF806DB51A569535625852517D404CFE1AC3EE9F
          C5EEFA78469DCCE2275E4FB035FE57C66D2AADDF5AA76307C36C9740248DD7C9
          150E84ACBF501F9C60DB6758BB9767E4899B3E1BAEC027C18A04EB5DECA96DC1
          2EB293EC20DBC9364EFD569249B6900CA1BA05E9248DA492CDD51A526B34A4D3
          7C4B3D9041D2491A49BD076CACD5B1BAD28977B695350627DA8A38B32F1A111E
          95C7A2A34EBFAC6657A0C4C26AECE554EF21BBC92EB2931D9ABBDD4A3269E2CE
          7433F9C1609384A8033618AC276B196A55650B26FF785D0B8C2BA867A87E468C
          8732078AB555FFAB691A4DCCC6CA54198BE9F7422DB08EAC25DFD500DFDC0556
          DF269540CA4DE0EB6B1A165B1BC050764B4C7EB211A5556D81926C88CABBDDA1
          5B3135772BA62E63C35419AFA9A6E11D5245FE68354EAEA07939105F06C45D01
          6249F465E0AB8B3A224A9C989DD380E1C92575FEE693BD2DD0CA422CCCA97A64
          8AA55BB3E9B7EC76B5EAF64F728BA6378095D780049AC61BA631345D41965F02
          965E0496940291A53AC22FE858784EC3A7454ECCFCCD8ED169579D81F1B6CB46
          945699032D3855D5618AC534E57760D57520F1EAC36EC5D4D52D4D97892989A2
          71044D179FD7F1C5391D0B4A747C46E615EB987B56C7AC420DD3CE3463F2C9FB
          18BEB6B42120DECD49FE70C90A31F770153BD569A623FA928E1544A67739BB5B
          4ABEA45924CDC2D9E5A2120D9F93B0620DF3CF6AF8A448C31C32BB50C74C32C3
          A6635A81868FF3357C68D5F07E5E0B26E43830F6F03D04259DADE7DE71FFACE3
          1964F34E2969F266A00F7EB985309B0361050ECC27F3F21D984BE6581D9875C6
          C1697660469E03D3C9D45C07A6908F4EDB3139C78EF7C8241A4ECC6DC6BB340F
          CDD3303E57C3D8D31A427E6DC6E8E3768CD87F179C118D0C35ECDDCB33FCD83A
          9E47DCF5B6464540070ADC6269C56E892DD084A094F3F691279BF156760B8667
          3B31EC7813DE38D288A08D579DACBBE9F64FDD9D58D88BB87D343C0EEFC8EC10
          AFE85CF8F2F5837F315AC01107FC8E36C38F9F96430DB0AC296DF08FB365B1B6
          6B9EFC7CEC8C1CC4734C5E3F2490EFA107F0396CC7E003F7E09F545CE71F5B90
          6E94768DDA071A7C9087DEFE6AF8C7E4373D72C63CA19E317D768AD7161C1CA5
          02C9EB47E88E7267507C41E59025D9B25FA4A6535203F634F12CE94564AD85E7
          4CBC40E481D88101D3D3C7782C3E86417167C057D7C6A078EBE957C646481819
          43C613646CB397F26F93D95C99BD445E2603C840E241BC89BC5CF9118B81FC67
          A1707DD7F3F97EC17DDF8E98DA774CD4145ECB3D72AF8CD19FC89832B6784873
          E229FE2AA44B2A8C39880C208389793079938C2263C838124A26908926E45A90
          DFC613A9957B4610396F24B08CA9C2A9606AF6DA02493AF95212CB3BAF047A95
          0C228389743F8C8C2421440289A10AD01E0924352A9034234D49732A909A2959
          11154872B8A4D6B27D30597BF3B2494059320929839B97CE8CFA4DEADA2F998C
          A982884FFB3DD526B5B1D4E696222956CBD97E334BE0C72175CA5830CF840AD1
          6143BB93395C7B54279DC5DD188A6E3D817AF4F81B7B6FEB13E6BDCE09000000
          0049454E44AE426082}
      end
      object Shape17: TShape
        Left = 6
        Top = 14
        Width = 457
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape18: TShape
        Left = 20
        Top = 43
        Width = 99
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape19: TShape
        Left = 20
        Top = 66
        Width = 99
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape20: TShape
        Left = 20
        Top = 89
        Width = 99
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape21: TShape
        Left = 271
        Top = 43
        Width = 99
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape22: TShape
        Left = 271
        Top = 66
        Width = 99
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape23: TShape
        Left = 271
        Top = 89
        Width = 99
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape24: TShape
        Left = 6
        Top = 117
        Width = 99
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape25: TShape
        Left = 6
        Top = 141
        Width = 99
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape26: TShape
        Left = 4
        Top = 165
        Width = 99
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape27: TShape
        Left = 4
        Top = 189
        Width = 99
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape28: TShape
        Left = 4
        Top = 213
        Width = 99
        Height = 22
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object LMDProgressNow: TAdvProgressBar
        Left = 4
        Top = 283
        Width = 349
        Height = 23
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
        Version = '1.3.1.0'
      end
      object Shape33: TShape
        Left = 4
        Top = 237
        Width = 101
        Height = 43
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object btn_GNo: TcxButton
        Left = 358
        Top = 274
        Width = 101
        Height = 34
        Cursor = crHandPoint
        Caption = #45803' '#44592
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 0
        OnClick = btn_GNoClick
      end
      object btn_GOk: TcxButton
        Tag = 1
        Left = 358
        Top = 237
        Width = 101
        Height = 34
        Cursor = crHandPoint
        Caption = #51200' '#51109
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Sharp'
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 1
        OnClick = btn_GOkClick
      end
      object Btn_Up1: TcxButton
        Left = 281
        Top = 119
        Width = 36
        Height = 20
        Caption = #52392#48512
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 2
        OnClick = Btn_Up1Click
      end
      object Btn_Up2: TcxButton
        Left = 281
        Top = 143
        Width = 36
        Height = 20
        Caption = #52392#48512
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 3
        OnClick = Btn_Up2Click
      end
      object Btn_Up3: TcxButton
        Left = 281
        Top = 166
        Width = 36
        Height = 20
        Caption = #52392#48512
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 4
        OnClick = Btn_Up3Click
      end
      object Btn_Up4: TcxButton
        Left = 281
        Top = 190
        Width = 36
        Height = 20
        Caption = #52392#48512
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 5
        OnClick = Btn_Up4Click
      end
      object Btn_Up5: TcxButton
        Left = 281
        Top = 213
        Width = 36
        Height = 20
        Caption = #52392#48512
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 6
        OnClick = Btn_Up5Click
      end
      object btnBtn_Del1: TcxButton
        Left = 318
        Top = 119
        Width = 35
        Height = 20
        Caption = #49325#51228
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 7
        OnClick = btnBtn_Del1Click
      end
      object btnBtn_Del2: TcxButton
        Left = 318
        Top = 143
        Width = 35
        Height = 20
        Caption = #49325#51228
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 8
        OnClick = btnBtn_Del2Click
      end
      object btnBtn_Del3: TcxButton
        Left = 318
        Top = 166
        Width = 35
        Height = 20
        Caption = #49325#51228
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 9
        OnClick = btnBtn_Del3Click
      end
      object btnBtn_Del4: TcxButton
        Left = 318
        Top = 190
        Width = 35
        Height = 20
        Caption = #49325#51228
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 10
        OnClick = btnBtn_Del4Click
      end
      object btnBtn_Del5: TcxButton
        Left = 318
        Top = 213
        Width = 35
        Height = 20
        Caption = #49325#51228
        LookAndFeel.SkinName = 'Sharp'
        TabOrder = 11
        OnClick = btnBtn_Del5Click
      end
      object CB_uBank: TcxComboBox
        Left = 340
        Top = 42
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 12
        OnKeyDown = CB_uBankKeyDown
        Height = 24
        Width = 110
      end
      object Edt_bBank: TcxTextEdit
        Left = 99
        Top = 42
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 13
        Height = 24
        Width = 110
      end
      object Edt_bGyeJa: TcxTextEdit
        Left = 99
        Top = 65
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 14
        Height = 24
        Width = 110
      end
      object Edt_bYekumju: TcxTextEdit
        Left = 99
        Top = 88
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 15
        Height = 24
        Width = 110
      end
      object Edt_Path1: TcxTextEdit
        Left = 85
        Top = 116
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 16
        Height = 24
        Width = 194
      end
      object Edt_Path2: TcxTextEdit
        Left = 85
        Top = 140
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 17
        Height = 24
        Width = 194
      end
      object Edt_Path3: TcxTextEdit
        Left = 85
        Top = 164
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 18
        Height = 24
        Width = 194
      end
      object Edt_Path4: TcxTextEdit
        Left = 85
        Top = 188
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 19
        Height = 24
        Width = 194
      end
      object Edt_Path5: TcxTextEdit
        Left = 85
        Top = 212
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 20
        Height = 24
        Width = 194
      end
      object Edt_uGyeJa: TcxTextEdit
        Left = 340
        Top = 65
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 21
        OnKeyDown = CB_uBankKeyDown
        Height = 24
        Width = 110
      end
      object Edt_uYekumju: TcxTextEdit
        Left = 340
        Top = 88
        AutoSize = False
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 22
        OnKeyDown = Edt_uYekumjuKeyDown
        Height = 24
        Width = 110
      end
      object Lbl_TName: TcxLabel
        Left = 201
        Top = 19
        Anchors = [akTop, akRight]
        Caption = #51648'  '#49324'  '#47749
        ParentColor = False
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 13719147
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 233
        AnchorY = 27
      end
      object cxLabel9: TcxLabel
        Left = 29
        Top = 47
        Anchors = [akTop, akRight]
        Caption = #51008'  '#54665'  '#47749
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 61
        AnchorY = 55
      end
      object cxLabel10: TcxLabel
        Left = 32
        Top = 69
        Anchors = [akTop, akRight]
        Caption = #44228#51340' '#48264#54840
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 61
        AnchorY = 77
      end
      object cxLabel11: TcxLabel
        Left = 29
        Top = 92
        Anchors = [akTop, akRight]
        Caption = #50696'  '#44552'  '#51452
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 61
        AnchorY = 100
      end
      object cxLabel12: TcxLabel
        Left = 275
        Top = 47
        Caption = #51008'  '#54665'  '#47749
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 307
        AnchorY = 55
      end
      object cxLabel13: TcxLabel
        Left = 278
        Top = 69
        Caption = #44228#51340' '#48264#54840
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 307
        AnchorY = 77
      end
      object cxLabel14: TcxLabel
        Left = 275
        Top = 92
        Caption = #50696'  '#44552'  '#51452
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 307
        AnchorY = 100
      end
      object Panel1: TPanel
        Left = 355
        Top = 121
        Width = 107
        Height = 110
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 30
        object ImageS: TImage
          Left = 3
          Top = 1
          Width = 101
          Height = 109
          Stretch = True
        end
      end
      object cxLabel15: TcxLabel
        Left = 16
        Top = 121
        Anchors = [akTop, akRight]
        Caption = #52392#48512#54028#51068'1'
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 45
        AnchorY = 129
      end
      object cxLabel16: TcxLabel
        Left = 17
        Top = 144
        Anchors = [akTop, akRight]
        Caption = #52392#48512#54028#51068'2'
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 46
        AnchorY = 152
      end
      object cxLabel17: TcxLabel
        Left = 17
        Top = 168
        Anchors = [akTop, akRight]
        Caption = #52392#48512#54028#51068'3'
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 46
        AnchorY = 176
      end
      object cxLabel18: TcxLabel
        Left = 17
        Top = 192
        Anchors = [akTop, akRight]
        Caption = #52392#48512#54028#51068'4'
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 46
        AnchorY = 200
      end
      object cxLabel19: TcxLabel
        Left = 17
        Top = 216
        Anchors = [akTop, akRight]
        Caption = #52392#48512#54028#51068'5'
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 46
        AnchorY = 224
      end
      object cxMemo2: TcxMemo
        Left = 81
        Top = 236
        Lines.Strings = (
          #49444#51221#44552#50529' :'
          #51221#49328#51452#44592' :')
        Properties.ImeMode = imSHanguel
        Properties.MaxLength = 500
        Properties.ScrollBars = ssVertical
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Sharp'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Sharp'
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Sharp'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Sharp'
        TabOrder = 36
        Height = 45
        Width = 272
      end
      object cxLabel25: TcxLabel
        Left = 13
        Top = 249
        Caption = #51221#49328#50836#52397
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 39
        AnchorY = 257
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'All (*.jpg,*.jpeg,*.png,*.pdf)|*.jpg;*.jpeg;*.Png|JPEG Image Fil' +
      'e (*.jpg,*.jpeg)|*.jpg;*.jpeg|PNG Image File(*.png)|*.png'
    Left = 120
    Top = 468
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'pdf'
    Filter = 'pdf|*.pdf'
    Left = 64
    Top = 512
  end
end

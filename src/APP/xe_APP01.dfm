object Frm_APP01: TFrm_APP01
  Left = 2802
  Top = 250
  BorderStyle = bsNone
  Caption = 'Frm_APP01'
  ClientHeight = 578
  ClientWidth = 1027
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  ShowHint = True
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
    Width = 1027
    Height = 578
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    object cxKeyNum: TcxTextEdit
      Left = 457
      Top = 4
      Style.Color = 15456255
      TabOrder = 0
      Text = #45824#54364#48264#54840
      Visible = False
      Width = 54
    end
    object cxBrNo: TcxTextEdit
      Left = 404
      Top = 4
      Style.Color = 15456255
      TabOrder = 1
      Text = #51648#49324#53076#46300
      Visible = False
      Width = 54
    end
    object pnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 1023
      Height = 25
      Cursor = crSizeAll
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  '#50545' '#44172#49884#47932' '#46321#47197' '#48143' '#54392#49884' '#48156#49569
      Color = 12566463
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      OnMouseDown = pnlTitleMouseDown
      DesignSize = (
        1023
        25)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 1023
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = False
      end
      object btnClose: TcxButton
        Left = 996
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
    end
    object Pnl_Step1: TPanel
      Left = 0
      Top = 25
      Width = 340
      Height = 549
      Align = alLeft
      BevelOuter = bvNone
      BorderWidth = 1
      ParentBackground = False
      TabOrder = 3
      object cxGroupBox1: TcxGroupBox
        Left = 1
        Top = 1
        Align = alClient
        Alignment = alTopCenter
        Caption = 'STEP 1. '#44172#49884#47932' '#51089#49457
        TabOrder = 0
        DesignSize = (
          338
          543)
        Height = 547
        Width = 338
        object Shape3: TShape
          Left = 6
          Top = 17
          Width = 115
          Height = 45
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape1: TShape
          Left = 6
          Top = 64
          Width = 115
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape2: TShape
          Left = 6
          Top = 91
          Width = 115
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape9: TShape
          Left = 8
          Top = 467
          Width = 115
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Btn_Init: TcxButton
          Left = 44
          Top = 494
          Width = 95
          Height = 40
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Cancel = True
          Caption = #51077#47141#46976#52488#44592#54868
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 0
          TabStop = False
          OnClick = Btn_InitClick
        end
        object Btn_SaveNext: TcxButton
          Left = 240
          Top = 494
          Width = 95
          Height = 40
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Cancel = True
          Caption = #51200#51109#54980#54392#49884#48156#49569
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 1
          TabStop = False
          OnClick = Btn_SaveNextClick
        end
        object Btn_SaveOff: TcxButton
          Left = 142
          Top = 494
          Width = 95
          Height = 40
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Cancel = True
          Caption = #51200#51109#54980#45803#44592
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 2
          TabStop = False
          OnClick = Btn_SaveOffClick
        end
        object de_EndDate: TcxDateEdit
          Left = 82
          Top = 466
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          ParentShowHint = False
          Properties.DateButtons = [btnNow, btnToday]
          Properties.InputKind = ikStandard
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
          TabOrder = 3
          Height = 26
          Width = 90
        end
        object Edt_Title: TcxTextEdit
          Left = 82
          Top = 63
          AutoSize = False
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          OnKeyDown = Edt_TitleKeyDown
          Height = 26
          Width = 253
        end
        object cxLabel218: TcxLabel
          Left = 12
          Top = 33
          Caption = #44172#49884#47932#51333#47448
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 44
          AnchorY = 41
        end
        object cxLabel1: TcxLabel
          Left = 12
          Top = 69
          Caption = #44172#49884#47932#51228#47785
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 44
          AnchorY = 77
        end
        object cxLabel2: TcxLabel
          Left = 12
          Top = 96
          Caption = #44172#49884#47932#44396#48516
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 44
          AnchorY = 104
        end
        object Panel1: TPanel
          Left = 82
          Top = 17
          Width = 252
          Height = 45
          BevelOuter = bvNone
          TabOrder = 10
          object Shape4: TShape
            Left = 0
            Top = 0
            Width = 252
            Height = 45
            Align = alClient
            Pen.Color = 12566402
            ExplicitLeft = 14
            ExplicitTop = 25
            ExplicitWidth = 115
            ExplicitHeight = 24
          end
          object Image1: TImage
            Left = 229
            Top = 24
            Width = 16
            Height = 16
            Cursor = crHandPoint
            AutoSize = True
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
            OnClick = Image1Click
          end
          object chk_Gongji_Unpop: TcxCheckBox
            Left = 14
            Top = 24
            Caption = '  '#48120' '#54045#50629#44277#51648
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 0
            Transparent = True
            OnClick = cxCheckBox2Click
          end
          object RB_GongA: TcxRadioButton
            Left = 14
            Top = 5
            Width = 70
            Height = 16
            Caption = #51068#48152#44277#51648
            Checked = True
            TabOrder = 1
            TabStop = True
            LookAndFeel.SkinName = 'Sharp'
            Transparent = True
          end
          object RB_GongB: TcxRadioButton
            Left = 91
            Top = 5
            Width = 70
            Height = 16
            Caption = #44256#51221#44277#51648
            TabOrder = 2
            LookAndFeel.SkinName = 'Sharp'
            Transparent = True
          end
          object RB_GongD: TcxRadioButton
            Left = 163
            Top = 5
            Width = 70
            Height = 16
            Caption = #51060#48292#53944
            TabOrder = 3
            LookAndFeel.SkinName = 'Sharp'
            Transparent = True
          end
        end
        object Panel2: TPanel
          Left = 82
          Top = 91
          Width = 252
          Height = 24
          BevelOuter = bvNone
          TabOrder = 11
          object Shape5: TShape
            Left = 0
            Top = 0
            Width = 252
            Height = 24
            Align = alClient
            Pen.Color = 12566402
            ExplicitLeft = 14
            ExplicitTop = 25
            ExplicitWidth = 115
          end
          object Rb_Img: TcxRadioButton
            Left = 128
            Top = 4
            Width = 70
            Height = 16
            Caption = #51060#48120#51648
            TabOrder = 0
            OnClick = Rb_TxtClick
            LookAndFeel.SkinName = 'Sharp'
            Transparent = True
          end
          object Rb_Txt: TcxRadioButton
            Left = 14
            Top = 4
            Width = 70
            Height = 16
            Caption = #53581#49828#53944
            Checked = True
            TabOrder = 1
            TabStop = True
            OnClick = Rb_TxtClick
            LookAndFeel.SkinName = 'Sharp'
            Transparent = True
          end
        end
        object Pnl_Img: TPanel
          Left = 3
          Top = 118
          Width = 335
          Height = 348
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 5
          object Shape7: TShape
            Left = 5
            Top = 46
            Width = 115
            Height = 273
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape8: TShape
            Left = 4
            Top = 322
            Width = 115
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object EdtFilePath: TcxTextEdit
            Left = 5
            Top = 22
            Properties.ImeMode = imSHanguel
            Properties.ReadOnly = True
            TabOrder = 0
            OnKeyDown = Edt_TitleKeyDown
            Width = 251
          end
          object Edt_URL: TcxTextEdit
            Left = 85
            Top = 321
            AutoSize = False
            Properties.ImeMode = imSAlpha
            TabOrder = 1
            OnKeyDown = Edt_TitleKeyDown
            Height = 26
            Width = 250
          end
          object Btn_Up1: TcxButton
            Left = 257
            Top = 22
            Width = 36
            Height = 20
            Caption = #52392#48512
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 2
            OnClick = Btn_Up1Click
          end
          object btnBtn_Del1: TcxButton
            Left = 294
            Top = 22
            Width = 36
            Height = 20
            Caption = #49325#51228
            LookAndFeel.SkinName = 'Sharp'
            TabOrder = 3
            OnClick = btnBtn_Del1Click
          end
          object cxLabel4: TcxLabel
            Left = 25
            Top = 179
            Caption = #51060#48120#51648
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 45
            AnchorY = 187
          end
          object cxLabel5: TcxLabel
            Left = 27
            Top = 327
            Caption = 'U R L'
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 45
            AnchorY = 335
          end
          object Panel3: TPanel
            Left = 79
            Top = 46
            Width = 252
            Height = 273
            BevelKind = bkFlat
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 6
            object ImageS: TWebImage
              Left = 0
              Top = 0
              Width = 248
              Height = 269
              Animate = False
              Async = False
              AutoSize = False
              CheckContentLength = False
              WebPicture.Stretch = False
              WebPicture.Frame = 0
              PictureLayout = plStretched
              Align = alClient
              Color = clNone
              ParentColor = False
              Version = '1.3.0.0'
              ExplicitLeft = 2
              ExplicitTop = 1
              ExplicitWidth = 239
              ExplicitHeight = 264
            end
          end
          object Label2: TcxLabel
            Left = 8
            Top = 3
            Caption = #8251' '#51060#48120#51648' '#54364#51456' '#49324#51060#51592#45716' 320 * 480 , Jpg'#54028#51068#47564' '#51201#50857' '#44032#45733' '
            Transparent = True
          end
        end
        object cxLabel6: TcxLabel
          Left = 12
          Top = 471
          Caption = #44172#49884#51333#47308#51068
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 44
          AnchorY = 479
        end
        object Pnl_Txt: TPanel
          Left = 3
          Top = 497
          Width = 334
          Height = 348
          BevelOuter = bvNone
          Caption = 'Pnl_Txt'
          ParentColor = True
          TabOrder = 6
          object Shape6: TShape
            Left = 1
            Top = 0
            Width = 332
            Height = 28
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object M_Memo: TcxMemo
            Left = 0
            Top = 24
            Align = alBottom
            StyleFocused.Color = 11796479
            TabOrder = 0
            Height = 324
            Width = 334
          end
          object cxLabel3: TcxLabel
            Left = 142
            Top = 5
            Caption = #44172#49884#47932#45236#50857
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 174
            AnchorY = 13
          end
        end
        object PnlHelp: TcxGroupBox
          Left = 273
          Top = 243
          Alignment = alTopCenter
          Caption = '*** '#44172#49884#47932' '#51333#47448' '#50504#45236' ***'
          TabOrder = 13
          Visible = False
          DesignSize = (
            332
            166)
          Height = 170
          Width = 332
          object cxLabel7: TcxLabel
            Left = 3
            Top = 14
            Align = alClient
            Caption = 
              '1. '#51068#48152#44277#51648' '#13#10'   --> '#51068#48152#51201#51064' '#44277#51648' ( '#47196#46377#49884' '#54045#50629' '#48143' '#44277#51648#49324#54637' '#54364#49884')'#13#10#13#10'2. '#44256#51221#44277#51648#13#10'   --> ' +
              #54637#49345' '#49345#50948#50640' '#44277#51648' ( '#47196#46377#49884' '#54045#50629' '#48143' '#44277#51648#49324#54637' '#54364#49884')'#13#10#13#10'3. '#48120#54045#50629#44277#51648#13#10'   --> '#47196#46377#49884' '#54045#50629#51008' '#50504#46104#44256' '#44277#51648 +
              #49324#54637#50640#47564' '#54364#49884#13#10#13#10'4. '#51060#48292#53944#13#10'   -->'#51068#48152#44277#51648#50752' '#46041#51068#54616#45208' '#51060#48292#53944' '#44396#48516
            ParentColor = False
            Style.Color = 15921906
          end
          object cxButton1: TcxButton
            Left = 305
            Top = 14
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
            TabOrder = 1
            TabStop = False
            OnClick = cxButton1Click
          end
        end
      end
    end
    object Pnl_Step2: TPanel
      Left = 340
      Top = 25
      Width = 340
      Height = 549
      Align = alLeft
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 10874800
      Enabled = False
      TabOrder = 4
      object cxGbStep2: TcxGroupBox
        Left = 1
        Top = 1
        Align = alClient
        Alignment = alTopCenter
        Caption = 'STEP 2. '#54392#49884' '#45824#49345#51088' '#49440#51221
        TabOrder = 0
        DesignSize = (
          338
          543)
        Height = 547
        Width = 338
        object Shape11: TShape
          Left = 5
          Top = 17
          Width = 115
          Height = 30
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape14: TShape
          Left = 5
          Top = 50
          Width = 115
          Height = 163
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Btn_Next: TcxButton
          Left = 4
          Top = 494
          Width = 330
          Height = 40
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Cancel = True
          Caption = #45796#51020#45800#44228
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 0
          TabStop = False
          OnClick = Btn_NextClick
        end
        object Btn_Sch: TcxButton
          Left = 4
          Top = 217
          Width = 330
          Height = 31
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Cancel = True
          Caption = #44160'   '#49353
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 1
          TabStop = False
          OnClick = Btn_SchClick
        end
        object cxLbl_T23: TcxLabel
          Left = 4
          Top = 460
          AutoSize = False
          Caption = #9758' '#44160#49353' '#45236#50669#51012' '#51312#51221#54616#47732' '#44160#49353#44208#44284#44032' '#52488#44592#54868#46121#45768#45796'.'
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = clBtnFace
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 30
          Width = 330
          AnchorX = 169
          AnchorY = 475
        end
        object cxLbl_T24: TcxLabel
          Left = 4
          Top = 252
          AutoSize = False
          Caption = #54392#49884' '#45824#49345#51088' : '#52509' 100 '#47749
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Style.Color = clBtnFace
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = 4210816
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 207
          Width = 330
          AnchorX = 169
          AnchorY = 356
        end
        object Pnl_S2_Sch0: TPanel
          Left = 77
          Top = 17
          Width = 257
          Height = 30
          BevelOuter = bvNone
          TabOrder = 4
          object Shape10: TShape
            Left = 0
            Top = 0
            Width = 257
            Height = 30
            Align = alClient
            Pen.Color = 12566402
            ExplicitLeft = 14
            ExplicitTop = 25
            ExplicitWidth = 115
            ExplicitHeight = 24
          end
          object RB_S2_A: TcxRadioButton
            Left = 29
            Top = 7
            Width = 70
            Height = 17
            Caption = #51204#52404#44256#44061
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = RB_S2_AClick
            LookAndFeel.SkinName = 'Sharp'
            Transparent = True
          end
          object RB_S2_B: TcxRadioButton
            Left = 160
            Top = 7
            Width = 70
            Height = 17
            Caption = #44160#49353#44256#44061
            TabOrder = 1
            OnClick = RB_S2_AClick
            LookAndFeel.SkinName = 'Sharp'
            Transparent = True
          end
        end
        object cxLabel8: TcxLabel
          Left = 16
          Top = 25
          Caption = #44396'      '#48516
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 42
          AnchorY = 33
        end
        object Pnl_S2_Sch: TPanel
          Left = 77
          Top = 50
          Width = 257
          Height = 163
          BevelOuter = bvNone
          TabOrder = 6
          object Shape12: TShape
            Left = 0
            Top = 0
            Width = 257
            Height = 163
            Align = alClient
            Pen.Color = 12566402
            ExplicitLeft = 14
            ExplicitTop = 25
            ExplicitWidth = 115
            ExplicitHeight = 24
          end
          object cbArea: TcxComboBox
            Left = 96
            Top = 91
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #49436#50872
              #44221#44592
              #51064#52380
              #44053#50896
              #48512#49328
              #50872#49328
              #45824#44396
              #44221#48513
              #44221#45224
              #45824#51204
              #52649#45224
              #52649#48513
              #44305#51452
              #51204#45224
              #51204#48513
              #51228#51452)
            Properties.OnChange = de_1stDatePropertiesChange
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
            Width = 148
          end
          object CustLevChk1: TcxCheckBox
            Left = 67
            Top = 115
            Caption = ' '#49888#44508
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 1
            Transparent = True
          end
          object CustLevChk2: TcxCheckBox
            Left = 119
            Top = 115
            Caption = ' '#48520#47049
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 2
            Transparent = True
          end
          object CustLevChk3: TcxCheckBox
            Left = 187
            Top = 115
            Caption = ' '#51452#51032
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 3
            Transparent = True
          end
          object CustLevChk4: TcxCheckBox
            Left = 11
            Top = 135
            Caption = ' '#51068#48152
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 4
            Transparent = True
          end
          object CustLevChk5: TcxCheckBox
            Left = 67
            Top = 135
            Caption = ' '#50864#49688
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 5
            Transparent = True
          end
          object CustLevChk6: TcxCheckBox
            Left = 119
            Top = 135
            Caption = ' '#52572#50864#49688
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 6
            Transparent = True
          end
          object CustLevChk7: TcxCheckBox
            Left = 187
            Top = 135
            Caption = ' VIP'
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 7
            Transparent = True
          end
          object cxCheckBox1: TcxCheckBox
            Left = 8
            Top = 45
            Caption = '  '#52572#51333' '#51060#50857' '#51068#51088
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 8
            Transparent = True
            OnClick = cxCheckBox1Click
          end
          object cxCheckBox2: TcxCheckBox
            Left = 8
            Top = 2
            Caption = '  '#50545' '#49444#52824' '#51068#51088
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 9
            Transparent = True
            OnClick = cxCheckBox2Click
          end
          object cxCheckBox3: TcxCheckBox
            Left = 8
            Top = 91
            Caption = '  '#51648#50669#49444#51221
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 10
            Transparent = True
            OnClick = cxCheckBox3Click
          end
          object cxLabel54: TcxLabel
            Left = 8
            Top = 116
            AutoSize = False
            Caption = #44256#44061#46321#44553
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Style.BorderStyle = ebsOffice11
            Style.Color = 16441805
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 19
            Width = 56
            AnchorX = 36
            AnchorY = 126
          end
          object Pnl_Chk1: TPanel
            Left = 16
            Top = 21
            Width = 230
            Height = 26
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 12
            object Label13: TLabel
              Left = 91
              Top = 6
              Width = 12
              Height = 12
              Caption = #8764
              Transparent = True
            end
            object de_1stDate: TcxDateEdit
              Left = 0
              Top = 1
              AutoSize = False
              BeepOnEnter = False
              EditValue = 0d
              ParentShowHint = False
              Properties.DateButtons = [btnNow, btnToday]
              Properties.InputKind = ikStandard
              Properties.ShowTime = False
              Properties.OnChange = de_1stDatePropertiesChange
              ShowHint = True
              Style.BorderStyle = ebsOffice11
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 0
              Height = 20
              Width = 90
            end
            object de_1edDate: TcxDateEdit
              Left = 105
              Top = 1
              EditValue = 0d
              ParentShowHint = False
              Properties.DateButtons = [btnNow, btnToday]
              Properties.InputKind = ikStandard
              Properties.ShowTime = False
              Properties.OnChange = de_1stDatePropertiesChange
              ShowHint = True
              Style.BorderStyle = ebsOffice11
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 1
              Width = 90
            end
            object RbButton1: TcxButton
              Left = 196
              Top = 0
              Width = 25
              Height = 21
              Cursor = crHandPoint
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                424D360400000000000036000000280000001000000010000000010020000000
                000000000000C40E0000C40E0000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000D2905C67D49663BF00000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000D18A5174D2905BFFD596648500000000000000000000
                0000000000000000000000000000000000000000000100000000000000000000
                000000000000CE854982D08B52FFD2905ABDAAAA550300000000000000000000
                0000000000000000000000000000000000000000000D0000000000000000FF00
                0001CB7F408FCE8549FFD08B52E5D18B5D160000000000000000000000000000
                0000000000000000000000000000000000000000001800000000FF800002CB7B
                389CCC7F41FFCE8549FBCF8A523B000000000000000000000000000000000000
                0000000000000000000000000000000000000000002200000000C77430A5CA7A
                38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA881FADDB0
                8CD7E0B798B4E3BEA291E7C6AB5E000000000000002900000000C77430A5CA7A
                38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA881FADDB0
                8CD7E0B798B4E3BEA291E7C6AB5E000000000000002B00000000FF800002CB7B
                389CCC7F41FFCE8549FBCF8A523B000000000000000000000000000000000000
                000000000000000000000000000000000000000000280000000000000000FF00
                0001CB7F408FCE8549FFD08B52E5D18B5D160000000000000000000000000000
                0000000000000000000000000000000000000000002000000000000000000000
                000000000000CE854982D08B52FFD2905ABDAAAA550300000000000000000000
                0000000000000000000000000000000000000000001700000000000000000000
                00000000000000000000D18A5174D2905BFFD596648500000000000000000000
                0000000000000000000000000000000000000000000C00000000000000000000
                0000000000000000000000000000D2905C67D49663BF00000000000000000000
                0000000000000000000000000000000000000000000100000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000}
              OptionsImage.Layout = blGlyphBottom
              PopupMenu = pop_date
              TabOrder = 2
              OnClick = RbButton1Click
            end
          end
          object Pnl_Chk2: TPanel
            Left = 16
            Top = 64
            Width = 230
            Height = 25
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 13
            object Label1: TLabel
              Left = 91
              Top = 6
              Width = 12
              Height = 12
              Caption = #8764
              Transparent = True
            end
            object de_2stDate: TcxDateEdit
              Left = 0
              Top = 2
              AutoSize = False
              BeepOnEnter = False
              EditValue = 0d
              ParentShowHint = False
              Properties.DateButtons = [btnNow, btnToday]
              Properties.InputKind = ikStandard
              Properties.ShowTime = False
              ShowHint = True
              Style.BorderStyle = ebsOffice11
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 0
              Height = 20
              Width = 90
            end
            object de_2edDate: TcxDateEdit
              Left = 105
              Top = 2
              EditValue = 0d
              ParentShowHint = False
              Properties.DateButtons = [btnNow, btnToday]
              Properties.InputKind = ikStandard
              Properties.ShowTime = False
              ShowHint = True
              Style.BorderStyle = ebsOffice11
              Style.LookAndFeel.SkinName = 'Sharp'
              StyleDisabled.LookAndFeel.SkinName = 'Sharp'
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.SkinName = 'Sharp'
              StyleHot.LookAndFeel.SkinName = 'Sharp'
              TabOrder = 1
              Width = 90
            end
            object cxButton7: TcxButton
              Left = 196
              Top = 1
              Width = 25
              Height = 21
              Cursor = crHandPoint
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Sharp'
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                424D360400000000000036000000280000001000000010000000010020000000
                000000000000C40E0000C40E0000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000D2905C67D49663BF00000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000D18A5174D2905BFFD596648500000000000000000000
                0000000000000000000000000000000000000000000100000000000000000000
                000000000000CE854982D08B52FFD2905ABDAAAA550300000000000000000000
                0000000000000000000000000000000000000000000D0000000000000000FF00
                0001CB7F408FCE8549FFD08B52E5D18B5D160000000000000000000000000000
                0000000000000000000000000000000000000000001800000000FF800002CB7B
                389CCC7F41FFCE8549FBCF8A523B000000000000000000000000000000000000
                0000000000000000000000000000000000000000002200000000C77430A5CA7A
                38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA881FADDB0
                8CD7E0B798B4E3BEA291E7C6AB5E000000000000002900000000C77430A5CA7A
                38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA881FADDB0
                8CD7E0B798B4E3BEA291E7C6AB5E000000000000002B00000000FF800002CB7B
                389CCC7F41FFCE8549FBCF8A523B000000000000000000000000000000000000
                000000000000000000000000000000000000000000280000000000000000FF00
                0001CB7F408FCE8549FFD08B52E5D18B5D160000000000000000000000000000
                0000000000000000000000000000000000000000002000000000000000000000
                000000000000CE854982D08B52FFD2905ABDAAAA550300000000000000000000
                0000000000000000000000000000000000000000001700000000000000000000
                00000000000000000000D18A5174D2905BFFD596648500000000000000000000
                0000000000000000000000000000000000000000000C00000000000000000000
                0000000000000000000000000000D2905C67D49663BF00000000000000000000
                0000000000000000000000000000000000000000000100000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000}
              OptionsImage.Layout = blGlyphBottom
              PopupMenu = pop_date1
              TabOrder = 2
              OnClick = cxButton7Click
            end
          end
        end
        object cxLabel9: TcxLabel
          Left = 16
          Top = 122
          Caption = #44160#49353#44396#48516
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 42
          AnchorY = 130
        end
      end
    end
    object Pnl_Step3: TPanel
      Left = 680
      Top = 25
      Width = 343
      Height = 549
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 10874800
      Enabled = False
      TabOrder = 5
      object cxGroupBox3: TcxGroupBox
        Left = 1
        Top = 1
        Align = alClient
        Alignment = alTopCenter
        Caption = 'STEP 3. '#54392#49884' '#48156#49569
        TabOrder = 0
        Height = 547
        Width = 341
        object Shape15: TShape
          Left = 5
          Top = 17
          Width = 115
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape16: TShape
          Left = 5
          Top = 44
          Width = 115
          Height = 30
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape18: TShape
          Left = 5
          Top = 77
          Width = 115
          Height = 30
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Btn_Pre: TcxButton
          Left = 6
          Top = 494
          Width = 163
          Height = 40
          Cursor = crHandPoint
          Cancel = True
          Caption = #51060#51204#45800#44228
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 0
          TabStop = False
          OnClick = Btn_PreClick
        end
        object Btn_Save: TcxButton
          Left = 171
          Top = 494
          Width = 163
          Height = 40
          Cursor = crHandPoint
          Cancel = True
          Caption = #54392#49884#48156#49569
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Sharp'
          TabOrder = 1
          TabStop = False
          OnClick = Btn_SaveClick
        end
        object Edt_PTitle: TcxTextEdit
          Left = 85
          Top = 16
          AutoSize = False
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          OnKeyDown = Edt_TitleKeyDown
          Height = 26
          Width = 252
        end
        object Panel4: TPanel
          Left = 85
          Top = 44
          Width = 252
          Height = 30
          BevelOuter = bvNone
          TabOrder = 3
          object Shape13: TShape
            Left = 0
            Top = 0
            Width = 252
            Height = 30
            Align = alClient
            Pen.Color = 12566402
            ExplicitLeft = 14
            ExplicitTop = 25
            ExplicitWidth = 115
            ExplicitHeight = 24
          end
          object RB_S3_A: TcxRadioButton
            Left = 29
            Top = 7
            Width = 70
            Height = 17
            Caption = #51593#49884#48156#49569
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = RB_S3_AClick
            LookAndFeel.SkinName = 'Sharp'
            Transparent = True
          end
          object RB_S3_B: TcxRadioButton
            Left = 160
            Top = 7
            Width = 70
            Height = 17
            Caption = #50696#50557#48156#49569
            TabOrder = 1
            OnClick = RB_S3_AClick
            LookAndFeel.SkinName = 'Sharp'
            Transparent = True
          end
        end
        object cxLabel10: TcxLabel
          Left = 11
          Top = 22
          Caption = #54392#49884#47700#49884#51648
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 43
          AnchorY = 30
        end
        object cxLabel11: TcxLabel
          Left = 19
          Top = 52
          Caption = #44396'      '#48516
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 45
          AnchorY = 60
        end
        object Pnl_S3_Sch: TPanel
          Left = 85
          Top = 77
          Width = 252
          Height = 30
          BevelOuter = bvNone
          TabOrder = 6
          object Shape17: TShape
            Left = 0
            Top = 0
            Width = 252
            Height = 30
            Align = alClient
            Pen.Color = 12566402
            ExplicitLeft = 14
            ExplicitTop = 25
            ExplicitWidth = 115
            ExplicitHeight = 24
          end
          object de_Reserv: TcxDateEdit
            Left = 5
            Top = 3
            AutoSize = False
            BeepOnEnter = False
            EditValue = 0d
            ParentShowHint = False
            Properties.DateButtons = [btnNow, btnToday]
            Properties.InputKind = ikStandard
            Properties.ShowTime = False
            ShowHint = True
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 0
            Height = 24
            Width = 90
          end
          object Te_Reserv: TcxTimeEdit
            Left = 95
            Top = 3
            AutoSize = False
            Properties.TimeFormat = tfHourMin
            Style.LookAndFeel.SkinName = 'Sharp'
            StyleDisabled.LookAndFeel.SkinName = 'Sharp'
            StyleFocused.LookAndFeel.SkinName = 'Sharp'
            StyleHot.LookAndFeel.SkinName = 'Sharp'
            TabOrder = 1
            Height = 24
            Width = 58
          end
        end
        object cxLabel12: TcxLabel
          Left = 19
          Top = 86
          Caption = #50696#50557#51068#49884
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 45
          AnchorY = 94
        end
      end
    end
  end
  object Pnl_Web: TPanel
    Left = 87
    Top = 201
    Width = 248
    Height = 269
    BevelOuter = bvNone
    Color = 10874800
    TabOrder = 1
    Visible = False
    object WebBrowser1: TWebBrowser
      Left = 0
      Top = 0
      Width = 248
      Height = 269
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 211
      ExplicitHeight = 142
      ControlData = {
        4C000000A2190000CD1B00000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'All (*.jpg)|*.jpg|JPEG Image File (*.jpg)|*.jpg'
    Left = 274
    Top = 531
  end
  object IdFTP1: TIdFTP
    IPVersion = Id_IPv4
    Passive = True
    PassiveUseControlHost = True
    ConnectTimeout = 0
    TransferType = ftBinary
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    ReadTimeout = 0
    Left = 305
    Top = 531
  end
  object pop_date: TPopupMenu
    AutoHotkeys = maManual
    AutoPopup = False
    Left = 677
    Top = 171
    object N1: TMenuItem
      Caption = #50724#45720
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #52572#44540'1'#44060#50900
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #52572#44540'3'#44060#50900
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #52572#44540'6'#44060#50900
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #52572#44540'1'#45380
      OnClick = N5Click
    end
  end
  object pop_date1: TPopupMenu
    AutoHotkeys = maManual
    AutoPopup = False
    Left = 677
    Top = 227
    object MenuItem1: TMenuItem
      Caption = #50724#45720
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = #52572#44540'1'#44060#50900
      OnClick = MenuItem2Click
    end
    object MenuItem3: TMenuItem
      Caption = #52572#44540'3'#44060#50900
      OnClick = MenuItem3Click
    end
    object MenuItem4: TMenuItem
      Caption = #52572#44540'6'#44060#50900
      OnClick = MenuItem4Click
    end
    object MenuItem5: TMenuItem
      Caption = #52572#44540'1'#45380
      OnClick = MenuItem5Click
    end
  end
end
